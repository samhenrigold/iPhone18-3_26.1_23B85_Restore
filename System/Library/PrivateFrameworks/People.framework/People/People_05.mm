void sub_22F04CE24(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1808, &unk_22F0D7E40) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_22F04B2C0(a1, a2, v6, v7);
}

uint64_t sub_22F04CEB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_22F0D0AFC();
  }

  else
  {
    v5 = 0;
  }

  sub_22F0CFFAC();
  v6 = a3;
  v4(v5, a3);
  sub_22F0D00CC();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

unint64_t sub_22F04CF78()
{
  result = qword_27DAA1850;
  if (!qword_27DAA1850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA1850);
  }

  return result;
}

uint64_t sub_22F04CFC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static RequestMessageDetailsBuilder.shared.getter()
{
  v0 = type metadata accessor for RequestMessageDetailsBuilder();

  return MEMORY[0x2821FEAF0](v0, &unk_27DAA06B8);
}

uint64_t sub_22F04D090(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 333) = a6;
  *(v8 + 332) = a5;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 96) = a1;
  *(v8 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
  *(v8 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  *(v8 + 152) = swift_task_alloc();
  v10 = type metadata accessor for ResolvedFamily(0);
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  v11 = type metadata accessor for MessageDetails(0);
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 334) = *a2;

  return MEMORY[0x2822009F8](sub_22F04D260, 0, 0);
}

uint64_t sub_22F04D260()
{
  if (*(v0 + 334) && *(v0 + 334) == 1)
  {

LABEL_5:
    v2 = *(v0 + 224);
    v3 = *(v0 + 184);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    *v2 = 0;
    *(v2 + 8) = 0xE000000000000000;
    *(v2 + 16) = 3;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0xE000000000000000;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0xE000000000000000;
    sub_22F0D04EC();
    v6 = v2 + v3[9];
    *v6 = 0;
    *(v6 + 8) = 1;
    v7 = v2 + v3[10];
    *v7 = 0;
    *(v7 + 8) = 1;
    *(v2 + v3[11]) = 0;
    v8 = v3[12];
    *(v0 + 328) = v8;
    v9 = *(v5 + 56);
    *(v0 + 232) = v9;
    *(v0 + 240) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v9(v2 + v8, 1, 1, v4);
    v10 = (v2 + v3[13]);
    *v10 = 0;
    v10[1] = 0;
    *(v2 + v3[14]) = xmmword_22F0D6620;
    v11 = (v2 + v3[15]);
    *v11 = 0;
    v11[1] = 0;
    v12 = (v2 + v3[16]);
    *v12 = 0;
    v12[1] = 0;
    v13 = (v2 + v3[17]);
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v14 = (v2 + v3[18]);
    *v14 = 0;
    v14[1] = 0;
    v15 = (v2 + v3[19]);
    *v15 = 0;
    v15[1] = 0xE000000000000000;
    v16 = (v2 + v3[20]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v2 + v3[21]);
    *v17 = 0;
    v17[1] = 0;
    if (qword_280CBEC28 != -1)
    {
      swift_once();
    }

    v18 = qword_280CBEC30;
    *(v0 + 80) = type metadata accessor for ContactFetcher();
    *(v0 + 88) = &protocol witness table for ContactFetcher;
    *(v0 + 56) = v18;
    sub_22F0CFFAC();
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_22F04D694;
    v20 = *(v0 + 152);

    return static ResolvedFamily.getFamilyForLoggedInChild(withContactFetcher:)(v20, v0 + 56);
  }

  v1 = sub_22F0D188C();

  if (v1)
  {
    goto LABEL_5;
  }

  if (!*(v0 + 334))
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000013, 0x800000022F0DE3E0, 500);
    goto LABEL_14;
  }

  if (*(v0 + 334) == 1)
  {
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    sub_22F0D152C();

    MEMORY[0x2318FD2C0](v23, v22);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000021, 0x800000022F0DE6F0, 500);

LABEL_14:
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }

  v25 = swift_task_alloc();
  *(v0 + 280) = v25;
  *v25 = v0;
  v25[1] = sub_22F04DD78;
  v26 = *(v0 + 112);
  v27 = *(v0 + 120);
  v28 = *(v0 + 104);

  return sub_22F08E0EC(v28, v26, v27);
}

uint64_t sub_22F04D694()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  if (v0)
  {
    v3 = sub_22F04E654;
  }

  else
  {
    v3 = sub_22F04D7B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F04D7B0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  if ((*(*(v0 + 168) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 224);
    sub_22F003A4C(v2, &qword_27DAA1448, &unk_22F0D6640);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000028, 0x800000022F0DD4B0, 500);
    swift_willThrow();
    sub_22F01DF14(v3, type metadata accessor for MessageDetails);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 328);
    v8 = *(v0 + 224);
    v9 = *(v0 + 176);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    sub_22F01DE40(v2, v9, type metadata accessor for ResolvedFamily);
    sub_22F003A4C(v8 + v7, &qword_27DAA1448, &unk_22F0D6640);
    sub_22F01DEA8(v9, v8 + v7);
    v6(v8 + v7, 0, 1, v1);
    *(v8 + 40) = FAFamilyMember.displayNameWithFallback.getter();
    *(v8 + 48) = v12;
    *v8 = v11;
    *(v8 + 8) = v10;
    *(v8 + 16) = 1;
    sub_22F0CFF1C();
    v13 = swift_task_alloc();
    *(v0 + 264) = v13;
    *(v13 + 16) = v8;
    v14 = swift_task_alloc();
    *(v0 + 272) = v14;
    *v14 = v0;
    v14[1] = sub_22F04DA58;
    v16 = *(v0 + 136);
    v15 = *(v0 + 144);

    return MEMORY[0x2822007B8](v15, 0, 0, 0xD000000000000028, 0x800000022F0DD4E0, sub_22F01DF0C, v13, v16);
  }
}

uint64_t sub_22F04DA58()
{

  return MEMORY[0x2822009F8](sub_22F04DB70, 0, 0);
}

uint64_t sub_22F04DB70()
{
  v1 = v0[18];
  v2 = (*(v0[24] + 48))(v1, 1, v0[23]);
  v3 = v0[28];
  v4 = v0[22];
  if (v2 == 1)
  {
    sub_22F003A4C(v1, qword_27DAA11D0, &qword_22F0D5D88);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000022, 0x800000022F0DD510, 500);
    swift_willThrow();
    sub_22F01DF14(v4, type metadata accessor for ResolvedFamily);
  }

  else
  {
    v6 = v0[12];
    sub_22F01DF14(v0[22], type metadata accessor for ResolvedFamily);
    sub_22F01DE40(v1, v6, type metadata accessor for MessageDetails);
  }

  sub_22F01DF14(v3, type metadata accessor for MessageDetails);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22F04DD78(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return MEMORY[0x2822009F8](sub_22F04DE78, 0, 0);
}

uint64_t sub_22F04DE78()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = type metadata accessor for AppBundleResolver();
    v3 = swift_allocObject();
    *(v3 + 16) = sub_22F09EEDC;
    *(v3 + 24) = 0;
    *(v0 + 40) = v2;
    *(v0 + 48) = &protocol witness table for AppBundleResolver;
    *(v0 + 16) = v3;
    v4 = v1;
    v5 = swift_task_alloc();
    *(v0 + 296) = v5;
    *v5 = v0;
    v5[1] = sub_22F04E07C;
    v6 = *(v0 + 208);
    v7 = *(v0 + 333);

    return sub_22F06801C(v6, v4, v0 + 16, v7);
  }

  else
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    sub_22F0D152C();

    MEMORY[0x2318FD2C0](v10, v9);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000013, 0x800000022F0DD490, 500);

    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_22F04E07C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_22F04E578;
  }

  else
  {
    v2 = sub_22F04E190;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F04E190()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  sub_22F01DE40(v1, v2, type metadata accessor for MessageDetails);
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *v3 = v0;
  v3[1] = sub_22F04E25C;
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 128);
  v7 = *(v0 + 332);

  return sub_22F03F290(v5, v6, v4, v7);
}

uint64_t sub_22F04E25C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_22F04E480;
  }

  else
  {
    v2 = sub_22F04E370;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F04E370()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[12];

  sub_22F01DF14(v2, type metadata accessor for MessageDetails);
  sub_22F01DE40(v3, v2, type metadata accessor for MessageDetails);
  sub_22F01DE40(v2, v4, type metadata accessor for MessageDetails);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22F04E480(uint64_t a1)
{
  v2 = v1[36];
  v3 = v1[27];
  swift_willThrow();

  sub_22F01DF14(v3, type metadata accessor for MessageDetails);
  v4 = v1[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);

  v5 = v1[1];

  return v5();
}

uint64_t sub_22F04E578()
{
  v1 = v0[36];

  swift_willThrow();
  v2 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22F04E654()
{
  sub_22F01DF14(*(v0 + 224), type metadata accessor for MessageDetails);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F04E740(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22F00CD54;

  return sub_22F04D090(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of RequestMessageDetailsBuilderProtocol.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_22F00CF60;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of RequestMessageDetailsBuilder.fromPersistence(_:eventID:useFamilyCache:resolveAppBundleInfo:maxAge:withContactFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 88) + **(*v8 + 88));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_22F00CD54;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t static PeopleBiomeEventIndexer.indexEvent(askToBuyEvent:withContactFetcher:withIndexer:completion:)(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v10 = [a1 userID];
  v11 = sub_22F0D0CAC();
  v13 = v12;

  v14 = sub_22F0B6FEC(v11, v13);
  LOBYTE(v10) = v15;

  if (v10)
  {
    if (qword_27DAA05D8 != -1)
    {
      swift_once();
    }

    v16 = qword_27DAACEF8;
    return a4(v16, 1);
  }

  v17 = [a1 actionUserID];
  if (v17)
  {
    v18 = sub_22F0D0CAC();
    v20 = v19;

    v21 = sub_22F0B6FEC(v18, v20);
    LOBYTE(v18) = v22;

    if (v18)
    {
      if (qword_27DAA05E0 != -1)
      {
        swift_once();
      }

      v16 = qword_27DAACF00;
      return a4(v16, 1);
    }

    v35 = v21;
    v36 = v14;
  }

  else
  {
    v35 = 0;
    v36 = v14;
  }

  v34 = v17 == 0;
  sub_22EFFFB40(a3, v37);
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a1;
  sub_22EFE6B9C(v37, (v24 + 5));
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = MEMORY[0x277D84F90];
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = a2[4];
  v33 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_22F050678;
  *(v30 + 24) = v24;
  *(v30 + 32) = v27;
  *(v30 + 40) = v36;
  *(v30 + 48) = v25;
  *(v30 + 56) = v28;
  *(v30 + 64) = v35;
  *(v30 + 72) = v34;
  *(v30 + 80) = v26;
  v31 = *(v29 + 8);
  sub_22F0CFFAC();
  v32 = a1;
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v31(sub_22F050688, v30, v33, v29);
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

void sub_22F04EE74(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for ResolvedFamily(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v18 - v14);
  sub_22F040114(a1, &v18 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    v17 = *v15;
    a2(v16, 1);
  }

  else
  {
    sub_22F03DCB4(v15, v12);
    sub_22F0440B0(a4, *v12, *(v12 + 1), *(v12 + 2), a5, a2, a3);
    sub_22F050788(v12);
  }
}

uint64_t static PeopleBiomeEventIndexer.indexEvent(locationEvent:withPerson:withIndexer:completion:)(void *a1, __int128 *a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v5 = *(a2 + 2);
  v7 = *a2;
  v8 = v5;
  return sub_22F04280C(a1, &v7, a3, a4, a5);
}

uint64_t static PeopleBiomeEventIndexer.indexEvent(screenTimeRequest:bundleResolver:withContactFetcher:withIndexer:completion:)(void *a1, void (*a2)(char *, uint64_t), void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v132 = a5;
  v133 = a6;
  v128 = a4;
  v129 = a3;
  v131 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v125 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v124 = &v112 - v8;
  v126 = sub_22F0D0A8C();
  v127 = *(v126 - 8);
  v9 = MEMORY[0x28223BE20](v126);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v130 = &v112 - v12;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = v13 + 16;
  v135 = v13;
  *(v13 + 24) = 0;
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_22F0D6620;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = v15;
  *(v15 + 24) = 0;
  v17 = [a1 requesterDSID];
  v18 = sub_22F0D0CAC();
  v20 = v19;

  v21 = sub_22F0B6FEC(v18, v20);
  LOBYTE(v17) = v22;

  if (v17)
  {
    if (qword_27DAA05D8 != -1)
    {
      swift_once();
    }

    v23 = qword_27DAACEF8;
LABEL_5:
    v132(v23, 1);
    sub_22F0D00CC();
LABEL_34:
    sub_22F0D00CC();

    return sub_22F0D00CC();
  }

  v24 = [a1 responderDSID];
  v122 = v24;
  if (v24)
  {
    v121 = v14;
    v25 = v11;
    v26 = v7;
    v27 = a1;
    v28 = v21;
    v29 = v24;
    v30 = sub_22F0D0CAC();
    v32 = v31;

    v123 = sub_22F0B6FEC(v30, v32);
    LOBYTE(v30) = v33;

    if (v30)
    {
      if (qword_27DAA05E0 != -1)
      {
        swift_once();
      }

      v132(qword_27DAACF00, 1);
      sub_22F0D00CC();
      goto LABEL_34;
    }

    v21 = v28;
    a1 = v27;
    v7 = v26;
    v11 = v25;
  }

  else
  {
    v123 = 0;
  }

  if ([a1 kind] != 2)
  {
    v59 = *(v131 + 3);
    v60 = *(v131 + 4);
    __swift_project_boxed_opaque_existential_1(v131, v59);
    (*(v60 + 32))(&v136, 0xD000000000000016, 0x800000022F0DD8D0, v59, v60);
    v61 = v137;
    v62 = v138;
    sub_22F0303BC(v137, v138);

    sub_22F00AB48(v61, v62);
    if (v62 >> 60 == 15)
    {
      if (qword_280CBDB90 != -1)
      {
        swift_once();
      }

      v63 = sub_22F0D0A1C();
      __swift_project_value_buffer(v63, qword_280CBDB98);
      v64 = sub_22F0D09FC();
      v65 = sub_22F0D123C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&v136 = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v136);
        _os_log_impl(&dword_22EFE1000, v64, v65, "%s bundle image failed for safari icon", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x2318FE8B0](v67, -1, -1);
        MEMORY[0x2318FE8B0](v66, -1, -1);
      }

      if (qword_27DAA05A8 != -1)
      {
        swift_once();
      }

      v132(qword_27DAACED8, 1);
      sub_22F0D00CC();
      goto LABEL_34;
    }

    v118 = v21;
    v48 = v134;
    if (qword_280CBDB90 != -1)
    {
      swift_once();
    }

    v69 = sub_22F0D0A1C();
    __swift_project_value_buffer(v69, qword_280CBDB98);
    v70 = sub_22F0D09FC();
    v71 = sub_22F0D124C();
    v72 = os_log_type_enabled(v70, v71);
    v119 = a1;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v136 = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v136);
      _os_log_impl(&dword_22EFE1000, v70, v71, "%s safari icon as fallback", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x2318FE8B0](v74, -1, -1);
      MEMORY[0x2318FE8B0](v73, -1, -1);
    }

    goto LABEL_42;
  }

  v34 = [a1 bundleID];
  if (!v34)
  {
    if (qword_27DAA05A8 != -1)
    {
      swift_once();
    }

    v23 = qword_27DAACED8;
    goto LABEL_5;
  }

  v118 = v21;
  v119 = a1;
  v35 = v34;
  v117 = sub_22F0D0CAC();
  v36 = v16;
  v121 = v37;

  v38 = dispatch_group_create();
  v113 = v38;
  dispatch_group_enter(v38);
  v39 = *(v131 + 4);
  v116 = *(v131 + 3);
  v115 = __swift_project_boxed_opaque_existential_1(v131, v116);
  v40 = swift_allocObject();
  v41 = v134;
  v40[2] = v135;
  v40[3] = v36;
  v40[4] = v41;
  v40[5] = v38;
  v114 = *(v39 + 8);
  sub_22F0CFFAC();
  v120 = v36;
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v42 = v113;
  v114(v117, v121, sub_22F050740, v40, v116, v39);
  sub_22F0D00CC();
  sub_22F0D0A7C();
  if (qword_280CBD948 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, qword_280CBD950);
  v43 = [objc_opt_self() seconds];
  v44 = v124;
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v125 + 8))(v44, v7);
  sub_22F0D0A9C();
  isa = v127[1].isa;
  v46 = v126;
  isa(v11, v126);
  sub_22F0D125C();
  v47 = v42;
  if (sub_22F0D0A3C())
  {
    swift_beginAccess();
    v16 = v120;
    v48 = v134;
    if (!*(v120 + 24))
    {
      if (qword_280CBDB90 != -1)
      {
        swift_once();
      }

      v97 = sub_22F0D0A1C();
      __swift_project_value_buffer(v97, qword_280CBDB98);
      v98 = v121;
      sub_22F0CFF1C();
      v54 = sub_22F0D09FC();
      v99 = sub_22F0D123C();

      if (!os_log_type_enabled(v54, v99))
      {

        goto LABEL_63;
      }

      v100 = swift_slowAlloc();
      v101 = v98;
      v102 = swift_slowAlloc();
      *&v136 = v102;
      *v100 = 136315394;
      *(v100 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v136);
      *(v100 + 12) = 2080;
      v103 = isa;
      v104 = sub_22F00A560(v117, v101, &v136);

      *(v100 + 14) = v104;
      isa = v103;
      _os_log_impl(&dword_22EFE1000, v54, v99, "%s %s lookup failed ", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v102, -1, -1);
      v58 = v100;
LABEL_61:
      MEMORY[0x2318FE8B0](v58, -1, -1);
LABEL_63:

      if (qword_27DAA05A8 != -1)
      {
        swift_once();
      }

      v132(qword_27DAACED8, 1);

      isa(v130, v46);
      sub_22F0D00CC();
      goto LABEL_52;
    }

    swift_beginAccess();
    if (*(v135 + 24) || (swift_beginAccess(), *(v48 + 24) >> 60 != 15))
    {

      isa(v130, v46);
      goto LABEL_51;
    }

    v49 = *(v131 + 3);
    v50 = *(v131 + 4);
    __swift_project_boxed_opaque_existential_1(v131, v49);
    LOBYTE(v136) = 7;
    v51 = (*(v50 + 16))(&v136, v49, v50);
    if (v52 >> 60 == 15)
    {
      if (qword_280CBDB90 != -1)
      {
        swift_once();
      }

      v53 = sub_22F0D0A1C();
      __swift_project_value_buffer(v53, qword_280CBDB98);
      v54 = sub_22F0D09FC();
      v55 = sub_22F0D123C();
      if (!os_log_type_enabled(v54, v55))
      {
        goto LABEL_63;
      }

      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v136 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v136);
      _os_log_impl(&dword_22EFE1000, v54, v55, "%s image failed for screentime icon", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x2318FE8B0](v57, -1, -1);
      v58 = v56;
      goto LABEL_61;
    }

    v61 = v51;
    v62 = v52;
    if (qword_280CBDB90 != -1)
    {
      swift_once();
    }

    v105 = sub_22F0D0A1C();
    __swift_project_value_buffer(v105, qword_280CBDB98);
    v106 = sub_22F0D09FC();
    v107 = sub_22F0D124C();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v131 = isa;
      v109 = v108;
      v110 = swift_slowAlloc();
      v127 = v47;
      v111 = v110;
      *&v136 = v110;
      *v109 = 136315138;
      *(v109 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v136);
      _os_log_impl(&dword_22EFE1000, v106, v107, "%s screentime icon as fallback", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      MEMORY[0x2318FE8B0](v111, -1, -1);
      v16 = v120;
      MEMORY[0x2318FE8B0](v109, -1, -1);

      v131(v130, v46);
    }

    else
    {

      isa(v130, v46);
    }

LABEL_42:
    v75 = *(v48 + 16);
    v76 = *(v48 + 24);
    *(v48 + 16) = v61;
    *(v48 + 24) = v62;
    sub_22F00AB48(v75, v76);
LABEL_51:
    v85 = v122 == 0;
    sub_22EFFFB40(v128, &v136);
    v86 = swift_allocObject();
    v87 = v133;
    v86[2] = v132;
    v86[3] = v87;
    v86[4] = v119;
    v86[5] = v16;
    v86[6] = v135;
    v86[7] = v48;
    sub_22EFE6B9C(&v136, (v86 + 8));
    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    v89 = swift_allocObject();
    *(v89 + 16) = 0;
    v90 = swift_allocObject();
    v120 = v16;
    v91 = v90;
    *(v90 + 16) = MEMORY[0x277D84F90];
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    v93 = v129[4];
    v132 = v129[3];
    v128 = v93;
    v131 = __swift_project_boxed_opaque_existential_1(v129, v132);
    v94 = swift_allocObject();
    *(v94 + 16) = sub_22F05068C;
    *(v94 + 24) = v86;
    v95 = v118;
    *(v94 + 32) = v91;
    *(v94 + 40) = v95;
    *(v94 + 48) = v88;
    *(v94 + 56) = v92;
    *(v94 + 64) = v123;
    *(v94 + 72) = v85;
    *(v94 + 80) = v89;
    v130 = *(v93 + 8);
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    v96 = v119;
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    sub_22F0CFFAC();
    (v130)(sub_22F0507E4, v94, v132, v128);
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F0D00CC();
LABEL_52:
    sub_22F0D00CC();
    return sub_22F0D00CC();
  }

  if (qword_280CBDB90 != -1)
  {
    swift_once();
  }

  v77 = sub_22F0D0A1C();
  __swift_project_value_buffer(v77, qword_280CBDB98);
  v78 = v121;
  sub_22F0CFF1C();
  v79 = sub_22F0D09FC();
  v80 = sub_22F0D123C();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v136 = v82;
    *v81 = 136315394;
    *(v81 + 4) = sub_22F00A560(0xD000000000000057, 0x800000022F0DE750, &v136);
    *(v81 + 12) = 2080;
    v83 = isa;
    v84 = sub_22F00A560(v117, v78, &v136);

    *(v81 + 14) = v84;
    isa = v83;
    _os_log_impl(&dword_22EFE1000, v79, v80, "%s %s lookup timeout", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v82, -1, -1);
    MEMORY[0x2318FE8B0](v81, -1, -1);
  }

  else
  {
  }

  if (qword_27DAA05B0 != -1)
  {
    swift_once();
  }

  v132(qword_27DAACEE0, 1);

  isa(v130, v46);
  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

void sub_22F050354(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  swift_beginAccess();
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0303BC(v12, v13);

  swift_beginAccess();
  *(a3 + 16) = v9;
  *(a3 + 24) = v8;

  swift_beginAccess();
  v14 = *(a4 + 16);
  v15 = *(a4 + 24);
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  sub_22F00AB48(v14, v15);
  dispatch_group_leave(a5);
}

void sub_22F05043C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v35 = a4;
  v15 = type metadata accessor for ResolvedFamily(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  MEMORY[0x28223BE20](v18);
  v20 = (&v31 - v19);
  sub_22F040114(a1, &v31 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = *v20;
    a2(v21, 1);
  }

  else
  {
    sub_22F03DCB4(v20, v17);
    swift_beginAccess();
    v23 = *(a5 + 16);
    v24 = *(a5 + 24);
    v34 = v23;
    swift_beginAccess();
    v25 = *(a6 + 16);
    v26 = *(a6 + 24);
    v33 = v25;
    swift_beginAccess();
    v28 = *(a7 + 16);
    v27 = *(a7 + 24);
    v29 = *(v17 + 1);
    v32 = *v17;
    v30 = *(v17 + 2);
    sub_22F0CFF1C();
    sub_22F0CFF1C();
    sub_22F0303BC(v28, v27);
    sub_22F02F0A4(v35, v34, v24, v33, v26, v28, v27, v32, v29, v30, a8, a2, a3);
    sub_22F00AB48(v28, v27);

    sub_22F050788(v17);
  }
}

uint64_t objectdestroy_12Tm()
{
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22F050788(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedFamily(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

People::HandleType_optional __swiftcall HandleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

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

uint64_t HandleType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C69616D65;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_22F05088C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C69616D65;
  }

  else
  {
    v3 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v4 = 0xEB00000000726562;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C69616D65;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22F0D188C();
  }

  return v8 & 1;
}

uint64_t sub_22F050938()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F0509C0(uint64_t a1)
{
  sub_22F0D0D5C();
}

uint64_t sub_22F050A34(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F050AB8@<X0>(char *a2@<X8>)
{
  v3 = sub_22F0D174C();

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

void sub_22F050B18(uint64_t *a1@<X8>)
{
  v2 = 0x6D754E656E6F6870;
  if (*v1)
  {
    v2 = 0x6C69616D65;
  }

  v3 = 0xEB00000000726562;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Person.statuses.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Person.displayName.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(*v0, v1, v2);
}

uint64_t Person.contactSearchURL.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v49 - v3;
  v54 = sub_22F0D02DC();
  v53 = *(v54 - 8);
  v4 = MEMORY[0x28223BE20](v54);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = MEMORY[0x28223BE20](v4);
  v52 = &v49 - v7;
  v50 = v1;
  v8 = *(v1 + 8);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = MEMORY[0x277D84F90];
    v11 = v8 + 32;
    do
    {
      sub_22EFFFB40(v11, v63);
      sub_22EFFFB40(v63, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA06E0, &qword_22F0D2C10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1810, &qword_22F0D7F18);
      if (swift_dynamicCast())
      {
        v12 = *(&v61 + 1);
        v13 = v62;
        __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
        v14 = (*(v13 + 16))(v12, v13);
        v16 = v15;
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        __swift_destroy_boxed_opaque_existential_1Tm(&v60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_22F03C784(0, *(v10 + 16) + 1, 1, v10);
          v10 = isUniquelyReferenced_nonNull_native;
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_22F03C784((v17 > 1), v18 + 1, 1, v10);
          v10 = isUniquelyReferenced_nonNull_native;
        }

        *(v10 + 16) = v18 + 1;
        v19 = v10 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
      }

      else
      {
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        isUniquelyReferenced_nonNull_native = sub_22F003A4C(&v60, &qword_27DAA1818, &qword_22F0D7F20);
      }

      v11 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v20 = *(v10 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v10 + 40;
    v57 = MEMORY[0x277D84F90];
    v49 = v10 + 40;
    do
    {
      v23 = (v22 + 16 * v21);
      while (1)
      {
        if (v21 >= v20)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          sub_22F0D00CC();

          result = sub_22F0D00CC();
          __break(1u);
          return result;
        }

        if (__OFADD__(v21, 1))
        {
          goto LABEL_32;
        }

        v58 = v21 + 1;
        v25 = *(v23 - 1);
        v24 = *v23;
        v63[0] = v25;
        v63[1] = v24;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v49 - 2) = v63;
        sub_22F0CFF1C();
        v26 = v57;
        sub_22F0CFF1C();
        v27 = sub_22F051C9C(sub_22F04268C, (&v49 - 4), v26);

        if ((v27 & 1) == 0)
        {
          break;
        }

        ++v21;
        v23 += 2;
        if (v58 == v20)
        {
          goto LABEL_27;
        }
      }

      sub_22F0CFF1C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_22F03C784(0, *(v57 + 2) + 1, 1, v57);
      }

      v29 = *(v57 + 2);
      v28 = *(v57 + 3);
      if (v29 >= v28 >> 1)
      {
        v57 = sub_22F03C784((v28 > 1), v29 + 1, 1, v57);
      }

      v30 = v57;
      *(v57 + 2) = v29 + 1;
      v31 = &v30[16 * v29];
      *(v31 + 4) = v25;
      *(v31 + 5) = v24;

      v21 = v58;
      v22 = v49;
    }

    while (v58 != v20);
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
  }

LABEL_27:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E28, &qword_22F0D4FF8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22F0D6710;
  v33 = [*v50 identifier];
  v34 = sub_22F0D0CAC();
  v36 = v35;

  *(v32 + 32) = 1;
  *(v32 + 40) = v34;
  *(v32 + 48) = v36;
  *(v32 + 56) = 0;
  *(v32 + 72) = 0;
  *(v32 + 80) = 0;
  *(v32 + 64) = v57;
  *(v32 + 88) = 1;
  v37 = v51;
  sub_22F0D02CC();
  sub_22F0D02BC();
  MEMORY[0x2318FC7D0](0xD000000000000010, 0x800000022F0DC490);
  KeyPath = swift_getKeyPath();
  v63[0] = v32;
  sub_22F0CFFAC();
  sub_22F0CFF1C();
  sub_22F008F78(v63, KeyPath);

  sub_22F005844(v63[0]);
  sub_22F0D00CC();
  v39 = v53;
  v40 = v52;
  v41 = v54;
  (*(v53 + 32))(v52, v37, v54);
  v42 = v55;
  sub_22F0D026C();
  (*(v39 + 8))(v40, v41);
  v43 = sub_22F0D043C();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v42, 1, v43);
  v46 = v56;
  if (v45 == 1)
  {
    sub_22F003A4C(v42, &qword_27DAA10F8, &qword_22F0D5320);
    v47 = 1;
  }

  else
  {
    (*(v44 + 32))(v56, v42, v43);
    v47 = 0;
  }

  return (*(v44 + 56))(v46, v47, 1, v43);
}

uint64_t sub_22F0513D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  MEMORY[0x28223BE20](v0);
  v2 = v22 - v1;
  v3 = sub_22F0D02DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  __swift_allocate_value_buffer(v0, qword_280CBD1C8);
  v10 = __swift_project_value_buffer(v0, qword_280CBD1C8);
  v11 = MEMORY[0x277D84F90];
  v12 = sub_22F07D138(MEMORY[0x277D84F90]);
  v13 = sub_22F07D244(v11);
  v14 = sub_22F003CCC(v12);

  v15 = sub_22F003F28(v13);

  v22[0] = v14;
  sub_22F007154(v15);
  v16 = v22[0];
  sub_22F0D02CC();
  sub_22F0D02BC();
  MEMORY[0x2318FC7D0](0xD000000000000010, 0x800000022F0DC490);
  KeyPath = swift_getKeyPath();
  v22[0] = v16;
  sub_22F0CFFAC();
  sub_22F0CFF1C();
  sub_22F008F78(v22, KeyPath);

  sub_22F005844(v22[0]);
  sub_22F0D00CC();
  (*(v4 + 32))(v9, v7, v3);
  sub_22F0D026C();
  (*(v4 + 8))(v9, v3);
  v18 = sub_22F0D043C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v2, 1, v18) == 1)
  {
    sub_22F003A4C(v2, &qword_27DAA10F8, &qword_22F0D5320);
    v20 = 1;
  }

  else
  {
    (*(v19 + 32))(v10, v2, v18);
    v20 = 0;
  }

  return (*(v19 + 56))(v10, v20, 1, v18);
}

uint64_t static Person.emptyContactSearchURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CBD1C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = __swift_project_value_buffer(v2, qword_280CBD1C8);
  swift_beginAccess();
  return sub_22F036154(v3, a1);
}

uint64_t static Person.emptyContactSearchURL.setter(uint64_t a1)
{
  if (qword_280CBD1C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = __swift_project_value_buffer(v2, qword_280CBD1C8);
  swift_beginAccess();
  sub_22F051D48(a1, v3);
  swift_endAccess();
  return sub_22F003A4C(a1, &qword_27DAA10F8, &qword_22F0D5320);
}

uint64_t (*static Person.emptyContactSearchURL.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280CBD1C0 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  __swift_project_value_buffer(v1, qword_280CBD1C8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F051938@<X0>(uint64_t a1@<X8>)
{
  if (qword_280CBD1C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = __swift_project_value_buffer(v2, qword_280CBD1C8);
  swift_beginAccess();
  return sub_22F036154(v3, a1);
}

uint64_t sub_22F0519D0(uint64_t a1)
{
  if (qword_280CBD1C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v3 = __swift_project_value_buffer(v2, qword_280CBD1C8);
  swift_beginAccess();
  sub_22F051D48(a1, v3);
  return swift_endAccess();
}

uint64_t Person.init(from:statuses:contactFormatter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_22EFE6B9C(a3, (a4 + 2));
}

Swift::String_optional __swiftcall Person.preferredHandle(ofType:)(People::HandleType ofType)
{
  if (*ofType)
  {
    v2 = sub_22F0D188C();

    if ((v2 & 1) == 0)
    {
      v3 = [*v1 emailAddressStrings];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v3 = [*v1 phoneNumberStrings];
LABEL_6:
  v4 = v3;
  v5 = sub_22F0D0F4C();

  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
    sub_22F0CFF1C();
  }

  else
  {

    v6 = 0;
    v7 = 0;
  }

  v8 = v6;
  v9 = v7;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

unint64_t Person.description.getter()
{
  v1 = v0;
  sub_22F0D152C();

  v2 = [*v0 description];
  v3 = sub_22F0D0CAC();
  v5 = v4;

  MEMORY[0x2318FD2C0](v3, v5);

  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE800);
  v6 = v1[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA06E0, &qword_22F0D2C10);
  v8 = MEMORY[0x2318FD490](v6, v7);
  MEMORY[0x2318FD2C0](v8);

  MEMORY[0x2318FD2C0](10506, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t sub_22F051C9C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_22F0CFF1C();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22F051D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F051DBC()
{
  result = qword_27DAA1820;
  if (!qword_27DAA1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1820);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22F051E3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22F051E84(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_22F051EE0()
{
  result = qword_27DAA1828;
  if (!qword_27DAA1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1828);
  }

  return result;
}

uint64_t sub_22F051F34(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v12[0] = *(i - 1);
      v12[1] = v8;
      sub_22F0CFF1C();
      a1(&v11, v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x2318FD450](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F0D0F8C();
        }

        sub_22F0D0FEC();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

char *sub_22F052050(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318FDAB0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(a3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v19 = v8;
      a1(&v18, &v19);
      if (v3)
      {

        return v7;
      }

      if (v18)
      {
        v17 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_22F03D340(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        v13 = v17;
        if (v12 >= v11 >> 1)
        {
          v14 = sub_22F03D340((v11 > 1), v12 + 1, 1, v7);
          v13 = v17;
          v7 = v14;
        }

        *(v7 + 2) = v12 + 1;
        *&v7[16 * v12 + 32] = v13;
      }

      else
      {
        sub_22F059A80(0, *(&v18 + 1));
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_22F052218(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 40);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v6;
    v16[0] = *(v6 - 1);
    v16[1] = v8;
    sub_22F0CFF1C();
    a1(&v15, v16);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22F03D340(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v11 = v14;
      if (v10 >= v9 >> 1)
      {
        v12 = sub_22F03D340((v9 > 1), v10 + 1, 1, v7);
        v11 = v14;
        v7 = v12;
      }

      *(v7 + 2) = v10 + 1;
      *&v7[16 * v10 + 32] = v11;
    }

    else
    {
      sub_22F059A80(0, *(&v15 + 1));
    }

    v6 += 2;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t static ContactFetcher.shared.getter()
{
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

unint64_t static SimpleContactFilter.phraseMatching(for:with:)(unint64_t a1)
{
  v2 = String.trimToNil()();
  if (v2.value._object)
  {
    countAndFlagsBits = v2.value._countAndFlagsBits;
    v15 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
    {
      v5 = 0;
      v6 = a1 & 0xC000000000000001;
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      v12 = a1;
      v13 = countAndFlagsBits;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x2318FDAB0](v5, a1);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_17;
          }

          v8 = *(a1 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v14 = v8;
        if (sub_22F052580(&v14, countAndFlagsBits, v2.value._object))
        {
          sub_22F0D15EC();
          sub_22F0D162C();
          sub_22F0D163C();
          sub_22F0D15FC();
          a1 = v12;
          countAndFlagsBits = v13;
        }

        else
        {
        }

        ++v5;
        if (v10 == i)
        {
          a1 = v15;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    a1 = MEMORY[0x277D84F90];
LABEL_20:
  }

  else
  {
    sub_22F0CFF1C();
  }

  return a1;
}

uint64_t sub_22F052580(id *a1, uint64_t a2, unint64_t a3)
{
  v100 = sub_22F0D01DC();
  v6 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *a1;
  result = String.splitWith(_:)(32, 0xE100000000000000, a2, a3);
  v10 = result;
  v11 = *(result + 16);
  v93 = v6;
  if (!v11)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v12 = 0;
  v13 = (v6 + 8);
  v14 = result + 40;
  v94 = v11;
  v91 = v11 - 1;
  v15 = MEMORY[0x277D84F90];
  v92 = result + 40;
  do
  {
    v89 = v15;
    v16 = (v14 + 16 * v12);
    v17 = v12;
    while (1)
    {
      if (v17 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      v12 = v17 + 1;
      v18 = *v16;
      v98 = *(v16 - 1);
      v99 = v18;
      sub_22F0CFF1C();
      sub_22F0D01CC();
      sub_22F00901C();
      v19 = sub_22F0D136C();
      v21 = v20;
      (*v13)(v8, v100);

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        break;
      }

      v16 += 2;
      ++v17;
      if (v94 == v12)
      {
        v15 = v89;
        goto LABEL_17;
      }
    }

    v23 = v89;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F03C784(0, *(v23 + 16) + 1, 1, v23);
      v23 = result;
    }

    v24 = v23;
    v25 = *(v23 + 16);
    v26 = v24;
    v27 = *(v24 + 24);
    if (v25 >= v27 >> 1)
    {
      result = sub_22F03C784((v27 > 1), v25 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 16) = v25 + 1;
    v28 = v26 + 16 * v25;
    v15 = v26;
    *(v28 + 32) = v19;
    *(v28 + 40) = v21;
    v14 = v92;
  }

  while (v91 != v17);
LABEL_17:

  v29 = *(v15 + 16);
  v89 = v15;
  if (v29)
  {
    v94 = (v93 + 8);
    v30 = (v15 + 40);
    v31 = 1;
    while ((v31 & 1) == 0)
    {
      v31 = 0;
LABEL_20:
      v30 += 16;
      if (!--v29)
      {
        goto LABEL_59;
      }
    }

    v91 = v30;
    v92 = v29;
    v32 = *(v30 - 1);
    v33 = *v30;
    sub_22F0CFF1C();
    v34 = [v95 givenName];
    v35 = sub_22F0D0CAC();
    v37 = v36;

    v98 = v35;
    v99 = v37;
    sub_22F0D01CC();
    sub_22F00901C();
    v38 = sub_22F0D136C();
    v40 = v39;
    v90 = *v94;
    v90(v8, v100);

    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v38 & 0xFFFFFFFFFFFFLL;
    }

    v93 = v32;
    if (v41)
    {
      v98 = v38;
      v99 = v40;
      v96 = v32;
      v97 = v33;
      v42 = sub_22F0D13AC();

      if (v42)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    v43 = [v95 middleName];
    v44 = sub_22F0D0CAC();
    v46 = v45;

    v98 = v44;
    v99 = v46;
    sub_22F0D01CC();
    v47 = sub_22F0D136C();
    v49 = v48;
    v50 = v90;
    v90(v8, v100);

    v51 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v51 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v51)
    {
      v98 = v47;
      v99 = v49;
      v96 = v93;
      v97 = v33;
      v52 = sub_22F0D13AC();

      if (v52)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    v53 = [v95 familyName];
    v54 = sub_22F0D0CAC();
    v56 = v55;

    v98 = v54;
    v99 = v56;
    sub_22F0D01CC();
    v57 = sub_22F0D136C();
    v59 = v58;
    v50(v8, v100);

    v60 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v60 = v57 & 0xFFFFFFFFFFFFLL;
    }

    if (v60)
    {
      v98 = v57;
      v99 = v59;
      v96 = v93;
      v97 = v33;
      v61 = sub_22F0D13AC();

      if (v61)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    v62 = [v95 phoneticGivenName];
    v63 = sub_22F0D0CAC();
    v65 = v64;

    v98 = v63;
    v99 = v65;
    sub_22F0D01CC();
    v66 = sub_22F0D136C();
    v68 = v67;
    v50(v8, v100);

    v69 = HIBYTE(v68) & 0xF;
    if ((v68 & 0x2000000000000000) == 0)
    {
      v69 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (v69)
    {
      v98 = v66;
      v99 = v68;
      v96 = v93;
      v97 = v33;
      v70 = sub_22F0D13AC();

      if (v70)
      {
LABEL_50:

        v31 = 1;
        goto LABEL_51;
      }
    }

    else
    {
    }

    v71 = [v95 phoneticMiddleName];
    v72 = sub_22F0D0CAC();
    v74 = v73;

    v98 = v72;
    v99 = v74;
    sub_22F0D01CC();
    v75 = sub_22F0D136C();
    v77 = v76;
    v50(v8, v100);

    v78 = HIBYTE(v77) & 0xF;
    if ((v77 & 0x2000000000000000) == 0)
    {
      v78 = v75 & 0xFFFFFFFFFFFFLL;
    }

    if (v78)
    {
      v98 = v75;
      v99 = v77;
      v96 = v93;
      v97 = v33;
      v79 = sub_22F0D13AC();

      if (v79)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    v80 = [v95 phoneticFamilyName];
    v81 = sub_22F0D0CAC();
    v83 = v82;

    v98 = v81;
    v99 = v83;
    sub_22F0D01CC();
    v84 = sub_22F0D136C();
    v86 = v85;
    v50(v8, v100);

    v87 = HIBYTE(v86) & 0xF;
    if ((v86 & 0x2000000000000000) == 0)
    {
      v87 = v84 & 0xFFFFFFFFFFFFLL;
    }

    if (v87)
    {
      v98 = v84;
      v99 = v86;
      v96 = v93;
      v97 = v33;
      v31 = sub_22F0D13AC();
    }

    else
    {

      v31 = 0;
    }

LABEL_51:
    v30 = v91;
    v29 = v92;
    goto LABEL_20;
  }

  v31 = 1;
LABEL_59:

  return v31 & 1;
}

uint64_t CNContact.people_normalizedHandles.getter()
{
  v0 = CNContact.people_normalizedEmails.getter();
  v1 = CNContact.people_normalizedPhoneNumbers.getter();
  sub_22F007248(v1);
  return v0;
}

uint64_t CNContact.people_normalizedEmails.getter()
{
  v1 = [v0 emailAddressStrings];
  v2 = sub_22F0D0F4C();

  v3 = *(v2 + 16);
  if (v3)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v3, 0);
    v4 = v14;
    v5 = v2 + 40;
    do
    {
      v6 = sub_22F0D0D0C();
      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_22EFFC4E8((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

char *CNContact.people_normalizedPhoneNumbers.getter()
{
  v1 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1480, &qword_22F0D7B10);
  v2 = sub_22F0D0F4C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_22F0D143C();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v17 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2318FDAB0](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 = [v6 value];
      v9 = [v8 fullyQualifiedDigits];

      if (v9)
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = sub_22F0D0CAC();
    v12 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_22F03C784(0, *(v17 + 2) + 1, 1, v17);
    }

    v14 = *(v17 + 2);
    v13 = *(v17 + 3);
    if (v14 >= v13 >> 1)
    {
      v17 = sub_22F03C784((v13 > 1), v14 + 1, 1, v17);
    }

    *(v17 + 2) = v14 + 1;
    v15 = &v17[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = v12;
  }

  while (v4 != v3);
LABEL_23:

  return v17;
}

uint64_t sub_22F0530FC(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_22F0D0F4C();

  return v3;
}

uint64_t CNContact.callHistoryHandles.getter()
{
  v1 = v0;
  v2 = [v0 emailAddressStrings];
  v3 = sub_22F0D0F4C();

  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v24 = MEMORY[0x277D84F90];
    sub_22F0D161C();
    v6 = v3 + 40;
    do
    {
      v7 = objc_allocWithZone(MEMORY[0x277CF7D30]);
      sub_22F0CFF1C();
      v8 = sub_22F0D0C7C();

      [v7 initWithType:3 value:v8];

      sub_22F0D15EC();
      sub_22F0D162C();
      sub_22F0D163C();
      sub_22F0D15FC();
      v6 += 16;
      --v4;
    }

    while (v4);

    v9 = v24;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v10 = [v1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1480, &qword_22F0D7B10);
  v11 = sub_22F0D0F4C();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_18:

    v22 = MEMORY[0x277D84F90];
LABEL_19:
    sub_22F007700(v22);
    return v9;
  }

  v12 = sub_22F0D143C();
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_8:
  result = sub_22F0D161C();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v23 = v9;
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2318FDAB0](v14, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = [v17 value];
      v20 = [v19 fullyQualifiedDigits];

      if (!v20)
      {
        v21 = [v18 value];
        v20 = [v21 stringValue];
      }

      sub_22F0D0CAC();

      ++v14;
      v15 = objc_allocWithZone(MEMORY[0x277CF7D30]);
      v16 = sub_22F0D0C7C();

      [v15 initWithType:2 value:v16];

      sub_22F0D15EC();
      sub_22F0D162C();
      sub_22F0D163C();
      sub_22F0D15FC();
    }

    while (v12 != v14);

    v9 = v23;
    v22 = v5;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F0534B4(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1848, &qword_22F0D8120);
  v4 = sub_22F0D0F2C();
  v10[0] = 0;
  v5 = [v2 unifiedContactsMatchingPredicate:a1 keysToFetch:v4 error:v10];

  v6 = v10[0];
  if (v5)
  {
    sub_22F01B924(0, &qword_280CBDC30, 0x277CBDA58);
    a1 = sub_22F0D0F4C();
    v7 = v6;
  }

  else
  {
    v8 = v10[0];
    sub_22F0D033C();

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_22F0535F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  aBlock[4] = sub_22F059A40;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F0537C8;
  aBlock[3] = &block_descriptor_6;
  v8 = _Block_copy(aBlock);
  v14 = 0;
  sub_22F0CFFAC();
  LODWORD(a1) = [v3 enumerateContactsWithFetchRequest:a1 error:&v14 usingBlock:v8];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = v14;
  if (a1)
  {
    v10 = v14;
    sub_22F0D00CC();
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    result = sub_22F0D00CC();
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v12 = isEscapingClosureAtFileLocation;
  sub_22F0D033C();

  swift_willThrow();
  sub_22F0D00CC();
  v13 = swift_isEscapingClosureAtFileLocation();
  result = sub_22F0D00CC();
  if (v13)
  {
    __break(1u);
  }

  return result;
}

void sub_22F0537C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_22F053848()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v1 = [v0 meContactIdentifiers_];
  v2 = v7[0];
  if (v1)
  {
    v3 = v1;
    v4 = sub_22F0D0F4C();
    v5 = v2;
  }

  else
  {
    v4 = v7[0];
    sub_22F0D033C();

    swift_willThrow();
  }

  return v4;
}

char *sub_22F053914(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F0D112C();
  v5 = [v2 contactSuggestionsForPeopleWidgetWithMaxSuggestions:a1 excludeContactsWithIdentifiers:v4];

  sub_22F01B924(0, &qword_280CBDC48, 0x277D3A098);
  v6 = sub_22F0D0F4C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v7 = sub_22F0D143C();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v21 = MEMORY[0x277D84F90];
  result = sub_22EFFC4E8(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v21;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2318FDAB0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v11 contact];
      v14 = [v13 identifier];

      v15 = sub_22F0D0CAC();
      v17 = v16;

      v19 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22EFFC4E8((v18 > 1), v19 + 1, 1);
      }

      ++v9;
      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
    }

    while (v7 != v9);

    return v10;
  }

  __break(1u);
  return result;
}

id sub_22F053B34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F0D80D0;
  v1 = *MEMORY[0x277CBD020];
  v5 = *MEMORY[0x277CBD158];
  v2 = *MEMORY[0x277CBD158];
  *(v0 + 32) = *MEMORY[0x277CBD020];
  *(v0 + 40) = v2;
  qword_27DAACE60 = v0;
  v3 = v1;

  return v5;
}

id sub_22F053BBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F0D80E0;
  v1 = *MEMORY[0x277CBD078];
  v2 = *MEMORY[0x277CBD000];
  *(v0 + 32) = *MEMORY[0x277CBD078];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBD058];
  v4 = *MEMORY[0x277CBCFF8];
  *(v0 + 48) = *MEMORY[0x277CBD058];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBCFC0];
  v6 = *MEMORY[0x277CBD098];
  *(v0 + 64) = *MEMORY[0x277CBCFC0];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CBD0A8];
  v8 = *MEMORY[0x277CBD0B0];
  *(v0 + 80) = *MEMORY[0x277CBD0A8];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CBD0B8];
  v23 = *MEMORY[0x277CBD050];
  v10 = *MEMORY[0x277CBD050];
  *(v0 + 96) = *MEMORY[0x277CBD0B8];
  *(v0 + 104) = v10;
  v22 = objc_opt_self();
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v23;
  result = [v22 descriptorForRequiredKeysForStyle_];
  *(v0 + 112) = result;
  qword_280CC1270 = v0;
  return result;
}

void *sub_22F053D24()
{
  result = _s6People14ContactFetcherCACycfC_0();
  qword_280CBEC30 = result;
  return result;
}

unint64_t sub_22F053D48()
{
  result = sub_22F05520C(1, 0);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v3 = result;
  v4 = sub_22F0D143C();
  result = v3;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x2318FDAB0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F053E08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (qword_280CBE540 != -1)
  {
    v16 = a3;
    swift_once();
    a3 = v16;
  }

  v18 = qword_280CC1270;
  if (a3)
  {
    v7 = qword_27DAA0528;
    sub_22F0CFF1C();
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_22F0CFF1C();
    sub_22F0077F0(v8);
  }

  else
  {
    sub_22F0CFF1C();
  }

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F0D2BF0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  sub_22F0CFF1C();
  v11 = sub_22F0D0F2C();

  v12 = [v9 predicateForContactsWithIdentifiers_];

  v13 = MEMORY[0x2318FE070]();
  sub_22F053FA4(v4, v12, &v18, &v17);
  objc_autoreleasePoolPop(v13);

  v14 = v17;

  return v14;
}

void sub_22F053FA4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = a1[5];
  v9 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v8);
  v10 = *a3;
  v11 = *(v9 + 8);
  sub_22F0CFF1C();
  v12 = v11(a2, v10, v8, v9);
  if (v4)
  {

    if (qword_280CBDB28 != -1)
    {
      swift_once();
    }

    v13 = sub_22F0D0A1C();
    __swift_project_value_buffer(v13, qword_280CBDB30);
    v14 = v4;
    v15 = sub_22F0D09FC();
    v16 = sub_22F0D123C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_22F0D192C();
      v21 = sub_22F00A560(v19, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22EFE1000, v15, v16, "error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x2318FE8B0](v18, -1, -1);
      MEMORY[0x2318FE8B0](v17, -1, -1);
    }

    else
    {
    }

    v24 = 0;
    goto LABEL_14;
  }

  v22 = v12;

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_16:

    v24 = 0;
    goto LABEL_14;
  }

  if (!sub_22F0D143C())
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x2318FDAB0](0, v22);
    goto LABEL_11;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v22 + 32);
LABEL_11:
    v24 = v23;

LABEL_14:
    *a4 = v24;
    return;
  }

  __break(1u);
}

uint64_t sub_22F054230(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_280CBE540 != -1)
  {
    v14 = a2;
    swift_once();
    a2 = v14;
  }

  v5 = qword_280CC1270;
  v15 = qword_280CC1270;
  if (a2)
  {
    v6 = qword_27DAA0528;
    sub_22F0CFF1C();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0CFF1C();
    v8 = sub_22F0077F0(v7);
    v5 = v15;
  }

  else
  {
    v8 = sub_22F0CFF1C();
  }

  v9 = MEMORY[0x2318FE070](v8);
  v10 = v3[5];
  v11 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v10);
  v12 = (*(v11 + 8))(a1, v5, v10, v11);
  objc_autoreleasePoolPop(v9);

  return v12;
}

uint64_t sub_22F054380(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_22F0543A4, 0, 0);
}

uint64_t sub_22F0543A4()
{
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1838, &qword_22F0D80F8);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1840, &unk_22F0D8110);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_22F0544C8;

  return MEMORY[0x282200740](v0 + 16, v2, v4, 0, 0, &unk_22F0D8108, v3, v2);
}

void sub_22F0544C8()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22F054604, 0, 0);
  }
}

uint64_t sub_22F054620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 137) = a5;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0546D0, 0, 0);
}

uint64_t sub_22F0546D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 168);
  if (v3 >> 62)
  {
    v4 = sub_22F0D143C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_17:
    *(v2 + 200) = MEMORY[0x277D84F90];
    v22 = swift_task_alloc();
    *(v2 + 208) = v22;
    a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1890, &unk_22F0D82A0);
    *v22 = v2;
    v22[1] = sub_22F054A60;
    v4 = v2 + 128;

    return MEMORY[0x2822004C0](v4, a2);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v26 = v3 & 0xC000000000000001;
    v27 = **(v2 + 160);
    v24 = *(v2 + 168) + 32;
    v25 = *(v2 + 137);
    v28 = v4;
    while (1)
    {
      if (v26)
      {
        v7 = MEMORY[0x2318FDAB0](v5, *(v2 + 168));
      }

      else
      {
        v7 = *(v24 + 8 * v5);
      }

      v8 = v7;
      v10 = *(v2 + 184);
      v9 = *(v2 + 192);
      v11 = *(v2 + 176);
      v12 = sub_22F0D10EC();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v9, 1, 1, v12);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v11;
      *(v14 + 40) = v8;
      *(v14 + 48) = v25;
      sub_22F01B0B8(v9, v10);
      LODWORD(v10) = (*(v13 + 48))(v10, 1, v12);
      sub_22F0CFFAC();
      v16 = v8;
      v17 = *(v2 + 184);
      if (v10 == 1)
      {
        sub_22F003A4C(*(v2 + 184), &qword_27DAA1418, &qword_22F0D7460);
        if (!*v15)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_22F0D10DC();
        (*(v13 + 8))(v17, v12);
        if (!*v15)
        {
LABEL_13:
          v18 = 0;
          v20 = 0;
          goto LABEL_14;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_22F0D106C();
      v20 = v19;
      swift_unknownObjectRelease();
LABEL_14:
      sub_22F0CFFAC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1838, &qword_22F0D80F8);
      v21 = v20 | v18;
      if (v20 | v18)
      {
        v21 = v2 + 16;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
        *(v2 + 32) = v18;
        *(v2 + 40) = v20;
      }

      ++v5;
      v6 = *(v2 + 192);
      *(v2 + 80) = 1;
      *(v2 + 88) = v21;
      *(v2 + 96) = v27;
      swift_task_create();
      sub_22F0D00CC();

      sub_22F0D00CC();
      sub_22F003A4C(v6, &qword_27DAA1418, &qword_22F0D7460);
      if (v28 == v5)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return MEMORY[0x2822004C0](v4, a2);
}

uint64_t sub_22F054A60()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_22F055138;
  }

  else
  {
    *(v2 + 224) = *(v2 + 128);
    *(v2 + 138) = *(v2 + 136);
    v3 = sub_22F054B84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F054B84(uint64_t a1, uint64_t a2)
{
  v52 = v2;
  v3 = *(v2 + 138);
  if (v3 != 255)
  {
    v4 = *(v2 + 224);
    if (v3)
    {
      sub_22F015CE4(*(v2 + 224), 1);
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v5 = *(v2 + 224);
      v6 = sub_22F0D0A1C();
      __swift_project_value_buffer(v6, qword_280CBEC40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_22F0D2BF0;
      swift_getErrorValue();
      sub_22F015CE4(v5, 1);
      v8 = sub_22F0D192C();
      v10 = v9;
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_22F03DB30();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      v11 = sub_22F0D0CCC();
      v13 = v12;
      v14 = sub_22F0D09FC();
      v15 = sub_22F0D123C();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v2 + 138);
      v18 = *(v2 + 224);
      if (v16)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v51 = v20;
        *v19 = 136315138;
        v21 = sub_22F00A560(v11, v13, &v51);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_22EFE1000, v14, v15, "%s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x2318FE8B0](v20, -1, -1);
        MEMORY[0x2318FE8B0](v19, -1, -1);
        sub_22F059B88(v18, v17);
        sub_22F059B88(v18, v17);

        sub_22F059B88(v18, v17);
      }

      else
      {
        sub_22F059B88(*(v2 + 224), *(v2 + 138));
        sub_22F059B88(v18, v17);

        sub_22F059B88(v18, v17);
      }

      goto LABEL_38;
    }

    v26 = v4 >> 62;
    if (v4 >> 62)
    {
      v27 = sub_22F0D143C();
    }

    else
    {
      v27 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = *(v2 + 200);
    v29 = v28 >> 62;
    if (v28 >> 62)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_22F0D143C();
      v31 = isUniquelyReferenced_nonNull_bridgeObject + v27;
      if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v27))
      {
LABEL_14:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (!v29)
          {
            v32 = v28 & 0xFFFFFFFFFFFFFF8;
            v33 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
            if (v33 >= v31)
            {
              v34 = *(v2 + 200);
              goto LABEL_23;
            }

LABEL_22:
            isUniquelyReferenced_nonNull_bridgeObject = sub_22F0D158C();
            v34 = isUniquelyReferenced_nonNull_bridgeObject;
            v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
            v33 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_23:
            v35 = *(v32 + 16);
            if (v26)
            {
              isUniquelyReferenced_nonNull_bridgeObject = sub_22F0D143C();
              v36 = isUniquelyReferenced_nonNull_bridgeObject;
              if (isUniquelyReferenced_nonNull_bridgeObject)
              {
LABEL_25:
                if (v33 - v35 >= v27)
                {
                  v48 = v34;
                  v49 = v27;
                  v34 = v32 + 8 * v35 + 32;
                  v50 = v2;
                  v47 = v32;
                  if (!v26)
                  {
                    sub_22F01B924(0, &qword_280CBDC30, 0x277CBDA58);
                    swift_arrayInitWithCopy();
                    goto LABEL_34;
                  }

LABEL_31:
                  if (v36 < 1)
                  {
LABEL_47:
                    __break(1u);
                    return MEMORY[0x2822004C0](isUniquelyReferenced_nonNull_bridgeObject, a2);
                  }

                  v37 = v4;
                  v38 = (v2 + 48);
                  sub_22F059BA0();
                  for (i = 0; i != v36; ++i)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1838, &qword_22F0D80F8);
                    v40 = sub_22F058984(v38, i, v37);
                    v42 = *v41;
                    (v40)(v38, 0);
                    *(v34 + 8 * i) = v42;
                  }

LABEL_34:
                  v2 = v50;
                  sub_22F059B88(*(v50 + 224), *(v50 + 138));
                  v34 = v48;
                  if (v49 > 0)
                  {
                    v43 = *(v47 + 16);
                    v44 = __OFADD__(v43, v49);
                    v45 = v43 + v49;
                    if (!v44)
                    {
                      *(v47 + 16) = v45;
                      goto LABEL_37;
                    }

                    goto LABEL_46;
                  }

LABEL_37:
                  *(v2 + 200) = v34;
LABEL_38:
                  v46 = swift_task_alloc();
                  *(v2 + 208) = v46;
                  a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1890, &unk_22F0D82A0);
                  *v46 = v2;
                  v46[1] = sub_22F054A60;
                  isUniquelyReferenced_nonNull_bridgeObject = v2 + 128;

                  return MEMORY[0x2822004C0](isUniquelyReferenced_nonNull_bridgeObject, a2);
                }

LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
                goto LABEL_47;
              }
            }

            else
            {
              v36 = *((*(v2 + 224) & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v36)
              {
                goto LABEL_25;
              }
            }

            sub_22F059B88(*(v2 + 224), *(v2 + 138));
            if (v27 <= 0)
            {
              goto LABEL_37;
            }

            __break(1u);
            goto LABEL_31;
          }
        }

        else if (!v29)
        {
          goto LABEL_22;
        }

        sub_22F0D143C();
        goto LABEL_22;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_bridgeObject = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v31 = isUniquelyReferenced_nonNull_bridgeObject + v27;
      if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v27))
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v22 = *(v2 + 152);
  v23 = sub_22F058C20(*(v2 + 200));

  *v22 = v23;

  v24 = *(v2 + 8);

  return v24();
}

uint64_t sub_22F055154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 40) = a6;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22F05517C, 0, 0);
}

uint64_t sub_22F05517C()
{
  **(v0 + 16) = sub_22F054230(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F05520C(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_280CBE540 != -1)
  {
    swift_once();
  }

  v5 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1848, &qword_22F0D8120);
  v6 = sub_22F0D0F2C();
  v7 = [v5 initWithKeysToFetch_];

  [v7 setSortOrder_];
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  v9 = v3[5];
  v10 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  v12 = sub_22F058B88(v11);

  v20 = MEMORY[0x2318FE070](v13);
  v14 = v3[5];
  v15 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v8;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2 & 1;
  v17 = *(v15 + 16);
  sub_22F0CFFAC();
  v17(v7, sub_22F059524, v16, v14, v15);
  sub_22F0D00CC();
  objc_autoreleasePoolPop(v20);

  swift_beginAccess();
  v18 = *(v8 + 16);
  sub_22F0CFF1C();
  sub_22F0D00CC();
  return v18;
}

uint64_t sub_22F0556F4(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = [a1 identifier];
  v13 = sub_22F0D0CAC();
  v15 = v14;

  LOBYTE(a3) = sub_22F055864(v13, v15, a3);

  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    v17 = a1;
    MEMORY[0x2318FD450]();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F0D0F8C();
    }

    sub_22F0D0FEC();
    result = swift_endAccess();
  }

  if ((a6 & 1) == 0)
  {
    swift_beginAccess();
    v18 = *(a4 + 16);
    if (v18 >> 62)
    {
      result = sub_22F0D143C();
      if (result != a5)
      {
        return result;
      }
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result != a5)
      {
        return result;
      }
    }

    *a2 = 1;
  }

  return result;
}

uint64_t sub_22F055864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22F0D199C();
  sub_22F0D0D5C();
  v6 = sub_22F0D19CC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22F0D188C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_22F05595C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x2318FE070]();
  v6 = v3[10];
  v7 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v6);
  v8 = sub_22F0CFF1C();
  v9 = sub_22F058B88(v8);

  v10 = (*(v7 + 8))(a1, v9, v6, v7);

  v11 = 0;
  v41 = v5;
  v44 = v5;
  v12 = v10 + 40;
  v42 = *(v10 + 16);
LABEL_2:
  v13 = (v12 + 16 * v11);
  while (v42 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v15 = *(v13 - 1);
    v16 = *v13;
    v17 = qword_280CBE540;
    sub_22F0CFF1C();
    if (v17 != -1)
    {
      swift_once();
    }

    v18 = qword_280CC1270;
    v19 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22F0D2BF0;
    *(v20 + 32) = v15;
    *(v20 + 40) = v16;
    sub_22F0CFF1C();
    v21 = sub_22F0D0F2C();

    v22 = [v19 predicateForContactsWithIdentifiers_];

    v43 = MEMORY[0x2318FE070]();
    v9 = v3[5];
    v23 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v9);
    v24 = (*(v23 + 8))(v22, v18, v9, v23);
    if (v24 >> 62)
    {
      v26 = v24;
      v27 = sub_22F0D143C();
      v24 = v26;
      if (v27)
      {
LABEL_10:
        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x2318FDAB0](0);
        }

        else
        {
          if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v25 = *(v24 + 32);
        }

        v9 = v25;

        goto LABEL_3;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    v9 = 0;
LABEL_3:
    ++v11;
    v13 += 2;
    objc_autoreleasePoolPop(v43);

    if (v9)
    {
      MEMORY[0x2318FD450](v14);
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F0D0F8C();
      }

      sub_22F0D0FEC();
      v41 = v44;
      v12 = v10 + 40;
      goto LABEL_2;
    }
  }

  swift_beginAccess();
  v9 = v41;
  v46 = v41;
  if (qword_280CBEC38 == -1)
  {
    goto LABEL_21;
  }

LABEL_26:
  swift_once();
LABEL_21:
  v28 = sub_22F0D0A1C();
  __swift_project_value_buffer(v28, qword_280CBEC40);
  v29 = sub_22F0D09FC();
  v30 = sub_22F0D124C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45 = v32;
    *v31 = 136315138;
    v33 = sub_22F01B924(0, &qword_280CBDC30, 0x277CBDA58);
    v34 = sub_22F0CFF1C();
    v35 = MEMORY[0x2318FD4D0](v34, v33);
    v37 = v36;

    v38 = sub_22F00A560(v35, v37, &v45);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_22EFE1000, v29, v30, "contacts returned from core duet: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x2318FE8B0](v32, -1, -1);
    MEMORY[0x2318FE8B0](v31, -1, -1);
  }

  objc_autoreleasePoolPop(v40);
  return v9;
}

void *ContactFetcher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  return v0;
}

uint64_t ContactFetcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t sub_22F055FEC()
{
  result = sub_22F05520C(1, 0);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v3 = result;
  v4 = sub_22F0D143C();
  result = v3;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x2318FDAB0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F056118(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  v4 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v4;
  return MEMORY[0x2822009F8](sub_22F056140, 0, 0);
}

uint64_t sub_22F056140()
{
  v1 = *(v0 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1838, &qword_22F0D80F8);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1840, &unk_22F0D8110);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_22F056264;

  return MEMORY[0x282200740](v0 + 16, v2, v4, 0, 0, &unk_22F0D8268, v3, v2);
}

void sub_22F056264()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22F059CB0, 0, 0);
  }
}

uint64_t sub_22F0563EC(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_22F0D199C();
  sub_22F09DA8C(v36, a2);
  v5 = sub_22F0D19CC();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v33 = ~v6;
    v8 = 0xEF74736575716552;
    v9 = 0x6C69617641646E64;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      v35 = v7;
      if (v10 > 4)
      {
        if (*(*(v4 + 48) + v7) <= 6u)
        {
          if (v10 == 5)
          {
            v15 = 0x617453646C696863;
            v16 = 0xEA00000000006574;
          }

          else
          {
            v15 = 0x654D646165726E75;
            v16 = 0xED00006567617373;
          }
        }

        else if (v10 == 7)
        {
          v15 = 0x7373654D64616572;
          v16 = 0xEB00000000656761;
        }

        else if (v10 == 8)
        {
          v16 = 0xEA00000000006C6CLL;
          v15 = 0x614364657373696DLL;
        }

        else
        {
          v16 = 0xE800000000000000;
          v15 = 0x7261646E656C6163;
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x7975426F546B7361;
        }

        else
        {
          v11 = 0xD000000000000011;
        }

        if (v10 == 3)
        {
          v12 = v8;
        }

        else
        {
          v12 = 0x800000022F0DC350;
        }

        if (v10 == 2)
        {
          v11 = 0x6E6F697461636F6CLL;
          v12 = 0xE800000000000000;
        }

        v13 = 0xEB00000000657461;
        if (*(*(v4 + 48) + v7))
        {
          v14 = 0x74536E6F69746F6DLL;
        }

        else
        {
          v14 = v9;
        }

        if (!*(*(v4 + 48) + v7))
        {
          v13 = 0xEF7974696C696261;
        }

        v15 = *(*(v4 + 48) + v7) <= 1u ? v14 : v11;
        v16 = *(*(v4 + 48) + v7) <= 1u ? v13 : v12;
      }

      v17 = 0xEA00000000006C6CLL;
      v18 = 0x7261646E656C6163;
      if (a2 == 8)
      {
        v18 = 0x614364657373696DLL;
      }

      else
      {
        v17 = 0xE800000000000000;
      }

      if (a2 == 7)
      {
        v18 = 0x7373654D64616572;
        v17 = 0xEB00000000656761;
      }

      v19 = 0x654D646165726E75;
      if (a2 == 5)
      {
        v19 = 0x617453646C696863;
      }

      v20 = 0xED00006567617373;
      if (a2 == 5)
      {
        v20 = 0xEA00000000006574;
      }

      if (a2 <= 6u)
      {
        v18 = v19;
        v17 = v20;
      }

      if (a2 == 3)
      {
        v21 = 0x7975426F546B7361;
      }

      else
      {
        v21 = 0xD000000000000011;
      }

      if (a2 == 3)
      {
        v22 = v8;
      }

      else
      {
        v22 = 0x800000022F0DC350;
      }

      if (a2 == 2)
      {
        v21 = 0x6E6F697461636F6CLL;
        v22 = 0xE800000000000000;
      }

      v23 = 0xEB00000000657461;
      if (a2)
      {
        v24 = 0x74536E6F69746F6DLL;
      }

      else
      {
        v24 = v9;
      }

      if (!a2)
      {
        v23 = 0xEF7974696C696261;
      }

      if (a2 <= 1u)
      {
        v21 = v24;
        v22 = v23;
      }

      v25 = a2 <= 4u ? v21 : v18;
      v26 = a2 <= 4u ? v22 : v17;
      if (v15 == v25 && v16 == v26)
      {
        break;
      }

      v27 = v9;
      v28 = v8;
      v34 = sub_22F0D188C();

      if (v34)
      {
        goto LABEL_71;
      }

      v7 = (v35 + 1) & v33;
      v8 = v28;
      v9 = v27;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

LABEL_71:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v35);
  }

  else
  {
LABEL_69:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = *v31;
    sub_22F057678(a2, v7, isUniquelyReferenced_nonNull_native);
    *v31 = v36[0];
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22F0567DC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22F0D199C();
  sub_22F0D0D5C();
  v8 = sub_22F0D19CC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22F0D188C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_22F0CFF1C();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_22F0CFF1C();
    sub_22F057AB0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22F05692C(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;
    sub_22F0CFF1C();
    v17 = sub_22F0D144C();

    if (v17)
    {

      sub_22F01B924(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_22F0D143C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_22F056BA0(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_22F0573D4(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_22F0575F4(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_22F01B924(0, a3, a4);
    v19 = sub_22F0D12EC();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_22F0D12FC();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_22F057C30(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22F056BA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_22F0D14DC();
    v23 = v10;
    sub_22F0D142C();
    if (sub_22F0D145C())
    {
      sub_22F01B924(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_22F0573D4(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_22F0D12EC();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22F0D145C());
    }

    sub_22F0D00CC();
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22F056DA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA18C8, &qword_22F0D82C0);
  result = sub_22F0D14CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_22F0D199C();
      sub_22F0D0D5C();

      result = sub_22F0D19CC();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  result = sub_22F0D00CC();
  *v2 = v5;
  return result;
}

uint64_t sub_22F057174(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1880, &unk_22F0D8280);
  result = sub_22F0D14CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22F0D199C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  result = sub_22F0D00CC();
  *v2 = v5;
  return result;
}

uint64_t sub_22F0573D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F0D14CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_22F0D12EC();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
  *v4 = v7;
  return result;
}

unint64_t sub_22F0575F4(uint64_t a1, uint64_t a2)
{
  sub_22F0D12EC();
  result = sub_22F0D141C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22F057678(uint64_t result, unint64_t a2, char a3)
{
  v33 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_76;
  }

  if (a3)
  {
    sub_22F056DA0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_22F057DC0();
      goto LABEL_76;
    }

    sub_22F05819C(v5 + 1);
  }

  v7 = *v3;
  sub_22F0D199C();
  sub_22F09DA8C(v34, v33);
  result = sub_22F0D19CC();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v32 = ~v8;
    do
    {
      v9 = *(*(v7 + 48) + a2);
      if (v9 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v9 == 5)
          {
            v14 = 0x617453646C696863;
            v15 = 0xEA00000000006574;
          }

          else
          {
            v14 = 0x654D646165726E75;
            v15 = 0xED00006567617373;
          }
        }

        else if (v9 == 7)
        {
          v14 = 0x7373654D64616572;
          v15 = 0xEB00000000656761;
        }

        else if (v9 == 8)
        {
          v15 = 0xEA00000000006C6CLL;
          v14 = 0x614364657373696DLL;
        }

        else
        {
          v15 = 0xE800000000000000;
          v14 = 0x7261646E656C6163;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0x7975426F546B7361;
        }

        else
        {
          v10 = 0xD000000000000011;
        }

        if (v9 == 3)
        {
          v11 = 0xEF74736575716552;
        }

        else
        {
          v11 = 0x800000022F0DC350;
        }

        if (v9 == 2)
        {
          v10 = 0x6E6F697461636F6CLL;
          v11 = 0xE800000000000000;
        }

        v12 = 0xEB00000000657461;
        if (*(*(v7 + 48) + a2))
        {
          v13 = 0x74536E6F69746F6DLL;
        }

        else
        {
          v13 = 0x6C69617641646E64;
        }

        if (!*(*(v7 + 48) + a2))
        {
          v12 = 0xEF7974696C696261;
        }

        v14 = *(*(v7 + 48) + a2) <= 1u ? v13 : v10;
        v15 = *(*(v7 + 48) + a2) <= 1u ? v12 : v11;
      }

      v16 = 0xEA00000000006C6CLL;
      v17 = 0x7261646E656C6163;
      if (v33 == 8)
      {
        v17 = 0x614364657373696DLL;
      }

      else
      {
        v16 = 0xE800000000000000;
      }

      if (v33 == 7)
      {
        v17 = 0x7373654D64616572;
        v16 = 0xEB00000000656761;
      }

      v18 = 0x654D646165726E75;
      if (v33 == 5)
      {
        v18 = 0x617453646C696863;
      }

      v19 = 0xED00006567617373;
      if (v33 == 5)
      {
        v19 = 0xEA00000000006574;
      }

      if (v33 <= 6u)
      {
        v17 = v18;
        v16 = v19;
      }

      if (v33 == 3)
      {
        v20 = 0x7975426F546B7361;
      }

      else
      {
        v20 = 0xD000000000000011;
      }

      if (v33 == 3)
      {
        v21 = 0xEF74736575716552;
      }

      else
      {
        v21 = 0x800000022F0DC350;
      }

      if (v33 == 2)
      {
        v20 = 0x6E6F697461636F6CLL;
        v21 = 0xE800000000000000;
      }

      v22 = 0xEB00000000657461;
      if (v33)
      {
        v23 = 0x74536E6F69746F6DLL;
      }

      else
      {
        v23 = 0x6C69617641646E64;
      }

      if (!v33)
      {
        v22 = 0xEF7974696C696261;
      }

      if (v33 <= 1u)
      {
        v20 = v23;
        v21 = v22;
      }

      v24 = v33 <= 4u ? v20 : v17;
      v25 = v33 <= 4u ? v21 : v16;
      if (v14 == v24 && v15 == v25)
      {
        goto LABEL_79;
      }

      v26 = sub_22F0D188C();

      if (v26)
      {
        goto LABEL_80;
      }

      a2 = (a2 + 1) & v32;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_76:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v33;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_79:

LABEL_80:
  result = sub_22F0D190C();
  __break(1u);
  return result;
}

uint64_t sub_22F057AB0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22F057174(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22F057F00();
      goto LABEL_16;
    }

    sub_22F058540(v8 + 1);
  }

  v10 = *v4;
  sub_22F0D199C();
  sub_22F0D0D5C();
  result = sub_22F0D19CC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22F0D188C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22F0D190C();
  __break(1u);
  return result;
}

void sub_22F057C30(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_22F0573D4(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22F05805C(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_22F058778(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_22F0D12EC();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_22F01B924(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22F0D12FC();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22F0D190C();
  __break(1u);
}

void *sub_22F057DC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA18C8, &qword_22F0D82C0);
  v2 = *v0;
  v3 = sub_22F0D14BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F057F00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1880, &unk_22F0D8280);
  v2 = *v0;
  v3 = sub_22F0D14BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_22F0CFF1C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

id sub_22F05805C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22F0D14BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v3 = v6;
  }

  return result;
}

uint64_t sub_22F05819C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA18C8, &qword_22F0D82C0);
  result = sub_22F0D14CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_22F0D199C();
      sub_22F0D0D5C();

      result = sub_22F0D19CC();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        result = sub_22F0D00CC();
        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    result = sub_22F0D00CC();
LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22F058540(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1880, &unk_22F0D8280);
  result = sub_22F0D14CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      result = sub_22F0D19CC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        result = sub_22F0D00CC();
        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    result = sub_22F0D00CC();
LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22F058778(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F0D14CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_22F0D12EC();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        result = sub_22F0D00CC();
        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    result = sub_22F0D00CC();
LABEL_26:
    *v4 = v7;
  }

  return result;
}

void (*sub_22F058984(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318FDAB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22F059CAC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22F058A04(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318FDAB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_22F058A84;
  }

  __break(1u);
  return result;
}

void (*sub_22F058A8C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318FDAB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22F058B0C;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F058B14(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22F059C54();
  result = MEMORY[0x2318FD670](v2, &type metadata for StatusType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_22F0563EC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22F058B88(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318FD670](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_22F0CFF1C();
      sub_22F0567DC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22F058C20(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F0D143C())
  {
    v4 = sub_22F01B924(0, &qword_280CBDC30, 0x277CBDA58);
    v5 = sub_22F059C04(&qword_27DAA18A0, &qword_280CBDC30, 0x277CBDA58);
    result = MEMORY[0x2318FD670](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CBDA58uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2318FDAB0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_22F05692C(&v12, v10, &qword_280CBDC30, 0x277CBDA58, &qword_27DAA18A8, &unk_22F0D82B0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_22F0D143C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F058DAC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F0D143C())
  {
    v4 = sub_22F01B924(0, &qword_27DAA1850, 0x277CCABB0);
    v5 = sub_22F059C04(&qword_27DAA1858, &qword_27DAA1850, 0x277CCABB0);
    result = MEMORY[0x2318FD670](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CCABB0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2318FDAB0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_22F05692C(&v12, v10, &qword_27DAA1850, 0x277CCABB0, &unk_27DAA1860, &qword_22F0D8260);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_22F0D143C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void *sub_22F058F38(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v38 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1870, &unk_22F0D8270);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1700, &qword_22F0D7718);
  v13 = MEMORY[0x28223BE20](v34);
  v37 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v33 = &v30 - v17;
  v18 = a5 >> 1;
  v19 = (a5 >> 1) - a4;
  if (a5 >> 1 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v32 = v16;
    v35 = (v16 + 32);
    v36 = (v16 + 48);
    if (a4 > v18)
    {
      v18 = a4;
    }

    v20 = v18 - a4;
    v21 = (a3 + 8 * a4);
    v39 = MEMORY[0x277D84F90];
    v22 = v34;
    v31 = a1;
    while (v20)
    {
      v40 = *v21;
      v23 = v40;
      a1(&v40);
      if (v5)
      {

        return v39;
      }

      if ((*v36)(v12, 1, v22) == 1)
      {
        result = sub_22F003A4C(v12, &unk_27DAA1870, &unk_22F0D8270);
      }

      else
      {
        v24 = *v35;
        v25 = v33;
        (*v35)(v33, v12, v22);
        v24(v37, v25, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_22F03D44C(0, v39[2] + 1, 1, v39);
        }

        v27 = v39[2];
        v26 = v39[3];
        if (v27 >= v26 >> 1)
        {
          v39 = sub_22F03D44C((v26 > 1), v27 + 1, 1, v39);
        }

        v28 = v39;
        v39[2] = v27 + 1;
        v29 = v28 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27;
        v22 = v34;
        result = (v24)(v29, v37, v34);
        a1 = v31;
      }

      --v20;
      ++v21;
      if (!--v19)
      {
        return v39;
      }
    }

    __break(1u);
  }

  return result;
}

void *_s6People14ContactFetcherCACycfC_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  if (_s6People0A12DemoOverrideC010isContactsC7EnabledSbyFZ_0())
  {
    v1 = type metadata accessor for DemoContactSuggester();
    v2 = swift_allocObject();
    v3 = &off_2843CDD00;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D3A090]) init];
    v1 = sub_22F01B924(0, &qword_280CBF158, 0x277D3A090);
    v3 = &off_2843CEBF8;
  }

  v19 = v1;
  v20 = v3;
  *&v18 = v2;
  v4 = type metadata accessor for FamilyRequestFactory();
  v5 = swift_allocObject();
  v16 = sub_22F01B924(0, qword_280CBF040, 0x277CBDAB8);
  v17 = &protocol witness table for CNContactStore;
  *&v15 = v0;
  v14[3] = v4;
  v14[4] = &off_2843D10E8;
  v14[0] = v5;
  type metadata accessor for ContactFetcher();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v4);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v6[15] = v4;
  v6[16] = &off_2843D10E8;
  v6[12] = v11;
  sub_22EFE6B9C(&v15, (v6 + 2));
  sub_22EFE6B9C(&v18, (v6 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v14);

  return v6;
}

uint64_t sub_22F059460(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22F00CF60;

  return sub_22F054620(a1, a2, v6, v7, v8);
}

uint64_t dispatch thunk of ContactFetcherProtocol.contacts(withPredicates:includeImages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22F059CA8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContactFetcher.contacts(withPredicates:includeImages:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22F015A70;

  return v8(a1, a2);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

uint64_t sub_22F059A80(uint64_t result, uint64_t a2)
{
  if (result)
  {
    sub_22F0D00CC();

    return sub_22F0D00CC();
  }

  return result;
}

uint64_t sub_22F059AC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22F00CD54;

  return sub_22F055154(a1, v4, v5, v6, v7, v8);
}

void sub_22F059B88(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_22F015BE4(a1, a2 & 1);
  }
}

unint64_t sub_22F059BA0()
{
  result = qword_27DAA1898;
  if (!qword_27DAA1898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1838, &qword_22F0D80F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1898);
  }

  return result;
}

uint64_t sub_22F059C04(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22F01B924(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F059C54()
{
  result = qword_27DAA18C0;
  if (!qword_27DAA18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA18C0);
  }

  return result;
}

void sub_22F059CB4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 mechanism];
  if (v4 >= 0x12 || ((0x2191Fu >> v4) & 1) == 0)
  {

    *(a2 + 58) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v5 = byte_22F0D82C8[v4];
  v6 = [a1 contact];
  if (!v6)
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = v6;
  v8 = [v6 personId];

  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = sub_22F0D0CAC();
  v11 = v10;

  v12 = [a1 contact];
  if (!v12)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 customIdentifier];

  if (v14)
  {
    v15 = sub_22F0D0CAC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [a1 contact];
  if (!v18)
  {
    goto LABEL_23;
  }

  v19 = v18;
  v33 = v17;
  v34 = v15;
  v20 = [v18 identifier];

  v21 = v11;
  v22 = v9;
  if (v20)
  {
    v23 = sub_22F0D0CAC();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = v5;
  v27 = [a1 bundleId];
  if (v27)
  {
    v28 = v27;
    v29 = sub_22F0D0CAC();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  if (qword_27DAA0610 != -1)
  {
    swift_once();
  }

  v32 = byte_27DAA2160;

  *a2 = v26;
  *(a2 + 8) = v22;
  *(a2 + 16) = v21;
  *(a2 + 24) = v34;
  *(a2 + 32) = v33;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;
  *(a2 + 56) = v29;
  *(a2 + 64) = v31;
  *(a2 + 72) = 0;
  *(a2 + 73) = v32;
}

id PeopleLegacyExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  result = sub_22F036740(v4, a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t PeopleLegacyResult.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID);
  sub_22F0CFF1C();
  return v1;
}

uint64_t PeopleLegacyResult.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6People18PeopleLegacyResult_data);
  sub_22F0303BC(v1, *(v0 + OBJC_IVAR____TtC6People18PeopleLegacyResult_data + 8));
  return v1;
}

id PeopleLegacyResult.__allocating_init(bundleID:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC6People18PeopleLegacyResult_data];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id PeopleLegacyResult.init(bundleID:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC6People18PeopleLegacyResult_data];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for PeopleLegacyResult();
  return objc_msgSendSuper2(&v8, sel_init);
}

id PeopleLegacyResult.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22F05A408();

  return v4;
}

id PeopleLegacyResult.init(coder:)(void *a1)
{
  v2 = sub_22F05A408();

  return v2;
}

void sub_22F05A164(void *a1)
{
  v3 = sub_22F0D0C7C();
  v4 = sub_22F0D0C7C();
  [a1 encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC6People18PeopleLegacyResult_data + 8) >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_22F0D046C();
  }

  v6 = sub_22F0D0C7C();
  [a1 encodeObject:v5 forKey:v6];
}

id PeopleLegacyResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeopleLegacyResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeopleLegacyResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F05A408()
{
  sub_22F01B924(0, &qword_27DAA18E8, 0x277CCACA8);
  v1 = sub_22F0D12CC();
  if (v1)
  {
    v2 = v1;
    sub_22F0D0C9C();
  }

  v3 = &v0[OBJC_IVAR____TtC6People18PeopleLegacyResult_bundleID];
  *v3 = 0x21726F727245;
  *(v3 + 1) = 0xE600000000000000;
  v4 = &v0[OBJC_IVAR____TtC6People18PeopleLegacyResult_data];
  *v4 = 0;
  *(v4 + 1) = 0xF000000000000000;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PeopleLegacyResult();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t dispatch thunk of PeopleLegacyExtension.messagePayloadForScreenTime(for:baseURL:fallbackToLP:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22F059CA8;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PeopleLegacyExtension.messagePayloadForAskToBuy(for:baseURL:fallbackToLP:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22F015A70;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t RuntimeEnvironment.__allocating_init(environment:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RuntimeEnvironment.init(environment:)(a1);
  return v2;
}

uint64_t RuntimeEnvironment.init(environment:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_22EFFDA80(0xD00000000000001CLL, 0x800000022F0DE9C0), (v5 & 1) != 0))
  {
    v6 = 0xEB00000000676E69;
    v7 = 0x7473655474696E55;
    v8 = (*(a1 + 56) + 16 * v4);
    v9 = *v8;
    v10 = v8[1];
    sub_22F0CFF1C();

    if (v9 == 0x7473655474696E55 && v10 == 0xEB00000000676E69)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_22F0D188C();
      v7 = v9;
      v6 = v10;
    }
  }

  else
  {

    v12 = 0;
    v7 = 0;
    v6 = 0;
  }

  *(v2 + 16) = v12 & 1;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v13 = sub_22F0D0A1C();
  __swift_project_value_buffer(v13, qword_280CBEC40);
  sub_22F0CFF1C();
  swift_retain_n();
  v14 = sub_22F0D09FC();
  v15 = sub_22F0D122C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    if (v6)
    {
      v18 = v7;
    }

    else
    {
      v18 = 0x74657320746F6ELL;
    }

    if (!v6)
    {
      v6 = 0xE700000000000000;
    }

    v19 = sub_22F00A560(v18, v6, &v22);

    *(v16 + 4) = v19;
    *(v16 + 12) = 1024;
    swift_beginAccess();
    v20 = *(v2 + 16);
    sub_22F0D00CC();
    *(v16 + 14) = v20;
    sub_22F0D00CC();
    _os_log_impl(&dword_22EFE1000, v14, v15, "env is: %s  testing mode:%{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x2318FE8B0](v17, -1, -1);
    MEMORY[0x2318FE8B0](v16, -1, -1);
  }

  else
  {
  }

  return v2;
}

uint64_t static RuntimeEnvironment.defaultEnvironment.getter()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_22F0D0AFC();
  type metadata accessor for RuntimeEnvironment();
  v3 = swift_allocObject();
  RuntimeEnvironment.init(environment:)(v2);
  return v3;
}

uint64_t sub_22F05ACA4(CGImage *a1)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = CGImageDestinationCreateWithData(Mutable, *MEMORY[0x277CC2120], 1uLL, 0);
    if (v4)
    {
      v5 = v4;
      CGImageDestinationAddImage(v4, a1, 0);
      if (CGImageDestinationFinalize(v5))
      {
        v6 = v3;
        v7 = sub_22F0D049C();

        return v7;
      }

      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v16 = sub_22F0D0A1C();
      __swift_project_value_buffer(v16, qword_280CBEC40);
      v17 = sub_22F0D09FC();
      v18 = sub_22F0D123C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_22EFE1000, v17, v18, "CGImageDestinationFinalize failed", v19, 2u);
        MEMORY[0x2318FE8B0](v19, -1, -1);
      }
    }

    else
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v12 = sub_22F0D0A1C();
      __swift_project_value_buffer(v12, qword_280CBEC40);
      v13 = sub_22F0D09FC();
      v14 = sub_22F0D123C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_22EFE1000, v13, v14, "CGImageDestinationCreateWithData failed", v15, 2u);
        MEMORY[0x2318FE8B0](v15, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280CBE8C0 != -1)
    {
      swift_once();
    }

    v9 = sub_22F0D0A1C();
    __swift_project_value_buffer(v9, qword_280CBE8C8);
    v3 = sub_22F0D09FC();
    v10 = sub_22F0D123C();
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22EFE1000, v3, v10, "CFDataCreateMutable failed", v11, 2u);
      MEMORY[0x2318FE8B0](v11, -1, -1);
    }
  }

  return 0;
}

CGImage *sub_22F05AF80(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() imageDescriptorNamed_];
  v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v6 = sub_22F0D0C7C();
  v7 = [v5 initWithBundleIdentifier_];

  v8 = [v7 prepareImageForDescriptor_];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  if ([v8 placeholder])
  {

LABEL_4:
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v10 = sub_22F0D0A1C();
    __swift_project_value_buffer(v10, qword_280CBEC40);
    sub_22F0CFF1C();
    v11 = sub_22F0D09FC();
    v12 = sub_22F0D124C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_22F00A560(a1, a2, v28);
      _os_log_impl(&dword_22EFE1000, v11, v12, "Iconservice lookup for %s failed; is placeholder", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2318FE8B0](v14, -1, -1);
      MEMORY[0x2318FE8B0](v13, -1, -1);
    }

    return 0;
  }

  result = [v9 CGImage];
  if (result)
  {
    v17 = result;
    v15 = sub_22F05ACA4(result);
    v19 = v18;

    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v20 = sub_22F0D0A1C();
    __swift_project_value_buffer(v20, qword_280CBEC40);
    sub_22F0CFF1C();
    sub_22F0303BC(v15, v19);
    v21 = sub_22F0D09FC();
    v22 = sub_22F0D124C();

    sub_22F00AB48(v15, v19);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v23 = 136315394;
      *(v23 + 4) = sub_22F00A560(a1, a2, &v29);
      *(v23 + 12) = 2080;
      v28[0] = v15;
      v28[1] = v19;
      sub_22F0303BC(v15, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1680, &qword_22F0D74D8);
      v24 = sub_22F0D0CFC();
      v26 = sub_22F00A560(v24, v25, &v29);

      *(v23 + 14) = v26;
      _os_log_impl(&dword_22EFE1000, v21, v22, "Iconservice lookup for %s returned %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v27, -1, -1);
      MEMORY[0x2318FE8B0](v23, -1, -1);
    }

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F05B380(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  v4 = [objc_opt_self() hours];
  sub_22F014850();
  return sub_22F0D017C();
}

uint64_t sub_22F05B410()
{
  v1 = OBJC_IVAR____TtC6People13IndexableItem_eventDate;
  v2 = sub_22F0D05BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22F003A4C(v0 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate, &qword_27DAA1440, &unk_22F0D65F0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IndexableItem(uint64_t a1)
{
  result = qword_27DAA1900;
  if (!qword_27DAA1900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22F05B574(uint64_t a1)
{
  sub_22F0D05BC();
  if (v1 <= 0x3F)
  {
    sub_22F05B668(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22F05B668(uint64_t a1)
{
  if (!qword_27DAA1910)
  {
    sub_22F0D05BC();
    v1 = sub_22F0D132C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DAA1910);
    }
  }
}

uint64_t sub_22F05B6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F0D05BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1918, &qword_22F0D8420);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = *(a1 + 16);
  v16 = *(a2 + 16);
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_29;
    }
  }

  else if (v16)
  {
    goto LABEL_29;
  }

  v35 = v12;
  v17 = *(a1 + OBJC_IVAR____TtC6People13IndexableItem_indexableID) == *(a2 + OBJC_IVAR____TtC6People13IndexableItem_indexableID) && *(a1 + OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8) == *(a2 + OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8);
  if (!v17 && (sub_22F0D188C() & 1) == 0)
  {
    goto LABEL_29;
  }

  v33 = v4;
  v34 = v5;
  v32 = v7;
  if (v15)
  {
    v18 = [v15 identifier];
    sub_22F0D0CAC();
  }

  v19 = String.trimToNil()();

  if (v16)
  {
    v20 = [v16 _swift_FORCE_LOAD___swiftCoreMIDI___People];
    sub_22F0D0CAC();
  }

  v21 = String.trimToNil()();

  if (v19.value._object)
  {
    if (v21.value._object)
    {
      if (v19.value._countAndFlagsBits == v21.value._countAndFlagsBits && v19.value._object == v21.value._object)
      {
      }

      else
      {
        v23 = sub_22F0D188C();

        if ((v23 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_22;
    }
  }

  else if (!v21.value._object)
  {
LABEL_22:
    if (sub_22F0D057C())
    {
      v24 = OBJC_IVAR____TtC6People13IndexableItem_expirationDate;
      v25 = *(v35 + 48);
      sub_22F022BA4(a1 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate, v14);
      sub_22F022BA4(a2 + v24, &v14[v25]);
      v26 = v33;
      v27 = v34;
      v28 = *(v34 + 48);
      if (v28(v14, 1, v33) == 1)
      {
        if (v28(&v14[v25], 1, v26) == 1)
        {
          sub_22F003A4C(v14, &qword_27DAA1440, &unk_22F0D65F0);
          v22 = 1;
          return v22 & 1;
        }
      }

      else
      {
        sub_22F022BA4(v14, v10);
        if (v28(&v14[v25], 1, v26) != 1)
        {
          v30 = v32;
          (*(v27 + 32))(v32, &v14[v25], v26);
          sub_22F05BB40();
          v22 = sub_22F0D0C2C();
          v31 = *(v27 + 8);
          v31(v30, v26);
          v31(v10, v26);
          sub_22F003A4C(v14, &qword_27DAA1440, &unk_22F0D65F0);
          return v22 & 1;
        }

        (*(v27 + 8))(v10, v26);
      }

      sub_22F003A4C(v14, &qword_27DAA1918, &qword_22F0D8420);
    }

LABEL_29:
    v22 = 0;
    return v22 & 1;
  }

  v22 = 0;
  return v22 & 1;
}

unint64_t sub_22F05BB40()
{
  result = qword_27DAA1920;
  if (!qword_27DAA1920)
  {
    sub_22F0D05BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1920);
  }

  return result;
}

id sub_22F05BB98(uint64_t a1)
{
  v2 = sub_22F0D01DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22F0D0C7C();
  v7 = [objc_opt_self() bundleWithIdentifier_];

  if (!v7)
  {
    if (qword_280CBDB90 == -1)
    {
LABEL_6:
      v16 = sub_22F0D0A1C();
      __swift_project_value_buffer(v16, qword_280CBDB98);
      v17 = sub_22F0D09FC();
      v18 = sub_22F0D123C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_22EFE1000, v17, v18, "Bundle not loaded", v19, 2u);
        MEMORY[0x2318FE8B0](v19, -1, -1);
      }

      return 0;
    }

LABEL_79:
    swift_once();
    goto LABEL_6;
  }

  v8 = [v7 localizations];
  v9 = sub_22F0D0F4C();

  v10 = sub_22F058B88(v9);

  v11 = *(v10 + 16);
  if (!v11)
  {

    v15 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v12 = sub_22F0BBB50(*(v10 + 16), 0);
  v13 = sub_22F0BFD34(&v104, v12 + 4, v11, v10);
  sub_22F003524(v104);
  if (v13 != v11)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v15 = v12;
LABEL_10:
  v100 = v15[2];
  if (v100)
  {
    v20 = 0;
    v99 = v15 + 4;
    v101 = (v3 + 8);
    v93 = a1 + 40;
    v98 = MEMORY[0x277D84F98];
    *&v14 = 136315138;
    v94 = v14;
    v95 = v7;
    v96 = v2;
    v92 = a1;
    v97 = v15;
    do
    {
      if (v20 >= v15[2])
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v21 = &v99[2 * v20];
      v22 = v21[1];
      v102 = *v21;
      v23 = sub_22F0D0D0C();
      v25 = v24;
      if (v23 == sub_22F0D0D0C() && v25 == v26)
      {
      }

      else
      {
        v28 = sub_22F0D188C();
        sub_22F0CFF1C();

        if (v28)
        {

          v15 = v97;
        }

        else
        {
          v29 = sub_22F0D0C7C();
          v30 = sub_22F0D0C7C();
          v31 = [v7 pathForResource:v29 ofType:v30];

          if (v31)
          {
            v32 = [objc_allocWithZone(MEMORY[0x277CCA8D8]) initWithPath_];

            v15 = v97;
            v103 = v32;
            if (v32)
            {
              v33 = *(a1 + 16);
              if (v33)
              {
                v34 = v93;
                do
                {
                  sub_22F0CFF1C();
                  v35 = sub_22F0D0C7C();

                  v36 = sub_22F0D0C7C();
                  v37 = [v103 localizedStringForKey:v35 value:v36 table:0];

                  v38 = sub_22F0D0CAC();
                  v40 = v39;

                  v104 = v38;
                  v105 = v40;
                  sub_22F0D01CC();
                  sub_22F00901C();
                  v41 = sub_22F0D136C();
                  v43 = v42;
                  (*v101)(v5, v2);

                  v44 = HIBYTE(v43) & 0xF;
                  if ((v43 & 0x2000000000000000) == 0)
                  {
                    v44 = v41 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v44 || v41 == 11565 && v43 == 0xE200000000000000 || (sub_22F0D188C() & 1) != 0)
                  {
                  }

                  else
                  {
                    v45 = v98;
                    if (*(v98 + 16) && (v46 = sub_22EFFDA80(v102, v22), (v47 & 1) != 0))
                    {
                      v48 = *(*(v45 + 56) + 16 * v46);
                      v49 = sub_22F0CFF1C();
                    }

                    else
                    {
                      v48 = 0;
                      v49 = 0xE000000000000000;
                    }

                    v50 = HIBYTE(v49) & 0xF;
                    if ((v49 & 0x2000000000000000) == 0)
                    {
                      v50 = v48 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v50)
                    {
                      v51 = 44;
                    }

                    else
                    {
                      v51 = 0;
                    }

                    if (v50)
                    {
                      v52 = 0xE100000000000000;
                    }

                    else
                    {
                      v52 = 0xE000000000000000;
                    }

                    v104 = v48;
                    v105 = v49;
                    sub_22F0CFF1C();
                    MEMORY[0x2318FD2C0](v51, v52);

                    MEMORY[0x2318FD2C0](v41, v43);

                    v54 = v104;
                    v53 = v105;
                    v55 = v98;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v104 = v55;
                    v57 = sub_22EFFDA80(v102, v22);
                    v59 = *(v55 + 16);
                    v60 = (v58 & 1) == 0;
                    v61 = __OFADD__(v59, v60);
                    v62 = v59 + v60;
                    if (v61)
                    {
                      goto LABEL_76;
                    }

                    v63 = v58;
                    if (*(v55 + 24) >= v62)
                    {
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v71 = v57;
                        sub_22F0600F4();
                        v57 = v71;
                      }
                    }

                    else
                    {
                      sub_22F07A54C(v62, isUniquelyReferenced_nonNull_native);
                      v57 = sub_22EFFDA80(v102, v22);
                      if ((v63 & 1) != (v64 & 1))
                      {
                        result = sub_22F0D191C();
                        __break(1u);
                        return result;
                      }
                    }

                    v65 = v104;
                    v98 = v104;
                    if (v63)
                    {
                      v66 = (v104[7] + 16 * v57);
                      *v66 = v54;
                      v66[1] = v53;
                    }

                    else
                    {
                      v104[(v57 >> 6) + 8] |= 1 << v57;
                      v67 = (v65[6] + 16 * v57);
                      *v67 = v102;
                      v67[1] = v22;
                      v68 = (v65[7] + 16 * v57);
                      *v68 = v54;
                      v68[1] = v53;
                      v69 = v65[2];
                      v61 = __OFADD__(v69, 1);
                      v70 = v69 + 1;
                      if (v61)
                      {
                        goto LABEL_77;
                      }

                      v65[2] = v70;
                    }

                    v2 = v96;
                  }

                  v34 += 16;
                  --v33;
                }

                while (v33);

                v7 = v95;
                a1 = v92;
                v15 = v97;
              }

              else
              {

                v7 = v95;
              }
            }

            else
            {
              if (qword_280CBDB90 != -1)
              {
                swift_once();
              }

              v79 = sub_22F0D0A1C();
              __swift_project_value_buffer(v79, qword_280CBDB98);
              sub_22F0CFF1C();
              v80 = sub_22F0D09FC();
              v81 = sub_22F0D123C();

              if (os_log_type_enabled(v80, v81))
              {
                v82 = swift_slowAlloc();
                v83 = swift_slowAlloc();
                v104 = v83;
                *v82 = v94;
                v84 = sub_22F00A560(v102, v22, &v104);

                *(v82 + 4) = v84;
                _os_log_impl(&dword_22EFE1000, v80, v81, "No bundle for %s", v82, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v83);
                v85 = v83;
                v2 = v96;
                MEMORY[0x2318FE8B0](v85, -1, -1);
                v86 = v82;
                v15 = v97;
                MEMORY[0x2318FE8B0](v86, -1, -1);
              }

              else
              {
              }
            }
          }

          else
          {
            if (qword_280CBDB90 != -1)
            {
              swift_once();
            }

            v72 = sub_22F0D0A1C();
            __swift_project_value_buffer(v72, qword_280CBDB98);
            sub_22F0CFF1C();
            v73 = sub_22F0D09FC();
            v74 = sub_22F0D122C();

            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v104 = v76;
              *v75 = v94;
              v77 = sub_22F00A560(v102, v22, &v104);

              *(v75 + 4) = v77;
              _os_log_impl(&dword_22EFE1000, v73, v74, "No bundle path for %s", v75, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v76);
              v78 = v76;
              v2 = v96;
              MEMORY[0x2318FE8B0](v78, -1, -1);
              MEMORY[0x2318FE8B0](v75, -1, -1);
            }

            else
            {
            }

            v15 = v97;
          }
        }
      }

      ++v20;
    }

    while (v20 != v100);
    sub_22F0D00CC();
    v87 = v98;
    if (!*(v98 + 16))
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  sub_22F0D00CC();
  v87 = MEMORY[0x277D84F98];
  if (*(MEMORY[0x277D84F98] + 16))
  {
LABEL_71:
    sub_22F00DFEC(v87);
    v88 = objc_allocWithZone(MEMORY[0x277CC3440]);
    v89 = sub_22F0D0AEC();

    v90 = [v88 initWithLocalizedStrings_];

    return v90;
  }

LABEL_73:

  return 0;
}

uint64_t sub_22F05C5E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22F0D119C();
  if (!v19)
  {
    return sub_22F0D0FBC();
  }

  v41 = v19;
  v45 = sub_22F0D165C();
  v32 = sub_22F0D166C();
  sub_22F0D160C();
  result = sub_22F0D118C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_22F0D11FC();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);
        sub_22F0D00CC();
        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_22F0D164C();
      result = sub_22F0D11BC();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F05CA04@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t Collection<>.uniqueWithOrder()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_22F0D0FBC();
  sub_22F0D0EBC();
  return v4;
}

uint64_t Collection<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_22F0D0FBC();
  if (sub_22F0D0FFC())
  {
    v13 = sub_22F05D9F8(v12, AssociatedTypeWitness, a3);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  v18 = v13;
  v14 = (*(v8 + 16))(v10, v4, a1);
  MEMORY[0x28223BE20](v14);
  *(&v17 - 4) = a1;
  *(&v17 - 3) = a2;
  *(&v17 - 2) = a3;
  *(&v17 - 1) = &v18;
  v15 = sub_22F0D0E7C();

  return v15;
}

uint64_t sub_22F05CF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  sub_22F0D115C();
  v13 = sub_22F0D114C();
  (*(v7 + 8))(v12, AssociatedTypeWitness);
  return v13 & 1;
}

uint64_t sub_22F05D0C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v12 - v9;
  v12[1] = *a2;
  sub_22F0D103C();
  swift_getWitnessTable();
  result = sub_22F0D0ECC();
  if ((result & 1) == 0)
  {
    (*(v8 + 16))(v10, a1, AssociatedTypeWitness);
    return sub_22F0D100C();
  }

  return result;
}

uint64_t sub_22F05D214(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v13 = sub_22F0D0BBC();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  return v13 & 1;
}

uint64_t Collection.expanded(toSize:placeholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v13 - v8;
  (*(v7 + 16))(v13 - v8, a2, AssociatedTypeWitness);
  result = sub_22F0D119C();
  if (__OFSUB__(a1, result))
  {
    __break(1u);
  }

  else
  {
    v11 = (a1 - result) & ~((a1 - result) >> 63);
    sub_22F0D103C();
    v12 = sub_22F05DDD8(v9, v11, AssociatedTypeWitness);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    v13[0] = v12;
    swift_getWitnessTable();
    sub_22F0D120C();

    return v13[1];
  }

  return result;
}

uint64_t Collection<>.matrix(rowCount:placeholder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22F0D119C();
  v10 = ceil(result / a1);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = 0;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v16[9] = 0;
    v16[10] = a1;
    MEMORY[0x28223BE20](result);
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = &v17;
    v16[5] = v11;
    v16[6] = v4;
    v16[7] = a2;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1928, &qword_22F0D8428);
    swift_getAssociatedTypeWitness();
    v13 = sub_22F0D103C();
    v14 = sub_22F05DF14();
    return sub_22F05C5E4(sub_22F05DEEC, v16, v12, v13, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_22F05D6D4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = *a1;
  v31 = a2;
  v16 = __OFADD__(v15, a2);
  v17 = v15 + a2;
  if (v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v17 < v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = a3;
  result = sub_22F0D11AC();
  if (v30[0] < v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = a7;
  v26 = a1;
  v24 = &v24;
  if (v30[0] >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v30[0];
  }

  MEMORY[0x28223BE20](result);
  *(&v24 - 6) = a5;
  *(&v24 - 5) = a6;
  *(&v24 - 4) = v31;
  *(&v24 - 3) = v15;
  *(&v24 - 2) = v18;
  swift_getAssociatedTypeWitness();
  sub_22F0D132C();
  v19 = sub_22F0D103C();
  v20 = v29;
  sub_22F05CA04(sub_22F05DFF4, (&v24 - 8), MEMORY[0x277D84A98], v19, v21, v30);
  v29 = v20;
  if (!v30[0])
  {
    sub_22F0D0FBC();
  }

  v30[0] = v15;
  v30[1] = v18;
  sub_22F0D11EC();
  swift_getAssociatedConformanceWitness();
  sub_22F0D104C();
  v22 = sub_22F0D0FAC();

  v23 = v26;
  *v25 = v22;
  if (!__OFADD__(*v23, v31))
  {
    *v23 += v31;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_22F05D954@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a6@<X8>)
{
  v7 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    __break(1u);
  }

  else
  {
    v8 = a2 - v7;
    if (!__OFSUB__(a2, v7))
    {
      v9 = result;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      result = sub_22F05DDD8(v9, v8, AssociatedTypeWitness);
      *a6 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F05D9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_22F0D0FFC())
  {
    sub_22F0D14FC();
    v15 = sub_22F0D14EC();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_22F0D0FFC();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_22F0D0FDC();
    sub_22F0D0F7C();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_22F0D156C();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_22F0D0B7C();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_22F0D0C2C();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22F05DDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22F0D0FBC();
  v14 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    sub_22F0D103C();
    nullsub_3();
    return v14;
  }

  return result;
}

unint64_t sub_22F05DF14()
{
  result = qword_280CBD158;
  if (!qword_280CBD158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1928, &qword_22F0D8428);
    sub_22F05DFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD158);
  }

  return result;
}

unint64_t sub_22F05DFA0()
{
  result = qword_280CBD1A8;
  if (!qword_280CBD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1A8);
  }

  return result;
}

uint64_t LaunchDiary.__allocating_init(withJSON:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  LaunchDiary.init(withJSON:)(a1, a2);
  return v4;
}

uint64_t sub_22F05E0AC()
{
  sub_22F0D016C();
  swift_allocObject();
  sub_22F0D015C();
  swift_beginAccess();
  sub_22F0CFF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1660, &qword_22F0D74C0);
  sub_22F036E04();
  v0 = sub_22F0D014C();
  sub_22F0D00CC();

  return v0;
}

uint64_t LaunchDiary.__allocating_init(withData:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t LaunchDiary.init(withJSON:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (a2 >> 60 == 15)
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_280CBEC40);
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D122C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22EFE1000, v8, v9, "Creating empty launch map", v10, 2u);
      MEMORY[0x2318FE8B0](v10, -1, -1);
      sub_22F00AB48(a1, a2);
    }

    v11 = MEMORY[0x277D84F98];
    goto LABEL_10;
  }

  sub_22F0D013C();
  swift_allocObject();
  sub_22F0D012C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1660, &qword_22F0D74C0);
  sub_22F05EFB8();
  sub_22F0D011C();
  if (!v3)
  {
    sub_22F00AB48(a1, a2);
    sub_22F0D00CC();
    v11 = v13;
LABEL_10:
    *(v4 + 16) = v11;
    return v4;
  }

  sub_22F00AB48(a1, a2);
  sub_22F0D00CC();
  type metadata accessor for LaunchDiary();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_22F05E390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v97 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v78 - v8;
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v87 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v78 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v78 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v93 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v78 - v21;
  v23 = *(v10 + 16);
  v83 = v10 + 16;
  v82 = v23;
  v23(&v78 - v21, a3, v9);
  v94 = *(v10 + 56);
  v95 = v10 + 56;
  v94(v22, 0, 1, v9);
  swift_beginAccess();
  sub_22F0CFF1C();
  v79 = v22;
  v24 = a1;
  v25 = v9;
  sub_22F046468(v22, v24, a2);
  swift_endAccess();
  v90 = v17;
  sub_22F0D05AC();
  v26 = *(v4 + 16);
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  v81 = (v97 + 8);
  v89 = (v10 + 8);
  v92 = v10;
  v86 = v10 + 32;
  v32 = v15;
  v97 = v26;
  sub_22F0CFF1C();
  v33 = 0;
  *&v34 = 136315138;
  v88 = v34;
  v98 = v4;
  v91 = v9;
  v96 = v15;
  if (v30)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v31)
    {
      (*v89)(v90, v25);
      sub_22F0D00CC();
      return;
    }

    v30 = *(v27 + 8 * v35);
    ++v33;
    if (v30)
    {
      while (1)
      {
        v36 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v37 = (*(v97 + 48) + ((v35 << 10) | (16 * v36)));
        v38 = *v37;
        v39 = v37[1];
        v40 = *(v98 + 16);
        v41 = *(v40 + 16);
        sub_22F0CFF1C();
        if (v41)
        {
          sub_22F0CFF1C();
          v42 = sub_22EFFDA80(v38, v39);
          if (v43)
          {
            v80 = v38;
            v82(v32, *(v40 + 56) + *(v92 + 72) * v42, v25);

            v44 = v32;
            if (qword_27DAA0620 != -1)
            {
              swift_once();
            }

            v45 = v85;
            __swift_project_value_buffer(v85, qword_27DAA2180);
            v46 = [objc_opt_self() seconds];
            v47 = v84;
            sub_22F0D019C();

            sub_22F0D018C();
            (*v81)(v47, v45);
            v48 = v87;
            sub_22F0D054C();
            if (sub_22F0D053C())
            {
              swift_beginAccess();
              v49 = v79;
              v50 = v80;
              sub_22F0178D0(v80, v39, v79);
              sub_22F01B96C(v49);
              swift_endAccess();
              if (qword_280CBEC38 != -1)
              {
                swift_once();
              }

              v51 = sub_22F0D0A1C();
              __swift_project_value_buffer(v51, qword_280CBEC40);
              sub_22F0CFF1C();
              v52 = sub_22F0D09FC();
              v53 = sub_22F0D122C();

              if (os_log_type_enabled(v52, v53))
              {
                v54 = swift_slowAlloc();
                v55 = swift_slowAlloc();
                v56 = v50;
                v57 = v55;
                v100[0] = v55;
                *v54 = v88;
                v58 = sub_22F00A560(v56, v39, v100);

                *(v54 + 4) = v58;
                _os_log_impl(&dword_22EFE1000, v52, v53, "Time for %s expired, nuking", v54, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v57);
                MEMORY[0x2318FE8B0](v57, -1, -1);
                MEMORY[0x2318FE8B0](v54, -1, -1);

                v59 = *v89;
                v60 = v87;
              }

              else
              {

                v59 = *v89;
                v60 = v48;
              }

              v25 = v91;
              v59(v60, v91);
              v32 = v96;
            }

            else
            {
              v32 = v44;

              v59 = *v89;
              v77 = v48;
              v25 = v91;
              (*v89)(v77, v91);
            }

            v59(v32, v25);
            v33 = v35;
            if (!v30)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
          }
        }

        swift_beginAccess();
        v61 = sub_22EFFDA80(v38, v39);
        if (v62)
        {
          v63 = v61;
          v64 = v98;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = *(v64 + 16);
          v99 = v66;
          *(v64 + 16) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22F06091C();
            v66 = v99;
          }

          v67 = v93;
          (*(v92 + 32))(v93, *(v66 + 56) + *(v92 + 72) * v63, v25);
          sub_22F05F64C(v63, v66, MEMORY[0x277CC9578]);
          *(v98 + 16) = v66;

          v68 = 0;
        }

        else
        {
          v68 = 1;
          v67 = v93;
        }

        v94(v67, v68, 1, v25);
        sub_22F01B96C(v67);
        swift_endAccess();
        if (qword_280CBEC38 != -1)
        {
          swift_once();
        }

        v69 = sub_22F0D0A1C();
        __swift_project_value_buffer(v69, qword_280CBEC40);
        sub_22F0CFF1C();
        v70 = sub_22F0D09FC();
        v71 = sub_22F0D123C();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v74 = v38;
          v75 = v73;
          v100[0] = v73;
          *v72 = v88;
          v76 = sub_22F00A560(v74, v39, v100);

          *(v72 + 4) = v76;
          v25 = v91;
          _os_log_impl(&dword_22EFE1000, v70, v71, "Invalid time for %s, nuking", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          MEMORY[0x2318FE8B0](v75, -1, -1);
          MEMORY[0x2318FE8B0](v72, -1, -1);
        }

        else
        {
        }

        v33 = v35;
        v32 = v96;
        if (!v30)
        {
          goto LABEL_8;
        }

LABEL_7:
        v35 = v33;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22F05ECD4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  swift_beginAccess();
  v11 = *(v2 + 16);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  sub_22F0CFF1C();
  v12 = sub_22EFFDA80(a1, a2);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    v15 = sub_22F0D05BC();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    v17 = 0;
    goto LABEL_6;
  }

  v14 = v12;
  v20 = *(v11 + 56);
  v15 = sub_22F0D05BC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v10, v20 + *(v16 + 72) * v14, v15);

  v17 = 1;
  (*(v16 + 56))(v10, 0, 1, v15);
LABEL_6:
  sub_22F01B96C(v10);
  sub_22F0D05BC();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  swift_beginAccess();
  sub_22F0CFF1C();
  sub_22F046468(v8, a1, a2);
  swift_endAccess();
  return v17;
}

uint64_t LaunchDiary.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_22F05EFB8()
{
  result = qword_280CBD198;
  if (!qword_280CBD198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1660, &qword_22F0D74C0);
    sub_22F05F060(&unk_280CBDC00, MEMORY[0x277CC95A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD198);
  }

  return result;
}

uint64_t sub_22F05F060(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22F0D05BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F05F0C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F0D140C() + 1) & ~v5;
    do
    {
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      v10 = sub_22F0D19CC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22F05F284(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F0D140C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22F0D198C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for ResolvedFamily(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22F05F448(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F0D140C() + 1) & ~v5;
    while (1)
    {
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      v9 = sub_22F0D19CC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for PeopleLocation(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22F05F64C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22F0D140C() + 1) & ~v6;
    while (1)
    {
      sub_22F0D199C();
      sub_22F0CFF1C();
      sub_22F0D0D5C();
      v11 = sub_22F0D19CC();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_22F05F840()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1970, &qword_22F0D8478);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void sub_22F05F98C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1948, &qword_22F0D8468);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_22EFFFB40(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22EFE6B9C(v25, *(v4 + 56) + v22);
        sub_22F0CFF1C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        sub_22F0D00CC();
        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    sub_22F0D00CC();
LABEL_21:
    *v1 = v4;
  }
}

id sub_22F05FB34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA19A8, &qword_22F0D9180);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void *sub_22F05FC90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA19A0, &qword_22F0D8488);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v23 = *(v19 + v17);
        v22 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v23;
        v26[1] = v22;
        v26[2] = v24;
        sub_22F0CFF1C();
        v27 = v23;
        result = sub_22F00AC04(v22, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void sub_22F05FE28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1988, &unk_22F0D9160);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_22F0CFF1C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22F0D00CC();
    *v1 = v4;
  }
}

void sub_22F05FF84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA08B0, &qword_22F0D2CE0);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_22F0CFF1C();
        sub_22F0CFF1C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22F0D00CC();
    *v1 = v4;
  }
}

void sub_22F0600F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1938, &unk_22F0D90E0);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
        sub_22F0CFF1C();
        sub_22F0CFF1C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22F0D00CC();
    *v1 = v4;
  }
}

void *sub_22F06026C()
{
  v1 = v0;
  v2 = type metadata accessor for ResolvedFamily(0);
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1990, &unk_22F0D9170);
  v4 = *v0;
  v5 = sub_22F0D16FC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_22F06158C(*(v4 + 56) + v23, v26, type metadata accessor for ResolvedFamily);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = sub_22F0615F4(v22, *(v24 + 56) + v23, type metadata accessor for ResolvedFamily);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        result = sub_22F0D00CC();
        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_22F0D00CC();
LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_22F0604A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1998, &qword_22F0D9E70);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_22F0CFF1C();
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void sub_22F060614()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1958, &unk_22F0D9120);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        sub_22F0CFF1C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22F0D00CC();
    *v1 = v4;
  }
}

void sub_22F060778()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA11A8, &qword_22F0D5C20);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22F003598(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22EFFFA24(v25, (*(v4 + 56) + v22));
        sub_22F0CFF1C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        sub_22F0D00CC();
        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    sub_22F0D00CC();
LABEL_21:
    *v1 = v4;
  }
}