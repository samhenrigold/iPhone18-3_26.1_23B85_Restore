uint64_t PrivacyHeaderSupplementaryItem.deinit()
{

  sub_24E6585F8(v0 + 24);
  return v0;
}

uint64_t PrivacyHeaderSupplementaryItem.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24E9BC08C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24E9BC108@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyHeaderSupplementaryItem.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24E9BC19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a3;
  v4 = sub_24F920558();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v6 = swift_task_alloc();
  v3[17] = v6;
  *v6 = v3;
  v6[1] = sub_24E9BC2B8;

  return MEMORY[0x28217F228](v3 + 7, v5, v5);
}

uint64_t sub_24E9BC2B8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24E9BC65C;
  }

  else
  {
    v2 = sub_24E9BC3CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E9BC3CC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920528();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v2 + 104))(v1, *MEMORY[0x277D0CC20], v3);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_24E9BC4EC;
  v7 = v0[16];
  v8 = v0[13];

  return MEMORY[0x282164968](v8, v7, v4, v5);
}

uint64_t sub_24E9BC4EC()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24E9BC90C;
  }

  else
  {
    v5 = sub_24E9BC848;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24E9BC65C()
{
  v1 = v0[18];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "UpdateGamedActivityInstanceActionImplementation failed to update the activity instance due to error: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[12];
  v11 = *MEMORY[0x277D21CA8];
  v12 = sub_24F928AE8();
  (*(*(v12 - 8) + 104))(v10, v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24E9BC848()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[12];
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E9BC90C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[20];
  if (qword_27F211420 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8B0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "UpdateGamedActivityInstanceActionImplementation failed to update the activity instance due to error: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[12];
  v11 = *MEMORY[0x277D21CA8];
  v12 = sub_24F928AE8();
  (*(*(v12 - 8) + 104))(v10, v11, v12);

  v13 = v0[1];

  return v13();
}

unint64_t sub_24E9BCB1C()
{
  result = qword_27F2163D0;
  if (!qword_27F2163D0)
  {
    type metadata accessor for UpdateGamedActivityInstanceAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2163D0);
  }

  return result;
}

uint64_t sub_24E9BCB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  updated = type metadata accessor for UpdateGamedActivityInstanceAction(0);
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated - 8);
  sub_24E9BCDAC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24E9BCF30(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F970280;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24E9BCDAC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateGamedActivityInstanceAction(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24E9BCE10()
{
  v1 = (type metadata accessor for UpdateGamedActivityInstanceAction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = sub_24F920418();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v1[7];
  v5 = sub_24F928AD8();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24E9BCF30(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateGamedActivityInstanceAction(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_24E9BCF94(uint64_t a1)
{
  v4 = *(type metadata accessor for UpdateGamedActivityInstanceAction(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24E9BC19C(a1, v6, v1 + v5);
}

uint64_t sub_24E9BD088()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E9BD0D0()
{
  v1 = sub_24F91F648();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = *(v0 + 16);
  v67 = *(v0 + 24);
  v68 = v7;
  v8 = *(v0 + 32);
  LODWORD(v9) = *(v0 + 40);
  v10 = swift_allocObject();
  v11 = v9 >> 5;
  if (v9 >> 5 <= 1)
  {
    v66 = v8;
    if (!v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_24F9479A0;
      *(v17 + 32) = 0x6E6F69746361;
      *(v17 + 40) = 0xE600000000000000;
      *(v17 + 48) = 0xD000000000000011;
      *(v17 + 56) = 0x800000024FA4C5B0;
      v13 = MEMORY[0x277D837D0];
      *(v17 + 72) = MEMORY[0x277D837D0];
      *(v17 + 80) = 6447476;
      *(v17 + 88) = 0xE300000000000000;
      *(v17 + 96) = v6;
      *(v17 + 104) = v5;
      *(v17 + 120) = v13;
      *(v17 + 128) = 1682535268;
      *(v17 + 168) = v13;
      v19 = v67;
      v18 = v68;
      *(v17 + 136) = 0xE400000000000000;
      *(v17 + 144) = v18;
      *(v17 + 152) = v19;

      v20 = sub_24E608448(v17);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v10 + 16) = v20;
LABEL_18:
      v16 = v66;
      goto LABEL_19;
    }

    v65 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
    inited = swift_initStackObject();
    v45 = v6;
    v46 = inited;
    *(inited + 16) = xmmword_24F93FC20;
    *(inited + 32) = 0x6E6F69746361;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x800000024FA4C590;
    v47 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = 0x65736143657375;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 96) = v45;
    v64 = v45;
    *(inited + 104) = v5;
    *(inited + 120) = v47;
    *(inited + 128) = 1682535268;
    v49 = v67;
    v48 = v68;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v48;
    *(inited + 152) = v49;
    *(inited + 168) = v47;
    *(inited + 176) = 1702125924;
    *(inited + 184) = 0xE400000000000000;
    v50 = qword_27F210078;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = qword_27F224110;
    sub_24F91F638();
    v52 = sub_24F91F578();
    (*(v2 + 8))(v4, v1);
    v53 = [v51 stringFromDate_];

    v54 = sub_24F92B0D8();
    v56 = v55;

    v13 = MEMORY[0x277D837D0];
    v46[27] = MEMORY[0x277D837D0];
    v46[24] = v54;
    v46[25] = v56;
    v43 = sub_24E608448(v46);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
LABEL_17:
    swift_arrayDestroy();
    *(v10 + 16) = v43;
    LOBYTE(v9) = v65;
    v6 = v64;
    goto LABEL_18;
  }

  if (v11 != 2)
  {
    if (v11 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_24F9479A0;
      *(v12 + 32) = 0x6E6F69746361;
      *(v12 + 40) = 0xE600000000000000;
      strcpy((v12 + 48), "amd.getSegment");
      *(v12 + 63) = -18;
      v13 = MEMORY[0x277D837D0];
      *(v12 + 72) = MEMORY[0x277D837D0];
      *(v12 + 80) = 1684632420;
      *(v12 + 88) = 0xE400000000000000;
      *(v12 + 96) = v6;
      *(v12 + 104) = v5;
      *(v12 + 120) = v13;
      *(v12 + 128) = 0x4E65727574616566;
      *(v12 + 168) = v13;
      *(v12 + 136) = 0xEB00000000656D61;
      strcpy((v12 + 144), "inAppSegments");
      *(v12 + 158) = -4864;
      sub_24E9BEF78(v6, v5, v68, v67, v8, v9);
      v14 = v8;
      v15 = sub_24E608448(v12);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
      swift_arrayDestroy();
      *(v10 + 16) = v15;
      v16 = v14;
      goto LABEL_19;
    }

    v66 = v8;
    v65 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
    v32 = swift_initStackObject();
    v33 = v6;
    v34 = v32;
    *(v32 + 16) = xmmword_24F9479A0;
    *(v32 + 32) = 0x6E6F69746361;
    *(v32 + 40) = 0xE600000000000000;
    *(v32 + 48) = 0xD000000000000011;
    *(v32 + 56) = 0x800000024FA4C540;
    v35 = MEMORY[0x277D837D0];
    *(v32 + 72) = MEMORY[0x277D837D0];
    *(v32 + 80) = 1682535268;
    *(v32 + 88) = 0xE400000000000000;
    *(v32 + 96) = v33;
    v64 = v33;
    *(v32 + 104) = v5;
    *(v32 + 120) = v35;
    *(v32 + 128) = 1702125924;
    *(v32 + 136) = 0xE400000000000000;
    v36 = qword_27F210078;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = qword_27F224110;
    sub_24F91F638();
    v38 = sub_24F91F578();
    (*(v2 + 8))(v4, v1);
    v39 = [v37 stringFromDate_];

    v40 = sub_24F92B0D8();
    v42 = v41;

    v13 = MEMORY[0x277D837D0];
    v34[21] = MEMORY[0x277D837D0];
    v34[18] = v40;
    v34[19] = v42;
    v43 = sub_24E608448(v34);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
    goto LABEL_17;
  }

  v66 = v8;
  v65 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_24F93FC20;
  *(v21 + 32) = 0x6E6F69746361;
  *(v21 + 40) = 0xE600000000000000;
  *(v21 + 48) = 0xD000000000000021;
  *(v21 + 56) = 0x800000024FA4C560;
  v22 = MEMORY[0x277D837D0];
  *(v21 + 72) = MEMORY[0x277D837D0];
  *(v21 + 80) = 0x65736143657375;
  *(v21 + 88) = 0xE700000000000000;
  *(v21 + 96) = v6;
  v64 = v6;
  *(v21 + 104) = v5;
  *(v21 + 120) = v22;
  *(v21 + 128) = 1682535268;
  v24 = v67;
  v23 = v68;
  *(v21 + 136) = 0xE400000000000000;
  *(v21 + 144) = v23;
  *(v21 + 152) = v24;
  *(v21 + 168) = v22;
  *(v21 + 176) = 1702125924;
  *(v21 + 184) = 0xE400000000000000;
  v25 = qword_27F210078;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_27F224110;
  sub_24F91F638();
  v27 = sub_24F91F578();
  (*(v2 + 8))(v4, v1);
  v9 = [v26 stringFromDate_];

  v28 = sub_24F92B0D8();
  v30 = v29;

  v13 = MEMORY[0x277D837D0];
  *(v21 + 216) = MEMORY[0x277D837D0];
  *(v21 + 192) = v28;
  *(v21 + 200) = v30;
  v31 = sub_24E608448(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  *(v10 + 16) = v31;
  LOBYTE(v9) = v65;
  v6 = v64;
  v16 = v66;
  if ((v65 & 1) == 0)
  {
    v72 = MEMORY[0x277D839F8];
    v69 = v66;
    sub_24E98859C(&v69, 0x74756F656D6974, 0xE700000000000000);
  }

LABEL_19:
  v72 = v13;
  v69 = 1936748641;
  v70 = 0xE400000000000000;
  sub_24E98859C(&v69, 0x6E69616D6F64, 0xE600000000000000);
  v69 = v6;
  v70 = v5;
  v71 = v68;
  v72 = v67;
  v73 = v16;
  v74 = v9;
  v57 = sub_24E9BE984();
  if (v58)
  {
    v72 = v13;
    v69 = v57;
    v70 = v58;
    sub_24E98859C(&v69, 0x65696B6F6F436261, 0xE800000000000000);
  }

  v59 = [objc_opt_self() ams_sharedAccountStore];
  v60 = [v59 ams_fetchLocaliTunesAccount];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224118, &unk_24F970408);
  v61 = v60;
  sub_24F92A9D8();
  v72 = sub_24F929638();
  v73 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v69);

  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  v62 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(&v69);

  return v62;
}

uint64_t sub_24E9BDB10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_24F91F4A8();
  __swift_allocate_value_buffer(v3, qword_27F2240F8);
  v4 = __swift_project_value_buffer(v3, qword_27F2240F8);
  sub_24F91F488();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id sub_24E9BDC44()
{
  result = sub_24E9BDC64();
  qword_27F224110 = result;
  return result;
}

id sub_24E9BDC64()
{
  v0 = sub_24F91F7C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224128, &qword_24F970418);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v8 = sub_24F92B098();
  [v7 setDateFormat_];

  sub_24F91F978();
  v9 = sub_24F91F9B8();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    v11 = sub_24F91F998();
    (*(v10 + 8))(v6, v9);
  }

  [v7 setTimeZone_];

  sub_24F91F6F8();
  v12 = sub_24F91F738();
  (*(v1 + 8))(v3, v0);
  [v7 setLocale_];

  return v7;
}

uint64_t AppStoreAMSEngagementRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v83 = a2;
  v82 = a3;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v81 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v75 - v8;
  MEMORY[0x28223BE20](v9);
  v79 = &v75 - v10;
  MEMORY[0x28223BE20](v11);
  v78 = &v75 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v75 - v14;
  MEMORY[0x28223BE20](v16);
  v77 = &v75 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  MEMORY[0x28223BE20](v21);
  v76 = &v75 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v75 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v75 - v27;
  v29 = a1;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v33 = v4;
  v34 = *(v5 + 8);
  v84 = v33;
  v34(v28);
  if (!v32)
  {
    v36 = 1701869940;
    goto LABEL_9;
  }

  v35 = sub_24E9BEDDC(v30, v32);
  if (v35 > 2)
  {
    if (v35 != 3)
    {
      if (v35 == 4)
      {
        v36 = 1682535268;
        v48 = 0xE400000000000000;
        v53 = v81;
        sub_24F928398();
        v37 = sub_24F928348();
        v39 = v54;
        (v34)(v53, v84);
        if (v39)
        {
          v55 = sub_24F9285B8();
          (*(*(v55 - 8) + 8))(v83, v55);
          result = (v34)(v29, v84);
          v41 = 0;
          v43 = 0;
          v46 = 0;
          v47 = 0x80;
          goto LABEL_23;
        }
      }

      else
      {
        v48 = 0xE400000000000000;
        v36 = 1701869940;
      }

LABEL_10:
      v49 = sub_24F92AC38();
      sub_24E8F2E6C();
      swift_allocError();
      v50 = MEMORY[0x277D84F90];
      *v51 = v36;
      v51[1] = v48;
      v51[2] = &type metadata for AppStoreAMSEngagementRequest;
      v51[3] = v50;
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D22540], v49);
      swift_willThrow();
      v52 = sub_24F9285B8();
      (*(*(v52 - 8) + 8))(v83, v52);
      return (v34)(v29, v84);
    }

    v36 = 1682535268;
    v60 = v80;
    sub_24F928398();
    v37 = sub_24F928348();
    v39 = v61;
    (v34)(v60, v84);
    if (v39)
    {
      v62 = sub_24F9285B8();
      (*(*(v62 - 8) + 8))(v83, v62);
      result = (v34)(v29, v84);
      v41 = 0;
      v43 = 0;
      v46 = 0;
      v47 = 96;
      goto LABEL_23;
    }

LABEL_9:
    v48 = 0xE400000000000000;
    goto LABEL_10;
  }

  if (!v35)
  {
    v36 = 6447476;
    sub_24F928398();
    v81 = sub_24F928348();
    v39 = v56;
    (v34)(v25, v84);
    if (!v39)
    {
      v48 = 0xE300000000000000;
      goto LABEL_10;
    }

    v57 = v76;
    sub_24F928398();
    v41 = sub_24F928348();
    v43 = v58;
    (v34)(v57, v84);
    if (v43)
    {
      v59 = sub_24F9285B8();
      (*(*(v59 - 8) + 8))(v83, v59);
      result = (v34)(v29, v84);
      v46 = 0;
      v47 = 0;
      v37 = v81;
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (v35 != 1)
  {
    sub_24F928398();
    v63 = sub_24F928348();
    v39 = v64;
    (v34)(v15, v84);
    if (!v39)
    {
      v36 = 0x65736143657375;
      v48 = 0xE700000000000000;
      goto LABEL_10;
    }

    v65 = v78;
    sub_24F928398();
    v41 = sub_24F928348();
    v43 = v66;
    (v34)(v65, v84);
    if (v43)
    {
      sub_24F928398();
      v46 = sub_24F928308();
      v68 = v67;
      v69 = sub_24F9285B8();
      (*(*(v69 - 8) + 8))(v83, v69);
      v70 = v29;
      v71 = v63;
      v72 = v84;
      (v34)(v70, v84);
      v73 = v72;
      v37 = v71;
      result = (v34)(v79, v73);
      v47 = v68 & 1 | 0x40;
      goto LABEL_23;
    }

LABEL_26:
    v36 = 1682535268;

    goto LABEL_9;
  }

  v36 = 0x65736143657375;
  sub_24F928398();
  v37 = sub_24F928348();
  v39 = v38;
  (v34)(v20, v84);
  if (!v39)
  {
    v48 = 0xE700000000000000;
    goto LABEL_10;
  }

  v40 = v77;
  sub_24F928398();
  v41 = sub_24F928348();
  v43 = v42;
  (v34)(v40, v84);
  if (!v43)
  {
    goto LABEL_26;
  }

  v44 = sub_24F9285B8();
  (*(*(v44 - 8) + 8))(v83, v44);
  result = (v34)(v29, v84);
  v46 = 0;
  v47 = 32;
LABEL_23:
  v74 = v82;
  *v82 = v37;
  v74[1] = v39;
  v74[2] = v41;
  v74[3] = v43;
  v74[4] = v46;
  *(v74 + 40) = v47;
  return result;
}

unint64_t AppStoreAMSEngagementRequest.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 40);
  v4 = v3 >> 5;
  if (v3 >> 5 <= 1)
  {
    if (v4)
    {
      sub_24F92C888();

      v6 = 0xD00000000000001FLL;
    }

    else
    {
      sub_24F92C888();

      v6 = 0xD000000000000014;
    }

    v9 = v6;
    MEMORY[0x253050C20](v2, v1);
    MEMORY[0x253050C20](41, 0xE100000000000000);
    return v9;
  }

  else if (v4 == 2)
  {
    sub_24F92C888();

    MEMORY[0x253050C20](v2, v1);
    MEMORY[0x253050C20](41, 0xE100000000000000);
    result = 0xD000000000000023;
    if ((v3 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_24F93A400;
      *(v7 + 32) = 0xD000000000000023;
      *(v7 + 40) = 0x800000024FA4C4D0;
      MEMORY[0x253050C20](0x2074756F656D6974, 0xE900000000000028);
      sub_24F92BA58();
      *(v7 + 48) = 0;
      *(v7 + 56) = 0xE000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      sub_24E907170();
      v8 = sub_24F92AF68();

      return v8;
    }
  }

  else if (v4 == 3)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6573557261656C63;
  }

  return result;
}

uint64_t sub_24E9BE984()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v23 - v1;
  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v3 = sub_24F92AB18();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v5 = sub_24F92AB08();
    (*(v4 + 8))(v2, v3);
    if (qword_27F210070 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v6 = sub_24F91F4A8();
      __swift_project_value_buffer(v6, qword_27F2240F8);
      v7 = sub_24F91F3B8();
      v8 = [v5 ams:v7 cookiesForURL:?];

      sub_24E9BEFDC();
      v9 = sub_24F92B5A8();

      if (v9 >> 62)
      {
        v10 = sub_24F92C738();
        if (!v10)
        {
LABEL_25:

          return 0;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v10)
        {
          goto LABEL_25;
        }
      }

      v5 = 0;
      v24 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v24)
        {
          v11 = MEMORY[0x253052270](v5, v9);
        }

        else
        {
          if (v5 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v11 = *(v9 + 8 * v5 + 32);
        }

        v12 = v11;
        v13 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v14 = [v11 name];
        v15 = sub_24F92B0D8();
        v17 = v16;

        if (v15 == 0x62615F7078 && v17 == 0xE500000000000000)
        {

LABEL_20:

          v20 = [v12 value];

          v21 = sub_24F92B0D8();
          return v21;
        }

        v19 = sub_24F92CE08();

        if (v19)
        {
          goto LABEL_20;
        }

        ++v5;
        if (v13 == v10)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
    }
  }

  sub_24E94221C(v2);
  return 0;
}

double sub_24E9BECC4@<D0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 ams_storefront];
  if (v5)
  {
    v6 = v5;
    v7 = sub_24F92B0D8();
    v9 = v8;

    v10 = MEMORY[0x277D837D0];
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v12[2] = 0;
  }

  v12[0] = v7;
  v12[1] = v9;
  v12[3] = v10;
  swift_beginAccess();
  sub_24E98859C(v12, 0x6F726665726F7473, 0xEC0000006449746ELL);
  swift_endAccess();
  swift_beginAccess();
  *a3 = *(a2 + 16);

  return result;
}

unint64_t sub_24E9BEDDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24E9BEE34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 41))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 40) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 40) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24E9BEE88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_24E9BEF24()
{

  return swift_deallocObject();
}

double sub_24E9BEF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a6 >> 5;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {

LABEL_4:

    return result;
  }

  if (v9 < 2)
  {

    goto LABEL_4;
  }

  return result;
}

unint64_t sub_24E9BEFDC()
{
  result = qword_27F224120;
  if (!qword_27F224120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F224120);
  }

  return result;
}

uint64_t sub_24E9BF028()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditorialLinkViewModel(uint64_t a1)
{
  result = qword_27F224130;
  if (!qword_27F224130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9BF0F8()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E74EC40();
  sub_24F927DB8();
  v8 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F224140 = result;
  return result;
}

double static AVAudioSession.set(category:mode:options:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F927D88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F927DC8();
  v14 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210080 != -1)
  {
    swift_once();
  }

  v22[1] = qword_27F224140;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  aBlock[4] = sub_24E9BF940;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_34;
  v18 = _Block_copy(aBlock);
  sub_24E5FCA4C(a4, a5);
  v19 = a1;
  v20 = a2;
  sub_24F927DA8();
  v24 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23);

  return result;
}

uint64_t sub_24E9BF65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v10 = [objc_opt_self() sharedInstance];
  v18[0] = 0;
  LODWORD(a4) = [v10 setCategory:a3 mode:a4 options:a5 error:v18];

  if (a4)
  {
    v11 = v18[0];
  }

  else
  {
    v12 = v18[0];
    v13 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v14 = sub_24F92AAE8();
    __swift_project_value_buffer(v14, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v18[3] = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(*(v17 - 1) + 16))(boxed_opaque_existential_1);
    sub_24F928458();
    sub_24E857CC8(v18);
    sub_24F92A5A8();
  }

  return sub_24E9BF968(a1, a2);
}

uint64_t sub_24E9BF8F0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E9BF968(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F927D88();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v10 = sub_24F92BEF8();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_24E9BFC84;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_6_0;
  v12 = _Block_copy(aBlock);
  sub_24E5FCA4C(a1, a2);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

uint64_t sub_24E9BFC44()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E9BFC84()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_24E9BFCB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

GameStoreKit::ProductRatingsAndReviewsComponentType_optional __swiftcall ProductRatingsAndReviewsComponentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ProductRatingsAndReviewsComponentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7461526F54706174;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0x6567617373656DLL;
  }

  v4 = 0x676E697461526F6ELL;
  if (v1 != 3)
  {
    v4 = 0x52746375646F7270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6974615272617473;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

uint64_t sub_24E9BFE74(uint64_t a1)
{
  sub_24F92B218();
}

void sub_24E9BFFB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x7461526F54706174;
  v4 = 0x800000024FA431C0;
  v5 = 0xD000000000000014;
  if (v2 != 5)
  {
    v5 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  v6 = 0xE900000000000073;
  v7 = 0x676E697461526F6ELL;
  if (v2 != 3)
  {
    v7 = 0x52746375646F7270;
    v6 = 0xED00007765697665;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEB0000000073676ELL;
  v9 = 0x6974615272617473;
  if (v2 != 1)
  {
    v9 = 0xD000000000000014;
    v8 = 0x800000024FA431A0;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_24E9C00B8(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  sub_24E60169C(a1, &v19, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v20 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v13 = sub_24F91F668();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v18[1] = v13;
    v18[2] = v15;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v19, &qword_27F235830, &qword_24F93B8C0);
  }

  v16 = v23;
  *(v4 + 24) = v22;
  *(v4 + 40) = v16;
  *(v4 + 56) = v24;
  sub_24E65E0D4(a3, v4 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);
  *(v4 + 16) = v12;
  return v4;
}

uint64_t ProductRatingsAndReviewsComponent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductRatingsAndReviewsComponent.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ProductRatingsAndReviewsComponent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v5 = sub_24F9285B8();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v39 - v8;
  v9 = sub_24F91F6B8();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = a1;
  sub_24F928398();
  v22 = sub_24F928348();
  if (v23)
  {
    v48 = v22;
    v49 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v9;
    v26 = v12;
    v27 = v21;
    v29 = v28;
    (*(v41 + 8))(v11, v25);
    v48 = v24;
    v49 = v29;
    v21 = v27;
    v12 = v26;
  }

  sub_24F92C7F8();
  v30 = *(v13 + 8);
  v30(v20, v12);
  v31 = v51;
  *(v3 + 24) = v50;
  *(v3 + 40) = v31;
  *(v3 + 56) = v52;
  sub_24F928398();
  sub_24E9C07DC();
  v32 = v45;
  sub_24F928218();
  if (v32)
  {
    (*(v46 + 8))(v53, v47);
    v30(v21, v12);
    v30(v17, v12);
    sub_24E6585F8(v3 + 24);
    type metadata accessor for ProductRatingsAndReviewsComponent(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v13 + 8;
    v30(v17, v12);
    *(v3 + 16) = v50;
    sub_24F929608();
    v40 = v21;
    sub_24F928398();
    v39 = v12;
    v33 = v46;
    v34 = *(v46 + 16);
    v35 = v53;
    v45 = 0;
    v36 = v47;
    v34(v43, v53, v47);
    v37 = v44;
    sub_24F929548();
    (*(v33 + 8))(v35, v36);
    v30(v40, v39);
    sub_24E65E0D4(v37, v3 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);
  }

  return v3;
}

unint64_t sub_24E9C07DC()
{
  result = qword_27F224148;
  if (!qword_27F224148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224148);
  }

  return result;
}

uint64_t type metadata accessor for ProductRatingsAndReviewsComponent(uint64_t a1)
{
  result = qword_27F224160;
  if (!qword_27F224160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*static ProductRatingsAndReviewsComponent.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_24F928398();
  sub_24E9C07DC();
  sub_24F928218();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
  v11[0] = v11[1];
  return sub_24E9C0F28(v11, a1, a2);
}

uint64_t static ProductRatingsAndReviewsComponent.tryToMakeInstances(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_24F92AC28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E60169C(a1, v6, &qword_27F2213B0, &qword_24F965EC0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F2213B0, &qword_24F965EC0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_24F92ABF8();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  MEMORY[0x28223BE20](v11);
  *&v14[-16] = a2;
  type metadata accessor for ProductRatingsAndReviewsComponent(0);
  v13 = sub_24F92ABB8();
  (*(v8 + 8))(v10, v7);
  return v13;
}

void (*sub_24E9C0C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_24F928398();
  sub_24E9C07DC();
  sub_24F928218();
  if (v3)
  {

    (*(v8 + 8))(v10, v7);
    result = 0;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v13[0] = v13[1];
    result = sub_24E9C0F28(v13, a1, a2);
  }

  *a3 = result;
  return result;
}

uint64_t ProductRatingsAndReviewsComponent.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t ProductRatingsAndReviewsComponent.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24E9C0EB0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void (*sub_24E9C0F28(_BYTE *a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  v67 = a3;
  v63 = a1;
  v64 = a2;
  v3 = sub_24F9285B8();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v58 - v6;
  MEMORY[0x28223BE20](v7);
  v60 = &v58 - v8;
  MEMORY[0x28223BE20](v9);
  v59 = &v58 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v20 = sub_24F928388();
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v58 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v58 - v34;
  v41 = MEMORY[0x28223BE20](v36);
  v42 = &v58 - v38;
  v43 = *v63;
  if (v43 <= 2)
  {
    if (!*v63)
    {
      (*(v39 + 16))(&v58 - v38, v64, v41);
      (*(v65 + 16))(v19, v67, v66);
      type metadata accessor for TapToRate(0);
      swift_allocObject();
      return TapToRate.init(deserializing:using:)(v42, v19);
    }

    v49 = v39;
    v50 = v37;
    if (v43 == 1)
    {
      type metadata accessor for ProductStarRatings(0);
      (*(v49 + 16))(v35, v64, v50);
      (*(v65 + 16))(v16, v67, v66);
      v47 = v35;
      v48 = v16;
    }

    else
    {
      type metadata accessor for ProductStarRatingsHistogram(0);
      (*(v49 + 16))(v32, v64, v50);
      (*(v65 + 16))(v13, v67, v66);
      v47 = v32;
      v48 = v13;
    }

    return Ratings.__allocating_init(deserializing:using:)(v47, v48);
  }

  if (*v63 <= 4u)
  {
    if (v43 != 3)
    {
      (*(v39 + 16))(v26, v64, v41);
      v54 = v60;
      (*(v65 + 16))(v60, v67, v66);
      return sub_24F1A15E4(v26, v54);
    }

    v44 = v37;
    v45 = v39;
    type metadata accessor for ProductNoRatings(0);
    (*(v45 + 16))(v29, v64, v44);
    v46 = v59;
    (*(v65 + 16))(v59, v67, v66);
    v47 = v29;
    v48 = v46;
    return Ratings.__allocating_init(deserializing:using:)(v47, v48);
  }

  if (v43 == 5)
  {
    v51 = v40;
    (*(v39 + 16))(v40, v64, v41);
    v52 = v62;
    (*(v65 + 16))(v62, v67, v66);
    type metadata accessor for ProductReviewActions(0);
    swift_allocObject();
    return ProductReviewActions.init(deserializing:using:)(v51, v52);
  }

  else
  {
    v55 = v37;
    v56 = v39;
    type metadata accessor for ProductRatingsAndReviewsMessage(0);
    (*(v56 + 16))(v22, v64, v55);
    v57 = v61;
    (*(v65 + 16))(v61, v67, v66);
    return ProductRatingsAndReviewsMessage.__allocating_init(deserializing:using:)(v22, v57);
  }
}

unint64_t sub_24E9C14E0()
{
  result = qword_27F224150;
  if (!qword_27F224150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224150);
  }

  return result;
}

unint64_t sub_24E9C1538()
{
  result = qword_27F224158;
  if (!qword_27F224158)
  {
    type metadata accessor for ProductRatingsAndReviewsComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224158);
  }

  return result;
}

void sub_24E9C15A8(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t SearchResultsLearnMoreNotice.__allocating_init(id:linkableText:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_24E65E064(a1, &v15);
  if (*(&v16 + 1))
  {
    sub_24E9BBAA8(a1);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_24F91F6A8();
    v9 = sub_24F91F668();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v15);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t SearchResultsLearnMoreNotice.init(id:linkableText:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v16);
  if (*(&v17 + 1))
  {
    sub_24E9BBAA8(a1);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_24F91F6A8();
    v10 = sub_24F91F668();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v16);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t SearchResultsLearnMoreNotice.deinit()
{

  sub_24E6585F8(v0 + 24);
  return v0;
}

uint64_t SearchResultsLearnMoreNotice.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24E9C1A6C@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E9C1A98(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24E9C1A98(char *a1, uint64_t a2)
{
  v41 = a2;
  v38 = sub_24F9285B8();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v45 = a1;
  sub_24F928398();
  v16 = sub_24F928348();
  v39 = v9;
  v37 = v10;
  if (v17)
  {
    v42 = v16;
    v43 = v17;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v19 = v6;
    v20 = v4;
    v22 = v21;
    (*(v19 + 8))(v8, v5);
    v42 = v18;
    v43 = v22;
    v4 = v20;
  }

  sub_24F92C7F8();
  v23 = *(v10 + 8);
  v23(v15, v9);
  v24 = v45;
  sub_24F928398();
  v25 = v36;
  v26 = v4;
  v27 = v41;
  v28 = v4;
  v29 = v38;
  (*(v36 + 16))(v26, v41, v38);
  type metadata accessor for LinkableText();
  v30 = swift_allocObject();
  v31 = v40;
  v32 = LinkableText.init(deserializing:using:)(v12, v28);
  if (v31)
  {
    (*(v25 + 8))(v27, v29);
    v23(v24, v39);
    sub_24E9BBAA8(v44);
  }

  else
  {
    v33 = v32;
    type metadata accessor for SearchResultsLearnMoreNotice();
    v30 = swift_allocObject();
    SearchResultsLearnMoreNotice.init(id:linkableText:)(v44, v33);
    (*(v25 + 8))(v27, v29);
    v23(v24, v39);
  }

  return v30;
}

unint64_t sub_24E9C1E44(uint64_t a1, uint64_t a2)
{
  result = qword_27F224170;
  if (!qword_27F224170)
  {
    type metadata accessor for SearchResultsLearnMoreNotice();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224170);
  }

  return result;
}

uint64_t OpenGamesUIAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v33 = v4;
  v30 = *v4;
  v31 = v3;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v39 = sub_24F928388();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v35 = a1;
  sub_24F928398();
  v32 = v8;
  v17 = *(v8 + 16);
  v34 = a2;
  v17(v13, a2, v7);
  sub_24E9C236C();
  sub_24F929548();
  v18 = v38;
  if (v38 == 255)
  {
    v25 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v26 = 0x746567726174;
    v27 = v30;
    v26[1] = 0xE600000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v32 + 8))(v34, v7);
    (*(v36 + 8))(v35, v39);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v33 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target;
    *v19 = v37;
    v19[16] = v18;
    v20 = v35;
    (*(v36 + 16))(v15, v35, v39);
    v21 = v34;
    v22 = v7;
    v17(v10, v34, v7);
    v23 = v31;
    v24 = Action.init(deserializing:using:)(v15, v10);
    if (v23)
    {
      (*(v32 + 8))(v21, v7);
    }

    else
    {
      v7 = v24;
      (*(v32 + 8))(v21, v22);
    }

    (*(v36 + 8))(v20, v39);
  }

  return v7;
}

unint64_t sub_24E9C236C()
{
  result = qword_27F224178;
  if (!qword_27F224178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224178);
  }

  return result;
}

void *OpenGamesUIAction.__allocating_init(target:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - v9;
  v11 = sub_24F928AD8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  v17 = v15 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target;
  *v17 = *a1;
  v17[16] = v16;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  (*(v12 + 16))(v14, a2, v11);
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = (v15 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = v15 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v34, &v31);
  if (*(&v32 + 1))
  {
    v21 = v32;
    *v20 = v31;
    *(v20 + 1) = v21;
    *(v20 + 4) = v33;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v23 = v4;
    v24 = a2;
    v25 = v22;
    v26 = v5;
    v28 = v27;
    (*(v26 + 8))(v7, v23);
    v30[1] = v25;
    v30[2] = v28;
    a2 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v31, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v12 + 8))(a2, v11);
  sub_24E601704(v34, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v10, v15 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v15[2] = 0xD000000000000013;
  v15[3] = 0x800000024FA4C6E0;
  v15[4] = 0;
  v15[5] = 0;
  (*(v12 + 32))(v15 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v14, v11);
  return v15;
}

void *OpenGamesUIAction.init(target:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v27 - v11;
  v13 = sub_24F928AD8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v15) = *(a1 + 16);
  v17 = v3 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target;
  *v17 = *a1;
  v17[16] = v15;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  (*(v14 + 16))(v16, a2, v13);
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = (v3 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  sub_24E65E064(v34, &v28);
  if (*(&v29 + 1))
  {
    v31 = v28;
    v32 = v29;
    v33 = v30;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v7;
    v23 = v22;
    (*(v21 + 8))(v9, v6);
    v27[1] = v20;
    v27[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v28, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v14 + 8))(a2, v13);
  sub_24E601704(v34, &qword_27F235830, &qword_24F93B8C0);
  v24 = v3 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v24 + 4) = v33;
  v25 = v32;
  *v24 = v31;
  *(v24 + 1) = v25;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v3[2] = 0xD000000000000013;
  v3[3] = 0x800000024FA4C6E0;
  v3[4] = 0;
  v3[5] = 0;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16, v13);
  return v3;
}

double OpenGamesUIAction.target.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_24E9C4DC4(v3, v4, v5);
}

uint64_t OpenGamesUIAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  sub_24E634F20(*(v0 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target), *(v0 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target + 16));
  return v0;
}

uint64_t OpenGamesUIAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  sub_24E634F20(*(v0 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target), *(v0 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit17OpenGamesUIAction_target + 16));

  return swift_deallocClassInstance();
}

uint64_t GamesUIDeepLinkTarget.deepLinkURL.getter@<X0>(char *a1@<X8>)
{
  v56 = a1;
  v54 = sub_24F91F378();
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F91EC58();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 8);
  *&v52 = *v1;
  *(&v52 + 1) = v15;
  v16 = *(v1 + 16);
  sub_24F91EC48();
  sub_24F91EC28();
  MEMORY[0x253044590](0, 0xE000000000000000);
  MEMORY[0x2530445A0](47, 0xE100000000000000);
  sub_24F91EBF8();
  v17 = (*(v8 + 48))(v6, 1, v7);
  v55 = v8;
  if (v17 != 1)
  {
    v50 = v11;
    v51 = v12;
    v48 = *(v8 + 32);
    v49 = v8 + 32;
    v48(v10, v6, v7);
    v20 = v7;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        v33 = v50;
        v34 = v51;
        if (v52 > 1)
        {
          if (v52 ^ 2 | *(&v52 + 1))
          {
            strcpy(&v57, "library");
            *(&v57 + 1) = 0xE700000000000000;
            DWORD2(v52) = *MEMORY[0x277CC91D8];
            *&v52 = *(v2 + 104);
            v41 = v53;
            v42 = v54;
            (v52)(v53);
            sub_24E600AEC();
            sub_24F91F468();
            v46 = v7;
            v43 = *(v2 + 8);
            v43(v41, v42);
            strcpy(&v57, "achievements");
            BYTE13(v57) = 0;
            HIWORD(v57) = -5120;
            (v52)(v41, DWORD2(v52), v42);
            sub_24F91F468();
            v43(v41, v42);
            v20 = v46;
            (*(v51 + 8))(v14, v33);
            goto LABEL_11;
          }

          v35 = 0x73646E65697266;
          v36 = 0xE700000000000000;
        }

        else if (v52 == 0)
        {
          v35 = 0x726579616C70;
          v36 = 0xE600000000000000;
        }

        else
        {
          v35 = 0x776F6E2D79616C70;
          v36 = 0xE800000000000000;
        }

        *&v57 = v35;
        *(&v57 + 1) = v36;
        v37 = v2;
        v38 = *(v2 + 104);
        v39 = v53;
        v40 = v54;
        v38(v53, *MEMORY[0x277CC91D8], v54);
        sub_24E600AEC();
        sub_24F91F468();
        (*(v37 + 8))(v39, v40);
        (*(v34 + 8))(v14, v33);
LABEL_11:
        v19 = v56;
        v48(v56, v10, v20);
        v18 = 0;
        return (*(v55 + 56))(v19, v18, 1, v20);
      }

      *&v57 = 1701667175;
      *(&v57 + 1) = 0xE400000000000000;
      LODWORD(v47) = *MEMORY[0x277CC91D8];
      v23 = v2;
      v24 = *(v2 + 104);
      v25 = v53;
      v26 = v54;
      v46 = v20;
      v24(v53);
      sub_24E600AEC();
      sub_24F91F468();
      v27 = *(v23 + 8);
      v27(v25, v26);
      v45 = v27;
      v57 = v52;
      (v24)(v25, v47, v26);
      sub_24F91F468();
      v27(v25, v26);
      strcpy(&v57, "achievements");
      BYTE13(v57) = 0;
      HIWORD(v57) = -5120;
      v20 = v46;
      (v24)(v25, v47, v26);
      sub_24F91F468();
      v45(v25, v26);
    }

    else
    {
      if (v16)
      {
        v21 = 1701667175;
        v22 = 0xE400000000000000;
      }

      else
      {
        v21 = 0x726579616C70;
        v22 = 0xE600000000000000;
      }

      *&v57 = v21;
      *(&v57 + 1) = v22;
      v28 = *MEMORY[0x277CC91D8];
      v47 = *(v2 + 104);
      v29 = v53;
      v30 = v54;
      v47(v53, v28, v54);
      v46 = sub_24E600AEC();
      sub_24F91F468();
      v31 = *(v2 + 8);
      v31(v29, v30);
      v57 = v52;
      v47(v29, v28, v30);
      sub_24F91F468();
      v31(v29, v30);
    }

    (*(v51 + 8))(v14, v50);
    goto LABEL_11;
  }

  (*(v12 + 8))(v14, v11);
  sub_24E601704(v6, &qword_27F228530, &unk_24F93C6E0);
  v18 = 1;
  v19 = v56;
  v20 = v7;
  return (*(v55 + 56))(v19, v18, 1, v20);
}

uint64_t sub_24E9C34D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E9C3558(uint64_t a1)
{
  v2 = sub_24E9C4E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9C3594(uint64_t a1)
{
  v2 = sub_24E9C4E30();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24E9C35D0()
{
  v1 = *v0;
  v2 = 0x6F72506C61636F6CLL;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x6D65766569686361;
  }

  v4 = 0x65676150656D6167;
  if (v1 != 3)
  {
    v4 = 0x73646E65697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726579616C70;
  if (v1 != 1)
  {
    v5 = 0x776F4E79616C70;
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

uint64_t sub_24E9C36B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E9C5970(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E9C36E0(uint64_t a1)
{
  v2 = sub_24E9C4DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9C371C(uint64_t a1)
{
  v2 = sub_24E9C4DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9C3758(uint64_t a1)
{
  v2 = sub_24E9C4ED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9C3794(uint64_t a1)
{
  v2 = sub_24E9C4ED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9C37EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24E9C387C(uint64_t a1)
{
  v2 = sub_24E9C4F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9C38B8(uint64_t a1)
{
  v2 = sub_24E9C4F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9C38F4(uint64_t a1)
{
  v2 = sub_24E9C5028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9C3930(uint64_t a1)
{
  v2 = sub_24E9C5028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9C396C(uint64_t a1)
{
  v2 = sub_24E9C4E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9C39A8(uint64_t a1)
{
  v2 = sub_24E9C4E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9C39E4(uint64_t a1)
{
  v2 = sub_24E9C4F80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9C3A20(uint64_t a1)
{
  v2 = sub_24E9C4F80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E9C3A5C(uint64_t a1)
{
  v2 = sub_24E9C4FD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9C3A98(uint64_t a1)
{
  v2 = sub_24E9C4FD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GamesUIDeepLinkTarget.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224180, &qword_24F9707A0);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224188, &qword_24F9707A8);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224190, &qword_24F9707B0);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224198, &qword_24F9707B8);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v45 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2241A0, &qword_24F9707C0);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v35 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2241A8, &qword_24F9707C8);
  v44 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2241B0, &qword_24F9707D0);
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2241B8, &qword_24F9707D8);
  v52 = *(v18 - 8);
  v53 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  v21 = *(v1 + 8);
  *&v51 = *v1;
  *(&v51 + 1) = v21;
  v22 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9C4DDC();
  sub_24F92D128();
  if (v22 <= 1)
  {
    if (!v22)
    {
      v55 = 1;
      sub_24E9C4FD4();
      v23 = v53;
      sub_24F92CC98();
      sub_24F92CD08();
      (*(v44 + 8))(v15, v13);
      return (*(v52 + 8))(v20, v23);
    }

    v57 = 3;
    sub_24E9C4F2C();
    v24 = v45;
    v23 = v53;
    sub_24F92CC98();
    v25 = v47;
    sub_24F92CD08();
    v26 = v46;
LABEL_7:
    (*(v26 + 8))(v24, v25);
    return (*(v52 + 8))(v20, v23);
  }

  if (v22 == 2)
  {
    v60 = 6;
    sub_24E9C4E30();
    v24 = v48;
    v23 = v53;
    sub_24F92CC98();
    v25 = v50;
    sub_24F92CD08();
    v26 = v49;
    goto LABEL_7;
  }

  if (v51 > 1)
  {
    if (v51 ^ 2 | *(&v51 + 1))
    {
      v59 = 5;
      sub_24E9C4E84();
      v29 = v41;
      v30 = v53;
      sub_24F92CC98();
      v32 = v42;
      v31 = v43;
    }

    else
    {
      v58 = 4;
      sub_24E9C4ED8();
      v29 = v38;
      v30 = v53;
      sub_24F92CC98();
      v32 = v39;
      v31 = v40;
    }
  }

  else
  {
    if (v51 == 0)
    {
      v54 = 0;
      sub_24E9C5028();
      v28 = v53;
      sub_24F92CC98();
      (*(v33 + 8))(v17, v34);
      return (*(v52 + 8))(v20, v28);
    }

    v56 = 2;
    sub_24E9C4F80();
    v29 = v35;
    v30 = v53;
    sub_24F92CC98();
    v32 = v36;
    v31 = v37;
  }

  (*(v32 + 8))(v29, v31);
  return (*(v52 + 8))(v20, v30);
}

uint64_t GamesUIDeepLinkTarget.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224200, &qword_24F9707E0);
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v72 = &v52 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224208, &qword_24F9707E8);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v67 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224210, &qword_24F9707F0);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224218, &qword_24F9707F8);
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x28223BE20](v7);
  v70 = &v52 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224220, &qword_24F970800);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v68 = &v52 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224228, &qword_24F970808);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224230, &qword_24F970810);
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224238, &unk_24F970818);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v20 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24E9C4DDC();
  v21 = v74;
  sub_24F92D108();
  if (!v21)
  {
    v22 = v15;
    v53 = v13;
    v74 = v12;
    v24 = v70;
    v23 = v71;
    v25 = v72;
    v26 = sub_24F92CC78();
    v27 = (2 * *(v26 + 16)) | 1;
    v75 = v26;
    v76 = v26 + 32;
    v77 = 0;
    v78 = v27;
    v28 = sub_24E643444();
    if (v28 != 7 && v77 == v78 >> 1)
    {
      if (v28 > 2u)
      {
        if (v28 > 4u)
        {
          v41 = v69;
          if (v28 == 5)
          {
            v79 = 5;
            sub_24E9C4E84();
            v42 = v67;
            sub_24F92CBA8();
            (*(v63 + 8))(v42, v65);
            (*(v17 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v50 = 0;
            v48 = 3;
            v51 = 3;
          }

          else
          {
            v79 = 6;
            sub_24E9C4E30();
            sub_24F92CBA8();
            v44 = v64;
            v48 = sub_24F92CC28();
            v50 = v47;
            (*(v66 + 8))(v25, v44);
            (*(v17 + 8))(v19, v16);
            swift_unknownObjectRelease();
            v51 = 2;
          }

          v34 = v73;
          goto LABEL_24;
        }

        v29 = v73;
        if (v28 == 3)
        {
          v79 = 3;
          sub_24E9C4F2C();
          sub_24F92CBA8();
          v45 = v59;
          v48 = sub_24F92CC28();
          v50 = v49;
          (*(v60 + 8))(v24, v45);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v51 = 1;
        }

        else
        {
          v79 = 4;
          sub_24E9C4ED8();
          sub_24F92CBA8();
          (*(v61 + 8))(v23, v62);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 3;
          v48 = 2;
        }

        v34 = v29;
LABEL_23:
        v41 = v69;
LABEL_24:
        *v41 = v48;
        *(v41 + 8) = v50;
        *(v41 + 16) = v51;
        return __swift_destroy_boxed_opaque_existential_1(v34);
      }

      if (v28)
      {
        if (v28 == 1)
        {
          v79 = 1;
          sub_24E9C4FD4();
          v36 = v74;
          sub_24F92CBA8();
          v37 = v57;
          v38 = sub_24F92CC28();
          v39 = v36;
          v40 = v73;
          v48 = v38;
          v50 = v46;
          (*(v55 + 8))(v39, v37);
          (*(v17 + 8))(v19, v16);
          swift_unknownObjectRelease();
          v51 = 0;
          v34 = v40;
          goto LABEL_23;
        }

        v79 = 2;
        sub_24E9C4F80();
        v43 = v68;
        sub_24F92CBA8();
        (*(v56 + 8))(v43, v58);
        (*(v17 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v50 = 0;
        v51 = 3;
        v48 = 1;
      }

      else
      {
        v79 = 0;
        sub_24E9C5028();
        sub_24F92CBA8();
        (*(v54 + 8))(v22, v53);
        (*(v17 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v48 = 0;
        v50 = 0;
        v51 = 3;
      }

      v34 = v73;
      goto LABEL_23;
    }

    v30 = sub_24F92C918();
    swift_allocError();
    v31 = v19;
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v33 = &type metadata for GamesUIDeepLinkTarget;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v30 - 8) + 104))(v33, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    (*(v17 + 8))(v31, v16);
    swift_unknownObjectRelease();
  }

  v34 = v73;
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

double sub_24E9C4DC4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_24E9C4DDC()
{
  result = qword_27F2241C0;
  if (!qword_27F2241C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241C0);
  }

  return result;
}

unint64_t sub_24E9C4E30()
{
  result = qword_27F2241C8;
  if (!qword_27F2241C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241C8);
  }

  return result;
}

unint64_t sub_24E9C4E84()
{
  result = qword_27F2241D0;
  if (!qword_27F2241D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241D0);
  }

  return result;
}

unint64_t sub_24E9C4ED8()
{
  result = qword_27F2241D8;
  if (!qword_27F2241D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241D8);
  }

  return result;
}

unint64_t sub_24E9C4F2C()
{
  result = qword_27F2241E0;
  if (!qword_27F2241E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241E0);
  }

  return result;
}

unint64_t sub_24E9C4F80()
{
  result = qword_27F2241E8;
  if (!qword_27F2241E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241E8);
  }

  return result;
}

unint64_t sub_24E9C4FD4()
{
  result = qword_27F2241F0;
  if (!qword_27F2241F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241F0);
  }

  return result;
}

unint64_t sub_24E9C5028()
{
  result = qword_27F2241F8;
  if (!qword_27F2241F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2241F8);
  }

  return result;
}

uint64_t type metadata accessor for OpenGamesUIAction(uint64_t a1)
{
  result = qword_27F224240;
  if (!qword_27F224240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit21GamesUIDeepLinkTargetO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for TodayCardArtworkSizedLayoutMetrics.LayoutSize(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TodayCardArtworkSizedLayoutMetrics.LayoutSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E9C51E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24E9C5294()
{
  result = qword_27F224250;
  if (!qword_27F224250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224250);
  }

  return result;
}

unint64_t sub_24E9C52EC()
{
  result = qword_27F224258;
  if (!qword_27F224258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224258);
  }

  return result;
}

unint64_t sub_24E9C5344()
{
  result = qword_27F224260;
  if (!qword_27F224260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224260);
  }

  return result;
}

unint64_t sub_24E9C539C()
{
  result = qword_27F224268;
  if (!qword_27F224268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224268);
  }

  return result;
}

unint64_t sub_24E9C53F4()
{
  result = qword_27F224270;
  if (!qword_27F224270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224270);
  }

  return result;
}

unint64_t sub_24E9C544C()
{
  result = qword_27F224278;
  if (!qword_27F224278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224278);
  }

  return result;
}

unint64_t sub_24E9C54A4()
{
  result = qword_27F224280;
  if (!qword_27F224280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224280);
  }

  return result;
}

unint64_t sub_24E9C54FC()
{
  result = qword_27F224288;
  if (!qword_27F224288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224288);
  }

  return result;
}

unint64_t sub_24E9C5554()
{
  result = qword_27F224290;
  if (!qword_27F224290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224290);
  }

  return result;
}

unint64_t sub_24E9C55AC()
{
  result = qword_27F224298;
  if (!qword_27F224298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224298);
  }

  return result;
}

unint64_t sub_24E9C5604()
{
  result = qword_27F2242A0;
  if (!qword_27F2242A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242A0);
  }

  return result;
}

unint64_t sub_24E9C565C()
{
  result = qword_27F2242A8;
  if (!qword_27F2242A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242A8);
  }

  return result;
}

unint64_t sub_24E9C56B4()
{
  result = qword_27F2242B0;
  if (!qword_27F2242B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242B0);
  }

  return result;
}

unint64_t sub_24E9C570C()
{
  result = qword_27F2242B8;
  if (!qword_27F2242B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242B8);
  }

  return result;
}

unint64_t sub_24E9C5764()
{
  result = qword_27F2242C0;
  if (!qword_27F2242C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242C0);
  }

  return result;
}

unint64_t sub_24E9C57BC()
{
  result = qword_27F2242C8;
  if (!qword_27F2242C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242C8);
  }

  return result;
}

unint64_t sub_24E9C5814()
{
  result = qword_27F2242D0;
  if (!qword_27F2242D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242D0);
  }

  return result;
}

unint64_t sub_24E9C586C()
{
  result = qword_27F2242D8;
  if (!qword_27F2242D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242D8);
  }

  return result;
}

unint64_t sub_24E9C58C4()
{
  result = qword_27F2242E0;
  if (!qword_27F2242E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242E0);
  }

  return result;
}

unint64_t sub_24E9C591C()
{
  result = qword_27F2242E8;
  if (!qword_27F2242E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2242E8);
  }

  return result;
}

uint64_t sub_24E9C5970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72506C61636F6CLL && a2 == 0xEC000000656C6966;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F4E79616C70 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676150656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73646E65697266 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4C750 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D65766569686361 && a2 == 0xEC00000073746E65)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void *TopShelfCarouselItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v65 - v6;
  v70 = sub_24F92AC28();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v65 - v9;
  v80 = sub_24F9285B8();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v73 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v65 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v71 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v67 = &v65 - v20;
  MEMORY[0x28223BE20](v21);
  v77 = &v65 - v22;
  MEMORY[0x28223BE20](v23);
  v75 = &v65 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  sub_24F928398();
  v28 = sub_24F928348();
  v30 = v29;
  v72 = v17;
  v31 = *(v17 + 8);
  v31(v27, v16);
  v32 = (v3 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_genre);
  *v32 = v28;
  v32[1] = v30;
  sub_24F928398();
  v33 = sub_24F928348();
  v35 = v34;
  v31(v27, v16);
  v36 = (v3 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_summary);
  *v36 = v33;
  v36[1] = v35;
  sub_24F928398();
  sub_24F928268();
  v31(v27, v16);
  sub_24E911D90(v15, v3 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_previewVideoUrl);
  sub_24F928398();
  sub_24F928268();
  v31(v27, v16);
  sub_24E911D90(v15, v3 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_cinemagraphUrl);
  sub_24F928398();
  v37 = sub_24F928348();
  v39 = v38;
  v31(v27, v16);
  v40 = (v3 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_bundleIdentifier);
  v41 = v3;
  *v40 = v37;
  v40[1] = v39;
  v42 = v75;
  sub_24F928398();
  v43 = sub_24F928348();
  v45 = v44;
  v31(v42, v16);
  if (v45)
  {
    v46 = v43;
  }

  else
  {
    v46 = 0;
  }

  v47 = (v41 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_adamId);
  *v47 = v46;
  v47[1] = v45;
  type metadata accessor for TopShelfAction(0);
  sub_24F928398();
  v74 = *(v78 + 16);
  v75 = (v78 + 16);
  v74(v76, v79, v80);
  sub_24E9C6534(&qword_27F2242F0, type metadata accessor for TopShelfAction, &protocol conformance descriptor for TopShelfAction);
  v48 = a1;
  v49 = v31;
  v50 = v16;
  v51 = v41;
  sub_24F929548();
  *(v41 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_installAction) = v82;
  sub_24F928398();
  sub_24E9480E0();
  sub_24F928248();
  v49(v27, v16);
  *(v41 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_remoteControllerRequirement) = v81;
  v52 = v77;
  sub_24F928398();
  v53 = sub_24F928278();
  v49(v52, v16);
  *(v41 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_isAppleArcadeGame) = v53 & 1;
  v54 = v67;
  v77 = v48;
  sub_24F928398();
  v55 = v69;
  sub_24F9282B8();
  v49(v54, v16);
  v56 = v68;
  v57 = v70;
  if ((*(v68 + 48))(v55, 1) == 1)
  {
    sub_24E601704(v55, &qword_27F2213B0, &qword_24F965EC0);
    v58 = MEMORY[0x277D84F90];
  }

  else
  {
    v59 = v66;
    (*(v56 + 32))(v66, v55, v57);
    (*(v56 + 16))(v65, v59, v57);
    v74(v76, v79, v80);
    v69 = type metadata accessor for TopShelfNamedAttribute();
    sub_24E9C6534(&qword_27F2242F8, type metadata accessor for TopShelfNamedAttribute, &protocol conformance descriptor for TopShelfNamedAttribute);
    v58 = sub_24F92B6A8();
    (*(v56 + 8))(v59, v57);
  }

  v60 = v79;
  *(v51 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_namedAttributes) = v58;
  v61 = v71;
  (*(v72 + 16))(v71, v77, v50);
  v62 = v73;
  v74(v73, v60, v80);
  v63 = TopShelfItem.init(deserializing:using:)(v61, v62);
  (*(v78 + 8))(v60, v80);
  v49(v77, v50);
  return v63;
}

uint64_t sub_24E9C6534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TopShelfCarouselItem.genre.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_genre);

  return v1;
}

uint64_t TopShelfCarouselItem.summary.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_summary);

  return v1;
}

uint64_t TopShelfCarouselItem.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_bundleIdentifier);

  return v1;
}

double TopShelfCarouselItem.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_adamId);
  a1[1] = v2;

  return result;
}

uint64_t sub_24E9C66B4()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_previewVideoUrl, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_cinemagraphUrl, &qword_27F228530, &unk_24F93C6E0);
}

void *TopShelfCarouselItem.deinit()
{
  v0 = TopShelfItem.deinit();

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_previewVideoUrl, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20TopShelfCarouselItem_cinemagraphUrl, &qword_27F228530, &unk_24F93C6E0);

  return v0;
}

uint64_t TopShelfCarouselItem.__deallocating_deinit()
{
  TopShelfCarouselItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TopShelfCarouselItem(uint64_t a1)
{
  result = qword_27F224300;
  if (!qword_27F224300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9C691C(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PersonalizationFeedbackRequest.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PersonalizationFeedbackRequest.__allocating_init(id:description:options:hasDivider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 88) = 0;
  sub_24E65E064(a1, &v25);
  if (*(&v26 + 1))
  {
    v15 = v26;
    *(v14 + 48) = v25;
    *(v14 + 64) = v15;
    *(v14 + 80) = v27;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v24[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    v24[1] = v20;
    v24[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v24[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(&v25);
  }

  sub_24E9BBAA8(a1);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5 & 1;
  return v14;
}

uint64_t PersonalizationFeedbackRequest.init(id:description:options:hasDivider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 88) = 0;
  sub_24E65E064(a1, &v26);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(&v26);
  }

  sub_24E9BBAA8(a1);
  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5 & 1;
  return v6;
}

uint64_t PersonalizationFeedbackRequest.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationFeedbackRequest.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PersonalizationFeedbackRequest.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v45[0] = *v3;
  v5 = sub_24F9285B8();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24F928388();
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v46 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45[1] = v45 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v45 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v45 - v19;
  *(v3 + 88) = 0;
  v51 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  if (v22)
  {
    v52 = v21;
    v53 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v52 = v23;
    v53 = v25;
  }

  sub_24F92C7F8();
  v26 = *(v11 + 8);
  v27 = v57;
  v26(v20, v57);
  v28 = v55;
  *(v3 + 48) = v54;
  *(v3 + 64) = v28;
  *(v3 + 80) = v56;
  v29 = v51;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v26(v17, v27);
  if (v32)
  {
    *(v3 + 16) = v30;
    *(v3 + 24) = v32;
    sub_24F928398();
    v34 = v48;
    v33 = v49;
    v35 = *(v48 + 16);
    v45[0] = v26;
    v36 = v50;
    v35(v47, v50, v49);
    type metadata accessor for PersonalizationFeedbackRequestOption();
    sub_24E9C7A5C(&qword_27F224310, v37, type metadata accessor for PersonalizationFeedbackRequestOption, &protocol conformance descriptor for PersonalizationFeedbackRequestOption);
    *(v3 + 32) = sub_24F92B698();
    v38 = v46;
    sub_24F928398();
    v39 = sub_24F928278();
    (*(v34 + 8))(v36, v33);
    v40 = v57;
    v41 = v45[0];
    (v45[0])(v29, v57);
    v41(v38, v40);
    *(v3 + 40) = v39 & 1;
  }

  else
  {
    v42 = sub_24F92AC38();
    sub_24E9C7A5C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v43 = 0x7470697263736564;
    v43[1] = 0xEB000000006E6F69;
    v43[2] = v45[0];
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    (*(v48 + 8))(v50, v49);
    v26(v29, v27);
    sub_24E6585F8(v3 + 48);

    swift_deallocPartialClassInstance();
  }

  return v3;
}

double PersonalizationFeedbackRequest.clickAction.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;

  return result;
}

uint64_t PersonalizationFeedbackRequest.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t PersonalizationFeedbackRequest.deinit()
{

  sub_24E6585F8(v0 + 48);

  return v0;
}

uint64_t PersonalizationFeedbackRequest.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t PersonalizationFeedbackRequestOption.value.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PersonalizationFeedbackRequestOption.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PersonalizationFeedbackRequestOption.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PersonalizationFeedbackRequestOption.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v37 = a2;
  v3 = v2;
  v35 = *v3;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v38 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v13, v5);
  if (v16)
  {
    *(v3 + 16) = v14;
    *(v3 + 24) = v16;

    sub_24F928398();
    v18 = sub_24F928348();
    v20 = v19;
    v34 = v5;
    v35 = v17;
    v17(v10, v5);
    if (v20)
    {

      v14 = v18;
      v16 = v20;
    }

    v21 = v37;
    *(v3 + 32) = v14;
    *(v3 + 40) = v16;
    type metadata accessor for Action(0);
    v22 = v36;
    v23 = v38;
    sub_24F928398();
    v24 = static Action.tryToMakeInstance(byDeserializing:using:)(v22, v21);
    v25 = sub_24F9285B8();
    (*(*(v25 - 8) + 8))(v21, v25);
    v27 = v34;
    v26 = v35;
    v35(v23, v34);
    v26(v22, v27);
    *(v3 + 48) = v24;
  }

  else
  {
    v28 = sub_24F92AC38();
    sub_24E9C7A5C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v29 = 0x656C746974;
    v30 = v35;
    v29[1] = 0xE500000000000000;
    v29[2] = v30;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    v31 = sub_24F9285B8();
    (*(*(v31 - 8) + 8))(v37, v31);
    v17(v38, v5);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t PersonalizationFeedbackRequestOption.deinit()
{

  return v0;
}

uint64_t PersonalizationFeedbackRequestOption.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24E9C7A5C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24E9C7AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  result = a4(a1, a2);
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

double OverlayHomeButtonReservedNotice.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double OverlayHomeButtonReservedNotice.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  sub_24E60169C(v1 + *(v3 + 28), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t OverlayHomeButtonReservedNotice.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  sub_24E60169C(v1 + *(v6 + 32), v5, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v5, a1, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24E9C7F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  sub_24E60169C(a1 + *(v7 + 32), v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v6, a2, &qword_27F215460, &qword_24F942C00);
}

unint64_t sub_24E9C8088()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x6575676573;
  if (v1 != 3)
  {
    v4 = 0x4D747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E656D6167;
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

uint64_t sub_24E9C8120@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E9CBC08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E9C8148(uint64_t a1)
{
  v2 = sub_24E9C84CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9C8184(uint64_t a1)
{
  v2 = sub_24E9C84CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayHomeButtonReservedNotice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224320, &unk_24F971390);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9C84CC();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for OverlayHomeButtonReservedNotice(0);
    v8[13] = 2;
    sub_24F929608();
    sub_24E9C8520(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24E9C84CC()
{
  result = qword_27F224328;
  if (!qword_27F224328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224328);
  }

  return result;
}

uint64_t sub_24E9C8520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OverlayHomeButtonReservedNotice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v35);
  v36 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224330, &qword_24F9713A0);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v11[8];
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v41 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = &v13[v11[9]];
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_24E61DA68(&v44, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = v11[10];
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v42 = v18;
  v20(&v13[v18], 1, 1, v19);
  v21 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24E9C84CC();
  v39 = v9;
  v22 = v40;
  sub_24F92D108();
  if (v22)
  {
    v25 = v41;
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_24E601704(&v13[v25], &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v17, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v13[v42], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v23 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v24 = v38;
    sub_24F92CC68();
    v26 = v45;
    *v13 = v44;
    *(v13 + 1) = v26;
    *(v13 + 4) = v46;
    LOBYTE(v44) = 1;
    v27 = sub_24F92CC28();
    v28 = v41;
    v29 = v37;
    *(v13 + 5) = v27;
    *(v13 + 6) = v30;
    LOBYTE(v44) = 2;
    sub_24E9C8520(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v23, &v13[v28], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v47 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v44, v17, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v44) = 4;
    sub_24E65CAA0();
    v31 = v36;
    v32 = v39;
    sub_24F92CC68();
    (*(v29 + 8))(v32, v24);
    sub_24E61DA68(v31, &v13[v42], &qword_27F215440, &unk_24F942BD0);
    sub_24E9C8B94(v13, v34);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24E9C8BF8(v13);
  }
}

uint64_t sub_24E9C8B94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9C8BF8(uint64_t a1)
{
  v2 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E9C8C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

double sub_24E9C8D8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24E9C8DE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayHomeButtonReservedNotice(0);
  sub_24E60169C(a1 + *(v4 + 28), v7, qword_27F24EC90, &unk_24F93C1D0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24E9C8EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E9C904C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E9C9188(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C938(319);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

double sub_24E9C9274()
{
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  return result;
}

double sub_24E9C9318@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  *a2 = *(v3 + 16);

  return result;
}

uint64_t sub_24E9C93C4(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
    sub_24F91FD78();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_24EDD4478(v3, a1);

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 16) = a1;
}

uint64_t sub_24E9C952C()
{
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  return *(v0 + 24);
}

void sub_24E9C95CC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  *a2 = *(v3 + 24);
}

void sub_24E9C9674(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
    sub_24F91FD78();
  }
}

uint64_t sub_24E9C9784()
{
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  v1 = *(v0 + 32);

  return v1;
}

double sub_24E9C9834@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

uint64_t sub_24E9C98E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
    sub_24F91FD78();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

double sub_24E9C9A50()
{
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  swift_beginAccess();

  return result;
}

double sub_24E9C9B08@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 48);

  return result;
}

uint64_t sub_24E9C9BC8(uint64_t a1)
{
  swift_beginAccess();

  sub_24EDD4930(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
    sub_24F91FD78();
  }
}

uint64_t sub_24E9C9D10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

uint64_t sub_24E9C9D78()
{
  type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel(0);
  swift_allocObject();
  result = sub_24E9C9DB8();
  qword_27F39B3A8 = result;
  return result;
}

uint64_t sub_24E9C9DB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224388, &qword_24F9717B0);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224390, &qword_24F9717B8);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224398, qword_24F9717C0);
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = objc_opt_self();
  v10 = [v9 sharedInstance];
  v11 = [v10 respondingProcessBundleIdentifiers];

  if (v11)
  {
    v12 = sub_24F92BAA8();
  }

  else
  {
    v12 = 0;
  }

  *(v1 + 16) = v12;
  v13 = [v9 sharedInstance];
  v14 = [v13 isAvailable];

  *(v1 + 24) = v14;
  v15 = [v9 sharedInstance];
  v16 = [v15 localizedName];

  if (v16)
  {
    v17 = sub_24F92B0D8();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = MEMORY[0x277D84FA0];
  *(v1 + 32) = v17;
  *(v1 + 40) = v19;
  *(v1 + 48) = v20;
  sub_24F91FDB8();
  v21 = [v9 sharedInstance];
  swift_getKeyPath();
  sub_24F91F368();

  swift_allocObject();
  v31 = v9;
  swift_weakInit();
  v22 = MEMORY[0x277CC9E08];
  sub_24E602068(&qword_27F2243A0, &qword_27F224398, qword_24F9717C0, MEMORY[0x277CC9E08]);

  sub_24F923148();

  (*(v32 + 8))(v8, v6);
  swift_getKeyPath();
  v39 = v1;
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  v39 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24F922F58();
  swift_endAccess();

  v39 = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  v23 = [v9 sharedInstance];
  swift_getKeyPath();
  v24 = v33;
  sub_24F91F368();

  swift_allocObject();
  swift_weakInit();
  sub_24E602068(&qword_27F2243A8, &qword_27F224390, &qword_24F9717B8, v22);
  v25 = v35;
  sub_24F923148();

  (*(v34 + 8))(v24, v25);
  swift_getKeyPath();
  v39 = v1;
  sub_24F91FD88();

  v39 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24F922F58();
  swift_endAccess();

  v39 = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  v26 = [v31 sharedInstance];
  swift_getKeyPath();
  v27 = v36;
  sub_24F91F368();

  swift_allocObject();
  swift_weakInit();

  sub_24E602068(&qword_27F2243B0, &qword_27F224388, &qword_24F9717B0, v22);
  v28 = v38;
  sub_24F923148();

  (*(v37 + 8))(v27, v28);
  swift_getKeyPath();
  v39 = v1;
  sub_24F91FD88();

  v39 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24F922F58();
  swift_endAccess();

  v39 = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  return v1;
}

void sub_24E9CA5D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 respondingProcessBundleIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92BAA8();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

double sub_24E9CA644(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24E9C93C4(v3);
  }

  return result;
}

double sub_24E9CA6A8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v2 == *(Strong + 24))
    {
      *(Strong + 24) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
      sub_24F91FD78();
    }
  }

  return result;
}

void sub_24E9CA7F0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_24F92B0D8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

double sub_24E9CA858(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_24E9C98E0(v2, v3);
  }

  return result;
}

uint64_t sub_24E9CA8D0()
{

  v1 = OBJC_IVAR____TtCV12GameStoreKit40OverlayHomeButtonReservedNoticeComponent40OverlayHomeButtonReservedNoticeViewModel___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24E9CA9AC(uint64_t a1)
{
  result = sub_24F91FDC8();
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

unint64_t sub_24E9CAA88()
{
  result = qword_27F224368;
  if (!qword_27F224368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224368);
  }

  return result;
}

unint64_t sub_24E9CAAE0()
{
  result = qword_27F224370;
  if (!qword_27F224370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224370);
  }

  return result;
}

unint64_t sub_24E9CAB38()
{
  result = qword_27F224378;
  if (!qword_27F224378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224378);
  }

  return result;
}

uint64_t sub_24E9CAB8C()
{
  v1 = v0;
  v2 = sub_24F924848();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 16);
  v20 = *v1;
  v6 = v20;
  if (v21 != 1)
  {

    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v20, &qword_27F224448, &qword_24F971A00);
    (*(v3 + 8))(v5, v2);
    v7 = *(&v19 + 1);
    v6 = v19;
    if (*(&v19 + 1))
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    return v14 & 1;
  }

  v7 = *(&v20 + 1);

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  v19 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224440, &qword_24F971998);
  sub_24F926F38();
  v8 = v18;
  swift_getKeyPath();
  *&v19 = v8;
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  v9 = *(v8 + 16);

  if (v9)
  {
    v19 = *(v1 + 24);
    sub_24F926F38();
    v10 = v18;
    swift_getKeyPath();
    *&v19 = v10;
    sub_24F91FD88();

    v11 = *(v10 + 24);

    if (v11 == 1 && (v19 = *(v1 + 24), sub_24F926F38(), v12 = v18, swift_getKeyPath(), *&v19 = v12, sub_24F91FD88(), , v13 = *(v12 + 40), , , v13))
    {

      v14 = sub_24F4D36F8(v6, v7, v9);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_24E9CAEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243C8, &qword_24F971940);
  MEMORY[0x28223BE20](v4);
  v6 = &v62 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243D0, &qword_24F971948);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v62 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243D8, &qword_24F971950);
  MEMORY[0x28223BE20](v69);
  v11 = &v62 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243E0, &qword_24F971958);
  MEMORY[0x28223BE20](v70);
  v13 = &v62 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243E8, &qword_24F971960);
  MEMORY[0x28223BE20](v72);
  v73 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2243F0, &unk_24F971968);
  MEMORY[0x28223BE20](v15);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  if (sub_24E9CAB8C())
  {
    v63 = v19;
    v64 = v15;
    v65 = v4;
    v66 = v6;
    v67 = a2;
    *v9 = sub_24F9249A8();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224420, &qword_24F971978) + 44)];
    *v20 = sub_24F924C88();
    *(v20 + 1) = 0;
    v20[16] = 0;
    v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224428, &qword_24F971980) + 44)];
    v62 = sub_24F9249A8();
    v76 = 0;
    sub_24E9CB5C0(v2, v68, &v84);
    v79 = v86;
    v80 = v87;
    v81 = v88;
    v77 = v84;
    v78 = v85;
    v82[2] = v86;
    v82[3] = v87;
    v83 = v88;
    v82[0] = v84;
    v82[1] = v85;
    sub_24E60169C(&v77, &v74, &qword_27F224430, &qword_24F971988);
    sub_24E601704(v82, &qword_27F224430, &qword_24F971988);
    *(&v75[1] + 7) = v78;
    *(&v75[2] + 7) = v79;
    *(&v75[3] + 7) = v80;
    *(&v75[4] + 7) = v81;
    *(v75 + 7) = v77;
    v22 = v76;
    v23 = sub_24F9251C8();
    v24 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224438, &qword_24F971990) + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v26 = *MEMORY[0x277CE13B8];
    v27 = sub_24F927748();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    *v24 = v23;
    v28 = v75[0];
    *(v21 + 33) = v75[1];
    v29 = v75[3];
    *(v21 + 49) = v75[2];
    *(v21 + 65) = v29;
    *(v21 + 74) = *(&v75[3] + 9);
    *v21 = v62;
    *(v21 + 1) = 0x402C000000000000;
    v21[16] = v22;
    *(v21 + 17) = v28;
    LOBYTE(v26) = sub_24F9257F8();
    v30 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v26)
    {
      v30 = sub_24F925848();
    }

    sub_24F923318();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_24E6009C8(v9, v11, &qword_27F2243D0, &qword_24F971948);
    v39 = &v11[*(v69 + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = sub_24F925868();
    v41 = sub_24F925848();
    sub_24F925848();
    v42 = sub_24F925848();
    v43 = v66;
    if (v42 != v40)
    {
      v41 = sub_24F925848();
    }

    sub_24F923318();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_24E6009C8(v11, v13, &qword_27F2243D8, &qword_24F971950);
    v52 = &v13[*(v70 + 36)];
    *v52 = v41;
    *(v52 + 1) = v45;
    *(v52 + 2) = v47;
    *(v52 + 3) = v49;
    *(v52 + 4) = v51;
    v52[40] = 0;
    sub_24F927618();
    sub_24F9242E8();
    v53 = v73;
    sub_24E6009C8(v13, v73, &qword_27F2243E0, &qword_24F971958);
    v54 = (v53 + *(v72 + 36));
    v55 = v89;
    v54[4] = v88;
    v54[5] = v55;
    v54[6] = v90;
    v56 = v85;
    *v54 = v84;
    v54[1] = v56;
    v57 = v87;
    v54[2] = v86;
    v54[3] = v57;
    v58 = v71;
    sub_24E6009C8(v53, v71, &qword_27F2243E8, &qword_24F971960);
    v59 = v58;
    v60 = v63;
    sub_24E6009C8(v59, v63, &qword_27F2243F0, &unk_24F971968);
    sub_24E60169C(v60, v43, &qword_27F2243F0, &unk_24F971968);
    swift_storeEnumTagMultiPayload();
    sub_24E9CC200();
    sub_24F924E28();
    return sub_24E601704(v60, &qword_27F2243F0, &unk_24F971968);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24E9CC200();
    return sub_24F924E28();
  }
}

void sub_24E9CB5C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924A78();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  *v54 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224440, &qword_24F971998);
  sub_24F926F38();

  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 sfSymbolName];

  if (!v11)
  {
    goto LABEL_6;
  }

  sub_24F92B0D8();

  *v54 = *(a1 + 24);
  sub_24F926F38();
  v12 = v52;
  swift_getKeyPath();
  v54[0] = v12;
  sub_24E9C8520(&qword_27F224380, type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel, &unk_24F9716A4);
  sub_24F91FD88();

  v13 = *(v12 + 32);
  v11 = *(v12 + 40);

  if (!v11)
  {

LABEL_6:
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0uLL;
    v38 = 0uLL;
    goto LABEL_9;
  }

  v49 = sub_24F926DF8();
  v14 = sub_24F925908();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_24F925968();
  sub_24E601704(v9, &qword_27F214698, &unk_24F95F810);
  sub_24F925958();
  v48 = sub_24F9259A8();

  KeyPath = swift_getKeyPath();
  sub_24E9CC490(*(a2 + 40), *(a2 + 48), v13, v11);
  v17 = v16;

  v47 = a3;
  if (v17)
  {
    sub_24F924A68();
    sub_24F924A58();
    sub_24F924A48();

    sub_24F924A58();
    sub_24F926DF8();
    sub_24F924A38();

    sub_24F924A58();
    sub_24F924A48();

    sub_24F924A58();
    sub_24F924A98();
    v18 = sub_24F925DE8();
    v20 = v19;
    v22 = v21;
    sub_24F9259E8();
    v23 = sub_24F925C98();
    v25 = v24;
    v26 = KeyPath;
    v28 = v27;
    v30 = v29;

    sub_24E600B40(v18, v20, v22 & 1);

    v31 = swift_getKeyPath();
    v32 = v28 & 1;
    KeyPath = v26;
    *&v52 = v23;
    *(&v52 + 1) = v25;
    *v53 = v32;
    *&v53[8] = v30;
    *&v53[16] = v31;
    *&v53[24] = 0;
  }

  else
  {

    v52 = 0u;
    memset(v53, 0, 25);
    v53[25] = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8, &unk_24F964BD0);
  sub_24E62FBF4();
  sub_24F924E28();
  v11 = v54[0];
  v50 = *&v54[3];
  v51 = *&v54[1];
  v39 = v55;
  v40 = v56;
  LOBYTE(v54[0]) = v56;
  v33 = v49;

  v35 = v48;

  v41 = v51;
  v42 = KeyPath;
  v43 = BYTE8(v51);
  v44 = v50;
  sub_24E9CC56C(v11, v51, SBYTE8(v51), v50, *(&v50 + 1), v39, v40);
  v45 = v41;
  v34 = v42;
  sub_24E9CC5BC(v11, v45, v43, v44, *(&v44 + 1), v39, v40);

  v38 = v50;
  v37 = v51;
  v36 = v39 | (v40 << 8);
  a3 = v47;
LABEL_9:
  *a3 = v33;
  *(a3 + 8) = v34;
  *(a3 + 16) = v35;
  *(a3 + 24) = v11;
  *(a3 + 32) = v37;
  *(a3 + 48) = v38;
  *(a3 + 64) = v36;
}

uint64_t sub_24E9CBB84(uint64_t a1)
{
  sub_24E9CC614(*v1, *(v1 + 8), *(v1 + 16));
  sub_24E9CC0A8();

  return sub_24F9218E8();
}

uint64_t sub_24E9CBC08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24E9CBE08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24E9C98E0(v1, v2);
}

uint64_t sub_24E9CBE48()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_24E9CBEF4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_24E9CBF30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_24E9CBFA8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_24E9CBFF4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isAvailable];
  *a2 = result;
  return result;
}

unint64_t sub_24E9CC0A8()
{
  result = qword_27F2243B8;
  if (!qword_27F2243B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2243B8);
  }

  return result;
}

unint64_t sub_24E9CC100()
{
  result = qword_27F2243C0;
  if (!qword_27F2243C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2243C0);
  }

  return result;
}

unint64_t sub_24E9CC200()
{
  result = qword_27F2243F8;
  if (!qword_27F2243F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2243F0, &unk_24F971968);
    sub_24E9CC2B8();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2243F8);
  }

  return result;
}

unint64_t sub_24E9CC2B8()
{
  result = qword_27F224400;
  if (!qword_27F224400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2243E8, &qword_24F971960);
    sub_24E9CC344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224400);
  }

  return result;
}

unint64_t sub_24E9CC344()
{
  result = qword_27F224408;
  if (!qword_27F224408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2243E0, &qword_24F971958);
    sub_24E9CC3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224408);
  }

  return result;
}

unint64_t sub_24E9CC3D0()
{
  result = qword_27F224410;
  if (!qword_27F224410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2243D8, &qword_24F971950);
    sub_24E602068(&qword_27F224418, &qword_27F2243D0, &qword_24F971948, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224410);
  }

  return result;
}

uint64_t sub_24E9CC490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s12GameStoreKit0abC16LocalizedStringsO48GAME_CONTROLLER_HOME_BUTTON_RESERVED_DESCRIPTION7appName06buttonM0S2S_SStFZ_0(a1, a2, a3, a4);
  sub_24E600AEC();
  v4 = sub_24F92C4E8();

  if (*(v4 + 16) == 2)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_24E9CC56C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_24E5FD138(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24E9CC5BC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    sub_24E600B40(result, a2, a3 & 1);
  }

  return result;
}

void sub_24E9CC614(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24E9CC628()
{
  result = qword_27F224450;
  if (!qword_27F224450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224458, &qword_24F971A08);
    sub_24E9CC200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224450);
  }

  return result;
}

uint64_t GuidedSearchFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void GuidedSearchFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F2106B0 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
  __swift_project_value_buffer(v3, qword_27F22E4C0);
  type metadata accessor for Action(0);
  sub_24F929AD8();
  if (!v10[0])
  {
    goto LABEL_13;
  }

  type metadata accessor for SearchAction(0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_13:
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v9 = sub_24F92AAE8();
    __swift_project_value_buffer(v9, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    return;
  }

  v5 = *(v4 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchTokens);
  if (v5 && *(v5 + 16))
  {
    v6 = v4;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v10[0] = v5;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

    sub_24F929A28();
    if (v1)
    {
LABEL_10:

      __swift_destroy_boxed_opaque_existential_1(v10);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    v7 = *(v6 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm + 8);
    if (v7)
    {
      v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_guidedSearchOptimizationTerm);
      v11 = MEMORY[0x277D837D0];
      v10[0] = v8;
      v10[1] = v7;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

      sub_24F929A28();
      goto LABEL_10;
    }
  }
}

uint64_t sub_24E9CCA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E9CCB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GuidedSearchFieldsProvider(uint64_t a1)
{
  result = qword_27F224468;
  if (!qword_27F224468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentMode a1, uint64_t a2, double a3, double a4)
{
  v6 = CGSize.fitting(_:mode:)(__PAIR128__(*&a4, *&a3), a1);
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 scale];

  v9 = floor(v6.width);
  v10 = floor(v6.height);
  sub_24E9F7608(a2, &v30);
  v11 = v30;
  v29 = v31;
  v12 = v32;
  v13 = v33;
  v15 = v4[2];
  v14 = v4[3];

  v16 = [v7 mainScreen];
  [v16 scale];
  v18 = v17;

  v20 = v4[9];
  v19 = v4[10];

  if (v13 == 1)
  {
    v21 = [v7 mainScreen];
    v22 = [v21 traitCollection];

    v23 = [v22 displayGamut];
    v24 = v23 == 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = type metadata accessor for ArtworkLoaderConfig();
  v26 = swift_allocObject();
  *(v26 + 16) = v15;
  *(v26 + 24) = v14;
  *(v26 + 32) = v9;
  *(v26 + 40) = v10;
  *(v26 + 72) = v11;
  *(v26 + 48) = v20;
  *(v26 + 56) = v19;
  *(v26 + 64) = v18;
  *(v26 + 80) = v29;
  *(v26 + 88) = v12;
  *(v26 + 89) = v24;
  v30 = v15;
  v31 = v14;
  if (!Artwork.URLTemplate.isSystemImage.getter() && (v9 <= 0.0 || v10 <= 0.0))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v27 = sub_24F92AAE8();
    __swift_project_value_buffer(v27, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v34 = v25;
    v30 = v26;

    sub_24F928458();
    sub_24E857CC8(&v30);
    sub_24F92A5B8();
  }

  return v26;
}

uint64_t Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v8 = *a1;
  v7 = a1[1];
  sub_24E9F7608(a2, &v31);
  v30 = v32;
  v28 = v31;
  v29 = v33;
  v9 = v34;
  v11 = v4[2];
  v10 = v4[3];
  v12 = objc_opt_self();

  v13 = [v12 mainScreen];
  [v13 scale];

  v14 = [v12 mainScreen];
  [v14 scale];
  v16 = v15;

  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v8 = v4[9];
    v17 = v4[10];
  }

  v18 = floor(a3);
  v19 = floor(a4);

  if (v9)
  {
    v20 = [v12 mainScreen];
    v21 = [v20 traitCollection];

    v22 = [v21 displayGamut];
    v23 = v22 == 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = type metadata accessor for ArtworkLoaderConfig();
  v25 = swift_allocObject();
  *(v25 + 16) = v11;
  *(v25 + 24) = v10;
  *(v25 + 32) = v18;
  *(v25 + 40) = v19;
  *(v25 + 72) = v28;
  *(v25 + 48) = v8;
  *(v25 + 56) = v17;
  *(v25 + 64) = v16;
  *(v25 + 80) = v30;
  *(v25 + 88) = v29;
  *(v25 + 89) = v23;
  v31 = v11;
  v32 = v10;
  if (!Artwork.URLTemplate.isSystemImage.getter() && (v18 <= 0.0 || v19 <= 0.0))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    __swift_project_value_buffer(v26, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v35 = v24;
    v31 = v25;

    sub_24F928458();
    sub_24E857CC8(&v31);
    sub_24F92A5B8();
  }

  return v25;
}

BOOL Artwork.shouldUseWideGamut(for:)(uint64_t a1)
{
  if (*(a1 + 17) != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() mainScreen];
  v2 = [v1 traitCollection];

  v3 = [v2 displayGamut];
  return v3 == 1;
}

uint64_t Artwork.config(using:)(double a1, double a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(v3, 0, a1, a2);
}

uint64_t sub_24E9CD340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E9CD490(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup(uint64_t a1)
{
  result = qword_27F224478;
  if (!qword_27F224478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9CD618(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E9CD70C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2244B0, &unk_24F971CA8);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 72) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 13) = 0;
  v39 = v13 + 72;
  sub_24E61DA68(&v41, (v13 + 72), qword_27F21B590, &unk_24F93BE30);
  v14 = *(v11 + 32);
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v38 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24E9CE78C();
  v18 = v37;
  sub_24F92D108();
  if (v18)
  {
    v19 = v38;
    v20 = v39;
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_24E601704(v20, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v13[v19], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v32 = v5;
    v37 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v21 = v42;
    *v13 = v41;
    *(v13 + 1) = v21;
    *(v13 + 4) = v43;
    LOBYTE(v41) = 1;
    v22 = sub_24F92CC28();
    v23 = v38;
    v24 = v39;
    v25 = v35;
    *(v13 + 5) = v22;
    *(v13 + 6) = v26;
    LOBYTE(v41) = 2;
    *(v13 + 7) = sub_24F92CC28();
    *(v13 + 8) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v44 = 3;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v41, v24, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v41) = 4;
    sub_24E65CAA0();
    v28 = v37;
    sub_24F92CC68();
    v32 = 0;
    sub_24E61DA68(v28, &v13[v23], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v41) = 5;
    sub_24E9CE7E0(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v29 = v34;
    sub_24F92CC18();
    (*(v25 + 8))(v10, v36);
    sub_24E6009C8(v29, &v13[*(v11 + 36)], &qword_27F213E68, &unk_24F93BC80);
    sub_24E9CE828(v13, v33);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_24E9CE88C(v13);
  }
}

uint64_t sub_24E9CDD1C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  v4 = 0x4D747865746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x614E6C6F626D7973;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
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

uint64_t sub_24E9CDDE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E9CEBD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E9CDE08(uint64_t a1)
{
  v2 = sub_24E9CE78C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9CDE44(uint64_t a1)
{
  v2 = sub_24E9CE78C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E9CDE80@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 72, v5, qword_27F24EC90, &unk_24F93C1D0);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24E9CDED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

unint64_t sub_24E9CE000()
{
  result = qword_27F224488;
  if (!qword_27F224488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224488);
  }

  return result;
}

__n128 sub_24E9CE054@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9249A8();
  v35 = 0;
  sub_24E9CE2D0(a1, &v25);
  v43 = v31;
  v44 = v32;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v37 = v25;
  v38 = v26;
  v46[6] = v31;
  v46[7] = v32;
  v46[2] = v27;
  v46[3] = v28;
  v46[4] = v29;
  v46[5] = v30;
  v45 = v33;
  v47 = v33;
  v46[0] = v25;
  v46[1] = v26;
  sub_24E60169C(&v37, v24, &qword_27F2244A0, &qword_24F971C68);
  sub_24E601704(v46, &qword_27F2244A0, &qword_24F971C68);
  *&v34[87] = v42;
  *&v34[103] = v43;
  *&v34[119] = v44;
  *&v34[23] = v38;
  *&v34[39] = v39;
  *&v34[55] = v40;
  *&v34[71] = v41;
  *&v34[135] = v45;
  *&v34[7] = v37;
  v5 = v35;
  LOBYTE(a1) = sub_24F925868();
  LOBYTE(v25) = 1;
  v6 = sub_24F9257F8();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v24[0] = 0;
  sub_24F927628();
  sub_24F9242E8();
  *&v36[55] = v28;
  *&v36[71] = v29;
  *&v36[87] = v30;
  *&v36[103] = v31;
  *&v36[7] = v25;
  *&v36[23] = v26;
  *&v36[39] = v27;
  v15 = *&v34[64];
  *(a2 + 97) = *&v34[80];
  v16 = *&v34[112];
  *(a2 + 113) = *&v34[96];
  *(a2 + 129) = v16;
  *(a2 + 144) = *&v34[127];
  v17 = *v34;
  *(a2 + 33) = *&v34[16];
  v18 = *&v34[48];
  *(a2 + 49) = *&v34[32];
  *(a2 + 65) = v18;
  *(a2 + 81) = v15;
  *a2 = v4;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = v5;
  *(a2 + 17) = v17;
  *(a2 + 160) = a1;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 1;
  *(a2 + 208) = v6;
  *(a2 + 216) = v8;
  *(a2 + 224) = v10;
  *(a2 + 232) = v12;
  *(a2 + 240) = v14;
  *(a2 + 248) = 0;
  result = *&v36[64];
  v20 = *&v36[96];
  *(a2 + 329) = *&v36[80];
  *(a2 + 345) = v20;
  *(a2 + 360) = *&v36[111];
  v21 = *&v36[16];
  *(a2 + 249) = *v36;
  v22 = *&v36[32];
  v23 = *&v36[48];
  *(a2 + 265) = v21;
  *(a2 + 281) = v22;
  *(a2 + 297) = v23;
  *(a2 + 313) = result;
  return result;
}

uint64_t sub_24E9CE2D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  v25 = sub_24F926E48();
  sub_24F927618();
  sub_24F9238C8();
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v28 = sub_24F926D08();

  v27 = sub_24F927618();
  v26 = v4;
  LOBYTE(v45) = v30;
  LOBYTE(v39) = v32;
  v5 = a1[7];
  v6 = a1[8];
  v45 = v5;
  v46 = v6;
  sub_24E600AEC();

  v7 = sub_24F925E18();
  v9 = v8;
  v11 = v10;
  sub_24F9259D8();
  v12 = sub_24F925C98();
  v14 = v13;
  v24 = v15;
  v17 = v16;

  sub_24E600B40(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v19 = sub_24F9251C8();
  *&v39 = v25;
  *(&v39 + 1) = v29;
  LOBYTE(v40) = v30;
  *(&v40 + 1) = *v38;
  DWORD1(v40) = *&v38[3];
  *(&v40 + 1) = v31;
  LOBYTE(v41) = v32;
  *(&v41 + 1) = *v37;
  DWORD1(v41) = *&v37[3];
  *(&v41 + 1) = v33;
  *&v42 = v34;
  *(&v42 + 1) = v28;
  LOWORD(v43) = 256;
  WORD3(v43) = v36;
  *(&v43 + 2) = v35;
  *(&v43 + 1) = v27;
  v44 = v26;
  v20 = v41;
  v21 = v43;
  *(a2 + 48) = v42;
  *(a2 + 64) = v21;
  v22 = v39;
  *(a2 + 16) = v40;
  *(a2 + 32) = v20;
  *a2 = v22;
  *(a2 + 80) = v26;
  *(a2 + 88) = v12;
  *(a2 + 96) = v14;
  *(a2 + 104) = v24 & 1;
  *(a2 + 112) = v17;
  *(a2 + 120) = KeyPath;
  *(a2 + 128) = 0;
  *(a2 + 132) = v19;
  sub_24E60169C(&v39, &v45, &qword_27F2244A8, &qword_24F971CA0);
  sub_24E5FD138(v12, v14, v24 & 1);

  sub_24E600B40(v12, v14, v24 & 1);

  v45 = v25;
  v46 = v29;
  v47 = v30;
  *v48 = *v38;
  *&v48[3] = *&v38[3];
  v49 = v31;
  v50 = v32;
  *v51 = *v37;
  *&v51[3] = *&v37[3];
  v52 = v33;
  v53 = v34;
  v54 = v28;
  v55 = 256;
  v57 = v36;
  v56 = v35;
  v58 = v27;
  v59 = v26;
  return sub_24E601704(&v45, &qword_27F2244A8, &qword_24F971CA0);
}

uint64_t sub_24E9CE5F4(uint64_t a1)
{
  sub_24E9CE000();

  return sub_24F9218E8();
}

unint64_t sub_24E9CE684()
{
  result = qword_27F224498;
  if (!qword_27F224498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224498);
  }

  return result;
}

unint64_t sub_24E9CE78C()
{
  result = qword_27F2244B8;
  if (!qword_27F2244B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2244B8);
  }

  return result;
}

uint64_t sub_24E9CE7E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E9CE828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9CE88C(uint64_t a1)
{
  v2 = type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E9CE8FC()
{
  result = qword_27F2244C0;
  if (!qword_27F2244C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2244C8, &qword_24F971CC8);
    sub_24E9CE988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2244C0);
  }

  return result;
}

unint64_t sub_24E9CE988()
{
  result = qword_27F2244D0;
  if (!qword_27F2244D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2244D8, &qword_24F971CD0);
    sub_24E9CEA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2244D0);
  }

  return result;
}

unint64_t sub_24E9CEA14()
{
  result = qword_27F2244E0;
  if (!qword_27F2244E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2244E8, &qword_24F971CD8);
    sub_24E602068(&qword_27F2244F0, &qword_27F2244F8, &qword_24F971CE0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2244E0);
  }

  return result;
}

unint64_t sub_24E9CEAD0()
{
  result = qword_27F224500;
  if (!qword_27F224500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224500);
  }

  return result;
}

unint64_t sub_24E9CEB28()
{
  result = qword_27F224508;
  if (!qword_27F224508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224508);
  }

  return result;
}

unint64_t sub_24E9CEB80()
{
  result = qword_27F224510;
  if (!qword_27F224510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224510);
  }

  return result;
}

uint64_t sub_24E9CEBD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t static ASDIAPHistory.hasSubscriptions()()
{
  v0 = sub_24F922028();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = aBlock - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224518, &qword_24F9E1340);
  v7 = sub_24F92A9E8();
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v8 = sub_24F929768();
  sub_24F921FE8();

  v9 = [objc_opt_self() sharedInstance];
  (*(v1 + 16))(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = (v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v1 + 32))(v12 + v10, v3, v0);
  *(v12 + v11) = v7;
  aBlock[4] = sub_24E9CF4D0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9CF714;
  aBlock[3] = &block_descriptor_35;
  v13 = _Block_copy(aBlock);

  [v9 getAllIAPsForActiveAccountWithResultHandler_];
  _Block_release(v13);

  (*(v1 + 8))(v6, v0);
  return v7;
}

uint64_t sub_24E9CF078(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v42 = a1;
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v34 - v14;
  sub_24F92C048();
  sub_24F929778();
  v16 = sub_24F929768();
  sub_24F921FE8();

  if (a2)
  {
    v44 = 1;
  }

  else
  {
    v39 = v6;
    v40 = v15;
    v41 = v12;
    v17 = MEMORY[0x277D84F90];
    v18 = v42;
    if (v42)
    {
      v45 = MEMORY[0x277D84F90];
      v19 = v42 & 0xFFFFFFFFFFFFFF8;
      if (v42 >> 62)
      {
        goto LABEL_24;
      }

      v20 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v41; v20; i = v41)
      {
        v34[1] = a4;
        v35 = v20;
        v22 = 0;
        v43 = v18 & 0xC000000000000001;
        v36 = (v7 + 8);
        v37 = (v7 + 32);
        v38 = v19;
        while (1)
        {
          if (v43)
          {
            v23 = MEMORY[0x253052270](v22, v18);
          }

          else
          {
            if (v22 >= *(v19 + 16))
            {
              goto LABEL_23;
            }

            v23 = *(v18 + 8 * v22 + 32);
          }

          v24 = v23;
          a4 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          v25 = [v23 expirationDate];
          if (v25)
          {
            v26 = v25;
            sub_24F91F608();

            v27 = v40;
            v28 = i;
            v29 = v39;
            (*v37)(v40, v28, v39);
            sub_24F91F638();
            sub_24E7C79D8();
            LOBYTE(v26) = sub_24F92AF78();
            v30 = *v36;
            v7 = v9;
            (*v36)(v9, v29);
            v30(v27, v29);
            if (v26)
            {
              v31 = [v24 type];
              v20 = v35;
              if ((v31 & 0xFE) == 2)
              {
                sub_24F92C948();
                sub_24F92C988();
                sub_24F92C998();
                sub_24F92C958();
              }

              else
              {
              }

              i = v41;
              v18 = v42;
              v19 = v38;
            }

            else
            {

              i = v41;
              v18 = v42;
              v19 = v38;
              v20 = v35;
            }
          }

          else
          {
          }

          ++v22;
          if (a4 == v20)
          {
            v17 = v45;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        v20 = sub_24F92C738();
      }

      v17 = MEMORY[0x277D84F90];
    }

LABEL_26:
    if (v17 >> 62)
    {
      v32 = sub_24F92C738();
    }

    else
    {
      v32 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v32 > 0;
  }

  return sub_24F92A9C8();
}

uint64_t sub_24E9CF434()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E9CF4D0(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E9CF078(a1, a2, v2 + v6, v7);
}

uint64_t ASDIAPInfo.isExpired.getter()
{
  v1 = v0;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v19 - v11;
  v13 = [v1 expirationDate];
  if (v13)
  {
    v14 = v13;
    sub_24F91F608();

    (*(v3 + 32))(v12, v8, v2);
    sub_24F91F638();
    sub_24E7C79D8();
    v15 = sub_24F92AF78();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v12, v2);
    v17 = v15 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

uint64_t sub_24E9CF714(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24E9CF7C0();
    v4 = sub_24F92B5A8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E9CF7C0()
{
  result = qword_27F21BCF8;
  if (!qword_27F21BCF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F21BCF8);
  }

  return result;
}

uint64_t sub_24E9CF86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_24F924B38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224530, &qword_24F971ED8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = sub_24F9232F8();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = *(*(a1 + 16) + 56);
  if (v15)
  {
    v16 = type metadata accessor for Action(0);
    v17 = sub_24E9D1074(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    *(&v28 + 1) = 0;
    *&v29 = 0;
  }

  *&v28 = v15;
  *(&v29 + 1) = v16;
  v30 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224538, &qword_24F971EE0);
  v18 = sub_24E9D0A64();
  v31[5] = &type metadata for EditorialLinkView.LinkView;
  v31[6] = v18;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0118], v3);
  v19 = sub_24F924258();
  v31[3] = v19;
  v31[4] = sub_24E9D1074(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(v4 + 16))(boxed_opaque_existential_1 + *(v19 + 20), v6, v3);
  __asm { FMOV            V0.2D, #12.0 }

  *boxed_opaque_existential_1 = _Q0;
  (*(v4 + 8))(v6, v3);
  sub_24E602068(&qword_27F224548, &qword_27F224530, &qword_24F971ED8, MEMORY[0x277D7EB00]);
  sub_24E620DE8();
  sub_24F926178();
  sub_24E6A56E8(&v28);
  return (*(v11 + 8))(v13, v10);
}

double sub_24E9CFC74(uint64_t a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = v6[7];
  if (v7)
  {
    v8 = *(v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  v10 = v6[4];
  v9 = v6[5];
  v12 = v6[2];
  v11 = v6[3];

  sub_24F9248B8();
  v14[1] = v8;
  v14[2] = v10;
  v14[3] = v9;
  v14[4] = v12;
  v14[5] = v11;
  sub_24E9D0A64();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);

  return result;
}

double sub_24E9CFDD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224550, &qword_24F971F78);
  sub_24E9CFFD4(v2, a2 + *(v4 + 44));
  v5 = sub_24F925808();
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224558, &qword_24F971F80) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_24F925808();
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224560, &qword_24F971F88) + 36);
  *v16 = 1;
  *(v16 + 8) = v15;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224568, &unk_24F971F90) + 36));
  v18 = *(sub_24F924258() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_24F924B38();
  v21 = *(*(v20 - 8) + 104);
  v21(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #12.0 }

  *v17 = _Q0;
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224570, &qword_24F971FA0) + 36);
  v28 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v21((v27 + v28[6]), v19, v20);
  result = 0.0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0x4028000000000000;
  *(v27 + v28[7]) = 1;
  v30 = v27 + v28[8];
  *v30 = 0;
  *(v30 + 8) = 1;
  return result;
}

uint64_t sub_24E9CFFD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224578, &qword_24F971FA8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224580, &qword_24F971FB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  *v16 = sub_24F924978();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224588, &qword_24F971FB8);
  sub_24E9D02C8(a1, &v16[*(v17 + 44)]);
  v25[1] = sub_24F926DF8();
  sub_24F9268B8();

  LODWORD(a1) = sub_24F9251B8();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224590, &unk_24F971FC0) + 36)] = a1;
  v18 = &v10[*(v5 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v20 = *MEMORY[0x277CE1058];
  v21 = sub_24F926E78();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  sub_24E60169C(v16, v13, &qword_27F224580, &qword_24F971FB0);
  sub_24E9D0C50(v10, v7);
  sub_24E60169C(v13, a2, &qword_27F224580, &qword_24F971FB0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224598, &qword_24F972000);
  v23 = a2 + *(v22 + 48);
  *v23 = 0x402C000000000000;
  *(v23 + 8) = 0;
  sub_24E9D0C50(v7, a2 + *(v22 + 64));
  sub_24E9D0CC0(v10);
  sub_24E601704(v16, &qword_27F224580, &qword_24F971FB0);
  sub_24E9D0CC0(v7);
  return sub_24E601704(v13, &qword_27F224580, &qword_24F971FB0);
}

uint64_t sub_24E9D02C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for SwiftUIArtworkView(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245A0, &qword_24F972008);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v34[-v11 - 8];
  v44 = *a1;
  v13 = v44;
  if (v44)
  {
    v14 = v9;
    v15 = v3[6];
    v16 = &v34[-v11 - 8];
    v17 = a1;
    v18 = *MEMORY[0x277CE1010];
    v19 = sub_24F926E68();
    v20 = &v6[v15];
    v9 = v14;
    v21 = v18;
    a1 = v17;
    v12 = v16;
    (*(*(v19 - 8) + 104))(v20, v21, v19);
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *v6 = v13;
    v6[24] = 1;
    v22 = &v6[v3[7]];
    *v22 = 0;
    *(v22 + 1) = 0;
    v22[16] = 1;
    v6[v3[8]] = 2;
    v6[v3[9]] = 0;
    sub_24E9D0D28(v6, v16);
    (*(v4 + 56))(v16, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(&v34[-v11 - 8], 1, 1, v3);
  }

  sub_24E60169C(&v44, v38, &qword_27F2245A8, &qword_24F972010);
  v23 = sub_24F924C98();
  LOBYTE(v38[0]) = 0;
  sub_24E9D066C(a1, v35);
  *&v34[7] = v35[0];
  *&v34[23] = v35[1];
  *&v34[39] = v35[2];
  *&v34[55] = v35[3];
  v24 = v38[0];
  sub_24E60169C(v12, v9, &qword_27F2245A0, &qword_24F972008);
  v25 = v33;
  sub_24E60169C(v9, v33, &qword_27F2245A0, &qword_24F972008);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245B0, &qword_24F972018) + 48);
  *&v36 = v23;
  *(&v36 + 1) = 0x4010000000000000;
  v37[0] = v24;
  *&v37[1] = *v34;
  *&v37[17] = *&v34[16];
  *&v37[33] = *&v34[32];
  *&v37[49] = *&v34[48];
  v27 = *&v34[63];
  *&v37[64] = *&v34[63];
  v28 = *v37;
  *v26 = v36;
  *(v26 + 16) = v28;
  v29 = *&v37[16];
  v30 = *&v37[32];
  v31 = *&v37[48];
  *(v26 + 80) = v27;
  *(v26 + 48) = v30;
  *(v26 + 64) = v31;
  *(v26 + 32) = v29;
  sub_24E60169C(&v36, v38, &qword_27F2245B8, &qword_24F972020);
  sub_24E601704(v12, &qword_27F2245A0, &qword_24F972008);
  v38[0] = v23;
  v38[1] = 0x4010000000000000;
  v39 = v24;
  v41 = *&v34[16];
  v42 = *&v34[32];
  *v43 = *&v34[48];
  *&v43[15] = *&v34[63];
  v40 = *v34;
  sub_24E601704(v38, &qword_27F2245B8, &qword_24F972020);
  return sub_24E601704(v9, &qword_27F2245A0, &qword_24F972008);
}

uint64_t sub_24E9D066C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  if (!v4)
  {
    v6 = 0;
    v10 = 0;
    v8 = 0;
    v11 = a1[2];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = 0;
    v31 = 0;
    v27 = 0;
    goto LABEL_6;
  }

  sub_24E600AEC();

  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7;
  v10 = v9 & 1;
  sub_24E5FD138(v4, v5, v9 & 1);

  v11 = a1[2];
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24E600AEC();

  v12 = sub_24F925E18();
  v14 = v13;
  v16 = v15;
  sub_24F925A18();
  v34 = v6;
  v35 = v4;
  v17 = sub_24F925C98();
  v19 = v18;
  v33 = v8;
  v21 = v20;

  sub_24E600B40(v12, v14, v16 & 1);

  sub_24F9251C8();
  v22 = sub_24F925C58();
  v11 = v23;
  v25 = v24;
  v27 = v26;
  v28 = v21 & 1;
  v29 = v17;
  v4 = v35;
  v30 = v19;
  v8 = v33;
  v6 = v34;
  sub_24E600B40(v29, v30, v28);

  v31 = v25 & 1;
  sub_24E5FD138(v22, v11, v31);

LABEL_6:
  sub_24E65D2B4(v4, v6, v10, v8);
  sub_24E65D2B4(v22, v11, v31, v27);
  sub_24E65D2F8(v4, v6, v10, v8);
  sub_24E65D2F8(v22, v11, v31, v27);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v8;
  a2[4] = v22;
  a2[5] = v11;
  a2[6] = v31;
  a2[7] = v27;
  sub_24E65D2F8(v22, v11, v31, v27);
  return sub_24E65D2F8(v4, v6, v10, v8);
}

uint64_t sub_24E9D0914(uint64_t a1)
{
  sub_24E66D618();

  return sub_24F9218E8();
}

unint64_t sub_24E9D095C()
{
  result = qword_27F224520;
  if (!qword_27F224520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224520);
  }

  return result;
}

unint64_t sub_24E9D0A64()
{
  result = qword_27F224540;
  if (!qword_27F224540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224540);
  }

  return result;
}

uint64_t sub_24E9D0AB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24E9D0B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24E9D0B80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224530, &qword_24F971ED8);
  sub_24E602068(&qword_27F224548, &qword_27F224530, &qword_24F971ED8, MEMORY[0x277D7EB00]);
  sub_24E620DE8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E9D0C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224578, &qword_24F971FA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E9D0CC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224578, &qword_24F971FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E9D0D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwiftUIArtworkView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E9D0D90()
{
  result = qword_27F2245C0;
  if (!qword_27F2245C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224570, &qword_24F971FA0);
    sub_24E9D0E4C();
    sub_24E9D1074(&qword_27F2245F0, type metadata accessor for RoundedRectWithOutsetsModifer, &unk_24F98A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2245C0);
  }

  return result;
}

unint64_t sub_24E9D0E4C()
{
  result = qword_27F2245C8;
  if (!qword_27F2245C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224568, &unk_24F971F90);
    sub_24E9D0F04();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2245C8);
  }

  return result;
}

unint64_t sub_24E9D0F04()
{
  result = qword_27F2245D0;
  if (!qword_27F2245D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224560, &qword_24F971F88);
    sub_24E9D0FBC();
    sub_24E602068(&qword_27F218BC8, &qword_27F218BD0, &qword_24F94A0E0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2245D0);
  }

  return result;
}

unint64_t sub_24E9D0FBC()
{
  result = qword_27F2245D8;
  if (!qword_27F2245D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224558, &qword_24F971F80);
    sub_24E602068(&qword_27F2245E0, &qword_27F2245E8, &qword_24F972028, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2245D8);
  }

  return result;
}

uint64_t sub_24E9D1074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 AppView.init(bootstrapResult:tabsInfoProvider:customDependencies:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  v7 = *(a2 + 16);
  *(a7 + 24) = *a2;
  v8 = *(a2 + 48);
  *(a7 + 16) = *(a1 + 16);
  *(a7 + 40) = v7;
  result = *(a2 + 32);
  *(a7 + 56) = result;
  *(a7 + 72) = v8;
  *(a7 + 80) = a3;
  *(a7 + 88) = a4;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  return result;
}

uint64_t AppView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v40 = sub_24F9216D8();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = type metadata accessor for AppView.LoadedView(255, v6, v7, v8);
  v10 = sub_24F9216A8();
  v11 = sub_24F921688();
  v42 = v9;
  WitnessTable = swift_getWitnessTable();
  v41 = WitnessTable;
  v13 = sub_24E9D39BC(&qword_27F2245F8, MEMORY[0x277D7EAA0], MEMORY[0x277D7EA98]);
  v14 = sub_24E9D39BC(qword_27F224600, MEMORY[0x277D7EA90], MEMORY[0x277D7EA88]);
  *&v45 = v9;
  *(&v45 + 1) = v10;
  *&v46 = v11;
  *(&v46 + 1) = WitnessTable;
  *&v47 = v13;
  *(&v47 + 1) = v14;
  v15 = sub_24F9216C8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  v22 = v2[5];
  v49 = v2[4];
  v50 = v22;
  v51 = v2[6];
  v23 = v2[1];
  v45 = *v2;
  v46 = v23;
  v24 = v2[3];
  v47 = v2[2];
  v48 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB70, &unk_24F93B720);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_24F93DE60;
  *(v25 + 32) = sub_24F92A498();
  v26 = v39;
  *v39 = v25;
  (*(v4 + 104))(v26, *MEMORY[0x277D7EAB0], v40);
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  *(v27 + 24) = v7;
  v28 = v50;
  *(v27 + 96) = v49;
  *(v27 + 112) = v28;
  *(v27 + 128) = v51;
  v29 = v46;
  *(v27 + 32) = v45;
  *(v27 + 48) = v29;
  v30 = v48;
  *(v27 + 64) = v47;
  *(v27 + 80) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v6;
  *(v31 + 24) = v7;
  v32 = v50;
  *(v31 + 96) = v49;
  *(v31 + 112) = v32;
  *(v31 + 128) = v51;
  v33 = v46;
  *(v31 + 32) = v45;
  *(v31 + 48) = v33;
  v34 = v48;
  *(v31 + 64) = v47;
  *(v31 + 80) = v34;
  v35 = *(*(a1 - 8) + 16);
  v35(v44, &v45, a1);
  v35(v44, &v45, a1);
  sub_24F923678();
  sub_24E9D1BC8(v26, sub_24E9D1750, v27, sub_24E9D1A38, v31, v18);
  swift_getWitnessTable();
  sub_24E7896B8();
  v36 = *(v16 + 8);
  v36(v18, v15);
  sub_24E7896B8();
  return (v36)(v21, v15);
}

uint64_t sub_24E9D1574(uint64_t (**a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928188();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FlowAuthorityProvider(0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = *(a1 + 5);
  *(v10 + 96) = *(a1 + 4);
  *(v10 + 112) = v11;
  *(v10 + 128) = *(a1 + 6);
  v12 = *(a1 + 1);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  v13 = *(a1 + 3);
  *(v10 + 64) = *(a1 + 2);
  *(v10 + 80) = v13;
  v15 = type metadata accessor for AppView(0, a2, a3, v14);
  (*(*(v15 - 8) + 16))(v19, a1, v15);
  v16 = sub_24F928158();
  a1[10](v16);
  sub_24F928F88();
  v17 = sub_24F928FA8();

  (*(v7 + 8))(v9, v6);
  return v17;
}

uint64_t sub_24E9D175C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10[0] = *(a1 + 24);
  v3 = *(a1 + 56);
  v10[1] = *(a1 + 40);
  v10[2] = v3;
  v11 = *(a1 + 72);
  v4 = *(a1 + 40);
  v8[0] = *(a1 + 24);
  v8[1] = v4;
  v8[2] = *(a1 + 56);
  v9 = *(a1 + 72);
  sub_24F928FD8();
  sub_24E9D3E84(v10, v7);
  v5 = sub_24F928FB8();
  type metadata accessor for FlowAuthorityProvider(0);
  swift_allocObject();
  result = FlowAuthorityProvider.init(tabsInfoProvider:objectGraph:)(v8, v5);
  *a2 = result;
  return result;
}

uint64_t sub_24E9D180C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a1;
  v21 = a4;
  v23 = a5;
  v8 = type metadata accessor for AppView.LoadedView(0, a3, a4, a4);
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_24E9D1A44(a2, a1, &v24);
  v14 = *(a2 + 13);
  v19 = *(a2 + 12);
  v15 = *(a2 + 1);
  type metadata accessor for FlowAuthorityProvider(0);

  sub_24F928F28();
  sub_24E9D1AB4(&v24, v19, v14, v15, a3, v21, v10);

  swift_getWitnessTable();
  sub_24E7896B8();
  v16 = *(v22 + 8);
  v16(v10, v8);
  sub_24E7896B8();
  return (v16)(v13, v8);
}

void sub_24E9D1A44(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  v5 = v8;
  *a3 = v7;
  *(a3 + 16) = v5;
  sub_24E9D3D9C(&v7, v6);

  *a3 = a2;
}

uint64_t sub_24E9D1AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v9;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  v10 = type metadata accessor for AppView.LoadedView(0, a6, a7, a4);
  sub_24E9D39BC(&qword_27F220FB8, type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  sub_24F927378();
  v11 = *(v10 + 48);
  *(a8 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224748, &qword_24F9721B8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24E9D1BC8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  v15[1] = a6;
  v15[2] = a5;
  v15[4] = a3;
  v15[5] = a4;
  v15[3] = a9;
  v10 = sub_24F9216D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(v11 + 16))(v13, a1, v10);
  sub_24F923678();
  sub_24F9216A8();
  sub_24F921688();
  sub_24E9D39BC(&qword_27F2245F8, MEMORY[0x277D7EAA0], MEMORY[0x277D7EA98]);
  sub_24E9D39BC(qword_27F224600, MEMORY[0x277D7EA90], MEMORY[0x277D7EA88]);
  sub_24F9216B8();
  return (*(v11 + 8))(a1, v10);
}

uint64_t sub_24E9D1E18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688, &qword_24F972128);
  sub_24F927358();
  swift_getKeyPath();
  sub_24E9D39BC(&qword_27F220FB8, type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(v2[0] + 16, v2);

  v0 = sub_24E9D1F20();
  sub_24E6585F8(v2);
  return v0;
}

uint64_t sub_24E9D1F20()
{
  sub_24E65864C(v0, &v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  StoreTab.Identifier.init(rawValue:)(v9, v10, &v11);
  v1 = v12;
  if (v12 == 11)
  {
    return 0;
  }

  v3 = v11;
  if (StoreTab.Identifier.rawValue.getter() == 0x776F6E2D79616C70 && v4 == 0xE800000000000000)
  {

LABEL_8:
    sub_24E955DF8(v3, v1);
    return 1701670728;
  }

  v5 = sub_24F92CE08();

  if (v5)
  {
    goto LABEL_8;
  }

  v11 = v3;
  v12 = v1;
  if (StoreTab.Identifier.rawValue.getter() == 0x676F742D79616C70 && v6 == 0xED00007265687465)
  {

    sub_24E955DF8(v3, v1);
    return 0x73646E65697246;
  }

  else
  {
    v7 = sub_24F92CE08();

    if (v7)
    {
      sub_24E955DF8(v3, v1);
      return 0x73646E65697246;
    }

    else
    {
      v11 = v3;
      v12 = v1;
      StoreTab.Identifier.rawValue.getter();
      sub_24E955DF8(v3, v1);
      sub_24E600AEC();
      v8 = sub_24F92C4F8();

      return v8;
    }
  }
}

uint64_t sub_24E9D2144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v4 = sub_24F92C0E8();
  v95 = v4;
  v105 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v104 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(a1 - 8);
  v109 = *(v114 + 64);
  MEMORY[0x28223BE20](v6);
  v79 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *(a1 + 16);
  v80 = *(v108 - 8);
  MEMORY[0x28223BE20](v8);
  v78 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F924038();
  v100 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v11 = *(a1 + 24);
  v111 = &v74 - v12;
  v112 = v11;
  v121 = v11;
  v122 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x277D84030];
  v115 = v10;
  v116 = MEMORY[0x277D84030];
  v81 = v10;
  v15 = MEMORY[0x277D84040];
  v117 = WitnessTable;
  v118 = MEMORY[0x277D84040];
  v82 = WitnessTable;
  v16 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = OpaqueTypeMetadata2;
  v103 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v110 = &v74 - v18;
  v19 = sub_24E9D39BC(&qword_27F21F480, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v96 = v19;
  v115 = v10;
  v116 = v14;
  v117 = WitnessTable;
  v118 = v15;
  v97 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v115 = v4;
  v116 = OpaqueTypeMetadata2;
  v117 = v19;
  v118 = OpaqueTypeConformance2;
  v20 = sub_24F924288();
  v101 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v85 = &v74 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224730, &qword_24F9721B0);
  v86 = v20;
  v22 = sub_24F924038();
  v92 = v22;
  v102 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v88 = &v74 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
  v91 = v24;
  v25 = swift_getWitnessTable();
  v84 = v25;
  v26 = sub_24E9D384C();
  v119 = v25;
  v120 = v26;
  v27 = swift_getWitnessTable();
  v90 = v27;
  v89 = sub_24E9D38B0();
  v115 = v22;
  v116 = v24;
  v117 = v27;
  v118 = v89;
  v98 = swift_getOpaqueTypeMetadata2();
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v83 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v87 = &v74 - v30;
  v31 = v113;
  v32 = v113[3];
  v33 = v113[1];
  v34 = v113[2];
  v115 = *v113;
  v116 = v33;
  v117 = v34;

  v35 = v78;
  v32(&v115);

  v36 = v114;
  v37 = *(v114 + 16);
  v77 = v114 + 16;
  v107 = v37;
  v38 = v79;
  v37(v79, v31, a1);
  v76 = *(v36 + 80);
  v39 = (v76 + 32) & ~v76;
  v40 = swift_allocObject();
  v41 = v108;
  v42 = v112;
  *(v40 + 16) = v108;
  *(v40 + 24) = v42;
  v75 = *(v36 + 32);
  v114 = v36 + 32;
  v43 = v38;
  v75(v40 + v39, v38, a1);
  sub_24F926AA8();

  (*(v80 + 8))(v35, v41);
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688, &qword_24F972128);
  v45 = v113;
  sub_24F927358();
  v46 = v115;
  swift_getKeyPath();
  v115 = v46;
  sub_24E9D39BC(&qword_27F220FB8, type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(v46 + 16, &v115);

  v74 = v44;
  v107(v43, v45, v44);
  v47 = swift_allocObject();
  v48 = v112;
  *(v47 + 16) = v41;
  *(v47 + 24) = v48;
  v49 = v75;
  v75(v47 + v39, v43, v44);
  v50 = v111;
  v51 = v81;
  sub_24F926AB8();

  sub_24E6585F8(&v115);
  (*(v100 + 8))(v50, v51);
  v52 = [objc_opt_self() defaultCenter];
  v53 = v104;
  sub_24F92C0F8();

  v54 = v74;
  v107(v43, v113, v74);
  v55 = swift_allocObject();
  v56 = v112;
  *(v55 + 16) = v108;
  *(v55 + 24) = v56;
  v49(v55 + v39, v43, v54);
  v57 = v85;
  v58 = v93;
  v59 = v95;
  v60 = v110;
  sub_24F926BC8();

  (*(v105 + 8))(v53, v59);
  (*(v103 + 8))(v60, v58);
  swift_getKeyPath();
  v115 = sub_24E9D1E18();
  v116 = v61;
  v62 = v88;
  v63 = v86;
  sub_24F9261B8();

  (*(v101 + 8))(v57, v63);
  v115 = sub_24E9D1E18();
  v116 = v64;
  v65 = v83;
  v66 = v92;
  v67 = v91;
  v68 = v90;
  v69 = v89;
  sub_24F926AB8();

  (*(v102 + 8))(v62, v66);
  v115 = v66;
  v116 = v67;
  v117 = v68;
  v118 = v69;
  swift_getOpaqueTypeConformance2();
  v70 = v87;
  v71 = v98;
  sub_24E7896B8();
  v72 = *(v99 + 8);
  v72(v65, v71);
  sub_24E7896B8();
  return (v72)(v70, v71);
}

void sub_24E9D2D98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppView.LoadedView(0, a2, a3, a4);
  type metadata accessor for CommerceDialogHandler(0);

  sub_24F928EF8();

  if (v4)
  {
    CommerceDialogHandler.isActive.setter(1);
  }
}

void sub_24E9D2E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for AppView.LoadedView(0, a4, a5, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688, &qword_24F972128);
  sub_24F927358();
  swift_getKeyPath();
  sub_24E9D39BC(&qword_27F220FB8, type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(*&v10[0] + 16, v9);

  if (swift_dynamicCast())
  {
    sub_24F92C7F8();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v11 = 0;
  }

  sub_24ED0F474(v10);
}

uint64_t sub_24E9D2F9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F928C38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 40);
  sub_24EA00DB0();
  sub_24F928C28();
  v8 = OBJC_IVAR____TtC12GameStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v4 + 40))(v7 + v8, v6, v3);
  return swift_endAccess();
}

uint64_t sub_24E9D30A0(uint64_t result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
    if (qword_27F210278 != -1)
    {
      result = swift_once();
    }

    v4 = off_27F229AB8;
    v7[0] = v3;
    v7[1] = v2;
    MEMORY[0x28223BE20](result);
    v6[2] = v7;
    v5 = sub_24E6159B8(sub_24E7FA94C, v6, &unk_2861C0298);
    result = swift_arrayDestroy();
    if ((v5 & 1) == 0)
    {
      v4[3] = v3;
      v4[4] = v2;
    }
  }

  return result;
}

uint64_t sub_24E9D31B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24E9D3210(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24E9D3258(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E9D32CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppView.LoadedView(255, *a1, a1[1], a4);
  sub_24F9216A8();
  sub_24F921688();
  swift_getWitnessTable();
  sub_24E9D39BC(&qword_27F2245F8, MEMORY[0x277D7EAA0], MEMORY[0x277D7EA98]);
  sub_24E9D39BC(qword_27F224600, MEMORY[0x277D7EA90], MEMORY[0x277D7EA88]);
  sub_24F9216C8();
  return swift_getWitnessTable();
}

void sub_24E9D33E8(uint64_t a1)
{
  sub_24E6C5550();
  if (v1 <= 0x3F)
  {
    type metadata accessor for JSFreshnessWatchdog(319);
    if (v3 <= 0x3F)
    {
      sub_24E9D374C(319, v2);
      if (v4 <= 0x3F)
      {
        sub_24E9D37A4(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24E9D34C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688, &qword_24F972128);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F224690, &qword_24F972130);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24E9D3610(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688, &qword_24F972128);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F224690, &qword_24F972130);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E9D374C(uint64_t a1, __n128 a2)
{
  if (!qword_27F224718)
  {
    type metadata accessor for FlowAuthorityProvider(255);
    v2 = sub_24F927398();
    if (!v3)
    {
      atomic_store(v2, &qword_27F224718);
    }
  }
}

void sub_24E9D37A4(uint64_t a1)
{
  if (!qword_27F224720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224728, qword_24F972148);
    v1 = sub_24F923578();
    if (!v2)
    {
      atomic_store(v1, &qword_27F224720);
    }
  }
}

unint64_t sub_24E9D384C()
{
  result = qword_27F224738;
  if (!qword_27F224738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224730, &qword_24F9721B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224738);
  }

  return result;
}

unint64_t sub_24E9D38B0()
{
  result = qword_27F224740;
  if (!qword_27F224740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224740);
  }

  return result;
}

void sub_24E9D3930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for AppView.LoadedView(0, v5, v6, a4) - 8);
  v9 = (v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  sub_24E9D2D98(v9, v5, v6, v7);
}

uint64_t sub_24E9D39BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24E9D3A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for AppView.LoadedView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_24E9D2E0C(a1, a2, v10, v7, v8);
}

uint64_t objectdestroy_12Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for AppView.LoadedView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));

  v7 = v5[13];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224688, &qword_24F972128);
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v5[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224748, &qword_24F9721B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F9219C8();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E9D3C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for AppView.LoadedView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_24E9D2F9C(a1, v7);
}

uint64_t sub_24E9D3D18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;

  return MEMORY[0x2821E78F0](a1, a2, a3);
}

uint64_t objectdestroyTm_18()
{

  return swift_deallocObject();
}

uint64_t sub_24E9D3EE0(uint64_t *a1, __n128 a2)
{
  sub_24F92C0E8();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24E9D39BC(&qword_27F21F480, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  swift_getOpaqueTypeConformance2();
  sub_24F924288();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224730, &qword_24F9721B0);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
  swift_getWitnessTable();
  sub_24E9D384C();
  swift_getWitnessTable();
  sub_24E9D38B0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24E9D40D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24E9D411C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E9D4174()
{
  result = qword_27F224750;
  if (!qword_27F224750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224750);
  }

  return result;
}

char *sub_24E9D41C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  v6 = sub_24F769B44(v3, v4, v5);
  v8 = v7;
  v9 = objc_allocWithZone(type metadata accessor for MarketingItemViewController());

  return sub_24F7423F0(v2, 0, 0, v6, v8, v1);
}

uint64_t sub_24E9D426C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E9D435C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24E9D42D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E9D435C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24E9D4334(uint64_t a1)
{
  sub_24E9D435C();
  sub_24F925628();
  __break(1u);
}

unint64_t sub_24E9D435C()
{
  result = qword_27F224758;
  if (!qword_27F224758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224758);
  }

  return result;
}

double sub_24E9D43B0(uint64_t a1, double a2)
{
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E9D6764(v2, v13);
  if (v14)
  {
    if (v14 == 1)
    {
      return *v13 * a2;
    }

    else
    {
      sub_24E9D679C(v13);
    }
  }

  else
  {
    sub_24E612C80(v13, v11);
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    sub_24E8ED7D8(v8);
    a2 = sub_24F9223A8();
    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return a2;
}

uint64_t BreakoutDetailsLayout.init(metrics:titleLabel:descriptionLabel:badgeText:badgeWordmark:callToActionButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_24E9D4A40(a1, a7, type metadata accessor for BreakoutDetailsLayout.Metrics);
  v14 = type metadata accessor for BreakoutDetailsLayout(0);
  sub_24E60169C(a4, a7 + v14[5], &unk_27F22B200, &unk_24F9674C0);
  sub_24E60169C(a5, a7 + v14[6], &qword_27F229780, &unk_24F965BB0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F9224C8();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_24F9224C8();
  sub_24E601704(a5, &qword_27F229780, &unk_24F965BB0);
  sub_24E601704(a4, &unk_27F22B200, &unk_24F9674C0);
  sub_24E9D67CC(a1, type metadata accessor for BreakoutDetailsLayout.Metrics);
  v15 = a7 + v14[9];
  v16 = *(a6 + 16);
  *v15 = *a6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(a6 + 32);
  __swift_destroy_boxed_opaque_existential_1(a3);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior.init(lineCountThreshold:standardUseCase:compressedUseCase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v8 = *(v7 + 20);
  v9 = sub_24F922378();
  v12 = *(*(v9 - 8) + 32);
  (v12)((v9 - 8), &a4[v8], a2, v9);
  v10 = &a4[*(v7 + 24)];

  return v12(v10, a3, v9);
}

uint64_t BreakoutDetailsLayout.Metrics.init(titleSpace:titleBehavior:descriptionSpace:badgeTextSpace:badgeWordmarkSpace:callToActionSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  sub_24E612C80(a1, a7);
  v21 = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_24E9D4FE4(a2, a7 + v21[5], type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior);
  sub_24E612C80(a3, a7 + v21[6]);
  sub_24E612C80(a4, a7 + v21[7]);
  sub_24E612C80(a5, a7 + v21[8]);
  result = sub_24E612C80(a6, a7 + v21[9]);
  v23 = (a7 + v21[10]);
  *v23 = a8;
  v23[1] = a9;
  v23[2] = a10;
  v23[3] = a11;
  return result;
}

uint64_t BreakoutDetailsLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t sub_24E9D4A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E9D4AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t BreakoutDetailsLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 24);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.badgeTextSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.badgeWordmarkSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 32);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.callToActionSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 36);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t BreakoutDetailsLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v10 = (v4 + *(result + 40));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t sub_24E9D4FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double BreakoutDetailsLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_24F92C228();
  v6 = v5;
  v8 = v7;
  sub_24E9D5160(a1, &v10);
  _VerticalFlowLayout.measurements(fitting:in:)(a1, v6, v8);

  return a2;
}

uint64_t sub_24E9D5160@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v107 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v103 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v7 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = 1;
  v11 = type metadata accessor for BreakoutDetailsLayout(0);
  sub_24E60169C(v4 + v11[6], &v125, &qword_27F229780, &unk_24F965BB0);
  v105 = v7;
  v102 = a1;
  if (v126)
  {
    sub_24E612C80(&v125, &v109);
    v12 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 32);
    v131 = 0;
    v130 = 0u;
    v129 = 0u;
    sub_24E615E00(&v109, &v125);
    v13 = v4;
    sub_24E615E00(v4 + v12, v128);
    v127 = 1;
    v132 = 11;
    sub_24E9D682C(&v125, &v118);
    v14 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_24E617A24((v15 > 1), v16 + 1, 1, v14);
    }

    v17 = v107;
    sub_24E9D6888(&v125);
    __swift_destroy_boxed_opaque_existential_1(&v109);
    *(v14 + 2) = v16 + 1;
    v18 = &v14[136 * v16];
    *(v18 + 2) = v118;
    v19 = v119;
    v20 = v120;
    v21 = v122;
    *(v18 + 5) = v121;
    *(v18 + 6) = v21;
    *(v18 + 3) = v19;
    *(v18 + 4) = v20;
    v22 = v123[0];
    v23 = v123[1];
    v24 = v123[2];
    *(v18 + 20) = v124;
    *(v18 + 8) = v23;
    *(v18 + 9) = v24;
    *(v18 + 7) = v22;
  }

  else
  {
    sub_24E601704(&v125, &qword_27F229780, &unk_24F965BB0);
    sub_24E60169C(v4 + v11[5], &v125, &unk_27F22B200, &unk_24F9674C0);
    if (v126)
    {
      sub_24E612C80(&v125, &v109);
      v25 = *(&v110 + 1);
      v26 = v111;
      v27 = __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
      *(&v119 + 1) = v25;
      *&v120 = *(v26 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v118);
      (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v27, v25);
      v29 = *(type metadata accessor for BreakoutDetailsLayout.Metrics(0) + 28);
      v131 = 0;
      v130 = 0u;
      v129 = 0u;
      sub_24E615E00(&v118, &v125);
      v13 = v4;
      sub_24E615E00(v4 + v29, v128);
      v127 = 1;
      v132 = 11;
      __swift_destroy_boxed_opaque_existential_1(&v118);
      sub_24E9D682C(&v125, &v118);
      v14 = sub_24E617A24(0, 1, 1, MEMORY[0x277D84F90]);
      v31 = *(v14 + 2);
      v30 = *(v14 + 3);
      if (v31 >= v30 >> 1)
      {
        v14 = sub_24E617A24((v30 > 1), v31 + 1, 1, v14);
      }

      v17 = v107;
      sub_24E9D6888(&v125);
      *(v14 + 2) = v31 + 1;
      v32 = &v14[136 * v31];
      v33 = v122;
      v35 = v119;
      v34 = v120;
      *(v32 + 5) = v121;
      *(v32 + 6) = v33;
      *(v32 + 3) = v35;
      *(v32 + 4) = v34;
      v37 = v123[1];
      v36 = v123[2];
      v38 = v123[0];
      *(v32 + 20) = v124;
      *(v32 + 8) = v37;
      *(v32 + 9) = v36;
      *(v32 + 7) = v38;
      *(v32 + 2) = v118;
      __swift_destroy_boxed_opaque_existential_1(&v109);
    }

    else
    {
      v13 = v4;
      sub_24E601704(&v125, &unk_27F22B200, &unk_24F9674C0);
      v14 = MEMORY[0x277D84F90];
      v17 = v107;
    }
  }

  v104 = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_24E9D4A40(v13 + *(v104 + 20), v10, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior);
  if ((*(v103 + 6))(v10, 1, v17) == 1)
  {
    v39 = (v13 + v11[7]);
    v40 = v39[3];
    v41 = v39[4];
    v42 = __swift_project_boxed_opaque_existential_1(v39, v40);
    *(&v119 + 1) = v40;
    *&v120 = *(v41 + 8);
    v43 = __swift_allocate_boxed_opaque_existential_1(&v118);
    (*(*(v40 - 8) + 16))(v43, v42, v40);
    v129 = 0u;
    v130 = 0u;
    v131 = 0;
    sub_24E615E00(&v118, &v125);
    sub_24E615E00(v13, v128);
    v127 = 1;
    v132 = 11;
    __swift_destroy_boxed_opaque_existential_1(&v118);
  }

  else
  {
    v44 = v10;
    v45 = v105;
    sub_24E9D4FE4(v44, v105, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior);
    v103 = v11;
    v46 = (v13 + v11[7]);
    v47 = v46[3];
    v100[2] = v46[4];
    v101 = v13;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v48 = sub_24E6C065C();
    v49 = *(v17 + 20);
    v50 = v102;
    v51 = [v102 traitCollection];
    v100[1] = v48;
    MEMORY[0x253051BF0](v45 + v49, v51);

    sub_24F9224A8();
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    v52 = sub_24F9224B8();
    v53 = *v45;
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    if (v52 >= v53)
    {
      v54 = *(v107 + 24);
      v55 = [v50 traitCollection];
      v56 = v105;
      MEMORY[0x253051BF0](v105 + v54, v55);

      sub_24F9224A8();
      v57 = v46[3];
      v58 = v46[4];
      v59 = __swift_project_boxed_opaque_existential_1(v46, v57);
      *(&v119 + 1) = v57;
      *&v120 = *(v58 + 8);
      v60 = __swift_allocate_boxed_opaque_existential_1(&v118);
      (*(*(v57 - 8) + 16))(v60, v59, v57);
      sub_24E9D67CC(v56, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior);
      v129 = 0u;
      v130 = 0u;
      v131 = 0;
      sub_24E615E00(&v118, &v125);
      v13 = v101;
      sub_24E615E00(v101, v128);
      v127 = 1;
      v132 = 11;
      __swift_destroy_boxed_opaque_existential_1(&v118);
    }

    else
    {
      sub_24F922278();
      sub_24E9D67CC(v105, type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior);
      v129 = 0u;
      v130 = 0u;
      v131 = 0;
      v13 = v101;
      sub_24E615E00(v101, v128);
      v127 = 1;
      v132 = 11;
    }

    v11 = v103;
  }

  sub_24E9D682C(&v125, &v118);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v104;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_24E617A24(0, *(v14 + 2) + 1, 1, v14);
  }

  v64 = *(v14 + 2);
  v63 = *(v14 + 3);
  if (v64 >= v63 >> 1)
  {
    v14 = sub_24E617A24((v63 > 1), v64 + 1, 1, v14);
  }

  *(v14 + 2) = v64 + 1;
  v65 = &v14[136 * v64];
  *(v65 + 2) = v118;
  v66 = v119;
  v67 = v120;
  v68 = v122;
  *(v65 + 5) = v121;
  *(v65 + 6) = v68;
  *(v65 + 3) = v66;
  *(v65 + 4) = v67;
  v69 = v123[0];
  v70 = v123[1];
  v71 = v123[2];
  *(v65 + 20) = v124;
  *(v65 + 8) = v70;
  *(v65 + 9) = v71;
  *(v65 + 7) = v69;
  v72 = (v13 + v11[8]);
  v73 = v72[3];
  v74 = v72[4];
  v75 = __swift_project_boxed_opaque_existential_1(v72, v73);
  *(&v110 + 1) = v73;
  *&v111 = *(v74 + 8);
  v76 = __swift_allocate_boxed_opaque_existential_1(&v109);
  (*(*(v73 - 8) + 16))(v76, v75, v73);
  v77 = *(v62 + 24);
  *(&v123[2] + 1) = 0;
  *(v123 + 8) = 0u;
  *(&v123[1] + 8) = 0u;
  sub_24E615E00(&v109, &v118);
  sub_24E615E00(v13 + v77, &v121);
  WORD4(v120) = 1;
  v124 = 11;
  __swift_destroy_boxed_opaque_existential_1(&v109);
  sub_24E9D682C(&v118, &v109);
  v79 = *(v14 + 2);
  v78 = *(v14 + 3);
  v80 = v79 + 1;
  if (v79 >= v78 >> 1)
  {
    v14 = sub_24E617A24((v78 > 1), v79 + 1, 1, v14);
  }

  sub_24E9D6888(&v118);
  *(v14 + 2) = v80;
  v81 = &v14[136 * v79];
  v82 = v113;
  v83 = v111;
  v84 = v110;
  *(v81 + 5) = v112;
  *(v81 + 6) = v82;
  *(v81 + 3) = v84;
  *(v81 + 4) = v83;
  v85 = v115;
  v86 = v116;
  v87 = v114;
  *(v81 + 20) = v117;
  *(v81 + 8) = v85;
  *(v81 + 9) = v86;
  *(v81 + 7) = v87;
  *(v81 + 2) = v109;
  sub_24E60169C(v13 + v11[9], &v118, &qword_27F229780, &unk_24F965BB0);
  if (*(&v119 + 1))
  {
    sub_24E612C80(&v118, v108);
    v88 = *(v62 + 36);
    *(&v123[2] + 1) = 0;
    *(v123 + 8) = 0u;
    *(&v123[1] + 8) = 0u;
    sub_24E615E00(v108, &v118);
    sub_24E615E00(v13 + v88, &v121);
    WORD4(v120) = 1;
    v124 = 11;
    sub_24E9D682C(&v118, &v109);
    v89 = *(v14 + 3);
    v90 = v79 + 2;
    if (v90 > (v89 >> 1))
    {
      v14 = sub_24E617A24((v89 > 1), v90, 1, v14);
    }

    sub_24E9D6888(&v118);
    __swift_destroy_boxed_opaque_existential_1(v108);
    result = sub_24E9D6888(&v125);
    *(v14 + 2) = v90;
    v92 = &v14[136 * v80];
    *(v92 + 2) = v109;
    v93 = v113;
    v94 = v111;
    v95 = v110;
    *(v92 + 5) = v112;
    *(v92 + 6) = v93;
    *(v92 + 3) = v95;
    *(v92 + 4) = v94;
    v96 = v115;
    v97 = v116;
    v98 = v114;
    *(v92 + 20) = v117;
    *(v92 + 8) = v96;
    *(v92 + 9) = v97;
    *(v92 + 7) = v98;
  }

  else
  {
    sub_24E9D6888(&v125);
    result = sub_24E601704(&v118, &qword_27F229780, &unk_24F965BB0);
  }

  v99 = v106;
  *v106 = v133;
  *(v99 + 1) = v14;
  return result;
}

uint64_t BreakoutDetailsLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>)
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v8 = [a1 traitCollection];
  [v8 layoutDirection];

  sub_24F92C1C8();
  sub_24F92C1D8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_24E9D5160(a1, v18);
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(x8_0, v10, v12, v14, v16);
}

double sub_24E9D5DE8(void *a1, double a2, double a3)
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  sub_24F92C228();
  v6 = v5;
  v8 = v7;
  sub_24E9D5160(a1, v10);
  _VerticalFlowLayout.measurements(fitting:in:)(a1, v6, v8);

  return a2;
}

uint64_t sub_24E9D5EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E9D5FB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BreakoutDetailsLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_24E9D6070(uint64_t a1)
{
  type metadata accessor for BreakoutDetailsLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_24E8EF898(319, &qword_27F221208, &qword_27F221210, &unk_24F9ACE10);
    if (v2 <= 0x3F)
    {
      sub_24E8EF898(319, &qword_27F2297B0, &unk_27F235730, &unk_24F947310);
      if (v3 <= 0x3F)
      {
        sub_24E8EFB54(319, &qword_27F2297C0, MEMORY[0x277D226F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit21BreakoutDetailsLayoutV15DetailDimensionO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_24E9D618C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E9D61C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24E9D6238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E9D62F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E9D639C(uint64_t a1)
{
  sub_24E8EFB54(319, &qword_27F237A40, MEMORY[0x277D226C0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NSDirectionalEdgeInsets(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24E9D646C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E9D64EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24E9D656C(uint64_t a1)
{
  v1 = type metadata accessor for BreakoutDetailsLayout.Metrics.TitleTextBehavior.CompressionBehavior(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_24E9D65D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922378();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_24E9D6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24F922378();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_24E9D66E8(uint64_t a1)
{
  result = sub_24F922378();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E9D67CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *ArcadeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v5 = sub_24F9285B8();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v49 - v8;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v49 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  sub_24F928398();
  v20 = sub_24F928348();
  v22 = v21;
  v52 = v10;
  v23 = *(v10 + 8);
  v23(v19, v9);
  v24 = (v3 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId);
  *v24 = v20;
  v24[1] = v22;
  sub_24F928398();
  v25 = sub_24F928348();
  v27 = v26;
  v23(v16, v9);
  if (v27)
  {
    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v29 = (v3 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId);
  *v29 = v28;
  v29[1] = v27;
  type metadata accessor for Action(0);
  sub_24F928398();
  v30 = v50;
  v31 = static Action.tryToMakeInstance(byDeserializing:using:)(v19, v60);
  v23(v19, v9);
  v32 = v3;
  v33 = v23;
  v34 = v9;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_postSubscribeAction) = v31;
  sub_24F928398();
  sub_24F928368();
  v33(v19, v9);
  v55 = v32;
  v35 = (v32 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken);
  v36 = v59;
  *v35 = v58;
  v35[1] = v36;
  v37 = v51;
  v38 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v33(v37, v34);
  v39 = sub_24F928E68();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v30, 1, v39) == 1)
  {
    sub_24E601704(v30, qword_27F221C40, &unk_24F967D80);
    v41 = 0;
  }

  else
  {
    v41 = sub_24F928E48();
    (*(v40 + 8))(v30, v39);
  }

  *(v55 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_paymentMetricsOverlay) = v41;
  v42 = v53;
  v43 = v38;
  (*(v52 + 16))(v53, v38, v34);
  v45 = v56;
  v44 = v57;
  v46 = v54;
  (*(v56 + 16))(v54, v60, v57);
  v47 = Action.init(deserializing:using:)(v42, v46);
  (*(v45 + 8))(v60, v44);
  v33(v43, v34);
  return v47;
}

uint64_t ArcadeAction.__allocating_init(appAdamId:productId:postSubscribeAction:paymentMetricsOverlay:actionMetrics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v36 = sub_24F91F6B8();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = a1[1];
  v21 = (v19 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId);
  *v21 = *a1;
  v21[1] = v20;
  v22 = (v19 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId);
  *v22 = a2;
  v22[1] = a3;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_postSubscribeAction) = a4;
  v24 = v37;
  v23 = v38;
  v25 = (v19 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken);
  *v25 = 0u;
  v25[1] = 0u;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_paymentMetricsOverlay) = v23;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  (*(v16 + 16))(v18, v24, v15);
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = (v19 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  sub_24E60169C(v47, &v41, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v30 = v29;
    (*(v35 + 8))(v11, v36);
    v39 = v28;
    v40 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v16 + 8))(v24, v15);
  sub_24E601704(v47, &qword_27F235830, &qword_24F93B8C0);
  v31 = v19 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v32 = v45;
  *v31 = v44;
  *(v31 + 16) = v32;
  *(v31 + 32) = v46;
  sub_24E65E0D4(v14, v19 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v19 + 16) = xmmword_24F972530;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  (*(v16 + 32))(v19 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v18, v15);
  return v19;
}

uint64_t ArcadeAction.init(appAdamId:productId:postSubscribeAction:paymentMetricsOverlay:actionMetrics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a6;
  v39 = a5;
  v37 = sub_24F91F6B8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v22 = (v7 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId);
  *v22 = *a1;
  v22[1] = v21;
  v23 = (v7 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId);
  *v23 = a2;
  v23[1] = a3;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_postSubscribeAction) = a4;
  v25 = v38;
  v24 = v39;
  v26 = (v7 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken);
  *v26 = 0u;
  v26[1] = 0u;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_paymentMetricsOverlay) = v24;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  (*(v18 + 16))(v20, v25, v17);
  v27 = sub_24F929608();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = (v7 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v28 = 0u;
  v28[1] = 0u;
  sub_24E60169C(v48, &v42, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v36 + 8))(v13, v37);
    v40 = v29;
    v41 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v18 + 8))(v25, v17);
  sub_24E601704(v48, &qword_27F235830, &qword_24F93B8C0);
  v32 = v7 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v32 + 32) = v47;
  v33 = v46;
  *v32 = v45;
  *(v32 + 16) = v33;
  sub_24E65E0D4(v16, v7 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v7 + 16) = xmmword_24F972530;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  (*(v18 + 32))(v7 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v7;
}

uint64_t ArcadeAction.productId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_productId);

  return v1;
}

double ArcadeAction.appAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_appAdamId);
  a1[1] = v2;

  return result;
}

uint64_t sub_24E9D76E4()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken, &qword_27F2129B0, &unk_24F945320);
}

uint64_t ArcadeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeAction_subscriptionToken, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ArcadeAction.__deallocating_deinit()
{
  ArcadeAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeAction(uint64_t a1)
{
  result = qword_27F2247A0;
  if (!qword_27F2247A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9D7A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E9D7B54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LockupCollectionSearchItem(uint64_t a1)
{
  result = qword_27F2247B0;
  if (!qword_27F2247B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E9D7CDC(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          sub_24E6BCB04();
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F21F938, &qword_27F21BE90, &qword_24F9538B0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24E9D7E2C()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24E9D7E88()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24E9D7ED0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_24E9D7F9C()
{
  result = qword_27F2247C0;
  if (!qword_27F2247C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2247C0);
  }

  return result;
}

unint64_t sub_24E9D7FF0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x4D747865746E6F63;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0x736D657469;
    if (a1 != 7)
    {
      v2 = 0x63416C6961746564;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676E6964616568;
    if (a1 != 4)
    {
      v3 = 0x656C746974;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}