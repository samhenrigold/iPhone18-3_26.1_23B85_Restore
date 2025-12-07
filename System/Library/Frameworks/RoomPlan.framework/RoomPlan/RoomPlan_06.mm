uint64_t sub_23A921D78(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = sub_23AA0C0E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v10 - 8);
  v26 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = type metadata accessor for CapturedRoom.Surface(0);
  v16 = *(v15 + 56);
  (*(v4 + 16))(v14, a2 + *(v15 + 44), v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_23A8D5194(v27 + v16, v9, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D5194(v14, &v9[v17], &unk_27DFB0970, &qword_23AA14E00);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    v20 = v26;
    sub_23A8D5194(v9, v26, &unk_27DFB0970, &qword_23AA14E00);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v25, &v9[v17], v3);
      sub_23A93032C(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_23AA0D084();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_23A8D50D0(v14, &unk_27DFB0970, &qword_23AA14E00);
      v22(v20, v3);
      sub_23A8D50D0(v9, &unk_27DFB0970, &qword_23AA14E00);
      return v19 & 1;
    }

    sub_23A8D50D0(v14, &unk_27DFB0970, &qword_23AA14E00);
    (*(v4 + 8))(v20, v3);
    goto LABEL_6;
  }

  sub_23A8D50D0(v14, &unk_27DFB0970, &qword_23AA14E00);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_23A8D50D0(v9, &qword_27DFAEC28, &unk_23AA1AA40);
    v19 = 0;
    return v19 & 1;
  }

  sub_23A8D50D0(v9, &unk_27DFB0970, &qword_23AA14E00);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_23A922178(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = sub_23AA0C0E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v10 - 8);
  v26 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = *(type metadata accessor for CapturedRoom.Object(0) + 44);
  v16 = type metadata accessor for CapturedRoom.Surface(0);
  (*(v4 + 16))(v14, a2 + *(v16 + 44), v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_23A8D5194(v27 + v15, v9, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D5194(v14, &v9[v17], &unk_27DFB0970, &qword_23AA14E00);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    v20 = v26;
    sub_23A8D5194(v9, v26, &unk_27DFB0970, &qword_23AA14E00);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v25, &v9[v17], v3);
      sub_23A93032C(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_23AA0D084();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_23A8D50D0(v14, &unk_27DFB0970, &qword_23AA14E00);
      v22(v20, v3);
      sub_23A8D50D0(v9, &unk_27DFB0970, &qword_23AA14E00);
      return v19 & 1;
    }

    sub_23A8D50D0(v14, &unk_27DFB0970, &qword_23AA14E00);
    (*(v4 + 8))(v20, v3);
    goto LABEL_6;
  }

  sub_23A8D50D0(v14, &unk_27DFB0970, &qword_23AA14E00);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_23A8D50D0(v9, &qword_27DFAEC28, &unk_23AA1AA40);
    v19 = 0;
    return v19 & 1;
  }

  sub_23A8D50D0(v9, &unk_27DFB0970, &qword_23AA14E00);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_23A922580(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = sub_23AA0C0E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v10 - 8);
  v26 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = type metadata accessor for CapturedRoom.Object(0);
  v16 = *(v15 + 44);
  (*(v4 + 16))(v14, a2 + *(v15 + 32), v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_23A8D5194(v27 + v16, v9, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D5194(v14, &v9[v17], &unk_27DFB0970, &qword_23AA14E00);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    v20 = v26;
    sub_23A8D5194(v9, v26, &unk_27DFB0970, &qword_23AA14E00);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v25, &v9[v17], v3);
      sub_23A93032C(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_23AA0D084();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_23A8D50D0(v14, &unk_27DFB0970, &qword_23AA14E00);
      v22(v20, v3);
      sub_23A8D50D0(v9, &unk_27DFB0970, &qword_23AA14E00);
      return v19 & 1;
    }

    sub_23A8D50D0(v14, &unk_27DFB0970, &qword_23AA14E00);
    (*(v4 + 8))(v20, v3);
    goto LABEL_6;
  }

  sub_23A8D50D0(v14, &unk_27DFB0970, &qword_23AA14E00);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_23A8D50D0(v9, &qword_27DFAEC28, &unk_23AA1AA40);
    v19 = 0;
    return v19 & 1;
  }

  sub_23A8D50D0(v9, &unk_27DFB0970, &qword_23AA14E00);
  v19 = 1;
  return v19 & 1;
}

void sub_23A922980(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X4>, int a5@<W5>, unsigned int (*a6)(void, void, void)@<X6>, uint64_t a7@<X7>, uint64_t (**a8)(uint64_t, uint64_t, unint64_t)@<X8>, float32_t a9@<S0>, float32_t a10@<S1>, float a11@<S2>)
{
  v13 = v12;
  v14 = v11;
  v173 = a6;
  v168 = a5;
  v170 = a3;
  v171 = a2;
  v176 = a8;
  v178.n128_u64[0] = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v175 = *(v178.n128_u64[0] - 8);
  MEMORY[0x28223BE20](v178.n128_u64[0]);
  v169 = (&v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v22 - 8);
  v172 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v177.i64[0] = &v148 - v25;
  v26 = type metadata accessor for CapturedRoom.Surface(0);
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v32 = &v148 - v31;
  v33 = *(v28 + 44);
  v34 = *(v11 + 16);
  if (!*(v34 + 16))
  {
    goto LABEL_6;
  }

  v165 = v30;
  v166 = v29;
  v167 = v28;

  v174 = a1;
  v35 = sub_23A9EDD28(a1 + v33);
  if ((v36 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    v46 = v45;
    *v45 = sub_23AA0C074();
    v46[1] = v47;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v164 = v32;
  v162 = a4;
  v163 = a7;
  v37 = (*(v34 + 56) + 16 * v35);
  v38 = *v37;
  v39 = v37[1];

  v179 = v38;
  v180 = v39;

  MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
  v40 = *(v14 + 24);
  v41 = *(v14 + 32);

  MEMORY[0x23EE8FCA0](v40, v41);

  v42 = v176;
  sub_23AA0BF44();

  v43 = sub_23A92D2EC(v42);
  if (v13)
  {
    v44 = sub_23AA0BFB4();
    (*(*(v44 - 8) + 8))(v42, v44);

    return;
  }

  v48 = v43;
  v49 = sub_23AA0BF04();
  v51 = v50;
  v52 = [v48 rootNode];
  v53 = sub_23A92EC38(v38, v39, v49, v51, v52, v48);
  v158 = v38;
  v159 = v39;
  v161 = 0;
  v54 = v53;

  v55 = sub_23AA0D104();
  v160 = v48;
  v56 = v174;
  sub_23AA0C074();
  v57 = objc_allocWithZone(MEMORY[0x277D77878]);
  v58 = sub_23AA0D104();

  v59 = [v57 initWithString_];

  [v54 setCustomMetadata:v55 value:v59];
  v60 = sub_23AA0D104();
  v61 = *v56;
  v62 = v160;
  LOBYTE(v179) = v61;
  v179 = sub_23AA0D1A4();
  v180 = v63;
  sub_23A92F104();
  sub_23AA0D6A4();

  v64 = objc_allocWithZone(MEMORY[0x277D77878]);
  v65 = sub_23AA0D104();

  v66 = [v64 initWithString_];

  [v54 setCustomMetadata:v60 value:v66];
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v67 = [v62 rootNode];
  LOBYTE(v65) = sub_23AA0D634();

  v157 = v54;
  if (v65)
  {
    v68 = 0;
    v69 = 0xE000000000000000;
    v70 = v159;
    v71 = v164;
  }

  else
  {
    v72 = [v54 path];
    v73 = [v72 stringValue];

    v70 = v159;
    v71 = v164;
    if (v73)
    {
      v68 = sub_23AA0D134();
      v69 = v74;
    }

    else
    {
      v68 = 0;
      v69 = 0xE000000000000000;
    }
  }

  v179 = v68;
  v180 = v69;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v158, v70);

  v76 = v179;
  v75 = v180;
  v77 = objc_allocWithZone(MEMORY[0x277D77888]);
  v78 = sub_23AA0D104();
  v79 = [v77 initWithString_];

  if (!v79)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v101 = v76;
    v101[1] = v75;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v79 = v157;
LABEL_19:

    v103 = sub_23AA0BFB4();
    (*(*(v103 - 8) + 8))(v176, v103);
    return;
  }

  v80 = [v62 newNodeAtPath:v79 type:*MEMORY[0x277D77968]];
  if (!v80)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v102 = v76;
    v102[1] = v75;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_19;
  }

  v81 = v80;

  v82 = sub_23AA0D104();
  v83 = *MEMORY[0x277D77948];
  v164 = v81;
  v84 = [v81 newPropertyWithName:v82 type:v83 role:0];

  if (v84)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_23AA11BB0;
    v86 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v87 = sub_23AA0D104();
    v88 = [v86 initWithString_];

    *(v85 + 32) = v88;
    sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
    v89 = sub_23AA0D2E4();

    v152 = v84;
    [v84 setTokenArray_];

    v90 = v174;
    v182.columns[1] = *(v174 + 48);
    v182.columns[2] = *(v174 + 64);
    v182.columns[3] = *(v174 + 80);
    v151 = *(v174 + 32);
    v182.columns[0] = v151;
    v150 = v182.columns[1];
    v149 = v182.columns[2];
    v148 = v182.columns[3];
    v183 = __invert_f4(v182);
    v181 = MEMORY[0x277D84F90];
    v92 = v171;
    v93 = *(v171 + 16);
    v156 = v183.columns[0];
    v155 = v183.columns[1];
    v154 = v183.columns[2];
    v153 = v183.columns[3];
    if (v93)
    {
      v94.n128_f64[0] = MEMORY[0x28223BE20](v91);
      *(&v148 - 5) = v94;
      *(&v148 - 4) = v95;
      *(&v148 - 3) = v96;
      *(&v148 - 2) = v97;
      *(&v148 - 2) = v90;
      v98 = v161;
      sub_23A97E54C(sub_23A92FFF4, (&v148 - 6), v92, v94);
      v99 = v98;
      sub_23A912880(v100);
    }

    else
    {
      v99 = v161;
    }

    if (*(v170 + 16))
    {
      MEMORY[0x28223BE20](v91);
      v104 = v155;
      *(&v148 - 5) = v156;
      *(&v148 - 4) = v104;
      v105 = v153;
      *(&v148 - 3) = v154;
      *(&v148 - 2) = v105;
      *(&v148 - 2) = v174;
      sub_23A96611C(sub_23A9305B0, (&v148 - 6), v106, v105);
      sub_23A912880(v107);
    }

    v161 = v99;
    if (v93)
    {
      v108 = *(v165 + 72);
      v170 = (*(v165 + 80) + 32) & ~*(v165 + 80);
      v109 = v92 + v170;
      v176 = (v175 + 48);
      v110 = MEMORY[0x277D84F90];
      do
      {
        sub_23A930548(v109, v71, type metadata accessor for CapturedRoom.Surface);
        v111 = v177.i64[0];
        sub_23A8D5194(v71 + *(v167 + 52), v177.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
        v112 = (*v176)(v111, 1, v178.n128_u64[0]);
        sub_23A8D50D0(v111, &qword_27DFAEB38, &unk_23AA11B60);
        if (v112 == 1)
        {
          v91 = sub_23A92FED0(v71, type metadata accessor for CapturedRoom.Surface);
        }

        else
        {
          sub_23A92FF30(v71, v166, type metadata accessor for CapturedRoom.Surface);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v179 = v110;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23A976018(0, *(v110 + 16) + 1, 1);
            v110 = v179;
          }

          v115 = *(v110 + 16);
          v114 = *(v110 + 24);
          if (v115 >= v114 >> 1)
          {
            sub_23A976018((v114 > 1), v115 + 1, 1);
            v110 = v179;
          }

          *(v110 + 16) = v115 + 1;
          v91 = sub_23A92FF30(v166, v110 + v170 + v115 * v108, type metadata accessor for CapturedRoom.Surface);
        }

        v109 += v108;
        --v93;
      }

      while (v93);
    }

    else
    {
      v110 = MEMORY[0x277D84F90];
    }

    if (*(v110 + 16))
    {
      MEMORY[0x28223BE20](v91);
      v116 = v155;
      *(&v148 - 5) = v156;
      *(&v148 - 4) = v116;
      v117 = v153;
      *(&v148 - 3) = v154;
      *(&v148 - 2) = v117;
      v118 = v174;
      *(&v148 - 2) = v174;
      v119 = v161;
      sub_23A97E54C(sub_23A92FFB4, (&v148 - 6), v110, v117);
      v121 = v120;
      v161 = v119;
    }

    else
    {

      v121 = MEMORY[0x277D84F90];
      v118 = v174;
    }

    v122 = v160;
    v123 = v172;
    v124 = v163;
    v177 = v118[1];
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v125 = off_27DFB17B0;
    swift_beginAccess();
    v126 = (v125[138] & 1) == 0 && v118->i8[0] != 5;
    v127 = v167;
    sub_23A8D5194(v118 + *(v167 + 52), v123, &qword_27DFAEB38, &unk_23AA11B60);
    if ((*(v175 + 48))(v123, 1, v178.n128_u64[0]) == 1)
    {
      *v128.i32 = a11 + a11;
      v178 = vaddq_f32(vdupq_lane_s32(v128, 0), v177);

      sub_23A8D50D0(v123, &qword_27DFAEB38, &unk_23AA11B60);
      v129 = *(v118->i64 + *(v127 + 60));
      if (*(v129 + 16))
      {
        v130 = v126;
      }

      else
      {
        v130 = 1;
      }

      if (v130)
      {
        v131 = v162;
        if (v162)
        {
          sub_23A9BAE80(v178.n128_f64[0]);
          v133 = v132;
          type metadata accessor for RoomCaptureGeometryManager();
          swift_initStaticObject();
          sub_23A8F0290(v133, v181, v131, v168 & 1, v173, v124, v178, a9, a10, a11);
          v135 = v134;
        }

        else
        {
          v135 = sub_23A8F89D0(v181, v173, v124, v178, a9, a10);
        }
      }

      else
      {
        type metadata accessor for RoomCaptureGeometryManager();
        swift_initStaticObject();
        sub_23A8F0290(v129, v181, v162, v168 & 1, v173, v124, v178, a9, a10, a11);
        v135 = v142;
      }
    }

    else
    {
      v136 = v177.i32[1];

      v137 = v169;
      sub_23A92FF30(v123, v169, type metadata accessor for CapturedRoom.Surface.Curve);
      v138.n128_u32[0] = v136;
      v139.n128_f32[0] = a9;
      v140.n128_f32[0] = a10;
      sub_23A8FA5A0(v137, v121, v138, v139, v140, v173, v124, 0x3C8EFA35uLL, 1);
      v135 = v141;

      sub_23A92FED0(v137, type metadata accessor for CapturedRoom.Surface.Curve);
    }

    sub_23A92F158(v164, v135, v151, v150, v149, v148);

    v143 = v118->u8[0];
    if (v143 == 5 || (v144 = 0.0, v143 == 2))
    {
      v144 = 0.00781250185;
    }

    v145 = v143 == 5 || v143 == 2;
    v146 = 0.0;
    if (v145)
    {
      v146 = 1.0;
    }

    v147 = v164;
    sub_23A92F638(v164, v158, v159, v122, v144, v146);

    [v122 save];
  }

  else
  {
    __break(1u);
  }
}

float32x2_t *sub_23A923B00@<X0>(float32x4_t *a1@<X0>, __n128 *a2@<X1>, float32x2_t **a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v12 = a1[1];
  v11 = a1[2];
  v18 = a2[1];
  v13 = vaddq_f32(v10, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v11, -0.5 * v12.f32[0]), v8, vmuls_lane_f32(-0.5, *v12.f32, 1)), v9, vmuls_lane_f32(-0.5, v12, 2)));
  v14 = vaddq_f32(v10, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v11, 0.5 * v12.f32[0]), v8, vmuls_lane_f32(0.5, *v12.f32, 1)), v9, vmuls_lane_f32(0.5, v12, 2)));
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v14.f32[0]), a5, *v14.f32, 1), a6, v14, 2), a7, v14, 3).u64[0];
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v13.f32[0]), a5, *v13.f32, 1), a6, v13, 2), a7, v13, 3).u64[0];
  type metadata accessor for OpeningElement();
  swift_allocObject();
  result = sub_23AA0A7C4(v17, v16, v18.n128_u64[0], 0.03);
  *a3 = result;
  return result;
}

int32x2_t sub_23A923BEC@<D0>(float32x4_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>)
{
  v99 = a2;
  v95 = a6;
  v96 = a7;
  v94 = a5;
  v93 = a4;
  v101 = a3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v100 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v84 - v8;
  v9 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v86.n128_u64[0] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v105 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v14 - 8);
  v102.i64[0] = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v84 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v84 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v84 - v23;
  v25 = a1[3];
  v89 = a1[2];
  v90 = v25;
  v26 = a1[5];
  v92 = a1[4];
  v91 = v26;
  v27 = type metadata accessor for CapturedRoom.Surface(0);
  v28 = a1 + *(v27 + 52);
  v104 = v24;
  sub_23A8D5194(v28, v24, &qword_27DFAEB38, &unk_23AA11B60);
  v103 = a1[1];
  sub_23A8D5194(&v99[*(v27 + 52)], v21, &qword_27DFAEB38, &unk_23AA11B60);
  v99 = v21;
  v29 = v21;
  v30 = v86.n128_u64[0];
  v31 = v9;
  sub_23A8D5194(v29, v18, &qword_27DFAEB38, &unk_23AA11B60);
  v32 = *(v30 + 48);
  if (v32(v18, 1, v9) == 1)
  {
    v33 = objc_opt_self();
    v34 = [v33 degrees];
    sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
    sub_23AA0BC64();
    v35 = [v33 degrees];
    sub_23AA0BC64();
    *v13 = 0;
    *(v13 + 2) = 0;
    if (v32(v18, 1, v9) != 1)
    {
      sub_23A8D50D0(v18, &qword_27DFAEB38, &unk_23AA11B60);
    }
  }

  else
  {
    sub_23A92FF30(v18, v13, type metadata accessor for CapturedRoom.Surface.Curve);
  }

  v36 = v102.i64[0];
  sub_23A8D5194(v104, v102.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
  v37 = v32(v36, 1, v31);
  v88 = v13;
  if (v37 == 1)
  {
    v38 = objc_opt_self();
    v39 = [v38 degrees];
    sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
    v40 = v105;
    sub_23AA0BC64();
    v41 = [v38 &selRef_saveAndCreateUSDZPackageWithURL_ + 6];
    sub_23AA0BC64();
    *v40 = 0;
    *(v40 + 8) = 0;
    if (v32(v36, 1, v31) != 1)
    {
      sub_23A8D50D0(v36, &qword_27DFAEB38, &unk_23AA11B60);
    }
  }

  else
  {
    v40 = v105;
    sub_23A92FF30(v36, v105, type metadata accessor for CapturedRoom.Surface.Curve);
  }

  v42.i64[0] = *v40;
  v102 = v42;
  v43 = *(v40 + 8);
  v44 = objc_opt_self();
  v45 = [v44 radians];
  v47 = v97;
  v46 = v98;
  sub_23AA0BC84();

  sub_23AA0BC74();
  v49 = v48;
  v87 = v31;
  v50 = *(v100 + 1);
  v51 = v50(v47, v46);
  v100 = v50;
  *&v49 = v49;
  v51.n128_f32[0] = vmuls_lane_f32(-0.5, *v103.f32, 1);
  v86 = v51;
  *&v52 = v102.f32[0] + (v43 * cosf(*&v49));
  v85 = v52;
  v53 = v102.f32[1];
  *&v54 = v53 + (v43 * sinf(*&v49));
  v84 = v54;
  v55 = [v44 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v57 = v56;
  v58 = v50(v47, v46);
  *&v57 = v57;
  v58.f32[0] = vmuls_lane_f32(0.5, *v103.f32, 1);
  v103 = v58;
  v59.f32[0] = v102.f32[0] + (v43 * cosf(*&v57));
  v102 = v59;
  v60 = sinf(*&v57);
  v61 = vaddq_f32(v91, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v89, *&v85), v90, v86.n128_f32[0]), v92, *&v84));
  v62 = vaddq_f32(v91, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v89, v102.f32[0]), v90, v103.f32[0]), v92, v53 + (v43 * v60)));
  v102 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, v62.f32[0]), v94, *v62.f32, 1), v95, v62, 2), v96, v62, 3);
  v103 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, v61.f32[0]), v94, *v61.f32, 1), v95, v61, 2), v96, v61, 3);
  v63 = v88;
  LODWORD(v64) = HIDWORD(*v88);
  *&v57 = v102.f32[0] - COERCE_FLOAT(*v88);
  v65 = v102.f32[2] - v64;
  v66 = atan2f(v103.f32[2] - v64, v103.f32[0] - COERCE_FLOAT(*v88));
  v67 = atan2f(v65, *&v57);
  v68 = v66 + 6.2832;
  if (v66 >= 0.0)
  {
    v68 = v66;
  }

  else
  {
    v67 = v67 + 6.2832;
  }

  if (v68 < 6.2832)
  {
    v69 = v68;
  }

  else
  {
    v69 = v68 + -6.2832;
  }

  if (v68 >= 6.2832)
  {
    v67 = v67 + -6.2832;
  }

  if (v67 >= v69)
  {
    v70 = v67;
  }

  else
  {
    v70 = v67 + 6.2832;
  }

  v71 = v44;
  v72 = [v44 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v74 = v73;
  v75 = v100;
  v100(v47, v46);
  v76 = v74;
  if (v69 < v76)
  {
    v69 = v74;
  }

  v77 = [v71 radians];
  sub_23AA0BC84();

  sub_23AA0BC74();
  v79 = v78;
  v75(v47, v46);
  sub_23A92FED0(v105, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A92FED0(v63, type metadata accessor for CapturedRoom.Surface.Curve);
  sub_23A8D50D0(v99, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D50D0(v104, &qword_27DFAEB38, &unk_23AA11B60);
  v80 = v79;
  if (v70 >= v80)
  {
    v81 = v79;
  }

  else
  {
    v81 = v70;
  }

  type metadata accessor for CurvedElement();
  v82 = swift_allocObject();
  *(v82 + 16) = v69;
  *(v82 + 20) = v81;
  result = vzip2_s32(*v103.f32, *v102.f32);
  *(v82 + 24) = result;
  *v101 = v82;
  return result;
}

void sub_23A924514(void (*a1)(char *, char *, uint64_t, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v125 = a1;
  v7 = v6;
  v120 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0990, &qword_23AA12EE0);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v117.i64[0] = &v111 - v15;
  v16 = type metadata accessor for CapturedRoom.Object(0);
  v118 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v122.i64[0] = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v116.i64[0] = &v111 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v111 - v21;
  v23 = sub_23AA0BFB4();
  MEMORY[0x28223BE20](v23);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v119 = v16;
  v30 = *(v16 + 32);
  v31 = v7[2];
  if (!*(v31 + 16))
  {
    goto LABEL_6;
  }

  v124 = &v111 - v28;
  v114 = v29;
  v115 = v27;
  v113 = *a5;

  v123.i64[0] = a2;
  v32 = sub_23A9EDD28(a2 + v30);
  if ((v33 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    v43 = v42;
    *v42 = sub_23AA0C074();
    v43[1] = v44;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v111.i64[0] = a4;
  v112 = a6;
  v34 = (*(v31 + 56) + 16 * v32);
  v36 = *v34;
  v35 = v34[1];

  *&v127 = v36;
  *(&v127 + 1) = v35;

  MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
  v37 = v7[3];
  v38 = v7[4];

  MEMORY[0x23EE8FCA0](v37, v38);

  v39 = v124;
  sub_23AA0BF44();

  v40 = v126;
  v41 = sub_23A92D2EC(v39);
  if (v40)
  {
    (*(v114 + 8))(v39, v115);

    return;
  }

  v125 = v36;
  v126 = v35;
  v45 = v41;
  if (v113)
  {
    v127 = v113;
    CapturedRoom.ModelProvider.modelFileURL(for:)(v123.i64[0], v22);
    v46 = v114;
    v47 = v115;
    if ((*(v114 + 48))(v22, 1, v115) != 1)
    {

      v125 = *(v46 + 32);
      v126 = (v46 + 32);
      (v125)(v25, v22, v47);
      v68 = v124;
      sub_23A925538(v45, v124, v123.i64[0], v25);
      [v45 save];

      (*(v46 + 8))(v25, v47);
      (v125)(v112, v68, v47);
      return;
    }

    sub_23A8D50D0(v22, &qword_27DFAF210, &qword_23AA12EE8);
  }

  v48 = sub_23AA0BF04();
  v50 = v49;
  v51 = [v45 rootNode];
  v52 = sub_23A92EC38(v125, v126, v48, v50, v51, v45);

  v53 = sub_23AA0D104();
  v54 = v123.i64[0];
  sub_23AA0C074();
  v55 = objc_allocWithZone(MEMORY[0x277D77878]);
  v56 = sub_23AA0D104();

  v57 = [v55 initWithString_];

  [v52 setCustomMetadata:v53 value:v57];
  v58 = sub_23AA0D104();
  LOBYTE(v127) = *v54;
  *&v127 = sub_23AA0D1A4();
  *(&v127 + 1) = v59;
  sub_23A92F104();
  sub_23AA0D6A4();

  v60 = objc_allocWithZone(MEMORY[0x277D77878]);
  v61 = sub_23AA0D104();

  v62 = [v60 initWithString_];

  [v52 setCustomMetadata:v58 value:v62];
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v63 = [v45 rootNode];
  LOBYTE(v61) = sub_23AA0D634();

  *&v113 = v52;
  if (v61)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    v66 = v123.i64[0];
    v67 = v125;
  }

  else
  {
    v69 = [v52 path];
    v70 = [v69 stringValue];

    v67 = v125;
    if (v70)
    {
      v64 = sub_23AA0D134();
      v65 = v71;
    }

    else
    {
      v64 = 0;
      v65 = 0xE000000000000000;
    }

    v66 = v123.i64[0];
  }

  *&v127 = v64;
  *(&v127 + 1) = v65;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v67, v126);

  v72 = v127;
  v73 = objc_allocWithZone(MEMORY[0x277D77888]);
  v74 = sub_23AA0D104();
  v75 = [v73 initWithString_];

  if (!v75)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v95 = v72;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v75 = v113;
LABEL_24:

    (*(v114 + 8))(v124, v115);
    return;
  }

  v76 = [v45 newNodeAtPath:v75 type:*MEMORY[0x277D77968]];
  if (!v76)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v96 = v72;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_24;
  }

  v77 = v76;

  v78 = sub_23AA0D104();
  v79 = *MEMORY[0x277D77948];
  v123.i64[0] = v77;
  v80 = [v77 newPropertyWithName:v78 type:v79 role:0];

  if (v80)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_23AA11BB0;
    v82 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v83 = sub_23AA0D104();
    v84 = [v82 initWithString_];

    *(v81 + 32) = v84;
    sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
    v85 = sub_23AA0D2E4();

    v86 = v80;
    [v80 setTokenArray_];

    v88 = v121;
    if (*(v111.i64[0] + 16))
    {
      MEMORY[0x28223BE20](v87);
      *(&v111 - 2) = v66;
      v90 = sub_23A916B68(sub_23A92FF98, (&v111 - 2), v89);
      v91 = sub_23A8F2D70(v90, 0, v66[1], 0.0001);

      v92 = v122.i64[0];
      v93 = v112;
      v94 = v123.i64[0];
    }

    else
    {
      v97 = v66[1];
      v98 = 0;
      v92 = v122.i64[0];
      if (v66->n128_u8[0] == 12)
      {
        v111 = v66[1];
        v99 = v117.i64[0];
        sub_23A8D5194(v120, v117.i64[0], &qword_27DFB0990, &qword_23AA12EE0);
        v100 = (*(v118 + 48))(v99, 1, v119);
        v93 = v112;
        v94 = v123.i64[0];
        if (v100 == 1)
        {
          sub_23A8D50D0(v99, &qword_27DFB0990, &qword_23AA12EE0);
          v97 = v111;
          v98 = 0;
        }

        else
        {
          v101 = v99;
          v102 = v116.i64[0];
          sub_23A92FF30(v101, v116.i64[0], type metadata accessor for CapturedRoom.Object);
          v103 = v102[5].f32[1];
          v117 = v102[1];
          if (qword_27DFAE518 != -1)
          {
            swift_once();
          }

          v104 = off_27DFB17B0;
          sub_23A92FED0(v102, type metadata accessor for CapturedRoom.Object);
          swift_beginAccess();
          v97 = v111;
          v97.i32[1] = vmuls_lane_f32(v104[13], *v117.f32, 1);
          LODWORD(v98) = 0;
          *(&v98 + 1) = ((v103 - vmuls_lane_f32(0.5, *v117.f32, 1)) + (v97.f32[1] * 0.5)) - v66[5].n128_f32[1];
          v93 = v112;
        }
      }

      else
      {
        v93 = v112;
        v94 = v123.i64[0];
      }

      v91 = sub_23A8F29A8(v97, v98);
    }

    v105 = v66[2];
    v122 = v66[3];
    v123 = v105;
    v106 = v66[4];
    v116 = v66[5];
    v117 = v106;

    sub_23A92F158(v94, v91, v123, v122, v117, v116);

    v107 = v66->n128_u8[0];
    v108 = 0.0;
    if (v107 == 2 || v107 == 15)
    {
      goto LABEL_44;
    }

    if (v107 == 4)
    {
      sub_23A8D5194(v120, v88, &qword_27DFB0990, &qword_23AA12EE0);
      if ((*(v118 + 48))(v88, 1, v119) != 1)
      {
        sub_23A92FF30(v88, v92, type metadata accessor for CapturedRoom.Object);
        if (qword_27DFAE518 != -1)
        {
          swift_once();
        }

        v109 = off_27DFB17B0;
        swift_beginAccess();
        v110 = sub_23A8EE240(v92, v109[11]);
        sub_23A92FED0(v92, type metadata accessor for CapturedRoom.Object);
        v108 = 0.0;
        if (!v110)
        {
          v108 = 1.0;
        }

        v93 = v112;
        goto LABEL_44;
      }

      sub_23A8D50D0(v88, &qword_27DFB0990, &qword_23AA12EE0);
    }

    v108 = 1.0;
LABEL_44:
    sub_23A92F638(v94, v125, v126, v45, 0.00781250185, v108);

    [v45 save];

    (*(v114 + 32))(v93, v124, v115);
    return;
  }

  __break(1u);
}

double sub_23A9254A8@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v10[0]) = a1->i8[0];
  v6 = sub_23A9E7514();
  v7 = sub_23A901C30(v6);
  sub_23A902044(v7, v10, a1[1], a1[2], a1[3], a1[4], a1[5], *(a2 + 16), *(a2 + 32), *(a2 + 48), *(a2 + 64), *(a2 + 80));
  result = *v10;
  v9 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v9;
  *(a3 + 32) = v11;
  return result;
}

void sub_23A925538(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v156.i64[0] = a3;
  v163 = a2;
  v161.n128_u64[0] = a1;
  v175 = *MEMORY[0x277D85DE8];
  v159 = sub_23AA0BEB4();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v6 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_23AA0BFB4();
  v7 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v160.i64[0] = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v162 = &v145 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF208, &qword_23AA12ED8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v145 - v12;
  *&v165.f64[0] = sub_23AA0BEC4();
  v165.f64[1] = v14;
  v173 = 1667527541;
  v174 = 0xE400000000000000;
  v15 = sub_23AA0C104();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = sub_23A92F104();
  v17 = sub_23AA0D6D4();
  sub_23A8D50D0(v13, &qword_27DFAF208, &qword_23AA12ED8);

  if (v17)
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    (*(v7 + 16))(v18, a4, v164);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v19 = v160.i64[0];
  sub_23AA0BF64();
  v155 = a4;
  *&v165.f64[0] = sub_23AA0BF04();
  v165.f64[1] = v20;
  v21 = v158;
  v22 = v159;
  (*(v158 + 13))(v6, *MEMORY[0x277CC91D8], v159);
  v23 = v162;
  v154 = v16;
  sub_23AA0BFA4();
  (*(v21 + 1))(v6, v22);

  v26 = *(v7 + 8);
  v25 = v7 + 8;
  v24 = v26;
  v27 = v164;
  v26(v19, v164);
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  sub_23AA0BF84();
  v30 = sub_23AA0D104();

  v31 = [v29 fileExistsAtPath_];

  if ((v31 & 1) == 0)
  {
    v32 = [v28 defaultManager];
    v33 = sub_23AA0BF14();
    v34 = sub_23AA0BF14();
    v165.f64[0] = 0.0;
    v35 = [v32 copyItemAtURL:v33 toURL:v34 error:&v165];

    if (!v35)
    {
      v67 = *&v165.f64[0];
      sub_23AA0BE74();

      swift_willThrow();
      v24(v23, v27);
      return;
    }

    v36 = *&v165.f64[0];
  }

  sub_23AA0BF34();
  v37 = sub_23AA0BF04();
  v38 = v19;
  v39 = v37;
  v41 = v40;
  v24(v38, v27);
  v42 = sub_23AA0BF04();
  v44 = v43;
  v45 = v161.n128_u64[0];
  v46 = [v161.n128_u64[0] rootNode];
  v47 = v157;
  v48 = sub_23A92EC38(v39, v41, v42, v44, v46, v45);
  if (v47)
  {
    v24(v162, v27);

    return;
  }

  v160.i64[0] = v39;
  v157 = 0;
  v163 = v41;
  v158 = v24;
  v159 = v25;
  v49 = v48;

  v50 = sub_23AA0D104();
  type metadata accessor for CapturedRoom.Object(0);
  v51 = v156.i64[0];
  sub_23AA0C074();
  v52 = objc_allocWithZone(MEMORY[0x277D77878]);
  v53 = sub_23AA0D104();

  v54 = [v52 initWithString_];

  [v49 setCustomMetadata:v50 value:v54];
  v55 = sub_23AA0D104();
  LOBYTE(v165.f64[0]) = *v51;
  *&v165.f64[0] = sub_23AA0D1A4();
  v165.f64[1] = v56;
  sub_23AA0D6A4();

  v57 = objc_allocWithZone(MEMORY[0x277D77878]);
  v58 = sub_23AA0D104();

  v59 = [v57 initWithString_];

  [v49 setCustomMetadata:v55 value:v59];
  v60 = sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v61 = [v161.n128_u64[0] rootNode];
  LOBYTE(v58) = sub_23AA0D634();

  v62 = v49;
  if (v58)
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    v65 = v163;
    v66 = v160.i64[0];
  }

  else
  {
    v68 = [v49 path];
    v69 = [v68 stringValue];

    v65 = v163;
    v66 = v160.i64[0];
    if (v69)
    {
      v63 = sub_23AA0D134();
      v64 = v70;
    }

    else
    {
      v63 = 0;
      v64 = 0xE000000000000000;
    }
  }

  *&v165.f64[0] = v63;
  *&v165.f64[1] = v64;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v66, v65);

  v71 = v165;
  v72 = objc_allocWithZone(MEMORY[0x277D77888]);
  v73 = sub_23AA0D104();
  v74 = [v72 initWithString_];

  if (!v74)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v103 = v71;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_22:

    goto LABEL_34;
  }

  v160.i64[0] = v60;
  v75 = *MEMORY[0x277D77980];
  v76 = [v161.n128_u64[0] newNodeAtPath:v74 type:*MEMORY[0x277D77980]];
  if (!v76)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v104 = v71;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v62 = v74;
    goto LABEL_22;
  }

  v77 = v76;
  v149 = v75;

  v78 = sub_23AA0D104();
  v79 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v80 = sub_23AA0D104();
  v81 = [v79 initWithString_];

  v82 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  [v77 setMetadataWithKey:v78 value:v82];

  v154 = "modelPositionAndDimensionsCache";
  v83 = sub_23AA0D104();
  v84 = *MEMORY[0x277D778E0];
  v85 = [v77 newPropertyWithName:v83 type:*MEMORY[0x277D778E0] role:0];

  if (!v85)
  {
    __break(1u);
    goto LABEL_37;
  }

  v147 = v84;
  v86 = *(v156.i64[0] + 32);
  v87 = *(v156.i64[0] + 48);
  v88 = *(v156.i64[0] + 64);
  v89 = *(v156.i64[0] + 80);
  v165 = vcvtq_f64_f32(*v86.f32);
  v166 = vcvt_hight_f64_f32(v86);
  v167 = vcvtq_f64_f32(*v87.f32);
  v168 = vcvt_hight_f64_f32(v87);
  v169 = vcvtq_f64_f32(*v88.f32);
  v170 = vcvt_hight_f64_f32(v88);
  v171 = vcvtq_f64_f32(*v89.f32);
  v172 = vcvt_hight_f64_f32(v89);
  v153 = v85;
  [v85 setDouble4x4Value_];
  v90 = sub_23AA0D104();
  v148 = *MEMORY[0x277D77948];
  v91 = [v77 newPropertyWithName:v90 type:? role:?];

  v92 = v161.n128_u64[0];
  if (!v91)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v93 = swift_allocObject();
  v145 = xmmword_23AA11BB0;
  *(v93 + 16) = xmmword_23AA11BB0;
  v94 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v95 = sub_23AA0D104();
  v96 = [v94 initWithString_];

  *(v93 + 32) = v96;
  sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
  v150 = v93;
  v97 = sub_23AA0D2E4();
  v151 = v91;
  [v91 setTokenArray_];

  v98 = [v92 rootNode];
  LOBYTE(v96) = sub_23AA0D634();

  v152 = v62;
  if (v96)
  {
    v99 = 0;
    v100 = 0xE000000000000000;
    v101 = 0x277D77000;
    v102 = 0x277D77000;
  }

  else
  {
    v105 = [v77 path];
    v106 = [v105 stringValue];

    v101 = 0x277D77000uLL;
    v102 = 0x277D77000uLL;
    if (v106)
    {
      v99 = sub_23AA0D134();
      v100 = v107;
    }

    else
    {
      v99 = 0;
      v100 = 0xE000000000000000;
    }
  }

  *&v165.f64[0] = v99;
  *&v165.f64[1] = v100;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x6C65646F6DLL, 0xE500000000000000);

  v108 = v165;
  v109 = objc_allocWithZone(*(v102 + 2184));
  v110 = sub_23AA0D104();
  v111 = [v109 initWithString_];

  if (v111)
  {
    v112 = [v161.n128_u64[0] newNodeAtPath:v111 type:v149];
    if (v112)
    {
      v113 = v112;

      v114 = sub_23AA0D104();
      v115 = objc_allocWithZone(*(v101 + 2224));
      v116 = sub_23AA0D104();
      v117 = [v115 initWithString_];

      v118 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
      [v113 setMetadataWithKey:v114 value:v118];

      v119 = sub_23AA0D104();
      v120 = [v113 newPropertyWithName:v119 type:v148 role:0];

      if (v120)
      {
        v121 = swift_allocObject();
        *(v121 + 16) = v145;
        v122 = objc_allocWithZone(*(v101 + 2224));
        v123 = sub_23AA0D104();
        v124 = [v122 initWithString_];

        *(v121 + 32) = v124;
        v125 = sub_23AA0D2E4();
        [v120 setTokenArray_];

        v161 = sub_23A926908(v155);
        v160 = v126;
        v156 = *(v156.i64[0] + 16);
        v127 = sub_23AA0D104();
        v128 = [v113 newPropertyWithName:v127 type:v147 role:0];

        if (v128)
        {

          v129 = vdivq_f32(v156, v160);
          LODWORD(v130) = 0;
          HIDWORD(v130) = v129.i32[1];
          v131.i64[0] = 0;
          v131.i64[1] = v129.u32[2];
          v132 = vmulq_n_f32(v129.u32[0], 0.0 - v161.n128_f32[0]);
          v133 = vaddq_f32(vmlaq_f32(vmlaq_f32(v129.u32[0], 0, v130), 0, v131), 0);
          *&v134 = 0.0 * v129.f32[0];
          v135 = vaddq_f32(vmlaq_f32(vaddq_f32(v130, COERCE_UNSIGNED_INT(0.0 * v129.f32[0])), 0, v131), 0);
          v136 = vaddq_f32(vaddq_f32(v131, vmlaq_f32(v134, 0, v130)), 0);
          v165 = vcvtq_f64_f32(*v133.f32);
          v166 = vcvt_hight_f64_f32(v133);
          v137 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(v132, v130, 0.0 - v161.n128_f32[1]), v131, 0.0 - v161.n128_f32[2]), xmmword_23AA11AE0);
          v167 = vcvtq_f64_f32(*v135.f32);
          v168 = vcvt_hight_f64_f32(v135);
          v169 = vcvtq_f64_f32(*v136.f32);
          v170 = vcvt_hight_f64_f32(v136);
          v171 = vcvtq_f64_f32(*v137.f32);
          v172 = vcvt_hight_f64_f32(v137);
          [v128 setDouble4x4Value_];
          *&v165.f64[0] = 12078;
          v165.f64[1] = -1.15172193e164;
          v138 = v162;
          v139 = sub_23AA0BF04();
          MEMORY[0x23EE8FCA0](v139);

          v140 = sub_23AA0D104();

          [v113 addReferenceWithPath:v140 nodePath:0];

          v158(v138, v164);
          return;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v144 = v108;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v142 = v77;
    v77 = v153;
    v143 = v151;
  }

  else
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v141 = v108;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v142 = v152;
    v143 = v153;
    v111 = v151;
  }

LABEL_34:
  v158(v162, v164);
}

__n128 sub_23A926908(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = sub_23A9EE2D0(a1);
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v7 = objc_allocWithZone(MEMORY[0x277CD7AD0]);
    v8 = sub_23AA0BF14();
    v9 = [v7 initWithURL_];

    [v9 boundingBox];
    v22 = v10;
    [v9 boundingBox];
    v12 = vaddq_f32(v22, v11);
    v13.n128_u64[0] = vmul_f32(*v12.f32, 0x3F0000003F000000);
    v13.n128_u64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.5, v12, 2));
    v21 = v13;
    [v9 boundingBox];
    v19 = v14;
    [v9 boundingBox];
    v16 = vsubq_f32(v19, v15);
    v16.i32[3] = 0;
    v20 = v16;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    sub_23A9DAD68(a1, isUniquelyReferenced_nonNull_native, v21, v20);
    *(v2 + 40) = v23;
    swift_endAccess();

    return v21;
  }

  v21 = *(*(v4 + 56) + 32 * v5);

  return v21;
}

void sub_23A926A94(void *a1, void *a2, void *a3, uint64_t a4)
{
  v307 = a4;
  v312 = a1;
  v6 = type metadata accessor for CapturedRoom.Object(0);
  v299 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v296 = &v293 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v295 = &v293 - v9;
  MEMORY[0x28223BE20](v10);
  v301 = &v293 - v11;
  MEMORY[0x28223BE20](v12);
  v300 = &v293 - v13;
  v14 = type metadata accessor for CapturedRoom.Surface(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v293 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v314 = (&v293 - v19);
  MEMORY[0x28223BE20](v20);
  v317 = (&v293 - v21);
  MEMORY[0x28223BE20](v22);
  v320 = (&v293 - v23);
  MEMORY[0x28223BE20](v24);
  v316 = (&v293 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1F8, &qword_23AA12EC8);
  MEMORY[0x28223BE20](v26 - 8);
  v309 = &v293 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v308 = (&v293 - v29);
  v324 = sub_23AA0BFB4();
  v30 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v297 = &v293 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v293 - v33;
  MEMORY[0x28223BE20](v35);
  v303 = &v293 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v293 - v38;
  MEMORY[0x28223BE20](v40);
  v315 = &v293 - v41;
  MEMORY[0x28223BE20](v42);
  v318 = (&v293 - v43);
  MEMORY[0x28223BE20](v44);
  v319 = (&v293 - v45);
  MEMORY[0x28223BE20](v46);
  v311 = &v293 - v47;
  MEMORY[0x28223BE20](v48);
  v325 = &v293 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v293 - v51;
  v53 = sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v313 = a3;
  v54 = [a3 rootNode];
  v310 = v53;
  LOBYTE(v53) = sub_23AA0D634();

  v298 = a2;
  v302 = v17;
  if ((v53 & 1) != 0 || (v55 = [a2 path], v56 = objc_msgSend(v55, sel_stringValue), v55, !v56))
  {
    v57 = 0;
    v59 = 0xE000000000000000;
  }

  else
  {
    v57 = sub_23AA0D134();
    v59 = v58;
  }

  v328 = v57;
  v329 = v59;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x7072675F68637241, 0xE800000000000000);

  v61 = v328;
  v60 = v329;
  v62 = objc_allocWithZone(MEMORY[0x277D77888]);
  v63 = sub_23AA0D104();
  v64 = [v62 initWithString_];

  if (!v64)
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v148 = v61;
    v148[1] = v60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v304 = *MEMORY[0x277D77980];
  v65 = [v313 newNodeAtPath:v64 type:?];
  if (!v65)
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v149 = v61;
    v149[1] = v60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v66 = v65;
  v293 = v34;

  v67 = sub_23AA0D104();
  v68 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v69 = v66;
  v70 = sub_23AA0D104();
  v71 = [v68 initWithString_];

  v72 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
  v306 = v69;
  [(float32x4_t *)v69 setMetadataWithKey:v67 value:v72];

  sub_23AA0BF44();
  v73 = v312[3];
  v74 = v312[4];
  __swift_project_boxed_opaque_existential_1(v312, v73);
  v75 = (*(v74 + 24))(v73, v74);
  v76 = (v30 + 8);
  v329 = 0;
  v330 = 0;
  v328 = v75;
  v305 = v52;
  v322 = (v30 + 8);
  v294 = v39;
  while (1)
  {
    v77 = v309;
    sub_23A9166E4(v309);
    v78 = v308;
    sub_23A930208(v77, v308, &qword_27DFAF1F8, &qword_23AA12EC8);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF200, &qword_23AA12ED0);
    if ((*(*(v79 - 8) + 48))(v78, 1, v79) == 1)
    {

      v152 = [v313 rootNode];
      v153 = v298;
      v154 = sub_23AA0D634();

      if (v154)
      {
        v155 = 0;
        v156 = 0xE000000000000000;
      }

      else
      {
        v161 = [v153 path];
        v162 = [v161 stringValue];

        if (v162)
        {
          v155 = sub_23AA0D134();
          v156 = v163;
        }

        else
        {
          v155 = 0;
          v156 = 0xE000000000000000;
        }
      }

      v328 = v155;
      v329 = v156;

      MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

      MEMORY[0x23EE8FCA0](0x72675F726F6F6C46, 0xE900000000000070);

      v165 = v328;
      v164 = v329;
      v166 = objc_allocWithZone(MEMORY[0x277D77888]);
      v167 = sub_23AA0D104();
      v168 = [v166 initWithString_];

      if (v168)
      {
        v169 = [v313 newNodeAtPath:v168 type:v304];
        if (v169)
        {
          v117 = v169;

          v170 = sub_23AA0D104();
          v171 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v172 = sub_23AA0D104();
          v173 = [v171 initWithString_];

          v174 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
          [(float32x4_t *)v117 setMetadataWithKey:v170 value:v174];

          sub_23AA0BF44();
          v175 = v312[3];
          v176 = v312[4];
          __swift_project_boxed_opaque_existential_1(v312, v175);
          v177 = (*(v176 + 64))(v175, v176);
          v178 = v177;
          if (!*(v177 + 16))
          {
LABEL_69:

            v188 = [v313 rootNode];
            v116 = v298;
            v189 = sub_23AA0D634();

            if ((v189 & 1) == 0)
            {
              goto LABEL_74;
            }

            v190 = 0;
            v191 = 0xE000000000000000;
            v107 = v299;
            goto LABEL_80;
          }

          v179 = *(v177 + 16);
          v180 = 0;
          v181 = v303;
          while (v180 < *(v178 + 16))
          {
            v183 = v117;
            v184 = v302;
            sub_23A930548(v178 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v180, v302, type metadata accessor for CapturedRoom.Surface);
            v185 = v321;
            sub_23A929310(v184, 0, v181);
            v321 = v185;
            if (v185)
            {
              sub_23A92FED0(v184, type metadata accessor for CapturedRoom.Surface);

              v196 = *v76;
              v197 = v324;
              (*v76)(v294, v324);
              v196(v305, v197);
              return;
            }

            sub_23A92FED0(v184, type metadata accessor for CapturedRoom.Surface);
            sub_23A916D14();
            if (v186)
            {
              v182 = sub_23AA0D104();
            }

            else
            {
              v182 = 0;
            }

            v117 = v183;
            ++v180;
            [(float32x4_t *)v183 addReferenceWithPath:v182 nodePath:0];

            v181 = v303;
            (*v76)(v303, v324);
            if (v179 == v180)
            {
              goto LABEL_69;
            }
          }

          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          return;
        }

        type metadata accessor for USDModel.Error(0);
        sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
        swift_allocError();
        *v192 = v165;
        v192[1] = v164;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        type metadata accessor for USDModel.Error(0);
        sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
        swift_allocError();
        *v187 = v165;
        v187[1] = v164;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v168 = v306;
      }

      (*v76)(v305, v324);
      return;
    }

    v80 = *v78;
    sub_23A92FF30(v78 + *(v79 + 48), v316, type metadata accessor for CapturedRoom.Surface);
    v326 = 0x5F6C6C6157;
    v327 = 0xE500000000000000;
    v331 = v80;
    v81 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v81);

    MEMORY[0x23EE8FCA0](1886545759, 0xE400000000000000);
    v83 = v326;
    v82 = v327;
    v84 = [v313 rootNode];
    v85 = v306;
    v86 = sub_23AA0D634();

    if (v86)
    {
      v87 = 0;
      v88 = 0xE000000000000000;
      v89 = v305;
    }

    else
    {
      v90 = [(float32x4_t *)v85 path];
      v91 = [v90 stringValue];

      v89 = v305;
      if (v91)
      {
        v87 = sub_23AA0D134();
        v88 = v92;
      }

      else
      {
        v87 = 0;
        v88 = 0xE000000000000000;
      }
    }

    v326 = v87;
    v327 = v88;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v83, v82);

    v94 = v326;
    v93 = v327;
    v95 = objc_allocWithZone(MEMORY[0x277D77888]);
    v96 = sub_23AA0D104();
    v97 = [v95 initWithString_];

    if (!v97)
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v157 = v94;
      v157[1] = v93;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v97 = v306;
      goto LABEL_52;
    }

    v98 = [v313 newNodeAtPath:v97 type:v304];
    if (!v98)
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v158 = v94;
      v158[1] = v93;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_52:
      (*v322)(v89, v324);
LABEL_54:
      sub_23A92FED0(v316, type metadata accessor for CapturedRoom.Surface);
      return;
    }

    v99 = v98;

    v100 = sub_23AA0D104();
    v101 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v102 = sub_23AA0D104();
    v103 = [v101 initWithString_];

    v104 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
    [v99 setMetadataWithKey:v100 value:v104];

    v326 = 1819042135;
    v327 = 0xE400000000000000;
    v331 = v80;
    v105 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v105);

    sub_23AA0BF44();

    v106 = v321;
    sub_23A929310(v316, 1, v311);
    if (v106)
    {

      v159 = *v322;
      v160 = v324;
      (*v322)(v325, v324);

      v159(v89, v160);
      goto LABEL_54;
    }

    sub_23A916D14();
    v107 = v15;
    if (v108)
    {
      v109 = sub_23AA0D104();
    }

    else
    {
      v109 = 0;
    }

    [v99 addReferenceWithPath:v109 nodePath:0];

    v110 = v312[3];
    v111 = v312[4];
    __swift_project_boxed_opaque_existential_1(v312, v110);
    v112 = (*(v111 + 32))(v110, v111);
    MEMORY[0x28223BE20](v112);
    *(&v293 - 2) = v316;
    sub_23A9BD114(sub_23A9305E0, (&v293 - 4), v113);
    v115 = v114;
    v116 = 0;
    v117 = *(v114 + 16);
    v323 = v99;
    if (v117)
    {
      break;
    }

LABEL_27:

    v123 = v312[3];
    v124 = v312[4];
    __swift_project_boxed_opaque_existential_1(v312, v123);
    v125 = (*(v124 + 40))(v123, v124);
    MEMORY[0x28223BE20](v125);
    *(&v293 - 2) = v316;
    sub_23A9BD114(sub_23A9305E0, (&v293 - 4), v126);
    v128 = v127;
    v321 = *(v127 + 16);
    if (v321)
    {
      v129 = 0;
      v76 = v322;
      v117 = v318;
      v15 = v107;
      while (v129 < *(v128 + 16))
      {
        v107 = v15;
        v131 = v128 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v129;
        v132 = v317;
        sub_23A930548(v131, v317, type metadata accessor for CapturedRoom.Surface);
        sub_23A929310(v132, 1, v117);
        sub_23A92FED0(v132, type metadata accessor for CapturedRoom.Surface);
        sub_23A916D14();
        if (v133)
        {
          v130 = sub_23AA0D104();
          v76 = v322;
        }

        else
        {
          v130 = 0;
        }

        v15 = v107;
        ++v129;
        [v323 addReferenceWithPath:v130 nodePath:0];

        v117 = v318;
        (*v76)(v318, v324);
        if (v321 == v129)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v15 = v107;
LABEL_35:

    v134 = v312[3];
    v135 = v312[4];
    __swift_project_boxed_opaque_existential_1(v312, v134);
    v136 = (*(v135 + 48))(v134, v135);
    MEMORY[0x28223BE20](v136);
    *(&v293 - 2) = v316;
    sub_23A9BD114(sub_23A9305E0, (&v293 - 4), v137);
    v139 = v138;
    v321 = 0;
    v117 = *(v138 + 16);
    if (v117)
    {
      v140 = 0;
      v76 = v322;
      v141 = v315;
      while (v140 < *(v139 + 16))
      {
        v107 = v76;
        v143 = v314;
        sub_23A930548(v139 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v140, v314, type metadata accessor for CapturedRoom.Surface);
        v144 = v321;
        sub_23A929310(v143, 1, v141);
        if (v144)
        {
          sub_23A92FED0(v143, type metadata accessor for CapturedRoom.Surface);

          v150 = *v107;
          v151 = v324;
          (*v107)(v311, v324);
          v150(v325, v151);

          v150(v305, v151);
          sub_23A92FED0(v316, type metadata accessor for CapturedRoom.Surface);
          return;
        }

        sub_23A92FED0(v143, type metadata accessor for CapturedRoom.Surface);
        sub_23A916D14();
        v321 = 0;
        if (v145)
        {
          v142 = sub_23AA0D104();
          v76 = v322;
        }

        else
        {
          v142 = 0;
          v76 = v107;
        }

        ++v140;
        [v323 addReferenceWithPath:v142 nodePath:0];

        v141 = v315;
        (*v76)(v315, v324);
        if (v117 == v140)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_78;
    }

    v76 = v322;
LABEL_44:

    v146 = *v76;
    v147 = v324;
    (*v76)(v311, v324);
    v146(v325, v147);
    sub_23A92FED0(v316, type metadata accessor for CapturedRoom.Surface);
  }

  v118 = 0;
  v76 = v322;
  v119 = v319;
  while (v118 < *(v115 + 16))
  {
    v121 = v320;
    sub_23A930548(v115 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + v107[9] * v118, v320, type metadata accessor for CapturedRoom.Surface);
    sub_23A929310(v121, 1, v119);
    sub_23A92FED0(v121, type metadata accessor for CapturedRoom.Surface);
    sub_23A916D14();
    if (v122)
    {
      v120 = sub_23AA0D104();
      v76 = v322;
    }

    else
    {
      v120 = 0;
    }

    ++v118;
    [v323 addReferenceWithPath:v120 nodePath:0];

    v119 = v319;
    (*v76)(v319, v324);
    if (v117 == v118)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_74:
  v193 = [v116 path];
  v194 = [v193 stringValue];

  v107 = v299;
  if (v194)
  {
    v190 = sub_23AA0D134();
    v191 = v195;

    goto LABEL_80;
  }

LABEL_79:
  v190 = 0;
  v191 = 0xE000000000000000;
LABEL_80:
  v328 = v190;
  v329 = v191;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](0x675F7463656A624FLL, 0xEA00000000007072);

  v199 = v328;
  v198 = v329;
  v200 = objc_allocWithZone(MEMORY[0x277D77888]);
  v201 = sub_23AA0D104();
  v202 = [v200 initWithString_];

  if (v202)
  {
    v203 = [v313 newNodeAtPath:v202 type:v304];
    if (v203)
    {
      v204 = v203;
      v314 = v117;

      v205 = sub_23AA0D104();
      v206 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v207 = sub_23AA0D104();
      v208 = [v206 initWithString_];

      v209 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
      [(float32x4_t *)v204 setMetadataWithKey:v205 value:v209];

      v210 = v312[3];
      v211 = v312[4];
      __swift_project_boxed_opaque_existential_1(v312, v210);
      v212 = (*(v211 + 56))(v210, v211);
      v213 = *(v212 + 16);
      v319 = v204;
      if (v213)
      {
        v328 = MEMORY[0x277D84F90];
        sub_23A97609C(0, v213, 0);
        v214 = v328;
        v215 = v212 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
        v216 = v107[9];
        do
        {
          v217 = v300;
          sub_23A930548(v215, v300, type metadata accessor for CapturedRoom.Object);
          v218 = *v217;
          sub_23A92FED0(v217, type metadata accessor for CapturedRoom.Object);
          v328 = v214;
          v220 = *(v214 + 16);
          v219 = *(v214 + 24);
          if (v220 >= v219 >> 1)
          {
            sub_23A97609C((v219 > 1), v220 + 1, 1);
            v214 = v328;
          }

          *(v214 + 16) = v220 + 1;
          *(v214 + v220 + 32) = v218;
          v215 += v216;
          --v213;
        }

        while (v213);

        v76 = v322;
        v204 = v319;
      }

      else
      {

        v214 = MEMORY[0x277D84F90];
      }

      v226 = sub_23A9F506C(v214);

      v227 = 0;
      v228 = (v226 + 56);
      v229 = 1 << *(v226 + 32);
      v230 = -1;
      if (v229 < 64)
      {
        v230 = ~(-1 << v229);
      }

      v231 = v230 & *(v226 + 56);
      v232 = (v229 + 63) >> 6;
      v233 = v305;
      v315 = v232;
      v316 = (v226 + 56);
      v317 = v226;
      while (v231)
      {
LABEL_100:
        v235 = __clz(__rbit64(v231));
        v231 &= v231 - 1;
        LODWORD(v323) = *(*(v226 + 48) + (v235 | (v227 << 6)));
        if (v323 != 15)
        {
          v318 = v231;
          v236 = v312[3];
          v237 = v312[4];
          __swift_project_boxed_opaque_existential_1(v312, v236);
          v238 = (*(v237 + 56))(v236, v237);
          v320 = *(v238 + 16);
          if (v320)
          {
            v239 = 0;
            v325 = MEMORY[0x277D84F90];
            v233 = v305;
            v240 = v299;
            v241 = v295;
            while (v239 < *(v238 + 16))
            {
              v242 = (*(v240 + 80) + 32) & ~*(v240 + 80);
              v243 = v240[9];
              v244 = v301;
              sub_23A930548(v238 + v242 + v243 * v239, v301, type metadata accessor for CapturedRoom.Object);
              if (*v244 == v323)
              {
                sub_23A92FF30(v244, v241, type metadata accessor for CapturedRoom.Object);
                v245 = v325;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v247 = v245;
                v328 = v245;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_23A9760CC(0, *(v245 + 2) + 1, 1);
                  v241 = v295;
                  v247 = v328;
                }

                v249 = *(v247 + 2);
                v248 = *(v247 + 3);
                if (v249 >= v248 >> 1)
                {
                  sub_23A9760CC((v248 > 1), v249 + 1, 1);
                  v241 = v295;
                  v247 = v328;
                }

                *(v247 + 2) = v249 + 1;
                v325 = v247;
                sub_23A92FF30(v241, &v247[v242 + v249 * v243], type metadata accessor for CapturedRoom.Object);
                v233 = v305;
                v240 = v299;
              }

              else
              {
                sub_23A92FED0(v244, type metadata accessor for CapturedRoom.Object);
              }

              if (v320 == ++v239)
              {
                goto LABEL_113;
              }
            }

            goto LABEL_139;
          }

          v325 = MEMORY[0x277D84F90];
          v233 = v305;
          v240 = v299;
LABEL_113:

          if (*(v325 + 2))
          {
            LOBYTE(v328) = v323;
            v328 = sub_23AA0D1A4();
            v329 = v250;
            sub_23A92F104();
            v251 = sub_23AA0D6A4();
            v253 = v252;

            v328 = v251;
            v329 = v253;

            MEMORY[0x23EE8FCA0](1886545759, 0xE400000000000000);
            v254 = v328;
            v255 = v329;
            sub_23AA0BF44();

            v256 = [v313 rootNode];
            v204 = v319;
            v257 = sub_23AA0D634();

            if ((v257 & 1) != 0 || (v258 = -[float32x4_t path](v204, sel_path), v259 = [v258 stringValue], v258, !v259))
            {
              v260 = 0;
              v262 = 0xE000000000000000;
            }

            else
            {
              v260 = sub_23AA0D134();
              v262 = v261;
            }

            v328 = v260;
            v329 = v262;

            MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

            MEMORY[0x23EE8FCA0](v254, v255);

            v263 = v328;
            v264 = v329;
            v265 = objc_allocWithZone(MEMORY[0x277D77888]);
            v266 = sub_23AA0D104();
            v267 = [v265 initWithString_];

            if (!v267)
            {

              type metadata accessor for USDModel.Error(0);
              sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
              swift_allocError();
              *v288 = v263;
              v288[1] = v264;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              v289 = v314;
LABEL_137:

              v291 = *v322;
              v292 = v324;
              (*v322)(v293, v324);
              v291(v294, v292);
              v291(v305, v292);
              return;
            }

            v268 = [v313 newNodeAtPath:v267 type:v304];
            if (!v268)
            {

              type metadata accessor for USDModel.Error(0);
              sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
              swift_allocError();
              *v290 = v263;
              v290[1] = v264;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              v289 = v204;
              v204 = v267;
              goto LABEL_137;
            }

            v269 = v268;

            v270 = sub_23AA0D104();
            v271 = objc_allocWithZone(MEMORY[0x277D778B0]);
            v272 = sub_23AA0D104();
            v273 = [v271 initWithString_];

            v274 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
            [v269 setMetadataWithKey:v270 value:v274];

            v275 = v325;
            v276 = *(v325 + 2);
            if (v276)
            {
              v277 = 0;
              v278 = v297;
              while (v277 < *(v275 + 2))
              {
                v281 = v296;
                sub_23A930548(&v275[((*(v240 + 80) + 32) & ~*(v240 + 80)) + v240[9] * v277], v296, type metadata accessor for CapturedRoom.Object);
                v282 = v321;
                sub_23A92AB00(v281, v278);
                v321 = v282;
                if (v282)
                {
                  sub_23A92FED0(v281, type metadata accessor for CapturedRoom.Object);

                  v286 = *v322;
                  v287 = v324;
                  (*v322)(v293, v324);
                  v286(v294, v287);
                  v286(v305, v287);
                  return;
                }

                sub_23A92FED0(v281, type metadata accessor for CapturedRoom.Object);
                sub_23A916D14();
                if (v283)
                {
                  v279 = sub_23AA0D104();
                }

                else
                {
                  v279 = 0;
                }

                ++v277;
                [v269 addReferenceWithPath:v279 nodePath:0];

                v280 = *v322;
                v278 = v297;
                (*v322)(v297, v324);
                v275 = v325;
                if (v276 == v277)
                {
                  v204 = v319;
                  v280(v293, v324);
                  goto LABEL_131;
                }
              }

              goto LABEL_141;
            }

            (*v322)(v293, v324);
LABEL_131:

            v233 = v305;
            v76 = v322;
          }

          else
          {

            v76 = v322;
            v204 = v319;
          }

          v232 = v315;
          v228 = v316;
          v226 = v317;
          v231 = v318;
        }
      }

      while (1)
      {
        v234 = v227 + 1;
        if (__OFADD__(v227, 1))
        {
          goto LABEL_140;
        }

        if (v234 >= v232)
        {

          v284 = *v76;
          v285 = v324;
          (*v76)(v294, v324);
          v284(v233, v285);

          return;
        }

        v231 = v228->u64[v234];
        ++v227;
        if (v231)
        {
          v227 = v234;
          goto LABEL_100;
        }
      }
    }

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v223 = v199;
    v223[1] = v198;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v222 = v117;
    v117 = v202;
  }

  else
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v221 = v199;
    v221[1] = v198;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v222 = v306;
  }

  v224 = *v76;
  v225 = v324;
  (*v76)(v294, v324);
  v224(v305, v225);
}

void sub_23A929310(float32x4_t *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v194 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v9 - 8);
  v195 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v184 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v14 - 8);
  v198 = &v184 - v15;
  v197 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v199 = (&v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for CapturedRoom.Surface(0);
  v18 = *(v17 + 44);
  v19 = *(v3 + 16);
  if (!*(v19 + 16))
  {
    goto LABEL_6;
  }

  v20 = v17;

  v21 = sub_23A9EDD28(a1 + v18);
  if ((v22 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    v28 = v27;
    *v27 = sub_23AA0C074();
    v28[1] = v29;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v192 = a3;
  v23 = (*(v19 + 56) + 16 * v21);
  v24 = *v23;
  v193 = v23[1];

  v26 = a1->i8[0] - 2;
  v189 = v13;
  if (v26 >= 4u)
  {
    LODWORD(v25) = 973279855;
  }

  else
  {
    LODWORD(v25) = dword_23AA12E80[v26];
  }

  v190 = v25;
  *&v200.f64[0] = v24;
  v191 = v24;
  v30 = v193;
  *&v200.f64[1] = v193;

  MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
  v31 = *(v6 + 24);
  v32 = *(v6 + 32);

  MEMORY[0x23EE8FCA0](v31, v32);

  v33 = v192;
  sub_23AA0BF44();

  v34 = sub_23A92D2EC(v33);
  if (v5)
  {
    v35 = sub_23AA0BFB4();
    (*(*(v35 - 8) + 8))(v33, v35);

    return;
  }

  v36 = v34;
  v188 = a1;
  v37 = sub_23AA0BF04();
  v39 = v38;
  v40 = [v36 rootNode];
  v41 = sub_23A92EC38(v191, v30, v37, v39, v40, v36);
  v185 = 0;
  v187 = v36;
  v42 = v41;

  v43 = sub_23AA0D104();
  v44 = v188;
  sub_23AA0C074();
  v45 = objc_allocWithZone(MEMORY[0x277D77878]);
  v46 = sub_23AA0D104();

  v47 = [v45 initWithString_];

  [v42 setCustomMetadata:v43 value:v47];
  v48 = sub_23AA0D104();
  LOBYTE(v200.f64[0]) = v44->n128_u8[0];
  *&v200.f64[0] = sub_23AA0D1A4();
  v200.f64[1] = v49;
  sub_23A92F104();
  sub_23AA0D6A4();

  v50 = objc_allocWithZone(MEMORY[0x277D77878]);
  v51 = sub_23AA0D104();

  v52 = [v50 initWithString_];

  [v42 setCustomMetadata:v48 value:v52];
  v53 = v44->n128_u8[0];
  v54 = COERCE_FLOAT(v44[1].n128_u64[1]);
  v184 = v44[1];
  v55 = vmuls_lane_f32(0.5, v184, 2);
  if (v54 <= 0.0)
  {
    v56 = *&v190;
  }

  else
  {
    v56 = v55;
  }

  if (v54 <= 0.0)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = v55;
  }

  v58 = v198;
  sub_23A8D5194(v44 + *(v20 + 52), v198, &qword_27DFAEB38, &unk_23AA11B60);
  v59 = (*(v196 + 48))(v58, 1, v197);
  v186 = v42;
  if (v59 != 1)
  {
    sub_23A92FF30(v58, v199, type metadata accessor for CapturedRoom.Surface.Curve);
    sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
    v71 = [v187 rootNode];
    v72 = sub_23AA0D634();

    if (v72)
    {
      v73 = 0;
      v74 = 0xE000000000000000;
      v75 = v193;
      v76 = v191;
      v77 = &off_278B65000;
    }

    else
    {
      v85 = [v42 path];
      v86 = [v85 stringValue];

      v75 = v193;
      v77 = &off_278B65000;
      if (v86)
      {
        v73 = sub_23AA0D134();
        v74 = v87;
      }

      else
      {
        v73 = 0;
        v74 = 0xE000000000000000;
      }

      v76 = v191;
    }

    *&v200.f64[0] = v73;
    *&v200.f64[1] = v74;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v76, v75);

    v116 = v200;
    v117 = objc_allocWithZone(MEMORY[0x277D77888]);
    v118 = sub_23AA0D104();
    v119 = [v117 v77[469]];

    if (v119)
    {
      v120 = v187;
      v121 = [v187 newNodeAtPath:v119 type:*MEMORY[0x277D77968]];
      if (v121)
      {
        v122 = v121;

        v123 = v122;
        v124 = sub_23AA0D104();
        v125 = *MEMORY[0x277D77948];
        v198 = v123;
        v126 = [v123 newPropertyWithName:v124 type:v125 role:0];

        if (v126)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          v127 = swift_allocObject();
          *(v127 + 16) = xmmword_23AA11BB0;
          v128 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v129 = sub_23AA0D104();
          v130 = [v128 v77[469]];

          *(v127 + 32) = v130;
          sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
          v131 = sub_23AA0D2E4();

          [v126 setTokenArray_];

          v132 = v184.u32[1];
          v133 = type metadata accessor for ScanItemStrut(0);
          v134 = *(*(v133 - 8) + 56);
          v135 = v189;
          v134(v189, 1, 1, v133);
          v136 = v195;
          v137 = v134(v195, 1, 1, v133);
          v137.n128_u32[0] = v132;
          v138 = v199;
          v139.n128_f32[0] = v57;
          v140.n128_f32[0] = v56;
          sub_23A8FA5A0(v199, MEMORY[0x277D84F90], v137, v139, v140, v135, v136, 0x3C8EFA35uLL, 1);
          v142 = v141;
          sub_23A8D50D0(v136, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D50D0(v135, &unk_27DFAF020, &unk_23AA12300);
          v111 = v188;
          v112 = v198;
          sub_23A92F158(v198, v142, v188[2], v188[3], v188[4], v188[5]);

          sub_23A92FED0(v138, type metadata accessor for CapturedRoom.Surface.Curve);
          goto LABEL_57;
        }

        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v144 = v116;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v143 = v116;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v119 = v187;
      v120 = v186;
    }

    sub_23A92FED0(v199, type metadata accessor for CapturedRoom.Surface.Curve);
    goto LABEL_65;
  }

  sub_23A8D50D0(v58, &qword_27DFAEB38, &unk_23AA11B60);
  v60 = *(v44->n128_i64 + *(v20 + 60));
  v61 = *(v60 + 16);
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  if (v61 && v53 == 5)
  {
    v62 = [v187 rootNode];
    v63 = v186;
    v64 = sub_23AA0D634();

    v65 = v193;
    if ((v64 & 1) != 0 || (v66 = [v63 path], v67 = objc_msgSend(v66, sel_stringValue), v66, !v67))
    {
      v68 = 0;
      v70 = 0xE000000000000000;
    }

    else
    {
      v68 = sub_23AA0D134();
      v70 = v69;
    }

    v88 = v191;
    *&v200.f64[0] = v68;
    *&v200.f64[1] = v70;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](v88, v65);

    v89 = v200;
    v90 = objc_allocWithZone(MEMORY[0x277D77888]);
    v91 = sub_23AA0D104();
    v92 = [v90 initWithString_];

    if (v92)
    {
      v93 = v187;
      v94 = [v187 newNodeAtPath:v92 type:*MEMORY[0x277D77968]];
      if (v94)
      {
        v95 = v94;

        v96 = v95;
        v97 = sub_23AA0D104();
        v98 = *MEMORY[0x277D77948];
        v198 = v96;
        v99 = [v96 newPropertyWithName:v97 type:v98 role:0];

        if (v99)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_23AA11BB0;
          v101 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v102 = sub_23AA0D104();
          v103 = [v101 initWithString_];

          *(v100 + 32) = v103;
          sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
          v104 = sub_23AA0D2E4();

          [v99 setTokenArray_];

          type metadata accessor for RoomCaptureGeometryManager();
          swift_initStaticObject();
          v105 = type metadata accessor for ScanItemStrut(0);
          v106 = *(*(v105 - 8) + 56);
          v107 = v189;
          v106(v189, 1, 1, v105);
          v108 = v195;
          v106(v195, 1, 1, v105);
          sub_23A8F0290(v60, MEMORY[0x277D84F90], 0, v194 & 1, v107, v108, v184, v57, v56, 0.0);
          v110 = v109;
          sub_23A8D50D0(v108, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D50D0(v107, &unk_27DFAF020, &unk_23AA12300);
          v111 = v188;
          v112 = v198;
          sub_23A92F158(v198, v110, v188[2], v188[3], v188[4], v188[5]);

          goto LABEL_57;
        }

        goto LABEL_68;
      }

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v146 = v89;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v145 = v89;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v93 = v187;
      v92 = v186;
    }

LABEL_65:
    v183 = sub_23AA0BFB4();
    (*(*(v183 - 8) + 8))(v192, v183);
    return;
  }

  v78 = [v187 rootNode];
  v79 = v186;
  v80 = sub_23AA0D634();

  v81 = v193;
  if (v80)
  {
    v82 = 0;
    v83 = 0xE000000000000000;
    v84 = &off_278B65000;
  }

  else
  {
    v113 = [v79 path];
    v114 = [v113 stringValue];

    v84 = &off_278B65000;
    if (v114)
    {
      v82 = sub_23AA0D134();
      v83 = v115;
    }

    else
    {
      v82 = 0;
      v83 = 0xE000000000000000;
    }
  }

  *&v200.f64[0] = v82;
  *&v200.f64[1] = v83;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v191, v81);

  v147 = v200;
  v148 = objc_allocWithZone(MEMORY[0x277D77888]);
  v149 = sub_23AA0D104();
  v150 = [v148 v84[469]];

  if (!v150)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v181 = v147;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v150 = v186;
LABEL_64:

    goto LABEL_65;
  }

  v151 = [v187 newNodeAtPath:v150 type:*MEMORY[0x277D77958]];
  if (!v151)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v182 = v147;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_64;
  }

  v152 = v151;

  v153 = v152;
  v154 = sub_23AA0D104();
  v155 = [v153 newPropertyWithName:v154 type:*MEMORY[0x277D77948] role:0];

  if (!v155)
  {
    goto LABEL_67;
  }

  v199 = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_23AA11BB0;
  v157 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v158 = sub_23AA0D104();
  v159 = [v157 v84[469]];

  *(v156 + 32) = v159;
  v208 = v156;
  v160 = sub_23AA0D104();
  v161 = [v153 newPropertyWithName:v160 type:*MEMORY[0x277D778D0] role:0];

  if (!v161)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  [v161 setDoubleValue_];
  v162 = sub_23AA0D104();
  v163 = v153;
  v164 = [v153 byte_278B653D9];

  if (!v164)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  v165 = v184;
  v165.i32[3] = 0;
  v166 = vdupq_lane_s32(*&v190, 0);
  v166.i32[3] = 0;
  v167 = vmaxnmq_f32(v165, v166);
  v200 = vcvtq_f64_f32(*v167.f32);
  v201 = COERCE_UNSIGNED_INT64(v167.f32[2]);
  [v164 setDouble3Value_];
  v168 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v169 = sub_23AA0D104();
  [v168 v84[469]];

  MEMORY[0x23EE8FD70]();
  if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23AA0D314();
  }

  sub_23AA0D334();
  v170 = sub_23AA0D104();
  v171 = [v163 newPropertyWithName:v170 type:*MEMORY[0x277D778E0] role:0];

  if (!v171)
  {
    goto LABEL_71;
  }

  v111 = v188;
  v172 = v188[2];
  v173 = v188[3];
  v174 = v188[4];
  v175 = v188[5];
  v200 = vcvtq_f64_f32(*v172.f32);
  v201 = vcvt_hight_f64_f32(v172);
  v202 = vcvtq_f64_f32(*v173.f32);
  v203 = vcvt_hight_f64_f32(v173);
  v204 = vcvtq_f64_f32(*v174.f32);
  v205 = vcvt_hight_f64_f32(v174);
  v206 = vcvtq_f64_f32(*v175.f32);
  v207 = vcvt_hight_f64_f32(v175);
  [v171 setDouble4x4Value_];
  sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
  v176 = sub_23AA0D2E4();

  v177 = v199;
  [(float32x2_t *)v199 setTokenArray:v176];

  v112 = v163;
LABEL_57:
  v178 = v111->u8[0];
  v179 = v187;
  if (v178 == 5 || v178 == 2)
  {
    v180 = 0.00781250185;
  }

  else
  {
    v180 = 0.000000743866278;
  }

  sub_23A92F638(v112, v191, v193, v187, v180, 1.0);

  [v179 save];
}

void sub_23A92AB00(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v8 = *(type metadata accessor for CapturedRoom.Object(0) + 32);
  v9 = *(v2 + 16);
  if (!*(v9 + 16))
  {
    goto LABEL_6;
  }

  v10 = sub_23A9EDD28(a1 + v8);
  if ((v11 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    v20 = v19;
    *v19 = sub_23AA0C074();
    v20[1] = v21;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v12 = (*(v9 + 56) + 16 * v10);
  v13 = *v12;
  v14 = v12[1];

  *&v80.f64[0] = v13;
  *&v80.f64[1] = v14;

  MEMORY[0x23EE8FCA0](46, 0xE100000000000000);
  v15 = *(v5 + 24);
  v16 = *(v5 + 32);

  MEMORY[0x23EE8FCA0](v15, v16);

  sub_23AA0BF44();

  v17 = sub_23A92D2EC(a2);
  if (v4)
  {
    v18 = sub_23AA0BFB4();
    (*(*(v18 - 8) + 8))(a2, v18);

    return;
  }

  v22 = v17;
  v88 = a2;
  v23 = v14;
  v24 = sub_23AA0BF04();
  v26 = v25;
  v27 = [v22 rootNode];
  v77 = v13;
  v78 = v23;
  v28 = sub_23A92EC38(v13, v23, v24, v26, v27, v22);

  v29 = sub_23AA0D104();
  sub_23AA0C074();
  v79 = v22;
  v30 = objc_allocWithZone(MEMORY[0x277D77878]);
  v31 = sub_23AA0D104();

  v32 = [v30 initWithString_];

  [v28 setCustomMetadata:v29 value:v32];
  v33 = sub_23AA0D104();
  *&v80.f64[0] = sub_23AA0D1A4();
  v80.f64[1] = v34;
  sub_23A92F104();
  sub_23AA0D6A4();

  v35 = objc_allocWithZone(MEMORY[0x277D77878]);
  v36 = sub_23AA0D104();

  v37 = [v35 initWithString_];

  [v28 setCustomMetadata:v33 value:v37];
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v38 = [v79 rootNode];
  LOBYTE(v36) = sub_23AA0D634();

  v76 = v28;
  if (v36)
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    v41 = v88;
  }

  else
  {
    v42 = [v28 path];
    v43 = [v42 stringValue];

    v41 = v88;
    if (v43)
    {
      v39 = sub_23AA0D134();
      v40 = v44;
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }
  }

  *&v80.f64[0] = v39;
  *&v80.f64[1] = v40;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v77, v23);

  v45 = objc_allocWithZone(MEMORY[0x277D77888]);
  v46 = sub_23AA0D104();
  v47 = [v45 initWithString_];

  if (!v47)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v72 = v80;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v47 = v79;
    v48 = v28;
LABEL_21:

    v74 = sub_23AA0BFB4();
    (*(*(v74 - 8) + 8))(v41, v74);
    return;
  }

  v48 = v79;
  v88 = [v79 newNodeAtPath:v47 type:*MEMORY[0x277D77958]];
  if (!v88)
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v73 = v80;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_21;
  }

  v49 = sub_23AA0D104();
  v50 = v88;
  v51 = [v88 newPropertyWithName:v49 type:*MEMORY[0x277D778D0] role:0];

  if (!v51)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v51 setDoubleValue_];
  v52 = sub_23AA0D104();
  v53 = [v88 newPropertyWithName:v52 type:*MEMORY[0x277D778D8] role:0];

  if (!v53)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *&v54 = COERCE_FLOAT(*(a1 + 24));
  v80 = vcvtq_f64_f32(*(a1 + 16));
  v81 = v54;
  [v53 setDouble3Value_];
  v55 = sub_23AA0D104();
  v56 = [v50 newPropertyWithName:v55 type:*MEMORY[0x277D778E0] role:0];

  if (v56)
  {
    v75 = v51;
    v57 = *(a1 + 32);
    v58 = *(a1 + 48);
    v59 = *(a1 + 64);
    v60 = *(a1 + 80);
    v80 = vcvtq_f64_f32(*v57.f32);
    v81 = vcvt_hight_f64_f32(v57);
    v82 = vcvtq_f64_f32(*v58.f32);
    v83 = vcvt_hight_f64_f32(v58);
    v84 = vcvtq_f64_f32(*v59.f32);
    v85 = vcvt_hight_f64_f32(v59);
    v86 = vcvtq_f64_f32(*v60.f32);
    v87 = vcvt_hight_f64_f32(v60);
    [v56 setDouble4x4Value_];
    v61 = sub_23AA0D104();
    v62 = [v50 newPropertyWithName:v61 type:*MEMORY[0x277D77948] role:0];

    if (v62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_23AA12E60;
      v64 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v65 = sub_23AA0D104();
      v66 = [v64 byte_278B65578];

      *(v63 + 32) = v66;
      v67 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v68 = sub_23AA0D104();
      v69 = [v67 byte_278B65578];

      *(v63 + 40) = v69;
      sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
      v70 = sub_23AA0D2E4();

      [v62 setTokenArray_];

      v71 = v88;
      sub_23A92F638(v88, v77, v78, v79, 0.00781250185, 1.0);

      [v79 save];

      return;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_23A92B52C()
{

  return swift_deallocClassInstance();
}

char *sub_23A92B598(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_23A975EA4(result, v5, 0);
  }

  return result;
}

uint64_t type metadata accessor for USDModel.Error(uint64_t a1)
{
  result = qword_27DFAF248;
  if (!qword_27DFAF248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A92B65C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_23AA0D1F4();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

void *sub_23A92B6F8(void *a1)
{
  v264 = type metadata accessor for CapturedRoom.Object(0);
  v266 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v265 = &v262 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23AA0C0E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v279 = &v262 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v280 = &v262 - v7;
  MEMORY[0x28223BE20](v8);
  v281 = &v262 - v9;
  MEMORY[0x28223BE20](v10);
  v282 = &v262 - v11;
  MEMORY[0x28223BE20](v12);
  v284 = (&v262 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF200, &qword_23AA12ED0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v278 = (&v262 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1F8, &qword_23AA12EC8);
  MEMORY[0x28223BE20](v17 - 8);
  v273 = &v262 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v267 = (&v262 - v20);
  MEMORY[0x28223BE20](v21);
  v274 = &v262 - v22;
  MEMORY[0x28223BE20](v23);
  v268 = (&v262 - v24);
  MEMORY[0x28223BE20](v25);
  v275 = &v262 - v26;
  MEMORY[0x28223BE20](v27);
  v269 = (&v262 - v28);
  MEMORY[0x28223BE20](v29);
  v276 = &v262 - v30;
  MEMORY[0x28223BE20](v31);
  v270 = (&v262 - v32);
  MEMORY[0x28223BE20](v33);
  v271 = &v262 - v34;
  MEMORY[0x28223BE20](v35);
  v272 = (&v262 - v36);
  v37 = a1[3];
  v38 = a1[4];
  v263 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = v37;
  v40 = v3;
  v41 = (*(v38 + 24))(v39, v38);
  v42 = 0;
  v43 = *(v41 + 16);
  v288 = (v15 + 48);
  v289 = (v15 + 56);
  v290 = (v4 + 16);
  v277 = v4;
  v285 = (v4 + 8);
  v44 = v14;
  v45 = MEMORY[0x277D84F98];
  v286 = v14;
  v287 = v3;
  while (1)
  {
    if (v42 == v43)
    {
      v47 = 1;
      v48 = v43;
      v49 = v271;
    }

    else
    {
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_121;
      }

      if (v42 >= *(v41 + 16))
      {
        goto LABEL_122;
      }

      v50 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
      v51 = v41 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v42;
      v52 = *(v44 + 48);
      v53 = v278;
      *v278 = v42;
      sub_23A930548(v51, v53 + v52, type metadata accessor for CapturedRoom.Surface);
      v54 = v53;
      v49 = v271;
      sub_23A930208(v54, v271, &qword_27DFAF200, &qword_23AA12ED0);
      v47 = 0;
      v48 = (v42 + 1);
    }

    v55 = *v289;
    (*v289)(v49, v47, 1, v44);
    v56 = v49;
    v57 = v272;
    sub_23A930208(v56, v272, &qword_27DFAF1F8, &qword_23AA12EC8);
    v58 = *v288;
    if ((*v288)(v57, 1, v44) == 1)
    {
      v284 = v58;

      v81 = v263[3];
      v82 = v263[4];
      __swift_project_boxed_opaque_existential_1(v263, v81);
      v83 = (*(v82 + 32))(v81, v82);
      v84 = 0;
      v85 = *(v83 + 16);
      for (i = v55; ; v55 = i)
      {
        v87 = v276;
        if (v84 == v85)
        {
          v88 = 1;
          v84 = v85;
        }

        else
        {
          if ((v84 & 0x8000000000000000) != 0)
          {
            goto LABEL_124;
          }

          if (v84 >= *(v83 + 16))
          {
            goto LABEL_125;
          }

          v89 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
          v90 = v83 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v84;
          v91 = *(v44 + 48);
          v92 = v278;
          *v278 = v84;
          sub_23A930548(v90, v92 + v91, type metadata accessor for CapturedRoom.Surface);
          v93 = v92;
          v87 = v276;
          sub_23A930208(v93, v276, &qword_27DFAF200, &qword_23AA12ED0);
          v88 = 0;
          ++v84;
        }

        v55(v87, v88, 1, v44);
        v94 = v270;
        sub_23A930208(v87, v270, &qword_27DFAF1F8, &qword_23AA12EC8);
        if (v284(v94, 1, v44) == 1)
        {
          break;
        }

        v95 = *v94;
        v96 = v94 + *(v44 + 48);
        v97 = type metadata accessor for CapturedRoom.Surface(0);
        v98 = *v290;
        v99 = v282;
        (*v290)(v282, v96 + *(v97 + 44), v40);
        sub_23A92FED0(v96, type metadata accessor for CapturedRoom.Surface);
        v293 = 1919905604;
        v294 = 0xE400000000000000;
        v291 = v95;
        v100 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v100);

        v102 = v293;
        v101 = v294;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v293 = v45;
        v104 = sub_23A9EDD28(v99);
        v106 = v45[2];
        v107 = (v105 & 1) == 0;
        v79 = __OFADD__(v106, v107);
        v108 = v106 + v107;
        if (v79)
        {
          goto LABEL_116;
        }

        v109 = v105;
        if (v45[3] >= v108)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v115 = v104;
            sub_23A90E648();
            v104 = v115;
          }
        }

        else
        {
          sub_23A908EB0(v108, isUniquelyReferenced_nonNull_native);
          v104 = sub_23A9EDD28(v282);
          if ((v109 & 1) != (v110 & 1))
          {
            goto LABEL_139;
          }
        }

        v40 = v287;
        v45 = v293;
        if (v109)
        {
          v86 = (*(v293 + 56) + 16 * v104);
          *v86 = v102;
          v86[1] = v101;
        }

        else
        {
          *(v293 + 8 * (v104 >> 6) + 64) |= 1 << v104;
          v111 = v104;
          v98(v45[6] + *(v277 + 72) * v104, v282, v40);
          v112 = (v45[7] + 16 * v111);
          *v112 = v102;
          v112[1] = v101;
          v113 = v45[2];
          v79 = __OFADD__(v113, 1);
          v114 = v113 + 1;
          if (v79)
          {
            goto LABEL_126;
          }

          v45[2] = v114;
        }

        (*v285)(v282, v40);
        v44 = v286;
      }

      v116 = v263[3];
      v117 = v263[4];
      __swift_project_boxed_opaque_existential_1(v263, v116);
      v118 = (*(v117 + 40))(v116, v117);
      v119 = 0;
      v120 = *(v118 + 16);
      while (1)
      {
        v122 = v284;
        v123 = v275;
        if (v119 == v120)
        {
          v124 = 1;
          v119 = v120;
        }

        else
        {
          if ((v119 & 0x8000000000000000) != 0)
          {
            goto LABEL_127;
          }

          if (v119 >= *(v118 + 16))
          {
            goto LABEL_128;
          }

          v125 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
          v126 = v118 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v119;
          v127 = *(v44 + 48);
          v128 = v278;
          *v278 = v119;
          sub_23A930548(v126, v128 + v127, type metadata accessor for CapturedRoom.Surface);
          v129 = v128;
          v123 = v275;
          sub_23A930208(v129, v275, &qword_27DFAF200, &qword_23AA12ED0);
          v124 = 0;
          ++v119;
        }

        v55(v123, v124, 1, v44);
        v130 = v269;
        sub_23A930208(v123, v269, &qword_27DFAF1F8, &qword_23AA12EC8);
        if (v122(v130, 1, v44) == 1)
        {
          break;
        }

        v131 = *v130;
        v132 = v130 + *(v44 + 48);
        v133 = type metadata accessor for CapturedRoom.Surface(0);
        v134 = *v290;
        v135 = v281;
        (*v290)(v281, v132 + *(v133 + 44), v40);
        sub_23A92FED0(v132, type metadata accessor for CapturedRoom.Surface);
        v293 = 0x776F646E6957;
        v294 = 0xE600000000000000;
        v291 = v131;
        v136 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v136);

        v138 = v293;
        v137 = v294;
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v45;
        v140 = sub_23A9EDD28(v135);
        v142 = v45[2];
        v143 = (v141 & 1) == 0;
        v79 = __OFADD__(v142, v143);
        v144 = v142 + v143;
        if (v79)
        {
          goto LABEL_117;
        }

        v145 = v141;
        if (v45[3] >= v144)
        {
          if ((v139 & 1) == 0)
          {
            v151 = v140;
            sub_23A90E648();
            v140 = v151;
          }
        }

        else
        {
          sub_23A908EB0(v144, v139);
          v140 = sub_23A9EDD28(v281);
          if ((v145 & 1) != (v146 & 1))
          {
            goto LABEL_139;
          }
        }

        v40 = v287;
        v45 = v293;
        if (v145)
        {
          v121 = (*(v293 + 56) + 16 * v140);
          *v121 = v138;
          v121[1] = v137;
        }

        else
        {
          *(v293 + 8 * (v140 >> 6) + 64) |= 1 << v140;
          v147 = v140;
          v134(v45[6] + *(v277 + 72) * v140, v281, v40);
          v148 = (v45[7] + 16 * v147);
          *v148 = v138;
          v148[1] = v137;
          v149 = v45[2];
          v79 = __OFADD__(v149, 1);
          v150 = v149 + 1;
          if (v79)
          {
            goto LABEL_129;
          }

          v45[2] = v150;
        }

        (*v285)(v281, v40);
        v44 = v286;
        v55 = i;
      }

      v152 = v263[3];
      v153 = v263[4];
      __swift_project_boxed_opaque_existential_1(v263, v152);
      v154 = (*(v153 + 48))(v152, v153);
      v155 = 0;
      v156 = *(v154 + 16);
      v157 = v274;
      while (1)
      {
        if (v155 == v156)
        {
          v159 = 1;
          v155 = v156;
        }

        else
        {
          if ((v155 & 0x8000000000000000) != 0)
          {
            goto LABEL_130;
          }

          if (v155 >= *(v154 + 16))
          {
            goto LABEL_131;
          }

          v160 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
          v161 = v154 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v155;
          v162 = *(v44 + 48);
          v163 = v278;
          *v278 = v155;
          sub_23A930548(v161, v163 + v162, type metadata accessor for CapturedRoom.Surface);
          v164 = v163;
          v157 = v274;
          sub_23A930208(v164, v274, &qword_27DFAF200, &qword_23AA12ED0);
          v159 = 0;
          ++v155;
        }

        v55(v157, v159, 1, v44);
        v165 = v268;
        sub_23A930208(v157, v268, &qword_27DFAF1F8, &qword_23AA12EC8);
        if (v122(v165, 1, v44) == 1)
        {
          break;
        }

        v166 = *v165;
        v167 = v165 + *(v44 + 48);
        v168 = type metadata accessor for CapturedRoom.Surface(0);
        v169 = *v290;
        v170 = v280;
        (*v290)(v280, v167 + *(v168 + 44), v40);
        sub_23A92FED0(v167, type metadata accessor for CapturedRoom.Surface);
        v293 = 0x676E696E65704FLL;
        v294 = 0xE700000000000000;
        v291 = v166;
        v171 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v171);

        v173 = v293;
        v172 = v294;
        v174 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v45;
        v175 = sub_23A9EDD28(v170);
        v177 = v45[2];
        v178 = (v176 & 1) == 0;
        v79 = __OFADD__(v177, v178);
        v179 = v177 + v178;
        if (v79)
        {
          goto LABEL_118;
        }

        v180 = v176;
        if (v45[3] >= v179)
        {
          if ((v174 & 1) == 0)
          {
            v186 = v175;
            sub_23A90E648();
            v175 = v186;
          }
        }

        else
        {
          sub_23A908EB0(v179, v174);
          v175 = sub_23A9EDD28(v280);
          if ((v180 & 1) != (v181 & 1))
          {
            goto LABEL_139;
          }
        }

        v40 = v287;
        v45 = v293;
        if (v180)
        {
          v158 = (*(v293 + 56) + 16 * v175);
          *v158 = v173;
          v158[1] = v172;
        }

        else
        {
          *(v293 + 8 * (v175 >> 6) + 64) |= 1 << v175;
          v182 = v175;
          v169(v45[6] + *(v277 + 72) * v175, v280, v40);
          v183 = (v45[7] + 16 * v182);
          *v183 = v173;
          v183[1] = v172;
          v184 = v45[2];
          v79 = __OFADD__(v184, 1);
          v185 = v184 + 1;
          if (v79)
          {
            goto LABEL_132;
          }

          v45[2] = v185;
        }

        (*v285)(v280, v40);
        v44 = v286;
        v157 = v274;
        v55 = i;
        v122 = v284;
      }

      v187 = v263[3];
      v188 = v263[4];
      __swift_project_boxed_opaque_existential_1(v263, v187);
      v189 = (*(v188 + 64))(v187, v188);
      v190 = 0;
      v191 = *(v189 + 16);
      v192 = v273;
      while (1)
      {
        if (v190 == v191)
        {
          v194 = 1;
          v190 = v191;
        }

        else
        {
          if ((v190 & 0x8000000000000000) != 0)
          {
            goto LABEL_133;
          }

          if (v190 >= *(v189 + 16))
          {
            goto LABEL_134;
          }

          v195 = *(type metadata accessor for CapturedRoom.Surface(0) - 8);
          v196 = v189 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v190;
          v197 = *(v44 + 48);
          v198 = v278;
          *v278 = v190;
          sub_23A930548(v196, v198 + v197, type metadata accessor for CapturedRoom.Surface);
          v199 = v198;
          v192 = v273;
          sub_23A930208(v199, v273, &qword_27DFAF200, &qword_23AA12ED0);
          v194 = 0;
          ++v190;
        }

        v55(v192, v194, 1, v44);
        v200 = v267;
        sub_23A930208(v192, v267, &qword_27DFAF1F8, &qword_23AA12EC8);
        if (v122(v200, 1, v44) == 1)
        {
          break;
        }

        v201 = *v200;
        v202 = v200 + *(v44 + 48);
        v203 = type metadata accessor for CapturedRoom.Surface(0);
        v204 = *v290;
        v205 = v279;
        (*v290)(v279, v202 + *(v203 + 44), v40);
        sub_23A92FED0(v202, type metadata accessor for CapturedRoom.Surface);
        v293 = 0x726F6F6C46;
        v294 = 0xE500000000000000;
        v291 = v201;
        v206 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v206);

        v208 = v293;
        v207 = v294;
        v209 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v45;
        v210 = sub_23A9EDD28(v205);
        v212 = v45[2];
        v213 = (v211 & 1) == 0;
        v79 = __OFADD__(v212, v213);
        v214 = v212 + v213;
        if (v79)
        {
          goto LABEL_119;
        }

        v215 = v211;
        if (v45[3] >= v214)
        {
          if ((v209 & 1) == 0)
          {
            v221 = v210;
            sub_23A90E648();
            v210 = v221;
          }
        }

        else
        {
          sub_23A908EB0(v214, v209);
          v210 = sub_23A9EDD28(v279);
          if ((v215 & 1) != (v216 & 1))
          {
            goto LABEL_139;
          }
        }

        v40 = v287;
        v45 = v293;
        if (v215)
        {
          v193 = (*(v293 + 56) + 16 * v210);
          *v193 = v208;
          v193[1] = v207;
        }

        else
        {
          *(v293 + 8 * (v210 >> 6) + 64) |= 1 << v210;
          v217 = v210;
          v204(v45[6] + *(v277 + 72) * v210, v279, v40);
          v218 = (v45[7] + 16 * v217);
          *v218 = v208;
          v218[1] = v207;
          v219 = v45[2];
          v79 = __OFADD__(v219, 1);
          v220 = v219 + 1;
          if (v79)
          {
            goto LABEL_135;
          }

          v45[2] = v220;
        }

        (*v285)(v279, v40);
        v44 = v286;
        v192 = v273;
        v55 = i;
        v122 = v284;
      }

      v222 = v263[3];
      v223 = v263[4];
      __swift_project_boxed_opaque_existential_1(v263, v222);
      v224 = (*(v223 + 56))(v222, v223);
      v225 = v224;
      v226 = *(v224 + 16);
      if (!v226)
      {
LABEL_114:

        return v45;
      }

      v227 = 0;
      v228 = v266;
      v229 = MEMORY[0x277D84F98];
      v230 = (v224 + ((*(v266 + 80) + 32) & ~*(v266 + 80)));
      v231 = v265;
      v288 = v230;
      v289 = v226;
      while (1)
      {
        if (v227 >= *(v225 + 16))
        {
          goto LABEL_120;
        }

        sub_23A930548(v230 + *(v228 + 72) * v227, v231, type metadata accessor for CapturedRoom.Object);
        v243 = *v231;
        if (v243 != 15)
        {
          break;
        }

LABEL_95:
        ++v227;
        sub_23A92FED0(v231, type metadata accessor for CapturedRoom.Object);
        if (v226 == v227)
        {
          goto LABEL_114;
        }
      }

      v244 = v229[2];
      if (v244)
      {
        v245 = sub_23A9F573C(v243);
        if (v246)
        {
          v244 = *(v229[7] + 8 * v245);
        }

        else
        {
          v244 = 0;
        }
      }

      v247 = v244 + 1;
      if (__OFADD__(v244, 1))
      {
        goto LABEL_136;
      }

      v290 = v244;
      v248 = v225;
      v249 = *v231;
      v250 = swift_isUniquelyReferenced_nonNull_native();
      v293 = v229;
      v252 = sub_23A9F573C(v249);
      v253 = v229[2];
      v254 = (v251 & 1) == 0;
      v255 = v253 + v254;
      if (__OFADD__(v253, v254))
      {
        goto LABEL_137;
      }

      v256 = v251;
      if (v229[3] < v255)
      {
        sub_23A908C30(v255, v250);
        v257 = sub_23A9F573C(v249);
        if ((v256 & 1) != (v258 & 1))
        {
          goto LABEL_140;
        }

        v252 = v257;
        v229 = v293;
        if ((v256 & 1) == 0)
        {
          goto LABEL_110;
        }

LABEL_93:
        *(v229[7] + 8 * v252) = v247;
LABEL_94:
        v232 = v265;
        LOBYTE(v293) = *v265;
        v291 = sub_23AA0D1A4();
        v292 = v233;
        sub_23A92F104();
        v234 = sub_23AA0D6A4();
        v236 = v235;

        v293 = v234;
        v294 = v236;
        v291 = v290;
        v237 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v237);

        v238 = v293;
        v239 = v294;
        v240 = *(v264 + 32);
        v241 = swift_isUniquelyReferenced_nonNull_native();
        v293 = v45;
        v242 = v238;
        v231 = v232;
        sub_23A9DAB8C(v242, v239, &v232[v240], v241);
        v45 = v293;
        v228 = v266;
        v225 = v248;
        v230 = v288;
        v226 = v289;
        goto LABEL_95;
      }

      if (v250)
      {
        v229 = v293;
        if (v251)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_23A90E4FC();
        v229 = v293;
        if (v256)
        {
          goto LABEL_93;
        }
      }

LABEL_110:
      v229[(v252 >> 6) + 8] |= 1 << v252;
      *(v229[6] + v252) = v249;
      *(v229[7] + 8 * v252) = v247;
      v259 = v229[2];
      v79 = __OFADD__(v259, 1);
      v260 = v259 + 1;
      if (v79)
      {
        goto LABEL_138;
      }

      v229[2] = v260;
      goto LABEL_94;
    }

    i = v48;
    v59 = v41;
    v60 = *v57;
    v61 = v57 + *(v44 + 48);
    v62 = type metadata accessor for CapturedRoom.Surface(0);
    v63 = *v290;
    v64 = v284;
    (*v290)(v284, v61 + *(v62 + 44), v40);
    sub_23A92FED0(v61, type metadata accessor for CapturedRoom.Surface);
    v293 = 1819042135;
    v294 = 0xE400000000000000;
    v291 = v60;
    v65 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v65);

    v67 = v293;
    v66 = v294;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v293 = v45;
    v70 = sub_23A9EDD28(v64);
    v71 = v45[2];
    v72 = (v69 & 1) == 0;
    v73 = v71 + v72;
    if (__OFADD__(v71, v72))
    {
      break;
    }

    v74 = v69;
    if (v45[3] >= v73)
    {
      if ((v68 & 1) == 0)
      {
        sub_23A90E648();
      }
    }

    else
    {
      sub_23A908EB0(v73, v68);
      v75 = sub_23A9EDD28(v284);
      if ((v74 & 1) != (v76 & 1))
      {
        goto LABEL_139;
      }

      v70 = v75;
    }

    v40 = v287;
    v45 = v293;
    if (v74)
    {
      v46 = (*(v293 + 56) + 16 * v70);
      *v46 = v67;
      v46[1] = v66;
    }

    else
    {
      *(v293 + 8 * (v70 >> 6) + 64) |= 1 << v70;
      v63(v45[6] + *(v277 + 72) * v70, v284, v40);
      v77 = (v45[7] + 16 * v70);
      *v77 = v67;
      v77[1] = v66;
      v78 = v45[2];
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_123;
      }

      v45[2] = v80;
    }

    (*v285)(v284, v40);
    v44 = v286;
    v41 = v59;
    v42 = i;
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  sub_23AA0DC24();
  __break(1u);
LABEL_140:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

void sub_23A92CFAC(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = sub_23AA0C0E4();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF228, &qword_23AA12F00);
  MEMORY[0x28223BE20](v8);
  v41 = (v37 - v11);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 48);
    v39 = v5;
    v40 = v13;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    v43 = (v42 + 32);
    v37[2] = v42 + 40;
    v38 = v15;
    while (1)
    {
      v44 = v12;
      v17 = v41;
      sub_23A8D5194(v14, v41, &qword_27DFAF228, &qword_23AA12F00);
      v19 = *v17;
      v18 = v17[1];
      v20 = *v43;
      v21 = v7;
      (*v43)(v7, v17 + v40, v5);
      v22 = *v45;
      v24 = sub_23A9EDDFC(v19, v18);
      v25 = v22[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v28 = v23;
      if (v22[3] >= v27)
      {
        if ((a2 & 1) == 0)
        {
          sub_23A90ECB4();
        }
      }

      else
      {
        sub_23A9099C0(v27, a2 & 1);
        v29 = sub_23A9EDDFC(v19, v18);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_17;
        }

        v24 = v29;
      }

      v31 = *v45;
      if (v28)
      {

        v16 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        (*(v42 + 40))(v16, v21, v39);
      }

      else
      {
        v31[(v24 >> 6) + 8] |= 1 << v24;
        v32 = (v31[6] + 16 * v24);
        *v32 = v19;
        v32[1] = v18;
        v33 = v31[7] + *(v42 + 72) * v24;
        v7 = v21;
        v5 = v39;
        v20(v33, v21, v39);
        v34 = v31[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_16;
        }

        v31[2] = v36;
      }

      v14 += v38;
      a2 = 1;
      v12 = v44 - 1;
      if (v44 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_23AA0DC24();
    __break(1u);
  }
}

id sub_23A92D2EC(uint64_t a1)
{
  v2 = sub_23AA0BCF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  v9 = sub_23AA0BFB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  sub_23AA0BF34();
  v13 = sub_23AA0BF04();
  v15 = v14;
  v49 = v10;
  (*(v10 + 8))(v12, v9);
  v50 = v13;
  v51 = v15;
  if (qword_27DFAE420 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_27DFC0690);
  (*(v3 + 16))(v8, v16, v2);
  sub_23AA0BCD4();
  v17 = *(v3 + 8);
  v17(v8, v2);
  sub_23A92F104();
  v18 = sub_23AA0D684();
  v17(v5, v2);

  v50 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF1E0, &qword_23AA12EC0);
  sub_23A92FE18();
  v19 = sub_23AA0D074();
  v21 = v20;

  if (qword_27DFAE418 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27DFC0678);

  v23 = sub_23A92B65C(1, v19, v21, v22);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v50 = v23;
  v51 = v25;
  v52 = v27;
  v53 = v29;
  sub_23A92FE7C();
  sub_23AA0D6B4();
  LOBYTE(v23) = v30;

  if ((v23 & 1) == 0)
  {
    v50 = 95;
    v51 = 0xE100000000000000;
    MEMORY[0x23EE8FCA0](v19, v21);
  }

  v31 = v54;
  v32 = objc_opt_self();
  v33 = sub_23AA0BF14();
  v34 = [v32 newSceneWithURL_];

  if (v34)
  {
    v35 = sub_23AA0D104();
    v36 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v37 = sub_23AA0D104();

    v38 = [v36 initWithString_];

    v39 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
    [v34 setMetadataWithKey:v35 value:v39];

    v40 = sub_23AA0D104();
    v41 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v42 = sub_23AA0D104();
    v43 = [v41 initWithString_];

    v44 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
    [v34 setMetadataWithKey:v40 value:v44];

    v45 = sub_23AA0D104();
    v46 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithDouble_];
    [v34 setMetadataWithKey:v45 value:v46];
  }

  else
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    (*(v49 + 16))(v47, v31, v9);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v34;
}

void sub_23A92D8E4(uint64_t a1, id a2, float64x2_t *a3, void *a4)
{
  *v53 = *(a1 + 16);
  v52 = *(a1 + 128);
  v54 = *(a1 + 144);
  v6 = [a2 name];
  v7 = [v6 stringValue];

  if (v7)
  {
    v8 = sub_23AA0D134();
    v10 = v9;
  }

  else
  {
    v10 = 0xE700000000000000;
    v8 = 0x6E6F6974636573;
  }

  *&v63[0] = v8;
  *(&v63[0] + 1) = v10;

  MEMORY[0x23EE8FCA0](0x547265746E65635FLL, 0xEA0000000000706FLL);
  v11 = v63[0];
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v12 = [a4 rootNode];
  v13 = sub_23AA0D634();

  if ((v13 & 1) != 0 || (v14 = [a2 path], v15 = objc_msgSend(v14, sel_stringValue), v14, !v15))
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v16 = sub_23AA0D134();
    v18 = v17;
  }

  *&v63[0] = v16;
  *(&v63[0] + 1) = v18;

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](v11, *(&v11 + 1));

  v19 = objc_allocWithZone(MEMORY[0x277D77888]);
  v20 = sub_23AA0D104();
  v21 = [v19 initWithString_];

  if (v21)
  {
    v22 = [a4 newNodeAtPath:v21 type:*MEMORY[0x277D77980]];
    if (v22)
    {
      v23 = v22;

      v24 = sub_23AA0D104();
      v25 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v26 = sub_23AA0D104();
      v27 = [v25 initWithString_];

      v28 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
      [v23 setMetadataWithKey:v24 value:v28];

      v29 = 1.5;
      if ((v54 & 1) == 0)
      {
        v29 = vmuls_lane_f32(0.5, v52, 1);
      }

      v30 = sub_23AA0D104();
      v31 = [v23 newPropertyWithName:v30 type:*MEMORY[0x277D778E0] role:0];

      if (v31)
      {
        v32 = v29 * 0.0;
        v33 = v53[1] + v29;
        v34 = v53[0] + v32;
        v35 = v53[2] + v32;
        __invert_d4();
        v36 = vmulq_f64(v55, 0);
        v37 = vmulq_f64(v56, 0);
        __asm { FMOV            V25.2D, #-1.0 }

        v63[0] = vmlaq_f64(vmlaq_f64(vmlaq_f64(v55, 0, v57), 0, v59), 0, v61);
        v63[1] = vmlaq_f64(vmlaq_f64(vmlaq_f64(v56, 0, v58), 0, v60), 0, v62);
        v63[2] = vmlaq_f64(vmlaq_f64(vmlaq_f64(v36, 0, v57), _Q25, v59), 0, v61);
        v63[3] = vmlaq_f64(vmlaq_f64(vmlaq_f64(v37, 0, v58), _Q25, v60), 0, v62);
        v63[4] = vmlaq_f64(vmlaq_f64(vaddq_f64(v57, v36), 0, v59), 0, v61);
        v63[5] = vmlaq_f64(vmlaq_f64(vaddq_f64(v58, v37), 0, v60), 0, v62);
        v63[6] = vaddq_f64(v61, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v55, v34), v57, v33), v59, v35));
        v63[7] = vaddq_f64(v62, vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v56, v34), v58, v33), v60, v35));
        [v31 setDouble4x4Value_];
        v43 = sub_23AA0D104();
        v44 = [v23 newPropertyWithName:v43 type:*MEMORY[0x277D77948] role:0];

        if (v44)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_23AA11BB0;
          v46 = objc_allocWithZone(MEMORY[0x277D778B0]);
          v47 = sub_23AA0D104();
          v48 = [v46 initWithString_];

          *(v45 + 32) = v48;
          sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
          v49 = sub_23AA0D2E4();

          [v44 setTokenArray_];

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v51 = v63[0];
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {

    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v50 = v63[0];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void sub_23A92DFB8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v143 = a3;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v8 = MEMORY[0x277D84F98];
    goto LABEL_27;
  }

  v6 = a1 + 32;
  v7 = v5 - 1;
  v8 = MEMORY[0x277D84F98];
  while (1)
  {
    v9 = *(v6 + 80);
    v130 = *(v6 + 64);
    v131 = v9;
    v10 = *(v6 + 48);
    v128 = *(v6 + 32);
    v129 = v10;
    LOBYTE(v135.f64[0]) = *(v6 + 144);
    v11 = *(v6 + 128);
    v133 = *(v6 + 112);
    v134 = v11;
    v132 = *(v6 + 96);
    v12 = *(v6 + 16);
    v126 = *v6;
    v127 = v12;
    v13 = LOBYTE(v126.f64[0]);
    if (*(*&v8 + 16))
    {
      sub_23A93010C(&v126, &v115);
      v14 = sub_23A9EE130(v13);
      v15 = MEMORY[0x277D84F90];
      if (v16)
      {
        v15 = *(*(*&v8 + 56) + 8 * v14);
      }
    }

    else
    {
      sub_23A93010C(&v126, &v115);
      v15 = MEMORY[0x277D84F90];
    }

    sub_23A93010C(&v126, &v115);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_23A9399B8(0, *(v15 + 2) + 1, 1, v15);
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_23A9399B8((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v19 = &v15[160 * v18];
    v20 = v127;
    *(v19 + 2) = v126;
    *(v19 + 3) = v20;
    v21 = v128;
    v22 = v129;
    v23 = v131;
    *(v19 + 6) = v130;
    *(v19 + 7) = v23;
    *(v19 + 4) = v21;
    *(v19 + 5) = v22;
    v24 = v132;
    v25 = v133;
    v26 = v134;
    v19[176] = LOBYTE(v135.f64[0]);
    *(v19 + 9) = v25;
    *(v19 + 10) = v26;
    *(v19 + 8) = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115.f64[0] = v8;
    v29 = sub_23A9EE130(v13);
    v30 = *(*&v8 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      sub_23AA0DC24();
      __break(1u);
      return;
    }

    v33 = v28;
    if (*(*&v8 + 24) >= v32)
    {
      sub_23A930168(&v126);
      if (isUniquelyReferenced_nonNull_native)
      {
        v8 = v115.f64[0];
        if (v33)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_23A90E8D4();
        v8 = v115.f64[0];
        if (v33)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_23A909298(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_23A9EE130(v13);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_80;
      }

      v29 = v34;
      sub_23A930168(&v126);
      v8 = v115.f64[0];
      if (v33)
      {
LABEL_3:
        *(*(*&v8 + 56) + 8 * v29) = v15;

        if (!v7)
        {
          break;
        }

        goto LABEL_4;
      }
    }

    *(*&v8 + 8 * (v29 >> 6) + 64) |= 1 << v29;
    *(*(*&v8 + 48) + v29) = v13;
    *(*(*&v8 + 56) + 8 * v29) = v15;
    v36 = *(*&v8 + 16);
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_77;
    }

    *(*&v8 + 16) = v38;
    if (!v7)
    {
      break;
    }

LABEL_4:
    --v7;
    v6 += 160;
  }

  v4 = v3;
LABEL_27:
  v39 = *&v8 + 64;
  v40 = 1 << *(*&v8 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(*&v8 + 64);
  v43 = (v40 + 63) >> 6;
  v95 = *MEMORY[0x277D77980];
  v94 = *MEMORY[0x277D778E0];
  v93 = *MEMORY[0x277D77948];

  v44 = 0;
  v88 = *&v8 + 64;
  v89 = v8;
  v87 = v43;
  while (1)
  {
    if (!v42)
    {
      do
      {
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_76;
        }

        if (v45 >= v43)
        {
LABEL_72:

          goto LABEL_74;
        }

        v42 = *(v39 + 8 * v45);
        ++v44;
      }

      while (!v42);
      v44 = v45;
    }

    v90 = v44;
    v91 = v42;
    v46 = __clz(__rbit64(v42)) | (v44 << 6);
    v47 = *(*(*&v8 + 48) + v46);
    v137 = *(*(*&v8 + 56) + 8 * v46);
    v138 = 0;
    v139 = 0;
    swift_bridgeObjectRetain_n();
    sub_23A9168D4(&v104);
    v123 = v112;
    v124 = v113;
    v125 = v114;
    v119 = v108;
    v120 = v109;
    v121 = v110;
    v122 = v111;
    v115 = v104;
    v116 = v105;
    v117 = v106;
    v118 = v107;
    v134 = v112;
    v135 = v113;
    v136 = v114;
    v130 = v108;
    v131 = v109;
    v132 = v110;
    v133 = v111;
    v126 = v104;
    v127 = v105;
    v128 = v106;
    v129 = v107;
    if (sub_23A9301BC(&v126) != 1)
    {
      break;
    }

LABEL_30:
    v42 = (v91 - 1) & v91;

    v39 = v88;
    v8 = v89;
    v43 = v87;
    v44 = v90;
  }

  v92 = v47;
  while (2)
  {
    v104.f64[0] = 0.0;
    v104.f64[1] = -2.68156159e154;
    if (v47 > 2)
    {
      v51 = 0x6F52676E696E6964;
      if (v47 != 4)
      {
        v51 = 0x69746E6564696E75;
      }

      v50 = 0xEC00000064656966;
      if (v47 == 4)
      {
        v50 = 0xEA00000000006D6FLL;
      }

      v48 = v47 == 3;
      if (v47 == 3)
      {
        v49 = 0x6E65686374696BLL;
      }

      else
      {
        v49 = v51;
      }

LABEL_51:
      if (v48)
      {
        v52 = 0xE700000000000000;
      }

      else
      {
        v52 = v50;
      }
    }

    else
    {
      if (v47)
      {
        v48 = v47 == 1;
        if (v47 == 1)
        {
          v49 = 0x6D6F6F72646562;
        }

        else
        {
          v49 = 0x6D6F6F7268746162;
        }

        v50 = 0xE800000000000000;
        goto LABEL_51;
      }

      v49 = 0x6F52676E6976696CLL;
      v52 = 0xEA00000000006D6FLL;
    }

    MEMORY[0x23EE8FCA0](v49, v52);

    v53 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v53);

    v54 = v104;
    sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
    v55 = [v143 rootNode];
    v56 = sub_23AA0D634();

    if ((v56 & 1) != 0 || (v57 = [a2 path], v58 = objc_msgSend(v57, sel_stringValue), v57, !v58))
    {
      v59 = 0;
      v61 = 0xE000000000000000;
    }

    else
    {
      v59 = sub_23AA0D134();
      v61 = v60;
    }

    *&v104.f64[0] = v59;
    *&v104.f64[1] = v61;

    MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

    MEMORY[0x23EE8FCA0](*&v54.f64[0], *&v54.f64[1]);

    v62 = v104;
    v63 = objc_allocWithZone(MEMORY[0x277D77888]);
    v64 = sub_23AA0D104();
    v65 = [v63 initWithString_];

    if (!v65)
    {

      sub_23A8D50D0(&v115, &qword_27DFAF218, &qword_23AA12EF0);

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v85 = v62;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_72;
    }

    v66 = [v143 newNodeAtPath:v65 type:v95];
    if (!v66)
    {

      sub_23A8D50D0(&v115, &qword_27DFAF218, &qword_23AA12EF0);

      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v86 = v62;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_72;
    }

    v67 = v66;

    v68 = sub_23AA0D104();
    v69 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v70 = sub_23AA0D104();
    v71 = [v69 initWithString_];

    v72 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
    [v67 setMetadataWithKey:v68 value:v72];

    if (LOBYTE(v134.f64[0]))
    {
      v73 = v128;
      v73.i32[3] = 1.0;
      v103 = 0u;
      v74 = xmmword_23AA10F20;
      v101 = v73;
      v102 = xmmword_23AA10F20;
      v99 = 0u;
      v100 = xmmword_23AA10F30;
      v98 = 0u;
    }

    else
    {
      v101 = v133;
      v102 = vcvtq_f64_f32(*&v130.f64[0]);
      v103 = vcvtq_f64_f32(*&v130.f64[1]);
      v99 = vcvtq_f64_f32(*&v131.f64[1]);
      v100 = vcvtq_f64_f32(*&v131.f64[0]);
      v98 = vcvtq_f64_f32(*&v132.f64[0]);
      v74 = vcvtq_f64_f32(*&v132.f64[1]);
    }

    v97 = v74;
    v75 = sub_23AA0D104();
    v76 = [v67 newPropertyWithName:v75 type:v94 role:0];

    if (!v76)
    {
      goto LABEL_79;
    }

    v77 = v4;
    v140[0] = v102;
    v140[1] = v103;
    v140[2] = v100;
    v140[3] = v99;
    v140[4] = v98;
    v140[5] = v97;
    v141 = vcvtq_f64_f32(*v101.f32);
    v142 = vcvt_hight_f64_f32(v101);
    v104 = v102;
    v105 = v103;
    v106 = v100;
    v107 = v99;
    v108 = v98;
    v109 = v97;
    v110 = v141;
    v111 = v142;
    [v76 setDouble4x4Value_];
    v78 = sub_23AA0D104();
    v79 = [v67 newPropertyWithName:v78 type:v93 role:0];

    if (!v79)
    {
      goto LABEL_78;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_23AA11BB0;
    v81 = objc_allocWithZone(MEMORY[0x277D778B0]);
    v82 = sub_23AA0D104();
    v83 = [v81 initWithString_];

    *(v80 + 32) = v83;
    sub_23A8D6C58(0, &qword_27DFAF1D0, 0x277D778B0);
    v84 = sub_23AA0D2E4();

    [v79 setTokenArray_];

    v110 = v133;
    v111 = v134;
    v112 = v135;
    LOBYTE(v113.f64[0]) = v136;
    v106 = v129;
    v107 = v130;
    v108 = v131;
    v109 = v132;
    v104 = v127;
    v105 = v128;
    sub_23A92D8E4(&v104, v67, v140, v143);
    v4 = v77;
    if (!v77)
    {

      sub_23A8D50D0(&v115, &qword_27DFAF218, &qword_23AA12EF0);
      sub_23A9168D4(&v104);
      v123 = v112;
      v124 = v113;
      v125 = v114;
      v119 = v108;
      v120 = v109;
      v121 = v110;
      v122 = v111;
      v115 = v104;
      v116 = v105;
      v117 = v106;
      v118 = v107;
      v134 = v112;
      v135 = v113;
      v136 = v114;
      v130 = v108;
      v131 = v109;
      v132 = v110;
      v133 = v111;
      v126 = v104;
      v127 = v105;
      v128 = v106;
      v129 = v107;
      v47 = v92;
      if (sub_23A9301BC(&v126) == 1)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  sub_23A8D50D0(&v115, &qword_27DFAF218, &qword_23AA12EF0);
LABEL_74:
}

void *sub_23A92EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
  v10 = [a6 rootNode];
  v11 = sub_23AA0D634();

  if ((v11 & 1) != 0 || (v12 = [a5 path], v13 = objc_msgSend(v12, sel_stringValue), v12, !v13))
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v14 = sub_23AA0D134();
    v16 = v15;
  }

  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);

  MEMORY[0x23EE8FCA0](a1, a2);

  v18 = v14;
  v17 = v16;
  v19 = objc_allocWithZone(MEMORY[0x277D77888]);
  v20 = sub_23AA0D104();
  v21 = [v19 initWithString_];

  if (v21)
  {
    v22 = [a6 newNodeAtPath:v21 type:*MEMORY[0x277D77980]];
    if (v22)
    {
      a6 = v22;

      v23 = sub_23AA0D104();
      v24 = objc_allocWithZone(MEMORY[0x277D778B0]);
      v25 = sub_23AA0D104();
      v26 = [v24 byte_278B65578];

      v27 = [objc_allocWithZone(MEMORY[0x277D77878]) initWithToken_];
      [a6 setMetadataWithKey:v23 value:v27];

      v28 = sub_23AA0D104();
      v29 = sub_23AA0D104();
      MEMORY[0x23EE8FCA0](a3, a4);
      v30 = objc_allocWithZone(MEMORY[0x277D77878]);
      v31 = sub_23AA0D104();

      v32 = [v30 initWithResourcePath_];

      [a6 setDictionaryMetadataWithKey:v28 dictionaryKey:v29 value:v32];
      v33 = sub_23AA0D104();
      v34 = sub_23AA0D104();
      v35 = objc_allocWithZone(MEMORY[0x277D77878]);
      v36 = sub_23AA0D104();
      v37 = [v35 initWithString_];

      [a6 setDictionaryMetadataWithKey:v33 dictionaryKey:v34 value:v37];
    }

    else
    {
      type metadata accessor for USDModel.Error(0);
      sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
      swift_allocError();
      *v39 = v18;
      v39[1] = v17;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for USDModel.Error(0);
    sub_23A93032C(&qword_27DFAF1C0, type metadata accessor for USDModel.Error, &unk_23AA12F60);
    swift_allocError();
    *v38 = v18;
    v38[1] = v17;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return a6;
}

unint64_t sub_23A92F104()
{
  result = qword_27DFB09B0;
  if (!qword_27DFB09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB09B0);
  }

  return result;
}

void sub_23A92F158(void *a1, void *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v8 = sub_23AA0D104();
  v9 = *MEMORY[0x277D77920];
  v10 = [a1 newPropertyWithName:v8 type:*MEMORY[0x277D77920] role:0];

  if (!v10)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v11 = a2[4];
  v12 = MEMORY[0x277D84F90];
  if (*(v11 + 16) > 2uLL)
  {
    v13 = *(v11 + 16) / 3uLL;
    v14 = sub_23AA0D324();
    *(v14 + 16) = v13;
    memset_pattern16((v14 + 32), &unk_23AA12E70, 4 * v13);
  }

  else
  {
    v13 = *(MEMORY[0x277D84F90] + 16);
    v14 = MEMORY[0x277D84F90];
  }

  v40 = v10;
  [v10 setIntArray:v14 + 32 count:v13];
  v15 = sub_23AA0D104();
  v16 = [a1 newPropertyWithName:v15 type:v9 role:0];

  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = *(v11 + 16);
  if (v17)
  {
    *&v45[0] = v12;
    sub_23A975FE8(0, v17, 0);
    v18 = (v11 + 32);
    while (1)
    {
      v20 = *v18++;
      v19 = v20;
      if (v20 < 0)
      {
        break;
      }

      *&v45[0] = v12;
      v22 = *(v12 + 2);
      v21 = *(v12 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_23A975FE8((v21 > 1), v22 + 1, 1);
        v12 = *&v45[0];
      }

      *(v12 + 2) = v23;
      *&v12[4 * v22 + 32] = v19;
      if (!--v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v23 = *(v12 + 2);
LABEL_14:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_23A939AD4(0, v23, 0, v12);
  }

  [v16 setIntArray:v12 + 32 count:v23];
  v24 = sub_23AA0D104();
  v25 = *MEMORY[0x277D77908];
  v26 = [a1 newPropertyWithName:v24 type:*MEMORY[0x277D77908] role:0];

  if (!v26)
  {
    goto LABEL_28;
  }

  v27 = a2[2];
  v28 = *(v27 + 2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_23A9388A8(0, v28, 0, v27);
  }

  [v26 setFloat3Array:v27 + 32 count:v28];
  v29 = sub_23AA0D104();
  v30 = [a1 newPropertyWithName:v29 type:v25 role:0];

  if (!v30)
  {
    goto LABEL_29;
  }

  v31 = a2[3];
  v32 = *(v31 + 2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_23A9388A8(0, v32, 0, v31);
  }

  [v30 setFloat3Array:v31 + 32 count:v32];
  v33 = sub_23AA0D104();
  v34 = [a1 newPropertyWithName:v33 type:*MEMORY[0x277D77940] role:0];

  if (!v34)
  {
    goto LABEL_30;
  }

  v35 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v36 = sub_23AA0D104();
  v37 = [v35 initWithString_];

  [v34 setTokenValue_];
  v38 = sub_23AA0D104();
  v39 = [a1 byte_278B653D9];

  if (v39)
  {

    v45[0] = vcvtq_f64_f32(*a3.f32);
    v45[1] = vcvt_hight_f64_f32(a3);
    v45[2] = vcvtq_f64_f32(*a4.f32);
    v45[3] = vcvt_hight_f64_f32(a4);
    v45[4] = vcvtq_f64_f32(*a5.f32);
    v45[5] = vcvt_hight_f64_f32(a5);
    v45[6] = vcvtq_f64_f32(*a6.f32);
    v45[7] = vcvt_hight_f64_f32(a6);
    [v39 setDouble4x4Value_];

    return;
  }

LABEL_31:
  __break(1u);
}

void sub_23A92F638(void *a1, uint64_t a2, void *a3, void *a4, double a5, float a6)
{
  v10 = sub_23AA0D104();
  v11 = [a1 newPropertyWithName:v10 type:*MEMORY[0x277D77928] role:0];

  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  MEMORY[0x23EE8FCA0](0x726F6C6F635FLL, 0xE600000000000000);
  MEMORY[0x23EE8FCA0](a2, a3);
  MEMORY[0x23EE8FCA0](0x726F6C6F635FLL, 0xE600000000000000);
  v12 = objc_allocWithZone(MEMORY[0x277D77888]);
  v13 = sub_23AA0D104();
  v14 = [v12 initWithString_];

  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v11 setObjectPath_];

  MEMORY[0x23EE8FCA0](a2, a3);
  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);
  MEMORY[0x23EE8FCA0](a2, a3);
  v15 = objc_allocWithZone(MEMORY[0x277D77888]);
  v16 = sub_23AA0D104();

  v17 = [v15 initWithString_];

  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v11;
  v19 = *MEMORY[0x277D77950];
  v20 = [a4 newNodeAtPath:v17 type:*MEMORY[0x277D77960] specifier:*MEMORY[0x277D77950]];

  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = sub_23AA0D104();
  v55 = v20;
  v57 = *MEMORY[0x277D77940];
  v22 = [v20 newPropertyWithName:v21 type:? role:?];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23AA11BB0;
  v24 = objc_allocWithZone(MEMORY[0x277D77888]);
  v25 = sub_23AA0D104();
  v26 = [v24 initWithString_];

  if (!v26)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v23 + 32) = v26;
  if (v22)
  {
    sub_23A8D6C58(0, &qword_27DFAF1D8, 0x277D77888);
    v27 = v22;
    v28 = sub_23AA0D2E4();
    [v27 setConnectionWithTargetPaths_];
  }

  sub_23AA0D8A4();

  MEMORY[0x23EE8FCA0](a2, a3);
  MEMORY[0x23EE8FCA0](47, 0xE100000000000000);
  MEMORY[0x23EE8FCA0](a2, a3);
  MEMORY[0x23EE8FCA0](0x656361667275732FLL, 0xEE00726564616853);
  v29 = objc_allocWithZone(MEMORY[0x277D77888]);
  v30 = sub_23AA0D104();

  v31 = [v29 initWithString_];

  if (!v31)
  {
    goto LABEL_24;
  }

  v32 = [a4 newNodeAtPath:v31 type:*MEMORY[0x277D77978] specifier:v19];

  if (!v32)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v54 = v22;
  v33 = sub_23AA0D104();
  v34 = [v32 newPropertyWithName:v33 type:v57 role:0];

  if (!v34)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v35 = objc_allocWithZone(MEMORY[0x277D778B0]);
  v36 = sub_23AA0D104();
  v37 = [v35 initWithString_];

  [v34 setTokenValue_];
  v38 = sub_23AA0D104();
  v39 = *MEMORY[0x277D77900];
  v40 = *MEMORY[0x277D77988];
  v41 = [v32 newPropertyWithName:v38 type:*MEMORY[0x277D77900] role:*MEMORY[0x277D77988]];

  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v41 setFloat3Value_];
  v42 = sub_23AA0D104();
  v43 = [v32 newPropertyWithName:v42 type:v39 role:v40];

  if (!v43)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v43 setFloat3Value_];
  v44 = sub_23AA0D104();
  v45 = [v32 newPropertyWithName:v44 type:v39 role:*MEMORY[0x277D77998]];

  if (!v45)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v45 setFloat3Value_];
  v46 = sub_23AA0D104();
  v47 = *MEMORY[0x277D778E8];
  v48 = [v32 newPropertyWithName:v46 type:*MEMORY[0x277D778E8] role:0];

  if (!v48)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  LODWORD(v49) = 1.0;
  [v48 setFloatValue_];
  v50 = sub_23AA0D104();
  v51 = [v32 newPropertyWithName:v50 type:v47 role:0];

  if (!v51)
  {
LABEL_31:
    __break(1u);
    return;
  }

  *&v52 = a6;
  [v51 setFloatValue_];
  v58 = sub_23AA0D104();
  v53 = [v32 newPropertyWithName:v58 type:v57 role:0];
}

unint64_t sub_23A92FE18()
{
  result = qword_27DFAF1E8;
  if (!qword_27DFAF1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAF1E0, &qword_23AA12EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF1E8);
  }

  return result;
}

unint64_t sub_23A92FE7C()
{
  result = qword_27DFAF1F0;
  if (!qword_27DFAF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF1F0);
  }

  return result;
}

uint64_t sub_23A92FED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A92FF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

float32x4_t sub_23A9300E4@<Q0>(float32x2_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  result = vaddq_f32(*(*(v2 + 16) + 80), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(*(v2 + 16) + 32), COERCE_FLOAT(*a1->f32)), *(*(v2 + 16) + 48), *a1, 1), *(*(v2 + 16) + 64), *a1->f32, 2));
  *a2 = result;
  return result;
}

uint64_t sub_23A9301BC(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_23A9301E0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return result;
}

uint64_t sub_23A930208(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_23A930270()
{
  result = qword_27DFAF238;
  if (!qword_27DFAF238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAF230, &qword_23AA12F08);
    sub_23A93032C(&qword_27DFAF240, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF238);
  }

  return result;
}

uint64_t sub_23A93032C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23A9303C4(uint64_t a1)
{
  sub_23A930458();
  if (v1 <= 0x3F)
  {
    sub_23A9304A0();
    if (v2 <= 0x3F)
    {
      sub_23A9304D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_23A930458()
{
  if (!qword_27DFAF258)
  {
    v0 = sub_23AA0BFB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAF258);
    }
  }
}

uint64_t sub_23A9304A0()
{
  result = qword_27DFAF260;
  if (!qword_27DFAF260)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27DFAF260);
  }

  return result;
}

uint64_t sub_23A9304D0()
{
  result = qword_27DFAF268;
  if (!qword_27DFAF268)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27DFAF268);
  }

  return result;
}

uint64_t sub_23A930548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9305FC(uint64_t a1)
{
  swift_beginAccess();
  if (*(*&v1[6] + 16))
  {

    sub_23A9EDF98(a1);
    v4 = v3;

    if ((v4 & 1) != 0 || *(*&v1[6] + 16) > 1uLL)
    {
      return 0;
    }
  }

  v5 = *(a1 + 16);
  v6 = v5[2];
  if (!*&v6)
  {
    return 0;
  }

  for (i = v5 + 4; ; ++i)
  {
    v8 = *i;
    v9 = vceq_f32(*i, v1[2]);
    if ((v9.i8[0] & 1) == 0 || (v9.i8[4] & 1) == 0)
    {
      v10 = vceq_f32(v8, v1[3]);
      if ((v10.i8[0] & 1) == 0 || (v10.i8[4] & 1) == 0)
      {
        break;
      }
    }

    if (!--*&v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v1[6];
  v1[6] = 0x8000000000000000;
  v12.n128_u64[0] = v8;
  sub_23A9DA2A0(a1, isUniquelyReferenced_nonNull_native, v12);
  v1[6] = v14;
  swift_endAccess();
  return 1;
}

void sub_23A930738()
{
  swift_beginAccess();
  v1 = *(v0 + 6);
  if (*(v1 + 16) < 2uLL)
  {
    return;
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  if (!v4)
  {
    v8 = 0;
    while (((v2 + 63) >> 6) - 1 != v8)
    {
      v5 = v8 + 1;
      v9 = *(v1 + 72 + 8 * v8);
      v4 -= 64;
      ++v8;
      if (v9)
      {
        v7 = (v9 - 1) & v9;
        v6 = __clz(__rbit64(v9)) - v4;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v5 = 0;
  v6 = __clz(__rbit64(v4));
  v7 = (v4 - 1) & v4;
LABEL_10:
  v10 = *(v1 + 56);
  v11 = *(v10 + 8 * v6);
  if (!v7)
  {
    v13 = (v2 + 63) >> 6;
    v14 = v5 << 6;
    v15 = v5 + 1;
    v16 = (v1 + 8 * v5 + 72);
    while (v15 < v13)
    {
      v18 = *v16++;
      v17 = v18;
      v14 += 64;
      ++v15;
      if (v18)
      {
        v12 = __clz(__rbit64(v17)) + v14;
        goto LABEL_16;
      }
    }

LABEL_22:
    __break(1u);
    return;
  }

  v12 = __clz(__rbit64(v7)) | (v5 << 6);
LABEL_16:
  v19 = *(v10 + 8 * v12);
  v20 = v0[2];
  v21 = _simd_orient_vf2(vsub_f32(*&v19, *&v11), vsub_f32(*&v20, *&v11));
  type metadata accessor for CDTTriangle();
  swift_allocObject();

  if (v21 >= 0.0)
  {
    v22 = sub_23A9C34F8(v11, v19, v20, 0.001);
    v27 = v0[3];
    swift_allocObject();

    v24 = v11;
    v25 = v27;
    v26 = v19;
  }

  else
  {
    v22 = sub_23A9C34F8(v11, v20, v19, 0.001);
    v23 = v0[3];
    swift_allocObject();

    v24 = v11;
    v25 = v19;
    v26 = v23;
  }

  v28 = sub_23A9C34F8(v24, v25, v26, 0.001);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_23AA12E60;
  *(v29 + 32) = v22;
  *(v29 + 40) = v28;
}

uint64_t sub_23A9309C8()
{

  return swift_deallocClassInstance();
}

void sub_23A930A2C(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v5 = 0;
    v36 = v3;
    v37 = v3 & 0xC000000000000001;
    v33 = v3 + 32;
    v34 = v3 & 0xFFFFFFFFFFFFFF8;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        v6 = MEMORY[0x23EE90360](v5, v3);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v5 >= *(v34 + 16))
      {
        goto LABEL_47;
      }

      v6 = *(v33 + 8 * v5);

      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        break;
      }

LABEL_11:
      v8 = *(v6 + 32);
      if (v8 >> 62)
      {
        v9 = sub_23AA0D7F4();
        if (v9)
        {
          goto LABEL_13;
        }

LABEL_42:

        if (v5 == i)
        {
          return;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_42;
        }

LABEL_13:
        v38 = v5;
        v10 = v8 & 0xC000000000000001;

        swift_beginAccess();
        v11 = 0;
        v40 = v8 + 32;
        v41 = v8 & 0xFFFFFFFFFFFFFF8;
        v39 = v8;
        do
        {
          if (v10)
          {
            v12 = MEMORY[0x23EE90360](v11, v8);
            v7 = __OFADD__(v11++, 1);
            if (v7)
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (v11 >= *(v41 + 16))
            {
              goto LABEL_45;
            }

            v12 = *(v40 + 8 * v11);

            v7 = __OFADD__(v11++, 1);
            if (v7)
            {
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }
          }

          sub_23AA0DD14();
          v13 = *(v12 + 40);
          MEMORY[0x23EE907C0](*(v13 + 16));
          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = v13 + 32;
            do
            {
              v15 += 8;
              sub_23AA0DD44();
              sub_23AA0DD44();
              --v14;
            }

            while (v14);
          }

          v16 = sub_23AA0DD54();
          v3 = *(v2 + 16);
          if (*(v3 + 16))
          {
            v17 = sub_23A9EDF54(v16);
            if (v18)
            {
              v19 = *(*(v3 + 56) + 8 * v17);
              swift_beginAccess();
              v3 = *(v19 + 48);

              v21 = sub_23A9EDF98(v20);
              if (v22)
              {
                v23 = v21;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v3 = *(v19 + 48);
                *(v19 + 48) = 0x8000000000000000;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_23A90D46C();
                }

                sub_23A90BD98(v23, v3);

                *(v19 + 48) = v3;
              }

              else
              {
              }

              swift_endAccess();
              if (!*(*(v19 + 48) + 16))
              {
                sub_23AA0DD14();
                v25 = *(v19 + 40);
                MEMORY[0x23EE907C0](*(v25 + 16));
                v26 = *(v25 + 16);
                if (v26)
                {
                  v27 = v25 + 32;
                  do
                  {
                    v27 += 8;
                    sub_23AA0DD44();
                    sub_23AA0DD44();
                    --v26;
                  }

                  while (v26);
                }

                v28 = sub_23AA0DD54();
                swift_beginAccess();
                v3 = *(v2 + 16);
                v29 = sub_23A9EDF54(v28);
                v8 = v39;
                if (v30)
                {
                  v31 = v29;
                  v32 = swift_isUniquelyReferenced_nonNull_native();
                  v3 = *(v2 + 16);
                  *(v2 + 16) = 0x8000000000000000;
                  if (!v32)
                  {
                    sub_23A90D5CC();
                  }

                  sub_23A90BFA4(v31, v3);
                  *(v2 + 16) = v3;
                }

                swift_endAccess();
              }
            }
          }
        }

        while (v11 != v9);

        i = v35;
        v3 = v36;
        v5 = v38;
        if (v38 == v35)
        {
          return;
        }
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }
}

uint64_t sub_23A930E4C(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v46 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v5 = 0;
    v41 = v3 & 0xC000000000000001;
    v37 = v3 + 32;
    v38 = v3 & 0xFFFFFFFFFFFFFF8;
    v43 = MEMORY[0x277D84F90];
    v39 = i;
    v40 = v3;
    while (1)
    {
      if (v41)
      {
        v6 = MEMORY[0x23EE90360](v5, v3);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v5 >= *(v38 + 16))
      {
        goto LABEL_50;
      }

      v6 = *(v37 + 8 * v5);

      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        break;
      }

LABEL_11:
      v8 = *(v6 + 32);
      if (v8 >> 62)
      {
        v9 = sub_23AA0D7F4();
        if (v9)
        {
          goto LABEL_13;
        }

LABEL_45:

        if (v5 == i)
        {
          return v43;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_45;
        }

LABEL_13:
        v42 = v5;

        swift_beginAccess();
        v10 = 0;
        do
        {
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x23EE90360](v10, v8);
              v7 = __OFADD__(v10++, 1);
              if (v7)
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_48;
              }

              v13 = *(v8 + 32 + 8 * v10);

              v7 = __OFADD__(v10++, 1);
              if (v7)
              {
LABEL_47:
                __break(1u);
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }
            }

            sub_23AA0DD14();
            v14 = *(v13 + 5);
            MEMORY[0x23EE907C0](*(v14 + 16));
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = v14 + 32;
              do
              {
                v16 += 8;
                sub_23AA0DD44();
                sub_23AA0DD44();
                --v15;
              }

              while (v15);
            }

            v17 = sub_23AA0DD54();
            v18 = v2[2];
            if (!*(*&v18 + 16))
            {
              break;
            }

            v19 = sub_23A9EDF54(v17);
            if ((v20 & 1) == 0)
            {
              break;
            }

            v21 = *(*(*&v18 + 56) + 8 * v19);
            swift_beginAccess();
            v3 = v21[6];
            v22 = *(v3 + 16);

            if (!v22)
            {
              goto LABEL_36;
            }

            sub_23A9EDF98(v6);
            if (v23)
            {

              goto LABEL_16;
            }

            if (*(*&v21[6] + 16) <= 1uLL)
            {
LABEL_36:
              v30 = *(v6 + 16);
              v31 = v30[2];
              if (v31)
              {
                v32 = v30 + 4;
                while (1)
                {
                  v33 = *v32;
                  v34 = vceq_f32(*v32, v21[2]);
                  if ((v34.i8[0] & 1) == 0 || (v34.i8[4] & 1) == 0)
                  {
                    v35 = vceq_f32(v33, v21[3]);
                    if ((v35.i8[0] & 1) == 0 || (v35.i8[4] & 1) == 0)
                    {
                      break;
                    }
                  }

                  ++v32;
                  if (!--*&v31)
                  {
                    goto LABEL_15;
                  }
                }

                swift_beginAccess();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v44 = v21[6];
                v21[6] = 0x8000000000000000;
                v3 = &v44;
                v12.n128_u64[0] = v33;
                sub_23A9DA2A0(v6, isUniquelyReferenced_nonNull_native, v12);
                v21[6] = v44;
                swift_endAccess();
              }
            }

LABEL_15:

LABEL_16:

            if (v10 == v9)
            {
              goto LABEL_4;
            }
          }

          v24 = v13[2];
          v25 = v13[3];
          type metadata accessor for CDTTriangleEdge();
          *(swift_allocObject() + 48) = MEMORY[0x277D84F98];
          v26 = sub_23A947224(v24, v25);
          sub_23A9305FC(v6);
          sub_23AA0DD14();
          sub_23A947DEC(v45, *(v13 + 5));
          v27 = sub_23AA0DD54();
          swift_beginAccess();

          v28 = swift_isUniquelyReferenced_nonNull_native();
          v44 = v2[2];
          v2[2] = 0x8000000000000000;
          sub_23A9DA3F0(v26, v27, v28);
          v2[2] = v44;
          swift_endAccess();

          v3 = &v46;
          MEMORY[0x23EE8FD70](v29);
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();

          v43 = v46;
        }

        while (v10 != v9);
LABEL_4:

        i = v39;
        v3 = v40;
        v5 = v42;
        if (v42 == v39)
        {
          return v43;
        }
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23A931344()
{

  return swift_deallocClassInstance();
}

__n128 sub_23A9313A0(uint64_t a1)
{
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);
  v2.n128_u64[0] = vsubq_f32(0, *(v1 + 80)).u64[0];
  v2.n128_f32[2] = 0.0 - COERCE_FLOAT(*(v1 + 88));
  v2.n128_u32[3] = 0;
  v5 = v2;
  type metadata accessor for RoomCaptureQuad();
  v3 = swift_allocObject();
  v3[1] = v6;
  v3[2] = v9;
  v3[3] = v8;
  v3[4] = v7;
  result = v5;
  v3[5] = v5;
  return result;
}

double sub_23A931450(__n128 a1, double a2)
{
  v2 = vdupq_lane_s32(0, 0);
  *&v3 = __PAIR64__(HIDWORD(a2), a1.n128_u32[0]);
  v4 = a1;
  v4.n128_u32[3] = v2.u32[3];
  v11 = v4;
  *(&v3 + 1) = __PAIR64__(v2.u32[3], a1.n128_u32[2]);
  v10 = v3;
  v2.i32[0] = LODWORD(a2);
  v5 = v2;
  v5.i32[1] = HIDWORD(a2);
  v5.i32[2] = a1.n128_i32[2];
  a1.n128_u32[0] = LODWORD(a2);
  a1.n128_u32[3] = v2.u32[3];
  v8 = a1;
  v9 = v5;
  type metadata accessor for RoomCaptureQuad();
  v6 = swift_allocObject();
  v6[1] = v11;
  v6[2] = v10;
  v6[3] = v9;
  v6[4] = v8;
  result = 0.0;
  v6[5] = xmmword_23AA12240;
  return result;
}

double sub_23A9314E0(double a1, __n128 a2)
{
  v2 = vdupq_lane_s32(0, 0);
  v3 = v2;
  v3.i32[0] = LODWORD(a1);
  v4 = v3;
  v4.i32[1] = HIDWORD(a1);
  v4.i32[2] = a2.n128_i32[2];
  v11 = v4;
  v2.i64[0] = __PAIR64__(HIDWORD(a1), a2.n128_u32[0]);
  v5 = a2;
  v5.n128_u32[3] = v2.u32[3];
  v2.i32[2] = a2.n128_i32[2];
  v9 = v2;
  v10 = v5;
  a2.n128_u32[0] = LODWORD(a1);
  a2.n128_u32[3] = v3.u32[3];
  v8 = a2;
  type metadata accessor for RoomCaptureQuad();
  v6 = swift_allocObject();
  v6[1] = v11;
  v6[2] = v9;
  v6[3] = v10;
  v6[4] = v8;
  result = 0.0;
  v6[5] = xmmword_23AA12250;
  return result;
}

void CapturedRoomData.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v91 = a1;
  v80 = a2;
  v90 = sub_23AA0D904();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v81 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF270, &qword_23AA13030);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v100 = &v69 - v3;
  v4 = sub_23AA0D014();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0D184();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_23AA0CFD4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_23AA0CFF4();
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v92 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0D174();
  v15 = sub_23AA0D144();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  if (v17 >> 60 == 15)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = sub_23AA0BFC4();
  v20 = v19;
  sub_23A932864(v15, v17);
  sub_23A934B64(&qword_27DFAF278, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_23AA0CFC4();
  v21 = sub_23A934274(v18, v20);
  v22 = v88;
  sub_23A934094(v18, v20, v7, v21);
  sub_23A8EFA00(v18, v20);
  sub_23AA0CFB4();
  v23 = sub_23A8EFA00(v18, v20);
  (*(v5 + 8))(v7, v4, v23);
  sub_23A934B64(&qword_27DFAF280, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v24 = v87;
  v25 = sub_23AA0D004();
  sub_23A9343A8(v25, v26);
  v28 = v27;

  v29 = sub_23A9346C8(v28);
  v31 = v30;

  *&v93[0] = v29;
  *(&v93[0] + 1) = v31;
  v32 = v92;
  sub_23AA0CFE4();
  (*(v86 + 8))(v13, v24);
  v33 = v91;
  __swift_project_boxed_opaque_existential_1(v91, v91[3]);
  sub_23A934778();
  sub_23AA0DD74();
  if (v22)
  {
    (*(v85 + 8))(v32, v84);
    v34 = v90;
    swift_allocError();
    v42 = v41;
    sub_23AA0D8E4();
    (*(v89 + 104))(v42, *MEMORY[0x277D84168], v34);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v33);

    return;
  }

  LOBYTE(v98) = 1;
  v35 = sub_23A9347CC();
  sub_23AA0DAF4();
  v88 = v35;
  v36 = v93[0];
  sub_23A934274(*&v93[0], *(&v93[0] + 1));
  v37 = sub_23A932878(v36, *(&v36 + 1));
  v39 = v38;
  v86 = v36;
  v87 = v37;
  v40 = sub_23AA0CF64();
  v78 = *(&v36 + 1);
  v79 = v43;
  v44 = v40;
  v45 = sub_23A8D6C58(0, &qword_27DFAF298, 0x277CCAAC8);
  v77 = v44;
  sub_23AA0D4F4();
  v75 = v45;
  v76 = v39;
  if (!v99)
  {
    goto LABEL_10;
  }

  sub_23A8EF9F0(&v98, v93);
  sub_23A8D6C58(0, &unk_27DFAF2A0, 0x277D46C70);
  swift_dynamicCast();
  v46 = v96;
  LOBYTE(v98) = 0;
  sub_23AA0DAF4();
  v47 = v93[0];
  sub_23A934274(*&v93[0], *(&v93[0] + 1));
  v48 = sub_23A932878(v47, *(&v47 + 1));
  v73 = v47 >> 64;
  v74 = v47;
  v49 = v48;
  v51 = v50;
  v52 = sub_23AA0CF64();
  v71 = v49;
  v72 = v51;
  v53 = v52;
  v70 = v54;
  sub_23AA0D4F4();
  sub_23A934820(&v98, &v96);
  if (!v97)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_23A8EF9F0(&v96, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF2B0, &unk_23AA13040);
  swift_dynamicCast();
  v55 = sub_23AA0D024();

  v56 = RSKeyframeSequenceFromDictionary();

  if (!v56)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_23AA0C0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
  sub_23A934B64(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v57 = sub_23AA0D034();

  LOBYTE(v96) = 2;
  sub_23AA0DAF4();
  v58 = v93[0];
  sub_23A934274(*&v93[0], *(&v93[0] + 1));
  v59 = sub_23A932878(v58, *(&v58 + 1));
  v61 = v60;
  v69 = sub_23AA0CF64();
  v88 = v62;
  sub_23AA0D4F4();
  if (v95)
  {
    sub_23A8EFA00(v69, v88);
    sub_23A8EFA00(v59, v61);
    sub_23A8EFA00(v53, v70);
    sub_23A8EFA00(v71, v72);
    sub_23A8EFA00(v77, v79);
    sub_23A8EFA00(v87, v76);
    sub_23A8EFA00(v58, *(&v58 + 1));
    sub_23A8EFA00(v74, v73);
    sub_23A8EFA00(v86, v78);
    sub_23A8D50D0(&v98, &unk_27DFB08E0, &qword_23AA13038);
    (*(v82 + 8))(v100, v83);
    (*(v85 + 8))(v92, v84);
    sub_23A8EF9F0(&v94, &v96);
    type metadata accessor for simd_float4x4(0);
    swift_dynamicCast();
    v66 = v93[0];
    v65 = v93[1];
    v68 = v93[2];
    v67 = v93[3];
    v63 = v80;
    *v80 = v57;
    v63[1] = v46;
    *(v63 + 1) = v66;
    *(v63 + 2) = v65;
    *(v63 + 3) = v68;
    *(v63 + 4) = v67;

    v64 = v46;
    __swift_destroy_boxed_opaque_existential_1(v91);

    return;
  }

LABEL_13:
  __break(1u);
}

double sub_23A932864(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23A8EFA00(a1, a2);
  }

  return result;
}

uint64_t sub_23A932878(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v29[3] = MEMORY[0x277CC9318];
      v29[4] = MEMORY[0x277CC9300];
      v29[0] = a1;
      v29[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x277CC9318]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v27, 0, 14);
          v14 = v27;
          v13 = v27;
          goto LABEL_33;
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = sub_23AA0BD34();
        if (v17)
        {
          v18 = sub_23AA0BD54();
          v10 = v15 - v18;
          if (__OFSUB__(v15, v18))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v17 += v10;
        }

        v5 = __OFSUB__(v16, v15);
        v19 = v16 - v15;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v27[0] = *v9;
        LOWORD(v27[1]) = v11;
        BYTE2(v27[1]) = BYTE2(v11);
        BYTE3(v27[1]) = BYTE3(v11);
        BYTE4(v27[1]) = BYTE4(v11);
        BYTE5(v27[1]) = BYTE5(v11);
        v13 = v27 + BYTE6(v11);
        v14 = v27;
LABEL_33:
        sub_23A934000(v14, v13, &v28);
        v7 = v28;
        __swift_destroy_boxed_opaque_existential_1(v29);
        return v7;
      }

      v20 = v10;
      v21 = v10 >> 32;
      v19 = v21 - v20;
      if (v21 >= v20)
      {
        v17 = sub_23AA0BD34();
        if (!v17)
        {
LABEL_25:
          v23 = sub_23AA0BD44();
          if (v23 >= v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = v23;
          }

          v25 = (v24 + v17);
          if (v17)
          {
            v13 = v25;
          }

          else
          {
            v13 = 0;
          }

          v14 = v17;
          goto LABEL_33;
        }

        v22 = sub_23AA0BD54();
        if (!__OFSUB__(v20, v22))
        {
          v17 += v20 - v22;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_23A8EFA00(a1, a2);
  v7 = sub_23AA0CF94();
  sub_23A934B64(&qword_27DFAF328, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  swift_willThrow();
  return v7;
}

void CapturedRoomData.encode(to:)(void *a1)
{
  v123 = a1;
  v132 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2D8, &qword_23AA15C80);
  MEMORY[0x28223BE20](v2 - 8);
  v111 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v117 = &v106 - v5;
  MEMORY[0x28223BE20](v6);
  v118 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2E0, &qword_23AA13070);
  v126 = *(v8 - 8);
  v127 = v8;
  MEMORY[0x28223BE20](v8);
  v129 = &v106 - v9;
  v10 = sub_23AA0D014();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23AA0D184();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23AA0CFD4();
  v119 = *(v18 - 1);
  v120 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23AA0CFF4();
  v22 = *(v21 - 8);
  v124 = v21;
  v125 = v22;
  MEMORY[0x28223BE20](v21);
  v128 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v1 + 8);
  v116 = *v1;
  v121 = v24;
  v25 = *(v1 + 32);
  v115 = *(v1 + 16);
  v114 = v25;
  v26 = *(v1 + 64);
  v113 = *(v1 + 48);
  v112 = v26;
  sub_23AA0D174();
  v27 = sub_23AA0D144();
  v29 = v28;
  (*(v15 + 8))(v17, v14);
  if (v29 >> 60 == 15)
  {
    __break(1u);
  }

  v30 = sub_23AA0BFC4();
  v32 = v31;
  sub_23A932864(v27, v29);
  sub_23A934B64(&qword_27DFAF278, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_23AA0CFC4();
  v33 = sub_23A934274(v30, v32);
  v34 = v122;
  sub_23A934094(v30, v32, v13, v33);
  v122 = v34;
  sub_23A8EFA00(v30, v32);
  sub_23AA0CFB4();
  v35 = sub_23A8EFA00(v30, v32);
  (*(v11 + 8))(v13, v10, v35);
  sub_23A934B64(&qword_27DFAF280, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v36 = v120;
  v37 = sub_23AA0D004();
  sub_23A9343A8(v37, v38);
  v40 = v39;

  v41 = sub_23A9346C8(v40);
  v43 = v42;

  *&v131[0] = v41;
  *(&v131[0] + 1) = v43;
  v44 = v128;
  sub_23AA0CFE4();
  (*(v119 + 8))(v20, v36);
  __swift_project_boxed_opaque_existential_1(v123, v123[3]);
  sub_23A934778();
  v45 = v129;
  sub_23AA0DD84();
  v46 = objc_opt_self();
  *&v131[0] = 0;
  v47 = [v46 archivedDataWithRootObject:v121 requiringSecureCoding:0 error:v131];
  v48 = *&v131[0];
  v49 = v45;
  v50 = v44;
  if (!v47)
  {
    v64 = v48;
    v63 = sub_23AA0BE74();

    swift_willThrow();
    (*(v126 + 8))(v49, v127);
    (*(v125 + 8))(v44, v124);
    goto LABEL_7;
  }

  v121 = v46;
  v51 = sub_23AA0BFE4();
  v53 = v52;

  v123 = v51;
  *&v131[0] = v51;
  *(&v131[0] + 1) = v53;
  v54 = sub_23AA0CF84();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v57 = v55 + 56;
  v58 = v118;
  v56(v118, 1, 1, v54);
  v59 = sub_23A934890();
  v60 = v122;
  v61 = sub_23AA0CF74();
  v63 = v60;
  if (v60)
  {
    sub_23A8D50D0(v58, &qword_27DFAF2D8, &qword_23AA15C80);
    (*(v126 + 8))(v129, v127);
    (*(v125 + 8))(v50, v124);
    sub_23A8EFA00(v123, v53);
LABEL_7:
    v68 = sub_23AA0D924();
    swift_allocError();
    v70 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2E8, &qword_23AA13078);
    v70[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF2F0, &qword_23AA13080);
    *v70 = &type metadata for CapturedRoomData;
    sub_23AA0D8E4();
    (*(*(v68 - 8) + 104))(v70, *MEMORY[0x277D841A8], v68);
    swift_willThrow();

    return;
  }

  v65 = v61;
  v110 = v59;
  v119 = v57;
  v120 = v56;
  v122 = v53;
  v66 = v62;
  sub_23A8D50D0(v58, &qword_27DFAF2D8, &qword_23AA15C80);
  *&v131[0] = v65;
  *(&v131[0] + 1) = v66;
  v130 = 1;
  sub_23A934274(v65, v66);
  v67 = sub_23A9348E4();
  sub_23AA0DB74();
  v109 = v67;
  v118 = v66;
  sub_23A8EFA00(*&v131[0], *(&v131[0] + 1));
  sub_23AA0C0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
  sub_23A934B64(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v71 = sub_23AA0D024();
  v72 = RSKeyframeSequenceToDictionary();

  v73 = v123;
  if (v72)
  {
    v74 = sub_23AA0D034();
  }

  else
  {
    v74 = 0;
  }

  v75 = v117;
  v76 = v121;
  *&v131[0] = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF308, &qword_23AA13088);
  v77 = sub_23AA0D654();

  *&v131[0] = 0;
  v78 = [v76 archivedDataWithRootObject:v77 requiringSecureCoding:1 error:v131];
  swift_unknownObjectRelease();
  v79 = *&v131[0];
  if (!v78)
  {
    v84 = v79;
    v63 = sub_23AA0BE74();

    swift_willThrow();
    v85 = v73;
    v86 = v122;
LABEL_14:
    sub_23A8EFA00(v85, v86);
    v87.n128_f64[0] = sub_23A8EFA00(v65, v118);
    (*(v126 + 8))(v129, v127, v87);
    (*(v125 + 8))(v128, v124);
    goto LABEL_7;
  }

  v80 = sub_23AA0BFE4();
  v82 = v81;

  *&v131[0] = v80;
  *(&v131[0] + 1) = v82;
  v120(v75, 1, 1, v54);
  v83 = sub_23AA0CF74();
  v116 = v54;
  v117 = v80;
  v121 = v82;
  v89 = v88;
  v90 = v83;
  sub_23A8D50D0(v75, &qword_27DFAF2D8, &qword_23AA15C80);
  *&v131[0] = v90;
  *(&v131[0] + 1) = v89;
  v130 = 0;
  sub_23A934274(v90, v89);
  sub_23AA0DB74();
  v107 = v90;
  v108 = v89;
  sub_23A8EFA00(*&v131[0], *(&v131[0] + 1));
  v131[0] = v115;
  v131[1] = v114;
  v131[2] = v113;
  v131[3] = v112;
  type metadata accessor for simd_float4x4(0);
  v91 = sub_23AA0DC04();
  *&v131[0] = 0;
  v92 = [v76 archivedDataWithRootObject:v91 requiringSecureCoding:0 error:v131];
  swift_unknownObjectRelease();
  v93 = *&v131[0];
  v94 = v122;
  if (!v92)
  {
    v99 = v93;
    v63 = sub_23AA0BE74();

    swift_willThrow();
    sub_23A8EFA00(v117, v121);
    sub_23A8EFA00(v123, v94);
    v85 = v107;
    v86 = v108;
    goto LABEL_14;
  }

  v95 = sub_23AA0BFE4();
  v97 = v96;

  *&v131[0] = v95;
  *(&v131[0] + 1) = v97;
  v98 = v111;
  v120(v111, 1, 1, v116);
  v100 = sub_23AA0CF74();
  v102 = v101;
  v120 = v65;
  sub_23A8D50D0(v98, &qword_27DFAF2D8, &qword_23AA15C80);
  *&v131[0] = v100;
  *(&v131[0] + 1) = v102;
  v130 = 2;
  sub_23A934274(v100, v102);
  v103 = v127;
  v104 = v129;
  sub_23AA0DB74();
  sub_23A8EFA00(v95, v97);
  sub_23A8EFA00(v117, v121);
  sub_23A8EFA00(v123, v94);
  sub_23A8EFA00(v100, v102);
  sub_23A8EFA00(v107, v108);
  sub_23A8EFA00(v120, v118);
  v105 = sub_23A8EFA00(*&v131[0], *(&v131[0] + 1));
  (*(v126 + 8))(v104, v103, v105);
  (*(v125 + 8))(v128, v124);
}

uint64_t sub_23A933B50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6573734165726F63;
  v4 = 0x800000023AA1CC90;
  if (v2 == 1)
  {
    v5 = 0xE900000000000074;
  }

  else
  {
    v3 = 0xD000000000000018;
    v5 = 0x800000023AA1CC90;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656D61726679656BLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000073;
  }

  v8 = 0x6573734165726F63;
  if (*a2 == 1)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v8 = 0xD000000000000018;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656D61726679656BLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000073;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A933C44()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A933CEC(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A933D80()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

unint64_t sub_23A933E24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A934B18(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23A933E54(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = *v1;
  v4 = 0x6573734165726F63;
  v5 = 0x800000023AA1CC90;
  if (v3 == 1)
  {
    v5 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656D61726679656BLL;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

unint64_t sub_23A933EB8()
{
  v1 = 0x6573734165726F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D61726679656BLL;
  }
}

unint64_t sub_23A933F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A934B18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A933F58(uint64_t a1)
{
  v2 = sub_23A934778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A933F94(uint64_t a1)
{
  v2 = sub_23A934778();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *sub_23A934000@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_23A934510(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_23A9345C8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_23A934644(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_23A934094(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      sub_23AA0D014();
      sub_23A934B64(&qword_27DFAF278, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_23AA0CFA4();
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_23A9342C8(v6, v7);
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_23A9342C8(v6, v7);
  }

  sub_23AA0D014();
  sub_23A934B64(&qword_27DFAF278, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_23AA0CFA4();
}

double sub_23A934274(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_23A9342C8(uint64_t a1, uint64_t a2)
{
  result = sub_23AA0BD34();
  if (!result || (result = sub_23AA0BD54(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_23AA0BD44();
      sub_23AA0D014();
      sub_23A934B64(&qword_27DFAF278, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_23AA0CFA4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23A9343A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + a1 + 32);
      v7 = (MEMORY[0x277D84F90] + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF340, &unk_23AA19BA0);
          v13 = swift_allocObject();
          v14 = 2 * _swift_stdlib_malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v5);
    v21 = v20 - v5;
    if (!v18)
    {
      v3[2] = v21;
      return;
    }

LABEL_32:
    __break(1u);
  }
}

uint64_t sub_23A934510(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_23A9345C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_23AA0BD64();
  swift_allocObject();
  result = sub_23AA0BD24();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23AA0BFD4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_23A934644(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_23AA0BD64();
  swift_allocObject();
  result = sub_23AA0BD24();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23A9346C8(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF330, &unk_23AA13280);
  v10 = sub_23A934BAC();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_23A934000(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_23A934778()
{
  result = qword_27DFAF288;
  if (!qword_27DFAF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF288);
  }

  return result;
}

unint64_t sub_23A9347CC()
{
  result = qword_27DFAF290;
  if (!qword_27DFAF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF290);
  }

  return result;
}

uint64_t sub_23A934820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB08E0, &qword_23AA13038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23A934890()
{
  result = qword_27DFAF2F8;
  if (!qword_27DFAF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF2F8);
  }

  return result;
}

unint64_t sub_23A9348E4()
{
  result = qword_27DFAF300;
  if (!qword_27DFAF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF300);
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

uint64_t sub_23A934954(uint64_t *a1, int a2)
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

uint64_t sub_23A93499C(uint64_t result, int a2, int a3)
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

unint64_t sub_23A934A14()
{
  result = qword_27DFAF310;
  if (!qword_27DFAF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF310);
  }

  return result;
}

unint64_t sub_23A934A6C()
{
  result = qword_27DFAF318;
  if (!qword_27DFAF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF318);
  }

  return result;
}

unint64_t sub_23A934AC4()
{
  result = qword_27DFAF320;
  if (!qword_27DFAF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF320);
  }

  return result;
}

unint64_t sub_23A934B18(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A934B64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23A934BAC()
{
  result = qword_27DFAF338;
  if (!qword_27DFAF338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAF330, &unk_23AA13280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF338);
  }

  return result;
}

uint64_t sub_23A934C18()
{
  if (*v0)
  {
    return 0x7463656A626FLL;
  }

  else
  {
    return 0x65636166727573;
  }
}

void sub_23A934C50(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636166727573 && a2 == 0xE700000000000000;
  if (v6 || (sub_23AA0DBD4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23AA0DBD4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_23A934D34(uint64_t a1)
{
  v2 = sub_23A93A45C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A934D70(uint64_t a1)
{
  v2 = sub_23A93A45C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A934E00(uint64_t a1)
{
  v2 = sub_23A93A4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A934E3C(uint64_t a1)
{
  v2 = sub_23A93A4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A934E78()
{
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](0);
  return sub_23AA0DD54();
}

uint64_t sub_23A934EBC()
{
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](0);
  return sub_23AA0DD54();
}

void sub_23A934EFC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_23AA0DBD4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_23A934F7C(uint64_t a1)
{
  v2 = sub_23A93A558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A934FB8(uint64_t a1)
{
  v2 = sub_23A93A558();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CapturedElementCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF350, &qword_23AA13290);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF358, &qword_23AA13298);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF360, &qword_23AA132A0);
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v17 - v10;
  v22 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A93A45C();
  sub_23AA0DD84();
  if (v12)
  {
    v26 = 1;
    sub_23A93A4B0();
    v13 = v21;
    sub_23AA0DB24();
    v25 = v22;
    sub_23A93A504();
    v14 = v20;
    sub_23AA0DB74();
    (*(v19 + 8))(v5, v14);
  }

  else
  {
    v24 = 0;
    sub_23A93A558();
    v13 = v21;
    sub_23AA0DB24();
    v23 = v22;
    sub_23A93A5AC();
    v15 = v18;
    sub_23AA0DB74();
    (*(v17 + 8))(v8, v15);
  }

  return (*(v9 + 8))(v11, v13);
}

uint64_t CapturedElementCategory.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF390, &qword_23AA132A8);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF398, &qword_23AA132B0);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A0, &qword_23AA132B8);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  v12 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_23A93A45C();
  v13 = v27;
  sub_23AA0DD74();
  if (!v13)
  {
    v27 = v9;
    v14 = v25;
    v15 = sub_23AA0DB14();
    if (*(v15 + 16) == 1)
    {
      v16 = v26;
      v29 = *(v15 + 32);
      if (v29)
      {
        v33 = 1;
        sub_23A93A4B0();
        sub_23AA0DA74();
        sub_23A93A600();
        sub_23AA0DAF4();
        (*(v24 + 8))(v5, v3);
        (*(v27 + 8))(v11, v16);
        swift_unknownObjectRelease();
        v17 = v32;
      }

      else
      {
        v31 = 0;
        sub_23A93A558();
        sub_23AA0DA74();
        sub_23A93A654();
        sub_23AA0DAF4();
        (*(v23 + 8))(v8, v6);
        (*(v27 + 8))(v11, v16);
        swift_unknownObjectRelease();
        v17 = v30;
      }

      *v14 = v17;
      v14[1] = v29;
    }

    else
    {
      v18 = sub_23AA0D904();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3A8, &qword_23AA132C0);
      *v20 = &type metadata for CapturedElementCategory;
      v21 = v26;
      sub_23AA0DA84();
      sub_23AA0D8E4();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
      swift_willThrow();
      (*(v27 + 8))(v11, v21);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_23A9357E0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A935814()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A935848()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A93587C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A9358E4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23A935914@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void sub_23A935934(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_23A935944()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23AA0DD14();
  sub_23AA0D1D4();
  sub_23AA0DD34();
  if (v2 != 1)
  {
    MEMORY[0x23EE907C0](v1);
  }

  return sub_23AA0DD54();
}

uint64_t sub_23A9359D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_23AA0D1D4();
  if (v3 == 1)
  {
    return sub_23AA0DD34();
  }

  sub_23AA0DD34();
  return MEMORY[0x23EE907C0](v2);
}

uint64_t sub_23A935A34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23AA0DD14();
  sub_23AA0D1D4();
  sub_23AA0DD34();
  if (v2 != 1)
  {
    MEMORY[0x23EE907C0](v1);
  }

  return sub_23AA0DD54();
}

void *sub_23A935ABC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_23A935AD4(uint64_t a1)
{
  v2 = sub_23A93A6A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A935B10(uint64_t a1)
{
  v2 = sub_23A93A6A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A935B4C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_23AA0DBD4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void CapturedRoom.AttributesCodableRepresentation.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3C0, &qword_23AA132C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A93A6A8();
  sub_23AA0DD74();
  v9 = v2;
  if (!v2)
  {
    v36 = a2;
    v37 = a1;
    v10 = 0;
    v39 = MEMORY[0x277D84F90];
    v41 = v6;
    while (1)
    {
      LOBYTE(v49) = *(&unk_284D805E0 + v10 + 32);
      v11 = CapturedRoom.Object.Category.supportedAttributeTypes.getter();
      v12 = v11;
      v13 = *(v11 + 16);
      if (!v13)
      {
        goto LABEL_4;
      }

      v14 = 0;
      v43 = *(v11 + 16);
      v44 = v11 + 32;
      v38 = v13 - 1;
      v40 = v10;
      v42 = v11;
      do
      {
        v15 = v14;
        v16 = v43;
        while (1)
        {
          if (v15 >= *(v12 + 16))
          {
            __break(1u);
            return;
          }

          v45 = *(v44 + 16 * v15);
          v49 = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3D0, &qword_23AA132D0);
          *&v49 = sub_23AA0D1A4();
          *(&v49 + 1) = v17;
          v50 = 0;
          v51 = 1;
          v18 = sub_23AA0DA94();
          if (v9)
          {

            (*(v41 + 8))(v8, v5);

            a1 = v37;
            goto LABEL_21;
          }

          v20 = v18;
          v21 = v19;

          if (v21)
          {
            break;
          }

LABEL_8:
          if (v16 == ++v15)
          {
            v10 = v40;
            v6 = v41;
            goto LABEL_4;
          }
        }

        v52 = 0;
        v22 = v8;
        v23 = v5;
        v46 = v20;
        v47 = v21;
        v24 = v45;
        v25 = sub_23AA0D664();
        v26 = *(v25 - 8);
        MEMORY[0x28223BE20](v25);
        v28 = &v35 - v27;
        sub_23AA0D284();
        v29 = *(v24 - 8);
        if ((*(v29 + 48))(v28, 1, v24) == 1)
        {
          (*(v26 + 8))(v28, v25);
          v5 = v23;
          v8 = v22;
          v9 = v52;
          v12 = v42;
          v16 = v43;
          goto LABEL_8;
        }

        *&v48[3] = v45;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
        (*(v29 + 32))(boxed_opaque_existential_1, v28, v24);
        sub_23A8CAA3C(v48, &v49);
        sub_23A8CA9D8(&v49, v48);
        v31 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_23A939C08(0, v31[2] + 1, 1, v31, &qword_27DFAF680, &qword_23AA14418, &qword_27DFAF688, &qword_23AA14420);
        }

        v5 = v23;
        v8 = v22;
        v33 = v31[2];
        v32 = v31[3];
        v9 = v52;
        v12 = v42;
        if (v33 >= v32 >> 1)
        {
          v31 = sub_23A939C08((v32 > 1), v33 + 1, 1, v31, &qword_27DFAF680, &qword_23AA14418, &qword_27DFAF688, &qword_23AA14420);
        }

        v14 = v15 + 1;
        __swift_destroy_boxed_opaque_existential_1(&v49);
        v31[2] = v33 + 1;
        v39 = v31;
        sub_23A8CAA3C(v48, &v31[5 * v33 + 4]);
        v10 = v40;
        v6 = v41;
      }

      while (v38 != v15);
LABEL_4:
      ++v10;

      if (v10 == 16)
      {
        (*(v6 + 8))(v8, v5);
        *v36 = v39;
        v34 = v37;
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  v34 = a1;
LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t CapturedRoom.AttributesCodableRepresentation.encode(to:)(void *a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3D8, &qword_23AA132D8);
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v12 - v4;
  v6 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A93A6A8();
  result = sub_23AA0DD84();
  v8 = *(v6 + 16);
  if (!v8)
  {
    return (*(v12 + 8))(v5, v20);
  }

  v9 = 0;
  v10 = v6 + 32;
  while (v9 < *(v6 + 16))
  {
    sub_23A8CA9D8(v10, v17);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_23AA0D274();
    __swift_project_boxed_opaque_existential_1(v17, v18);
    DynamicType = swift_getDynamicType();
    v14 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3D0, &qword_23AA132D0);
    DynamicType = sub_23AA0D1A4();
    v14 = v11;
    v15 = 0;
    v16 = 1;
    sub_23AA0DB34();
    if (v2)
    {

      (*(v12 + 8))(v5, v20);
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }

    ++v9;
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v10 += 40;
    if (v8 == v9)
    {
      return (*(v12 + 8))(v5, v20);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A936390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

double sub_23A9363FC(uint64_t a1)
{
  sub_23A8CA9D8(v1, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3D0, &qword_23AA132D0);
  sub_23AA0D1A4();
  sub_23AA0D1D4();

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_23AA0D274();
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A9364F8()
{
  sub_23AA0DD14();
  sub_23A8CA9D8(v0, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF3D0, &qword_23AA132D0);
  sub_23AA0D1A4();
  sub_23AA0D1D4();

  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_23AA0D274();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

BOOL sub_23A9365EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23A9106D0();
  v3 = sub_23AA0D054();
  return v3 == sub_23AA0D054();
}

uint64_t sub_23A93665C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v7);
  if (BYTE1(v7) <= 0xFEu)
  {
    v7 = sub_23AA0D1A4();
    v8 = v3;
    MEMORY[0x23EE8FCA0](45, 0xE100000000000000);
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v4 = sub_23AA0D1A4();
    MEMORY[0x23EE8FCA0](v4);
  }

  else
  {
    v7 = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v7 = sub_23AA0D1A4();
    v8 = v2;
  }

  MEMORY[0x23EE8FCA0](45, 0xE100000000000000);
  sub_23AA0D274();
  MEMORY[0x23EE8FCA0](DynamicType);

  return v7;
}

uint64_t ChairType.shortIdentifier.getter()
{
  v1 = 0x6843676E696E6964;
  v2 = 0x6C6576697773;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    v1 = 0x6C6F6F7473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

RoomPlan::ChairType_optional __swiftcall ChairType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChairType.rawValue.getter()
{
  v1 = 0x676E696E6964;
  v2 = 0x6C6576697773;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    v1 = 0x6C6F6F7473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A936924()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A9369E4(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A936A90()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A936B58(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x676E696E6964;
  v4 = 0xE600000000000000;
  v5 = 0x6C6576697773;
  if (*v1 != 2)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  if (*v1)
  {
    v3 = 0x6C6F6F7473;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23A936BD4()
{
  v1 = 0x6843676E696E6964;
  v2 = 0x6C6576697773;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    v1 = 0x6C6F6F7473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t ChairLegType.shortIdentifier.getter()
{
  v1 = 0x7367654C72617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7367654C72756F66;
  }
}

RoomPlan::ChairLegType_optional __swiftcall ChairLegType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ChairLegType.rawValue.getter()
{
  v1 = 1918989427;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1920298854;
  }
}

uint64_t sub_23A936D84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1918989427;
  if (v2 != 1)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1920298854;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1918989427;
  if (*a2 != 1)
  {
    v8 = 0x69746E6564696E75;
    v3 = 0xEC00000064656966;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1920298854;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A936E7C()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A936F18(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A936FA0()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A937044(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1918989427;
  if (v2 != 1)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1920298854;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_23A9370A8()
{
  v1 = 0x7367654C72617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7367654C72756F66;
  }
}

uint64_t ChairArmType.shortIdentifier.getter()
{
  if (*v0)
  {
    return 0x736D72416F6ELL;
  }

  else
  {
    return 0x736D724177;
  }
}

uint64_t ChairArmType.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E697373696DLL;
  }

  else
  {
    return 0x676E697473697865;
  }
}

double sub_23A9371B4(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

void sub_23A937234(uint64_t *a1@<X8>)
{
  v2 = 0x676E697473697865;
  if (*v1)
  {
    v2 = 0x676E697373696DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23A937274()
{
  if (*v0)
  {
    return 0x736D72416F6ELL;
  }

  else
  {
    return 0x736D724177;
  }
}

uint64_t ChairBackType.shortIdentifier.getter()
{
  if (*v0)
  {
    return 0x6B6361426F6ELL;
  }

  else
  {
    return 0x6B63614277;
  }
}

uint64_t sub_23A937304(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E697373696DLL;
  }

  else
  {
    v3 = 0x676E697473697865;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E697373696DLL;
  }

  else
  {
    v5 = 0x676E697473697865;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23AA0DBD4();
  }

  return v8 & 1;
}

uint64_t sub_23A9373AC()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A937430()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A9374BC()
{
  if (*v0)
  {
    return 0x6B6361426F6ELL;
  }

  else
  {
    return 0x6B63614277;
  }
}

unint64_t SofaType.shortIdentifier.getter()
{
  v1 = *v0;
  v2 = 0x75676E6174636572;
  v3 = 0xD000000000000010;
  v4 = 0x6553656C676E6973;
  if (v1 != 3)
  {
    v4 = 0x69746E6564696E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465706168536CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

RoomPlan::SofaType_optional __swiftcall SofaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23A937634()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A937730(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A937818()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A93791C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000072616CLL;
  v4 = 0x75676E6174636572;
  v5 = 0x800000023AA1CFD0;
  v6 = 0xD000000000000010;
  v7 = 0xEA00000000007461;
  v8 = 0x6553656C676E6973;
  if (v2 != 3)
  {
    v8 = 0x69746E6564696E75;
    v7 = 0xEC00000064656966;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6465706168536CLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_23A9379E0()
{
  v1 = *v0;
  v2 = 0x75676E6174636572;
  v3 = 0xD000000000000010;
  v4 = 0x6553656C676E6973;
  if (v1 != 3)
  {
    v4 = 0x69746E6564696E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465706168536CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TableType.shortIdentifier.getter()
{
  v1 = 0x6154676E696E6964;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6154656566666F63;
  }
}

RoomPlan::TableType_optional __swiftcall TableType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TableType.rawValue.getter()
{
  v1 = 0x676E696E6964;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656566666F63;
  }
}

uint64_t sub_23A937BD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E696E6964;
  if (v2 != 1)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x656566666F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x676E696E6964;
  if (*a2 != 1)
  {
    v8 = 0x69746E6564696E75;
    v3 = 0xEC00000064656966;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656566666F63;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A937CD4()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A937D78(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A937E08()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A937EB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E696E6964;
  if (v2 != 1)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656566666F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}