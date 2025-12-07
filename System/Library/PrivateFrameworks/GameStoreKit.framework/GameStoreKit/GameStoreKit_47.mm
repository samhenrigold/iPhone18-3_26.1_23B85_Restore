uint64_t sub_24EAC81F8(void *a1)
{
  v3 = *(type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24EAC68E8(a1, v4);
}

unint64_t sub_24EAC8268()
{
  result = qword_27F227548;
  if (!qword_27F227548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227548);
  }

  return result;
}

uint64_t sub_24EAC82BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227528, &qword_24F97EBD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAC8340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EAC83C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EAC8430(uint64_t a1)
{
  result = type metadata accessor for GameDetailsMediaPreviewCard(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EAC84A8()
{
  result = qword_27F227578;
  if (!qword_27F227578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227580, qword_24F97EC28);
    sub_24E602068(&qword_27F227510, &qword_27F227500, &qword_24F97EBC0, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F227518, &qword_27F2274F0, &qword_24F97EBB0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227578);
  }

  return result;
}

unint64_t sub_24EAC85CC()
{
  result = qword_27F2275A8;
  if (!qword_27F2275A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227590, &qword_24F97EC88);
    sub_24E602068(&qword_27F2275B0, &qword_27F2275B8, qword_24F97ED28, MEMORY[0x277CE1198]);
    sub_24EAC4F1C(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2275A8);
  }

  return result;
}

double sub_24EAC86D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24EAC876C(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
  v2 = swift_allocObject();
  result = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  *(v2 + 16) = xmmword_24F979FB0;
  *(v2 + 32) = xmmword_24F976090;
  v7 = vdupq_n_s64(0xC0C81C8000000000);
  *(v2 + 48) = v7;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0u;
  __asm { FMOV            V6.2D, #1.0 }

  *(v2 + 88) = _Q6;
  __asm { FMOV            V7.2D, #10.0 }

  *(v2 + 104) = _Q7;
  *(v2 + 120) = _Q7;
  *(v2 + 136) = a1;
  *(v2 + 144) = a1;
  *(v2 + 152) = 1;
  *(v2 + 160) = result;
  *(v2 + 168) = v4;
  *(v2 + 176) = v5;
  *(v2 + 184) = v6;
  *(v2 + 192) = xmmword_24F976010;
  *(v2 + 208) = v7;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0u;
  *(v2 + 248) = _Q6;
  *(v2 + 264) = 0x4028000000000000;
  __asm { FMOV            V6.2D, #12.0 }

  *(v2 + 272) = _Q6;
  *(v2 + 288) = 0x4028000000000000;
  *(v2 + 296) = a1;
  *(v2 + 304) = a1;
  *(v2 + 312) = 1;
  *(v2 + 320) = result;
  *(v2 + 328) = v4;
  *(v2 + 336) = v5;
  *(v2 + 344) = v6;
  *(v2 + 352) = xmmword_24F976080;
  *(v2 + 368) = v7;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0x4000000000000000;
  *(v2 + 416) = xmmword_24F97EE40;
  *(v2 + 432) = _Q6;
  *(v2 + 448) = 0x4028000000000000;
  *(v2 + 456) = a1;
  *(v2 + 464) = a1;
  *(v2 + 472) = 1;
  *(v2 + 480) = result;
  *(v2 + 488) = v4;
  *(v2 + 496) = v5;
  *(v2 + 504) = v6;
  *(v2 + 512) = xmmword_24F976070;
  *(v2 + 528) = v7;
  *(v2 + 544) = 0;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0x4008000000000000;
  __asm { FMOV            V6.2D, #20.0 }

  *(v2 + 576) = xmmword_24F97EE50;
  *(v2 + 592) = _Q6;
  *(v2 + 608) = 0x4034000000000000;
  *(v2 + 616) = a1;
  *(v2 + 624) = a1;
  *(v2 + 632) = 1;
  *(v2 + 640) = result;
  *(v2 + 648) = v4;
  *(v2 + 656) = v5;
  *(v2 + 664) = v6;
  *(v2 + 672) = xmmword_24F976060;
  *(v2 + 688) = v7;
  *(v2 + 704) = 0;
  *(v2 + 710) = v18;
  *(v2 + 706) = v17;
  *(v2 + 712) = 0u;
  *(v2 + 728) = 0x4010000000000000;
  *(v2 + 736) = xmmword_24F97EE60;
  *(v2 + 752) = _Q6;
  *(v2 + 768) = 0x4034000000000000;
  *(v2 + 776) = a1;
  *(v2 + 784) = a1;
  *(v2 + 792) = 1;
  *(v2 + 796) = *&v16[3];
  *(v2 + 793) = *v16;
  *(v2 + 800) = result;
  *(v2 + 808) = v4;
  *(v2 + 816) = v5;
  *(v2 + 824) = v6;
  *(v2 + 832) = xmmword_24F976050;
  *(v2 + 848) = v7;
  *(v2 + 864) = 0;
  *(v2 + 870) = v21;
  *(v2 + 866) = v20;
  *(v2 + 872) = 0u;
  *(v2 + 888) = 0x4014000000000000;
  *(v2 + 896) = xmmword_24F97EE70;
  *(v2 + 912) = _Q6;
  *(v2 + 928) = 0x4034000000000000;
  *(v2 + 936) = a1;
  *(v2 + 944) = a1;
  *(v2 + 952) = 1;
  *(v2 + 956) = *&v19[3];
  *(v2 + 953) = *v19;
  *(v2 + 960) = result;
  *(v2 + 968) = v4;
  *(v2 + 976) = v5;
  *(v2 + 984) = v6;
  *(v2 + 992) = xmmword_24F976040;
  *(v2 + 1008) = v7;
  *(v2 + 1024) = 0;
  *(v2 + 1030) = v24;
  *(v2 + 1026) = v23;
  *(v2 + 1032) = 0u;
  *(v2 + 1048) = 0x4018000000000000;
  *(v2 + 1056) = xmmword_24F97EE80;
  *(v2 + 1072) = _Q6;
  *(v2 + 1088) = 0x4034000000000000;
  *(v2 + 1096) = a1;
  *(v2 + 1104) = a1;
  *(v2 + 1112) = 1;
  *(v2 + 1116) = *&v22[3];
  *(v2 + 1113) = *v22;
  *(v2 + 1120) = result;
  *(v2 + 1128) = v4;
  *(v2 + 1136) = v5;
  *(v2 + 1144) = v6;
  *(v2 + 1152) = xmmword_24F976030;
  *(v2 + 1168) = v7;
  *(v2 + 1184) = 0;
  *(v2 + 1190) = v27;
  *(v2 + 1186) = v26;
  *(v2 + 1192) = 0u;
  *(v2 + 1208) = 0x401C000000000000;
  *(v2 + 1216) = xmmword_24F97EE90;
  *(v2 + 1232) = _Q6;
  *(v2 + 1248) = 0x4034000000000000;
  *(v2 + 1256) = a1;
  *(v2 + 1264) = a1;
  *(v2 + 1272) = 1;
  *(v2 + 1276) = *&v25[3];
  *(v2 + 1273) = *v25;
  *(v2 + 1280) = result;
  *(v2 + 1288) = v4;
  *(v2 + 1296) = v5;
  *(v2 + 1304) = v6;
  return result;
}

char *SearchSegmentChangeAction.__allocating_init(title:targetSegmentId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC12GameStoreKit25SearchSegmentChangeAction_targetSegmentId];
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

void *SearchSegmentChangeAction.init(title:targetSegmentId:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v20 = (v6 + OBJC_IVAR____TtC12GameStoreKit25SearchSegmentChangeAction_targetSegmentId);
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

uint64_t SearchSegmentChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_24F9285B8();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v33 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC12GameStoreKit25SearchSegmentChangeAction_targetSegmentId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v9, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v9, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v24 = 0x6553746567726174;
    v25 = v27;
    v24[1] = 0xEF6449746E656D67;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t SearchSegmentChangeAction.targetSegmentId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25SearchSegmentChangeAction_targetSegmentId);

  return v1;
}

uint64_t SearchSegmentChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t SearchSegmentChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchSegmentChangeAction(uint64_t a1)
{
  result = qword_27F2275E8;
  if (!qword_27F2275E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAC9888(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for SmallBrickAccessoryType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920, &unk_24FA2EBB0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

uint64_t sub_24EAC9A94(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for SmallBrickAccessoryType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920, &unk_24FA2EBB0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}

void sub_24EAC9C8C(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SmallBrickAccessoryType(319);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
        if (v4 <= 0x3F)
        {
          sub_24E7CA640();
          if (v5 <= 0x3F)
          {
            sub_24EAC9E40(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
            if (v6 <= 0x3F)
            {
              sub_24EAC9E40(319, &qword_27F21C940, type metadata accessor for GradientBackground);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24EAC9DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EAC9E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_24EAC9E94(uint64_t a1)
{
  sub_24EAC9F1C(319);
  if (v1 <= 0x3F)
  {
    sub_24EAC9FA8();
    if (v2 <= 0x3F)
    {
      sub_24EAC9FF0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24EAC9F1C(uint64_t a1)
{
  if (!qword_27F227620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219538, &qword_24F950560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227628, &qword_24F97EF60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F227620);
    }
  }
}

void sub_24EAC9FA8()
{
  if (!qword_27F21F908)
  {
    v0 = sub_24F9289E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21F908);
    }
  }
}

uint64_t sub_24EAC9FF0()
{
  result = qword_27F227630;
  if (!qword_27F227630)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F227630);
  }

  return result;
}

uint64_t sub_24EACA020(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227730, &qword_24F97F298);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EACFC50();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    type metadata accessor for SmallBrick(0);
    v8[13] = 2;
    type metadata accessor for SmallBrickAccessoryType(0);
    sub_24EAC9DF8(&qword_27F227738, type metadata accessor for SmallBrickAccessoryType, &unk_24F97EF68);
    sub_24F92CD48();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F92CCB8();
    v8[9] = 6;
    sub_24F929608();
    sub_24EAC9DF8(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v8[8] = 7;
    type metadata accessor for GradientBackground(0);
    sub_24EAC9DF8(&qword_27F227740, type metadata accessor for GradientBackground, &protocol conformance descriptor for GradientBackground);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EACA440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C920, &unk_24FA2EBB0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v44 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v51);
  v49 = v44 - v7;
  v50 = type metadata accessor for SmallBrickAccessoryType(0);
  MEMORY[0x28223BE20](v50);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227718, &qword_24F97F290);
  v11 = *(v10 - 8);
  v52 = v10;
  v53 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v44 - v12;
  v14 = type metadata accessor for SmallBrick(0);
  MEMORY[0x28223BE20](v14);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 28)];
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v57 = v18;
  sub_24E61DA68(&v61, v18, qword_27F21B590, &unk_24F93BE30);
  v19 = v14[8];
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v56 = v19;
  v21(&v16[v19], 1, 1, v20);
  v22 = v14[10];
  v23 = sub_24F929608();
  v24 = *(*(v23 - 8) + 56);
  v58 = v22;
  v24(&v16[v22], 1, 1, v23);
  v25 = v14[11];
  v26 = type metadata accessor for GradientBackground(0);
  v27 = *(*(v26 - 8) + 56);
  v59 = v25;
  v27(&v16[v25], 1, 1, v26);
  v28 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_24EACFC50();
  v54 = v13;
  v29 = v55;
  sub_24F92D108();
  if (v29)
  {
    v31 = v56;
    v30 = v57;
    __swift_destroy_boxed_opaque_existential_1(v60);
    v32 = v58;
    sub_24E601704(v30, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v16[v31], &qword_27F215440, &unk_24F942BD0);
    sub_24E601704(&v16[v32], &qword_27F213E68, &unk_24F93BC80);
    return sub_24E601704(&v16[v59], &qword_27F21C920, &unk_24FA2EBB0);
  }

  else
  {
    v45 = v9;
    v44[1] = v23;
    v44[0] = v26;
    v55 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v64 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v33 = v62;
    *v16 = v61;
    *(v16 + 1) = v33;
    *(v16 + 4) = v63;
    LOBYTE(v61) = 1;
    v34 = sub_24F92CC28();
    v36 = v56;
    v35 = v57;
    *(v16 + 5) = v34;
    *(v16 + 6) = v37;
    LOBYTE(v61) = 2;
    sub_24EAC9DF8(&qword_27F227728, type metadata accessor for SmallBrickAccessoryType, &unk_24F97EF90);
    v38 = v45;
    sub_24F92CC68();
    v39 = v58;
    sub_24EACFCA4(v38, &v16[v55[6]], type metadata accessor for SmallBrickAccessoryType);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v64 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    v50 = 0;
    sub_24F92CC68();
    sub_24E61DA68(&v61, v35, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v61) = 4;
    sub_24E65CAA0();
    v40 = v49;
    sub_24F92CC68();
    sub_24E61DA68(v40, &v16[v36], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v61) = 5;
    v16[v55[9]] = sub_24F92CBD8();
    LOBYTE(v61) = 6;
    sub_24EAC9DF8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v41 = v48;
    sub_24F92CC18();
    sub_24E61DA68(v41, &v16[v39], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v61) = 7;
    sub_24EAC9DF8(&qword_27F21CAC0, type metadata accessor for GradientBackground, "\tԂ2؛\v");
    v42 = v47;
    sub_24F92CC18();
    (*(v53 + 8))(v54, v52);
    sub_24E61DA68(v42, &v16[v59], &qword_27F21C920, &unk_24FA2EBB0);
    sub_24EACFD0C(v16, v46, type metadata accessor for SmallBrick);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_24EACFD74(v16, type metadata accessor for SmallBrick);
  }
}

unint64_t sub_24EACADB8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0x4D747865746E6F63;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
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
    v2 = 25705;
    v3 = 0x726F737365636361;
    if (v1 != 2)
    {
      v3 = 0x6575676573;
    }

    if (*v0)
    {
      v2 = 0x656C746974;
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
}

uint64_t sub_24EACAEAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EAD07C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EACAED4(uint64_t a1)
{
  v2 = sub_24EACFC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EACAF10(uint64_t a1)
{
  v2 = sub_24EACFC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EACAF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24EACB03C(uint64_t a1)
{
  result = sub_24F925A28();
  qword_27F2275F8 = result;
  return result;
}

uint64_t sub_24EACB05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227650, &qword_24F97F128);
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227658, &qword_24F97F130);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-v9 - 8];
  *v6 = sub_24F9275F8();
  v6[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227660, &qword_24F97F138);
  sub_24EACB320(a1, v6 + *(v12 + 44));
  v13 = v6 + *(v4 + 36);
  *v13 = 0x3FFC71C71C71C71CLL;
  *(v13 + 4) = 0;
  v14 = type metadata accessor for SmallBrick(0);
  sub_24E60169C(a1 + *(v14 + 28), v21, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v21, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v15 = sub_24F9248C8();
  __swift_project_value_buffer(v15, qword_27F39F078);
  sub_24EACF798();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v6, &qword_27F227650, &qword_24F97F128);
  v16 = *(v14 + 44);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227680, &qword_24F97F148) + 36);
  v18 = type metadata accessor for ComponentBackgroundModifier(0);
  sub_24E60169C(a1 + v16, v17 + *(v18 + 40), &qword_27F21C920, &unk_24FA2EBB0);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0x402C000000000000;
  *(v17 + 40) = 0;
  return (*(v8 + 32))(a2, v10, v7);
}

uint64_t sub_24EACB320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227688, &qword_24F97F180);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v51 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227690, &qword_24F97F188) - 8;
  MEMORY[0x28223BE20](v56);
  v53 = &v51 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227698, &qword_24F97F190) - 8;
  MEMORY[0x28223BE20](v57);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v55 = &v51 - v11;
  v12 = type metadata accessor for SmallBrickAccessoryView(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276A0, &qword_24F97F198);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276A8, &qword_24F97F1A0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v52 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - v27;
  v29 = type metadata accessor for SmallBrick(0);
  sub_24EACFD0C(a1 + *(v29 + 24), v15, type metadata accessor for SmallBrickAccessoryType);
  *&v15[*(v13 + 28)] = 0x404F000000000000;
  sub_24F9275B8();
  sub_24F9242E8();
  sub_24EACFCA4(v15, v19, type metadata accessor for SmallBrickAccessoryView);
  v30 = &v19[*(v17 + 44)];
  v31 = v65;
  *(v30 + 4) = v64;
  *(v30 + 5) = v31;
  *(v30 + 6) = v66;
  v32 = v61;
  *v30 = v60;
  *(v30 + 1) = v32;
  v33 = v63;
  *(v30 + 2) = v62;
  *(v30 + 3) = v33;
  sub_24F9275B8();
  sub_24F9238C8();
  sub_24E6009C8(v19, v25, &qword_27F2276A0, &qword_24F97F198);
  v34 = &v25[*(v21 + 44)];
  v35 = v68;
  *v34 = v67;
  *(v34 + 1) = v35;
  *(v34 + 2) = v69;
  sub_24E6009C8(v25, v28, &qword_27F2276A8, &qword_24F97F1A0);
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0x4000000000000000;
  v5[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276B0, &qword_24F97F1A8);
  sub_24EACB944(a1, &v5[*(v36 + 44)]);
  sub_24F9275C8();
  sub_24F9242E8();
  v37 = v53;
  sub_24E6009C8(v5, v53, &qword_27F227688, &qword_24F97F180);
  v38 = (v37 + *(v56 + 44));
  v39 = v75;
  v38[4] = v74;
  v38[5] = v39;
  v38[6] = v76;
  v40 = v71;
  *v38 = v70;
  v38[1] = v40;
  v41 = v73;
  v38[2] = v72;
  v38[3] = v41;
  LOBYTE(v5) = sub_24F925808();
  v42 = v37;
  v43 = v54;
  sub_24E6009C8(v42, v54, &qword_27F227690, &qword_24F97F188);
  v44 = v43 + *(v57 + 44);
  *v44 = v5;
  *(v44 + 8) = xmmword_24F97EEF0;
  *(v44 + 24) = xmmword_24F958350;
  *(v44 + 40) = 0;
  v45 = v55;
  sub_24E6009C8(v43, v55, &qword_27F227698, &qword_24F97F190);
  v46 = v52;
  sub_24E60169C(v28, v52, &qword_27F2276A8, &qword_24F97F1A0);
  v47 = v58;
  sub_24E60169C(v45, v58, &qword_27F227698, &qword_24F97F190);
  v48 = v59;
  sub_24E60169C(v46, v59, &qword_27F2276A8, &qword_24F97F1A0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276B8, &qword_24F97F1B0);
  sub_24E60169C(v47, v48 + *(v49 + 48), &qword_27F227698, &qword_24F97F190);
  sub_24E601704(v45, &qword_27F227698, &qword_24F97F190);
  sub_24E601704(v28, &qword_27F2276A8, &qword_24F97F1A0);
  sub_24E601704(v47, &qword_27F227698, &qword_24F97F190);
  return sub_24E601704(v46, &qword_27F2276A8, &qword_24F97F1A0);
}

uint64_t sub_24EACB944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v67 = sub_24F9297D8();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F929888();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276C0, &unk_24F97F1B8);
  MEMORY[0x28223BE20](v71);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221C08, &unk_24F967D30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v62 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276C8, &qword_24F97F1C8);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = *(a1 + *(type metadata accessor for SmallBrick(0) + 36));
  if (v18 == 2 || (v18 & 1) == 0)
  {
    (*(v10 + 56))(v17, 1, 1, v9);
  }

  else
  {
    v68 = sub_24F927618();
    v63 = v19;
    v20 = sub_24F9251C8();
    v21 = v12 + *(v9 + 36);
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v23 = *MEMORY[0x277CE13B8];
    v24 = sub_24F927748();
    (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
    *v21 = v20;
    v25 = v68;
    *v12 = 0x4022000000000000;
    v12[1] = v25;
    v12[2] = v63;
    sub_24E6009C8(v12, v17, &qword_27F221C08, &unk_24F967D30);
    (*(v10 + 56))(v17, 0, 1, v9);
  }

  v68 = v17;
  v26 = *(a1 + 48);
  *&v84 = *(a1 + 40);
  *(&v84 + 1) = v26;
  sub_24E600AEC();

  v27 = sub_24F925E18();
  v29 = v28;
  v31 = v30;
  if (qword_27F210158 != -1)
  {
    swift_once();
  }

  v32 = sub_24F925C98();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_24E600B40(v27, v29, v31 & 1);

  KeyPath = swift_getKeyPath();
  v40 = swift_getKeyPath();
  v41 = v36 & 1;
  LOBYTE(v78) = v36 & 1;
  v42 = swift_getKeyPath();
  LOBYTE(v84) = 0;
  v43 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  *&v78 = v32;
  *(&v78 + 1) = v34;
  LOBYTE(v79) = v41;
  *(&v79 + 1) = v38;
  *&v80 = KeyPath;
  BYTE8(v80) = 1;
  *&v81 = v40;
  BYTE8(v81) = 0;
  *&v82 = v42;
  *(&v82 + 1) = 2;
  LOBYTE(v83) = 0;
  *(&v83 + 1) = v43;
  v45 = v64;
  v44 = v65;
  v46 = v67;
  (*(v65 + 104))(v64, *MEMORY[0x277D22050], v67);
  memset(v77, 0, 32);
  v76[3] = MEMORY[0x277D84030];
  v47 = swift_allocObject();
  v76[0] = v47;
  sub_24E60169C(a1, &v84, &qword_27F213F18, &qword_24F93BE20);
  v48 = v85;
  *(v47 + 16) = v84;
  *(v47 + 32) = v48;
  *(v47 + 48) = v86;
  v49 = v66;
  sub_24F929818();
  sub_24E601704(v77, &qword_27F2129B0, &unk_24F945320);
  (*(v44 + 8))(v45, v46);
  sub_24E601704(v76, &qword_27F2129B0, &unk_24F945320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2276D0, &qword_24F97F260);
  sub_24EACF970();
  v50 = v73;
  sub_24F925EE8();
  (*(v69 + 8))(v49, v70);
  v86 = v80;
  v87 = v81;
  v88 = v82;
  v89 = v83;
  v84 = v78;
  v85 = v79;
  sub_24E601704(&v84, &qword_27F2276D0, &qword_24F97F260);
  LOBYTE(v47) = sub_24F925858();
  sub_24F923318();
  v51 = v72;
  v52 = v50 + *(v71 + 36);
  *v52 = v47;
  *(v52 + 8) = v53;
  *(v52 + 16) = v54;
  *(v52 + 24) = v55;
  *(v52 + 32) = v56;
  *(v52 + 40) = 0;
  v57 = v68;
  sub_24E60169C(v68, v51, &qword_27F2276C8, &qword_24F97F1C8);
  v58 = v74;
  sub_24E60169C(v50, v74, &qword_27F2276C0, &unk_24F97F1B8);
  v59 = v75;
  sub_24E60169C(v51, v75, &qword_27F2276C8, &qword_24F97F1C8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227710, &unk_24F97F280);
  sub_24E60169C(v58, v59 + *(v60 + 48), &qword_27F2276C0, &unk_24F97F1B8);
  sub_24E601704(v50, &qword_27F2276C0, &unk_24F97F1B8);
  sub_24E601704(v57, &qword_27F2276C8, &qword_24F97F1C8);
  sub_24E601704(v58, &qword_27F2276C0, &unk_24F97F1B8);
  return sub_24E601704(v51, &qword_27F2276C8, &qword_24F97F1C8);
}

void sub_24EACC090(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227790, &qword_24F97F2C8);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227798, &qword_24F97F2D0);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = sub_24F9289E8();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2277A0, &qword_24F97F2D8);
  v40 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = &v36 - v10;
  v12 = type metadata accessor for SmallBrickAccessoryType(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2277A8, &qword_24F97F2E0);
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EACFDD4();
  sub_24F92D128();
  sub_24EACFD0C(v46, v14, type metadata accessor for SmallBrickAccessoryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v37;
      v19 = v38;
      (*(v37 + 32))(v9, v14, v38);
      LOBYTE(v50) = 1;
      sub_24EACFE7C();
      v21 = v49;
      sub_24F92CC98();
      sub_24EAC9DF8(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
      v22 = v42;
      sub_24F92CD48();
      (*(v41 + 8))(v6, v22);
      (*(v20 + 8))(v9, v19);
    }

    else
    {
      LOBYTE(v50) = 2;
      sub_24EACFE28();
      v30 = v39;
      v21 = v49;
      sub_24F92CC98();
      v31 = v44;
      sub_24F92CD08();

      (*(v43 + 8))(v30, v31);
    }

    (*(v48 + 8))(v17, v21);
  }

  else
  {
    v24 = *v14;
    v23 = v14[1];
    v25 = v14[2];
    v26 = v14[3];
    v27 = v14[5];
    v43 = v14[4];
    v44 = v27;
    v46 = v14[6];
    LOBYTE(v50) = 0;
    sub_24EACFED0();
    v28 = v49;
    sub_24F92CC98();
    v50 = v24;
    v56 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538, &qword_24F950560);
    sub_24EACFF24(&qword_27F2277B0, &qword_27F214060, MEMORY[0x277D21C50], MEMORY[0x277D83948]);
    v29 = v47;
    sub_24F92CD48();
    if (v29)
    {
      sub_24E6E8664(v23, v25, v26, v43, v44, v46);
      (*(v40 + 8))(v11, v45);
      (*(v48 + 8))(v17, v28);
    }

    else
    {

      v39 = v23;
      v50 = v23;
      v51 = v25;
      v41 = v25;
      v42 = v26;
      v33 = v43;
      v32 = v44;
      v52 = v26;
      v53 = v43;
      v34 = v46;
      v54 = v44;
      v55 = v46;
      v56 = 1;
      sub_24E6E8610();
      v35 = v45;
      sub_24F92CCF8();
      (*(v40 + 8))(v11, v35);
      (*(v48 + 8))(v17, v28);
      sub_24E6E8664(v39, v41, v42, v33, v32, v34);
    }
  }
}

uint64_t sub_24EACC764@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227748, &qword_24F97F2A0);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v55 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227750, &qword_24F97F2A8);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v66 = &v55 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227758, &qword_24F97F2B0);
  v63 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v65 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227760, &unk_24F97F2B8);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  v9 = type metadata accessor for SmallBrickAccessoryType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24EACFDD4();
  v22 = v70;
  sub_24F92D108();
  if (!v22)
  {
    v56 = v11;
    v70 = v14;
    v55 = v17;
    v24 = v65;
    v23 = v66;
    v57 = v20;
    v25 = v67;
    v26 = v69;
    v27 = sub_24F92CC78();
    v28 = (2 * *(v27 + 16)) | 1;
    v76 = v27;
    v77 = v27 + 32;
    v78 = 0;
    v79 = v28;
    v29 = sub_24E643434();
    if (v29 == 3 || v78 != v79 >> 1)
    {
      v34 = v8;
      v35 = v26;
      v36 = sub_24F92C918();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v38 = v9;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
      (*(v68 + 8))(v34, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        if (v29 == 1)
        {
          v30 = v9;
          LOBYTE(v73) = 1;
          sub_24EACFE7C();
          sub_24F92CBA8();
          v31 = v68;
          v65 = v30;
          sub_24F9289E8();
          sub_24EAC9DF8(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
          v32 = v70;
          v33 = v60;
          sub_24F92CC68();
          (*(v59 + 8))(v23, v33);
          (*(v31 + 8))(v8, v26);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v46 = v32;
        }

        else
        {
          LOBYTE(v73) = 2;
          sub_24EACFE28();
          v40 = v64;
          sub_24F92CBA8();
          v41 = v68;
          v42 = v62;
          v43 = sub_24F92CC28();
          v44 = v40;
          v49 = v48;
          v50 = v43;
          (*(v61 + 8))(v44, v42);
          (*(v41 + 8))(v8, v26);
          swift_unknownObjectRelease();
          v51 = v56;
          *v56 = v50;
          v51[1] = v49;
          swift_storeEnumTagMultiPayload();
          v46 = v51;
        }
      }

      else
      {
        LOBYTE(v73) = 0;
        sub_24EACFED0();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538, &qword_24F950560);
        LOBYTE(v73) = 0;
        sub_24EACFF24(&qword_27F227788, &qword_27F214018, MEMORY[0x277D21C60], MEMORY[0x277D83978]);
        v45 = v58;
        sub_24F92CC68();
        v47 = v80;
        v72 = 1;
        sub_24E6E8474();
        sub_24F92CC18();
        (*(v63 + 8))(v24, v45);
        (*(v68 + 8))(v8, v69);
        swift_unknownObjectRelease();
        v52 = v55;
        *v55 = v47;
        v53 = v74;
        *(v52 + 1) = v73;
        *(v52 + 3) = v53;
        *(v52 + 5) = v75;
        swift_storeEnumTagMultiPayload();
        v46 = v52;
      }

      v54 = v57;
      sub_24EACFCA4(v46, v57, type metadata accessor for SmallBrickAccessoryType);
      sub_24EACFCA4(v54, v25, type metadata accessor for SmallBrickAccessoryType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t sub_24EACD0B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924B38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  (*(v3 + 104))(v5, *MEMORY[0x277CE0118], v2);
  v6 = sub_24F924258();
  *(a1 + 64) = v6;
  *(a1 + 72) = sub_24EAC9DF8(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  (*(v3 + 16))(boxed_opaque_existential_1 + *(v6 + 20), v5, v2);
  __asm { FMOV            V0.2D, #14.0 }

  *boxed_opaque_existential_1 = _Q0;
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24EACD230(uint64_t a1)
{
  sub_24EACD72C();

  return sub_24F9218E8();
}

unint64_t sub_24EACD274()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6349656D6167;
  }
}

uint64_t sub_24EACD2D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EAD0A64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EACD2FC(uint64_t a1)
{
  v2 = sub_24EACFDD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EACD338(uint64_t a1)
{
  v2 = sub_24EACFDD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EACD374(uint64_t a1)
{
  v2 = sub_24EACFE7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EACD3B0(uint64_t a1)
{
  v2 = sub_24EACFE7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EACD3EC()
{
  if (*v0)
  {
    return 0xD000000000000023;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24EACD42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA45EC0 == a2)
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

uint64_t sub_24EACD510(uint64_t a1)
{
  v2 = sub_24EACFED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EACD54C(uint64_t a1)
{
  v2 = sub_24EACFED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EACD5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL)
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

uint64_t sub_24EACD634(uint64_t a1)
{
  v2 = sub_24EACFE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EACD670(uint64_t a1)
{
  v2 = sub_24EACFE28();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EACD72C()
{
  result = qword_27F227638;
  if (!qword_27F227638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227638);
  }

  return result;
}

unint64_t sub_24EACD7CC()
{
  result = qword_27F227648;
  if (!qword_27F227648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227648);
  }

  return result;
}

uint64_t sub_24EACD884@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v144 = a1;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227848, &unk_24F97F8F0);
  MEMORY[0x28223BE20](v142);
  v132 = &v113 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410, &unk_24F9576A0);
  MEMORY[0x28223BE20](v4 - 8);
  v131 = &v113 - v5;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227850, &qword_24F97F900);
  MEMORY[0x28223BE20](v141);
  v145 = &v113 - v6;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227858, &qword_24F97F908);
  MEMORY[0x28223BE20](v137);
  v138 = &v113 - v7;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227860, &unk_24F97F910);
  MEMORY[0x28223BE20](v143);
  v139 = &v113 - v8;
  v125 = sub_24F929888();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v120 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v133 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](*(&v133 + 1));
  v130 = &v113 - v10;
  *&v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227868, &qword_24F97F920);
  MEMORY[0x28223BE20](v133);
  v129 = &v113 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227870, &qword_24F97F928);
  v121 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v119 = &v113 - v12;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227878, &qword_24F97F930);
  v123 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v122 = &v113 - v13;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227880, &qword_24F97F938);
  MEMORY[0x28223BE20](v126);
  v15 = &v113 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227888, &qword_24F97F940);
  MEMORY[0x28223BE20](v16);
  v18 = &v113 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227890, &qword_24F97F948);
  v118 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v113 - v20;
  v135 = sub_24F9289E8();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v140 = &v113 - v25;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227898, &qword_24F97F950);
  MEMORY[0x28223BE20](v136);
  v27 = &v113 - v26;
  v28 = type metadata accessor for SmallBrickAccessoryType(0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24EACFD0C(v2, v30, type metadata accessor for SmallBrickAccessoryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = v134;
      v33 = v135;
      (*(v134 + 32))();
      type metadata accessor for SmallBrickAccessoryView(0);
      sub_24F9289C8();
      sub_24EAC9DF8(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
      sub_24EAD0B88();
      v34 = v132;
      sub_24F925ED8();
      v35 = *(v32 + 8);
      v35(v23, v33);
      v36 = sub_24F925808();
      sub_24F923318();
      v37 = v34 + *(v142 + 36);
      *v37 = v36;
      *(v37 + 8) = v38;
      *(v37 + 16) = v39;
      *(v37 + 24) = v40;
      *(v37 + 32) = v41;
      *(v37 + 40) = 0;
      sub_24E60169C(v34, v145, &qword_27F227848, &unk_24F97F8F0);
      swift_storeEnumTagMultiPayload();
      sub_24EAD0BDC();
      sub_24EAD10D4();
      sub_24F924E28();
      sub_24E601704(v34, &qword_27F227848, &unk_24F97F8F0);
      return (v35)(v140, v33);
    }

    sub_24F926E48();
    v82 = v139;
    v83 = v131;
    sub_24F924CF8();
    v84 = sub_24F924D08();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
    v85 = sub_24F926E58();

    sub_24E601704(v83, &qword_27F214410, &unk_24F9576A0);
    v86 = sub_24F925988();
    KeyPath = swift_getKeyPath();
    sub_24F927638();
    sub_24F9238C8();
    *&v148 = v85;
    *(&v148 + 1) = KeyPath;
    *&v149 = v86;
    v88 = v151;
    v89 = v138;
    *(v138 + 32) = v150;
    *(v89 + 48) = v88;
    *(v89 + 64) = v152;
    v90 = v149;
    *v89 = v148;
    *(v89 + 16) = v90;
    swift_storeEnumTagMultiPayload();
    sub_24E60169C(&v148, &v146, &qword_27F2128C8, &unk_24F939720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128C8, &unk_24F939720);
    sub_24EAD0C68();
    sub_24EAD1048();
    sub_24F924E28();
    sub_24E60169C(v82, v145, &qword_27F227860, &unk_24F97F910);
    swift_storeEnumTagMultiPayload();
    sub_24EAD0BDC();
    sub_24EAD10D4();
    sub_24F924E28();
    sub_24E601704(&v148, &qword_27F2128C8, &unk_24F939720);
    v91 = v82;
    v92 = &qword_27F227860;
    v93 = &unk_24F97F910;
    return sub_24E601704(v91, v92, v93);
  }

  v114 = v18;
  v115 = v21;
  v43 = v129;
  v44 = v130;
  v116 = v16;
  v131 = v19;
  v117 = v15;
  v132 = v27;
  v45 = *v30;
  v46 = v30[4];
  if (v46)
  {
    v47 = v30[5];
    v48 = v30[6];
    v49 = v30[2];
    v50 = v30[3];
    v51 = v30[1];

    sub_24E6E8664(v51, v49, v50, v46, v47, v48);
    if (v48)
    {

      sub_24F8188E0(v47, v48);

      sub_24F3E5448(MEMORY[0x277D84F90]);
      v52 = v140;
      sub_24F928948();
      sub_24F927618();
      sub_24F9238C8();
      v53 = v114;
      (*(v134 + 16))(v114, v52, v135);
      v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC8, &unk_24F949F20) + 36));
      v55 = v149;
      *v54 = v148;
      v54[1] = v55;
      v54[2] = v150;
      v56 = sub_24F925838();
      sub_24F923318();
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v65 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218AC0, &qword_24F949F18) + 36);
      *v65 = v56;
      *(v65 + 8) = v58;
      *(v65 + 16) = v60;
      *(v65 + 24) = v62;
      *(v65 + 32) = v64;
      *(v65 + 40) = 0;
      v66 = sub_24F925818();
      sub_24F923318();
      v67 = v116;
      v68 = v53 + *(v116 + 36);
      *v68 = v66;
      *(v68 + 8) = v69;
      *(v68 + 16) = v70;
      *(v68 + 24) = v71;
      *(v68 + 32) = v72;
      *(v68 + 40) = 0;
      v73 = sub_24EAD0E24();
      v74 = sub_24EAD0F3C();
      v75 = v115;
      sub_24F925ED8();
      sub_24E601704(v53, &qword_27F227888, &qword_24F97F940);
      v76 = v118;
      v77 = v131;
      (*(v118 + 16))(v117, v75, v131);
      swift_storeEnumTagMultiPayload();
      *&v146 = v67;
      *(&v146 + 1) = &type metadata for SmallBrickMediaArtworkStyle;
      *&v147 = v73;
      *(&v147 + 1) = v74;
      swift_getOpaqueTypeConformance2();
      v78 = sub_24EAD0F90();
      v79 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
      v146 = v133;
      *&v147 = v78;
      *(&v147 + 1) = v79;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v146 = v127;
      *(&v146 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v81 = v132;
      sub_24F924E28();
      (*(v76 + 8))(v75, v77);
      (*(v134 + 8))(v140, v135);
LABEL_10:
      sub_24E60169C(v81, v138, &qword_27F227898, &qword_24F97F950);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128C8, &unk_24F939720);
      sub_24EAD0C68();
      sub_24EAD1048();
      v112 = v139;
      sub_24F924E28();
      sub_24E60169C(v112, v145, &qword_27F227860, &unk_24F97F910);
      swift_storeEnumTagMultiPayload();
      sub_24EAD0BDC();
      sub_24EAD10D4();
      sub_24F924E28();
      sub_24E601704(v112, &qword_27F227860, &unk_24F97F910);
      v91 = v81;
      v92 = &qword_27F227898;
      v93 = &qword_24F97F950;
      return sub_24E601704(v91, v92, v93);
    }
  }

  v94 = v43;
  *v43 = sub_24F9249A8();
  *(v43 + 1) = 0xC024000000000000;
  v43[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2278F0, &unk_24F97F998);
  sub_24EACEC20(v45);

  v95 = sub_24F925808();
  v96 = v133;
  v97 = v94 + *(v133 + 36);
  *v97 = v95;
  *(v97 + 8) = 0x4028000000000000;
  *(v97 + 16) = 0;
  *(v97 + 24) = 0;
  *(v97 + 32) = 0x402C000000000000;
  *(v97 + 40) = 0;
  v98 = *MEMORY[0x277CDFA10];
  v99 = sub_24F923E98();
  (*(*(v99 - 8) + 104))(v44, v98, v99);
  sub_24EAC9DF8(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24F92AFF8();
  v100 = *(&v133 + 1);
  if (result)
  {
    v101 = sub_24EAD0F90();
    v102 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    v103 = v119;
    sub_24F9263F8();
    sub_24E601704(v44, &qword_27F21CCC8, &qword_24F957520);
    sub_24E601704(v94, &qword_27F227868, &qword_24F97F920);
    v148 = 0u;
    v149 = 0u;
    v147 = 0u;
    v146 = 0u;
    v104 = v120;
    sub_24F929828();
    sub_24E601704(&v146, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(&v148, &qword_27F2129B0, &unk_24F945320);
    *&v148 = v96;
    *(&v148 + 1) = v100;
    *&v149 = v101;
    *(&v149 + 1) = v102;
    v105 = swift_getOpaqueTypeConformance2();
    v106 = v122;
    v107 = v127;
    sub_24F925EE8();
    (*(v124 + 8))(v104, v125);
    (*(v121 + 8))(v103, v107);
    v108 = v123;
    v109 = v128;
    (*(v123 + 16))(v117, v106, v128);
    swift_storeEnumTagMultiPayload();
    v110 = sub_24EAD0E24();
    v111 = sub_24EAD0F3C();
    *&v148 = v116;
    *(&v148 + 1) = &type metadata for SmallBrickMediaArtworkStyle;
    *&v149 = v110;
    *(&v149 + 1) = v111;
    swift_getOpaqueTypeConformance2();
    *&v148 = v107;
    *(&v148 + 1) = v105;
    swift_getOpaqueTypeConformance2();
    v81 = v132;
    sub_24F924E28();
    (*(v108 + 8))(v106, v109);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EACEC20(uint64_t a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2278F8, &qword_24F97F9C8);
  sub_24E62A6CC();
  sub_24EAD1224();
  return sub_24F927228();
}

uint64_t sub_24EACED20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219588, &unk_24F97F9F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = *a1;
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 >= *(a2 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = sub_24F9289E8();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, v11);
  v3 = 1;
  (*(v12 + 56))(v9, 0, 1, v11);
  v13 = type metadata accessor for GameIcon(0);
  v14 = v13[8];
  *&v9[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v9[v13[5]] = 1;
  v9[v13[6]] = 1;
  v9[v13[7]] = 0;
  if (qword_27F211968 != -1)
  {
LABEL_7:
    swift_once();
  }

  v15 = xmmword_27F254460;
  v16 = qword_27F254470;
  v17 = qword_27F254478;
  v18 = sub_24F927618();
  v20 = v19;
  LOBYTE(v29) = v3;
  *(&v29 + 1) = 0;
  *&v30 = 0;
  *(&v30 + 1) = v17;
  *v31 = v16;
  *&v31[8] = v15;
  *&v31[24] = v18;
  v32 = v19;
  v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219598, &unk_24F94C490) + 36)];
  v22 = *&v31[16];
  *(v21 + 2) = *v31;
  *(v21 + 3) = v22;
  *(v21 + 8) = v32;
  v23 = v30;
  *v21 = v29;
  *(v21 + 1) = v23;
  v33[0] = v3;
  v34 = 0;
  v35 = 0;
  v36 = v17;
  v37 = v16;
  v38 = v15;
  v39 = v18;
  v40 = v20;

  sub_24E60169C(&v29, v28, &qword_27F2195A8, &qword_24F97FA00);
  sub_24E601704(v33, &qword_27F2195A8, &qword_24F97FA00);
  sub_24F927618();
  sub_24F9238C8();
  v24 = &v9[*(v7 + 36)];
  v25 = v28[1];
  *v24 = v28[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v28[2];
  sub_24EACF088(v10, v9, a3);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2278F8, &qword_24F97F9C8) + 36)) = -v10;
  return sub_24E601704(v9, &qword_27F219588, &unk_24F97F9F0);
}

uint64_t sub_24EACF088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227950, &unk_24F97FA08);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227958, &qword_24F97FA50);
  MEMORY[0x28223BE20](v34);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227960, &qword_24F97FA58);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227930, &qword_24F97F9E0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227940, &qword_24F97F9E8);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  if (a1 == 1)
  {
    sub_24F9278A8();
    v27 = v26;
    v29 = v28;
    sub_24E60169C(v33, v6, &qword_27F219588, &unk_24F97F9F0);
    v30 = &v6[*(v15 + 36)];
    *v30 = 0x3FC657184AE74487;
    *(v30 + 1) = v27;
    *(v30 + 2) = v29;
    *&v6[*(v4 + 36)] = xmmword_24F97EF00;
    v23 = &unk_24F97FA08;
    sub_24E60169C(v6, v11, &qword_27F227950, &unk_24F97FA08);
    swift_storeEnumTagMultiPayload();
    sub_24EAD1478();
    sub_24EAD1504();
    sub_24F924E28();
    sub_24E60169C(v14, v8, &qword_27F227930, &qword_24F97F9E0);
    swift_storeEnumTagMultiPayload();
    sub_24EAD13EC();
    sub_24F924E28();
    sub_24E601704(v14, &qword_27F227930, &qword_24F97F9E0);
    v24 = v6;
    v25 = &qword_27F227950;
    return sub_24E601704(v24, v25, v23);
  }

  if (!a1)
  {
    sub_24F9278A8();
    v19 = v18;
    v21 = v20;
    sub_24E60169C(v33, v17, &qword_27F219588, &unk_24F97F9F0);
    v22 = &v17[*(v15 + 36)];
    *v22 = 0xBFC657184AE74487;
    *(v22 + 1) = v19;
    *(v22 + 2) = v21;
    v23 = &qword_24F97F9E8;
    sub_24E60169C(v17, v11, &qword_27F227940, &qword_24F97F9E8);
    swift_storeEnumTagMultiPayload();
    sub_24EAD1478();
    sub_24EAD1504();
    sub_24F924E28();
    sub_24E60169C(v14, v8, &qword_27F227930, &qword_24F97F9E0);
    swift_storeEnumTagMultiPayload();
    sub_24EAD13EC();
    sub_24F924E28();
    sub_24E601704(v14, &qword_27F227930, &qword_24F97F9E0);
    v24 = v17;
    v25 = &qword_27F227940;
    return sub_24E601704(v24, v25, v23);
  }

  swift_storeEnumTagMultiPayload();
  sub_24EAD13EC();
  return sub_24F924E28();
}

uint64_t sub_24EACF51C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24F921C08();
  if (result)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v7 = sub_24F926E88();

    result = (*(v3 + 8))(v5, v2);
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_24EACF658@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926E08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24F921C08();
  if (result)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v7 = sub_24F926E88();

    result = (*(v3 + 8))(v5, v2);
    v8 = 16777217;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  return result;
}

unint64_t sub_24EACF798()
{
  result = qword_27F227668;
  if (!qword_27F227668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227650, &qword_24F97F128);
    sub_24E602068(&qword_27F227670, &qword_27F227678, &qword_24F97F140, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227668);
  }

  return result;
}

uint64_t sub_24EACF878@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9245E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EACF8A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9245E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EACF938()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_24EACF970()
{
  result = qword_27F2276D8;
  if (!qword_27F2276D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2276D0, &qword_24F97F260);
    sub_24EACFA28();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2276D8);
  }

  return result;
}

unint64_t sub_24EACFA28()
{
  result = qword_27F2276E0;
  if (!qword_27F2276E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2276E8, &qword_24F97F268);
    sub_24EACFAE0();
    sub_24E602068(&qword_27F214778, &qword_27F214780, &qword_24F93D800, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2276E0);
  }

  return result;
}

unint64_t sub_24EACFAE0()
{
  result = qword_27F2276F0;
  if (!qword_27F2276F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2276F8, &qword_24F97F270);
    sub_24EACFB98();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2276F0);
  }

  return result;
}

unint64_t sub_24EACFB98()
{
  result = qword_27F227700;
  if (!qword_27F227700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227708, &qword_24F97F278);
    sub_24E602068(&qword_27F21EE38, &qword_27F21EE40, &qword_24F95E5A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227700);
  }

  return result;
}

unint64_t sub_24EACFC50()
{
  result = qword_27F227720;
  if (!qword_27F227720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227720);
  }

  return result;
}

uint64_t sub_24EACFCA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EACFD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EACFD74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EACFDD4()
{
  result = qword_27F227768;
  if (!qword_27F227768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227768);
  }

  return result;
}

unint64_t sub_24EACFE28()
{
  result = qword_27F227770;
  if (!qword_27F227770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227770);
  }

  return result;
}

unint64_t sub_24EACFE7C()
{
  result = qword_27F227778;
  if (!qword_27F227778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227778);
  }

  return result;
}

unint64_t sub_24EACFED0()
{
  result = qword_27F227780;
  if (!qword_27F227780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227780);
  }

  return result;
}

uint64_t sub_24EACFF24(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219538, &qword_24F950560);
    sub_24EAC9DF8(a2, MEMORY[0x277D21C48], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EAD0024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallBrickAccessoryType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EAD00A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallBrickAccessoryType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EAD0114(uint64_t a1)
{
  result = type metadata accessor for SmallBrickAccessoryType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EAD018C()
{
  result = qword_27F2277C8;
  if (!qword_27F2277C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227680, &qword_24F97F148);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227650, &qword_24F97F128);
    sub_24EACF798();
    swift_getOpaqueTypeConformance2();
    sub_24EAC9DF8(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2277C8);
  }

  return result;
}

unint64_t sub_24EAD02A4()
{
  result = qword_27F2277D0;
  if (!qword_27F2277D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2277D0);
  }

  return result;
}

unint64_t sub_24EAD02FC()
{
  result = qword_27F2277D8;
  if (!qword_27F2277D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2277D8);
  }

  return result;
}

unint64_t sub_24EAD0354()
{
  result = qword_27F2277E0;
  if (!qword_27F2277E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2277E0);
  }

  return result;
}

unint64_t sub_24EAD03AC()
{
  result = qword_27F2277E8;
  if (!qword_27F2277E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2277E8);
  }

  return result;
}

unint64_t sub_24EAD0404()
{
  result = qword_27F2277F0;
  if (!qword_27F2277F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2277F0);
  }

  return result;
}

unint64_t sub_24EAD045C()
{
  result = qword_27F2277F8;
  if (!qword_27F2277F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2277F8);
  }

  return result;
}

unint64_t sub_24EAD04B4()
{
  result = qword_27F227800;
  if (!qword_27F227800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227800);
  }

  return result;
}

unint64_t sub_24EAD050C()
{
  result = qword_27F227808;
  if (!qword_27F227808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227808);
  }

  return result;
}

unint64_t sub_24EAD0564()
{
  result = qword_27F227810;
  if (!qword_27F227810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227810);
  }

  return result;
}

unint64_t sub_24EAD05BC()
{
  result = qword_27F227818;
  if (!qword_27F227818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227818);
  }

  return result;
}

unint64_t sub_24EAD0614()
{
  result = qword_27F227820;
  if (!qword_27F227820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227820);
  }

  return result;
}

unint64_t sub_24EAD066C()
{
  result = qword_27F227828;
  if (!qword_27F227828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227828);
  }

  return result;
}

unint64_t sub_24EAD06C4()
{
  result = qword_27F227830;
  if (!qword_27F227830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227830);
  }

  return result;
}

unint64_t sub_24EAD071C()
{
  result = qword_27F227838;
  if (!qword_27F227838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227838);
  }

  return result;
}

unint64_t sub_24EAD0774()
{
  result = qword_27F227840;
  if (!qword_27F227840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227840);
  }

  return result;
}

uint64_t sub_24EAD07C8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_24F92CE08() & 1) != 0)
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

  else if (a1 == 0xD000000000000011 && 0x800000024FA51D90 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA472E0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24EAD0A64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6349656D6167 && a2 == 0xE900000000000073;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA51DB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000)
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

unint64_t sub_24EAD0B88()
{
  result = qword_27F2278A0;
  if (!qword_27F2278A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2278A0);
  }

  return result;
}

unint64_t sub_24EAD0BDC()
{
  result = qword_27F2278A8;
  if (!qword_27F2278A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227860, &unk_24F97F910);
    sub_24EAD0C68();
    sub_24EAD1048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2278A8);
  }

  return result;
}

unint64_t sub_24EAD0C68()
{
  result = qword_27F2278B0;
  if (!qword_27F2278B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227898, &qword_24F97F950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227888, &qword_24F97F940);
    sub_24EAD0E24();
    sub_24EAD0F3C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227870, &qword_24F97F928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227868, &qword_24F97F920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8, &qword_24F957520);
    sub_24EAD0F90();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2278B0);
  }

  return result;
}

unint64_t sub_24EAD0E24()
{
  result = qword_27F2278B8;
  if (!qword_27F2278B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227888, &qword_24F97F940);
    sub_24EAD0EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2278B8);
  }

  return result;
}

unint64_t sub_24EAD0EB0()
{
  result = qword_27F218AD0;
  if (!qword_27F218AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218AC0, &qword_24F949F18);
    sub_24E6E94A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F218AD0);
  }

  return result;
}

unint64_t sub_24EAD0F3C()
{
  result = qword_27F2278C0;
  if (!qword_27F2278C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2278C0);
  }

  return result;
}

unint64_t sub_24EAD0F90()
{
  result = qword_27F2278C8;
  if (!qword_27F2278C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227868, &qword_24F97F920);
    sub_24E602068(&qword_27F2278D0, &qword_27F2278D8, &unk_24F97F958, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2278C8);
  }

  return result;
}

unint64_t sub_24EAD1048()
{
  result = qword_27F2278E0;
  if (!qword_27F2278E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2128C8, &unk_24F939720);
    sub_24E60156C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2278E0);
  }

  return result;
}

unint64_t sub_24EAD10D4()
{
  result = qword_27F2278E8;
  if (!qword_27F2278E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227848, &unk_24F97F8F0);
    sub_24F9289E8();
    sub_24EAC9DF8(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
    sub_24EAD0B88();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2278E8);
  }

  return result;
}

uint64_t sub_24EAD11E4()
{

  return swift_deallocObject();
}

unint64_t sub_24EAD1224()
{
  result = qword_27F227900;
  if (!qword_27F227900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2278F8, &qword_24F97F9C8);
    sub_24EAD12DC();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8, &qword_24F94C4A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227900);
  }

  return result;
}

unint64_t sub_24EAD12DC()
{
  result = qword_27F227908;
  if (!qword_27F227908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227910, &qword_24F97F9D0);
    sub_24EAD1360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227908);
  }

  return result;
}

unint64_t sub_24EAD1360()
{
  result = qword_27F227918;
  if (!qword_27F227918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227920, &qword_24F97F9D8);
    sub_24EAD13EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227918);
  }

  return result;
}

unint64_t sub_24EAD13EC()
{
  result = qword_27F227928;
  if (!qword_27F227928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227930, &qword_24F97F9E0);
    sub_24EAD1478();
    sub_24EAD1504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227928);
  }

  return result;
}

unint64_t sub_24EAD1478()
{
  result = qword_27F227938;
  if (!qword_27F227938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227940, &qword_24F97F9E8);
    sub_24E704880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227938);
  }

  return result;
}

unint64_t sub_24EAD1504()
{
  result = qword_27F227948;
  if (!qword_27F227948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227950, &unk_24F97FA08);
    sub_24EAD1478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227948);
  }

  return result;
}

unint64_t sub_24EAD15BC()
{
  result = qword_27F227968;
  if (!qword_27F227968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227970, &qword_24F97FAA0);
    sub_24EAD0BDC();
    sub_24EAD10D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227968);
  }

  return result;
}

unint64_t sub_24EAD1684()
{
  result = qword_27F227978;
  if (!qword_27F227978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227980, &qword_24F97FB28);
    sub_24EAD1708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227978);
  }

  return result;
}

unint64_t sub_24EAD1708()
{
  result = qword_27F227988;
  if (!qword_27F227988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227990, &unk_24F97FB30);
    sub_24E6E97A8();
    sub_24E602068(&qword_27F2263F8, &qword_27F226400, &qword_24F97FB40, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227988);
  }

  return result;
}

unint64_t sub_24EAD17C4()
{
  result = qword_27F227998;
  if (!qword_27F227998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2279A0, &unk_24F97FB48);
    sub_24E6E97A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227998);
  }

  return result;
}

uint64_t ReportConcernReason.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReportConcernReason.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReportConcernReason.uppercaseName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ReportConcernReason.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a3;
  v39 = a2;
  v4 = 0x64496E6F73616572;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_24F928398();
  v36 = sub_24F928348();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v14, v5);
  if (v16)
  {
    v38 = v16;
    v4 = 1701667182;
    sub_24F928398();
    v18 = sub_24F928348();
    v20 = v19;
    v17(v11, v5);
    if (v20)
    {
      v35 = v18;
      v4 = 0x7361637265707075;
      sub_24F928398();
      v21 = sub_24F928348();
      v23 = v22;
      v17(v8, v5);
      if (v23)
      {
        v24 = sub_24F9285B8();
        (*(*(v24 - 8) + 8))(v39, v24);
        result = (v17)(a1, v5);
        v26 = v37;
        v27 = v38;
        *v37 = v36;
        v26[1] = v27;
        v26[2] = v35;
        v26[3] = v20;
        v26[4] = v21;
        v26[5] = v23;
        return result;
      }

      v30 = 0xED0000656D614E65;
      v28 = v17;
    }

    else
    {
      v30 = 0xE400000000000000;
      v28 = v17;
    }

    v29 = v30;
  }

  else
  {
    v28 = v17;
    v29 = 0xE800000000000000;
  }

  v31 = sub_24F92AC38();
  sub_24E8F2E6C();
  swift_allocError();
  *v32 = v4;
  v32[1] = v29;
  v32[2] = &type metadata for ReportConcernReason;
  (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
  swift_willThrow();
  v33 = sub_24F9285B8();
  (*(*(v33 - 8) + 8))(v39, v33);
  return v28(a1, v5);
}

uint64_t static ReportConcernReason.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24F92CE08() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_24F92CE08();
}

uint64_t ReportConcernReason.hash(into:)(uint64_t a1)
{
  sub_24F92B218();
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t ReportConcernReason.hashValue.getter()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EAD1E50()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EAD1ED4(uint64_t a1)
{
  sub_24F92B218();
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t sub_24EAD1F40()
{
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EAD1FC0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24F92CE08() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_24F92CE08();
}

GameStoreKit::ReportConcernAction::Parameter_optional __swiftcall ReportConcernAction.Parameter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t ReportConcernAction.Parameter.rawValue.getter()
{
  if (*v0)
  {
    return 0x74616E616C707865;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

uint64_t sub_24EAD216C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74616E616C707865;
  }

  else
  {
    v3 = 0x64657463656C6573;
  }

  if (v2)
  {
    v4 = 0xEE006E6F73616552;
  }

  else
  {
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v5 = 0x74616E616C707865;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v6 = 0xEB000000006E6F69;
  }

  else
  {
    v6 = 0xEE006E6F73616552;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EAD2228()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAD22C0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EAD2344()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAD23D8@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24EAD2438(uint64_t *a1@<X8>)
{
  v2 = 0x64657463656C6573;
  if (*v1)
  {
    v2 = 0x74616E616C707865;
  }

  v3 = 0xEE006E6F73616552;
  if (*v1)
  {
    v3 = 0xEB000000006E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

char *ReportConcernAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v80 = a2;
  v74 = v4;
  v6 = *v4;
  v72 = v3;
  v73 = v6;
  v7 = sub_24F9285B8();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = v62 - v10;
  MEMORY[0x28223BE20](v11);
  v69 = v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v62 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v65 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = v62 - v20;
  MEMORY[0x28223BE20](v21);
  v68 = (v62 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = v62 - v24;
  v26 = sub_24F92AC28();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = v62 - v31;
  v78 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v66 = v17;
  v33 = *(v17 + 8);
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v79 = v16;
  v33(v34, v16);
  v37 = (*(v27 + 48))(v15, 1, v35);
  v75 = v33;
  if (v37 == 1)
  {
    sub_24E601704(v15, &qword_27F2213B0, &qword_24F965EC0);
LABEL_5:
    v38 = v76;
    v39 = v74;
    v40 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v41 = 0x736E6F73616572;
    v41[1] = 0xE700000000000000;
    v41[2] = v73;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v38 + 8))(v80, v77);
    v75(v78, v79);
    goto LABEL_6;
  }

  (*(v27 + 32))(v32, v15, v35);
  if (sub_24F92ABF8())
  {
    (*(v27 + 8))(v32, v35);
    goto LABEL_5;
  }

  (*(v27 + 16))(v29, v32, v35);
  v43 = v77;
  v44 = v76 + 16;
  v64 = *(v76 + 16);
  v64(v69, v80, v77);
  sub_24EAD2CA8();
  v45 = sub_24F92B6A8();
  v62[2] = OBJC_IVAR____TtC12GameStoreKit19ReportConcernAction_reasons;
  v63 = v32;
  v39 = v74;
  *&v74[OBJC_IVAR____TtC12GameStoreKit19ReportConcernAction_reasons] = v45;
  v46 = v68;
  sub_24F928398();
  v47 = sub_24F928348();
  v69 = v35;
  v49 = v48;
  v75(v46, v79);
  v50 = &v39[OBJC_IVAR____TtC12GameStoreKit19ReportConcernAction_explanation];
  *v50 = v47;
  v50[1] = v49;
  v68 = v50;
  v51 = v70;
  sub_24F928398();
  v52 = v71;
  v62[1] = v44;
  v64(v71, v80, v43);
  type metadata accessor for HttpTemplateAction(0);
  swift_allocObject();
  v53 = v72;
  v54 = HttpTemplateAction.init(deserializing:using:)(v51, v52);
  if (!v53)
  {
    *&v39[OBJC_IVAR____TtC12GameStoreKit19ReportConcernAction_sendAction] = v54;
    v55 = v65;
    v56 = v78;
    (*(v66 + 16))(v65, v78, v79);
    v57 = v67;
    v58 = v80;
    v59 = v77;
    v64(v67, v80, v77);
    v60 = Action.init(deserializing:using:)(v55, v57);
    v61 = v79;
    v39 = v60;
    (*(v76 + 8))(v58, v59);
    v75(v56, v61);
    (*(v36 + 8))(v63, v69);
    return v39;
  }

  (*(v76 + 8))(v80, v77);
  v75(v78, v79);
  (*(v36 + 8))(v63, v69);

LABEL_6:
  swift_deallocPartialClassInstance();
  return v39;
}

unint64_t sub_24EAD2CA8()
{
  result = qword_27F2279A8;
  if (!qword_27F2279A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2279A8);
  }

  return result;
}

uint64_t ReportConcernAction.explanation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19ReportConcernAction_explanation);

  return v1;
}

double sub_24EAD2D88()
{

  return result;
}

uint64_t ReportConcernAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ReportConcernAction.__deallocating_deinit()
{
  ReportConcernAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EAD2F3C()
{
  result = qword_27F2279B0;
  if (!qword_27F2279B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2279B0);
  }

  return result;
}

unint64_t sub_24EAD2F94()
{
  result = qword_27F2279B8;
  if (!qword_27F2279B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2279B8);
  }

  return result;
}

uint64_t type metadata accessor for ReportConcernAction(uint64_t a1)
{
  result = qword_27F2279C0;
  if (!qword_27F2279C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EAD30CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v32 - v3;
  v4 = sub_24F927D98();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AE0, &qword_24F97FEF8);
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v32 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F227AE8, &qword_24F97FF00);
  v9 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AD8, &qword_24F97FEF0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  swift_defaultActor_initialize();
  v16 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_handleStatuses;
  v17 = MEMORY[0x277D84F90];
  *(v1 + v16) = sub_24E608578(MEMORY[0x277D84F90]);
  v18 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_subscribedContacts;
  *(v1 + v18) = sub_24E6086B4(v17);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_updatesTask) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  v19 = v33;
  (*(v6 + 104))(v8, *MEMORY[0x277D85778], v33);
  sub_24F92B868();
  (*(v6 + 8))(v8, v19);
  (*(v13 + 32))(v1 + OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_updates, v15, v12);
  (*(v9 + 32))(v1 + OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_updatesContinuation, v11, v34);
  v20 = [objc_allocWithZone(type metadata accessor for IDSReachabilityQueryDelegate(0)) init];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_queryDelegate) = v20;
  sub_24F92B0D8();
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v22 = v35;
  v21 = v36;
  v23 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x277D851C8], v37);
  v24 = v20;
  v25 = sub_24F92BF48();
  (*(v21 + 8))(v22, v23);
  v26 = objc_allocWithZone(MEMORY[0x277D186D8]);
  v27 = sub_24F92B098();

  v28 = [v26 initWithService:v27 delegate:v24 queue:v25];

  if (v28)
  {
    *(v1 + OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_queryController) = v28;
    v29 = sub_24F92B858();
    v30 = v32;
    (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v1;

    sub_24EA998B8(0, 0, v30, &unk_24F97FF10, v31);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24EAD3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EAD36C0, a4, 0);
}

uint64_t sub_24EAD36C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_24F92B858();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_queryDelegate);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v4;
  v7 = v5;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_updatesTask) = sub_24EA998B8(0, 0, v2, &unk_24F97FF20, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24EAD3808()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_updatesTask))
  {

    sub_24F92B958();
  }

  v1 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_updates;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AD8, &qword_24F97FEF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_updatesContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F227AE8, &qword_24F97FF00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24EAD3958()
{
  sub_24EAD3808();

  return swift_defaultActor_deallocate();
}

void sub_24EAD39AC(uint64_t a1)
{
  sub_24EAD5150(319, &qword_27F227A18, &qword_27F227A20, &qword_24F9482B0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_24EAD5150(319, &qword_27F227A28, &qword_27F227A20, &qword_24F9482B0, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24EAD3B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_subscribedContacts;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (!*(v7 + 16))
  {
    return;
  }

  v8 = sub_24E76D644(a1, a2);
  if ((v9 & 1) == 0)
  {

    return;
  }

  v35 = a1;
  v36 = a2;
  v10 = (*(v7 + 56) + 24 * v8);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];

  swift_bridgeObjectRetain_n();

  sub_24EAD7A84(v11, v12);
  v14 = *(v13 + 16);
  v15 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_handleStatuses;
  if (!v14)
  {
LABEL_12:

    swift_beginAccess();
    v25 = sub_24E98F8B0(v35, v36);
    v27 = v26;
    swift_endAccess();
    sub_24EAD7A84(v25, v27);
    v28 = *(v3 + OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_queryController);
    swift_beginAccess();
    v29 = *(v3 + v15);
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = sub_24EAE678C(*(v29 + 16), 0);
      v32 = sub_24EAEAC9C(&v38, (v31 + 4), v30, v29);
      v33 = v38;

      sub_24E6586B4(v33);
      if (v32 == v30)
      {
LABEL_16:
        sub_24E8E817C(v31);

        v34 = sub_24F92B588();

        [v28 setDestinations_];

        return;
      }

      __break(1u);
    }

    v31 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v16 = 0;
  v17 = (v13 + 56);
  v37 = v13;
  while (v16 < *(v13 + 16))
  {
    v19 = *(v17 - 1);
    v18 = *v17;
    swift_beginAccess();

    v20 = sub_24E76D644(v19, v18);
    if (v21)
    {
      v22 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v3 + v15);
      v39[0] = v24;
      *(v3 + v15) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24E8B1564();
        v24 = v39[0];
      }

      sub_24EB5476C(v22, v24);
      *(v3 + v15) = v24;
      v13 = v37;
    }

    ++v16;
    swift_endAccess();

    v17 += 4;
    if (v14 == v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_24EAD3E28(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_handleStatuses;
  v42 = *(a1 + 16);
  if (!v42)
  {
LABEL_19:
    v32 = *(v49 + OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_queryController);
    swift_beginAccess();
    v33 = *(v49 + v1);
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = sub_24EAE678C(*(v33 + 16), 0);
      v36 = sub_24EAEAC9C(&v50, (v35 + 4), v34, v33);
      v37 = v50;

      sub_24E6586B4(v37);
      if (v36 == v34)
      {
LABEL_23:
        sub_24E8E817C(v35);

        v38 = sub_24F92B588();

        [v32 setDestinations_];

        return [v32 invalidate];
      }

      __break(1u);
    }

    v35 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v2 = 0;
  v40 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_subscribedContacts;
  v41 = a1 + 32;
  v44 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_handleStatuses;
  while (1)
  {
    v43 = v2;
    v4 = (v41 + 24 * v2);
    v5 = v4[1];
    v46 = *v4;
    v6 = v4[2];
    v7 = *(v6 + 16);

    v47 = v6;

    v45 = v7;
    if (v7)
    {
      break;
    }

LABEL_3:
    v2 = v43 + 1;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v49 + v40);
    *(v49 + v40) = 0x8000000000000000;
    sub_24E81E970(v46, v5, v47, v46, v5, isUniquelyReferenced_nonNull_native);
    *(v49 + v40) = v51;
    swift_endAccess();

    if (v43 + 1 == v42)
    {
      goto LABEL_19;
    }
  }

  v8 = 0;
  v9 = (v6 + 56);
  while (v8 < *(v47 + 16))
  {
    v13 = *(v9 - 2);
    v48 = *(v9 - 3);
    v15 = *(v9 - 1);
    v14 = *v9;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v16 = v5;

    v17 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v49 + v1);
    v18 = v51;
    *(v49 + v1) = 0x8000000000000000;
    v19 = sub_24E76D644(v15, v14);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (v18[3] < v24)
    {
      sub_24E89F948(v24, v17);
      v19 = sub_24E76D644(v15, v14);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

LABEL_14:
      v5 = v16;
      if (v25)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    if (v17)
    {
      goto LABEL_14;
    }

    v31 = v19;
    sub_24E8B1564();
    v19 = v31;
    v5 = v16;
    if (v25)
    {
LABEL_6:
      v10 = v19;

      v11 = v51;
      v12 = (v51[7] + 40 * v10);
      *v12 = v46;
      v12[1] = v5;
      v12[2] = v48;
      v12[3] = v13;
      v12[4] = 0;

      goto LABEL_7;
    }

LABEL_15:
    v11 = v51;
    v51[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (v11[6] + 16 * v19);
    *v27 = v15;
    v27[1] = v14;
    v28 = (v11[7] + 40 * v19);
    *v28 = v46;
    v28[1] = v5;
    v28[2] = v48;
    v28[3] = v13;
    v28[4] = 0;
    v29 = v11[2];
    v23 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v23)
    {
      goto LABEL_26;
    }

    v11[2] = v30;
LABEL_7:
    ++v8;
    *(v49 + v44) = v11;
    v1 = v44;
    swift_endAccess();

    v9 += 4;
    if (v45 == v8)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24EAD4278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AF8, &qword_24F97FF28);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EAD4344, 0, 0);
}

uint64_t sub_24EAD4344()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F227B00, &qword_24F97FF30);
  sub_24F92B8F8();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_24EAD4438;
  v2 = *(v0 + 64);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v2);
}

uint64_t sub_24EAD4438()
{

  return MEMORY[0x2822009F8](sub_24EAD4534, 0, 0);
}

uint64_t sub_24EAD4534()
{
  v1 = v0[5];
  v0[12] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[13] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_24EAD4694, Strong, 0);
    }

    else
    {

      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v4[1] = sub_24EAD4438;
      v5 = v0[8];

      return MEMORY[0x2822003E8](v0 + 5, 0, 0, v5);
    }
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24EAD4694()
{
  sub_24EAD4754(v0[12]);

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_24EAD4438;
  v2 = v0[8];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v2);
}

uint64_t sub_24EAD4754(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F227B30, &qword_24F97FF58);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v56 - v4;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_handleStatuses;

  v68 = v1;
  swift_beginAccess();
  v10 = 0;
  v11 = (v6 + 63) >> 6;
  v59 = v9;
  v60 = a1;
  while (v8)
  {
LABEL_11:
    v13 = __clz(__rbit64(v8)) | (v10 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(a1 + 56) + 8 * v13);

    v18 = v17;
    v19 = [v18 integerValue];
    v20 = *(v68 + v9);
    if (!*(v20 + 16))
    {

      goto LABEL_5;
    }

    v66 = v19;
    v67 = v18;

    v21 = sub_24E76D644(v16, v15);
    if ((v22 & 1) == 0)
    {

      goto LABEL_5;
    }

    v23 = (*(v20 + 56) + 40 * v21);
    v24 = v23[1];
    v61 = *v23;
    v62 = v24;
    v25 = v23[3];
    v63 = v23[2];

    v64 = v25;

    v26 = v68;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v26 + v9);
    v28 = v69;
    *(v26 + v9) = 0x8000000000000000;
    v65 = v16;
    v30 = sub_24E76D644(v16, v15);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_27;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      v38 = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24E8B1564();
      }

      v35 = v65;
      v39 = v69;
      if ((v34 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_24E89F948(v33, isUniquelyReferenced_nonNull_native);
      v35 = v65;
      v36 = sub_24E76D644(v65, v15);
      v38 = v67;
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_29;
      }

      v30 = v36;
      v39 = v69;
      if ((v34 & 1) == 0)
      {
LABEL_17:
        v39[(v30 >> 6) + 8] |= 1 << v30;
        v40 = (v39[6] + 16 * v30);
        *v40 = v35;
        v40[1] = v15;
        v41 = (v39[7] + 40 * v30);
        v42 = v62;
        *v41 = v61;
        v41[1] = v42;
        v43 = v64;
        v41[2] = v63;
        v41[3] = v43;
        v41[4] = v66;
        v44 = v39[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_28;
        }

        v39[2] = v46;
        goto LABEL_24;
      }
    }

    v47 = (v39[7] + 40 * v30);
    v48 = v62;
    *v47 = v61;
    v47[1] = v48;
    v49 = v64;
    v47[2] = v63;
    v47[3] = v49;
    v47[4] = v66;

LABEL_24:
    v9 = v59;
    *(v68 + v59) = v39;
    swift_endAccess();

    a1 = v60;
LABEL_5:
    v8 &= v8 - 1;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      v50 = v68;
      swift_beginAccess();

      sub_24EAD72D0(v51, v50);
      v53 = v52;

      v69 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F227AE8, &qword_24F97FF00);
      v54 = v56;
      sub_24F92B8C8();
      return (*(v57 + 8))(v54, v58);
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24EAD5030(uint64_t a1)
{
  sub_24EAD5150(319, &qword_27F227AB8, &qword_27F227AC0, &qword_24F97FE10, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_24EAD5150(319, &qword_27F227AC8, &qword_27F227AC0, &qword_24F97FE10, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24EAD5150(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

char *sub_24EAD51D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v2 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v53 = MEMORY[0x277D84F90];
    result = sub_24F4579C0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v2 = v53;
    v49 = i;
    while (1)
    {
      v50 = v4;
      v51 = v2;
      v5 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x253052270]() : *(a1 + 32 + 8 * v4);
      v52 = v5;
      v6 = [v5 phoneNumberStrings];
      v7 = sub_24F92B5A8();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 40;
        v11 = MEMORY[0x277D84F90];
        do
        {
          v12 = (v10 + 16 * v9);
          v13 = v9;
          while (1)
          {
            if (v13 >= v8)
            {
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v9 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_44;
            }

            v14 = *(v12 - 1);
            v15 = *v12;

            v16 = sub_24F92B098();
            v17 = IDSCopyIDForPhoneNumber();

            if (v17)
            {
              break;
            }

            ++v13;
            v12 += 2;
            if (v9 == v8)
            {
              goto LABEL_24;
            }
          }

          v18 = sub_24F92B0D8();
          v20 = v19;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_24E61868C(0, v11[2] + 1, 1, v11);
          }

          v22 = v11[2];
          v21 = v11[3];
          if (v22 >= v21 >> 1)
          {
            v11 = sub_24E61868C((v21 > 1), v22 + 1, 1, v11);
          }

          v11[2] = v22 + 1;
          v23 = &v11[4 * v22];
          v23[4] = v14;
          v23[5] = v15;
          v23[6] = v18;
          v23[7] = v20;

          v10 = v7 + 40;
        }

        while (v9 != v8);
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

LABEL_24:

      v24 = [v52 emailAddressStrings];
      v25 = sub_24F92B5A8();

      v26 = *(v25 + 16);
      if (v26)
      {
        break;
      }

LABEL_37:

      v41 = [v52 identifier];
      v42 = sub_24F92B0D8();
      v44 = v43;

      v2 = v51;
      v46 = *(v51 + 16);
      v45 = *(v51 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_24F4579C0((v45 > 1), v46 + 1, 1);
        v2 = v51;
      }

      v4 = v50 + 1;
      *(v2 + 16) = v46 + 1;
      v47 = (v2 + 24 * v46);
      v47[4] = v42;
      v47[5] = v44;
      v47[6] = v11;
      if (v50 + 1 == v49)
      {
        goto LABEL_40;
      }
    }

    v27 = 0;
    v28 = v25 + 40;
LABEL_26:
    v29 = (v28 + 16 * v27);
    v30 = v27;
    while (v30 < v26)
    {
      v27 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_46;
      }

      v31 = *(v29 - 1);
      v32 = *v29;

      v33 = sub_24F92B098();
      v34 = MEMORY[0x253052F30]();

      if (v34)
      {
        v35 = sub_24F92B0D8();
        v37 = v36;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_24E61868C(0, v11[2] + 1, 1, v11);
        }

        v39 = v11[2];
        v38 = v11[3];
        if (v39 >= v38 >> 1)
        {
          v11 = sub_24E61868C((v38 > 1), v39 + 1, 1, v11);
        }

        v11[2] = v39 + 1;
        v40 = &v11[4 * v39];
        v40[4] = v31;
        v40[5] = v32;
        v40[6] = v35;
        v40[7] = v37;

        v28 = v25 + 40;
        if (v27 != v26)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }

      ++v30;
      v29 += 2;
      if (v27 == v26)
      {
        goto LABEL_37;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_40:
  sub_24EAD3E28(v2);
}

uint64_t sub_24EAD5628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AD0, &unk_24F9FE720);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EAD5730, 0, 0);
}

uint64_t sub_24EAD5730()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v5[5] = v3;

  sub_24EA998B8(0, 0, v1, &unk_24F97FEE8, v5);

  v6 = sub_24E6086DC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227AD8, &qword_24F97FEF0);
  sub_24F92B8F8();
  v0[10] = v6;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_24EAD58C8;
  v8 = v0[6];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v8);
}

uint64_t sub_24EAD58C8()
{

  return MEMORY[0x2822009F8](sub_24EAD59C4, 0, 0);
}

uint64_t sub_24EAD59C4()
{
  v1 = v0[2];
  v2 = v0[10];
  if (v1 && (v3 = v0[5], , v2 = v1, *(v1 + 16) != *(v3 + 16)))
  {
    v0[10] = v1;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_24EAD58C8;
    v8 = v0[6];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v8);
  }

  else
  {
    v4 = v0[3];
    (*(v0[7] + 8))(v0[8], v0[6]);
    *v4 = v2;

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24EAD5B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_24EAD5BA4;

  return MEMORY[0x282200490]();
}

uint64_t sub_24EAD5BA4()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_24EAD5CB4, v1, 0);
}

uint64_t sub_24EAD5CB4()
{
  sub_24EAD3E28(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EAD5D14(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = sub_24F92CA08();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EAD5DD8, 0, 0);
}

uint64_t sub_24EAD5DD8()
{
  v1 = sub_24F92D1A8();
  v3 = v2;
  sub_24F92CFB8();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_24EAD5EB4;

  return sub_24E70C87C(v1, v3, 0, 0, 1);
}

uint64_t sub_24EAD5EB4()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24E980C44;
  }

  else
  {
    v5 = sub_24EAD6024;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EAD6024()
{
  if (qword_27F2113C8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E7A8);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "IMessageReachabilityManager.getBestHandle hit timeout trying to retrive best handle.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  sub_24F92B958();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24EAD617C(uint64_t a1)
{
  *(v1 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EAD6218, 0, 0);
}

uint64_t sub_24EAD6218(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = v3;
  v4 = v3[3];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 48;
    v8 = MEMORY[0x277D84F90];
    v30 = v7;
    do
    {
      v9 = (v7 + 24 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= v5)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return MEMORY[0x282200460](a1, a2, a3);
        }

        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_24;
        }

        v12 = *(v9 - 1);
        v11 = *v9;
        v13 = *(v9 - 2);
        swift_bridgeObjectRetain_n();

        v14 = sub_24ED7C5F0(&v31, v13, v12);

        if (v14)
        {
          break;
        }

        ++v10;
        v9 += 3;
        if (v6 == v5)
        {
          goto LABEL_16;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_24E615E64(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      if (v16 >= v15 >> 1)
      {
        v8 = sub_24E615E64((v15 > 1), v16 + 1, 1, v8);
      }

      *(v8 + 2) = v16 + 1;
      v17 = &v8[24 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v12;
      *(v17 + 6) = v11;
      v7 = v30;
    }

    while (v6 != v5);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_16:

  if (*(v8 + 2))
  {
    v18 = v3[4];
    type metadata accessor for IMessageReachabilityManager(0);
    v19 = swift_allocObject();
    v3[5] = v19;
    sub_24EAD30CC();
    v20 = sub_24F92B858();
    v21 = *(*(v20 - 8) + 56);
    v21(v18, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v8;

    v23 = sub_24EA99BB8(0, 0, v18, &unk_24F97FEC8, v22);
    v3[6] = v23;
    v24 = *(v8 + 2);

    v21(v18, 1, 1, v20);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = fmin(v24, 5.0);
    *(v25 + 40) = v23;

    v3[7] = sub_24F1D3DA4(0, 0, v18, &unk_24F97FED8, v25);
    v26 = swift_task_alloc();
    v3[8] = v26;
    a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    *v26 = v3;
    v26[1] = sub_24EAD661C;
    a1 = v3 + 2;
    a2 = v23;

    return MEMORY[0x282200460](a1, a2, a3);
  }

  else
  {

    v27 = sub_24E6086DC(MEMORY[0x277D84F90]);

    v28 = v3[1];

    return v28(v27);
  }
}

uint64_t sub_24EAD661C()
{

  return MEMORY[0x2822009F8](sub_24EAD6718, 0, 0);
}

uint64_t sub_24EAD6718()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  sub_24F92B958();

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_24EAD67FC()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_40:
    v0[3] = v3;
    v40 = swift_task_alloc();
    v0[4] = v40;
    *v40 = v0;
    v40[1] = sub_24EAD6CB4;

    sub_24EAD617C(v3);
    return;
  }

  v51 = MEMORY[0x277D84F90];
  sub_24F4579C0(0, v2, 0);
  v4 = 0;
  v3 = v51;
  v45 = v2;
  v46 = v1 + 32;
  while (1)
  {
    v5 = (v46 + 72 * v4);
    v6 = v5[1];
    v47 = *v5;
    v48 = v3;
    v7 = v5[6];
    v8 = v5[7];
    v49 = v6;
    if (v7)
    {
      v9 = *(v7 + 16);

      swift_bridgeObjectRetain_n();

      if (v9)
      {
        v10 = 0;
        v11 = v7 + 40;
        v50 = MEMORY[0x277D84F90];
        v44 = v7 + 40;
        do
        {
          v12 = (v11 + 16 * v10);
          v13 = v10;
          while (1)
          {
            if (v13 >= v9)
            {
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v10 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_44;
            }

            v14 = *(v12 - 1);
            v15 = *v12;

            v16 = sub_24F92B098();
            v17 = IDSCopyIDForPhoneNumber();

            if (v17)
            {
              break;
            }

            ++v13;
            v12 += 2;
            if (v10 == v9)
            {
              goto LABEL_21;
            }
          }

          v42 = sub_24F92B0D8();
          v19 = v18;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_24E61868C(0, v50[2] + 1, 1, v50);
          }

          v21 = v50[2];
          v20 = v50[3];
          if (v21 >= v20 >> 1)
          {
            v50 = sub_24E61868C((v20 > 1), v21 + 1, 1, v50);
          }

          v50[2] = v21 + 1;
          v22 = &v50[4 * v21];
          v22[4] = v14;
          v22[5] = v15;
          v22[6] = v42;
          v22[7] = v19;

          v11 = v44;
        }

        while (v10 != v9);
      }

      else
      {
        v50 = MEMORY[0x277D84F90];
      }

LABEL_21:

      v6 = v49;
      if (!v8)
      {
        goto LABEL_36;
      }
    }

    else
    {

      v50 = MEMORY[0x277D84F90];
      if (!v8)
      {
        goto LABEL_36;
      }
    }

    v23 = *(v8 + 16);

    if (v23)
    {
      break;
    }

LABEL_35:

LABEL_36:

    v3 = v48;
    v38 = *(v48 + 16);
    v37 = *(v48 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_24F4579C0((v37 > 1), v38 + 1, 1);
      v3 = v48;
    }

    ++v4;
    *(v3 + 16) = v38 + 1;
    v39 = (v3 + 24 * v38);
    v39[4] = v47;
    v39[5] = v6;
    v39[6] = v50;
    if (v4 == v45)
    {
      v0 = v41;
      goto LABEL_40;
    }
  }

  v24 = 0;
  v25 = v8 + 40;
LABEL_24:
  v26 = (v25 + 16 * v24);
  v27 = v24;
  while (v27 < v23)
  {
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_46;
    }

    v28 = *(v26 - 1);
    v29 = *v26;

    v30 = sub_24F92B098();
    v31 = MEMORY[0x253052F30]();

    if (v31)
    {
      v32 = sub_24F92B0D8();
      v43 = v33;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_24E61868C(0, v50[2] + 1, 1, v50);
      }

      v6 = v49;
      v35 = v50[2];
      v34 = v50[3];
      if (v35 >= v34 >> 1)
      {
        v50 = sub_24E61868C((v34 > 1), v35 + 1, 1, v50);
      }

      v50[2] = v35 + 1;
      v36 = &v50[4 * v35];
      v36[4] = v28;
      v36[5] = v29;
      v36[6] = v32;
      v36[7] = v43;

      v25 = v8 + 40;
      if (v24 != v23)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }

    ++v27;
    v26 += 2;
    if (v24 == v23)
    {
      v6 = v49;
      goto LABEL_35;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_24EAD6CB4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24EAD6DD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EAD5628(a1, v4, v5, v7, v6);
}

uint64_t sub_24EAD6E90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EAD6ED0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EAD5D14(v6, a1, v4, v5, v7);
}

uint64_t objectdestroyTm_24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EAD6FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EAD5B10(a1, v4, v5, v7, v6);
}

uint64_t sub_24EAD709C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EAD70DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24EAD3620(a1, v4, v5, v6);
}

uint64_t sub_24EAD7190()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EAD71C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EAD7210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EAD4278(a1, v4, v5, v7, v6);
}

void sub_24EAD72D0(uint64_t a1, uint64_t a2)
{
  v50 = MEMORY[0x277D84F98];
  v59 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = OBJC_IVAR____TtC12GameStoreKit27IMessageReachabilityManager_handleStatuses;
  v7 = (v3 + 63) >> 6;

  v8 = 0;
  v56 = v7;
LABEL_5:
  v9 = v8;
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
    v8 = v9;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 24 * v11 + 16);
    v16 = v15[2];

    swift_beginAccess();
    if (v16)
    {
      v45 = v14;
      v46 = v13;
      v47 = v2;
      v17 = 0;
      v18 = v15 + 7;
      v19 = a2;
      v51 = v6;
      while (1)
      {
        if (v17 >= v15[2])
        {
          goto LABEL_40;
        }

        v20 = *(v19 + v6);
        if (*(v20 + 16))
        {
          v21 = *(v18 - 2);
          v49 = *(v18 - 3);
          v22 = *v18;
          v52 = *(v18 - 1);
          swift_bridgeObjectRetain_n();
          v55 = v21;

          v53 = sub_24E76D644(v52, v22);
          LOBYTE(v21) = v23;

          if (v21)
          {
            v24 = (*(v20 + 56) + 40 * v53);
            v25 = v24[1];
            v54 = *v24;
            v48 = v24[4];

            sub_24EAD7A40(v54, v25);
            if (v48 == 1)
            {

              v27 = v49;
              v28 = v46;
              v2 = v47;
              v29 = v45;
              v26 = v55;
LABEL_25:

              v30 = v50;
              v31 = *(v50 + 16);
              if (*(v50 + 24) <= v31)
              {
                sub_24E89B77C(v31 + 1, 1);
                v30 = v59;
              }

              v50 = v30;
              sub_24F92D068();
              sub_24F92B218();
              v32 = sub_24F92D0B8();
              v33 = v50 + 64;
              v34 = -1 << *(v50 + 32);
              v35 = v32 & ~v34;
              v36 = v35 >> 6;
              if (((-1 << v35) & ~*(v50 + 64 + 8 * (v35 >> 6))) != 0)
              {
                v37 = __clz(__rbit64((-1 << v35) & ~*(v50 + 64 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
                v6 = v51;
                v7 = v56;
LABEL_37:
                *(v33 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
                v42 = 16 * v37;
                v43 = (*(v50 + 48) + v42);
                *v43 = v29;
                v43[1] = v28;
                v44 = (*(v50 + 56) + v42);
                *v44 = v27;
                v44[1] = v26;
                ++*(v50 + 16);
                goto LABEL_5;
              }

              v38 = 0;
              v39 = (63 - v34) >> 6;
              v6 = v51;
              v7 = v56;
              while (++v36 != v39 || (v38 & 1) == 0)
              {
                v40 = v36 == v39;
                if (v36 == v39)
                {
                  v36 = 0;
                }

                v38 |= v40;
                v41 = *(v33 + 8 * v36);
                if (v41 != -1)
                {
                  v37 = __clz(__rbit64(~v41)) + (v36 << 6);
                  goto LABEL_37;
                }
              }

              goto LABEL_41;
            }
          }

          else
          {
          }

          v19 = a2;
        }

        ++v17;
        v18 += 4;
        v6 = v51;
        if (v16 == v17)
        {
          if (!v15[2])
          {
            goto LABEL_42;
          }

          v27 = v15[4];
          v26 = v15[5];

          v28 = v46;
          v2 = v47;
          v29 = v45;
          goto LABEL_25;
        }
      }
    }

    v9 = v8;
    v7 = v56;
  }

  while (v5);
LABEL_7:
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_24EAD76F8(void *a1, NSObject *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B10, &qword_24F97FF38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B18, &unk_24F97FF40);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  if (a2)
  {
    v15 = a2;
    if (qword_27F2113C8 != -1)
    {
      swift_once();
    }

    v16 = sub_24F9220D8();
    __swift_project_value_buffer(v16, qword_27F39E7A8);
    v17 = a2;
    v25[0] = sub_24F9220B8();
    v18 = sub_24F92BDB8();

    if (os_log_type_enabled(v25[0], v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = a2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_24E5DD000, v25[0], v18, "IDSReachabilityQueryDelegate encountered error: %@", v19, 0xCu);
      sub_24E6D44CC(v20);
      MEMORY[0x2530542D0](v20, -1, -1);
      MEMORY[0x2530542D0](v19, -1, -1);

      v23 = v25[0];
    }

    else
    {

      v23 = a2;
    }
  }

  else
  {
    v24 = v11;
    (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC12GameStoreKitP33_07FFAB5A3332DEA17BF1A4D00188D36128IDSReachabilityQueryDelegate_updatesContinuation, v5, v12);
    if (a1)
    {
      v25[1] = a1;

      sub_24F92B8C8();
      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v14, v24);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24EAD7A40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24EAD7A84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

char *sub_24EAD7AE8()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v51 = MEMORY[0x277D84F90];
    result = sub_24F4579C0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v3 = v51;
    v46 = i;
    v47 = v1 & 0xC000000000000001;
    v44 = v45[2] + 32;
    while (1)
    {
      v48 = v5;
      v49 = v3;
      v6 = v47 ? MEMORY[0x253052270]() : *(v44 + 8 * v5);
      v50 = v6;
      v1 = [v6 phoneNumberStrings];
      v7 = sub_24F92B5A8();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 40;
        v11 = MEMORY[0x277D84F90];
        do
        {
          v12 = (v10 + 16 * v9);
          v13 = v9;
          while (1)
          {
            if (v13 >= v8)
            {
              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v9 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_44;
            }

            v15 = *(v12 - 1);
            v14 = *v12;

            v1 = sub_24F92B098();
            v16 = IDSCopyIDForPhoneNumber();

            if (v16)
            {
              break;
            }

            ++v13;
            v12 += 2;
            if (v9 == v8)
            {
              goto LABEL_24;
            }
          }

          v17 = sub_24F92B0D8();
          v1 = v18;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_24E61868C(0, v11[2] + 1, 1, v11);
          }

          v20 = v11[2];
          v19 = v11[3];
          if (v20 >= v19 >> 1)
          {
            v11 = sub_24E61868C((v19 > 1), v20 + 1, 1, v11);
          }

          v11[2] = v20 + 1;
          v21 = &v11[4 * v20];
          v21[4] = v15;
          v21[5] = v14;
          v21[6] = v17;
          v21[7] = v1;

          v10 = v7 + 40;
        }

        while (v9 != v8);
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

LABEL_24:

      v1 = [v50 emailAddressStrings];
      v22 = sub_24F92B5A8();

      v23 = *(v22 + 16);
      if (v23)
      {
        break;
      }

LABEL_37:

      v36 = [v50 identifier];
      v37 = sub_24F92B0D8();
      v39 = v38;

      v3 = v49;
      v41 = *(v49 + 16);
      v40 = *(v49 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_24F4579C0((v40 > 1), v41 + 1, 1);
        v3 = v49;
      }

      v5 = v48 + 1;
      *(v3 + 16) = v41 + 1;
      v42 = (v3 + 24 * v41);
      v42[4] = v37;
      v42[5] = v39;
      v42[6] = v11;
      if (v48 + 1 == v46)
      {
        goto LABEL_40;
      }
    }

    v24 = 0;
    v25 = v22 + 40;
LABEL_26:
    v26 = (v25 + 16 * v24);
    v27 = v24;
    while (v27 < v23)
    {
      v24 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_46;
      }

      v29 = *(v26 - 1);
      v28 = *v26;

      v1 = sub_24F92B098();
      v30 = MEMORY[0x253052F30]();

      if (v30)
      {
        v1 = sub_24F92B0D8();
        v32 = v31;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_24E61868C(0, v11[2] + 1, 1, v11);
        }

        v34 = v11[2];
        v33 = v11[3];
        if (v34 >= v33 >> 1)
        {
          v11 = sub_24E61868C((v33 > 1), v34 + 1, 1, v11);
        }

        v11[2] = v34 + 1;
        v35 = &v11[4 * v34];
        v35[4] = v29;
        v35[5] = v28;
        v35[6] = v1;
        v35[7] = v32;

        v25 = v22 + 40;
        if (v24 != v23)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }

      ++v27;
      v26 += 2;
      if (v24 == v23)
      {
        goto LABEL_37;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_40:
  v45[3] = v3;
  v43 = swift_task_alloc();
  v45[4] = v43;
  *v43 = v45;
  v43[1] = sub_24EAD7F94;

  return sub_24EAD617C(v3);
}

uint64_t sub_24EAD7FC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EAD8110(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for CenteredCapsuleButton(uint64_t a1)
{
  result = qword_27F227B40;
  if (!qword_27F227B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EAD8298(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_24E61C938(319);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F2169A0, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
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

uint64_t sub_24EAD83CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v40);
  v4 = v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227C28, &qword_24F9802E8);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v38 - v10;
  v12 = type metadata accessor for CenteredCapsuleButton(0);
  MEMORY[0x28223BE20](v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 28);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v46 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[9]];
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v45 = v19;
  sub_24E61DA68(&v49, v19, qword_27F21B590, &unk_24F93BE30);
  v20 = v12[10];
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v47 = v20;
  v22(&v14[v20], 1, 1, v21);
  v23 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24EADA280();
  v43 = v11;
  v24 = v44;
  sub_24F92D108();
  if (v24)
  {
    v25 = v46;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v26 = v45;
    sub_24E601704(&v14[v25], &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v26, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v14[v47], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v44 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v52 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v27 = v50;
    *v14 = v49;
    *(v14 + 1) = v27;
    *(v14 + 4) = v51;
    LOBYTE(v49) = 1;
    v28 = sub_24F92CC28();
    v29 = v46;
    *(v14 + 5) = v28;
    *(v14 + 6) = v30;
    LOBYTE(v49) = 2;
    v31 = sub_24F92CBC8();
    v38[1] = 0;
    *(v14 + 7) = v31;
    *(v14 + 8) = v32;
    LOBYTE(v49) = 3;
    sub_24EADA2D4(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v7, &v14[v29], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v49) = 4;
    v33 = sub_24F92CBD8();
    v34 = v45;
    v14[v12[8]] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v52 = 5;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v49, v34, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v49) = 6;
    sub_24E65CAA0();
    v35 = v44;
    v36 = v41;
    sub_24F92CC68();
    (*(v42 + 8))(v43, v36);
    sub_24E61DA68(v35, &v14[v47], &qword_27F215440, &unk_24F942BD0);
    sub_24EADA008(v14, v39);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return sub_24EADA31C(v14);
  }
}

uint64_t sub_24EAD8AB4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 5)
  {
    v3 = 0x4D747865746E6F63;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x676E696C69617274;
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

uint64_t sub_24EAD8B94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EADA658(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EAD8BBC(uint64_t a1)
{
  v2 = sub_24EADA280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EAD8BF8(uint64_t a1)
{
  v2 = sub_24EADA280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EAD8C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

unint64_t sub_24EAD8D5C()
{
  result = qword_27F227B50;
  if (!qword_27F227B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227B50);
  }

  return result;
}

uint64_t sub_24EAD8DB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v56 = sub_24F9248C8();
  v3 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B90, &qword_24F980140);
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B98, &qword_24F980148);
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227BA0, &qword_24F980150);
  MEMORY[0x28223BE20](v57);
  v13 = &v54 - v12;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v14 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227BA8, &qword_24F980158) + 44)];
  v58 = a1;
  sub_24EAD9504(a1, v14);
  v15 = sub_24F9257F8();
  sub_24F923318();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227BB0, &qword_24F980160) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = &v8[*(v6 + 36)];
  *v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for PrimaryActionStyle(0);
  v27 = v25 + v26[5];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v26[6];
  *(v25 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  swift_storeEnumTagMultiPayload();
  v29 = v26[7];
  *(v25 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *(v25 + v26[8]) = 0;
  sub_24F9248B8();
  sub_24EAD9E1C();
  v30 = v55;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v56);
  sub_24E601704(v8, &qword_27F227B90, &qword_24F980140);
  v65 = sub_24F9271D8();
  v66 = sub_24EADA2D4(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_24F924B38();
  (*(*(v33 - 8) + 104))(boxed_opaque_existential_1, v32, v33);
  sub_24EAD9F90(v64, v13);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227BE8, &qword_24F980250);
  (*(v30 + 16))(&v13[v34[9]], v11, v9);
  v35 = &v13[v34[10]];
  *v35 = sub_24F923398() & 1;
  *(v35 + 1) = v36;
  v35[16] = v37 & 1;
  v38 = &v13[v34[11]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v39 = qword_27F24E488;
  v40 = sub_24F923398();
  v42 = v41;
  v44 = v43;
  v45 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227BF0, &qword_24F980280) + 36)];
  *v45 = v39;
  v45[8] = v40 & 1;
  *(v45 + 2) = v42;
  v45[24] = v44 & 1;
  LOBYTE(v39) = sub_24F923398();
  v47 = v46;
  LOBYTE(v42) = v48;
  sub_24E601704(v64, &qword_27F227BE0, &qword_24F980248);
  (*(v30 + 8))(v11, v9);
  v49 = &v13[*(v57 + 36)];
  *v49 = v39 & 1;
  *(v49 + 1) = v47;
  v49[16] = v42 & 1;
  v65 = type metadata accessor for CenteredCapsuleButton(0);
  v66 = sub_24EADA2D4(&qword_27F21AAB8, type metadata accessor for CenteredCapsuleButton, &unk_24F980048);
  v50 = __swift_allocate_boxed_opaque_existential_1(v64);
  v51 = sub_24EADA008(v58, v50);
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  MEMORY[0x28223BE20](v51);
  *(&v54 - 4) = v64;
  *(&v54 - 3) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227BF8, &qword_24F980288);
  sub_24EADA078();
  sub_24E6A4C1C();
  v53 = sub_24EADA1BC();
  sub_24F926B08();
  sub_24E601704(v13, &qword_27F227BA0, &qword_24F980150);
  sub_24E601704(v60, &qword_27F2171C8, &unk_24F945310);
  sub_24E601704(v62, qword_27F21B590, &unk_24F93BE30);
  return sub_24E601704(v64, &qword_27F2171D0, &unk_24F980290);
}

uint64_t sub_24EAD9504@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8, &qword_24F97D030);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v36 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FE8, &qword_24F9802A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = a1[6];
  v42[0] = a1[5];
  v42[1] = v13;
  sub_24E600AEC();

  v14 = sub_24F925E18();
  v16 = v15;
  v38 = v17;
  v39 = v18;
  v19 = type metadata accessor for CenteredCapsuleButton(0);
  v20 = *(a1 + *(v19 + 32));
  if (v20 == 2 || (v21 = 0.0, (v20 & 1) == 0))
  {
    v21 = 1.0;
  }

  if (!a1[8])
  {
    goto LABEL_8;
  }

  sub_24E60169C(a1 + *(v19 + 36), v42, qword_27F24EC90, &unk_24F93C1D0);
  if (!v42[3])
  {
    sub_24E601704(v42, qword_27F21B590, &unk_24F93BE30);
LABEL_8:
    v32 = 1;
    v27 = v41;
    goto LABEL_9;
  }

  sub_24E601704(v42, qword_27F21B590, &unk_24F93BE30);
  v22 = sub_24F926DF8();
  v23 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v25 = *MEMORY[0x277CE1050];
  v26 = sub_24F926E78();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v6 = v22;
  v37 = sub_24F9251C8();
  v27 = v41;
  v28 = v6 + *(v41 + 36);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v30 = *MEMORY[0x277CE13B8];
  v31 = sub_24F927748();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  *v28 = v37;
  sub_24E6009C8(v6, v12, &qword_27F2143D8, &qword_24F97D030);
  v32 = 0;
LABEL_9:
  (*(v40 + 56))(v12, v32, 1, v27);
  sub_24E60169C(v12, v9, &qword_27F226FE8, &qword_24F9802A0);
  *a2 = v14;
  *(a2 + 8) = v16;
  v33 = v38 & 1;
  *(a2 + 16) = v38 & 1;
  *(a2 + 24) = v39;
  *(a2 + 32) = v21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227C20, &unk_24F9802A8);
  sub_24E60169C(v9, a2 + *(v34 + 48), &qword_27F226FE8, &qword_24F9802A0);
  sub_24E5FD138(v14, v16, v33);

  sub_24E601704(v12, &qword_27F226FE8, &qword_24F9802A0);
  sub_24E601704(v9, &qword_27F226FE8, &qword_24F9802A0);
  sub_24E600B40(v14, v16, v33);
}

uint64_t sub_24EAD9938(uint64_t a1)
{
  sub_24EAD8D5C();

  return sub_24F9218E8();
}

unint64_t sub_24EAD99C8()
{
  result = qword_27F227B60;
  if (!qword_27F227B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227B60);
  }

  return result;
}

unint64_t sub_24EAD9A84()
{
  result = qword_27F227B68;
  if (!qword_27F227B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227B68);
  }

  return result;
}

__n128 sub_24EAD9AF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_24F925728();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B70, &qword_24F983710);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B78, &qword_24F980130);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  (*(v4 + 16))(v6, a1, v3, v13);
  sub_24F926F98();
  sub_24E602068(&qword_27F227B80, &qword_27F227B70, &qword_24F983710, MEMORY[0x277CDF028]);
  sub_24E7A108C();
  sub_24F926178();
  (*(v8 + 8))(v10, v7);
  sub_24F927618();
  sub_24F9242E8();
  v16 = v22;
  (*(v12 + 32))(v22, v15, v11);
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227B88, &qword_24F980138) + 36);
  v18 = v28;
  *(v17 + 64) = v27;
  *(v17 + 80) = v18;
  *(v17 + 96) = v29;
  v19 = v24;
  *v17 = v23;
  *(v17 + 16) = v19;
  result = v26;
  *(v17 + 32) = v25;
  *(v17 + 48) = result;
  return result;
}

unint64_t sub_24EAD9E1C()
{
  result = qword_27F227BB8;
  if (!qword_27F227BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227B90, &qword_24F980140);
    sub_24EAD9ED8();
    sub_24EADA2D4(&qword_27F227BD8, type metadata accessor for PrimaryActionStyle, &unk_24F9F0F14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227BB8);
  }

  return result;
}

unint64_t sub_24EAD9ED8()
{
  result = qword_27F227BC0;
  if (!qword_27F227BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227BB0, &qword_24F980160);
    sub_24E602068(&qword_27F227BC8, &qword_27F227BD0, &qword_24F980240, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227BC0);
  }

  return result;
}

uint64_t sub_24EAD9F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227BE0, &qword_24F980248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EADA008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CenteredCapsuleButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EADA078()
{
  result = qword_27F227C00;
  if (!qword_27F227C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227BA0, &qword_24F980150);
    sub_24EADA104();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C00);
  }

  return result;
}

unint64_t sub_24EADA104()
{
  result = qword_27F227C08;
  if (!qword_27F227C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227BF0, &qword_24F980280);
    sub_24E602068(&qword_27F227C10, &qword_27F227BE8, &qword_24F980250, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C08);
  }

  return result;
}

unint64_t sub_24EADA1BC()
{
  result = qword_27F227C18;
  if (!qword_27F227C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227BF8, &qword_24F980288);
    sub_24EADA078();
    sub_24EADA2D4(&qword_27F217130, type metadata accessor for ZoomableViewModifier, &unk_24F9A0430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C18);
  }

  return result;
}

unint64_t sub_24EADA280()
{
  result = qword_27F227C30;
  if (!qword_27F227C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C30);
  }

  return result;
}

uint64_t sub_24EADA2D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EADA31C(uint64_t a1)
{
  v2 = type metadata accessor for CenteredCapsuleButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EADA39C()
{
  result = qword_27F227C38;
  if (!qword_27F227C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227B88, &qword_24F980138);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227B70, &qword_24F983710);
    sub_24E602068(&qword_27F227B80, &qword_27F227B70, &qword_24F983710, MEMORY[0x277CDF028]);
    sub_24E7A108C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C38);
  }

  return result;
}

uint64_t sub_24EADA4AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227BA0, &qword_24F980150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227BF8, &qword_24F980288);
  sub_24EADA078();
  sub_24E6A4C1C();
  sub_24EADA1BC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EADA554()
{
  result = qword_27F227C40;
  if (!qword_27F227C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C40);
  }

  return result;
}

unint64_t sub_24EADA5AC()
{
  result = qword_27F227C48;
  if (!qword_27F227C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C48);
  }

  return result;
}

unint64_t sub_24EADA604()
{
  result = qword_27F227C50;
  if (!qword_27F227C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C50);
  }

  return result;
}

uint64_t sub_24EADA658(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x676E696C69617274 && a2 == 0xEE006C6F626D7953 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA51F90 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_24EADA914(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24EADA970(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24EADA9D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7463697274736572;
  v4 = 0xEA00000000006465;
  v5 = 0x800000024FA41D50;
  if (v2 != 1)
  {
    v3 = 0xD000000000000013;
    v4 = 0x800000024FA41D50;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1701736302;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x7463697274736572;
  if (*a2 == 1)
  {
    v5 = 0xEA00000000006465;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_24EADAAD4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EADAB78(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EADAC08()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24EADACA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24EADB314(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24EADACD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x7463697274736572;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000024FA41D50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_24EADAD38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x7463697274736572;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000024FA41D50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  v8 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v8;
  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EADADAC()
{
  v1 = 0x52746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6564616372417369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_24EADAE1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EADB360(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EADAE44(uint64_t a1)
{
  v2 = sub_24EADB140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EADAE80(uint64_t a1)
{
  v2 = sub_24EADB140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EADAEDC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24EADAF1C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
    *(a1 + 25) = HIBYTE(v7) & 1;
  }

  return result;
}

uint64_t sub_24EADAF1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227C58, &qword_24F9804E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EADB140();
  sub_24F92D108();
  v12 = 0;
  v7 = sub_24F92CBC8();
  v11 = 1;
  sub_24F92CC08();
  v9[3] = v8;
  v10 = 2;
  sub_24F92CC38();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24EADB140()
{
  result = qword_27F227C60;
  if (!qword_27F227C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C60);
  }

  return result;
}

unint64_t sub_24EADB1B8()
{
  result = qword_27F227C68;
  if (!qword_27F227C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C68);
  }

  return result;
}

unint64_t sub_24EADB210()
{
  result = qword_27F227C70;
  if (!qword_27F227C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C70);
  }

  return result;
}

unint64_t sub_24EADB268()
{
  result = qword_27F227C78;
  if (!qword_27F227C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C78);
  }

  return result;
}

unint64_t sub_24EADB2C0()
{
  result = qword_27F227C80;
  if (!qword_27F227C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227C80);
  }

  return result;
}

unint64_t sub_24EADB314(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24EADB360(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564616372417369 && a2 == 0xEB00000000707041)
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

id TodayCard.Style.cardHeadingTextColor.getter()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      v4 = [objc_opt_self() whiteColor];
      v5 = [v4 colorWithAlphaComponent_];
    }

    else
    {
      sub_24E77ACC8();
      v4 = sub_24F92C3A8();
      v5 = [v4 colorWithAlphaComponent_];
    }

    v6 = v5;

    return v6;
  }

  else
  {
    if (qword_27F210440 != -1)
    {
      swift_once();
    }

    v2 = qword_27F22BEC0;

    return v2;
  }
}

id TodayCard.Style.cardTitleTextColor.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      v3 = [objc_opt_self() whiteColor];

      return v3;
    }

    else
    {
      sub_24E77ACC8();
      return sub_24F92C3A8();
    }
  }

  else
  {
    if (qword_27F210438 != -1)
    {
      swift_once();
    }

    v1 = qword_27F22BEB8;

    return v1;
  }
}

uint64_t TodayCard.Style.overlayBackgroundColor.getter()
{
  if (*v0 > 1u)
  {
    return 0;
  }

  if (qword_27F2104B0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22BF30;
  v2 = qword_27F22BF30;
  return v1;
}

id TodayCard.Style.overlayTextColor.getter()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      v4 = [objc_opt_self() whiteColor];
    }

    else
    {
      v4 = [objc_opt_self() blackColor];
    }

    return v4;
  }

  else
  {
    if (qword_27F210438 != -1)
    {
      swift_once();
    }

    v2 = qword_27F22BEB8;

    return v2;
  }
}

id TodayCard.Style.overlayDetailTextColor.getter()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      v4 = [objc_opt_self() whiteColor];

      return v4;
    }

    else
    {
      v5 = [objc_opt_self() blackColor];
      v6 = [v5 colorWithAlphaComponent_];

      return v6;
    }
  }

  else
  {
    if (qword_27F210440 != -1)
    {
      swift_once();
    }

    v2 = qword_27F22BEC0;

    return v2;
  }
}

uint64_t sub_24EADB8B8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39BB20);
  __swift_project_value_buffer(v4, qword_27F39BB20);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t ASDInAppPurchaseStateProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  ASDInAppPurchaseStateProvider.init()(v1);
  return v0;
}

uint64_t ASDInAppPurchaseStateProvider.init()(__n128 a1)
{
  v2 = v1;
  v3 = sub_24F927D98();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F92BEE8();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_24F92BE88();
  MEMORY[0x28223BE20](v9);
  *(v1 + 72) = 0;
  v24 = (v1 + 72);
  v10 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v22[1] = "useTitlePlaceholder";
  v22[2] = v10;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  aBlock[0] = v11;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v23);
  *(v1 + 16) = sub_24F92BF38();
  type metadata accessor for ASDInAppPurchaseDatabase();
  *(v1 + 24) = swift_allocObject();
  *(v1 + 32) = &off_2861DB318;
  v12 = sub_24E60C780(MEMORY[0x277D84F90]);
  v13 = MEMORY[0x277D84FA0];
  *(v1 + 56) = v12;
  *(v1 + 64) = v13;
  v15 = v25;
  v14 = v26;
  v16 = v27;
  (*(v26 + 104))(v25, *MEMORY[0x277D851C8], v27);
  v17 = sub_24F92BF48();
  (*(v14 + 8))(v15, v16);
  v18 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24EADD704;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EADC100;
  aBlock[3] = &block_descriptor_45;
  v19 = _Block_copy(aBlock);

  v20 = v24;
  swift_beginAccess();
  notify_register_dispatch("com.apple.appstored.IAPInfoDatabaseUpdated", v20, v17, v19);
  swift_endAccess();
  _Block_release(v19);

  return v2;
}

double sub_24EADBF10(uint64_t a1, uint64_t a2)
{
  if (qword_27F210160 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39BB20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A598();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = *(v5 + 40);
    if (v6)
    {
      v7 = *(v5 + 48);
      v8[3] = type metadata accessor for ASDInAppPurchaseStateProvider();
      v8[4] = &protocol witness table for ASDInAppPurchaseStateProvider;
      v8[0] = v5;
      sub_24E5FCA4C(v6, v7);

      v6(v8);
      sub_24E824448(v6, v7);

      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
    }
  }

  return result;
}

double sub_24EADC100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t ASDInAppPurchaseStateProvider.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  swift_unknownObjectRelease();
  sub_24E824448(*(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ASDInAppPurchaseStateProvider.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  swift_unknownObjectRelease();
  sub_24E824448(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_24EADC238@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24EADD848;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4, v5);
}

double sub_24EADC2CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24EADD7E8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_24E5FCA4C(v3, v4);
  return sub_24E824448(v8, v9);
}

uint64_t ASDInAppPurchaseStateProvider.backingDataStoreUpdatedCallback.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_24E5FCA4C(v1, *(v0 + 48));
  return v1;
}

double ASDInAppPurchaseStateProvider.backingDataStoreUpdatedCallback.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_24E824448(v5, v6);
}

void sub_24EADC4E8(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  AdamId.numberValue.getter();
  if (v11)
  {
    v12 = v11;
    swift_beginAccess();
    v13 = sub_24E76C43C(v12, *(a3 + 56));
    if (v13)
    {
      v14 = v13;
      swift_endAccess();
      sub_24EADC5E8(v14, a6);

      return;
    }

    swift_endAccess();
  }

  if (a5)
  {
    v15 = *(a3 + 64);

    v16 = sub_24F4D36F8(a4, a5, v15);

    v17 = v16 & 1 | 0x40;
  }

  else
  {
    v17 = 65;
  }

  *a6 = v17;
}

uint64_t sub_24EADC5E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  result = [a1 type];
  if ((result - 2) >= 3)
  {
    if (result)
    {
      if (result == 1)
      {
        if ([a1 hasUsedFreeOffer])
        {
          v14 = 1;
        }

        else
        {
          v14 = [a1 hasUsedIntroPricingOffer];
        }

        result = v14 | 0x40;
      }

      else
      {
        result = 192;
      }
    }
  }

  else if (ASDIAPInfo.isExpired.getter())
  {
    v7 = [a1 subscriptionFamilyId];
    if (v7)
    {
      v8 = v7;
      v9 = sub_24F92B0D8();
      v11 = v10;

      v12 = *(v3 + 64);

      v13 = sub_24F4D36F8(v9, v11, v12);
    }

    else
    {
      v13 = 0;
    }

    if (([a1 hasUsedFreeOffer] & 1) != 0 || objc_msgSend(a1, sel_hasUsedIntroPricingOffer))
    {
      v13 = 1;
    }

    result = v13 & 1 | 0x40u;
  }

  else
  {
    result = 1;
  }

  *a2 = result;
  return result;
}

double ASDInAppPurchaseStateProvider.refreshData(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  sub_24F929778();

  sub_24E5FCA4C(a1, a2);
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v10 = sub_24F929768();
  sub_24F921FE8();

  sub_24E9FB290(MEMORY[0x277D84F90], sub_24EADD784, v9);
  sub_24F92C048();
  v11 = sub_24F929768();
  sub_24F921FE8();

  (*(v5 + 8))(v7, v4);

  return result;
}

double sub_24EADC924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F927DC8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927D88();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_27F210160 != -1)
    {
      swift_once();
    }

    v19 = sub_24F92AAE8();
    __swift_project_value_buffer(v19, qword_27F39BB20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v34 = v16;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v33 = *(Strong + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
      v31 = a5;
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_24F93DE60;
      sub_24F927D78();
      aBlock[0] = v22;
      sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v30 = a4;
      v32 = v11;
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
      v24 = v34;
      sub_24F92C6A8();
      v25 = swift_allocObject();
      v25[2] = a3;
      v25[3] = v23;
      v27 = v30;
      v26 = v31;
      v25[4] = v30;
      v25[5] = v26;
      aBlock[4] = sub_24EADD8E4;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EAF8248;
      aBlock[3] = &block_descriptor_19_0;
      v28 = _Block_copy(aBlock);

      sub_24E5FCA4C(v27, v26);
      sub_24F927DA8();
      v29 = v33;
      MEMORY[0x2530518B0](0, v13, v18, v28);
      _Block_release(v28);

      (*(v32 + 8))(v13, v10);
      (*(v15 + 8))(v18, v24);
    }
  }

  return result;
}

void sub_24EADCDDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v48 = a3;
  v6 = sub_24F927D88();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24F927DC8();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v47[1] = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    *(v10 + 56) = a2;
  }

  v60 = MEMORY[0x277D84FA0];
  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = sub_24F92CA48() | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(a2 + 32);
    v12 = ~v15;
    v11 = a2 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(a2 + 64);
    v14 = a2;
  }

  v18 = 0;
  v47[0] = v12;
  v19 = (v12 + 64) >> 6;
  v57 = "teDataSource refresh failed.";
  v20 = &selRef_systemBackgroundColor;
  v56 = xmmword_24F93DE60;
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_23:
  v35 = sub_24F92CA78();
  if (!v35 || (v37 = v36, v59 = v35, sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0), swift_dynamicCast(), v32 = aBlock[0], v59 = v37, sub_24E69A5C4(0, &qword_27F21BCF8, 0x277CEC3A0), swift_dynamicCast(), v33 = aBlock[0], v28 = v18, v29 = v13, !v32))
  {
LABEL_28:
    sub_24E6586B4(v14);
    swift_beginAccess();
    v38 = swift_weakLoadStrong();
    if (v38)
    {
      *(v38 + 64) = v60;
    }

    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v39 = sub_24F92BEF8();
    v40 = swift_allocObject();
    v41 = v48;
    v42 = v49;
    *(v40 + 16) = v48;
    *(v40 + 24) = v42;
    aBlock[4] = sub_24E9BFC84;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_25;
    v43 = _Block_copy(aBlock);
    sub_24E5FCA4C(v41, v42);

    v44 = v50;
    sub_24F927DA8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
    v45 = v52;
    v46 = v55;
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v44, v45, v43);
    _Block_release(v43);

    (*(v54 + 8))(v45, v46);
    (*(v51 + 8))(v44, v53);
    return;
  }

  while (1)
  {

    if (([v33 v20[275]] & 1) == 0 && !objc_msgSend(v33, sel_hasUsedIntroPricingOffer))
    {

LABEL_13:
      v18 = v28;
      v13 = v29;
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    v21 = [v33 subscriptionFamilyId];
    if (v21)
    {
      v22 = v21;
      v23 = sub_24F92B0D8();
      v25 = v24;

      sub_24ED7C5F0(aBlock, v23, v25);

      goto LABEL_13;
    }

    if (qword_27F210160 != -1)
    {
      swift_once();
    }

    v34 = sub_24F92AAE8();
    __swift_project_value_buffer(v34, qword_27F39BB20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = v56;
    sub_24F9283A8();
    sub_24F92A5A8();

    v18 = v28;
    v13 = v29;
    v20 = &selRef_systemBackgroundColor;
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

LABEL_14:
    v26 = v18;
    v27 = v13;
    v28 = v18;
    if (!v13)
    {
      break;
    }

LABEL_18:
    v29 = (v27 - 1) & v27;
    v30 = (v28 << 9) | (8 * __clz(__rbit64(v27)));
    v31 = *(*(v14 + 56) + v30);
    v32 = *(*(v14 + 48) + v30);
    v33 = v31;
    if (!v32)
    {
      goto LABEL_28;
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v19)
    {
      goto LABEL_28;
    }

    v27 = *(v11 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_24EADD53C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);
  sub_24E5FCA4C(v2, *(v1 + 48));
  return v2;
}

double sub_24EADD590(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  return sub_24E824448(v6, v7);
}

uint64_t sub_24EADD6CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EADD73C()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EADD810()
{

  return swift_deallocObject();
}

uint64_t sub_24EADD894()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EADD8F0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

id String.encapsulated(color:scale:shape:style:platterSize:lineWeight:minimumWidth:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, double a18, char a19, double a20, char a21, uint64_t a22, uint64_t a23)
{
  v31 = [objc_allocWithZone(MEMORY[0x277CC4818]) init];
  v32 = v31;
  if (a1)
  {
    [v31 setColor_];
  }

  if (a3)
  {
    if (a5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [v32 setScale_];
    if (a5)
    {
LABEL_5:
      v33 = a17;
      if (a7)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  [v32 setShape_];
  v33 = a17;
  if (a7)
  {
LABEL_6:
    v34 = a19;
    if (v33)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v32 setStyle_];
  v34 = a19;
  if ((v33 & 1) == 0)
  {
LABEL_7:
    [v32 setPlatterSize_];
  }

LABEL_8:
  if ((v34 & 1) == 0)
  {
    [v32 setLineWeight_];
  }

  if ((a21 & 1) == 0)
  {
    [v32 setMinimumWidth_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v36 = *MEMORY[0x277CC4810];
  *(inited + 32) = *MEMORY[0x277CC4810];
  *(inited + 64) = sub_24EADDBB0();
  *(inited + 40) = v32;
  v37 = v36;
  v38 = v32;
  sub_24E608940(inited);
  swift_setDeallocating();
  sub_24EADDE6C(inited + 32);
  v39 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v40 = sub_24F92B098();
  type metadata accessor for Key(0);
  sub_24EADDED4();
  v41 = sub_24F92AE28();

  v42 = [v39 initWithString:v40 attributes:v41];

  return v42;
}

unint64_t sub_24EADDBB0()
{
  result = qword_27F227C88;
  if (!qword_27F227C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F227C88);
  }

  return result;
}

id NSAttributedString.encapsulated(color:scale:shape:style:platterSize:lineWeight:minimumWidth:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, double a18, char a19, double a20, char a21)
{
  v30 = [objc_allocWithZone(MEMORY[0x277CC4818]) init];
  v31 = v30;
  if (a1)
  {
    [v30 setColor_];
  }

  if (a3)
  {
    if (a5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [v31 setScale_];
    if (a5)
    {
LABEL_5:
      v32 = a17;
      if (a7)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  [v31 setShape_];
  v32 = a17;
  if (a7)
  {
LABEL_6:
    v33 = a19;
    if (v32)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v31 setStyle_];
  v33 = a19;
  if (v32)
  {
LABEL_7:
    v34 = a21;
    if (v33)
    {
      goto LABEL_8;
    }

LABEL_15:
    [v31 setLineWeight_];
    if (v34)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_14:
  [v31 setPlatterSize_];
  v34 = a21;
  if ((v33 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v34 & 1) == 0)
  {
LABEL_9:
    [v31 setMinimumWidth_];
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v36 = *MEMORY[0x277CC4810];
  *(inited + 32) = *MEMORY[0x277CC4810];
  *(inited + 64) = sub_24EADDBB0();
  *(inited + 40) = v31;
  v37 = v36;
  v38 = v31;
  sub_24E608940(inited);
  swift_setDeallocating();
  sub_24EADDE6C(inited + 32);
  v39 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  type metadata accessor for Key(0);
  sub_24EADDED4();
  v40 = sub_24F92AE28();

  v41 = v39;
  [v41 addAttributes:v40 range:{0, objc_msgSend(v41, sel_length)}];

  return v41;
}

uint64_t sub_24EADDE6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221890, &qword_24F93AD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EADDED4()
{
  result = qword_27F212318;
  if (!qword_27F212318)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F212318);
  }

  return result;
}

uint64_t sub_24EADDF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24E67D244;

  return sub_24EADDFEC(a3);
}

uint64_t sub_24EADDFEC(uint64_t a1)
{
  v1[7] = a1;
  type metadata accessor for FriendsDataIntent(0);
  v1[8] = swift_task_alloc();
  v1[9] = *(type metadata accessor for Player(0) - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EADE0E0, 0, 0);
}

uint64_t sub_24EADE0E0()
{
  *(v0 + 96) = sub_24F92B7F8();
  *(v0 + 104) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EADE178, v2, v1);
}

uint64_t sub_24EADE178()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 112) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24EADE200, 0, 0);
}

uint64_t sub_24EADE200(uint64_t a1)
{
  *(v1 + 120) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EADE28C, v3, v2);
}

uint64_t sub_24EADE28C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E70D960(v1 + v4, v2);

  sub_24E70D960(v2, v3);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_24EADE3D4;
  v6 = v0[7];
  v7 = v0[8];

  return sub_24E6480C8(v7, v6);
}

uint64_t sub_24EADE3D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_24EADE7EC;
  }

  else
  {
    v4 = sub_24EADE4E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24EADE4E8()
{
  v1 = v0[17];
  v35 = *(v1 + 16);
  if (v35)
  {
    v2 = 0;
    v33 = v0[9];
    v34 = v0[10];
    v32 = v1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v3 = MEMORY[0x277D84F98];
    v30 = v0[17];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v5 = v0[10];
      sub_24E70D960(v32 + *(v33 + 72) * v2, v5);
      v6 = *v5;
      v7 = *(v34 + 8);
      v8 = sub_24F37B534();
      v10 = v9;
      v36 = v11;
      v37 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_24E76D644(v6, v7);
      v16 = v3[2];
      v17 = (v14 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        goto LABEL_26;
      }

      v19 = v14;
      if (v3[3] >= v18)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v14)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_24E8B1704();
          if (v19)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_24E89FC30(v18, isUniquelyReferenced_nonNull_native);
        v20 = sub_24E76D644(v6, v7);
        if ((v19 & 1) != (v21 & 1))
        {

          sub_24F92CF88();
          return;
        }

        v15 = v20;
        if (v19)
        {
LABEL_3:
          v4 = (v3[7] + 32 * v15);
          *v4 = v8;
          v4[1] = v10;
          v4[2] = v36;
          v4[3] = v37;

          goto LABEL_4;
        }
      }

      v3[(v15 >> 6) + 8] |= 1 << v15;
      v22 = (v3[6] + 16 * v15);
      *v22 = v6;
      v22[1] = v7;
      v23 = (v3[7] + 32 * v15);
      *v23 = v8;
      v23[1] = v10;
      v23[2] = v36;
      v23[3] = v37;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_27;
      }

      v3[2] = v26;

LABEL_4:
      ++v2;
      v0 = v31;
      sub_24EADE8B0(v31[10], type metadata accessor for Player);
      v1 = v30;
      if (v35 == v2)
      {
        goto LABEL_19;
      }
    }
  }

  v3 = MEMORY[0x277D84F98];
LABEL_19:
  v27 = v0[11];
  v28 = v0[8];

  sub_24EADE8B0(v28, type metadata accessor for FriendsDataIntent);
  sub_24EADE8B0(v27, type metadata accessor for Player);

  v29 = v0[1];

  v29(v3);
}

uint64_t sub_24EADE7EC()
{
  v1 = v0[11];
  sub_24EADE8B0(v0[8], type metadata accessor for FriendsDataIntent);
  sub_24EADE8B0(v1, type metadata accessor for Player);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24EADE8B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EADE910()
{
  type metadata accessor for AutomaticUpdates();
  v0 = swift_allocObject();
  result = AutomaticUpdates.init()();
  qword_27F227C90 = v0;
  return result;
}

uint64_t AutomaticUpdates.__allocating_init()()
{
  v0 = swift_allocObject();
  AutomaticUpdates.init()();
  return v0;
}

uint64_t static AutomaticUpdates.shared.getter()
{
  if (qword_27F210168 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24EADE9E0()
{
  result = sub_24F92B098();
  qword_27F227C98 = result;
  return result;
}

id static AutomaticUpdates.enabledDidChangeNotification.getter()
{
  if (qword_27F210170 != -1)
  {
    swift_once();
  }

  v1 = qword_27F227C98;

  return v1;
}

uint64_t sub_24EADEA74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_allocate_value_buffer(v0, qword_27F227CA0);
  __swift_project_value_buffer(v0, qword_27F227CA0);
  return sub_24F928C68();
}

uint64_t AutomaticUpdates.init()()
{
  v1 = v0;
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210178 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v2, qword_27F227CA0);
  sub_24F928868();

  *(v0 + 16) = (v5 == 2) | v5 & 1;
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_applicationWillEnterForegroundWithNotification_ name:*MEMORY[0x277D76758] object:0];

  return v1;
}

uint64_t sub_24EADEC14()
{
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210178 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v0, qword_27F227CA0);
  sub_24F928868();

  return (v2 == 2) | v2 & 1u;
}

void sub_24EADEDC0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210178 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_project_value_buffer(v3, qword_27F227CA0);
  sub_24F928868();

  if (v6 == 2)
  {
    if (v2)
    {
      return;
    }
  }

  else if (v2 == (v6 & 1))
  {
    return;
  }

  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  sub_24F928868();

  *(v0 + 16) = (v5 == 2) | v5 & 1;
  v4 = [objc_opt_self() defaultCenter];
  if (qword_27F210170 != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:qword_27F227C98 object:v1];
}

uint64_t static ActionDispatcherFactory.mainActionDispatcher<A>(following:windowScene:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v17 - v14;
  sub_24EADF17C(a1, a2, a3, a4, a5, &v17 - v14);
  (*(v13 + 16))(a6, v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227CB8, &qword_24F980848);
  sub_24E602068(&qword_27F227CC0, &qword_27F227CB8, &qword_24F980848, &unk_24F96AFF0);
  sub_24F929238();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_24EADF17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v32 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v30 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v30 - v19;
  MEMORY[0x28223BE20](v21);
  v33 = v30 - v22;
  MEMORY[0x28223BE20](v23);
  v31 = v30 - v24;
  sub_24EADF60C(a1, a3, a4, a5, v14);
  v34 = a2;
  v30[0] = *(v12 + 16);
  v30[1] = a2;
  (v30[0])(v17, v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227CC8, &qword_24F980868);
  sub_24E602068(&qword_27F227CD0, &qword_27F227CC8, &qword_24F980868, &unk_24F9DED60);
  sub_24F929238();
  v25 = *(v12 + 8);
  v25(v14, v11);
  v34 = a2;
  v26 = v30[0];
  (v30[0])(v20, v17, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227CD8, &qword_24F980870);
  sub_24E602068(&qword_27F227CE0, &qword_27F227CD8, &qword_24F980870, &unk_24F9C55E8);
  sub_24F929238();
  v25(v17, v11);
  v27 = v33;
  v26(v33, v20, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227CE8, &qword_24F980878);
  sub_24E602068(&qword_27F227CF0, &qword_27F227CE8, &qword_24F980878, &unk_24F9BB568);
  sub_24F929238();
  v25(v20, v11);
  v28 = v31;
  v26(v31, v27, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227CF8, &qword_24F980880);
  sub_24E602068(&qword_27F227D00, &qword_27F227CF8, &qword_24F980880, &unk_24F9AF2C0);
  sub_24F929238();
  v25(v33, v11);
  swift_unknownObjectUnownedInit();
  v26(v32, v28, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227D08, &qword_24F980888);
  sub_24E602068(&qword_27F227D10, &qword_27F227D08, &qword_24F980888, &unk_24F982C78);
  sub_24F929238();
  sub_24E601704(&v34, &qword_27F227D08, &qword_24F980888);
  return (v25)(v28, v11);
}

uint64_t sub_24EADF60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v206 = a1;
  v173 = a5;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227D18, &unk_24F980890);
  v172 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v155 - v8;
  v168 = type metadata accessor for FlowBackActionImplementation(0);
  MEMORY[0x28223BE20](v168);
  v167 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_24F928FD8();
  v212 = a2;
  v213 = v210;
  v183 = a2;
  v214 = a3;
  v215 = a4;
  v165 = sub_24F921AC8();
  v166 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = &v155 - v10;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221048, &qword_24F965990);
  v163 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v155 - v11;
  v160 = type metadata accessor for CompoundActionImplementation(0);
  MEMORY[0x28223BE20](v160);
  v159 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227D20, &qword_24F9808A0);
  v158 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v156 = &v155 - v13;
  sub_24F921888();
  v14 = sub_24F9271C8();
  v205 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v155 - v16;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227D28, &qword_24F9808A8);
  MEMORY[0x28223BE20](v211);
  v155 = &v155 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v169 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v178 = &v155 - v23;
  MEMORY[0x28223BE20](v24);
  v177 = &v155 - v25;
  MEMORY[0x28223BE20](v26);
  v176 = &v155 - v27;
  MEMORY[0x28223BE20](v28);
  v195 = &v155 - v29;
  MEMORY[0x28223BE20](v30);
  v193 = &v155 - v31;
  MEMORY[0x28223BE20](v32);
  v192 = &v155 - v33;
  MEMORY[0x28223BE20](v34);
  v189 = &v155 - v35;
  MEMORY[0x28223BE20](v36);
  v187 = &v155 - v37;
  MEMORY[0x28223BE20](v38);
  v186 = &v155 - v39;
  MEMORY[0x28223BE20](v40);
  v185 = &v155 - v41;
  MEMORY[0x28223BE20](v42);
  v184 = &v155 - v43;
  MEMORY[0x28223BE20](v44);
  v188 = &v155 - v45;
  MEMORY[0x28223BE20](v46);
  v190 = &v155 - v47;
  MEMORY[0x28223BE20](v48);
  v191 = &v155 - v49;
  MEMORY[0x28223BE20](v50);
  v194 = &v155 - v51;
  MEMORY[0x28223BE20](v52);
  v197 = &v155 - v53;
  MEMORY[0x28223BE20](v54);
  v196 = &v155 - v55;
  MEMORY[0x28223BE20](v56);
  v199 = &v155 - v57;
  MEMORY[0x28223BE20](v58);
  v198 = &v155 - v59;
  MEMORY[0x28223BE20](v60);
  v201 = &v155 - v61;
  MEMORY[0x28223BE20](v62);
  v200 = &v155 - v63;
  MEMORY[0x28223BE20](v64);
  v203 = &v155 - v65;
  MEMORY[0x28223BE20](v66);
  v202 = &v155 - v67;
  MEMORY[0x28223BE20](v68);
  v70 = &v155 - v69;
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v155 - v73;
  v75 = *(v15 + 16);
  v182 = v15 + 16;
  v181 = v75;
  v204 = v17;
  (v75)(v17, v206, v14, v72);
  v174 = a3;
  v175 = a4;
  sub_24ED09178(v17, v210, v183, a3, a4);
  sub_24F929298();
  v207 = *(v20 + 16);
  v208 = v20 + 16;
  v179 = v74;
  v207(v74, v70, v19);
  sub_24E602068(&qword_27F227D30, &qword_27F227D28, &qword_24F9808A8, &unk_24F997CC0);
  v76 = v155;
  sub_24F929238();
  v209 = *(v20 + 8);
  v211 = v20 + 8;
  v209(v70, v19);
  sub_24E601704(v76, &qword_27F227D28, &qword_24F9808A8);
  v181(v204, v206, v205);
  v77 = v156;
  sub_24F921AD8();
  v78 = v202;
  sub_24F929298();
  v180 = v70;
  v79 = v207;
  v207(v70, v78, v19);
  sub_24E602068(&qword_27F227D38, &qword_27F227D20, &qword_24F9808A0, MEMORY[0x277D7EBD8]);
  v80 = v157;
  sub_24F929238();
  v209(v78, v19);
  (*(v158 + 8))(v77, v80);
  v81 = v203;
  sub_24F929298();
  v82 = v81;
  v79(v78, v81, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227D40, &qword_24F9808B0);
  sub_24E602068(&qword_27F227D48, &qword_27F227D40, &qword_24F9808B0, &protocol conformance descriptor for ArcadeActionImplementation<A>);
  sub_24F929238();
  v83 = v209;
  v209(v81, v19);
  v84 = v200;
  sub_24F929298();
  v85 = v84;
  v207(v82, v84, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227D50, &qword_24F9808B8);
  sub_24E602068(&qword_27F227D58, &qword_27F227D50, &qword_24F9808B8, &protocol conformance descriptor for ArcadeLaunchAttributionActionImplementation<A>);
  sub_24F929238();
  v83(v84, v19);
  v86 = v201;
  sub_24F929298();
  v87 = v86;
  v88 = v207;
  v207(v85, v86, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227D60, &qword_24F9808C0);
  sub_24E602068(&qword_27F227D68, &qword_27F227D60, &qword_24F9808C0, &protocol conformance descriptor for ArcadeSubscriptionStateActionImplementation<A>);
  sub_24F929238();
  v83(v86, v19);
  v89 = v198;
  sub_24F929298();
  v90 = v89;
  v88(v87, v89, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227D70, &qword_24F9808C8);
  sub_24E602068(&qword_27F227D78, &qword_27F227D70, &qword_24F9808C8, &protocol conformance descriptor for CancelPreorderActionImplementation<A>);
  sub_24F929238();
  v83(v89, v19);
  v91 = v159;
  sub_24F92A218();
  v92 = v199;
  sub_24F929298();
  v93 = v90;
  v94 = v92;
  v95 = v207;
  v207(v93, v92, v19);
  sub_24EAE1878(&qword_27F227D80, type metadata accessor for CompoundActionImplementation, &protocol conformance descriptor for CompoundActionImplementation);
  sub_24F929238();
  v83(v92, v19);
  sub_24EAE18C0(v91, type metadata accessor for CompoundActionImplementation);
  v96 = v161;
  sub_24F92A218();
  v97 = v196;
  sub_24F929298();
  v95(v94, v97, v19);
  sub_24E602068(&qword_27F227D88, &qword_27F221048, &qword_24F965990, MEMORY[0x277D222E0]);
  v98 = v162;
  sub_24F929238();
  v99 = v97;
  v209(v97, v19);
  (*(v163 + 8))(v96, v98);
  v100 = v197;
  sub_24F929298();
  v101 = v100;
  v95(v99, v100, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227D90, &qword_24F9808D0);
  sub_24E602068(&qword_27F227D98, &qword_27F227D90, &qword_24F9808D0, &unk_24F9A0A30);
  sub_24F929238();
  v102 = v209;
  v209(v100, v19);
  v103 = v194;
  sub_24F929298();
  v95(v101, v103, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227DA0, &qword_24F9808D8);
  sub_24E602068(&qword_27F227DA8, &qword_27F227DA0, &qword_24F9808D8, &protocol conformance descriptor for ExternalUrlActionImplementation<A>);
  sub_24F929238();
  v102(v103, v19);
  v104 = v181;
  v181(v204, v206, v205);
  v105 = v164;
  v106 = v183;
  v107 = v174;
  v108 = v175;
  sub_24F921AB8();
  v109 = v165;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v166 + 8))(v105, v109);
  v110 = v204;
  v104(v204, v206, v205);
  v111 = v167;
  sub_24EA63310(v110, v106, v107, v108);
  v112 = v190;
  sub_24F929298();
  v113 = v112;
  v114 = v207;
  v207(v191, v112, v19);
  sub_24EAE1878(&qword_27F227DB0, type metadata accessor for FlowBackActionImplementation, &unk_24F979960);
  sub_24F929238();
  v115 = v209;
  v209(v112, v19);
  sub_24EAE18C0(v111, type metadata accessor for FlowBackActionImplementation);
  v116 = v188;
  sub_24F929298();
  v117 = v116;
  v114(v113, v116, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227DB8, &qword_24F9808E0);
  sub_24E602068(&qword_27F227DC0, &qword_27F227DB8, &qword_24F9808E0, &protocol conformance descriptor for HttpActionImplementation<A>);
  sub_24F929238();
  v115(v116, v19);
  v118 = v184;
  sub_24F929298();
  v114(v117, v118, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227DC8, &qword_24F9808E8);
  sub_24E602068(&qword_27F227DD0, &qword_27F227DC8, &qword_24F9808E8, &protocol conformance descriptor for LocalActionImplementation<A>);
  sub_24F929238();
  v119 = v118;
  v120 = v209;
  v209(v118, v19);
  v121 = v185;
  sub_24F929298();
  v122 = v114;
  v114(v119, v121, v19);
  sub_24EAE1920();
  sub_24F929238();
  v120(v121, v19);
  v123 = v186;
  sub_24F929298();
  v114(v121, v123, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227DE0, &qword_24F9808F0);
  sub_24E602068(&qword_27F227DE8, &qword_27F227DE0, &qword_24F9808F0, &unk_24F9949B0);
  sub_24F929238();
  v120(v123, v19);
  v124 = v187;
  sub_24F929298();
  v125 = v124;
  v122(v123, v124, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227DF0, &qword_24F9808F8);
  sub_24E602068(&qword_27F227DF8, &qword_27F227DF0, &qword_24F9808F8, &unk_24F9DD7B0);
  sub_24F929238();
  v120(v124, v19);
  v126 = v189;
  sub_24F929298();
  v127 = v126;
  v122(v125, v126, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227E00, &qword_24F980900);
  sub_24E602068(&qword_27F227E08, &qword_27F227E00, &qword_24F980900, &unk_24F9B4BD0);
  sub_24F929238();
  v120(v126, v19);
  v128 = v192;
  sub_24F929298();
  v129 = v128;
  v122(v127, v128, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227E10, &qword_24F980908);
  sub_24E602068(&qword_27F227E18, &qword_27F227E10, &qword_24F980908, &protocol conformance descriptor for RateActionImplementation<A>);
  sub_24F929238();
  v120(v128, v19);
  v130 = v193;
  sub_24F929298();
  v131 = v130;
  v122(v129, v130, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227E20, &qword_24F980910);
  sub_24E602068(&qword_27F227E28, &qword_27F227E20, &qword_24F980910, &protocol conformance descriptor for RateLimitedActionImplementation<A>);
  sub_24F929238();
  v120(v130, v19);
  v132 = v195;
  sub_24F929298();
  v133 = v132;
  v122(v131, v132, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227E30, &qword_24F980918);
  sub_24E602068(&qword_27F227E38, &qword_27F227E30, &qword_24F980918, &unk_24F9931D0);
  sub_24F929238();
  v209(v132, v19);
  v134 = v176;
  sub_24F929298();
  v135 = v134;
  v122(v133, v134, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227E40, &qword_24F980920);
  sub_24E602068(&qword_27F227E48, &qword_27F227E40, &qword_24F980920, &protocol conformance descriptor for SearchAdActionImplementation<A>);
  sub_24F929238();
  v136 = v209;
  v209(v134, v19);
  v137 = v177;
  sub_24F929298();
  v122(v135, v137, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227E50, &qword_24F980928);
  sub_24E602068(&qword_27F227E58, &qword_27F227E50, &qword_24F980928, &unk_24F98C5F0);
  sub_24F929238();
  v136(v137, v19);
  v181(v204, v206, v205);
  v138 = v170;
  sub_24F921B18();
  v139 = v178;
  sub_24F929298();
  v140 = v207;
  v207(v137, v139, v19);
  sub_24E602068(&qword_27F227E60, &qword_27F227D18, &unk_24F980890, MEMORY[0x277D7EBF0]);
  v141 = v138;
  v142 = v171;
  sub_24F929238();
  v143 = v211;
  v136(v139, v19);
  (*(v172 + 8))(v141, v142);
  v144 = v169;
  sub_24F929298();
  v140(v139, v144, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227E68, &unk_24F980930);
  sub_24E602068(&qword_27F227E70, &qword_27F227E68, &unk_24F980930, &unk_24F9AE860);
  sub_24F929238();
  v136(v144, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8, &qword_24F9C34B0);
  v145 = *(v143 + 64);
  v146 = (*(v143 + 72) + 32) & ~*(v143 + 72);
  v206 = swift_allocObject();
  v147 = v206 + v146;
  v148 = v206 + v146;
  v149 = v207;
  v207(v148, v179, v19);
  (v149)(v147 + v145, v180, v19);
  v183 = 2 * v145;
  (v149)(v147 + 2 * v145, v202, v19);
  v205 = 3 * v145;
  (v149)(v147 + 3 * v145, v203, v19);
  v181 = (4 * v145);
  (v149)(v147 + 4 * v145, v200, v19);
  v204 = 5 * v145;
  (v149)(v147 + 5 * v145, v201, v19);
  v182 = v147 + 6 * v145;
  v149();
  v175 = 7 * v145;
  (v149)(v147 + 7 * v145, v199, v19);
  (v149)(v147 + 8 * v145, v196, v19);
  v174 = 9 * v145;
  (v149)(v147 + 9 * v145, v197, v19);
  v172 = v147 + 10 * v145;
  v149();
  v171 = v147 + 11 * v145;
  v149();
  v170 = (v147 + 12 * v145);
  v149();
  v169 = (v147 + 13 * v145);
  v149();
  v168 = v147 + 14 * v145;
  v149();
  v167 = 15 * v145;
  (v149)(v147 + 15 * v145, v185, v19);
  (v149)(v147 + 16 * v145, v186, v19);
  v166 = 17 * v145;
  (v149)(v147 + 17 * v145, v187, v19);
  v165 = v147 + 18 * v145;
  v149();
  v164 = (v147 + 19 * v145);
  v149();
  v163 = v147 + 20 * v145;
  v149();
  v162 = v147 + 21 * v145;
  v149();
  v161 = (v147 + 22 * v145);
  v150 = v176;
  v149();
  v160 = v147 + 23 * v145;
  v151 = v177;
  v149();
  v159 = (v147 + 24 * v145);
  v152 = v178;
  v149();
  sub_24F929298();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v153 = v209;
  v209(v152, v19);
  v153(v151, v19);
  v153(v150, v19);
  v153(v195, v19);
  v153(v193, v19);
  v153(v192, v19);
  v153(v189, v19);
  v153(v187, v19);
  v153(v186, v19);
  v153(v185, v19);
  v153(v184, v19);
  v153(v188, v19);
  v153(v190, v19);
  v153(v191, v19);
  v153(v194, v19);
  v153(v197, v19);
  v153(v196, v19);
  v153(v199, v19);
  v153(v198, v19);
  v153(v201, v19);
  v153(v200, v19);
  v153(v203, v19);
  v153(v202, v19);
  v153(v180, v19);
  return (v153)(v179, v19);
}

uint64_t sub_24EAE1878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EAE18C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EAE1920()
{
  result = qword_27F227DD8;
  if (!qword_27F227DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227DD8);
  }

  return result;
}

void (*TodayCardMediaSingleLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v33 - v8;
  MEMORY[0x28223BE20](v9);
  v43 = &v33 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v45 = sub_24F928388();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v36 = &v33 - v16;
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v33 - v19;
  sub_24F929608();
  sub_24F928398();
  v40 = v5;
  v21 = *(v5 + 16);
  v21(v13, a2, v4);
  v39 = v20;
  v22 = v43;
  sub_24F929548();
  v21(v22, a2, v4);
  v23 = v36;
  v42 = a1;
  sub_24F928398();
  v24 = v37;
  v21(v37, v22, v4);
  type metadata accessor for CondensedAdLockupWithIconBackground(0);
  swift_allocObject();
  v25 = v38;
  v26 = CondensedAdLockupWithIconBackground.init(deserializing:using:)(v23, v24);
  if (v25)
  {
    v27 = *(v40 + 8);
    (v27)(a2, v4);
    (*(v44 + 8))(v42, v45);
    (v27)(v22, v4);
    sub_24E601704(v39, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for TodayCardMediaSingleLockup(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v40;
    *(v41 + OBJC_IVAR____TtC12GameStoreKit26TodayCardMediaSingleLockup_condensedAdLockupWithIconBackground) = v26;
    v29 = v34;
    (*(v44 + 16))(v34, v42, v45);
    v30 = v35;
    v21(v35, a2, v4);
    v27 = TodayCardMedia.init(deserializing:using:)(v29, v30);
    v32 = *(v28 + 8);
    v32(a2, v4);
    (*(v44 + 8))(v42, v45);
    v32(v43, v4);
    sub_24E601704(v39, &qword_27F213E68, &unk_24F93BC80);
  }

  return v27;
}

uint64_t TodayCardMediaSingleLockup.__allocating_init(condensedAdLockupWithIconBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaSingleLockup.init(condensedAdLockupWithIconBackground:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaSingleLockup.init(condensedAdLockupWithIconBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit26TodayCardMediaSingleLockup_condensedAdLockupWithIconBackground) = a1;
  v13 = sub_24F929608();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_24E65E064(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v20[1] = v15;
    v20[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v21, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v14 + 8))(a2, v13);
  sub_24E601704(v27, &qword_27F235830, &qword_24F93B8C0);
  v18 = v25;
  *(v3 + 32) = v24;
  *(v3 + 48) = v18;
  *(v3 + 64) = v26;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v3 + 16) = 11;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaSingleLockup.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaSingleLockup.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaSingleLockup(uint64_t a1)
{
  result = qword_27F227E78;
  if (!qword_27F227E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DynamicUIIntent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v40 = a3;
  v4 = sub_24F9285B8();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = sub_24F91F4A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_24F928398();
  sub_24F928268();
  v21 = *(v10 + 8);
  v20 = v10 + 8;
  v19 = v21;
  v21(v14, v9);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_24E70E058(v8);
    v22 = sub_24F92AC38();
    sub_24EAE2A74(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v24 = v23;
    v25 = type metadata accessor for DynamicUIIntent(0);
    *v24 = 7107189;
    v24[1] = 0xE300000000000000;
    v24[2] = v25;
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D22530], v22);
    swift_willThrow();
    (*(v42 + 8))(v44, v43);
    return v19(v41, v9);
  }

  else
  {
    v36 = v20;
    v37 = v19;
    v35 = v9;
    (*(v16 + 32))(v18, v8, v15);
    (*(v16 + 16))(v40, v18, v15);
    type metadata accessor for DynamicUIRequestInfo();
    v27 = v41;
    sub_24F928398();
    (*(v42 + 16))(v39, v44, v43);
    sub_24EAE2A74(&qword_27F227E88, type metadata accessor for DynamicUIRequestInfo, &protocol conformance descriptor for DynamicUIRequestInfo);
    sub_24F929548();
    v28 = v45;
    if (v45)
    {
      (*(v42 + 8))(v44, v43);
      v37(v27, v35);
      (*(v16 + 8))(v18, v15);
      result = type metadata accessor for DynamicUIIntent(0);
      *(v40 + *(result + 20)) = v28;
    }

    else
    {
      v29 = sub_24F92AC38();
      sub_24EAE2A74(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      v31 = v30;
      v32 = type metadata accessor for DynamicUIIntent(0);
      *v31 = 0x4974736575716572;
      v31[1] = 0xEB000000006F666ELL;
      v31[2] = v32;
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D22530], v29);
      swift_willThrow();
      (*(v42 + 8))(v44, v43);
      v37(v27, v35);
      v33 = *(v16 + 8);
      v33(v18, v15);
      return (v33)(v40, v15);
    }
  }

  return result;
}

uint64_t type metadata accessor for DynamicUIIntent(uint64_t a1)
{
  result = qword_27F227E90;
  if (!qword_27F227E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAE2A74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DynamicUIIntent.init(url:requestInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F91F4A8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for DynamicUIIntent(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t DynamicUIIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F4A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DynamicUIIntent.requestInfo.getter()
{
  type metadata accessor for DynamicUIIntent(0);
}

JSValue __swiftcall DynamicUIIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;
  v8 = sub_24F91F398();
  v7 = [v3 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v8, v6}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_24F92C328();
  result.super.isa = [v3 valueWithObject:*(v1 + *(type metadata accessor for DynamicUIIntent(0) + 20)) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24EAE2D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EAE2E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F4A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24EAE2F0C(uint64_t a1)
{
  result = sub_24F91F4A8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DynamicUIRequestInfo();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double (*Action.linkAction.modify(void *a1))(void *a1)
{
  *a1 = v1;

  return sub_24E95247C;
}

double (*sub_24EAE3018(uint64_t *a1))(void *a1)
{
  *a1 = *v1;

  return sub_24E95247C;
}

double ClickableModel<>.linkAction.setter(uint64_t a1)
{
  CGSizeMake();

  return result;
}

double (*sub_24EAE3128(void *a1))(void *a1)
{
  *a1 = *(*v1 + 32);

  return sub_24E95247C;
}

double (*sub_24EAE3184(void *a1))(void *a1)
{
  *a1 = *(*v1 + 88);

  return sub_24E951C6C;
}

uint64_t sub_24EAE31E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = ClickableModel<>.linkAction.getter(*(a1 + a2 - 24), *(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_24EAE3254(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_24EAE32E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6552416574697277;
  }

  else
  {
    v3 = 0x7461526F54706174;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEC00000077656976;
  }

  if (*a2)
  {
    v5 = 0x6552416574697277;
  }

  else
  {
    v5 = 0x7461526F54706174;
  }

  if (*a2)
  {
    v6 = 0xEC00000077656976;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EAE3398()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAE3428(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EAE34A4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAE3530@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24EAE3590(uint64_t *a1@<X8>)
{
  v2 = 0x7461526F54706174;
  if (*v1)
  {
    v2 = 0x6552416574697277;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEC00000077656976;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ProductReviewAction.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductReviewAction.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ProductReviewAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v47 = a2;
  v3 = v2;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v9;
  v10 = sub_24F91F6B8();
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  v55 = a1;
  sub_24F928398();
  v25 = sub_24F928348();
  if (v26)
  {
    v50 = v25;
    v51 = v26;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v41 = v18;
    v28 = v10;
    v30 = v29;
    (*(v45 + 8))(v12, v28);
    v50 = v27;
    v51 = v30;
    v18 = v41;
  }

  sub_24F92C7F8();
  v31 = *(v14 + 8);
  v31(v24, v13);
  v32 = v53;
  *(v3 + 24) = v52;
  *(v3 + 40) = v32;
  *(v3 + 56) = v54;
  sub_24F928398();
  sub_24EAE3B8C();
  v33 = v46;
  sub_24F928218();
  if (v33)
  {
    (*(v49 + 8))(v47, v48);
    v31(v55, v13);
    v31(v21, v13);
    sub_24E6585F8(v3 + 24);
    type metadata accessor for ProductReviewAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v46 = v13;
    v31(v21, v13);
    v34 = (v49 + 16);
    if (v52)
    {
      v35 = v42;
      sub_24F928398();
      v36 = v44;
      (*v34)(v44, v47, v48);
      type metadata accessor for ProductWriteAReview();
      swift_allocObject();
      v37 = ProductWriteAReview.init(deserializing:using:)(v35, v36);
      (*(v49 + 8))(v47, v48);
      v31(v55, v46);
      *(v3 + 16) = v37 | 0x8000000000000000;
    }

    else
    {
      sub_24F928398();
      v38 = v43;
      (*v34)(v43, v47, v48);
      type metadata accessor for TapToRate(0);
      swift_allocObject();
      v40 = TapToRate.init(deserializing:using:)(v18, v38);
      (*(v49 + 8))(v47, v48);
      v31(v55, v46);
      *(v3 + 16) = v40;
    }
  }

  return v3;
}

unint64_t sub_24EAE3B8C()
{
  result = qword_27F227EA0;
  if (!qword_27F227EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227EA0);
  }

  return result;
}

uint64_t ProductReviewAction.action.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_24EAE3D0C(v2);
}

uint64_t ProductReviewAction.deinit()
{
  sub_24E6586B4(*(v0 + 16));
  sub_24E6585F8(v0 + 24);
  return v0;
}

uint64_t ProductReviewAction.__deallocating_deinit()
{
  sub_24E6586B4(*(v0 + 16));
  sub_24E6585F8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_24EAE3C94@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductReviewAction();
  v7 = swift_allocObject();
  result = ProductReviewAction.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t sub_24EAE3D18()
{
  result = qword_27F227EA8;
  if (!qword_27F227EA8)
  {
    type metadata accessor for ProductReviewAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227EA8);
  }

  return result;
}

uint64_t sub_24EAE3DB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24EAE3E14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_24EAE3EAC()
{
  result = qword_27F227EB0;
  if (!qword_27F227EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227EB0);
  }

  return result;
}