uint64_t sub_231CB0F50()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[8];
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v3[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_231CC518C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_19();

    return v9();
  }
}

uint64_t sub_231CB10FC()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[8];
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v3[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_231CC518C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_19();

    return v9();
  }
}

uint64_t sub_231CB12A4()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_33();
  v6(v9);
  if (v0)
  {
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_106();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_106();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

void OUTLINED_FUNCTION_30()
{

  JUMPOUT(0x23837E1D0);
}

unint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_231CB5000(v13, v12, va);
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2)
{

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return __swift_destroy_boxed_opaque_existential_0(va);
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_16()
{

  return sub_231E10E30();
}

uint64_t OUTLINED_FUNCTION_4_24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 248) = a6;
  *(v7 + 256) = v6;
  *(v7 + 368) = a5;
  *(v7 + 232) = a3;
  *(v7 + 240) = a4;
  *(v7 + 216) = result;
  *(v7 + 224) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_4_26()
{
  result = *(v0 - 112);
  *(v0 - 160) = *(v0 - 128);
  *(v0 - 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_30()
{

  return sub_231DF37E8(v1, v0);
}

double OUTLINED_FUNCTION_4_31()
{
  result = 0.0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_34()
{
  *(v3 - 88) = v1;
  *(v3 - 112) = v0;
  *(v3 - 104) = v2;
}

void OUTLINED_FUNCTION_4_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_20_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  *(v11 + 4) = v12;
  *(v11 + 12) = 1024;
  *(v11 + 14) = a11;
  *(v11 + 18) = 2048;
}

BOOL OUTLINED_FUNCTION_20_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_12(uint64_t a1)
{
  v4 = v1[272];
  *(v2 - 152) = v1[275];
  *(v2 - 144) = v4;
  v5 = v1[268];
  *(v2 - 136) = v1[271];
  *(v2 - 128) = v5;
  v6 = v1[265];
  *(v2 - 120) = v1[266];
  *(v2 - 112) = v6;
  v7 = v1[262];
  *(v2 - 104) = v1[264];
  *(v2 - 96) = v7;
  *(v2 - 88) = v1[261];
}

uint64_t OUTLINED_FUNCTION_20_14()
{
}

uint64_t OUTLINED_FUNCTION_20_16(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_20_17(uint64_t a1, uint64_t a2)
{

  return sub_231E12000();
}

uint64_t sub_231CB1B84()
{
  OUTLINED_FUNCTION_29();
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = OUTLINED_FUNCTION_25();
    v3(v2);
    v4 = sub_231CC398C;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_25();
    v6(v5);
    v4 = sub_231CB22D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = *(v3 + 16);
  v2[38] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1, uint64_t a2, __n128 a3)
{
  *v3 = a3;
  v5 = v3[1].n128_u8[0];
  v3[1].n128_u8[0] = 13;

  return sub_231CBA16C(a1, a2, v5);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1, uint64_t a2)
{

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_18_7()
{
  v1 = v0[28];
  __swift_project_boxed_opaque_existential_0(v0 + 24, v0[27]);
  return v1;
}

BOOL OUTLINED_FUNCTION_18_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_18_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_4()
{
  *(v3 - 128) = v0;
  *(v3 - 136) = *(v2 + 1920);
  v4 = *(v2 + 1528);
  *(v3 - 152) = *(v2 + 1520);
  *(v3 - 144) = v4;
  v5 = *(v2 + 1248);
  *(v3 - 168) = v1;
  *(v3 - 160) = v5;
  return *(v2 + 1104);
}

void OUTLINED_FUNCTION_28_8(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *v16 = a1;
  *(v16 + 4) = a16;
  *(v16 + 8) = 2048;
}

uint64_t OUTLINED_FUNCTION_28_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_29_4(void *a1)
{

  return sub_231D5EF7C(v1, v2, v1, v2, a1, 0);
}

uint64_t OUTLINED_FUNCTION_29_5()
{
  v2 = v0[211];
  *(v1 - 120) = v0[187];
  v3 = v0[186];
  *(v1 - 144) = v2;
  *(v1 - 136) = v3;
  return v0[180];
}

void sub_231CB22D8()
{
  v1 = *(v0 + 15);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_231CB4EEC();
    v5 = OUTLINED_FUNCTION_23_0();
    v6(v5);
    v7 = sub_231E10E10();
    v8 = sub_231E11AF0();
    if (os_log_type_enabled(v7, v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_0(&dword_231CAE000, v9, v10, "InMemoryMailResultCache: Cache gone, stopping pruning task");
      OUTLINED_FUNCTION_30();
    }

    v12 = *(v0 + 9);
    v11 = *(v0 + 10);
    v13 = *(v0 + 8);

    (*(v12 + 8))(v11, v13);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_17_2();

    __asm { BRAA            X1, X16 }
  }

  v3 = Strong;
  v4 = v0[7];
  os_unfair_lock_lock(Strong + 10);
  sub_231CB24A0((v3 + 48), v3, v4);
  os_unfair_lock_unlock((v3 + 40));
  if (!v1)
  {

    sub_231E12280();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_10_3(&dword_231E1D770);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_20_0(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_0_4(v17);
    OUTLINED_FUNCTION_17_2();

    __asm { BR              X5 }
  }

  OUTLINED_FUNCTION_17_2();
}

unint64_t sub_231CB24A0(void *a1, uint64_t a2, double a3)
{
  v86 = a2;
  sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v87 = v6;
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v89 = v8 - v7;
  v9 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v85 - v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741B0, &qword_231E138C0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v93 = (v20 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = (&v85 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741B8, &qword_231E138C8);
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v85 - v31;
  v33 = *a1;
  v34 = a1[1];
  v85 = a1;
  v35 = a1[2];
  v36 = *(v35 + 16);
  v94 = v34 + 32;
  v101 = (v11 + 16);
  v102 = v36;
  v100 = (v11 + 8);
  v90 = v33;

  v97 = v34;

  v96 = v35;
  v37 = v32;

  v39 = 0;
  v40 = 0;
  v99 = v24;
  v91 = v18;
  v92 = v37;
  do
  {
    if (v40 >= v102)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741C0, &unk_231E138D0);
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v59);
    }

    else
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      if (v40 >= *(v97 + 16))
      {
        goto LABEL_20;
      }

      v98 = v39;
      v41 = v29;
      v42 = v15;
      v43 = v9;
      v44 = v95;
      v45 = *(v95 + 48);
      v46 = (v94 + 16 * v40);
      v47 = v46[1];
      *v24 = *v46;
      v24[1] = v47;
      v48 = v96;
      if (v40 >= *(v96 + 16))
      {
        goto LABEL_21;
      }

      v49 = v44;
      v50 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
      OUTLINED_FUNCTION_6(v50);
      sub_231CB4858(v48 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v52 + 72) * v40++, v24 + v45);
      v53 = v24;
      v54 = v93;
      sub_231CB37DC(v53, v93, &qword_27DD741B0, &qword_231E138C0);
      v55 = *(v49 + 48);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741C0, &unk_231E138D0);
      v57 = *(v56 + 48);
      v58 = v54[1];
      v29 = v41;
      *v41 = *v54;
      v41[1] = v58;
      sub_231CB4E2C(v54 + v55, v41 + v57);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v56);

      v9 = v43;
      v15 = v42;
      v18 = v91;
      v37 = v92;
      v39 = v98;
    }

    sub_231CB37DC(v29, v37, &qword_27DD741B8, &qword_231E138C8);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741C0, &unk_231E138D0);
    if (__swift_getEnumTagSinglePayload(v37, 1, v60) == 1)
    {
      goto LABEL_13;
    }

    v61 = v37 + *(v60 + 48);
    v62 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
    (*v101)(v18, v61 + *(v62 + 20), v9);
    sub_231CB4E90(v61);
    sub_231E0F870();
    v64 = v63;
    v65 = *v100;
    (*v100)(v18, v9);
    sub_231E0F920();
    sub_231E0F870();
    v67 = v66;
    result = (v65)(v15, v9);
    if (v67 - a3 < v64)
    {
      goto LABEL_13;
    }

    v68 = __OFADD__(v39++, 1);
    v24 = v99;
  }

  while (!v68);
  __break(1u);
LABEL_13:

  v69 = v96;

  if (v39 >= 1)
  {
    v70 = *(v69 + 16);
    v71 = sub_231CB4EEC();
    v72 = v87;
    v73 = v88;
    v74 = v89;
    (*(v87 + 16))(v89, v71, v88);
    v75 = v86;

    v76 = sub_231E10E10();
    v77 = sub_231E11AF0();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = v72;
      v79 = swift_slowAlloc();
      v80 = v75;
      v81 = swift_slowAlloc();
      v103 = v81;
      *v79 = 136446722;
      v82 = (*(*v80 + 120))();
      v84 = sub_231CB5000(v82, v83, &v103);

      *(v79 + 4) = v84;
      *(v79 + 12) = 2048;
      *(v79 + 14) = v39;
      *(v79 + 22) = 2048;
      *(v79 + 24) = v70;
      _os_log_impl(&dword_231CAE000, v76, v77, "InMemoryMailResultCache %{public}s: Removing %ld/%ld items", v79, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v81);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v78 + 8))(v89, v73);
    }

    else
    {

      (*(v72 + 8))(v74, v73);
    }

    return sub_231CB543C(v39);
  }

  return result;
}

void OUTLINED_FUNCTION_14()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2)
{

  return sub_231E12100();
}

id OUTLINED_FUNCTION_23_5(void *a1)
{

  return [a1 (v1 + 1144)];
}

uint64_t OUTLINED_FUNCTION_23_6(uint64_t a1)
{
  v4 = v1[95];
  *(v2 - 256) = v1[98];
  *(v2 - 248) = v4;
  v5 = v1[93];
  *(v2 - 240) = v1[94];
  *(v2 - 232) = v5;
  v6 = v1[91];
  *(v2 - 224) = v1[92];
  *(v2 - 216) = v6;
  v7 = v1[87];
  *(v2 - 208) = v1[88];
  *(v2 - 200) = v7;
  v8 = v1[81];
  *(v2 - 192) = v1[84];
  *(v2 - 184) = v8;
  v9 = v1[75];
  *(v2 - 176) = v1[78];
  *(v2 - 168) = v9;
  v10 = v1[71];
  *(v2 - 160) = v1[72];
  *(v2 - 152) = v10;
  v11 = v1[65];
  *(v2 - 144) = v1[68];
  *(v2 - 136) = v11;
  v12 = v1[59];
  *(v2 - 128) = v1[62];
  *(v2 - 120) = v12;
}

char *OUTLINED_FUNCTION_23_7()
{
  v2 = *(v0 + 16) + 1;

  return sub_231D47344(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_23_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_231D75E60(a1, v3);
}

uint64_t OUTLINED_FUNCTION_23_11()
{
}

uint64_t OUTLINED_FUNCTION_23_13(uint64_t a1, uint64_t a2)
{

  return sub_231E12100();
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void a8, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_2_6()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_2_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 80) = a1;
}

void OUTLINED_FUNCTION_2_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{
  v4 = v1[103];
  *(v2 - 256) = v1[104];
  *(v2 - 248) = v4;
  v5 = v1[99];
  *(v2 - 240) = v1[100];
  *(v2 - 232) = v5;
  v6 = v1[95];
  *(v2 - 224) = v1[98];
  *(v2 - 216) = v6;
  v7 = v1[93];
  *(v2 - 208) = v1[94];
  *(v2 - 200) = v7;
  v8 = v1[91];
  *(v2 - 192) = v1[92];
  *(v2 - 184) = v8;
  v9 = v1[87];
  *(v2 - 176) = v1[88];
  *(v2 - 168) = v9;
  v10 = v1[81];
  *(v2 - 160) = v1[84];
  *(v2 - 152) = v10;
  v11 = v1[75];
  *(v2 - 144) = v1[78];
  *(v2 - 136) = v11;
  v12 = v1[71];
  *(v2 - 128) = v1[72];
  *(v2 - 120) = v12;
  v13 = v1[65];
  *(v2 - 112) = v1[68];
  *(v2 - 104) = v13;
  v14 = v1[59];
  *(v2 - 96) = v1[62];
  *(v2 - 88) = v14;
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

char *OUTLINED_FUNCTION_2_31@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;

  return sub_231DCA584(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return sub_231DF3B84(v0, (v1 - 160));
}

BOOL OUTLINED_FUNCTION_2_36(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_11()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_231DC4AB8();
}

void *OUTLINED_FUNCTION_11_1(__n128 a1)
{

  return sub_231CD2C70((v1 + 56), (v1 + 176), 0, 0, v1 + 304, 0.0);
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return sub_231DC4AB8();
}

id OUTLINED_FUNCTION_11_9(void *a1)
{

  return [a1 (v1 + 1144)];
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_11_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_16(uint64_t result)
{
  *(v2 + 4) = result;
  *v1 = result;
  *(v2 + 12) = 2082;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_21()
{

  return sub_231E11D70();
}

uint64_t OUTLINED_FUNCTION_11_23()
{
}

uint64_t OUTLINED_FUNCTION_46_1()
{

  return sub_231CF1DD0(v0 + 1096);
}

uint64_t OUTLINED_FUNCTION_46_8()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t OUTLINED_FUNCTION_46_9(uint64_t a1, unint64_t a2)
{

  return sub_231CB5000(a1, a2, (v2 - 88));
}

uint64_t sub_231CB37DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_26_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2)
{

  return sub_231E12000();
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return sub_231E11C80();
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  v2 = v0[220];
  *(v1 - 128) = v0[221];
  *(v1 - 120) = v2;
  v3 = v0[219];
  *(v1 - 224) = v0[218];
  *(v1 - 216) = v3;
  v4 = v0[217];
  *(v1 - 256) = v0[216];
  *(v1 - 248) = v4;
  v5 = v0[212];
  *(v1 - 192) = v0[213];
  *(v1 - 184) = v5;
  *(v1 - 136) = v0[138];
  v6 = v0[133];
  *(v1 - 152) = v0[134];
  *(v1 - 144) = v6;
  *(v1 - 160) = v0[131];
  v7 = v0[126];
  *(v1 - 176) = v0[127];
  *(v1 - 168) = v7;
  result = v0[122];
  *(v1 - 208) = v0[121];
  *(v1 - 200) = result;
  v9 = v0[108];
  *(v1 - 240) = v0[117];
  *(v1 - 232) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_13(uint64_t a1, uint64_t a2)
{

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_14_14()
{

  return sub_231E115F0();
}

uint64_t OUTLINED_FUNCTION_14_16()
{
}

__n128 OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a26, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, __int128 a25, __n128 a27, __int128 a28)
{
  *v28 = a24;
  v28[1] = a25;
  result = a27;
  v28[2] = a27;
  v28[3] = a28;
  return result;
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_1()
{
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1, uint64_t a2)
{

  return sub_231E12000();
}

void OUTLINED_FUNCTION_17_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1, uint64_t a2)
{

  return sub_231E12000();
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t result)
{
  *(result + 8) = v1;
  *(v3 + 16) = v2;
  return result;
}

void OUTLINED_FUNCTION_9_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_18()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);

  return sub_231DC5348(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_0_12(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void a6, void a7, void a8, uint64_t a3, uint64_t a4, char a5)
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_0_15()
{
  result = *(v0 - 144);
  *(v0 - 128) = *(v0 - 160);
  *(v0 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_231E11C40();
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_231E11C60();
}

uint64_t OUTLINED_FUNCTION_0_39(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_8_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2)
{

  return sub_231E12100();
}

void OUTLINED_FUNCTION_15_3()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t a1, uint64_t a2)
{

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_15_8(__n128 a1)
{

  return sub_231CD2C70((v1 + 416), (v1 + 288), 0, 0, v1 + 16, a1.n128_f64[0]);
}

uint64_t OUTLINED_FUNCTION_15_11()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_15_12(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t a1, uint64_t a2)
{

  return sub_231E11F30();
}

uint64_t OUTLINED_FUNCTION_15_19()
{
}

void OUTLINED_FUNCTION_15_20()
{
  v1[12] = sub_231DEAA60;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_15_21()
{
}

uint64_t sub_231CB4540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_231E11E60();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_231CB4640, 0, 0);
}

uint64_t sub_231CB4640()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_231E11E70();
  v5 = sub_231CB47C8(&qword_2814CBD50, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  OUTLINED_FUNCTION_25();
  sub_231E12170();
  sub_231CB47C8(&qword_2814CBD58, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_231E11E80();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *v8 = v9;
  v8[1] = sub_231CB0F50;
  v10 = v0[11];

  return MEMORY[0x2822008C8](v10, v0 + 2, v4, v5);
}

uint64_t sub_231CB47C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231CB4810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231CB4858(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(uint64_t a1)
{
  result = qword_2814CD6D0;
  if (!qword_2814CD6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231CB4908()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74190, &qword_231E136E8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

BOOL OUTLINED_FUNCTION_5_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_25_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return sub_231E11C80();
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2)
{

  return sub_231E12000();
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1, uint64_t a2)
{

  return sub_231E12100();
}

uint64_t OUTLINED_FUNCTION_5_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

BOOL OUTLINED_FUNCTION_5_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_14()
{
  **(v1 + 16) = v0;
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_21()
{
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821AB4B8](a1, a2, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_5_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_getErrorValue();
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization15SpotlightWriterC23InMemoryMailResultCacheC0H0V4KindO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization12FilterResultO6ReasonO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xC)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 13);
  }
}

uint64_t sub_231CB4E2C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CB4E90(uint64_t a1)
{
  v2 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231CB4F24(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = a2(0);

  return __swift_project_value_buffer(v6, a3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_231CB5000(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_231CB50C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_231CB51C4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_231CB50C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_231CC0558(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_231E11DF0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_231CB51C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void OUTLINED_FUNCTION_30_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, os_log_type_t a16)
{

  _os_log_impl(a1, log, a16, a4, v16, 0x16u);
}

uint64_t OUTLINED_FUNCTION_109()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_30_4()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_30_5()
{
}

double OUTLINED_FUNCTION_30_9()
{
  *(v0 + 792) = 0;
  *(v0 + 800) = 1;
  return 0.0;
}

unint64_t sub_231CB543C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  if (*(*(v1 + 16) + 16) < result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(v1 + 8) + 16) >= result)
  {
    sub_231CB54B0(0, result);
    return sub_231CB572C(v2);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_231CB54B0(uint64_t result, uint64_t a2)
{
  v4 = result;
  v6 = v2 + 1;
  v5 = *v2;
  if (!*v2)
  {
    return sub_231CB560C(v4, a2);
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 <= 0)
  {
    return result;
  }

  v8 = v2;
  v9 = *(*v6 + 16);
  v10 = v9 - v7;
  if ((v9 - v7) > (v9 >> 1))
  {
    swift_beginAccess();
    if ((*(v5 + 16) & 0x3FLL) == (*(v5 + 24) & 0x3FLL) || v10 >= MEMORY[0x23837B140]())
    {
      result = sub_231CC52F4();
      v14 = *v8;
      if (*v8)
      {

        sub_231CC534C((v14 + 16), v14 + 32, v8, v4, a2);

        return sub_231CB560C(v4, a2);
      }

LABEL_18:
      __break(1u);
      return result;
    }
  }

  sub_231CB560C(v4, a2);
  swift_beginAccess();
  v11 = *(v5 + 24) & 0x3FLL;
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(*v6 + 16) >= 0x10uLL;
  }

  if (v12)
  {
    v13 = MEMORY[0x23837B160]();
    return sub_231CC5BA0(v13, v11);
  }

  else
  {

    *v8 = 0;
  }

  return result;
}

uint64_t sub_231CB560C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v11 = v5 + v8;
    }

    else
    {
      v11 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v11 = v5 + v8;
  }

  else
  {
    v11 = v5;
  }

  sub_231CC686C(isUniquelyReferenced_nonNull_native, v11, 1);
  v4 = *v2;
LABEL_15:
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_24:
    *v2 = v4;
    return result;
  }

  v12 = *(v4 + 16);
  v13 = v12 - a2;
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_30;
  }

  v14 = (v4 + 32 + 16 * a2);
  if (v6 != a2 || v14 + 16 * v13 <= v4 + 32 + 16 * v6)
  {
    result = memmove((v4 + 32 + 16 * v6), v14, 16 * v13);
    v12 = *(v4 + 16);
  }

  v16 = __OFADD__(v12, v8);
  v17 = v12 - v7;
  if (!v16)
  {
    *(v4 + 16) = v17;
    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231CB572C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_231CB5794(0, result, *(*v1 + 16));
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_231CB57E0(0, result);
}

uint64_t sub_231CB5794(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_231CB57E0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v11 = v5 + v8;
    }

    else
    {
      v11 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v11 = v5 + v8;
  }

  else
  {
    v11 = v5;
  }

  sub_231CC684C(isUniquelyReferenced_nonNull_native, v11, 1);
  v4 = *v2;
LABEL_15:
  v12 = *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0) - 8);
  v13 = v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v14 = *(v12 + 72);
  v15 = v13 + v14 * v6;
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_19:
    *v2 = v4;
    return result;
  }

  v16 = *(v4 + 16);
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_25;
  }

  result = sub_231CB5940(v13 + v14 * a2, v16 - a2, v15);
  v17 = *(v4 + 16);
  v18 = __OFADD__(v17, v8);
  v19 = v17 - v7;
  if (!v18)
  {
    *(v4 + 16) = v19;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_231CB5940(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231CB5A28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74038, qword_231E13528);
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231CB5B24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231CB5B5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231CB5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 13)
  {
    v4 = (*(a1 + 16) >> 2) & 0xC | (*(a1 + 16) >> 6);
    v5 = v4 ^ 0xF;
    v6 = 16 - v4;
    if (v5 >= 0xD)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_231E0F950();
    v11 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_231CB5C30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 13)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 16 * (((-a2 >> 2) & 3) - 4 * a2);
  }

  else
  {
    v7 = sub_231E0F950();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231CB5CBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB6050()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744A0, &qword_231E16B50);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_231CB6080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_231E0F950();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_231CB6114(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_231E0F950();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231CB6224()
{
  v1 = sub_231E10A30();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_231CB6300()
{
  v1 = sub_231E106A0();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74518, &qword_231E16F78);
  OUTLINED_FUNCTION_24();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_231CB6BBC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231CB6C1C()
{
  OUTLINED_FUNCTION_118();
  v1 = sub_231E10EC0();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_231E0FE00();
  OUTLINED_FUNCTION_24();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_113();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_231CB6D4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB6D84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_231CB6DA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231CB6DD8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB6E5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB0, &qword_231E234D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_231CB6F00()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_231CB6F48(void *result, uint64_t a2, __int16 a3)
{
  if (HIBYTE(a3) != 255)
  {
    sub_231D42D00(result, a2, a3, SHIBYTE(a3));
  }
}

uint64_t sub_231CB6F70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BC8, &qword_231E1C5D0);
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_231CB7058()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB70B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_231CB717C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_231CB727C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_231CB72B4()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_231CB72EC()
{

  OUTLINED_FUNCTION_108_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231CB7348()
{
  sub_231E0F950();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_116_4();

  sub_231CF4354(*(v0 + 48), *(v0 + 56));
  sub_231CF4354(*(v0 + 64), *(v0 + 72));
  v1 = OUTLINED_FUNCTION_59_6();
  v2(v1);

  v3 = OUTLINED_FUNCTION_110_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_231CB7414()
{

  OUTLINED_FUNCTION_19_8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231CB7448(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_231CB7458()
{
  sub_231E0F950();
  OUTLINED_FUNCTION_24();

  v1 = OUTLINED_FUNCTION_59_6();
  v2(v1);
  v3 = OUTLINED_FUNCTION_110_3();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_231CB7514()
{

  OUTLINED_FUNCTION_108_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231CB7558()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231CB7598()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_231CB75E8()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_231CB7640()
{
  sub_231E0F950();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_116_4();
  v0 = OUTLINED_FUNCTION_59_6();
  v1(v0);
  v2 = OUTLINED_FUNCTION_110_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231CB76F8()
{
  OUTLINED_FUNCTION_118();
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(type metadata accessor for EntityKind(0) - 8);
  v8 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  (*(v3 + 8))(v0 + v4, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_231E10340();
      goto LABEL_7;
    case 1u:
      sub_231E106A0();
      goto LABEL_7;
    case 2u:
      sub_231E10A30();
      goto LABEL_7;
    case 3u:
      sub_231E10BE0();
      goto LABEL_7;
    case 4u:
      sub_231E10AE0();
LABEL_7:
      OUTLINED_FUNCTION_12();
      (*(v10 + 8))(v0 + v8);
      break;
    default:
      break;
  }

  sub_231CF4354(*(v0 + ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
  OUTLINED_FUNCTION_113();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_231CB7BD4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E98, &qword_231E1CBE0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_231CB7CB8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F38, &qword_231E1D178);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_231CB7CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231E0F950();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_231CB7DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231E0F950();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_231CB7E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231E0F950();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_231CB7ED4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231E0F950();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231CB7F84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_231CB7FD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB8018()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231CB804C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738);
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231CB8128()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75028, &unk_231E1D738);
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  v7 = (v4 + 72) & ~v4;

  (*(v3 + 8))(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t sub_231CB8238()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CB8270()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231CB8394()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_299_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231CB83F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_477();
  v6 = sub_231E0FF70();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0x16)
    {
      return v8 - 21;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_231CB849C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_95_5();
  result = sub_231E0FF70();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2 + 21;
  }

  return result;
}

uint64_t sub_231CB8568()
{
  v1 = sub_231E10340();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_231CB8650()
{
  type metadata accessor for EntityKind(0);
  OUTLINED_FUNCTION_7_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v5 = *(v4 + 64);
  swift_unknownObjectRelease();

  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_231E10340();
      goto LABEL_7;
    case 1u:
      sub_231E106A0();
      goto LABEL_7;
    case 2u:
      sub_231E10A30();
      goto LABEL_7;
    case 3u:
      sub_231E10BE0();
      goto LABEL_7;
    case 4u:
      sub_231E10AE0();
LABEL_7:
      OUTLINED_FUNCTION_12();
      (*(v6 + 8))(v0 + v3);
      break;
    default:
      break;
  }

  return MEMORY[0x2821FE8E8](v0, ((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_231CB87E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_231CB8964()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_299_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231CB89A0()
{
  OUTLINED_FUNCTION_27();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231CB89D4()
{
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = *(v2 + 80);
  OUTLINED_FUNCTION_158_2();
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + ((v4 + 40) & ~v4), v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v4 | 7);
}

uint64_t sub_231CB8B60()
{
  v1 = sub_231E10340();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_231CB8C34()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231CB8C78()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231CB8CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231E0F950();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = type metadata accessor for EntityKind(0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_231CB8D88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231E0F950();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = type metadata accessor for EntityKind(0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_231CB8EA4()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231CB8EE8()
{
  OUTLINED_FUNCTION_118();
  type metadata accessor for EntityKind(0);
  OUTLINED_FUNCTION_7_4();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for SummarizationPipeline.Request(0);
  OUTLINED_FUNCTION_7_4();
  v7 = (v2 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_231E10340();
      goto LABEL_7;
    case 1u:
      sub_231E106A0();
      goto LABEL_7;
    case 2u:
      sub_231E10A30();
      goto LABEL_7;
    case 3u:
      sub_231E10BE0();
      goto LABEL_7;
    case 4u:
      sub_231E10AE0();
LABEL_7:
      OUTLINED_FUNCTION_22_9();
      (*(v8 + 8))(v0 + v2);
      break;
    default:
      break;
  }

  sub_231E0F950();
  OUTLINED_FUNCTION_22_9();
  (*(v9 + 8))(v0 + v7);
  if (*(v0 + v7 + *(v5 + 20)))
  {
  }

  v10 = *(v5 + 24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_231E10340();
      goto LABEL_16;
    case 1u:
      sub_231E106A0();
      goto LABEL_16;
    case 2u:
      sub_231E10A30();
      goto LABEL_16;
    case 3u:
      sub_231E10BE0();
      goto LABEL_16;
    case 4u:
      sub_231E10AE0();
LABEL_16:
      OUTLINED_FUNCTION_22_9();
      (*(v11 + 8))(v0 + v7 + v10);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_113();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_231CB918C()
{
  OUTLINED_FUNCTION_118();
  v1 = type metadata accessor for SummarizationPipeline.Request(0);
  OUTLINED_FUNCTION_7_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  type metadata accessor for EntityKind(0);
  OUTLINED_FUNCTION_7_4();
  v7 = *(v6 + 80);
  v8 = v3 + v5 + v7;
  v9 = v0 + v3;
  sub_231E0F950();
  OUTLINED_FUNCTION_22_9();
  (*(v10 + 8))(v9);
  if (*(v9 + *(v1 + 20)))
  {
  }

  v11 = v8 & ~v7;
  v12 = *(v1 + 24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_231E10340();
      goto LABEL_9;
    case 1u:
      sub_231E106A0();
      goto LABEL_9;
    case 2u:
      sub_231E10A30();
      goto LABEL_9;
    case 3u:
      sub_231E10BE0();
      goto LABEL_9;
    case 4u:
      sub_231E10AE0();
LABEL_9:
      OUTLINED_FUNCTION_22_9();
      (*(v13 + 8))(v9 + v12);
      break;
    default:
      break;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_231E10340();
      goto LABEL_16;
    case 1u:
      sub_231E106A0();
      goto LABEL_16;
    case 2u:
      sub_231E10A30();
      goto LABEL_16;
    case 3u:
      sub_231E10BE0();
      goto LABEL_16;
    case 4u:
      sub_231E10AE0();
LABEL_16:
      OUTLINED_FUNCTION_22_9();
      (*(v14 + 8))(v0 + v11);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_113();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_231CB941C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_299_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231CB9458()
{
  v1 = (type metadata accessor for ConversationDeletionInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  sub_231E0F950();
  OUTLINED_FUNCTION_22_9();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_231CB96AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231CB9BE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231CB9C9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_95_5();
  v4 = sub_231E0F950();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_231CB9CE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_95_5();
  v4 = sub_231E0F950();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_231CB9ED0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231CB9F40()
{

  OUTLINED_FUNCTION_27();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231CB9FCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75998, &unk_231E234B8);
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_231CBA06C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231CBA0AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231CBA138(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_231E11ED0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_231CBA16C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_231CC2B98(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_231CBA180()
{
  v0 = sub_231E10A70();
  v2 = v1;
  v3 = sub_231CC7D1C();
  if (v2)
  {
    if (v0 == *v3 && v2 == v3[1])
    {

      v6 = 0;
    }

    else
    {
      v5 = sub_231E12100();

      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

unint64_t sub_231CBA1FC(char a1)
{
  result = 0x20676E697373694DLL;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_231CBA2B8(unsigned __int8 a1)
{
  sub_231E12220();
  MEMORY[0x23837D730](a1);
  return sub_231E12250();
}

uint64_t sub_231CBA31C(uint64_t a1)
{
  v2 = *v1;
  sub_231E12220();
  MEMORY[0x23837D730](v2);
  return sub_231E12250();
}

uint64_t sub_231CBA378(void *a1)
{
  v2 = swift_allocObject();
  sub_231CBA3B8(a1);
  return v2;
}

uint64_t sub_231CBA3B8(void *a1)
{
  *(v1 + 24) = 0;
  v3 = [objc_allocWithZone(MEMORY[0x277D06D50]) initWithStore:a1 options:1];

  *(v1 + 16) = v3;
  return v1;
}

id sub_231CBA414()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_231CBA480(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  OUTLINED_FUNCTION_31();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231CBA4AC()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = objc_allocWithZone(MEMORY[0x277D06D60]);
  v5 = sub_231CC0040(sub_231CC15C8, v3);
  v0[5] = v5;

  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  v0[7] = v7;
  sub_231CC1784(0, &qword_2814CAEF0, 0x277D06D58);
  *v7 = v0;
  v7[1] = sub_231CBA5FC;
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822008A0](v8);
}

uint64_t sub_231CBA5FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CBA700()
{
  OUTLINED_FUNCTION_18();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_231CBA764()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v1();
}

void sub_231CBA7C8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74038, qword_231E13528);
  OUTLINED_FUNCTION_24();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  (*(v8 + 16))(aBlock - v10, a1, v6);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v8 + 32))(v13 + v12, v11, v6);
  aBlock[4] = sub_231CC1620;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231CBAC90;
  aBlock[3] = &block_descriptor_14;
  v14 = _Block_copy(aBlock);
  v15 = a2;

  v16 = [v15 requestRepresentationWithOptions:a3 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_231CBA994(void *a1, void *a2, void *a3)
{
  v6 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
    v13 = sub_231CB4EEC();
    (*(v8 + 16))(v11, v13, v6);
    v14 = a2;
    v15 = a3;
    v16 = sub_231E10E10();
    v17 = sub_231E11AD0();

    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_16_0();
      v18 = swift_slowAlloc();
      v33 = OUTLINED_FUNCTION_53();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v18 = 136315394;
      v19 = [v15 searchableMessageID];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 stringValue];
        HIDWORD(v32) = v17;
        v22 = v21;

        v20 = sub_231E11620();
        v24 = v23;

        LOBYTE(v17) = BYTE4(v32);
      }

      else
      {
        v24 = 0xE000000000000000;
      }

      sub_231CB5000(v20, v24, &v35);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41();
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v30;
      v31 = v33;
      *v33 = v30;
      _os_log_impl(&dword_231CAE000, v16, v17, "Unable to request representation for message: %s with error %@", v18, 0x16u);
      sub_231CC154C(v31, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_30();
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    (*(v8 + 8))(v11, v6);
    v35 = a2;
  }

  else
  {
    if (a1)
    {
      v35 = a1;
      v25 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74038, qword_231E13528);
      return sub_231E11940();
    }

    sub_231CC16C0();
    v27 = swift_allocError();
    *v28 = 0;
    v35 = v27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74038, qword_231E13528);
  return sub_231E11930();
}

void sub_231CBAC90(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_231CBAD1C()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231E11670();
  OUTLINED_FUNCTION_47(v3);
  v1[4] = OUTLINED_FUNCTION_55();
  v4 = sub_231E0F780();
  v1[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_69();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231CBADF0()
{
  OUTLINED_FUNCTION_18();
  v1 = *MEMORY[0x277D06BA0];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_231CBAE90;
  v3 = *(v0 + 16);

  return sub_231CBA480(v3, v1);
}

uint64_t sub_231CBAE90()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v5;
  *(v3 + 88) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_19();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_231CBAFD8()
{
  v1 = [*(v0 + 80) contentURL];
  if (!v1)
  {
    sub_231CC16C0();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v2 = v1;
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_231E0F730();

  (*(v7 + 32))(v4, v5, v6);
  sub_231E11660();
  v8 = sub_231E115E0();
  if (v3)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
LABEL_5:

    OUTLINED_FUNCTION_19();

    return v11();
  }

  v13 = v8;
  v14 = v9;
  v15 = *(v0 + 80);
  (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));

  OUTLINED_FUNCTION_34();

  return v16(v13, v14);
}

uint64_t sub_231CBB1B4()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_231E10E30();
  v1[6] = v3;
  OUTLINED_FUNCTION_6(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231CBB288()
{
  v40 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v0[9] = sub_231E10000();
  v0[10] = v1;
  v2 = sub_231CBA414();
  v3 = [v2 messageRepository];
  v0[11] = v3;

  sub_231E10000();
  v4 = sub_231E115F0();

  v5 = [v3 messageForSearchableItemIdentifier_];
  v0[12] = v5;

  v0[2] = 0;
  v6 = [v5 resultWithTimeout:v0 + 2 error:3.0];
  v0[13] = v6;
  v7 = v0[2];
  if (v6)
  {
    v8 = v7;
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_231CBB678;

    return sub_231CBAD1C();
  }

  else
  {
    v11 = v7;
    v12 = sub_231E0F6F0();

    swift_willThrow();
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];
    v16 = sub_231CB4EEC();
    (*(v14 + 16))(v13, v16, v15);

    v17 = v12;
    v18 = sub_231E10E10();
    v19 = sub_231E11AD0();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[11];
    v22 = v0[12];
    v23 = v0[10];
    if (v20)
    {
      v24 = v0[9];
      v25 = v0[7];
      v37 = v0[6];
      v38 = v0[8];
      OUTLINED_FUNCTION_16_0();
      v36 = v21;
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = sub_231CB5000(v24, v23, v39);

      *(v26 + 4) = v27;
      *(v26 + 12) = 2080;
      v0[3] = v12;
      v28 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
      v29 = sub_231E11680();
      v31 = sub_231CB5000(v29, v30, v39);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_231CAE000, v18, v19, "Failed to fetch Mail HTML representation for uniqueId: %s, error: %s", v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_14();

      (*(v25 + 8))(v38, v37);
    }

    else
    {

      v32 = OUTLINED_FUNCTION_33();
      v34(v32, v33);
    }

    OUTLINED_FUNCTION_34();

    return v35(0, 0);
  }
}

uint64_t sub_231CBB678()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_15();
  *v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  v6[15] = v0;

  if (!v0)
  {

    v6[16] = v3;
    v6[17] = v5;
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CBB7C8()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);

  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_59_0();

  return v4(v3);
}

uint64_t sub_231CBB874()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 120);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = sub_231CB4EEC();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_49();

  if (OUTLINED_FUNCTION_39_0())
  {
    v8 = *(v0 + 96);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 56);
    v31 = *(v0 + 64);
    v29 = *(v0 + 88);
    v30 = *(v0 + 48);
    OUTLINED_FUNCTION_16_0();
    v12 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_231CB5000(v10, v9, v32);

    *(v12 + 4) = v13;
    *(v12 + 12) = 2080;
    *(v0 + 24) = v1;
    v14 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
    v15 = sub_231E11680();
    v17 = sub_231CB5000(v15, v16, v32);

    *(v12 + 14) = v17;
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_11();

    (*(v11 + 8))(v31, v30);
  }

  else
  {
    v24 = *(v0 + 88);
    v23 = *(v0 + 96);

    v25 = OUTLINED_FUNCTION_33();
    v26(v25);
  }

  OUTLINED_FUNCTION_34();

  return v27(0, 0);
}

uint64_t sub_231CBBAF0()
{
  OUTLINED_FUNCTION_29();
  *(v1 + 16) = *v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_23(v2);

  return v4(v3);
}

uint64_t sub_231CBBC28()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231CBBD18()
{
  OUTLINED_FUNCTION_29();
  if (*(v0 + 40))
  {
    sub_231CBBDA0();
  }

  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_48();

  return v2(v1);
}

uint64_t sub_231CBBDA0()
{
  v0 = objc_opt_self();
  OUTLINED_FUNCTION_48();
  v1 = sub_231E115F0();
  v2 = [v0 snippetFromHTMLBody:v1 options:32 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:0];

  sub_231E11620();
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_231CBBE30()
{
  OUTLINED_FUNCTION_18();
  v1[57] = v2;
  v1[58] = v0;
  v1[56] = v3;
  v1[59] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v4);
  v1[60] = OUTLINED_FUNCTION_55();
  v5 = sub_231E0F950();
  OUTLINED_FUNCTION_47(v5);
  v1[61] = OUTLINED_FUNCTION_55();
  v6 = sub_231E10010();
  v1[62] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[63] = v7;
  v1[64] = OUTLINED_FUNCTION_55();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  OUTLINED_FUNCTION_47(v8);
  v1[65] = OUTLINED_FUNCTION_69();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v9 = sub_231E10400();
  v1[68] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[69] = v10;
  v1[70] = OUTLINED_FUNCTION_69();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v11 = sub_231E10210();
  v1[74] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[75] = v12;
  v1[76] = OUTLINED_FUNCTION_55();
  v13 = sub_231E10E30();
  v1[77] = v13;
  OUTLINED_FUNCTION_6(v13);
  v1[78] = v14;
  v1[79] = OUTLINED_FUNCTION_69();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231CBC12C()
{
  v71 = v0;
  v1 = v0[91];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[57];
  v5 = sub_231CB4EEC();
  v0[92] = v5;
  v6 = *(v2 + 16);
  v0[93] = v6;
  v0[94] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v6)(v1, v5, v3);

  v7 = sub_231E10E10();
  v8 = sub_231E11AC0();

  v9 = os_log_type_enabled(v7, v8);
  v69 = v0[91];
  v10 = v0[78];
  v68 = v0[77];
  if (v9)
  {
    v67 = v5;
    v11 = v0[57];
    swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_28();
    v70 = v12;
    *v6 = 136446210;
    v13 = sub_231DE2398(v11);
    v15 = v4;
    v16 = sub_231CB5000(v13, v14, &v70);
    v5 = v67;

    *(v6 + 4) = v16;
    v4 = v15;
    _os_log_impl(&dword_231CAE000, v7, v8, "%{public}s Fetching mail thread", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  v19 = *(v10 + 8);
  v17 = v10 + 8;
  v18 = v19;
  v19(v69, v68);
  v20 = sub_231E10100();
  if (!v21)
  {
    (v6)(v0[82], v5, v0[77]);

    v36 = sub_231E10E10();
    sub_231E11AD0();

    OUTLINED_FUNCTION_39_0();
    v37 = v0[82];
    OUTLINED_FUNCTION_61();
    if (v38)
    {
      OUTLINED_FUNCTION_67_0();
      v39 = OUTLINED_FUNCTION_17_1();
      v70 = v39;
      *v37 = 136446210;
      v40 = sub_231DE2398(v4);
      v42 = sub_231CB5000(v40, v41, &v70);

      *(v37 + 4) = v42;
      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11();
    }

    v18(v37, v17);
    if (v0[57])
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v22 = sub_231CBF4B0(v20, v21);
  v0[95] = v22;
  if (v23)
  {
    (v6)(v0[83], v5, v0[77]);

    v24 = sub_231E10E10();
    sub_231E11AD0();

    OUTLINED_FUNCTION_39_0();
    v25 = v0[83];
    OUTLINED_FUNCTION_61();
    if (v26)
    {
      OUTLINED_FUNCTION_67_0();
      v27 = OUTLINED_FUNCTION_17_1();
      v70 = v27;
      *v25 = 136446210;
      v28 = sub_231DE2398(v4);
      v30 = sub_231CB5000(v28, v29, &v70);

      *(v25 + 4) = v30;
      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11();
    }

    v18(v25, v17);
    if (v0[57])
    {
LABEL_15:
      sub_231DDABDC();
    }

LABEL_16:
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_13_1();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_46();

    __asm { BRAA            X1, X16 }
  }

  v48 = v22;
  v66 = sub_231CC1784(0, &qword_2814CAE98, 0x277D06DB8);
  v0[96] = v66;
  v70 = MEMORY[0x277D84F90];
  sub_231E11E30();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_231E11E10();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_37_0();
  sub_231E11E50();
  sub_231E11E20();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_231E11E10();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_37_0();
  sub_231E11E50();
  sub_231E11E20();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_231E11E10();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_37_0();
  sub_231E11E50();
  sub_231E11E20();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_231E11E10();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_37_0();
  sub_231E11E50();
  sub_231E11E20();
  sub_231CC1784(0, &qword_2814CAF08, 0x277CCA920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_231E13410;
  v50 = objc_opt_self();
  *(v49 + 32) = [v50 predicateForMessagesInConversation_];
  sub_231CC1784(0, &qword_2814CBD70, 0x277CCABB0);
  v51 = sub_231E11850();

  v52 = [v50 predicateForExcludingMessagesInMailboxesWithTypes_];

  *(v49 + 40) = v52;
  v53 = sub_231CBF7A8(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_231E13420;
  *(v54 + 32) = [objc_opt_self() sortDescriptorForDateAscending_];
  v55 = objc_allocWithZone(MEMORY[0x277D06E80]);
  v56 = sub_231CC01B0(v66, v53, v54, 0, 0xD000000000000023, 0x8000000231E2DCD0);
  v0[97] = v56;
  v57 = sub_231CBA414();
  v58 = [v57 messageRepository];
  v0[98] = v58;

  v59 = sub_231D1308C();
  v0[2] = v0;
  v0[7] = v0 + 55;
  v0[3] = sub_231CBC958;
  v60 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB8, &qword_231E13470);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231CBF82C;
  v0[13] = &block_descriptor;
  v0[14] = v60;
  [v58 performQuery:v56 limit:v59 completionHandler:?];
  OUTLINED_FUNCTION_46();

  return MEMORY[0x282200938](v61);
}

uint64_t sub_231CBC958()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 792) = *(v3 + 48);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231CBCA58()
{
  v40 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 744);
  v3 = *(v0 + 440);
  *(v0 + 800) = v3;
  *(v0 + 432) = v3;

  v4 = OUTLINED_FUNCTION_40();
  v2(v4);

  v5 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_70_0();
  v6 = OUTLINED_FUNCTION_39_0();
  v7 = *(v0 + 720);
  v8 = *(v0 + 624);
  v9 = *(v0 + 616);
  if (v6)
  {
    OUTLINED_FUNCTION_10_2();
    swift_slowAlloc();
    v39[0] = OUTLINED_FUNCTION_17_1();
    v10 = OUTLINED_FUNCTION_52(4.8752e-34);
    sub_231CB5000(v10, v11, v39);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_63();
    *(v9 + 14) = sub_231CBA138(v3);
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();

    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  else
  {

    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  *(v0 + 808) = v17;

  v19 = sub_231CBF960(v18);
  v21 = v20;

  *(v0 + 816) = v19;
  if (v21)
  {
    OUTLINED_FUNCTION_7_1();
    v22(*(v0 + 672));

    v23 = sub_231E10E10();
    v24 = sub_231E11AD0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 760);
      v38 = *(v0 + 672);
      v37 = *(v0 + 616);
      OUTLINED_FUNCTION_10_2();
      v36 = v26;
      swift_slowAlloc();
      v39[0] = OUTLINED_FUNCTION_17_1();
      v27 = OUTLINED_FUNCTION_52(4.8752e-34);
      sub_231CB5000(v27, v28, v39);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_26();
      *(v9 + 14) = v25;
      _os_log_impl(&dword_231CAE000, v23, v24, "%{public}s Unable to fetch mail thread messages, parent email unexpectedly not in conversation: %lld", v9, 0x16u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_11();

      v29 = v37;
      v30 = v38;
    }

    else
    {

      v30 = OUTLINED_FUNCTION_33();
    }

    v17(v30, v29);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1_1();

    OUTLINED_FUNCTION_19();

    return v34();
  }

  else
  {
    sub_231CC0ED4(v19, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v35 = OUTLINED_FUNCTION_48();
      v31 = MEMORY[0x23837D2A0](v35);
    }

    else
    {
      v31 = *(v3 + 8 * v19 + 32);
    }

    *(v0 + 824) = v31;
    v32 = swift_task_alloc();
    *(v0 + 832) = v32;
    *v32 = v0;
    v32[1] = sub_231CBCE98;

    return sub_231CBAD1C();
  }
}

uint64_t sub_231CBCE98()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v7 = v6;
  OUTLINED_FUNCTION_15();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v7 + 840) = v0;

  if (!v0)
  {

    *(v7 + 848) = v3;
    *(v7 + 856) = v5;
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231CBCFC0()
{
  v77 = v0;
  v1 = sub_231CBBDA0();
  v3 = v2;

  if (!v3)
  {
    v16 = v0[97];
    v17 = v0[76];
    OUTLINED_FUNCTION_43_0();
    (*(v18 + 104))(v17, *MEMORY[0x277D42270]);
    sub_231E10230();

    goto LABEL_52;
  }

  v4 = v0[102];
  v5 = v0[76];
  OUTLINED_FUNCTION_43_0();
  *v5 = v1;
  v5[1] = v3;
  (*(v6 + 104))(v5, *MEMORY[0x277D42268]);
  sub_231E10230();
  v7 = (v4 + 1);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = sub_231CBA138(v0[100]);
  if (v8 < v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  i = v8;
  v10 = v0[100];
  v11 = OUTLINED_FUNCTION_48();
  sub_231CC14F4(v11, v12);
  sub_231CC14F4(i, v10);
  if ((v10 & 0xC000000000000001) == 0 || v7 == i)
  {
    v15 = v0[100];
  }

  else
  {
    if (v7 >= i)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v13 = v4 + 1;
    do
    {
      v14 = v13 + 1;
      sub_231E11D90();
      v13 = v14;
    }

    while (i != v14);
    v15 = v0[100];
  }

  if (v15 >> 62)
  {
LABEL_18:
    sub_231E11EE0();
    v7 = v23;
    i = v24;

    if ((i & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if ((i & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  i = (2 * i) | 1;
  if ((i & 1) == 0)
  {
LABEL_15:
    v19 = OUTLINED_FUNCTION_57();
    sub_231CC0F10(v19, v20, v7, i);
    v22 = v21;
LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

LABEL_19:
  sub_231E12120();
  swift_unknownObjectRetain_n();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x277D84F90];
  }

  v26 = *(v25 + 16);

  if (__OFSUB__(i >> 1, v7))
  {
    goto LABEL_59;
  }

  if (v26 != (i >> 1) - v7)
  {
LABEL_60:
    swift_unknownObjectRelease_n();
    goto LABEL_15;
  }

  v22 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v22)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_26:
  v27 = MEMORY[0x277D84F90];
  v7 = v0[100];
  swift_beginAccess();
  v0[54] = v22;

  v76 = v27;
  v28 = sub_231CBA138(v22);

  for (i = 0; v28 != i; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x23837D2A0](i, v22);
    }

    else
    {
      if (i >= *(v22 + 16))
      {
        goto LABEL_56;
      }

      v29 = *(v22 + 8 * i + 32);
    }

    v30 = v29;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v7 = [v29 flags];
    v31 = [v7 draft];

    if (v31 & 1) != 0 || (v7 = [v30 flags], v32 = objc_msgSend(v7, sel_deleted), v7, (v32))
    {
    }

    else
    {
      v7 = &v76;
      sub_231E11E10();
      sub_231E11E40();
      sub_231E11E50();
      sub_231E11E20();
    }
  }

  v33 = v0[93];
  v34 = v0[92];
  v35 = v0[89];
  v36 = v0[77];

  v37 = v76;
  v0[108] = v76;
  v0[54] = v37;

  v33(v35, v34, v36);

  v38 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_70_0();
  v39 = OUTLINED_FUNCTION_39_0();
  v40 = v0[101];
  v41 = v0[89];
  v42 = v0[77];
  if (v39)
  {
    OUTLINED_FUNCTION_10_2();
    swift_slowAlloc();
    v76 = OUTLINED_FUNCTION_17_1();
    v43 = OUTLINED_FUNCTION_52(4.8752e-34);
    sub_231CB5000(v43, v44, &v76);
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_63();
    *(v41 + 14) = sub_231CBA138(v37);
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();
  }

  v40(v41, v42);
  v50 = sub_231CBA138(v37);
  v0[109] = v50;
  if (!v50)
  {
    v54 = OUTLINED_FUNCTION_5();
    v55(v54);
    v56 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();

    v57 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_49();

    v58 = OUTLINED_FUNCTION_39_0();
    v59 = v0[101];
    v60 = v0[77];
    if (v58)
    {
      OUTLINED_FUNCTION_10_2();
      swift_slowAlloc();
      v76 = OUTLINED_FUNCTION_17_1();
      v61 = OUTLINED_FUNCTION_52(4.8752e-34);
      sub_231CB5000(v61, v62, &v76);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_26();
      v63 = *(MEMORY[0x277D84F90] + 16);

      *(v59 + 14) = v63;
      v56 = MEMORY[0x277D84F90];

      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v64, v65, v66, v67, v68, 0x16u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v69 = OUTLINED_FUNCTION_33();
    (v59)(v69);
    OUTLINED_FUNCTION_27_0();
    *v60 = v56;
    sub_231E10290();
    OUTLINED_FUNCTION_12();
    v72 = OUTLINED_FUNCTION_45();
    v73(v72);
    OUTLINED_FUNCTION_35_0();

LABEL_52:
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_13_1();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_46();

    __asm { BRAA            X1, X16 }
  }

  v0[110] = *MEMORY[0x277CBCFC0];
  v0[111] = MEMORY[0x277D84F90];
  v51 = v0[108];

  if ((v51 & 0xC000000000000001) != 0)
  {
    v53 = MEMORY[0x23837D2A0](0, v51);
  }

  else
  {
    if (!*(v51 + 16))
    {
      __break(1u);
      return result;
    }

    v53 = *(v51 + 32);
  }

  v0[112] = v53;
  v0[113] = 1;
  v70 = swift_task_alloc();
  v0[114] = v70;
  *v70 = v0;
  OUTLINED_FUNCTION_2(v70);
  OUTLINED_FUNCTION_46();

  return sub_231CBAD1C();
}

uint64_t sub_231CBD7A8()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_15();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v5[115] = v9;
  v5[116] = v0;

  if (!v0)
  {
    v5[117] = v3;
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_231CBD8BC()
{
  v155 = v0;
  v2 = *(v0 + 896);
  sub_231CBBDA0();
  v3 = [v2 senderAddress];
  if (!v3)
  {

LABEL_9:
    v11 = *(v0 + 896);
    OUTLINED_FUNCTION_7_1();
    v12(*(v0 + 688));

    v13 = v11;
    v14 = sub_231E10E10();
    v15 = sub_231E11AD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 896);
      v147 = *(v0 + 688);
      v150 = *(v0 + 808);
      v17 = *(v0 + 616);
      v18 = *(v0 + 456);
      OUTLINED_FUNCTION_16_0();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_53();
      v20 = OUTLINED_FUNCTION_28();
      v154[0] = v20;
      *v19 = 136446466;
      v21 = sub_231DE2398(v18);
      sub_231CB5000(v21, v22, v154);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_41();
      v23 = [v16 searchableMessageID];
      *(v19 + 14) = v23;
      *v1 = v23;
      OUTLINED_FUNCTION_68_0(&dword_231CAE000, v24, v25, "%{public}s Skipping message with unique id: %@. Failed to get sender handle, this may lead to incorrect summaries due to key content missing.");
      sub_231CC154C(v1, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_14();
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_30();

      v150(v147, v17);
    }

    else
    {
      v15 = *(v0 + 808);
      OUTLINED_FUNCTION_71();
      v26 = OUTLINED_FUNCTION_22();
      v15(v26);
    }

    v27 = *(v0 + 896);
    if (*(v0 + 456))
    {
      sub_231DDABDC();
    }

    goto LABEL_15;
  }

  v4 = v3;
  v5 = &off_278947000;
  v6 = [v3 emailAddressValue];
  if (v6)
  {
    sub_231CC1488(v6, &selRef_displayName);
  }

  v7 = [v4 emailAddressValue];
  if (v7)
  {
    sub_231CC1488(v7, &selRef_simpleAddress);
  }

  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  sub_231E11620();
  LOBYTE(v137) = 0;
  OUTLINED_FUNCTION_48();
  sub_231E103D0();
  if (__swift_getEnumTagSinglePayload(v9, 1, v8) == 1)
  {
    v10 = *(v0 + 536);

    swift_unknownObjectRelease();

    sub_231CC154C(v10, &dword_27DD73FA0, &dword_231E13460);
    goto LABEL_9;
  }

  v46 = *(v0 + 896);
  v144 = *(*(v0 + 552) + 32);
  (v144)(*(v0 + 584), *(v0 + 536), *(v0 + 544));
  v47 = [v46 toList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74030, &qword_231E13490);
  i = sub_231E11870();

  v152 = sub_231CBA138(i);
  v48 = 0;
  v146 = i & 0xC000000000000001;
  v148 = i;
  v145 = i & 0xFFFFFFFFFFFFFF8;
  v139 = MEMORY[0x277D84F90];
  while (v152 != v48)
  {
    if (v146)
    {
      i = MEMORY[0x23837D2A0](v48, v148);
    }

    else
    {
      if (v48 >= *(v145 + 16))
      {
        goto LABEL_69;
      }

      i = *(v148 + 8 * v48 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v49 = [i v5[325]];
    if (v49)
    {
      sub_231CC1488(v49, &selRef_displayName);
    }

    v50 = [i v5[325]];
    if (v50)
    {
      sub_231CC1488(v50, &selRef_simpleAddress);
    }

    v51 = *(v0 + 544);
    v52 = *(v0 + 520);
    sub_231E11620();
    LOBYTE(v138) = 0;
    sub_231E103D0();
    if (__swift_getEnumTagSinglePayload(v52, 1, v51) == 1)
    {
      v53 = *(v0 + 896);
      v54 = *(v0 + 744);
      v55 = *(v0 + 456);
      sub_231CC154C(*(v0 + 520), &dword_27DD73FA0, &dword_231E13460);
      v56 = OUTLINED_FUNCTION_40();
      v54(v56);

      v57 = v53;
      v58 = sub_231E10E10();
      v59 = sub_231E11AD0();

      if (os_log_type_enabled(v58, v59))
      {
        v142 = *(v0 + 704);
        v143 = *(v0 + 808);
        v141 = *(v0 + 616);
        v60 = *(v0 + 456);
        v140 = *(v0 + 896);
        OUTLINED_FUNCTION_16_0();
        v61 = swift_slowAlloc();
        OUTLINED_FUNCTION_53();
        v62 = OUTLINED_FUNCTION_17_1();
        v154[0] = v62;
        *v61 = 136446466;
        v63 = sub_231DE2398(v60);
        v65 = sub_231CB5000(v63, v64, v154);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2112;
        v66 = [v140 searchableMessageID];
        *(v61 + 14) = v66;
        *v55 = v66;
        _os_log_impl(&dword_231CAE000, v58, v59, "%{public}s Skipping recipient, failed to create handle, message id: %@", v61, 0x16u);
        sub_231CC154C(v55, &qword_27DD74D30, &unk_231E13480);
        OUTLINED_FUNCTION_11();
        __swift_destroy_boxed_opaque_existential_0(v62);
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_30();

        v143(v142, v141);
      }

      else
      {
        v68 = *(v0 + 808);

        v69 = OUTLINED_FUNCTION_33();
        v68(v69);
      }

      v67 = 1;
      v5 = &off_278947000;
    }

    else
    {
      (v144)(*(v0 + 528), *(v0 + 520), *(v0 + 544));
      v67 = 0;
    }

    v70 = *(v0 + 544);
    v71 = *(v0 + 528);
    __swift_storeEnumTagSinglePayload(v71, v67, 1, v70);
    swift_unknownObjectRelease();
    if (__swift_getEnumTagSinglePayload(v71, 1, v70) == 1)
    {
      sub_231CC154C(*(v0 + 528), &dword_27DD73FA0, &dword_231E13460);
      ++v48;
    }

    else
    {
      (v144)(*(v0 + 576), *(v0 + 528), *(v0 + 544));
      v72 = OUTLINED_FUNCTION_59_0();
      v144(v72);
      v73 = v139;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_231CC0294(0, *(v139 + 16) + 1, 1, v139, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
      }

      ++v48;
      i = v73[2];
      v74 = v73[3];
      if (i >= v74 >> 1)
      {
        v73 = sub_231CC0294((v74 > 1), i + 1, 1, v73, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
      }

      v75 = *(v0 + 568);
      v76 = *(v0 + 552);
      v77 = *(v0 + 544);
      v73[2] = i + 1;
      v139 = v73;
      (v144)(v73 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * i, v75, v77);
    }
  }

  v78 = *(v0 + 896);

  v79 = [v78 searchableMessageID];
  v80 = *(v0 + 896);
  if (v79)
  {
    v81 = v79;
    v82 = *(v0 + 584);
    v83 = *(v0 + 560);
    v84 = *(v0 + 552);
    v85 = *(v0 + 544);
    v86 = [v79 stringValue];

    sub_231E11620();
    (*(v84 + 16))(v83, v82, v85);
    v87 = [v80 date];
    sub_231E0F910();

    v88 = [v80 flags];
    [v88 read];

    v89 = [v80 subject];
    if (v89)
    {
      v90 = [v89 subjectString];

      sub_231E11620();
    }

    OUTLINED_FUNCTION_25();
    sub_231E0FFF0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    i = *(v0 + 888);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_61;
    }

    goto LABEL_71;
  }

  v97 = *(v0 + 744);

  v98 = OUTLINED_FUNCTION_57();
  v97(v98);

  v99 = v80;
  v100 = sub_231E10E10();
  v101 = sub_231E11AD0();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = *(v0 + 896);
    v149 = *(v0 + 696);
    v153 = *(v0 + 808);
    v103 = *(v0 + 616);
    v104 = *(v0 + 456);
    OUTLINED_FUNCTION_16_0();
    v105 = swift_slowAlloc();
    OUTLINED_FUNCTION_53();
    v106 = OUTLINED_FUNCTION_28();
    v154[0] = v106;
    *v105 = 136446466;
    v107 = sub_231DE2398(v104);
    sub_231CB5000(v107, v108, v154);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_41();
    v109 = [v102 searchableMessageID];
    *(v105 + 14) = v109;
    *v97 = v109;
    OUTLINED_FUNCTION_68_0(&dword_231CAE000, v110, v111, "%{public}s Skipping message with unique id: %@. Missing unique id, this may lead to incorrect summaries due to key content missing.");
    sub_231CC154C(v97, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v106);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_30();

    v153(v149, v103);
  }

  else
  {
    v120 = *(v0 + 808);
    OUTLINED_FUNCTION_71();
    v121 = OUTLINED_FUNCTION_22();
    v120(v121);
  }

  v15 = *(v0 + 896);
  if (*(v0 + 456))
  {
    sub_231DDABDC();
    swift_unknownObjectRelease();

    v122 = OUTLINED_FUNCTION_25();
    v123(v122);
  }

  else
  {
    v124 = OUTLINED_FUNCTION_25();
    v125(v124);
    swift_unknownObjectRelease();
  }

LABEL_15:
  for (i = *(v0 + 888); ; (*(v115 + 32))(i + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v113, v116, v117))
  {
    v29 = *(v0 + 904);
    if (v29 == *(v0 + 872))
    {

      v30 = OUTLINED_FUNCTION_5();
      v31(v30);
      OUTLINED_FUNCTION_60();
      swift_bridgeObjectRetain_n();

      v32 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_49();

      OUTLINED_FUNCTION_39_0();
      v33 = *(v0 + 808);
      v34 = *(v0 + 680);
      OUTLINED_FUNCTION_61();
      if (v35)
      {
        v151 = v34;
        OUTLINED_FUNCTION_10_2();
        swift_slowAlloc();
        v154[0] = OUTLINED_FUNCTION_17_1();
        v36 = OUTLINED_FUNCTION_52(4.8752e-34);
        sub_231CB5000(v36, v37, v154);
        OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_26();
        v38 = *(i + 16);

        *(v33 + 14) = v38;

        OUTLINED_FUNCTION_3_2();
        _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
        OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_11();

        (v33)(v151, v15);
      }

      else
      {
        OUTLINED_FUNCTION_60();
        swift_bridgeObjectRelease_n();

        (v33)(v34, v15);
      }

      OUTLINED_FUNCTION_27_0();
      *v15 = i;
      sub_231E10290();
      OUTLINED_FUNCTION_12();
      v91 = OUTLINED_FUNCTION_45();
      v92(v91);
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_0_2();

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_64();

      __asm { BRAA            X1, X16 }
    }

    *(v0 + 888) = i;
    v44 = *(v0 + 864);
    if ((v44 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x23837D2A0](v29);
    }

    else
    {
      if (v29 >= *(v44 + 16))
      {
        __break(1u);
        return;
      }

      v45 = *(v44 + 8 * v29 + 32);
    }

    i = v45;
    *(v0 + 896) = v45;
    *(v0 + 904) = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      break;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    OUTLINED_FUNCTION_20();
    i = sub_231CC0294(0, v126 + 1, 1, i, v127, v128, v129, v130);
LABEL_61:
    v113 = *(i + 16);
    if (v113 >= *(i + 24) >> 1)
    {
      OUTLINED_FUNCTION_20();
      i = sub_231CC0294(v131, v132, 1, i, v133, v134, v135, v136);
    }

    v114 = *(v0 + 896);
    v15 = *(v0 + 544);
    v115 = *(v0 + 504);
    v116 = *(v0 + 512);
    v117 = *(v0 + 496);
    swift_unknownObjectRelease();

    v118 = OUTLINED_FUNCTION_33();
    v119(v118);
    *(i + 16) = v113 + 1;
  }

  v95 = swift_task_alloc();
  *(v0 + 912) = v95;
  *v95 = v0;
  OUTLINED_FUNCTION_2(v95);
  OUTLINED_FUNCTION_64();

  sub_231CBAD1C();
}

void sub_231CBE8C0()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 648);
  v6 = *(v0 + 616);
  swift_willThrow();

  v3(v5, v4, v6);

  v7 = v1;
  v8 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_70_0();

  if (OUTLINED_FUNCTION_39_0())
  {
    v9 = *(v0 + 624);
    v54 = *(v0 + 616);
    v55 = *(v0 + 648);
    v10 = *(v0 + 456);
    OUTLINED_FUNCTION_16_0();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_53();
    v12 = OUTLINED_FUNCTION_28();
    *&v56[0] = v12;
    *v11 = 136446466;
    v13 = sub_231DE2398(v10);
    sub_231CB5000(v13, v14, v56);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_66();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v2 = v15;
    OUTLINED_FUNCTION_44_0();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
    sub_231CC154C(v2, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_30();

    (*(v9 + 8))(v55, v54);
  }

  else
  {

    v21 = OUTLINED_FUNCTION_25();
    v22(v21);
  }

  v23 = *(v0 + 456);
  v24 = *(v0 + 792);
  v25 = *(v0 + 776);
  if (v23)
  {
    sub_231DD8810(*(v0 + 792), 0xD000000000000022, 0x8000000231E2DD20, v56);

    v26 = (v23 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
    v28 = OUTLINED_FUNCTION_51(v27, v0 + 336);
    v29 = *v26;
    v30 = v26[1];
    v31 = v26[3];
    *(v0 + 176) = v26[2];
    *(v0 + 192) = v31;
    *(v0 + 144) = v29;
    *(v0 + 160) = v30;
    OUTLINED_FUNCTION_9_0(v28, v32, v33, v34, v35, v36, v37, v38, v29, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0], v56[1], v30, v56[2]);
    sub_231CC154C(v0 + 144, &unk_27DD73FC0, &qword_231E13478);
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X1, X16 }
}

void sub_231CBEBE4()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 744);

  v3 = OUTLINED_FUNCTION_40();
  v2(v3);

  v4 = v1;
  v5 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_70_0();

  if (OUTLINED_FUNCTION_39_0())
  {
    v54 = *(v0 + 640);
    v55 = *(v0 + 808);
    v53 = *(v0 + 616);
    v6 = *(v0 + 456);
    OUTLINED_FUNCTION_16_0();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_53();
    v8 = OUTLINED_FUNCTION_28();
    *&v56[0] = v8;
    *v7 = 136446466;
    v9 = sub_231DE2398(v6);
    sub_231CB5000(v9, v10, v56);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_66();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v2 = v11;
    OUTLINED_FUNCTION_44_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    sub_231CC154C(v2, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_30();

    v55(v54, v53);
  }

  else
  {
    v17 = *(v0 + 808);
    OUTLINED_FUNCTION_71();
    v18 = OUTLINED_FUNCTION_22();
    v17(v18);
  }

  v19 = *(v0 + 456);
  if (v19)
  {
    v20 = *(v0 + 840);
    v21 = v20;
    sub_231DD8810(v20, 0xD000000000000027, 0x8000000231E2DD50, v56);
    v22 = (v19 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
    v24 = OUTLINED_FUNCTION_51(v23, v0 + 360);
    v25 = *v22;
    v26 = v22[1];
    v27 = v22[3];
    *(v0 + 240) = v22[2];
    *(v0 + 256) = v27;
    *(v0 + 208) = v25;
    *(v0 + 224) = v26;
    OUTLINED_FUNCTION_9_0(v24, v28, v29, v30, v31, v32, v33, v34, v25, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0], v56[1], v26, v56[2]);
    sub_231CC154C(v0 + 208, &unk_27DD73FC0, &qword_231E13478);
  }

  v35 = *(v0 + 840);
  v36 = *(v0 + 776);
  v37 = *(v0 + 608);
  OUTLINED_FUNCTION_43_0();
  (*(v38 + 104))(v37, *MEMORY[0x277D42260]);
  sub_231E10230();

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_65();

  __asm { BRAA            X1, X16 }
}

void sub_231CBEF3C(uint64_t a1)
{
  v83 = v1;
  v3 = v1[58].n128_u64[0];
  v4 = v1[56].n128_u64[0];
  OUTLINED_FUNCTION_7_1();
  v5(v1[39].n128_u64[1]);

  v6 = v4;
  v7 = v3;
  v8 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_49();

  if (OUTLINED_FUNCTION_39_0())
  {
    v9 = v1[58].n128_u64[0];
    v10 = v1[56].n128_u64[0];
    v79 = v1[39].n128_i64[1];
    v80 = v1[50].n128_u64[1];
    v11 = v1[28].n128_i64[1];
    v77 = v1[39].n128_u64[0] + 8;
    v78 = v1[38].n128_i64[1];
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_28();
    *&v82[0] = v13;
    *v12 = 136446722;
    v14 = sub_231DE2398(v11);
    v16 = sub_231CB5000(v14, v15, v82);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    v17 = [v10 searchableMessageID];
    *(v12 + 14) = v17;
    *v2 = v17;
    *(v12 + 22) = 2112;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    v2[1] = v19;
    OUTLINED_FUNCTION_44_0();
    _os_log_impl(v20, v21, v22, v23, v24, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74D30, &unk_231E13480);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14();
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_30();

    v80(v79, v78);
  }

  else
  {
    v12 = v1[50].n128_i64[1];
    OUTLINED_FUNCTION_71();
    v25 = OUTLINED_FUNCTION_22();
    (v12)(v25);
  }

  v26 = v1[28].n128_i64[1];
  v27 = v1[58].n128_u64[0];
  v28 = v1[56].n128_u64[0];
  if (v26)
  {
    sub_231DD8810(v27, 0xD000000000000027, 0x8000000231E2DD50, v82);

    v29 = (v26 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_summarizationError);
    v31 = OUTLINED_FUNCTION_51(v30, &v1[25].n128_i64[1]);
    v32 = *v29;
    v33 = v29[1];
    v34 = v29[3];
    v1[19] = v29[2];
    v1[20] = v34;
    v1[17] = v32;
    v1[18] = v33;
    OUTLINED_FUNCTION_9_0(v31, v35, v36, v37, v38, v39, v40, v41, v32, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v82[0], v82[1], v33, v82[2]);
    sub_231CC154C(&v1[17], &unk_27DD73FC0, &qword_231E13478);
  }

  else
  {
  }

  v42 = v1[56].n128_u64[1];
  v43 = v1[54].n128_i64[0];
  if (v42 == v1[54].n128_u64[1])
  {
    v44 = v1[55].n128_i64[1];

    v45 = OUTLINED_FUNCTION_5();
    v46(v45);
    OUTLINED_FUNCTION_60();
    swift_bridgeObjectRetain_n();

    v47 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_49();

    OUTLINED_FUNCTION_39_0();
    v48 = v1[50].n128_i64[1];
    v49 = v1[42].n128_i64[1];
    OUTLINED_FUNCTION_61();
    if (v50)
    {
      v81 = v49;
      OUTLINED_FUNCTION_10_2();
      swift_slowAlloc();
      *&v82[0] = OUTLINED_FUNCTION_17_1();
      v51 = OUTLINED_FUNCTION_52(4.8752e-34);
      sub_231CB5000(v51, v52, v82);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_26();
      v53 = *(v44 + 16);

      *(v48 + 14) = v53;

      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_11();

      (v48)(v81, v12);
    }

    else
    {
      OUTLINED_FUNCTION_60();
      swift_bridgeObjectRelease_n();

      (v48)(v49, v12);
    }

    OUTLINED_FUNCTION_27_0();
    *v12 = v44;
    sub_231E10290();
    OUTLINED_FUNCTION_12();
    v60 = OUTLINED_FUNCTION_45();
    v61(v60);
    OUTLINED_FUNCTION_35_0();

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1_1();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X1, X16 }
  }

  if ((v43 & 0xC000000000000001) != 0)
  {
    v59 = MEMORY[0x23837D2A0](v1[56].n128_u64[1]);
  }

  else
  {
    if (v42 >= *(v43 + 16))
    {
LABEL_23:
      __break(1u);
      return;
    }

    v59 = *(v43 + 8 * v42 + 32);
  }

  v1[56].n128_u64[0] = v59;
  v1[56].n128_u64[1] = v42 + 1;
  if (__OFADD__(v42, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v64 = swift_task_alloc();
  v1[57].n128_u64[0] = v64;
  *v64 = v1;
  OUTLINED_FUNCTION_2(v64);
  OUTLINED_FUNCTION_65();

  sub_231CBAD1C();
}

unint64_t sub_231CBF4B0(unint64_t result, unint64_t a2)
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
        result = sub_231E11DF0();
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

  v7 = sub_231CC094C(result, a2, 10);
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

id sub_231CBF7A8(uint64_t a1)
{
  sub_231CC1784(0, &qword_2814CAF48, 0x277CCAC30);
  v1 = sub_231E11850();

  v2 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];

  return v2;
}

uint64_t sub_231CBF82C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_231CBF8D4(v4, v5);
  }

  else
  {
    sub_231CC1784(0, &qword_2814CAE98, 0x277D06DB8);
    v7 = sub_231E11870();

    return sub_231CBF940(v4, v7);
  }
}

uint64_t sub_231CBF8D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_231CBF960(unint64_t a1)
{
  result = sub_231CBA138(a1);
  v16 = result;
  v3 = 0;
  while (1)
  {
    if (v16 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x23837D2A0](v3, a1);
      goto LABEL_6;
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v4 = *(a1 + 8 * v3 + 32);
LABEL_6:
    v5 = v4;
    v6 = [v4 searchableMessageID];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 stringValue];

      v9 = sub_231E11620();
      v7 = v10;
    }

    else
    {
      v9 = 0;
    }

    v11 = sub_231E10000();
    if (v7)
    {
      if (v9 == v11 && v7 == v12)
      {

        return v3;
      }

      v14 = sub_231E12100();

      if (v14)
      {
        return v3;
      }
    }

    else
    {
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_231CBFB1C()
{
  sub_231CBFAF4();

  return swift_deallocClassInstance();
}

uint64_t sub_231CBFB50()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23(v1);

  return v4(v3);
}

uint64_t sub_231CBFC58()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23(v1);

  return v4(v3);
}

uint64_t sub_231CBFD60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_59_0();

  return v4(v3);
}

uint64_t sub_231CBFE4C()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_42();
  v6 = (*(v0 + 160) + **(v0 + 160));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_38(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_32(v2);
  v4 = OUTLINED_FUNCTION_57();

  return v6(v4);
}

uint64_t sub_231CBFF60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

id sub_231CC0040(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_231CC1714;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_231CC015C;
  v9[3] = &block_descriptor_20;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_231CC015C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_231CC01B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_231CC1784(0, &qword_2814CAF20, 0x277CCAC98);
  v11 = sub_231E11850();

  if (a6)
  {
    v12 = sub_231E115F0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithTargetClass:swift_getObjCClassFromMetadata() predicate:a2 sortDescriptors:v11 queryOptions:a4 label:v12];

  return v13;
}

void *sub_231CC0294(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
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
  v15 = sub_231CC03A4(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_231CC0498(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_231CC03A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  OUTLINED_FUNCTION_6(v8);
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

void sub_231CC0498(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_12(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_231CC0558(uint64_t a1, unint64_t a2)
{
  v3 = sub_231CC05A4(a1, a2);
  sub_231CC06BC(&unk_2846F0440);
  return v3;
}

uint64_t sub_231CC05A4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_231E11730())
  {
    result = sub_231CC07A0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_231E11D60();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_231E11DF0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_231CC06BC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_231CC0810(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_231CC07A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD740B0, &qword_231E13880);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_231CC0810(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD740B0, &qword_231E13880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unsigned __int8 *sub_231CC094C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_231E117B0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_231CC0FFC(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_231E11DF0();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
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

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_231CC0ED4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_231CC0F10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_231CC1784(0, &qword_2814CAE98, 0x277D06DB8);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_231CC0FFC(uint64_t a1, unint64_t a2)
{
  v2 = sub_231CC1068(sub_231CC1064, 0, a1, a2);
  v6 = sub_231CC109C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_231CC109C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_231E11C00();
    if (!v9 || (v10 = v9, v11 = sub_231CC07A0(v9, 0), v12 = sub_231CC11FC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_231E116C0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_231E116C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_231E11DF0();
LABEL_4:

  return sub_231E116C0();
}

unint64_t sub_231CC11FC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_231CC140C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_231E11760();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_231E11DF0();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_231CC140C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_231E11740();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_231CC140C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_231E11770();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23837CC50](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_231CC1488(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_231E11620();

  return v4;
}

uint64_t sub_231CC14F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_231E11ED0();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_231CC154C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

id sub_231CC15C8(void *a1)
{
  [a1 setRequestedRepresentation_];

  return [a1 setNetworkUsage_];
}

uint64_t sub_231CC1620()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74038, qword_231E13528);
  OUTLINED_FUNCTION_47(v0);
  v1 = OUTLINED_FUNCTION_57();

  return sub_231CBA994(v1, v2, v3);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_231CB51C4(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_13(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

unint64_t sub_231CC16C0()
{
  result = qword_27DD75AC0[0];
  if (!qword_27DD75AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD75AC0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_231CC1784(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmailFrameworkMailFetcher.MailContentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EmailFrameworkMailFetcher.MailContentError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231CC1948()
{
  result = qword_27DD75B50[0];
  if (!qword_27DD75B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD75B50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_1()
{
  *(v1 - 88) = *(v0 + 480);
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_231E10090();
}

uint64_t OUTLINED_FUNCTION_36()
{

  return sub_231E11E40();
}

BOOL OUTLINED_FUNCTION_39_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_52(float a1)
{
  *v1 = a1;

  return sub_231DE2398(v2);
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54()
{
}

uint64_t OUTLINED_FUNCTION_56()
{
}

id OUTLINED_FUNCTION_66()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;

  return v2;
}

uint64_t OUTLINED_FUNCTION_67_0()
{
  *(v1 - 88) = v0;

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_68_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_70_0()
{
}

void OUTLINED_FUNCTION_71()
{
}

uint64_t sub_231CC1D30(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v4 = sub_231E106A0();
  v3[8] = v4;
  OUTLINED_FUNCTION_6(v4);
  v3[9] = v5;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_231E10E30();
  v3[17] = v6;
  OUTLINED_FUNCTION_6(v6);
  v3[18] = v7;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = sub_231E0F950();
  v3[26] = v8;
  OUTLINED_FUNCTION_6(v8);
  v3[27] = v9;
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231CC1F20, 0, 0);
}

uint64_t sub_231CC1F20()
{
  v2 = v0;
  sub_231E10670();
  OUTLINED_FUNCTION_8_1();
  if (!v4 && (v3 & 1) != 0)
  {
    v1 = v0[7];
    sub_231DC4AB8();
    v5 = OUTLINED_FUNCTION_2_0();
    v6(v5);
    v7 = OUTLINED_FUNCTION_1_2();
    v8(v7);
    v9 = sub_231E10E10();
    v10 = sub_231E11AF0();
    v11 = OUTLINED_FUNCTION_5_0(v10);
    v13 = v0[18];
    v12 = v2[19];
    v14 = v2[17];
    v16 = v2[9];
    v15 = v2[10];
    v17 = v2[8];
    if (v11)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v14 = 136446210;
      sub_231E10690();
      v18 = OUTLINED_FUNCTION_0_3();
      v20 = v19(v18);
      OUTLINED_FUNCTION_4_0(v20, v21, v22, v23, v24, v25, v26, v27, v145, v146, v147, v148);
      OUTLINED_FUNCTION_10_1();
      *(v14 + 4) = v15;
      v28 = "Message not eligible for Smart Replies (outgoing message); id: %{public}s";
LABEL_27:
      _os_log_impl(&dword_231CAE000, v9, v1, v28, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      v136 = v2;
      v2 = v150;
      MEMORY[0x23837E1D0](v136, -1, -1);
      MEMORY[0x23837E1D0](v14, -1, -1);

      (*(v13 + 8))(v149);
LABEL_29:

      v137 = v2[1];

      return v137(0);
    }

    goto LABEL_28;
  }

  sub_231E10610();
  OUTLINED_FUNCTION_8_1();
  if (!v4 && (v29 & 1) != 0)
  {
    OUTLINED_FUNCTION_11_0();
    v30 = OUTLINED_FUNCTION_2_0();
    v31(v30);
    v32 = OUTLINED_FUNCTION_1_2();
    v33(v32);
    v9 = sub_231E10E10();
    v34 = sub_231E11AF0();
    v35 = OUTLINED_FUNCTION_5_0(v34);
    v12 = v0[20];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v2[11];
    v17 = v2[8];
    v16 = v2[9];
    if (v35)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v14 = 136446210;
      sub_231E10690();
      v36 = OUTLINED_FUNCTION_0_3();
      v38 = v37(v36);
      OUTLINED_FUNCTION_4_0(v38, v39, v40, v41, v42, v43, v44, v45, v145, v146, v147, v148);
      OUTLINED_FUNCTION_10_1();
      *(v14 + 4) = v15;
      v28 = "Message not eligible for Smart Replies (junk); id: %{public}s";
      goto LABEL_27;
    }

LABEL_28:

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
    goto LABEL_29;
  }

  sub_231E10550();
  OUTLINED_FUNCTION_8_1();
  if (!v4 && (v46 & 1) != 0)
  {
    OUTLINED_FUNCTION_11_0();
    v47 = OUTLINED_FUNCTION_2_0();
    v48(v47);
    v49 = OUTLINED_FUNCTION_1_2();
    v50(v49);
    v9 = sub_231E10E10();
    v51 = sub_231E11AF0();
    v52 = OUTLINED_FUNCTION_5_0(v51);
    v12 = v0[21];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v2[12];
    v17 = v2[8];
    v16 = v2[9];
    if (v52)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v14 = 136446210;
      sub_231E10690();
      v53 = OUTLINED_FUNCTION_0_3();
      v55 = v54(v53);
      OUTLINED_FUNCTION_4_0(v55, v56, v57, v58, v59, v60, v61, v62, v145, v146, v147, v148);
      OUTLINED_FUNCTION_10_1();
      *(v14 + 4) = v15;
      v28 = "Message not eligible for Smart Replies (two factor code); id: %{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  sub_231E10620();
  OUTLINED_FUNCTION_8_1();
  if (!v4 && (v63 & 1) != 0)
  {
    OUTLINED_FUNCTION_11_0();
    v64 = OUTLINED_FUNCTION_2_0();
    v65(v64);
    v66 = OUTLINED_FUNCTION_1_2();
    v67(v66);
    v9 = sub_231E10E10();
    v68 = sub_231E11AF0();
    v69 = OUTLINED_FUNCTION_5_0(v68);
    v12 = v0[22];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v2[13];
    v17 = v2[8];
    v16 = v2[9];
    if (v69)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v14 = 136446210;
      sub_231E10690();
      v70 = OUTLINED_FUNCTION_0_3();
      v72 = v71(v70);
      OUTLINED_FUNCTION_4_0(v72, v73, v74, v75, v76, v77, v78, v79, v145, v146, v147, v148);
      OUTLINED_FUNCTION_10_1();
      *(v14 + 4) = v15;
      v28 = "Message not eligible for Smart Replies (already read); id: %{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  sub_231E105D0();
  OUTLINED_FUNCTION_8_1();
  if (!v4 && (v80 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_0();
    v120 = OUTLINED_FUNCTION_2_0();
    v121(v120);
    v122 = OUTLINED_FUNCTION_1_2();
    v123(v122);
    v9 = sub_231E10E10();
    v124 = sub_231E11AF0();
    v125 = OUTLINED_FUNCTION_5_0(v124);
    v12 = v0[23];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v2[14];
    v17 = v2[8];
    v16 = v2[9];
    if (v125)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v14 = 136446210;
      sub_231E10690();
      v126 = OUTLINED_FUNCTION_0_3();
      v128 = v127(v126);
      OUTLINED_FUNCTION_4_0(v128, v129, v130, v131, v132, v133, v134, v135, v145, v146, v147, v148);
      OUTLINED_FUNCTION_10_1();
      *(v14 + 4) = v15;
      v28 = "Message not eligible for Smart Replies (not from known sender); id: %{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v82 = v0[27];
  v81 = v2[28];
  v83 = v2[26];
  sub_231E105C0();
  sub_231E0F870();
  v85 = v84;
  v86 = *(v82 + 8);
  v2[29] = v86;
  v2[30] = (v82 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v86(v81, v83);
  sub_231E0F880();
  if (v87 - sub_231D11D54() > v85)
  {
    OUTLINED_FUNCTION_11_0();
    v88 = OUTLINED_FUNCTION_2_0();
    v89(v88);
    v90 = OUTLINED_FUNCTION_1_2();
    v91(v90);
    v9 = sub_231E10E10();
    v92 = sub_231E11AF0();
    v93 = OUTLINED_FUNCTION_5_0(v92);
    v12 = v2[24];
    v14 = v2[17];
    v13 = v2[18];
    v15 = v2[15];
    v17 = v2[8];
    v16 = v2[9];
    if (v93)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v14 = 136446210;
      sub_231E10690();
      v94 = OUTLINED_FUNCTION_0_3();
      v96 = v95(v94);
      OUTLINED_FUNCTION_4_0(v96, v97, v98, v99, v100, v101, v102, v103, v145, v146, v147, v148);
      OUTLINED_FUNCTION_10_1();
      *(v14 + 4) = v15;
      v28 = "Message not eligible for Smart Replies (too old); id: %{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (sub_231DBD14C())
  {
    OUTLINED_FUNCTION_11_0();
    v104 = OUTLINED_FUNCTION_2_0();
    v105(v104);
    v106 = OUTLINED_FUNCTION_1_2();
    v107(v106);
    v9 = sub_231E10E10();
    v108 = sub_231E11AF0();
    v109 = OUTLINED_FUNCTION_5_0(v108);
    v12 = v2[25];
    v14 = v2[17];
    v13 = v2[18];
    v15 = v2[16];
    v17 = v2[8];
    v16 = v2[9];
    if (v109)
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_2();
      *v14 = 136446210;
      sub_231E10690();
      v110 = OUTLINED_FUNCTION_0_3();
      v112 = v111(v110);
      OUTLINED_FUNCTION_4_0(v112, v113, v114, v115, v116, v117, v118, v119, v145, v146, v147, v148);
      OUTLINED_FUNCTION_10_1();
      *(v14 + 4) = v15;
      v28 = "Message not eligible for Smart Replies (in a CarPlay session); id: %{public}s";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v139 = v2[6];
  v140 = sub_231DE8A04(0);
  v142 = v141;
  v2[31] = v141;
  sub_231DB0818(v140);
  v151 = (*(*v139 + 136) + **(*v139 + 136));
  v143 = swift_task_alloc();
  v2[32] = v143;
  *v143 = v2;
  v143[1] = sub_231CC2730;
  v144 = v2[28];

  return v151(v140, v142, v144, 0);
}

uint64_t sub_231CC2730(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 40) = a3;
  v5[3] = a1;
  v5[4] = a2;
  v5[2] = v3;
  v6 = v4[29];
  v7 = v4[28];
  v8 = v4[26];
  *(v5 + 264) = a3;

  v6(v7, v8);

  return MEMORY[0x2822009F8](sub_231CC28C4, 0, 0);
}

uint64_t sub_231CC28C4()
{
  v1 = *(v0 + 264);
  if (v1 != 255)
  {
    sub_231CBA16C(*(v0 + 24), *(v0 + 32), *(v0 + 264));
  }

  v2 = *(v0 + 8);

  return v2(v1 == 255);
}

uint64_t sub_231CC2A08(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_231CC2A9C;

  return sub_231CC1D30(v4, a2);
}

uint64_t sub_231CC2A9C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_231CC2B98(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xCu && ((1 << a3) & 0x1480) != 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_slowAlloc();
}

void sub_231CC2C10(void *a1)
{
  v2 = sub_231E10E30();
  v30 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v29 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231E13660;
  v6 = *MEMORY[0x277CBD018];
  v7 = *MEMORY[0x277CBD098];
  *(v5 + 32) = *MEMORY[0x277CBD018];
  *(v5 + 40) = v7;
  v8 = *MEMORY[0x277CBCFC0];
  *(v5 + 48) = *MEMORY[0x277CBCFC0];
  v9 = objc_opt_self();
  v10 = v6;
  v7;
  v28[3] = v8;
  *(v5 + 56) = [v9 descriptorForRequiredKeysForStyle_];
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v11);
  v30 = (*(v12 + 8))(v5, v11, v12);

  v13 = [v9 stringFromContact:v30 style:0];
  if (v13)
  {
    v14 = v13;
    v29 = sub_231E11620();
  }

  else
  {
    v29 = 0;
  }

  v15 = [v30 emailAddresses];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74180, &qword_231E13678);
  v17 = sub_231E11870();

  if (sub_231CBA138(v17))
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x23837D2A0](0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_24:
        v22 = MEMORY[0x23837D2A0](0, v16);
        goto LABEL_16;
      }

      v18 = *(v17 + 32);
    }

    v19 = v18;

    v20 = [v19 value];

    if (v20)
    {
      v31 = 0;
      v32 = 0;
      sub_231E11610();

      if (v32)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
  }

  v21 = [v30 phoneNumbers];
  v16 = sub_231E11870();

  if (!sub_231CBA138(v16))
  {

    goto LABEL_19;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v22 = *(v16 + 32);
LABEL_16:
  v23 = v22;

  v24 = [v23 value];

  sub_231CC3474(v24);
  if (v25)
  {
LABEL_17:
    sub_231E11620();
  }

LABEL_19:
  v26 = [v30 identifier];
  sub_231E11620();

  sub_231E103D0();
  v27 = v30;
}

uint64_t sub_231CC33AC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231E11620();

  return v4;
}

uint64_t sub_231CC340C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74D30, &unk_231E13480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231CC3474(void *a1)
{
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11620();

  return v3;
}

id sub_231CC34E4(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    return result;
  }

  if (!(a3 >> 6))
  {
    return sub_231CC3500(result, a2, a3);
  }

  return result;
}

uint64_t sub_231CC3500(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xCu && ((1 << a3) & 0x1480) != 0)
  {
  }

  return result;
}

uint64_t sub_231CC352C()
{
  v1 = *(v0 + 16);
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      return 0x7475626972747461;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v4 = *v0;
    v3 = *(v0 + 8);
    sub_231E11D70();

    sub_231CFFD6C(v4, v3, v1);
    MEMORY[0x23837CC20]();

    return 0xD000000000000014;
  }
}

uint64_t sub_231CC3610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  return sub_231E0F920();
}

uint64_t sub_231CC364C(uint64_t a1, double a2, double a3)
{
  v6 = swift_allocObject();
  sub_231CC36A4(a1, a2, a3);
  return v6;
}

uint64_t sub_231CC36A4(uint64_t a1, double a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  *(v3 + 40) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v3 + 48) = 0;
  *(v3 + 56) = v11;
  *(v3 + 64) = v11;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;
  v12 = sub_231E119F0();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a2;
  *(v14 + 40) = v13;
  *(v14 + 48) = a3;
  sub_231CC3BE0(0, 0, v10, &unk_231E136A0, v14);

  return v3;
}

uint64_t sub_231CC37D8()
{
  OUTLINED_FUNCTION_18();
  v0[7] = v1;
  v0[6] = v2;
  v0[5] = v3;
  v4 = sub_231E10E30();
  v0[8] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[9] = v5;
  v0[10] = swift_task_alloc();
  v6 = sub_231E11E70();
  v0[11] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[12] = v7;
  v0[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231CC38E8, 0, 0);
}

uint64_t sub_231CC38E8()
{
  OUTLINED_FUNCTION_29();
  swift_beginAccess();
  sub_231E12280();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_10_3(&dword_231E1D770);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_4(v2);

  return v6(v4);
}

void sub_231CC398C()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[7];
    os_unfair_lock_lock(Strong + 10);
    sub_231CB24A0((v2 + 48), v2, v3);
    os_unfair_lock_unlock((v2 + 40));

    sub_231E12280();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_10_3(&dword_231E1D770);
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_20_0(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_0_4(v5);
    OUTLINED_FUNCTION_17_2();

    __asm { BR              X5 }
  }

  sub_231CB4EEC();
  v9 = OUTLINED_FUNCTION_23_0();
  v10(v9);
  v11 = sub_231E10E10();
  v12 = sub_231E11AF0();
  if (os_log_type_enabled(v11, v12))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_25_0(&dword_231CAE000, v13, v14, "InMemoryMailResultCache: Cache gone, stopping pruning task");
    OUTLINED_FUNCTION_30();
  }

  v16 = *(v0 + 9);
  v15 = *(v0 + 10);
  v17 = *(v0 + 8);

  (*(v16 + 8))(v15, v17);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231CC3B38()
{
  OUTLINED_FUNCTION_29();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231CBFF60;

  return sub_231CC37D8();
}

uint64_t sub_231CC3BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_231CC6A58(a3, v24 - v10, &qword_27DD75180, &qword_231E13690);
  v12 = sub_231E119F0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_231CC154C(v11, &qword_27DD75180, &qword_231E13690);
  }

  else
  {
    sub_231E119E0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_231E11920();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_231E116A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_231CC154C(a3, &qword_27DD75180, &qword_231E13690);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_231CC154C(a3, &qword_27DD75180, &qword_231E13690);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_231CC3EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 40));
  sub_231CC3F28(v3 + 48, a2, a3, a1, v3);

  os_unfair_lock_unlock((v3 + 40));
}

uint64_t sub_231CC3F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v44 = v10;
  v45 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_1();
  v14 = v13 - v12;
  v15 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74198, &qword_231E13878);
  v24 = OUTLINED_FUNCTION_47(v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  sub_231CB4858(a4, &v43 - v25);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v15);

  sub_231CC42B0(v26, a2, a3);
  v27 = *(*(a1 + 16) + 16);
  if (a5[2] < v27)
  {
    sub_231CC46A8(v22);

    sub_231CB4E90(v22);
    v27 = *(*(a1 + 16) + 16);
  }

  v28 = sub_231CB4EEC();
  v29 = v44;
  v30 = v45;
  (*(v45 + 16))(v14, v28, v44);
  sub_231CB4858(a4, v19);

  v31 = sub_231E10E10();
  v32 = sub_231E11AF0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v33 = 136446722;
    v34 = (*(*a5 + 120))();
    v35 = v29;
    v37 = sub_231CB5000(v34, v36, &v46);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2048;
    *(v33 + 14) = v27;
    *(v33 + 22) = 2082;
    v38 = sub_231CC352C();
    v40 = v39;
    sub_231CB4E90(v19);
    v41 = sub_231CB5000(v38, v40, &v46);

    *(v33 + 24) = v41;
    _os_log_impl(&dword_231CAE000, v31, v32, "InMemoryMailResultCache %{public}s: Adding item, count: %ld item: %{public}s)", v33, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    return (*(v45 + 8))(v14, v35);
  }

  else
  {

    sub_231CB4E90(v19);
    return (*(v30 + 8))(v14, v29);
  }
}

uint64_t sub_231CC42B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  v44 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v40 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741A8, &qword_231E13898);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v21 = *v3;
  v20 = v3[1];
  v40 = a2;
  v50[0] = a2;
  v50[1] = a3;
  v47 = v21;
  v48 = v20;
  v49 = v50;
  v22 = sub_231CC5DC8(sub_231CC6BE0, v46, v20);
  v24 = v23;
  v26 = v25;
  v27 = *(v17 + 56);
  v45 = a1;
  sub_231CC6A58(a1, &v19[v27], &qword_27DD74198, &qword_231E13878);
  if (v24)
  {
    if (__swift_getEnumTagSinglePayload(&v19[v27], 1, v7) == 1)
    {
      sub_231CC154C(v45, &qword_27DD74198, &qword_231E13878);
    }

    else
    {
      v29 = v42;
      sub_231CB4E2C(&v19[v27], v42);
      sub_231CC5F44(v40, a3, v26);

      v30 = v43;
      sub_231CB4858(v29, v43);
      v33 = v3[2];
      v32 = v3 + 2;
      v31 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_231CC684C(0, *(v31 + 16) + 1, 1);
        v31 = *v32;
      }

      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_231CC684C((v35 > 1), v36 + 1, 1);
      }

      sub_231CC154C(v45, &qword_27DD74198, &qword_231E13878);
      sub_231CB4E90(v29);
      v37 = *v32;
      *(v37 + 16) = v36 + 1;
      result = sub_231CB4E2C(v30, v37 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36);
      *v32 = v37;
    }
  }

  else
  {

    if (__swift_getEnumTagSinglePayload(&v19[v27], 1, v7) == 1)
    {
      sub_231CC60A8(v22, v26);

      sub_231CC6258(v22, v14);
      sub_231CC154C(v45, &qword_27DD74198, &qword_231E13878);
      return sub_231CB4E90(v14);
    }

    v38 = v41;
    sub_231CB4E2C(&v19[v27], v41);
    v39 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_231CC63CC(v39);
    }

    result = sub_231CC154C(v45, &qword_27DD74198, &qword_231E13878);
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < v39[2])
    {
      result = sub_231CC69F4(v38, v39 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v22);
      v3[2] = v39;
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_231CC46A8(uint64_t a1)
{
  if (*(v1[2] + 16))
  {
    v3 = *v1;
    if (*v1)
    {
      v4 = v1[1];

      v5 = sub_231CC66B0((v3 + 16), v3 + 32, v3, v4, 0);
    }

    else
    {
      v5 = 0;
    }

    sub_231CC60A8(0, v5);
    sub_231CC6258(0, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_231CC4764(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 40));
  sub_231CC47C4((v2 + 48), a1, a2, v2, &v6);
  os_unfair_lock_unlock((v2 + 40));
  return v6;
}

uint64_t sub_231CC47C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v92 = a5;
  sub_231E0FD90();
  OUTLINED_FUNCTION_24();
  v90 = v10;
  v91 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v89 = v12 - v11;
  sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v93 = v14;
  v94 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74198, &qword_231E13878);
  v19 = OUTLINED_FUNCTION_47(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - v20;
  v22 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v88 - v28;
  sub_231CC4CBC(a2, a3, *a1, a1[1], a1[2], v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    result = sub_231CC154C(v21, &qword_27DD74198, &qword_231E13878);
    v31 = 0;
  }

  else
  {
    sub_231CB4E2C(v21, v29);
    v32 = sub_231CB4EEC();
    (*(v93 + 16))(v17, v32, v94);
    sub_231CB4858(v29, v26);

    v33 = sub_231E10E10();
    v34 = sub_231E11AF0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v88 = v36;
      v95[0] = v36;
      *v35 = 136446466;
      v37 = (*(*a4 + 120))(v36);
      v39 = sub_231CB5000(v37, v38, v95);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      v40 = sub_231CC352C();
      v42 = v41;
      sub_231CB4E90(v26);
      v43 = sub_231CB5000(v40, v42, v95);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_231CAE000, v33, v34, "InMemoryMailResultCache %{public}s: Fetching item: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    else
    {

      sub_231CB4E90(v26);
    }

    (*(v93 + 8))(v17, v94);
    v31 = *v29;
    v44 = v29[16];
    if (v44 >> 6)
    {
      if (v44 >> 6 == 1)
      {
        v45 = v31;
      }

      else
      {
        type metadata accessor for SpotlightWriter();
        OUTLINED_FUNCTION_22_0(xmmword_231E13680);
        v69 = OUTLINED_FUNCTION_19_0();
        sub_231CD2A28(v69, v70, v71, v72, v73, v74, v75, v76, v77);
        v78 = OUTLINED_FUNCTION_19_0();
        sub_231CD2A90(v78, v79, v80, v81, 2, v82, v83, v84, v85);
        OUTLINED_FUNCTION_11_1(v86);
        v87 = v89;
        sub_231E0FD20();
        v31 = sub_231CD6450(v95, v87);
        sub_231CC4F5C(v95);
        (*(v90 + 8))(v87, v91);
      }
    }

    else
    {
      type metadata accessor for SpotlightWriter();
      OUTLINED_FUNCTION_22_0(xmmword_231E13680);
      v46 = OUTLINED_FUNCTION_18_0();
      sub_231CC34E4(v46, v47, v44);
      v48 = OUTLINED_FUNCTION_18_0();
      sub_231CC3500(v48, v49, v44);
      v50 = OUTLINED_FUNCTION_18_0();
      sub_231CD2A28(v50, v51, v52, v53, v54, v55, v56, v57, v58);
      v59 = OUTLINED_FUNCTION_18_0();
      sub_231CD2A90(v59, v60, v61, v62, 2, v63, v64, v65, v66);
      OUTLINED_FUNCTION_11_1(v67);
      v68 = v89;
      sub_231E0FD20();
      v31 = sub_231CD6450(v95, v68);
      sub_231CC4F5C(v95);
      (*(v90 + 8))(v68, v91);
    }

    result = sub_231CB4E90(v29);
  }

  *v92 = v31;
  return result;
}

uint64_t sub_231CC4CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v14;
  v8 = sub_231CC5DC8(sub_231CC69D0, v13, a4);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    sub_231CC523C(v8, a5, a6);
    v10 = 0;
  }

  v11 = _s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0);
  return __swift_storeEnumTagSinglePayload(a6, v10, 1, v11);
}

uint64_t sub_231CC4D5C()
{
  sub_231CC154C(v0 + 48, &qword_27DD74188, &qword_231E136A8);

  return swift_deallocClassInstance();
}

uint64_t sub_231CC4DF0(uint64_t a1)
{
  result = sub_231E0F950();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_231CC4E80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xE && *(a1 + 17))
    {
      v2 = *a1 + 13;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 2) & 0xC | (*(a1 + 16) >> 6)) ^ 0xF;
      if (v2 >= 0xD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_231CC4ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 16) = 0;
    *result = a2 - 14;
    *(result + 8) = 0;
    if (a3 >= 0xE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      return OUTLINED_FUNCTION_15_0(result, 16 * (((-a2 >> 2) & 3) - 4 * a2));
    }
  }

  return result;
}

uint64_t sub_231CC4F28(uint64_t a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(a1 + 16) & 0xF | (a2 << 6);
  }

  else
  {
    *a1 = a2 - 2;
    *(a1 + 8) = 0;
    v2 = 0x80;
  }

  return OUTLINED_FUNCTION_15_0(a1, v2);
}

uint64_t sub_231CC4FB0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_231CC50A8;

  return v6(a1);
}

uint64_t sub_231CC50A8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_231CC518C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_19();

  return v0();
}

unint64_t sub_231CC51F0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = *(a2 + 16 * result + 32);

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_231CC523C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0) - 8);
  v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4;

  return sub_231CB4858(v7, a3);
}

uint64_t sub_231CC52F4()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = sub_231E0FC50();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void *sub_231CC534C(void *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a5;
  v6 = a4;
  v8 = *(a3 + 8);
  v9 = *(v8 + 16);
  if (v9 < a4 || v9 < a5)
  {
    goto LABEL_18;
  }

  if (a5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = result;
  if (a4 == a5)
  {
LABEL_14:

    sub_231CC5724(v6, v5, v8, v12, a2);
  }

  if (a4 < a5)
  {

    v23 = v6;
    v13 = (v8 + 16 * v6 + 40);
    v14 = v6;
    v24 = v5;
    while (v14 < v5)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 8);
      v18 = *(v17 + 16);

      sub_231CC5E18(v15, v16, v17 + 32, v18, v12, a2);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        goto LABEL_16;
      }

      ++v14;
      result = sub_231CC5534(v22, v12, a2, a3);
      v13 += 2;
      v5 = v24;
      if (v24 == v14)
      {

        v8 = *(a3 + 8);
        v6 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_231CC54C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_231CC5534(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_231E0FBC0();
  sub_231E0FC20();
  if (v17)
  {
    v7 = sub_231E0FBD0();
    v8 = a1;
    while (1)
    {
      result = sub_231E0FC00();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_24;
      }

      sub_231E12220();

      sub_231E116E0();
      v11 = sub_231E12250();

      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_25;
      }

      v13 = (v12 - 1) & v11;
      if (v8 >= v7)
      {
        if (v13 >= v7 && v8 >= v13)
        {
LABEL_18:
          sub_231E0FC00();
          v8 = a1;
          sub_231E0FBE0();
        }
      }

      else if (v13 >= v7 || v8 >= v13)
      {
        goto LABEL_18;
      }

      sub_231E0FC20();
    }
  }

  return sub_231E0FBE0();
}

int64_t sub_231CC5724(int64_t result, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_61;
  }

  if (v5 < 1)
  {
    return result;
  }

  v8 = result;
  v9 = *(a3 + 16);
  if ((v9 - v5) / 2 > result)
  {
    result = MEMORY[0x23837B130](*a4 & 0x3FLL);
    if (result / 3 > v8)
    {
      if (v8 < 0)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      result = sub_231CC54C8(0, v8, a3);
      v11 = v10;
      v12 = 0;
      v14 = v13 >> 1;
      while (v11 != v14)
      {
        if (v11 >= v14)
        {
          __break(1u);
          goto LABEL_52;
        }

        sub_231E12220();

        sub_231E116E0();
        result = sub_231E12250();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_53;
        }

        if (sub_231E0FBC0())
        {
          while (1)
          {
            v15 = sub_231E0FC00();
            if ((v16 & 1) == 0 && v15 == v12)
            {
              break;
            }

            sub_231E0FC20();
          }
        }

        result = v12 + v5;
        if (__OFADD__(v12, v5))
        {
          goto LABEL_54;
        }

        sub_231E0FC10();

        v17 = __OFADD__(v12++, 1);
        if (v17)
        {
          goto LABEL_57;
        }

        ++v11;
      }

      result = swift_unknownObjectRelease();
LABEL_43:
      v30 = a4[1];
      if (!__OFSUB__(v30 >> 6, v5))
      {
        v31 = 1 << *a4;
        v17 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (!v17)
        {
          v33 = (v32 & (((v30 >> 6) - v5) >> 63)) + (v30 >> 6) - v5;
          if (v33 < v32)
          {
            v32 = 0;
          }

          a4[1] = a4[1] & 0x3FLL | ((v33 - v32) << 6);
          return result;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    sub_231E0FBC0();
    v26 = sub_231E0FC00();
    if ((v27 & 1) != 0 || v26 >= v8)
    {
LABEL_36:
      result = sub_231E0FC20();
      goto LABEL_43;
    }

    v17 = __OFADD__(v26, v5);
    result = v26 + v5;
    if (!v17)
    {
      sub_231E0FC10();
      goto LABEL_36;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v18 = a2;
  v19 = v9 - a2;
  if (__OFSUB__(v9, a2))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = MEMORY[0x23837B130](*a4 & 0x3FLL);
  if (v19 >= result / 3)
  {
    sub_231E0FBC0();
    v28 = sub_231E0FC00();
    if ((v29 & 1) == 0 && v28 >= v18)
    {
      v17 = __OFSUB__(v28, v5);
      result = v28 - v5;
      if (v17)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      sub_231E0FC10();
    }

    return sub_231E0FC20();
  }

  if (v9 < v18)
  {
LABEL_66:
    __break(1u);
    return result;
  }

  result = sub_231CC54C8(v18, v9, a3);
  v21 = v20;
  v23 = v22 >> 1;
  while (v21 != v23)
  {
    if (v21 >= v23)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    sub_231E12220();

    sub_231E116E0();
    result = sub_231E12250();
    if (__OFSUB__(1 << *a4, 1))
    {
      goto LABEL_55;
    }

    if (sub_231E0FBC0())
    {
      while (1)
      {
        v24 = sub_231E0FC00();
        if ((v25 & 1) == 0 && v24 == v18)
        {
          break;
        }

        sub_231E0FC20();
      }
    }

    result = v18 - v5;
    if (__OFSUB__(v18, v5))
    {
      goto LABEL_56;
    }

    sub_231E0FC10();

    v17 = __OFADD__(v18++, 1);
    if (v17)
    {
      goto LABEL_58;
    }

    ++v21;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_231CC5BA0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_231CC5BE8(v2[1], a2, 0, v3);

  *v2 = v4;
  return result;
}

uint64_t sub_231CC5BE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x23837B160](v6, a2);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x23837B170]();
    sub_231CC5C60(a1, (v9 + 16), v9 + 32);
  }

  return v9;
}

uint64_t sub_231CC5CA0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_231E12220();

        sub_231E116E0();
        v7 = sub_231E12250();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_231E0FBC0();

        if (v8)
        {
          while (1)
          {
            sub_231E0FC20();
          }
        }

        v7 = sub_231E0FC10();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

void *sub_231CC5DC8(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_231CC5E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_231E12220();
  sub_231E116E0();
  result = sub_231E12250();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_231E0FBF0();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (sub_231E12100())
        {
          break;
        }

        sub_231E0FC20();
        v11 = sub_231E0FC00();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

uint64_t sub_231CC5F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    result = sub_231CC686C(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_231CC686C((v12 > 1), v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return result;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x23837B130](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return result;
    }

LABEL_15:
    v18 = MEMORY[0x23837B160](v13 + 1);
    return sub_231CC5BA0(v18, v16);
  }

  result = sub_231CC52F4();
  if (*v4)
  {
    return sub_231CC67E4((*v4 + 16), *v4 + 32, a3, v4);
  }

  __break(1u);
  return result;
}

unint64_t sub_231CC60A8(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      return sub_231CC6344(a1);
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x23837B140]())
  {
LABEL_12:
    v12 = sub_231CC6344(a1);
    if (v7)
    {
      swift_beginAccess();
      v13 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(*v5 + 16);
    if (v13 || v14 >= 0x10)
    {
      v15 = MEMORY[0x23837B160](v14);
      sub_231CC5BA0(v15, v13);
    }

    else
    {

      *v3 = 0;
    }

    return v12;
  }

  result = sub_231CC52F4();
  v10 = *v3;
  if (*v3)
  {

    result = sub_231CC5534(a2, (v10 + 16), v10 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v11 = v3[1];

      sub_231CC5724(a1, a1 + 1, v11, (v10 + 16), v10 + 32);

      return sub_231CC6344(a1);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231CC6258@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_231CC63CC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0) - 8);
    v9 = *(v8 + 72);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v9 * a1;
    sub_231CB4E2C(v10, a2);
    result = sub_231CB5940(v10 + v9, v7 - 1 - a1, v10);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_231CC6344(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_231CC63E0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

void *sub_231CC63F4(void *result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD741A0, &qword_231E13888);
  v10 = *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0) - 8);
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
  v15 = *(_s14descr2846EFBA1C23InMemoryMailResultCacheC6ResultVMa(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_231CB5940(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_231CC65A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
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