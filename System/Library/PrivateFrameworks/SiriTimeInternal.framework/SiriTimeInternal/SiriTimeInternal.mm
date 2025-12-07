uint64_t sub_2692DA408()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_2692DA488()
{
  v1 = *v0;
  if ((DeviceUnit.isRemote.getter() & 1) == 0)
  {

    return 0;
  }

  return v1;
}

uint64_t sub_2692DA544(uint64_t a1, uint64_t a2)
{
  v4 = sub_26932D640();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2692DA5B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26932D640();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_2692DA620(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

void sub_2692DA634(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

uint64_t sub_2692DA658()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2692DA6CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308670, &unk_269330810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2692DA760()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308678, &qword_269330820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void *sub_2692DA918@<X0>(void *a1@<X8>)
{
  result = sub_26932C9C0();
  *a1 = v3;
  return result;
}

uint64_t sub_2692DAB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26932D6B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2692DABC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26932D6B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2692DAC84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2692DACBC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void *sub_2692DAD70@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  result = sub_26932C120();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_2692DAE24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2692DAEE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2692DAF90(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2692DB04C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2692DB0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2692DB1C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2692DB294()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2692DB324(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2692DB728()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2398);
  v1 = __swift_project_value_buffer(v0, qword_2814B2398);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = sub_26932C610();
  v9[11] = v10;
  v9[12] = *(v10 - 8);
  v9[13] = swift_task_alloc();
  v11 = sub_26932C390();
  v9[14] = v11;
  v9[15] = *(v11 - 8);
  v9[16] = swift_task_alloc();
  v9[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2692DB928, 0, 0);
}

uint64_t sub_2692DB928()
{
  v48 = v0;
  if (qword_2814B2390 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[3];
  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_2814B2398);
  v7 = *(v3 + 16);
  v7(v1, v5, v2);
  v8 = v4;
  v9 = sub_26932D690();
  v10 = sub_26932D9B0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[17];
  if (v11)
  {
    v41 = v0[16];
    v42 = v7;
    v44 = v10;
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[10];
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v47 = v43;
    *v16 = 136315394;
    v17 = [v15 catId];
    v18 = sub_26932D770();
    v20 = v19;

    v21 = sub_2692DD5A8(v18, v20, &v47);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v42(v41, v12, v14);
    v22 = sub_26932D790();
    v24 = v23;
    (*(v13 + 8))(v12, v14);
    v25 = sub_2692DD5A8(v22, v24, &v47);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2692D8000, v9, v44, "#Response 2.0 dialog-only generation for catId=%s, dialogPhase=%s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v43, -1, -1);
    MEMORY[0x26D639280](v16, -1, -1);
  }

  else
  {
    v26 = v0[14];
    v27 = v0[15];

    (*(v27 + 8))(v12, v26);
  }

  v28 = v0[13];
  v29 = v0[10];
  v45 = v0[9];
  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];
  v34 = v0[3];
  v33 = v0[4];
  sub_26932C490();
  swift_allocObject();
  v0[18] = sub_26932C480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v35 = swift_allocObject();
  v0[19] = v35;
  *(v35 + 16) = xmmword_26932EA80;
  *(v35 + 32) = v29;
  v36 = v29;
  static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)(v34, v33, v32, v31, v30, v45, 0, v28);
  v46 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v37 = swift_task_alloc();
  v0[20] = v37;
  *v37 = v0;
  v37[1] = sub_2692DBCCC;
  v38 = v0[13];
  v39 = v0[2];

  return v46(v39, v35, v38);
}

uint64_t sub_2692DBCCC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2692DBE64, 0, 0);
}

uint64_t sub_2692DBE64()
{
  SiriTimeMeasurement.logDelta()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 288) = v15;
  *(v9 + 160) = v14;
  *(v9 + 168) = v8;
  *(v9 + 144) = a7;
  *(v9 + 152) = a8;
  *(v9 + 128) = a5;
  *(v9 + 136) = a6;
  *(v9 + 112) = a3;
  *(v9 + 120) = a4;
  *(v9 + 96) = a1;
  *(v9 + 104) = a2;
  v10 = sub_26932C610();
  *(v9 + 176) = v10;
  *(v9 + 184) = *(v10 - 8);
  *(v9 + 192) = swift_task_alloc();
  v11 = sub_26932C390();
  *(v9 + 200) = v11;
  *(v9 + 208) = *(v11 - 8);
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2692DC040, 0, 0);
}

uint64_t sub_2692DC040()
{
  v92 = v0;
  sub_2692DDB50(*(v0 + 120), v0 + 56);
  if (*(v0 + 80))
  {
    sub_2692DB324((v0 + 56), v0 + 16);
    if (qword_2814B2390 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 232);
    v2 = *(v0 + 200);
    v3 = *(v0 + 208);
    v4 = *(v0 + 168);
    v5 = *(v0 + 104);
    v6 = sub_26932D6B0();
    __swift_project_value_buffer(v6, qword_2814B2398);
    v7 = *(v3 + 16);
    v7(v1, v5, v2);
    v8 = v4;
    v9 = sub_26932D690();
    v10 = sub_26932D9B0();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 232);
    if (v11)
    {
      v78 = *(v0 + 224);
      v80 = v7;
      v85 = v10;
      v14 = *(v0 + 200);
      v13 = *(v0 + 208);
      v15 = *(v0 + 168);
      v16 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v91 = v82;
      *v16 = 136315394;
      v17 = [v15 catId];
      v18 = sub_26932D770();
      v20 = v19;

      v21 = sub_2692DD5A8(v18, v20, &v91);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v80(v78, v12, v14);
      v22 = sub_26932D790();
      v24 = v23;
      (*(v13 + 8))(v12, v14);
      v25 = sub_2692DD5A8(v22, v24, &v91);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_2692D8000, v9, v85, "#Response 2.0 dialog/snippet generation for catId=%s, dialogPhase=%s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v82, -1, -1);
      MEMORY[0x26D639280](v16, -1, -1);
    }

    else
    {
      v49 = *(v0 + 200);
      v50 = *(v0 + 208);

      (*(v50 + 8))(v12, v49);
    }

    v51 = *(v0 + 192);
    v52 = *(v0 + 168);
    v53 = *(v0 + 144);
    v84 = *(v0 + 152);
    v87 = *(v0 + 160);
    v54 = *(v0 + 136);
    v56 = *(v0 + 104);
    v55 = *(v0 + 112);
    sub_26932C490();
    swift_allocObject();
    *(v0 + 240) = sub_26932C480();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
    v57 = swift_allocObject();
    *(v0 + 248) = v57;
    *(v57 + 16) = xmmword_26932EA80;
    *(v57 + 32) = v52;
    v58 = v52;
    static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)(v56, v55, v54, v53, v84, v87, 0, v51);
    v88 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
    v59 = swift_task_alloc();
    *(v0 + 256) = v59;
    *v59 = v0;
    v59[1] = sub_2692DC778;
    v60 = *(v0 + 192);
    v61 = *(v0 + 96);

    return v88(v61, v0 + 16, v57, v60);
  }

  else
  {
    sub_2692DDBC0(v0 + 56);
    if (qword_2814B2390 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 208);
    v26 = *(v0 + 216);
    v28 = *(v0 + 200);
    v29 = *(v0 + 168);
    v30 = *(v0 + 104);
    v31 = sub_26932D6B0();
    __swift_project_value_buffer(v31, qword_2814B2398);
    v32 = *(v27 + 16);
    v32(v26, v30, v28);
    v33 = v29;
    v34 = sub_26932D690();
    v35 = sub_26932D9B0();

    if (os_log_type_enabled(v34, v35))
    {
      v79 = *(v0 + 224);
      v81 = *(v0 + 216);
      v83 = v32;
      v37 = *(v0 + 200);
      v36 = *(v0 + 208);
      v38 = *(v0 + 168);
      v39 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v91 = v86;
      *v39 = 136315394;
      v40 = [v38 catId];
      v41 = sub_26932D770();
      v43 = v42;

      v44 = sub_2692DD5A8(v41, v43, &v91);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v83(v79, v81, v37);
      v45 = sub_26932D790();
      v47 = v46;
      (*(v36 + 8))(v81, v37);
      v48 = sub_2692DD5A8(v45, v47, &v91);

      *(v39 + 14) = v48;
      _os_log_impl(&dword_2692D8000, v34, v35, "#Response 2.0 dialog-only generation for catId=%s, dialogPhase=%s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v86, -1, -1);
      MEMORY[0x26D639280](v39, -1, -1);
    }

    else
    {
      v64 = *(v0 + 208);
      v63 = *(v0 + 216);
      v65 = *(v0 + 200);

      (*(v64 + 8))(v63, v65);
    }

    v66 = *(v0 + 192);
    v67 = *(v0 + 168);
    v89 = *(v0 + 160);
    v69 = *(v0 + 144);
    v68 = *(v0 + 152);
    v70 = *(v0 + 136);
    v72 = *(v0 + 104);
    v71 = *(v0 + 112);
    sub_26932C490();
    swift_allocObject();
    *(v0 + 264) = sub_26932C480();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
    v73 = swift_allocObject();
    *(v0 + 272) = v73;
    *(v73 + 16) = xmmword_26932EA80;
    *(v73 + 32) = v67;
    v74 = v67;
    static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)(v72, v71, v70, v69, v68, v89, 0, v66);
    v90 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
    v75 = swift_task_alloc();
    *(v0 + 280) = v75;
    *v75 = v0;
    v75[1] = sub_2692DC9A8;
    v76 = *(v0 + 192);
    v77 = *(v0 + 96);

    return v90(v77, v73, v76);
  }
}

uint64_t sub_2692DC778()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2692DC910, 0, 0);
}

uint64_t sub_2692DC910()
{
  SiriTimeMeasurement.logDelta()();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2692DC9A8()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2692DCB40, 0, 0);
}

uint64_t sub_2692DCB40()
{
  SiriTimeMeasurement.logDelta()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DialogExecutionResult.generateConversationOutput(dialogPhase:context:conversationModel:measure:sessionID:responseViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v14;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v10 = sub_26932C610();
  v9[12] = v10;
  v9[13] = *(v10 - 8);
  v9[14] = swift_task_alloc();
  v11 = sub_26932C390();
  v9[15] = v11;
  v9[16] = *(v11 - 8);
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2692DCD10, 0, 0);
}

uint64_t sub_2692DCD10()
{
  v49 = v0;
  if (qword_2814B2390 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[11];
  v5 = v0[3];
  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_2814B2398);
  v7 = *(v3 + 16);
  v7(v1, v5, v2);
  v8 = v4;
  v9 = sub_26932D690();
  v10 = sub_26932D9B0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  if (v11)
  {
    v42 = v0[17];
    v43 = v7;
    v45 = v10;
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[11];
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v16 = 136315394;
    v17 = [v15 catId];
    v18 = sub_26932D770();
    v20 = v19;

    v21 = sub_2692DD5A8(v18, v20, &v48);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v43(v42, v12, v14);
    v22 = sub_26932D790();
    v24 = v23;
    (*(v13 + 8))(v12, v14);
    v25 = sub_2692DD5A8(v22, v24, &v48);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2692D8000, v9, v45, "#Response 2.0 dialog/snippet conversation space generation for catId=%s, dialogPhase=%s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v44, -1, -1);
    MEMORY[0x26D639280](v16, -1, -1);
  }

  else
  {
    v26 = v0[15];
    v27 = v0[16];

    (*(v27 + 8))(v12, v26);
  }

  v28 = v0[14];
  v29 = v0[11];
  v46 = v0[10];
  v31 = v0[8];
  v30 = v0[9];
  v32 = v0[7];
  v34 = v0[3];
  v33 = v0[4];
  sub_26932C490();
  swift_allocObject();
  v0[19] = sub_26932C480();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v35 = swift_allocObject();
  v0[20] = v35;
  *(v35 + 16) = xmmword_26932EA80;
  *(v35 + 32) = v29;
  v36 = v29;
  static OutputGenerationManifest.defaultManifest(for:contextUpdate:sessionID:responseViewId:dismissAssistant:shouldCoordinateWithSpeech:)(v34, v33, v32, v31, v30, v46, 0, v28);
  v47 = (*MEMORY[0x277D5BD40] + MEMORY[0x277D5BD40]);
  v37 = swift_task_alloc();
  v0[21] = v37;
  *v37 = v0;
  v37[1] = sub_2692DD0B8;
  v38 = v0[14];
  v39 = v0[5];
  v40 = v0[2];

  return v47(v40, v39, v35, v38);
}

uint64_t sub_2692DD0B8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2692DD250, 0, 0);
}

uint64_t sub_2692DD250()
{
  SiriTimeMeasurement.logDelta()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Output.generateFlow()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_26932C580();
  sub_26932C190();
  swift_allocObject();
  v11[1] = sub_26932C180();
  v9 = sub_26932C1E0();

  return v9;
}

uint64_t sub_2692DD460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2692DD484, 0, 0);
}

uint64_t sub_2692DD484()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v1 + 24) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_2692DD5A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2692DD674(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2692DDEB4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2692DD674(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2692DD780(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_26932DBD0();
    a6 = v11;
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

void *sub_2692DD780(uint64_t a1, unint64_t a2)
{
  v3 = sub_2692DD7CC(a1, a2);
  sub_2692DD8FC(&unk_2879E7EA0);
  return v3;
}

void *sub_2692DD7CC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2692DD9E8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26932DBD0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26932D810();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2692DD9E8(v10, 0);
        result = sub_26932DB50();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2692DD8FC(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2692DDA5C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2692DD9E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280307D80, &qword_26932EAC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2692DDA5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280307D80, &qword_26932EAC8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_2692DDB50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D18, &qword_26932EAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2692DDBC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D18, &qword_26932EAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2692DDC28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2692DDD10;

  return sub_2692DD460(a1, v1 + v6, v4, v5);
}

uint64_t sub_2692DDD10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_2692DDEB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2692DDF78()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2814B2408);
  v1 = __swift_project_value_buffer(v0, qword_2814B2408);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

const char *sub_2692DE040(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = "timer_RF";
    v7 = "cross_device";
    v8 = "multiTimeriOS";
    if (a1 != 3)
    {
      v8 = "timer_bobcat_locale_expansion";
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = "confirmations_RF";
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = "alarm_smart";
    v2 = "week_of_year";
    if (a1 != 9)
    {
      v2 = "clock_smart";
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = "uod_asr_on_server_enabled_homepod";
    v4 = "suggestion_hints";
    if (a1 != 6)
    {
      v4 = "sleep_timers_tvOS";
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2692DE14C()
{
  v1 = *v0;
  sub_26932DF50();
  MEMORY[0x26D638C20](v1);
  return sub_26932DF70();
}

uint64_t sub_2692DE194(uint64_t a1)
{
  v2 = *v1;
  sub_26932DF50();
  MEMORY[0x26D638C20](v2);
  return sub_26932DF70();
}

const char *sub_2692DE1D8()
{
  if (*v0 == 5)
  {
    return "Siri";
  }

  else
  {
    return "SiriTime";
  }
}

uint64_t sub_2692DE26C(char a1, const char *a2)
{
  v10[3] = &type metadata for Features;
  v10[4] = sub_2692DE634();
  LOBYTE(v10[0]) = a1;
  v4 = sub_26932C710();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (v4)
  {
    if (qword_2814B2400 != -1)
    {
      swift_once();
    }

    v5 = sub_26932D6B0();
    __swift_project_value_buffer(v5, qword_2814B2408);
    v6 = sub_26932D690();
    v7 = sub_26932D9B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2692D8000, v6, v7, a2, v8, 2u);
      MEMORY[0x26D639280](v8, -1, -1);
    }
  }

  return v4 & 1;
}

uint64_t sub_2692DE3B4(char a1, const char *a2, ...)
{
  v10[3] = &type metadata for Features;
  v10[4] = sub_2692DE634();
  LOBYTE(v10[0]) = a1;
  v4 = sub_26932C710();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (qword_2814B2400 != -1)
  {
    swift_once();
  }

  v5 = sub_26932D6B0();
  __swift_project_value_buffer(v5, qword_2814B2408);
  v6 = sub_26932D690();
  v7 = sub_26932D9B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_2692D8000, v6, v7, a2, v8, 8u);
    MEMORY[0x26D639280](v8, -1, -1);
  }

  return v4 & 1;
}

uint64_t sub_2692DE4F0(char a1, const char *a2, ...)
{
  v11[3] = &type metadata for Features;
  v11[4] = sub_2692DE634();
  LOBYTE(v11[0]) = a1;
  v4 = sub_26932C710();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (v4)
  {
    v5 = _s16SiriTimeInternal0aB16FeatureFlagsImplV19isTimerSmartEnabledSbyF_0();
  }

  else
  {
    v5 = 0;
  }

  if (qword_2814B2400 != -1)
  {
    swift_once();
  }

  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_2814B2408);
  v7 = sub_26932D690();
  v8 = sub_26932D9B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 & 1;
    _os_log_impl(&dword_2692D8000, v7, v8, a2, v9, 8u);
    MEMORY[0x26D639280](v9, -1, -1);
  }

  return v5 & 1;
}

unint64_t sub_2692DE634()
{
  result = qword_2814B2338;
  if (!qword_2814B2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B2338);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriTimeFeatureFlagsImpl(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SiriTimeFeatureFlagsImpl(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Features(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2692DE8D0()
{
  result = qword_2803080F0;
  if (!qword_2803080F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803080F0);
  }

  return result;
}

uint64_t sub_2692DE924()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2803080F8);
  v1 = __swift_project_value_buffer(v0, qword_2803080F8);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t String.toDismissSnoozeId.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_26932BD00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  sub_26932BF50();
  v11 = sub_26932BFA0();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_2692DEDE4(v10);
  if (v12 != 1)
  {
    if (qword_280307C18 != -1)
    {
      swift_once();
    }

    v20 = sub_26932D6B0();
    __swift_project_value_buffer(v20, qword_2803080F8);
    v21 = sub_26932D690();
    v22 = sub_26932D9B0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2692D8000, v21, v22, "[toDismissSnoozeId] Alarm/Timer ID is already a UUID - not modifying", v23, 2u);
      MEMORY[0x26D639280](v23, -1, -1);
    }

    return a1;
  }

  *&v29 = a1;
  *(&v29 + 1) = a2;
  v13 = sub_2692DEE4C();
  v14 = MEMORY[0x26D638760](61, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v13);
  if (*(v14 + 16) != 2)
  {

    if (qword_280307C18 != -1)
    {
      swift_once();
    }

    v24 = sub_26932D6B0();
    __swift_project_value_buffer(v24, qword_2803080F8);

    v25 = sub_26932D690();
    v26 = sub_26932D9A0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v29 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_2692DD5A8(a1, a2, &v29);
      _os_log_impl(&dword_2692D8000, v25, v26, "Bad alarm/timer identifier: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D639280](v28, -1, -1);
      MEMORY[0x26D639280](v27, -1, -1);
    }

    return 0;
  }

  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  v29 = *(v14 + 64);
  v30 = v15;
  v31 = v16;

  sub_26932BCE0();
  sub_2692DEEA0();
  a1 = sub_26932DA70();
  v18 = v17;
  result = (*(v5 + 8))(v7, v4);
  if (v18)
  {

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2692DEDE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308110, &qword_26932EBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2692DEE4C()
{
  result = qword_280308118;
  if (!qword_280308118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308118);
  }

  return result;
}

unint64_t sub_2692DEEA0()
{
  result = qword_280308120;
  if (!qword_280308120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308120);
  }

  return result;
}

uint64_t sub_2692DEEF4()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308128);
  v1 = __swift_project_value_buffer(v0, qword_280308128);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static DialogActBuilder.buildPromptValueDialogActFrom(_:forDomain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v5 = sub_26932C830();
  v47 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = sub_26932C720();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308140, &unk_26932EBE0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v42 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26932EA80;
  *(v21 + 32) = a1;
  v22 = sub_26932C9E0();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);

  v23 = MEMORY[0x26D637670](v21, v20);

  sub_2692DF674(v20);
  sub_26932C940();
  v43 = v15;
  v44 = v5;
  v45 = v8;
  v46 = v11;
  if (qword_280307C20 != -1)
  {
    swift_once();
  }

  v24 = sub_26932D6B0();
  __swift_project_value_buffer(v24, qword_280308128);
  v25 = v49;

  v26 = sub_26932D690();
  v27 = sub_26932D9B0();

  v28 = v12;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v52[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_2692DD5A8(v48, v25, v52);
    *(v29 + 12) = 2080;
    v51 = v23;
    sub_26932D060();
    sub_2692DFF94();
    v31 = sub_26932DDD0();
    v33 = sub_2692DD5A8(v31, v32, v52);

    *(v29 + 14) = v33;
    _os_log_impl(&dword_2692D8000, v26, v27, "#%sNLContextUpdateFactory sending SystemPrompted dialog act with graph: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v30, -1, -1);
    MEMORY[0x26D639280](v29, -1, -1);
  }

  v35 = v45;
  v34 = v46;
  v36 = v43;
  sub_26932C820();
  (*(v28 + 16))(v36, v17, v34);
  sub_26932C810();
  sub_26932C8B0();
  v37 = v47;
  v38 = v28;
  v39 = v44;
  (*(v47 + 16))(v35, v10, v44);
  sub_26932C8A0();

  (*(v37 + 8))(v10, v39);
  (*(v38 + 8))(v17, v34);
  v40 = sub_26932C8C0();
  return (*(*(v40 - 8) + 56))(v50, 0, 1, v40);
}

uint64_t sub_2692DF674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308140, &unk_26932EBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DialogActBuilder.buildPromptConfirmationDialogActFrom(_:forDomain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a2;
  v73 = a3;
  v75 = a4;
  v5 = sub_26932C770();
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v56 - v8;
  v69 = sub_26932C800();
  v62 = *(v69 - 8);
  v9 = MEMORY[0x28223BE20](v69);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v56 - v11;
  v12 = sub_26932C920();
  v65 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  v18 = sub_26932C720();
  v64 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308140, &unk_26932EBE0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v56 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26932EA80;
  *(v27 + 32) = a1;
  v28 = sub_26932C9E0();
  (*(*(v28 - 8) + 56))(v26, 1, 1, v28);

  v29 = MEMORY[0x26D637670](v27, v26);

  sub_2692DF674(v26);
  v74 = v29;
  sub_26932C940();
  v58 = v21;
  v59 = v15;
  v60 = v23;
  v61 = v17;
  v30 = v12;
  v31 = v62;
  if (qword_280307C20 != -1)
  {
    swift_once();
  }

  v32 = sub_26932D6B0();
  __swift_project_value_buffer(v32, qword_280308128);

  v33 = v73;

  v34 = sub_26932D690();
  v35 = sub_26932D9B0();

  v36 = v18;
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v77[0] = v38;
    *v37 = 136315394;
    *(v37 + 4) = sub_2692DD5A8(v72, v33, v77);
    *(v37 + 12) = 2080;
    v76 = a1;
    sub_26932C970();

    v39 = sub_26932D790();
    v41 = sub_2692DD5A8(v39, v40, v77);

    *(v37 + 14) = v41;
    _os_log_impl(&dword_2692D8000, v34, v35, "#%sNLContextUpdateFactory sending SystemOffered dialog act with graph: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v38, -1, -1);
    MEMORY[0x26D639280](v37, -1, -1);
  }

  v42 = v68;
  v43 = v69;
  v44 = v67;
  v45 = v30;
  v46 = v61;
  v47 = v64;
  v48 = v58;
  v57 = v30;
  sub_26932C910();
  (*(v47 + 16))(v48, v60, v36);
  sub_26932C900();
  v49 = v47;
  v73 = v36;
  v50 = v66;
  sub_26932C7F0();
  v51 = v65;
  (*(v65 + 16))(v59, v46, v45);
  sub_26932C7E0();
  sub_26932C760();
  (*(v31 + 16))(v63, v50, v43);
  sub_26932C750();
  sub_26932C8B0();
  v52 = v70;
  v53 = v71;
  (*(v70 + 16))(v44, v42, v71);
  sub_26932C890();

  (*(v52 + 8))(v42, v53);
  (*(v31 + 8))(v50, v43);
  (*(v51 + 8))(v61, v57);
  (*(v49 + 8))(v60, v73);
  v54 = sub_26932C8C0();
  return (*(*(v54 - 8) + 56))(v75, 0, 1, v54);
}

unint64_t sub_2692DFF94()
{
  result = qword_280308150;
  if (!qword_280308150)
  {
    sub_26932D060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308150);
  }

  return result;
}

SiriTimeInternal::SiriTimeAppBundleId_optional __swiftcall SiriTimeAppBundleId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SiriTimeAppBundleId.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 0x6C7070612E6D6F63;
    if (v1 != 2)
    {
      v5 = 0xD00000000000001BLL;
    }

    v6 = 0xD000000000000018;
    if (!*v0)
    {
      v6 = 0xD000000000000015;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    if (v1 != 6)
    {
      v2 = 0xD000000000000035;
    }

    v3 = 0xD000000000000013;
    if (v1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_2692E01B0()
{
  result = qword_280308158;
  if (!qword_280308158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308158);
  }

  return result;
}

uint64_t sub_2692E0204()
{
  v1 = *v0;
  sub_26932DF50();
  sub_26930FCF4(v3, v1);
  return sub_26932DF70();
}

uint64_t sub_2692E0254(uint64_t a1)
{
  v2 = *v1;
  sub_26932DF50();
  sub_26930FCF4(v4, v2);
  return sub_26932DF70();
}

unint64_t sub_2692E02A4@<X0>(unint64_t *a1@<X8>)
{
  result = SiriTimeAppBundleId.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriTimeAppBundleId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriTimeAppBundleId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2692E041C()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308160);
  v1 = __swift_project_value_buffer(v0, qword_280308160);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t HALDeviceContext.remoteDevice.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = v4();
  v6 = DeviceUnit.isRemote.getter();

  if (v6)
  {
    return (v4)(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t static HALDeviceContext.remoteExecutionId(for:from:)(void *a1, unint64_t a2)
{
  v4 = DeviceUnit.isRemote.getter();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v19 = a1;
  MEMORY[0x28223BE20](v4);
  v18[2] = &v19;
  if (sub_2692E088C(sub_2692E0A08, v18, a2))
  {
    return 0;
  }

  if (qword_280307C28 != -1)
  {
    swift_once();
  }

  v6 = sub_26932D6B0();
  __swift_project_value_buffer(v6, qword_280308160);
  v7 = a1;
  v8 = sub_26932D690();
  v9 = sub_26932D9B0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    v12 = sub_26932D550();
    v14 = sub_2692DD5A8(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_26932D560();
    v17 = sub_2692DD5A8(v15, v16, &v19);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_2692D8000, v8, v9, "Remote device %s doesn't support intent handling. Will send ace command to remote assistant %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D639280](v11, -1, -1);
    MEMORY[0x26D639280](v10, -1, -1);
  }

  return sub_26932D560();
}

BOOL HALDeviceContext.isLocal.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  sub_26932D570();
  v3 = sub_26932D680();
  v4 = sub_26932D680();

  return v3 == v4;
}

uint64_t sub_2692E0840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = (*(a2 + 8))(a1);
  LOBYTE(a3) = a3();

  return a3 & 1;
}

uint64_t sub_2692E088C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x26D638850](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_26932DAE0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2692E0AA0()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308178);
  v1 = __swift_project_value_buffer(v0, qword_280308178);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TemporalEntityMatching.MatchResult.LabelMatchType.hashValue.getter()
{
  v1 = *v0;
  sub_26932DF50();
  MEMORY[0x26D638C20](v1);
  return sub_26932DF70();
}

BOOL static TemporalEntityMatching.MatchResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_2692E0C2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

void static TemporalEntityMatching.matchLabel(intentsSearchTitle:entityTitle:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v37 = a4;
  v38 = a5;
  v8 = sub_26932BD00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v42 = a2;
  sub_26932BCD0();
  sub_2692DEE4C();
  v12 = sub_26932DA60();
  v14 = v13;
  v15 = *(v9 + 8);
  v15(v11, v8);
  v41 = a3;
  v42 = v37;
  sub_26932BCD0();
  v16 = sub_26932DA60();
  v18 = v17;
  v15(v11, v8);
  v19 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v19 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = v12;
    v41 = v16;
    v42 = v18;
    v39 = v12;
    v40 = v14;
    if (sub_26932DA90())
    {
      v41 = v16;
      v42 = v18;
      v39 = v12;
      v40 = v14;
      v21 = sub_26932DA80() != 0;

LABEL_6:

      v22 = 2 * v21;
      goto LABEL_12;
    }

    v41 = v12;
    v42 = v14;
    v39 = v16;
    v40 = v18;
    if (sub_26932DA90())
    {
      goto LABEL_11;
    }

    v41 = v16;
    v42 = v18;

    sub_2692E1114(&v41);
    v24 = v41;
    v25 = v42;
    v41 = v12;
    v42 = v14;

    sub_2692E1114(&v41);
    v27 = v41;
    v26 = v42;
    v41 = v24;
    v42 = v25;
    v39 = v27;
    v40 = v26;
    if (sub_26932DA90())
    {

      v41 = v24;
      v42 = v25;
      v39 = v27;
      v40 = v26;
      v21 = sub_26932DA80() != 0;

      goto LABEL_6;
    }

    v41 = v27;
    v42 = v26;
    v39 = v24;
    v40 = v25;
    v28 = sub_26932DA90();

    if (v28)
    {
LABEL_11:

      v22 = 3;
      goto LABEL_12;
    }

    if (qword_280307C30 != -1)
    {
      swift_once();
    }

    v29 = sub_26932D6B0();
    __swift_project_value_buffer(v29, qword_280308178);

    v30 = sub_26932D690();
    v31 = sub_26932D980();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41 = v33;
      *v32 = 136315394;
      v34 = sub_2692DD5A8(v16, v18, &v41);

      *(v32 + 4) = v34;
      *(v32 + 12) = 2080;
      v35 = sub_2692DD5A8(v20, v14, &v41);

      *(v32 + 14) = v35;
      _os_log_impl(&dword_2692D8000, v30, v31, "Titles don't match: MTTimer – %s, SiriTimer - %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D639280](v33, -1, -1);
      MEMORY[0x26D639280](v32, -1, -1);
    }

    else
    {
    }

    v22 = 5;
  }

  else
  {
    v23 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v23 = v16 & 0xFFFFFFFFFFFFLL;
    }

    v22 = v23 != 0;
  }

LABEL_12:
  *v38 = v22;
}

{
  if (!a2)
  {
    if (a4)
    {
      v7 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v7 = a3 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        *a5 = 1;
        return;
      }
    }

    goto LABEL_19;
  }

  if (a4)
  {

    static TemporalEntityMatching.matchLabel(intentsSearchTitle:entityTitle:)(a1, a2, a3, a4, a5);
    return;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_19:
    *a5 = 0;
    return;
  }

  v17[9] = v5;
  v17[10] = v6;
  if (qword_280307C30 != -1)
  {
    swift_once();
  }

  v12 = sub_26932D6B0();
  __swift_project_value_buffer(v12, qword_280308178);

  v13 = sub_26932D690();
  v14 = sub_26932D980();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2692DD5A8(a1, a2, v17);
    _os_log_impl(&dword_2692D8000, v13, v14, "Title doesn't match: MTTimer – nil, SiriTimer - %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D639280](v16, -1, -1);
    MEMORY[0x26D639280](v15, -1, -1);
  }

  *a5 = 5;
}

uint64_t sub_2692E1114(uint64_t *a1)
{
  v26 = sub_26932BD00();
  MEMORY[0x28223BE20](v26);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v24 = 0;
  v25 = 0xE000000000000000;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    v18 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_25;
  }

  v20[0] = a1;
  v20[1] = v1;
  v9 = 0;
  v21 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = v6 & 0xFFFFFFFFFFFFFFLL;
  v10 = (v3 + 8);
  do
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      sub_26932DB70();
      v14 = v13;
      goto LABEL_16;
    }

    if ((v6 & 0x2000000000000000) != 0)
    {
      v23[0] = v7;
      v23[1] = v22;
      v12 = v23 + v9;
    }

    else
    {
      v11 = v21;
      if ((v7 & 0x1000000000000000) == 0)
      {
        v11 = sub_26932DBD0();
      }

      v12 = (v11 + v9);
    }

    if ((*v12 & 0x80000000) == 0)
    {
LABEL_15:
      v14 = 1;
      goto LABEL_16;
    }

    v16 = (__clz(*v12 ^ 0xFF) - 24);
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }
    }

    else
    {
      if (v16 == 1)
      {
        goto LABEL_15;
      }

      v14 = 2;
    }

LABEL_16:
    sub_26932BCD0();
    v15 = sub_26932BCF0();
    (*v10)(v5, v26);
    if ((v15 & 1) == 0)
    {
      sub_26932D7C0();
    }

    v9 += v14;
  }

  while (v9 < v8);

  v18 = v24;
  v19 = v25;
  a1 = v20[0];
LABEL_25:
  *a1 = v18;
  a1[1] = v19;
  return result;
}

unint64_t sub_2692E153C()
{
  result = qword_280308190;
  if (!qword_280308190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308190);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemporalEntityMatching.MatchResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 5;
  v9 = v7 - 5;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TemporalEntityMatching.MatchResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2692E16F4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2692E1708(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemporalEntityMatching.MatchResult.LabelMatchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TemporalEntityMatching.MatchResult.LabelMatchType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2692E1878()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308198);
  v1 = __swift_project_value_buffer(v0, qword_280308198);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Siri_Nlu_External_UserParse.firstUsoTask.getter()
{
  v0 = sub_26932C870();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0);
  v35 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_26932C800();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = sub_26932C720();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v34 - v12;
  v13 = sub_26932C730();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      (*(v3 + 16))(v6, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v2);
      if (sub_26932C780())
      {

        (*(v3 + 32))(v8, v6, v2);
        v16 = v35;
        sub_26932C7C0();
        (*(v3 + 8))(v8, v2);
        v17 = v34;
        sub_26932C840();
        (*(v36 + 8))(v16, v37);
        v19 = v38;
        v18 = v39;
        v20 = v40;
        (*(v39 + 32))(v38, v17, v40);
        sub_26932C930();
        v26 = MEMORY[0x26D6376B0]();
        if (!(v26 >> 62))
        {
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

LABEL_22:

          if (qword_280307C38 == -1)
          {
LABEL_23:
            v30 = sub_26932D6B0();
            __swift_project_value_buffer(v30, qword_280308198);
            v31 = sub_26932D690();
            v32 = sub_26932D9A0();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = 0;
              _os_log_impl(&dword_2692D8000, v31, v32, "NLToSiriKitIntentConverter userStartUSOGraph has no tasks. Returning nil intent", v33, 2u);
              MEMORY[0x26D639280](v33, -1, -1);
            }

            (*(v18 + 8))(v19, v20);
            return 0;
          }

LABEL_28:
          swift_once();
          goto LABEL_23;
        }

        v28 = v26;
        v29 = sub_26932DAE0();
        v26 = v28;
        if (!v29)
        {
          goto LABEL_22;
        }

LABEL_15:
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x26D638850](0);
        }

        else
        {
          if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_28;
          }

          v27 = *(v26 + 32);
        }

        (*(v18 + 8))(v19, v20);
        return v27;
      }

      ++v15;
      (*(v3 + 8))(v6, v2);
      if (v14 == v15)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_6:

  if (qword_280307C38 != -1)
  {
LABEL_20:
    swift_once();
  }

  v21 = sub_26932D6B0();
  __swift_project_value_buffer(v21, qword_280308198);
  v22 = sub_26932D690();
  v23 = sub_26932D9A0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2692D8000, v22, v23, "Failed to parse userParse. Returning nil intent", v24, 2u);
    MEMORY[0x26D639280](v24, -1, -1);
  }

  return 0;
}

uint64_t SIRINLUUserDialogAct.firstUsoTask.getter()
{
  v0 = sub_26932CA00();
  if (v0 >> 62)
  {
    v14 = v0;
    v15 = sub_26932DAE0();
    v0 = v14;
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v0 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D638850](0);
      goto LABEL_8;
    }

    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v0 + 32);

LABEL_8:

      if (qword_280307C38 != -1)
      {
        swift_once();
      }

      v1 = sub_26932D6B0();
      __swift_project_value_buffer(v1, qword_280308198);

      v2 = sub_26932D690();
      v3 = sub_26932D9B0();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v20[0] = v5;
        *v4 = 136315394;
        v6 = sub_26932D080();
        v8 = sub_2692DD5A8(v6, v7, v20);

        *(v4 + 4) = v8;
        *(v4 + 12) = 2080;
        v9 = sub_26932D070();
        v11 = sub_2692DD5A8(v9, v10, v20);

        *(v4 + 14) = v11;
        _os_log_impl(&dword_2692D8000, v2, v3, "NLv4TranslationParse: Input is entity=%s verb=%s", v4, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D639280](v5, -1, -1);
        MEMORY[0x26D639280](v4, -1, -1);
      }

      return v12;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_280307C38 != -1)
  {
LABEL_20:
    swift_once();
  }

  v16 = sub_26932D6B0();
  __swift_project_value_buffer(v16, qword_280308198);
  v17 = sub_26932D690();
  v18 = sub_26932D9A0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2692D8000, v17, v18, "NLv4TranslationParse: No tasks in input?", v19, 2u);
    MEMORY[0x26D639280](v19, -1, -1);
  }

  return 0;
}

uint64_t static Siri_Nlu_External_SystemDialogAct.buildDisambiguationDialogActFrom(_:includeBinaryPrompt:)@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v78 = a3;
  v4 = sub_26932C770();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v68 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v66 - v8;
  v9 = sub_26932C8F0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308140, &unk_26932EBE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v66 - v16;
  v18 = sub_26932C720();
  MEMORY[0x28223BE20](v18 - 8);
  v82 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_26932C870();
  v20 = *(v96 - 8);
  v21 = MEMORY[0x28223BE20](v96);
  v86 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v98 = &v66 - v23;
  v97 = sub_26932C800();
  v87 = *(v97 - 8);
  v24 = MEMORY[0x28223BE20](v97);
  v66 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v89 = &v66 - v27;
  MEMORY[0x28223BE20](v26);
  v88 = &v66 - v28;
  v29 = sub_26932C8C0();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v79 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26932C8B0();
  v95 = a1;
  if (a1 >> 62)
  {
    result = sub_26932DAE0();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = v14;
  v76 = v10;
  v77 = v9;
  v33 = v98;
  v74 = v29;
  v73 = v30;
  v70 = v4;
  v69 = v5;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v34 = 0;
    v92 = (v20 + 8);
    v93 = v95 & 0xC000000000000001;
    v91 = v87 + 8;
    v84 = (v87 + 16);
    v85 = (v20 + 16);
    v83 = v87 + 32;
    v35 = MEMORY[0x277D84F90];
    *(&v36 + 1) = 3;
    v90 = xmmword_26932EA80;
    *&v36 = 136315138;
    v80 = v36;
    v37 = v88;
    v81 = v17;
    v94 = result;
    do
    {
      if (v93)
      {
        v38 = MEMORY[0x26D638850](v34, v95);
      }

      else
      {
        v38 = *(v95 + 8 * v34 + 32);
      }

      sub_26932C7F0();
      sub_26932C860();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280307D10, &qword_26932EA98);
      v39 = swift_allocObject();
      *(v39 + 16) = v90;
      *(v39 + 32) = v38;

      sub_26932C9D0();
      v40 = sub_26932C9E0();
      (*(*(v40 - 8) + 56))(v17, 0, 1, v40);
      MEMORY[0x26D637670](v39, v17);

      sub_2692DF674(v17);
      sub_26932C940();

      sub_26932C850();
      (*v85)(v86, v33, v96);
      sub_26932C7D0();
      (*v84)(v89, v37, v97);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_2692E30D0(0, v35[2] + 1, 1, v35, &qword_2803081F0, &unk_26932EE90, MEMORY[0x277D5DB80]);
      }

      v42 = v35[2];
      v41 = v35[3];
      if (v42 >= v41 >> 1)
      {
        v35 = sub_2692E30D0((v41 > 1), v42 + 1, 1, v35, &qword_2803081F0, &unk_26932EE90, MEMORY[0x277D5DB80]);
      }

      (*v92)(v98, v96);
      v43 = v87;
      v37 = v88;
      v44 = v97;
      (*(v87 + 8))(v88, v97);
      v35[2] = v42 + 1;
      (*(v43 + 32))(v35 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42, v89, v44);
      ++v34;
      v33 = v98;
    }

    while (v94 != v34);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v45 = v75;
  sub_26932C8E0();
  swift_bridgeObjectRetain_n();
  sub_26932C8D0();
  v46 = v76;
  v47 = v77;
  (*(v76 + 16))(v71, v45, v77);
  v48 = v79;
  sub_26932C880();
  if (v72)
  {
    v49 = v67;
    sub_26932C760();
    sub_26932C7F0();
    sub_26932C750();
    v50 = v69;
    v51 = v70;
    (*(v69 + 16))(v68, v49, v70);
    sub_26932C890();
    (*(v50 + 8))(v49, v51);
  }

  if (qword_280307C38 != -1)
  {
    swift_once();
  }

  v52 = sub_26932D6B0();
  __swift_project_value_buffer(v52, qword_280308198);

  v53 = sub_26932D690();
  v54 = sub_26932D9B0();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = v35;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v99 = v57;
    *v56 = 134218242;
    *(v56 + 4) = v55[2];

    *(v56 + 12) = 2080;
    v58 = MEMORY[0x26D638530](v55, v97);
    v60 = v59;

    v61 = v58;
    v48 = v79;
    v62 = sub_2692DD5A8(v61, v60, &v99);

    *(v56 + 14) = v62;
    _os_log_impl(&dword_2692D8000, v53, v54, "#NLContextUpdateFactory sending SystemGaveOptions dialog act with %ld choices: %s", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x26D639280](v57, -1, -1);
    MEMORY[0x26D639280](v56, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v46 + 8))(v45, v47);
  v63 = v73;
  v64 = v78;
  v65 = v74;
  (*(v73 + 32))(v78, v48, v74);
  return (*(v63 + 56))(v64, 0, 1, v65);
}

char *sub_2692E2F60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081E8, &qword_26932EE88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_2692E30D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2692E32C8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2692E33D4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081B8, &qword_26932EE70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081C0, &qword_26932EE78) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2692E35C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081B0, &qword_26932EE68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2692E36D4()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_2803081F8);
  v1 = __swift_project_value_buffer(v0, qword_2803081F8);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static DateTimeInferenceUtils.defaultAnchorDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308210, &qword_26932EEC0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  if (qword_280307C48 != -1)
  {
    v10 = v3;
    swift_once();
    v3 = v10;
  }

  v6 = __swift_project_value_buffer(v3, qword_28030CD60);
  sub_2692E3B90(v6, v5, &qword_280308210, &qword_26932EEC0);
  v7 = sub_26932BF40();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_2692EB48C(v5, &qword_280308210, &qword_26932EEC0);
  return sub_26932BF30();
}

uint64_t sub_2692E3974(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_allocate_value_buffer(v7, a4);
  v8 = __swift_project_value_buffer(v7, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v8, 1, 1, v9);
}

uint64_t static DateTimeInferenceUtils.defaultCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  if (qword_280307C50 != -1)
  {
    v10 = v3;
    swift_once();
    v3 = v10;
  }

  v6 = __swift_project_value_buffer(v3, qword_28030CD78);
  sub_2692E3B90(v6, v5, &qword_280308218, &qword_26932EEC8);
  v7 = sub_26932C0B0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_2692EB48C(v5, &qword_280308218, &qword_26932EEC8);
  return sub_26932C050();
}

uint64_t sub_2692E3B90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t static DateTimeInferenceUtils.dateComponents(forDateTime:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308220, &unk_26932EED0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_26932D2D0();
  v7 = sub_26932D2E0();
  v8 = sub_26932C0B0();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = sub_26932C0D0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_26932BE60();
  if (v6)
  {

    sub_26932D190();

    sub_26932BDE0();

    sub_26932D1A0();

    sub_26932BE00();

    sub_26932D180();
  }

  else
  {
    sub_26932BDE0();
    sub_26932BE00();
  }

  sub_26932BD90();
  if (v7)
  {

    sub_26932D200();
    v11 = v10;

    if (v11)
    {
      sub_26932D210();
    }

    sub_26932BDC0();

    sub_26932D220();
  }

  else
  {
    sub_26932BDC0();
  }

  sub_26932BE10();
}

uint64_t static DateTimeInferenceUtils.simpleTimeResolution(forDateComponents:meridiemSetByUser:allowNearest:referenceDate:)@<X0>(char *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v419 = a4;
  v390 = a3;
  v405 = a2;
  v412 = a5;
  v408 = sub_26932C030();
  v417 = *(v408 - 8);
  MEMORY[0x28223BE20](v408);
  v407 = &v349 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = sub_26932C040();
  v422 = *(v423 - 8);
  MEMORY[0x28223BE20](v423);
  v406 = &v349 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v421 = sub_26932C000();
  v420 = *(v421 - 8);
  MEMORY[0x28223BE20](v421);
  v416 = &v349 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = sub_26932C0A0();
  v399 = *(v400 - 1);
  MEMORY[0x28223BE20](v400);
  v10 = &v349 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308210, &qword_26932EEC0);
  v11 = MEMORY[0x28223BE20](v380);
  v389 = &v349 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v379 = &v349 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v388 = &v349 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v393 = &v349 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v366 = &v349 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v382 = (&v349 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v369 = &v349 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v378 = &v349 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v377 = &v349 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v396 = (&v349 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v383 = &v349 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v392 = (&v349 - v34);
  MEMORY[0x28223BE20](v33);
  v36 = &v349 - v35;
  v37 = sub_26932BF40();
  v38 = *(v37 - 8);
  v409 = v38;
  v39 = MEMORY[0x28223BE20](v37);
  v381 = &v349 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v363 = &v349 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v361 = &v349 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v362 = &v349 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v371 = (&v349 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v370 = &v349 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v374 = &v349 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v365 = &v349 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v364 = &v349 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v373 = &v349 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v384 = &v349 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v368 = &v349 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v367 = &v349 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v385 = &v349 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v391 = &v349 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v404 = &v349 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v372 = &v349 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v375 = &v349 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v403 = &v349 - v76;
  MEMORY[0x28223BE20](v75);
  v78 = &v349 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  MEMORY[0x28223BE20](v79);
  v81 = &v349 - v80;
  v411 = sub_26932C0B0();
  v410 = *(v411 - 8);
  MEMORY[0x28223BE20](v411);
  v424 = &v349 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_26932BE70();
  v84 = MEMORY[0x28223BE20](v83);
  v376 = &v349 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x28223BE20](v84);
  v394 = &v349 - v87;
  MEMORY[0x28223BE20](v86);
  v89 = &v349 - v88;
  v415 = v90;
  v91 = *(v90 + 16);
  v387 = v90 + 16;
  v386 = v91;
  v91(&v349 - v88, a1, v83);
  sub_26932BDE0();
  sub_26932BE00();
  sub_26932BD90();
  v425 = v89;
  v92 = sub_26932BDB0();
  if ((v93 & 1) == 0)
  {
    v360 = v10;
    v353 = v92;
    v413 = v37;
    if (qword_280307C50 != -1)
    {
      swift_once();
    }

    v94 = __swift_project_value_buffer(v79, qword_28030CD78);
    sub_2692E3B90(v94, v81, &qword_280308218, &qword_26932EEC8);
    v95 = v410;
    v96 = v411;
    if ((*(v410 + 48))(v81, 1, v411) == 1)
    {
      sub_2692EB48C(v81, &qword_280308218, &qword_26932EEC8);
      sub_26932C050();
    }

    else
    {
      (*(v95 + 32))(v424, v81, v96);
    }

    v401 = v83;
    v402 = v36;
    v97 = v413;
    if (qword_280307C40 != -1)
    {
      swift_once();
    }

    v98 = sub_26932D6B0();
    v99 = __swift_project_value_buffer(v98, qword_2803081F8);
    v100 = *(v38 + 16);
    v398 = v38 + 16;
    v397 = v100;
    v100(v78, v419, v97);
    v414 = v99;
    v101 = sub_26932D690();
    v102 = sub_26932D990();
    v103 = os_log_type_enabled(v101, v102);
    v418 = v38;
    v104 = v360;
    if (v103)
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v428 = v106;
      *v105 = 136315138;
      sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v107 = sub_26932DDD0();
      v109 = v108;
      v395 = *(v38 + 8);
      v395(v78, v97);
      v110 = sub_2692DD5A8(v107, v109, &v428);

      *(v105 + 4) = v110;
      _os_log_impl(&dword_2692D8000, v101, v102, "simpleDateTimeResolution: Using referenceDate %s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      MEMORY[0x26D639280](v106, -1, -1);
      MEMORY[0x26D639280](v105, -1, -1);
    }

    else
    {

      v395 = *(v38 + 8);
      v395(v78, v97);
    }

    v111 = v399;
    v112 = v400;
    (*(v399 + 104))(v104, *MEMORY[0x277CC99A8], v400);
    v113 = v402;
    sub_26932C080();
    (*(v111 + 8))(v104, v112);
    v114 = MEMORY[0x277CC9900];
    v115 = MEMORY[0x277CC98E8];
    v116 = v403;
    if (v405)
    {
      v117 = v392;
      sub_2692E3B90(v113, v392, &qword_280308210, &qword_26932EEC0);
      v118 = v418;
      v119 = *(v418 + 48);
      v120 = v413;
      if ((v119)(v117, 1, v413) != 1)
      {
        v400 = v119;
        v121 = *(v118 + 32);
        v399 = v118 + 32;
        v392 = v121;
        (v121)(v116, v117, v120);
        v122 = v416;
        (*(v420 + 104))(v416, *MEMORY[0x277CC9870], v421);
        v123 = v406;
        (*(v422 + 104))(v406, *v114, v423);
        v124 = v417;
        v125 = v407;
        v126 = v408;
        (*(v417 + 104))(v407, *v115, v408);
        v127 = v383;
        sub_26932C090();
        (*(v124 + 8))(v125, v126);
        (*(v422 + 8))(v123, v423);
        v128 = v122;
        v129 = v413;
        v117 = v127;
        (*(v420 + 8))(v128, v421);
        if ((v400)(v127, 1, v129) != 1)
        {
          v193 = v375;
          v194 = v392;
          (v392)(v375, v127, v129);
          v195 = v372;
          v397(v372, v193, v129);
          v196 = sub_26932D690();
          v197 = sub_26932D990();
          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            v428 = v199;
            *v198 = 136315138;
            sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v200 = sub_26932DDD0();
            v202 = v201;
            v203 = v395;
            v395(v195, v129);
            v204 = sub_2692DD5A8(v200, v202, &v428);
            v205 = v425;

            *(v198 + 4) = v204;
            _os_log_impl(&dword_2692D8000, v196, v197, "simpleDateTimeResolution: exact match: %s", v198, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v199);
            v206 = v199;
            v194 = v392;
            MEMORY[0x26D639280](v206, -1, -1);
            MEMORY[0x26D639280](v198, -1, -1);

            v203(v403, v129);
            v193 = v375;
            sub_2692EB48C(v402, &qword_280308210, &qword_26932EEC0);
            (*(v410 + 8))(v424, v411);
          }

          else
          {

            v217 = v395;
            v395(v195, v129);
            v217(v403, v129);
            sub_2692EB48C(v402, &qword_280308210, &qword_26932EEC0);
            (*(v410 + 8))(v424, v411);
            v205 = v425;
          }

          v218 = v412;
          v194(v412, v193, v129);
          (*(v418 + 56))(v218, 0, 1, v129);
          goto LABEL_95;
        }

        v395(v403, v129);
        v115 = MEMORY[0x277CC98E8];
        v114 = MEMORY[0x277CC9900];
      }

      sub_2692EB48C(v117, &qword_280308210, &qword_26932EEC0);
    }

    v130 = v420;
    v131 = *(v420 + 104);
    v356 = *MEMORY[0x277CC9878];
    v383 = (v420 + 104);
    v375 = v131;
    (v131)(v416);
    v132 = v422;
    v133 = *(v422 + 104);
    v134 = v406;
    LODWORD(v399) = *v114;
    v400 = (v422 + 104);
    v392 = v133;
    v133(v406);
    v135 = v417;
    v136 = *(v417 + 104);
    v137 = v407;
    v352 = *v115;
    v138 = v408;
    v360 = (v417 + 104);
    v359 = v136;
    v136(v407);
    v139 = v396;
    v140 = v416;
    sub_26932C090();
    v142 = *(v135 + 8);
    v141 = v135 + 8;
    v417 = v141;
    v372 = v142;
    (v142)(v137, v138);
    v143 = *(v132 + 8);
    v422 = v132 + 8;
    v357 = v143;
    v143(v134, v423);
    v144 = *(v130 + 8);
    v420 = v130 + 8;
    v358 = v144;
    v144(v140, v421);
    v145 = v418;
    v146 = (v418 + 48);
    v147 = *(v418 + 48);
    v148 = v413;
    if ((v147)(v139, 1, v413) == 1)
    {
      sub_2692EB48C(v139, &qword_280308210, &qword_26932EEC0);
      v149 = sub_26932D690();
      v150 = sub_26932D990();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        *v151 = 0;
        _os_log_impl(&dword_2692D8000, v149, v150, "simpleDateTimeResolution: unable to find next matching date for date components", v151, 2u);
        MEMORY[0x26D639280](v151, -1, -1);
      }

      sub_2692EB48C(v402, &qword_280308210, &qword_26932EEC0);
      (*(v410 + 8))(v424, v411);
      (*(v418 + 56))(v412, 1, 1, v148);
      v83 = v401;
      goto LABEL_22;
    }

    v154 = v145 + 32;
    v153 = *(v145 + 32);
    v155 = v404;
    v355 = v153;
    v354 = v154;
    v153(v404, v139, v148);
    v156 = v391;
    v397(v391, v155, v148);
    v157 = v414;
    v158 = sub_26932D690();
    v159 = sub_26932D990();
    if (os_log_type_enabled(v158, v159))
    {
      v141 = swift_slowAlloc();
      v160 = v146;
      v161 = swift_slowAlloc();
      v428 = v161;
      *v141 = 136315138;
      sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v162 = sub_26932DDD0();
      v164 = v163;
      v395(v156, v148);
      v157 = sub_2692DD5A8(v162, v164, &v428);

      *(v141 + 4) = v157;
      _os_log_impl(&dword_2692D8000, v158, v159, "simpleDateTimeResolution: nextMatching: %s", v141, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      v165 = v161;
      v146 = v160;
      MEMORY[0x26D639280](v165, -1, -1);
      MEMORY[0x26D639280](v141, -1, -1);
    }

    else
    {

      v395(v156, v148);
    }

    v166 = v394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803081E0, &unk_26932F960);
    v167 = (*(v418 + 80) + 32) & ~*(v418 + 80);
    v351 = *(v418 + 72);
    v168 = swift_allocObject();
    *(v168 + 1) = xmmword_26932EEA0;
    v397(v168 + v167, v404, v148);
    v403 = v146;
    v391 = v147;
    if (v405)
    {
      goto LABEL_54;
    }

    v386(v166, v425, v401);
    v169 = v353 + 12;
    if (__OFADD__(v353, 12))
    {
      __break(1u);
      goto LABEL_98;
    }

    sub_26932BDC0();
    v170 = sub_26932D690();
    v171 = sub_26932D990();
    v172 = os_log_type_enabled(v170, v171);
    v396 = v168;
    if (v172)
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v428 = v174;
      *v173 = 136315138;
      swift_beginAccess();
      sub_2692EB38C(&qword_280308228, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v175 = sub_26932DDD0();
      v177 = sub_2692DD5A8(v175, v176, &v428);

      *(v173 + 4) = v177;
      _os_log_impl(&dword_2692D8000, v170, v171, "simpleDateTimeResolution: using components for nextMatchingOffset: %s", v173, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      MEMORY[0x26D639280](v174, -1, -1);
      MEMORY[0x26D639280](v173, -1, -1);
    }

    v178 = sub_26932D690();
    v179 = sub_26932D990();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v428 = v181;
      *v180 = 136315138;
      swift_beginAccess();
      sub_2692EB38C(&qword_280308228, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v182 = sub_26932DDD0();
      v184 = sub_2692DD5A8(v182, v183, &v428);

      *(v180 + 4) = v184;
      _os_log_impl(&dword_2692D8000, v178, v179, "simpleDateTimeResolution: using components for nextMatchingOffset: %s", v180, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v181);
      MEMORY[0x26D639280](v181, -1, -1);
      MEMORY[0x26D639280](v180, -1, -1);
    }

    swift_beginAccess();
    v185 = v416;
    v186 = v421;
    (v375)(v416, v356, v421);
    v187 = v406;
    v188 = v423;
    (v392)(v406, v399, v423);
    v189 = v407;
    v190 = v408;
    (v359)(v407, v352, v408);
    v191 = v377;
    sub_26932C090();
    (v372)(v189, v190);
    v357(v187, v188);
    v358(v185, v186);
    v148 = v413;
    if ((v147)(v191, 1, v413) != 1)
    {
      v207 = v385;
      v355(v385, v191, v148);
      v208 = v367;
      v397(v367, v207, v148);
      v209 = sub_26932D690();
      v210 = sub_26932D990();
      if (os_log_type_enabled(v209, v210))
      {
        v211 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v426 = v212;
        *v211 = 136315138;
        sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v213 = sub_26932DDD0();
        v215 = v214;
        v395(v208, v148);
        v216 = sub_2692DD5A8(v213, v215, &v426);

        *(v211 + 4) = v216;
        _os_log_impl(&dword_2692D8000, v209, v210, "simpleDateTimeResolution: nextMatchingOffset: %s", v211, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v212);
        MEMORY[0x26D639280](v212, -1, -1);
        MEMORY[0x26D639280](v211, -1, -1);
      }

      else
      {

        v395(v208, v148);
      }

      v168 = v396;
      v159 = v368;
      v397(v368, v385, v148);
      v157 = v168[2];
      v219 = v168[3];
      v158 = (v157 + 1);
      v166 = v394;
      if (v157 >= v219 >> 1)
      {
        goto LABEL_100;
      }

      goto LABEL_42;
    }

    sub_2692EB48C(v191, &qword_280308210, &qword_26932EEC0);
    v192 = v355;
    v168 = v396;
    v166 = v394;
    while (1)
    {
      v220 = v378;
      sub_2692E3B90(v402, v378, &qword_280308210, &qword_26932EEC0);
      if ((v147)(v220, 1, v148) == 1)
      {
        sub_2692EB48C(v220, &qword_280308210, &qword_26932EEC0);
      }

      else
      {
        v396 = v168;
        v350 = v167;
        v192(v384, v220, v148);
        v221 = v416;
        v222 = v421;
        (v375)(v416, *MEMORY[0x277CC9870], v421);
        v223 = v406;
        v224 = v423;
        (v392)(v406, v399, v423);
        v225 = v407;
        v226 = v408;
        (v359)(v407, v352, v408);
        v227 = v369;
        sub_26932C090();
        (v372)(v225, v226);
        v357(v223, v224);
        v358(v221, v222);
        if ((v147)(v227, 1, v148) == 1)
        {
          v395(v384, v148);
          sub_2692EB48C(v227, &qword_280308210, &qword_26932EEC0);
          v147 = v391;
          v167 = v350;
          v168 = v396;
          v166 = v394;
        }

        else
        {
          v228 = v373;
          v355(v373, v227, v148);
          v229 = v364;
          v397(v364, v228, v148);
          v230 = sub_26932D690();
          v231 = sub_26932D990();
          v232 = os_log_type_enabled(v230, v231);
          v167 = v350;
          v166 = v394;
          if (v232)
          {
            v233 = swift_slowAlloc();
            v234 = swift_slowAlloc();
            v426 = v234;
            *v233 = 136315138;
            sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v235 = sub_26932DDD0();
            v237 = v236;
            v395(v229, v148);
            v238 = sub_2692DD5A8(v235, v237, &v426);

            *(v233 + 4) = v238;
            _os_log_impl(&dword_2692D8000, v230, v231, "simpleDateTimeResolution: exact match: %s", v233, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v234);
            MEMORY[0x26D639280](v234, -1, -1);
            MEMORY[0x26D639280](v233, -1, -1);
          }

          else
          {

            v395(v229, v148);
          }

          v147 = v391;
          v168 = v396;
          v239 = v365;
          v397(v365, v373, v148);
          v241 = v168[2];
          v240 = v168[3];
          if (v241 >= v240 >> 1)
          {
            v168 = sub_2692E3064((v240 > 1), v241 + 1, 1, v168);
          }

          v242 = v148;
          v243 = v395;
          v395(v373, v242);
          v243(v384, v413);
          v148 = v413;
          v168[2] = v241 + 1;
          v355(v168 + v167 + v241 * v351, v239, v148);
        }
      }

      (*(v415 + 8))(v166, v401);
LABEL_54:
      if ((v390 & 1) == 0)
      {
        goto LABEL_66;
      }

      v396 = v168;
      v244 = sub_26932D690();
      v245 = sub_26932D990();
      v246 = os_log_type_enabled(v244, v245);
      v350 = v167;
      if (v246)
      {
        v247 = swift_slowAlloc();
        v248 = swift_slowAlloc();
        v426 = v248;
        *v247 = 136315138;
        swift_beginAccess();
        sub_2692EB38C(&qword_280308228, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
        v249 = sub_26932DDD0();
        v251 = sub_2692DD5A8(v249, v250, &v426);

        *(v247 + 4) = v251;
        v252 = v425;
        _os_log_impl(&dword_2692D8000, v244, v245, "simpleDateTimeResolution: using components for previousMatching: %s", v247, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v248);
        MEMORY[0x26D639280](v248, -1, -1);
        MEMORY[0x26D639280](v247, -1, -1);
      }

      else
      {

        v252 = v425;
      }

      swift_beginAccess();
      v253 = v416;
      v254 = v421;
      (v375)(v416, v356, v421);
      v255 = v407;
      LODWORD(v394) = *MEMORY[0x277CC98F0];
      v256 = v408;
      v359(v407);
      v159 = v406;
      v257 = v423;
      (v392)(v406, v399, v423);
      v158 = v382;
      v166 = v252;
      v157 = v424;
      sub_26932C090();
      v357(v159, v257);
      (v372)(v255, v256);
      v358(v253, v254);
      v148 = v413;
      if ((v147)(v158, 1, v413) == 1)
      {
        sub_2692EB48C(v158, &qword_280308210, &qword_26932EEC0);
        v167 = v350;
        v147 = v424;
        v168 = v396;
      }

      else
      {
        v168 = v374;
        v355(v374, v158, v148);
        v258 = v370;
        v397(v370, v168, v148);
        v259 = sub_26932D690();
        v260 = sub_26932D990();
        if (os_log_type_enabled(v259, v260))
        {
          v261 = v148;
          v262 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          v426 = v263;
          *v262 = 136315138;
          sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v264 = sub_26932DDD0();
          v266 = v265;
          v395(v258, v261);
          v267 = sub_2692DD5A8(v264, v266, &v426);
          v147 = v424;

          *(v262 + 4) = v267;
          _os_log_impl(&dword_2692D8000, v259, v260, "simpleDateTimeResolution: previousMatching: %s", v262, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v263);
          v268 = v263;
          v168 = v374;
          v166 = v425;
          MEMORY[0x26D639280](v268, -1, -1);
          v269 = v262;
          v148 = v261;
          MEMORY[0x26D639280](v269, -1, -1);

          v158 = v371;
        }

        else
        {

          v395(v258, v148);
          v158 = v371;
          v147 = v424;
        }

        v397(v158, v168, v148);
        v141 = v396[2];
        v169 = v396[3];
        v157 = v141 + 1;
        v167 = v350;
        if (v141 >= v169 >> 1)
        {
LABEL_98:
          v396 = sub_2692E3064((v169 > 1), v157, 1, v396);
        }

        v395(v168, v148);
        v168 = v396;
        v396[2] = v157;
        v355(v168 + v167 + v141 * v351, v158, v148);
      }

      if (v405)
      {
LABEL_66:
        v270 = v388;
        goto LABEL_79;
      }

      v167 = v376;
      v386(v376, v166, v401);
      v219 = v353 + 12;
      if (!__OFADD__(v353, 12))
      {
        break;
      }

      __break(1u);
LABEL_100:
      v168 = sub_2692E3064((v219 > 1), v158, 1, v168);
LABEL_42:
      v192 = v355;
      v395(v385, v148);
      v168[2] = v158;
      v192(v168 + v167 + v157 * v351, v159, v148);
    }

    v396 = v168;
    sub_26932BDC0();
    v271 = sub_26932D690();
    v272 = sub_26932D990();
    if (os_log_type_enabled(v271, v272))
    {
      v273 = v148;
      v274 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      v426 = v275;
      *v274 = 136315138;
      swift_beginAccess();
      sub_2692EB38C(&qword_280308228, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v276 = sub_26932DDD0();
      v278 = sub_2692DD5A8(v276, v277, &v426);

      *(v274 + 4) = v278;
      _os_log_impl(&dword_2692D8000, v271, v272, "simpleDateTimeResolution: using components for otherPrevious: %s", v274, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v275);
      MEMORY[0x26D639280](v275, -1, -1);
      v279 = v274;
      v148 = v273;
      MEMORY[0x26D639280](v279, -1, -1);
    }

    swift_beginAccess();
    v280 = v416;
    v281 = v421;
    (v375)(v416, v356, v421);
    v282 = v407;
    v283 = v408;
    (v359)(v407, v394, v408);
    v284 = v406;
    v285 = v423;
    (v392)(v406, v399, v423);
    v286 = v366;
    sub_26932C090();
    v357(v284, v285);
    (v372)(v282, v283);
    v358(v280, v281);
    if ((v391)(v286, 1, v148) == 1)
    {
      sub_2692EB48C(v286, &qword_280308210, &qword_26932EEC0);
      v287 = v401;
      v270 = v388;
      v167 = v350;
      v168 = v396;
    }

    else
    {
      v288 = v362;
      v355(v362, v286, v148);
      v289 = v361;
      v397(v361, v288, v148);
      v290 = sub_26932D690();
      v291 = v148;
      v292 = sub_26932D990();
      v293 = os_log_type_enabled(v290, v292);
      v287 = v401;
      v270 = v388;
      if (v293)
      {
        v294 = swift_slowAlloc();
        v295 = swift_slowAlloc();
        v426 = v295;
        *v294 = 136315138;
        sub_2692EB38C(&qword_280308230, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v296 = sub_26932DDD0();
        v297 = v289;
        v299 = v298;
        v395(v297, v291);
        v300 = sub_2692DD5A8(v296, v299, &v426);

        *(v294 + 4) = v300;
        _os_log_impl(&dword_2692D8000, v290, v292, "simpleDateTimeResolution: otherPreviousOffset: %s", v294, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v295);
        MEMORY[0x26D639280](v295, -1, -1);
        MEMORY[0x26D639280](v294, -1, -1);
      }

      else
      {

        v395(v289, v291);
      }

      v148 = v291;
      v301 = v363;
      v397(v363, v288, v291);
      v168 = v396;
      v303 = v396[2];
      v302 = v396[3];
      v167 = v350;
      if (v303 >= v302 >> 1)
      {
        v168 = sub_2692E3064((v302 > 1), v303 + 1, 1, v396);
      }

      v395(v288, v148);
      v168[2] = v303 + 1;
      v355(v168 + v167 + v303 * v351, v301, v148);
    }

    (*(v415 + 8))(v376, v287);
LABEL_79:

    v304 = sub_26932D690();
    v305 = sub_26932D990();

    if (os_log_type_enabled(v304, v305))
    {
      v306 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      v308 = v148;
      v309 = v307;
      v426 = v307;
      *v306 = 136315138;
      v310 = v308;
      v311 = MEMORY[0x26D638530](v168);
      v313 = v168;
      v314 = sub_2692DD5A8(v311, v312, &v426);

      *(v306 + 4) = v314;
      v168 = v313;
      _os_log_impl(&dword_2692D8000, v304, v305, "simpleDateTimeResolution: Found matches for inferred time: %s", v306, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v309);
      MEMORY[0x26D639280](v309, -1, -1);
      MEMORY[0x26D639280](v306, -1, -1);
    }

    else
    {
      v310 = v148;
    }

    v315 = v393;
    MEMORY[0x28223BE20](v316);
    *(&v349 - 2) = v419;
    v426 = v168;

    sub_2692E7834(sub_2692EB324, (&v349 - 4));

    if (*(v426 + 2))
    {
      v317 = v310;
      v397(v315, &v426[v167], v310);
      v318 = 0;
    }

    else
    {
      v318 = 1;
      v317 = v310;
    }

    v319 = *(v418 + 56);
    v320 = v317;
    v418 += 56;
    v319(v315, v318, 1, v317);
    sub_2692E3B90(v315, v270, &qword_280308210, &qword_26932EEC0);
    v321 = sub_26932D690();
    v322 = sub_26932D990();
    if (os_log_type_enabled(v321, v322))
    {
      v323 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      v426 = v324;
      *v323 = 136315138;
      sub_2692E3B90(v270, v379, &qword_280308210, &qword_26932EEC0);
      v325 = sub_26932D790();
      v326 = v270;
      v327 = v325;
      v329 = v328;
      sub_2692EB48C(v326, &qword_280308210, &qword_26932EEC0);
      v330 = sub_2692DD5A8(v327, v329, &v426);

      *(v323 + 4) = v330;
      v315 = v393;
      _os_log_impl(&dword_2692D8000, v321, v322, "simpleDateTimeResolution: Selecting date for inference: %s", v323, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v324);
      MEMORY[0x26D639280](v324, -1, -1);
      MEMORY[0x26D639280](v323, -1, -1);
    }

    else
    {

      sub_2692EB48C(v270, &qword_280308210, &qword_26932EEC0);
    }

    v331 = v412;
    v332 = v402;
    v205 = v425;
    v333 = v389;
    sub_2692E3B90(v315, v389, &qword_280308210, &qword_26932EEC0);
    v334 = v320;
    if ((v391)(v333, 1, v320) == 1)
    {
      sub_2692EB48C(v333, &qword_280308210, &qword_26932EEC0);
      v335 = sub_26932D690();
      v336 = sub_26932D990();
      if (os_log_type_enabled(v335, v336))
      {
        v337 = swift_slowAlloc();
        v338 = swift_slowAlloc();
        v427 = v338;
        *v337 = 136315138;
        swift_beginAccess();
        sub_2692EB38C(&qword_280308228, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
        v339 = sub_26932DDD0();
        v341 = sub_2692DD5A8(v339, v340, &v427);

        *(v337 + 4) = v341;
        v205 = v425;
        _os_log_impl(&dword_2692D8000, v335, v336, "simpleDateTimeResolution: No matches found for %s", v337, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v338);
        MEMORY[0x26D639280](v338, -1, -1);
        MEMORY[0x26D639280](v337, -1, -1);

        v342 = v393;
      }

      else
      {

        v342 = v315;
      }

      sub_2692EB48C(v342, &qword_280308210, &qword_26932EEC0);
      v334 = v320;
      v395(v404, v320);
      sub_2692EB48C(v332, &qword_280308210, &qword_26932EEC0);
      (*(v410 + 8))(v424, v411);
      v346 = v331;
      v347 = 1;
    }

    else
    {
      sub_2692EB48C(v315, &qword_280308210, &qword_26932EEC0);
      v395(v404, v320);
      sub_2692EB48C(v332, &qword_280308210, &qword_26932EEC0);
      (*(v410 + 8))(v424, v411);
      v343 = v381;
      v344 = v333;
      v345 = v355;
      v355(v381, v344, v320);
      v345(v331, v343, v320);
      v346 = v331;
      v347 = 0;
    }

    v319(v346, v347, 1, v334);
LABEL_95:
    v83 = v401;
    v152 = v205;
    return (*(v415 + 8))(v152, v83);
  }

  (*(v38 + 56))(v412, 1, 1, v37);
LABEL_22:
  v152 = v425;
  return (*(v415 + 8))(v152, v83);
}

uint64_t sub_2692E7834(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_26932BF40();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2692E91A4(v5);
  }

  result = sub_2692E78F4(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_2692E78F4(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_26932DDC0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26932BF40();
        v9 = sub_26932D890();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_26932BF40() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_2692E7D1C(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_2692E7A30(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t sub_2692E7A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = sub_26932BF40();
  v12 = MEMORY[0x28223BE20](v11);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v38 - v15;
  result = MEMORY[0x28223BE20](v14);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v17;
    v19 = *v5;
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        v48(v50, v25, v11);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          return (v37)(v28, v11);
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        result = (v33)(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v34)(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = v42 + v38;
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2692E7D1C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v141 = a1;
  v162 = sub_26932BF40();
  v12 = MEMORY[0x28223BE20](v162);
  v145 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v148 = &v133 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v133 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v139 = &v133 - v22;
  MEMORY[0x28223BE20](v21);
  result = MEMORY[0x28223BE20](&v133 - v23);
  v160 = v26;
  v161 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = a4;
LABEL_104:
    a4 = *v141;
    if (*v141)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v140 = &v133 - v25;
  v138 = result;
  v150 = v20;
  v146 = v28;
  v147 = v27;
  v136 = a6;
  v30 = 0;
  v158 = (v26 + 8);
  v159 = v26 + 16;
  v154 = (v26 + 32);
  v31 = MEMORY[0x277D84F90];
  v155 = a5;
  v32 = a4;
  v157 = a4;
  while (1)
  {
    v33 = v30;
    v142 = v31;
    if ((v30 + 1) < v29)
    {
      v143 = v30;
      v144 = v29;
      v34 = *v161;
      v35 = *(v160 + 72);
      a4 = *v161 + v35 * (v30 + 1);
      v36 = *(v160 + 16);
      v37 = v162;
      v36(v140, a4, v162);
      v156 = v35;
      v137 = v34;
      v38 = v34 + v35 * v143;
      v39 = v138;
      v151 = v36;
      v36(v138, v38, v37);
      v40 = v140;
      LODWORD(v153) = v32(v140, v39);
      if (v7)
      {
        v132 = *v158;
        (*v158)(v39, v37);
        v132(v40, v37);
      }

      v163 = 0;
      v41 = *v158;
      (*v158)(v39, v37);
      v149 = v41;
      result = (v41)(v40, v37);
      v135 = v144 - 1;
      v152 = v144 - 2;
      v42 = v143;
      a5 = v155;
      v43 = v156;
      v44 = v137 + v156 * (v143 + 2);
      v45 = v139;
      while (v152 != v42)
      {
        v46 = v162;
        v47 = v151;
        (v151)(v45, v44, v162);
        v48 = a5;
        v49 = v150;
        (v47)(v150, a4, v46);
        v50 = v48;
        v51 = v163;
        v52 = v157(v45, v49);
        v163 = v51;
        if (v51)
        {
          v130 = v149;
          (v149)(v49, v46);
          v130(v45, v46);
        }

        v53 = v52;
        v54 = v149;
        (v149)(v49, v46);
        result = v54(v45, v46);
        ++v42;
        v43 = v156;
        v44 += v156;
        a4 += v156;
        a5 = v50;
        if ((v153 ^ v53))
        {
          v55 = v42 + 1;
          goto LABEL_12;
        }
      }

      v42 = v135;
      v55 = v144;
LABEL_12:
      v33 = v143;
      if (v153)
      {
        if (v55 < v143)
        {
          goto LABEL_141;
        }

        v31 = v162;
        if (v143 <= v42)
        {
          a4 = v43 * (v55 - 1);
          v56 = v55;
          v57 = v55 * v43;
          v144 = v56;
          v58 = v56;
          v59 = v143;
          v60 = v143 * v43;
          do
          {
            if (v59 != --v58)
            {
              v62 = *v161;
              if (!*v161)
              {
                goto LABEL_145;
              }

              v63 = *v154;
              (*v154)(v145, v62 + v60, v162);
              if (v60 < a4 || v62 + v60 >= (v62 + v57))
              {
                v61 = v162;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v61 = v162;
                if (v60 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v63)(v62 + a4, v145, v61);
              a5 = v155;
              v43 = v156;
              v31 = v61;
            }

            ++v59;
            a4 -= v43;
            v57 -= v43;
            v60 += v43;
          }

          while (v59 < v58);
          v7 = v163;
          v32 = v157;
          v33 = v143;
          v55 = v144;
        }

        else
        {
          v7 = v163;
          v32 = v157;
        }
      }

      else
      {
        v31 = v162;
        v7 = v163;
        v32 = v157;
      }
    }

    else
    {
      v55 = (v30 + 1);
      v31 = v162;
    }

    v64 = v161[1];
    if (v55 < v64)
    {
      if (__OFSUB__(v55, v33))
      {
        goto LABEL_137;
      }

      if (v55 - v33 < v136)
      {
        if (__OFADD__(v33, v136))
        {
          __break(1u);
        }

        else
        {
          v144 = v55;
          if (&v33[v136] >= v64)
          {
            v65 = v64;
          }

          else
          {
            v65 = &v33[v136];
          }

          if (v65 >= v33)
          {
            if (v144 == v65)
            {
              v55 = v144;
              goto LABEL_38;
            }

            v163 = v7;
            v112 = *v161;
            v113 = *(v160 + 72);
            v156 = *(v160 + 16);
            v114 = (v112 + v113 * (v144 - 1));
            v152 = -v113;
            v153 = v112;
            v143 = v33;
            v115 = &v33[-v144];
            v134 = v113;
            a4 = v112 + v144 * v113;
            v151 = v65;
            while (1)
            {
              v135 = a4;
              v137 = v115;
              v149 = v114;
              while (1)
              {
                v116 = v146;
                v117 = v156;
                (v156)(v146, a4, v31);
                v118 = v147;
                v117(v147, v114, v31);
                v119 = v163;
                v120 = v157(v116, v118);
                v163 = v119;
                if (v119)
                {
                  v131 = *v158;
                  (*v158)(v118, v31);
                  v131(v116, v31);
                }

                v121 = v120;
                v122 = *v158;
                (*v158)(v118, v31);
                result = (v122)(v116, v31);
                if ((v121 & 1) == 0)
                {
                  break;
                }

                if (!v153)
                {
                  goto LABEL_143;
                }

                v123 = *v154;
                v124 = v148;
                v31 = v162;
                (*v154)(v148, a4, v162);
                swift_arrayInitWithTakeFrontToBack();
                v123(v114, v124, v31);
                v114 += v152;
                a4 += v152;
                v125 = __CFADD__(v115++, 1);
                a5 = v155;
                if (v125)
                {
                  goto LABEL_101;
                }
              }

              a5 = v155;
              v31 = v162;
LABEL_101:
              v114 = &v149[v134];
              v115 = (v137 - 1);
              a4 = v135 + v134;
              v55 = v151;
              if (++v144 == v151)
              {
                v32 = v157;
                v7 = v163;
                v33 = v143;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v31 = v142;
    if (v55 < v33)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a4 = v32;
    if ((result & 1) == 0)
    {
      result = sub_2692E2F60(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v67 = *(v31 + 2);
    v66 = *(v31 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = sub_2692E2F60((v66 > 1), v67 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v68;
    v69 = &v31[16 * v67];
    *(v69 + 4) = v33;
    *(v69 + 5) = v55;
    v151 = v55;
    v70 = *v141;
    if (!*v141)
    {
      goto LABEL_146;
    }

    if (v67)
    {
      break;
    }

    a5 = v155;
    v32 = a4;
LABEL_90:
    v29 = v161[1];
    v30 = v151;
    if (v151 >= v29)
    {
      goto LABEL_104;
    }
  }

  a5 = v155;
  v32 = a4;
  while (1)
  {
    a4 = v68 - 1;
    if (v68 >= 4)
    {
      v75 = &v31[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_123;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_124;
      }

      v82 = &v31[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_126;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_129;
      }

      if (v86 >= v78)
      {
        v104 = &v31[16 * a4 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v107)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v68 == 3)
    {
      v71 = *(v31 + 4);
      v72 = *(v31 + 5);
      v81 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      v74 = v81;
LABEL_59:
      if (v74)
      {
        goto LABEL_125;
      }

      v87 = &v31[16 * v68];
      v89 = *v87;
      v88 = *(v87 + 1);
      v90 = __OFSUB__(v88, v89);
      v91 = v88 - v89;
      v92 = v90;
      if (v90)
      {
        goto LABEL_128;
      }

      v93 = &v31[16 * a4 + 32];
      v95 = *v93;
      v94 = *(v93 + 1);
      v81 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v81)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v91, v96))
      {
        goto LABEL_132;
      }

      if (v91 + v96 >= v73)
      {
        if (v73 < v96)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v97 = &v31[16 * v68];
    v99 = *v97;
    v98 = *(v97 + 1);
    v81 = __OFSUB__(v98, v99);
    v91 = v98 - v99;
    v92 = v81;
LABEL_73:
    if (v92)
    {
      goto LABEL_127;
    }

    v100 = &v31[16 * a4];
    v102 = *(v100 + 4);
    v101 = *(v100 + 5);
    v81 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v81)
    {
      goto LABEL_130;
    }

    if (v103 < v91)
    {
      goto LABEL_90;
    }

LABEL_80:
    v108 = a4 - 1;
    if (a4 - 1 >= v68)
    {
      break;
    }

    if (!*v161)
    {
      goto LABEL_142;
    }

    v109 = *&v31[16 * v108 + 32];
    v110 = *&v31[16 * a4 + 40];
    sub_2692E8928((*v161 + *(v160 + 72) * v109), (*v161 + *(v160 + 72) * *&v31[16 * a4 + 32]), (*v161 + *(v160 + 72) * v110), v70, v32, a5);
    if (v7)
    {
    }

    if (v110 < v109)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_2692E90AC(v31);
    }

    if (v108 >= *(v31 + 2))
    {
      goto LABEL_122;
    }

    v111 = &v31[16 * v108];
    *(v111 + 4) = v109;
    *(v111 + 5) = v110;
    v164 = v31;
    result = sub_2692E9020(a4);
    v31 = v164;
    v68 = *(v164 + 2);
    if (v68 <= 1)
    {
      goto LABEL_90;
    }
  }

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
  result = sub_2692E90AC(v31);
  v31 = result;
LABEL_106:
  v164 = v31;
  v126 = *(v31 + 2);
  if (v126 < 2)
  {
  }

  while (*v161)
  {
    v127 = *&v31[16 * v126];
    v128 = *&v31[16 * v126 + 24];
    sub_2692E8928((*v161 + *(v160 + 72) * v127), (*v161 + *(v160 + 72) * *&v31[16 * v126 + 16]), (*v161 + *(v160 + 72) * v128), a4, v32, a5);
    if (v7)
    {
    }

    if (v128 < v127)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_2692E90AC(v31);
    }

    if (v126 - 2 >= *(v31 + 2))
    {
      goto LABEL_134;
    }

    v129 = &v31[16 * v126];
    *v129 = v127;
    *(v129 + 1) = v128;
    v164 = v31;
    result = sub_2692E9020(v126 - 1);
    v31 = v164;
    v126 = *(v164 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_2692E8928(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = sub_26932BF40();
  v11 = *(v77 - 8);
  v12 = MEMORY[0x28223BE20](v77);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v69 - v17;
  result = MEMORY[0x28223BE20](v16);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = &v69 - v20;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v85 = a1;
    v84 = a4;
    v80 = v23;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || &a1[v27] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = &a4[v27];
      v83 = &a4[v27];
      if (v27 >= 1 && a2 < a3)
      {
        v53 = *(v11 + 16);
        v74 = v18;
        v75 = v11 + 16;
        v72 = v53;
        v73 = (v11 + 8);
        v54 = v24;
        v55 = v77;
        v56 = v6;
        v71 = a3;
        while (1)
        {
          v81 = a1;
          v57 = v72;
          v72(v54, a2, v55);
          v58 = a2;
          v59 = v54;
          v60 = v74;
          v57(v74, a4, v55);
          v61 = v79(v59, v60);
          if (v56)
          {
            break;
          }

          v62 = v61;
          v82 = 0;
          v63 = *v73;
          (*v73)(v60, v55);
          v63(v59, v55);
          v54 = v59;
          if (v62)
          {
            v64 = v80;
            v65 = v81;
            a2 = &v58[v80];
            if (v81 < v58 || v81 >= a2)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }
          }

          else
          {
            v64 = v80;
            v65 = v81;
            v66 = &a4[v80];
            a2 = v58;
            if (v81 < a4 || v81 >= v66)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }

            v84 = v66;
            a4 = v66;
          }

          a1 = &v65[v64];
          v85 = a1;
          if (a4 >= v76 || a2 >= v71)
          {
            goto LABEL_65;
          }
        }

        v67 = *v73;
        (*v73)(v60, v55);
        v67(v59, v55);
      }

LABEL_65:
      sub_2692E90C0(&v85, &v84, &v83);
      return 1;
    }

    v76 = v21;
    v28 = a3;
    v29 = a2;
    v30 = v25 / v23 * v23;
    if (a4 < v29 || &v29[v30] <= a4)
    {
      v31 = v29;
      v32 = v77;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v31 = v29;
      v32 = v77;
      if (a4 == v29)
      {
LABEL_24:
        v82 = v6;
        v34 = &a4[v30];
        if (v30 >= 1)
        {
          v35 = -v23;
          v69 = a4;
          v70 = (v11 + 16);
          v72 = (v11 + 8);
          v36 = &a4[v30];
          v37 = v28;
          v38 = v76;
          v81 = a1;
          v74 = -v23;
          do
          {
            v75 = v34;
            v71 = v34;
            v39 = v31;
            v77 = v31 + v35;
            v73 = v31;
            while (1)
            {
              if (v39 <= a1)
              {
                v85 = v39;
                v34 = v71;
                goto LABEL_64;
              }

              v40 = v37;
              v41 = v74;
              v80 = v36;
              v42 = &v36[v74];
              v43 = *v70;
              (*v70)(v38, &v36[v74], v32);
              v43(v14, v77, v32);
              v44 = v38;
              v45 = v82;
              v46 = v79(v38, v14);
              v82 = v45;
              if (v45)
              {
                v68 = *v72;
                (*v72)(v14, v32);
                v68(v44, v32);
                v85 = v73;
                v34 = v75;
                goto LABEL_64;
              }

              v47 = v46;
              v48 = &v40[v41];
              v49 = v14;
              v50 = *v72;
              v51 = v49;
              (*v72)();
              v50(v44, v32);
              if (v47)
              {
                break;
              }

              v37 = &v40[v41];
              if (v40 < v80 || v48 >= v80)
              {
                swift_arrayInitWithTakeFrontToBack();
                v14 = v51;
                v38 = v76;
              }

              else
              {
                v14 = v51;
                v38 = v76;
                if (v40 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v42;
              v36 = v42;
              a1 = v81;
              v39 = v73;
              if (v42 <= v69)
              {
                v31 = v73;
                v34 = v75;
                goto LABEL_63;
              }
            }

            v37 = &v40[v41];
            if (v40 < v73 || v48 >= v73)
            {
              v31 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v69;
              v14 = v51;
              v38 = v76;
            }

            else
            {
              v38 = v76;
              v31 = v77;
              v52 = v69;
              v14 = v51;
              if (v40 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v80;
            a1 = v81;
            v35 = v74;
            v34 = v75;
          }

          while (v80 > v52);
        }

LABEL_63:
        v85 = v31;
LABEL_64:
        v83 = v34;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v80;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_2692E9020(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2692E90AC(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2692E90C0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_26932BF40();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2692E91B8(uint64_t a1, int a2, uint64_t a3)
{
  v191 = a2;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308238, "({");
  v167 = *(v163 - 8);
  v5 = MEMORY[0x28223BE20](v163);
  v155 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v201 = &v153 - v7;
  v193 = sub_26932D240();
  v192 = *(v193 - 8);
  v8 = MEMORY[0x28223BE20](v193);
  v195 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v194 = &v153 - v10;
  v190 = sub_26932D0D0();
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v196 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_26932D0E0();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v205 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_26932D100();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v202 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_26932D110();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v186 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26932C0D0();
  MEMORY[0x28223BE20](v15 - 8);
  v185 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_26932BFA0();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v176 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_26932D6B0();
  v177 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v175 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for SiriTimeMeasurement(0);
  MEMORY[0x28223BE20](v174);
  v207 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_26932D0C0();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v208 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_26932C0A0();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_26932BFF0();
  v170 = *(v171 - 8);
  v22 = MEMORY[0x28223BE20](v171);
  v182 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v181 = &v153 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v180 = &v153 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v153 - v28;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308218, &qword_26932EEC8);
  v30 = MEMORY[0x28223BE20](v168);
  v172 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v158 = &v153 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v153 - v34;
  v204 = sub_26932C0B0();
  v203 = *(v204 - 8);
  v36 = MEMORY[0x28223BE20](v204);
  v173 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v159 = &v153 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v153 - v40;
  v169 = sub_26932D160();
  v42 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v44 = &v153 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308210, &qword_26932EEC0);
  v46 = MEMORY[0x28223BE20](v45);
  v157 = &v153 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v153 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v153 - v51;
  v212 = sub_26932BF40();
  v210 = *(v212 - 8);
  v53 = MEMORY[0x28223BE20](v212);
  MEMORY[0x28223BE20](v53);
  v211 = &v153 - v55;
  v209 = a1;
  if (!a1)
  {
    if (qword_280307C40 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v206, qword_2803081F8);
    v60 = sub_26932D690();
    v61 = sub_26932D9B0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2692D8000, v60, v61, "Can NOT infer dateTime from nil.", v62, 2u);
      MEMORY[0x26D639280](v62, -1, -1);
    }

    return 0;
  }

  v156 = v54;
  v154 = a3;
  if (!a3)
  {
    v56 = v210;
    (*(v210 + 56))(v52, 1, 1, v212);

    goto LABEL_11;
  }

  DateTime.asDate()(v52);
  v56 = v210;
  v164 = *(v210 + 48);
  if (v164(v52, 1, v212) == 1)
  {
LABEL_11:
    if (qword_280307C48 != -1)
    {
      swift_once();
    }

    v63 = __swift_project_value_buffer(v45, qword_28030CD60);
    sub_2692E3B90(v63, v50, &qword_280308210, &qword_26932EEC0);
    v64 = v212;
    v164 = *(v56 + 48);
    if (v164(v50, 1, v212) == 1)
    {
      sub_2692EB48C(v50, &qword_280308210, &qword_26932EEC0);
      sub_26932BF30();
    }

    else
    {
      (*(v56 + 32))(v211, v50, v64);
    }

    v65 = v164(v52, 1, v64);
    v58 = v204;
    v59 = v203;
    v57 = v42;
    if (v65 != 1)
    {
      sub_2692EB48C(v52, &qword_280308210, &qword_26932EEC0);
    }

    goto LABEL_18;
  }

  v57 = v42;
  (*(v56 + 32))(v211, v52, v212);
  v58 = v204;
  v59 = v203;
LABEL_18:
  if (qword_2814B2520)
  {
    v66 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v66 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v66;
  }

  v67 = v57;
  sub_2692EB3E4(v66 + 16, v217);

  sub_26932D150();
  v68 = v59;
  if (qword_280307C50 != -1)
  {
    swift_once();
  }

  v168 = __swift_project_value_buffer(v168, qword_28030CD78);
  sub_2692E3B90(v168, v35, &qword_280308218, &qword_26932EEC8);
  v69 = *(v59 + 48);
  v166 = v59 + 48;
  v165 = v69;
  if (v69(v35, 1, v58) == 1)
  {
    sub_2692EB48C(v35, &qword_280308218, &qword_26932EEC8);
    sub_26932C050();
  }

  else
  {
    (*(v59 + 32))(v41, v35, v58);
  }

  __swift_project_boxed_opaque_existential_1(v217, v217[3]);
  sub_26932C310();
  sub_2692ED318(MEMORY[0x277D84F90]);
  v70 = sub_26932D140();

  (*(v170 + 8))(v29, v171);
  v71 = *(v59 + 8);
  v71(v41, v58);
  (*(v67 + 8))(v44, v169);
  if (v70)
  {
    if (qword_280307C40 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v206, qword_2803081F8);
    v72 = sub_26932D690();
    v73 = sub_26932D9B0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2692D8000, v72, v73, "witching hours active; moving referenceDate back by 1 day", v74, 2u);
      MEMORY[0x26D639280](v74, -1, -1);
    }

    v75 = v158;
    sub_2692E3B90(v168, v158, &qword_280308218, &qword_26932EEC8);
    if (v165(v75, 1, v58) == 1)
    {
      sub_2692EB48C(v75, &qword_280308218, &qword_26932EEC8);
      v76 = v159;
      sub_26932C050();
    }

    else
    {
      v76 = v159;
      (*(v68 + 32))(v159, v75, v58);
    }

    v77 = v161;
    v78 = v160;
    v79 = v162;
    (*(v161 + 104))(v160, *MEMORY[0x277CC9968], v162);
    v80 = v157;
    v81 = v211;
    sub_26932C080();
    (*(v77 + 8))(v78, v79);
    v71(v76, v58);
    v82 = v210;
    v83 = v212;
    if (v164(v80, 1, v212) == 1)
    {
      sub_2692EB48C(v80, &qword_280308210, &qword_26932EEC0);
    }

    else
    {
      (*(v82 + 8))(v81, v83);
      (*(v82 + 32))(v81, v80, v83);
    }
  }

  sub_26932D0B0();
  if (qword_2814B2520)
  {
    v84 = qword_2814B2520;
  }

  else
  {
    type metadata accessor for ApplicationContext();
    v84 = swift_allocObject();
    sub_26932C6E0();
    qword_2814B2520 = v84;
  }

  sub_2692EB3E4(v84 + 16, &v215);

  if (qword_280307C40 != -1)
  {
    swift_once();
  }

  v85 = v206;
  v86 = __swift_project_value_buffer(v206, qword_2803081F8);
  v87 = v177;
  v88 = *(v177 + 16);
  v89 = v175;
  v171 = v86;
  v88(v175);
  v170 = mach_absolute_time();
  v90 = v174;
  v91 = v207;
  *(v207 + *(v174 + 28)) = xmmword_26932EEB0;
  *(v91 + v90[8]) = 0x7FEFFFFFFFFFFFFFLL;
  v169 = v90[9];
  v92 = v176;
  sub_26932BF90();
  v93 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v94 = sub_26932BF70();
  v95 = [v93 initWithNSUUID_];

  (*(v178 + 8))(v92, v179);
  *(v91 + v169) = v95;
  *(v91 + 8) = 27;
  (v88)(v91 + v90[6], v89, v85);
  *v91 = v170;
  sub_26931A2C8();
  (*(v87 + 8))(v89, v85);
  __swift_project_boxed_opaque_existential_1(&v215, v216);
  sub_26932C310();
  __swift_project_boxed_opaque_existential_1(&v215, v216);
  sub_26932C310();
  __swift_project_boxed_opaque_existential_1(&v215, v216);
  sub_26932C310();
  sub_26932C0C0();
  (*(v183 + 104))(v186, *MEMORY[0x277D56150], v184);
  v96 = v172;
  sub_2692E3B90(v168, v172, &qword_280308218, &qword_26932EEC8);
  v97 = v204;
  if (v165(v96, 1, v204) == 1)
  {
    sub_2692EB48C(v96, &qword_280308218, &qword_26932EEC8);
    sub_26932C050();
  }

  else
  {
    (*(v203 + 32))(v173, v96, v97);
  }

  (*(v210 + 16))(v156, v211, v212);
  sub_26932D130();
  swift_allocObject();
  v206 = sub_26932D120();
  v98 = MEMORY[0x277D56138];
  if ((v191 & 1) == 0)
  {
    v98 = MEMORY[0x277D56130];
  }

  (*(v187 + 104))(v205, *v98, v188);
  (*(v189 + 104))(v196, *MEMORY[0x277D56128], v190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308240, &qword_26932EF18);
  v99 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308248, &qword_26932EF20) - 8);
  v100 = (*(*v99 + 80) + 32) & ~*(*v99 + 80);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_26932EEA0;
  v102 = v101 + v100;
  v103 = v99[14];
  v104 = *MEMORY[0x277D563C8];
  v105 = sub_26932D260();
  (*(*(v105 - 8) + 104))(v102, v104, v105);
  v106 = *MEMORY[0x277D56298];
  v107 = *(v192 + 104);
  v108 = v193;
  v107(v194, v106, v193);
  v107(v195, v106, v108);
  sub_26932D2F0();
  swift_allocObject();
  *(v102 + v103) = sub_26932D2B0();
  sub_2692ED318(v101);
  swift_setDeallocating();
  sub_2692EB48C(v102, &qword_280308248, &qword_26932EF20);
  swift_deallocClassInstance();
  v109 = v202;
  sub_26932D0F0();
  v110 = v201;
  sub_26932D0A0();
  SiriTimeMeasurement.logDelta()();
  v111 = v167;
  v112 = v155;
  v113 = v163;
  (*(v167 + 16))(v155, v110, v163);
  if ((*(v111 + 88))(v112, v113) == *MEMORY[0x277D56080])
  {
    (*(v111 + 96))(v112, v113);
    v114 = *v112;

    v115 = sub_26932D690();
    v116 = sub_26932D9B0();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v214 = v118;
      *v117 = 136315138;
      if (sub_26932D2E0())
      {
        v119 = sub_26932D1E0();

        v120 = v119 & 1;
      }

      else
      {
        v120 = 2;
      }

      LOBYTE(v213) = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308258, &unk_26932EF30);
      v140 = sub_26932D790();
      v142 = sub_2692DD5A8(v140, v141, &v214);

      *(v117 + 4) = v142;
      _os_log_impl(&dword_2692D8000, v115, v116, "[DateTimeInferenceUtils.infer] Inference recommended meridiemSetByUser = %s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v118);
      MEMORY[0x26D639280](v118, -1, -1);
      MEMORY[0x26D639280](v117, -1, -1);

      v113 = v163;
      v111 = v167;
      v109 = v202;
    }

    else
    {
    }

    if (sub_26932D2E0() || v154 && sub_26932D2E0())
    {
      sub_26932D1E0();
    }

    if (sub_26932D2E0())
    {
      v143 = sub_26932D1E0();

      if ((v143 & 1) == 0 && sub_26932D2E0())
      {
        sub_26932D1F0();
      }

      v144 = sub_26932D690();
      v145 = sub_26932D9B0();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v214 = v147;
        *v146 = 136315138;
        if (sub_26932D2E0())
        {
          v148 = sub_26932D1E0();

          v149 = v148 & 1;
        }

        else
        {
          v149 = 2;
        }

        LOBYTE(v213) = v149;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308258, &unk_26932EF30);
        v150 = sub_26932D790();
        v152 = sub_2692DD5A8(v150, v151, &v214);

        *(v146 + 4) = v152;
        _os_log_impl(&dword_2692D8000, v144, v145, "[DateTimeInferenceUtils.infer] Returning with meridiemSetByUser = %s", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v147);
        MEMORY[0x26D639280](v147, -1, -1);
        MEMORY[0x26D639280](v146, -1, -1);

        (*(v167 + 8))(v110, v163);
        (*(v199 + 8))(v202, v200);
        goto LABEL_80;
      }
    }

    else
    {
      if (sub_26932D2E0())
      {
        sub_26932D1F0();
      }
    }

    (*(v111 + 8))(v110, v113);
    (*(v199 + 8))(v109, v200);
LABEL_80:
    sub_2692EB4EC(v207);
    (*(v197 + 8))(v208, v198);
    (*(v210 + 8))(v211, v212);
    __swift_destroy_boxed_opaque_existential_1Tm(&v215);
    __swift_destroy_boxed_opaque_existential_1Tm(v217);
    return v114;
  }

  v205 = *(v111 + 8);
  (v205)(v112, v113);

  v121 = sub_26932D690();
  v122 = sub_26932D9A0();

  v123 = os_log_type_enabled(v121, v122);
  v167 = v111 + 8;
  if (v123)
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v214 = v125;
    *v124 = 136315138;
    v126 = sub_26932D290();
    v128 = sub_2692DD5A8(v126, v127, &v214);

    *(v124 + 4) = v128;
    _os_log_impl(&dword_2692D8000, v121, v122, "Not confident when inferring alarm time, dateTime = %s", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v125);
    MEMORY[0x26D639280](v125, -1, -1);
    MEMORY[0x26D639280](v124, -1, -1);
  }

  v129 = sub_26932D690();
  v130 = sub_26932D9A0();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v214 = v132;
    *v131 = 136315138;
    v213 = sub_26932D2A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308250, &qword_26932EF28);
    v133 = sub_26932DA30();
    v135 = v134;

    v136 = sub_2692DD5A8(v133, v135, &v214);

    *(v131 + 4) = v136;
    _os_log_impl(&dword_2692D8000, v129, v130, "%s", v131, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    MEMORY[0x26D639280](v132, -1, -1);
    MEMORY[0x26D639280](v131, -1, -1);

    v137 = v110;
    v138 = v163;
  }

  else
  {

    v137 = v110;
    v138 = v113;
  }

  (v205)(v137, v138);
  (*(v199 + 8))(v202, v200);
  sub_2692EB4EC(v207);
  (*(v197 + 8))(v208, v198);
  (*(v210 + 8))(v211, v212);
  __swift_destroy_boxed_opaque_existential_1Tm(&v215);
  __swift_destroy_boxed_opaque_existential_1Tm(v217);
  return 0;
}

BOOL sub_2692EB324()
{
  sub_26932BF10();
  v1 = fabs(v0);
  sub_26932BF10();
  return v1 < fabs(v2);
}

uint64_t sub_2692EB38C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2692EB3E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2692EB48C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2692EB4EC(uint64_t a1)
{
  v2 = type metadata accessor for SiriTimeMeasurement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2692EB548(unsigned __int8 a1)
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EB638(unsigned __int8 a1)
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EB728(uint64_t a1, unsigned __int8 a2)
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EB814(uint64_t a1, unsigned __int8 a2)
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EB900()
{
  v0 = sub_26932D6B0();
  __swift_allocate_value_buffer(v0, qword_280308260);
  v1 = __swift_project_value_buffer(v0, qword_280308260);
  if (qword_2814B2530 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814B2760);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

SiriTimeInternal::ButtonOption_optional __swiftcall ButtonOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ButtonOption.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return 7562617;
  }
}

uint64_t sub_2692EBA5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C65636E6163;
  }

  else
  {
    v3 = 7562617;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C65636E6163;
  }

  else
  {
    v5 = 7562617;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26932DF00();
  }

  return v8 & 1;
}

uint64_t sub_2692EBAF8()
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EBB70(uint64_t a1)
{
  sub_26932D7D0();
}

uint64_t sub_2692EBBD4(uint64_t a1)
{
  sub_26932DF50();
  sub_26932D7D0();

  return sub_26932DF70();
}

uint64_t sub_2692EBC48@<X0>(char *a2@<X8>)
{
  v3 = sub_26932DC60();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2692EBCA8(uint64_t *a1@<X8>)
{
  v2 = 7562617;
  if (*v1)
  {
    v2 = 0x6C65636E6163;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static DirectInvocationUtils.siriKitConfirmationResponse(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26932C6A0();
  v4 = v3;
  v5 = sub_26932C290();
  v6 = [v5 identifier];

  v7 = sub_26932D770();
  v9 = v8;

  if (v2 == v7 && v4 == v9)
  {

LABEL_8:

    if (qword_280307C58 != -1)
    {
      swift_once();
    }

    v12 = sub_26932D6B0();
    __swift_project_value_buffer(v12, qword_280308260);
    v13 = sub_26932D690();
    v14 = sub_26932D9B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2692D8000, v13, v14, "User selected SiriKit confirm action", v15, 2u);
      MEMORY[0x26D639280](v15, -1, -1);
    }

    v16 = MEMORY[0x277D5BED8];
LABEL_23:
    v27 = *v16;
    v28 = sub_26932C540();
    v41 = *(v28 - 8);
    (*(v41 + 104))(a1, v27, v28);
    v29 = *(v41 + 56);
    v30 = a1;
    v31 = 0;
    v32 = v28;
    goto LABEL_24;
  }

  v11 = sub_26932DF00();

  if (v11)
  {
    goto LABEL_8;
  }

  v17 = sub_26932C280();
  v18 = [v17 identifier];

  v19 = sub_26932D770();
  v21 = v20;

  if (v2 == v19 && v4 == v21)
  {
    goto LABEL_15;
  }

  v22 = sub_26932DF00();

  if (v22)
  {
    goto LABEL_17;
  }

  v34 = sub_26932C270();
  v35 = [v34 identifier];

  v36 = sub_26932D770();
  v38 = v37;

  if (v2 == v36 && v4 == v38)
  {
LABEL_15:

LABEL_17:

LABEL_18:
    if (qword_280307C58 != -1)
    {
      swift_once();
    }

    v23 = sub_26932D6B0();
    __swift_project_value_buffer(v23, qword_280308260);
    v24 = sub_26932D690();
    v25 = sub_26932D9B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2692D8000, v24, v25, "User selected SiriKit cancel/reject action", v26, 2u);
      MEMORY[0x26D639280](v26, -1, -1);
    }

    v16 = MEMORY[0x277D5BED0];
    goto LABEL_23;
  }

  v39 = sub_26932DF00();

  if (v39)
  {
    goto LABEL_18;
  }

  v40 = sub_26932C540();
  v29 = *(*(v40 - 8) + 56);
  v32 = v40;
  v30 = a1;
  v31 = 1;
LABEL_24:

  return v29(v30, v31, 1, v32);
}

uint64_t static DirectInvocationUtils.isQuickStopDirectInvocation(_:)()
{
  if (sub_26932C6A0() == 0xD00000000000003ALL && 0x8000000269336080 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_26932DF00();
  }

  return v1 & 1;
}

SiriTimeInternal::DirectInvocationUtils::Timer::URI_optional __swiftcall DirectInvocationUtils.Timer.URI.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DirectInvocationUtils.Timer.URI.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000036;
  if (v1 == 4)
  {
    v2 = 0xD00000000000002ALL;
  }

  if (v1 == 3)
  {
    v3 = 0xD00000000000002ALL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000042;
  if (v1 == 1)
  {
    v4 = 0xD000000000000034;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000031;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2692EC29C(uint64_t a1)
{
  sub_26932D7D0();
}

void sub_2692EC388(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "armIntentFromTimer";
  v4 = "irectInvocation.Timer.Stop";
  v5 = 0xD000000000000036;
  if (v2 == 4)
  {
    v5 = 0xD00000000000002ALL;
  }

  else
  {
    v4 = "irectInvocation.Timer.Undo";
  }

  if (v2 == 3)
  {
    v6 = 0xD00000000000002ALL;
  }

  else
  {
    v6 = v5;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v7 = "Timer.ButtonPress";
  v8 = 0xD000000000000042;
  if (v2 == 1)
  {
    v8 = 0xD000000000000034;
  }

  else
  {
    v7 = "Timer.Disambiguation";
  }

  if (*v1)
  {
    v9 = v7;
  }

  else
  {
    v8 = 0xD000000000000031;
    v9 = "nsion";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v8 = v6;
    v10 = v3;
  }

  *a1 = v8;
  a1[1] = v10 | 0x8000000000000000;
}

SiriTimeInternal::DirectInvocationUtils::Timer::UserInfoKey_optional __swiftcall DirectInvocationUtils.Timer.UserInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DirectInvocationUtils.Timer.UserInfoKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 1651664246;
    v7 = 0x72506E6F74747562;
    if (v1 != 2)
    {
      v7 = 1920298856;
    }

    if (*v0)
    {
      v6 = 0x644972656D6974;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x646573756170;
    v3 = 0x6E6F697461727564;
    if (v1 != 7)
    {
      v3 = 0x6C6562616CLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6574756E696DLL;
    if (v1 != 4)
    {
      v4 = 0x7469746E456F7375;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2692EC5F0@<X0>(uint64_t *a1@<X8>)
{
  result = DirectInvocationUtils.Timer.UserInfoKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static DirectInvocationUtils.Timer.makeReformedAlarmInvocation(hour:minute:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308278, &qword_26932EF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EF40;
  *(inited + 32) = 1651664246;
  v9 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x657461657263;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = v9;
  *(inited + 80) = 1920298856;
  v10 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = a1;
  *(inited + 120) = v10;
  *(inited + 128) = 0x6574756E696DLL;
  *(inited + 168) = v10;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = a2;
  sub_2692ED51C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308280, &qword_26932EF68);
  swift_arrayDestroy();
  if (a4)
  {
    v15 = v9;
    *&v14 = a3;
    *(&v14 + 1) = a4;
    sub_2692ED64C(&v14, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2692ED1C8(v13, 0x6C6562616CLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  return sub_26932C690();
}

SiriTimeInternal::DirectInvocationUtils::Alarm::URI_optional __swiftcall DirectInvocationUtils.Alarm.URI.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DirectInvocationUtils.Alarm.URI.rawValue.getter()
{
  v1 = 0xD00000000000002ALL;
  v2 = *v0;
  v3 = 0xD000000000000036;
  if (v2 != 4)
  {
    v3 = 0xD000000000000042;
  }

  if (v2 == 3)
  {
    v3 = 0xD00000000000002ALL;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000034;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000031;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2692EC8C0(uint64_t a1)
{
  sub_26932D7D0();
}

void sub_2692EC9AC(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ALL;
  v3 = *v1;
  v4 = "irectInvocation.Alarm.Stop";
  v5 = "irectInvocation.Alarm.Undo";
  v6 = 0xD000000000000036;
  if (v3 != 4)
  {
    v6 = 0xD000000000000042;
    v5 = "Timer.Disambiguation";
  }

  if (v3 == 3)
  {
    v6 = 0xD00000000000002ALL;
  }

  else
  {
    v4 = v5;
  }

  v7 = "Alarm.ButtonPress";
  if (v3 == 1)
  {
    v2 = 0xD000000000000034;
  }

  else
  {
    v7 = "Alarm.Disambiguation";
  }

  if (*v1)
  {
    v8 = v7;
  }

  else
  {
    v2 = 0xD000000000000031;
    v8 = "oEntity";
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v2 = v6;
    v9 = v4;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

SiriTimeInternal::DirectInvocationUtils::Alarm::UserInfoKey_optional __swiftcall DirectInvocationUtils.Alarm.UserInfoKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26932DC60();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DirectInvocationUtils.Alarm.UserInfoKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 1651664246;
    v7 = 0x64496D72616C61;
    if (v1 != 2)
    {
      v7 = 0xD000000000000012;
    }

    if (*v0)
    {
      v6 = 0x72506E6F74747562;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x706D6F4365746164;
    v3 = 1920298856;
    if (v1 != 7)
    {
      v3 = 0x6574756E696DLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6953656C646E6168;
    if (v1 != 4)
    {
      v4 = 0x6C6562616CLL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2692ECC04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_26932DF50();
  a3(v7, v5);
  return sub_26932DF70();
}

uint64_t sub_2692ECC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_26932DF50();
  a4(v8, v6);
  return sub_26932DF70();
}

unint64_t sub_2692ECCCC@<X0>(unint64_t *a1@<X8>)
{
  result = DirectInvocationUtils.Alarm.UserInfoKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static DirectInvocationUtils.Alarm.reformToTimer(duration:label:)(unint64_t a1, unint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308278, &qword_26932EF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EF50;
  *(inited + 32) = 1651664246;
  v6 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x657461657263;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = v6;
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  v7 = sub_26932D910();
  *(inited + 120) = sub_2692ED65C();
  *(inited + 96) = v7;
  sub_2692ED51C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308280, &qword_26932EF68);
  swift_arrayDestroy();
  if (a2)
  {
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {

      sub_2692ED890(1, a1, a2, v9);

      v10 = sub_26932DA50();
      v12 = v11;

      sub_2692ED92C(1uLL, a1, a2, v13);
      v15 = v14;

      *&v18[0] = v10;
      *(&v18[0] + 1) = v12;
      v20 = v15;
      sub_2692ED9DC();
      sub_26932D7F0();

      v21 = v6;
      *&v19 = v10;
      *(&v19 + 1) = v12;
      sub_2692ED64C(&v19, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2692ED1C8(v18, 0x6C6562616CLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    }
  }

  return sub_26932C690();
}

unint64_t static DirectInvocationUtils.Alarm.handleVerbActionPayload(verbStr:alarmId:handleSilently:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308278, &qword_26932EF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EF40;
  *(inited + 32) = 1651664246;
  v11 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v11;
  *(inited + 80) = 0x64496D72616C61;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 120) = v11;
  strcpy((inited + 128), "handleSilently");
  *(inited + 143) = -18;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = a5;

  v12 = sub_2692ED51C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308280, &qword_26932EF68);
  swift_arrayDestroy();
  return v12;
}

unint64_t sub_2692ED0A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = 7562617;
  }

  else
  {
    v5 = 0x6C65636E6163;
  }

  if (a3)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308278, &qword_26932EF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26932EF50;
  *(inited + 32) = 1651664246;
  v8 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v8;
  strcpy((inited + 80), "buttonPressed");
  *(inited + 120) = v8;
  *(inited + 94) = -4864;
  *(inited + 96) = v5;
  *(inited + 104) = v6;

  v9 = sub_2692ED51C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308280, &qword_26932EF68);
  swift_arrayDestroy();
  return v9;
}

_OWORD *sub_2692ED1C8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_269324148(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_269324810();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2693244EC(v16, a4 & 1);
    v11 = sub_269324148(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_26932DF40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_2692ED64C(a1, v22);
  }

  else
  {
    sub_2693247A4(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_2692ED330(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308248, &qword_26932EF20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082D8, &unk_26932F390);
    v9 = sub_26932DC50();
    v10 = *(v4 + 48);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);

    while (1)
    {
      sub_2692E3B90(v11, v7, &qword_280308248, &qword_26932EF20);
      result = a2(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_26932D260();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2692ED51C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082D0, &unk_26932F380);
    v3 = sub_26932DC50();
    v4 = a1 + 32;

    while (1)
    {
      sub_2692E3B90(v4, &v13, &qword_280308280, &qword_26932EF68);
      v5 = v13;
      v6 = v14;
      result = sub_269324148(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2692ED64C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_2692ED64C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2692ED65C()
{
  result = qword_280308288;
  if (!qword_280308288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280308288);
  }

  return result;
}

unint64_t sub_2692ED6A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082C0, &qword_26932F370);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082C8, &qword_26932F378);
    v7 = sub_26932DC50();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2692E3B90(v9, v5, &qword_2803082C0, &qword_26932F370);
      result = sub_2693241C0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26932BFA0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2692ED890(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
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
    v9 = sub_26932D7E0();
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

uint64_t sub_2692ED92C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = sub_26932D7E0();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_2692ED9DC()
{
  result = qword_280308290;
  if (!qword_280308290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308290);
  }

  return result;
}

unint64_t sub_2692EDA34()
{
  result = qword_280308298;
  if (!qword_280308298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308298);
  }

  return result;
}

unint64_t sub_2692EDA8C()
{
  result = qword_2803082A0;
  if (!qword_2803082A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082A0);
  }

  return result;
}

unint64_t sub_2692EDAE4()
{
  result = qword_2803082A8;
  if (!qword_2803082A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082A8);
  }

  return result;
}

unint64_t sub_2692EDB3C()
{
  result = qword_2803082B0;
  if (!qword_2803082B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082B0);
  }

  return result;
}

unint64_t sub_2692EDB94()
{
  result = qword_2803082B8;
  if (!qword_2803082B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonOption(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClockTimeSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClockTimeSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2692EDF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x77656956656D6974 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26932DF00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2692EDFF0(uint64_t a1)
{
  v2 = sub_2692EE4C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692EE02C(uint64_t a1)
{
  v2 = sub_2692EE4C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2692EE068()
{
  sub_26932DF50();
  MEMORY[0x26D638C20](0);
  return sub_26932DF70();
}

uint64_t sub_2692EE0AC(uint64_t a1)
{
  sub_26932DF50();
  MEMORY[0x26D638C20](0);
  return sub_26932DF70();
}

uint64_t sub_2692EE0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26932DF00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2692EE178(uint64_t a1)
{
  v2 = sub_2692EE514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692EE1B4(uint64_t a1)
{
  v2 = sub_2692EE514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriClockSnippetModels.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082E0, &qword_26932F3A0);
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - v3;
  v5 = type metadata accessor for SiriClockSnippetModels(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803082E8, &qword_26932F3A8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2692EE4C0();
  sub_26932DF90();
  sub_2692F08DC(v14, v7, type metadata accessor for SiriClockSnippetModels);
  sub_2692EE514();
  sub_26932DD40();
  type metadata accessor for ClockTimeSnippetModel(0);
  sub_2692EEA08(&qword_280308300, type metadata accessor for ClockTimeSnippetModel, &protocol conformance descriptor for ClockTimeSnippetModel);
  v12 = v15;
  sub_26932DDA0();
  sub_2692EE5C0(v7);
  (*(v2 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_2692EE4C0()
{
  result = qword_2803082F0;
  if (!qword_2803082F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082F0);
  }

  return result;
}

unint64_t sub_2692EE514()
{
  result = qword_2803082F8;
  if (!qword_2803082F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803082F8);
  }

  return result;
}

uint64_t sub_2692EE588(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2692EE5C0(uint64_t a1)
{
  v2 = type metadata accessor for ClockTimeSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriClockSnippetModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for SiriClockSnippetModels(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308308, &qword_26932F3B0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308310, &qword_26932F3B8);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v20 - v10;
  v12 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2692EE4C0();
  v25 = v11;
  v13 = v23;
  sub_26932DF80();
  if (!v13)
  {
    v14 = v22;
    v23 = v9;
    if (*(sub_26932DD10() + 16) == 1)
    {
      sub_2692EE514();
      sub_26932DC80();
      v15 = v23;
      type metadata accessor for ClockTimeSnippetModel(0);
      sub_2692EEA08(&qword_280308320, type metadata accessor for ClockTimeSnippetModel, &protocol conformance descriptor for ClockTimeSnippetModel);
      sub_26932DD00();
      (*(v14 + 8))(v8, v6);
      (*(v15 + 8))(v25, v26);
      swift_unknownObjectRelease();
      sub_2692EEA50(v5, v21);
    }

    else
    {
      v16 = sub_26932DBC0();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308318, &unk_26932F3C0);
      *v18 = v3;
      sub_26932DC90();
      sub_26932DBB0();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
      swift_willThrow();
      (*(v23 + 8))(v25, v26);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t sub_2692EEA08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2692EEA50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriClockSnippetModels(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2692EEAB4()
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

uint64_t ClockTimeSnippetModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClockTimeSnippetModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ClockTimeSnippetModel.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClockTimeSnippetModel(0) + 20);
  v4 = sub_26932BF40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClockTimeSnippetModel.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClockTimeSnippetModel(0) + 20);
  v4 = sub_26932BF40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ClockTimeSnippetModel.currentTimeStaticTitle.getter()
{
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_26932C120();
  return v1;
}

void *sub_2692EED5C@<X0>(void *a1@<X8>)
{
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  result = sub_26932C120();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_2692EEDC4(void *a1)
{
  type metadata accessor for ClockTimeSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t ClockTimeSnippetModel.currentTimeStaticTitle.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t (*ClockTimeSnippetModel.currentTimeStaticTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692EEF28;
}

uint64_t ClockTimeSnippetModel.timeDescriptiveAbsolute.getter()
{
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  sub_26932C120();
  return v1;
}

void *sub_2692EEF80@<X0>(void *a1@<X8>)
{
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  result = sub_26932C120();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_2692EEFE8(void *a1)
{
  type metadata accessor for ClockTimeSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t ClockTimeSnippetModel.timeDescriptiveAbsolute.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  return sub_26932C130();
}

uint64_t (*ClockTimeSnippetModel.timeDescriptiveAbsolute.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692F1710;
}

void *ClockTimeSnippetModel.locale.getter()
{
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  return sub_26932C120();
}

void *sub_2692EF1A0()
{
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  return sub_26932C120();
}

uint64_t sub_2692EF1F8(uint64_t a1)
{
  v2 = sub_26932BFF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  sub_26932C130();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ClockTimeSnippetModel.locale.setter(uint64_t a1)
{
  v2 = sub_26932BFF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  sub_26932C130();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ClockTimeSnippetModel.locale.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ClockTimeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  *(v3 + 32) = sub_26932C110();
  return sub_2692F1710;
}

void sub_2692EF500(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ClockTimeSnippetModel.punchoutURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClockTimeSnippetModel(0) + 36);

  return sub_2692EF590(v3, a1);
}

uint64_t sub_2692EF590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClockTimeSnippetModel.punchoutURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ClockTimeSnippetModel(0) + 36);

  return sub_2692EF644(a1, v3);
}

uint64_t sub_2692EF644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ClockTimeSnippetModel.init(id:date:currentTimeStaticTitle:timeDescriptiveAbsolute:locale:punchoutURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v36 = a6;
  v37 = a7;
  v34 = a5;
  v31 = a3;
  v32 = a4;
  v38 = a10;
  v15 = sub_26932BFF0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v33 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - v19;
  v21 = type metadata accessor for ClockTimeSnippetModel(0);
  v22 = *(v21 + 36);
  v35 = v22;
  v23 = sub_26932BED0();
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  *a9 = a1;
  *(a9 + 1) = a2;
  v24 = *(v21 + 20);
  v30 = sub_26932BF40();
  v25 = *(v30 - 8);
  (*(v25 + 16))(&a9[v24], a3, v30);
  v39 = v32;
  v40 = v34;
  sub_26932C100();
  v39 = v36;
  v40 = v37;
  sub_26932C100();
  v26 = *(v16 + 16);
  v26(v20, a8, v15);
  v26(v33, v20, v15);
  sub_26932C100();
  v27 = *(v16 + 8);
  v27(a8, v15);
  (*(v25 + 8))(v31, v30);
  v27(v20, v15);
  return sub_2692EF644(v38, &a9[v35]);
}

unint64_t sub_2692EF99C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000017;
  v4 = 0x656C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x74756F68636E7570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2692EFA54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2692F1508(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2692EFA88(uint64_t a1)
{
  v2 = sub_2692EFE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692EFAC4(uint64_t a1)
{
  v2 = sub_2692EFE44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClockTimeSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308338, &qword_26932F3E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2692EFE44();
  sub_26932DF90();
  v14 = 0;
  sub_26932DD60();
  if (!v1)
  {
    type metadata accessor for ClockTimeSnippetModel(0);
    v13 = 1;
    sub_26932BF40();
    sub_2692EEA08(&qword_280308348, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26932DDA0();
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
    sub_2692F0798(&qword_280308350, MEMORY[0x277D637D0]);
    sub_26932DDA0();
    v11 = 3;
    sub_26932DDA0();
    v10 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
    sub_2692F0808(&qword_280308358, MEMORY[0x277D637D0]);
    sub_26932DDA0();
    v9 = 5;
    sub_26932BED0();
    sub_2692EEA08(&qword_280308370, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_26932DD50();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2692EFE44()
{
  result = qword_280308340;
  if (!qword_280308340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280308340);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t ClockTimeSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308330, &unk_26932F3D0);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = v38 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308328, &qword_2693312A0);
  v45 = *(v47 - 8);
  v7 = MEMORY[0x28223BE20](v47);
  v42 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - v9;
  v11 = sub_26932BF40();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280308378, &qword_26932F3E8);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v15 = v38 - v14;
  v16 = type metadata accessor for ClockTimeSnippetModel(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v17 + 36);
  v21 = sub_26932BED0();
  v22 = *(*(v21 - 8) + 56);
  v54 = v19;
  v52 = v20;
  v22(v19 + v20, 1, 1, v21);
  v23 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_2692EFE44();
  v49 = v15;
  v24 = v51;
  sub_26932DF80();
  if (v24)
  {
    v27 = v54;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    return sub_2692F0730(v27 + v52);
  }

  else
  {
    v38[1] = v21;
    v51 = v11;
    v25 = v47;
    v60 = 0;
    v26 = sub_26932DCF0();
    v28 = v54;
    *v54 = v26;
    v28[1] = v29;
    v59 = 1;
    sub_2692EEA08(&qword_280308380, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v30 = v51;
    sub_26932DD00();
    (*(v46 + 32))(v28 + v16[5], v13, v30);
    v58 = 2;
    sub_2692F0798(&qword_280308388, MEMORY[0x277D637E0]);
    sub_26932DD00();
    v31 = *(v45 + 32);
    v31(v28 + v16[6], v10, v25);
    v57 = 3;
    v32 = v42;
    sub_26932DD00();
    v31(v54 + v16[7], v32, v25);
    v56 = 4;
    sub_2692F0808(&qword_280308390, MEMORY[0x277D637E0]);
    v33 = v41;
    v34 = v44;
    sub_26932DD00();
    (*(v43 + 32))(v54 + v16[8], v33, v34);
    v55 = 5;
    sub_2692EEA08(&qword_280308398, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v35 = v40;
    sub_26932DCE0();
    (*(v48 + 8))(v49, v50);
    v36 = v54;
    sub_2692EF644(v35, v54 + v52);
    sub_2692F08DC(v36, v39, type metadata accessor for ClockTimeSnippetModel);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    return sub_2692EE5C0(v36);
  }
}

uint64_t sub_2692F0730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803086A0, &unk_26932FB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2692F0798(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280308328, &qword_2693312A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2692F0808(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280308330, &unk_26932F3D0);
    v4 = MEMORY[0x277CC9788];
    sub_2692EEA08(&qword_280308360, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
    sub_2692EEA08(&qword_280308368, v4, MEMORY[0x277CC9790]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2692F08DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2692F0A70@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2692F0AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClockTimeSnippetModel(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_indexTm);
}