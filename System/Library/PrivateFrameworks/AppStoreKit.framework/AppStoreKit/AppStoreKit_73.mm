uint64_t sub_1E1A1D388(uint64_t a1)
{
  v2 = type metadata accessor for ArcadePageUrls(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ArcadeDiffablePagePresenter(uint64_t a1)
{
  result = qword_1EE1D7B90;
  if (!qword_1EE1D7B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1A1D440(uint64_t a1)
{
  result = type metadata accessor for ArcadePageUrls(319);
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1E1A1DDBC(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

void *sub_1E1A1DE08(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v7 = result;

    return sub_1E1300E34(a2, a3);
  }

  else if (!a4)
  {
  }

  return result;
}

void sub_1E1A1DE6C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {

    sub_1E1300EA8(a2, a3);
  }

  else if (!a4)
  {
  }
}

uint64_t sub_1E1A1DED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadePageUrls(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_52Tm_0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t CrossfireReferralAction.__allocating_init(referrerData:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v8 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData;
  v12 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 16) = v12;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v13 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8 + v13, a2, v14);
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v17 = sub_1E1AF46DC();
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  v18 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 16) = v20;
    *(v19 + 32) = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v5 + 8))(v7, v4);
    v25[1] = v21;
    v25[2] = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v26, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v15 + 8))(a2, v14);
  sub_1E1308058(v29, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  return v8;
}

uint64_t CrossfireReferralAction.init(referrerData:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - v11;
  v13 = sub_1E1AF3E1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = v3 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData;
  v20 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 16) = v20;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  (*(v14 + 16))(v16, a2, v13);
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = (v3 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_1E138853C(v37, &v31);
  if (*(&v32 + 1))
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v24 = v7;
    v26 = v25;
    (*(v24 + 8))(v9, v6);
    v30[1] = v23;
    v30[2] = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v31, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v14 + 8))(a2, v13);
  sub_1E1308058(v37, &unk_1ECEB5670, qword_1E1B03EC0);
  v27 = v3 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v27 + 32) = v36;
  v28 = v35;
  *v27 = v34;
  *(v27 + 16) = v28;
  sub_1E134B7C8(v12, v3 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16, v13);
  return v3;
}

char *CrossfireReferralAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v46 = a2;
  v6 = *v2;
  v43 = v3;
  v44 = v6;
  v45 = sub_1E1AF39DC();
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v50 = sub_1E1AF380C();
  v12 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  sub_1E1AF381C();
  if (sub_1E1AF37AC())
  {
    v21 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    strcpy(v22, "referrerData");
    v23 = v44;
    v22[13] = 0;
    *(v22 + 7) = -5120;
    *(v22 + 2) = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E69AB690], v21);
    swift_willThrow();
    (*(v7 + 8))(v46, v45);
    v24 = *(v12 + 8);
    v25 = v50;
    v24(a1, v50);
    v24(v20, v25);
  }

  else
  {
    v40 = *(v12 + 16);
    v41 = a1;
    v40(v17, v20, v50);
    v39 = *(v7 + 16);
    v39(v11, v46, v45);
    v26 = v43;
    ReferrerData.init(deserializing:using:)(v17, v11, v47);
    if (!v26)
    {
      v30 = v48;
      v31 = v49;
      v32 = &v2[OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData];
      v33 = v47[1];
      *v32 = v47[0];
      *(v32 + 1) = v33;
      *(v32 + 4) = v30;
      v32[40] = v31;
      v34 = v41;
      v40(v14, v41, v50);
      v35 = v42;
      v39(v42, v46, v45);
      v4 = Action.init(deserializing:using:)(v14, v35);
      (*(v7 + 8))(v46, v45);
      v36 = *(v12 + 8);
      v37 = v34;
      v38 = v50;
      v36(v37, v50);
      v36(v20, v38);
      return v4;
    }

    (*(v7 + 8))(v46, v45);
    v27 = *(v12 + 8);
    v28 = v50;
    v27(v41, v50);
    v27(v20, v28);
  }

  swift_deallocPartialClassInstance();
  return v4;
}

double CrossfireReferralAction.referrerData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 24);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  v5 = *(v2 + 40);
  *(a1 + 40) = v5;

  return sub_1E13E23E4(v4, v5);
}

uint64_t sub_1E1A1EC5C()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 32);
  v3 = *(v1 + 40);

  return sub_1E137B778(v2, v3);
}

uint64_t CrossfireReferralAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 32);
  v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 40);

  sub_1E137B778(v3, v4);
  return v0;
}

uint64_t CrossfireReferralAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 32);
  v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit23CrossfireReferralAction_referrerData + 40);

  sub_1E137B778(v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CrossfireReferralAction(uint64_t a1)
{
  result = qword_1EE1EBFD0;
  if (!qword_1EE1EBFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IconRowViewLayout.init(metrics:iconViews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E1A1F018(a1, a3);
  result = type metadata accessor for IconRowViewLayout(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1E1A1F018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconRowViewLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1A1F0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconRowViewLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double IconRowViewLayout.iconViews.getter()
{
  type metadata accessor for IconRowViewLayout(0);

  return result;
}

uint64_t IconRowViewLayout.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t IconRowViewLayout.Metrics.init(iconAspectRatio:interItemSpacing:alignment:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a2;
  v8 = sub_1E1AF127C();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(a3 + *(result + 20)) = a4;
  *(a3 + *(result + 24)) = v7;
  return result;
}

uint64_t IconRowViewLayout.Metrics.iconAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IconRowViewLayout.Metrics.iconAspectRatio.setter(uint64_t a1)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IconRowViewLayout.Metrics.interItemSpacing.setter(double a1)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t IconRowViewLayout.Metrics.alignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t IconRowViewLayout.Metrics.alignment.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IconRowViewLayout.Metrics(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

CGSize __swiftcall IconRowViewLayout.iconSize(fitting:)(CGSize fitting)
{
  height = fitting.height;
  v3 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_1E1A1F5A4() + 16);

  if (v6)
  {
    sub_1E1A1F0C8(v1, v5);
    sub_1E1AF122C();
    v8 = v7;
    v9 = sub_1E1AF127C();
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  else
  {
    v8 = 0.0;
    height = 0.0;
  }

  v10 = v8;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

uint64_t sub_1E1A1F5A4()
{
  result = type metadata accessor for IconRowViewLayout(0);
  v2 = *(v0 + *(result + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v2 + 16))
    {
      sub_1E1300B24(v5, &v11);
      __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
      if ((sub_1E1AF117C() & 1) != 0 || (__swift_project_boxed_opaque_existential_1Tm(&v11, v12), (sub_1E1AF112C() & 1) == 0))
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v11);
      }

      else
      {
        sub_1E1361B28(&v11, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C248(0, *(v6 + 16) + 1, 1);
          v6 = v13;
        }

        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1E135C248((v8 > 1), v9 + 1, 1);
          v6 = v13;
        }

        *(v6 + 16) = v9 + 1;
        result = sub_1E1361B28(v10, v6 + 40 * v9 + 32);
      }

      ++v4;
      v5 += 40;
      if (v3 == v4)
      {
        return v6;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t IconRowViewLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, double a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(sub_1E1A1F5A4() + 16);

  if (v15)
  {
    v16 = *(sub_1E1A1F5A4() + 16);

    if (v16)
    {
      sub_1E1A1F0C8(v6, v14);
      sub_1E1AF122C();
      v18 = v17;
      v19 = sub_1E1AF127C();
      (*(*(v19 - 8) + 8))(v14, v19);
    }

    else
    {
      v18 = 0.0;
    }

    if (*(v6 + *(v12 + 24)))
    {
      _s11AppStoreKit17IconRowViewLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0(a4, a5);
      v22 = v21;
      v34.origin.x = a2;
      v34.origin.y = a3;
      v34.size.width = a4;
      v34.size.height = a5;
      MinX = CGRectGetMinX(v34);
      v35.origin.x = a2;
      v35.origin.y = a3;
      v35.size.width = a4;
      v35.size.height = a5;
      v24 = MinX + (v22 - CGRectGetWidth(v35)) * -0.5;
    }

    else
    {
      v36.origin.x = a2;
      v36.origin.y = a3;
      v36.size.width = a4;
      v36.size.height = a5;
      v24 = CGRectGetMinX(v36);
    }

    v25 = [a1 traitCollection];
    v26 = sub_1E1AF697C();

    v27 = *(v6 + *(type metadata accessor for IconRowViewLayout(0) + 20));

    if (v26)
    {
      v27 = sub_1E190CA04(v27);
    }

    v28 = v27[2];
    if (v28)
    {
      v29 = (v27 + 4);
      do
      {
        sub_1E1300B24(v29, v31);
        __swift_project_boxed_opaque_existential_1Tm(v31, v32);
        if ((sub_1E1AF117C() & 1) != 0 || (__swift_project_boxed_opaque_existential_1Tm(v31, v32), (sub_1E1AF112C() & 1) == 0))
        {
          __swift_project_boxed_opaque_existential_1Tm(v31, v32);
          sub_1E1AF116C();
        }

        else
        {
          v37.origin.x = a2;
          v37.origin.y = a3;
          v37.size.width = a4;
          v37.size.height = a5;
          CGRectGetMinY(v37);
          __swift_project_boxed_opaque_existential_1Tm(v31, v32);
          sub_1E1AF116C();
          v24 = v24 + v18 + *(v6 + *(v12 + 20));
        }

        __swift_destroy_boxed_opaque_existential_1(v31);
        v29 += 40;
        --v28;
      }

      while (v28);
    }

    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    CGRectGetMinX(v38);
    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    CGRectGetMinY(v39);
    return sub_1E1AF106C();
  }

  else
  {

    return sub_1E1AF10AC();
  }
}

void _s11AppStoreKit17IconRowViewLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0(double a1, double a2)
{
  v3 = v2;
  v4 = type metadata accessor for IconRowViewLayout.Metrics(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(sub_1E1A1F5A4() + 16);

  if (v7)
  {
    v8 = *(sub_1E1A1F5A4() + 16);

    if (v8)
    {
      sub_1E1A1F0C8(v3, v6);
      sub_1E1AF122C();
      v9 = sub_1E1AF127C();
      (*(*(v9 - 8) + 8))(v6, v9);
    }
  }
}

unint64_t sub_1E1A1FC40()
{
  result = qword_1ECEBCD38;
  if (!qword_1ECEBCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCD38);
  }

  return result;
}

void sub_1E1A1FCBC(uint64_t a1)
{
  type metadata accessor for IconRowViewLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_1E15025D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E1A1FD78(uint64_t a1)
{
  result = sub_1E1AF127C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TapToRate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v49 = sub_1E1AF39DC();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v38 - v7;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  sub_1E1AF381C();
  v19 = sub_1E1AF37CC();
  v21 = v20;
  v40 = v9;
  v22 = *(v9 + 8);
  v22(v18, v8);
  v23 = (v3 + OBJC_IVAR____TtC11AppStoreKit9TapToRate_title);
  *v23 = v19;
  v23[1] = v21;
  sub_1E1AF381C();
  v24 = sub_1E1AF375C();
  v48 = v8;
  v22(v15, v8);
  if ((v24 & 0x100000000) != 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  v45 = v3;
  v46 = a1;
  v26 = v3 + OBJC_IVAR____TtC11AppStoreKit9TapToRate_rating;
  *v26 = v25;
  *(v26 + 4) = 0;
  v27 = v42;
  sub_1E1AF381C();
  v28 = v47;
  v29 = v43;
  v38 = *(v47 + 16);
  v38(v43, v50, v49);
  type metadata accessor for RateAction(0);
  v30 = swift_allocObject();
  v31 = v44;
  v32 = RateAction.init(deserializing:using:)(v27, v29);
  if (v31)
  {
    (*(v28 + 8))(v50, v49);
    v22(v46, v48);

    type metadata accessor for TapToRate(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = v22;
    v33 = v46;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit9TapToRate_rateAction) = v32;
    v34 = v39;
    (*(v40 + 16))(v39, v33, v48);
    v35 = v41;
    v36 = v49;
    v38(v41, v50, v49);
    v30 = ProductRatingsAndReviewsComponent.init(deserializing:using:)(v34, v35);
    (*(v47 + 8))(v50, v36);
    v44(v33, v48);
  }

  return v30;
}

uint64_t type metadata accessor for TapToRate(uint64_t a1)
{
  result = qword_1EE1E4038;
  if (!qword_1EE1E4038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TapToRate.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TapToRate_title);

  return v1;
}

double sub_1E1A20388()
{

  return result;
}

uint64_t TapToRate.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return v0;
}

uint64_t TapToRate.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t Array.chunked(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v14 = 0;
    v15 = sub_1E1AF62BC();
    v16 = a1;
    MEMORY[0x1EEE9AC00](v15);
    v13[2] = a3;
    v13[3] = a1;
    v13[4] = a2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCD60, &qword_1E1B4C650);
    v7 = sub_1E1AF635C();
    v8 = sub_1E1A20E8C();
    return sub_1E1A2068C(sub_1E1A20E68, v13, v6, v7, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  }

  else
  {
    sub_1E1AF635C();
    sub_1E1AF743C();
    swift_allocObject();
    v11 = sub_1E1AF623C();
    *v12 = a2;
    v14 = v11;
    sub_1E1AF635C();
    nullsub_5();

    return v14;
  }
}

uint64_t sub_1E1A2068C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1E1AF6D9C();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1E1AF60BC();
  v63 = sub_1E1AF712C();
  v58 = sub_1E1AF713C();
  sub_1E1AF70DC();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1E1AF60AC();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1E1AF6DBC();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1E1AF711C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1E1AF6DBC();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1E1AF711C();
      sub_1E1AF6DBC();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t *sub_1E1A20D80@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t **a5@<X8>)
{
  v5 = *result;
  v6 = (*result + a2);
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_1E1AF62BC();
    if (result < v6)
    {
      result = sub_1E1AF62BC();
      v6 = result;
    }

    if (v6 >= v5)
    {
      sub_1E1AF63AC();
      sub_1E1AF6ECC();
      swift_getWitnessTable();
      result = sub_1E1AF639C();
      *a5 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1A20E8C()
{
  result = qword_1ECEBCD68;
  if (!qword_1ECEBCD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBCD60, &qword_1E1B4C650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCD68);
  }

  return result;
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v17[-v7];
  sub_1E1AF666C();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_1E1AF617C();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v10 = sub_1E1AF66FC();
    v12 = v11;
    v13 = swift_getAssociatedTypeWitness();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v17, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }

  else
  {
    v16 = swift_getAssociatedTypeWitness();
    return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }
}

uint64_t Collection.hasIndex(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v9 - v5;
  sub_1E1AF666C();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1E1AF617C();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v7 & 1;
}

uint64_t Collection.asDictionary<A, B>(key:value:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1E1AF5C4C();
  sub_1E1AF5CCC();
  sub_1E1AF613C();
  return v6;
}

uint64_t sub_1E1A2142C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = a1;
  v7 = *a3;
  v26[0] = a4;
  v8 = *MEMORY[0x1E69E77B0];
  v9 = *(*a4 + *MEMORY[0x1E69E77B0] + 8);
  v10 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  v17 = *(v7 + v8 + 8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v26 - v23;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  (*(v18 + 16))(v21, v24, v17);
  (*(v13 + 16))(v12, v16, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  sub_1E1AF5CCC();
  sub_1E1AF5CFC();
  (*(v13 + 8))(v16, v9);
  return (*(v18 + 8))(v24, v17);
}

uint64_t Collection.asDictionary<A, B>(key:value:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1E1AF5C4C();
  sub_1E1AF5CCC();
  sub_1E1AF613C();
  return v8;
}

uint64_t sub_1E1A2180C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, double), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[0] = a7;
  v29[1] = a5;
  v29[2] = a4;
  v30 = a3;
  v31 = a9;
  v32 = a1;
  v11 = *(*a5 + *MEMORY[0x1E69E77B0] + 8);
  v12 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v29 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - v17;
  v19 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v29 - v25;
  v30(a2, v24);
  swift_getAtKeyPath();
  v27 = v29[0];
  (*(v19 + 16))(v22, v26, v29[0]);
  (*(v15 + 16))(v14, v18, v11);
  (*(v15 + 56))(v14, 0, 1, v11);
  sub_1E1AF5CCC();
  sub_1E1AF5CFC();
  (*(v15 + 8))(v18, v11);
  return (*(v19 + 8))(v26, v27);
}

uint64_t Collection.asDictionary<A, B>(key:value:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1E1AF5C4C();
  sub_1E1AF5CCC();
  sub_1E1AF613C();
  return v8;
}

uint64_t sub_1E1A21BCC(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[2] = a5;
  v29 = a4;
  v28[1] = a3;
  v30 = a9;
  v31 = a1;
  v11 = *a3;
  v12 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v28 - v25;
  swift_getAtKeyPath();
  v29(a2);
  (*(v20 + 16))(v23, v26, v19);
  (*(v15 + 16))(v14, v18, a7);
  (*(v15 + 56))(v14, 0, 1, a7);
  sub_1E1AF5CCC();
  sub_1E1AF5CFC();
  (*(v15 + 8))(v18, a7);
  return (*(v20 + 8))(v26, v19);
}

uint64_t Collection.asDictionary<A, B>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1E1AF5C4C();
  sub_1E1AF5CCC();
  sub_1E1AF613C();
  return v10;
}

uint64_t sub_1E1A21F64(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, double), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a8;
  v32 = a4;
  v34 = a6;
  v35 = a5;
  v33 = a3;
  v36 = a11;
  v37 = a1;
  v13 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v30 - v26;
  v33(a2, v25);
  v35(a2);
  v28 = v31;
  (*(v20 + 16))(v23, v27, v31);
  (*(v16 + 16))(v15, v19, a9);
  (*(v16 + 56))(v15, 0, 1, a9);
  sub_1E1AF5CCC();
  sub_1E1AF5CFC();
  (*(v16 + 8))(v19, a9);
  return (*(v20 + 8))(v27, v28);
}

uint64_t Collection.itemCount(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v26 - v7;
  v9 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v26 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  (*(v12 + 16))(v15, v27, a3, v17);
  sub_1E1AF60AC();
  swift_getAssociatedConformanceWitness();
  v20 = 0;
  v21 = (v6 + 48);
  v22 = (v6 + 32);
  v23 = (v6 + 8);
LABEL_2:
  v27 = v20;
  while (1)
  {
    sub_1E1AF6DBC();
    if ((*v21)(v11, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v22)(v8, v11, AssociatedTypeWitness);
    v24 = v28(v8);
    (*v23)(v8, AssociatedTypeWitness);
    if (v24)
    {
      v20 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        goto LABEL_2;
      }

      __break(1u);
      break;
    }
  }

  (*(v26 + 8))(v19, v16);
  return v27;
}

uint64_t Collection.itemCount<A>(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v46 = a1;
  v47 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF6D9C();
  v10 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v40 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = v40 - v19;
  (*(v13 + 16))(v16, v50, a3, v18);
  v21 = v20;
  sub_1E1AF60AC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = 0;
  v43 = (v7 + 8);
  v44 = (v7 + 32);
  v24 = (v7 + 48);
  v40[1] = v9 - 8;
LABEL_2:
  v42 = v23;
  sub_1E1AF6DBC();
  v25 = *(v9 - 8);
  v26 = *(v25 + 48);
  if (v26(v12, 1, v9) != 1)
  {
    v27 = *v24;
    v49 = v25 + 48;
    v50 = v27;
    v48 = (v25 + 8);
    for (i = v27(v12, 1, v5); ; i = v50(v12, 1, v5))
    {
      if (i == 1)
      {
        (*v48)(v12, v9);
      }

      else
      {
        v29 = v26;
        v30 = v24;
        v31 = AssociatedConformanceWitness;
        v32 = v21;
        v33 = AssociatedTypeWitness;
        v34 = v9;
        v35 = v5;
        v36 = v45;
        (*v44)(v45, v12, v35);
        v37 = v46(v36);
        v38 = v36;
        v5 = v35;
        v9 = v34;
        AssociatedTypeWitness = v33;
        v21 = v32;
        AssociatedConformanceWitness = v31;
        v24 = v30;
        v26 = v29;
        (*v43)(v38, v5);
        if (v37)
        {
          v23 = v42 + 1;
          if (!__OFADD__(v42, 1))
          {
            goto LABEL_2;
          }

          __break(1u);
          break;
        }
      }

      sub_1E1AF6DBC();
      if (v26(v12, 1, v9) == 1)
      {
        break;
      }
    }
  }

  (*(v41 + 8))(v21, AssociatedTypeWitness);
  return v42;
}

uint64_t AppShowcaseLockupViewLayout.init(metrics:iconView:wordmarkView:titleText:descriptionText:offerButton:offerText:crossLinkTitleText:crossLinkSubtitleText:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = type metadata accessor for AppShowcaseLockupViewLayout(0);
  sub_1E1A22C20(a1, a9 + *(v18 + 48));
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1E1AF11AC();
  sub_1E134FD1C(a3, a9 + 40, &qword_1ECEB4E00, &qword_1E1B0AB20);
  sub_1E1300B24(a4, a9 + 80);
  sub_1E1300B24(a5, a9 + 120);
  __swift_project_boxed_opaque_existential_1Tm(a6, a6[3]);
  type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  sub_1E1AF11AC();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  sub_1E1308058(a3, &qword_1ECEB4E00, &qword_1E1B0AB20);
  sub_1E1A22CA4(a1);
  sub_1E1308EC0(a7, a9 + 200);
  v19 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v19;
  *(a9 + 272) = *(a8 + 32);
  v20 = *(a10 + 16);
  *(a9 + 280) = *a10;
  *(a9 + 296) = v20;
  *(a9 + 312) = *(a10 + 32);
  __swift_destroy_boxed_opaque_existential_1(a6);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1E1A22C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1A22CA4(uint64_t a1)
{
  v2 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppShowcaseLockupViewLayout.Metrics.init(isCenterAligned:iconSize:wordmarkSpace:titleSpace:titleWithWordmarkSpace:descriptionSpace:descriptionBottomBufferSpace:offerLabelSpace:offerLabelBottomBufferSpace:offerButtonSize:crossLinkTitleSpace:crossLinkTitleWithWordmarkSpace:crossLinkSubtitleSpace:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16)
{
  *a9 = a1;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  sub_1E1308EC0(a2, a9 + 24);
  v23 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v24 = v23[7];
  v25 = sub_1E1AF166C();
  v26 = *(*(v25 - 8) + 32);
  v26(a9 + v24, a3, v25);
  sub_1E1308EC0(a4, a9 + v23[8]);
  v26(a9 + v23[9], a5, v25);
  v26(a9 + v23[10], a6, v25);
  v26(a9 + v23[11], a7, v25);
  v26(a9 + v23[12], a8, v25);
  v27 = (a9 + v23[13]);
  *v27 = a12;
  v27[1] = a13;
  sub_1E1308EC0(a14, a9 + v23[14]);
  sub_1E1308EC0(a15, a9 + v23[15]);
  v28 = a9 + v23[16];

  return sub_1E1308EC0(a16, v28);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.wordmarkSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));

  return sub_1E1308EC0(a1, v1 + 24);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 28);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 28);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.titleWithWordmarkSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 32);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 36);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionBottomBufferSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 40);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.descriptionBottomBufferSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 40);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 44);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 44);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelBottomBufferSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 48);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerLabelBottomBufferSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 48);
  v4 = sub_1E1AF166C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.offerButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppShowcaseLockupViewLayout.Metrics.crossLinkTitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 56);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.crossLinkTitleWithWordmarkSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 60);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.Metrics.crossLinkSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0) + 64);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t AppShowcaseLockupViewLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppShowcaseLockupViewLayout(0) + 48);

  return sub_1E1A22C20(v3, a1);
}

double AppShowcaseLockupViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_1E1AF745C();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 15, v4[18]);
  v25 = a2;
  *&v24[1] = a3;
  sub_1E1AF11CC();
  v24[0] = v10;
  v11 = v3 + *(type metadata accessor for AppShowcaseLockupViewLayout(0) + 48);
  v12 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v13 = sub_1E1AF166C();
  v14 = MEMORY[0x1E69AB980];
  sub_1E1AF12FC();
  sub_1E1AF12FC();
  sub_1E134FD1C((v3 + 5), &v28, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (v29)
  {
    sub_1E1308EC0(&v28, v30);
    __swift_project_boxed_opaque_existential_1Tm(v30, v31);
    if ((sub_1E1AF117C() & 1) == 0)
    {
      v15 = *(v11 + 6);
      __swift_project_boxed_opaque_existential_1Tm(v11 + 3, v15);
      sub_1E13BC274(v15);
      sub_1E1AF12DC();
      (*(v26 + 8))(v9, v27);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    sub_1E1308058(&v28, &qword_1ECEB4E00, &qword_1E1B0AB20);
  }

  v31 = v13;
  v32 = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 25, v4[28]);
  v17 = sub_1E1AF117C();
  v18 = 48;
  if (v17)
  {
    v18 = 40;
  }

  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, &v11[*(v12 + v18)], v13);
  v19 = v31;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  sub_1E13BC274(v19);
  sub_1E1AF12DC();
  v24[0] = v11;
  v20 = v27;
  v21 = *(v26 + 8);
  v21(v9, v27);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 25, v4[28]);
  if ((sub_1E1AF117C() & 1) == 0)
  {
    sub_1E1AF102C();
    sub_1E1AF12DC();
    v21(v9, v20);
  }

  __swift_project_boxed_opaque_existential_1Tm(v4 + 20, v4[23]);
  v22 = v25;
  sub_1E1AF11DC();
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v22;
}

uint64_t AppShowcaseLockupViewLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v195 = a1;
  v183 = a2;
  v182 = sub_1E1AF111C();
  v12 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v164 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v163 - v15;
  v187 = sub_1E1AF18BC();
  v194 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v188 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_1E1AF18DC();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v163 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v192 = &v163 - v20;
  v175 = sub_1E1AF745C();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_1E1AF189C();
  v196 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v176 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v171 = &v163 - v24;
  v198 = sub_1E1AF184C();
  v199 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v197 = &v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E1AF188C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v7 + *(type metadata accessor for AppShowcaseLockupViewLayout(0) + 48);
  v177 = v27;
  v31 = *(v27 + 104);
  v32 = MEMORY[0x1E69ABA18];
  if (!*v30)
  {
    v32 = MEMORY[0x1E69ABA08];
  }

  v33 = *v32;
  v178 = v26;
  v31(v29, v33, v26);
  sub_1E134FD1C((v7 + 5), &v212, &qword_1ECEB4E00, &qword_1E1B0AB20);
  v34 = MEMORY[0x1E69E7DE0];
  v193 = v7;
  v200 = v29;
  v201 = v30;
  v181 = v12;
  v189 = v16;
  if (!v213)
  {
    sub_1E1308058(&v212, &qword_1ECEB4E00, &qword_1E1B0AB20);
    goto LABEL_7;
  }

  sub_1E1308EC0(&v212, &v215);
  __swift_project_boxed_opaque_existential_1Tm(&v215, v216);
  if (sub_1E1AF117C())
  {
    __swift_destroy_boxed_opaque_existential_1(&v215);
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0, &qword_1E1B02A80);
    v169 = v196[9];
    v35 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    v170 = (2 * v169);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1E1B03760;
    v172 = v36;
    v184 = (v36 + v35);
    v37 = *(v30 + 2);
    v216 = v34;
    v217 = MEMORY[0x1E69AB858];
    v215 = v37;
    *&v212 = MEMORY[0x1E69E7CC0];
    v186 = sub_1E1425840();
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0, &qword_1E1B08CF0);
    v190 = sub_1E1383E14();
    v38 = v197;
    v39 = v198;
    sub_1E1AF6EEC();
    v7 = v193;
    sub_1E1AF186C();
    v185 = *(v199 + 8);
    v185(v38, v39);
    __swift_destroy_boxed_opaque_existential_1(&v215);
    v40 = v7[13];
    v41 = v7[14];
    v42 = __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v40);
    v216 = v40;
    v217 = *(v41 + 8);
    v43 = __swift_allocate_boxed_opaque_existential_0(&v215);
    (*(*(v40 - 8) + 16))(v43, v42, v40);
    v167 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
    v44 = *(v167 + 28);
    v45 = sub_1E1AF166C();
    v213 = v45;
    v46 = MEMORY[0x1E69AB980];
    v214 = MEMORY[0x1E69AB980];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v212);
    v48 = *(v45 - 8);
    v165 = *(v48 + 16);
    v166 = v48 + 16;
    v165(boxed_opaque_existential_0, &v201[v44], v45);
    *&v209 = MEMORY[0x1E69E7CC0];
    sub_1E1AF6EEC();
    sub_1E1AF186C();
    v185(v38, v39);
    __swift_destroy_boxed_opaque_existential_1(&v212);
    __swift_destroy_boxed_opaque_existential_1(&v215);
    v49 = v7[18];
    v50 = v7[19];
    v51 = __swift_project_boxed_opaque_existential_1Tm(v7 + 15, v49);
    v216 = v49;
    v217 = *(v50 + 8);
    v52 = __swift_allocate_boxed_opaque_existential_0(&v215);
    v53 = v51;
    v54 = v46;
    (*(*(v49 - 8) + 16))(v52, v53, v49);
    v55 = *(v167 + 36);
    v213 = v45;
    v214 = v46;
    v56 = __swift_allocate_boxed_opaque_existential_0(&v212);
    v165(v56, &v201[v55], v45);
    *&v209 = MEMORY[0x1E69E7CC0];
    sub_1E1AF6EEC();
    sub_1E1AF186C();
    v57 = v39;
    v58 = v201;
    v185(v38, v57);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0, &qword_1E1B02A80);
  v186 = v196[9];
  v59 = (*(v196 + 80) + 32) & ~*(v196 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1E1B05090;
  v172 = v60;
  v184 = (v60 + v59);
  v61 = *(v30 + 2);
  v213 = v34;
  v214 = MEMORY[0x1E69AB858];
  *&v212 = v61;
  *&v209 = MEMORY[0x1E69E7CC0];
  v62 = sub_1E1425840();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0, &qword_1E1B08CF0);
  v185 = sub_1E1383E14();
  v64 = v197;
  v65 = v198;
  v190 = v62;
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v66 = v199 + 8;
  v170 = *(v199 + 8);
  v170(v64, v65);
  __swift_destroy_boxed_opaque_existential_1(&v212);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA440, &unk_1E1B3A290);
  v168 = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF183C();
  *&v212 = v67;
  v169 = v63;
  sub_1E1AF6EEC();
  v68 = v186;
  sub_1E1AF186C();
  v69 = v170;
  v170(v64, v65);
  v167 = 2 * v68;
  v70 = v7[13];
  v71 = v7[14];
  v72 = __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v70);
  v213 = v70;
  v214 = *(v71 + 8);
  v73 = __swift_allocate_boxed_opaque_existential_0(&v212);
  (*(*(v70 - 8) + 16))(v73, v72, v70);
  v74 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  *&v209 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v69(v64, v65);
  __swift_destroy_boxed_opaque_existential_1(&v212);
  v75 = v7[18];
  v76 = v7[19];
  v77 = __swift_project_boxed_opaque_existential_1Tm(v7 + 15, v75);
  v213 = v75;
  v78 = *(v76 + 8);
  v58 = v201;
  v214 = v78;
  v79 = __swift_allocate_boxed_opaque_existential_0(&v212);
  (*(*(v75 - 8) + 16))(v79, v77, v75);
  v80 = *(v74 + 36);
  v45 = sub_1E1AF166C();
  v210 = v45;
  v211 = MEMORY[0x1E69AB980];
  v81 = __swift_allocate_boxed_opaque_existential_0(&v209);
  (*(*(v45 - 8) + 16))(v81, &v58[v80], v45);
  *&v206 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v170(v64, v65);
  v54 = MEMORY[0x1E69AB980];
  __swift_destroy_boxed_opaque_existential_1(&v209);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(&v212);
  __swift_destroy_boxed_opaque_existential_1(&v215);
  sub_1E1AF166C();
  v216 = v45;
  v217 = v54;
  v82 = __swift_allocate_boxed_opaque_existential_0(&v215);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 25, v7[28]);
  v83 = sub_1E1AF117C();
  v84 = type metadata accessor for AppShowcaseLockupViewLayout.Metrics(0);
  v85 = v84;
  v86 = *(*(v45 - 8) + 16);
  v87 = 48;
  if (v83)
  {
    v87 = 40;
  }

  v88 = &v58[*(v84 + v87)];
  v186 = v82;
  v86(v82, v88, v45);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 25, v7[28]);
  v89 = sub_1E1AF117C();
  v90 = v7;
  v190 = v85;
  if (v89)
  {
    v91 = v189;
    v92 = v172;
  }

  else
  {
    v93 = v58;
    v94 = v90[28];
    v95 = v90[29];
    v96 = __swift_project_boxed_opaque_existential_1Tm(v90 + 25, v94);
    v213 = v94;
    v214 = *(v95 + 8);
    v97 = __swift_allocate_boxed_opaque_existential_0(&v212);
    (*(*(v94 - 8) + 16))(v97, v96, v94);
    v98 = *(v85 + 44);
    v210 = v45;
    v211 = v54;
    v99 = __swift_allocate_boxed_opaque_existential_0(&v209);
    v86(v99, &v93[v98], v45);
    *&v206 = MEMORY[0x1E69E7CC0];
    sub_1E1425840();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0, &qword_1E1B08CF0);
    sub_1E1383E14();
    v100 = v197;
    v101 = v198;
    sub_1E1AF6EEC();
    v102 = v171;
    sub_1E1AF186C();
    (*(v199 + 8))(v100, v101);
    __swift_destroy_boxed_opaque_existential_1(&v209);
    __swift_destroy_boxed_opaque_existential_1(&v212);
    v92 = v172;
    v104 = *(v172 + 2);
    v103 = *(v172 + 3);
    if (v104 >= v103 >> 1)
    {
      v92 = sub_1E172D494((v103 > 1), v104 + 1, 1, v172);
    }

    v91 = v189;
    *(v92 + 2) = v104 + 1;
    (v196[4])(&v92[((*(v196 + 80) + 32) & ~*(v196 + 80)) + v196[9] * v104], v102, v191);
  }

  v105 = v216;
  __swift_project_boxed_opaque_existential_1Tm(&v215, v216);
  v106 = v173;
  sub_1E13BC274(v105);
  v107 = sub_1E1AF12DC();
  (*(v174 + 8))(v106, v175);
  v108 = v107 + *&v201[*(v190 + 52) + 8];
  v213 = MEMORY[0x1E69E7DE0];
  v214 = MEMORY[0x1E69AB858];
  *&v212 = v108;
  *&v209 = MEMORY[0x1E69E7CC0];
  v109 = sub_1E1425840();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0, &qword_1E1B08CF0);
  sub_1E1383E14();
  v111 = v197;
  v185 = v110;
  v112 = v198;
  v186 = v109;
  sub_1E1AF6EEC();
  v113 = v176;
  sub_1E1AF186C();
  v114 = *(v199 + 8);
  v199 += 8;
  v184 = v114;
  v114(v111, v112);
  __swift_destroy_boxed_opaque_existential_1(&v212);
  v116 = *(v92 + 2);
  v115 = *(v92 + 3);
  if (v116 >= v115 >> 1)
  {
    v92 = sub_1E172D494((v115 > 1), v116 + 1, 1, v92);
  }

  *(v92 + 2) = v116 + 1;
  v117 = (*(v196 + 80) + 32) & ~*(v196 + 80);
  (v196[4])(&v92[v117 + v196[9] * v116], v113, v191);
  v118 = *MEMORY[0x1E69ABA28];
  v119 = *(v194 + 104);
  v120 = *MEMORY[0x1E69ABA28];
  v194 += 104;
  v196 = v119;
  (v119)(v188, v120, v187);
  v191 = sub_1E1AF140C();
  v213 = v191;
  v214 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v212);
  sub_1E1AF13FC();
  v121 = v192;
  sub_1E1AF18CC();
  sub_1E1AF182C();
  v218.origin.x = a3;
  v218.origin.y = a4;
  v218.size.width = a5;
  v218.size.height = a6;
  Width = CGRectGetWidth(v218);
  v123 = sub_1E1AF108C();
  *v124 = Width;
  v123(&v212, 0);
  sub_1E1AF109C();
  v125 = sub_1E1AF10FC();
  sub_1E1AF1D3C();
  v125(&v212, 0);
  v126 = sub_1E1AF10FC();
  sub_1E1AF1D0C();
  v126(&v212, 0);
  v127 = v193;
  sub_1E134FD1C((v193 + 30), &v209, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (v210)
  {
    sub_1E1308EC0(&v209, &v212);
    sub_1E134FD1C((v127 + 35), &v206, &qword_1ECEB2AD0, &unk_1E1B03790);
    if (v207)
    {
      v128 = v127;
      sub_1E1308EC0(&v206, &v209);
      __swift_project_boxed_opaque_existential_1Tm(&v212, v213);
      if (sub_1E1AF112C())
      {
        __swift_project_boxed_opaque_existential_1Tm(&v209, v210);
        if (sub_1E1AF112C())
        {
          sub_1E134FD1C((v127 + 5), &v203, &qword_1ECEB4E00, &qword_1E1B0AB20);
          LODWORD(v176) = v118;
          if (v204)
          {
            sub_1E1308EC0(&v203, &v206);
            __swift_project_boxed_opaque_existential_1Tm(&v206, v207);
            if ((sub_1E1AF117C() & 1) == 0)
            {
              __swift_project_boxed_opaque_existential_1Tm(&v206, v207);
              sub_1E1AF115C();
              CGRectGetMaxY(v220);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0, &qword_1E1B02A80);
              v145 = swift_allocObject();
              *(v145 + 16) = xmmword_1E1B02CD0;
              v175 = v145;
              v174 = v145 + v117;
              v146 = v213;
              v147 = v214;
              v148 = __swift_project_boxed_opaque_existential_1Tm(&v212, v213);
              v204 = v146;
              v205 = *(v147 + 8);
              v149 = __swift_allocate_boxed_opaque_existential_0(&v203);
              (*(*(v146 - 8) + 16))(v149, v148, v146);
              v202 = MEMORY[0x1E69E7CC0];
              v150 = v197;
              v151 = v198;
              sub_1E1AF6EEC();
              v139 = v200;
              sub_1E1AF186C();
              v152 = v184;
              v184(v150, v151);
              __swift_destroy_boxed_opaque_existential_1(&v203);
              v154 = v210;
              v153 = v211;
              v155 = __swift_project_boxed_opaque_existential_1Tm(&v209, v210);
              v204 = v154;
              v205 = *(v153 + 8);
              v156 = __swift_allocate_boxed_opaque_existential_0(&v203);
              (*(*(v154 - 8) + 16))(v156, v155, v154);
              v202 = MEMORY[0x1E69E7CC0];
              sub_1E1AF6EEC();
              sub_1E1AF186C();
              v152(v150, v151);
              __swift_destroy_boxed_opaque_existential_1(&v203);
              goto LABEL_34;
            }

            __swift_destroy_boxed_opaque_existential_1(&v206);
          }

          else
          {
            sub_1E1308058(&v203, &qword_1ECEB4E00, &qword_1E1B0AB20);
          }

          __swift_project_boxed_opaque_existential_1Tm(v127, v127[3]);
          sub_1E1AF115C();
          CGRectGetMaxY(v219);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0, &qword_1E1B02A80);
          v132 = swift_allocObject();
          *(v132 + 16) = xmmword_1E1B02CD0;
          v175 = v132;
          v174 = v132 + v117;
          v133 = v213;
          v134 = v214;
          v135 = __swift_project_boxed_opaque_existential_1Tm(&v212, v213);
          v207 = v133;
          v208 = *(v134 + 8);
          v136 = __swift_allocate_boxed_opaque_existential_0(&v206);
          (*(*(v133 - 8) + 16))(v136, v135, v133);
          *&v203 = MEMORY[0x1E69E7CC0];
          v137 = v197;
          v138 = v198;
          sub_1E1AF6EEC();
          v139 = v200;
          sub_1E1AF186C();
          v140 = v184;
          v184(v137, v138);
          __swift_destroy_boxed_opaque_existential_1(&v206);
          v141 = v210;
          v142 = v211;
          v143 = __swift_project_boxed_opaque_existential_1Tm(&v209, v210);
          v207 = v141;
          v208 = *(v142 + 8);
          v144 = __swift_allocate_boxed_opaque_existential_0(&v206);
          (*(*(v141 - 8) + 16))(v144, v143, v141);
          *&v203 = MEMORY[0x1E69E7CC0];
          sub_1E1AF6EEC();
          sub_1E1AF186C();
          v140(v137, v138);
LABEL_34:
          __swift_destroy_boxed_opaque_existential_1(&v206);
          __swift_project_boxed_opaque_existential_1Tm(v128 + 20, v128[23]);
          sub_1E1AF115C();
          CGRectGetMinY(v221);
          v222.origin.x = a3;
          v222.origin.y = a4;
          v222.size.width = a5;
          v222.size.height = a6;
          CGRectGetMinX(v222);
          v223.origin.x = a3;
          v223.origin.y = a4;
          v223.size.width = a5;
          v223.size.height = a6;
          CGRectGetWidth(v223);
          (v196)(v188, v176, v187);
          v207 = v191;
          v208 = MEMORY[0x1E69AB908];
          __swift_allocate_boxed_opaque_existential_0(&v206);
          sub_1E1AF13FC();
          v157 = v163;
          sub_1E1AF18CC();
          v158 = v164;
          sub_1E1AF182C();
          v130 = v181;
          v159 = v182;
          (*(v181 + 8))(v158, v182);
          v160 = *(v179 + 8);
          v161 = v157;
          v162 = v180;
          v160(v161, v180);
          v160(v192, v162);
          (*(v177 + 8))(v139, v178);
          __swift_destroy_boxed_opaque_existential_1(&v209);
          __swift_destroy_boxed_opaque_existential_1(&v212);
          v129 = v159;
          v91 = v189;
          goto LABEL_30;
        }
      }

      (*(v179 + 8))(v192, v180);
      (*(v177 + 8))(v200, v178);
      __swift_destroy_boxed_opaque_existential_1(&v209);
    }

    else
    {
      (*(v179 + 8))(v192, v180);
      (*(v177 + 8))(v200, v178);
      sub_1E1308058(&v206, &qword_1ECEB2AD0, &unk_1E1B03790);
    }

    __swift_destroy_boxed_opaque_existential_1(&v212);
  }

  else
  {
    (*(v179 + 8))(v121, v180);
    (*(v177 + 8))(v200, v178);
    sub_1E1308058(&v209, &qword_1ECEB2AD0, &unk_1E1B03790);
  }

  v129 = v182;
  v130 = v181;
LABEL_30:
  (*(v130 + 32))(v183, v91, v129);
  return __swift_destroy_boxed_opaque_existential_1(&v215);
}

void sub_1E1A25D6C(uint64_t a1)
{
  sub_1E138432C(319, &qword_1EE1D2AE0, MEMORY[0x1E69AB888]);
  if (v1 <= 0x3F)
  {
    sub_1E1300690(319, &qword_1EE1D2AD0, &qword_1ECEB2AC0, &unk_1E1B03780);
    if (v2 <= 0x3F)
    {
      sub_1E138432C(319, &qword_1EE1D2AB0, MEMORY[0x1E69AB910]);
      if (v3 <= 0x3F)
      {
        sub_1E1300690(319, &unk_1EE1D2AA0, &qword_1ECEB2AC8, " .\b");
        if (v4 <= 0x3F)
        {
          type metadata accessor for AppShowcaseLockupViewLayout.Metrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E1A25EB8(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_1E138432C(319, &qword_1EE1D2AC0, MEMORY[0x1E69AB8E8]);
    if (v2 <= 0x3F)
    {
      sub_1E1AF166C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id ArtworkItemProvider.init(artworkLoader:config:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC11AppStoreKit19ArtworkItemProvider_artworkLoader] = a1;
  *&v3[OBJC_IVAR____TtC11AppStoreKit19ArtworkItemProvider_artworkLoaderConfig] = a2;
  v14.receiver = v3;
  v14.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = *MEMORY[0x1E6963860];
  v13[4] = sub_1E13571A0;
  v13[5] = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E1A26138;
  v13[3] = &block_descriptor_100;
  v9 = _Block_copy(v13);
  v10 = v7;
  v11 = v8;
  [v10 registerDataRepresentationForTypeIdentifier:v11 visibility:3 loadHandler:v9];
  _Block_release(v9);

  return v10;
}

id sub_1E1A26138(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_1E1A26A6C, v4);

  return v5;
}

id ArtworkItemProvider.loadDataRepresentation(forTypeIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  if (sub_1E1AF5DFC() == a1 && v11 == a2)
  {
  }

  else
  {
    v13 = sub_1E1AF74AC();

    if ((v13 & 1) == 0)
    {
      v14 = sub_1E1AF5DBC();
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E1A26488;
      aBlock[3] = &block_descriptor_3_2;
      v15 = _Block_copy(aBlock);

      v26.receiver = v5;
      v26.super_class = ObjectType;
      v16 = objc_msgSendSuper2(&v26, sel_loadDataRepresentationForTypeIdentifier_completionHandler_, v14, v15);
      _Block_release(v15);

      return v16;
    }
  }

  v18 = [objc_opt_self() progressWithTotalUnitCount_];
  v19 = *&v5[OBJC_IVAR____TtC11AppStoreKit19ArtworkItemProvider_artworkLoaderConfig];
  sub_1E1AA9ED4();
  v21 = [v20 hash];
  swift_unknownObjectRelease();
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;

  sub_1E1AF6F6C();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v18;
  v24[3] = v22;
  v24[4] = v23;
  v24[5] = v21;
  v25 = v18;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v19, 1, aBlock, sub_1E1A26A10, v24);

  sub_1E13E2E98(aBlock);

  return v25;
}

double sub_1E1A26488(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1E1AEFD3C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1E1337F64(v4, v8);

  return result;
}

uint64_t sub_1E1A26534(UIImage *a1, int a2, int a3, uint64_t a4, id a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  [a5 setCompletedUnitCount_];
  swift_beginAccess();
  v11 = *(a6 + 16);
  if (v11)
  {
    v12 = *(a6 + 24);
    if (a1)
    {

      v13 = UIImagePNGRepresentation(a1);
      if (v13)
      {
        v14 = v13;
        a1 = sub_1E1AEFD3C();
        v16 = v15;

LABEL_8:
        v11(a1, v16, a4);
        sub_1E1300EA8(v11, v12);
        sub_1E1337F64(a1, v16);
        goto LABEL_9;
      }

      a1 = 0;
    }

    else
    {
    }

    v16 = 0xF000000000000000;
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E1AF6F6C();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(v20, 1);

    sub_1E134B88C(v20);
  }

  swift_beginAccess();
  v17 = *(a6 + 16);
  v18 = *(a6 + 24);
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  return sub_1E1300EA8(v17, v18);
}

void sub_1E1A2677C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1E1AEFB1C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1E1AEFD2C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id ArtworkItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArtworkItemProvider.__allocating_init(item:typeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1E1AF5DBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithItem:a1 typeIdentifier:v6];
  swift_unknownObjectRelease();

  return v7;
}

id ArtworkItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E1A26F10(void *a1, void *a2, char a3, uint64_t a4)
{
  v9 = sub_1E1AEF3AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  v22.receiver = v4;
  v22.super_class = v16;
  result = objc_msgSendSuper2(&v22, sel_reconfigureNewRequest_originalTask_redirect_error_, a1, a2, a3 & 1, a4);
  if (a3)
  {
    result = [a2 originalRequest];
    if (result)
    {
      v18 = result;
      sub_1E1AEF33C();

      (*(v10 + 32))(v15, v12, v9);
      sub_1E1AEF37C();
      if (v19)
      {
        v20 = sub_1E1AF5DBC();

        v21 = sub_1E1AF5DBC();
        [a1 setValue:v20 forHTTPHeaderField:v21];
      }

      return (*(v10 + 8))(v15, v9);
    }
  }

  return result;
}

id sub_1E1A271D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E1A27230(void *a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1E1AEF3AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  v24.receiver = v5;
  v24.super_class = ObjectType;
  result = objc_msgSendSuper2(&v24, sel_reconfigureNewRequest_originalTask_redirect_error_, a1, a2, a3 & 1, a4, v16);
  if (a3)
  {
    result = [a2 originalRequest];
    if (result)
    {
      v20 = result;
      sub_1E1AEF33C();

      (*(v12 + 32))(v18, v14, v11);
      sub_1E1AEF37C();
      if (v21)
      {
        v22 = sub_1E1AF5DBC();

        v23 = sub_1E1AF5DBC();
        [a1 setValue:v22 forHTTPHeaderField:v23];
      }

      return (*(v12 + 8))(v18, v11);
    }
  }

  return result;
}

__n128 DeepLinkWithReferrerIntent.init(url:isIncomingURL:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = sub_1E1AEFCCC();
  v14 = *(a3 + 16);
  v15 = *a3;
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v11 = type metadata accessor for DeepLinkWithReferrerIntent(0);
  *(a4 + *(v11 + 20)) = a2;
  v12 = a4 + *(v11 + 24);
  result = v15;
  *v12 = v15;
  *(v12 + 16) = v14;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  return result;
}

uint64_t type metadata accessor for DeepLinkWithReferrerIntent(uint64_t a1)
{
  result = qword_1ECEBCD88;
  if (!qword_1ECEBCD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeepLinkWithReferrerIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFCCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double DeepLinkWithReferrerIntent.referrerData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeepLinkWithReferrerIntent(0) + 24);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v3 + 40);
  *(a1 + 40) = v6;

  return sub_1E13E23E4(v5, v6);
}

JSValue __swiftcall DeepLinkWithReferrerIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_7;
  }

  isa = result.super.isa;
  v14 = sub_1E1AEFBDC();
  v7 = [v3 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v14, v6}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1E1AF6C5C();
  v8 = type metadata accessor for DeepLinkWithReferrerIntent(0);
  LOBYTE(v15) = *(v1 + *(v8 + 20));
  v9 = [v3 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v15}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1E1AF6C5C();
  v10 = (v1 + *(v8 + 24));
  v11 = v10[4];
  v12 = *(v10 + 40);
  v16 = *v10;
  v17 = *(v10 + 1);
  v18 = v10[3];
  LOBYTE(v19) = v12;

  sub_1E13E23E4(v11, v12);
  v13 = [v3 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v16, v17, v18, v11, v19}];
  result.super.isa = swift_unknownObjectRelease();
  if (v13)
  {
    sub_1E1AF6C5C();
    return isa;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1E1A27984()
{
  result = qword_1ECEBCC00;
  if (!qword_1ECEBCC00)
  {
    type metadata accessor for DeepLinkWithReferrerIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCC00);
  }

  return result;
}

uint64_t sub_1E1A279DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFCCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E1A27A94(uint64_t a1)
{
  result = sub_1E1AEFCCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ProductPageIconDimension.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E1A27C18()
{
  result = qword_1ECEBCD98[0];
  if (!qword_1ECEBCD98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEBCD98);
  }

  return result;
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
      sub_1E1355E88();
      v4 = sub_1E1AF6CAC();
      v5 = [v4 colorWithAlphaComponent_];
    }

    v6 = v5;

    return v6;
  }

  else
  {
    if (qword_1EE1E3248 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE1E3250;

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
      sub_1E1355E88();
      return sub_1E1AF6CAC();
    }
  }

  else
  {
    if (qword_1EE1E3260 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE1E3268;

    return v1;
  }
}

uint64_t TodayCard.Style.overlayBackgroundColor.getter()
{
  if (*v0 > 1u)
  {
    return 0;
  }

  if (qword_1EE1D2318 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1D2320;
  v2 = qword_1EE1D2320;
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
    if (qword_1EE1E3260 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE1E3268;

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
    if (qword_1EE1E3248 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE1E3250;

    return v2;
  }
}

Swift::Void __swiftcall ProductPresenter.reloadTopLockup()()
{
  if (sub_1E1AF74AC())
  {
    return;
  }

  v1 = sub_1E184ADBC();
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_15:

    return;
  }

LABEL_29:
  v3 = sub_1E1AF71CC();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_5:
  v12 = v0;
  v4 = 0;
  v0 = 0xE500000000000000;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E68FFD80](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    if (*(v5 + 16) <= 1u && *(v5 + 16))
    {
      break;
    }

    v6 = sub_1E1AF74AC();

    if (v6)
    {
      goto LABEL_20;
    }

    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

LABEL_20:

  if (*(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v8 = *(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v8 = *(v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v8)
    {
      return;
    }
  }

  sub_1E18426E4(v8);
  v9 = v12 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(v4, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Int __swiftcall ProductPresenter.numberOfNonShelfRows(for:)(Swift::Int a1)
{
  v3 = sub_1E184ADBC();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v4 = *(v3 + 8 * a1 + 32);

      v5 = *(v4 + 16);

      if (v5 == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_29;
  }

  v15 = MEMORY[0x1E68FFD80](a1, v3);

  v16 = *(v15 + 16);
  swift_unknownObjectRelease();
  if (v16 == 2)
  {
LABEL_5:
    v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
    if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isMediaExpanded) == 1)
    {
      if (v6)
      {
        v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
      }

      else
      {
        v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
        if (!v7)
        {
          return 0;
        }
      }

      v9 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
      swift_beginAccess();
      v10 = *(v7 + v9);

      if (!(v10 >> 62))
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:

        return v11;
      }

LABEL_29:
      v11 = sub_1E1AF71CC();
      goto LABEL_14;
    }

    if (v6)
    {
      v8 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
    }

    else
    {
      v8 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
      if (!v8)
      {
        return 1;
      }
    }

    v12 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
    swift_beginAccess();
    v13 = *(v8 + v12);

    if (v13 >> 62)
    {
      v11 = sub_1E1AF71CC();
    }

    else
    {
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v11)
    {
      return v11;
    }

    return 1;
  }

LABEL_24:

  return sub_1E184C07C(a1);
}

double ProductPresenter.data(at:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (sub_1E1AF01AC() < 2)
  {
    if (qword_1ECEB1280 != -1)
    {
      swift_once();
    }

    v6 = sub_1E1AF591C();
    __swift_project_value_buffer(v6, qword_1ECEF4B98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    sub_1E1AF382C();
    v7 = sub_1E1AF01FC();
    v27 = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);
    sub_1E1AF38BC();
    sub_1E13E44F8(v26);
    sub_1E1AF382C();
    v9 = sub_1E1AF01AC();
    v27 = MEMORY[0x1E69E6530];
    v26[0] = v9;
    sub_1E1AF38BC();
    sub_1E13E44F8(v26);
    sub_1E1AF382C();
    sub_1E1AF54AC();

    goto LABEL_44;
  }

  v10 = sub_1E184ADBC();
  if (v10 >> 62)
  {
    v11 = sub_1E1AF71CC();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_1E1AF019C() >= v11)
  {
    goto LABEL_44;
  }

  v12 = sub_1E184ADBC();
  v13 = sub_1E1AF019C();
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v12 + 8 * v13 + 32);

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_38;
  }

  v14 = MEMORY[0x1E68FFD80](v13, v12);
LABEL_12:

  if (*(v14 + 16) != 2)
  {
    sub_1E184C9E0(a2);

    return result;
  }

  if (*(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct))
  {
    v15 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_fullProduct);
  }

  else
  {
    v15 = *(v2 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_sidepackedProduct);
    if (!v15)
    {
LABEL_43:

LABEL_44:
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 40) = -256;
      return result;
    }
  }

  v17 = OBJC_IVAR____TtC11AppStoreKit11ProductPage_media;
  swift_beginAccess();
  v12 = *(v15 + v17);

  if (!(v12 >> 62))
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1E1AF70EC();
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_38:
  if (!sub_1E1AF71CC())
  {
LABEL_42:

    goto LABEL_43;
  }

  v25 = sub_1E1AF71CC();
  if (!v25)
  {
    goto LABEL_48;
  }

  v18 = v25;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1E1AF70EC();
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

LABEL_23:
  v19 = 0;
  v20 = v12 & 0xC000000000000001;
  do
  {
    if (v20)
    {
      MEMORY[0x1E68FFD80](v19, v12);
    }

    else
    {
    }

    ++v19;

    sub_1E1AF70BC();
    sub_1E1AF70FC();
    sub_1E1AF710C();
    sub_1E1AF70CC();
  }

  while (v18 != v19);
  for (i = v28; ; i = MEMORY[0x1E69E7CC0])
  {
    v22 = sub_1E1AF018C();
    if (v20)
    {
      break;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v12 + 8 * v22 + 32);

      goto LABEL_33;
    }

    __break(1u);
LABEL_48:
    v20 = v12 & 0xC000000000000001;
  }

  v23 = MEMORY[0x1E68FFD80](v22, v12);
LABEL_33:

  v24 = *(v3 + OBJC_IVAR____TtC11AppStoreKit16ProductPresenter_isMediaExpanded);
  *a2 = v23;
  *(a2 + 8) = i;
  *(a2 + 16) = v24;
  *(a2 + 41) = 1;
  return result;
}

unint64_t ProductPresenter.isSelectable(at:)()
{
  v0 = sub_1E184ADBC();
  result = sub_1E1AF019C();
  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E68FFD80](result, v0);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v0 + 8 * result + 32);

LABEL_5:

    v3 = *(v2 + 16);

    return v3 > 2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1A28C20()
{
  v0 = sub_1E184ADBC();
  result = sub_1E1AF019C();
  if ((v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E68FFD80](result, v0);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v0 + 8 * result + 32);

LABEL_5:

    v3 = *(v2 + 16);

    return v3 > 2;
  }

  __break(1u);
  return result;
}

double UpsellGridLayout.init(metrics:icons:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

double UpsellGridLayout.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  return result;
}

double UpsellGridLayout.metrics.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 8) = v2;
  *(v1 + 16) = result;
  return result;
}

uint64_t UpsellGridLayout.Metrics.init(dimensionSmallIconCount:isExtendedHeight:iconScaleFactor:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t static UpsellGridLayout.iconCount(fitting:using:in:)(uint64_t *a1, __n128 a2, __n128 a3)
{
  v3 = *(a1 + 8);
  v4 = a1[2];
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  sub_1E1A28E58(&v7, v10, a2.n128_f64[0], a3.n128_f64[0], 0.0, 0.0);
  v5 = *(v10[0] + 16);

  return v5;
}

double sub_1E1A28E58@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v18 = *a1;
  v19 = 7 * *a1;
  if ((*a1 * 7) >> 64 != v19 >> 63)
  {
    goto LABEL_109;
  }

  v20 = a4;
  if (a5 < a4)
  {
    a4 = a5;
  }

  if (v20 > a5)
  {
    v21 = v20;
  }

  else
  {
    v21 = a5;
  }

  if (v18 <= 1)
  {
    v18 = 1;
  }

  v22 = v18 - 1;
  if (!*(a1 + 8))
  {
    a4 = v21;
  }

  v11 = a4 / (v19 + v22);
  v268 = *(a1 + 2) * (v11 * 7.0);
  v23 = v11 + v268 + v268;
  if (!*(a1 + 8))
  {
    a6 = 0.0;
  }

  if (!*(a1 + 8))
  {
    a7 = 0.0;
  }

  v273.origin.x = a6;
  v273.origin.y = a7;
  v273.size.width = v20;
  v273.size.height = a5;
  v27 = CGRectGetMidX(v273) - v23 * 0.5;
  v274.origin.x = a6;
  v274.origin.y = a7;
  v274.size.width = v20;
  v274.size.height = a5;
  v10 = a6;
  v267 = a7;
  v12 = a5;
  v254 = CGRectGetMidY(v274) - v23 * 0.5;
  v255 = v27;
  rect = v11 + v268 + v268;
  sub_1E1AF6B1C();
  v15 = v28;
  v16 = v29;
  v13 = v30;
  v14 = v31;
  v7 = sub_1E172D670(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 2);
  v18 = *(v7 + 3);
  v8 = v9 + 1;
  v258 = v20;
  if (v9 >= v18 >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    *(v7 + 2) = v8;
    v32 = &v7[32 * v9];
    *(v32 + 4) = v15;
    *(v32 + 5) = v16;
    *(v32 + 6) = v13;
    *(v32 + 7) = v14;
    v275.origin.y = v254;
    v275.origin.x = v255;
    v275.size.width = rect;
    v275.size.height = rect;
    v33 = CGRectGetMinY(v275) - v11;
    v269 = v10;
    v276.origin.x = v10;
    v34 = v267;
    v276.origin.y = v267;
    v276.size.width = v258;
    v35 = v12;
    v276.size.height = v12;
    v265 = v11 + v268;
    v253 = v11;
    if (CGRectGetMinY(v276) < v33)
    {
      v64 = v258;
      v65 = v269;
      do
      {
        v278.origin.y = v254;
        v278.origin.x = v255;
        v278.size.width = rect;
        v278.size.height = rect;
        v36 = v35;
        MinX = CGRectGetMinX(v278);
        v279.origin.x = v65;
        v279.origin.y = v34;
        v279.size.width = v64;
        v279.size.height = v36;
        v328.origin.x = MinX;
        v328.origin.y = v33 - v268;
        v328.size.width = v268;
        v328.size.height = v268;
        if (CGRectIntersectsRect(v279, v328))
        {
          sub_1E1AF6B1C();
          v43 = *(v7 + 2);
          v42 = *(v7 + 3);
          v44 = MinX;
          if (v43 >= v42 >> 1)
          {
            v263 = v38;
            v55 = v39;
            v56 = v40;
            v57 = v41;
            v58 = sub_1E172D670((v42 > 1), v43 + 1, 1, v7);
            v41 = v57;
            v40 = v56;
            v39 = v55;
            v38 = v263;
            v7 = v58;
          }

          *(v7 + 2) = v43 + 1;
          v45 = &v7[32 * v43];
          *(v45 + 4) = v38;
          *(v45 + 5) = v39;
          *(v45 + 6) = v40;
          *(v45 + 7) = v41;
        }

        else
        {
          v44 = MinX;
        }

        v35 = v36;
        v280.origin.y = v254;
        v280.origin.x = v255;
        v280.size.width = rect;
        v280.size.height = rect;
        v46 = CGRectGetMaxX(v280) - v268;
        v281.origin.x = v44;
        v281.origin.y = v33 - v268;
        v281.size.width = v268;
        v281.size.height = v268;
        MinY = CGRectGetMinY(v281);
        v282.origin.x = v269;
        v34 = v267;
        v282.origin.y = v267;
        v282.size.width = v258;
        v282.size.height = v36;
        v329.origin.x = v46;
        v329.origin.y = MinY;
        v329.size.width = v268;
        v329.size.height = v268;
        if (CGRectIntersectsRect(v282, v329))
        {
          sub_1E1AF6B1C();
          v53 = *(v7 + 2);
          v52 = *(v7 + 3);
          if (v53 >= v52 >> 1)
          {
            v59 = v48;
            v60 = v49;
            v61 = v50;
            v62 = v51;
            v63 = sub_1E172D670((v52 > 1), v53 + 1, 1, v7);
            v51 = v62;
            v50 = v61;
            v49 = v60;
            v48 = v59;
            v7 = v63;
          }

          v11 = v253;
          *(v7 + 2) = v53 + 1;
          v54 = &v7[32 * v53];
          *(v54 + 4) = v48;
          *(v54 + 5) = v49;
          *(v54 + 6) = v50;
          *(v54 + 7) = v51;
          v65 = v269;
        }

        else
        {
          v11 = v253;
          v65 = v269;
        }

        v33 = v33 - v265;
        v277.origin.x = v65;
        v277.origin.y = v267;
        v64 = v258;
        v277.size.width = v258;
        v277.size.height = v36;
      }

      while (CGRectGetMinY(v277) < v33);
    }

    else
    {
      v64 = v258;
      v65 = v269;
    }

    v283.origin.y = v254;
    v283.origin.x = v255;
    v66 = rect;
    v283.size.width = rect;
    v283.size.height = rect;
    v67 = v11 + CGRectGetMaxY(v283);
    v284.origin.x = v65;
    v284.origin.y = v34;
    v284.size.width = v64;
    v284.size.height = v35;
    v68 = v64;
    v266 = v35;
    if (v67 >= CGRectGetMaxY(v284))
    {
      v10 = v269;
    }

    else
    {
      v10 = v269;
      do
      {
        v286.origin.y = v254;
        v286.origin.x = v255;
        v286.size.width = v66;
        v286.size.height = v66;
        v69 = v35;
        v70 = CGRectGetMinX(v286);
        v287.origin.x = v10;
        v287.origin.y = v34;
        v287.size.width = v68;
        v287.size.height = v69;
        v330.origin.x = v70;
        v330.origin.y = v67;
        v330.size.width = v268;
        v330.size.height = v268;
        if (CGRectIntersectsRect(v287, v330))
        {
          sub_1E1AF6B1C();
          v76 = *(v7 + 2);
          v75 = *(v7 + 3);
          if (v76 >= v75 >> 1)
          {
            v87 = v71;
            v88 = v72;
            v89 = v73;
            v90 = v74;
            v91 = sub_1E172D670((v75 > 1), v76 + 1, 1, v7);
            v74 = v90;
            v73 = v89;
            v72 = v88;
            v71 = v87;
            v7 = v91;
          }

          *(v7 + 2) = v76 + 1;
          v77 = &v7[32 * v76];
          *(v77 + 4) = v71;
          *(v77 + 5) = v72;
          *(v77 + 6) = v73;
          *(v77 + 7) = v74;
        }

        v288.origin.y = v254;
        v288.origin.x = v255;
        v288.size.width = rect;
        v288.size.height = rect;
        v78 = CGRectGetMaxX(v288) - v268;
        v289.origin.x = v70;
        v289.origin.y = v67;
        v289.size.width = v268;
        v289.size.height = v268;
        v79 = CGRectGetMinY(v289);
        v290.origin.x = v269;
        v35 = v266;
        v34 = v267;
        v290.origin.y = v267;
        v290.size.width = v68;
        v290.size.height = v266;
        v331.origin.x = v78;
        v331.origin.y = v79;
        v331.size.width = v268;
        v331.size.height = v268;
        if (CGRectIntersectsRect(v290, v331))
        {
          sub_1E1AF6B1C();
          v85 = *(v7 + 2);
          v84 = *(v7 + 3);
          if (v85 >= v84 >> 1)
          {
            v92 = v80;
            v93 = v81;
            v94 = v82;
            v95 = v83;
            v96 = sub_1E172D670((v84 > 1), v85 + 1, 1, v7);
            v83 = v95;
            v68 = v258;
            v82 = v94;
            v81 = v93;
            v80 = v92;
            v7 = v96;
          }

          *(v7 + 2) = v85 + 1;
          v86 = &v7[32 * v85];
          *(v86 + 4) = v80;
          *(v86 + 5) = v81;
          *(v86 + 6) = v82;
          *(v86 + 7) = v83;
          v10 = v269;
          v66 = rect;
        }

        else
        {
          v66 = rect;
          v10 = v269;
        }

        v67 = v265 + v67;
        v285.origin.x = v10;
        v285.origin.y = v267;
        v285.size.width = v68;
        v285.size.height = v266;
      }

      while (v67 < CGRectGetMaxY(v285));
    }

    v291.origin.x = v255;
    v97 = v66;
    v291.origin.y = v254;
    v291.size.width = v66;
    v291.size.height = v66;
    v98 = v253 + CGRectGetMaxX(v291);
    v292.origin.x = v255;
    v292.origin.y = v254;
    v292.size.width = v66;
    v292.size.height = v66;
    v99 = CGRectGetMaxY(v292) - v265;
    v293.origin.x = v10;
    v293.origin.y = v34;
    v293.size.width = v68;
    v293.size.height = v35;
    v271.x = v98;
    v271.y = v99;
    if (!CGRectContainsPoint(v293, v271))
    {
      break;
    }

    v252 = v253 + v97;
    v9 = 1;
    while (1)
    {
      v251 = v99;
      v100 = rect;
      v294.origin.x = v255;
      v294.origin.y = v254;
      v294.size.width = rect;
      v294.size.height = rect;
      v259 = CGRectGetMinX(v294);
      v295.origin.x = v255;
      v295.origin.y = v254;
      v13 = v258;
      v295.size.width = rect;
      v295.size.height = rect;
      MaxY = CGRectGetMaxY(v295);
      v261 = v99 - rect;
      sub_1E1AF6B1C();
      v106 = *(v7 + 2);
      v105 = *(v7 + 3);
      if (v106 >= v105 >> 1)
      {
        v240 = v101;
        v241 = v102;
        v242 = v103;
        v243 = v104;
        v244 = sub_1E172D670((v105 > 1), v106 + 1, 1, v7);
        v104 = v243;
        v13 = v258;
        v103 = v242;
        v102 = v241;
        v101 = v240;
        v10 = v269;
        v100 = rect;
        v7 = v244;
      }

      *(v7 + 2) = v106 + 1;
      v107 = &v7[32 * v106];
      *(v107 + 4) = v101;
      *(v107 + 5) = v102;
      *(v107 + 6) = v103;
      *(v107 + 7) = v104;
      v264 = v98;
      v296.origin.x = v98;
      v296.origin.y = v261;
      v296.size.width = v100;
      v296.size.height = v100;
      for (i = CGRectGetMinY(v296) - v253; ; i = i - v265)
      {
        v297.origin.x = v10;
        v297.origin.y = v34;
        v297.size.width = v13;
        v297.size.height = v35;
        if (CGRectGetMinY(v297) >= i)
        {
          break;
        }

        v298.origin.y = v261;
        v298.origin.x = v98;
        v298.size.width = v100;
        v298.size.height = v100;
        v109 = v13;
        v110 = v35;
        v111 = CGRectGetMinX(v298);
        v299.origin.x = v10;
        v299.origin.y = v34;
        v299.size.width = v109;
        v299.size.height = v110;
        v332.origin.x = v111;
        v332.origin.y = i - v268;
        v332.size.width = v268;
        v332.size.height = v268;
        if (CGRectIntersectsRect(v299, v332))
        {
          sub_1E1AF6B1C();
          v114 = v113;
          v116 = v115;
          v118 = v117;
          v120 = *(v7 + 2);
          v119 = *(v7 + 3);
          v121 = v111;
          if (v120 >= v119 >> 1)
          {
            v132 = v112;
            v133 = sub_1E172D670((v119 > 1), v120 + 1, 1, v7);
            v112 = v132;
            v7 = v133;
          }

          *(v7 + 2) = v120 + 1;
          v122 = &v7[32 * v120];
          *(v122 + 4) = v114;
          *(v122 + 5) = v112;
          *(v122 + 6) = v116;
          *(v122 + 7) = v118;
          v35 = v266;
          v13 = v258;
        }

        else
        {
          v121 = v111;
          v35 = v110;
          v13 = v109;
        }

        v300.size.width = rect;
        v300.origin.y = v261;
        v300.origin.x = v98;
        v300.size.height = rect;
        v123 = CGRectGetMaxX(v300) - v268;
        v301.origin.x = v121;
        v301.origin.y = i - v268;
        v301.size.width = v268;
        v301.size.height = v268;
        v124 = CGRectGetMinY(v301);
        v302.origin.x = v269;
        v34 = v267;
        v302.origin.y = v267;
        v302.size.width = v13;
        v302.size.height = v35;
        v333.origin.x = v123;
        v333.origin.y = v124;
        v333.size.width = v268;
        v333.size.height = v268;
        if (CGRectIntersectsRect(v302, v333))
        {
          sub_1E1AF6B1C();
          v130 = *(v7 + 2);
          v129 = *(v7 + 3);
          if (v130 >= v129 >> 1)
          {
            v134 = v125;
            v135 = v126;
            v136 = v127;
            v137 = v128;
            v138 = sub_1E172D670((v129 > 1), v130 + 1, 1, v7);
            v128 = v137;
            v127 = v136;
            v126 = v135;
            v13 = v258;
            v125 = v134;
            v7 = v138;
          }

          *(v7 + 2) = v130 + 1;
          v131 = &v7[32 * v130];
          *(v131 + 4) = v125;
          *(v131 + 5) = v126;
          *(v131 + 6) = v127;
          *(v131 + 7) = v128;
          v10 = v269;
          v100 = rect;
        }

        else
        {
          v100 = rect;
          v10 = v269;
        }
      }

      v303.origin.y = v261;
      v303.origin.x = v98;
      v303.size.width = v100;
      v303.size.height = v100;
      v139 = v253 + CGRectGetMaxY(v303);
      v304.origin.x = v10;
      v304.origin.y = v34;
      v304.size.width = v13;
      v304.size.height = v35;
      if (v139 >= CGRectGetMaxY(v304))
      {
        v140 = v268;
      }

      else
      {
        v140 = v268;
        do
        {
          v306.origin.y = v261;
          v306.origin.x = v264;
          v306.size.width = v100;
          v141 = v100;
          v306.size.height = v100;
          v142 = v13;
          v143 = v35;
          v144 = CGRectGetMinX(v306);
          v307.origin.x = v10;
          v307.origin.y = v34;
          v307.size.width = v142;
          v307.size.height = v143;
          v334.origin.x = v144;
          v334.origin.y = v139;
          v334.size.width = v140;
          v334.size.height = v140;
          if (CGRectIntersectsRect(v307, v334))
          {
            sub_1E1AF6B1C();
            v150 = *(v7 + 2);
            v149 = *(v7 + 3);
            if (v150 >= v149 >> 1)
            {
              v161 = v145;
              v162 = v146;
              v163 = v147;
              v164 = v148;
              v165 = sub_1E172D670((v149 > 1), v150 + 1, 1, v7);
              v148 = v164;
              v142 = v258;
              v147 = v163;
              v141 = rect;
              v146 = v162;
              v145 = v161;
              v7 = v165;
            }

            *(v7 + 2) = v150 + 1;
            v151 = &v7[32 * v150];
            *(v151 + 4) = v145;
            *(v151 + 5) = v146;
            *(v151 + 6) = v147;
            *(v151 + 7) = v148;
          }

          v308.origin.y = v261;
          v308.origin.x = v264;
          v308.size.width = v141;
          v308.size.height = v141;
          v152 = CGRectGetMaxX(v308) - v140;
          v309.origin.x = v144;
          v309.origin.y = v139;
          v309.size.width = v140;
          v309.size.height = v140;
          v153 = CGRectGetMinY(v309);
          v310.origin.x = v269;
          v34 = v267;
          v310.origin.y = v267;
          v310.size.width = v142;
          v310.size.height = v266;
          v335.origin.x = v152;
          v335.origin.y = v153;
          v335.size.width = v140;
          v335.size.height = v140;
          if (CGRectIntersectsRect(v310, v335))
          {
            sub_1E1AF6B1C();
            v159 = *(v7 + 2);
            v158 = *(v7 + 3);
            if (v159 >= v158 >> 1)
            {
              v166 = v154;
              v167 = v155;
              v168 = v156;
              v169 = v157;
              v170 = sub_1E172D670((v158 > 1), v159 + 1, 1, v7);
              v157 = v169;
              v13 = v258;
              v156 = v168;
              v155 = v167;
              v154 = v166;
              v7 = v170;
            }

            else
            {
              v13 = v142;
            }

            *(v7 + 2) = v159 + 1;
            v160 = &v7[32 * v159];
            *(v160 + 4) = v154;
            *(v160 + 5) = v155;
            *(v160 + 6) = v156;
            *(v160 + 7) = v157;
            v10 = v269;
            v100 = rect;
            v35 = v266;
            v140 = v268;
          }

          else
          {
            v10 = v269;
            v35 = v266;
            v13 = v142;
            v100 = rect;
          }

          v139 = v265 + v139;
          v305.origin.x = v10;
          v305.origin.y = v267;
          v305.size.width = v13;
          v305.size.height = v35;
        }

        while (v139 < CGRectGetMaxY(v305));
      }

      v171 = v259 - v252 * v9;
      v260 = v265 * (v9 - 1) + MaxY - v140;
      v262 = v171;
      sub_1E1AF6B1C();
      v177 = *(v7 + 2);
      v176 = *(v7 + 3);
      v8 = v177 + 1;
      if (v177 >= v176 >> 1)
      {
        v245 = v172;
        v246 = v173;
        v247 = v174;
        v248 = v175;
        v249 = sub_1E172D670((v176 > 1), v177 + 1, 1, v7);
        v175 = v248;
        v13 = v258;
        v174 = v247;
        v173 = v246;
        v178 = v253;
        v172 = v245;
        v10 = v269;
        v100 = rect;
        v7 = v249;
      }

      else
      {
        v178 = v253;
      }

      *(v7 + 2) = v8;
      v179 = &v7[32 * v177];
      *(v179 + 4) = v172;
      *(v179 + 5) = v173;
      *(v179 + 6) = v174;
      *(v179 + 7) = v175;
      v311.origin.y = v260;
      v311.origin.x = v262;
      v311.size.width = v100;
      v311.size.height = v100;
      v12 = CGRectGetMinY(v311) - v178;
      v312.origin.x = v10;
      v312.origin.y = v34;
      v312.size.width = v13;
      v312.size.height = v35;
      v180 = CGRectGetMinY(v312) < v12;
      v181 = v35;
      v16 = v34;
      v14 = v181;
      if (v180)
      {
        do
        {
          v257 = v12;
          v182 = v12 - v268;
          v316.origin.y = v260;
          v316.origin.x = v262;
          v316.size.width = v100;
          v316.size.height = v100;
          v183 = CGRectGetMinX(v316);
          v317.origin.x = v10;
          v317.origin.y = v16;
          v317.size.width = v13;
          v317.size.height = v14;
          v336.origin.x = v183;
          v336.origin.y = v182;
          v336.size.width = v268;
          v336.size.height = v268;
          if (CGRectIntersectsRect(v317, v336))
          {
            sub_1E1AF6B1C();
            v189 = *(v7 + 2);
            v188 = *(v7 + 3);
            v8 = v189 + 1;
            v190 = v183;
            if (v189 >= v188 >> 1)
            {
              v202 = v184;
              v203 = v185;
              v204 = v186;
              v205 = v187;
              v206 = sub_1E172D670((v188 > 1), v189 + 1, 1, v7);
              v187 = v205;
              v186 = v204;
              v100 = rect;
              v185 = v203;
              v184 = v202;
              v7 = v206;
            }

            v191 = v257;
            *(v7 + 2) = v8;
            v192 = &v7[32 * v189];
            *(v192 + 4) = v184;
            *(v192 + 5) = v185;
            *(v192 + 6) = v186;
            *(v192 + 7) = v187;
          }

          else
          {
            v190 = v183;
            v191 = v257;
          }

          v318.origin.y = v260;
          v318.origin.x = v262;
          v318.size.width = v100;
          v318.size.height = v100;
          v193 = CGRectGetMaxX(v318) - v268;
          v319.origin.x = v190;
          v319.origin.y = v182;
          v319.size.width = v268;
          v319.size.height = v268;
          v194 = CGRectGetMinY(v319);
          v320.origin.x = v269;
          v14 = v266;
          v16 = v267;
          v320.origin.y = v267;
          v13 = v258;
          v320.size.width = v258;
          v320.size.height = v266;
          v337.origin.x = v193;
          v337.origin.y = v194;
          v337.size.width = v268;
          v337.size.height = v268;
          if (CGRectIntersectsRect(v320, v337))
          {
            sub_1E1AF6B1C();
            v200 = *(v7 + 2);
            v199 = *(v7 + 3);
            v8 = v200 + 1;
            if (v200 >= v199 >> 1)
            {
              v207 = v195;
              v208 = v196;
              v209 = v197;
              v210 = v198;
              v211 = sub_1E172D670((v199 > 1), v200 + 1, 1, v7);
              v198 = v210;
              v14 = v266;
              v197 = v209;
              v196 = v208;
              v13 = v258;
              v195 = v207;
              v7 = v211;
            }

            *(v7 + 2) = v8;
            v201 = &v7[32 * v200];
            *(v201 + 4) = v195;
            *(v201 + 5) = v196;
            *(v201 + 6) = v197;
            *(v201 + 7) = v198;
            v10 = v269;
            v100 = rect;
          }

          else
          {
            v100 = rect;
            v10 = v269;
          }

          v12 = v191 - v265;
          v315.origin.x = v10;
          v315.origin.y = v267;
          v315.size.width = v13;
          v315.size.height = v14;
        }

        while (CGRectGetMinY(v315) < v12);
      }

      v313.origin.y = v260;
      v313.origin.x = v262;
      v313.size.width = v100;
      v313.size.height = v100;
      v11 = v253 + CGRectGetMaxY(v313);
      v314.origin.x = v10;
      v314.origin.y = v16;
      v314.size.width = v13;
      v314.size.height = v14;
      if (v11 < CGRectGetMaxY(v314))
      {
        v14 = v266;
        v12 = v267;
        do
        {
          v322.origin.y = v260;
          v322.origin.x = v262;
          v322.size.width = rect;
          v322.size.height = rect;
          v213 = CGRectGetMinX(v322);
          v323.origin.x = v10;
          v323.origin.y = v12;
          v323.size.width = v13;
          v323.size.height = v14;
          v338.origin.x = v213;
          v338.origin.y = v11;
          v338.size.width = v268;
          v338.size.height = v268;
          if (CGRectIntersectsRect(v323, v338))
          {
            sub_1E1AF6B1C();
            v219 = *(v7 + 2);
            v218 = *(v7 + 3);
            v8 = v219 + 1;
            if (v219 >= v218 >> 1)
            {
              v234 = v214;
              v235 = v215;
              v236 = v216;
              v237 = v217;
              v238 = sub_1E172D670((v218 > 1), v219 + 1, 1, v7);
              v217 = v237;
              v216 = v236;
              v215 = v235;
              v220 = v268;
              v214 = v234;
              v7 = v238;
            }

            else
            {
              v220 = v268;
            }

            *(v7 + 2) = v8;
            v221 = &v7[32 * v219];
            *(v221 + 4) = v214;
            *(v221 + 5) = v215;
            *(v221 + 6) = v216;
            *(v221 + 7) = v217;
          }

          else
          {
            v220 = v268;
          }

          v324.origin.y = v260;
          v324.origin.x = v262;
          v324.size.width = rect;
          v324.size.height = rect;
          v16 = CGRectGetMaxX(v324) - v220;
          v325.origin.x = v213;
          v325.origin.y = v11;
          v325.size.width = v220;
          v325.size.height = v220;
          v222 = CGRectGetMinY(v325);
          v10 = v269;
          v326.origin.x = v269;
          v326.origin.y = v267;
          v326.size.width = v258;
          v326.size.height = v266;
          v339.origin.x = v16;
          v339.origin.y = v222;
          v339.size.width = v220;
          v339.size.height = v220;
          if (CGRectIntersectsRect(v326, v339))
          {
            sub_1E1AF6B1C();
            v228 = *(v7 + 2);
            v227 = *(v7 + 3);
            v8 = v228 + 1;
            if (v228 >= v227 >> 1)
            {
              v229 = v223;
              v230 = v224;
              v231 = v225;
              v232 = v226;
              v233 = sub_1E172D670((v227 > 1), v228 + 1, 1, v7);
              v226 = v232;
              v225 = v231;
              v224 = v230;
              v223 = v229;
              v7 = v233;
            }

            *(v7 + 2) = v8;
            v212 = &v7[32 * v228];
            *(v212 + 4) = v223;
            *(v212 + 5) = v224;
            *(v212 + 6) = v225;
            *(v212 + 7) = v226;
            v10 = v269;
          }

          v14 = v266;
          v11 = v265 + v11;
          v321.origin.x = v10;
          v12 = v267;
          v321.origin.y = v267;
          v13 = v258;
          v321.size.width = v258;
          v321.size.height = v266;
        }

        while (v11 < CGRectGetMaxY(v321));
      }

      v239 = __OFADD__(v9++, 1);
      v15 = v264;
      if (v239)
      {
        break;
      }

      v35 = v266;
      v99 = v251 - v265;
      v98 = v252 + v264;
      v327.origin.x = v10;
      v34 = v267;
      v327.origin.y = v267;
      v327.size.width = v13;
      v327.size.height = v266;
      v272.x = v252 + v264;
      v272.y = v251 - v265;
      if (!CGRectContainsPoint(v327, v272))
      {
        goto LABEL_107;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    v7 = sub_1E172D670((v18 > 1), v8, 1, v7);
  }

LABEL_107:
  *a3 = v7;
  *(a3 + 8) = v253;
  *(a3 + 16) = v268;
  result = rect;
  *(a3 + 24) = v268;
  *(a3 + 32) = rect;
  *(a3 + 40) = rect;
  return result;
}

uint64_t static UpsellGridLayout.iconSizes(fitting:using:in:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v15 = *a1;
  v16 = v4;
  v17 = v5;
  sub_1E1A28E58(&v15, v18, a3, a4, 0.0, 0.0);
  v6 = v18[0];
  v7 = *(v18[0] + 16);
  if (v7)
  {
    v18[0] = MEMORY[0x1E69E7CC0];
    sub_1E135C440(0, v7, 0);
    v8 = v18[0];
    v9 = *(v18[0] + 16);
    v10 = 48;
    do
    {
      v11 = *(v6 + v10);
      v18[0] = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        v14 = v11;
        sub_1E135C440((v12 > 1), v9 + 1, 1);
        v11 = v14;
        v8 = v18[0];
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 16 * v9 + 32) = v11;
      v10 += 32;
      ++v9;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t *static UpsellGridLayout.largeIconSize(fitting:using:in:)(uint64_t *result)
{
  if ((*result * 7) >> 64 != (7 * *result) >> 63)
  {
    __break(1u);
  }

  return result;
}

void UpsellGridLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  *&v16 = *v5;
  BYTE8(v16) = v7;
  v17 = v8;
  sub_1E1A28E58(&v16, v18, a4, a5, a2, a3);
  v10 = v18[0];
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    v14 = v18[0] + 56;
    while (v12 < *(v9 + 16))
    {
      sub_1E1300B24(v13, &v16);
      v15 = *(v10 + 16);
      if (v12 == v15)
      {

        __swift_destroy_boxed_opaque_existential_1(&v16);
        goto LABEL_9;
      }

      if (v12 >= v15)
      {
        goto LABEL_11;
      }

      ++v12;
      sub_1E1361B28(&v16, v18);
      __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
      sub_1E1AF116C();
      __swift_destroy_boxed_opaque_existential_1(v18);
      v13 += 40;
      v14 += 32;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:

LABEL_9:
    sub_1E1AF106C();
  }
}

uint64_t getEnumTagSinglePayload for UpsellGridLayout.Metrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UpsellGridLayout.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

Swift::Void __swiftcall DynamicViewControllerDisplaying.injectFieldsIntoMetricsOverlay()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 104))();
  if (!v4)
  {
    v4 = sub_1E13609A4(MEMORY[0x1E69E7CC0]);
  }

  v5 = v4;
  v36 = v4;
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v6 = off_1EE1F3438;
  *&v31 = 0x746E6F4365676170;
  *(&v31 + 1) = 0xEB00000000747865;
  v7 = MEMORY[0x1E69E6158];
  sub_1E1AF6F6C();
  v8 = v6[3];
  if (v8)
  {
    v9 = v6[2];
    v32 = v7;
    *&v31 = v9;
    *(&v31 + 1) = v8;
    sub_1E1301CF0(&v31, &v33);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = v5;
    sub_1E15988B4(&v33, v35, isUniquelyReferenced_nonNull_native);
    sub_1E134B88C(v35);
    v36 = v5;
  }

  else
  {
    sub_1E14966E0(v35, &v31);
    sub_1E13E44F8(&v31);
    sub_1E134B88C(v35);
  }

  v11 = (*(v2 + 24))(v3, v2);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    *&v31 = 0x6C7255666572;
    *(&v31 + 1) = 0xE600000000000000;
    sub_1E1AF6F6C();
    v32 = v7;
    *&v31 = v13;
    *(&v31 + 1) = v14;
    sub_1E1301CF0(&v31, &v33);
    v15 = v36;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = v15;
    sub_1E15988B4(&v33, v35, v16);
    sub_1E134B88C(v35);
    v36 = v15;
  }

  *&v31 = 0x707041666572;
  *(&v31 + 1) = 0xE600000000000000;
  v17 = MEMORY[0x1E69E6158];
  sub_1E1AF6F6C();
  swift_beginAccess();
  v18 = v6[19];
  if (v18 >= 3)
  {
    v19 = v6[18];
    v34 = v17;
    *&v33 = v19;
    *(&v33 + 1) = v18;
    sub_1E1301CF0(&v33, &v31);

    v20 = v36;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E15988B4(&v31, v35, v21);
    sub_1E134B88C(v35);
    v36 = v20;
  }

  else
  {
    sub_1E14966E0(v35, &v31);
    sub_1E13E44F8(&v31);
    sub_1E134B88C(v35);
  }

  *&v29 = 0x7255666552747865;
  *(&v29 + 1) = 0xE90000000000006CLL;
  v22 = MEMORY[0x1E69E6158];
  sub_1E1AF6F6C();
  if ((v6[19] - 1) >= 2 && (v23 = v6[21]) != 0)
  {
    v24 = v6[20];
    v30 = v22;
    *&v29 = v24;
    *(&v29 + 1) = v23;
    sub_1E1301CF0(&v29, v28);

    v25 = v36;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E15988B4(v28, &v31, v26);
    sub_1E134B88C(&v31);
    v27 = v25;
  }

  else
  {
    sub_1E14966E0(&v31, &v29);
    sub_1E13E44F8(&v29);
    sub_1E134B88C(&v31);
    v27 = v36;
  }

  (*(v2 + 112))(v27, v3, v2);
}

void DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(a4 + 80))(a3, a4);
  if (v8)
  {
    v10 = v9;
    v15 = v8;
    ObjectType = swift_getObjectType();
    v12 = (*(a4 + 16))(a3, a4);
    [v15 bounds];
    (*(v10 + 8))(a1, a2, v12, ObjectType, v10, v13, v14);

    (*(a4 + 144))(a3, a4);
  }
}

uint64_t JSONObject.requiredString(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  v10 = sub_1E1AF37CC();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (!v12)
  {
    v10 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    v13[2] = a3;
    (*(*(v10 - 8) + 104))(v13, *MEMORY[0x1E69AB690], v10);
    swift_willThrow();
  }

  return v10;
}

void DeepLink.referrerKind.getter(uint64_t a1@<X8>)
{
  sub_1E1AF58AC();
  if (!v6)
  {
    sub_1E13E44F8(v5);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v2 = v7[0];
  sub_1E1AF6F6C();
  if (!*(v7[0] + 16) || (v3 = sub_1E135FCF4(v5), (v4 & 1) == 0))
  {

    sub_1E134B88C(v5);
    goto LABEL_9;
  }

  sub_1E137A5C4(*(v2 + 56) + 32 * v3, v7);
  sub_1E134B88C(v5);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    *a1 = 0;
    *(a1 + 8) = -1;
  }
}

uint64_t DeepLink.referrerKind.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1E1AF58AC();
  v3 = v11;
  sub_1E13E44F8(v10);
  if (v3)
  {
    sub_1E1AF58AC();
    if (!v11)
    {
      sub_1E1A2B02C(v1, v2);
      return sub_1E13E44F8(v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
    if (!swift_dynamicCast())
    {
      return sub_1E1A2B02C(v1, v2);
    }

    v4 = v8;
  }

  else
  {
    v4 = sub_1E13609A4(MEMORY[0x1E69E7CC0]);
  }

  v12 = v4;
  *&v8 = 0xD00000000000002CLL;
  *(&v8 + 1) = 0x80000001E1B845D0;
  sub_1E1AF6F6C();
  if (v2 == 255)
  {
    sub_1E14966E0(v10, &v8);
    sub_1E13E44F8(&v8);
    sub_1E134B88C(v10);
    v4 = v12;
  }

  else
  {
    v9 = &type metadata for ReferrerData.Kind;
    *&v8 = v1;
    BYTE8(v8) = v2;
    sub_1E1301CF0(&v8, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E15988B4(v7, v10, isUniquelyReferenced_nonNull_native);
    sub_1E134B88C(v10);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
  v10[0] = v4;
  return sub_1E1AF58BC();
}

uint64_t (*DeepLink.referrerKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  DeepLink.referrerKind.getter(a1);
  return sub_1E1A2AF98;
}

uint64_t sub_1E1A2AF98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_1E1A2B040(v2, v3);
    DeepLink.referrerKind.setter(&v5);

    return sub_1E1A2B02C(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    return DeepLink.referrerKind.setter(&v5);
  }
}

uint64_t sub_1E1A2B02C(uint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1E137B778(result, a2);
  }

  return result;
}

double sub_1E1A2B040(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1E13E23E4(a1, a2);
  }

  return result;
}

uint64_t PrivacyFooter.__allocating_init(id:bodyText:actions:privacyTypesCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_1E138853C(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(&v17, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t PrivacyFooter.init(id:bodyText:actions:privacyTypesCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(&v18, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t PrivacyFooter.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v77 = a2;
  v60 = sub_1E1AEFEAC();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - v5;
  v62 = sub_1E1AF5A6C();
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF39DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1E1AF380C();
  v12 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  type metadata accessor for LinkableText();
  v67 = a1;
  sub_1E1AF381C();
  (*(v9 + 16))(v11, v77, v8);
  sub_1E1A2BD00(&qword_1EE1F5FA0, 255, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_1E1AF464C();
  if (v76[0])
  {
    v56 = v76[0];
    v61 = v9;
    v55 = v8;
    v20 = v77;
    sub_1E1AF381C();
    sub_1E1AF374C();
    v21 = *(v12 + 8);
    v22 = v16;
    v23 = v12 + 8;
    v21(v22, v66);
    v24 = v62;
    if ((*(v64 + 48))(v6, 1, v62) == 1)
    {
      sub_1E1308058(v6, &qword_1ECEB1F90, &qword_1E1B00D30);
      v54 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v28 = v64;
      v29 = v57;
      (*(v64 + 32))(v57, v6, v24);
      v30 = type metadata accessor for Action(0);
      MEMORY[0x1EEE9AC00](v30);
      *(&v54 - 2) = v31;
      *(&v54 - 1) = v20;
      v54 = sub_1E1AF59FC();
      (*(v28 + 8))(v29, v24);
    }

    v32 = v67;
    sub_1E1AF381C();
    sub_1E1AF36EC();
    v33 = v19;
    v34 = v66;
    v35 = v23;
    v21(v33, v66);
    v36 = v63;
    sub_1E1AF381C();
    v37 = sub_1E1AF37CC();
    if (v38)
    {
      *&v70 = v37;
      *(&v70 + 1) = v38;
    }

    else
    {
      v39 = v58;
      sub_1E1AEFE9C();
      v40 = sub_1E1AEFE7C();
      v42 = v41;
      (*(v59 + 8))(v39, v60);
      *&v70 = v40;
      *(&v70 + 1) = v42;
    }

    sub_1E1AF6F6C();
    v21(v36, v34);
    v25 = swift_allocObject();
    sub_1E138853C(v76, &v70);
    v43 = v55;
    v44 = v61;
    if (*(&v71 + 1))
    {
      v21(v32, v34);
      sub_1E1308058(v76, &unk_1ECEB5670, qword_1E1B03EC0);
      v73 = v70;
      v74 = v71;
      v75 = v72;
    }

    else
    {
      v45 = v58;
      sub_1E1AEFE9C();
      v46 = sub_1E1AEFE7C();
      v65 = v35;
      v47 = v34;
      v48 = v32;
      v50 = v49;
      (*(v59 + 8))(v45, v60);
      v68 = v46;
      v69 = v50;
      sub_1E1AF6F6C();
      v21(v48, v47);
      sub_1E1308058(v76, &unk_1ECEB5670, qword_1E1B03EC0);
      v44 = v61;
      sub_1E1308058(&v70, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    v51 = v74;
    *(v25 + 32) = v73;
    *(v25 + 48) = v51;
    *(v25 + 64) = v75;
    v52 = v54;
    *(v25 + 16) = v56;
    *(v25 + 24) = v52;
    (*(v44 + 8))(v77, v43);
  }

  else
  {
    v25 = sub_1E1AF5A7C();
    sub_1E1A2BD00(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v26 = 0x7478655479646F62;
    v27 = v65;
    v26[1] = 0xE800000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    (*(v12 + 8))(v67, v66);
    (*(v9 + 8))(v77, v8);
  }

  return v25;
}

uint64_t PrivacyFooter.deinit()
{

  sub_1E134B88C(v0 + 32);
  return v0;
}

uint64_t PrivacyFooter.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A2BD00(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1E1A2BD6C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyFooter.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ReusableCellRegistration.init(reuseIdentifier:configurationHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ReusableCellRegistration.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReusableCellRegistration.configurationHandler.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E1A2BE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PageTabChangeAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v26 = *v3;
  v30 = sub_1E1AF39DC();
  v34 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v32 = a1;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v7 + 8);
  v33 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v29 + OBJC_IVAR____TtC11AppStoreKit19PageTabChangeAction_selectedTabId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v32;
    (*(v7 + 16))(v9, v32, v33);
    v6 = v27;
    v20 = v30;
    v19 = v31;
    (*(v34 + 16))(v27, v31, v30);
    v21 = v28;
    v22 = Action.init(deserializing:using:)(v9, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v34 + 8))(v19, v20);
    v16(v18, v33);
  }

  else
  {
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    strcpy(v24, "selectedTabId");
    *(v24 + 7) = -4864;
    *(v24 + 2) = v26;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    (*(v34 + 8))(v31, v30);
    v16(v32, v33);
    type metadata accessor for PageTabChangeAction(0);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t type metadata accessor for PageTabChangeAction(uint64_t a1)
{
  result = qword_1EE1DCAC0;
  if (!qword_1EE1DCAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageTabChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t PageTabChangeAction.selectedTabId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19PageTabChangeAction_selectedTabId);

  return v1;
}

uint64_t PageTabChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t SearchHintLayout.Metrics.leadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t SearchHintLayout.Metrics.trailingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t SearchHintLayout.Metrics.textLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t SearchHintLayout.Metrics.iconHorizontalCenterMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t SearchHintLayout.Metrics.init(leadingMargin:trailingMargin:textLeadingMargin:iconHorizontalCenterMargin:iconSize:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  sub_1E1308EC0(a1, a5);
  sub_1E1308EC0(a2, a5 + 40);
  sub_1E1308EC0(a3, a5 + 80);
  result = sub_1E1308EC0(a4, a5 + 120);
  *(a5 + 160) = a6;
  *(a5 + 168) = a7;
  return result;
}

uint64_t SearchHintLayout.init(metrics:iconView:titleLabel:separatorView:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = a1[9];
  a5[8] = a1[8];
  a5[9] = v8;
  a5[10] = a1[10];
  v9 = a1[5];
  a5[4] = a1[4];
  a5[5] = v9;
  v10 = a1[7];
  a5[6] = a1[6];
  a5[7] = v10;
  v11 = a1[1];
  *a5 = *a1;
  a5[1] = v11;
  v12 = a1[3];
  a5[2] = a1[2];
  a5[3] = v12;
  sub_1E1308EC0(a2, (a5 + 11));
  sub_1E1308EC0(a3, a5 + 216);

  return sub_1E1308EC0(a4, (a5 + 16));
}

void SearchHintLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v3[3];
  __swift_project_boxed_opaque_existential_1Tm(v4, v9);
  sub_1E13BC274(v9);
  sub_1E1AF12DC();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v11 = v4[8];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 5, v11);
  sub_1E13BC274(v11);
  sub_1E1AF12DC();
  v10(v8, v5);
  sub_1E1AF6B5C();
  v12 = v4[13];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v12);
  sub_1E13BC274(v12);
  sub_1E1AF12DC();
  v10(v8, v5);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 27, v4[30]);
  sub_1E1AF6B5C();
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 32, v4[35]);
  if ((sub_1E1AF117C() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm(v4 + 32, v4[35]);
    sub_1E1AF11CC();
  }

  __swift_project_boxed_opaque_existential_1Tm(v4 + 27, v4[30]);
  v13 = sub_1E1AF148C();
  if (v13)
  {
    v14 = v13;
    [v13 _bodyLeading];
  }

  else
  {
    __break(1u);
  }
}

uint64_t SearchHintLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v41.origin.y = a3;
  v41.origin.x = a2;
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5[3];
  __swift_project_boxed_opaque_existential_1Tm(v6, v14);
  sub_1E13BC274(v14);
  v35[1] = sub_1E1AF12DC();
  v15 = *(v11 + 8);
  v15(v13, v10);
  v16 = v6[8];
  __swift_project_boxed_opaque_existential_1Tm(v6 + 5, v16);
  sub_1E13BC274(v16);
  v39 = sub_1E1AF12DC();
  v15(v13, v10);
  v41.size.width = a4;
  v41.size.height = a5;
  sub_1E1AF6B0C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v6[13];
  __swift_project_boxed_opaque_existential_1Tm(v6 + 10, v25);
  sub_1E13BC274(v25);
  v26 = sub_1E1AF12DC();
  v15(v13, v10);
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v24;
  v38 = CGRectGetWidth(v45) - v26;
  v46.origin.x = v18;
  v46.origin.y = v20;
  v46.size.width = v22;
  v46.size.height = v24;
  CGRectGetHeight(v46);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 32, v6[35]);
  sub_1E1AF11CC();
  v40 = v27;
  __swift_project_boxed_opaque_existential_1Tm(v6 + 27, v6[30]);
  sub_1E1AF11CC();
  v47.origin.x = v18;
  v47.origin.y = v20;
  v47.size.width = v22;
  v47.size.height = v24;
  CGRectGetMinX(v47);
  v48.origin.x = v18;
  v48.origin.y = v20;
  v48.size.width = v22;
  v48.size.height = v24;
  CGRectGetHeight(v48);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 27, v6[30]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v28 = [a1 traitCollection];
  [v28 horizontalSizeClass];

  v39 = v18;
  v49.origin.x = v18;
  v38 = v20;
  v49.origin.y = v20;
  v37 = v22;
  v49.size.width = v22;
  v36 = v24;
  v49.size.height = v24;
  CGRectGetMinX(v49);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  CGRectGetMaxY(v41);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  CGRectGetWidth(v50);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 32, v6[35]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  sub_1E14F59A8((v6 + 22), &v42);
  if (v43)
  {
    sub_1E1308EC0(&v42, v44);
    v51.origin.x = v39;
    v51.origin.y = v38;
    v51.size.width = v37;
    v51.size.height = v36;
    CGRectGetMinX(v51);
    v33 = v6[18];
    __swift_project_boxed_opaque_existential_1Tm(v6 + 15, v33);
    sub_1E13BC274(v33);
    sub_1E1AF12DC();
    v15(v13, v10);
    CGRectGetHeight(v41);
    __swift_project_boxed_opaque_existential_1Tm(v44, v44[3]);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_1E14F60F8(&v42);
  }

  return sub_1E1AF106C();
}

uint64_t sub_1E1A2D32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
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

uint64_t sub_1E1A2D374(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1A2D410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_1E1A2D458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ArcadeShowcase.__allocating_init(id:unsubscribedAction:unsubscribedDescription:subscribedAction:subscribedDescription:iconArtworks:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a2;
  v37 = a3;
  v35 = a10;
  v38 = a9;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  sub_1E134FD1C(a1, &v41, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v42 + 1))
  {
    v21 = v42;
    *(v20 + 80) = v41;
    *(v20 + 96) = v21;
    *(v20 + 112) = v43;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v33 = a4;
    v34 = a5;
    v23 = a6;
    v24 = a8;
    v25 = v22;
    v26 = a7;
    v28 = v27;
    (*(v17 + 8))(v19, v16);
    v39 = v25;
    v40 = v28;
    a8 = v24;
    a6 = v23;
    a7 = v26;
    a4 = v33;
    a5 = v34;
    sub_1E1AF6F6C();
    sub_1E1308058(&v41, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134B7C8(v35, v20 + OBJC_IVAR____TtC11AppStoreKit14ArcadeShowcase_impressionMetrics);
  v29 = v37;
  *(v20 + 16) = v36;
  *(v20 + 24) = v29;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v30 = v38;
  *(v20 + 64) = a8;
  *(v20 + 72) = v30;
  return v20;
}

uint64_t ArcadeShowcase.init(id:unsubscribedAction:unsubscribedDescription:subscribedAction:subscribedDescription:iconArtworks:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v37 = a2;
  v38 = a3;
  v36 = a10;
  v39 = a9;
  v18 = sub_1E1AEFEAC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v42, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v34 = a4;
    v35 = a5;
    v23 = a6;
    v24 = a8;
    v25 = v22;
    v26 = a7;
    v28 = v27;
    (*(v19 + 8))(v21, v18);
    v40 = v25;
    v41 = v28;
    a8 = v24;
    a6 = v23;
    a7 = v26;
    a4 = v34;
    a5 = v35;
    sub_1E1AF6F6C();
    sub_1E1308058(&v42, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v29 = v46;
  *(v11 + 80) = v45;
  *(v11 + 96) = v29;
  *(v11 + 112) = v47;
  sub_1E134B7C8(v36, v11 + OBJC_IVAR____TtC11AppStoreKit14ArcadeShowcase_impressionMetrics);
  v30 = v38;
  *(v11 + 16) = v37;
  *(v11 + 24) = v30;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  v31 = v39;
  *(v11 + 64) = a8;
  *(v11 + 72) = v31;
  return v11;
}

uint64_t sub_1E1A2D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E1A2EB54(qword_1EE1DA948, type metadata accessor for ImpressionableArtwork, &protocol conformance descriptor for ImpressionableArtwork);
  return sub_1E1AF464C();
}

uint64_t ArcadeShowcase.unsubscribedDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ArcadeShowcase.subscribedDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *sub_1E1A2DB90()
{
  result = *(v0 + 64);
  if (result)
  {
    return sub_1E14D70AC(result);
  }

  return result;
}

void *ArcadeShowcase.deinit()
{

  sub_1E134B88C(v0 + 80);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14ArcadeShowcase_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t ArcadeShowcase.__deallocating_deinit()
{
  ArcadeShowcase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A2DC88@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1A2DD14(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1E1A2DCB4()
{
  result = *(*v0 + 64);
  if (result)
  {
    return sub_1E14D70AC(result);
  }

  return result;
}

uint64_t sub_1E1A2DD14(char *a1, uint64_t a2)
{
  v109 = a2;
  v90 = sub_1E1AEFEAC();
  v98 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v93 = v88 - v5;
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v116 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v88 - v10;
  v12 = sub_1E1AF380C();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v97 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v96 = v88 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v95 = v88 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v91 = v88 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v100 = v88 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v101 = v88 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v88 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v99 = v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v88 - v30;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v106 = v7;
  v32 = v7 + 16;
  v33 = *(v7 + 16);
  v34 = v11;
  v35 = v11;
  v36 = v109;
  v33(v35, v109, v6);
  v107 = v31;
  v92 = v26;
  v94 = v34;
  sub_1E1AF464C();
  v37 = v116;
  v108 = v6;
  v33(v116, v36, v6);
  type metadata accessor for Action(0);
  v38 = v101;
  v104 = a1;
  sub_1E1AF381C();
  v39 = v38;
  v40 = v105;
  v41 = static Action.makeInstance(byDeserializing:using:)(v38, v37);
  if (v40)
  {
    v42 = *(v106 + 8);
    v43 = v108;
    v42(v109, v108);
    v44 = v103;
    v45 = *(v102 + 8);
    v45(v104, v103);
    v45(v39, v44);
    v46 = v116;
    sub_1E1308058(v107, &unk_1ECEB1770, &unk_1E1AFED20);
    v42(v46, v43);
  }

  else
  {
    v88[0] = v33;
    v88[1] = v32;
    v105 = v41;
    v47 = *(v102 + 8);
    v48 = v103;
    v47(v38, v103);
    v49 = v100;
    v50 = v104;
    sub_1E1AF381C();
    v51 = v116;
    v101 = static Action.makeInstance(byDeserializing:using:)(v49, v116);
    v102 = 0;
    v47(v100, v48);
    v53 = v91;
    sub_1E1AF381C();
    v54 = v93;
    sub_1E1AF374C();
    v47(v53, v48);
    v55 = sub_1E1AF5A6C();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 48))(v54, 1, v55);
    if (v57 == 1)
    {
      sub_1E1308058(v54, &qword_1ECEB1F90, &qword_1E1B00D30);
      v100 = 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v57);
      v88[-2] = v116;
      type metadata accessor for ImpressionableArtwork(0);
      v58 = v102;
      v100 = sub_1E1AF59FC();
      v102 = v58;
      v51 = v116;
      (*(v56 + 8))(v54, v55);
    }

    v59 = v98;
    type metadata accessor for OfferDisplayProperties();
    sub_1E1AF381C();
    (v88[0])(v94, v51, v108);
    sub_1E1A2EB54(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_1E1AF464C();
    v104 = v115[0];
    v60 = v95;
    sub_1E1AF381C();
    v61 = sub_1E1AF37CC();
    if (v62)
    {
      *&v112 = v61;
      *(&v112 + 1) = v62;
      sub_1E1AF6F6C();
      v47(v60, v48);
      v63 = v47;
    }

    else
    {
      v63 = v47;
      v64 = v89;
      sub_1E1AEFE9C();
      v65 = sub_1E1AEFE7C();
      v67 = v66;
      (*(v59 + 8))(v64, v90);
      *&v112 = v65;
      *(&v112 + 1) = v67;
      sub_1E1AF6F6C();
      v63(v60, v48);
    }

    v68 = v97;
    v69 = v96;
    sub_1E1AF381C();
    v103 = sub_1E1AF37CC();
    v97 = v70;
    v63(v69, v48);
    v71 = v50;
    sub_1E1AF381C();
    v96 = sub_1E1AF37CC();
    v95 = v72;
    v73 = v48;
    v63(v68, v48);
    sub_1E134FD1C(v107, v99, &unk_1ECEB1770, &unk_1E1AFED20);
    type metadata accessor for ArcadeShowcase(0);
    v39 = swift_allocObject();
    sub_1E134FD1C(v115, &v112, &unk_1ECEB5670, qword_1E1B03EC0);
    v74 = v109;
    v75 = v106;
    if (*(&v113 + 1))
    {
      v76 = v113;
      *(v39 + 80) = v112;
      *(v39 + 96) = v76;
      *(v39 + 112) = v114;
    }

    else
    {
      v77 = v89;
      sub_1E1AEFE9C();
      v78 = sub_1E1AEFE7C();
      v80 = v79;
      (*(v98 + 8))(v77, v90);
      v110 = v78;
      v111 = v80;
      v75 = v106;
      v74 = v109;
      sub_1E1AF6F6C();
      sub_1E1308058(&v112, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    v81 = *(v75 + 8);
    v82 = v74;
    v83 = v108;
    v81(v82, v108);
    v63(v71, v73);
    sub_1E1308058(v115, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(v107, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E134B7C8(v99, v39 + OBJC_IVAR____TtC11AppStoreKit14ArcadeShowcase_impressionMetrics);
    v84 = v103;
    *(v39 + 16) = v105;
    *(v39 + 24) = v84;
    v85 = v101;
    *(v39 + 32) = v97;
    *(v39 + 40) = v85;
    v86 = v95;
    *(v39 + 48) = v96;
    *(v39 + 56) = v86;
    v87 = v104;
    *(v39 + 64) = v100;
    *(v39 + 72) = v87;
    v81(v116, v83);
  }

  return v39;
}

uint64_t type metadata accessor for ArcadeShowcase(uint64_t a1)
{
  result = qword_1EE1F4268;
  if (!qword_1EE1F4268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1A2E994(uint64_t a1)
{
  result = sub_1E1A2EB54(qword_1EE1F4288, type metadata accessor for ArcadeShowcase, &protocol conformance descriptor for ArcadeShowcase);
  *(a1 + 8) = result;
  return result;
}

void sub_1E1A2E9F4(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1A2EB54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *LockupCollectionSearchResult.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v95 = sub_1E1AEFEAC();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v85 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v99 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v85 - v14;
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v85 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85 - v27;
  v110 = a1;
  sub_1E1AF381C();
  v97 = sub_1E1AF37CC();
  v30 = v29;
  v33 = *(v16 + 8);
  v31 = v16 + 8;
  v32 = v33;
  v33(v28, v15);
  if (!v30)
  {
    v51 = sub_1E1AF5A7C();
    sub_1E1A2FEF0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v52 = 0x676E6964616568;
    v53 = v108;
    v52[1] = 0xE700000000000000;
    v52[2] = v53;
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x1E69AB690], v51);
    swift_willThrow();
    (*(v5 + 8))(v109, v4);
LABEL_7:
    v32(v110, v15);
    return v20;
  }

  v34 = v108;
  v98 = v30;
  v106 = v5;
  v105 = v4;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  v37 = v36;
  v32(v25, v15);
  if (!v37)
  {

    v54 = sub_1E1AF5A7C();
    sub_1E1A2FEF0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v55 = 0x656C746974;
    v55[1] = 0xE500000000000000;
    v55[2] = v34;
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x1E69AB690], v54);
    swift_willThrow();
    (*(v106 + 8))(v109, v105);
    goto LABEL_7;
  }

  v87 = v35;
  v90 = v37;
  v91 = v32;
  v92 = v31;
  v108 = v15;
  sub_1E1AF46DC();
  v38 = v102;
  v88 = v20;
  sub_1E1AF381C();
  v40 = (v106 + 16);
  v39 = *(v106 + 16);
  v41 = v103;
  v42 = v109;
  v43 = v105;
  v39(v103, v109, v105);
  sub_1E1AF464C();
  v44 = v104;
  v45 = v42;
  v46 = v38;
  v39(v104, v45, v43);
  type metadata accessor for Artwork(0);
  sub_1E1AF381C();
  v39(v41, v44, v43);
  sub_1E1A2FEF0(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_1E1AF464C();
  v89 = v118[0];
  v47 = v44;
  sub_1E1AF381C();
  v39(v100, v44, v43);
  type metadata accessor for Lockup(0);
  sub_1E1A2FEF0(&qword_1EE1E4F60, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  v48 = v101;
  v49 = sub_1E1AF62EC();
  if (v48)
  {

    v20 = (v106 + 8);
    v50 = *(v106 + 8);
    v50(v109, v43);
    v91(v110, v108);
    v50(v47, v43);
    sub_1E1308058(v107, &unk_1ECEB1770, &unk_1E1AFED20);
  }

  else
  {
    v86 = v49;
    v88 = v39;
    v100 = v40;
    v101 = 0;
    type metadata accessor for Action(0);
    v57 = v110;
    sub_1E1AF381C();
    v85 = static Action.tryToMakeInstance(byDeserializing:using:)(v46, v47);
    v58 = v108;
    v59 = v91;
    v91(v46, v108);
    v60 = v96;
    sub_1E1AF381C();
    v61 = sub_1E1AF37CC();
    if (v62)
    {
      v116 = v61;
      v117 = v62;
    }

    else
    {
      v63 = v93;
      sub_1E1AEFE9C();
      v64 = sub_1E1AEFE7C();
      v66 = v65;
      (*(v94 + 8))(v63, v95);
      v116 = v64;
      v117 = v66;
    }

    sub_1E1AF6F6C();
    v59(v60, v58);
    v67 = v106;
    v68 = v109;
    v69 = v103;
    v70 = v99;
    sub_1E134FD1C(v107, v99, &unk_1ECEB1770, &unk_1E1AFED20);
    type metadata accessor for SearchAdOpportunity();
    v71 = v57;
    sub_1E1AF381C();
    v88(v69, v68, v105);
    sub_1E1A2FEF0(&qword_1EE1EE770, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
    sub_1E1AF464C();
    v106 = v118[7];
    type metadata accessor for LockupCollectionSearchResult(0);
    v20 = swift_allocObject();
    v72 = &v20[OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading];
    v73 = v98;
    *v72 = v97;
    v72[1] = v73;
    *&v20[OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_headingArtwork] = v89;
    v74 = &v20[OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title];
    v75 = v90;
    *v74 = v87;
    *(v74 + 1) = v75;
    *&v20[OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_items] = v86;
    *&v20[OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_detailAction] = v85;
    sub_1E134FD1C(v118, &v116, &unk_1ECEB5670, qword_1E1B03EC0);
    *(v20 + 4) = 0u;
    *(v20 + 5) = 0u;
    *(v20 + 12) = 0;
    sub_1E134FD1C(v70, &v20[OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics], &unk_1ECEB1770, &unk_1E1AFED20);
    *&v20[OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity] = 0;
    sub_1E134FD1C(&v116, &v113, &unk_1ECEB5670, qword_1E1B03EC0);
    v76 = v104;
    if (*(&v114 + 1))
    {
      v77 = v114;
      *(v20 + 24) = v113;
      *(v20 + 40) = v77;
      *(v20 + 7) = v115;
    }

    else
    {
      v78 = v93;
      sub_1E1AEFE9C();
      v79 = sub_1E1AEFE7C();
      v81 = v80;
      (*(v94 + 8))(v78, v95);
      v111 = v79;
      v112 = v81;
      sub_1E1AF6F6C();
      sub_1E1308058(&v113, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    v82 = *(v67 + 8);
    v83 = v105;
    v82(v68, v105);
    v91(v71, v108);
    sub_1E1308058(&v116, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(v99, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v118, &unk_1ECEB5670, qword_1E1B03EC0);
    v82(v76, v83);
    sub_1E1308058(v107, &unk_1ECEB1770, &unk_1E1AFED20);
    *(v20 + 8) = 1281;
    v84 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *&v20[v84] = v106;
  }

  return v20;
}

uint64_t LockupCollectionSearchResult.__allocating_init(id:heading:headingArtwork:title:items:detailAction:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a8;
  v32 = a10;
  v17 = sub_1E1AEFEAC();
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading);
  *v21 = a2;
  v21[1] = a3;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_headingArtwork) = a4;
  v22 = (v20 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title);
  *v22 = a5;
  v22[1] = a6;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_items) = a7;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_detailAction) = v31;
  sub_1E134FD1C(a1, v38, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0;
  sub_1E134FD1C(a9, v20 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v38, &v35, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *(v20 + 24) = v35;
    *(v20 + 40) = v23;
    *(v20 + 56) = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v26 = v25;
    (*(v29 + 8))(v19, v30);
    v33 = v24;
    v34 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a9, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v38, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v20 + 16) = 1281;
  v27 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v20 + v27) = v32;
  return v20;
}

uint64_t LockupCollectionSearchResult.init(id:heading:headingArtwork:title:items:detailAction:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v33 = sub_1E1AEFEAC();
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v32 - v21;
  v23 = (v11 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading);
  *v23 = a2;
  v23[1] = a3;
  *(v11 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_headingArtwork) = a4;
  v24 = (v11 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title);
  *v24 = a5;
  v24[1] = a6;
  v25 = v35;
  *(v11 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_items) = v34;
  *(v11 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_detailAction) = v25;
  sub_1E134FD1C(a1, v45, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134FD1C(a9, v22, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v11 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v45, &v39, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v28 = v27;
    (*(v32 + 8))(v19, v33);
    v37 = v26;
    v38 = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a9, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v45, &unk_1ECEB5670, qword_1E1B03EC0);
  v29 = v43;
  *(v11 + 24) = v42;
  *(v11 + 40) = v29;
  *(v11 + 56) = v44;
  *(v11 + 96) = 0;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  sub_1E134B7C8(v22, v11 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v11 + 16) = 1281;
  v30 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v11 + v30) = v36;

  return v11;
}

uint64_t sub_1E1A2FEF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for LockupCollectionSearchResult(uint64_t a1)
{
  result = qword_1EE1D66A8;
  if (!qword_1EE1D66A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LockupCollectionSearchResult.__allocating_init(from:withItems:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = sub_1E1AEFEAC();
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  sub_1E134E724(a1 + 24, v36);
  v7 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading);
  v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading + 8);
  v9 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_headingArtwork);
  v10 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title);
  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title + 8);
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_detailAction);
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, v6, &unk_1ECEB1770, &unk_1E1AFED20);
  v13 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  v29 = *(a1 + v13);
  type metadata accessor for LockupCollectionSearchResult(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading);
  *v15 = v7;
  v15[1] = v8;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_headingArtwork) = v9;
  v16 = (v14 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title);
  *v16 = v10;
  v16[1] = v11;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_items) = v28;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_detailAction) = v12;
  sub_1E134FD1C(v36, v35, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0;
  sub_1E134FD1C(v6, v14 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v35, &v32, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v33 + 1))
  {
    v17 = v33;
    *(v14 + 24) = v32;
    *(v14 + 40) = v17;
    *(v14 + 56) = v34;
    v18 = v29;
  }

  else
  {
    v18 = v29;

    v19 = v25;
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v22 = v21;
    (*(v26 + 8))(v19, v27);
    v30 = v20;
    v31 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v32, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v35, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v6, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v36, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v14 + 16) = 1281;
  v23 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v14 + v23) = v18;
  return v14;
}

uint64_t LockupCollectionSearchResult.heading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_heading);

  return v1;
}

uint64_t LockupCollectionSearchResult.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28LockupCollectionSearchResult_title);

  return v1;
}

double sub_1E1A30430()
{

  return result;
}

uint64_t LockupCollectionSearchResult.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780, &qword_1E1B0AD50);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return v0;
}

uint64_t LockupCollectionSearchResult.__deallocating_deinit()
{
  LockupCollectionSearchResult.deinit();

  return swift_deallocClassInstance();
}

AppStoreKit::ArcadeSeeAllGamesPage::DisplayStyle_optional __swiftcall ArcadeSeeAllGamesPage.DisplayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

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

uint64_t ArcadeSeeAllGamesPage.DisplayStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x746361706D6F63;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1E1A30708(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x746361706D6F63;
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  if (*a2)
  {
    v3 = 0x746361706D6F63;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E1AF74AC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E1A30790()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1A30808(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1A30864(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1A308D8(char *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1E1A30938(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x746361706D6F63;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t ArcadeSeeAllGamesPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:facets:selectedFacetOptions:pageSegments:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v89 = a4;
  v90 = a8;
  LODWORD(v84) = a7;
  v82 = a5;
  v76 = a3;
  v75 = a2;
  v85 = a15;
  v78 = a10;
  v79 = a9;
  v83 = a13;
  v81 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v74 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v74 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74 - v25;
  v27 = sub_1E1AF3C3C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v86 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v74 - v31;
  v33 = swift_allocObject();
  v34 = *(a11 + 16);
  v35 = *(a11 + 24);
  v36 = v33 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
  *v36 = *a11;
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v81;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v83;
  v83 = a6;
  sub_1E134FD1C(a6, v92, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v77 = v28;
  v37 = *(v28 + 16);
  v81 = a14;
  (v37)(v32, a14, v27);
  v80 = a16;
  sub_1E134FD1C(a16, v26, &qword_1ECEB3B28, &unk_1E1B11460);
  v38 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v39 = sub_1E175EC2C(a1);
  v41 = v40;

  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v39;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v41;
  v42 = (v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v43 = v76;
  *v42 = v75;
  v42[1] = v43;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v89;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v82;
  sub_1E134FD1C(v92, v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v84;
  swift_beginAccess();
  *(v33 + v38) = v90;
  v45 = v85;
  v44 = v86;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v82 = v32;
  v46 = v44;
  v37();
  v84 = v26;
  v47 = v87;
  sub_1E134FD1C(v26, v87, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v33 + 16) = 0;
  (v37)(v33 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v46, v27);
  v48 = v47;
  *(v33 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v45;
  v49 = v88;
  sub_1E134FD1C(v47, v88, &qword_1ECEB3B28, &unk_1E1B11460);
  v50 = sub_1E1AF39DC();
  v76 = *(v50 - 8);
  v51 = *(v76 + 48);
  if (v51(v49, 1, v50) == 1)
  {

    sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
    v52 = *(v77 + 8);
    v52(v81, v27);
    sub_1E1308058(v83, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v48, &qword_1ECEB3B28, &unk_1E1B11460);
    v52(v46, v27);
    sub_1E1308058(v84, &qword_1ECEB3B28, &unk_1E1B11460);
    v52(v82, v27);
    sub_1E1308058(v92, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v53 = v49;
    v54 = &qword_1ECEB3B28;
    v55 = &unk_1E1B11460;
  }

  else
  {
    v56 = v77;
    v57 = qword_1EE1E3BC8;

    if (v57 != -1)
    {
      swift_once();
    }

    v75 = v27;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v58, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v59 = v91;
    v60 = v56;
    v61 = v76;
    if (v91)
    {
    }

    v62 = *(v61 + 8);
    v62(v88, v50);
    v63 = v84;
    v64 = v74;
    if (v59)
    {
      v65 = v87;
      sub_1E134FD1C(v87, v74, &qword_1ECEB3B28, &unk_1E1B11460);
      if (v51(v64, 1, v50) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
        v71 = *(v60 + 8);
        v72 = v63;
        v73 = v75;
        v71(v81, v75);
        sub_1E1308058(v83, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v65, &qword_1ECEB3B28, &unk_1E1B11460);
        v71(v86, v73);
        sub_1E1308058(v72, &qword_1ECEB3B28, &unk_1E1B11460);
        v71(v82, v73);
        sub_1E1308058(v92, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v62(v74, v50);
        return v33;
      }

      sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
      v66 = *(v60 + 8);
      v67 = v75;
      v66(v81, v75);
      sub_1E1308058(v83, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v65, &qword_1ECEB3B28, &unk_1E1B11460);
      v66(v86, v67);
      sub_1E1308058(v63, &qword_1ECEB3B28, &unk_1E1B11460);
      v66(v82, v67);
      sub_1E1308058(v92, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v53 = v74;
      v54 = &qword_1ECEB3B28;
      v55 = &unk_1E1B11460;
    }

    else
    {

      sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
      v68 = *(v60 + 8);
      v69 = v75;
      v68(v81, v75);
      sub_1E1308058(v83, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v87, &qword_1ECEB3B28, &unk_1E1B11460);
      v68(v86, v69);
      sub_1E1308058(v63, &qword_1ECEB3B28, &unk_1E1B11460);
      v68(v82, v69);
      v53 = v92;
      v54 = &qword_1ECEB2DF0;
      v55 = &unk_1E1B02CE0;
    }
  }

  sub_1E1308058(v53, v54, v55);
  return v33;
}

uint64_t ArcadeSeeAllGamesPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:facets:selectedFacetOptions:pageSegments:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v84 = a8;
  LODWORD(v82) = a7;
  v80 = a5;
  v87 = a4;
  v74 = a3;
  v73 = a2;
  v72 = a1;
  v83 = a15;
  v76 = a10;
  v77 = a9;
  v81 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v71 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v70 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  v27 = sub_1E1AF3C3C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v88 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v70 - v31;
  v33 = *(a11 + 16);
  v34 = *(a11 + 24);
  v35 = v16 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
  *v35 = *a11;
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = a12;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v81;
  v81 = a6;
  sub_1E134FD1C(a6, v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v75 = v28;
  v36 = *(v28 + 16);
  v79 = a14;
  v36(v32, a14, v27);
  v78 = a16;
  sub_1E134FD1C(a16, v26, &qword_1ECEB3B28, &unk_1E1B11460);
  v37 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v38 = sub_1E175EC2C(v72);
  v40 = v39;

  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v38;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v40;
  v41 = (v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v42 = v74;
  *v41 = v73;
  v41[1] = v42;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v87;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v80;
  sub_1E134FD1C(v90, v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v82;
  swift_beginAccess();
  *(v16 + v37) = v84;

  *(v16 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v43 = v88;
  v80 = v32;
  v36(v88, v32, v27);
  v82 = v26;
  v44 = v85;
  sub_1E134FD1C(v82, v85, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v16 + 16) = 0;
  v45 = v27;
  v36((v16 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v43, v27);
  v74 = v16;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v83;
  v46 = v86;
  sub_1E134FD1C(v44, v86, &qword_1ECEB3B28, &unk_1E1B11460);
  v47 = sub_1E1AF39DC();
  v73 = *(v47 - 8);
  v48 = *(v73 + 48);
  v49 = v46;
  v50 = v47;
  v51 = v49;
  if (v48() == 1)
  {

    sub_1E1308058(v78, &qword_1ECEB3B28, &unk_1E1B11460);
    v52 = *(v75 + 8);
    v52(v79, v45);
    sub_1E1308058(v81, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v44, &qword_1ECEB3B28, &unk_1E1B11460);
    v52(v88, v45);
    sub_1E1308058(v82, &qword_1ECEB3B28, &unk_1E1B11460);
    v52(v80, v45);
    sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v53 = v51;
    v54 = &qword_1ECEB3B28;
    v55 = &unk_1E1B11460;
  }

  else
  {
    v56 = v75;
    v57 = v45;
    v58 = qword_1EE1E3BC8;

    if (v58 != -1)
    {
      swift_once();
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v59, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v60 = v89;
    v61 = v56;
    v62 = v73;
    if (v89)
    {
    }

    v63 = *(v62 + 8);
    v63(v86, v50);
    v64 = v85;
    if (v60)
    {
      v65 = v71;
      sub_1E134FD1C(v85, v71, &qword_1ECEB3B28, &unk_1E1B11460);
      if ((v48)(v65, 1, v50) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v78, &qword_1ECEB3B28, &unk_1E1B11460);
        v69 = *(v61 + 8);
        v69(v79, v57);
        sub_1E1308058(v81, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v64, &qword_1ECEB3B28, &unk_1E1B11460);
        v69(v88, v57);
        sub_1E1308058(v82, &qword_1ECEB3B28, &unk_1E1B11460);
        v69(v80, v57);
        sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v63(v71, v50);
        return v74;
      }

      sub_1E1308058(v78, &qword_1ECEB3B28, &unk_1E1B11460);
      v66 = *(v61 + 8);
      v66(v79, v57);
      sub_1E1308058(v81, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v64, &qword_1ECEB3B28, &unk_1E1B11460);
      v66(v88, v57);
      sub_1E1308058(v82, &qword_1ECEB3B28, &unk_1E1B11460);
      v66(v80, v57);
      sub_1E1308058(v90, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v53 = v65;
      v54 = &qword_1ECEB3B28;
      v55 = &unk_1E1B11460;
    }

    else
    {

      sub_1E1308058(v78, &qword_1ECEB3B28, &unk_1E1B11460);
      v67 = *(v61 + 8);
      v67(v79, v57);
      sub_1E1308058(v81, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v64, &qword_1ECEB3B28, &unk_1E1B11460);
      v67(v88, v57);
      sub_1E1308058(v82, &qword_1ECEB3B28, &unk_1E1B11460);
      v67(v80, v57);
      v53 = v90;
      v54 = &qword_1ECEB2DF0;
      v55 = &unk_1E1B02CE0;
    }
  }

  sub_1E1308058(v53, v54, v55);
  return v74;
}

uint64_t ArcadeSeeAllGamesPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t))
{
  v94 = a8;
  LODWORD(v87) = a7;
  v84 = a5;
  v95 = a4;
  v83 = a3;
  v82 = a2;
  v81 = a1;
  v99 = a13;
  v96 = a12;
  v88 = a10;
  v89 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v80 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v79 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v97 = &v79 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v79 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v79 - v23;
  v25 = sub_1E1AF3C3C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v100 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v79 - v29;
  v101 = &v79 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v79 - v32;
  v91 = a6;
  sub_1E134FD1C(a6, v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v34 = MEMORY[0x1E69E7CC0];
  v35 = sub_1E159FA90(MEMORY[0x1E69E7CC0]);
  v86 = v26;
  v36 = *(v26 + 16);
  v90 = a11;
  v36(v33, a11, v25);
  sub_1E134FD1C(v99, v24, &qword_1ECEB3B28, &unk_1E1B11460);
  type metadata accessor for ArcadeSeeAllGamesPage(0);
  v37 = swift_allocObject();
  v38 = v37 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
  *(v38 + 8) = 0;
  *(v38 + 16) = 0;
  *v38 = 0;
  *(v38 + 24) = 0;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v35;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v34;
  sub_1E134FD1C(v104, v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v92 = v33;
  v36(v30, v33, v25);
  v93 = v24;
  v39 = v98;
  sub_1E134FD1C(v24, v98, &qword_1ECEB3B28, &unk_1E1B11460);
  v40 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v41 = sub_1E175EC2C(v81);
  v43 = v42;

  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v41;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v43;
  v44 = v95;
  v45 = v25;
  v46 = (v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v47 = v83;
  *v46 = v82;
  v46[1] = v47;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v44;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v84;
  sub_1E134FD1C(v103, v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v87;
  swift_beginAccess();
  *(v37 + v40) = v94;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v48 = v100;
  v36(v100, v101, v25);
  v49 = v97;
  sub_1E134FD1C(v39, v97, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v37 + 16) = 0;
  v87 = v45;
  v36((v37 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v48, v45);
  *(v37 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v96;
  v50 = v85;
  sub_1E134FD1C(v49, v85, &qword_1ECEB3B28, &unk_1E1B11460);
  v51 = sub_1E1AF39DC();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v54 = v51;
  if ((v53)(v50, 1) == 1)
  {

    sub_1E1308058(v99, &qword_1ECEB3B28, &unk_1E1B11460);
    v55 = *(v86 + 8);
    v56 = v87;
    v55(v90, v87);
    sub_1E1308058(v91, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v49, &qword_1ECEB3B28, &unk_1E1B11460);
    v55(v100, v56);
    sub_1E1308058(v39, &qword_1ECEB3B28, &unk_1E1B11460);
    v55(v101, v56);
    sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v93, &qword_1ECEB3B28, &unk_1E1B11460);
    v55(v92, v56);
    sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v57 = v50;
    v58 = &qword_1ECEB3B28;
    v59 = &unk_1E1B11460;
  }

  else
  {
    v84 = v52;
    v60 = v50;
    v61 = v86;
    v62 = qword_1EE1E3BC8;

    if (v62 != -1)
    {
      swift_once();
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v63, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v64 = v102;
    v65 = v61;
    v66 = v54;
    if (v102)
    {
    }

    v67 = *(v84 + 8);
    v84 += 8;
    v67(v60, v66);
    v68 = v97;
    if (v64)
    {
      v69 = v80;
      sub_1E134FD1C(v97, v80, &qword_1ECEB3B28, &unk_1E1B11460);
      if (v53(v69, 1, v66) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v99, &qword_1ECEB3B28, &unk_1E1B11460);
        v99 = v67;
        v75 = v65;
        v76 = v68;
        v77 = v87;
        v78 = *(v75 + 8);
        v78(v90, v87);
        sub_1E1308058(v91, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v76, &qword_1ECEB3B28, &unk_1E1B11460);
        v78(v100, v77);
        sub_1E1308058(v98, &qword_1ECEB3B28, &unk_1E1B11460);
        v78(v101, v77);
        sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v93, &qword_1ECEB3B28, &unk_1E1B11460);
        v78(v92, v77);
        sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v99(v80, v66);
        return v37;
      }

      sub_1E1308058(v99, &qword_1ECEB3B28, &unk_1E1B11460);
      v70 = *(v65 + 8);
      v71 = v87;
      v70(v90, v87);
      sub_1E1308058(v91, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v68, &qword_1ECEB3B28, &unk_1E1B11460);
      v70(v100, v71);
      sub_1E1308058(v98, &qword_1ECEB3B28, &unk_1E1B11460);
      v70(v101, v71);
      sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v93, &qword_1ECEB3B28, &unk_1E1B11460);
      v70(v92, v71);
      sub_1E1308058(v104, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v57 = v69;
      v58 = &qword_1ECEB3B28;
      v59 = &unk_1E1B11460;
    }

    else
    {

      sub_1E1308058(v99, &qword_1ECEB3B28, &unk_1E1B11460);
      v72 = *(v65 + 8);
      v73 = v87;
      v72(v90, v87);
      sub_1E1308058(v91, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v68, &qword_1ECEB3B28, &unk_1E1B11460);
      v72(v100, v73);
      sub_1E1308058(v98, &qword_1ECEB3B28, &unk_1E1B11460);
      v72(v101, v73);
      sub_1E1308058(v103, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v93, &qword_1ECEB3B28, &unk_1E1B11460);
      v72(v92, v73);
      v57 = v104;
      v58 = &qword_1ECEB2DF0;
      v59 = &unk_1E1B02CE0;
    }
  }

  sub_1E1308058(v57, v58, v59);
  return v37;
}

void *ArcadeSeeAllGamesPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D20, &unk_1E1B37820);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v50 - v5;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = (v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v51 = v50 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v50 - v13;
  v62 = sub_1E1AF380C();
  v15 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v52 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v50[1] = v50 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v50 - v20;
  sub_1E1AF381C();
  v59 = v8;
  v22 = *(v8 + 16);
  v56 = v7;
  v60 = v22;
  v61 = v8 + 16;
  v22(v14, a2, v7);
  sub_1E14E6264();
  sub_1E1AF464C();
  v23 = v64;
  v24 = v65;
  v25 = v66;
  v26 = v66 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
  *v26 = v63;
  *(v26 + 16) = v23;
  *(v26 + 24) = v24;
  v27 = a1;
  sub_1E1AF381C();
  v28 = v15;
  v29 = *(v15 + 56);
  v30 = v62;
  v29(v6, 0, 1, v62);
  v31 = *(v26 + 8);
  v32 = *(v26 + 16);
  v33 = *(v26 + 24);
  *&v63 = *v26;
  *(&v63 + 1) = v31;
  v64 = v32;
  v65 = v33;
  sub_1E13C0418(v63, v31, v32);
  v58 = a2;
  v34 = _s11AppStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v6, &v63, a2);
  sub_1E13C045C(v63, *(&v63 + 1), v64);
  sub_1E1308058(v6, &qword_1ECEB4D20, &unk_1E1B37820);
  *(v25 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v34;
  v35 = v27;
  sub_1E1AF381C();
  LOBYTE(v6) = sub_1E1AF37AC();
  v53 = v28;
  v55 = *(v28 + 8);
  v55(v21, v30);
  if (v6)
  {
    v36 = v56;
    v37 = v57;
    v38 = v58;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = v27;
  }

  else
  {
    v40 = v27;
    sub_1E1AF381C();
    v41 = v58;
    v36 = v56;
    v60(v51, v58, v56);
    sub_1E1A33E20();
    v42 = v57;
    v39 = sub_1E1AF62EC();
    v37 = v42;
    if (v42)
    {
      (*(v59 + 8))(v41, v36);
      v55(v35, v62);
      sub_1E13C045C(*v26, *(v26 + 8), *(v26 + 16));

      type metadata accessor for ArcadeSeeAllGamesPage(0);
      return swift_deallocPartialClassInstance();
    }

    v38 = v41;
  }

  *(v66 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v39;
  v44 = v52;
  v45 = v62;
  (*(v53 + 16))(v52, v40, v62);
  v46 = v54;
  v60(v54, v38, v36);
  v47 = GenericPage.init(deserializing:using:)(v44, v46);
  if (v37)
  {
    (*(v59 + 8))(v38, v36);
    return (v55)(v40, v45);
  }

  else
  {
    v48 = v40;
    v49 = v47;
    (*(v59 + 8))(v38, v36);
    v55(v48, v45);
    return v49;
  }
}

double ArcadeSeeAllGamesPage.facets.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return sub_1E13C0418(v3, v4, v5);
}

uint64_t sub_1E1A32EDC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v80 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v80 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v18 = sub_1E1AF3C3C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v107 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v109 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v103 = v25;
    v104 = v17;
    v105 = v19;

    ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v29 = v28;
    ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v112 = v29;
    sub_1E1728208(v30);
    v93 = v112;
    v31 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
    v90 = v31;
    if (v31)
    {
      v94 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
      v92 = v31;
    }

    else
    {
      v32 = *(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
      v94 = *(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
      v92 = v32;
    }

    v33 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction);
    v91 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);
    sub_1E134FD1C(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &v112, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v34 = *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) == 1;
    v35 = v105;
    v81 = v7;
    v95 = a1;
    v101 = v33;
    v36 = v18;
    if (v34)
    {
      v89 = *(v27 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete);
    }

    else
    {
      v89 = 0;
    }

    v100 = v14;
    v37 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    swift_beginAccess();
    v38 = *(v2 + v37);
    v87 = v38;
    if (!v38)
    {
      swift_beginAccess();
    }

    v102 = v38;
    v82 = *(v27 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets);
    v39 = v82;
    v40 = *(v27 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 16);
    v84 = *(v27 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 8);
    v83 = v40;
    v99 = *(v27 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions);
    v98 = *(v2 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments);
    v41 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    v42 = *(v27 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 24);
    swift_beginAccess();
    v43 = *(v35 + 16);
    v44 = v2 + v41;
    v45 = v103;
    v43(v103, v44, v18);
    v86 = v35 + 16;
    v85 = v43;
    v88 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
    v96 = sub_1E1AF39DC();
    v108 = *(v96 - 8);
    v46 = v104;
    (*(v108 + 56))(v104, 1, 1, v96);
    type metadata accessor for ArcadeSeeAllGamesPage(0);
    v2 = swift_allocObject();
    v47 = v2 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets;
    *v47 = v39;
    v48 = v84;
    v49 = v83;
    *(v47 + 8) = v84;
    *(v47 + 16) = v49;
    *(v47 + 24) = v42;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v99;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v98;
    sub_1E134FD1C(&v112, v111, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v50 = v109;
    v43(v109, v45, v36);
    v51 = v100;
    sub_1E134FD1C(v46, v100, &qword_1ECEB3B28, &unk_1E1B11460);
    v52 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;

    sub_1E13C0418(v82, v48, v49);

    v53 = sub_1E175EC2C(v93);
    v55 = v54;

    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v53;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v55;
    v56 = (v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
    v57 = v92;
    *v56 = v94;
    v56[1] = v57;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v101;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v91;
    sub_1E134FD1C(v111, v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v89;
    swift_beginAccess();
    *(v2 + v52) = v102;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
    v58 = v107;
    v59 = v85;
    v85(v107, v50, v36);
    v60 = v97;
    sub_1E134FD1C(v51, v97, &qword_1ECEB3B28, &unk_1E1B11460);
    *(v2 + 16) = 0;
    v99 = v36;
    v59(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v58, v36);
    v61 = v60;
    v62 = v96;
    *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v88;
    v63 = v106;
    sub_1E134FD1C(v61, v106, &qword_1ECEB3B28, &unk_1E1B11460);
    v64 = *(v108 + 48);
    if (v64(v63, 1, v62) == 1)
    {

      sub_1E1308058(v61, &qword_1ECEB3B28, &unk_1E1B11460);
      v65 = v63;
      v66 = *(v105 + 8);
      v67 = v99;
      v66(v58, v99);
      sub_1E1308058(v100, &qword_1ECEB3B28, &unk_1E1B11460);
      v66(v109, v67);
      sub_1E1308058(v111, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v104, &qword_1ECEB3B28, &unk_1E1B11460);
      v66(v103, v67);
    }

    else
    {
      v98 = v64;
      v68 = v99;
      v69 = v62;
      v70 = qword_1EE1E3BC8;

      if (v70 != -1)
      {
        swift_once();
      }

      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
      __swift_project_value_buffer(v71, qword_1EE1E3BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
      sub_1E1AF39EC();
      v72 = v110;
      v65 = v81;
      if (v110)
      {
      }

      v73 = *(v108 + 8);
      v108 += 8;
      v73(v106, v69);
      if (!v72)
      {

        sub_1E1308058(v61, &qword_1ECEB3B28, &unk_1E1B11460);
        v77 = *(v105 + 8);
        v77(v107, v68);
        sub_1E1308058(v100, &qword_1ECEB3B28, &unk_1E1B11460);
        v77(v109, v68);
        sub_1E1308058(v111, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v104, &qword_1ECEB3B28, &unk_1E1B11460);
        v77(v103, v68);
        sub_1E1308058(&v112, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        return v2;
      }

      sub_1E134FD1C(v61, v65, &qword_1ECEB3B28, &unk_1E1B11460);
      v74 = v98(v65, 1, v69);
      v75 = v109;
      if (v74 != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v61, &qword_1ECEB3B28, &unk_1E1B11460);
        v78 = *(v105 + 8);
        v78(v107, v68);
        sub_1E1308058(v100, &qword_1ECEB3B28, &unk_1E1B11460);
        v78(v75, v68);
        sub_1E1308058(v111, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        sub_1E1308058(v104, &qword_1ECEB3B28, &unk_1E1B11460);
        v78(v103, v68);
        sub_1E1308058(&v112, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        v73(v65, v96);
        return v2;
      }

      sub_1E1308058(v61, &qword_1ECEB3B28, &unk_1E1B11460);
      v76 = *(v105 + 8);
      v76(v107, v68);
      sub_1E1308058(v100, &qword_1ECEB3B28, &unk_1E1B11460);
      v76(v75, v68);
      sub_1E1308058(v111, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v104, &qword_1ECEB3B28, &unk_1E1B11460);
      v76(v103, v68);
    }

    sub_1E1308058(&v112, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v65, &qword_1ECEB3B28, &unk_1E1B11460);
  }

  else
  {
  }

  return v2;
}

double sub_1E1A33C44()
{
  sub_1E13C045C(*(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets), *(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 16));

  return result;
}

uint64_t ArcadeSeeAllGamesPage.deinit()
{
  v0 = GenericPage.deinit();
  sub_1E13C045C(*(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets), *(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 16));

  return v0;
}

uint64_t ArcadeSeeAllGamesPage.__deallocating_deinit()
{
  v0 = GenericPage.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets);
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21ArcadeSeeAllGamesPage_facets + 16);

  sub_1E13C045C(v1, v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSeeAllGamesPage(uint64_t a1)
{
  result = qword_1EE1DB080;
  if (!qword_1EE1DB080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E1A33E20()
{
  result = qword_1ECEBCE20;
  if (!qword_1ECEBCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE20);
  }

  return result;
}

unint64_t sub_1E1A33E78()
{
  result = qword_1ECEBCE28;
  if (!qword_1ECEBCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE28);
  }

  return result;
}

unint64_t sub_1E1A33ED0()
{
  result = qword_1ECEBCE30;
  if (!qword_1ECEBCE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBCE38, &qword_1E1B4D238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE30);
  }

  return result;
}

double View.metricsActivityAware(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v6 = off_1EE1F3438;
  swift_beginAccess();
  v13 = v6[11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BD8, &qword_1E1B1E850);
  sub_1E1AF2BEC();
  v7 = v10;
  v8 = v11;
  v10 = a1;
  v11 = v7;
  v12 = v8;
  MEMORY[0x1E68FB770](&v10, a2, &type metadata for MetricsActivityAwareViewModifier, a3);

  return result;
}

unint64_t sub_1E1A340F4()
{
  result = qword_1ECEBCE40;
  if (!qword_1ECEBCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE40);
  }

  return result;
}

double sub_1E1A34174@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a1;
  v70 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210, &unk_1E1B143E0);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - v9;
  v10 = sub_1E1AF4A9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v52 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE48, &qword_1E1B4D3B0);
  v68 = *(v19 - 8);
  v69 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v52 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE50, &unk_1E1B4D3B8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v52 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88, &unk_1E1B143F0);
  sub_1E1AF413C();
  v73 = a3;
  v74 = v84;
  v71 = a4;
  v72 = v85;
  v83[0] = a3;
  v83[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE58, &unk_1E1B4D3C8);
  sub_1E1AF2BFC();
  v75 = v82[0];
  if (!v82[0])
  {
    v75 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
  }

  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v22 = off_1EE1F3438;
  swift_beginAccess();
  v56 = *(v22 + 80);
  swift_beginAccess();
  sub_1E134FD1C((v22 + 12), v83, &unk_1ECEB7230, qword_1E1B103B0);
  v23 = type metadata accessor for SearchGhostHintMetricsTracker();
  sub_1E1AF413C();
  if (v82[0])
  {
    v24 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v82[1] = 0;
    v82[2] = 0;
  }

  v82[3] = v23;
  v82[4] = v24;
  swift_beginAccess();
  v25 = v22[17];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0, &qword_1E1B061B0);
  v61 = v25;

  v55 = v26;
  sub_1E1AF413C();
  v60 = v80;
  v54 = v81;
  sub_1E1AF4A8C();
  v27 = v74;
  if (v74)
  {
    v28 = qword_1EE1E3948;
    swift_unknownObjectRetain();
    if (v28 != -1)
    {
      swift_once();
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80, &unk_1E1B0C0C0);
    __swift_project_value_buffer(v29, qword_1EE1E3950);
    v78 = v27;
    v79 = v72;
    sub_1E1AF4A3C();
    (*(v11 + 8))(v16, v10);
    swift_unknownObjectRelease();
    (*(v11 + 32))(v16, v13, v10);
  }

  v62 = v22;
  v72 = a2;
  LOBYTE(v78) = 0;
  if (qword_1EE1E3928 != -1)
  {
    swift_once();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90, &unk_1E1B21B00);
  __swift_project_value_buffer(v53, qword_1EE1E3930);
  sub_1E1AF4A3C();
  v30 = *(v11 + 8);
  v30(v16, v10);
  v31 = *(v11 + 32);
  v31(v16, v13, v10);
  v78 = v75;
  v32 = v57;
  sub_1E1AF4A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  sub_1E1AF4A3C();
  v33 = v30;
  (*(v58 + 8))(v32, v59);
  v30(v16, v10);
  v31(v16, v13, v10);
  if (v56 != 2)
  {
    LOBYTE(v78) = v56 & 1;
    if (qword_1ECEB0E70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v53, qword_1EE1D2960);
    sub_1E1AF4A3C();
    v30(v16, v10);
    v31(v16, v13, v10);
  }

  sub_1E134FD1C(v83, &v76, &unk_1ECEB7230, qword_1E1B103B0);
  if (v77)
  {
    sub_1E1308EC0(&v76, &v78);
    v34 = v61;
    if (qword_1EE1D28F8 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250, &unk_1E1B103A0);
    __swift_project_value_buffer(v35, qword_1EE1D2900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8, &unk_1E1B21B20);
    sub_1E1AF4A3C();
    __swift_destroy_boxed_opaque_existential_1(&v78);
    v33(v16, v10);
    v31(v16, v13, v10);
  }

  else
  {
    sub_1E1308058(&v76, &unk_1ECEB7230, qword_1E1B103B0);
    v34 = v61;
  }

  sub_1E134FD1C(v82, &v76, &qword_1ECEB2B70, &qword_1E1B14250);
  if (!v77)
  {
    sub_1E1308058(&v76, &qword_1ECEB2B70, &qword_1E1B14250);
    if (!v34)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_1E1308EC0(&v76, &v78);
  if (qword_1EE1D28B0 != -1)
  {
    swift_once();
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240, &unk_1E1B14420);
  __swift_project_value_buffer(v36, qword_1EE1D28B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0, &unk_1E1B21B10);
  sub_1E1AF4A3C();
  __swift_destroy_boxed_opaque_existential_1(&v78);
  v33(v16, v10);
  v31(v16, v13, v10);
  if (v34)
  {
LABEL_29:
    v78 = v34;
    v37 = qword_1ECEB0E78;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8, &unk_1E1B2E830);
    __swift_project_value_buffer(v38, qword_1ECEB5998);
    type metadata accessor for Action(0);
    sub_1E1AF4A3C();
    v33(v16, v10);

    v31(v16, v13, v10);
  }

LABEL_32:
  v61 = v31;
  if (v60)
  {
    v78 = v60;
    v79 = v54;
    v39 = qword_1EE1D2918;
    swift_unknownObjectRetain();
    if (v39 != -1)
    {
      swift_once();
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98, &unk_1E1B14400);
    __swift_project_value_buffer(v40, qword_1EE1D2920);
    sub_1E1AF4A3C();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v41 = v33;
    v33(v16, v10);
    sub_1E1308058(v83, &unk_1ECEB7230, qword_1E1B103B0);
    swift_unknownObjectRelease();
    v42 = v61;
    v61(v16, v13, v10);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1E1308058(v83, &unk_1ECEB7230, qword_1E1B103B0);
    v41 = v33;
    v42 = v61;
  }

  v43 = v63;
  v42(v63, v16, v10);
  sub_1E1308058(v82, &qword_1ECEB2B70, &qword_1E1B14250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE60, &qword_1E1B4D3D8);
  sub_1E1302CD4(&qword_1ECEBCE68, &qword_1ECEBCE60, &qword_1E1B4D3D8, MEMORY[0x1E697FDF8]);
  v44 = v66;
  sub_1E1AF294C();
  v41(v43, v10);
  v45 = [objc_opt_self() defaultCenter];
  if (qword_1EE1DF920 != -1)
  {
    swift_once();
  }

  v47 = v64;
  v46 = v65;
  sub_1E1AF6A7C();

  v48 = swift_allocObject();
  v49 = v73;
  *(v48 + 2) = v72;
  *(v48 + 3) = v49;
  *(v48 + 4) = v71;
  (*(v68 + 32))(v47, v44, v69);
  v50 = (v47 + *(v46 + 56));
  *v50 = sub_1E1A34E94;
  v50[1] = v48;
  sub_1E1334118(v47, v70);

  return result;
}

uint64_t sub_1E1A34DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCE58, &unk_1E1B4D3C8);
  return sub_1E1AF2C0C();
}

double NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  [v3 layoutDirection];

  return a2;
}

UIEdgeInsets __swiftcall NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)(UITraitEnvironmentLayoutDirection a1)
{
  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == UITraitEnvironmentLayoutDirectionRightToLeft)
  {
    v1 = v2;
  }

  v4 = v3;
  result.right = v4;
  result.left = v1;
  return result;
}

uint64_t ASDIAPInfo.isExpired.getter()
{
  v1 = v0;
  v2 = sub_1E1AEFE6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = [v1 expirationDate];
  if (v13)
  {
    v14 = v13;
    sub_1E1AEFE3C();

    (*(v3 + 32))(v12, v8, v2);
    sub_1E1AEFE5C();
    sub_1E1A350CC();
    v15 = sub_1E1AF5D7C();
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

unint64_t sub_1E1A350CC()
{
  result = qword_1EE1FADC0;
  if (!qword_1EE1FADC0)
  {
    sub_1E1AEFE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1FADC0);
  }

  return result;
}

uint64_t sub_1E1A35128(unint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t))
{
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v14 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (!a2)
  {
    v35 = v7;
    v36 = v13;
    v15 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      v16 = a1;
      v39 = MEMORY[0x1E69E7CC0];
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
      {
        v30[1] = a4;
        v31 = v16;
        v19 = 0;
        v37 = v16 & 0xC000000000000001;
        v32 = v8 + 1;
        v33 = i;
        v34 = v17;
        while (1)
        {
          if (v37)
          {
            v20 = MEMORY[0x1E68FFD80](v19, v16);
          }

          else
          {
            if (v19 >= *(v17 + 16))
            {
              goto LABEL_26;
            }

            v20 = *(v16 + 8 * v19 + 32);
          }

          v8 = v20;
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v22 = [v20 expirationDate];
          if (v22)
          {
            v23 = v36;
            v24 = v22;
            sub_1E1AEFE3C();

            sub_1E1AEFE5C();
            sub_1E1A350CC();
            v25 = v35;
            v26 = sub_1E1AF5D7C();
            a4 = v32;
            v27 = *v32;
            (*v32)(v10, v25);
            v27(v23, v25);
            if ((v26 & 1) != 0 && ([v8 type] & 0xFE) == 2)
            {
              sub_1E1AF70BC();
              sub_1E1AF70FC();
              sub_1E1AF710C();
              sub_1E1AF70CC();
            }

            else
            {
            }

            v16 = v31;
            i = v33;
            v17 = v34;
          }

          else
          {
          }

          ++v19;
          if (v21 == i)
          {
            v15 = v39;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

      v15 = MEMORY[0x1E69E7CC0];
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_21:
      if (v15 >> 62)
      {
LABEL_29:
        v28 = sub_1E1AF71CC();
        goto LABEL_23;
      }
    }

    v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:

    v40 = v28 > 0;
    return sub_1E1AF586C();
  }

  v38 = 1;
  return sub_1E1AF586C();
}

double sub_1E1A35478(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1E1A35854();
    v4 = sub_1E1AF621C();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t _sSo13ASDIAPHistoryC11AppStoreKitE16hasSubscriptions9JetEngine7PromiseCySbGyFZ_0()
{
  v0 = sub_1E1AF0F7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = aBlock - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29F8, &qword_1E1B031B0);
  v7 = sub_1E1AF588C();
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v8 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v9 = [objc_opt_self() sharedInstance];
  (*(v1 + 16))(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = (v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v1 + 32))(v12 + v10, v3, v0);
  *(v12 + v11) = v7;
  aBlock[4] = sub_1E1A357A8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1A35478;
  aBlock[3] = &block_descriptor_101;
  v13 = _Block_copy(aBlock);

  [v9 getAllIAPsForActiveAccountWithResultHandler_];
  _Block_release(v13);

  (*(v1 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1E1A357A8(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1A35128(a1, a2, v2 + v6, v7);
}

unint64_t sub_1E1A35854()
{
  result = qword_1EE1E34C8;
  if (!qword_1EE1E34C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E34C8);
  }

  return result;
}

JSValue __swiftcall AppUpdateMetadata.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  result.super.isa = [v11 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_11;
  }

  isa = result.super.isa;
  v21[1] = *v2;

  v14 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
  v15 = [v11 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v11 valueWithBool:*(v2 + 8) inContext:in.super.isa];
  if (!result.super.isa)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1E1AF6C5C();
  updated = type metadata accessor for AppUpdateMetadata(0);
  sub_1E1380BEC(v2 + *(updated + 24), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E153DF88(v6);
    v17 = in.super.isa;
    v18 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v19 = in.super.isa;
    v18 = sub_1E1AF748C();
    (*(v8 + 8))(v10, v7);
  }

  v20 = [v11 valueWithObject:v18 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v20)
  {
    goto LABEL_13;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v11 valueWithBool:*(v2 + *(updated + 28)) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_1E1AF6C5C();

    return v14;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for AppUpdateMetadata(uint64_t a1)
{
  result = qword_1ECEBCE90;
  if (!qword_1ECEBCE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

JSValue __swiftcall AppUpdateLockupsIntent.makeValue(in:)(JSContext in)
{
  updated = type metadata accessor for AppUpdateMetadata(0);
  v4 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v11 = *(v7 + 16);
    if (v11)
    {
      v19 = MEMORY[0x1E69E7CC0];
      v12 = result.super.isa;
      sub_1E1AF70EC();
      v13 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v14 = *(v4 + 72);
      do
      {
        sub_1E1A35EC0(v13, v6);
        AppUpdateMetadata.makeValue(in:)(in);
        sub_1E1A35F24(v6);
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
        v13 += v14;
        --v11;
      }

      while (v11);
      v15 = v19;
    }

    else
    {
      v16 = result.super.isa;
      v15 = MEMORY[0x1E69E7CC0];
    }

    v19 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D38, &qword_1E1B12FC0);
    v17 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v17)
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

uint64_t sub_1E1A35EC0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AppUpdateMetadata(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1E1A35F24(uint64_t a1)
{
  updated = type metadata accessor for AppUpdateMetadata(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_1E1A35FA0()
{
  result = qword_1ECEBCE78;
  if (!qword_1ECEBCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE78);
  }

  return result;
}

unint64_t sub_1E1A35FFC()
{
  result = qword_1ECEBCE80;
  if (!qword_1ECEBCE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB85E0, &qword_1E1B2D320);
    sub_1E1A36080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE80);
  }

  return result;
}

unint64_t sub_1E1A36080()
{
  result = qword_1ECEBCE88;
  if (!qword_1ECEBCE88)
  {
    type metadata accessor for UpdatesLockup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCE88);
  }

  return result;
}

void sub_1E1A36104(uint64_t a1)
{
  sub_1E1A36190();
  if (v1 <= 0x3F)
  {
    sub_1E13A8B64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E1A36190()
{
  if (!qword_1ECEBCEA0)
  {
    v0 = sub_1E1AF5CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEBCEA0);
    }
  }
}

uint64_t SignOutAction.__allocating_init()()
{
  v0 = sub_1E1AEFEAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v7 = sub_1E1AF3E1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_1E1AF3DFC();
  v12 = sub_1E1AF46DC();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = (v11 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v13 = 0u;
  v13[1] = 0u;
  sub_1E138853C(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v1 + 8))(v3, v0);
    v20[1] = v14;
    v20[2] = v16;
    sub_1E1AF6F6C();
    sub_1E1308058(&v21, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v27, &unk_1ECEB5670, qword_1E1B03EC0);
  v17 = v11 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v18 = v25;
  *v17 = v24;
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  sub_1E134B7C8(v6, v11 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v11 + 16) = xmmword_1E1B4D5A0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  (*(v8 + 32))(v11 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v10, v7);
  return v11;
}

uint64_t SignOutAction.init()()
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
  *(v1 + 16) = xmmword_1E1B4D5A0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v12, v9);
  return v1;
}

char *SignOutAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *SignOutAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t SignOutAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  return v0;
}

uint64_t SignOutAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignOutAction(uint64_t a1)
{
  result = qword_1EE1F4810;
  if (!qword_1EE1F4810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Interpolator.init(fromValue:toValue:curve:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v9 = type metadata accessor for Interpolator(0, a3, a4, a3);
  v10 = *(a3 - 8);
  v11 = *(v10 + 16);
  v11(&a5[*(v9 + 36)], a1, a3);
  v11(&a5[*(v9 + 40)], a2, a3);
  v12 = TimingCurve.caMediaTimingFunction.getter();
  v13 = *(v10 + 8);
  v13(a2, a3);
  result = (v13)(a1, a3);
  *a5 = v12;
  return result;
}

uint64_t Interpolator.value(forInput:)(uint64_t a1, double a2)
{
  *&a2 = a2;
  [*v2 _solveForInput_];
  return (*(*(a1 + 24) + 8))(v2 + *(a1 + 36), v2 + *(a1 + 40), v4);
}

{
  *&a2 = a2;
  [*v2 _solveForInput_];
  return (*(*(a1 + 24) + 8))(v2 + *(a1 + 36), v2 + *(a1 + 40), v4);
}

uint64_t sub_1E1A37114(uint64_t a1)
{
  result = sub_1E1A37588();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E1A3719C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 8) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1E1A3732C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 8) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

unint64_t sub_1E1A37588()
{
  result = qword_1EE1D2460;
  if (!qword_1EE1D2460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1D2460);
  }

  return result;
}

uint64_t JSError.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = a2;
  v28 = sub_1E1AF380C();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  sub_1E1AF381C();
  v16 = sub_1E1AF37CC();
  v18 = v17;
  v19 = *(v4 + 8);
  v20 = v15;
  v21 = v28;
  v19(v20, v28);
  if (v18)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (v18)
  {
    v23 = v18;
  }

  v30 = v23;
  v31 = v22;
  sub_1E1AF381C();
  v29 = sub_1E1AF36EC();
  v27[3] = v24;
  v19(v12, v21);
  sub_1E1AF381C();
  sub_1E1AF36EC();
  v19(v9, v21);
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v19(v6, v21);
  sub_1E1AF569C();
  v25 = sub_1E1AF39DC();
  (*(*(v25 - 8) + 8))(v33, v25);
  return (v19)(a1, v21);
}

AppStoreKit::PerformanceTestType_optional __swiftcall PerformanceTestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

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

uint64_t PerformanceTestType.rawValue.getter()
{
  if (*v0)
  {
    return 0x657A69736572;
  }

  else
  {
    return 0x6C6C6F726373;
  }
}

uint64_t sub_1E1A3794C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x657A69736572;
  }

  else
  {
    v2 = 0x6C6C6F726373;
  }

  if (*a2)
  {
    v3 = 0x657A69736572;
  }

  else
  {
    v3 = 0x6C6C6F726373;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E1AF74AC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E1A379CC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1A37A3C(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1A37A90(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1A37AFC(char *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1E1A37B5C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C6F726373;
  if (*v1)
  {
    v2 = 0x657A69736572;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

void PerformanceTestCase.init(name:options:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v112 = a3;
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v103 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v103 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v103 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v103 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v103 - v24;
  v109 = a4;
  v110 = a1;
  *a4 = a1;
  a4[1] = a2;

  v26 = v112;
  sub_1E1AF381C();
  sub_1E1A384B8();
  v27 = v111;
  sub_1E1AF36AC();
  v111 = v27;
  if (v27)
  {

    v28 = *(v8 + 8);
    v28(v26, v7);
    v28(v25, v7);

    return;
  }

  v103 = v19;
  v104 = v16;
  v30 = *(v8 + 8);
  v29 = (v8 + 8);
  v31 = v25;
  v32 = v7;
  v105 = v30;
  v30(v31, v7);
  v33 = v109;
  *(v109 + 17) = v113[0];
  v34 = sub_1E1AF602C();

  if (v34)
  {
    v35 = v29;
    *(v33 + 16) = 0;
    v36 = v7;
    v37 = v33;
    v38 = v103;
  }

  else
  {
    v39 = v112;
    sub_1E1AF381C();
    sub_1E1A3850C();
    v40 = v111;
    sub_1E1AF36AC();
    v38 = v103;
    if (v40)
    {
      v41 = v32;
      v42 = v32;
      v43 = v105;
      v105(v39, v42);
      v43(v22, v41);

      return;
    }

    v111 = 0;
    v36 = v32;
    v35 = v29;
    v105(v22, v32);
    v37 = v33;
    *(v33 + 16) = v113[0];
  }

  v44 = v112;
  sub_1E1AF381C();
  v45 = sub_1E1AF37CC();
  v47 = v46;
  v48 = v38;
  v49 = v36;
  v50 = v105;
  v105(v48, v36);
  if (v47)
  {
    v51 = v104;
    if (v45 == 5457241 && v47 == 0xE300000000000000)
    {
      v52 = 1;
    }

    else
    {
      v52 = sub_1E1AF74AC();
    }

    v53 = v35;
  }

  else
  {
    v52 = 0;
    v51 = v104;
    v53 = v35;
  }

  *(v37 + 18) = v52 & 1;
  sub_1E1AF381C();
  v54 = type metadata accessor for PerformanceTestCase(0);
  sub_1E1AF36FC();
  v50(v51, v49);
  v55 = v108;
  sub_1E1AF381C();
  v56 = sub_1E1AF37CC();
  v58 = v57;
  v50(v55, v49);
  if (!v58)
  {
    goto LABEL_78;
  }

  v59 = HIBYTE(v58) & 0xF;
  v60 = v56 & 0xFFFFFFFFFFFFLL;
  if ((v58 & 0x2000000000000000) != 0)
  {
    v61 = HIBYTE(v58) & 0xF;
  }

  else
  {
    v61 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {

    goto LABEL_78;
  }

  if ((v58 & 0x1000000000000000) != 0)
  {
    sub_1E15B8398(v56, v58, 10);
    v64 = v102;

    if ((v64 & 0x100000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if ((v58 & 0x2000000000000000) != 0)
  {
    v113[0] = v56;
    v113[1] = v58 & 0xFFFFFFFFFFFFFFLL;
    if (v56 == 43)
    {
      if (v59)
      {
        if (--v59)
        {
          LODWORD(v64) = 0;
          v74 = v113 + 1;
          while (1)
          {
            v75 = *v74 - 48;
            if (v75 > 9)
            {
              break;
            }

            v76 = 10 * v64;
            if (v76 != v76)
            {
              break;
            }

            LODWORD(v64) = v76 + v75;
            if (__OFADD__(v76, v75))
            {
              break;
            }

            ++v74;
            if (!--v59)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

LABEL_99:
      __break(1u);
      return;
    }

    if (v56 != 45)
    {
      if (v59)
      {
        LODWORD(v64) = 0;
        v79 = v113;
        while (1)
        {
          v80 = *v79 - 48;
          if (v80 > 9)
          {
            break;
          }

          v81 = 10 * v64;
          if (v81 != v81)
          {
            break;
          }

          LODWORD(v64) = v81 + v80;
          if (__OFADD__(v81, v80))
          {
            break;
          }

          ++v79;
          if (!--v59)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    if (v59)
    {
      if (--v59)
      {
        LODWORD(v64) = 0;
        v68 = v113 + 1;
        while (1)
        {
          v69 = *v68 - 48;
          if (v69 > 9)
          {
            break;
          }

          v70 = 10 * v64;
          if (v70 != v70)
          {
            break;
          }

          LODWORD(v64) = v70 - v69;
          if (__OFSUB__(v70, v69))
          {
            break;
          }

          ++v68;
          if (!--v59)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_97;
  }

  if ((v56 & 0x1000000000000000) != 0)
  {
    v62 = ((v58 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v62 = sub_1E1AF709C();
  }

  v63 = *v62;
  if (v63 == 43)
  {
    if (v60 >= 1)
    {
      v59 = v60 - 1;
      if (v60 != 1)
      {
        LODWORD(v64) = 0;
        if (v62)
        {
          v71 = v62 + 1;
          while (1)
          {
            v72 = *v71 - 48;
            if (v72 > 9)
            {
              goto LABEL_76;
            }

            v73 = 10 * v64;
            if (v73 != v73)
            {
              goto LABEL_76;
            }

            LODWORD(v64) = v73 + v72;
            if (__OFADD__(v73, v72))
            {
              goto LABEL_76;
            }

            ++v71;
            if (!--v59)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_68;
      }

      goto LABEL_76;
    }

    goto LABEL_98;
  }

  if (v63 == 45)
  {
    if (v60 >= 1)
    {
      v59 = v60 - 1;
      if (v60 != 1)
      {
        LODWORD(v64) = 0;
        if (v62)
        {
          v65 = v62 + 1;
          while (1)
          {
            v66 = *v65 - 48;
            if (v66 > 9)
            {
              goto LABEL_76;
            }

            v67 = 10 * v64;
            if (v67 != v67)
            {
              goto LABEL_76;
            }

            LODWORD(v64) = v67 - v66;
            if (__OFSUB__(v67, v66))
            {
              goto LABEL_76;
            }

            ++v65;
            if (!--v59)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_68:
        LOBYTE(v59) = 0;
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v60)
  {
    LODWORD(v64) = 0;
    if (v62)
    {
      while (1)
      {
        v77 = *v62 - 48;
        if (v77 > 9)
        {
          goto LABEL_76;
        }

        v78 = 10 * v64;
        if (v78 != v78)
        {
          goto LABEL_76;
        }

        LODWORD(v64) = v78 + v77;
        if (__OFADD__(v78, v77))
        {
          goto LABEL_76;
        }

        ++v62;
        if (!--v60)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_76:
  LODWORD(v64) = 0;
  LOBYTE(v59) = 1;
LABEL_77:
  v114 = v59;
  v82 = v59;

  if (v82)
  {
LABEL_78:
    LODWORD(v64) = 0;
  }

LABEL_79:
  *(v37 + v54[9]) = v64;
  v83 = v106;
  sub_1E1AF381C();
  v84 = sub_1E1AF37CC();
  v86 = v85;
  v87 = v105;
  v112 = v53;
  v105(v83, v49);
  v88 = v49;
  if (v86)
  {
    v89 = sub_1E15B7B2C(v84, v86);
    if ((v89 & 0x100000000) != 0)
    {
      v90 = 0;
    }

    else
    {
      v90 = v89;
    }
  }

  else
  {
    v90 = 0;
  }

  v91 = v107;
  *(v37 + v54[10]) = v90;
  v92 = v37;
  v93 = v104;
  sub_1E1AF381C();
  v94 = sub_1E1AF37CC();
  v96 = v95;
  v87(v93, v88);
  v97 = (v92 + v54[11]);
  *v97 = v94;
  v97[1] = v96;
  sub_1E1AF381C();
  v98 = sub_1E1AF37CC();
  v100 = v99;
  v87(v91, v88);
  if (v100)
  {
    if (v98 == 5457241 && v100 == 0xE300000000000000)
    {
      v101 = 1;
    }

    else
    {
      v101 = sub_1E1AF74AC();
    }
  }

  else
  {
    v101 = 0;
  }

  v87(v44, v88);
  *(v92 + v54[12]) = v101 & 1;
}