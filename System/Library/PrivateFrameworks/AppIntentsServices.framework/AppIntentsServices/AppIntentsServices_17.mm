BOOL sub_221B4017C()
{
  os_unfair_lock_lock((v0 + 112));
  v1 = *(v0 + 120) == 0;
  os_unfair_lock_unlock((v0 + 112));
  return v1;
}

void *sub_221B401B8(uint64_t a1, uint64_t a2)
{
  _s13ProgressTasksO21TimeoutSignalProviderCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v2[2] = v5;
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t sub_221B40208(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B40228, 0, 0);
}

uint64_t sub_221B40228()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_278_1();
  OUTLINED_FUNCTION_386_0();
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_43_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_286_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_47_6(v1);

  return v4(v3);
}

uint64_t sub_221B40324()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3 & 1;
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B40430(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B40450, 0, 0);
}

uint64_t sub_221B40450()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_278_1();
  OUTLINED_FUNCTION_386_0();
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_43_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_286_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_47_6(v1);

  return v4(v3);
}

uint64_t sub_221B4054C()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B40654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 24))(a1, a2, a3, ObjectType, v7);
  v10 = *(v9 + 16);
  if (v10)
  {
    v24 = MEMORY[0x277D84F90];
    sub_2219A30D4(0, v10, 0);
    v11 = v24;
    v12 = (v9 + 64);
    do
    {
      v13 = *(v12 - 3);
      v23 = *(v12 - 4);
      v22 = *(v12 - 16);
      v14 = *(v12 - 1);
      v15 = *v12;
      v16 = swift_allocObject();
      v16[2] = v21;
      v16[3] = v14;
      v16[4] = v15;
      v17 = *(v24 + 16);
      v18 = *(v24 + 24);

      if (v17 >= v18 >> 1)
      {
        sub_2219A30D4((v18 > 1), v17 + 1, 1);
      }

      *(v24 + 16) = v17 + 1;
      v19 = v24 + 40 * v17;
      *(v19 + 32) = v23;
      *(v19 + 40) = v13;
      *(v19 + 48) = v22;
      *(v19 + 56) = &unk_221BE5B20;
      *(v19 + 64) = v16;
      v12 += 5;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t sub_221B407F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_221B40818, 0, 0);
}

uint64_t sub_221B40818()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[4];
  v0[6] = *(v0[3] + 16);
  sub_221BA6564();
  v6 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[7] = v2;
  *v2 = v3;
  v2[1] = sub_221B40914;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_221B40914()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B40A0C()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BA9A08();
  OUTLINED_FUNCTION_4_3();

  return v0();
}

uint64_t sub_221B40A64()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BA9A08();
  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B40AC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B40AE0, 0, 0);
}

uint64_t sub_221B40AE0()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_278_1();
  OUTLINED_FUNCTION_386_0();
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_43_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_286_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_47_6(v1);

  return v4(v3);
}

uint64_t sub_221B40BDC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B40BFC, 0, 0);
}

uint64_t sub_221B40BFC()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_278_1();
  OUTLINED_FUNCTION_386_0();
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_43_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_286_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_47_6(v1);

  return v4(v3);
}

uint64_t sub_221B40CF8()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B40E00()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BA9A08();
  OUTLINED_FUNCTION_290_1();
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_221B40E60()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BA9A08();
  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B40EBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B40EDC, 0, 0);
}

uint64_t sub_221B40EDC()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_278_1();
  OUTLINED_FUNCTION_386_0();
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_43_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_286_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_47_6(v1);

  return v4(v3);
}

uint64_t sub_221B40FD8()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3 & 1;
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B410E4()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BA9A08();
  OUTLINED_FUNCTION_290_1();
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_221B41144()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BA9A08();
  OUTLINED_FUNCTION_290_1();

  return v0(0);
}

uint64_t sub_221B411A4()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_221B411CC()
{
  v0 = sub_221B411A4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_221B41230(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B62F60;

  return sub_221B40208(a1);
}

uint64_t sub_221B412C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B62F64;

  return sub_221B40430(a1);
}

uint64_t sub_221B4135C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B62F60;

  return sub_221B40AC0(a1);
}

uint64_t sub_221B413F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B41484;

  return sub_221B40BDC(a1);
}

uint64_t sub_221B41484()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;

  OUTLINED_FUNCTION_290_1();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_221B41570(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B41604;

  return sub_221B40EBC(a1);
}

uint64_t sub_221B41604()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;

  OUTLINED_FUNCTION_290_1();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_221B416F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[63] = a5;
  v6[64] = a6;
  v6[61] = a3;
  v6[62] = a4;
  v6[59] = a1;
  v6[60] = a2;
  v7 = sub_221BCCD88();
  v6[65] = v7;
  v6[66] = *(v7 - 8);
  v6[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B41848, 0, 0);
}

uint64_t sub_221B41848()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v1 = *(*(v0 + 488) + 129);
  *(v0 + 212) = v1;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  *(v0 + 576) = __swift_project_value_buffer(*(v0 + 520), qword_27CFDEE88);
  if (qword_27CFB7288 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 568);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 480);
  memcpy((v0 + 216), &qword_27CFDE6D0, 0x59uLL);
  *(v0 + 584) = v4[12];
  *(v0 + 592) = v4[13];
  *(v0 + 600) = v4[4];
  *(v0 + 608) = v4[5];
  v23 = *(v0 + 504);
  v6 = OUTLINED_FUNCTION_190_1();
  sub_2219EB748(v6, v7);
  OUTLINED_FUNCTION_416();
  v8 = swift_allocObject();
  *(v0 + 616) = v8;
  *(v8 + 16) = v1;
  v9 = *(v0 + 328);
  *(v8 + 24) = *(v0 + 312);
  *(v8 + 40) = v9;
  *(v8 + 56) = *(v0 + 344);
  memcpy((v8 + 64), v23, 0xC4uLL);
  *(v8 + 264) = v4;
  v10 = sub_221BCCD08();
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0;
  OUTLINED_FUNCTION_21_6(v2, v11, v12, v10);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = swift_task_alloc();
  *(v0 + 624) = v17;
  *(v17 + 16) = v5;
  *(v17 + 24) = v3;
  *(v17 + 32) = v4;
  *(v17 + 40) = v23;
  sub_2219EB864(v23, v0 + 16);

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_238();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_221B41A28()
{
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_353_0();
  v1 = OUTLINED_FUNCTION_308_0();
  v2(v1);
  sub_221B62018((v0 + 44), (v0 + 49), qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_17_6();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_312_0();
  sub_221B62018(v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8040, &qword_221BD2900);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  OUTLINED_FUNCTION_252_2();

  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_112_5();
  v12 = sub_2219CB588();
  v0[79] = v12;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v0[57] = v11;
  v0[58] = &off_28351D968;
  v0[54] = v12;
  v13 = swift_task_alloc();
  v0[80] = v13;
  OUTLINED_FUNCTION_304_0(v13);

  v14 = swift_task_alloc();
  v0[81] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  *v14 = v0;
  v14[1] = sub_221B41CA0;
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_246_2();

  return MEMORY[0x282200908](v15);
}

uint64_t sub_221B41CA0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 656) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 432, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B41DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_399_0();
  v12 = *(v11 + 552);

  sub_2219EC58C(v12, &qword_27CFB7F58);
  sub_2219EC58C(v10, &qword_27CFB7F60);
  sub_2219EC58C(v11 + 352, qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_221B41EC4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_399_0();
  v2 = *(v1 + 552);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_338_0(v1 + 352);
  OUTLINED_FUNCTION_338_0(v1 + 432);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B41F8C()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B42020(char a1, uint64_t a2, const void *a3, uint64_t a4)
{
  __dst[1] = 0xE000000000000000;
  sub_221BCDE68();

  v23 = 0x696D726F66726550;
  v24 = 0xEB0000000020676ELL;
  __dst[3] = &type metadata for AppIntentSpecification;
  __dst[4] = sub_2219EB9A8(v8, v9, v10);
  __dst[0] = swift_allocObject();
  sub_2219EB748(a2, __dst[0] + 16);
  __swift_project_boxed_opaque_existential_0(__dst, &type metadata for AppIntentSpecification);
  LOBYTE(v20) = a1 & 1;
  v11 = sub_2219B5AFC(&v20);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_0(__dst);
  MEMORY[0x223DA31F0](v11, v13);

  MEMORY[0x223DA31F0](0x736E6F6974706F20, 0xEA0000000000203ALL);
  memcpy(__dst, a3, 0xC4uLL);
  sub_2219EB864(a3, &v20);
  v14 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v14);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  sub_2219EBEE4(a4 + 136, __dst);
  v15 = __dst[7];
  if (__dst[7])
  {
    v16 = __dst[6];
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_221BCDE68();

    v20 = 0xD00000000000001ALL;
    v21 = 0x8000000221BF0BB0;
    MEMORY[0x223DA31F0](v16, v15);
    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    v18 = v20;
    v17 = v21;
  }

  else
  {
    v17 = 0xED00003E72657355;
    v18 = 0x746E65727275433CLL;
  }

  sub_2219EBE90(__dst);
  MEMORY[0x223DA31F0](v18, v17);

  return v23;
}

uint64_t sub_221B4224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[37] = a6;
  v7[38] = a7;
  v7[35] = a4;
  v7[36] = a5;
  v7[33] = a2;
  v7[34] = a3;
  v7[32] = a1;
  v8 = sub_221BCC558();
  v7[39] = v8;
  v9 = *(v8 - 8);
  v7[40] = v9;
  v7[41] = *(v9 + 64);
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B4232C, 0, 0);
}

uint64_t sub_221B4232C()
{
  OUTLINED_FUNCTION_353_0();
  v38 = v0;
  sub_221B42830(*(v0 + 272), &unk_283519AA0, sub_221B603F0, &unk_283519AC8, sub_221B62F40);
  v1 = sub_221B707F8();
  sub_221B25E10(v1);

  v2 = OUTLINED_FUNCTION_103_2();
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  v36[0] = v33;
  v36[1] = v34;
  v37 = v35;
  sub_221B3C800(v36);
  v6 = *(v0 + 336);
  v7 = *(v0 + 320);
  v8 = *(v0 + 328);
  v9 = *(v0 + 312);
  v10 = *(v0 + 288);
  v11 = *(v0 + 280);
  v32 = *(v0 + 304);
  __src = *(v0 + 296);
  v31 = *(v0 + 264);

  v12 = OUTLINED_FUNCTION_70();
  sub_2219982C4(v12, v13);
  sub_221BCC548();
  sub_2219EB748(v11, v0 + 216);
  v14 = OUTLINED_FUNCTION_221();
  v15(v14);
  v16 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 203) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v0 + 352) = v19;
  v20 = *(v0 + 232);
  *(v19 + 16) = *(v0 + 216);
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v0 + 248);
  *(v19 + 56) = v10;
  (*(v7 + 32))(v19 + v16, v6, v9);
  memcpy((v19 + v17), __src, 0xC4uLL);
  *(v19 + v18) = v31;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;

  sub_2219EB864(__src, v0 + 16);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 360) = v21;
  *v21 = v22;
  v21[1] = sub_221B42618;
  OUTLINED_FUNCTION_246_2();

  return sub_221B3B654(v23, v24, v25, v26, v27);
}

uint64_t sub_221B42618()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_17_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 368) = v0;

  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_221B42738()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[40] + 8))(v0[43], v0[39]);

  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B427B4()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[40] + 8))(v0[43], v0[39]);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221B42830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_10();
  v8 = swift_allocObject();
  swift_weakInit();

  sub_221B56B00(a3, v8, a4, a5);
}

uint64_t sub_221B428B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[26] = a3;
  v8[27] = a4;
  v8[24] = a1;
  v8[25] = a2;
  v9 = sub_221BCC558();
  v8[32] = v9;
  v8[33] = *(v9 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
  v8[36] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v8[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B429DC, 0, 0);
}

uint64_t sub_221B429DC()
{
  v46 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  sub_2219EB748(*(v0 + 208), v0 + 16);
  sub_2219A1B08(v7 + 56, v0 + 56);
  (*(v2 + 16))(v1, v6, v3);
  v30 = v4[1];
  v31 = *v4;
  v35 = *(v4 + 3);
  v36 = v4[32];
  *(v0 + 96) = *(v4 + 40);
  v37 = *(v4 + 7);
  v38 = *(v4 + 8);
  *(v0 + 112) = *(v4 + 72);
  v39 = v4[89];
  v40 = *(v7 + 200);
  v41[14] = v4[16];
  *&v41[6] = *(v4 + 1);
  *&v42[5] = *(v4 + 40);
  *&v43[7] = *(v4 + 72);
  memcpy(&__src[7], v4 + 96, 0x64uLL);
  __src[110] = 0;
  v8 = *(v5 + qword_27CFDED20 + 8);
  v34 = *(v5 + qword_27CFDED20);
  v32 = *(v5 + qword_27CFDED20 + 17);
  v33 = *(v5 + qword_27CFDED20 + 16);
  v9 = *(v7 + 128);
  OUTLINED_FUNCTION_387();
  sub_221B62018(v10, v11, v12, v13);
  OUTLINED_FUNCTION_387();
  sub_221B62018(v14, v15, v16, v17);

  if (v9 == 10)
  {
    static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter(v45);
    LOBYTE(v9) = v45[0];
  }

  v19 = *(v0 + 280);
  v18 = *(v0 + 288);
  v20 = *(v0 + 16);
  v21 = *(v0 + 32);
  *(v18 + 32) = *(v0 + 48);
  *v18 = v20;
  *(v18 + 16) = v21;
  sub_22198B358((v0 + 56), v18 + 40);
  OUTLINED_FUNCTION_145_3();
  v22();
  v23 = v18 + v19[7];
  *v23 = v31;
  *(v23 + 1) = v30;
  *(v23 + 2) = *v41;
  *(v23 + 9) = *&v41[7];
  v24 = *(v0 + 344);
  *(v23 + 20) = *(v0 + 347);
  *(v23 + 17) = v24;
  *(v23 + 24) = v35;
  *(v23 + 32) = 0;
  *(v23 + 33) = 1;
  *(v23 + 34) = v36;
  *(v23 + 48) = *&v42[13];
  *(v23 + 35) = *v42;
  *(v23 + 56) = v37;
  *(v23 + 64) = 0;
  v25 = *(v0 + 354);
  *(v23 + 65) = *(v0 + 351);
  *(v23 + 68) = v25;
  *(v23 + 72) = v38;
  *(v23 + 80) = 0;
  *(v23 + 81) = *v43;
  *(v23 + 96) = *&v43[15];
  *(v23 + 104) = v39;
  memcpy((v23 + 105), __src, 0x6BuLL);
  *(v23 + 212) = v40;
  *(v23 + 214) = 0;
  v26 = v18 + v19[8];
  *v26 = v34;
  *(v26 + 8) = v8;
  *(v26 + 16) = v33;
  *(v26 + 17) = v32;
  *(v18 + v19[9]) = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 304) = v27;
  *v27 = v28;
  v27[1] = sub_221B42D40;

  return sub_221A3583C();
}

uint64_t sub_221B42D40()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 312) = v0;

  sub_221B62E44(v5, type metadata accessor for AppIntentsProtocol.PerformAction.Request);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B42E68()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 296);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = swift_task_alloc();
  *(v0 + 320) = v6;
  v7 = *(v0 + 224);
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  *(v6 + 32) = v5;
  *(v6 + 40) = v2;
  *(v6 + 48) = v7;
  *(v6 + 64) = v3;
  v8 = swift_task_alloc();
  *(v0 + 328) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  OUTLINED_FUNCTION_35_3();
  *v8 = v9;
  v8[1] = sub_221B42F78;
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x2822008A0](v10);
}

uint64_t sub_221B42F78()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B43078()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 296);
  OUTLINED_FUNCTION_3_25();
  sub_221B62E44(v1, v2);

  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_221B430FC()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B43174()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 296);

  OUTLINED_FUNCTION_3_25();
  sub_221B62E44(v1, v2);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B43204(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{

  sub_221B59FDC(a3, a4, a1, a5, a6, a7, a8, a2);
}

void sub_221B43298(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA58, &qword_221BE5488);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  a5[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB28, &qword_221BE56E0);
  swift_allocObject();
  sub_221B58E88(a1);
  v14 = sub_221B56BD8(a1);
  *a5 = v14;
  a5[3] = a2;
  v15 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = v14;
  v16[6] = a3;
  v16[7] = a4;
  v16[8] = v14;
  swift_retain_n();
  sub_2219F7E3C();
  a5[2] = v17;
}

void sub_221B43418(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA58, &qword_221BE5488);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  a5[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAC0, &qword_221BE5520);
  swift_allocObject();
  sub_221B58E88(a1);
  v14 = sub_221B56F04(a1);
  *a5 = v14;
  a5[3] = a2;
  v15 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = v14;
  v16[6] = a3;
  v16[7] = a4;
  v16[8] = v14;
  swift_retain_n();
  sub_2219F7E3C();
  a5[2] = v17;
}

void sub_221B43598(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA58, &qword_221BE5488);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  a5[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAF8, &qword_221BE5680);
  swift_allocObject();
  sub_221B58E88(a1);
  sub_221B57224();
  v15 = v14;
  *a5 = v14;
  a5[3] = a2;
  v16 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = v15;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = v15;
  swift_retain_n();
  sub_2219F7E3C();
  a5[2] = v18;
}

void sub_221B43728(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA58, &qword_221BE5488);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  a5[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA60, &qword_221BE5490);
  swift_allocObject();
  sub_221B58E88(a1);
  sub_221B57224();
  v15 = v14;
  *a5 = v14;
  a5[3] = a2;
  v16 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = v15;
  v17[6] = a3;
  v17[7] = a4;
  v17[8] = v15;
  swift_retain_n();
  sub_2219F7E3C();
  a5[2] = v18;
}

uint64_t sub_221B438B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1088) = v12;
  *(v8 + 1080) = v11;
  *(v8 + 1064) = v10;
  *(v8 + 1056) = a8;
  *(v8 + 1048) = a7;
  *(v8 + 1040) = a6;
  *(v8 + 1032) = a5;
  *(v8 + 1024) = a4;
  return MEMORY[0x2822009F8](sub_221B43904, 0, 0);
}

uint64_t sub_221B43904()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 1024);
  memcpy((v0 + 768), *(v0 + 1048), 0xC4uLL);
  *(v0 + 964) = *(v1 + 129);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 1096) = v2;
  *v2 = v3;
  v2[1] = sub_221B439C0;
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);

  return sub_221B43CD0(v0 + 544, v5, v4, v0 + 768, (v0 + 964));
}

uint64_t sub_221B439C0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 1104) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B43AB8()
{
  OUTLINED_FUNCTION_104();
  v20 = v0;
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[133];
  v4 = v0[128];
  *&v17 = v0[132];
  *(&v17 + 1) = v3;
  v18 = v2;
  v19 = v1;

  swift_bridgeObjectRetain_n();
  v5 = OUTLINED_FUNCTION_118();
  sub_221998178(v5, v6);

  _IntentValueConversionContext.init(origin:dispatcher:)(&v17, v4, &off_2835191E0, (v0 + 121));
  v7 = OUTLINED_FUNCTION_14();
  sub_221B44344(v7, v8, v2, v1, v9);

  v10 = OUTLINED_FUNCTION_118();
  sub_2219982C4(v10, v11);
  v0[5] = &type metadata for _IntentValueConversionContext;
  v0[6] = &protocol witness table for _IntentValueConversionContext;
  OUTLINED_FUNCTION_49();
  v12 = swift_allocObject();
  v0[2] = v12;
  sub_2219EB180((v0 + 121), v12 + 16);
  sub_221B62018((v0 + 2), (v0 + 35), &qword_27CFB8048, &qword_221BE5700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  sub_221BCD798();
  v13 = OUTLINED_FUNCTION_103_2();
  sub_2219EC58C(v13, v14);
  sub_22199C274((v0 + 121));
  sub_2219EC58C((v0 + 68), &unk_27CFBB7A0);
  OUTLINED_FUNCTION_25();

  return v15();
}

uint64_t sub_221B43C54()
{
  OUTLINED_FUNCTION_1_5();
  *(v0 + 1016) = *(v0 + 1104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  sub_221BCD788();
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221B43CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 72) = a3;
  *(v6 + 80) = v5;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 88) = *(a4 + 40);
  *(v6 + 161) = *a5;
  return MEMORY[0x2822009F8](sub_221B43D04, 0, 0);
}

uint64_t sub_221B43D04()
{
  OUTLINED_FUNCTION_67();
  v34 = v0;
  v1 = *(*(v0 + 64) + 216);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = [v1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_2219A1D20(0, &unk_27CFBB9D0, 0x277D23780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 48);
  *(v0 + 104) = v3;
  v4 = [v1 valueType];
  *(v0 + 112) = v4;
  if (!v4)
  {
LABEL_8:

LABEL_9:
    sub_221B62018(*(v0 + 64), *(v0 + 56), &unk_27CFBB7A0, &qword_221BD2930);
    goto LABEL_10;
  }

  v5 = v4;
  objc_opt_self();
  OUTLINED_FUNCTION_25_1();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_8;
  }

  if (([v6 capabilities] & 1) == 0)
  {
    sub_221B62018(*(v0 + 64), *(v0 + 56), &unk_27CFBB7A0, &qword_221BD2930);

LABEL_10:
    OUTLINED_FUNCTION_4_3();

    return v7();
  }

  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v9 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v9, qword_27CFDEE88);
  v10 = sub_221BCCD68();
  v11 = sub_221BCDA98();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_74_0();
    v13 = OUTLINED_FUNCTION_68();
    v33 = v13;
    *v12 = 136315138;
    v14 = static Instrumentation.currentActivityId.getter();
    v16 = sub_2219A6360(v14, v15, &v33);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_221989000, v10, v11, "%sIntent returned an AsyncSequence, retrieving content", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v17 = OUTLINED_FUNCTION_74_3();
    MEMORY[0x223DA4C00](v17);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00](v18);
  }

  v19 = *(v0 + 96);
  if (v19)
  {
    v20 = *(v0 + 88);
    sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);
    OUTLINED_FUNCTION_316_0();

    v21 = sub_221AE94F4(v20, v19);
    v19 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v21 preferredExtractionType:1];
  }

  *(v0 + 120) = v19;
  *(v0 + 160) = *(v0 + 161);
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33(&qword_27CFB7368);
  }

  sub_221BCBC4C(qword_27CFDEDA8);
  v22 = swift_task_alloc();
  *(v0 + 128) = v22;
  *v22 = v0;
  v22[1] = sub_221B4409C;
  v23 = *(v0 + 72);
  v37 = 1;
  v36 = v0 + 160;
  OUTLINED_FUNCTION_236_1(v23);
  OUTLINED_FUNCTION_152();

  return sub_221B4E004(v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_221B4409C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_17_3();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v7 + 136) = v0;

  if (v0)
  {
  }

  else
  {
    v11 = *(v7 + 120);
    *(v7 + 144) = v3;
    *(v7 + 152) = v5;
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221B441BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v13 = v12[18];
  v15 = v12[13];
  v14 = v12[14];
  v16 = v12[7];
  v17 = v12[8];
  v18 = OUTLINED_FUNCTION_420();
  sub_221B62018(v18, v19, v20, v21);
  sub_221B62018(v17 + 40, v16 + 40, &qword_27CFB8320, &unk_221BD1D60);
  sub_221B62018(v17 + 80, v16 + 80, &unk_27CFBB7C0, &qword_221BE4C20);
  v22 = *(v17 + 120);
  sub_221B62018(v17 + 128, v16 + 128, &unk_27CFBB7C0, &qword_221BE4C20);
  v23 = *(v17 + 168);
  sub_221B62018(v17 + 176, v16 + 176, &unk_27CFB93B0, &qword_221BD1D70);
  v24 = objc_allocWithZone(MEMORY[0x277D23958]);
  v25 = OUTLINED_FUNCTION_284_0();
  v26 = sub_221B58B8C(v25, v13);

  *(v16 + 216) = v26;
  *(v16 + 120) = v22;
  *(v16 + 168) = v23;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_95_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_221B442E4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_25();

  return v2();
}

id sub_221B44344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  sub_221B62018(v5, v53, &unk_27CFBB7B0, &unk_221BE4C10);
  sub_221B62018(v5 + 40, v51, &qword_27CFB8320, &unk_221BD1D60);
  sub_221B62018(v5 + 80, v48, &unk_27CFBB7C0, &qword_221BE4C20);
  v12 = v49;
  v46 = a1;
  v47 = a2;
  if (v49)
  {
    v13 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    v14 = *(v13 + 16);

    sub_221998178(a3, a4);
    v15 = v14(v12, v13);
    v16 = a4;
    v18 = v17;
    v20 = v49;
    v19 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    v21 = (*(v19 + 24))(v20, v19);
    v12 = swift_allocObject();
    v12[2] = v46;
    v12[3] = a2;
    v22 = a3;
    v12[4] = a3;
    v12[5] = v16;
    v23 = v16;
    v12[6] = v15;
    v12[7] = v18;
    v12[8] = v21;
    sub_2219B397C(v48);
    v24 = &off_283513928;
    v45 = &type metadata for AnyAppIntentSpecification;
  }

  else
  {
    v22 = a3;
    v23 = a4;
    sub_2219EC58C(v48, &unk_27CFBB7C0);
    v45 = 0;
    v24 = 0;
  }

  v44 = *(v6 + 120);
  sub_221B62018(v6 + 128, v48, &unk_27CFBB7C0, &qword_221BE4C20);
  v25 = v49;
  if (v49)
  {
    v26 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    v43 = v24;
    v27 = *(v26 + 16);

    sub_221998178(v22, v23);
    v28 = v27(v25, v26);
    v30 = v29;
    v32 = v49;
    v31 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    v33 = v32;
    v24 = v43;
    v34 = (*(v31 + 24))(v33, v31);
    v35 = swift_allocObject();
    v35[2] = v46;
    v35[3] = v47;
    v35[4] = v22;
    v35[5] = v23;
    v35[6] = v28;
    v35[7] = v30;
    v35[8] = v34;
    sub_2219B397C(v48);
    v36 = &type metadata for AnyAppIntentSpecification;
    v37 = &off_283513928;
  }

  else
  {
    sub_2219EC58C(v48, &unk_27CFBB7C0);
    v37 = 0;
    v36 = 0;
    v35 = 0;
  }

  v38 = *(v6 + 168);
  sub_221B62018(v6 + 176, a5 + 176, &unk_27CFB93B0, &qword_221BD1D70);
  v39 = v53[1];
  *a5 = v53[0];
  *(a5 + 16) = v39;
  v40 = v51[1];
  *(a5 + 40) = v51[0];
  v41 = *(v6 + 216);
  *(a5 + 216) = v41;
  *(a5 + 32) = v54;
  *(a5 + 56) = v40;
  *(a5 + 72) = v52;
  *(a5 + 80) = v12;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = v45;
  *(a5 + 112) = v24;
  *(a5 + 120) = v44;
  *(a5 + 128) = v35;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = v36;
  *(a5 + 160) = v37;
  *(a5 + 168) = v38;

  return v41;
}

uint64_t sub_221B446A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v13;
  *(v8 + 272) = v12;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 232) = a4;
  v9 = sub_221BCCD88();
  *(v8 + 296) = v9;
  *(v8 + 304) = *(v9 - 8);
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 360) = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.UnknownRequestResponse(0);
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B44860, 0, 0);
}

uint64_t sub_221B44860()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v1 = OUTLINED_FUNCTION_70();
  v2(v1);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v3 = __swift_project_value_buffer(v0[37], qword_27CFDEE88);
  v0[47] = v3;
  if (qword_27CFB72C0 != -1)
  {
    v3 = swift_once();
  }

  v4 = v0[46];
  v5 = v0[43];
  v6 = v0[31];
  OUTLINED_FUNCTION_194_0(v3, &qword_27CFDE970);
  v7 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v7, v8);
  v9 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v5, v10, v11, v9);
  v12 = sub_221BCCCD8();
  v13 = OUTLINED_FUNCTION_98_5(v12);
  v0[48] = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v4;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221B4499C()
{
  OUTLINED_FUNCTION_293_1();
  OUTLINED_FUNCTION_113_0();
  (*(v0[38] + 16))(v0[39], v0[47], v0[37]);
  v1 = OUTLINED_FUNCTION_209_2();
  sub_221B62018(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_118();
  sub_221B62018(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_14();
  sub_221B62018(v9, v10, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  v0[49] = OUTLINED_FUNCTION_18_12();
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v13 = OUTLINED_FUNCTION_148_4();
  v0[50] = v13;
  OUTLINED_FUNCTION_318_0(v13);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[51] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_78_1(v14);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_203_2();

  return MEMORY[0x282200908](v16);
}

uint64_t sub_221B44B54()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 416) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B44C88()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v1, &qword_27CFB7F60);
  sub_2219EC58C(v0 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B44E70()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v1, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v3, v4);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v5, v6);

  v7 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B44F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_224_2();
  sub_221B62E44(v10, v11);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_152();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_221B44FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B45004, 0, 0);
}

uint64_t sub_221B45004()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_368_0();
  v3 = OUTLINED_FUNCTION_226_3(v1, v2);
  v4 = OUTLINED_FUNCTION_256_1(v3);
  v5 = OUTLINED_FUNCTION_146_3(v4);
  OUTLINED_FUNCTION_81_7(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v15);
  OUTLINED_FUNCTION_234_2();
  *v0 = v16;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v17);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v18);
}

uint64_t sub_221B450CC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B45258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3EDA0();
}

uint64_t sub_221B45308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v18;
  *(v8 + 288) = v19;
  *(v8 + 264) = v17;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v11 = sub_221BCCD88();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 360) = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(0);
  v12 = swift_task_alloc();
  *(v8 + 368) = v12;
  ObjectType = swift_getObjectType();
  *(v8 + 376) = ObjectType;
  v14 = swift_task_alloc();
  *(v8 + 384) = v14;
  *v14 = v8;
  v14[1] = sub_221B45538;

  return sub_221B240E4(v12, a6, ObjectType, a5);
}

uint64_t sub_221B45538()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B4561C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  *(v1 + 392) = __swift_project_value_buffer(*(v1 + 296), qword_27CFDEE88);
  if (qword_27CFB7290 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDE730);
  v3 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v3, v4);
  v5 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v6, v7, v5);
  v8 = sub_221BCCCD8();
  v9 = OUTLINED_FUNCTION_98_5(v8);
  OUTLINED_FUNCTION_352_0(v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B45714()
{
  OUTLINED_FUNCTION_293_1();
  OUTLINED_FUNCTION_113_0();
  v1 = OUTLINED_FUNCTION_40_9();
  v2(v1);
  v3 = OUTLINED_FUNCTION_209_2();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_118();
  sub_221B62018(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_14();
  sub_221B62018(v11, v12, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_362_0(v15);
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v16 = OUTLINED_FUNCTION_148_4();
  v17 = OUTLINED_FUNCTION_359_0(v16);
  OUTLINED_FUNCTION_318_0(v17);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 424) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_78_1(v18);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_203_2();

  return MEMORY[0x282200908](v20);
}

uint64_t sub_221B458A8()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B459DC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B45B48()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B45C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_221_4();
  sub_221B62E44(v10, v11);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_152();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_221B45CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B45CD0, 0, 0);
}

uint64_t sub_221B45CD0()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_368_0();
  v3 = OUTLINED_FUNCTION_226_3(v1, v2);
  v4 = OUTLINED_FUNCTION_256_1(v3);
  v5 = OUTLINED_FUNCTION_146_3(v4);
  OUTLINED_FUNCTION_81_7(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v15);
  OUTLINED_FUNCTION_234_2();
  *v0 = v16;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v17);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v18);
}

uint64_t sub_221B45D98()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B45F0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3A6D8();
}

uint64_t sub_221B45FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v18;
  *(v8 + 288) = v19;
  *(v8 + 264) = v17;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v11 = sub_221BCCD88();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 360) = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(0);
  v12 = swift_task_alloc();
  *(v8 + 368) = v12;
  ObjectType = swift_getObjectType();
  *(v8 + 376) = ObjectType;
  v14 = swift_task_alloc();
  *(v8 + 384) = v14;
  *v14 = v8;
  v14[1] = sub_221B461EC;

  return sub_221B24510(v12, a6, ObjectType, a5);
}

uint64_t sub_221B461EC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B462D0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  *(v1 + 392) = __swift_project_value_buffer(*(v1 + 296), qword_27CFDEE88);
  if (qword_27CFB72A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDE7F0);
  v3 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v3, v4);
  v5 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v6, v7, v5);
  v8 = sub_221BCCCD8();
  v9 = OUTLINED_FUNCTION_98_5(v8);
  OUTLINED_FUNCTION_352_0(v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B463C8()
{
  OUTLINED_FUNCTION_293_1();
  OUTLINED_FUNCTION_113_0();
  v1 = OUTLINED_FUNCTION_40_9();
  v2(v1);
  v3 = OUTLINED_FUNCTION_209_2();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_118();
  sub_221B62018(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_14();
  sub_221B62018(v11, v12, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_362_0(v15);
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v16 = OUTLINED_FUNCTION_148_4();
  v17 = OUTLINED_FUNCTION_359_0(v16);
  OUTLINED_FUNCTION_318_0(v17);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 424) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_78_1(v18);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_203_2();

  return MEMORY[0x282200908](v20);
}

uint64_t sub_221B4655C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B46690()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B467FC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B468BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_220_4();
  sub_221B62E44(v10, v11);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_152();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_221B46960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B46984, 0, 0);
}

uint64_t sub_221B46984()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_368_0();
  v3 = OUTLINED_FUNCTION_226_3(v1, v2);
  v4 = OUTLINED_FUNCTION_256_1(v3);
  v5 = OUTLINED_FUNCTION_146_3(v4);
  OUTLINED_FUNCTION_81_7(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v15);
  OUTLINED_FUNCTION_234_2();
  *v0 = v16;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v17);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v18);
}

uint64_t sub_221B46A4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3B3F8();
}

uint64_t sub_221B46AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v18;
  *(v8 + 288) = v19;
  *(v8 + 264) = v17;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v11 = sub_221BCCD88();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 360) = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0);
  v12 = swift_task_alloc();
  *(v8 + 368) = v12;
  ObjectType = swift_getObjectType();
  *(v8 + 376) = ObjectType;
  v14 = swift_task_alloc();
  *(v8 + 384) = v14;
  *v14 = v8;
  v14[1] = sub_221B46D2C;

  return sub_221B25358(v12, a6, ObjectType, a5);
}

uint64_t sub_221B46D2C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B46E10()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  *(v1 + 392) = __swift_project_value_buffer(*(v1 + 296), qword_27CFDEE88);
  if (qword_27CFB72A8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDE850);
  v3 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v3, v4);
  v5 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v6, v7, v5);
  v8 = sub_221BCCCD8();
  v9 = OUTLINED_FUNCTION_98_5(v8);
  OUTLINED_FUNCTION_352_0(v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B46F08()
{
  OUTLINED_FUNCTION_293_1();
  OUTLINED_FUNCTION_113_0();
  v1 = OUTLINED_FUNCTION_40_9();
  v2(v1);
  v3 = OUTLINED_FUNCTION_209_2();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_118();
  sub_221B62018(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_14();
  sub_221B62018(v11, v12, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_362_0(v15);
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v16 = OUTLINED_FUNCTION_148_4();
  v17 = OUTLINED_FUNCTION_359_0(v16);
  OUTLINED_FUNCTION_318_0(v17);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 424) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_78_1(v18);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_203_2();

  return MEMORY[0x282200908](v20);
}

uint64_t sub_221B4709C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B471D0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B4733C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B473FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_219_4();
  sub_221B62E44(v10, v11);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_152();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_221B474A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B474C4, 0, 0);
}

uint64_t sub_221B474C4()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_368_0();
  v3 = OUTLINED_FUNCTION_226_3(v1, v2);
  v4 = OUTLINED_FUNCTION_256_1(v3);
  v5 = OUTLINED_FUNCTION_146_3(v4);
  OUTLINED_FUNCTION_81_7(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v15);
  OUTLINED_FUNCTION_234_2();
  *v0 = v16;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v17);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v18);
}

uint64_t sub_221B4758C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3BEDC();
}

uint64_t sub_221B4763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v18;
  *(v8 + 288) = v19;
  *(v8 + 264) = v17;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v11 = sub_221BCCD88();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 360) = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0);
  v12 = swift_task_alloc();
  *(v8 + 368) = v12;
  ObjectType = swift_getObjectType();
  *(v8 + 376) = ObjectType;
  v14 = swift_task_alloc();
  *(v8 + 384) = v14;
  *v14 = v8;
  v14[1] = sub_221B4786C;

  return sub_221B24998(v12, a6, ObjectType, a5);
}

uint64_t sub_221B4786C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B47950()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  *(v1 + 392) = __swift_project_value_buffer(*(v1 + 296), qword_27CFDEE88);
  if (qword_27CFB72B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDE8B0);
  v3 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v3, v4);
  v5 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v6, v7, v5);
  v8 = sub_221BCCCD8();
  v9 = OUTLINED_FUNCTION_98_5(v8);
  OUTLINED_FUNCTION_352_0(v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B47A48()
{
  OUTLINED_FUNCTION_293_1();
  OUTLINED_FUNCTION_113_0();
  v1 = OUTLINED_FUNCTION_40_9();
  v2(v1);
  v3 = OUTLINED_FUNCTION_209_2();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_118();
  sub_221B62018(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_14();
  sub_221B62018(v11, v12, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_362_0(v15);
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v16 = OUTLINED_FUNCTION_148_4();
  v17 = OUTLINED_FUNCTION_359_0(v16);
  OUTLINED_FUNCTION_318_0(v17);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 424) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_78_1(v18);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_203_2();

  return MEMORY[0x282200908](v20);
}

uint64_t sub_221B47BDC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B47D10()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B47E7C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B47F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_218_3();
  sub_221B62E44(v10, v11);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_152();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_221B47FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B48004, 0, 0);
}

uint64_t sub_221B48004()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_368_0();
  v3 = OUTLINED_FUNCTION_226_3(v1, v2);
  v4 = OUTLINED_FUNCTION_256_1(v3);
  v5 = OUTLINED_FUNCTION_146_3(v4);
  OUTLINED_FUNCTION_81_7(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v15);
  OUTLINED_FUNCTION_234_2();
  *v0 = v16;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v17);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v18);
}

uint64_t sub_221B480CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3CCF0();
}

uint64_t sub_221B4817C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v18;
  *(v8 + 288) = v19;
  *(v8 + 264) = v17;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v11 = sub_221BCCD88();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 360) = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
  v12 = swift_task_alloc();
  *(v8 + 368) = v12;
  ObjectType = swift_getObjectType();
  *(v8 + 376) = ObjectType;
  v14 = swift_task_alloc();
  *(v8 + 384) = v14;
  *v14 = v8;
  v14[1] = sub_221B483AC;

  return sub_221B24DEC(v12, a6, ObjectType, a5);
}

uint64_t sub_221B483AC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B48490()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  *(v1 + 392) = __swift_project_value_buffer(*(v1 + 296), qword_27CFDEE88);
  if (qword_27CFB7298 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDE790);
  v3 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v3, v4);
  v5 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v6, v7, v5);
  v8 = sub_221BCCCD8();
  v9 = OUTLINED_FUNCTION_98_5(v8);
  OUTLINED_FUNCTION_352_0(v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B48588()
{
  OUTLINED_FUNCTION_293_1();
  OUTLINED_FUNCTION_113_0();
  v1 = OUTLINED_FUNCTION_40_9();
  v2(v1);
  v3 = OUTLINED_FUNCTION_209_2();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_118();
  sub_221B62018(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_14();
  sub_221B62018(v11, v12, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  v15 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_362_0(v15);
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v16 = OUTLINED_FUNCTION_148_4();
  v17 = OUTLINED_FUNCTION_359_0(v16);
  OUTLINED_FUNCTION_318_0(v17);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 424) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_78_1(v18);
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_203_2();

  return MEMORY[0x282200908](v20);
}

uint64_t sub_221B4871C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B48850()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B489BC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B48A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_217_4();
  sub_221B62E44(v10, v11);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_152();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_221B48B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B48B44, 0, 0);
}

uint64_t sub_221B48B44()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_368_0();
  v3 = OUTLINED_FUNCTION_226_3(v1, v2);
  v4 = OUTLINED_FUNCTION_256_1(v3);
  v5 = OUTLINED_FUNCTION_146_3(v4);
  OUTLINED_FUNCTION_81_7(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v15);
  OUTLINED_FUNCTION_234_2();
  *v0 = v16;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v17);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v18);
}

uint64_t sub_221B48C0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3D7D4();
}

uint64_t sub_221B48CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1080) = v17;
  *(v8 + 1072) = v16;
  *(v8 + 1056) = v15;
  *(v8 + 1040) = v14;
  *(v8 + 1032) = a8;
  *(v8 + 1024) = a7;
  *(v8 + 1016) = a6;
  *(v8 + 1008) = a5;
  *(v8 + 1000) = a4;
  v9 = sub_221BCCD88();
  *(v8 + 1088) = v9;
  *(v8 + 1096) = *(v9 - 8);
  *(v8 + 1104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 1112) = swift_task_alloc();
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  *(v8 + 1144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 1168) = swift_task_alloc();
  *(v8 + 1176) = swift_task_alloc();
  *(v8 + 1184) = swift_task_alloc();
  *(v8 + 1192) = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 1200) = swift_task_alloc();
  *(v8 + 1208) = swift_task_alloc();
  *(v8 + 1216) = swift_task_alloc();
  *(v8 + 1224) = swift_task_alloc();
  v10 = sub_221BCC558();
  *(v8 + 1232) = v10;
  *(v8 + 1240) = *(v10 - 8);
  *(v8 + 1248) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  *(v8 + 1256) = v11;
  *(v8 + 1264) = *(v11 - 8);
  *(v8 + 1272) = swift_task_alloc();
  *(v8 + 1280) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  *(v8 + 1288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B48FCC, 0, 0);
}

uint64_t sub_221B48FCC()
{
  OUTLINED_FUNCTION_353_0();
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1256);
  v47 = *(v0 + 1248);
  v48 = *(v0 + 1280);
  v4 = *(v0 + 1240);
  v46 = *(v0 + 1232);
  v51 = *(v0 + 1072);
  v52 = *(v0 + 1080);
  v5 = *(v0 + 1056);
  v6 = *(v0 + 1032);
  v49 = *(v0 + 1024);
  v50 = *(v0 + 1048);
  v7 = *(v0 + 1016);
  sub_2219A1B08(*(v0 + 1000), v0 + 400);
  v8 = OUTLINED_FUNCTION_85_2();
  sub_221B62018(v8, v9, v10, v11);
  (*(v2 + 16))(v1, v6, v3);
  (*(v4 + 16))(v47, v5, v46);
  ObjectType = swift_getObjectType();
  *(v0 + 1296) = ObjectType;
  v13 = (v7 + *(v48 + 28));
  v15 = v13[13];
  v14 = v13[14];
  *(v0 + 464) = &type metadata for AnyEntityQueryDispatching;
  *(v0 + 472) = &protocol witness table for AnyEntityQueryDispatching;
  OUTLINED_FUNCTION_49();
  v16 = swift_allocObject();
  *(v0 + 440) = v16;
  v16[2] = v49;
  v16[3] = &off_2835191E0;
  v16[4] = v15;
  v16[5] = v14;
  v16[6] = v51;
  v16[7] = v52;
  v17 = *(v50 + 24);

  v17(v13 + 2, v13 + 7, v0 + 440, ObjectType, v50);
  __swift_destroy_boxed_opaque_existential_0((v0 + 440));
  v18 = v13[12];
  v19 = OUTLINED_FUNCTION_0_0();
  sub_2219C0C28(v19, v20, v21);

  *(v0 + 1304) = v53;
  *(v0 + 1320) = v54;
  *(v0 + 1328) = v55;
  *(v0 + 1336) = v56;
  if (v55)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 1344) = v25;
    *v25 = v26;
    v25[1] = sub_221B49384;
    OUTLINED_FUNCTION_246_2();

    __asm { BRAA            X1, X16 }
  }

  sub_2219A1218(v22, v23, v24);
  OUTLINED_FUNCTION_15_0();
  *(v0 + 1360) = swift_allocError();
  *v29 = v18;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 2;
  v30 = v18;
  v31 = sub_221BCC328();
  *(v0 + 1368) = v31;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v32 = __swift_project_value_buffer(*(v0 + 1088), qword_27CFDEE88);
  *(v0 + 1376) = v32;
  if (qword_27CFB72B8 != -1)
  {
    v32 = OUTLINED_FUNCTION_36_9(&qword_27CFB72B8);
  }

  v33 = *(v0 + 1288);
  v34 = *(v0 + 1184);
  v35 = *(v0 + 1008);
  OUTLINED_FUNCTION_194_0(v32, &qword_27CFDE910);
  sub_2219A1B08(v0 + 400, v0 + 480);
  v36 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v34, v37, v38, v36);
  v39 = sub_221BCCCD8();
  v40 = OUTLINED_FUNCTION_97_6(v39);
  *(v0 + 1384) = v40;
  *(v40 + 16) = v35;
  *(v40 + 24) = v33;
  *(v40 + 32) = v31;
  *(v40 + 40) = 1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_246_2();

  return MEMORY[0x2822009F8](v41, v42, v43);
}

uint64_t sub_221B49384()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 1352) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B4947C()
{
  OUTLINED_FUNCTION_293_1();
  OUTLINED_FUNCTION_113_0();
  v1 = OUTLINED_FUNCTION_94_6();
  v2(v1);
  sub_221B62018((v0 + 60), (v0 + 65), qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_63_3();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_258_1();
  sub_221B62018(v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  v12 = OUTLINED_FUNCTION_18_12();
  v0[174] = v12;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v0[73] = v11;
  v0[74] = &off_28351D968;
  v0[70] = v12;
  v13 = swift_task_alloc();
  v0[175] = v13;
  OUTLINED_FUNCTION_304_0(v13);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[176] = v14;
  *v14 = v15;
  v14[1] = sub_221B49664;
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_203_2();

  return MEMORY[0x282200908](v16);
}

uint64_t sub_221B49664()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 1416) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 560, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B49798()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_435();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 480, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B49A50()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_435();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B49B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_230();
  v21 = *(v20 + 1360);
  v22 = *(v20 + 1288);
  v23 = *(v20 + 1248);
  v24 = *(v20 + 1240);
  v25 = *(v20 + 1232);

  (*(v24 + 8))(v23, v25);
  v26 = OUTLINED_FUNCTION_103_2();
  v27(v26);
  sub_2219EC58C(v22, &unk_27CFB93E0);
  __swift_destroy_boxed_opaque_existential_0((v20 + 400));

  OUTLINED_FUNCTION_159_2();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_109();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_221B49C78()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[79];
  __swift_project_boxed_opaque_existential_0(v0 + 75, v0[78]);
  v2 = OUTLINED_FUNCTION_97_1();
  v4 = v3(v2, v1);
  v0[178] = v4;
  if (v4)
  {
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_0(v0 + 75);
    v6 = qword_27CFB73C0;
    v7 = v5;
    if (v6 != -1)
    {
      OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
    }

    v0[187] = __swift_project_value_buffer(v0[136], qword_27CFDEE88);
    if (qword_27CFB72B8 != -1)
    {
      OUTLINED_FUNCTION_36_9(&qword_27CFB72B8);
    }

    v8 = v0[161];
    v9 = v0[145];
    v10 = v0[126];
    memcpy(v0 + 26, &qword_27CFDE910, 0x59uLL);
    sub_2219A1B08((v0 + 50), (v0 + 110));
    v11 = sub_221BCCD08();
    OUTLINED_FUNCTION_21_6(v9, v12, v13, v11);
    v14 = sub_221BCCCD8();
    v15 = OUTLINED_FUNCTION_97_6(v14);
    v0[188] = v15;
    *(v15 + 16) = v10;
    *(v15 + 24) = v8;
    *(v15 + 32) = v5;
    *(v15 + 40) = 0;
  }

  else
  {
    v16 = __swift_destroy_boxed_opaque_existential_0(v0 + 75);
    sub_2219A1218(v16, v17, v18);
    OUTLINED_FUNCTION_15_0();
    v0[179] = swift_allocError();
    *v19 = 10;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 5;
    v20 = sub_221BCC328();
    v0[180] = v20;
    if (qword_27CFB73C0 != -1)
    {
      OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
    }

    v0[181] = __swift_project_value_buffer(v0[136], qword_27CFDEE88);
    if (qword_27CFB72B8 != -1)
    {
      OUTLINED_FUNCTION_36_9(&qword_27CFB72B8);
    }

    v21 = v0[161];
    v22 = v0[146];
    v23 = v0[126];
    memcpy(v0 + 14, &qword_27CFDE910, 0x59uLL);
    sub_2219A1B08((v0 + 50), (v0 + 95));
    v24 = sub_221BCCD08();
    OUTLINED_FUNCTION_21_6(v22, v25, v26, v24);
    v27 = sub_221BCCCD8();
    v28 = OUTLINED_FUNCTION_97_6(v27);
    v0[182] = v28;
    *(v28 + 16) = v23;
    *(v28 + 24) = v21;
    *(v28 + 32) = v20;
    *(v28 + 40) = 1;
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_221B49ED8()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1[193] = v1[169];
  v1[194] = sub_221BCC328();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v1[195] = __swift_project_value_buffer(v1[136], qword_27CFDEE88);
  if (qword_27CFB72B8 != -1)
  {
    OUTLINED_FUNCTION_36_9(&qword_27CFB72B8);
  }

  OUTLINED_FUNCTION_248_2();
  memcpy(v1 + 38, &qword_27CFDE910, 0x59uLL);
  sub_2219A1B08((v1 + 50), (v1 + 80));
  v2 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v3, v4, v2);
  v5 = sub_221BCCCD8();
  v6 = OUTLINED_FUNCTION_97_6(v5);
  OUTLINED_FUNCTION_60_8(v6);
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B49FD4()
{
  OUTLINED_FUNCTION_293_1();
  OUTLINED_FUNCTION_113_0();
  v1 = OUTLINED_FUNCTION_94_6();
  v2(v1);
  sub_221B62018((v0 + 95), (v0 + 100), qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_63_3();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_258_1();
  sub_221B62018(v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  OUTLINED_FUNCTION_21_11();
  v12 = OUTLINED_FUNCTION_33_8();
  v0[183] = v12;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v0[108] = v11;
  v0[109] = &off_28351D968;
  v0[105] = v12;
  v13 = swift_task_alloc();
  v0[184] = v13;
  OUTLINED_FUNCTION_304_0(v13);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[185] = v14;
  *v14 = v15;
  v14[1] = sub_221B4A1C4;
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_203_2();

  return MEMORY[0x282200908](v16);
}

uint64_t sub_221B4A1C4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 1488) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 840, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B4A2F8()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_434();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 760, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B4A3A8()
{
  v46 = v2[180];
  v67 = v2[166];
  v70 = v2[167];
  v64 = v2[165];
  v58 = v2[179];
  v61 = v2[164];
  v52 = v2[161];
  v55 = v2[163];
  v39 = v2[162];
  v41 = v2[159];
  v3 = v2[158];
  v49 = v2[157];
  OUTLINED_FUNCTION_405();
  v4 = v2[152];
  OUTLINED_FUNCTION_294_1(v5, v6, v7, v8, v9, v10, v11, v12, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70);
  v13 = v2[54];
  v14 = __swift_project_boxed_opaque_existential_0(v2 + 50, v2[53]);
  OUTLINED_FUNCTION_261_1(v14, v15, v16, v17, v18, v19, v20, v21, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71);

  OUTLINED_FUNCTION_3_25();
  sub_221B62E44(v4, v22);
  (*(v0 + 8))(v1, v45);
  (*(v3 + 8))(v13, v51);
  sub_2219EC58C(v54, &unk_27CFB93E0);
  __swift_destroy_boxed_opaque_existential_0(v2 + 50);

  sub_2219F6ED0(v57, v63, v66, v69, v72);
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_263();

  OUTLINED_FUNCTION_4_3();

  return v23();
}

uint64_t sub_221B4A594()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_434();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B4A654()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = *(v1 + 1432);

  *(v1 + 1544) = *(v1 + 1488);
  *(v1 + 1552) = sub_221BCC328();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  *(v1 + 1560) = __swift_project_value_buffer(*(v1 + 1088), qword_27CFDEE88);
  if (qword_27CFB72B8 != -1)
  {
    OUTLINED_FUNCTION_36_9(&qword_27CFB72B8);
  }

  OUTLINED_FUNCTION_248_2();
  memcpy((v1 + 304), &qword_27CFDE910, 0x59uLL);
  sub_2219A1B08(v1 + 400, v1 + 640);
  v3 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v4, v5, v3);
  v6 = sub_221BCCCD8();
  v7 = OUTLINED_FUNCTION_97_6(v6);
  OUTLINED_FUNCTION_60_8(v7);
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221B4A764()
{
  OUTLINED_FUNCTION_293_1();
  OUTLINED_FUNCTION_113_0();
  v1 = OUTLINED_FUNCTION_94_6();
  v2(v1);
  sub_221B62018((v0 + 110), (v0 + 115), qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_63_3();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_258_1();
  sub_221B62018(v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  OUTLINED_FUNCTION_21_11();
  v12 = OUTLINED_FUNCTION_33_8();
  v0[189] = v12;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v0[123] = v11;
  v0[124] = &off_28351D968;
  v0[120] = v12;
  v13 = swift_task_alloc();
  v0[190] = v13;
  OUTLINED_FUNCTION_304_0(v13);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[191] = v14;
  *v14 = v15;
  v14[1] = sub_221B4A954;
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_203_2();

  return MEMORY[0x282200908](v16);
}

uint64_t sub_221B4A954()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 1536) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 960, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B4AA88()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_431();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 880, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B4AB38(uint64_t a1)
{
  v31 = v1;
  v28 = *(v1 + 1328);
  v29 = *(v1 + 1336);
  v26 = *(v1 + 1312);
  v27 = *(v1 + 1320);
  OUTLINED_FUNCTION_351();
  v2 = *(v1 + 1264);
  v3 = *(v1 + 1248);
  v4 = *(v1 + 1240);
  v22 = *(v1 + 1232);
  v23 = *(v1 + 1256);
  v5 = *(v1 + 1208);
  v6 = *(v1 + 1048);
  v7 = *(v1 + 1040);
  v18 = *(v1 + 1024);
  v19 = v8;
  memcpy(__dst, *(v1 + 1064), sizeof(__dst));
  v10 = *(v1 + 424);
  v9 = *(v1 + 432);
  __swift_project_boxed_opaque_existential_0((v1 + 400), v10);
  v11 = OUTLINED_FUNCTION_190_1();
  sub_221B5B7C4(v11, v12, v20, v7, v3, v13, v14, v18, v10, v19, v9, v6);

  OUTLINED_FUNCTION_3_25();
  sub_221B62E44(v5, v15);
  (*(v4 + 8))(v3, v22);
  (*(v2 + 8))(v20, v23);
  sub_2219EC58C(v24, &unk_27CFB93E0);
  __swift_destroy_boxed_opaque_existential_0((v1 + 400));
  sub_2219F6ED0(v25, v26, v27, v28, v29);

  OUTLINED_FUNCTION_41_5();

  OUTLINED_FUNCTION_4_3();

  return v16();
}

uint64_t sub_221B4AD7C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_431();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B4AE3C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = v1[178];

  v1[193] = v1[192];
  v1[194] = sub_221BCC328();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v1[195] = __swift_project_value_buffer(v1[136], qword_27CFDEE88);
  if (qword_27CFB72B8 != -1)
  {
    OUTLINED_FUNCTION_36_9(&qword_27CFB72B8);
  }

  OUTLINED_FUNCTION_248_2();
  memcpy(v1 + 38, &qword_27CFDE910, 0x59uLL);
  sub_2219A1B08((v1 + 50), (v1 + 80));
  v3 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v4, v5, v3);
  v6 = sub_221BCCCD8();
  v7 = OUTLINED_FUNCTION_97_6(v6);
  OUTLINED_FUNCTION_60_8(v7);
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221B4AF44()
{
  OUTLINED_FUNCTION_293_1();
  OUTLINED_FUNCTION_113_0();
  v1 = OUTLINED_FUNCTION_94_6();
  v2(v1);
  sub_221B62018((v0 + 80), (v0 + 85), qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_63_3();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_258_1();
  sub_221B62018(v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  OUTLINED_FUNCTION_21_11();
  v12 = OUTLINED_FUNCTION_33_8();
  v0[197] = v12;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v0[93] = v11;
  v0[94] = &off_28351D968;
  v0[90] = v12;
  v13 = swift_task_alloc();
  v0[198] = v13;
  OUTLINED_FUNCTION_304_0(v13);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[199] = v14;
  *v14 = v15;
  v14[1] = sub_221B4B134;
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_203_2();

  return MEMORY[0x282200908](v16);
}

uint64_t sub_221B4B134()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 1600) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 720, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B4B268()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_430();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 640, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B4B318()
{
  v46 = v2[194];
  v67 = v2[167];
  v70 = v2[193];
  v61 = v2[165];
  v64 = v2[166];
  v55 = v2[163];
  v58 = v2[164];
  v39 = v2[162];
  v41 = v2[159];
  v3 = v2[158];
  v49 = v2[157];
  v52 = v2[161];
  OUTLINED_FUNCTION_405();
  v4 = v2[150];
  OUTLINED_FUNCTION_294_1(v5, v6, v7, v8, v9, v10, v11, v12, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70);
  v13 = v2[54];
  v14 = __swift_project_boxed_opaque_existential_0(v2 + 50, v2[53]);
  OUTLINED_FUNCTION_261_1(v14, v15, v16, v17, v18, v19, v20, v21, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71);

  OUTLINED_FUNCTION_3_25();
  sub_221B62E44(v4, v22);
  (*(v0 + 8))(v1, v45);
  (*(v3 + 8))(v13, v51);
  sub_2219EC58C(v54, &unk_27CFB93E0);
  __swift_destroy_boxed_opaque_existential_0(v2 + 50);
  sub_2219F6ED0(v57, v60, v63, v66, v69);

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_263();

  OUTLINED_FUNCTION_4_3();

  return v23();
}

uint64_t sub_221B4B500()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_430();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B4B5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_230();
  v21 = *(v20 + 1544);
  v40 = *(v20 + 1328);
  v41 = *(v20 + 1336);
  v38 = *(v20 + 1312);
  v39 = *(v20 + 1320);
  v22 = *(v20 + 1304);
  v23 = *(v20 + 1288);
  v24 = *(v20 + 1272);
  v25 = *(v20 + 1264);
  v26 = *(v20 + 1256);

  v27 = OUTLINED_FUNCTION_4();
  v28(v27);
  (*(v25 + 8))(v24, v26);
  sub_2219EC58C(v23, &unk_27CFB93E0);
  __swift_destroy_boxed_opaque_existential_0((v20 + 400));

  sub_2219F6ED0(v22, v38, v39, v40, v41);
  OUTLINED_FUNCTION_159_2();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_109();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, v38, v39, v40, v41, a18, a19, a20);
}

uint64_t sub_221B4B754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x2822009F8](sub_221B4B780, 0, 0);
}

uint64_t sub_221B4B780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  v10 = *(v9 + 104);
  v11 = *(v9 + 56);
  v12 = OUTLINED_FUNCTION_368_0();
  *(v9 + 64) = OUTLINED_FUNCTION_226_3(v12, v13);
  v14 = sub_221B25D60();
  *(v9 + 72) = v14;
  OUTLINED_FUNCTION_160_2(v14);
  v15 = swift_task_alloc();
  *(v9 + 80) = v15;
  *(v15 + 16) = a9;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10 & 1;
  v16 = swift_task_alloc();
  *(v9 + 88) = v16;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_234_2();
  *v16 = v17;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v18);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v19);
}

uint64_t sub_221B4B88C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B4BA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B4BA9C, 0, 0);
}

uint64_t sub_221B4BA9C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_29();
  v5 = OUTLINED_FUNCTION_70();
  v6(v5);
  v7 = v1 + *(v2 + 20);
  *v7 = v4;
  *(v7 + 8) = v3 & 1;
  v8 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 64) = v9;
  *v9 = v10;
  v9[1] = sub_221B4BB88;
  OUTLINED_FUNCTION_253();

  return sub_221A3E2B4();
}

uint64_t sub_221B4BB88()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 72) = v0;

  sub_221B62E44(v6, type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse);
  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v12();
  }
}

void sub_221B4BCE0(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *a3;
  v12 = *(a3 + 1);
  v11 = *(a3 + 2);
  sub_2219AC930(a2, __src);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  memcpy((v13 + 24), __src, 0x82uLL);
  *(v13 + 160) = v7;
  *(v13 + 168) = v6;
  *(v13 + 176) = v8;
  *(v13 + 184) = v9;
  *(v13 + 192) = v10;
  *(v13 + 200) = v12;
  *(v13 + 208) = v11;

  sub_221998178(v8, v9);

  sub_221B43418(0, 0, &unk_221BE5518, v13, a4);
}

void sub_221B4BDD0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a2[1];
  v16 = *a2;
  v7 = sub_2219A69A0();

  v8 = 0;
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v8)
    {

      sub_2219982C4(v3, v4);
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8030, &qword_221BD28E0);
      a3[4] = sub_221B61E70(&qword_27CFB8038, &qword_27CFB8030);
      *a3 = v15;
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223DA3BF0](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v18[0] = v16;
    v18[1] = v6;
    v18[2] = v3;
    v18[3] = v4;

    sub_221998178(v3, v4);
    sub_22199BCCC(v10);
    memcpy(__dst, __src, 0x80uLL);
    if (sub_2219A1200(__dst) == 1)
    {
      memcpy(v18, __src, sizeof(v18));
      sub_2219EC58C(v18, &qword_27CFB7698);
      ++v8;
    }

    else
    {
      memcpy(v18, __src, sizeof(v18));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2219B3CC4();
        v15 = v12;
      }

      v11 = *(v15 + 16);
      if (v11 >= *(v15 + 24) >> 1)
      {
        sub_2219B3CC4();
        v15 = v13;
      }

      memcpy(v17, v18, sizeof(v17));
      *(v15 + 16) = v11 + 1;
      memcpy((v15 + (v11 << 7) + 32), v17, 0x80uLL);
      ++v8;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

double sub_221B4C054@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8010, &qword_221BD28C8);
  a2[4] = sub_221B61E70(&qword_27CFB8018, &qword_27CFB8010);
  *a2 = v3;

  return result;
}

uint64_t sub_221B4C0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 432) = v13;
  *(v8 + 440) = v14;
  *(v8 + 146) = v12;
  *(v8 + 416) = a7;
  *(v8 + 424) = a8;
  *(v8 + 400) = a5;
  *(v8 + 408) = a6;
  *(v8 + 384) = a3;
  *(v8 + 392) = a4;
  *(v8 + 368) = a1;
  *(v8 + 376) = a2;
  v9 = sub_221BCCD88();
  *(v8 + 448) = v9;
  *(v8 + 456) = *(v9 - 8);
  *(v8 + 464) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B4C24C, 0, 0);
}

uint64_t sub_221B4C24C()
{
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_200_0();
  v28 = *(*(v0 + 384) + 129);
  *(v0 + 147) = v28;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  *(v0 + 504) = __swift_project_value_buffer(*(v0 + 448), qword_27CFDEE88);
  if (qword_27CFB72C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 432);
  v25 = *(v0 + 440);
  v26 = *(v0 + 496);
  v2 = *(v0 + 146);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);
  v7 = *(v0 + 384);
  v8 = *(v0 + 392);
  v27 = *(v0 + 376);
  memcpy((v0 + 152), &qword_27CFDE9D0, 0x59uLL);
  *(v0 + 512) = v7[12];
  *(v0 + 520) = v7[13];
  *(v0 + 528) = v7[4];
  *(v0 + 536) = v7[5];
  sub_2219AC930(v8, v0 + 16);
  v9 = swift_allocObject();
  *(v0 + 544) = v9;
  *(v9 + 16) = v28;
  memcpy((v9 + 24), (v0 + 16), 0x82uLL);
  *(v9 + 160) = v5;
  *(v9 + 168) = v6;
  *(v9 + 176) = v4;
  *(v9 + 184) = v3;
  *(v9 + 192) = v2;
  *(v9 + 200) = v1;
  *(v9 + 208) = v25;
  *(v9 + 216) = v7;
  v10 = sub_221BCCD08();
  *(v0 + 280) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  OUTLINED_FUNCTION_21_6(v26, v11, v12, v10);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = swift_task_alloc();
  *(v0 + 552) = v17;
  *(v17 + 16) = v27;
  *(v17 + 24) = v7;
  *(v17 + 32) = v5;
  *(v17 + 40) = v6;
  *(v17 + 48) = v4;
  *(v17 + 56) = v3;
  *(v17 + 64) = v2;
  *(v17 + 72) = v1;
  *(v17 + 80) = v25;
  *(v17 + 88) = v8;
  *(v17 + 96) = v28;

  v18 = OUTLINED_FUNCTION_118();
  sub_221998178(v18, v19);

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_67_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_221B4C470()
{
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_353_0();
  v1 = OUTLINED_FUNCTION_308_0();
  v2(v1);
  sub_221B62018((v0 + 31), (v0 + 36), qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_17_6();
  sub_221B62018(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_312_0();
  sub_221B62018(v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAD0, &qword_221BE5558);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  OUTLINED_FUNCTION_252_2();

  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_112_5();
  v12 = sub_2219CBEFC();
  v0[70] = v12;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v0[44] = v11;
  v0[45] = &off_28351D968;
  v0[41] = v12;
  v13 = swift_task_alloc();
  v0[71] = v13;
  OUTLINED_FUNCTION_304_0(v13);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[72] = v14;
  *v14 = v15;
  v14[1] = sub_221B4C6C0;
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_246_2();

  return MEMORY[0x282200908](v16);
}

uint64_t sub_221B4C6C0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 584) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 328, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B4C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = *(v10 + 496);
  v12 = *(v10 + 480);

  sub_2219EC58C(v12, &qword_27CFB7F58);
  sub_2219EC58C(v11, &qword_27CFB7F60);
  sub_2219EC58C(v10 + 248, qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_221B4C8E8()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v1, &qword_27CFB7F60);
  OUTLINED_FUNCTION_338_0(v0 + 248);
  OUTLINED_FUNCTION_338_0(v0 + 328);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B4C9BC()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_25();

  return v0();
}

unint64_t sub_221B4CA48(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = 0xE000000000000000;
  sub_221BCDE68();

  v42 = 0xD000000000000011;
  v43 = 0x8000000221BF0B90;
  v38 = &type metadata for QuerySpecification;
  v39 = sub_2219EB6D8(v17, v18, v19);
  v35 = swift_allocObject();
  sub_2219AC930(a2, v35 + 16);
  __swift_project_boxed_opaque_existential_0(&v35, &type metadata for QuerySpecification);
  LOBYTE(v33) = a1 & 1;
  v20 = sub_221A22514(&v33);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_0(&v35);
  MEMORY[0x223DA31F0](v20, v22);

  MEMORY[0x223DA31F0](0x203A6E69202CLL, 0xE600000000000000);
  v35 = a3;
  v36 = a4;
  if (a6 == 2)
  {
  }

  else
  {
    v33 = 32;
    v34 = 0xE100000000000000;

    sub_221998178(a5, a6);
    v23 = sub_2219988C4(a5, a6);
    MEMORY[0x223DA31F0](v23);

    MEMORY[0x223DA31F0](v33, v34);

    a3 = v35;
    a4 = v36;
  }

  MEMORY[0x223DA31F0](a3, a4);

  MEMORY[0x223DA31F0](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  LOBYTE(v35) = a7 & 1;
  v36 = a8;
  v37 = a9;

  Request = QueryRequestOptions.description.getter();
  v26 = v25;

  MEMORY[0x223DA31F0](Request, v26);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  sub_2219EBEE4(a10 + 136, &v35);
  v27 = v41;
  if (v41)
  {
    v28 = v40;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_221BCDE68();

    v33 = 0xD00000000000001ALL;
    v34 = 0x8000000221BF0BB0;
    MEMORY[0x223DA31F0](v28, v27);
    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    v30 = v33;
    v29 = v34;
  }

  else
  {
    v29 = 0xED00003E72657355;
    v30 = 0x746E65727275433CLL;
  }

  sub_2219EBE90(&v35);
  MEMORY[0x223DA31F0](v30, v29);

  return v42;
}

uint64_t sub_221B4CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 147) = v13;
  *(v8 + 232) = v12;
  *(v8 + 216) = v11;
  *(v8 + 146) = v10;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 168) = a3;
  *(v8 + 176) = a4;
  *(v8 + 152) = a1;
  *(v8 + 160) = a2;
  return MEMORY[0x2822009F8](sub_221B4CDAC, 0, 0);
}

uint64_t sub_221B4CDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_170();
  a26 = v28;
  a27 = v29;
  OUTLINED_FUNCTION_230();
  a25 = v27;
  v31 = *(v27 + 200);
  v30 = *(v27 + 208);
  v54 = *(v27 + 184);
  sub_221B42830(*(v27 + 168), &unk_283519500, sub_221B5D5F0, &unk_283519528, sub_221B62F40);
  a13 = v54;
  a14 = v31;
  a15 = v30;
  sub_221B3C800(&a13);
  v53 = *(v27 + 147);
  v32 = *(v27 + 224);
  v33 = *(v27 + 146);
  v34 = *(v27 + 208);
  v52 = *(v27 + 216);
  v36 = *(v27 + 192);
  v35 = *(v27 + 200);
  v37 = *(v27 + 176);
  v38 = *(v27 + 184);
  v39 = *(v27 + 160);
  sub_2219AC930(*(v27 + 232), v27 + 16);
  v40 = swift_allocObject();
  *(v27 + 240) = v40;
  *(v40 + 16) = v33;
  *(v40 + 24) = v52;
  *(v40 + 32) = v32;
  *(v40 + 40) = v38;
  *(v40 + 48) = v36;
  *(v40 + 56) = v35;
  *(v40 + 64) = v34;
  *(v40 + 72) = v39;
  memcpy((v40 + 80), (v27 + 16), 0x82uLL);
  *(v40 + 216) = v37;
  *(v40 + 224) = v53 & 1;

  v41 = OUTLINED_FUNCTION_14();
  sub_221998178(v41, v42);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v27 + 248) = v43;
  *v43 = v44;
  v43[1] = sub_221B4CFB4;
  OUTLINED_FUNCTION_109();

  return sub_221B3B814(v45, v46, v47, v48, v49);
}

uint64_t sub_221B4CFB4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B4D0D0()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B4D12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 227) = v15;
  *(v8 + 424) = v13;
  *(v8 + 432) = v14;
  *(v8 + 408) = v12;
  *(v8 + 392) = a7;
  *(v8 + 400) = a8;
  *(v8 + 376) = a5;
  *(v8 + 384) = a6;
  *(v8 + 360) = a2;
  *(v8 + 368) = a4;
  *(v8 + 352) = a1;
  v9 = sub_221BCCEE8();
  *(v8 + 440) = v9;
  *(v8 + 448) = *(v9 - 8);
  *(v8 + 456) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B4D218, 0, 0);
}

uint64_t sub_221B4D218()
{
  OUTLINED_FUNCTION_57_2();
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 416) + qword_27CFDED20;
  v13 = *(v0 + 368);
  v14 = *v5;
  v6 = *(v5 + 16);
  v7 = *(v5 + 17);
  sub_2219AC930(*(v0 + 424), v0 + 96);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 1;
  *(v0 + 72) = v14;
  *(v0 + 56) = v13;
  *(v0 + 88) = v6;
  *(v0 + 89) = v7;

  v8 = OUTLINED_FUNCTION_118_0();
  sub_221998178(v8, v9);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 464) = v10;
  *v10 = v11;
  v10[1] = sub_221B4D360;

  return sub_221A40D48();
}

uint64_t sub_221B4D360()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v3[59] = v0;

  if (v0)
  {
    sub_221A00F98((v3 + 2));
  }

  else
  {
    v3[60] = v3[29];
    sub_221A00F98((v3 + 2));
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B4D47C()
{
  OUTLINED_FUNCTION_200_0();
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  *(v0 + 488) = v2;
  *(v0 + 496) = v1;
  *(v0 + 504) = v3;
  *(v0 + 512) = v4;
  if (*(v0 + 264))
  {
    v5 = *(v0 + 480);
    v6 = *(v0 + 424);
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    v10 = *(v0 + 384);
    v9 = *(v0 + 392);

    swift_willThrow();
    v11 = v5;
    sub_221B5329C(v10, v9, v8, v7, v6, 0);
    sub_221A01040(v0 + 232);
LABEL_29:

    OUTLINED_FUNCTION_25();
LABEL_30:

    return v72();
  }

  v12 = v2;
  v13 = OUTLINED_FUNCTION_258_1();
  sub_2219EC3F4(v13, v14, v4);
  v15 = [v12 valueType];
  *(v0 + 520) = v15;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      sub_221A00FEC(v42, v43, v44);
      OUTLINED_FUNCTION_15_0();
      swift_allocError();
      OUTLINED_FUNCTION_86_0(v45, &type metadata for AnyQueryOutput);
      sub_221A01040(v0 + 232);
LABEL_28:
      v53 = OUTLINED_FUNCTION_258_1();
      sub_2219EC49C(v53, v54);

      goto LABEL_29;
    }

    v27 = [v12 value];
    sub_221BCDCF8();
    swift_unknownObjectRelease();
    sub_2219A1D20(0, &unk_27CFBB9D0, 0x277D23780);
    if (swift_dynamicCast())
    {
      v28 = *(v0 + 376);
      *(v0 + 528) = *(v0 + 336);
      if (v28)
      {
        v29 = *(v0 + 368);
        sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);

        v30 = sub_221AE94F4(v29, v28);
        v28 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v30 preferredExtractionType:1];
      }

      *(v0 + 536) = v28;
      *(v0 + 226) = *(v0 + 227) & 1;
      if (qword_27CFB7368 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_35;
    }

LABEL_27:

    sub_221A00FEC(v49, v50, v51);
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_86_0(v52, &type metadata for AnyQueryOutput);
    sub_221A01040(v0 + 232);

    goto LABEL_28;
  }

  v16 = [v12 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = *(v0 + 344);
  v18 = *(v0 + 472);
  v19 = sub_2219A69A0();
  if (!v19)
  {

    v26 = MEMORY[0x277D84F90];
LABEL_24:
    type metadata accessor for RemoteAppIntentsActor(0);
    OUTLINED_FUNCTION_28_8();
    sub_221B62E9C(v46, v47);

    sub_221BCCFD8();
    v75 = v26;
    if (v18)
    {
    }

    else
    {
      v55 = *(v0 + 448);
      v56 = *(v0 + 456);
      v57 = *(v0 + 440);
      sub_221BCCEB8();
      OUTLINED_FUNCTION_197_1();
      (*(v55 + 8))(v56, v57);
    }

    v58 = *(v0 + 496);
    v59 = *(v0 + 424);
    v61 = *(v0 + 400);
    v60 = *(v0 + 408);
    v62 = *(v0 + 384);
    v63 = *(v0 + 392);
    v71 = OUTLINED_FUNCTION_369_0(v48, v64, v65, v66, v67, v68, v69, v70, *(v0 + 504), *(v0 + 512), *(v0 + 488), *(v0 + 456), v75);
    sub_221B5329C(v62, v63, v61, v60, v59, v71);

    sub_2219EC49C(v58, v73);
    sub_221A01040(v0 + 232);

    OUTLINED_FUNCTION_4_3();
    goto LABEL_30;
  }

  v20 = v19;
  v76 = MEMORY[0x277D84F90];

  sub_221BCDF28();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = OUTLINED_FUNCTION_258_1();
        MEMORY[0x223DA3BF0](v22);
      }

      else
      {
        v23 = *(v17 + 8 * v21 + 32);
      }

      ++v21;
      v24 = objc_allocWithZone(type metadata accessor for RemoteLNValue());
      v25 = OUTLINED_FUNCTION_25_1();
      sub_221B8267C(v25);
      sub_221BCDEF8();
      sub_221BCDF38();
      OUTLINED_FUNCTION_17_6();
      sub_221BCDF48();
      sub_221BCDF08();
    }

    while (v20 != v21);
    swift_bridgeObjectRelease_n();

    v26 = v76;
    goto LABEL_24;
  }

  __break(1u);
LABEL_35:
  OUTLINED_FUNCTION_1_33(&qword_27CFB7368);
LABEL_18:
  sub_221BCBC4C(qword_27CFDEDA8);
  v31 = swift_task_alloc();
  *(v0 + 544) = v31;
  *v31 = v0;
  v31[1] = sub_221B4DB50;
  OUTLINED_FUNCTION_236_1(*(v0 + 360));
  OUTLINED_FUNCTION_67_0();

  return sub_221B4E004(v32, v33, v34, v35, v36, v37, v38, v39);
}

uint64_t sub_221B4DB50()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_17_3();
  *v8 = v7;
  v10 = *(v9 + 536);
  v11 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v12 = v11;
  *(v7 + 552) = v0;

  if (v0)
  {
  }

  else
  {
    *(v7 + 560) = v5;
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_221B4DF14()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B4DF70()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);

  v3 = OUTLINED_FUNCTION_118_0();
  sub_2219EC49C(v3, v4);

  sub_221A01040(v0 + 232);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_221B4E004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 184) = a8;
  *(v9 + 192) = v8;
  *(v9 + 82) = v13;
  *(v9 + 168) = a6;
  *(v9 + 176) = a7;
  *(v9 + 152) = a4;
  *(v9 + 160) = a5;
  *(v9 + 136) = a2;
  *(v9 + 144) = a3;
  *(v9 + 128) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 83) = *v12;

  return MEMORY[0x2822009F8](sub_221B4E0C8, 0, 0);
}

uint64_t sub_221B4E0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_1();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_200_0();
  a24 = v26;
  v29 = *(v26 + 168);
  if (v29)
  {
    v30 = *(v26 + 176);
    v31 = *(v26 + 160);
    v32 = v29;
    v33 = MEMORY[0x277D84FA0];
    *(v26 + 112) = v30;
    *(v26 + 120) = v33;
    v115 = v31;
    v34 = OUTLINED_FUNCTION_0_0();
    sub_2219EC3F4(v34, v35, v30);

    sub_221B25A5C(v36);
    if (qword_27CFB73C0 != -1)
    {
      OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
    }

    v37 = *(v26 + 192);
    v114 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v114, qword_27CFDEE88);
    v38 = v37;
    v39 = sub_221BCCD68();
    v40 = sub_221BCDA98();

    v41 = os_log_type_enabled(v39, v40);
    v42 = off_278482000;
    v43 = MEMORY[0x277D84F70];
    if (v41)
    {
      v44 = *(v26 + 192);
      HIDWORD(a10) = *(v26 + 160);
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_6();
      a11 = v32;
      a14 = swift_slowAlloc();
      *v45 = 136315906;
      v46 = static Instrumentation.currentActivityId.getter();
      v48 = sub_2219A6360(v46, v47, &a14);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2048;
      *(v45 + 14) = sub_2219A69A0();
      *(v45 + 22) = 2080;
      v49 = v44;
      v50 = [v49 description];
      v51 = sub_221BCD388();
      v42 = v52;

      v43 = MEMORY[0x277D84F70];
      v53 = sub_2219A6360(v51, v42, &a14);

      *(v45 + 24) = v53;
      *(v45 + 32) = 1024;
      *(v45 + 34) = BYTE4(a10) & 1;
      OUTLINED_FUNCTION_328_0();
      _os_log_impl(v54, v55, v56, v57, v58, 0x26u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v59 = OUTLINED_FUNCTION_9_10();
      MEMORY[0x223DA4C00](v59);
    }

    if (v115)
    {
      if (*(v26 + 82) == 1)
      {
        v60 = *(v26 + 83);
        v61 = *(v26 + 192);
        v63 = *(v26 + 136);
        v62 = *(v26 + 144);
        v64 = *(v26 + 128);
        v65 = sub_221BCD7F8();
        OUTLINED_FUNCTION_102_5(v65);
        v66 = swift_allocObject();
        *(v66 + 16) = 0;
        *(v66 + 24) = 0;
        *(v66 + 32) = v61;
        *(v66 + 40) = v64;
        *(v66 + 48) = v63;
        *(v66 + 56) = v62;
        *(v66 + 64) = v60;

        v67 = v61;

        OUTLINED_FUNCTION_153();
        sub_2219F8C64();
      }

      v68 = *(v26 + 120);
      v69 = sub_2219A280C(v68);
      if (v69)
      {
        v70 = v69;
        if (sub_221BB954C(v68) >= 2)
        {
          sub_2219A1D20(0, &qword_27CFBBAF0, 0x277D23750);
          v71 = OUTLINED_FUNCTION_75();
          v72 = sub_221BB9DCC(v71);
          sub_221BB956C(v72);
        }
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x277D238A0]) init];
      }

      OUTLINED_FUNCTION_237_2();
      swift_beginAccess();

      OUTLINED_FUNCTION_67_0();

      return v109(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, v114, v115, a14, a15, a16, a17, a18);
    }

    else
    {
      *(v26 + 240) = v32;
      if (qword_27CFB73C0 != -1)
      {
        OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
        v32 = *(v26 + 240);
      }

      *(v26 + 248) = OUTLINED_FUNCTION_178(v114, qword_27CFDEE88);
      v87 = v32;
      v88 = sub_221BCCD68();
      sub_221BCDA98();

      if (OUTLINED_FUNCTION_104_0())
      {
        v87 = OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_19_6();
        v42 = swift_slowAlloc();
        a14 = v42;
        *v87 = 136315650;
        v89 = static Instrumentation.currentActivityId.getter();
        sub_2219A6360(v89, v90, &a14);
        OUTLINED_FUNCTION_277();

        v91 = OUTLINED_FUNCTION_206_3();
        [v91 description];
        sub_221BCD388();
        OUTLINED_FUNCTION_441();

        v92 = OUTLINED_FUNCTION_3_4();
        sub_2219A6360(v92, v93, v94);
        OUTLINED_FUNCTION_442();
        v87[3] = v91;
        OUTLINED_FUNCTION_242_3();
        _os_log_impl(v95, v96, v97, v98, v99, 0x20u);
        OUTLINED_FUNCTION_443(v100, v101, v43 + 8);
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      OUTLINED_FUNCTION_333_0();
      objc_opt_self();
      OUTLINED_FUNCTION_66_2();

      v102 = [v87 sharedInstance];
      [v102 optInApple];

      OUTLINED_FUNCTION_169_3();
      v103 = v42;
      v104 = swift_task_alloc();
      *(v26 + 256) = v104;
      *v104 = v26;
      OUTLINED_FUNCTION_61_7(v104);
      OUTLINED_FUNCTION_67_0();

      return sub_221A4CDF0();
    }
  }

  else
  {
    v73 = *(v26 + 152);
    v74 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v75 = [objc_allocWithZone(MEMORY[0x277D23B38]) initWithPageSize_];
    *(v26 + 208) = v75;

    if (v73)
    {
      [v75 setExportConfiguration_];
    }

    v76 = *(v26 + 83);
    v77 = *(v26 + 192);
    v79 = *(v26 + 136);
    v78 = *(v26 + 144);
    objc_opt_self();
    OUTLINED_FUNCTION_55_1();

    v80 = [v73 sharedInstance];
    v81 = [v80 optInApple];

    *(v26 + 16) = v79;
    *(v26 + 24) = v78;
    *(v26 + 32) = v81;
    *(v26 + 33) = v76;
    *(v26 + 40) = v77;
    *(v26 + 48) = v75;
    v82 = v75;
    v83 = v77;
    v84 = swift_task_alloc();
    *(v26 + 216) = v84;
    *v84 = v26;
    v84[1] = sub_221B4E768;
    OUTLINED_FUNCTION_67_0();

    return sub_221A4BC0C();
  }
}

uint64_t sub_221B4E768()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 224) = v7;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 84) = v3;
  }

  v8 = *(v5 + 40);
  v9 = *(v5 + 48);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_237();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_104();
  a18 = v20;
  if (*(v20 + 84))
  {
    v24 = *(v20 + 208);
    swift_willThrow();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_238();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  else
  {
    v34 = *(v20 + 224);

    v35 = MEMORY[0x277D84FA0];
    *(v20 + 112) = MEMORY[0x277D84F90];
    *(v20 + 120) = v35;
    *(v20 + 240) = v34;
    if (qword_27CFB73C0 != -1)
    {
      OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
      v34 = *(v20 + 240);
    }

    v36 = sub_221BCCD88();
    *(v20 + 248) = OUTLINED_FUNCTION_178(v36, qword_27CFDEE88);
    v37 = v34;
    v38 = sub_221BCCD68();
    sub_221BCDA98();

    if (OUTLINED_FUNCTION_104_0())
    {
      v37 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_19_6();
      v21 = swift_slowAlloc();
      a9 = v21;
      *v37 = 136315650;
      v39 = static Instrumentation.currentActivityId.getter();
      sub_2219A6360(v39, v40, &a9);
      OUTLINED_FUNCTION_277();

      v41 = OUTLINED_FUNCTION_206_3();
      [v41 description];
      sub_221BCD388();
      OUTLINED_FUNCTION_441();

      v42 = OUTLINED_FUNCTION_3_4();
      sub_2219A6360(v42, v43, v44);
      OUTLINED_FUNCTION_442();
      v37[3] = v41;
      OUTLINED_FUNCTION_242_3();
      _os_log_impl(v45, v46, v47, v48, v49, 0x20u);
      OUTLINED_FUNCTION_443(v50, v51, MEMORY[0x277D84F70] + 8);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    OUTLINED_FUNCTION_333_0();
    objc_opt_self();
    OUTLINED_FUNCTION_66_2();

    v52 = [v37 sharedInstance];
    [v52 optInApple];

    OUTLINED_FUNCTION_169_3();
    v53 = v21;
    v54 = swift_task_alloc();
    *(v20 + 256) = v54;
    *v54 = v20;
    OUTLINED_FUNCTION_61_7(v54);
    OUTLINED_FUNCTION_238();

    return sub_221A4CDF0();
  }
}

uint64_t sub_221B4EB14()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 264) = v7;
  *(v5 + 272) = v0;

  if (!v0)
  {
    *(v5 + 85) = v3;
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221B4EC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_143_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_57_2();
  a20 = v22;
  v25 = *(v22 + 264);
  if (*(v22 + 85))
  {
    v26 = *(v22 + 240);
    swift_willThrow();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_75_4();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v36 = *(v22 + 240);
    sub_2219EBF40(*(v22 + 264), 0);
    sub_2219EBF40(v25, 0);
    v37 = v36;
    sub_2219EBF40(v25, 0);
    v38 = sub_221BCCD68();
    v39 = sub_221BCDA98();

    v40 = OUTLINED_FUNCTION_104_0();
    v41 = *(v22 + 264);
    v42 = MEMORY[0x277D84F70];
    if (v40)
    {
      v43 = *(v22 + 240);
      v44 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_19_6();
      a9 = swift_slowAlloc();
      a10 = a9;
      *v44 = 136315650;
      v45 = static Instrumentation.currentActivityId.getter();
      v47 = sub_2219A6360(v45, v46, &a10);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v48 = v43;
      v49 = [v48 0x1FB7FC4F8];
      v50 = sub_221BCD388();
      v52 = v51;

      v53 = v50;
      v42 = MEMORY[0x277D84F70];
      v54 = sub_2219A6360(v53, v52, &a10);

      *(v44 + 14) = v54;
      *(v44 + 22) = 2048;
      sub_2219A69A0();
      v55 = OUTLINED_FUNCTION_277();
      sub_2219EBF4C(v55, 0);
      *(v44 + 24) = v52;
      sub_2219EBF4C(v41, 0);
      _os_log_impl(&dword_221989000, v38, v39, "%s%s returned %ld results", v44, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
      sub_2219EBF4C(*(v22 + 264), 0);
      sub_2219EBF4C(v41, 0);
    }

    v56 = *(v22 + 264);
    v57 = *(v22 + 272);
    v58 = *(v22 + 184);
    sub_221B25B3C(v25, (v22 + 112), v22 + 120);
    sub_2219A69A0();
    v59 = OUTLINED_FUNCTION_66_2();
    sub_2219EBF4C(v59, 0);
    sub_2219EBF4C(v56, 0);
    if (v25 >= v58)
    {
      if (qword_27CFB73C0 != -1)
      {
        OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
      }

      v71 = *(v22 + 240);
      v72 = sub_221BCCD88();
      *(v22 + 248) = OUTLINED_FUNCTION_178(v72, qword_27CFDEE88);
      v73 = v71;
      v74 = sub_221BCCD68();
      sub_221BCDA98();

      if (OUTLINED_FUNCTION_104_0())
      {
        v73 = OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_19_6();
        v58 = swift_slowAlloc();
        a10 = v58;
        *v73 = 136315650;
        v75 = static Instrumentation.currentActivityId.getter();
        sub_2219A6360(v75, v76, &a10);
        OUTLINED_FUNCTION_277();

        v77 = OUTLINED_FUNCTION_206_3();
        [v77 description];
        sub_221BCD388();
        OUTLINED_FUNCTION_441();

        v78 = OUTLINED_FUNCTION_3_4();
        sub_2219A6360(v78, v79, v80);
        OUTLINED_FUNCTION_442();
        v73[3] = v77;
        OUTLINED_FUNCTION_242_3();
        _os_log_impl(v81, v82, v83, v84, v85, 0x20u);
        OUTLINED_FUNCTION_443(v86, v87, v42 + 8);
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      OUTLINED_FUNCTION_333_0();
      objc_opt_self();
      OUTLINED_FUNCTION_66_2();

      v88 = [v73 sharedInstance];
      [v88 optInApple];

      OUTLINED_FUNCTION_169_3();
      v89 = v58;
      v90 = swift_task_alloc();
      *(v22 + 256) = v90;
      *v90 = v22;
      OUTLINED_FUNCTION_61_7(v90);
      OUTLINED_FUNCTION_75_4();

      return sub_221A4CDF0();
    }

    else
    {
      v60 = *(v22 + 240);
      if (*(v22 + 82) == 1)
      {
        v61 = *(v22 + 83);
        v62 = *(v22 + 192);
        v64 = *(v22 + 136);
        v63 = *(v22 + 144);
        v57 = *(v22 + 128);
        v65 = sub_221BCD7F8();
        OUTLINED_FUNCTION_102_5(v65);
        v66 = swift_allocObject();
        *(v66 + 16) = 0;
        *(v66 + 24) = 0;
        *(v66 + 32) = v62;
        *(v66 + 40) = v57;
        *(v66 + 48) = v64;
        *(v66 + 56) = v63;
        *(v66 + 64) = v61;

        v67 = v62;

        OUTLINED_FUNCTION_153();
        sub_2219F8C64();
      }

      if (sub_2219A280C(*(v22 + 120)))
      {
        v68 = OUTLINED_FUNCTION_55_1();
        if (sub_221BB954C(v68) >= 2)
        {
          sub_2219A1D20(0, &qword_27CFBBAF0, 0x277D23750);
          v69 = OUTLINED_FUNCTION_97_1();
          v70 = sub_221BB9DCC(v69);
          sub_221BB956C(v70);
        }
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x277D238A0]) init];
      }

      OUTLINED_FUNCTION_237_2();
      swift_beginAccess();

      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_75_4();

      return v95(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_221B4F1E8()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221B4F24C()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v1();
}

unint64_t sub_221B4F2C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_221BCDE68();

  v20 = 0xD00000000000001DLL;
  v21 = 0x8000000221BF0C00;
  v12 = sub_2219C1C00(a2, a3, a4, a5, a1 & 1);
  MEMORY[0x223DA31F0](v12);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  sub_2219EBEE4(a6 + 136, v18);
  v13 = v19;
  if (v19)
  {
    v14 = v18[6];
    sub_221BCDE68();

    MEMORY[0x223DA31F0](v14, v13);
    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    v16 = 0xD00000000000001ALL;
    v15 = 0x8000000221BF0BB0;
  }

  else
  {
    v15 = 0xED00003E72657355;
    v16 = 0x746E65727275433CLL;
  }

  sub_2219EBE90(v18);
  MEMORY[0x223DA31F0](v16, v15);

  return v20;
}

uint64_t sub_221B4F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_221B4F478, 0, 0);
}

uint64_t sub_221B4F478()
{
  OUTLINED_FUNCTION_57_2();
  v21 = v0;
  v1 = *(v0 + 40);
  v19[0] = *(v0 + 32);
  v19[1] = v1;
  v20 = *(v0 + 48);
  sub_221B3C800(v19);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = swift_allocObject();
  *(v0 + 72) = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v2;
  v7[5] = v3;
  v7[6] = v6;

  v8 = OUTLINED_FUNCTION_0_0();
  sub_221998178(v8, v9);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v10;
  *v10 = v11;
  v10[1] = sub_221B4F5D8;
  OUTLINED_FUNCTION_243_2();
  OUTLINED_FUNCTION_432();

  return sub_221B3B9B4(v12, v13, v14, v15, v16);
}

uint64_t sub_221B4F5D8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B4F6D8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_4_3();

  return v0();
}

uint64_t sub_221B4F72C()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B4F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  v8 = sub_221BCCEE8();
  v7[35] = v8;
  v7[36] = *(v8 - 8);
  v7[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B4F85C, 0, 0);
}

uint64_t sub_221B4F85C()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 248);
  v2 = *(v0 + 272) + qword_27CFDED20;
  v3 = *v2;
  v4 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 17);
  *(v0 + 16) = *(v0 + 240);
  v8 = *(v0 + 256);
  *(v0 + 24) = v1;
  *(v0 + 32) = v8;
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  *(v0 + 65) = v2;

  sub_221998178(v8, *(&v8 + 1));

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 304) = v5;
  *v5 = v6;
  v5[1] = sub_221B4F960;

  return sub_221A46D8C();
}

uint64_t sub_221B4F960()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 312) = v0;

  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  v9 = *(v3 + 48);
  if (v0)
  {
    *(v3 + 120) = *(v3 + 64);
    *(v3 + 104) = v9;
    *(v3 + 88) = v8;
    *(v3 + 72) = v7;
    sub_221A020D8(v3 + 72);
  }

  else
  {
    *(v3 + 176) = *(v3 + 64);
    *(v3 + 144) = v8;
    *(v3 + 160) = v9;
    *(v3 + 128) = v7;
    sub_221A020D8(v3 + 128);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4FA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_57_2();
  v15 = *(v14 + 184);
  v16 = *(v14 + 216);
  if (v16 < 0)
  {
    swift_willThrow();

    OUTLINED_FUNCTION_25();
  }

  else
  {
    v17 = *(v14 + 192);
    v18 = *(v14 + 200);
    v19 = *(v14 + 208);
    v20 = *(v14 + 312);

    a10 = v18;
    v21 = OUTLINED_FUNCTION_120();
    sub_221998178(v21, v22);
    type metadata accessor for RemoteAppIntentsActor(0);
    OUTLINED_FUNCTION_28_8();
    sub_221B62E9C(v23, v24);
    sub_221BCCFD8();
    if (v20)
    {
    }

    else
    {
      v26 = *(v14 + 288);
      v25 = *(v14 + 296);
      v27 = *(v14 + 280);
      sub_221BCCEB8();
      OUTLINED_FUNCTION_197_1();
      (*(v26 + 8))(v25, v27);
    }

    v28 = *(v14 + 224);

    v29 = OUTLINED_FUNCTION_190_1();
    sub_221A0212C(v29, v30, a10, v19, v16);
    v31 = OUTLINED_FUNCTION_190_1();
    sub_221A0212C(v31, v32, a10, v19, v16);
    *v28 = v15;
    *(v28 + 8) = v17;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0xE000000000000000;
    *(v28 + 32) = v16 & 1;
    *(v28 + 33) = BYTE1(v16) & 1;

    OUTLINED_FUNCTION_4_3();
  }

  OUTLINED_FUNCTION_75_4();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_221B4FC48()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B4FCA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[1] = 0xE000000000000000;
  sub_221BCDE68();
  v31 = 0;
  v32 = 0xE000000000000000;
  v13 = MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BECE30);
  v29[3] = &type metadata for AppIntentSpecification;
  v29[4] = sub_2219EB9A8(v13, v14, v15);
  v29[0] = swift_allocObject();
  sub_2219EB748(a2, v29[0] + 16);
  __swift_project_boxed_opaque_existential_0(v29, &type metadata for AppIntentSpecification);
  a1 &= 1u;
  LOBYTE(v27) = a1;
  v16 = sub_2219B5AFC(&v27);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_0(v29);
  MEMORY[0x223DA31F0](v16, v18);

  MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BECE50);
  v19 = sub_2219C0D58(a3, a4, a1);
  MEMORY[0x223DA31F0](v19);

  MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECE70);
  if (a6)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (a6)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v20, v21);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  sub_2219EBEE4(a7 + 136, v29);
  v22 = v30;
  if (v30)
  {
    v23 = v29[6];
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_221BCDE68();

    v27 = 0xD00000000000001ALL;
    v28 = 0x8000000221BF0BB0;
    MEMORY[0x223DA31F0](v23, v22);
    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    v25 = v27;
    v24 = v28;
  }

  else
  {
    v24 = 0xED00003E72657355;
    v25 = 0x746E65727275433CLL;
  }

  sub_2219EBE90(v29);
  MEMORY[0x223DA31F0](v25, v24);

  return v31;
}

uint64_t sub_221B4FF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  return MEMORY[0x2822009F8](sub_221B4FF54, 0, 0);
}

uint64_t sub_221B4FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_170();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_230();
  a24 = v26;
  v29 = *(v26 + 72);
  v30 = v29[4];
  __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  v31 = OUTLINED_FUNCTION_75();
  v32(v31, v30);
  a12 = a9;
  a13 = a10;
  a14 = a11;
  sub_221B3C800(&a12);
  v33 = *(v26 + 104);
  v34 = *(v26 + 112);
  v35 = *(v26 + 88);
  v36 = *(v26 + 96);
  v37 = *(v26 + 72);
  v38 = *(v26 + 80);
  v39 = *(v26 + 64);

  v40 = OUTLINED_FUNCTION_120();
  sub_2219982C4(v40, v41);
  sub_2219EB748(v37, v26 + 16);
  OUTLINED_FUNCTION_206_0();
  v42 = swift_allocObject();
  *(v26 + 120) = v42;
  v43 = *(v26 + 32);
  *(v42 + 16) = *(v26 + 16);
  *(v42 + 32) = v43;
  *(v42 + 48) = *(v26 + 48);
  *(v42 + 56) = v34;
  *(v42 + 64) = v38;
  *(v42 + 72) = v35;
  *(v42 + 80) = v39;
  *(v42 + 88) = v36;
  *(v42 + 96) = v33;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v26 + 128) = v44;
  *v44 = v45;
  v44[1] = sub_221B50148;
  OUTLINED_FUNCTION_243_2();
  OUTLINED_FUNCTION_109();

  return sub_221B3BEF0(v46, v47, v48, v49, v50);
}

uint64_t sub_221B50148()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B50248()
{
  OUTLINED_FUNCTION_1_5();
  sub_221B714A0(v0[9], v0[10], v0[11], v0[13] != 0);
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B502B0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 88);

  v2 = OUTLINED_FUNCTION_118_0();
  sub_221B714A0(v2, v3, v1, v4);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_221B50334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[47] = a8;
  v8[48] = v12;
  v8[45] = a6;
  v8[46] = a7;
  v8[43] = a4;
  v8[44] = a5;
  v8[41] = a2;
  v8[42] = a3;
  v8[40] = a1;
  v8[49] = *a7;
  v9 = sub_221BCCEE8();
  v8[50] = v9;
  v8[51] = *(v9 - 8);
  v8[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B50434, 0, 0);
}

uint64_t sub_221B50434()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  sub_2219EB748(*(v0 + 336), v0 + 16);
  sub_2219A1B08(v6 + 56, v0 + 56);
  v7 = v4 + qword_27CFDED20;
  v8 = *(v4 + qword_27CFDED20);
  v9 = *(v4 + qword_27CFDED20 + 8);
  v10 = *(v7 + 16);
  LOBYTE(v7) = *(v7 + 17);
  *(v0 + 96) = v5;
  *(v0 + 104) = v3;
  *(v0 + 112) = v8;
  *(v0 + 120) = v9;
  *(v0 + 128) = v10;
  *(v0 + 129) = v7;
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 424) = v11;
  *v11 = v12;
  v11[1] = sub_221B50540;
  OUTLINED_FUNCTION_125_1();

  return sub_221A49190();
}

uint64_t sub_221B50540()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 432) = v0;

  sub_221A02084(v3 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B50640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_170();
  a27 = v28;
  a28 = v29;
  OUTLINED_FUNCTION_230();
  a26 = v27;
  v31 = *(v27 + 240);
  v30 = *(v27 + 248);
  *(v27 + 440) = v31;
  *(v27 + 448) = v30;
  v33 = *(v27 + 256);
  v32 = *(v27 + 264);
  *(v27 + 456) = v33;
  *(v27 + 464) = v32;
  v34 = *(v27 + 272);
  *(v27 + 273) = *(v27 + 272);
  if ((v34 & 0x80000000) == 0)
  {
    v67 = v34;
    v68 = v30;
    v35 = *(v27 + 432);
    type metadata accessor for RemoteAppIntentsActor(0);
    OUTLINED_FUNCTION_28_8();
    sub_221B62E9C(v36, v37);

    sub_221BCCFD8();
    if (v35)
    {
    }

    else
    {
      v38 = sub_221BCCEB8();
      v39 = v49;
      v50 = OUTLINED_FUNCTION_142_4();
      v51(v50);
      if (v39)
      {
        goto LABEL_9;
      }
    }

    v38 = 0;
    v39 = 0xE000000000000000;
LABEL_9:
    v52 = *(v27 + 336);
    v53 = *(v27 + 344);
    v54 = v52[4];
    __swift_project_boxed_opaque_existential_0(v52, v52[3]);
    v55 = OUTLINED_FUNCTION_223_4();
    v56(v55, v54);
    v57 = a13;
    sub_2219982C4(a15, a16);
    a13 = v57;
    a15 = v38;
    a16 = v39;
    swift_unknownObjectRetain();
    _IntentValueConversionContext.init(origin:dispatcher:)(&a13, v53, &off_2835191E0, v27 + 152);
    *(v27 + 280) = v31;
    *(v27 + 288) = v68;
    *(v27 + 296) = v33;
    *(v27 + 304) = v32;
    *(v27 + 312) = v67 & 1;
    *(v27 + 224) = &type metadata for _IntentValueConversionContext;
    *(v27 + 232) = &protocol witness table for _IntentValueConversionContext;
    OUTLINED_FUNCTION_49();
    v58 = swift_allocObject();
    *(v27 + 200) = v58;
    sub_2219EB180(v27 + 152, v58 + 16);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v27 + 472) = v59;
    *v59 = v60;
    v59[1] = sub_221B508E4;
    OUTLINED_FUNCTION_145_3();
    OUTLINED_FUNCTION_109();

    return sub_2219B01E4(v61, v62, v63, v64, v65);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_109();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, *(&a13 + 1), a15, a16, a17, a18, a19, a20);
}

uint64_t sub_221B508E4()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 480) = v0;

  if (!v0)
  {
    v8 = *(v3 + 456);
    v7 = *(v3 + 464);
    v10 = *(v3 + 440);
    v9 = *(v3 + 448);
    v11 = *(v3 + 273);
    __swift_destroy_boxed_opaque_existential_0((v3 + 200));
    sub_2219EC114(v10, v9, v8, v7, v11);
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221B50A10()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EC114(*(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 464), *(v0 + 273));
  sub_22199C274(v0 + 152);

  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B50A84()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B50AE0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 273);
  v4 = OUTLINED_FUNCTION_118();
  sub_2219EC114(v4, v5, v1, v2, v3);
  sub_22199C274(v0 + 152);
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));
  v6 = OUTLINED_FUNCTION_118();
  sub_2219EC114(v6, v7, v1, v2, v3);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_221B50B88(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_221BCDE68();

  v9 = 0x676E696863746546;
  v10 = 0xE900000000000020;
  sub_2219EAFE0(a1, v8);
  v7 = 0;
  v2 = sub_2219A7A50(&v7);
  v4 = v3;
  sub_221B58D98(v8);
  MEMORY[0x223DA31F0](v2, v4);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  v5 = UserInternal.description.getter();
  MEMORY[0x223DA31F0](v5);

  return v9;
}

uint64_t sub_221B50C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return MEMORY[0x2822009F8](sub_221B50C94, 0, 0);
}

uint64_t sub_221B50C94()
{
  OUTLINED_FUNCTION_57_2();
  v24 = v0;
  v1 = v0[15];
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v23[0] = v1[7];
  v23[1] = v2;
  v23[2] = v3;
  v23[3] = v4;

  v5 = OUTLINED_FUNCTION_4();
  sub_221998178(v5, v6);
  sub_221B3C800(v23);
  v7 = v0[16];
  v8 = v0[17];
  v10 = v0[14];
  v9 = v0[15];

  v11 = OUTLINED_FUNCTION_27();
  sub_2219982C4(v11, v12);
  sub_2219EAFE0(v9, (v0 + 2));
  v13 = swift_allocObject();
  v0[18] = v13;
  v13[2] = v8;
  memcpy(v13 + 3, v0 + 2, 0x58uLL);
  v13[14] = v10;
  v13[15] = v7;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[19] = v14;
  *v14 = v15;
  v14[1] = sub_221B50E3C;
  OUTLINED_FUNCTION_243_2();
  OUTLINED_FUNCTION_432();

  return sub_221B3BEF0(v16, v17, v18, v19, v20);
}

uint64_t sub_221B50E3C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B50F3C()
{
  OUTLINED_FUNCTION_1_5();
  sub_221B71358(*(v0 + 120));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B50F94()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 120);

  sub_221B71358(v1);
  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221B50FFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  v6[33] = *a4;
  v7 = sub_221BCCEE8();
  v6[34] = v7;
  v6[35] = *(v7 - 8);
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B510EC, 0, 0);
}

uint64_t sub_221B510EC()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = v1[7];
  *(v0 + 296) = v3;
  v4 = v1[8];
  *(v0 + 304) = v4;
  v5 = v1[9];
  v6 = v1[10];
  sub_2219A1B08((v1 + 2), v0 + 48);
  v7 = *v1;
  v8 = v1[1];
  v9 = v2 + qword_27CFDED20;
  v10 = *(v2 + qword_27CFDED20);
  v11 = *(v2 + qword_27CFDED20 + 8);
  v12 = *(v9 + 16);
  LOBYTE(v9) = *(v9 + 17);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v10;
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  *(v0 + 121) = v9;

  v13 = OUTLINED_FUNCTION_4();
  sub_221998178(v13, v14);

  v15 = swift_task_alloc();
  *(v0 + 312) = v15;
  *v15 = v0;
  v15[1] = sub_221B5120C;
  OUTLINED_FUNCTION_152();

  return sub_221A47B0C();
}

uint64_t sub_221B5120C()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 320) = v7;
  *(v5 + 328) = v0;

  if (!v0)
  {
    *(v5 + 122) = v3;
  }

  sub_221A00E80(v5 + 16);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221B5132C()
{
  OUTLINED_FUNCTION_113_0();
  v23 = v0;
  if (*(v0 + 122))
  {
    swift_willThrow();

    OUTLINED_FUNCTION_25();
    goto LABEL_8;
  }

  v2 = *(v0 + 328);
  type metadata accessor for RemoteAppIntentsActor(0);
  OUTLINED_FUNCTION_28_8();
  sub_221B62E9C(v3, v4);
  OUTLINED_FUNCTION_190_1();
  sub_221BCCFD8();
  if (v2)
  {
  }

  else
  {
    v5 = sub_221BCCEB8();
    v6 = v7;
    v8 = OUTLINED_FUNCTION_4();
    v9(v8);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
  v6 = 0xE000000000000000;
LABEL_7:
  v10 = *(v0 + 320);
  v11 = *(v0 + 304);
  v12 = *(v0 + 256);
  v13 = *(v0 + 264);
  v14 = *(v0 + 248);
  *&v20 = *(v0 + 296);
  *(&v20 + 1) = v11;
  v21 = v5;
  v22 = v6;

  _IntentValueConversionContext.init(origin:dispatcher:)(&v20, v14, &off_2835191E0, v0 + 128);
  v15 = *(*(v13 + 80) + 16);
  *(v0 + 200) = &type metadata for _IntentValueConversionContext;
  *(v0 + 208) = &protocol witness table for _IntentValueConversionContext;
  OUTLINED_FUNCTION_49();
  v16 = swift_allocObject();
  *(v0 + 176) = v16;
  sub_2219EB180(v0 + 128, v16 + 16);
  v17 = OUTLINED_FUNCTION_103_2();
  sub_221B8BC18(v17, v15, v12, v18);

  sub_22199C274(v0 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  OUTLINED_FUNCTION_4_3();
LABEL_8:

  return v1();
}

uint64_t sub_221B5152C()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B51588()
{
  OUTLINED_FUNCTION_1_5();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v5 = sub_221BCCD88();
  v1[35] = v5;
  OUTLINED_FUNCTION_18_4(v5);
  v1[36] = v6;
  v1[37] = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v7);
  v1[38] = OUTLINED_FUNCTION_372();
  v1[39] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v8);
  v1[40] = OUTLINED_FUNCTION_372();
  v1[41] = swift_task_alloc();
  v9 = sub_221BCC418();
  v1[42] = v9;
  OUTLINED_FUNCTION_18_4(v9);
  v1[43] = v10;
  v1[44] = *(v11 + 64);
  v1[45] = OUTLINED_FUNCTION_210();
  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221B516F4()
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v1 = __swift_project_value_buffer(v0[35], qword_27CFDEE88);
  v0[46] = v1;
  if (qword_27CFB72D0 != -1)
  {
    v1 = swift_once();
  }

  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[34];
  v28 = v0[33];
  v29 = v0[41];
  v7 = v0[31];
  v27 = v0[32];
  OUTLINED_FUNCTION_194_0(v1, &qword_27CFDEA30);
  v0[47] = v6[12];
  v0[48] = v6[13];
  v0[49] = v6[4];
  v0[50] = v6[5];
  v8 = OUTLINED_FUNCTION_308_0();
  v9(v8, v7, v5);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[51] = v13;
  (*(v4 + 32))(v13 + v10, v2, v5);
  *(v13 + v11) = v27;
  *(v13 + v12) = v28;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_21_6(v29, v14, v15, v16);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = swift_task_alloc();
  v0[52] = v21;
  v21[2] = v28;
  v21[3] = v6;
  v21[4] = v7;
  v21[5] = v27;

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_221B518E0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_308_0();
  v3(v2);
  sub_221B62018((v1 + 14), (v1 + 19), qword_27CFB7A80, &unk_221BD2800);
  v4 = OUTLINED_FUNCTION_3_4();
  sub_221B62018(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_312_0();
  sub_221B62018(v8, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9268, &qword_221BD7FC8);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  OUTLINED_FUNCTION_55_1();

  v1[53] = sub_2219CBEFC();
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v1[27] = v12;
  v1[28] = &off_28351D968;
  v13 = OUTLINED_FUNCTION_305_0();
  v1[54] = v13;
  OUTLINED_FUNCTION_395_0(v13);

  v14 = swift_task_alloc();
  v1[55] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
  OUTLINED_FUNCTION_234_2();
  *v14 = v15;
  v14[1] = sub_221B51B58;
  OUTLINED_FUNCTION_35_9();

  return MEMORY[0x282200908](v16);
}

uint64_t sub_221B51B58()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 448) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B51C8C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_433();

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v1 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B51D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_401();

  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_152();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_221B51DDC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_433();

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_338_0(v1 + 112);
  OUTLINED_FUNCTION_338_0(v1 + 192);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B51E9C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_401();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_221B51F28()
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BF0D00);
  sub_221BCC418();
  sub_221B62E9C(&qword_27CFB9278, MEMORY[0x277CC9260]);
  v0 = sub_221BCE168();
  MEMORY[0x223DA31F0](v0);

  MEMORY[0x223DA31F0](0x74657366666F202CLL, 0xEA0000000000203ALL);
  v1 = sub_221BCE168();
  MEMORY[0x223DA31F0](v1);

  MEMORY[0x223DA31F0](0x3A746E756F63202CLL, 0xE900000000000020);
  v2 = sub_221BCE168();
  MEMORY[0x223DA31F0](v2);

  MEMORY[0x223DA31F0](0x20726F662029, 0xE600000000000000);
  v3 = UserInternal.description.getter();
  MEMORY[0x223DA31F0](v3);

  return 0;
}

uint64_t sub_221B520E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_221BCC418();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B521B4, 0, 0);
}

uint64_t sub_221B521B4()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_57_2();
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[3];
  v17 = v0[4];
  v18 = v0[7];
  (*(v2 + 16))(v0[11], v0[6], v0[8]);
  v4 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_allocObject();
  v0[12] = v6;
  OUTLINED_FUNCTION_207_4();
  v7();
  *(v6 + v4) = v18;
  *(v6 + v5) = v17;
  *(v6 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[13] = v8;
  *v8 = v9;
  v8[1] = sub_221B52308;
  OUTLINED_FUNCTION_243_2();
  OUTLINED_FUNCTION_75_4();

  return sub_221B3BB54(v10, v11, v12, v13, v14);
}

uint64_t sub_221B52308()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B52408()
{
  OUTLINED_FUNCTION_1_5();
  sub_221B53130(*(v0 + 32));

  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B5246C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);

  sub_221B53130(v1);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221B524E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B52580, 0, 0);
}

uint64_t sub_221B52580()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  sub_221BCC418();
  OUTLINED_FUNCTION_0_29();
  v6 = OUTLINED_FUNCTION_70();
  v7(v6);
  v9 = *(v3 + qword_27CFDED20);
  v8 = *(v3 + qword_27CFDED20 + 8);
  v10 = *(v3 + qword_27CFDED20 + 16);
  v11 = *(v3 + qword_27CFDED20 + 17);
  *(v1 + v2[5]) = v5;
  *(v1 + v2[6]) = v4;
  v12 = v1 + v2[7];
  *v12 = v9;
  *(v12 + 8) = v8;
  *(v12 + 16) = v10;
  *(v12 + 17) = v11;

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_221B52698;
  OUTLINED_FUNCTION_236_1(v0[9]);
  OUTLINED_FUNCTION_125_1();

  return sub_221A4ACCC();
}

uint64_t sub_221B52698()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *v8 = *v1;
  v7[11] = v0;

  v9 = v6[9];
  if (!v0)
  {
    v7[12] = v3;
    v7[13] = v5;
  }

  sub_221B62E44(v9, type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B527F4()
{
  OUTLINED_FUNCTION_1_5();
  *v0[1].i64[0] = vextq_s8(v0[6], v0[6], 8uLL);

  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B5285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 96) = a8;
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  return MEMORY[0x2822009F8](sub_221B52884, 0, 0);
}

uint64_t sub_221B52884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_237();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_104();
  a18 = v20;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22(&qword_27CFB73C0);
  }

  v24 = *(v20 + 48);
  v25 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v25, qword_27CFDEE88);
  v26 = v24;
  v27 = sub_221BCCD68();
  sub_221BCDA98();

  if (OUTLINED_FUNCTION_104_0())
  {
    v28 = *(v20 + 48);
    OUTLINED_FUNCTION_20_6();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_6();
    a10 = swift_slowAlloc();
    *v26 = 136315394;
    v29 = static Instrumentation.currentActivityId.getter();
    sub_2219A6360(v29, v30, &a10);
    OUTLINED_FUNCTION_277();

    *(v26 + 1) = v21;
    *(v26 + 6) = 2080;
    v31 = v28;
    v32 = [v31 description];
    sub_221BCD388();
    OUTLINED_FUNCTION_441();

    v33 = OUTLINED_FUNCTION_3_4();
    sub_2219A6360(v33, v34, v35);
    OUTLINED_FUNCTION_442();
    *(v26 + 14) = v31;
    OUTLINED_FUNCTION_242_3();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    OUTLINED_FUNCTION_443(v41, v42, MEMORY[0x277D84F70] + 8);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v43 = *(v20 + 96);
  v45 = *(v20 + 64);
  v44 = *(v20 + 72);
  v46 = *(v20 + 48);
  objc_opt_self();
  OUTLINED_FUNCTION_66_2();

  v47 = [v26 sharedInstance];
  v48 = [v47 optInApple];

  *(v20 + 16) = v45;
  *(v20 + 24) = v44;
  *(v20 + 32) = v48;
  *(v20 + 33) = v43 & 1;
  *(v20 + 40) = v46;
  v49 = v46;
  v50 = swift_task_alloc();
  *(v20 + 80) = v50;
  *v50 = v20;
  v50[1] = sub_221B52AC4;
  OUTLINED_FUNCTION_238();

  return sub_221A4E068();
}

uint64_t sub_221B52AC4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_99();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_166();

    return v8();
  }
}

double sub_221B52C20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F98, &qword_221BD2828);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_221BD6DE0;
  *(v0 + 56) = &type metadata for Entitlement.IsTrue;
  *(v0 + 64) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 32) = 0xD00000000000002CLL;
  *(v0 + 40) = 0x8000000221BEBFE0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_221BCF7F0;
  *(v1 + 56) = &type metadata for Entitlement.IsTrue;
  *(v1 + 64) = &protocol witness table for Entitlement.IsTrue;
  *(v1 + 32) = 0xD000000000000023;
  *(v1 + 40) = 0x8000000221BEC2F0;
  *(v1 + 96) = &type metadata for Entitlement.IsTrue;
  *(v1 + 104) = &protocol witness table for Entitlement.IsTrue;
  *(v1 + 72) = 0xD000000000000029;
  *(v1 + 80) = 0x8000000221BEC320;
  *(v0 + 96) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 104) = &protocol witness table for Entitlement.PlatformFilter;
  v4 = sub_221BC2240(&unk_283511F38, v2, v3);
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = 0;
  v5[4] = v1;
  *(v0 + 72) = sub_2219EB270;
  *(v0 + 80) = v5;
  *(v0 + 136) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 144) = &protocol witness table for Entitlement.PlatformFilter;
  v8 = sub_221BC2240(&unk_283511F90, v6, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  result = 0.0;
  *(v9 + 24) = xmmword_221BD26B0;
  *(v9 + 40) = 0x8000000221BEC2B0;
  *(v9 + 48) = &unk_283511F60;
  *(v0 + 112) = sub_2219EB27C;
  *(v0 + 120) = v9;
  qword_27CFBBA28 = v0;
  return result;
}

double sub_221B52DCC()
{
  v0 = sub_221BCCD88();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Entitlement.Validator(0);
  __swift_allocate_value_buffer(v4, qword_27CFBBA30);
  v5 = __swift_project_value_buffer(v4, qword_27CFBBA30);
  if (qword_27CFB73C0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27CFDEE88);
  (*(v1 + 16))(v3, v6, v0);
  if (qword_27CFB7260 != -1)
  {
    swift_once();
  }

  v7 = qword_27CFBBA28;
  (*(v1 + 32))(v5, v3, v0);
  *(v5 + *(v4 + 20)) = MEMORY[0x277D84F90];
  *(v5 + *(v4 + 24)) = v7;

  return result;
}

uint64_t sub_221B52F74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221B3100C(a1);
  }

  return result;
}

uint64_t sub_221B52FD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCCE88();
  v4 = v2;
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  if (v4)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0x656369766544;
  }

  sub_221A0E704(Strong, v7, v8);
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 8) = v5;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;

  sub_221B31344(v10);
}

uint64_t sub_221B530C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_237_2();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_221B53130(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 0x7A69536B6E756863;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 48) = a1;
  v3 = sub_221BCD2C8();
  sub_221B25E10(v3);
}

uint64_t sub_221B531DC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v5 = sub_221BCD2C8();
  sub_221B25E10(v5);
}

uint64_t sub_221B5329C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v9 = sub_221B70A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  v11 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_221BCF7F0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v11;
  *(inited + 80) = 0x6F43746C75736572;
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEB00000000746E75;
  *(inited + 96) = a6;
  v12 = sub_221BCD2C8();
  v13 = sub_221BB5788(v12, v9);
  sub_221B25E10(v13);
}

BOOL sub_221B533A0()
{
  os_unfair_lock_lock(v0 + 4);
  sub_221B62018(&v0[8], v3, &qword_27CFBBB30, &qword_221BE5708);
  v1 = v3[264] != 255;
  sub_2219EC58C(v3, &qword_27CFBBB30);
  os_unfair_lock_unlock(v0 + 4);
  return v1;
}

BOOL sub_221B53420()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 56) != 255;
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

BOOL sub_221B5345C()
{
  OUTLINED_FUNCTION_130_4();
  os_unfair_lock_lock(v1 + 4);
  sub_221B62018(&v1[8], v5, v2, v0);
  v3 = v5[40] != 255;
  sub_2219EC58C(v5, v2);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_221B534D0(uint64_t a1)
{
  sub_221B62018(a1, v2, &qword_27CFB8048, &qword_221BE5700);
  v2[264] = 0;
  sub_221B53670(v2);
  return sub_2219EC58C(v2, &qword_27CFB8090);
}

uint64_t sub_221B53540(uint64_t a1)
{
  sub_2219A1B08(a1, v2);
  v2[40] = 0;
  sub_221B53834(v2, sub_221B53CE0);
  return sub_2219EC58C(v2, &qword_27CFBBB00);
}

uint64_t sub_221B535D8(uint64_t a1)
{
  sub_2219A1B08(a1, v2);
  v2[40] = 0;
  sub_221B53834(v2, sub_221B53E14);
  return sub_2219EC58C(v2, &qword_27CFB8000);
}

void sub_221B53670(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  sub_221B53AA4((v1 + 24), a1);
  os_unfair_lock_unlock((v1 + 16));
  if (!v2)
  {
    MEMORY[0x28223BE20](v4);
    sub_221B25998();
  }
}

void sub_221B53738(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = a4 & 1;
  os_unfair_lock_lock((v4 + 16));
  sub_221B53BE0((v4 + 24), a1, a2, a3, v9);
  os_unfair_lock_unlock((v4 + 16));
  if (!v5)
  {
    MEMORY[0x28223BE20](v10);
    sub_221B25998();
  }
}

void sub_221B53834(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t))
{
  os_unfair_lock_lock(v2 + 4);
  a2(v2 + 6, a1);
  os_unfair_lock_unlock(v2 + 4);
  if (!v3)
  {
    MEMORY[0x28223BE20](v6);
    sub_221B25998();
  }
}

uint64_t sub_221B53908(void *a1)
{
  v3[0] = a1;
  v4 = 1;
  v1 = a1;
  sub_221B53670(v3);
  return sub_2219EC58C(v3, &qword_27CFB8090);
}

uint64_t sub_221B5396C(void *a1)
{
  v3[0] = a1;
  v4 = 1;
  v1 = a1;
  sub_221B53834(v3, sub_221B53CE0);
  return sub_2219EC58C(v3, &qword_27CFBBB00);
}

uint64_t sub_221B53A08(void *a1)
{
  v3[0] = a1;
  v4 = 1;
  v1 = a1;
  sub_221B53834(v3, sub_221B53E14);
  return sub_2219EC58C(v3, &qword_27CFB8000);
}

uint64_t sub_221B53AA4(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), v6, &qword_27CFBBB30, &qword_221BE5708);
  v4 = v6[264];
  sub_2219EC58C(v6, &qword_27CFBBB30);
  if (v4 == 255)
  {
    sub_2219EC58C((a1 + 1), &qword_27CFBBB30);
    sub_221B62018(a2, (a1 + 1), &qword_27CFB8090, &unk_221BD2960);
    result = *a1;
    *a1 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB38, &qword_221BE5710);
    sub_221B61E70(&qword_27CFBBB40, &qword_27CFBBB38);
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221B53BE0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 32) == 255)
  {
    sub_221B59788(a1[1], a1[2], a1[3], 255);
    a1[2] = a3;
    a1[3] = a4;
    v11 = a5 & 1;
    *(a1 + 32) = a5 & 1;
    v5 = *a1;
    *a1 = MEMORY[0x277D84F90];
    a1[1] = a2;
    sub_2219EBD1C(a2, a3, a4, v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAB0, &unk_221BE5500);
    sub_221B61E70(&qword_27CFBBAB8, &qword_27CFBBAB0);
    swift_allocError();
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_221B53CE0(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), v6, &qword_27CFBBB08, &qword_221BE56B0);
  v4 = v6[40];
  sub_2219EC58C(v6, &qword_27CFBBB08);
  if (v4 == 255)
  {
    sub_2219EC58C((a1 + 1), &qword_27CFBBB08);
    sub_221B62018(a2, (a1 + 1), &qword_27CFBBB00, &unk_221BE56A0);
    result = *a1;
    *a1 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB10, &qword_221BE56B8);
    sub_221B61E70(&qword_27CFBBB18, &qword_27CFBBB10);
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221B53E14(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), v6, &qword_27CFBBA78, &qword_221BE54C0);
  v4 = v6[40];
  sub_2219EC58C(v6, &qword_27CFBBA78);
  if (v4 == 255)
  {
    sub_2219EC58C((a1 + 1), &qword_27CFBBA78);
    sub_221B62018(a2, (a1 + 1), &qword_27CFB8000, &unk_221BD28B0);
    result = *a1;
    *a1 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA80, &qword_221BE54C8);
    sub_221B61E70(&qword_27CFBBA88, &qword_27CFBBA80);
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221B53F48(uint64_t a1, uint64_t a2)
{
  sub_221B62018(a2, __src, &qword_27CFB8090, &unk_221BD2960);
  if (v5)
  {
    __dst[0] = __src[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
    return sub_221BCD788();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
    return sub_221BCD798();
  }
}

uint64_t sub_221B54004(int a1, id a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
    return sub_221BCD788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
    return sub_221BCD798();
  }
}

uint64_t sub_221B540A4(uint64_t a1, uint64_t a2)
{
  sub_221B62018(a2, v4, &qword_27CFBBB00, &unk_221BE56A0);
  if (v5)
  {
    v3[0] = *&v4[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F0, &qword_221BD0E10);
    return sub_221BCD788();
  }

  else
  {
    sub_22198B358(v4, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F0, &qword_221BD0E10);
    return sub_221BCD798();
  }
}

uint64_t sub_221B54154(uint64_t a1, uint64_t a2)
{
  sub_221B62018(a2, v4, &qword_27CFB8000, &unk_221BD28B0);
  if (v5)
  {
    v3[0] = *&v4[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E8, &unk_221BD19A0);
    return sub_221BCD788();
  }

  else
  {
    sub_22198B358(v4, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E8, &unk_221BD19A0);
    return sub_221BCD798();
  }
}

uint64_t sub_221B54204(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B54218()
{
  OUTLINED_FUNCTION_1_5();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_414(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  OUTLINED_FUNCTION_335_0();
  *v0 = v2;
  v0[1] = sub_221B542C8;
  OUTLINED_FUNCTION_92_5();

  return MEMORY[0x2822008A0](v3);
}

uint64_t sub_221B542C8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B543DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B543FC, 0, 0);
}

uint64_t sub_221B543FC()
{
  OUTLINED_FUNCTION_1_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_221B544B8;
  OUTLINED_FUNCTION_65_7();

  return MEMORY[0x2822008A0](v3);
}

uint64_t sub_221B544B8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B545CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B545E0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_414(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBCA0, &qword_221BE5E08);
  OUTLINED_FUNCTION_335_0();
  *v0 = v2;
  v0[1] = sub_221B542C8;
  OUTLINED_FUNCTION_92_5();

  return MEMORY[0x2822008A0](v3);
}

uint64_t sub_221B54690(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B546A4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_414(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FB8, &qword_221BD2870);
  OUTLINED_FUNCTION_335_0();
  *v0 = v2;
  v0[1] = sub_221B542C8;
  OUTLINED_FUNCTION_92_5();

  return MEMORY[0x2822008A0](v3);
}

void sub_221B54754(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 4);
  sub_221B54864(&a2[6], a1);
  os_unfair_lock_unlock(a2 + 4);
}

void sub_221B547AC(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 4);
  sub_221B549BC(&a2[6], a1);
  os_unfair_lock_unlock(a2 + 4);
}

void sub_221B54804(uint64_t a1, os_unfair_lock_s *a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t *))
{
  os_unfair_lock_lock(a2 + 4);
  a3(a2 + 6, a1, &v6);
  os_unfair_lock_unlock(a2 + 4);
}

uint64_t sub_221B54864(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), v8, &qword_27CFBBB30, &qword_221BE5708);
  if (v8[264] == 255)
  {
    sub_2219EC58C(v8, &qword_27CFBBB30);
    sub_221B58CC4(sub_2219B4364);
    v5 = *(*a1 + 16);
    sub_221B58D50(v5, sub_2219B4364);
    v6 = *a1;
    *(*a1 + 16) = v5 + 1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
    result = (*(*(v7 - 8) + 16))(v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v5, a2, v7);
    *a1 = v6;
  }

  else
  {
    memcpy(__dst, v8, 0x109uLL);
    sub_221B2BDE0(__dst);
    return sub_2219EC58C(__dst, &qword_27CFB8090);
  }

  return result;
}

void sub_221B549BC(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == 255)
  {
    sub_221B58CC4(sub_2219B43A0);
    v8 = *(*a1 + 16);
    sub_221B58D50(v8, sub_2219B43A0);
    v9 = *a1;
    *(*a1 + 16) = v8 + 1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
    (*(*(v10 - 8) + 16))(v9 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v8, a2, v10);
    *a1 = v9;
  }

  else
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = a1[1];
    sub_2219EBD1C(v7, v6, v5, v4 & 1);
    sub_221B2BE80(v7, v6, v5, v4 & 1);
    sub_221B59788(v7, v6, v5, v4);
  }
}

uint64_t sub_221B54AF4(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), &v8, &qword_27CFBBB08, &qword_221BE56B0);
  if (v9[24] == 255)
  {
    sub_2219EC58C(&v8, &qword_27CFBBB08);
    sub_221B58CC4(sub_2219B43DC);
    v5 = *(*a1 + 16);
    sub_221B58D50(v5, sub_2219B43DC);
    v6 = *a1;
    *(*a1 + 16) = v5 + 1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F0, &qword_221BD0E10);
    result = (*(*(v7 - 8) + 16))(v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v5, a2, v7);
    *a1 = v6;
  }

  else
  {
    v10 = v8;
    v11[0] = *v9;
    *(v11 + 9) = *&v9[9];
    sub_221B2BF10(&v10);
    return sub_2219EC58C(&v10, &qword_27CFBBB00);
  }

  return result;
}

uint64_t sub_221B54C4C(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), &v8, &qword_27CFBBA78, &qword_221BE54C0);
  if (v9[24] == 255)
  {
    sub_2219EC58C(&v8, &qword_27CFBBA78);
    sub_221B58CC4(sub_2219B4418);
    v5 = *(*a1 + 16);
    sub_221B58D50(v5, sub_2219B4418);
    v6 = *a1;
    *(*a1 + 16) = v5 + 1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E8, &unk_221BD19A0);
    result = (*(*(v7 - 8) + 16))(v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v5, a2, v7);
    *a1 = v6;
  }

  else
  {
    v10 = v8;
    v11[0] = *v9;
    *(v11 + 9) = *&v9[9];
    sub_221B2BFA4(&v10);
    return sub_2219EC58C(&v10, &qword_27CFB8000);
  }

  return result;
}

uint64_t sub_221B54DA4(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 20) = 0;
  v3 = *(*v1 + 96);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC08, &qword_221BE5CD8);
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_221B54E34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = v1;

  sub_2219F7E3C();
}

uint64_t sub_221B54F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a5;
  v7 = swift_task_alloc();
  *(v5 + 40) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  *v7 = v5;
  v7[1] = sub_221B54FF4;
  v9 = MEMORY[0x277D84950];
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v5 + 16, a4, v10, v8, v9);
}

uint64_t sub_221B54FF4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B550D8()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  sub_221B55290(sub_221B619A4);

  sub_2219EBE10(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B55178(uint64_t a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC08, &qword_221BE5CD8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, a1 + *(*a1 + 96), v6, v8);
  sub_221B2BCF4(a2, a3 & 1);
  return (*(v7 + 8))(v10, v6);
}

void sub_221B55290(void (*a1)(void))
{
  os_unfair_lock_lock((v1 + 16));
  if (*(v1 + 20))
  {

    os_unfair_lock_unlock((v1 + 16));
  }

  else
  {
    *(v1 + 20) = 1;
    os_unfair_lock_unlock((v1 + 16));
    a1();
  }
}

uint64_t sub_221B5530C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_2219F8C64();
  sub_221B54E34(v9);
}

uint64_t sub_221B5540C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2219EC5F0;

  return v8(a1);
}

uint64_t sub_221B55504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = a7;
  v8[39] = a8;
  v8[36] = a5;
  v8[37] = a6;
  v8[35] = a4;
  return MEMORY[0x2822009F8](sub_221B5552C, 0, 0);
}

uint64_t sub_221B5552C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 280);
  if (v1 != 1)
  {
    sub_221B56240(v1);
  }

  OUTLINED_FUNCTION_27_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 320) = v2;
  *v2 = v3;
  v2[1] = sub_221B555F8;
  v4 = OUTLINED_FUNCTION_244_3();

  return v5(v4);
}

uint64_t sub_221B555F8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B556F0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 328);
  sub_221BCD8B8();
  if (v1)
  {
    sub_2219EC58C(v0 + 16, &qword_27CFB8048);
    v2 = OUTLINED_FUNCTION_270_1();
    sub_221B565A0(v2);
  }

  else
  {
    sub_221B56344(v0 + 16);
    sub_2219EC58C(v0 + 16, &qword_27CFB8048);
  }

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B557C4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 328);
  v3 = OUTLINED_FUNCTION_270_1();
  sub_221B565A0(v3);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221B55840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](sub_221B55868, 0, 0);
}

uint64_t sub_221B55868()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 40);
  if (v1 != 1)
  {
    sub_221B56240(v1);
  }

  OUTLINED_FUNCTION_27_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v2;
  *v2 = v3;
  v2[1] = sub_221B55934;
  v4 = OUTLINED_FUNCTION_244_3();

  return v5(v4);
}

uint64_t sub_221B55934()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B55A2C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 88);
  sub_221BCD8B8();
  if (v1)
  {

    v2 = OUTLINED_FUNCTION_270_1();
    sub_221B56658(v2);
  }

  else
  {
    sub_221B563F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B55AF4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 88);
  v3 = OUTLINED_FUNCTION_270_1();
  sub_221B56658(v3);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221B55B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return MEMORY[0x2822009F8](sub_221B55B98, 0, 0);
}

uint64_t sub_221B55B98()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 56);
  if (v1 != 1)
  {
    sub_221B56240(v1);
  }

  OUTLINED_FUNCTION_27_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_221B55C64;
  v4 = OUTLINED_FUNCTION_244_3();

  return v5(v4);
}

uint64_t sub_221B55C64()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B55D5C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 104);
  sub_221BCD8B8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    OUTLINED_FUNCTION_107_6();
    v2 = OUTLINED_FUNCTION_270_1();
    sub_221B5672C(v2, v3, v4, v5);
  }

  else
  {
    sub_221B564E0(v0 + 16, &qword_27CFBBB08, &qword_221BE56B0, sub_221B53540);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_221B55E48()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_107_6();
  v3 = OUTLINED_FUNCTION_270_1();
  sub_221B5672C(v3, v4, v5, v6);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_221B55ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return MEMORY[0x2822009F8](sub_221B55F00, 0, 0);
}

uint64_t sub_221B55F00()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 56);
  if (v1 != 1)
  {
    sub_221B56240(v1);
  }

  OUTLINED_FUNCTION_27_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_221B55FCC;
  v4 = OUTLINED_FUNCTION_244_3();

  return v5(v4);
}

uint64_t sub_221B55FCC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B560C4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 104);
  sub_221BCD8B8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    OUTLINED_FUNCTION_106_4();
    v2 = OUTLINED_FUNCTION_270_1();
    sub_221B5672C(v2, v3, v4, v5);
  }

  else
  {
    sub_221B564E0(v0 + 16, &qword_27CFBBA78, &qword_221BE54C0, sub_221B535D8);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_221B561B0()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_106_4();
  v3 = OUTLINED_FUNCTION_270_1();
  sub_221B5672C(v3, v4, v5, v6);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_221B56240(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA68, &qword_221BE54B0);
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v7 = v10 - v6;
  OUTLINED_FUNCTION_1_6();
  v10[1] = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
  sub_221BCD8F8();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_221B56344(uint64_t a1)
{
  result = sub_221B533A0();
  if ((result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();
    return sub_221B534D0(a1);
  }

  return result;
}

uint64_t sub_221B563F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_221B53420();
  if ((result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();

    sub_221B53738(a1, a2, a3, 0);
  }

  return result;
}

uint64_t sub_221B564E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_234(v6, v7);
  result = sub_221B5345C();
  if ((result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();
    return a4(a1);
  }

  return result;
}

uint64_t sub_221B565A0(void *a1)
{
  result = sub_221B533A0();
  if ((result & 1) == 0)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();
    return sub_221B53908(a1);
  }

  return result;
}

void sub_221B56658(void *a1)
{
  if (!sub_221B53420())
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();
    v3 = a1;
    sub_221B53738(a1, 0, 0, 1);
  }
}

uint64_t sub_221B5672C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_234(v6, v7);
  result = sub_221B5345C();
  if ((result & 1) == 0)
  {
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();
    return a4(a1);
  }

  return result;
}

void sub_221B5680C()
{
  OUTLINED_FUNCTION_130_4();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    sub_221BCD7B8();
    OUTLINED_FUNCTION_76_4();
    sub_221B62E9C(v5, v6);
    OUTLINED_FUNCTION_15_0();
    v4 = swift_allocError();
    sub_221BCD268();
  }

  v7 = v2;
  v0(v4);
  v8 = v1 + *(*v1 + 128);
  os_unfair_lock_lock(v8);
  sub_221BA977C((v8 + 8), v4);
  os_unfair_lock_unlock(v8);
}

void sub_221B56950(id a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    sub_221BCD7B8();
    OUTLINED_FUNCTION_76_4();
    sub_221B62E9C(v10, v11);
    OUTLINED_FUNCTION_15_0();
    v9 = swift_allocError();
    sub_221BCD268();
  }

  v12 = a1;
  sub_221B5672C(v9, a2, a3, a4);
  v13 = v4 + *(*v4 + 128);
  os_unfair_lock_lock(v13);
  sub_221BA977C((v13 + 8), v9);
  os_unfair_lock_unlock(v13);
}

void sub_221B56A60(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 16))
  {
    sub_221BCE058();
    __break(1u);
  }

  else
  {
    *(a1 + 16) = 1;

    os_unfair_lock_unlock((a1 + 24));
  }
}

void sub_221B56B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_6();
  v9 = v4 + *(v8 + 128);
  os_unfair_lock_lock(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_221B58CC4(sub_2219B429C);
  v11 = *(*(v9 + 8) + 16);
  sub_221B58D50(v11, sub_2219B429C);
  v12 = *(v9 + 8);
  *(v12 + 16) = v11 + 1;
  v13 = v12 + 16 * v11;
  *(v13 + 32) = a4;
  *(v13 + 40) = v10;

  os_unfair_lock_unlock(v9);
}

uint64_t sub_221B56BD8(uint64_t a1)
{
  v19 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA90, &unk_221BE54D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = v1 + *(*v1 + 128);
  *v15 = 0;
  *(v15 + 8) = MEMORY[0x277D84F90];
  (*(v3 + 104))(v5, *MEMORY[0x277D858A0], v2, v12);
  sub_221BCD8C8();
  (*(v3 + 8))(v5, v2);
  (*(v11 + 32))(v1 + *(*v1 + 96), v14, v10);
  (*(v7 + 32))(v1 + *(*v1 + 104), v9, v6);
  *(v1 + *(*v1 + 120)) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB48, &qword_221BE5718);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = MEMORY[0x277D84F90];
  bzero((v16 + 32), 0x108uLL);
  *(v16 + 296) = -1;
  *(v1 + *(*v1 + 112)) = v16;
  return v1;
}

uint64_t sub_221B56F04(uint64_t a1)
{
  v19 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA90, &unk_221BE54D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = v1 + *(*v1 + 128);
  *v15 = 0;
  *(v15 + 8) = MEMORY[0x277D84F90];
  (*(v3 + 104))(v5, *MEMORY[0x277D858A0], v2, v12);
  sub_221BCD8C8();
  (*(v3 + 8))(v5, v2);
  (*(v11 + 32))(v1 + *(*v1 + 96), v14, v10);
  (*(v7 + 32))(v1 + *(*v1 + 104), v9, v6);
  *(v1 + *(*v1 + 120)) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAC8, &qword_221BE5540);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = MEMORY[0x277D84F90];
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  *(v16 + 56) = -1;
  *(v1 + *(*v1 + 112)) = v16;
  return v1;
}

void sub_221B57224()
{
  OUTLINED_FUNCTION_21();
  v34 = v2;
  v35 = v3;
  v33 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA90, &unk_221BE54D0);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_156();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  OUTLINED_FUNCTION_0_2();
  v17 = v16;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  OUTLINED_FUNCTION_1_6();
  v22 = v0 + *(v21 + 128);
  *v22 = 0;
  *(v22 + 8) = MEMORY[0x277D84F90];
  (*(v7 + 104))(v10, *MEMORY[0x277D858A0], v5);
  sub_221BCD8C8();
  v23 = OUTLINED_FUNCTION_258_1();
  v24(v23);
  OUTLINED_FUNCTION_1_6();
  (*(v17 + 32))(v0 + *(v25 + 96), v20, v15);
  OUTLINED_FUNCTION_1_6();
  (*(v13 + 32))(v0 + *(v26 + 104), v1, v11);
  OUTLINED_FUNCTION_1_6();
  v28 = v34;
  *(v0 + *(v27 + 120)) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v35);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = MEMORY[0x277D84F90];
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0;
  *(v29 + 72) = -1;
  OUTLINED_FUNCTION_1_6();
  *(v0 + *(v30 + 112)) = v31;
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221B57510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAA8, &qword_221BE54E8);
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B575E8, 0, 0);
}

uint64_t sub_221B575E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_398_0();
  OUTLINED_FUNCTION_268_1();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_437(v13);

  sub_221B56B00(sub_221B5D85C, v12, &unk_283519618, sub_221B62F40);

  sub_221B56A60(v11);
  OUTLINED_FUNCTION_37_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  sub_221BCD838();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v10 + 144) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_190_3(v14);
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x2822005A8](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_221B57714()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B57810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v12 = *(v11 + 40);
  if (v12 == 1)
  {
    v13 = OUTLINED_FUNCTION_397_0();
    v14(v13);
    OUTLINED_FUNCTION_1_6();
    *(v11 + 152) = *(v10 + *(v15 + 112));
    v30 = OUTLINED_FUNCTION_109_4(qword_221BE54F0);

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v11 + 160) = v16;
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_346_0(v16);

    return (v30)(v18);
  }

  else
  {
    sub_221B56240(*(v11 + 40));
    sub_221B59770(v12);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v11 + 144) = v20;
    *v20 = v21;
    OUTLINED_FUNCTION_190_3(v20);
    OUTLINED_FUNCTION_65_7();

    return MEMORY[0x2822005A8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_221B57960()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221B579D4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B57ACC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 104);

  v1(v0 + 16);

  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B57B60()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221B57BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAA8, &qword_221BE54E8);
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B57C9C, 0, 0);
}

uint64_t sub_221B57C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_398_0();
  OUTLINED_FUNCTION_268_1();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_437(v13);

  sub_221B56B00(sub_221B62EF4, v12, &unk_283519320, sub_221B597A0);

  sub_221B56A60(v11);
  OUTLINED_FUNCTION_37_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  sub_221BCD838();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v10 + 144) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_191_4(v14);
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x2822005A8](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_221B57DC8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B57EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v12 = *(v11 + 40);
  if (v12 == 1)
  {
    v13 = OUTLINED_FUNCTION_397_0();
    v14(v13);
    OUTLINED_FUNCTION_1_6();
    *(v11 + 152) = *(v10 + *(v15 + 112));
    v30 = OUTLINED_FUNCTION_109_4(qword_221BE54F0);

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v11 + 160) = v16;
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_346_0(v16);

    return (v30)(v18);
  }

  else
  {
    sub_221B56240(*(v11 + 40));
    sub_221B59770(v12);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v11 + 144) = v20;
    *v20 = v21;
    OUTLINED_FUNCTION_191_4(v20);
    OUTLINED_FUNCTION_65_7();

    return MEMORY[0x2822005A8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_221B58014()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_221B5810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_221BCD878();
  }

  sub_221B5680C();
}

uint64_t sub_221B58174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC08, &qword_221BE5CD8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v14 + 16))(&v17 - v12, a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC10, &qword_221BE5CE0);
  swift_allocObject();
  sub_221B54DA4(v13);
  sub_221B5530C(a2, a3);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  sub_221B5530C(&unk_221BE5CF0, v15);
}

uint64_t sub_221B582D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_221BCDFC8();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B58394, 0, 0);
}

uint64_t sub_221B58394()
{
  OUTLINED_FUNCTION_1_5();
  sub_221BCE258();
  OUTLINED_FUNCTION_58_4(&dword_221BE91A8);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_221B58440;
  OUTLINED_FUNCTION_236_1(*(v0 + 16));
  OUTLINED_FUNCTION_237_2();

  return v4();
}

uint64_t sub_221B58440()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  v7 = OUTLINED_FUNCTION_4();
  v8(v7);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B58590()
{
  OUTLINED_FUNCTION_8_0();
  sub_221B61830(v0, v1, v2);
  if (!sub_221BCE198())
  {
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
  }

  swift_willThrow();

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B5862C()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

void sub_221B58688(uint64_t *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_221B58CC4(sub_2219B41D4);
  v3 = *(*a1 + 16);
  sub_221B58D50(v3, sub_2219B41D4);
  v4 = *a1;
  *(v4 + 16) = v3 + 1;
  sub_221B61EB0(v5, v4 + 8 * v3 + 32, &qword_27CFB78D8, &unk_221BE94B0);
  *a1 = v4;
}

void sub_221B58734(void (*a1)(uint64_t))
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v3 + 32;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v6)
    {

      swift_beginAccess();
      *(v2 + 16) = v7;

      a1(v2 + 16);
      swift_endAccess();
      return;
    }

    if (v6 >= *(v3 + 16))
    {
      break;
    }

    sub_221B62018(v5, v12, &qword_27CFB78D8, &unk_221BE94B0);
    swift_unknownObjectWeakLoadStrong();
    type metadata accessor for RemoteAppIntentsDispatcherFacade();
    if (swift_dynamicCastClass())
    {

      sub_221B61EB0(v12, v11, &qword_27CFB78D8, &unk_221BE94B0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2219A35EC(0, *(v7 + 16) + 1, 1);
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2219A35EC((v8 > 1), v9 + 1, 1);
      }

      *(v7 + 16) = v9 + 1;
      sub_221B61EB0(v11, v7 + 8 * v9 + 32, &qword_27CFB78D8, &unk_221BE94B0);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_2219EC58C(v12, &qword_27CFB78D8);
    }

    v5 += 8;
    ++v6;
  }

  __break(1u);
}

uint64_t sub_221B5899C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_167();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_50_2(v1);
  OUTLINED_FUNCTION_253();

  return sub_221B50C6C(v3, v4, v5, v6, v7);
}

uint64_t sub_221B58A38()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_130_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_125_1();

  return sub_221B50FFC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221B58AE0()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_59_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_125_1();

  return sub_221B3CDD4(v3, v4, v5, v6, v7, v8);
}

id sub_221B58B8C(uint64_t a1, void *a2)
{
  sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  v4 = sub_221BCD658();

  v5 = [v2 initWithValues:v4 memberValueType:a2];

  return v5;
}

uint64_t sub_221B58C10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_221B58CC4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_221B58D50(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_221B58DEC(uint64_t a1)
{
  OUTLINED_FUNCTION_271_1();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_167();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_15(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_14_16(v2);
  OUTLINED_FUNCTION_284_1();
  OUTLINED_FUNCTION_272_0();

  return sub_221B57BC4(v4, v5, v6, v7, v8, v9, v10, v11);
}

id sub_221B58E88(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_221B58E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_221B582D4(a1, a2, a3);
}

uint64_t sub_221B58F58(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2219EC5F0;

  return v8(a1, v5);
}

uint64_t sub_221B59064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2219EC5F0;

  return sub_221B2741C(a1, a2, a3, a4, v10);
}

uint64_t sub_221B5912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2219EC5F0;

  return sub_221B27AD8(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_221B591FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2219EC5F0;

  return sub_221B2C16C(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_221B592E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2219EC5F0;

  return sub_221B55504(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_221B593CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2219EC5F0;

  return sub_221B55840(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_221B594DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2219EC5F0;

  return sub_221B55B70(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_221B595C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2219EC5F0;

  return sub_221B55ED8(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_221B596AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_394_0();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_2_15(v12);
  *v13 = v14;
  v13[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_80_6();
  OUTLINED_FUNCTION_95_0();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

void sub_221B59770(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_221B59788(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_2219EBD6C(a1, a2, a3, a4 & 1);
  }
}

uint64_t sub_221B597E8()
{
  OUTLINED_FUNCTION_104();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_80_6();
  OUTLINED_FUNCTION_95_0();

  return sub_221B4C0E4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221B598C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_394_0();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_2_15(v12);
  *v13 = v14;
  v13[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_80_6();
  OUTLINED_FUNCTION_95_0();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_221B599A8()
{
  OUTLINED_FUNCTION_57_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_284_1();
  OUTLINED_FUNCTION_75_4();

  return sub_221B4CD5C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221B59AA0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_20(v1);

  return sub_2219EA388(v3, v4, v5, v6);
}

uint64_t sub_221B59B2C()
{
  OUTLINED_FUNCTION_57_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_284_1();
  OUTLINED_FUNCTION_75_4();

  return sub_221B4D12C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221B59C1C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_18(v1);
  OUTLINED_FUNCTION_267_1();
  OUTLINED_FUNCTION_253();

  return sub_221B3CB40(v3, v4, v5, v6, v7);
}

uint64_t sub_221B59CAC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_59_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_125_1();

  return sub_221B344EC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221B59D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2219EC5F0;

  return sub_221B274E8(a1, a2, a3, a4, v10);
}

uint64_t sub_221B59E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2219EC5F0;

  return sub_221B28424(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_221B59EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2219EC5F0;

  return sub_221B2C88C(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_221B59FDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v180 = a8;
  v182 = a6;
  v176 = a5;
  v185 = a3;
  v186 = a4;
  v184 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  v161 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v162 = v11;
  v163 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v174 = (&v151 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  v159 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v171 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v15;
  MEMORY[0x28223BE20](v16);
  v173 = (&v151 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
  v157 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v169 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v19;
  MEMORY[0x28223BE20](v20);
  v172 = (&v151 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
  v155 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v167 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v23;
  MEMORY[0x28223BE20](v24);
  v170 = (&v151 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  v153 = *(v26 - 8);
  MEMORY[0x28223BE20](v26 - 8);
  v165 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v27;
  MEMORY[0x28223BE20](v28);
  v168 = (&v151 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18);
  v151 = *(v30 - 8);
  MEMORY[0x28223BE20](v30 - 8);
  v164 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v31;
  MEMORY[0x28223BE20](v32);
  v166 = (&v151 - v33);
  v188 = sub_221BCC558();
  v177 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v175 = v34;
  v187 = &v151 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  v179 = *(v190 - 8);
  v178 = *(v179 + 64);
  MEMORY[0x28223BE20](v190);
  v189 = &v151 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v36 - 8);
  v191 = &v151 - v37;
  v183 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  MEMORY[0x28223BE20](v183);
  v39 = (&v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_221BCCEE8();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v151 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8040, &qword_221BD2900);
  v194[4] = &off_28351D968;
  v194[0] = a7;
  type metadata accessor for RemoteAppIntentsActor(0);
  sub_221B62E9C(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);

  v181 = a2;
  sub_221BCCFD8();
  v44 = sub_221BCCEB8();
  v46 = v45;
  (*(v41 + 8))(v43, v40);
  if (!v46)
  {

    v44 = 0;
    v46 = 0xE000000000000000;
  }

  sub_221A0150C(v184, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      *&v193[0] = *v39;
      sub_221BCD788();
      return __swift_destroy_boxed_opaque_existential_0(v194);
    case 2u:

      v72 = v166;
      sub_221B61EB0(v39, v166, &qword_27CFB8348, &qword_221BD2E18);
      v73 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v191, 1, 1, v73);
      sub_221B62018(v72, v164, &qword_27CFB8348, &qword_221BD2E18);
      sub_2219A1B08(v194, v193);
      v74 = v179;
      (*(v179 + 16))(v189, v185, v190);
      v75 = v177;
      (*(v177 + 16))(v187, v176, v188);
      v76 = (*(v151 + 80) + 48) & ~*(v151 + 80);
      v77 = (v152 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
      v78 = (v77 + 47) & 0xFFFFFFFFFFFFFFF8;
      v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
      v80 = (*(v74 + 80) + v79 + 8) & ~*(v74 + 80);
      v81 = (v178 + *(v75 + 80) + v80) & ~*(v75 + 80);
      v185 = (v175 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      *(v82 + 2) = 0;
      *(v82 + 3) = 0;
      *(v82 + 4) = v186;
      *(v82 + 5) = &off_2835191A8;
      sub_221B61EB0(v164, &v82[v76], &qword_27CFB8348, &qword_221BD2E18);
      sub_22198B358(v193, &v82[v77]);
      v83 = v180;
      *&v82[v78] = v181;
      *&v82[v79] = v83;
      (*(v74 + 32))(&v82[v80], v189, v190);
      (*(v75 + 32))(&v82[v81], v187, v188);
      v84 = v182;
      memcpy(&v82[v185], v182, 0xC4uLL);

      sub_2219EB864(v84, v193);

      sub_2219F8C64();

      v57 = v166;
      v58 = &qword_27CFB8348;
      goto LABEL_12;
    case 3u:

      v85 = v173;
      sub_221B61EB0(v39, v173, &unk_27CFB93F0, &unk_221BD2E00);
      v86 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v191, 1, 1, v86);
      sub_221B62018(v85, v171, &unk_27CFB93F0, &unk_221BD2E00);
      sub_2219A1B08(v194, v193);
      v87 = v179;
      (*(v179 + 16))(v189, v185, v190);
      v88 = v177;
      (*(v177 + 16))(v187, v176, v188);
      v89 = (*(v159 + 80) + 48) & ~*(v159 + 80);
      v90 = (v160 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = (v90 + 47) & 0xFFFFFFFFFFFFFFF8;
      v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
      v93 = (*(v87 + 80) + v92 + 8) & ~*(v87 + 80);
      v94 = (v178 + *(v88 + 80) + v93) & ~*(v88 + 80);
      v185 = (v175 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      *(v95 + 2) = 0;
      *(v95 + 3) = 0;
      *(v95 + 4) = v186;
      *(v95 + 5) = &off_2835191A8;
      sub_221B61EB0(v171, &v95[v89], &unk_27CFB93F0, &unk_221BD2E00);
      sub_22198B358(v193, &v95[v90]);
      v96 = v180;
      *&v95[v91] = v181;
      *&v95[v92] = v96;
      (*(v87 + 32))(&v95[v93], v189, v190);
      (*(v88 + 32))(&v95[v94], v187, v188);
      v97 = v182;
      memcpy(&v95[v185], v182, 0xC4uLL);

      sub_2219EB864(v97, v193);

      sub_2219F8C64();

      v57 = v173;
      v58 = &unk_27CFB93F0;
      goto LABEL_12;
    case 4u:

      v59 = v168;
      sub_221B61EB0(v39, v168, &unk_27CFB93D0, &qword_221BD2E10);
      v60 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v191, 1, 1, v60);
      sub_221B62018(v59, v165, &unk_27CFB93D0, &qword_221BD2E10);
      sub_2219A1B08(v194, v193);
      v61 = v179;
      (*(v179 + 16))(v189, v185, v190);
      v62 = v177;
      (*(v177 + 16))(v187, v176, v188);
      v63 = (*(v153 + 80) + 48) & ~*(v153 + 80);
      v64 = (v154 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 47) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = (*(v61 + 80) + v66 + 8) & ~*(v61 + 80);
      v68 = (v178 + *(v62 + 80) + v67) & ~*(v62 + 80);
      v185 = (v175 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      *(v69 + 2) = 0;
      *(v69 + 3) = 0;
      *(v69 + 4) = v186;
      *(v69 + 5) = &off_2835191A8;
      sub_221B61EB0(v165, &v69[v63], &unk_27CFB93D0, &qword_221BD2E10);
      sub_22198B358(v193, &v69[v64]);
      v70 = v180;
      *&v69[v65] = v181;
      *&v69[v66] = v70;
      (*(v61 + 32))(&v69[v67], v189, v190);
      (*(v62 + 32))(&v69[v68], v187, v188);
      v71 = v182;
      memcpy(&v69[v185], v182, 0xC4uLL);

      sub_2219EB864(v71, v193);

      sub_2219F8C64();

      v57 = v168;
      v58 = &unk_27CFB93D0;
      goto LABEL_12;
    case 5u:

      v111 = v170;
      sub_221B61EB0(v39, v170, &unk_27CFB93A0, &unk_221BE4F60);
      v112 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v191, 1, 1, v112);
      sub_221B62018(v111, v167, &unk_27CFB93A0, &unk_221BE4F60);
      sub_2219A1B08(v194, v193);
      v113 = v179;
      (*(v179 + 16))(v189, v185, v190);
      v114 = v177;
      (*(v177 + 16))(v187, v176, v188);
      v115 = (*(v155 + 80) + 48) & ~*(v155 + 80);
      v116 = (v156 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
      v117 = (v116 + 47) & 0xFFFFFFFFFFFFFFF8;
      v118 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
      v119 = (*(v113 + 80) + v118 + 8) & ~*(v113 + 80);
      v120 = (v178 + *(v114 + 80) + v119) & ~*(v114 + 80);
      v185 = (v175 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
      v121 = swift_allocObject();
      *(v121 + 2) = 0;
      *(v121 + 3) = 0;
      *(v121 + 4) = v186;
      *(v121 + 5) = &off_2835191A8;
      sub_221B61EB0(v167, &v121[v115], &unk_27CFB93A0, &unk_221BE4F60);
      sub_22198B358(v193, &v121[v116]);
      v122 = v180;
      *&v121[v117] = v181;
      *&v121[v118] = v122;
      (*(v113 + 32))(&v121[v119], v189, v190);
      (*(v114 + 32))(&v121[v120], v187, v188);
      v123 = v182;
      memcpy(&v121[v185], v182, 0xC4uLL);

      sub_2219EB864(v123, v193);

      sub_2219F8C64();

      v57 = v170;
      v58 = &unk_27CFB93A0;
      goto LABEL_12;
    case 6u:

      v124 = v172;
      sub_221B61EB0(v39, v172, &qword_27CFB8340, &unk_221BE57E0);
      v125 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v191, 1, 1, v125);
      sub_221B62018(v124, v169, &qword_27CFB8340, &unk_221BE57E0);
      sub_2219A1B08(v194, v193);
      v126 = v179;
      (*(v179 + 16))(v189, v185, v190);
      v127 = v177;
      (*(v177 + 16))(v187, v176, v188);
      v128 = (*(v157 + 80) + 48) & ~*(v157 + 80);
      v129 = (v158 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
      v130 = (v129 + 47) & 0xFFFFFFFFFFFFFFF8;
      v131 = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;
      v132 = (*(v126 + 80) + v131 + 8) & ~*(v126 + 80);
      v133 = (v178 + *(v127 + 80) + v132) & ~*(v127 + 80);
      v185 = (v175 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
      v134 = swift_allocObject();
      *(v134 + 2) = 0;
      *(v134 + 3) = 0;
      *(v134 + 4) = v186;
      *(v134 + 5) = &off_2835191A8;
      sub_221B61EB0(v169, &v134[v128], &qword_27CFB8340, &unk_221BE57E0);
      sub_22198B358(v193, &v134[v129]);
      v135 = v180;
      *&v134[v130] = v181;
      *&v134[v131] = v135;
      (*(v126 + 32))(&v134[v132], v189, v190);
      (*(v127 + 32))(&v134[v133], v187, v188);
      v136 = v182;
      memcpy(&v134[v185], v182, 0xC4uLL);

      sub_2219EB864(v136, v193);

      sub_2219F8C64();

      v57 = v172;
      v58 = &qword_27CFB8340;
      goto LABEL_12;
    case 7u:
      v98 = v174;
      sub_221B61EB0(v39, v174, &unk_27CFB93E0, &unk_221BD2DF0);
      v99 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v191, 1, 1, v99);
      sub_2219A1B08(v194, v193);
      v184 = v44;
      v100 = v163;
      sub_221B62018(v98, v163, &unk_27CFB93E0, &unk_221BD2DF0);
      v101 = v179;
      (*(v179 + 16))(v189, v185, v190);
      v102 = v177;
      (*(v177 + 16))(v187, v176, v188);
      v103 = (*(v161 + 80) + 80) & ~*(v161 + 80);
      v104 = (v162 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
      v105 = (*(v101 + 80) + v104 + 8) & ~*(v101 + 80);
      v176 = (v178 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v178 = (*(v102 + 80) + v176 + 16) & ~*(v102 + 80);
      v183 = (v175 + v178 + 7) & 0xFFFFFFFFFFFFFFF8;
      v185 = (v183 + 203) & 0xFFFFFFFFFFFFFFF8;
      v106 = swift_allocObject();
      *(v106 + 2) = 0;
      *(v106 + 3) = 0;
      sub_22198B358(v193, (v106 + 32));
      *(v106 + 9) = v181;
      sub_221B61EB0(v100, &v106[v103], &unk_27CFB93E0, &unk_221BD2DF0);
      *&v106[v104] = v180;
      (*(v101 + 32))(&v106[v105], v189, v190);
      v107 = &v106[v176];
      v108 = v187;
      *v107 = v186;
      v107[1] = &off_2835191A8;
      (*(v102 + 32))(&v106[v178], v108, v188);
      v109 = v182;
      memcpy(&v106[v183], v182, 0xC4uLL);
      v110 = &v106[v185];
      *v110 = v184;
      *(v110 + 1) = v46;

      sub_2219EB864(v109, v193);

      sub_2219F8C64();

      v57 = v174;
      v58 = &unk_27CFB93E0;
      goto LABEL_12;
    case 8u:

      v138 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v191, 1, 1, v138);
      v139 = v177;
      (*(v177 + 16))(v187, v176, v188);
      sub_2219A1B08(v194, v193);
      v140 = v179;
      (*(v179 + 16))(v189, v185, v190);
      v141 = (*(v139 + 80) + 32) & ~*(v139 + 80);
      v142 = (v175 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
      v143 = (v142 + 47) & 0xFFFFFFFFFFFFFFF8;
      v144 = (v143 + 15) & 0xFFFFFFFFFFFFFFF8;
      v145 = (*(v140 + 80) + v144 + 8) & ~*(v140 + 80);
      v146 = (v178 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
      v185 = (v146 + 23) & 0xFFFFFFFFFFFFFFF8;
      v147 = swift_allocObject();
      *(v147 + 16) = 0;
      *(v147 + 24) = 0;
      (*(v139 + 32))(v147 + v141, v187, v188);
      sub_22198B358(v193, v147 + v142);
      v148 = v180;
      *(v147 + v143) = v181;
      *(v147 + v144) = v148;
      (*(v140 + 32))(v147 + v145, v189, v190);
      v149 = (v147 + v146);
      *v149 = v186;
      v149[1] = &off_2835191A8;
      v150 = v182;
      memcpy((v147 + v185), v182, 0xC4uLL);

      sub_2219EB864(v150, v193);

      sub_2219F8C64();

      return __swift_destroy_boxed_opaque_existential_0(v194);
    default:
      v47 = v39[28];
      v187 = v39[29];
      v188 = v47;
      memcpy(v193, v39, sizeof(v193));
      v48 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v191, 1, 1, v48);
      sub_221B62018(v193, v192, &unk_27CFBB7A0, &qword_221BD2930);
      v49 = v179;
      v50 = *(v179 + 16);
      v184 = v44;
      v51 = v189;
      v52 = v190;
      v50(v189, v185, v190);
      v53 = (*(v49 + 80) + 504) & ~*(v49 + 80);
      v54 = swift_allocObject();
      *(v54 + 2) = 0;
      *(v54 + 3) = 0;
      *(v54 + 4) = v180;
      memcpy(v54 + 40, v192, 0xE0uLL);
      v55 = v182;
      *(v54 + 33) = v181;
      memcpy(v54 + 272, v55, 0xC4uLL);
      v56 = v187;
      *(v54 + 59) = v188;
      *(v54 + 60) = v56;
      *(v54 + 61) = v184;
      *(v54 + 62) = v46;
      (*(v49 + 32))(&v54[v53], v51, v52);

      sub_2219EB864(v55, v192);
      sub_2219F7E3C();

      v57 = v193;
      v58 = &unk_27CFBB7A0;
LABEL_12:
      sub_2219EC58C(v57, v58);
      return __swift_destroy_boxed_opaque_existential_0(v194);
  }
}

uint64_t sub_221B5B7C4(unint64_t a1, const void *a2, unint64_t a3, uint64_t a4, unint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v178 = a8;
  v179 = a7;
  v180 = a6;
  v181 = a1;
  v174 = a5;
  v182 = a3;
  v183 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  v163 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v170 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v14;
  MEMORY[0x28223BE20](v15);
  v172 = (&v149 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  v161 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v165 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v18;
  MEMORY[0x28223BE20](v19);
  v171 = (&v149 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
  v158 = *(v21 - 8);
  MEMORY[0x28223BE20](v21 - 8);
  v159 = v22;
  v160 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v169 = (&v149 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
  v155 = *(v25 - 8);
  MEMORY[0x28223BE20](v25 - 8);
  v156 = v26;
  v157 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v168 = (&v149 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  v153 = *(v29 - 8);
  MEMORY[0x28223BE20](v29 - 8);
  v154 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v30;
  MEMORY[0x28223BE20](v31);
  v167 = (&v149 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18);
  v150 = *(v33 - 8);
  v34 = *(v150 + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v152 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v166 = (&v149 - v36);
  v185 = sub_221BCC558();
  v175 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v173 = v37;
  v184 = &v149 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  v177 = *(v187 - 8);
  v176 = *(v177 + 64);
  MEMORY[0x28223BE20](v187);
  v186 = &v149 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v39 - 8);
  v188 = &v149 - v40;
  v41 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  MEMORY[0x28223BE20](v41);
  v43 = (&v149 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_221BCCEE8();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v149 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191[3] = a9;
  v191[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v191);
  (*(*(a9 - 8) + 16))(boxed_opaque_existential_1, v179, a9);
  memcpy(v192, v180, 0xC4uLL);
  type metadata accessor for RemoteAppIntentsActor(0);
  sub_221B62E9C(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);
  v180 = a2;
  sub_221BCCFD8();
  v49 = sub_221BCCEB8();
  v51 = v50;
  (*(v45 + 8))(v47, v44);
  if (!v51)
  {

    v49 = 0;
    v51 = 0xE000000000000000;
  }

  v179 = a12;
  sub_221A0150C(v181, v43);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      *&v190[0] = *v43;
      sub_221BCD788();
      return __swift_destroy_boxed_opaque_existential_0(v191);
    case 2u:

      v75 = v166;
      sub_221B61EB0(v43, v166, &qword_27CFB8348, &qword_221BD2E18);
      v76 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v188, 1, 1, v76);
      v77 = v152;
      sub_221B62018(v75, v152, &qword_27CFB8348, &qword_221BD2E18);
      sub_2219A1B08(v191, v190);
      v78 = v177;
      (*(v177 + 16))(v186, v182, v187);
      v79 = v175;
      (*(v175 + 16))(v184, v174, v185);
      v80 = (*(v150 + 80) + 48) & ~*(v150 + 80);
      v81 = (v34 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = (v81 + 47) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
      v84 = (*(v78 + 80) + v83 + 8) & ~*(v78 + 80);
      v181 = (v176 + *(v79 + 80) + v84) & ~*(v79 + 80);
      v182 = (v173 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
      v85 = swift_allocObject();
      *(v85 + 2) = 0;
      *(v85 + 3) = 0;
      v86 = v179;
      *(v85 + 4) = v183;
      *(v85 + 5) = v86;
      sub_221B61EB0(v77, &v85[v80], &qword_27CFB8348, &qword_221BD2E18);
      sub_22198B358(v190, &v85[v81]);
      *&v85[v82] = v180;
      *&v85[v83] = v178;
      (*(v78 + 32))(&v85[v84], v186, v187);
      (*(v79 + 32))(&v85[v181], v184, v185);
      memcpy(&v85[v182], v192, 0xC4uLL);

      sub_2219EB864(v192, v190);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v61 = v166;
      v62 = &qword_27CFB8348;
      goto LABEL_12;
    case 3u:

      v87 = v171;
      sub_221B61EB0(v43, v171, &unk_27CFB93F0, &unk_221BD2E00);
      v88 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v188, 1, 1, v88);
      v89 = v165;
      sub_221B62018(v87, v165, &unk_27CFB93F0, &unk_221BD2E00);
      sub_2219A1B08(v191, v190);
      v90 = v177;
      (*(v177 + 16))(v186, v182, v187);
      v91 = v175;
      (*(v175 + 16))(v184, v174, v185);
      v92 = (*(v161 + 80) + 48) & ~*(v161 + 80);
      v93 = (v162 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v93 + 47) & 0xFFFFFFFFFFFFFFF8;
      v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
      v96 = (*(v90 + 80) + v95 + 8) & ~*(v90 + 80);
      v181 = (v176 + *(v91 + 80) + v96) & ~*(v91 + 80);
      v182 = (v173 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
      v97 = swift_allocObject();
      *(v97 + 2) = 0;
      *(v97 + 3) = 0;
      v98 = v179;
      *(v97 + 4) = v183;
      *(v97 + 5) = v98;
      sub_221B61EB0(v89, &v97[v92], &unk_27CFB93F0, &unk_221BD2E00);
      sub_22198B358(v190, &v97[v93]);
      *&v97[v94] = v180;
      *&v97[v95] = v178;
      (*(v90 + 32))(&v97[v96], v186, v187);
      (*(v91 + 32))(&v97[v181], v184, v185);
      memcpy(&v97[v182], v192, 0xC4uLL);

      sub_2219EB864(v192, v190);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v61 = v171;
      v62 = &unk_27CFB93F0;
      goto LABEL_12;
    case 4u:

      v63 = v167;
      sub_221B61EB0(v43, v167, &unk_27CFB93D0, &qword_221BD2E10);
      v64 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v188, 1, 1, v64);
      v65 = v154;
      sub_221B62018(v63, v154, &unk_27CFB93D0, &qword_221BD2E10);
      sub_2219A1B08(v191, v190);
      v66 = v177;
      (*(v177 + 16))(v186, v182, v187);
      v67 = v175;
      (*(v175 + 16))(v184, v174, v185);
      v68 = (*(v153 + 80) + 48) & ~*(v153 + 80);
      v69 = (v151 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      v70 = (v69 + 47) & 0xFFFFFFFFFFFFFFF8;
      v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
      v72 = (*(v66 + 80) + v71 + 8) & ~*(v66 + 80);
      v181 = (v176 + *(v67 + 80) + v72) & ~*(v67 + 80);
      v182 = (v173 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
      v73 = swift_allocObject();
      *(v73 + 2) = 0;
      *(v73 + 3) = 0;
      v74 = v179;
      *(v73 + 4) = v183;
      *(v73 + 5) = v74;
      sub_221B61EB0(v65, &v73[v68], &unk_27CFB93D0, &qword_221BD2E10);
      sub_22198B358(v190, &v73[v69]);
      *&v73[v70] = v180;
      *&v73[v71] = v178;
      (*(v66 + 32))(&v73[v72], v186, v187);
      (*(v67 + 32))(&v73[v181], v184, v185);
      memcpy(&v73[v182], v192, 0xC4uLL);

      sub_2219EB864(v192, v190);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v61 = v167;
      v62 = &unk_27CFB93D0;
      goto LABEL_12;
    case 5u:

      v112 = v168;
      sub_221B61EB0(v43, v168, &unk_27CFB93A0, &unk_221BE4F60);
      v113 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v188, 1, 1, v113);
      v114 = v157;
      sub_221B62018(v112, v157, &unk_27CFB93A0, &unk_221BE4F60);
      sub_2219A1B08(v191, v190);
      v115 = v177;
      (*(v177 + 16))(v186, v182, v187);
      v116 = v175;
      (*(v175 + 16))(v184, v174, v185);
      v117 = (*(v155 + 80) + 48) & ~*(v155 + 80);
      v118 = (v156 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
      v119 = (v118 + 47) & 0xFFFFFFFFFFFFFFF8;
      v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
      v121 = (*(v115 + 80) + v120 + 8) & ~*(v115 + 80);
      v181 = (v176 + *(v116 + 80) + v121) & ~*(v116 + 80);
      v182 = (v173 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
      v122 = swift_allocObject();
      *(v122 + 2) = 0;
      *(v122 + 3) = 0;
      v123 = v179;
      *(v122 + 4) = v183;
      *(v122 + 5) = v123;
      sub_221B61EB0(v114, &v122[v117], &unk_27CFB93A0, &unk_221BE4F60);
      sub_22198B358(v190, &v122[v118]);
      *&v122[v119] = v180;
      *&v122[v120] = v178;
      (*(v115 + 32))(&v122[v121], v186, v187);
      (*(v116 + 32))(&v122[v181], v184, v185);
      memcpy(&v122[v182], v192, 0xC4uLL);

      sub_2219EB864(v192, v190);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v61 = v168;
      v62 = &unk_27CFB93A0;
      goto LABEL_12;
    case 6u:

      v124 = v169;
      sub_221B61EB0(v43, v169, &qword_27CFB8340, &unk_221BE57E0);
      v125 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v188, 1, 1, v125);
      v126 = v160;
      sub_221B62018(v124, v160, &qword_27CFB8340, &unk_221BE57E0);
      sub_2219A1B08(v191, v190);
      v127 = v177;
      (*(v177 + 16))(v186, v182, v187);
      v128 = v175;
      (*(v175 + 16))(v184, v174, v185);
      v129 = (*(v158 + 80) + 48) & ~*(v158 + 80);
      v130 = (v159 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
      v131 = (v130 + 47) & 0xFFFFFFFFFFFFFFF8;
      v132 = (v131 + 15) & 0xFFFFFFFFFFFFFFF8;
      v133 = (*(v127 + 80) + v132 + 8) & ~*(v127 + 80);
      v181 = (v176 + *(v128 + 80) + v133) & ~*(v128 + 80);
      v182 = (v173 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
      v134 = swift_allocObject();
      *(v134 + 2) = 0;
      *(v134 + 3) = 0;
      v135 = v179;
      *(v134 + 4) = v183;
      *(v134 + 5) = v135;
      sub_221B61EB0(v126, &v134[v129], &qword_27CFB8340, &unk_221BE57E0);
      sub_22198B358(v190, &v134[v130]);
      *&v134[v131] = v180;
      *&v134[v132] = v178;
      (*(v127 + 32))(&v134[v133], v186, v187);
      (*(v128 + 32))(&v134[v181], v184, v185);
      memcpy(&v134[v182], v192, 0xC4uLL);

      sub_2219EB864(v192, v190);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v61 = v169;
      v62 = &qword_27CFB8340;
      goto LABEL_12;
    case 7u:
      v99 = v172;
      sub_221B61EB0(v43, v172, &unk_27CFB93E0, &unk_221BD2DF0);
      v100 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v188, 1, 1, v100);
      sub_2219A1B08(v191, v190);
      sub_221B62018(v99, v170, &unk_27CFB93E0, &unk_221BD2DF0);
      v181 = v49;
      v101 = v177;
      (*(v177 + 16))(v186, v182, v187);
      v102 = v175;
      (*(v175 + 16))(v184, v174, v185);
      v103 = (*(v163 + 80) + 80) & ~*(v163 + 80);
      v104 = (v164 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
      v105 = (*(v101 + 80) + v104 + 8) & ~*(v101 + 80);
      v106 = (v176 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v174 = (*(v102 + 80) + v106 + 16) & ~*(v102 + 80);
      v182 = (v173 + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
      v176 = (v182 + 203) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      *(v107 + 2) = 0;
      *(v107 + 3) = 0;
      sub_22198B358(v190, (v107 + 32));
      *(v107 + 9) = v180;
      sub_221B61EB0(v170, &v107[v103], &unk_27CFB93E0, &unk_221BD2DF0);
      *&v107[v104] = v178;
      (*(v101 + 32))(&v107[v105], v186, v187);
      v108 = &v107[v106];
      v109 = v184;
      v110 = v179;
      *v108 = v183;
      v108[1] = v110;
      (*(v102 + 32))(&v107[v174], v109, v185);
      memcpy(&v107[v182], v192, 0xC4uLL);
      v111 = &v107[v176];
      *v111 = v181;
      v111[1] = v51;

      sub_2219EB864(v192, v190);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v61 = v172;
      v62 = &unk_27CFB93E0;
      goto LABEL_12;
    case 8u:

      v137 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v188, 1, 1, v137);
      v138 = v175;
      (*(v175 + 16))(v184, v174, v185);
      sub_2219A1B08(v191, v190);
      v139 = v177;
      (*(v177 + 16))(v186, v182, v187);
      v140 = (*(v138 + 80) + 32) & ~*(v138 + 80);
      v141 = (v173 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
      v142 = (v141 + 47) & 0xFFFFFFFFFFFFFFF8;
      v143 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
      v144 = (*(v139 + 80) + v143 + 8) & ~*(v139 + 80);
      v145 = (v176 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
      v182 = (v145 + 23) & 0xFFFFFFFFFFFFFFF8;
      v146 = swift_allocObject();
      *(v146 + 16) = 0;
      *(v146 + 24) = 0;
      (*(v138 + 32))(v146 + v140, v184, v185);
      sub_22198B358(v190, v146 + v141);
      *(v146 + v142) = v180;
      *(v146 + v143) = v178;
      (*(v139 + 32))(v146 + v144, v186, v187);
      v147 = (v146 + v145);
      v148 = v179;
      *v147 = v183;
      v147[1] = v148;
      memcpy((v146 + v182), v192, 0xC4uLL);

      sub_2219EB864(v192, v190);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      return __swift_destroy_boxed_opaque_existential_0(v191);
    default:
      v52 = v43[28];
      v184 = v43[29];
      v185 = v52;
      memcpy(v190, v43, sizeof(v190));
      v53 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v188, 1, 1, v53);
      sub_221B62018(v190, v189, &unk_27CFBB7A0, &qword_221BD2930);
      v54 = v49;
      v55 = v177;
      v57 = v186;
      v56 = v187;
      (*(v177 + 16))(v186, v182, v187);
      v58 = (*(v55 + 80) + 504) & ~*(v55 + 80);
      v59 = swift_allocObject();
      *(v59 + 2) = 0;
      *(v59 + 3) = 0;
      *(v59 + 4) = v178;
      memcpy(v59 + 40, v189, 0xE0uLL);
      *(v59 + 33) = v180;
      memcpy(v59 + 272, v192, 0xC4uLL);
      v60 = v184;
      *(v59 + 59) = v185;
      *(v59 + 60) = v60;
      *(v59 + 61) = v54;
      *(v59 + 62) = v51;
      (*(v55 + 32))(&v59[v58], v57, v56);

      sub_2219EB864(v192, v189);
      sub_2219F7E3C();

      v61 = v190;
      v62 = &unk_27CFBB7A0;
LABEL_12:
      sub_2219EC58C(v61, v62);
      return __swift_destroy_boxed_opaque_existential_0(v191);
  }
}