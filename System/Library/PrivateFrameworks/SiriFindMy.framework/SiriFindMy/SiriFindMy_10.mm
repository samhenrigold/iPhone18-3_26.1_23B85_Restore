uint64_t sub_266CFEA7C()
{
  if (qword_2800C9340 != -1)
  {
    OUTLINED_FUNCTION_0_57(&qword_2800C9340);
  }

  v0 = sub_266DA94AC();
  __swift_project_value_buffer(v0, qword_28156F218);
  v1 = sub_266DA948C();
  v2 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v2))
  {
    v3 = OUTLINED_FUNCTION_11();
    *v3 = 0;
    _os_log_impl(&dword_266C08000, v1, v2, "Updated User Info", v3, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB180, &qword_266DB3450);
  sub_266C230E8(&unk_28156F070, &qword_2800CB180, &qword_266DB3450, MEMORY[0x277CBCE18]);
  return sub_266DA97BC();
}

uint64_t sub_266CFEB88()
{

  return v0;
}

uint64_t sub_266CFEC0C()
{
  sub_266CFEB88();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_266CFED0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_0_57(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 + 16);
  *(result + 12) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_266DA96DC();
}

uint64_t OUTLINED_FUNCTION_19_14()
{

  return swift_slowAlloc();
}

uint64_t sub_266CFEE30()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC980);
  v1 = __swift_project_value_buffer(v0, qword_2800CC980);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CFEEF8(uint64_t a1, uint64_t a2)
{
  sub_266CE82F8();

  return sub_266DA79AC();
}

uint64_t sub_266CFEF4C()
{
  OUTLINED_FUNCTION_22_0();
  v1[20] = v2;
  v1[21] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB478, &qword_266DB7540);
  v1[22] = swift_task_alloc();
  v3 = sub_266DA7C5C();
  v1[23] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[24] = v4;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266CFF03C()
{
  if (qword_2800C9348 != -1)
  {
    swift_once();
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800CC980);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "Executing FindDeviceGenericErrorFlow flow", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);

  (*(v7 + 104))(v6, *MEMORY[0x277D5BC00], v8);
  sub_266DA7ADC();
  (*(v7 + 16))(v5, v6, v8);
  v11 = sub_266DA7A5C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 3;
  *(v12 + 24) = xmmword_266DB7470;
  sub_266DA7ACC();
  sub_266DA7A1C();
  __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
  sub_266DA7A2C();

  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  sub_266C233D0(v9 + 16, v0 + 112);
  sub_266D00360(v9, v0 + 16);
  v13 = swift_allocObject();
  v14 = *(v0 + 32);
  *(v13 + 16) = *(v0 + 16);
  *(v13 + 32) = v14;
  *(v13 + 48) = *(v0 + 48);
  *(v13 + 64) = *(v0 + 64);
  sub_266DA75FC();
  swift_allocObject();
  *(v0 + 152) = sub_266DA75EC();
  sub_266DA7D5C();

  OUTLINED_FUNCTION_28();

  return v15();
}

uint64_t sub_266CFF370(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v2[24] = type metadata accessor for Snippets(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v3 = sub_266DA80AC();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v4 = sub_266DA7C0C();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  v2[37] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080) - 8);
  v2[38] = v5;
  v2[39] = *(v5 + 64);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CFF61C);
}

uint64_t sub_266CFF61C()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 192);
  *(v0 + 384) = *(*(v0 + 184) + 8);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  *v2 = 4;
  *(v2 + 8) = xmmword_266DB2290;
  *(v2 + 24) = 0;
  OUTLINED_FUNCTION_32();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  *(v0 + 472) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  swift_allocObject();
  *(v0 + 392) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v4 = swift_allocObject();
  *(v0 + 400) = v4;
  *(v4 + 16) = xmmword_266DAE3B0;
  *(v0 + 473) = 3;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 408) = v5;
  *v5 = v6;
  v5[1] = sub_266CFF784;

  return sub_266D945C8((v0 + 473), 0);
}

uint64_t sub_266CFF784(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[52] = v1;

  if (v1)
  {
    sub_266C47654(v5[46], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
    v11 = sub_266D00184;
  }

  else
  {
    v5[53] = a1;
    v11 = sub_266CFF8C4;
  }

  return MEMORY[0x2822009F8](v11);
}

void sub_266CFF8C4()
{
  *(v0[50] + 32) = v0[53];
  sub_266DA7E5C();
  v1 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v1, v2, 1, v3);
  sub_266DA7C7C();
  v4 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    v7 = v0[50] & 0xC000000000000001;
    sub_266CB9F54();
    v8 = v0[50];
    if (v7)
    {
      v9 = MEMORY[0x26D5F1780](0, v8);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v10 = v9;
    v11 = [v9 catId];

    v74 = sub_266DAA70C();
    v77 = v12;
  }

  else
  {
    v74 = 0;
    v77 = 0;
  }

  v14 = v0[47];
  v13 = v0[48];
  v15 = v0[45];
  v16 = v0[44];
  v17 = v0[38];
  v18 = v0[39];
  v71 = v0[37];
  v72 = v0[36];
  v19 = v0[34];
  v70 = v0[35];
  v21 = v0[32];
  v20 = v0[33];
  v73 = v14;
  v75 = v0[24];
  v76 = v0[43];
  sub_266C4756C(v0[46], v15);
  sub_266C4756C(v14, v16);
  v22 = *(v17 + 80);
  v23 = (v22 + 24) & ~v22;
  v24 = (v18 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  v0[54] = v25;
  *(v25 + 16) = v13;
  sub_266C475DC(v15, v25 + v23);
  sub_266C475DC(v16, v25 + v24);
  (*(v20 + 16))(v19, v70, v21);
  v26 = swift_task_alloc();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 40) = v74;
  *(v26 + 48) = v77;
  *(v26 + 56) = v71;
  *(v26 + 64) = 514;
  *(v26 + 72) = sub_266C4876C;
  *(v26 + 80) = v25;
  *(v26 + 88) = v72;

  sub_266DA800C();

  sub_266C4756C(v73, v76);
  if (__swift_getEnumTagSinglePayload(v76, 1, v75) == 1)
  {
    v27 = v0 + 43;
  }

  else
  {
    v28 = v0[24];
    sub_266C476A8(v0[43], v0[28]);
    v29 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v29, v30);
    v31 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v31, v32, v28) != 1)
    {
      v53 = v0[27];
      v54 = v0[28];
      v55 = v0[24];
      sub_266C476A8(v0[42], v53);
      v0[15] = v55;
      v56 = sub_266C4DB4C();
      v0[16] = v56;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      sub_266C47750(v54, boxed_opaque_existential_1);
      v0[20] = v55;
      v0[21] = v56;
      v58 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      sub_266C47750(v53, v58);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[55] = v59;
      *v59 = v60;
      v59[1] = sub_266CFFE70;
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v27 = v0 + 42;
    sub_266C477B4(v0[28]);
  }

  v33 = v0[24];
  sub_266C47654(*v27, &qword_2800CA050, &qword_266DB0080);
  v34 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v34, v35);
  v36 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, v37, v33);
  v39 = v0[41];
  v40 = v0[24];
  if (EnumTagSinglePayload == 1)
  {
    v41 = v0[46];
    v42 = v0[40];
    sub_266C47654(v39, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v41, v42);
    v43 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v43, v44, v40) == 1)
    {
      sub_266C47654(v0[40], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[58] = v45;
      *v45 = v46;
      v45[1] = sub_266C8D684;
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v63 = v0[24];
    v64 = v0[25];
    sub_266C476A8(v0[40], v64);
    v0[5] = v63;
    v0[6] = sub_266C4DB4C();
    v65 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_266C47750(v64, v65);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[57] = v66;
    *v66 = v67;
    OUTLINED_FUNCTION_90_0(v66);
  }

  else
  {
    v49 = v0[26];
    sub_266C476A8(v39, v49);
    v0[10] = v40;
    v0[11] = sub_266C4DB4C();
    v50 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_266C47750(v49, v50);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[56] = v51;
    *v51 = v52;
    OUTLINED_FUNCTION_90_0(v51);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266CFFE70()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266CFFF7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D00080()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D00184()
{
  v1 = *(v0 + 400);

  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D002C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266CFEF4C();
}

uint64_t sub_266D00398()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_266C4716C;

  return sub_266CFF370(v3, v0 + 16);
}

id sub_266D0042C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aa_fmipAccount];
  *a2 = result;
  return result;
}

uint64_t sub_266D00468()
{
  v83 = type metadata accessor for FMIPCoreDevicePinger(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_6();
  v88 = v2 - v1;
  OUTLINED_FUNCTION_3_4();
  v87 = sub_266DAAB7C();
  OUTLINED_FUNCTION_1_5();
  v82 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v81 = v6 - v5;
  OUTLINED_FUNCTION_3_4();
  sub_266DAAB6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_4();
  v8 = sub_266DA9FDC();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_0_6();
  v9 = OUTLINED_FUNCTION_3_4();
  v86 = type metadata accessor for FMIPCoreDeviceSearcher(v9);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v13 = (v12 - v11);
  v14 = sub_266DA947C();
  OUTLINED_FUNCTION_1_5();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_6();
  v20 = v19 - v18;
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  sub_266DA946C();
  sub_266DA945C();
  v84 = *(v16 + 8);
  v84(v20, v14);
  v21 = type metadata accessor for FMIPManagerWrapperImpl();
  swift_allocObject();
  v22 = sub_266CFDA98();
  v104 = v21;
  v105 = &off_287863C10;
  v103[0] = v22;
  v23 = type metadata accessor for SFMContactStoreDefaultService();
  swift_allocObject();
  v107 = v23;
  v108 = &off_28785FC28;
  v106 = sub_266C69368();
  v24 = type metadata accessor for SFMCachingContactDataProvider();
  v25 = swift_allocObject();
  sub_266D01174(v103, v102);

  v26 = sub_266D011D0(v102, v25);
  v102[3] = v24;
  v102[4] = &protocol witness table for SFMCachingContactDataProvider;
  v102[0] = v26;
  sub_266D01330(v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC998, qword_266DB7618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DB05D0;
  v28 = sub_266D4E790(0);
  v80 = v14;
  *(inited + 56) = &type metadata for DeviceDiscovery;
  *(inited + 64) = &off_2878664D0;
  *(inited + 32) = v28;
  *(inited + 40) = v29;
  *(inited + 48) = v30 & 1;
  v31 = sub_266D4E790(1);
  *(inited + 96) = &type metadata for DeviceDiscovery;
  *(inited + 104) = &off_2878664D0;
  *(inited + 72) = v31;
  *(inited + 80) = v32;
  *(inited + 88) = v33 & 1;
  v34 = sub_266C5CB0C();
  *(inited + 136) = &type metadata for RapportDiscovery;
  *(inited + 144) = &off_28785F6C8;
  *(inited + 112) = v34;
  *(inited + 120) = v35;
  type metadata accessor for NearbyScanSession();
  swift_allocObject();
  v36 = sub_266C4F250(inited);
  v37 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v13[3] = v21;
  v13[4] = &off_287863C20;
  v85 = v22;
  *v13 = v22;
  sub_266C233D0(v102, (v13 + 5));
  v38 = type metadata accessor for BluetoothStateProvider();
  v79 = v20;
  v39 = objc_allocWithZone(v38);

  v40 = [v39 init];
  v13[13] = v38;
  v13[14] = &off_287860BF0;
  v13[10] = v40;
  v13[18] = &type metadata for AccountStateProvider;
  v13[19] = &off_28785FB48;
  v13[15] = v37;
  v13[16] = 0xD000000000000015;
  v13[17] = 0x8000000266DC2130;
  v13[23] = &type metadata for SFMUserDefaultsSettingProvider;
  v13[24] = &protocol witness table for SFMUserDefaultsSettingProvider;
  v104 = &type metadata for PListMappingLoader;
  v105 = &off_287867AD8;
  v41 = type metadata accessor for DeviceMappingProvider();
  v42 = swift_allocObject();
  v42[7] = &type metadata for AddHardCodedMappingsLoader;
  v42[8] = &off_287867AC8;
  v43 = swift_allocObject();
  v42[4] = v43;
  sub_266D01384(v103, v43 + 16);
  v42[2] = 0;
  v42[3] = 0;
  v78 = v37;

  sub_266D013E0(v103);
  v13[30] = v41;
  v13[31] = &off_287864E70;
  v13[27] = v42;
  sub_266DA81BC();
  __swift_project_boxed_opaque_existential_1(v103, v104);
  v13[35] = type metadata accessor for GEOServicesReverseGeocoder(0);
  v13[36] = &off_287868A70;
  __swift_allocate_boxed_opaque_existential_1(v13 + 32);
  sub_266DA7AFC();
  __swift_destroy_boxed_opaque_existential_0(v103);
  sub_266DAAB2C();
  v13[25] = 0x4004000000000000;
  v13[26] = v36;
  v44 = *(v86 + 56);
  sub_266C22FD4();
  sub_266DA9FBC();
  v103[0] = MEMORY[0x277D84F90];
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C5D904();
  sub_266DAAD0C();
  v77 = *MEMORY[0x277D85260];
  v76 = *(v82 + 104);
  v76(v81);
  OUTLINED_FUNCTION_3_35();
  *(v13 + v44) = sub_266D689A4(v45, v46, v47, v48, v49, v50);
  sub_266D01434(v13, v88, type metadata accessor for FMIPCoreDeviceSearcher);
  sub_266C233D0(v102, v88 + v83[5]);
  v51 = (v88 + v83[6]);
  v51[3] = v21;
  v51[4] = &off_287863C20;
  *v51 = v85;
  v75 = v83[7];

  sub_266DA9FBC();
  v103[0] = MEMORY[0x277D84F90];
  sub_266DAAD0C();
  (v76)(v81, v77, v87);
  OUTLINED_FUNCTION_3_35();
  *(v88 + v75) = sub_266D689A4(v52, v53, v54, v55, v56, v57);
  sub_266DA7AEC();
  LOBYTE(v106) = 1;
  v101[3] = v21;
  v101[4] = &off_287863C20;
  v101[0] = v85;
  v100 = &off_28785FB48;
  v98[0] = v78;
  v98[1] = 0xD000000000000015;
  v98[2] = 0x8000000266DC2130;
  v99 = &type metadata for AccountStateProvider;
  v96 = v86;
  v97 = &off_287862060;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
  sub_266D01434(v13, boxed_opaque_existential_1, type metadata accessor for FMIPCoreDeviceSearcher);
  v93 = v83;
  v94 = &off_287860338;
  v59 = __swift_allocate_boxed_opaque_existential_1(&v92);
  sub_266D01434(v88, v59, type metadata accessor for FMIPCoreDevicePinger);
  v90 = &type metadata for AceDevicePinger;
  v91 = &protocol witness table for AceDevicePinger;
  *&v89 = swift_allocObject();
  sub_266CC7678(v103, v89 + 16);
  type metadata accessor for FMIPCoreFindDeviceSession();
  v60 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v101, v21);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_0_6();
  v64 = (v63 - v62);
  (*(v65 + 16))(v63 - v62);
  __swift_mutable_project_boxed_opaque_existential_1(v98, v99);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_0_6();
  v69 = (v68 - v67);
  (*(v70 + 16))(v68 - v67);
  v71 = *v64;
  v72 = *v69;
  v73 = *(v69 + 2);
  *(v60 + 40) = v21;
  *(v60 + 48) = &off_287863C20;
  *(v60 + 16) = v71;
  *(v60 + 88) = &off_28785FB48;
  *(v60 + 56) = v72;
  *(v60 + 72) = v73;
  *(v60 + 80) = &type metadata for AccountStateProvider;
  sub_266CC76B0(v103);
  *(v60 + 224) = 0;
  *(v60 + 96) = v36;
  sub_266C0B0D8(&v95, v60 + 104);
  sub_266C0B0D8(&v92, v60 + 144);
  sub_266C0B0D8(&v89, v60 + 184);
  __swift_destroy_boxed_opaque_existential_0(v98);
  __swift_destroy_boxed_opaque_existential_0(v101);
  sub_266D01494(v88, type metadata accessor for FMIPCoreDevicePinger);
  sub_266D01494(v13, type metadata accessor for FMIPCoreDeviceSearcher);
  __swift_destroy_boxed_opaque_existential_0(v102);
  sub_266DAABCC();
  sub_266DA946C();
  sub_266DA945C();
  v84(v79, v80);
  return v60;
}

uint64_t sub_266D00F38()
{
  if (*(v0 + 224) & 1) != 0 || (*(*__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)) + 72) & 1) != 0 || (sub_266C4F20C())
  {
    return 0;
  }

  v2 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  KeyPath = swift_getKeyPath();
  LOBYTE(v2) = sub_266C68428(KeyPath, 1346981190, 0xE400000000000000, v2);

  return v2 & 1;
}

void sub_266D00FE4()
{
  *(v0 + 224) = 1;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_266CFDFF8();
}

void *sub_266D0101C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  return v0;
}

uint64_t sub_266D01064()
{
  sub_266D0101C();

  return MEMORY[0x2821FE8D8](v0, 225, 7);
}

uint64_t sub_266D011D0(const void *a1, uint64_t a2)
{
  v8[3] = &type metadata for SFMContactDataProviderImpl;
  v8[4] = &off_28785FCC0;
  v8[0] = swift_allocObject();
  memcpy((v8[0] + 16), a1, 0x50uLL);
  sub_266C233D0(v8, a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B18, &qword_266DBFC40);
  *(a2 + 56) = sub_266DAA6CC();
  sub_266C233D0(v8, v7);
  v4 = swift_allocObject();
  sub_266C0B0D8(v7, v4 + 16);
  *(a2 + 64) = sub_266D014EC;
  *(a2 + 72) = v4;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:a2 selector:sel_contactStoreChangedWithNotification_ name:*MEMORY[0x277CBD140] object:0];

  __swift_destroy_boxed_opaque_existential_0(v8);
  return a2;
}

uint64_t sub_266D01434(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266D01494(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266D01598()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC9A0);
  v1 = __swift_project_value_buffer(v0, qword_2800CC9A0);
  if (qword_2800C9108 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E6190);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static NLv3ToSiriKitIntentConverter.getSiriKitIntent(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  DeviceNLIntent = type metadata accessor for FindDeviceNLIntent(0);
  MEMORY[0x28223BE20](DeviceNLIntent - 8);
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_266DA8BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C9350 != -1)
  {
    swift_once();
  }

  v9 = sub_266DA94AC();
  v10 = __swift_project_value_buffer(v9, qword_2800CC9A0);
  v11 = *(v6 + 16);
  v11(v8, a1, v5);
  v12 = sub_266DA948C();
  v13 = sub_266DAAB0C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37[1] = v10;
    v15 = v14;
    v16 = swift_slowAlloc();
    v38 = a1;
    v17 = v16;
    v41 = v16;
    *v15 = 136315138;
    sub_266D01AB0();
    v18 = sub_266DAB13C();
    v37[0] = v11;
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    v21 = sub_266C22A3C(v18, v20, &v41);
    v11 = v37[0];

    *(v15 + 4) = v21;
    _os_log_impl(&dword_266C08000, v12, v13, "Forming FindDeviceNLIntent wrapper from NLv3 intent: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    a1 = v38;
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v22 = v39;
  v11(v39, a1, v5);
  v23 = [objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntent()) init];
  v24 = sub_266CDE900();
  [v23 setDeviceQuery_];

  v25 = v23;
  v26 = sub_266DA948C();
  v27 = sub_266DAAB0C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41 = v29;
    *v28 = 136315138;
    v30 = v25;
    v31 = [v30 description];
    v32 = sub_266DAA70C();
    v34 = v33;

    v35 = sub_266C22A3C(v32, v34, &v41);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_266C08000, v26, v27, "FindDevice SiriKit intent is: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  result = sub_266D01A54(v22);
  *v40 = v25;
  return result;
}

uint64_t sub_266D01A54(uint64_t a1)
{
  DeviceNLIntent = type metadata accessor for FindDeviceNLIntent(0);
  (*(*(DeviceNLIntent - 8) + 8))(a1, DeviceNLIntent);
  return a1;
}

unint64_t sub_266D01AB0()
{
  result = qword_2800CA5A0;
  if (!qword_2800CA5A0)
  {
    sub_266DA8BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA5A0);
  }

  return result;
}

uint64_t sub_266D01B08(uint64_t *a1, int a2)
{
  if (a2)
  {
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266D01B48(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D01B94()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CC9B8);
  v1 = __swift_project_value_buffer(v0, qword_2800CC9B8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFMDeviceLockState.hashValue.getter()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

void SFMDeviceLockStateProvider.lockState.getter(_BYTE *a1@<X8>)
{
  v2 = MKBGetDeviceLockState();
  if (v2 >= 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x3010102u >> (8 * v2);
  }

  if (qword_2800C9358 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800CC9B8);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_266DAA72C();
    v11 = sub_266C22A3C(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_266C08000, v5, v6, "Device lock state computed as: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D5F2480](v8, -1, -1);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  *a1 = v3;
}

unint64_t sub_266D01F10()
{
  result = qword_2800CC9D0;
  if (!qword_2800CC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC9D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SFMDeviceLockState(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SFMDeviceLockStateProvider(_BYTE *result, int a2, int a3)
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

uint64_t sub_266D02108(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_266D02148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D021C0()
{
  v1 = sub_266DA81AC();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v7 = (v6 - v5);
  if (qword_2800C9430 != -1)
  {
    OUTLINED_FUNCTION_3_36(&qword_2800C9430);
  }

  v8 = sub_266DA94AC();
  __swift_project_value_buffer(v8, qword_2800E64F0);
  v9 = sub_266DA948C();
  v10 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v10))
  {
    v0 = swift_slowAlloc();
    *v0 = 0;
    _os_log_impl(&dword_266C08000, v9, v10, "FindFriend.FlowStrategy.actionForInput() called", v0, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  sub_266DA816C();
  sub_266CD6764(v7, v29);
  (*(v3 + 8))(v7, v1);
  sub_266C744CC(v29, v27, &qword_2800CA870, &qword_266DB1F08);
  if (v28)
  {
    if (v28 == 255)
    {
      sub_266C3A088(v27, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      sub_266C6F308(v27);
    }

    sub_266C744CC(v29, v27, &qword_2800CA870, &qword_266DB1F08);
    v18 = sub_266DA948C();
    v19 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v19))
    {
      v20 = OUTLINED_FUNCTION_14_0();
      v21 = OUTLINED_FUNCTION_13_0();
      v26 = v21;
      *v20 = 136315138;
      OUTLINED_FUNCTION_13_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v22 = sub_266C22A3C(v10, v0, &v26);

      *(v20 + 4) = v22;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v23, v24, "FindFriend.FlowStrategy.actionForInput() ignoring unsupported task: %s");
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v27, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CCC();
  }

  else
  {
    sub_266C6F308(v27);
    sub_266C744CC(v29, v27, &qword_2800CA870, &qword_266DB1F08);
    v11 = sub_266DA948C();
    v12 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v12))
    {
      v13 = OUTLINED_FUNCTION_14_0();
      v14 = OUTLINED_FUNCTION_13_0();
      v26 = v14;
      *v13 = 136315138;
      OUTLINED_FUNCTION_13_17();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v15 = sub_266C22A3C(v10, v0, &v26);

      *(v13 + 4) = v15;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v16, v17, "FindFriend.FlowStrategy.actionForInput() handling task: %s");
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v27, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CBC();
  }

  return sub_266C3A088(v29, &qword_2800CA870, &qword_266DB1F08);
}

uint64_t sub_266D025AC()
{
  OUTLINED_FUNCTION_22_0();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_266DA750C();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D0266C);
}

uint64_t sub_266D0266C()
{
  v32 = v0;
  if (qword_2800C9430 != -1)
  {
    OUTLINED_FUNCTION_3_36(&qword_2800C9430);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E64F0);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "FindFriend.FlowStrategy.makeIntentFromParse() called", v4, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v5 = *(v0 + 152);

  sub_266CD6764(v5, v0 + 16);
  sub_266C744CC(v0 + 16, v0 + 64, &qword_2800CA870, &qword_266DB1F08);
  if (*(v0 + 104))
  {
    if (*(v0 + 104) == 255)
    {
      sub_266C3A088(v0 + 64, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      sub_266C6F308(v0 + 64);
    }

    sub_266D0350C();
    swift_allocError();
    *v9 = 1;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 2;
    swift_willThrow();
    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v6 = *(v0 + 160);
    sub_266C0B0D8((v0 + 64), v0 + 112);
    v7 = *(v0 + 160);
    if (v6)
    {
      v8 = *(v0 + 160);
    }

    else
    {
      v8 = [objc_allocWithZone(type metadata accessor for FindFriendIntent()) init];
    }

    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 168);
    v30 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1(v14 + 1, v14[4]);
    v15 = v7;
    sub_266DA7AFC();
    v16 = __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    v17 = __swift_project_boxed_opaque_existential_1(v14 + 6, v14[9]);
    sub_266D03CD8(v16, v17, v12, v8);
    (*(v13 + 8))(v12, v30);
    v18 = v8;
    v19 = sub_266DA948C();
    v20 = sub_266DAAB0C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_14_0();
      v22 = OUTLINED_FUNCTION_13_0();
      v31 = v22;
      *v21 = 136315138;
      v23 = v18;
      v24 = [v23 description];
      v25 = sub_266DAA70C();
      v27 = v26;

      v28 = sub_266C22A3C(v25, v27, &v31);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_266C08000, v19, v20, "FindFriend Intent created: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_33_6();
    }

    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));

    OUTLINED_FUNCTION_43_4();

    return v29(v18);
  }
}

uint64_t sub_266D02A48()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D02B08);
}

uint64_t sub_266D02B08()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = **(v0 + 32);
  type metadata accessor for FindFriendIntent();

  v6 = v5;
  v7 = v4;
  sub_266DA7A3C();
  sub_266DA7A9C();
  v8 = sub_266DA7A8C();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43_4();

  return v9(v8);
}

uint64_t sub_266D02BFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D02CA0;

  return sub_266D025AC();
}

uint64_t sub_266D02CA0()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  OUTLINED_FUNCTION_43_4();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_266D02D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266D03FC0;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_266D02E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_266D03FC0;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_266D02F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_266D03FC0;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_266D02FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_266D03FC0;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_266D030BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_266CE81BC;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_266D03198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_266D03FC0;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_266D03274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D03318;

  return sub_266D02A48();
}

uint64_t sub_266D03318()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  OUTLINED_FUNCTION_43_4();

  return v5(v2);
}

unint64_t sub_266D03408()
{
  result = qword_2800CC9D8;
  if (!qword_2800CC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC9D8);
  }

  return result;
}

unint64_t sub_266D03460()
{
  result = qword_2800CC9E0;
  if (!qword_2800CC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC9E0);
  }

  return result;
}

unint64_t sub_266D034B8()
{
  result = qword_2800CC9E8;
  if (!qword_2800CC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC9E8);
  }

  return result;
}

unint64_t sub_266D0350C()
{
  result = qword_2800CC9F0;
  if (!qword_2800CC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CC9F0);
  }

  return result;
}

id sub_266D03560(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a3;
  sub_266DA8D1C();
  OUTLINED_FUNCTION_0_2();
  v63 = v8;
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v62 = v10 - v9;
  sub_266DA8D6C();
  OUTLINED_FUNCTION_0_2();
  v59 = v12;
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  v58 = v14 - v13;
  v15 = sub_266DA8D5C();
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_0_6();
  v55 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC9F8, &qword_266DB7948);
  MEMORY[0x28223BE20](v18 - 8);
  v54 = v52 - v19;
  v53 = sub_266DA750C();
  OUTLINED_FUNCTION_0_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_6();
  v25 = v24 - v23;
  sub_266DA8D3C();
  OUTLINED_FUNCTION_0_2();
  v56 = v27;
  v57 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_6();
  v30 = v29 - v28;
  v31 = sub_266DA8C4C();
  v66 = v31;
  v67 = &off_28785D468;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, a2, v31);
  v52[2] = __swift_project_boxed_opaque_existential_1(v65, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCA00, &qword_266DB7950);
  v33 = sub_266DA8D0C();
  OUTLINED_FUNCTION_0_2();
  v35 = v34;
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_266DAE4A0;
  (*(v35 + 16))(v37 + v36, a4, v33);
  v38 = sub_266C1CEB4(a1);
  if (v39)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v52[1] = v40;
  v41 = [a1 typeName];
  sub_266DAA70C();

  (*(v21 + 16))(v25, v61, v53);
  v42 = sub_266DA8D9C();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v42);
  sub_266DA8D4C();
  (*(v59 + 104))(v58, *MEMORY[0x277D56148], v60);
  (*(v63 + 104))(v62, *MEMORY[0x277D560D0], v64);
  sub_266DA8D2C();
  v43 = sub_266DA8C2C();
  (*(v56 + 8))(v30, v57);

  if (sub_266C3A14C() == 1 && sub_266C3A14C())
  {
    sub_266CB9F54();
    if ((v43 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x26D5F1780](0, v43);
    }

    else
    {
      v44 = *(v43 + 32);
    }

    v45 = v44;
  }

  else
  {
    if (qword_2800C9190 != -1)
    {
      OUTLINED_FUNCTION_2_41(&qword_2800C9190);
    }

    v46 = sub_266DA94AC();
    __swift_project_value_buffer(v46, qword_2800CA010);

    v47 = sub_266DA948C();
    v48 = sub_266DAAAFC();
    if (OUTLINED_FUNCTION_16_0(v48))
    {
      v49 = OUTLINED_FUNCTION_14_0();
      *v49 = 134217984;
      if (v43 >> 62)
      {
        v50 = sub_266DAAD5C();
      }

      else
      {
        v50 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v49 + 4) = v50;

      _os_log_impl(&dword_266C08000, v47, v48, "Contact resolver created %ld skeletons when exactly 1 is expected.", v49, 0xCu);
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v45 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v65);
  return v45;
}

uint64_t sub_266D03CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v24 - v12;
  FriendIntentWrapper = type metadata accessor for FindFriendIntentWrapper(0);
  v29 = &off_28785D820;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  sub_266D03F5C(a1, boxed_opaque_existential_1);
  v15 = sub_266DA8C4C();
  v25 = v15;
  v26 = &off_28785D468;
  v16 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(v15 - 8) + 16))(v16, a2, v15);
  v17 = __swift_project_boxed_opaque_existential_1(v27, FriendIntentWrapper);
  sub_266C744CC(v17, v13, &unk_2800C95E0, &unk_266DAE370);
  v18 = sub_266DA8D0C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    sub_266C3A088(v13, &unk_2800C95E0, &unk_266DAE370);
LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  v19 = __swift_project_boxed_opaque_existential_1(v24, v25);
  v20 = sub_266D03560(a4, v19, a3, v13);
  (*(*(v18 - 8) + 8))(v13, v18);
  if (!v20)
  {
    goto LABEL_5;
  }

  type metadata accessor for INFriend();
  v21 = type metadata accessor for Friend(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v21);
  v22 = sub_266C6FCE0(v20, v10);
LABEL_6:
  [a4 setFriend_];

  __swift_destroy_boxed_opaque_existential_0(v27);
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_266D03F5C(uint64_t a1, uint64_t a2)
{
  FriendIntentWrapper = type metadata accessor for FindFriendIntentWrapper(0);
  (*(*(FriendIntentWrapper - 8) + 16))(a2, a1, FriendIntentWrapper);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_36(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_266C3A088(v2 - 184, v0, v1);
}

void OUTLINED_FUNCTION_12_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_13_17()
{

  return sub_266C744CC(v2 - 184, v2 - 240, v0, v1);
}

uint64_t sub_266D04068(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_266D040A8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_266D04108(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Array<A>.getDisplayHints(idNode:referenceNode:)();
  v8 = v7;
  sub_266D04210(a1, a2, a3);
  sub_266CC4C74();
  sub_266CC4FB8();

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_266CC0DAC(v8);
}

uint64_t sub_266D04210(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = a3;
  v20 = sub_266DA835C();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266DA838C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  sub_266DA837C();
  v26 = MEMORY[0x277D84F90];
  v22 = a1;
  v23 = a2;
  v24 = v18[1];
  v25 = &v26;
  sub_266CB9F3C(sub_266D0479C, v21, v19);
  sub_266DA836C();
  sub_266DA834C();
  (*(v9 + 16))(v12, v14, v8);
  sub_266DA832C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B8, &unk_266DB79E0);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_266DAE4A0;
  (*(v5 + 32))(v16 + v15, v7, v20);
  (*(v9 + 8))(v14, v8);
  return v16;
}

uint64_t sub_266D0447C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v28 = a5;
  v26 = a4;
  v29 = sub_266DA82EC();
  v6 = *(v29 - 8);
  v7 = MEMORY[0x28223BE20](v29);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_266DA824C();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_266DA831C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v19 = *a1;
  sub_266DA830C();
  type metadata accessor for FindFriendIntent();
  if (swift_dynamicCastClass())
  {
    sub_266D047BC(v19);
LABEL_5:
    sub_266DA82FC();
    goto LABEL_6;
  }

  type metadata accessor for SetGeoFenceIntent();
  if (swift_dynamicCastClass())
  {
    sub_266D048FC(v19);
    goto LABEL_5;
  }

LABEL_6:
  sub_266DA82DC();
  (*(v13 + 16))(v16, v18, v12);
  sub_266DA82BC();
  v20 = v27;
  v21 = v29;
  (*(v6 + 16))(v27, v10, v29);
  v22 = v28;
  sub_266C386B0();
  v23 = *(*v22 + 16);
  sub_266C3873C(v23);
  (*(v6 + 8))(v10, v21);
  (*(v13 + 8))(v18, v12);
  v24 = *v22;
  *(v24 + 16) = v23 + 1;
  return (*(v6 + 32))(v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v20, v21);
}

uint64_t sub_266D047BC(void *a1)
{
  sub_266DA8B2C();
  swift_allocObject();
  v2 = sub_266DA8B1C();
  sub_266DA895C();
  swift_allocObject();
  sub_266DA894C();
  v3 = [a1 displayName];
  sub_266DAA70C();

  sub_266DA893C();

  sub_266DA89FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266DAE3B0;
  *(v4 + 32) = v2;

  sub_266D04A98(v4);
}

uint64_t sub_266D048FC(void *a1)
{
  sub_266DA8BAC();
  swift_allocObject();
  v2 = sub_266DA8B9C();
  sub_266DA8A5C();
  swift_allocObject();
  sub_266DA8A4C();
  sub_266DA895C();
  swift_allocObject();
  sub_266DA894C();
  v3 = [a1 displayName];
  sub_266DAA70C();

  sub_266DA893C();

  sub_266DA8A3C();

  sub_266DA8B6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266DAE3B0;
  *(v4 + 32) = v2;

  sub_266D04A98(v4);
}

uint64_t sub_266D04A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7E8, &unk_266DB79F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_266DA86BC();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  MEMORY[0x26D5EEFB0](a1, v4);
  sub_266D04C1C(v4);
  sub_266DA83DC();
}

uint64_t sub_266D04C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7E8, &unk_266DB79F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266D04C84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SiriFindMy15StringLocalizer_bundle;
  type metadata accessor for StringLocalizer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v3) = [objc_opt_self() bundleForClass_];
  v5 = OBJC_IVAR____TtC10SiriFindMy15StringLocalizer_siriLocale;
  v6 = sub_266DA750C();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

ValueMetadata *sub_266D04D34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v45 = a1;
  v10 = sub_266DA750C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v5;
  if (a3)
  {
    v14 = v5 + OBJC_IVAR____TtC10SiriFindMy15StringLocalizer_siriLocale;
    v15 = sub_266DA74CC();
    v17 = OUTLINED_FUNCTION_1_39(v15, v16);
    OUTLINED_FUNCTION_0_58(v17, v18, v19, v20, v21, v22, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_2_42();
  }

  else
  {
    sub_266DA74FC();
    v14 = v13;
    v23 = sub_266DA74CC();
    v25 = OUTLINED_FUNCTION_1_39(v23, v24);
    OUTLINED_FUNCTION_0_58(v25, v26, v27, v28, v29, v30, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_2_42();
    (*(v11 + 8))(v13, v10);
  }

  v31 = [objc_opt_self() sharedInstance];
  if (v31 && (v32 = *(v44 + OBJC_IVAR____TtC10SiriFindMy15StringLocalizer_bundle), v33 = v31, v34 = sub_266D05170(v45, a2, v53, a5, v32, v6, v14, v33), v36 = v35, v33, v33, v36))
  {
  }

  else
  {

    v37 = a3;
    v38 = v45;
    v46 = v45;
    v47 = a2;
    v39 = v53;
    v48 = v53;
    v49 = a5;
    v40 = v37 & 1;
    v50 = v37 & 1;
    v51 = v6;
    v52 = v14;
    sub_266D0511C();
    v34 = &type metadata for StringLocalizingError;
    swift_willThrowTypedImpl();
    swift_allocError();
    *v41 = v38;
    *(v41 + 8) = a2;
    *(v41 + 16) = v39;
    *(v41 + 24) = a5;
    *(v41 + 32) = v40;
    *(v41 + 40) = v6;
    *(v41 + 48) = v14;
  }

  return v34;
}

uint64_t sub_266D04F80()
{
  v1 = OBJC_IVAR____TtC10SiriFindMy15StringLocalizer_siriLocale;
  v2 = sub_266DA750C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for StringLocalizer(uint64_t a1)
{
  result = qword_2800CCA18;
  if (!qword_2800CCA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D05080(uint64_t a1)
{
  result = sub_266DA750C();
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

unint64_t sub_266D0511C()
{
  result = qword_2800CCA28;
  if (!qword_2800CCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA28);
  }

  return result;
}

uint64_t sub_266D05170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_266DAA6FC();
  v11 = sub_266DAA6FC();
  v12 = sub_266DAA6FC();
  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_266DAA70C();

  return v14;
}

uint64_t sub_266D05248(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_266D05288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalizationSystem(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D053C4()
{
  result = qword_2800CCA30;
  if (!qword_2800CCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x28211F2F8](v7 - 96, v7 - 112, 0, 0, 0, 1, a7, a7, a7, a1, a1, a1);
}

unint64_t OUTLINED_FUNCTION_1_39(uint64_t a1, uint64_t a2)
{
  *(v2 - 168) = a1;
  *(v2 - 160) = a2;
  *(v2 - 96) = 45;
  *(v2 - 88) = 0xE100000000000000;
  *(v2 - 112) = 95;
  *(v2 - 104) = 0xE100000000000000;

  return sub_266C680F8();
}

uint64_t OUTLINED_FUNCTION_2_42()
{
}

uint64_t sub_266D0549C()
{
  OUTLINED_FUNCTION_22_0();
  v0[23] = v1;
  v0[24] = v2;
  v0[22] = v3;
  v4 = type metadata accessor for Snippets(0);
  v0[25] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v0[26] = OUTLINED_FUNCTION_64();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v0[30] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v0[31] = v6;
  v0[32] = swift_task_alloc();
  v7 = sub_266DA7C0C();
  v0[33] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v0[34] = v8;
  v0[35] = OUTLINED_FUNCTION_64();
  v0[36] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v0[37] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v0[38] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v0[39] = v12;
  v0[40] = *(v13 + 64);
  v0[41] = OUTLINED_FUNCTION_64();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_266D05704()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 376);
  v2 = *(v0 + 200);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  *v1 = 4;
  *(v1 + 8) = xmmword_266DB2FB0;
  *(v1 + 24) = 0;
  OUTLINED_FUNCTION_32();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_86_0();
  *(v0 + 472) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  swift_allocObject();
  *(v0 + 392) = sub_266DA93CC();
  v6 = swift_task_alloc();
  *(v0 + 400) = v6;
  *v6 = v0;
  v6[1] = sub_266D05800;

  return sub_266CB4908();
}

uint64_t sub_266D05800()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  *v4 = *v1;
  v3[51] = v5;
  v3[52] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v3[47]);
    v6 = OUTLINED_FUNCTION_32();
    sub_266C47654(v6, v7, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D05DD4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D05EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[51];
  v27 = v22[28];
  v26 = v22[29];

  sub_266C477B4(v27);
  sub_266C477B4(v26);
  v28 = OUTLINED_FUNCTION_6_7();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  OUTLINED_FUNCTION_17_5();
  v32 = OUTLINED_FUNCTION_38();
  sub_266C47654(v32, v33, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D0605C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D0615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 408);
  v26 = *(v22 + 216);

  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_6_7();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  OUTLINED_FUNCTION_17_5();
  v31 = OUTLINED_FUNCTION_38();
  sub_266C47654(v31, v32, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D062D4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D063D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 408);
  v26 = *(v22 + 208);

  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_6_7();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);
  OUTLINED_FUNCTION_17_5();
  v31 = OUTLINED_FUNCTION_38();
  sub_266C47654(v31, v32, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D0654C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D0664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 408);

  v26 = OUTLINED_FUNCTION_6_7();
  v27(v26);
  v28 = OUTLINED_FUNCTION_18_3();
  v29(v28);
  OUTLINED_FUNCTION_17_5();
  v30 = OUTLINED_FUNCTION_38();
  sub_266C47654(v30, v31, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_266D067B8()
{

  OUTLINED_FUNCTION_39();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D068EC()
{
  OUTLINED_FUNCTION_22_0();
  *(v0 + 832) = v1;
  *(v0 + 824) = v2;
  *(v0 + 1849) = v3;
  *(v0 + 816) = v4;
  v5 = type metadata accessor for Snippets(0);
  *(v0 + 840) = v5;
  OUTLINED_FUNCTION_4_3(v5);
  *(v0 + 848) = OUTLINED_FUNCTION_64();
  *(v0 + 856) = swift_task_alloc();
  *(v0 + 864) = swift_task_alloc();
  *(v0 + 872) = swift_task_alloc();
  *(v0 + 880) = swift_task_alloc();
  *(v0 + 888) = swift_task_alloc();
  *(v0 + 896) = swift_task_alloc();
  *(v0 + 904) = swift_task_alloc();
  *(v0 + 912) = swift_task_alloc();
  *(v0 + 920) = swift_task_alloc();
  *(v0 + 928) = swift_task_alloc();
  *(v0 + 936) = swift_task_alloc();
  *(v0 + 944) = swift_task_alloc();
  *(v0 + 952) = swift_task_alloc();
  *(v0 + 960) = swift_task_alloc();
  *(v0 + 968) = swift_task_alloc();
  *(v0 + 976) = swift_task_alloc();
  *(v0 + 984) = swift_task_alloc();
  *(v0 + 992) = swift_task_alloc();
  *(v0 + 1000) = swift_task_alloc();
  v6 = sub_266DA80AC();
  *(v0 + 1008) = v6;
  OUTLINED_FUNCTION_11_3(v6);
  *(v0 + 1016) = v7;
  *(v0 + 1024) = OUTLINED_FUNCTION_64();
  *(v0 + 1032) = swift_task_alloc();
  *(v0 + 1040) = swift_task_alloc();
  *(v0 + 1048) = swift_task_alloc();
  *(v0 + 1056) = swift_task_alloc();
  v8 = sub_266DA7C0C();
  *(v0 + 1064) = v8;
  OUTLINED_FUNCTION_11_3(v8);
  *(v0 + 1072) = v9;
  *(v0 + 1080) = OUTLINED_FUNCTION_64();
  *(v0 + 1088) = swift_task_alloc();
  *(v0 + 1096) = swift_task_alloc();
  *(v0 + 1104) = swift_task_alloc();
  *(v0 + 1112) = swift_task_alloc();
  *(v0 + 1120) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v10);
  *(v0 + 1128) = OUTLINED_FUNCTION_64();
  *(v0 + 1136) = swift_task_alloc();
  *(v0 + 1144) = swift_task_alloc();
  *(v0 + 1152) = swift_task_alloc();
  *(v0 + 1160) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v11);
  *(v0 + 1168) = OUTLINED_FUNCTION_64();
  *(v0 + 1176) = swift_task_alloc();
  *(v0 + 1184) = swift_task_alloc();
  *(v0 + 1192) = swift_task_alloc();
  *(v0 + 1200) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v12);
  *(v0 + 1208) = v13;
  *(v0 + 1216) = *(v14 + 64);
  *(v0 + 1224) = OUTLINED_FUNCTION_64();
  *(v0 + 1232) = swift_task_alloc();
  *(v0 + 1240) = swift_task_alloc();
  *(v0 + 1248) = swift_task_alloc();
  *(v0 + 1256) = swift_task_alloc();
  *(v0 + 1264) = swift_task_alloc();
  *(v0 + 1272) = swift_task_alloc();
  *(v0 + 1280) = swift_task_alloc();
  *(v0 + 1288) = swift_task_alloc();
  *(v0 + 1296) = swift_task_alloc();
  *(v0 + 1304) = swift_task_alloc();
  *(v0 + 1312) = swift_task_alloc();
  *(v0 + 1320) = swift_task_alloc();
  *(v0 + 1328) = swift_task_alloc();
  *(v0 + 1336) = swift_task_alloc();
  *(v0 + 1344) = swift_task_alloc();
  *(v0 + 1352) = swift_task_alloc();
  *(v0 + 1360) = swift_task_alloc();
  *(v0 + 1368) = swift_task_alloc();
  *(v0 + 1376) = swift_task_alloc();
  *(v0 + 1384) = swift_task_alloc();
  *(v0 + 1392) = swift_task_alloc();
  *(v0 + 1400) = swift_task_alloc();
  *(v0 + 1408) = swift_task_alloc();
  *(v0 + 1416) = swift_task_alloc();
  *(v0 + 1424) = swift_task_alloc();
  *(v0 + 1432) = swift_task_alloc();
  *(v0 + 1440) = swift_task_alloc();
  *(v0 + 1448) = swift_task_alloc();
  *(v0 + 1456) = swift_task_alloc();
  *(v0 + 1464) = swift_task_alloc();
  *(v0 + 1472) = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_266D06DE4()
{
  OUTLINED_FUNCTION_22_0();
  switch(*(v0 + 1849))
  {
    case 1:
      v32 = *(v0 + 840);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
      v36 = OUTLINED_FUNCTION_28_6();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v32);
      v39 = swift_task_alloc();
      *(v0 + 1632) = v39;
      *v39 = v0;
      OUTLINED_FUNCTION_58_1(v39);

      result = sub_266CB382C();
      break;
    case 2:
      v18 = *(v0 + 840);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
      v22 = OUTLINED_FUNCTION_28_6();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
      v25 = swift_task_alloc();
      *(v0 + 1704) = v25;
      *v25 = v0;
      OUTLINED_FUNCTION_58_1(v25);

      result = sub_266CB3784();
      break;
    case 3:
      v26 = *(v0 + 1464);
      v27 = *(v0 + 840);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
      *v26 = 3;
      *(v26 + 8) = xmmword_266DAFA10;
      *(v26 + 24) = 0;
      OUTLINED_FUNCTION_32();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_86_0();
      v31 = swift_task_alloc();
      *(v0 + 1480) = v31;
      *v31 = v0;
      OUTLINED_FUNCTION_58_1(v31);

      result = sub_266CB2AD0();
      break;
    case 4:
      v10 = *(v0 + 840);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
      v14 = OUTLINED_FUNCTION_28_6();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
      v17 = swift_task_alloc();
      *(v0 + 1776) = v17;
      *v17 = v0;
      OUTLINED_FUNCTION_58_1(v17);

      result = sub_266CB59CC();
      break;
    default:
      v1 = *(v0 + 1400);
      v2 = *(v0 + 840);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
      *v1 = 5;
      *(v1 + 8) = xmmword_266DB27A0;
      *(v1 + 24) = 0;
      OUTLINED_FUNCTION_32();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_86_0();
      *(v0 + 1848) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
      swift_allocObject();
      *(v0 + 1552) = sub_266DA93CC();
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v7 = OUTLINED_FUNCTION_101(v6);
      *(v0 + 1560) = v7;
      *(v7 + 16) = xmmword_266DAE3B0;
      v8 = swift_task_alloc();
      *(v0 + 1568) = v8;
      *v8 = v0;
      OUTLINED_FUNCTION_58_1(v8);

      result = sub_266CB476C();
      break;
  }

  return result;
}

uint64_t sub_266D07154()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  *v4 = *v1;
  v3[186] = v5;
  v3[187] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v3[183]);
    v6 = OUTLINED_FUNCTION_32();
    sub_266C47654(v6, v7, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D07730()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 776));
  __swift_destroy_boxed_opaque_existential_0((v2 + 736));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D07838()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = v0[186];
  v12 = v0[183];
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_114_0();
  v2 = v0[125];
  v3 = v0[124];

  sub_266C477B4(v3);
  sub_266C477B4(v2);
  v4 = OUTLINED_FUNCTION_83();
  v5(v4);
  v6 = OUTLINED_FUNCTION_38();
  v7(v6);
  OUTLINED_FUNCTION_31_1(v12);
  OUTLINED_FUNCTION_49_6();
  v8 = v0[150];
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v9, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v8, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D07C40()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 696));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D07D40()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_66_2();
  v2 = *(v0 + 984);

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = *(v0 + 1200);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D08110()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 656));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D08210()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_66_2();
  v2 = *(v0 + 976);

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = *(v0 + 1200);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D085E0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

void sub_266D086E0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 1488);
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_122();

  v2 = OUTLINED_FUNCTION_83();
  v3(v2);
  v4 = OUTLINED_FUNCTION_38();
  v5(v4);
  OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_58();
  sub_266C47654(v6, v7, &qword_266DB0080);
  v8 = *(v0 + 1200);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_77_3();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v9, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v8, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D08ACC()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[197] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v5[175]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  else
  {
    v5[198] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11);
}

void sub_266D08BFC()
{
  *(v0[195] + 32) = v0[198];
  sub_266DA7E5C();
  v1 = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_123(v1, v2, 1, v3);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    v8 = v0[195] & 0xC000000000000001;
    sub_266CB9F54();
    v9 = v0[195];
    if (v8)
    {
      v10 = MEMORY[0x26D5F1780](0, v9);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;
    v12 = [v10 catId];

    v64 = sub_266DAA70C();
    v67 = v13;
  }

  else
  {
    v64 = 0;
    v67 = 0;
  }

  v14 = v0[182];
  v15 = v0[181];
  v16 = v0[176];
  v17 = v0[152];
  v18 = v0[151];
  v61 = v0[149];
  v62 = v0[144];
  v19 = v0[139];
  v60 = v0[138];
  v20 = v0[134];
  v21 = v0[133];
  v63 = v16;
  v65 = v0[105];
  v66 = v0[174];
  v22 = v0[104];
  sub_266C4756C(v0[175], v14);
  sub_266C4756C(v16, v15);
  v23 = *(v18 + 80);
  v24 = (v23 + 24) & ~v23;
  v25 = (v17 + v23 + v24) & ~v23;
  v26 = swift_allocObject();
  v0[199] = v26;
  *(v26 + 16) = v22;
  sub_266C475DC(v14, v26 + v24);
  sub_266C475DC(v15, v26 + v25);
  (*(v20 + 16))(v19, v60, v21);
  v27 = swift_task_alloc();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 40) = v64;
  *(v27 + 48) = v67;
  *(v27 + 56) = v61;
  *(v27 + 64) = 514;
  *(v27 + 72) = sub_266C48BBC;
  *(v27 + 80) = v26;
  *(v27 + 88) = v62;

  sub_266DA800C();

  sub_266C4756C(v63, v66);
  if (__swift_getEnumTagSinglePayload(v66, 1, v65) == 1)
  {
    v28 = v0 + 174;
  }

  else
  {
    sub_266C476A8(v0[174], v0[121]);
    v29 = OUTLINED_FUNCTION_32();
    sub_266C4756C(v29, v30);
    OUTLINED_FUNCTION_19_2();
    if (!v31)
    {
      OUTLINED_FUNCTION_109_1(v0[173]);
      v0[75] = v27;
      v48 = sub_266C4DB4C();
      v0[76] = v48;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 72);
      OUTLINED_FUNCTION_55_0(boxed_opaque_existential_1);
      v0[80] = v27;
      v0[81] = v48;
      v50 = __swift_allocate_boxed_opaque_existential_1(v0 + 77);
      OUTLINED_FUNCTION_86(v50);
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD30]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[200] = v51;
      *v51 = v52;
      v51[1] = sub_266D091B8;
      OUTLINED_FUNCTION_47_5();
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v28 = v0 + 173;
    sub_266C477B4(v0[121]);
  }

  sub_266C47654(*v28, &qword_2800CA050, &qword_266DB0080);
  v32 = OUTLINED_FUNCTION_32();
  sub_266C4756C(v32, v33);
  OUTLINED_FUNCTION_29();
  v34 = v0[172];
  v35 = v0[105];
  if (v36 == 1)
  {
    v37 = v0[175];
    v38 = v0[171];
    sub_266C47654(v34, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v37, v38);
    v39 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v39, v40, v35) == 1)
    {
      sub_266C47654(v0[171], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD50]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[203] = v41;
      *v41 = v42;
      v41[1] = sub_266D09FD0;
      OUTLINED_FUNCTION_47_5();
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    OUTLINED_FUNCTION_111_1(v0[171]);
    v0[65] = v37;
    v0[66] = sub_266C4DB4C();
    v55 = __swift_allocate_boxed_opaque_existential_1(v0 + 62);
    OUTLINED_FUNCTION_55_0(v55);
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD40]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[202] = v56;
    *v56 = v57;
    v56[1] = sub_266D09B24;
    OUTLINED_FUNCTION_47_5();
  }

  else
  {
    sub_266C476A8(v34, v0[119]);
    v0[70] = v35;
    v0[71] = sub_266C4DB4C();
    v45 = __swift_allocate_boxed_opaque_existential_1(v0 + 67);
    OUTLINED_FUNCTION_86(v45);
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD38]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[201] = v46;
    *v46 = v47;
    v46[1] = sub_266D09678;
    OUTLINED_FUNCTION_47_5();
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266D091B8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 616));
  __swift_destroy_boxed_opaque_existential_0((v2 + 576));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D092C0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_1();
  v1 = v0[121];
  v2 = v0[120];

  sub_266C477B4(v2);
  sub_266C477B4(v1);
  v3 = OUTLINED_FUNCTION_14_24();
  v4(v3);
  v5 = OUTLINED_FUNCTION_38();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_58();
  sub_266C47654(v7, v8, &qword_266DB0080);
  v9 = v0[149];
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v10, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v9, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D09678()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 536));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D09778()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_1();
  v1 = *(v0 + 952);

  sub_266C477B4(v1);
  v2 = OUTLINED_FUNCTION_14_24();
  v3(v2);
  v4 = OUTLINED_FUNCTION_38();
  v5(v4);
  OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_58();
  sub_266C47654(v6, v7, &qword_266DB0080);
  v8 = *(v0 + 1192);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v9, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v8, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D09B24()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 496));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D09C24()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_1();
  v1 = *(v0 + 944);

  sub_266C477B4(v1);
  v2 = OUTLINED_FUNCTION_14_24();
  v3(v2);
  v4 = OUTLINED_FUNCTION_38();
  v5(v4);
  OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_58();
  sub_266C47654(v6, v7, &qword_266DB0080);
  v8 = *(v0 + 1192);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v9, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v8, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D09FD0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

void sub_266D0A0D0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_112_1();

  v1 = OUTLINED_FUNCTION_14_24();
  v2(v1);
  v3 = OUTLINED_FUNCTION_38();
  v4(v3);
  OUTLINED_FUNCTION_41_2();
  v5 = OUTLINED_FUNCTION_58();
  sub_266C47654(v5, v6, &qword_266DB0080);
  v7 = *(v0 + 1192);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0A470()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  *v4 = *v1;
  v3[205] = v5;
  v3[206] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v3[169]);
    v6 = OUTLINED_FUNCTION_32();
    sub_266C47654(v6, v7, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D0AA40()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 456));
  __swift_destroy_boxed_opaque_existential_0((v2 + 416));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D0AB48()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = v0[205];
  v12 = v0[169];
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_114_0();
  v2 = v0[117];
  v3 = v0[116];

  sub_266C477B4(v3);
  sub_266C477B4(v2);
  v4 = OUTLINED_FUNCTION_83();
  v5(v4);
  v6 = OUTLINED_FUNCTION_38();
  v7(v6);
  OUTLINED_FUNCTION_31_1(v12);
  OUTLINED_FUNCTION_49_6();
  v8 = v0[148];
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v9, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v8, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0AF14()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 376));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D0B014()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_67_1();
  v2 = *(v0 + 920);

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = *(v0 + 1184);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0B3A8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 336));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D0B4A8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_67_1();
  v2 = *(v0 + 912);

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = *(v0 + 1184);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0B83C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

void sub_266D0B93C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 1640);
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_122();

  v2 = OUTLINED_FUNCTION_83();
  v3(v2);
  v4 = OUTLINED_FUNCTION_38();
  v5(v4);
  OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_58();
  sub_266C47654(v6, v7, &qword_266DB0080);
  v8 = *(v0 + 1184);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v9, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v8, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0BCEC()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  *v4 = *v1;
  v3[214] = v5;
  v3[215] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v3[163]);
    v6 = OUTLINED_FUNCTION_32();
    sub_266C47654(v6, v7, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D0C2BC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D0C3C4()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = v0[214];
  v12 = v0[163];
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_114_0();
  v2 = v0[113];
  v3 = v0[112];

  sub_266C477B4(v3);
  sub_266C477B4(v2);
  v4 = OUTLINED_FUNCTION_83();
  v5(v4);
  v6 = OUTLINED_FUNCTION_38();
  v7(v6);
  OUTLINED_FUNCTION_31_1(v12);
  OUTLINED_FUNCTION_49_6();
  v8 = v0[147];
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v9, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v8, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0C7BC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D0C8BC()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_64_0();
  v2 = *(v0 + 888);

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = *(v0 + 1176);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0CC7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D0CD7C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_64_0();
  v2 = *(v0 + 880);

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = *(v0 + 1176);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0D13C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

void sub_266D0D23C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 1712);
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_122();

  v2 = OUTLINED_FUNCTION_83();
  v3(v2);
  v4 = OUTLINED_FUNCTION_38();
  v5(v4);
  OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_58();
  sub_266C47654(v6, v7, &qword_266DB0080);
  v8 = *(v0 + 1176);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_19_15();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v9, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v8, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0D618()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  *v4 = *v1;
  v3[223] = v5;
  v3[224] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v3[157]);
    v6 = OUTLINED_FUNCTION_32();
    sub_266C47654(v6, v7, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D0DBE8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D0DCF0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = v0[223];
  v12 = v0[157];
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_114_0();
  v2 = v0[109];
  v3 = v0[108];

  sub_266C477B4(v3);
  sub_266C477B4(v2);
  v4 = OUTLINED_FUNCTION_83();
  v5(v4);
  v6 = OUTLINED_FUNCTION_38();
  v7(v6);
  OUTLINED_FUNCTION_31_1(v12);
  OUTLINED_FUNCTION_49_6();
  v8 = v0[146];
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v9, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v8, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0E0C0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D0E1C0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_68_1();
  v2 = *(v0 + 856);

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = *(v0 + 1168);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0E558()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

void sub_266D0E658()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_68_1();
  v2 = *(v0 + 848);

  sub_266C477B4(v2);
  v3 = OUTLINED_FUNCTION_23_14();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_10();
  v6(v5);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_49_6();
  v7 = *(v0 + 1168);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v7, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D0E9F0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

void sub_266D0EAF0()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 1784);
  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_122();

  v2 = OUTLINED_FUNCTION_83();
  v3(v2);
  v4 = OUTLINED_FUNCTION_38();
  v5(v4);
  OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_58();
  sub_266C47654(v6, v7, &qword_266DB0080);
  v8 = *(v0 + 1168);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_37();
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_0_59();
  sub_266C47654(v9, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v8, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D0EEA4()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_43(*(v0 + 1496));

  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D0F148()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 1560);

  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_2_43(*(v0 + 1576));

  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D0F404()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_43(*(v0 + 1648));

  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D0F6A8()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_43(*(v0 + 1720));

  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

void sub_266D0F94C()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_43(*(v0 + 1792));

  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X1, X16 }
}

uint64_t objectdestroyTm_9()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v34 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v35 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v35, v36, v1))
        {
          v37 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v38 + 8))(v34 + v37);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v34 + v1[11]);
          v39 = type metadata accessor for Address(0);
          v40 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v40, v41, v39))
          {
            sub_266DA919C();
            v42 = OUTLINED_FUNCTION_109();
            v114 = v43;
            if (!__swift_getEnumTagSinglePayload(v42, v44, v43))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v45 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v46 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v46, v47, v48, v49, v50, v51, v52, v53, v112, v114))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v54 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v113 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v113))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v112 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v112, 1, v113))
              {
                (*(*(v113 - 8) + 8))(v32 + v112);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v55);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v56 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v57 = v0 + v10;
  v58 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v58, v59, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v57);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v64 = v57 + *(type metadata accessor for Friend(0) + 40);
        v65 = type metadata accessor for FriendLocation(0);
        v66 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v66, v67, v65))
        {
          break;
        }

        v68 = v64 + *(v65 + 32);
LABEL_57:
        v99 = type metadata accessor for Location(0);
        v100 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v100, v101, v99))
        {
          v102 = *(v99 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v103 + 8))(v68 + v102);

          v104 = v68 + *(v99 + 44);
          v105 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v105))
          {
            v106 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v104, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v107 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v104 + v107, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104 + v107, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v73 = v57 + *(type metadata accessor for Friend(0) + 40);
        v74 = type metadata accessor for FriendLocation(0);
        v75 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v75, v76, v74))
        {

          v77 = v73 + *(v74 + 32);
          v78 = type metadata accessor for Location(0);
          v79 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v79, v80, v78))
          {
            v81 = *(v78 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v82 + 8))(v77 + v81);

            v2 = (v77 + *(v78 + 44));
            v83 = type metadata accessor for Address(0);
            v84 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v84, v85, v83))
            {
              sub_266DA919C();
              v86 = OUTLINED_FUNCTION_109();
              v115 = v87;
              if (!__swift_getEnumTagSinglePayload(v86, v88, v87))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v89 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v90 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v90, v91, v92, v93, v94, v95, v96, v97, v112, v115))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v98 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v68 = v57 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v108);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v72);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v57 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v69 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v70 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v70 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v109 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v110 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v110 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v60 + 8))(v0 + v10);
        v61 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v62 = *(v61 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v63 + 8))(v57 + v62);
        if (*(v57 + *(v61 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

void OUTLINED_FUNCTION_0_59()
{
  v2 = v0[128];
  *(v1 - 256) = v0[129];
  *(v1 - 248) = v2;
  v3 = v0[124];
  *(v1 - 240) = v0[125];
  *(v1 - 232) = v3;
  v4 = v0[122];
  *(v1 - 224) = v0[123];
  *(v1 - 216) = v4;
  v5 = v0[120];
  *(v1 - 208) = v0[121];
  *(v1 - 200) = v5;
  v6 = v0[118];
  *(v1 - 192) = v0[119];
  *(v1 - 184) = v6;
  v7 = v0[116];
  *(v1 - 176) = v0[117];
  *(v1 - 168) = v7;
  v8 = v0[114];
  *(v1 - 160) = v0[115];
  *(v1 - 152) = v8;
  v9 = v0[112];
  *(v1 - 144) = v0[113];
  *(v1 - 136) = v9;
  v10 = v0[110];
  *(v1 - 128) = v0[111];
  *(v1 - 120) = v10;
  v11 = v0[108];
  *(v1 - 112) = v0[109];
  *(v1 - 104) = v11;
  v12 = v0[106];
  *(v1 - 96) = v0[107];
  *(v1 - 88) = v12;
}

uint64_t OUTLINED_FUNCTION_2_43@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v4 = v1[125];
  *(v2 - 256) = v1[128];
  *(v2 - 248) = v4;
  v5 = v1[123];
  *(v2 - 240) = v1[124];
  *(v2 - 232) = v5;
  v6 = v1[121];
  *(v2 - 224) = v1[122];
  *(v2 - 216) = v6;
  v7 = v1[119];
  *(v2 - 208) = v1[120];
  *(v2 - 200) = v7;
  v8 = v1[117];
  *(v2 - 192) = v1[118];
  *(v2 - 184) = v8;
  v9 = v1[115];
  *(v2 - 176) = v1[116];
  *(v2 - 168) = v9;
  v10 = v1[113];
  *(v2 - 160) = v1[114];
  *(v2 - 152) = v10;
  v11 = v1[111];
  *(v2 - 144) = v1[112];
  *(v2 - 136) = v11;
  v12 = v1[109];
  *(v2 - 128) = v1[110];
  *(v2 - 120) = v12;
  v13 = v1[107];
  *(v2 - 112) = v1[108];
  *(v2 - 104) = v13;
  *(v2 - 96) = v1[106];
}

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_266DA7BCC();
}

uint64_t OUTLINED_FUNCTION_41_2()
{

  return sub_266C47654(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1)
{

  return sub_266C4756C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_49_6()
{
  v4 = *(v2 - 88);

  return sub_266C47654(v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_56_2()
{

  return sub_266DA800C();
}

uint64_t OUTLINED_FUNCTION_64_0()
{
  result = *(v0 + 1736);
  *(v1 - 88) = *(v0 + 1312);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  result = *(v0 + 1512);
  *(v1 - 88) = *(v0 + 1472);
  return result;
}

uint64_t OUTLINED_FUNCTION_67_1()
{
  result = *(v0 + 1664);
  *(v1 - 88) = *(v0 + 1360);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_1()
{
  result = *(v0 + 1808);
  *(v1 - 88) = *(v0 + 1264);
  return result;
}

uint64_t OUTLINED_FUNCTION_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_266C4756C(a14, a17);
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a1 + 88) = a12;
}

uint64_t OUTLINED_FUNCTION_83_2(uint64_t a1)
{
  *(a1 + 16) = v3;

  return sub_266C475DC(v1, a1 + v2);
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return sub_266C475DC(v1, v0 + v2);
}

uint64_t OUTLINED_FUNCTION_105_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_106_1()
{

  return sub_266C4756C(v1, v0);
}

void OUTLINED_FUNCTION_107_1()
{
}

id OUTLINED_FUNCTION_108_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_109_1(uint64_t a1)
{

  return sub_266C476A8(a1, v1);
}

void OUTLINED_FUNCTION_110_1()
{

  JUMPOUT(0x26D5F1780);
}

uint64_t OUTLINED_FUNCTION_111_1(uint64_t a1)
{

  return sub_266C476A8(a1, v1);
}

uint64_t OUTLINED_FUNCTION_122()
{
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return sub_266DA7C7C();
}

uint64_t sub_266D1111C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CCA38);
  v1 = __swift_project_value_buffer(v0, qword_2800CCA38);
  if (qword_2800C90F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E6178);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_266D111E4@<X0>(void *a2@<X8>)
{
  a2[3] = type metadata accessor for FindDeviceAndPlaySoundIntentHandler();
  *a2 = v4;

  return v4;
}

uint64_t sub_266D11298(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D112AC()
{
  if (qword_2800C9360 != -1)
  {
    OUTLINED_FUNCTION_0_60(&qword_2800C9360);
  }

  v1 = *(v0 + 16);
  v2 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v2, qword_2800CCA38);
  v3 = v1;
  v4 = sub_266DA948C();
  v5 = sub_266DAAB0C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = OUTLINED_FUNCTION_14_0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_266C08000, v4, v5, "Resolving devices slot for intent %@", v7, 0xCu);
    sub_266C3A088(v8, &qword_2800C9F78, &unk_266DB1430);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_33_6();
  }

  v10 = *(v0 + 16);

  v11 = sub_266D14B44(v10);
  if (v11)
  {
    v12 = v11;
    v13 = sub_266DA948C();
    v14 = sub_266DAAB0C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_14_0();
      *v15 = 134217984;
      *(v15 + 4) = sub_266C3A14C();
      _os_log_impl(&dword_266C08000, v13, v14, "Using intent device details: %ld devices", v15, 0xCu);
      OUTLINED_FUNCTION_33_6();
    }

    v16 = sub_266D11E20(v12);

LABEL_9:
    OUTLINED_FUNCTION_43_4();

    return v17(v16);
  }

  v19 = [*(v0 + 16) deviceQuery];
  *(v0 + 32) = v19;
  if (!v19)
  {
    v22 = *(v0 + 16);
    v23 = sub_266DA948C();
    v24 = sub_266DAAAFC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 16);
      v26 = OUTLINED_FUNCTION_14_0();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v25;
      *v27 = v25;
      v28 = v25;
      OUTLINED_FUNCTION_11_21();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_266C3A088(v27, &qword_2800C9F78, &unk_266DB1430);
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_5_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v16, xmmword_266DAE3B0);
    v34 = OUTLINED_FUNCTION_33_8();
    v16[2].n128_u64[0] = sub_266D9F49C(v34);
    goto LABEL_9;
  }

  v20 = v19;
  v21 = swift_task_alloc();
  *(v0 + 40) = v21;
  *v21 = v0;
  v21[1] = sub_266D11610;

  return sub_266D11ABC(v20);
}

uint64_t sub_266D11610()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_266D116FC()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_43_4();

  return v1();
}

uint64_t sub_266D11778(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266D1183C;

  return sub_266D11298(v6);
}

uint64_t sub_266D1183C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  type metadata accessor for FindDeviceAndPlaySoundDevicesResolutionResult();
  v7 = sub_266DAA91C();

  (v2)[2](v2, v7);

  _Block_release(v2);
  OUTLINED_FUNCTION_28();

  return v8();
}

uint64_t sub_266D119AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_266DAA9EC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_266DB7BD8;
  v9[5] = v8;
  sub_266D14878(0, 0, v6, &unk_266DB7BE8, v9);
}

uint64_t sub_266D11ABC(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_0_40();
}

uint64_t sub_266D11AD0()
{
  OUTLINED_FUNCTION_22_0();
  v2 = OUTLINED_FUNCTION_28_7(v1[7] + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession);
  *(v0 + 16) = v3;
  v1[3] = v4;
  v1[4] = v2;

  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v1;
  v5[1] = sub_266D11B88;

  return FindDeviceSessionManager.search(query:)();
}

uint64_t sub_266D11B88()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {

    v9 = sub_266D11D14;
  }

  else
  {
    *(v5 + 80) = v3;

    v9 = sub_266D11CAC;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266D11CAC()
{
  OUTLINED_FUNCTION_22_0();
  sub_266D11E20(*(v0 + 80));
  OUTLINED_FUNCTION_17_1();

  v1 = OUTLINED_FUNCTION_15_5();

  return v2(v1);
}

uint64_t sub_266D11D14()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 72);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  if ((swift_dynamicCast() & 1) != 0 && (v3 = *(v0 + 88), v3 < 4))
  {
    v4 = qword_266DB7C30[v3];
  }

  else
  {
    v4 = 5;
  }

  v5 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  OUTLINED_FUNCTION_18_1();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_22_13(v6, xmmword_266DAE3B0);
  v6[2].n128_u64[0] = sub_266D9F49C(v4);

  OUTLINED_FUNCTION_43_4();

  return v7(v6);
}

__n128 *sub_266D11E20(unint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_43_5();
  if ((sub_266D1E0B4() & 1) == 0)
  {
    OUTLINED_FUNCTION_43_5();
    if ((sub_266D1E0E8() & 1) == 0)
    {
      if (qword_2800C9360 != -1)
      {
        goto LABEL_57;
      }

      goto LABEL_15;
    }
  }

  v4 = sub_266C3A14C();
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v10, xmmword_266DAE3B0);
    v11 = 4;
    goto LABEL_18;
  }

  v5 = v4;

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      OUTLINED_FUNCTION_43_5();
      if (sub_266D1E0B4())
      {
        if ((sub_266D14194() & 1) != 0 || sub_266C3A14C() < 2)
        {
          v19 = a1;
        }

        else
        {
          Array<A>.excludeThisDevice.getter(a1);
          v19 = v18;

          if (qword_2800C9360 != -1)
          {
            OUTLINED_FUNCTION_0_60(&qword_2800C9360);
          }

          v20 = sub_266DA94AC();
          OUTLINED_FUNCTION_94(v20, qword_2800CCA38);
          v21 = sub_266DA948C();
          v22 = sub_266DAAB0C();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = OUTLINED_FUNCTION_14_0();
            v24 = OUTLINED_FUNCTION_13_0();
            v51 = v24;
            *v23 = 136446210;
            *(v23 + 4) = sub_266C22A3C(0xD00000000000001ALL, 0x8000000266DC3350, &v51);
            _os_log_impl(&dword_266C08000, v21, v22, "**** %{public}s ****", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v24);
            OUTLINED_FUNCTION_6_1();
            OUTLINED_FUNCTION_6_1();
          }

          MEMORY[0x28223BE20](v25);
          OUTLINED_FUNCTION_0_4();
          *(v26 - 16) = v2;
          sub_266CB9F3C(sub_266C48BC0, v27, v19);
        }

        v40 = Array<A>.nearbyDevicesOrAll.getter(v19);

        v41 = sub_266C3A14C();

        if (v41 >= 2)
        {
          v42 = sub_266D140C4(v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
          OUTLINED_FUNCTION_18_1();
          v10 = swift_allocObject();
          OUTLINED_FUNCTION_22_13(v10, xmmword_266DAE3B0);
          if (v42)
          {
            v43 = sub_266C6A8C8(v40);
            v38 = sub_266C6AA38(8, v43);
          }

          else
          {
            v38 = sub_266DA3870(v40);
          }

          goto LABEL_38;
        }

        if (sub_266C3A14C())
        {
          OUTLINED_FUNCTION_63();
          sub_266CB9F54();
          if ((v40 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x26D5F1780](0, v40);
          }

          else
          {
            v44 = *(v40 + 32);
          }

          v45 = v44;
          v10 = sub_266D1393C(v44);

          return v10;
        }

        if (qword_2800C9360 != -1)
        {
          OUTLINED_FUNCTION_0_60(&qword_2800C9360);
        }

        v46 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v46, qword_2800CCA38);
        v47 = sub_266DA948C();
        v48 = sub_266DAAAFC();
        if (OUTLINED_FUNCTION_12_0(v48))
        {
          *OUTLINED_FUNCTION_11() = 0;
          OUTLINED_FUNCTION_42_4(&dword_266C08000, v49, v50, "The candidateDevices were filtered down to nothing.");
          OUTLINED_FUNCTION_6_1();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
        OUTLINED_FUNCTION_18_1();
        v10 = swift_allocObject();
        OUTLINED_FUNCTION_22_13(v10, xmmword_266DAE3B0);
        v37 = OUTLINED_FUNCTION_33_8();
      }

      else
      {
        if (qword_2800C9360 != -1)
        {
          OUTLINED_FUNCTION_0_60(&qword_2800C9360);
        }

        v32 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v32, qword_2800CCA38);
        v33 = sub_266DA948C();
        v34 = sub_266DAAAEC();
        if (OUTLINED_FUNCTION_12_0(v34))
        {
          *OUTLINED_FUNCTION_11() = 0;
          OUTLINED_FUNCTION_42_4(&dword_266C08000, v35, v36, "[Resolve Device] All candidates are devices and FindDevice is removed, returning unsupported.");
          OUTLINED_FUNCTION_6_1();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
        OUTLINED_FUNCTION_18_1();
        v10 = swift_allocObject();
        OUTLINED_FUNCTION_22_13(v10, xmmword_266DAE3B0);
        v37 = 10;
      }

      v38 = sub_266D9F49C(v37);
LABEL_38:
      v10[2].n128_u64[0] = v38;
LABEL_39:

      return v10;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D5F1780](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v8 = v7;
    v9 = sub_266CC7C44();

    ++v6;
    if (v9)
    {
      if (qword_2800C9360 != -1)
      {
        OUTLINED_FUNCTION_0_60(&qword_2800C9360);
      }

      v28 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v28, qword_2800CCA38);
      v29 = sub_266DA948C();
      v30 = sub_266DAAB0C();
      if (OUTLINED_FUNCTION_16_0(v30))
      {
        v31 = OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_40_4(v31);
        _os_log_impl(&dword_266C08000, v29, v30, "Candidate devices includes at least one item; calling resolveItems logic.", v5, 2u);
        OUTLINED_FUNCTION_33_6();
      }

      v10 = sub_266D13C2C(a1);
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  OUTLINED_FUNCTION_0_60(&qword_2800C9360);
LABEL_15:
  v12 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v12, qword_2800CCA38);
  v13 = sub_266DA948C();
  v14 = sub_266DAAAEC();
  if (OUTLINED_FUNCTION_12_0(v14))
  {
    v15 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_9_0(v15);
    OUTLINED_FUNCTION_7_0(&dword_266C08000, v16, v17, "[Resolve Device] Both apps removed, returning unsupported.");
    OUTLINED_FUNCTION_5_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  OUTLINED_FUNCTION_18_1();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_22_13(v10, xmmword_266DAE3B0);
  v11 = 10;
LABEL_18:
  v10[2].n128_u64[0] = sub_266D9F49C(v11);
  return v10;
}

uint64_t sub_266D12450()
{
  OUTLINED_FUNCTION_22_0();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_266DA7F0C();
  v1[14] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[15] = v4;
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB478, &qword_266DB7540);
  v1[17] = swift_task_alloc();
  v5 = sub_266DA7C5C();
  v1[18] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[19] = v6;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7);
}

void sub_266D12594()
{
  v1 = sub_266D14B44(*(v0 + 96));
  if (v1)
  {
    v2 = v1;
    if (sub_266C3A14C())
    {
      OUTLINED_FUNCTION_63();
      sub_266CB9F54();
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x26D5F1780](0, v2);
      }

      else
      {
        v3 = *(v2 + 32);
      }

      v65 = v3;
      v5 = *(v0 + 160);
      v4 = *(v0 + 168);
      v6 = *(v0 + 144);
      v7 = *(v0 + 152);
      v8 = *(v0 + 136);
      (*(v7 + 104))(v4, *MEMORY[0x277D5BB28], v6);
      v9 = sub_266CC8E48();
      sub_266DA7ADC();
      (*(v7 + 16))(v5, v4, v6);
      v10 = sub_266DA7A5C();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
      OUTLINED_FUNCTION_18_1();
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      v12 = v65;
      sub_266DA7ACC();
      sub_266DA7A1C();
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_266DA7A2C();

      (*(v7 + 8))(v4, v6);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      if ((sub_266CC7C44() & 1) != 0 && (OUTLINED_FUNCTION_44_4((*(v0 + 104) + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_appInstalledState)), (sub_266D1E0E8() & 1) == 0))
      {

        if (qword_2800C9360 != -1)
        {
          OUTLINED_FUNCTION_0_60(&qword_2800C9360);
        }

        v39 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v39, qword_2800CCA38);
        v40 = sub_266DA948C();
        v41 = sub_266DAAAEC();
        if (OUTLINED_FUNCTION_95(v41))
        {
          v42 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_40_4(v42);
          OUTLINED_FUNCTION_45_0(&dword_266C08000, v43, v44, "Confirm intent: resolved device is an item and the Find Items app is not installed.");
          OUTLINED_FUNCTION_33_6();
        }

        v45 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
        v38 = 106;
      }

      else if (sub_266CC7C44() & 1) != 0 || (OUTLINED_FUNCTION_44_4((*(v0 + 104) + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_appInstalledState)), (sub_266D1E0B4()))
      {
        v13 = [v65 canPlaySound];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 BOOLValue];

          if (v15)
          {
            v19 = 1;
            if (sub_266CC7C44())
            {
              (*(*(v0 + 104) + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession + 8))(*(*(v0 + 104) + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession));
              v16 = *(v0 + 80);
              v17 = *(v0 + 88);
              __swift_project_boxed_opaque_existential_1((v0 + 56), v16);
              v18 = (*(v17 + 40))(v16, v17);
              __swift_destroy_boxed_opaque_existential_0((v0 + 56));
              if ((v18 & 1) == 0)
              {
                v19 = 0;
              }
            }

            v56 = *(v0 + 120);
            v55 = *(v0 + 128);
            v57 = *(v0 + 104);
            v58 = *(v0 + 112);
            v59 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
            v60 = OUTLINED_FUNCTION_30_10();
            v61 = FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(v60, 0);
            [v61 setDevice_];
            v62 = OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState;
            v63 = v61;
            sub_266DA7EFC();
            LOBYTE(v61) = sub_266D54DE8(v2, (v57 + v62), v55);
            (*(v56 + 8))(v55, v58);
            [v63 _setRequiresAuthentication_];

            if (v19)
            {
              Array<A>.needsConfirmation.getter(v2);
            }

            v12 = v65;
            sub_266D14BA4();
            v64 = sub_266DAABEC();
            [v63 setNeedsConfirmPlaySound_];

            goto LABEL_36;
          }
        }

        if (qword_2800C9360 != -1)
        {
          OUTLINED_FUNCTION_0_60(&qword_2800C9360);
        }

        v31 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v31, qword_2800CCA38);
        v32 = sub_266DA948C();
        v33 = sub_266DAAB0C();
        if (OUTLINED_FUNCTION_95(v33))
        {
          v34 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_40_4(v34);
          OUTLINED_FUNCTION_45_0(&dword_266C08000, v35, v36, "Confirm intent: resolved device cannot play sounds.");
          OUTLINED_FUNCTION_33_6();
        }

        v37 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
        v38 = 107;
      }

      else
      {

        if (qword_2800C9360 != -1)
        {
          OUTLINED_FUNCTION_0_60(&qword_2800C9360);
        }

        v46 = sub_266DA94AC();
        OUTLINED_FUNCTION_94(v46, qword_2800CCA38);
        v47 = sub_266DA948C();
        v48 = sub_266DAAAEC();
        if (OUTLINED_FUNCTION_95(v48))
        {
          v49 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_40_4(v49);
          OUTLINED_FUNCTION_45_0(&dword_266C08000, v50, v51, "Confirm intent: resolved device is a Device and the Find Device app is not installed.");
          OUTLINED_FUNCTION_33_6();
        }

        v52 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
        v38 = 105;
      }

      FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(v38, 0);
LABEL_36:

      goto LABEL_37;
    }
  }

  if (qword_2800C9360 != -1)
  {
    OUTLINED_FUNCTION_0_60(&qword_2800C9360);
  }

  v20 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v20, qword_2800CCA38);
  v21 = sub_266DA948C();
  v22 = sub_266DAAAEC();
  if (OUTLINED_FUNCTION_16_0(v22))
  {
    v23 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_9_0(v23);
    OUTLINED_FUNCTION_11_21();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    OUTLINED_FUNCTION_5_1();
  }

  v29 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
  v30 = OUTLINED_FUNCTION_33_8();
  FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(v30, 0);
LABEL_37:

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_26_4();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_266D12C20(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266D1514C;

  return sub_266D12450();
}

uint64_t sub_266D12CE4()
{
  OUTLINED_FUNCTION_22_0();
  v1[13] = v2;
  v1[14] = v0;
  v3 = sub_266DA7F0C();
  v1[15] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[16] = v4;
  v1[17] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266D12D90()
{
  v54 = v0;
  v1 = sub_266D14B44(*(v0 + 104));
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  if (!sub_266C3A14C())
  {
LABEL_14:

LABEL_15:
    if (qword_2800C9360 != -1)
    {
      OUTLINED_FUNCTION_0_60(&qword_2800C9360);
    }

    v23 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v23, qword_2800CCA38);
    v24 = sub_266DA948C();
    v25 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_16_0(v25))
    {
      v26 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v26);
      OUTLINED_FUNCTION_11_21();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      OUTLINED_FUNCTION_5_1();
    }

    v32 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
    v33 = OUTLINED_FUNCTION_33_8();
    FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(v33, 0);
LABEL_20:

    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_26_4();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_63();
  sub_266CB9F54();
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D5F1780](0, v2);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  *(v0 + 144) = v3;
  v4 = v3;
  v5 = sub_266C22F3C(v4);
  *(v0 + 152) = v5;
  *(v0 + 160) = v6;
  if (!v6)
  {

    goto LABEL_14;
  }

  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState;
  sub_266DA7EFC();
  LOBYTE(v12) = sub_266D54DE8(v2, (v12 + v13), v9);

  (*(v10 + 8))(v9, v11);
  if (v12)
  {

    if (qword_2800C9360 != -1)
    {
      OUTLINED_FUNCTION_0_60(&qword_2800C9360);
    }

    v14 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v14, qword_2800CCA38);
    v15 = sub_266DA948C();
    v16 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v16))
    {
      v17 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v17);
      OUTLINED_FUNCTION_11_21();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_5_1();
    }

    [objc_msgSend(objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse()) init)];
    goto LABEL_12;
  }

  if (sub_266CC7C44())
  {
    (*(*(v0 + 112) + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession + 8))(*(*(v0 + 112) + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession));
    v36 = *(v0 + 40);
    v37 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v36);
    v38 = (*(v37 + 40))(v36, v37);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if ((v38 & 1) == 0)
    {

      v52 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
      [FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(2 0)];
LABEL_12:

      goto LABEL_20;
    }
  }

  if (qword_2800C9360 != -1)
  {
    OUTLINED_FUNCTION_0_60(&qword_2800C9360);
  }

  v39 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v39, qword_2800CCA38);

  v40 = sub_266DA948C();
  v41 = sub_266DAAB0C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_14_0();
    v43 = OUTLINED_FUNCTION_13_0();
    v53 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_266C22A3C(v7, v8, &v53);
    _os_log_impl(&dword_266C08000, v40, v41, "Handle intent: attempting to play sound on device: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  v44 = *(v0 + 112);
  v45 = OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession;
  *(v0 + 168) = OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_findDeviceSession;
  v46 = OUTLINED_FUNCTION_28_7(v44 + v45);
  v40[7].isa = v47;
  *(v0 + 64) = v48;
  *(v0 + 72) = v46;

  v49 = swift_task_alloc();
  *(v0 + 176) = v49;
  *v49 = v0;
  v49[1] = sub_266D1322C;
  OUTLINED_FUNCTION_26_4();

  return FindDeviceSessionManager.aceProxiedPlaySound(deviceId:)();
}

uint64_t sub_266D1322C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_266D13338);
}

uint64_t sub_266D13338()
{
  OUTLINED_FUNCTION_34();
  if (*(v1 + 201) == 1 && (v2 = *(v1 + 200), v2 == 4))
  {
    v9 = OUTLINED_FUNCTION_28_7(*(v1 + 112) + *(v1 + 168));
    *(v0 + 80) = v10;
    *(v1 + 88) = v11;
    *(v1 + 96) = v9;

    v12 = swift_task_alloc();
    *(v1 + 184) = v12;
    *v12 = v1;
    v12[1] = sub_266D13498;

    return sub_266CF40D8();
  }

  else
  {
    v3 = *(v1 + 144);

    v4 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
    v5 = OUTLINED_FUNCTION_30_10();
    FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(v5, 0);

    v6 = OUTLINED_FUNCTION_15_5();

    return v7(v6);
  }
}

uint64_t sub_266D13498()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_21_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_21_1();
  *v4 = v3;
  *(v6 + 192) = v5;

  return MEMORY[0x2822009F8](sub_266D135D0);
}

uint64_t sub_266D135D0()
{
  OUTLINED_FUNCTION_34();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = objc_allocWithZone(type metadata accessor for FindDeviceAndPlaySoundIntentResponse());
  v4 = FindDeviceAndPlaySoundIntentResponse.init(code:userActivity:)(102, 0);
  [v2 setLocation_];
  [v4 setDevice_];

  v5 = OUTLINED_FUNCTION_15_5();

  return v6(v5);
}

uint64_t sub_266D136A8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_18_1();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_266D119AC(a6, v10);
}

uint64_t sub_266D13728(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266D137EC;

  return sub_266D12CE4();
}

uint64_t sub_266D137EC()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_28();

  return v9();
}

uint64_t sub_266D1393C(void *a1)
{
  v2 = [a1 isThisDevice];
  if (v2 && (v3 = v2, v4 = [v2 BOOLValue], v3, v4) && (sub_266D14194() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v9, xmmword_266DAE3B0);
    v13 = sub_266D9F49C(6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266DAE3B0;
    *(inited + 32) = a1;
    v6 = a1;
    v7 = sub_266D140C4(inited);
    swift_setDeallocating();
    v8 = inited;
    sub_266C6F074();
    if (v7)
    {
      OUTLINED_FUNCTION_18_1();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_266DAE3B0;
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_266DAE3B0;
      *(v10 + 32) = v6;
      type metadata accessor for FindDeviceAndPlaySoundDevicesResolutionResult();
      v11 = v6;
      v12 = sub_266C6A8C8(v10);
      swift_setDeallocating();
      sub_266C6F074();
      v13 = sub_266C6AA38(8, v12);
    }

    else
    {
      if (qword_2800C9360 != -1)
      {
        OUTLINED_FUNCTION_0_60(&qword_2800C9360);
      }

      v14 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v14, qword_2800CCA38);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_266DAE3B0;
      *(v15 + 32) = v6;
      v16 = v6;
      v17 = sub_266DA948C();
      v18 = sub_266DAAB0C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_14_0();
        v20 = OUTLINED_FUNCTION_13_0();
        v26 = v20;
        v21 = OUTLINED_FUNCTION_31_6(4.8751e-34);
        *(v19 + 4) = sub_266C22A3C(v21, 0xE800000000000000, &v26);
        _os_log_impl(&dword_266C08000, v17, v18, "**** %{public}s ****", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      MEMORY[0x28223BE20](v22);
      OUTLINED_FUNCTION_0_4();
      *(v23 - 16) = v8;
      sub_266CB9F3C(sub_266C48BC0, v24, v15);
      swift_setDeallocating();
      sub_266C6F074();
      OUTLINED_FUNCTION_18_1();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_22_13(v9, xmmword_266DAE3B0);
      v13 = sub_266DA380C(v16);
    }
  }

  *(v9 + 32) = v13;
  return v9;
}

__n128 *sub_266D13C2C(unint64_t a1)
{
  v2 = v1;
  sub_266C3A14C();
  OUTLINED_FUNCTION_17_1();
  v4 = sub_266C3A14C();
  v5 = v4;
  if (v1 >= 2)
  {
    v6 = 0;
    while (v5 != v6)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = OUTLINED_FUNCTION_6_24();
        v7 = MEMORY[0x26D5F1780](v10);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = v7;
      v9 = sub_266CC7C44();

      ++v6;
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    OUTLINED_FUNCTION_44_4((v2 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_appInstalledState));
    if (sub_266D1E0E8())
    {
LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      OUTLINED_FUNCTION_18_1();
      v23 = swift_allocObject();
      OUTLINED_FUNCTION_22_13(v23, xmmword_266DAE3B0);
      v25 = OUTLINED_FUNCTION_17_1();
      v26 = sub_266DA3870(v25);
      goto LABEL_36;
    }

    if (qword_2800C9360 != -1)
    {
      OUTLINED_FUNCTION_0_60(&qword_2800C9360);
    }

    v39 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v39, qword_2800CCA38);
    v40 = sub_266DA948C();
    v41 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_95(v41))
    {
      v42 = OUTLINED_FUNCTION_11();
      *v42 = 0;
      _os_log_impl(&dword_266C08000, v40, v5, "All candidates are items and the Find Items app is not installed.", v42, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v23, xmmword_266DAE3B0);
    v43 = OUTLINED_FUNCTION_17_1();
    v44 = sub_266C6A8C8(v43);
    v26 = sub_266C6AA38(9, v44);
    goto LABEL_36;
  }

  if (!v4)
  {
    if (qword_2800C9360 != -1)
    {
      OUTLINED_FUNCTION_0_60(&qword_2800C9360);
    }

    v27 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v27, qword_2800CCA38);
    v28 = sub_266DA948C();
    v29 = sub_266DAAAFC();
    if (OUTLINED_FUNCTION_12_0(v29))
    {
      v30 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v30);
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v31, v32, "Expected candidate item to not be empty.");
      OUTLINED_FUNCTION_5_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v23, xmmword_266DAE3B0);
    v33 = OUTLINED_FUNCTION_33_8();
    v26 = sub_266D9F49C(v33);
LABEL_36:
    v23[2].n128_u64[0] = v26;
    return v23;
  }

  OUTLINED_FUNCTION_63();
  sub_266CB9F54();
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_40:
    v11 = MEMORY[0x26D5F1780](0, a1);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = v11;
  if (qword_2800C9360 != -1)
  {
    OUTLINED_FUNCTION_0_60(&qword_2800C9360);
  }

  v13 = sub_266DA94AC();
  v14 = __swift_project_value_buffer(v13, qword_2800CCA38);
  v15 = sub_266DA948C();
  v16 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_95(v16))
  {
    v17 = OUTLINED_FUNCTION_14_0();
    v18 = OUTLINED_FUNCTION_13_0();
    v46 = v18;
    v19 = OUTLINED_FUNCTION_31_6(4.8751e-34);
    *(v17 + 4) = sub_266C22A3C(v19, 0xE800000000000000, &v46);
    _os_log_impl(&dword_266C08000, v15, v5, "**** %{public}s ****", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_4();
  *(v21 - 16) = v14;
  sub_266CB9F3C(sub_266C488B4, v22, a1);
  OUTLINED_FUNCTION_44_4((v2 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_appInstalledState));
  if (sub_266D1E0E8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v23, xmmword_266DAE3B0);
    v24 = sub_266DA380C(v12);
  }

  else
  {
    v34 = sub_266DA948C();
    v35 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_12_0(v35))
    {
      v36 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_9_0(v36);
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v37, v38, "Result is an item and the Find Items app is not installed.");
      OUTLINED_FUNCTION_5_1();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    OUTLINED_FUNCTION_18_1();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_22_13(v23, xmmword_266DAE3B0);
    v24 = sub_266D9F49C(9);
  }

  v23[2].n128_u64[0] = v24;

  return v23;
}

BOOL sub_266D140C4(unint64_t a1)
{
  Array<A>.hasNonNearbyDevices.getter(a1);
  if (v2)
  {
    v3 = (v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState), *(v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState + 24));
    if (sub_266DA7B8C())
    {
      return 1;
    }

    v4 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v5 = OUTLINED_FUNCTION_30_10();
    if (sub_266C6A310(v5, v4))
    {
      return 1;
    }

    else
    {
      v8 = (v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceLockStateProvider);
      v9 = *(v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceLockStateProvider + 24);
      v10 = *(v1 + OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceLockStateProvider + 32);
      __swift_project_boxed_opaque_existential_1(v8, v9);
      return !SFMDeviceLockStateProviding.isPasscodeProtected.getter(v9, v10);
    }
  }

  else
  {
    return 0;
  }
}

unint64_t sub_266D14194()
{
  v1 = v0;
  v2 = sub_266DA8DFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  v9 = &v0[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState], *&v0[OBJC_IVAR____TtC10SiriFindMy35FindDeviceAndPlaySoundIntentHandler_deviceState + 24]);
  sub_266DA7B0C();
  v10 = *(v9 + 4);
  __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
  v11 = OUTLINED_FUNCTION_30_10();
  if (sub_266C6A314(v11, v10))
  {
    LODWORD(v12) = 1;
  }

  else
  {
    v44 = v0;
    v13 = *(v3 + 104);
    v14 = OUTLINED_FUNCTION_39_6();
    v13(v14);
    v15 = sub_266C1A134(v8, v6);
    v16 = v8;
    v17 = *(v3 + 8);
    v18 = OUTLINED_FUNCTION_6_24();
    v17(v18);
    if (v15 & 1) != 0 || (v19 = OUTLINED_FUNCTION_39_6(), v13(v19), v20 = sub_266C1A134(v16, v6), v21 = OUTLINED_FUNCTION_6_24(), v17(v21), (v20) || (v22 = OUTLINED_FUNCTION_39_6(), v13(v22), v23 = sub_266C1A134(v16, v6), v24 = OUTLINED_FUNCTION_6_24(), v17(v24), (v23))
    {
      LODWORD(v12) = 1;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_39_6();
      v13(v40);
      LODWORD(v12) = sub_266C1A134(v16, v6);
      v41 = OUTLINED_FUNCTION_6_24();
      v17(v41);
    }

    v8 = v16;
    v1 = v44;
  }

  if (qword_2800C9360 != -1)
  {
    OUTLINED_FUNCTION_0_60(&qword_2800C9360);
  }

  v25 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v25, qword_2800CCA38);
  v26 = v1;
  v27 = sub_266DA948C();
  v28 = sub_266DAAB0C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v43 = v8;
    v30 = v29;
    v31 = OUTLINED_FUNCTION_13_0();
    v42 = v2;
    v32 = v3;
    v33 = v31;
    v45 = v31;
    *v30 = 67109634;
    *(v30 + 4) = v12 & 1;
    *(v30 + 8) = 1024;
    LODWORD(v44) = v12;
    v34 = *(v9 + 4);
    __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
    v35 = OUTLINED_FUNCTION_30_10();
    *(v30 + 10) = sub_266C6A314(v35, v34) & 1;

    *(v30 + 14) = 2080;
    __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
    sub_266DA7B0C();
    v36 = v42;
    v37 = sub_266DAA72C();
    v12 = sub_266C22A3C(v37, v38, &v45);

    *(v30 + 16) = v12;
    LOBYTE(v12) = v44;
    _os_log_impl(&dword_266C08000, v27, v28, "isRemoteTrigger? %{BOOL}d isPersonalRequest: %{BOOL}d, inputOrigin: %s", v30, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

    (*(v32 + 8))(v43, v36);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  return v12 & 1;
}

id sub_266D145E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FindDeviceAndPlaySoundIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_266D146A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_266C48BB4;

  return v6();
}

uint64_t sub_266D14790(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_266C4716C;

  return v7();
}

uint64_t sub_266D14878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_266D14E40(a3, v22 - v10);
  v12 = sub_266DAA9EC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_266C3A088(v11, &qword_2800CAF00, &qword_266DB32D8);
  }

  else
  {
    sub_266DAA9DC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_266DAA99C();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_266DAA75C() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_266C3A088(a3, &qword_2800CAF00, &qword_266DB32D8);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_266C3A088(a3, &qword_2800CAF00, &qword_266DB32D8);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_266D14B44(void *a1)
{
  v1 = [a1 devices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for DeviceDetail();
  v3 = sub_266DAA93C();

  return v3;
}

unint64_t sub_266D14BA4()
{
  result = qword_2800CCA70;
  if (!qword_2800CCA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CCA70);
  }

  return result;
}

uint64_t sub_266D14BE8()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_44(v1);

  return v4(v3);
}

uint64_t sub_266D14C7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24_6(v4);
  *v5 = v6;
  v5[1] = sub_266C48BB4;

  return sub_266D146A8(v1, v2, v3);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266D14D78(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_24_6(v6);
  *v7 = v8;
  v7[1] = sub_266C48BB4;

  return sub_266D14790(a1, v3, v4, v5);
}

uint64_t sub_266D14E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D14EB0()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_27(v1);

  return v4(v3);
}

uint64_t sub_266D14F48()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_27(v1);

  return v4(v3);
}

uint64_t sub_266D14FE0()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_44(v1);

  return v4(v3);
}

uint64_t objectdestroy_10Tm_0()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266D150B8()
{
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_44(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_0_60(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_13(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for FindDeviceAndPlaySoundDevicesResolutionResult();
}

void OUTLINED_FUNCTION_42_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

_BYTE *storeEnumTagSinglePayload for FindMyVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D1534C()
{
  result = qword_2800CCA78;
  if (!qword_2800CCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA78);
  }

  return result;
}

uint64_t sub_266D153A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D153F4(char a1)
{
  if (a1)
  {
    return 1735289200;
  }

  else
  {
    return 1684957542;
  }
}

uint64_t sub_266D15438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266D153A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266D15468@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266D153F4(*v1);
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_266D154A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266D15634();
  v5 = sub_266D15688();
  v6 = sub_266D156DC();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266D15520()
{
  result = qword_2800CCA80;
  if (!qword_2800CCA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CCA88, &qword_266DB7C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA80);
  }

  return result;
}

unint64_t sub_266D15588()
{
  result = qword_2800CCA90;
  if (!qword_2800CCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA90);
  }

  return result;
}

unint64_t sub_266D155E0()
{
  result = qword_2800CCA98;
  if (!qword_2800CCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCA98);
  }

  return result;
}

unint64_t sub_266D15634()
{
  result = qword_2800CCAA0;
  if (!qword_2800CCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCAA0);
  }

  return result;
}

unint64_t sub_266D15688()
{
  result = qword_2800CCAA8;
  if (!qword_2800CCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCAA8);
  }

  return result;
}

unint64_t sub_266D156DC()
{
  result = qword_2800CCAB0;
  if (!qword_2800CCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCAB0);
  }

  return result;
}

uint64_t type metadata accessor for SharedLocationVisibilityInvocationFlow(uint64_t a1)
{
  result = qword_2800CCAD0;
  if (!qword_2800CCAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D157A4(uint64_t a1)
{
  result = type metadata accessor for FindFriendSessionManager(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_266D15820()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CCAB8);
  v1 = __swift_project_value_buffer(v0, qword_2800CCAB8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D158E8()
{
  if (qword_2800C9368 != -1)
  {
    OUTLINED_FUNCTION_0_61(&qword_2800C9368);
  }

  v0 = sub_266DA94AC();
  __swift_project_value_buffer(v0, qword_2800CCAB8);
  v1 = sub_266DA948C();
  v2 = sub_266DAAB0C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266C08000, v1, v2, "SharedLocationVisibilityInvocationFlow on", v3, 2u);
    MEMORY[0x26D5F2480](v3, -1, -1);
  }

  return 1;
}

uint64_t sub_266D159B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_266D159D4);
}

uint64_t sub_266D159D4()
{
  if (qword_2800C9368 != -1)
  {
    OUTLINED_FUNCTION_0_61(&qword_2800C9368);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800CCAB8);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "SharedLocationVisibilityInvocationFlow execute", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  v6 = *v5;
  type metadata accessor for SharedLocationVisibilityInvocationFlow(0);
  *(swift_allocObject() + 16) = v6;
  sub_266C358C4();

  sub_266DA7D7C();
  v7 = *(v0 + 8);

  return v7();
}

void sub_266D15B44(__int16 a1, uint64_t a2)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1 == 2)
    {
      if (qword_2800C9368 != -1)
      {
        swift_once();
      }

      v11 = sub_266DA94AC();
      __swift_project_value_buffer(v11, qword_2800CCAB8);
      oslog = sub_266DA948C();
      v4 = sub_266DAAB0C();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v26 = v6;
        *v5 = 136315138;
        v12 = SharedLocationVisibility.description.getter(a2);
        v14 = sub_266C22A3C(v12, v13, &v26);

        *(v5 + 4) = v14;
        v10 = "Visibility is already set to %s";
        goto LABEL_11;
      }
    }

    else
    {
      if (qword_2800C9368 != -1)
      {
        swift_once();
      }

      v16 = sub_266DA94AC();
      __swift_project_value_buffer(v16, qword_2800CCAB8);
      oslog = sub_266DA948C();
      v17 = sub_266DAAAEC();
      if (os_log_type_enabled(oslog, v17))
      {
        v5 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v5 = 136315394;
        v19 = SharedLocationVisibility.description.getter(a2);
        v21 = sub_266C22A3C(v19, v20, &v26);

        *(v5 + 4) = v21;
        *(v5 + 12) = 2080;
        v22 = sub_266DAA72C();
        v24 = sub_266C22A3C(v22, v23, &v26);

        *(v5 + 14) = v24;
        _os_log_impl(&dword_266C08000, oslog, v17, "Error when attempting to set shared location visibility to %s: %s", v5, 0x16u);
        swift_arrayDestroy();
        v15 = v18;
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (qword_2800C9368 != -1)
    {
      swift_once();
    }

    v3 = sub_266DA94AC();
    __swift_project_value_buffer(v3, qword_2800CCAB8);
    oslog = sub_266DA948C();
    v4 = sub_266DAAB0C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v26 = v6;
      *v5 = 136315138;
      v7 = SharedLocationVisibility.description.getter(a2);
      v9 = sub_266C22A3C(v7, v8, &v26);

      *(v5 + 4) = v9;
      v10 = "Visibility successfully set to %s";
LABEL_11:
      _os_log_impl(&dword_266C08000, oslog, v4, v10, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      v15 = v6;
LABEL_16:
      MEMORY[0x26D5F2480](v15, -1, -1);
      MEMORY[0x26D5F2480](v5, -1, -1);

      return;
    }
  }
}

uint64_t sub_266D15ECC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SharedLocationVisibilityInvocationFlow(0);
  sub_266C6F414();

  return sub_266DA79AC();
}

uint64_t sub_266D15F48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C29DCC;

  return sub_266D159B4(a1);
}

uint64_t OUTLINED_FUNCTION_0_61(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_266D16014(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  sub_266DA7ABC();

  return sub_266DA7AAC();
}

void Snippets.Contact.init(_:emphasisId:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Snippets.Contact(0);
  sub_266DA749C();
  v9 = [a1 displayName];
  v10 = sub_266DAA70C();
  v12 = v11;

  *a4 = v10;
  a4[1] = v12;
  v13 = sub_266C39CB4(a1);
  v15 = v14;

  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v15)
  {
    v17 = v15;
  }

  a4[2] = v16;
  a4[3] = v17;
  v18 = (a4 + *(v8 + 28));
  *v18 = a2;
  v18[1] = a3;
}

uint64_t type metadata accessor for Snippets.Contact(uint64_t a1)
{
  result = qword_2800CCB58;
  if (!qword_2800CCB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippets.Contact.localizedName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Snippets.Contact.localizedName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippets.Contact.contactId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Snippets.Contact.contactId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snippets.Contact.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippets.Contact(0) + 24);
  v4 = sub_266DA74AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Snippets.Contact.emphasisId.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippets.Contact(0) + 28));

  return v1;
}

uint64_t Snippets.Contact.emphasisId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippets.Contact(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Snippets.Contact.monogramLetters.getter()
{
  v0 = sub_266DA70DC();
  OUTLINED_FUNCTION_0_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_6();
  v6 = v5 - v4;

  sub_266DA70BC();
  sub_266C680F8();
  v7 = sub_266DAAC3C();
  (*(v2 + 8))(v6, v0);

  v8 = swift_allocObject();
  v8[2] = sub_266D16700;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = sub_266D1668C;
  v8[6] = 0;
  v8[7] = sub_266D171A8;
  v8[8] = 0;
  v8[9] = sub_266D171B4;
  v8[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCAE0, &qword_266DB7E68);
  sub_266D172A0(&qword_2800CCAE8, &qword_2800CCAE0, &qword_266DB7E68, sub_266D171F0);

  v9 = sub_266DAA6DC();

  return v9;
}

uint64_t sub_266D1665C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266CB7BA4(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_266D1668C(uint64_t *a1)
{
  swift_getKeyPath();

  swift_getAtKeyPath();
}

uint64_t sub_266D16700@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t Snippets.Contact.init(localizedName:contactId:emphasisId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = type metadata accessor for Snippets.Contact(0);
  result = sub_266DA749C();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v16 = (a7 + *(v14 + 28));
  *v16 = a5;
  v16[1] = a6;
  return result;
}

uint64_t static Snippets.Contact.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Snippets.Contact(0);
  if ((sub_266DA748C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 28);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_266DAB17C();
}

uint64_t sub_266D16868(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7369736168706D65 && a2 == 0xEA00000000006449)
      {

        return 3;
      }

      else
      {
        v9 = sub_266DAB17C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_266D169D0(char a1)
{
  result = 0x657A696C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x49746361746E6F63;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x7369736168706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266D16A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D16868(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D16A8C(uint64_t a1)
{
  v2 = sub_266D17380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D16AC8(uint64_t a1)
{
  v2 = sub_266D17380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.Contact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCB18, &qword_266DB7E80);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-v9 - 4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D17380();
  sub_266DAB36C();
  v11 = *v3;
  v12 = v3[1];
  v25 = 0;
  OUTLINED_FUNCTION_4_35(v11, v12, &v25);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v24 = 1;
    OUTLINED_FUNCTION_4_35(v13, v14, &v24);
    v15 = type metadata accessor for Snippets.Contact(0);
    v23[1] = 2;
    sub_266DA74AC();
    OUTLINED_FUNCTION_1_41();
    sub_266D1756C(v16, v17, MEMORY[0x277CC95F8]);
    sub_266DAB11C();
    v18 = (v3 + *(v15 + 28));
    v19 = *v18;
    v20 = v18[1];
    v23[0] = 3;
    OUTLINED_FUNCTION_4_35(v19, v20, v23);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Snippets.Contact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_266DA74AC();
  OUTLINED_FUNCTION_0_2();
  v28 = v5;
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCB30, &qword_266DB7E88);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for Snippets.Contact(0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v13 = (v12 - v11);
  v30 = *(v14 + 24);
  sub_266DA749C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D17380();
  sub_266DAB34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v28 + 8))(v13 + v30, v29);
  }

  else
  {
    *v13 = sub_266DAB01C();
    v13[1] = v15;
    v13[2] = sub_266DAB01C();
    v13[3] = v16;
    OUTLINED_FUNCTION_1_41();
    sub_266D1756C(v17, v18, MEMORY[0x277CC9618]);
    sub_266DAB05C();
    (*(v28 + 40))(v13 + v30, v8, v29);
    v19 = sub_266DAB01C();
    v26 = v20;
    v21 = v19;
    v22 = OUTLINED_FUNCTION_3_38();
    v23(v22);
    v24 = (v13 + *(v10 + 28));
    *v24 = v21;
    v24[1] = v26;
    sub_266D173D4(v13, a2);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_266D17438(v13);
  }
}

uint64_t sub_266D170A0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266D170DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t a5)
{
  v8[0] = a1;
  v8[1] = a2;
  (*(a5 + 40))(&v7, v8);
  a3(&v9, &v7);

  return v9;
}

uint64_t sub_266D17148@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v10;
  v13[2] = *(a4 + 32);
  v14 = *(a4 + 48);
  result = sub_266D170DC(v9, v8, a2, a3, v13);
  *a5 = result;
  a5[1] = v12;
  return result;
}

uint64_t sub_266D171B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266D170A0(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_266D171F0()
{
  result = qword_2800CCAF0;
  if (!qword_2800CCAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CCAF8, &qword_266DB7E70);
    sub_266D172A0(&qword_2800CCB00, &qword_2800CCB08, &qword_266DB7E78, sub_266D1731C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCAF0);
  }

  return result;
}

uint64_t sub_266D172A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_266D1731C()
{
  result = qword_2800CCB10;
  if (!qword_2800CCB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC808, &qword_266DB6BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB10);
  }

  return result;
}

unint64_t sub_266D17380()
{
  result = qword_2800CCB20;
  if (!qword_2800CCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB20);
  }

  return result;
}

uint64_t sub_266D173D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippets.Contact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D17438(uint64_t a1)
{
  v2 = type metadata accessor for Snippets.Contact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266D1756C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266D175DC(uint64_t a1)
{
  result = sub_266DA74AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s7ContactV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D17738()
{
  result = qword_2800CCB68;
  if (!qword_2800CCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB68);
  }

  return result;
}

unint64_t sub_266D17790()
{
  result = qword_2800CCB70;
  if (!qword_2800CCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB70);
  }

  return result;
}

unint64_t sub_266D177E8()
{
  result = qword_2800CCB78;
  if (!qword_2800CCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB78);
  }

  return result;
}

unint64_t sub_266D1783C()
{
  result = qword_2800CCB80;
  if (!qword_2800CCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_35(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_266DAB0EC();
}

void *sub_266D178D8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  return v0;
}

uint64_t sub_266D17920()
{
  sub_266D178D8();

  return MEMORY[0x2821FE8D8](v0, 258, 7);
}

uint64_t sub_266D17A5C@<X0>(void *a1@<X8>)
{
  a1[8] = &type metadata for AceDevicePinger;
  a1[9] = &protocol witness table for AceDevicePinger;
  v2 = swift_allocObject();
  a1[5] = v2;
  sub_266DA7AEC();
  a1[3] = &type metadata for AceDeviceSearcher;
  a1[4] = &off_287860B88;
  v3 = swift_allocObject();
  *a1 = v3;
  sub_266C233D0(v2 + 16, (v3 + 2));
  v9 = &type metadata for PListMappingLoader;
  v10 = &off_287867AD8;
  v4 = type metadata accessor for DeviceMappingProvider();
  v5 = swift_allocObject();
  v5[7] = &type metadata for AddHardCodedMappingsLoader;
  v5[8] = &off_287867AC8;
  v6 = swift_allocObject();
  v5[4] = v6;
  sub_266D01384(v8, v6 + 16);
  v5[2] = 0;
  v5[3] = 0;
  sub_266D013E0(v8);
  v3[10] = v4;
  v3[11] = &off_287864E70;
  v3[7] = v5;
  *(v2 + 56) = 0;
  return sub_266C233D0((a1 + 5), (a1 + 10));
}

uint64_t sub_266D17BEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_266D17C2C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_266D17CA8()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_62();
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D17D50()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = *(v0[4] + 40);
  type metadata accessor for SetGeoFenceIntent();

  v6 = v5;
  v7 = v4;
  sub_266DA7A3C();
  sub_266DA7A9C();
  v8 = sub_266DA7A8C();
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_266D17E44()
{
  OUTLINED_FUNCTION_22_0();
  v1[289] = v0;
  v1[283] = v2;
  v1[277] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[290] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[291] = OUTLINED_FUNCTION_64();
  v1[292] = swift_task_alloc();
  v1[293] = swift_task_alloc();
  v1[294] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[295] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[296] = v6;
  v1[297] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7C0C();
  v1[298] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[299] = v8;
  v1[300] = OUTLINED_FUNCTION_64();
  v1[301] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[302] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[303] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[304] = v12;
  v1[305] = *(v13 + 64);
  v1[306] = OUTLINED_FUNCTION_64();
  v1[307] = swift_task_alloc();
  v1[308] = swift_task_alloc();
  v1[309] = swift_task_alloc();
  v1[310] = swift_task_alloc();
  v1[311] = swift_task_alloc();
  v1[312] = swift_task_alloc();
  v1[313] = swift_task_alloc();
  v14 = type metadata accessor for Snippets.Contact(0);
  v1[314] = v14;
  OUTLINED_FUNCTION_4_3(v14);
  v1[315] = OUTLINED_FUNCTION_62();
  v15 = type metadata accessor for Snippets.SetGeoFenceResult(0);
  v1[316] = v15;
  OUTLINED_FUNCTION_4_3(v15);
  v1[317] = OUTLINED_FUNCTION_62();
  v16 = type metadata accessor for Address(0);
  v1[318] = v16;
  OUTLINED_FUNCTION_4_3(v16);
  v1[319] = OUTLINED_FUNCTION_64();
  v1[320] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v17);
  v1[321] = OUTLINED_FUNCTION_64();
  v1[322] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_11_3(v18);
  v1[323] = v19;
  v1[324] = *(v20 + 64);
  v1[325] = OUTLINED_FUNCTION_64();
  v1[326] = swift_task_alloc();
  v1[327] = swift_task_alloc();
  v21 = sub_266DA919C();
  v1[328] = v21;
  OUTLINED_FUNCTION_11_3(v21);
  v1[329] = v22;
  v1[330] = *(v23 + 64);
  v1[331] = OUTLINED_FUNCTION_64();
  v1[332] = swift_task_alloc();
  v1[333] = swift_task_alloc();
  v24 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v24);
  v1[334] = OUTLINED_FUNCTION_62();
  v25 = sub_266DA7E5C();
  v1[335] = v25;
  OUTLINED_FUNCTION_11_3(v25);
  v1[336] = v26;
  v1[337] = OUTLINED_FUNCTION_62();
  v27 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v27);
}

uint64_t sub_266D18294()
{
  v89 = v0;
  if (qword_2800C93F8 != -1)
  {
    OUTLINED_FUNCTION_7_6(&qword_2800C93F8);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E64C0);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "Handle intent response called.", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB440, &qword_266DB46E0);
  v5 = sub_266DA7FCC();
  v0[338] = v5;
  v6 = [v5 friend];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 person];
    v0[339] = v8;

    if (v8)
    {
      v9 = [v5 location];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 location];

        if (v11)
        {
          v80 = v8;
          v12 = v0[337];
          v13 = v0[289];
          [v11 coordinate];
          v15 = v14;
          v17 = v16;

          v0[340] = v15;
          v0[341] = v17;
          sub_266D1A808(v5, v12);
          sub_266DA900C();
          v18 = [v5 friend];
          v19 = [v18 person];

          __swift_project_boxed_opaque_existential_1(v13, v13[3]);
          sub_266DA7AFC();
          v79 = sub_266DA8FBC();
          v0[342] = v79;
          v20 = [v5 notifyMe];
          if (v20)
          {
            v21 = v20;
            v82 = [v20 BOOLValue];
          }

          else
          {
            v82 = 0;
          }

          GeoFenceTrigger.description.getter([v5 trigger]);
          sub_266DAA77C();

          v25 = [v5 location];
          if (!v25 || (v26 = v25, sub_266D6CDF4(&v83), v26, v27 = v85, v85 == 255))
          {
            OUTLINED_FUNCTION_43();
          }

          else
          {
            v29 = v83;
            v28 = v84;
            v86 = v83;
            v87 = v84;
            v88 = v85;
            sub_266D91274();
            sub_266C23130(v29, v28, v27);
            OUTLINED_FUNCTION_44_5();
          }

          __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
          if ([v5 location])
          {
            sub_266D7FBD8();
          }

          v34 = v0[318];
          OUTLINED_FUNCTION_44_5();
          __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
          sub_266D1CAC8();
          v39 = OUTLINED_FUNCTION_55();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, v40, v34);
          v42 = v0[322];
          if (EnumTagSinglePayload == 1)
          {
            sub_266C47654(v0[322], &qword_2800CC420, &unk_266DB0480);
            v43 = 0;
          }

          else
          {
            v44 = v0[320];
            v45 = v0[319];
            sub_266D1DAF0();
            sub_266DA8F2C();
            sub_266D1DB48();
            v43 = sub_266D7F7B0(v45);
            sub_266D1DBA0(v44, type metadata accessor for Address);
            sub_266C47654(v42, &qword_2800CC420, &unk_266DB0480);
          }

          v0[343] = v43;
          v46 = v0[333];
          v47 = v0[332];
          v48 = v0[330];
          v49 = v0[329];
          v50 = v0[328];
          v81 = v50;
          v75 = v46;
          v72 = v0[324];
          v51 = v0[323];
          v78 = v0[315];
          v76 = v0[331];
          v77 = v0[314];
          v73 = v0[289];
          sub_266D1CA90(v73, (v0 + 167));
          v74 = *(v49 + 16);
          v74(v47, v46, v50);
          sub_266D1CAC8();
          v52 = *(v49 + 80);
          v53 = (v52 + 209) & ~v52;
          v54 = *(v51 + 80);
          v55 = (((v48 + v54 + v53) & ~v54) + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
          v56 = swift_allocObject();
          v0[344] = v56;
          memcpy((v56 + 16), v0 + 167, 0xB8uLL);
          *(v56 + 200) = v79;
          *(v56 + 208) = v82;
          v71 = *(v49 + 32);
          v71(v56 + v53, v47, v81);
          sub_266D1CB20();
          *(v56 + v55) = v43;

          sub_266CA8EC8();
          swift_asyncLet_begin();
          sub_266D1CA90(v73, (v0 + 195));
          sub_266D1CAC8();
          v74(v76, v75, v81);
          v57 = (((v54 + 216) & ~v54) + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
          v58 = swift_allocObject();
          v0[345] = v58;
          memcpy((v58 + 16), v0 + 195, 0xB8uLL);
          *(v58 + 200) = v82;
          *(v58 + 208) = v79;
          sub_266D1CB20();
          *(v58 + v57) = v43;
          v71(v58 + ((v52 + v57 + 8) & ~v52), v76, v81);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB450, &unk_266DB3A00);
          swift_asyncLet_begin();
          v59 = v80;
          sub_266DA749C();
          v60 = [v59 displayName];
          v61 = sub_266DAA70C();
          v63 = v62;

          *v78 = v61;
          v78[1] = v63;
          v64 = sub_266C39CB4(v59);
          v66 = v65;

          if (v66)
          {
            v67 = v64;
          }

          else
          {
            v67 = 0;
          }

          v68 = 0xE000000000000000;
          if (v66)
          {
            v68 = v66;
          }

          v78[2] = v67;
          v78[3] = v68;
          v69 = (v78 + *(v77 + 28));
          *v69 = 1701736302;
          v69[1] = 0xE400000000000000;
          v70 = OUTLINED_FUNCTION_17_20();

          return MEMORY[0x282200930](v70);
        }
      }
    }
  }

  sub_266C55488();
  swift_allocError();
  *v22 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_4_36();

  OUTLINED_FUNCTION_28();

  return v23();
}

uint64_t sub_266D18C4C()
{
  OUTLINED_FUNCTION_22_0();
  *(v1 + 2768) = v0;
  if (v0)
  {
    OUTLINED_FUNCTION_29_2();
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_266D18CC0()
{
  OUTLINED_FUNCTION_22_0();
  *(v0 + 2872) = 1;

  v1 = sub_266DA91EC();
  v3 = v2;
  *(v0 + 2104) = v1;
  *(v0 + 2112) = v2;

  *(v0 + 2776) = v3;
  v4 = OUTLINED_FUNCTION_17_20();

  return MEMORY[0x282200930](v4);
}

uint64_t sub_266D18D4C()
{
  OUTLINED_FUNCTION_22_0();
  v1[348] = v0;
  if (v0)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v1[349] = v1[263];
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_266D18DD4()
{
  v1 = *(v0 + 2792);
  v2 = *(v0 + 2776);
  v3 = *(v0 + 2728);
  v4 = *(v0 + 2720);
  v5 = *(v0 + 2704);
  v6 = *(v0 + 2536);
  v7 = *(v0 + 2528);
  *(v0 + 2873) = 0;

  v8 = sub_266DA91EC();
  v10 = v9;

  sub_266D1DAF0();
  *(v6 + v7[5]) = v4;
  *(v6 + v7[6]) = v3;
  v11 = (v6 + v7[7]);
  *v11 = v1;
  v11[1] = v2;
  v12 = (v6 + v7[8]);
  *v12 = v8;
  v12[1] = v10;
  v13 = [v5 friend];
  if (v13)
  {
    v13 = sub_266CA1908(v13);
  }

  *(v0 + 2800) = v13;
  v14 = *(v0 + 2504);
  v15 = *(v0 + 2320);
  *(v0 + 2808) = *(*(v0 + 2312) + 176);
  sub_266D1DB48();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v16 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v18 = swift_allocObject();
  *(v0 + 2816) = v18;
  *(v18 + 16) = xmmword_266DAE3B0;

  return MEMORY[0x282200930](v0 + 16);
}

uint64_t sub_266D18FB0()
{
  OUTLINED_FUNCTION_34();
  *(v1 + 2824) = v0;
  if (v0)
  {
    sub_266C47654(*(v1 + 2496), &qword_2800CA050, &qword_266DB0080);
    v2 = OUTLINED_FUNCTION_32();
    sub_266C47654(v2, v3, &qword_266DB0080);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_266D1961C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 2024));
  __swift_destroy_boxed_opaque_existential_0((v2 + 1944));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D19724()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = *(v0 + 2352);
  v4 = *(v0 + 2344);

  sub_266D1DBA0(v4, type metadata accessor for Snippets);
  sub_266D1DBA0(v3, type metadata accessor for Snippets);
  v5 = OUTLINED_FUNCTION_9_17();
  v6(v5);
  v7 = OUTLINED_FUNCTION_31_7();
  v8(v7);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_5_32();
  sub_266D1DBA0(v3, v9);
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_26_4();

  return MEMORY[0x282200920](v10);
}

uint64_t sub_266D19874()
{
  v1 = *(v0 + 2712);
  v2 = *(v0 + 2696);
  v3 = *(v0 + 2688);
  v10 = *(v0 + 2680);
  v4 = *(v0 + 2664);
  v5 = *(v0 + 2632);
  v6 = *(v0 + 2624);
  v7 = *(v0 + 2616);

  sub_266C47654(v7, &qword_2800CA038, &unk_266DAFBF0);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v10);

  OUTLINED_FUNCTION_15_4();

  return v8();
}

uint64_t sub_266D19B34()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1864));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D19C34()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = *(v0 + 2336);

  OUTLINED_FUNCTION_1_42();
  sub_266D1DBA0(v3, v4);
  v5 = OUTLINED_FUNCTION_9_17();
  v6(v5);
  v7 = OUTLINED_FUNCTION_31_7();
  v8(v7);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_5_32();
  sub_266D1DBA0(v3, v9);
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_26_4();

  return MEMORY[0x282200920](v10);
}

uint64_t sub_266D19D18()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1784));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D19E18()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();
  v3 = *(v0 + 2328);

  OUTLINED_FUNCTION_1_42();
  sub_266D1DBA0(v3, v4);
  v5 = OUTLINED_FUNCTION_9_17();
  v6(v5);
  v7 = OUTLINED_FUNCTION_31_7();
  v8(v7);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_5_32();
  sub_266D1DBA0(v3, v9);
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_26_4();

  return MEMORY[0x282200920](v10);
}

uint64_t sub_266D19EFC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D19FFC()
{
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_30_2();

  v3 = OUTLINED_FUNCTION_9_17();
  v4(v3);
  v5 = OUTLINED_FUNCTION_31_7();
  v6(v5);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_27_2();
  sub_266C47654(v2, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v1, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_5_32();
  sub_266D1DBA0(v0, v7);
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_26_4();

  return MEMORY[0x282200920](v8);
}

uint64_t sub_266D1A138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_14_25();

  sub_266C47654(v36, &qword_2800CA038, &unk_266DAFBF0);
  v37 = OUTLINED_FUNCTION_55_2();
  v38(v37);
  v39 = OUTLINED_FUNCTION_54_4();
  v40(v39);

  v51 = *(v35 + 2768);
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_23_15(v41);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_10();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v51, a32, a33, a34);
}

uint64_t sub_266D1A380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_14_25();

  sub_266C47654(v36, &qword_2800CA038, &unk_266DAFBF0);
  v37 = OUTLINED_FUNCTION_55_2();
  v38(v37);
  v39 = OUTLINED_FUNCTION_54_4();
  v40(v39);

  v51 = *(v35 + 2784);
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_23_15(v41);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_10();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v51, a32, a33, a34);
}

uint64_t sub_266D1A560()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 2816);
  v2 = *(v0 + 2536);

  OUTLINED_FUNCTION_5_32();
  sub_266D1DBA0(v2, v3);
  *(v1 + 16) = 0;

  v4 = OUTLINED_FUNCTION_17_20();

  return MEMORY[0x282200920](v4);
}

uint64_t sub_266D1A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_14_25();

  sub_266C47654(v36, &qword_2800CA038, &unk_266DAFBF0);
  v37 = OUTLINED_FUNCTION_55_2();
  v38(v37);
  v39 = OUTLINED_FUNCTION_54_4();
  v40(v39);

  v51 = *(v35 + 2824);
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_23_15(v41);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_10();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v51, a32, a33, a34);
}

uint64_t sub_266D1A808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  sub_266DA957C();
  OUTLINED_FUNCTION_0_2();
  v32 = v5;
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));

  sub_266DA7E4C();
  sub_266DA7DCC();
  v34 = a2;
  sub_266DA7E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7F0, &unk_266DB6F20);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266DAE4A0;
  v14 = [v30 friend];
  if (v14 && (v15 = v14, v16 = [v14 person], v15, v16))
  {
    sub_266D4E120(v16, v13 + v12);
    v17 = v33;
  }

  else
  {
    OUTLINED_FUNCTION_43();
    v17 = v33;
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v33);
  }

  sub_266D1CAC8();
  sub_266D1CB20();
  OUTLINED_FUNCTION_61(v11, 1, v17);
  if (v21)
  {
    sub_266C47654(v11, &qword_2800CA8B8, &qword_266DB30F0);
  }

  else
  {
    v22 = *(v32 + 32);
    v22(v31, v11, v17);
    v23 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_266CF9D4C();
      v23 = v27;
    }

    v25 = *(v23 + 16);
    if (v25 >= *(v23 + 24) >> 1)
    {
      sub_266CF9D4C();
      v23 = v28;
    }

    *(v23 + 16) = v25 + 1;
    v22((v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25), v31, v17);
  }

  swift_setDeallocating();
  sub_266C6F53C();
  return sub_266DA7DAC();
}

uint64_t sub_266D1AB9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 96) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D1AC44);
}

uint64_t sub_266D1AC44()
{
  OUTLINED_FUNCTION_34();
  sub_266DA919C();
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_34_5();
  v2(v1);
  OUTLINED_FUNCTION_44_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_266D1AD38;

  return sub_266CB4BFC();
}

uint64_t sub_266D1AD38(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 80) = v1;

  v7 = *(v4 + 64);
  if (!v1)
  {
    *(v5 + 88) = a1;
  }

  sub_266C47654(v7, &qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D1AE94(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 96) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D1AF3C);
}

uint64_t sub_266D1AF3C()
{
  OUTLINED_FUNCTION_34();
  sub_266DA919C();
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_34_5();
  v2(v1);
  OUTLINED_FUNCTION_44_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_266D1B02C;

  return sub_266CB51A0();
}

uint64_t sub_266D1B02C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 80) = v1;

  v7 = *(v4 + 64);
  if (!v1)
  {
    *(v5 + 88) = a1;
  }

  sub_266C47654(v7, &qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D1B188()
{
  OUTLINED_FUNCTION_22_0();
  **(v0 + 16) = *(v0 + 88);

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D1B1EC()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266D1B248()
{
  OUTLINED_FUNCTION_22_0();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[25] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[26] = OUTLINED_FUNCTION_64();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[30] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[31] = v6;
  v1[32] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7C0C();
  v1[33] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_64();
  v1[36] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[37] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[38] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[39] = v12;
  v1[40] = *(v13 + 64);
  v1[41] = OUTLINED_FUNCTION_64();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_266D1B498()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB440, &qword_266DB46E0);
  *(v0 + 392) = sub_266DA7FCC();
  if (qword_2800C93F8 != -1)
  {
    OUTLINED_FUNCTION_7_6(&qword_2800C93F8);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E64C0);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "failed handle response called.", v4, 2u);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }

  v5 = *(v0 + 192);

  *(v0 + 400) = *(v5 + 176);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_44_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_44_5();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  *(v0 + 488) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA058, &unk_266DB30D0);
  swift_allocObject();
  *(v0 + 408) = sub_266DA93CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v14 = swift_allocObject();
  *(v0 + 416) = v14;
  *(v14 + 16) = xmmword_266DAE3B0;
  v15 = swift_task_alloc();
  *(v0 + 424) = v15;
  *v15 = v0;
  v15[1] = sub_266D1B688;

  return sub_266CB4B54();
}

uint64_t sub_266D1B688()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[54] = v0;

  if (v0)
  {
    sub_266C47654(v5[47], &qword_2800CA050, &qword_266DB0080);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  else
  {
    v5[55] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266D1BD44()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D1BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v25 = *(v22 + 224);

  sub_266D1DBA0(v25, type metadata accessor for Snippets);
  v26 = OUTLINED_FUNCTION_4_4();
  sub_266D1DBA0(v26, v27);
  v28 = OUTLINED_FUNCTION_6_28();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D1BFD4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D1C0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v26 = *(v23 + 216);

  OUTLINED_FUNCTION_1_42();
  sub_266D1DBA0(v26, v27);
  v28 = OUTLINED_FUNCTION_6_28();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D1C240()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D1C340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();
  v26 = *(v23 + 208);

  OUTLINED_FUNCTION_1_42();
  sub_266D1DBA0(v26, v27);
  v28 = OUTLINED_FUNCTION_6_28();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_3();
  v31(v30);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v24, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v25, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D1C4AC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D1C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1();

  v25 = OUTLINED_FUNCTION_6_28();
  v26(v25);
  v27 = OUTLINED_FUNCTION_18_3();
  v28(v27);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_37();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266D1C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = v22[52];
  v24 = v22[49];
  v34 = v22[41];
  v35 = v22[38];
  v36 = v22[37];
  v37 = v22[36];
  v38 = v22[35];
  v39 = v22[32];
  v40 = v22[29];
  v41 = v22[28];
  v42 = v22[27];
  v43 = v22[26];

  *(v23 + 16) = 0;

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_25_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, a20, a21, a22);
}

uint64_t sub_266D1C844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D17E44();
}

uint64_t sub_266D1C8EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266D1B248();
}

uint64_t sub_266D1C994()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C5A320;

  return sub_266D17CA8();
}

unint64_t sub_266D1CA3C()
{
  result = qword_2800CCB88;
  if (!qword_2800CCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCB88);
  }

  return result;
}

uint64_t sub_266D1CAC8()
{
  OUTLINED_FUNCTION_6_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0();
  v3 = OUTLINED_FUNCTION_4_4();
  v4(v3);
  return v0;
}

uint64_t sub_266D1CB20()
{
  OUTLINED_FUNCTION_6_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0();
  v3 = OUTLINED_FUNCTION_4_4();
  v4(v3);
  return v0;
}

uint64_t sub_266D1CB78(uint64_t a1)
{
  v3 = v2;
  v5 = sub_266DA919C();
  OUTLINED_FUNCTION_11_3(v5);
  v7 = (*(v6 + 80) + 209) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_11_3(v10);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v1 + 200);
  v15 = *(v1 + 208);
  v16 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_266C48BB4;

  return sub_266D1AB9C(a1, v1 + 16, v14, v15, v1 + v7, v1 + v12, v16);
}

uint64_t sub_266D1CD04(uint64_t a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_11_3(v5);
  v7 = (*(v6 + 80) + 216) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_266DA919C();
  OUTLINED_FUNCTION_4_3(v10);
  v12 = (v9 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 200);
  v14 = *(v1 + 208);
  v15 = *(v1 + v9);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_266C4716C;

  return sub_266D1AE94(a1, v1 + 16, v13, v14, v1 + v7, v15, v1 + v12);
}

uint64_t objectdestroyTm_10()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v34 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v35 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v35, v36, v1))
        {
          v37 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v38 + 8))(v34 + v37);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v34 + v1[11]);
          v39 = type metadata accessor for Address(0);
          v40 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v40, v41, v39))
          {
            sub_266DA919C();
            v42 = OUTLINED_FUNCTION_109();
            v114 = v43;
            if (!__swift_getEnumTagSinglePayload(v42, v44, v43))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v45 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v46 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v46, v47, v48, v49, v50, v51, v52, v53, v112, v114))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v54 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            if (!__swift_getEnumTagSinglePayload(v32, 1, v3))
            {
              v113 = sub_266DA919C();
              if (!__swift_getEnumTagSinglePayload(v32, 1, v113))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v33 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v112 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v112, 1, v113))
              {
                (*(*(v113 - 8) + 8))(v32 + v112);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v55);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v56 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v57 = v0 + v10;
  v58 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v58, v59, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v71 + 8))(v1 + v57);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v64 = v57 + *(type metadata accessor for Friend(0) + 40);
        v65 = type metadata accessor for FriendLocation(0);
        v66 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v66, v67, v65))
        {
          break;
        }

        v68 = v64 + *(v65 + 32);
LABEL_57:
        v99 = type metadata accessor for Location(0);
        v100 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v100, v101, v99))
        {
          v102 = *(v99 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v103 + 8))(v68 + v102);

          v104 = v68 + *(v99 + 44);
          v105 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v105))
          {
            v106 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v104, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v107 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v104 + v107, 1, v106))
            {
              (*(*(v106 - 8) + 8))(v104 + v107, v106);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v73 = v57 + *(type metadata accessor for Friend(0) + 40);
        v74 = type metadata accessor for FriendLocation(0);
        v75 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v75, v76, v74))
        {

          v77 = v73 + *(v74 + 32);
          v78 = type metadata accessor for Location(0);
          v79 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v79, v80, v78))
          {
            v81 = *(v78 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v82 + 8))(v77 + v81);

            v2 = (v77 + *(v78 + 44));
            v83 = type metadata accessor for Address(0);
            v84 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v84, v85, v83))
            {
              sub_266DA919C();
              v86 = OUTLINED_FUNCTION_109();
              v115 = v87;
              if (!__swift_getEnumTagSinglePayload(v86, v88, v87))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v89 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v90 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v90, v91, v92, v93, v94, v95, v96, v97, v112, v115))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v98 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v68 = v57 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v108);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v57 + 40), v72);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v57 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v69 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v70 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v70 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v109 + 8))(v1 + v57);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v110 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v110 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v60 + 8))(v0 + v10);
        v61 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v62 = *(v61 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v63 + 8))(v57 + v62);
        if (*(v57 + *(v61 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

uint64_t sub_266D1DAF0()
{
  OUTLINED_FUNCTION_6_22();
  v1(0);
  OUTLINED_FUNCTION_0();
  v2 = OUTLINED_FUNCTION_4_4();
  v3(v2);
  return v0;
}

uint64_t sub_266D1DB48()
{
  OUTLINED_FUNCTION_6_22();
  v1(0);
  OUTLINED_FUNCTION_0();
  v2 = OUTLINED_FUNCTION_4_4();
  v3(v2);
  return v0;
}

uint64_t sub_266D1DBA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8_0();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_14_25()
{
  v3 = v0[345];
  *(v1 - 88) = v0[344];
  *(v1 - 80) = v3;
  v4 = v0[338];
  *(v1 - 96) = v0[337];
}

uint64_t OUTLINED_FUNCTION_23_15@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 120) = v1;
  *(v3 - 112) = a1;
  v5 = v2[292];
  *(v3 - 104) = v2[293];
  *(v3 - 96) = v5;
  *(v3 - 88) = v2[291];
}