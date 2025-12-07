uint64_t sub_227CAF640()
{
  v0[31] = 0;
  v1 = *(v0[4] + 96);
  v0[32] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[33] = *(*v1 + 96);
  v0[34] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CAE954, v1);
}

uint64_t sub_227CAF680()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v5);
  v1[8] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E00, &unk_227D4FA70);
  v1[9] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CAF7B4()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[3] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[13] = 0;
  v0[14] = v2;
  v0[12] = v1;
  if (v1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
    OUTLINED_FUNCTION_5(v3);
    OUTLINED_FUNCTION_19();
    v0[15] = sub_227D4A6A8();
    v0[16] = v4;
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_65_6(v8);
    OUTLINED_FUNCTION_30_0();

    return sub_227CACB7C();
  }

  else
  {

    OUTLINED_FUNCTION_115();
    v6 = MEMORY[0x277D84F90];

    return v5(v6);
  }
}

uint64_t sub_227CAF964()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_18();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_227CAFAB4()
{
  v1 = *(v0[4] + 96);
  v0[19] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[20] = *(*v1 + 96);
  v0[21] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CAFAF0, v1);
}

uint64_t sub_227CAFAF0()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 176) = (*(v0 + 160))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CAFB54()
{
  OUTLINED_FUNCTION_111();
  if (*(v0[22] + 16) && (v1 = sub_227B2664C(v0[15], v0[16]), v2 = v0[22], (v3 & 1) != 0))
  {
    v4 = v1;

    v0[23] = *(*(v2 + 56) + 8 * v4);

    OUTLINED_FUNCTION_119_5();
    v5 += 34;
    v0[24] = *v5;
    v0[25] = v5 & 0xFFFFFFFFFFFFLL | 0xF3E0000000000000;
    OUTLINED_FUNCTION_89_5();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {

    v9 = sub_227D49E08();
    OUTLINED_FUNCTION_1_32();
    v12 = sub_227B12A10(v10, v11, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_10_3(v9, v12);
    v14 = v13;
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v20 = v15;
    v16 = OUTLINED_FUNCTION_236();
    MEMORY[0x22AAA5DA0](v16);

    MEMORY[0x22AAA5DA0](46, 0xE100000000000000);
    *v14 = 0xD000000000000022;
    v14[1] = v20;
    OUTLINED_FUNCTION_14_0();
    (*(v17 + 104))(v14);
    swift_willThrow();

    OUTLINED_FUNCTION_18();

    return v18();
  }
}

uint64_t sub_227CAFD7C()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 208) = (*(v0 + 192))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CAFDE0()
{
  v1 = v0;
  v2 = v0[26];
  v3 = *(v2 + 16);
  if (v3)
  {
    v0[2] = MEMORY[0x277D84F90];
    sub_227B7AF44(0, v3, 0);
    v4 = v0[2];
    v7 = sub_227BB78B0(v2);
    v8 = 0;
    v9 = v2 + 64;
    v66 = v3;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v2 + 32))
      {
        v10 = v7 >> 6;
        if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_38;
        }

        if (*(v2 + 36) != v5)
        {
          goto LABEL_39;
        }

        v67 = v6;
        v68 = v5;
        v11 = v1[6];
        v12 = *(v11 + 72);
        (*(v11 + 16))(v1[7], *(v2 + 56) + v12 * v7, v1[5]);
        v13 = v4;
        v1[2] = v4;
        v15 = *(v4 + 16);
        v14 = *(v4 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_227B7AF44((v14 > 1), v15 + 1, 1);
          v13 = v1[2];
        }

        v17 = v1[6];
        v16 = v1[7];
        v18 = v1;
        v19 = v1[5];
        *(v13 + 16) = v15 + 1;
        v4 = v13;
        (*(v17 + 32))(v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v15 * v12, v16, v19);
        v1 = (1 << *(v2 + 32));
        if (v7 >= v1)
        {
          goto LABEL_40;
        }

        v9 = v2 + 64;
        v20 = *(v2 + 64 + 8 * v10);
        if ((v20 & (1 << v7)) == 0)
        {
          goto LABEL_41;
        }

        if (*(v2 + 36) != v68)
        {
          goto LABEL_42;
        }

        v21 = v20 & (-2 << (v7 & 0x3F));
        if (v21)
        {
          v1 = (__clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0);
          v22 = v66;
        }

        else
        {
          v23 = v10 << 6;
          v22 = v66;
          v24 = (v2 + 72 + 8 * v10);
          v25 = v10 + 1;
          while (v25 < (v1 + 63) >> 6)
          {
            v27 = *v24++;
            v26 = v27;
            v23 += 64;
            ++v25;
            if (v27)
            {
              sub_227B3E218(v7, v68, v67 & 1);
              v1 = (__clz(__rbit64(v26)) + v23);
              goto LABEL_18;
            }
          }

          sub_227B3E218(v7, v68, v67 & 1);
        }

LABEL_18:
        if (++v8 == v22)
        {
          v1 = v18;

          goto LABEL_23;
        }

        v6 = 0;
        v5 = *(v2 + 36);
        v7 = v1;
        v1 = v18;
        if (v7 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_23:
  sub_227D4A958();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  sub_227B7A4F8(&qword_27D7E6D68, MEMORY[0x277D0D520]);
  sub_227B7A4F8(&qword_27D7E6D80, MEMORY[0x277D0D500]);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v1[14];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_43:
    v50 = OUTLINED_FUNCTION_54();
    v33 = sub_227CB70A0(v50, v51, v52, v53, v54, v55, v56, v57);
  }

  v34 = v33[2];
  if (v34 >= v33[3] >> 1)
  {
    OUTLINED_FUNCTION_59_0();
    v33 = sub_227CB70A0(v58, v59, v60, v61, v62, v63, v64, v65);
  }

  v36 = v1[10];
  v35 = v1[11];
  v37 = v1[9];

  v33[2] = v34 + 1;
  (*(v36 + 32))(v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v34, v35, v37);
  v38 = v1[18];
  v39 = v1[12];
  v40 = v1[13] + 1;
  v1[13] = v40;
  v1[14] = v33;
  if (v40 == v39)
  {

    OUTLINED_FUNCTION_90();

    __asm { BRAA            X2, X16 }
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_10_0(v43);
  v1[15] = sub_227D4A6A8();
  v1[16] = v44;
  if (v38)
  {

    OUTLINED_FUNCTION_90();

    __asm { BRAA            X1, X16 }
  }

  v47 = swift_task_alloc();
  v1[17] = v47;
  *v47 = v1;
  OUTLINED_FUNCTION_65_6(v47);
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_90();

  return sub_227CACB7C();
}

uint64_t sub_227CB0368()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_227D4A298();
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_121();
  v1[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE0, &unk_227D63220);
  OUTLINED_FUNCTION_5(v6);
  v1[9] = OUTLINED_FUNCTION_121();
  v1[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A0, &unk_227D62E90);
  OUTLINED_FUNCTION_5(v7);
  v1[11] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[12] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[13] = v9;
  v1[14] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[15] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[16] = v11;
  v1[17] = OUTLINED_FUNCTION_30();
  v12 = type metadata accessor for AchievementPlayerKey(0);
  OUTLINED_FUNCTION_5(v12);
  v1[18] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v1[19] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[20] = v14;
  v1[21] = OUTLINED_FUNCTION_121();
  v1[22] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227CB05B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[20];
  v16 = v14[16];
  v17 = v14[2];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  v14[24] = 0;
  v14[25] = v19;
  v14[23] = v18;
  if (v18)
  {
    v20 = v14[21];
    v21 = v14[22];
    v22 = v14[19];
    v23 = v14[17];
    v24 = v14[15];
    v25 = v14[3];
    v26 = *(v15 + 16);
    v26(v21, v17 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v22);
    v26(v20, v21, v22);
    (*(v16 + 16))(v23, v25, v24);
    sub_227CC1DD0();
    sub_227D4A758();
    v14[26] = sub_227D4A6A8();
    v14[27] = v36;
    v14[28] = sub_227D4A748();
    v14[29] = v37;
    v38 = swift_task_alloc();
    v14[30] = v38;
    *v38 = v14;
    v38[1] = sub_227CB0904;
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_16_0();

    return sub_227CACB7C();
  }

  else
  {

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227CB0904()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CB0A1C()
{
  v1 = *(v0[4] + 96);
  v0[32] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[33] = *(*v1 + 96);
  v0[34] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CB0A58, v1);
}

uint64_t sub_227CB0A58()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_122_3();
  *(v0 + 280) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB0D10()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 312) = (*(v0 + 296))();

  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CB0FD4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_122_3();
  *(v0 + 320) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB1034()
{
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_148_3();
  v0[41] = v1;

  if (v1)
  {
    v2 = *v1 + 320;
    v0[42] = *v2;
    v0[43] = v2 & 0xFFFFFFFFFFFFLL | 0x5AFB000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
    sub_227B4DB00(v0[10], &qword_27D7E9EE0, &unk_227D63220);
  }

  OUTLINED_FUNCTION_85_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CB1108()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 352) = (*(v0 + 336))();

  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CB1174()
{
  OUTLINED_FUNCTION_20();
  sub_227CAE2D0(v0[44], v0[10], v0[18]);

  if (OUTLINED_FUNCTION_129_3() == 1)
  {
    v1 = v0[32];
    sub_227B4DB00(v0[10], &qword_27D7E9EE0, &unk_227D63220);
    v2 = sub_227CB1248;
    v3 = v1;
  }

  else
  {
    sub_227B4DB00(v0[10], &qword_27D7E9EE0, &unk_227D63220);
    OUTLINED_FUNCTION_24_11();
    v2 = v4;
  }

  return MEMORY[0x2822009F8](v2, v3, 0);
}

uint64_t sub_227CB1248()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_122_3();
  *(v0 + 360) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB12A8()
{
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_148_3();
  v0[46] = v1;

  if (v1)
  {
    v2 = *v1 + 672;
    v0[47] = *v2;
    v0[48] = v2 & 0xFFFFFFFFFFFFLL | 0x723000000000000;
    v3 = sub_227CB1350;
    v4 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_24_11();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_227CB1350()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 376))(*(v0 + 144));

  OUTLINED_FUNCTION_24_11();

  return MEMORY[0x2822009F8](v2, v1, 0);
}

uint64_t sub_227CB13B8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_122_3();
  *(v0 + 392) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB1664()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 424) = (*(v0 + 408))();

  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CB1CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = *(v12 + 144);
  v14 = OUTLINED_FUNCTION_110_0();
  v15(v14);
  OUTLINED_FUNCTION_0_51();
  sub_227B17A4C(v13, v16);
  v17 = OUTLINED_FUNCTION_57_0();
  v18(v17);
  v28 = *(v12 + 248);
  OUTLINED_FUNCTION_39_8();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t sub_227CB1DE4()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[10] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_30();
  v6 = type metadata accessor for AchievementPlayerKey(0);
  OUTLINED_FUNCTION_5(v6);
  v1[13] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A0, &unk_227D62E90);
  OUTLINED_FUNCTION_5(v7);
  v1[14] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[15] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v1[18] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_121();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227CB1FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_138();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_166();
  a22 = v24;
  v27 = v24[19];
  v28 = v24[9];
  v29 = v24[7];
  v30 = *(v29 + 16);
  v24[23] = v30;
  v24[24] = 0;
  if (v30)
  {
    v31 = v24[22];
    v32 = v24[18];
    v34 = *(v27 + 16);
    v33 = v27 + 16;
    v24[25] = *(v33 + 56);
    v35 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v24[26] = v34;
    v24[27] = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v31, v29 + v35, v32);
    v36 = sub_227D4A748();
    v38 = OUTLINED_FUNCTION_139_2(v36, v37);
    OUTLINED_FUNCTION_128_3(v38);
    v24[30] = sub_227D4A6A8();
    v24[31] = v41;
    v51 = OUTLINED_FUNCTION_55_8();
    v52(v51);
    v53 = swift_task_alloc();
    v54 = OUTLINED_FUNCTION_117_4(v53);
    *v54 = v55;
    OUTLINED_FUNCTION_7_23(v54);
    OUTLINED_FUNCTION_236();
    OUTLINED_FUNCTION_23();

    return sub_227CACB7C();
  }

  else
  {
    sub_227C19454(v28 + 16, (v24 + 2));
    v39 = v24[5];
    v40 = v24[6];
    __swift_project_boxed_opaque_existential_1(v24 + 2, v39);
    HIBYTE(a12) = 0;
    v57 = v24[13];
    v58 = v24[12];
    (*(v40 + 120))(&a12 + 7, MEMORY[0x277D84F90], v39, v40);

    __swift_destroy_boxed_opaque_existential_0(v24 + 2);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_23();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, v57, v58, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227CB222C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CB2338()
{
  v1 = *(v0[9] + 96);
  v0[34] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[35] = *(*v1 + 96);
  v0[36] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CB2374, v1);
}

uint64_t sub_227CB2374()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 296) = (*(v0 + 280))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CB23D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  if (*(v14[37] + 16) && (sub_227B2664C(v14[30], v14[31]), (v15 & 1) != 0))
  {

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_16_0();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }

  else
  {

    v20 = OUTLINED_FUNCTION_126_3();
    OUTLINED_FUNCTION_1_32();
    v23 = sub_227B12A10(v21, v22, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_10_3(v20, v23);
    v25 = v24;
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_144_4();

    *v25 = a9;
    v25[1] = a10;
    OUTLINED_FUNCTION_14_0();
    (*(v26 + 104))(v25);
    swift_willThrow();
    v27 = OUTLINED_FUNCTION_35_0();
    v28(v27);
    OUTLINED_FUNCTION_69_6(v14[22]);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227CB258C()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 304) = (*(v0 + 280))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CB25F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  if (*(v14[38] + 16) && (v15 = sub_227B2664C(v14[30], v14[31]), (v16 & 1) != 0))
  {
    v14[39] = *(*(v14[38] + 56) + 8 * v15);

    OUTLINED_FUNCTION_119_5();
    v17 += 34;
    v14[40] = *v17;
    v14[41] = v17 & 0xFFFFFFFFFFFFLL | 0xF3E0000000000000;
    OUTLINED_FUNCTION_89_5();
    OUTLINED_FUNCTION_16_0();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }

  else
  {
    v22 = v14[18];

    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
    sub_227B4DB00(v14[14], &qword_27D7E96A0, &unk_227D62E90);
    v26 = OUTLINED_FUNCTION_126_3();
    OUTLINED_FUNCTION_1_32();
    v29 = sub_227B12A10(v27, v28, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_10_3(v26, v29);
    v31 = v30;
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_144_4();

    *v31 = a9;
    v31[1] = a10;
    OUTLINED_FUNCTION_14_0();
    (*(v32 + 104))(v31);
    swift_willThrow();
    v33 = OUTLINED_FUNCTION_35_0();
    v34(v33);
    OUTLINED_FUNCTION_69_6(v14[22]);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227CB2808()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 336) = (*(v0 + 320))();

  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CB2874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_142();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_168_0();
  a26 = v28;
  if (*(*(v28 + 336) + 16) && (v31 = sub_227B2664C(*(v28 + 224), *(v28 + 232)), (v32 & 1) != 0))
  {
    (*(v28 + 208))(*(v28 + 112), *(*(v28 + 336) + 56) + *(v28 + 200) * v31, *(v28 + 144));
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = *(v28 + 144);
  v35 = *(v28 + 112);
  __swift_storeEnumTagSinglePayload(v35, v33, 1, v34);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v34);
  v37 = *(v28 + 112);
  if (EnumTagSinglePayload == 1)
  {
    sub_227B4DB00(v37, &qword_27D7E96A0, &unk_227D62E90);
    v39 = *(v28 + 240);
    v38 = *(v28 + 248);
    v40 = OUTLINED_FUNCTION_126_3();
    OUTLINED_FUNCTION_1_32();
    v43 = sub_227B12A10(v41, v42, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_10_3(v40, v43);
    v45 = v44;
    OUTLINED_FUNCTION_6_18();
    a14 = v46;
    a15 = v47;
    MEMORY[0x22AAA5DA0](v39, v38);

    *v45 = a14;
    v45[1] = a15;
    OUTLINED_FUNCTION_14_0();
    (*(v48 + 104))(v45);
    swift_willThrow();
    v49 = OUTLINED_FUNCTION_35_0();
    v50(v49);
  }

  else
  {
    v60 = *(v28 + 64);
    sub_227B4DB00(v37, &qword_27D7E96A0, &unk_227D62E90);
    v61 = *(v60 + 16);
    *(v28 + 344) = v61;
    if (v61)
    {
      v62 = *(v28 + 64);
      v63 = *(v28 + 80);
      v64 = *(v28 + 88);
      v65 = *(v64 + 80);
      *(v28 + 400) = v65;
      v66 = (v65 + 32) & ~v65;
      *(v28 + 352) = *(v64 + 72);
      *(v28 + 360) = 0;
      v67 = *(v28 + 96);
      (*(v28 + 208))(*(v28 + 168), *(v28 + 176), *(v28 + 144));
      (*(v64 + 16))(v67, v62 + v66, v63);
      sub_227CC1DD0();
      OUTLINED_FUNCTION_25_7();
      OUTLINED_FUNCTION_89_5();
      OUTLINED_FUNCTION_137();

      return MEMORY[0x2822009F8](v68, v69, v70);
    }

    OUTLINED_FUNCTION_125_2();
    v72 = OUTLINED_FUNCTION_39_0();
    v73(v72);
    OUTLINED_FUNCTION_56_5();
    if (v74)
    {
      OUTLINED_FUNCTION_127_2();
      a10 = *(v28 + 48);
      a11 = *(v28 + 40);
      a9 = __swift_project_boxed_opaque_existential_1((v28 + 16), a11);
      HIBYTE(a16) = 0;
      v75 = *(v28 + 152);
      v76 = *(v28 + 56);
      a14 = MEMORY[0x277D84F90];
      sub_227B3CA88(0, *(v28 + 184), 0);
      v77 = 0;
      v78 = a14;
      OUTLINED_FUNCTION_19();
      v80 = v76 + v79;
      a12 = *(v75 + 72);
      a13 = *(v75 + 16);
      while (1)
      {
        v81 = OUTLINED_FUNCTION_78_9();
        a13(v81, v80);
        v82 = sub_227D4A748();
        v84 = v83;
        v85 = OUTLINED_FUNCTION_58_1();
        v86(v85);
        if (v34)
        {
          break;
        }

        a14 = v78;
        v88 = *(v78 + 16);
        v87 = *(v78 + 24);
        if (v88 >= v87 >> 1)
        {
          v91 = OUTLINED_FUNCTION_12(v87);
          sub_227B3CA88(v91, v88 + 1, 1);
        }

        v34 = 0;
        ++v77;
        v89 = *(v28 + 184);
        *(v78 + 16) = v88 + 1;
        v90 = v78 + 16 * v88;
        *(v90 + 32) = v82;
        *(v90 + 40) = v84;
        v80 += a12;
        if (v77 == v89)
        {
          (*(a10 + 120))(&a16 + 7, v78, a11);

          __swift_destroy_boxed_opaque_existential_0((v28 + 16));

          OUTLINED_FUNCTION_15_0();
          goto LABEL_8;
        }
      }

      __swift_destroy_boxed_opaque_existential_0((v28 + 16));
    }

    else
    {
      v92 = OUTLINED_FUNCTION_17_15();
      v93(v92);
      v94 = sub_227D4A748();
      OUTLINED_FUNCTION_139_2(v94, v95);
      if (!v34)
      {
        sub_227D4A758();
        *(v28 + 240) = sub_227D4A6A8();
        *(v28 + 248) = v97;
        (*(*(v28 + 128) + 8))(*(v28 + 136), *(v28 + 120));
        v98 = swift_task_alloc();
        v99 = OUTLINED_FUNCTION_117_4(v98);
        *v99 = v100;
        OUTLINED_FUNCTION_7_23(v99);
        OUTLINED_FUNCTION_137();

        return sub_227CACB7C();
      }

      OUTLINED_FUNCTION_80_5();
      v96();
    }
  }

  OUTLINED_FUNCTION_69_6(*(v28 + 176));

  OUTLINED_FUNCTION_18();
LABEL_8:
  OUTLINED_FUNCTION_137();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_227CB2E1C()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 368) = (*(v0 + 280))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CB2E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  if (*(v21[46] + 16))
  {
    v24 = sub_227B2664C(v21[30], v21[31]);
    if (v25)
    {
      v21[47] = *(*(v21[46] + 56) + 8 * v24);

      OUTLINED_FUNCTION_119_5();
      v26 += 672;
      v21[48] = *v26;
      v21[49] = v26 & 0xFFFFFFFFFFFFLL | 0x723000000000000;
LABEL_15:
      OUTLINED_FUNCTION_137();

      return MEMORY[0x2822009F8](v46, v47, v48);
    }
  }

  v27 = v21[43];
  v28 = v21[45] + 1;
  OUTLINED_FUNCTION_0_51();
  sub_227B17A4C(v29, v30);
  if (v28 != v27)
  {
    v42 = OUTLINED_FUNCTION_51_9();
    v43(v42);
    v44 = OUTLINED_FUNCTION_133_3();
    v45(v44);
    sub_227CC1DD0();
    OUTLINED_FUNCTION_25_7();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_125_2();
  v31 = OUTLINED_FUNCTION_39_0();
  v32(v31);
  OUTLINED_FUNCTION_56_5();
  if (v33)
  {
    OUTLINED_FUNCTION_127_2();
    a11 = v21[6];
    a12 = v21[5];
    __swift_project_boxed_opaque_existential_1(v21 + 2, a12);
    OUTLINED_FUNCTION_121_4();
    OUTLINED_FUNCTION_145_3(v34, v35);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_135_5();
    while (1)
    {
      v36 = OUTLINED_FUNCTION_78_9();
      a14(v36, v23);
      sub_227D4A748();
      v37 = OUTLINED_FUNCTION_58_1();
      v38(v37);
      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_134_2();
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_12(v39);
        sub_227B3CA88(v41, v22, 1);
      }

      OUTLINED_FUNCTION_86_6();
      if (v33)
      {
        OUTLINED_FUNCTION_66_7();
        v56();

        OUTLINED_FUNCTION_105_5();

        OUTLINED_FUNCTION_15_0();
        goto LABEL_23;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v21 + 2);
  }

  else
  {
    v50 = OUTLINED_FUNCTION_17_15();
    v51(v50);
    v52 = sub_227D4A748();
    v54 = OUTLINED_FUNCTION_139_2(v52, v53);
    if (!v20)
    {
      OUTLINED_FUNCTION_128_3(v54);
      v21[30] = sub_227D4A6A8();
      v21[31] = v57;
      v66 = OUTLINED_FUNCTION_55_8();
      v67(v66);
      v68 = swift_task_alloc();
      v69 = OUTLINED_FUNCTION_117_4(v68);
      *v69 = v70;
      OUTLINED_FUNCTION_7_23(v69);
      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_137();

      return sub_227CACB7C();
    }

    OUTLINED_FUNCTION_80_5();
    v55();
  }

  OUTLINED_FUNCTION_69_6(v21[22]);

  OUTLINED_FUNCTION_19_0();
LABEL_23:
  OUTLINED_FUNCTION_137();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_227CB3210()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 384))(*(v0 + 104));

  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CB327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v24 = v21[43];
  v25 = v21[45] + 1;
  OUTLINED_FUNCTION_0_51();
  sub_227B17A4C(v26, v27);
  if (v25 == v24)
  {
    OUTLINED_FUNCTION_125_2();
    v28 = OUTLINED_FUNCTION_39_0();
    v29(v28);
    OUTLINED_FUNCTION_56_5();
    if (v30)
    {
      OUTLINED_FUNCTION_127_2();
      a11 = v21[6];
      a12 = v21[5];
      __swift_project_boxed_opaque_existential_1(v21 + 2, a12);
      OUTLINED_FUNCTION_121_4();
      OUTLINED_FUNCTION_145_3(v31, v32);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_135_5();
      while (1)
      {
        v33 = OUTLINED_FUNCTION_78_9();
        a14(v33, v23);
        sub_227D4A748();
        v34 = OUTLINED_FUNCTION_58_1();
        v35(v34);
        if (v20)
        {
          break;
        }

        OUTLINED_FUNCTION_134_2();
        if (v37)
        {
          v38 = OUTLINED_FUNCTION_12(v36);
          sub_227B3CA88(v38, v22, 1);
        }

        OUTLINED_FUNCTION_86_6();
        if (v30)
        {
          OUTLINED_FUNCTION_66_7();
          v53();

          OUTLINED_FUNCTION_105_5();

          OUTLINED_FUNCTION_15_0();
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v21 + 2);
    }

    else
    {
      v47 = OUTLINED_FUNCTION_17_15();
      v48(v47);
      v49 = sub_227D4A748();
      v51 = OUTLINED_FUNCTION_139_2(v49, v50);
      if (!v20)
      {
        OUTLINED_FUNCTION_128_3(v51);
        v21[30] = sub_227D4A6A8();
        v21[31] = v54;
        v63 = OUTLINED_FUNCTION_55_8();
        v64(v63);
        v65 = swift_task_alloc();
        v66 = OUTLINED_FUNCTION_117_4(v65);
        *v66 = v67;
        OUTLINED_FUNCTION_7_23(v66);
        OUTLINED_FUNCTION_236();
        OUTLINED_FUNCTION_137();

        return sub_227CACB7C();
      }

      OUTLINED_FUNCTION_80_5();
      v52();
    }

    OUTLINED_FUNCTION_69_6(v21[22]);

    OUTLINED_FUNCTION_19_0();
LABEL_19:
    OUTLINED_FUNCTION_137();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {
    v39 = OUTLINED_FUNCTION_51_9();
    v40(v39);
    v41 = OUTLINED_FUNCTION_133_3();
    v42(v41);
    sub_227CC1DD0();
    OUTLINED_FUNCTION_25_7();
    OUTLINED_FUNCTION_85_7();
    OUTLINED_FUNCTION_137();

    return MEMORY[0x2822009F8](v43, v44, v45);
  }
}

uint64_t sub_227CB3590(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_60_8();
  v3(v2);
  OUTLINED_FUNCTION_69_6(*(v1 + 176));

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227CB364C()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_227D4A4D8();
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE8, qword_227D62EB0);
  OUTLINED_FUNCTION_5(v5);
  v1[12] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DA0, &unk_227D4F9C0);
  v1[13] = v6;
  OUTLINED_FUNCTION_5(v6);
  v1[14] = OUTLINED_FUNCTION_121();
  v1[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A0, &unk_227D62E90);
  OUTLINED_FUNCTION_5(v7);
  v1[16] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[17] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[18] = v9;
  v1[19] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[20] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[21] = v11;
  v1[22] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v1[23] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_121();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v14 = type metadata accessor for AchievementPlayerKey(0);
  OUTLINED_FUNCTION_5(v14);
  v1[29] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4A298();
  v1[30] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[31] = v16;
  v1[32] = OUTLINED_FUNCTION_121();
  v1[33] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227CB3928()
{
  v21 = v0;
  v2 = v0[8];
  v3 = *(v0[7] + 16);
  v0[34] = v3;
  v0[35] = 0;
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_106_5();
    v5(v4);
    sub_227D4A228();
    sub_227D4A288();
    sub_227CC1DD0();
    sub_227D4A228();
    sub_227D4A758();
    v9 = OUTLINED_FUNCTION_10_17();
    v1(v9);
    v10 = sub_227D4A6A8();
    OUTLINED_FUNCTION_124_2(v10, v11);
    v13 = OUTLINED_FUNCTION_15_15();
    v14(v13);
    sub_227D4A228();
    v0[40] = sub_227D4A748();
    v0[41] = v15;
    v16 = OUTLINED_FUNCTION_123_1();
    v1(v16);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_118_3(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_2_35(v18);

    return sub_227CACB7C();
  }

  else
  {
    sub_227C19454(v2 + 16, (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v20[0] = 0;
    (*(v7 + 120))(v20, MEMORY[0x277D84F90], v6, v7);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    OUTLINED_FUNCTION_15_0();

    return v8();
  }
}

uint64_t sub_227CB3D00()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CB3E0C()
{
  v1 = *(v0[8] + 96);
  v0[44] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[45] = *(*v1 + 96);
  v0[46] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CB3E48, v1);
}

uint64_t sub_227CB3E48()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_141_3();
  *(v0 + 376) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB408C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_141_3();
  *(v0 + 384) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB4320()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 416) = (*(v0 + 400))();

  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CB45BC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_141_3();
  *(v0 + 424) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB461C()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_227BD8C70(v0[38], v0[39], v0[53]);
  v0[54] = v1;

  if (v1)
  {
    v2 = *v1 + 664;
    v0[55] = *v2;
    v0[56] = v2 & 0xFFFFFFFFFFFFLL | 0x2DEA000000000000;
    v3 = sub_227CB46CC;
    v4 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_68_9();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_227CB46CC()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 440))(*(v0 + 232), *(v0 + 264));

  OUTLINED_FUNCTION_68_9();

  return MEMORY[0x2822009F8](v2, v1, 0);
}

uint64_t sub_227CB4738()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_141_3();
  *(v0 + 456) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CB4BAC()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  *(v0 + 544) = (*(v0 + 472))(v2, v4) & 1;

  v7 = *(v6 + 8);
  *(v0 + 488) = v7;
  *(v0 + 496) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v5);
  v1(v2, v3);
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CB50C0()
{
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 520) = v0;

  if (!v0)
  {
    *(v4 + 528) = v3;
  }

  swift_setDeallocating();
  sub_227CB6B90();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227CB5784()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 488);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_57_0();
  v2(v5);
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227CB5C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_0_51();
  sub_227B17A4C(v16, v17);
  v18 = OUTLINED_FUNCTION_39_0();
  v19(v18);
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_112_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CB5D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_0_51();
  sub_227B17A4C(v16, v17);
  v18 = OUTLINED_FUNCTION_39_0();
  v19(v18);
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_112_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CB5E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DA0, &unk_227D4F9C0);
  v6 = v5;
  if (v4)
  {
    sub_227CB7678(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_227CB5F3C()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_1_32();
  v2 = sub_227B12A10(v0, v1, MEMORY[0x277D0CE88]);
  OUTLINED_FUNCTION_5_5(v2);
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227CB5FF4()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49188();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CB6098()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[2] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[8] = 0;
  v0[9] = v2;
  v0[7] = v1;
  if (v1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_5(v3);
    OUTLINED_FUNCTION_19();
    sub_227D4A788();
    OUTLINED_FUNCTION_142_5();
    v10 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v9 = OUTLINED_FUNCTION_50_7(v8);

    return v10(v9);
  }

  else
  {

    OUTLINED_FUNCTION_115();
    v5 = MEMORY[0x277D84F90];

    return v4(v5);
  }
}

uint64_t sub_227CB6274()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  v3[11] = v5;
  v3[12] = v6;
  v3[13] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CB6380()
{
  OUTLINED_FUNCTION_111();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 72);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_54();
    v2 = sub_227CB72A0(v15, v16, v17, v18);
  }

  v3 = v2[2];
  if (v3 >= v2[3] >> 1)
  {
    OUTLINED_FUNCTION_59_0();
    v2 = sub_227CB72A0(v19, v20, v21, v22);
  }

  v23 = *(v0 + 88);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v2[2] = v3 + 1;
  *&v2[2 * v3 + 4] = v23;
  v4 = *(v0 + 104);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64) + 1;
  *(v0 + 64) = v6;
  *(v0 + 72) = v2;
  if (v6 == v5)
  {

    v7 = OUTLINED_FUNCTION_7();

    return v8(v7);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_10_0(v10);
    sub_227D4A788();
    if (v4)
    {

      OUTLINED_FUNCTION_19_0();

      return v11();
    }

    else
    {
      OUTLINED_FUNCTION_142_5();
      v24 = (v12 + *v12);
      v13 = swift_task_alloc();
      *(v0 + 80) = v13;
      *v13 = v0;
      v14 = OUTLINED_FUNCTION_50_7(v13);

      return v24(v14);
    }
  }
}

uint64_t sub_227CB65F8()
{
  OUTLINED_FUNCTION_6();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227CB666C(uint64_t a1)
{
  v2 = sub_227B12A10(&qword_27D7E9F10, type metadata accessor for URLResourceKey, &unk_227D630E8);
  v3 = sub_227B12A10(&qword_27D7E9F18, type metadata accessor for URLResourceKey, &unk_227D63088);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_227CB6728(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  sub_227B7A4F8(&qword_27D7E9F40, MEMORY[0x277D0D508]);
  v2 = sub_227D4CE98();

  return sub_227CB6850(a1, v2);
}

unint64_t sub_227CB67B8(uint64_t a1)
{
  type metadata accessor for AchievementPlayerKey(0);
  sub_227B12A10(&qword_27D7E9F30, type metadata accessor for AchievementPlayerKey, &unk_227D63290);
  v2 = sub_227D4CE98();

  return sub_227CB6A00(a1, v2);
}

unint64_t sub_227CB6850(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227B7A4F8(&qword_27D7E9F48, MEMORY[0x277D0D510]);
    v9 = sub_227D4CF38();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_227CB6A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementPlayerKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ~(-1 << *(v2 + 32));
  for (i = a2 & v8; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    sub_227CB78AC(*(v2 + 48) + *(v5 + 72) * i, v7);
    sub_227B12A10(&qword_27D7E9F38, type metadata accessor for AchievementPlayerKey, &unk_227D632D0);
    v10 = sub_227D4CF38();
    sub_227B17A4C(v7, type metadata accessor for AchievementPlayerKey);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_227CB6B90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_227CB6C14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_227B2664C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F60, &unk_227D631B0);
  sub_227D4D7C8();

  v7 = *(*(v9 + 56) + 8 * v6);
  type metadata accessor for GameData(0);
  sub_227D4D7E8();
  *v3 = v9;
  return v7;
}

uint64_t sub_227CB6CF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_227B2664C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F60, &unk_227D631B0);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_227B2664C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_227B3D714(v12, a2, a3, a1, v16);

    return sub_227D4CE58();
  }
}

void sub_227CB6E2C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F58, &qword_227D631A8), v2 = sub_227D4D648(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      sub_227D4CFA8();
      sub_227D4DB58();
      v25 = v6;
      sub_227D4D048();
      v7 = sub_227D4DB98();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = sub_227D4CFA8();
        v15 = v14;
        if (v13 == sub_227D4CFA8() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = sub_227D4DA78();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_227CB7030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DA0, &unk_227D4F9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_227CB70A0(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_227BDB490(v14, v13, a5, a6, a7, a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  OUTLINED_FUNCTION_19();
  if (v11)
  {
    sub_227CB74CC(a4 + v16, v14, v15 + v16, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_227CB71B4(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_227CB73D0(v8, v7);
  v10 = *(sub_227D4A298() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227CB75A4(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_227CB72A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F20, &unk_227D63178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9CF0, &unk_227D618D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227CB73D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F28, &qword_227D63188);
  v4 = *(sub_227D4A298() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227CB74CC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_14_0(), a1 + *(v10 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_227CB75A4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D4A298(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D4A298();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227CB7678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DA0, &unk_227D4F9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227CB76E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_227CB7728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_27D7E9EF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D7E9EF0);
    }
  }
}

uint64_t sub_227CB78AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementPlayerKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_48_7()
{
}

uint64_t OUTLINED_FUNCTION_81_8()
{
}

void OUTLINED_FUNCTION_86_6()
{
  *(v2 + 16) = v1;
  v5 = v2 + 16 * v0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t OUTLINED_FUNCTION_98_5(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_112_4()
{
}

uint64_t OUTLINED_FUNCTION_113_6(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_124_2(uint64_t result, uint64_t a2)
{
  *(v2 + 304) = result;
  *(v2 + 312) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_127_2()
{
  v2 = *(v0 + 72) + 16;

  return sub_227C19454(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_128_3(uint64_t a1)
{

  return sub_227D4A758();
}

uint64_t OUTLINED_FUNCTION_139_2(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  return v2[22];
}

uint64_t OUTLINED_FUNCTION_142_5()
{
  v1 = *(v0 + 24);
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  return v2 + 88;
}

void OUTLINED_FUNCTION_144_4()
{

  JUMPOUT(0x22AAA5DA0);
}

char *OUTLINED_FUNCTION_145_3(uint64_t a1, uint64_t a2)
{

  return sub_227B3CA88(0, a2, 0);
}

uint64_t OUTLINED_FUNCTION_147_3(uint64_t a1)
{

  return sub_227D4A758();
}

uint64_t OUTLINED_FUNCTION_148_3()
{
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);

  return sub_227BD8C70(v3, v4, v0);
}

_BYTE *storeEnumTagSinglePayload for Constants(_BYTE *result, int a2, int a3)
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

uint64_t sub_227CB7E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_62_0();
  v0 = OUTLINED_FUNCTION_85_8();

  return v1(v0);
}

uint64_t sub_227CB7F30@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  a2(0);
  OUTLINED_FUNCTION_6_15();
  return (*(v7 + 16))(a3, v3 + v6);
}

uint64_t sub_227CB7FD0(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  a3(0);
  OUTLINED_FUNCTION_6_15();
  (*(v7 + 40))(v3 + v6, a1);
  return swift_endAccess();
}

uint64_t sub_227CB8614(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_227CB86B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_253();
  sub_227CB8708(v5, v6, a3);
  return v4;
}

uint64_t sub_227CB8708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = MEMORY[0x277D84F98];
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_achievements) = MEMORY[0x277D84F98];
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_achievementDescriptions) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_achievementProgress) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_reportedAchievements) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_challengeDefinitions) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_gameActivityDefinitions) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboards) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardProperties) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardDescriptions) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardEntryProperties) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_classicLeaderboardScores) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardSets) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardSetDescriptions) = v7;
  *(v3 + OBJC_IVAR____TtC16GameServicesCore8GameData_leaderboardSetMembers) = v7;
  v8 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_6_15();
  (*(v9 + 32))(v3 + v8, a1);
  v10 = OBJC_IVAR____TtC16GameServicesCore8GameData_directoryURL;
  sub_227D49188();
  OUTLINED_FUNCTION_6_15();
  (*(v11 + 32))(v3 + v10, a2);
  v12 = OBJC_IVAR____TtC16GameServicesCore8GameData_timestamp;
  sub_227D492A8();
  OUTLINED_FUNCTION_6_15();
  (*(v13 + 32))(v3 + v12, a3);
  return v3;
}

void sub_227CB88B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_450_0();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v23);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_120_4();
  v25 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  sub_227D49168();
  if (__swift_getEnumTagSinglePayload(v18, 1, v25) == 1)
  {
    sub_227CCBB4C(v18, &qword_27D7E6CD8);
    sub_227D4D7F8();
    __break(1u);
  }

  else
  {
    (*(v27 + 32))(v31, v18, v25);
    v32 = OUTLINED_FUNCTION_323();
    v33(v32);
    v22[3] = sub_227D49528();
    v22[4] = sub_227CB8EB0(&qword_27D7E91E0, MEMORY[0x277D0C9B8]);
    __swift_allocate_boxed_opaque_existential_1(v22);
    sub_227D49518();
    v34 = OUTLINED_FUNCTION_168_1();
    v35(v34);
    OUTLINED_FUNCTION_451_0();
  }
}

void sub_227CB8B0C()
{
  OUTLINED_FUNCTION_450_0();
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_55_9();
  sub_227D49188();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = OUTLINED_FUNCTION_236();
  v7(v6);
  OUTLINED_FUNCTION_45();
  (*(v8 + 232))(v5);
  v9 = OUTLINED_FUNCTION_193();
  v10(v9);
  OUTLINED_FUNCTION_33_9();
  (*(v11 + 256))(v0);
  OUTLINED_FUNCTION_451_0();
}

void sub_227CB8C8C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_55_9();
  sub_227D49188();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_45();
  (*(v4 + 224))();
  sub_227CB8EB0(&qword_27D7E9F68, MEMORY[0x277CC9260]);
  v5 = sub_227D4CF38();
  v6 = OUTLINED_FUNCTION_200();
  v8 = v7(v6);
  if (v5)
  {
    (*(*v1 + 248))(v8);
    sub_227CB8EB0(&qword_27D7E9F70, MEMORY[0x277CC9578]);
    OUTLINED_FUNCTION_323();
    sub_227D4CF38();
    v9 = OUTLINED_FUNCTION_193();
    v10(v9);
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CB8EB0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_227CB8EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v23;
  a20 = v24;
  v264 = v20;
  v25 = type metadata accessor for AchievementPlayerKey(0);
  v26 = OUTLINED_FUNCTION_10_0(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v28);
  v250 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v283 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_17(v32 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA090, &unk_227D634B0);
  v34 = OUTLINED_FUNCTION_5(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  OUTLINED_FUNCTION_5(v37);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  v41 = OUTLINED_FUNCTION_5(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_266();
  v284 = v43;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v45);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v282 = v46;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_4_17(v48);
  v280 = sub_227D4A4D8();
  OUTLINED_FUNCTION_9();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96A0, &unk_227D62E90);
  v57 = OUTLINED_FUNCTION_5(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_9();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_437();
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v65 + 280))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA098, &qword_227D634C0);
  OUTLINED_FUNCTION_31_6();
  sub_227CCB9FC(v66, &qword_27D7E6D70);
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v67 + 304))();
  v68 = 0;
  OUTLINED_FUNCTION_136_3();
  v70 = *v69;
  v248 = *(v70 + 16);
  v246 = v70 + 32;
  v237 = v62 + 32;
  v252 = (v50 + 32);
  v263 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  v291 = *MEMORY[0x277D0CEE8];
  v71 = v22;
  v72 = v62 + 8;
  v73 = v21;
  v240 = v72;
  v242 = v60;
  v241 = v22;
  while (1)
  {
    if (v68 == v248)
    {
      OUTLINED_FUNCTION_45();
      v212 = (*(v211 + 320))();

      v213 = sub_227CC5184(v212, v264, sub_227CC5C3C, sub_227CC5C3C);

      OUTLINED_FUNCTION_33_9();
      (*(v214 + 328))(v213);
      OUTLINED_FUNCTION_33_9();
      v216 = (*(v215 + 344))();
      v217 = 0;
      v284 = *(v216 + 16);
      v283 = MEMORY[0x277D84F90];
      while (v284 != v217)
      {
        if (v217 >= *(v216 + 16))
        {
          goto LABEL_66;
        }

        OUTLINED_FUNCTION_3_24();
        sub_227CCB9A8();
        OUTLINED_FUNCTION_129_4(&v288);
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          OUTLINED_FUNCTION_71_7();
          OUTLINED_FUNCTION_131_4();
          swift_task_reportUnexpectedExecutor();
        }

        OUTLINED_FUNCTION_45();
        v219 = (*(v218 + 272))();
        MEMORY[0x28223BE20](v219);
        OUTLINED_FUNCTION_109();
        *(v220 - 16) = v247;
        sub_227CC8728();
        v222 = v221;

        if (v222)
        {
          OUTLINED_FUNCTION_3_24();
          sub_227CCBBA0();
          v225 = v283;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v286[0] = v225;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_227CC5554(0, *(v225 + 16) + 1, 1);
            v225 = v286[0];
          }

          v228 = *(v225 + 16);
          v227 = *(v225 + 24);
          if (v228 >= v227 >> 1)
          {
            v229 = OUTLINED_FUNCTION_12(v227);
            sub_227CC5554(v229, v228 + 1, 1);
            v225 = v286[0];
          }

          ++v217;
          *(v225 + 16) = v228 + 1;
          v283 = v225;
          OUTLINED_FUNCTION_3_24();
          sub_227CCBBA0();
        }

        else
        {
          v223 = OUTLINED_FUNCTION_5_24();
          sub_227CCB950(v223, v224);
          ++v217;
        }
      }

      OUTLINED_FUNCTION_45();
      (*(v230 + 352))(v283);
      goto LABEL_47;
    }

    v74 = (v246 + (v68 << 6));
    v75 = *v74;
    v76 = v74[1];
    v77 = v74[3];
    v289 = v74[2];
    v290 = v77;
    v287 = v75;
    v288 = v76;
    sub_227BA49D8(&v287, v286);
    sub_227BA4D50();
    OUTLINED_FUNCTION_115_4();
    sub_227D4A5F8();
    if (v73)
    {

      sub_227BA4A10(&v287);
LABEL_47:
      OUTLINED_FUNCTION_352();
      return;
    }

    v249 = v68;

    v78 = sub_227BA4D50();
    v80 = v79;
    OUTLINED_FUNCTION_37_8();
    v81(v245, v71, v60);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v60);
    OUTLINED_FUNCTION_33_9();
    v86 = (*(v85 + 288))(v286);
    v88 = v87;
    if (__swift_getEnumTagSinglePayload(v245, 1, v60) == 1)
    {
      sub_227CCBB4C(v245, &qword_27D7E96A0);
      OUTLINED_FUNCTION_173_0();
      sub_227CC4C28();

      sub_227CCBB4C(v239, &qword_27D7E96A0);
    }

    else
    {
      OUTLINED_FUNCTION_37_8();
      v89(v238, v245, v60);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v285 = *v88;
      sub_227CC7910(v238, v78, v80, v90, &unk_27D7EA0B8, &unk_227D634E0, &qword_27D7E6D70, &unk_227D5E210, v235, v236, v237, v238, v239, v240);
      *v88 = v285;
    }

    v86(v286, 0);
    OUTLINED_FUNCTION_136_3();
    v92 = *(v91 + 104);
    if (*(v92 + 16))
    {
      v93 = sub_227C76F0C(0);
      if (v94)
      {
        v95 = *(*(v92 + 56) + 8 * v93) + 64;
        OUTLINED_FUNCTION_18_15();
        v98 = v97 & v96;
        v100 = (v99 + 63) >> 6;
        v283 = v101;
        swift_bridgeObjectRetain_n();
        v102 = 0;
        if (!v98)
        {
          goto LABEL_11;
        }

        do
        {
          v103 = v102;
LABEL_14:
          v104 = *(*(v283 + 56) + 8 * (__clz(__rbit64(v98)) | (v103 << 6)));
          sub_227D4CE58();
          sub_227D4CE58();
          v286[0] = sub_227BA4D50();
          v286[1] = v105;
          MEMORY[0x28223BE20](v286[0]);
          OUTLINED_FUNCTION_109();
          *(v106 - 16) = v286;
          v108 = sub_227BB7050(sub_227CCBC10, v107, v104);

          if (v108)
          {

            goto LABEL_19;
          }

          v98 &= v98 - 1;

          v102 = v103;
        }

        while (v98);
        while (1)
        {
LABEL_11:
          v103 = v102 + 1;
          if (__OFADD__(v102, 1))
          {
            goto LABEL_64;
          }

          if (v103 >= v100)
          {
            break;
          }

          v98 = *(v95 + 8 * v103);
          ++v102;
          if (v98)
          {
            goto LABEL_14;
          }
        }
      }
    }

LABEL_19:
    v292 = BYTE9(v289);
    v109 = BYTE8(v289);
    v278 = v289;
    v282 = *(&v288 + 1);
    sub_227D4CE58();
    v281 = sub_227D4CE28();
    v110 = sub_227CB7D30();
    v111 = v110[1];
    v283 = *v110;
    OUTLINED_FUNCTION_101_6();
    v258 = *v112;
    (*v112)(v260, v264 + v263, v261);
    sub_227D4CE58();
    v277 = sub_227BA4D50();
    v274 = v113;
    v273 = sub_227BA4D50();
    v272 = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_71_0();
    v266 = v115;
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
    v119 = sub_227D49F28();
    OUTLINED_FUNCTION_62_0();
    v256 = *(v120 + 104);
    v256(v262, v291, v119);
    OUTLINED_FUNCTION_99();
    v257 = v119;
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v119);
    sub_227D4CE58();
    swift_bridgeObjectRetain_n();
    v124 = v278;
    sub_227D4CE58();
    LOBYTE(v234) = 1;
    v259 = v109;
    BYTE2(v233) = v109;
    BYTE1(v233) = (v292 ^ 1) & 1;
    LOBYTE(v233) = 1;
    sub_227D4A4C8(v260, v277, v274, v273, v272, v282, v124, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, v233, 0, v234);
    v251 = *v252;
    (*v252)(v244, v243, v280);
    OUTLINED_FUNCTION_129_4(&a18);
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v286[0] = v119;
    sub_227CC75B0(v244, v283, v111, v125, &qword_27D7EA0A0, &qword_227D634C8, MEMORY[0x277D0D308], MEMORY[0x277D0D308], v235, v236, v237, v238, v239, v240);

    v126 = v286[0];
    OUTLINED_FUNCTION_136_3();
    v128 = *(v127 + 8);
    v129 = sub_227BA4D50();
    if (*(v128 + 16) && (v131 = sub_227B2664C(v129, v130), (v132 & 1) != 0))
    {
      v133 = *(*(v128 + 56) + 8 * v131);
      sub_227D4CE58();
    }

    else
    {
      v133 = MEMORY[0x277D84F90];
    }

    v134 = v265;
    v255 = *(v133 + 16);
    if (v255)
    {
      break;
    }

LABEL_45:

    sub_227BA4A10(&v287);

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_33_9();
    v206 = (*(v205 + 312))(v286);
    v208 = v207;
    v209 = swift_isUniquelyReferenced_nonNull_native();
    v285 = *v208;
    *v208 = 0x8000000000000000;
    v71 = v241;
    sub_227CC6F68(v126, v241, v209);
    *v208 = v285;
    v68 = v249 + 1;
    v206(v286, 0);
    OUTLINED_FUNCTION_37_8();
    v60 = v242;
    v210(v241, v242);
    v73 = 0;
  }

  OUTLINED_FUNCTION_136_3();
  v254 = *(v137 + 16);
  v253 = v133;
  while (v136 < *(v133 + 16))
  {
    v268 = v136;
    v269 = v135;
    v138 = v133 + v135;
    v139 = *(v133 + v135 + 40);
    v270 = *(v133 + v135 + 48);
    v140 = *(v133 + v135 + 56);
    v272 = *(v133 + v135 + 64);
    v141 = *(v133 + v135 + 72);
    v281 = *(v133 + v135 + 80);
    v142 = *(v133 + v135 + 88);
    v271 = *(v133 + v135 + 96);
    v143 = *(v133 + v135 + 104);
    v144 = *(v254 + 16);
    v282 = v143;
    v283 = v140;
    v277 = v139;
    v278 = v142;
    if (!v144)
    {
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
LABEL_31:
      v151 = type metadata accessor for AchievementImage(0);
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v152, v153, v154, v151);
      goto LABEL_33;
    }

    v145 = v126;
    v146 = *(v138 + 32);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    v147 = v146;
    v126 = v145;
    v148 = sub_227B2664C(v147, v139);
    if ((v149 & 1) == 0)
    {
      goto LABEL_31;
    }

    v150 = *(*(*(v254 + 56) + 8 * v148) + 16);
    v151 = type metadata accessor for AchievementImage(0);
    if (v150)
    {
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_40_7();
      sub_227CCB9A8();
    }

    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v155, v156, v157, v158);
    v134 = v265;
LABEL_33:
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v159, v160, v161, v266);
    sub_227CCBAFC();
    type metadata accessor for AchievementImage(0);
    OUTLINED_FUNCTION_10_16(v134);
    v274 = v126;
    v273 = v141;
    if (v162)
    {
      v163 = OUTLINED_FUNCTION_193();
      sub_227CCBB4C(v163, v164);
    }

    else
    {
      v165 = OUTLINED_FUNCTION_129_4(&v270);
      v166(v165);
      OUTLINED_FUNCTION_39_9();
      sub_227CCB950(v134, v167);
      sub_227D490C8();
      OUTLINED_FUNCTION_37_8();
      v168(v151, v250);
      sub_227D4A768();
      sub_227CCBB4C(v284, &qword_27D7E6800);
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v266);
      sub_227CCBA3C();
    }

    OUTLINED_FUNCTION_115_4();
    OUTLINED_FUNCTION_101_6();
    v258();
    sub_227D4CE58();
    v267 = sub_227BA4D50();
    v173 = v172;
    v174 = sub_227BA4D50();
    v176 = v175;
    sub_227CCBAFC();
    v256(v262, v291, v257);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v177, v178, v179, v257);
    sub_227D4CE58();
    v180 = v282;
    sub_227D4CE58();
    v181 = v273;
    sub_227D4CE58();
    LOBYTE(v234) = 1;
    BYTE2(v233) = v259;
    BYTE1(v233) = (v292 ^ 1) & 1;
    LOBYTE(v233) = 1;
    v232 = sub_227D4CE58();
    v231 = v270;
    v182 = v275;
    v183 = OUTLINED_FUNCTION_111_4();
    sub_227D4A4C8(v183, v267, v173, v174, v176, v271, v180, v272, v181, v231, v232, 0, v233, 0, v234);
    OUTLINED_FUNCTION_37_8();
    v184(v276, v182, v280);
    OUTLINED_FUNCTION_129_4(&a11);
    swift_isUniquelyReferenced_nonNull_native();
    v286[0] = v174;
    v185 = v278;
    sub_227B2664C(v281, v278);
    OUTLINED_FUNCTION_5_19();
    if (__OFADD__(v188, v189))
    {
      goto LABEL_63;
    }

    v190 = v186;
    v191 = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA0A0, &qword_227D634C8);
    v192 = v286;
    if (sub_227D4D7C8())
    {
      v192 = v286[0];
      v193 = sub_227B2664C(v281, v185);
      if ((v191 & 1) != (v194 & 1))
      {
        goto LABEL_67;
      }

      v190 = v193;
    }

    v126 = v286[0];
    if (v191)
    {
      v195 = OUTLINED_FUNCTION_108_5();
      (v192[5])(v195, v276, v280);

      OUTLINED_FUNCTION_135_6();

      v196 = OUTLINED_FUNCTION_86_7();
      v197(v196);
      sub_227CCBB4C(v284, &qword_27D7E6800);
      sub_227CCBB4C(v279, &qword_27D7EA090);
    }

    else
    {
      OUTLINED_FUNCTION_13_18(v286[0] + 8 * (v190 >> 6));
      v198 = (*(v126 + 48) + 16 * v190);
      *v198 = v281;
      v198[1] = v185;
      v199 = OUTLINED_FUNCTION_108_5();
      v251(v199, v276, v280);

      OUTLINED_FUNCTION_135_6();

      v200 = OUTLINED_FUNCTION_86_7();
      v201(v200);
      sub_227CCBB4C(v284, &qword_27D7E6800);
      sub_227CCBB4C(v279, &qword_27D7EA090);
      v202 = *(v126 + 16);
      v203 = __OFADD__(v202, 1);
      v204 = v202 + 1;
      if (v203)
      {
        goto LABEL_65;
      }

      *(v126 + 16) = v204;
    }

    v136 = v268 + 1;
    v135 = v269 + 80;
    v134 = v265;
    v133 = v253;
    if (v255 == v268 + 1)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  sub_227D4DAE8();
  __break(1u);
}

uint64_t sub_227CBA87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8390, &unk_227D58D90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_227CCBB4C(a1, &qword_27D7E8390);
    sub_227CC4C28();

    return sub_227CCBB4C(v10, &qword_27D7E8390);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_227CC7910(v14, a2, a3, isUniquelyReferenced_nonNull_native, &unk_27D7EA088, &unk_227D634A8, &qword_27D7E6938, &qword_227D4E760, v17[0], *v4, v17[2], v17[3], v17[4], v17[5]);

    *v4 = v17[1];
  }

  return result;
}

uint64_t sub_227CBAA90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE0, &unk_227D63220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_227D4A298();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v9) == 1)
  {
    sub_227CCBB4C(a1, &qword_27D7E9EE0);
    sub_227CC4D54(a2, v8);
    sub_227CCB950(a2, type metadata accessor for AchievementPlayerKey);
    return sub_227CCBB4C(v8, &qword_27D7E9EE0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_227CC7E88(v12, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    return sub_227CCB950(a2, type metadata accessor for AchievementPlayerKey);
  }
}

uint64_t sub_227CBAC78(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_227C76F0C(a1);
  if (v2)
  {
    return sub_227D4CE58();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227CBACC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_227B2664C(a1, a2);
  if (v3)
  {
    return sub_227D4CE58();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227CBAD18(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_227CC4A1C();
  if (v4)
  {
    return *(*(a2 + 56) + 24 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227CBADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_227CC4A1C();
  if (v6)
  {
    return sub_227D4CE58();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227CBAE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_227B2664C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = OUTLINED_FUNCTION_253();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_62_0();
    (*(v13 + 16))(a4, v9 + *(v13 + 72) * v8, v12);
    OUTLINED_FUNCTION_99();
    v17 = v12;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_253();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_71_0();
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_227CBAEE8(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 16);
  a2(0);
  if (v3)
  {
    OUTLINED_FUNCTION_19();
    sub_227CCB9A8();
  }

  OUTLINED_FUNCTION_51_10();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_227CBAF98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F80, &qword_227D63238);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  result = sub_227BB78B0(a1);
  if (v9)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    *a2 = sub_227CCB1D4(&v6[v10], result, v8, 0, a1);
    *(a2 + 1) = v11;
    v12 = *(v4 + 48);
    v13 = sub_227D4A4D8();
    (*(*(v13 - 8) + 32))(&a2[v12], &v6[v10], v13);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

unint64_t sub_227CBB10C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v33 = sub_227D4A0E8();
  v5 = *(v33 - 8);
  v6 = MEMORY[0x28223BE20](v33);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = 0;
  v32 = *(a3 + 16);
  v29 = v5 + 16;
  v12 = (v5 + 8);
  v26 = (v5 + 32);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v32 == v11)
    {

      return v28;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v33);
    v16 = v30(v10);
    if (v3)
    {
      (*v12)(v10, v33);
      v23 = v28;

      return v23;
    }

    if (v16)
    {
      v25 = *v26;
      v25(v27, v10, v33);
      v17 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_227CC565C(0, *(v17 + 16) + 1, 1);
        v19 = v34;
      }

      a3 = v15;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v28 = v21 + 1;
        v24 = v21;
        sub_227CC565C(v20 > 1, v21 + 1, 1);
        v22 = v28;
        v21 = v24;
        a3 = v15;
        v19 = v34;
      }

      ++v11;
      *(v19 + 16) = v22;
      v28 = v19;
      result = (v25)(v19 + v13 + v21 * v14, v27, v33);
    }

    else
    {
      result = (*v12)(v10, v33);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227CBB3D0(uint64_t a1)
{
  v335 = a1;
  v342 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v400 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v341 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA030, &unk_227D63440);
  v8 = OUTLINED_FUNCTION_5(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_3();
  v375 = v9;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_314();
  v391 = v11;
  OUTLINED_FUNCTION_191_2();
  v367 = sub_227D4A4A8();
  OUTLINED_FUNCTION_9();
  v399 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  v352 = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_314();
  v319 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  v18 = OUTLINED_FUNCTION_5(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  v351 = v19;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_314();
  v318 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  v23 = OUTLINED_FUNCTION_5(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_3();
  v350 = v24;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_266();
  v340 = v26;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_266();
  v398 = v28;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_314();
  v317 = v30;
  OUTLINED_FUNCTION_191_2();
  v369 = sub_227D4A4F8();
  OUTLINED_FUNCTION_9();
  v353 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_3();
  v349 = v33;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_266();
  v389 = v35;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_266();
  v316 = v37;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_314();
  v315 = v39;
  OUTLINED_FUNCTION_191_2();
  v312 = sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v397 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_3();
  v311 = v42;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_266();
  v310 = v44;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_266();
  v309 = v46;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_314();
  v326 = v48;
  OUTLINED_FUNCTION_191_2();
  v368 = sub_227D49FA8();
  OUTLINED_FUNCTION_9();
  v396 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2_3();
  v348 = v51;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_266();
  v314 = v53;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v54);
  v56 = &v305 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA038, &qword_227D63450);
  v58 = OUTLINED_FUNCTION_5(v57);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_2_3();
  v347 = v59;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_266();
  v313 = v61;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_266();
  v308 = v63;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_314();
  v370 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8390, &unk_227D58D90);
  OUTLINED_FUNCTION_5(v66);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_26_0();
  v322 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_9();
  v71 = v70;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_2_3();
  v321 = v73;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_437();
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v75 + 424))();
  OUTLINED_FUNCTION_31_6();
  v76 = v2;
  sub_227CCB9FC(v77, &qword_27D7E6938);
  OUTLINED_FUNCTION_201();
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v78 + 448))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA040, &qword_227D63458);
  OUTLINED_FUNCTION_201();
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v79 + 472))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA048, &qword_227D63460);
  v336 = v69;
  v80 = v335;
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  v82 = (*(v81 + 496))();
  v83 = 0;
  v84 = *(v80 + 112);
  v324 = v84 + 32;
  v334 = (v71 + 16);
  v333 = (v71 + 8);
  v85 = v1;
  v325 = *(v84 + 16);
  v331 = (v396 + 104);
  v307 = (v397 + 16);
  v306 = (v397 + 8);
  v330 = (v396 + 8);
  v365 = (v399 + 104);
  v366 = (v396 + 16);
  v323 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  v344 = v353 + 32;
  v339 = (v400 + 2);
  v320 = *MEMORY[0x277D0CFE8];
  v346 = (v353 + 16);
  HIDWORD(v305) = *MEMORY[0x277D0CFF0];
  v337 = v353 + 40;
  v338 = (v400 + 1);
  v345 = v353 + 8;
  v364 = *MEMORY[0x277D0CEE8];
  v363 = *MEMORY[0x277D0D300];
  v362 = *MEMORY[0x277D0D2F8];
  v327 = v1;
  v329 = v76;
  v371 = v56;
  while (1)
  {
    if (v83 == v325)
    {
      v302 = (*(*v85 + 512))(v82);

      v303 = sub_227CC5184(v302, v85, sub_227CC622C, sub_227CC622C);

      OUTLINED_FUNCTION_139_3();
      return (*(v304 + 520))(v303);
    }

    v328 = v83;
    memcpy(v403, (v324 + 176 * v83), 0xB0uLL);
    sub_227BA9A88(v403, v402);
    sub_227BAAA78();
    v86 = v376;
    sub_227D4A608();
    if (v86)
    {

      return sub_227BA9AC0(v403);
    }

    v376 = 0;

    v87 = sub_227BAAA78();
    v89 = v88;
    v90 = v322;
    v91 = v336;
    v397 = *v334;
    (v397)(v322, v76, v336);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
    OUTLINED_FUNCTION_139_3();
    v96 = (*(v95 + 432))(v402);
    sub_227CBA87C(v90, v87, v89);
    v96(v402, 0);
    v97 = sub_227CBAC78(7, *(v80 + 104));
    if (v97)
    {
      v98 = v97;
      v99 = v97 + 64;
      OUTLINED_FUNCTION_18_15();
      v102 = v101 & v100;
      v104 = (v103 + 63) >> 6;
      v105 = sub_227D4CE58();
      v106 = 0;
      v399 = v105;
      if (!v102)
      {
        goto LABEL_7;
      }

      while (1)
      {
        v107 = v106;
LABEL_10:
        v108 = __clz(__rbit64(v102)) | (v107 << 6);
        v109 = *(v98 + 56);
        v110 = (*(v98 + 48) + 16 * v108);
        v111 = v110[1];
        v373 = *v110;
        v112 = *(v109 + 8 * v108);
        sub_227D4CE58();
        sub_227D4CE58();
        v113 = sub_227BAAA78();
        v400 = &v305;
        v402[0] = v113;
        v402[1] = v114;
        MEMORY[0x28223BE20](v113);
        OUTLINED_FUNCTION_109();
        *(v115 - 16) = v402;
        v116 = v376;
        v118 = sub_227BB7050(sub_227BB7AF0, v117, v112);
        v376 = v116;

        if (v118)
        {
          break;
        }

        v102 &= v102 - 1;

        v106 = v107;
        v98 = v399;
        if (!v102)
        {
LABEL_7:
          while (1)
          {
            v107 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              break;
            }

            if (v107 >= v104)
            {

              v373 = 0;
              v393 = 0;
              goto LABEL_14;
            }

            v102 = *(v99 + 8 * v107);
            ++v106;
            if (v102)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }
      }

      v393 = v111;

LABEL_14:
      v76 = v329;
    }

    else
    {
      v373 = 0;
      v393 = 0;
    }

    v119 = v403[0];
    v120 = v321;
    (v397)(v321, v76, v336);
    v372 = v119;
    sub_227D4CE58();
    sub_227D4CE58();
    v121 = OUTLINED_FUNCTION_323();
    v123 = sub_227CBD0A8(v121, v122);
    v125 = (v124 & 1) != 0 ? 0 : v123;
    sub_227D4CE58();
    v126 = OUTLINED_FUNCTION_87_1();
    v128 = sub_227CBD0A8(v126, v127);
    v130 = (v129 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v128;
    v400 = v403[5];
    v131 = sub_227BAACF0();
    v132 = sub_227BAAE3C();
    OUTLINED_FUNCTION_139_3();
    v134 = (*(v133 + 456))(v402);
    v136 = v135;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v401 = *v136;
    v138 = (v132 & 1) != 0 ? 0x10000 : 0;
    v139 = (v131 & 1) != 0 ? 256 : 0;
    sub_227CC7700(v125, v130, v138 | v139, v120, isUniquelyReferenced_nonNull_native);
    *v136 = v401;
    v332 = *v333;
    v332(v120, v336);
    v134(v402, 0);
    v140 = sub_227D4A5D8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v141, v142, v143, v140);
    v144 = *v331;
    v145 = v371;
    v146 = v368;
    (*v331)(v371, v320, v368);
    if (v400)
    {
      break;
    }

LABEL_32:
    v397 = v403[8];
    v399 = sub_227D4CE28();
    v164 = sub_227CB7D30();
    v166 = *v164;
    v165 = *(v164 + 1);
    v400 = v166;
    v396 = v165;
    sub_227D4CE58();
    v395 = sub_227BAAA78();
    v394 = v167;
    v392 = sub_227BAAA78();
    v390 = v168;
    sub_227CCBAFC();
    v361 = *v366;
    v361(v314, v145, v146);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_71_0();
    v377 = v169;
    __swift_storeEnumTagSinglePayload(v170, v171, v172, v169);
    v173 = sub_227D49F28();
    OUTLINED_FUNCTION_62_0();
    v175 = *(v174 + 104);
    v358 = v174 + 104;
    v359 = v175;
    v175(v318, v364, v173);
    OUTLINED_FUNCTION_99();
    v360 = v173;
    __swift_storeEnumTagSinglePayload(v176, v177, v178, v173);
    sub_227D4CE58();
    v179 = sub_227BAAFA8();
    v180 = *v365;
    if (v179)
    {
      v181 = v362;
    }

    else
    {
      v181 = v363;
    }

    v357 = *v365;
    v180(v319, v181, v367);
    sub_227D4CE58();
    swift_bridgeObjectRetain_n();
    sub_227D4A4E8();
    v182 = v316;
    v183 = OUTLINED_FUNCTION_336();
    v343 = v184;
    (v184)(v183);
    v185 = v399;
    v186 = swift_isUniquelyReferenced_nonNull_native();
    v402[0] = v185;
    sub_227CC75B0(v182, v400, v396, v186, &qword_27D7EA050, &qword_227D63468, MEMORY[0x277D0D320], MEMORY[0x277D0D320], v305, v306, v307, v308, v309, v310);

    v392 = v402[0];
    v187 = MEMORY[0x277D84F90];
    v188 = sub_227D4CE28();
    v189 = v335;
    v190 = *(v335 + 120);
    v191 = sub_227BAAA78();
    v193 = sub_227CBACC8(v191, v192, v190);

    if (v193)
    {
      v194 = v193;
    }

    else
    {
      v194 = v187;
    }

    v356 = *(v194 + 16);
    if (v356)
    {
      v195 = 0;
      v196 = 0;
      v197 = BYTE1(v403[1]);
      v198 = *(v189 + 128);
      if (BYTE1(v403[1]) == 19)
      {
        v197 = 0;
      }

      v354 = v197;
      v199 = v375;
      v355 = v194;
      v374 = v198;
      while (1)
      {
        if (v196 >= *(v194 + 16))
        {
          goto LABEL_82;
        }

        v381 = v196;
        v382 = v195;
        v200 = (v194 + v195);
        v201 = *(v194 + v195 + 40);
        v386 = *(v194 + v195 + 48);
        v202 = *(v194 + v195 + 56);
        v388 = *(v194 + v195 + 64);
        v203 = *(v194 + v195 + 80);
        v383 = *(v194 + v195 + 72);
        v205 = *(v194 + v195 + 88);
        v204 = v200[12];
        v384 = v205;
        v206 = v200[14];
        v399 = v200[13];
        v207 = v200[16];
        v387 = v200[15];
        v208 = *(v198 + 16);
        v397 = v202;
        v394 = v207;
        v400 = v206;
        v390 = v201;
        v396 = v203;
        v395 = v204;
        if (!v208)
        {
          break;
        }

        v209 = v188;
        v210 = v200[4];
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        v211 = v210;
        v188 = v209;
        v212 = sub_227B2664C(v211, v201);
        if ((v213 & 1) == 0)
        {
          goto LABEL_48;
        }

        v214 = *(*(*(v374 + 56) + 8 * v212) + 16);
        v215 = type metadata accessor for LeaderboardImage(0);
        v216 = v391;
        if (v214)
        {
          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_49_6();
          sub_227CCB9A8();
        }

        OUTLINED_FUNCTION_51_10();
        __swift_storeEnumTagSinglePayload(v220, v221, v222, v223);
        v199 = v375;
LABEL_50:
        OUTLINED_FUNCTION_71_0();
        __swift_storeEnumTagSinglePayload(v224, v225, v226, v377);
        OUTLINED_FUNCTION_82();
        sub_227CCBAFC();
        type metadata accessor for LeaderboardImage(0);
        OUTLINED_FUNCTION_10_16(v199);
        v385 = v188;
        if (v227)
        {
          sub_227CCBB4C(v199, &qword_27D7EA030);
        }

        else
        {
          v228 = v199 + *(v215 + 20);
          v229 = v341;
          v230 = v199;
          v231 = v342;
          (*v339)(v341, v228, v342);
          OUTLINED_FUNCTION_48_8();
          sub_227CCB950(v230, v232);
          sub_227D490C8();
          (*v338)(v229, v231);
          v233 = v376;
          sub_227D4A768();
          if (v233)
          {

            sub_227BA9AC0(v403);

            sub_227CCBB4C(v398, &qword_27D7E6800);
            sub_227CCBB4C(v216, &qword_27D7EA030);
            v299 = OUTLINED_FUNCTION_116_5();
            v300(v299);
            sub_227CCBB4C(v370, &qword_27D7EA038);
            v332(v329, v336);
          }

          v376 = 0;
          sub_227CCBB4C(v398, &qword_27D7E6800);
          OUTLINED_FUNCTION_99();
          __swift_storeEnumTagSinglePayload(v234, v235, v236, v377);
          OUTLINED_FUNCTION_236();
          sub_227CCBA3C();
        }

        v380 = sub_227BAAA78();
        v379 = v237;
        v378 = sub_227BAAA78();
        sub_227CCBAFC();
        v361(v348, v371, v368);
        sub_227CCBAFC();
        v238 = v360;
        v359(v351, v364, v360);
        OUTLINED_FUNCTION_99();
        __swift_storeEnumTagSinglePayload(v239, v240, v241, v238);
        sub_227D4CE58();
        if (sub_227BAAFA8())
        {
          v242 = v362;
        }

        else
        {
          v242 = v363;
        }

        v357(v352, v242, v367);
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        v243 = v389;
        sub_227D4A4E8();
        v244 = v349;
        v245 = v369;
        (*v346)(v349, v243, v369);
        sub_227D4CE58();
        sub_227D4CE58();
        v246 = v392;
        swift_isUniquelyReferenced_nonNull_native();
        v402[0] = v246;
        sub_227B2664C(v399, v400);
        OUTLINED_FUNCTION_5_19();
        if (__OFADD__(v249, v250))
        {
          goto LABEL_83;
        }

        v251 = v247;
        v252 = v248;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA050, &qword_227D63468);
        if (sub_227D4D7C8())
        {
          v253 = sub_227B2664C(v399, v400);
          v255 = v385;
          if ((v252 & 1) != (v254 & 1))
          {
            goto LABEL_89;
          }

          v251 = v253;
        }

        else
        {
          v255 = v385;
        }

        v256 = v402[0];
        if (v252)
        {
          (*(v353 + 40))(*(v402[0] + 56) + *(v353 + 72) * v251, v244, v245);
          v257 = v400;
        }

        else
        {
          OUTLINED_FUNCTION_13_18(v402[0] + 8 * (v251 >> 6));
          v258 = (v256[6] + 16 * v251);
          v257 = v400;
          *v258 = v399;
          v258[1] = v257;
          v343(v256[7] + *(v353 + 72) * v251, v244, v245);
          v259 = v256[2];
          v260 = __OFADD__(v259, 1);
          v261 = v259 + 1;
          if (v260)
          {
            goto LABEL_85;
          }

          v256[2] = v261;
          sub_227D4CE58();
        }

        swift_isUniquelyReferenced_nonNull_native();
        v402[0] = v255;
        sub_227B2664C(v399, v257);
        OUTLINED_FUNCTION_5_19();
        if (__OFADD__(v264, v265))
        {
          goto LABEL_84;
        }

        v266 = v262;
        v267 = v263;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA058, &qword_227D63470);
        v268 = sub_227D4D7C8();
        v392 = v256;
        if (v268)
        {
          v269 = sub_227B2664C(v399, v400);
          if ((v267 & 1) != (v270 & 1))
          {
            goto LABEL_89;
          }

          v266 = v269;
        }

        v188 = v402[0];
        if (v267)
        {
          OUTLINED_FUNCTION_128_4(*(v402[0] + 56) + 40 * v266);
          v271 = v395;
          *(v272 + 24) = v273;
          *(v272 + 32) = v271;

          v274 = OUTLINED_FUNCTION_124_3();
          v275(v274);
          sub_227CCBB4C(v398, &qword_27D7E6800);
          sub_227CCBB4C(v391, &qword_27D7EA030);
        }

        else
        {
          OUTLINED_FUNCTION_13_18(v402[0] + 8 * (v266 >> 6));
          v276 = (v188[6] + 16 * v266);
          v277 = v400;
          *v276 = v399;
          v276[1] = v277;
          OUTLINED_FUNCTION_128_4(v188[7] + 40 * v266);
          v278 = v395;
          *(v279 + 24) = v280;
          *(v279 + 32) = v278;

          v281 = OUTLINED_FUNCTION_124_3();
          v282(v281);
          sub_227CCBB4C(v398, &qword_27D7E6800);
          sub_227CCBB4C(v391, &qword_27D7EA030);
          v283 = v188[2];
          v260 = __OFADD__(v283, 1);
          v284 = v283 + 1;
          if (v260)
          {
            goto LABEL_86;
          }

          v188[2] = v284;
        }

        v196 = v381 + 1;
        v195 = v382 + 104;
        v194 = v355;
        v199 = v375;
        v198 = v374;
        if (v356 == v381 + 1)
        {
          goto LABEL_76;
        }
      }

      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
LABEL_48:
      v215 = type metadata accessor for LeaderboardImage(0);
      v216 = v391;
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v217, v218, v219, v215);
      goto LABEL_50;
    }

LABEL_76:
    v285 = v328 + 1;

    sub_227BA9AC0(v403);

    swift_bridgeObjectRelease_n();
    v286 = v327;
    v287 = (*(*v327 + 480))(v402);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_134_3();
    v401 = v288;
    v289 = v188;
    v85 = v286;
    v76 = v329;
    sub_227CC7398(v392, v329, v290);
    v291 = OUTLINED_FUNCTION_130_3();
    v287(v291);
    OUTLINED_FUNCTION_139_3();
    v293 = (*(v292 + 504))(v402);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_134_3();
    v401 = v294;
    sub_227CC7180(v289, v76, v295);
    v296 = OUTLINED_FUNCTION_130_3();
    v293(v296);
    v83 = v285;
    v297 = OUTLINED_FUNCTION_116_5();
    v298(v297);
    sub_227CCBB4C(v370, &qword_27D7EA038);
    v82 = (v332)(v76, v336);
    v80 = v335;
  }

  sub_227BD4434(v326);
  sub_227BD395C();
  v148 = v147;
  v149 = sub_227BD3BC0();
  v150 = sub_227BD4B18(v148, v149);
  if ((v150 * 60) >> 64 != (60 * v150) >> 63)
  {
    goto LABEL_87;
  }

  v151 = sub_227BD3F28();
  v152 = sub_227BD40D4();
  v153 = sub_227BD4B18(v151, v152);
  if ((v153 * 60) >> 64 == (60 * v153) >> 63)
  {
    v399 = v140;
    v154 = v309;
    v155 = v326;
    sub_227D491E8();
    v156 = *v307;
    v400 = v144;
    v157 = v312;
    v156(v310, v155, v312);
    v156(v311, v154, v157);
    OUTLINED_FUNCTION_200();
    sub_227D4A5C8();
    v158 = *v306;
    (*v306)(v154, v157);
    v159 = v155;
    v160 = v370;
    v158(v159, v157);
    v145 = v371;
    (*v330)(v371, v146);
    sub_227CCBB4C(v160, &qword_27D7EA038);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v161, v162, v163, v399);
    sub_227CCBA3C();
    (v400)(v145, HIDWORD(v305), v146);
    goto LABEL_32;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

unint64_t sub_227CBD0A8(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_227D4D6C8();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_227BD2F40(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_227CBD3D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_227CBD3E0()
{
  OUTLINED_FUNCTION_351();
  v265 = v0;
  v244 = v1;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_9();
  v271 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v5);
  v251 = sub_227D49188();
  OUTLINED_FUNCTION_9();
  v286 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_17(v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FE8, &unk_227D63400);
  v11 = OUTLINED_FUNCTION_5(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_314();
  v270 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  v15 = OUTLINED_FUNCTION_5(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_266();
  v284 = v17;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v19);
  v282 = sub_227D4A548();
  OUTLINED_FUNCTION_9();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_3();
  v281 = v23;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_266();
  v280 = v25;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F98, qword_227D63258);
  v30 = OUTLINED_FUNCTION_5(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_4_17(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  OUTLINED_FUNCTION_9();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_266();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v38);
  v40 = &v231 - v39;
  sub_227D4CE28();
  OUTLINED_FUNCTION_33_9();
  (*(v41 + 544))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FF0, &qword_227D63410);
  OUTLINED_FUNCTION_31_6();
  sub_227CCB9FC(v42, &qword_27D7E83F8);
  OUTLINED_FUNCTION_278();
  sub_227D4CE28();
  OUTLINED_FUNCTION_114_5();
  (*(v43 + 568))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
  OUTLINED_FUNCTION_85_8();
  v243 = v33;
  sub_227D4CE28();
  OUTLINED_FUNCTION_114_5();
  (*(v44 + 592))();
  v45 = 0;
  v46 = *(v244 + 136);
  v239 = v46 + 32;
  v242 = (v35 + 16);
  v47 = *(v46 + 16);
  v231 = v35 + 32;
  v253 = v21 + 32;
  v238 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  v249 = (v286 + 16);
  v248 = v286 + 8;
  v260 = v21 + 16;
  v258 = v21 + 8;
  v259 = v21;
  v247 = v21 + 40;
  v245 = v271 + 16;
  v256 = v271 + 32;
  v48 = v40;
  v235 = (v35 + 8);
  v255 = v40;
  for (i = v47; ; v47 = i)
  {
    if (v45 == v47)
    {
      goto LABEL_85;
    }

    v240 = v45;
    v49 = v239 + 32 * v45;
    v51 = *v49;
    v50 = *(v49 + 8);
    v53 = *(v49 + 16);
    v52 = *(v49 + 24);
    sub_227D4CE58();
    sub_227D4CE58();
    v54 = OUTLINED_FUNCTION_236();
    sub_227BACD14(v54, v55, v53, v52);
    v56 = v48;
    v58 = v57;
    v59 = v265;
    sub_227D4A618();
    if (v59)
    {
      v285 = v58;

LABEL_84:

LABEL_85:
      OUTLINED_FUNCTION_352();
      return;
    }

    v283 = v51;
    v266 = v50;
    v267 = v53;
    v268 = v52;
    sub_227BACD14(v51, v50, v53, v52);
    v61 = v60;
    v62 = v236;
    v63 = v243;
    v241 = *v242;
    v241(v236, v56, v243);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
    OUTLINED_FUNCTION_114_5();
    v68 = v63;
    v69 = (*(v67 + 552))(v287);
    v71 = v70;
    OUTLINED_FUNCTION_10_16(v62);
    v265 = 0;
    if (v72)
    {
      sub_227CCBB4C(v62, &qword_27D7E9F98);
      v73 = v233;
      sub_227CC4C28();

      sub_227CCBB4C(v73, &qword_27D7E9F98);
    }

    else
    {
      OUTLINED_FUNCTION_37_8();
      v74(v232, v62, v68);
      swift_isUniquelyReferenced_nonNull_native();
      v288 = *v71;
      v75 = OUTLINED_FUNCTION_278();
      sub_227CC7910(v75, v76, v61, v77, &unk_27D7EA008, &unk_227D63420, &qword_27D7E83F8, &unk_227D61E50, v231, v232, v233, i, v235, v236);
      *v71 = v288;
    }

    v78 = OUTLINED_FUNCTION_91_7();
    v69(v78);
    v279 = sub_227D4CE28();
    v79 = sub_227CB7D30();
    v80 = *v79;
    v285 = *(v79 + 1);
    v286 = v80;
    sub_227D4CE58();
    v81 = v283;
    v82 = v267;
    v83 = v268;
    v278 = sub_227BACD14(v283, v266, v267, v268);
    v84 = OUTLINED_FUNCTION_236();
    sub_227BACD14(v84, v85, v82, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_71_0();
    v272 = v86;
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
    sub_227D4CE58();
    sub_227D4A538();
    v90 = v237;
    v91 = OUTLINED_FUNCTION_58();
    v252 = v92;
    (v92)(v91);
    v93 = v279;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v287[0] = v93;
    sub_227CC75B0(v90, v286, v285, isUniquelyReferenced_nonNull_native, &qword_27D7EA000, &qword_227D63418, MEMORY[0x277D0D458], MEMORY[0x277D0D458], v231, v232, v233, i, v235, v236);

    v285 = v287[0];
    OUTLINED_FUNCTION_101_6();
    v96 = *(v95 + 144);
    v97 = OUTLINED_FUNCTION_236();
    v98 = v267;
    v100 = sub_227BACD14(v97, v99, v267, v268);
    if (*(v96 + 16))
    {
      v102 = sub_227B2664C(v100, v101);
      if (v103)
      {
        v104 = *(*(v96 + 56) + 8 * v102);
        sub_227D4CE58();
      }

      else
      {
        v104 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v104 = MEMORY[0x277D84F90];
    }

    v264 = *(v104 + 16);
    if (v264)
    {
      break;
    }

LABEL_37:

    OUTLINED_FUNCTION_80_0();
    v166 = *(v165 + 576);
    v167 = v285;
    sub_227D4CE58();
    v168 = v166(v287);
    v169 = v98;
    v171 = v170;
    v172 = swift_isUniquelyReferenced_nonNull_native();
    v289 = *v171;
    *v171 = 0x8000000000000000;
    v173 = v167;
    v48 = v255;
    sub_227CC7C70(v173, v255, v172);
    *v171 = v289;
    v174 = OUTLINED_FUNCTION_91_7();
    v168(v174);
    OUTLINED_FUNCTION_101_6();
    v176 = *(v175 + 160);
    v177 = sub_227BACD14(v81, v266, v169, v268);
    v179 = v178;

    if (*(v176 + 16))
    {
      v180 = sub_227B2664C(v177, v179);
      v181 = v241;
      if (v182)
      {
        v183 = *(*(v176 + 56) + 8 * v180);
        sub_227D4CE58();
      }

      else
      {
        v183 = 0;
      }

      v184 = v254;
    }

    else
    {
      v183 = 0;
      v184 = v254;
      v181 = v241;
    }

    v185 = v285;

    v181(v184, v48, v243);
    if (v183)
    {
      v186 = 0;
      v274 = *(v183 + 16);
      v275 = v183;
      v273 = v183 + 32;
      v187 = MEMORY[0x277D84F90];
      v285 = v185;
      while (1)
      {
LABEL_45:
        if (v186 == v274)
        {

          goto LABEL_79;
        }

        if (v186 >= *(v275 + 16))
        {
          goto LABEL_91;
        }

        v286 = v186;
        v188 = v273 + 24 * v186;
        v189 = *(v188 + 16);
        v278 = *(v188 + 8);
        v279 = v187;
        sub_227D4CE58();
        sub_227D4CE58();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          OUTLINED_FUNCTION_71_7();
          swift_task_reportUnexpectedExecutor();
        }

        v190 = 0;
        ++v286;
        v191 = *(v189 + 16);
        v192 = v189 + 40;
        v283 = MEMORY[0x277D84F90];
        v277 = v189 + 40;
LABEL_50:
        v193 = (v192 + 16 * v190);
        while (v191 != v190)
        {
          if (v190 >= *(v189 + 16))
          {
            __break(1u);
            goto LABEL_85;
          }

          v194 = *(v193 - 1);
          v195 = *v193;
          sub_227D4CE58();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            OUTLINED_FUNCTION_71_7();
            swift_task_reportUnexpectedExecutor();
          }

          OUTLINED_FUNCTION_80_0();
          v197 = (*(v196 + 416))();
          if (*(v197 + 16))
          {
            v198 = sub_227B2664C(v194, v195);
            if (v199)
            {
              v200 = *(v197 + 56);
              v201 = v271;
              v276 = *(v271 + 72);
              v202 = v246;
              v203 = v269;
              (*(v271 + 16))(v246, v200 + v276 * v198, v269);

              v204 = *(v201 + 32);
              v204(v257, v202, v203);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v283 = sub_227CC8ACC(0, v283[2] + 1, 1, v283);
              }

              v192 = v277;
              v206 = v283[2];
              v205 = v283[3];
              if (v206 >= v205 >> 1)
              {
                v209 = OUTLINED_FUNCTION_22_12(v205);
                v283 = sub_227CC8ACC(v209, v210, v211, v283);
              }

              ++v190;
              v283[2] = v206 + 1;
              OUTLINED_FUNCTION_19();
              v204(v208 + v207 + v206 * v276, v257, v269);
              goto LABEL_50;
            }
          }

          v193 += 2;
          ++v190;
        }

        v212 = v283;
        v213 = v283[2];
        v187 = v279;
        v214 = *(v279 + 16);
        v215 = v214 + v213;
        if (__OFADD__(v214, v213))
        {
          goto LABEL_92;
        }

        v216 = swift_isUniquelyReferenced_nonNull_native();
        if ((v216 & 1) == 0 || v215 > v187[3] >> 1)
        {
          if (v214 <= v215)
          {
            v217 = v214 + v213;
          }

          else
          {
            v217 = v214;
          }

          v187 = sub_227CC8ACC(v216, v217, 1, v187);
        }

        v48 = v255;
        v184 = v254;
        v186 = v286;
        if (!v212[2])
        {
          break;
        }

        if ((v187[3] >> 1) - v187[2] < v213)
        {
          goto LABEL_95;
        }

        swift_arrayInitWithCopy();

        if (v213)
        {
          v218 = v187[2];
          v163 = __OFADD__(v218, v213);
          v219 = v218 + v213;
          if (v163)
          {
            goto LABEL_96;
          }

          v187[2] = v219;
        }
      }

      if (!v213)
      {
        goto LABEL_45;
      }

      goto LABEL_93;
    }

    v187 = 0;
LABEL_79:
    OUTLINED_FUNCTION_80_0();
    v221 = (*(v220 + 600))(v287);
    v223 = v222;
    if (v187)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_134_3();
      v290 = v224;
      *v223 = 0x8000000000000000;
      sub_227CC7A58(v187, v184, v225);
      *v223 = v290;
    }

    else
    {
      sub_227CC4AAC();
    }

    v45 = v240 + 1;
    v226 = *v235;
    v227 = v184;
    v228 = v243;
    (*v235)(v227, v243);
    v229 = OUTLINED_FUNCTION_91_7();
    v221(v229);
    v226(v48, v228);
  }

  OUTLINED_FUNCTION_101_6();
  v263 = *(v106 + 152);
  v107 = (v104 + 72);
  v262 = v104;
  while (v105 < *(v104 + 16))
  {
    v275 = v105;
    v109 = *(v107 - 4);
    v108 = *(v107 - 3);
    v110 = *(v107 - 2);
    v277 = *(v107 - 1);
    v278 = v108;
    v111 = *v107;
    v112 = v263;
    v113 = *(v263 + 16);
    v274 = v107;
    if (!v113)
    {
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
LABEL_20:
      v118 = type metadata accessor for LeaderboardSetImage(0);
      goto LABEL_21;
    }

    v114 = *(v107 - 5);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    v115 = sub_227B2664C(v114, v109);
    if ((v116 & 1) == 0)
    {
      goto LABEL_20;
    }

    v117 = *(*(*(v112 + 56) + 8 * v115) + 16);
    v118 = type metadata accessor for LeaderboardSetImage(0);
    if (v117)
    {
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_46_7();
      sub_227CCB9A8();
      goto LABEL_22;
    }

LABEL_21:
    OUTLINED_FUNCTION_115_1();
LABEL_22:
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v272);
    v126 = v261;
    sub_227CCBAFC();
    type metadata accessor for LeaderboardSetImage(0);
    v127 = OUTLINED_FUNCTION_115_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v127, v128, v118);
    v276 = v109;
    v279 = v111;
    v286 = v110;
    if (EnumTagSinglePayload == 1)
    {
      sub_227CCBB4C(v126, &qword_27D7E9FE8);
    }

    else
    {
      (*v249)(v250, v126 + *(v118 + 20), v251);
      OUTLINED_FUNCTION_45_8();
      sub_227CCB950(v126, v130);
      sub_227D490C8();
      OUTLINED_FUNCTION_105_6();
      OUTLINED_FUNCTION_37_8();
      v131 = OUTLINED_FUNCTION_200();
      v132(v131);
      OUTLINED_FUNCTION_58();
      v133 = v265;
      sub_227D4A768();
      if (v133)
      {

        sub_227CCBB4C(v284, &qword_27D7E6800);
        sub_227CCBB4C(v270, &qword_27D7E9FE8);
        OUTLINED_FUNCTION_37_8();
        v230(v255, v243);
        goto LABEL_84;
      }

      v265 = 0;
      sub_227CCBB4C(v284, &qword_27D7E6800);
      OUTLINED_FUNCTION_99();
      __swift_storeEnumTagSinglePayload(v134, v135, v136, v272);
      OUTLINED_FUNCTION_173();
      sub_227CCBA3C();
    }

    v137 = v268;
    v98 = v267;
    v273 = sub_227BACD14(v283, v266, v267, v268);
    v138 = OUTLINED_FUNCTION_278();
    sub_227BACD14(v138, v139, v98, v137);
    sub_227CCBAFC();
    sub_227D4CE58();
    v140 = v280;
    sub_227D4A538();
    OUTLINED_FUNCTION_37_8();
    v141(v281, v140, v282);
    v142 = v285;
    swift_isUniquelyReferenced_nonNull_native();
    v287[0] = v142;
    v143 = v278;
    sub_227B2664C(v278, v286);
    OUTLINED_FUNCTION_5_19();
    if (__OFADD__(v146, v147))
    {
      goto LABEL_90;
    }

    v148 = v144;
    v149 = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA000, &qword_227D63418);
    if (sub_227D4D7C8())
    {
      v150 = sub_227B2664C(v143, v286);
      if ((v149 & 1) != (v151 & 1))
      {
        goto LABEL_97;
      }

      v148 = v150;
    }

    v285 = v287[0];
    if (v149)
    {
      v152 = OUTLINED_FUNCTION_103_4();
      (*(v143 + 40))(v152, v281, v282);

      v153 = OUTLINED_FUNCTION_132_5();
      v154(v153);
      sub_227CCBB4C(v284, &qword_27D7E6800);
      sub_227CCBB4C(v270, &qword_27D7E9FE8);
    }

    else
    {
      OUTLINED_FUNCTION_13_18(v287[0] + 8 * (v148 >> 6));
      v156 = (*(v155 + 48) + 16 * v148);
      v157 = v286;
      *v156 = v143;
      v156[1] = v157;
      v158 = OUTLINED_FUNCTION_103_4();
      v252(v158, v281, v282);

      v159 = v285;
      v160 = OUTLINED_FUNCTION_132_5();
      v161(v160);
      sub_227CCBB4C(v284, &qword_27D7E6800);
      sub_227CCBB4C(v270, &qword_27D7E9FE8);
      v162 = *(v159 + 16);
      v163 = __OFADD__(v162, 1);
      v164 = v162 + 1;
      if (v163)
      {
        goto LABEL_94;
      }

      *(v159 + 16) = v164;
    }

    v105 = v275 + 1;
    v107 = v274 + 6;
    v81 = v283;
    v104 = v262;
    if (v264 == v275 + 1)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  sub_227D4DAE8();
  __break(1u);
}

uint64_t sub_227CBEA90(uint64_t a1, uint64_t *a2)
{
  v46 = a2;
  v42 = sub_227D4A0E8();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v6 = MEMORY[0x28223BE20](v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  v39 = a1;
  v40 = v15;
  v49 = v16 + 16;
  v50 = v16;
  v51 = (v16 + 8);
  v36 = (v3 + 16);
  v47 = MEMORY[0x277D84F90];
  v38 = v3;
  for (i = (v3 + 32); ; result = (*i)(v31 + v45 + v30 * v44, v41, v42))
  {
    v17 = v14;
LABEL_3:
    if (v17 == v40)
    {
      return v47;
    }

    if (v17 >= v40)
    {
      break;
    }

    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_19;
    }

    v45 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v44 = *(v38 + 72);
    v18 = v39 + v45 + v44 * v17;
    v19 = *v46;
    sub_227D4CE58();
    v43 = v18;
    sub_227D4A0C8();
    if (*(v19 + 16))
    {
      v48 = v14;
      sub_227CCB9FC(&qword_27D7E6868, &qword_27D7E67C0);
      v20 = sub_227D4CE98();
      v21 = ~(-1 << *(v19 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(v19 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = v50;
        (*(v50 + 16))(v10, *(v19 + 48) + *(v50 + 72) * v22, v5);
        sub_227CCB9FC(&qword_27D7E6870, &qword_27D7E67C0);
        v24 = sub_227D4CF38();
        v25 = *(v23 + 8);
        v25(v10, v5);
        v20 = v22 + 1;
        if (v24)
        {

          result = (v25)(v13, v5);
          v17 = v48;
          goto LABEL_3;
        }
      }

      v14 = v48;
    }

    v26 = *v51;
    (*v51)(v13, v5);
    v27 = v37;
    v28 = v43;
    sub_227D4A0C8();
    sub_227C43208(v10, v27);
    v26(v10, v5);
    (*v36)(v41, v28, v42);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_227CC8CA8(0, *(v47 + 16) + 1, 1, v47, &qword_27D7E9FC8, &qword_227D633E0, MEMORY[0x277D0D080], MEMORY[0x277D0D080]);
      v47 = v32;
    }

    v30 = *(v47 + 16);
    v29 = *(v47 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_227CC8CA8(v29 > 1, v30 + 1, 1, v47, &qword_27D7E9FC8, &qword_227D633E0, MEMORY[0x277D0D080], MEMORY[0x277D0D080]);
      v47 = v33;
    }

    v31 = v47;
    *(v47 + 16) = v30 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_227CBEF7C(uint64_t a1)
{
  v2[323] = v1;
  v2[322] = a1;
  v3 = sub_227D4C9D8();
  v2[324] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v2[325] = v4;
  v2[326] = swift_task_alloc();
  v5 = sub_227D49188();
  v2[327] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v2[328] = v6;
  v2[329] = swift_task_alloc();
  v2[330] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227CBF098, v1, 0);
}

void sub_227CBF098()
{
  v1 = *(v0 + 2632);
  v2 = *(v0 + 2624);
  v3 = *(v0 + 2616);
  v4 = *(v0 + 2608);
  v5 = *(v0 + 2600);
  v6 = *(v0 + 2592);
  OUTLINED_FUNCTION_45();
  (*(v7 + 224))();
  sub_227D4C9C8();
  sub_227D49118();
  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 8);
  v8(v1, v3);
  v9 = sub_227D49198();
  v8(*(v0 + 2640), *(v0 + 2616));
  sub_227D48D98();
  swift_allocObject();
  sub_227D48D88();
  sub_227BB0AF4();
  sub_227D48D78();
  v150 = (v0 + 2536);
  v152 = (v0 + 2552);
  v10 = OUTLINED_FUNCTION_236();
  sub_227B728BC(v10, v11);

  memcpy((v0 + 200), (v0 + 16), 0xB8uLL);
  sub_227BAFF94(v0 + 216, v0 + 1224);
  sub_227BB09C8(v0 + 200);
  v12 = *(v0 + 368);
  v13 = *(v0 + 344);
  v14 = *(v0 + 232);
  *(v0 + 2536) = *(v0 + 216);
  memcpy((v0 + 2400), (v0 + 240), 0x68uLL);
  *(v0 + 2552) = *(v0 + 352);
  v151 = *(v0 + 376);
  *(v0 + 2648) = v151;
  v15 = *(v14 + 16);
  v172 = v0;
  v154 = v12;
  v155 = v13;
  if (v15)
  {
    v174 = MEMORY[0x277D84F90];
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227CC561C(0, v15, 0);
    v16 = v174;
    v19 = sub_227BB78B0(v14);
    v20 = 0;
    v21 = v14 + 64;
    v157 = v17;
    v160 = v15;
    v156 = v14 + 72;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v14 + 32))
    {
      v9 = v19 >> 6;
      if ((*(v21 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_101;
      }

      if (*(v14 + 36) != v17)
      {
        goto LABEL_102;
      }

      v166 = v20;
      v169 = v17;
      v163 = v18;
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227CC058C();
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v173 = v16;
      v29 = *(v16 + 16);
      v28 = *(v16 + 24);
      if (v29 >= v28 >> 1)
      {
        v40 = OUTLINED_FUNCTION_12(v28);
        sub_227CC561C(v40, v29 + 1, 1);
      }

      *(v16 + 16) = v29 + 1;
      v30 = (v16 + 24 * v29);
      v30[4] = v23;
      v30[5] = v25;
      v30[6] = v27;
      v31 = 1 << *(v14 + 32);
      if (v19 >= v31)
      {
        goto LABEL_103;
      }

      v21 = v14 + 64;
      v32 = *(v14 + 64 + 8 * v9);
      if ((v32 & (1 << v19)) == 0)
      {
        goto LABEL_104;
      }

      if (*(v14 + 36) != v169)
      {
        goto LABEL_105;
      }

      v33 = v32 & (-2 << (v19 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v0 = v172;
        v34 = v166;
      }

      else
      {
        v35 = v9 << 6;
        v36 = (v156 + 8 * v9);
        v37 = v9 + 1;
        v0 = v172;
        while (v37 < (v31 + 63) >> 6)
        {
          v39 = *v36++;
          v38 = v39;
          v35 += 64;
          ++v37;
          if (v39)
          {
            sub_227B3E218(v19, v169, v163 & 1);
            v31 = __clz(__rbit64(v38)) + v35;
            goto LABEL_19;
          }
        }

        sub_227B3E218(v19, v169, v163 & 1);
LABEL_19:
        v34 = v166;
      }

      v18 = 0;
      v20 = v34 + 1;
      v19 = v31;
      v17 = v157;
      if (v20 == v160)
      {

        goto LABEL_23;
      }
    }

LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  sub_227D4CE58();
  sub_227D4CE58();
  v16 = MEMORY[0x277D84F90];
LABEL_23:
  v146 = v0 + 552;
  v148 = v0 + 1392;
  v145 = v0 + 1560;
  v41 = *(v16 + 16);
  v42 = MEMORY[0x277D84F90];
  while (v41)
  {
    if (!*(v16 + 16))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_112_5();
    if (v9)
    {
      v44 = *(v43 - 32);
      v45 = *(v43 - 16);
      sub_227D4CE58();
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_32_9();
        sub_227CC8BC4();
        v42 = v49;
      }

      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_22_12(v46);
        sub_227CC8BC4();
        v42 = v50;
      }

      *(v42 + 16) = v47 + 1;
      v48 = (v42 + 24 * v47);
      v48[4] = v44;
      v48[5] = v9;
      v48[6] = v45;
    }
  }

  v51 = v172;
  v149 = sub_227CC08D4(v42, &unk_27D7EA138, &unk_227D63560, &qword_27D7EA140, &qword_227D63568);
  *(v172 + 2656) = v149;

  v52 = *(v155 + 16);
  if (v52)
  {
    v53 = OUTLINED_FUNCTION_94_5(MEMORY[0x277D84F90]);
    sub_227CC55DC(v53, v52, 0);
    v54 = v173;
    v9 = sub_227BB78B0(v155);
    v57 = v155;
    v58 = 0;
    v170 = v155 + 64;
    v156 = v55;
    v158 = v52;
    v59 = 1;
    while ((v9 & 0x8000000000000000) == 0 && v9 < v59 << *(v57 + 32))
    {
      v60 = v9 >> 6;
      v61 = v59 << v9;
      if ((*(v170 + 8 * (v9 >> 6)) & (v59 << v9)) == 0)
      {
        goto LABEL_107;
      }

      if (*(v57 + 36) != v55)
      {
        goto LABEL_108;
      }

      v164 = v55;
      v161 = v56;
      v51 = *(*(v57 + 56) + 8 * v9);
      v62 = v57;
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227CC09A8();
      v64 = v63;
      v167 = v65;
      v67 = v66;

      v173 = v54;
      v69 = *(v54 + 16);
      v68 = *(v54 + 24);
      if (v69 >= v68 >> 1)
      {
        v79 = OUTLINED_FUNCTION_12(v68);
        sub_227CC55DC(v79, v69 + 1, 1);
      }

      *(v54 + 16) = v69 + 1;
      v70 = (v54 + 24 * v69);
      v70[4] = v64;
      v70[5] = v167;
      v70[6] = v67;
      v71 = 1 << *(v62 + 32);
      if (v9 >= v71)
      {
        goto LABEL_109;
      }

      v72 = *(v170 + 8 * v60);
      if ((v72 & v61) == 0)
      {
        goto LABEL_110;
      }

      if (*(v62 + 36) != v164)
      {
        goto LABEL_111;
      }

      if ((v72 & (-2 << (v9 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_102_5();
        v73 = v158;
      }

      else
      {
        v74 = v60 << 6;
        v75 = (v155 + 72 + 8 * v60);
        v76 = v60 + 1;
        v51 = v172;
        v73 = v158;
        while (v76 < (v71 + 63) >> 6)
        {
          v78 = *v75++;
          v77 = v78;
          v74 += 64;
          ++v76;
          if (v78)
          {
            sub_227B3E218(v9, v164, v161 & 1);
            v57 = v155;
            v71 = __clz(__rbit64(v77)) + v74;
            goto LABEL_50;
          }
        }

        sub_227B3E218(v9, v164, v161 & 1);
        v57 = v155;
LABEL_50:
        v59 = 1;
      }

      v56 = 0;
      ++v58;
      v9 = v71;
      v55 = v156;
      if (v58 == v73)
      {

        goto LABEL_54;
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    return;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_54:
  v80 = MEMORY[0x277D84F90];
  v81 = *(v54 + 16);
  while (v81)
  {
    if (!*(v54 + 16))
    {
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_112_5();
    if (v9)
    {
      v83 = *(v82 - 32);
      v84 = *(v82 - 16);
      sub_227D4CE58();
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_32_9();
        sub_227CC8BC4();
        v80 = v88;
      }

      v86 = *(v80 + 16);
      v85 = *(v80 + 24);
      if (v86 >= v85 >> 1)
      {
        OUTLINED_FUNCTION_22_12(v85);
        sub_227CC8BC4();
        v80 = v89;
      }

      *(v80 + 16) = v86 + 1;
      v87 = (v80 + 24 * v86);
      v87[4] = v83;
      v87[5] = v9;
      v87[6] = v84;
      v51 = v172;
    }
  }

  v153 = sub_227CC08D4(v80, &unk_27D7EA100, &unk_227D63528, &qword_27D7EA108, &qword_227D63530);
  *(v51 + 2664) = v153;

  v90 = *(v154 + 16);
  if (v90)
  {
    v91 = OUTLINED_FUNCTION_94_5(MEMORY[0x277D84F90]);
    sub_227CC559C(v91, v90, 0);
    v92 = v173;
    v95 = sub_227BB78B0(v154);
    v96 = v154;
    v97 = 0;
    v98 = v154 + 64;
    v156 = v93;
    v159 = v90;
    v155 = v154 + 72;
    while ((v95 & 0x8000000000000000) == 0 && v95 < 1 << *(v96 + 32))
    {
      v99 = v95 >> 6;
      if ((*(v98 + 8 * (v95 >> 6)) & (1 << v95)) == 0)
      {
        goto LABEL_113;
      }

      if (*(v96 + 36) != v93)
      {
        goto LABEL_114;
      }

      v165 = v97;
      v168 = v93;
      v162 = v94;
      v100 = v96;
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227CC0CF0();
      v102 = v101;
      v171 = v103;
      v105 = v104;

      v107 = *(v173 + 16);
      v106 = *(v173 + 24);
      if (v107 >= v106 >> 1)
      {
        v116 = OUTLINED_FUNCTION_12(v106);
        sub_227CC559C(v116, v107 + 1, 1);
      }

      *(v173 + 16) = v107 + 1;
      v108 = (v173 + 24 * v107);
      v108[4] = v102;
      v108[5] = v171;
      v108[6] = v105;
      v109 = 1 << *(v100 + 32);
      if (v95 >= v109)
      {
        goto LABEL_115;
      }

      v98 = v154 + 64;
      v110 = *(v154 + 64 + 8 * v99);
      if ((v110 & (1 << v95)) == 0)
      {
        goto LABEL_116;
      }

      if (*(v100 + 36) != v168)
      {
        goto LABEL_117;
      }

      if ((v110 & (-2 << (v95 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_102_5();
      }

      else
      {
        v111 = v99 << 6;
        v112 = (v155 + 8 * v99);
        v113 = v99 + 1;
        while (v113 < (v109 + 63) >> 6)
        {
          v115 = *v112++;
          v114 = v115;
          v111 += 64;
          ++v113;
          if (v115)
          {
            sub_227B3E218(v95, v168, v162 & 1);
            v96 = v154;
            v109 = __clz(__rbit64(v114)) + v111;
            goto LABEL_81;
          }
        }

        sub_227B3E218(v95, v168, v162 & 1);
        v96 = v154;
      }

LABEL_81:
      v94 = 0;
      v97 = v165 + 1;
      v95 = v109;
      v93 = v156;
      if (v165 + 1 == v159)
      {

        goto LABEL_84;
      }
    }

    goto LABEL_112;
  }

  v92 = MEMORY[0x277D84F90];
LABEL_84:
  v117 = 0;
  v118 = MEMORY[0x277D84F90];
  v119 = *(v92 + 16);
LABEL_85:
  v120 = (v92 + 40 + 24 * v117);
  while (v119 != v117)
  {
    if (v117 >= *(v92 + 16))
    {
      goto LABEL_99;
    }

    v121 = v120 + 3;
    ++v117;
    v122 = *v120;
    v120 += 3;
    if (v122)
    {
      v123 = *(v121 - 4);
      v124 = *(v121 - 2);
      sub_227D4CE58();
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_32_9();
        sub_227CC8BC4();
        v118 = v128;
      }

      v126 = *(v118 + 16);
      v125 = *(v118 + 24);
      if (v126 >= v125 >> 1)
      {
        OUTLINED_FUNCTION_22_12(v125);
        sub_227CC8BC4();
        v118 = v129;
      }

      *(v118 + 16) = v126 + 1;
      v127 = (v118 + 24 * v126);
      v127[4] = v123;
      v127[5] = v122;
      v127[6] = v124;
      goto LABEL_85;
    }
  }

  v130 = sub_227CC08D4(v118, &unk_27D7EA0C8, &unk_227D634F0, &qword_27D7EA0D0, &qword_227D634F8);
  *(v172 + 2672) = v130;

  v132 = v149;
  v131 = v150;
  *(v172 + 384) = *v150;
  *(v172 + 400) = v149;
  OUTLINED_FUNCTION_88_5((v172 + 408));
  v133 = v153;
  *(v172 + 512) = v153;
  v135 = v151;
  v134 = v152;
  *(v172 + 520) = *v152;
  *(v172 + 536) = v130;
  *(v172 + 544) = v151;
  sub_227CB8EF4(v172 + 384, v136, v137, v138, v139, v140, v141, v142, v145, v146, v148, v149, v150, v151, v152, 0, v153, v154, v155, v156);
  *v147 = *v131;
  *(v172 + 568) = v132;
  OUTLINED_FUNCTION_88_5((v172 + 576));
  *(v172 + 680) = v133;
  *(v172 + 688) = *v134;
  *(v172 + 704) = v130;
  *(v172 + 712) = v135;
  sub_227BE0128(v147);
  *(v172 + 720) = *v131;
  *(v172 + 736) = v132;
  OUTLINED_FUNCTION_88_5((v172 + 744));
  *(v172 + 848) = v133;
  *(v172 + 856) = *v134;
  *(v172 + 872) = v130;
  *(v172 + 880) = v135;
  v143 = swift_task_alloc();
  *(v172 + 2680) = v143;
  *v143 = v172;
  v143[1] = sub_227CC019C;
  v144 = *(v172 + 2576);

  sub_227C74874(v172 + 720, v144);
}

uint64_t sub_227CC019C()
{
  v2 = *v1;
  *(*v1 + 2688) = v0;

  v3 = *(v2 + 2584);
  if (v0)
  {
    v4 = sub_227CC04C0;
  }

  else
  {
    v4 = sub_227CC02B4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227CC02B4()
{
  v4 = (v0 + 2536);
  v5 = (v0 + 2552);
  v6 = *(v0 + 2688);
  OUTLINED_FUNCTION_67_2();
  *(v0 + 904) = v7;
  OUTLINED_FUNCTION_88_5((v0 + 912));
  *(v0 + 1016) = v2;
  *(v0 + 1024) = *(v0 + 2552);
  *(v0 + 1040) = v1;
  *(v0 + 1048) = v3;
  sub_227CBB3D0(v0 + 888);
  if (v6)
  {
    v9 = *(v0 + 2672);
    v10 = *(v0 + 2664);
    v11 = *(v0 + 2656);
    v12 = *(v0 + 2648);
    *(v0 + 1896) = *v4;
    *(v0 + 1912) = v11;
    OUTLINED_FUNCTION_88_5((v0 + 1920));
    *(v0 + 2024) = v10;
    *(v0 + 2032) = *(v0 + 2552);
    *(v0 + 2048) = v9;
    *(v0 + 2056) = v12;
    sub_227BB0664(v0 + 1896);
  }

  else
  {
    OUTLINED_FUNCTION_67_2();
    *(v0 + 1072) = v8;
    OUTLINED_FUNCTION_88_5((v0 + 1080));
    *(v0 + 1184) = v2;
    *(v0 + 1192) = *v5;
    *(v0 + 1208) = v1;
    *(v0 + 1216) = v3;
    sub_227CBD3E0();
    v15 = *(v0 + 2672);
    v16 = *(v0 + 2664);
    v17 = *(v0 + 2656);
    v18 = *(v0 + 2648);
    *(v0 + 2232) = *v4;
    *(v0 + 2248) = v17;
    OUTLINED_FUNCTION_88_5((v0 + 2256));
    *(v0 + 2360) = v16;
    *(v0 + 2368) = *v5;
    *(v0 + 2384) = v15;
    *(v0 + 2392) = v18;
    sub_227BB0664(v0 + 2232);
  }

  OUTLINED_FUNCTION_18();

  return v13();
}

uint64_t sub_227CC04C0()
{
  v1 = *(v0 + 2672);
  v2 = *(v0 + 2664);
  v3 = *(v0 + 2656);
  v4 = *(v0 + 2648);
  *(v0 + 1728) = *(v0 + 2536);
  *(v0 + 1744) = v3;
  OUTLINED_FUNCTION_88_5((v0 + 1752));
  *(v0 + 1856) = v2;
  *(v0 + 1864) = *(v0 + 2552);
  *(v0 + 1880) = v1;
  *(v0 + 1888) = v4;
  sub_227BB0664(v0 + 1728);

  OUTLINED_FUNCTION_18();

  return v5();
}

void sub_227CC058C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_98_6(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v6);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_54_8();
  sub_227D49188();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_438();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA090, &unk_227D634B0);
  OUTLINED_FUNCTION_5(v10);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_90_0();
  v12 = type metadata accessor for AchievementImage(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  if ((OUTLINED_FUNCTION_75_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_71_7();
    OUTLINED_FUNCTION_131_4();
    swift_task_reportUnexpectedExecutor();
  }

  v14 = OUTLINED_FUNCTION_111_4();
  sub_227CBAEE8(v14, v15);
  v16 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v16, v17, v12) == 1)
  {
    sub_227CCBB4C(v0, &qword_27D7EA090);
LABEL_8:
    OUTLINED_FUNCTION_96_6();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_7();
  OUTLINED_FUNCTION_278();
  sub_227CCBBA0();
  OUTLINED_FUNCTION_45();
  (*(v18 + 224))();
  v19 = OUTLINED_FUNCTION_97_4();
  v20(v19);
  v21 = OUTLINED_FUNCTION_62_7();
  v3(v21);
  OUTLINED_FUNCTION_100_5();
  if (v22)
  {
    sub_227CCBB4C(v1, &qword_27D7E6CD8);
    OUTLINED_FUNCTION_39_9();
    sub_227CCB950(v2, v23);
    goto LABEL_8;
  }

  v24 = OUTLINED_FUNCTION_28_12();
  v25(v24);
  v26 = OUTLINED_FUNCTION_61_8();
  v27(v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA168, &unk_227D63590);
  *(OUTLINED_FUNCTION_25_8(v28) + 16) = xmmword_227D4E520;
  sub_227CCB9A8();
  sub_227D4CE58();
  v29 = OUTLINED_FUNCTION_201();
  v3(v29);
  v30 = OUTLINED_FUNCTION_336();
  sub_227CCB950(v30, v31);
LABEL_9:
  OUTLINED_FUNCTION_95_4();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC08D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 16))
  {
    v9 = OUTLINED_FUNCTION_82();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_78_0();
    v11 = sub_227D4D838();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v14 = v11;
  v12 = sub_227D4CE58();
  sub_227CC8E10(v12, 1, &v14, a2, a3, a4, a5);

  return v14;
}

void sub_227CC09A8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_98_6(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v6);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_54_8();
  sub_227D49188();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_438();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA030, &unk_227D63440);
  OUTLINED_FUNCTION_5(v10);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_90_0();
  v12 = type metadata accessor for LeaderboardImage(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  if ((OUTLINED_FUNCTION_75_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_71_7();
    OUTLINED_FUNCTION_131_4();
    swift_task_reportUnexpectedExecutor();
  }

  v14 = OUTLINED_FUNCTION_111_4();
  sub_227CBAEE8(v14, v15);
  v16 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v16, v17, v12) == 1)
  {
    sub_227CCBB4C(v0, &qword_27D7EA030);
LABEL_8:
    OUTLINED_FUNCTION_96_6();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_49_6();
  OUTLINED_FUNCTION_278();
  sub_227CCBBA0();
  OUTLINED_FUNCTION_45();
  (*(v18 + 224))();
  v19 = OUTLINED_FUNCTION_97_4();
  v20(v19);
  v21 = OUTLINED_FUNCTION_62_7();
  v3(v21);
  OUTLINED_FUNCTION_100_5();
  if (v22)
  {
    sub_227CCBB4C(v1, &qword_27D7E6CD8);
    OUTLINED_FUNCTION_48_8();
    sub_227CCB950(v2, v23);
    goto LABEL_8;
  }

  v24 = OUTLINED_FUNCTION_28_12();
  v25(v24);
  v26 = OUTLINED_FUNCTION_61_8();
  v27(v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA130, &qword_227D63558);
  *(OUTLINED_FUNCTION_25_8(v28) + 16) = xmmword_227D4E520;
  sub_227CCB9A8();
  sub_227D4CE58();
  v29 = OUTLINED_FUNCTION_201();
  v3(v29);
  v30 = OUTLINED_FUNCTION_336();
  sub_227CCB950(v30, v31);
LABEL_9:
  OUTLINED_FUNCTION_95_4();
  OUTLINED_FUNCTION_8_1();
}

void sub_227CC0CF0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_98_6(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v6);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_54_8();
  sub_227D49188();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_23_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_438();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FE8, &unk_227D63400);
  OUTLINED_FUNCTION_5(v10);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_90_0();
  v12 = type metadata accessor for LeaderboardSetImage(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  if ((OUTLINED_FUNCTION_75_7() & 1) == 0)
  {
    OUTLINED_FUNCTION_71_7();
    OUTLINED_FUNCTION_131_4();
    swift_task_reportUnexpectedExecutor();
  }

  v14 = OUTLINED_FUNCTION_111_4();
  sub_227CBAEE8(v14, v15);
  v16 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v16, v17, v12) == 1)
  {
    sub_227CCBB4C(v0, &qword_27D7E9FE8);
LABEL_8:
    OUTLINED_FUNCTION_96_6();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_46_7();
  OUTLINED_FUNCTION_278();
  sub_227CCBBA0();
  OUTLINED_FUNCTION_45();
  (*(v18 + 224))();
  v19 = OUTLINED_FUNCTION_97_4();
  v20(v19);
  v21 = OUTLINED_FUNCTION_62_7();
  v3(v21);
  OUTLINED_FUNCTION_100_5();
  if (v22)
  {
    sub_227CCBB4C(v1, &qword_27D7E6CD8);
    OUTLINED_FUNCTION_45_8();
    sub_227CCB950(v2, v23);
    goto LABEL_8;
  }

  v24 = OUTLINED_FUNCTION_28_12();
  v25(v24);
  v26 = OUTLINED_FUNCTION_61_8();
  v27(v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA0F8, &qword_227D63520);
  *(OUTLINED_FUNCTION_25_8(v28) + 16) = xmmword_227D4E520;
  sub_227CCB9A8();
  sub_227D4CE58();
  v29 = OUTLINED_FUNCTION_201();
  v3(v29);
  v30 = OUTLINED_FUNCTION_336();
  sub_227CCB950(v30, v31);
LABEL_9:
  OUTLINED_FUNCTION_95_4();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC1038(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE0, &unk_227D63220);
  OUTLINED_FUNCTION_5(v4);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_121_5();
  v7 = type metadata accessor for AchievementPlayerKey(v6);
  v8 = OUTLINED_FUNCTION_5(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_54_8();
  v9 = sub_227D4A298();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = *(v11 + 16);
  v17 = OUTLINED_FUNCTION_336();
  v16(v17);
  sub_227D4A258();
  sub_227D4A268();
  sub_227D4A258();
  sub_227D4A268();
  sub_227D4A258();
  sub_227D4A248();
  OUTLINED_FUNCTION_3_24();
  sub_227CCB9A8();
  (v16)(v2, v15, v9);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v9);
  (*(*v1 + 336))(v22);
  OUTLINED_FUNCTION_105_6();
  sub_227CBAA90(v2, v3);
  v1(v22, 0);
  return (*(v11 + 8))(v15, v9);
}

void sub_227CC1270()
{
  OUTLINED_FUNCTION_11();
  v39 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE0, &unk_227D63220);
  OUTLINED_FUNCTION_5(v4);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26_0();
  v41 = v6;
  v7 = OUTLINED_FUNCTION_191_2();
  v8 = type metadata accessor for AchievementPlayerKey(v7);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v40 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v12);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_9();
  v15 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_90_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v19 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_120_4();
  v21 = sub_227D4A298();
  OUTLINED_FUNCTION_9();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  (*(v19 + 16))(v2, v39 + *(v9 + 28), v17);
  (*(v15 + 16))(v0, v39, v38);
  sub_227D49288();
  sub_227D492A8();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_173_0();
  sub_227D4A278();
  OUTLINED_FUNCTION_3_24();
  sub_227CCB9A8();
  (*(v23 + 16))(v41, v27, v21);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v21);
  v35 = (*(*v1 + 336))(v43);
  sub_227CBAA90(v41, v40);
  v35(v43, 0);
  v42[2] = v39;
  (*(*v1 + 360))(v43);
  OUTLINED_FUNCTION_105_6();
  v36 = sub_227CC90E4(sub_227CCB18C, v42);
  v37 = *(*v1 + 16);
  if (v37 < v36)
  {
    __break(1u);
  }

  else
  {
    sub_227CCB2A8(v36, v37);
    v1(v43, 0);
    (*(v23 + 8))(v27, v21);
    OUTLINED_FUNCTION_8_1();
  }
}

uint64_t sub_227CC1684()
{
  OUTLINED_FUNCTION_118_4();
  v3 = OUTLINED_FUNCTION_397(v0, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v5 = OUTLINED_FUNCTION_9_2();
  sub_227CCB9FC(v5, v6);
  sub_227D4D148();
  sub_227D4D148();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_227D4DA78();
  }

  return v8 & 1;
}

void sub_227CC1764()
{
  OUTLINED_FUNCTION_11();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F78, &qword_227D63230);
  OUTLINED_FUNCTION_5(v8);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_121_5();
  v65 = sub_227D4A4D8();
  OUTLINED_FUNCTION_9();
  v67 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_3();
  v64 = v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_314();
  v66 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9EE0, &unk_227D63220);
  OUTLINED_FUNCTION_5(v15);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_90_0();
  v17 = sub_227D4A298();
  OUTLINED_FUNCTION_9();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  v24 = type metadata accessor for AchievementPlayerKey(0);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_6_15();
  (*(v29 + 16))(v28, v7);
  v30 = *(v25 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15();
  v32 = (*(v31 + 16))(v28 + v30, v5);
  (*(*v3 + 320))(v32);
  v33 = OUTLINED_FUNCTION_168_1();
  sub_227CAE2D0(v34, v35, v33);

  v36 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v36, v37, v17) == 1)
  {
    v38 = OUTLINED_FUNCTION_5_24();
    sub_227CCB950(v38, v39);
    sub_227CCBB4C(v0, &qword_27D7E9EE0);
    goto LABEL_12;
  }

  v40 = (*(v19 + 32))(v23, v0, v17);
  v41 = (*(*v3 + 296))(v40);
  v42 = sub_227CBADC8(v7, v41, &qword_27D7E6D70, &unk_227D5E210, &qword_27D7E9F40, &qword_27D7E9F48);

  if (!v42)
  {
    goto LABEL_10;
  }

  sub_227CBAF98(v42, v2);

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F80, &qword_227D63238);
  if (__swift_getEnumTagSinglePayload(v2, 1, v43) == 1)
  {
    v44 = OUTLINED_FUNCTION_53_4();
    v45(v44);
    sub_227CCBB4C(v2, &qword_27D7E9F78);
LABEL_11:
    v57 = OUTLINED_FUNCTION_5_24();
    sub_227CCB950(v57, v58);
    goto LABEL_12;
  }

  v46 = *(v67 + 32);
  v46(v64, &v2[*(v43 + 48)], v65);
  v46(v66, v64, v65);
  if ((sub_227D4A238() & 1) == 0)
  {
    (*(v67 + 8))(v66, v65);
LABEL_10:
    v55 = OUTLINED_FUNCTION_53_4();
    v56(v55);
    goto LABEL_11;
  }

  v47 = (*(*v3 + 344))();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_109();
  *(v48 - 16) = v28;
  v50 = sub_227CC8900(sub_227CCB3EC, v49, v47);

  if (v50)
  {
    sub_227D4A4B8();
    (*(v67 + 8))(v66, v65);
    v51 = OUTLINED_FUNCTION_53_4();
    v52(v51);
    v53 = OUTLINED_FUNCTION_5_24();
    sub_227CCB950(v53, v54);
  }

  else
  {
    (*(*v3 + 360))(v68);
    OUTLINED_FUNCTION_105_6();
    sub_227CC8D9C();
    v59 = *(*v3 + 16);
    sub_227CC8A64(v59);
    *(*v3 + 16) = v59 + 1;
    sub_227CCB9A8();
    v47(v68, 0);
    (*(v67 + 8))(v66, v65);
    v60 = OUTLINED_FUNCTION_53_4();
    v61(v60);
    v62 = OUTLINED_FUNCTION_168_1();
    sub_227CCB950(v62, v63);
  }

LABEL_12:
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC1DD0()
{
  OUTLINED_FUNCTION_37();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_6_15();
  v3 = OUTLINED_FUNCTION_87_1();
  v4(v3);
  v5 = *(type metadata accessor for AchievementPlayerKey(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_6_15();
  v7 = *(v6 + 32);

  return v7(v2 + v5, v0);
}

void sub_227CC1E88()
{
  OUTLINED_FUNCTION_351();
  v112 = v0;
  v4 = v3;
  sub_227D4A0E8();
  OUTLINED_FUNCTION_9();
  v108 = v6;
  v109 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v107 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8390, &unk_227D58D90);
  OUTLINED_FUNCTION_5(v9);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_0();
  v110 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_23_7();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v101 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v101 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v101 - v23;
  sub_227D4A078();
  v117 = sub_227D4A7D8();
  v26 = v25;
  v28 = *(v14 + 8);
  v27 = v14 + 8;
  v29 = v24;
  v30 = v28;
  v111 = v12;
  v28(v29, v12);
  if (v1)
  {
    goto LABEL_2;
  }

  v102 = v19;
  v103 = v22;
  v105 = v30;
  v106 = v27;
  v101 = v2;
  v31 = v109;
  v104 = 0;
  v32 = v4;
  v33 = v112;
  OUTLINED_FUNCTION_80_0();
  v35 = (*(v34 + 416))();
  v36 = v110;
  v37 = v26;
  sub_227CBAE28(v117, v26, v35, v110);

  v38 = v111;
  if (__swift_getEnumTagSinglePayload(v36, 1, v111) == 1)
  {
    v39 = v104;
    sub_227CCBB4C(v36, &qword_27D7E8390);
    v40 = sub_227D49E08();
    OUTLINED_FUNCTION_0_52();
    sub_227CB8EB0(v41, v42);
    OUTLINED_FUNCTION_208();
    v43 = swift_allocError();
    v45 = v44;
    v115 = 0;
    v116 = 0xE000000000000000;
    sub_227D4D668();

    OUTLINED_FUNCTION_56_6();
    v113 = v47;
    v114 = v46;
    MEMORY[0x22AAA5DA0](v117, v37);

    OUTLINED_FUNCTION_14_15();
    v48 = sub_227D4A6A8();
    if (v39)
    {

      MEMORY[0x22AAA6E40](v43, v40);
    }

    else
    {
      MEMORY[0x22AAA5DA0](v48);

      v87 = v114;
      *v45 = v113;
      v45[1] = v87;
      OUTLINED_FUNCTION_14_0();
      (*(v88 + 104))(v45);
      swift_willThrow();
    }

    goto LABEL_2;
  }

  sub_227CCBB4C(v36, &qword_27D7E8390);
  v49 = v103;
  sub_227D4A078();
  OUTLINED_FUNCTION_114_5();
  (*(v50 + 440))();
  v51 = OUTLINED_FUNCTION_173_0();
  v53 = sub_227CBAD18(v51, v52);
  v55 = v54;
  v57 = v56;

  v105(v49, v38);
  if ((v57 & 0xFF00) == 0x200)
  {
    v58 = 0;
  }

  else
  {
    v58 = v53;
  }

  if (((v57 & 0xFF00) == 512) | v57 & 1)
  {
    v59 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v59 = v55;
  }

  if (v59 < v58)
  {
    __break(1u);
  }

  else
  {
    v55 = v33;
    v60 = sub_227D4A0B8();
    v61 = v60 < v58 || v59 < v60;
    v57 = v108;
    v62 = v102;
    if (v61)
    {
      sub_227D49E08();
      OUTLINED_FUNCTION_0_52();
      sub_227CB8EB0(v63, v64);
      OUTLINED_FUNCTION_208();
      swift_allocError();
      OUTLINED_FUNCTION_56_6();
      *v66 = v65 + 15;
      v66[1] = v67;
      OUTLINED_FUNCTION_14_0();
      (*(v68 + 104))();
      swift_willThrow();
      goto LABEL_2;
    }

    v69 = sub_227D4A078();
    (*(*v33 + 512))(v69);
    v70 = OUTLINED_FUNCTION_173_0();
    v76 = sub_227CBADC8(v70, v71, v72, v73, v74, v75);

    v105(v62, v38);
    if (v76)
    {
      v59 = v76;
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    v33 = v31;
    (*(v57 + 16))(v107, v32, v31);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_43_7();
  sub_227CC8CA8(0, v89 + 1, 1, v59, v90, v91, v92, v93);
  v59 = v94;
LABEL_23:
  v78 = *(v59 + 16);
  v77 = *(v59 + 24);
  if (v78 >= v77 >> 1)
  {
    OUTLINED_FUNCTION_12(v77);
    OUTLINED_FUNCTION_43_7();
    sub_227CC8CA8(v95, v78 + 1, 1, v59, v96, v97, v98, v99);
    v59 = v100;
  }

  *(v59 + 16) = v78 + 1;
  (*(v57 + 32))(v59 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v78, v107, v33);
  v79 = v101;
  sub_227D4A078();
  v80 = (*(*v55 + 528))(&v113);
  v82 = v81;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_134_3();
  v115 = v83;
  v84 = OUTLINED_FUNCTION_201();
  sub_227CC8058(v84, v85, v86);
  *v82 = v115;
  v105(v79, v38);
  v80(&v113, 0);
LABEL_2:
  OUTLINED_FUNCTION_352();
}

void sub_227CC2628()
{
  OUTLINED_FUNCTION_351();
  v107 = v1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F88, &unk_227D63240);
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_3();
  v101 = v5;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_314();
  v104 = v7;
  OUTLINED_FUNCTION_191_2();
  v105 = sub_227D4A0E8();
  OUTLINED_FUNCTION_9();
  v102 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v100 = (v11 - v10);
  OUTLINED_FUNCTION_191_2();
  v12 = sub_227D492A8();
  v13 = OUTLINED_FUNCTION_5(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_55_9();
  v14 = sub_227D48E28();
  OUTLINED_FUNCTION_9();
  v97 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  v21 = OUTLINED_FUNCTION_5(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_437();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8390, &unk_227D58D90);
  OUTLINED_FUNCTION_5(v23);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_90_0();
  v25 = sub_227D4A7D8();
  if (v2)
  {
    goto LABEL_2;
  }

  v27 = v26;
  v92 = v14;
  v95 = v3;
  v28 = v25;
  v29 = (*(*v1 + 416))();
  v30 = v28;
  sub_227CBAE28(v28, v27, v29, v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v31 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v31, v32, v33) == 1)
  {
    sub_227CCBB4C(v0, &qword_27D7E8390);
    sub_227D49E08();
    OUTLINED_FUNCTION_0_52();
    sub_227CB8EB0(v34, v35);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    v37 = v36;
    sub_227D4D668();

    OUTLINED_FUNCTION_56_6();
    v111 = v39;
    v112 = v38;
    MEMORY[0x22AAA5DA0](v30, v27);

    OUTLINED_FUNCTION_14_15();
    v40 = sub_227D4A6A8();
    MEMORY[0x22AAA5DA0](v40);

    v67 = v112;
    *v37 = v111;
    v37[1] = v67;
    OUTLINED_FUNCTION_14_0();
    (*(v68 + 104))(v37);
    swift_willThrow();
LABEL_2:
    OUTLINED_FUNCTION_352();
    return;
  }

  v41 = sub_227CCBB4C(v0, &qword_27D7E8390);
  (*(*v1 + 512))(v41);
  v42 = OUTLINED_FUNCTION_193();
  v48 = sub_227CBADC8(v42, v43, v44, v45, v46, v47);

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  (*(*v107 + 440))(v49);
  v51 = OUTLINED_FUNCTION_193();
  v108 = sub_227CBAD18(v51, v52);
  v54 = v53;
  v56 = v55;

  if ((v56 & 0xFF00) == 0x200)
  {
    v108 = 0;
    LOBYTE(v56) = 0;
    v57 = 0;
    v58 = 1;
    v54 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v57 = ((v56 & 0xFFFFFFu) >> 8) & 1;
    v58 = ((v56 & 0xFFFFFFu) >> 16) & 1;
  }

  sub_227CCBAFC();
  v59 = sub_227D4A478();
  if (__swift_getEnumTagSinglePayload(v95, 1, v59) != 1)
  {
    sub_227CCBAFC();
    v60 = OUTLINED_FUNCTION_173_0();
    v62 = v61(v60);
    if (v62 == *MEMORY[0x277D0D298])
    {
      sub_227D49288();
      v63 = sub_227D48E08();
      MEMORY[0x28223BE20](v63);
      OUTLINED_FUNCTION_109();
      *(v65 - 16) = v19;
      v66 = sub_227CCBBF4;
    }

    else
    {
      if (v62 != *MEMORY[0x277D0D2A0])
      {
        if (v62 != *MEMORY[0x277D0D290])
        {
          v90 = OUTLINED_FUNCTION_173_0();
          v91(v90);
        }

        goto LABEL_18;
      }

      sub_227D49288();
      v69 = sub_227D48E08();
      MEMORY[0x28223BE20](v69);
      OUTLINED_FUNCTION_109();
      *(v70 - 16) = v19;
      v66 = sub_227CCB40C;
    }

    v50 = sub_227CBB10C(v66, v64, v50);
    (*(v97 + 8))(v19, v92);
  }

LABEL_18:
  sub_227CCBB4C(v95, &qword_27D7E82E0);
  v111 = v50;
  sub_227D4CE58();
  if (v58)
  {
    v71 = 0x10000;
  }

  else
  {
    v71 = 0;
  }

  if (v57)
  {
    v72 = 256;
  }

  else
  {
    v72 = 0;
  }

  sub_227CC94D0(&v111, v108, v54, (v71 | v72) & 0xFFFFFFFE | v56 & 1);
  v73 = 0;

  v74 = v111;
  if (v57 & v58)
  {
    v74 = sub_227CC31F8(v111);
  }

  v75 = v104;
  v76 = v105;
  v111 = MEMORY[0x277D84FA0];
  v77 = sub_227CBEA90(v74, &v111);

  if (!*(v77 + 16))
  {
LABEL_33:

    goto LABEL_2;
  }

  v78 = OUTLINED_FUNCTION_94_5(MEMORY[0x277D84F90]);
  v96 = v79;
  v81 = v80;
  sub_227CC565C(v78, v79, 0);
  v82 = 0;
  v98 = v77;
  v99 = *(v77 + 16);
  v94 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v93 = v77 + v94;
  while (v99 != v82)
  {
    if (v82 >= *(v77 + 16))
    {
      goto LABEL_37;
    }

    v83 = *(v81 + 48);
    v106 = *(v102 + 16);
    v109 = *(v102 + 72);
    v106(v75 + v83, v93 + v109 * v82, v76);
    *v101 = v82;
    v84 = v75;
    v85 = *(v81 + 48);
    v86 = *(v102 + 32);
    v86(v101 + v85, v84 + v83, v76);
    v73 = v100;
    v106(v100, v101 + v85, v76);
    ++v82;
    sub_227D4A0A8();
    sub_227CCBB4C(v101, &qword_27D7E9F88);
    v88 = *(v110 + 16);
    v87 = *(v110 + 24);
    if (v88 >= v87 >> 1)
    {
      v89 = OUTLINED_FUNCTION_12(v87);
      sub_227CC565C(v89, v88 + 1, 1);
    }

    *(v110 + 16) = v88 + 1;
    v86((v110 + v94 + v88 * v109), v100, v76);
    v77 = v98;
    v81 = v103;
    v75 = v104;
    if (v96 == v82)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);

  __break(1u);
}

uint64_t sub_227CC3010()
{
  OUTLINED_FUNCTION_37();
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  sub_227D4A068();
  v1 = sub_227D48E18();
  v2 = OUTLINED_FUNCTION_253();
  v3(v2);
  return v1 & 1;
}

void sub_227CC30D8()
{
  OUTLINED_FUNCTION_450_0();
  v1 = v0;
  sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_438();
  if ((v1 & 0x10000) != 0)
  {
    sub_227D4A0B8();
    sub_227D4A0B8();
  }

  else
  {
    sub_227D4A068();
    sub_227D4A068();
    OUTLINED_FUNCTION_201();
    sub_227D49208();
    v6 = *(v3 + 8);
    v7 = OUTLINED_FUNCTION_193();
    v6(v7);
    v8 = OUTLINED_FUNCTION_173_0();
    v6(v8);
  }

  OUTLINED_FUNCTION_451_0();
}

uint64_t sub_227CC31F8(uint64_t a1)
{
  v2 = sub_227D4A0E8();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v30 = v24 - v8;
  v9 = *(a1 + 16);
  if (v9 < 2)
  {
    return a1;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v25 = v9 >> 1;
  v26 = v7;
  v24[1] = v7 + 16;
  v27 = (v7 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 16);
    if (v10 >= v13)
    {
      break;
    }

    v14 = v5;
    v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = a1 + v29;
    v16 = *(v7 + 72);
    v17 = a1;
    v18 = *(v7 + 16);
    v28 = v16 * v10;
    result = v18(v30, v15 + v16 * v10, v2);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = v15 + v16 * v12;
    v5 = v14;
    v18(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_227CC95F8(v17);
      a1 = v23;
    }

    v21 = a1 + v29;
    v22 = *v27;
    result = (*v27)(a1 + v29 + v28, v5, v2);
    if (v12 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    result = v22(v21 + v19, v30, v2);
    v11 = v25;
    v7 = v26;
LABEL_11:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_227CC3420()
{
  OUTLINED_FUNCTION_11();
  v3 = v0;
  v5 = v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_9();
  v51 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_55_9();
  v8 = sub_227D4A0E8();
  OUTLINED_FUNCTION_9();
  v50 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v54 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_438();
  v13 = sub_227D492D8();
  OUTLINED_FUNCTION_9();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  (*(v15 + 104))(v18 - v17, *MEMORY[0x277CC9670], v13);
  sub_227D492C8();
  v21 = v20;
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v13);
  v24 = *(v5 + 16);
  if (v24)
  {
    v41 = v21;
    v46 = v2;
    v55 = MEMORY[0x277D84F90];
    sub_227CC565C(0, v24, 0);
    v25 = v55;
    v53 = *(v50 + 16);
    v26 = v5 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v45 = *(*v3 + 488);
    v44 = *(*v3 + 712);
    v43 = (v51 + 8);
    v42 = *(v50 + 72);
    v48 = v1;
    v47 = v8;
    do
    {
      v52 = v25;
      v53(v54, v26, v8);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        OUTLINED_FUNCTION_71_7();
        swift_task_reportUnexpectedExecutor();
      }

      v27 = sub_227D4A078();
      v28 = v45(v27);
      if (*(v28 + 16) && (sub_227CC4A1C(), (v30 & 1) != 0) && (v31 = *(*(v28 + 56) + 8 * v29), sub_227D4CE58(), , *(v31 + 16)) && (v32 = OUTLINED_FUNCTION_135_6(), v33 = sub_227B2664C(v32, v41), (v34 & 1) != 0))
      {
        v35 = *(v31 + 56) + 40 * v33;
        LOBYTE(v2) = *v35;
        v22 = *(v35 + 8);
        v19 = *(v35 + 16);
        v8 = *(v35 + 24);
        v1 = *(v35 + 32);
        sub_227D4CE58();
        sub_227D4CE58();
      }

      else
      {
        OUTLINED_FUNCTION_99_4();
      }

      v56 = v2;
      v57 = v22;
      v58 = v19;
      v59 = v8;
      v60 = v1;
      LOBYTE(v2) = v46;
      v8 = v47;
      v22 = v54;
      v53(v46, v54, v47);
      v36 = sub_227D4A0B8();
      v44(v36, &v56);
      OUTLINED_FUNCTION_105_6();

      OUTLINED_FUNCTION_58();
      sub_227D4A088();
      v1 = v48;
      (*v43)(v48, v49);
      OUTLINED_FUNCTION_37_8();
      v37(v54, v47);
      v25 = v52;
      v19 = *(v52 + 16);
      v38 = *(v52 + 24);
      if (v19 >= v38 >> 1)
      {
        v40 = OUTLINED_FUNCTION_12(v38);
        sub_227CC565C(v40, v19 + 1, 1);
        v25 = v52;
      }

      *(v25 + 16) = v19 + 1;
      OUTLINED_FUNCTION_37_8();
      v39();
      v26 += v42;
      --v24;
    }

    while (v24);
  }

  else
  {
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC3934(uint64_t a1, uint64_t a2)
{
  switch(*a2)
  {
    case 1:
      v28 = 0;
      goto LABEL_26;
    case 2:
      v28 = 0;
      goto LABEL_26;
    case 3:
      v28 = 0;
      goto LABEL_26;
    case 4:
      v8 = a1 % 360000 % 6000;
      v9 = v8 / 100;
      v10 = v8 % 100;
      goto LABEL_16;
    case 5:
      v17 = a1 % 3600000 % 60000;
      v9 = v17 / 1000;
      v10 = v17 % 1000;
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F90, &qword_227D63250);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_227D59C40;
      v19 = OUTLINED_FUNCTION_60_9(v18, MEMORY[0x277D83B88]);
      v19[17] = v20;
      v19[18] = v21;
      v19[14] = v9;
      v19[22] = v20;
      v19[23] = v21;
      v19[19] = v10;
      goto LABEL_19;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F90, &qword_227D63250);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_227D4F750;
      OUTLINED_FUNCTION_60_9(v22, MEMORY[0x277D83B88]);
      OUTLINED_FUNCTION_133_4();
      goto LABEL_19;
    case 7:
      v11 = a1 % 3600 % 60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9F90, &qword_227D63250);
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D83B88];
      *(v12 + 16) = xmmword_227D50C20;
      v14 = OUTLINED_FUNCTION_60_9(v12, v13);
      v14[17] = v15;
      v14[18] = v16;
      v14[14] = v11;
      OUTLINED_FUNCTION_133_4();
LABEL_19:
      v4 = sub_227D4CFC8();
      goto LABEL_20;
    case 8:
      OUTLINED_FUNCTION_30_8();
      v5 = 41922;
      v6 = 0xA200000000000000;
      goto LABEL_25;
    case 9:
      v7 = 41922;
      goto LABEL_22;
    case 0xA:
      OUTLINED_FUNCTION_30_8();
      v5 = 36;
      v6 = 0xE100000000000000;
      goto LABEL_25;
    case 0xB:
      v7 = 36;
      goto LABEL_22;
    case 0xC:
      OUTLINED_FUNCTION_30_8();
      v5 = 11305698;
      v6 = 0xA300000000000000;
      goto LABEL_25;
    case 0xD:
      v7 = 11305698;
      goto LABEL_22;
    case 0xE:
      OUTLINED_FUNCTION_30_8();
      v5 = 541476931;
      v6 = 0xE400000000000000;
      goto LABEL_25;
    case 0xF:
      v7 = 541476931;
      goto LABEL_22;
    case 0x10:
      OUTLINED_FUNCTION_30_8();
      v5 = 2126443;
      v6 = 0xE300000000000000;
LABEL_25:
      MEMORY[0x22AAA5DA0](v5, v6);
LABEL_26:
      sub_227D4D318();
      break;
    case 0x11:
      v7 = 2126443;
      goto LABEL_22;
    case 0x12:
      v7 = 42434;
LABEL_22:
      v28 = v7;
      v23 = sub_227D4DA38();
      MEMORY[0x22AAA5DA0](v23);

      break;
    default:
      v4 = sub_227D4DA38();
LABEL_20:
      v28 = v4;
      break;
  }

  if (a1 == 1)
  {
    v24 = *(a2 + 32);
    if (!v24)
    {
      return v28;
    }

    v25 = *(a2 + 24);
  }

  else
  {
    v24 = *(a2 + 16);
    if (!v24)
    {
      return v28;
    }

    v25 = *(a2 + 8);
  }

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    MEMORY[0x22AAA5DA0]();
    MEMORY[0x22AAA5DA0](32, 0xE100000000000000);
  }

  return v28;
}

uint64_t sub_227CC3D48(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  v3 = (*(v2 + 528))(v9);
  v5 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v5;
  sub_227CC8058(MEMORY[0x277D84F90], a1, isUniquelyReferenced_nonNull_native);
  *v5 = v8;
  return v3(v9, 0);
}

void sub_227CC3DFC()
{
  OUTLINED_FUNCTION_450_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_227D490B8();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  if (sub_227D490A8())
  {
    v11 = sub_227D49188();
    OUTLINED_FUNCTION_62_0();
    (*(v12 + 16))(v3, v1, v11);
    OUTLINED_FUNCTION_99();
  }

  else
  {
    if (sub_227D490A8())
    {
      sub_227D49158();
      if (!v13)
      {
        sub_227D49148();
        (*(v6 + 104))(v10, *MEMORY[0x277CC91D8], v4);
        sub_227BA2B5C();
        sub_227D49178();
        (*(v6 + 8))(v10, v4);

        sub_227D49188();
        OUTLINED_FUNCTION_110_5();
        OUTLINED_FUNCTION_99();
        __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
        OUTLINED_FUNCTION_451_0();
        return;
      }
    }

    sub_227D49188();
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_71_0();
  }

  OUTLINED_FUNCTION_451_0();

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void sub_227CC3FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_117_5();
  v10 = OUTLINED_FUNCTION_173();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_5(v12);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v15 = (v25 - v14);
  OUTLINED_FUNCTION_33_9();
  v17 = (*(v16 + 416))();
  OUTLINED_FUNCTION_87_8();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  OUTLINED_FUNCTION_109_6(v18);
  if (v17 == 1)
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_0_52();
    sub_227CB8EB0(v19, v20);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_106_6();
    sub_227D4D668();

    v26 = 0x656461656C206F4ELL;
    v27 = 0xEF206472616F6272;
    MEMORY[0x22AAA5DA0](v25[0], v25[1]);
    OUTLINED_FUNCTION_14_15();
    v21 = sub_227D4A6A8();
    if (a10)
    {

      v22 = OUTLINED_FUNCTION_200();
      MEMORY[0x22AAA6E40](v22);
    }

    else
    {
      MEMORY[0x22AAA5DA0](v21);

      v23 = v27;
      *v15 = v26;
      v15[1] = v23;
      OUTLINED_FUNCTION_14_0();
      (*(v24 + 104))(v15);
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_352();
}

void sub_227CC41F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_117_5();
  v10 = OUTLINED_FUNCTION_173();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_5(v12);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  v15 = (v25 - v14);
  OUTLINED_FUNCTION_33_9();
  v17 = (*(v16 + 536))();
  OUTLINED_FUNCTION_87_8();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  OUTLINED_FUNCTION_109_6(v18);
  if (v17 == 1)
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_0_52();
    sub_227CB8EB0(v19, v20);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_106_6();
    sub_227D4D668();

    v26 = 0xD000000000000013;
    v27 = 0x8000000227D78910;
    MEMORY[0x22AAA5DA0](v25[0], v25[1]);
    OUTLINED_FUNCTION_14_15();
    v21 = sub_227D4A6A8();
    if (a10)
    {

      v22 = OUTLINED_FUNCTION_200();
      MEMORY[0x22AAA6E40](v22);
    }

    else
    {
      MEMORY[0x22AAA5DA0](v21);

      v23 = v27;
      *v15 = v26;
      v15[1] = v23;
      OUTLINED_FUNCTION_14_0();
      (*(v24 + 104))(v15);
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CC43F8()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore8GameData_game;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_62_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC16GameServicesCore8GameData_directoryURL;
  sub_227D49188();
  OUTLINED_FUNCTION_62_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC16GameServicesCore8GameData_timestamp;
  sub_227D492A8();
  OUTLINED_FUNCTION_62_0();
  (*(v6 + 8))(v0 + v5);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227CC45B4()
{
  sub_227CC43F8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227CC45E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  OUTLINED_FUNCTION_62_0();
  v0 = OUTLINED_FUNCTION_58();

  return v1(v0);
}

uint64_t sub_227CC4648()
{
  type metadata accessor for AchievementPlayerKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_62_0();
  v0 = OUTLINED_FUNCTION_85_8();

  return v1(v0);
}

uint64_t sub_227CC46C4()
{
  OUTLINED_FUNCTION_37();
  if (sub_227CC1684())
  {
    type metadata accessor for AchievementPlayerKey(0);
    v0 = sub_227CC1684();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void sub_227CC4740()
{
  OUTLINED_FUNCTION_450_0();
  v0 = OUTLINED_FUNCTION_323();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_42_7();
  sub_227CCB9FC(v2, &qword_27D7E6D70);
  OUTLINED_FUNCTION_85_8();
  sub_227D4CEA8();
  type metadata accessor for AchievementPlayerKey(0);
  v3 = OUTLINED_FUNCTION_323();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  sub_227CCB9FC(&qword_27D7E6868, &qword_27D7E67C0);
  sub_227D4CEA8();
  OUTLINED_FUNCTION_451_0();
}

uint64_t sub_227CC4808()
{
  sub_227D4DB58();
  v0 = OUTLINED_FUNCTION_9_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v2 = sub_227CCB9FC(&qword_27D7E9F40, &qword_27D7E6D70);
  OUTLINED_FUNCTION_187_2(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  sub_227D4CEA8();
  type metadata accessor for AchievementPlayerKey(0);
  v10 = OUTLINED_FUNCTION_9_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v12 = sub_227CCB9FC(&qword_27D7E6868, &qword_27D7E67C0);
  OUTLINED_FUNCTION_187_2(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227CC48FC(uint64_t a1)
{
  sub_227D4DB58();
  v1 = OUTLINED_FUNCTION_323();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_42_7();
  v4 = sub_227CCB9FC(v3, &qword_27D7E6D70);
  OUTLINED_FUNCTION_187_2(v4, v5, v6, v7, v8, v9, v10, v11, v23, v25);
  sub_227D4CEA8();
  v12 = OUTLINED_FUNCTION_9_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v14 = sub_227CCB9FC(&qword_27D7E6868, &qword_27D7E67C0);
  OUTLINED_FUNCTION_187_2(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

void sub_227CC4A1C()
{
  OUTLINED_FUNCTION_450_0();
  v1 = v0;
  v3 = v2;
  v5 = OUTLINED_FUNCTION_356(v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_31_6();
  sub_227CCB9FC(v1, v3);
  OUTLINED_FUNCTION_173();
  sub_227D4CE98();
  OUTLINED_FUNCTION_78_0();
  sub_227CC5AC4();
  OUTLINED_FUNCTION_451_0();
}

uint64_t sub_227CC4AAC()
{
  v1 = v0;
  sub_227CC4A1C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA018, &qword_227D63430);
  sub_227D4D7C8();
  v5 = *(v9 + 48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  (*(*(v6 - 8) + 8))(v5 + *(*(v6 - 8) + 72) * v4, v6);
  v7 = *(*(v9 + 56) + 8 * v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
  sub_227CCB9FC(&qword_27D7E9FF8, &qword_27D7E83F8);
  sub_227D4D7E8();
  *v1 = v9;
  return v7;
}

uint64_t sub_227CC4C28()
{
  OUTLINED_FUNCTION_602();
  v2 = v1;
  v5 = sub_227B2664C(v3, v4);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v0;
    v8 = OUTLINED_FUNCTION_200();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    sub_227D4D7C8();

    v10 = *(v23 + 56);
    v11 = OUTLINED_FUNCTION_236();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_62_0();
    (*(v14 + 32))(v2, v10 + *(v14 + 72) * v7, v13);
    OUTLINED_FUNCTION_168_1();
    sub_227D4D7E8();
    *v0 = v23;
    OUTLINED_FUNCTION_99();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_236();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_71_0();
  }

  OUTLINED_FUNCTION_449();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_227CC4D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227CB67B8(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FE0, &qword_227D633F8);
    sub_227D4D7C8();
    v7 = *(v15 + 48);
    v8 = type metadata accessor for AchievementPlayerKey(0);
    sub_227CCB950(v7 + *(*(v8 - 8) + 72) * v6, type metadata accessor for AchievementPlayerKey);
    v9 = *(v15 + 56);
    v10 = sub_227D4A298();
    (*(*(v10 - 8) + 32))(a2, v9 + *(*(v10 - 8) + 72) * v6, v10);
    sub_227CB8EB0(&qword_27D7E9F30, type metadata accessor for AchievementPlayerKey);
    sub_227D4D7E8();
    *v2 = v15;
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_227D4A298();
    v11 = a2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

void sub_227CC4F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  v7 = OUTLINED_FUNCTION_397(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_336();
  v38 = v5;
  v9 = sub_227D4D828();
  if (!*(v6 + 16))
  {
LABEL_28:

LABEL_29:
    *v4 = v9;
    return;
  }

  v37 = v6;
  v10 = 0;
  v11 = (v6 + 64);
  OUTLINED_FUNCTION_18_15();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v17 = v9 + 64;
  if ((v13 & v12) == 0)
  {
LABEL_4:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v10 >= v16)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_9;
      }
    }

    if ((v38 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_29;
    }

    v36 = 1 << *(v6 + 32);
    v4 = v3;
    if (v36 >= 64)
    {
      sub_227B26E40(0, (v36 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v6 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_9:
    v21 = v18 | (v10 << 6);
    v22 = (*(v6 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v6 + 56) + 8 * v21);
    if ((v38 & 1) == 0)
    {
      sub_227D4CE58();
      sub_227D4CE58();
    }

    sub_227D4DB58();
    sub_227D4D048();
    v26 = sub_227D4DB98();
    v27 = -1 << *(v9 + 32);
    v28 = v26 & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v17 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v9 + 48) + 16 * v30);
    *v35 = v23;
    v35[1] = v24;
    *(*(v9 + 56) + 8 * v30) = v25;
    ++*(v9 + 16);
    v6 = v37;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v17 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_227CC5184(_BYTE *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = a1[32];
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v9 = sub_227CC65E8(v17, v12, v9, a2, a4);
      MEMORY[0x22AAA7130](v17, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v13);
  sub_227B26E40(0, v12, v18 - ((8 * v12 + 15) & 0x3FFFFFFFFFFFFFF0));

  v14 = OUTLINED_FUNCTION_82();
  v15 = a3(v14);
  if (v7)
  {
    swift_willThrow();
  }

  else
  {
    v9 = v15;
  }

LABEL_6:

  return v9;
}

void *sub_227CC535C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA010, &qword_227D64430);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_227CC5464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = OUTLINED_FUNCTION_397(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = a5(0);
  OUTLINED_FUNCTION_10_0(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (v12)
  {
    if ((result - v14) != 0x8000000000000000 || v12 != -1)
    {
      v15[2] = a1;
      v15[3] = 2 * ((result - v14) / v12);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_227CC56A4()
{
  OUTLINED_FUNCTION_450_0();
  OUTLINED_FUNCTION_189_0();
  if (v4)
  {
    OUTLINED_FUNCTION_154();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_119_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = OUTLINED_FUNCTION_146_6(v2, v3, v4, v5, v6, v7);
    v14 = OUTLINED_FUNCTION_143_2(v13);
    v15 = _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_92_3(v15 - 32);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v14 != v0 || &v0[24 * v11 + 32] <= v14 + 32)
    {
      v17 = OUTLINED_FUNCTION_173();
      memmove(v17, v18, v19);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_87_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_173();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_451_0();
}

void sub_227CC5788()
{
  OUTLINED_FUNCTION_11();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_154();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_119_6();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_146_6(v0, v1, v2, v3, v4, v5);
  v17 = v9(0);
  OUTLINED_FUNCTION_10_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_92_3(v23 - v21);
LABEL_18:
  v9(0);
  OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_19();
  if (v11)
  {
    sub_227CC59F8(v10 + v25, v15, v22 + v25, v7);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC590C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_227CC59F8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_37();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_62_0(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_87_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_227CC5AC4()
{
  OUTLINED_FUNCTION_11();
  v21 = v1;
  v22 = v2;
  v4 = v3;
  v18 = v5;
  v20 = v6;
  v7 = OUTLINED_FUNCTION_397(v5, v3, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  v23 = v0 + 64;
  v19 = v0;
  v15 = ~(-1 << *(v0 + 32));
  for (i = v4 & v15; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v11 + 16))(v14, *(v19 + 48) + *(v11 + 72) * i, v9);
    OUTLINED_FUNCTION_38_12();
    sub_227CCB9FC(v22, v20);
    v17 = sub_227D4CF38();
    (*(v11 + 8))(v14, v9);
    if (v17)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CC5C3C(unint64_t *a1, uint64_t a2, void *a3, void (***a4)(uint64_t))
{
  v67 = a4;
  v48 = a2;
  v49 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v47 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA0A8, &qword_227D634D0);
  v7 = MEMORY[0x28223BE20](v71);
  v63 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v47 - v9;
  v10 = sub_227D4A298();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AchievementPlayerKey(0);
  v59 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v18 = 0;
  v66 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v51 = (v22 + 63) >> 6;
  v52 = v20;
  v56 = (v5 + 16);
  v57 = v11 + 16;
  v61 = v11;
  v62 = v10;
  v54 = (v11 + 8);
  v55 = (v5 + 8);
  v60 = v13;
  v58 = v17;
  while (v24)
  {
    v69 = (v24 - 1) & v24;
    v25 = __clz(__rbit64(v24)) | (v18 << 6);
    v26 = v67;
LABEL_11:
    v29 = v66;
    sub_227CCB9A8();
    v30 = v29[7];
    v31 = *(v61 + 72);
    v53 = v25;
    v32 = *(v61 + 16);
    v32(v13, v30 + v31 * v25, v10);
    v33 = v70;
    sub_227CCB9A8();
    v32(&v33[*(v71 + 48)], v13, v10);
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    (*v26)[34](isCurrentExecutor);
    v35 = v70;
    v36 = v63;
    sub_227CCBAFC();
    v68 = *(v71 + 48);
    v37 = v64;
    v38 = v65;
    (*v56)(v64, v36, v65);
    v39 = sub_227CCB950(v36, type metadata accessor for AchievementPlayerKey);
    MEMORY[0x28223BE20](v39);
    *(&v47 - 2) = v37;
    v40 = v72;
    sub_227CC8728();
    v42 = v41;
    v72 = v40;

    sub_227CCBB4C(v35, &qword_27D7EA0A8);
    (*v55)(v37, v38);
    v43 = *v54;
    v44 = v36 + v68;
    v10 = v62;
    (*v54)(v44, v62);
    v13 = v60;
    v43(v60, v10);
    result = sub_227CCB950(v58, type metadata accessor for AchievementPlayerKey);
    v24 = v69;
    if (v42)
    {
      *(v49 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      if (__OFADD__(v50++, 1))
      {
        __break(1u);
LABEL_17:
        v46 = sub_227CC668C(v49, v48, v50, v66);

        return v46;
      }
    }
  }

  v27 = v18;
  v26 = v67;
  while (1)
  {
    v18 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v18 >= v51)
    {
      goto LABEL_17;
    }

    v28 = v52[v18];
    ++v27;
    if (v28)
    {
      v69 = (v28 - 1) & v28;
      v25 = __clz(__rbit64(v28)) | (v18 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227CC622C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v48 = a4;
  v37 = a2;
  v38 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA060, &qword_227D63478);
  MEMORY[0x28223BE20](v46);
  v50 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v39 = 0;
  v11 = 0;
  v47 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v44 = v8;
  v45 = result;
  v41 = (v8 + 8);
  v42 = v8 + 16;
  v43 = v10;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = v47;
    v24 = *(v44 + 16);
    v24(v10, v47[6] + *(v44 + 72) * v22, v6);
    v25 = v23[7];
    v40 = v22;
    v26 = *(v25 + 8 * v22);
    v27 = v50;
    v24(v50, v10, v6);
    *&v27[*(v46 + 48)] = v26;
    swift_bridgeObjectRetain_n();
    v28 = v48;
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    v30 = (*(*v28 + 416))(isCurrentExecutor);
    MEMORY[0x28223BE20](v30);
    v31 = v50;
    *(&v37 - 2) = v50;
    v32 = v51;
    sub_227CC8728();
    v34 = v33;
    v51 = v32;

    sub_227CCBB4C(v31, &qword_27D7EA060);

    v10 = v43;
    v6 = v45;
    result = (*v41)(v43, v45);
    v17 = v49;
    if (v34)
    {
      *(v38 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
LABEL_17:
        v36 = sub_227CC6BC8(v38, v37, v39, v47);

        return v36;
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_17;
    }

    v21 = v13[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v49 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_227CC65E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v6 = OUTLINED_FUNCTION_82();
    v7 = a5(v6);

    return v7;
  }

  return result;
}

uint64_t sub_227CC668C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v55 = sub_227D4A298();
  v8 = *(v55 - 8);
  v9 = MEMORY[0x28223BE20](v55);
  v54 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v38 - v11;
  v12 = type metadata accessor for AchievementPlayerKey(0);
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v53 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v38 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA0B0, &qword_227D634D8);
  result = sub_227D4D838();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v42 = v8 + 16;
  v52 = v8 + 32;
  v20 = result + 64;
  v43 = a1;
  v41 = a2;
  v40 = a4;
  v39 = v8;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v51 = *(v45 + 72);
    sub_227CCB9A8();
    v25 = a4[7];
    v50 = *(v8 + 72);
    v26 = v25 + v50 * v24;
    v27 = v47;
    v28 = v55;
    (*(v8 + 16))(v47, v26, v55);
    sub_227CCBBA0();
    v49 = *(v8 + 32);
    v49(v54, v27, v28);
    sub_227D4DB58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
    sub_227CCB9FC(&qword_27D7E9F40, &qword_27D7E6D70);
    sub_227D4CEA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
    sub_227CCB9FC(&qword_27D7E6868, &qword_27D7E67C0);
    sub_227D4CEA8();
    result = sub_227D4DB98();
    v29 = -1 << *(v17 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v43;
      a2 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v20 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v43;
    a2 = v41;
LABEL_25:
    *(v20 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    sub_227CCBBA0();
    result = (v49)(*(v17 + 56) + v32 * v50, v54, v55);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v40;
    v8 = v39;
    v18 = v48;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227CC6BC8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v7 = *(v46 - 8);
  v8 = MEMORY[0x28223BE20](v46);
  v45 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v33 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA068, &qword_227D63480);
  result = sub_227D4D838();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v38;
  }

  v14 = 0;
  v35 = v7 + 16;
  v36 = result;
  v44 = v7 + 32;
  v15 = result + 64;
  v34 = a4;
  v37 = v7;
  v16 = v46;
  while (v13)
  {
    v17 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_16:
    v20 = v17 | (v14 << 6);
    v21 = a4[6];
    v43 = *(v7 + 72);
    v22 = v39;
    (*(v7 + 16))(v39, v21 + v43 * v20, v16);
    v23 = *(a4[7] + 8 * v20);
    v41 = *(v7 + 32);
    v41(v45, v22, v16);
    v12 = v36;
    sub_227CCB9FC(&qword_27D7E9FB8, &qword_27D7E6938);
    v42 = v23;
    sub_227D4CE58();
    result = sub_227D4CE98();
    v24 = -1 << *(v12 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v7 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v7 = v37;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v41)(*(v12 + 48) + v27 * v43, v45, v46);
    *(*(v12 + 56) + 8 * v27) = v42;
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v34;
    v13 = v40;
    if (!a3)
    {
      return v12;
    }
  }

  v18 = v14;
  while (1)
  {
    v14 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v19 = v38[v14];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227CC6F68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *v3;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA0C0, &qword_227D634E8);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_227CC4A1C();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(*(v18 + 56) + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_227CC8574(v14, v10, a1, v18);
  }
}

uint64_t sub_227CC7180(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *v3;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA070, &qword_227D63488);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_227CC4A1C();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(*(v18 + 56) + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_227CC8574(v14, v10, a1, v18);
  }
}

uint64_t sub_227CC7398(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *v3;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA078, &qword_227D63490);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_227CC4A1C();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(*(v18 + 56) + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_227CC8574(v14, v10, a1, v18);
  }
}

uint64_t sub_227CC75B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_602();
  v43 = v14;
  v44 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = OUTLINED_FUNCTION_356(v24, v22);
  sub_227B2664C(v25, v26);
  OUTLINED_FUNCTION_5_19();
  if (__OFADD__(v28, v29))
  {
    __break(1u);
LABEL_12:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v30 = v27;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v17);
  if (OUTLINED_FUNCTION_144_5(v31))
  {
    sub_227B2664C(v23, v21);
    if ((v30 & 1) != (v32 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v30)
  {
    v43(0);
    OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_449();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, v43, v44, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    sub_227CC8364();
    OUTLINED_FUNCTION_449();

    return sub_227D4CE58();
  }
}

void sub_227CC7700(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v6 = v5;
  v24 = a1;
  v25 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = *v5;
  sub_227CC4A1C();
  if (__OFADD__(v13[2], (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA080, &unk_227D63498);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_227CC4A1C();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_10:
    sub_227D4DAE8();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v6;
  if (v17)
  {
    v21 = v20[7] + 24 * v16;
    v22 = v25;
    *v21 = v24;
    *(v21 + 8) = v22;
    *(v21 + 16) = a3 & 1;
    *(v21 + 17) = BYTE1(a3) & 1;
    *(v21 + 18) = BYTE2(a3) & 1;
  }

  else
  {
    (*(v10 + 16))(v12, a4, v9);
    sub_227CC8270(v16, v12, v24, v25, a3 & 0x10101, v20);
  }
}

uint64_t sub_227CC7910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_602();
  v43 = v15;
  v44 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = OUTLINED_FUNCTION_356(v14, v22);
  sub_227B2664C(v23, v24);
  OUTLINED_FUNCTION_5_19();
  if (__OFADD__(v26, v27))
  {
    __break(1u);
LABEL_12:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v28 = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v19);
  if (OUTLINED_FUNCTION_144_5(v29))
  {
    v30 = OUTLINED_FUNCTION_236();
    sub_227B2664C(v30, v31);
    if ((v28 & 1) != (v32 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v43);
    OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_449();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, v43, v44, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    sub_227CC83F4();
    OUTLINED_FUNCTION_449();

    return sub_227D4CE58();
  }
}

uint64_t sub_227CC7A58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *v3;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA018, &qword_227D63430);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_227CC4A1C();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(*(v18 + 56) + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_227CC8574(v14, v10, a1, v18);
  }
}

uint64_t sub_227CC7C70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *v3;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA028, &qword_227D63438);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_227CC4A1C();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(*(v18 + 56) + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_227CC8574(v14, v10, a1, v18);
  }
}

uint64_t sub_227CC7E88(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for AchievementPlayerKey(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = sub_227CB67B8(a2);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FE0, &qword_227D633F8);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_227CB67B8(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v4;
  if (v14)
  {
    v18 = *(v17 + 56);
    v19 = sub_227D4A298();
    v20 = *(v19 - 8);
    v21 = *(v20 + 40);
    v22 = v19;
    v23 = v18 + *(v20 + 72) * v13;

    return v21(v23, a1, v22);
  }

  else
  {
    sub_227CCB9A8();
    return sub_227CC8484(v13, v9, a1, v17);
  }
}

uint64_t sub_227CC8058(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *v3;
  sub_227CC4A1C();
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FD0, &qword_227D633E8);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_227CC4A1C();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(*(v18 + 56) + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_227CC8574(v14, v10, a1, v18);
  }
}

uint64_t sub_227CC8270(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5 & 1;
  *(v15 + 17) = BYTE1(a5) & 1;
  *(v15 + 18) = BYTE2(a5) & 1;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_227CC8364()
{
  OUTLINED_FUNCTION_118_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_18(v5 + 8 * (v3 >> 6));
  OUTLINED_FUNCTION_140_2(v6, v7, v8, v9, v10);
  v11(0);
  OUTLINED_FUNCTION_6_15();
  result = (*(v12 + 32))(v2 + *(v12 + 72) * v4, v1);
  v14 = *(v0 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v16;
  }

  return result;
}

uint64_t sub_227CC83F4()
{
  OUTLINED_FUNCTION_118_4();
  v4 = v3;
  OUTLINED_FUNCTION_13_18(v5 + 8 * (v3 >> 6));
  OUTLINED_FUNCTION_140_2(v6, v7, v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_6_15();
  result = (*(v13 + 32))(v2 + *(v13 + 72) * v4, v1);
  v15 = *(v0 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v17;
  }

  return result;
}

uint64_t sub_227CC8484(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  type metadata accessor for AchievementPlayerKey(0);
  sub_227CCBBA0();
  v7 = *(a4 + 56);
  v8 = sub_227D4A298();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = *(a4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }

  return result;
}