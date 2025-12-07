unint64_t sub_24EDFFF14@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v4, boxed_opaque_existential_1, &unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v8 = *(a1 + 20);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 136) = sub_24E7D17FC();
  v9 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(v4 + v8, v9, &qword_27F21D8F8, &qword_24F95ADB0);
  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

unint64_t sub_24EE000B0()
{
  result = qword_27F230818;
  if (!qword_27F230818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230818);
  }

  return result;
}

uint64_t sub_24EE00104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE0014C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsPageIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE001B0(uint64_t a1)
{
  v2 = type metadata accessor for AchievementsPageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EE00220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24EE0033C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24EE00450(uint64_t a1)
{
  sub_24EE0050C(319, &qword_27F214988, type metadata accessor for Player);
  if (v1 <= 0x3F)
  {
    sub_24EE0050C(319, &qword_27F21D948, type metadata accessor for Page.Background);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE0050C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24EE00574()
{
  result = qword_27F230838;
  if (!qword_27F230838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230838);
  }

  return result;
}

unint64_t sub_24EE005CC()
{
  result = qword_27F230840;
  if (!qword_27F230840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230840);
  }

  return result;
}

unint64_t sub_24EE00624()
{
  result = qword_27F230848;
  if (!qword_27F230848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230848);
  }

  return result;
}

uint64_t TrailersLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = *v3;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v46 = sub_24F928388();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  sub_24F928398();
  v43 = v7;
  v18 = *(v7 + 16);
  v45 = a2;
  v19 = a2;
  v20 = v18;
  v18(v12, v19, v6);
  type metadata accessor for Trailers();
  swift_allocObject();
  v21 = v41;
  v22 = Trailers.init(deserializing:using:)(v17, v12);
  if (v21)
  {
    v23 = a1;
    v24 = v46;
  }

  else
  {
    v41 = v20;
    v26 = v9;
    v27 = *(v22 + 16);
    if (v27 >> 62)
    {
      v39 = v22;
      v28 = sub_24F92C738();
      v22 = v39;
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = a1;
    v30 = v44;
    v29 = v45;
    v31 = v46;
    if (v28)
    {
      *(v42 + OBJC_IVAR____TtC12GameStoreKit14TrailersLockup_trailers) = v22;
      v32 = *(v30 + 16);
      v45 = a1;
      v32(v14, a1, v31);
      v41(v26, v29, v6);
      v33 = v6;
      v34 = v29;
      v24 = Lockup.init(deserializing:using:)(v14, v26);
      (*(v43 + 8))(v34, v33);
      (*(v30 + 8))(v45, v46);
      return v24;
    }

    v35 = v46;
    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v37 = MEMORY[0x277D84F90];
    *v38 = 0x736F65646976;
    v38[1] = 0xE600000000000000;
    v38[2] = v40;
    v38[3] = v37;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D22540], v36);
    swift_willThrow();

    v24 = v35;
  }

  (*(v43 + 8))(v45, v6);
  (*(v44 + 8))(v23, v24);
  type metadata accessor for TrailersLockup(0);
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t TrailersLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:trailers:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v77 = a8;
  v76 = a7;
  v75 = a6;
  v74 = a5;
  v71 = a4;
  v69 = a3;
  v67 = a2;
  v85 = a25;
  v86 = a26;
  v84 = a24;
  v82 = a27;
  v83 = a23;
  v81 = a22;
  v79 = a21;
  v64 = a20;
  v63 = a19;
  v80 = a18;
  v73 = a17;
  v72 = a16;
  v70 = a15;
  v68 = a14;
  v78 = a13;
  v66 = a12;
  v65 = a11;
  v62 = a10;
  v61 = a9;
  v30 = sub_24F91F6B8();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v58 - v35;
  v37 = swift_allocObject();
  v38 = a1[1];
  v60 = *a1;
  v59 = v38;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit14TrailersLockup_trailers) = a29;
  v93 = 0;
  memset(v92, 0, sizeof(v92));
  sub_24E60169C(a28, v36, &qword_27F213E68, &unk_24F93BC80);
  *(v37 + 424) = 4;
  sub_24E60169C(v92, &v89, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v90 + 1))
  {
    v39 = v90;
    *(v37 + 448) = v89;
    *(v37 + 464) = v39;
    *(v37 + 480) = v91;
  }

  else
  {

    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v42 = v41;
    (*(v31 + 8))(v33, v30);
    v87 = v40;
    v88 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v89, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E60169C(v36, v37 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  v43 = v59;
  *(v37 + 16) = v60;
  *(v37 + 24) = v43;
  v44 = v69;
  *(v37 + 32) = v67;
  *(v37 + 40) = v44;
  *(v37 + 48) = v71;
  *(v37 + 56) = 0;
  v45 = v64;
  *(v37 + 64) = v63;
  *(v37 + 72) = v45;
  v46 = v75;
  *(v37 + 80) = v74;
  *(v37 + 88) = v46;
  v47 = v77;
  *(v37 + 96) = v76;
  *(v37 + 104) = v47;
  v48 = v62;
  *(v37 + 112) = v61;
  *(v37 + 120) = v48;
  *(v37 + 128) = 0;
  *(v37 + 136) = 2;
  v49 = v66;
  *(v37 + 144) = v65;
  *(v37 + 152) = v49;
  v50 = v70;
  *(v37 + 192) = v68;
  *(v37 + 200) = v50;
  v51 = v73;
  *(v37 + 208) = v72;
  *(v37 + 216) = v51;
  *(v37 + 376) = 0u;
  *(v37 + 392) = 0u;
  *(v37 + 408) = 0x8000;
  *(v37 + 360) = v82;
  *(v37 + 416) = 0;
  *(v37 + 432) = MEMORY[0x277D84FA0];
  v52 = v81;
  *(v37 + 160) = v79;
  *(v37 + 168) = v52;
  v53 = v78;
  *(v37 + 176) = v83;
  *(v37 + 184) = v53;
  v55 = v84;
  v54 = v85;
  *(v37 + 224) = v80;
  *(v37 + 232) = v55;
  *(v37 + 240) = v54;
  *(v37 + 248) = 0;
  v56 = v86;
  *(v37 + 256) = 0;
  *(v37 + 264) = v56;
  *(v37 + 272) = 0u;
  *(v37 + 288) = 0u;
  *(v37 + 304) = 0u;
  *(v37 + 320) = 0u;
  *(v37 + 336) = 0;
  sub_24E601704(a28, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v36, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v92, &qword_27F235830, &qword_24F93B8C0);
  *(v37 + 344) = MEMORY[0x277D84F90];
  *(v37 + 352) = 0;
  *(v37 + 440) = 0;
  *(v37 + 368) = 0;
  return v37;
}

uint64_t TrailersLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:trailers:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v72 = a4;
  v70 = a3;
  v68 = a2;
  v83 = a27;
  v86 = a25;
  v87 = a26;
  v85 = a24;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v71 = a15;
  v69 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v32 = sub_24F91F6B8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v59 - v37;
  v39 = a1[1];
  v61 = *a1;
  v60 = v39;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit14TrailersLockup_trailers) = a29;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  sub_24E60169C(a28, v38, &qword_27F213E68, &unk_24F93BC80);
  *(v30 + 424) = 4;
  sub_24E60169C(v96, &v90, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v91 + 1))
  {
    v93 = v90;
    v94 = v91;
    v95 = v92;
  }

  else
  {

    sub_24F91F6A8();
    v40 = sub_24F91F668();
    v42 = v41;
    (*(v33 + 8))(v35, v32);
    v88 = v40;
    v89 = v42;
    sub_24F92C7F8();
    sub_24E601704(&v90, &qword_27F235830, &qword_24F93B8C0);
  }

  v43 = v94;
  *(v30 + 448) = v93;
  *(v30 + 464) = v43;
  *(v30 + 480) = v95;
  sub_24E60169C(v38, v30 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v44 = v60;
  *(v30 + 16) = v61;
  *(v30 + 24) = v44;
  v45 = v70;
  *(v30 + 32) = v68;
  *(v30 + 40) = v45;
  *(v30 + 48) = v72;
  *(v30 + 56) = 0;
  v46 = v65;
  *(v30 + 64) = v64;
  *(v30 + 72) = v46;
  v47 = v76;
  *(v30 + 80) = v75;
  *(v30 + 88) = v47;
  v48 = v78;
  *(v30 + 96) = v77;
  *(v30 + 104) = v48;
  v49 = v63;
  *(v30 + 112) = v62;
  *(v30 + 120) = v49;
  *(v30 + 128) = 0;
  *(v30 + 136) = 2;
  v50 = v67;
  *(v30 + 144) = v66;
  *(v30 + 152) = v50;
  v51 = v71;
  *(v30 + 192) = v69;
  *(v30 + 200) = v51;
  v52 = v74;
  *(v30 + 208) = v73;
  *(v30 + 216) = v52;
  *(v30 + 376) = 0u;
  *(v30 + 392) = 0u;
  *(v30 + 408) = 0x8000;
  *(v30 + 360) = v83;
  *(v30 + 416) = 0;
  *(v30 + 432) = MEMORY[0x277D84FA0];
  v53 = v82;
  *(v30 + 160) = v80;
  *(v30 + 168) = v53;
  v54 = v79;
  *(v30 + 176) = v84;
  *(v30 + 184) = v54;
  v56 = v85;
  v55 = v86;
  *(v30 + 224) = v81;
  *(v30 + 232) = v56;
  *(v30 + 240) = v55;
  *(v30 + 248) = 0;
  v57 = v87;
  *(v30 + 256) = 0;
  *(v30 + 264) = v57;
  *(v30 + 272) = 0u;
  *(v30 + 288) = 0u;
  *(v30 + 304) = 0u;
  *(v30 + 320) = 0u;
  *(v30 + 336) = 0;

  sub_24E601704(a28, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v38, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v96, &qword_27F235830, &qword_24F93B8C0);
  *(v30 + 344) = MEMORY[0x277D84F90];
  *(v30 + 352) = 0;
  *(v30 + 440) = 0;
  *(v30 + 368) = 0;
  return v30;
}

uint64_t TrailersLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t TrailersLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrailersLockup(uint64_t a1)
{
  result = qword_27F230850;
  if (!qword_27F230850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void __swiftcall MetricsSystemInfo.init()(GameStoreKit::MetricsSystemInfo *__return_ptr retstr)
{
  v2 = sub_24F92A538();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92A528();
  v6 = sub_24F92A4E8();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v5, v2);
  retstr->systemName._countAndFlagsBits = v6;
  retstr->systemName._object = v8;
  sub_24F92A528();
  v10 = objc_opt_self();
  v11 = [v10 deviceClass];
  v12 = sub_24F92B0D8();
  v14 = v13;

  v9(v5, v2);
  retstr->hardwareFamily._countAndFlagsBits = v12;
  retstr->hardwareFamily._object = v14;
  sub_24F92A528();
  v15 = [v10 productType];
  v16 = sub_24F92B0D8();
  v18 = v17;

  v9(v5, v2);
  retstr->hardwareModel._countAndFlagsBits = v16;
  retstr->hardwareModel._object = v18;
  sub_24F92A528();
  v19 = sub_24F92A508();
  v21 = v20;
  v9(v5, v2);
  retstr->osBuildNumber._countAndFlagsBits = v19;
  retstr->osBuildNumber._object = v21;
  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 systemVersion];

  v24 = sub_24F92B0D8();
  v26 = v25;

  retstr->osVersion._countAndFlagsBits = v24;
  retstr->osVersion._object = v26;
}

unint64_t MetricsSystemInfo.dictionaryRepresentation.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[9];
  v17 = v0[8];

  v10 = sub_24E6086DC(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v2, v1, 29551, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v3, v4, 0x6572617764726168, 0xEE00796C696D6146, v12);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v5, v6, 0x6572617764726168, 0xED00006C65646F4DLL, v13);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v7, v8, 0x4E646C697542736FLL, 0xED00007265626D75, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v17, v9, 0x6F6973726556736FLL, 0xE90000000000006ELL, v15);
  return v10;
}

uint64_t ScreenshotsDisplayStyle.shouldShowScreenshots.getter()
{
  if (*v0)
  {
    v1 = sub_24F92CE08();

    v2 = v1 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

GameStoreKit::ScreenshotsDisplayStyle_optional __swiftcall ScreenshotsDisplayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ScreenshotsDisplayStyle.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65657263732D6F6ELL;
  }
}

uint64_t sub_24EE01D24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000024FA429F0;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0x800000024FA429F0;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x65657263732D6F6ELL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEE0073746F68736ELL;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65657263732D6F6ELL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE0073746F68736ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EE01E28()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE01EDC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EE01F7C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EE02038(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0073746F68736ELL;
  v4 = 0x800000024FA429F0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65657263732D6F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24EE020AC()
{
  result = qword_27F230860;
  if (!qword_27F230860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230860);
  }

  return result;
}

uint64_t ProductStarRatingsHistogram.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v21 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v20);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
  return v25;
}

uint64_t ProductStarRatingsHistogram.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v27 - v20;
  LOBYTE(a2) = *a2;
  sub_24E65E064(a1, v30);
  v22 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v10 + OBJC_IVAR____TtC12GameStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_24E65E064(v30, v29);
  v28 = a2;
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_24E9C00B8(v29, &v28, v21);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
  return v25;
}

uint64_t ProductStarRatingsHistogram.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t ProductStarRatingsHistogram.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductStarRatingsHistogram(uint64_t a1)
{
  result = qword_27F230868;
  if (!qword_27F230868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WaitingAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  WaitingAppStateDataSource.init()();
  return v0;
}

void *WaitingAppStateDataSource.init()()
{
  v10 = sub_24F92BEE8();
  v1 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24F92BE88();
  MEMORY[0x28223BE20](v5);
  v0[2] = MEMORY[0x277D84F98];
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_24E74EC40();
  v9[0] = "it27ProductStarRatingsHistogram";
  v9[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v11 = v7;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v10);
  v0[5] = sub_24F92BF38();
  return v0;
}

uint64_t sub_24EE029D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

double sub_24EE02A30()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24EE02A68(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_24EE02AEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EE02B4C(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EE02BE0;
}

uint64_t sub_24EE02BEC(uint64_t *a1, _BYTE *a2)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  v9 = a1[1];
  LOBYTE(a2) = *a2;
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  *(v11 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v17 = v12;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  v15 = sub_24EE02EF4;
  v16 = v11;
  sub_24F92BF08();

  (*(v6 + 8))(v8, v5);
  return 1;
}

uint64_t sub_24EE02E44(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  *&v10[0] = a4;
  v11 = 0;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_24E820174(v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_24EE02F04(uint64_t *a1)
{
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v15 = v10;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  v13 = sub_24EE03330;
  v14 = v9;
  sub_24F92BF08();

  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t sub_24EE03150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_24E98FE14(a2, a3, v6);
  swift_endAccess();
  return sub_24EE03700(v6);
}

uint64_t (*sub_24EE031C0(uint64_t (*result)(_OWORD *)))(_OWORD *)
{
  if (result)
  {
    memset(v1, 0, sizeof(v1));
    v2 = -1;
    return result(v1);
  }

  return result;
}

uint64_t sub_24EE03214(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  return a2(v3);
}

uint64_t WaitingAppStateDataSource.deinit()
{

  sub_24E883630(v0 + 24);

  return v0;
}

uint64_t WaitingAppStateDataSource.__deallocating_deinit()
{

  sub_24E883630(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm_38(uint64_t a1)
{

  return swift_deallocObject();
}

void (*sub_24EE0333C(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EE03768;
}

double sub_24EE03408@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

uint64_t sub_24EE03458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EE034A8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EE03700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BE00, &qword_24F96BDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EE03770()
{
  result = qword_27F230878;
  if (!qword_27F230878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230878);
  }

  return result;
}

unint64_t sub_24EE037C8()
{
  result = qword_27F230880;
  if (!qword_27F230880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230880);
  }

  return result;
}

unint64_t sub_24EE03820()
{
  result = qword_27F230888;
  if (!qword_27F230888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230888);
  }

  return result;
}

uint64_t sub_24EE03874()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230910, &qword_24F9A2E00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_24F91F298();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24F92B088();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_24F91F2B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24F91E878();
  __swift_allocate_value_buffer(v10, qword_27F39C990);
  __swift_project_value_buffer(v10, qword_27F39C990);
  sub_24F92B018();
  sub_24F91F778();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_24F91F2C8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_24F91E868();
}

uint64_t sub_24EE03B80@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230908, &qword_24F9A2DF8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230910, &qword_24F9A2E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_24F91F2B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = sub_24F92B068();
  MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  sub_24F92B058();
  sub_24F92B048();
  sub_24F91E788();
  sub_24F92B038();

  sub_24F92B048();
  sub_24F91F2A8();
  sub_24F92B058();
  sub_24F92B048();
  sub_24F91E788();
  sub_24F92B038();

  sub_24F92B048();
  sub_24F91F2A8();
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = sub_24F91E7C8();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_24F91E7D8();
}

uint64_t sub_24EE03E6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24EE050EC;

  return sub_24EE04F7C(a1);
}

uint64_t sub_24EE03F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_24EE03FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E67D094;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

unint64_t sub_24EE0408C()
{
  result = qword_27F230890;
  if (!qword_27F230890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230890);
  }

  return result;
}

unint64_t sub_24EE040E4()
{
  result = qword_27F230898;
  if (!qword_27F230898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230898);
  }

  return result;
}

unint64_t sub_24EE0413C()
{
  result = qword_27F2308A0;
  if (!qword_27F2308A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2308A8, qword_24F9A2A68);
    sub_24EE040E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308A0);
  }

  return result;
}

uint64_t sub_24EE041C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_24EE0443C();
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_24EE04274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return MEMORY[0x28210C148](a1, a2, a3);
}

unint64_t sub_24EE04334()
{
  result = qword_27F2308B0;
  if (!qword_27F2308B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308B0);
  }

  return result;
}

unint64_t sub_24EE0438C()
{
  result = qword_27F2308B8;
  if (!qword_27F2308B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308B8);
  }

  return result;
}

unint64_t sub_24EE043E4()
{
  result = qword_27F2308C0;
  if (!qword_27F2308C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308C0);
  }

  return result;
}

unint64_t sub_24EE0443C()
{
  result = qword_27F2308C8;
  if (!qword_27F2308C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308C8);
  }

  return result;
}

unint64_t sub_24EE044A0()
{
  result = qword_27F2308D0;
  if (!qword_27F2308D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308D0);
  }

  return result;
}

uint64_t sub_24EE044F4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230920, &qword_24F9A2E08);
  MEMORY[0x28223BE20](v1);
  sub_24EE03820();
  sub_24F91E838();
  sub_24F91E828();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230928, &qword_24F9A2E38);
  sub_24F91E818();

  sub_24F91E828();
  return sub_24F91E848();
}

unint64_t sub_24EE04614()
{
  result = qword_27F2308D8;
  if (!qword_27F2308D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308D8);
  }

  return result;
}

unint64_t sub_24EE0466C()
{
  result = qword_27F2308E0;
  if (!qword_27F2308E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308E0);
  }

  return result;
}

unint64_t sub_24EE046C4()
{
  result = qword_27F2308E8;
  if (!qword_27F2308E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308E8);
  }

  return result;
}

uint64_t sub_24EE04718(uint64_t a1)
{
  sub_24EE04A6C();
  v2 = sub_24F91E808();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_24EE04784@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210778 != -1)
  {
    swift_once();
  }

  v3 = sub_24F91E878();
  v4 = __swift_project_value_buffer(v3, qword_27F39C990);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_24EE04830()
{
  result = qword_27F2308F0;
  if (!qword_27F2308F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2308F8, &qword_24F9A2CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2308F0);
  }

  return result;
}

uint64_t sub_24EE04894(uint64_t a1)
{
  v2 = sub_24EE03820();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_24EE048E4()
{
  result = qword_27F230900;
  if (!qword_27F230900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230900);
  }

  return result;
}

uint64_t sub_24EE0493C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24E6541E4;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_24EE04A00(uint64_t a1)
{
  v2 = sub_24EE046C4();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_24EE04A6C()
{
  result = qword_27F230918;
  if (!qword_27F230918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230918);
  }

  return result;
}

uint64_t sub_24EE04AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F91E7A8();
  *a1 = result;
  return result;
}

uint64_t sub_24EE04AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v42 = a6;
  v43 = a8;
  v36 = a5;
  v37 = a7;
  v40 = a4;
  v41 = a3;
  v39 = a2;
  v44 = a1;
  v45 = a9;
  v10 = sub_24F91F298();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_24F92B088();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_24F91F2B8();
  MEMORY[0x28223BE20](v16 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230930, &qword_24F9A2E48);
  sub_24F92B018();
  sub_24F91F778();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v11 + 104);
  v18(v13, v17, v10);
  sub_24F91F2C8();
  v38 = sub_24F91E7B8();

  sub_24F92B018();
  sub_24F91F778();
  v18(v13, v17, v10);
  sub_24F91F2C8();
  v19 = sub_24F91E7B8();

  sub_24F92B018();
  sub_24F91F778();
  v18(v13, v17, v10);
  v20 = v39;
  v21 = v38;
  sub_24F91F2C8();
  v22 = sub_24F91E7B8();
  v23 = v41;
  if (!v40)
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v40)
  {
    v24 = v40;
  }

  v46 = v23;
  v47 = v24;

  sub_24F91E798();
  object = v42;
  if (v42)
  {
    countAndFlagsBits = v36;
  }

  else
  {
    v27._countAndFlagsBits = 0xD000000000000025;
    v27._object = 0x800000024FA5E5B0;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v29 = localizedString(_:comment:)(v27, v28);
    object = v29._object;
    countAndFlagsBits = v29._countAndFlagsBits;
  }

  v46 = countAndFlagsBits;
  v47 = object;
  sub_24F91E798();
  v30 = v43;
  v31 = v44;
  if (v43)
  {
    v32 = v37;
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_24F92C888();

    v46 = 0xD00000000000001FLL;
    v47 = 0x800000024FA5E5E0;
    MEMORY[0x253050C20](v31, v20);
    v32 = v46;
    v30 = v47;
  }

  v46 = v32;
  v47 = v30;
  sub_24F91E798();

  v34 = v45;
  *v45 = v31;
  v34[1] = v20;
  v34[2] = v21;
  v34[3] = v19;
  v34[4] = v22;
  return result;
}

uint64_t sub_24EE04F9C()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_24F458A80(0, v2, 0);
    v3 = v14;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_24EE04AEC(v5, v6, 0, 0, 0, 0, 0, 0, (v0 + 16));
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_24F458A80((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 40 * v8;
      v10 = *(v0 + 16);
      v11 = *(v0 + 32);
      *(v9 + 64) = *(v0 + 48);
      *(v9 + 32) = v10;
      *(v9 + 48) = v11;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v12 = *(v0 + 8);

  return v12(v3);
}

void sub_24EE050F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v30 = a3;
  v36 = a2;
  v5 = sub_24F927D88();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24F927DC8();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch_group_create();
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_21:
    v11 = sub_24F92C738();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = swift_allocObject();
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  *(v12 + 16) = sub_24EE1E554(v46, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  v29 = a1;
  v33 = v7;
  if (v10)
  {
    v14 = sub_24F92C738();
    if (!v14)
    {
LABEL_17:
      v22 = swift_allocObject();
      v23 = v31;
      v22[2] = v30;
      v22[3] = v23;
      v22[4] = v12;
      v22[5] = v13;
      v44 = sub_24EE06C0C;
      v45 = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EAF8248;
      v43 = &block_descriptor_42_0;
      v24 = _Block_copy(aBlock);

      v25 = v32;
      sub_24F927DA8();
      v41 = MEMORY[0x277D84F90];
      sub_24E858250();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E8582A8();
      v26 = v34;
      v27 = v38;
      sub_24F92C6A8();
      sub_24F92BE68();
      _Block_release(v24);

      (*(v37 + 8))(v26, v27);
      (*(v33 + 8))(v25, v35);

      return;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  v10 = 0;
  v15 = v29 & 0xFFFFFFFFFFFFFF8;
  v39 = v29 + 32;
  v40 = v29 & 0xC000000000000001;
  while (!v40)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= *(v15 + 16))
    {
      goto LABEL_19;
    }

    dispatch_group_enter(v9);
    if (v10 >= *(v15 + 16))
    {
      goto LABEL_20;
    }

    a1 = v10 + 1;
    v7 = *(v39 + 8 * v10);

LABEL_13:
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v10;
    v16[4] = v9;
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v9;
    v18 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v19 = v9;

    v20 = sub_24F92BEF8();
    v43 = v18;
    v44 = MEMORY[0x277D225C0];
    aBlock[0] = v20;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v10 = a1;
    if (a1 == v14)
    {
      goto LABEL_17;
    }
  }

  v21 = v29;
  MEMORY[0x253052270](v10, v29);
  swift_unknownObjectRelease();
  a1 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    dispatch_group_enter(v9);
    v7 = MEMORY[0x253052270](v10, v21);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_24EE0562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(a1 + 32);
  v7 = sub_24F92B5A8();
  v8 = sub_24F92BAA8();
  v9 = sub_24F92BAA8();

  v10 = a5;
  v6(v7, v8, v9, a5);
}

id sub_24EE05720(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_24F9298F8();
  v7 = MEMORY[0x25304F260]();
  if (v7)
  {
    v27 = v6;
    v28 = MEMORY[0x277D22078];
    v26[0] = v7;
  }

  else
  {
    v27 = sub_24F929638();
    v28 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v26);
    sub_24F929628();
  }

  result = [objc_allocWithZone(MEMORY[0x277CD4650]) initWithValue_];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  result = [a2 context];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result virtualMachine];

  if (v11)
  {
    [v11 addManagedReference:v9 withOwner:v3];
  }

  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230948, &qword_24F9A2E70);
    v12 = sub_24F92A9E8();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_24E60B7DC(MEMORY[0x277D84F90]);

    v15 = sub_24EE066B0(a1, v14);

    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v12;
    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);

    v17 = sub_24F92BEF8();
    sub_24EE050F0(v15, v17, sub_24EE06A90, v16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230948, &qword_24F9A2E70);
    sub_24E60B7DC(MEMORY[0x277D84F90]);
    sub_24F92A988();
  }

  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = v11;
  v18[4] = v3;
  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = v11;
  v19[4] = v3;
  v20 = v9;
  v21 = v11;
  v22 = v3;
  v23 = v20;
  v24 = v21;
  v25 = v22;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

id sub_24EE05ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v15 = sub_24F9298F8();
  v16 = MEMORY[0x25304F260]();
  if (v16)
  {
    v38 = v15;
    v39 = MEMORY[0x277D22078];
    v37[0] = v16;
  }

  else
  {
    v38 = sub_24F929638();
    v39 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v37);
    sub_24F929628();
  }

  result = [objc_allocWithZone(MEMORY[0x277CD4650]) initWithValue_];
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v18 = result;
  result = [a7 context];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = [result virtualMachine];

  if (v20)
  {
    [v20 addManagedReference:v18 withOwner:v8];
  }

  if (a6 && (a5 == 1819047278 && a6 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0 || a5 == 0x656E696665646E75 && a6 == 0xE900000000000064 || (sub_24F92CE08() & 1) != 0))
  {
    a5 = 0;
    a6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230940, &qword_24F9A2E68);
  v21 = sub_24F92A9E8();
  if (a2 && a4)
  {
    if (a3)
    {
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = a3;
      v22[4] = a4;
      v22[5] = a5;
      v22[6] = a6;
      v23 = objc_opt_self();

      v24 = sub_24F92B098();
      v25 = swift_allocObject();
      *(v25 + 16) = sub_24EE064AC;
      *(v25 + 24) = v22;
      aBlock[4] = sub_24EE064FC;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EE0562C;
      aBlock[3] = &block_descriptor_79;
      v26 = _Block_copy(aBlock);

      [v23 fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:v24 completionHandler:v26];
      _Block_release(v26);
    }

    else
    {
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24F92A9C8();
    }
  }

  else
  {
    if (a3)
    {
      v27 = a3;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    aBlock[0] = v27;

    sub_24F92A9C8();
  }

  v28 = swift_allocObject();
  v28[2] = v18;
  v28[3] = v20;
  v28[4] = v8;
  v29 = swift_allocObject();
  v29[2] = v18;
  v29[3] = v20;
  v29[4] = v8;
  v30 = v18;
  v31 = v20;
  v32 = v8;
  v33 = v30;
  v34 = v31;
  v35 = v32;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_24EE05F00(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93A400;
  *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  *(v12 + 32) = v11;
  v13 = objc_allocWithZone(MEMORY[0x277CBEB68]);

  v14 = [v13 init];
  *(v12 + 88) = sub_24E69A5C4(0, &qword_27F220B60, 0x277CBEB68);
  *(v12 + 64) = v14;
  v15 = [a2 value];
  if (v15)
  {
    v16 = v15;
    v17 = sub_24F92B588();

    if (!a3)
    {
      return;
    }
  }

  else
  {

    if (!a3)
    {
      return;
    }
  }

  [a3 removeManagedReference:a2 withOwner:a4];
}

void sub_24EE06090(uint64_t a1, id a2, void *a3, uint64_t a4)
{
  v8 = [a2 value];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 context];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    v12 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    v13 = MEMORY[0x253051C90](a1, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F93A400;
    v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v16 = sub_24E69A5C4(0, &qword_27F220B60, 0x277CBEB68);
    *(v14 + 32) = v15;
    *(v14 + 88) = v12;
    *(v14 + 56) = v16;
    *(v14 + 64) = v13;
    v17 = v13;
    v18 = sub_24F92B588();

    v19 = [v9 callWithArguments_];
  }

  if (a3)
  {

    [a3 removeManagedReference:a2 withOwner:a4];
  }
}

id sub_24EE063C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClientOrderingWrapper();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24EE0645C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE064C4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EE0651C()
{

  return swift_deallocObject();
}

void sub_24EE06554(uint64_t *a1, uint64_t a2, unint64_t a3, NSObject *a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[3];
  v19 = a1[2];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  swift_beginAccess();
  v13 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = sub_24ECDE2B8(v13);
  *(a2 + 16) = v13;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v13[2] > a3)
  {
    v15 = &v13[7 * a3];
    v16 = v8;
    v17 = v15[4];
    v18 = v15[5];
    v15[4] = v16;
    v15[5] = v7;
    v15[6] = v19;
    v15[7] = v9;
    v15[8] = v10;
    v15[9] = v11;
    v15[10] = v12;
    *(a2 + 16) = v13;
    swift_endAccess();
    sub_24ED66F88(v17, v18);
    dispatch_group_leave(a4);
    return;
  }

LABEL_7:
  __break(1u);
}

void *sub_24EE066B0(uint64_t a1, __n128 a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v39 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v5 = v2 + 64;
    v6 = sub_24F92C6B8();
    v7 = *(v2 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230950, &qword_24F9A2E78);
    result = objc_opt_self();
    v8 = 0;
    v35 = result;
    v31 = v2 + 72;
    v36 = v2;
    v33 = v2 + 64;
    v34 = v3;
    v32 = v7;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v2 + 36))
      {
        goto LABEL_22;
      }

      v37 = v8;
      v11 = *(v2 + 56);
      v12 = (*(v2 + 48) + 16 * v6);
      v14 = *v12;
      v13 = v12[1];
      v15 = (v11 + 16 * v6);
      v17 = *v15;
      v16 = v15[1];

      v18 = sub_24F92A9E8();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = v14;
      v19[4] = v13;
      v19[5] = v17;
      v19[6] = v16;

      v20 = sub_24F92B098();
      v21 = swift_allocObject();
      *(v21 + 16) = sub_24EE06C60;
      *(v21 + 24) = v19;
      aBlock[4] = sub_24EE06CB8;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EE0562C;
      aBlock[3] = &block_descriptor_52_0;
      v22 = _Block_copy(aBlock);

      [v35 fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:v20 completionHandler:v22];
      v23 = v22;
      v2 = v36;
      _Block_release(v23);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      result = sub_24F92C958();
      v9 = 1 << *(v36 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v33;
      v24 = *(v33 + 8 * v10);
      if ((v24 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v7) = v32;
      if (v32 != *(v36 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v6 & 0x3F));
      if (v25)
      {
        v9 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v28 = (v31 + 8 * v10);
        while (v27 < (v9 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_24E6586A8(v6, v32, 0);
            v9 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_24E6586A8(v6, v32, 0);
      }

LABEL_4:
      v8 = v37 + 1;
      v6 = v9;
      if (v37 + 1 == v34)
      {
        return v39;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EE06A50()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_39()
{

  return swift_deallocObject();
}

uint64_t sub_24EE06B30()
{

  return swift_deallocObject();
}

uint64_t sub_24EE06B7C()
{

  return swift_deallocObject();
}

uint64_t sub_24EE06BC4()
{

  return swift_deallocObject();
}

uint64_t sub_24EE06C18()
{

  return swift_deallocObject();
}

uint64_t sub_24EE06CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeDefinitionDetail(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE06E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeDefinitionDetail(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_24F928AD8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for UpdateChallengeDefinitionAction(uint64_t a1)
{
  result = qword_27F230958;
  if (!qword_27F230958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE06FA4(uint64_t a1)
{
  type metadata accessor for ChallengeDefinitionDetail(319);
  if (v1 <= 0x3F)
  {
    sub_24E6CFC68(319);
    if (v2 <= 0x3F)
    {
      sub_24F928AD8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24EE07040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_24F928AD8();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChallengeDefinitionDetail(0);
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230968, &unk_24F9A2EF0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v21 - v8;
  updated = type metadata accessor for UpdateChallengeDefinitionAction(0);
  MEMORY[0x28223BE20](updated);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EE07600();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v14 = v26;
  v22 = v5;
  LOBYTE(v30) = 0;
  sub_24EE0771C(&qword_27F21B790, type metadata accessor for ChallengeDefinitionDetail, &protocol conformance descriptor for ChallengeDefinitionDetail);
  v15 = v27;
  sub_24F92CC68();
  sub_24EE07654(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
  v33 = 1;
  sub_24EE076B8();
  sub_24F92CC68();
  v16 = &v12[*(updated + 20)];
  v17 = v31;
  *v16 = v30;
  *(v16 + 1) = v17;
  *(v16 + 4) = v32;
  LOBYTE(v30) = 2;
  sub_24EE0771C(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
  v18 = v22;
  v19 = v25;
  sub_24F92CC68();
  (*(v14 + 8))(v9, v28);
  (*(v23 + 32))(&v12[*(updated + 24)], v18, v19);
  sub_24EE07764(v12, v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_24EE077C8(v12, type metadata accessor for UpdateChallengeDefinitionAction);
}

uint64_t sub_24EE074D0()
{
  v1 = 0x65756E69746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974696E69666564;
  }
}

uint64_t sub_24EE07548@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EE07940(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EE07570(uint64_t a1)
{
  v2 = sub_24EE07600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE075AC(uint64_t a1)
{
  v2 = sub_24EE07600();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE07600()
{
  result = qword_27F230970;
  if (!qword_27F230970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230970);
  }

  return result;
}

uint64_t sub_24EE07654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeDefinitionDetail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE076B8()
{
  result = qword_27F243830;
  if (!qword_27F243830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8, &qword_24F943600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243830);
  }

  return result;
}

uint64_t sub_24EE0771C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE07764(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateChallengeDefinitionAction(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24EE077C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE0783C()
{
  result = qword_27F230978;
  if (!qword_27F230978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230978);
  }

  return result;
}

unint64_t sub_24EE07894()
{
  result = qword_27F230980;
  if (!qword_27F230980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230980);
  }

  return result;
}

unint64_t sub_24EE078EC()
{
  result = qword_27F230988[0];
  if (!qword_27F230988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F230988);
  }

  return result;
}

uint64_t sub_24EE07940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_24EE07A70(uint64_t a1)
{
  sub_24EE07E64(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EE07B10(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

uint64_t sub_24EE07C6C(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((result & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;
      if (v6 < 0x7FFFFFFF)
      {
        v20 = ((v9 + result) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

void sub_24EE07E64(uint64_t a1)
{
  if (!qword_27F230A10)
  {
    type metadata accessor for Action(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F230A10);
    }
  }
}

uint64_t sub_24EE07F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v53 = a1;
  v2 = a1 - 8;
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v61 = v4;
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A18, &qword_24F9A30A0);
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  v66 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A20, &unk_24F9A30A8);
  MEMORY[0x28223BE20](v11);
  v63 = &v49 - v12;
  v13 = *(v2 + 24);
  v14 = sub_24EE08828();
  v15 = *(v2 + 32);
  v71 = v11;
  v72 = v13;
  v73 = v14;
  v74 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v56 = &v49 - v17;
  v18 = type metadata accessor for FlowAction(255);
  v65 = v11;
  v71 = v11;
  v72 = v13;
  v58 = v13;
  v59 = v14;
  v73 = v14;
  v74 = v15;
  v57 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24EE08C48(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  v21 = sub_24EE08C48(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  v62 = OpaqueTypeMetadata2;
  v71 = OpaqueTypeMetadata2;
  v72 = v18;
  v54 = v18;
  v55 = OpaqueTypeConformance2;
  v73 = OpaqueTypeConformance2;
  v74 = v20;
  v51 = v20;
  v50 = v21;
  v75 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v52 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v49 = &v49 - v26;
  v27 = sub_24F9232F8();
  v28 = *(*(v27 - 8) + 56);
  v64 = v8;
  v28(v8, 1, 1, v27);
  v29 = v70;
  v30 = *(v70 + 8);
  if (v30)
  {
    v31 = type metadata accessor for Action(0);
    v32 = sub_24EE08C48(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v72 = 0;
    v73 = 0;
  }

  v71 = v30;
  v74 = v31;
  v75 = v32;
  v33 = v53;
  (*(v3 + 16))(v5, v29, v53);
  v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v35 = swift_allocObject();
  v36 = v57;
  *(v35 + 16) = v58;
  *(v35 + 24) = v36;
  (*(v3 + 32))(v35 + v34, v5, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A38, &qword_24F9A30B8);
  sub_24EE08A94();
  v37 = v66;
  sub_24F921788();
  v38 = v63;
  v39 = &v63[*(v65 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222BA8, &unk_24F96B940);
  sub_24F924318();
  *v39 = swift_getKeyPath();
  (*(v67 + 32))(v38, v37, v68);
  v40 = v56;
  sub_24F926178();
  sub_24EE08BE0(v38);
  v41 = swift_checkMetadataState();
  v42 = v62;
  v43 = v55;
  v44 = v51;
  v45 = v50;
  sub_24F925E78();
  (*(v60 + 8))(v40, v42);
  v71 = v42;
  v72 = v41;
  v73 = v43;
  v74 = v44;
  v75 = v45;
  swift_getOpaqueTypeConformance2();
  v46 = v49;
  sub_24E7896B8();
  v47 = *(v52 + 8);
  v47(v24, v22);
  sub_24E7896B8();
  return (v47)(v46, v22);
}

double sub_24EE08618@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A50, &unk_24F9A30C0);
  MEMORY[0x28223BE20](v8);
  v10 = (v25 - v9);
  v11 = *a1;
  v12 = v11 > 0x3E || ((1 << v11) & 0x7FFFFDFF3FFFFFEDLL) == 0;
  if (v12 && v11 - 65 >= 0x11)
  {
    LOBYTE(v25[0]) = *a1;
    SystemImage.rawValue.getter();
    v13 = sub_24F926E48();
  }

  else
  {
    LOBYTE(v25[0]) = *a1;
    SystemImage.rawValue.getter();
    v13 = sub_24F926DF8();
  }

  v15 = v13;
  v16 = *&a1[*(type metadata accessor for SystemImageButton(0, a2, a3, v14) + 44)];
  KeyPath = swift_getKeyPath();
  v18 = (v10 + *(v8 + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v20 = *MEMORY[0x277CE1058];
  v21 = sub_24F926E78();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v10 = v15;
  v10[1] = KeyPath;
  v10[2] = v16;

  sub_24F927618();
  sub_24F9238C8();
  sub_24EE08CA0(v10, a4);
  v22 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A38, &qword_24F9A30B8) + 36));
  v23 = v25[1];
  *v22 = v25[0];
  v22[1] = v23;
  result = *&v26;
  v22[2] = v26;
  return result;
}

unint64_t sub_24EE08828()
{
  result = qword_27F230A28;
  if (!qword_27F230A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A20, &unk_24F9A30A8);
    sub_24E602068(&qword_27F230A30, &qword_27F230A18, &qword_24F9A30A0, MEMORY[0x277D7EB00]);
    sub_24E602068(&qword_27F222BB0, &qword_27F222BA8, &unk_24F96B940, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A28);
  }

  return result;
}

uint64_t sub_24EE0890C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SystemImageButton(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[12], v5);

  return swift_deallocObject();
}

double sub_24EE08A08@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for SystemImageButton(0, v4, v5, a1) - 8);
  v7 = (v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));

  return sub_24EE08618(v7, v4, v5, a2);
}

unint64_t sub_24EE08A94()
{
  result = qword_27F230A40;
  if (!qword_27F230A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A38, &qword_24F9A30B8);
    sub_24EE08B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A40);
  }

  return result;
}

unint64_t sub_24EE08B20()
{
  result = qword_27F230A48;
  if (!qword_27F230A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A50, &unk_24F9A30C0);
    sub_24E60156C();
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30, &qword_24F958D50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A48);
  }

  return result;
}

uint64_t sub_24EE08BE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A20, &unk_24F9A30A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EE08C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE08CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A50, &unk_24F9A30C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE08D10(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A20, &unk_24F9A30A8);
  sub_24EE08828();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for FlowAction(255);
  swift_getOpaqueTypeConformance2();
  sub_24EE08C48(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
  sub_24EE08C48(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EE08E68(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230BD0, &unk_24F9A35B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE0DF1C();
  sub_24F92D128();
  v18 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v17 = 1;
    sub_24F92CD08();
    v9 = type metadata accessor for SocialMenuAction(0);
    v16 = 2;
    sub_24F9289E8();
    sub_24EE0D4C4(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CCF8();
    v15 = *(v3 + *(v9 + 28));
    v14 = 3;
    sub_24EE0E02C();
    sub_24F92CCF8();
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 36));
    v11[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
    sub_24E785388(&qword_27F21C1D8, sub_24E785400, MEMORY[0x277D21D30]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EE091A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = v30 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230BB8, &unk_24F9A35A0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = v30 - v5;
  v7 = type metadata accessor for SocialMenuAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v10 + 24);
  v12 = sub_24F9289E8();
  v13 = *(*(v12 - 8) + 56);
  v40 = v11;
  v13(v9 + v11, 1, 1, v12);
  v14 = v7[7];
  *(v9 + v14) = 82;
  v15 = v9 + v7[8];
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v39 = v15;
  sub_24E61DA68(v41, v15, qword_27F21B590, &unk_24F93BE30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE0DF1C();
  v37 = v6;
  v16 = v38;
  sub_24F92D108();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v19 = v9;
    v20 = v39;
    v21 = v40;
LABEL_4:
    sub_24E601704(v19 + v21, &qword_27F213FB0, &qword_24F93E6B0);
    return sub_24E601704(v20, qword_27F24EC90, &unk_24F93C1D0);
  }

  v31 = v14;
  v17 = v34;
  v18 = v35;
  v38 = a1;
  LOBYTE(v41[0]) = 0;
  *v9 = sub_24F92CC28();
  v9[1] = v23;
  v30[1] = v23;
  LOBYTE(v41[0]) = 1;
  v24 = sub_24F92CC28();
  v32 = 0;
  v9[2] = v24;
  v9[3] = v25;
  LOBYTE(v41[0]) = 2;
  sub_24EE0D4C4(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
  v26 = v32;
  sub_24F92CC18();
  if (v26)
  {
    (*(v17 + 8))(v37, v36);
    v21 = v40;
    v19 = v9;
    v20 = v39;
    __swift_destroy_boxed_opaque_existential_1(v38);

    if (!v32)
    {
    }

    goto LABEL_4;
  }

  sub_24E61DA68(v18, v9 + v40, &qword_27F213FB0, &qword_24F93E6B0);
  v43 = 3;
  sub_24EE0DF70();
  sub_24F92CC18();
  v27 = v9;
  v28 = v39;
  *(v9 + v31) = v41[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
  v43 = 4;
  sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
  sub_24F92CC68();
  sub_24E61DA68(v41, v28, qword_27F24EC90, &unk_24F93C1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
  v43 = 5;
  sub_24E785388(&qword_27F21C1A8, sub_24E7851CC, MEMORY[0x277D21D38]);
  sub_24F92CC68();
  v29 = v7[9];
  (*(v17 + 8))(v37, v36);
  *(v27 + v29) = *&v41[0];
  sub_24EE0DFC4(v27, v33, type metadata accessor for SocialMenuAction);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_24EE0EC3C(v27, type metadata accessor for SocialMenuAction);
}

uint64_t sub_24EE09778()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D496D6574737973;
  v4 = 0x6575676573;
  if (v1 != 4)
  {
    v4 = 1970169197;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x6B726F77747261;
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

uint64_t sub_24EE09820@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EE0E834(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EE09848(uint64_t a1)
{
  v2 = sub_24EE0DF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE09884(uint64_t a1)
{
  v2 = sub_24EE0DF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE09908()
{
  v1 = type metadata accessor for SocialMenuAction(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SocialMenuItem(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24EE0DFC4(v0, v6, type metadata accessor for SocialMenuItem);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_24EE0DC80(v6, v3, type metadata accessor for SocialMenuAction);
    v7 = *v3;

    sub_24EE0EC3C(v3, type metadata accessor for SocialMenuAction);
  }

  else
  {
    v7 = *v6;
  }

  return v7;
}

uint64_t sub_24EE09A58(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AE8, &qword_24F9A3508);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - v3;
  v33 = type metadata accessor for SocialMenuAction(0);
  MEMORY[0x28223BE20](v33);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AF0, &qword_24F9A3510);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AF8, &qword_24F9A3518);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for SocialMenuItem(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B00, &qword_24F9A3520);
  v42 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE0DA7C();
  sub_24F92D128();
  sub_24EE0DFC4(v40, v13, type metadata accessor for SocialMenuItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(v13 + 2);
      LOBYTE(v44) = 1;
      sub_24EE0DB24();
      v19 = v14;
      sub_24F92CC98();
      LOBYTE(v44) = 0;
      v20 = v37;
      v21 = v41;
      sub_24F92CD08();

      if (v21)
      {

        (*(v36 + 8))(v7, v20);
        return (*(v42 + 8))(v16, v19);
      }

      else
      {
        v44 = v18;
        v43 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0, qword_24F9A32A8);
        sub_24EE0DB78();
        sub_24F92CD48();
        (*(v36 + 8))(v7, v20);
        (*(v42 + 8))(v16, v19);
      }
    }

    else
    {
      v27 = v34;
      sub_24EE0DC80(v13, v34, type metadata accessor for SocialMenuAction);
      LOBYTE(v44) = 2;
      sub_24EE0DAD0();
      v28 = v35;
      sub_24F92CC98();
      sub_24EE0D4C4(&qword_27F230B18, type metadata accessor for SocialMenuAction, &unk_24F9A33C8);
      v29 = v39;
      sub_24F92CD48();
      (*(v38 + 8))(v28, v29);
      sub_24EE0EC3C(v27, type metadata accessor for SocialMenuAction);
      return (*(v42 + 8))(v16, v14);
    }
  }

  else
  {
    v23 = *(v13 + 2);
    LOBYTE(v44) = 0;
    sub_24EE0DC2C();
    v24 = v14;
    sub_24F92CC98();
    LOBYTE(v44) = 0;
    v25 = v32;
    v26 = v41;
    sub_24F92CD08();

    if (v26)
    {

      (*(v31 + 8))(v10, v25);
      return (*(v42 + 8))(v16, v24);
    }

    else
    {
      v44 = v23;
      v43 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0, qword_24F9A32A8);
      sub_24EE0DB78();
      sub_24F92CD48();
      (*(v31 + 8))(v10, v25);
      (*(v42 + 8))(v16, v24);
    }
  }
}

uint64_t sub_24EE0A12C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B38, &qword_24F9A3528);
  v4 = *(v3 - 8);
  v73 = v3;
  v74 = v4;
  MEMORY[0x28223BE20](v3);
  v79 = &v66 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B40, &qword_24F9A3530);
  v75 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v78 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B48, &qword_24F9A3538);
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  MEMORY[0x28223BE20](v7);
  v76 = &v66 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B50, &unk_24F9A3540);
  v80 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v11 = &v66 - v10;
  v12 = type metadata accessor for SocialMenuItem(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24EE0DA7C();
  v25 = v82;
  sub_24F92D108();
  if (!v25)
  {
    v82 = v14;
    v67 = v20;
    v68 = v17;
    v69 = v23;
    v26 = v76;
    v27 = v77;
    v29 = v78;
    v28 = v79;
    v30 = v81;
    v31 = sub_24F92CC78();
    v32 = (2 * *(v31 + 16)) | 1;
    v85 = v31;
    v86 = v31 + 32;
    v87 = 0;
    v88 = v32;
    v33 = sub_24E643434();
    if (v33 == 3 || v87 != v88 >> 1)
    {
      v37 = v11;
      v38 = sub_24F92C918();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v40 = v12;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v80 + 8))(v37, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        if (v33 == 1)
        {
          LOBYTE(v89) = 1;
          sub_24EE0DB24();
          sub_24F92CBA8();
          LOBYTE(v89) = 0;
          v34 = v72;
          v35 = sub_24F92CC28();
          v36 = v29;
          v55 = v54;
          v82 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0, qword_24F9A32A8);
          v84 = 1;
          sub_24EE0DCE8();
          sub_24F92CC68();
          (*(v75 + 8))(v36, v34);
          (*(v80 + 8))(v11, v27);
          swift_unknownObjectRelease();
          v58 = v89;
          v59 = v68;
          *v68 = v82;
          v59[1] = v55;
          v59[2] = v58;
          swift_storeEnumTagMultiPayload();
          v60 = v59;
          v61 = v69;
          sub_24EE0DC80(v60, v69, type metadata accessor for SocialMenuItem);
          v62 = v81;
        }

        else
        {
          LOBYTE(v89) = 2;
          sub_24EE0DAD0();
          v42 = v27;
          v43 = v28;
          sub_24F92CBA8();
          v48 = v30;
          v49 = v42;
          v78 = v11;
          type metadata accessor for SocialMenuAction(0);
          sub_24EE0D4C4(&qword_27F225878, type metadata accessor for SocialMenuAction, &unk_24F9A33F0);
          v50 = v82;
          v51 = v73;
          sub_24F92CC68();
          v52 = v43;
          v53 = v80;
          (*(v74 + 8))(v52, v51);
          (*(v53 + 8))(v78, v49);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v61 = v69;
          sub_24EE0DC80(v50, v69, type metadata accessor for SocialMenuItem);
          v62 = v48;
        }
      }

      else
      {
        LOBYTE(v89) = 0;
        sub_24EE0DC2C();
        sub_24F92CBA8();
        v44 = v27;
        LOBYTE(v89) = 0;
        v45 = v70;
        v46 = sub_24F92CC28();
        v47 = v26;
        v57 = v56;
        v82 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0, qword_24F9A32A8);
        v84 = 1;
        sub_24EE0DCE8();
        sub_24F92CC68();
        (*(v71 + 8))(v47, v45);
        (*(v80 + 8))(v11, v44);
        swift_unknownObjectRelease();
        v63 = v89;
        v64 = v67;
        *v67 = v82;
        v64[1] = v57;
        v64[2] = v63;
        swift_storeEnumTagMultiPayload();
        v65 = v64;
        v61 = v69;
        sub_24EE0DC80(v65, v69, type metadata accessor for SocialMenuItem);
        v62 = v30;
      }

      sub_24EE0DC80(v61, v62, type metadata accessor for SocialMenuItem);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_24EE0AA9C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A58, &qword_24F9A3218);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE0B1C8();
  sub_24F92D128();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A68, &qword_24F9A3220);
  sub_24EE0B21C();
  sub_24F92CD48();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24EE0AC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t sub_24EE0AC90(uint64_t a1)
{
  v2 = sub_24EE0DAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE0ACCC(uint64_t a1)
{
  v2 = sub_24EE0DAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE0AD08()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x476C6F72746E6F63;
  }
}

uint64_t sub_24EE0AD64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EE0EA24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EE0AD8C(uint64_t a1)
{
  v2 = sub_24EE0DA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE0ADC8(uint64_t a1)
{
  v2 = sub_24EE0DA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE0AE04(uint64_t a1)
{
  v2 = sub_24EE0DC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE0AE40(uint64_t a1)
{
  v2 = sub_24EE0DC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE0AE7C()
{
  if (*v0)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24EE0AEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24EE0AF84(uint64_t a1)
{
  v2 = sub_24EE0DB24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE0AFC0(uint64_t a1)
{
  v2 = sub_24EE0DB24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE0B058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
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

uint64_t sub_24EE0B0DC(uint64_t a1)
{
  v2 = sub_24EE0B1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE0B118(uint64_t a1)
{
  v2 = sub_24EE0B1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24EE0B154@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24EE0D28C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_24EE0B19C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_24EA34448(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

unint64_t sub_24EE0B1C8()
{
  result = qword_27F230A60;
  if (!qword_27F230A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A60);
  }

  return result;
}

unint64_t sub_24EE0B21C()
{
  result = qword_27F230A70;
  if (!qword_27F230A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A68, &qword_24F9A3220);
    sub_24EE0D4C4(&qword_27F230A78, type metadata accessor for SocialMenuItem, &unk_24F9A3490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A70);
  }

  return result;
}

uint64_t sub_24EE0B2F0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for SocialMenuActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223840, &qword_24F96E838);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - v9;
  v11 = sub_24F9232F8();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v21 = type metadata accessor for SocialMenuAction(0);
  sub_24E60169C(v1 + *(v21 + 32), v28, qword_27F24EC90, &unk_24F93C1D0);
  sub_24EE0DFC4(v1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialMenuActionView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_24EE0DC80(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SocialMenuActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230CF0, &qword_24F9A3C70);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230CF8, &qword_24F9A3C78);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D00, &qword_24F9A3C80);
  v16 = sub_24F9251E8();
  v17 = sub_24EE0F1C8();
  v18 = sub_24EE0D4C4(&qword_27F230D20, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v14;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  sub_24E993DC0(*(v1 + *(v21 + 36)));
  return (*(v8 + 8))(v10, v22);
}

uint64_t sub_24EE0B680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_24F9248C8();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9251E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D00, &qword_24F9A3C80);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230CF8, &qword_24F9A3C78);
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = &v23 - v13;
  v24 = a1;
  v30 = a1;
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D28, &qword_24F9A3C98);
  sub_24EE0F2BC();
  sub_24F926EA8();
  v15 = sub_24F926D18();
  KeyPath = swift_getKeyPath();
  v17 = &v11[*(v9 + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  sub_24F9251D8();
  v18 = sub_24EE0F1C8();
  v19 = sub_24EE0D4C4(&qword_27F230D20, MEMORY[0x277CDE1B0], MEMORY[0x277CDE1A8]);
  sub_24F9260E8();
  (*(v6 + 8))(v8, v5);
  sub_24E601704(v11, &qword_27F230D00, &qword_24F9A3C80);
  v20 = type metadata accessor for SocialMenuAction(0);
  sub_24E60169C(v24 + *(v20 + 32), v31, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v31, qword_27F21B590, &unk_24F93BE30);
  sub_24F9248B8();
  v31[0] = v9;
  v31[1] = v5;
  v31[2] = v18;
  v31[3] = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v25;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v26 + 8))(v4, v28);
  return (*(v12 + 8))(v14, v21);
}

uint64_t sub_24EE0BA90@<X0>(uint64_t a2@<X8>)
{
  sub_24E600AEC();

  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_24EE0BAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D48, &qword_24F9A3CD8);
  MEMORY[0x28223BE20](v25);
  v24 = (&v24 - v3);
  v4 = type metadata accessor for GameIcon(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_24F9289E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SocialMenuAction(0);
  v15 = a1;
  sub_24E60169C(a1 + *(v14 + 24), v9, &qword_27F213FB0, &qword_24F93E6B0);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(v6, v13, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v20 = v4[8];
    *&v6[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
    swift_storeEnumTagMultiPayload();
    v6[v4[5]] = 1;
    v6[v4[6]] = 1;
    v6[v4[7]] = 0;
    sub_24EE0DFC4(v6, v24, type metadata accessor for GameIcon);
    swift_storeEnumTagMultiPayload();
    sub_24EE0D4C4(&qword_27F216790, type metadata accessor for GameIcon, &protocol conformance descriptor for GameIcon);
    v17 = v26;
    sub_24F924E28();
    sub_24EE0EC3C(v6, type metadata accessor for GameIcon);
    (*(v11 + 8))(v13, v10);
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v16 = v24;
  v17 = v26;
  sub_24E601704(v9, &qword_27F213FB0, &qword_24F93E6B0);
  v18 = *(v15 + *(v14 + 28));
  if (v18 != 82)
  {
    if (v18 <= 0x3E && ((1 << v18) & 0x7FFFFDFF3FFFFFEDLL) != 0 || v18 - 65 < 0x11)
    {
      v27 = *(v15 + *(v14 + 28));
      SystemImage.rawValue.getter();
      v21 = sub_24F926DF8();
    }

    else
    {
      v28 = *(v15 + *(v14 + 28));
      SystemImage.rawValue.getter();
      v21 = sub_24F926E48();
    }

    *v16 = v21;
    swift_storeEnumTagMultiPayload();
    sub_24EE0D4C4(&qword_27F216790, type metadata accessor for GameIcon, &protocol conformance descriptor for GameIcon);
    sub_24F924E28();
    goto LABEL_10;
  }

  v19 = 1;
LABEL_11:
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D40, &qword_24F9A3CA0);
  return (*(*(v22 - 8) + 56))(v17, v19, 1, v22);
}

uint64_t sub_24EE0BFD8@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v64 = type metadata accessor for SocialMenuActionView(0);
  MEMORY[0x28223BE20](v64);
  v49 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for SocialMenuAction(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C68, &qword_24F9A3BA0);
  MEMORY[0x28223BE20](v58);
  v51 = &v45 - v5;
  v55 = sub_24F9271F8();
  v50 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C70, &qword_24F9A3BA8);
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C78, &qword_24F9A3BB0);
  MEMORY[0x28223BE20](v61);
  v60 = &v45 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C80, &qword_24F9A3BB8);
  MEMORY[0x28223BE20](v53);
  v52 = &v45 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C88, &qword_24F9A3BC0);
  MEMORY[0x28223BE20](v62);
  v56 = &v45 - v19;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C90, &qword_24F9A3BC8);
  v20 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v22 = &v45 - v21;
  v23 = type metadata accessor for SocialMenuItem(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EE0DFC4(v59, v25, type metadata accessor for SocialMenuItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *(v25 + 2);

      v65 = v27;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0, qword_24F9A32A8);
      sub_24E602068(&qword_27F230CB8, &qword_27F230AC0, qword_24F9A32A8, MEMORY[0x277D83980]);
      v59 = sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView, &unk_24F9A3C20);
      v48 = v16;
      sub_24F927228();
      v28 = v10;
      v47 = v10;
      sub_24F9271E8();
      v46 = v11;
      v29 = *(v11 + 16);
      v30 = v57;
      v29(v13, v16, v57);
      v31 = v50;
      v32 = *(v50 + 16);
      v33 = v28;
      v34 = v55;
      v32(v7, v33, v55);
      v35 = v51;
      v29(v51, v13, v30);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230CC0, &unk_24F9A3BF0);
      v32((v35 + *(v36 + 48)), v7, v34);
      v37 = *(v31 + 8);
      v37(v7, v34);
      v38 = *(v46 + 8);
      v38(v13, v30);
      sub_24E60169C(v35, v52, &qword_27F230C68, &qword_24F9A3BA0);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F230CA0, &qword_27F230C90, &qword_24F9A3BC8, MEMORY[0x277CDD7C0]);
      sub_24E602068(&qword_27F230CA8, &qword_27F230C68, &qword_24F9A3BA0, MEMORY[0x277CE14C0]);
      v39 = v56;
      sub_24F924E28();
      sub_24E60169C(v39, v60, &qword_27F230C88, &qword_24F9A3BC0);
      swift_storeEnumTagMultiPayload();
      sub_24EE0EB58();
      sub_24F924E28();
      sub_24E601704(v39, &qword_27F230C88, &qword_24F9A3BC0);
      sub_24E601704(v35, &qword_27F230C68, &qword_24F9A3BA0);
      v37(v47, v55);
      return (v38)(v48, v30);
    }

    else
    {
      sub_24EE0DC80(v25, v4, type metadata accessor for SocialMenuAction);
      v44 = v49;
      sub_24EE0DFC4(v4, v49, type metadata accessor for SocialMenuAction);
      sub_24EE0DFC4(v44, v60, type metadata accessor for SocialMenuActionView);
      swift_storeEnumTagMultiPayload();
      sub_24EE0EB58();
      sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView, &unk_24F9A3C20);
      sub_24F924E28();
      sub_24EE0EC3C(v44, type metadata accessor for SocialMenuActionView);
      return sub_24EE0EC3C(v4, type metadata accessor for SocialMenuAction);
    }
  }

  else
  {

    MEMORY[0x28223BE20](v41);
    sub_24EE0ECA4();
    sub_24F923718();

    v42 = v54;
    (*(v20 + 16))(v52, v22, v54);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F230CA0, &qword_27F230C90, &qword_24F9A3BC8, MEMORY[0x277CDD7C0]);
    sub_24E602068(&qword_27F230CA8, &qword_27F230C68, &qword_24F9A3BA0, MEMORY[0x277CE14C0]);
    v43 = v56;
    sub_24F924E28();
    sub_24E60169C(v43, v60, &qword_27F230C88, &qword_24F9A3BC0);
    swift_storeEnumTagMultiPayload();
    sub_24EE0EB58();
    sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView, &unk_24F9A3C20);
    sub_24F924E28();
    sub_24E601704(v43, &qword_27F230C88, &qword_24F9A3BC0);
    return (*(v20 + 8))(v22, v42);
  }
}

uint64_t sub_24EE0CA70(uint64_t a1)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0, qword_24F9A32A8);
  type metadata accessor for SocialMenuActionView(0);
  sub_24E602068(&qword_27F230CB8, &qword_27F230AC0, qword_24F9A32A8, MEMORY[0x277D83980]);
  sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView, &unk_24F9A3C20);
  return sub_24F927228();
}

uint64_t sub_24EE0CBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_24F9241F8();
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F923DF8();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B60, &qword_24F9A3550);
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B68, &qword_24F9A3558);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B70, &qword_24F9A3560);
  v19 = *(v18 - 8);
  v35 = v18;
  v36 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - v20;
  v42 = a2;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B78, &qword_24F9A3568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B80, &qword_24F9A3570);
  sub_24E602068(&qword_27F230B88, &qword_27F230B78, &qword_24F9A3568, MEMORY[0x277CE04B0]);
  sub_24EE0DE1C();
  sub_24F925AB8();
  sub_24F923DE8();
  v22 = sub_24E602068(&qword_27F230BA0, &qword_27F230B60, &qword_24F9A3550, MEMORY[0x277CDE5B0]);
  v23 = sub_24EE0D4C4(&qword_27F230BA8, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  sub_24F926BB8();
  (*(v32 + 8))(v10, v8);
  (*(v31 + 8))(v13, v11);
  v24 = v37;
  sub_24F9241E8();
  v43 = v11;
  v44 = v8;
  v45 = v22;
  v46 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_24EE0D4C4(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v27 = v33;
  v28 = v38;
  sub_24F926178();
  (*(v39 + 8))(v24, v28);
  (*(v34 + 8))(v17, v27);
  v43 = v27;
  v44 = v28;
  v45 = OpaqueTypeConformance2;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_24F926888();
  return (*(v36 + 8))(v21, v29);
}

uint64_t sub_24EE0D130(uint64_t a1)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A68, &qword_24F9A3220);
  type metadata accessor for SocialMenuItemView(0);
  sub_24E602068(&qword_27F230BB0, &qword_27F230A68, &qword_24F9A3220, MEMORY[0x277D83980]);
  sub_24EE0D4C4(&qword_27F230B98, type metadata accessor for SocialMenuItemView, &unk_24F9A3A0C);
  return sub_24F927228();
}

void *sub_24EE0D28C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A80, &qword_24F9A3228);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE0B1C8();
  sub_24F92D108();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A68, &qword_24F9A3220);
    sub_24EE0D410();
    sub_24F92CC68();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_24EE0D410()
{
  result = qword_27F230A88;
  if (!qword_27F230A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A68, &qword_24F9A3220);
    sub_24EE0D4C4(&qword_27F225880, type metadata accessor for SocialMenuItem, &unk_24F9A3468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A88);
  }

  return result;
}

uint64_t sub_24EE0D4C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE0D520(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EE0D5F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EE0D6C0(uint64_t a1)
{
  sub_24E6A7820(319);
  if (v1 <= 0x3F)
  {
    sub_24EE0D7B4();
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F21C120, &qword_27F213840, &unk_24F93B3C0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EE0D7B4()
{
  if (!qword_27F230AA0)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F230AA0);
    }
  }
}

void sub_24EE0D824(uint64_t a1)
{
  sub_24EE0D898(319);
  if (v1 <= 0x3F)
  {
    sub_24EE0D910();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24EE0D898(uint64_t a1)
{
  if (!qword_27F230AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230AC0, qword_24F9A32A8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F230AB8);
    }
  }
}

void sub_24EE0D910()
{
  if (!qword_27F230AC8)
  {
    v0 = type metadata accessor for SocialMenuAction(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F230AC8);
    }
  }
}

unint64_t sub_24EE0D95C()
{
  result = qword_27F230AD0;
  if (!qword_27F230AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230AD0);
  }

  return result;
}

unint64_t sub_24EE0D9D0()
{
  result = qword_27F230AD8;
  if (!qword_27F230AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230AD8);
  }

  return result;
}

unint64_t sub_24EE0DA28()
{
  result = qword_27F230AE0;
  if (!qword_27F230AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230AE0);
  }

  return result;
}

unint64_t sub_24EE0DA7C()
{
  result = qword_27F230B08;
  if (!qword_27F230B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B08);
  }

  return result;
}

unint64_t sub_24EE0DAD0()
{
  result = qword_27F230B10;
  if (!qword_27F230B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B10);
  }

  return result;
}

unint64_t sub_24EE0DB24()
{
  result = qword_27F230B20;
  if (!qword_27F230B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B20);
  }

  return result;
}

unint64_t sub_24EE0DB78()
{
  result = qword_27F230B28;
  if (!qword_27F230B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230AC0, qword_24F9A32A8);
    sub_24EE0D4C4(&qword_27F230B18, type metadata accessor for SocialMenuAction, &unk_24F9A33C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B28);
  }

  return result;
}

unint64_t sub_24EE0DC2C()
{
  result = qword_27F230B30;
  if (!qword_27F230B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B30);
  }

  return result;
}

uint64_t sub_24EE0DC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EE0DCE8()
{
  result = qword_27F230B58;
  if (!qword_27F230B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230AC0, qword_24F9A32A8);
    sub_24EE0D4C4(&qword_27F225878, type metadata accessor for SocialMenuAction, &unk_24F9A33F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B58);
  }

  return result;
}

uint64_t sub_24EE0DDA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B78, &qword_24F9A3568);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_24EE0DE1C()
{
  result = qword_27F230B90;
  if (!qword_27F230B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230B80, &qword_24F9A3570);
    sub_24EE0D4C4(&qword_27F230B98, type metadata accessor for SocialMenuItemView, &unk_24F9A3A0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B90);
  }

  return result;
}

uint64_t sub_24EE0DEF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EE09908();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_24EE0DF1C()
{
  result = qword_27F230BC0;
  if (!qword_27F230BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230BC0);
  }

  return result;
}

unint64_t sub_24EE0DF70()
{
  result = qword_27F230BC8;
  if (!qword_27F230BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230BC8);
  }

  return result;
}

uint64_t sub_24EE0DFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EE0E02C()
{
  result = qword_27F230BD8;
  if (!qword_27F230BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230BD8);
  }

  return result;
}

uint64_t sub_24EE0E140()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230B70, &qword_24F9A3560);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230B68, &qword_24F9A3558);
  sub_24F9241F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230B60, &qword_24F9A3550);
  sub_24F923DF8();
  sub_24E602068(&qword_27F230BA0, &qword_27F230B60, &qword_24F9A3550, MEMORY[0x277CDE5B0]);
  sub_24EE0D4C4(&qword_27F230BA8, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  swift_getOpaqueTypeConformance2();
  sub_24EE0D4C4(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EE0E2F4()
{
  result = qword_27F230BF0;
  if (!qword_27F230BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230BF0);
  }

  return result;
}

unint64_t sub_24EE0E34C()
{
  result = qword_27F230BF8;
  if (!qword_27F230BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230BF8);
  }

  return result;
}

unint64_t sub_24EE0E3A4()
{
  result = qword_27F230C00;
  if (!qword_27F230C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C00);
  }

  return result;
}

unint64_t sub_24EE0E3FC()
{
  result = qword_27F230C08;
  if (!qword_27F230C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C08);
  }

  return result;
}

unint64_t sub_24EE0E454()
{
  result = qword_27F230C10;
  if (!qword_27F230C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C10);
  }

  return result;
}

unint64_t sub_24EE0E4AC()
{
  result = qword_27F230C18;
  if (!qword_27F230C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C18);
  }

  return result;
}

unint64_t sub_24EE0E504()
{
  result = qword_27F230C20;
  if (!qword_27F230C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C20);
  }

  return result;
}

unint64_t sub_24EE0E578()
{
  result = qword_27F230C28;
  if (!qword_27F230C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C28);
  }

  return result;
}

unint64_t sub_24EE0E5D0()
{
  result = qword_27F230C30;
  if (!qword_27F230C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C30);
  }

  return result;
}

unint64_t sub_24EE0E628()
{
  result = qword_27F230C38;
  if (!qword_27F230C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C38);
  }

  return result;
}

unint64_t sub_24EE0E680()
{
  result = qword_27F230C40;
  if (!qword_27F230C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C40);
  }

  return result;
}

unint64_t sub_24EE0E6D8()
{
  result = qword_27F230C48;
  if (!qword_27F230C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C48);
  }

  return result;
}

unint64_t sub_24EE0E730()
{
  result = qword_27F230C50;
  if (!qword_27F230C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C50);
  }

  return result;
}

unint64_t sub_24EE0E788()
{
  result = qword_27F230C58;
  if (!qword_27F230C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C58);
  }

  return result;
}

unint64_t sub_24EE0E7E0()
{
  result = qword_27F230C60;
  if (!qword_27F230C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C60);
  }

  return result;
}

uint64_t sub_24EE0E834(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEB00000000656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000)
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

uint64_t sub_24EE0EA24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x476C6F72746E6F63 && a2 == 0xEC00000070756F72;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24EE0EB58()
{
  result = qword_27F230C98;
  if (!qword_27F230C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230C88, &qword_24F9A3BC0);
    sub_24E602068(&qword_27F230CA0, &qword_27F230C90, &qword_24F9A3BC8, MEMORY[0x277CDD7C0]);
    sub_24E602068(&qword_27F230CA8, &qword_27F230C68, &qword_24F9A3BA0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C98);
  }

  return result;
}

uint64_t sub_24EE0EC3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE0ECA4()
{
  result = qword_27F230CC8;
  if (!qword_27F230CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230C70, &qword_24F9A3BA8);
    sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView, &unk_24F9A3C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230CC8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_51Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_52Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_24EE0EEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EE0EF20()
{
  result = qword_27F230CE0;
  if (!qword_27F230CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230CE8, &qword_24F9A3C18);
    sub_24EE0EB58();
    sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView, &unk_24F9A3C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230CE0);
  }

  return result;
}

uint64_t sub_24EE0EFF8()
{
  v1 = *(type metadata accessor for SocialMenuActionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for SocialMenuAction(0);
  v4 = *(v3 + 24);
  v5 = sub_24F9289E8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = (v2 + *(v3 + 32));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24EE0F158@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SocialMenuActionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EE0B680(v4, a1);
}

unint64_t sub_24EE0F1C8()
{
  result = qword_27F230D08;
  if (!qword_27F230D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D00, &qword_24F9A3C80);
    sub_24E602068(&qword_27F230D10, &qword_27F230D18, &unk_24F9A3C88, MEMORY[0x277CDEFF0]);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20, qword_24F94A180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230D08);
  }

  return result;
}

unint64_t sub_24EE0F2BC()
{
  result = qword_27F230D30;
  if (!qword_27F230D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D28, &qword_24F9A3C98);
    sub_24EE0F340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230D30);
  }

  return result;
}

unint64_t sub_24EE0F340()
{
  result = qword_27F230D38;
  if (!qword_27F230D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D40, &qword_24F9A3CA0);
    sub_24EE0D4C4(&qword_27F216790, type metadata accessor for GameIcon, &protocol conformance descriptor for GameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230D38);
  }

  return result;
}

unint64_t sub_24EE0F410()
{
  result = qword_27F230D50;
  if (!qword_27F230D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D58, &qword_24F9A3D18);
    sub_24E99D1EC();
    sub_24E99D2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230D50);
  }

  return result;
}

double ItemSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ItemSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 16))(&v14, a1, a2, a4, a6, a7, a8);
  if (v15)
  {
    sub_24E612C80(&v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = (*(v11 + 24))(a3, a5, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_24EE0F5B8(&v14);
    return 0;
  }

  return v12;
}

uint64_t sub_24EE0F5B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D60, &unk_24F9A3D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TitledButton.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TitledButton.__allocating_init(id:title:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_24E65E064(a1, &v19);
  if (*(&v20 + 1))
  {
    sub_24E9BBAA8(a1);
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
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v19);
  }

  v16 = v23;
  *(v12 + 40) = v22;
  *(v12 + 56) = v16;
  *(v12 + 72) = v24;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  return v12;
}

uint64_t TitledButton.init(id:title:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v20);
  if (*(&v21 + 1))
  {
    sub_24E9BBAA8(a1);
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v19[1] = v14;
    v19[2] = v16;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v20);
  }

  v17 = v24;
  *(v5 + 40) = v23;
  *(v5 + 56) = v17;
  *(v5 + 72) = v25;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  return v5;
}

uint64_t TitledButton.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TitledButton.init(deserializing:using:)(a1, a2);
  return v4;
}

void *TitledButton.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v47 = a2;
  v44 = *v2;
  v45 = v3;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24F928388();
  v10 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  sub_24F928398();
  v18 = sub_24F928348();
  if (v19)
  {
    v48 = v18;
    v49 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v7;
    v22 = a1;
    v24 = v23;
    (*(v21 + 8))(v9, v6);
    v48 = v20;
    v49 = v24;
    a1 = v22;
  }

  sub_24F92C7F8();
  v25 = *(v10 + 8);
  v25(v17, v53);
  v26 = v51;
  *(v4 + 5) = v50;
  *(v4 + 7) = v26;
  v4[9] = v52;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v25(v14, v53);
  v30 = a1;
  if (v29)
  {
    v31 = v53;
    v4[2] = v27;
    v4[3] = v29;
    type metadata accessor for Action(0);
    v32 = v46;
    sub_24F928398();
    v33 = v47;
    v34 = v45;
    v35 = static Action.makeInstance(byDeserializing:using:)(v32, v47);
    if (!v34)
    {
      v40 = v35;
      v41 = sub_24F9285B8();
      (*(*(v41 - 8) + 8))(v33, v41);
      v25(v30, v31);
      v25(v32, v31);
      v4[4] = v40;
      return v4;
    }

    v36 = sub_24F9285B8();
    (*(*(v36 - 8) + 8))(v33, v36);
    v25(a1, v31);
    v25(v32, v31);
  }

  else
  {
    v37 = sub_24F92AC38();
    sub_24EE0FFB4(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v38 = 0x656C746974;
    v38[1] = 0xE500000000000000;
    v38[2] = v44;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v47, v39);
    v25(v30, v53);
  }

  sub_24E6585F8((v4 + 5));
  type metadata accessor for TitledButton();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t TitledButton.deinit()
{

  sub_24E6585F8(v0 + 40);
  return v0;
}

uint64_t TitledButton.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE0FFB4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_24EE1000C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TitledButton();
  v7 = swift_allocObject();
  result = TitledButton.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EE100D8(_OWORD *a1)
{
  v2 = sub_24F922028();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  if (qword_27F210110 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v42[3] = &type metadata for AppStoreAMSEngagementRequest;
  v7 = swift_allocObject();
  v42[0] = v7;
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  *(v7 + 41) = *(a1 + 25);
  sub_24EE17D1C(a1, &v40);
  sub_24F928438();
  sub_24E601704(v42, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225778, &qword_24F9763A8);
  v39 = sub_24F92A9E8();
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v9 = sub_24F929768();
  sub_24F921FE8();

  v10 = a1;
  v11 = a1[1];
  v40 = *a1;
  *v41 = v11;
  *&v41[9] = *(a1 + 25);
  sub_24E9BD0D0();
  v12 = swift_allocObject();
  v13 = v36;
  *(v12 + 16) = v36;
  *&v41[8] = sub_24F929638();
  *&v41[16] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v40);
  v14 = v13;
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D90, &unk_24F9A3EE0);
  sub_24EE17E8C();
  v36 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v16 = v37;
  v15 = v38;
  v34 = *(v38 + 16);
  v34(v37, v6, v2);
  v17 = *(v15 + 80);
  v32 = v2;
  v33 = (v17 + 57) & ~v17;
  v18 = v6;
  v35 = v6;
  v19 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10[1];
  v20[1] = *v10;
  v20[2] = v21;
  *(v20 + 41) = *(v10 + 25);
  v22 = *(v15 + 32);
  v23 = v32;
  v22(v20 + ((v17 + 57) & ~v17), v16, v32);
  *(v20 + v19) = v39;
  v24 = v18;
  v25 = v23;
  v34(v16, v24, v23);
  v26 = swift_allocObject();
  v27 = v10[1];
  v26[1] = *v10;
  v26[2] = v27;
  *(v26 + 41) = *(v10 + 25);
  v22(v26 + v33, v16, v25);
  v28 = v39;
  *(v26 + v19) = v39;
  v29 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24EE17D1C(v10, &v40);

  sub_24EE17D1C(v10, &v40);

  v30 = sub_24F92BEF8();
  *&v41[8] = v29;
  *&v41[16] = MEMORY[0x277D225C0];
  *&v40 = v30;
  sub_24F92A958();

  (*(v38 + 8))(v35, v25);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  return v28;
}

uint64_t sub_24EE1069C(_OWORD *a1)
{
  v2 = sub_24F922028();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  if (qword_27F210780 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v42[3] = &type metadata for AppStoreAMSEngagementRequest;
  v7 = swift_allocObject();
  v42[0] = v7;
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  *(v7 + 41) = *(a1 + 25);
  sub_24EE17D1C(a1, &v40);
  sub_24F928438();
  sub_24E601704(v42, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225778, &qword_24F9763A8);
  v39 = sub_24F92A9E8();
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v9 = sub_24F929768();
  sub_24F921FE8();

  v10 = a1;
  v11 = a1[1];
  v40 = *a1;
  *v41 = v11;
  *&v41[9] = *(a1 + 25);
  sub_24E9BD0D0();
  v12 = swift_allocObject();
  v13 = v36;
  *(v12 + 16) = v36;
  *&v41[8] = sub_24F929638();
  *&v41[16] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v40);
  v14 = v13;
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D90, &unk_24F9A3EE0);
  sub_24EE17E8C();
  v36 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v16 = v37;
  v15 = v38;
  v34 = *(v38 + 16);
  v34(v37, v6, v2);
  v17 = *(v15 + 80);
  v32 = v2;
  v33 = (v17 + 57) & ~v17;
  v18 = v6;
  v35 = v6;
  v19 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10[1];
  v20[1] = *v10;
  v20[2] = v21;
  *(v20 + 41) = *(v10 + 25);
  v22 = *(v15 + 32);
  v23 = v32;
  v22(v20 + ((v17 + 57) & ~v17), v16, v32);
  *(v20 + v19) = v39;
  v24 = v18;
  v25 = v23;
  v34(v16, v24, v23);
  v26 = swift_allocObject();
  v27 = v10[1];
  v26[1] = *v10;
  v26[2] = v27;
  *(v26 + 41) = *(v10 + 25);
  v22(v26 + v33, v16, v25);
  v28 = v39;
  *(v26 + v19) = v39;
  v29 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24EE17D1C(v10, &v40);

  sub_24EE17D1C(v10, &v40);

  v30 = sub_24F92BEF8();
  *&v41[8] = v29;
  *&v41[16] = MEMORY[0x277D225C0];
  *&v40 = v30;
  sub_24F92A958();

  (*(v38 + 8))(v35, v25);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  return v28;
}

void sub_24EE10C60(void *a1, _OWORD *a2)
{
  sub_24F92C048();
  sub_24F929778();
  v4 = sub_24F929768();
  sub_24F921FE8();

  v5 = [a1 data];
  if (v5 && (v6 = v5, v7 = sub_24F92AE38(), v6, sub_24E9E1CDC(v7), v9 = v8, , v9))
  {
    if (qword_27F210110 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v23 = &type metadata for AppStoreAMSEngagementRequest;
    v10 = swift_allocObject();
    v22[0] = v10;
    v11 = a2[1];
    v10[1] = *a2;
    v10[2] = v11;
    *(v10 + 41) = *(a2 + 25);
    sub_24EE17D1C(a2, v19);
    sub_24F928438();
    sub_24E601704(v22, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v19[0] = v9;

    sub_24F928438();
    sub_24E601704(v19, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    v19[0] = v9;
    sub_24F92A9C8();
  }

  else
  {
    if (qword_27F210110 != -1)
    {
      swift_once();
    }

    sub_24E615E00(qword_27F39B678, v22);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v21[3] = &type metadata for AppStoreAMSEngagementRequest;
    v12 = swift_allocObject();
    v21[0] = v12;
    v13 = a2[1];
    v12[1] = *a2;
    v12[2] = v13;
    *(v12 + 41) = *(a2 + 25);
    sub_24EE17D1C(a2, v19);
    sub_24F928438();
    sub_24E601704(v21, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v14 = [a1 data];
    if (v14)
    {
      v15 = v14;
      v16 = sub_24F92AE38();

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8, &unk_24F9B8130);
    }

    else
    {
      v16 = 0;
      v19[1] = 0;
      v19[2] = 0;
    }

    v19[0] = v16;
    v20 = v14;
    sub_24F928438();
    sub_24E601704(v19, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_24EE17F24();
    v17 = swift_allocError();
    *v18 = 1;
    sub_24F92A9A8();
  }
}

void sub_24EE11238(void *a1, _OWORD *a2)
{
  sub_24F92C048();
  sub_24F929778();
  v4 = sub_24F929768();
  sub_24F921FE8();

  v5 = [a1 data];
  if (v5 && (v6 = v5, v7 = sub_24F92AE38(), v6, sub_24E9E1CDC(v7), v9 = v8, , v9))
  {
    if (qword_27F210780 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v23 = &type metadata for AppStoreAMSEngagementRequest;
    v10 = swift_allocObject();
    v22[0] = v10;
    v11 = a2[1];
    v10[1] = *a2;
    v10[2] = v11;
    *(v10 + 41) = *(a2 + 25);
    sub_24EE17D1C(a2, v19);
    sub_24F928438();
    sub_24E601704(v22, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v19[0] = v9;

    sub_24F928438();
    sub_24E601704(v19, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    v19[0] = v9;
    sub_24F92A9C8();
  }

  else
  {
    if (qword_27F210780 != -1)
    {
      swift_once();
    }

    sub_24E615E00(qword_27F39C9A8, v22);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v21[3] = &type metadata for AppStoreAMSEngagementRequest;
    v12 = swift_allocObject();
    v21[0] = v12;
    v13 = a2[1];
    v12[1] = *a2;
    v12[2] = v13;
    *(v12 + 41) = *(a2 + 25);
    sub_24EE17D1C(a2, v19);
    sub_24F928438();
    sub_24E601704(v21, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v14 = [a1 data];
    if (v14)
    {
      v15 = v14;
      v16 = sub_24F92AE38();

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8, &unk_24F9B8130);
    }

    else
    {
      v16 = 0;
      v19[1] = 0;
      v19[2] = 0;
    }

    v19[0] = v16;
    v20 = v14;
    sub_24F928438();
    sub_24E601704(v19, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_24EE17F24();
    v17 = swift_allocError();
    *v18 = 1;
    sub_24F92A9A8();
  }
}

void sub_24EE11810(void *a1, _OWORD *a2)
{
  sub_24F92C048();
  sub_24F929778();
  v4 = sub_24F929768();
  sub_24F921FE8();

  if (qword_27F210110 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v13[3] = &type metadata for AppStoreAMSEngagementRequest;
  v5 = swift_allocObject();
  v13[0] = v5;
  v6 = a2[1];
  v5[1] = *a2;
  v5[2] = v6;
  *(v5 + 41) = *(a2 + 25);
  sub_24EE17D1C(a2, v12);
  sub_24F928438();
  sub_24E601704(v13, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  swift_getErrorValue();
  v12[3] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(v12, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  sub_24EE17F24();
  v8 = swift_allocError();
  *v9 = a1;
  v10 = a1;
  sub_24F92A9A8();
}

void sub_24EE11B64(void *a1, _OWORD *a2)
{
  sub_24F92C048();
  sub_24F929778();
  v4 = sub_24F929768();
  sub_24F921FE8();

  if (qword_27F210780 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v13[3] = &type metadata for AppStoreAMSEngagementRequest;
  v5 = swift_allocObject();
  v13[0] = v5;
  v6 = a2[1];
  v5[1] = *a2;
  v5[2] = v6;
  *(v5 + 41) = *(a2 + 25);
  sub_24EE17D1C(a2, v12);
  sub_24F928438();
  sub_24E601704(v13, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  swift_getErrorValue();
  v12[3] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(v12, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  sub_24EE17F24();
  v8 = swift_allocError();
  *v9 = a1;
  v10 = a1;
  sub_24F92A9A8();
}

id AppStoreOnDeviceRecommendationsManager.__allocating_init(accountStore:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v5[v6] = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = a1;
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_24EE11F58()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  qword_27F39C9C0 = sub_24F92AAE8();
  unk_27F39C9C8 = MEMORY[0x277D22508];
  __swift_allocate_boxed_opaque_existential_1(qword_27F39C9A8);
  return sub_24F92AAD8();
}

id AppStoreOnDeviceRecommendationsManager.init(accountStore:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
  *&v2[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v2[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = a1;
  *&v2[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_24EE12158(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_24F922028();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = *a1;
  if (v15 <= 3)
  {
    if (*a1 > 1u)
    {
      v61 = v3;
      v62 = v4;
    }

    else
    {
      if (!*a1)
      {
LABEL_13:
      }

      v61 = v3;
      v62 = v4;
    }
  }

  else
  {
    v61 = v3;
    v62 = v4;
  }

  v16 = 0x7265666E69;
  v17 = sub_24F92CE08();

  if (v17)
  {
    return result;
  }

  if (v15 == 1)
  {
    goto LABEL_13;
  }

  v19 = sub_24F92CE08();

  if (v19)
  {
    return result;
  }

  if (v15 >= 8)
  {
    goto LABEL_13;
  }

  v20 = sub_24F92CE08();

  if (v20)
  {
    return result;
  }

  v60 = v1;
  if (qword_27F210AD0 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v12 + 8))(v14, v11);
  if (v70 != 1)
  {
    if (qword_27F210780 == -1)
    {
LABEL_24:
      __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v21 = sub_24F92AB18();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_24E601704(v10, &qword_27F2330E0, &unk_24F9694C0);
    if (qword_27F210780 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v23 = sub_24F92AB08();
  (*(v22 + 8))(v10, v21);
  if ([v23 ams:*MEMORY[0x277CEE148] accountFlagValueForAccountFlag:?])
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v24 = v62;
  v70 = v66;
  v71 = v67;
  if (!*(&v67 + 1))
  {
    sub_24E601704(&v70, &qword_27F2129B0, &unk_24F945320);
LABEL_36:
    if (qword_27F210780 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    goto LABEL_39;
  }

  if ((swift_dynamicCast() & 1) == 0 || v69 != 1)
  {
    goto LABEL_36;
  }

  v25 = [v23 ams_DSID];
  if (!v25)
  {
    if (qword_27F210780 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        if (v15 == 6)
        {
          v35 = 0xE700000000000000;
          v16 = 0x73657461647075;
        }

        else
        {
          v35 = 0xE600000000000000;
          v16 = 0x656461637261;
        }
      }

      else if (v15 == 4)
      {
        v35 = 0xE500000000000000;
        v16 = 0x73656D6167;
      }

      else
      {
        v35 = 0xE600000000000000;
        v16 = 0x686372616573;
      }
    }

    else if (v15 > 1)
    {
      if (v15 == 2)
      {
        v35 = 0xE500000000000000;
        v16 = 0x7961646F74;
      }

      else
      {
        v35 = 0xE400000000000000;
        v16 = 1936748641;
      }
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    *(&v71 + 1) = MEMORY[0x277D837D0];
    *&v70 = v16;
    *(&v70 + 1) = v35;
    sub_24F928438();
    sub_24E601704(&v70, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
LABEL_39:
    sub_24F92A588();
  }

  v26 = v25;
  v27 = [v25 stringValue];

  v28 = sub_24F92B0D8();
  v30 = v29;

  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v31 = sub_24F929768();
  sub_24F921FE8();

  v58 = v23;
  if (v15 > 3)
  {
    v32 = v61;
    v33 = v30;
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        v34 = 0xE700000000000000;
        v16 = 0x73657461647075;
      }

      else
      {
        v34 = 0xE600000000000000;
        v16 = 0x656461637261;
      }
    }

    else if (v15 == 4)
    {
      v34 = 0xE500000000000000;
      v16 = 0x73656D6167;
    }

    else
    {
      v34 = 0xE600000000000000;
      v16 = 0x686372616573;
    }
  }

  else
  {
    v32 = v61;
    v33 = v30;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v34 = 0xE500000000000000;
        v16 = 0x7961646F74;
      }

      else
      {
        v34 = 0xE400000000000000;
        v16 = 1936748641;
      }
    }

    else
    {
      v34 = 0xE500000000000000;
    }
  }

  *&v70 = v16;
  *(&v70 + 1) = v34;
  *&v71 = v28;
  *(&v71 + 1) = v33;
  v72 = 0;
  v73 = 0;
  v56 = v33;

  v57 = sub_24EE1069C(&v70);

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = *(v24 + 16);
  v36 = v63;
  v54(v63, v65, v32);
  v37 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v59 = v37 + v5;
  v52 = v28;
  v53 = (v37 + v5) & 0xFFFFFFFFFFFFFFF8;
  v60 = v53 + 8;
  v62 = v24;
  v38 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v51 = *(v24 + 32);
  v51(v40 + v37, v36);
  v41 = v60;
  *(v40 + v59) = v15;
  *(v40 + v41) = v55;
  v42 = (v40 + v38);
  v43 = v56;
  *v42 = v52;
  v42[1] = v43;
  v45 = ObjectType;
  v44 = v65;
  *(v40 + v39) = ObjectType;
  v54(v36, v44, v32);
  v46 = swift_allocObject();
  (v51)(v46 + v37, v36, v32);
  v47 = v60;
  *(v46 + v59) = v15;
  *(v46 + v47) = v45;
  v48 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v49 = sub_24F92BEF8();
  *(&v67 + 1) = v48;
  v68 = MEMORY[0x277D225C0];
  *&v66 = v49;
  sub_24F92A958();

  (*(v62 + 8))(v65, v32);
  return __swift_destroy_boxed_opaque_existential_1(&v66);
}

void sub_24EE131B4(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  sub_24F92C048();
  sub_24F929778();
  v8 = sub_24F929768();
  sub_24F921FE8();

  if (*(v7 + 16))
  {
    v9 = sub_24E76D644(0x7365736143657375, 0xE800000000000000);
    if (v10)
    {
      sub_24E643A9C(*(v7 + 56) + 32 * v9, &v24);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      if (swift_dynamicCast())
      {
        v12 = v23[0];
        if (qword_27F210780 != -1)
        {
          swift_once();
        }

        __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93FC20;
        sub_24F9283A8();
        if (a3 <= 3u)
        {
          if (a3 > 1u)
          {
            if (a3 == 2)
            {
              v13 = 0xE500000000000000;
              v14 = 0x7961646F74;
            }

            else
            {
              v13 = 0xE400000000000000;
              v14 = 1936748641;
            }
          }

          else if (a3)
          {
            v13 = 0xE800000000000000;
            v14 = 0x64657463656C6573;
          }

          else
          {
            v13 = 0xE500000000000000;
            v14 = 0x7265666E69;
          }
        }

        else if (a3 <= 5u)
        {
          if (a3 == 4)
          {
            v13 = 0xE500000000000000;
            v14 = 0x73656D6167;
          }

          else
          {
            v13 = 0xE600000000000000;
            v14 = 0x686372616573;
          }
        }

        else if (a3 == 6)
        {
          v13 = 0xE700000000000000;
          v14 = 0x73657461647075;
        }

        else if (a3 == 7)
        {
          v13 = 0xE600000000000000;
          v14 = 0x656461637261;
        }

        else
        {
          v13 = 0xE700000000000000;
          v14 = 0x676E6964616F6CLL;
        }

        v26 = MEMORY[0x277D837D0];
        *&v24 = v14;
        *(&v24 + 1) = v13;
        sub_24F928438();
        sub_24E601704(&v24, &qword_27F2129B0, &unk_24F945320);
        sub_24F9283A8();
        v26 = v11;
        *&v24 = v12;

        sub_24F928438();
        sub_24E601704(&v24, &qword_27F2129B0, &unk_24F945320);
        sub_24F92A588();

        v15 = *(v12 + 16);
        if (v15)
        {
          swift_beginAccess();
          v16 = (v12 + 40);
          do
          {
            v18 = *(v16 - 1);
            v19 = *v16;
            __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
            *(swift_allocObject() + 16) = xmmword_24F93A400;

            sub_24F9283A8();
            v23[3] = MEMORY[0x277D837D0];
            v23[0] = v18;
            v23[1] = v19;

            sub_24F928438();
            sub_24E601704(v23, &qword_27F2129B0, &unk_24F945320);
            sub_24F92A588();

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v17 = Strong;
              *&v24 = v18;
              *(&v24 + 1) = v19;
              v25 = a5;
              v26 = a6;
              v27 = 0;
              v28 = 32;

              sub_24EE1069C(&v24);
            }

            else
            {
            }

            v16 += 2;
            --v15;
          }

          while (v15);
        }
      }
    }
  }
}

uint64_t sub_24EE13700(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_24F92C048();
  sub_24F929778();
  v4 = sub_24F929768();
  sub_24F921FE8();

  if (qword_27F210780 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        v5 = 0xE500000000000000;
        v6 = 0x7961646F74;
      }

      else
      {
        v5 = 0xE400000000000000;
        v6 = 1936748641;
      }
    }

    else if (a3)
    {
      v5 = 0xE800000000000000;
      v6 = 0x64657463656C6573;
    }

    else
    {
      v5 = 0xE500000000000000;
      v6 = 0x7265666E69;
    }
  }

  else if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      v5 = 0xE500000000000000;
      v6 = 0x73656D6167;
    }

    else
    {
      v5 = 0xE600000000000000;
      v6 = 0x686372616573;
    }
  }

  else if (a3 == 6)
  {
    v5 = 0xE700000000000000;
    v6 = 0x73657461647075;
  }

  else if (a3 == 7)
  {
    v5 = 0xE600000000000000;
    v6 = 0x656461637261;
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x676E6964616F6CLL;
  }

  v11 = MEMORY[0x277D837D0];
  v10[0] = v6;
  v10[1] = v5;
  sub_24F928438();
  sub_24E601704(v10, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  swift_getErrorValue();
  v11 = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(v10, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();
}

uint64_t sub_24EE13A6C(uint64_t a1)
{
  v36 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v11 = sub_24F922058();
  __swift_project_value_buffer(v11, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v12 = sub_24F922038();
  v13 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v14 = v1;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v12, v13, v16, "RecommendationPromise", "", v15, 2u);
    v17 = v15;
    v1 = v14;
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v18 = *(v2 + 16);
  v18(v7, v10, v1);
  sub_24F922098();
  swift_allocObject();
  v33 = sub_24F922088();
  v19 = v2 + 8;
  v20 = *(v2 + 8);
  v34 = v19;
  v20(v10, v1);
  sub_24F922038();
  sub_24F921FF8();
  v21 = sub_24F922038();
  v22 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v23 = swift_slowAlloc();
    v32 = v1;
    v24 = v23;
    *v23 = 0;
    v25 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v21, v22, v25, "Recommendation", "", v24, 2u);
    v26 = v24;
    v1 = v32;
    MEMORY[0x2530542D0](v26, -1, -1);
  }

  v18(v7, v4, v1);
  swift_allocObject();
  v27 = sub_24F922088();
  v20(v4, v1);
  sub_24E69A5C4(0, &qword_27F21C8C8, 0x277CD4640);
  v28 = sub_24F92C448();
  MEMORY[0x28223BE20](v28);
  *(&v32 - 6) = v33;
  *(&v32 - 5) = v27;
  v29 = v37;
  *(&v32 - 4) = v36;
  *(&v32 - 3) = v29;
  *(&v32 - 2) = ObjectType;
  v30 = sub_24F92C458();

  return v30;
}

void *sub_24EE13E44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v62 = a6;
  v55 = a5;
  v63 = a4;
  v67 = a3;
  v68 = a2;
  v66 = a1;
  v60 = sub_24F922068();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922028();
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24F92AC68();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v54 - v13;
  v14 = sub_24F9285B8();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F928388();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  sub_24F9298F8();
  v65 = MEMORY[0x25304F260]();
  if (v65)
  {
    v24 = v64;
    sub_24F92C2D8();
    v25 = v24;
    if (v24)
    {
      v64 = 0;
      if (qword_27F210780 != -1)
      {
        swift_once();
      }

      v63 = unk_27F39C9C8;
      v60 = __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      *&v70[8] = MEMORY[0x277D837D0];
      *&v69 = 0xD000000000000043;
      *(&v69 + 1) = 0x800000024FA5E980;
      sub_24F928438();
      sub_24E601704(&v69, &qword_27F2129B0, &unk_24F945320);
      swift_getErrorValue();
      v26 = v71;
      v27 = v72;
      *&v70[8] = v72;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
      (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v26, v27);
      sub_24F928438();
      sub_24E601704(&v69, &qword_27F2129B0, &unk_24F945320);
      sub_24F92A5A8();

      v53 = swift_allocObject();
      v29 = v67;
      v53[2] = v65;
      v53[3] = v29;
      v30 = v62;
      v53[4] = v24;
      v53[5] = v30;
      v31 = v66;

      v32 = v24;
      v33 = v61;
      v34 = v64;
      sub_24F92AC48();
      if (v34)
      {
      }

      else
      {
        v53 = sub_24F92AC58();

        (*(v56 + 8))(v33, v57);
      }
    }

    else
    {
      (*(v18 + 16))(v20, v23, v17);
      sub_24F9285A8();
      AppStoreAMSEngagementRequest.init(deserializing:using:)(v20, v16, &v69);
      (*(v18 + 8))(v23, v17);
      v73 = v69;
      v74[0] = *v70;
      *(v74 + 9) = *&v70[9];
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      v47 = swift_allocObject();
      v48 = v74[0];
      *(v47 + 16) = v73;
      *(v47 + 32) = v48;
      *(v47 + 41) = *(v74 + 9);
      *(v47 + 64) = v65;
      *(v47 + 72) = v46;
      v49 = v55;
      *(v47 + 80) = v67;
      *(v47 + 88) = v49;
      v50 = v66;

      v51 = v49;
      v52 = v54;
      sub_24F92AC48();
      v53 = sub_24F92AC58();

      (*(v56 + 8))(v52, v57);
    }
  }

  else
  {
    v66 = v10;
    v35 = v59;
    v36 = v60;
    v37 = v58;
    v38 = v8;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v39 = sub_24F922058();
    __swift_project_value_buffer(v39, qword_27F23DAC0);
    v40 = sub_24F922038();
    v41 = v66;
    sub_24F922078();
    LODWORD(v65) = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      if ((*(v35 + 88))(v7, v36) == *MEMORY[0x277D85B00])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v35 + 8))(v7, v36);
        v42 = "";
      }

      v41 = v66;
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v40, v65, v44, "Recommendation", v42, v43, 2u);
      MEMORY[0x2530542D0](v43, -1, -1);
    }

    (*(v37 + 8))(v41, v38);
    v53 = sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  sub_24EE147C4();
  return v53;
}

uint64_t sub_24EE147C4()
{
  v0 = sub_24F922068();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v8 = sub_24F922058();
  __swift_project_value_buffer(v8, qword_27F23DAC0);
  v9 = sub_24F922038();
  sub_24F922078();
  v10 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v9, v10, v13, "RecommendationPromise", v11, v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

double sub_24EE14A50(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v21[0] = a8;
  v21[1] = a5;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a4, v11, v14);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  (*(v12 + 32))(v18 + v16, v15, v11);
  *(v18 + v17) = a7;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21[0];

  v19 = a7;
  sub_24F9298E8();

  return result;
}

void sub_24EE14BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a3;
  v19[1] = a2;
  v3 = sub_24F922068();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F922028();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v11 = sub_24F922058();
  __swift_project_value_buffer(v11, qword_27F23DAC0);
  v12 = sub_24F922038();
  sub_24F922078();
  v13 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "success=false";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v12, v13, v16, "Recommendation", v14, v15, 2u);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24F93DE60;
  v19[6] = 0;
  v19[7] = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5EAD0);
  MEMORY[0x253050C20](0xD000000000000035, 0x800000024FA5EAF0);
  v19[11] = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  sub_24F92CA38();
  MEMORY[0x253050C20](46, 0xE100000000000000);
  *(v17 + 56) = sub_24F92A868();
  __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  sub_24F92A808();
  v18 = sub_24F9281A8();
}

uint64_t sub_24EE15144(void *a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t), __n128 a9)
{
  v54 = a6;
  v55 = a7;
  v56 = a5;
  v52 = a3;
  v53 = a1;
  v12 = sub_24F9281B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = v14;
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F9298B8();
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a4 + 40) & 0xE0) == 0x40 && (*(a4 + 40) & 1) == 0)
  {
    v22 = *(v13 + 16);
    v46 = v18;
    v47 = v17;
    v22(v15, v52, v12, v19);
    v23 = *(v13 + 80);
    v48 = a8;
    v24 = (v23 + 32) & ~v23;
    v25 = swift_allocObject();
    v49 = a2;
    v50 = v13;
    v26 = v55;
    *(v25 + 16) = v54;
    *(v25 + 24) = v26;
    (*(v50 + 32))(v25 + v24, v15, v12);
    a2 = v49;

    sub_24F9298C8();
    v13 = v50;

    (*(v46 + 8))(v21, v47);
  }

  v27 = sub_24EE1069C(a4);
  v49 = *(v13 + 16);
  v50 = v27;
  v28 = v15;
  v49(v15, a2, v12);
  v29 = *(v13 + 80);
  v30 = v51;
  v31 = swift_allocObject();
  v33 = v53;
  v32 = v54;
  *(v31 + 2) = v56;
  *(v31 + 3) = v32;
  v34 = v55;
  *(v31 + 4) = v33;
  *(v31 + 5) = v34;
  v48 = *(v13 + 32);
  v48(&v31[(v29 + 48) & ~v29], v28, v12);
  v49(v28, v52, v12);
  v35 = (v29 + 40) & ~v29;
  v36 = (v30 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v55;
  v39 = v54;
  *(v37 + 2) = v56;
  *(v37 + 3) = v39;
  *(v37 + 4) = v38;
  v48(&v37[v35], v28, v12);
  v40 = v53;
  *&v37[v36] = v53;
  v41 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v42 = v40;
  v43 = sub_24F92BEF8();
  v57[3] = v41;
  v57[4] = MEMORY[0x277D225C0];
  v57[0] = v43;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

void sub_24EE1555C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F922068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v22 = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v14 = sub_24F922058();
    __swift_project_value_buffer(v14, qword_27F23DAC0);
    v15 = sub_24F922038();
    sub_24F922078();
    v16 = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v17 = "success=false";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v15, v16, v19, "Recommendation", v17, v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F93DE60;
    *(v20 + 56) = sub_24F92A868();
    __swift_allocate_boxed_opaque_existential_1((v20 + 32));
    sub_24F92A808();
    v21 = sub_24F9281A8();
  }
}

double sub_24EE15B90(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v21[1] = a2;
  v12 = sub_24F9281B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = *a1;
  (*(v13 + 16))(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12, v15);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = v16;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  (*(v13 + 32))(&v18[v17], v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  v19 = a4;

  sub_24F9298E8();

  return result;
}

void sub_24EE15D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v9 = sub_24F922068();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  v14 = sub_24F922028();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v37 - v19;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v21 = sub_24F92AAE8();
    __swift_project_value_buffer(v21, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v39 = v17;
    swift_beginAccess();
    *(a1 + 16) = 1;
    v44[0] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v22 = sub_24F92CF68();
    v23 = [objc_opt_self() valueWithObject:v22 inContext:a3];
    swift_unknownObjectRelease();
    if (v23)
    {
      v40 = v9;
      if (qword_27F211060 != -1)
      {
        swift_once();
      }

      v24 = sub_24F922058();
      v37[1] = __swift_project_value_buffer(v24, qword_27F23DAC0);
      v25 = sub_24F922038();
      sub_24F922078();
      v26 = sub_24F92C048();
      if (sub_24F92C478())
      {

        sub_24F9220A8();
        v38 = a4;

        v27 = v42;
        v28 = v40;
        v29 = v14;
        if ((*(v42 + 88))(v13, v40) == *MEMORY[0x277D85B00])
        {
          v30 = "[Error] Interval already ended";
        }

        else
        {
          (*(v27 + 8))(v13, v28);
          v30 = "success=true";
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = sub_24F922008();
        _os_signpost_emit_with_name_impl(&dword_24E5DD000, v25, v26, v32, "Recommendation", v30, v31, 2u);
        MEMORY[0x2530542D0](v31, -1, -1);
        v14 = v29;
      }

      v33 = *(v15 + 8);
      v38 = v15 + 8;
      v33(v20, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_24F93DE60;
      *(v34 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
      *(v34 + 32) = v23;
      v35 = v23;
      v36 = sub_24F9281A8();
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_24EE16558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v23[0] = a6;
  v23[1] = a2;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a5, v11, v14);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v12 + 32))(v18 + v16, v15, v11);
  *(v18 + v17) = a1;
  v19 = v23[0];
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23[0];

  v20 = a1;
  v21 = v19;
  sub_24F9298E8();

  return result;
}

void sub_24EE166F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v8 = sub_24F922068();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F922028();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v16 = sub_24F92AAE8();
    __swift_project_value_buffer(v16, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v27[0] = a5;
    v27[1] = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v17 = sub_24F922058();
    __swift_project_value_buffer(v17, qword_27F23DAC0);
    v18 = sub_24F922038();
    sub_24F922078();
    v19 = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v11, v8);
        v20 = "success=false";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v18, v19, v22, "Recommendation", v20, v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24F93DE60;
    v24 = sub_24E69A5C4(0, &qword_27F21C8E0, 0x277CD4658);
    v25 = MEMORY[0x253051C90](v28, v27[0]);
    *(v23 + 56) = v24;
    *(v23 + 32) = v25;
    v26 = sub_24F9281A8();
  }
}

void sub_24EE16D6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v3 = sub_24F92AB18();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E601704(v2, &qword_27F2330E0, &unk_24F9694C0);
  }

  else
  {
    v5 = sub_24F92AB08();
    (*(v4 + 8))(v2, v3);
    v6 = [v5 ams_DSID];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 stringValue];

      v9 = sub_24F92B0D8();
      v11 = v10;

      *&v12 = v9;
      *(&v12 + 1) = v11;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v16 = 0x80;
      sub_24EE1069C(&v12);
    }
  }
}

id AppStoreOnDeviceRecommendationsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppStoreOnDeviceRecommendationsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EE1706C()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EE170A4()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24EE17164(uint64_t *a1)
{
  v3 = *(sub_24F922028() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = *(v1 + v5);

  sub_24EE131B4(a1, v1 + v4, v10, v7, v8, v9);
}

uint64_t sub_24EE17220()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EE172B0(uint64_t a1)
{
  v3 = *(sub_24F922028() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + v4 + *(v3 + 64));

  return sub_24EE13700(a1, v1 + v4, v5);
}

uint64_t sub_24EE17408()
{

  return swift_deallocObject();
}

uint64_t sub_24EE17480()
{
  sub_24EA4FC98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

double sub_24EE17520(uint64_t *a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_24EE15B90(a1, v6, v7, v8, v9, v10, v5);
}

uint64_t sub_24EE17598(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

double sub_24EE17680(void *a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v6 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EE16558(a1, v7, v8, v9, v2 + v6, v10, v5);
}

uint64_t sub_24EE17724(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24EE177F0(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  sub_24EE1555C(v3, v4, v5);
}

uint64_t sub_24EE17854(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24EE1794C(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  sub_24EE166F0(v7, v8, v1 + v3, v5, v6);
}

uint64_t objectdestroy_24Tm(void (*a1)(void, __n128), __n128 a2)
{
  v4 = sub_24F9281B8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);

  (a1)(*(v2 + 24));

  (*(v5 + 8))(v2 + v6, v4);

  return swift_deallocObject();
}

void sub_24EE17AEC(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  sub_24EE15D14(v3, v4, v5, v6, v7);
}

uint64_t sub_24EE17B54(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24EE17C3C(__n128 a1)
{
  v2 = *(sub_24F9281B8() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EE14BE0(v4, v1 + v3, v5);
}

uint64_t sub_24EE17CD8()
{
  sub_24EA4FC98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_24EE17D78(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a1;
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D90, &unk_24F9A3EE0);
  v6 = *(v5 + *a3);
  sub_24E953AD0(v4);
  v7 = sub_24F92AE28();

  v8 = [v6 enqueueData_];

  return sub_24F92A9D8();
}

uint64_t sub_24EE17E30()
{

  return swift_deallocObject();
}

unint64_t sub_24EE17E8C()
{
  result = qword_27F230D98;
  if (!qword_27F230D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D90, &unk_24F9A3EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230D98);
  }

  return result;
}

unint64_t sub_24EE17F24()
{
  result = qword_27F230DA0;
  if (!qword_27F230DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DA0);
  }

  return result;
}

uint64_t sub_24EE17FB4(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_24F922028() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *a1;

  return a2(v7, v2 + 16, v2 + v5, v6);
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  sub_24EA4FC98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EE18164(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_24F922028() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + 16, v2 + v5, v6);
}

__n128 SegmentedSearchResultsPageIntent.init(with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD000000000000020;
  *(a2 + 8) = 0x800000024F9A3F10;
  v2 = *(a1 + 144);
  *(a2 + 144) = *(a1 + 128);
  *(a2 + 160) = v2;
  *(a2 + 176) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 80) = *(a1 + 64);
  *(a2 + 96) = v3;
  v4 = *(a1 + 112);
  *(a2 + 112) = *(a1 + 96);
  *(a2 + 128) = v4;
  v5 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v5;
  result = *(a1 + 48);
  *(a2 + 48) = *(a1 + 32);
  *(a2 + 64) = result;
  return result;
}

uint64_t SegmentedSearchResultsPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SegmentedSearchResultsPageIntent.requestDescriptor.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[10];
  v25 = v1[9];
  v26 = v3;
  v4 = v1[10];
  v27 = v1[11];
  v5 = v1[4];
  v6 = v1[6];
  v21 = v1[5];
  v7 = v21;
  v22 = v6;
  v8 = v1[6];
  v9 = v1[8];
  v23 = v1[7];
  v10 = v23;
  v24 = v9;
  v11 = v1[2];
  v18[0] = v1[1];
  v18[1] = v11;
  v12 = v1[4];
  v14 = v1[1];
  v13 = v1[2];
  v19 = v1[3];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[11];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_24E7B6680(v18, &v17);
}

JSValue __swiftcall SegmentedSearchResultsPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1[10];
  v21[8] = v1[9];
  v21[9] = v2;
  v21[10] = v1[11];
  v3 = v1[6];
  v21[4] = v1[5];
  v21[5] = v3;
  v4 = v1[8];
  v21[6] = v1[7];
  v21[7] = v4;
  v5 = v1[2];
  v21[0] = v1[1];
  v21[1] = v5;
  v6 = v1[4];
  v21[2] = v1[3];
  v21[3] = v6;
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v17 = v1[9];
    v18 = v1[10];
    v19 = v1[11];
    v13 = v1[5];
    v14 = v1[6];
    v15 = v1[7];
    v16 = v1[8];
    v9 = v1[1];
    v10 = v1[2];
    v11 = v1[3];
    v12 = v1[4];
    sub_24E7B6680(v21, v20);
    sub_24E7B6474();
    sub_24F929FF8();
    v20[8] = v17;
    v20[9] = v18;
    v20[10] = v19;
    v20[4] = v13;
    v20[5] = v14;
    v20[6] = v15;
    v20[7] = v16;
    v20[0] = v9;
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    sub_24EB38BC8(v20);
    sub_24F92C328();
    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24EE184FC()
{
  result = qword_27F230DA8;
  if (!qword_27F230DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DA8);
  }

  return result;
}

unint64_t sub_24EE18554()
{
  result = qword_27F230DB0;
  if (!qword_27F230DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DB0);
  }

  return result;
}

unint64_t sub_24EE185AC()
{
  result = qword_27F230DB8;
  if (!qword_27F230DB8)
  {
    type metadata accessor for SegmentedSearchResultsPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DB8);
  }

  return result;
}

id sub_24EE18604(uint64_t a1)
{
  v2 = v1[10];
  v21[8] = v1[9];
  v21[9] = v2;
  v21[10] = v1[11];
  v3 = v1[6];
  v21[4] = v1[5];
  v21[5] = v3;
  v4 = v1[8];
  v21[6] = v1[7];
  v21[7] = v4;
  v5 = v1[2];
  v21[0] = v1[1];
  v21[1] = v5;
  v6 = v1[4];
  v21[2] = v1[3];
  v21[3] = v6;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    v17 = v1[9];
    v18 = v1[10];
    v19 = v1[11];
    v13 = v1[5];
    v14 = v1[6];
    v15 = v1[7];
    v16 = v1[8];
    v9 = v1[1];
    v10 = v1[2];
    v11 = v1[3];
    v12 = v1[4];
    sub_24E7B6680(v21, v20);
    sub_24E7B6474();
    sub_24F929FF8();
    v20[8] = v17;
    v20[9] = v18;
    v20[10] = v19;
    v20[4] = v13;
    v20[5] = v14;
    v20[6] = v15;
    v20[7] = v16;
    v20[0] = v9;
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    sub_24EB38BC8(v20);
    sub_24F92C328();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EE18768()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0, &unk_24F9A4110);
  sub_24EE18C20(&qword_27F230DC8, MEMORY[0x277CBCE20]);
  return sub_24F9230C8();
}

uint64_t DismissDashboardNotifier.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0, &unk_24F9A4110);
  swift_allocObject();
  *(v0 + 16) = sub_24F922FC8();
  return v0;
}

uint64_t DismissDashboardNotifier.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0, &unk_24F9A4110);
  swift_allocObject();
  *(v0 + 16) = sub_24F922FC8();
  return v0;
}

double sub_24EE1888C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24F92B7F8();

  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_24EA998B8(0, 0, v4, &unk_24F9957A0, v7);

  return result;
}

uint64_t sub_24EE189B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24F92B7F8();
  *(v4 + 24) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EE18A48, v6, v5);
}

uint64_t sub_24EE18A48()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0, &unk_24F9A4110);
  sub_24EE18C20(&qword_27F230DD0, MEMORY[0x277CBCE18]);
  sub_24F923048();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EE18AF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t DismissDashboardNotifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EE18C20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230DC0, &unk_24F9A4110);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AdTransparencyAction.adTransparencyData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20AdTransparencyAction_adTransparencyData);

  return v1;
}

char *AdTransparencyAction.__allocating_init(title:adTransparencyData:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC12GameStoreKit20AdTransparencyAction_adTransparencyData];
  *v15 = a3;
  *(v15 + 1) = a4;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a5, v17);
  v19 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v10;
    v26 = a5;
    v27 = a1;
    v28 = a2;
    v29 = v24;
    v30 = v11;
    v32 = v31;
    (*(v30 + 8))(v13, v25);
    v34[1] = v29;
    v34[2] = v32;
    a2 = v28;
    a1 = v27;
    a5 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v18 + 8))(a5, v17);
  sub_24E601704(v38, &qword_27F235830, &qword_24F93B8C0);
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *AdTransparencyAction.init(title:adTransparencyData:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a1;
  v32 = a2;
  v10 = sub_24F91F6B8();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + OBJC_IVAR____TtC12GameStoreKit20AdTransparencyAction_adTransparencyData);
  *v20 = a3;
  v20[1] = a4;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v30 + 8))(v12, v10);
    v33 = v23;
    v34 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(a5, v16);
  sub_24E601704(v41, &qword_27F235830, &qword_24F93B8C0);
  v26 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v26 + 4) = v40;
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v28 = v32;
  v6[2] = v31;
  v6[3] = v28;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

char *AdTransparencyAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v29 = *v3;
  v5 = sub_24F9285B8();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v36 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v8 + 8);
  v37 = v7;
  v17(v13, v7);
  if (v16)
  {
    v29 = v17;
    v18 = (v32 + OBJC_IVAR____TtC12GameStoreKit20AdTransparencyAction_adTransparencyData);
    *v18 = v14;
    v18[1] = v16;
    v19 = v36;
    (*(v8 + 16))(v10, v36, v37);
    v21 = v33;
    v20 = v34;
    v22 = v30;
    v23 = v35;
    (*(v33 + 16))(v30, v35, v34);
    v24 = v31;
    v25 = Action.init(deserializing:using:)(v10, v22);
    if (!v24)
    {
      v22 = v25;
    }

    (*(v21 + 8))(v23, v20);
    v29(v19, v37);
  }

  else
  {
    v26 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v27 = 0xD000000000000012;
    v27[1] = 0x800000024FA5EFB0;
    v22 = v29;
    v27[2] = v29;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D22530], v26);
    swift_willThrow();
    (*(v33 + 8))(v35, v34);
    v17(v36, v37);
    swift_deallocPartialClassInstance();
  }

  return v22;
}

uint64_t AdTransparencyAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t AdTransparencyAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdTransparencyAction(uint64_t a1)
{
  result = qword_27F230DD8;
  if (!qword_27F230DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionRunner.Origin.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EE19A9C(uint64_t a1, char a2, uint64_t a3, char *a4, uint64_t a5)
{
  v7 = v5;
  v26 = a5;
  v12 = sub_24F91F648();
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F927E38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a4;
  sub_24E74EC40();
  *v18 = sub_24F92BEF8();
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  LOBYTE(a4) = sub_24F927E68();
  v21 = *(v16 + 8);
  v20 = v16 + 8;
  v21(v18, v15);
  if ((a4 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v20 = v26;
  if (a2 & 1) != 0 && ((*(*v7 + 112))(a1))
  {
    sub_24F928AC8();
    (*(*v7 + 104))();
  }

  if ((v19 & 1) == 0)
  {
    sub_24F91F638();
    sub_24F91F5E8();
    v6 = v22;
    (*(v24 + 8))(v14, v25);
    if (qword_27F210788 == -1)
    {
LABEL_7:
      swift_beginAccess();
      qword_27F230F98 = v6;
      sub_24F929198();
      return (*(*v7 + 96))(a1, a3, v20);
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  return (*(*v7 + 96))(a1, a3, v20);
}

unint64_t sub_24EE19DB4()
{
  result = qword_27F230DE8;
  if (!qword_27F230DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DE8);
  }

  return result;
}

void static PresentationSizing<>.fixedSizeMedium.getter(uint64_t a1@<X8>)
{
  *a1 = 0x4082C00000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x4085400000000000;
  *(a1 + 24) = 0;
}

void static PresentationSizing<>.fixedSizeLarge.getter(uint64_t a1@<X8>)
{
  *a1 = 0x4089A00000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x4087C00000000000;
  *(a1 + 24) = 0;
}

void static PresentationSizing<>.onboarding.getter(uint64_t a1@<X8>)
{
  *a1 = 0x4083800000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x4087500000000000;
  *(a1 + 24) = 0;
}

void static PresentationSizing<>.playTogether.getter(uint64_t a1@<X8>)
{
  *a1 = 0x4080E00000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x4088300000000000;
  *(a1 + 24) = 0;
}

uint64_t sub_24EE1A3AC()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_24EE1A3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24EE1A4B4(uint64_t a1)
{
  v2 = sub_24EE1A700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE1A4F0(uint64_t a1)
{
  v2 = sub_24EE1A700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FixedPresentationSizing.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DF0, &qword_24F9A4260);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v11[0] = v1[2];
  v14 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE1A700();
  sub_24F92D128();
  v12 = v7;
  v13 = v8;
  v15 = 0;
  sub_24E620F7C();
  v9 = v11[1];
  sub_24F92CCF8();
  if (!v9)
  {
    v12 = v11[0];
    v13 = v14;
    v15 = 1;
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EE1A700()
{
  result = qword_27F230DF8;
  if (!qword_27F230DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DF8);
  }

  return result;
}

uint64_t FixedPresentationSizing.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230E00, &qword_24F9A4268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE1A700();
  sub_24F92D108();
  if (!v2)
  {
    v16 = 0;
    sub_24E620E90();
    sub_24F92CC18();
    v9 = v13;
    v15 = v14;
    v16 = 1;
    sub_24F92CC18();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    v11 = v14;
    *a2 = v9;
    *(a2 + 8) = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24EE1A9CC()
{
  result = qword_27F230E08;
  if (!qword_27F230E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E08);
  }

  return result;
}

unint64_t sub_24EE1AA24()
{
  result = qword_27F230E10;
  if (!qword_27F230E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E10);
  }

  return result;
}

unint64_t sub_24EE1AA7C()
{
  result = qword_27F230E18;
  if (!qword_27F230E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E18);
  }

  return result;
}

uint64_t OfferItemDetailPage.learnMoreTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreTitle);

  return v1;
}

uint64_t OfferItemDetailPage.__allocating_init(offerItem:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:learnMoreTitle:additionalInfo:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v75 = a8;
  v76 = a4;
  v72 = a5;
  v73 = a7;
  LODWORD(v77) = a6;
  v81 = a15;
  v82 = a14;
  v83 = a13;
  v84 = a12;
  v79 = a3;
  v80 = a11;
  v85 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v17 - 8);
  v69 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  MEMORY[0x28223BE20](v22);
  v78 = &v64 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  v27 = sub_24F928818();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v64 - v32;
  v34 = swift_allocObject();
  v74 = a1;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_offerItem) = a1;
  v71 = a2;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_artwork) = a2;
  v35 = *v72;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_video) = v79;
  v36 = (v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreTitle);
  v37 = v75;
  *v36 = v73;
  v36[1] = v37;
  v75 = a9;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_additionalInfo) = a9;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_mediaOverlayStyle) = v35;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_includeBorderInDarkMode) = v77;
  sub_24E60169C(v84, v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E60169C(v83, v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E60169C(v82, v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  v73 = v28;
  v38 = *(v28 + 16);
  v38(v33, v85, v27);
  sub_24E60169C(v81, v26, &qword_27F2218B0, &unk_24F975980);
  *(v34 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = 2;
  v38(v30, v33, v27);
  v77 = v26;
  v39 = v26;
  v40 = v78;
  sub_24E60169C(v39, v78, &qword_27F2218B0, &unk_24F975980);
  *(v34 + 16) = 0;
  v38((v34 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v30, v27);
  *(v34 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v80;
  sub_24E60169C(v40, v21, &qword_27F2218B0, &unk_24F975980);
  v41 = sub_24F9285B8();
  v70 = *(v41 - 8);
  v42 = *(v70 + 48);
  v43 = v21;
  v44 = v21;
  v45 = v41;
  if (v42(v44, 1, v41) == 1)
  {

    sub_24E601704(v81, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v82, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v83, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v84, &qword_27F223CE8, &unk_24F983FE0);
    v46 = *(v73 + 8);
    v46(v85, v27);
    sub_24E601704(v40, &qword_27F2218B0, &unk_24F975980);
    v46(v30, v27);
    sub_24E601704(v77, &qword_27F2218B0, &unk_24F975980);
    v46(v33, v27);
    v47 = v43;
  }

  else
  {
    v65 = v42;
    v72 = v43;
    v66 = v30;
    v67 = v27;
    v48 = v73;
    v68 = v33;
    v49 = qword_27F2105F0;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v50, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v51 = v86;
    v52 = v70;
    if (v86)
    {
    }

    v53 = *(v52 + 8);
    v53(v72, v45);
    v54 = v78;
    if (!v51)
    {

      sub_24E601704(v81, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v82, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v83, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v84, &qword_27F223CE8, &unk_24F983FE0);
      v58 = *(v48 + 8);
      v59 = v67;
      v58(v85, v67);
      sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
      v58(v66, v59);
      sub_24E601704(v77, &qword_27F2218B0, &unk_24F975980);
      v58(v68, v59);
      return v34;
    }

    v55 = v69;
    sub_24E60169C(v78, v69, &qword_27F2218B0, &unk_24F975980);
    if (v65(v55, 1, v45) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v81, &qword_27F2218B0, &unk_24F975980);
      v60 = v45;
      sub_24E601704(v82, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v83, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v84, &qword_27F223CE8, &unk_24F983FE0);
      v61 = *(v48 + 8);
      v62 = v67;
      v61(v85, v67);
      sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
      v61(v66, v62);
      sub_24E601704(v77, &qword_27F2218B0, &unk_24F975980);
      v61(v68, v62);
      v53(v69, v60);
      return v34;
    }

    sub_24E601704(v81, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v82, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v83, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v84, &qword_27F223CE8, &unk_24F983FE0);
    v56 = *(v48 + 8);
    v57 = v67;
    v56(v85, v67);
    sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
    v56(v66, v57);
    sub_24E601704(v77, &qword_27F2218B0, &unk_24F975980);
    v56(v68, v57);
    v47 = v55;
  }

  sub_24E601704(v47, &qword_27F2218B0, &unk_24F975980);
  return v34;
}

char *OfferItemDetailPage.init(offerItem:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:learnMoreTitle:additionalInfo:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v69 = a4;
  v70 = a8;
  v68 = a7;
  LODWORD(v71) = a6;
  v66 = a5;
  v74 = a3;
  v75 = a15;
  v76 = a14;
  v77 = a13;
  v72 = a11;
  v78 = a12;
  v79 = a10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v18 - 8);
  v63 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v73 = &v60 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  v28 = sub_24F928818();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v60 - v33;
  v64 = a1;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_offerItem) = a1;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_artwork) = a2;
  v35 = *v66;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_video) = v74;
  v36 = (v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreTitle);
  v37 = v70;
  *v36 = v68;
  v36[1] = v37;
  v67 = a2;
  v68 = a9;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_additionalInfo) = a9;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_mediaOverlayStyle) = v35;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_includeBorderInDarkMode) = v71;
  sub_24E60169C(v78, v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E60169C(v77, v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E60169C(v76, v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  v65 = v29;
  v38 = *(v29 + 16);
  v38(v34, v79, v28);
  sub_24E60169C(v75, v27, &qword_27F2218B0, &unk_24F975980);
  *(v15 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = 2;
  v38(v31, v34, v28);
  v71 = v27;
  sub_24E60169C(v27, v24, &qword_27F2218B0, &unk_24F975980);
  *(v15 + 16) = 0;
  v70 = v31;
  v38((v15 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v31, v28);
  v66 = v15;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v72;
  v39 = v24;
  v40 = v73;
  sub_24E60169C(v24, v73, &qword_27F2218B0, &unk_24F975980);
  v41 = sub_24F9285B8();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  if (v43(v40, 1, v41) == 1)
  {

    sub_24E601704(v75, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v76, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v77, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v78, &qword_27F223CE8, &unk_24F983FE0);
    v44 = *(v65 + 8);
    v44(v79, v28);
    sub_24E601704(v39, &qword_27F2218B0, &unk_24F975980);
    v44(v70, v28);
    sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
    v44(v34, v28);
    v45 = v40;
  }

  else
  {
    v46 = v39;
    v61 = v28;
    v62 = v34;
    v47 = v65;
    v48 = qword_27F2105F0;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v49, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v50 = v80;
    if (v80)
    {
    }

    v51 = *(v42 + 8);
    v51(v73, v41);
    if (!v50)
    {

      sub_24E601704(v75, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v76, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v77, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v78, &qword_27F223CE8, &unk_24F983FE0);
      v55 = *(v47 + 8);
      v56 = v61;
      v55(v79, v61);
      sub_24E601704(v46, &qword_27F2218B0, &unk_24F975980);
      v55(v70, v56);
      sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
      v55(v62, v56);
      return v66;
    }

    v52 = v63;
    sub_24E60169C(v46, v63, &qword_27F2218B0, &unk_24F975980);
    if (v43(v52, 1, v41) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v75, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v76, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v77, &qword_27F223CE8, &unk_24F983FE0);
      sub_24E601704(v78, &qword_27F223CE8, &unk_24F983FE0);
      v57 = *(v47 + 8);
      v58 = v61;
      v57(v79, v61);
      sub_24E601704(v46, &qword_27F2218B0, &unk_24F975980);
      v57(v70, v58);
      sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
      v57(v62, v58);
      v51(v52, v41);
      return v66;
    }

    sub_24E601704(v75, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v76, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v77, &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v78, &qword_27F223CE8, &unk_24F983FE0);
    v53 = *(v47 + 8);
    v54 = v61;
    v53(v79, v61);
    sub_24E601704(v46, &qword_27F2218B0, &unk_24F975980);
    v53(v70, v54);
    sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
    v53(v62, v54);
    v45 = v52;
  }

  sub_24E601704(v45, &qword_27F2218B0, &unk_24F975980);
  return v66;
}

void *OfferItemDetailPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v96 = v4;
  v7 = *v4;
  v81 = v3;
  v82 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = v73 - v9;
  v10 = sub_24F9285B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v75 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = v73 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v73 - v16;
  v18 = sub_24F928388();
  v89 = *(v18 - 8);
  v90 = v18;
  MEMORY[0x28223BE20](v18);
  v74 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v79 = v73 - v21;
  MEMORY[0x28223BE20](v22);
  v84 = v73 - v23;
  MEMORY[0x28223BE20](v24);
  v83 = v73 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v73 - v27;
  type metadata accessor for OfferItem(0);
  v91 = a1;
  sub_24F928398();
  v30 = (v11 + 16);
  v29 = *(v11 + 16);
  v94 = a2;
  v95 = v10;
  v92 = v29;
  v29(v17, a2, v10);
  sub_24EE1CB84(&qword_27F230E20, type metadata accessor for OfferItem, &protocol conformance descriptor for AppPromotion);
  sub_24F929548();
  if (!v97)
  {
    v68 = sub_24F92AC38();
    sub_24EE1CB84(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v69 = 0x657449726566666FLL;
    v69[1] = 0xE90000000000006DLL;
    v69[2] = v82;
    (*(*(v68 - 8) + 104))(v69, *MEMORY[0x277D22530], v68);
    swift_willThrow();
    (*(v11 + 8))(v94, v95);
    (*(v89 + 8))(v91, v90);
LABEL_10:
    type metadata accessor for OfferItemDetailPage(0);
    swift_deallocPartialClassInstance();
    return v30;
  }

  v78 = v11;
  v88 = v97;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v31 = v94;
  v93 = v11 + 16;
  v32 = v95;
  v33 = v92;
  (v92)(v17, v94);
  sub_24EE1CB84(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v34 = v97;
  type metadata accessor for Video(0);
  sub_24F928398();
  v33(v17, v31, v32);
  sub_24EE1CB84(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
  sub_24F929548();
  v73[1] = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_offerItem;
  v35 = v96;
  *(v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_offerItem) = v88;
  v36 = v97;
  v73[2] = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_artwork;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_artwork) = v34;
  v73[3] = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_video;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_video) = v36;
  v76 = v36;

  v77 = v34;

  v37 = v91;
  sub_24F928398();
  sub_24EA303C8();
  sub_24F928208();
  v38 = v90;
  v39 = v89 + 8;
  v40 = *(v89 + 8);
  v40(v28, v90);
  v41 = v40;
  v86 = v40;
  v87 = v39;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_mediaOverlayStyle) = v97;
  v42 = v83;
  sub_24F928398();
  v43 = sub_24F928278();
  v41(v42, v38);
  *(v35 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_includeBorderInDarkMode) = v43 & 1;
  sub_24F928AD8();
  v44 = v37;
  sub_24F928398();
  v45 = v17;
  v46 = v17;
  v48 = v94;
  v47 = v95;
  v49 = v92;
  v92(v46, v94, v95);
  v50 = v85;
  sub_24F929548();
  v83 = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics;
  sub_24EB29268(v50, v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics);
  sub_24F928398();
  v49(v45, v48, v47);
  sub_24F929548();
  v73[0] = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics;
  sub_24EB29268(v50, v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics);
  sub_24F928398();
  v49(v45, v48, v47);
  sub_24F929548();
  v51 = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics;
  sub_24EB29268(v50, v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics);
  v52 = v84;
  sub_24F928398();
  v53 = sub_24F928348();
  v55 = v54;
  v56 = v90;
  v86(v52);
  v57 = v44;
  if (!v55)
  {
    v70 = sub_24F92AC38();
    sub_24EE1CB84(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    strcpy(v71, "learnMoreTitle");
    v71[15] = -18;
    *(v71 + 2) = v82;
    (*(*(v70 - 8) + 104))(v71, *MEMORY[0x277D22530], v70);
    swift_willThrow();
    v61 = v94;
    goto LABEL_7;
  }

  v58 = (v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreTitle);
  *v58 = v53;
  v58[1] = v55;
  v59 = v79;
  sub_24F928398();
  v60 = v80;
  v61 = v94;
  v92(v80, v94, v95);
  v62 = v81;
  v63 = sub_24F0151C0(v59, v60);
  if (v62)
  {
LABEL_7:

    (*(v78 + 8))(v61, v95);
    (v86)(v57, v56);

    if (v55)
    {
    }

    v30 = v96;
    sub_24E601704(&v83[v96], &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v30 + v73[0], &qword_27F223CE8, &unk_24F983FE0);
    sub_24E601704(v30 + v51, &qword_27F223CE8, &unk_24F983FE0);
    goto LABEL_10;
  }

  *(v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_additionalInfo) = v63;
  v64 = v74;
  (*(v89 + 16))(v74, v57, v56);
  v65 = v75;
  v66 = v95;
  v92(v75, v61, v95);
  v67 = v61;
  v30 = AppPromotionDetailPage.init(deserializing:using:)(v64, v65);

  (*(v78 + 8))(v67, v66);
  (v86)(v57, v56);
  return v30;
}

uint64_t type metadata accessor for OfferItemDetailPage(uint64_t a1)
{
  result = qword_27F230E28;
  if (!qword_27F230E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE1CB84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE1CBFC()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  return sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
}

uint64_t OfferItemDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_27F223CE8, &unk_24F983FE0);
  return v0;
}

uint64_t OfferItemDetailPage.__deallocating_deinit()
{
  OfferItemDetailPage.deinit();

  return swift_deallocClassInstance();
}

void sub_24EE1CE60(uint64_t a1)
{
  sub_24EB293E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EE1CFE4(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EE1D184@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230E58, &qword_24F9A46B8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ContinuePlayingDataIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE1DA3C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  v14 = v19;
  sub_24F92CC68();
  sub_24EE1DB44(v20, v13, type metadata accessor for Player);
  v22 = 1;
  *(v13 + *(v9 + 20)) = sub_24F92CC58();
  v21 = 2;
  v15 = sub_24F92CC58();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v15;
  sub_24EE1DBAC(v13, v17, type metadata accessor for ContinuePlayingDataIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EE1DA90(v13, type metadata accessor for ContinuePlayingDataIntent);
}

uint64_t sub_24EE1D4C4()
{
  v1 = 0x65674178616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6C7573655278616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24EE1D51C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EE1DE44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EE1D544(uint64_t a1)
{
  v2 = sub_24EE1DA3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE1D580(uint64_t a1)
{
  v2 = sub_24EE1DA3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE1D5F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230E68, &unk_24F9A46C0);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ContinuePlayingPreloadIntent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE1DAF0();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24EE1DB44(v13, v11, type metadata accessor for Player);
    sub_24EE1DB44(v11, v12, type metadata accessor for ContinuePlayingPreloadIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24EE1D854(uint64_t a1)
{
  v2 = sub_24EE1DAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE1D890(uint64_t a1)
{
  v2 = sub_24EE1DAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE1D904@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24EE1DBAC(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  v6 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24ED2CD6C(inited + 32);
  v7 = sub_24E80FFAC(v6);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_24EE1DA3C()
{
  result = qword_27F230E60;
  if (!qword_27F230E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E60);
  }

  return result;
}

uint64_t sub_24EE1DA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE1DAF0()
{
  result = qword_27F230E70;
  if (!qword_27F230E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E70);
  }

  return result;
}

uint64_t sub_24EE1DB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE1DBAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EE1DC38()
{
  result = qword_27F230E78;
  if (!qword_27F230E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E78);
  }

  return result;
}

unint64_t sub_24EE1DC90()
{
  result = qword_27F230E80;
  if (!qword_27F230E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E80);
  }

  return result;
}

unint64_t sub_24EE1DCE8()
{
  result = qword_27F230E88;
  if (!qword_27F230E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E88);
  }

  return result;
}

unint64_t sub_24EE1DD40()
{
  result = qword_27F230E90;
  if (!qword_27F230E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E90);
  }

  return result;
}

unint64_t sub_24EE1DD98()
{
  result = qword_27F230E98;
  if (!qword_27F230E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E98);
  }

  return result;
}

unint64_t sub_24EE1DDF0()
{
  result = qword_27F230EA0;
  if (!qword_27F230EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230EA0);
  }

  return result;
}

uint64_t sub_24EE1DE44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7573655278616DLL && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24EE1DF70(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800, &qword_24F93B370);
      v4 = sub_24F92B618();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800, &qword_24F93B370) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_24E60169C(v3, v4 + v6, &qword_27F213800, &qword_24F93B370);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_24E60169C(v3, v9, &qword_27F213800, &qword_24F93B370);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_24EE1E878(v3);
    return v4;
  }

  return result;
}

uint64_t static VersionStringUtil.isShortVersionString(_:atLeast:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E600AEC();
  v6 = sub_24F92C4E8();
  v54 = a4;
  v55 = v6;
  v53 = a3;

  v7 = sub_24F92C4E8();
  v8 = *(v6 + 16);

  v9 = *(v7 + 16);

  if (v8 != v9)
  {
    v11 = v8 - v9 >= 0 ? v8 - v9 : v9 - v8;
    v12 = *(v6 + 16);
    v13 = *(v7 + 16);
    v14 = sub_24EE1E658(0x30, 0xE100000000000000, v11);
    result = sub_24EA0A4AC(v14);
    if (v13 >= v12)
    {
      v6 = v55;
    }
  }

  v15 = 0;
  v16 = *(v6 + 16);
  while (1)
  {
    if (v15 == v16)
    {
LABEL_80:

      return 1;
    }

    if (v15 >= *(v6 + 16))
    {
      break;
    }

    v17 = *(v7 + 16);
    if (v15 == v17)
    {
      goto LABEL_80;
    }

    if (v15 >= v17)
    {
      goto LABEL_84;
    }

    v18 = (v6 + 32 + 16 * v15);
    v19 = *v18;
    v20 = v18[1];
    v21 = HIBYTE(v20) & 0xF;
    v22 = v19 & 0xFFFFFFFFFFFFLL;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v20) & 0xF;
    }

    else
    {
      v23 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      goto LABEL_82;
    }

    v24 = (v7 + 32 + 16 * v15);
    v26 = *v24;
    v25 = v24[1];
    if ((v20 & 0x1000000000000000) == 0)
    {
      if ((v20 & 0x2000000000000000) != 0)
      {
        v53 = v19;
        v54 = v20 & 0xFFFFFFFFFFFFFFLL;
        if (v19 == 43)
        {
          if (!v21)
          {
            goto LABEL_85;
          }

          if (--v21)
          {
            v28 = 0;
            v38 = &v53 + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              v40 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                break;
              }

              ++v38;
              if (!--v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v19 == 45)
        {
          if (!v21)
          {
            goto LABEL_86;
          }

          if (--v21)
          {
            v28 = 0;
            v32 = &v53 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v34 - v33;
              if (__OFSUB__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v21)
        {
          v28 = 0;
          v43 = &v53;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v45 + v44;
            if (__OFADD__(v45, v44))
            {
              break;
            }

            v43 = (v43 + 1);
            if (!--v21)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else
      {
        if ((v19 & 0x1000000000000000) != 0)
        {
          result = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_24F92C928();
        }

        v27 = *result;
        if (v27 == 43)
        {
          if (v22 < 1)
          {
            goto LABEL_87;
          }

          v21 = v22 - 1;
          if (v22 != 1)
          {
            v28 = 0;
            if (!result)
            {
              goto LABEL_64;
            }

            v35 = (result + 1);
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v27 == 45)
        {
          if (v22 < 1)
          {
            goto LABEL_88;
          }

          v21 = v22 - 1;
          if (v22 != 1)
          {
            v28 = 0;
            if (result)
            {
              v29 = (result + 1);
              while (1)
              {
                v30 = *v29 - 48;
                if (v30 > 9)
                {
                  goto LABEL_72;
                }

                v31 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  goto LABEL_72;
                }

                v28 = v31 - v30;
                if (__OFSUB__(v31, v30))
                {
                  goto LABEL_72;
                }

                ++v29;
                if (!--v21)
                {
                  goto LABEL_73;
                }
              }
            }

LABEL_64:
            LOBYTE(v21) = 0;
LABEL_73:
            v46 = v21;

            if (v46)
            {
              goto LABEL_81;
            }

            goto LABEL_74;
          }
        }

        else
        {
          if (!v22)
          {
            goto LABEL_72;
          }

          v28 = 0;
          if (!result)
          {
            goto LABEL_64;
          }

          while (1)
          {
            v41 = *result - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            ++result;
            if (!--v22)
            {
              goto LABEL_64;
            }
          }
        }
      }

LABEL_72:
      v28 = 0;
      LOBYTE(v21) = 1;
      goto LABEL_73;
    }

    v28 = sub_24F2D9F38(v19, v20, 10, v49);
    v52 = v50;

    if (v52)
    {
LABEL_81:

LABEL_82:

      return 0;
    }

LABEL_74:
    result = sub_24E9EEBE0(v26, v25, v47);
    if (v48)
    {
      goto LABEL_82;
    }

    ++v15;
    if (v28 != result)
    {
      v51 = result;

      return v28 >= v51;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}