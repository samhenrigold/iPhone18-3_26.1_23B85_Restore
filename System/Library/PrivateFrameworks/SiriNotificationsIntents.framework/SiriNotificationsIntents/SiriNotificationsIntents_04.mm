uint64_t sub_268520DC4()
{
  v0 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v6 = v5 - v4;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v0, qword_28028B348);
  (*(v2 + 16))(v6);
  v7 = sub_2685689E0();
  v8 = sub_268568DC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_16_0();
    *v9 = 0;
    _os_log_impl(&dword_2684CA000, v7, v8, "NotificationsFlowProvider getFlowSearchResultForUnsupportedDevice | returning RNReadNotificationsNotSupportedForDeviceFlow", v9, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v2 + 8))(v6, v0);
  type metadata accessor for RNReadNotificationsNotSupportedForDevicePatternFlow();
  swift_allocObject();
  sub_26852111C(&qword_280283538, type metadata accessor for RNReadNotificationsNotSupportedForDevicePatternFlow, &unk_2685705F8);
  sub_2685678E0();
  OUTLINED_FUNCTION_31_5();

  sub_268567980();
}

uint64_t sub_268520FA8()
{
  __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
  OUTLINED_FUNCTION_29_3();
  if (sub_268567AC0())
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
  OUTLINED_FUNCTION_29_3();
  if (sub_268567AA0())
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
  OUTLINED_FUNCTION_29_3();
  return sub_268567AD0() & 1;
}

uint64_t NotificationsFlowProvider.deinit()
{
  sub_2684CC8D4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  return v0;
}

uint64_t NotificationsFlowProvider.__deallocating_deinit()
{
  sub_2684CC8D4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_2685210B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ANDirectInvocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26852111C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268521164(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_18(uint64_t a1)
{
  *(v1 - 256) = 0u;
  *(v1 - 240) = 0u;
  *(v1 - 224) = 0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_14(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_19_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256) + 16;

  return sub_2684CC878(v3, v1 - 216);
}

uint64_t OUTLINED_FUNCTION_26_4(uint64_t a1)
{

  return sub_2685678E0();
}

unint64_t OUTLINED_FUNCTION_34_2(uint64_t a1, uint64_t a2)
{
  *(v3 - 216) = a1;
  *(v3 - 208) = a2;
  *(v3 - 256) = v2;
  *(v3 - 248) = 0xE900000000000070;

  return sub_2684D166C();
}

void *OUTLINED_FUNCTION_35_1()
{

  return sub_2685683B0();
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_268568F20();
}

void OUTLINED_FUNCTION_52_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_54_0()
{
}

uint64_t UnsupportedFlow.__allocating_init(sharedObjects:intent:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  UnsupportedFlow.init(sharedObjects:intent:)(a1, a2 & 1);
  return v4;
}

uint64_t UnsupportedFlow.init(sharedObjects:intent:)(uint64_t a1, char a2)
{
  sub_2684D57FC(a1 + 80, v2 + 16);
  sub_2684D57FC(a1 + 40, v6);
  sub_2684CC8D4(a1);
  sub_2684D8314(v6, v2 + 56);
  *(v2 + 96) = a2 & 1;
  return v2;
}

uint64_t UnsupportedFlow.execute()(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_2685215C8, 0, 0);
}

uint64_t sub_2685215C8()
{
  v1 = v0[12];
  sub_2685685F0();
  sub_2685685E0();
  v0[13] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v3 = sub_268568AD0();
  v0[14] = v3;
  v4 = swift_task_alloc();
  v0[15] = v4;
  v4[2] = 0xD000000000000024;
  v4[3] = 0x8000000268573180;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = sub_268568950();
  v7 = sub_268567C50();
  v8 = sub_268522738(&qword_280282BF8, 255, MEMORY[0x277D55F70], MEMORY[0x277D55F30]);
  *v5 = v0;
  v5[1] = sub_2685217DC;
  v9 = v0[11];

  return MEMORY[0x2821C8828](v9, v3, &unk_26856DC70, v4, v6, v7, v8);
}

void sub_2685217DC()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    v4();
  }
}

uint64_t sub_26852193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  sub_268567B10();
  v4[32] = swift_task_alloc();
  v5 = sub_268567F20();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v6 = sub_2685689F0();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v7 = sub_2685688F0();
  v4[40] = v7;
  v4[41] = *(v7 - 8);
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268521AF0, 0, 0);
}

uint64_t sub_268521AF0()
{
  v1 = *(v0 + 248);
  sub_2685688D0();
  type metadata accessor for UnsupportedFlow();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  *(v0 + 344) = v3;
  v4 = sub_268568AD0();
  *(v0 + 352) = v4;
  sub_2685686F0();
  sub_2684D57FC(v1 + 56, v0 + 16);
  v5 = sub_2685686B0();
  *(v0 + 360) = v5;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  sub_2685688E0();
  v6 = swift_task_alloc();
  *(v0 + 368) = v6;
  *v6 = v0;
  v6[1] = sub_268521C6C;
  v7 = *(v0 + 336);
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);

  return MEMORY[0x2821B8050](v3, v8, v9, v4, v5, v0 + 56, v7);
}

uint64_t sub_268521C6C()
{
  OUTLINED_FUNCTION_32();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v3[47] = v5;

  v6 = v2[45];
  v7 = v2[43];
  v8 = v2[42];
  v9 = v2[41];
  v10 = v2[40];
  if (v0)
  {
  }

  (*(v9 + 8))(v8, v10);
  sub_268522FE0((v3 + 7));
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268521E68()
{
  v23 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[36], qword_28028B348);
  v1 = OUTLINED_FUNCTION_9_15();
  v2(v1);

  v3 = sub_2685689E0();
  v4 = sub_268568DC0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[37];
  if (v5)
  {
    v10 = v0[29];
    v9 = v0[30];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2684EABEC(v10, v9, &v22);
    OUTLINED_FUNCTION_14_4(&dword_2684CA000, v13, v14, "UnsupportedFlow execute catId: %s | preparing to read");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v8 + 8))(v6, v7);
  v15 = v0[47];
  sub_268567AE0();
  sub_268567ED0();
  sub_268567D00();
  swift_allocObject();
  v0[48] = sub_268567CF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
  v16 = swift_allocObject();
  v0[49] = v16;
  *(v16 + 16) = xmmword_26856B420;
  *(v16 + 32) = v15;
  v21 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v17 = v15;
  v18 = swift_task_alloc();
  v0[50] = v18;
  *v18 = v0;
  v18[1] = sub_2685220E8;
  v19 = v0[35];

  return v21(v0 + 12, v16, v19);
}

uint64_t sub_2685220E8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_26852220C, 0, 0);
}

uint64_t sub_26852220C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v13 = *(v12 + 376);
  v15 = *(v12 + 272);
  v14 = *(v12 + 280);
  v16 = *(v12 + 264);
  sub_2684D57FC(*(v12 + 248) + 16, v12 + 136);
  sub_2684D57FC(v12 + 96, v12 + 176);
  v17 = swift_allocObject();
  sub_2684D8314((v12 + 176), v17 + 16);
  sub_268567730();
  swift_allocObject();
  v18 = sub_268567720();
  sub_268522780();
  *(v12 + 216) = v18;
  sub_268567C20();

  __swift_destroy_boxed_opaque_existential_0((v12 + 96));
  (*(v15 + 8))(v14, v16);

  OUTLINED_FUNCTION_13_11();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_33();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_268522370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v20[36], qword_28028B348);
  v23 = OUTLINED_FUNCTION_9_15();
  v24(v23);

  v25 = sub_2685689E0();
  v26 = sub_268568DC0();

  v27 = os_log_type_enabled(v25, v26);
  v29 = v20[37];
  v28 = v20[38];
  v30 = v20[36];
  if (v27)
  {
    v32 = v20[29];
    v31 = v20[30];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    a9 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_2684EABEC(v32, v31, &a9);
    OUTLINED_FUNCTION_14_4(&dword_2684CA000, v35, v36, "UnsupportedFlow execute catId: %s | unable to obtain dialog execution result");
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v29 + 8))(v28, v30);
  sub_268523048();
  v37 = swift_allocError();
  *v38 = 0xD000000000000028;
  v38[1] = 0x8000000268573210;
  sub_2685229B4(v37);

  sub_268567C40();
  OUTLINED_FUNCTION_13_11();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_33();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_26852255C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2684D1F44;

  return sub_26852193C(a1, v4, v5, v6);
}

uint64_t sub_268522610(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_268522630, 0, 0);
}

uint64_t sub_268522630()
{
  OUTLINED_FUNCTION_5();
  sub_2684D57FC(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_9_10();

  return v1();
}

uint64_t UnsupportedFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnsupportedFlow();
  sub_268522738(&qword_280283550, v2, type metadata accessor for UnsupportedFlow, &protocol conformance descriptor for UnsupportedFlow);
  return sub_268567900();
}

uint64_t sub_268522738(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268522780()
{
  v1 = sub_2685679B0();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_5();
  v7 = v6 - v5;
  v8 = sub_268567B60();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_5();
  v12 = v11 - v10;
  v14 = (v13 + 104);
  v15 = (v3 + 104);
  if (*(v0 + 96))
  {
    sub_268567990();
    OUTLINED_FUNCTION_5_16();
    (*v14)(v12, *MEMORY[0x277D5BC00], v8);
    (*v15)(v7, *MEMORY[0x277D5B938], v1);
    OUTLINED_FUNCTION_2_15();
    v16 = 1;
    v17 = v12;
    v18 = v7;
    v19 = 1;
  }

  else
  {
    sub_268567990();
    OUTLINED_FUNCTION_5_16();
    (*v14)(v12, *MEMORY[0x277D5BC00], v8);
    (*v15)(v7, *MEMORY[0x277D5B930], v1);
    OUTLINED_FUNCTION_2_15();
    v16 = 0;
    v17 = v12;
    v18 = v7;
    v19 = 8;
  }

  sub_2684EBB74(v16, 9, v17, v18, v19, 0, 0, 0, v21, v22[0]);
  OUTLINED_FUNCTION_10_8();
  sub_2685679A0();

  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_2685229B4(void *a1)
{
  v3 = sub_2685679B0();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_5();
  v9 = v8 - v7;
  v10 = sub_268567B60();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v14 = v13 - v12;
  v16 = (v15 + 104);
  v17 = (v5 + 104);
  if (*(v1 + 96))
  {
    sub_268567990();
    v25 = v27;
    OUTLINED_FUNCTION_5_16();
    (*v16)(v14, *MEMORY[0x277D5BC00], v10);
    (*v17)(v9, *MEMORY[0x277D5B8D0], v3);
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    sub_268568B70();
    OUTLINED_FUNCTION_2_15();
    v21 = 1;
  }

  else
  {
    sub_268567990();
    v25 = v27;
    OUTLINED_FUNCTION_5_16();
    (*v16)(v14, *MEMORY[0x277D5BC00], v10);
    (*v17)(v9, *MEMORY[0x277D5B8D0], v3);
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    sub_268568B70();
    OUTLINED_FUNCTION_2_15();
    v21 = 0;
  }

  sub_2684EBB74(v21, 9, v14, v9, 8, v19, v20, 0, v24, v25);
  OUTLINED_FUNCTION_10_8();
  sub_2685679A0();

  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t UnsupportedFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t UnsupportedFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 97, 7);
}

uint64_t sub_268522CD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684D1820;

  return UnsupportedFlow.execute()(a1);
}

uint64_t sub_268522D6C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnsupportedFlow();

  return sub_268567950();
}

uint64_t UnsupportedIntent.hashValue.getter(char a1)
{
  sub_268569260();
  MEMORY[0x26D61C3F0](a1 & 1);
  return sub_268569280();
}

uint64_t sub_268522E40(uint64_t a1)
{
  v2 = *v1;
  sub_268569260();
  UnsupportedIntent.hash(into:)(v4, v2);
  return sub_268569280();
}

unint64_t sub_268522E88()
{
  result = qword_280283558;
  if (!qword_280283558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283558);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnsupportedIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268522FA8);
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

uint64_t sub_268522FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB0, &unk_26856B440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268523048()
{
  result = qword_280283560;
  if (!qword_280283560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283560);
  }

  return result;
}

uint64_t sub_26852309C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2685230D4()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684D1820;

  return sub_268522610(v3, v0 + 16);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_268523178(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2685231B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_16()
{
  __swift_project_boxed_opaque_existential_1((v1 - 120), v0);

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_13_11()
{
}

void OUTLINED_FUNCTION_14_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_2685232B4()
{
  v1 = v0;
  v2 = type metadata accessor for EmojiFormatter(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268567630();
  v6 = sub_268568B10();

  v7 = CEMCreateEmojiLocaleData();

  v8 = v1[1];
  if (v8)
  {
    v41 = *v1;
    v9 = sub_268568B10();
    Length = CFStringGetLength(v9);
    v10 = swift_allocObject();
    v43 = v7;
    v11 = v10;
    *(v10 + 16) = MEMORY[0x277D84F90];
    v39 = v10 + 16;
    v12 = swift_allocObject();
    v40 = v8;
    *(v12 + 16) = 0;
    v13 = v12 + 16;
    sub_268524350(v1, v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v15 = (v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    sub_2685244D8(v5, v18 + v14);
    *(v18 + v15) = v9;
    *(v18 + v16) = v12;
    *(v18 + v17) = v11;
    aBlock[4] = sub_26852453C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26852409C;
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);
    v20 = v9;
    v38[0] = v12;

    v38[1] = v11;

    v21 = Length;
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
    _Block_release(v19);

    swift_beginAccess();
    if (__OFSUB__(v21, *(v12 + 16)))
    {
      __break(1u);
    }

    else
    {
      v13 = v40;
      v17 = v41;
      v44 = v41;
      v45 = v40;
      if (qword_280282978 == -1)
      {
        goto LABEL_4;
      }
    }

    swift_once();
LABEL_4:
    v22 = sub_268567450();
    __swift_project_value_buffer(v22, qword_28028B3E0);
    sub_2684D166C();
    v44 = sub_268568ED0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    sub_2684F7A60();
    v23 = sub_268568AF0();
    v25 = v24;

    v44 = v23;
    v45 = v25;
    if (qword_280282980 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v22, qword_28028B3F8);
    sub_268568F00();
    v27 = v26;

    if ((v27 & 1) != 0 && !sub_2684D61BC(v17, v13))
    {
      v31 = OUTLINED_FUNCTION_4_18();
      v29 = OUTLINED_FUNCTION_5_17(v31);

      v30 = v39;
      if (v29)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v28 = OUTLINED_FUNCTION_4_18();
      v29 = OUTLINED_FUNCTION_5_17(v28);

      if (v29)
      {
        CFStringTrimWhitespace(v29);
        v30 = v39;
LABEL_14:
        if (CFStringGetLength(v29))
        {
          v32 = sub_268568B20();
          v34 = v33;
          swift_beginAccess();
          sub_268524144(sub_26854BA6C);
          v35 = *(*v30 + 16);
          sub_2685241D0(v35, sub_26854BA6C);
          v36 = *v30;
          *(v36 + 16) = v35 + 1;
          v37 = v36 + 32 * v35;
          *(v37 + 32) = v32;
          *(v37 + 40) = v34;
          *(v37 + 48) = 0;
          *(v37 + 56) = 0;
          *v30 = v36;
          swift_endAccess();
        }

        swift_beginAccess();

        if (v43)
        {
          swift_unknownObjectRelease();
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v7)
  {
    swift_unknownObjectRelease();
  }
}

void sub_2685237C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 56);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = *(v2 - 3);
    v4 = *(v2 - 2);
    v6 = *(v2 - 1);
    v7 = *v2;
    v8 = *(v3 + 16);
    if (!v8)
    {
      v23 = OUTLINED_FUNCTION_1_16();
      sub_2685242AC(v23, v24);
LABEL_25:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_2_16();
        v3 = v26;
      }

      v21 = *(v3 + 16);
      v22 = v21 + 1;
      if (v21 < *(v3 + 24) >> 1)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    if (!*v2 || (v9 = v3 + 32 * v8, (*(v9 + 24) & 1) == 0))
    {

      goto LABEL_25;
    }

    v10 = *(v9 + 8);
    v32 = *(v9 + 16);
    v33 = *v9;
    type metadata accessor for EmojiFormatter(0);
    sub_268567630();

    v11 = OUTLINED_FUNCTION_1_16();
    sub_2685242AC(v11, v12);
    sub_2685242AC(v33, v10);
    v13 = sub_268568B10();

    v14 = CEMCreateEmojiLocaleData();

    v31 = v5;
    v15 = sub_268568B10();
    v30 = CEMEmojiTokenCreateWithString();

    v16 = sub_268568B10();
    sub_2685242B4();
    v17 = CEMEmojiTokenCreateWithString();

    v18 = CEMEmojiTokensAreEquivalent();
    if (v14)
    {
      swift_unknownObjectRelease();
    }

    if (v30)
    {
      swift_unknownObjectRelease();
    }

    if (v17)
    {
      swift_unknownObjectRelease();
    }

    v5 = v31;
    OUTLINED_FUNCTION_1_16();
    sub_2685242B4();
    if (!v18)
    {
      goto LABEL_25;
    }

    if (*(v3 + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268524248(v3);
        v3 = v29;
      }

      v19 = *(v3 + 16);
      if (!v19)
      {
        goto LABEL_34;
      }

      *(v3 + 16) = v19 - 1;
      sub_2685242B4();
    }

    v20 = __OFADD__(v6, v32);
    v6 += v32;
    if (v20)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_16();
      v3 = v28;
    }

    v21 = *(v3 + 16);
    v22 = v21 + 1;
    if (v21 >= *(v3 + 24) >> 1)
    {
      v7 = 1;
LABEL_30:
      sub_26854BA6C();
      v3 = v27;
      goto LABEL_28;
    }

    v7 = 1;
LABEL_28:
    *(v3 + 16) = v22;
    v25 = v3 + 32 * v21;
    *(v25 + 32) = v5;
    *(v25 + 40) = v4;
    *(v25 + 48) = v6;
    *(v25 + 56) = v7;
    v2 += 32;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_268523AA8(uint64_t result)
{
  v39 = MEMORY[0x277D84F90];
  v1 = *(result + 16);
  if (!v1)
  {
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    sub_2684F7A60();
    sub_268568AF0();

    return;
  }

  v33 = 0;
  v2 = 0;
  v3 = result + 56;
  v35 = *(result + 16);
  v32 = result + 56;
  while (2)
  {
    v4 = (v3 + 32 * v2);
    while (1)
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_38;
      }

      v36 = v2 + 1;
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *v4;
      if (v7 != 1)
      {
        break;
      }

      type metadata accessor for EmojiFormatter(0);
      sub_268567630();

      v8 = sub_268568B10();

      v9 = CEMCreateEmojiLocaleData();

      v10 = sub_268568B10();
      v11 = CEMEmojiTokenCreateWithString();

      v12 = CEMEmojiTokenCopyNameWithCount();
      if (v12)
      {
        v13 = v12;
        v34 = sub_268568B20();
        v15 = v14;

        if (!v9)
        {
          goto LABEL_10;
        }

LABEL_9:
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      v34 = 0;
      v15 = 0;
      if (v9)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (v11)
      {
        swift_unknownObjectRelease();
      }

      if (v15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_26856A540;
        if (v33)
        {
          OUTLINED_FUNCTION_3_16();
          MEMORY[0x26D61BDA0](v34, v15);

          v21 = v37;
          v15 = v38;
        }

        else
        {
          v21 = v34;
        }

        *(v20 + 32) = v21;
        *(v20 + 40) = v15;
        sub_268509594(v20);
        OUTLINED_FUNCTION_0_18();
        sub_2685242B4();
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_0_18();
      sub_2685242B4();
      v4 += 32;
      ++v2;
      v1 = v35;
      if (v36 == v35)
      {
        goto LABEL_36;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
    v16 = swift_allocObject();
    v17 = v16;
    *(v16 + 16) = xmmword_26856A540;
    if ((v33 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_3_16();
      v18 = OUTLINED_FUNCTION_0_18();
      sub_2685242AC(v18, v19);
      MEMORY[0x26D61BDA0](v6, v5);
      v17[4] = v37;
      v17[5] = v38;
    }

    else
    {
      *(v16 + 32) = v6;
      *(v16 + 40) = v5;
      v22 = OUTLINED_FUNCTION_0_18();
      sub_2685242AC(v22, v23);
    }

    v24 = v17[2];
    v25 = v39;
    v26 = *(v39 + 16);
    if (!__OFADD__(v26, v24))
    {
      if (swift_isUniquelyReferenced_nonNull_native() && (v27 = *(v39 + 24) >> 1, v27 >= v26 + v24))
      {
        if (v24)
        {
          goto LABEL_26;
        }

LABEL_30:
      }

      else
      {
        sub_26854BB3C();
        v25 = v31;
        v27 = *(v31 + 24) >> 1;
        if (!v24)
        {
          goto LABEL_30;
        }

LABEL_26:
        if (v27 - *(v25 + 16) < v24)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        v28 = *(v25 + 16);
        v29 = __OFADD__(v28, v24);
        v30 = v28 + v24;
        if (v29)
        {
          goto LABEL_41;
        }

        *(v25 + 16) = v30;
      }

      OUTLINED_FUNCTION_0_18();
      sub_2685242B4();
      v39 = v25;
LABEL_34:
      v1 = v35;
      v2 = v36;
      if (v36 == v35)
      {
        goto LABEL_36;
      }

      LOBYTE(v33) = v7 ^ 1;
      BYTE4(v33) = v7;
      v3 = v32;
      continue;
    }

    break;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_268523E68(uint64_t a1, CFIndex a2, CFIndex a3, uint64_t a4, uint64_t a5, const __CFString *a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  v13.location = *(a7 + 16);
  if (__OFSUB__(a2, v13.location))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13.length = a2 - v13.location;
  v14 = CFStringCreateWithSubstring(0, a6, v13);
  MutableCopy = CFStringCreateMutableCopy(0, 0, v14);

  if (MutableCopy)
  {
    CFStringTrimWhitespace(MutableCopy);
    if (CFStringGetLength(MutableCopy))
    {
      v32 = sub_268568B20();
      v17 = v16;
      swift_beginAccess();
      sub_268524144(sub_26854BA6C);
      v18 = a2;
      v19 = a3;
      v20 = *(*(a8 + 16) + 16);
      sub_2685241D0(v20, sub_26854BA6C);
      v21 = *(a8 + 16);
      *(v21 + 16) = v20 + 1;
      v22 = v21 + 32 * v20;
      a3 = v19;
      a2 = v18;
      *(v22 + 32) = v32;
      *(v22 + 40) = v17;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(a8 + 16) = v21;
      swift_endAccess();
    }

    v34.location = a2;
    v34.length = a3;
    v23 = CFStringCreateWithSubstring(0, a6, v34);
    if (v23)
    {
      v24 = v23;
      v33 = a2;
      v25 = a3;
      v26 = sub_268568B20();
      v28 = v27;
      swift_beginAccess();
      sub_268524144(sub_26854BA6C);
      v29 = *(*(a8 + 16) + 16);
      sub_2685241D0(v29, sub_26854BA6C);
      v30 = *(a8 + 16);
      *(v30 + 16) = v29 + 1;
      v31 = v30 + 32 * v29;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      a3 = v25;
      a2 = v33;
      *(v31 + 48) = 1;
      *(v31 + 56) = 1;
      *(a8 + 16) = v30;
      swift_endAccess();
    }

    if (!__OFADD__(a2, a3))
    {
      swift_beginAccess();
      *(a7 + 16) = a2 + a3;
      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_26852409C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t sub_268524144(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2685241D0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_26852421C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_268568D00();
  }

  return result;
}

uint64_t type metadata accessor for EmojiFormatter(uint64_t a1)
{
  result = qword_280283568;
  if (!qword_280283568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268524308()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268524350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiFormatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2685243B4()
{
  v1 = (type metadata accessor for EmojiFormatter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_268567690();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2685244D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiFormatter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26852453C(uint64_t a1, CFIndex a2, CFIndex a3, uint64_t a4)
{
  v9 = *(type metadata accessor for EmojiFormatter(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v11);
  v14 = *(v4 + v12);
  v15 = *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_268523E68(a1, a2, a3, a4, v4 + v10, v13, v14, v15);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_268524650(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268524690(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_268524708(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_268567690();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2685247B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_268567690();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_268524830(uint64_t a1)
{
  sub_268503918();
  if (v1 <= 0x3F)
  {
    sub_268567690();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void OUTLINED_FUNCTION_2_16()
{

  sub_26854BA6C();
}

CFStringRef OUTLINED_FUNCTION_4_18()
{
  v4.location = v2;
  v4.length = v0;

  return CFStringCreateWithSubstring(0, v1, v4);
}

CFMutableStringRef OUTLINED_FUNCTION_5_17(CFStringRef theString)
{

  return CFStringCreateMutableCopy(0, 0, theString);
}

uint64_t sub_268524950(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_2685688F0();
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_5_5();
  sub_2684CC878(a1, v7 + 16);
  *(v7 + 152) = a2;
  *(v7 + 160) = a3;
  *(v7 + 168) = a5;
  *(v7 + 176) = a6;
  *(v7 + 161) = a4;
  type metadata accessor for ReadNotificationsCATs(0);

  sub_2685688E0();
  sub_2685686F0();
  sub_2685685F0();
  v15 = sub_2685685D0();
  sub_268516318(a1 + 40, v15);

  v16 = sub_268568710();

  sub_2684CC8D4(a1);
  *(v7 + 144) = v16;
  return v7;
}

uint64_t sub_268524A80()
{
  v0 = sub_2685261E4();
  if (v0 == 5)
  {

    return sub_268567B90();
  }

  else if (v0 == 1)
  {

    return sub_268567B70();
  }

  else
  {

    return sub_268567B80();
  }
}

uint64_t sub_268524B0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_7();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268524B34()
{
  OUTLINED_FUNCTION_5();
  v1 = sub_2685261E4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_268524B94()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_2685679B0();
  v1[9] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_39();
  v5 = sub_268567B60();
  v1[12] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_39();
  sub_268567B10();
  v1[15] = OUTLINED_FUNCTION_39();
  v7 = sub_268567F20();
  v1[16] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_39();
  v9 = sub_2685689F0();
  v1[19] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[20] = v10;
  v1[21] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268524D40()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNPromptForFollowupStrategy: In makePromptForValue", v7, 2u);
    OUTLINED_FUNCTION_2();
  }

  v8 = v0[8];

  v9 = OUTLINED_FUNCTION_34();
  v10(v9);
  v11 = v0[8];
  if (*(v8 + 160))
  {
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = *(v11 + 152);
  }

  v13 = v0[14];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[11];
  v29 = v0[12];
  v30 = v0[9];
  sub_268567AF0();
  *(swift_task_alloc() + 16) = v12;
  sub_268567ED0();

  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_268567A20();
  (*(v14 + 104))(v13, *MEMORY[0x277D5BB40], v29);
  (*(v15 + 104))(v16, *MEMORY[0x277D5B950], v30);
  sub_268526B14();
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v31 = (*(v11 + 168) + **(v11 + 168));
  v25 = swift_task_alloc();
  v0[22] = v25;
  *v25 = v0;
  v25[1] = sub_268525060;

  return v31();
}

uint64_t sub_268525060()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  if (v0)
  {
    v5 = sub_26852541C;
  }

  else
  {
    v5 = sub_268525168;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_268525168()
{
  OUTLINED_FUNCTION_5();
  sub_268567D00();
  swift_allocObject();
  v0[25] = sub_268567CF0();
  v6 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_268525238;
  v2 = v0[23];
  v3 = v0[18];
  v4 = v0[7];

  return v6(v4, v2, v3);
}

uint64_t sub_268525238()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  if (v0)
  {
    v7 = sub_2685254BC;
  }

  else
  {
    v7 = sub_268525354;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268525354()
{
  v1 = OUTLINED_FUNCTION_34();
  v2(v1);

  OUTLINED_FUNCTION_9_1();

  return v3();
}

uint64_t sub_26852541C()
{
  v0 = OUTLINED_FUNCTION_14_5();
  v1(v0);

  OUTLINED_FUNCTION_9_1();

  return v2();
}

uint64_t sub_2685254BC()
{
  v1 = OUTLINED_FUNCTION_14_5();
  v2(v1);

  OUTLINED_FUNCTION_9_1();

  return v3();
}

uint64_t sub_268525564(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_268567F10();
  sub_268516DA4(0, 0xE000000000000000, a2, v5);
  v6 = sub_268567CE0();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_268567EF0();
}

uint64_t sub_268525620()
{
  OUTLINED_FUNCTION_5();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_2685689F0();
  v1[20] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[21] = v4;
  v1[22] = OUTLINED_FUNCTION_39();
  v5 = sub_2685679B0();
  v1[23] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[24] = v6;
  v1[25] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B60();
  v1[26] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[27] = v8;
  v1[28] = OUTLINED_FUNCTION_39();
  v9 = sub_268567D90();
  v1[29] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[30] = v10;
  v1[31] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2685257A8()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_268525840;

  return sub_26850D6EC();
}

uint64_t sub_268525840()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 264) = v0;

  if (v0)
  {
    v7 = sub_268525B48;
  }

  else
  {
    v7 = sub_268525940;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268525E10()
{
  OUTLINED_FUNCTION_5();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2685679B0();
  v1[10] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_39();
  v5 = sub_268567B60();
  v1[13] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[14] = v6;
  v1[15] = OUTLINED_FUNCTION_39();
  v7 = sub_2685689F0();
  v1[16] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2685261E4()
{
  sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v118 = v0;
  v119 = v1;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_5();
  v112 = (v2 - v3);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v4);
  v114 = &v108 - v5;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  v117 = &v108 - v7;
  sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v120 = v8;
  v121 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_5();
  v116 = v10 - v11;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  v115 = &v108 - v13;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  v16 = &v108 - v15;
  v113 = type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v108 - v22;
  v24 = sub_268568560();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_5();
  v30 = (v29 - v28);
  sub_268568080();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_5();
  v34 = v33 - v32;
  sub_268568030();
  v35 = OUTLINED_FUNCTION_27_5();
  v37 = v36(v35);
  if (v37 == *MEMORY[0x277D5C128])
  {
    v38 = OUTLINED_FUNCTION_27_5();
    v39(v38);
    (*(v26 + 32))(v30, v34, v24);
    v118 = v26;
    v119 = v24;
    (*(v26 + 16))(v23, v30, v24);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v40 = v120;
    v41 = __swift_project_value_buffer(v120, qword_28028B348);
    v42 = v121;
    (*(v121 + 16))(v16, v41, v40);
    sub_2684EB87C(v23, v20);
    v43 = sub_2685689E0();
    v44 = sub_268568DD0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_4();
      v117 = v30;
      v46 = v42;
      v47 = v45;
      v48 = OUTLINED_FUNCTION_51();
      v123 = v48;
      *v47 = 136315138;
      sub_2684FB88C();
      v49 = sub_268568310();
      v51 = v50;
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v20, v52);
      v53 = sub_2684EABEC(v49, v51, &v123);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_2684CA000, v43, v44, "RNPromptForFollowupStrategy#parseInput nlv3 parsed intent: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v46 + 8))(v16, v120);
    }

    else
    {

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v20, v75);
      (*(v42 + 8))(v16, v40);
    }

    if (sub_26852BA90() || (sub_26852B6A4() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v23, v76);
      v77 = OUTLINED_FUNCTION_7_19();
      v78(v77);
      return 0;
    }

    else if (sub_26852BAB4() & 1) != 0 || (sub_26852B998())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v23, v93);
      v94 = OUTLINED_FUNCTION_7_19();
      v95(v94);
      return 2;
    }

    else if (sub_26852B5A8())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v23, v98);
      v99 = OUTLINED_FUNCTION_7_19();
      v100(v99);
      return 3;
    }

    else if (sub_26852B7A4())
    {
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v23, v101);
      v102 = OUTLINED_FUNCTION_7_19();
      v103(v102);
      return 4;
    }

    else
    {
      v104 = sub_26852B8AC();
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v23, v105);
      v106 = OUTLINED_FUNCTION_7_19();
      v107(v106);
      if (v104)
      {
        return 1;
      }

      else
      {
        return 5;
      }
    }
  }

  else if (v37 == *MEMORY[0x277D5C160])
  {
    v54 = OUTLINED_FUNCTION_27_5();
    v55(v54);
    v57 = v118;
    v56 = v119;
    v58 = v117;
    (*(v119 + 32))(v117, v34, v118);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v59 = v120;
    v60 = __swift_project_value_buffer(v120, qword_28028B348);
    v61 = *(v121 + 16);
    v62 = v115;
    v113 = v60;
    v110 = v61;
    v111 = v121 + 16;
    (v61)(v115);
    v63 = *(v56 + 16);
    v64 = v114;
    v63(v114, v58, v57);
    v65 = sub_2685689E0();
    v109 = sub_268568DD0();
    if (os_log_type_enabled(v65, v109))
    {
      v66 = OUTLINED_FUNCTION_4();
      v108 = OUTLINED_FUNCTION_51();
      v123 = v108;
      *v66 = 136315138;
      v63(v112, v64, v57);
      v67 = sub_268568B70();
      v69 = v68;
      v70 = OUTLINED_FUNCTION_26_5(v119);
      v71(v70);
      v72 = v62;
      v73 = sub_2684EABEC(v67, v69, &v123);

      *(v66 + 4) = v73;
      _os_log_impl(&dword_2684CA000, v65, v109, "RNPromptForFollowupStrategy#parseInput uso parse: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v108);
      v58 = v117;
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      v74 = *(v121 + 8);
      v74(v72, v59);
    }

    else
    {

      v82 = OUTLINED_FUNCTION_26_5(v56);
      v83(v82);
      v74 = *(v121 + 8);
      v74(v62, v59);
    }

    v79 = sub_268526E64(v58);
    v110(v116, v113, v59);
    v84 = sub_2685689E0();
    v85 = sub_268568DD0();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = OUTLINED_FUNCTION_4();
      v87 = OUTLINED_FUNCTION_51();
      v123 = v87;
      *v86 = 136315138;
      v122 = v79;
      v88 = sub_268568B70();
      v90 = sub_2684EABEC(v88, v89, &v123);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_2684CA000, v84, v85, "RNPromptForFollowupStrategy#parseInput response %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      v91 = OUTLINED_FUNCTION_24_7();
      (v74)(v91);
      v92 = v117;
    }

    else
    {

      v96 = OUTLINED_FUNCTION_24_7();
      (v74)(v96);
      v92 = v58;
    }

    (v114)(v92, v118);
  }

  else
  {
    v80 = OUTLINED_FUNCTION_27_5();
    v81(v80);
    return 5;
  }

  return v79;
}

void sub_268526B14()
{
  v1 = *(v0 + 152);
  v22 = MEMORY[0x277D84F90];
  v2 = sub_2684DEAF0(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  while (v2 != v3)
  {
    if (v4)
    {
      v5 = MEMORY[0x26D61C170](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    sub_2684E1104(v5, &selRef_summary);
    if (v7)
    {

      sub_268569020();
      OUTLINED_FUNCTION_23_6();
      sub_268569050();
      OUTLINED_FUNCTION_23_6();
      sub_268569060();
      sub_268569030();
    }

    else
    {
    }

    ++v3;
  }

  v8 = sub_2684DEAF0(v22);

  if (v8 <= 0)
  {
    v23 = MEMORY[0x277D84F90];
    v9 = sub_2684DEAF0(v1);
    for (i = 0; v9 != i; ++i)
    {
      if (v4)
      {
        v11 = MEMORY[0x26D61C170](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v11 = *(v1 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        goto LABEL_43;
      }

      sub_2684E1104(v11, &selRef_threadSummary);
      if (v13)
      {

        sub_268569020();
        OUTLINED_FUNCTION_23_6();
        sub_268569050();
        OUTLINED_FUNCTION_23_6();
        sub_268569060();
        sub_268569030();
      }

      else
      {
      }
    }

    sub_2684DEAF0(v23);
  }

  v24 = MEMORY[0x277D84F90];
  v14 = sub_2684DEAF0(v1);
  for (j = 0; v14 != j; ++j)
  {
    if (v4)
    {
      v16 = MEMORY[0x26D61C170](j, v1);
    }

    else
    {
      if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v16 = *(v1 + 8 * j + 32);
    }

    v17 = v16;
    if (__OFADD__(j, 1))
    {
      goto LABEL_41;
    }

    v18 = [v16 isHighlight];
    if (!v18)
    {
      goto LABEL_35;
    }

    v19 = [v17 isHighlight];
    if (!v19)
    {
      goto LABEL_45;
    }

    v20 = v19;
    v21 = [v19 integerValue];

    if (v21 > 0)
    {
      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    else
    {
LABEL_35:
    }
  }

  sub_2684DEAF0(v24);
}

uint64_t sub_268526E64(uint64_t a1)
{
  v2 = sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 - v6;
  v31 = type metadata accessor for NotificationNLv4Intent(0);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_5();
  v12 = v11 - v10;
  v13 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_5();
  v19 = v18 - v17;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v20 = __swift_project_value_buffer(v13, qword_28028B348);
  (*(v15 + 16))(v19, v20, v13);
  v21 = sub_2685689E0();
  v22 = sub_268568DC0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2684CA000, v21, v22, "RNPromptForFollowupStrategy: in getPromptResponse", v23, 2u);
    OUTLINED_FUNCTION_2();
  }

  (*(v15 + 8))(v19, v13);
  v24 = *(v4 + 16);
  v24(v8, a1, v2);
  v24(v12, v8, v2);
  sub_268568550();
  v25 = sub_26850CCFC();
  (*(v4 + 8))(v8, v2);
  *(v12 + *(v31 + 20)) = v25;
  sub_2685683B0();
  if (v33)
  {
    sub_268568430();
    if (swift_dynamicCast())
    {

LABEL_10:
      OUTLINED_FUNCTION_2_9();
      return 0;
    }
  }

  else
  {
    sub_2684EB7C8(v32, &qword_280282BE0, &unk_26856D8C0);
  }

  if (sub_268565808())
  {
    goto LABEL_10;
  }

  if (sub_26856596C() & 1) != 0 || (sub_268565954())
  {
    OUTLINED_FUNCTION_2_9();
    return 2;
  }

  if (sub_26856563C())
  {
    goto LABEL_25;
  }

  if (!v25)
  {
    goto LABEL_21;
  }

  if (sub_268568540() == 1684104562 && v27 == 0xE400000000000000)
  {

    goto LABEL_25;
  }

  v29 = sub_2685691C0();

  if (v29)
  {
LABEL_25:
    OUTLINED_FUNCTION_2_9();
    return 3;
  }

LABEL_21:
  v30 = sub_268565820();
  OUTLINED_FUNCTION_2_9();
  if (v30)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_268527234()
{
  sub_2684CC8D4(v0 + 16);

  return v0;
}

uint64_t sub_26852726C()
{
  sub_268527234();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_2685272C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_268527360;

  return sub_268524B0C(a2);
}

uint64_t sub_268527360(char a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_9_8();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_268527460()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB458;

  return sub_268524B94();
}

uint64_t sub_2685274F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_268525620();
}

uint64_t sub_268527590()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB458;

  return sub_268525E10();
}

uint64_t OUTLINED_FUNCTION_26_5@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 160) = *(a1 + 8);
  return result;
}

uint64_t sub_2685276DC(void *__src, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 169) = 0;
  memcpy((v5 + 32), __src, 0x80uLL);
  *(v5 + 160) = a2;
  *(v5 + 168) = a3;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return v5;
}

uint64_t sub_26852773C()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_2685679B0();
  v1[9] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_39();
  v5 = sub_268567B60();
  v1[12] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B10();
  OUTLINED_FUNCTION_10(v7);
  v1[15] = OUTLINED_FUNCTION_39();
  v8 = sub_268567F20();
  v1[16] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[17] = v9;
  v1[18] = OUTLINED_FUNCTION_39();
  v10 = sub_2685689F0();
  v1[19] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[20] = v11;
  v1[21] = OUTLINED_FUNCTION_39();
  v12 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2685278E4()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v0[19], qword_28028B348);
  v1 = OUTLINED_FUNCTION_31_6();
  v2(v1);
  v3 = sub_2685689E0();
  v4 = sub_268568DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2684CA000, v3, v4, "RNYesNoPromptStrategy: In makePromptForYesNoResponse", v5, 2u);
    OUTLINED_FUNCTION_2();
  }

  v6 = v0[8];

  v7 = OUTLINED_FUNCTION_34();
  v8(v7);
  v9 = *(v6 + 168);
  v10 = v0[8];
  if (v9)
  {
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = *(v10 + 160);
  }

  sub_268567AF0();
  *(swift_task_alloc() + 16) = v11;
  sub_268567ED0();

  v14 = (*(v10 + 16) + **(v10 + 16));
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_268527B24;

  return v14();
}

uint64_t sub_268527B24()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  if (v0)
  {
    v5 = sub_26852541C;
  }

  else
  {
    v5 = sub_268527C30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_268527C30(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[9];
  v4 = v1[10];
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_268567A20();
  v5 = OUTLINED_FUNCTION_31_6();
  v6(v5);
  (*(v4 + 104))(v2, *MEMORY[0x277D5B950], v3);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_17();
  sub_2684EBB74(v7, v8, v9, v10, v11, v12, v13, v14, v20, v21);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  sub_268567D00();
  swift_allocObject();
  v1[25] = sub_268567CF0();
  v22 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v15 = swift_task_alloc();
  v1[26] = v15;
  *v15 = v1;
  v15[1] = sub_268527DDC;
  v16 = v1[23];
  v17 = v1[18];
  v18 = v1[7];

  return v22(v18, v16, v17);
}

uint64_t sub_268527DDC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v5 = v4;
  *(v6 + 216) = v0;

  if (v0)
  {
    v7 = sub_2685254BC;
  }

  else
  {
    v7 = sub_268525354;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268527F00(uint64_t a1, unint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_268567F10();
  sub_268516DA4(0, 0xE000000000000000, a2, v5);
  v6 = sub_268567CE0();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_268567EF0();
}

uint64_t sub_268527FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v114 = sub_268568040();
  OUTLINED_FUNCTION_1();
  v111 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_5();
  v110 = v6 - v5;
  OUTLINED_FUNCTION_19_1();
  v119 = sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v112 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_5();
  v106 = v9 - v10;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  v109 = &v106 - v12;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v13);
  v118 = &v106 - v14;
  OUTLINED_FUNCTION_19_1();
  v122 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v120 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_5();
  v116 = v17 - v18;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v19);
  v115 = &v106 - v20;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v21);
  v117 = &v106 - v22;
  v23 = OUTLINED_FUNCTION_19_1();
  v108 = type metadata accessor for NotificationNLv3Intent(v23);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_5();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v106 - v29;
  v31 = sub_268568560();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_5();
  v37 = v36 - v35;
  sub_268568080();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_5();
  MEMORY[0x28223BE20](v39);
  v41 = &v106 - v40;
  v107 = a1;
  sub_268568030();
  v42 = OUTLINED_FUNCTION_42_2();
  v44 = v43(v42);
  if (v44 == *MEMORY[0x277D5C128])
  {
    v45 = OUTLINED_FUNCTION_42_2();
    v46(v45);
    (*(v33 + 32))(v37, v41, v31);
    v118 = v33;
    v119 = v31;
    v47 = *(v33 + 16);
    v116 = v37;
    v47(v30, v37, v31);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v48 = v122;
    OUTLINED_FUNCTION_38(v122, qword_28028B348);
    v49 = v120;
    v50 = v117;
    (*(v120 + 16))(v117);
    OUTLINED_FUNCTION_12_12();
    sub_26852B1E4(v30, v27, v51);
    v52 = sub_2685689E0();
    v53 = sub_268568DD0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v49;
      v55 = OUTLINED_FUNCTION_4();
      v56 = OUTLINED_FUNCTION_51();
      v123 = v56;
      *v55 = 136315138;
      OUTLINED_FUNCTION_10_9();
      sub_26852B19C(v57, 255, v58, &unk_26856E8A8);
      v59 = sub_268568310();
      v61 = v60;
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v27, v62);
      v63 = sub_2684EABEC(v59, v61, &v123);

      *(v55 + 4) = v63;
      _os_log_impl(&dword_2684CA000, v52, v53, "RNYesNoPromptStrategy actionForInput | nlv3 parsed intent: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v54 + 8))(v50, v122);
    }

    else
    {

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v27, v83);
      (*(v49 + 8))(v50, v48);
    }

    v84 = sub_26852BA90();
    v86 = v118;
    v85 = v119;
    v87 = v116;
    if (v84 || (sub_26852B6A4() & 1) != 0 || (sub_26852BAB4() & 1) != 0 || (sub_26852B998() & 1) != 0)
    {
      sub_268567B80();
    }

    else if (sub_26852B8AC() & 1) != 0 || (sub_26852B5A8())
    {
      *(v113 + 169) = sub_26852B5A8() & 1;
      sub_268567B70();
    }

    else
    {
      sub_268567B90();
    }

    OUTLINED_FUNCTION_0_5();
    sub_2684EB8E0(v30, v88);
    return (*(v86 + 8))(v87, v85);
  }

  else if (v44 == *MEMORY[0x277D5C160])
  {
    v64 = OUTLINED_FUNCTION_42_2();
    v65(v64);
    v66 = v112;
    v67 = v119;
    (*(v112 + 32))(v118, v41, v119);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v68 = v122;
    OUTLINED_FUNCTION_38(v122, qword_28028B348);
    v69 = v120;
    v70 = v115;
    (*(v120 + 16))(v115);
    v71 = *(v66 + 16);
    v72 = v109;
    OUTLINED_FUNCTION_40_2();
    v71();
    v73 = v70;
    v74 = sub_2685689E0();
    sub_268568DD0();
    OUTLINED_FUNCTION_37_3();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = OUTLINED_FUNCTION_4();
      v77 = OUTLINED_FUNCTION_51();
      v123 = v77;
      *v76 = 136315138;
      (v71)(v106, v72, v119);
      v78 = sub_268568B70();
      v80 = v79;
      v81 = OUTLINED_FUNCTION_43_0();
      (v72)(v81, v119);
      v82 = sub_2684EABEC(v78, v80, &v123);

      *(v76 + 4) = v82;
      _os_log_impl(&dword_2684CA000, v74, v73, "RNYesNoPromptStrategy actionForInput | uso parse: %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v69 + 8))(v115, v122);
    }

    else
    {

      v102 = OUTLINED_FUNCTION_43_0();
      (v72)(v102, v67);
      (*(v69 + 8))(v70, v68);
    }

    sub_26852899C(v118, v121);
    v103 = OUTLINED_FUNCTION_34();
    return v72(v103);
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    OUTLINED_FUNCTION_38(v122, qword_28028B348);
    v90 = v120;
    v91 = v116;
    (*(v120 + 16))(v116);
    v92 = v110;
    v93 = v111;
    v94 = v114;
    (*(v111 + 16))(v110, v107, v114);
    v95 = sub_2685689E0();
    sub_268568DE0();
    OUTLINED_FUNCTION_37_3();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = OUTLINED_FUNCTION_4();
      v119 = OUTLINED_FUNCTION_51();
      v123 = v119;
      *v97 = 136315138;
      LODWORD(v118) = v91;
      sub_268568030();
      v98 = sub_268568B70();
      v100 = v99;
      (*(v93 + 8))(v92, v114);
      v101 = sub_2684EABEC(v98, v100, &v123);

      *(v97 + 4) = v101;
      _os_log_impl(&dword_2684CA000, v95, v118, "Unexpected parse type: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v119);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();
    }

    else
    {

      (*(v93 + 8))(v92, v94);
    }

    (*(v90 + 8))(v116, v122);
    sub_268567B90();
    v104 = OUTLINED_FUNCTION_42_2();
    return v105(v104);
  }
}

uint64_t sub_26852899C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v7 = v6 - v5;
  v8 = sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v14 = v13 - v12;
  v15 = type metadata accessor for NotificationNLv4Intent(0);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_5();
  v52 = v17 - v18;
  OUTLINED_FUNCTION_17();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  v25 = *(v10 + 16);
  (v25)(v14, a1, v8);
  OUTLINED_FUNCTION_40_2();
  v25();
  sub_268568550();
  v26 = sub_26850CCFC();
  v27 = OUTLINED_FUNCTION_34();
  v28(v27);
  v53 = v15;
  *&v24[*(v15 + 20)] = v26;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v29 = v54;
  OUTLINED_FUNCTION_38(v54, qword_28028B348);
  v30 = v55;
  (*(v55 + 16))(v7);
  OUTLINED_FUNCTION_11_10();
  sub_26852B1E4(v24, v22, v31);
  v32 = sub_2685689E0();
  v33 = sub_268568DD0();
  v34 = v22;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = OUTLINED_FUNCTION_4();
    v49 = v7;
    v36 = v35;
    v37 = OUTLINED_FUNCTION_51();
    v50 = v26;
    v38 = v37;
    v57[0] = v37;
    *v36 = 136315138;
    OUTLINED_FUNCTION_11_10();
    sub_26852B1E4(v22, v52, v39);
    v40 = sub_268568B70();
    v42 = v41;
    OUTLINED_FUNCTION_2_18();
    sub_2684EB8E0(v34, v43);
    v44 = sub_2684EABEC(v40, v42, v57);

    *(v36 + 4) = v44;
    _os_log_impl(&dword_2684CA000, v32, v33, "RNYesNoPromptStrategy actionFor | nlv4 parsed intent: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v30 + 8))(v49, v29);
  }

  else
  {

    OUTLINED_FUNCTION_2_18();
    sub_2684EB8E0(v22, v45);
    (*(v30 + 8))(v7, v29);
  }

  sub_2685683B0();
  if (v57[3])
  {
    sub_268568430();
    if (swift_dynamicCast())
    {

LABEL_13:
      sub_268567B80();
      goto LABEL_14;
    }
  }

  else
  {
    sub_2684EB7C8(v57, &qword_280282BE0, &unk_26856D8C0);
  }

  if (sub_268565808() & 1) != 0 || (sub_26856596C() & 1) != 0 || (sub_268565954())
  {
    goto LABEL_13;
  }

  if (sub_268565820() & 1) != 0 || (sub_26856563C())
  {
    *(v51 + 169) = sub_26856563C() & 1;
    sub_268567B70();
  }

  else
  {
    sub_268567B90();
  }

LABEL_14:
  OUTLINED_FUNCTION_2_18();
  return sub_2684EB8E0(v24, v46);
}

uint64_t sub_268528DF8()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2685680B0();
  v1[5] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_50();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = sub_268568040();
  v1[10] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_50();
  v1[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830C8, &qword_26856C590);
  OUTLINED_FUNCTION_10(v8);
  v1[14] = OUTLINED_FUNCTION_39();
  v9 = sub_2685689F0();
  v1[15] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_50();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v11 = type metadata accessor for NotificationNLv3Intent(0);
  v1[21] = v11;
  OUTLINED_FUNCTION_10(v11);
  v1[22] = OUTLINED_FUNCTION_50();
  v1[23] = swift_task_alloc();
  v12 = sub_268568560();
  v1[24] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[25] = v13;
  v1[26] = OUTLINED_FUNCTION_39();
  v14 = sub_268568080();
  v1[27] = v14;
  OUTLINED_FUNCTION_2_4(v14);
  v1[28] = v15;
  v1[29] = OUTLINED_FUNCTION_50();
  v1[30] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_268529080(uint64_t a1)
{
  v144 = v1;
  v2 = v1 + 30;
  v3 = v1 + 27;
  sub_268568030();
  v4 = OUTLINED_FUNCTION_34();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D5C128])
  {
    v2 = v1 + 26;
    v7 = v1[26];
    v8 = v1[25];
    v3 = v1 + 24;
    v9 = v1[24];
    v10 = v1[23];
    (*(v1[28] + 96))(v1[30], v1[27]);
    OUTLINED_FUNCTION_40_2();
    v11();
    (*(v8 + 16))(v10, v7, v9);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v13 = v1[22];
    v12 = v1[23];
    v14 = v1[20];
    v15 = v1[16];
    OUTLINED_FUNCTION_38(v1[15], qword_28028B348);
    log = v16;
    v133 = *(v15 + 16);
    v133(v14);
    OUTLINED_FUNCTION_12_12();
    sub_26852B1E4(v12, v13, v17);
    v18 = sub_2685689E0();
    v19 = sub_268568DD0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[22];
    if (v20)
    {
      v22 = v1[16];
      v126 = v1[15];
      v129 = v1[20];
      v23 = OUTLINED_FUNCTION_4();
      v24 = OUTLINED_FUNCTION_51();
      v143 = v24;
      *v23 = 136315138;
      OUTLINED_FUNCTION_10_9();
      sub_26852B19C(v25, 255, v26, &unk_26856E8A8);
      v27 = sub_268568310();
      v29 = v28;
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v21, v30);
      v31 = v27;
      v3 = v1 + 24;
      v32 = sub_2684EABEC(v31, v29, &v143);

      *(v23 + 4) = v32;
      _os_log_impl(&dword_2684CA000, v18, v19, "RNYesNoPromptStrategy parseConfirmationResponse | nlv3 parsed intent: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      v33 = *(v22 + 8);
      v33(v129, v126);
    }

    else
    {
      v29 = v1[20];
      v58 = v1[16];

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v21, v59);
      v33 = *(v58 + 8);
      v60 = OUTLINED_FUNCTION_26_6();
      v33(v60, v61);
    }

    v62 = v1[23];
    if (sub_26852BA90() || (v62 = v1[23], (sub_26852B6A4() & 1) != 0))
    {
      v63 = v1[25];
      OUTLINED_FUNCTION_21_5();
      v64 = MEMORY[0x277D5BED8];
    }

    else
    {
      v62 = v1[23];
      if ((sub_26852BAB4() & 1) == 0)
      {
        v62 = v1[23];
        if ((sub_26852B998() & 1) == 0)
        {
          v62 = v1[23];
          if ((sub_26852B8AC() & 1) == 0)
          {
            v62 = v1[23];
            if ((sub_26852B5A8() & 1) == 0)
            {
              v142 = v3;
              (v133)(v1[19], log, v1[15]);
              v102 = OUTLINED_FUNCTION_26_6();
              v103(v102);
              v104 = sub_2685689E0();
              v105 = sub_268568DE0();
              if (os_log_type_enabled(v104, v105))
              {
                logc = v1[15];
                v141 = v1[19];
                v128 = v1[10];
                v106 = OUTLINED_FUNCTION_4();
                v132 = OUTLINED_FUNCTION_51();
                v143 = v132;
                *v106 = 136315138;
                sub_268568030();
                OUTLINED_FUNCTION_41_1();
                sub_268568B70();
                v107 = OUTLINED_FUNCTION_35_2();
                v108(v107, v128);
                v109 = OUTLINED_FUNCTION_41_1();
                v112 = sub_2684EABEC(v109, v110, v111);

                *(v106 + 4) = v112;
                OUTLINED_FUNCTION_46_1(&dword_2684CA000, v113, v114, "Unable to handle parse: %s");
                v115 = v132;
                __swift_destroy_boxed_opaque_existential_0(v132);
                OUTLINED_FUNCTION_2();
                OUTLINED_FUNCTION_2();

                v116 = logc;
                v117 = v141;
              }

              else
              {
                v115 = v1[19];
                v118 = v1[15];
                v119 = v1[13];
                v120 = v1[10];
                v121 = v1[11];

                (*(v121 + 8))(v119, v120);
                v117 = v115;
                v116 = v118;
              }

              v33(v117, v116);
              v122 = v1[25];
              OUTLINED_FUNCTION_21_5();
              v123 = sub_268567E60();
              __swift_storeEnumTagSinglePayload(v104, 1, 1, v123);
              sub_268568020();
              OUTLINED_FUNCTION_0_5();
              sub_2684EB8E0(v115, v124);
              v85 = *(v122 + 8);
              v3 = v142;
              goto LABEL_30;
            }
          }
        }
      }

      v63 = v1[25];
      OUTLINED_FUNCTION_21_5();
      v64 = MEMORY[0x277D5BED0];
    }

    v86 = *v64;
    v87 = sub_268567E60();
    OUTLINED_FUNCTION_17_2();
    (*(v88 + 104))(v29, v86, v87);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v87);
    sub_268568020();
    OUTLINED_FUNCTION_0_5();
    sub_2684EB8E0(v62, v89);
    v90 = v63;
    goto LABEL_29;
  }

  if (v6 != *MEMORY[0x277D5C160])
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v66 = v1[11];
    v65 = v1[12];
    v67 = v1[10];
    v68 = v1[3];
    OUTLINED_FUNCTION_38(v1[15], qword_28028B348);
    v69 = OUTLINED_FUNCTION_31_6();
    v70(v69);
    (*(v66 + 16))(v65, v68, v67);
    v71 = sub_2685689E0();
    v72 = sub_268568DE0();
    if (os_log_type_enabled(v71, v72))
    {
      logb = v1[15];
      v140 = v1[17];
      v131 = v1[10];
      v135 = v1[16];
      v73 = OUTLINED_FUNCTION_4();
      v74 = OUTLINED_FUNCTION_51();
      v143 = v74;
      *v73 = 136315138;
      sub_268568030();
      OUTLINED_FUNCTION_41_1();
      sub_268568B70();
      v75 = OUTLINED_FUNCTION_35_2();
      v76(v75, v131);
      v77 = OUTLINED_FUNCTION_41_1();
      v80 = sub_2684EABEC(v77, v78, v79);
      v3 = v1 + 27;

      *(v73 + 4) = v80;
      OUTLINED_FUNCTION_46_1(&dword_2684CA000, v81, v82, "Unexpected parse type: %s");
      __swift_destroy_boxed_opaque_existential_0(v74);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v135 + 8))(v140, logb);
    }

    else
    {
      v92 = v1[16];
      v91 = v1[17];
      v93 = v1[15];
      v95 = v1[11];
      v94 = v1[12];
      v96 = v1[10];

      (*(v95 + 8))(v94, v96);
      (*(v92 + 8))(v91, v93);
    }

    v97 = v1[28];
    v98 = v1[14];
    v99 = sub_268567E60();
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v99);
    sub_268568020();
    v90 = v97;
LABEL_29:
    v85 = *(v90 + 8);
    goto LABEL_30;
  }

  v2 = v1 + 9;
  v3 = v1 + 5;
  (*(v1[28] + 96))(v1[30], v1[27]);
  OUTLINED_FUNCTION_40_2();
  v34();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v36 = v1[8];
  v35 = v1[9];
  v37 = v1[5];
  v38 = v1[6];
  OUTLINED_FUNCTION_38(v1[15], qword_28028B348);
  v39 = OUTLINED_FUNCTION_31_6();
  v40(v39);
  v41 = *(v38 + 16);
  v41(v36, v35, v37);
  v42 = sub_2685689E0();
  v134 = sub_268568DD0();
  loga = v42;
  v43 = os_log_type_enabled(v42, v134);
  v44 = v1[18];
  v46 = v1[15];
  v45 = v1[16];
  v47 = v1[8];
  if (v43)
  {
    v130 = v1[18];
    v49 = v1[6];
    v48 = v1[7];
    v50 = v1[5];
    v127 = v1[15];
    v51 = OUTLINED_FUNCTION_4();
    v125 = OUTLINED_FUNCTION_51();
    v143 = v125;
    *v51 = 136315138;
    v41(v48, v47, v50);
    v52 = sub_268568B70();
    v54 = v53;
    v55 = v50;
    v3 = v1 + 5;
    v56 = *(v49 + 8);
    v56(v47, v55);
    v57 = sub_2684EABEC(v52, v54, &v143);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_2684CA000, loga, v134, "RNYesNoPromptStrategy parseConfirmationResponse | uso parse: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v125);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v45 + 8))(v130, v127);
  }

  else
  {
    v84 = v1[5];
    v83 = v1[6];

    v56 = *(v83 + 8);
    v56(v47, v84);
    (*(v45 + 8))(v44, v46);
  }

  sub_268529AE8(v1[9], v1[2]);
  v85 = v56;
LABEL_30:
  v85(*v2, *v3);

  OUTLINED_FUNCTION_9_1();

  return v100();
}

uint64_t sub_268529AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802830C8, &qword_26856C590);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x28223BE20](v4);
  v65 = v64 - v5;
  OUTLINED_FUNCTION_19_1();
  sub_2685679B0();
  OUTLINED_FUNCTION_1();
  v64[1] = v7;
  v64[2] = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_5();
  v64[3] = v9 - v8;
  OUTLINED_FUNCTION_19_1();
  v64[0] = sub_268567B60();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_5();
  v15 = v14 - v13;
  v16 = sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_5();
  v22 = v21 - v20;
  v23 = type metadata accessor for NotificationNLv4Intent(0);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_5();
  v27 = v26 - v25;
  v28 = *(v18 + 16);
  v28(v22, a1, v16);
  v28(v27, v22, v16);
  sub_268568550();
  v29 = sub_26850CCFC();
  (*(v18 + 8))(v22, v16);
  *(v27 + *(v24 + 28)) = v29;
  sub_2685683B0();
  if (v67[3])
  {
    sub_268568430();
    if (swift_dynamicCast())
    {

LABEL_6:
      sub_268567990();
      OUTLINED_FUNCTION_18_7(v67);
      (*(v11 + 104))(v15, *MEMORY[0x277D5BBC8], v64[0]);
      v30 = OUTLINED_FUNCTION_39_2();
      v31(v30);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_6_17();
      v40 = sub_2684EBB74(v32, v33, v34, v35, v36, v37, v38, v39, v62, v63);
      OUTLINED_FUNCTION_33_1(v40);

      __swift_destroy_boxed_opaque_existential_0(v67);
      v41 = MEMORY[0x277D5BED8];
      goto LABEL_12;
    }
  }

  else
  {
    sub_2684EB7C8(v67, &qword_280282BE0, &unk_26856D8C0);
  }

  if (sub_268565808())
  {
    goto LABEL_6;
  }

  if ((sub_26856596C() & 1) == 0 && (sub_268565954() & 1) == 0 && (sub_268565820() & 1) == 0 && (sub_26856563C() & 1) == 0)
  {
    v59 = sub_268567E60();
    v57 = v65;
    v58 = 1;
    goto LABEL_13;
  }

  sub_268567990();
  OUTLINED_FUNCTION_18_7(v67);
  (*(v11 + 104))(v15, *MEMORY[0x277D5BBD0], v64[0]);
  v42 = OUTLINED_FUNCTION_39_2();
  v43(v42);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_17();
  v52 = sub_2684EBB74(v44, v45, v46, v47, v48, v49, v50, v51, v62, v63);
  OUTLINED_FUNCTION_33_1(v52);

  __swift_destroy_boxed_opaque_existential_0(v67);
  v41 = MEMORY[0x277D5BED0];
LABEL_12:
  v53 = *v41;
  v54 = sub_268567E60();
  OUTLINED_FUNCTION_17_2();
  v56 = v65;
  (*(v55 + 104))(v65, v53, v54);
  v57 = v56;
  v58 = 0;
  v59 = v54;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v57, v58, 1, v59);
  sub_268568020();
  OUTLINED_FUNCTION_2_18();
  return sub_2684EB8E0(v27, v60);
}

uint64_t sub_268529F9C()
{
  OUTLINED_FUNCTION_5();
  v1[34] = v2;
  v1[35] = v0;
  v3 = sub_268567D90();
  v1[36] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[37] = v4;
  v1[38] = OUTLINED_FUNCTION_50();
  v1[39] = swift_task_alloc();
  v5 = sub_2685688F0();
  v1[40] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[41] = v6;
  v1[42] = OUTLINED_FUNCTION_39();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283588, &qword_26856E188);
  v1[43] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[44] = OUTLINED_FUNCTION_50();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v8 = sub_2685679B0();
  v1[48] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[49] = v9;
  v1[50] = OUTLINED_FUNCTION_39();
  v10 = sub_268567B60();
  v1[51] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[52] = v11;
  v1[53] = OUTLINED_FUNCTION_39();
  v12 = sub_2685689F0();
  v1[54] = v12;
  OUTLINED_FUNCTION_2_4(v12);
  v1[55] = v13;
  v1[56] = OUTLINED_FUNCTION_50();
  v1[57] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26852A1DC()
{
  if (*(*(v0 + 280) + 169) != 1)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v139 = (v0 + 256);
    v52 = *(v0 + 448);
    OUTLINED_FUNCTION_38(*(v0 + 432), qword_28028B348);
    v53 = OUTLINED_FUNCTION_31_6();
    v54(v53);
    v55 = sub_2685689E0();
    sub_268568DC0();
    OUTLINED_FUNCTION_37_3();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2684CA000, v55, v52, "RNYesNoPromptStrategy makeFlowCancelledResponse | cancellation response executing", v57, 2u);
      OUTLINED_FUNCTION_2();
    }

    v58 = *(v0 + 424);
    v60 = *(v0 + 408);
    v59 = *(v0 + 416);
    v61 = *(v0 + 392);
    v62 = *(v0 + 400);
    OUTLINED_FUNCTION_13_12();
    v63 = OUTLINED_FUNCTION_26_6();
    v64(v63);
    sub_268567990();
    OUTLINED_FUNCTION_18_7((v0 + 16));
    (*(v59 + 104))(v58, *MEMORY[0x277D5BC08], v60);
    (*(v61 + 104))(v62, *MEMORY[0x277D5B950]);
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_6_17();
    v73 = sub_2684EBB74(v65, v66, v67, v68, v69, v70, v71, v72, v105, v110);
    OUTLINED_FUNCTION_44_1(v73);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_2685687C0();
    type metadata accessor for RNYesNoPromptStrategy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v75 = [objc_opt_self() bundleForClass_];
    sub_2685686F0();
    sub_2685685F0();
    v76 = sub_2685685D0();
    v84 = OUTLINED_FUNCTION_32_4(v76, v77, v78, v79, v80, v81, v82, v83, v108, v113, v115, v118, v121, v124, v127, v130, v133, v136);

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_268568AD0();
    sub_2685688E0();
    OUTLINED_FUNCTION_45(v75, 0xD00000000000001CLL, 0x8000000268573350, v85, v86, v0 + 56);

    (*(v126 + 8))(v120, v129);
    sub_2684EB7C8(v0 + 56, &qword_280282DB0, &unk_26856B440);
    sub_26852B12C(v123, v132);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v36 = *(v0 + 352);
    v37 = *(v0 + 360);
    if (EnumCaseMultiPayload != 1)
    {
      v89 = *(v0 + 272);
      v90 = OUTLINED_FUNCTION_36_2();
      v92 = v91(v90);
      OUTLINED_FUNCTION_34_3(v92, v93, v94, v95, v96, v97, v98, v99, v109, v114, v117, v120, v123, v126, v129, v132, v135, v138);
      v100 = sub_2685680C0();
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      *(v0 + 128) = 0;
      v101 = MEMORY[0x277D5C1D8];
      v89[3] = v100;
      v89[4] = v101;
      __swift_allocate_boxed_opaque_existential_0(v89);
      sub_268567BC0();
      v51 = v0 + 96;
      goto LABEL_15;
    }

LABEL_13:
    *v139 = *v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    swift_willThrowTypedImpl();
    sub_2684EB7C8(v37, &qword_280283588, &qword_26856E188);

    OUTLINED_FUNCTION_9_1();
    goto LABEL_16;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v139 = (v0 + 264);
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  OUTLINED_FUNCTION_38(*(v0 + 432), qword_28028B348);
  (*(v2 + 16))(v1);
  v3 = sub_2685689E0();
  sub_268568DC0();
  OUTLINED_FUNCTION_37_3();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2684CA000, v3, v1, "RNYesNoPromptStrategy makeFlowCancelledResponse | unsupported action response executing", v5, 2u);
    OUTLINED_FUNCTION_2();
  }

  v6 = *(v0 + 416);
  v7 = *(v0 + 424);
  v9 = *(v0 + 400);
  v8 = *(v0 + 408);
  v10 = *(v0 + 392);
  OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_26_6();
  v12(v11);
  sub_268567990();
  OUTLINED_FUNCTION_18_7((v0 + 136));
  (*(v6 + 104))(v7, *MEMORY[0x277D5BC08], v8);
  (*(v10 + 104))(v9, *MEMORY[0x277D5B930]);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_17();
  v21 = sub_2684EBB74(v13, v14, v15, v16, v17, v18, v19, v20, v105, v110);
  OUTLINED_FUNCTION_44_1(v21);

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  sub_2685687C0();
  type metadata accessor for RNYesNoPromptStrategy();
  v22 = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_2685686F0();
  sub_2685685F0();
  v24 = sub_2685685D0();
  v32 = OUTLINED_FUNCTION_32_4(v24, v25, v26, v27, v28, v29, v30, v31, v106, v111, v115, v118, v121, v124, v127, v130, v133, v136);

  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_268568AD0();
  sub_2685688E0();
  OUTLINED_FUNCTION_45(v23, 0xD000000000000032, 0x8000000268573370, v33, v34, v0 + 176);

  (*(v125 + 8))(v119, v128);
  sub_2684EB7C8(v0 + 176, &qword_280282DB0, &unk_26856B440);
  sub_26852B12C(v122, v131);
  v35 = swift_getEnumCaseMultiPayload();
  v36 = *(v0 + 368);
  v37 = *(v0 + 376);
  if (v35 == 1)
  {
    goto LABEL_13;
  }

  v38 = *(v0 + 272);
  v39 = OUTLINED_FUNCTION_36_2();
  v41 = v40(v39);
  OUTLINED_FUNCTION_34_3(v41, v42, v43, v44, v45, v46, v47, v48, v107, v112, v116, v119, v122, v125, v128, v131, v134, v137);
  v49 = sub_2685680C0();
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  v50 = MEMORY[0x277D5C1D8];
  v38[3] = v49;
  v38[4] = v50;
  __swift_allocate_boxed_opaque_existential_0(v38);
  sub_268567BC0();
  v51 = v0 + 216;
LABEL_15:
  sub_2684EB7C8(v51, &qword_280282F30, &qword_26856DAD0);
  v102 = OUTLINED_FUNCTION_26_6();
  v103(v102);
  sub_2684EB7C8(v37, &qword_280283588, &qword_26856E188);

  OUTLINED_FUNCTION_9_1();
LABEL_16:

  return v88();
}

uint64_t sub_26852AA44()
{

  sub_2684CC8D4(v0 + 32);

  return v0;
}

uint64_t sub_26852AA74()
{
  sub_26852AA44();

  return MEMORY[0x2821FE8D8](v0, 170, 7);
}

uint64_t sub_26852AAD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684FF230;

  return sub_26852773C();
}

uint64_t sub_26852AB74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26852B24C;

  return sub_268528DF8();
}

uint64_t sub_26852AC1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for RNYesNoPromptStrategy();
  v6 = sub_26852B19C(&qword_280283580, v5, type metadata accessor for RNYesNoPromptStrategy, &unk_26856E158);
  *v3 = v1;
  v3[1] = sub_26852B24C;

  return MEMORY[0x2821B9C20](a1, v4, v6);
}

uint64_t sub_26852AD04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for RNYesNoPromptStrategy();
  v6 = sub_26852B19C(&qword_280283580, v5, type metadata accessor for RNYesNoPromptStrategy, &unk_26856E158);
  *v3 = v1;
  v3[1] = sub_26852B24C;

  return MEMORY[0x2821B9C28](a1, v4, v6);
}

uint64_t sub_26852ADEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for RNYesNoPromptStrategy();
  v6 = sub_26852B19C(&qword_280283580, v5, type metadata accessor for RNYesNoPromptStrategy, &unk_26856E158);
  *v3 = v1;
  v3[1] = sub_26852B24C;

  return MEMORY[0x2821B9C30](a1, v4, v6);
}

uint64_t sub_26852AED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26852B24C;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_26852AF88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26852B24C;

  return sub_268529F9C();
}

uint64_t sub_26852B020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26852B24C;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

uint64_t sub_26852B12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283588, &qword_26856E188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26852B19C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26852B1E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_13_12()
{
}

uint64_t OUTLINED_FUNCTION_18_7(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_268516318(a18 + 72, a1);
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1)
{

  return sub_2685679A0();
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __swift_project_boxed_opaque_existential_1((a18 + 72), *(v18 + 96));

  return sub_268567A90();
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1)
{

  return sub_2685679A0();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x2821B7E38](a1, a2, a3, v7, v6, a6, v8);
}

void OUTLINED_FUNCTION_46_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_26852B4B8()
{
  if (qword_280282990 != -1)
  {
    OUTLINED_FUNCTION_1_17(&qword_280282990);
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0xE600000000000000;
  v1 = 0x6574656C6564;
  v2 = 0;
  switch(v4)
  {
    case 1:
      goto LABEL_7;
    case 2:
      v1 = OUTLINED_FUNCTION_7_20();
      goto LABEL_6;
    case 3:
      v0 = 0xE500000000000000;
      v1 = OUTLINED_FUNCTION_8_14();
      goto LABEL_6;
    case 4:
      return v2 & 1;
    default:
LABEL_6:
      OUTLINED_FUNCTION_13_13(v1, v0);
      OUTLINED_FUNCTION_6_18();
LABEL_7:

      v2 = 1;
      return v2 & 1;
  }
}

uint64_t sub_26852B5A8()
{
  if (qword_280282990 != -1)
  {
    OUTLINED_FUNCTION_1_17(&qword_280282990);
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 1;
  v1 = 0x6574656C6564;
  v2 = 0;
  switch(v4)
  {
    case 1:
      v1 = 1684104562;
      goto LABEL_6;
    case 2:
      goto LABEL_7;
    case 3:
      v1 = OUTLINED_FUNCTION_8_14();
      goto LABEL_6;
    case 4:
      return v2 & 1;
    default:
LABEL_6:
      v0 = OUTLINED_FUNCTION_12_13(v1);
LABEL_7:

      v2 = v0;
      return v2 & 1;
  }
}

uint64_t sub_26852B6A4()
{
  if (qword_280282998 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_280282998);
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 2:
      OUTLINED_FUNCTION_10_10();
      goto LABEL_5;
    case 3:
      goto LABEL_6;
    case 4:
      return v0 & 1;
    default:
LABEL_5:
      sub_2685691C0();
      OUTLINED_FUNCTION_6_18();
LABEL_6:

      v0 = 1;
      return v0 & 1;
  }
}

uint64_t sub_26852B7A4()
{
  if (qword_280282990 != -1)
  {
    OUTLINED_FUNCTION_1_17(&qword_280282990);
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 2:
      OUTLINED_FUNCTION_7_20();
      goto LABEL_5;
    case 3:
      goto LABEL_6;
    case 4:
      return v0 & 1;
    default:
LABEL_5:
      sub_2685691C0();
      OUTLINED_FUNCTION_6_18();
LABEL_6:

      v0 = 1;
      return v0 & 1;
  }
}

uint64_t sub_26852B8AC()
{
  if (qword_280282998 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_280282998);
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 28526;
  v1 = 0;
  switch(v3)
  {
    case 1:
      goto LABEL_6;
    case 2:
      v0 = OUTLINED_FUNCTION_10_10();
      goto LABEL_6;
    case 3:
      v0 = OUTLINED_FUNCTION_11_11();
LABEL_6:
      OUTLINED_FUNCTION_12_13(v0);
      OUTLINED_FUNCTION_6_18();
      goto LABEL_7;
    case 4:
      return v1 & 1;
    default:
LABEL_7:

      v1 = 1;
      return v1 & 1;
  }
}

uint64_t sub_26852B998()
{
  if (qword_280282998 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_280282998);
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 1:
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_10_10();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_11_11();
      goto LABEL_6;
    case 4:
      return v0 & 1;
    default:
LABEL_6:
      sub_2685691C0();
      OUTLINED_FUNCTION_6_18();
LABEL_7:

      v0 = 1;
      return v0 & 1;
  }
}

uint64_t sub_26852BAB4()
{
  if (qword_280282998 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_280282998);
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 0;
  switch(v2)
  {
    case 2:
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_11_11();
      goto LABEL_5;
    case 4:
      return v0 & 1;
    default:
LABEL_5:
      sub_2685691C0();
      OUTLINED_FUNCTION_6_18();
LABEL_6:

      v0 = 1;
      return v0 & 1;
  }
}

BOOL sub_26852BBD8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  return (v4 & 1) == 0;
}

BOOL sub_26852BC4C()
{
  if (qword_280282988 != -1)
  {
    OUTLINED_FUNCTION_5_18(&qword_280282988);
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_9_16();
  switch(v9)
  {
    case 1:
      goto LABEL_5;
    case 2:
    case 3:
      OUTLINED_FUNCTION_3_17();
LABEL_5:
      v0 = sub_2685691C0();

      if ((v0 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    case 4:
LABEL_6:
      OUTLINED_FUNCTION_9_16();
      switch(v8)
      {
        case 1:
          goto LABEL_12;
        case 2:
        case 3:
          OUTLINED_FUNCTION_3_17();
          goto LABEL_8;
        case 4:
          goto LABEL_9;
        default:
LABEL_8:
          v1 = sub_2685691C0();

          if (v1)
          {
            goto LABEL_13;
          }

LABEL_9:
          OUTLINED_FUNCTION_9_16();
          switch(v7)
          {
            case 2:
              goto LABEL_12;
            case 4:
              break;
            default:
              v2 = sub_2685691C0();

              if (v2)
              {
                goto LABEL_13;
              }

              break;
          }

          OUTLINED_FUNCTION_9_16();
          result = 0;
          switch(v6)
          {
            case 3:
              goto LABEL_12;
            case 4:
              return result;
            default:
              v4 = sub_2685691C0();

              result = 0;
              if (v4)
              {
                goto LABEL_13;
              }

              break;
          }

          break;
      }

      break;
    default:
LABEL_12:

LABEL_13:
      if (qword_280282990 != -1)
      {
        OUTLINED_FUNCTION_1_17(&qword_280282990);
      }

      sub_2685683A0();
      result = v5 == 4;
      break;
  }

  return result;
}

BOOL sub_26852BF90()
{
  if (qword_280282990 != -1)
  {
    OUTLINED_FUNCTION_1_17(&qword_280282990);
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  sub_2685683A0();
  v0 = 0xE600000000000000;
  v1 = 0x6574656C6564;
  v2 = 0;
  switch(v6)
  {
    case 1:

      goto LABEL_8;
    case 2:
      v1 = OUTLINED_FUNCTION_7_20();
      goto LABEL_7;
    case 3:
      v0 = 0xE500000000000000;
      v1 = OUTLINED_FUNCTION_8_14();
      goto LABEL_7;
    case 4:
      return v2;
    default:
LABEL_7:
      v3 = OUTLINED_FUNCTION_13_13(v1, v0);

      v2 = 0;
      if (v3)
      {
LABEL_8:
        if (qword_280282988 != -1)
        {
          OUTLINED_FUNCTION_5_18(&qword_280282988);
        }

        sub_2685683A0();
        return v5 == 4;
      }

      return v2;
  }
}

uint64_t sub_26852C0E8()
{
  if (qword_280282990 != -1)
  {
    OUTLINED_FUNCTION_1_17(&qword_280282990);
  }

  type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_0_19(&qword_280283548);
  OUTLINED_FUNCTION_4_19();
  v0 = 1684104562;
  v1 = 0;
  switch(v3)
  {
    case 1:
      goto LABEL_6;
    case 2:
      v0 = OUTLINED_FUNCTION_7_20();
      goto LABEL_6;
    case 3:
      v0 = OUTLINED_FUNCTION_8_14();
LABEL_6:
      OUTLINED_FUNCTION_12_13(v0);
      OUTLINED_FUNCTION_6_18();
      goto LABEL_7;
    case 4:
      return v1 & 1;
    default:
LABEL_7:

      v1 = 1;
      return v1 & 1;
  }
}

uint64_t sub_26852C1E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835E8, &qword_26856E1B8);
  swift_allocObject();
  result = sub_268568290();
  qword_280283590 = result;
  return result;
}

uint64_t sub_26852C248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835D0, &qword_26856E1A0);
  swift_allocObject();
  result = sub_268568290();
  qword_280283598 = result;
  return result;
}

uint64_t sub_26852C2B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835D8, &qword_26856E1A8);
  swift_allocObject();
  result = sub_268568290();
  qword_2802835A0 = result;
  return result;
}

uint64_t sub_26852C318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835E0, &qword_26856E1B0);
  swift_allocObject();
  result = sub_268568290();
  qword_2802835A8 = result;
  return result;
}

uint64_t sub_26852C380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835F0, &qword_26856E1C0);
  swift_allocObject();
  result = sub_268568290();
  qword_2802835B0 = result;
  return result;
}

uint64_t sub_26852C3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835F8, &qword_26856E1C8);
  swift_allocObject();
  result = sub_268568290();
  qword_2802835B8 = result;
  return result;
}

uint64_t sub_26852C458()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802836E0, &qword_26856E8E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26856A540;
  if (qword_2802829B0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802835B8;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835F8, &qword_26856E1C8);
  *(v0 + 64) = sub_26852DDF0(&qword_280283710, &qword_2802835F8, &qword_26856E1C8, MEMORY[0x277D5E430]);
  *(v0 + 32) = v1;
  sub_268568250();
  swift_allocObject();

  result = sub_268568240();
  qword_2802835C0 = result;
  return result;
}

uint64_t sub_26852C578()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802836E0, &qword_26856E8E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26856E190;
  if (qword_2802829B8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802835C0;
  v2 = sub_268568250();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_280282988;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280283590;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835E8, &qword_26856E1B8);
  *(v0 + 104) = sub_26852DDF0(&qword_2802836E8, &qword_2802835E8, &qword_26856E1B8, MEMORY[0x277D5E430]);
  *(v0 + 72) = v5;
  v6 = qword_280282990;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280283598;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835D0, &qword_26856E1A0);
  *(v0 + 144) = sub_26852DDF0(&qword_2802836F0, &qword_2802835D0, &qword_26856E1A0, MEMORY[0x277D5E430]);
  *(v0 + 112) = v7;
  v8 = qword_280282998;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_2802835A0;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835D8, &qword_26856E1A8);
  *(v0 + 184) = sub_26852DDF0(&qword_2802836F8, &qword_2802835D8, &qword_26856E1A8, MEMORY[0x277D5E430]);
  *(v0 + 152) = v9;
  v10 = qword_2802829A0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_2802835A8;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835E0, &qword_26856E1B0);
  *(v0 + 224) = sub_26852DDF0(&qword_280283700, &qword_2802835E0, &qword_26856E1B0, MEMORY[0x277D5E430]);
  *(v0 + 192) = v11;
  v12 = qword_2802829A8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2802835B0;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802835F0, &qword_26856E1C0);
  *(v0 + 264) = sub_26852DDF0(&qword_280283708, &qword_2802835F0, &qword_26856E1C0, MEMORY[0x277D5E430]);
  *(v0 + 232) = v13;
  sub_268568280();
  swift_allocObject();

  result = sub_268568270();
  qword_2802835C8 = result;
  return result;
}

uint64_t sub_26852C940()
{
  if (qword_2802829C0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_26852C99C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2685690D0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26852C9F4(char a1)
{
  result = 0x7472656C61;
  switch(a1)
  {
    case 1:
      result = 0x737472656C61;
      break;
    case 2:
    case 3:
      result = 0x6163696669746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26852CAA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26852C99C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26852CAD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26852C9F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_26852CB04@<X0>(void *a1@<X8>)
{
  result = sub_26852C9E8();
  *a1 = result;
  return result;
}

unint64_t sub_26852CB6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2685690D0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26852CBC4(char a1)
{
  result = 0x6574656C6564;
  switch(a1)
  {
    case 1:
      result = 1684104562;
      break;
    case 2:
      result = OUTLINED_FUNCTION_7_20();
      break;
    case 3:
      result = OUTLINED_FUNCTION_8_14();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26852CC50(uint64_t a1, uint64_t a2)
{
  v2 = sub_2685690D0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26852CCA8(char a1)
{
  result = 0x6C65636E6163;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 1885956979;
      break;
    case 3:
      result = 7562617;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_26852CD1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2685690D0();

  return v2 != 0;
}

BOOL sub_26852CD80(uint64_t a1, uint64_t a2)
{
  v2 = sub_2685690D0();

  return v2 != 0;
}

unint64_t sub_26852CE0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26852CB6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26852CE3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26852CBC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t type metadata accessor for NotificationNLv3Intent(uint64_t a1)
{
  result = qword_280283600;
  if (!qword_280283600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_26852CEB4@<X0>(void *a1@<X8>)
{
  result = sub_26852CBB8();
  *a1 = result;
  return result;
}

unint64_t sub_26852CF40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26852CC50(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26852CF70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26852CCA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_26852CF9C@<X0>(void *a1@<X8>)
{
  result = sub_26852CC9C();
  *a1 = result;
  return result;
}

BOOL sub_26852D010@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26852CD1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26852D044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26852CD70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_26852D06C@<X0>(void *a1@<X8>)
{
  result = sub_26852CD64();
  *a1 = result;
  return result;
}

BOOL sub_26852D0E0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26852CD80(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26852D114@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26852CDD4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_26852D164(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x26852D200);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_26852D250(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x26852D31CLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26852D368(uint64_t a1, uint64_t a2)
{
  v4 = sub_268568560();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_26852D3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_268568560();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_26852D410(uint64_t a1)
{
  result = sub_268568560();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_26852D47C@<X0>(void *a1@<X8>)
{
  result = sub_26852CDC8();
  *a1 = result;
  return result;
}

uint64_t sub_26852D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_26852D574@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268568560();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26852D5F4(uint64_t a1)
{
  v2 = sub_26852DE38(&qword_280282DF8, &unk_26856E8A8);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_26852D65C(uint64_t a1)
{
  v2 = sub_26852DE38(&qword_280282DF8, &unk_26856E8A8);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_26852D6B4(uint64_t a1)
{
  sub_26852DE38(&qword_280282DF8, &unk_26856E8A8);

  return sub_268568310();
}

unint64_t sub_26852D710()
{
  result = qword_280283610;
  if (!qword_280283610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283610);
  }

  return result;
}

unint64_t sub_26852D7AC()
{
  result = qword_280283628;
  if (!qword_280283628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283628);
  }

  return result;
}

unint64_t sub_26852D804()
{
  result = qword_280283630;
  if (!qword_280283630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283630);
  }

  return result;
}

unint64_t sub_26852D85C()
{
  result = qword_280283638;
  if (!qword_280283638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283638);
  }

  return result;
}

unint64_t sub_26852D8F8()
{
  result = qword_280283650;
  if (!qword_280283650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283650);
  }

  return result;
}

unint64_t sub_26852D950()
{
  result = qword_280283658;
  if (!qword_280283658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283658);
  }

  return result;
}

unint64_t sub_26852D9A8()
{
  result = qword_280283660;
  if (!qword_280283660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283660);
  }

  return result;
}

unint64_t sub_26852DA44()
{
  result = qword_280283678;
  if (!qword_280283678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283678);
  }

  return result;
}

unint64_t sub_26852DA9C()
{
  result = qword_280283680;
  if (!qword_280283680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283680);
  }

  return result;
}

unint64_t sub_26852DAF4()
{
  result = qword_280283688;
  if (!qword_280283688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283688);
  }

  return result;
}

unint64_t sub_26852DB90()
{
  result = qword_2802836A0;
  if (!qword_2802836A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802836A0);
  }

  return result;
}

unint64_t sub_26852DBE8()
{
  result = qword_2802836A8;
  if (!qword_2802836A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802836A8);
  }

  return result;
}

unint64_t sub_26852DC40()
{
  result = qword_2802836B0;
  if (!qword_2802836B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802836B0);
  }

  return result;
}

unint64_t sub_26852DCDC()
{
  result = qword_2802836C8;
  if (!qword_2802836C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802836C8);
  }

  return result;
}

unint64_t sub_26852DD34()
{
  result = qword_2802836D0;
  if (!qword_2802836D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802836D0);
  }

  return result;
}

uint64_t sub_26852DDF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26852DE38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotificationNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26852DE7C()
{
  result = qword_280283718;
  if (!qword_280283718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283718);
  }

  return result;
}

unint64_t sub_26852DED0()
{
  result = qword_280283720;
  if (!qword_280283720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283720);
  }

  return result;
}

unint64_t sub_26852DF24()
{
  result = qword_280283728;
  if (!qword_280283728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283728);
  }

  return result;
}

unint64_t sub_26852DF78()
{
  result = qword_280283730;
  if (!qword_280283730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283730);
  }

  return result;
}

unint64_t sub_26852DFCC()
{
  result = qword_280283738;
  if (!qword_280283738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283738);
  }

  return result;
}

unint64_t sub_26852E020()
{
  result = qword_280283740;
  if (!qword_280283740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283740);
  }

  return result;
}

unint64_t sub_26852E074()
{
  result = qword_280283748;
  if (!qword_280283748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283748);
  }

  return result;
}

unint64_t sub_26852E0C8()
{
  result = qword_280283750;
  if (!qword_280283750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283750);
  }

  return result;
}

unint64_t sub_26852E11C()
{
  result = qword_280283758;
  if (!qword_280283758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283758);
  }

  return result;
}

unint64_t sub_26852E170()
{
  result = qword_280283760;
  if (!qword_280283760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283760);
  }

  return result;
}

unint64_t sub_26852E1C4()
{
  result = qword_280283768;
  if (!qword_280283768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283768);
  }

  return result;
}

unint64_t sub_26852E218()
{
  result = qword_280283770;
  if (!qword_280283770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283770);
  }

  return result;
}

unint64_t sub_26852E26C()
{
  result = qword_280283778;
  if (!qword_280283778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283778);
  }

  return result;
}

unint64_t sub_26852E2C0()
{
  result = qword_280283780;
  if (!qword_280283780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283780);
  }

  return result;
}

unint64_t sub_26852E314()
{
  result = qword_280283788;
  if (!qword_280283788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283788);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_19(unint64_t *a1)
{

  return sub_26852DE38(a1, &unk_26856E878);
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return sub_2685683A0();
}

uint64_t OUTLINED_FUNCTION_5_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_2685683A0();
}

uint64_t OUTLINED_FUNCTION_12_13(uint64_t a1)
{

  return sub_2685691C0();
}

uint64_t OUTLINED_FUNCTION_13_13(uint64_t a1, uint64_t a2)
{

  return sub_2685691C0();
}

uint64_t sub_26852E4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v30 = a6;
  v31 = a7;
  v28 = a4;
  v29 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837D0, &unk_26856EB20);
  MEMORY[0x28223BE20](v12);
  v14 = (&v28 - v13);
  v15 = qword_280282FA8;
  v16 = sub_268567E60();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v8 + v15, a3, v16);
  *v14 = a1;
  sub_2684D57FC(a2 + 80, v35);
  v18 = sub_268567D00();
  swift_allocObject();

  v19 = sub_268567CF0();
  v33 = v18;
  v34 = MEMORY[0x277D5BD58];
  v32 = v19;
  v20 = sub_268567840();
  swift_allocObject();
  v21 = sub_268567830();
  v22 = MEMORY[0x277D5B808];
  v14[4] = v20;
  v14[5] = v22;

  v14[1] = v21;
  (*(v17 + 8))(a3, v16);
  sub_2684CC8D4(a2);
  swift_storeEnumTagMultiPayload();
  sub_268532988(v14, v8 + *(*v8 + 120));
  v23 = (v8 + qword_28028B370);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  v25 = (v8 + qword_28028B378);
  v26 = v31;
  *v25 = v30;
  v25[1] = v26;
  return v8;
}

uint64_t sub_26852E700@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = *a1;
  type metadata accessor for NotificationsApp.Builder(0);
  swift_allocObject();
  sub_268518184();
  v13 = sub_2684DEAF0(v12);
  v36 = v2;
  v33 = v9;
  v34 = a2;
  if (v13)
  {
    v14 = v13;
    v35 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v17 = v12 & 0xC000000000000001;
    do
    {
      if (v17)
      {
        MEMORY[0x26D61C170](v16, v12);
      }

      else
      {
      }

      ++v16;
      sub_268555B38();

      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v14 != v16);
    v18 = v35;
  }

  else
  {
    v17 = v12 & 0xC000000000000001;
    v18 = MEMORY[0x277D84F90];
  }

  v19 = sub_268518208(v18);

  sub_2684DEAFC();
  if (v17)
  {
    MEMORY[0x26D61C170](0, v12);

    swift_unknownObjectRelease();
    MEMORY[0x26D61C170](0, v12);
  }

  else
  {
  }

  sub_2685687F0();
  sub_268568810();
  OUTLINED_FUNCTION_29_4();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId;
  OUTLINED_FUNCTION_33_2();
  sub_268532644(v11, v19 + v24);
  swift_endAccess();
  sub_2684D199C(v11, &qword_280282AF0, &qword_26856A1E0);
  if (v17)
  {
    MEMORY[0x26D61C170](0, v12);
  }

  else
  {
  }

  v26 = v33;
  v25 = v34;

  sub_268568BB0();

  OUTLINED_FUNCTION_29_4();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName;
  OUTLINED_FUNCTION_33_2();
  sub_268532644(v26, v19 + v31);
  swift_endAccess();
  sub_2684D199C(v26, &qword_280282AF0, &qword_26856A1E0);
  type metadata accessor for NotificationsApp(0);
  swift_allocObject();
  result = sub_2685182C0(v19);
  *v25 = result;
  return result;
}

uint64_t sub_26852EA90()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v3 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_268567F20();
  v1[4] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[5] = v5;
  v1[6] = OUTLINED_FUNCTION_39();
  v6 = sub_2685689F0();
  v1[7] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_39();
  v8 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26852EB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_24_8();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(*(v12 + 56), qword_28028B348);
  v13 = OUTLINED_FUNCTION_12_2();
  v14(v13);
  sub_2685689E0();
  v15 = sub_268568DE0();
  if (OUTLINED_FUNCTION_29(v15))
  {
    v16 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v16);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v17, v18, "RNReadNotificationsFromMultipleAppsPatternFlowProvider makeEmptyResultSetFlow | Empty result set flow should never be run");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_14_6();
  v19 = OUTLINED_FUNCTION_20_6();
  v20(v19);
  OUTLINED_FUNCTION_21_6();
  v21 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  sub_268567B00();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_12_14();

  v22 = OUTLINED_FUNCTION_19_7();
  v23(v22);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_26852ECF4()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v3 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_268567F20();
  v1[4] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[5] = v5;
  v1[6] = OUTLINED_FUNCTION_39();
  v6 = sub_2685689F0();
  v1[7] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_39();
  v8 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26852EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_24_8();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(*(v12 + 56), qword_28028B348);
  v13 = OUTLINED_FUNCTION_12_2();
  v14(v13);
  sub_2685689E0();
  v15 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v15))
  {
    v16 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v16);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v17, v18, "RNReadNotificationsFromMultipleAppsPatternFlowProvider makeSingleItemFlow | Single result set flow should never be run");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_14_6();
  v19 = OUTLINED_FUNCTION_20_6();
  v20(v19);
  OUTLINED_FUNCTION_21_6();
  v21 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  sub_268567B00();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_12_14();

  v22 = OUTLINED_FUNCTION_19_7();
  v23(v22);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_26852EF80()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v3 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_268567F20();
  v1[4] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[5] = v5;
  v1[6] = OUTLINED_FUNCTION_39();
  v6 = sub_2685689F0();
  v1[7] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_39();
  v8 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26852F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_24_8();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(*(v12 + 56), qword_28028B348);
  v13 = OUTLINED_FUNCTION_12_2();
  v14(v13);
  sub_2685689E0();
  v15 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v15))
  {
    v16 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v16);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v17, v18, "RNReadNotificationsFromMultipleAppsPatternFlowProvider makeAllResultsFlow | All result set flow should never be run");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_14_6();
  v19 = OUTLINED_FUNCTION_20_6();
  v20(v19);
  OUTLINED_FUNCTION_21_6();
  v21 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  sub_268567B00();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_12_14();

  v22 = OUTLINED_FUNCTION_19_7();
  v23(v22);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_26852F1E4()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_2685689F0();
  v1[6] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_39();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837D8, &unk_26856EFD0);
  OUTLINED_FUNCTION_10(v6);
  v1[9] = OUTLINED_FUNCTION_39();
  v7 = sub_268567A60();
  v1[10] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[11] = v8;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26852F314()
{
  v40 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  sub_268567A30();
  v4 = sub_268567A40();
  v5 = *(v3 + 8);
  v5(v1, v2);
  if (v4)
  {
    v0[2] = v0[5];
    v6 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837F0, &unk_26856EFE0);
    type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlowProvider();
    sub_2685329F8(&qword_2802837F8, v7, type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlowProvider, &unk_26856EA38);
    sub_268567810();
    sub_268567EC0();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837E0, &unk_26856EB30);
    v9 = v6;
    v10 = 0;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    v17 = v0[4];
    v18 = __swift_project_value_buffer(v16, qword_28028B348);
    (*(v15 + 16))(v14, v18, v16);
    (*(v12 + 16))(v11, v17, v13);
    v19 = sub_2685689E0();
    v20 = sub_268568DE0();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[12];
    v23 = v0[10];
    v25 = v0[7];
    v24 = v0[8];
    v26 = v0[6];
    if (v21)
    {
      v38 = v0[6];
      v27 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v27 = 136315138;
      sub_2685329F8(&qword_2802837E8, 255, MEMORY[0x277D5B9D0], MEMORY[0x277D5B9D8]);
      v35 = v20;
      v28 = sub_2685691A0();
      v36 = v24;
      v30 = v29;
      v5(v22, v23);
      v31 = sub_2684EABEC(v28, v30, &v39);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2684CA000, v19, v35, "Unsupported promptType '%s'. Will not support windowing.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v25 + 8))(v36, v38);
    }

    else
    {

      v5(v22, v23);
      (*(v25 + 8))(v24, v26);
    }

    v32 = v0[3];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837E0, &unk_26856EB30);
    v9 = v32;
    v10 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);

  OUTLINED_FUNCTION_9_1();

  return v33();
}

uint64_t sub_26852F6DC()
{
  OUTLINED_FUNCTION_5();
  v1[40] = v2;
  v1[41] = v0;
  v1[39] = v3;
  v4 = sub_268567E60();
  v1[42] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[43] = v5;
  v1[44] = OUTLINED_FUNCTION_39();
  v6 = sub_268567FF0();
  v1[45] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[46] = v7;
  v1[47] = *(v8 + 64);
  v1[48] = OUTLINED_FUNCTION_39();
  v9 = sub_2685689F0();
  v1[49] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[50] = v10;
  v1[51] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26852F824()
{
  v80 = v0;
  v1 = v0;
  if (qword_280282960 != -1)
  {
LABEL_62:
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = (v1 + 34);
  v4 = v1[50];
  v3 = v1[51];
  v5 = v1[49];
  v6 = __swift_project_value_buffer(v5, qword_28028B348);
  (*(v4 + 16))(v3, v6, v5);

  v7 = sub_2685689E0();
  LOBYTE(v4) = sub_268568DC0();

  v8 = os_log_type_enabled(v7, v4);
  v10 = v1[50];
  v9 = v1[51];
  v11 = v1[49];
  if (v8)
  {
    v12 = v1[40];
    v77 = v1[51];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v79 = v14;
    *v13 = 136315138;
    v15 = type metadata accessor for NotificationsApp(0);
    v16 = MEMORY[0x26D61BE70](v12, v15);
    v18 = sub_2684EABEC(v16, v17, &v79);

    *(v13 + 4) = v18;
    OUTLINED_FUNCTION_35_3(&dword_2684CA000, v19, v20, "RNReadNotificationsFromMultipleAppsPatternFlowProvider makeWindowFlow | windowContent: %s");
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v10 + 8))(v77, v11);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v66 = v1;
  v21 = v1[40];
  v22 = sub_2684DEAF0(v21);
  v23 = 0;
  v72 = v21 & 0xFFFFFFFFFFFFFF8;
  v74 = v21 & 0xC000000000000001;
  v24 = MEMORY[0x277D84F90];
  v70 = v21 + 32;
  v67 = v22;
  while (v23 != v22)
  {
    if (v74)
    {
      v25 = MEMORY[0x26D61C170](v23, v66[40]);
    }

    else
    {
      if (v23 >= *(v72 + 16))
      {
        goto LABEL_55;
      }

      v25 = *(v70 + 8 * v23);
    }

    v26 = __OFADD__(v23, 1);
    v27 = v23 + 1;
    if (v26)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v28 = *(v25 + 24);

    v29 = v28 >> 62;
    if (v28 >> 62)
    {
      v1 = sub_2685690A0();
    }

    else
    {
      v1 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v24 >> 62;
    if (v24 >> 62)
    {
      v31 = sub_2685690A0();
    }

    else
    {
      v31 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v1 + v31;
    if (__OFADD__(v31, v1))
    {
      goto LABEL_56;
    }

    v76 = v1;
    v78 = v27;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v30)
      {
LABEL_21:
        sub_2685690A0();
      }

LABEL_22:
      OUTLINED_FUNCTION_29_4();
      v24 = sub_268569000();
      v33 = v24 & 0xFFFFFFFFFFFFFF8;
      v34 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_23;
    }

    if (v30)
    {
      goto LABEL_21;
    }

    v33 = v24 & 0xFFFFFFFFFFFFFF8;
    v34 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v34 < v32)
    {
      goto LABEL_22;
    }

LABEL_23:
    v35 = *(v33 + 16);
    v36 = v34 - v35;
    v37 = v33 + 8 * v35;
    if (v29)
    {
      if (!OUTLINED_FUNCTION_34_4())
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_31_5();
      v38 = sub_2685690A0();
      if (v36 < v38)
      {
        goto LABEL_60;
      }

      if (!(v28 >> 62))
      {
        goto LABEL_61;
      }

      v1 = v38;
      v68 = v24;
      v39 = v37 + 32;
      OUTLINED_FUNCTION_2_20();
      sub_26852DDF0(&qword_2802837B0, &qword_280283440, &qword_26856D320, v40);
      for (i = 0; i != v29; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v42 = sub_2684DEA8C(v2, i, v28);
        v44 = *v43;

        v42(v2, 0);
        *(v39 + 8 * i) = v44;
      }

      v24 = v68;
      v22 = v67;
LABEL_33:

      v23 = v78;
      if (v1 < v76)
      {
        goto LABEL_57;
      }

      if (v1 > 0)
      {
        v45 = *(v33 + 16);
        v26 = __OFADD__(v45, v1);
        v46 = v1 + v45;
        if (v26)
        {
          goto LABEL_58;
        }

        *(v33 + 16) = v46;
      }
    }

    else
    {
      v1 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v1)
      {
        if (v36 < v1)
        {
          goto LABEL_59;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_33;
      }

LABEL_37:

      v23 = v78;
      if (v76 > 0)
      {
        goto LABEL_57;
      }
    }
  }

  v47 = sub_2684DEAF0(v24);
  if (v47)
  {
    v48 = v47;
    v79 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if ((v48 & 0x8000000000000000) == 0)
    {
      sub_2684DB414();
      v50 = 0;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x26D61C170](v50, v24);
        }

        else
        {
        }

        ++v50;
        sub_2685646B8(v51);
        sub_268569020();
        OUTLINED_FUNCTION_27_6();
        sub_268569050();
        OUTLINED_FUNCTION_27_6();
        sub_268569060();
        sub_268569030();
      }

      while (v48 != v50);

      v52 = v79;
      goto LABEL_51;
    }

    __break(1u);
  }

  else
  {

    v52 = MEMORY[0x277D84F90];
LABEL_51:
    v71 = v52;
    v54 = v66[47];
    v53 = v66[48];
    v56 = v66[45];
    v55 = v66[46];
    v57 = v66[43];
    v58 = v66[41];
    v73 = v66[44];
    v75 = v66[42];
    v60 = v66[39];
    v59 = v66[40];
    sub_2684CC878(v58 + 144, (v66 + 2));
    v69 = *(v58 + 312);
    (*(v55 + 16))(v53, v60, v56);
    v61 = (*(v55 + 80) + 24) & ~*(v55 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v58;
    (*(v55 + 32))(v62 + v61, v53, v56);
    *(v62 + ((v54 + v61 + 7) & 0xFFFFFFFFFFFFFFF8)) = v59;
    type metadata accessor for RNYesNoPromptStrategy();
    swift_allocObject();
    v63 = sub_2685276DC(v66 + 2, v71, v69, &unk_26856EB10, v62);
    sub_2684CC878(v58 + 144, (v66 + 18));
    (*(v57 + 104))(v73, *MEMORY[0x277D5BED8], v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837C0, &qword_26856EB18);
    swift_allocObject();
    swift_retain_n();

    v66[38] = sub_26852E4E4(v63, (v66 + 18), v73, sub_268532980, v58, sub_268532A40, v58);
    sub_26852DDF0(&qword_2802837C8, &qword_2802837C0, &qword_26856EB18, &unk_26856C530);
    sub_2685678F0();

    v64 = OUTLINED_FUNCTION_3_18();

    return v65(v64);
  }

  return result;
}

uint64_t sub_26852FFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26853004C;

  return sub_268530C44();
}

uint64_t sub_26853004C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26853013C()
{
  OUTLINED_FUNCTION_5();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_268567B10();
  OUTLINED_FUNCTION_10(v4);
  v1[10] = OUTLINED_FUNCTION_39();
  v5 = sub_268567F20();
  v1[11] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_39();
  v7 = sub_2685689F0();
  v1[14] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268530250()
{
  v65 = v0;
  if (qword_280282960 != -1)
  {
LABEL_63:
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v1 = v0;
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = __swift_project_value_buffer(v4, qword_28028B348);
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_2685689E0();
  v7 = sub_268568DC0();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[15];
  v9 = v1[16];
  v11 = v1[14];
  if (v8)
  {
    v12 = v1[8];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v64 = v14;
    *v13 = 136315138;
    v15 = type metadata accessor for NotificationsApp(0);
    v16 = MEMORY[0x26D61BE70](v12, v15);
    v18 = sub_2684EABEC(v16, v17, &v64);

    *(v13 + 4) = v18;
    OUTLINED_FUNCTION_35_3(&dword_2684CA000, v19, v20, "RNReadNotificationsFromMultipleAppsPatternFlowProvider makeFinalWindowFlow | windowContent: %s");
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v10 + 8))(v9, v11);
  v56 = v1;
  if (*(v1[9] + 312))
  {
LABEL_51:
    v54 = MEMORY[0x277D84F90];
LABEL_52:
    sub_268567AE0();
    *(swift_task_alloc() + 16) = v54;
    sub_268567ED0();

    v55 = swift_task_alloc();
    v56[17] = v55;
    *v55 = v56;
    v55[1] = sub_268530848;

    return sub_268530C44();
  }

  v21 = (v1 + 2);
  v0 = v1[8];
  v22 = sub_2684DEAF0(v0);
  v23 = 0;
  v60 = v0 & 0xFFFFFFFFFFFFFF8;
  v61 = v0 & 0xC000000000000001;
  v24 = MEMORY[0x277D84F90];
  v59 = v0 + 32;
  v57 = v22;
  while (v23 != v22)
  {
    if (v61)
    {
      v0 = MEMORY[0x26D61C170](v23, v56[8]);
    }

    else
    {
      if (v23 >= *(v60 + 16))
      {
        goto LABEL_56;
      }

      v0 = *(v59 + 8 * v23);
    }

    v25 = __OFADD__(v23, 1);
    v26 = v23 + 1;
    if (v25)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v27 = *(v0 + 24);

    v0 = v27 >> 62;
    if (v27 >> 62)
    {
      v28 = sub_2685690A0();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v24 >> 62;
    if (v24 >> 62)
    {
      v30 = sub_2685690A0();
    }

    else
    {
      v30 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v30 + v28;
    if (__OFADD__(v30, v28))
    {
      goto LABEL_57;
    }

    v62 = v28;
    v63 = v26;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v29)
      {
LABEL_21:
        sub_2685690A0();
      }

LABEL_22:
      OUTLINED_FUNCTION_29_4();
      v24 = sub_268569000();
      v32 = v24 & 0xFFFFFFFFFFFFFF8;
      v33 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_23;
    }

    if (v29)
    {
      goto LABEL_21;
    }

    v32 = v24 & 0xFFFFFFFFFFFFFF8;
    v33 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v33 < v31)
    {
      goto LABEL_22;
    }

LABEL_23:
    v34 = *(v32 + 16);
    v35 = v33 - v34;
    v36 = v32 + 8 * v34;
    if (v0)
    {
      v38 = OUTLINED_FUNCTION_34_4();
      if (!v38)
      {
        goto LABEL_37;
      }

      v39 = v38;
      v40 = sub_2685690A0();
      if (v35 < v40)
      {
        goto LABEL_61;
      }

      if (v39 < 1)
      {
        goto LABEL_62;
      }

      v37 = v40;
      v58 = v24;
      v41 = v36 + 32;
      OUTLINED_FUNCTION_2_20();
      v0 = sub_26852DDF0(&qword_2802837B0, &qword_280283440, &qword_26856D320, v42);
      for (i = 0; i != v39; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v44 = sub_2684DEA8C(v21, i, v27);
        v46 = *v45;

        v44(v21, 0);
        *(v41 + 8 * i) = v46;
      }

      v24 = v58;
      v22 = v57;
LABEL_33:

      v23 = v63;
      if (v37 < v62)
      {
        goto LABEL_58;
      }

      if (v37 > 0)
      {
        v47 = *(v32 + 16);
        v25 = __OFADD__(v47, v37);
        v48 = v47 + v37;
        if (v25)
        {
          goto LABEL_59;
        }

        *(v32 + 16) = v48;
      }
    }

    else
    {
      v0 = v27 & 0xFFFFFFFFFFFFFF8;
      v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        if (v35 < v37)
        {
          goto LABEL_60;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_33;
      }

LABEL_37:

      v23 = v63;
      if (v62 > 0)
      {
        goto LABEL_58;
      }
    }
  }

  v49 = sub_2684DEAF0(v24);
  if (!v49)
  {

    goto LABEL_51;
  }

  v50 = v49;
  v64 = MEMORY[0x277D84F90];
  result = sub_268569040();
  if ((v50 & 0x8000000000000000) == 0)
  {
    sub_2684DB414();
    v52 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x26D61C170](v52, v24);
      }

      else
      {
      }

      ++v52;
      sub_2685646B8(v53);
      sub_268569020();
      OUTLINED_FUNCTION_27_6();
      sub_268569050();
      OUTLINED_FUNCTION_27_6();
      sub_268569060();
      sub_268569030();
    }

    while (v50 != v52);

    v54 = v64;
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

uint64_t sub_268530848(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v5 + 144) = v1;

  if (v1)
  {
    v8 = sub_268530A58;
  }

  else
  {
    *(v5 + 152) = a1;
    v8 = sub_268530964;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_268530964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_24_8();
  v13 = v12[19];
  v15 = v12[12];
  v14 = v12[13];
  v16 = v12[11];
  __swift_project_boxed_opaque_existential_1((v12[9] + 64), *(v12[9] + 88));
  v12[6] = sub_268567850();
  sub_268567790();
  sub_2685678E0();

  (*(v15 + 8))(v14, v16);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_268530A58()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_9_1();

  return v1();
}

uint64_t sub_268530AF0(uint64_t a1, unint64_t a2)
{
  v3 = sub_268567CE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_268567CD0();
  sub_268509368(a2, v9);
  (*(v4 + 8))(v6, v3);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
  sub_268567EF0();
  return sub_268567EE0();
}

uint64_t sub_268530C44()
{
  OUTLINED_FUNCTION_5();
  v1[110] = v0;
  v1[109] = v2;
  v1[108] = v3;
  v4 = sub_2685679B0();
  v1[111] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[112] = v5;
  v1[113] = OUTLINED_FUNCTION_39();
  v6 = sub_268567B60();
  v1[114] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[115] = v7;
  v1[116] = OUTLINED_FUNCTION_39();
  v8 = sub_2685689F0();
  v1[117] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[118] = v9;
  v1[119] = OUTLINED_FUNCTION_39();
  v10 = sub_2685688F0();
  v1[120] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[121] = v11;
  v1[122] = OUTLINED_FUNCTION_39();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v12);
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_268530E14()
{
  v131 = (v0 + 856);
  v124 = *(v0 + 880);
  v2 = *(v124 + 104);
  v3 = sub_2684DEAF0(v2);

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v3 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D61C170](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_99;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_99:
      __break(1u);
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
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v1 = v130;
    v9 = *(v130 + 992);
    sub_2684D4298(v7 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v9);
    v10 = sub_268568810();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
    v12 = *(v130 + 992);
    if (EnumTagSinglePayload == 1)
    {

      sub_2684D199C(v12, &qword_280282AF0, &qword_26856A1E0);
      ++v5;
    }

    else
    {
      v13 = sub_268568800();
      v1 = v14;

      v15 = OUTLINED_FUNCTION_23_7();
      v16(v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26854BB3C();
        v6 = v19;
      }

      v17 = *(v6 + 16);
      if (v17 >= *(v6 + 24) >> 1)
      {
        sub_26854BB3C();
        v6 = v20;
      }

      *(v6 + 16) = v17 + 1;
      v18 = v6 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v1;
      v5 = v8;
    }
  }

  v21 = v130;
  v22 = *(v130 + 880);

  v23 = *(v22 + 16);
  *(v130 + 1000) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283798, &unk_26856EF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856E8F0;
  *(inited + 32) = 0x73656D614E707061;
  *(inited + 40) = 0xE800000000000000;
  v123 = inited;
  v3 = v124;
  v25 = sub_2684DEAF0(*(v124 + 104));
  v121 = v23;
  if (v25 > 4)
  {
    sub_26853DC20();
    OUTLINED_FUNCTION_25_4();
    if ((v2 & 1) == 0)
    {
      goto LABEL_23;
    }

    v3 = sub_2685691E0();
    swift_unknownObjectRetain_n();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
      swift_unknownObjectRelease();
      v26 = MEMORY[0x277D84F90];
    }

    v27 = *(v26 + 16);

    v28 = (v2 >> 1) - v130;
    if (!__OFSUB__(v2 >> 1, v130))
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  sub_26853DC20();
  OUTLINED_FUNCTION_25_4();
  if ((v2 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_2685691E0();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x277D84F90];
  }

  v27 = *(v33 + 16);

  v28 = (v2 >> 1) - v130;
  if (__OFSUB__(v2 >> 1, v130))
  {
LABEL_114:
    __break(1u);
    return MEMORY[0x2821B7E60](v34, v35, v36, v37, v38, v39, v40);
  }

LABEL_27:
  if (v27 != v28)
  {
    goto LABEL_112;
  }

  v32 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v32)
  {
    v32 = MEMORY[0x277D84F90];
    v3 = v124;
    goto LABEL_31;
  }

  v3 = v124;
  while (1)
  {
    v41 = *(v130 + 872);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    v2 = v123;
    *(v123 + 48) = v32;
    *(v123 + 72) = v42;
    strcpy((v123 + 80), "isConclusion");
    *(v123 + 93) = 0;
    *(v123 + 94) = -5120;
    v43 = sub_268567FA0();
    v44 = MEMORY[0x277D839B0];
    *(v123 + 96) = v43 & 1;
    *(v123 + 120) = v44;
    strcpy((v123 + 128), "isFirstWindow");
    *(v123 + 142) = -4864;
    *(v123 + 144) = sub_268567FC0() & 1;
    *(v123 + 168) = v44;
    strcpy((v123 + 176), "isLastWindow");
    *(v123 + 189) = 0;
    *(v123 + 190) = -5120;
    *(v123 + 192) = sub_268567FB0() & 1;
    *(v123 + 216) = v44;
    *(v123 + 224) = 0xD000000000000016;
    *(v123 + 232) = 0x8000000268572CE0;
    *(v123 + 240) = sub_268567F70() & 1;
    *(v123 + 264) = v44;
    *(v123 + 272) = 0x736D657469;
    *(v123 + 280) = 0xE500000000000000;
    v45 = sub_2684DEAF0(v41);
    v46 = MEMORY[0x277D84F90];
    if (!v45)
    {
      break;
    }

    v21 = v45;
    v135 = MEMORY[0x277D84F90];
    sub_2684DD058(0, v45 & ~(v45 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v47 = 0;
      v48 = *(v130 + 872);
      v46 = v135;
      v49 = v48 & 0xC000000000000001;
      v133 = v48 + 32;
      do
      {
        if (v49)
        {
          v50 = MEMORY[0x26D61C170](v47, *(v130 + 872));
        }

        else
        {
          v50 = *(v133 + 8 * v47);
        }

        *v131 = v50;
        type metadata accessor for NotificationsApp(0);
        sub_2685329F8(&qword_2802837A0, 255, type metadata accessor for NotificationsApp, &unk_26856D678);
        v51 = sub_2685688B0();

        v53 = *(v135 + 16);
        v52 = *(v135 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_2684DD058((v52 > 1), v53 + 1, 1);
        }

        ++v47;
        *(v135 + 16) = v53 + 1;
        *(v135 + 8 * v53 + 32) = v51;
      }

      while (v21 != v47);
      v3 = v124;
      break;
    }

    __break(1u);
LABEL_112:
    swift_unknownObjectRelease();
    v3 = v124;
LABEL_23:
    v29 = OUTLINED_FUNCTION_23_7();
    sub_26853D830(v29, v30, v21, v2);
    v32 = v31;
LABEL_31:
    swift_unknownObjectRelease();
  }

  v54 = *(v130 + 880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837A8, &unk_26856EFA0);
  *(v123 + 288) = v46;
  OUTLINED_FUNCTION_8_15();
  *(v57 + 312) = v55;
  *(v57 + 320) = v56;
  *(v57 + 328) = v58;
  *(v57 + 336) = (*(v54 + 312) & 1) == 0;
  *(v57 + 360) = MEMORY[0x277D839B0];
  *(v57 + 368) = 0x6574496C61746F74;
  *(v57 + 376) = 0xEA0000000000736DLL;
  v59 = *(v3 + 104);
  v60 = sub_2684DEAF0(v59);
  v61 = v59 & 0xC000000000000001;
  v127 = v59 + 32;
  v128 = v59 & 0xFFFFFFFFFFFFFF8;
  v122 = v59;

  v62 = 0;
  v1 = MEMORY[0x277D84F90];
  v125 = v59 & 0xC000000000000001;
  v126 = v60;
  while (v62 != v60)
  {
    if (v61)
    {
      v63 = MEMORY[0x26D61C170](v62, v122);
    }

    else
    {
      if (v62 >= *(v128 + 16))
      {
        goto LABEL_101;
      }

      v63 = *(v127 + 8 * v62);
    }

    v64 = __OFADD__(v62, 1);
    v65 = v62 + 1;
    if (v64)
    {
      goto LABEL_100;
    }

    v66 = *(v63 + 24);

    if (v66 >> 62)
    {
      v3 = sub_2685690A0();
    }

    else
    {
      v3 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = v1 >> 62;
    v134 = v65;
    if (v1 >> 62)
    {
      v68 = sub_2685690A0();
    }

    else
    {
      v68 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v69 = v68 + v3;
    if (__OFADD__(v68, v3))
    {
      goto LABEL_102;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v67)
      {
LABEL_58:
        sub_2685690A0();
      }

LABEL_59:
      v1 = sub_268569000();
      v70 = v1 & 0xFFFFFFFFFFFFFF8;
      v71 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_60;
    }

    if (v67)
    {
      goto LABEL_58;
    }

    v70 = v1 & 0xFFFFFFFFFFFFFF8;
    v71 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v71 < v69)
    {
      goto LABEL_59;
    }

LABEL_60:
    v132 = v1;
    v72 = *(v70 + 16);
    v73 = v71 - v72;
    v74 = v70 + 8 * v72;
    v129 = v70;
    if (v66 >> 62)
    {
      v76 = sub_2685690A0();
      if (!v76)
      {
        goto LABEL_74;
      }

      v1 = v76;
      v77 = sub_2685690A0();
      if (v73 < v77)
      {
        goto LABEL_106;
      }

      if (v1 < 1)
      {
        goto LABEL_107;
      }

      v75 = v77;
      OUTLINED_FUNCTION_2_20();
      sub_26852DDF0(&qword_2802837B0, &qword_280283440, &qword_26856D320, v78);
      for (i = 0; i != v1; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v80 = sub_2684DEA8C(v6, i, v66);
        v82 = *v81;

        v80(v6, 0);
        *(v74 + 32 + 8 * i) = v82;
      }

      v61 = v125;
      v60 = v126;
LABEL_70:

      v1 = v132;
      v62 = v134;
      if (v75 < v3)
      {
        goto LABEL_103;
      }

      if (v75 > 0)
      {
        v83 = *(v129 + 16);
        v64 = __OFADD__(v83, v75);
        v84 = v83 + v75;
        if (v64)
        {
          goto LABEL_104;
        }

        *(v129 + 16) = v84;
      }
    }

    else
    {
      v75 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
        if (v73 < v75)
        {
          goto LABEL_105;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_70;
      }

LABEL_74:

      v62 = v134;
      if (v3 > 0)
      {
        goto LABEL_103;
      }
    }
  }

  v85 = *(v130 + 880);

  v86 = sub_2684DEAF0(v1);

  v6 = MEMORY[0x277D83B88];
  v3 = v123;
  *(v123 + 384) = v86;
  OUTLINED_FUNCTION_8_15();
  *(v123 + 408) = v6;
  *(v123 + 416) = v87 + 3;
  *(v123 + 424) = v88;
  *(v123 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837B8, &unk_26856EFB0);
  v89 = *(v85 + 304);
  v90 = v89 + 1;
  if (__OFADD__(v89, 1))
  {
    goto LABEL_108;
  }

  v1 = v124;

  v91 = OUTLINED_FUNCTION_23_7();
  sub_26855D244(v91, v92);
  OUTLINED_FUNCTION_31_5();

  if (v90)
  {
    v93 = *(v90 + 24);

    v94 = sub_2684DEAF0(v93);
  }

  else
  {
    v94 = 0;
  }

  *(v123 + 432) = v94;
  *(v123 + 440) = v90 == 0;
  *(v123 + 464) = 0x4E7070417478656ELL;
  *(v123 + 472) = 0xEB00000000656D61;
  *(v123 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A50, &unk_268569F80);
  v95 = *(v85 + 304);
  v96 = v95 + 1;
  if (__OFADD__(v95, 1))
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v97 = OUTLINED_FUNCTION_23_7();
  sub_26855D244(v97, v98);
  OUTLINED_FUNCTION_31_5();

  if (!v96)
  {
    goto LABEL_87;
  }

  v99 = *(v130 + 984);
  sub_2684D4298(v96 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v99);

  v100 = sub_268568810();
  if (__swift_getEnumTagSinglePayload(v99, 1, v100) == 1)
  {
    sub_2684D199C(*(v130 + 984), &qword_280282AF0, &qword_26856A1E0);
LABEL_87:
    *(v123 + 480) = 0;
    *(v123 + 488) = 0;
  }

  else
  {
    v101 = sub_268568800();
    v103 = v102;
    v104 = OUTLINED_FUNCTION_23_7();
    v105(v104);
    *(v123 + 480) = v101;
    *(v123 + 488) = v103;
  }

  v106 = *(v130 + 872);
  *(v123 + 512) = 0x6953776F646E6977;
  *(v123 + 520) = 0xEA0000000000657ALL;
  v107 = v106 & 0xC000000000000001;
  sub_2684DEAFC();
  v4 = *(v130 + 872);
  if (!v107)
  {
    v108 = *(v4 + 32);

    goto LABEL_91;
  }

LABEL_110:
  v108 = MEMORY[0x26D61C170](0, v4);
LABEL_91:
  v109 = *(v108 + 24);

  sub_2684DEAF0(v109);
  OUTLINED_FUNCTION_31_5();

  *(v3 + 552) = v6;
  *(v3 + 528) = v108;
  OUTLINED_FUNCTION_8_15();
  v111 = v110 + 5;
  *(v3 + 560) = v110 + 5;
  *(v3 + 568) = v112;
  if (sub_2684DEAF0(*(v1 + 104)) < 5)
  {
    v113 = 0;
    goto LABEL_95;
  }

  v34 = sub_2684DEAF0(*(v1 + 104));
  if (__OFSUB__(v34, 4))
  {
    __break(1u);
    goto LABEL_114;
  }

  v113 = v34 - 3;
LABEL_95:
  v114 = *(v130 + 880);
  sub_2685687E0();
  *(v3 + 600) = v6;
  *(v3 + 576) = v113;
  *(v3 + 608) = v111;
  *(v3 + 616) = 0x80000002685735C0;
  v115 = *(v114 + 320) % 3;
  *(v3 + 648) = v6;
  *(v3 + 624) = v115;
  *(v3 + 656) = 0xD000000000000010;
  *(v3 + 664) = 0x8000000268571A90;
  LOBYTE(v115) = *(v114 + 296);
  *(v3 + 696) = MEMORY[0x277D839B0];
  *(v3 + 672) = v115;
  v116 = sub_268568AD0();
  *(v130 + 1008) = v116;
  sub_2685686F0();
  sub_2685685F0();
  v117 = sub_2685685D0();
  v118 = sub_268516318(v114 + 184, v117);
  *(v130 + 1016) = v118;

  *(v130 + 752) = 0;
  *(v130 + 720) = 0u;
  *(v130 + 736) = 0u;
  sub_2685688E0();
  v119 = swift_task_alloc();
  *(v130 + 1024) = v119;
  *v119 = v130;
  v119[1] = sub_268531BC8;
  v40 = *(v130 + 976);
  v35 = 0xD000000000000033;
  v36 = 0x8000000268573580;
  v39 = v130 + 720;
  v34 = v121;
  v37 = v116;
  v38 = v118;

  return MEMORY[0x2821B7E60](v34, v35, v36, v37, v38, v39, v40);
}

uint64_t sub_268531BC8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v2[104] = v1;
  v2[105] = v4;
  v2[106] = v0;
  v5 = v2[127];
  v6 = v2[125];
  v7 = v2[122];
  v8 = v2[121];
  v9 = v2[120];
  v10 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v11 = v10;
  v3[129] = v0;

  (*(v8 + 8))(v7, v9);
  sub_2684D199C((v3 + 90), &qword_280282DB0, &unk_26856B440);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_268531D9C()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v1 = v0[118];
  __swift_project_value_buffer(v0[117], qword_28028B348);
  v2 = OUTLINED_FUNCTION_12_2();
  v3(v2);
  v4 = sub_2685689E0();
  v5 = sub_268568DC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v6);
    _os_log_impl(&dword_2684CA000, v4, v5, "RNReadNotificationsFromMultipleAppsPatternFlowProvider executePatternForWindow | pattern successfully executed", v1, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  v7 = v0[119];
  v8 = v0[118];
  v9 = v0[117];

  (*(v8 + 8))(v7, v9);
  result = sub_268567FB0();
  if (result)
  {
    v11 = v0[116];
    v12 = v0[115];
    v13 = v0[114];
    v14 = v0[113];
    v15 = v0[112];
    v16 = v0[111];
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v0 + 95, v0[98]);
    sub_268567A20();
    (*(v12 + 104))(v11, *MEMORY[0x277D5BC10], v13);
    (*(v15 + 104))(v14, *MEMORY[0x277D5B958], v16);
    sub_2684EBB74(1u, 3, v11, v14, 8, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    result = __swift_destroy_boxed_opaque_existential_0(v0 + 95);
  }

  v17 = v0[110];
  v18 = *(v17 + 304);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 304) = v20;

    v21 = OUTLINED_FUNCTION_3_18();

    return v22(v21);
  }

  return result;
}

uint64_t sub_268532028()
{

  OUTLINED_FUNCTION_9_1();

  return v0();
}

void sub_2685320D4()
{
  v1 = *(v0 + 320);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 320) = v3;
  }
}

uint64_t sub_2685320EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  sub_2684CC8D4(v0 + 144);

  return v0;
}

uint64_t sub_26853214C()
{
  sub_2685320EC();

  return MEMORY[0x2821FE8D8](v0, 328, 7);
}

uint64_t sub_2685321BC()
{
  v1 = *(*v0 + 272);

  return v1;
}

uint64_t sub_2685321F0()
{
  v1 = sub_2685678D0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_268532250()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_26852EA90();
}

uint64_t sub_2685322E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_26852ECF4();
}

uint64_t sub_268532370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_26852EF80();
}

uint64_t sub_268532400()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_26852F1E4();
}

uint64_t sub_2685324AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_26853013C();
}

uint64_t sub_268532554()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_26852F6DC();
}

uint64_t sub_268532644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2685326BC()
{
  v1 = sub_268567FF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_268532794()
{
  v2 = sub_268567FF0();
  OUTLINED_FUNCTION_2_4(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_268532894;

  return sub_26852FFA0(v6, v0 + v4, v7);
}

uint64_t sub_268532894()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_268532988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837D0, &unk_26856EB20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2685329F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return sub_268567850();
}

uint64_t OUTLINED_FUNCTION_13_14()
{

  return sub_268567ED0();
}

void OUTLINED_FUNCTION_14_6()
{
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_4()
{

  return sub_2685690A0();
}

void OUTLINED_FUNCTION_35_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_268532BF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 26))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_268532C4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for UnsupportedNotificationsCATs(uint64_t a1)
{
  result = qword_280283800;
  if (!qword_280283800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268532D40(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_268532D58()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x80000002685713E0;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55BF0];
  *(v2 + 48) = v1;
  v7 = (v3 + *v3);
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_26856A540;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_268532E88;
  v5 = *(v0 + 16);

  return v7(v5, 0xD000000000000024, 0x8000000268573180, v2);
}

uint64_t sub_268532E88()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v5 = v4;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26850FEB4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_9_1();

    return v6();
  }
}

uint64_t sub_268532FB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_12();
}

uint64_t sub_268532FCC()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283418, &qword_26856D020);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_26856A540;
  *(v2 + 32) = 0x656D614E707061;
  *(v2 + 40) = 0xE700000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2685687A0();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v7 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26853311C;
  v5 = v0[2];

  return v7(v5, 0xD000000000000031, 0x8000000268573620, v2);
}

uint64_t sub_26853311C()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v5 = v4;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26850D9D4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_9_1();

    return v6();
  }
}

uint64_t sub_26853329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2685688F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2684F3D80(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_268568700();
  (*(v6 + 8))(a2, v5);
  sub_2684F3DF0(a1);
  return v11;
}

uint64_t sub_268533410@<X0>(uint64_t a1@<X8>)
{
  v16[2] = a1;
  v2 = sub_2685679B0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_268567B60();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268567990();
  v16[1] = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_268567A20();
  (*(v10 + 104))(v13, *MEMORY[0x277D5BC10], v8);
  (*(v4 + 104))(v7, *MEMORY[0x277D5B950], v2);
  if (*(v1 + 33))
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  sub_2684EBB74(2u, 9, v13, v7, 8, 0, 0, 0, 0, v14 | *(v1 + 32));
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v17);
  return sub_268567D20();
}

uint64_t sub_268533628(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 56) = a3;
  memcpy((v7 + 64), __src, 0x80uLL);
  *(v7 + 32) = a5 & 1;
  *(v7 + 33) = HIBYTE(a5) & 1;
  return v7;
}

uint64_t sub_268533678(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RNReadHighlightWindowFlow();
  sub_2685347A8();
  return sub_268567900();
}

uint64_t sub_2685336D4()
{
  OUTLINED_FUNCTION_5();
  v1[17] = v2;
  v1[18] = v0;
  sub_268567B10();
  v1[19] = swift_task_alloc();
  v3 = sub_268567F20();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v4 = sub_2685689F0();
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26853382C()
{
  OUTLINED_FUNCTION_19_3();
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  v0[28] = v4;
  v5 = *(v3 + 16);
  v0[29] = v5;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "CompletingFlow#execute", v8, 2u);
    OUTLINED_FUNCTION_2();
  }

  v9 = v0[24];
  v10 = v0[18];

  v0[31] = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_34();
  v12(v11);
  v15 = (*(v10 + 40) + **(v10 + 40));
  v13 = swift_task_alloc();
  v0[32] = v13;
  *v13 = v0;
  v13[1] = sub_268533A1C;

  return v15();
}

uint64_t sub_268533A1C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 264) = v4;
  *(v2 + 272) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268533B1C(uint64_t a1)
{
  sub_268567AE0();
  sub_268567ED0();
  sub_268567D00();
  swift_allocObject();
  v1[35] = sub_268567CF0();
  v6 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  v2 = swift_task_alloc();
  v1[36] = v2;
  *v2 = v1;
  v2[1] = sub_268533C2C;
  v3 = v1[33];
  v4 = v1[22];

  return v6(v1 + 2, v3, v4);
}

uint64_t sub_268533C2C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268533D40()
{
  v19 = v0;
  (*(v0 + 232))(*(v0 + 208), *(v0 + 224), *(v0 + 184));
  sub_2684D57FC(v0 + 16, v0 + 56);
  v1 = sub_2685689E0();
  v2 = sub_268568DD0();
  if (os_log_type_enabled(v1, v2))
  {
    v17 = *(v0 + 248);
    v3 = OUTLINED_FUNCTION_4();
    v4 = swift_slowAlloc();
    v18 = v4;
    *v3 = 136315138;
    sub_2684D57FC(v0 + 56, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283810, &qword_26856ECF8);
    v5 = sub_268568B70();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v8 = sub_2684EABEC(v5, v7, &v18);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_2684CA000, v1, v2, "CompletingFlow#execute output=%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6_19();

    v9 = OUTLINED_FUNCTION_34();
    v17(v9);
  }

  else
  {
    v10 = *(v0 + 248);

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v11 = OUTLINED_FUNCTION_34();
    v10(v11);
  }

  v12 = *(v0 + 144);
  v13 = v12[21];
  v14 = v12[22];
  __swift_project_boxed_opaque_existential_1(v12 + 18, v13);
  v15 = swift_task_alloc();
  *(v0 + 304) = v15;
  *v15 = v0;
  v15[1] = sub_268533F74;

  return MEMORY[0x2821BB5D0](v0 + 16, v13, v14);
}

uint64_t sub_268533F74()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26853406C()
{
  OUTLINED_FUNCTION_19_3();
  v1 = v0[33];
  (*(v0[18] + 16))();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = OUTLINED_FUNCTION_34();
  v4 = v3(v2);
  OUTLINED_FUNCTION_0_20(v4);

  OUTLINED_FUNCTION_9_1();

  return v5();
}

uint64_t sub_268534134()
{
  OUTLINED_FUNCTION_19_3();
  v2 = *(v0 + 272);
  v3 = OUTLINED_FUNCTION_1_18();
  v4(v3);
  v5 = v2;
  v6 = sub_2685689E0();
  v7 = sub_268568DE0();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_4();
    v8 = OUTLINED_FUNCTION_12_15();
    *v1 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_4_20(&dword_2684CA000, v11, v12, "CompletingFlow#execute error=%@");
    sub_2684CECB8(v8);
    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v13 = OUTLINED_FUNCTION_3_19();
  v15 = v14(v13);
  OUTLINED_FUNCTION_0_20(v15);

  OUTLINED_FUNCTION_9_1();

  return v16();
}

uint64_t sub_268534280()
{
  OUTLINED_FUNCTION_19_3();
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 296);
  v6 = OUTLINED_FUNCTION_1_18();
  v7(v6);
  v8 = v5;
  v9 = sub_2685689E0();
  LOBYTE(v3) = sub_268568DE0();

  if (os_log_type_enabled(v9, v3))
  {
    OUTLINED_FUNCTION_4();
    v10 = OUTLINED_FUNCTION_12_15();
    *v1 = 138412290;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_4_20(&dword_2684CA000, v13, v14, "CompletingFlow#execute error=%@");
    sub_2684CECB8(v10);
    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v15 = OUTLINED_FUNCTION_3_19();
  v17 = v16(v15);
  OUTLINED_FUNCTION_0_20(v17);

  OUTLINED_FUNCTION_9_1();

  return v18();
}

uint64_t sub_2685343F4()
{
  OUTLINED_FUNCTION_19_3();
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 312);
  v6 = OUTLINED_FUNCTION_1_18();
  v7(v6);
  v8 = v5;
  v9 = sub_2685689E0();
  LOBYTE(v3) = sub_268568DE0();

  if (os_log_type_enabled(v9, v3))
  {
    OUTLINED_FUNCTION_4();
    v10 = OUTLINED_FUNCTION_12_15();
    *v1 = 138412290;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_4_20(&dword_2684CA000, v13, v14, "CompletingFlow#execute error=%@");
    sub_2684CECB8(v10);
    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  v15 = OUTLINED_FUNCTION_3_19();
  v17 = v16(v15);
  OUTLINED_FUNCTION_0_20(v17);

  OUTLINED_FUNCTION_9_1();

  return v18();
}

uint64_t sub_268534570(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_268567F10();
  sub_268516DA4(0, 0xE000000000000000, *(a2 + 56), v5);
  v6 = sub_268567CE0();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_268567EF0();
}

uint64_t sub_26853462C()
{

  sub_2684CC8D4(v0 + 64);
  return v0;
}

uint64_t sub_268534664()
{
  sub_26853462C();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_2685346E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_2685336D4();
}

unint64_t sub_2685347A8()
{
  result = qword_280283818;
  if (!qword_280283818)
  {
    type metadata accessor for RNReadHighlightWindowFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283818);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return sub_268567C40();
}

void OUTLINED_FUNCTION_4_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_6_19()
{

  JUMPOUT(0x26D61CB30);
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return swift_slowAlloc();
}

uint64_t sub_2685348A4()
{
  OUTLINED_FUNCTION_5();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_268534934;

  return sub_268534B0C();
}

uint64_t sub_268534934()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_8();
  *v2 = v1;
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_9_8();
  *v6 = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;

  return MEMORY[0x2822009F8](sub_268534A40, v4, 0);
}

uint64_t sub_268534A40()
{
  OUTLINED_FUNCTION_5();
  *(*(v0 + 16) + 112) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_268534AB0, 0, 0);
}

uint64_t sub_268534AB0()
{
  OUTLINED_FUNCTION_5();
  sub_268568E40();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268534B0C()
{
  v1[13] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v1[14] = swift_task_alloc();
  v2 = sub_2685689F0();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = sub_268567BB0();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283820, &qword_26856ED88);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = sub_268567D90();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  v1[34] = swift_task_alloc();
  v5 = sub_268567520();
  v1[35] = v5;
  v1[36] = *(v5 - 8);
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268534DF4, 0, 0);
}

uint64_t sub_268535838()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v5 = v4;
  *(v2 + 400) = v0;

  if (v0)
  {

    v6 = sub_268536F40;
  }

  else
  {
    v6 = sub_268535948;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2685363A4()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_8();
  *v5 = v4;
  *(v2 + 416) = v0;

  sub_2684D199C(*(v2 + 112), &qword_280282AF0, &qword_26856A1E0);
  if (v0)
  {

    v6 = sub_268537204;
  }

  else
  {
    v6 = sub_2685364E8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_268536F40()
{
  v60 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = v0[50];
  __swift_project_value_buffer(v0[15], qword_28028B348);
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  v4 = v1;
  v5 = sub_2685689E0();
  v6 = sub_268568DE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[50];
  v9 = v0[44];
  v10 = v0[45];
  v11 = v0[37];
  v12 = v0[35];
  v13 = v0[36];
  v58 = v0[18];
  v56 = v0[38];
  v57 = v0[15];
  if (v7)
  {
    v53 = v0[45];
    v14 = OUTLINED_FUNCTION_4();
    v55 = v9;
    v15 = OUTLINED_FUNCTION_51();
    v59 = v15;
    *v14 = 136315138;
    v0[12] = v8;
    v16 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v17 = sub_268568B70();
    v48 = v12;
    v19 = sub_2684EABEC(v17, v18, &v59);

    *(v14 + 4) = v19;
    OUTLINED_FUNCTION_61_0(&dword_2684CA000, v20, v21, "URLFormatter replaceText | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v30 = OUTLINED_FUNCTION_42_3(v22, v23, v24, v25, v26, v27, v28, v29, v46, v48, v11, v53, v55, v56, v57, v58);
    v31(v30);
    (*(v13 + 8))(v51, v49);
  }

  else
  {

    v40 = OUTLINED_FUNCTION_42_3(v32, v33, v34, v35, v36, v37, v38, v39, v46, v47, v50, v52, v54, v56, v57, v58);
    v41(v40);
    v42 = OUTLINED_FUNCTION_6_20();
    v43(v42);
  }

  OUTLINED_FUNCTION_9_17();

  OUTLINED_FUNCTION_29_5();

  return v44(0, 0);
}

uint64_t sub_268537204()
{
  v60 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = v0[52];
  __swift_project_value_buffer(v0[15], qword_28028B348);
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  v4 = v1;
  v5 = sub_2685689E0();
  v6 = sub_268568DE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[52];
  v9 = v0[44];
  v10 = v0[45];
  v11 = v0[37];
  v12 = v0[35];
  v13 = v0[36];
  v58 = v0[17];
  v56 = v0[38];
  v57 = v0[15];
  if (v7)
  {
    v53 = v0[45];
    v14 = OUTLINED_FUNCTION_4();
    v55 = v9;
    v15 = OUTLINED_FUNCTION_51();
    v59 = v15;
    *v14 = 136315138;
    v0[11] = v8;
    v16 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v17 = sub_268568B70();
    v48 = v12;
    v19 = sub_2684EABEC(v17, v18, &v59);

    *(v14 + 4) = v19;
    OUTLINED_FUNCTION_61_0(&dword_2684CA000, v20, v21, "URLFormatter replaceText | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v30 = OUTLINED_FUNCTION_42_3(v22, v23, v24, v25, v26, v27, v28, v29, v46, v48, v11, v53, v55, v56, v57, v58);
    v31(v30);
    (*(v13 + 8))(v51, v49);
  }

  else
  {

    v40 = OUTLINED_FUNCTION_42_3(v32, v33, v34, v35, v36, v37, v38, v39, v46, v47, v50, v52, v54, v56, v57, v58);
    v41(v40);
    v42 = OUTLINED_FUNCTION_6_20();
    v43(v42);
  }

  OUTLINED_FUNCTION_9_17();

  OUTLINED_FUNCTION_29_5();

  return v44(0, 0);
}

uint64_t sub_2685374C8()
{
  v0 = sub_2685689F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2685674F0();
  v5 = [v4 _lp_simplifiedDisplayString];

  v6 = sub_268568B20();
  v8 = v7;

  v26 = v6;
  v27 = v8;
  v25[0] = 46;
  v25[1] = 0xE100000000000000;
  sub_2684D166C();
  v9 = sub_268568EE0();
  if (*(v9 + 16) < 2uLL)
  {

    return v6;
  }

  v10 = sub_2685377E4(1, v9);
  if (*(v10 + 16))
  {
    v11 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  sub_268524298();
  v11 = v24;
LABEL_5:
  v12 = *(v11 + 16);
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12 - 1;
  v14 = v11 + 16 * v13;
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);
  *(v11 + 16) = v13;

  v26 = v15;
  v27 = v16;
  v6 = sub_268568EF0();
  v8 = v17;

  if (qword_280282960 != -1)
  {
LABEL_14:
    swift_once();
  }

  v18 = __swift_project_value_buffer(v0, qword_28028B348);
  (*(v1 + 16))(v3, v18, v0);

  v19 = sub_2685689E0();
  v20 = sub_268568DC0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2684EABEC(v6, v8, &v26);
    _os_log_impl(&dword_2684CA000, v19, v20, "URLFormatter getDomain | domain: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26D61CB30](v22, -1, -1);
    MEMORY[0x26D61CB30](v21, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_2685377E4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return a2;
    }

    v25 = 0;
    v4 = 0;
    v27 = *(a2 + 16);
    v5 = a2 + 40;
    v6 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    for (i = a2 + 40; ; v5 = i)
    {
      for (j = (v5 + 16 * v4); ; j += 2)
      {
        if (v27 == v4)
        {

          return v26;
        }

        if (v4 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v9 = *(j - 1);
        v8 = *j;
        v10 = *(v6 + 16);
        if (v10 >= v3)
        {
          break;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2684DCF68(0, v10 + 1, 1);
        }

        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_2684DCF68((v11 > 1), v12 + 1, 1);
        }

        *(v6 + 16) = v12 + 1;
        v13 = v6 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v8;
        ++v4;
      }

      if (v25 >= v10)
      {
        goto LABEL_29;
      }

      v14 = v6 + 16 * v25;
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);

      v17 = v26;
      v23 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2684DCF68(0, *(v26 + 16) + 1, 1);
        v17 = v26;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2684DCF68((v18 > 1), v19 + 1, 1);
        v17 = v26;
      }

      *(v17 + 16) = v19 + 1;
      v26 = v17;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v23;
      *(v20 + 40) = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_268537BA8(v6);
        v6 = result;
      }

      if (v25 >= *(v6 + 16))
      {
        break;
      }

      v21 = v6 + 16 * v25;
      ++v4;
      *(v21 + 32) = v9;
      *(v21 + 40) = v8;

      if ((v25 + 1) < v3)
      {
        v22 = v25 + 1;
      }

      else
      {
        v22 = 0;
      }

      v25 = v22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268537A1C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_268537AA0()
{
  result = qword_280282AA0;
  if (!qword_280282AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280282AA0);
  }

  return result;
}

id OUTLINED_FUNCTION_7_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *v13 = a11;
  *(v13 + 4) = v12;
  *v11 = v12;
  *(v13 + 12) = 2080;

  return v12;
}

uint64_t OUTLINED_FUNCTION_9_17()
{
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = v22 + 16 * *(v21 + 376);
  *(v24 + 32) = a20;
  *(v24 + 40) = v20;
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_35_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16)
{
  *(v17 + 14) = v16;
  *(v17 + 22) = 2080;

  return sub_2684EABEC(a15, a16, (v18 - 80));
}

BOOL OUTLINED_FUNCTION_36_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_37_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_268568AF0();
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1, uint64_t a2)
{

  return sub_2685691C0();
}

uint64_t OUTLINED_FUNCTION_54_1()
{
  *(v0 + 16) = *(v1 + 24);
}

void OUTLINED_FUNCTION_55_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_57_0(float a1)
{
  *v3 = a1;

  return sub_2684EABEC(v2, v1, (v4 - 80));
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  *(v0 + 80) = v1;
}

void OUTLINED_FUNCTION_59_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1, uint64_t a2)
{

  return sub_268568DA0();
}

void OUTLINED_FUNCTION_61_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_62_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_2685380D4(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v12 = sub_2685690B0();

    return v12;
  }

  v4 = sub_2684DEAF0(a2);
  v5 = sub_26853D9B8(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_2684F7A04(0, a2);
  v8 = OUTLINED_FUNCTION_17_9();
  sub_2684F7A04(v8, v9);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_2684DB414();

    v10 = 0;
    do
    {
      v11 = v10 + 1;
      sub_268568FE0();
      v10 = v11;
    }

    while (v7 != v11);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

unint64_t sub_26853820C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_26853D9B8(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_2685382A4(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2685382A4(unint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_268538310@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = *a1;
  type metadata accessor for NotificationsApp.Builder(0);
  swift_allocObject();
  sub_268518184();
  v13 = sub_2684DEAF0(v12);
  v31 = v2;
  v28 = v9;
  v29 = a2;
  if (v13)
  {
    v14 = v13;
    v30 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v17 = v12 & 0xC000000000000001;
    do
    {
      if (v17)
      {
        MEMORY[0x26D61C170](v16, v12);
      }

      else
      {
      }

      ++v16;
      sub_268555B38();

      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v14 != v16);
    v18 = v30;
  }

  else
  {
    v17 = v12 & 0xC000000000000001;
    v18 = MEMORY[0x277D84F90];
  }

  v19 = sub_268518208(v18);

  OUTLINED_FUNCTION_33_3();
  sub_2684DEAFC();
  if (v17)
  {
    v25 = OUTLINED_FUNCTION_38_2();
    MEMORY[0x26D61C170](v25);

    swift_unknownObjectRelease();
    v26 = OUTLINED_FUNCTION_38_2();
    MEMORY[0x26D61C170](v26);
  }

  else
  {
  }

  sub_2685687F0();
  sub_268568810();
  OUTLINED_FUNCTION_47_2();
  v20 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appId;
  OUTLINED_FUNCTION_33_2();
  sub_268532644(v11, v19 + v20);
  swift_endAccess();
  sub_26853D95C(v11, &qword_280282AF0, &qword_26856A1E0);
  if (v17)
  {
    v21 = OUTLINED_FUNCTION_38_2();
    MEMORY[0x26D61C170](v21);
  }

  else
  {
  }

  v23 = v28;
  v22 = v29;

  sub_268568BB0();

  OUTLINED_FUNCTION_47_2();
  v24 = OBJC_IVAR____TtCC24SiriNotificationsIntents16NotificationsApp7Builder_appName;
  OUTLINED_FUNCTION_33_2();
  sub_268532644(v23, v19 + v24);
  swift_endAccess();
  sub_26853D95C(v23, &qword_280282AF0, &qword_26856A1E0);
  type metadata accessor for NotificationsApp(0);
  swift_allocObject();
  result = sub_2685182C0(v19);
  *v22 = result;
  return result;
}

uint64_t sub_268538678()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v1[8] = OUTLINED_FUNCTION_39();
  v3 = sub_268567F20();
  v1[9] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_39();
  v5 = sub_2685679B0();
  v1[12] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B60();
  v1[15] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_39();
  v9 = sub_2685689F0();
  v1[18] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268538A04()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v1[8] = OUTLINED_FUNCTION_39();
  v3 = sub_268567F20();
  v1[9] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_39();
  v5 = sub_2685679B0();
  v1[12] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B60();
  v1[15] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_39();
  v9 = sub_2685689F0();
  v1[18] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268538D90()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v1[8] = OUTLINED_FUNCTION_39();
  v3 = sub_268567F20();
  v1[9] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_39();
  v5 = sub_2685679B0();
  v1[12] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_39();
  v7 = sub_268567B60();
  v1[15] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_39();
  v9 = sub_2685689F0();
  v1[18] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26853911C()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_2685689F0();
  v1[6] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_39();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837D8, &unk_26856EFD0);
  OUTLINED_FUNCTION_10(v6);
  v1[9] = OUTLINED_FUNCTION_39();
  v7 = sub_268567A60();
  v1[10] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[11] = v8;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268539250()
{
  v38 = v0;
  v1 = v0[11];
  sub_268567A30();
  v2 = sub_268567A40();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_17_9();
  v3(v4);
  if (v2)
  {
    v0[2] = v0[5];
    v5 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837F0, &unk_26856EFE0);
    type metadata accessor for RNReadNotificationHighlightsFlowProvider();
    sub_26853DBD8(&qword_280283830, v6, type metadata accessor for RNReadNotificationHighlightsFlowProvider, &unk_26856EEC0);
    sub_268567810();
    sub_268567EC0();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837E0, &unk_26856EB30);
    v8 = v5;
    v9 = 0;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[10];
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];
    v16 = v0[4];
    v17 = __swift_project_value_buffer(v15, qword_28028B348);
    (*(v14 + 16))(v13, v17, v15);
    (*(v11 + 16))(v10, v16, v12);
    v18 = sub_2685689E0();
    v19 = sub_268568DE0();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[12];
    v22 = v0[10];
    v24 = v0[7];
    v23 = v0[8];
    v25 = v0[6];
    if (v20)
    {
      v36 = v0[6];
      v26 = OUTLINED_FUNCTION_4();
      v35 = OUTLINED_FUNCTION_51();
      v37 = v35;
      *v26 = 136315138;
      sub_26853DBD8(&qword_2802837E8, 255, MEMORY[0x277D5B9D0], MEMORY[0x277D5B9D8]);
      v33 = v19;
      v27 = sub_2685691A0();
      v34 = v23;
      v29 = v28;
      (v3)(v21, v22);
      v30 = sub_2684EABEC(v27, v29, &v37);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2684CA000, v18, v33, "Unsupported promptType '%s'. Will not support windowing.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v24 + 8))(v34, v36);
    }

    else
    {

      (v3)(v21, v22);
      (*(v24 + 8))(v23, v25);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837E0, &unk_26856EB30);
    v8 = OUTLINED_FUNCTION_35_5();
  }

  __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);

  OUTLINED_FUNCTION_9_1();

  return v31();
}

uint64_t sub_268539600()
{
  OUTLINED_FUNCTION_5();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = sub_268567FF0();
  v1[26] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[27] = v5;
  v1[28] = *(v6 + 64);
  v1[29] = OUTLINED_FUNCTION_39();
  v7 = sub_2685689F0();
  v1[30] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[31] = v8;
  v1[32] = OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2685396FC()
{
  v76 = v0;
  v1 = v0;
  if (qword_280282960 != -1)
  {
LABEL_62:
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = v1 + 144;
  v4 = *(v1 + 248);
  v3 = *(v1 + 256);
  v5 = *(v1 + 240);
  v6 = __swift_project_value_buffer(v5, qword_28028B348);
  (*(v4 + 16))(v3, v6, v5);

  v7 = sub_2685689E0();
  v8 = sub_268568DD0();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v1 + 248);
  v10 = *(v1 + 256);
  v12 = *(v1 + 240);
  if (v9)
  {
    v73 = *(v1 + 256);
    v13 = *(v1 + 192);
    v14 = OUTLINED_FUNCTION_4();
    v15 = OUTLINED_FUNCTION_51();
    v75 = v15;
    *v14 = 136315138;
    v16 = type metadata accessor for NotificationsApp(0);
    v17 = MEMORY[0x26D61BE70](v13, v16);
    v19 = sub_2684EABEC(v17, v18, &v75);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2684CA000, v7, v8, "RNReadNotificationHighlightsFlowProvider makeWindowFlow | windowContent: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    (*(v11 + 8))(v73, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v64 = v1;
  v20 = *(v1 + 192);
  v21 = sub_2684DEAF0(v20);
  v22 = 0;
  v69 = v20 & 0xFFFFFFFFFFFFFF8;
  v71 = v20 & 0xC000000000000001;
  v23 = MEMORY[0x277D84F90];
  v68 = v20 + 32;
  v65 = v21;
  while (v22 != v21)
  {
    if (v71)
    {
      v24 = MEMORY[0x26D61C170](v22, v64[24]);
    }

    else
    {
      if (v22 >= *(v69 + 16))
      {
        goto LABEL_55;
      }

      v24 = *(v68 + 8 * v22);
    }

    v25 = __OFADD__(v22, 1);
    v26 = v22 + 1;
    if (v25)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v27 = *(v24 + 24);

    if (v27 >> 62)
    {
      v28 = sub_2685690A0();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v23 >> 62;
    if (v23 >> 62)
    {
      v30 = sub_2685690A0();
    }

    else
    {
      v30 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v30 + v28;
    if (__OFADD__(v30, v28))
    {
      goto LABEL_56;
    }

    v74 = v26;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v29)
      {
LABEL_21:
        sub_2685690A0();
      }

LABEL_22:
      v23 = sub_268569000();
      v32 = v23 & 0xFFFFFFFFFFFFFF8;
      v33 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_23;
    }

    if (v29)
    {
      goto LABEL_21;
    }

    v32 = v23 & 0xFFFFFFFFFFFFFF8;
    v33 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v33 < v31)
    {
      goto LABEL_22;
    }

LABEL_23:
    v34 = *(v32 + 16);
    v35 = v33 - v34;
    v1 = v32 + 8 * v34;
    if (v27 >> 62)
    {
      v37 = OUTLINED_FUNCTION_46_2();
      if (!v37)
      {
        goto LABEL_37;
      }

      v38 = v37;
      v39 = sub_2685690A0();
      if (v35 < v39)
      {
        goto LABEL_60;
      }

      if (v38 < 1)
      {
        goto LABEL_61;
      }

      v66 = v39;
      v67 = v23;
      v40 = v1 + 32;
      sub_26853D8F8();
      for (i = 0; i != v38; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v1 = sub_2684DEA8C(v2, i, v27);
        v43 = *v42;

        (v1)(v2, 0);
        *(v40 + 8 * i) = v43;
      }

      v23 = v67;
      v21 = v65;
      v36 = v66;
LABEL_33:

      v22 = v74;
      if (v36 < v28)
      {
        goto LABEL_57;
      }

      if (v36 > 0)
      {
        v44 = *(v32 + 16);
        v25 = __OFADD__(v44, v36);
        v45 = v44 + v36;
        if (v25)
        {
          goto LABEL_58;
        }

        *(v32 + 16) = v45;
      }
    }

    else
    {
      v36 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        if (v35 < v36)
        {
          goto LABEL_59;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_33;
      }

LABEL_37:

      v22 = v74;
      if (v28 > 0)
      {
        goto LABEL_57;
      }
    }
  }

  v46 = sub_2684DEAF0(v23);
  if (v46)
  {
    v47 = v46;
    v75 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if ((v47 & 0x8000000000000000) == 0)
    {
      sub_2684DB414();
      OUTLINED_FUNCTION_31_8();
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x26D61C170](v1, v23);
        }

        else
        {
        }

        ++v1;
        sub_2685646B8(v49);
        sub_268569020();
        OUTLINED_FUNCTION_27_6();
        sub_268569050();
        OUTLINED_FUNCTION_27_6();
        sub_268569060();
        sub_268569030();
      }

      while (v47 != v1);

      v50 = v75;
      goto LABEL_51;
    }

    __break(1u);
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
LABEL_51:
    v72 = v50;
    v52 = v64[28];
    v51 = v64[29];
    v53 = v64[26];
    v54 = v64[27];
    v55 = v64[24];
    v56 = v64[25];
    v57 = v64[23];
    sub_2684CC878(v56 + 144, (v64 + 2));

    v58 = sub_26853CE24();
    v59 = v58;
    v70 = v58 > 0xFFu;
    (*(v54 + 16))(v51, v57, v53);
    v60 = (*(v54 + 80) + 24) & ~*(v54 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v56;
    (*(v54 + 32))(v61 + v60, v51, v53);
    *(v61 + ((v52 + v60 + 7) & 0xFFFFFFFFFFFFFFF8)) = v55;
    type metadata accessor for RNReadHighlightWindowFlow();
    swift_allocObject();
    v64[22] = sub_268533628(sub_268532A40, v56, v72, v64 + 2, v59 & 1u | (v70 << 8), &unk_26856EFC8, v61);
    sub_26853DBD8(&qword_280283818, 255, type metadata accessor for RNReadHighlightWindowFlow, &unk_26856EC98);

    sub_2685678F0();

    v62 = OUTLINED_FUNCTION_3_18();

    return v63(v62);
  }

  return result;
}