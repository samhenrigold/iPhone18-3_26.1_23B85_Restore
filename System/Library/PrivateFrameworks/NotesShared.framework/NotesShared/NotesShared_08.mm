uint64_t sub_214F481AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

CGFloat NSAttributedString.height(_:)(double a1)
{
  [v1 boundingRectWithSize:3 options:0 context:{a1, 1.79769313e308}];

  return CGRectGetHeight(*&v2);
}

uint64_t sub_214F4823C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA41E38);
  v1 = __swift_project_value_buffer(v0, qword_27CA41E38);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_214F48304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[487] = v8;
  v9[481] = a8;
  v9[475] = a7;
  v9[469] = a6;
  v9[463] = a5;
  v9[457] = a4;
  v9[451] = a3;
  v9[445] = a2;
  v9[439] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  v9[493] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F483C0, 0, 0);
}

uint64_t sub_214F483C0()
{
  v1 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v2 = sub_2150A36B0();
  v3 = [v1 initWithURL:v2 options:0];
  v0[499] = v3;

  v4 = *MEMORY[0x277CE5E48];
  v0[322] = v0;
  v0[327] = v0 + 415;
  v0[323] = sub_214F48534;
  v5 = swift_continuation_init();
  v0[342] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E58, &qword_2150C2A00);
  v0[339] = v5;
  v0[335] = MEMORY[0x277D85DD0];
  v0[336] = 1107296256;
  v0[337] = sub_21504A2F8;
  v0[338] = &block_descriptor_2;
  [v3 loadTracksWithMediaType:v4 completionHandler:v0 + 335];

  return MEMORY[0x282200938](v0 + 322);
}

uint64_t sub_214F48534()
{
  v1 = *(*v0 + 2608);
  *(*v0 + 4040) = v1;
  if (v1)
  {
    v2 = sub_214F4AD54;
  }

  else
  {
    v2 = sub_214F48644;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214F48644()
{
  v1 = v0[415];
  if (v1 >> 62)
  {
    v2 = sub_2150A59D0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 == 2)
  {
    v3 = v0[499];
    v4 = swift_allocObject();
    v0[506] = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E60, &qword_2150C2A18);
    swift_asyncLet_begin();
    v6 = swift_allocObject();
    v0[507] = v6;
    *(v6 + 16) = v5;
    v7 = v5;
    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 2, v0 + 427, sub_214F488BC, v0 + 458);
  }

  else
  {
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v8 = sub_2150A3F30();
    __swift_project_value_buffer(v8, qword_27CA41E38);
    v9 = sub_2150A3F10();
    v10 = sub_2150A5560();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_214D51000, v9, v10, "failed to get tracks from file", v11, 2u);
      MEMORY[0x216064AF0](v11, -1, -1);
    }

    v12 = v0[499];

    sub_215049A40();

    v13 = v0[1];
    v14 = MEMORY[0x277D84F90];

    return v13(v14);
  }
}

uint64_t sub_214F488D8()
{
  v1 = v0[427];
  v0[508] = v1;
  if (v1)
  {
    v2 = v1;

    return MEMORY[0x282200928](v0 + 242, v0 + 433, sub_214F48A78, v0 + 396);
  }

  else
  {
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v3 = sub_2150A3F30();
    __swift_project_value_buffer(v3, qword_27CA41E38);
    v4 = sub_2150A3F10();
    v5 = sub_2150A5560();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_214D51000, v4, v5, "failed to create composition for call transcription", v6, 2u);
      MEMORY[0x216064AF0](v6, -1, -1);
    }

    sub_214F4810C();
    v0[541] = swift_allocError();
    *v7 = 14;
    swift_willThrow();

    return MEMORY[0x282200920](v0 + 242, v0 + 433, sub_214F4AC54, v0 + 446);
  }
}

uint64_t sub_214F48A94()
{
  v1 = *(v0 + 3464);
  *(v0 + 4072) = v1;
  if (v1)
  {
    v2 = *(v0 + 4064);
    v3 = *(v0 + 3896);
    v4 = swift_allocObject();
    *(v0 + 4080) = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = v2;
    v6 = v1;
    *(v0 + 4088) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E68, &qword_2150C2A40);
    swift_asyncLet_begin();
    v7 = swift_allocObject();
    *(v0 + 4096) = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = v6;
    v8 = v6;
    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 1296, v0 + 3368, sub_214F48D10, v0 + 3280);
  }

  else
  {

    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v9 = sub_2150A3F30();
    __swift_project_value_buffer(v9, qword_27CA41E38);
    v10 = sub_2150A3F10();
    v11 = sub_2150A5560();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_214D51000, v10, v11, "failed to create composition for call transcription", v12, 2u);
      MEMORY[0x216064AF0](v12, -1, -1);
    }

    sub_214F4810C();
    *(v0 + 4328) = swift_allocError();
    *v13 = 14;
    swift_willThrow();

    return MEMORY[0x282200920](v0 + 1936, v0 + 3464, sub_214F4AC54, v0 + 3568);
  }
}

uint64_t sub_214F48D2C()
{
  v1 = *(v0 + 3368);
  *(v0 + 2920) = v1;
  v2 = v1;

  return MEMORY[0x282200928](v0 + 656, v0 + 3272, sub_214F48D9C, v0 + 3328);
}

uint64_t sub_214F48DB8()
{
  v63 = v0;
  v1 = *(v0 + 3272);
  *(v0 + 4104) = v1;
  *(v0 + 2928) = v1;
  v2 = *(v0 + 2920);
  *(v0 + 4112) = v2;
  if (!v2)
  {
    v27 = v1;
    swift_arrayDestroy();
LABEL_11:
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v28 = sub_2150A3F30();
    __swift_project_value_buffer(v28, qword_27CA41E38);
    v29 = sub_2150A3F10();
    v30 = sub_2150A5560();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_214D51000, v29, v30, "failed to create composition for call transcription", v31, 2u);
      MEMORY[0x216064AF0](v31, -1, -1);
    }

    sub_214F4810C();
    *(v0 + 4320) = swift_allocError();
    *v32 = 14;
    swift_willThrow();
    v33 = sub_214F4AA58;
    v34 = v0 + 656;
    v35 = v0 + 3272;
    v36 = v0 + 3376;

    return MEMORY[0x282200920](v34, v35, v33, v36);
  }

  v3 = v1;
  v4 = v2;
  swift_arrayDestroy();
  if (!v1)
  {

    goto LABEL_11;
  }

  v60 = v3;
  v61 = v4;
  if (qword_27CA41470 != -1)
  {
    swift_once();
  }

  v5 = sub_2150A3F30();
  *(v0 + 4120) = __swift_project_value_buffer(v5, qword_27CA41E38);
  v6 = sub_2150A3F10();
  v7 = sub_2150A5550();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_214D51000, v6, v7, "separated tracks for call transcript", v8, 2u);
    MEMORY[0x216064AF0](v8, -1, -1);
  }

  v9 = *(v0 + 3656);
  v10 = *(v0 + 3608);

  v11 = swift_allocObject();
  *(v0 + 4128) = v11;
  v59 = v11;
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v0 + 4136) = v12;
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  *(v0 + 4144) = v13;
  v14 = MEMORY[0x277D84F90];
  *(v13 + 16) = MEMORY[0x277D84F90];
  v15 = swift_allocObject();
  *(v0 + 4152) = v15;
  *(v15 + 16) = v14;
  v16 = swift_allocObject();
  *(v0 + 4160) = v16;
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v0 + 4168) = v17;
  *(v17 + 16) = 0;
  v18 = sub_21501989C(v9, v10);
  if (v18)
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
    *(v13 + 16) = v18;

    *(v15 + 16) = v22;

    *(v16 + 16) = v23;

    *(v17 + 16) = v24;
    *(v59 + 16) = v23;
    v25 = v23;
    v26 = v24;
    *(v12 + 16) = v24;
  }

  else
  {
    v26 = 0.0;
    v25 = 0.0;
  }

  CMTimeMakeWithSeconds(&v62, v25, 600);
  value = v62.value;
  epoch = v62.epoch;
  v39 = *&v62.timescale;
  [v61 duration];
  sub_2150A5730();
  CMTimeMakeWithSeconds(&v62, v40, 600);
  v41 = v62.value;
  v42 = v62.epoch;
  v43 = *&v62.timescale;
  *(v0 + 4432) = value;
  *(v0 + 4440) = v39;
  *(v0 + 4448) = epoch;
  *(v0 + 4504) = v41;
  *(v0 + 4512) = v43;
  *(v0 + 4520) = v42;
  CMTimeRangeMake((v0 + 4384), (v0 + 4432), (v0 + 4504));
  CMTimeMakeWithSeconds(&v62, v26, 600);
  v44 = v62.value;
  v45 = v62.epoch;
  v46 = *&v62.timescale;
  [v60 duration];
  sub_2150A5730();
  CMTimeMakeWithSeconds(&v62, v47, 600);
  v48 = v62.value;
  v49 = v62.epoch;
  v50 = *&v62.timescale;
  *(v0 + 4480) = v44;
  *(v0 + 4488) = v46;
  *(v0 + 4496) = v45;
  *(v0 + 4456) = v48;
  *(v0 + 4464) = v50;
  *(v0 + 4472) = v49;
  CMTimeRangeMake((v0 + 4336), (v0 + 4480), (v0 + 4456));
  v51 = sub_2150A3F10();
  v52 = sub_2150A5550();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_214D51000, v51, v52, "making speech analyzer sequences", v53, 2u);
    MEMORY[0x216064AF0](v53, -1, -1);
  }

  v54 = *(v0 + 3560);

  v55 = *(v54 + 16);
  *(v0 + 4176) = v55;
  if (!v55)
  {
    __break(1u);
    return MEMORY[0x282200920](v34, v35, v33, v36);
  }

  v56 = *(v0 + 3560);
  *(v0 + 4184) = *(v56 + 32);
  *(v0 + 4192) = *(v56 + 40);

  v57 = swift_task_alloc();
  *(v0 + 4200) = v57;
  *v57 = v0;
  v57[1] = sub_214F493BC;

  return sub_214F52BC8(v61, v0 + 4384);
}

uint64_t sub_214F493BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[526] = a1;
  v4[527] = a2;
  v4[528] = v2;

  if (v2)
  {
    v5 = sub_214F49714;
  }

  else
  {
    v5 = sub_214F49500;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_214F49500()
{
  if (v0[522] == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[513];
    v3 = v0[445];
    v0[529] = *(v3 + 48);
    v0[530] = *(v3 + 56);

    v4 = swift_task_alloc();
    v0[531] = v4;
    *v4 = v0;
    v4[1] = sub_214F495D0;

    sub_214F52BC8(v2, (v0 + 542));
  }
}

uint64_t sub_214F495D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[532] = a1;
  v4[533] = a2;
  v4[534] = v2;

  if (v2)
  {
    v5 = sub_214F49D78;
  }

  else
  {
    v5 = sub_214F499E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_214F49714()
{
  v1 = *(v0 + 4112);
  v2 = *(v0 + 4104);

  return MEMORY[0x282200920](v0 + 656, v0 + 3272, sub_214F497E4, v0 + 3712);
}

uint64_t sub_214F4983C()
{
  v1 = *(v0 + 4072);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3464, sub_214F498B0, v0 + 3808);
}

uint64_t sub_214F49908()
{
  v1 = *(v0 + 4096);
  v2 = *(v0 + 4080);

  sub_214D6AB7C(&unk_2150C2A38, v2);
  sub_214D6AB7C(&unk_2150C2A50, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_214F499E0()
{
  v1 = v0[521];
  v2 = v0[520];
  v3 = v0[519];
  v4 = v0[518];
  v5 = v0[493];
  v6 = v0[457];
  v7 = v0[451];
  sub_2150A50C0();
  v35 = sub_2150A5120();
  v33 = *(*(v35 - 8) + 56);
  (v33)(v5, 0, 1);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v2;
  v8[7] = v1;
  v8[8] = v7;
  v8[9] = v6;

  v9 = v7;
  v10 = v6;
  v0[535] = sub_215051880(0, 0, v5, &unk_2150C2A68, v8);
  v11 = sub_2150A3F10();
  v12 = sub_2150A5550();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_214D51000, v11, v12, "done making speech analyzer sequences", v13, 2u);
    MEMORY[0x216064AF0](v13, -1, -1);
  }

  v14 = sub_2150A3F10();
  v15 = sub_2150A5550();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_214D51000, v14, v15, "starting call transcription speech analyzer", v16, 2u);
    MEMORY[0x216064AF0](v16, -1, -1);
  }

  v17 = v0[532];
  v18 = v0[527];
  v19 = v0[526];
  v31 = v0[521];
  v32 = v0[533];
  v20 = v0[520];
  v21 = v0[518];
  v29 = v0[517];
  v30 = v0[519];
  v22 = v0[516];
  v23 = v0[493];
  v24 = v0[445];

  v33(v23, 1, 1, v35);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v19;
  v25[5] = v17;

  sub_215051880(0, 0, v23, &unk_2150C2A78, v25);

  v26 = swift_task_alloc();
  v0[536] = v26;
  v26[2] = v18;
  v26[3] = v21;
  v26[4] = v24;
  v26[5] = v22;
  v26[6] = v20;
  v26[7] = v32;
  v26[8] = v30;
  v26[9] = v29;
  v26[10] = v31;
  v27 = swift_task_alloc();
  v0[537] = v27;
  *v27 = v0;
  v27[1] = sub_214F4A064;

  return MEMORY[0x282200740]();
}

uint64_t sub_214F49D78()
{
  v1 = *(v0 + 4112);
  v2 = *(v0 + 4104);

  return MEMORY[0x282200920](v0 + 656, v0 + 3272, sub_214F49E68, v0 + 3904);
}

uint64_t sub_214F49EC0()
{
  v1 = *(v0 + 4072);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3464, sub_214F49F34, v0 + 4000);
}

uint64_t sub_214F49F8C()
{
  v1 = *(v0 + 4096);
  v2 = *(v0 + 4080);

  sub_214D6AB7C(&unk_2150C2A38, v2);
  sub_214D6AB7C(&unk_2150C2A50, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_214F4A064()
{
  *(*v1 + 4304) = v0;

  if (v0)
  {
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214F4A1BC, 0, 0);
  }
}

uint64_t sub_214F4A1BC()
{
  v47 = v0;
  v1 = v0[457];
  v2 = v0[451];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
  sub_2150A5190();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[359] = sub_214F544A8;
  v0[360] = v3;
  v0[355] = MEMORY[0x277D85DD0];
  v0[356] = 1107296256;
  v0[357] = sub_214F44018;
  v0[358] = &block_descriptor_61;
  v4 = _Block_copy(v0 + 355);
  v5 = v2;
  v6 = v1;

  [v5 performBlock_];
  _Block_release(v4);
  v7 = sub_2150A3F10();
  v8 = sub_2150A5550();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_214D51000, v7, v8, "finishing up call transcription", v9, 2u);
    MEMORY[0x216064AF0](v9, -1, -1);
  }

  v0[370] = &type metadata for TelephonyUtilitiesFeature;
  v0[371] = sub_214F544B0();
  v0[367] = "transcriptionEvaluationEnabled";
  v0[368] = 30;
  *(v0 + 2952) = 2;
  v10 = sub_2150A3BD0();
  __swift_destroy_boxed_opaque_existential_0(v0 + 367);
  if (v10)
  {
    v11 = v0[518];
    swift_beginAccess();
    v12 = *(v11 + 16);

    v13 = sub_2150A3F10();
    v14 = sub_2150A5550();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_214D51000, v13, v14, "Writing call transcript to disk for evaluation", v15, 2u);
      MEMORY[0x216064AF0](v15, -1, -1);
    }

    v16 = v0[524];
    v17 = v0[523];
    v18 = v0[519];
    v19 = v0[481];
    v20 = v0[475];
    v21 = v0[469];
    v22 = v0[463];
    v43 = v0[451];

    v23 = swift_allocObject();
    v23[2] = v12;
    v23[3] = v22;
    v23[4] = v21;
    v23[5] = v20;
    v23[6] = v19;
    v23[7] = v17;
    v23[8] = v16;
    v0[353] = sub_214F54504;
    v0[354] = v23;
    v0[349] = MEMORY[0x277D85DD0];
    v0[350] = 1107296256;
    v0[351] = sub_214F44018;
    v0[352] = &block_descriptor_71;
    v24 = _Block_copy(v0 + 349);

    [v43 performBlock_];
    _Block_release(v24);
    swift_beginAccess();
    v25 = *(v18 + 16);

    v26 = sub_2150A3F10();
    v27 = sub_2150A5550();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_214D51000, v26, v27, "Writing call transcript to disk for evaluation", v28, 2u);
      MEMORY[0x216064AF0](v28, -1, -1);
    }

    v29 = v0[530];
    v30 = v0[529];
    v31 = v0[481];
    v32 = v0[475];
    v33 = v0[469];
    v34 = v0[463];
    v35 = v0[451];

    v36 = swift_allocObject();
    v36[2] = v25;
    v36[3] = v34;
    v36[4] = v33;
    v36[5] = v32;
    v36[6] = v31;
    v36[7] = v30;
    v36[8] = v29;
    v0[347] = sub_214F5579C;
    v0[348] = v36;
    v0[343] = MEMORY[0x277D85DD0];
    v0[344] = 1107296256;
    v0[345] = sub_214F44018;
    v0[346] = &block_descriptor_78;
    v37 = _Block_copy(v0 + 343);

    [v35 performBlock_];
    _Block_release(v37);
  }

  v38 = v0[538];
  v39 = v0[518];
  swift_beginAccess();
  v40 = *(v39 + 16);
  swift_beginAccess();
  v46 = v40;

  sub_21506860C(v41);

  sub_214F503F8(&v46, sub_214F50A08, sub_214F505F4);
  if (v38)
  {
  }

  else
  {
    aBlock = v0[514];
    v44 = v0[513];

    v0[539] = v46;

    return MEMORY[0x282200920](v0 + 82, v0 + 409, sub_214F4A888, v0 + 452);
  }
}

uint64_t sub_214F4A8E0()
{
  v1 = *(v0 + 4072);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3464, sub_214F4A954, v0 + 3040);
}

uint64_t sub_214F4A9AC()
{

  v1 = *(v0 + 4312);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_214F4AAB0()
{
  v1 = *(v0 + 4072);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3464, sub_214F4AB24, v0 + 3472);
}

uint64_t sub_214F4AB7C()
{
  v1 = *(v0 + 4096);
  v2 = *(v0 + 4080);

  sub_214D6AB7C(&unk_2150C2A38, v2);
  sub_214D6AB7C(&unk_2150C2A50, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_214F4ACAC()
{

  sub_214D6AB7C(0, 0);
  sub_214D6AB7C(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F4AD54()
{
  v1 = v0[505];
  swift_willThrow();

  if (qword_27CA41470 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA41E38);
  v3 = sub_2150A3F10();
  v4 = sub_2150A5560();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_214D51000, v3, v4, "failed to get tracks from file", v5, 2u);
    MEMORY[0x216064AF0](v5, -1, -1);
  }

  v6 = v0[499];

  sub_215049A40();

  v7 = v0[1];
  v8 = MEMORY[0x277D84F90];

  return v7(v8);
}

uint64_t sub_214F4AE9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_214F4AEBC, 0, 0);
}

uint64_t sub_214F4AEBC()
{
  v1 = v0[20];
  v2 = *MEMORY[0x277CE5E48];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_214F4AFF0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E58, &qword_2150C2A00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21504A2F8;
  v0[13] = &block_descriptor_118;
  v0[14] = v3;
  [v1 loadTracksWithMediaType:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_214F4AFF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_214F557A4;
  }

  else
  {
    v2 = sub_214F4B100;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_214F4B100()
{
  v1 = v0[18];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x216062780](0, v0[18]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  v4 = v0[19];

  *v4 = v3;
  v5 = v0[1];

  v5();
}

uint64_t sub_214F4B1B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_214F4B1D0, 0, 0);
}

uint64_t sub_214F4B1D0()
{
  v1 = v0[20];
  v2 = *MEMORY[0x277CE5E48];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_214F4B304;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E58, &qword_2150C2A00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21504A2F8;
  v0[13] = &block_descriptor_115_0;
  v0[14] = v3;
  [v1 loadTracksWithMediaType:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_214F4B304()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_214F4B4C8;
  }

  else
  {
    v2 = sub_214F4B414;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_214F4B414()
{
  v1 = v0[18];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x216062780](1, v0[18]);
  }

  else
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 40);
  }

  v3 = v2;
  v4 = v0[19];

  *v4 = v3;
  v5 = v0[1];

  v5();
}

uint64_t sub_214F4B4C8()
{
  v1 = v0[21];
  v2 = v0[19];
  swift_willThrow();

  *v2 = 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_214F4B548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_214F4B5E0;

  return sub_214F54A84(a3);
}

uint64_t sub_214F4B5E0(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_214F4B6E0, 0, 0);
}

uint64_t sub_214F4B704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_214F4B79C;

  return sub_214F54A84(a3);
}

uint64_t sub_214F4B79C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_214F557A0, 0, 0);
}

uint64_t sub_214F4B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = a8;
  v8[36] = v13;
  v8[33] = a6;
  v8[34] = a7;
  v8[31] = a4;
  v8[32] = a5;
  v9 = sub_2150A5D40();
  v8[37] = v9;
  v8[38] = *(v9 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v10 = sub_2150A5D50();
  v8[41] = v10;
  v8[42] = *(v10 - 8);
  v8[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F4B9D4, 0, 0);
}

uint64_t sub_214F4B9D4()
{
  if (qword_27CA41470 != -1)
  {
    swift_once();
  }

  v1 = sub_2150A3F30();
  *(v0 + 352) = __swift_project_value_buffer(v1, qword_27CA41E38);
  v2 = sub_2150A3F10();
  v3 = sub_2150A5550();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_214D51000, v2, v3, "entering checkpoint task", v4, 2u);
    MEMORY[0x216064AF0](v4, -1, -1);
  }

  if (sub_2150A51A0())
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v7 = sub_2150A3F10();
    v8 = sub_2150A5550();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_214D51000, v7, v8, "called checkpoint task", v9, 2u);
      MEMORY[0x216064AF0](v9, -1, -1);
    }

    v10 = *(v0 + 248);

    if (*(*(v10 + 16) + 16) && *(*(*(v0 + 256) + 16) + 16))
    {
      v11 = sub_2150A3F10();
      v12 = sub_2150A5550();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_214D51000, v11, v12, "checkpointing", v13, 2u);
        MEMORY[0x216064AF0](v13, -1, -1);
      }

      v15 = *(v0 + 280);
      v14 = *(v0 + 288);
      v17 = *(v0 + 264);
      v16 = *(v0 + 272);
      v19 = *(v0 + 248);
      v18 = *(v0 + 256);

      v20 = *(v19 + 16);
      v21 = *(v18 + 16);
      v22 = *(v17 + 16);
      v23 = *(v16 + 16);
      v24 = swift_allocObject();
      v24[2] = v15;
      v24[3] = v14;
      v24[4] = v20;
      v24[5] = v21;
      v24[6] = v22;
      v24[7] = v23;
      v24[8] = v22;
      v24[9] = v23;
      *(v0 + 48) = sub_214F54988;
      *(v0 + 56) = v24;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_214F44018;
      *(v0 + 40) = &block_descriptor_100;
      v25 = _Block_copy((v0 + 16));

      v26 = v15;
      v27 = v14;

      [v26 performBlock_];
      _Block_release(v25);
    }

    v29 = *(v0 + 304);
    v28 = *(v0 + 312);
    v30 = *(v0 + 296);
    sub_2150A6410();
    *(v0 + 232) = xmmword_2150C29A0;
    *(v0 + 216) = 0;
    *(v0 + 208) = 0;
    *(v0 + 224) = 1;
    v31 = sub_214F549F0(&qword_27CA41ED8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_2150A63F0();
    sub_214F549F0(&qword_27CA41EE0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_2150A5D60();
    v32 = *(v29 + 8);
    *(v0 + 360) = v32;
    *(v0 + 368) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v28, v30);
    v33 = swift_task_alloc();
    *(v0 + 376) = v33;
    *v33 = v0;
    v33[1] = sub_214F4BF20;
    v35 = *(v0 + 320);
    v34 = *(v0 + 328);

    return MEMORY[0x2822008C8](v35, v0 + 208, v34, v31);
  }
}

uint64_t sub_214F4BF20()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    (*(v2 + 360))(*(v2 + 320), *(v2 + 296));
    v3 = sub_214F4C48C;
  }

  else
  {
    v5 = *(v2 + 336);
    v4 = *(v2 + 344);
    v6 = *(v2 + 328);
    (*(v2 + 360))(*(v2 + 320), *(v2 + 296));
    (*(v5 + 8))(v4, v6);
    v3 = sub_214F4C078;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_214F4C078()
{
  if (sub_2150A51A0())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = sub_2150A3F10();
    v4 = sub_2150A5550();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_214D51000, v3, v4, "called checkpoint task", v5, 2u);
      MEMORY[0x216064AF0](v5, -1, -1);
    }

    v6 = *(v0 + 248);

    if (*(*(v6 + 16) + 16) && *(*(*(v0 + 256) + 16) + 16))
    {
      v7 = sub_2150A3F10();
      v8 = sub_2150A5550();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_214D51000, v7, v8, "checkpointing", v9, 2u);
        MEMORY[0x216064AF0](v9, -1, -1);
      }

      v11 = *(v0 + 280);
      v10 = *(v0 + 288);
      v13 = *(v0 + 264);
      v12 = *(v0 + 272);
      v15 = *(v0 + 248);
      v14 = *(v0 + 256);

      v16 = *(v15 + 16);
      v17 = *(v14 + 16);
      v18 = *(v13 + 16);
      v19 = *(v12 + 16);
      v20 = swift_allocObject();
      v20[2] = v11;
      v20[3] = v10;
      v20[4] = v16;
      v20[5] = v17;
      v20[6] = v18;
      v20[7] = v19;
      v20[8] = v18;
      v20[9] = v19;
      *(v0 + 48) = sub_214F54988;
      *(v0 + 56) = v20;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_214F44018;
      *(v0 + 40) = &block_descriptor_100;
      v21 = _Block_copy((v0 + 16));

      v22 = v11;
      v23 = v10;

      [v22 performBlock_];
      _Block_release(v21);
    }

    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    v26 = *(v0 + 296);
    sub_2150A6410();
    *(v0 + 232) = xmmword_2150C29A0;
    *(v0 + 216) = 0;
    *(v0 + 208) = 0;
    *(v0 + 224) = 1;
    v27 = sub_214F549F0(&qword_27CA41ED8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_2150A63F0();
    sub_214F549F0(&qword_27CA41EE0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_2150A5D60();
    v28 = *(v25 + 8);
    *(v0 + 360) = v28;
    *(v0 + 368) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v24, v26);
    v29 = swift_task_alloc();
    *(v0 + 376) = v29;
    *v29 = v0;
    v29[1] = sub_214F4BF20;
    v31 = *(v0 + 320);
    v30 = *(v0 + 328);

    return MEMORY[0x2822008C8](v31, v0 + 208, v30, v27);
  }
}

uint64_t sub_214F4C48C()
{
  (*(v0[42] + 8))(v0[43], v0[41]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_214F4C528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_214F4C5C0;

  return MEMORY[0x28212BBF0]();
}

uint64_t sub_214F4C5C0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 32) = v6;
    *v6 = v3;
    v6[1] = sub_214F4C734;

    return MEMORY[0x28212BBF0]();
  }
}

uint64_t sub_214F4C734()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214F4C828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F4C8E4, 0, 0);
}

uint64_t sub_214F4C8E4()
{
  v1 = v0[12];
  v15 = v0[10];
  v16 = v0[11];
  v2 = v0[7];
  v13 = v0[8];
  v14 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = sub_2150A5120();
  v12 = *(*(v7 - 8) + 56);
  v12(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v3;
  v8[8] = v2;

  sub_214F4DCF8(v1, &unk_2150C2AA8, v8);
  sub_214F302D4(v1, &qword_27CA41E50, &qword_2150C3710);
  v12(v1, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v13;
  v9[5] = v14;
  v9[6] = v4;
  v9[7] = v15;
  v9[8] = v16;

  sub_214F4DCF8(v1, &unk_2150C2AB8, v9);
  sub_214F302D4(v1, &qword_27CA41E50, &qword_2150C3710);

  v10 = v0[1];

  return v10();
}

uint64_t sub_214F4CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = type metadata accessor for TranscriptViewModelSegment(0);
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = sub_2150A3340();
  v8[22] = swift_task_alloc();
  sub_2150A34D0();
  v8[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E78, &unk_2150C2AC0);
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E80, &unk_2150C90A0);
  v8[27] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E88, &unk_2150C2AD0);
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E90, &unk_2150C90B0);
  v8[31] = v12;
  v8[32] = *(v12 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v13 = sub_2150A33B0();
  v8[35] = v13;
  v8[36] = *(v13 - 8);
  v8[37] = swift_task_alloc();
  v14 = sub_2150A3400();
  v8[38] = v14;
  v8[39] = *(v14 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v15 = sub_2150A4220();
  v8[43] = v15;
  v8[44] = *(v15 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v16 = sub_2150A4190();
  v8[47] = v16;
  v8[48] = *(v16 - 8);
  v8[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E98, &unk_2150C2AE0);
  v8[50] = swift_task_alloc();
  v8[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA0, &unk_2150C90C0);
  v8[52] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA8, &unk_2150C2AF0);
  v8[53] = v17;
  v8[54] = *(v17 - 8);
  v8[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F4D02C, 0, 0);
}

uint64_t sub_214F4D02C()
{
  sub_2150A41B0();
  *(v0 + 448) = swift_getOpaqueTypeConformance2();
  sub_2150A5220();
  swift_beginAccess();
  swift_beginAccess();
  v1 = MEMORY[0x277CDCBA0];
  *(v0 + 560) = *MEMORY[0x277CDCBB8];
  *(v0 + 564) = *v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 456) = v3;
  *v3 = v0;
  v3[1] = sub_214F4D1A4;
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);

  return MEMORY[0x282200310](v5, 0, 0, v0 + 88, v4, AssociatedConformanceWitness);
}

uint64_t sub_214F4D1A4()
{

  if (v0)
  {
    v1 = sub_214F557BC;
  }

  else
  {
    v1 = sub_214F4D2B4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_214F4D2B4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 560);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  (*(v3 + 32))(*(v0 + 392), v1, v2);
  sub_2150A4150();
  v11 = *(v10 + 104);
  v11(v8, v6, v9);
  v12 = sub_2150A4210();
  v13 = *(v10 + 8);
  v13(v8, v9);
  v13(v7, v9);
  if ((v12 & 1) == 0)
  {
    v14 = *(v0 + 564);
    v15 = v11;
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 344);
    sub_2150A4150();
    v15(v17, v14, v18);
    v19 = sub_2150A4210();
    v13(v17, v18);
    v13(v16, v18);
    if ((v19 & 1) == 0)
    {
      (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
      goto LABEL_17;
    }
  }

  v20 = *(v0 + 112);
  if (!v20[2])
  {
    __break(1u);
    goto LABEL_29;
  }

  v21 = v20[5];
  v92 = v20[4];
  v22 = *(*(v0 + 120) + 16);

  v24 = MEMORY[0x216060D20](v23);
  if (!*(v24 + 16))
  {

    if (qword_27CA417C0 == -1)
    {
LABEL_12:
      v46 = sub_2150A3F30();
      __swift_project_value_buffer(v46, qword_27CA446F8);
      v47 = sub_2150A3F10();
      v48 = sub_2150A5560();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_214D51000, v47, v48, "got an empty result", v49, 2u);
        MEMORY[0x216064AF0](v49, -1, -1);
      }

      v45 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }

LABEL_29:
    swift_once();
    goto LABEL_12;
  }

  v93 = v21;
  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  v27 = *(v0 + 304);
  v28 = *(v0 + 312);
  v29 = *(v0 + 288);
  v30 = *(v0 + 296);
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);
  v91 = *(v0 + 264);
  v88 = *(v0 + 280);
  v89 = *(v0 + 248);
  v94 = *(v0 + 216);
  v95 = *(v0 + 200);
  v97 = *(v0 + 192);
  (*(v28 + 16))(v26, v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v27);

  (*(v28 + 32))(v25, v26, v27);
  sub_2150A33D0();
  sub_2150A4260();
  sub_214F549F0(&qword_27CA41EB0, MEMORY[0x277CDCCE0], MEMORY[0x277CDCCD8]);
  sub_2150A33C0();
  (*(v29 + 8))(v30, v88);
  (*(v32 + 16))(v91, v31, v89);
  sub_214F43BCC(&qword_27CA41EB8, &qword_27CA41E90, &unk_2150C90B0, MEMORY[0x277CC8BE0]);
  sub_2150A4D60();
  sub_214F43BCC(&qword_27CA41EC0, &qword_27CA41E88, &unk_2150C2AD0, MEMORY[0x277CC8BC8]);
  sub_2150A5850();
  v33 = *(v95 + 48);
  v34 = v33(v94, 1, v97);
  v35 = MEMORY[0x277D84F90];
  if (v34 != 1)
  {
    v90 = v33;
    do
    {
      v68 = *(v0 + 208);
      sub_214F548A8(*(v0 + 216), v68);
      if ((*(v68 + 48) & 1) == 0)
      {
        v69 = *(v0 + 208);
        v70 = *(v0 + 160);
        v96 = *(v0 + 152);
        v71 = *(v0 + 136);
        v73 = *(v69 + 32);
        v72 = *(v69 + 40);
        v74 = *(v69 + 8);
        v75 = *(v69 + 16);
        *(v0 + 464) = *v69;
        *(v0 + 472) = v74;
        *(v0 + 480) = v75;
        *(v0 + 496) = v73;
        *(v0 + 504) = v72;
        sub_2150A5730();
        v77 = v22 + v76;
        sub_2150A54E0();
        sub_2150A5730();
        v79 = v22 + v78 - v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EC8, &qword_2150CC050);
        sub_214F43BCC(&qword_27CA41ED0, &qword_27CA41EC8, &qword_2150CC050, MEMORY[0x277D83D30]);
        sub_2150A3430();
        sub_2150A3440();
        sub_2150A3330();
        sub_214F549F0(&qword_27CA42330, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
        v80 = sub_2150A4D20();
        v82 = v81;
        v83 = v71[10];
        v84 = (v70 + v71[9]);
        *(v70 + v83) = 2;
        _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
        v85 = (v70 + v71[5]);
        *v85 = v80;
        v85[1] = v82;
        *(v70 + v71[6]) = v77;
        *(v70 + v71[7]) = v79;
        *v84 = v92;
        v84[1] = v93;
        *(v70 + v83) = 2;
        *(v70 + v71[8]) = v77 + v79;
        sub_214F5456C(v70, v96);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_21505F724(0, v35[2] + 1, 1, v35);
        }

        v87 = v35[2];
        v86 = v35[3];
        if (v87 >= v86 >> 1)
        {
          v35 = sub_21505F724((v86 > 1), v87 + 1, 1, v35);
        }

        v62 = *(v0 + 312);
        v61 = *(v0 + 320);
        v63 = *(v0 + 304);
        v64 = *(v0 + 152);
        v65 = *(v0 + 144);
        sub_214F545D0(*(v0 + 160));
        (*(v62 + 8))(v61, v63);
        v35[2] = v87 + 1;
        sub_214F5462C(v64, v35 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v87);
        v33 = v90;
      }

      v66 = *(v0 + 216);
      v67 = *(v0 + 192);
      sub_214F302D4(*(v0 + 208), &qword_27CA41E78, &unk_2150C2AC0);
      sub_2150A5850();
    }

    while (v33(v66, 1, v67) != 1);
  }

  v98 = *(v0 + 336);
  v36 = *(v0 + 304);
  v37 = *(v0 + 312);
  v38 = *(v0 + 272);
  v39 = v35;
  v40 = *(v0 + 248);
  v41 = *(v0 + 256);
  v43 = *(v0 + 232);
  v42 = *(v0 + 240);
  v44 = *(v0 + 224);

  (*(v43 + 8))(v42, v44);
  (*(v41 + 8))(v38, v40);
  v45 = v39;
  (*(v37 + 8))(v98, v36);
LABEL_15:
  v51 = *(v0 + 384);
  v50 = *(v0 + 392);
  v52 = *(v0 + 376);
  v53 = *(v0 + 128);
  swift_beginAccess();
  sub_21506860C(v45);
  v54 = swift_endAccess();
  MEMORY[0x216060D30](v54);
  sub_2150A54E0();
  sub_2150A5730();
  v56 = v55;
  (*(v51 + 8))(v50, v52);
  *(v53 + 16) = v56;
LABEL_17:
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = swift_task_alloc();
  *(v0 + 456) = v58;
  *v58 = v0;
  v58[1] = sub_214F4D1A4;
  v59 = *(v0 + 424);
  v60 = *(v0 + 400);

  return MEMORY[0x282200310](v60, 0, 0, v0 + 88, v59, AssociatedConformanceWitness);
}

uint64_t sub_214F4DCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v19 - v9;
  sub_214F54918(a1, v19 - v9);
  v11 = sub_2150A5120();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_214F302D4(v10, &qword_27CA41E50, &qword_2150C3710);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_2150A5010();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2150A5110();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_214F4DED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = type metadata accessor for TranscriptViewModelSegment(0);
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = sub_2150A3340();
  v8[22] = swift_task_alloc();
  sub_2150A34D0();
  v8[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E78, &unk_2150C2AC0);
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E80, &unk_2150C90A0);
  v8[27] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E88, &unk_2150C2AD0);
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E90, &unk_2150C90B0);
  v8[31] = v12;
  v8[32] = *(v12 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v13 = sub_2150A33B0();
  v8[35] = v13;
  v8[36] = *(v13 - 8);
  v8[37] = swift_task_alloc();
  v14 = sub_2150A3400();
  v8[38] = v14;
  v8[39] = *(v14 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v15 = sub_2150A4220();
  v8[43] = v15;
  v8[44] = *(v15 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v16 = sub_2150A4190();
  v8[47] = v16;
  v8[48] = *(v16 - 8);
  v8[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E98, &unk_2150C2AE0);
  v8[50] = swift_task_alloc();
  v8[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA0, &unk_2150C90C0);
  v8[52] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA8, &unk_2150C2AF0);
  v8[53] = v17;
  v8[54] = *(v17 - 8);
  v8[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F4E3F4, 0, 0);
}

uint64_t sub_214F4E3F4()
{
  sub_2150A41B0();
  *(v0 + 448) = swift_getOpaqueTypeConformance2();
  sub_2150A5220();
  swift_beginAccess();
  swift_beginAccess();
  v1 = MEMORY[0x277CDCBA0];
  *(v0 + 560) = *MEMORY[0x277CDCBB8];
  *(v0 + 564) = *v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 456) = v3;
  *v3 = v0;
  v3[1] = sub_214F4E56C;
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);

  return MEMORY[0x282200310](v5, 0, 0, v0 + 88, v4, AssociatedConformanceWitness);
}

uint64_t sub_214F4E56C()
{

  if (v0)
  {
    v1 = sub_214F4F0C4;
  }

  else
  {
    v1 = sub_214F4E67C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_214F4E67C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 560);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  (*(v3 + 32))(*(v0 + 392), v1, v2);
  sub_2150A4150();
  v11 = *(v10 + 104);
  v11(v8, v6, v9);
  v12 = sub_2150A4210();
  v13 = *(v10 + 8);
  v13(v8, v9);
  v13(v7, v9);
  if ((v12 & 1) == 0)
  {
    v14 = *(v0 + 564);
    v15 = v11;
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 344);
    sub_2150A4150();
    v15(v17, v14, v18);
    v19 = sub_2150A4210();
    v13(v17, v18);
    v13(v16, v18);
    if ((v19 & 1) == 0)
    {
      (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
      goto LABEL_17;
    }
  }

  v20 = *(v0 + 112);
  if (v20[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  v21 = v20[7];
  v92 = v20[6];
  v22 = *(*(v0 + 120) + 16);

  v24 = MEMORY[0x216060D20](v23);
  if (!*(v24 + 16))
  {

    if (qword_27CA417C0 == -1)
    {
LABEL_12:
      v46 = sub_2150A3F30();
      __swift_project_value_buffer(v46, qword_27CA446F8);
      v47 = sub_2150A3F10();
      v48 = sub_2150A5560();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_214D51000, v47, v48, "got an empty result", v49, 2u);
        MEMORY[0x216064AF0](v49, -1, -1);
      }

      v45 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }

LABEL_29:
    swift_once();
    goto LABEL_12;
  }

  v93 = v21;
  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  v27 = *(v0 + 304);
  v28 = *(v0 + 312);
  v29 = *(v0 + 288);
  v30 = *(v0 + 296);
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);
  v91 = *(v0 + 264);
  v88 = *(v0 + 280);
  v89 = *(v0 + 248);
  v94 = *(v0 + 216);
  v95 = *(v0 + 200);
  v97 = *(v0 + 192);
  (*(v28 + 16))(v26, v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v27);

  (*(v28 + 32))(v25, v26, v27);
  sub_2150A33D0();
  sub_2150A4260();
  sub_214F549F0(&qword_27CA41EB0, MEMORY[0x277CDCCE0], MEMORY[0x277CDCCD8]);
  sub_2150A33C0();
  (*(v29 + 8))(v30, v88);
  (*(v32 + 16))(v91, v31, v89);
  sub_214F43BCC(&qword_27CA41EB8, &qword_27CA41E90, &unk_2150C90B0, MEMORY[0x277CC8BE0]);
  sub_2150A4D60();
  sub_214F43BCC(&qword_27CA41EC0, &qword_27CA41E88, &unk_2150C2AD0, MEMORY[0x277CC8BC8]);
  sub_2150A5850();
  v33 = *(v95 + 48);
  v34 = v33(v94, 1, v97);
  v35 = MEMORY[0x277D84F90];
  if (v34 != 1)
  {
    v90 = v33;
    do
    {
      v68 = *(v0 + 208);
      sub_214F548A8(*(v0 + 216), v68);
      if ((*(v68 + 48) & 1) == 0)
      {
        v69 = *(v0 + 208);
        v70 = *(v0 + 160);
        v96 = *(v0 + 152);
        v71 = *(v0 + 136);
        v73 = *(v69 + 32);
        v72 = *(v69 + 40);
        v74 = *(v69 + 8);
        v75 = *(v69 + 16);
        *(v0 + 464) = *v69;
        *(v0 + 472) = v74;
        *(v0 + 480) = v75;
        *(v0 + 496) = v73;
        *(v0 + 504) = v72;
        sub_2150A5730();
        v77 = v22 + v76;
        sub_2150A54E0();
        sub_2150A5730();
        v79 = v22 + v78 - v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EC8, &qword_2150CC050);
        sub_214F43BCC(&qword_27CA41ED0, &qword_27CA41EC8, &qword_2150CC050, MEMORY[0x277D83D30]);
        sub_2150A3430();
        sub_2150A3440();
        sub_2150A3330();
        sub_214F549F0(&qword_27CA42330, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
        v80 = sub_2150A4D20();
        v82 = v81;
        v83 = v71[10];
        v84 = (v70 + v71[9]);
        *(v70 + v83) = 2;
        _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
        v85 = (v70 + v71[5]);
        *v85 = v80;
        v85[1] = v82;
        *(v70 + v71[6]) = v77;
        *(v70 + v71[7]) = v79;
        *v84 = v92;
        v84[1] = v93;
        *(v70 + v83) = 2;
        *(v70 + v71[8]) = v77 + v79;
        sub_214F5456C(v70, v96);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_21505F724(0, v35[2] + 1, 1, v35);
        }

        v87 = v35[2];
        v86 = v35[3];
        if (v87 >= v86 >> 1)
        {
          v35 = sub_21505F724((v86 > 1), v87 + 1, 1, v35);
        }

        v62 = *(v0 + 312);
        v61 = *(v0 + 320);
        v63 = *(v0 + 304);
        v64 = *(v0 + 152);
        v65 = *(v0 + 144);
        sub_214F545D0(*(v0 + 160));
        (*(v62 + 8))(v61, v63);
        v35[2] = v87 + 1;
        sub_214F5462C(v64, v35 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v87);
        v33 = v90;
      }

      v66 = *(v0 + 216);
      v67 = *(v0 + 192);
      sub_214F302D4(*(v0 + 208), &qword_27CA41E78, &unk_2150C2AC0);
      sub_2150A5850();
    }

    while (v33(v66, 1, v67) != 1);
  }

  v98 = *(v0 + 336);
  v36 = *(v0 + 304);
  v37 = *(v0 + 312);
  v38 = *(v0 + 272);
  v39 = v35;
  v40 = *(v0 + 248);
  v41 = *(v0 + 256);
  v43 = *(v0 + 232);
  v42 = *(v0 + 240);
  v44 = *(v0 + 224);

  (*(v43 + 8))(v42, v44);
  (*(v41 + 8))(v38, v40);
  v45 = v39;
  (*(v37 + 8))(v98, v36);
LABEL_15:
  v51 = *(v0 + 384);
  v50 = *(v0 + 392);
  v52 = *(v0 + 376);
  v53 = *(v0 + 128);
  swift_beginAccess();
  sub_21506860C(v45);
  v54 = swift_endAccess();
  MEMORY[0x216060D30](v54);
  sub_2150A54E0();
  sub_2150A5730();
  v56 = v55;
  (*(v51 + 8))(v50, v52);
  *(v53 + 16) = v56;
LABEL_17:
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = swift_task_alloc();
  *(v0 + 456) = v58;
  *v58 = v0;
  v58[1] = sub_214F4E56C;
  v59 = *(v0 + 424);
  v60 = *(v0 + 400);

  return MEMORY[0x282200310](v60, 0, 0, v0 + 88, v59, AssociatedConformanceWitness);
}

uint64_t sub_214F4F0C4()
{
  (*(v0[54] + 8))(v0[55], v0[53]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_214F4F240(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_214F4F264, 0, 0);
}

uint64_t sub_214F4F264()
{
  v1 = *(v0 + 24);
  sub_2150A41F0();
  v2 = *(v0 + 8);

  return v2();
}

void sub_214F4F2CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v125 = a7;
  v119 = a6;
  v123 = a2;
  v124 = a4;
  v10 = sub_2150A4B20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2150A3640();
  v137 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v15);
  v128 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2150A3750();
  v130 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v122 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v120 = &v115 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v133 = &v115 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v134 = &v115 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v127 = &v115 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v139 = &v115 - v34;
  v138 = type metadata accessor for TranscriptViewModelSegment(0);
  v35 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v36);
  v38 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = a1;

  sub_214F503F8(&v141, sub_214F5125C, sub_214F50800);
  v131 = a3;
  v132 = a5;
  v140 = v17;
  v116 = v14;
  v117 = v11;
  v118 = v10;
  v121 = 0;
  v39 = v141;
  v40 = *(v141 + 16);
  if (v40)
  {
    v141 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v40, 0);
    v41 = v141;
    v42 = *(v35 + 80);
    v136 = v39;
    v43 = v39 + ((v42 + 32) & ~v42);
    v44 = *(v35 + 72);
    v45 = v138;
    do
    {
      sub_214F5456C(v43, v38);
      v46 = &v38[*(v45 + 20)];
      v47 = *v46;
      v48 = *(v46 + 1);

      sub_214F545D0(v38);
      v141 = v41;
      v50 = *(v41 + 16);
      v49 = *(v41 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_214F86A20((v49 > 1), v50 + 1, 1);
        v45 = v138;
        v41 = v141;
      }

      *(v41 + 16) = v50 + 1;
      v51 = v41 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v48;
      v43 += v44;
      --v40;
    }

    while (v40);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v52 = *(v41 + 16);
  v53 = 0xE000000000000000;
  if (!v52)
  {
    v59 = 0;
    v58 = 0xE000000000000000;
LABEL_18:

    v60 = v133;
    sub_2150A36A0();
    v141 = 0xD000000000000020;
    v142 = 0x80000002150E2440;
    LODWORD(v136) = *MEMORY[0x277CC91D8];
    v61 = v137;
    v63 = v137 + 104;
    v62 = *(v137 + 104);
    v65 = v128;
    v64 = v129;
    v62(v128);
    v126 = v62;
    v138 = sub_214D6E6C4();
    sub_2150A3740();
    v135 = *(v61 + 8);
    (v135)(v65, v64);
    v67 = (v130 + 8);
    v66 = *(v130 + 8);
    v66(v60, v140);
    v141 = v123;
    v142 = v131;
    (v62)(v65, v136, v64);
    v68 = v127;
    v69 = v134;
    sub_2150A3740();
    (v135)(v65, v64);
    v66(v69, v140);
    v141 = v124;
    v142 = v132;
    v115 = v63;
    (v126)(v65, v136, v64);
    sub_2150A3740();
    v137 = v61 + 8;
    (v135)(v65, v64);
    v133 = v66;
    v134 = v67;
    v66(v68, v140);
    v70 = objc_opt_self();
    v71 = [v70 defaultManager];
    v72 = swift_slowAlloc();
    sub_2150A3700();
    v73 = sub_2150A4A90();

    LODWORD(v69) = [v71 fileExistsAtPath:v73 isDirectory:v72];

    v74 = &OBJC_PROTOCOL___ICLegacyContext;
    if (v69)
    {
      v75 = *v72;

      v76 = v125;
      if (v75)
      {
        v53 = v121;
        goto LABEL_25;
      }
    }

    else
    {

      v76 = v125;
    }

    v77 = [v70 defaultManager];
    v78 = v139;
    v53 = v121;
    NSFileManager.createDirectory(at:withIntermediateDirectories:)(v139, 1);
    if (v53)
    {
      (v133)(v78, v140);

      goto LABEL_32;
    }

LABEL_25:
    v141 = v119;
    v142 = v76;
    v80 = v128;
    v79 = v129;
    (v126)(v128, v136, v129);
    v81 = v127;
    sub_2150A3740();
    (v135)(v80, v79);
    v82 = v120;
    sub_2150A36D0();
    v83 = v140;
    (v133)(v81, v140);
    v84 = v122;
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v85 = sub_2150A3F30();
    __swift_project_value_buffer(v85, qword_27CA41E38);
    (*(v130 + 16))(v84, v82, v83);
    v86 = v83;
    v87 = v131;

    v88 = v132;

    v89 = sub_2150A3F10();
    v90 = sub_2150A5550();

    LODWORD(v137) = v90;
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v141 = v136;
      *v91 = 136315906;
      sub_214F549F0(&qword_280C24468, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v135 = v89;
      v92 = v122;
      v93 = sub_2150A6100();
      v95 = v94;
      (v133)(v92, v86);
      v96 = sub_214F7723C(v93, v95, &v141);
      v97 = v139;

      *(v91 + 4) = v96;
      *(v91 + 12) = 2080;
      *(v91 + 14) = sub_214F7723C(v123, v87, &v141);
      *(v91 + 22) = 2080;
      *(v91 + 24) = sub_214F7723C(v124, v88, &v141);
      *(v91 + 32) = 2080;
      *(v91 + 34) = sub_214F7723C(v119, v125, &v141);
      v98 = v135;
      _os_log_impl(&dword_214D51000, v135, v137, "Writing offline transcript to %s for callID: %s recordingID: %s speaker: %s", v91, 0x2Au);
      v99 = v136;
      swift_arrayDestroy();
      v82 = v120;
      MEMORY[0x216064AF0](v99, -1, -1);
      MEMORY[0x216064AF0](v91, -1, -1);

      v100 = v118;
      v101 = v117;
      v102 = v116;
    }

    else
    {

      (v133)(v122, v86);
      v100 = v118;
      v101 = v117;
      v102 = v116;
      v97 = v139;
    }

    v141 = v59;
    v142 = v58;
    sub_2150A4B10();
    sub_2150A58E0();
    if (!v53)
    {
      (*(v101 + 8))(v102, v100);
      v113 = v140;
      v114 = v133;
      (v133)(v82, v140);
      v114(v97, v113);

      return;
    }

    (*(v101 + 8))(v102, v100);
    v103 = v140;
    v104 = v133;
    (v133)(v82, v140);
    v104(v97, v103);

    v74 = &OBJC_PROTOCOL___ICLegacyContext;
LABEL_32:
    if (v74[15].inst_props == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  v54 = 0;
  v55 = 0;
  v56 = (v41 + 40);
  v57 = 0xE000000000000000;
  while (v55 < *(v41 + 16))
  {
    v59 = *(v56 - 1);
    v58 = *v56;
    if (!v54 && v57 == 0xE000000000000000 || (sub_2150A6270() & 1) != 0)
    {
    }

    else
    {
      v141 = v54;
      v142 = v57;

      MEMORY[0x2160617E0](32, 0xE100000000000000);

      MEMORY[0x2160617E0](v59, v58);

      v59 = v141;
      v58 = v142;
    }

    ++v55;
    v56 += 2;
    v57 = v58;
    v54 = v59;
    if (v52 == v55)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_33:
  v105 = sub_2150A3F30();
  __swift_project_value_buffer(v105, qword_27CA41E38);
  v106 = v53;
  v107 = sub_2150A3F10();
  v108 = sub_2150A5560();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v109 = 138412290;
    v111 = v53;
    v112 = _swift_stdlib_bridgeErrorToNSError();
    *(v109 + 4) = v112;
    *v110 = v112;
    _os_log_impl(&dword_214D51000, v107, v108, "Error writing transcript text to URL %@", v109, 0xCu);
    sub_214F302D4(v110, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v110, -1, -1);
    MEMORY[0x216064AF0](v109, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_214F50074(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_214F500D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;

  swift_beginAccess();
  v6 = *(a3 + 16);
  *(a3 + 16) = 0;
}

__n128 sub_214F5013C@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t sub_214F50148(uint64_t *a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = [v6 copyNextSampleBuffer];
  if (v8)
  {
    v9 = v8;
    v10 = v5;
    v11 = v4;
    v12 = v7;
    v13 = v6;
    v14 = sub_214F554EC(v9, v11);
  }

  else
  {
    v14 = 0;
  }

  *a1 = v14;
  v15 = *(v2 + 8);

  return v15();
}

uint64_t sub_214F50230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_2150A5010();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](sub_214F502C0, v5, v7);
}

uint64_t sub_214F502C0()
{
  v1 = *(v0 + 24);
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = [v4 copyNextSampleBuffer];
  if (v6)
  {
    v7 = v6;
    v8 = v2;
    v9 = v3;
    v10 = v5;
    v11 = v4;
    v12 = sub_214F554EC(v7, v9);
  }

  else
  {
    v12 = 0;
  }

  **(v0 + 16) = v12;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_214F503A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_214F503F8(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for TranscriptViewModelSegment(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_214F422A4(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_214F504B8(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_214F504B8(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_2150A60E0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TranscriptViewModelSegment(0);
        v10 = sub_2150A4F50();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for TranscriptViewModelSegment(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_214F505F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TranscriptViewModelSegment(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v32 - v15;
  result = MEMORY[0x28223BE20](v14, v17);
  v21 = &v32 - v20;
  v34 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v33 = v23;
    v27 = v22 + v23 * a3;
LABEL_5:
    v38 = a3;
    v35 = v27;
    v36 = v26;
    v28 = v26;
    v37 = v24;
    while (1)
    {
      sub_214F5456C(v27, v21);
      sub_214F5456C(v24, v16);
      v29 = *&v21[*(v8 + 32)];
      v30 = *&v16[*(v8 + 24)];
      sub_214F545D0(v16);
      result = sub_214F545D0(v21);
      if (v29 >= v30)
      {
LABEL_4:
        a3 = v38 + 1;
        v24 = v37 + v33;
        v26 = v36 - 1;
        v27 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      sub_214F5462C(v27, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_214F5462C(v12, v24);
      v24 += v25;
      v27 += v25;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214F50800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TranscriptViewModelSegment(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v33 - v15;
  result = MEMORY[0x28223BE20](v14, v17);
  v21 = &v33 - v20;
  v35 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v34 = v23;
    v27 = v22 + v23 * a3;
LABEL_5:
    v39 = a3;
    v36 = v27;
    v37 = v26;
    v28 = v26;
    v38 = v24;
    while (1)
    {
      sub_214F5456C(v27, v21);
      sub_214F5456C(v24, v16);
      v29 = *(v8 + 24);
      v30 = *&v21[v29];
      v31 = *&v16[v29];
      sub_214F545D0(v16);
      result = sub_214F545D0(v21);
      if (v30 >= v31)
      {
LABEL_4:
        a3 = v39 + 1;
        v24 = v38 + v34;
        v26 = v37 - 1;
        v27 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      sub_214F5462C(v27, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_214F5462C(v12, v24);
      v24 += v25;
      v27 += v25;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214F50A08(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for TranscriptViewModelSegment(0);
  v111 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v105 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v114 = &v99 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v99 - v18;
  result = MEMORY[0x28223BE20](v17, v20);
  v23 = &v99 - v22;
  v113 = a3;
  v24 = *(a3 + 8);
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    a3 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_214F41D00(a3);
    }

    v115 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v113)
      {
        v95 = *(result + 16 * a3);
        v96 = result;
        v97 = *(result + 16 * (a3 - 1) + 40);
        sub_214F51AAC(*v113 + *(v111 + 72) * v95, *v113 + *(v111 + 72) * *(result + 16 * (a3 - 1) + 32), *v113 + *(v111 + 72) * v97, v5);
        if (v6)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_214F41D00(v96);
        }

        if (a3 - 2 >= *(v96 + 2))
        {
          goto LABEL_122;
        }

        v98 = &v96[16 * a3];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_214F41C74(a3 - 1);
        result = v115;
        a3 = *(v115 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v101 = a4;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v106 = v26;
    v103 = v27;
    if (v28 >= v24)
    {
      v24 = v28;
    }

    else
    {
      a3 = *v113;
      v29 = *(v111 + 72);
      v30 = v27;
      v5 = *v113 + v29 * v28;
      sub_214F5456C(v5, v23);
      sub_214F5456C(a3 + v29 * v30, v19);
      v31 = *&v23[*(v9 + 32)];
      v32 = *&v19[*(v9 + 24)];
      sub_214F545D0(v19);
      result = sub_214F545D0(v23);
      v33 = v30 + 2;
      v112 = v29;
      v34 = a3 + v29 * v33;
      while (v24 != v33)
      {
        a3 = v31 < v32;
        sub_214F5456C(v34, v23);
        sub_214F5456C(v5, v19);
        v35 = *&v23[*(v9 + 32)];
        v36 = *&v19[*(v9 + 24)];
        sub_214F545D0(v19);
        result = sub_214F545D0(v23);
        ++v33;
        v34 += v112;
        v5 += v112;
        if (v31 < v32 == v35 >= v36)
        {
          v24 = v33 - 1;
          break;
        }
      }

      a4 = v101;
      v27 = v103;
      if (v31 < v32)
      {
        if (v24 < v103)
        {
          goto LABEL_125;
        }

        if (v103 < v24)
        {
          v100 = v6;
          v37 = v112 * (v24 - 1);
          v38 = v24 * v112;
          v110 = v24;
          v39 = v103;
          v5 = v103 * v112;
          do
          {
            if (v39 != --v24)
            {
              v109 = v24;
              a3 = *v113;
              if (!*v113)
              {
                goto LABEL_131;
              }

              sub_214F5462C(a3 + v5, v105);
              if (v5 < v37 || a3 + v5 >= a3 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
                v24 = v109;
              }

              else
              {
                v24 = v109;
                if (v5 != v37)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_214F5462C(v105, a3 + v37);
            }

            ++v39;
            v37 -= v112;
            v38 -= v112;
            v5 += v112;
          }

          while (v39 < v24);
          v6 = v100;
          a4 = v101;
          v27 = v103;
          v24 = v110;
        }
      }
    }

    v40 = v113[1];
    if (v24 < v40)
    {
      if (__OFSUB__(v24, v27))
      {
        goto LABEL_124;
      }

      if (v24 - v27 < a4)
      {
        if (__OFADD__(v27, a4))
        {
          goto LABEL_126;
        }

        if (v27 + a4 >= v40)
        {
          v41 = v113[1];
        }

        else
        {
          v41 = v27 + a4;
        }

        if (v41 < v27)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v24 != v41)
        {
          break;
        }
      }
    }

    v42 = v24;
    if (v24 < v27)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v26 = v106;
    }

    else
    {
      result = sub_21505F5DC(0, *(v106 + 2) + 1, 1, v106);
      v26 = result;
    }

    a3 = *(v26 + 2);
    v43 = *(v26 + 3);
    v5 = a3 + 1;
    if (a3 >= v43 >> 1)
    {
      result = sub_21505F5DC((v43 > 1), a3 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v5;
    v44 = &v26[16 * a3];
    *(v44 + 4) = v103;
    *(v44 + 5) = v42;
    v112 = *v102;
    if (!v112)
    {
      goto LABEL_133;
    }

    v107 = v42;
    if (a3)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v26 + 4);
          v47 = *(v26 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v26[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v26[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v26[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v26[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v113)
        {
          goto LABEL_130;
        }

        v83 = v26;
        v84 = *&v26[16 * a3 + 32];
        v5 = *&v26[16 * v45 + 40];
        sub_214F51AAC(*v113 + *(v111 + 72) * v84, *v113 + *(v111 + 72) * *&v26[16 * v45 + 32], *v113 + *(v111 + 72) * v5, v112);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_214F41D00(v83);
        }

        if (a3 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a3];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v115 = v83;
        result = sub_214F41C74(v45);
        v26 = v115;
        v5 = *(v115 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v26[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v26[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v26[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v24 = v113[1];
    v25 = v107;
    a4 = v101;
    if (v107 >= v24)
    {
      goto LABEL_95;
    }
  }

  v100 = v6;
  a3 = *v113;
  v86 = *(v111 + 72);
  v87 = *v113 + v86 * (v24 - 1);
  v88 = -v86;
  v89 = v27 - v24;
  v104 = v86;
  v5 = a3 + v24 * v86;
  v107 = v41;
LABEL_85:
  v109 = v89;
  v110 = v24;
  v108 = v5;
  v112 = v87;
  v90 = v87;
  while (1)
  {
    sub_214F5456C(v5, v23);
    sub_214F5456C(v90, v19);
    v91 = *&v23[*(v9 + 32)];
    v92 = *&v19[*(v9 + 24)];
    sub_214F545D0(v19);
    result = sub_214F545D0(v23);
    if (v91 >= v92)
    {
LABEL_84:
      v24 = v110 + 1;
      v87 = v112 + v104;
      v89 = v109 - 1;
      v42 = v107;
      v5 = v108 + v104;
      if (v110 + 1 != v107)
      {
        goto LABEL_85;
      }

      v6 = v100;
      if (v107 < v103)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!a3)
    {
      break;
    }

    v93 = v114;
    sub_214F5462C(v5, v114);
    swift_arrayInitWithTakeFrontToBack();
    sub_214F5462C(v93, v90);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_214F5125C(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v114 = a1;
  v9 = type metadata accessor for TranscriptViewModelSegment(0);
  v121 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v116 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v124 = &v109 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v109 - v18;
  result = MEMORY[0x28223BE20](v17, v20);
  v23 = &v109 - v22;
  v123 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v114;
    if (!*v114)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_214F41D00(v26);
      v26 = result;
    }

    v126 = v26;
    v105 = *(v26 + 2);
    if (v105 >= 2)
    {
      while (*v123)
      {
        v106 = *&v26[16 * v105];
        v107 = *&v26[16 * v105 + 24];
        sub_214F51F68(*v123 + *(v121 + 72) * v106, *v123 + *(v121 + 72) * *&v26[16 * v105 + 16], *v123 + *(v121 + 72) * v107, v5);
        if (v6)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_214F41D00(v26);
        }

        if (v105 - 2 >= *(v26 + 2))
        {
          goto LABEL_120;
        }

        v108 = &v26[16 * v105];
        *v108 = v106;
        *(v108 + 1) = v107;
        v126 = v26;
        result = sub_214F41C74(v105 - 1);
        v26 = v126;
        v105 = *(v126 + 2);
        if (v105 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v125 = result;
  v112 = a4;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if (v28 >= v24)
    {
      v24 = v28;
    }

    else
    {
      v29 = *v123;
      v30 = *(v121 + 72);
      v5 = *v123 + v30 * v28;
      sub_214F5456C(v5, v23);
      sub_214F5456C(v29 + v30 * v27, v19);
      v31 = *(v125 + 24);
      v32 = *&v23[v31];
      v33 = *&v19[v31];
      sub_214F545D0(v19);
      result = sub_214F545D0(v23);
      v113 = v27;
      v34 = v27 + 2;
      v122 = v30;
      v35 = v29 + v30 * v34;
      while (v24 != v34)
      {
        sub_214F5456C(v35, v23);
        sub_214F5456C(v5, v19);
        v36 = *(v125 + 24);
        v37 = *&v23[v36];
        v38 = *&v19[v36];
        sub_214F545D0(v19);
        result = sub_214F545D0(v23);
        ++v34;
        v35 += v122;
        v5 += v122;
        if (v32 < v33 == v37 >= v38)
        {
          v24 = v34 - 1;
          break;
        }
      }

      v27 = v113;
      if (v32 < v33)
      {
        if (v24 < v113)
        {
          goto LABEL_123;
        }

        if (v113 < v24)
        {
          v110 = v26;
          v111 = v6;
          v39 = v122 * (v24 - 1);
          v40 = v24 * v122;
          v120 = v24;
          v41 = v24;
          v42 = v113;
          v43 = v113 * v122;
          do
          {
            if (v42 != --v41)
            {
              v5 = *v123;
              if (!*v123)
              {
                goto LABEL_129;
              }

              sub_214F5462C(v5 + v43, v116);
              if (v43 < v39 || v5 + v43 >= v5 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_214F5462C(v116, v5 + v39);
            }

            ++v42;
            v39 -= v122;
            v40 -= v122;
            v43 += v122;
          }

          while (v42 < v41);
          v26 = v110;
          v6 = v111;
          v27 = v113;
          v24 = v120;
        }
      }
    }

    v44 = v123[1];
    if (v24 < v44)
    {
      if (__OFSUB__(v24, v27))
      {
        goto LABEL_122;
      }

      if (v24 - v27 < v112)
      {
        if (__OFADD__(v27, v112))
        {
          goto LABEL_124;
        }

        if (v27 + v112 >= v44)
        {
          v45 = v123[1];
        }

        else
        {
          v45 = v27 + v112;
        }

        if (v45 < v27)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v24 != v45)
        {
          break;
        }
      }
    }

    v46 = v24;
    if (v24 < v27)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F5DC(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v48 = *(v26 + 2);
    v47 = *(v26 + 3);
    v5 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_21505F5DC((v47 > 1), v48 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v5;
    v49 = &v26[16 * v48];
    *(v49 + 4) = v27;
    *(v49 + 5) = v46;
    v50 = *v114;
    if (!*v114)
    {
      goto LABEL_131;
    }

    v117 = v46;
    if (v48)
    {
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v26 + 4);
          v53 = *(v26 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_110;
          }

          v68 = &v26[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_113;
          }

          v74 = &v26[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_117;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v26[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_112;
        }

        v81 = &v26[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_115;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        v89 = v51 - 1;
        if (v51 - 1 >= v5)
        {
          __break(1u);
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
          goto LABEL_125;
        }

        if (!*v123)
        {
          goto LABEL_128;
        }

        v90 = *&v26[16 * v89 + 32];
        v5 = *&v26[16 * v51 + 40];
        sub_214F51F68(*v123 + *(v121 + 72) * v90, *v123 + *(v121 + 72) * *&v26[16 * v51 + 32], *v123 + *(v121 + 72) * v5, v50);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_214F41D00(v26);
        }

        if (v89 >= *(v26 + 2))
        {
          goto LABEL_107;
        }

        v91 = &v26[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        v126 = v26;
        result = sub_214F41C74(v51);
        v26 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v26[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_108;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_109;
      }

      v63 = &v26[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_111;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_114;
      }

      if (v67 >= v59)
      {
        v85 = &v26[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v24 = v123[1];
    v25 = v117;
    if (v117 >= v24)
    {
      goto LABEL_94;
    }
  }

  v110 = v26;
  v111 = v6;
  v92 = *v123;
  v93 = *(v121 + 72);
  v94 = *v123 + v93 * (v24 - 1);
  v95 = v27;
  v96 = -v93;
  v113 = v95;
  v97 = v95 - v24;
  v115 = v93;
  v5 = v92 + v24 * v93;
  v117 = v45;
LABEL_85:
  v119 = v97;
  v120 = v24;
  v118 = v5;
  v122 = v94;
  v98 = v94;
  v99 = v125;
  while (1)
  {
    sub_214F5456C(v5, v23);
    sub_214F5456C(v98, v19);
    v100 = *(v99 + 24);
    v101 = *&v23[v100];
    v102 = *&v19[v100];
    sub_214F545D0(v19);
    result = sub_214F545D0(v23);
    if (v101 >= v102)
    {
LABEL_84:
      v24 = v120 + 1;
      v94 = v122 + v115;
      v97 = v119 - 1;
      v46 = v117;
      v5 = v118 + v115;
      if (v120 + 1 != v117)
      {
        goto LABEL_85;
      }

      v26 = v110;
      v6 = v111;
      v27 = v113;
      if (v117 < v113)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v92)
    {
      break;
    }

    v103 = v124;
    sub_214F5462C(v5, v124);
    v99 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_214F5462C(v103, v98);
    v98 += v96;
    v5 += v96;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_214F51AAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v7 = type metadata accessor for TranscriptViewModelSegment(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v47 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_58;
  }

  v16 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_59;
  }

  v17 = (a2 - a1) / v15;
  v52 = a1;
  v51 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v19;
    if (v19 >= 1)
    {
      v27 = -v15;
      v28 = a4 + v19;
      v45 = a4;
      v46 = v7;
      v44 = a1;
      do
      {
        v42 = v26;
        v29 = a2 + v27;
        while (1)
        {
          v30 = v49;
          if (a2 <= a1)
          {
            v52 = a2;
            v50 = v42;
            goto LABEL_56;
          }

          v43 = v26;
          v49 += v27;
          v31 = v27;
          v32 = v28 + v27;
          v33 = v28 + v27;
          v34 = v47;
          sub_214F5456C(v33, v47);
          v35 = v29;
          v36 = v29;
          v37 = v48;
          sub_214F5456C(v36, v48);
          v38 = *(v34 + *(v7 + 32));
          v39 = *(v37 + *(v7 + 24));
          sub_214F545D0(v37);
          sub_214F545D0(v34);
          if (v38 < v39)
          {
            break;
          }

          v26 = v32;
          if (v30 < v28 || v49 >= v28)
          {
            v7 = v46;
            swift_arrayInitWithTakeFrontToBack();
            v26 = v32;
            v29 = v35;
            v27 = v31;
          }

          else
          {
            v7 = v46;
            v29 = v35;
            v27 = v31;
            if (v30 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v26 = v32;
            }
          }

          v28 = v26;
          a1 = v44;
          if (v32 <= v45)
          {
            goto LABEL_54;
          }
        }

        if (v30 < a2 || v49 >= a2)
        {
          a2 = v35;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v31;
        }

        else
        {
          v40 = v30 == a2;
          a2 = v35;
          v27 = v31;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v7 = v46;
        v26 = v43;
        a1 = v44;
      }

      while (v28 > v45);
    }

LABEL_54:
    v52 = a2;
    v50 = v26;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v50 = a4 + v18;
    if (v18 >= 1 && a2 < v49)
    {
      do
      {
        v22 = v47;
        sub_214F5456C(a2, v47);
        v23 = v48;
        sub_214F5456C(a4, v48);
        v24 = *(v22 + *(v7 + 32));
        v25 = *(v23 + *(v7 + 24));
        sub_214F545D0(v23);
        sub_214F545D0(v22);
        if (v24 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v52 = a1;
      }

      while (a4 < v20 && a2 < v49);
    }
  }

LABEL_56:
  sub_214F52420(&v52, &v51, &v50, type metadata accessor for TranscriptViewModelSegment);
  return 1;
}

uint64_t sub_214F51F68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for TranscriptViewModelSegment(0);
  v9 = MEMORY[0x28223BE20](v49, v8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v14 = &v43 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v16;
  v52 = a1;
  v51 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v20;
    if (v20 >= 1)
    {
      v28 = -v16;
      v29 = a4 + v20;
      v46 = v28;
      v47 = a4;
      do
      {
        v44 = v27;
        v30 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v52 = a2;
            v27 = v44;
            goto LABEL_57;
          }

          v32 = a3;
          v45 = v27;
          a3 += v28;
          v33 = v29 + v28;
          sub_214F5456C(v33, v14);
          v34 = v30;
          v35 = v30;
          v36 = v14;
          v37 = v48;
          sub_214F5456C(v35, v48);
          v38 = *(v49 + 24);
          v39 = *(v36 + v38);
          v40 = *(v37 + v38);
          v41 = v37;
          v14 = v36;
          sub_214F545D0(v41);
          sub_214F545D0(v36);
          if (v39 < v40)
          {
            break;
          }

          v27 = v33;
          if (v32 < v29 || a3 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v33;
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
              v27 = v33;
            }
          }

          v29 = v27;
          v31 = v33 > v47;
          v28 = v46;
          if (!v31)
          {
            goto LABEL_55;
          }
        }

        if (v32 < a2 || a3 >= a2)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v46;
        }

        else
        {
          v42 = v32 == a2;
          a2 = v34;
          v28 = v46;
          if (!v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v45;
      }

      while (v29 > v47);
    }

LABEL_55:
    v52 = a2;
LABEL_57:
    v50 = v27;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a4 + v19;
    v50 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      do
      {
        sub_214F5456C(a2, v14);
        v23 = v48;
        sub_214F5456C(a4, v48);
        v24 = *(v49 + 24);
        v25 = *&v14[v24];
        v26 = *(v23 + v24);
        sub_214F545D0(v23);
        sub_214F545D0(v14);
        if (v25 >= v26)
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v16;
          a4 += v16;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v16;
        }

        a1 += v16;
        v52 = a1;
      }

      while (a4 < v21 && a2 < a3);
    }
  }

  sub_214F52420(&v52, &v51, &v50, type metadata accessor for TranscriptViewModelSegment);
  return 1;
}

uint64_t sub_214F52420(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_214F52508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;

  return MEMORY[0x2822009F8](sub_214F5259C, 0, 0);
}

uint64_t sub_214F5259C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = objc_allocWithZone(MEMORY[0x277CE6410]);
  v0[10] = 0;
  v4 = v1;
  v5 = v2;
  v6 = [v3 initWithAsset:v4 error:v0 + 10];
  v0[22] = v6;
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[19];
    v9 = v7;

    v10 = *MEMORY[0x277CE5E48];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_214F527D8;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E58, &qword_2150C2A00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21504A2F8;
    v0[13] = &block_descriptor_108;
    v0[14] = v11;
    [v8 loadTracksWithMediaType:v10 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v13 = v0[19];
    v12 = v0[20];
    v14 = v7;
    sub_2150A35D0();

    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_214F527D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_214F52B14;
  }

  else
  {
    v2 = sub_214F52914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214F52914()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v5 = v1[1];
  v4 = v1[2];
  *(v0 + 80) = *v1;
  *(v0 + 96) = v5;
  *(v0 + 112) = v4;
  [v2 setTimeRange_];
  v6 = [v3 settings];

  sub_2150A4920();
  v7 = objc_allocWithZone(MEMORY[0x277CE6418]);
  sub_214F54A38(0, v8);
  v9 = sub_2150A4EB0();

  v10 = sub_2150A4910();

  v11 = [v7 initWithAudioTracks:v9 audioSettings:v10];

  [v11 setAlwaysCopiesSampleData_];
  if ([v2 canAddOutput_])
  {
    v12 = *(v0 + 176);
    [v12 addOutput_];
    [v12 startReading];
  }

  v13 = *(v0 + 8);
  v14 = *(v0 + 176);
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);

  return v13(v15, v16, v14, v11);
}

uint64_t sub_214F52B14()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_214F52BC8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EE8, &qword_2150C2B00);
  v2[8] = swift_task_alloc();
  sub_2150A4120();
  v2[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EF0, &qword_2150C2B08);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EF8, &unk_2150C2B10);
  v2[14] = swift_task_alloc();
  sub_2150A3AC0();
  v2[15] = swift_task_alloc();
  v4 = sub_2150A3C30();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F52DDC, 0, 0);
}

uint64_t sub_214F52DDC(uint64_t a1, uint64_t a2)
{
  v60 = v2;
  v4 = v2[19];
  v3 = v2[20];
  v5 = v2[16];
  v6 = v2[17];
  v7 = [objc_opt_self() sharedInstance];
  sub_2150A56F0();

  v8 = *(v6 + 16);
  v8(v4, v3, v5);
  v9 = (*(v6 + 88))(v4, v5);
  v10 = *MEMORY[0x277D36080];
  if (v9 != *MEMORY[0x277D36080])
  {
    (*(v2[17] + 8))(v2[19], v2[16]);
  }

  if (qword_27CA41470 != -1)
  {
    swift_once();
  }

  v11 = v2[20];
  v12 = v2[18];
  v13 = v2[16];
  v14 = sub_2150A3F30();
  __swift_project_value_buffer(v14, qword_27CA41E38);
  v8(v12, v11, v13);
  v15 = sub_2150A3F10();
  v16 = sub_2150A5550();
  v17 = os_log_type_enabled(v15, v16);
  v19 = v2[17];
  v18 = v2[18];
  v20 = v2[16];
  if (v17)
  {
    v21 = swift_slowAlloc();
    v57 = v10;
    v22 = swift_slowAlloc();
    v59 = v22;
    *v21 = 136315138;
    v23 = sub_2150A3C20();
    v58 = v9;
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_214F7723C(v23, v25, &v59);
    v9 = v58;

    *(v21 + 4) = v26;
    _os_log_impl(&dword_214D51000, v15, v16, "call transcription model: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v27 = v22;
    v10 = v57;
    MEMORY[0x216064AF0](v27, -1, -1);
    MEMORY[0x216064AF0](v21, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  v28 = sub_2150A3F10();
  v29 = sub_2150A5550();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v59 = v31;
    *v30 = 136315138;
    if (v9 == v10)
    {
      v32 = 0x66666F2052534147;
    }

    else
    {
      v32 = 0x525341474ELL;
    }

    if (v9 == v10)
    {
      v33 = 0xEC000000656E696CLL;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    v34 = sub_214F7723C(v32, v33, &v59);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_214D51000, v28, v29, "task hint for call transcription: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x216064AF0](v31, -1, -1);
    MEMORY[0x216064AF0](v30, -1, -1);
  }

  v35 = v2[14];
  sub_2150A41E0();
  sub_2150A3A70();
  v36 = sub_2150A4130();
  (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F00, &unk_2150CB670);
  v37 = sub_2150A4140();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2150C25D0;
  (*(v38 + 104))(v40 + v39, *MEMORY[0x277CDCAB0], v37);
  sub_214F803B8(v40);
  swift_setDeallocating();
  (*(v38 + 8))(v40 + v39, v37);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F08, &unk_2150C2B20);
  v41 = sub_2150A4290();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2150C25D0;
  (*(v42 + 104))(v44 + v43, *MEMORY[0x277CDCDA0], v41);
  sub_214F806D8(v44);
  swift_setDeallocating();
  (*(v42 + 8))(v44 + v43, v41);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F10, &unk_2150CB680);
  v45 = sub_2150A41A0();
  v46 = *(v45 - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_2150C29B0;
  v50 = v49 + v48;
  v51 = *(v46 + 104);
  v51(v50, *MEMORY[0x277CDCB08], v45);
  v51(v50 + v47, *MEMORY[0x277CDCB10], v45);
  v51(v50 + 2 * v47, *MEMORY[0x277CDCB28], v45);
  sub_21505578C(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v52 = sub_2150A41D0();
  v2[21] = v52;
  v2[22] = sub_2150A40E0();
  v2[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F18, &qword_2150C2B30);
  v53 = swift_allocObject();
  v2[24] = v53;
  *(v53 + 16) = xmmword_2150C25D0;
  v54 = sub_214F549F0(&qword_27CA41F20, MEMORY[0x277CDCB98], MEMORY[0x277CDCB88]);
  v2[25] = v54;
  *(v53 + 32) = v52;
  *(v53 + 40) = v54;

  v55 = swift_task_alloc();
  v2[26] = v55;
  *v55 = v2;
  v55[1] = sub_214F535F8;

  return MEMORY[0x28212BBB8](v53);
}

uint64_t sub_214F535F8(void *a1)
{
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_214F53D70, 0, 0);
  }

  else
  {
    v5 = *(v4 + 48);
    v6 = a1;
    v7 = swift_task_alloc();
    *(v4 + 232) = v7;
    *v7 = v4;
    v7[1] = sub_214F537C8;
    v8 = *(v4 + 56);
    v9 = *(v4 + 48);

    return sub_214F52508(v9, v6, v8);
  }
}

uint64_t sub_214F537C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 240) = v4;

  if (v4)
  {
    v11 = sub_214F53C64;
  }

  else
  {
    v10[31] = a4;
    v10[32] = a3;
    v10[33] = a2;
    v10[34] = a1;
    v11 = sub_214F53910;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_214F53910()
{
  v1 = *(v0 + 248);
  v15 = *(v0 + 200);
  v2 = *(v0 + 168);
  v19 = *(v0 + 160);
  v17 = *(v0 + 136);
  v18 = *(v0 + 128);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  v16 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 272);
  *(v0 + 24) = vextq_s8(*(v0 + 256), *(v0 + 256), 8uLL);
  *(v0 + 40) = v1;
  sub_2150A4200();
  sub_214F5499C();
  sub_2150A5DC0();
  sub_2150A4100();
  v7 = sub_2150A40F0();
  sub_2150A4110();
  (*(v5 + 16))(v4, v3, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2150C29C0;
  *(v8 + 32) = v2;
  *(v8 + 40) = v15;
  v9 = sub_214F549F0(&qword_27CA41F30, MEMORY[0x277CDCA78], MEMORY[0x277CDCA70]);
  *(v8 + 48) = v7;
  *(v8 + 56) = v9;
  v10 = sub_2150A4250();
  (*(*(v10 - 8) + 56))(v16, 1, 1, v10);
  sub_2150A4240();
  swift_allocObject();

  sub_2150A4230();
  sub_214F43BCC(&qword_27CA41F38, &qword_27CA41EF0, &qword_2150C2B08, MEMORY[0x277D85990]);
  v11 = sub_2150A40C0();

  (*(v5 + 8))(v3, v6);
  (*(v17 + 8))(v19, v18);

  v12 = *(v0 + 8);
  v13 = *(v0 + 168);

  return v12(v11, v13);
}

uint64_t sub_214F53C64()
{

  (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F53D70()
{

  (*(v0[17] + 8))(v0[20], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_214F53E70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F557A8;

  return sub_214F4AE9C(a1, v4);
}

uint64_t sub_214F53F10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F53FB0;

  return sub_214F4B1B0(a1, v4);
}

uint64_t sub_214F53FB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214F540A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214F557A8;

  return sub_214F4B548(a1, v5, v4);
}

uint64_t sub_214F54150(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214F557A8;

  return sub_214F4B704(a1, v5, v4);
}

uint64_t sub_214F541FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_214F557A8;

  return sub_214F4B89C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_214F542E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214F557A8;

  return sub_214F4C528(a1, v4, v5, v7, v6);
}

uint64_t sub_214F543A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_214F557A8;

  return sub_214F4C828(a1, a2, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_214F544B0()
{
  result = qword_27CA41E70;
  if (!qword_27CA41E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41E70);
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_214F5456C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptViewModelSegment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F545D0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptViewModelSegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214F5462C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptViewModelSegment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F54690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_214F557A8;

  return sub_214F4CB10(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_80Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_214F547CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_214F557A8;

  return sub_214F4DED8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_214F548A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E78, &unk_2150C2AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F54918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214F5499C()
{
  result = qword_27CA41F28;
  if (!qword_27CA41F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41F28);
  }

  return result;
}

uint64_t sub_214F549F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_214F54A38(uint64_t a1, uint64_t a2)
{
  result = qword_27CA41F40;
  if (!qword_27CA41F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA41F40);
  }

  return result;
}

uint64_t sub_214F54A84(uint64_t a1)
{
  *(v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_214F54B14, 0, 0);
}

uint64_t sub_214F54B14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48, &unk_2150C2B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = sub_2150A4AD0();
  *(inited + 40) = v2;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_214FA4BBC(inited);
  swift_setDeallocating();
  sub_214F302D4(inited + 32, &qword_27CA41D60, &unk_2150C5450);
  v3 = sub_2150A4910();

  v4 = [objc_opt_self() compositionWithURLAssetInitializationOptions_];
  v0[14] = v4;

  v5 = [v4 addMutableTrackWithMediaType:*MEMORY[0x277CE5E48] preferredTrackID:0];
  v0[15] = v5;
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F50, &qword_2150C2B60);
    v6 = sub_2150A3B90();
    v0[16] = v6;
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_214F54E40;

    return MEMORY[0x2821FAF00](v0 + 19, v6, 0, 0);
  }

  else
  {
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v8 = sub_2150A3F30();
    __swift_project_value_buffer(v8, qword_27CA41E38);
    v9 = sub_2150A3F10();
    v10 = sub_2150A5560();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_214D51000, v9, v10, "Not able to add a mutable track to composition. Failing to create file for track", v11, 2u);
      MEMORY[0x216064AF0](v11, -1, -1);
    }

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_214F54E40()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_214F551FC;
  }

  else
  {

    v2 = sub_214F54F90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214F54F90()
{
  v1 = MEMORY[0x277CC08F0];
  *(v0 + 248) = *MEMORY[0x277CC08F0];
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 168);
  *(v0 + 200) = *(v0 + 152);
  *(v0 + 216) = v4;
  *(v0 + 232) = *(v0 + 184);
  *(v0 + 96) = 0;
  v5 = *(v1 + 16);
  *(v0 + 256) = *(v1 + 8);
  *(v0 + 264) = v5;
  v6 = [v2 insertTimeRange:v0 + 200 ofTrack:v3 atTime:v0 + 248 error:v0 + 96];
  v7 = *(v0 + 96);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v11 = v7;
    v12 = sub_2150A35D0();

    swift_willThrow();
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v13 = sub_2150A3F30();
    __swift_project_value_buffer(v13, qword_27CA41E38);
    v14 = v12;
    v15 = sub_2150A3F10();
    v16 = sub_2150A5560();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_214D51000, v15, v16, "unable to make composition for call recording track: %@", v17, 0xCu);
      sub_214F302D4(v18, &qword_27CA41DF0, &qword_2150C2940);
      MEMORY[0x216064AF0](v18, -1, -1);
      MEMORY[0x216064AF0](v17, -1, -1);
    }

    else
    {
    }

    v8 = 0;
  }

  v21 = *(v0 + 8);

  return v21(v8);
}

uint64_t sub_214F551FC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 144);
  if (qword_27CA41470 != -1)
  {
    swift_once();
  }

  v3 = sub_2150A3F30();
  __swift_project_value_buffer(v3, qword_27CA41E38);
  v4 = v2;
  v5 = sub_2150A3F10();
  v6 = sub_2150A5560();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_214D51000, v5, v6, "unable to make composition for call recording track: %@", v7, 0xCu);
    sub_214F302D4(v8, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v8, -1, -1);
    MEMORY[0x216064AF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11(0);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_214F553F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_214F55438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214F55498()
{
  result = qword_27CA41F58;
  if (!qword_27CA41F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41F58);
  }

  return result;
}

id sub_214F554EC(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  bufferListSizeNeededOut[1] = *MEMORY[0x277D85DE8];
  if (CMSampleBufferGetNumSamples(a1) >= 1)
  {
    bufferListSizeNeededOut[0] = 0;
    AudioBufferListWithRetainedBlockBuffer = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a1, bufferListSizeNeededOut, 0, 0, 0, 0, 0, 0);
    if (AudioBufferListWithRetainedBlockBuffer == sub_2150A4060())
    {
      v5 = swift_allocObject();
      v6 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength_];
      *(v5 + 16) = v6;
      if (v6)
      {
        v7 = [v6 mutableBytes];
        v8 = swift_allocObject();
        *(v8 + 16) = 0;
        v9 = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a1, 0, v7, bufferListSizeNeededOut[0], *MEMORY[0x277CBECE8], *MEMORY[0x277CBECE8], 0, (v8 + 16));
        if (v9 == sub_2150A4060())
        {
          v10 = swift_allocObject();
          *(v10 + 16) = v5;
          *(v10 + 24) = v8;
          v11 = objc_allocWithZone(MEMORY[0x277CB83C8]);
          v15[4] = sub_214F55754;
          v15[5] = v10;
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 1107296256;
          v15[2] = sub_214F503A4;
          v15[3] = &block_descriptor_130;
          v12 = _Block_copy(v15);

          v13 = [v11 initWithPCMFormat:a2 bufferListNoCopy:v7 deallocator:v12];
          _Block_release(v12);

          return v13;
        }
      }
    }
  }

  return 0;
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ManagedEntityID.entityIdentifierString.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  ManagedEntityID.uriRepresentation.getter(a1, a2, &v12 - v6);
  v8 = sub_2150A3750();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_214F302D4(v7, &qword_27CA41D40, &unk_2150C7230);
    return 0;
  }

  else
  {
    v11 = sub_2150A3650();
    (*(v9 + 8))(v7, v8);
    return v11;
  }
}

uint64_t ManagedEntityID.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2150A3750();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *(*(a2 - 8) + 56);

  return v7(a3, 1, 1, a2);
}

uint64_t ManagedEntityID.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v15);
  if (v15 == 2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x3E6C696E3CLL;
  }

  else
  {
    v4 = 1819112552;
    if ((v15 & 1) == 0)
    {
      v4 = 0x6E7265646F6DLL;
    }

    v5 = 0xE600000000000000;
    if (v15)
    {
      v5 = 0xE400000000000000;
    }

    v15 = v4;
    v16 = v5;
    v3 = sub_2150A4B50();
    v2 = v6;
  }

  v15 = sub_2150A2F30();
  v16 = v7;
  v8 = sub_2150A4B50();
  v10 = v9;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2150A5B20();
  v11 = sub_2150A6670();
  v13 = v12;

  v15 = v11;
  v16 = v13;
  MEMORY[0x2160617E0](0x747865746E6F6328, 0xEE00203A65707954);
  MEMORY[0x2160617E0](v3, v2);

  MEMORY[0x2160617E0](0x203A697275202CLL, 0xE700000000000000);
  MEMORY[0x2160617E0](v8, v10);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  return v15;
}

uint64_t static ManagedEntityID.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v147 = a4;
  v152 = a5;
  v146 = sub_2150A4340();
  v148 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v8);
  v127 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_2150A42C0();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v10);
  v137 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50, &qword_2150CACD0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v140 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v143 = &v120 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F60, &qword_2150C2C58);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v135 = &v120 - v20;
  v142 = sub_2150A42D0();
  v134 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v21);
  v136 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F68, &qword_2150C2C60);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v132 = &v120 - v25;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70, &qword_2150C2C68);
  MEMORY[0x28223BE20](v133, v26);
  v144 = &v120 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48, &qword_2150C25E0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v130 = &v120 - v30;
  v31 = sub_2150A4360();
  v150 = *(v31 - 8);
  v151 = v31;
  v33 = MEMORY[0x28223BE20](v31, v32);
  v129 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v149 = &v120 - v36;
  v126 = sub_2150A57E0();
  v125 = *(v126 - 8);
  v38 = MEMORY[0x28223BE20](v126, v37);
  v128 = &v120 - v39;
  v40 = *(a3 - 8);
  MEMORY[0x28223BE20](v38, v41);
  v124 = &v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v43 - 8, v44);
  v46 = &v120 - v45;
  v47 = sub_2150A3750();
  v145 = *(v47 - 8);
  v49 = MEMORY[0x28223BE20](v47, v48);
  v51 = &v120 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v52);
  v54 = &v120 - v53;
  v55 = a1;
  v160 = a1;
  v161 = a2;
  v56 = a2;
  v158 = 58;
  v159 = 0xE100000000000000;
  v57 = sub_214F57844();
  sub_214F57898();
  v141 = v57;
  sub_2150A4A00();
  if (v155)
  {
    return (*(v40 + 56))(v152, 1, 1, a3);
  }

  v123 = v40;
  v131 = a3;
  v122 = v154;
  v59 = sub_2150A4D40();
  MEMORY[0x216061730](v59);

  v60 = sub_2150A4A90();

  v61 = ICIsNotesURLScheme(v60);

  if (!v61)
  {
    return (*(v123 + 56))(v152, 1, 1, v131);
  }

  v121 = v55;
  sub_2150A3720();
  v62 = v145;
  v63 = (*(v145 + 48))(v46, 1, v47);
  v64 = v131;
  if (v63 == 1)
  {
    sub_214F302D4(v46, &qword_27CA41D40, &unk_2150C7230);
  }

  else
  {
    (*(v62 + 32))(v54, v46, v47);
    (*(v62 + 16))(v51, v54, v47);
    v65 = v128;
    (*(v147 + 48))(v51, v64);
    (*(v62 + 8))(v54, v47);
    v66 = v123;
    if ((*(v123 + 48))(v65, 1, v64) != 1)
    {
      v102 = v64;
      v105 = *(v66 + 32);
      v106 = v124;
      v105(v124, v65, v102);
      v107 = v152;
      v105(v152, v106, v102);
      goto LABEL_38;
    }

    (*(v125 + 8))(v65, v126);
  }

  v67 = v121;
  v158 = v121;
  v159 = v56;
  v156 = 63;
  v157 = 0xE100000000000000;
  sub_2150A4A00();
  v68 = v144;
  v69 = v142;
  if (v155)
  {
    v70 = sub_214F56B68(v122, v67, v56);
    v71 = v150;
    v72 = v151;
    v73 = v143;
  }

  else
  {
    result = v122;
    v71 = v150;
    v72 = v151;
    v73 = v143;
    if (v153 >> 14 < v122 >> 14)
    {
      __break(1u);
      return result;
    }

    v70 = sub_2150A4D40();
  }

  v74 = MEMORY[0x216061730](v70);
  v76 = v75;

  v160 = v74;
  v161 = v76;

  v77 = sub_2150A4CD0();

  if (v77)
  {
    sub_214F56BB4(2);
  }

  v78 = v149;
  MEMORY[0x216060F30](v160, v161);
  v79 = sub_2150A42E0();
  v80 = 1;
  (*(*(v79 - 8) + 56))(v130, 1, 1, v79);
  sub_2150A4300();
  (*(v71 + 16))(v129, v78, v72);
  v81 = v136;
  sub_2150A42B0();
  v82 = *(v134 + 32);
  v83 = v135;
  v82(v135, v81, v69);
  v84 = v132;
  v82(v132, v83, v69);
  v82(v81, v84, v69);
  v85 = MEMORY[0x277D854A8];
  sub_214F578EC(&qword_280C24260, MEMORY[0x277D854A8], MEMORY[0x277D854B0]);
  sub_2150A4D60();
  v86 = (v68 + *(v133 + 44));
  *v86 = sub_214F56C3C;
  v86[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78, &qword_2150C2C70);
  sub_214F578EC(&qword_280C24258, v85, MEMORY[0x277D854B8]);
  v87 = v137;
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498], MEMORY[0x277D854A0]);
  v88 = v139;
  LOBYTE(v82) = sub_2150A4A80();
  (*(v138 + 8))(v87, v88);
  if ((v82 & 1) == 0)
  {
    v89 = sub_2150A5470();
    (*(v148 + 16))(v73);
    v89(&v153, 0);
    sub_2150A5410();
    v80 = 0;
  }

  v90 = v148;
  v91 = v146;
  (*(v148 + 56))(v73, v80, 1, v146);
  v92 = v140;
  sub_214F57934(v73, v140);
  if ((*(v90 + 48))(v92, 1, v91) == 1)
  {
    v93 = 0;
    v94 = 0;
    v66 = v123;
    v95 = v150;
    v96 = v151;
  }

  else
  {
    v97 = v127;
    (*(v90 + 32))(v127, v92, v91);
    v153 = sub_2150A4330();
    v154 = v98;
    sub_214D6E6C4();
    v93 = sub_2150A58C0();
    v94 = v99;

    if (!v94)
    {
      v93 = sub_2150A4330();
      v94 = v100;
    }

    v101 = v97;
    v66 = v123;
    v95 = v150;
    v96 = v151;
    (*(v148 + 8))(v101, v91);
  }

  v102 = v131;
  v103 = (*(*(v147 + 8) + 32))(v131);
  if (!v94)
  {

    goto LABEL_36;
  }

  if (v103 == v93 && v94 == v104)
  {

    goto LABEL_29;
  }

  v108 = sub_2150A6270();

  if ((v108 & 1) == 0)
  {
LABEL_36:
    sub_214F302D4(v68, &qword_27CA41F70, &qword_2150C2C68);
    (*(v95 + 8))(v149, v96);
    return (*(v66 + 56))(v152, 1, 1, v102);
  }

LABEL_29:
  v109 = sub_214F56CC8();
  if (!v110)
  {
    goto LABEL_36;
  }

  v111 = v109;
  v112 = v110;
  v113 = sub_2150A5EE0();
  if (v113)
  {
    if (v113 == 1)
    {
      v114 = 1;
      goto LABEL_34;
    }

    LOBYTE(v153) = 0;
    v107 = v152;
    (*(v147 + 40))(&v153, v111, v112, v102);
    sub_214F302D4(v68, &qword_27CA41F70, &qword_2150C2C68);
    (*(v95 + 8))(v149, v96);
LABEL_38:
    v118 = *(v66 + 56);
    v119 = v107;
    return v118(v119, 0, 1, v102);
  }

  v114 = 0;
LABEL_34:

  v115 = sub_214F56CC8();
  if (!v116)
  {
    goto LABEL_36;
  }

  LOBYTE(v153) = v114;
  v117 = v152;
  (*(v147 + 40))(&v153, v115, v116, v102);
  sub_214F302D4(v68, &qword_27CA41F70, &qword_2150C2C68);
  (*(v95 + 8))(v149, v96);
  v118 = *(v66 + 56);
  v119 = v117;
  return v118(v119, 0, 1, v102);
}

unint64_t sub_214F56B68(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2150A4D40();
  }

  __break(1u);
  return result;
}

uint64_t sub_214F56BB4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_2150A4BF0();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x2821FBD18](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v1);
  }

  return result;
}

uint64_t sub_214F56C3C@<X0>(uint64_t *a2@<X8>)
{
  sub_2150A4330();
  sub_214D6E6C4();
  v3 = sub_2150A58C0();
  v5 = v4;

  if (!v5)
  {
    result = sub_2150A4330();
    v3 = result;
    v5 = v7;
  }

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_214F56CC8()
{
  v1 = v0;
  v2 = sub_2150A4340();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2150A42C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50, &qword_2150CACD0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v28 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78, &qword_2150C2C70);
  sub_2150A42D0();
  sub_214F578EC(&qword_280C24258, MEMORY[0x277D854A8], MEMORY[0x277D854B8]);
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498], MEMORY[0x277D854A0]);
  v18 = sub_2150A4A80();
  (*(v6 + 8))(v9, v5);
  if (v18)
  {
    v19 = 1;
    v21 = v30;
    v20 = v31;
  }

  else
  {
    v22 = sub_2150A5470();
    v24 = v30;
    v23 = v31;
    (*(v30 + 16))(v17);
    v22(&v32, 0);
    sub_2150A5410();
    v19 = 0;
    v20 = v23;
    v21 = v24;
  }

  (*(v21 + 56))(v17, v19, 1, v20);
  v25 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70, &qword_2150C2C68) + 44));
  sub_214F57934(v17, v14);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    return 0;
  }

  v27 = v29;
  (*(v21 + 32))(v29, v14, v20);
  v25(&v32, v27);
  (*(v21 + 8))(v27, v20);
  return v32;
}

uint64_t ManagedEntityID.uriRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2150A3240();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v77 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48, &qword_2150C25E0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v71 = &v65 - v11;
  v12 = sub_2150A4360();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v74 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50, &qword_2150CACD0);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v69 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v72 = &v65 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v65 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v65 - v27;
  v29 = sub_2150A4340();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v73 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v70 = &v65 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v80 = &v65 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v65 - v41;
  v81 = a2;
  (*(*(a2 + 8) + 32))(a1);
  sub_2150A4350();
  v43 = *(v30 + 48);
  if (v43(v28, 1, v29) == 1)
  {
    v25 = v28;
LABEL_5:
    sub_214F302D4(v25, &qword_27CA41D50, &qword_2150CACD0);
    v46 = sub_2150A3750();
    return (*(*(v46 - 8) + 56))(a3, 1, 1, v46);
  }

  v68 = a3;
  v44 = v28;
  v45 = *(v30 + 32);
  v45(v42, v44, v29);
  sub_214F579A4(a1, v81, v25);
  if (v43(v25, 1, v29) == 1)
  {
    (*(v30 + 8))(v42, v29);
    a3 = v68;
    goto LABEL_5;
  }

  v65 = v45;
  v45(v80, v25, v29);
  v48 = sub_2150A42E0();
  (*(*(v48 - 8) + 56))(v71, 1, 1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D58, &qword_2150C25E8);
  v49 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2150C25D0;
  v66 = *(v30 + 16);
  v67 = v42;
  v66(v50 + v49, v42, v29);
  v51 = v74;
  sub_2150A42F0();
  (*(v81 + 24))(&v82, a1);
  if (v82 == 2)
  {
    v52 = v72;
    (*(v30 + 56))(v72, 1, 1, v29);
    goto LABEL_13;
  }

  v52 = v72;
  if ((v82 & 1) == 0)
  {
    v55 = 1;
    v54 = v65;
LABEL_12:
    (*(v30 + 56))(v52, v55, 1, v29);
    if (v43(v52, 1, v29) != 1)
    {
      v59 = v70;
      v54(v70, v52, v29);
      v58 = v73;
      v57 = v66;
      v66(v73, v59, v29);
      sub_2150A4310();
      (*(v30 + 8))(v59, v29);
      v56 = v67;
      goto LABEL_15;
    }

LABEL_13:
    sub_214F302D4(v52, &qword_27CA41D50, &qword_2150CACD0);
    v57 = v66;
    v56 = v67;
    v58 = v73;
LABEL_15:
    v60 = v80;
    v57(v58, v80, v29);
    sub_2150A4310();
    v61 = v77;
    sub_2150A3230();
    v62 = ICNotesAppURLScheme();
    sub_2150A4AD0();

    sub_2150A3200();
    v63 = sub_2150A4320();
    MEMORY[0x21605FD60](v63);
    sub_2150A3160();
    (*(v78 + 8))(v61, v79);
    (*(v75 + 8))(v51, v76);
    v64 = *(v30 + 8);
    v64(v60, v29);
    return (v64)(v56, v29);
  }

  v53 = v69;
  sub_2150A4350();
  result = (v43)(v53, 1, v29);
  v54 = v65;
  if (result != 1)
  {
    v65(v52, v53, v29);
    v55 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_214F57844()
{
  result = qword_280C24560;
  if (!qword_280C24560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C24560);
  }

  return result;
}

unint64_t sub_214F57898()
{
  result = qword_280C24558;
  if (!qword_280C24558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C24558);
  }

  return result;
}

uint64_t sub_214F578EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_214F57934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50, &qword_2150CACD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F579A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2150A3050();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = (*(a2 + 32))(a1, a2);
  v17[1] = v11;
  v12 = [objc_opt_self() ic_uriIdentifierAllowedCharacterSet];
  sub_2150A3020();

  sub_214D6E6C4();
  sub_2150A58A0();
  v14 = v13;
  (*(v7 + 8))(v10, v6);

  if (v14)
  {
    return sub_2150A4350();
  }

  v16 = sub_2150A4340();
  return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
}

uint64_t sub_214F57BA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2150A3750();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t (*AsyncSequence.uncheckedSendableMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v11);
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a5;
  (*(v8 + 32))(&v13[v12], v10, a3);

  return sub_214F57E2C;
}

uint64_t sub_214F57D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1, a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_2150A5220();
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.base.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.base.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.transform.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.transform.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.init(base:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  result = type metadata accessor for AsyncUncheckedSendableMapSequence.Iterator(0, a4, a5, a6);
  v16 = (a7 + *(result + 44));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v5 = sub_2150A57E0();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[8] = v6;
  v3[9] = *(AssociatedTypeWitness - 8);
  v3[10] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  v3[11] = v9;
  *v9 = v3;
  v9[1] = sub_214F582EC;

  return MEMORY[0x282200308](v6, v7, AssociatedConformanceWitness);
}

uint64_t sub_214F582EC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_214F58588;
  }

  else
  {
    v2 = sub_214F58400;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214F58400()
{
  v1 = v0 + 9;
  v2 = v0[9];
  v3 = v0[8];
  v5 = v0 + 5;
  v4 = v0[5];
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    v1 = v0 + 7;
    v5 = v0 + 6;
    v6 = 1;
    v7 = v3;
  }

  else
  {
    v8 = v0[10];
    v10 = v0[3];
    v9 = v0[4];
    (*(v2 + 32))(v8, v3, v4);
    (*(v9 + *(v10 + 44)))(v8);
    v6 = 0;
    v7 = v0[10];
  }

  v11 = *v1;
  v12 = v0[2];
  v13 = v0[3];
  (*(v11 + 8))(v7, *v5);
  (*(*(*(v13 + 24) - 8) + 56))(v12, v6, 1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_214F58588()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F585F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F53FB0;

  return AsyncUncheckedSendableMapSequence.Iterator.next()(a1, a2);
}

uint64_t sub_214F586A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v14 = swift_task_alloc();
  v6[6] = v14;
  *v14 = v6;
  v14[1] = sub_214F587F4;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v13);
}

uint64_t sub_214F587F4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t AsyncUncheckedSendableMapSequence.makeBaseIterator.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AsyncUncheckedSendableMapSequence.transform.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AsyncUncheckedSendableMapSequence.makeAsyncIterator()@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8, v15);
  v18 = &v20 - v17;
  a1(v16);
  AsyncUncheckedSendableMapSequence.Iterator.init(base:transform:)(v18, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_214F58B2C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_214F58BEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  AsyncUncheckedSendableMapSequence.makeAsyncIterator()(*v2, *(v2 + 16), *(v2 + 24), a1[2], a1[3], a1[4], a2);
}

uint64_t sub_214F58C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214F58CA0(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_214F590B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_214F58D3C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_214F58ED0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v19 = a2 & 0x7FFFFFFF;
      v19[1] = 0;
    }

    else
    {
      *v19 = (a2 - 1);
    }
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

unint64_t sub_214F590B4()
{
  result = qword_280C244C8;
  if (!qword_280C244C8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280C244C8);
  }

  return result;
}

uint64_t ICObjectReferences.Types.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_214F591D4()
{
  sub_2150A64B0();
  ICObjectReferences.Types.hash(into:)();
  return sub_2150A64E0();
}

uint64_t ICObjectReferences.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*v2 >> 62) > 2)
  {
    sub_2150A4FD0();
    v6 = swift_projectBox();
    v9 = *(a1 + 16);
    v7 = *(*(v9 - 8) + 16);
    v8 = a2;
  }

  else
  {
    v5 = *(a1 + 16);
    sub_2150A4FD0();
    v6 = swift_projectBox();
    v7 = *(*(v5 - 8) + 16);
    v8 = a2;
    v9 = v5;
  }

  return v7(v8, v6, v9);
}

uint64_t ICObjectReferences.title.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2 >> 62;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0, &unk_2150C2DE0);
      sub_2150A4FD0();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    }

    else
    {
      MEMORY[0x28223BE20](a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0, &unk_2150C2DE0);
      sub_2150A4FD0();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
    }

    v5 = *(swift_projectBox() + *(TupleTypeMetadata3 + 48));
  }

  else
  {
    sub_2150A4FD0();
    swift_getTupleTypeMetadata3();
    swift_projectBox();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB0, &unk_2150C2DE0);
    swift_dynamicCast();
    return v7;
  }

  return v5;
}

uint64_t ICObjectReferences.children.getter(uint64_t a1, uint64_t a2)
{
  sub_214F5B1C8(a1, a2);
}

uint64_t ICObjectReferences.recursiveIdentifiers.getter(uint64_t a1)
{
  sub_214F5B154(*(a1 + 16), *(a1 + 16));
  swift_allocObject();
  sub_2150A4EF0();
  ICObjectReferences.identifier.getter(a1, v2);
  v3 = sub_2150A4FD0();
  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v3);
  sub_214F5B1C8(a1, v4);
  sub_2150A4FD0();
  sub_2150A5330();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2150A4DD0();

  sub_2150A4F20();

  swift_getWitnessTable();
  return sub_2150A5340();
}

uint64_t ICObjectReferences.recursiveNoteCount.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (*v2 >> 62 != 2)
  {
    goto LABEL_5;
  }

  v7 = sub_214F5B1C8(a1, a2);
  MEMORY[0x28223BE20](v7, v4);
  v3 = sub_2150A4FD0();

  swift_getWitnessTable();
  sub_2150A4DC0();

  result = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_5:
    v8 = sub_214F5B1C8(v3, a2);
    MEMORY[0x28223BE20](v8, v6);
    sub_2150A4FD0();

    swift_getWitnessTable();
    sub_2150A4DC0();

    return v9;
  }

  return result;
}

uint64_t ICObjectReferences.recursiveAttachmentCount.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (*v2 >> 62 != 3)
  {
    goto LABEL_5;
  }

  v7 = sub_214F5B1C8(a1, a2);
  MEMORY[0x28223BE20](v7, v4);
  v3 = sub_2150A4FD0();

  swift_getWitnessTable();
  sub_2150A4DC0();

  result = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_5:
    v8 = sub_214F5B1C8(v3, a2);
    MEMORY[0x28223BE20](v8, v6);
    sub_2150A4FD0();

    swift_getWitnessTable();
    sub_2150A4DC0();

    return v9;
  }

  return result;
}

uint64_t sub_214F59B70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for ICObjectReferences(0, a2, a3, a3);
  result = a4(v8);
  if (__OFADD__(v7, result))
  {
    __break(1u);
  }

  else
  {
    *a5 = v7 + result;
  }

  return result;
}

uint64_t ICObjectReferences.recursiveChildren.getter(uint64_t a1)
{
  v3 = *v1;
  sub_2150A6110();
  swift_allocObject();
  sub_2150A4EF0();
  *v4 = v3;
  v5 = sub_2150A4FD0();
  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v5);
  sub_214F5B1C8(a1, v6);

  swift_getWitnessTable();
  sub_2150A4DD0();

  v7 = sub_2150A4F20();

  return v7;
}

uint64_t ICObjectReferences.filterChildren(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *v4;
  v70 = *v4;
  v74 = sub_214F5B1C8(a3, a2);
  v11 = sub_2150A4FD0();

  swift_getWitnessTable();
  result = sub_2150A5CA0();
  if (!v5)
  {
    v69 = a4;
    v70 = result;
    MEMORY[0x28223BE20](result, v13);
    v68 = *(a3 + 16);
    *&v64[16] = v68;
    *&v64[32] = a1;
    v65 = a2;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
    WitnessTable = swift_getWitnessTable();
    v16 = sub_214F86288(sub_214F5B4D4, v64, v11, a3, v14, WitnessTable, MEMORY[0x277D84950], &v74);

    v19 = v10 >> 62;
    v67 = 0;
    if ((v10 >> 62) > 1)
    {
      if (v19 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0, &unk_2150C2DE0);
        v31 = v68;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v33 = swift_projectBox();
        v34 = (v33 + *(TupleTypeMetadata3 + 48));
        v35 = *v34;
        v36 = v34[1];
        v37 = swift_allocBox();
        v39 = v38;
        v40 = (v38 + *(TupleTypeMetadata3 + 48));
        v41 = *(TupleTypeMetadata3 + 64);
        (*(*(v31 - 8) + 16))(v38, v33, v31);
        *v40 = v35;
        v40[1] = v36;
        *(v39 + v41) = v16;
        v42 = v37 | 0x8000000000000000;
      }

      else
      {
        MEMORY[0x28223BE20](v17, v18);
        strcpy(v64, "identifier title hasMedia children ");
        v66 = v68;
        v70 = v68;
        v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0, &unk_2150C2DE0);
        v72 = MEMORY[0x277D839B0];
        v73 = v11;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v54 = swift_projectBox();
        v55 = (v54 + TupleTypeMetadata[12]);
        v56 = v55[1];
        *&v68 = *v55;
        v57 = *(v54 + TupleTypeMetadata[16]);
        v58 = swift_allocBox();
        v60 = v59;
        v61 = (v59 + TupleTypeMetadata[12]);
        v62 = TupleTypeMetadata[16];
        v63 = TupleTypeMetadata[20];
        (*(*(v66 - 8) + 16))(v59, v54);
        *v61 = v68;
        v61[1] = v56;
        *(v60 + v62) = v57;
        *(v60 + v63) = v16;
        v42 = v58 | 0xC000000000000000;
      }
    }

    else
    {
      v20 = v68;
      if (!v19)
      {
        v21 = swift_getTupleTypeMetadata3();
        v22 = swift_projectBox();
        v23 = (v22 + *(v21 + 48));
        v24 = *v23;
        v25 = v23[1];
        v26 = swift_allocBox();
        v28 = v27;
        v29 = (v27 + *(v21 + 48));
        v30 = *(v21 + 64);
        (*(*(v20 - 8) + 16))(v27, v22, v20);
        *v29 = v24;
        v29[1] = v25;
        *(v28 + v30) = v16;
        *v69 = v26;
      }

      v43 = swift_getTupleTypeMetadata3();
      v44 = swift_projectBox();
      v45 = (v44 + *(v43 + 48));
      v46 = *v45;
      v47 = v45[1];
      v48 = swift_allocBox();
      v50 = v49;
      v51 = (v49 + *(v43 + 48));
      v52 = *(v43 + 64);
      (*(*(v20 - 8) + 16))(v49, v44, v20);
      *v51 = v46;
      v51[1] = v47;
      *(v50 + v52) = v16;
      v42 = v48 | 0x4000000000000000;
    }

    *v69 = v42;
  }

  return result;
}

uint64_t sub_214F5A220@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, void *a6@<X8>)
{
  v11 = type metadata accessor for ICObjectReferences(0, a3, a4, a3);
  result = ICObjectReferences.filterChildren(_:)(a1, a2, v11, a6);
  if (v6)
  {
    *a5 = v6;
  }

  return result;
}

uint64_t ICObjectReferences.mapIdentifiers<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v103 = a6;
  v12 = *(a3 + 16);
  v106 = *(v12 - 1);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v102 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v101 = &v98 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v105 = &v98 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v104 = &v98 - v22;
  v23 = *v6;
  v117 = *v6;
  v121[3] = sub_214F5B1C8(v25, v24);
  v111 = v12;
  v112 = a4;
  v113 = *(a3 + 24);
  v114 = a5;
  v107 = a2;
  v108 = a1;
  v115 = a1;
  v116 = a2;
  v26 = sub_2150A4FD0();
  v28 = type metadata accessor for ICObjectReferences(0, a4, a5, v27);

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
  WitnessTable = swift_getWitnessTable();
  v31 = v109;
  v32 = sub_214F86288(sub_214F5B4F8, v110, v26, v28, v29, WitnessTable, MEMORY[0x277D84950], v121);

  if (v31)
  {
    return result;
  }

  v35 = v104;
  v36 = v105;
  v98 = v28;
  v99 = 0;
  v100 = a4;
  v37 = v12;
  v38 = v106;
  v39 = v23 >> 62;
  v109 = v32;
  if ((v23 >> 62) <= 1)
  {
    if (!v39)
    {
      v40 = v12;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v42 = swift_projectBox();
      v43 = (v42 + *(TupleTypeMetadata3 + 48));
      v44 = v43[1];
      v105 = *v43;
      v45 = v38;
      (*(v38 + 16))(v35, v42, v12);
      sub_2150A4FD0();
      v46 = swift_getTupleTypeMetadata3();
      v47 = swift_allocBox();
      v49 = v48;

      v50 = v99;
      v108(v35);
      if (v50)
      {
        (*(v38 + 8))(v35, v40);
LABEL_11:

        return swift_deallocBox();
      }

      v86 = (v49 + *(v46 + 48));
      v87 = *(v46 + 64);
      result = (*(v45 + 8))(v35, v40);
      *v86 = v105;
      v86[1] = v44;
      *(v49 + v87) = v109;
      *v103 = v47;
      return result;
    }

    v62 = swift_getTupleTypeMetadata3();
    v63 = swift_projectBox();
    v64 = (v63 + *(v62 + 48));
    v65 = v64[1];
    v104 = *v64;
    v66 = v36;
    (*(v38 + 16))(v36, v63, v12);
    sub_2150A4FD0();
    v67 = swift_getTupleTypeMetadata3();
    v68 = swift_allocBox();
    v70 = v69;

    v71 = v99;
    v108(v36);
    if (v71)
    {
      (*(v38 + 8))(v36, v37);
      goto LABEL_11;
    }

    v91 = (v70 + *(v67 + 48));
    v92 = *(v67 + 64);
    result = (*(v38 + 8))(v66, v37);
    *v91 = v104;
    v91[1] = v65;
    *(v70 + v92) = v109;
    v93 = v68 | 0x4000000000000000;
LABEL_18:
    *v103 = v93;
    return result;
  }

  if (v39 != 2)
  {
    MEMORY[0x28223BE20](result, v34);
    strcpy(&v98 - 48, "identifier title hasMedia children ");
    v117 = v12;
    v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0, &unk_2150C2DE0);
    v119 = MEMORY[0x277D839B0];
    v120 = v26;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v73 = swift_projectBox();
    v74 = (v73 + *(TupleTypeMetadata + 48));
    v75 = v74[1];
    v104 = *v74;
    LODWORD(v101) = *(v73 + *(TupleTypeMetadata + 64));
    v76 = v38;
    v77 = *(v38 + 16);
    v78 = v102;
    v105 = v37;
    v79 = v77(v102, v73, v37);
    MEMORY[0x28223BE20](v79, v80);
    strcpy(&v98 - 48, "identifier title hasMedia children ");
    v117 = v100;
    v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0, &unk_2150C2DE0);
    v119 = MEMORY[0x277D839B0];
    v120 = sub_2150A4FD0();
    v81 = swift_getTupleTypeMetadata();
    v82 = swift_allocBox();
    v84 = v83;

    v85 = v99;
    v108(v78);
    if (v85)
    {
      (*(v76 + 8))(v78, v105);
      goto LABEL_11;
    }

    v94 = (v84 + v81[12]);
    v95 = v78;
    v96 = v81[16];
    v97 = v81[20];
    result = (*(v76 + 8))(v95, v105);
    *v94 = v104;
    v94[1] = v75;
    *(v84 + v96) = v101;
    *(v84 + v97) = v109;
    v93 = v82 | 0xC000000000000000;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0, &unk_2150C2DE0);
  v51 = swift_getTupleTypeMetadata3();
  v52 = swift_projectBox();
  v53 = (v52 + *(v51 + 48));
  v54 = v53[1];
  v105 = *v53;
  v55 = v101;
  (*(v38 + 16))(v101, v52, v12);
  sub_2150A4FD0();
  v56 = swift_getTupleTypeMetadata3();
  v57 = swift_allocBox();
  v59 = v58;

  v60 = v99;
  v108(v55);
  v61 = v103;
  if (v60)
  {
    (*(v38 + 8))(v55, v12);
    goto LABEL_11;
  }

  v88 = v38;
  v89 = (v59 + *(v56 + 48));
  v90 = *(v56 + 64);
  result = (*(v88 + 8))(v55, v12);
  *v89 = v105;
  v89[1] = v54;
  *(v59 + v90) = v109;
  *v61 = v57 | 0x8000000000000000;
  return result;
}

uint64_t sub_214F5AB74@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, unint64_t *a8@<X8>)
{
  v15 = type metadata accessor for ICObjectReferences(0, a3, a5, a3);
  result = ICObjectReferences.mapIdentifiers<A>(_:)(a1, a2, v15, a4, a6, a8);
  if (v8)
  {
    *a7 = v8;
  }

  return result;
}

uint64_t ICObjectReferences.leastCommonFolderOrNote.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  v5 = *v3;
  if (*v3 < 0)
  {
    *a2 = v5;
  }

  else
  {
    sub_214F5B1C8(a1, a3);
    sub_2150A4FD0();

    swift_getWitnessTable();
    sub_2150A5440();

    if ((~v10 & 0xF000000000000007) != 0)
    {
      sub_214F5B1C8(a1, v7);

      v8 = sub_2150A4F80();

      if (v8 == 1)
      {
        ICObjectReferences.leastCommonFolderOrNote.getter(a1, a2);
        return sub_214F5B538(v10);
      }

      sub_214F5B538(v10);
    }

    *a2 = v5;
  }
}

uint64_t ICObjectReferences.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *v2;
  ICObjectReferences.identifier.getter(v7, v6);
  sub_2150A49B0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t static ICObjectReferences.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = v21 - v11;
  v14 = *v13;
  v21[1] = *v10;
  v17 = type metadata accessor for ICObjectReferences(0, v15, v16, v16);
  ICObjectReferences.identifier.getter(v17, v12);
  v21[0] = v14;
  ICObjectReferences.identifier.getter(v17, v8);
  v18 = sub_2150A4A80();
  v19 = *(v5 + 8);
  v19(v8, a3);
  v19(v12, a3);
  return v18 & 1;
}

uint64_t ICObjectReferences.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_2150A64B0();
  ICObjectReferences.hash(into:)(v4, a1);
  return sub_2150A64E0();
}

uint64_t sub_214F5B00C(uint64_t a1, uint64_t a2)
{
  sub_2150A64B0();
  ICObjectReferences.hash(into:)(v4, a2);
  return sub_2150A64E0();
}

BOOL static ICObjectReferences.< infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ICObjectReferences(0, a3, a4, a4);
  ICObjectReferences.title.getter(v4, v5);
  if (!v6)
  {
    return 1;
  }

  ICObjectReferences.title.getter(v4, v6);
  if (v7)
  {
    sub_214D6E6C4();
    v8 = sub_2150A58D0();

    return v8 == -1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_214F5B154(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  }

  else
  {

    return sub_2150A6110();
  }
}

uint64_t sub_214F5B1C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2 >> 62;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x28223BE20](a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0, &unk_2150C2DE0);
      sub_2150A4FD0();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v5 = swift_projectBox();
      v6 = (TupleTypeMetadata + 80);
      return *(v5 + *v6);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0, &unk_2150C2DE0);
    sub_2150A4FD0();
    goto LABEL_7;
  }

  if (v3)
  {
    sub_2150A4FD0();
LABEL_7:
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    goto LABEL_8;
  }

  sub_2150A4FD0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
LABEL_8:
  v5 = swift_projectBox();
  v6 = (TupleTypeMetadata3 + 64);
  return *(v5 + *v6);
}

uint64_t sub_214F5B474@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t *a2@<X8>, uint64_t a3@<X3>)
{
  v6 = type metadata accessor for ICObjectReferences(0, *(v3 + 16), *(v3 + 24), a3);
  result = a1(v6);
  *a2 = result;
  return result;
}

uint64_t sub_214F5B538(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_214F5B56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214F5B5C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214F5B61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersistedActivityEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistedActivityEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void static NSObject<>.ic_fetchRequest()(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() entity];
  v2 = [v1 name];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42080, &qword_2150C3018);
    v3 = sub_2150A4AD0();
    v5 = v4;

    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_214F5B8F0(v3, v5);
  }

  else
  {
    __break(1u);
  }
}

id sub_214F5B8F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2150A4A90();

  v4 = [v2 initWithEntityName_];

  return v4;
}

Swift::Void __swiftcall ICAttachment.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  if ([v1 attachmentType] == 12)
  {
    sub_214F5BD28(sub_214D6DCB0, sub_214D6DD3C, 140, 0x8A, &v17);
    sub_214F30080(v17, v18, v19, v9);
    v10 = sub_2150A3750();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_214F5C454(v9);
    }

    else
    {
      sub_2150A3650();
      (*(v11 + 8))(v9, v10);
    }

    v14 = [v1 title];
    if (v14)
    {
LABEL_11:
      v15 = v14;
      sub_2150A4AD0();
    }
  }

  else
  {
    sub_214F5BD28(sub_214D6DCB0, sub_214D6DD3C, 40, 0x26, &v17);
    sub_214D6DEA4(v17, v18, v19, v6);
    v12 = sub_2150A3750();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) == 1)
    {
      sub_214F5C454(v6);
    }

    else
    {
      sub_2150A3650();
      (*(v13 + 8))(v6, v12);
    }

    v14 = [v1 title];
    if (v14)
    {
      goto LABEL_11;
    }
  }

  sub_214F301C4(MEMORY[0x277D84F90]);
  sub_2150A5710();
}

uint64_t sub_214F5BD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(_BYTE *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v73 = a4;
  v74 = a2;
  v69 = a3;
  v8 = sub_2150A3F30();
  v77 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v76 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v65[-v13];
  v15 = [v5 objectID];
  if (![v15 ic_isModernType])
  {
    [v15 ic_isLegacyType];
  }

  v70 = v65;
  MEMORY[0x28223BE20](v16, v17);
  v75 = v18;
  v65[-16] = v18;
  v19 = qword_280C245E0;
  v20 = v5;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v8, qword_280C24890);
  v22 = v77;
  v71 = *(v77 + 16);
  v72 = v21;
  v71(v14);
  v23 = swift_allocObject();
  *(v23 + 16) = 2;
  if (sub_214D6DCAC(v23, a1, &v65[-32]))
  {
  }

  else
  {
    v24 = sub_2150A5570();
    v25 = sub_2150A3F10();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v66 = v24;
      v27 = v26;
      v67 = swift_slowAlloc();
      v80 = v67;
      *v27 = 136315650;
      v28 = sub_2150A5B70();
      v30 = sub_214F7723C(v28, v29, &v80);
      v68 = a5;
      v31 = v30;

      *(v27 + 4) = v31;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v73;
      *(v27 + 22) = 2080;
      v78 = 0;
      v79 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000038, 0x80000002150E2580);
      v32 = [v20 ic_loggingDescription];
      v33 = sub_2150A4AD0();
      v35 = v34;

      v36 = v33;
      a5 = v68;
      MEMORY[0x2160617E0](v36, v35);

      v37 = sub_214F7723C(v78, v79, &v80);

      *(v27 + 24) = v37;
      v22 = v77;
      _os_log_impl(&dword_214D51000, v25, v66, "Failed assertion at %s:%lu: %s", v27, 0x20u);
      v38 = v67;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v38, -1, -1);
      MEMORY[0x216064AF0](v27, -1, -1);
    }
  }

  v73 = *(v22 + 8);
  v73(v14, v8);

  v39 = v76;
  v40 = [v20 identifierURIPathComponent];
  if (v40)
  {
    v42 = v40;
    v43 = sub_2150A4AD0();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xE000000000000000;
  }

  v70 = v65;
  MEMORY[0x28223BE20](v40, v41);
  *&v65[-16] = v43;
  *&v65[-8] = v45;
  (v71)(v39, v72, v8);
  v46 = swift_allocObject();
  *(v46 + 16) = 2;
  v47 = v20;
  if (sub_214D6DCAC(v46, v74, &v65[-32]))
  {

LABEL_18:
    v63 = v39;
    goto LABEL_19;
  }

  v48 = sub_2150A5570();
  v49 = sub_2150A3F10();
  if (!os_log_type_enabled(v49, v48))
  {

    goto LABEL_18;
  }

  v50 = swift_slowAlloc();
  LODWORD(v72) = v48;
  v51 = v50;
  v74 = swift_slowAlloc();
  v80 = v74;
  *v51 = 136315650;
  v52 = sub_2150A5B70();
  v54 = sub_214F7723C(v52, v53, &v80);
  v68 = a5;
  v55 = v54;

  *(v51 + 4) = v55;
  *(v51 + 12) = 2048;
  *(v51 + 14) = v69;
  *(v51 + 22) = 2080;
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_2150A5B20();

  v78 = 0xD00000000000002CLL;
  v79 = 0x80000002150E2550;
  v56 = [v47 ic_loggingDescription];
  v57 = sub_2150A4AD0();
  v59 = v58;

  v60 = v57;
  a5 = v68;
  MEMORY[0x2160617E0](v60, v59);

  v61 = sub_214F7723C(v78, v79, &v80);

  *(v51 + 24) = v61;
  _os_log_impl(&dword_214D51000, v49, v72, "Failed assertion at %s:%lu: %s", v51, 0x20u);
  v62 = v74;
  swift_arrayDestroy();
  MEMORY[0x216064AF0](v62, -1, -1);
  MEMORY[0x216064AF0](v51, -1, -1);

  v63 = v76;
LABEL_19:
  v73(v63, v8);

  *a5 = v75;
  *(a5 + 8) = v43;
  *(a5 + 16) = v45;
  return result;
}

uint64_t sub_214F5C454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214F5C4BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42090, &qword_2150C3068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C3020;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42098, &qword_2150C3070);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2150C25D0;
  *(v1 + 32) = sub_214D55670(0, &qword_280C244E0, 0x277CBC388);
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2150C25D0;
  *(v2 + 32) = sub_214D55670(0, &qword_280C244D8, 0x277CBC3B8);
  *(inited + 56) = v2;
  *(inited + 64) = 2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2150C25D0;
  *(v3 + 32) = sub_214D55670(0, &qword_280C244F0, 0x277CBC3E0);
  *(inited + 72) = v3;
  *(inited + 80) = 3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2150C25D0;
  *(v4 + 32) = sub_214D55670(0, &qword_280C244E8, 0x277CBC4A0);
  *(inited + 88) = v4;
  v5 = sub_214FA4AB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA420A0, qword_2150C3078);
  result = swift_arrayDestroy();
  off_280C24620 = v5;
  return result;
}

char *CloudOperationObserver.__allocating_init(queue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_214F5CF50(a1);

  return v4;
}

char *CloudOperationObserver.init(queue:)(void *a1)
{
  v2 = sub_214F5CF50(a1);

  return v2;
}

id CloudOperationObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudOperationObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudOperationObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214F5C868(void *a1)
{
  if (qword_280C24618 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v2 = off_280C24620;
    v3 = off_280C24620 + 64;
    v4 = 1 << *(off_280C24620 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(off_280C24620 + 8);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (!v6)
    {
      break;
    }

LABEL_5:
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = (v9 << 9) | (8 * v10);
    v18 = *(v2[6] + v11);
    v12 = *(v2[7] + v11);
    v13 = *(v12 + 16);

    v14 = 0;
    while (1)
    {
      if (v13 == v14)
      {

        v8 = v9;
        if (!v6)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      if (v14 >= *(v12 + 16))
      {
        break;
      }

      v15 = v14 + 1;
      v16 = [a1 isKindOfClass_];
      v14 = v15;
      if (v16)
      {

        return v18;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  while (1)
  {
LABEL_6:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_18;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

void sub_214F5CA10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - v4;
  v6 = [a1 ic_cloudSession];
  if (v6)
  {
    v25 = v6;
    v7 = sub_214F5C868(a1);
    if (v8)
    {
      v9 = v25;
    }

    else
    {
      v10 = v7;
      v11 = OBJC_IVAR___ICCloudSession_queue;
      *(&v24 - 2) = MEMORY[0x28223BE20](v25, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D90, &qword_2150C2710);
      sub_2150A55B0();
      v12 = aBlock[0];
      if (*(aBlock[0] + 16) && (v13 = sub_214FB1920(v10), (v14 & 1) != 0))
      {
        v15 = *(*(v12 + 56) + 8 * v13);

        v16 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate;
        swift_beginAccess();
        sub_214F5D4A4(v15 + v16, v5);

        v17 = sub_2150A3960();
        if ((*(*(v17 - 8) + 48))(v5, 1, v17) != 1)
        {

          sub_214F5D43C(v5);
          return;
        }
      }

      else
      {

        v18 = sub_2150A3960();
        (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      }

      sub_214F5D43C(v5);
      v19 = *&v25[v11];
      v20 = swift_allocObject();
      *(v20 + 16) = v25;
      *(v20 + 24) = v10;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_214F3FC44;
      *(v21 + 24) = v20;
      aBlock[4] = sub_214F5D518;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_214F34100;
      aBlock[3] = &block_descriptor_21;
      v22 = _Block_copy(aBlock);
      v23 = v25;

      dispatch_sync(v19, v22);
      _Block_release(v22);
      LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

      if (v19)
      {
        __break(1u);
      }
    }
  }
}

void sub_214F5CDA0(void *a1, uint64_t a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() && (v3 = [a1 ic_cloudSession]) != 0 && (v4 = *&v3[OBJC_IVAR___ICCloudSession_queue], v5 = v3, v6 = swift_allocObject(), *(v6 + 16) = v5, v7 = swift_allocObject(), *(v7 + 16) = sub_214F3FBC8, *(v7 + 24) = v6, v10[4] = sub_214F5D418, v10[5] = v7, v10[0] = MEMORY[0x277D85DD0], v10[1] = 1107296256, v10[2] = sub_214F34100, v10[3] = &block_descriptor_3, v8 = _Block_copy(v10), v9 = v5, , , dispatch_sync(v4, v8), _Block_release(v8), LOBYTE(v4) = swift_isEscapingClosureAtFileLocation(), v9, , , (v4 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    sub_214F5CA10(a1);
  }
}

char *sub_214F5CF50(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ICCloudOperationObserver_logger;
  if (qword_280C24598 != -1)
  {
    swift_once();
  }

  v5 = sub_2150A3F30();
  v6 = __swift_project_value_buffer(v5, qword_280C245A0);
  v7 = *(*(v5 - 8) + 16);
  v7(&v2[v4], v6, v5);
  v8 = type metadata accessor for OperationQueueObserver(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___ICOperationQueueObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR___ICOperationQueueObserver_queueObservation] = 0;
  v10 = OBJC_IVAR___ICOperationQueueObserver_observationsLock;
  v11 = a1;
  v12 = sub_214FA49BC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A38, qword_2150C2030);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  *&v9[v10] = v13;
  v7(&v9[OBJC_IVAR___ICOperationQueueObserver_logger], v6, v5);
  *&v9[OBJC_IVAR___ICOperationQueueObserver_queue] = v11;
  v23.receiver = v9;
  v23.super_class = v8;
  v14 = v11;
  v15 = objc_msgSendSuper2(&v23, sel_init);
  v22 = v14;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v15;
  v17 = sub_2150A3600();

  v18 = *&v16[OBJC_IVAR___ICOperationQueueObserver_queueObservation];
  *&v16[OBJC_IVAR___ICOperationQueueObserver_queueObservation] = v17;

  *&v2[OBJC_IVAR___ICCloudOperationObserver_queueObserver] = v16;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CloudOperationObserver(0);
  v19 = objc_msgSendSuper2(&v21, sel_init);
  *(*&v19[OBJC_IVAR___ICCloudOperationObserver_queueObserver] + OBJC_IVAR___ICOperationQueueObserver_delegate + 8) = &protocol witness table for CloudOperationObserver;
  swift_unknownObjectWeakAssign();
  return v19;
}

uint64_t type metadata accessor for CloudOperationObserver(uint64_t a1)
{
  result = qword_280C248A8;
  if (!qword_280C248A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214F5D248(uint64_t a1)
{
  result = sub_2150A3F30();
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

uint64_t sub_214F5D43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214F5D4A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Result.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v11 + 56))(a2, 1, 1);
    return (*(v6 + 8))(v8, a1);
  }

  else
  {
    v14 = *(a1 + 16);
    (*(v11 + 32))(a2, v8, v10);
    return (*(v12 + 56))(a2, 0, 1, v14);
  }
}

uint64_t Result.error.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a1 + 24);
  v11 = *(v10 - 8);
  v12 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = *(a1 + 24);
    (*(v11 + 32))(a2, v8, v10);
    return (*(v12 + 56))(a2, 0, 1, v13);
  }

  else
  {
    (*(v11 + 56))(a2, 1, 1);
    return (*(v6 + 8))(v8, a1);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TelephonyUtilitiesFeature(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TelephonyUtilitiesFeature(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_214F5D8B0()
{
  v2 = sub_2150A5B70();
  MEMORY[0x2160617E0](47, 0xE100000000000000);
  v0 = sub_2150A5B70();
  MEMORY[0x2160617E0](v0);

  return v2;
}

unint64_t sub_214F5D934(uint64_t a1)
{
  *(a1 + 8) = sub_214F544B0();
  result = sub_214F5D964();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214F5D964()
{
  result = qword_27CA420A8;
  if (!qword_27CA420A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA420A8);
  }

  return result;
}

id ICTTTextEdit.init(timestamp:replicaID:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v20 - v10;
  sub_214F5D4A4(a1, &v20 - v10);
  v12 = sub_2150A3960();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v14 = sub_2150A38F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = sub_2150A39A0();
  v17 = [v15 initWithTimestamp:v14 replicaID:v16 range:{a3, a4}];

  v18 = sub_2150A3A00();
  (*(*(v18 - 8) + 8))(a2, v18);
  sub_214F5D43C(a1);
  return v17;
}

uint64_t TagID.displayText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TagID.displayText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static TagID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2150A6270();
  }
}

uint64_t TagID.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214F5DCA4()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214F5DCF8()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214F5DD40(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2150A6270();
  }
}

uint64_t sub_214F5DD74()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = sub_2150A4AD0();
  MEMORY[0x2160617E0](58, 0xE100000000000000);
  MEMORY[0x2160617E0](6775156, 0xE300000000000000);
  MEMORY[0x2160617E0](47, 0xE100000000000000);
  MEMORY[0x2160617E0](v1, v2);
  return v4;
}

uint64_t static TagID.entityIdentifier(for:)@<X0>(uint64_t *a3@<X8>)
{
  v87 = a3;
  v79 = sub_2150A42C0();
  v86 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v3);
  v78 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2150A4340();
  v77 = *(v80 - 8);
  v6 = MEMORY[0x28223BE20](v80, v5);
  v74 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v75 = v71 - v9;
  v82 = sub_2150A42D0();
  v76 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v10);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78, &qword_2150C2C70);
  MEMORY[0x28223BE20](v13, v14);
  v81 = v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48, &qword_2150C25E0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v71 - v18;
  v20 = sub_2150A4360();
  v84 = *(v20 - 8);
  v85 = v20;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v83 = v71 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA420B0, &qword_2150C3180);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = v71 - v29;
  v31 = sub_2150A3240();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A3210();
  if ((*(v32 + 48))(v30, 1, v31) != 1)
  {
    (*(v32 + 32))(v35, v30, v31);
    sub_2150A31F0();
    if (!v37)
    {
      goto LABEL_12;
    }

    v38 = sub_2150A4A90();

    v39 = ICIsNotesURLScheme(v38);

    if ((v39 & 1) == 0)
    {
      goto LABEL_12;
    }

    v40 = sub_2150A3190();
    v41 = v83;
    MEMORY[0x216060F30](v40);
    v42 = sub_2150A42E0();
    (*(*(v42 - 8) + 56))(v19, 1, 1, v42);
    sub_2150A4300();
    (*(v84 + 16))(v24, v41, v85);
    sub_2150A42B0();
    v43 = v76;
    v44 = v81;
    v45 = v82;
    (*(v76 + 16))(v81, v12, v82);
    v46 = *(v13 + 36);
    v47 = sub_214F5E6FC(&qword_280C24258, MEMORY[0x277D854A8], MEMORY[0x277D854B8]);
    sub_2150A53D0();
    (*(v43 + 8))(v12, v45);
    v48 = v78;
    v76 = v47;
    sub_2150A5400();
    v49 = sub_214F5E6FC(&unk_280C24268, MEMORY[0x277D85498], MEMORY[0x277D854A0]);
    v50 = v79;
    v73 = v49;
    LOBYTE(v41) = sub_2150A4A80();
    v51 = v86 + 8;
    v72 = *(v86 + 8);
    v72(v48, v50);
    if ((v41 & 1) == 0)
    {
      v86 = v51;
      v52 = sub_2150A5470();
      v53 = v77;
      v54 = *(v77 + 16);
      v55 = v75;
      v71[1] = v77 + 16;
      v71[0] = v54;
      v54(v75);
      v52(v88, 0);
      v71[2] = v46;
      sub_2150A5410();
      v56 = sub_2150A4330();
      v58 = v57;
      v59 = *(v53 + 8);
      v77 = v53 + 8;
      v75 = v59;
      (v59)(v55, v80);
      if (v56 == 6775156 && v58 == 0xE300000000000000)
      {

        v44 = v81;
        goto LABEL_10;
      }

      v60 = sub_2150A6270();

      v44 = v81;
      if (v60)
      {
LABEL_10:
        v61 = v78;
        sub_2150A5400();
        v62 = v79;
        v63 = sub_2150A4A80();
        v72(v61, v62);
        if ((v63 & 1) == 0)
        {
          v65 = sub_2150A5470();
          v66 = v74;
          (v71[0])(v74);
          v65(v88, 0);
          sub_2150A5410();
          v67 = sub_2150A4330();
          v69 = v68;
          sub_214F302D4(v44, qword_27CA41F78, &qword_2150C2C70);
          (*(v84 + 8))(v83, v85);
          (*(v32 + 8))(v35, v31);
          result = (v75)(v66, v80);
          v70 = v87;
          *v87 = v67;
          v70[1] = v69;
          return result;
        }
      }
    }

    sub_214F302D4(v44, qword_27CA41F78, &qword_2150C2C70);
    (*(v84 + 8))(v83, v85);
LABEL_12:
    result = (*(v32 + 8))(v35, v31);
    goto LABEL_13;
  }

  result = sub_214F302D4(v30, &qword_27CA420B0, &qword_2150C3180);
LABEL_13:
  v64 = v87;
  *v87 = 0;
  v64[1] = 0;
  return result;
}

uint64_t sub_214F5E6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NotesShared::TagID __swiftcall TagID.init(_:)(ICHashtag *a1)
{
  v3 = v1;
  v4 = [(ICHashtag *)a1 displayText];
  if (v4)
  {
    v6 = v4;
    v7 = sub_2150A4AD0();
    v9 = v8;

    *v3 = v7;
    v3[1] = v9;
  }

  else
  {
    __break(1u);
  }

  result.displayText._object = v5;
  result.displayText._countAndFlagsBits = v4;
  return result;
}

unint64_t sub_214F5E7B4(void *a1)
{
  a1[1] = sub_214F5E7EC();
  a1[2] = sub_214F5E840();
  result = sub_214F5E894();
  a1[3] = result;
  return result;
}

unint64_t sub_214F5E7EC()
{
  result = qword_27CA420B8;
  if (!qword_27CA420B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA420B8);
  }

  return result;
}

unint64_t sub_214F5E840()
{
  result = qword_27CA420C0;
  if (!qword_27CA420C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA420C0);
  }

  return result;
}

unint64_t sub_214F5E894()
{
  result = qword_27CA420C8;
  if (!qword_27CA420C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA420C8);
  }

  return result;
}

unint64_t sub_214F5E8EC()
{
  result = qword_27CA420D0[0];
  if (!qword_27CA420D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA420D0);
  }

  return result;
}

uint64_t sub_214F5E940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214F5E988(uint64_t result, int a2, int a3)
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

Swift::Void __swiftcall ICNote.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11[-v4 - 8];
  sub_214F5EC48(sub_214F5F3B8, sub_214F5F3B4, v11);
  sub_214F30070(v11[0], v12, v13, v5);
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_214F5C454(v5);
  }

  else
  {
    sub_2150A3650();
    (*(v7 + 8))(v5, v6);
  }

  v8 = [v1 title];
  if (v8)
  {
    v9 = v8;
    sub_2150A4AD0();
  }

  sub_214F301C4(MEMORY[0x277D84F90]);
  sub_2150A5710();
}

uint64_t sub_214F5EC48@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v6 = sub_2150A3F30();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v68[-v13];
  v15 = [v3 objectID];
  v16 = [v15 ic_isModernType];
  v77 = v11;
  if (!v16)
  {
    [v15 ic_isLegacyType];
  }

  v72 = v68;
  MEMORY[0x28223BE20](v17, v18);
  v76 = v19;
  v68[-16] = v19;
  v20 = qword_280C245E0;
  v21 = v3;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v6, qword_280C24890);
  v73 = *(v7 + 16);
  v74 = v22;
  v73(v14);
  v23 = swift_allocObject();
  *(v23 + 16) = 2;
  v24 = sub_214D6DCAC(v23, a1, &v68[-32]);
  v78 = v7;
  if (v24)
  {

    v25 = v7;
  }

  else
  {
    v26 = sub_2150A5570();
    v27 = sub_2150A3F10();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v69 = v26;
      v29 = v28;
      v70 = swift_slowAlloc();
      v81 = v70;
      *v29 = 136315650;
      v30 = sub_2150A5B70();
      v32 = sub_214F7723C(v30, v31, &v81);
      v71 = a3;
      v33 = v32;

      *(v29 + 4) = v33;
      *(v29 + 12) = 2048;
      *(v29 + 14) = 16;
      *(v29 + 22) = 2080;
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000032, 0x80000002150E2680);
      v34 = [v21 ic_loggingDescription];
      v35 = sub_2150A4AD0();
      v37 = v36;

      v38 = v35;
      a3 = v71;
      MEMORY[0x2160617E0](v38, v37);

      v39 = sub_214F7723C(v79, v80, &v81);

      *(v29 + 24) = v39;
      _os_log_impl(&dword_214D51000, v27, v69, "Failed assertion at %s:%lu: %s", v29, 0x20u);
      v40 = v70;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v40, -1, -1);
      MEMORY[0x216064AF0](v29, -1, -1);
    }

    v25 = v78;
  }

  v41 = *(v25 + 8);
  v41(v14, v6);

  v42 = [v21 identifier];
  if (v42)
  {
    v44 = v42;
    sub_2150A4AD0();

    v45 = sub_2150A4B40();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  MEMORY[0x28223BE20](v42, v43);
  *&v68[-16] = v45;
  *&v68[-8] = v47;
  v48 = v77;
  (v73)(v77, v74, v6);
  v49 = swift_allocObject();
  *(v49 + 16) = 2;
  v50 = v21;
  if (sub_214D6DCAC(v49, v75, &v68[-32]))
  {

    v41(v48, v6);
  }

  else
  {
    v74 = v68;
    v75 = v41;
    v52 = sub_2150A5570();
    v53 = sub_2150A3F10();
    if (os_log_type_enabled(v53, v52))
    {
      v54 = swift_slowAlloc();
      LODWORD(v72) = v52;
      v55 = v54;
      v73 = swift_slowAlloc();
      v81 = v73;
      *v55 = 136315650;
      v56 = sub_2150A5B70();
      v58 = sub_214F7723C(v56, v57, &v81);
      v71 = a3;
      v59 = v58;

      *(v55 + 4) = v59;
      *(v55 + 12) = 2048;
      *(v55 + 14) = 18;
      *(v55 + 22) = 2080;
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_2150A5B20();

      v79 = 0xD000000000000026;
      v80 = 0x80000002150E2650;
      v60 = [v50 ic_loggingDescription];
      v61 = sub_2150A4AD0();
      v63 = v62;

      v64 = v61;
      a3 = v71;
      MEMORY[0x2160617E0](v64, v63);

      v65 = sub_214F7723C(v79, v80, &v81);

      *(v55 + 24) = v65;
      _os_log_impl(&dword_214D51000, v53, v72, "Failed assertion at %s:%lu: %s", v55, 0x20u);
      v66 = v73;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v66, -1, -1);
      MEMORY[0x216064AF0](v55, -1, -1);

      v67 = v77;
    }

    else
    {

      v67 = v48;
    }

    v75(v67, v6);
  }

  *a3 = v76;
  *(a3 + 8) = v45;
  *(a3 + 16) = v47;
  return result;
}

uint64_t sub_214F5F3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214F5F3F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_214F5F440(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_214F5F494(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_214FB6DA0(a3, a4);
  if (!v4)
  {
    if (v10)
    {
      v11 = result;
      v12 = v10;
      sub_2150A5B20();
      v13 = sub_214F5F73C(a1, a2, a3, a4);
      MEMORY[0x2160617E0](v13);

      MEMORY[0x2160617E0](2570, 0xE200000000000000);
      MEMORY[0x2160617E0](v11, v12);

      MEMORY[0x2160617E0](0x1000000000000016, 0x80000002150E26C0);
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v14 = sub_2150A6100();
      MEMORY[0x2160617E0](v14);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      MEMORY[0x2160617E0](1886152040, 0xE400000000000000);
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v15 = sub_2150A6100();
      MEMORY[0x2160617E0](v15);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      MEMORY[0x2160617E0](0xD00000000000001ELL, 0x80000002150E26E0);
      return 0;
    }

    else
    {
      return sub_214F5F73C(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_214F5F73C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2[2])
  {
    v7 = a2[4];
    v6 = a2[5];

    sub_2150A5B20();

    v8 = (*(*(a4 + 8) + 8))(a3);
    MEMORY[0x2160617E0](v8);

    MEMORY[0x2160617E0](0xD000000000000020, 0x80000002150E2700);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v9 = sub_2150A6100();
    MEMORY[0x2160617E0](v9);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](v7, v6);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v10 = sub_2150A6100();
    MEMORY[0x2160617E0](v10);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    v11 = 46;
    v12 = 0xE100000000000000;
  }

  else
  {
    sub_2150A5B20();

    v13 = (*(*(a4 + 8) + 8))(a3);
    MEMORY[0x2160617E0](v13);

    v11 = 0xD000000000000021;
    v12 = 0x80000002150E2730;
  }

  MEMORY[0x2160617E0](v11, v12);
  return 0x20919B9FF020;
}

uint64_t getEnumTagSinglePayload for NotesServiceConnection(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NotesServiceConnection(_WORD *result, int a2, int a3)
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

NotesShared::NotesServiceConnection::Environment_optional __swiftcall NotesServiceConnection.Environment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_214F5FB90()
{
  result = qword_27CA42158;
  if (!qword_27CA42158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42158);
  }

  return result;
}

uint64_t sub_214F5FBE4()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1 + 1);
  return sub_2150A64E0();
}

uint64_t sub_214F5FC5C()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1 + 1);
  return sub_2150A64E0();
}

uint64_t getEnumTagSinglePayload for NotesServiceConnection.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotesServiceConnection.Environment(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t (*sub_214F5FE18(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v22 = result;
    v23 = a3;
    v21 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_214F6163C(v8, v27);
      v10 = v6(v27);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v27);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_214D7A458(v27, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_214F86DA0(0, *(v9 + 16) + 1, 1);
          v9 = v28;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_214F86DA0((v12 > 1), v13 + 1, 1);
        }

        v14 = v25;
        v15 = v26;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        MEMORY[0x28223BE20](v16, v16);
        v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v18);
        sub_214F71418(v13, v18, &v28, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_0(v24);
        v9 = v28;
        v6 = v22;
        v4 = v23;
        v5 = v21;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v27);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_214F60048(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for NoteEditActivityEvent(0);
  v27 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v26 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v14 = v23 - v13;
  v25 = *(a3 + 16);
  if (v25)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v23[1] = a2;
    v24 = a3;
    v23[0] = a1;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v18 = *(v27 + 72);
      sub_214F736B4(a3 + v17 + v18 * v15, v14, type metadata accessor for NoteEditActivityEvent);
      v19 = a1(v14);
      if (v3)
      {
        sub_214F73828(v14, type metadata accessor for NoteEditActivityEvent);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_214F7371C(v14, v26, type metadata accessor for NoteEditActivityEvent);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_214F86E88(0, *(v16 + 16) + 1, 1);
          v16 = v28;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_214F86E88((v21 > 1), v22 + 1, 1);
          v16 = v28;
        }

        *(v16 + 16) = v22 + 1;
        result = sub_214F7371C(v26, v16 + v17 + v22 * v18, type metadata accessor for NoteEditActivityEvent);
        a3 = v24;
        a1 = v23[0];
      }

      else
      {
        result = sub_214F73828(v14, type metadata accessor for NoteEditActivityEvent);
      }

      if (v25 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_15:

    return v16;
  }

  return result;
}

uint64_t sub_214F602D4()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA42160);
  v1 = __swift_project_value_buffer(v0, qword_27CA42160);
  if (qword_280C24278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C24280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ICActivityStreamDigest.Summary.Formats.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t _s11NotesShared12CallerOriginO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_214F6047C()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t ICActivityStreamDigest.Summary.Participants.userIds.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ICActivityStreamDigest.Summary.Participants.names.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ICActivityStreamDigest.Summary.markdown.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ICActivityStreamDigest.Summary.markdown.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ICActivityStreamDigest.Summary.participants.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t ICActivityStreamDigest.Summary.participants.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = a1[2];
  v6 = a1[3];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 33) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  return result;
}

char *ICActivityStreamDigest.init(resolver:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v74 - v10;
  v12 = sub_2150A3960();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v75 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v76 = &v74 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v74 - v21;
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  ObjectType = swift_getObjectType();
  v79 = [v23 initWithResolver_];
  if (!v79)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v78 = *(a2 + 1);
  v25 = (v78)(ObjectType, a2);
  if (!v25)
  {
    goto LABEL_7;
  }

  v26 = v25;
  v77 = ObjectType;
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {

    ObjectType = v77;
LABEL_7:
    v32 = v79;
    [v79 setLastActivitySummaryViewedDate_];
    [v32 setRecentUpdatesGenerationDate_];
    v33 = v78;
    v34 = (v78)(ObjectType, a2);
    if (v34)
    {
      v35 = v34;
      v13 = ObjectType;
      if (qword_27CA41480 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }

    if (qword_27CA41480 != -1)
    {
      swift_once();
    }

    v44 = sub_2150A3F30();
    __swift_project_value_buffer(v44, qword_27CA42160);
    v45 = sub_2150A3F10();
    v46 = sub_2150A5560();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = ObjectType;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_214D51000, v45, v46, "Cannot create activity digest without object", v48, 2u);
      v49 = v48;
      ObjectType = v47;
      MEMORY[0x216064AF0](v49, -1, -1);
    }

    goto LABEL_26;
  }

  v28 = v27;
  v74 = v26;
  v29 = [v28 lastActivitySummaryViewedDate];
  if (v29)
  {
    v30 = v29;
    sub_2150A3930();

    v31 = sub_2150A38F0();
    (*(v13 + 1))(v22, v12);
  }

  else
  {
    v31 = 0;
  }

  [v79 setLastActivitySummaryViewedDate_];

  v50 = [v28 recentUpdatesGenerationDate];
  if (v50)
  {
    v51 = v50;
    sub_2150A3930();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  ObjectType = v77;
  (*(v13 + 7))(v8, v52, 1, v12);
  sub_214F71500(v8, v11);
  if ((*(v13 + 6))(v11, 1, v12))
  {
    sub_214F302D4(v11, &qword_27CA41DD0, &unk_2150C2740);
    v53 = 0;
  }

  else
  {
    v54 = v75;
    (*(v13 + 2))(v75, v11, v12);
    sub_214F302D4(v11, &qword_27CA41DD0, &unk_2150C2740);
    v55 = v76;
    sub_2150A3840();
    v56 = *(v13 + 1);
    v13 += 8;
    v56(v54, v12);
    v53 = sub_2150A38F0();
    v56(v55, v12);
  }

  v32 = v79;
  [v79 setRecentUpdatesGenerationDate_];
  v57 = v74;

  v33 = v78;
LABEL_26:
  while (1)
  {
    v58 = v32;
    v59 = (v33)(ObjectType, a2);
    v78 = v58;
    v35 = v58;
    v60 = sub_214F61108(v59);

    v32 = *(v60 + 2);
    if (!v32)
    {
      break;
    }

    v61 = 0;
    v62 = v60 + 32;
    v33 = MEMORY[0x277D84F90];
    v79 = a2;
    while (v61 < *(v60 + 2))
    {
      sub_214F6163C(v62, &v83);
      v63 = v84;
      v13 = v85;
      v35 = __swift_project_boxed_opaque_existential_1(&v83, v84);
      if ((*(v13 + 8))(a1, a2, v63, v13))
      {
        sub_214D7A458(&v83, v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_214F86DA0(0, *(v33 + 2) + 1, 1);
          v33 = v86;
        }

        v66 = *(v33 + 2);
        v65 = *(v33 + 3);
        if (v66 >= v65 >> 1)
        {
          sub_214F86DA0((v65 > 1), v66 + 1, 1);
        }

        v35 = v81;
        v67 = v82;
        v68 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
        MEMORY[0x28223BE20](v68, v68);
        v13 = &v74 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v70 + 16))(v13);
        sub_214F71418(v66, v13, &v86, v35, v67);
        __swift_destroy_boxed_opaque_existential_0(v80);
        v33 = v86;
        a2 = v79;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v83);
      }

      ++v61;
      v62 += 40;
      if (v32 == v61)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
LABEL_9:
    v36 = sub_2150A3F30();
    __swift_project_value_buffer(v36, qword_27CA42160);
    v37 = v35;
    v38 = sub_2150A3F10();
    v39 = sub_2150A5540();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = [v37 objectID];
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&dword_214D51000, v38, v39, "Object does not support activity digests {objectID: %@}", v40, 0xCu);
      sub_214F302D4(v41, &qword_27CA41DF0, &qword_2150C2940);
      v43 = v41;
      v33 = v78;
      MEMORY[0x216064AF0](v43, -1, -1);
      MEMORY[0x216064AF0](v40, -1, -1);
    }

    else
    {
    }

    ObjectType = v13;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_38:

  swift_getKeyPath();
  *&v83 = v33;

  sub_214F6E43C(sub_214F73888, 0, sub_214F422B8, sub_214F6E5B0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
  v71 = sub_2150A4EB0();

  v72 = v78;
  [v78 setRecentActivityEventsStorage_];

  swift_unknownObjectRelease();
  return v72;
}