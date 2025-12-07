void FlowAction.presentationContext.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void FlowAction.presentationContext.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void FlowAction.animationBehavior.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void FlowAction.animationBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void FlowAction.origin.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void FlowAction.origin.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t FlowAction.presentation.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double FlowAction.presentation.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double FlowAction.appStateController.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double FlowAction.appStateController.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_1E1A52A34()
{
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);

  sub_1E13DED78(*(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData), *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 40));

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData, &qword_1ECEBCFB8, &qword_1E1B4E4D8);

  swift_unknownObjectRelease();
  return result;
}

uint64_t FlowAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);

  sub_1E13DED78(*(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData), *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 32), *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 40));

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData, &qword_1ECEBCFB8, &qword_1E1B4E4D8);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FlowAction.__deallocating_deinit()
{
  FlowAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A52CF0()
{
  v1 = (*v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

char *sub_1E1A52D54(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v26 = sub_1E1AF39DC();
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v25 = &v25 - v6;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v28 = v9;
  v16 = *(v9 + 16);
  v16(&v25 - v14, a1, v8, v13);
  v30 = v3;
  v17 = *(v3 + 16);
  v18 = v7;
  v19 = v26;
  v17(v18, v29, v26);
  type metadata accessor for GameCenterDashboardAction(0);
  swift_allocObject();
  v29 = v8;
  (v16)(v11, v15, v8);
  v20 = v19;
  v21 = v25;
  v22 = v27;
  v17(v27, v25, v20);
  v23 = Action.init(deserializing:using:)(v11, v22);
  (*(v30 + 8))(v21, v20);
  (*(v28 + 8))(v15, v29);
  return v23;
}

uint64_t sub_1E1A52FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF380C();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  return Annotation.init(deserializing:using:)(v13, v9, a3);
}

unint64_t sub_1E1A5317C()
{
  result = qword_1EE1E46F8;
  if (!qword_1EE1E46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E46F8);
  }

  return result;
}

unint64_t sub_1E1A531D0()
{
  result = qword_1EE1EBEB0;
  if (!qword_1EE1EBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EBEB0);
  }

  return result;
}

unint64_t sub_1E1A53224()
{
  result = qword_1EE1ED2F0;
  if (!qword_1EE1ED2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED2F0);
  }

  return result;
}

unint64_t sub_1E1A53278()
{
  result = qword_1EE1F8218[0];
  if (!qword_1EE1F8218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F8218);
  }

  return result;
}

unint64_t sub_1E1A532CC()
{
  result = qword_1EE1E3918;
  if (!qword_1EE1E3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3918);
  }

  return result;
}

uint64_t FlowAction.replacingPageData(_:)(uint64_t a1)
{
  v3 = sub_1E1AEFEAC();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF3E1C();
  v67 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - v10;
  sub_1E134E724(&v1[OBJC_IVAR____TtC11AppStoreKit6Action_id], v75);
  LODWORD(v60) = v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_page];
  v12 = *(v1 + 2);
  v59 = *(v1 + 3);
  v13 = *(v1 + 4);
  v57 = v12;
  v58 = v13;
  sub_1E134FD1C(&v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl], v11, &unk_1ECEB4B60, &unk_1E1B02620);
  v14 = *&v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl];
  v54 = *&v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl + 8];
  v55 = v14;
  v15 = *&v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData];
  v53 = *&v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 8];
  v16 = *&v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 16];
  v64 = *&v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 24];
  v65 = v16;
  v63 = *&v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 32];
  v62 = v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 40];
  sub_1E134FD1C(a1, v74, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v61 = v6;
  v52 = *(v6 + 16);
  v52(v8, &v1[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v5);
  v17 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext;
  swift_beginAccess();
  v51 = v1[v17];
  v18 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior;
  swift_beginAccess();
  LOBYTE(v18) = v1[v18];
  v19 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin;
  swift_beginAccess();
  LOBYTE(v8) = v1[v19];
  v56 = *(v1 + 5);
  v20 = &v1[OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation];
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = v60;
  v60 = v11;
  sub_1E134FD1C(v11, v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  v26 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
  v27 = v54;
  *v26 = v55;
  v26[1] = v27;
  v28 = v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
  v55 = v15;
  *v28 = v15;
  v29 = v53;
  v31 = v64;
  v30 = v65;
  *(v28 + 8) = v53;
  *(v28 + 16) = v30;
  v32 = v63;
  *(v28 + 24) = v31;
  *(v28 + 32) = v32;
  *(v28 + 40) = v62;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = v51;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = v18;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = v8;
  v33 = (v23 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  *v33 = v22;
  v33[1] = v21;
  sub_1E134FD1C(v75, v73, &unk_1ECEB5670, qword_1E1B03EC0);
  v52((v23 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics), v66, v67);
  v34 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v35 = sub_1E1AF46DC();
  (*(*(v35 - 8) + 56))(v23 + v34, 1, 1, v35);
  v36 = (v23 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v36 = 0u;
  v36[1] = 0u;
  v37 = v23 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E134FD1C(v73, &v70, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v71 + 1))
  {
    v38 = v71;
    *v37 = v70;
    *(v37 + 16) = v38;
    *(v37 + 32) = v72;

    v39 = v59;

    v40 = v58;

    sub_1E13E2380(v55, v29, v65, v64, v63, v62);
  }

  else
  {

    v39 = v59;

    v40 = v58;

    sub_1E13E2380(v55, v29, v65, v64, v63, v62);

    v41 = v48;
    sub_1E1AEFE9C();
    v42 = sub_1E1AEFE7C();
    v44 = v43;
    (*(v49 + 8))(v41, v50);
    v68 = v42;
    v69 = v44;
    sub_1E1AF6F6C();
    sub_1E1308058(&v70, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v73, &unk_1ECEB5670, qword_1E1B03EC0);
  *&v45 = v57;
  *(&v45 + 1) = v39;
  *&v46 = v40;
  *(&v46 + 1) = v56;
  *(v23 + 16) = v45;
  *(v23 + 32) = v46;

  FlowAction.setPageData(_:)(v74);

  (*(v61 + 8))(v66, v67);
  sub_1E1308058(v74, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1308058(v60, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v75, &unk_1ECEB5670, qword_1E1B03EC0);
  return v23;
}

uint64_t Lazy.anyWrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_1E1AF6D9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  sub_1E1AF53AC();
  v8 = *(v3 - 8);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    result = (*(v5 + 8))(v7, v4);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    return (*(v8 + 32))(boxed_opaque_existential_0, v7, v3);
  }

  return result;
}

unint64_t sub_1E1A53B74()
{
  result = qword_1ECEBCFD0;
  if (!qword_1ECEBCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCFD0);
  }

  return result;
}

unint64_t sub_1E1A53BCC()
{
  result = qword_1ECEBCFD8;
  if (!qword_1ECEBCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCFD8);
  }

  return result;
}

unint64_t sub_1E1A53C24()
{
  result = qword_1ECEBCFE0;
  if (!qword_1ECEBCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCFE0);
  }

  return result;
}

unint64_t sub_1E1A53C7C()
{
  result = qword_1ECEBCFE8;
  if (!qword_1ECEBCFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCFE8);
  }

  return result;
}

uint64_t type metadata accessor for FlowAction(uint64_t a1)
{
  result = qword_1EE1F8388;
  if (!qword_1EE1F8388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowPage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCA)
  {
    goto LABEL_17;
  }

  if (a2 + 54 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 54) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 54;
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

      return (*a1 | (v4 << 8)) - 54;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 54;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x37;
  v8 = v6 - 55;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowPage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 54 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 54) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCA)
  {
    v4 = 0;
  }

  if (a2 > 0xC9)
  {
    v5 = ((a2 - 202) >> 8) + 1;
    *result = a2 + 54;
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
    *result = a2 + 54;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1E1A53EF0(uint64_t a1)
{
  sub_1E130072C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1A54088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  result = sub_1E14A9B88(v14, v10);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1A5420C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1E1AF380C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E1AF39DC() - 8);
  return sub_1E1A54088(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_1E1A54330(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = *(sub_1E1AF380C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1E1AF39DC() - 8);
  return a3(v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a1, a2);
}

char *sub_1E1A5447C@<X0>(char **a1@<X8>)
{
  v4 = *(sub_1E1AF380C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1E1AF39DC() - 8);
  result = sub_1E1A52D54(v1 + v5, v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80)));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E1A545F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1E1AF380C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E1AF39DC() - 8);
  return sub_1E1A52FCC(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_1E1A546C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a5)(char *, char *)@<X4>, uint64_t *a6@<X8>)
{
  v22 = a5;
  v21 = a6;
  v10 = sub_1E1AF39DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF380C();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, v15);
  (*(v11 + 16))(v13, a2, v10);
  a3(0);
  swift_allocObject();
  result = v22(v17, v13);
  if (!v6)
  {
    *v21 = result;
  }

  return result;
}

uint64_t sub_1E1A5488C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, double)@<X2>, uint64_t (*a4)(char *, char *)@<X3>, uint64_t a5@<X8>)
{
  v20 = a4;
  v19[0] = a5;
  v8 = sub_1E1AF39DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v14);
  (*(v13 + 16))(v16, a1, v12);
  (*(v9 + 16))(v11, a2, v8);
  v17 = v19[1];
  result = v20(v16, v11);
  if (!v17)
  {
    *v19[0] = result;
  }

  return result;
}

uint64_t sub_1E1A54BD8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a3)(char *, char *)@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(sub_1E1AF380C() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1E1AF39DC() - 8);
  return sub_1E1A546C8(v4 + v9, v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), a1, a3, a4);
}

uint64_t sub_1E1A54D14@<X0>(uint64_t *a1@<X8>)
{
  sub_1E1AF380C();
  result = sub_1E1AF37CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1E1A54F2C@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_1E1A55198@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB40B8, &qword_1E1B0BBC0);
  result = sub_1E1AF5A1C();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E1A55214@<X0>(uint64_t *a1@<X8>)
{
  sub_1E1AF5A6C();
  sub_1E1AF39DC();
  return sub_1E1A55198(a1);
}

uint64_t sub_1E1A552E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  (*(v8 + 16))(v10, a2, v7);
  type metadata accessor for Artwork(0);
  sub_1E1A55828(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  result = sub_1E1AF62EC();
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1A554B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(char *, char *)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v10 = sub_1E1AF39DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF380C();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, v15);
  (*(v11 + 16))(v13, a2, v10);
  a3(0);
  swift_allocObject();
  result = a4(v17, v13);
  if (!v5)
  {
    *v21 = result;
  }

  return result;
}

uint64_t objectdestroy_28Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E1A55828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E1A558B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1E1AF00EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TitledButtonStack.__allocating_init(id:buttons:compactLineBreaks:regularLineBreaks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_1E138853C(a1, &v23);
  if (*(&v24 + 1))
  {
    v26 = v23;
    v27 = v24;
    v28 = v25;
  }

  else
  {
    sub_1E1AEFE9C();
    v13 = sub_1E1AEFE7C();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v22[1] = v13;
    v22[2] = v15;
    sub_1E1AF6F6C();
    sub_1E1308058(&v23, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v16 = v12 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_id;
  v17 = v27;
  *v16 = v26;
  *(v16 + 16) = v17;
  *(v16 + 32) = v28;
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v12 + 16) = a2;
  v18 = OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_compactLineBreaks;
  v19 = sub_1E1AF00EC();
  v20 = *(*(v19 - 8) + 32);
  v20(v12 + v18, a3, v19);
  v20(v12 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_regularLineBreaks, a4, v19);
  return v12;
}

uint64_t TitledButtonStack.init(id:buttons:compactLineBreaks:regularLineBreaks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v24);
  if (*(&v25 + 1))
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v23[1] = v14;
    v23[2] = v16;
    sub_1E1AF6F6C();
    sub_1E1308058(&v24, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v17 = v5 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_id;
  v18 = v28;
  *v17 = v27;
  *(v17 + 16) = v18;
  *(v17 + 32) = v29;
  *(v5 + 16) = a2;
  v19 = OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_compactLineBreaks;
  v20 = sub_1E1AF00EC();
  v21 = *(*(v20 - 8) + 32);
  v21(v5 + v19, a3, v20);
  v21(v5 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_regularLineBreaks, a4, v20);
  return v5;
}

uint64_t TitledButtonStack.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TitledButtonStack.init(deserializing:using:)(a1, a2);
  return v4;
}

unint64_t *TitledButtonStack.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v98 = a2;
  v5 = *v3;
  v92 = v3;
  v89 = v5;
  v83 = sub_1E1AF00EC();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v93 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v75 - v8;
  v97 = sub_1E1AF39DC();
  v91 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v86 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v81 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v75 - v15;
  v96 = sub_1E1AF5A6C();
  v16 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v85 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v75 - v19;
  v95 = sub_1E1AEFEAC();
  v20 = *(v95 - 1);
  MEMORY[0x1EEE9AC00](v95);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E1AF380C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v78 = &v75 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v75 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v75 - v32;
  sub_1E1AF381C();
  v34 = sub_1E1AF37CC();
  v104 = a1;
  if (v35)
  {
    v99 = v34;
    v100 = v35;
    sub_1E1AF6F6C();
    v36 = *(v24 + 8);
    v37 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v33, v23);
    v38 = v92;
  }

  else
  {
    sub_1E1AEFE9C();
    v39 = sub_1E1AEFE7C();
    v41 = v40;
    (*(v20 + 8))(v22, v95);
    v99 = v39;
    v100 = v41;
    v38 = v92;
    sub_1E1AF6F6C();
    v36 = *(v24 + 8);
    v37 = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v33, v23);
  }

  v42 = v38 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_id;
  v43 = v102;
  *v42 = v101;
  *(v42 + 16) = v43;
  *(v42 + 32) = v103;
  sub_1E1AF381C();
  v44 = v90;
  sub_1E1AF374C();
  v94 = v37;
  v95 = v36;
  v36(v30, v23);
  v45 = *(v16 + 48);
  v46 = v96;
  if (v45(v44, 1, v96) == 1)
  {
    sub_1E1308058(v44, &qword_1ECEB1F90, &qword_1E1B00D30);
LABEL_8:
    v48 = sub_1E1AF5A7C();
    sub_1E1A56B44(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v49 = 0x736E6F74747562;
    v49[1] = 0xE700000000000000;
    v49[2] = v89;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x1E69AB690], v48);
    swift_willThrow();
    (*(v91 + 8))(v98, v97);
    v95(v104, v23);
LABEL_9:
    sub_1E134B88C(v42);
    swift_deallocPartialClassInstance();
    return v38;
  }

  v47 = v88;
  (*(v16 + 32))(v88, v44, v46);
  if (sub_1E1AF5A3C())
  {
    (*(v16 + 8))(v47, v46);
    goto LABEL_8;
  }

  v76 = v45;
  v90 = v23;
  (*(v16 + 16))(v85, v47, v46);
  v51 = v91;
  (*(v91 + 16))(v86, v98, v97);
  v77 = type metadata accessor for TitledButton();
  sub_1E1A56B44(qword_1EE1E0330, type metadata accessor for TitledButton, &protocol conformance descriptor for TitledButton);
  v52 = v87;
  v53 = sub_1E1AF62FC();
  if (v52)
  {
    (*(v51 + 8))(v98, v97);
    v95(v104, v90);
    (*(v16 + 8))(v47, v46);
    goto LABEL_9;
  }

  v89 = v53;
  v86 = 0;
  v87 = v16;
  v54 = v78;
  sub_1E1AF381C();
  v55 = v79;
  sub_1E1AF374C();
  v56 = v90;
  v95(v54, v90);
  if (v76(v55, 1, v46) == 1)
  {
    sub_1E1308058(v55, &qword_1ECEB1F90, &qword_1E1B00D30);
    v57 = v88;
  }

  else
  {
    v58 = sub_1E1AF5A0C();
    (*(v87 + 8))(v55, v46);
    v57 = v88;
    if (v58)
    {
      goto LABEL_17;
    }
  }

  v58 = MEMORY[0x1E69E7CC0];
LABEL_17:
  sub_1E1AF00DC();
  v59 = *(v58 + 16);
  v91 = v89 >> 62;
  if (v59)
  {
    if (v91)
    {
      v60 = sub_1E1AF71CC();
    }

    else
    {
      v60 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = (v58 + 32);
    do
    {
      v62 = *v61++;
      if (v62 < v60)
      {
        sub_1E1AF00AC();
      }

      --v59;
    }

    while (v59);
  }

  v63 = v80;
  v64 = v104;
  sub_1E1AF381C();
  v65 = v81;
  sub_1E1AF374C();
  v95(v63, v56);
  v66 = v96;
  if (v76(v65, 1, v96) == 1)
  {
    sub_1E1308058(v65, &qword_1ECEB1F90, &qword_1E1B00D30);
    v67 = v97;
LABEL_27:

    v68 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v68 = sub_1E1AF5A0C();
  (*(v87 + 8))(v65, v66);
  v67 = v97;
  if (!v68)
  {
    goto LABEL_27;
  }

LABEL_28:
  sub_1E1AF00DC();
  v69 = *(v68 + 16);
  if (v69)
  {
    if (v91)
    {
      v70 = sub_1E1AF71CC();
    }

    else
    {
      v70 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v71 = (v68 + 32);
    do
    {
      v72 = *v71++;
      if (v72 < v70)
      {
        sub_1E1AF00AC();
      }

      --v69;
    }

    while (v69);
  }

  (*(v51 + 8))(v98, v67);
  v95(v64, v90);
  (*(v87 + 8))(v57, v96);
  v38 = v92;
  v92[2] = v89;
  v73 = *(v82 + 32);
  v74 = v83;
  v73(v38 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_compactLineBreaks, v84, v83);
  v73(v38 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_regularLineBreaks, v93, v74);
  return v38;
}

uint64_t TitledButtonStack.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_compactLineBreaks;
  v2 = sub_1E1AF00EC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_regularLineBreaks, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_id);
  return v0;
}

uint64_t TitledButtonStack.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_compactLineBreaks;
  v2 = sub_1E1AF00EC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_regularLineBreaks, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit17TitledButtonStack_id);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A56B44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TitledButtonStack(uint64_t a1)
{
  result = qword_1EE1F0708;
  if (!qword_1EE1F0708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *sub_1E1A56BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TitledButtonStack.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E1A56C60(uint64_t a1)
{
  result = sub_1E1AF00EC();
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

AppStoreKit::AdPlacementType_optional __swiftcall AdPlacementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdPlacementType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x614C686372616573;
  v3 = 0x7961646F74;
  v4 = 0x50746375646F7270;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6552686372616573;
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

unint64_t sub_1E1A56E8C()
{
  result = qword_1EE1DFB28;
  if (!qword_1EE1DFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFB28);
  }

  return result;
}

uint64_t sub_1E1A56EE0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1A56FE8(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1A570DC(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1A571EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E69646ELL;
  v4 = 0x614C686372616573;
  v5 = 0xE500000000000000;
  v6 = 0x7961646F74;
  v7 = 0xEF4C414D59656761;
  v8 = 0x50746375646F7270;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001DLL;
    v7 = 0x80000001E1B55C90;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6552686372616573;
    v3 = 0xED000073746C7573;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1E1A572C0(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  sub_1E134FD1C(a1, &v19, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v20 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v13 = sub_1E1AEFE7C();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v18[1] = v13;
    v18[2] = v15;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(&v19, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v16 = v23;
  *(v4 + 24) = v22;
  *(v4 + 40) = v16;
  *(v4 + 56) = v24;
  sub_1E134B7C8(a3, v4 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);
  *(v4 + 16) = v12;
  return v4;
}

uint64_t ProductRatingsAndReviewsComponent.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t ProductRatingsAndReviewsComponent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v5 = sub_1E1AF39DC();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v39 - v8;
  v9 = sub_1E1AEFEAC();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = a1;
  sub_1E1AF381C();
  v22 = sub_1E1AF37CC();
  if (v23)
  {
    v48 = v22;
    v49 = v23;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
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

  sub_1E1AF6F6C();
  v30 = *(v13 + 8);
  v30(v20, v12);
  v31 = v51;
  *(v3 + 24) = v50;
  *(v3 + 40) = v31;
  *(v3 + 56) = v52;
  sub_1E1AF381C();
  sub_1E1677A34();
  v32 = v45;
  sub_1E1AF36AC();
  if (v32)
  {
    (*(v46 + 8))(v53, v47);
    v30(v21, v12);
    v30(v17, v12);
    sub_1E134B88C(v3 + 24);
    type metadata accessor for ProductRatingsAndReviewsComponent(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v13 + 8;
    v30(v17, v12);
    *(v3 + 16) = v50;
    sub_1E1AF46DC();
    v40 = v21;
    sub_1E1AF381C();
    v39 = v12;
    v33 = v46;
    v34 = *(v46 + 16);
    v35 = v53;
    v45 = 0;
    v36 = v47;
    v34(v43, v53, v47);
    v37 = v44;
    sub_1E1AF464C();
    (*(v33 + 8))(v35, v36);
    v30(v40, v39);
    sub_1E134B7C8(v37, v3 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);
  }

  return v3;
}

uint64_t type metadata accessor for ProductRatingsAndReviewsComponent(uint64_t a1)
{
  result = qword_1EE1E77B0;
  if (!qword_1EE1E77B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

AppStoreKit::ProductRatingsAndReviewsComponentType_optional __swiftcall ProductRatingsAndReviewsComponentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

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

double sub_1E1A57B88(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

void sub_1E1A57CCC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x7461526F54706174;
  v4 = 0x80000001E1B57B20;
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
    v8 = 0x80000001E1B57AF0;
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

uint64_t ProductRatingsAndReviewsComponent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductRatingsAndReviewsComponent.init(deserializing:using:)(a1, a2);
  return v4;
}

void (*static ProductRatingsAndReviewsComponent.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_1E1AF381C();
  sub_1E1677A34();
  sub_1E1AF36AC();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
  v11[0] = v11[1];
  return sub_1E1A58490(v11, a1, a2);
}

uint64_t static ProductRatingsAndReviewsComponent.tryToMakeInstances(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_1E1AF5A6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E134FD1C(a1, v6, &qword_1ECEB1F90, &qword_1E1B00D30);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &qword_1ECEB1F90, &qword_1E1B00D30);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_1E1AF5A3C();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  MEMORY[0x1EEE9AC00](v11);
  *&v14[-16] = a2;
  type metadata accessor for ProductRatingsAndReviewsComponent(0);
  v13 = sub_1E1AF59FC();
  (*(v8 + 8))(v10, v7);
  return v13;
}

void (*sub_1E1A581B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_1E1AF381C();
  sub_1E1677A34();
  sub_1E1AF36AC();
  if (v3)
  {

    (*(v8 + 8))(v10, v7);
    result = 0;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v13[0] = v13[1];
    result = sub_1E1A58490(v13, a1, a2);
  }

  *a3 = result;
  return result;
}

uint64_t ProductRatingsAndReviewsComponent.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A58418@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void (*sub_1E1A58490(_BYTE *a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  v67 = a3;
  v63 = a1;
  v64 = a2;
  v3 = sub_1E1AF39DC();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v58 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = sub_1E1AF380C();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v58 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v58 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v58 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v58 - v34;
  v41 = MEMORY[0x1EEE9AC00](v36);
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
      return sub_1E15FC384(v26, v54);
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

unint64_t sub_1E1A58A48()
{
  result = qword_1ECEBD0E8;
  if (!qword_1ECEBD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBD0E8);
  }

  return result;
}

unint64_t sub_1E1A58AA0()
{
  result = qword_1EE1E77C0[0];
  if (!qword_1EE1E77C0[0])
  {
    type metadata accessor for ProductRatingsAndReviewsComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1E77C0);
  }

  return result;
}

void sub_1E1A58B10(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1A58BF4()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE1E20B0);
  __swift_project_value_buffer(v4, qword_1EE1E20B0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

double sub_1E1A58D98(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_1E1A58E04(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E16C3A20;
}

double sub_1E1A58EB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1E1A58F1C()
{
  swift_beginAccess();

  return result;
}

double sub_1E1A58F64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

_BYTE *PurchaseHistoryAppStateDataSource.__allocating_init(asPartOf:)(_BYTE *a1)
{
  v2 = sub_1E1AF68DC();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = sub_1E1AF68AC();
  v7 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5650, &qword_1E1B4EFA0);
  sub_1E1AF413C();
  v9 = v71;
  if (!v71)
  {
    v68 = 0;
    goto LABEL_26;
  }

  v67 = v7;
  if (v71 >> 62)
  {
LABEL_23:
    v10 = sub_1E1AF71CC();
    if (v10)
    {
LABEL_4:
      v11 = 0;
      v68 = MEMORY[0x1E69E7CC0];
      do
      {
        v12 = v11;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1E68FFD80](v12, v9);
          }

          else
          {
            if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v13 = *(v9 + 8 * v12 + 32);
          }

          v14 = v13;
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v15 = [v13 iTunesDSID];
          if (v15)
          {
            break;
          }

          ++v12;
          if (v11 == v10)
          {
            goto LABEL_25;
          }
        }

        v61 = v6;
        v16 = v15;
        v17 = [v15 longLongValue];

        v18 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1E172F994(0, *(v18 + 2) + 1, 1, v18);
        }

        v20 = *(v18 + 2);
        v19 = *(v18 + 3);
        v68 = v18;
        if (v20 >= v19 >> 1)
        {
          v68 = sub_1E172F994((v19 > 1), v20 + 1, 1, v68);
        }

        v21 = v68;
        *(v68 + 2) = v20 + 1;
        *&v21[8 * v20 + 32] = v17;
        v6 = v61;
      }

      while (v11 != v10);
      goto LABEL_25;
    }
  }

  else
  {
    v10 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v7 = v67;
LABEL_26:
  type metadata accessor for ASDPurchaseHistoryContext(0);
  sub_1E1AF413C();
  v22 = v71;
  if (v72)
  {
    v22 = 0;
  }

  v60 = v22;
  sub_1E1AF413C();
  v23 = v71;
  if (v72)
  {
    v23 = 0;
  }

  v59 = v23;
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF413C();
  v57 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5648, &unk_1E1B16980);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v58 = type metadata accessor for PurchaseHistoryAppStateDataSource();
  v24 = objc_allocWithZone(v58);
  *&v24[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v56 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_accessQueue;
  v67 = sub_1E1361A80();
  v53 = "nent";
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80, &unk_1E1B26740);
  v54 = *(v7 + 72);
  v61 = a1;
  v25 = swift_allocObject();
  v52 = xmmword_1E1B02CC0;
  *(v25 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v70 = v25;
  v50 = sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  v51 = sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  v48 = *MEMORY[0x1E69E8090];
  v26 = v64;
  v65 = *(v65 + 104);
  v27 = v66;
  (v65)(v64);
  *&v24[v56] = sub_1E1AF692C();
  v56 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_callbackQueue;
  v53 = "ppStateDataSource.accessQueue";
  v28 = swift_allocObject();
  *(v28 + 16) = v52;
  v29 = v57;
  sub_1E1AF689C();
  v70 = v28;
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (v65)(v26, v48, v27);
  *&v24[v56] = sub_1E1AF692C();
  *&v24[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates] = MEMORY[0x1E69E7CC8];
  v30 = &v24[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId];
  *v30 = 0;
  v30[8] = 1;
  v31 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers;
  *&v24[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers] = 0;
  v32 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_hasRequestedPurchaseHistoryUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6918, &qword_1E1B1CED0);
  swift_allocObject();
  *&v24[v32] = sub_1E14C51E8(0);
  v33 = &v24[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_hostBundleId];
  *v33 = 0;
  *(v33 + 1) = 0;
  sub_1E1300B24(&v71, &v24[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory]);
  *&v24[v31] = v68;

  v34 = v59;
  *&v24[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_initialPurchaseHistoryContext] = v60;
  *&v24[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext] = v34;
  *&v24[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_bag] = v29;
  v69.receiver = v24;
  v69.super_class = v58;

  v35 = objc_msgSendSuper2(&v69, sel_init);
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 defaultCenter];
  v39 = v73;
  v40 = v74;
  __swift_project_boxed_opaque_existential_1Tm(&v71, v73);
  v41 = (*(v40 + 72))(v39, v40);
  [v38 addObserver:v37 selector:sel_purchaseHistoryUpdated_ name:v41 object:0];

  v42 = [v36 defaultCenter];
  sub_1E1AF59DC();
  v43 = v37;
  v44 = sub_1E1AF59BC();
  [v42 addObserver:v43 selector:sel_accountsDidChange name:v44 object:sub_1E1AF59CC()];

  v45 = [v36 defaultCenter];
  if (qword_1EE1ED2E0 != -1)
  {
    swift_once();
  }

  [v45 addObserver:v43 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_1(&v71);
  return v43;
}

void *PurchaseHistoryAppStateDataSource.__allocating_init(purchaseHistory:additionalFamilyMembers:initialPurchaseHistoryContext:purchaseHistoryContext:bag:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1E1A5D6AC(a1, a2, a3, a4, a5);

  return v12;
}

void *PurchaseHistoryAppStateDataSource.init(purchaseHistory:additionalFamilyMembers:initialPurchaseHistoryContext:purchaseHistoryContext:bag:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1E1A5D6AC(a1, a2, a3, a4, a5);

  return v5;
}

id PurchaseHistoryAppStateDataSource.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PurchaseHistoryAppStateDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1E1A59BD0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext) == 1)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = a1;
    v6[4] = a2;

    sub_1E1300E34(a1, a2);
    sub_1E1A5B0E4(sub_1E1A5DD50, v6);
  }

  else
  {
    sub_1E1A5B0E4(0, 0);
    v7 = (v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v8 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v9 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    __swift_project_boxed_opaque_existential_1Tm((v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v8);
    v17 = (*(v9 + 8))(v8, v9);
    v10 = v7[3];
    v11 = v7[4];
    __swift_project_boxed_opaque_existential_1Tm(v7, v10);
    v12 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a1;
    v14[4] = a2;
    v15 = *(v11 + 32);
    sub_1E1300E34(a1, a2);

    v15(v17, v12, sub_1E1A5DD44, v14, v10, v11);
  }

  return result;
}

void sub_1E1A59DE0(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = (Strong + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v7 = *(Strong + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v8 = *(Strong + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    v9 = Strong;
    __swift_project_boxed_opaque_existential_1Tm((Strong + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v7);
    v10 = (*(v8 + 8))(v7, v8);
    v11 = v6[4];
    v16 = v6[3];
    v17 = v10;
    __swift_project_boxed_opaque_existential_1Tm(v6, v16);
    v12 = *&v9[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a2;
    v14[4] = a3;
    v15 = *(v11 + 32);

    sub_1E1300E34(a2, a3);
    v15(v17, v12, sub_1E1A5E524, v14, v16, v11);
  }

  else if (a2)
  {
    memset(v18, 0, sizeof(v18));
    v19 = -1;
    a2(v18);
  }
}

double sub_1E1A59F98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v6;
  v8[6] = v5;

  sub_1E1A5B0E4(sub_1E1A5DD5C, v8);

  return result;
}

void sub_1E1A5A070(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    *&v11[0] = a4;
    *(&v11[0] + 1) = a5;
    sub_1E1A5B8B8(v11, a2, a3);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v12 = -1;
    a2(v11);
  }
}

double sub_1E1A5A11C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v4 = *(Strong + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v5 = *(Strong + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    v6 = Strong;
    __swift_project_boxed_opaque_existential_1Tm((Strong + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v4);
    v7 = (*(v5 + 8))(v4, v5);
    v8 = v3[3];
    v9 = v3[4];
    __swift_project_boxed_opaque_existential_1Tm(v3, v8);
    v10 = *&v6[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[3] = 0;
    v12[4] = 0;
    v12[2] = v11;
    v13 = *(v9 + 32);

    v13(v7, v10, sub_1E1A5E524, v12, v8, v9);
  }

  return result;
}

double sub_1E1A5A338(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70, &qword_1E1B1AE80);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27[-v2];
  sub_1E1AF59DC();
  sub_1E1AF59CC();
  MEMORY[0x1E68FE6D0]();

  v4 = sub_1E1AF594C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1E1308058(v3, &qword_1ECEBBA70, &qword_1E1B1AE80);
  }

  else
  {
    v6 = sub_1E1AF593C();
    (*(v5 + 8))(v3, v4);
    v7 = [v6 ams_DSID];

    if (v7)
    {
      v8 = [v7 longLongValue];

      v9 = 0;
      goto LABEL_6;
    }
  }

  v8 = 0;
  v9 = 1;
LABEL_6:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (v9)
    {
      return result;
    }

    goto LABEL_16;
  }

  v12 = *&Strong[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId];
  v13 = Strong[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId + 8];

  if (v9)
  {
    if (v13)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v8 == v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
LABEL_16:
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = (v15 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
      v17 = *(v15 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
      v18 = *(v15 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
      v19 = v15;
      __swift_project_boxed_opaque_existential_1Tm((v15 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v17);
      v20 = (*(v18 + 8))(v17, v18);
      v21 = v16[3];
      v22 = v16[4];
      __swift_project_boxed_opaque_existential_1Tm(v16, v21);
      v23 = *&v19[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      v25[3] = 0;
      v25[4] = 0;
      v25[2] = v24;
      v26 = *(v22 + 32);

      v26(v20, v23, sub_1E1A5E524, v25, v21, v22);
    }
  }

  return result;
}

double sub_1E1A5A6AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E1AF320C();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF324C();
  v6 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_accessQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = ObjectType;
  aBlock[4] = sub_1E1A5E384;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_49_1;
  v11 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v8, v5, v11);
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);

  return result;
}

double sub_1E1A5A9B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EE1ED2A8 != -1)
    {
      swift_once();
    }

    v4 = (qword_1EE1ED2B0 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
    swift_beginAccess();
    v5 = v4[1];
    v6 = &v3[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_hostBundleId];
    *v6 = *v4;
    *(v6 + 1) = v5;

    if (qword_1EE1E20A8 != -1)
    {
      swift_once();
    }

    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1EE1E20B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    v8 = &v3[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory];
    v9 = *&v3[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24];
    v10 = *&v3[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32];
    __swift_project_boxed_opaque_existential_1Tm(&v3[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory], v9);
    v11 = (*(v10 + 8))(v9, v10);
    v12 = *(v8 + 3);
    v13 = *(v8 + 4);
    __swift_project_boxed_opaque_existential_1Tm(v8, v12);
    v14 = *&v3[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[3] = 0;
    v16[4] = 0;
    v16[2] = v15;
    v17 = *(v13 + 32);

    v17(v11, v14, sub_1E1A5E524, v16, v12, v13);
  }

  return result;
}

void sub_1E1A5ADA8(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a3;
    v10[4] = a4;
    v18 = swift_allocObject();
    *(v18 + 16) = MEMORY[0x1E69E7CC0];
    v17 = a1;
    v12 = *&v8[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24];
    v11 = *&v8[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32];
    __swift_project_boxed_opaque_existential_1Tm(&v8[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory], v12);
    v13 = *(v11 + 80);

    sub_1E1300E34(a3, a4);
    v14 = v13(v12, v11);
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = 1;
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;
    *(v15 + 48) = v14 & 1;
    *(v15 + 56) = 0;
    *(v15 + 64) = sub_1E1A5E3F4;
    *(v15 + 72) = v10;
    v16 = v8;

    sub_1E1556C80(1, sub_1E1A5E520, v15);
  }

  else if (a3)
  {
    memset(v19, 0, sizeof(v19));
    v20 = -1;
    a3(v19);
  }
}

void sub_1E1A5AFB8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = &Strong[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 1);
        ObjectType = swift_getObjectType();
        (*(v8 + 16))(a1, ObjectType, v8);
        swift_unknownObjectRelease();
      }

      if (a3)
      {
        v11 = 0u;
        v12 = 0u;
        v10 = 0u;
        v13 = -1;
        a3(&v10);
      }

      return;
    }
  }

  if (a3)
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    v13 = -1;
    a3(&v10);
  }
}

void sub_1E1A5B0E4(void (*a1)(void), uint64_t a2)
{
  v27 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
  if (v27)
  {
    v5 = *(v27 + 16);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6910, &unk_1E1B1CEC0);
      v6 = 32;
      swift_allocObject();

      v7 = sub_1E14C5D90();
      v22 = (v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
      v23 = a1;
      v25 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext);
      v26 = v7;
      v24 = a2;
      v8 = a1;
      do
      {
        v28 = *(v27 + v6);
        v10 = v22[3];
        v9 = v22[4];
        __swift_project_boxed_opaque_existential_1Tm(v22, v10);
        v11 = swift_allocObject();
        v11[2] = v26;
        v11[3] = v8;
        v11[4] = v24;
        v12 = *(v9 + 56);

        sub_1E1300E34(v8, v24);
        v12(v28, v25, sub_1E1A5E474, v11, v10, v9);

        v6 += 8;
        --v5;
      }

      while (v5);

      v13 = v22[3];
      v14 = v22[4];
      __swift_project_boxed_opaque_existential_1Tm(v22, v13);
      v15 = swift_allocObject();
      v15[2] = v26;
      v15[3] = v23;
      v15[4] = v24;
      v16 = *(v14 + 64);

      sub_1E1300E34(v23, v24);
      v16(v25, sub_1E1A5E528, v15, v13, v14);

LABEL_8:

      return;
    }
  }

  if (sub_1E1A5B5F0())
  {
    v17 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v18 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    __swift_project_boxed_opaque_existential_1Tm((v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v17);
    v19 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_initialPurchaseHistoryContext);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    v21 = *(v18 + 64);
    sub_1E1300E34(a1, a2);
    v21(v19, sub_1E16A03BC, v20, v17, v18);
    goto LABEL_8;
  }

  if (a1)
  {
    a1();
  }
}

uint64_t sub_1E1A5B3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E1AF320C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a3;
  v19 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF31FC();
  v20 = v11;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  v14 = sub_1E1A5E4C8;
  v15 = &v17;
  v16 = a2;
  sub_1E1AF68FC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E1A5B5F0()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_hasRequestedPurchaseHistoryUpdate);
  v10[4] = sub_1E130A710;
  v10[5] = 0;
  v10[6] = v5;
  v6 = sub_1E1AF690C();
  if (v11)
  {
    return 0;
  }

  v10[1] = v10;
  v12 = 1;
  MEMORY[0x1EEE9AC00](v6);
  v10[-2] = &v12;
  v10[0] = *(v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF31FC();
  v11 = v8;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  v9 = sub_1E1AF6EEC();
  MEMORY[0x1EEE9AC00](v9);
  v10[-4] = sub_1E1A5E360;
  v10[-3] = &v10[-4];
  v10[-2] = v5;
  sub_1E1AF68FC();
  (*(v2 + 8))(v4, v1);
  return v12;
}

void sub_1E1A5B8B8(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = *a1;
  v7 = a1[1];
  *&v23[0] = *a1;
  *(&v23[0] + 1) = v7;
  AdamId.numberValue.getter();
  if (v9)
  {
    v10 = v9;
    v22 = a2;
    v11 = [v9 longLongValue];

    v12 = (v4 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v13 = *(v4 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v14 = *(v4 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    __swift_project_boxed_opaque_existential_1Tm((v4 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v13);
    v21 = (*(v14 + 16))(v11, v13, v14);
    v15 = v12[3];
    v16 = v12[4];
    __swift_project_boxed_opaque_existential_1Tm(v12, v15);
    v17 = *(v4 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v22;
    v19[4] = a3;
    v19[5] = v8;
    v19[6] = v7;
    v20 = *(v16 + 32);

    v20(v21, v17, sub_1E1A5E02C, v19, v15, v16);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    v24 = -1;
    a2(v23);
  }
}

void sub_1E1A5BAB4(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60, &qword_1E1B02A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    *(inited + 32) = a5;
    *(inited + 40) = a6;

    v22 = sub_1E1498818(inited);
    swift_setDeallocating();
    sub_1E16C8A2C(inited + 32);
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v15 = swift_allocObject();
    *(v15 + 16) = MEMORY[0x1E69E7CC0];
    v16 = *&v12[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24];
    v17 = *&v12[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32];
    __swift_project_boxed_opaque_existential_1Tm(&v12[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory], v16);
    v18 = *(v17 + 80);

    v19 = v18(v16, v17);
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    *(v20 + 24) = 0;
    *(v20 + 32) = v15;
    *(v20 + 40) = a1;
    *(v20 + 48) = v19 & 1;
    *(v20 + 56) = v22;
    *(v20 + 64) = sub_1E1A5E03C;
    *(v20 + 72) = v14;
    v21 = v12;

    sub_1E1556C80(1, sub_1E1A5E084, v20);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    v24 = -1;
    a3(v23);
  }
}

void sub_1E1A5BCE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v203 = a7;
  v204 = a8;
  v199 = a6;
  v211 = a4;
  v217 = a1;
  v10 = sub_1E1AF320C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v207 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF324C();
  v206 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v205 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70, &qword_1E1B1AE80);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v179 - v16;
  sub_1E1AF59DC();
  sub_1E1AF59CC();
  MEMORY[0x1E68FE6D0]();

  v18 = sub_1E1AF594C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v208 = v13;
  if (v20 == 1)
  {
    sub_1E1308058(v17, &qword_1ECEBBA70, &qword_1E1B1AE80);
LABEL_15:
    v34 = v203;
    v33 = v204;
    if (a2)
    {
      v35 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
      v36 = v217;
      swift_beginAccess();
      swift_beginAccess();

      sub_1E1728CF0(v37);
      swift_endAccess();
      *(v36 + v35) = MEMORY[0x1E69E7CC8];

      v38 = v36 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId;
      *v38 = 0;
      *(v38 + 8) = 1;
    }

LABEL_142:
    v175 = swift_allocObject();
    v175[2] = v34;
    v175[3] = v33;
    v175[4] = a3;
    *&v235 = sub_1E1A5E088;
    *(&v235 + 1) = v175;
    *&v233 = MEMORY[0x1E69E9820];
    *(&v233 + 1) = 1107296256;
    *&v234 = sub_1E1302D64;
    *(&v234 + 1) = &block_descriptor_103;
    v176 = _Block_copy(&v233);

    v177 = v205;
    sub_1E1AF322C();
    *&v245 = MEMORY[0x1E69E7CC0];
    sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
    v178 = v207;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v177, v178, v176);
    _Block_release(v176);
    (*(v11 + 8))(v178, v10);
    (*(v206 + 8))(v177, v208);

    return;
  }

  v21 = sub_1E1AF593C();
  (*(v19 + 8))(v17, v18);
  v22 = [v21 ams_DSID];

  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = [v22 longLongValue];

  v24 = v217;
  v25 = v217 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId;
  if ((*(v217 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId + 8) & 1) != 0 || v23 != *v25) && (a2)
  {
    v26 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
    swift_beginAccess();
    swift_beginAccess();

    sub_1E1728CF0(v27);
    swift_endAccess();
    *(v217 + v26) = MEMORY[0x1E69E7CC8];
    v24 = v217;

    *v25 = v23;
    *(v25 + 8) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB25F8, &unk_1E1B2D430);
  v28 = swift_allocObject();
  v197 = xmmword_1E1B02CC0;
  *(v28 + 16) = xmmword_1E1B02CC0;
  *(v28 + 32) = v23;
  v29 = sub_1E1498980(v28);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v252 = v29;
  if (*(v24 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers))
  {
    v30 = *(v24 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v30 + 16);
  v212 = a3;
  v194 = v11;
  v195 = v10;
  if (v31)
  {

    v32 = 32;
    do
    {
      sub_1E1895B40(&v233, *(v30 + v32));
      v32 += 8;
      --v31;
    }

    while (v31);

    v29 = v252;
  }

  else
  {
  }

  v251 = MEMORY[0x1E69E7CD0];
  v39 = v29 + 56;
  v40 = 1 << *(v29 + 32);
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & *(v29 + 56);
  v43 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  v44 = (v40 + 63) >> 6;
  v198 = 0x80000001E1B6FA60;
  v196 = "ata sources, reason: ";

  v45 = 0;
  v209 = v29;
  v215 = v43;
  v46 = v211;
  while (1)
  {
    v47 = v45;
    if (!v42)
    {
      break;
    }

LABEL_26:
    if (*(v46 + 16) && (v48 = sub_1E15A47C8(*(*(v29 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v42)))))), (v49 & 1) != 0))
    {
      v50 = *(*(v46 + 56) + 8 * v48);

      if (v50 >> 62)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
LABEL_29:
        v51 = sub_1E1AF71CC();
        goto LABEL_32;
      }
    }

    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
    v42 &= v42 - 1;
    if (v51)
    {
      v202 = v50 & 0xC000000000000001;
      v200 = v51;
      swift_beginAccess();
      v52 = 0;
      v192 = v50 + 32;
      v193 = v50 & 0xFFFFFFFFFFFFFF8;
      v201 = v50;
      v191 = v44;
      while (1)
      {
        if (v202)
        {
          v53 = MEMORY[0x1E68FFD80](v52, v50);
        }

        else
        {
          if (v52 >= *(v193 + 16))
          {
            goto LABEL_146;
          }

          v53 = *(v192 + 8 * v52);
        }

        v54 = v53;
        v55 = __OFADD__(v52, 1);
        v56 = v52 + 1;
        if (v55)
        {
          goto LABEL_145;
        }

        v210 = v56;
        v57 = v39;
        v58 = v44;
        v59 = v29;
        *&v233 = [v53 storeItemID];
        v60 = sub_1E1AF742C();
        v62 = v61;

        v213 = v62;
        v214 = v60;
        sub_1E18943C0(&v233, v60, v62);

        if (qword_1EE1ED2A8 != -1)
        {
          swift_once();
        }

        v63 = (qword_1EE1ED2B0 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId);
        swift_beginAccess();
        v64 = v63[1];
        if (v64)
        {
          v29 = v59;
          v44 = v58;
          v65 = *v63 == 0xD000000000000016 && v64 == v198;
          v39 = v57;
          v66 = v65 ? 1 : sub_1E1AF74AC();
          v52 = v210;
        }

        else
        {
          v39 = v57;
          if (qword_1EE1ED2B8 != -1)
          {
            swift_once();
          }

          v67 = sub_1E1AF591C();
          __swift_project_value_buffer(v67, qword_1EE1ED2C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = v197;
          sub_1E1AF382C();
          sub_1E1AF548C();

          v66 = 0;
          v29 = v209;
          v52 = v210;
          v44 = v191;
        }

        v216 = v54;
        if (([v54 isHidden] & 1) == 0)
        {
          v68 = [v216 purchaserDSID];
          if (*(v29 + 16))
          {
            v69 = v68;
            v70 = sub_1E1AF761C();
            v71 = -1 << *(v29 + 32);
            v72 = v70 & ~v71;
            if ((*(v39 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
            {
              break;
            }
          }
        }

LABEL_62:
        if (*(*(v217 + v215) + 16))
        {

          sub_1E15A47D8();
          if ((v74 & 1) == 0)
          {

LABEL_70:

            goto LABEL_37;
          }

          swift_beginAccess();
          sub_1E1496C84(v249);
          v233 = v249[0];
          v234 = v249[1];
          v235 = v249[2];
          v236 = v250;
          swift_endAccess();
          sub_1E1308058(&v233, &unk_1ECEB7B50, &qword_1E1B16990);
          v75 = v212;
          swift_beginAccess();
          v76 = *(v75 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v75 + 16) = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = sub_1E172DC1C(0, *(v76 + 2) + 1, 1, v76);
            *(v212 + 16) = v76;
          }

          v79 = *(v76 + 2);
          v78 = *(v76 + 3);
          v29 = v209;
          if (v79 >= v78 >> 1)
          {
            v76 = sub_1E172DC1C((v78 > 1), v79 + 1, 1, v76);
          }

          *(v76 + 2) = v79 + 1;
          v80 = &v76[16 * v79];
          v81 = v213;
          *(v80 + 4) = v214;
          *(v80 + 5) = v81;
          *(v212 + 16) = v76;
          swift_endAccess();
        }

        else
        {
        }

LABEL_37:
        v46 = v211;
        v50 = v201;
        if (v52 == v200)
        {
          goto LABEL_33;
        }
      }

      v73 = ~v71;
      while (*(*(v29 + 48) + 8 * v72) != v69)
      {
        v72 = (v72 + 1) & v73;
        if (((*(v39 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      v82 = v216;
      if ([v216 isPreorder])
      {
        v83 = v185;
        v84 = v184 & 0x101 | 0x1000000000000000;
        *&v245 = 1;
        *&v248 = v84;
        *&v249[0] = 1;
        *&v250 = v84;
        v85 = v217;
LABEL_85:
        v184 = v84;
        v185 = v83;
        v253[0] = v245;
        v253[1] = v246;
        v253[2] = v247;
        v253[3] = v248;
        v105 = *(v85 + v215);
        if (*(v105 + 16))
        {

          v106 = sub_1E15A47D8();
          if (v107)
          {
            v108 = (*(v105 + 56) + (v106 << 6));
            v110 = v108[2];
            v109 = v108[3];
            v111 = v108[1];
            v233 = *v108;
            v234 = v111;
            v235 = v110;
            v236 = v109;
            v189 = *(&v233 + 1);
            v190 = v233;
            v187 = *(&v111 + 1);
            v188 = v111;
            v210 = *(&v110 + 1);
            v186 = v110;
            v112 = *(&v109 + 1);
            v113 = v109;
            sub_1E141CF5C(&v233, &v229);

            v114 = v112;
            v115 = v113;
            v116 = v187;
            v117 = v186;
            v119 = v188;
            v118 = v189;
            v120 = v190;
          }

          else
          {

            v120 = 0;
            v118 = 0;
            v119 = 0;
            v116 = 0;
            v117 = 0;
            v210 = 0;
            v114 = 0;
            v115 = 0x3FFFFFEFELL;
          }
        }

        else
        {
          v120 = 0;
          v118 = 0;
          v119 = 0;
          v116 = 0;
          v117 = 0;
          v210 = 0;
          v114 = 0;
          v115 = 0x3FFFFFEFELL;
        }

        v242 = v245;
        v243 = v246;
        v244 = v247;
        v121 = v248;
        if ((v115 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
        {
          if ((v248 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
          {
            v182 = *(&v248 + 1);
            v183 = v114;
            v186 = v117;
            v187 = v116;
            v188 = v119;
            v189 = v118;
            v190 = v120;
            sub_1E141CF5C(&v245, &v233);
            sub_1E141CF5C(&v245, &v233);
            sub_1E1308058(v249, &unk_1ECEB7B50, &qword_1E1B16990);
            goto LABEL_96;
          }

          *&v233 = v120;
          *(&v233 + 1) = v118;
          *&v234 = v119;
          *(&v234 + 1) = v116;
          *&v235 = v117;
          *(&v235 + 1) = v210;
          *&v236 = v115;
          *(&v236 + 1) = v114;
          sub_1E1308058(&v233, &unk_1ECEB7B50, &qword_1E1B16990);
        }

        else
        {
          *&v233 = v120;
          *(&v233 + 1) = v118;
          *&v234 = v119;
          *(&v234 + 1) = v116;
          *&v235 = v117;
          *(&v235 + 1) = v210;
          *&v236 = v115;
          *(&v236 + 1) = v114;
          v229 = v233;
          v230 = v234;
          v231 = v235;
          v232 = v236;
          v189 = v118;
          v190 = v120;
          v187 = v116;
          v188 = v119;
          v186 = v117;
          v183 = v114;
          if ((v248 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
          {
            v182 = *(&v248 + 1);
            sub_1E141CF5C(&v245, &v225);
            sub_1E141CF5C(&v245, &v225);
            sub_1E15572B0(&v233, &v225);
            sub_1E1308058(v249, &unk_1ECEB7B50, &qword_1E1B16990);
            v225 = v229;
            v226 = v230;
            v227 = v231;
            v228 = v232;
            sub_1E139CEA8(&v225);
LABEL_96:
            *&v233 = v190;
            *(&v233 + 1) = v189;
            *&v234 = v188;
            *(&v234 + 1) = v187;
            *&v235 = v186;
            *(&v235 + 1) = v210;
            *&v236 = v115;
            *(&v236 + 1) = v183;
            v237 = v242;
            v238 = v243;
            v239 = v244;
            v240 = v121;
            v241 = v182;
            v122 = &v233;
            v123 = &qword_1ECEB5668;
            v124 = &unk_1E1B16B30;
LABEL_97:
            sub_1E1308058(v122, v123, v124);
            v125 = v217;
            v126 = v215;
            swift_beginAccess();
            v127 = swift_isUniquelyReferenced_nonNull_native();
            *&v229 = *(v125 + v126);
            *(v125 + v126) = 0x8000000000000000;
            sub_1E159A1B0(v253, v214, v213, v127);
            *(v125 + v126) = v229;
            swift_endAccess();
            v128 = v212;
            swift_beginAccess();
            v129 = *(v128 + 16);
            v130 = swift_isUniquelyReferenced_nonNull_native();
            *(v128 + 16) = v129;
            if ((v130 & 1) == 0)
            {
              v129 = sub_1E172DC1C(0, *(v129 + 2) + 1, 1, v129);
              *(v212 + 16) = v129;
            }

            v132 = *(v129 + 2);
            v131 = *(v129 + 3);
            if (v132 >= v131 >> 1)
            {
              v129 = sub_1E172DC1C((v131 > 1), v132 + 1, 1, v129);
            }

            *(v129 + 2) = v132 + 1;
            v133 = &v129[16 * v132];
            v134 = v213;
            *(v133 + 4) = v214;
            *(v133 + 5) = v134;
            *(v212 + 16) = v129;
            swift_endAccess();

            sub_1E139CEA8(&v245);
            goto LABEL_37;
          }

          v219 = v245;
          v220 = v246;
          v221 = v247;
          v222 = v248;
          sub_1E141CF5C(&v245, v218);
          sub_1E141CF5C(&v245, v218);
          sub_1E15572B0(&v233, v218);
          v135 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v229, &v219);
          v223[0] = v219;
          v223[1] = v220;
          v223[2] = v221;
          v223[3] = v222;
          sub_1E139CEA8(v223);
          v224[0] = v229;
          v224[1] = v230;
          v224[2] = v231;
          v224[3] = v232;
          sub_1E139CEA8(v224);
          *&v225 = v190;
          *(&v225 + 1) = v189;
          *&v226 = v188;
          *(&v226 + 1) = v187;
          *&v227 = v186;
          *(&v227 + 1) = v210;
          *&v228 = v115;
          *(&v228 + 1) = v183;
          sub_1E1308058(&v225, &unk_1ECEB7B50, &qword_1E1B16990);
          if ((v135 & 1) == 0)
          {
            v122 = v249;
            v123 = &unk_1ECEB7B50;
            v124 = &qword_1E1B16990;
            goto LABEL_97;
          }

          sub_1E139CEA8(&v245);
          sub_1E139CEA8(&v245);
        }

        sub_1E1308058(v249, &unk_1ECEB7B50, &qword_1E1B16990);
        goto LABEL_70;
      }

      v86 = [v82 redownloadParams];
      v210 = sub_1E1AF5DFC();
      v88 = v87;

      sub_1E151E1F8(v210, v88);
      v210 = v89;
      v91 = v90;
      v92 = v216;

      if (([v92 watchOnly] & 1) == 0 && ((objc_msgSend(v92, sel_supportsIPad) & 1) != 0 || objc_msgSend(v92, sel_supportsIPhone)))
      {
        *&v245 = v210;
        *(&v245 + 1) = v91;
        *&v249[0] = v210;
        *(&v249[0] + 1) = v91;
        v180 = v180 & 0x101 | 0x3000000000000000;
        *&v248 = v180;
        *&v250 = v180;

        goto LABEL_83;
      }

      if (v66)
      {
        v93 = [v216 redownloadParams];
        v94 = sub_1E1AF5DFC();
        v96 = v95;

        sub_1E151E1F8(v94, v96);
        v98 = v97;
        v100 = v99;

        if (([v216 supportsRealityDevice] & 1) != 0 || objc_msgSend(v216, sel_optedInForXROSEligibility))
        {
          *&v245 = v98;
          *(&v245 + 1) = v100;
          *&v248 = v185 & 0x101 | 0x3000000000000000;
          *&v249[0] = v98;
          v83 = v248;
          *(&v249[0] + 1) = v100;
          *&v250 = v248;

          v85 = v217;
          goto LABEL_84;
        }
      }

      v101 = [v216 redownloadParams];
      v102 = sub_1E1AF5DFC();
      v104 = v103;

      sub_1E151E1F8(v102, v104);

      *&v245 = 0;
      *&v249[0] = 0;
      v181 = v181 & 0x101 | 0x1000000000000000;
      *&v248 = v181;
      *&v250 = v181;
LABEL_83:
      v85 = v217;
      v83 = v185;
LABEL_84:
      v84 = v184;
      goto LABEL_85;
    }

LABEL_33:
  }

  while (1)
  {
    v45 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_144;
    }

    if (v45 >= v44)
    {
      break;
    }

    v42 = *(v39 + 8 * v45);
    ++v47;
    if (v42)
    {
      goto LABEL_26;
    }
  }

  v136 = v199;
  if (v199)
  {
    swift_beginAccess();

    v138 = sub_1E19B8AD8(v137, v136);

    v139 = v138;
  }

  else
  {
    swift_beginAccess();

    v139 = sub_1E13C4554(v140);
  }

  a3 = v212;
  v141 = 0;
  v142 = v139 + 56;
  v143 = 1 << v139[32];
  if (v143 < 64)
  {
    v144 = ~(-1 << v143);
  }

  else
  {
    v144 = -1;
  }

  v145 = v144 & *(v139 + 7);
  v146 = (v143 + 63) >> 6;
  v214 = v146;
  v216 = v139;
  while (v145)
  {
LABEL_121:
    v148 = __clz(__rbit64(v145));
    v145 &= v145 - 1;
    v149 = (*(v139 + 6) + ((v141 << 10) | (16 * v148)));
    v151 = *v149;
    v150 = v149[1];
    v152 = v251;
    if (!*(v251 + 16))
    {

LABEL_132:
      v159 = v215;
      swift_beginAccess();
      v160 = sub_1E15A47D8();
      if (v161)
      {
        v162 = v160;
        v163 = v217;
        v164 = swift_isUniquelyReferenced_nonNull_native();
        v165 = *(v163 + v159);
        *&v229 = v165;
        *(v163 + v159) = 0x8000000000000000;
        if (!v164)
        {
          sub_1E1417D08();
          v165 = v229;
        }

        v166 = (*(v165 + 56) + (v162 << 6));
        v168 = v166[2];
        v167 = v166[3];
        v169 = v166[1];
        v233 = *v166;
        v234 = v169;
        v235 = v168;
        v236 = v167;
        sub_1E139CEA8(&v233);
        sub_1E1413F60(v162, v165);
        *(v163 + v159) = v165;
      }

      swift_endAccess();
      a3 = v212;
      swift_beginAccess();
      v170 = *(a3 + 16);
      v171 = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v170;
      if ((v171 & 1) == 0)
      {
        v170 = sub_1E172DC1C(0, *(v170 + 2) + 1, 1, v170);
        *(a3 + 16) = v170;
      }

      v173 = *(v170 + 2);
      v172 = *(v170 + 3);
      if (v173 >= v172 >> 1)
      {
        v170 = sub_1E172DC1C((v172 > 1), v173 + 1, 1, v170);
      }

      *(v170 + 2) = v173 + 1;
      v174 = &v170[16 * v173];
      *(v174 + 4) = v151;
      *(v174 + 5) = v150;
      *(a3 + 16) = v170;
      swift_endAccess();
      goto LABEL_115;
    }

    sub_1E1AF762C();

    sub_1E1AF5F0C();
    v153 = sub_1E1AF767C();
    v154 = -1 << *(v152 + 32);
    v155 = v153 & ~v154;
    if (((*(v152 + 56 + ((v155 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v155) & 1) == 0)
    {
      goto LABEL_132;
    }

    v156 = ~v154;
    while (1)
    {
      v157 = (*(v152 + 48) + 16 * v155);
      v158 = *v157 == v151 && v157[1] == v150;
      if (v158 || (sub_1E1AF74AC() & 1) != 0)
      {
        break;
      }

      v155 = (v155 + 1) & v156;
      if (((*(v152 + 56 + ((v155 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v155) & 1) == 0)
      {
        goto LABEL_132;
      }
    }

    a3 = v212;
LABEL_115:
    v139 = v216;
    v146 = v214;
  }

  while (1)
  {
    v147 = v141 + 1;
    if (__OFADD__(v141, 1))
    {
      break;
    }

    if (v147 >= v146)
    {

      v11 = v194;
      v10 = v195;
      v34 = v203;
      v33 = v204;
      goto LABEL_142;
    }

    v145 = *&v142[8 * v147];
    ++v141;
    if (v145)
    {
      v141 = v147;
      goto LABEL_121;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

double sub_1E1A5D424(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  a1(v4);

  return result;
}

id PurchaseHistoryAppStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*sub_1E1A5D530(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E16C8D6C;
}

double sub_1E1A5D5D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v6;
  v8[6] = v5;

  sub_1E1A5B0E4(sub_1E1A5E51C, v8);

  return result;
}

void *sub_1E1A5D6AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v7 = sub_1E1AF68DC();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v51 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF68AC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  *&v5[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v44 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_accessQueue;
  v14 = sub_1E1361A80();
  v42 = "nent";
  v43 = v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80, &unk_1E1B26740);
  v40 = *(v13 + 72);
  v15 = swift_allocObject();
  v39 = xmmword_1E1B02CC0;
  *(v15 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v55 = v15;
  v38[2] = sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  v38[3] = sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  v16 = *MEMORY[0x1E69E8090];
  v17 = *(v53 + 104);
  v53 += 104;
  v17(v51, v16, v52);
  *&v5[v44] = sub_1E1AF692C();
  v44 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_callbackQueue;
  v42 = "ppStateDataSource.accessQueue";
  v18 = swift_allocObject();
  *(v18 + 16) = v39;
  v19 = v46;
  sub_1E1AF689C();
  v55 = v18;
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  v17(v51, v16, v52);
  *&v6[v44] = sub_1E1AF692C();
  *&v6[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates] = MEMORY[0x1E69E7CC8];
  v20 = &v6[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers;
  *&v6[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers] = 0;
  v22 = OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_hasRequestedPurchaseHistoryUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6918, &qword_1E1B1CED0);
  swift_allocObject();
  *&v6[v22] = sub_1E14C51E8(0);
  v23 = &v6[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_hostBundleId];
  *v23 = 0;
  *(v23 + 1) = 0;
  sub_1E1300B24(v19, &v6[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory]);
  *&v6[v21] = v47;

  v24 = v49;
  *&v6[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_initialPurchaseHistoryContext] = v48;
  *&v6[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext] = v24;
  *&v6[OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_bag] = v50;
  v25 = type metadata accessor for PurchaseHistoryAppStateDataSource();
  v54.receiver = v6;
  v54.super_class = v25;

  v26 = objc_msgSendSuper2(&v54, sel_init);
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 defaultCenter];
  v30 = v19[3];
  v31 = v19[4];
  __swift_project_boxed_opaque_existential_1Tm(v19, v30);
  v32 = (*(v31 + 72))(v30, v31);
  [v29 addObserver:v28 selector:sel_purchaseHistoryUpdated_ name:v32 object:0];

  v33 = [v27 defaultCenter];
  sub_1E1AF59DC();
  v34 = v28;
  v35 = sub_1E1AF59BC();
  [v33 addObserver:v34 selector:sel_accountsDidChange name:v35 object:sub_1E1AF59CC()];

  v36 = [v27 defaultCenter];
  if (qword_1EE1ED2E0 != -1)
  {
    swift_once();
  }

  [v36 addObserver:v34 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v34;
}

uint64_t sub_1E1A5E03C()
{
  v1 = *(v0 + 16);
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  return v1(v3);
}

double sub_1E1A5E094(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF320C();
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF324C();
  v8 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_accessQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);

  return result;
}

_BYTE *sub_1E1A5E360(_BYTE *result)
{
  if (*result == 1)
  {
    **(v1 + 16) = 0;
  }

  else
  {
    *result = 1;
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_38Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_5()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t *sub_1E1A5E4C8(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 16);
    *result = v2;
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (!v4)
    {
      return v3();
    }
  }

  return result;
}

uint64_t TabChangeAction.__allocating_init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)(a1, a2, v7, a4, a5);
  return v10;
}

void TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v44 = a4;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_1E1AF3E1C();
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_navigationTab) = *a1;
  v23 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v23 = a2;
  }

  *(v6 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_actions) = v23;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_popToRoot) = a3;
  v24 = v19;
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v45 = v20;
  v25 = *(v20 + 16);
  v43 = a5;
  v25(v22, a5, v19);
  v26 = sub_1E1AF46DC();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  sub_1E138853C(v54, &v48);
  if (*(&v49 + 1))
  {
    v51 = v48;
    v52 = v49;
    v53 = v50;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v29 = v24;
    v31 = v30;
    (*(v12 + 8))(v14, v11);
    v46 = v28;
    v47 = v31;
    v24 = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v48, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v54, &unk_1ECEB5670, qword_1E1B03EC0);
  v32 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v32 + 4) = v53;
  v33 = v52;
  *v32 = v51;
  *(v32 + 1) = v33;
  sub_1E134B7C8(v17, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v6[2] = 0;
  v6[3] = 0;
  v34 = v44;
  v35 = v45;
  v6[4] = 0;
  v6[5] = v34;
  (*(v35 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v22, v24);
  if (*(v6 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_navigationTab) < 2u && *(v6 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_navigationTab))
  {

LABEL_10:
    (*(v35 + 8))(v43, v24);

    return;
  }

  v36 = sub_1E1AF74AC();

  if (v36)
  {
    goto LABEL_10;
  }

  v37 = *(v6 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_actions);
  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_13;
    }

LABEL_23:

LABEL_24:
    (*(v35 + 8))(v43, v24);
    return;
  }

  v38 = sub_1E1AF71CC();
  if (!v38)
  {
    goto LABEL_23;
  }

LABEL_13:
  if (v38 >= 1)
  {
    v44 = v24;

    for (i = 0; i != v38; ++i)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E68FFD80](i, v37);
      }

      else
      {
      }

      type metadata accessor for FlowAction(0);
      v40 = swift_dynamicCastClass();
      if (v40)
      {
        v41 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior;
        v42 = v40;
        swift_beginAccess();
        *(v42 + v41) = 1;
      }
    }

    v24 = v44;
    v35 = v45;
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t TabChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t TabChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

void sub_1E1A5EE24(uint64_t a1, char *a2)
{
  v81 = a2;
  v69 = sub_1E1AEFEAC();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0, &unk_1E1B0C3F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v67 - v7;
  v77 = sub_1E1AF3E1C();
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v67 - v12;
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  v23 = sub_1E1AF5A6C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v27 = *(v15 + 8);
  v76 = v14;
  v75 = v15 + 8;
  v74 = v27;
  v27(v22, v14);
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {
    sub_1E1308058(v13, &qword_1ECEB1F90, &qword_1E1B00D30);
    v85 = MEMORY[0x1E69E7CC0];
    v28 = v81;
  }

  else
  {
    (*(v24 + 32))(v26, v13, v23);
    v29 = type metadata accessor for Action(0);
    MEMORY[0x1EEE9AC00](v29);
    v28 = v81;
    v30 = v82;
    *(&v67 - 2) = v31;
    *(&v67 - 1) = v28;
    v85 = sub_1E1AF59FC();
    v82 = v30;
    (*(v24 + 8))(v26, v23);
  }

  sub_1E1AF381C();
  (*(v78 + 16))(v70, v28, v79);
  v32 = v72;
  v33 = v77;
  sub_1E1AF464C();
  v34 = v80;
  v35 = *(v80 + 48);
  if (v35(v32, 1, v33) == 1)
  {
    sub_1E1AF3DFC();
    if (v35(v32, 1, v33) != 1)
    {
      sub_1E1308058(v32, &qword_1ECEBB7C0, &unk_1E1B0C3F0);
    }
  }

  else
  {
    (*(v34 + 32))(v84, v32, v33);
  }

  sub_1E1AF381C();
  sub_1E1A384B8();
  sub_1E1AF369C();
  v36 = v19;
  v37 = v76;
  v38 = v74;
  v74(v36, v76);
  v39 = v93;
  v40 = v71;
  sub_1E1AF381C();
  v41 = sub_1E1AF370C();
  v38(v40, v37);
  v42 = *(v34 + 16);
  v43 = v73;
  v42(v73, v84, v33);
  type metadata accessor for TabChangeAction(0);
  v44 = swift_allocObject();
  *(v44 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_navigationTab) = v39;
  v45 = v85;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_actions) = v85;
  *(v44 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_popToRoot) = v41 & 1;
  v92 = 0;
  memset(v91, 0, sizeof(v91));
  v42((v44 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics), v43, v33);
  v46 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v47 = sub_1E1AF46DC();
  (*(*(v47 - 8) + 56))(v44 + v46, 1, 1, v47);
  v48 = (v44 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v48 = 0u;
  v48[1] = 0u;
  v49 = v44 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v91, &v88);
  if (*(&v89 + 1))
  {
    v50 = v89;
    *v49 = v88;
    *(v49 + 16) = v50;
    *(v49 + 32) = v90;
  }

  else
  {
    v51 = v67;
    sub_1E1AEFE9C();
    v52 = sub_1E1AEFE7C();
    v54 = v53;
    (*(v68 + 8))(v51, v69);
    v86 = v52;
    v87 = v54;
    sub_1E1AF6F6C();
    sub_1E1308058(&v88, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v91, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  v55 = v80;
  v56 = v84;
  if (*(v44 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_navigationTab) <= 3u)
  {
    v57 = v81;
    if (*(v44 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_navigationTab) <= 1u && *(v44 + OBJC_IVAR____TtC11AppStoreKit15TabChangeAction_navigationTab))
    {

LABEL_33:
      v74(v83, v76);
      v65 = *(v55 + 8);
      v66 = v77;
      v65(v43, v77);
      v65(v56, v66);
      (*(v78 + 8))(v57, v79);
      return;
    }
  }

  else
  {
    v57 = v81;
  }

  v58 = sub_1E1AF74AC();

  if (v58)
  {

    v56 = v84;
    goto LABEL_33;
  }

  if (!(v45 >> 62))
  {
    v59 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v84;
    if (v59)
    {
      goto LABEL_22;
    }

LABEL_32:

    goto LABEL_33;
  }

  v59 = sub_1E1AF71CC();
  v56 = v84;
  if (!v59)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (v59 >= 1)
  {
    v60 = v45 & 0xC000000000000001;

    for (i = 0; i != v59; ++i)
    {
      if (v60)
      {
        MEMORY[0x1E68FFD80](i, v45);
      }

      else
      {
      }

      type metadata accessor for FlowAction(0);
      v62 = swift_dynamicCastClass();
      if (v62)
      {
        v63 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior;
        v64 = v62;
        swift_beginAccess();
        *(v64 + v63) = 1;
        v45 = v85;
      }
    }

    v57 = v81;
    v55 = v80;
    v43 = v73;
    v56 = v84;
    goto LABEL_33;
  }

  __break(1u);
}

uint64_t type metadata accessor for TabChangeAction(uint64_t a1)
{
  result = qword_1EE1DF670;
  if (!qword_1EE1DF670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProxyImpressionsTracker.__allocating_init(proxy:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ProxyImpressionsTracker.init(proxy:)(a1);
  return v2;
}

uint64_t ProxyImpressionsTracker.init(proxy:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E69AB830]) init];
  return v1;
}

double ProxyImpressionsTracker.proxy.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

id ProxyImpressionsTracker.switchProxy(to:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  [v3 lock];
  sub_1E1A5FC2C(v1, a1);

  return [v3 unlock];
}

void sub_1E1A5FC2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

id sub_1E1A5FCC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v3[3];
  [v7 lock];
  sub_1E1A5FD70(v3, a1, a2, a3, &v9);

  return [v7 unlock];
}

void sub_1E1A5FD70(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, BOOL *a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  v11 = a1[2];
  if (v11)
  {
    v12 = *(v10 + 80);
    v13 = *(v10 + 88);
    swift_unknownObjectRetain();
    a4(a2, a3, v12, v13);
    swift_unknownObjectRelease();
  }

  *a5 = v11 == 0;
}

uint64_t sub_1E1A5FE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v3[3];
  [v7 lock];
  sub_1E1A5FF18(v3, a1, a2, a3, &v9);
  [v7 unlock];
  return v9;
}

void sub_1E1A5FF18(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  if (a1[2])
  {
    v11 = *(v10 + 80);
    v12 = *(v10 + 88);
    swift_unknownObjectRetain();
    v13 = a4(a2, a3, v11, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v13;
}

Swift::Void __swiftcall ProxyImpressionsTracker.removeAllImpressions()()
{
  v1 = v0[3];
  [v1 lock];
  sub_1E1A60080(v0, &v2);

  [v1 unlock];
}

void sub_1E1A60080(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  v4 = a1[2];
  if (v4)
  {
    swift_unknownObjectRetain();
    sub_1E1AF477C();
    swift_unknownObjectRelease();
  }

  *a2 = v4 == 0;
}

uint64_t sub_1E1A6012C()
{
  sub_1E1A6061C();
  sub_1E1AF59EC();
  swift_getWitnessTable();
  return v1;
}

uint64_t sub_1E1A601E4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v3 = swift_allocObject();
  v4 = swift_unknownObjectRetain();
  result = ProxyImpressionsTracker.init(proxy:)(v4);
  *a2 = v3;
  return result;
}

uint64_t ProxyImpressionsTracker.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ProxyImpressionsTracker.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ProxyImpressionsTracker<>.consumeFastImpressions(in:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  [v7 lock];
  sub_1E1A60434(v3, a1, a2, a3, &v9);
  [v7 unlock];
  return v9;
}

uint64_t sub_1E1A60434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  if (a1[2])
  {
    result = (*(a4 + 8))(a2, a3, *(v10 + 80), a4);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a5 = result;
  return result;
}

uint64_t sub_1E1A60508(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E1A6061C()
{
  result = qword_1ECEBD1D0;
  if (!qword_1ECEBD1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEBD1D0);
  }

  return result;
}

void *TopShelfCarouselItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v65 - v6;
  v70 = sub_1E1AF5A6C();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v65 - v9;
  v80 = sub_1E1AF39DC();
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v73 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v65 - v14;
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v75 = &v65 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v65 - v26;
  sub_1E1AF381C();
  v28 = sub_1E1AF37CC();
  v30 = v29;
  v72 = v17;
  v31 = *(v17 + 8);
  v31(v27, v16);
  v32 = (v3 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_genre);
  *v32 = v28;
  v32[1] = v30;
  sub_1E1AF381C();
  v33 = sub_1E1AF37CC();
  v35 = v34;
  v31(v27, v16);
  v36 = (v3 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_summary);
  *v36 = v33;
  v36[1] = v35;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v31(v27, v16);
  sub_1E13E23F8(v15, v3 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_previewVideoUrl);
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v31(v27, v16);
  sub_1E13E23F8(v15, v3 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_cinemagraphUrl);
  sub_1E1AF381C();
  v37 = sub_1E1AF37CC();
  v39 = v38;
  v31(v27, v16);
  v40 = (v3 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_bundleIdentifier);
  v41 = v3;
  *v40 = v37;
  v40[1] = v39;
  v42 = v75;
  sub_1E1AF381C();
  v43 = sub_1E1AF37CC();
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

  v47 = (v41 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_adamId);
  *v47 = v46;
  v47[1] = v45;
  type metadata accessor for TopShelfAction(0);
  sub_1E1AF381C();
  v74 = *(v78 + 16);
  v75 = (v78 + 16);
  v74(v76, v79, v80);
  sub_1E1A60FDC(&qword_1ECEB49F8, type metadata accessor for TopShelfAction, "!I4\r\b|\t");
  v48 = a1;
  v49 = v31;
  v50 = v16;
  v51 = v41;
  sub_1E1AF464C();
  *(v41 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_installAction) = v82;
  sub_1E1AF381C();
  sub_1E138E3CC();
  sub_1E1AF36DC();
  v49(v27, v16);
  *(v41 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_remoteControllerRequirement) = v81;
  v52 = v77;
  sub_1E1AF381C();
  v53 = sub_1E1AF370C();
  v49(v52, v16);
  *(v41 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_isAppleArcadeGame) = v53 & 1;
  v54 = v67;
  v77 = v48;
  sub_1E1AF381C();
  v55 = v69;
  sub_1E1AF374C();
  v49(v54, v16);
  v56 = v68;
  v57 = v70;
  if ((*(v68 + 48))(v55, 1) == 1)
  {
    sub_1E1308058(v55, &qword_1ECEB1F90, &qword_1E1B00D30);
    v58 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v59 = v66;
    (*(v56 + 32))(v66, v55, v57);
    (*(v56 + 16))(v65, v59, v57);
    v74(v76, v79, v80);
    v69 = type metadata accessor for TopShelfNamedAttribute();
    sub_1E1A60FDC(&qword_1ECEBD1D8, type metadata accessor for TopShelfNamedAttribute, &protocol conformance descriptor for TopShelfNamedAttribute);
    v58 = sub_1E1AF631C();
    (*(v56 + 8))(v59, v57);
  }

  v60 = v79;
  *(v51 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_namedAttributes) = v58;
  v61 = v71;
  (*(v72 + 16))(v71, v77, v50);
  v62 = v73;
  v74(v73, v60, v80);
  v63 = TopShelfItem.init(deserializing:using:)(v61, v62);
  (*(v78 + 8))(v60, v80);
  v49(v77, v50);
  return v63;
}

uint64_t sub_1E1A60FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_genre);

  return v1;
}

uint64_t TopShelfCarouselItem.summary.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_summary);

  return v1;
}

uint64_t TopShelfCarouselItem.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_bundleIdentifier);

  return v1;
}

double TopShelfCarouselItem.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_adamId);
  a1[1] = v2;

  return result;
}

double sub_1E1A6115C()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_previewVideoUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_cinemagraphUrl, &unk_1ECEB4B60, &unk_1E1B02620);

  return result;
}

void *TopShelfCarouselItem.deinit()
{
  v0 = TopShelfItem.deinit();

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_previewVideoUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit20TopShelfCarouselItem_cinemagraphUrl, &unk_1ECEB4B60, &unk_1E1B02620);

  return v0;
}

uint64_t TopShelfCarouselItem.__deallocating_deinit()
{
  TopShelfCarouselItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TopShelfCarouselItem(uint64_t a1)
{
  result = qword_1ECEBD1E0;
  if (!qword_1ECEBD1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1A613C4(uint64_t a1)
{
  sub_1E130072C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id UIColor.inverse.getter()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  v6[0] = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  if ([v0 getRed:v6 green:&v5 blue:&v4 alpha:&v3])
  {
    return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 - v6[0] green:1.0 - v5 blue:1.0 - v4 alpha:v3];
  }

  return v2;
}

uint64_t ShareSheetNotesMetadata.itemName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetNotesMetadata.developer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_developer);

  return v1;
}

uint64_t ShareSheetNotesMetadata.category.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_category);

  return v1;
}

uint64_t ShareSheetNotesMetadata.mediaType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_mediaType);

  return v1;
}

uint64_t ShareSheetNotesMetadata.__allocating_init(itemName:url:developer:category:fileSize:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_1E13E23F8(a3, v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_url);
  v19 = (v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_developer);
  *v19 = a4;
  v19[1] = a5;
  v20 = (v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_category);
  *v20 = a6;
  v20[1] = a7;
  v21 = v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_fileSize;
  *v21 = a8;
  *(v21 + 8) = a9 & 1;
  v22 = (v18 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_mediaType);
  *v22 = a10;
  v22[1] = a11;
  return v18;
}

uint64_t ShareSheetNotesMetadata.init(itemName:url:developer:category:fileSize:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_1E13E23F8(a3, v11 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_url);
  v17 = (v11 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_developer);
  *v17 = a4;
  v17[1] = a5;
  v18 = (v11 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_category);
  *v18 = a6;
  v18[1] = a7;
  v19 = v11 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_fileSize;
  *v19 = a8;
  *(v19 + 8) = a9 & 1;
  v20 = (v11 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_mediaType);
  *v20 = a10;
  v20[1] = a11;
  return v11;
}

uint64_t ShareSheetNotesMetadata.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetNotesMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ShareSheetNotesMetadata.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v43 = a2;
  v3 = v2;
  v42 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v44 = a1;
  sub_1E1AF381C();
  v15 = sub_1E1AF37CC();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v14, v8);
  if (v17)
  {
    v3[2] = v15;
    v3[3] = v17;
    v19 = v44;
    sub_1E1AF381C();
    sub_1E1AF36FC();
    v18(v11, v8);
    sub_1E13E23F8(v7, v3 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_url);
    sub_1E1AF381C();
    v20 = sub_1E1AF37CC();
    v22 = v21;
    v18(v11, v8);
    v23 = (v3 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_developer);
    *v23 = v20;
    v23[1] = v22;
    sub_1E1AF381C();
    v24 = sub_1E1AF37CC();
    v26 = v25;
    v18(v11, v8);
    v27 = (v3 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_category);
    *v27 = v24;
    v27[1] = v26;
    sub_1E1AF381C();
    v28 = sub_1E1AF376C();
    LOBYTE(v26) = v29;
    v18(v11, v8);
    v30 = v3 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_fileSize;
    *v30 = v28;
    v30[8] = v26 & 1;
    sub_1E1AF381C();
    v31 = sub_1E1AF37CC();
    v33 = v32;
    v34 = sub_1E1AF39DC();
    (*(*(v34 - 8) + 8))(v43, v34);
    v18(v19, v8);
    v18(v11, v8);
    v35 = (v3 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_mediaType);
    *v35 = v31;
    v35[1] = v33;
  }

  else
  {
    v36 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v37 = 0x656D614E6D657469;
    v38 = v42;
    v37[1] = 0xE800000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69AB690], v36);
    swift_willThrow();
    v39 = sub_1E1AF39DC();
    (*(*(v39 - 8) + 8))(v43, v39);
    v18(v44, v8);
    type metadata accessor for ShareSheetNotesMetadata(0);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t type metadata accessor for ShareSheetNotesMetadata(uint64_t a1)
{
  result = qword_1EE1EBCF8;
  if (!qword_1EE1EBCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareSheetNotesMetadata.deinit()
{

  sub_1E13ECBA0(v0 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_url);

  return v0;
}

uint64_t ShareSheetNotesMetadata.__deallocating_deinit()
{

  sub_1E13ECBA0(v0 + OBJC_IVAR____TtC11AppStoreKit23ShareSheetNotesMetadata_url);

  return swift_deallocClassInstance();
}

uint64_t *sub_1E1A61EE8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetNotesMetadata(0);
  v7 = swift_allocObject();
  result = ShareSheetNotesMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1E1A61F5C(uint64_t a1)
{
  sub_1E130072C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

AppStoreKit::SearchResultCondensedBehavior_optional __swiftcall SearchResultCondensedBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SearchResultCondensedBehavior.rawValue.getter()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x737961776C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736E496E656877;
  }
}

uint64_t sub_1E1A62134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x726576656ELL;
  if (v2 != 1)
  {
    v4 = 0x737961776C61;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74736E496E656877;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED000064656C6C61;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726576656ELL;
  if (*a2 != 1)
  {
    v8 = 0x737961776C61;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74736E496E656877;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED000064656C6C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

unint64_t sub_1E1A62234()
{
  result = qword_1ECEBD1F0;
  if (!qword_1ECEBD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBD1F0);
  }

  return result;
}

uint64_t sub_1E1A62288()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1A62330(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1A623C4(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1A62474(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000064656C6C61;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74736E496E656877;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ShelfFooterStyle.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X8>)
{
  v67 = a2;
  v66 = a3;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v70 = a1;
  sub_1E1AF381C();
  v16 = sub_1E1AF37CC();
  v18 = v17;
  v19 = *(v5 + 8);
  v71 = v4;
  v69 = v5 + 8;
  v19(v15, v4);
  if (!v18)
  {
    v66 = v19;
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0, &qword_1E1B1A060);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1E1B02CC0;
    *(v26 + 32) = swift_allocError();
    *v27 = 1701869940;
    v27[1] = 0xE400000000000000;
    v27[2] = &type metadata for ShelfFooterStyle;
    v28 = *(*(v23 - 8) + 104);
    v28(v27, *MEMORY[0x1E69AB690], v23);
    *v25 = &type metadata for ShelfFooterStyle;
    v25[1] = v26;
    v28(v25, *MEMORY[0x1E69AB698], v23);
LABEL_15:
    swift_willThrow();
    v47 = sub_1E1AF39DC();
    (*(*(v47 - 8) + 8))(v67, v47);
    return v66(v70, v71);
  }

  if (v16 == 0x73656D6167 && v18 == 0xE500000000000000)
  {

LABEL_10:
    sub_1E1AF381C();
    sub_1E1AF37CC();
    v30 = v29;
    v19(v12, v71);
    if (!v30)
    {
LABEL_14:
      v66 = v19;
      v38 = sub_1E1AF5A7C();
      sub_1E1380704();
      v68 = swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0, &qword_1E1B1A060);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1E1B03760;
      *(v41 + 32) = swift_allocError();
      *v42 = 0x4449656C646E7562;
      v42[1] = 0xE800000000000000;
      v42[2] = &type metadata for ShelfFooterStyle;
      v43 = *MEMORY[0x1E69AB690];
      v44 = *(*(v38 - 8) + 104);
      v44(v42, v43, v38);
      *(v41 + 40) = swift_allocError();
      *v45 = 0x6874646977;
      v45[1] = 0xE500000000000000;
      v45[2] = &type metadata for ShelfFooterStyle;
      v44(v45, v43, v38);
      *(v41 + 48) = swift_allocError();
      *v46 = 0x746867696568;
      v46[1] = 0xE600000000000000;
      v46[2] = &type metadata for ShelfFooterStyle;
      v44(v46, v43, v38);
      *v40 = &type metadata for ShelfFooterStyle;
      v40[1] = v41;
      v44(v40, *MEMORY[0x1E69AB698], v38);
      goto LABEL_15;
    }

    sub_1E1AF381C();
    *&v31 = COERCE_DOUBLE(sub_1E1AF379C());
    v33 = v32;
    v19(v9, v71);
    if (v33 & 1) != 0 || (v34 = v65, sub_1E1AF381C(), *&v35 = COERCE_DOUBLE(sub_1E1AF379C()), v37 = v36, v19(v34, v71), (v37))
    {

      goto LABEL_14;
    }

    v49 = *&v31;
    v50 = *&v35;
    v51 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v52 = sub_1E1AF5DBC();

    v53 = [v51 initWithBundleIdentifier_];

    v54 = [objc_opt_self() mainScreen];
    [v54 scale];
    v56 = v55;

    v57 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:v49 scale:{v50, v56}];
    v58 = [v53 imageForDescriptor_];
    if (v58)
    {
      v59 = v58;
      if ([v58 placeholder])
      {
        v22 = [v53 prepareImageForDescriptor_];

        v59 = v22;
        if (!v22)
        {

          goto LABEL_25;
        }
      }

      v60 = [v59 CGImage];
      if (v60)
      {
        v61 = v60;
        [v59 scale];
        v22 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v61 scale:0 orientation:v62];

LABEL_25:
        goto LABEL_26;
      }
    }

    else
    {
    }

    v22 = 0;
    goto LABEL_26;
  }

  v21 = sub_1E1AF74AC();

  if (v21)
  {
    goto LABEL_10;
  }

  v22 = 0;
LABEL_26:
  v63 = sub_1E1AF39DC();
  (*(*(v63 - 8) + 8))(v67, v63);
  result = v19(v70, v71);
  *v66 = v22;
  return result;
}

uint64_t GenericAccountPagePresenter.__allocating_init(objectGraph:url:page:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page) = 0;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_personalizedRecommendationsEnabled) = 2;
  sub_1E1307FE8(a2, v6 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_pageUrl);
  swift_beginAccess();
  *(v6 + v7) = a3;
  v8 = sub_1E138C578(a1, 0, 0, 0);

  sub_1E1308058(a2, &unk_1ECEB4B60, &unk_1E1B02620);
  return v8;
}

uint64_t GenericAccountPagePresenter.init(objectGraph:url:page:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_personalizedRecommendationsEnabled) = 2;
  sub_1E1307FE8(a2, v3 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_pageUrl);
  swift_beginAccess();
  *(v3 + v7) = a3;
  v8 = sub_1E138C578(a1, 0, 0, 0);

  sub_1E1308058(a2, &unk_1ECEB4B60, &unk_1E1B02620);
  return v8;
}

double sub_1E1A62ED0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_1E1A62F3C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

double sub_1E1A6303C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1E1A630EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1E1A631A4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_personalizedRecommendationsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E1A631E8(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_personalizedRecommendationsEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E1A63298()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1E1A63300()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  if (v3 >> 62)
  {
    return sub_1E1AF71CC();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1E1A63378(int a1)
{
  LODWORD(v58) = a1;
  v2 = type metadata accessor for GenericAccountPageIntent(0);
  v56 = *(v2 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - v5;
  v7 = sub_1E1AF504C();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AEFCCC();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20, &unk_1E1B02E40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return;
  }

  v53 = v15;
  v54 = v12;
  v52 = v6;
  v22 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if (v23)
  {
    sub_1E1307FE8(v1 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_pageUrl, v21);
    if ((*(v59 + 48))(v21, 1, v60) == 1)
    {

      sub_1E1308058(v21, &unk_1ECEB4B60, &unk_1E1B02620);
      *(v1 + 32) = 1;
      v24 = v1 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = *(v24 + 8);
        ObjectType = swift_getObjectType();
        (*(*(v25 + 16) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      v27 = sub_1E1AF649C();
      v28 = v53;
      (*(*(v27 - 8) + 56))(v53, 1, 1, v27);
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v29;
      v30[5] = v23;
      sub_1E154AF74(0, 0, v28, &unk_1E1B4F4B8, v30);

      return;
    }

    sub_1E1308058(v21, &unk_1ECEB4B60, &unk_1E1B02620);
  }

  sub_1E1307FE8(v1 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_pageUrl, v18);
  v32 = v59;
  v31 = v60;
  if ((*(v59 + 48))(v18, 1, v60) == 1)
  {
    sub_1E1308058(v18, &unk_1ECEB4B60, &unk_1E1B02620);
  }

  else
  {
    (*(v32 + 32))(v54, v18, v31);
    if (!*(v1 + v22) || (v58 & 1) != 0)
    {
      *(v1 + 32) = 1;
      v33 = v1 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v33 + 8);
        v35 = swift_getObjectType();
        (*(*(v34 + 16) + 8))(v35);
        swift_unknownObjectRelease();
      }

      v58 = v33;
      swift_beginAccess();
      v36 = v52;
      v37 = v54;
      if (*(v1 + 24))
      {
        *v9 = 1;
        v38 = v55;
        (*(v55 + 104))(v9, *MEMORY[0x1E69AB450], v7);

        sub_1E1AF509C();

        (*(v38 + 8))(v9, v7);
      }

      (*(v59 + 16))(&v36[*(v2 + 20)], v37, v60);
      *v36 = 0xD000000000000018;
      *(v36 + 1) = 0x80000001E1B851A0;
      type metadata accessor for JSIntentDispatcher();
      sub_1E1AF421C();
      sub_1E1AF55EC();
      v39 = v61;
      sub_1E1AF4C1C();

      sub_1E1AF422C();

      sub_1E1AF4BEC();

      v40 = sub_1E1AF4BFC();

      v41 = sub_1E1AF649C();
      v42 = v53;
      (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = v57;
      sub_1E1A66540(v36, v57, type metadata accessor for GenericAccountPageIntent);
      v45 = (*(v56 + 80) + 40) & ~*(v56 + 80);
      v46 = (v3 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = v39;
      sub_1E1A65EBC(v44, v47 + v45);
      *(v47 + v46) = v40;
      *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;

      sub_1E154AF74(0, 0, v42, &unk_1E1B4F4A8, v47);

      v48 = v58;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v49 = *(v48 + 8);
        v50 = swift_getObjectType();
        (*(*(v49 + 8) + 8))(v50);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1E1A665A8(v52, type metadata accessor for GenericAccountPageIntent);
      (*(v59 + 8))(v54, v60);
    }

    else
    {
      (*(v32 + 8))(v54, v31);
    }
  }
}

uint64_t sub_1E1A63C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 192) = a4;
  *(v5 + 200) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E1A63C3C, 0, 0);
}

uint64_t sub_1E1A63C3C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    v0[27] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[28] = v3;
      *v3 = v0;
      v3[1] = sub_1E1A63DF8;
      v4 = v0[25];

      return sub_1E1A64AC0(v4);
    }

    v6 = v0[26];
    v7 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_personalizedRecommendationsEnabled;
    swift_beginAccess();
    *(v6 + v7) = 2;
  }

  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1E1AF644C();
  v0[29] = sub_1E1AF643C();
  v9 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E1A6401C, v9, v8);
}

uint64_t sub_1E1A63DF8(char a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E1A63F18, 0, 0);
}

uint64_t sub_1E1A63F18()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_personalizedRecommendationsEnabled;
  swift_beginAccess();
  *(v2 + v3) = v1;

  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1E1AF644C();
  *(v0 + 232) = sub_1E1AF643C();
  v5 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E1A6401C, v5, v4);
}

uint64_t sub_1E1A6401C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    *(v2 + 32) = 0;
    v3 = v2 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v4 + 16) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  swift_weakDestroy();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E1A64128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 144) = a7;
  v14 = (*(*a4 + 112) + **(*a4 + 112));
  v10 = swift_task_alloc();
  *(v7 + 152) = v10;
  v11 = type metadata accessor for GenericAccountPageIntent(0);
  v12 = sub_1E1A66608(&qword_1ECEBD218, type metadata accessor for GenericAccountPageIntent, &protocol conformance descriptor for GenericAccountPageIntent);
  *v10 = v7;
  v10[1] = sub_1E1A642C0;

  return v14(v7 + 136, a5, a6, "", 0, 2, v11, v12);
}

uint64_t sub_1E1A642C0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1E1A645C0;
  }

  else
  {
    *(v2 + 168) = *(v2 + 136);
    v3 = sub_1E1A643DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1A643DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    v0[24] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[25] = v3;
      *v3 = v0;
      v3[1] = sub_1E1A646B4;
      v4 = v0[21];

      return sub_1E1A64AC0(v4);
    }

    v6 = v0[22];
    v7 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_personalizedRecommendationsEnabled;
    swift_beginAccess();
    *(v6 + v7) = 2;
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  v0[26] = v8;
  if (v8)
  {
    sub_1E1AF644C();
    v0[27] = sub_1E1AF643C();
    v10 = sub_1E1AF63CC();

    return MEMORY[0x1EEE6DFA0](sub_1E1A64904, v10, v9);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1E1A645C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    sub_1E1AF644C();
    *(v0 + 224) = sub_1E1AF643C();
    v3 = sub_1E1AF63CC();

    return MEMORY[0x1EEE6DFA0](sub_1E1A649E0, v3, v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E1A646B4(char a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E1A647D4, 0, 0);
}

uint64_t sub_1E1A647D4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  v3 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_personalizedRecommendationsEnabled;
  swift_beginAccess();
  *(v2 + v3) = v1;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (Strong)
  {
    sub_1E1AF644C();
    *(v0 + 216) = sub_1E1AF643C();
    v6 = sub_1E1AF63CC();

    return MEMORY[0x1EEE6DFA0](sub_1E1A64904, v6, v5);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E1A64904()
{
  v1 = *(v0 + 168);

  sub_1E1A6539C(v1);

  return MEMORY[0x1EEE6DFA0](sub_1E1A64980, 0, 0);
}

uint64_t sub_1E1A64980()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1A649E0()
{
  v1 = *(v0 + 160);

  sub_1E1A64F3C(v1);

  return MEMORY[0x1EEE6DFA0](sub_1E1A64A60, 0, 0);
}

uint64_t sub_1E1A64A60()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1A64AC0(uint64_t a1)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E1A64AE0, 0, 0);
}

void sub_1E1A64AE0()
{
  v1 = *(*(v0 + 240) + 32);
  swift_bridgeObjectRetain_n();
  v2 = 0;
  while (1)
  {
    do
    {
      if (v1 >> 62)
      {
        if (v2 == sub_1E1AF71CC())
        {
          goto LABEL_21;
        }
      }

      else if (v2 == *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E68FFD80](v2, v1);
        v13 = __OFADD__(v2++, 1);
        if (v13)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_28:
          __break(1u);
          return;
        }

        v12 = *(v1 + 32 + 8 * v2);

        v13 = __OFADD__(v2++, 1);
        if (v13)
        {
LABEL_20:
          __break(1u);
LABEL_21:
          swift_bridgeObjectRelease_n();

          v16 = *(v0 + 8);

          v16(2);
          return;
        }
      }

      swift_beginAccess();
      v14 = *(v12 + 40);

      v15 = v14;
    }

    while (!v14);
    v3 = *(v14 + 16);
    if (v3)
    {
      break;
    }

LABEL_8:
    *(v0 + 96) = 0;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 104) = -1;
    sub_1E1308058(v0 + 16, &qword_1ECEBD210, &qword_1E1B4F570);
  }

  v4 = 0;
  v5 = v15 + 32;
  while (1)
  {
    if (v4 >= v3)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1E14E19F0(v5, v0 + 16);
    v6 = *(v0 + 104);
    if (v6 == 255)
    {
      goto LABEL_21;
    }

    v7 = *(v0 + 32);
    v8 = *(v0 + 48);
    v9 = *(v0 + 64);
    v10 = *(v0 + 80);
    v11 = *(v0 + 96);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v7;
    *(v0 + 144) = v8;
    *(v0 + 160) = v9;
    *(v0 + 176) = v10;
    *(v0 + 192) = v11;
    *(v0 + 200) = v6;
    if (v6 == 3)
    {
      break;
    }

    ++v4;
    sub_1E14E1A28(v0 + 112);
    v3 = *(v15 + 16);
    v5 += 96;
    if (v4 == v3)
    {
      goto LABEL_8;
    }
  }

  swift_bridgeObjectRelease_n();
  sub_1E14E1A28(v0 + 112);

  sub_1E16F5534();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  *(v0 + 256) = *(v0 + 232);
  v17 = swift_task_alloc();
  *(v0 + 264) = v17;
  *v17 = v0;
  v17[1] = sub_1E1A64DD8;

  sub_1E16F1778();
}

uint64_t sub_1E1A64DD8(char a1)
{
  *(*v1 + 105) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E1A64ED8, 0, 0);
}

uint64_t sub_1E1A64ED8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 105);

  return v1(v2);
}

void sub_1E1A64F3C(void *a1)
{
  v2 = v1;
  v4 = sub_1E1AF503C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PresenterError(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  *(v1 + 32) = 0;
  v11 = v1 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v12 + 16) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E1307FE8(v1 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_pageUrl, v10 + *(v8 + 20));
  *v10 = a1;
  swift_beginAccess();
  v14 = *(v1 + 16);
  if (v14)
  {
    v29 = v7;
    v30 = v5;
    sub_1E1A66608(&qword_1EE1DFCE0, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v31 = v8;
    v28 = swift_allocError();
    sub_1E1A66540(v10, v15, type metadata accessor for PresenterError);
    v16 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v17 = *(v14 + v16);
    v18 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1E172D0E4(0, v17[2] + 1, 1, v17);
      *(v14 + v16) = v17;
    }

    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      v17 = sub_1E172D0E4((v20 > 1), v21 + 1, 1, v17);
    }

    v17[2] = v21 + 1;
    v17[v21 + 4] = v28;
    *(v14 + v16) = v17;
    swift_endAccess();

    v5 = v30;
    v7 = v29;
  }

  else
  {
    v22 = a1;
  }

  swift_beginAccess();
  if (*(v2 + 24))
  {
    *v7 = a1;
    (*(v5 + 104))(v7, *MEMORY[0x1E69AB430], v4);
    v23 = a1;

    sub_1E1AF508C();

    (*(v5 + 8))(v7, v4);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v11 + 8);
    v25 = swift_getObjectType();
    sub_1E1A66608(&qword_1EE1DFCE0, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v26 = swift_allocError();
    sub_1E1A66540(v10, v27, type metadata accessor for PresenterError);
    (*(*(v24 + 16) + 24))(v26, v25);
    swift_unknownObjectRelease();
    sub_1E1A665A8(v10, type metadata accessor for PresenterError);
  }

  else
  {
    sub_1E1A665A8(v10, type metadata accessor for PresenterError);
  }
}

void sub_1E1A6539C(uint64_t a1)
{
  v2 = v1;
  v25 = sub_1E1AF503C();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  *(v1 + v11) = a1;

  v12 = v1 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v13 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v15 = *(v1 + 16);
  if (v15)
  {

    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v17 = v16;
    (*(v8 + 8))(v10, v7);
    v18 = v15 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v18 = v17;
    *(v18 + 8) = 0;
    v19 = *(v15 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
    swift_beginAccess();
    *(v19 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  swift_beginAccess();
  if (*(v2 + 24))
  {
    v20 = OBJC_IVAR____TtC11AppStoreKit18GenericAccountPage_pageMetrics;
    v21 = sub_1E1AF3C3C();
    (*(*(v21 - 8) + 16))(v6, a1 + v20, v21);
    v22 = v25;
    (*(v4 + 104))(v6, *MEMORY[0x1E69AB440], v25);

    sub_1E1AF508C();

    (*(v4 + 8))(v6, v22);
  }

  swift_beginAccess();
  *(v2 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v12 + 8);
    v24 = swift_getObjectType();
    (*(*(v23 + 16) + 16))(v24);
    swift_unknownObjectRelease();
  }
}

void sub_1E1A65764(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + 32);
    if ((v5 & 0xC000000000000001) != 0)
    {

      MEMORY[0x1E68FFD80](a1, v5);

      swift_unknownObjectRelease();
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {

        return;
      }

      __break(1u);
    }
  }
}

void sub_1E1A65840(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + 32);
    if ((v5 & 0xC000000000000001) != 0)
    {

      MEMORY[0x1E68FFD80](a1, v5);

      swift_unknownObjectRelease();
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {

        return;
      }

      __break(1u);
    }
  }
}

void sub_1E1A65914(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + 32);
    if ((v5 & 0xC000000000000001) != 0)
    {

      MEMORY[0x1E68FFD80](a1, v5);

      goto LABEL_6;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

LABEL_6:

      return;
    }

    __break(1u);
  }
}

void sub_1E1A659F0(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + 32);

    v6 = sub_1E1AF019C();
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E68FFD80](v6, v5);
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v7 = *(v5 + 8 * v6 + 32);
    }

    v8 = *(v7 + 40);

    v9 = sub_1E1AF018C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 < *(v8 + 16))
      {
        sub_1E14E19F0(v8 + 96 * v9 + 32, a1);

        return;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = -1;
}

unint64_t sub_1E1A65B1C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_page;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 32);

  result = sub_1E1AF019C();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E68FFD80](result, v3);
  }

  else
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (result >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v5 = *(v3 + 8 * result + 32);
  }

  v6 = *(v5 + 40);

  result = sub_1E1AF018C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v6 + 16))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  sub_1E14E19F0(v6 + 96 * result + 32, &v12);

  *&v11[9] = *&v16[9];
  v9 = v14;
  v10 = v15;
  *v11 = *v16;
  v7 = v12;
  v8 = v13;
  if (v16[24])
  {
    sub_1E14E1A28(&v7);
    return 0;
  }

  v14 = v9;
  v15 = v10;
  *v16 = *v11;
  *&v16[16] = *&v11[16];
  v12 = v7;
  v13 = v8;

  sub_1E14E1A58(&v12);
  return v9;
}

void sub_1E1A65C94(char a1)
{
  sub_1E16F5534();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E16F4B34(a1);
}

double sub_1E1A65D40()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);

  return result;
}

uint64_t GenericAccountPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);

  return v0;
}

uint64_t GenericAccountPagePresenter.__deallocating_deinit()
{
  v0 = BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_view;

  sub_1E1337DEC(v2 + v1);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit27GenericAccountPagePresenter_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A65EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericAccountPageIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1A65F20(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for GenericAccountPageIntent(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E130B5DC;

  return sub_1E1A64128(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_1E1A66064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E1A63C1C(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for GenericAccountPagePresenter(uint64_t a1)
{
  result = qword_1ECEBD200;
  if (!qword_1ECEBD200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1A66178(uint64_t a1)
{
  sub_1E130072C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1A66540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1A665A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1A66608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double resolveAll<A>(futures:publisherQueue:andThen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a4;
  v40 = a2;
  v7 = sub_1E1AF320C();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF324C();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF6D9C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = dispatch_group_create();
  v16 = swift_allocObject();
  (*(*(a5 - 8) + 56))(v14, 1, 1, a5);
  sub_1E1AF589C();
  v17 = sub_1E1AF62BC();
  v18 = sub_1E1A67448(v14, v17, v11);
  (*(v12 + 8))(v14, v11);
  *(v16 + 16) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x1E69E7CC0];
  v50 = a1;
  v20 = sub_1E1AF635C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1E68FEE20](&aBlock, v20, WitnessTable);
  v49 = aBlock;
  sub_1E1AF726C();
  sub_1E1AF723C();
  sub_1E1AF725C();
  sub_1E1AF724C();
  if (v44)
  {
    v22 = aBlock;
    do
    {

      dispatch_group_enter(v15);
      sub_1E1AF63BC();
      v23 = swift_allocObject();
      v23[2] = a5;
      v23[3] = v16;
      v23[4] = v22;
      v23[5] = v15;
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      *(v24 + 24) = v15;
      v25 = v15;

      sub_1E1365864(&aBlock);
      sub_1E1AF57FC();

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      sub_1E1AF724C();
      v22 = aBlock;
    }

    while (v44);
  }

  v26 = swift_allocObject();
  v27 = v34;
  v28 = v35;
  v26[2] = a5;
  v26[3] = v27;
  v26[4] = v28;
  v26[5] = v16;
  v26[6] = v19;
  v47 = sub_1E1A6754C;
  v48 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1E1302D64;
  v46 = &block_descriptor_104;
  v29 = _Block_copy(&aBlock);

  v30 = v36;
  sub_1E1AF322C();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FE650();
  v31 = v39;
  v32 = v42;
  sub_1E1AF6EEC();
  sub_1E1AF688C();
  _Block_release(v29);

  (*(v41 + 8))(v31, v32);
  (*(v37 + 8))(v30, v38);

  return result;
}

uint64_t ResolveAllError.hashValue.getter()
{
  sub_1E1AF762C();
  MEMORY[0x1E6900360](0);
  return sub_1E1AF767C();
}

double resolveAllSequentially<A>(futures:publisherQueue:andThen:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t a5)
{
  v23[2] = a4;
  v24 = a3;
  v7 = sub_1E1AF6D9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - v9;
  v11 = dispatch_group_create();
  v12 = swift_allocObject();
  (*(*(a5 - 8) + 56))(v10, 1, 1, a5);
  sub_1E1AF589C();
  v13 = sub_1E1AF62BC();
  v14 = sub_1E1A67448(v10, v13, v7);
  (*(v8 + 8))(v10, v7);
  *(v12 + 16) = v14;
  v23[1] = v12 + 16;
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x1E69E7CC0];
  v28 = a1;
  v16 = sub_1E1AF635C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1E68FEE20](&v25, v16, WitnessTable);
  v27 = v25;
  sub_1E1AF726C();
  sub_1E1AF723C();
  sub_1E1AF725C();
  sub_1E1AF724C();
  if (v26)
  {
    v18 = v25;
    do
    {

      v19 = objc_autoreleasePoolPush();
      sub_1E1A6701C(v11, a1, v18, v12, v15, a5);
      objc_autoreleasePoolPop(v19);
      sub_1E1AF687C();
      sub_1E1AF724C();
      v18 = v25;
    }

    while (v26);
  }

  swift_beginAccess();
  v20 = *(v12 + 16);
  swift_beginAccess();
  v21 = *(v15 + 16);

  (v24)(v20, v21);

  return result;
}

uint64_t sub_1E1A6701C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  dispatch_group_enter(a1);
  sub_1E1AF589C();
  sub_1E1AF63BC();
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a4;
  v11[4] = a3;
  v11[5] = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a1;
  v13 = a1;

  sub_1E1365864(v15);
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void sub_1E1A6715C(uint64_t a1, uint64_t a2, unint64_t a3, NSObject *a4, uint64_t a5)
{
  v10 = sub_1E1AF6D9C();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v15 = *(a5 - 8);
  (*(v15 + 16))(&v17 - v13, a1, a5, v12);
  (*(v15 + 56))(v14, 0, 1, a5);
  swift_beginAccess();
  sub_1E1AF635C();
  sub_1E1AF626C();
  v16 = *(a2 + 16);
  sub_1E1A673F4(a3, v16, v10);
  (*(v11 + 40))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a3, v14, v10);
  swift_endAccess();
  dispatch_group_leave(a4);
}

void sub_1E1A67310(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E172D0E4(0, v6[2] + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1E172D0E4((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v6[v9 + 4] = a1;
  *(a2 + 16) = v6;
  swift_endAccess();
  v10 = a1;
  dispatch_group_leave(a3);
}

uint64_t sub_1E1A673F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1E1A67448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E1AF627C();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1E1AF635C();
    return v8;
  }

  return result;
}

unint64_t sub_1E1A6759C()
{
  result = qword_1ECEBD220;
  if (!qword_1ECEBD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBD220);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{

  return swift_deallocObject();
}

void *ExternalUrlAction.__allocating_init(title:urlString:isSensitive:allowFromLockscreen:timeoutSeconds:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = a8;
  v54 = a7;
  v53 = a6;
  v51 = a5;
  v57 = a3;
  v58 = a2;
  v56 = a1;
  v59 = a9;
  v60 = a11;
  v50 = sub_1E1AEFEAC();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v46 - v13;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v46 - v19;
  v21 = sub_1E1AEFCCC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  sub_1E1AEFCAC();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    (*(v15 + 8))(v60, v14);

    sub_1E1308058(v20, &unk_1ECEB4B60, &unk_1E1B02620);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v47 = a10;
    (*(v22 + 32))(v24, v20, v21);
    (*(v22 + 16))(v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url, v24, v21);
    *(v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = v51 & 1;
    *(v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = v53 & 1;
    v26 = v25 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
    *v26 = v54;
    v26[8] = v55 & 1;
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    v27 = *(v15 + 16);
    v57 = v17;
    v28 = v60;
    v27(v17, v60, v14);
    v29 = sub_1E1AF46DC();
    v30 = v52;
    (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
    v31 = (v25 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v31 = 0u;
    v31[1] = 0u;
    sub_1E138853C(v69, &v63);
    v32 = v14;
    if (*(&v64 + 1))
    {
      v33 = v28;
      v66 = v63;
      v67 = v64;
      v68 = v65;
    }

    else
    {
      v34 = v48;
      sub_1E1AEFE9C();
      v35 = sub_1E1AEFE7C();
      v36 = v30;
      v37 = v32;
      v39 = v38;
      (*(v49 + 8))(v34, v50);
      v61 = v35;
      v62 = v39;
      v32 = v37;
      v30 = v36;
      sub_1E1AF6F6C();
      sub_1E1308058(&v63, &unk_1ECEB5670, qword_1E1B03EC0);
      v33 = v60;
    }

    v41 = v58;
    v40 = v59;
    (*(v15 + 8))(v33, v32);
    sub_1E1308058(v69, &unk_1ECEB5670, qword_1E1B03EC0);
    (*(v22 + 8))(v24, v21);
    v42 = v25 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v43 = v67;
    *v42 = v66;
    *(v42 + 1) = v43;
    *(v42 + 4) = v68;
    sub_1E134B7C8(v30, v25 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
    v25[2] = v56;
    v25[3] = v41;
    v44 = v47;
    v25[4] = v40;
    v25[5] = v44;
    (*(v15 + 32))(v25 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v57, v32);
  }

  return v25;
}

void *ExternalUrlAction.init(title:urlString:isSensitive:allowFromLockscreen:timeoutSeconds:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  LODWORD(v52) = a8;
  v51 = a7;
  v50 = a6;
  v49 = a5;
  v54 = a3;
  v57 = a2;
  v53 = a1;
  v55 = a11;
  v56 = a9;
  v48 = *v11;
  v47 = sub_1E1AEFEAC();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v44 - v22;
  v24 = sub_1E1AEFCCC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFCAC();

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    (*(v18 + 8))(v55, v17);

    sub_1E1308058(v23, &unk_1ECEB4B60, &unk_1E1B02620);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v48 = a10;
    (*(v25 + 32))(v27, v23, v24);
    (*(v25 + 16))(v12 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url, v27, v24);
    *(v12 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = v49 & 1;
    *(v12 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = v50 & 1;
    v28 = v12 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
    *v28 = v51;
    v28[8] = v52 & 1;
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    v29 = *(v18 + 16);
    v54 = v20;
    v30 = v55;
    v29(v20, v55, v17);
    v31 = sub_1E1AF46DC();
    (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
    v32 = (v12 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v32 = 0u;
    v32[1] = 0u;
    sub_1E138853C(v66, &v60);
    v33 = v16;
    if (*(&v61 + 1))
    {
      v63 = v60;
      v64 = v61;
      v65 = v62;
    }

    else
    {
      v34 = v45;
      sub_1E1AEFE9C();
      v35 = sub_1E1AEFE7C();
      v52 = v33;
      v37 = v36;
      (*(v46 + 8))(v34, v47);
      v58 = v35;
      v59 = v37;
      v33 = v52;
      sub_1E1AF6F6C();
      sub_1E1308058(&v60, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    v39 = v56;
    v38 = v57;
    (*(v18 + 8))(v30, v17);
    sub_1E1308058(v66, &unk_1ECEB5670, qword_1E1B03EC0);
    (*(v25 + 8))(v27, v24);
    v40 = v12 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    *(v40 + 4) = v65;
    v41 = v64;
    *v40 = v63;
    *(v40 + 1) = v41;
    sub_1E134B7C8(v33, v12 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
    v12[2] = v53;
    v12[3] = v38;
    v42 = v48;
    v12[4] = v39;
    v12[5] = v42;
    (*(v18 + 32))(v12 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v54, v17);
  }

  return v12;
}

uint64_t ExternalUrlAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v72 = v3;
  v61 = *v3;
  v5 = sub_1E1AF39DC();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E1AF3D0C();
  v7 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = sub_1E1AEFCCC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v58 = v13;
  v28 = *(v13 + 8);
  v74 = v12;
  v73 = v28;
  v28(v24, v12);
  v66 = v26;
  v67 = v25;
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    sub_1E1308058(v11, &unk_1ECEB4B60, &unk_1E1B02620);
    v29 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v30 = 7107189;
    v31 = v61;
    v30[1] = 0xE300000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x1E69AB690], v29);
    swift_willThrow();
    (*(v70 + 8))(v68, v71);
    v73(v69, v74);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v65;
    v32 = v66;
    v34 = v67;
    (*(v66 + 32))(v65, v11, v67);
    v35 = v72;
    (*(v32 + 16))(v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url, v33, v34);
    v36 = v69;
    sub_1E1AF381C();
    LOBYTE(v34) = sub_1E1AF370C();
    v37 = v21;
    v38 = v60;
    v39 = v73;
    v73(v37, v74);
    v40 = v39;
    v41 = v35;
    *(v35 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = v34 & 1;
    v42 = v56;
    sub_1E1AF381C();
    LOBYTE(v34) = sub_1E1AF370C();
    v40(v42, v74);
    *(v41 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = v34 & 1;
    v43 = v57;
    sub_1E1AF381C();
    v44 = v62;
    (*(v7 + 104))(v38, *MEMORY[0x1E69AAFD0], v62);
    v45 = sub_1E1AF36BC();
    LOBYTE(v40) = v46;
    (*(v7 + 8))(v38, v44);
    v47 = v36;
    v73(v43, v74);
    v48 = v74;
    v29 = v72;
    v49 = v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
    *v49 = v45;
    v49[8] = v40 & 1;
    v50 = v59;
    (*(v58 + 16))(v59, v47, v48);
    v51 = v63;
    v52 = v68;
    (*(v70 + 16))(v63, v68, v71);
    v53 = v64;
    v54 = Action.init(deserializing:using:)(v50, v51);
    if (!v53)
    {
      v29 = v54;
    }

    (*(v70 + 8))(v52, v71);
    v73(v47, v48);
    (*(v66 + 8))(v65, v67);
  }

  return v29;
}

uint64_t ExternalUrlAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E1A68BAC()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url;
  v2 = sub_1E1AEFCCC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t ExternalUrlAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v3 = OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url;
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ExternalUrlAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v3 = OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url;
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExternalUrlAction(uint64_t a1)
{
  result = qword_1EE1F1688;
  if (!qword_1EE1F1688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1A68EC4(uint64_t a1)
{
  result = sub_1E1AEFCCC();
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

uint64_t ProductReviewCustomLayout.Metrics.horizontalContentPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t ProductReviewCustomLayout.Metrics.verticalContentPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t ProductReviewCustomLayout.Metrics.init(horizontalContentPadding:verticalContentPadding:ratingsTopSpace:dateAuthorLeadingPadding:dateAuthorTopPadding:ratingsAccessibilityTopPadding:dateAccessibilityTopPadding:bodyTopPadding:responseTitleTopPadding:responseTitleAccessibilityTopPadding:responseDateAccessibilityTopPadding:responseBodyTopPadding:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11, __int128 *a12, __int128 *a13)
{
  sub_1E1308EC0(a1, a9);
  sub_1E1308EC0(a2, a9 + 40);
  sub_1E1308EC0(a3, a9 + 80);
  sub_1E1308EC0(a4, a9 + 120);
  sub_1E1308EC0(a5, a9 + 160);
  sub_1E1308EC0(a6, a9 + 200);
  sub_1E1308EC0(a7, a9 + 240);
  sub_1E1308EC0(a8, a9 + 280);
  sub_1E1308EC0(a10, a9 + 320);
  sub_1E1308EC0(a11, a9 + 360);
  sub_1E1308EC0(a12, a9 + 400);

  return sub_1E1308EC0(a13, a9 + 440);
}

uint64_t ProductReviewCustomLayout.init(metrics:titleLabel:dateLabel:authorLabel:dateAuthorLabel:bodyLabel:responseTitleLabel:responseDateLabel:responseBodyLabel:hasResponse:ratingsView:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, _BYTE *a9@<X8>, __int128 *a10, char a11, __int128 *a12)
{
  memcpy(a9, __src, 0x1E0uLL);
  sub_1E1308EC0(a2, (a9 + 480));
  sub_1E1308EC0(a3, (a9 + 520));
  sub_1E1308EC0(a4, (a9 + 560));
  sub_1E1308EC0(a5, (a9 + 600));
  sub_1E1308EC0(a6, (a9 + 640));
  sub_1E1308EC0(a7, (a9 + 680));
  sub_1E1308EC0(a8, (a9 + 720));
  sub_1E1308EC0(a10, (a9 + 760));
  a9[840] = a11;

  return sub_1E1308EC0(a12, (a9 + 800));
}

uint64_t ProductReviewCustomLayout.layout.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v3 = sub_1E1AF1B9C();
  v107 = *(v3 - 8);
  v108 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v109 = (&v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v106 = (&v95 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v105 = (&v95 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v104 = (&v95 - v10);
  v116 = sub_1E1AF15FC();
  v122 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v95 - v14;
  v16 = sub_1E1AF1BEC();
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1E1AF1C1C();
  v123 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v124 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF13EC();
  v112 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v101 = &v95 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v95 - v27;
  v115 = &v95 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v117 = &v95 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v118 = &v95 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v121 = &v95 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v103 = &v95 - v36;
  sub_1E1AF13CC();
  sub_1E1AF13DC();
  v113 = *(v20 + 8);
  v114 = v20 + 8;
  v113(v28, v19);
  v37 = v12;
  v99 = v12;
  sub_1E1AF15DC();
  sub_1E1300B24(v2 + 800, v138);
  sub_1E1300B24(v2 + 80, v135);
  v38 = sub_1E1AF140C();
  v133 = v38;
  v134 = MEMORY[0x1E69AB908];
  v39 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v132);
  sub_1E1AF13FC();
  v130 = v38;
  v131 = v39;
  __swift_allocate_boxed_opaque_existential_0(v129);
  sub_1E1AF13FC();
  v127 = v38;
  v128 = v39;
  __swift_allocate_boxed_opaque_existential_0(v126);
  sub_1E1AF13FC();
  v40 = v16;
  v125[3] = v16;
  v125[4] = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v125);
  sub_1E1AF1BFC();
  sub_1E1AF15EC();
  v41 = v122 + 8;
  v42 = *(v122 + 8);
  v43 = v37;
  v44 = v116;
  v42(v43, v116);
  v98 = v42;
  v122 = v41;
  __swift_destroy_boxed_opaque_existential_1(v125);
  sub_1E1300B24(v2 + 600, v125);
  sub_1E1300B24(v2 + 120, v135);
  v133 = v38;
  v134 = v39;
  __swift_allocate_boxed_opaque_existential_0(v132);
  sub_1E1AF13FC();
  v130 = v38;
  v131 = v39;
  __swift_allocate_boxed_opaque_existential_0(v129);
  sub_1E1AF13FC();
  v127 = v38;
  v128 = v39;
  __swift_allocate_boxed_opaque_existential_0(v126);
  sub_1E1AF13FC();
  v139 = v40;
  v111 = v40;
  v140 = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v138);
  sub_1E1AF1BFC();
  v125[3] = v44;
  v125[4] = MEMORY[0x1E69AB968];
  __swift_allocate_boxed_opaque_existential_0(v125);
  v97 = v15;
  sub_1E1AF15EC();
  v42(v15, v44);
  __swift_destroy_boxed_opaque_existential_1(v138);
  sub_1E1300B24(v2 + 160, v138);
  v136 = v38;
  v137 = v39;
  __swift_allocate_boxed_opaque_existential_0(v135);
  sub_1E1AF13FC();
  v133 = v38;
  v134 = v39;
  __swift_allocate_boxed_opaque_existential_0(v132);
  sub_1E1AF13FC();
  v130 = v38;
  v131 = v39;
  __swift_allocate_boxed_opaque_existential_0(v129);
  sub_1E1AF13FC();
  v45 = v119;
  sub_1E1AF1BFC();
  v102 = sub_1E1A6A6C0(&qword_1EE1E3CC0, MEMORY[0x1E69ABB48], MEMORY[0x1E69ABB38]);
  MEMORY[0x1E68FA950](v45, v40, v102);
  v46 = v96;
  sub_1E1AF13CC();
  sub_1E1A6A608(v2, v125);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v125, 0x349uLL);
  v48 = v100;
  sub_1E1AF13DC();

  v49 = v112;
  v50 = v113;
  v113(v46, v112);
  sub_1E1A6A608(v2, v125);
  v51 = swift_allocObject();
  memcpy((v51 + 16), v125, 0x349uLL);
  v52 = v101;
  sub_1E1AF13DC();

  v50(v48, v49);
  v53 = v115;
  sub_1E1AF13DC();
  v54 = v49;
  v50(v52, v49);
  v55 = v50;
  v56 = v120;
  v125[3] = v120;
  v125[4] = MEMORY[0x1E69ABB50];
  __swift_allocate_boxed_opaque_existential_0(v125);
  v101 = sub_1E1A6A6C0(&qword_1EE1E3CC8, MEMORY[0x1E69AB900], MEMORY[0x1E69AB8F0]);
  v57 = v124;
  sub_1E1AF1C0C();
  v55(v53, v54);
  v58 = *(v123 + 8);
  v123 += 8;
  v100 = v58;
  (v58)(v57, v56);
  v59 = v117;
  v60 = v118;
  sub_1E1AF13DC();
  v61 = v54;
  v55(v59, v54);
  v62 = v55;
  __swift_destroy_boxed_opaque_existential_1(v125);
  sub_1E1300B24(v2 + 640, v138);
  sub_1E1300B24(v2 + 280, v135);
  v133 = v38;
  v63 = MEMORY[0x1E69AB908];
  v134 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v132);
  sub_1E1AF13FC();
  v130 = v38;
  v131 = v63;
  __swift_allocate_boxed_opaque_existential_0(v129);
  sub_1E1AF13FC();
  v127 = v38;
  v128 = v63;
  __swift_allocate_boxed_opaque_existential_0(v126);
  sub_1E1AF13FC();
  v64 = v111;
  v125[3] = v111;
  v125[4] = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v125);
  sub_1E1AF1BFC();
  sub_1E1AF13DC();
  v62(v60, v61);
  __swift_destroy_boxed_opaque_existential_1(v125);
  v65 = v99;
  sub_1E1AF15DC();
  sub_1E1300B24(v2 + 680, v138);
  v136 = v38;
  v137 = v63;
  __swift_allocate_boxed_opaque_existential_0(v135);
  sub_1E1AF13FC();
  v133 = v38;
  v134 = v63;
  __swift_allocate_boxed_opaque_existential_0(v132);
  sub_1E1AF13FC();
  v130 = v38;
  v131 = v63;
  __swift_allocate_boxed_opaque_existential_0(v129);
  sub_1E1AF13FC();
  v127 = v38;
  v128 = v63;
  __swift_allocate_boxed_opaque_existential_0(v126);
  sub_1E1AF13FC();
  v125[3] = v64;
  v66 = v64;
  v67 = MEMORY[0x1E69ABB40];
  v125[4] = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v125);
  sub_1E1AF1BFC();
  v68 = v97;
  sub_1E1AF15EC();
  v69 = v65;
  v70 = v116;
  v71 = v98;
  v98(v69, v116);
  __swift_destroy_boxed_opaque_existential_1(v125);
  sub_1E1300B24(v2 + 720, v125);
  sub_1E1300B24(v2 + 120, v135);
  v133 = v38;
  v134 = v63;
  __swift_allocate_boxed_opaque_existential_0(v132);
  sub_1E1AF13FC();
  v130 = v38;
  v131 = v63;
  __swift_allocate_boxed_opaque_existential_0(v129);
  sub_1E1AF13FC();
  v127 = v38;
  v128 = v63;
  __swift_allocate_boxed_opaque_existential_0(v126);
  sub_1E1AF13FC();
  v139 = v66;
  v140 = v67;
  __swift_allocate_boxed_opaque_existential_0(v138);
  sub_1E1AF1BFC();
  v125[3] = v70;
  v125[4] = MEMORY[0x1E69AB968];
  __swift_allocate_boxed_opaque_existential_0(v125);
  sub_1E1AF15EC();
  v71(v68, v70);
  __swift_destroy_boxed_opaque_existential_1(v138);
  sub_1E1300B24(v2 + 320, v138);
  v136 = v38;
  v137 = v63;
  __swift_allocate_boxed_opaque_existential_0(v135);
  sub_1E1AF13FC();
  v133 = v38;
  v134 = v63;
  __swift_allocate_boxed_opaque_existential_0(v132);
  sub_1E1AF13FC();
  v130 = v38;
  v131 = v63;
  __swift_allocate_boxed_opaque_existential_0(v129);
  sub_1E1AF13FC();
  v72 = v119;
  sub_1E1AF1BFC();
  MEMORY[0x1E68FA950](v72, v66, v102);
  v73 = v115;
  sub_1E1AF13CC();
  sub_1E1A6A608(v2, v125);
  v74 = swift_allocObject();
  memcpy((v74 + 16), v125, 0x349uLL);
  v75 = v117;
  sub_1E1AF13DC();

  v76 = v112;
  v77 = v113;
  v113(v73, v112);
  sub_1E1A6A608(v2, v125);
  v78 = swift_allocObject();
  memcpy((v78 + 16), v125, 0x349uLL);
  v79 = v118;
  sub_1E1AF13DC();

  v77(v75, v76);
  v80 = v120;
  v139 = v120;
  v140 = MEMORY[0x1E69ABB50];
  __swift_allocate_boxed_opaque_existential_0(v138);
  v81 = v76;
  v82 = v124;
  sub_1E1AF1C0C();
  v77(v79, v76);
  (v100)(v82, v80);
  sub_1E1A6A608(v2, v125);
  v83 = swift_allocObject();
  memcpy((v83 + 16), v125, 0x349uLL);
  v84 = v103;
  v85 = v121;
  sub_1E1AF13DC();

  v77(v85, v76);
  __swift_destroy_boxed_opaque_existential_1(v138);
  sub_1E1300B24(v2 + 760, v125);
  sub_1E1300B24(v2 + 440, v138);
  v133 = v38;
  v86 = MEMORY[0x1E69AB908];
  v134 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v132);
  sub_1E1AF13FC();
  v130 = v38;
  v131 = v86;
  __swift_allocate_boxed_opaque_existential_0(v129);
  sub_1E1AF13FC();
  v127 = v38;
  v128 = v86;
  __swift_allocate_boxed_opaque_existential_0(v126);
  sub_1E1AF13FC();
  v87 = v111;
  v136 = v111;
  v88 = MEMORY[0x1E69ABB40];
  v137 = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v135);
  sub_1E1AF1BFC();
  sub_1E1A6A608(v2, v125);
  v89 = swift_allocObject();
  memcpy((v89 + 16), v125, 0x349uLL);
  v139 = v81;
  v140 = MEMORY[0x1E69AB8F8];
  __swift_allocate_boxed_opaque_existential_0(v138);
  sub_1E1AF13DC();

  v77(v84, v81);
  __swift_destroy_boxed_opaque_existential_1(v135);
  sub_1E1300B24(v2 + 40, v135);
  sub_1E1300B24(v2, v132);
  sub_1E1300B24(v2 + 40, v129);
  sub_1E1300B24(v2, v126);
  v125[3] = v87;
  v125[4] = v88;
  __swift_allocate_boxed_opaque_existential_0(v125);
  sub_1E1AF1BFC();
  v90 = v104;
  *v104 = sub_1E16811D4;
  v90[1] = 0;
  v91 = v108;
  v92 = *(v107 + 104);
  v92(v90, *MEMORY[0x1E69ABAF8], v108);
  v93 = *MEMORY[0x1E69ABB08];
  v92(v105, v93, v91);
  v92(v106, v93, v91);
  v92(v109, v93, v91);
  return sub_1E1AF1BBC();
}

uint64_t sub_1E1A6A6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E1A6A7C0()
{
  result = qword_1EE1EAD10;
  if (!qword_1EE1EAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EAD10);
  }

  return result;
}

unint64_t sub_1E1A6A818()
{
  result = qword_1EE1EAD18[0];
  if (!qword_1EE1EAD18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1EAD18);
  }

  return result;
}

double sub_1E1A6A898(uint64_t a1, double a2, double a3)
{
  v3 = sub_1E1AF1BAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProductReviewCustomLayout.layout.getter(v6);
  sub_1E1AF1DAC();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_1E1A6A9BC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = sub_1E1AF1BAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProductReviewCustomLayout.layout.getter(v8);
  sub_1E1AF1D9C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E1A6AAD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1A6ADC0();

  return MEMORY[0x1EEE17F00](a1, a2, v4);
}

uint64_t sub_1E1A6AB2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 841))
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

uint64_t sub_1E1A6AB74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 840) = 0;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
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
      *(result + 841) = 1;
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

    *(result + 841) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1A6ACAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 480))
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

uint64_t sub_1E1A6ACF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
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
      *(result + 480) = 1;
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

    *(result + 480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E1A6ADC0()
{
  result = qword_1ECEBD228;
  if (!qword_1ECEBD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBD228);
  }

  return result;
}

uint64_t PageGridCache.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = sub_1E15A2D1C(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = sub_1E15A2D1C(v1);
  return v0;
}

uint64_t PageGridCache.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = sub_1E15A2D1C(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = sub_1E15A2D1C(v1);
  return v0;
}

void *sub_1E1A6AEAC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, double, double, double, double, double, double, double, double, double, double)@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v110 = a2;
  v91 = a6;
  v92 = a5;
  v90 = a4;
  v116 = a3;
  v114 = a14;
  v115 = a15;
  v112 = a7;
  v113 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0, &qword_1E1B2AE10);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v94 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v88 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v108 = &v88 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v97 = &v88 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  v117 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v88 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70, &unk_1E1B23CB0);
  MEMORY[0x1EEE9AC00](v34);
  v89 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v93 = &v88 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v95 = &v88 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v99 = &v88 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v88 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v88 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v88 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v88 - v52;
  sub_1E134FD1C(v110, &v88 - v52, &qword_1ECEB75A0, &qword_1E1B2AE10);
  sub_1E134FD1C(v116, &v53[*(v34 + 48)], &qword_1ECEB75A0, &qword_1E1B2AE10);
  (*(v117 + 16))(v33, v113, v31);
  v110 = v53;
  sub_1E134FD1C(v53, v50, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v54 = *(v34 + 48);
  sub_1E16EFA40(v50, v47);
  sub_1E16EFA40(&v50[v54], &v47[*(v34 + 48)]);
  swift_getKeyPath(byte_1E1B4F9C0);
  sub_1E1AF3DAC();

  v107 = v119[0];
  swift_getKeyPath(byte_1E1B4F9E0);
  sub_1E1AF3DAC();

  v106 = v119[0];
  swift_getKeyPath(byte_1E1B4FA00);
  sub_1E1AF3DAC();

  v105 = v119[0];
  swift_getKeyPath(byte_1E1B4FA20);
  v109 = v33;
  v55 = v97;
  sub_1E1AF3DAC();

  v104 = *&v119[16];
  v100 = *v119;
  v102 = *&v119[40];
  v103 = *&v119[32];
  v101 = *&v119[48];
  v98 = v47;
  sub_1E134FD1C(v47, v44, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v116 = v34;
  v56 = *(v34 + 48);
  sub_1E16EFA40(v44, v55);
  v57 = v117;
  v58 = *(v117 + 48);
  if (v58(v55, 1, v31) == 1)
  {
    sub_1E1308058(&v44[v56], &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v55, &qword_1ECEB75A0, &qword_1E1B2AE10);
    v59 = v116;
    v60 = v98;
  }

  else
  {
    swift_getKeyPath(byte_1E1B4F9E0);
    sub_1E1AF3DAC();

    v61 = v119[0];
    (*(v57 + 8))(v55, v31);
    sub_1E1308058(&v44[v56], &qword_1ECEB75A0, &qword_1E1B2AE10);
    v59 = v116;
    v60 = v98;
    if (v61 != 100)
    {
      goto LABEL_8;
    }
  }

  v62 = v93;
  sub_1E134FD1C(v60, v93, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v63 = v62 + *(v59 + 48);
  v64 = v62;
  v65 = v94;
  sub_1E16EFA40(v64, v94);
  if (v58(v65, 1, v31) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB75A0, &qword_1E1B2AE10);
    v61 = 100;
    v63 = v65;
  }

  else
  {
    swift_getKeyPath(byte_1E1B4F9C0);
    sub_1E1AF3DAC();

    v61 = v119[0];
    (*(v117 + 8))(v65, v31);
  }

  sub_1E1308058(v63, &qword_1ECEB75A0, &qword_1E1B2AE10);
LABEL_8:
  LODWORD(v98) = v61;
  v66 = v99;
  sub_1E134FD1C(v60, v99, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v67 = *(v59 + 48);
  v68 = v66;
  v69 = v108;
  sub_1E16EFA40(v66 + v67, v108);
  if (v58(v69, 1, v31) == 1)
  {
    sub_1E1308058(v66, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v69, &qword_1ECEB75A0, &qword_1E1B2AE10);
  }

  else
  {
    swift_getKeyPath(byte_1E1B4F9E0);
    sub_1E1AF3DAC();

    v70 = v119[0];
    v71 = v69;
    v72 = v68;
    v73 = *(v117 + 8);
    v73(v71, v31);
    sub_1E1308058(v72, &qword_1ECEB75A0, &qword_1E1B2AE10);
    if (v70 != 100)
    {
      sub_1E1308058(v60, &unk_1ECEB7E70, &unk_1E1B23CB0);
      v73(v109, v31);
      v75 = v116;
      goto LABEL_15;
    }
  }

  v74 = v95;
  sub_1E134FD1C(v60, v95, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v75 = v116;
  v76 = v96;
  sub_1E16EFA40(v74 + *(v116 + 48), v96);
  if (v58(v76, 1, v31) == 1)
  {
    sub_1E1308058(v60, &unk_1ECEB7E70, &unk_1E1B23CB0);
    (*(v117 + 8))(v109, v31);
    sub_1E1308058(v74, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v76, &qword_1ECEB75A0, &qword_1E1B2AE10);
    LOBYTE(v70) = 100;
  }

  else
  {
    swift_getKeyPath(byte_1E1B4F9C0);
    sub_1E1AF3DAC();

    sub_1E1308058(v60, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v77 = *(v117 + 8);
    v77(v109, v31);
    LOBYTE(v70) = v119[0];
    v77(v76, v31);
    sub_1E1308058(v74, &qword_1ECEB75A0, &qword_1E1B2AE10);
  }

LABEL_15:
  v120[0] = v107;
  v120[1] = v106;
  v120[2] = v105;
  v121 = v118[0];
  v122 = BYTE4(v118[0]);
  v123 = v100;
  v124 = v104;
  v125 = v103;
  v126 = v102;
  v127 = v101;
  v128 = v98;
  v129 = v70;
  v130 = *v119;
  v131 = *&v119[4];
  v132 = a8;
  v133 = a9;
  v134 = a10;
  v135 = a11;
  v136 = a12;
  v137 = a13;
  v138 = v114;
  v139 = v115;
  v140 = a16;
  v141 = a17;
  v78 = v111;
  swift_beginAccess();
  v79 = *(v78 + 16);
  if (!*(v79 + 16))
  {
LABEL_19:
    v83 = v110;
    v84 = v89;
    sub_1E134FD1C(v110, v89, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v85 = *(v75 + 48);
    v92(v118, v113, v84, v84 + v85, v90, a8, a9, a10, a11, a12, a13, v114, v115, a16, a17);
    sub_1E1308058(v84 + v85, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v84, &qword_1ECEB75A0, &qword_1E1B2AE10);
    memcpy(v119, v118, sizeof(v119));
    swift_beginAccess();
    sub_1E141D08C(v119, v118);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118[0] = *(v78 + 16);
    *(v78 + 16) = 0x8000000000000000;
    sub_1E159C2C8(v119, v120, isUniquelyReferenced_nonNull_native);
    sub_1E15A43AC(v120);
    *(v78 + 16) = v118[0];
    swift_endAccess();
    v82 = v83;
    goto LABEL_20;
  }

  v80 = sub_1E1595EB8(v120);
  if ((v81 & 1) == 0)
  {

    goto LABEL_19;
  }

  memcpy(v119, (*(v79 + 56) + 392 * v80), sizeof(v119));
  sub_1E141D08C(v119, v118);
  sub_1E15A43AC(v120);

  v82 = v110;
LABEL_20:
  sub_1E1308058(v82, &unk_1ECEB7E70, &unk_1E1B23CB0);
  return memcpy(v112, v119, 0x188uLL);
}

void *sub_1E1A6BA00@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, double, double, double, double, double, double, double, double, double, double)@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v110 = a2;
  v91 = a6;
  v92 = a5;
  v90 = a4;
  v116 = a3;
  v114 = a14;
  v115 = a15;
  v112 = a7;
  v113 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0, &qword_1E1B2AE10);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v94 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v88 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v108 = &v88 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v97 = &v88 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  v117 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v88 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70, &unk_1E1B23CB0);
  MEMORY[0x1EEE9AC00](v34);
  v89 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v93 = &v88 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v95 = &v88 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v99 = &v88 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v88 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v88 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v88 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v88 - v52;
  sub_1E134FD1C(v110, &v88 - v52, &qword_1ECEB75A0, &qword_1E1B2AE10);
  sub_1E134FD1C(v116, &v53[*(v34 + 48)], &qword_1ECEB75A0, &qword_1E1B2AE10);
  (*(v117 + 16))(v33, v113, v31);
  v110 = v53;
  sub_1E134FD1C(v53, v50, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v54 = *(v34 + 48);
  sub_1E16EFA40(v50, v47);
  sub_1E16EFA40(&v50[v54], &v47[*(v34 + 48)]);
  swift_getKeyPath(byte_1E1B4F9C0);
  sub_1E1AF3DAC();

  v107 = v119[0];
  swift_getKeyPath(byte_1E1B4F9E0);
  sub_1E1AF3DAC();

  v106 = v119[0];
  swift_getKeyPath(byte_1E1B4FA00);
  sub_1E1AF3DAC();

  v105 = v119[0];
  swift_getKeyPath(byte_1E1B4FA20);
  v109 = v33;
  v55 = v97;
  sub_1E1AF3DAC();

  v104 = *&v119[16];
  v100 = *v119;
  v102 = *&v119[40];
  v103 = *&v119[32];
  v101 = *&v119[48];
  v98 = v47;
  sub_1E134FD1C(v47, v44, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v116 = v34;
  v56 = *(v34 + 48);
  sub_1E16EFA40(v44, v55);
  v57 = v117;
  v58 = *(v117 + 48);
  if (v58(v55, 1, v31) == 1)
  {
    sub_1E1308058(&v44[v56], &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v55, &qword_1ECEB75A0, &qword_1E1B2AE10);
    v59 = v116;
    v60 = v98;
  }

  else
  {
    swift_getKeyPath(byte_1E1B4F9E0);
    sub_1E1AF3DAC();

    v61 = v119[0];
    (*(v57 + 8))(v55, v31);
    sub_1E1308058(&v44[v56], &qword_1ECEB75A0, &qword_1E1B2AE10);
    v59 = v116;
    v60 = v98;
    if (v61 != 100)
    {
      goto LABEL_8;
    }
  }

  v62 = v93;
  sub_1E134FD1C(v60, v93, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v63 = v62 + *(v59 + 48);
  v64 = v62;
  v65 = v94;
  sub_1E16EFA40(v64, v94);
  if (v58(v65, 1, v31) == 1)
  {
    sub_1E1308058(v63, &qword_1ECEB75A0, &qword_1E1B2AE10);
    v61 = 100;
    v63 = v65;
  }

  else
  {
    swift_getKeyPath(byte_1E1B4F9C0);
    sub_1E1AF3DAC();

    v61 = v119[0];
    (*(v117 + 8))(v65, v31);
  }

  sub_1E1308058(v63, &qword_1ECEB75A0, &qword_1E1B2AE10);
LABEL_8:
  LODWORD(v98) = v61;
  v66 = v99;
  sub_1E134FD1C(v60, v99, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v67 = *(v59 + 48);
  v68 = v66;
  v69 = v108;
  sub_1E16EFA40(v66 + v67, v108);
  if (v58(v69, 1, v31) == 1)
  {
    sub_1E1308058(v66, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v69, &qword_1ECEB75A0, &qword_1E1B2AE10);
  }

  else
  {
    swift_getKeyPath(byte_1E1B4F9E0);
    sub_1E1AF3DAC();

    v70 = v119[0];
    v71 = v69;
    v72 = v68;
    v73 = *(v117 + 8);
    v73(v71, v31);
    sub_1E1308058(v72, &qword_1ECEB75A0, &qword_1E1B2AE10);
    if (v70 != 100)
    {
      sub_1E1308058(v60, &unk_1ECEB7E70, &unk_1E1B23CB0);
      v73(v109, v31);
      v75 = v116;
      goto LABEL_15;
    }
  }

  v74 = v95;
  sub_1E134FD1C(v60, v95, &unk_1ECEB7E70, &unk_1E1B23CB0);
  v75 = v116;
  v76 = v96;
  sub_1E16EFA40(v74 + *(v116 + 48), v96);
  if (v58(v76, 1, v31) == 1)
  {
    sub_1E1308058(v60, &unk_1ECEB7E70, &unk_1E1B23CB0);
    (*(v117 + 8))(v109, v31);
    sub_1E1308058(v74, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v76, &qword_1ECEB75A0, &qword_1E1B2AE10);
    LOBYTE(v70) = 100;
  }

  else
  {
    swift_getKeyPath(byte_1E1B4F9C0);
    sub_1E1AF3DAC();

    sub_1E1308058(v60, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v77 = *(v117 + 8);
    v77(v109, v31);
    LOBYTE(v70) = v119[0];
    v77(v76, v31);
    sub_1E1308058(v74, &qword_1ECEB75A0, &qword_1E1B2AE10);
  }

LABEL_15:
  v120[0] = v107;
  v120[1] = v106;
  v120[2] = v105;
  v121 = v118[0];
  v122 = BYTE4(v118[0]);
  v123 = v100;
  v124 = v104;
  v125 = v103;
  v126 = v102;
  v127 = v101;
  v128 = v98;
  v129 = v70;
  v130 = *v119;
  v131 = *&v119[4];
  v132 = a8;
  v133 = a9;
  v134 = a10;
  v135 = a11;
  v136 = a12;
  v137 = a13;
  v138 = v114;
  v139 = v115;
  v140 = a16;
  v141 = a17;
  v78 = v111;
  swift_beginAccess();
  v79 = *(v78 + 24);
  if (!*(v79 + 16))
  {
LABEL_19:
    v83 = v110;
    v84 = v89;
    sub_1E134FD1C(v110, v89, &unk_1ECEB7E70, &unk_1E1B23CB0);
    v85 = *(v75 + 48);
    v92(v118, v113, v84, v84 + v85, v90, a8, a9, a10, a11, a12, a13, v114, v115, a16, a17);
    sub_1E1308058(v84 + v85, &qword_1ECEB75A0, &qword_1E1B2AE10);
    sub_1E1308058(v84, &qword_1ECEB75A0, &qword_1E1B2AE10);
    memcpy(v119, v118, sizeof(v119));
    swift_beginAccess();
    sub_1E141D08C(v119, v118);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118[0] = *(v78 + 24);
    *(v78 + 24) = 0x8000000000000000;
    sub_1E159C2C8(v119, v120, isUniquelyReferenced_nonNull_native);
    sub_1E15A43AC(v120);
    *(v78 + 24) = v118[0];
    swift_endAccess();
    v82 = v83;
    goto LABEL_20;
  }

  v80 = sub_1E1595EB8(v120);
  if ((v81 & 1) == 0)
  {

    goto LABEL_19;
  }

  memcpy(v119, (*(v79 + 56) + 392 * v80), sizeof(v119));
  sub_1E141D08C(v119, v118);
  sub_1E15A43AC(v120);

  v82 = v110;
LABEL_20:
  sub_1E1308058(v82, &unk_1ECEB7E70, &unk_1E1B23CB0);
  return memcpy(v112, v119, 0x188uLL);
}

double sub_1E1A6C554()
{
  swift_beginAccess();
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  *(v0 + 24) = v1;

  return result;
}

uint64_t PageGridCache.deinit()
{

  return v0;
}

uint64_t PageGridCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *TopChartCategory.__allocating_init(genreId:ageBandId:url:shortName:longName:artwork:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  *(v19 + 2) = a1;
  *(v19 + 3) = a2;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  v20 = &v19[OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_shortName];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &v19[OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_longName];
  *v21 = a8;
  *(v21 + 1) = a9;
  v22 = OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_url;
  v23 = sub_1E1AEFCCC();
  (*(*(v23 - 8) + 32))(&v19[v22], a5, v23);
  *&v19[OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_artwork] = a10;
  *&v19[OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children] = a11;
  return v19;
}

char *TopChartCategory.init(genreId:ageBandId:url:shortName:longName:artwork:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  v13 = &v11[OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_shortName];
  *v13 = a6;
  *(v13 + 1) = a7;
  v14 = &v11[OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_longName];
  *v14 = a8;
  *(v14 + 1) = a9;
  v15 = OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_url;
  v16 = sub_1E1AEFCCC();
  (*(*(v16 - 8) + 32))(&v11[v15], a5, v16);
  *&v11[OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_artwork] = a10;
  *&v11[OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children] = a11;
  return v11;
}

uint64_t TopChartCategory.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TopChartCategory.init(deserializing:using:)(a1, a2);
  return v4;
}

void *TopChartCategory.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v59 = a2;
  v60 = v5;
  v58 = sub_1E1AF39DC();
  v64 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = sub_1E1AEFCCC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v61 = *(v11 + 8);
  v62 = v11 + 8;
  v21 = v16;
  v22 = v10;
  v61(v21, v10);
  v23 = v17;
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_1E13ECBA0(v9);
    v24 = sub_1E1AF5A7C();
    sub_1E1A6D050(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v25 = 7107189;
    v26 = v60;
    v25[1] = 0xE300000000000000;
    v25[2] = v26;
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E69AB690], v24);
    swift_willThrow();
    (*(v64 + 8))(v59, v58);
    v61(v63, v10);
    v27 = v57;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v18;
    v53 = v18;
    v54 = v23;
    v29 = *(v18 + 32);
    v55 = v20;
    v29(v20, v9, v23);
    sub_1E1AF381C();
    v30 = sub_1E1AF37CC();
    v32 = v31;
    v33 = v61;
    v61(v13, v22);
    v27 = v57;
    v57[2] = v30;
    v27[3] = v32;
    sub_1E1AF381C();
    v34 = sub_1E1AF37CC();
    v36 = v35;
    v33(v13, v22);
    v27[4] = v34;
    v27[5] = v36;
    (*(v28 + 16))(v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_url, v55, v54);
    sub_1E1AF381C();
    v37 = sub_1E1AF37CC();
    v39 = v38;
    v52 = v22;
    v33(v13, v22);
    v40 = (v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_shortName);
    *v40 = v37;
    v40[1] = v39;
    sub_1E1AF381C();
    v41 = sub_1E1AF37CC();
    v43 = v42;
    v33(v13, v22);
    v44 = (v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_longName);
    *v44 = v41;
    v44[1] = v43;
    type metadata accessor for Artwork(0);
    sub_1E1AF381C();
    v45 = *(v64 + 16);
    v46 = v56;
    v47 = v58;
    v48 = v59;
    v45(v56, v59, v58);
    sub_1E1A6D050(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_1E1AF464C();
    *(v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_artwork) = v65;
    v49 = v63;
    sub_1E1AF381C();
    v45(v46, v48, v47);
    sub_1E1A6D050(&qword_1ECEB8530, type metadata accessor for TopChartCategory, &protocol conformance descriptor for TopChartCategory);
    v50 = sub_1E1AF630C();
    (*(v64 + 8))(v48, v47);
    v61(v49, v52);
    (*(v53 + 8))(v55, v54);
    *(v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children) = v50;
  }

  return v27;
}

uint64_t sub_1E1A6D050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TopChartCategory(uint64_t a1)
{
  result = qword_1ECEBD230;
  if (!qword_1ECEBD230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TopChartCategory.genreId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TopChartCategory.ageBandId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TopChartCategory.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_url;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TopChartCategory.shortName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_shortName);

  return v1;
}

uint64_t TopChartCategory.longName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_longName);

  return v1;
}

uint64_t TopChartCategory.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TopChartCategory.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1E1A6D400@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TopChartCategory.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E1A6D484(uint64_t a1)
{
  result = sub_1E1AEFCCC();
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

UIImage *sub_1E1A6D5A4(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v4);
  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 CGColor];
    CGContextSetFillColorWithColor(v7, v8);

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v7, v12);
  }

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

uint64_t sub_1E1A6D6B4()
{
  result = sub_1E1AF5DBC();
  qword_1EE215430 = result;
  return result;
}

id sub_1E1A6D6EC(uint64_t a1)
{
  v2 = v1;
  v46[4] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v8 = sub_1E1AEFCCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  sub_1E1307FE8(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E13ECBA0(v7);
    (*(v9 + 56))(&v2[OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_path], 1, 1, v8);
    *&v2[OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_storage] = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
    v45.receiver = v2;
    v45.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v45, sel_init);
    sub_1E13ECBA0(a1);
  }

  else
  {
    sub_1E1AEFC1C();
    v16 = *(v9 + 8);
    v16(v7, v8);
    (*(v9 + 32))(v14, v11, v8);
    v17 = sub_1E1AEFCEC();
    v39 = ObjectType;
    v40 = v16;
    v20 = v17;
    v22 = v21;
    v23 = objc_opt_self();
    v24 = sub_1E1AEFD2C();
    v46[0] = 0;
    v25 = [v23 JSONObjectWithData:v24 options:0 error:v46];

    if (v25)
    {
      v37 = v20;
      v38 = v22;
      v26 = v46[0];
      sub_1E1AF6EBC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548, &unk_1E1B02950);
      v27 = (v9 + 16);
      v28 = (v9 + 56);
      if ((swift_dynamicCast() & 1) == 0)
      {
        *&v2[OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_storage] = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
        v36 = OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_path;
        (*v27)(&v2[OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_path], v14, v8);
        (*v28)(&v2[v36], 0, 1, v8);
        v42.receiver = v2;
        v42.super_class = v39;
        v15 = objc_msgSendSuper2(&v42, sel_init);
        sub_1E14283DC(v37, v38);
        sub_1E13ECBA0(a1);
        v40(v14, v8);
        return v15;
      }

      *&v2[OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_storage] = v43;
      v29 = OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_path;
      (*v27)(&v2[OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_path], v14, v8);
      (*v28)(&v2[v29], 0, 1, v8);
      v41.receiver = v2;
      v41.super_class = v39;
      v30 = objc_msgSendSuper2(&v41, sel_init);
      sub_1E14283DC(v37, v38);
      v31 = v40;
    }

    else
    {
      v32 = v46[0];
      v33 = sub_1E1AEFB2C();

      swift_willThrow();
      v34 = v33;
      sub_1E14283DC(v20, v22);
      v35 = v39;
      v31 = v40;
      v18 = OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_path;
      (*(v9 + 16))(&v2[OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_path], v14, v8);
      (*(v9 + 56))(&v2[v18], 0, 1, v8);
      *&v2[OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_storage] = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
      v44.receiver = v2;
      v44.super_class = v35;
      v30 = objc_msgSendSuper2(&v44, sel_init);
    }

    v15 = v30;
    sub_1E13ECBA0(a1);
    v31(v14, v8);
  }

  return v15;
}

id sub_1E1A6DC2C()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 URLsForDirectory:9 inDomains:1];

  v9 = sub_1E1AEFCCC();
  v10 = sub_1E1AF621C();

  if (*(v10 + 16))
  {
    v11 = *(v9 - 8);
    (*(v11 + 16))(v6, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9);

    (*(v11 + 56))(v6, 0, 1, v9);
  }

  else
  {

    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  sub_1E1307FE8(v6, v3);
  v12 = objc_allocWithZone(ObjectType);
  v13 = sub_1E1A6D6EC(v3);
  sub_1E13ECBA0(v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

double sub_1E1A6DED0()
{
  v1 = v0;
  v34[3] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF6C2C();
  if (v9)
  {
    v11 = v8;
    v12 = v9;
    v13 = sub_1E1AF6C2C();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      swift_beginAccess();

      sub_1E1386A38(v16, v15, v11, v12);
      swift_endAccess();
      sub_1E1307FE8(v0 + OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_path, v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_1E13ECBA0(v4);
        v17 = v0;
        v18 = v11;
        v19 = v12;
        v20 = v16;
      }

      else
      {
        v32 = v16;
        v21 = v33;
        (*(v6 + 32))(v33, v4, v5);
        v22 = objc_opt_self();

        v23 = sub_1E1AF5C6C();

        v34[0] = 0;
        v24 = [v22 dataWithJSONObject:v23 options:0 error:v34];

        v25 = v34[0];
        if (v24)
        {
          v26 = sub_1E1AEFD3C();
          v28 = v27;

          sub_1E1AEFD4C();
          (*(v6 + 8))(v21, v5);
          sub_1E14283DC(v26, v28);
        }

        else
        {
          v29 = v25;
          v30 = sub_1E1AEFB2C();

          swift_willThrow();
          (*(v6 + 8))(v21, v5);
        }

        v17 = v1;
        v18 = v11;
        v19 = v12;
        v20 = v32;
      }

      sub_1E1A6E2B8(v17, v18, v19, v20, v15);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E1A6E2B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v9 = sub_1E1AF320C();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E1AF324C();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  v15 = sub_1E1AF68EC();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v17 = v22;
  v16[4] = a3;
  v16[5] = v17;
  v16[6] = a5;
  aBlock[4] = sub_1E1A6EBF4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_105;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E1A6EC04(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v18);
  _Block_release(v18);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

void sub_1E1A6E628(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = sub_1E1AF6C2C();
  if (v8)
  {
    v9 = v8;
    v10 = v7;
    v11 = OBJC_IVAR____TtC11AppStoreKit15JSStorageObject_storage;
    swift_beginAccess();
    if (*(*(a3 + v11) + 16) && (sub_1E13018F8(v10, v9), (v12 & 1) != 0))
    {
      swift_endAccess();
      swift_bridgeObjectRetain_n();
      v13 = sub_1E1AF755C();
      v14 = [objc_opt_self() valueWithObject:v13 inContext:a1];
      swift_unknownObjectRelease();
      if (v14)
      {

LABEL_7:

        return;
      }
    }

    else
    {
      swift_endAccess();
      if ([objc_opt_self() valueWithUndefinedInContext_])
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1E1AF56FC();
    sub_1E1A6EC04(&qword_1EE1D2810, MEMORY[0x1E69AB618], MEMORY[0x1E69AB620]);
    swift_allocError();
    v15 = a2;
    sub_1E1AF56BC();
    swift_willThrow();
  }
}

uint64_t type metadata accessor for JSStorageObject(uint64_t a1)
{
  result = qword_1EE1F34D8;
  if (!qword_1EE1F34D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1A6E954(uint64_t a1)
{
  sub_1E130072C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E1A6EA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() defaultCenter];
  if (qword_1EE1D2490 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE215430;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98, &qword_1E1B09130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CD0;
  v13 = MEMORY[0x1E69E6158];
  sub_1E1AF6F6C();
  *(inited + 96) = v13;
  *(inited + 72) = a2;
  *(inited + 80) = a3;

  sub_1E1AF6F6C();
  *(inited + 168) = v13;
  *(inited + 144) = a4;
  *(inited + 152) = a5;

  sub_1E13609A4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCAA0, &unk_1E1B02C50);
  swift_arrayDestroy();
  v14 = sub_1E1AF5C6C();

  [v10 postNotificationName:v11 object:a1 userInfo:v14];
}

uint64_t sub_1E1A6EC04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EditorialQuote.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EditorialQuote.attribution.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EditorialQuote.__allocating_init(id:text:attribution:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v23 = a5;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_1E134FD1C(a1, &v26, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v21 = a6;
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    v24 = v15;
    v25 = v17;
    a6 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v26, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v18 = v30;
  *(v14 + 48) = v29;
  *(v14 + 64) = v18;
  *(v14 + 80) = v31;
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134B7C8(a6, v14 + OBJC_IVAR____TtC11AppStoreKit14EditorialQuote_impressionMetrics);
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v19 = v23;
  *(v14 + 32) = v22;
  *(v14 + 40) = v19;
  return v14;
}

uint64_t EditorialQuote.init(id:text:attribution:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v23 = a4;
  v24 = a5;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v27, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v28 + 1))
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v22 = a6;
    v18 = v17;
    (*(v13 + 8))(v15, v12);
    v25 = v16;
    v26 = v18;
    a6 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v27, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v19 = v31;
  *(v7 + 48) = v30;
  *(v7 + 64) = v19;
  *(v7 + 80) = v32;
  sub_1E134B7C8(a6, v7 + OBJC_IVAR____TtC11AppStoreKit14EditorialQuote_impressionMetrics);
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v20 = v24;
  *(v7 + 32) = v23;
  *(v7 + 40) = v20;
  return v7;
}

uint64_t EditorialQuote.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v74 = a2;
  v58 = sub_1E1AEFEAC();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E1AF39DC();
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v54 - v8;
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = 0xE400000000000000;
  sub_1E1AF381C();
  v61 = sub_1E1AF37CC();
  v21 = v20;
  v22 = *(v10 + 8);
  v22(v18, v9);
  if (!v21)
  {
    v35 = 1954047348;
    v27 = v9;
    v28 = a1;
LABEL_7:
    v36 = v65;
    v37 = sub_1E1AF5A7C();
    sub_1E1A6F960(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v38 = v35;
    v38[1] = v19;
    v38[2] = v64;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();
    (*(v67 + 8))(v74, v36);
    v22(v28, v27);
    return v36;
  }

  v63 = v21;
  v19 = 0xEB000000006E6F69;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  v25 = v24;
  v26 = v15;
  v27 = v9;
  v22(v26, v9);
  v28 = a1;
  v55 = v25;
  if (!v25)
  {
    v35 = 0x7475626972747461;

    goto LABEL_7;
  }

  v64 = v23;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v29 = v65;
  (*(v67 + 16))(v59, v74, v65);
  sub_1E1AF464C();
  v30 = v60;
  v31 = v28;
  sub_1E1AF381C();
  v32 = sub_1E1AF37CC();
  v54 = v22;
  if (v33)
  {
    *&v70 = v32;
    *(&v70 + 1) = v33;
    sub_1E1AF6F6C();
    v34 = v30;
  }

  else
  {
    v39 = v56;
    sub_1E1AEFE9C();
    v40 = v30;
    v41 = sub_1E1AEFE7C();
    v43 = v42;
    (*(v57 + 8))(v39, v58);
    *&v70 = v41;
    *(&v70 + 1) = v43;
    sub_1E1AF6F6C();
    v34 = v40;
  }

  v44 = v27;
  v22(v34, v27);
  v45 = v62;
  sub_1E134FD1C(v66, v62, &unk_1ECEB1770, &unk_1E1AFED20);
  type metadata accessor for EditorialQuote(0);
  v36 = swift_allocObject();
  sub_1E134FD1C(v73, &v70, &unk_1ECEB5670, qword_1E1B03EC0);
  v46 = v63;
  if (*(&v71 + 1))
  {
    v47 = v71;
    *(v36 + 48) = v70;
    *(v36 + 64) = v47;
    *(v36 + 80) = v72;
  }

  else
  {
    v48 = v56;
    sub_1E1AEFE9C();
    v49 = sub_1E1AEFE7C();
    v51 = v50;
    (*(v57 + 8))(v48, v58);
    v68 = v49;
    v69 = v51;
    v46 = v63;
    v29 = v65;
    sub_1E1AF6F6C();
    sub_1E1308058(&v70, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v67 + 8))(v74, v29);
  v54(v31, v44);
  sub_1E1308058(v73, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v66, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134B7C8(v45, v36 + OBJC_IVAR____TtC11AppStoreKit14EditorialQuote_impressionMetrics);
  *(v36 + 16) = v61;
  *(v36 + 24) = v46;
  v52 = v55;
  *(v36 + 32) = v64;
  *(v36 + 40) = v52;
  return v36;
}

uint64_t type metadata accessor for EditorialQuote(uint64_t a1)
{
  result = qword_1EE1F3F08;
  if (!qword_1EE1F3F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EditorialQuote.deinit()
{

  sub_1E134B88C(v0 + 48);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14EditorialQuote_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t EditorialQuote.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 48);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14EditorialQuote_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A6F960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E1A6F9B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = EditorialQuote.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E1A6FA28(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t UserNotificationsAuthorizationWithPrewarmAction.__allocating_init()()
{
  v0 = sub_1E1AEFEAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_1E1AF3DFC();
  v5 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v6 = sub_1E1AF46DC();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  v7 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v18, &v15);
  if (*(&v16 + 1))
  {
    v9 = v16;
    *v8 = v15;
    *(v8 + 16) = v9;
    *(v8 + 32) = v17;
  }

  else
  {
    sub_1E1AEFE9C();
    v10 = sub_1E1AEFE7C();
    v12 = v11;
    (*(v1 + 8))(v3, v0);
    v14[1] = v10;
    v14[2] = v12;
    sub_1E1AF6F6C();
    sub_1E1308058(&v15, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v18, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  return v4;
}

uint64_t UserNotificationsAuthorizationWithPrewarmAction.init()()
{
  v1 = v0;
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_1E1AF3E1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_1E1AF3DFC();
  v13 = sub_1E1AF46DC();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  sub_1E138853C(v28, &v22);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v21[1] = v15;
    v21[2] = v17;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v28, &unk_1ECEB5670, qword_1E1B03EC0);
  v18 = v1 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v18 + 32) = v27;
  v19 = v26;
  *v18 = v25;
  *(v18 + 16) = v19;
  sub_1E134B7C8(v8, v1 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v12, v9);
  return v1;
}

uint64_t UserNotificationsAuthorizationWithPrewarmAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}