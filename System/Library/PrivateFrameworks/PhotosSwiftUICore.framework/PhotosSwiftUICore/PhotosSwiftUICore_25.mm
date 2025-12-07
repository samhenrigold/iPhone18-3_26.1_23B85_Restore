uint64_t sub_1C1207DD8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v17[0] = v0[2];
  v17[1] = v1;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = v4;
  v17[5] = v5;
  v17[6] = v6;
  type metadata accessor for PhotosItemsListFeed(0, v17);
  v7 = OUTLINED_FUNCTION_7_3();
  return sub_1C120641C(v7, v8, v9, v10, v11, v12, v13, v14, v16);
}

uint64_t objectdestroyTm_22()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v9 = *&v10[0];
  v3 = *(v0 + 48);
  v10[1] = v2;
  v10[2] = v3;
  v11 = v1;
  v4 = (type metadata accessor for PhotosItemsListFeed(0, v10) - 8);
  v5 = v0 + ((*(*v4 + 80) + 72) & ~*(*v4 + 80));
  (*(*(v9 - 8) + 8))(v5);

  __swift_destroy_boxed_opaque_existential_0Tm((v5 + v4[23]));

  v6 = v5 + v4[25];
  sub_1C1001C10(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 112), *(v6 + 120), *(v6 + 128), *(v6 + 136), *(v6 + 144), *(v6 + 152), *(v6 + 160), *(v6 + 168), *(v6 + 176), *(v6 + 184), *(v6 + 192), *(v6 + 200), *(v6 + 208));
  v7 = v5 + v4[26];
  sub_1C1001C04(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  return swift_deallocObject();
}

double sub_1C1208034()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v16[0] = v0[2];
  v16[1] = v1;
  v16[2] = v2;
  v16[3] = v3;
  v16[4] = v4;
  v16[5] = v5;
  v16[6] = v6;
  type metadata accessor for PhotosItemsListFeed(0, v16);
  OUTLINED_FUNCTION_7_3();
  return sub_1C1205E88(v7, v8, v9, v10, v11, v12, v13, v15);
}

uint64_t sub_1C120813C()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE97BE0);
  __swift_project_value_buffer(v0, qword_1EBE97BE0);
  return sub_1C1262700();
}

id sub_1C12081BC(id result)
{
  if (result)
  {
    v1 = result;
    if ([result respondsToSelector_])
    {
      v2 = [v1 compactSCSensitivityAnalysis];
      v3 = objc_allocWithZone(MEMORY[0x1E697B670]);
      return sub_1C12086A0(v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C120836C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C00, &qword_1C12C7A40);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C08, &qword_1C12C7A48);
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v18 - v10;
  if (a2 && ([a2 respondsToSelector_] & 1) != 0 && (objc_msgSend(a2, sel_isContentAnalyzedAsPreviewable) & 1) == 0)
  {
    v15 = sub_1C12081BC(a2);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97C10, &unk_1C12C7A50);
    v17 = sub_1C120863C();
    sub_1C1264910();

    (*(v8 + 16))(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    v18 = v16;
    v19 = v17;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97C10, &unk_1C12C7A50);
    (*(*(v12 - 8) + 16))(v6, a1, v12);
    swift_storeEnumTagMultiPayload();
    v13 = sub_1C120863C();
    v18 = v12;
    v19 = v13;
    swift_getOpaqueTypeConformance2();
    return sub_1C1263C20();
  }
}

unint64_t sub_1C120863C()
{
  result = qword_1EDE76DC8;
  if (!qword_1EDE76DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE97C10, &unk_1C12C7A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76DC8);
  }

  return result;
}

id sub_1C12086A0(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v2 = [v1 initFromCompactAnalysis:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1C1261BD0();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1C1208754()
{
  result = qword_1EDE76E58;
  if (!qword_1EDE76E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE97C30, &unk_1C12C7A60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE97C10, &unk_1C12C7A50);
    sub_1C120863C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E58);
  }

  return result;
}

uint64_t sub_1C1208820(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C120886C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

double sub_1C12088C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  if ((a7 & 0x100) != 0)
  {
    result = *&a1;
    if (a2)
    {
      return 10.0;
    }
  }

  else
  {
    sub_1C120892C(a1, a2 & 1, a3, a4 & 1, a5, a6, a7 & 0x100FF);
  }

  return result;
}

void sub_1C120892C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int a7)
{
  v46 = a4;
  v49 = a3;
  v50 = a1;
  v51 = a2;
  v48 = sub_1C1262E10();
  v9 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1262F40();
  v15 = sub_1C11A3D88(v13, v14);
  v16 = sub_1C12662E0();
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = v16;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1C1102430(0, v16 & ~(v16 >> 63), 0);
    v17 = v54;
    sub_1C12662D0();
    if (v18 < 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v44 = a6;
    v45 = a7;
    v47 = (v9 + 16);
    v19 = (v9 + 8);
    v46 &= 1u;
    do
    {
      v20 = sub_1C12663A0();
      v21 = v12;
      v22 = v48;
      (*v47)(v11);
      v20(v53, 0);
      LOBYTE(v53[0]) = v51 & 1;
      v52 = v46;
      sub_1C1262DF0();
      v24 = v23;
      v26 = v25;
      (*v19)(v11, v22);
      v54 = v17;
      v27 = v15;
      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C1102430((v28 > 1), v29 + 1, 1);
        v17 = v54;
      }

      *(v17 + 16) = v29 + 1;
      v30 = v17 + 16 * v29;
      *(v30 + 32) = v24;
      *(v30 + 40) = v26;
      sub_1C1266320();
      --v18;
      v12 = v21;
      v15 = v27;
    }

    while (v18);
    a7 = v45;
    a6 = v44;
  }

  v31 = *(v17 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v53[0] = MEMORY[0x1E69E7CC0];
    sub_1C1102470(0, v31, 0);
    v32 = v53[0];
    v33 = *(v53[0] + 16);
    v34 = (v17 + 40);
    do
    {
      v35 = *v34;
      v53[0] = v32;
      v36 = *(v32 + 24);
      if (v33 >= v36 >> 1)
      {
        sub_1C1102470((v36 > 1), v33 + 1, 1);
        v32 = v53[0];
      }

      *(v32 + 16) = v33 + 1;
      *(v32 + 8 * v33 + 32) = v35;
      v34 += 2;
      ++v33;
      --v31;
    }

    while (v31);
  }

  v37 = sub_1C120983C(v32);
  v39 = v38;

  if (v39)
  {
    goto LABEL_22;
  }

  *a6 = v37;
  if ((a7 & 0x10000) != 0)
  {
    v40 = *(v17 + 16);
    if (v40)
    {
      v41 = (v17 + 32);
      v42 = 0.0;
      do
      {
        v43 = *v41;
        v41 += 2;
        v42 = v42 + v43;
        --v40;
      }

      while (v40);
    }
  }
}

void sub_1C1208CD8(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unint64_t a13, unsigned __int8 a14)
{
  v172 = a13;
  v175 = a12;
  v177 = a5;
  v173 = a11;
  v171 = a14;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C40, &qword_1C12C7B78);
  MEMORY[0x1EEE9AC00](v184);
  v190 = &v170[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v183 = &v170[-v19];
  v20 = sub_1C1262E10();
  v187 = *(v20 - 8);
  v21 = v187;
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v170[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v170[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v170[-v27];
  sub_1C1262F50();
  v176 = v25;
  sub_1C1262F50();
  sub_1C1262F50();
  v189 = COERCE_DOUBLE(sub_1C1209A58());
  v29 = COERCE_DOUBLE(sub_1C1265CE0());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C48, &qword_1C12C7B80);
  v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C50, &unk_1C12C7B88) - 8);
  v31 = *(*v30 + 72);
  v32 = (*(*v30 + 80) + 32) & ~*(*v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C12A3440;
  v34 = (v33 + v32);
  v35 = v30[14];
  sub_1C1265BA0();
  *v34 = v36;
  *(v34 + 1) = v37;
  v38 = v21 + 16;
  v39 = *(v21 + 16);
  v174 = v28;
  v39(&v34[v35], v28, v20);
  v40 = &v34[v31];
  v41 = v30[14];
  sub_1C1265BB0();
  *v40 = v42;
  *(v40 + 1) = v43;
  v181 = v39;
  v182 = v38;
  v39(&v40[v41], v178, v20);
  v185 = v20;
  v44 = sub_1C1265CE0();
  v180 = a4;
  v193 = 0;
  v45 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v44 + 64);
  v49 = (v46 + 63) >> 6;
  v179 = v187 + 32;
  v186 = v44;

  v50 = 0;
  v51 = a3;
  if (v48)
  {
    while (1)
    {
      v189 = v29;
      v52 = v50;
LABEL_9:
      v188 = v51;
      v53 = __clz(__rbit64(v48)) | (v52 << 6);
      v54 = v187;
      v55 = (*(v186 + 48) + 16 * v53);
      v56 = *v55;
      v57 = v55[1];
      v58 = v183;
      v59 = v184;
      v60 = *(v184 + 48);
      v61 = v185;
      v181(&v183[v60], *(v186 + 56) + *(v187 + 72) * v53, v185);
      v62 = *(v59 + 48);
      v63 = v190;
      *v190 = v56;
      *(v63 + 8) = v57;
      (*(v54 + 32))(v63 + v62, &v58[v60], v61);
      v64 = v193;
      LOBYTE(v191) = v193;
      v192 = 0;
      sub_1C1262DF0();
      v66 = v65;
      v67 = v189;
      swift_isUniquelyReferenced_nonNull_native();
      v191 = v67;
      v68 = sub_1C0FFE230(v56, v57);
      if (__OFADD__(*(*&v67 + 16), (v69 & 1) == 0))
      {
        break;
      }

      v70 = v68;
      v71 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909D8, &unk_1C12A63A0);
      if (sub_1C1266B30())
      {
        sub_1C0FFE230(v56, v57);
        OUTLINED_FUNCTION_5_38();
        if (!v73)
        {
          goto LABEL_82;
        }

        v70 = v72;
      }

      v29 = v191;
      if (v71)
      {
        *(*(*&v191 + 56) + 8 * v70) = v66;
      }

      else
      {
        *(*&v191 + 8 * (v70 >> 6) + 64) |= 1 << v70;
        v74 = (*(*&v29 + 48) + 16 * v70);
        *v74 = v56;
        v74[1] = v57;
        *(*(*&v29 + 56) + 8 * v70) = v66;
        v75 = *(*&v29 + 16);
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_66;
        }

        *(*&v29 + 16) = v77;
      }

      if (v64)
      {
        goto LABEL_71;
      }

      v48 &= v48 - 1;
      sub_1C1209C30(v190);
      v51 = v51 - v66;
      v50 = v52;
      if (!v48)
      {
        goto LABEL_5;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  while (1)
  {
LABEL_5:
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    if (v52 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v52);
    ++v50;
    if (v48)
    {
      v189 = v29;
      goto LABEL_9;
    }
  }

  v194.origin.x = OUTLINED_FUNCTION_19_2();
  Width = CGRectGetWidth(v194);
  sub_1C1265BA0();
  *&v81 = COERCE_DOUBLE(sub_1C1040248(*&v29, v79, v80));
  if (v82)
  {
    goto LABEL_72;
  }

  v83 = *&v81;
  sub_1C1265BB0();
  v86 = COERCE_DOUBLE(sub_1C1040248(*&v29, v84, v85));
  v87 = v176;
  if (v88)
  {
    goto LABEL_73;
  }

  v89 = v83;
  if (v83 <= v86)
  {
    v89 = v86;
  }

  v90 = Width - (v89 + v89);
  v91 = v175;
  if (v175 == 1)
  {
    LOBYTE(v191) = 0;
    v192 = 0;
    sub_1C1262DF0();
    if (v92 < v90)
    {
      v90 = v92;
    }
  }

  sub_1C1265B90();
  v94 = v93;
  v96 = v95;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v191 = v29;
  sub_1C0FF892C(isUniquelyReferenced_nonNull_native, v90, v94, v96);
  v98 = *&v191;
  sub_1C1265B90();
  *&v101 = COERCE_DOUBLE(sub_1C1040248(v98, v99, v100));
  if (v102)
  {
    goto LABEL_74;
  }

  if (v91 == 2)
  {
    v195.origin.x = OUTLINED_FUNCTION_19_2();
    MidX = CGRectGetMidX(v195);
  }

  else
  {
    v104 = a2;
    v105 = *&v101;
    OUTLINED_FUNCTION_3_51();
    v106 = CGRectGetMidX(v196);
    v107 = v105 * -0.5;
    a2 = v104;
    MidX = v106 + v107;
  }

  sub_1C1265BA0();
  *&v110 = COERCE_DOUBLE(sub_1C1040248(v98, v108, v109));
  if (v111)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v112 = *&v110;
  v197.origin.x = OUTLINED_FUNCTION_19_2();
  MinX = CGRectGetMinX(v197);
  v190 = *&a2;
  OUTLINED_FUNCTION_3_51();
  MaxX = CGRectGetMaxX(v198);
  sub_1C1265BB0();
  v117 = COERCE_DOUBLE(sub_1C1040248(v98, v115, v116));
  if (v118)
  {
    goto LABEL_76;
  }

  v119 = MinX + v112;
  v120 = MaxX - v117;
  if (v91 == 2)
  {
    v189 = MaxX - v117;
    v121 = v120 - v119 - (v177 + v177);
    OUTLINED_FUNCTION_3_51();
    CGRectGetHeight(v199);
    LOBYTE(v191) = 0;
    v192 = 0;
    sub_1C1262DF0();
    v123 = INFINITY;
    if ((v171 & 1) == 0)
    {
      v123 = *&v172;
    }

    sub_1C1209808(MEMORY[0x1E69E7CC0], v121, v122, v123);
    v125 = v124;
    sub_1C1265B90();
    v127 = v126;
    v129 = v128;
    swift_isUniquelyReferenced_nonNull_native();
    v191 = *&v98;
    sub_1C0FFE230(v127, v129);
    OUTLINED_FUNCTION_8_40();
    if (v76)
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v132 = v130;
    v133 = v131;
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909D8, &unk_1C12A63A0);
    if (OUTLINED_FUNCTION_9_38(v134))
    {
      sub_1C0FFE230(v127, v129);
      OUTLINED_FUNCTION_5_38();
      if (!v73)
      {
        goto LABEL_82;
      }

      v132 = v135;
    }

    if ((v133 & 1) == 0)
    {
      goto LABEL_69;
    }

    v136 = *&v191;
    *(*(*&v191 + 56) + 8 * v132) = v125;
  }

  else
  {
    sub_1C1265B90();
    v139 = COERCE_DOUBLE(sub_1C1040248(v98, v137, v138));
    if (v140)
    {
      goto LABEL_80;
    }

    if (MidX - v177 >= v119)
    {
      v142 = MidX + v139 + v177;
      v141 = 0.0;
      if (v120 < v142)
      {
        v141 = v142 - v120;
      }
    }

    else
    {
      v141 = v119 - (MidX - v177);
    }

    sub_1C1265B90();
    v144 = v143;
    v146 = v145;
    swift_isUniquelyReferenced_nonNull_native();
    v191 = *&v98;
    sub_1C0FFE230(v144, v146);
    OUTLINED_FUNCTION_8_40();
    if (v76)
    {
      goto LABEL_68;
    }

    v149 = v147;
    v150 = v148;
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE909D8, &unk_1C12A63A0);
    if (OUTLINED_FUNCTION_9_38(v151))
    {
      sub_1C0FFE230(v144, v146);
      OUTLINED_FUNCTION_5_38();
      if (!v73)
      {
        goto LABEL_82;
      }

      v149 = v152;
    }

    if ((v150 & 1) == 0)
    {
      goto LABEL_70;
    }

    v136 = *&v191;
    *(*(*&v191 + 56) + 8 * v149) = *(*(*&v191 + 56) + 8 * v149) - v141;
    sub_1C1265B90();
    sub_1C1040248(v136, v153, v154);
    if (v155)
    {
      goto LABEL_81;
    }

    OUTLINED_FUNCTION_3_51();
    CGRectGetMidX(v200);
  }

  v156 = v174;
  OUTLINED_FUNCTION_3_51();
  CGRectGetMidY(v201);
  if (v91 == 2)
  {
    sub_1C1265B90();
  }

  else
  {
    sub_1C1265BA0();
  }

  sub_1C1265B90();
  sub_1C1040248(v136, v157, v158);
  if (v159)
  {
    goto LABEL_77;
  }

  v202.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetHeight(v202);
  OUTLINED_FUNCTION_1_54();
  sub_1C1262E00();
  v203.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetMinX(v203);
  v204.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetMidY(v204);
  sub_1C1265BA0();
  sub_1C1265BA0();
  sub_1C1040248(v136, v160, v161);
  if (v162)
  {
    goto LABEL_78;
  }

  v205.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetHeight(v205);
  OUTLINED_FUNCTION_1_54();
  sub_1C1262E00();
  v206.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetMaxX(v206);
  v207.origin.x = OUTLINED_FUNCTION_19_2();
  CGRectGetMidY(v207);
  sub_1C1265BB0();
  sub_1C1265BB0();
  sub_1C1040248(v136, v163, v164);
  if ((v165 & 1) == 0)
  {

    v208.origin.x = OUTLINED_FUNCTION_19_2();
    CGRectGetHeight(v208);
    OUTLINED_FUNCTION_1_54();
    v166 = v178;
    sub_1C1262E00();
    v167 = *(v187 + 8);
    v168 = v166;
    v169 = v185;
    v167(v168, v185);
    v167(v87, v169);
    v167(v156, v169);

    return;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  sub_1C1266DA0();
  __break(1u);
}

uint64_t sub_1C1209808(uint64_t result, double a2, double a3, double a4)
{
  if (a3 < a2)
  {
    a2 = a3;
  }

  if (a2 > a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 < a2)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C120983C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double sub_1C1209880(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6)
{
  v7 = a2 & 1;
  v8 = a4 & 1;
  if (v6[9])
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | v6[8];
  if (v6[10])
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  return sub_1C12088C0(a1, v7, a3, v8, a5, a6, v10 | v11);
}

void sub_1C12098EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  if (*(v10 + 9))
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | *(v10 + 8);
  if (*(v10 + 10))
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  sub_1C1208CD8(a7, a8, a9, a10, *v10, a1, a2, a3, a4, a5, a6, v12 | v13, *(v10 + 16), *(v10 + 24));
}

void (*sub_1C120998C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

unint64_t sub_1C1209A04()
{
  result = qword_1EDE7C7C8;
  if (!qword_1EDE7C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C7C8);
  }

  return result;
}

unint64_t sub_1C1209A58()
{
  result = qword_1EDE76B18;
  if (!qword_1EDE76B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76B18);
  }

  return result;
}

uint64_t sub_1C1209AAC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_4_55(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = v8[7] + 24 * result;
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

void sub_1C1209B00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_63(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * v5);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  *(v8 + 25) = *(v9 + 25);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_39(v6, v13);
  }
}

void *sub_1C1209B40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_2_63(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 112 * v6), v8, 0x70uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_1C1209B8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_4_55(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 48 * v5);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v7[2] = v8[2];
  v10 = v6[7] + 16 * v5;
  *v10 = v11;
  *(v10 + 8) = v12;
  v13 = v6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_39(v6, v15);
  }
}

uint64_t sub_1C1209BE8(unint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_4_55(a1, a2 + 8 * (a1 >> 6));
  v4 = (v3[6] + 16 * result);
  *v4 = v5;
  v4[1] = v6;
  *(v3[7] + 8 * result) = v7;
  v8 = v3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v3[2] = v10;
  }

  return result;
}

uint64_t sub_1C1209C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97C40, &qword_1C12C7B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1209C98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_63(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_39(v6, v11);
  }
}

uint64_t sub_1C1209CC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_4_55(a1, a3 + 8 * (a1 >> 6));
  v5 = (v4[6] + 16 * result);
  *v5 = v6;
  v5[1] = v7;
  *(v4[7] + 8 * result) = v8;
  v9 = v4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v11;
  }

  return result;
}

_BYTE *sub_1C1209D18(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C1209DF4()
{
  result = qword_1EBE97C58[0];
  if (!qword_1EBE97C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE97C58);
  }

  return result;
}

uint64_t sub_1C1209E48()
{
  sub_1C1263DC0();
  sub_1C120AF8C(&qword_1EDE7BBA0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return sub_1C1266FE0();
}

uint64_t PhotosMiniGridAssetView.init(itemListManager:columns:rows:reverseItems:interitemSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  return result;
}

uint64_t PhotosMiniGridAssetView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[3] = a2;
  v4 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v23[1] = a1;
  v23[2] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v23[0] = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_3_5();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_3_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1C12661A0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE905E0, &qword_1C12A35E0);
  OUTLINED_FUNCTION_1_55();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v31 = v8;
  *(&v31 + 1) = AssociatedTypeWitness;
  *&v32 = v9;
  *(&v32 + 1) = WitnessTable;
  v33 = AssociatedConformanceWitness;
  sub_1C12656A0();
  v30 = sub_1C0FDC834();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  v12 = sub_1C1265AF0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  v19 = v2[1];
  v31 = *v2;
  v32 = v19;
  v33 = *(v2 + 4);
  v20 = v2[1];
  v27 = *v2;
  v28 = v20;
  v29 = *(v2 + 4);
  sub_1C120A25C();
  v24 = v6;
  v25 = v23[0];
  v26 = &v31;
  sub_1C1263AA0();
  sub_1C1209E48();
  sub_1C1265AE0();
  OUTLINED_FUNCTION_2_64();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v21 = *(v13 + 8);
  v21(v15, v12);
  sub_1C0FDBA4C();
  return (v21)(v18, v12);
}

uint64_t sub_1C120A25C()
{
  v1 = sub_1C1265810();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1C1265820();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 8);
  *v4 = xmmword_1C12C7C50;
  (*(v2 + 104))(v4, *MEMORY[0x1E697D748], v1);
  sub_1C1265830();
  return sub_1C12478D4(v7, v8);
}

uint64_t sub_1C120A3AC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = sub_1C12661A0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE905E0, &qword_1C12A35E0);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v35 = v28;
  *(&v35 + 1) = AssociatedTypeWitness;
  *&v36 = v27;
  *(&v36 + 1) = WitnessTable;
  v37 = AssociatedConformanceWitness;
  v8 = sub_1C12656A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = a1[1];
  v35 = *a1;
  v36 = v15;
  v37 = *(a1 + 4);
  v17 = type metadata accessor for PhotosMiniGridAssetView(0, a2, a3, v16);
  sub_1C120A788(v17);
  v34 = v18;
  v30 = a2;
  v31 = a3;
  swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = a1[1];
  *(v19 + 32) = *a1;
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a1 + 4);
  (*(*(v17 - 8) + 16))(v33, a1, v17);
  v23 = sub_1C0FDC834();
  sub_1C1265680();
  v32 = v23;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v21 = *(v9 + 8);
  v21(v11, v8);
  sub_1C0FDBA4C();
  return (v21)(v14, v8);
}

void sub_1C120A788(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = v13 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  if ((v8 * v7) >> 64 == (v8 * v7) >> 63)
  {
    v9 = *(v1 + 32);
    v10 = *(v1 + 24);
    *&v14 = *v1;
    *(&v14 + 1) = v7;
    *&v15 = v8;
    BYTE8(v15) = v10;
    v16 = v9;
    sub_1C120AF08(a1);
    swift_getAssociatedConformanceWitness();
    v11 = sub_1C1262310();
    (*(v4 + 8))(v6, AssociatedTypeWitness);
    v13[1] = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_1C12661A0();
    swift_getWitnessTable();
    sub_1C1266360();
    v14 = v17;
    v15 = v18;
    sub_1C1266800();
    swift_getWitnessTable();
    v12 = sub_1C12661C0();
    if (v10 == 1)
    {
      *&v14 = v12;
      swift_getWitnessTable();
      sub_1C1266010();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C120AA24@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a1;
  v42 = a5;
  v41 = type metadata accessor for PhotosAssetView(0);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v37 - v11;
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v38 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v38);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v19 = a2[1];
  v44 = *a2;
  v45 = v19;
  v46 = *(a2 + 4);
  v20 = a3;
  v22 = v21;
  v24 = type metadata accessor for PhotosMiniGridAssetView(0, v20, a4, v23);
  sub_1C120AF08(v24);
  swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedTypeWitness();
  v43[3] = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v40, v25);
  v27 = v38;
  sub_1C1262340();
  (*(v39 + 8))(v12, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  (*(v22 + 16))(v15, v18, v27);
  if (__swift_getEnumTagSinglePayload(v15, 1, v13) == 1)
  {
    (*(v22 + 8))(v15, v27);
    v28 = 0;
  }

  else
  {
    sub_1C12622B0();
    v28 = v44;
    (*(*(v13 - 8) + 8))(v15, v13);
  }

  v29 = sub_1C1200D04();
  [v29 setNetworkAccessAllowed_];
  (*(v22 + 8))(v18, v27);
  *(v9 + 19) = swift_getKeyPath();
  v9[160] = 0;
  v30 = v41;
  v31 = *(v41 + 48);
  *&v9[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v32 = &v9[*(v30 + 52)];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = &v9[*(v30 + 56)];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  *v9 = 0;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  v9[48] = 1;
  v9[8] = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 34) = 256;
  *(v9 + 52) = 0;
  *(v9 + 60) = 0;
  *(v9 + 9) = 0;
  v9[80] = 1;
  *(v9 + 11) = v28;
  *(v9 + 12) = 0;
  *(v9 + 13) = v29;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  v9[144] = 2;
  v34 = v42;
  sub_1C0FF7598(v9, v42);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0, &qword_1C12A35E0);
  v36 = v34 + *(result + 36);
  *v36 = 0x3FF0000000000000;
  *(v36 + 8) = 0;
  return result;
}

uint64_t sub_1C120AF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C120AF8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C120AFE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C120B020(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C120B098@<X0>(uint64_t a1@<X8>)
{
  *a1 = v1[5];
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97CE8, &qword_1C12C7EA0);
  return sub_1C120B0EC(v1, a1 + *(v3 + 44));
}

uint64_t sub_1C120B0EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97CF0, &qword_1C12C7EA8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97CF8, &qword_1C12C7EB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D00, &qword_1C12C7EB8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D08, &qword_1C12C7EC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1C12621B0();
  if (v19)
  {
    *&__dst[0] = v18;
    *(&__dst[0] + 1) = v19;
    sub_1C0FDB9AC();
    v20 = sub_1C12648F0();
    v22 = v21;
    v24 = v23;
    v59 = v12;
    *&v62 = a2;
    v25 = a1[5];
    sub_1C120B7FC(v25);
    sub_1C1264710();
    v26 = sub_1C1264870();
    *&v61 = v9;
    v27 = v26;
    v58 = v28;
    v60 = v10;
    v30 = v29;
    v57 = v31;

    sub_1C0FDB8E8(v20, v22, v24 & 1);

    v32 = v25;
    a2 = v62;
    LOBYTE(v20) = sub_1C124DC5C(v32);
    KeyPath = swift_getKeyPath();
    v34 = swift_getKeyPath();
    v69 = v30 & 1;
    v67 = 0;
    *&__src[0] = v27;
    v9 = v61;
    *(&__src[0] + 1) = v58;
    LOBYTE(__src[1]) = v30 & 1;
    *(&__src[1] + 1) = v57;
    *&__src[2] = KeyPath;
    BYTE8(__src[2]) = v20;
    *&__src[3] = v34;
    *(&__src[3] + 1) = 2;
    LOBYTE(__src[4]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936A8, &unk_1C12C7F80);
    sub_1C120BC3C(&qword_1EDE7BDB8, &qword_1EBE936A8, &unk_1C12C7F80, sub_1C10D8034);
    v35 = v59;
    sub_1C1264DF0();
    memcpy(__dst, __src, 0x41uLL);
    sub_1C0FD1A5C(__dst, &qword_1EBE936A8, &unk_1C12C7F80);
    sub_1C0FDB71C(v35, v17, &qword_1EBE97D00, &qword_1C12C7EB8);
    v36 = v17;
    v37 = 0;
    v38 = v60;
  }

  else
  {
    v36 = v17;
    v37 = 1;
    v38 = v10;
  }

  __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);
  v39 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = sub_1C12621C0();
  if (!v41)
  {
    goto LABEL_10;
  }

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {

LABEL_10:
    v51 = v9;
    v52 = 1;
    goto LABEL_11;
  }

  sub_1C120B870(a1, v40, v41, __dst);

  v43 = __dst[2];
  v62 = __dst[0];
  v61 = __dst[1];
  v44 = PXFontWithTextStyleSymbolicTraitsAndWeight();
  v45 = sub_1C1264710();
  v46 = swift_getKeyPath();
  v47 = sub_1C124DC5C(a1[5]);
  v48 = swift_getKeyPath();
  LOBYTE(__dst[0]) = v43;
  v49 = swift_getKeyPath();
  v69 = 0;
  __src[1] = v61;
  __src[0] = v62;
  LOBYTE(__src[2]) = v43;
  *(&__src[2] + 1) = v46;
  *&__src[3] = v45;
  *(&__src[3] + 1) = v48;
  LOBYTE(__src[4]) = v47;
  *(&__src[4] + 1) = v49;
  *&__src[5] = 2;
  BYTE8(__src[5]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D18, &qword_1C12C7F60);
  sub_1C120BC3C(&qword_1EBE97D20, &qword_1EBE97D18, &qword_1C12C7F60, sub_1C120BA48);
  v50 = v63;
  sub_1C1264DF0();
  memcpy(__dst, __src, 0x59uLL);
  sub_1C0FD1A5C(__dst, &qword_1EBE97D18, &qword_1C12C7F60);
  sub_1C0FDB71C(v50, v9, &qword_1EBE97CF0, &qword_1C12C7EA8);
  v51 = v9;
  v52 = 0;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v51, v52, 1, v65);
  v53 = v64;
  sub_1C0FDB800(v17, v64, &qword_1EBE97D08, &qword_1C12C7EC0);
  v54 = v66;
  sub_1C0FDB800(v9, v66, &qword_1EBE97CF8, &qword_1C12C7EB0);
  sub_1C0FDB800(v53, a2, &qword_1EBE97D08, &qword_1C12C7EC0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D10, &qword_1C12C7EC8);
  sub_1C0FDB800(v54, a2 + *(v55 + 48), &qword_1EBE97CF8, &qword_1C12C7EB0);
  sub_1C0FD1A5C(v9, &qword_1EBE97CF8, &qword_1C12C7EB0);
  sub_1C0FD1A5C(v39, &qword_1EBE97D08, &qword_1C12C7EC0);
  sub_1C0FD1A5C(v54, &qword_1EBE97CF8, &qword_1C12C7EB0);
  return sub_1C0FD1A5C(v53, &qword_1EBE97D08, &qword_1C12C7EC0);
}

id sub_1C120B7FC(uint64_t a1)
{
  sub_1C1263AB0();
  sub_1C1263A90();
  v1 = PXFontWithTextStyleSymbolicTraitsAndWeight();

  return v1;
}

double sub_1C120B870@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v8 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C1262190();
  if (v9)
  {
    sub_1C1263980();
    sub_1C1263970();
    sub_1C1265320();
    sub_1C1263950();

    sub_1C1263970();
    sub_1C1263960();
    sub_1C1263970();
    sub_1C12639B0();
    sub_1C12648D0();
  }

  else
  {
    *&v11 = a2;
    *(&v11 + 1) = a3;
    sub_1C0FDB9AC();

    sub_1C12648F0();
  }

  sub_1C1263C20();
  result = *&v11;
  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 32) = v13;
  return result;
}

unint64_t sub_1C120BA48()
{
  result = qword_1EBE97D28;
  if (!qword_1EBE97D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97D30, &qword_1C12C7F68);
    sub_1C120BB00();
    sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97D28);
  }

  return result;
}

unint64_t sub_1C120BB00()
{
  result = qword_1EBE97D38;
  if (!qword_1EBE97D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97D40, &qword_1C12C7F70);
    sub_1C120BBB8();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97D38);
  }

  return result;
}

unint64_t sub_1C120BBB8()
{
  result = qword_1EBE97D48;
  if (!qword_1EBE97D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97D50, &qword_1C12C7F78);
    sub_1C1089CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97D48);
  }

  return result;
}

uint64_t sub_1C120BC3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PhotosObservableFeaturedPhoto.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableFeaturedPhoto.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableFeaturedPhoto.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_15();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  OUTLINED_FUNCTION_5();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C1266790();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_7();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_15();
  v13 = v12;
  v14 = OUTLINED_FUNCTION_22_1();
  sub_1C120BF40(v14, v15);
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  (*(v6 + 16))(v9, a1, v5);
  OUTLINED_FUNCTION_10_2();
  sub_1C10342F0(v9, v13, v1 + *(v16 + 112));
  v17 = sub_1C120D930();
  (*(v6 + 8))(a1, v5, v17);
  return v1;
}

uint64_t sub_1C120BF40@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17_28(AssociatedTypeWitness);
  OUTLINED_FUNCTION_3();
  v8 = *(v7 + 32);

  return v8(a3, a1, v6);
}

uint64_t sub_1C120BFC0(uint64_t a1)
{
  OUTLINED_FUNCTION_2_15();
  v4 = v3;
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_17_28(AssociatedTypeWitness);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18[-v13];
  sub_1C120D0D0(&v18[-v13]);
  v15 = *(v11 + 8);
  v15(v14, v9);
  v21 = v7;
  v22 = v6;
  v23 = *(v4 + 96);
  KeyPath = swift_getKeyPath();
  v19 = v1;
  v20 = a1;
  sub_1C120DBF4(KeyPath, sub_1C120DCC8, v18, MEMORY[0x1E69E7CA8] + 8);

  return v15(a1, v9);
}

uint64_t sub_1C120C174(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v6 = v5;
  v7 = *(v2 + 80);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_7();
  sub_1C120C570(v3);
  v11 = *(v9 + 8);
  v11(v3, v7);
  v18 = v7;
  v19 = *(v6 + 88);
  OUTLINED_FUNCTION_20();
  v20 = *(v12 + 104);
  KeyPath = swift_getKeyPath();
  v16 = v1;
  v17 = a1;
  sub_1C120DBF4(KeyPath, sub_1C120DCE4, v15, MEMORY[0x1E69E7CA8] + 8);

  return (v11)(a1, v7);
}

double sub_1C120C2F0(uint64_t a1)
{
  v24 = a1;
  v2 = *(*v1 + 80);
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v21 - v3;
  v23 = v1;
  v5 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1C1266790();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = *(v5 + 56);
  v15(v2, v5, v12);
  v24 = AssociatedTypeWitness;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness);
  v17 = *(v8 + 8);
  v17(v14, v7);
  if (EnumTagSinglePayload == 1)
  {
    v19 = v21;
    sub_1C120CA18();
    (v15)(v2, v5);
    (*(v22 + 8))(v19, v2);
    v20 = __swift_getEnumTagSinglePayload(v10, 1, v24);
    v17(v10, v7);
    if (v20 != 1)
    {
      return sub_1C120D930();
    }
  }

  return result;
}

uint64_t sub_1C120C570@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_19_21(v5);
  OUTLINED_FUNCTION_20();
  return (*(*(*(v6 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C120C5F4(_BYTE *a1)
{
  OUTLINED_FUNCTION_2_15();
  v4 = *(v3 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  OUTLINED_FUNCTION_5();
  v10 = *(v9 + 112);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v10, v4);
  swift_beginAccess();
  (*(v5 + 24))(v1 + v10, a1, v4);
  swift_endAccess();
  v11 = sub_1C120C2F0(v8);
  v12 = *(v5 + 8);
  v12(a1, v4, v11);
  return (v12)(v8, v4);
}

void (*sub_1C120C758(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 80);
  *(v6 + 32) = v5;
  OUTLINED_FUNCTION_1();
  v8 = v7;
  *(v9 + 40) = v7;
  v11 = *(v10 + 64);
  v3[6] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[7] = v12;
  OUTLINED_FUNCTION_10_2();
  v14 = *(v13 + 112);
  swift_beginAccess();
  v15 = *(v8 + 16);
  v3[8] = v15;
  v3[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v12, v1 + v14, v5);
  return sub_1C120C888;
}

void sub_1C120C888(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1C120C5F4(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1C120C5F4(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1C120C958(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C120C174(v3);
}

uint64_t sub_1C120CA38(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C120C5F4(v3);
}

uint64_t (*sub_1C120CB04(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_2_15();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  KeyPath = swift_getKeyPath();
  sub_1C120DB58(KeyPath);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_15_29();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableFeaturedPhoto(255, v3);
  OUTLINED_FUNCTION_0_82();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_1();
  sub_1C1261F50();

  v3[6] = sub_1C120C758(v3);
  return sub_1C120CC54;
}

uint64_t sub_1C120CC60()
{
  OUTLINED_FUNCTION_2_16();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  sub_1C120CA18();
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1C120CD40()
{
  OUTLINED_FUNCTION_3_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C120CA18();
  OUTLINED_FUNCTION_7_0();
  (*(*(v3 + 88) + 40))(v1);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C120CE20()
{
  OUTLINED_FUNCTION_3_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C120CA18();
  OUTLINED_FUNCTION_7_0();
  (*(*(v3 + 88) + 48))(v1);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C120CF00()
{
  OUTLINED_FUNCTION_2_16();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_1C120CA18();
  OUTLINED_FUNCTION_20();
  (*(*(v7 + 88) + 56))(v1);
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1C120CFF0()
{
  OUTLINED_FUNCTION_3_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C120CA18();
  OUTLINED_FUNCTION_7_0();
  (*(*(v3 + 96) + 16))(v1);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C120D0D0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_19_21(v5);
  OUTLINED_FUNCTION_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17_28(AssociatedTypeWitness);
  OUTLINED_FUNCTION_3();
  return (*(v7 + 16))(a1, v1 + v4);
}

uint64_t sub_1C120D180(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17_28(AssociatedTypeWitness);
  OUTLINED_FUNCTION_3();
  (*(v6 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_1C120D248(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C120D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1C1266790();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return sub_1C120BFC0(v8);
}

uint64_t sub_1C120D3E0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  KeyPath = swift_getKeyPath();
  sub_1C120DB58(KeyPath);

  return a2(v4);
}

uint64_t sub_1C120D464(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1C1266790();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a2, v4);
  return sub_1C120D180(v6);
}

uint64_t (*sub_1C120D578(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_2_15();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  KeyPath = swift_getKeyPath();
  sub_1C120DB58(KeyPath);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_15_29();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableFeaturedPhoto(255, v3);
  OUTLINED_FUNCTION_0_82();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_1();
  sub_1C1261F50();

  v3[6] = sub_1C120D248(v3);
  return sub_1C120D6C8;
}

void sub_1C120D6D4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1C120D738();

  free(v3);
}

double sub_1C120D738()
{
  OUTLINED_FUNCTION_39_0();
  v10[4] = v0;
  OUTLINED_FUNCTION_39_0();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_39_0();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_39_0();
  v6 = *(v5 + 96);
  OUTLINED_FUNCTION_39_0();
  v8 = *(v7 + 104);
  swift_getKeyPath();
  v10[0] = v2;
  v10[1] = v4;
  v10[2] = v6;
  v10[3] = v8;
  type metadata accessor for PhotosObservableFeaturedPhoto(255, v10);
  OUTLINED_FUNCTION_0_82();
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C120D830(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_7();
  sub_1C120CA18();
  (*(*(v5 + 88) + 72))(a1, a2, v6);
  v8 = OUTLINED_FUNCTION_22_1();
  return v9(v8);
}

double sub_1C120D930()
{
  OUTLINED_FUNCTION_3_6();
  v2 = v1;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_7_0();
  *(v6 + 16) = *(v5 + 80);
  *(v6 + 24) = *(v2 + 88);
  *(v6 + 40) = *(v0 + 104);
  *(v6 + 48) = v3;

  sub_1C120D830(sub_1C120E3A8, v4);

  return result;
}

double sub_1C120DA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v6 + 16))(v8, a1, v5);
    sub_1C120BFC0(v8);
  }

  return result;
}

uint64_t sub_1C120DB58(uint64_t a1)
{
  OUTLINED_FUNCTION_0_82();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C120DBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_82();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableFeaturedPhoto.deinit()
{
  OUTLINED_FUNCTION_3_6();
  (*(*(*(v0 + 80) - 8) + 8))(v1 + *(v2 + 112), *(v0 + 80));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17_28(AssociatedTypeWitness);
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v1 + v4);
  OUTLINED_FUNCTION_10_2();
  v8 = *(v7 + 128);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v9 + 8))(v1 + v8);
  return v1;
}

uint64_t PhotosObservableFeaturedPhoto.__deallocating_deinit()
{
  PhotosObservableFeaturedPhoto.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C120DF74(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C120CB04(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C120DFD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C120E070(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_1C1266790();
    if (v3 <= 0x3F)
    {
      v1 = sub_1C1261F70();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return v1;
}

uint64_t PhotosOffsetReaderContainer.init(coordinateSpace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for PhotosOffsetReaderContainer(0) + 20)) = 0;
  sub_1C1263D00();
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_7_43();

  return v4(v3, a1);
}

uint64_t View.photosOnLeadingOffsetChange(container:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1_56();
  sub_1C120FC98(a1, v14, v15);
  v16 = (v14 + *(v10 + 20));
  *v16 = a2;
  v16[1] = a3;

  sub_1C1265410();
  OUTLINED_FUNCTION_8_41();
  sub_1C1265410();
  OUTLINED_FUNCTION_8_41();
  v17 = *(v10 + 32);
  *(v14 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x1C68EE920](v14, a4, v10, a5);
  return sub_1C120E734(v14, type metadata accessor for PhotosLeadingOffsetReaderModifier);
}

uint64_t View.photosOffsetReaderContainer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosOffsetReaderContainerModifier(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  sub_1C120E6C4(a1, v9 - v8);
  MEMORY[0x1C68EE920](v10, a2, v6, a3);
  return sub_1C120E734(v10, type metadata accessor for PhotosOffsetReaderContainerModifier);
}

uint64_t sub_1C120E6C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D60, &qword_1C12C81A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C120E734(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C120E7B4(uint64_t a1)
{
  result = sub_1C1263D00();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06PhotosA6UICore0F29OffsetReaderContainerModifier33_F4FA72AEEE432DD93D9D5FE77791B8ECLLVGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(255);
  sub_1C1263190();
  sub_1C120E8C0(a3, a4, a5);
  return swift_getWitnessTable();
}

uint64_t sub_1C120E8C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C120E930(uint64_t a1)
{
  sub_1C120EB28(319, &qword_1EBE97D90, type metadata accessor for PhotosOffsetReaderContainer, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C120E9F4(uint64_t a1)
{
  type metadata accessor for PhotosOffsetReaderContainer(319);
  if (v1 <= 0x3F)
  {
    sub_1C1007F88();
    if (v2 <= 0x3F)
    {
      sub_1C120EAD8();
      if (v3 <= 0x3F)
      {
        sub_1C120EB28(319, &qword_1EDE77570, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C120EAD8()
{
  if (!qword_1EDE76CB0)
  {
    v0 = sub_1C1265450();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76CB0);
    }
  }
}

void sub_1C120EB28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C120EBA8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhotosOffsetReaderContainerModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = type metadata accessor for PhotosOffsetReaderContainer(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D60, &qword_1C12C81A8);
  MEMORY[0x1C68EEF20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DA8, &qword_1C12C82C8);
  sub_1C0FDB6D4(&qword_1EBE97DB0, &qword_1EBE97DA8, &qword_1C12C82C8, MEMORY[0x1E697FDF8]);
  sub_1C1264BA0();
  v10 = sub_1C1263D00();
  (*(*(v10 - 8) + 8))(v8, v10);
  sub_1C120FC98(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosOffsetReaderContainerModifier);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1C120FD24(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PhotosOffsetReaderContainerModifier);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DB8, &qword_1C12C82D0);
  v14 = (a1 + *(result + 36));
  *v14 = sub_1C0FBFBE4;
  v14[1] = 0;
  v14[2] = sub_1C120FCF8;
  v14[3] = v12;
  return result;
}

uint64_t sub_1C120EE04(uint64_t *a1)
{
  v2 = type metadata accessor for PhotosOffsetReaderContainer(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97D60, &qword_1C12C81A8);
  MEMORY[0x1C68EEF20]();
  *&v5[*(v3 + 28)] = v6;
  return sub_1C12655F0();
}

uint64_t sub_1C120EEC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a1;
  v67 = a2;
  v59 = sub_1C1263150();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  v6 = *(v5 - 8);
  v77 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v7;
  v9 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DC0, &qword_1C12C82D8);
  MEMORY[0x1EEE9AC00](v71);
  v76 = &v56 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DC8, &qword_1C12C82E0);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v73 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DD0, &qword_1C12C82E8);
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DD8, &qword_1C12C82F0);
  v16 = *(v15 - 8);
  v65 = v15;
  v66 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v56 - v17;
  sub_1C120FC98(v2, v9, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v18 = *(v6 + 80);
  v19 = (v18 + 16) & ~v18;
  v20 = swift_allocObject();
  sub_1C120FD24(v9, v20 + v19, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  sub_1C120FC98(v2, v9, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v21 = swift_allocObject();
  sub_1C120FD24(v9, v21 + v19, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DE0, &qword_1C12C82F8);
  v23 = v76;
  (*(*(v22 - 8) + 16))(v76, v57, v22);
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DE8, &unk_1C12C8300) + 36)];
  *v24 = sub_1C120FD84;
  v24[1] = v20;
  v24[2] = sub_1C120FF08;
  v24[3] = v21;
  v75 = v2;
  v69 = type metadata accessor for PhotosLeadingOffsetReaderModifier;
  sub_1C120FC98(v2, v9, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v25 = swift_allocObject();
  v70 = type metadata accessor for PhotosLeadingOffsetReaderModifier;
  sub_1C120FD24(v9, v25 + v19, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  sub_1C120FC98(v2, v9, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v68 = v18;
  v26 = swift_allocObject();
  sub_1C120FD24(v9, v26 + v19, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v27 = &v76[*(v71 + 36)];
  *v27 = sub_1C120FFB8;
  v27[1] = v25;
  v27[2] = sub_1C1210048;
  v27[3] = v26;
  v28 = v58;
  sub_1C0FD7674(v58);
  sub_1C120FC98(v3, v9, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v29 = swift_allocObject();
  sub_1C120FD24(v9, v29 + v19, type metadata accessor for PhotosLeadingOffsetReaderModifier);
  v57 = sub_1C1210078();
  v30 = sub_1C120E8C0(&qword_1EBE97E08, MEMORY[0x1E697E7E0], MEMORY[0x1E697E7F8]);
  v31 = v59;
  v32 = v76;
  sub_1C1265010();

  (*(v60 + 8))(v28, v31);
  sub_1C1210214(v32);
  v33 = v75;
  v34 = (v75 + *(v77 + 32));
  v35 = *v34;
  v36 = v34[1];
  v78 = v35;
  v79 = v36;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265420();
  v37 = v69;
  sub_1C120FC98(v33, v9, v69);
  v56 = v8;
  v38 = swift_allocObject();
  sub_1C120FD24(v9, v38 + v19, v70);
  v78 = v71;
  v79 = v31;
  v80 = v57;
  v81 = v30;
  v71 = MEMORY[0x1E6981448];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_1C0FF9EE4();
  v41 = v73;
  v42 = v61;
  sub_1C1265010();

  (*(v62 + 8))(v41, v42);
  v43 = v75;
  v44 = (v75 + *(v77 + 36));
  v45 = *v44;
  v46 = v44[1];
  v78 = v45;
  v79 = v46;
  sub_1C1265420();
  sub_1C120FC98(v43, v9, v37);
  v47 = swift_allocObject();
  v48 = v70;
  sub_1C120FD24(v9, v47 + v19, v70);
  v78 = v42;
  v79 = MEMORY[0x1E69E7DE0];
  v80 = OpaqueTypeConformance2;
  v81 = v40;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v63;
  v51 = v72;
  sub_1C1265010();

  (*(v64 + 8))(v51, v50);
  v82 = *(v75 + *(type metadata accessor for PhotosOffsetReaderContainer(0) + 20));
  sub_1C120FC98(v75, v9, v69);
  v52 = swift_allocObject();
  sub_1C120FD24(v9, v52 + v19, v48);
  v78 = v50;
  v79 = MEMORY[0x1E69E7DE0];
  v80 = v49;
  v81 = v40;
  swift_getOpaqueTypeConformance2();
  v53 = v65;
  v54 = v74;
  sub_1C1265010();

  return (*(v66 + 8))(v54, v53);
}

void sub_1C120F820(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
}

void sub_1C120F898(uint64_t a1@<X1>, double (*a2)(double, double, double, double)@<X2>, double *a3@<X8>)
{
  v6 = type metadata accessor for PhotosOffsetReaderContainer(0);
  v7 = OUTLINED_FUNCTION_15(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_1_56();
  sub_1C120FC98(a1, v10, v11);
  v12 = sub_1C1263D00();
  sub_1C1262D50();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(*(v12 - 8) + 8))(v10, v12);
  *a3 = a2(v14, v16, v18, v20);
}

void sub_1C120F9B0(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
}

double sub_1C120FA28()
{
  v1 = sub_1C1263150();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  sub_1C0FD7674(v4);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == *MEMORY[0x1E697E7D0])
  {
    v7 = (v0 + *(v5 + 24));
    v8 = *v7;
    v9 = v7[1];
    v21 = v8;
    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
    sub_1C1265420();
    return v20;
  }

  else if (v6 == *MEMORY[0x1E697E7D8])
  {
    v11 = *(v0 + *(type metadata accessor for PhotosOffsetReaderContainer(0) + 20));
    v12 = (v0 + *(v5 + 28));
    v13 = *v12;
    v14 = v12[1];
    v21 = v13;
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
    sub_1C1265420();
    return v11 - v20;
  }

  else
  {
    v15 = (v0 + *(v5 + 24));
    v16 = *v15;
    v17 = v15[1];
    v21 = v16;
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
    sub_1C1265420();
    v10 = v20;
    (*(v2 + 8))(v4, v1);
  }

  return v10;
}

uint64_t sub_1C120FC2C(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PhotosLeadingOffsetReaderModifier(0) + 20));
  v2 = sub_1C120FA28();
  return v1(v2);
}

uint64_t sub_1C120FC98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C120FD24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t objectdestroy_23Tm()
{
  v1 = (type metadata accessor for PhotosLeadingOffsetReaderModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1C1263D00();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v2);

  v4 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_3();
    (*(v5 + 8))(v2 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C120FF34(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = a2(0);
  OUTLINED_FUNCTION_15(v5);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, v7);
}

void sub_1C120FFD0(double (*a1)(double, double, double, double)@<X1>, double *a2@<X8>)
{
  v5 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  OUTLINED_FUNCTION_15(v5);
  sub_1C120F898(v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)), a1, a2);
}

unint64_t sub_1C1210078()
{
  result = qword_1EBE97DF0;
  if (!qword_1EBE97DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DC0, &qword_1C12C82D8);
    sub_1C1210130();
    sub_1C0FDB6D4(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97DF0);
  }

  return result;
}

unint64_t sub_1C1210130()
{
  result = qword_1EBE97DF8;
  if (!qword_1EBE97DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DE8, &unk_1C12C8300);
    sub_1C0FDB6D4(&qword_1EBE97E00, &qword_1EBE97DE0, &qword_1C12C82F8, MEMORY[0x1E697FDF8]);
    sub_1C0FDB6D4(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97DF8);
  }

  return result;
}

uint64_t sub_1C1210214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97DC0, &qword_1C12C82D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C121027C()
{
  v1 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  OUTLINED_FUNCTION_15(v1);
  return sub_1C120FC2C(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

unint64_t sub_1C12102CC()
{
  result = qword_1EBE97E10;
  if (!qword_1EBE97E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DB8, &qword_1C12C82D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97DA8, &qword_1C12C82C8);
    sub_1C0FDB6D4(&qword_1EBE97DB0, &qword_1EBE97DA8, &qword_1C12C82C8, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E10);
  }

  return result;
}

uint64_t OneUpRecentlyDeletedAlbumToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = 0x4044000000000000;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 25) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpRecentlyDeletedAlbumToolbar(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C1210538()
{
  result = qword_1EBE97E18;
  if (!qword_1EBE97E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E20, &qword_1C12C83D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E18);
  }

  return result;
}

uint64_t PhotosCollectionTitleOverlayBannerPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

unint64_t sub_1C121066C()
{
  result = qword_1EBE97E28;
  if (!qword_1EBE97E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionTitleOverlayBannerPlacement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OneUpChromeViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  OneUpChromeViewModel.init()();
  return v0;
}

__n128 sub_1C1210800@<Q0>(char a1@<W0>, __n128 *a2@<X8>)
{
  switch(*v2)
  {
    case 1:
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_29();
      LOWORD(v545) = 256;
      sub_1C117952C();
      sub_1C1179580();
      v176 = OUTLINED_FUNCTION_44_7();
      v182 = OUTLINED_FUNCTION_18_31(v176, &type metadata for OneUpPhotoLibraryToolbar, &type metadata for OneUpSharedAlbumToolbar, v177, v178, v179, v180, v181, v366, v402, v432, v462, v492);
      OUTLINED_FUNCTION_43_9(v182, v183);
      OUTLINED_FUNCTION_10_34();
      goto LABEL_12;
    case 2:
      swift_getKeyPath();
      OUTLINED_FUNCTION_52_4();
      LOWORD(v564) = 0;
      sub_1C1179660();
      sub_1C11796B4();
      v106 = OUTLINED_FUNCTION_44_7();
      v112 = OUTLINED_FUNCTION_37_7(v106, &type metadata for OneUpSharedLibraryMoveToolbar, &type metadata for OneUpRecentlyDeletedAlbumToolbar, v107, v108, v109, v110, v111, v366, v402, v432, v462, v492, v525, v535, v545, v555.n128_i8[0]);
      OUTLINED_FUNCTION_43_9(v112, v113);
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_38_10(v114, v115, v116, v117, v118, v119, v120, v121, v381);
      OUTLINED_FUNCTION_7_44();
      BYTE2(v564) = 1;
      goto LABEL_13;
    case 3:
      v555.n128_u64[1] = 0;
      v563 = 0;
      v555.n128_u8[0] = a1 & 1;
      v564 = 65792;
      sub_1C1179660();
      v122 = sub_1C11796B4();
      OUTLINED_FUNCTION_37_7(v122, &type metadata for OneUpSharedLibraryMoveToolbar, &type metadata for OneUpRecentlyDeletedAlbumToolbar, v123, v122, v124, v125, v126, v366, v402, v432, v462, v492, v525, v535, v545, v555.n128_i8[0]);
      sub_1C1263C20();
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_38_10(v127, v128, v129, v130, v131, v132, v133, v134, v382);
      OUTLINED_FUNCTION_7_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95808, &qword_1C12BD528);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95810, &qword_1C12BD530);
      sub_1C11794A0();
      v135 = sub_1C11795D4();
      v143 = OUTLINED_FUNCTION_21_14(v135, v136, v137, v138, v139, v140, v141, v142, v383, v416, v446, v476, v507, v530, v540, v550, v555.n128_i8[0]);
      OUTLINED_FUNCTION_26_14(v143);
      OUTLINED_FUNCTION_6_40();
      OUTLINED_FUNCTION_4_57(v144, v145, v146, v147, v148, v149, v150, v151, v384, v417, v447, v477, v508);
      goto LABEL_9;
    case 4:
      v558 = a1 & 1;
      sub_1C1179820();
      v58 = sub_1C1179874();
      v555.n128_u64[1] = 0;
      v563 = 0;
      v564 = 0x1000000;
      OUTLINED_FUNCTION_37_7(v58, &type metadata for OneUpRecoveredAlbumToolbar, &type metadata for OneUpDuplicatesAlbumToolbar, v59, v58, v60, v61, v62, v366, v402, v432, v462, v492, v525, v535, v545, v558);
      sub_1C1263C20();
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_38_10(v63, v64, v65, v66, v67, v68, v69, v70, v374);
      OUTLINED_FUNCTION_7_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95820, &qword_1C12BD540);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95828, &qword_1C12BD548);
      sub_1C1179794();
      v71 = sub_1C11798C8();
      v79 = OUTLINED_FUNCTION_21_14(v71, v72, v73, v74, v75, v76, v77, v78, v375, v410, v440, v470, v500, v528, v538, v548, v555.n128_i8[0]);
      OUTLINED_FUNCTION_26_14(v79);
      OUTLINED_FUNCTION_6_40();
      OUTLINED_FUNCTION_4_57(v80, v81, v82, v83, v84, v85, v86, v87, v376, v411, v441, v471, v501);
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95800, &qword_1C12BD520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95818, &qword_1C12BD538);
      sub_1C1179414();
      v152 = sub_1C1179708();
      v159 = OUTLINED_FUNCTION_37_7(v152, v153, v154, v155, v152, v156, v157, v158, v377, v412, v442, v472, v502, v529, v539, v549, v555.n128_i8[0]);
      OUTLINED_FUNCTION_26_14(v159);
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_38_10(v160, v161, v162, v163, v164, v165, v166, v167, v385);
      OUTLINED_FUNCTION_48_7();
      goto LABEL_22;
    case 5:
      swift_getKeyPath();
      OUTLINED_FUNCTION_52_4();
      v564 = 16777472;
      sub_1C1179820();
      sub_1C1179874();
      v201 = OUTLINED_FUNCTION_44_7();
      v207 = OUTLINED_FUNCTION_37_7(v201, &type metadata for OneUpRecoveredAlbumToolbar, &type metadata for OneUpDuplicatesAlbumToolbar, v202, v203, v204, v205, v206, v366, v402, v432, v462, v492, v525, v535, v545, v555.n128_i8[0]);
      OUTLINED_FUNCTION_43_9(v207, v208);
      OUTLINED_FUNCTION_17_29();
      OUTLINED_FUNCTION_38_10(v209, v210, v211, v212, v213, v214, v215, v216, v389);
      OUTLINED_FUNCTION_7_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95820, &qword_1C12BD540);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95828, &qword_1C12BD548);
      sub_1C1179794();
      v217 = sub_1C11798C8();
      v225 = OUTLINED_FUNCTION_21_14(v217, v218, v219, v220, v221, v222, v223, v224, v390, v421, v451, v481, v512, v532, v542, v552, v560);
      OUTLINED_FUNCTION_29_11(v225);
      OUTLINED_FUNCTION_6_40();
      OUTLINED_FUNCTION_4_57(v226, v227, v228, v229, v230, v231, v232, v233, v391, v422, v452, v482, v513);
      goto LABEL_17;
    case 6:
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_29();
      LOWORD(v545) = 0;
      sub_1C1179954();
      sub_1C11799A8();
      v234 = OUTLINED_FUNCTION_44_7();
      v240 = OUTLINED_FUNCTION_18_31(v234, &type metadata for OneUpSharedWithYouToolbar, &type metadata for OneUpCloudLinkToolbar, v235, v236, v237, v238, v239, v366, v402, v432, v462, v492);
      OUTLINED_FUNCTION_43_9(v240, v241);
      OUTLINED_FUNCTION_10_34();
      goto LABEL_16;
    case 7:
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_29();
      LOWORD(v545) = 256;
      sub_1C1179954();
      sub_1C11799A8();
      v168 = OUTLINED_FUNCTION_44_7();
      v174 = OUTLINED_FUNCTION_18_31(v168, &type metadata for OneUpSharedWithYouToolbar, &type metadata for OneUpCloudLinkToolbar, v169, v170, v171, v172, v173, v366, v402, v432, v462, v492);
      OUTLINED_FUNCTION_43_9(v174, v175);
      OUTLINED_FUNCTION_10_34();
LABEL_16:
      OUTLINED_FUNCTION_7_44();
      BYTE2(v564) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95820, &qword_1C12BD540);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95828, &qword_1C12BD548);
      sub_1C1179794();
      v242 = sub_1C11798C8();
      v250 = OUTLINED_FUNCTION_21_14(v242, v243, v244, v245, v246, v247, v248, v249, v386, v418, v448, v478, v509, v525, v535, v545, v555.n128_i8[0]);
      OUTLINED_FUNCTION_29_11(v250);
      OUTLINED_FUNCTION_6_40();
      OUTLINED_FUNCTION_4_57(v251, v252, v253, v254, v255, v256, v257, v258, v392, v423, v453, v483, v514);
      HIBYTE(v564) = 1;
      goto LABEL_17;
    case 8:
      v520 = a1 & 1;
      sub_1C1179BA0();
      v325 = sub_1C1179BF4();
      OUTLINED_FUNCTION_18_31(v325, &type metadata for OneUpImportToolbar, &type metadata for OneUpMacSyncedToolbar, v326, v325, v327, v328, v329, v366, v402, v432, v462, v520);
      sub_1C1263C20();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_51_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95840, &qword_1C12BD560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95848, &qword_1C12BD568);
      sub_1C1179B14();
      v330 = sub_1C1179C48();
      OUTLINED_FUNCTION_14_26(v330, v331, v332, v333, v330, v334, v335, v336, v398, v428, v458, v488, v521);
      OUTLINED_FUNCTION_31_2();
      sub_1C1263C20();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_12_27(v337, v338, v339, v340, v341, v342, v343, v344, v399, v429, v459, v489, v522, v525, v535, v545, *&v555);
      OUTLINED_FUNCTION_28_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95838, &qword_1C12BD558);
      v345 = sub_1C1179A88();
      OUTLINED_FUNCTION_14_26(v345, v346, MEMORY[0x1E6981E70], v345, MEMORY[0x1E6981E60], v347, v348, v349, v400, v430, v460, v490, v523);
      sub_1C1263C20();
      OUTLINED_FUNCTION_5_39();
      OUTLINED_FUNCTION_9_39(v350, v351, v352, v353, v354, v355, v356, v357, v401, v431, v461, v491, v524, v534, v544, v554, v562);
      goto LABEL_22;
    case 9:
      v505 = a1 & 1;
      sub_1C1179BA0();
      v101 = sub_1C1179BF4();
      OUTLINED_FUNCTION_18_31(v101, &type metadata for OneUpImportToolbar, &type metadata for OneUpMacSyncedToolbar, v102, v101, v103, v104, v105, v366, v402, v432, v462, v505);
      sub_1C1263C20();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_51_7();
      goto LABEL_20;
    case 0xA:
      v515 = a1 & 1;
      sub_1C1179CD4();
      v283 = sub_1C1179D28();
      LOWORD(v545) = 0;
      OUTLINED_FUNCTION_18_31(v283, &type metadata for OneUpStorageManagementToolbar, &type metadata for OneUpStorageManagementDuplicatesToolbar, v284, v283, v285, v286, v287, v366, v402, v432, v462, v515);
      sub_1C1263C20();
      OUTLINED_FUNCTION_10_34();
      OUTLINED_FUNCTION_9_39(v288, v289, v290, v291, v292, v293, v294, v295, v394, v424, v454, v484, v516, 0, 0, v545, *&v555);
      LOWORD(v545) = v296;
      BYTE2(v545) = 1;
LABEL_20:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95840, &qword_1C12BD560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95848, &qword_1C12BD568);
      sub_1C1179B14();
      v297 = sub_1C1179C48();
      OUTLINED_FUNCTION_14_26(v297, v298, v299, v300, v297, v301, v302, v303, v380, v415, v445, v475, v506);
      OUTLINED_FUNCTION_31_2();
      sub_1C1263C20();
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_12_27(v304, v305, v306, v307, v308, v309, v310, v311, v395, v425, v455, v485, v517, v525, v535, v545, *&v555);
      OUTLINED_FUNCTION_28_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95838, &qword_1C12BD558);
      v312 = sub_1C1179A88();
      OUTLINED_FUNCTION_14_26(v312, v313, MEMORY[0x1E6981E70], v312, MEMORY[0x1E6981E60], v314, v315, v316, v396, v426, v456, v486, v518);
      sub_1C1263C20();
      OUTLINED_FUNCTION_5_39();
      OUTLINED_FUNCTION_9_39(v317, v318, v319, v320, v321, v322, v323, v324, v397, v427, v457, v487, v519, v533, v543, v553, v561);
      goto LABEL_22;
    case 0xB:
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_29();
      LOWORD(v545) = 256;
      sub_1C1179CD4();
      sub_1C1179D28();
      v12 = OUTLINED_FUNCTION_44_7();
      v18 = OUTLINED_FUNCTION_18_31(v12, &type metadata for OneUpStorageManagementToolbar, &type metadata for OneUpStorageManagementDuplicatesToolbar, v13, v14, v15, v16, v17, v366, v402, v432, v462, v492);
      OUTLINED_FUNCTION_43_9(v18, v19);
      OUTLINED_FUNCTION_10_34();
      OUTLINED_FUNCTION_9_39(v20, v21, v22, v23, v24, v25, v26, v27, v368, v404, v434, v464, v494, v525, v535, v545, *&v555);
      LOWORD(v546) = v28;
      BYTE2(v546) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95840, &qword_1C12BD560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95848, &qword_1C12BD568);
      sub_1C1179B14();
      v29 = sub_1C1179C48();
      v36 = OUTLINED_FUNCTION_18_31(v29, v30, v31, v32, v29, v33, v34, v35, v369, v405, v435, v465, v495);
      OUTLINED_FUNCTION_29_11(v36);
      OUTLINED_FUNCTION_22_21();
      OUTLINED_FUNCTION_12_27(v37, v38, v39, v40, v41, v42, v43, v44, v370, v406, v436, v466, v496, v526, v536, v546, v556);
      OUTLINED_FUNCTION_28_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95838, &qword_1C12BD558);
      v45 = sub_1C1179A88();
      OUTLINED_FUNCTION_18_31(v45, v46, MEMORY[0x1E6981E70], v45, MEMORY[0x1E6981E60], v47, v48, v49, v371, v407, v437, v467, v497);
      sub_1C1263C20();
      OUTLINED_FUNCTION_5_39();
      OUTLINED_FUNCTION_9_39(v50, v51, v52, v53, v54, v55, v56, v57, v372, v408, v438, v468, v498, v527, v537, v547, v557);
      goto LABEL_18;
    case 0xC:
      *(&v545 - 1) = 0;
      BYTE3(v545) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95838, &qword_1C12BD558);
      v88 = sub_1C1179A88();
      OUTLINED_FUNCTION_14_26(v88, v89, MEMORY[0x1E6981E70], v88, MEMORY[0x1E6981E60], v90, v91, v92, v366, v402, v432, v462, 0);
      sub_1C1263C20();
      OUTLINED_FUNCTION_5_39();
      OUTLINED_FUNCTION_9_39(v93, v94, v95, v96, v97, v98, v99, v100, v378, v413, v443, v473, v503, 0, 0, v545, *&v555);
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE957F8, &unk_1C12C8D40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95830, &qword_1C12BD550);
      sub_1C1179388();
      v358 = sub_1C11799FC();
      OUTLINED_FUNCTION_14_26(v358, v359, v360, v361, v358, v362, v363, v364, v379, v414, v444, v474, v504);
      OUTLINED_FUNCTION_31_2();
      sub_1C1263C20();
      break;
    default:
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_29();
      LOWORD(v545) = 0;
      sub_1C117952C();
      sub_1C1179580();
      v4 = OUTLINED_FUNCTION_44_7();
      v10 = OUTLINED_FUNCTION_18_31(v4, &type metadata for OneUpPhotoLibraryToolbar, &type metadata for OneUpSharedAlbumToolbar, v5, v6, v7, v8, v9, v366, v402, v432, v462, v492);
      OUTLINED_FUNCTION_43_9(v10, v11);
      OUTLINED_FUNCTION_10_34();
LABEL_12:
      OUTLINED_FUNCTION_7_44();
      BYTE2(v564) = 0;
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95808, &qword_1C12BD528);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95810, &qword_1C12BD530);
      sub_1C11794A0();
      v184 = sub_1C11795D4();
      v192 = OUTLINED_FUNCTION_21_14(v184, v185, v186, v187, v188, v189, v190, v191, v367, v403, v433, v463, v493, v525, v535, v545, v555.n128_i8[0]);
      OUTLINED_FUNCTION_29_11(v192);
      OUTLINED_FUNCTION_6_40();
      OUTLINED_FUNCTION_4_57(v193, v194, v195, v196, v197, v198, v199, v200, v387, v419, v449, v479, v510);
      HIBYTE(v564) = 0;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95800, &qword_1C12BD520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95818, &qword_1C12BD538);
      sub_1C1179414();
      v259 = sub_1C1179708();
      v266 = OUTLINED_FUNCTION_37_7(v259, v260, v261, v262, v259, v263, v264, v265, v388, v420, v450, v480, v511, v531, v541, v551, v559);
      OUTLINED_FUNCTION_29_11(v266);
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_38_10(v267, v268, v269, v270, v271, v272, v273, v274, v393);
      OUTLINED_FUNCTION_48_7();
LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE957F8, &unk_1C12C8D40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95830, &qword_1C12BD550);
      sub_1C1179388();
      v275 = sub_1C11799FC();
      v282 = OUTLINED_FUNCTION_18_31(v275, v276, v277, v278, v275, v279, v280, v281, v373, v409, v439, v469, v499);
      OUTLINED_FUNCTION_29_11(v282);

      break;
  }

  result = v555;
  *a2 = v555;
  a2[1].n128_u64[0] = v563;
  a2[1].n128_u32[2] = v564;
  a2[1].n128_u8[12] = v565;
  return result;
}

uint64_t OneUpChromeViewModel.__allocating_init(localizedTitle:localizedSubtitle:toolbarPosition:visibleElements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  OneUpChromeViewModel.init(localizedTitle:localizedSubtitle:toolbarPosition:visibleElements:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

PhotosSwiftUICore::OneUpAirplayInfo __swiftcall OneUpAirplayInfo.init(shouldShowAirPlayButton:isDisplayingContentOnSecondScreen:)(Swift::Bool shouldShowAirPlayButton, Swift::Bool isDisplayingContentOnSecondScreen)
{
  *v2 = shouldShowAirPlayButton;
  v2[1] = isDisplayingContentOnSecondScreen;
  result.shouldShowAirPlayButton = shouldShowAirPlayButton;
  return result;
}

uint64_t OneUpChromeViewModel.init()()
{
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_23_15(0);
  *(v0 + 212) = v1;
  *(v0 + 208) = v1;
  sub_1C1261F60();
  return v0;
}

uint64_t sub_1C1211330(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1C1214CF8(KeyPath, sub_1C121643C, &v5);

  return sub_1C0FD1A5C(a1, &unk_1EBE91960, &qword_1C12C84C0);
}

double sub_1C12113B4()
{
  OUTLINED_FUNCTION_18_0();
  if (sub_1C0FDFDE0(*(v1 + 56), *(v1 + 64), v2, v0))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v4 - 32) = v1;
    *(v4 - 24) = v2;
    *(v4 - 16) = v0;
    OUTLINED_FUNCTION_31_12(v5, v6, v7);
  }

  else
  {
    *(v1 + 56) = v2;
    *(v1 + 64) = v0;
  }

  return result;
}

void sub_1C1211490(double a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_31_12(v5, v6, v7);
  }
}

void sub_1C1211524(double a1)
{
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_31_12(v5, v6, v7);
  }
}

void sub_1C12115B8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  if (sub_1C1214D80(*(v1 + 88), *(v1 + 96) | (*(v1 + 97) << 8), *a1, v3 | (v4 << 8)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v6 - 32) = v1;
    *(v6 - 24) = v2;
    *(v6 - 16) = v3;
    *(v6 - 15) = v4;
    OUTLINED_FUNCTION_31_12(v7, v8, v9);
  }

  else
  {
    *(v1 + 88) = v2;
    *(v1 + 96) = v3;
    *(v1 + 97) = v4;
  }
}

double sub_1C1211680()
{
  OUTLINED_FUNCTION_18_0();
  if (sub_1C0FDFDE0(*(v1 + 104), *(v1 + 112), v2, v0))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v4 - 32) = v1;
    *(v4 - 24) = v2;
    *(v4 - 16) = v0;
    OUTLINED_FUNCTION_31_12(v5, v6, v7);
  }

  else
  {
    *(v1 + 104) = v2;
    *(v1 + 112) = v0;
  }

  return result;
}

double sub_1C121175C(unsigned __int8 *a1)
{
  if (*(v1 + 120) != *a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v3, v4, v5);
  }

  return result;
}

double sub_1C12117DC(unsigned __int8 *a1)
{
  if (*a1 != *(v1 + 121))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v3, v4, v5);
  }

  return result;
}

double sub_1C121185C(unsigned __int8 *a1)
{
  if (*(v1 + 122) != *a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v3, v4, v5);
  }

  return result;
}

void sub_1C12118DC(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == *(v1 + 123))
  {
    *(v1 + 123) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v4, v5, v6);
  }
}

double sub_1C1211964(uint64_t *a1)
{
  v2 = *a1;
  if (*(v1 + 128) != *a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    v7[2] = v1;
    v7[3] = v2;
    OUTLINED_FUNCTION_31_12(v4, v5, v7);
  }

  return result;
}

double sub_1C12119F0(unsigned __int8 *a1)
{
  if (*a1 != *(v1 + 136))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v3, v4, v5);
  }

  return result;
}

uint64_t sub_1C1211A70(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1C1214CF8(KeyPath, sub_1C121635C, &v7);

  return swift_unknownObjectRelease();
}

void sub_1C1211AF4(double a1)
{
  if (*(v1 + 160) == a1)
  {
    *(v1 + 160) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_31_12(v5, v6, v7);
  }
}

void sub_1C1211B88(double a1, double a2)
{
  if (*(v2 + 168) == a1 && *(v2 + 176) == a2)
  {
    *(v2 + 168) = a1;
    *(v2 + 176) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v7 - 32) = v2;
    *(v7 - 24) = a1;
    *(v7 - 16) = a2;
    OUTLINED_FUNCTION_31_12(v8, v9, v10);
  }
}

void sub_1C1211C30(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (__PAIR64__(v3, v2) == __PAIR64__(*(v1 + 185), *(v1 + 184)))
  {
    *(v1 + 184) = v2;
    *(v1 + 185) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_9_1();
    *(v5 - 8) = v2;
    *(v5 - 7) = v3;
    OUTLINED_FUNCTION_31_12(v6, v7, v8);
  }
}

void sub_1C1211CE4(char a1)
{
  if (*(v1 + 186) == (a1 & 1))
  {
    *(v1 + 186) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v3, v4, v5);
  }
}

void sub_1C1211D6C(double a1)
{
  if (*(v1 + 192) == a1)
  {
    *(v1 + 192) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_31_12(v5, v6, v7);
  }
}

void sub_1C1211E00(double a1)
{
  if (*(v1 + 200) == a1)
  {
    *(v1 + 200) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_31_12(v5, v6, v7);
  }
}

void sub_1C1211E94(char a1)
{
  if (*(v1 + 208) == (a1 & 1))
  {
    *(v1 + 208) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v3, v4, v5);
  }
}

void sub_1C1211F1C(char a1)
{
  if (*(v1 + 209) == (a1 & 1))
  {
    *(v1 + 209) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v3, v4, v5);
  }
}

void sub_1C1211FA4(char a1)
{
  if (*(v1 + 210) == (a1 & 1))
  {
    *(v1 + 210) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v3, v4, v5);
  }
}

void sub_1C121202C(char a1)
{
  if (*(v1 + 211) == (a1 & 1))
  {
    *(v1 + 211) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v3, v4, v5);
  }
}

void sub_1C12120B4(char a1)
{
  if (*(v1 + 212) == (a1 & 1))
  {
    *(v1 + 212) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12(v3, v4, v5);
  }
}

uint64_t OneUpChromeViewModel.init(localizedTitle:localizedSubtitle:toolbarPosition:visibleElements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v10 = *a5;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  OUTLINED_FUNCTION_23_15(0);
  *(v6 + 208) = v11;
  *(v6 + 212) = v11;
  sub_1C1261F60();
  sub_1C12127D0(a1, a2);
  v12 = OUTLINED_FUNCTION_46();
  sub_1C1212DC0(v12, v13);
  v16 = v10;
  sub_1C12132CC(&v16);
  sub_1C12148A4(a6, v14);

  return v6;
}

uint64_t sub_1C12121F0(uint64_t a1)
{
  sub_1C10D1A1C(a1, v28, &unk_1EBE91960, &qword_1C12C84C0);
  v2 = v29;
  if (v29)
  {
    v3 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v3 + 8))(v35, v2, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  else
  {
    sub_1C0FD1A5C(v28, &unk_1EBE91960, &qword_1C12C84C0);
    memset(v35, 0, sizeof(v35));
    v36 = 0;
  }

  sub_1C1212670();
  v4 = v29;
  if (v29)
  {
    v5 = v30;
    v6 = __swift_project_boxed_opaque_existential_1(v28, v29);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    sub_1C0FD1A5C(v28, &unk_1EBE91960, &qword_1C12C84C0);
    (*(v5 + 8))(v34, v4, v5);
    (*(v7 + 8))(v10, v4);
  }

  else
  {
    sub_1C0FD1A5C(v28, &unk_1EBE91960, &qword_1C12C84C0);
    memset(v34, 0, 40);
  }

  sub_1C10D1A1C(v35, v28, &qword_1EBE8FE30, &unk_1C12A1CC0);
  sub_1C10D1A1C(v34, &v31, &qword_1EBE8FE30, &unk_1C12A1CC0);
  if (!v29)
  {
    OUTLINED_FUNCTION_54_4(v34);
    OUTLINED_FUNCTION_54_4(v35);
    if (!*(&v32 + 1))
    {
      sub_1C0FD1A5C(v28, &qword_1EBE8FE30, &unk_1C12A1CC0);
      goto LABEL_13;
    }

LABEL_15:
    sub_1C0FD1A5C(v28, &qword_1EBE908E0, &qword_1C12B3B50);
LABEL_16:
    sub_1C10D1A1C(a1, v28, &unk_1EBE91960, &qword_1C12C84C0);
    sub_1C1211330(v28);
    OUTLINED_FUNCTION_47_5();
    return sub_1C0FD1A5C(v23, v21, v22);
  }

  sub_1C10D1A1C(v28, v27, &qword_1EBE8FE30, &unk_1C12A1CC0);
  if (!*(&v32 + 1))
  {
    OUTLINED_FUNCTION_54_4(v34);
    OUTLINED_FUNCTION_54_4(v35);
    sub_1C0FD1A08(v27);
    goto LABEL_15;
  }

  v25[0] = v31;
  v25[1] = v32;
  v26 = v33;
  v11 = MEMORY[0x1C68F0200](v27, v25);
  sub_1C0FD1A08(v25);
  OUTLINED_FUNCTION_47_5();
  sub_1C0FD1A5C(v12, v13, v14);
  OUTLINED_FUNCTION_47_5();
  sub_1C0FD1A5C(v15, v16, v17);
  sub_1C0FD1A08(v27);
  OUTLINED_FUNCTION_47_5();
  sub_1C0FD1A5C(v18, v19, v20);
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v21 = &unk_1EBE91960;
  v22 = &qword_1C12C84C0;
  v23 = a1;
  return sub_1C0FD1A5C(v23, v21, v22);
}

uint64_t sub_1C1212584(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  sub_1C1212670();
  return OUTLINED_FUNCTION_36();
}

void sub_1C12125E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_2();
    sub_1C10D1A1C(v3, v4, v5, v6);
    sub_1C12121F0(v2 + 40);
    sub_1C0FD1A5C(v2, &unk_1EBE91960, &qword_1C12C84C0);
  }

  else
  {
    sub_1C12121F0(*a1);
  }

  free(v2);
}

uint64_t sub_1C1212670()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v0);
  sub_1C1261F30();

  swift_beginAccess();
  return sub_1C10D1A1C(v0 + 16, v1, &unk_1EBE91960, &qword_1C12C84C0);
}

uint64_t sub_1C1212758(uint64_t a1, uint64_t a2)
{
  sub_1C10D1A1C(a2, v4, &unk_1EBE91960, &qword_1C12C84C0);
  swift_beginAccess();
  sub_1C1216458(v4, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_1C1212800(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C1212858();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1212858()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1C1261F30();

  v9 = *(v0 + 56);

  return v9;
}

uint64_t sub_1C12128D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_46();
  return a5(v6);
}

void sub_1C1212914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
}

void sub_1C1212954(double a1)
{
  if (sub_1C1212A0C() != a1)
  {

    sub_1C1211490(a1);
  }
}

uint64_t sub_1C12129A0(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1212A0C();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1212A0C()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 72);
}

void sub_1C1212A78(__n128 a1)
{
  v1 = a1.n128_f64[0];
  if (sub_1C1212B30() != a1.n128_f64[0])
  {

    sub_1C1211524(v1);
  }
}

uint64_t sub_1C1212AC4(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1212B30();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1212B30()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 80);
}

double sub_1C1212B9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  sub_1C1212CAC();
  v5 = v8;
  if (v3)
  {
LABEL_2:
    if (v5)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v8)
  {
    goto LABEL_5;
  }

  v5 = v7;
  if (v2)
  {
    goto LABEL_2;
  }

  if ((v7 & 1) != 0 || (result = v6, v6 != v1))
  {
LABEL_5:
    v6 = v1;
    v7 = v2;
    v8 = v3;
    sub_1C12115B8(&v6);
  }

  return result;
}

uint64_t sub_1C1212C24(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  sub_1C1212CAC();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1212C64(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return sub_1C1212B9C(&v4);
}

void sub_1C1212CAC()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v12, v0);
  sub_1C1261F30();

  v10 = *(v0 + 96);
  v11 = *(v0 + 97);
  *v1 = *(v0 + 88);
  *(v1 + 8) = v10;
  *(v1 + 9) = v11;
}

void *sub_1C1212D28()
{
  OUTLINED_FUNCTION_13_1();
  result = v1(&v5);
  v3 = v6;
  v4 = v7;
  *v0 = v5;
  *(v0 + 8) = v3;
  *(v0 + 9) = v4;
  return result;
}

uint64_t sub_1C1212D74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v8 = *a1;
  v9 = v5;
  v10 = v6;
  return a5(&v8);
}

double sub_1C1212DEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_18_0();
  v7 = v6();
  if (v4)
  {
    if (v8)
    {
      if (v7 == v5 && v8 == v4)
      {

LABEL_15:

        return result;
      }

      v11 = sub_1C1266D50();

      if (v11)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!v8)
    {
      return result;
    }
  }

  a4(v5, v4);
  return result;
}

uint64_t sub_1C1212EF4(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C1212FC4();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C1212F4C(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_46();
    a3(v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_46();
    a3(v5);
  }
}

uint64_t sub_1C1212FC4()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1C1261F30();

  v9 = *(v0 + 104);

  return v9;
}

void sub_1C121303C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 104) = a2;
  *(a1 + 112) = a3;
}

void *sub_1C1213078@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1213118(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C121311C(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1213178();
  return OUTLINED_FUNCTION_36();
}

void sub_1C1213178()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 120);
}

void *sub_1C1213258@<X0>(_BYTE *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_1C12132F8(&v4, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_1C12132FC(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1213358();
  return OUTLINED_FUNCTION_36();
}

void sub_1C1213358()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 121);
}

void *sub_1C1213438@<X0>(_BYTE *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_1C1213534(&v4, a2);
  *a1 = v4;
  return result;
}

void *sub_1C12134D8(unsigned __int8 *a1, void *(*a2)(uint64_t *__return_ptr), uint64_t (*a3)(char *))
{
  v4 = *a1;
  result = a2(&v7);
  if (v4 != v7)
  {
    v6 = v4;
    return a3(&v6);
  }

  return result;
}

uint64_t sub_1C1213538(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C12135E0();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1213594(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

void sub_1C12135E0()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 122);
}

void *sub_1C12136C0@<X0>(_BYTE *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_1C121377C(&v4, a2);
  *a1 = v4;
  return result;
}

void sub_1C1213734(unsigned __int8 *a1, __n128 a2)
{
  v2 = *a1;
  sub_1C121380C();
  if (v2 != v3[1])
  {
    v3[0] = v2;
    sub_1C12118DC(v3);
  }
}

uint64_t sub_1C1213780(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C121380C();
  return OUTLINED_FUNCTION_36();
}

void sub_1C12137C4(uint64_t a1, char a2, __n128 a3)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v3 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  sub_1C1213734(v3, a3);
}

void sub_1C121380C()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 123);
}

void *sub_1C12138EC@<X0>(void *a1@<X8>)
{
  result = sub_1C12139A8(&v3);
  *a1 = v3;
  return result;
}

double sub_1C1213960(uint64_t *a1)
{
  v1 = *a1;
  sub_1C1213A20();
  if (v1 != v3)
  {
    v3 = v1;
    return sub_1C1211964(&v3);
  }

  return result;
}

uint64_t sub_1C12139AC(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  sub_1C1213A20();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C1213A20()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 128);
}

void *sub_1C1213B00@<X0>(_BYTE *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_1C1213C18(&v4, a2);
  *a1 = v4;
  return result;
}

void *sub_1C1213BA0(unsigned __int8 *a1, void *(*a2)(uint64_t *__return_ptr), uint64_t (*a3)(char *))
{
  v4 = *a1;
  result = a2(&v7);
  if (v4 == 3)
  {
    if (v7 == 3)
    {
      return result;
    }

LABEL_6:
    v6 = v4;
    return a3(&v6);
  }

  if (v7 == 3 || v4 != v7)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1C1213C1C(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1213CC4();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1213C78(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

void sub_1C1213CC4()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 136);
}

void sub_1C1213DA4()
{
  OUTLINED_FUNCTION_18_0();
  swift_unknownObjectRetain();
  sub_1C1213F08();
  v3 = v2;
  if (!v1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v3 == v1)
  {

    swift_unknownObjectRelease();
    return;
  }

LABEL_9:

  sub_1C1211A70(v1, v0);
}

uint64_t sub_1C1213E58(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  sub_1C1213F08();
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C1213E98(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1C1213DA4();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1213DA4();
  }
}

double sub_1C1213F08()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1C1213F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t sub_1C1213FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1C1213FFC(__n128 a1)
{
  v1 = a1.n128_f64[0];
  if (sub_1C12140B4() != a1.n128_f64[0])
  {

    sub_1C1211AF4(v1);
  }
}

uint64_t sub_1C1214048(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C12140B4();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C12140B4()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 160);
}

void sub_1C1214148(double a1, double a2)
{
  if (sub_1C1214208() != a1 || v4 != a2)
  {

    sub_1C1211B88(a1, a2);
  }
}

uint64_t sub_1C12141A0(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C1214208();
  *(v1 + 8) = v2;
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1214208()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 168);
}

void sub_1C121429C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C1214398();
  if (v1 != v3[2] || ((v2 ^ v3[3]) & 1) != 0)
  {
    v3[0] = v1;
    v3[1] = v2;
    sub_1C1211C30(v3);
  }
}

uint64_t sub_1C1214300(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1214398();
  return OUTLINED_FUNCTION_36();
}

void sub_1C1214344(uint64_t a1, char a2)
{
  v2 = *(a1 + 9);
  if (a2)
  {
    v4[0] = *(a1 + 8);
    v4[1] = v2;
    v3 = v4;
  }

  else
  {
    v5[0] = *(a1 + 8);
    v5[1] = v2;
    v3 = v5;
  }

  sub_1C121429C(v3);
}

void sub_1C1214398()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v0);
  sub_1C1261F30();

  v10 = *(v0 + 185);
  *v1 = *(v0 + 184);
  v1[1] = v10;
}

void *sub_1C121440C()
{
  OUTLINED_FUNCTION_13_1();
  result = v1(&v4);
  v3 = BYTE1(v4);
  *v0 = v4;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C1214450(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return a5(v7);
}

void sub_1C1214498(char a1)
{
  v1 = a1 & 1;
  if ((sub_1C1214570() & 1) != (a1 & 1))
  {

    sub_1C1211CE4(v1);
  }
}

void (*sub_1C12144E8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1214570() & 1;
  return sub_1C1214534;
}

void sub_1C1214534(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != (sub_1C1214570() & 1))
  {
    sub_1C1211CE4(v1);
  }
}

uint64_t sub_1C1214570()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 186);
}

void sub_1C12145DC(__n128 a1)
{
  v1 = a1.n128_f64[0];
  if (sub_1C1214694() != a1.n128_f64[0])
  {

    sub_1C1211D6C(v1);
  }
}

uint64_t sub_1C1214628(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1214694();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1214694()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 192);
}

void sub_1C1214700(uint64_t a1, double a2)
{
  if (sub_1C1214804() != a2)
  {

    sub_1C1211E00(a2);
  }
}

uint64_t sub_1C121474C(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1214804();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C12147B8(double *a1, uint64_t a2, double (*a3)(void), void (*a4)(double))
{
  v5 = *a1;
  if (v5 != a3())
  {
    a4(v5);
  }
}

double sub_1C1214804()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 200);
}

uint64_t sub_1C121486C(_BYTE *a1, __n128 a2)
{
  switch(*a1)
  {
    case 1:
      result = sub_1C1214B58();
      break;
    case 2:
      result = sub_1C1214AF0();
      break;
    case 3:
      result = sub_1C1214C90();
      break;
    case 4:
      result = sub_1C1214C28();
      break;
    default:
      result = sub_1C1214BC0();
      break;
  }

  return result;
}

void sub_1C12148A4(uint64_t a1, __n128 a2)
{
  v4 = 0;
  do
  {
    v5 = &unk_1F406CF58 + v4++;
    v6 = v5[32];
    v7 = *(a1 + 16);
    switch(v6)
    {
      case 1:
        if (v7)
        {
          OUTLINED_FUNCTION_46_6();
          MEMORY[0x1C68F07E0](1);
          sub_1C1266EE0();
          OUTLINED_FUNCTION_20_22();
          do
          {
            OUTLINED_FUNCTION_2_66();
            if (!v16)
            {
              break;
            }

            OUTLINED_FUNCTION_19_22();
          }

          while (v17 != 1);
        }

        else
        {
          v2 = 0;
        }

        if ((v2 ^ sub_1C1214B58()))
        {
          v22 = OUTLINED_FUNCTION_41_8();
          sub_1C1211F1C(v22);
        }

        break;
      case 2:
        if (v7)
        {
          OUTLINED_FUNCTION_46_6();
          MEMORY[0x1C68F07E0](2);
          sub_1C1266EE0();
          OUTLINED_FUNCTION_20_22();
          do
          {
            OUTLINED_FUNCTION_2_66();
            if (!v12)
            {
              break;
            }

            OUTLINED_FUNCTION_19_22();
          }

          while (v13 != 2);
        }

        else
        {
          v2 = 0;
        }

        if ((v2 ^ sub_1C1214AF0()))
        {
          v19 = OUTLINED_FUNCTION_41_8();
          sub_1C1211E94(v19);
        }

        break;
      case 3:
        if (v7)
        {
          OUTLINED_FUNCTION_46_6();
          MEMORY[0x1C68F07E0](3);
          sub_1C1266EE0();
          OUTLINED_FUNCTION_20_22();
          do
          {
            OUTLINED_FUNCTION_2_66();
            if (!v14)
            {
              break;
            }

            OUTLINED_FUNCTION_19_22();
          }

          while (v15 != 3);
        }

        else
        {
          v2 = 0;
        }

        if ((v2 ^ sub_1C1214C90()))
        {
          v20 = OUTLINED_FUNCTION_41_8();
          sub_1C12120B4(v20);
        }

        break;
      case 4:
        if (v7)
        {
          OUTLINED_FUNCTION_46_6();
          MEMORY[0x1C68F07E0](4);
          sub_1C1266EE0();
          OUTLINED_FUNCTION_20_22();
          do
          {
            OUTLINED_FUNCTION_2_66();
            if (!v10)
            {
              break;
            }

            OUTLINED_FUNCTION_19_22();
          }

          while (v11 != 4);
        }

        else
        {
          v2 = 0;
        }

        if ((v2 ^ sub_1C1214C28()))
        {
          v18 = OUTLINED_FUNCTION_41_8();
          sub_1C121202C(v18);
        }

        break;
      default:
        if (v7)
        {
          OUTLINED_FUNCTION_46_6();
          MEMORY[0x1C68F07E0](0);
          sub_1C1266EE0();
          OUTLINED_FUNCTION_20_22();
          do
          {
            OUTLINED_FUNCTION_2_66();
            if (!v8)
            {
              break;
            }

            OUTLINED_FUNCTION_19_22();
          }

          while (v9);
        }

        else
        {
          v2 = 0;
        }

        if ((v2 ^ sub_1C1214BC0()))
        {
          v21 = OUTLINED_FUNCTION_41_8();
          sub_1C1211FA4(v21);
        }

        break;
    }
  }

  while (v4 != 5);
}

uint64_t sub_1C1214AF0()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 208);
}

uint64_t sub_1C1214B58()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 209);
}

uint64_t sub_1C1214BC0()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 210);
}

uint64_t sub_1C1214C28()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 211);
}

uint64_t sub_1C1214C90()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 212);
}

BOOL sub_1C1214D80(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  v4 = (a2 & 0x100 & a4 & 0x100) >> 8;
  v5 = a2 & a4;
  v6 = *&a1 == *&a3;
  if (a4)
  {
    v6 = a2 & a4;
  }

  if ((a2 & 1) == 0)
  {
    v5 = v6;
  }

  if (!(a2 & 0x100 | a4 & 0x100))
  {
    LOBYTE(v4) = v5;
  }

  return (v4 & 1) == 0;
}

char *OneUpChromeViewModel.deinit()
{
  sub_1C0FD1A5C(v0 + 16, &unk_1EBE91960, &qword_1C12C84C0);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore20OneUpChromeViewModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t OneUpChromeViewModel.__deallocating_deinit()
{
  OneUpChromeViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t OneUpTopBarKind.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1214FC8(uint64_t a1)
{
  sub_1C1266E90();
  OneUpToolbarKind.hash(into:)();
  return sub_1C1266EE0();
}

BOOL static OneUpChromeDismissalState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

unint64_t sub_1C1215050()
{
  result = qword_1EBE97E30;
  if (!qword_1EBE97E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E30);
  }

  return result;
}

unint64_t sub_1C12150A4(uint64_t a1)
{
  result = sub_1C12150CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C12150CC()
{
  result = qword_1EDE7D3D8;
  if (!qword_1EDE7D3D8)
  {
    type metadata accessor for OneUpChromeViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D3D8);
  }

  return result;
}

uint64_t type metadata accessor for OneUpChromeViewModel(uint64_t a1)
{
  result = qword_1EDE7D3C0;
  if (!qword_1EDE7D3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1215174()
{
  result = qword_1EBE97E38;
  if (!qword_1EBE97E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E38);
  }

  return result;
}

unint64_t sub_1C12151CC()
{
  result = qword_1EBE97E40;
  if (!qword_1EBE97E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpAudioMuteState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OneUpAirplayInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C12154C4(uint64_t a1)
{
  result = sub_1C1261F70();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpTopBarKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneUpToolbarKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OneUpToolbarKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C1216278(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1C12162F4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 200) = result;
  return result;
}

double sub_1C1216304()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 192) = result;
  return result;
}

void sub_1C1216324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  *(v1 + 184) = *(v0 + 24);
  *(v1 + 185) = v2;
}

__n128 sub_1C121633C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 168) = result;
  return result;
}

double sub_1C121634C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 160) = result;
  return result;
}

void sub_1C12163D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  *(v1 + 88) = *(v0 + 24);
  *(v1 + 96) = v2;
  *(v1 + 97) = v3;
}

double sub_1C12163FC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 80) = result;
  return result;
}

double sub_1C121640C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

uint64_t sub_1C1216458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91960, &qword_1C12C84C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_31_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C1214CF8(a1, v3, a3);
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t a1)
{

  return sub_1C0FD1A5C(a1, v1, v2);
}

double View.photosViewResetNotification(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = swift_getKeyPath();
  v8 = 0;
  MEMORY[0x1C68EE920](v7, a3, &type metadata for PhotosViewResetNotificationViewModifier, a4);

  return result;
}

uint64_t EnvironmentValues.photosResetNotificationCoordinator.getter()
{
  sub_1C12166A8();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1216650@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosResetNotificationCoordinator.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1C12166A8()
{
  result = qword_1EDE7F500;
  if (!qword_1EDE7F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F500);
  }

  return result;
}

void (*EnvironmentValues.photosResetNotificationCoordinator.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C12166A8();
  sub_1C12637F0();
  return sub_1C1216798;
}

void sub_1C1216798(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1C1263800();
  }

  else
  {
    sub_1C1263800();
  }
}

uint64_t PhotosViewResetNotificationCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1C1261F60();
  return v0;
}

uint64_t PhotosViewResetNotificationCoordinator.init()(uint64_t a1)
{
  *(v1 + 16) = 0;
  sub_1C1261F60();
  return v1;
}

double sub_1C12168A0(uint64_t a1)
{
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[2] = v1;
    v6[3] = a1;
    sub_1C1216B38(v4, sub_1C1217100, v6);
  }

  return result;
}

double sub_1C1216944()
{
  swift_getKeyPath();
  sub_1C1216A94();
  sub_1C1261F30();

  swift_getKeyPath();
  sub_1C1261F50();

  ++*(v0 + 16);
  swift_getKeyPath();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C1216A24()
{
  swift_getKeyPath();
  sub_1C1216A94();
  sub_1C1261F30();

  return *(v0 + 16);
}

unint64_t sub_1C1216A94()
{
  result = qword_1EDE7F570;
  if (!qword_1EDE7F570)
  {
    type metadata accessor for PhotosViewResetNotificationCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F570);
  }

  return result;
}

uint64_t type metadata accessor for PhotosViewResetNotificationCoordinator(uint64_t a1)
{
  result = qword_1EDE7F560;
  if (!qword_1EDE7F560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosViewResetNotificationCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore38PhotosViewResetNotificationCoordinator___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosViewResetNotificationCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore38PhotosViewResetNotificationCoordinator___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

unint64_t sub_1C1216CFC()
{
  result = qword_1EDE7E6B8[0];
  if (!qword_1EDE7E6B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7E6B8);
  }

  return result;
}

double sub_1C1216D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1C12637E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a5 & 1) == 0)
  {
    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  v13 = sub_1C1216A24();

  v16[1] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E48, &unk_1C12C8FA0);
  sub_1C121709C();
  sub_1C1265000();

  return result;
}

uint64_t sub_1C1216FA4()
{
  type metadata accessor for PhotosViewResetNotificationCoordinator(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = sub_1C1261F60();
  qword_1EDE7F510 = v0;
  return result;
}

double sub_1C1216FF4@<D0>(void *a1@<X8>)
{
  if (qword_1EDE7F508 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE7F510;

  return result;
}

void *sub_1C1217060(void *result, void *a2)
{
  if (*result != *a2)
  {
    return (*(v2 + 16))();
  }

  return result;
}

unint64_t sub_1C121709C()
{
  result = qword_1EDE7BAD8;
  if (!qword_1EDE7BAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E48, &unk_1C12C8FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BAD8);
  }

  return result;
}

uint64_t sub_1C121710C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1262B60();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_1C1262B70();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_1C1262E80();
}

uint64_t sub_1C1217328()
{
  sub_1C1217E40();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1217364()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1217328();
  *v0 = result;
  return result;
}

uint64_t sub_1C12173F0()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1052410();
  *v0 = result & 1;
  return result;
}

uint64_t OneUpBar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_6_1();
  sub_1C0FDB6D4(v5, qword_1EBE90EF8, &qword_1C12AC0F0, v6);
  v7 = sub_1C1262E70();
  OUTLINED_FUNCTION_0();
  v39 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BF0, &qword_1C12A6E10);
  v12 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v41 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E50, &qword_1C12C8FB0);
  v17 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v42 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v40 = &v38 - v22;
  v23 = *(v2 + *(a1 + 36));
  swift_getWitnessTable();
  v54 = sub_1C1235004(v23, 0, 1, 0, 1, 0, 1);
  v24 = *(a1 + 24);
  v45 = v4;
  v46 = v24;
  v47 = v2;
  v25 = sub_1C1022650();
  sub_1C121710C(sub_1C12179E8, v44, MEMORY[0x1E6981D78], v4, v25, v24, v11);

  swift_getKeyPath();
  v26 = sub_1C1264450();
  LOBYTE(v54) = v26 == sub_1C1264450();
  OUTLINED_FUNCTION_5_0();
  v52 = sub_1C0FDB6D4(v27, qword_1EBE90EF8, &qword_1C12AC0F0, v28);
  v53 = v24;
  OUTLINED_FUNCTION_12_0();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264A30();

  (*(v39 + 8))(v11, v7);
  swift_getKeyPath();
  LOBYTE(v54) = v23;
  v30 = MEMORY[0x1E6980A18];
  v31 = sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0, &qword_1C12A6E10, MEMORY[0x1E6980A18]);
  v50 = WitnessTable;
  v51 = v31;
  v32 = swift_getWitnessTable();
  v33 = v38;
  sub_1C1264A30();

  (*(v41 + 8))(v16, v12);
  v34 = sub_1C0FDB6D4(&qword_1EDE7B938, &qword_1EBE97E50, &qword_1C12C8FB0, v30);
  v48 = v32;
  v49 = v34;
  swift_getWitnessTable();
  v35 = v40;
  sub_1C0FDBA4C();
  v36 = *(v42 + 8);
  v36(v33, v17);
  sub_1C0FDBA4C();
  return (v36)(v35, v17);
}

uint64_t sub_1C121790C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_1C1217A3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C1217AB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_23;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_23:
      if (v5 >= 0xFE)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_23;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C1217C18(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C1217E40()
{
  result = qword_1EDE7E1D8[0];
  if (!qword_1EDE7E1D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7E1D8);
  }

  return result;
}

uint64_t sub_1C1217E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C121804C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C1217EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_1C0FDBA4C();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_1C0FDBA4C();
  return (v13)(v11, a4);
}

unint64_t sub_1C121804C()
{
  result = qword_1EDE7B8B8;
  if (!qword_1EDE7B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B8B8);
  }

  return result;
}

void sub_1C12180A0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0, &qword_1C12B6380);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  sub_1C10D1A1C(v5, v22 - v10, &qword_1EBE93CD0, &qword_1C12B6380);
  v12 = sub_1C1266230();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C0FD1A5C(v11, &qword_1EBE93CD0, &qword_1C12B6380);
  }

  else
  {
    sub_1C1266220();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C12661E0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v18 = sub_1C1265EE0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = v3;
      *(v19 + 24) = v1;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v20 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v22[1] = 7;
      v22[2] = v20;
      v22[3] = v18;
      swift_task_create();

      sub_1C0FD1A5C(v5, &qword_1EBE93CD0, &qword_1C12B6380);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1C0FD1A5C(v5, &qword_1EBE93CD0, &qword_1C12B6380);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v1;
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_22_0();
}

uint64_t *sub_1C121836C()
{
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50(&qword_1EDE833C0);
  }

  return &qword_1EDE833C8;
}

double static PhotosPrefetchable.Coordinator.current.setter(uint64_t a1)
{
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50(&qword_1EDE833C0);
  }

  qword_1EDE833C8 = a1;

  sub_1C1266F90();
  sub_1C12186D4();

  return result;
}

double (*static PhotosPrefetchable.Coordinator.current.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50(&qword_1EDE833C0);
  }

  *a1 = qword_1EDE833C8;

  return sub_1C1218498;
}

double sub_1C1218498(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return static PhotosPrefetchable.Coordinator.current.setter(*a1);
  }

  static PhotosPrefetchable.Coordinator.current.setter(v2);

  return result;
}

double sub_1C12184F0@<D0>(void *a1@<X8>)
{
  sub_1C121836C();
  *a1 = qword_1EDE833C8;

  return result;
}

double sub_1C1218550(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0, &qword_1C12B6380);
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(v2 + 176);
  os_unfair_lock_lock((v9 + 20));
  v10 = *(v9 + 16);
  os_unfair_lock_unlock((v9 + 20));
  if (v10 == 1)
  {
    v12 = sub_1C1266230();
    OUTLINED_FUNCTION_37_8(v8, v13, v14, v12);
    OUTLINED_FUNCTION_47_6();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v2;
    v15[5] = a1;
    v15[6] = a2;

    OUTLINED_FUNCTION_11_33();
    sub_1C12180A0();
  }

  return result;
}

uint64_t sub_1C1218654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1218678);
}

uint64_t sub_1C1218678()
{
  OUTLINED_FUNCTION_29_6();
  sub_1C0FA2318(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_14();

  return v1();
}

void sub_1C12186D4()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0, &qword_1C12B6380);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  if (qword_1EDE83080 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDE83080);
  }

  v10 = sub_1C1262720();
  OUTLINED_FUNCTION_26_15(v10, qword_1EDE9B6F0);

  v11 = sub_1C12626F0();
  v12 = sub_1C1266400();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_34_12();
    v25 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1C0FA0E80(*(v1 + 112), *(v1 + 120), &v25);
    *(v13 + 12) = 2080;
    v14 = sub_1C1266F70();
    v16 = sub_1C0FA0E80(v14, v15, &v25);

    *(v13 + 14) = v16;
    _os_log_impl(&dword_1C0F96000, v11, v12, "[%s] Deactivate after:%s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_28_7();
  }

  v17 = sub_1C1266230();
  OUTLINED_FUNCTION_37_8(v9, v18, v19, v17);
  OUTLINED_FUNCTION_47_6();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v5;
  v20[5] = v3;
  v20[6] = v1;

  v21 = OUTLINED_FUNCTION_11_33();
  sub_1C1218D70(v21, v22, v9, v23, v20);

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C12188D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1C1266AD0();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1218994);
}

uint64_t sub_1C1218994()
{
  OUTLINED_FUNCTION_29_6();
  sub_1C1266DD0();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1C1218A4C;
  OUTLINED_FUNCTION_25_10();

  return sub_1C1131FB0();
}

uint64_t sub_1C1218A4C()
{
  OUTLINED_FUNCTION_15_30();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_8_26();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[9] = v0;

  v6 = v2[7];
  v7 = v2[6];
  v8 = v2[5];
  if (v0)
  {
    (*(v7 + 8))(v6, v8);

    return MEMORY[0x1EEE6DFA0](sub_1C1218D14);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = swift_task_alloc();
    v3[10] = v9;
    *v9 = v5;
    v9[1] = sub_1C1218C14;

    return sub_1C1219000();
  }
}

uint64_t sub_1C1218C14()
{
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_1C1218D14()
{
  OUTLINED_FUNCTION_29_6();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_1C1218D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0, &qword_1C12B6380);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1C10D1A1C(a3, v21 - v9, &qword_1EBE93CD0, &qword_1C12B6380);
  v11 = sub_1C1266230();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C0FD1A5C(v10, &qword_1EBE93CD0, &qword_1C12B6380);
  }

  else
  {
    sub_1C1266220();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1C12661E0();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1C1265EE0() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1C0FD1A5C(a3, &qword_1EBE93CD0, &qword_1C12B6380);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C0FD1A5C(a3, &qword_1EBE93CD0, &qword_1C12B6380);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1C1219020()
{
  OUTLINED_FUNCTION_2_45();
  v15 = v0;
  v1 = *(*(v0 + 16) + 176);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    if (qword_1EDE83080 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDE83080);
    }

    v3 = sub_1C1262720();
    __swift_project_value_buffer(v3, qword_1EDE9B6F0);
    OUTLINED_FUNCTION_22_22();

    v4 = sub_1C12626F0();
    v5 = sub_1C1266400();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 16);
      v7 = swift_slowAlloc();
      v8 = OUTLINED_FUNCTION_63();
      v14 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1C0FA0E80(*(v6 + 112), *(v6 + 120), &v14);
      OUTLINED_FUNCTION_51_8(&dword_1C0F96000, v9, v10, "[%s] Deactivate");
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      OUTLINED_FUNCTION_10_35();
      OUTLINED_FUNCTION_17_30();
    }

    v11 = swift_task_alloc();
    *(v0 + 24) = v11;
    *v11 = v0;
    v11[1] = sub_1C12191E4;

    return sub_1C121B050();
  }

  else
  {
    OUTLINED_FUNCTION_14();

    return v13();
  }
}

uint64_t sub_1C12191E4()
{
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

double sub_1C12192C4(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0, &qword_1C12B6380);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-v5 - 8];
  v7 = a1[1];
  v18 = *a1;
  v19 = v7;
  v20 = *(a1 + 8);
  v8 = *(v1 + 176);
  os_unfair_lock_lock((v8 + 20));
  v9 = *(v8 + 16);
  os_unfair_lock_unlock((v8 + 20));
  if (v9 == 1)
  {
    v11 = sub_1C1266230();
    OUTLINED_FUNCTION_37_8(v6, v12, v13, v11);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v1;
    v15 = v19;
    *(v14 + 40) = v18;
    *(v14 + 56) = v15;
    *(v14 + 72) = v20;

    sub_1C1109A9C(&v18, v17);
    OUTLINED_FUNCTION_11_33();
    sub_1C12180A0();
  }

  return result;
}

uint64_t sub_1C12193E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C1219408);
}

uint64_t sub_1C1219408()
{
  OUTLINED_FUNCTION_29_6();
  sub_1C1219724(*(v0 + 24));
  OUTLINED_FUNCTION_14();

  return v1();
}

void sub_1C1219460()
{
  OUTLINED_FUNCTION_23();
  v26[1] = v3;
  v27 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0, &qword_1C12B6380);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_28();
  sub_1C12637E0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E88, &qword_1C12C92A8);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  v28 = v0;
  v17 = *(v0 + 176);
  os_unfair_lock_lock((v17 + 20));
  v18 = *(v17 + 16);
  os_unfair_lock_unlock((v17 + 20));
  if (v18 == 1)
  {
    v27();
    sub_1C12620C0();
    v19 = sub_1C1266230();
    OUTLINED_FUNCTION_37_8(v1, v20, v21, v19);
    (*(v9 + 16))(v13, v16, v7);
    v22 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v28;
    (*(v9 + 32))(&v23[v22], v13, v7);

    OUTLINED_FUNCTION_11_33();
    sub_1C12180A0();

    v24 = OUTLINED_FUNCTION_16_1();
    v25(v24);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C12196AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C12196CC);
}

uint64_t sub_1C12196CC()
{
  OUTLINED_FUNCTION_29_6();
  sub_1C121A0B0();
  OUTLINED_FUNCTION_14();

  return v0();
}

void sub_1C1219724(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v48 = *a1;
  v49 = v3;
  v50 = *(a1 + 32);
  sub_1C121A044();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = v1[22];
  os_unfair_lock_lock((v6 + 20));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 20));
  if (v7 == 1)
  {
    v8 = OBJC_IVAR____TtCO17PhotosSwiftUICore18PhotosPrefetchable11Coordinator_seenImages;
    OUTLINED_FUNCTION_25_10();
    swift_beginAccess();
    v9 = *(v2 + v8);

    v10 = sub_1C12608A0(&v48, v9);

    if (v10)
    {

      return;
    }

    OUTLINED_FUNCTION_16_16(v2 + v8, v44);
    sub_1C1109A9C(&v48, v46);
    sub_1C1103608(v46, &v48);
    v11 = v46[0];
    swift_endAccess();
    sub_1C100DC0C(v11, *(&v11 + 1));
    if (qword_1EDE83080 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDE83080);
    }

    v12 = sub_1C1262720();
    OUTLINED_FUNCTION_26_15(v12, qword_1EDE9B6F0);
    sub_1C1109A9C(&v48, v46);

    v13 = sub_1C12626F0();
    v14 = sub_1C1266400();

    sub_1C121BE24(&v48);
    if (OUTLINED_FUNCTION_52_5())
    {
      v15 = OUTLINED_FUNCTION_63();
      v45 = swift_slowAlloc();
      *v15 = 136315650;
      *(v15 + 4) = sub_1C0FA0E80(v2[14], v2[15], &v45);
      *(v15 + 12) = 2080;
      v16 = OUTLINED_FUNCTION_20_15();
      *(v15 + 14) = sub_1C0FA0E80(v16, v17, v18);
      *(v15 + 22) = 2080;
      v46[0] = v48;
      v46[1] = v49;
      v47 = v50;
      sub_1C1109A9C(&v48, v44);
      v19 = sub_1C1265ED0();
      v21 = sub_1C0FA0E80(v19, v20, &v45);

      *(v15 + 24) = v21;
      _os_log_impl(&dword_1C0F96000, v13, v14, "[%s] Used [%s] %s", v15, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_18_32();
      OUTLINED_FUNCTION_28_7();
    }

    OUTLINED_FUNCTION_16_16((v2 + 25), v44);
    sub_1C1109A9C(&v48, v46);
    swift_isUniquelyReferenced_nonNull_native();
    *&v46[0] = v2[26];
    v22 = *&v46[0];
    v2[26] = 0x8000000000000000;
    v23 = OUTLINED_FUNCTION_20_15();
    v25 = sub_1C0FA4574(v23, v24);
    if (__OFADD__(*(v22 + 16), (v26 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v27 = v25;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E90, &qword_1C12C92B0);
      v29 = sub_1C1266B30();
      v30 = *&v46[0];
      if ((v29 & 1) == 0)
      {
LABEL_16:
        v2[26] = v30;
        if (v28)
        {
        }

        else
        {
          v35 = OUTLINED_FUNCTION_16_1();
          sub_1C1209C98(v35, v36, v5, v37, v30);
        }

        v38 = *(v30 + 56) + 8 * v27;
        sub_1C0FE37F0();
        v39 = *(*v38 + 16);
        sub_1C0FE38CC();
        v40 = *v38;
        *(v40 + 16) = v39 + 1;
        v41 = v40 + 40 * v39;
        v42 = v48;
        v43 = v49;
        *(v41 + 64) = v50;
        *(v41 + 32) = v42;
        *(v41 + 48) = v43;
        swift_endAccess();
        return;
      }

      v31 = OUTLINED_FUNCTION_20_15();
      v33 = sub_1C0FA4574(v31, v32);
      if ((v28 & 1) == (v34 & 1))
      {
        v27 = v33;
        goto LABEL_16;
      }
    }

    sub_1C1266DA0();
    __break(1u);
    return;
  }
}

uint64_t sub_1C1219B04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7942736567616D69 && a2 == 0xED00006567617453)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C1266D50();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C1219BD4(char a1)
{
  if (a1)
  {
    return 0x7942736567616D69;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1C1219C18(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E78, &qword_1C12C92A0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C121BA74();
  sub_1C1266F00();
  sub_1C1266CA0();
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E68, &qword_1C12C9290);
    sub_1C121BBD8();
    sub_1C1266CB0();
  }

  v6 = OUTLINED_FUNCTION_20_15();
  return v7(v6);
}

uint64_t sub_1C1219D9C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E60, &qword_1C12C9288);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_40_8();
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1C121BA74();
  sub_1C1266EF0();
  if (!v1)
  {
    v4 = sub_1C1266C40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E68, &qword_1C12C9290);
    sub_1C121BAC8();
    sub_1C1266C50();
    v5 = OUTLINED_FUNCTION_34_0();
    v6(v5);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v4;
}

uint64_t sub_1C1219F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1219B04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1219F84(uint64_t a1)
{
  v2 = sub_1C121BA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1219FC0(uint64_t a1)
{
  v2 = sub_1C121BA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1219FFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C1219D9C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C121A044()
{
  v1 = OBJC_IVAR____TtCO17PhotosSwiftUICore18PhotosPrefetchable11Coordinator_reportedStages;
  OUTLINED_FUNCTION_25_10();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 16);
  v3 = v2 + 16;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *(v3 + 16 * v4);

  return v6;
}

void sub_1C121A0B0()
{
  OUTLINED_FUNCTION_23();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E58, &qword_1C12C90F8);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_28();
  v6 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_40_8();
  if (qword_1EDE83408 != -1)
  {
    OUTLINED_FUNCTION_1_57();
    swift_once();
  }

  v10 = sub_1C1262680();
  OUTLINED_FUNCTION_26_15(v10, qword_1EDE9B708);
  sub_1C1262640();
  v11 = sub_1C1262670();
  v12 = sub_1C1266520();
  if (sub_1C1266730())
  {
    v13 = OUTLINED_FUNCTION_20_10();
    *v13 = 0;
    v14 = sub_1C1262630();
    _os_signpost_emit_with_name_impl(&dword_1C0F96000, v11, v12, v14, "PhotosPrefetch.Environment", "", v13, 2u);
    OUTLINED_FUNCTION_4_8();
  }

  (*(v8 + 8))(v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E88, &qword_1C12C92A8);
  sub_1C12620D0();
  v15 = sub_1C12637E0();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v15);
  v16 = OBJC_IVAR____TtCO17PhotosSwiftUICore18PhotosPrefetchable11Coordinator_environment;
  OUTLINED_FUNCTION_16_16(v3 + OBJC_IVAR____TtCO17PhotosSwiftUICore18PhotosPrefetchable11Coordinator_environment, &v17);
  sub_1C121BDB4(v1, v3 + v16);
  swift_endAccess();
  sub_1C0FA32EC();
  OUTLINED_FUNCTION_22_0();
}

void sub_1C121A2B4(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v79 = sub_1C1264680();
  v3 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94748, &qword_1C12B9D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v68 - v8;
  v9 = sub_1C1263050();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v68 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v68 - v21;
  v90 = sub_1C1265340();
  v22 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v68 - v25;
  v102 = sub_1C12637E0();
  v27 = MEMORY[0x1EEE9AC00](v102);
  v105 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 16);
  if (v29)
  {
    v94 = (v26 + 16);
    v86 = (v22 + 104);
    v85 = (v22 + 32);
    v98 = (v10 + 32);
    v81 = (v10 + 16);
    v30 = (v10 + 8);
    v76 = (v3 + 104);
    v75 = (v3 + 32);
    v74 = *MEMORY[0x1E69816C0];
    v73 = (v3 + 8);
    v72 = *MEMORY[0x1E69816E0];
    v93 = *MEMORY[0x1E69816C8];
    v69 = *MEMORY[0x1E6980E98];
    v70 = *MEMORY[0x1E6980EA8];
    v71 = *MEMORY[0x1E6980EB0];
    v92 = (v26 + 8);
    v31 = (a1 + 64);
    v27.n128_u64[0] = 136446210;
    v80 = v27;
    v87 = v17;
    v97 = v30;
    v82 = v14;
    while (2)
    {
      v101 = v29;
      v33 = *(v31 - 4);
      v32 = *(v31 - 3);
      LODWORD(v34) = *(v31 - 16);
      v103 = *(v31 - 15);
      v107 = *(v31 - 7);
      v99 = *(v31 - 1);
      v104 = *v31;
      sub_1C1109A94(v33, v32);
      if (qword_1EDE83080 != -1)
      {
        swift_once();
      }

      v35 = sub_1C1262720();
      __swift_project_value_buffer(v35, qword_1EDE9B6F0);
      sub_1C1109A94(v33, v32);
      v36 = sub_1C12626F0();
      v37 = sub_1C1266400();
      sub_1C100DC0C(v33, v32);
      v38 = os_log_type_enabled(v36, v37);
      v106 = v34;
      v100 = v33;
      if (v38)
      {
        v34 = swift_slowAlloc();
        v39 = v9;
        v40 = swift_slowAlloc();
        v115 = v40;
        *v34 = v80.n128_u32[0];
        v108 = v33;
        v109 = v32;
        v110 = v106;
        v111 = v103;
        v112 = v107;
        v113 = v99;
        v114 = v104;
        sub_1C1109A94(v33, v32);
        v41 = sub_1C1265ED0();
        v43 = sub_1C0FA0E80(v41, v42, &v115);
        v17 = v87;

        *(v34 + 4) = v43;
        v30 = v97;
        _os_log_impl(&dword_1C0F96000, v36, v37, "Prefetch: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        v44 = v40;
        v9 = v39;
        v14 = v82;
        MEMORY[0x1C68F1630](v44, -1, -1);
        v45 = v34;
        LOBYTE(v34) = v106;
        MEMORY[0x1C68F1630](v45, -1, -1);
      }

      v46 = v96;
      v31 += 10;
      (*v94)(v105, v95, v102);
      v47 = v93;
      switch(v103)
      {
        case 1:
          v48 = &v103 + 4;
          goto LABEL_10;
        case 2:
          v48 = &v105 + 4;
LABEL_10:
          v47 = *(v48 - 64);
          goto LABEL_11;
        case 3:
          goto LABEL_12;
        default:
LABEL_11:
          v49 = v89;
          v50 = v90;
          (*v86)(v89, v47, v90);
          (*v85)(v88, v49, v50);
          LOBYTE(v34) = v106;
          sub_1C1263480();
LABEL_12:
          if (v107 != 4)
          {
            switch(v107)
            {
              case 1:
                sub_1C1263030();
                goto LABEL_19;
              case 2:
                sub_1C1263040();
                goto LABEL_19;
              case 3:
                v51 = v84;
                __swift_storeEnumTagSinglePayload(v84, 1, 1, v9);
                sub_1C1263000();
                if (__swift_getEnumTagSinglePayload(v51, 1, v9) != 1)
                {
                  sub_1C0FD1A5C(v84, &qword_1EBE94748, &qword_1C12B9D20);
                }

                goto LABEL_20;
              default:
                sub_1C1263020();
LABEL_19:
                v52 = *v98;
                v53 = v84;
                (*v98)(v84, v17, v9);
                __swift_storeEnumTagSinglePayload(v53, 0, 1, v9);
                v52(v46, v53, v9);
LABEL_20:
                (*v81)(v14, v46, v9);
                if ((byte_1EBE9468C & ~(v107 >> 8)) == 0)
                {
                  v54 = v91;
                  sub_1C1262FE0();
                  (*v30)(v14, v9);
                  (*v98)(v14, v54, v9);
                }

                if ((byte_1EBE9468D & ~(v107 >> 8)) == 0)
                {
                  v55 = v91;
                  sub_1C1263010();
                  (*v30)(v14, v9);
                  (*v98)(v14, v55, v9);
                }

                if ((byte_1EBE9468E & ~(v107 >> 8)) != 0)
                {
                  v59 = *v98;
                }

                else
                {
                  v56 = v91;
                  v57 = v17;
                  v58 = v98;
                  sub_1C1262FD0();
                  (*v97)(v14, v9);
                  v59 = *v58;
                  (*v58)(v14, v56, v9);
                  v17 = v57;
                  v30 = v97;
                }

                v59(v83, v14, v9);
                (*v30)(v46, v9);
                sub_1C1263540();
                LOBYTE(v34) = v106;
                break;
            }
          }

          v60 = v100;
          if ((~v104 & 0xFF00) != 0)
          {
            v108 = v99;
            v61 = BYTE2(v104);
            v62 = BYTE3(v104);
            LOWORD(v109) = v104;
            sub_1C1242DD0();
            switch(v61)
            {
              case 1:
                sub_1C12645C0();
                goto LABEL_39;
              case 2:
                sub_1C12645F0();
                goto LABEL_39;
              case 3:
                sub_1C1264610();
                goto LABEL_39;
              case 4:
                sub_1C1264600();
                goto LABEL_39;
              case 5:
                sub_1C1264620();
                goto LABEL_39;
              case 6:
                sub_1C12645B0();
                goto LABEL_39;
              case 7:
                sub_1C12645E0();
                goto LABEL_39;
              case 8:
                sub_1C12645D0();
                goto LABEL_39;
              case 9:
                goto LABEL_40;
              default:
                sub_1C12645A0();
LABEL_39:
                sub_1C1264670();

LABEL_40:
                if (v62 != 3)
                {
                  v63 = v71;
                  if (v62)
                  {
                    v63 = v70;
                    if (v62 != 1)
                    {
                      v63 = v69;
                    }
                  }

                  v64 = v78;
                  v65 = v79;
                  (*v76)(v78, v63, v79);
                  v66 = v77;
                  (*v75)(v77, v64, v65);
                  sub_1C12646C0();

                  (*v73)(v66, v65);
                  v17 = v87;
                }

                sub_1C1263700();
                LOBYTE(v34) = v106;
                break;
            }
          }

          if (v34)
          {
            sub_1C1265320();
          }

          else
          {
            sub_1C12652F0();
          }

          v67 = v105;
          sub_1C1265360();

          (*v92)(v67, v102);
          sub_1C100DC0C(v60, v32);
          v29 = v101 - 1;
          if (v101 == 1)
          {
            return;
          }

          continue;
      }
    }
  }
}

uint64_t sub_1C121AEA8()
{
  OUTLINED_FUNCTION_42_7();
  v16 = v0;
  v1 = *(v0 + 88);
  if (qword_1EDE83080 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDE83080);
  }

  v2 = *(v0 + 32);
  v3 = sub_1C1262720();
  __swift_project_value_buffer(v3, qword_1EDE9B6F0);
  OUTLINED_FUNCTION_22_22();

  v4 = v1;
  v5 = sub_1C12626F0();
  sub_1C1266410();

  if (OUTLINED_FUNCTION_52_5())
  {
    v6 = *(v0 + 32);
    OUTLINED_FUNCTION_34_12();
    v7 = OUTLINED_FUNCTION_35_10();
    v8 = OUTLINED_FUNCTION_63();
    v15 = v8;
    *v2 = 136315394;
    v9 = sub_1C0FA0E80(*(v6 + 112), *(v6 + 120), &v15);
    OUTLINED_FUNCTION_24_13(v9);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 14) = v10;
    *v7 = v10;
    OUTLINED_FUNCTION_23_16(&dword_1C0F96000, v11, v12, "[%s] Failed to load coordinator state: %@");
    sub_1C0FD1A5C(v7, &unk_1EBE97C20, &qword_1C12CB2B0);
    OUTLINED_FUNCTION_18_32();
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_17_30();
  }

  else
  {
  }

  sub_1C0FA195C();

  OUTLINED_FUNCTION_14();

  return v13();
}

uint64_t sub_1C121B050()
{
  OUTLINED_FUNCTION_29_6();
  v1[7] = v0;
  v2 = sub_1C1262650();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_28_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1C121B110()
{
  OUTLINED_FUNCTION_42_7();
  if (qword_1EDE83408 != -1)
  {
    OUTLINED_FUNCTION_1_57();
    swift_once();
  }

  v1 = sub_1C1262680();
  __swift_project_value_buffer(v1, qword_1EDE9B708);
  sub_1C1262640();
  v2 = sub_1C1262670();
  sub_1C1266510();
  if (sub_1C1266730())
  {
    v3 = OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_41_9(v3);
    v4 = sub_1C1262630();
    OUTLINED_FUNCTION_48_8(&dword_1C0F96000, v5, v6, v4, "PhotosPrefetch.Persistence", "Save");
    OUTLINED_FUNCTION_10_35();
  }

  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[7];

  v11 = OUTLINED_FUNCTION_46_7();
  v12(v11);
  v13 = sub_1C12626C0();
  OUTLINED_FUNCTION_39_7(v13);
  v0[12] = OUTLINED_FUNCTION_49_4();
  (*(v9 + 8))(v7, v8);
  v14 = v10[19];
  v15 = v10[20];
  __swift_project_boxed_opaque_existential_1(v10 + 16, v14);
  OUTLINED_FUNCTION_25_10();
  swift_beginAccess();
  v17 = v10[25];
  v16 = v10[26];
  v0[13] = v16;
  v0[5] = v17;
  v0[6] = v16;
  v18 = *(v15 + 48);

  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_1C121B35C;

  return (v21)(v0 + 5, v14, v15);
}

uint64_t sub_1C121B35C()
{
  OUTLINED_FUNCTION_15_30();
  OUTLINED_FUNCTION_42_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_26();
  *v5 = v4;
  *(v3 + 120) = v0;

  if (v0)
  {
    v6 = sub_1C121B508;
  }

  else
  {
    v6 = sub_1C121B488;
  }

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1C121B488()
{
  OUTLINED_FUNCTION_15_30();
  sub_1C0FA195C();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_1C121B508()
{
  OUTLINED_FUNCTION_42_7();
  v18 = v0;
  if (qword_1EDE83080 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDE83080);
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = sub_1C1262720();
  __swift_project_value_buffer(v3, qword_1EDE9B6F0);
  OUTLINED_FUNCTION_22_22();

  v4 = v1;
  v5 = sub_1C12626F0();
  sub_1C1266410();

  v6 = OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 120);
  if (v6)
  {
    v8 = *(v0 + 56);
    OUTLINED_FUNCTION_34_12();
    v9 = OUTLINED_FUNCTION_35_10();
    v10 = OUTLINED_FUNCTION_63();
    v17 = v10;
    *v2 = 136315394;
    v11 = sub_1C0FA0E80(*(v8 + 112), *(v8 + 120), &v17);
    OUTLINED_FUNCTION_24_13(v11);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 14) = v12;
    *v9 = v12;
    OUTLINED_FUNCTION_23_16(&dword_1C0F96000, v13, v14, "[%s] Failed to save coordinator state: %@");
    sub_1C0FD1A5C(v9, &unk_1EBE97C20, &qword_1C12CB2B0);
    OUTLINED_FUNCTION_18_32();
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_17_30();
  }

  else
  {
  }

  sub_1C0FA195C();

  OUTLINED_FUNCTION_14();

  return v15();
}

void *PhotosPrefetchable.Coordinator.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));

  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtCO17PhotosSwiftUICore18PhotosPrefetchable11Coordinator_environment, &qword_1EBE97E58, &qword_1C12C90F8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PhotosPrefetchable.Coordinator.__deallocating_deinit()
{
  PhotosPrefetchable.Coordinator.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C121B7A8()
{
  OUTLINED_FUNCTION_2_45();
  OUTLINED_FUNCTION_44_8();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_41(v4);
  *v5 = v6;
  v5[1] = sub_1C0FA3DAC;
  v7 = OUTLINED_FUNCTION_5_40();

  return sub_1C1218654(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C121B854()
{
  OUTLINED_FUNCTION_2_45();
  OUTLINED_FUNCTION_44_8();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_41(v4);
  *v5 = v6;
  v5[1] = sub_1C0FA3CCC;
  v7 = OUTLINED_FUNCTION_5_40();

  return sub_1C12188D0(v7, v8, v9, v1, v2, v3);
}

uint64_t dispatch thunk of PhotosPrefetchable.Coordinator.deactivate()()
{
  OUTLINED_FUNCTION_15_30();
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C0FA3CCC;

  return v4();
}

unint64_t sub_1C121BA74()
{
  result = qword_1EDE833E0;
  if (!qword_1EDE833E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE833E0);
  }

  return result;
}

unint64_t sub_1C121BAC8()
{
  result = qword_1EDE82F98;
  if (!qword_1EDE82F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E68, &qword_1C12C9290);
    sub_1C121BC94(&qword_1EDE82F88, sub_1C121BB84, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82F98);
  }

  return result;
}

unint64_t sub_1C121BB84()
{
  result = qword_1EDE83088;
  if (!qword_1EDE83088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83088);
  }

  return result;
}

unint64_t sub_1C121BBD8()
{
  result = qword_1EDE82FA0;
  if (!qword_1EDE82FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E68, &qword_1C12C9290);
    sub_1C121BC94(&qword_1EDE82F90, sub_1C121BD0C, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82FA0);
  }

  return result;
}

uint64_t sub_1C121BC94(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E70, &qword_1C12C9298);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C121BD0C()
{
  result = qword_1EDE83098;
  if (!qword_1EDE83098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83098);
  }

  return result;
}

unint64_t sub_1C121BD60()
{
  result = qword_1EBE97E80;
  if (!qword_1EBE97E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E80);
  }

  return result;
}

uint64_t sub_1C121BDB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E58, &qword_1C12C90F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C121BE78()
{
  OUTLINED_FUNCTION_2_45();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E88, &qword_1C12C92A8);
  OUTLINED_FUNCTION_15(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_41(v3);
  *v4 = v5;
  v4[1] = sub_1C0FA3DAC;
  v6 = OUTLINED_FUNCTION_5_40();

  return sub_1C12196AC(v6, v7, v8, v2, v9);
}

uint64_t sub_1C121BF60()
{
  OUTLINED_FUNCTION_2_45();
  OUTLINED_FUNCTION_44_8();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_41(v2);
  *v3 = v4;
  v3[1] = sub_1C0FA3DAC;
  v5 = OUTLINED_FUNCTION_5_40();

  return sub_1C12193E8(v5, v6, v7, v1, v8);
}

_BYTE *_s11CoordinatorC16PersistenceErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s11CoordinatorC5StateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C121C190()
{
  result = qword_1EBE97EA8;
  if (!qword_1EBE97EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97EA8);
  }

  return result;
}

unint64_t sub_1C121C1E8()
{
  result = qword_1EBE97EB0;
  if (!qword_1EBE97EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97EB0);
  }

  return result;
}

unint64_t sub_1C121C240()
{
  result = qword_1EDE833D0;
  if (!qword_1EDE833D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE833D0);
  }

  return result;
}

unint64_t sub_1C121C298()
{
  result = qword_1EDE833D8;
  if (!qword_1EDE833D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE833D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_7(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return sub_1C12626B0();
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return sub_1C1265CE0();
}

void OUTLINED_FUNCTION_51_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_52_5()
{

  return os_log_type_enabled(v0, v1);
}

void sub_1C121C3BC(uint64_t a1)
{
  sub_1C1266790();
  if (v1 <= 0x3F)
  {
    sub_1C1266790();
    if (v2 <= 0x3F)
    {
      sub_1C100D364(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C121C460(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 24);
  v33 = *(a3 + 16);
  v4 = *(v33 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v34 = v9;
  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1C1263130() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  if (v10 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v10;
  }

  if (v5)
  {
    v14 = *(v4 + 64);
  }

  else
  {
    v14 = *(v4 + 64) + 1;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  if (!v8)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 + v15;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = a1;
  if (a2 <= v13)
  {
    goto LABEL_39;
  }

  v20 = v12 + ((v16 + v18 + (v17 & ~v15)) & ~v18) + 1;
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_22;
  }

  v23 = ((a2 - v13 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v23))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_39;
      }

LABEL_22:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_39;
      }

LABEL_29:
      v24 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v24 = 0;
      }

      if (v20)
      {
        if (v20 <= 3)
        {
          v25 = v20;
        }

        else
        {
          v25 = 4;
        }

        switch(v25)
        {
          case 2:
            v26 = *a1;
            break;
          case 3:
            v26 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v26 = *a1;
            break;
          default:
            v26 = *a1;
            break;
        }
      }

      else
      {
        v26 = 0;
      }

      return v13 + (v26 | v24) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_29;
    }
  }

LABEL_39:
  if (v6 == v13)
  {
    if (v5 >= 2)
    {
      v27 = v5;
      v28 = v33;
      goto LABEL_49;
    }

    return 0;
  }

  v19 = ((a1 + v17) & ~v15);
  if (v34 == v13)
  {
    if (v8 >= 2)
    {
      v27 = v8;
      v28 = v32;
LABEL_49:
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, v27, v28);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(((v19 + v16 + v18) & ~v18) + v12);
  if (v30 >= 2)
  {
    return (v30 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C121C75C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 24);
  v39 = *(a4 + 16);
  v4 = *(v39 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_1C1263130();
  v12 = v5;
  v13 = 0;
  v14 = *(v11 - 8);
  v15 = *(v14 + 64);
  if (v15 <= 8)
  {
    v15 = 8;
  }

  if (v10 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v10;
  }

  v17 = *(v4 + 64);
  if (!v12)
  {
    ++v17;
  }

  v18 = *(v7 + 80);
  v19 = v17 + v18;
  v20 = (v17 + v18) & ~v18;
  v21 = *(v7 + 64);
  if (!v8)
  {
    ++v21;
  }

  v22 = *(v14 + 80) & 0xF8 | 7;
  v23 = v15 + 1;
  v24 = ((v21 + v22 + v20) & ~v22) + v15 + 1;
  v25 = 8 * v24;
  if (a3 > v16)
  {
    if (v24 <= 3)
    {
      v26 = ((a3 - v16 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v26))
      {
        v13 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v13 = v27;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v16 < a2)
  {
    v28 = ~v16 + a2;
    if (v24 < 4)
    {
      v29 = (v28 >> v25) + 1;
      if (v24)
      {
        v31 = v28 & ~(-1 << v25);
        bzero(a1, v24);
        if (v24 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else if (v24 == 2)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v28;
        }
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v28;
      v29 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v24] = v29;
        break;
      case 2:
        *&a1[v24] = v29;
        break;
      case 3:
        goto LABEL_72;
      case 4:
        *&a1[v24] = v29;
        break;
      default:
        return;
    }

    return;
  }

  v30 = a1;
  switch(v13)
  {
    case 1:
      a1[v24] = 0;
      if (a2)
      {
        goto LABEL_42;
      }

      return;
    case 2:
      *&a1[v24] = 0;
      if (a2)
      {
        goto LABEL_42;
      }

      return;
    case 3:
LABEL_72:
      __break(1u);
      return;
    case 4:
      *&a1[v24] = 0;
      goto LABEL_41;
    default:
LABEL_41:
      if (!a2)
      {
        return;
      }

LABEL_42:
      if (v6 == v16)
      {
        v32 = a2 + 1;
        v33 = v39;
LABEL_46:

        __swift_storeEnumTagSinglePayload(v30, v32, v12, v33);
        return;
      }

      v30 = (&a1[v19] & ~v18);
      if (v9 == v16)
      {
        v32 = a2 + 1;
        v12 = v8;
        v33 = v38;
        goto LABEL_46;
      }

      v34 = (&v30[v21 + v22] & ~v22);
      if (a2 > 0xFE)
      {
        if (v23 <= 3)
        {
          v35 = ~(-1 << (8 * v23));
        }

        else
        {
          v35 = -1;
        }

        if (v23)
        {
          v36 = v35 & (a2 - 255);
          if (v23 <= 3)
          {
            v37 = v23;
          }

          else
          {
            v37 = 4;
          }

          bzero(v34, v23);
          switch(v37)
          {
            case 2:
              *v34 = v36;
              break;
            case 3:
              *v34 = v36;
              v34[2] = BYTE2(v36);
              break;
            case 4:
              *v34 = v36;
              break;
            default:
              *v34 = v36;
              break;
          }
        }
      }

      else
      {
        v34[v15] = -a2;
      }

      return;
  }
}

uint64_t sub_1C121CBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
  v5 = *(a1 + 16);
  v6 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97EB8, &qword_1C12C9568);
  v65 = *(a1 + 24);
  v7 = sub_1C1266790();
  swift_getTupleTypeMetadata3();
  v8 = sub_1C1265B00();
  OUTLINED_FUNCTION_5_41(&qword_1EDE7C010);
  v69 = v8;
  v9 = sub_1C1262E70();
  OUTLINED_FUNCTION_1();
  v64 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v57 - v14;
  sub_1C1263130();
  OUTLINED_FUNCTION_1();
  v59 = v16;
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v7;
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - v26;
  sub_1C1263C30();
  OUTLINED_FUNCTION_1();
  v67 = v29;
  v68 = v28;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v66 = &v57 - v31;
  (*(v24 + 16))(v27, v3, v6, v30);
  v62 = v5;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v27, 1, v5);
  (*(v24 + 8))(v27, v6);
  v32 = MEMORY[0x1E6981E60];
  v33 = v5 == 1;
  v34 = v65;
  if (v33 && (v35 = v58, (*(v19 + 16))(v22, v3 + *(a1 + 52), v58), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v34), (*(v19 + 8))(v22, v35), EnumTagSinglePayload == 1))
  {
    v37 = OUTLINED_FUNCTION_2_67(&unk_1EDE7C000);
    OUTLINED_FUNCTION_10_0();
    WitnessTable = swift_getWitnessTable();
    v78 = v37;
    v79 = WitnessTable;
    OUTLINED_FUNCTION_12_0();
    swift_getWitnessTable();
    v39 = v66;
    sub_1C1112E18();
  }

  else
  {
    sub_1C0FD746C(v18);
    v40 = sub_1C1263120();
    (*(v59 + 8))(v18, v60);
    v41 = v40 & 1;
    if (v40)
    {
      v42 = 0;
    }

    else
    {
      v42 = 0x4010000000000000;
    }

    v43 = sub_1C1263AB0();
    v55 = swift_getWitnessTable();
    v73 = sub_1C1235004(v41, v42, v41, v43, 0, 0, 1);
    MEMORY[0x1EEE9AC00](v73);
    *(&v57 - 6) = v62;
    *(&v57 - 5) = v34;
    *(&v57 - 2) = *(a1 + 32);
    v55 = v3;
    v56 = v41;
    v44 = sub_1C1022650();
    OUTLINED_FUNCTION_10_0();
    v45 = v69;
    v46 = swift_getWitnessTable();
    sub_1C121710C(sub_1C121DE84, (&v57 - 8), MEMORY[0x1E6981D78], v45, v44, v46, v61);
    v71 = OUTLINED_FUNCTION_2_67(&unk_1EDE7C000);
    v72 = v46;
    OUTLINED_FUNCTION_12_0();
    swift_getWitnessTable();
    v47 = v63;
    OUTLINED_FUNCTION_20_2();
    sub_1C0FDBA4C();
    v48 = *(v64 + 8);
    v49 = OUTLINED_FUNCTION_20_2();
    v48(v49);
    sub_1C0FDBA4C();
    v39 = v66;
    OUTLINED_FUNCTION_20_2();
    v32 = MEMORY[0x1E6981E60];
    sub_1C1112D68();

    v50 = OUTLINED_FUNCTION_20_2();
    v48(v50);
    (v48)(v47, v9);
  }

  v51 = OUTLINED_FUNCTION_2_67(&unk_1EDE7C000);
  OUTLINED_FUNCTION_10_0();
  v52 = swift_getWitnessTable();
  v76 = v51;
  v77 = v52;
  OUTLINED_FUNCTION_12_0();
  v74 = swift_getWitnessTable();
  v75 = v32;
  OUTLINED_FUNCTION_19_0();
  v53 = v68;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v67 + 8))(v39, v53);
}

uint64_t sub_1C121D27C@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v106 = a6;
  v107 = a5;
  LODWORD(v90) = a2;
  v98 = a7;
  v86 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v85 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v82 - v13;
  v99 = v14;
  v102 = sub_1C1266790();
  v94 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v96 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v82 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v82 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v82 - v22;
  v23 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v82 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v82 - v30;
  v32 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v32);
  v89 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v82 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v82 - v38;
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v82 - v42;
  v105 = v44;
  v45 = *(v44 + 16);
  v93 = a1;
  v101 = v44 + 16;
  v100 = v45;
  (v45)(v39, a1, v32, v41);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, a3);
  v97 = v20;
  v103 = v43;
  if (EnumTagSinglePayload == 1)
  {
    v47 = *(v105 + 8);
    v47(v39, v32);
    __swift_storeEnumTagSinglePayload(v36, 1, 1, a3);
    sub_1C1170030(v36, v43);
  }

  else
  {
    v48 = *(v23 + 32);
    v48(v31, v39, a3);
    sub_1C0FDBA4C();
    v49 = *(v23 + 8);
    v49(v31, a3);
    v50 = v92;
    sub_1C0FDBA4C();
    v49(v28, a3);
    v48(v36, v50, a3);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, a3);
    sub_1C1170030(v36, v43);
    v47 = *(v105 + 8);
  }

  v47(v36, v32);
  v51 = v102;
  v52 = v94;
  v53 = v93;
  v95 = v32;
  v104 = v36;
  v92 = v47;
  if ((v90 & 1) != 0 || (v54 = v89, (v100)(v89, v93, v32), v55 = __swift_getEnumTagSinglePayload(v54, 1, a3), v47(v54, v32), v55 == 1))
  {
    v90 = 0;
    v89 = 0;
    v88 = 0;
    v87 = 0;
    v56 = v99;
  }

  else
  {
    v57 = v99;
    v115 = a3;
    v116 = v99;
    v117 = v107;
    v118 = v106;
    v58 = v53;
    v59 = &v53[*(type metadata accessor for PhotosJoinedCaptionComponents(0, &v115) + 52)];
    v60 = v88;
    (*(v52 + 2))(v88, v59, v51);
    LODWORD(v57) = __swift_getEnumTagSinglePayload(v60, 1, v57);
    (*(v52 + 1))(v60, v51);
    if (v57 == 1)
    {
      v90 = 0;
      v89 = 0;
      v88 = 0;
      v87 = 0;
    }

    else
    {
      sub_1C121DD28(&v115);
      v61 = v118;
      v90 = v115;
      v89 = v116;
      v88 = v117;
      sub_1C0FDB850(v115, v116, v117);
      v87 = v61;
    }

    v56 = v99;
    v53 = v58;
  }

  v115 = a3;
  v116 = v56;
  v117 = v107;
  v118 = v106;
  v62 = &v53[*(type metadata accessor for PhotosJoinedCaptionComponents(0, &v115) + 52)];
  v63 = v91;
  v99 = *(v52 + 2);
  v93 = v52 + 16;
  (v99)(v91, v62, v51);
  if (__swift_getEnumTagSinglePayload(v63, 1, v56) == 1)
  {
    v64 = *(v52 + 1);
    v64(v63, v51);
    v65 = v96;
    __swift_storeEnumTagSinglePayload(v96, 1, 1, v56);
    v66 = v97;
    sub_1C1170030(v65, v97);
    v94 = v64;
    v64(v65, v51);
  }

  else
  {
    v67 = v86;
    v68 = *(v86 + 32);
    v69 = v83;
    v68(v83, v63, v56);
    v70 = v84;
    sub_1C0FDBA4C();
    v71 = *(v67 + 8);
    v71(v69, v56);
    v72 = v85;
    sub_1C0FDBA4C();
    v71(v70, v56);
    v65 = v96;
    v68(v96, v72, v56);
    v51 = v102;
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v56);
    v66 = v97;
    sub_1C1170030(v65, v97);
    v94 = *(v52 + 1);
    (v94)(v65, v51);
  }

  v73 = v104;
  v74 = v95;
  v100();
  v75 = v90;
  v76 = v89;
  v115 = v90;
  v116 = v89;
  v77 = v88;
  v78 = v87;
  v117 = v88;
  v118 = v87;
  v114[0] = v73;
  v114[1] = &v115;
  (v99)(v65, v66, v51);
  v114[2] = v65;
  v113[0] = v74;
  v113[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97EB8, &qword_1C12C9568);
  v113[2] = v51;
  v109 = v107;
  WitnessTable = swift_getWitnessTable();
  v111 = sub_1C121DE98();
  v108 = v106;
  v112 = swift_getWitnessTable();
  sub_1C119EE80(v114, 3, v113);
  sub_1C0FDB8A4(v75, v76, v77, v78);
  v79 = v94;
  (v94)(v66, v51);
  v80 = v92;
  (v92)(v103, v74);
  (v79)(v65, v51);
  sub_1C0FDB8A4(v115, v116, v117, v118);
  return v80(v104, v74);
}

uint64_t sub_1C121DD28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1265E50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1265DF0();
  v6 = static String.photosSwiftUICoreLocalized(_:)(v5);
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1C121DE34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8, &qword_1C12AC0F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C121DE98()
{
  result = qword_1EDE76D18;
  if (!qword_1EDE76D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97EB8, &qword_1C12C9568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76D18);
  }

  return result;
}

double sub_1C121DF40@<D0>(char a1@<W0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>)
{
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97EC0, &qword_1C12C9650) + 36)) = a1 & 1;

  return sub_1C121DFC8(a1 & 1, a3, a4, a5 & 1, a2);
}

double sub_1C121DFC8@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v26[0] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97EC8, &qword_1C12C9658);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  KeyPath = swift_getKeyPath();
  v17 = &v15[v10[13]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v15[v10[14]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &v15[v10[15]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v15[v10[16]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  *&v15[v10[11]] = 0x4020000000000000;
  v21 = &v15[v10[12]];
  *v21 = 0x4018000000000000;
  v21[8] = 0;
  a1 &= 1u;
  sub_1C121E1E4(a2, v26[0], a4 & 1, v15);
  v22 = swift_getKeyPath();
  sub_1C121E4F0(v15, v12);
  *a5 = a1;
  *(a5 + 8) = 0x4044000000000000;
  *(a5 + 16) = KeyPath;
  *(a5 + 24) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97ED0, &qword_1C12C9700);
  sub_1C121E4F0(v12, a5 + *(v23 + 64));
  v24 = a5 + *(v23 + 80);
  *v24 = a1;
  *(v24 + 8) = 0x4044000000000000;
  *(v24 + 16) = v22;
  *(v24 + 24) = 0;

  sub_1C121E560(v15);

  sub_1C121E560(v12);

  return result;
}

uint64_t sub_1C121E1E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for OneUpAnimatedInfoButton(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = sub_1C12637E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_1C1266420();
    v20 = sub_1C1264410();
    v28 = a2;
    v21 = v20;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v22 = sub_1C0FF9034(a1, v28, 0);
    (*(v15 + 8))(v17, v14, v22);
    a2 = v31;
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  v19 = (*(a2 + 160))(ObjectType, a2);
  swift_unknownObjectRelease();
LABEL_6:
  *v13 = swift_getKeyPath();
  *(v13 + 1) = 0;
  v13[16] = 0;
  type metadata accessor for Model(0);
  sub_1C12628D0();
  v29 = 0;
  sub_1C1265410();
  v23 = v30;
  v24 = v31;
  sub_1C10388D4(v13, v10);
  *a4 = v19 & 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE97ED8, &unk_1C12C9730);
  sub_1C10388D4(v10, &a4[*(v25 + 48)]);
  v26 = &a4[*(v25 + 64)];
  *v26 = v23;
  *(v26 + 1) = v24;

  sub_1C1040D5C(v13);

  return sub_1C1040D5C(v10);
}

uint64_t sub_1C121E4F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97EC8, &qword_1C12C9658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C121E560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97EC8, &qword_1C12C9658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C121E5C8()
{
  result = qword_1EDE7C0C8[0];
  if (!qword_1EDE7C0C8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97EC0, &qword_1C12C9650);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7C0C8);
  }

  return result;
}

uint64_t PhotosStaticListPicker.init(selection:content:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  v13 = type metadata accessor for PhotosStaticListPicker(0, a5, a7, a8);
  v14 = a6 + v13[13];
  *v14 = sub_1C121E72C(0, 1);
  *(v14 + 8) = v15 & 1;
  *(v14 + 16) = v16;
  sub_1C1266790();
  v17 = sub_1C1265640();
  result = (*(*(v17 - 8) + 32))(a6, a1, v17);
  *(a6 + v13[11]) = a2;
  v19 = (a6 + v13[12]);
  *v19 = a3;
  v19[1] = a4;
  return result;
}

uint64_t sub_1C121E72C(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A8, &unk_1C12AFBE0);
  sub_1C1265410();
  return v3;
}

uint64_t sub_1C121E784(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1266790();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  OUTLINED_FUNCTION_2_68();
  sub_1C1265640();
  sub_1C12655F0();
  return (*(v4 + 8))(a1, v3);
}

uint64_t PhotosStaticListPicker.body.getter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40, &qword_1C12C9740);
  sub_1C1265580();
  sub_1C100EF98();
  sub_1C12656A0();
  OUTLINED_FUNCTION_0_83();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  return sub_1C1264730();
}

uint64_t sub_1C121E95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = type metadata accessor for PhotosStaticListPicker(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &KeyPath - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40, &qword_1C12C9740);
  v36 = a3;
  v37 = a4;
  v14 = sub_1C1265580();
  v15 = sub_1C100EF98();
  v33 = v14;
  v34 = v13;
  v39 = v13;
  v40 = MEMORY[0x1E69E6530];
  v41 = v14;
  v42 = v15;
  v32 = v15;
  v43 = MEMORY[0x1E69E6540];
  v16 = sub_1C12656A0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &KeyPath - v21;
  v31 = a2;
  result = sub_1C1266170();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v39 = 0;
    v40 = result;
    KeyPath = swift_getKeyPath();
    (*(v10 + 16))(v12, a1, v9);
    v24 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v25 = swift_allocObject();
    v27 = v36;
    v26 = v37;
    *(v25 + 2) = v31;
    *(v25 + 3) = v27;
    *(v25 + 4) = v26;
    (*(v10 + 32))(&v25[v24], v12, v9);
    WitnessTable = swift_getWitnessTable();
    sub_1C1265680();
    v38 = WitnessTable;
    swift_getWitnessTable();
    sub_1C0FDBA4C();
    v28 = *(v17 + 8);
    v28(v19, v16);
    sub_1C0FDBA4C();
    return (v28)(v22, v16);
  }

  return result;
}

uint64_t sub_1C121ED00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C1265580();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21[-v15];
  v17 = *a1;
  v18 = type metadata accessor for PhotosStaticListPicker(0, a3, a4, a5);
  sub_1C121EECC(v17, v18);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a2;
  v26 = v17;
  sub_1C1265570();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_1C0FDBA4C();
  return (v19)(v16, v10);
}

uint64_t sub_1C121EECC(uint64_t a1, void *a2)
{
  v31 = a1;
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v4 + 16);
  v29(v7, v2, a2, v6);
  sub_1C1266200();
  v8 = sub_1C12661F0();
  v9 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v25 = v9;
  v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 2) = v8;
  *(v11 + 3) = v12;
  v13 = a2[2];
  v27 = a2[3];
  v14 = v27;
  v28 = v13;
  *(v11 + 4) = v13;
  *(v11 + 5) = v14;
  v26 = a2[4];
  *(v11 + 6) = v26;
  v15 = *(v4 + 32);
  v15(&v11[v9], v7, a2);
  v16 = v30;
  v17 = v31;
  *&v11[v10] = v31;
  (v29)(v7, v16, a2);
  v18 = sub_1C12661F0();
  v19 = swift_allocObject();
  *(v19 + 2) = v18;
  v21 = v27;
  v20 = v28;
  *(v19 + 3) = MEMORY[0x1E69E85E0];
  *(v19 + 4) = v20;
  v22 = v25;
  v23 = v26;
  *(v19 + 5) = v21;
  *(v19 + 6) = v23;
  v15(&v19[v22], v7, a2);
  *&v19[v10] = v17;
  sub_1C1265620();
  return v32;
}