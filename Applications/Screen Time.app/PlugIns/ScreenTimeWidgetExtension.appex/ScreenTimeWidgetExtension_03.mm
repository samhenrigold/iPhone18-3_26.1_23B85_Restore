uint64_t sub_1000465C4@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v3 = a1;
  v4 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  if (v4 >= 5)
  {
    sub_100046BE8(v3, v3 + 32, 0, 9uLL);
    v5 = v17;
  }

  else
  {

    v5 = v3;
  }

  type metadata accessor for UsageTimelineEntry(0);
  sub_100049B68();
  sub_100049598();
  v6 = sub_100049B68();
  v8 = v7;
  v9 = sub_100042A20();

  if (v4 >= 4)
  {
    sub_100046BE8(v3, v3 + 32, 0, 7uLL);
    v11 = v10;

    v3 = v11;
  }

  sub_100049B68();
  sub_100049598();
  v12 = sub_100049B68();
  v14 = v13;
  v15 = sub_100042A20();
  *&v27[104] = v59;
  *&v27[88] = v58;
  *&v27[72] = v57;
  *&v27[56] = v56;
  *&v27[8] = v53;
  *&v27[24] = v54;
  *&v27[40] = v55;
  *v27 = v5;
  *&v27[120] = v9;
  __src[6] = *&v27[96];
  __src[7] = *&v27[112];
  __src[2] = *&v27[32];
  __src[3] = *&v27[48];
  __src[4] = *&v27[64];
  __src[5] = *&v27[80];
  __src[0] = *v27;
  __src[1] = *&v27[16];
  *&v29[8] = v20;
  *&v29[24] = v21;
  *&v29[104] = v26;
  *&v29[88] = v25;
  *&v29[72] = v24;
  *&v29[56] = v23;
  *&v29[40] = v22;
  *v29 = v3;
  *&v29[120] = v15;
  *&v30 = v12;
  *(&v30 + 1) = v14;
  __src[12] = *&v29[48];
  __src[13] = *&v29[64];
  __src[10] = *&v29[16];
  __src[11] = *&v29[32];
  __src[16] = *&v29[112];
  __src[17] = v30;
  *&v28 = v6;
  *(&v28 + 1) = v8;
  __src[14] = *&v29[80];
  __src[15] = *&v29[96];
  __src[8] = v28;
  __src[9] = *v29;
  memcpy(a3, __src, 0x120uLL);
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v31 = v3;
  v39 = v15;
  v40 = v12;
  v41 = v14;
  sub_1000055FC(v27, &v42, &qword_10005EEF8, &qword_10004CD58);
  sub_1000055FC(v29, &v42, &qword_10005EEF8, &qword_10004CD58);
  sub_100005664(&v31, &qword_10005EEF8, &qword_10004CD58);
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v49 = v59;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v42 = v5;
  v50 = v9;
  v51 = v6;
  v52 = v8;
  return sub_100005664(&v42, &qword_10005EEF8, &qword_10004CD58);
}

unint64_t sub_1000469D0()
{
  result = qword_10005DE08;
  if (!qword_10005DE08)
  {
    sub_100049CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005DE08);
  }

  return result;
}

double sub_100046A28(uint64_t a1)
{
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 352) = -256;
  return result;
}

unint64_t sub_100046A70()
{
  result = qword_10005EEB8;
  if (!qword_10005EEB8)
  {
    sub_100003634(&qword_10005EEA8, &qword_10004CD20);
    sub_100005708(&qword_10005EEC0, &qword_10005EEC8, &qword_10004CD30, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EEB8);
  }

  return result;
}

unint64_t sub_100046B28()
{
  result = qword_10005EED0;
  if (!qword_10005EED0)
  {
    sub_100003634(&qword_10005EEB0, &qword_10004CD28);
    sub_100005708(&qword_10005EED8, &qword_10005EEE0, &qword_10004CD38, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EED0);
  }

  return result;
}

void sub_100046BE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000027D4(&qword_10005E1F8, &unk_10004CD60);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_100046CD8()
{
  result = qword_10005EF68;
  if (!qword_10005EF68)
  {
    sub_100003634(&qword_10005EF20, &qword_10004CD90);
    sub_100005708(&qword_10005EF70, &qword_10005EF18, &qword_10004CD88, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EF68);
  }

  return result;
}

unint64_t sub_100046D90()
{
  result = qword_10005EF78;
  if (!qword_10005EF78)
  {
    sub_100003634(&qword_10005EF08, &qword_10004CD78);
    sub_100005708(&qword_10005EF80, &qword_10005EF00, &qword_10004CD70, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EF78);
  }

  return result;
}

uint64_t sub_100046E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100046EB8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100046EC4()
{
  result = qword_10005EFE8;
  if (!qword_10005EFE8)
  {
    sub_100003634(&qword_10005EFD8, &qword_10004CE58);
    sub_100005708(&qword_10005EFF0, &qword_10005EFC0, &qword_10004CE40, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EFE8);
  }

  return result;
}

uint64_t sub_100046F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenTimeWidgetGraph(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046FE0(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_100046FF8(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_100046FF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_100047034(uint64_t a1)
{
  v2 = type metadata accessor for ScreenTimeWidgetGraph(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100047090(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000470A8(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1000470A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

unint64_t sub_1000470E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005F000;
  if (!qword_10005F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F000);
  }

  return result;
}

unint64_t sub_100047138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005F008;
  if (!qword_10005F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F008);
  }

  return result;
}

uint64_t sub_10004718C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10004719C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100049678();
  *a1 = result;
  return result;
}

uint64_t sub_1000471C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100049678();
  *a1 = result;
  return result;
}

unint64_t sub_10004724C()
{
  result = qword_10005F030;
  if (!qword_10005F030)
  {
    v1 = sub_100003634(&qword_10005F028, &qword_10004CEC0);
    sub_100047304(v1, v2, v3);
    sub_100005708(&qword_10005F040, &qword_10005F048, &qword_10004CEC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F030);
  }

  return result;
}

unint64_t sub_100047304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005F038;
  if (!qword_10005F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F038);
  }

  return result;
}

uint64_t sub_100047358(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

uint64_t sub_100047364()
{
  sub_100003634(&qword_10005EE60, &qword_10004CCD8);
  sub_100005708(&qword_10005EE70, &qword_10005EE60, &qword_10004CCD8, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

id STSelectUserIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STSelectUserIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for STSelectUserIntent();
  return objc_msgSendSuper2(&v3, "init");
}

id STUser.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id STSelectUserIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id STSelectUserIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100049DF8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id STSelectUserIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_100049DF8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for STSelectUserIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id STSelectUserIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100049DF8();

  v8 = sub_100049DF8();

  if (a5)
  {
    v9.super.isa = sub_100049D98().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id STSelectUserIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100049DF8();

  v8 = sub_100049DF8();

  if (a5)
  {
    v9.super.isa = sub_100049D98().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for STSelectUserIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_100047A64()
{
  v1 = *v0;
  sub_10004A418();
  sub_10004A428(v1);
  return sub_10004A448();
}

Swift::Int sub_100047AD8(uint64_t a1)
{
  v2 = *v1;
  sub_10004A418();
  sub_10004A428(v2);
  return sub_10004A448();
}

unint64_t sub_100047B1C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100048204(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t STSelectUserIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *STSelectUserIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *STSelectUserIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id STSelectUserIntentResponse.init()()
{
  *&v0[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSelectUserIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id STSelectUserIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id STSelectUserIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id STSelectUserIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100047FB0(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for STSelectUserIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id STSelectUserIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_100049D98().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id STSelectUserIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_100049D98().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1000481CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100048204(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10004823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005F060;
  if (!qword_10005F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F060);
  }

  return result;
}

uint64_t sub_100048290@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STSelectUserIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000482E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STSelectUserIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id STUser.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_100049DF8();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100049DF8();

  if (a6)
  {
    v10 = sub_100049DF8();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id STUser.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_100049DF8();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_100049DF8();

  if (a6)
  {
    v10 = sub_100049DF8();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for STUser();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id STUser.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STUser();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static STUserResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static STUserResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100048874();

    sub_10004A2B8();
  }

  else
  {

    sub_10004A3A8();
    sub_100048874();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100048874();
  isa = sub_100049F48().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_100048874()
{
  result = qword_10005F0E0;
  if (!qword_10005F0E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005F0E0);
  }

  return result;
}

id static STUserResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id STUserResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_100049D98().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id STUserResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_100049D98().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for STUserResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_100048E00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}