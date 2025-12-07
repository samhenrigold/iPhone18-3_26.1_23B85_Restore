uint64_t type metadata accessor for InAppPurchaseLockup(uint64_t a1)
{
  result = qword_27F233228;
  if (!qword_27F233228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EEE35EC()
{
  result = qword_27F233218;
  if (!qword_27F233218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233218);
  }

  return result;
}

uint64_t sub_24EEE3640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24EEE36BC()
{

  return result;
}

uint64_t InAppPurchaseLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t InAppPurchaseLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EEE381C()
{
  result = qword_27F233220;
  if (!qword_27F233220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233220);
  }

  return result;
}

uint64_t SearchTextPresenter.__allocating_init(ghostHintMetricsTracker:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  v3 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_snapshotUpdateSubscription;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233240, &qword_24F9ACC90);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_onApplyTermExpansion;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233248, &qword_24F9ACC98);
  swift_allocObject();
  *(v2 + v5) = sub_24F9280D8();
  v6 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_onHintsTermChange;
  swift_allocObject();
  *(v2 + v6) = sub_24F9280D8();
  v7 = v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker) = a1;
  return v2;
}

uint64_t SearchTextPresenter.init(ghostHintMetricsTracker:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v4 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_snapshotUpdateSubscription;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233240, &qword_24F9ACC90);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_onApplyTermExpansion;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233248, &qword_24F9ACC98);
  swift_allocObject();
  *(v2 + v6) = sub_24F9280D8();
  v7 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_onHintsTermChange;
  swift_allocObject();
  *(v2 + v7) = sub_24F9280D8();
  v8 = v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  v9 = v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker) = a1;
  return v2;
}

uint64_t sub_24EEE3C40(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v6, &qword_27F233268, &qword_24F9ACCA0);
  v3 = *a2;
  swift_beginAccess();
  sub_24E60169C(v3 + 16, v5, &qword_27F233268, &qword_24F9ACCA0);
  swift_beginAccess();
  sub_24EEE3DC4(v6, v3 + 16);
  swift_endAccess();
  sub_24EEE3E34(v5);
  sub_24E601704(v5, &qword_27F233268, &qword_24F9ACCA0);
  return sub_24E601704(v6, &qword_27F233268, &qword_24F9ACCA0);
}

uint64_t SearchTextPresenter.inputSource.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_24E60169C(v1 + 16, v4, &qword_27F233268, &qword_24F9ACCA0);
  swift_beginAccess();
  sub_24EEE3DC4(a1, v1 + 16);
  swift_endAccess();
  sub_24EEE3E34(v4);
  sub_24E601704(a1, &qword_27F233268, &qword_24F9ACCA0);
  return sub_24E601704(v4, &qword_27F233268, &qword_24F9ACCA0);
}

uint64_t sub_24EEE3DC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233268, &qword_24F9ACCA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEE3E34(uint64_t a1)
{
  v2 = v1;
  v31 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233270, &qword_24F9ACCA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233240, &qword_24F9ACC90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32[-1] - v12;
  v14 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_snapshotUpdateSubscription;
  swift_beginAccess();
  sub_24E60169C(v2 + v14, v9, &qword_27F233270, &qword_24F9ACCA8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_27F233270;
    v16 = &qword_24F9ACCA8;
    v17 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_24E60169C(a1, v32, &qword_27F233268, &qword_24F9ACCA0);
    v18 = v33;
    if (v33)
    {
      v19 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      (*(v19 + 16))(v18, v19);
      sub_24F92AD78();

      (*(v11 + 8))(v13, v10);
      __swift_destroy_boxed_opaque_existential_1(v32);
      goto LABEL_7;
    }

    (*(v11 + 8))(v13, v10);
    v15 = &qword_27F233268;
    v16 = &qword_24F9ACCA0;
    v17 = v32;
  }

  sub_24E601704(v17, v15, v16);
LABEL_7:
  swift_beginAccess();
  v20 = v2[5];
  if (v20)
  {
    v21 = v2[6];
    v22 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    v23 = *(v20 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = &v32[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    (*(v21 + 16))(v20, v21);
    (*(v23 + 8))(v26, v20);
    v27 = sub_24E74EC40();
    v28 = sub_24F92BEF8();
    v33 = v27;
    v34 = MEMORY[0x277D225C0];
    v32[0] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233290, &qword_24F9ACD90);
    sub_24EEE58CC();
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(v32);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v11 + 56))(v6, v29, 1, v10);
  swift_beginAccess();
  sub_24EEE585C(v6, v2 + v14);
  return swift_endAccess();
}

uint64_t sub_24EEE42C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v16[0] = *a1;
  v15 = v16[0];
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = (a2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot);
  v7 = *(a2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot);
  v8 = *(a2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot + 8);
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v16[1] = v2;
  v17 = v3;
  v18 = v5;
  v19 = v4;
  sub_24EEE4974(v7, v8);
  sub_24EEE49B8(&v20, v16);
  sub_24EEE4930(v20, v21);
  v12 = *v6;
  v13 = v6[1];
  *v6 = v15;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;

  return sub_24EEE4930(v12, v13);
}

void (*SearchTextPresenter.inputSource.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  swift_beginAccess();
  sub_24E60169C(v1 + 16, v4, &qword_27F233268, &qword_24F9ACCA0);
  return sub_24EEE4498;
}

void sub_24EEE4498(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  if (a2)
  {
    sub_24E60169C(*a1, v2 + 40, &qword_27F233268, &qword_24F9ACCA0);
    sub_24E60169C(v3 + 16, v2 + 80, &qword_27F233268, &qword_24F9ACCA0);
    swift_beginAccess();
    sub_24EEE3DC4(v2 + 40, v3 + 16);
    swift_endAccess();
    sub_24EEE3E34(v2 + 80);
    sub_24E601704(v2 + 80, &qword_27F233268, &qword_24F9ACCA0);
  }

  else
  {
    sub_24E60169C(v3 + 16, v2 + 40, &qword_27F233268, &qword_24F9ACCA0);
    swift_beginAccess();
    sub_24EEE3DC4(v2, v3 + 16);
    swift_endAccess();
    sub_24EEE3E34(v2 + 40);
  }

  sub_24E601704(v2 + 40, &qword_27F233268, &qword_24F9ACCA0);
  sub_24E601704(v2, &qword_27F233268, &qword_24F9ACCA0);

  free(v2);
}

Swift::Void __swiftcall SearchTextPresenter.suggestGhostHint(toExpand:to:)(Swift::String toExpand, Swift::String to)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot);
  v4 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot + 8);
  if (v4)
  {
    object = to._object;
    countAndFlagsBits = to._countAndFlagsBits;
    v7 = *v3;
    v8 = v3[2];
    v9 = v3[3];
    v10 = v3[4];
    v11 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker);
    if (v11)
    {
      v13 = *(v11 + 24);
      v14 = *(v11 + 16);
      *(v11 + 16) = toExpand;
      *(v11 + 32) = to;
      *(v11 + 48) = 0;
      sub_24EEE4974(v7, v4);

      sub_24EAD7A40(v14, v13);
    }

    else
    {
    }

    v12 = v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState;
    *v12 = countAndFlagsBits;
    *(v12 + 8) = object;
    *(v12 + 16) = 0;

    v15[0] = v7;
    v15[1] = v4;
    v16 = v8 & 1;
    v17 = v9;
    v18 = v10;
    sub_24EEE4734(v15);
    sub_24EEE4930(v7, v4);
  }
}

uint64_t *sub_24EEE4734(uint64_t *result)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState + 8);
  if (v3 && (*(v2 + 16) & 1) == 0)
  {
    v4 = *result;
    v5 = result[1];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = *result & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = *v2;
      sub_24F92B198();
      sub_24F92B198();

      v8 = sub_24F92B358();

      if (v8 & 1) == 0 || (v4 == v7 ? (v9 = v3 == v5) : (v9 = 0), v9 || (sub_24F92CE08()))
      {
      }

      else
      {
        swift_beginAccess();
        if (*(v1 + 40))
        {
          v10 = v1;
          sub_24E615E00(v1 + 16, v16);
          v11 = v17;
          v12 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          v13 = (*(v12 + 8))(v7, v3, v11, v12);
          __swift_destroy_boxed_opaque_existential_1(v16);
          if (v13)
          {
            v16[0] = v7;
            v16[1] = v3;
            sub_24F9280C8();
            if (*(v2 + 8))
            {
              *(v2 + 16) = 1;
            }

            if (*(v10 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker))
            {
              v14._countAndFlagsBits = v7;
              v14._object = v3;
              v15._countAndFlagsBits = v4;
              v15._object = v5;
              SearchGhostHintMetricsTracker.trackDisplayedExpansion(of:from:)(v14, v15);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EEE4930(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_24EEE4974(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t *sub_24EEE49B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v27 = a1[4];
  v28 = a1[2];
  v24 = *a2;
  v25 = a1[3];
  v26 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = v3;
  v22 = v5;
  v23 = *(a2 + 16);
  if (v3)
  {
    if (v26)
    {
      v8 = v4 == v24 && v3 == v26;
      if (!v8 && (sub_24F92CE08() & 1) == 0 || v23 != (v28 & 1))
      {
        goto LABEL_9;
      }

      if (v27)
      {
        if (!v6)
        {
          v9 = 0;
          goto LABEL_10;
        }

        if (v25 != v5 || v27 != v6)
        {
          v20 = sub_24F92CE08();

          sub_24EEE4974(v4, v7);
          sub_24EEE4974(v4, v7);
          v9 = v6;
          sub_24EEE4930(v24, v26);
          if ((v20 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_30;
        }

        sub_24EEE4974(v4, v7);
        sub_24EEE4974(v4, v7);
        v16 = v24;
        v17 = v26;
      }

      else
      {
        if (v6)
        {
LABEL_9:

          v9 = v6;
LABEL_10:

          sub_24EEE4974(v4, v7);
          sub_24EEE4974(v4, v7);
          sub_24EEE4930(v24, v26);
LABEL_11:

          sub_24EEE4930(v4, v7);
          v10 = v9;
LABEL_16:
          v34 = v4;
          v35 = v7;
          v36 = v28;
          v37 = v25;
          v38 = v27;
          v29 = v24;
          v30 = v26;
          v31 = v23;
          v32 = v5;
          v33 = v10;
          v11 = v5;
          v12 = v10;
          v21 = v10;
          sub_24EEE4ED4(&v34, &v29);
          v34 = v4;
          v35 = v7;
          v36 = v28;
          v37 = v25;
          v38 = v27;
          v29 = v24;
          v30 = v26;
          v31 = v23;
          v32 = v11;
          v33 = v12;
          v13 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState);
          v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState + 8);

          sub_24EEE5010(&v34, &v29, v13, v14);

          v34 = v4;
          v35 = v7;
          v36 = v28;
          v37 = v25;
          v38 = v27;
          v29 = v24;
          v30 = v26;
          v31 = v23;
          v32 = v22;
          v33 = v21;
          sub_24EEE52F8(&v34, &v29);
          v34 = v24;
          v35 = v26;
          LOBYTE(v36) = v23;
          v37 = v22;
          v38 = v21;
          return sub_24EEE4734(&v34);
        }

        sub_24EEE4974(v4, v7);
        sub_24EEE4974(v4, v7);
        v16 = v24;
        v17 = v26;
      }

      sub_24EEE4930(v16, v17);
LABEL_30:

      v18 = v4;
      v19 = v7;
      goto LABEL_31;
    }

    sub_24EEE4974(v4, v7);
    sub_24EEE4974(v4, v7);

LABEL_15:
    sub_24EEE4930(v4, v7);
    sub_24EEE4930(v24, v26);
    v10 = v6;
    goto LABEL_16;
  }

  if (v26)
  {

    sub_24EEE4974(v4, 0);
    goto LABEL_15;
  }

  sub_24EEE4974(v4, 0);
  v18 = v4;
  v19 = 0;
LABEL_31:

  return sub_24EEE4930(v18, v19);
}

void sub_24EEE4ED4(uint64_t a1, uint64_t *a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState);
  v4 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = *v3;
      sub_24F92B198();
      sub_24F92B198();

      v9 = sub_24F92B358();

      if ((v9 & 1) == 0 || (v5 == v8 ? (v10 = v4 == v6) : (v10 = 0), v10))
      {
      }

      else
      {
        v11 = sub_24F92CE08();

        if ((v11 & 1) == 0)
        {
          return;
        }
      }
    }

    *(v3 + 16) = 0;
    *v3 = 0;
    v3[1] = 0;
  }
}

uint64_t sub_24EEE5010(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = *result;
    v7 = *(result + 8);
    v9 = *(result + 24);
    v10 = *(result + 32);
    v11 = *a2;
    v12 = a2[1];
    v30 = a2[4];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v31 = *(result + 24);
      sub_24F92B198();
      sub_24F92B198();
      v14 = sub_24F92B358();

      if (v14)
      {
        if (v11 == a3 && v12 == a4)
        {
          v15 = 0;
        }

        else
        {
          result = sub_24F92CE08();
          v15 = result ^ 1;
        }
      }

      else
      {
        v15 = 0;
      }

      v9 = v31;
      if (!v7)
      {
        return result;
      }
    }

    else
    {
      v15 = 0;
      if (!v7)
      {
        return result;
      }
    }

    if (v10)
    {
      v19 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v19 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        if (v30)
        {
          v20 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v20 = *v29 & 0xFFFFFFFFFFFFLL;
          }

          v21 = v20 == 0;
          if (v11 == v8 && v7 == v12)
          {
            if ((v15 & (v20 == 0)) == 0)
            {
              return result;
            }

LABEL_41:
            v22 = *(v28 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker);
            if (v22)
            {
              v23 = *(v22 + 24);
              if (v23)
              {
                v24 = *(v22 + 32);
                v25 = *(v22 + 40);
                v26 = v11 == *(v22 + 16) && v23 == v12;
                if (v26 || (result = sub_24F92CE08(), (result & 1) != 0))
                {
                  v27 = v24 == a3 && v25 == a4;
                  if (v27 || (result = sub_24F92CE08(), (result & 1) != 0))
                  {
                    *(v22 + 48) = 2;
                  }
                }
              }
            }

            return result;
          }
        }

        else
        {
          v21 = 1;
          if (v11 == v8 && v7 == v12)
          {
            if ((v15 & 1) == 0)
            {
              return result;
            }

            goto LABEL_41;
          }
        }

        result = sub_24F92CE08();
        if ((v15 & v21 & 1) == 0 || (result & 1) == 0)
        {
          return result;
        }

        goto LABEL_41;
      }
    }

    if (v11 != v8 || v7 != v12)
    {

      return sub_24F92CE08();
    }
  }

  else
  {
    v16 = *(v4 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker);
    if (v16)
    {
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      *(v16 + 16) = 0u;
      *(v16 + 32) = 0u;
      *(v16 + 48) = 0;

      return sub_24EAD7A40(v17, v18);
    }
  }

  return result;
}

uint64_t sub_24EEE52F8(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 8);
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    v13 = 0;
    if ((v5 & 0x2000000000000000) != 0)
    {
LABEL_17:
      if ((v5 & 0xF00000000000000) == 0)
      {
        return result;
      }

LABEL_21:
      if ((v13 & 1) == 0)
      {
        return sub_24F9280C8();
      }

      return result;
    }

LABEL_20:
    if ((v4 & 0xFFFFFFFFFFFFLL) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

  v6 = result;
  result = *result;
  v7 = *(v6 + 32);
  if (v7)
  {
    v8 = *(v6 + 24);
    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = a2[4];
      if (!v10)
      {
        goto LABEL_25;
      }

      v11 = a2[3] & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v10) & 0xF;
      }

      if (!v11)
      {
LABEL_25:
        if (v4 == v8 && v7 == v5)
        {
          v13 = 1;
          if (result == v8 && v3 == v7)
          {
            return result;
          }
        }

        else
        {
          v14 = v3;
          v15 = result;
          v13 = sub_24F92CE08();
          result = v15;
          if (v15 == v4 && v14 == v5)
          {
            return result;
          }
        }

LABEL_15:
        result = sub_24F92CE08();
        if (result)
        {
          return result;
        }

        if ((v5 & 0x2000000000000000) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }
  }

  if (result != v4 || v3 != v5)
  {
    v13 = 0;
    goto LABEL_15;
  }

  return result;
}

uint64_t SearchTextPresenter.deinit()
{
  sub_24E601704(v0 + 16, &qword_27F233268, &qword_24F9ACCA0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_snapshotUpdateSubscription, &qword_27F233270, &qword_24F9ACCA8);

  sub_24EEE4930(*(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot), *(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot + 8));

  return v0;
}

uint64_t SearchTextPresenter.__deallocating_deinit()
{
  sub_24E601704(v0 + 16, &qword_27F233268, &qword_24F9ACCA0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_snapshotUpdateSubscription, &qword_27F233270, &qword_24F9ACCA8);

  sub_24EEE4930(*(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot), *(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_24EEE55E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 16, a2, &qword_27F233268, &qword_24F9ACCA0);
}

uint64_t type metadata accessor for SearchTextPresenter(uint64_t a1)
{
  result = qword_27F233278;
  if (!qword_27F233278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEE569C(uint64_t a1)
{
  sub_24EEE5788(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EEE5788(uint64_t a1)
{
  if (!qword_27F233288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233240, &qword_24F9ACC90);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F233288);
    }
  }
}

uint64_t sub_24EEE57FC(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_24F92CE08();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_24EEE585C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233270, &qword_24F9ACCA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EEE58CC()
{
  result = qword_27F233298;
  if (!qword_27F233298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233290, &qword_24F9ACD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233298);
  }

  return result;
}

unint64_t sub_24EEE594C()
{
  result = qword_27F2332A0;
  if (!qword_27F2332A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2332A0);
  }

  return result;
}

uint64_t TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11)
{
  v19 = a10;
  v18 = a11;
  sub_24E94275C(a1, a9);
  sub_24E615E00(a2, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730, &unk_24F947310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221210, &unk_24F9ACE10);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    sub_24F9224C8();
    v20 = a5;
    v21 = a8;
    v22 = v34;
    v23 = v35;
    v24 = __swift_project_boxed_opaque_existential_1(v33, v34);
    *(&v38 + 1) = v22;
    v25 = *(v23 + 8);
    a8 = v21;
    a5 = v20;
    v39 = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    v27 = v24;
    v18 = a11;
    v19 = a10;
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v27, v22);
    sub_24E601704(a1, &qword_27F229780, &unk_24F965BB0);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    if (*(&v38 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(a2);
      sub_24E612C80(&v37, &v40);
      goto LABEL_7;
    }
  }

  else
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_24E601704(a1, &qword_27F229780, &unk_24F965BB0);
    sub_24E601704(&v40, &unk_27F22B200, &unk_24F9674C0);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  sub_24E612C80(a2, &v40);
  if (*(&v38 + 1))
  {
    sub_24E601704(&v37, &qword_27F229780, &unk_24F965BB0);
  }

LABEL_7:
  sub_24E612C80(&v40, a9 + 40);
  sub_24E612C80(a3, a9 + 80);
  sub_24E612C80(a4, a9 + 120);
  sub_24E612C80(a5, a9 + 160);
  v28 = *(a6 + 16);
  *(a9 + 200) = *a6;
  *(a9 + 216) = v28;
  *(a9 + 232) = *(a6 + 32);
  v29 = *(a7 + 16);
  *(a9 + 240) = *a7;
  *(a9 + 256) = v29;
  *(a9 + 272) = *(a7 + 32);
  sub_24E612C80(a8, a9 + 280);
  sub_24E612C80(v19, a9 + 320);
  return sub_24E612C80(v18, a9 + 360);
}

GameStoreKit::TitleHeaderLayout::ChildrenHorizontalAlignment_optional __swiftcall TitleHeaderLayout.ChildrenHorizontalAlignment.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_24EEE5D20@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  v14 = *a4;
  v15 = *a6;
  v16 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v16;
  *(a8 + 32) = *(a1 + 32);
  result = sub_24E612C80(a2, a8 + 40);
  *(a8 + 80) = a5;
  *(a8 + 88) = v15;
  *(a8 + 96) = v11;
  *(a8 + 104) = v12;
  *(a8 + 112) = v13;
  *(a8 + 113) = v14;
  *(a8 + 114) = a7;
  return result;
}

__n128 TitleHeaderLayout.accessoryVerticalAlignment.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[7].n128_u8[0];
  result = v1[6];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_24EEE5E30@<X0>(uint64_t a1@<X8>)
{
  sub_24E94275C(v1, &v4);
  if (!v5)
  {
    result = sub_24E601704(&v4, &qword_27F229780, &unk_24F965BB0);
    goto LABEL_5;
  }

  sub_24E612C80(&v4, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  if (sub_24F922238())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v6);
LABEL_5:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  sub_24E615E00(v6, a1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

double sub_24EEE5EEC(void *a1, double a2, double a3)
{
  v24 = a1;
  v4 = sub_24F9225E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922618();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D22788], v4, v9);
  sub_24F9225F8();
  v12 = *(v3 + 80);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 32;
    v15 = MEMORY[0x277D228E0];
    do
    {
      sub_24EEE9880(v14, v29);
      sub_24E615E00(v30, v25);
      v16 = sub_24F9229A8();
      v27 = v16;
      v28 = v15;
      __swift_allocate_boxed_opaque_existential_1(v26);
      sub_24F9229B8();
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v26);
      sub_24E615E00(v31, v25);
      v27 = v16;
      v28 = v15;
      __swift_allocate_boxed_opaque_existential_1(v26);
      sub_24F9229B8();
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v26);
      sub_24E94275C(&v32, v26);
      if (v27)
      {
        sub_24E601704(v26, &qword_27F229780, &unk_24F965BB0);
        v17 = [v24 traitCollection];
        v18 = sub_24F92BF98();

        if (v18)
        {
          sub_24E615E00(v30, v25);
          v27 = v16;
          v28 = v15;
          __swift_allocate_boxed_opaque_existential_1(v26);
          sub_24F9229B8();
          sub_24F922608();
          __swift_destroy_boxed_opaque_existential_1(v26);
          sub_24E615E00(v31, v25);
          v27 = v16;
          v28 = v15;
          __swift_allocate_boxed_opaque_existential_1(v26);
          sub_24F9229B8();
          sub_24F922608();
          sub_24EEE98B8(v29);
          __swift_destroy_boxed_opaque_existential_1(v26);
        }

        else
        {
          sub_24EEE98B8(v29);
        }
      }

      else
      {
        sub_24EEE98B8(v29);
        sub_24E601704(v26, &qword_27F229780, &unk_24F965BB0);
      }

      v14 += 400;
      --v13;
    }

    while (v13);
  }

  sub_24F9225D8();
  v20 = v19;
  (*(v22 + 8))(v11, v23);
  return v20;
}

double TitleHeaderLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 0.0)
  {
    return sub_24EEE5EEC(a1, a2, a3);
  }

  sub_24EEE5E30(&v21);
  if (v22)
  {
    sub_24E612C80(&v21, v23);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_24F922288();
    v13 = v12;
    v14 = *(v3 + 64);
    __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
    sub_24E8ED7D8(v14);
    v15 = sub_24F9223A8();
    (*(v9 + 8))(v11, v8);
    v16 = [a1 traitCollection];
    v17 = v16;
    if (*(v4 + 114) == 1)
    {
      v18 = sub_24F92BF98();

      if (v18)
      {
        sub_24EEE6548(a1, a2, a3, a2, a3);
LABEL_13:
        __swift_destroy_boxed_opaque_existential_1(v23);
        return a2;
      }
    }

    else
    {
    }

    if (*(v4 + 112))
    {
      v19 = a2 - (v13 + v15);
    }

    else
    {
      v19 = a2 - (v13 + v15) - *(v4 + 96);
    }

    sub_24EEE6548(a1, a2, a3, v19, 1.79769313e308);
    goto LABEL_13;
  }

  sub_24E601704(&v21, &qword_27F229780, &unk_24F965BB0);
  sub_24EEE6548(a1, a2, a3, a2, a3);
  return a2;
}

void sub_24EEE6548(void *a1, double a2, double a3, double a4, double a5)
{
  v144 = a5;
  v136 = a2;
  v137 = a3;
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F9229F8();
  MEMORY[0x28223BE20](v12);
  v129 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v119 - v15;
  MEMORY[0x28223BE20](v17);
  v138 = &v119 - v19;
  v148 = v5;
  v20 = *(v5 + 80);
  v21 = *(v20 + 16);
  if (!v21)
  {
    return;
  }

  v125 = v11;
  v126 = v8;
  v22 = 0;
  v23 = 0;
  v142 = (&v163[16] + 8);
  v146 = (v18 + 8);
  v24 = *MEMORY[0x277D22A78];
  v134 = *(MEMORY[0x277D22A78] + 8);
  v135 = v24;
  v128 = (v9 + 8);
  v25 = v20 + 32;
  v123 = v21 - 1;
  v124 = v20 + 32;
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v145 = a1;
  v143 = v16;
  v140 = v21;
  v141 = v20;
  do
  {
    v130 = v29;
    v131 = v26;
    LODWORD(v127) = v23;
    v132 = v27;
    v133 = v28;
    for (i = v25 + 400 * v22; ; i += 400)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        return;
      }

      *&v163[0] = v22;
      sub_24EEE9880(i, v163 + 8);
      if (!*(&v163[4] + 1))
      {
        return;
      }

      v31 = v12;
      v32 = *&v163[0];
      v33 = *v142;
      v34 = v142[1];
      v35 = v142[2];
      v36 = v142[3];
      v37 = v142[4];
      v38 = v142[5];
      v39 = v142[6];
      v40 = v142[7];
      v41 = v142[8];
      v163[0] = *(v163 + 8);
      v163[1] = *(&v163[1] + 8);
      v163[2] = *(&v163[2] + 8);
      v163[3] = *(&v163[3] + 8);
      v163[4] = *(&v163[4] + 8);
      v163[5] = *(&v163[5] + 8);
      v163[6] = *(&v163[6] + 8);
      v163[7] = *(&v163[7] + 8);
      v163[8] = *(&v163[8] + 8);
      v163[9] = *(&v163[9] + 8);
      v163[10] = *(&v163[10] + 8);
      v163[11] = *(&v163[11] + 8);
      v163[12] = *(&v163[12] + 8);
      v163[13] = *(&v163[13] + 8);
      v163[14] = *(&v163[14] + 8);
      v163[15] = *(&v163[15] + 8);
      v163[16] = v33;
      v164[0] = v34;
      v164[1] = v35;
      v165 = v36;
      v166[0] = v37;
      v166[1] = v38;
      v167[0] = v39;
      v167[1] = v40;
      v167[2] = v41;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_80;
      }

      v42 = a4;
      if (*(v148 + 112) == 1)
      {
        v44 = *(v148 + 96);
        v43 = *(v148 + 104);
        if (v44 <= 1)
        {
          if (v44 | v43)
          {
LABEL_17:
            if (v32 + 1 == *(v20 + 16))
            {
              v42 = a4;
            }

            else
            {
              v42 = v136;
            }

            goto LABEL_20;
          }

LABEL_14:
          if (v32)
          {
            v42 = v136;
          }

          else
          {
            v42 = a4;
          }

          goto LABEL_20;
        }

        if (!(v44 ^ 2 | v43))
        {
          goto LABEL_17;
        }

        v42 = v136;
        if (!(v44 ^ 3 | v43))
        {
          goto LABEL_14;
        }
      }

LABEL_20:
      v147 = v22;
      sub_24E94275C(v163, &v157);
      if (v158)
      {
        sub_24E612C80(&v157, v160);
        v46 = v161;
        v45 = v162;
        v47 = __swift_project_boxed_opaque_existential_1(v160, v161);
        v158 = v46;
        v159 = *(v45 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
        v49 = v47;
        a1 = v145;
        (*(*(v46 - 8) + 16))(boxed_opaque_existential_1, v49, v46);
        v156 = MEMORY[0x277D22A30];
        v155 = MEMORY[0x277D839F8];
        v153 = MEMORY[0x277D22A30];
        *&v154 = 0;
        v152 = MEMORY[0x277D839F8];
        *&v151 = 0;
        v50 = v138;
        sub_24F9229E8();
        sub_24F922288();
        v52 = v51;
        v54 = v53;
        (*v146)(v50, v31);
        __swift_destroy_boxed_opaque_existential_1(v160);
      }

      else
      {
        sub_24E601704(&v157, &qword_27F229780, &unk_24F965BB0);
        v54 = v134;
        v52 = v135;
      }

      v55 = [a1 traitCollection];
      v56 = v55;
      v139 = *(v148 + 114);
      if (v139 != 1)
      {

LABEL_29:
        sub_24E615E00(&v163[7] + 8, v160);
        goto LABEL_30;
      }

      v57 = sub_24F92BF98();

      if (v57 & 1) == 0 || v32 || (*(v148 + 112))
      {
        goto LABEL_29;
      }

      v161 = sub_24F922418();
      v162 = MEMORY[0x277D226F0];
      __swift_allocate_boxed_opaque_existential_1(v160);
      sub_24F922408();
LABEL_30:
      v58 = v163[4];
      v59 = __swift_project_boxed_opaque_existential_1(&v163[2] + 1, *&v163[4]);
      v158 = v58;
      v159 = *(*(&v58 + 1) + 8);
      v60 = __swift_allocate_boxed_opaque_existential_1(&v157);
      (*(*(v58 - 8) + 16))(v60, v59, v58);
      sub_24E615E00(v160, &v154);
      sub_24E615E00(&v163[10], &v151);
      v61 = v143;
      sub_24F9229E8();
      a1 = v145;
      v12 = v31;
      sub_24F922288();
      v66 = v65;
      v67 = v62;
      if (fabs(v65) >= COERCE_DOUBLE(1) && fabs(v62) >= COERCE_DOUBLE(1))
      {
        break;
      }

      v22 = v147 + 1;
      (*v146)(v61, v31);
      __swift_destroy_boxed_opaque_existential_1(v160);
      sub_24EEE98B8(v163);
      v20 = v141;
      if (v140 == v22)
      {
        return;
      }
    }

    v68 = v64;
    v69 = v133;
    if ((LOBYTE(v127) & 1) == 0)
    {
      v69 = v63;
    }

    v133 = v69;
    sub_24E94275C(&v163[12] + 8, &v154);
    if (v155)
    {
      sub_24E612C80(&v154, &v157);
      v70 = v158;
      v71 = v159;
      v72 = __swift_project_boxed_opaque_existential_1(&v157, v158);
      v155 = v70;
      v156 = *(v71 + 8);
      v73 = __swift_allocate_boxed_opaque_existential_1(&v154);
      (*(*(v70 - 8) + 16))(v73, v72, v70);
      sub_24E615E00(v166, &v151);
      sub_24E615E00(v167 + 8, v150);
      sub_24F9229E8();
      sub_24F922288();
      v122 = v74;
      v127 = v75;
      v130 = v76;
      sub_24E94275C(&v163[15], &v151);
      if (v152)
      {
        sub_24E612C80(&v151, &v154);
        v77 = v155;
        v78 = v156;
        v79 = __swift_project_boxed_opaque_existential_1(&v154, v155);
        v152 = v77;
        v153 = *(v78 + 8);
        v80 = __swift_allocate_boxed_opaque_existential_1(&v151);
        (*(*(v77 - 8) + 16))(v80, v79, v77);
        sub_24E615E00(&v163[7] + 8, v150);
        sub_24E615E00(&v163[10], &v149);
        v81 = v138;
        sub_24F9229E8();
        sub_24F922288();
        v121 = v82;
        (*v146)(v81, v31);
        __swift_destroy_boxed_opaque_existential_1(&v154);
      }

      else
      {
        sub_24E601704(&v151, &qword_27F229780, &unk_24F965BB0);
        v121 = v135;
      }

      v85 = v165;
      __swift_project_boxed_opaque_existential_1(v164 + 1, v165);
      v86 = v125;
      sub_24E8ED7D8(v85);
      v87 = sub_24F9223A8();
      v88 = *v128;
      v89 = v126;
      (*v128)(v86, v126);
      v90 = v66 + v87;
      sub_24E94275C(v163, &v154);
      v91 = v155;
      sub_24E601704(&v154, &qword_27F229780, &unk_24F965BB0);
      v120 = v88;
      if (v91)
      {
        v92 = *(&v163[6] + 1);
        v119 = COERCE_DOUBLE(__swift_project_boxed_opaque_existential_1(&v163[5], *(&v163[6] + 1)));
        sub_24E8ED7D8(v92);
        v119 = sub_24F9223A8();
        v88(v86, v89);
        v90 = v90 + v52 + v119;
      }

      v93 = v42 - v90;
      sub_24E94275C(&v163[15], &v154);
      v94 = v155;
      if (v155)
      {
        __swift_project_boxed_opaque_existential_1(&v154, v155);
        v94 = sub_24F9221E8();
        __swift_destroy_boxed_opaque_existential_1(&v154);
        v95 = v121;
        v96 = v94 & (v121 <= v93);
      }

      else
      {
        sub_24E601704(&v154, &qword_27F229780, &unk_24F965BB0);
        v96 = 0;
      }

      v97 = v122;
      v98 = [a1 traitCollection];
      v99 = sub_24F92BF98();

      if (v97 <= v93 || ((v99 | v94) & 1) == 0)
      {
        v100 = v165;
        __swift_project_boxed_opaque_existential_1(v164 + 1, v165);
        v101 = v125;
        sub_24E8ED7D8(v100);
        v102 = sub_24F9223A8();
        v120(v101, v126);
        (*v146)(v129, v31);
        v84 = v97 + v102;
        goto LABEL_53;
      }

      if (v96)
      {
        goto LABEL_52;
      }

      if (v99)
      {
        (*v146)(v129, v31);
        v83 = 0;
        v67 = v67 - v68;
        goto LABEL_76;
      }

      sub_24E94275C(&v163[15], &v154);
      if (v155)
      {
        sub_24E601704(&v154, &qword_27F229780, &unk_24F965BB0);
LABEL_52:
        v103 = v165;
        __swift_project_boxed_opaque_existential_1(v164 + 1, v165);
        v104 = v125;
        sub_24E8ED7D8(v103);
        v105 = sub_24F9223A8();
        v120(v104, v126);
        (*v146)(v129, v31);
        v84 = v121 + v105;
LABEL_53:
        v83 = 1;
        v130 = 0.0;
        v127 = 0.0;
      }

      else
      {
        (*v146)(v129, v31);
        sub_24E601704(&v154, &qword_27F229780, &unk_24F965BB0);
        v83 = 1;
        v130 = 0.0;
        v127 = 0.0;
LABEL_76:
        v84 = 0.0;
      }

      __swift_destroy_boxed_opaque_existential_1(&v157);
      v61 = v143;
    }

    else
    {
      sub_24E601704(&v154, &qword_27F229780, &unk_24F965BB0);
      v83 = 1;
      v130 = 0.0;
      v127 = 0.0;
      v84 = 0.0;
    }

    v106 = [a1 traitCollection];
    v107 = v106;
    if (v139)
    {
      v108 = sub_24F92BF98();

      if (v108)
      {
        v109 = v131;
        if (v131 <= v66)
        {
          v109 = v66;
        }

        if (v109 > v52 + v84)
        {
          v110 = v109;
        }

        else
        {
          v110 = v52 + v84;
        }

        (*v146)(v61, v31);
        __swift_destroy_boxed_opaque_existential_1(v160);
        v111 = v54 + v67;
        goto LABEL_70;
      }
    }

    else
    {
    }

    v112 = *(&v163[6] + 1);
    __swift_project_boxed_opaque_existential_1(&v163[5], *(&v163[6] + 1));
    v113 = v125;
    sub_24E8ED7D8(v112);
    v114 = sub_24F9223A8();
    (*v128)(v113, v126);
    (*v146)(v61, v31);
    v115 = v84 + v66 + v52 + v114;
    v110 = v131;
    if (v131 <= v115)
    {
      v110 = v115;
    }

    if (v54 > v67)
    {
      v111 = v54;
    }

    else
    {
      v111 = v67;
    }

    __swift_destroy_boxed_opaque_existential_1(v160);
LABEL_70:
    v20 = v141;
    v25 = v124;
    v116 = v147;
    v22 = v147 + 1;
    v117 = v132 + v127 + v111;
    if (v83)
    {
      v118 = v68;
    }

    else
    {
      v118 = v130;
    }

    sub_24EEE98B8(v163);
    v29 = v118;
    v27 = v117;
    v23 = 1;
    v26 = v110;
    v28 = v133;
  }

  while (v123 != v116);
}

double sub_24EEE7348(void *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = v9;
  v17 = sub_24F92CDB8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v9 + 64);
  __swift_project_boxed_opaque_existential_1((v10 + 40), v21);
  sub_24E8ED7D8(v21);
  sub_24F9223A8();
  (*(v18 + 8))(v20, v17);
  v22 = [a1 traitCollection];
  v23 = v22;
  if (*(v10 + 114) != 1)
  {

    goto LABEL_5;
  }

  v24 = sub_24F92BF98();

  if ((v24 & 1) == 0)
  {
LABEL_5:
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    MinX = CGRectGetMinX(v32);
    v33.origin.x = a6;
    v33.origin.y = a7;
    v33.size.width = a8;
    v33.size.height = a9;
    CGRectGetMinY(v33);
    v34.origin.x = a6;
    v34.origin.y = a7;
    v34.size.width = a8;
    v34.size.height = a9;
    CGRectGetWidth(v34);
    v35.origin.x = a6;
    v35.origin.y = a7;
    v35.size.width = a8;
    v35.size.height = a9;
    CGRectGetHeight(v35);
    return MinX;
  }

  v28.origin.x = a6;
  v28.origin.y = a7;
  v28.size.width = a8;
  v28.size.height = a9;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetMinY(v29);
  *&v27[1] = a3;
  v30.origin.x = a6;
  v30.origin.y = a7;
  v30.size.width = a8;
  v30.size.height = a9;
  CGRectGetWidth(v30);
  v31.origin.x = a6;
  v31.origin.y = a7;
  v31.size.width = a8;
  v31.size.height = a9;
  CGRectGetHeight(v31);
  return MinX;
}

void sub_24EEE75B4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10)
{
  v152 = a8;
  v153 = a9;
  v151 = a7;
  *&v131[1] = a6;
  v144 = sub_24F922C28();
  v16 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_24F9221D8();
  v18 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v132 = v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v138 = v131 - v21;
  MEMORY[0x28223BE20](v22);
  v141 = v131 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v131 - v25;
  MEMORY[0x28223BE20](v27);
  v142 = v131 - v28;
  v149 = sub_24F92CDB8();
  v29 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v148 = v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = a2;
  v137 = a3;
  v186.origin.x = a2;
  v186.origin.y = a3;
  v186.size.width = a4;
  v186.size.height = a5;
  MinY = CGRectGetMinY(v186);
  v170 = v10;
  v31 = *(*(v10 + 80) + 16);

  if (!v31)
  {
LABEL_73:

    return;
  }

  v33 = 0.0;
  v150 = a10;
  v145 = (&v179[16] + 8);
  v34 = v32 + 32;
  v147 = (v29 + 8);
  v35 = *(MEMORY[0x277D22A78] + 8);
  v139 = *MEMORY[0x277D22A78];
  v36 = *(MEMORY[0x277D22A78] + 24);
  v134 = *(MEMORY[0x277D22A78] + 16);
  v135 = v35;
  v133 = v36;
  v157 = (v18 + 8);
  v140 = (v16 + 8);
  v37 = MEMORY[0x277D84F90];
  v156 = a5;
  v159 = a4;
  v146 = v32;
  while (*&v33 < v31)
  {
    *v179 = v33;
    v163 = v34;
    sub_24EEE9880(v34, v179 + 8);
    if (!*(&v179[4] + 1))
    {
      goto LABEL_73;
    }

    v38 = *&v179[0];
    v39 = *v145;
    v40 = v145[1];
    v41 = v145[2];
    v42 = v145[3];
    v43 = v145[4];
    v44 = v145[5];
    v45 = v145[6];
    v46 = v145[7];
    v47 = v145[8];
    v179[0] = *(v179 + 8);
    v179[1] = *(&v179[1] + 8);
    v179[2] = *(&v179[2] + 8);
    v179[3] = *(&v179[3] + 8);
    v179[4] = *(&v179[4] + 8);
    v179[5] = *(&v179[5] + 8);
    v179[6] = *(&v179[6] + 8);
    v179[7] = *(&v179[7] + 8);
    v179[8] = *(&v179[8] + 8);
    v179[9] = *(&v179[9] + 8);
    v179[10] = *(&v179[10] + 8);
    v179[11] = *(&v179[11] + 8);
    v179[12] = *(&v179[12] + 8);
    v179[13] = *(&v179[13] + 8);
    v179[14] = *(&v179[14] + 8);
    v179[15] = *(&v179[15] + 8);
    v179[16] = v39;
    v180[0] = v40;
    v180[1] = v41;
    v181 = v42;
    v182 = v43;
    v183 = v44;
    v184[0] = v45;
    v184[1] = v46;
    v185 = v47;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_75;
    }

    v48 = v151;
    v49 = v152;
    v50 = v153;
    v51 = v150;
    if (*(v170 + 112) == 1)
    {
      v52 = *(v170 + 96);
      v53 = *(v170 + 104);
      if (v52 <= 1)
      {
        if (!(v52 | v53))
        {
          goto LABEL_14;
        }
      }

      else if (v52 ^ 2 | v53)
      {
        if (!(v52 ^ 3 | v53))
        {
LABEL_14:
          v48 = v151;
          v49 = v152;
          v50 = v153;
          v51 = v150;
          if (!v38)
          {
            goto LABEL_16;
          }
        }

LABEL_15:
        v48 = v136;
        v49 = v137;
        v50 = a4;
        v51 = a5;
        goto LABEL_16;
      }

      v48 = v151;
      v49 = v152;
      v50 = v153;
      v51 = v150;
      if (v38 + 1 != v31)
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v162 = v37;
    sub_24E94275C(v179, &v175);
    if (v176)
    {
      sub_24E612C80(&v175, v177);
      __swift_project_boxed_opaque_existential_1(v177, v178);
      sub_24F922288();
      v166 = v54;
      v154 = v56;
      v155 = v55;
      v57 = *(&v179[6] + 1);
      __swift_project_boxed_opaque_existential_1(&v179[5], *(&v179[6] + 1));
      v58 = v148;
      sub_24E8ED7D8(v57);
      v169 = sub_24F9223A8();
      (*v147)(v58, v149);
      __swift_destroy_boxed_opaque_existential_1(v177);
    }

    else
    {
      sub_24E601704(&v175, &qword_27F229780, &unk_24F965BB0);
      v169 = 0.0;
      v166 = v135;
      v154 = v133;
      v155 = v134;
    }

    v187.origin.x = v48;
    v187.origin.y = v49;
    v187.size.width = v50;
    v187.size.height = v51;
    CGRectGetMinX(v187);
    v188.origin.x = v48;
    v188.origin.y = v49;
    v188.size.width = v50;
    v188.size.height = v51;
    CGRectGetMinY(v188);
    v189.origin.x = v48;
    v189.origin.y = v49;
    v189.size.width = v50;
    v189.size.height = v51;
    CGRectGetWidth(v189);
    v190.origin.x = v48;
    v190.origin.y = v49;
    v190.size.width = v50;
    v190.size.height = v51;
    CGRectGetHeight(v190);
    v59 = [a1 traitCollection];
    v60 = v59;
    v61 = *(v170 + 114);
    if (v61 == 1)
    {
      v62 = sub_24F92BF98();

      if (v62)
      {
        v191.origin.x = v48;
        v191.origin.y = v49;
        v191.size.width = v50;
        v191.size.height = v51;
        CGRectGetMinX(v191);
        v192.origin.x = v48;
        v192.origin.y = v49;
        v192.size.width = v50;
        v192.size.height = v51;
        CGRectGetMinY(v192);
        v193.origin.x = v48;
        v193.origin.y = v49;
        v193.size.width = v50;
        v193.size.height = v51;
        CGRectGetWidth(v193);
        v194.origin.x = v48;
        v194.origin.y = v49;
        v194.size.width = v50;
        v194.size.height = v51;
        CGRectGetHeight(v194);
      }
    }

    else
    {
    }

    v172 = v48;
    __swift_project_boxed_opaque_existential_1(&v179[2] + 1, *&v179[4]);
    sub_24F922288();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    __swift_project_boxed_opaque_existential_1(&v179[7] + 1, *&v179[9]);
    v167 = v66;
    v168 = v68;
    v160 = v70;
    sub_24F9223C8();
    v71 = *(v170 + 88);
    v72 = [a1 traitCollection];
    v73 = v72;
    v171 = v49;
    v161 = v64;
    if (v61)
    {
      v74 = sub_24F92BF98();

      if (v71)
      {
        if (v74)
        {
          v195.origin.y = v171;
          v75 = v172;
          v195.origin.x = v172;
          v195.size.width = v50;
          v195.size.height = v51;
          floor(CGRectGetMinX(v195));
          v196.origin.x = v75;
          v196.origin.y = v171;
          v196.size.width = v50;
          v196.size.height = v51;
          CGRectGetWidth(v196);
          v197.origin.x = v75;
          v197.origin.y = v171;
          v197.size.width = v50;
          v197.size.height = v51;
          floor(CGRectGetMinX(v197));
          v198.origin.x = v75;
          v198.origin.y = v171;
          v198.size.width = v50;
          v198.size.height = v51;
          CGRectGetWidth(v198);
          goto LABEL_32;
        }

LABEL_28:
        v76 = v172;
        v199.origin.x = v172;
        v199.origin.y = v49;
        v199.size.width = v50;
        v199.size.height = v51;
        floor(CGRectGetMinX(v199));
        v200.origin.x = v76;
        v200.origin.y = v49;
        v200.size.width = v50;
        v200.size.height = v51;
        CGRectGetWidth(v200);
        goto LABEL_32;
      }

      if (v74)
      {
        v201.origin.x = v172;
        v201.origin.y = v49;
        v201.size.width = v50;
        v201.size.height = v51;
        CGRectGetMinX(v201);
        v202.origin.x = v172;
        v202.origin.y = v49;
        v202.size.width = v50;
        v202.size.height = v51;
        CGRectGetMinX(v202);
        goto LABEL_32;
      }
    }

    else
    {

      if (v71)
      {
        goto LABEL_28;
      }
    }

    v203.origin.y = v171;
    v77 = v172;
    v203.origin.x = v172;
    v203.size.width = v50;
    v203.size.height = v51;
    CGRectGetMinX(v203);
    v204.origin.x = v77;
    v204.origin.y = v171;
    v204.size.width = v50;
    v204.size.height = v51;
    CGRectGetMinX(v204);
LABEL_32:
    v165 = v51;
    v169 = v50;
    sub_24E94275C(v179, &v175);
    if (v176)
    {
      sub_24E612C80(&v175, v177);
      v78 = v142;
      sub_24F922138();
      __swift_project_boxed_opaque_existential_1(v177, v178);
      sub_24F9221A8();
      sub_24F922158();
      sub_24F92C1D8();
      sub_24F922228();
      (*v157)(v78, v158);
      __swift_destroy_boxed_opaque_existential_1(v177);
    }

    else
    {
      sub_24E601704(&v175, &qword_27F229780, &unk_24F965BB0);
    }

    sub_24F922138();
    __swift_project_boxed_opaque_existential_1(&v179[2] + 1, *&v179[4]);
    sub_24F9221A8();
    sub_24F922158();
    v79 = v169;
    sub_24F92C1D8();
    sub_24F922228();
    sub_24F9221A8();
    v81 = v80;
    sub_24F922158();
    v83 = v82;
    __swift_project_boxed_opaque_existential_1(&v179[10], *(&v179[11] + 1));
    sub_24F922398();
    v85 = v84;
    __swift_project_boxed_opaque_existential_1(&v179[2] + 1, *&v179[4]);
    sub_24F922218();
    v86 = CGRectGetMinY(v205);
    v37 = v162;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_24E617EB4(0, *(v37 + 2) + 1, 1, v37);
    }

    v88 = *(v37 + 2);
    v87 = *(v37 + 3);
    a5 = v156;
    if (v88 >= v87 >> 1)
    {
      v37 = sub_24E617EB4((v87 > 1), v88 + 1, 1, v37);
    }

    MinY = v81 + v83 + v85;
    v89 = v168 + v86;
    *(v37 + 2) = v88 + 1;
    *&v37[8 * v88 + 32] = v89;
    sub_24E94275C(&v179[12] + 8, &v175);
    if (v176)
    {
      sub_24E612C80(&v175, v177);
      __swift_project_boxed_opaque_existential_1(v177, v178);
      sub_24F922288();
      v91 = v90;
      v92 = v181;
      __swift_project_boxed_opaque_existential_1(v180 + 1, v181);
      v93 = v148;
      sub_24E8ED7D8(v92);
      v94 = sub_24F9223A8();
      (*v147)(v93, v149);
      sub_24E94275C(&v179[15], &v173);
      if (v174)
      {
        sub_24E612C80(&v173, &v175);
        __swift_project_boxed_opaque_existential_1(&v175, v176);
        sub_24F922288();
        v96 = v95;
        __swift_destroy_boxed_opaque_existential_1(&v175);
      }

      else
      {
        sub_24E601704(&v173, &qword_27F229780, &unk_24F965BB0);
        v96 = v139;
      }

      v168 = v33;
      sub_24F9221A8();
      v98 = v97;
      sub_24F922158();
      v100 = v79 - (v98 + v99) - v94;
      sub_24E94275C(&v179[15], &v175);
      v101 = v37;
      if (v176)
      {
        __swift_project_boxed_opaque_existential_1(&v175, v176);
        v102 = sub_24F9221E8();
        __swift_destroy_boxed_opaque_existential_1(&v175);
        v103 = v102 & (v96 <= v100);
      }

      else
      {
        sub_24E601704(&v175, &qword_27F229780, &unk_24F965BB0);
        v103 = 0;
        v102 = 0;
      }

      v104 = [a1 traitCollection];
      v105 = sub_24F92BF98();

      sub_24F9221A8();
      sub_24F922158();
      sub_24F9221A8();
      v106 = v143;
      sub_24F9221C8();
      sub_24F922BE8();
      (*v140)(v106, v144);
      if (v91 > v100 && ((v105 | v102) & 1) != 0)
      {
        a4 = v159;
        v37 = v101;
        v33 = v168;
        v107 = v172;
        if (v103)
        {
          goto LABEL_59;
        }

        if (v105)
        {
          v109 = v136;
          v108 = v137;
          v206.origin.x = v136;
          v206.origin.y = v137;
          v206.size.width = v159;
          v206.size.height = a5;
          CGRectGetWidth(v206);
          sub_24F9221A8();
          v207.origin.x = v109;
          v207.origin.y = v108;
          v207.size.width = a4;
          v207.size.height = a5;
          CGRectGetHeight(v207);
          __swift_project_boxed_opaque_existential_1(v177, v178);
          sub_24F922288();
          v111 = v110;
          sub_24F9221A8();
          __swift_project_boxed_opaque_existential_1(&v182, *(&v183 + 1));
          sub_24F9223C8();
          v167 = v111;
          sub_24F922138();
          __swift_project_boxed_opaque_existential_1(v177, v178);
          sub_24F9221A8();
          sub_24F922158();
          sub_24F92C1D8();
          sub_24F922228();
          sub_24E94275C(&v179[15], &v175);
          if (v176)
          {
            __swift_project_boxed_opaque_existential_1(&v175, v176);
            sub_24F922248();
            __swift_destroy_boxed_opaque_existential_1(&v175);
          }

          else
          {
            sub_24E601704(&v175, &qword_27F229780, &unk_24F965BB0);
          }

          __swift_project_boxed_opaque_existential_1(v177, v178);
          sub_24F922248();
          sub_24F9221A8();
          v117 = v116;
          sub_24F922158();
          v119 = v118;
          __swift_project_boxed_opaque_existential_1(v184 + 1, v185);
          v120 = v167;
          sub_24F922398();
          v122 = v121;
          __swift_project_boxed_opaque_existential_1(v177, v178);
          sub_24F922218();
          v123 = CGRectGetMinY(v210);
          v125 = *(v37 + 2);
          v124 = *(v37 + 3);
          *&v172 = v125 + 1;
          if (v125 >= v124 >> 1)
          {
            v129 = v123;
            v130 = sub_24E617EB4((v124 > 1), v125 + 1, 1, v37);
            v123 = v129;
            a4 = v159;
            v37 = v130;
          }

          a5 = v156;
          MinY = v117 + v119 + v122;
          v126 = v120 + v123;
          v127 = v158;
          v128 = *v157;
          (*v157)(v132, v158);
          v128(v26, v127);
          *(v37 + 2) = v172;
          *&v37[8 * v125 + 32] = v126;
          goto LABEL_67;
        }

        sub_24E94275C(&v179[15], &v175);
        v114 = v176;
        sub_24E601704(&v175, &qword_27F229780, &unk_24F965BB0);
        if (v114)
        {
LABEL_59:
          v209.origin.x = v107;
          v209.origin.y = v171;
          v209.size.width = v169;
          v209.size.height = v165;
          CGRectGetHeight(v209);
          __swift_project_boxed_opaque_existential_1(v177, v178);
          sub_24F922288();
          sub_24F922138();
          sub_24E94275C(&v179[15], &v175);
          if (v176)
          {
            __swift_project_boxed_opaque_existential_1(&v175, v176);
            sub_24F9221A8();
            sub_24F922158();
            sub_24F92C1D8();
            sub_24F922228();
            __swift_destroy_boxed_opaque_existential_1(&v175);
          }

          else
          {
            sub_24E601704(&v175, &qword_27F229780, &unk_24F965BB0);
          }

          sub_24E94275C(&v179[15], &v175);
          a5 = v156;
          a4 = v159;
          if (v176)
          {
            __swift_project_boxed_opaque_existential_1(&v175, v176);
            sub_24F922248();
            __swift_destroy_boxed_opaque_existential_1(&v175);
          }

          else
          {
            sub_24E601704(&v175, &qword_27F229780, &unk_24F965BB0);
          }

          __swift_project_boxed_opaque_existential_1(v177, v178);
          sub_24F922248();
          v112 = *v157;
          v113 = v138;
          goto LABEL_66;
        }

        (*v157)(v26, v158);
      }

      else
      {
        v208.origin.x = v172;
        v208.origin.y = v171;
        v208.size.width = v169;
        v208.size.height = v165;
        CGRectGetHeight(v208);
        __swift_project_boxed_opaque_existential_1(v177, v178);
        sub_24F922288();
        sub_24F922138();
        __swift_project_boxed_opaque_existential_1(v177, v178);
        sub_24F9221A8();
        sub_24F922158();
        sub_24F92C1D8();
        sub_24F922228();
        sub_24E94275C(&v179[15], &v175);
        a4 = v159;
        v37 = v101;
        if (v176)
        {
          __swift_project_boxed_opaque_existential_1(&v175, v176);
          sub_24F922248();
          __swift_destroy_boxed_opaque_existential_1(&v175);
        }

        else
        {
          sub_24E601704(&v175, &qword_27F229780, &unk_24F965BB0);
        }

        v33 = v168;
        a5 = v156;
        __swift_project_boxed_opaque_existential_1(v177, v178);
        sub_24F922248();
        v112 = *v157;
        v113 = v141;
LABEL_66:
        v115 = v158;
        v112(v113, v158);
        v112(v26, v115);
      }

LABEL_67:
      __swift_destroy_boxed_opaque_existential_1(v177);
      goto LABEL_4;
    }

    (*v157)(v26, v158);
    sub_24E601704(&v175, &qword_27F229780, &unk_24F965BB0);
    a4 = v159;
LABEL_4:
    ++*&v33;
    sub_24EEE98B8(v179);
    v31 = *(v146 + 16);
    v34 = v163 + 400;
    if (*&v33 == v31)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
}

void sub_24EEE8ABC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v8 = v7;
  v14 = sub_24F92CDB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C(v7, &v49);
  if (!v50)
  {
    sub_24E601704(&v49, &qword_27F229780, &unk_24F965BB0);
    return;
  }

  sub_24E612C80(&v49, v54);
  if (*(v7 + 112) == 1)
  {
    v18 = [a1 traitCollection];
    v19 = v18;
    if (*(v8 + 114) == 1)
    {
      v20 = sub_24F92BF98();

      if (v20)
      {
        v21 = *(v8 + 64);
        __swift_project_boxed_opaque_existential_1((v8 + 40), v21);
        sub_24E8ED7D8(v21);
        sub_24F9223A8();
        (*(v15 + 8))(v17, v14);
        v55.origin.x = a2;
        v55.origin.y = a3;
        v55.size.width = a4;
        v55.size.height = a5;
        CGRectGetMinX(v55);
        v56.origin.x = a2;
        v56.origin.y = a3;
        v56.size.width = a4;
        v56.size.height = a5;
        CGRectGetMaxY(v56);
        sub_24F92C1D8();
        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  if (*(v8 + 113))
  {
    if ((*(v8 + 112) & 1) == 0)
    {
      v22 = [a1 traitCollection];
      v23 = sub_24F92BF88();

      v24 = a2;
      v25 = a3;
      v26 = a4;
      v27 = a5;
      if (v23)
      {
        CGRectGetMinX(*&v24);
        v28 = *(v8 + 96);
        v29 = *(v8 + 104);
        if (*(v8 + 112) != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        CGRectGetMaxX(*&v24);
        v28 = *(v8 + 96);
        v29 = *(v8 + 104);
        if ((*(v8 + 112) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v44 = v28;
      goto LABEL_25;
    }
  }

  else
  {
    v30 = *(v8 + 80);
    if (*(v30 + 16))
    {
      sub_24E615E00(v30 + 72, &v49);
      v31 = *(v8 + 64);
      __swift_project_boxed_opaque_existential_1((v8 + 40), v31);
      sub_24E8ED7D8(v31);
      sub_24F9223A8();
      (*(v15 + 8))(v17, v14);
      v32 = [a1 traitCollection];
      v33 = sub_24F92BF88();

      __swift_project_boxed_opaque_existential_1(&v49, v50);
      sub_24F922218();
      if (v33)
      {
        CGRectGetMinX(*&v34);
      }

      else
      {
        CGRectGetMaxX(*&v34);
      }

      __swift_destroy_boxed_opaque_existential_1(&v49);
      goto LABEL_21;
    }
  }

  v38 = [a1 traitCollection];
  v39 = sub_24F92BF88();

  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  if (v39)
  {
    CGRectGetMinX(*&v40);
  }

  else
  {
    CGRectGetMaxX(*&v40);
  }

LABEL_21:
  v29 = *(v8 + 104);
  if (*(v8 + 112) != 1)
  {
    goto LABEL_27;
  }

  v44 = *(v8 + 96);
LABEL_25:
  if (v44 <= 2)
  {
    if (__PAIR128__(v29, v44) >= 2)
    {
      v46 = *(v8 + 80);
      v47 = *(v46 + 16);
      if (v47)
      {
        sub_24E615E00(v46 + 400 * v47 - 328, &v49);
        __swift_project_boxed_opaque_existential_1(&v49, v50);
        sub_24F922218();
        CGRectGetMidY(v58);
        __swift_destroy_boxed_opaque_existential_1(&v49);
      }
    }

    goto LABEL_27;
  }

  if (!(v44 ^ 3 | v29))
  {
    v45 = *(v8 + 80);
    if (*(v45 + 16))
    {
      sub_24EEE9880(v45 + 32, &v49);
      __swift_project_boxed_opaque_existential_1(v51, v52);
      if (sub_24F9221E8())
      {
        __swift_project_boxed_opaque_existential_1(v51, v52);
        sub_24F922218();
        CGRectGetMidY(v57);
      }

      else
      {
        v62.origin.x = a2;
        v62.origin.y = a3;
        v62.size.width = a4;
        v62.size.height = a5;
        CGRectGetMidY(v62);
      }

      sub_24EEE98B8(&v49);
    }

    goto LABEL_27;
  }

  v48 = *(v8 + 80);
  if (*(v48 + 16) != 2)
  {
LABEL_27:
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v54);
    return;
  }

  sub_24E615E00(v48 + 472, &v49);
  __swift_project_boxed_opaque_existential_1(&v49, v50);
  sub_24F922218();
  CGRectGetMaxY(v59);
  if (*(v48 + 16))
  {
    sub_24E615E00(v48 + 72, v53);
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    sub_24F922218();
    CGRectGetMinY(v60);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(&v49);
    if (*(v48 + 16))
    {
      sub_24E615E00(v48 + 72, &v49);
      __swift_project_boxed_opaque_existential_1(&v49, v50);
      sub_24F922218();
      CGRectGetMinY(v61);
      __swift_destroy_boxed_opaque_existential_1(&v49);
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t TitleHeaderLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24F922C28();
  MEMORY[0x28223BE20](v12 - 8);
  sub_24EEE5E30(&v31);
  if (v32)
  {
    sub_24E612C80(&v31, v33);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_24F922288();
    v30 = v13;
    v15 = v14;
    v16 = a2;
    sub_24EEE7348(a1, v13, v14, v17, v18, a2, a3, a4, a5);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v15 = *(MEMORY[0x277D22A78] + 8);
    v30 = *MEMORY[0x277D22A78];
    sub_24E601704(&v31, &qword_27F229780, &unk_24F965BB0);
    v16 = a2;
  }

  sub_24F92C1D8();
  v23 = v22;
  v24 = *(v5 + 104);
  if (*(v5 + 112))
  {
    v24 = 0.0;
  }

  sub_24EEE75B4(a1, v16, a3, a4, a5, v15 + v24, v23, v19, v20, v21);
  v26 = v25;
  sub_24EEE8ABC(a1, v16, a3, a4, a5, v30, v15);
  sub_24ED6EC84(v26);
  v27 = [a1 traitCollection];
  v28 = v27;
  if (*(v6 + 114) == 1)
  {
    sub_24F92BF98();
  }

  else
  {
  }

  sub_24ED78F74(v26);

  sub_24F922C08();
  return sub_24F922188();
}

BOOL _s12GameStoreKit17TitleHeaderLayoutV26AccessoryVerticalAlignmentO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v3 <= 1uLL)
    {
      if (*&v3 | *&v2)
      {
        if (*(a2 + 16) && !(*&v5 ^ 1 | *&v4))
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 | *&v4))
      {
        return 1;
      }
    }

    else if (*&v3 ^ 2 | *&v2)
    {
      if (*&v3 ^ 3 | *&v2)
      {
        if (*(a2 + 16) && __PAIR128__(*&v4, *&v5) >= 4)
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 ^ 3 | *&v4))
      {
        return 1;
      }
    }

    else if (*(a2 + 16) && !(*&v5 ^ 2 | *&v4))
    {
      return 1;
    }
  }

  else if ((*(a2 + 16) & 1) == 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return 0;
}

unint64_t sub_24EEE95BC()
{
  result = qword_27F2332A8;
  if (!qword_27F2332A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2332A8);
  }

  return result;
}

unint64_t sub_24EEE9614()
{
  result = qword_27F2332B0;
  if (!qword_27F2332B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2332B0);
  }

  return result;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24EEE9694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 115))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EEE96DC(uint64_t result, int a2, int a3)
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
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 115) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 115) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EEE9750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EEE9798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
      *(result + 400) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_24EEE98F4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v25 = a4;
  v7 = sub_24F929758();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C2F8();
  if (!v11)
  {
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    v18 = v21;
    v22 = a2;
    goto LABEL_8;
  }

  v24 = a1;
  v12 = [a3 toDictionary];
  if (!v12 || (v13 = v12, v14 = sub_24F92AE38(), v13, sub_24E9E1CDC(v14), v16 = v15, , !v16))
  {

    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    v18 = v19;
    v20 = a3;
LABEL_8:
    sub_24F92A828();
    swift_willThrow();
    return v18;
  }

  sub_24F929728();
  __swift_project_boxed_opaque_existential_1((v25 + OBJC_IVAR____TtC12GameStoreKit20JSStoreMetricsObject_metricsRecorder), *(v25 + OBJC_IVAR____TtC12GameStoreKit20JSStoreMetricsObject_metricsRecorder + 24));

  sub_24F9299F8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v18 = result;
    (*(v8 + 8))(v10, v7);

    return v18;
  }

  __break(1u);
  return result;
}

char *sub_24EEE9C70(void *a1, void *a2, __n128 a3)
{
  v6 = sub_24F92AC68();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v10 = MEMORY[0x25304F260]();
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 2) = a2;
    *(v12 + 3) = v11;
    v13 = a1;
    v14 = a2;

    sub_24F92AC48();
    if (v3)
    {
    }

    else
    {
      v12 = sub_24F92AC58();

      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    v12 = "toreMetricsObject";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_24EEE9E54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v24 = a1;
  v25 = a5;
  v22 = a3;
  v8 = sub_24F9281B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC12GameStoreKit20JSStoreMetricsObject_metricsRecorder), *(a4 + OBJC_IVAR____TtC12GameStoreKit20JSStoreMetricsObject_metricsRecorder + 24));
  v23 = sub_24F9299E8();
  v12 = *(v9 + 16);
  v12(v11, a2, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = v13 + v10;
  v21 = swift_allocObject();
  v15 = *(v9 + 32);
  v15(v21 + v13, v11, v8);
  v12(v11, v22, v8);
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v15(v17 + v13, v11, v8);
  v18 = v24;
  *(v17 + v16) = v24;
  v26[3] = sub_24F9298F8();
  v26[4] = MEMORY[0x277D22078];
  v26[0] = v25;
  v19 = v18;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

void sub_24EEEA098(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  *(v2 + 56) = MEMORY[0x277D83B88];
  *(v2 + 32) = v1;
  v3 = sub_24F9281A8();
}

void sub_24EEEA2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24F92A868();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  swift_getErrorValue();
  sub_24F92CFE8();
  sub_24F92A808();
  sub_24F92A7B8();
  (*(v4 + 8))(v6, v3);
  v8 = v14;
  v9 = __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v7 + 56) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v11 = sub_24F9281A8();
}

id sub_24EEEA744(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSStoreMetricsObject();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24EEEA7C8()
{

  return swift_deallocObject();
}

uint64_t sub_24EEEA824(__n128 a1)
{
  v2 = sub_24F9281B8();
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void sub_24EEEA8AC(uint64_t *a1, __n128 a2)
{
  sub_24F9281B8();

  sub_24EEEA098(a1);
}

uint64_t sub_24EEEA91C(__n128 a1)
{
  v2 = sub_24F9281B8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void sub_24EEEA9B8(uint64_t a1, __n128 a2)
{
  v4 = *(sub_24F9281B8() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EEEA2F0(a1, v2 + v5, v6);
}

void *GuidedSearchTokenToggleAction.__allocating_init(title:targetToken:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = sub_24F91F6B8();
  v34[0] = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *a5;
  v17 = (v15 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *v17 = a3;
  v17[1] = a4;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_searchOrigin) = v16;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v18 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v19 = sub_24F928AD8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v15 + v18, a6, v19);
  v21 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v15 + v21, 1, 1, v22);
  v23 = (v15 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  v24 = v15 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v25 = v36;
    *v24 = v35;
    *(v24 + 1) = v25;
    *(v24 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v12;
    v28 = a6;
    v29 = a1;
    v30 = a2;
    v32 = v31;
    (*(v34[0] + 8))(v14, v27);
    v34[1] = v26;
    v34[2] = v32;
    a2 = v30;
    a1 = v29;
    a6 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v20 + 8))(a6, v19);
  sub_24E601704(v38, &qword_27F235830, &qword_24F93B8C0);
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = 0;
  v15[5] = 0;
  return v15;
}

void *GuidedSearchTokenToggleAction.init(title:targetToken:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v7 = v6;
  v34 = a1;
  v35 = a2;
  v33 = sub_24F91F6B8();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *a5;
  v21 = (v7 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *v21 = a3;
  v21[1] = a4;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_searchOrigin) = v19;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  (*(v18 + 16))(v20, a6, v17);
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = (v7 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E65E064(v44, &v38);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v32 + 8))(v13, v33);
    v36 = v24;
    v37 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v18 + 8))(a6, v17);
  sub_24E601704(v44, &qword_27F235830, &qword_24F93B8C0);
  v27 = v7 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v43;
  v28 = v42;
  *v27 = v41;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v16, v7 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v29 = v35;
  v7[2] = v34;
  v7[3] = v29;
  v7[4] = 0;
  v7[5] = 0;
  (*(v18 + 32))(v7 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v7;
}

void (**GuidedSearchTokenToggleAction.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v4 = v2;
  v48 = a2;
  v6 = *v4;
  v43 = v3;
  v44 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x28223BE20](v7);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v47 = a1;
  sub_24F928398();
  v20 = sub_24F928348();
  v22 = v21;
  v23 = v19;
  v24 = *(v11 + 8);
  v49 = v10;
  v24(v23, v10);
  if (!v22)
  {
    v32 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v33 = 0x6F54746567726174;
    v34 = v44;
    v33[1] = 0xEB000000006E656BLL;
    v33[2] = v34;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    (*(v46 + 8))(v48, v45);
    v24(v47, v49);
    goto LABEL_5;
  }

  v25 = v24;
  v26 = (v4 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *v26 = v20;
  v26[1] = v22;
  v27 = v47;
  sub_24F928398();
  sub_24EC55680();
  sub_24F928248();
  v25(v16, v49);
  if (v50 == 15)
  {
    v28 = v27;
    v29 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    strcpy(v30, "searchOrigin");
    v31 = v44;
    v30[13] = 0;
    *(v30 + 7) = -5120;
    *(v30 + 2) = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    (*(v46 + 8))(v48, v45);
    v25(v28, v49);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v44 = v25;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_searchOrigin) = v50;
  (*(v11 + 16))(v13, v27, v49);
  v36 = v45;
  v35 = v46;
  v37 = v42;
  v38 = v48;
  (*(v46 + 16))(v42, v48, v45);
  v39 = v43;
  v40 = Action.init(deserializing:using:)(v13, v37);
  if (!v39)
  {
    v4 = v40;
  }

  (*(v35 + 8))(v38, v36);
  v44(v27, v49);
  return v4;
}

uint64_t GuidedSearchTokenToggleAction.targetToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);

  return v1;
}

uint64_t GuidedSearchTokenToggleAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t GuidedSearchTokenToggleAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidedSearchTokenToggleAction(uint64_t a1)
{
  result = qword_27F2332C0;
  if (!qword_27F2332C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NewPencilPairingCardTrigger.__allocating_init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 56) = 1;
  *(v4 + 80) = 1;
  *(v4 + 64) = v5;
  *(v4 + 72) = v6;
  sub_24E612C80(a2, v4 + 16);
  return v4;
}

uint64_t NewPencilPairingCardTrigger.init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 56) = 1;
  *(v2 + 80) = 1;
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  sub_24E612C80(a2, v2 + 16);
  return v2;
}

double NewPencilPairingCardTrigger.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;

  return result;
}

uint64_t sub_24EEEBA84(uint64_t (*a1)(void))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t NewPencilPairingCardTrigger.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NewPencilPairingCardTrigger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_24EEEBB70(uint64_t (*a1)(void))
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t GameCenterPlayer.init(id:playerId:alias:displayName:artwork:size:action:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v17 = a10;
  v35 = a11;
  v18 = sub_24F91F6B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a9;
  *(v12 + 72) = 0;
  sub_24E60169C(a1, &v42, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v32 = a6;
    v33 = a7;
    v23 = a8;
    v24 = v22;
    v26 = v25;
    (*(v19 + 8))(v21, v18);
    v40 = v24;
    v41 = v26;
    a8 = v23;
    v17 = a10;
    a6 = v32;
    a7 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v27 = v46;
  *(v12 + 88) = v45;
  *(v12 + 104) = v27;
  *(v12 + 120) = v47;
  sub_24E65E0D4(v35, v12 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics);
  v28 = v37;
  *(v12 + 16) = v36;
  *(v12 + 24) = v28;
  v29 = v39;
  *(v12 + 56) = v38;
  *(v12 + 64) = v29;
  *(v12 + 40) = a6;
  *(v12 + 48) = a7;
  *(v12 + 32) = v34;
  swift_beginAccess();
  *(v12 + 72) = a8;

  *(v12 + 80) = v17;
  return v12;
}

uint64_t _s12GameStoreKit05LargeA12CenterPlayerCfd_0()
{

  sub_24E6585F8(v0 + 88);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t GameCenterPlayer.__allocating_init(friendInternal:)(void *a1)
{
  v2 = sub_24EEEDACC(a1);

  return v2;
}

uint64_t GameCenterPlayer.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v74 = a2;
  v75 = sub_24F9285B8();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v59 - v9;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = a1;
  sub_24F928398();
  v24 = sub_24F928348();
  v26 = v25;
  v27 = *(v11 + 8);
  v78 = v10;
  v28 = v10;
  v29 = v27;
  v72 = v11 + 8;
  v27(v22, v28);
  v66 = v26;
  if (v26)
  {
    v60 = v24;
    sub_24F928398();
    v30 = sub_24F928348();
    v32 = v31;
    v33 = v78;
    v29(v19, v78);
    if (v32)
    {
      v34 = v30;
    }

    else
    {
      v34 = 0;
    }

    if (v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    v63 = v35;
    v64 = v34;
    sub_24F928398();
    v36 = sub_24F928348();
    v38 = v37;
    v29(v16, v33);
    if (v38)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    v62 = v39;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    v61 = v40;
    sub_24F929608();
    v41 = v23;
    sub_24F928398();
    v42 = v74;
    v43 = *(v73 + 16);
    v44 = v67;
    v69 = v29;
    v45 = v75;
    v43(v67, v74, v75);
    sub_24F929548();
    v43(v44, v42, v45);
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v43(v65, v44, v45);
    sub_24EEEDD58(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v65 = v77;
    v59 = v41;
    sub_24F928398();
    sub_24EEEDDA0();
    sub_24F928208();
    v46 = v78;
    v47 = v69;
    v69(v13, v78);
    LOBYTE(v43) = v77;
    type metadata accessor for Action(0);
    sub_24F928398();
    v48 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, v44);
    v47(v13, v46);
    v49 = v60;
    v50 = v66;
    v76[0] = v60;
    v76[1] = v66;

    sub_24F92C7F8();
    LOBYTE(v76[0]) = v43;
    v51 = v71;
    v52 = v68;
    sub_24E60169C(v71, v68, &qword_27F213E68, &unk_24F93BC80);
    v53 = (*(v70 + 144))(&v77, v49, v50, v62, v61, v64, v63, v65, v76, v48, v52);
    v54 = *(v73 + 8);
    v55 = v75;
    v54(v74, v75);
    v69(v59, v78);
    v54(v44, v55);
    sub_24E601704(v51, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v53 = sub_24F92AC38();
    sub_24EEEDD58(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v56 = 0x6449726579616C70;
    v57 = v70;
    v56[1] = 0xE800000000000000;
    v56[2] = v57;
    (*(*(v53 - 8) + 104))(v56, *MEMORY[0x277D22530], v53);
    swift_willThrow();
    (*(v73 + 8))(v74, v75);
    v29(v23, v78);
  }

  return v53;
}

double sub_24EEEC7AC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;

  return result;
}

void sub_24EEEC844(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  if (![v4 valueWithNewObjectInContext_])
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v1[3];
  v17 = v1[2];
  v18 = v5;

  v6 = [v4 valueWithObject:sub_24F92CF68() inContext:a1];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_24F92C328();
  v7 = v1[8];
  if (v7)
  {
    v17 = v1[7];
    v18 = v7;

    v8 = a1;
    v9 = sub_24F92CDE8();
    sub_24EB715C4(&v17);
  }

  else
  {
    v10 = a1;
    v9 = 0;
  }

  v11 = [v4 valueWithObject:v9 inContext:a1];
  swift_unknownObjectRelease();

  if (!v11)
  {
    goto LABEL_17;
  }

  sub_24F92C328();
  v12 = v2[6];
  if (v12)
  {
    v17 = v2[5];
    v18 = v12;
    v13 = a1;

    v12 = sub_24F92CDE8();
    sub_24EB715C4(&v17);
  }

  else
  {
    v14 = a1;
  }

  v15 = [v4 valueWithObject:v12 inContext:a1];
  swift_unknownObjectRelease();

  if (!v15)
  {
    goto LABEL_18;
  }

  sub_24F92C328();
  LOBYTE(v17) = *(v2 + 32);
  v16 = [v4 valueWithObject:sub_24F92CF68() inContext:a1];
  swift_unknownObjectRelease();
  if (!v16)
  {
LABEL_19:
    __break(1u);
    return;
  }

  sub_24F92C328();
  swift_beginAccess();
  if (v2[9])
  {

    sub_24E9F7F40(a1);

    sub_24F92C328();
  }
}

uint64_t sub_24EEECB24@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for GameCenterPlayer(0);
  *a1 = v1;
}

uint64_t sub_24EEECB70()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EEECBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a12;
  v35 = a10;
  v36 = a8;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_24E60169C(a1, v42, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(a11, v18 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v18 + 72) = 0;
  sub_24E60169C(v42, &v39, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v40 + 1))
  {
    v19 = v40;
    *(v18 + 88) = v39;
    *(v18 + 104) = v19;
    *(v18 + 120) = v41;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v15 + 8))(v17, v14);
    v37 = v20;
    v38 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a11, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v42, &qword_27F235830, &qword_24F93B8C0);
  v23 = v29;
  *(v18 + 16) = a2;
  *(v18 + 24) = v23;
  v24 = v32;
  *(v18 + 56) = v31;
  *(v18 + 64) = v24;
  v25 = v34;
  *(v18 + 40) = v33;
  *(v18 + 48) = v25;
  *(v18 + 32) = v30;
  swift_beginAccess();
  v26 = v35;
  *(v18 + 72) = v36;
  *(v18 + 80) = v26;
  return v18;
}

uint64_t sub_24EEECE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v39 = a8;
  v37 = a7;
  v36 = a6;
  v35 = a5;
  v34 = a4;
  v32 = a3;
  v31 = a2;
  v33 = a12;
  v38 = a10;
  v15 = sub_24F91F6B8();
  v29 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v29 - v19;
  v30 = a1;
  sub_24E60169C(a1, v48, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(a11, v20, &qword_27F213E68, &unk_24F93BC80);
  *(v13 + 72) = 0;
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
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v29 + 8))(v17, v15);
    v40 = v21;
    v41 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a11, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v48, &qword_27F235830, &qword_24F93B8C0);
  v24 = v46;
  *(v13 + 88) = v45;
  *(v13 + 104) = v24;
  *(v13 + 120) = v47;
  sub_24E65E0D4(v20, v13 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics);
  v25 = v32;
  *(v13 + 16) = v31;
  *(v13 + 24) = v25;
  v26 = v35;
  *(v13 + 56) = v34;
  *(v13 + 64) = v26;
  v27 = v37;
  *(v13 + 40) = v36;
  *(v13 + 48) = v27;
  *(v13 + 32) = v33;
  swift_beginAccess();
  *(v13 + 72) = v39;

  *(v13 + 80) = v38;
  return v13;
}

uint64_t sub_24EEED1C8()
{

  sub_24E6585F8(v0 + 88);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

GameStoreKit::GameCenterPlayer::Size_optional __swiftcall GameCenterPlayer.Size.init(rawValue:)(Swift::String rawValue)
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

uint64_t GameCenterPlayer.Size.rawValue.getter()
{
  if (*v0)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_24EEED2FC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x656772616CLL;
  }

  else
  {
    v2 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v3 = 0x656772616CLL;
  }

  else
  {
    v3 = 0x6C6C616D73;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24EEED37C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEED3EC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EEED440()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEED4AC@<X0>(char *a2@<X8>)
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

void sub_24EEED50C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C616D73;
  if (*v1)
  {
    v2 = 0x656772616CLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t GameCenterPlayer.__allocating_init(id:playerId:alias:displayName:artwork:size:action:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v15 = a10;
  v34 = a11;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v33 = *a9;
  *(v20 + 72) = 0;
  sub_24E60169C(a1, &v41, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v42 + 1))
  {
    v21 = v42;
    *(v20 + 88) = v41;
    *(v20 + 104) = v21;
    *(v20 + 120) = v43;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v31 = a6;
    v32 = a7;
    v23 = a8;
    v24 = v22;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v39 = v24;
    v40 = v26;
    a8 = v23;
    v15 = a10;
    a6 = v31;
    a7 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v34, v20 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics);
  v27 = v36;
  *(v20 + 16) = v35;
  *(v20 + 24) = v27;
  v28 = v38;
  *(v20 + 56) = v37;
  *(v20 + 64) = v28;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
  *(v20 + 32) = v33;
  swift_beginAccess();
  *(v20 + 72) = a8;
  *(v20 + 80) = v15;
  return v20;
}

uint64_t GameCenterPlayer.playerId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GameCenterPlayer.displayName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t GameCenterPlayer.alias.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

double sub_24EEED800(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;

  return result;
}

uint64_t static GameCenterPlayer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t sub_24EEED8E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = GameCenterPlayer.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EEED984@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for GameCenterPlayer(0);
  *a1 = v3;
}

uint64_t sub_24EEED9CC()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EEEDA20()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EEEDAA0(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t sub_24EEEDACC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31[-1] - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
  v8 = [a1 contact];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _gkCompositeName];

    v30 = sub_24F92B0D8();
    v12 = v11;
  }

  else
  {
    v30 = 0;
    v12 = 0;
  }

  v13 = [v7 playerID];
  v14 = sub_24F92B0D8();
  v16 = v15;

  v31[0] = v14;
  v31[1] = v16;
  sub_24F92C7F8();
  v17 = [v7 playerID];
  v18 = sub_24F92B0D8();
  v20 = v19;

  v21 = [v7 alias];
  v22 = sub_24F92B0D8();
  v24 = v23;

  v25 = [v7 internal];
  v26 = sub_24F075674(300.0, 300.0);

  LOBYTE(v31[0]) = 1;
  v27 = sub_24F929608();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  v28 = (*(v2 + 144))(v32, v18, v20, v22, v24, v30, v12, v26, v31, 0, v6);

  return v28;
}

uint64_t sub_24EEEDD58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EEEDDA0()
{
  result = qword_27F2332D0;
  if (!qword_27F2332D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2332D0);
  }

  return result;
}

unint64_t sub_24EEEDE18()
{
  result = qword_27F2332D8;
  if (!qword_27F2332D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2332D8);
  }

  return result;
}

uint64_t sub_24EEEDEFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

void sub_24EEEDFE0(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_24EEEE268()
{
  swift_getKeyPath();
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager, &unk_24F9AD6E8);
  sub_24F91FD88();

  return *(v0 + 16);
}

void sub_24EEEE308(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager, &unk_24F9AD6E8);
    sub_24F91FD78();
  }
}

uint64_t sub_24EEEE428@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager, &unk_24F9AD6E8);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__scrollProxy;
  swift_beginAccess();
  return sub_24EEEF530(v5 + v3, a1);
}

uint64_t sub_24EEEE4F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager, &unk_24F9AD6E8);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__scrollProxy;
  swift_beginAccess();
  return sub_24EEEF530(v3 + v4, a2);
}

uint64_t sub_24EEEE5B8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24EEEF530(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager, &unk_24F9AD6E8);
  sub_24F91FD78();

  return sub_24EEEF5A0(v6);
}

uint64_t sub_24EEEE6E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__scrollProxy;
  swift_beginAccess();
  sub_24EEEF790(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_24EEEE77C(uint64_t a1)
{
  swift_getKeyPath();
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager, &unk_24F9AD6E8);
  sub_24F91FD88();
}

uint64_t sub_24EEEE820@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager, &unk_24F9AD6E8);
  sub_24F91FD88();

  *a4 = *(v6 + *a3);
}

double sub_24EEEE8D8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager, &unk_24F9AD6E8);
  sub_24F91FD78();

  return result;
}

double sub_24EEEE994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14[-v9];
  v11 = sub_24F924098();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_getKeyPath();
  v19 = v4;
  v20 = v10;
  v21 = v4;
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager, &unk_24F9AD6E8);
  sub_24F91FD78();

  sub_24EEEF5A0(v10);
  swift_getKeyPath();
  v17 = v4;
  v18 = a2;
  v21 = v4;
  sub_24F91FD78();

  swift_getKeyPath();
  v15 = v4;
  v16 = a3;
  v21 = v4;
  sub_24F91FD78();

  return result;
}

void sub_24EEEEBEC(int a1)
{
  v2 = v1;
  v41 = a1;
  v42 = type metadata accessor for LeaderboardEntry(0);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v40 = v35 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v35 - v10;
  v12 = sub_24F924098();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v48 = v1;
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager, &unk_24F9AD6E8);
  sub_24F91FD88();

  v16 = OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__scrollProxy;
  swift_beginAccess();
  sub_24EEEF530(v2 + v16, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24EEEF5A0(v11);
  }

  else
  {
    v39 = v8;
    (*(v13 + 32))(v15, v11, v12);
    swift_getKeyPath();
    v47 = v2;
    sub_24F91FD88();

    v17 = *(v2 + OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__localPlayerProvider);
    if (v17)
    {
      v38 = v15;
      swift_getKeyPath();
      v47 = v2;

      sub_24F91FD88();

      v18 = *(v2 + OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__paginationManager);
      if (v18)
      {
        v36 = v13;
        v37 = v12;
        swift_getKeyPath();
        v47 = v18;
        sub_24EEEF6D0(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);

        sub_24F91FD88();

        swift_beginAccess();
        v35[1] = v18;
        v19 = *(v18 + 16);
        v20 = *(v19 + 16);
        v43 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
        v21 = (v17 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);

        swift_beginAccess();
        v22 = v42;
        if (v20)
        {
          v23 = 0;
          while (1)
          {
            if (v23 >= *(v19 + 16))
            {
              __break(1u);
              return;
            }

            v24 = v45;
            sub_24E6C2DEC(v19 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23, v45);
            v25 = (v24 + *(v22 + 20));
            v26 = *v25;
            v27 = v25[1];
            swift_getKeyPath();
            v46 = v17;
            sub_24EEEF6D0(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
            sub_24F91FD88();

            v28 = v26 == *v21 && v27 == v21[1];
            if (v28 || (sub_24F92CE08() & 1) != 0)
            {
              break;
            }

            ++v23;
            sub_24E6C2E50(v45);
            if (v20 == v23)
            {
              goto LABEL_14;
            }
          }

          v29 = v40;
          sub_24E6C2F10(v45, v40);
          v30 = sub_24E6C2F10(v29, v39);
          if (v41)
          {
            v30 = sub_24F927718();
          }

          v32 = v36;
          v31 = v37;
          v33 = v38;
          MEMORY[0x28223BE20](v30);
          v34 = v39;
          v35[-2] = v33;
          v35[-1] = v34;
          sub_24F923B18();

          sub_24E6C2E50(v34);
          (*(v32 + 8))(v33, v31);
        }

        else
        {
LABEL_14:

          (*(v36 + 8))(v38, v37);
        }
      }

      else
      {

        (*(v13 + 8))(v38, v12);
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_24EEEF248(uint64_t a1, uint64_t a2)
{
  sub_24F130238(a2);
  sub_24F9278A8();
  sub_24F924088();
}

uint64_t sub_24EEEF2C0(__n128 a1)
{
  sub_24EEEF5A0(v1 + OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__scrollProxy);

  v2 = OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaderboardEntriesScrollStateManager(uint64_t a1)
{
  result = qword_27F233340;
  if (!qword_27F233340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEEF3E0(uint64_t a1)
{
  sub_24EEEF4D0(319);
  if (v1 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24EEEF4D0(uint64_t a1)
{
  if (!qword_27F233350)
  {
    sub_24F924098();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F233350);
    }
  }
}

uint64_t sub_24EEEF530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEEF5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EEEF6D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EEEF790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_24EEEF800(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

double sub_24EEEF84C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t ArcadeSeeAllGamesPageSegment.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a2;
  v44 = a3;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v48 = a1;
  sub_24F928398();
  v17 = sub_24F928348();
  v18 = *(v8 + 8);
  v19 = v16;
  v20 = v7;
  v22 = v21;
  v18(v19, v20);
  if (!v22)
  {
    v31 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v32 = 0x656C746974;
    v32[1] = 0xE500000000000000;
    v32[2] = &type metadata for ArcadeSeeAllGamesPageSegment;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v5 + 8))(v47, v4);
    return (v18)(v48, v20);
  }

  v41 = v17;
  sub_24F928398();
  v40 = sub_24F928348();
  v24 = v23;
  v18(v13, v20);
  if (!v24)
  {
    v34 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v35 = 25705;
    v35[1] = 0xE200000000000000;
    v35[2] = &type metadata for ArcadeSeeAllGamesPageSegment;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v5 + 8))(v47, v4);
    v18(v48, v20);
  }

  v42 = v24;
  v43 = v20;
  sub_24F928398();
  v25 = v5;
  v26 = *(v5 + 16);
  v27 = v45;
  v28 = v47;
  v26(v45, v47, v4);
  type metadata accessor for ArcadeSeeAllGamesPageSegmentChangeAction(0);
  swift_allocObject();
  v29 = v46;
  v30 = ArcadeSeeAllGamesPageSegmentChangeAction.init(deserializing:using:)(v10, v27);
  if (v29)
  {
    (*(v25 + 8))(v28, v4);
    v18(v48, v43);
  }

  v36 = v30;
  (*(v25 + 8))(v28, v4);
  result = (v18)(v48, v43);
  v37 = v44;
  v38 = v41;
  v39 = v42;
  *v44 = v40;
  v37[1] = v39;
  v37[2] = v38;
  v37[3] = v22;
  v37[4] = v36;
  return result;
}

uint64_t ArcadeSeeAllGamesPageSegment.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSeeAllGamesPageSegment.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

int64x2_t sub_24EEEFDD4()
{
  result = vdupq_n_s64(4uLL);
  v1 = *MEMORY[0x277D768C8];
  v2 = *(MEMORY[0x277D768C8] + 8);
  v3 = *(MEMORY[0x277D768C8] + 16);
  v4 = *(MEMORY[0x277D768C8] + 24);
  xmmword_27F39CD70 = result;
  qword_27F39CD80 = v1;
  unk_27F39CD88 = v2;
  *&xmmword_27F39CD90 = v3;
  *(&xmmword_27F39CD90 + 1) = v4;
  qword_27F39CDA0 = v1;
  unk_27F39CDA8 = v2;
  *&xmmword_27F39CDB0 = v3;
  *(&xmmword_27F39CDB0 + 1) = v4;
  return result;
}

uint64_t TodayCardArtworkLayout.init(collapsedContentMode:expandedContentMode:collapsedLayoutInsets:expandedLayoutInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  *(a3 + 64) = a10;
  *(a3 + 72) = a11;
  return result;
}

void TodayCardArtworkLayout.collapsedLayoutInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void TodayCardArtworkLayout.expandedLayoutInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

uint64_t TodayCardArtworkLayout.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v129 = a2;
  v130 = a3;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v128 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v127 = &v112 - v8;
  MEMORY[0x28223BE20](v9);
  v126 = &v112 - v10;
  MEMORY[0x28223BE20](v11);
  v125 = &v112 - v12;
  MEMORY[0x28223BE20](v13);
  v124 = &v112 - v14;
  MEMORY[0x28223BE20](v15);
  v122 = &v112 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v112 - v18;
  MEMORY[0x28223BE20](v19);
  v119 = &v112 - v20;
  MEMORY[0x28223BE20](v21);
  v118 = &v112 - v22;
  MEMORY[0x28223BE20](v23);
  v117 = &v112 - v24;
  MEMORY[0x28223BE20](v25);
  v116 = &v112 - v26;
  MEMORY[0x28223BE20](v27);
  v115 = &v112 - v28;
  MEMORY[0x28223BE20](v29);
  v114 = &v112 - v30;
  MEMORY[0x28223BE20](v31);
  v113 = &v112 - v32;
  MEMORY[0x28223BE20](v33);
  v112 = &v112 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v112 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v112 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v112 - v42;
  sub_24F928398();
  v44 = sub_24F928258();
  v46 = v45;
  v47 = *(v5 + 8);
  v47(v43, v4);
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = v44;
  }

  v123 = v48;
  sub_24F928398();
  v49 = sub_24F928258();
  v51 = v50;
  v47(v40, v4);
  if (v51)
  {
    v52 = 4;
  }

  else
  {
    v52 = v49;
  }

  v121 = v52;
  v53 = a1;
  sub_24F928398();
  v54 = v112;
  sub_24F928398();
  v47(v37, v4);
  v55 = COERCE_DOUBLE(sub_24F928308());
  v57 = v56;
  v47(v54, v4);
  if (v57)
  {
    v58 = 0.0;
  }

  else
  {
    v58 = v55;
  }

  v59 = v113;
  sub_24F928398();
  v60 = v114;
  sub_24F928398();
  v47(v59, v4);
  v61 = v60;
  v62 = COERCE_DOUBLE(sub_24F928308());
  v64 = v63;
  v47(v61, v4);
  if (v64)
  {
    v65 = 0.0;
  }

  else
  {
    v65 = v62;
  }

  v66 = v115;
  sub_24F928398();
  v67 = v116;
  sub_24F928398();
  v47(v66, v4);
  v68 = v67;
  v69 = COERCE_DOUBLE(sub_24F928308());
  v71 = v70;
  v47(v68, v4);
  if (v71)
  {
    v72 = 0.0;
  }

  else
  {
    v72 = v69;
  }

  v73 = v117;
  sub_24F928398();
  v74 = v118;
  sub_24F928398();
  v47(v73, v4);
  v75 = v74;
  v76 = COERCE_DOUBLE(sub_24F928308());
  v78 = v77;
  v47(v75, v4);
  if (v78)
  {
    v79 = 0.0;
  }

  else
  {
    v79 = v76;
  }

  v80 = v119;
  sub_24F928398();
  v81 = v120;
  sub_24F928398();
  v47(v80, v4);
  v82 = v81;
  v83 = COERCE_DOUBLE(sub_24F928308());
  v85 = v84;
  v47(v82, v4);
  if (v85)
  {
    v86 = 0.0;
  }

  else
  {
    v86 = v83;
  }

  v87 = v122;
  sub_24F928398();
  v88 = v124;
  sub_24F928398();
  v47(v87, v4);
  v89 = v88;
  v90 = COERCE_DOUBLE(sub_24F928308());
  v92 = v91;
  v47(v89, v4);
  if (v92)
  {
    v93 = 0.0;
  }

  else
  {
    v93 = v90;
  }

  v94 = v125;
  sub_24F928398();
  v95 = v126;
  sub_24F928398();
  v47(v94, v4);
  v96 = v95;
  v97 = COERCE_DOUBLE(sub_24F928308());
  v99 = v98;
  v47(v96, v4);
  if (v99)
  {
    v100 = 0.0;
  }

  else
  {
    v100 = v97;
  }

  v101 = v127;
  sub_24F928398();
  v102 = v128;
  sub_24F928398();
  v47(v101, v4);
  v103 = v102;
  v104 = sub_24F928308();
  v106 = v105;
  v107 = sub_24F9285B8();
  (*(*(v107 - 8) + 8))(v129, v107);
  v47(v53, v4);
  result = (v47)(v103, v4);
  v109 = *&v104;
  if (v106)
  {
    v109 = 0.0;
  }

  v110 = v130;
  v111 = v121;
  *v130 = v123;
  v110[1] = v111;
  *(v110 + 2) = v58;
  *(v110 + 3) = v65;
  *(v110 + 4) = v72;
  *(v110 + 5) = v79;
  *(v110 + 6) = v86;
  *(v110 + 7) = v93;
  *(v110 + 8) = v100;
  *(v110 + 9) = v109;
  return result;
}

uint64_t _s12GameStoreKit22TodayCardArtworkLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = 0;
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))), xmmword_24F997D20)) & 0xF) == 0)
  {
    v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64)))));
  }

  return v2 & 1;
}

uint64_t sub_24EEF0870(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EEF0890(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

uint64_t ShelfBasedPage.shelves.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  v5 = v4;
  v6 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v4 + 32;
    v14 = v4 + 32;
    do
    {
      v10 = v8;
      v11 = v9 + 40 * v8;
      while (1)
      {
        if (v10 >= *(v5 + 16))
        {
          __break(1u);

          sub_24E6585F8(v16);

          __break(1u);
          return result;
        }

        sub_24E65864C(v11, v16);
        sub_24EEF121C(v16, a1, a2, &v15);
        v12 = sub_24E6585F8(v16);
        if (v15)
        {
          break;
        }

        ++v10;
        v11 += 40;
        if (v7 == v10)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x253050F00](v12);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v8 = v10 + 1;
      sub_24F92B638();
      v6 = v17;
      v9 = v14;
    }

    while (v7 - 1 != v10);
  }

LABEL_11:

  return v6;
}

char *sub_24EEF0A68(unint64_t a1)
{
  v2 = sub_24E60986C(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x253052270](v4, a1);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_26;
      }

LABEL_10:
      v8 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
      sub_24E65864C(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v28);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_24E76D934(v28);
      v12 = v2[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_27;
      }

      v16 = v11;
      if (v2[3] < v15)
      {
        sub_24E899884(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_24E76D934(v28);
        if ((v16 & 1) != (v17 & 1))
        {
          result = sub_24F92CF88();
          __break(1u);
          return result;
        }

LABEL_15:
        if (v16)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v18 = v10;
      sub_24E8ADF84();
      v10 = v18;
      if (v16)
      {
LABEL_16:
        *(v2[7] + 8 * v10) = v6;

        sub_24E6585F8(v28);
        goto LABEL_20;
      }

LABEL_18:
      v2[(v10 >> 6) + 8] |= 1 << v10;
      v19 = v10;
      sub_24E65864C(v28, v2[6] + 40 * v10);
      *(v2[7] + 8 * v19) = v6;
      sub_24E6585F8(v28);
      v20 = v2[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_28;
      }

      v2[2] = v21;
LABEL_20:
      sub_24E65864C(v6 + v8, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E616714(0, *(v5 + 2) + 1, 1, v5);
      }

      v23 = *(v5 + 2);
      v22 = *(v5 + 3);
      if (v23 >= v22 >> 1)
      {
        v5 = sub_24E616714((v22 > 1), v23 + 1, 1, v5);
      }

      *(v5 + 2) = v23 + 1;
      v24 = &v5[40 * v23];
      v25 = v28[0];
      v26 = v28[1];
      *(v24 + 8) = v29;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      ++v4;
      if (v7 == i)
      {
        return v5;
      }
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

    v6 = *(a1 + 8 * v4 + 32);

    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_24EEF0D44(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a5 + 8))(a4, a5);
  v10 = (*(a5 + 16))(a4, a5);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v9;
  }

  v12 = a1 + 32;
  v43 = a2;
  while (1)
  {
    sub_24E65864C(v12, v47);
    if (*(a2 + 16))
    {
      v13 = sub_24E76D934(v47);
      if (v14)
      {
        break;
      }
    }

    sub_24E6585F8(v47);
LABEL_4:
    v12 += 40;
    if (!--v11)
    {
      return v9;
    }
  }

  v15 = *(*(a2 + 56) + 8 * v13);
  if (a3)
  {
    v16 = v10[2];

    if (v16)
    {
      v17 = sub_24E76D934(v47);
      if ((v18 & 1) != 0 && v15[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched] == 1)
      {
        v19 = v9;
        v20 = *(v10[7] + 8 * v17);

        v35 = Shelf.mergingWith(_:)(v15);
        sub_24E65864C(v47, v45);
        v36 = v35;
        if (!v35)
        {

          v36 = v20;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_24E81C630(v36, v45, isUniquelyReferenced_nonNull_native);
        sub_24E6585F8(v45);

        goto LABEL_24;
      }
    }
  }

  else
  {
  }

  sub_24E65864C(v47, v45);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_24E616714(0, *(v9 + 2) + 1, 1, v9);
  }

  v22 = *(v9 + 2);
  v21 = *(v9 + 3);
  if (v22 >= v21 >> 1)
  {
    v9 = sub_24E616714((v21 > 1), v22 + 1, 1, v9);
  }

  *(v9 + 2) = v22 + 1;
  v19 = v9;
  v23 = &v9[40 * v22];
  v24 = v45[0];
  v25 = v45[1];
  *(v23 + 8) = v46;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_24E65864C(v47, v45);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = sub_24E76D934(v45);
  v29 = v10[2];
  v30 = (v28 & 1) == 0;
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (!v31)
  {
    v33 = v28;
    if (v10[3] >= v32)
    {
      if ((v26 & 1) == 0)
      {
        v38 = v27;
        sub_24E8ADF84();
        v27 = v38;
        if (v33)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    else
    {
      sub_24E899884(v32, v26);
      v27 = sub_24E76D934(v45);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_35;
      }
    }

    if (v33)
    {
LABEL_23:
      *(v10[7] + 8 * v27) = v15;

      sub_24E6585F8(v45);
LABEL_24:
      sub_24E6585F8(v47);
LABEL_31:
      v9 = v19;
      a2 = v43;
      goto LABEL_4;
    }

LABEL_29:
    v10[(v27 >> 6) + 8] |= 1 << v27;
    v39 = v27;
    sub_24E65864C(v45, v10[6] + 40 * v27);
    *(v10[7] + 8 * v39) = v15;

    sub_24E6585F8(v45);
    sub_24E6585F8(v47);
    v40 = v10[2];
    v31 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v31)
    {
      goto LABEL_34;
    }

    v10[2] = v41;
    goto LABEL_31;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

unint64_t sub_24EEF1124(uint64_t a1, uint64_t a2)
{
  v8 = MEMORY[0x277D84FA0];
  result = ShelfBasedPage.shelves.getter(a1, a2);
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84FA0];
  }

  result = sub_24F92C738();
  v4 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x253052270](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      sub_24ED7E294(&v7, *(v6 + 16));
    }

    return v8;
  }

  return result;
}

uint64_t sub_24EEF121C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (*(v6 + 16) && (v7 = sub_24E76D934(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t ImpressionableArtwork.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImpressionableArtwork.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ImpressionableArtwork.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v48 = a2;
  v40 = *v2;
  v41 = v3;
  v50 = sub_24F9285B8();
  v57 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v38 - v7;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  sub_24F928398();
  v17 = sub_24F928348();
  v49 = v12;
  v47 = v13;
  if (v18)
  {
    v52 = v17;
    v53 = v18;
    sub_24F92C7F8();
    v44 = *(v13 + 8);
    v44(v16, v12);
    v19 = v57;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v8;
    v22 = a1;
    v24 = v23;
    (*(v9 + 8))(v11, v21);
    v52 = v20;
    v53 = v24;
    a1 = v22;
    v19 = v57;
    sub_24F92C7F8();
    v44 = *(v13 + 8);
    v44(v16, v12);
  }

  v42 = a1;
  v25 = v55;
  v26 = v51;
  *(v51 + 24) = v54;
  *(v26 + 40) = v25;
  *(v26 + 56) = v56;
  sub_24F929608();
  sub_24F928398();
  v43 = *(v19 + 16);
  v27 = v46;
  v28 = v48;
  v29 = v50;
  v43(v46, v48, v50);
  v30 = v45;
  sub_24F929548();
  v39 = OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics;
  v31 = v30;
  v32 = v42;
  sub_24E65E0D4(v31, v26 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics);
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v43(v27, v28, v29);
  sub_24EEF1BDC(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v33 = v54;
  if (v54)
  {
    (*(v57 + 8))(v28, v29);
    v44(v32, v49);
    result = v51;
    *(v51 + 16) = v33;
  }

  else
  {
    v35 = sub_24F92AC38();
    sub_24EEF1BDC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v36 = 7631457;
    v36[1] = 0xE300000000000000;
    v36[2] = v40;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v57 + 8))(v28, v29);
    v44(v32, v49);
    v37 = v51;
    sub_24E6585F8(v51 + 24);
    sub_24EB05BC8(v37 + v39);
    type metadata accessor for ImpressionableArtwork(0);
    swift_deallocPartialClassInstance();
    return v37;
  }

  return result;
}

uint64_t type metadata accessor for ImpressionableArtwork(uint64_t a1)
{
  result = qword_27F233370;
  if (!qword_27F233370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ImpressionableArtwork.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);

  LOBYTE(v2) = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v2, v3);

  return v2 & 1;
}

uint64_t ImpressionableArtwork.deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics);
  return v0;
}

uint64_t ImpressionableArtwork.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_24EEF1B10@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ImpressionableArtwork(0);
  v7 = swift_allocObject();
  result = ImpressionableArtwork.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EEF1BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EEF1C2C(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EEF1D48(uint64_t a1)
{
  v2 = sub_24EEF1F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EEF1D84(uint64_t a1)
{
  v2 = sub_24EEF1F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EEF1DE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233380, &qword_24F9ADB68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EEF1F5C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_24F92CC28();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

unint64_t sub_24EEF1F5C()
{
  result = qword_27F233388;
  if (!qword_27F233388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233388);
  }

  return result;
}

unint64_t sub_24EEF1FC4()
{
  result = qword_27F233390;
  if (!qword_27F233390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233390);
  }

  return result;
}

unint64_t sub_24EEF201C()
{
  result = qword_27F233398;
  if (!qword_27F233398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233398);
  }

  return result;
}

unint64_t sub_24EEF2074()
{
  result = qword_27F2333A0;
  if (!qword_27F2333A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2333A0);
  }

  return result;
}

uint64_t sub_24EEF20C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_allocObject();
  v6 = *(v2 + 112);
  *(v5 + 112) = *(v2 + 96);
  *(v5 + 128) = v6;
  *(v5 + 144) = *(v2 + 128);
  v7 = *(v2 + 48);
  *(v5 + 48) = *(v2 + 32);
  *(v5 + 64) = v7;
  v8 = *(v2 + 80);
  *(v5 + 80) = *(v2 + 64);
  *(v5 + 96) = v8;
  v9 = *(v2 + 16);
  *(v5 + 16) = *v2;
  *(v5 + 32) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2333D8, &qword_24F9ADDE8);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2333E0, &qword_24F9ADDF0) + 36));
  *v11 = sub_24EEF4098;
  v11[1] = v5;
  sub_24EEF40A0(v2, v37);
  v12 = sub_24F927618();
  v14 = v13;
  sub_24EEF2550(v2, &v22);
  v33 = v26;
  v34 = v27;
  *v35 = *v28;
  *&v35[15] = *&v28[15];
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v35[19] = 0;
  *&v35[24] = v12;
  v36 = v14;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2333E8, &qword_24F9ADDF8) + 36);
  v16 = *&v35[16];
  *(v15 + 96) = *v35;
  *(v15 + 112) = v16;
  *(v15 + 128) = v36;
  v17 = v32;
  *(v15 + 32) = v31;
  *(v15 + 48) = v17;
  v18 = v34;
  *(v15 + 64) = v33;
  *(v15 + 80) = v18;
  v19 = v30;
  *v15 = v29;
  *(v15 + 16) = v19;
  v37[4] = v26;
  v37[5] = v27;
  *v38 = *v28;
  *&v38[15] = *&v28[15];
  v37[0] = v22;
  v37[1] = v23;
  v37[2] = v24;
  v37[3] = v25;
  v39 = 0;
  v40 = v12;
  v41 = v14;
  sub_24E60169C(&v29, &v21, &qword_27F2333F0, &qword_24F9ADE00);
  return sub_24E601704(v37, &qword_27F2333F0, &qword_24F9ADE00);
}

uint64_t sub_24EEF22BC(void **a1, uint64_t a2)
{
  if ((*a2 & 1) != 0 && (*(a2 + 1) & 1) != 0 && (v2 = *a1, v18 = *(a2 + 8), v3 = *(a2 + 72), v21 = *(a2 + 56), v22 = v3, v23[0] = *(a2 + 88), *(v23 + 9) = *(a2 + 97), v4 = *(a2 + 40), v19 = *(a2 + 24), v20 = v4, v18 != 1) && (v19 & 1) == 0 && v2)
  {
    *&v17[97] = *(a2 + 97);
    *&v17[40] = *(a2 + 40);
    *&v17[24] = *(a2 + 24);
    *&v17[8] = *(a2 + 8);
    *&v17[88] = *(a2 + 88);
    *&v17[72] = *(a2 + 72);
    *&v17[56] = *(a2 + 56);
    *v17 = v2;
    v15[4] = *&v17[64];
    v15[5] = *&v17[80];
    v15[6] = *&v17[96];
    v16 = v17[112];
    v15[0] = *v17;
    v15[1] = *&v17[16];
    v15[2] = *&v17[32];
    v15[3] = *&v17[48];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233428, &unk_24F9ADE20);
    swift_allocObject();
    sub_24E60169C(&v18, v14, &qword_27F233420, &unk_24F9ADE10);
    v6 = v2;
    sub_24E60169C(&v18, v14, &qword_27F233420, &unk_24F9ADE10);
    v7 = v6;
    sub_24EEF4298(v17, v14);
    MEMORY[0x253049370](v15);
    v8 = sub_24F9239D8();

    sub_24EEF42D0(v17);
    v9 = *(a2 + 120);
    v10 = *(a2 + 128);
    v13 = v8;
    v14[0] = v9;
    v24 = v10;
    *&v15[0] = v9;
    *(&v15[0] + 1) = v10;
    sub_24E60169C(v14, v12, &qword_27F21B9C0, &qword_24F95B820);
    sub_24E60169C(&v24, v12, &qword_27F233430, &qword_24F9ADE30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0, &qword_24F95B978);
    sub_24F926F48();
    sub_24E601704(&v18, &qword_27F233420, &unk_24F9ADE10);

    sub_24E601704(v14, &qword_27F21B9C0, &qword_24F95B820);
    return sub_24E601704(&v24, &qword_27F233430, &qword_24F9ADE30);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0, &qword_24F95B978);
    return sub_24F926F48();
  }
}

uint64_t sub_24EEF2550@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 1) != 0 && (v2 = *(result + 24), v44 = *(result + 8), v45 = v2, v3 = *(result + 56), v4 = *(result + 88), v48 = *(result + 72), v49[0] = v4, *(v49 + 9) = *(result + 97), v46 = *(result + 40), v47 = v3, v5 = v44, v44 != 1))
  {
    v15 = *(&v44 + 1);
    v16 = v45;
    if (v45)
    {
      v17 = a2;
      LOBYTE(v28[0]) = 1;
      v38 = v44;
      v39[0] = v45;
      *&v39[33] = *(result + 57);
      *&v39[49] = *(result + 73);
      *&v39[65] = *(result + 89);
      *&v39[81] = *(result + 105);
      *&v39[1] = *(result + 25);
      *&v39[17] = *(result + 41);
      v41 = 1;
      v18 = *(result + 56);
      v19 = *(result + 88);
      v35 = *(result + 72);
      *v36 = v19;
      *&v36[9] = *(result + 97);
      v20 = *(result + 24);
      v31 = *(result + 8);
      v32 = v20;
      v33 = *(result + 40);
      v34 = v18;
      sub_24EEF40D8(&v31, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2333F8, &qword_24F9ADE08);
      sub_24EEF4110();
      sub_24EEF4244();
      result = sub_24F924E28();
    }

    else
    {
      v17 = a2;
      if (*(result + 1))
      {
        v38 = *(result + 120);
        v21 = *(result + 56);
        v22 = *(result + 88);
        v28[4] = *(result + 72);
        *v29 = v22;
        *&v29[9] = *(result + 97);
        v23 = *(result + 24);
        v28[0] = *(result + 8);
        v28[1] = v23;
        v28[2] = *(result + 40);
        v28[3] = v21;
        v24 = result;
        sub_24EEF40D8(v28, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0, &qword_24F95B978);
        sub_24F926F38();
        v30 = 0;
        *&v42[8] = __PAIR128__(v15, v5);
        v42[24] = v16;
        *&v42[57] = *(v24 + 57);
        *&v42[73] = *(v24 + 73);
        *&v42[89] = *(v24 + 89);
        *&v42[105] = *(v24 + 105);
        *&v42[25] = *(v24 + 25);
        *&v42[41] = *(v24 + 41);
        v42[113] = 0;
        *&v39[48] = v48;
        *&v39[64] = v49[0];
        *&v39[73] = *(v49 + 9);
        v38 = v44;
        *v39 = v45;
        *&v39[16] = v46;
        *&v39[32] = v47;
      }

      else
      {
        LOBYTE(v28[0]) = 1;
        *v42 = *(&v44 + 1);
        *&v42[8] = v44;
        v42[24] = v45;
        *&v42[57] = *(result + 57);
        *&v42[73] = *(result + 73);
        *&v42[89] = *(result + 89);
        *&v42[105] = *(result + 105);
        *&v42[25] = *(result + 25);
        *&v42[41] = *(result + 41);
        v42[113] = 1;
        v25 = *(result + 56);
        v26 = *(result + 88);
        *&v39[48] = *(result + 72);
        *&v39[64] = v26;
        *&v39[73] = *(result + 97);
        v27 = *(result + 24);
        v38 = *(result + 8);
        *v39 = v27;
        *&v39[16] = *(result + 40);
        *&v39[32] = v25;
        sub_24E60169C(&v44, &v31, &qword_27F233420, &unk_24F9ADE10);
      }

      sub_24EEF40D8(&v38, &v31);
      sub_24EEF419C();
      sub_24EEF41F0();
      sub_24F924E28();
      *&v39[48] = v35;
      *&v39[64] = *v36;
      *&v39[80] = *&v36[16];
      v40 = v37;
      v38 = v31;
      *v39 = v32;
      *&v39[16] = v33;
      *&v39[32] = v34;
      LOBYTE(v28[0]) = 0;
      v41 = 0;
      sub_24E60169C(&v31, v42, &qword_27F2333F8, &qword_24F9ADE08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2333F8, &qword_24F9ADE08);
      sub_24EEF4110();
      sub_24EEF4244();
      sub_24F924E28();
      sub_24E601704(&v44, &qword_27F233420, &unk_24F9ADE10);
      result = sub_24E601704(&v31, &qword_27F2333F8, &qword_24F9ADE08);
    }

    v8 = *v42;
    v10 = *&v42[16];
    v11 = *&v42[32];
    v12 = *&v42[48];
    v13 = *&v42[64];
    v14 = *&v42[80];
    v6 = *&v42[96];
    v7 = *&v42[104];
    v9 = *&v42[112] | (v43 << 16);
    a2 = v17;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    v9 = 16711680;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a2 = v8;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 96) = v6;
  *(a2 + 104) = v7;
  *(a2 + 112) = v9;
  *(a2 + 114) = BYTE2(v9);
  return result;
}

__n128 sub_24EEF299C@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24F926E08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v7 = *v1;
    sub_24F926DD8();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v8 = sub_24F926E88();

    (*(v4 + 8))(v6, v3);
    sub_24F927618();
    sub_24F9242E8();
    v9 = sub_24F9275F8();
    v11 = v10;

    v12 = *(v1 + 96);
    v21 = *(v1 + 80);
    v22 = v12;
    v23 = *(v1 + 112);
    v13 = *(v1 + 64);
    v20[0] = *(v1 + 48);
    v20[1] = v13;
    *(&v32[1] + 8) = v13;
    *(&v32[2] + 8) = v21;
    *(&v32[3] + 8) = v12;
    BYTE8(v32[4]) = v23;
    *(v32 + 8) = v20[0];
    *(&v31[2] + 8) = v26;
    *(&v31[1] + 8) = v25;
    *(v31 + 8) = v24;
    *(&v31[6] + 8) = v30;
    *(&v31[5] + 8) = v29;
    *(&v31[4] + 8) = v28;
    *(&v31[3] + 8) = v27;
    *&v31[0] = v8;
    *(&v31[7] + 1) = v9;
    *&v32[0] = v11;
    CGSizeMake();
    sub_24EEF48F8(v20, &v33);
    v43 = v32[2];
    v44[0] = v32[3];
    *(v44 + 9) = *(&v32[3] + 9);
    v39 = v31[6];
    v40 = v31[7];
    v41 = v32[0];
    v42 = v32[1];
    v35 = v31[2];
    v36 = v31[3];
    v37 = v31[4];
    v38 = v31[5];
    v33 = v31[0];
    v34 = v31[1];
  }

  else
  {
    sub_24EEF48D4(&v33);
  }

  v14 = v44[0];
  *(a1 + 160) = v43;
  *(a1 + 176) = v14;
  *(a1 + 185) = *(v44 + 9);
  v15 = v40;
  *(a1 + 96) = v39;
  *(a1 + 112) = v15;
  v16 = v42;
  *(a1 + 128) = v41;
  *(a1 + 144) = v16;
  v17 = v36;
  *(a1 + 32) = v35;
  *(a1 + 48) = v17;
  v18 = v38;
  *(a1 + 64) = v37;
  *(a1 + 80) = v18;
  result = v34;
  *a1 = v33;
  *(a1 + 16) = result;
  return result;
}

double sub_24EEF2C44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (*(a1 + 24))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v6 = *(a1 + 16);
    v10 = *a1;
    v4 = sub_24F926DD8();
    if (v8)
    {
      v5 = 0x3FF0000000000000;
    }

    else
    {
      v5 = v9;
    }

    v7 = 1;
  }

  v13 = v3;
  sub_24E60169C(&v13, &v12, &qword_27F233468, &qword_24F9AE280);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return result;
}

__n128 sub_24EEF2D04@<Q0>(__n128 *a2@<X8>)
{
  v4 = *(v2 + 80);
  v18[4] = *(v2 + 64);
  v18[5] = v4;
  v18[6] = *(v2 + 96);
  v19 = *(v2 + 112);
  v5 = *(v2 + 16);
  v18[0] = *v2;
  v18[1] = v5;
  v6 = *(v2 + 48);
  v18[2] = *(v2 + 32);
  v18[3] = v6;
  v7 = sub_24F927618();
  v9 = v8;
  sub_24EEF2C44(v18, &v14);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  result = v14;
  a2->n128_u64[0] = v7;
  a2->n128_u64[1] = v9;
  a2[1] = result;
  a2[2].n128_u64[0] = v10;
  a2[2].n128_u8[8] = v11;
  a2[3].n128_u64[0] = v12;
  return result;
}

double sub_24EEF2DEC@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_24F927618();
  v6 = v5;
  v7 = *v2;
  v9 = v2[4];
  v10 = *(v2 + 40);
  v66 = v2[1];
  v8 = v66;
  sub_24E60169C(&v66, &v40, &qword_27F233468, &qword_24F9AE280);
  v11 = sub_24F9275F8();
  v13 = v12;
  v14 = *(v2 + 6);
  v69 = *(v2 + 5);
  v70 = v14;
  v71 = *(v2 + 112);
  v15 = *(v2 + 4);
  v67 = *(v2 + 3);
  v68 = v15;
  sub_24EEF48F8(&v67, &v40);
  sub_24F927618();
  sub_24F9242E8();
  LOBYTE(v57) = v71;
  v55 = v69;
  v56 = v70;
  v25[9] = v61;
  v25[10] = v62;
  v25[11] = v63;
  v25[7] = v59;
  v25[8] = v60;
  v53 = v67;
  v54 = v68;
  *&v25[0] = v11;
  *(&v25[0] + 1) = v13;
  v25[1] = v67;
  v25[2] = v68;
  v25[3] = v69;
  v25[4] = v70;
  v25[5] = v57;
  v25[6] = v58;
  v50 = v62;
  v51 = v63;
  v46 = v58;
  v47 = v59;
  v48 = v60;
  v49 = v61;
  v42 = v68;
  v43 = v69;
  v44 = v70;
  v45 = v57;
  v40 = v25[0];
  v41 = v67;
  v26 = v64;
  v27[0] = v11;
  v65 = v10 & 1;
  v52 = v64;
  v27[1] = v13;
  v36 = v61;
  v37 = v62;
  v38 = v63;
  v39 = v64;
  v32 = v57;
  v33 = v58;
  v34 = v59;
  v35 = v60;
  v28 = v67;
  v29 = v68;
  v30 = v69;
  v31 = v70;
  sub_24E60169C(v25, v24, &qword_27F233470, &qword_24F9AE288);
  sub_24E601704(v27, &qword_27F233470, &qword_24F9AE288);
  *(a2 + 16) = v7;
  v16 = v48;
  *(a2 + 200) = v49;
  v17 = v51;
  *(a2 + 216) = v50;
  *(a2 + 232) = v17;
  v18 = v44;
  *(a2 + 136) = v45;
  v19 = v47;
  *(a2 + 152) = v46;
  *(a2 + 168) = v19;
  *(a2 + 184) = v16;
  v20 = v40;
  *(a2 + 72) = v41;
  result = *&v42;
  v22 = v43;
  *(a2 + 88) = v42;
  *(a2 + 104) = v22;
  *(a2 + 120) = v18;
  v23 = v65;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v23;
  *(a2 + 40) = 0;
  *(a2 + 48) = v8;
  *(a2 + 248) = v52;
  *(a2 + 56) = v20;
  return result;
}

__n128 sub_24EEF30A0@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64))
  {
    sub_24EEF53D0(v1, v5);
    sub_24F9273D8();
    sub_24F923C78();
  }

  else
  {
    sub_24EEF53D0(v1, v5);
    sub_24F9273D8();
    sub_24F923BD8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233508, &qword_24F9AE520);
  sub_24E86BC28();
  sub_24EEF5408();
  sub_24F924E28();
  v3 = v6[0];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 57) = *(v6 + 9);
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

char *sub_24EEF3238()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4)
  {
    v5 = *(v0 + 24);
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  if (v3)
  {
    v2 = 1.0;
  }

  v6 = objc_allocWithZone(type metadata accessor for MaterialView());
  v7 = v4;
  return sub_24EEF33C0(v5, v1, v2);
}

uint64_t sub_24EEF32D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EEF537C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24EEF3334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EEF537C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24EEF3398(uint64_t a1)
{
  sub_24EEF537C();
  sub_24F924DC8();
  __break(1u);
}

char *sub_24EEF33C0(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_saturateFilter;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v8 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_blurFilter;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  *&v3[OBJC_IVAR____TtC12GameStoreKit12MaterialView_blurRadius] = a2;
  *&v3[OBJC_IVAR____TtC12GameStoreKit12MaterialView_saturation] = a3;
  *&v3[OBJC_IVAR____TtC12GameStoreKit12MaterialView_layerBackgroundColor] = a1;
  v36.receiver = v3;
  v36.super_class = type metadata accessor for MaterialView();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_saturateFilter;
  v12 = *&v10[OBJC_IVAR____TtC12GameStoreKit12MaterialView_saturateFilter];
  v13 = v10;
  v14 = v12;
  v15 = sub_24F91FDF8();
  [v14 setValue:v15 forKey:{*MEMORY[0x277CDA360], v36.receiver, v36.super_class}];

  v16 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_blurFilter;
  v17 = *&v13[OBJC_IVAR____TtC12GameStoreKit12MaterialView_blurFilter];
  v18 = sub_24F92B768();
  [v17 setValue:v18 forKey:*MEMORY[0x277CDA4C8]];

  v19 = *&v13[v16];
  v20 = sub_24F91FDF8();
  [v19 setValue:v20 forKey:*MEMORY[0x277CDA4F0]];

  v21 = v13;
  v22 = [v21 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24F93A400;
  v24 = *&v13[v16];
  v25 = sub_24E69A5C4(0, &qword_27F232DA0, 0x277CD9EA0);
  *(v23 + 56) = v25;
  *(v23 + 32) = v24;
  v26 = *&v10[v11];
  *(v23 + 88) = v25;
  *(v23 + 64) = v26;
  v27 = v24;
  v28 = v26;
  v29 = sub_24F92B588();

  [v22 setFilters_];

  v30 = [v21 layer];
  v31 = [*&v21[OBJC_IVAR____TtC12GameStoreKit12MaterialView_layerBackgroundColor] CGColor];
  [v30 setBackgroundColor_];

  v32 = [v21 layer];
  v33 = [v32 mask];

  if (v33)
  {
    LODWORD(v34) = 1.0;
    [v33 setOpacity_];
  }

  return v21;
}

id sub_24EEF37B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MaterialView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EEF3864@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10 = v3;
  v11 = *(v1 + 104);
  v4 = v11;
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_24EEF48F8(v8, v7);
}

double sub_24EEF38B8(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v11 = sub_24F923F78();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x277CDFA88], v11, v13);
  v16 = sub_24F923F68();
  (*(v12 + 8))(v15, v11);
  v17 = -a4;
  if (v16)
  {
    v17 = a4;
  }

  v18 = __sincos_stret(v17 * 3.14159265 / 180.0);
  return (a5 - a2) * v18.__cosval + a2 - (a6 - a3) * v18.__sinval;
}

void sub_24EEF3A30(uint64_t a1)
{
  sub_24F926C88();
  v1 = sub_24F926D08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93A400;
  sub_24F926C88();
  *(v2 + 32) = sub_24F9273C8();
  *(v2 + 40) = v3;
  sub_24F926C88();
  sub_24F926D08();

  *(v2 + 48) = sub_24F9273C8();
  *(v2 + 56) = v4;
  sub_24F927898();
  v6 = v5;
  v8 = v7;
  sub_24F927878();
  xmmword_27F39CDC8 = v1;
  byte_27F39CDD8 = 1;
  qword_27F39CDE0 = 0;
  LOBYTE(xmmword_27F39CDE8) = 1;
  *(&xmmword_27F39CDE8 + 1) = v2;
  qword_27F39CDF8 = v6;
  unk_27F39CE00 = v8;
  *&xmmword_27F39CE08 = v9;
  *(&xmmword_27F39CE08 + 1) = v10;
  byte_27F39CE30 = 0;
}

void sub_24EEF3B44(uint64_t a1)
{
  sub_24F926C88();
  v1 = sub_24F926D08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93A400;
  sub_24F926C88();
  *(v2 + 32) = sub_24F9273C8();
  *(v2 + 40) = v3;
  sub_24F926C88();
  sub_24F926D08();

  *(v2 + 48) = sub_24F9273C8();
  *(v2 + 56) = v4;
  sub_24F927878();
  v6 = v5;
  v8 = v7;
  sub_24F927898();
  xmmword_27F39CE38 = v1;
  byte_27F39CE48 = 1;
  qword_27F39CE50 = 0;
  LOBYTE(xmmword_27F39CE58) = 1;
  *(&xmmword_27F39CE58 + 1) = v2;
  qword_27F39CE68 = v6;
  unk_27F39CE70 = v8;
  *&xmmword_27F39CE78 = v9;
  *(&xmmword_27F39CE78 + 1) = v10;
  byte_27F39CEA0 = 0;
}

void sub_24EEF3C58(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (a1)
  {
    sub_24F926C88();
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v7 = sub_24F926D08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93FC20;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 32) = sub_24F9273C8();
  *(v8 + 40) = v9;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 48) = sub_24F9273C8();
  *(v8 + 56) = v10;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 64) = sub_24F9273C8();
  *(v8 + 72) = v11;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 80) = sub_24F9273C8();
  *(v8 + 88) = v12;
  sub_24F927898();
  v14 = v13;
  v16 = v15;
  sub_24F927898();
  *a2 = v7;
  *(a2 + 8) = 0x404C000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x3FF8000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = v18;
  *(a2 + 72) = v17 - a3 / a4;
  *(a2 + 104) = 0;
}

void sub_24EEF3E2C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_saturateFilter;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v2 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_blurFilter;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  sub_24F92CA88();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit20TextLegibilityConfigVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EEF3F24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
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

uint64_t sub_24EEF3F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t sub_24EEF4020()
{
  if (*(v0 + 24) != 1)
  {

    j__swift_bridgeObjectRelease();
  }

  return swift_deallocObject();
}

unint64_t sub_24EEF4110()
{
  result = qword_27F233400;
  if (!qword_27F233400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2333F8, &qword_24F9ADE08);
    sub_24EEF419C();
    sub_24EEF41F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233400);
  }

  return result;
}

unint64_t sub_24EEF419C()
{
  result = qword_27F233408;
  if (!qword_27F233408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233408);
  }

  return result;
}

unint64_t sub_24EEF41F0()
{
  result = qword_27F233410;
  if (!qword_27F233410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233410);
  }

  return result;
}

unint64_t sub_24EEF4244()
{
  result = qword_27F233418;
  if (!qword_27F233418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233418);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24EEF432C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_24EEF4374(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24EEF4420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
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

uint64_t sub_24EEF447C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24EEF4500(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
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

uint64_t sub_24EEF455C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EEF45E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
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

uint64_t sub_24EEF4644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24EEF46C8()
{
  result = qword_27F233438;
  if (!qword_27F233438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2333E8, &qword_24F9ADDF8);
    sub_24EEF4780();
    sub_24E602068(&qword_27F233460, &qword_27F2333F0, &qword_24F9ADE00, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233438);
  }

  return result;
}

unint64_t sub_24EEF4780()
{
  result = qword_27F233440;
  if (!qword_27F233440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2333E0, &qword_24F9ADDF0);
    sub_24E602068(&qword_27F233448, &qword_27F2333D8, &qword_24F9ADDE8, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F233450, &qword_27F233458, &qword_24F9C8010, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233440);
  }

  return result;
}

double sub_24EEF48D4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_24EEF4930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_24EEF498C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24EEF4A04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EEF4A50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_24EEF4AC8()
{
  result = qword_27F233478;
  if (!qword_27F233478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233480, &qword_24F9AE3B8);
    sub_24EEF4B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233478);
  }

  return result;
}

unint64_t sub_24EEF4B4C()
{
  result = qword_27F233488;
  if (!qword_27F233488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233490, &qword_24F9AE3C0);
    sub_24EEF4C04();
    sub_24E602068(&qword_27F2334A8, &qword_27F2334B0, &qword_24F9AE3D0, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233488);
  }

  return result;
}

unint64_t sub_24EEF4C04()
{
  result = qword_27F233498;
  if (!qword_27F233498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2334A0, &qword_24F9AE3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233498);
  }

  return result;
}

unint64_t sub_24EEF4C8C()
{
  result = qword_27F2334B8;
  if (!qword_27F2334B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2334C0, &qword_24F9AE3D8);
    sub_24E602068(&qword_27F2334C8, &qword_27F2334D0, &qword_24F9AE3E0, MEMORY[0x277CE11A8]);
    sub_24E602068(&qword_27F2334D8, &qword_27F233470, &qword_24F9AE288, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2334B8);
  }

  return result;
}

unint64_t sub_24EEF4D74()
{
  result = qword_27F2334E0;
  if (!qword_27F2334E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2334E0);
  }

  return result;
}

unint64_t sub_24EEF4E2C()
{
  result = qword_27F2334F8;
  if (!qword_27F2334F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2334F8);
  }

  return result;
}

double sub_24EEF4E80@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>)
{
  v29 = a5;
  v30 = a4;
  v8 = sub_24F923F78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F942000;
  sub_24F926C88();
  sub_24F926D08();

  *(v12 + 32) = sub_24F9273C8();
  *(v12 + 40) = v13;
  sub_24F926C88();
  sub_24F926D08();

  *(v12 + 48) = sub_24F9273C8();
  *(v12 + 56) = v14;
  sub_24F926C88();
  sub_24F926D08();

  *(v12 + 64) = sub_24F9273C8();
  *(v12 + 72) = v15;
  sub_24F926C88();
  sub_24F926D08();

  *(v12 + 80) = sub_24F9273C8();
  *(v12 + 88) = v16;
  sub_24F926C88();
  sub_24F926D08();

  *(v12 + 96) = sub_24F9273C8();
  *(v12 + 104) = v17;
  (*(v9 + 104))(v11, *MEMORY[0x277CDFA88], v8);
  v18 = sub_24F923F68();
  (*(v9 + 8))(v11, v8);
  *&v19 = v30.n128_f64[0] + -248.0;
  if (v18)
  {
    *&v19 = 248.0;
  }

  v28 = v19;
  v20 = sub_24EEF38B8(a2, *&v19, 340.0, 34.0, *&v19, 100.0);
  v22 = v21;
  if (a1)
  {
    sub_24F926C88();
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v23 = sub_24F926D08();

  v24 = vdupq_lane_s64(0x4075400000000000, 0);
  *&v24.f64[0] = v28;
  v25 = v30.n128_f64[0];
  *&v26.f64[0] = v30.n128_u64[0];
  *&v26.f64[1] = v29.n128_u64[0];
  *a3 = v23;
  *(a3 + 8) = 0x4051000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0x3FF8000000000000;
  *(a3 + 32) = 0;
  *(a3 + 40) = v12;
  *(a3 + 48) = vdivq_f64(v24, v26);
  result = v22 / v26.f64[1];
  *(a3 + 64) = v20 / v25;
  *(a3 + 72) = v22 / v26.f64[1];
  *(a3 + 104) = 0;
  return result;
}

void sub_24EEF51C4(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F9479A0;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 32) = sub_24F9273C8();
  *(v8 + 40) = v9;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 48) = sub_24F9273C8();
  *(v8 + 56) = v10;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 64) = sub_24F9273C8();
  *(v8 + 72) = v11;
  if (a1)
  {
    sub_24F926C88();
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v12 = sub_24F926D08();

  v13 = a3 + 60.0;
  sub_24F927898();
  v15 = v14;
  v17 = v16 - a3 / a4;
  sub_24F927898();
  *a2 = v12;
  *(a2 + 8) = 0x4051000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x3FF8000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = v15;
  *(a2 + 56) = v17;
  *(a2 + 64) = v19;
  *(a2 + 72) = v18 - v13 / a4;
  *(a2 + 104) = 0;
}

unint64_t sub_24EEF537C()
{
  result = qword_27F233500;
  if (!qword_27F233500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233500);
  }

  return result;
}

unint64_t sub_24EEF5408()
{
  result = qword_27F233510;
  if (!qword_27F233510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233508, &qword_24F9AE520);
    sub_24EEF5494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233510);
  }

  return result;
}

unint64_t sub_24EEF5494()
{
  result = qword_27F233518;
  if (!qword_27F233518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233518);
  }

  return result;
}

unint64_t sub_24EEF54FC()
{
  result = qword_27F233520;
  if (!qword_27F233520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233528, &qword_24F9AE548);
    sub_24E86BC28();
    sub_24EEF5408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233520);
  }

  return result;
}

uint64_t sub_24EEF55AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24EEF5698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for OverlaySocialDataPrefetchIntent(uint64_t a1)
{
  result = qword_27F233530;
  if (!qword_27F233530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEF57AC(uint64_t a1)
{
  sub_24E637694(319);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F233540, &type metadata for CommonOnboardingStatus);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EEF5868@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6364A0(v2, boxed_opaque_existential_1);
  *(inited + 88) = 0x4449656C646E7562;
  *(inited + 96) = 0xE800000000000000;
  v6 = type metadata accessor for OverlaySocialDataPrefetchIntent(0);
  v7 = (v2 + *(v6 + 20));
  v9 = *v7;
  v8 = v7[1];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v10 = sub_24E605DB4();
  *(inited + 104) = v9;
  *(inited + 112) = v8;
  *(inited + 136) = v10;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x800000024FA55B30;
  v11 = *(v2 + *(v6 + 24));
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233560, &qword_24F9AE658);
  *(inited + 192) = sub_24EEF61F0();
  *(inited + 160) = v11;

  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24EEF5A38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233558, &qword_24F9AE650);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EEF60DC();
  sub_24F92D128();
  v14 = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for OverlaySocialDataPrefetchIntent(0);
    v13 = 1;
    sub_24F92CCA8();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_24EBB9844();
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EEF5C28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233548, &qword_24F9AE648);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for OverlaySocialDataPrefetchIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EEF60DC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v12;
  v14 = v21;
  type metadata accessor for Player(0);
  v26 = 0;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  v15 = v22;
  sub_24F92CC18();
  sub_24E6365D4(v6, v13);
  v25 = 1;
  v16 = sub_24F92CBC8();
  v17 = (v13 + *(v10 + 20));
  *v17 = v16;
  v17[1] = v18;
  v24 = 2;
  sub_24EBB96D8();
  sub_24F92CC18();
  (*(v14 + 8))(v9, v15);
  *(v13 + *(v10 + 24)) = v23;
  sub_24EEF6130(v13, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EEF6194(v13);
}

unint64_t sub_24EEF5F78()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_24EEF5FD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EEF638C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EEF5FFC(uint64_t a1)
{
  v2 = sub_24EEF60DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EEF6038(uint64_t a1)
{
  v2 = sub_24EEF60DC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EEF60DC()
{
  result = qword_27F233550;
  if (!qword_27F233550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233550);
  }

  return result;
}

uint64_t sub_24EEF6130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlaySocialDataPrefetchIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEF6194(uint64_t a1)
{
  v2 = type metadata accessor for OverlaySocialDataPrefetchIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EEF61F0()
{
  result = qword_27F233568;
  if (!qword_27F233568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233560, &qword_24F9AE658);
    sub_24EBB9898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233568);
  }

  return result;
}

unint64_t sub_24EEF6288()
{
  result = qword_27F233570;
  if (!qword_27F233570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233570);
  }

  return result;
}

unint64_t sub_24EEF62E0()
{
  result = qword_27F233578;
  if (!qword_27F233578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233578);
  }

  return result;
}

unint64_t sub_24EEF6338()
{
  result = qword_27F233580;
  if (!qword_27F233580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233580);
  }

  return result;
}

uint64_t sub_24EEF638C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA55B30 == a2)
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

uint64_t ShelfMarker.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24F92CB88();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_24EEF6520()
{
  result = qword_27F233588;
  if (!qword_27F233588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233588);
  }

  return result;
}

uint64_t sub_24EEF6574()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EEF65E8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EEF663C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_24EEF66C0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24EEF7590(v6);
  return sub_24F92C958();
}

uint64_t sub_24EEF673C()
{
  result = sub_24F92B098();
  qword_27F233590 = result;
  return result;
}

id static NSNotificationName.updateAllActionImplementationWillRun.getter()
{
  if (qword_27F210820 != -1)
  {
    swift_once();
  }

  v1 = qword_27F233590;

  return v1;
}

unint64_t sub_24EEF67EC()
{
  result = qword_27F233618;
  if (!qword_27F233618)
  {
    type metadata accessor for UpdateAllAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233618);
  }

  return result;
}

void sub_24EEF6844(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F928FD8();
  sub_24F92A758();
  v35 = aBlock;
  v36 = v39;
  type metadata accessor for UpdateStore();
  sub_24F92A758();
  v32 = aBlock;
  v4 = MEMORY[0x277D84FA0];
  v45 = MEMORY[0x277D84FA0];
  v5 = MEMORY[0x277D84F90];
  v6 = sub_24E60E870(MEMORY[0x277D84F90]);
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = (v3 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      swift_bridgeObjectRetain_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E615CF4(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_24E615CF4((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;

      sub_24ED7E42C(&aBlock, v9, v10);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v6;
      sub_24E820408(v9, v10, v11, v12, isUniquelyReferenced_nonNull_native);

      v6 = aBlock;
      v8 += 4;
      --v7;
    }

    while (v7);
    v4 = v45;
  }

  v17 = v4 + 56;
  v18 = 1 << *(v4 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v4 + 56);
  v21 = (v18 + 63) >> 6;
  v34 = v4;

  v22 = 0;
  while (v20)
  {
    v23 = v22;
LABEL_17:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = (*(v34 + 48) + ((v23 << 10) | (16 * v24)));
    v27 = *v25;
    v26 = v25[1];
    ObjectType = swift_getObjectType();
    aBlock = v27;
    v39 = v26;
    v44 = 2;
    v28 = *(v36 + 64);

    v28(&aBlock, &v44, ObjectType, v36);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      v29 = sub_24F92B588();

      v30 = swift_allocObject();
      v30[2] = v6;
      v30[3] = v34;
      v30[4] = v35;
      v30[5] = v36;
      v30[6] = a3;
      v42 = sub_24EEF8390;
      v43 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_24EEF7108;
      v41 = &block_descriptor_89;
      v31 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v32 updateAllWithOrder:v29 completionBlock:v31];

      swift_unknownObjectRelease();
      _Block_release(v31);

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_24EEF6C14(char a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a6;
  v75 = a7;
  v13 = sub_24F928AE8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v78 = MEMORY[0x277D84FA0];
  v69 = v17;
  v70 = a8;
  v67 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v14;
  v71 = a5;
  if ((a1 & 1) == 0)
  {
    v78 = a5;

LABEL_20:
    v33 = v32 + 56;
    v34 = 1 << *(v32 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v32 + 56);
    v37 = (v34 + 63) >> 6;
    v72 = v75 + 24;
    v73 = v32;

    v38 = 0;
    v39 = v75;
    while (v36)
    {
      v40 = v38;
      v41 = v73;
LABEL_29:
      v42 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v43 = (*(v41 + 48) + ((v40 << 10) | (16 * v42)));
      v45 = *v43;
      v44 = v43[1];
      v46 = v74;
      ObjectType = swift_getObjectType();
      v76 = v45;
      v77 = v44;
      v48 = swift_allocObject();
      v48[2] = v46;
      v48[3] = v39;
      v48[4] = v45;
      v48[5] = v44;
      v49 = *(v39 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v49(&v76, sub_24EEF83F8, v48, ObjectType, v39);
    }

    v41 = v73;
    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v40 >= v37)
      {
        break;
      }

      v36 = *(v33 + 8 * v40);
      ++v38;
      if (v36)
      {
        v38 = v40;
        goto LABEL_29;
      }
    }

    v50 = v71;
    if (*(v41 + 16) <= *(v71 + 16) >> 3)
    {
      v76 = v71;

      sub_24F7A6B7C(v41);

      v51 = v76;
    }

    else
    {

      v51 = sub_24F7A7450(v41, v50);
    }

    v52 = 0;
    v53 = 1 << *(v51 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v51 + 56);
    v56 = (v53 + 63) >> 6;
    while (v55)
    {
      v57 = v52;
LABEL_42:
      v58 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v59 = (*(v51 + 48) + ((v57 << 10) | (16 * v58)));
      v61 = *v59;
      v60 = v59[1];
      v62 = swift_getObjectType();
      v76 = v61;
      v77 = v60;

      v63.underlyingAdamID._countAndFlagsBits = &v76;
      v63.underlyingAdamID._object = v62;
      AppStateController.clearWaiting(for:)(v63);
    }

    while (1)
    {
      v57 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v57 >= v56)
      {

        v65 = v67;
        v64 = v68;
        v66 = v69;
        (*(v68 + 104))(v67, *MEMORY[0x277D21CA8], v69);
        sub_24F92A9C8();
        (*(v64 + 8))(v65, v66);
        return;
      }

      v55 = *(v51 + 56 + 8 * v57);
      ++v52;
      if (v55)
      {
        v52 = v57;
        goto LABEL_42;
      }
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!(a2 >> 62))
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_19:
    v32 = MEMORY[0x277D84FA0];
    goto LABEL_20;
  }

  v18 = sub_24F92C738();
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v18 >= 1)
  {
    v19 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x253052270](v19, a2, v15);
      }

      else
      {
        v20 = *(a2 + 8 * v19 + 32);
      }

      v21 = v20;
      if ([v20 status] == 1)
      {
        v22 = [v21 bundleID];
        v23 = sub_24F92B0D8();
        v25 = v24;

        if (*(a4 + 16))
        {
          v26 = sub_24E76D644(v23, v25);
          v28 = v27;

          if (v28)
          {
            v29 = (*(a4 + 56) + 16 * v26);
            v30 = *v29;
            v31 = v29[1];

            sub_24ED7E42C(&v76, v30, v31);

            goto LABEL_8;
          }
        }

        else
        {
        }
      }

LABEL_8:
      if (v18 == ++v19)
      {
        v32 = v78;
        goto LABEL_20;
      }
    }
  }

LABEL_47:
  __break(1u);
}

void sub_24EEF7108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_24E69A5C4(0, &qword_27F233620, 0x277CEC3E8);
  v7 = sub_24F92B5A8();

  v8 = a4;
  v6(a2, v7, a4);
}

void sub_24EEF71C0(unint64_t a1)
{
  v33 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x253052270](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 updateState];
      if (v7 > 4 || ((1 << v7) & 0x19) == 0)
      {
      }

      else
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  v33 = sub_24EC4E138(v10, v9);
  v11 = 0;
  sub_24EEF66C0(&v33);
  v12 = v33;
  if ((v33 & 0x8000000000000000) == 0 && (v33 & 0x4000000000000000) == 0)
  {
    v13 = *(v33 + 16);
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_39:
    v15 = MEMORY[0x277D84F90];
LABEL_40:

    v29 = sub_24E8E8DD8(v15);

    v33 = v29;
    sub_24F92A9C8();

    return;
  }

LABEL_38:
  v13 = sub_24F92C738();
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_23:
  v14 = 0;
  v32 = v12 & 0xC000000000000001;
  v15 = MEMORY[0x277D84F90];
  v30 = v13;
  v31 = v12;
  while (1)
  {
    if (v32)
    {
      v16 = MEMORY[0x253052270](v14, v12);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_37;
      }

      v16 = *(v12 + 8 * v14 + 32);
    }

    v17 = v16;
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v33 = [v16 storeItemIdentifier];
    v19 = sub_24F92CD88();
    v21 = v20;
    v22 = [v17 bundleIdentifier];
    if (!v22)
    {
      break;
    }

    v23 = v22;
    v24 = sub_24F92B0D8();
    v26 = v25;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_24E6197CC(0, v15[2] + 1, 1, v15);
    }

    v11 = v15[2];
    v27 = v15[3];
    if (v11 >= v27 >> 1)
    {
      v15 = sub_24E6197CC((v27 > 1), v11 + 1, 1, v15);
    }

    v15[2] = v11 + 1;
    v28 = &v15[4 * v11];
    v28[4] = v19;
    v28[5] = v21;
    v28[6] = v24;
    v28[7] = v26;
    ++v14;
    v12 = v31;
    if (v18 == v30)
    {
      goto LABEL_40;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_24EEF7500(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_24E69A5C4(0, &qword_27F225148, 0x277CEC488);
  v3 = sub_24F92B5A8();

  v2(v3);
}

void sub_24EEF7590(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24E69A5C4(0, &qword_27F225148, 0x277CEC488);
        v6 = sub_24F92B618();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_24EEF777C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24EEF76A4(0, v2, 1, a1);
  }
}

void sub_24EEF76A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      v14 = sub_24EC4CDDC(v12, v13);

      if ((v14 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24EEF777C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_24E86164C(v8);
    }

    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = *&v8[16 * v86];
        v88 = *&v8[16 * v86 + 24];
        sub_24EEF7D84((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v86 + 16]), (*a3 + 8 * v88), v6);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v88 < v87)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E86164C(v8);
        }

        if (v86 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v8[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        sub_24E8615C0(v86 - 1);
        v86 = *(v8 + 2);
        if (v86 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v91 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = v11;
      v16 = v14;
      v17 = sub_24EC4CDDC(v15, v16);

      v93 = v7;
      v18 = v7 + 2;
      while (v6 != v18)
      {
        v19 = *(v13 - 1);
        v20 = *v13;
        v21 = v19;
        LODWORD(v19) = sub_24EC4CDDC(v20, v21) & 1;

        ++v18;
        ++v13;
        if ((v17 & 1) != v19)
        {
          v6 = v18 - 1;
          break;
        }
      }

      if (v17)
      {
        v9 = v93;
        if (v6 < v93)
        {
          goto LABEL_117;
        }

        if (v93 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v93;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v25 = *(v26 + v5);
              *(v26 + v5) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v5 += 8;
          }

          while (v24 < v23);
        }

        v10 = v6;
        v5 = v91;
      }

      else
      {
        v10 = v6;
        v5 = v91;
        v9 = v93;
      }
    }

    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v28 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v28)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24E615ED8(0, *(v8 + 2) + 1, 1, v8);
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v8 = sub_24E615ED8((v40 > 1), v41 + 1, 1, v8);
    }

    *(v8 + 2) = v42;
    v43 = &v8[16 * v41];
    *(v43 + 4) = v9;
    *(v43 + 5) = v10;
    v44 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v7 = v10;
    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_104;
          }

          v62 = &v8[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_107;
          }

          v68 = &v8[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_111;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v72 = &v8[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_71:
        if (v67)
        {
          goto LABEL_106;
        }

        v75 = &v8[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_109;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_78:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v84 = *&v8[16 * v83 + 32];
        v6 = *&v8[16 * v45 + 40];
        sub_24EEF7D84((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v45 + 32]), (*a3 + 8 * v6), v44);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v6 < v84)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E86164C(v8);
        }

        if (v83 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v85 = &v8[16 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v6;
        sub_24E8615C0(v45);
        v42 = *(v8 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v8[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_102;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_103;
      }

      v57 = &v8[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_105;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_108;
      }

      if (v61 >= v53)
      {
        v79 = &v8[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_112;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v92 = v5;
  v94 = v9;
  v29 = *a3;
  v30 = *a3 + 8 * v10 - 8;
  v31 = v9 - v10;
  v96 = v28;
LABEL_30:
  v97 = v10;
  v32 = *(v29 + 8 * v10);
  v6 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *v33;
    v35 = v32;
    v36 = v34;
    v37 = sub_24EC4CDDC(v35, v36);

    if ((v37 & 1) == 0)
    {
LABEL_29:
      v10 = v97 + 1;
      v30 += 8;
      --v31;
      if (v97 + 1 != v96)
      {
        goto LABEL_30;
      }

      v10 = v96;
      v5 = v92;
      v9 = v94;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v38 = *v33;
    v32 = *(v33 + 8);
    *v33 = v32;
    *(v33 + 8) = v38;
    v33 -= 8;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_24EEF7D84(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = sub_24EC4CDDC(v18, v19);

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = sub_24EC4CDDC(v28, v29);

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_24EEF800C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233628, &unk_24F9AE8A0);
  v3 = sub_24F92A9E8();
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering))
  {
    v7[0] = *(a1 + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering);
    sub_24F92A9C8();
  }

  else
  {
    type metadata accessor for UpdateStore();
    sub_24F928FD8();
    sub_24F92A758();
    v4 = v7[0];
    v7[4] = sub_24EEF844C;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_24EEF7500;
    v7[3] = &block_descriptor_9;
    v5 = _Block_copy(v7);

    [v4 getUpdatesWithCompletionBlock_];
    _Block_release(v5);
  }

  return v3;
}

uint64_t sub_24EEF8150(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v4 = sub_24F92A9E8();
  v5 = [objc_opt_self() defaultCenter];
  if (qword_27F210820 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_27F233590 object:a1];

  sub_24EEF800C(a1, a2);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v4;
  v7 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  swift_retain_n();

  v8 = sub_24F92BEF8();
  v10[3] = v7;
  v10[4] = MEMORY[0x277D225C0];
  v10[0] = v8;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v4;
}

uint64_t sub_24EEF82F8()
{

  return swift_deallocObject();
}

uint64_t sub_24EEF8340()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EEF83B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24EEF83F8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3.underlyingAdamID._object = swift_getObjectType();
  v4[0] = v2;
  v4[1] = v1;
  v3.underlyingAdamID._countAndFlagsBits = v4;
  AppStateController.clearWaiting(for:)(v3);
}

__C::CGRect __swiftcall CGRect.withLayoutDirection(using:relativeTo:)(UITraitCollection using, __C::CGRect relativeTo)
{
  height = relativeTo.size.height;
  width = relativeTo.size.width;
  y = relativeTo.origin.y;
  x = relativeTo.origin.x;
  sub_24F92BF88();

  v6 = sub_24F92C1E8(x, y, width, height);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

__C::CGRect __swiftcall CGRect.withLayoutDirection(_:relativeTo:)(UIUserInterfaceLayoutDirection _, __C::CGRect relativeTo)
{
  v2 = sub_24F92C1E8(relativeTo.origin.x, relativeTo.origin.y, relativeTo.size.width, relativeTo.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t VerticalFlexStackLayout.Metrics.init(fixedChildHeight:minInterChildSpacing:maxInterChildSpacing:layoutMargins:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a10;
  *(a7 + 72) = a11;
  return result;
}

__n128 VerticalFlexStackLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_24EEF8560@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double VerticalFlexStackLayout.init(metrics:children:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v3;
  *(a3 + 64) = a1[4];
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 80) = a2;
  v5 = *(a2 + 16);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  result = (v5 - 1);
  *(a3 + 88) = result;
  return result;
}

__n128 VerticalFlexStackLayout.metrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

JUMeasurements __swiftcall VerticalFlexStackLayout.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 80);
  v9 = *(v2 + 88);
  v26 = *(v2 + 32);
  sub_24F92C228();
  v12 = v11;
  if (v4)
  {
    v13 = *(v8 + 16);
    if (v13)
    {
      v14 = v8 + 32;
      v15 = 0.0;
      do
      {
        sub_24E615E00(v14, v27);
        __swift_project_boxed_opaque_existential_1(v27, v27[3]);
        sub_24F922C48();
        v15 = v15 + v16;
        __swift_destroy_boxed_opaque_existential_1(v27);
        v14 += 40;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
    }
  }

  else
  {
    v15 = v3 * *(v8 + 16);
  }

  if (v12 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  if (v6)
  {
    v18 = v17;
  }

  else
  {
    v18 = v5 * v9 + v15;
  }

  v10.n128_f64[0] = v26 * v9 + v15;
  if (v15 > v12)
  {
    v19 = v15;
  }

  else
  {
    v19 = v12;
  }

  if (v7)
  {
    v20 = v19;
  }

  else
  {
    v20 = v26 * v9 + v15;
  }

  MEMORY[0x253048030](*&v18, 0, *&v20, 0, v10);
  LOBYTE(v27[0]) = v21 & 1;
  sub_24F9226B8();
  sub_24F92C248();
  v24 = 0.0;
  v25 = v23;
  result.var3 = v24;
  result.var2 = v25;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}