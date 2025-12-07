uint64_t sub_26602DAD0@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058390, &qword_26603C300);
  OUTLINED_FUNCTION_16(v2);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_26_0();
  v96 = v4;
  OUTLINED_FUNCTION_37_1();
  v98 = sub_2660392D4();
  OUTLINED_FUNCTION_2_0();
  v95 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23_0();
  v99 = v8 - v7;
  OUTLINED_FUNCTION_37_1();
  v93 = sub_266039304();
  OUTLINED_FUNCTION_2_0();
  v92 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_0();
  v94 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058620, &qword_26603C770);
  OUTLINED_FUNCTION_16(v13);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_0();
  v100 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058708, &unk_26603CC38);
  OUTLINED_FUNCTION_16(v16);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_0();
  v103 = v18;
  OUTLINED_FUNCTION_37_1();
  v104 = sub_2660390F4();
  OUTLINED_FUNCTION_2_0();
  v101 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_2();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v86 - v25;
  v27 = sub_2660390D4();
  OUTLINED_FUNCTION_2_0();
  v102 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_23_0();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
  OUTLINED_FUNCTION_2_0();
  v35 = v34;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v36);
  v38 = &v86 - v37;
  v39 = *v1;
  *&v110 = *v1;
  v40 = v111;
  result = sub_26602CF90();
  if (v40)
  {
    return result;
  }

  v89 = v32;
  v90 = v27;
  v88 = v39;
  v86 = v23;
  v87 = v26;
  v42 = v104;
  v91 = v33;
  v111 = v35;
  *&v110 = sub_2660395D4();
  *(&v110 + 1) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();

  v44 = *(&v108 + 1);
  v45 = v108;
  v110 = v108;
  v46 = v89;
  sub_2660390C4();
  sub_266037790();
  v47 = sub_266039A44();
  v49 = v48;
  (*(v102 + 8))(v46, v90);
  if (v49)
  {

    v45 = v47;
    v44 = v49;
  }

  *&v110 = 0x3A746361746E6F63;
  *(&v110 + 1) = 0xEA00000000002F2FLL;
  MEMORY[0x266776E20](v45, v44);
  v50 = v103;
  sub_2660390E4();

  if (__swift_getEnumTagSinglePayload(v50, 1, v42) == 1)
  {
    sub_2660078E8(v50, &qword_280058708, &unk_26603CC38);
    *&v110 = 0;
    *(&v110 + 1) = 0xE000000000000000;
    sub_266039B04();

    *&v110 = 0xD00000000000001ALL;
    *(&v110 + 1) = 0x800000026603B220;
    MEMORY[0x266776E20](v45, v44);

    sub_266039224();
    OUTLINED_FUNCTION_0_3();
    sub_266037708(v51, v52);
    swift_allocError();
    OUTLINED_FUNCTION_49_1();
    sub_2660391E4();

    swift_willThrow();
    v53 = OUTLINED_FUNCTION_140();
    return v54(v53);
  }

  v55 = v101;
  v56 = v87;
  v57 = OUTLINED_FUNCTION_12_0();
  v58(v57);
  sub_266029CA8(0xD000000000000018, 0x800000026603B240, v88, &v110);
  sub_2660377E4();
  if (!v109)
  {
    sub_2660078E8(&v108, &unk_280057F50, &qword_26603B9C0);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_266039224();
    OUTLINED_FUNCTION_0_3();
    sub_266037708(v61, v62);
    OUTLINED_FUNCTION_21_1();
    swift_allocError();
    sub_266039214();
    swift_willThrow();
    sub_2660078E8(&v110, &unk_280057F50, &qword_26603B9C0);
    (*(v55 + 8))(v56, v42);
    v63 = OUTLINED_FUNCTION_140();
    return v64(v63);
  }

  v59 = v106[0];
  sub_266029CA8(0x656C646E6168, 0xE600000000000000, v88, &v108);
  sub_2660377E4();
  if (v107)
  {
    if (!swift_dynamicCast())
    {
      sub_266039224();
      OUTLINED_FUNCTION_0_3();
      sub_266037708(v67, v68);
      OUTLINED_FUNCTION_21_1();
      swift_allocError();
      sub_266039214();
      swift_willThrow();
      OUTLINED_FUNCTION_63();
      sub_2660078E8(v69, v70, v71);
      OUTLINED_FUNCTION_63();
      sub_2660078E8(v72, v73, v74);
      (*(v55 + 8))(v56, v42);
      return (*(v111 + 8))(v38);
    }

    v60 = v105;
  }

  else
  {
    sub_2660078E8(v106, &unk_280057F50, &qword_26603B9C0);
    v60 = 0;
  }

  sub_2660395B4();
  v104 = 0;
  v66 = v98;
  v65 = v99;
  (*(v92 + 104))(v94, *MEMORY[0x277D0D078], v93);
  v75 = MEMORY[0x277D0D070];
  if (!v59)
  {
    v75 = MEMORY[0x277D0D068];
  }

  (*(v95 + 104))(v65, *v75, v66);
  v103 = v60;
  v76 = v101;
  (*(v101 + 16))(v86, v87, v42);
  v77 = v111;
  v78 = v96;
  v79 = v91;
  (*(v111 + 16))(v96, v38, v91);
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v79);
  sub_2660392E4();
  OUTLINED_FUNCTION_63();
  sub_2660078E8(v80, v81, v82);
  OUTLINED_FUNCTION_63();
  sub_2660078E8(v83, v84, v85);
  (*(v76 + 8))(v87, v42);
  return (*(v77 + 8))(v38, v79);
}

uint64_t ShimFriendService.denyRequests(player:from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26602E678()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26602E778()
{
  OUTLINED_FUNCTION_1();
  v0[16] = v1;
  v0[17] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v0[18] = v3;
  OUTLINED_FUNCTION_3_0(v3);
  v0[19] = v4;
  v0[20] = OUTLINED_FUNCTION_28_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
  v0[21] = v5;
  OUTLINED_FUNCTION_3_0(v5);
  v0[22] = v6;
  v0[23] = OUTLINED_FUNCTION_28_0();
  v7 = sub_266039264();
  v0[24] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v0[25] = v8;
  v0[26] = OUTLINED_FUNCTION_28_0();
  v9 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26602E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_80();
  v13 = *(*(v12 + 128) + 16);
  v14 = *MEMORY[0x277D0CEC0];
  *(v12 + 280) = *MEMORY[0x277D0CEC0];
  *(v12 + 284) = *MEMORY[0x277D0CEB8];
  *(v12 + 216) = v13;
  *(v12 + 224) = 0;
  if (v13)
  {
    v15 = OUTLINED_FUNCTION_78();
    v16(v15);
    v17 = OUTLINED_FUNCTION_12_0();
    v19 = v18(v17);
    if (v19 == v14)
    {
      v20 = *(v12 + 136);
      v21 = OUTLINED_FUNCTION_87();
      v22(v21);
      v23 = OUTLINED_FUNCTION_49_1();
      v24(v23);
      sub_266005E54(v20, v12 + 56);
      OUTLINED_FUNCTION_48_1((v12 + 56));
      *(v12 + 96) = sub_2660395D4();
      *(v12 + 104) = v35;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
      OUTLINED_FUNCTION_131(v36);

      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_13_3();
      v60 = v50 + *v50;
      v51 = swift_task_alloc();
      *(v12 + 240) = v51;
      *v51 = v12;
      OUTLINED_FUNCTION_17_0(v51);
      OUTLINED_FUNCTION_80_0();

      return v56(v52, v53, v54, v55, v56, v57, v58, v59, a9, v60, a11, a12);
    }

    if (v19 == *(v12 + 284))
    {
      v25 = *(v12 + 136);
      v26 = OUTLINED_FUNCTION_88_0();
      v27(v26);
      v28 = OUTLINED_FUNCTION_49_1();
      v29(v28);
      sub_266005E54(v25, v12 + 16);
      OUTLINED_FUNCTION_48_1((v12 + 16));
      sub_266039574();
      *(v12 + 256) = v30;
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_13_3();
      v60 = v46 + *v46;
      v47 = swift_task_alloc();
      v48 = OUTLINED_FUNCTION_157(v47);
      *v48 = v49;
      OUTLINED_FUNCTION_15_2(v48);
      OUTLINED_FUNCTION_80_0();

      return v56(v52, v53, v54, v55, v56, v57, v58, v59, a9, v60, a11, a12);
    }

    sub_266039224();
    OUTLINED_FUNCTION_0_3();
    sub_266037708(v31, v32);
    OUTLINED_FUNCTION_21_1();
    swift_allocError();
    sub_266039204();
    swift_willThrow();
    v33 = OUTLINED_FUNCTION_88_0();
    v34(v33);
    OUTLINED_FUNCTION_100_0();

    OUTLINED_FUNCTION_11();
  }

  else
  {
    OUTLINED_FUNCTION_100_0();

    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_80_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_26602ECE8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 248) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_26602EDF0()
{
  OUTLINED_FUNCTION_86();
  v1 = OUTLINED_FUNCTION_31_3();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v3 = *(v0 + 248);
  OUTLINED_FUNCTION_148();
  if (v4)
  {
    OUTLINED_FUNCTION_100_0();

    OUTLINED_FUNCTION_7_3();
    goto LABEL_14;
  }

  v5 = *(v0 + 280);
  v6 = OUTLINED_FUNCTION_8_3();
  v7(v6);
  v8 = OUTLINED_FUNCTION_12_0();
  if (v9(v8) == v5)
  {
    v10 = *(v0 + 136);
    v11 = OUTLINED_FUNCTION_87();
    v12(v11);
    v13 = OUTLINED_FUNCTION_49_1();
    v14(v13);
    sub_266005E54(v10, v0 + 56);
    OUTLINED_FUNCTION_48_1((v0 + 56));
    v15 = sub_2660395D4();
    if (!v3)
    {
      *(v0 + 96) = v15;
      *(v0 + 104) = v16;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
      OUTLINED_FUNCTION_131(v31);

      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_3_1();
      v40 = swift_task_alloc();
      *(v0 + 240) = v40;
      *v40 = v0;
      OUTLINED_FUNCTION_17_0(v40);
      OUTLINED_FUNCTION_54();

      __asm { BRAA            X4, X16 }
    }

    v17 = OUTLINED_FUNCTION_31_3();
    v18(v17);
    v32 = (v0 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_153();
    if (!v4)
    {
      sub_266039224();
      OUTLINED_FUNCTION_0_3();
      sub_266037708(v27, v28);
      OUTLINED_FUNCTION_21_1();
      swift_allocError();
      sub_266039204();
      swift_willThrow();
      v29 = OUTLINED_FUNCTION_88_0();
      v30(v29);
LABEL_13:
      OUTLINED_FUNCTION_100_0();

      OUTLINED_FUNCTION_11();
LABEL_14:
      OUTLINED_FUNCTION_54();

      __asm { BRAA            X1, X16 }
    }

    v19 = *(v0 + 136);
    v20 = OUTLINED_FUNCTION_88_0();
    v21(v20);
    v22 = OUTLINED_FUNCTION_49_1();
    v23(v22);
    sub_266005E54(v19, v0 + 16);
    OUTLINED_FUNCTION_48_1((v0 + 16));
    sub_266039574();
    *(v0 + 256) = v24;
    if (!v3)
    {
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_3_1();
      v35 = swift_task_alloc();
      v36 = OUTLINED_FUNCTION_157(v35);
      *v36 = v37;
      OUTLINED_FUNCTION_15_2(v36);
      OUTLINED_FUNCTION_54();

      __asm { BRAA            X4, X16 }
    }

    v25 = OUTLINED_FUNCTION_53_0();
    v26(v25);
    v32 = (v0 + 16);
  }

  __swift_destroy_boxed_opaque_existential_0(v32);
  goto LABEL_13;
}

uint64_t sub_26602F1FC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 272) = v0;

  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_26602F314()
{
  OUTLINED_FUNCTION_86();
  v1 = OUTLINED_FUNCTION_53_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = *(v0 + 272);
  OUTLINED_FUNCTION_148();
  if (v4)
  {
    OUTLINED_FUNCTION_100_0();

    OUTLINED_FUNCTION_7_3();
    goto LABEL_14;
  }

  v5 = *(v0 + 280);
  v6 = OUTLINED_FUNCTION_8_3();
  v7(v6);
  v8 = OUTLINED_FUNCTION_12_0();
  if (v9(v8) == v5)
  {
    v10 = *(v0 + 136);
    v11 = OUTLINED_FUNCTION_87();
    v12(v11);
    v13 = OUTLINED_FUNCTION_49_1();
    v14(v13);
    sub_266005E54(v10, v0 + 56);
    OUTLINED_FUNCTION_48_1((v0 + 56));
    v15 = sub_2660395D4();
    if (!v3)
    {
      *(v0 + 96) = v15;
      *(v0 + 104) = v16;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
      OUTLINED_FUNCTION_131(v31);

      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_3_1();
      v40 = swift_task_alloc();
      *(v0 + 240) = v40;
      *v40 = v0;
      OUTLINED_FUNCTION_17_0(v40);
      OUTLINED_FUNCTION_54();

      __asm { BRAA            X4, X16 }
    }

    v17 = OUTLINED_FUNCTION_31_3();
    v18(v17);
    v32 = (v0 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_153();
    if (!v4)
    {
      sub_266039224();
      OUTLINED_FUNCTION_0_3();
      sub_266037708(v27, v28);
      OUTLINED_FUNCTION_21_1();
      swift_allocError();
      sub_266039204();
      swift_willThrow();
      v29 = OUTLINED_FUNCTION_88_0();
      v30(v29);
LABEL_13:
      OUTLINED_FUNCTION_100_0();

      OUTLINED_FUNCTION_11();
LABEL_14:
      OUTLINED_FUNCTION_54();

      __asm { BRAA            X1, X16 }
    }

    v19 = *(v0 + 136);
    v20 = OUTLINED_FUNCTION_88_0();
    v21(v20);
    v22 = OUTLINED_FUNCTION_49_1();
    v23(v22);
    sub_266005E54(v19, v0 + 16);
    OUTLINED_FUNCTION_48_1((v0 + 16));
    sub_266039574();
    *(v0 + 256) = v24;
    if (!v3)
    {
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_3_1();
      v35 = swift_task_alloc();
      v36 = OUTLINED_FUNCTION_157(v35);
      *v36 = v37;
      OUTLINED_FUNCTION_15_2(v36);
      OUTLINED_FUNCTION_54();

      __asm { BRAA            X4, X16 }
    }

    v25 = OUTLINED_FUNCTION_53_0();
    v26(v25);
    v32 = (v0 + 16);
  }

  __swift_destroy_boxed_opaque_existential_0(v32);
  goto LABEL_13;
}

uint64_t sub_26602F720()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_31_3();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_26602F7B4()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_53_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t ShimFriendService.sendRequests(player:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26602F980()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26602FA80()
{
  OUTLINED_FUNCTION_1();
  v0[7] = v1;
  v0[8] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v0[9] = v3;
  OUTLINED_FUNCTION_3_0(v3);
  v0[10] = v4;
  v0[11] = OUTLINED_FUNCTION_28_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
  v0[12] = v5;
  OUTLINED_FUNCTION_3_0(v5);
  v0[13] = v6;
  v0[14] = OUTLINED_FUNCTION_28_0();
  v7 = sub_266039264();
  v0[15] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v0[16] = v8;
  v0[17] = OUTLINED_FUNCTION_28_0();
  v9 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26602FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_80();
  v13 = *(*(v12 + 56) + 16);
  v14 = *MEMORY[0x277D0CEC0];
  v15 = *MEMORY[0x277D0CEB8];
  *(v12 + 232) = *MEMORY[0x277D0CEC0];
  *(v12 + 236) = v15;
  *(v12 + 144) = v13;
  *(v12 + 152) = 0;
  if (v13)
  {
    v16 = OUTLINED_FUNCTION_78();
    v17(v16);
    v18 = OUTLINED_FUNCTION_12_0();
    v20 = v19(v18);
    if (v20 == v14)
    {
      v21 = *(v12 + 64);
      v22 = OUTLINED_FUNCTION_87();
      v23(v22);
      v24 = OUTLINED_FUNCTION_15_0();
      v25(v24);
      sub_266005E54(v21, v12 + 16);
      OUTLINED_FUNCTION_127();
      sub_2660395D4();
      *(v12 + 160) = v26;
      OUTLINED_FUNCTION_13_3();
      v67 = v55 + *v55;
      v56 = swift_task_alloc();
      *(v12 + 168) = v56;
      *v56 = v12;
      OUTLINED_FUNCTION_19_2(v56);
      OUTLINED_FUNCTION_80_0();

      return v63(v57, v58, v59, v60, v61, v62, v63, v64, a9, v67, a11, a12);
    }

    if (v20 == *(v12 + 236))
    {
      v27 = OUTLINED_FUNCTION_87();
      v28(v27);
      v29 = OUTLINED_FUNCTION_49_1();
      v30(v29);
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_13_3();
      v66 = v31 + *v31;
      v32 = swift_task_alloc();
      *(v12 + 184) = v32;
      *v32 = v12;
      OUTLINED_FUNCTION_16_1(v32);
      OUTLINED_FUNCTION_80_0();

      return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, v66, a11, a12);
    }

    v43 = *(v12 + 128);
    v42 = *(v12 + 136);
    v44 = *(v12 + 120);
    sub_266039224();
    OUTLINED_FUNCTION_0_3();
    sub_266037708(v45, v46);
    OUTLINED_FUNCTION_52();
    swift_allocError();
    sub_266039204();
    swift_willThrow();
    (*(v43 + 8))(v42, v44);
    OUTLINED_FUNCTION_94_0();

    OUTLINED_FUNCTION_11();
  }

  else
  {
    OUTLINED_FUNCTION_82();

    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_80_0();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_26602FF84()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26603009C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_80();
  v13 = OUTLINED_FUNCTION_51_0();
  v14(v13);
  __swift_destroy_boxed_opaque_existential_0((v12 + 16));
  v15 = *(v12 + 176);
  OUTLINED_FUNCTION_139();
  if (v16)
  {
    OUTLINED_FUNCTION_82();

    OUTLINED_FUNCTION_7_3();
LABEL_13:
    OUTLINED_FUNCTION_80_0();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
  }

  v17 = *(v12 + 232);
  v18 = OUTLINED_FUNCTION_8_3();
  v19(v18);
  v20 = OUTLINED_FUNCTION_12_0();
  if (v21(v20) == v17)
  {
    v22 = *(v12 + 64);
    v23 = OUTLINED_FUNCTION_87();
    v24(v23);
    v25 = OUTLINED_FUNCTION_143();
    v26(v25);
    sub_266005E54(v22, v12 + 16);
    OUTLINED_FUNCTION_127();
    sub_2660395D4();
    *(v12 + 160) = v27;
    if (v15)
    {
      v28 = OUTLINED_FUNCTION_51_0();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_0((v12 + 16));
LABEL_12:
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_11();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_13_3();
    v71 = v59 + *v59;
    v60 = swift_task_alloc();
    *(v12 + 168) = v60;
    *v60 = v12;
    OUTLINED_FUNCTION_19_2(v60);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_80_0();

    return v67(v61, v62, v63, v64, v65, v66, v67, v68, a9, v71, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_141();
    if (!v16)
    {
      sub_266039224();
      OUTLINED_FUNCTION_0_3();
      v48 = sub_266037708(v46, v47);
      OUTLINED_FUNCTION_47(v48);
      OUTLINED_FUNCTION_125();
      sub_266039204();
      swift_willThrow();
      v49 = OUTLINED_FUNCTION_12_0();
      v50(v49);
      goto LABEL_12;
    }

    v30 = *(v12 + 64);
    v31 = OUTLINED_FUNCTION_12_0();
    v32(v31);
    v33 = OUTLINED_FUNCTION_15_0();
    v34(v33);
    OUTLINED_FUNCTION_18_1((v30 + 40));
    OUTLINED_FUNCTION_13_3();
    v70 = v35 + *v35;
    v36 = swift_task_alloc();
    *(v12 + 184) = v36;
    *v36 = v12;
    OUTLINED_FUNCTION_16_1(v36);
    OUTLINED_FUNCTION_80_0();

    return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, v70, a11, a12);
  }
}

uint64_t sub_26603040C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v5[24] = v9;
  v5[25] = v0;

  if (!v0)
  {
    v5[26] = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266030514()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_18_1(*(v0 + 64));
  OUTLINED_FUNCTION_3_1();
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_266030628;
  OUTLINED_FUNCTION_58(*(v0 + 208));
  OUTLINED_FUNCTION_106();

  return v2();
}

uint64_t sub_266030628()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266030740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_80();
  v13 = OUTLINED_FUNCTION_107();
  v14(v13);
  v15 = *(v12 + 224);
  OUTLINED_FUNCTION_139();
  if (v16)
  {
    OUTLINED_FUNCTION_82();

    OUTLINED_FUNCTION_7_3();
LABEL_13:
    OUTLINED_FUNCTION_80_0();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
  }

  v17 = *(v12 + 232);
  v18 = OUTLINED_FUNCTION_8_3();
  v19(v18);
  v20 = OUTLINED_FUNCTION_12_0();
  if (v21(v20) == v17)
  {
    v22 = *(v12 + 64);
    v23 = OUTLINED_FUNCTION_87();
    v24(v23);
    v25 = OUTLINED_FUNCTION_143();
    v26(v25);
    sub_266005E54(v22, v12 + 16);
    OUTLINED_FUNCTION_127();
    sub_2660395D4();
    *(v12 + 160) = v27;
    if (v15)
    {
      v28 = OUTLINED_FUNCTION_51_0();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_0((v12 + 16));
LABEL_12:
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_11();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_13_3();
    v71 = v59 + *v59;
    v60 = swift_task_alloc();
    *(v12 + 168) = v60;
    *v60 = v12;
    OUTLINED_FUNCTION_19_2(v60);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_80_0();

    return v67(v61, v62, v63, v64, v65, v66, v67, v68, a9, v71, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_141();
    if (!v16)
    {
      sub_266039224();
      OUTLINED_FUNCTION_0_3();
      v48 = sub_266037708(v46, v47);
      OUTLINED_FUNCTION_47(v48);
      OUTLINED_FUNCTION_125();
      sub_266039204();
      swift_willThrow();
      v49 = OUTLINED_FUNCTION_12_0();
      v50(v49);
      goto LABEL_12;
    }

    v30 = *(v12 + 64);
    v31 = OUTLINED_FUNCTION_12_0();
    v32(v31);
    v33 = OUTLINED_FUNCTION_15_0();
    v34(v33);
    OUTLINED_FUNCTION_18_1((v30 + 40));
    OUTLINED_FUNCTION_13_3();
    v70 = v35 + *v35;
    v36 = swift_task_alloc();
    *(v12 + 184) = v36;
    *v36 = v12;
    OUTLINED_FUNCTION_16_1(v36);
    OUTLINED_FUNCTION_80_0();

    return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, v70, a11, a12);
  }
}

uint64_t sub_266030AA8()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_51_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_94_0();

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_266030B30()
{
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_107();
  v1(v0);
  OUTLINED_FUNCTION_94_0();

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_266030BB0()
{
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_107();
  v1(v0);
  OUTLINED_FUNCTION_94_0();

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t ShimFriendService.listRequests(player:after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266030C48()
{
  OUTLINED_FUNCTION_80();
  sub_266028160();
  v1 = v0[5];
  v2 = v0[3];
  OUTLINED_FUNCTION_14_4();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_3_1();
  v4 = swift_task_alloc();
  v0[7] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058638, &qword_26603C7D0);
  *v4 = v0;
  v4[1] = sub_266030DE8;
  OUTLINED_FUNCTION_124();

  return v5();
}

uint64_t sub_266030DE8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

uint64_t sub_266030F04()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_266030F60()
{
  OUTLINED_FUNCTION_1();
  v0[30] = v1;
  v0[31] = v2;
  v0[29] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v4);
  v0[32] = OUTLINED_FUNCTION_28_0();
  v5 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266030FE8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_18_1(*(v0 + 240));
  OUTLINED_FUNCTION_3_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_157(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_4_2(v2);
  OUTLINED_FUNCTION_145();

  return v4();
}

uint64_t sub_2660310E4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 272) = v5;
  *(v3 + 280) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_111();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

void sub_266031214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_138();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_36();
  a16 = v18;
  v21 = v18[34];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    a10 = MEMORY[0x277D84F90];
    v24 = v21 + 32;
    v25 = v18[35];
    while (v22 != v23)
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        return;
      }

      sub_266008E00(v24, (v18 + 2));
      sub_2660316F8(&a10, (v18 + 2));
      if (v25)
      {

        sub_266008E5C((v18 + 2));

        OUTLINED_FUNCTION_14_3();
        goto LABEL_12;
      }

      ++v23;
      sub_266008E5C((v18 + 2));
      v24 += 208;
    }

    v32 = a10;
    v18[36] = a10;
    v18[28] = v32;
    v33 = swift_task_alloc();
    v18[37] = v33;
    *v33 = v18;
    v33[1] = sub_266031428;
    OUTLINED_FUNCTION_21();

    sub_266031C8C();
  }

  else
  {

    sub_2660395F4();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    sub_266039294();
    v30 = MEMORY[0x277D0CF30];
    sub_266037708(&qword_2800586C8, MEMORY[0x277D0CF30]);
    OUTLINED_FUNCTION_61_0();
    sub_266037708(v31, v30);
    OUTLINED_FUNCTION_63();
    sub_2660395E4();

    OUTLINED_FUNCTION_7_3();
LABEL_12:
    OUTLINED_FUNCTION_21();

    v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
  }
}

uint64_t sub_266031428()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v4;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266031528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_36();
  v11 = v10[38];
  v12 = v10[39];
  v13 = v10[31];
  v14 = swift_task_alloc();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10 + 28;
  sub_26603282C(sub_2660375E0, v14, v11);

  if (v12)
  {

    OUTLINED_FUNCTION_14_3();
  }

  else
  {
    sub_2660395F4();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    sub_266039294();
    v19 = MEMORY[0x277D0CF30];
    sub_266037708(&qword_2800586C8, MEMORY[0x277D0CF30]);
    OUTLINED_FUNCTION_61_0();
    sub_266037708(v20, v19);
    OUTLINED_FUNCTION_12_0();
    sub_2660395E4();

    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_91();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_266031694()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_2660316F8(uint64_t *a1, uint64_t a2)
{
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058140, &unk_26603BDA0);
  OUTLINED_FUNCTION_16(v3);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26_0();
  v65 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_16(v6);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_0();
  v70 = v8;
  OUTLINED_FUNCTION_37_1();
  sub_266039294();
  OUTLINED_FUNCTION_2_0();
  v67 = v10;
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_2();
  v64 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v63 = v62 - v14;
  OUTLINED_FUNCTION_37_1();
  v72 = sub_266039264();
  v15 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_23_0();
  v71 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800586D8, &unk_26603CC08);
  v18 = *(v15 + 72);
  v73 = v15;
  v19 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v66 = v18;
  v20 = swift_allocObject();
  v75 = xmmword_26603B720;
  *(v20 + 16) = xmmword_26603B720;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
  sub_265FFED20();
  v23 = v22;
  OUTLINED_FUNCTION_39();
  v25 = *(v24 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v75;
  v29 = (v28 + v27);
  v74 = a2;
  v30 = *(a2 + 40);
  v31 = *(a2 + 48);
  *v29 = v30;
  v29[1] = v31;
  swift_storeEnumTagMultiPayload();

  v32 = v76;
  sub_266039584();
  if (v32)
  {
    *(v20 + 16) = 0;
  }

  else
  {
    v62[2] = v21;
    v62[3] = v25;
    v76 = v27;
    v62[1] = v23;
    v35 = v71;
    v34 = v72;
    v36 = *(v73 + 104);
    v36(v20 + v19, *MEMORY[0x277D0CEB8], v72);
    v37 = v74;
    if (*(v74 + 80))
    {

      sub_2660395C4();
      v62[0] = v19;
      v36(v35, *MEMORY[0x277D0CEC0], v34);
      v39 = *(v20 + 16);
      v38 = *(v20 + 24);
      if (v39 >= v38 >> 1)
      {
        v61 = OUTLINED_FUNCTION_38_1(v38);
        v20 = sub_2660375FC(v61, v39 + 1, 1, v20, &qword_2800586D8, &unk_26603CC08, MEMORY[0x277D0CEC8], MEMORY[0x277D0CEC8]);
      }

      v40 = v66;
      v41 = v67;
      v42 = v73;
      v43 = v62[0];
      *(v20 + 16) = v39 + 1;
      (*(v42 + 32))(v20 + v43 + v39 * v40, v35, v34);
      v37 = v74;
    }

    else
    {
      v41 = v67;
    }

    v44 = v76;
    v45 = swift_allocObject();
    *(v45 + 16) = v75;
    v46 = (v45 + v44);
    v47 = *(v37 + 64);
    *v46 = *(v37 + 56);
    v46[1] = v47;
    swift_storeEnumTagMultiPayload();

    sub_266039584();
    v48 = v37;
    v50 = v68;
    v49 = v69;
    v51 = *(v48 + 24);
    v52 = *(v48 + 32);
    LODWORD(v75) = *(v48 + 88);
    __swift_project_boxed_opaque_existential_1(v48, v51);
    v53 = v65;
    sub_26602821C(v51, v52);
    v54 = sub_266039154();
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
    v55 = v63;
    sub_266039284();
    v56 = v64;
    v57 = OUTLINED_FUNCTION_151();
    v58(v57);
    sub_266037368();
    v59 = *(*v49 + 16);
    sub_2660373DC(v59);
    (*(v41 + 8))(v55, v50);
    v60 = *v49;
    *(v60 + 16) = v59 + 1;
    result = (*(v41 + 32))(v60 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v59, v56, v50);
    *v49 = v60;
  }

  return result;
}

uint64_t sub_266031C8C()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058140, &unk_26603BDA0);
  OUTLINED_FUNCTION_16(v2);
  v1[3] = OUTLINED_FUNCTION_28_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800586C0, &qword_26603CBF0);
  OUTLINED_FUNCTION_16(v3);
  v1[4] = OUTLINED_FUNCTION_28_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800586A8, &unk_26603CBD8);
  v1[5] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_43_0();
  v1[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266031DA0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_18_1(*(v0 + 16));
  OUTLINED_FUNCTION_3_1();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_4_2(v1);
  OUTLINED_FUNCTION_145();

  return v2();
}

uint64_t sub_266031EA0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_11();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

id sub_266031FEC()
{
  v1 = v0[10];
  v39 = v0[4];
  result = sub_266003570(v1);
  v3 = 0;
  v42 = v1 & 0xC000000000000001;
  v43 = result;
  v40 = v1 + 32;
  v41 = v1 & 0xFFFFFFFFFFFFFF8;
  v37 = MEMORY[0x277D84F90];
  v38 = v0;
  v4 = &property descriptor for ShimGameServicesRoot.delegate;
  while (v43 != v3)
  {
    if (v42)
    {
      result = MEMORY[0x266777030](v3, v0[10]);
    }

    else
    {
      if (v3 >= *(v41 + 16))
      {
        goto LABEL_28;
      }

      result = *(v40 + 8 * v3);
    }

    v5 = result;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v6 = [result v4[128]];
    if (v6)
    {
      v7 = v6;
      v8 = v0[4];
      v9 = [v6 friendCode];

      v10 = sub_2660398E4();
      v11 = v4;
      v13 = v12;

      v14 = [v5 playerID];
      v15 = sub_2660398E4();
      v17 = v16;

      *v8 = v15;
      v39[1] = v17;
      v39[2] = v10;
      v39[3] = v13;
      v4 = v11;
      v18 = [v5 v11 + 930];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 timestamp];

        if (v20)
        {
          v0 = v38;
          sub_266039144();

          v21 = 0;
        }

        else
        {
          v21 = 1;
          v0 = v38;
        }

        v29 = v0[3];
        v30 = sub_266039154();
        __swift_storeEnumTagSinglePayload(v29, v21, 1, v30);
        sub_266037310();
      }

      else
      {
        sub_266039154();
        OUTLINED_FUNCTION_34_0();
        __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
        v0 = v38;
      }

      v22 = v0[4];
      v23 = v0[5];
      v24 = 0;
    }

    else
    {
      v22 = v0[4];
      v23 = v0[5];
      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v22, v24, 1, v23);
    v32 = v0[4];
    v31 = v0[5];

    if (__swift_getEnumTagSinglePayload(v32, 1, v31) == 1)
    {
      result = sub_2660078E8(v0[4], &qword_2800586C0, &qword_26603CBF0);
      ++v3;
    }

    else
    {
      sub_266037310();
      OUTLINED_FUNCTION_53();
      sub_266037310();
      v33 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_266037444(0, *(v37 + 16) + 1, 1, v37);
      }

      v35 = v33[2];
      v34 = v33[3];
      if (v35 >= v34 >> 1)
      {
        v33 = sub_266037444((v34 > 1), v35 + 1, 1, v33);
      }

      v33[2] = v35 + 1;
      OUTLINED_FUNCTION_32_0();
      v37 = v33;
      result = sub_266037310();
      ++v3;
    }
  }

  v36 = v0[1];

  return v36(v37);
}

uint64_t sub_2660323CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v47 = a3;
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_2_0();
  v39 = v4;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_26_0();
  v44 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800586A8, &unk_26603CBD8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v8);
  v10 = (&v36 - v9);
  sub_266039294();
  OUTLINED_FUNCTION_2_0();
  v45 = v12;
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_2();
  v43 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v38 = &v36 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800586D8, &unk_26603CC08);
  v37 = sub_266039264();
  OUTLINED_FUNCTION_2_0();
  v36 = v17;
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v48 = xmmword_26603B720;
  *(v19 + 16) = xmmword_26603B720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
  sub_265FFED20();
  OUTLINED_FUNCTION_39();
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v48;
  v23 = (v22 + v21);
  *&v48 = a1;
  sub_2660377E4();
  v25 = *v10;
  v24 = v10[1];

  v40 = v7;
  v26 = *(v7 + 64);
  *v23 = v25;
  v23[1] = v24;
  swift_storeEnumTagMultiPayload();
  sub_2660078E8(v10 + v26, &unk_280058140, &unk_26603BDA0);
  v27 = v49;
  sub_266039584();
  if (v27)
  {
    *(v19 + 16) = 0;
  }

  else
  {
    (*(v36 + 104))(v19 + v18, *MEMORY[0x277D0CEB8], v37);
    (*(v39 + 16))(v44, v42, v41);
    sub_2660377E4();

    v29 = v38;
    OUTLINED_FUNCTION_12_0();
    sub_266039284();
    v31 = v45;
    v30 = v46;
    v32 = v43;
    (*(v45 + 16))(v43, v29, v46);
    v33 = v47;
    sub_266037368();
    v34 = *(*v33 + 16);
    sub_2660373DC(v34);
    (*(v31 + 8))(v29, v30);
    v35 = *v33;
    *(v35 + 16) = v34 + 1;
    return (*(v31 + 32))(v35 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v34, v32, v30);
  }
}

uint64_t (*sub_26603282C(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3))(unint64_t)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800586A8, &unk_26603CBD8) - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

uint64_t ShimFriendService.acceptRequests(player:from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266032A4C()
{
  OUTLINED_FUNCTION_1();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_2(v3);

  return sub_266031C8C();
}

uint64_t sub_266032AD8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_266032BF4()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_102(v4);
  *v5 = v6;
  v5[1] = sub_266032CB8;
  OUTLINED_FUNCTION_147();

  return sub_26600BA2C();
}

uint64_t sub_266032CB8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_7_3();

    return v10();
  }
}

uint64_t sub_266032DDC()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_266032E40()
{
  OUTLINED_FUNCTION_1();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800586A8, &unk_26603CBD8);
  v0[6] = v5;
  OUTLINED_FUNCTION_3_0(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_43_0();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_266032F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_95();
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v14 + 96) = v18;
    if (a10 == v16)
    {
      break;
    }

    OUTLINED_FUNCTION_62_0();
    sub_2660377E4();
    OUTLINED_FUNCTION_155();
    v20 = v20 && v19 == v17;
    if (v20 || (sub_266039BE4() & 1) != 0)
    {
      sub_266037310();
      a11 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = OUTLINED_FUNCTION_118();
        sub_266034DC8(v21, v22, 1);
      }

      v15 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v15 >= v23 >> 1)
      {
        v24 = OUTLINED_FUNCTION_38_1(v23);
        sub_266034DC8(v24, v15 + 1, 1);
      }

      OUTLINED_FUNCTION_114();
      sub_266037310();
    }

    else
    {
      sub_2660078E8(*(v14 + 88), &unk_2800586A8, &unk_26603CBD8);
      ++v16;
    }
  }

  OUTLINED_FUNCTION_119();
  if (!v25)
  {

    __swift_project_boxed_opaque_existential_1(&unk_26603CBD8, 0x3600000FEELL);
    OUTLINED_FUNCTION_13_3();
    v42 = v38 + *v38;
    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_122(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_23_1(v40);
    OUTLINED_FUNCTION_34_2();

    goto LABEL_18;
  }

  if (*(v18 + 16))
  {
    OUTLINED_FUNCTION_32_0();
    sub_2660377E4();
    OUTLINED_FUNCTION_73_0(*v15);
    sub_266037310();
    __swift_project_boxed_opaque_existential_1(&unk_26603CBD8, 0x3600000FEELL);
    OUTLINED_FUNCTION_13_3();
    v42 = v26 + *v26;
    v27 = swift_task_alloc();
    v28 = OUTLINED_FUNCTION_159(v27);
    *v28 = v29;
    OUTLINED_FUNCTION_22_1(v28);
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_34_2();

LABEL_18:
    v34(v30, v31, v32, v33, v34, v35, v36, v37, a9, v42, a11, a12, a13, a14);
    return;
  }

  __break(1u);
}

uint64_t sub_26603326C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_158();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_111();

  return v3();
}

uint64_t sub_2660333C4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2660334C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_36();
  sub_2660078E8(v10[8], &unk_2800586A8, &unk_26603CBD8);
  OUTLINED_FUNCTION_150();
  if (v12)
  {
    v13 = v10[5];

    OUTLINED_FUNCTION_18_1(v13);
    OUTLINED_FUNCTION_13_3();
    v32 = v14 + *v14;
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_122(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_23_1(v16);
    OUTLINED_FUNCTION_91();

    goto LABEL_5;
  }

  if (v11 < *(v10[12] + 16))
  {
    OUTLINED_FUNCTION_66(v11);
    sub_2660377E4();
    OUTLINED_FUNCTION_73_0(*v9);
    sub_266037310();
    v26 = OUTLINED_FUNCTION_152();
    __swift_project_boxed_opaque_existential_1(v26, v27);
    OUTLINED_FUNCTION_13_3();
    v32 = v28 + *v28;
    v29 = swift_task_alloc();
    v30 = OUTLINED_FUNCTION_159(v29);
    *v30 = v31;
    OUTLINED_FUNCTION_22_1(v30);
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_91();

LABEL_5:
    v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, v32);
    return;
  }

  __break(1u);
}

uint64_t sub_26603372C()
{
  OUTLINED_FUNCTION_8();
  sub_2660078E8(*(v0 + 64), &unk_2800586A8, &unk_26603CBD8);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t ShimFriendService.ignoreRequests(player:from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660338FC()
{
  OUTLINED_FUNCTION_1();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_2(v3);

  return sub_266031C8C();
}

uint64_t sub_266033988()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_266033AA4()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[5];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_102(v4);
  *v5 = v6;
  v5[1] = sub_266033B68;
  OUTLINED_FUNCTION_147();

  return sub_26600BA2C();
}

uint64_t sub_266033B68()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_7_3();

    return v10();
  }
}

uint64_t sub_266033C8C()
{
  OUTLINED_FUNCTION_1();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800586A8, &unk_26603CBD8);
  v0[6] = v5;
  OUTLINED_FUNCTION_3_0(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_43_0();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_266033D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_95();
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v14 + 96) = v18;
    if (a10 == v16)
    {
      break;
    }

    OUTLINED_FUNCTION_62_0();
    sub_2660377E4();
    OUTLINED_FUNCTION_155();
    v20 = v20 && v19 == v17;
    if (v20 || (sub_266039BE4() & 1) != 0)
    {
      sub_266037310();
      a11 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = OUTLINED_FUNCTION_118();
        sub_266034DC8(v21, v22, 1);
      }

      v15 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v15 >= v23 >> 1)
      {
        v24 = OUTLINED_FUNCTION_38_1(v23);
        sub_266034DC8(v24, v15 + 1, 1);
      }

      OUTLINED_FUNCTION_114();
      sub_266037310();
    }

    else
    {
      sub_2660078E8(*(v14 + 88), &unk_2800586A8, &unk_26603CBD8);
      ++v16;
    }
  }

  OUTLINED_FUNCTION_119();
  if (!v25)
  {

    __swift_project_boxed_opaque_existential_1(&unk_26603CBD8, 0x3600000FEELL);
    OUTLINED_FUNCTION_13_3();
    v42 = v38 + *v38;
    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_122(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_23_1(v40);
    OUTLINED_FUNCTION_34_2();

    goto LABEL_18;
  }

  if (*(v18 + 16))
  {
    OUTLINED_FUNCTION_32_0();
    sub_2660377E4();
    OUTLINED_FUNCTION_73_0(*v15);
    sub_266037310();
    __swift_project_boxed_opaque_existential_1(&unk_26603CBD8, 0x3600000FEELL);
    OUTLINED_FUNCTION_13_3();
    v42 = v26 + *v26;
    v27 = swift_task_alloc();
    v28 = OUTLINED_FUNCTION_159(v27);
    *v28 = v29;
    OUTLINED_FUNCTION_22_1(v28);
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_34_2();

LABEL_18:
    v34(v30, v31, v32, v33, v34, v35, v36, v37, a9, v42, a11, a12, a13, a14);
    return;
  }

  __break(1u);
}

uint64_t sub_2660340B8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2660341B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_36();
  sub_2660078E8(v10[8], &unk_2800586A8, &unk_26603CBD8);
  OUTLINED_FUNCTION_150();
  if (v12)
  {
    v13 = v10[5];

    OUTLINED_FUNCTION_18_1(v13);
    OUTLINED_FUNCTION_13_3();
    v32 = v14 + *v14;
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_122(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_23_1(v16);
    OUTLINED_FUNCTION_91();

    goto LABEL_5;
  }

  if (v11 < *(v10[12] + 16))
  {
    OUTLINED_FUNCTION_66(v11);
    sub_2660377E4();
    OUTLINED_FUNCTION_73_0(*v9);
    sub_266037310();
    v26 = OUTLINED_FUNCTION_152();
    __swift_project_boxed_opaque_existential_1(v26, v27);
    OUTLINED_FUNCTION_13_3();
    v32 = v28 + *v28;
    v29 = swift_task_alloc();
    v30 = OUTLINED_FUNCTION_159(v29);
    *v30 = v31;
    OUTLINED_FUNCTION_22_1(v30);
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_91();

LABEL_5:
    v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, v32);
    return;
  }

  __break(1u);
}

uint64_t ShimFriendService.cancelRequests(player:to:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266034438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_14_4();
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_69_0(v11);
  OUTLINED_FUNCTION_3_1();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_79_0(v12);
  *v13 = v14;
  v13[1] = sub_26602C524;
  OUTLINED_FUNCTION_58(*(v10 + 16));
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_21();

  return v21(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_26603455C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266034574()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_18_1(*(v0 + 32));
  OUTLINED_FUNCTION_3_1();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_23_1(v2);

  return v5(v3);
}

uint64_t sub_266034678()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_266034758()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_121(v1);

  return ShimFriendService.listFriends(player:after:)();
}

uint64_t sub_2660347E8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_4(v1);

  return ShimFriendService.remove(friends:of:)(v3, v4);
}

uint64_t sub_266034874()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return ShimFriendService.listFriendSuggestions(player:)(v3);
}

uint64_t sub_2660348F8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_2(v1);

  return ShimFriendService.describeFriendSuggestions(friendSuggestions:)();
}

uint64_t sub_26603497C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_4(v1);

  return ShimFriendService.denyRequests(player:from:)(v3, v4);
}

uint64_t sub_266034A08()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_4(v1);

  return ShimFriendService.sendRequests(player:to:)(v3, v4);
}

uint64_t sub_266034A94()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_121(v1);

  return ShimFriendService.listRequests(player:after:)(v3, v4, v5);
}

uint64_t sub_266034B24()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_4(v1);

  return ShimFriendService.acceptRequests(player:from:)(v3, v4);
}

uint64_t sub_266034BB0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_4(v1);

  return ShimFriendService.ignoreRequests(player:from:)(v3, v4);
}

uint64_t sub_266034C3C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_4(v1);

  return ShimFriendService.cancelRequests(player:to:)(v3, v4);
}

char *sub_266034CC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266034E08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266034CE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266034F10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266034D08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266035018(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266034D28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266035130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266034D48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266035260(a1, a2, a3, *v3, &unk_280058720, &qword_26603CC48, &qword_280058620, &qword_26603C770);
  *v3 = result;
  return result;
}

void *sub_266034D88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266035260(a1, a2, a3, *v3, &qword_2800586E8, &unk_26603CC28, &qword_280058628, &qword_26603C778);
  *v3 = result;
  return result;
}

void *sub_266034DC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266035260(a1, a2, a3, *v3, &qword_2800586B8, &qword_26603CBE8, &unk_2800586A8, &unk_26603CBD8);
  *v3 = result;
  return result;
}

char *sub_266034E08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DC8, &qword_26603CCA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266034F10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058770, &qword_26603CC98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266035018(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058740, &qword_26603CC68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[208 * v8] <= v12)
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266035130(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058758, &unk_26603CC80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058750, &qword_26603CC78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266035260(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = OUTLINED_FUNCTION_15_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_3_0(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v20) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v12;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_32_0();
  if (v9)
  {
    sub_266035418(a4 + v25, v12, v21 + v25);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

void sub_266035418(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_36_1();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_151(), __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), OUTLINED_FUNCTION_5(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v11 = OUTLINED_FUNCTION_151();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_15_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_15_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_2660354E0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_36_1();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_5(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_15_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_15_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_26603559C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2660385E4;
  *(v9 + 24) = v8;
  v12[4] = sub_26603861C;
  v12[5] = v9;
  OUTLINED_FUNCTION_2_2();
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_59();
  v12[2] = v10;
  v12[3] = &block_descriptor_209;
  v11 = _Block_copy(v12);

  [v5 getFriendsForPlayer:v6 fetchOptions:1 withFilter:(v7 & 1) == 0 handler:v11];
  _Block_release(v11);
}

void sub_2660356B0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v7[4] = a1;
  v7[5] = a2;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_3();
  v7[2] = v5;
  v7[3] = &block_descriptor_200;
  v6 = _Block_copy(v7);

  [v3 removeFriendWithPlayer:v4 handler:v6];
  _Block_release(v6);
}

void sub_266035794()
{
  OUTLINED_FUNCTION_47_0();
  v3 = *(v1 + 16);
  v4 = sub_2660398D4();
  v8 = v2;
  v9 = v0;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_3();
  v7[2] = v5;
  v7[3] = &block_descriptor_182;
  v6 = _Block_copy(v7);

  [v3 acceptFriendRequestWithIdentifier:v4 sendPush:1 handler:v6];
  _Block_release(v6);
}

void sub_266035844()
{
  OUTLINED_FUNCTION_47_0();
  v3 = *(v1 + 16);
  v4 = sub_2660398D4();
  v8 = v2;
  v9 = v0;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_3();
  v7[2] = v5;
  v7[3] = &block_descriptor_179;
  v6 = _Block_copy(v7);

  [v3 rejectFriendRequestWithIdentifier:v4 handler:v6];
  _Block_release(v6);
}

void sub_266035918()
{
  OUTLINED_FUNCTION_57_0();
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 24);
  v8 = sub_2660398D4();
  v13 = v6;
  v14 = v4;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_3();
  v11[2] = v9;
  v12 = v2;
  v10 = _Block_copy(v11);

  [v7 *v0];
  _Block_release(v10);
}

uint64_t sub_2660359C0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_57_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_60_0();

  return sub_26602C640(v5, v6, v7, v8, v1);
}

uint64_t sub_266035A58()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v1[1] = sub_265FFD52C;

  return sub_26602CA64();
}

void *sub_266035AF0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058760, &qword_26603BFE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

void *sub_266035B6C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800586B8, &qword_26603CBE8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800586A8, &unk_26603CBD8) - 8);
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

void *sub_266035C74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_3_0(v8);
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

unint64_t sub_266035D68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058620, &qword_26603C770);
  sub_26603774C(&qword_2800586F0, &qword_280058620, &qword_26603C770);
  v2 = sub_2660398B4();

  return sub_266035E10(a1, v2);
}

unint64_t sub_266035E10(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058620, &qword_26603C770);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_26603774C(&unk_2800586F8, &qword_280058620, &qword_26603C770);
    v9 = sub_2660398C4();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_266035FD0()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_89_0();

  return sub_26602E778();
}

uint64_t sub_266036058()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_89_0();

  return sub_26602FA80();
}

uint64_t sub_2660360E0()
{
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v1[1] = sub_265FFE784;

  return sub_266030F60();
}

uint64_t sub_266036184()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_89_0();

  return sub_266032A4C();
}

uint64_t sub_26603620C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_89_0();

  return sub_2660338FC();
}

uint64_t sub_266036294()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_57_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_60_0();

  return sub_26603455C(v5, v6, v7, v8, v1);
}

unint64_t sub_26603632C(uint64_t a1)
{
  result = sub_266007E80();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of GCFFriendService.getFriends(player:includeRecents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_3_1();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_2(v11);
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_21();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t dispatch thunk of GCFFriendService.removeFriend(player:)()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_13_3();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2(v2);
  v4 = OUTLINED_FUNCTION_152();

  return v6(v4);
}

uint64_t dispatch thunk of GCFFriendService.getFriendSuggestions()()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_3_1();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_4(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GCFFriendService.getFriendInvitationMailbox()()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_3_1();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_4(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GCFFriendService.sendFriendInvitation(playerID:contactAssociationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_3_1();
  v26 = v12 + *v12;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_2(v14);
  OUTLINED_FUNCTION_80_0();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, v26, a12);
}

uint64_t dispatch thunk of GCFFriendService.acceptFriendInvitation(playerID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_7_6(v10, v11, v12, v13);
  OUTLINED_FUNCTION_3_1();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_3_5(v15);
  OUTLINED_FUNCTION_21();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of GCFFriendService.cancelFriendInvitation(playerID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_7_6(v10, v11, v12, v13);
  OUTLINED_FUNCTION_3_1();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_3_5(v15);
  OUTLINED_FUNCTION_21();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of GCFFriendService.ignoreFriendInvitation(playerID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_7_6(v10, v11, v12, v13);
  OUTLINED_FUNCTION_3_1();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_3_5(v15);
  OUTLINED_FUNCTION_21();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of GCFFriendService.getMessageInvitationInbox()()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_3_1();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_4(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GCFFriendService.acceptMessageInvitation(friendCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_7_6(v10, v11, v12, v13);
  OUTLINED_FUNCTION_3_1();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_3_5(v15);
  OUTLINED_FUNCTION_21();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of GCFFriendService.rejectMessageInvitation(friendCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_7_6(v10, v11, v12, v13);
  OUTLINED_FUNCTION_3_1();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_3_5(v15);
  OUTLINED_FUNCTION_21();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of GCFFriendService.deny(playerID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_7_6(v10, v11, v12, v13);
  OUTLINED_FUNCTION_3_1();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_3_5(v15);
  OUTLINED_FUNCTION_21();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t dispatch thunk of GCFFriendService.deny(contactID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_7_6(v10, v11, v12, v13);
  OUTLINED_FUNCTION_3_1();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_3_5(v15);
  OUTLINED_FUNCTION_21();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_266037010(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_96(-1);
  }

  if (a2 < 0 && *(a1 + 8))
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

  return OUTLINED_FUNCTION_96(v2);
}

void *sub_26603704C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

      return OUTLINED_FUNCTION_129(result, a2);
    }

    *(result + 8) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_129(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Sz_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2660370AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_96(-1);
  }

  if (a2 < 0 && *(a1 + 208))
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

  return OUTLINED_FUNCTION_96(v2);
}

uint64_t sub_2660370E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

      return OUTLINED_FUNCTION_130(result, a2);
    }

    *(result + 208) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_130(result, a2);
    }
  }

  return result;
}

uint64_t sub_266037160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_96(-1);
  }

  if (a2 < 0 && *(a1 + 80))
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

  return OUTLINED_FUNCTION_96(v2);
}

uint64_t sub_26603719C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_130(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_130(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_266037200(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_96(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return OUTLINED_FUNCTION_96(v2);
}

void *sub_26603723C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return OUTLINED_FUNCTION_129(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_129(result, a2);
    }
  }

  return result;
}

uint64_t sub_26603727C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_4(v1);
  OUTLINED_FUNCTION_83();

  return sub_266033C8C();
}

uint64_t sub_266037310()
{
  OUTLINED_FUNCTION_36_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_49_1();
  v4(v3);
  return v0;
}

void *sub_266037368()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_2660375FC(result, *(v1 + 16) + 1, 1, v1, &qword_2800586E0, &unk_26603CC18, MEMORY[0x277D0CF30], MEMORY[0x277D0CF30]);
    *v0 = result;
  }

  return result;
}

void *sub_2660373DC(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_2660375FC((v2 > 1), result + 1, 1, *v1, &qword_2800586E0, &unk_26603CC18, MEMORY[0x277D0CF30], MEMORY[0x277D0CF30]);
    *v1 = result;
  }

  return result;
}

void *sub_266037444(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_266035B6C(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800586A8, &unk_26603CBD8) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_266035418(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_26603754C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_4(v1);
  OUTLINED_FUNCTION_83();

  return sub_266032E40();
}

void *sub_2660375FC(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(void))
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
  v15 = sub_266035C74(v14, v13, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_32_0();
  if (v11)
  {
    sub_2660354E0(a4 + v16, v14, v15 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

uint64_t sub_266037708(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_52();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26603774C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_52();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266037790()
{
  result = qword_280058710;
  if (!qword_280058710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280058710);
  }

  return result;
}

uint64_t sub_2660377E4()
{
  OUTLINED_FUNCTION_36_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_49_1();
  v4(v3);
  return v0;
}

uint64_t block_copy_helper_171(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266037868()
{
  OUTLINED_FUNCTION_47_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
  OUTLINED_FUNCTION_16(v1);
  if (v0)
  {
    v2 = sub_266039224();
    OUTLINED_FUNCTION_0_3();
    v5 = sub_266037708(v3, v4);
    OUTLINED_FUNCTION_47(v5);
    *v6 = v0;
    (*(*(v2 - 8) + 104))(v6, *MEMORY[0x277D0CE60], v2);
    v7 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
    return sub_2660399C4();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
    return sub_2660399D4();
  }
}

void *sub_2660379D4(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058738, &qword_26603CC60);
  OUTLINED_FUNCTION_16(v5);
  if (a2)
  {
    v6 = sub_266039224();
    OUTLINED_FUNCTION_0_3();
    v9 = sub_266037708(v7, v8);
    v10 = OUTLINED_FUNCTION_47(v9);
    *v11 = a2;
    (*(*(v6 - 8) + 104))(v11, *MEMORY[0x277D0CE60], v6);
    *&__src[0] = v10;
    v12 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058738, &qword_26603CC60);
    return sub_2660399C4();
  }

  v14 = MEMORY[0x277D84F90];
  if (!a1)
  {
    *&__src[0] = MEMORY[0x277D84F90];
LABEL_64:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058738, &qword_26603CC60);
    return sub_2660399D4();
  }

  v16 = sub_266029AF0(v15);
  v17 = sub_266029B80(v16);

  if (!v17)
  {
    OUTLINED_FUNCTION_164();
    OUTLINED_FUNCTION_0_3();
    sub_266037708(v40, v41);
    OUTLINED_FUNCTION_52();
    v42 = swift_allocError();
    sub_2660391E4();
    *&__src[0] = v42;
    goto LABEL_3;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {

    v20 = MEMORY[0x277D84F90];
LABEL_63:
    *&__src[0] = v20;
    goto LABEL_64;
  }

  v56 = v14;
  result = sub_266034D08(0, v18, 0);
  v19 = 0;
  v20 = v14;
  v49 = v17;
  while (v19 < *(v17 + 16))
  {
    v21 = *(v17 + 8 * v19 + 32);

    sub_266029CA8(0x69742D6575737369, 0xEF706D617473656DLL, v21, &v62);
    if (!*(&v63 + 1))
    {
      sub_2660078E8(&v62, &unk_280057F50, &qword_26603B9C0);
      v65 = 0u;
      v66 = 0u;
      v67 = 0;
LABEL_67:
      sub_2660078E8(&v65, &unk_2800585E0, &unk_26603BD10);
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_0_3();
      v45 = sub_266037708(v43, v44);
      OUTLINED_FUNCTION_47(v45);
      OUTLINED_FUNCTION_125();
      sub_2660391E4();
      swift_willThrow();
      goto LABEL_73;
    }

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058748, &qword_26603CC70);
    if ((OUTLINED_FUNCTION_133() & 1) == 0)
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      goto LABEL_67;
    }

    if (!*(&v66 + 1))
    {
      goto LABEL_67;
    }

    sub_2660021E4(&v65, v68);
    OUTLINED_FUNCTION_163(&v65);
    if (!*(&v66 + 1))
    {
      sub_2660078E8(&v65, &unk_280057F50, &qword_26603B9C0);
LABEL_72:
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_0_3();
      v48 = sub_266037708(v46, v47);
      OUTLINED_FUNCTION_47(v48);
      OUTLINED_FUNCTION_125();
      sub_2660391E4();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v68);
LABEL_73:

      *&__src[0] = v2;
      goto LABEL_3;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_72;
    }

    v22 = v62;
    OUTLINED_FUNCTION_126(0xD000000000000013, &v65);
    if (!*(&v66 + 1))
    {

      sub_2660078E8(&v65, &unk_280057F50, &qword_26603B9C0);
      goto LABEL_72;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_72;
    }

    v23 = v62;
    sub_266005E54(v68, &v65);
    OUTLINED_FUNCTION_126(0xD000000000000013, &v62);
    if (*(&v63 + 1))
    {
      v24 = swift_dynamicCast();
      if (v24)
      {
        v25 = v59;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v26 = *(&v59 + 1);
      }

      else
      {
        v26 = 0;
      }

      v53 = v26;
      v54 = v25;
    }

    else
    {
      sub_2660078E8(&v62, &unk_280057F50, &qword_26603B9C0);
      v53 = 0;
      v54 = 0;
    }

    OUTLINED_FUNCTION_163(&v62);
    if (*(&v63 + 1))
    {
      v27 = swift_dynamicCast();
      v28 = v59;
      if (!v27)
      {
        v28 = 2;
      }
    }

    else
    {
      sub_2660078E8(&v62, &unk_280057F50, &qword_26603B9C0);
      v28 = 2;
    }

    v52 = v28;
    OUTLINED_FUNCTION_126(0xD000000000000010, &v62);
    if (*(&v63 + 1))
    {
      v29 = swift_dynamicCast();
      if (v29)
      {
        v30 = v59;
      }

      else
      {
        v30 = 0;
      }

      if (v29)
      {
        v31 = *(&v59 + 1);
      }

      else
      {
        v31 = 0;
      }

      v50 = v31;
      v51 = v30;
    }

    else
    {
      sub_2660078E8(&v62, &unk_280057F50, &qword_26603B9C0);
      v50 = 0;
      v51 = 0;
    }

    OUTLINED_FUNCTION_126(0xD000000000000015, &v59);
    if (*(&v60 + 1))
    {
      if ((OUTLINED_FUNCTION_133() & 1) == 0)
      {
        v64 = 0;
        v62 = 0u;
        v63 = 0u;
      }
    }

    else
    {
      sub_2660078E8(&v59, &unk_280057F50, &qword_26603B9C0);
      v62 = 0u;
      v63 = 0u;
      v64 = 0;
    }

    v32 = v20;
    OUTLINED_FUNCTION_126(0xD000000000000014, &v59);
    if (*(&v60 + 1))
    {
      v33 = swift_dynamicCast();
      if (v33)
      {
        v34 = v57;
      }

      else
      {
        v34 = 0;
      }

      if (v33)
      {
        v35 = *(&v57 + 1);
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      sub_2660078E8(&v59, &unk_280057F50, &qword_26603B9C0);
      v34 = 0;
      v35 = 0;
    }

    OUTLINED_FUNCTION_126(0xD000000000000019, &v57);
    __swift_destroy_boxed_opaque_existential_0(v68);
    if (v58)
    {
      v36 = v54;
      if ((OUTLINED_FUNCTION_133() & 1) == 0)
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
      }

      v2 = *(&v23 + 1);
    }

    else
    {
      sub_2660078E8(&v57, &unk_280057F50, &qword_26603B9C0);
      v59 = 0u;
      v60 = 0u;
      v61 = 0;
      v36 = v54;
      v2 = *(&v23 + 1);
    }

    sub_2660021E4(&v65, __src);
    *(&__src[2] + 8) = v22;
    *(&__src[3] + 1) = v23;
    *&__src[4] = v2;
    *(&__src[4] + 1) = v36;
    *&__src[5] = v53;
    BYTE8(__src[5]) = v52;
    *&__src[6] = v51;
    *(&__src[6] + 1) = v50;
    __src[7] = v62;
    __src[8] = v63;
    *&__src[9] = v64;
    *(&__src[9] + 1) = v34;
    *&__src[10] = v35;
    *(&__src[12] + 1) = v61;
    *(&__src[11] + 8) = v60;
    *(&__src[10] + 8) = v59;

    v20 = v32;
    v56 = v32;
    v38 = *(v32 + 16);
    v37 = *(v32 + 24);
    if (v38 >= v37 >> 1)
    {
      v39 = OUTLINED_FUNCTION_38_1(v37);
      sub_266034D08(v39, v38 + 1, 1);
      v20 = v56;
    }

    ++v19;
    *(v20 + 16) = v38 + 1;
    result = memcpy((v20 + 208 * v38 + 32), __src, 0xD0uLL);
    v17 = v49;
    if (v18 == v19)
    {

      goto LABEL_63;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_2660382E8(_OWORD *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_19:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_2660031D4(*(a4 + 56) + ((v13 << 11) | (32 * v16)), v17);
      sub_266038440(v17, v18);
      result = sub_266038440(v18, v11);
      v11 += 2;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *sub_266038440(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_266038464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058768, &qword_26603CC90);
  OUTLINED_FUNCTION_16(v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    v9 = MEMORY[0x277D84F90];
    sub_266034CE8(0, v3, 0);
    v4 = (a1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v6 = *v4;
      v7 = *(v9 + 24);

      if (v5 >= v7 >> 1)
      {
        sub_266034CE8((v7 > 1), v5 + 1, 1);
      }

      *(v9 + 16) = v5 + 1;
      *(v9 + 8 * v5 + 32) = v6;
      ++v4;
      ++v5;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058768, &qword_26603CC90);
  return sub_2660399D4();
}

uint64_t sub_2660385AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2660385E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

__n128 OUTLINED_FUNCTION_32_2(__n128 *a1)
{
  v1[3].n128_u64[0] = a1;
  result = v1[2];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return sub_2660398D4();
}

__n128 OUTLINED_FUNCTION_43_3(__n128 *a1)
{
  *(v1 + 40) = a1;
  result = *(v1 + 24);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_0()
{

  return sub_2660399B4();
}

uint64_t OUTLINED_FUNCTION_69_0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(a1 + 16) = v3;
  return v1;
}

void OUTLINED_FUNCTION_73_0(uint64_t a1@<X8>)
{
  *v4 = a1;
  v4[1] = v1;
  v4[2] = v3;
  v4[3] = v2;
}

uint64_t OUTLINED_FUNCTION_82()
{
}

uint64_t OUTLINED_FUNCTION_94_0()
{
}

uint64_t OUTLINED_FUNCTION_114()
{
  result = *(v2 + 72);
  *(v1 + 16) = v0;
  return result;
}

void OUTLINED_FUNCTION_116()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

double OUTLINED_FUNCTION_126@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{

  return sub_266029CA8(a1, v2 | 0x8000000000000000, v3, a2);
}

void *OUTLINED_FUNCTION_127()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

uint64_t OUTLINED_FUNCTION_131(uint64_t a1)
{

  return sub_266039A24();
}

id OUTLINED_FUNCTION_132(int a1, const char *a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{

  return [a9 a2];
}

uint64_t OUTLINED_FUNCTION_133()
{

  return swift_dynamicCast();
}

uint64_t *OUTLINED_FUNCTION_134()
{
  *(v0 + 136) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 112));
}

uint64_t OUTLINED_FUNCTION_135()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_142(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = result;
  return result;
}

double OUTLINED_FUNCTION_163@<D0>(_OWORD *a1@<X8>)
{

  return sub_266029CA8(0xD000000000000011, v1 | 0x8000000000000000, v2, a1);
}

uint64_t OUTLINED_FUNCTION_164()
{

  return sub_266039224();
}

uint64_t OUTLINED_FUNCTION_165()
{

  return swift_task_alloc();
}