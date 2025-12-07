uint64_t sub_227CF78E0()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v2 + 320) = v6;
  *(v2 + 328) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_148();
    v8(v7);
    sub_227B26090(v2 + 16);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_269();
    v10(v9);
    sub_227B26090(v2 + 16);
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CF7A74()
{
  v1 = v0[40];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = *(v3 + 16);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v6(v63[23], v4, v63[21]);
      v8 = sub_227D4B1E8();
      v10 = v9;
      v11 = OUTLINED_FUNCTION_141();
      v12(v11);
      if (v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = OUTLINED_FUNCTION_54();
          v7 = sub_227B25F88(v15, v16, v17, v18);
        }

        v13 = *(v7 + 2);
        if (v13 >= *(v7 + 3) >> 1)
        {
          OUTLINED_FUNCTION_117();
          v7 = sub_227B25F88(v19, v20, v21, v22);
        }

        *(v7 + 2) = v13 + 1;
        v14 = &v7[16 * v13];
        *(v14 + 4) = v8;
        *(v14 + 5) = v10;
      }

      v4 += v5;
      --v2;
    }

    while (v2);
    v0 = v63;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v23 = v0[41];
  v24 = v0[29];
  v25 = swift_task_alloc();
  *(v25 + 16) = v24;
  sub_227CF6C10(sub_227CFBD34, v25, v7);
  if (v23)
  {
    v27 = v0[28];
    v26 = v0[29];
    v28 = v0[27];

    (*(v27 + 8))(v26, v28);
    OUTLINED_FUNCTION_5_27();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X1, X16 }
  }

  sub_227D4A958();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  sub_227B69F68(&qword_27D7E7148, &qword_27D7E6938, &qword_227D4E760);
  sub_227B69F68(&qword_27D7E7150, &qword_27D7E6938, &qword_227D4E760);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v0[37];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_54();
    sub_227CFB864();
    v36 = v61;
  }

  OUTLINED_FUNCTION_72_6();
  if (v37)
  {
    OUTLINED_FUNCTION_117();
    sub_227CFB864();
    v36 = v62;
  }

  v38 = OUTLINED_FUNCTION_3_26(v0[19]);
  v39(v38);
  v40 = OUTLINED_FUNCTION_42();
  v41(v40);
  v42 = v0[36] + 1;
  v0[36] = v42;
  v0[37] = v36;
  v43 = v0[34];
  if (v42 == v0[32])
  {
LABEL_23:

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_17_16();
  result = v44();
  v46 = *(v43 + 16);
  if (v42 == v46)
  {
    (*(v0[28] + 8))(v0[30], v0[27]);
    goto LABEL_23;
  }

  if (v42 >= v46)
  {
    __break(1u);
  }

  else
  {
    v49 = v0[30];
    v50 = v0[31];
    v51 = v0[28];
    v52 = v0[27];
    v53 = v63[16];
    v63[38] = *(v0[34] + 16 * v42 + 40);
    v54 = *(v51 + 32);
    v54(v50, v49, v52);
    v55 = OUTLINED_FUNCTION_87_1();
    (v54)(v55);
    sub_227B23878(v53 + 40, (v63 + 2));
    sub_227D4CE58();
    sub_227BD2890();
    v56 = swift_task_alloc();
    v63[39] = v56;
    *v56 = v63;
    v56[1] = sub_227CF78E0;
    OUTLINED_FUNCTION_2_37(v63[26]);
    OUTLINED_FUNCTION_16_0();

    return sub_227B7BC58(v57, v58, v59);
  }

  return result;
}

uint64_t sub_227CF807C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  (*(v10[28] + 8))(v10[29], v10[27]);
  OUTLINED_FUNCTION_5_27();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_227CF8130()
{
  OUTLINED_FUNCTION_6();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v7);
  v1[18] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8360, &unk_227D58BB0);
  v1[19] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[20] = v9;
  v1[21] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  OUTLINED_FUNCTION_5(v10);
  v1[22] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4A478();
  v1[23] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[24] = v12;
  v1[25] = OUTLINED_FUNCTION_121();
  v1[26] = swift_task_alloc();
  v13 = sub_227D4AE88();
  v1[27] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[28] = v14;
  v1[29] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[30] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[31] = v16;
  v1[32] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[33] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[34] = v18;
  v1[35] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227CF8394()
{
  v1 = *(*(v0 + 96) + 16);
  *(v0 + 352) = *MEMORY[0x277D0D290];
  v2 = *(v0 + 136);
  *(v0 + 356) = *MEMORY[0x277D0D298];
  *(v0 + 360) = *MEMORY[0x277D0D2A0];
  v3 = MEMORY[0x277D84F90];
  *(v0 + 296) = 0;
  *(v0 + 304) = v3;
  *(v0 + 288) = v1;
  if (!v1)
  {

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_23();

    __asm { BRAA            X2, X16 }
  }

  v4 = *(v0 + 280);
  OUTLINED_FUNCTION_17_16();
  v7(v4, v5 + v6);
  sub_227B23878(v2 + 40, v0 + 16);
  sub_227D4A7E8();
  sub_227BD2890();
  v10 = OUTLINED_FUNCTION_58_9();
  (*(v11 + 8))(v10);
  result = sub_227D4A7D8();
  *(v0 + 312) = v13;
  if (__OFSUB__(*(v0 + 112), *(v0 + 104)))
  {
    __break(1u);
  }

  else
  {
    v18 = *(v0 + 176);
    sub_227BCBB80(*(v0 + 128), v18);
    OUTLINED_FUNCTION_10_16(v18);
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_34_10();
      v21(v20);
      OUTLINED_FUNCTION_10_16(v18);
      if (!v19)
      {
        sub_227B4DB00(*(v0 + 176), &qword_27D7E82E0, &unk_227D61A90);
      }
    }

    else
    {
      v22 = OUTLINED_FUNCTION_54_10();
      v23(v22);
    }

    v24 = *(v0 + 356);
    v25 = *(v0 + 200);
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v28 = OUTLINED_FUNCTION_52_9();
    v29(v28);
    if ((*(v27 + 88))(v25, v26) == v24)
    {
      v30 = 0xE500000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_50_9();
      if (v19)
      {
        v30 = 0xE90000000000006BLL;
      }

      else
      {
        if (v31 != *(v0 + 352))
        {
          v43 = *(v0 + 224);
          v44 = *(v0 + 208);
          v52 = *(v0 + 216);
          v53 = *(v0 + 232);
          v45 = *(v0 + 192);
          v46 = *(v0 + 200);
          v47 = *(v0 + 184);
          sub_227D4D668();

          OUTLINED_FUNCTION_8_16();
          v48 = sub_227D4A468();
          MEMORY[0x22AAA5DA0](v48);

          sub_227D49E08();
          OUTLINED_FUNCTION_0_56();
          sub_227B12A9C(v49, v50);
          OUTLINED_FUNCTION_208();
          swift_allocError();
          OUTLINED_FUNCTION_147();
          sub_227D49D98();

          swift_willThrow();
          v51 = *(v45 + 8);
          v51(v46, v47);

          v51(v44, v47);
          (*(v43 + 8))(v53, v52);
          sub_227B26090(v0 + 16);

          v14 = OUTLINED_FUNCTION_24_12();
          v15(v14);

          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_23();

          __asm { BRAA            X1, X16 }
        }

        v30 = 0xE800000000000000;
      }
    }

    *(v0 + 320) = v30;
    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
    v32 = swift_task_alloc();
    *(v0 + 328) = v32;
    *v32 = v0;
    OUTLINED_FUNCTION_56_7(v32);
    OUTLINED_FUNCTION_2_37(v33);
    OUTLINED_FUNCTION_23();

    return sub_227B7C728(v34, v35, v36, v37, v38, v39, v40, v41);
  }

  return result;
}

uint64_t sub_227CF88B4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v2[42] = v6;
  v2[43] = v0;

  if (v0)
  {
    v8 = v2[28];
    v7 = v2[29];
    v9 = v2[27];

    (*(v8 + 8))(v7, v9);
    sub_227B26090((v2 + 2));
  }

  else
  {

    v10 = OUTLINED_FUNCTION_269();
    v11(v10);
    sub_227B26090((v2 + 2));
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227CF8A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = *(v18 + 336);
  v20 = *(v18 + 344);
  v21 = *(v18 + 280);
  v22 = swift_task_alloc();
  *(v22 + 16) = v21;
  sub_227CF6DE8(sub_227CFBD70, v22, v19);
  if (v20)
  {

LABEL_12:
    v52 = OUTLINED_FUNCTION_24_12();
    v53(v52);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_90();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  sub_227D4A958();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_227D4A0E8();
  v27 = MEMORY[0x277D0D080];
  sub_227B12A9C(&qword_27D7E83C0, MEMORY[0x277D0D080]);
  OUTLINED_FUNCTION_14_16();
  sub_227B12A9C(v28, v27);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v18 + 304);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_54();
    sub_227CFB864();
    v30 = v97;
  }

  OUTLINED_FUNCTION_72_6();
  if (v31)
  {
    OUTLINED_FUNCTION_117();
    sub_227CFB864();
    v30 = v98;
  }

  v32 = OUTLINED_FUNCTION_3_26(*(v18 + 160));
  v33(v32);
  v34 = OUTLINED_FUNCTION_42();
  v35(v34);
  v36 = *(v18 + 288);
  v37 = *(v18 + 296) + 1;
  *(v18 + 296) = v37;
  *(v18 + 304) = v30;
  v38 = *(v18 + 280);
  if (v37 == v36)
  {
    OUTLINED_FUNCTION_64_7();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_90();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    OUTLINED_FUNCTION_23_10();
    v48(v38);
    OUTLINED_FUNCTION_70_7();
    sub_227D4A7E8();
    sub_227BD2890();
    v49 = OUTLINED_FUNCTION_58_9();
    (*(v50 + 8))(v49);
    result = sub_227D4A7D8();
    *(v18 + 312) = v51;
    if (__OFSUB__(*(v18 + 112), *(v18 + 104)))
    {
      __break(1u);
      return result;
    }

    v62 = *(v18 + 176);
    sub_227BCBB80(*(v18 + 128), v62);
    OUTLINED_FUNCTION_10_16(v62);
    if (v63)
    {
      v64 = OUTLINED_FUNCTION_34_10();
      v65(v64);
      OUTLINED_FUNCTION_10_16(v62);
      if (!v63)
      {
        sub_227B4DB00(*(v18 + 176), &qword_27D7E82E0, &unk_227D61A90);
      }
    }

    else
    {
      v66 = OUTLINED_FUNCTION_54_10();
      v67(v66);
    }

    v68 = *(v18 + 356);
    v69 = *(v18 + 200);
    v70 = *(v18 + 184);
    v71 = *(v18 + 192);
    v72 = OUTLINED_FUNCTION_52_9();
    v73(v72);
    if ((*(v71 + 88))(v69, v70) == v68)
    {
      v74 = 0xE500000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_50_9();
      if (v63)
      {
        v74 = 0xE90000000000006BLL;
      }

      else
      {
        if (v75 != *(v18 + 352))
        {
          v87 = *(v18 + 224);
          v88 = *(v18 + 208);
          a11 = *(v18 + 216);
          a12 = *(v18 + 232);
          v89 = *(v18 + 192);
          a10 = *(v18 + 200);
          v90 = *(v18 + 184);
          sub_227D4D668();

          OUTLINED_FUNCTION_8_16();
          a13 = v92;
          a14 = v91;
          v93 = sub_227D4A468();
          MEMORY[0x22AAA5DA0](v93);

          sub_227D49E08();
          OUTLINED_FUNCTION_0_56();
          sub_227B12A9C(v94, v95);
          OUTLINED_FUNCTION_208();
          swift_allocError();
          OUTLINED_FUNCTION_147();
          sub_227D49D98();

          swift_willThrow();
          v96 = *(v89 + 8);
          v96(a10, v90);

          v96(v88, v90);
          (*(v87 + 8))(a12, a11);
          sub_227B26090(v18 + 16);

          goto LABEL_12;
        }

        v74 = 0xE800000000000000;
      }
    }

    *(v18 + 320) = v74;
    (*(*(v18 + 192) + 8))(*(v18 + 208), *(v18 + 184));
    v76 = swift_task_alloc();
    *(v18 + 328) = v76;
    *v76 = v18;
    OUTLINED_FUNCTION_56_7(v76);
    OUTLINED_FUNCTION_2_37(v77);
    OUTLINED_FUNCTION_90();

    return sub_227B7C728(v78, v79, v80, v81, v82, v83, v84, v85);
  }
}

uint64_t sub_227CF90DC()
{
  v1 = *(v0 + 280);
  OUTLINED_FUNCTION_64_7();
  (*(v2 + 8))(v1);

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227CF91B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  v43[5] = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v41 = *(v6 - 8);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_227D492A8();
  v11 = OUTLINED_FUNCTION_5(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA338, &unk_227D64408);
  OUTLINED_FUNCTION_5(v12);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_227D4B3C8();
  if (!v17)
  {
    goto LABEL_11;
  }

  v39 = v16;
  v40 = a2;
  sub_227D4B3E8();
  v18 = sub_227D4B338();
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
  {

    sub_227B4DB00(v15, &qword_27D7EA338, &unk_227D64408);
LABEL_11:
    v43[3] = sub_227D4B428();
    __swift_allocate_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_14_0();
    (*(v28 + 16))();
    sub_227D49E08();
    OUTLINED_FUNCTION_0_56();
    sub_227B12A9C(v29, v30);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    sub_227D49DD8();
    sub_227B4DB00(v43, &qword_27D7E6C80, &unk_227D4F780);
    return swift_willThrow();
  }

  sub_227D4B328();
  OUTLINED_FUNCTION_14_0();
  v20 = v15;
  v22 = v21;
  (*(v19 + 8))(v20, v18);
  if (!v22)
  {
LABEL_10:

    goto LABEL_11;
  }

  result = sub_227D4B3F8();
  if ((result & 0x100000000) != 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v38 = result;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x22AAA4120]();
    if (v25)
    {
      goto LABEL_9;
    }

    v37 = v24;
    v26 = MEMORY[0x22AAA4160]();
    if (v27)
    {
      goto LABEL_9;
    }

    v31 = v26;
    v32 = MEMORY[0x22AAA4150]();
    v36 = v33 & 1;
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32;
    }

    v35 = v34;
    v43[0] = v31;
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    (*(v41 + 16))(v9, v42, v6);
    OUTLINED_FUNCTION_141();
    sub_227D4A888();
    return sub_227D4A0D8();
  }

  return result;
}

uint64_t sub_227CF9594()
{
  OUTLINED_FUNCTION_20();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v5);
  v1[16] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8360, &unk_227D58BB0);
  v1[17] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[18] = v7;
  v1[19] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  OUTLINED_FUNCTION_5(v8);
  v1[20] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4A478();
  v1[21] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[22] = v10;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v11 = sub_227D4AE88();
  v1[25] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[26] = v12;
  v1[27] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[28] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[29] = v14;
  v1[30] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[31] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[32] = v16;
  v1[33] = OUTLINED_FUNCTION_30();
  v17 = swift_task_alloc();
  v1[34] = v17;
  *v17 = v1;
  v17[1] = sub_227CF9848;

  return sub_227B24FC4();
}

uint64_t sub_227CF9848()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 280) = v5;
  *(v3 + 288) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_18();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_227CF99DC()
{
  v1 = *(*(v0 + 96) + 16);
  *(v0 + 360) = *MEMORY[0x277D0D290];
  *(v0 + 364) = *MEMORY[0x277D0D298];
  *(v0 + 368) = *MEMORY[0x277D0D2A0];
  v2 = *(v0 + 288);
  v3 = MEMORY[0x277D84F90];
  *(v0 + 304) = 0;
  *(v0 + 312) = v3;
  *(v0 + 296) = v1;
  if (!v1)
  {
    OUTLINED_FUNCTION_47_11();

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_137();

    __asm { BRAA            X2, X16 }
  }

  v4 = *(v0 + 264);
  OUTLINED_FUNCTION_17_16();
  v7(v4, v5 + v6);
  OUTLINED_FUNCTION_70_7();
  sub_227D4A7E8();
  if (v2)
  {
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = *(v0 + 248);
    sub_227B26090(v0 + 16);

    (*(v9 + 8))(v8, v10);
    goto LABEL_8;
  }

  sub_227BD2890();
  v13 = OUTLINED_FUNCTION_60_11();
  v14(v13);
  sub_227D4A7D8();
  *(v0 + 320) = v15;
  v18 = *(v0 + 160);
  sub_227BCBB80(*(v0 + 112), v18);
  OUTLINED_FUNCTION_10_16(v18);
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_37_9();
    v21(v20);
    OUTLINED_FUNCTION_10_16(v18);
    if (!v19)
    {
      sub_227B4DB00(*(v0 + 160), &qword_27D7E82E0, &unk_227D61A90);
    }
  }

  else
  {
    v22 = OUTLINED_FUNCTION_61_10();
    v23(v22);
  }

  v24 = *(v0 + 364);
  v25 = OUTLINED_FUNCTION_52_9();
  v26(v25);
  v27 = OUTLINED_FUNCTION_147();
  v29 = v28(v27);
  if (v29 == v24)
  {
    v30 = 0xE500000000000000;
  }

  else if (v29 == *(v0 + 368))
  {
    v30 = 0xE90000000000006BLL;
  }

  else
  {
    OUTLINED_FUNCTION_50_9();
    if (!v19)
    {
      v41 = *(v0 + 256);
      v53 = *(v0 + 248);
      v54 = *(v0 + 264);
      v42 = *(v0 + 208);
      v52 = *(v0 + 216);
      v51 = *(v0 + 200);
      v43 = *(v0 + 176);
      v50 = *(v0 + 184);
      v44 = *(v0 + 168);
      sub_227D4D668();

      OUTLINED_FUNCTION_8_16();
      v45 = sub_227D4A468();
      MEMORY[0x22AAA5DA0](v45);

      sub_227D49E08();
      OUTLINED_FUNCTION_0_56();
      sub_227B12A9C(v46, v47);
      OUTLINED_FUNCTION_208();
      swift_allocError();
      OUTLINED_FUNCTION_147();
      sub_227D49D98();

      swift_willThrow();
      v48 = *(v43 + 8);
      v48(v50, v44);

      v49 = OUTLINED_FUNCTION_141();
      (v48)(v49);
      (*(v42 + 8))(v52, v51);
      sub_227B26090(v0 + 16);

      (*(v41 + 8))(v54, v53);
LABEL_8:

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_137();

      __asm { BRAA            X1, X16 }
    }

    v30 = 0xE800000000000000;
  }

  *(v0 + 328) = v30;
  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  v31 = swift_task_alloc();
  *(v0 + 336) = v31;
  *v31 = v0;
  v31[1] = sub_227CF9F9C;
  OUTLINED_FUNCTION_2_37(*(v0 + 216));
  OUTLINED_FUNCTION_137();

  return sub_227B7D33C(v32, v33, v34, v35, v36, v37, v38);
}

uint64_t sub_227CF9F9C()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v2 + 344) = v6;
  *(v2 + 352) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_141();
    v8(v7);
    sub_227B26090(v2 + 16);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_269();
    v10(v9);
    sub_227B26090(v2 + 16);
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CFA148()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 264);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_227CF6DE8(sub_227CFC228, v4, v1);
  if (v2)
  {
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 248);

    (*(v6 + 8))(v5, v7);
    goto LABEL_3;
  }

  sub_227D4A958();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_227D4A0E8();
  v14 = MEMORY[0x277D0D080];
  sub_227B12A9C(&qword_27D7E83C0, MEMORY[0x277D0D080]);
  OUTLINED_FUNCTION_14_16();
  sub_227B12A9C(v15, v14);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + 312);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_54();
    sub_227CFB864();
    v17 = v63;
  }

  OUTLINED_FUNCTION_72_6();
  if (v18)
  {
    OUTLINED_FUNCTION_117();
    sub_227CFB864();
    v17 = v64;
  }

  v19 = OUTLINED_FUNCTION_3_26(*(v0 + 144));
  v20(v19);
  v21 = OUTLINED_FUNCTION_42();
  v22(v21);
  v23 = *(v0 + 296);
  v24 = *(v0 + 304) + 1;
  *(v0 + 304) = v24;
  *(v0 + 312) = v17;
  if (v24 == v23)
  {

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X2, X16 }
  }

  v27 = *(v0 + 264);
  OUTLINED_FUNCTION_23_10();
  v28(v27);
  OUTLINED_FUNCTION_70_7();
  sub_227D4A7E8();
  sub_227BD2890();
  v29 = OUTLINED_FUNCTION_60_11();
  v30(v29);
  sub_227D4A7D8();
  *(v0 + 320) = v31;
  v32 = *(v0 + 160);
  sub_227BCBB80(*(v0 + 112), v32);
  OUTLINED_FUNCTION_10_16(v32);
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_37_9();
    v35(v34);
    OUTLINED_FUNCTION_10_16(v32);
    if (!v33)
    {
      sub_227B4DB00(*(v0 + 160), &qword_27D7E82E0, &unk_227D61A90);
    }
  }

  else
  {
    v36 = OUTLINED_FUNCTION_61_10();
    v37(v36);
  }

  v38 = *(v0 + 364);
  v39 = OUTLINED_FUNCTION_52_9();
  v40(v39);
  v41 = OUTLINED_FUNCTION_147();
  v43 = v42(v41);
  if (v43 == v38)
  {
    v44 = 0xE500000000000000;
  }

  else if (v43 == *(v0 + 368))
  {
    v44 = 0xE90000000000006BLL;
  }

  else
  {
    OUTLINED_FUNCTION_50_9();
    if (!v33)
    {
      v55 = *(v0 + 256);
      v69 = *(v0 + 264);
      v56 = *(v0 + 208);
      v68 = *(v0 + 216);
      v67 = *(v0 + 200);
      v57 = *(v0 + 176);
      v65 = *(v0 + 192);
      v66 = *(v0 + 184);
      v58 = *(v0 + 168);
      sub_227D4D668();

      OUTLINED_FUNCTION_8_16();
      v59 = sub_227D4A468();
      MEMORY[0x22AAA5DA0](v59);

      sub_227D49E08();
      OUTLINED_FUNCTION_0_56();
      sub_227B12A9C(v60, v61);
      OUTLINED_FUNCTION_208();
      swift_allocError();
      OUTLINED_FUNCTION_147();
      sub_227D49D98();

      swift_willThrow();
      v62 = *(v57 + 8);
      v62(v66, v58);

      v62(v65, v58);
      (*(v56 + 8))(v68, v67);
      sub_227B26090(v0 + 16);

      (*(v55 + 8))(v69);
LABEL_3:

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_65();

      __asm { BRAA            X1, X16 }
    }

    v44 = 0xE800000000000000;
  }

  *(v0 + 328) = v44;
  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  v45 = swift_task_alloc();
  *(v0 + 336) = v45;
  *v45 = v0;
  v45[1] = sub_227CF9F9C;
  OUTLINED_FUNCTION_2_37(*(v0 + 216));
  OUTLINED_FUNCTION_65();

  return sub_227B7D33C(v46, v47, v48, v49, v50, v51, v52);
}

uint64_t sub_227CFA898()
{
  OUTLINED_FUNCTION_119();
  (*(v0[32] + 8))(v0[33], v0[31]);
  OUTLINED_FUNCTION_47_11();

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227CFA960()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B35D04;

  return sub_227CF5000();
}

uint64_t sub_227CFAA04()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_0_56();
  sub_227B12A9C(v0, v1);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_208();
  swift_allocError();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227CFAAAC()
{
  OUTLINED_FUNCTION_20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227CFAB50;

  return sub_227CFAEA0();
}

uint64_t sub_227CFAB50()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  *(v2 + 24) = v1;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return v3();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

void sub_227CFAC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = 0;
  v20 = *(v18 + 24);
  v50 = *(v20 + 16);
  v21 = MEMORY[0x277D84F98];
  v49 = v20;
  v22 = (v20 + 40);
  while (v50 != v19)
  {
    if (v19 >= *(v49 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v23 = *v22;
    a13 = v19;
    a14 = *(v22 - 1);
    v25 = v22[1];
    v24 = v22[2];
    swift_bridgeObjectRetain_n();
    sub_227D4CE58();
    sub_227D4CE58();
    swift_isUniquelyReferenced_nonNull_native();
    a15 = v21;
    sub_227B2664C(v25, v24);
    OUTLINED_FUNCTION_62_8();
    if (__OFADD__(v28, v29))
    {
      goto LABEL_20;
    }

    v30 = v26;
    v31 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF8, &qword_227D50800);
    if (sub_227D4D7C8())
    {
      v32 = sub_227B2664C(v25, v24);
      if ((v31 & 1) != (v33 & 1))
      {
        OUTLINED_FUNCTION_90();

        sub_227D4DAE8();
        return;
      }

      v30 = v32;
    }

    if (v31)
    {
      v34 = (v21[7] + 16 * v30);
      *v34 = a14;
      v34[1] = v23;
    }

    else
    {
      OUTLINED_FUNCTION_13_18(&v21[v30 >> 6]);
      v35 = (v21[6] + 16 * v30);
      *v35 = v25;
      v35[1] = v24;
      v36 = (v21[7] + 16 * v30);
      *v36 = a14;
      v36[1] = v23;

      v37 = v21[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_21;
      }

      v21[2] = v39;
    }

    v22 += 6;
    v19 = a13 + 1;
  }

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_90();

  v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, v18, v49, v50, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227CFAEA0()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 185) = v2;
  *(v1 + 184) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v0;
  v5 = sub_227D4B4F8();
  *(v1 + 112) = v5;
  OUTLINED_FUNCTION_10_0(v5);
  *(v1 + 120) = v6;
  *(v1 + 128) = OUTLINED_FUNCTION_30();
  v7 = sub_227D4AE88();
  *(v1 + 136) = v7;
  OUTLINED_FUNCTION_10_0(v7);
  *(v1 + 144) = v8;
  *(v1 + 152) = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CFAF98()
{
  OUTLINED_FUNCTION_20();
  sub_227B23878(v0[13] + 40, (v0 + 2));
  sub_227BD2890();
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_227CFB0AC;
  v2 = OUTLINED_FUNCTION_2_37(v0[19]);

  return sub_227B7B150(v2, 0, v3);
}

uint64_t sub_227CFB0AC()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v3[21] = v7;
  v3[22] = v0;

  (*(v2[18] + 8))(v2[19], v2[17]);
  sub_227B26090((v3 + 2));
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CFB20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (**a13)(uint64_t, uint64_t), uint64_t a14, uint64_t (*a15)(void, uint64_t, void), uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = *(v18 + 168);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v18 + 120);
    v22 = *(v21 + 16);
    v21 += 16;
    v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    a14 = *(v21 + 56);
    a15 = v22;
    a13 = (v21 - 8);
    v24 = MEMORY[0x277D84F90];
    a10 = v21;
    do
    {
      a15(*(v18 + 128), v23, *(v18 + 112));
      v25 = sub_227D4B478();
      if (v26)
      {
        v27 = v25;
        v28 = v26;
        v29 = sub_227D4B458();
        if (!v30)
        {
          goto LABEL_10;
        }

        v31 = *(v18 + 185);
        if (v29 == 0x524F465F45444948 && v30 == 0xEC0000004C4C415FLL)
        {

          if (v31)
          {
LABEL_10:
            v34 = *(v18 + 128);
            v35 = *(v18 + 112);
            v36 = sub_227D4B438();
            a11 = v37;
            a12 = v36;
            v38 = sub_227D4B4A8();
            v40 = v39;
            (*a13)(v34, v35);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v43 = OUTLINED_FUNCTION_54();
              v24 = sub_227CFB96C(v43, v44, v45, v46);
            }

            v41 = *(v24 + 2);
            if (v41 >= *(v24 + 3) >> 1)
            {
              OUTLINED_FUNCTION_117();
              v24 = sub_227CFB96C(v47, v48, v49, v50);
            }

            *(v24 + 2) = v41 + 1;
            v42 = &v24[48 * v41];
            *(v42 + 4) = a12;
            *(v42 + 5) = a11;
            *(v42 + 6) = v27;
            *(v42 + 7) = v28;
            *(v42 + 8) = v38;
            *(v42 + 9) = v40;
            goto LABEL_18;
          }
        }

        else
        {
          v33 = sub_227D4DA78();

          if (v31 & 1 | ((v33 & 1) == 0))
          {
            goto LABEL_10;
          }
        }

        (*a13)(*(v18 + 128), *(v18 + 112));
      }

      else
      {
        (*a13)(*(v18 + 128), *(v18 + 112));
      }

LABEL_18:
      v23 += a14;
      --v20;
    }

    while (v20);
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_90();

  return v53(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227CFB46C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

unint64_t sub_227CFB4D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  sub_227B69F68(&qword_27D7E9B80, &qword_27D7E6888, &unk_227D4E630);
  v2 = sub_227D4CE98();

  return sub_227CFB57C(a1, v2);
}

unint64_t sub_227CFB57C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227B69F68(&qword_27D7EA360, &qword_27D7E6888, &unk_227D4E630);
    v9 = sub_227D4CF38();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_227CFB73C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_227CFB7FC(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *sub_227CFB7FC(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_227B25F88(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void sub_227CFB864()
{
  OUTLINED_FUNCTION_189_0();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  v11 = sub_227CFBA84(v10, v9, v5, v6);
  v12 = OUTLINED_FUNCTION_87_1();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) - 8);
  if (v3)
  {
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    sub_227CFBB78(v0 + v15, v10, v11 + v15, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_227CFB96C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA330, &unk_227D643F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227CFBA84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_87_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_10_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227CFBB78(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_14_0(), a1 + *(v10 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_227CFBC60(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D4A0E8(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D4A0E8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227CFBD34(void *a1, void *a2)
{
  result = sub_227D4A608();
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t sub_227CFBD88@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_227CF91B4(*(v2 + 16), a2);
  if (v3)
  {
    *a1 = v3;
  }

  return result;
}

void sub_227CFBE54()
{
  OUTLINED_FUNCTION_189_0();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  if (v9 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v12 = OUTLINED_FUNCTION_87_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_10_0(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v10;
  v19[3] = 2 * ((v20 - v18) / v16);
LABEL_19:
  v22 = OUTLINED_FUNCTION_87_1();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v22, v23) - 8);
  if (v3)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_227CFBB78(v0 + v25, v10, v19 + v25, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_227CFC004(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FC8, &qword_227D633E0);
  v10 = *(sub_227D4A0E8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_227D4A0E8() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227CFBC60(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_227CFC1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227CFC2DC()
{
  v1 = [v0 iTunesMetadata];
  v2 = [v1 storeItemIdentifier];

  if (v2)
  {
    return sub_227D4DA38();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227CFC35C()
{
  v1 = v0;
  v2 = sub_227D4CAB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 platform];
  v7 = 0x736F63616DLL;
  switch(v6)
  {
    case 1u:
    case 6u:
      return v7;
    case 2u:
    case 7u:
      v7 = 7565161;
      break;
    case 3u:
    case 8u:
      v7 = 0x6F7674656C707061;
      break;
    case 4u:
    case 9u:
      v7 = 0x736F6863746177;
      break;
    case 0xBu:
    case 0xCu:
      v7 = 1936683640;
      break;
    default:
      sub_227D4AA58();
      v8 = sub_227D4CA98();
      v9 = sub_227D4D438();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = v6;
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        *(v11 + 4) = v10;
        _os_log_impl(&dword_227B0D000, v8, v9, "Unrecognized platform %ld, defaulting to ios", v11, 0xCu);
        MEMORY[0x22AAA7130](v11, -1, -1);
      }

      v7 = 7565161;

      (*(v3 + 8))(v5, v2);
      break;
  }

  return v7;
}

void sub_227CFC560(uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = sub_227D4A6A8();
  if (v3)
  {

LABEL_4:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
    (*(*(v12 - 8) + 16))(a2, v4, v12);
    return;
  }

  v8 = v6;
  v9 = v7;
  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v11 = sub_227CFC6BC(v8, v9, 0);
  v13 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  sub_227D4A6A8();
  sub_227CFC2DC();
  sub_227CFC35C();
  sub_227CFC798(v13);
  sub_227D4A688();
}

id sub_227CFC6BC(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_227D4CF78();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_227D49098();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_227CFC798(void *a1)
{
  v1 = [a1 shortVersionString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_227D4CFA8();

  return v3;
}

unint64_t sub_227CFC7FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_227D4D868();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_227CFC854(char a1)
{
  result = 7565161;
  switch(a1)
  {
    case 1:
      result = 7893871;
      break;
    case 2:
      result = 0x6F7674656C707061;
      break;
    case 3:
      result = 1936683640;
      break;
    case 4:
      result = 0x736F6863746177;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_227CFC8E8()
{
  result = qword_27D7EA368;
  if (!qword_27D7EA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA368);
  }

  return result;
}

uint64_t sub_227CFC93C(unsigned __int8 a1, char a2)
{
  v2 = 7565161;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7565161;
  switch(v4)
  {
    case 1:
      v5 = 7893871;
      break;
    case 2:
      v5 = 0x6F7674656C707061;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1936683640;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x736F6863746177;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 7893871;
      break;
    case 2:
      v2 = 0x6F7674656C707061;
      v6 = 0xE900000000000073;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1936683640;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x736F6863746177;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

uint64_t sub_227CFCA9C(char a1)
{
  sub_227D4DB58();
  sub_227CFC854(a1);
  sub_227D4D048();

  return sub_227D4DB98();
}

uint64_t sub_227CFCB08(uint64_t a1, char a2)
{
  sub_227D4D048();
}

uint64_t sub_227CFCBC8(uint64_t a1, char a2)
{
  sub_227D4DB58();
  sub_227CFC854(a2);
  sub_227D4D048();

  return sub_227D4DB98();
}

unint64_t sub_227CFCC28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227CFC7FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_227CFCC58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227CFC854(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_227CFCC88()
{
  result = qword_27D7EA370;
  if (!qword_27D7EA370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA378, qword_227D644F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA370);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AMSPlatform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227CFCDE8()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BDA8);
  __swift_project_value_buffer(v0, qword_280E7BDA8);
  return sub_227D49EC8();
}

uint64_t sub_227CFCE34()
{
  if (_MergedGlobals_16 != -1)
  {
    OUTLINED_FUNCTION_150_5(&_MergedGlobals_16);
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BDA8);
}

uint64_t GameKitService.__allocating_init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GameKitService.init(actorSystem:dataProvider:)(a1, a2);
  return v4;
}

uint64_t GameKitService.init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v14 = sub_227D49EF8();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore14GameKitService_actorSystem) = a1;
  type metadata accessor for GameKitService(0);
  v16 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_22_13();
  sub_227B0F8D0(v8, v9, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v10, v11, &protocol conformance descriptor for GameKitService);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore14GameKitService_id, v6, v14);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore14GameKitService_dataProvider) = v15;
  v16 = *(v2 + v7);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t GameKitService.describeAchievements(achievements:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CFD1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3(v14);
    sub_227B670B8();
    v15 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v19 = OUTLINED_FUNCTION_27_5();
      v20(v19);
      v21 = OUTLINED_FUNCTION_17_0();
      v22(v21);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D88, &qword_227D4F9B8);
      sub_227C93D30();
      v17 = sub_227C93DB4();
      OUTLINED_FUNCTION_17(v17);
      v18 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v37 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v37);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v38, v39, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v18 = v40;
      OUTLINED_FUNCTION_1_30(v41);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v42);
    }
  }

  else
  {
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_92_1(v32);
    *v33 = v34;
    OUTLINED_FUNCTION_25(v33);
    OUTLINED_FUNCTION_46();

    return sub_227CFD6D0(v35);
  }
}

uint64_t sub_227CFD438()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CFD530(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameKitService.describeAchievements(achievements:)();
}

uint64_t sub_227CFD6D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227CFD6EC, v1);
}

uint64_t sub_227CFD6EC()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D1F88C(v3);
}

uint64_t GameKitService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[10] = v5;
  OUTLINED_FUNCTION_5(v5);
  v0[11] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  OUTLINED_FUNCTION_12_16(v6);
  v0[13] = v7;
  v0[14] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v0[15] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[16] = v9;
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v10);
  v11 = sub_227D49D58();
  v0[18] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[19] = v12;
  v0[20] = OUTLINED_FUNCTION_30();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227CFD940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[20];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_137_0(v14, v15, v16, v17);
    sub_227B67D40();
    v18 = sub_227B67DF0();
    OUTLINED_FUNCTION_8_3(v18);
    if (v13)
    {
      v19 = OUTLINED_FUNCTION_60();
      v20(v19);
      v21 = OUTLINED_FUNCTION_17_0();
      v22(v21);
      OUTLINED_FUNCTION_71_8();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
    }

    else
    {
      sub_227B15F50(v12[5], v12[11], &qword_27D7E6908, &unk_227D4E690);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DE8, &unk_227D61550);
      sub_227B67EA0();
      v31 = sub_227B67F50();
      OUTLINED_FUNCTION_17(v31);
      v32 = v12[20];
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_156_6(v41);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v42, v43, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v32 = v44;
      v32[1] = sub_227CFDC70;
      OUTLINED_FUNCTION_4(v45);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v46);
    }
  }

  else
  {
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_199_3(v23);
    *v24 = v25;
    v24[1] = sub_227CFDE34;
    OUTLINED_FUNCTION_53(v12[4]);
    OUTLINED_FUNCTION_46();

    return sub_227CFE504(v26, v27);
  }
}

uint64_t sub_227CFDC70()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CFDD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_70_8();
  v12 = OUTLINED_FUNCTION_43_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_108_6();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227CFDE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_123();
  v12 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v13 = v12;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v10)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_163();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_227CFDFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_70_8();
  v12 = OUTLINED_FUNCTION_43_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_108_6();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227CFE080(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227CFE32C;

  return GameKitService.listAchievements(games:after:)();
}

uint64_t sub_227CFE32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  v13 = v12[8];
  v14 = v12[6];
  v15 = v12[5];
  v16 = v12[3];
  OUTLINED_FUNCTION_108_1();
  *v17 = v18;
  OUTLINED_FUNCTION_197(v19, v20);
  OUTLINED_FUNCTION_186();
  (*(v21 + 8))(v15, v16);
  OUTLINED_FUNCTION_185_1();
  (*(v22 + 8))(v13, v14);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227CFE504(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227CFE51C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_58_0(v1);

  return sub_227D1F9B0(v3, v4);
}

uint64_t GameKitService.getAchievementsProgresses(achievements:player:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[16] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v0[19] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[20] = v12;
  v0[21] = OUTLINED_FUNCTION_30();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227CFE7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[21];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3(v14);
    sub_227B670B8();
    v15 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v15);
    if (v13)
    {
      (*(v12[17] + 8))(v12[18], v12[16]);
      v16 = OUTLINED_FUNCTION_17_0();
      v17(v16);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_56();
      v24(v23);
      OUTLINED_FUNCTION_79_8();
      OUTLINED_FUNCTION_73_5();
      OUTLINED_FUNCTION_161_0(v25, v26, v27, v28);
      OUTLINED_FUNCTION_14_4();
      sub_227B15A74(v29, &qword_27D7E67C0, &unk_227D4FB20, v30);
      OUTLINED_FUNCTION_13_4();
      sub_227B15A74(v31, &qword_27D7E67C0, &unk_227D4FB20, v32);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E20, &unk_227D61610);
      sub_227B69008();
      v34 = sub_227B690BC();
      OUTLINED_FUNCTION_17(v34);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = swift_task_alloc();
      v12[22] = v43;
      type metadata accessor for GameKitService(0);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v44, v45, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v43 = v46;
      v43[1] = sub_227B685A0;
      OUTLINED_FUNCTION_4(v47);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v48);
    }
  }

  else
  {
    v18 = swift_task_alloc();
    v12[24] = v18;
    *v18 = v12;
    v18[1] = sub_227CFEB20;
    OUTLINED_FUNCTION_53(v12[4]);
    OUTLINED_FUNCTION_46();

    return sub_227CFEF4C(v19, v20);
  }
}

uint64_t sub_227CFEB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_123();
  v12 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v13 = v12;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v10)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_163();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_227CFECA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227D12B28;

  return GameKitService.getAchievementsProgresses(achievements:player:)();
}

uint64_t sub_227CFEF4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227CFEF64()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_58_0(v1);

  return sub_227D1FAC8(v3, v4);
}

uint64_t GameKitService.resetAchievementsProgress(achievements:players:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v0[16] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CFF190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_178_4();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3(v14);
    sub_227B670B8();
    v15 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v16 = OUTLINED_FUNCTION_156_4();
      v17(v16);
      v18 = OUTLINED_FUNCTION_17_0();
      v19(v18);
      OUTLINED_FUNCTION_60_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_163();

      return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
    }

    else
    {
      v13[3] = v13[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_79_8();
      OUTLINED_FUNCTION_14_3();
      sub_227D49478();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v33 = swift_task_alloc();
      v34 = OUTLINED_FUNCTION_195_3(v33);
      type metadata accessor for GameKitService(v34);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v35, v36, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_44_0();
      *v33 = v37;
      OUTLINED_FUNCTION_79_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_163();

      return MEMORY[0x282164B10](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }
  }

  else
  {
    v20 = swift_task_alloc();
    v13[21] = v20;
    *v20 = v13;
    v20[1] = sub_227CAA930;
    OUTLINED_FUNCTION_53(v13[4]);
    OUTLINED_FUNCTION_163();

    return sub_227CFF81C(v21, v22);
  }
}

uint64_t sub_227CFF478()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CFF570(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B96FA0;

  return GameKitService.resetAchievementsProgress(achievements:players:)();
}

uint64_t sub_227CFF81C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227CFF834()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_58_0(v1);

  return sub_227D1FBF4(v3, v4);
}

uint64_t GameKitService.revealAchievements(achievements:players:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v0[16] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CFFA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_178_4();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3(v14);
    sub_227B670B8();
    v15 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v16 = OUTLINED_FUNCTION_156_4();
      v17(v16);
      v18 = OUTLINED_FUNCTION_17_0();
      v19(v18);
      OUTLINED_FUNCTION_60_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_163();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
    }

    else
    {
      v13[3] = v13[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_79_8();
      OUTLINED_FUNCTION_14_3();
      sub_227D49478();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v31 = swift_task_alloc();
      v32 = OUTLINED_FUNCTION_195_3(v31);
      type metadata accessor for GameKitService(v32);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v33, v34, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_44_0();
      *v31 = v35;
      OUTLINED_FUNCTION_79_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_163();

      return MEMORY[0x282164B10](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
    }
  }

  else
  {
    v20 = swift_task_alloc();
    v13[21] = v20;
    *v20 = v13;
    v20[1] = sub_227C9660C;
    OUTLINED_FUNCTION_163();

    return sub_227CFFFF0();
  }
}

uint64_t sub_227CFFD44(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B80254;

  return GameKitService.revealAchievements(achievements:players:)();
}

uint64_t sub_227D00008()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  sub_227B0F8D0(&qword_27D7E67C8, MEMORY[0x277D0CE80], MEMORY[0x277D0CE88]);
  swift_allocError();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t GameKitService.submitAchievementsProgress(progress:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E78, &qword_227D4FDE0);
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[11] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D00210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_91_4();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E20, &unk_227D61610);
    OUTLINED_FUNCTION_145_4();
    OUTLINED_FUNCTION_137_0(v14, v15, v16, v17);
    sub_227B69008();
    v18 = sub_227B690BC();
    OUTLINED_FUNCTION_8_3(v18);
    if (v12)
    {
      v19 = OUTLINED_FUNCTION_91();
      v20(v19);
      v21 = OUTLINED_FUNCTION_17_0();
      v22(v21);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v35 = swift_task_alloc();
      v13[14] = v35;
      type metadata accessor for GameKitService(0);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v36, v37, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_44_0();
      *v35 = v38;
      v35[1] = sub_227D0047C;
      OUTLINED_FUNCTION_214_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
    }
  }

  else
  {
    v32 = swift_task_alloc();
    v13[16] = v32;
    *v32 = v13;
    v32[1] = sub_227CAA928;
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_164();

    return sub_227D00710(v33);
  }
}

uint64_t sub_227D0047C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D00574(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B4AF94;

  return GameKitService.submitAchievementsProgress(progress:)();
}

uint64_t sub_227D00710(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0072C, v1);
}

uint64_t sub_227D0072C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D1FD20(v3);
}

uint64_t GameKitService.describeLeaderboards(leaderboards:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D008F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    v14 = OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_48_10(v14, v15 & 0xFFFFFFFF0000FFFFLL | 0x73640000);
    sub_227BC8E60();
    v16 = sub_227BC8F10();
    OUTLINED_FUNCTION_8_3(v16);
    if (v12)
    {
      v20 = OUTLINED_FUNCTION_27_5();
      v21(v20);
      v22 = OUTLINED_FUNCTION_17_0();
      v23(v22);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8270, &unk_227D619F0);
      sub_227BC8FC0();
      v18 = sub_227BC90F8();
      OUTLINED_FUNCTION_17(v18);
      v19 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v38 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v38);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v39, v40, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v19 = v41;
      OUTLINED_FUNCTION_1_30(v42);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v43);
    }
  }

  else
  {
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_92_1(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_25(v34);
    OUTLINED_FUNCTION_46();

    return sub_227D00CF0(v36);
  }
}

uint64_t sub_227D00B50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameKitService.describeLeaderboards(leaderboards:)();
}

uint64_t sub_227D00CF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D00D0C, v1);
}

uint64_t sub_227D00D0C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20184(v3);
}

uint64_t GameKitService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_6();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = sub_227D49458();
  OUTLINED_FUNCTION_12_16(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  v1[15] = v9;
  OUTLINED_FUNCTION_5(v9);
  v1[16] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E8, &unk_227D58B80);
  v1[17] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[18] = v11;
  v12 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_195_3(v12);
  v13 = sub_227D49328();
  v1[20] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[21] = v14;
  v1[22] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F0, &unk_227D61AA0);
  v1[23] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[24] = v16;
  v1[25] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F8, &qword_227D58B90);
  v1[26] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[27] = v18;
  v1[28] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[29] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[30] = v20;
  v1[31] = OUTLINED_FUNCTION_30();
  v21 = sub_227D49D58();
  v1[32] = v21;
  OUTLINED_FUNCTION_10_0(v21);
  v1[33] = v22;
  v1[34] = OUTLINED_FUNCTION_30();
  v23 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_227D0106C()
{
  OUTLINED_FUNCTION_166();
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 272);
    v2 = *(v0 + 48);
    OUTLINED_FUNCTION_36();
    *(v0 + 32) = v2;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    v3 = OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_48_10(v3, v4 & 0xFFFFFFFF0000FFFFLL | 0x73640000);
    sub_227BC8E60();
    v5 = sub_227BC8F10();
    OUTLINED_FUNCTION_8_3(v5);
    if (v1)
    {
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      v6 = OUTLINED_FUNCTION_17_0();
      v7(v6);
      OUTLINED_FUNCTION_52_4();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_176_1();

      return v25();
    }

    else
    {
      *(v0 + 16) = *(v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8300, &unk_227D58BA0);
      OUTLINED_FUNCTION_58_4();
      sub_227D49478();
      sub_227BCBB14(&qword_27D7E8308, MEMORY[0x277D83BB8], MEMORY[0x277D83D38]);
      sub_227BCBB14(&qword_27D7E8310, MEMORY[0x277D83B90], MEMORY[0x277D83D08]);
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v16 = *(v0 + 176);
      v17 = OUTLINED_FUNCTION_56();
      v18(v17);
      OUTLINED_FUNCTION_73_5();
      OUTLINED_FUNCTION_161_0(v19, v20, v21, v22);
      OUTLINED_FUNCTION_130_4();
      sub_227B0F8D0(v23, v16, MEMORY[0x277CC97A8]);
      OUTLINED_FUNCTION_136_4(&qword_27D7E8320);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      sub_227B15F50(*(v0 + 80), *(v0 + 128), &qword_27D7E82E0, &unk_227D61A90);
      OUTLINED_FUNCTION_51_4();
      sub_227BCBBF0();
      sub_227BCBCA4();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8348, &unk_227D61AC0);
      sub_227BCBD58();
      v27 = sub_227BCBE08();
      OUTLINED_FUNCTION_17(v27);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v28 = swift_task_alloc();
      *(v0 + 280) = v28;
      type metadata accessor for GameKitService(0);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v29, v30, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v28 = v31;
      v28[1] = sub_227D0176C;
      OUTLINED_FUNCTION_1_2(v32);
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v33);
    }
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 296) = v8;
    *v8 = v0;
    v8[1] = sub_227C991B4;
    OUTLINED_FUNCTION_53(*(v0 + 48));
    OUTLINED_FUNCTION_176_1();

    return sub_227D02260(v9, v10, v11, v12, v13);
  }
}

uint64_t sub_227D0176C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D01A74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v9 = a2[3];
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v10 = swift_task_alloc();
  v3[15] = v10;
  *v10 = v3;
  v10[1] = sub_227D01F74;

  return GameKitService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_227D01F74()
{
  OUTLINED_FUNCTION_14();
  v28 = *(v0 + 112);
  OUTLINED_FUNCTION_69();
  v27 = *(v1 + 104);
  OUTLINED_FUNCTION_69();
  v24 = *(v2 + 96);
  OUTLINED_FUNCTION_69();
  v26 = *(v3 + 88);
  OUTLINED_FUNCTION_69();
  v25 = *(v4 + 80);
  OUTLINED_FUNCTION_69();
  v6 = *(v5 + 72);
  v23 = *(v7 + 64);
  OUTLINED_FUNCTION_69();
  v22 = *(v8 + 56);
  OUTLINED_FUNCTION_69();
  v10 = *(v9 + 48);
  v12 = v11[5];
  v13 = v11[4];
  v14 = v11[3];
  OUTLINED_FUNCTION_80_0();
  v16 = v15;
  OUTLINED_FUNCTION_13();
  *v17 = v16;
  OUTLINED_FUNCTION_197(v18, v19);
  (*(v13 + 8))(v12, v14);
  (*(v22 + 8))(v23, v10);
  (*(v25 + 8))(v26, v6);
  (*(v27 + 8))(v28, v24);

  OUTLINED_FUNCTION_220_1();

  return v20();
}

uint64_t sub_227D02260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0227C()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_227C99C38;
  v2 = OUTLINED_FUNCTION_40_0();

  return sub_227D203AC(v2, v3, v4, v5, v6);
}

uint64_t GameKitService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = sub_227D49458();
  v1[10] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  v1[13] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E8, &unk_227D58B80);
  v1[15] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[16] = v10;
  v11 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v11);
  v12 = sub_227D49328();
  v1[18] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[19] = v13;
  v1[20] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F0, &unk_227D61AA0);
  v1[21] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[22] = v15;
  v1[23] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[24] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[25] = v17;
  v1[26] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[27] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[28] = v19;
  v1[29] = OUTLINED_FUNCTION_30();
  v20 = sub_227D49D58();
  v1[30] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[31] = v21;
  v1[32] = OUTLINED_FUNCTION_30();
  v22 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_227D025F0()
{
  OUTLINED_FUNCTION_166();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[32];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    v2 = OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_48_10(v2, v3 & 0xFFFFFFFF0000FFFFLL | 0x73640000);
    sub_227BC8E60();
    v4 = sub_227BC8F10();
    OUTLINED_FUNCTION_8_3(v4);
    if (v1)
    {
      (*(v0[28] + 8))(v0[29], v0[27]);
      v5 = OUTLINED_FUNCTION_17_0();
      v6(v5);
      OUTLINED_FUNCTION_57_3(v0[32]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_176_1();

      return v23();
    }

    else
    {
      v0[3] = v0[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_79_8();
      OUTLINED_FUNCTION_14_3();
      sub_227D49478();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v14 = v0[20];
      v15 = OUTLINED_FUNCTION_56();
      v16(v15);
      OUTLINED_FUNCTION_73_5();
      OUTLINED_FUNCTION_161_0(v17, v18, v19, v20);
      OUTLINED_FUNCTION_130_4();
      sub_227B0F8D0(v21, v14, MEMORY[0x277CC97A8]);
      OUTLINED_FUNCTION_136_4(&qword_27D7E8320);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      sub_227B15F50(v0[8], v0[14], &qword_27D7E82E0, &unk_227D61A90);
      OUTLINED_FUNCTION_51_4();
      sub_227BCBBF0();
      sub_227BCBCA4();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8348, &unk_227D61AC0);
      sub_227BCBD58();
      v25 = sub_227BCBE08();
      OUTLINED_FUNCTION_17(v25);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v26 = swift_task_alloc();
      v0[33] = v26;
      type metadata accessor for GameKitService(0);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v27, v28, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v26 = v29;
      v26[1] = sub_227D02C9C;
      OUTLINED_FUNCTION_1_2(v30);
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v31);
    }
  }

  else
  {
    v7 = swift_task_alloc();
    v0[35] = v7;
    *v7 = v0;
    v7[1] = sub_227C9A918;
    OUTLINED_FUNCTION_53(v0[5]);
    OUTLINED_FUNCTION_176_1();

    return sub_227D034FC(v8, v9, v10, v11);
  }
}

uint64_t sub_227D02C9C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D02FFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v9 = a2[3];
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v10 = swift_task_alloc();
  v3[15] = v10;
  *v10 = v3;
  v10[1] = sub_227D12AFC;

  return GameKitService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_227D034FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D03518()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_227C9B1EC;
  v2 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D204E0(v2, v3, v4, v5);
}

uint64_t GameKitService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_227D49458();
  v1[8] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[9] = v5;
  v1[10] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[11] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v1[14] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_30();
  v10 = sub_227D49D58();
  v1[17] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[18] = v11;
  v1[19] = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227D03760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[19];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_137_0(v14, v15, v16, v17);
    sub_227B67D40();
    v18 = sub_227B67DF0();
    OUTLINED_FUNCTION_8_3(v18);
    if (v13)
    {
      (*(v12[15] + 8))(v12[16], v12[14]);
      v19 = OUTLINED_FUNCTION_17_0();
      v20(v19);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      v12[3] = v12[6];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_79_8();
      OUTLINED_FUNCTION_14_3();
      sub_227D49478();
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82B0, &unk_227D58AC0);
      sub_227BCA150();
      v27 = sub_227BCA200();
      OUTLINED_FUNCTION_17(v27);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      v12[20] = v36;
      type metadata accessor for GameKitService(0);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v37, v38, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v36 = v39;
      v36[1] = sub_227D03AC4;
      OUTLINED_FUNCTION_203_0();
      OUTLINED_FUNCTION_1_2(v40);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v41);
    }
  }

  else
  {
    v21 = swift_task_alloc();
    v12[22] = v21;
    *v21 = v12;
    v21[1] = sub_227D03C80;
    OUTLINED_FUNCTION_53(v12[5]);
    OUTLINED_FUNCTION_46();

    return sub_227D04158(v22, v23);
  }
}

uint64_t sub_227D03AC4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D03BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_70_3();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_91_4();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227D03C80()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_117_0();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_227D03DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_70_3();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_91_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227D03EA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227CFE32C;

  return GameKitService.listLeaderboards(games:players:)();
}

uint64_t sub_227D04158(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D04170()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_58_0(v1);

  return sub_227D20294(v3, v4);
}

uint64_t GameKitService.submitLeaderboardEntries(entries:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83A8, &qword_227D58E40);
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[11] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0434C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_91_4();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83B0, &unk_227D58E50);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_137_0(v14, v15, v16, v17);
    sub_227BCE64C();
    v18 = sub_227BCE700();
    OUTLINED_FUNCTION_8_3(v18);
    if (v12)
    {
      v19 = OUTLINED_FUNCTION_91();
      v20(v19);
      v21 = OUTLINED_FUNCTION_17_0();
      v22(v21);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v35 = swift_task_alloc();
      v13[14] = v35;
      type metadata accessor for GameKitService(0);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v36, v37, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_44_0();
      *v35 = v38;
      v35[1] = sub_227D045B8;
      OUTLINED_FUNCTION_214_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
    }
  }

  else
  {
    v32 = swift_task_alloc();
    v13[16] = v32;
    *v32 = v13;
    v32[1] = sub_227C852D0;
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_164();

    return sub_227D049AC(v33);
  }
}

uint64_t sub_227D045B8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D046B0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_62();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227D04758()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_62();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227D04810(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B3FFF4;

  return GameKitService.submitLeaderboardEntries(entries:)();
}

uint64_t sub_227D049AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D049C8, v1);
}

uint64_t sub_227D049C8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20610(v3);
}

uint64_t GameKitService.describeLeaderboardSets(leaderboardSets:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83D8, &qword_227D58F40);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D04B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83E0, &unk_227D58F50);
    v14 = OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_18_8(v14, v15 | 0xEF73746553640000);
    sub_227BCF728();
    v16 = sub_227BCF7D8();
    OUTLINED_FUNCTION_8_3(v16);
    if (v12)
    {
      v20 = OUTLINED_FUNCTION_27_5();
      v21(v20);
      v22 = OUTLINED_FUNCTION_17_0();
      v23(v22);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8410, &unk_227D58F60);
      sub_227BCF888();
      v18 = sub_227BCF9C0();
      OUTLINED_FUNCTION_17(v18);
      v19 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v38 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v38);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v39, v40, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v19 = v41;
      OUTLINED_FUNCTION_1_30(v42);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v43);
    }
  }

  else
  {
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_92_1(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_25(v34);
    OUTLINED_FUNCTION_46();

    return sub_227D04F94(v36);
  }
}

uint64_t sub_227D04DF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameKitService.describeLeaderboardSets(leaderboardSets:)();
}

uint64_t sub_227D04F94(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D04FB0, v1);
}

uint64_t sub_227D04FB0()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20844(v3);
}

uint64_t GameKitService.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_137_0(v14, v15, v16, v17);
    sub_227B67D40();
    v18 = sub_227B67DF0();
    OUTLINED_FUNCTION_8_3(v18);
    if (v12)
    {
      v22 = OUTLINED_FUNCTION_27_5();
      v23(v22);
      v24 = OUTLINED_FUNCTION_17_0();
      v25(v24);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8450, &unk_227D64DE0);
      sub_227BD058C();
      v20 = sub_227BD063C();
      OUTLINED_FUNCTION_17(v20);
      v21 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v40 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v40);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v41, v42, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v21 = v43;
      OUTLINED_FUNCTION_1_30(v44);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v45);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_92_1(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_25(v36);
    OUTLINED_FUNCTION_46();

    return sub_227D05580(v38);
  }
}

uint64_t sub_227D053E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameKitService.listLeaderboardSets(games:)();
}

uint64_t sub_227D05580(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0559C, v1);
}

uint64_t sub_227D0559C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20968(v3);
}

uint64_t GameKitService.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83D8, &qword_227D58F40);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D05768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83E0, &unk_227D58F50);
    v14 = OUTLINED_FUNCTION_3_14();
    OUTLINED_FUNCTION_18_8(v14, v15 | 0xEF73746553640000);
    sub_227BCF728();
    v16 = sub_227BCF7D8();
    OUTLINED_FUNCTION_8_3(v16);
    if (v12)
    {
      v20 = OUTLINED_FUNCTION_27_5();
      v21(v20);
      v22 = OUTLINED_FUNCTION_17_0();
      v23(v22);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82B0, &unk_227D58AC0);
      sub_227BCA150();
      v18 = sub_227BCA200();
      OUTLINED_FUNCTION_17(v18);
      v19 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v38 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v38);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v39, v40, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v19 = v41;
      OUTLINED_FUNCTION_1_30(v42);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v43);
    }
  }

  else
  {
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_92_1(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_25(v34);
    OUTLINED_FUNCTION_46();

    return sub_227D05B68(v36);
  }
}

uint64_t sub_227D059C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameKitService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_227D05B68(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D05B84, v1);
}

uint64_t sub_227D05B84()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20A8C(v3);
}

uint64_t GameKitService.refreshChallengeDefinitions(game:filters:scope:)()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_227D49458();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4A058();
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A00, &unk_227D4EB40);
  v1[13] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7068, &qword_227D50C48);
  v1[16] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[19] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[20] = v14;
  v1[21] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[22] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[23] = v16;
  v17 = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_229_1(v17);
  v1[25] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[26] = v19;
  v1[27] = OUTLINED_FUNCTION_30();
  v20 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_227D05EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[27];
    OUTLINED_FUNCTION_36();
    v16 = OUTLINED_FUNCTION_9_1();
    v17(v16);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v18, v19, v20, v21);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v22, v23, v24, v25);
    v26 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1(v26, v27, v28, v29);
    if (v15)
    {
      v30 = OUTLINED_FUNCTION_94_2();
      v31(v30);
      v32 = OUTLINED_FUNCTION_17_0();
      v33(v32);
      OUTLINED_FUNCTION_44();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_16_0();

      return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v14[2] = v14[4];
      sub_227D4CE58();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7070, &unk_227D64F40);
      OUTLINED_FUNCTION_11_6(v40);
      sub_227B7F5C4();
      sub_227B7F6FC();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      v41 = v14[12];
      v42 = OUTLINED_FUNCTION_56();
      v43(v42);
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_161_0(v44, v45, v46, v47);
      OUTLINED_FUNCTION_60_12();
      sub_227B0F8D0(v48, v41, MEMORY[0x277D0D060]);
      OUTLINED_FUNCTION_69_8(&qword_27D7E6A18);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v49 = v14[27];
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v58 = swift_task_alloc();
      OUTLINED_FUNCTION_183_7(v58);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v59, v60, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_44_0();
      *v49 = v61;
      v49[1] = sub_227D062FC;
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x282164B10](v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12);
    }
  }

  else
  {
    v34 = swift_task_alloc();
    v14[30] = v34;
    *v34 = v14;
    v34[1] = sub_227B7EDE0;
    OUTLINED_FUNCTION_53(v14[3]);
    OUTLINED_FUNCTION_16_0();

    return sub_227D06984(v35, v36, v37);
  }
}

uint64_t sub_227D062FC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D065D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_227D12B1C;

  return GameKitService.refreshChallengeDefinitions(game:filters:scope:)();
}

uint64_t sub_227D06984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0699C()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_227B7F4E4;
  OUTLINED_FUNCTION_40_0();

  return sub_227B2A510();
}

uint64_t GameKitService.refreshChallengeDefinitions(game:filters:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_193_2(v1, v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[7] = v4;
  v0[8] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7068, &qword_227D50C48);
  v0[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[15] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[16] = v10;
  v11 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v11);
  v12 = sub_227D49D58();
  v0[18] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[19] = v13;
  v0[20] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227D06C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_1();
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v16, v17, v18, v19);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1(v24, v25, v26, v27);
    if (v12)
    {
      v28 = OUTLINED_FUNCTION_60();
      v29(v28);
      v30 = OUTLINED_FUNCTION_17_0();
      v31(v30);
      OUTLINED_FUNCTION_71_8();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    else
    {
      v13[2] = v13[4];
      sub_227D4CE58();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7070, &unk_227D64F40);
      OUTLINED_FUNCTION_11_6(v39);
      sub_227B7F5C4();
      sub_227B7F6FC();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v40 = v13[20];
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v49 = swift_task_alloc();
      OUTLINED_FUNCTION_156_6(v49);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v50, v51, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_44_0();
      *v40 = v52;
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
    }
  }

  else
  {
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_199_3(v32);
    *v33 = v34;
    v33[1] = sub_227D12B0C;
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_33();

    return sub_227D072B8(v35, v36);
  }
}

uint64_t sub_227D06F1C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D07014(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B96FA0;

  return GameKitService.refreshChallengeDefinitions(game:filters:)();
}

uint64_t sub_227D072B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D072D0()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_58_0(v1);

  return sub_227B2A1DC();
}

uint64_t GameKitService.refreshChallengeDefinitions(challengeDefinitions:scope:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_193_2(v1, v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[7] = v4;
  v0[8] = OUTLINED_FUNCTION_30();
  v5 = sub_227D4A058();
  v0[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A00, &unk_227D4EB40);
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70B0, &qword_227D50DC8);
  v0[15] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[16] = v10;
  v11 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v11);
  v12 = sub_227D49D58();
  v0[18] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[19] = v13;
  v0[20] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227D07540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[20];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70B8, &qword_227D50DD8);
    OUTLINED_FUNCTION_148_4();
    OUTLINED_FUNCTION_137_0(0xD000000000000014, v14, 0xD000000000000014, v15);
    sub_227B813C0();
    v16 = sub_227B81470();
    OUTLINED_FUNCTION_8_3(v16);
    if (v13)
    {
      v17 = OUTLINED_FUNCTION_60();
      v18(v17);
      v19 = OUTLINED_FUNCTION_17_0();
      v20(v19);
      OUTLINED_FUNCTION_71_8();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    else
    {
      v28 = v12[11];
      v29 = OUTLINED_FUNCTION_56();
      v30(v29);
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_161_0(v31, v32, v33, v34);
      OUTLINED_FUNCTION_60_12();
      sub_227B0F8D0(v35, v28, MEMORY[0x277D0D060]);
      OUTLINED_FUNCTION_69_8(&qword_27D7E6A18);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v36 = v12[20];
      sub_227D49D08();
      sub_227D49468();
      v45 = swift_task_alloc();
      OUTLINED_FUNCTION_156_6(v45);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v46, v47, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_44_0();
      *v36 = v48;
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
    }
  }

  else
  {
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_199_3(v21);
    *v22 = v23;
    v22[1] = sub_227D12B0C;
    OUTLINED_FUNCTION_53(v12[3]);
    OUTLINED_FUNCTION_33();

    return sub_227D07DB8(v24, v25);
  }
}

uint64_t sub_227D0788C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D07984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_70_8();
  v12 = OUTLINED_FUNCTION_47_2();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_206_0();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227D07A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_70_8();
  v12 = OUTLINED_FUNCTION_47_2();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_108_6();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227D07B10(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B80254;

  return GameKitService.refreshChallengeDefinitions(challengeDefinitions:scope:)();
}

uint64_t sub_227D07DB8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D07DD0()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_58_0(v1);

  return sub_227B32250();
}

uint64_t GameKitService.listChallengeDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_160_1(v1, v2, v3, v4);
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[11] = v7;
  OUTLINED_FUNCTION_5(v7);
  v0[12] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v0[13] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[14] = v9;
  v0[15] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7068, &qword_227D50C48);
  v0[16] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[17] = v11;
  v0[18] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[19] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[20] = v13;
  v0[21] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[22] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[23] = v15;
  v16 = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_229_1(v16);
  v0[25] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[26] = v18;
  v0[27] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227D0852C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D08624(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_227D12B1C;

  return GameKitService.listChallengeDefinitions(game:filters:after:)();
}

uint64_t sub_227D089E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D08A00()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_127_0(v1);

  return sub_227B348AC();
}

uint64_t GameKitService.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70B0, &qword_227D50DC8);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D08BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70B8, &qword_227D50DD8);
    OUTLINED_FUNCTION_148_4();
    OUTLINED_FUNCTION_137_0(0xD000000000000014, v14, 0xD000000000000014, v15);
    sub_227B813C0();
    v16 = sub_227B81470();
    OUTLINED_FUNCTION_8_3(v16);
    if (v12)
    {
      v20 = OUTLINED_FUNCTION_27_5();
      v21(v20);
      v22 = OUTLINED_FUNCTION_17_0();
      v23(v22);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_112_1();

      return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E70D0, &unk_227D50EA0);
      sub_227B81E10();
      v18 = sub_227B81F48();
      OUTLINED_FUNCTION_17(v18);
      v19 = *(v13 + 112);
      sub_227D49D08();
      sub_227D49468();
      v38 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v38);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v39, v40, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v19 = v41;
      OUTLINED_FUNCTION_1_30(v42);
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v43);
    }
  }

  else
  {
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_92_1(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_25(v34);
    OUTLINED_FUNCTION_112_1();

    return sub_227D08FEC(v36);
  }
}

uint64_t sub_227D08E4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameKitService.describeChallengeDefinitions(challengeDefinitions:)();
}

uint64_t sub_227D08FEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D09008, v1);
}

uint64_t sub_227D09008()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_41(v1);

  return sub_227B33A8C();
}

uint64_t GameKitService.refreshChallenges(player:filters:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_193_2(v1, v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[7] = v4;
  v0[8] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7268, &unk_227D5FB90);
  v0[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[15] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[16] = v10;
  v11 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v11);
  v12 = sub_227D49D58();
  v0[18] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[19] = v13;
  v0[20] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227D09284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_1();
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_79_8();
    OUTLINED_FUNCTION_73_5();
    OUTLINED_FUNCTION_184_4(v16, v17, v18, v19);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v20, v21, v22, v23);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v24, v25, v26, v27);
    v28 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1(v28, v29, v30, v31);
    if (v12)
    {
      v32 = OUTLINED_FUNCTION_60();
      v33(v32);
      v34 = OUTLINED_FUNCTION_17_0();
      v35(v34);
      OUTLINED_FUNCTION_71_8();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }

    else
    {
      v13[2] = v13[4];
      sub_227D4CE58();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7270, &unk_227D5FBA0);
      OUTLINED_FUNCTION_11_6(v43);
      sub_227B88988();
      sub_227B88AC0();
      OUTLINED_FUNCTION_9_0();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v44 = v13[20];
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v53 = swift_task_alloc();
      OUTLINED_FUNCTION_156_6(v53);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v54, v55, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_44_0();
      *v44 = v56;
      OUTLINED_FUNCTION_137_2();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
    }
  }

  else
  {
    v36 = swift_task_alloc();
    v37 = OUTLINED_FUNCTION_199_3(v36);
    *v37 = v38;
    v37[1] = sub_227D12B0C;
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_33();

    return sub_227D09828(v39, v40);
  }
}

uint64_t sub_227D09584(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B96FA0;

  return GameKitService.refreshChallenges(player:filters:)();
}

uint64_t sub_227D09828(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D09840()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_58_0(v1);

  return sub_227B354A8();
}

uint64_t GameKitService.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_160_1(v1, v2, v3, v4);
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[11] = v7;
  OUTLINED_FUNCTION_5(v7);
  v0[12] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v0[13] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[14] = v9;
  v0[15] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7268, &unk_227D5FB90);
  v0[16] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[17] = v11;
  v0[18] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[19] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[20] = v13;
  v0[21] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[22] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[23] = v15;
  v16 = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_229_1(v16);
  v0[25] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[26] = v18;
  v0[27] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227D09FA4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_227D12B1C;

  return GameKitService.listChallenges(player:filters:after:)();
}

uint64_t sub_227D0A364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0A380()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_127_0(v1);

  return sub_227B35538();
}

uint64_t GameKitService.describeChallenges(challenges:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7220, &qword_227D512C0);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0A550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7228, &unk_227D512D0);
    OUTLINED_FUNCTION_137_0(0x676E656C6C616863, 0xEA00000000007365, 0x676E656C6C616863, 0xEA00000000007365);
    sub_227B87C80();
    v14 = sub_227B87D30();
    OUTLINED_FUNCTION_8_3(v14);
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_27_5();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7240, &unk_227D5FAD0);
      sub_227B87DE0();
      v16 = sub_227B87F18();
      OUTLINED_FUNCTION_17(v16);
      v17 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v36);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v37, v38, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v17 = v39;
      OUTLINED_FUNCTION_1_30(v40);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v41);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_92_1(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_25(v32);
    OUTLINED_FUNCTION_46();

    return sub_227D0A96C(v34);
  }
}

uint64_t sub_227D0A7CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameKitService.describeChallenges(challenges:)();
}

uint64_t sub_227D0A96C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0A988, v1);
}

uint64_t sub_227D0A988()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_41(v1);

  return sub_227B3541C();
}

uint64_t GameKitService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_227D49458();
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_30();
  v6 = sub_227D4A058();
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A00, &unk_227D4EB40);
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[14] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[15] = v11;
  v1[16] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[17] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[18] = v13;
  v14 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_195_3(v14);
  v15 = sub_227D49D58();
  v1[20] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[21] = v16;
  v1[22] = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227D0AC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v16, v17, v18, v19);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1(v24, v25, v26, v27);
    if (v12)
    {
      v28 = v13[21];
      v29 = OUTLINED_FUNCTION_59();
      v30(v29);
      (*(v28 + 8))(v13[22], v13[20]);
      v44 = OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_97(v44);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }

    else
    {
      v36 = v13[10];
      v37 = OUTLINED_FUNCTION_56();
      v38(v37);
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_161_0(v39, v40, v41, v42);
      OUTLINED_FUNCTION_60_12();
      sub_227B0F8D0(v43, v36, MEMORY[0x277D0D060]);
      OUTLINED_FUNCTION_69_8(&qword_27D7E6A18);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v53 = swift_task_alloc();
      v13[23] = v53;
      type metadata accessor for GameKitService(0);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v54, v55, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_44_0();
      *v53 = v56;
      v53[1] = sub_227D0AF98;
      OUTLINED_FUNCTION_214_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v13[25] = v31;
    *v31 = v13;
    v31[1] = sub_227D12B2C;
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_33();

    return sub_227D0B330(v32, v33);
  }
}

uint64_t sub_227D0AF98()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D0B090(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B96FA0;

  return GameKitService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227D0B330(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0B348()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_58_0(v1);

  return sub_227B4EFC0();
}

uint64_t GameKitService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v1[13] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227D0B57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[15];
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_164_4(v16, v17, v18, v19);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_164_4(v20, v21, v22, v23);
    v24 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1(v24, v25, v26, v27);
    if (v13)
    {
      v28 = v12[14];
      v29 = OUTLINED_FUNCTION_86_5();
      v30(v29);
      (*(v28 + 8))(v12[15], v12[13]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v43 = swift_task_alloc();
      v12[16] = v43;
      type metadata accessor for GameKitService(0);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v44, v45, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_44_0();
      *v43 = v46;
      v43[1] = sub_227D0B820;
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B10](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
    }
  }

  else
  {
    v40 = swift_task_alloc();
    v12[18] = v40;
    *v40 = v12;
    v40[1] = sub_227B3FC38;
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227D0BB80(v41);
  }
}

uint64_t sub_227D0B820()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D0B918()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  v4 = OUTLINED_FUNCTION_156_4();
  v5(v4);

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227D0B9E8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B3FFF4;

  return GameKitService.refreshGameActivity(game:)();
}

uint64_t sub_227D0BB80(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0BB9C, v1);
}

uint64_t sub_227D0BB9C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_41(v1);

  return sub_227B4EC94();
}

uint64_t GameKitService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_160_1(v1, v2, v3, v4);
  v0[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[11] = v7;
  OUTLINED_FUNCTION_5(v7);
  v0[12] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v0[13] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[14] = v9;
  v0[15] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A28, &qword_227D636E0);
  v0[16] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[17] = v11;
  v0[18] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[19] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[20] = v13;
  v0[21] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v0[22] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v0[23] = v15;
  v16 = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_229_1(v16);
  v0[25] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[26] = v18;
  v0[27] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227D0C2F8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D0C5D0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_227D0C990;

  return GameKitService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227D0C990()
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 80);
  v19 = *(v0 + 72);
  OUTLINED_FUNCTION_69();
  v3 = *(v2 + 64);
  v5 = *(v4 + 56);
  v18 = *(v4 + 48);
  OUTLINED_FUNCTION_69();
  v7 = *(v6 + 40);
  v9 = v8[4];
  v10 = v8[3];
  v11 = v8[2];
  OUTLINED_FUNCTION_80_0();
  v13 = v12;
  OUTLINED_FUNCTION_5_4();
  *v14 = v13;

  (*(v10 + 8))(v9, v11);
  (*(v18 + 8))(v5, v7);
  (*(v19 + 8))(v1, v3);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_176_1();

  return v15();
}

uint64_t sub_227D0CBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0CBFC()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_127_0(v1);

  return sub_227B53F5C();
}

uint64_t GameKitService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A88, &qword_227D62480);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0CDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A90, &unk_227D62490);
    OUTLINED_FUNCTION_148_4();
    OUTLINED_FUNCTION_137_0(0xD000000000000017, v14, 0xD000000000000017, v15);
    sub_227B42330();
    v16 = sub_227B423E0();
    OUTLINED_FUNCTION_8_3(v16);
    if (v12)
    {
      v20 = OUTLINED_FUNCTION_27_5();
      v21(v20);
      v22 = OUTLINED_FUNCTION_17_0();
      v23(v22);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_112_1();

      return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AC0, &unk_227D624A0);
      sub_227B42490();
      v18 = sub_227B425C8();
      OUTLINED_FUNCTION_17(v18);
      v19 = *(v13 + 112);
      sub_227D49D08();
      sub_227D49468();
      v38 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v38);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v39, v40, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v19 = v41;
      OUTLINED_FUNCTION_1_30(v42);
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v43);
    }
  }

  else
  {
    v33 = swift_task_alloc();
    v34 = OUTLINED_FUNCTION_92_1(v33);
    *v34 = v35;
    OUTLINED_FUNCTION_25(v34);
    OUTLINED_FUNCTION_112_1();

    return sub_227D0D1E8(v36);
  }
}

uint64_t sub_227D0D048(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameKitService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227D0D1E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0D204, v1);
}

uint64_t sub_227D0D204()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_41(v1);

  return sub_227B55528();
}

uint64_t sub_227D0D298()
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v39 = v0[28];
  v40 = v0[30];
  v35 = v0[25];
  v37 = v0[27];
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = OUTLINED_FUNCTION_86_5();
  v5(v4);
  v6 = OUTLINED_FUNCTION_113();
  v7(v6);
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_173();
  v8(v9);
  v10 = (v8)(v1, v3);
  v18 = OUTLINED_FUNCTION_219_3(v10, v11, v12, v13, v14, v15, v16, v17, v33, v35, v37);
  v20 = v19(v18);
  v28 = OUTLINED_FUNCTION_221_2(v20, v21, v22, v23, v24, v25, v26, v27, v34, v36, v38, v39, v40);
  v29(v28);
  OUTLINED_FUNCTION_114_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_176_1();

  return v30();
}

uint64_t sub_227D0D3D0()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_227B43BF4;

  return sub_227B56840();
}

uint64_t GameKitService.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B20, &qword_227D65880);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  OUTLINED_FUNCTION_12_16(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D0D5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B28, &unk_227D65890);
    v14 = OUTLINED_FUNCTION_190_6();
    OUTLINED_FUNCTION_137_0(v14 & 0xFFFFFFFFFFFFLL | 0x6974000000000000, 0xEA00000000007365, v14 & 0xFFFFFFFFFFFFLL | 0x6974000000000000, 0xEA00000000007365);
    sub_227B44A84();
    v15 = sub_227B44B34();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v19 = OUTLINED_FUNCTION_27_5();
      v20(v19);
      v21 = OUTLINED_FUNCTION_17_0();
      v22(v21);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_82_0(v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B48, &unk_227D658A0);
      sub_227B44BE4();
      v17 = sub_227B44D1C();
      OUTLINED_FUNCTION_17(v17);
      v18 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v37 = swift_task_alloc();
      OUTLINED_FUNCTION_121_6(v37);
      OUTLINED_FUNCTION_0_57();
      sub_227B0F8D0(v38, v39, &protocol conformance descriptor for GameKitService);
      OUTLINED_FUNCTION_48();
      *v18 = v40;
      OUTLINED_FUNCTION_1_30(v41);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v42);
    }
  }

  else
  {
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_92_1(v32);
    *v33 = v34;
    OUTLINED_FUNCTION_25(v33);
    OUTLINED_FUNCTION_46();

    return sub_227D0DD74(v35);
  }
}

uint64_t sub_227D0D824()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D0D91C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_47_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_117_0();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227D0D9D4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_164();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_227D0DB1C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_47_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227D0DBD4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CA3714;

  return GameKitService.describeGameActivities(activities:)();
}

uint64_t sub_227D0DD74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D0DD90, v1);
}

uint64_t sub_227D0DD90()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_41(v1);

  return sub_227B56ECC();
}

uint64_t GameKitService.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_227D49458();
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_30();
  v6 = sub_227D49B08();
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B88, &unk_227D65950);
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_30();
  v10 = sub_227D498E8();
  v1[14] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[15] = v11;
  v1[16] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B90, &qword_227D4F000);
  v1[17] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[18] = v13;
  v14 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_195_3(v14);
  v15 = sub_227D49D58();
  v1[20] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[21] = v16;
  v1[22] = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227D0E05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_190_6();
    OUTLINED_FUNCTION_145_4();
    OUTLINED_FUNCTION_184_4(v16, v17, v18, v19);
    OUTLINED_FUNCTION_131_5();
    sub_227B0F8D0(v20, v12, MEMORY[0x277D0CB30]);
    OUTLINED_FUNCTION_137_6(&off_27D7E6B80);
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    v26 = OUTLINED_FUNCTION_56();
    v27(v26);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_161_0(v28, v29, v30, v31);
    v32 = MEMORY[0x277D0CC68];
    sub_227B0F8D0(&qword_27D7E6B98, MEMORY[0x277D0CC68], MEMORY[0x277D0CC80]);
    sub_227B0F8D0(&qword_27D7E6BA0, v32, MEMORY[0x277D0CC70]);
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v33 = swift_task_alloc();
    *(v13 + 184) = v33;
    type metadata accessor for GameKitService(0);
    OUTLINED_FUNCTION_0_57();
    sub_227B0F8D0(v34, v35, &protocol conformance descriptor for GameKitService);
    OUTLINED_FUNCTION_44_0();
    *v33 = v36;
    v33[1] = sub_227D0E3D8;
    OUTLINED_FUNCTION_214_3();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
  }

  else
  {
    v21 = swift_task_alloc();
    *(v13 + 200) = v21;
    *v21 = v13;
    v21[1] = sub_227D0E5B4;
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_33();

    return sub_227D0E9DC(v22, v23);
  }
}

uint64_t sub_227D0E3D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D0E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_62();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_91_4();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227D0E5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_77_0();
  v11 = *v10;
  OUTLINED_FUNCTION_5_4();
  *v12 = v11;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_163();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_227D0E73C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B80254;

  return GameKitService.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_227D0E9DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_227D0E9F4()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_164_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_58_0(v1);

  return sub_227B57834();
}

uint64_t GameKitService.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_193_2(v1, v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[7] = v4;
  v0[8] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[10] = v6;
  v7 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v7);
  v8 = sub_227D498E8();
  OUTLINED_FUNCTION_12_16(v8);
  v0[13] = v9;
  v0[14] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B90, &qword_227D4F000);
  v0[15] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[16] = v11;
  v12 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_178_6(v12);
  v13 = sub_227D49D58();
  v0[18] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[19] = v14;
  v0[20] = OUTLINED_FUNCTION_30();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D0EC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_1();
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_190_6();
    OUTLINED_FUNCTION_145_4();
    OUTLINED_FUNCTION_184_4(v16, v17, v18, v19);
    OUTLINED_FUNCTION_131_5();
    sub_227B0F8D0(v20, v12, MEMORY[0x277D0CB30]);
    OUTLINED_FUNCTION_137_6(&off_27D7E6B80);
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    v13[2] = v13[4];
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    OUTLINED_FUNCTION_148_4();
    sub_227D49478();
    sub_227B47E34();
    sub_227B47EE4();
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v26 = v13[20];
    sub_227D49D08();
    sub_227D49468();
    v27 = swift_task_alloc();
    OUTLINED_FUNCTION_156_6(v27);
    OUTLINED_FUNCTION_0_57();
    sub_227B0F8D0(v28, v29, &protocol conformance descriptor for GameKitService);
    OUTLINED_FUNCTION_44_0();
    *v26 = v30;
    OUTLINED_FUNCTION_137_2();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }

  else
  {
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_199_3(v21);
    *v22 = v23;
    OUTLINED_FUNCTION_35(v22);
    OUTLINED_FUNCTION_33();

    return sub_227D0F4B8();
  }
}

uint64_t sub_227D0EF98()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D0F090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_73_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_206_0();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227D0F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_73_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_108_6();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227D0F214(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B80254;

  return GameKitService.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t GameKitService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_id;
  sub_227D49D78();
  OUTLINED_FUNCTION_22_13();
  sub_227B0F8D0(v2, v3, MEMORY[0x277D0CE30]);
  sub_227D493C8();
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  (*(v4 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameKitService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore14GameKitService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v2 + 8))(v0 + v1);

    swift_defaultActor_destroy();
  }

  else
  {
    GameKitService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227D0F644()
{
  sub_227D4DB58();
  type metadata accessor for GameKitService(0);
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v0, v1, &protocol conformance descriptor for GameKitService);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t GameKitService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for GameKitService(0);
    OUTLINED_FUNCTION_0_57();
    sub_227B0F8D0(v1, v2, &protocol conformance descriptor for GameKitService);
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227D0F73C@<X0>(uint64_t *a1@<X8>)
{
  result = GameKitService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227D0F7CC()
{
  OUTLINED_FUNCTION_109_0();
  type metadata accessor for GameKitService(0);
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v0, v1, &protocol conformance descriptor for GameKitService);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227D0F830(uint64_t a1)
{
  sub_227D4DB58();
  type metadata accessor for GameKitService(0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227D0F96C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeAchievements(achievements:)();
}

uint64_t sub_227D0F9F0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.listAchievements(games:after:)();
}

uint64_t sub_227D0FA7C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.getAchievementsProgresses(achievements:player:)();
}

uint64_t sub_227D0FB08()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.resetAchievementsProgress(achievements:players:)();
}

uint64_t sub_227D0FB94()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.revealAchievements(achievements:players:)();
}

uint64_t sub_227D0FC20()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.submitAchievementsProgress(progress:)();
}

uint64_t sub_227D0FCA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeLeaderboards(leaderboards:)();
}

uint64_t sub_227D0FD28()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_96_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);
  OUTLINED_FUNCTION_208_1();
  OUTLINED_FUNCTION_117_0();

  return GameKitService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_227D0FDC0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_164();

  return GameKitService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_227D0FE54()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.listLeaderboards(games:players:)();
}

uint64_t sub_227D0FEE0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.submitLeaderboardEntries(entries:)();
}

uint64_t sub_227D0FF64()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeLeaderboardSets(leaderboardSets:)();
}

uint64_t sub_227D0FFE8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.listLeaderboardSets(games:)();
}

uint64_t sub_227D1006C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_227D100F0()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return GameKitService.refreshChallengeDefinitions(game:filters:scope:)();
}

uint64_t sub_227D10194()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.refreshChallengeDefinitions(game:filters:)();
}

uint64_t sub_227D10220()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.refreshChallengeDefinitions(challengeDefinitions:scope:)();
}

uint64_t sub_227D102AC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_164();

  return GameKitService.listChallengeDefinitions(game:filters:after:)();
}

uint64_t sub_227D1033C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeChallengeDefinitions(challengeDefinitions:)();
}

uint64_t sub_227D103C0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.refreshChallenges(player:filters:)();
}

uint64_t sub_227D1044C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_164();

  return GameKitService.listChallenges(player:filters:after:)();
}

uint64_t sub_227D104DC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeChallenges(challenges:)();
}

uint64_t sub_227D10560()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227D105EC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.refreshGameActivity(game:)();
}

uint64_t sub_227D10670()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76(v1);
  OUTLINED_FUNCTION_164();

  return GameKitService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227D10700()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227D10784()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameKitService.describeGameActivities(activities:)();
}

uint64_t sub_227D10808()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_227D10894()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameKitService.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t sub_227D10920()
{
  type metadata accessor for GameKitService(0);
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v0, v1, &protocol conformance descriptor for GameKitService);
  v2 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v2);
}

uint64_t sub_227D10998(uint64_t a1)
{
  type metadata accessor for GameKitService(0);
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v1, v2, &protocol conformance descriptor for GameKitService);
  OUTLINED_FUNCTION_61_11();
  sub_227B0F8D0(v3, v4, MEMORY[0x277D0CE98]);
  return sub_227D49428();
}

uint64_t sub_227D10A40@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GameKitService(0);
  OUTLINED_FUNCTION_0_57();
  sub_227B0F8D0(v3, v4, &protocol conformance descriptor for GameKitService);
  OUTLINED_FUNCTION_61_11();
  sub_227B0F8D0(v5, v6, MEMORY[0x277D0CEA8]);
  OUTLINED_FUNCTION_9_0();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of GameKitService.describeAchievements(achievements:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 128) + **(v0 + 128));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.getAchievementsProgresses(achievements:player:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.resetAchievementsProgress(achievements:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 144) + **(v0 + 144));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.revealAchievements(achievements:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 152) + **(v0 + 152));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.submitAchievementsProgress(progress:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.describeLeaderboards(leaderboards:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_45();
  v5 = (*(v0 + 176) + **(v0 + 176));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);
  OUTLINED_FUNCTION_208_1();

  return v5();
}

uint64_t dispatch thunk of GameKitService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 184) + **(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);
  v4 = OUTLINED_FUNCTION_95_2();

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 192) + **(v0 + 192));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.submitLeaderboardEntries(entries:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.describeLeaderboardSets(leaderboardSets:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.refreshChallengeDefinitions(game:filters:scope:)()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_45();
  v11 = (*(v6 + 232) + **(v6 + 232));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_35(v8);

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of GameKitService.refreshChallengeDefinitions(game:filters:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 240) + **(v0 + 240));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.refreshChallengeDefinitions(challengeDefinitions:scope:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 248) + **(v0 + 248));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.listChallengeDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 256) + **(v0 + 256));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_76(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.refreshChallenges(player:filters:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 272) + **(v0 + 272));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 280) + **(v0 + 280));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_76(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.describeChallenges(challenges:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 296) + **(v0 + 296));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 312) + **(v0 + 312));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_76(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.listGameActivities(game:filters:excludedFilters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_45();
  v5 = (*(v0 + 328) + **(v0 + 328));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_208_1();

  return v5();
}

uint64_t dispatch thunk of GameKitService.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameKitService.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 344) + **(v0 + 344));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameKitService.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 352) + **(v0 + 352));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t OUTLINED_FUNCTION_48_10(uint64_t a1, uint64_t a2)
{

  return sub_227D49478();
}

uint64_t OUTLINED_FUNCTION_121_6(uint64_t a1)
{
  *(v1 + 120) = a1;

  return type metadata accessor for GameKitService(0);
}

uint64_t OUTLINED_FUNCTION_137_6(unint64_t *a1)
{
  v3 = MEMORY[0x277D0CB20];

  return sub_227B0F8D0(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_150_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_164_4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_227B15A74(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_183_7(uint64_t a1)
{
  *(v1 + 224) = a1;

  return type metadata accessor for GameKitService(0);
}

uint64_t OUTLINED_FUNCTION_206_0()
{
}

Swift::String_optional __swiftcall Locale.getClosestLocale(from:)(Swift::OpaquePointer from)
{
  v2 = sub_227D492D8();
  v3 = *(v2 - 8);
  isUniquelyReferenced_nonNull_native = MEMORY[0x28223BE20](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(from._rawValue + 2);
  v10 = from._rawValue + 40;
  v11 = MEMORY[0x277D84F90];
  v36 = from._rawValue + 40;
LABEL_2:
  v12 = &v10[16 * v8];
  while (v9 != v8)
  {
    if (v8 >= v9)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (__OFADD__(v8, 1))
    {
      goto LABEL_24;
    }

    v14 = *(v12 - 1);
    v13 = *v12;
    sub_227D4CE58();
    v15 = sub_227CB7D30();
    v16 = v14 == *v15 && v13 == *(v15 + 1);
    if (!v16 && (sub_227D4DA78() & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v11;
      v35 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_227B3CA88(0, *(v11 + 16) + 1, 1);
        v11 = v37;
      }

      v10 = v36;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_227B3CA88((v17 > 1), v18 + 1, 1);
        v10 = v36;
        v11 = v37;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v13;
      ++v8;
      v2 = v35;
      goto LABEL_2;
    }

    ++v8;
    v12 += 16;
  }

  if (*(v11 + 16))
  {
    (*(v3 + 104))(v7, *MEMORY[0x277CC9670], v2);
    v20 = sub_227D492C8();
    v21 = v2;
    v22 = v20;
    v24 = v23;
    (*(v3 + 8))(v7, v21);
    v25 = objc_opt_self();
    v26 = sub_227D4D1B8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_227D4E520;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    v28 = sub_227D4D1B8();

    v29 = [v25 preferredLocalizationsFromArray:v26 forPreferences:v28];

    v30 = sub_227D4D1C8();
    if (v30[2])
    {
      v31 = v30[4];
      v32 = v30[5];
      sub_227D4CE58();
    }

    else
    {

      v31 = 0;
      v32 = 0;
    }
  }

  else
  {

    v33 = sub_227CB7D30();
    v31 = *v33;
    v32 = *(v33 + 1);
    sub_227D4CE58();
  }

  isUniquelyReferenced_nonNull_native = v31;
  v5 = v32;
LABEL_25:
  result.value._object = v5;
  result.value._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t GameLibraryService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_id;
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_227D130B4()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BDC8);
  v1 = OUTLINED_FUNCTION_58();
  __swift_project_value_buffer(v1, v2);
  return sub_227D49EA8();
}

uint64_t sub_227D130FC()
{
  if (_MergedGlobals_17 != -1)
  {
    OUTLINED_FUNCTION_69_9(&_MergedGlobals_17);
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BDC8);
}

uint64_t static GameLibraryService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_17 != -1)
  {
    OUTLINED_FUNCTION_69_9(&_MergedGlobals_17);
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BDC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227D131E8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_227D13238(a1, a2);
  return v4;
}

uint64_t *sub_227D13238(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v12 = sub_227D49EF8();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_actorSystem) = a1;
  v14 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_3_27();
  sub_227B0F918(v8);
  OUTLINED_FUNCTION_0_58();
  sub_227B0F918(v9);

  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_id, v6, v12);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore18GameLibraryService_dataProvider) = v13;
  v14 = *(v2 + v7);

  OUTLINED_FUNCTION_132_0();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for GameLibraryService(uint64_t a1)
{
  result = qword_27D8029A0;
  if (!qword_27D8029A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameLibraryService.describe(games:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *v0;
  v3 = sub_227D49458();
  v1[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v1[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D135FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[15];
    v14 = v12[4];
    OUTLINED_FUNCTION_36();
    v12[2] = v14;
    sub_227D4CE58();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_51_1(v15);
    OUTLINED_FUNCTION_6_16();
    sub_227D141F0(v16);
    OUTLINED_FUNCTION_5_20();
    sub_227D141F0(v17);
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v13)
    {
      v21 = OUTLINED_FUNCTION_104_7();
      v22(v21);
      v23 = OUTLINED_FUNCTION_57_0();
      v24(v23);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA390, &qword_227D65FB8);
      OUTLINED_FUNCTION_10_19();
      sub_227D14284(v18);
      OUTLINED_FUNCTION_9_13();
      v20 = sub_227D14284(v19);
      OUTLINED_FUNCTION_17(v20);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v37 = swift_task_alloc();
      v12[16] = v37;
      OUTLINED_FUNCTION_0_58();
      sub_227B0F918(v38);
      OUTLINED_FUNCTION_47();
      *v37 = v39;
      v37[1] = sub_227D13944;
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    v34 = swift_task_alloc();
    v12[18] = v34;
    *v34 = v12;
    v34[1] = sub_227D13AEC;
    OUTLINED_FUNCTION_53(v12[4]);
    OUTLINED_FUNCTION_46();

    return GameLibraryService.describe(games:)(v35);
  }
}

uint64_t sub_227D13944()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D13A3C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_86_8();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_117_0();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227D13AEC()
{
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_227D13C4C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_86_8();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227D13CFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227D13E9C;

  return GameLibraryService.describe(games:)();
}

uint64_t sub_227D13E9C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_89_6();
  *v0 = v1;
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_9_2();
  v5(v4);

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t GameLibraryService.describe(games:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D14030, v1);
}

uint64_t sub_227D14030()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_17_17(v2);

  return GameLibraryAggregateService.describe(games:)();
}

uint64_t sub_227D140C4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_112_6();
    v7 = OUTLINED_FUNCTION_29_12();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    sub_227D14460(v3 + 16);
    v10 = OUTLINED_FUNCTION_28_13();

    return v11(v10);
  }
}

unint64_t sub_227D141F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6DD0, &unk_227D58AB0);
    sub_227B15ABC(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227D14284(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA390, &qword_227D65FB8);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227D142F8()
{
  result = qword_27D7EA3A0;
  if (!qword_27D7EA3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9940, &unk_227D5EDF0);
    sub_227B0F918(&unk_27D7EA3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA3A0);
  }

  return result;
}

unint64_t sub_227D143AC()
{
  result = qword_27D7EA3B8;
  if (!qword_27D7EA3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9940, &unk_227D5EDF0);
    sub_227B0F918(&unk_27D7EA3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA3B8);
  }

  return result;
}

uint64_t GameLibraryService.describe(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v5 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_111_5(v5);
  v6 = sub_227D4A458();
  v1[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA3C8, &qword_227D66040);
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v10 = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_113_7(v10);
  v1[15] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_30();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227D14664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_8_17();
    sub_227B0F918(&unk_27D7EA3D0);
    sub_227B0F918(&unk_27D7EA3D8);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v12)
    {
      v19 = OUTLINED_FUNCTION_110_0();
      v20(v19);
      v21 = OUTLINED_FUNCTION_57_0();
      v22(v21);
      OUTLINED_FUNCTION_38_13();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA390, &qword_227D65FB8);
      OUTLINED_FUNCTION_10_19();
      sub_227D14284(v16);
      OUTLINED_FUNCTION_9_13();
      v18 = sub_227D14284(v17);
      OUTLINED_FUNCTION_17(v18);
      sub_227D49D08();
      OUTLINED_FUNCTION_107_5();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v35 = swift_task_alloc();
      OUTLINED_FUNCTION_105_8(v35);
      OUTLINED_FUNCTION_0_58();
      sub_227B0F918(v36);
      OUTLINED_FUNCTION_47();
      MEMORY[0] = v37;
      OUTLINED_FUNCTION_31_8();
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v38);
    }
  }

  else
  {
    v32 = swift_task_alloc();
    *(v13 + 160) = v32;
    *v32 = v13;
    v32[1] = sub_227D1C27C;
    OUTLINED_FUNCTION_53(*(v13 + 24));
    OUTLINED_FUNCTION_46();

    return GameLibraryService.describe(with:)(v33);
  }
}

uint64_t sub_227D14980()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D14A78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227D1C2BC;

  return GameLibraryService.describe(with:)();
}

uint64_t GameLibraryService.describe(with:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D14C30, v1);
}

uint64_t sub_227D14C30()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_17_17(v2);

  return GameLibraryAggregateService.describe(with:)();
}

uint64_t GameLibraryService.describe2(games:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *v0;
  v3 = sub_227D49458();
  v1[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v1[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D14E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[15];
    v14 = v12[4];
    OUTLINED_FUNCTION_36();
    v12[2] = v14;
    sub_227D4CE58();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_51_1(v15);
    OUTLINED_FUNCTION_6_16();
    sub_227D141F0(v16);
    OUTLINED_FUNCTION_5_20();
    sub_227D141F0(v17);
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v13)
    {
      v21 = OUTLINED_FUNCTION_104_7();
      v22(v21);
      v23 = OUTLINED_FUNCTION_57_0();
      v24(v23);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA390, &qword_227D65FB8);
      OUTLINED_FUNCTION_10_19();
      sub_227D14284(v18);
      OUTLINED_FUNCTION_9_13();
      v20 = sub_227D14284(v19);
      OUTLINED_FUNCTION_17(v20);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v37 = swift_task_alloc();
      v12[16] = v37;
      OUTLINED_FUNCTION_0_58();
      sub_227B0F918(v38);
      OUTLINED_FUNCTION_47();
      *v37 = v39;
      v37[1] = sub_227D1517C;
      OUTLINED_FUNCTION_1_35();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    v34 = swift_task_alloc();
    v12[18] = v34;
    *v34 = v12;
    v34[1] = sub_227D1C294;
    OUTLINED_FUNCTION_53(v12[4]);
    OUTLINED_FUNCTION_46();

    return GameLibraryService.describe2(games:)(v35);
  }
}

uint64_t sub_227D1517C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227D15274(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227D1C2BC;

  return GameLibraryService.describe2(games:)();
}

uint64_t GameLibraryService.describe2(games:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D15430, v1);
}

uint64_t sub_227D15430()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40_10(*(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_17_17(v2);

  return GameLibraryAggregateService.describe2(games:)();
}

uint64_t GameLibraryService.listGameHistories(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 25) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 32) = v8;
  *(v1 + 88) = *v0;
  v9 = sub_227D49458();
  *(v1 + 96) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 104) = v10;
  *(v1 + 112) = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  *(v1 + 120) = v11;
  OUTLINED_FUNCTION_10_0(v11);
  *(v1 + 128) = v12;
  *(v1 + 136) = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  *(v1 + 144) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v1 + 152) = v14;
  *(v1 + 160) = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  *(v1 + 168) = v15;
  OUTLINED_FUNCTION_5(v15);
  *(v1 + 176) = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  *(v1 + 184) = v16;
  OUTLINED_FUNCTION_10_0(v16);
  *(v1 + 192) = v17;
  *(v1 + 200) = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE0, &unk_227D62190);
  *(v1 + 208) = v18;
  OUTLINED_FUNCTION_10_0(v18);
  *(v1 + 216) = v19;
  *(v1 + 224) = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9840, &qword_227D5EB60);
  *(v1 + 232) = v20;
  OUTLINED_FUNCTION_5(v20);
  *(v1 + 240) = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE8, &unk_227D621A0);
  *(v1 + 248) = v21;
  OUTLINED_FUNCTION_10_0(v21);
  *(v1 + 256) = v22;
  *(v1 + 264) = OUTLINED_FUNCTION_30();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9848, &unk_227D5EB68);
  *(v1 + 272) = v23;
  OUTLINED_FUNCTION_5(v23);
  *(v1 + 280) = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DF0, &qword_227D621B0);
  *(v1 + 288) = v24;
  OUTLINED_FUNCTION_10_0(v24);
  *(v1 + 296) = v25;
  *(v1 + 304) = OUTLINED_FUNCTION_30();
  v26 = sub_227D49D58();
  *(v1 + 312) = v26;
  OUTLINED_FUNCTION_10_0(v26);
  *(v1 + 320) = v27;
  *(v1 + 328) = OUTLINED_FUNCTION_30();
  v28 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_227D1588C()
{
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_96_8();
    OUTLINED_FUNCTION_36();
    sub_227CA5D74(v3, v2, &qword_27D7E9848, &unk_227D5EB68);
    sub_227D49478();
    sub_227CA0BB4();
    sub_227CA0C68();
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v0)
    {
      v4 = OUTLINED_FUNCTION_94_7();
      v5(v4);
      v18 = OUTLINED_FUNCTION_57_0();
      v19(v18);
      OUTLINED_FUNCTION_88_6();
      OUTLINED_FUNCTION_26_13();

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_93_7();

      __asm { BRAA            X1, X16 }
    }

    sub_227CA5D74(v1[6], v1[30], &qword_27D7E9840, &qword_227D5EB60);
    OUTLINED_FUNCTION_46_9();
    sub_227CA0D1C();
    sub_227CA0DD0();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    OUTLINED_FUNCTION_85_9();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E38, &unk_227D621C0);
    OUTLINED_FUNCTION_65_8(v17);
    OUTLINED_FUNCTION_67_3(&unk_27D7E9E40);
    OUTLINED_FUNCTION_66_9(&unk_27D7E9E48, MEMORY[0x277D83E90]);
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    sub_227CA5D74(v1[8], v1[22], &qword_27D7E6908, &unk_227D4E690);
    OUTLINED_FUNCTION_61_0();
    sub_227B15FB0();
    sub_227B16064();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v22 = OUTLINED_FUNCTION_80_7();
    v23(v22);
    OUTLINED_FUNCTION_47_12();
    OUTLINED_FUNCTION_53_6(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_52_10(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    sub_227D49D28();
    v24 = OUTLINED_FUNCTION_113();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_53_1(&unk_27D7EA3E8);
    v26 = OUTLINED_FUNCTION_52_0(&unk_27D7EA3F0);
    OUTLINED_FUNCTION_17(v26);
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v27 = swift_task_alloc();
    v1[42] = v27;
    OUTLINED_FUNCTION_0_58();
    sub_227B0F918(v28);
    OUTLINED_FUNCTION_61_12();
    *v27 = v29;
    v27[1] = sub_227D1600C;
    OUTLINED_FUNCTION_1_35();

    return MEMORY[0x282164B00](v30);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v1[44] = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_77_8(v6);
    OUTLINED_FUNCTION_93_7();

    return GameLibraryService.listGameHistories(by:sortBy:upTo:after:belongingTo:)(v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_227D1600C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}