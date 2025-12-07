uint64_t MediumAdLockupWithScreenshotsBackground.__allocating_init(lockup:screenshots:isAnimated:riverSpeed:secondaryTextColor:backgroundColor:impressionMetrics:clickAction:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5 & 1;
  *(v17 + 56) = a6;
  *(v17 + 64) = a7;
  sub_1E134B7C8(a8, v17 + OBJC_IVAR____TtC11AppStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);
  *(v17 + OBJC_IVAR____TtC11AppStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction) = a9;
  return v17;
}

uint64_t MediumAdLockupWithScreenshotsBackground.init(lockup:screenshots:isAnimated:riverSpeed:secondaryTextColor:backgroundColor:impressionMetrics:clickAction:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5 & 1;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  sub_1E134B7C8(a8, v9 + OBJC_IVAR____TtC11AppStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);
  *(v9 + OBJC_IVAR____TtC11AppStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction) = a9;
  return v9;
}

void *MediumAdLockupWithScreenshotsBackground.secondaryTextColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *MediumAdLockupWithScreenshotsBackground.backgroundColor.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

double MediumAdLockupWithScreenshotsBackground.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;

  return result;
}

uint64_t MediumAdLockupWithScreenshotsBackground.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

double MediumAdLockupWithScreenshotsBackground.decorations.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t MediumAdLockupWithScreenshotsBackground.debugDescription.getter()
{
  sub_1E1AF6FEC();
  v1 = sub_1E1AF772C();

  v15 = v1;
  MEMORY[0x1E68FECA0](539828256, 0xE400000000000000);
  v2 = *(v0 + 40);
  v3 = v2[2];
  v4 = v2[3];

  MEMORY[0x1E68FECA0](v3, v4);
  MEMORY[0x1E68FECA0](93, 0xE100000000000000);

  MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

  MEMORY[0x1E68FECA0](0x6964616548202D20, 0xEC000000203A676ELL);
  v5 = v2[11];
  if (v5)
  {
    v6 = v2[10];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v2[11];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v6, v7);

  MEMORY[0x1E68FECA0](0x3A656C746974202CLL, 0xE900000000000020);
  v8 = v2[13];
  if (v8)
  {
    v9 = v2[12];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v2[13];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v9, v10);

  MEMORY[0x1E68FECA0](0x746974627573202CLL, 0xEB000000003A656CLL);
  v11 = v2[15];
  if (v11)
  {
    v12 = v2[14];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v2[15];
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v12, v13);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return v15;
}

uint64_t MediumAdLockupWithScreenshotsBackground.deinit()
{

  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);

  return v0;
}

uint64_t MediumAdLockupWithScreenshotsBackground.__deallocating_deinit()
{

  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_1E19EDE6C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC11AppStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_1E19EE220(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

void *sub_1E19EDF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

double sub_1E19EDFB0@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;

  return result;
}

double sub_1E19EDFC4()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackground(uint64_t a1)
{
  result = qword_1EE1E6980;
  if (!qword_1EE1E6980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E19EE0F4(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E19EE220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *ProductPageScrollAction.__allocating_init(title:section:index:clicksOnScroll:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  v32 = a1;
  v33 = a2;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC11AppStoreKit23ProductPageScrollAction_section) = a3;
  v17 = v16 + OBJC_IVAR____TtC11AppStoreKit23ProductPageScrollAction_index;
  *v17 = a4;
  v17[8] = a5 & 1;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit23ProductPageScrollAction_clicksOnScroll) = a6;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v18 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v19 = sub_1E1AF3E1C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v16 + v18, a7, v19);
  v21 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v22 = sub_1E1AF46DC();
  (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
  v23 = (v16 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  v24 = v16 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v39, &v36);
  if (*(&v37 + 1))
  {
    v25 = v37;
    *v24 = v36;
    *(v24 + 1) = v25;
    *(v24 + 4) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v28 = v27;
    (*(v13 + 8))(v15, v12);
    v34 = v26;
    v35 = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v20 + 8))(a7, v19);
  sub_1E1308058(v39, &unk_1ECEB5670, qword_1E1B03EC0);
  v29 = v33;
  v16[2] = v32;
  v16[3] = v29;
  v16[4] = 0;
  v16[5] = 0;
  return v16;
}

void *ProductPageScrollAction.init(title:section:index:clicksOnScroll:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, uint64_t a7)
{
  v8 = v7;
  v34 = a6;
  v35 = a1;
  v36 = a2;
  v33 = sub_1E1AEFEAC();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_1E1AF3E1C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + OBJC_IVAR____TtC11AppStoreKit23ProductPageScrollAction_section) = a3;
  v22 = v8 + OBJC_IVAR____TtC11AppStoreKit23ProductPageScrollAction_index;
  *v22 = a4;
  v22[8] = a5 & 1;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit23ProductPageScrollAction_clicksOnScroll) = v34;
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  (*(v19 + 16))(v21, a7, v18);
  v23 = sub_1E1AF46DC();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_1E138853C(v45, &v39);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v27 = v26;
    (*(v32 + 8))(v14, v33);
    v37 = v25;
    v38 = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v19 + 8))(a7, v18);
  sub_1E1308058(v45, &unk_1ECEB5670, qword_1E1B03EC0);
  v28 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v28 + 4) = v44;
  v29 = v43;
  *v28 = v42;
  *(v28 + 1) = v29;
  sub_1E134B7C8(v17, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v30 = v36;
  v8[2] = v35;
  v8[3] = v30;
  v8[4] = 0;
  v8[5] = 0;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

char *ProductPageScrollAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v55 = a2;
  v6 = *v4;
  v50 = v3;
  v51 = v6;
  v54 = sub_1E1AF39DC();
  v7 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v56 = a1;
  sub_1E1AF381C();
  LOBYTE(a1) = sub_1E1AF37AC();
  v48 = v13;
  v24 = *(v13 + 8);
  v53 = v12;
  v25 = v12;
  v26 = v24;
  (v24)(v23, v25);
  v52 = v7;
  if (a1)
  {
    v27 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v28 = 0x6E6F6974636573;
    v29 = v51;
    v28[1] = 0xE700000000000000;
    v28[2] = v29;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x1E69AB690], v27);
    swift_willThrow();
    v30 = v29;
  }

  else
  {
    sub_1E1AF381C();
    v46 = *(v7 + 16);
    v46(v11, v55, v54);
    type metadata accessor for ProductPageSection();
    swift_allocObject();
    v31 = v50;
    v32 = ProductPageSection.init(deserializing:using:)(v20, v11);
    v30 = v51;
    if (!v31)
    {
      *(v4 + OBJC_IVAR____TtC11AppStoreKit23ProductPageScrollAction_section) = v32;
      sub_1E1AF381C();
      v34 = sub_1E1AF36EC();
      v36 = v35;
      v37 = v23;
      v38 = v53;
      (v26)(v37, v53);
      v39 = v4 + OBJC_IVAR____TtC11AppStoreKit23ProductPageScrollAction_index;
      *v39 = v34;
      v39[8] = v36 & 1;
      sub_1E1AF381C();
      LOBYTE(v34) = sub_1E1AF370C();
      v51 = v26;
      (v26)(v17, v38);
      v40 = v38;
      *(v4 + OBJC_IVAR____TtC11AppStoreKit23ProductPageScrollAction_clicksOnScroll) = (v34 == 2) | v34 & 1;
      v41 = v47;
      v42 = v56;
      (*(v48 + 16))(v47, v56, v40);
      v43 = v49;
      v45 = v54;
      v44 = v55;
      v46(v49, v55, v54);
      v30 = Action.init(deserializing:using:)(v41, v43);
      (*(v52 + 8))(v44, v45);
      (v51)(v42, v53);
      return v30;
    }
  }

  (*(v52 + 8))(v55, v54);
  (v26)(v56, v53);
  swift_deallocPartialClassInstance();
  return v30;
}

uint64_t ProductPageScrollAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t ProductPageScrollAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductPageScrollAction(uint64_t a1)
{
  result = qword_1EE1EBE38;
  if (!qword_1EE1EBE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeSubscriptionRepresentation.product.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double ArcadeSubscriptionRepresentation.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

void *ArcadeSubscriptionRepresentation.__allocating_init(product:adamId:buyParams:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = *a3;
  v10 = a3[1];
  result[2] = a1;
  result[3] = a2;
  result[4] = v9;
  result[5] = v10;
  result[6] = a4;
  return result;
}

void *ArcadeSubscriptionRepresentation.init(product:adamId:buyParams:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v6 = a3[1];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = a4;
  return v4;
}

uint64_t ArcadeSubscriptionRepresentation.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeSubscriptionRepresentation.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ArcadeSubscriptionRepresentation.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v46 = a2;
  v5 = *v2;
  v44 = v3;
  v45 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v41 - v7;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v20 = v19;
  v21 = *(v9 + 8);
  v21(v17, v8);
  if (!v20)
  {
    v33 = 0x746375646F7270;
    v25 = v47;
    v34 = 0xE700000000000000;
LABEL_7:
    v35 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v36 = v33;
    v36[1] = v34;
    v36[2] = v45;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    v37 = sub_1E1AF39DC();
    (*(*(v37 - 8) + 8))(v46, v37);
    v21(a1, v8);
    swift_deallocPartialClassInstance();
    return v25;
  }

  v42 = v18;
  sub_1E1AF381C();
  v22 = sub_1E1AF37CC();
  v24 = v23;
  v21(v14, v8);
  if (!v24)
  {
    v33 = 0x64496D616461;

    v34 = 0xE600000000000000;
    v25 = v47;
    goto LABEL_7;
  }

  v25 = v47;
  v47[2] = v42;
  v25[3] = v20;
  v25[4] = v22;
  v25[5] = v24;
  sub_1E1AF381C();
  v26 = v43;
  sub_1E1AF368C();
  v21(v11, v8);
  v27 = sub_1E1AF40DC();
  v28 = a1;
  v29 = v8;
  v30 = v26;
  v31 = *(v27 - 8);
  if ((*(v31 + 48))(v30, 1, v27) == 1)
  {
    v32 = sub_1E1AF39DC();
    (*(*(v32 - 8) + 8))(v46, v32);
    v21(v28, v29);
    sub_1E146F8C4(v30);
    v25[6] = 0;
  }

  else
  {
    v38 = sub_1E1AF40BC();
    v39 = sub_1E1AF39DC();
    (*(*(v39 - 8) + 8))(v46, v39);
    v21(v28, v29);
    (*(v31 + 8))(v30, v27);
    v25[6] = v38;
  }

  return v25;
}

void *ArcadeSubscriptionRepresentation.deinit()
{

  return v0;
}

uint64_t ArcadeSubscriptionRepresentation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1E19EF85C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = ArcadeSubscriptionRepresentation.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t FastImpressionsV5Tracker.__allocating_init(mainQueueName:fastQueueName:impressionableThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1E1AF4EAC();
  swift_allocObject();
  *(v6 + 40) = sub_1E1AF4E8C();
  swift_allocObject();
  *(v6 + 48) = sub_1E1AF4E8C();
  *(v6 + 32) = a5;
  return v6;
}

uint64_t sub_1E19EFA10(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v17 = a2;
  v5 = sub_1E1AF45FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF474C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF473C();
  sub_1E1AF46CC();
  v13 = sub_1E1AF45BC();
  (*(v6 + 8))(v8, v5);
  if (v13 != 2 && (v13 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v4 + 24);
      sub_1E1AF4E5C();
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(ObjectType, v14);
      swift_unknownObjectRelease();
    }
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E19EFC28(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v6 = sub_1E1AF45FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF474C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF473C();
  v18 = a2;
  sub_1E1AF4E5C();
  sub_1E1AF46CC();
  v14 = sub_1E1AF45BC();
  (*(v7 + 8))(v9, v6);
  if (v14 != 2 && (v14 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v4 + 24);
      sub_1E1AF4E5C();
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E19EFE58(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6)
{
  v19[1] = a5;
  v7 = sub_1E1AF45FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF474C();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v6;
  sub_1E1AF472C();
  sub_1E1AF4E5C();
  sub_1E1AF46CC();
  v15 = sub_1E1AF45BC();
  (*(v8 + 8))(v10, v7);
  if (v15 != 2 && (v15 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v14 + 24);
      sub_1E1AF4E5C();
      ObjectType = swift_getObjectType();
      (*(v16 + 8))(ObjectType, v16);
      swift_unknownObjectRelease();
    }
  }

  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_1E19F009C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v17[1] = a2;
  v5 = sub_1E1AF45FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF474C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF472C();
  sub_1E1AF46CC();
  v13 = sub_1E1AF45BC();
  (*(v6 + 8))(v8, v5);
  if (v13 != 2 && (v13 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v17[2] + 24);
      sub_1E1AF4E5C();
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(ObjectType, v14);
      swift_unknownObjectRelease();
    }
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E19F02C8(uint64_t a1, uint64_t a2, double a3)
{
  v13 = a2;
  v3 = sub_1E1AF45FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF474C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF473C();
  sub_1E1AF46CC();
  v11 = sub_1E1AF45BC();
  (*(v4 + 8))(v6, v3);
  if (v11 != 2 && (v11 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1E1AF4E6C();
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E19F04B0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1E1AF45FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF474C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF473C();
  v14 = a2;
  sub_1E1AF4E6C();
  sub_1E1AF46CC();
  v12 = sub_1E1AF45BC();
  (*(v5 + 8))(v7, v4);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1E1AF4E6C();
    }
  }

  return (*(v9 + 8))(v11, v8);
}

double FastImpressionsV5Tracker.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*FastImpressionsV5Tracker.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E14EDCAC;
}

uint64_t FastImpressionsV5Tracker.init(mainQueueName:fastQueueName:impressionableThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1E1AF4EAC();
  swift_allocObject();
  *(v5 + 40) = sub_1E1AF4E8C();
  swift_allocObject();
  *(v5 + 48) = sub_1E1AF4E8C();
  *(v5 + 32) = a5;
  return v5;
}

double FastImpressionsV5Tracker.elementDidEnterView(_:on:with:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v6 = sub_1E1AF45FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF46CC();
  v10 = sub_1E1AF45BC();
  (*(v7 + 8))(v9, v6);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v5 + 24);
      sub_1E1AF4E5C();
      ObjectType = swift_getObjectType();
      (*(v12 + 8))(ObjectType, v12);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t FastImpressionsV5Tracker.elementDidLeaveView(_:on:with:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = sub_1E1AF45FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF46CC();
  v8 = sub_1E1AF45BC();
  result = (*(v5 + 8))(v7, v4);
  if (v8 != 2 && (v8 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_unknownObjectRelease();
      return sub_1E1AF4E6C();
    }
  }

  return result;
}

uint64_t FastImpressionsV5Tracker.deinit()
{
  sub_1E1337DEC(v0 + 16);

  return v0;
}

uint64_t FastImpressionsV5Tracker.__deallocating_deinit()
{
  sub_1E1337DEC(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall JUMeasurements.add(outsets:)(UIEdgeInsets outsets)
{
  *v1 = outsets.left + outsets.right + *v1;
  v2.f64[0] = outsets.top + outsets.bottom;
  v2.f64[1] = outsets.top;
  *(v1 + 8) = vaddq_f64(v2, *(v1 + 8));
  *(v1 + 24) = *(v1 + 24) + outsets.bottom;
}

double JUMeasurements.add(outsets:in:)(void *a1, float64_t a2, double a3, double a4, double a5)
{
  v9 = [a1 traitCollection];
  [v9 layoutDirection];

  *v5 = a3 + a5 + *v5;
  v10.f64[0] = a2 + a4;
  v10.f64[1] = a2;
  *(v5 + 8) = vaddq_f64(v10, *(v5 + 8));
  result = *(v5 + 24) + a4;
  *(v5 + 24) = result;
  return result;
}

double JUMeasurements.adding(outsets:in:)(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = [a1 traitCollection];
  [v9 layoutDirection];

  return a3 + a5 + a6;
}

uint64_t sub_1E19F0F64(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_1E1AF127C();
  __swift_allocate_value_buffer(v5, a4);
  __swift_project_value_buffer(v5, a4);
  return _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
}

uint64_t sub_1E19F0FE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF127C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t PosterLockupLayout.Metrics.headingTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

void PosterLockupLayout.Metrics.logoMargin.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

uint64_t PosterLockupLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 72));

  return sub_1E1308EC0(a1, v1 + 72);
}

uint64_t PosterLockupLayout.Metrics.offerButtonTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 112));

  return sub_1E1308EC0(a1, v1 + 112);
}

uint64_t PosterLockupLayout.Metrics.footerTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 152));

  return sub_1E1308EC0(a1, v1 + 152);
}

uint64_t PosterLockupLayout.Metrics.footerBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 192));

  return sub_1E1308EC0(a1, v1 + 192);
}

uint64_t PosterLockupLayout.Metrics.init(headingTopSpace:logoMargin:titleTopSpace:offerButtonTopSpace:footerTopSpace:footerBottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  sub_1E1308EC0(a1, a6);
  a6[5] = a7;
  a6[6] = a8;
  a6[7] = a9;
  a6[8] = a10;
  sub_1E1308EC0(a2, (a6 + 9));
  sub_1E1308EC0(a3, (a6 + 14));
  sub_1E1308EC0(a4, (a6 + 19));

  return sub_1E1308EC0(a5, (a6 + 24));
}

__n128 PosterLockupLayout.init(metrics:gradient:poster:header:logoArt:fallbackTitle:offerButton:footer:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *(a4 + 16);
  *(a9 + 352) = *a4;
  *(a9 + 368) = v16;
  *(a9 + 384) = *(a4 + 32);
  sub_1E1308EC0(a2, a9 + 272);
  sub_1E1308EC0(a3, a9 + 232);
  v17 = *(a5 + 16);
  *(a9 + 312) = *a5;
  *(a9 + 328) = v17;
  *(a9 + 344) = *(a5 + 32);
  v18 = *(a6 + 16);
  *(a9 + 392) = *a6;
  *(a9 + 408) = v18;
  *(a9 + 424) = *(a6 + 32);
  sub_1E1308EC0(a7, a9 + 432);
  v19 = *(a8 + 16);
  *(a9 + 472) = *a8;
  *(a9 + 488) = v19;
  *(a9 + 504) = *(a8 + 32);
  v20 = *(a1 + 208);
  *(a9 + 192) = *(a1 + 192);
  *(a9 + 208) = v20;
  *(a9 + 224) = *(a1 + 224);
  v21 = *(a1 + 144);
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = v21;
  v22 = *(a1 + 176);
  *(a9 + 160) = *(a1 + 160);
  *(a9 + 176) = v22;
  v23 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v23;
  v24 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v24;
  v25 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v25;
  result = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = result;
  return result;
}

uint64_t PosterLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v45 = a2;
  v44 = sub_1E1AF745C();
  v13 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 232), *(v6 + 256));
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 34, v7[37]);
  sub_1E1AF116C();
  sub_1E134FD1C(v6 + 352, &v49, &qword_1ECEB4E00, &qword_1E1B0AB20);
  v46 = a4;
  v47 = a5;
  if (v50)
  {
    sub_1E1308EC0(&v49, v51);
    __swift_project_boxed_opaque_existential_1Tm(v51, v52);
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm(v51, v52);
    v53.origin.x = a3;
    v53.origin.y = a4;
    v53.size.width = v47;
    v53.size.height = a6;
    CGRectGetWidth(v53);
    __swift_project_boxed_opaque_existential_1Tm(v6, *(v6 + 24));
    a5 = v47;
    sub_1E1AF12FC();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    sub_1E1308058(&v49, &qword_1ECEB4E00, &qword_1E1B0AB20);
  }

  v48 = a3;
  if (a6 >= a5)
  {
    v16 = a6;
    v21 = a5 - (*(v6 + 48) + *(v6 + 64));
    v17 = v46;
    if (qword_1ECEB16E8 != -1)
    {
      swift_once();
    }

    v20 = ceil(v21);
    v22 = sub_1E1AF127C();
    __swift_project_value_buffer(v22, qword_1EE1DDBE0);
    sub_1E1AF123C();
  }

  else
  {
    v16 = a6;
    v17 = v46;
    if (qword_1ECEB16E8 != -1)
    {
      swift_once();
    }

    v18 = sub_1E1AF127C();
    __swift_project_value_buffer(v18, qword_1EE1DDBE0);
    sub_1E1AF122C();
    v20 = ceil(v19);
  }

  v23 = v48;
  v54.origin.x = v48;
  v54.origin.y = v17;
  v54.size.width = a5;
  v24 = v16;
  v54.size.height = v16;
  MinX = CGRectGetMinX(v54);
  v55.origin.x = v23;
  v55.origin.y = v17;
  v55.size.width = a5;
  v55.size.height = v24;
  v43 = MinX + floor((CGRectGetWidth(v55) - v20) * 0.5);
  v56.origin.x = v23;
  v56.origin.y = v17;
  v56.size.width = a5;
  v56.size.height = v24;
  CGRectGetMinY(v56);
  v57.origin.x = v23;
  v57.origin.y = v17;
  v57.size.width = a5;
  v57.size.height = v24;
  CGRectGetHeight(v57);
  v58.origin.x = v23;
  v58.origin.y = v17;
  v58.size.width = a5;
  v58.size.height = v24;
  CGRectGetHeight(v58);
  sub_1E134FD1C(v6 + 312, &v49, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (v50)
  {
    sub_1E1308EC0(&v49, v51);
    sub_1E134FD1C(v6 + 392, &v49, &qword_1ECEB2AD0, &unk_1E1B03790);
    if (v50)
    {
      __swift_project_boxed_opaque_existential_1Tm(&v49, v50);
      sub_1E1AF116C();
      __swift_destroy_boxed_opaque_existential_1(&v49);
    }

    else
    {
      sub_1E1308058(&v49, &qword_1ECEB2AD0, &unk_1E1B03790);
    }

    v26 = v48;
    __swift_project_boxed_opaque_existential_1Tm(v51, v52);
LABEL_23:
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v51);
    v27 = v47;
    goto LABEL_24;
  }

  sub_1E1308058(&v49, &qword_1ECEB4E00, &qword_1E1B0AB20);
  sub_1E134FD1C(v6 + 392, &v49, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (v50)
  {
    sub_1E1308EC0(&v49, v51);
    sub_1E134FD1C(v6 + 312, &v49, &qword_1ECEB4E00, &qword_1E1B0AB20);
    v26 = v48;
    if (v50)
    {
      __swift_project_boxed_opaque_existential_1Tm(&v49, v50);
      sub_1E1AF116C();
      __swift_destroy_boxed_opaque_existential_1(&v49);
    }

    else
    {
      sub_1E1308058(&v49, &qword_1ECEB4E00, &qword_1E1B0AB20);
    }

    __swift_project_boxed_opaque_existential_1Tm(v51, v52);
    goto LABEL_23;
  }

  sub_1E1308058(&v49, &qword_1ECEB2AD0, &unk_1E1B03790);
  sub_1E134FD1C(v6 + 312, v51, &qword_1ECEB4E00, &qword_1E1B0AB20);
  v26 = v48;
  if (v52)
  {
    __swift_project_boxed_opaque_existential_1Tm(v51, v52);
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    sub_1E1308058(v51, &qword_1ECEB4E00, &qword_1E1B0AB20);
  }

  v27 = v47;
  sub_1E134FD1C(v6 + 392, v51, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (v52)
  {
    __swift_project_boxed_opaque_existential_1Tm(v51, v52);
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    sub_1E1308058(v51, &qword_1ECEB2AD0, &unk_1E1B03790);
  }

LABEL_24:
  sub_1E134FD1C(v6 + 472, v51, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (v52)
  {
    __swift_project_boxed_opaque_existential_1Tm(v51, v52);
    sub_1E1AF11CC();
    v41 = v28;
    v47 = v29;
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    sub_1E1308058(v51, &qword_1ECEB4E00, &qword_1E1B0AB20);
    v41 = 0;
    v47 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1Tm((v6 + 432), *(v6 + 456));
  sub_1E1AF11CC();
  v30 = *(v6 + 456);
  v43 = *(v6 + 464);
  v42 = __swift_project_boxed_opaque_existential_1Tm((v6 + 432), v30);
  v59.origin.x = v26;
  v31 = v46;
  v59.origin.y = v46;
  v59.size.width = v27;
  v59.size.height = v24;
  CGRectGetMinX(v59);
  v60.origin.x = v26;
  v60.origin.y = v31;
  v60.size.width = v27;
  v60.size.height = v24;
  CGRectGetMaxY(v60);
  v32 = *(v6 + 216);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 24, v7[27]);
  sub_1E13BC274(v32);
  sub_1E1AF12DC();
  v33 = *(v13 + 8);
  v34 = v44;
  v33(v15, v44);
  v35 = v7[22];
  __swift_project_boxed_opaque_existential_1Tm(v7 + 19, v35);
  sub_1E13BC274(v35);
  v40 = a1;
  v36 = v33;
  sub_1E1AF12DC();
  v33(v15, v34);
  sub_1E1AF116C();
  sub_1E134FD1C((v7 + 59), v51, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (v52)
  {
    __swift_project_boxed_opaque_existential_1Tm(v51, v52);
    v37 = v48;
    v61.origin.x = v48;
    v61.origin.y = v31;
    v61.size.width = v27;
    v61.size.height = v24;
    CGRectGetMinX(v61);
    v62.origin.x = v37;
    v62.origin.y = v31;
    v62.size.width = v27;
    v62.size.height = v24;
    CGRectGetMaxY(v62);
    v38 = v7[27];
    __swift_project_boxed_opaque_existential_1Tm(v7 + 24, v38);
    sub_1E13BC274(v38);
    sub_1E1AF12DC();
    v36(v15, v34);
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    sub_1E1308058(v51, &qword_1ECEB4E00, &qword_1E1B0AB20);
  }

  return sub_1E1AF106C();
}

double _s11AppStoreKit18PosterLockupLayoutV23maximiumLogoArtworkSize7metrics09containerJ0So6CGSizeVAC7MetricsV_AHtFZ_0(double *a1, double a2, double a3)
{
  if (a3 >= a2)
  {
    v6 = a2 - (a1[6] + a1[8]);
    if (qword_1ECEB16E8 != -1)
    {
      swift_once();
    }

    v5 = ceil(v6);
    v7 = sub_1E1AF127C();
    __swift_project_value_buffer(v7, qword_1EE1DDBE0);
    sub_1E1AF123C();
  }

  else
  {
    if (qword_1ECEB16E8 != -1)
    {
      swift_once();
    }

    v3 = sub_1E1AF127C();
    __swift_project_value_buffer(v3, qword_1EE1DDBE0);
    sub_1E1AF122C();
    return ceil(v4);
  }

  return v5;
}

uint64_t sub_1E19F21D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 512))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E19F2218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 512) = 1;
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

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Conditional<>.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v15 = *(v8 + 16);
  v15(&v17 - v13, a1, v12);
  (v15)(v10, a1, a3);
  Conditional<>.init(regularValue:compactValue:)(v14, v10, a2, a3, &v18);
  result = (*(v8 + 8))(a1, a3);
  *a4 = v18;
  return result;
}

uint64_t Conditional<>.init(property:trueValue:falseValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v21 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  type metadata accessor for TraitsExpression(0, *(v15 + *MEMORY[0x1E69E77B0]), v16, v16);
  v17 = *(v9 + 16);
  v17(v14, a2, a4);
  v17(v11, a3, a4);
  swift_allocObject();
  v18 = sub_1E19F26F4(a1, v14, v11);
  v19 = *(v9 + 8);
  v19(a3, a4);
  v19(a2, a4);
  result = sub_1E130C97C(v18, &v22);
  *v21 = v22;
  return result;
}

void Conditional.evaluate<>(in:)(void *a1)
{
  v2 = objc_allocWithZone(sub_1E1AF1A8C());
  v3 = a1;
  v4 = sub_1E1AF1A7C();
  Conditional.evaluate(with:)();
}

uint64_t sub_1E19F26F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  *(v3 + 2) = a1;
  v6 = *(v5 + 128);
  v7 = *(*(v6 - 8) + 32);
  v7(&v3[*(v5 + 144)], a2, v6);
  v7(&v3[*(*v3 + 152)], a3, v6);

  return sub_1E14FC3EC();
}

uint64_t sub_1E19F27C0()
{
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0x79747265706F7270, 0xEA0000000000203ALL);
  sub_1E1AF76FC();
  sub_1E1AF746C();
  MEMORY[0x1E68FECA0](0xD000000000000010, 0x80000001E1B79E10);
  sub_1E1AF746C();
  MEMORY[0x1E68FECA0](0xD000000000000011, 0x80000001E1B79E30);
  sub_1E1AF746C();
  return 0;
}

uint64_t sub_1E19F2910@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  v5 = 152;
  if (v7)
  {
    v5 = 144;
  }

  return (*(*(*(v4 + 128) - 8) + 16))(a2, &v2[*(*v2 + v5)]);
}

uint64_t sub_1E19F29F8()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v5 = *(*(v2 - 8) + 8);
  v5(&v0[*(*v0 + 144)], v2);
  v3 = &v0[*(*v0 + 152)];

  return (v5)(v3, v2);
}

char *sub_1E19F2AC0()
{
  v1 = *v0;
  v2 = sub_1E14FC3EC();

  v3 = *(v1 + 128);
  v4 = *(*(v3 - 8) + 8);
  v4(v2 + *(*v2 + 144), v3);
  v4(v2 + *(*v2 + 152), v3);
  return v2;
}

uint64_t sub_1E19F2B7C()
{
  sub_1E19F2AC0();

  return swift_deallocClassInstance();
}

uint64_t sub_1E19F2BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, void *a6@<X8>)
{
  v25 = a6;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  type metadata accessor for TraitsExpression(0, v17, v18, v18);
  v26[0] = a3;
  v26[1] = a4;
  KeyPath = swift_getKeyPath(a5, v26);
  v20 = *(v11 + 16);
  v20(v16, a1, a4);
  v20(v13, a2, a4);
  swift_allocObject();
  v21 = sub_1E19F26F4(KeyPath, v16, v13);
  v22 = *(v11 + 8);
  v22(a2, a4);
  v22(a1, a4);
  result = sub_1E130C97C(v21, &v27);
  *v25 = v27;
  return result;
}

uint64_t sub_1E19F2DB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF696C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E19F2DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF698C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E19F2E14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ProductStarRatingsHistogram.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  LOBYTE(a2) = *a2;
  sub_1E138853C(a1, v30);
  v22 = (v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_1E138853C(v30, v29);
  v28 = a2;
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_1E1A572C0(v29, &v28, v20);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v30, &unk_1ECEB5670, qword_1E1B03EC0);
  return v25;
}

uint64_t ProductStarRatingsHistogram.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v27 - v20;
  LOBYTE(a2) = *a2;
  sub_1E138853C(a1, v30);
  v22 = (v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_1E138853C(v30, v29);
  v28 = a2;
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_1E1A572C0(v29, &v28, v21);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v30, &unk_1ECEB5670, qword_1E1B03EC0);
  return v25;
}

uint64_t ProductStarRatingsHistogram.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return v0;
}

uint64_t ProductStarRatingsHistogram.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductStarRatingsHistogram(uint64_t a1)
{
  result = qword_1ECEBCC90;
  if (!qword_1ECEBCC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1E19F341C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1E1AF2FAC();
    ++v2;
    sub_1E19F6104();
  }

  while ((sub_1E1AF5DAC() & 1) == 0);
  return v3 != v4;
}

double sub_1E19F34F4(unint64_t *a1)
{
  v2 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2520, &qword_1E1B02928);
  v5 = sub_1E1AF31DC();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B02CC0;
  v17 = v3;
  v18 = v4;
  AdamId.numberValue.getter();
  if (v9)
  {
    sub_1E1AF31BC();
  }

  else
  {
    sub_1E1AF6FEC();

    v17 = 0xD000000000000017;
    v18 = 0x80000001E1B6F8F0;
    v20 = 0x5B2064496D616441;
    v21 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v3, v4);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

    sub_1E16BE330();
    v10 = swift_allocError();
    *v11 = 0xD000000000000017;
    *(v11 + 8) = 0x80000001E1B6F8F0;
    *(v11 + 16) = 0;
    swift_willThrow();
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v12 = sub_1E1AF591C();
    __swift_project_value_buffer(v12, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v19 = v16;
    v13 = __swift_allocate_boxed_opaque_existential_0(&v17);
    (*(*(v16 - 8) + 16))(v13);
    sub_1E1AF385C();
    sub_1E1308058(&v17, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  v14 = sub_1E1497240(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  v17 = v14;
  sub_1E1AF5BCC();

  return result;
}

double sub_1E19F3934(uint64_t a1)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E1AF31DC();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v27 = v8;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1E135C964(0, v9, 0);
    v10 = v44;
    v28 = 0x80000001E1B6F8F0;
    v33 = v5 + 32;
    v11 = (a1 + 40);
    v29 = xmmword_1E1B02CC0;
    v30 = v7;
    v31 = v5;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v39 = v12;
      v40 = v13;

      AdamId.numberValue.getter();
      if (v14)
      {
        sub_1E1AF31BC();
      }

      else
      {
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_1E1AF6FEC();

        v39 = 0xD000000000000017;
        v40 = v28;
        v42 = 0x5B2064496D616441;
        v43 = 0xE800000000000000;
        MEMORY[0x1E68FECA0](v12, v13);
        MEMORY[0x1E68FECA0](93, 0xE100000000000000);
        MEMORY[0x1E68FECA0](v42, v43);

        v15 = v39;
        v16 = v40;
        sub_1E16BE330();
        v17 = swift_allocError();
        *v18 = v15;
        *(v18 + 8) = v16;
        *(v18 + 16) = 0;
        swift_willThrow();
        v36 = v10;
        if (qword_1ECEB12A8 != -1)
        {
          swift_once();
        }

        v19 = sub_1E1AF591C();
        v35 = __swift_project_value_buffer(v19, qword_1ECEBA3D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v29;
        sub_1E1AF388C();
        sub_1E1AF387C();
        swift_getErrorValue();
        v21 = v37;
        v20 = v38;
        v41 = v38;
        v22 = __swift_allocate_boxed_opaque_existential_0(&v39);
        (*(*(v20 - 8) + 16))(v22, v21, v20);
        sub_1E1AF385C();
        sub_1E1308058(&v39, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1AF387C();
        sub_1E1AF38AC();
        sub_1E1AF54AC();

        v7 = v30;
        sub_1E1AF31CC();
        v5 = v31;
        v10 = v36;
      }

      v44 = v10;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E135C964((v23 > 1), v24 + 1, 1);
        v10 = v44;
      }

      *(v10 + 16) = v24 + 1;
      (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v7, v34);
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  v25 = sub_1E13C4D38(v10);

  v39 = v25;
  sub_1E1AF5BCC();

  return result;
}

uint64_t sub_1E19F3E30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v5 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = *a1;
  v7 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2520, &qword_1E1B02928);
  v19 = sub_1E1AF31DC();
  v8 = *(v19 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E1B02CC0;
  v21 = v6;
  v22 = v7;
  AdamId.numberValue.getter();
  if (v11)
  {
    sub_1E1AF31BC();
  }

  else
  {
    sub_1E1AF6FEC();

    v21 = 0xD000000000000017;
    v22 = 0x80000001E1B6F8F0;
    v24 = 0x5B2064496D616441;
    v25 = 0xE800000000000000;
    MEMORY[0x1E68FECA0](v6, v7);
    MEMORY[0x1E68FECA0](93, 0xE100000000000000);
    MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

    sub_1E16BE330();
    v12 = swift_allocError();
    *v13 = 0xD000000000000017;
    *(v13 + 8) = 0x80000001E1B6F8F0;
    *(v13 + 16) = 0;
    swift_willThrow();
    if (qword_1ECEB12A8 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1ECEBA3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v23 = v20;
    v15 = __swift_allocate_boxed_opaque_existential_0(&v21);
    (*(*(v20 - 8) + 16))(v15);
    sub_1E1AF385C();
    sub_1E1308058(&v21, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    sub_1E1AF31CC();
  }

  v16 = sub_1E1497240(v10);
  swift_setDeallocating();
  (*(v8 + 8))(v10 + v9, v19);
  swift_deallocClassInstance();
  v21 = v16;
  sub_1E1AF5BCC();

  return a2(v17);
}

uint64_t sub_1E19F4288()
{

  return swift_deallocClassInstance();
}

uint64_t ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 32) = a3;
  *(a5 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCA0, &qword_1E1B4BFE0);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v7 = sub_1E1AF5BEC();
  *(a5 + 40) = v7;
  type metadata accessor for ModernAppStateDataSource.Delegate();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(a5 + 24) = v8;
  ObjectType = swift_getObjectType();
  v10 = *(a2 + 16);

  v10(v11, &off_1F5C5CBC8, ObjectType, a2);
  return swift_unknownObjectRelease_n();
}

uint64_t ModernAppStateDataSource.load()()
{
  v2 = v0[1];
  v1[1] = *v0;
  v1[2] = v2;
  v1[3] = v0[2];
  return MEMORY[0x1EEE6DFA0](sub_1E19F4420, 0, 0);
}

uint64_t sub_1E19F4420()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1E19F4514;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD00000000000001FLL, 0x80000001E1B84020, sub_1E19F5520, v1, v3);
}

uint64_t sub_1E19F4514()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E19F6398;
  }

  else
  {

    v2 = sub_1E19F63A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t ModernAppStateDataSource.reloadAllStates(synchronizing:)()
{
  v2 = v0[1];
  v1[1] = *v0;
  v1[2] = v2;
  v1[3] = v0[2];
  return MEMORY[0x1EEE6DFA0](sub_1E19F465C, 0, 0);
}

uint64_t sub_1E19F465C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1E19F4514;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD00000000000001FLL, 0x80000001E1B84020, sub_1E19F63A4, v1, v3);
}

uint64_t ModernAppStateDataSource.reloadState(forAppsWith:synchronizing:)(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 72) = a1;
  v4 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v4;
  *(v3 + 48) = v2[2];
  return MEMORY[0x1EEE6DFA0](sub_1E19F4784, 0, 0);
}

uint64_t sub_1E19F4784()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E19F4874;

  return MEMORY[0x1EEE6DD58]();
}

void sub_1E19F4874()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1E19F49B0, 0, 0);
  }
}

uint64_t sub_1E19F49B0()
{
  if (*(v0 + 96) == 1)
  {
    *(v0 + 64) = *(v0 + 72);
    sub_1E1AF5BCC();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E19F4A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[21] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v5 = sub_1E1AF31DC();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v4[28] = *(v6 + 64);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E19F4B48, 0, 0);
}

void sub_1E19F4B48()
{
  v1 = *(v0 + 176);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 176) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v33 = *(v0 + 216);

  v9 = 0;
  v31 = v8;
  v32 = v3;
  while (v7)
  {
LABEL_11:
    v13 = *(v0 + 232);
    v35 = *(v0 + 240);
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = *(v0 + 184);
    v37 = *(v0 + 192);
    v34 = v14;
    (*(v33 + 16))();
    v17 = sub_1E1AF649C();
    v36 = *(v17 - 8);
    (*(v36 + 56))(v15, 1, 1, v17);
    v18 = *(v33 + 32);
    v18(v13, v35, v14);
    v19 = (*(v33 + 80) + 80) & ~*(v33 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v21 = *v16;
    v22 = v16[2];
    *(v20 + 48) = v16[1];
    *(v20 + 64) = v22;
    *(v20 + 32) = v21;
    v18(v20 + v19, v13, v34);
    sub_1E1795B30(v15, v37);
    v23 = (*(v36 + 48))(v37, 1, v17);
    v24 = *(v0 + 184);
    v25 = *(v0 + 192);
    if (v23 == 1)
    {
      sub_1E19F6250(v24, v0 + 16);
      sub_1E1308058(v25, &qword_1ECEB2D20, &unk_1E1B02E40);
    }

    else
    {
      sub_1E19F6250(v24, v0 + 64);
      sub_1E1AF648C();
      (*(v36 + 8))(v25, v17);
    }

    if (*(v20 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_1E1AF63CC();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = **(v0 + 168);

    if (v28 | v26)
    {
      v10 = v0 + 112;
      *(v0 + 112) = 0;
      *(v0 + 120) = 0;
      *(v0 + 128) = v26;
      *(v0 + 136) = v28;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 200);
    v7 &= v7 - 1;
    *(v0 + 144) = 1;
    *(v0 + 152) = v10;
    *(v0 + 160) = v29;
    swift_task_create();

    sub_1E1308058(v11, &qword_1ECEB2D20, &unk_1E1B02E40);
    v8 = v31;
    v3 = v32;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  v30 = *(v0 + 8);

  v30();
}

uint64_t sub_1E19F4F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E19F4F64, 0, 0);
}

uint64_t sub_1E19F4F64()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1E19F5058;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000027, 0x80000001E1B84090, sub_1E19F6288, v1, v4);
}

uint64_t sub_1E19F5058()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E19F5194, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E19F5194()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1E19F51F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7F0, &qword_1E1B46780);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  v8 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  v14[0] = sub_1E1AF31AC();
  v14[0] = sub_1E1AF742C();
  v14[1] = v10;
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  (*(v8 + 40))(v14, sub_1E19F6290, v12, ObjectType, v8);

  return result;
}

double sub_1E19F53AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7F0, &qword_1E1B46780);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  (*(v8 + 32))(sub_1E19F639C, v11, ObjectType, v8);

  return result;
}

uint64_t sub_1E19F5528(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E130B5DC;

  return sub_1E19F4A2C(a1, a2, v7, v6);
}

uint64_t sub_1E19F55DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 == 255)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7F0, &qword_1E1B46780);
    return sub_1E1AF63EC();
  }

  else
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v7 = *a1;
    v6 = *(a1 + 8);
    sub_1E1431B6C();
    swift_allocError();
    *v8 = v7;
    *(v8 + 8) = v6;
    *(v8 + 16) = v5;
    *(v8 + 24) = v4;
    *(v8 + 32) = v3;
    *(v8 + 40) = v2;
    *(v8 + 48) = v1;
    sub_1E16C8C94(v7, v6, v5, v4, v3, v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7F0, &qword_1E1B46780);
    return sub_1E1AF63DC();
  }
}

uint64_t ModernAppStateDataSource.state(forAppWith:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  sub_1E1AF31AC();
  *&v11[0] = sub_1E1AF742C();
  *(&v11[0] + 1) = v5;
  (*(v3 + 48))(v9, v11, ObjectType, v3);

  v11[0] = v9[0];
  v11[1] = v9[1];
  v11[2] = v9[2];
  v11[3] = v10;
  if ((v10 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    v6 = sub_1E1AF316C();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  else
  {
    sub_1E196D020(a1);
    sub_1E1308058(v11, &unk_1ECEB7B50, &qword_1E1B16990);
    v8 = sub_1E1AF316C();
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }
}

BOOL ModernAppStateDataSource.providesState(forApp:)()
{
  v1 = sub_1E1AF2FAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  sub_1E1AF2FBC();
  v6 = sub_1E19F341C(v4, v5);
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t ModernAppStateDataSource.setWaiting(forAppWith:installationType:)(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AF30FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 8);
  v18[0] = sub_1E1AF31AC();
  v18[0] = sub_1E1AF742C();
  v18[1] = v10;
  (*(v6 + 16))(v8, a3, v5);
  v11 = (*(v6 + 88))(v8, v5);
  if (v11 != *MEMORY[0x1E698B208])
  {
    if (v11 == *MEMORY[0x1E698B210])
    {
      v12 = 1;
      goto LABEL_9;
    }

    if (v11 == *MEMORY[0x1E698B200])
    {
      v12 = 2;
      goto LABEL_9;
    }

    if (v11 == *MEMORY[0x1E698B1F8])
    {
      v12 = 3;
      goto LABEL_9;
    }

    (*(v6 + 8))(v8, v5);
  }

  v12 = 0;
LABEL_9:
  ObjectType = swift_getObjectType();
  v17 = v12;
  v14 = (*(v9 + 64))(v18, &v17, ObjectType, v9);

  return v14 & 1;
}

uint64_t ModernAppStateDataSource.clearWaiting(forAppWith:)()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  sub_1E1AF31AC();
  v6[0] = sub_1E1AF742C();
  v6[1] = v3;
  v4 = (*(v1 + 72))(v6, ObjectType, v1);

  return v4 & 1;
}

uint64_t sub_1E19F5BD0()
{
  v2 = v0[1];
  v1[1] = *v0;
  v1[2] = v2;
  v1[3] = v0[2];
  return MEMORY[0x1EEE6DFA0](sub_1E19F465C, 0, 0);
}

uint64_t sub_1E19F5BFC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5DC;

  return ModernAppStateDataSource.reloadState(forAppsWith:synchronizing:)(a1, a2);
}

uint64_t sub_1E19F5CA0()
{
  v2 = v0[1];
  v1[1] = *v0;
  v1[2] = v2;
  v1[3] = v0[2];
  return MEMORY[0x1EEE6DFA0](sub_1E19F5CCC, 0, 0);
}

uint64_t sub_1E19F5CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1E19F5DC0;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD00000000000001FLL, 0x80000001E1B84020, sub_1E19F63A4, v1, v3);
}

uint64_t sub_1E19F5DC0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E19F5EF4;
  }

  else
  {

    v2 = sub_1E19F5EDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E19F5EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1E19F5F5C()
{
  v1 = sub_1E1AF2FAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  sub_1E1AF2FBC();
  v6 = sub_1E19F341C(v4, v5);
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_1E19F6048()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  sub_1E1AF31AC();
  v6[0] = sub_1E1AF742C();
  v6[1] = v3;
  v4 = (*(v1 + 72))(v6, ObjectType, v1);

  return v4 & 1;
}

unint64_t sub_1E19F6104()
{
  result = qword_1EE1E3CA0;
  if (!qword_1EE1E3CA0)
  {
    sub_1E1AF2FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3CA0);
  }

  return result;
}

uint64_t sub_1E19F615C(uint64_t a1)
{
  v4 = *(sub_1E1AF31DC() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E19F4F40(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t objectdestroy_21Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7F0, &qword_1E1B46780);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t ArcadeSubscriptionDecorationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSubscriptionDecorationIntent.product.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double ArcadeSubscriptionDecorationIntent.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;

  return result;
}

unint64_t sub_1E19F646C()
{
  v1 = v0;
  v2 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  sub_1E137A5C4((v1 + 2), &v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16[0] = v2;
  sub_1E159827C(&v17, 0x6E656B6F74, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v4 = v1[8];
  v5 = v1[9];
  v6 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69E6158];
  *&v17 = v4;
  *(&v17 + 1) = v5;
  sub_1E1301CF0(&v17, v16);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v16, 0x64496D616461, 0xE600000000000000, v7);
  v8 = v1[6];
  v9 = v1[7];
  v18 = v6;
  *&v17 = v8;
  *(&v17 + 1) = v9;
  sub_1E1301CF0(&v17, v16);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v16, 0x746375646F7270, 0xE700000000000000, v10);
  v11 = v1[10];
  if (v11)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
    *&v17 = v11;
    sub_1E1301CF0(&v17, v16);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v16, 0x7363697274656DLL, 0xE700000000000000, v12);
  }

  v13 = v1[11];
  if (v13)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
    *&v17 = v13;
    sub_1E1301CF0(&v17, v16);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v16, 0xD000000000000011, 0x80000001E1B6AFD0, v14);
  }

  return v2;
}

JSValue __swiftcall ArcadeSubscriptionDecorationIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    sub_1E19F646C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
    v5 = [v2 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v5)
    {
      sub_1E1AF6C5C();
      return isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E19F6758()
{
  result = qword_1ECEBCCA8;
  if (!qword_1ECEBCCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCCA8);
  }

  return result;
}

unint64_t sub_1E19F67B4()
{
  result = qword_1ECEBCCB0;
  if (!qword_1ECEBCCB0)
  {
    type metadata accessor for ArcadeSubscriptionRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCCB0);
  }

  return result;
}

double sub_1E19F6820(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_1E174E15C(0);
      v6 = (*(*v1 + 1112))(0);
      if (v5)
      {
        swift_beginAccess();
        v7 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
        swift_beginAccess();
        if ((*(v7 + 8) & 1) == 0)
        {
          sub_1E19FE328(&unk_1F5C5DD18, &unk_1F5C5DD40, sub_1E1A1DFF4);
        }
      }

      else
      {
        sub_1E19FE328(&unk_1F5C5DD18, &unk_1F5C5DD40, sub_1E1A1DFF4);
      }

      v8 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v6;

      sub_1E13C63E4(v8);

      return sub_1E19F6820(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E19FFA64();
    }
  }

  return result;
}

double sub_1E19F6A68(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_1E174E190(0);
      v6 = (*(*v1 + 1112))(0);
      if (v5)
      {
        swift_beginAccess();
        v7 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
        swift_beginAccess();
        if ((*(v7 + 8) & 1) == 0)
        {
          sub_1E19FE328(&unk_1F5C5D9A8, &unk_1F5C5D9D0, sub_1E1A1DFF4);
        }
      }

      else
      {
        sub_1E19FE328(&unk_1F5C5D9A8, &unk_1F5C5D9D0, sub_1E1A1DFF4);
      }

      v8 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v6;

      sub_1E13C7890(v8);

      return sub_1E19F6A68(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E19FFEAC();
    }
  }

  return result;
}

double sub_1E19F6CB0(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_1E174E1C4(0);
      v6 = (*(*v1 + 1112))(0);
      if (v5)
      {
        swift_beginAccess();
        v7 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
        swift_beginAccess();
        if ((*(v7 + 8) & 1) == 0)
        {
          sub_1E19FE328(&unk_1F5C5DE58, &unk_1F5C5DE80, sub_1E1A1DFF4);
        }
      }

      else
      {
        sub_1E19FE328(&unk_1F5C5DE58, &unk_1F5C5DE80, sub_1E1A1DFF4);
      }

      v8 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v6;

      sub_1E13C8D3C(v8);

      return sub_1E19F6CB0(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E1A002F4();
    }
  }

  return result;
}

double sub_1E19F6EF8(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_1E174E1F8(0);
      v6 = (*(*v1 + 1112))(0);
      if (v5)
      {
        swift_beginAccess();
        v7 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
        swift_beginAccess();
        if ((*(v7 + 8) & 1) == 0)
        {
          sub_1E19FE328(&unk_1F5C5D430, &unk_1F5C5D458, sub_1E1A1DFF4);
        }
      }

      else
      {
        sub_1E19FE328(&unk_1F5C5D430, &unk_1F5C5D458, sub_1E1A1DFF4);
      }

      v8 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v6;

      sub_1E13CA1E8(v8);

      return sub_1E19F6EF8(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E1A0073C();
    }
  }

  return result;
}

double sub_1E19F7140(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_1E174E22C(0);
      v6 = (*(*v1 + 1112))(0);
      if (v5)
      {
        swift_beginAccess();
        v7 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
        swift_beginAccess();
        if ((*(v7 + 8) & 1) == 0)
        {
          sub_1E19FE328(&unk_1F5C5D868, &unk_1F5C5D890, sub_1E1A1DFF4);
        }
      }

      else
      {
        sub_1E19FE328(&unk_1F5C5D868, &unk_1F5C5D890, sub_1E1A1DFF4);
      }

      v8 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v6;

      sub_1E13CB694(v8);

      return sub_1E19F7140(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E1A00B84();
    }
  }

  return result;
}

double sub_1E19F7388(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_1E174E260(0);
      v6 = (*(*v1 + 1112))(0);
      if (v5)
      {
        swift_beginAccess();
        v7 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
        swift_beginAccess();
        if ((*(v7 + 8) & 1) == 0)
        {
          sub_1E19FE328(&unk_1F5C5D728, &unk_1F5C5D750, sub_1E1A1DA10);
        }
      }

      else
      {
        sub_1E19FE328(&unk_1F5C5D728, &unk_1F5C5D750, sub_1E1A1DA10);
      }

      v8 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v6;

      sub_1E13CCB74(v8);

      return sub_1E19F7388(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E1A01030();
    }
  }

  return result;
}

double sub_1E19F75D0(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_1E174E294(0);
      v6 = (*(*v1 + 1112))(0);
      if (v5)
      {
        swift_beginAccess();
        v7 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
        swift_beginAccess();
        if ((*(v7 + 8) & 1) == 0)
        {
          sub_1E19FE328(&unk_1F5C5DB60, &unk_1F5C5DB88, sub_1E1A1DFF4);
        }
      }

      else
      {
        sub_1E19FE328(&unk_1F5C5DB60, &unk_1F5C5DB88, sub_1E1A1DFF4);
      }

      v8 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v6;

      sub_1E13CE020(v8);

      return sub_1E19F75D0(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E1A014DC();
    }
  }

  return result;
}

double sub_1E19F7818(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_1E174E2C8(0);
      v6 = (*(*v1 + 1112))(0);
      if (v5)
      {
        swift_beginAccess();
        v7 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
        swift_beginAccess();
        if ((*(v7 + 8) & 1) == 0)
        {
          sub_1E19FE328(&unk_1F5C5CEB8, &unk_1F5C5CEE0, sub_1E1A1DFF4);
        }
      }

      else
      {
        sub_1E19FE328(&unk_1F5C5CEB8, &unk_1F5C5CEE0, sub_1E1A1DFF4);
      }

      v8 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v6;

      sub_1E13CF4CC(v8);

      return sub_1E19F7818(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E1A01924();
    }
  }

  return result;
}

double sub_1E19F7A60(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_1E174E2FC(0);
      v6 = (*(*v1 + 1112))(0);
      if (v5)
      {
        swift_beginAccess();
        v7 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
        swift_beginAccess();
        if ((*(v7 + 8) & 1) == 0)
        {
          sub_1E19FE328(&unk_1F5C5DF98, &unk_1F5C5DFC0, sub_1E1A1DFF4);
        }
      }

      else
      {
        sub_1E19FE328(&unk_1F5C5DF98, &unk_1F5C5DFC0, sub_1E1A1DFF4);
      }

      v8 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v6;

      sub_1E13D0978(v8);

      return sub_1E19F7A60(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E1A01DD0();
    }
  }

  return result;
}

double sub_1E19F7CA8(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      swift_beginAccess();
      v5 = v1[3];

      sub_1E174E330(0);
      v6 = (*(*v1 + 1112))(0);
      if (v5)
      {
        swift_beginAccess();
        v7 = v5 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
        swift_beginAccess();
        if ((*(v7 + 8) & 1) == 0)
        {
          sub_1E19FE328(&unk_1F5C5D2F0, &unk_1F5C5D318, sub_1E1A1DFF4);
        }
      }

      else
      {
        sub_1E19FE328(&unk_1F5C5D2F0, &unk_1F5C5D318, sub_1E1A1DFF4);
      }

      v8 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v6;

      sub_1E13D1E24(v8);

      return sub_1E19F7CA8(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E1A02218();
    }
  }

  return result;
}

void sub_1E19F7EF0(char a1)
{
  v2 = v1;
  v4 = v1 + *(*v1 + 176);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[24];
  if (!v4[24] || v6 == 1 || *(v4 + 1) | *(v4 + 2) | v5)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    v7 = *(v4 + 1);
    v8 = *(v4 + 2);
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = 0;
    v4[24] = 2;
    sub_1E1A1DE08(v5, v7, v8, v6);
    sub_1E1A1DE6C(v5, v7, v8, v6);
    v9 = *v4;
    v10 = v4[24];
    if (v4[24])
    {
      if (v10 != 1)
      {
        if (*(v4 + 1) | *(v4 + 2) | v9)
        {
          if (v6 != 2 || v5 != 1 || (v8 | v7) != 0)
          {
            goto LABEL_32;
          }
        }

        else if (v6 != 2 || (v8 | v7 | v5) != 0)
        {
          goto LABEL_32;
        }

LABEL_34:
        swift_beginAccess();
        v21 = v1[3];

        sub_1E174E364(0);
        v22 = (*(*v1 + 1112))(0);
        if (v21)
        {
          swift_beginAccess();
          v23 = v21 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
          swift_beginAccess();
          if ((*(v23 + 8) & 1) == 0)
          {
            sub_1E19FE328(&unk_1F5C5D5E8, &unk_1F5C5D610, sub_1E1A1DFF4);
          }
        }

        else
        {
          sub_1E19FE328(&unk_1F5C5D5E8, &unk_1F5C5D610, sub_1E1A1DFF4);
        }

        v24 = *(v2 + qword_1EE2169B8);
        *(v2 + qword_1EE2169B8) = v22;

        sub_1E13D32D0(v24);

        sub_1E19F7EF0(1);
        return;
      }
    }

    else
    {
      if (v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9 == v5;
      }

      if (v13)
      {
        v14 = v5;
        v15 = v7;
        v16 = v8;
        v17 = 0;
LABEL_33:
        sub_1E1A1DE6C(v14, v15, v16, v17);
        goto LABEL_34;
      }
    }

LABEL_32:
    v26 = *v4;
    v28 = *(v4 + 1);
    v30 = *(v4 + 2);
    v32 = v4[24];
    sub_1E1A1DE08(v9, v28, v30, v10);
    sub_1E1AF5BCC();
    sub_1E1A1DE6C(v5, v7, v8, v6);
    v14 = v26;
    v15 = v28;
    v16 = v30;
    v17 = v32;
    goto LABEL_33;
  }

  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 1;
  v4[24] = 2;
  sub_1E1A1DE08(0, 0, 0, 2);
  sub_1E1A1DE6C(0, 0, 0, 2);
  v18 = *v4;
  v19 = v4[24];
  if (v19 < 2 || *(v4 + 1) | *(v4 + 2) | v18)
  {
    v25 = *v4;
    v27 = *(v4 + 1);
    v29 = *(v4 + 2);
    v31 = v4[24];
    sub_1E1A1DE08(v18, v27, v29, v19);
    sub_1E1AF5BCC();
    sub_1E1A1DE6C(0, 0, 0, 2);
    sub_1E1A1DE6C(v25, v27, v29, v31);
  }

  *(v1 + *(*v1 + 736)) = 0;

  if (*(v1 + qword_1EE2169B8))
  {

    sub_1E1A02660();
  }
}

double sub_1E19F82E8(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!*(v3 + 24) || *(v3 + 24) == 1 || *(v3 + 8) | *(v3 + 16) | *v3)
  {
    if (a1)
    {
      sub_1E19FE988(0, 0, 0, 2);
      v5 = sub_1E19F8454();
      v6 = *(v1 + qword_1EE2169B8);
      *(v1 + qword_1EE2169B8) = v5;

      sub_1E13D477C(v6);

      (*(*v1 + 544))(1);
    }
  }

  else
  {
    sub_1E19FE988(1, 0, 0, 2);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_1EE2169B8))
    {

      sub_1E1A02B0C();
    }
  }

  return result;
}

uint64_t sub_1E19F8454()
{
  swift_beginAccess();
  v1 = v0[3];

  sub_1E174E398(0);
  v2 = (*(*v0 + 1112))(0);
  if (v1)
  {
    swift_beginAccess();
    v3 = v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
    v4 = swift_beginAccess();
    if ((*(v3 + 8) & 1) == 0)
    {
      (*(*v0 + 1352))(v4);
    }
  }

  else
  {
    (*(*v0 + 1352))();
  }

  return v2;
}

void sub_1E19F85A0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v66[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_1E172D0E4(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_1E1308058(v66, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
    }
  }

  else
  {
    v61 = v9;
    v63 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_1EE2169A0) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1E1A1D6D4;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_406;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v62 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_1E1727C98(v27, v26);
        v1 = v62;
        swift_endAccess();

        v28 = v63;
        if (v1[3])
        {
          swift_beginAccess();

          sub_1E1727CD4(v29);
          v1 = v62;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v63;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v57 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v59 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v32 = 1 << *(v13 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v13[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v56 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v58 = v31;

        v36 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_1E134FD1C(*(v13[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
          }

          else
          {
            v55 = *v56;
            v55(v61, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1E172D0BC(0, *(v60 + 2) + 1, 1, v60);
            }

            v39 = v63;
            v41 = *(v60 + 2);
            v40 = *(v60 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v54 = v41 + 1;
              v53 = v41;
              v45 = sub_1E172D0BC((v40 > 1), v41 + 1, 1, v60);
              v42 = v54;
              v41 = v53;
              v60 = v45;
            }

            v44 = v60;
            v43 = v61;
            *(v60 + 2) = v42;
            v55(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v12 = &unk_1ECEBB780;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v11[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_1E16F6E24(v60);

        if (v46)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v48 = sub_1E188BA60(v47);
          *(v62 + v57) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          *(v48 + 16) = sub_1E13E2294;
          *(v48 + 24) = v49;

          sub_1E1300EA8(v50, v51);
        }
      }
    }
  }
}

void sub_1E19F8D74(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v66[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_1E172D0E4(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_1E1308058(v66, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
    }
  }

  else
  {
    v61 = v9;
    v63 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_1EE2169A0) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1E1A1D6D4;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_577;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v62 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_1E1727C98(v27, v26);
        v1 = v62;
        swift_endAccess();

        v28 = v63;
        if (v1[3])
        {
          swift_beginAccess();

          sub_1E1727CD4(v29);
          v1 = v62;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v63;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v57 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v59 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v32 = 1 << *(v13 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v13[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v56 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v58 = v31;

        v36 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_1E134FD1C(*(v13[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
          }

          else
          {
            v55 = *v56;
            v55(v61, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1E172D0BC(0, *(v60 + 2) + 1, 1, v60);
            }

            v39 = v63;
            v41 = *(v60 + 2);
            v40 = *(v60 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v54 = v41 + 1;
              v53 = v41;
              v45 = sub_1E172D0BC((v40 > 1), v41 + 1, 1, v60);
              v42 = v54;
              v41 = v53;
              v60 = v45;
            }

            v44 = v60;
            v43 = v61;
            *(v60 + 2) = v42;
            v55(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v12 = &unk_1ECEBB780;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v11[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_1E16F6E24(v60);

        if (v46)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v48 = sub_1E188BA60(v47);
          *(v62 + v57) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          *(v48 + 16) = sub_1E13E2824;
          *(v48 + 24) = v49;

          sub_1E1300EA8(v50, v51);
        }
      }
    }
  }
}

void sub_1E19F9548(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v66[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_1E172D0E4(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_1E1308058(v66, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
    }
  }

  else
  {
    v61 = v9;
    v63 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_1EE2169A0) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1E1A1D6D4;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_588_0;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v62 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_1E1727C98(v27, v26);
        v1 = v62;
        swift_endAccess();

        v28 = v63;
        if (v1[3])
        {
          swift_beginAccess();

          sub_1E1727CD4(v29);
          v1 = v62;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v63;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v57 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v59 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v32 = 1 << *(v13 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v13[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v56 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v58 = v31;

        v36 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_1E134FD1C(*(v13[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
          }

          else
          {
            v55 = *v56;
            v55(v61, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1E172D0BC(0, *(v60 + 2) + 1, 1, v60);
            }

            v39 = v63;
            v41 = *(v60 + 2);
            v40 = *(v60 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v54 = v41 + 1;
              v53 = v41;
              v45 = sub_1E172D0BC((v40 > 1), v41 + 1, 1, v60);
              v42 = v54;
              v41 = v53;
              v60 = v45;
            }

            v44 = v60;
            v43 = v61;
            *(v60 + 2) = v42;
            v55(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v12 = &unk_1ECEBB780;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v11[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_1E16F6E24(v60);

        if (v46)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v48 = sub_1E188BA60(v47);
          *(v62 + v57) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          *(v48 + 16) = sub_1E13E2314;
          *(v48 + 24) = v49;

          sub_1E1300EA8(v50, v51);
        }
      }
    }
  }
}

void sub_1E19F9D1C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v66[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_1E172D0E4(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_1E1308058(v66, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
    }
  }

  else
  {
    v61 = v9;
    v63 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_1EE2169A0) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1E1A1D6D4;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_534;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v62 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_1E1727C98(v27, v26);
        v1 = v62;
        swift_endAccess();

        v28 = v63;
        if (v1[3])
        {
          swift_beginAccess();

          sub_1E1727CD4(v29);
          v1 = v62;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v63;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v57 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v59 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v32 = 1 << *(v13 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v13[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v56 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v58 = v31;

        v36 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_1E134FD1C(*(v13[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
          }

          else
          {
            v55 = *v56;
            v55(v61, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1E172D0BC(0, *(v60 + 2) + 1, 1, v60);
            }

            v39 = v63;
            v41 = *(v60 + 2);
            v40 = *(v60 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v54 = v41 + 1;
              v53 = v41;
              v45 = sub_1E172D0BC((v40 > 1), v41 + 1, 1, v60);
              v42 = v54;
              v41 = v53;
              v60 = v45;
            }

            v44 = v60;
            v43 = v61;
            *(v60 + 2) = v42;
            v55(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v12 = &unk_1ECEBB780;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v11[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_1E16F6E24(v60);

        if (v46)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v48 = sub_1E188BA60(v47);
          *(v62 + v57) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          *(v48 + 16) = sub_1E13E2654;
          *(v48 + 24) = v49;

          sub_1E1300EA8(v50, v51);
        }
      }
    }
  }
}

void sub_1E19FA4F0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v66[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_1E172D0E4(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_1E1308058(v66, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
    }
  }

  else
  {
    v61 = v9;
    v63 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_1EE2169A0) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1E1A1D6D4;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_566;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v62 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_1E1727C98(v27, v26);
        v1 = v62;
        swift_endAccess();

        v28 = v63;
        if (v1[3])
        {
          swift_beginAccess();

          sub_1E1727CD4(v29);
          v1 = v62;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v63;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v57 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v59 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v32 = 1 << *(v13 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v13[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v56 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v58 = v31;

        v36 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_1E134FD1C(*(v13[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
          }

          else
          {
            v55 = *v56;
            v55(v61, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1E172D0BC(0, *(v60 + 2) + 1, 1, v60);
            }

            v39 = v63;
            v41 = *(v60 + 2);
            v40 = *(v60 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v54 = v41 + 1;
              v53 = v41;
              v45 = sub_1E172D0BC((v40 > 1), v41 + 1, 1, v60);
              v42 = v54;
              v41 = v53;
              v60 = v45;
            }

            v44 = v60;
            v43 = v61;
            *(v60 + 2) = v42;
            v55(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v12 = &unk_1ECEBB780;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v11[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_1E16F6E24(v60);

        if (v46)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v48 = sub_1E188BA60(v47);
          *(v62 + v57) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          *(v48 + 16) = sub_1E13E2788;
          *(v48 + 24) = v49;

          sub_1E1300EA8(v50, v51);
        }
      }
    }
  }
}

void sub_1E19FACC4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v66[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_1E172D0E4(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_1E1308058(v66, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
    }
  }

  else
  {
    v61 = v9;
    v63 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_1EE2169A0) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1E1A1D6D4;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_555_0;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v62 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_1E1727C98(v27, v26);
        v1 = v62;
        swift_endAccess();

        v28 = v63;
        if (v1[3])
        {
          swift_beginAccess();

          sub_1E1727CD4(v29);
          v1 = v62;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v63;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v57 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v59 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v32 = 1 << *(v13 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v13[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v56 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v58 = v31;

        v36 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_1E134FD1C(*(v13[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
          }

          else
          {
            v55 = *v56;
            v55(v61, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1E172D0BC(0, *(v60 + 2) + 1, 1, v60);
            }

            v39 = v63;
            v41 = *(v60 + 2);
            v40 = *(v60 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v54 = v41 + 1;
              v53 = v41;
              v45 = sub_1E172D0BC((v40 > 1), v41 + 1, 1, v60);
              v42 = v54;
              v41 = v53;
              v60 = v45;
            }

            v44 = v60;
            v43 = v61;
            *(v60 + 2) = v42;
            v55(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v12 = &unk_1ECEBB780;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v11[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_1E16F6E24(v60);

        if (v46)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v48 = sub_1E188BA60(v47);
          *(v62 + v57) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          *(v48 + 16) = sub_1E13E26EC;
          *(v48 + 24) = v49;

          sub_1E1300EA8(v50, v51);
        }
      }
    }
  }
}

void sub_1E19FB498(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v66[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_1E172D0E4(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_1E1308058(v66, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
    }
  }

  else
  {
    v61 = v9;
    v63 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_1EE2169A0) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1E1A1D6D4;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_364;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v62 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_1E1727C98(v27, v26);
        v1 = v62;
        swift_endAccess();

        v28 = v63;
        if (v1[3])
        {
          swift_beginAccess();

          sub_1E1727CD4(v29);
          v1 = v62;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v63;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v57 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v59 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v32 = 1 << *(v13 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v13[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v56 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v58 = v31;

        v36 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_1E134FD1C(*(v13[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
          }

          else
          {
            v55 = *v56;
            v55(v61, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1E172D0BC(0, *(v60 + 2) + 1, 1, v60);
            }

            v39 = v63;
            v41 = *(v60 + 2);
            v40 = *(v60 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v54 = v41 + 1;
              v53 = v41;
              v45 = sub_1E172D0BC((v40 > 1), v41 + 1, 1, v60);
              v42 = v54;
              v41 = v53;
              v60 = v45;
            }

            v44 = v60;
            v43 = v61;
            *(v60 + 2) = v42;
            v55(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v12 = &unk_1ECEBB780;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v11[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_1E16F6E24(v60);

        if (v46)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v48 = sub_1E188BA60(v47);
          *(v62 + v57) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          *(v48 + 16) = sub_1E13E2238;
          *(v48 + 24) = v49;

          sub_1E1300EA8(v50, v51);
        }
      }
    }
  }
}

void sub_1E19FBC6C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v66[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_1E172D0E4(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_1E1308058(v66, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
    }
  }

  else
  {
    v61 = v9;
    v63 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_1EE2169A0) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1E1A1D6D4;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_495;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v62 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_1E1727C98(v27, v26);
        v1 = v62;
        swift_endAccess();

        v28 = v63;
        if (v1[3])
        {
          swift_beginAccess();

          sub_1E1727CD4(v29);
          v1 = v62;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v63;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v57 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v59 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v32 = 1 << *(v13 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v13[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v56 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v58 = v31;

        v36 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_1E134FD1C(*(v13[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
          }

          else
          {
            v55 = *v56;
            v55(v61, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1E172D0BC(0, *(v60 + 2) + 1, 1, v60);
            }

            v39 = v63;
            v41 = *(v60 + 2);
            v40 = *(v60 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v54 = v41 + 1;
              v53 = v41;
              v45 = sub_1E172D0BC((v40 > 1), v41 + 1, 1, v60);
              v42 = v54;
              v41 = v53;
              v60 = v45;
            }

            v44 = v60;
            v43 = v61;
            *(v60 + 2) = v42;
            v55(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v12 = &unk_1ECEBB780;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v11[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_1E16F6E24(v60);

        if (v46)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v48 = sub_1E188BA60(v47);
          *(v62 + v57) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          *(v48 + 16) = sub_1E13E255C;
          *(v48 + 24) = v49;

          sub_1E1300EA8(v50, v51);
        }
      }
    }
  }
}

void sub_1E19FC440(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v66[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_1E172D0E4(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_1E1308058(v66, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
    }
  }

  else
  {
    v61 = v9;
    v63 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_1EE2169A0) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1E1A1D6D4;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_599;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v62 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_1E1727C98(v27, v26);
        v1 = v62;
        swift_endAccess();

        v28 = v63;
        if (v1[3])
        {
          swift_beginAccess();

          sub_1E1727CD4(v29);
          v1 = v62;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v63;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v57 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v59 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v32 = 1 << *(v13 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v13[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v56 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v58 = v31;

        v36 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_1E134FD1C(*(v13[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
          }

          else
          {
            v55 = *v56;
            v55(v61, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1E172D0BC(0, *(v60 + 2) + 1, 1, v60);
            }

            v39 = v63;
            v41 = *(v60 + 2);
            v40 = *(v60 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v54 = v41 + 1;
              v53 = v41;
              v45 = sub_1E172D0BC((v40 > 1), v41 + 1, 1, v60);
              v42 = v54;
              v41 = v53;
              v60 = v45;
            }

            v44 = v60;
            v43 = v61;
            *(v60 + 2) = v42;
            v55(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v12 = &unk_1ECEBB780;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v11[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_1E16F6E24(v60);

        if (v46)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v48 = sub_1E188BA60(v47);
          *(v62 + v57) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          *(v48 + 16) = sub_1E13E292C;
          *(v48 + 24) = v49;

          sub_1E1300EA8(v50, v51);
        }
      }
    }
  }
}

void sub_1E19FCC14(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v66[0] = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (v11)
    {
      v12 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v13 = *&v12[v11];
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
      sub_1E134FD1C(v66, v64, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v12[v11] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_37:
        v13 = sub_1E172D0E4(0, v13[2] + 1, 1, v13);
        *&v12[v11] = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = sub_1E172D0E4((v15 > 1), v16 + 1, 1, v13);
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v10;
      *&v12[v11] = v13;
      swift_endAccess();

      sub_1E1308058(v66, &qword_1ECEBBAA0, &unk_1E1B4C3D0);
    }
  }

  else
  {
    v61 = v9;
    v63 = v7;
    v17 = *a1;
    v18 = a1[3];
    *(v1 + qword_1EE2169A0) = *a1;

    v19 = *(v1 + *(*v1 + 688));
    v20 = swift_allocObject();
    *(v20 + 16) = v1;
    *(v20 + 24) = v17;
    *(v20 + 32) = 65792;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1E1A1D6D4;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1551FBC;
    aBlock[3] = &block_descriptor_156_0;
    v22 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    dispatch_sync(v19, v22);
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else if (v18)
    {
      v24 = v18;
      swift_beginAccess();
      v25 = v1[3];
      v62 = v1;
      if (v25)
      {
        swift_beginAccess();

        sub_1E1727C98(v27, v26);
        v1 = v62;
        swift_endAccess();

        v28 = v63;
        if (v1[3])
        {
          swift_beginAccess();

          sub_1E1727CD4(v29);
          v1 = v62;
          swift_endAccess();
        }
      }

      else
      {

        v28 = v63;
      }

      v30 = *(v1 + *(*v1 + 736));
      if (v30)
      {
        v57 = *(*v1 + 736);
        v31 = *(v30 + 32);
        v59 = v24;
        v13 = *(v24 + 16);
        v11 = v13 + 8;
        v32 = 1 << *(v13 + 32);
        v33 = -1;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        v34 = v33 & v13[8];
        v35 = (v32 + 63) >> 6;
        v10 = (v28 + 48);
        v56 = (v28 + 32);
        swift_bridgeObjectRetain_n();
        v58 = v31;

        v36 = 0;
        v60 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v36;
          if (!v34)
          {
            break;
          }

LABEL_22:
          v38 = __clz(__rbit64(v34));
          v34 &= v34 - 1;
          sub_1E134FD1C(*(v13[7] + ((v36 << 9) | (8 * v38))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
          if ((*v10)(v5, 1, v6) == 1)
          {
            sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
          }

          else
          {
            v55 = *v56;
            v55(v61, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1E172D0BC(0, *(v60 + 2) + 1, 1, v60);
            }

            v39 = v63;
            v41 = *(v60 + 2);
            v40 = *(v60 + 3);
            v42 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              v54 = v41 + 1;
              v53 = v41;
              v45 = sub_1E172D0BC((v40 > 1), v41 + 1, 1, v60);
              v42 = v54;
              v41 = v53;
              v60 = v45;
            }

            v44 = v60;
            v43 = v61;
            *(v60 + 2) = v42;
            v55(&v44[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v41], v43, v6);
          }
        }

        v12 = &unk_1ECEBB780;
        while (1)
        {
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v36 >= v35)
          {
            break;
          }

          v34 = v11[v36];
          ++v37;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        v46 = sub_1E16F6E24(v60);

        if (v46)
        {
          type metadata accessor for PageRefreshGate(0);
          swift_allocObject();

          v48 = sub_1E188BA60(v47);
          *(v62 + v57) = v48;

          v49 = swift_allocObject();
          swift_weakInit();
          swift_beginAccess();
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          *(v48 + 16) = sub_1E13E2104;
          *(v48 + 24) = v49;

          sub_1E1300EA8(v50, v51);
        }
      }
    }
  }
}

void sub_1E19FD3E8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65 = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (!v11)
    {
      return;
    }

    v6 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v12 = *(v11 + v6);
    sub_1E134FD1C(&v65, v63, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v6) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_36:
      v12 = sub_1E172D0E4(0, v12[2] + 1, 1, v12);
      *(v11 + v6) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1E172D0E4((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v12[v15 + 4] = v10;
    *(v11 + v6) = v12;
    swift_endAccess();
    goto LABEL_7;
  }

  v60 = v9;
  v62 = v7;
  v16 = *a1;
  v17 = a1[3];
  *(v1 + qword_1EE2169A0) = *a1;

  v18 = *(v1 + *(*v1 + 688));
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  *(v19 + 24) = v16;
  *(v19 + 32) = 65792;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E1A1D6D4;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E13E2A70;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1551FBC;
  aBlock[3] = &block_descriptor_229;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v18, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return;
  }

  if (v17)
  {
    v23 = v17;
    swift_beginAccess();
    v24 = v1[3];
    v61 = v1;
    if (v24)
    {
      swift_beginAccess();

      sub_1E1727C98(v26, v25);
      v1 = v61;
      swift_endAccess();

      v27 = v62;
      if (v1[3])
      {
        swift_beginAccess();

        sub_1E1727CD4(v28);
        v1 = v61;
        swift_endAccess();
      }
    }

    else
    {

      v27 = v62;
    }

    v29 = *(v1 + *(*v1 + 736));
    if (v29)
    {
      v56 = *(*v1 + 736);
      v30 = *(v29 + 32);
      v58 = v23;
      v12 = *(v23 + 16);
      v11 = v12 + 8;
      v31 = 1 << *(v12 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & v12[8];
      v34 = (v31 + 63) >> 6;
      v10 = (v27 + 48);
      v55 = (v27 + 32);
      swift_bridgeObjectRetain_n();
      v57 = v30;

      v35 = 0;
      v59 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v36 = v35;
        if (!v33)
        {
          break;
        }

LABEL_23:
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        sub_1E134FD1C(*(v12[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
        if ((*v10)(v5, 1, v6) == 1)
        {
          sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
        }

        else
        {
          v54 = *v55;
          v54(v60, v5, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_1E172D0BC(0, *(v59 + 2) + 1, 1, v59);
          }

          v38 = v62;
          v40 = *(v59 + 2);
          v39 = *(v59 + 3);
          v41 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            v53 = v40 + 1;
            v52 = v40;
            v44 = sub_1E172D0BC((v39 > 1), v40 + 1, 1, v59);
            v41 = v53;
            v40 = v52;
            v59 = v44;
          }

          v43 = v59;
          v42 = v60;
          *(v59 + 2) = v41;
          v54(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
        }
      }

      while (1)
      {
        v35 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v35 >= v34)
        {
          break;
        }

        v33 = v11[v35];
        ++v36;
        if (v33)
        {
          goto LABEL_23;
        }
      }

      v45 = sub_1E16F6E24(v59);

      if (v45)
      {
        type metadata accessor for PageRefreshGate(0);
        swift_allocObject();

        v47 = sub_1E188BA60(v46);
        *(v61 + v56) = v47;

        v48 = swift_allocObject();
        swift_weakInit();
        swift_beginAccess();
        v49 = *(v47 + 16);
        v50 = *(v47 + 24);
        *(v47 + 16) = sub_1E13E21AC;
        *(v47 + 24) = v48;

        sub_1E1300EA8(v49, v50);
      }
    }

LABEL_7:
  }
}

void sub_1E19FDB8C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_1E1AEFE6C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v65 = v10;
  if (v10)
  {
    swift_beginAccess();
    v11 = v1[3];
    if (!v11)
    {
      return;
    }

    v6 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v12 = *(v11 + v6);
    sub_1E134FD1C(&v65, v63, &qword_1ECEBBAA0, &unk_1E1B4C3D0);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v6) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_36:
      v12 = sub_1E172D0E4(0, v12[2] + 1, 1, v12);
      *(v11 + v6) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1E172D0E4((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v12[v15 + 4] = v10;
    *(v11 + v6) = v12;
    swift_endAccess();
    goto LABEL_7;
  }

  v60 = v9;
  v62 = v7;
  v16 = *a1;
  v17 = a1[3];
  *(v1 + qword_1EE2169A0) = *a1;

  v18 = *(v1 + *(*v1 + 688));
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  *(v19 + 24) = v16;
  *(v19 + 32) = 65792;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E1A1D6D4;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1E137AFA8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1551FBC;
  aBlock[3] = &block_descriptor_108_0;
  v21 = _Block_copy(aBlock);
  swift_bridgeObjectRetain_n();

  dispatch_sync(v18, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return;
  }

  if (v17)
  {
    v23 = v17;
    swift_beginAccess();
    v24 = v1[3];
    v61 = v1;
    if (v24)
    {
      swift_beginAccess();

      sub_1E1727C98(v26, v25);
      v1 = v61;
      swift_endAccess();

      v27 = v62;
      if (v1[3])
      {
        swift_beginAccess();

        sub_1E1727CD4(v28);
        v1 = v61;
        swift_endAccess();
      }
    }

    else
    {

      v27 = v62;
    }

    v29 = *(v1 + *(*v1 + 736));
    if (v29)
    {
      v56 = *(*v1 + 736);
      v30 = *(v29 + 32);
      v58 = v23;
      v12 = *(v23 + 16);
      v11 = v12 + 8;
      v31 = 1 << *(v12 + 32);
      v32 = -1;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      v33 = v32 & v12[8];
      v34 = (v31 + 63) >> 6;
      v10 = (v27 + 48);
      v55 = (v27 + 32);
      swift_bridgeObjectRetain_n();
      v57 = v30;

      v35 = 0;
      v59 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v36 = v35;
        if (!v33)
        {
          break;
        }

LABEL_23:
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        sub_1E134FD1C(*(v12[7] + ((v35 << 9) | (8 * v37))) + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, v5, &unk_1ECEBB780, &unk_1E1B029A0);
        if ((*v10)(v5, 1, v6) == 1)
        {
          sub_1E1308058(v5, &unk_1ECEBB780, &unk_1E1B029A0);
        }

        else
        {
          v54 = *v55;
          v54(v60, v5, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_1E172D0BC(0, *(v59 + 2) + 1, 1, v59);
          }

          v38 = v62;
          v40 = *(v59 + 2);
          v39 = *(v59 + 3);
          v41 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            v53 = v40 + 1;
            v52 = v40;
            v44 = sub_1E172D0BC((v39 > 1), v40 + 1, 1, v59);
            v41 = v53;
            v40 = v52;
            v59 = v44;
          }

          v43 = v59;
          v42 = v60;
          *(v59 + 2) = v41;
          v54(&v43[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v42, v6);
        }
      }

      while (1)
      {
        v35 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v35 >= v34)
        {
          break;
        }

        v33 = v11[v35];
        ++v36;
        if (v33)
        {
          goto LABEL_23;
        }
      }

      v45 = sub_1E16F6E24(v59);

      if (v45)
      {
        type metadata accessor for PageRefreshGate(0);
        swift_allocObject();

        v47 = sub_1E188BA60(v46);
        *(v61 + v56) = v47;

        v48 = swift_allocObject();
        swift_weakInit();
        swift_beginAccess();
        v49 = *(v47 + 16);
        v50 = *(v47 + 24);
        *(v47 + 16) = sub_1E13E25EC;
        *(v47 + 24) = v48;

        sub_1E1300EA8(v49, v50);
      }
    }

LABEL_7:
  }
}

void sub_1E19FE328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = sub_1E1AEFE6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = v5[3];
  if (v10)
  {

    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    *v13 = v12;
    *(v13 + 8) = 0;
    v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasAppearTime);
    swift_beginAccess();
    *(v14 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  type metadata accessor for SheetEngagementManager();
  sub_1E1AF416C();
  v15 = v25;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = v5 + *(*v5 + 176);
  swift_beginAccess();
  if (v18[24])
  {
    v19 = (v5 + *(*v5 + 752));
    v20 = *v19;
    v21 = v19[1];
    *v19 = a3;
    v19[1] = v17;

    sub_1E1300EA8(v20, v21);
  }

  else
  {
    v22 = v15;

    sub_1E19FE5C0(v23);
  }
}

void sub_1E19FE5C0(uint64_t a1)
{
  v1 = sub_1E1AF3C3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    sub_1E134FD1C(v6 + 40, v25, &qword_1ECEB2588, &unk_1E1B05C10);
    v7 = v26;
    if (v26)
    {
      v8 = __swift_project_boxed_opaque_existential_1Tm(v25, v26);
      v9 = *(v7 - 8);
      v10 = MEMORY[0x1EEE9AC00](v8);
      v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);

      sub_1E1308058(v25, &qword_1ECEB2588, &unk_1E1B05C10);
      sub_1E1AF5B8C();
      (*(v9 + 8))(v12, v7);
      v13 = sub_1E1AF3AEC();
      (*(v2 + 8))(v4, v1);
      if (v13)
      {
        v25[0] = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
        swift_dynamicCast();
        v14 = v22;
        type metadata accessor for ArcadeSubscriptionManager();
        sub_1E1AF421C();

        sub_1E1AF55EC();

        v15 = v22;
        v16 = &v22[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
        swift_beginAccess();
        v17 = *v16;
        v18 = v16[8];
        sub_1E1361A40(*v16, v18);

        type metadata accessor for ASKBagContract(0);
        sub_1E1AF413C();

        v19 = v24;
        v22 = v17;
        v23 = v18;
        v20 = sub_1E13609A4(MEMORY[0x1E69E7CC0]);
        SheetEngagementManager.requestAppLevelSheets(bag:pageFields:signal:arcadeSubscriptionState:)(v19, v14, v20, &v22);

        sub_1E1361A60(v17, v18);
      }

      else
      {
      }
    }

    else
    {

      sub_1E1308058(v25, &qword_1ECEB2588, &unk_1E1B05C10);
    }
  }
}

void sub_1E19FE988(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(*v4 + 176);
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_1E1A1DE08(v10, v11, v12, v13);
  sub_1E1A1DE6C(v10, v11, v12, v13);
  v14 = *v9;
  v15 = *(v9 + 24);
  if (!*(v9 + 24))
  {
    if (v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v14 == v10;
    }

    if (v18)
    {
      v19 = v10;
      v20 = v11;
      v21 = v12;
      v22 = 0;
LABEL_24:
      sub_1E1A1DE6C(v19, v20, v21, v22);
      return;
    }

LABEL_23:
    v24 = *v9;
    v25 = *(v9 + 8);
    v26 = *(v9 + 16);
    v27 = *(v9 + 24);
    sub_1E1A1DE08(v14, v25, v26, v15);
    sub_1E1AF5BCC();
    sub_1E1A1DE6C(v10, v11, v12, v13);
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v22 = v27;
    goto LABEL_24;
  }

  if (v15 == 1)
  {
    goto LABEL_23;
  }

  if (*(v9 + 8) | *(v9 + 16) | v14)
  {
    if (v13 != 2 || v10 != 1 || (v12 | v11) != 0)
    {
      goto LABEL_23;
    }
  }

  else if (v13 != 2 || (v12 | v11 | v10) != 0)
  {
    goto LABEL_23;
  }
}

void sub_1E19FEB0C(unint64_t a1, uint64_t (*a2)(__int128 *), uint64_t a3)
{
  v4 = v3;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_59:
    v9 = sub_1E1AF71CC();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v10 = 0;
    v46 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      for (i = v10; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1E68FFD80](i, a1);
          v10 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (i >= *(v8 + 16))
          {
            goto LABEL_58;
          }

          v12 = *(a1 + 8 * i + 32);

          v10 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }
        }

        *&v49[0] = v12;
        if (a2(v49))
        {
          break;
        }

        if (v10 == v9)
        {
          return;
        }
      }

      v42 = a2;
      v43 = a3;
      v44 = v4;
      v13 = *(v12 + 24);
      v14 = MEMORY[0x1E69E7CC0];
      v50 = MEMORY[0x1E69E7CC0];
      v15 = *(v13 + 16);
      v40 = v8;
      if (v15)
      {
        v16 = v13 + 32;
        v17 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1E1300B24(v16, v49);
          sub_1E1308EC0(v49, v47);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
          type metadata accessor for UnifiedMessage(0);
          if ((swift_dynamicCast() & 1) != 0 && v48)
          {
            MEMORY[0x1E68FEF20]();
            if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E1AF625C();
            }

            sub_1E1AF62AC();
            v17 = v50;
          }

          v16 += 40;
          --v15;
        }

        while (v15);

        v18 = v17;
        v8 = v40;
      }

      else
      {

        v18 = v14;
      }

      if (v18 >> 62)
      {
        v19 = sub_1E1AF71CC();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v46 >> 62;
      if (v46 >> 62)
      {
        v21 = sub_1E1AF71CC();
      }

      else
      {
        v21 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v41 = v19;
      v22 = __OFADD__(v21, v19);
      v23 = v21 + v19;
      if (v22)
      {
        __break(1u);
        goto LABEL_61;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v20)
        {
          v24 = v46 & 0xFFFFFFFFFFFFFF8;
          if (v23 <= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      else if (!v20)
      {
LABEL_36:
        v46 = sub_1E1AF706C();
        v24 = v46 & 0xFFFFFFFFFFFFFF8;
LABEL_37:
        v45 = v24;
        v25 = *(v24 + 16);
        v26 = (*(v24 + 24) >> 1) - v25;
        if (v18 >> 62)
        {
          v28 = sub_1E1AF71CC();
          if (v28)
          {
            v29 = v28;
            v30 = sub_1E1AF71CC();
            if (v26 < v30)
            {
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v39 = v30;
            if (v29 < 1)
            {
LABEL_65:
              __break(1u);
              return;
            }

            v31 = v45 + 8 * v25 + 32;
            sub_1E1302CD4(&qword_1ECEBCCC8, &qword_1ECEBCCC0, &qword_1E1B4C3C8, MEMORY[0x1E69E6340]);
            for (j = 0; j != v29; ++j)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCCC0, &qword_1E1B4C3C8);
              v33 = sub_1E1545DA4(v49, j, v18);
              v34 = v18;
              v36 = *v35;

              (v33)(v49, 0);
              *(v31 + 8 * j) = v36;
              v18 = v34;
            }

            a3 = v43;
            v4 = v44;
            a2 = v42;
            v8 = v40;
            v27 = v39;
            goto LABEL_47;
          }
        }

        else
        {
          v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v27)
          {
            if (v26 < v27)
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

            type metadata accessor for UnifiedMessage(0);
            swift_arrayInitWithCopy();
            a3 = v43;
            v4 = v44;
            a2 = v42;
LABEL_47:

            if (v27 >= v41)
            {
              if (v27 < 1)
              {
                goto LABEL_52;
              }

              v37 = *(v45 + 16);
              v22 = __OFADD__(v37, v27);
              v38 = v37 + v27;
              if (!v22)
              {
                *(v45 + 16) = v38;
                goto LABEL_52;
              }

              goto LABEL_62;
            }

LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }
        }

        a2 = v42;
        a3 = v43;
        v4 = v44;
        if (v41 <= 0)
        {
LABEL_52:
          if (v10 != v9)
          {
            continue;
          }

          return;
        }

        goto LABEL_61;
      }

      break;
    }

    sub_1E1AF71CC();
    goto LABEL_36;
  }
}

void sub_1E19FEFBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v33 = a4;
  *(v8 + 32) = a4;
  v9 = MEMORY[0x1E69E7CC8];
  v47 = MEMORY[0x1E69E7CC8];
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v34 = a3;

  v14 = 0;
  while (v12)
  {
LABEL_13:
    v23 = __clz(__rbit64(v12)) | (v14 << 6);
    sub_1E134E724(*(a1 + 48) + 40 * v23, v44);
    v24 = *(*(a1 + 56) + 8 * v23);
    v46 = v24;
    v41 = v44[0];
    v42 = v44[1];
    v43 = v45;
    sub_1E134E724(v24 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, &v35);

    if (swift_dynamicCast())
    {
      if (v39 == a2 && v40 == v34)
      {

LABEL_26:
        v30 = v24[3];
        LOBYTE(v35) = 100;
        v31 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v30, &v35, 1, v33 & 1);
        goto LABEL_28;
      }

      v29 = sub_1E1AF74AC();

      if (v29)
      {
        goto LABEL_26;
      }
    }

    v31 = v24;
LABEL_28:
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v24;
    v32 = *(v9 + 16);
    if (*(v9 + 24) <= v32)
    {
      sub_1E16889E4(v32 + 1, 1);
      v9 = v47;
    }

    v15 = sub_1E1AF6F2C();
    v16 = v9 + 64;
    v17 = -1 << *(v9 + 32);
    v18 = v15 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v9 + 64 + 8 * (v18 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v17) >> 6;
      while (++v19 != v26 || (v25 & 1) == 0)
      {
        v27 = v19 == v26;
        if (v19 == v26)
        {
          v19 = 0;
        }

        v25 |= v27;
        v28 = *(v16 + 8 * v19);
        if (v28 != -1)
        {
          v20 = __clz(__rbit64(~v28)) + (v19 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_32;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v9 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v12 &= v12 - 1;
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v21 = *(v9 + 48) + 40 * v20;
    *v21 = v35;
    *(v21 + 16) = v36;
    *(v21 + 32) = v37;
    *(*(v9 + 56) + 8 * v20) = v31;
    ++*(v9 + 16);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v13)
    {

      return;
    }

    v12 = *(a1 + 64 + 8 * v22);
    ++v14;
    if (v12)
    {
      v14 = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1E19FF318(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v30 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_1E134E724(*(a1 + 48) + 40 * v17, v27);
    v29 = *(*(a1 + 56) + 8 * v17);

    v18 = sub_1E1890378();
    v25 = v27[1];
    v26 = v28;
    v24 = v27[0];
    v19 = *(v2 + 16);
    if (*(v2 + 24) <= v19)
    {
      sub_1E16889E4(v19 + 1, 1);
      v2 = v30;
    }

    v9 = sub_1E1AF6F2C();
    v10 = v2 + 64;
    v11 = -1 << *(v2 + 32);
    v12 = v9 & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v11) >> 6;
      while (++v13 != v21 || (v20 & 1) == 0)
      {
        v22 = v13 == v21;
        if (v13 == v21)
        {
          v13 = 0;
        }

        v20 |= v22;
        v23 = *(v10 + 8 * v13);
        if (v23 != -1)
        {
          v14 = __clz(__rbit64(~v23)) + (v13 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v6 &= v6 - 1;
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v2 + 48) + 40 * v14;
    *v15 = v24;
    *(v15 + 16) = v25;
    *(v15 + 32) = v26;
    *(*(v2 + 56) + 8 * v14) = v18;
    ++*(v2 + 16);
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v16);
    ++v8;
    if (v6)
    {
      v8 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1E19FF54C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC8];
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v42 = MEMORY[0x1E69E7CC8];
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = qword_1EE2166A0;

  v43 = v10;
  swift_beginAccess();
  v11 = 0;
  v12 = (v7 + 63) >> 6;
  if (!v9)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (v11 << 6);
      sub_1E134E724(*(a1 + 48) + 40 * v15, v40);
      *(&v41 + 1) = *(*(a1 + 56) + 8 * v15);
      v38 = v40[1];
      v39 = v41;
      v37 = v40[0];
      v16 = *(a2 + v43);
      if (*(v16 + 16))
      {
        break;
      }

LABEL_7:
      sub_1E1308058(&v37, &qword_1ECEB4D38, &qword_1E1B37D10);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v17 = *(&v39 + 1);
    v18 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;

    v19 = sub_1E135FCF4(v17 + v18);
    if ((v20 & 1) == 0)
    {

      goto LABEL_7;
    }

    v21 = *(*(v16 + 56) + 8 * v19);

    v35 = v38;
    v36 = v39;
    v34 = v37;
    v22 = *(v4 + 16);
    if (*(v4 + 24) <= v22)
    {
      sub_1E16889E4(v22 + 1, 1);
      v4 = v42;
    }

    v23 = sub_1E1AF6F2C();
    v24 = v4 + 64;
    v25 = -1 << *(v4 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v4 + 64 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v24 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v4 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v4 + 48) + 40 * v28;
    *v33 = v34;
    *(v33 + 16) = v35;
    *(v33 + 32) = v36;
    *(*(v4 + 56) + 8 * v28) = v21;
    ++*(v4 + 16);
  }

  while (v9);
LABEL_8:
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1E19FF838()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v4, v0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1E1AF5DFC();

  return sub_1E1AF590C();
}

void sub_1E19FF980(char a1)
{
  v2 = *(v1 + qword_1EE1E9D50);
  *(v1 + qword_1EE1E9D50) = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + qword_1EE1E9E90);
    if (a1)
    {
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v5 = *(v4 + 48);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          *(v4 + 48) = v7;
          v8 = v7 == 0;
          swift_beginAccess();
          *(v4 + 40) = v8;
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_1E149DEE8();
          }
        }
      }
    }

    else if (v3)
    {
      sub_1E1729254();
    }
  }
}

void sub_1E19FFA64()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A02FB8();
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E19FFEAC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A03754();
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A002F4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A03F04();
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A0073C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A046B4();
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A00B84()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A068A8(sub_1E1361B18, sub_1E1361B18, type metadata accessor for ReviewsPage, sub_1E1A16B90, sub_1E1A08854);
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A01030()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A068A8(sub_1E1361B18, sub_1E1361B18, type metadata accessor for SearchFocusPage, sub_1E1A16D24, sub_1E1A08D14);
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A014DC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A04FAC();
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A01924()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A068A8(sub_1E1361B18, sub_1E1361B18, type metadata accessor for SearchLandingPage, sub_1E1A170AC, sub_1E1A097FC);
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A01DD0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A0575C();
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A02218()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A05EF8();
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A02660()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A068A8(sub_1E1361B18, sub_1E1361B18, type metadata accessor for ArcadeSeeAllGamesPage, sub_1E1A181D4, sub_1E1A0A7A4);
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A02B0C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v8 = *(v0 + qword_1EE1E9E00);
  if (v8)
  {
    v26 = v5;
    v9 = *(v0 + qword_1EE1E9E00 + 8);
    v10 = *(v0 + qword_1EE1E9E90);
    if (v10)
    {
      v11 = qword_1EE1EC290;

      if (v11 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EE1EC298[0];
      v13 = v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v13 = v12;
      *(v13 + 8) = 0;
      v14 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v14 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    else
    {
    }

    sub_1E1A068A8(sub_1E1361B18, sub_1E1361B18, type metadata accessor for ArcadePage, sub_1E1A18FC4, sub_1E1A0AC64);
    if (*(v1 + qword_1EE2166D0) == 1 || (v15 & 1) == 0)
    {
      sub_1E1300EA8(v8, v9);
    }

    else
    {
      *(v1 + qword_1EE2166D0) = 1;
      v8(v1 + qword_1EE216678);
      if (v10)
      {
        v16 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v17 = *(v16 + 48);
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          __break(1u);
          return;
        }

        *(v16 + 48) = v19;
        v20 = v19 == 0;
        swift_beginAccess();
        *(v16 + 40) = v20;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }
      }

      if (*(v1 + qword_1EE216690))
      {
        *v7 = 1;
        v21 = v26;
        (*(v4 + 104))(v7, *MEMORY[0x1E69AB450], v26);
        sub_1E1AF509C();
        (*(v4 + 8))(v7, v21);
      }

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v2;
      swift_allocObject();
      swift_weakInit();
      v24 = sub_1E1361A80();

      v25 = sub_1E1AF68EC();
      v27[3] = v24;
      v27[4] = MEMORY[0x1E69AB720];
      v27[0] = v25;
      sub_1E1AF57FC();
      sub_1E1300EA8(v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }
}

void sub_1E1A02FB8()
{
  v1 = v0;
  v2 = sub_1E1AF504C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF503C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + qword_1EE1E9EA0);
  v11 = *(v0 + qword_1EE1E9EA0);
  if (!v11)
  {
    v20 = 0;
LABEL_7:
    v21 = v10[1];
LABEL_8:
    *v10 = 0;
    v10[1] = 0;
    sub_1E1300EA8(v20, v21);
    return;
  }

  v12 = v10[1];

  v14 = v11(v13);
  v15 = v11;
  v16 = v14;
  sub_1E1300EA8(v15, v12);
  if (!v16)
  {
    v20 = *v10;
    goto LABEL_7;
  }

  v65 = v9;
  v66 = v7;
  v17 = *(v1 + qword_1EE1E9E08);
  v64 = v6;
  if (v17)
  {
    v18 = *(v1 + qword_1EE1E9E08 + 8);

    v19 = v17(v16);
    sub_1E1300EA8(v17, v18);
  }

  else
  {

    v19 = v16;
  }

  v22 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v19 + v22) + 16))
  {

    v20 = *v10;
    v21 = v10[1];
    goto LABEL_8;
  }

  *(v1 + qword_1EE1E9D48) = v19;

  v23 = *(v19 + v22);
  v63 = qword_1EE1E9DF8;
  *(v1 + qword_1EE1E9DF8) = v23;

  v24 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping;
  swift_beginAccess();
  v62 = v24;
  v25 = *(v19 + v24);
  v26 = qword_1EE2166A0;
  swift_beginAccess();
  *(v1 + v26) = v25;

  v27 = *(v1 + qword_1EE1E9E90);
  v67 = v19;
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
    swift_beginAccess();
    v29 = *(v28 + 48);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
LABEL_39:
      __break(1u);
      return;
    }

    *(v28 + 48) = v31;
    v32 = v31 == 0;
    swift_beginAccess();
    *(v28 + 40) = v32;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v19 = v67;
    if (Strong)
    {
      sub_1E149DEE8();
    }
  }

  v60 = v27;
  v34 = *(v1 + qword_1EE216690);
  if (v34)
  {
    *v5 = 1;
    (*(v3 + 104))(v5, *MEMORY[0x1E69AB450], v2);
    sub_1E1AF509C();
    (*(v3 + 8))(v5, v2);
  }

  v59 = v34;
  v61 = v16;
  sub_1E134FD1C(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &v69, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v72 = 0;
  v73 = 0;
  v35 = qword_1EE216698;
  swift_beginAccess();
  sub_1E136197C(&v69, v1 + v35);
  swift_endAccess();
  v36 = v1 + v35;
  v37 = v67;
  sub_1E136073C(v36, v68);
  sub_1E1AF5BCC();
  sub_1E1360B10(v68);
  sub_1E1360B10(&v69);
  v38 = *(v1 + qword_1EE2166C0);
  v39 = *(v1 + v63);
  v40 = MEMORY[0x1E69E7CC0];
  v68[0] = MEMORY[0x1E69E7CC0];
  v41 = *(v39 + 16);

  if (v41)
  {
    v42 = 0;
    v43 = v39 + 32;
    v58[0] = v41 - 1;
    v58[1] = v38;
    v63 = v39 + 32;
    while (1)
    {
      v44 = v43 + 40 * v42;
      v45 = v42;
      while (1)
      {
        if (v45 >= *(v39 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        sub_1E134E724(v44, &v69);
        if (*(*(v1 + v26) + 16))
        {
          break;
        }

LABEL_20:
        ++v45;
        sub_1E134B88C(&v69);
        v44 += 40;
        if (v41 == v45)
        {
          v37 = v67;
          goto LABEL_31;
        }
      }

      sub_1E135FCF4(&v69);
      if ((v46 & 1) == 0)
      {
        break;
      }

      v47 = sub_1E134B88C(&v69);
      MEMORY[0x1E68FEF20](v47);
      if (*((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v42 = v45 + 1;
      sub_1E1AF62AC();
      v40 = v68[0];
      v48 = v58[0] == v45;
      v37 = v67;
      v43 = v63;
      if (v48)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_20;
  }

LABEL_31:

  v69 = v37;
  v70 = v40;
  v71 = 0;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v69, v70, v71);

  sub_1E1A15900(v49, 0, v1);

  sub_1E1A0711C(v37);
  if (v60)
  {
    sub_1E1729254();
  }

  v50 = v66;
  v51 = v65;
  if (v59)
  {
    v52 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    v53 = v67;
    swift_beginAccess();
    v54 = sub_1E1AF3C3C();
    (*(*(v54 - 8) + 16))(v51, v53 + v52, v54);
    v55 = v64;
    (*(v50 + 104))(v51, *MEMORY[0x1E69AB440], v64);
    sub_1E1AF508C();

    (*(v50 + 8))(v51, v55);
  }

  else
  {
  }

  v56 = *v10;
  v57 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  sub_1E1300EA8(v56, v57);
}

void sub_1E1A03754()
{
  v1 = v0;
  v2 = sub_1E1AF504C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF503C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + qword_1EE1E9EA0);
  v12 = *(v0 + qword_1EE1E9EA0);
  if (!v12)
  {
    v19 = 0;
LABEL_7:
    v20 = v11[1];
LABEL_8:
    *v11 = 0;
    v11[1] = 0;
    sub_1E1300EA8(v19, v20);
    return;
  }

  v67 = v8;
  v13 = v11[1];

  v15 = v12(v14);
  sub_1E1300EA8(v12, v13);
  v68 = v15;
  if (!v15)
  {
    v19 = *v11;
    goto LABEL_7;
  }

  v16 = *(v1 + qword_1EE1E9E08);
  v64 = v10;
  if (v16)
  {
    v17 = *(v1 + qword_1EE1E9E08 + 8);

    v18 = v16(v68);
    sub_1E1300EA8(v16, v17);
  }

  else
  {
    v18 = v68;
  }

  v21 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v18 + v21) + 16))
  {

    v19 = *v11;
    v20 = v11[1];
    goto LABEL_8;
  }

  v62 = v7;
  *(v1 + qword_1EE1E9D48) = v18;

  v22 = *(v18 + v21);
  v23 = qword_1EE1E9DF8;
  *(v1 + qword_1EE1E9DF8) = v22;

  v24 = OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shelfMapping;
  swift_beginAccess();
  v61 = v24;
  v25 = *(v18 + v24);
  v26 = qword_1EE2166A0;
  swift_beginAccess();
  *(v1 + v26) = v25;

  v66 = *(v18 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_isIncomplete);
  if ((v66 & 1) == 0)
  {
    v27 = *(v1 + qword_1EE1E9E90);
    if (v27)
    {
      v28 = v18;
      v29 = *(v27 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v30 = *(v29 + 48);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
LABEL_39:
        __break(1u);
        return;
      }

      *(v29 + 48) = v32;
      v33 = v32 == 0;
      swift_beginAccess();
      *(v29 + 40) = v33;
      swift_beginAccess();
      v18 = v28;
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    if (*(v1 + qword_1EE216690))
    {
      *v5 = 1;
      (*(v3 + 104))(v5, *MEMORY[0x1E69AB450], v2);
      sub_1E1AF509C();
      (*(v3 + 8))(v5, v2);
    }

    sub_1E134FD1C(v18 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_nextPage, &v70, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v73 = 0;
    v74 = 0;
    v34 = v18;
    v35 = qword_1EE216698;
    swift_beginAccess();
    sub_1E136197C(&v70, v1 + v35);
    swift_endAccess();
    v36 = v1 + v35;
    v18 = v34;
    sub_1E136073C(v36, v69);
    sub_1E1AF5BCC();
    sub_1E1360B10(v69);
    sub_1E1360B10(&v70);
  }

  v37 = *(v1 + qword_1EE2166C0);
  v38 = *(v1 + v23);
  v39 = MEMORY[0x1E69E7CC0];
  v69[0] = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  v65 = v18;

  if (!v40)
  {
    goto LABEL_30;
  }

  v41 = 0;
  v42 = v38 + 32;
  v59 = v40 - 1;
  v63 = v37;
  v60 = v38 + 32;
  do
  {
    v43 = v42 + 40 * v41;
    v44 = v41;
    while (1)
    {
      if (v44 >= *(v38 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      sub_1E134E724(v43, &v70);
      if (*(*(v1 + v26) + 16))
      {
        break;
      }

LABEL_22:
      ++v44;
      sub_1E134B88C(&v70);
      v43 += 40;
      if (v40 == v44)
      {
        goto LABEL_30;
      }
    }

    sub_1E135FCF4(&v70);
    if ((v45 & 1) == 0)
    {

      goto LABEL_22;
    }

    v46 = sub_1E134B88C(&v70);
    MEMORY[0x1E68FEF20](v46);
    if (*((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v41 = v44 + 1;
    sub_1E1AF62AC();
    v39 = v69[0];
    v42 = v60;
  }

  while (v59 != v44);
LABEL_30:

  v47 = v65;
  v70 = v65;
  v71 = v39;
  v48 = v66;
  v72 = v66;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v70, v71, v72);
  if (v48)
  {
    goto LABEL_35;
  }

  sub_1E1A15A94(v49, 0, v1);

  sub_1E1A07744(v47);
  if (*(v1 + qword_1EE1E9E90))
  {
    sub_1E1729254();
  }

  v50 = v62;
  if (!*(v1 + qword_1EE216690))
  {
LABEL_35:
  }

  else
  {
    v51 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v52 = sub_1E1AF3C3C();
    v53 = v47 + v51;
    v54 = v64;
    (*(*(v52 - 8) + 16))(v64, v53, v52);
    v55 = v67;
    (*(v50 + 104))(v54, *MEMORY[0x1E69AB440], v67);
    sub_1E1AF508C();

    (*(v50 + 8))(v54, v55);
  }

  v56 = *v11;
  v57 = v11[1];
  *v11 = 0;
  v11[1] = 0;
  sub_1E1300EA8(v56, v57);
}

void sub_1E1A03F04()
{
  v1 = v0;
  v2 = sub_1E1AF504C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF503C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + qword_1EE1E9EA0);
  v12 = *(v0 + qword_1EE1E9EA0);
  if (!v12)
  {
    v19 = 0;
LABEL_7:
    v20 = v11[1];
LABEL_8:
    *v11 = 0;
    v11[1] = 0;
    sub_1E1300EA8(v19, v20);
    return;
  }

  v67 = v8;
  v13 = v11[1];

  v15 = v12(v14);
  sub_1E1300EA8(v12, v13);
  v68 = v15;
  if (!v15)
  {
    v19 = *v11;
    goto LABEL_7;
  }

  v16 = *(v1 + qword_1EE1E9E08);
  v64 = v10;
  if (v16)
  {
    v17 = *(v1 + qword_1EE1E9E08 + 8);

    v18 = v16(v68);
    sub_1E1300EA8(v16, v17);
  }

  else
  {
    v18 = v68;
  }

  v21 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v18 + v21) + 16))
  {

    v19 = *v11;
    v20 = v11[1];
    goto LABEL_8;
  }

  v62 = v7;
  *(v1 + qword_1EE1E9D48) = v18;

  v22 = *(v18 + v21);
  v23 = qword_1EE1E9DF8;
  *(v1 + qword_1EE1E9DF8) = v22;

  v24 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();
  v61 = v24;
  v25 = *(v18 + v24);
  v26 = qword_1EE2166A0;
  swift_beginAccess();
  *(v1 + v26) = v25;

  v66 = *(v18 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete);
  if ((v66 & 1) == 0)
  {
    v27 = *(v1 + qword_1EE1E9E90);
    if (v27)
    {
      v28 = v18;
      v29 = *(v27 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v30 = *(v29 + 48);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
LABEL_39:
        __break(1u);
        return;
      }

      *(v29 + 48) = v32;
      v33 = v32 == 0;
      swift_beginAccess();
      *(v29 + 40) = v33;
      swift_beginAccess();
      v18 = v28;
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    if (*(v1 + qword_1EE216690))
    {
      *v5 = 1;
      (*(v3 + 104))(v5, *MEMORY[0x1E69AB450], v2);
      sub_1E1AF509C();
      (*(v3 + 8))(v5, v2);
    }

    sub_1E134FD1C(v18 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &v70, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v73 = 0;
    v74 = 0;
    v34 = v18;
    v35 = qword_1EE216698;
    swift_beginAccess();
    sub_1E136197C(&v70, v1 + v35);
    swift_endAccess();
    v36 = v1 + v35;
    v18 = v34;
    sub_1E136073C(v36, v69);
    sub_1E1AF5BCC();
    sub_1E1360B10(v69);
    sub_1E1360B10(&v70);
  }

  v37 = *(v1 + qword_1EE2166C0);
  v38 = *(v1 + v23);
  v39 = MEMORY[0x1E69E7CC0];
  v69[0] = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  v65 = v18;

  if (!v40)
  {
    goto LABEL_30;
  }

  v41 = 0;
  v42 = v38 + 32;
  v59 = v40 - 1;
  v63 = v37;
  v60 = v38 + 32;
  do
  {
    v43 = v42 + 40 * v41;
    v44 = v41;
    while (1)
    {
      if (v44 >= *(v38 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      sub_1E134E724(v43, &v70);
      if (*(*(v1 + v26) + 16))
      {
        break;
      }

LABEL_22:
      ++v44;
      sub_1E134B88C(&v70);
      v43 += 40;
      if (v40 == v44)
      {
        goto LABEL_30;
      }
    }

    sub_1E135FCF4(&v70);
    if ((v45 & 1) == 0)
    {

      goto LABEL_22;
    }

    v46 = sub_1E134B88C(&v70);
    MEMORY[0x1E68FEF20](v46);
    if (*((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v41 = v44 + 1;
    sub_1E1AF62AC();
    v39 = v69[0];
    v42 = v60;
  }

  while (v59 != v44);
LABEL_30:

  v47 = v65;
  v70 = v65;
  v71 = v39;
  v48 = v66;
  v72 = v66;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v70, v71, v72);
  if (v48)
  {
    goto LABEL_35;
  }

  sub_1E1A16868(v49, 0, v1);

  sub_1E1A07D6C(v47);
  if (*(v1 + qword_1EE1E9E90))
  {
    sub_1E1729254();
  }

  v50 = v62;
  if (!*(v1 + qword_1EE216690))
  {
LABEL_35:
  }

  else
  {
    v51 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v52 = sub_1E1AF3C3C();
    v53 = v47 + v51;
    v54 = v64;
    (*(*(v52 - 8) + 16))(v64, v53, v52);
    v55 = v67;
    (*(v50 + 104))(v54, *MEMORY[0x1E69AB440], v67);
    sub_1E1AF508C();

    (*(v50 + 8))(v54, v55);
  }

  v56 = *v11;
  v57 = v11[1];
  *v11 = 0;
  v11[1] = 0;
  sub_1E1300EA8(v56, v57);
}

void sub_1E1A046B4()
{
  v1 = v0;
  v2 = sub_1E1AF504C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF503C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + qword_1EE1E9EA0);
  v12 = *(v0 + qword_1EE1E9EA0);
  if (!v12)
  {
    v19 = 0;
LABEL_7:
    v20 = v11[1];
LABEL_37:
    *v11 = 0;
    v11[1] = 0;
    sub_1E1300EA8(v19, v20);
    return;
  }

  v79 = v8;
  v13 = v11[1];

  v15 = v12(v14);
  sub_1E1300EA8(v12, v13);
  if (!v15)
  {
    v19 = *v11;
    goto LABEL_7;
  }

  v76 = v2;
  v16 = *(v1 + qword_1EE1E9E08);
  v75 = v10;
  v80 = v15;
  v77 = v3;
  if (v16)
  {
    v17 = *(v1 + qword_1EE1E9E08 + 8);

    v18 = v16(v15);
    sub_1E1300EA8(v16, v17);
  }

  else
  {

    v18 = v15;
  }

  v21 = sub_1E1302C44(&qword_1ECEB7188, type metadata accessor for ShelfBasedProductPage, &protocol conformance descriptor for DynamicPage<A>);
  v22 = *(v21 + 56);
  v78 = type metadata accessor for ShelfBasedProductPage(0);
  v23 = v22(v78, v21);
  v24 = *(*v18 + 184);
  swift_beginAccess();
  if (!*(v23 + 16) || (v25 = sub_1E159549C(v18[v24]), (v26 & 1) == 0))
  {

LABEL_36:

    v19 = *v11;
    v20 = v11[1];
    goto LABEL_37;
  }

  v73 = v7;
  v27 = *(*(v23 + 56) + 8 * v25);

  v28 = *(v27 + 16);

  if (!v28)
  {

    goto LABEL_36;
  }

  *(v1 + qword_1EE1E9D48) = v18;

  v29 = v22(v78, v21);
  v30 = MEMORY[0x1E69E7CC0];
  if (*(v29 + 16))
  {
    v31 = sub_1E159549C(v18[v24]);
    if (v32)
    {
      v30 = *(*(v29 + 56) + 8 * v31);
    }
  }

  v33 = v77;

  v34 = qword_1EE1E9DF8;
  *(v1 + qword_1EE1E9DF8) = v30;

  v35 = off_1F5C38F58[0];
  off_1F5C38F58[0]();
  v37 = v36;
  v38 = qword_1EE2166A0;
  swift_beginAccess();
  *(v1 + v38) = v37;

  v74 = v18[*(*v18 + 200)];
  if ((v74 & 1) == 0)
  {
    v39 = *(v1 + qword_1EE1E9E90);
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v41 = *(v40 + 48);
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
LABEL_49:
        __break(1u);
        return;
      }

      *(v40 + 48) = v43;
      v44 = v43 == 0;
      swift_beginAccess();
      *(v40 + 40) = v44;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    if (*(v1 + qword_1EE216690))
    {
      *v5 = 1;
      v45 = v76;
      (*(v33 + 104))(v5, *MEMORY[0x1E69AB450], v76);
      sub_1E1AF509C();
      (*(v33 + 8))(v5, v45);
    }

    sub_1E134FD1C(&v18[*(*v18 + 192)], &v82, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v85 = 0;
    v86 = 0;
    v46 = qword_1EE216698;
    swift_beginAccess();
    sub_1E136197C(&v82, v1 + v46);
    swift_endAccess();
    sub_1E136073C(v1 + v46, v81);
    sub_1E1AF5BCC();
    sub_1E1360B10(v81);
    sub_1E1360B10(&v82);
  }

  v72 = v35;
  v47 = *(v1 + qword_1EE2166C0);
  v48 = *(v1 + v34);
  v49 = MEMORY[0x1E69E7CC0];
  v81[0] = MEMORY[0x1E69E7CC0];
  v50 = *(v48 + 16);

  if (!v50)
  {
    goto LABEL_39;
  }

  v51 = 0;
  v52 = v48 + 32;
  v70 = v50 - 1;
  v77 = v47;
  v71 = v48 + 32;
  do
  {
    v76 = v49;
    v53 = v52 + 40 * v51;
    v54 = v51;
    while (1)
    {
      if (v54 >= *(v48 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      sub_1E134E724(v53, &v82);
      v55 = *(v1 + v38);
      if (*(v55 + 16))
      {
        break;
      }

LABEL_26:
      ++v54;
      sub_1E134B88C(&v82);
      v53 += 40;
      if (v50 == v54)
      {
        v49 = v76;
        goto LABEL_39;
      }
    }

    v56 = sub_1E135FCF4(&v82);
    if ((v57 & 1) == 0)
    {

      goto LABEL_26;
    }

    v76 = *(*(v55 + 56) + 8 * v56);

    v58 = sub_1E134B88C(&v82);
    MEMORY[0x1E68FEF20](v58);
    if (*((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v51 = v54 + 1;
    sub_1E1AF62AC();
    v49 = v81[0];
    v52 = v71;
  }

  while (v70 != v54);
LABEL_39:

  v82 = v18;
  v83 = v49;
  v59 = v74;
  v84 = v74;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v82, v83, v84);
  if (v59)
  {
    goto LABEL_46;
  }

  v60 = (v72)(v78);
  sub_1E1A169FC(v60, 0, v1);

  sub_1E1A08394(v18);
  if (*(v1 + qword_1EE1E9E90))
  {
    sub_1E1729254();
  }

  v61 = v73;
  if (!*(v1 + qword_1EE216690))
  {
LABEL_46:
  }

  else
  {
    v62 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v63 = sub_1E1AF3C3C();
    v64 = &v18[v62];
    v65 = v75;
    (*(*(v63 - 8) + 16))(v75, v64, v63);
    v66 = v79;
    (*(v61 + 104))(v65, *MEMORY[0x1E69AB440], v79);
    sub_1E1AF508C();

    (*(v61 + 8))(v65, v66);
  }

  v67 = *v11;
  v68 = v11[1];
  *v11 = 0;
  v11[1] = 0;
  sub_1E1300EA8(v67, v68);
}

void sub_1E1A04FAC()
{
  v1 = v0;
  v2 = sub_1E1AF504C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF503C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + qword_1EE1E9EA0);
  v12 = *(v0 + qword_1EE1E9EA0);
  if (!v12)
  {
    v19 = 0;
LABEL_7:
    v20 = v11[1];
LABEL_8:
    *v11 = 0;
    v11[1] = 0;
    sub_1E1300EA8(v19, v20);
    return;
  }

  v67 = v8;
  v13 = v11[1];

  v15 = v12(v14);
  sub_1E1300EA8(v12, v13);
  v68 = v15;
  if (!v15)
  {
    v19 = *v11;
    goto LABEL_7;
  }

  v16 = *(v1 + qword_1EE1E9E08);
  v64 = v10;
  if (v16)
  {
    v17 = *(v1 + qword_1EE1E9E08 + 8);

    v18 = v16(v68);
    sub_1E1300EA8(v16, v17);
  }

  else
  {
    v18 = v68;
  }

  v21 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v18 + v21) + 16))
  {

    v19 = *v11;
    v20 = v11[1];
    goto LABEL_8;
  }

  v62 = v7;
  *(v1 + qword_1EE1E9D48) = v18;

  v22 = *(v18 + v21);
  v23 = qword_1EE1E9DF8;
  *(v1 + qword_1EE1E9DF8) = v22;

  v24 = OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();
  v61 = v24;
  v25 = *(v18 + v24);
  v26 = qword_1EE2166A0;
  swift_beginAccess();
  *(v1 + v26) = v25;

  v66 = *(v18 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_isIncomplete);
  if ((v66 & 1) == 0)
  {
    v27 = *(v1 + qword_1EE1E9E90);
    if (v27)
    {
      v28 = v18;
      v29 = *(v27 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v30 = *(v29 + 48);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
LABEL_39:
        __break(1u);
        return;
      }

      *(v29 + 48) = v32;
      v33 = v32 == 0;
      swift_beginAccess();
      *(v29 + 40) = v33;
      swift_beginAccess();
      v18 = v28;
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }

    if (*(v1 + qword_1EE216690))
    {
      *v5 = 1;
      (*(v3 + 104))(v5, *MEMORY[0x1E69AB450], v2);
      sub_1E1AF509C();
      (*(v3 + 8))(v5, v2);
    }

    sub_1E134FD1C(v18 + OBJC_IVAR____TtC11AppStoreKit15TopChartSegment_nextPage, &v70, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v73 = 0;
    v74 = 0;
    v34 = v18;
    v35 = qword_1EE216698;
    swift_beginAccess();
    sub_1E136197C(&v70, v1 + v35);
    swift_endAccess();
    v36 = v1 + v35;
    v18 = v34;
    sub_1E136073C(v36, v69);
    sub_1E1AF5BCC();
    sub_1E1360B10(v69);
    sub_1E1360B10(&v70);
  }

  v37 = *(v1 + qword_1EE2166C0);
  v38 = *(v1 + v23);
  v39 = MEMORY[0x1E69E7CC0];
  v69[0] = MEMORY[0x1E69E7CC0];
  v40 = *(v38 + 16);
  v65 = v18;

  if (!v40)
  {
    goto LABEL_30;
  }

  v41 = 0;
  v42 = v38 + 32;
  v59 = v40 - 1;
  v63 = v37;
  v60 = v38 + 32;
  do
  {
    v43 = v42 + 40 * v41;
    v44 = v41;
    while (1)
    {
      if (v44 >= *(v38 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      sub_1E134E724(v43, &v70);
      if (*(*(v1 + v26) + 16))
      {
        break;
      }

LABEL_22:
      ++v44;
      sub_1E134B88C(&v70);
      v43 += 40;
      if (v40 == v44)
      {
        goto LABEL_30;
      }
    }

    sub_1E135FCF4(&v70);
    if ((v45 & 1) == 0)
    {

      goto LABEL_22;
    }

    v46 = sub_1E134B88C(&v70);
    MEMORY[0x1E68FEF20](v46);
    if (*((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v41 = v44 + 1;
    sub_1E1AF62AC();
    v39 = v69[0];
    v42 = v60;
  }

  while (v59 != v44);
LABEL_30:

  v47 = v65;
  v70 = v65;
  v71 = v39;
  v48 = v66;
  v72 = v66;
  sub_1E1AF5BCC();
  sub_1E1A1DDBC(v70, v71, v72);
  if (v48)
  {
    goto LABEL_35;
  }

  sub_1E1A16F18(v49, 0, v1);

  sub_1E1A091D4(v47);
  if (*(v1 + qword_1EE1E9E90))
  {
    sub_1E1729254();
  }

  v50 = v62;
  if (!*(v1 + qword_1EE216690))
  {
LABEL_35:
  }

  else
  {
    v51 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v52 = sub_1E1AF3C3C();
    v53 = v47 + v51;
    v54 = v64;
    (*(*(v52 - 8) + 16))(v64, v53, v52);
    v55 = v67;
    (*(v50 + 104))(v54, *MEMORY[0x1E69AB440], v67);
    sub_1E1AF508C();

    (*(v50 + 8))(v54, v55);
  }

  v56 = *v11;
  v57 = v11[1];
  *v11 = 0;
  v11[1] = 0;
  sub_1E1300EA8(v56, v57);
}