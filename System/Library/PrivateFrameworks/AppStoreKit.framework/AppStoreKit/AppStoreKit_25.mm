void sub_1E15749A0(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 filters];
  v6 = MEMORY[0x1E69E7CA0];
  if (v5)
  {
    v7 = v5;
    v8 = sub_1E1AF621C();

    v9 = *(v8 + 16);
    if (!v9)
    {
LABEL_19:

      return;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v10 = 0;
  v11 = v8 + 32;
  v24 = v8;
  while (v10 < *(v8 + 16))
  {
    sub_1E137A5C4(v11, v26);
    sub_1E13006E4(0, &qword_1ECEB5A60, 0x1E6979378);
    if (swift_dynamicCast())
    {
      v12 = [v25 type];
      if (v12)
      {
        v13 = v9;
        v14 = v6;
        v15 = v12;
        v16 = a1;
        v17 = a2;
        v18 = sub_1E1AF5DFC();
        v20 = v19;

        v21 = v18;
        a2 = v17;
        if (v21 == v16 && v20 == v17)
        {

          goto LABEL_19;
        }

        a1 = v16;
        v23 = sub_1E1AF74AC();

        if (v23)
        {
          goto LABEL_19;
        }

        v6 = v14;
        v9 = v13;
        v8 = v24;
      }

      else
      {
      }
    }

    ++v10;
    v11 += 32;
    if (v9 == v10)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t static LayerVisualEffect.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  sub_1E13006E4(0, &qword_1EE1E31E0, 0x1E69E58C0);
  v7 = v2;
  v8 = v4;
  v9 = sub_1E1AF6D0C();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v3;
  v11 = v5;
  v12 = sub_1E1AF6D0C();

  return v12 & 1;
}

uint64_t sub_1E1574C68(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  sub_1E13006E4(0, &qword_1EE1E31E0, 0x1E69E58C0);
  v7 = v2;
  v8 = v4;
  v9 = sub_1E1AF6D0C();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v3;
  v11 = v5;
  v12 = sub_1E1AF6D0C();

  return v12 & 1;
}

uint64_t sub_1E1574D44()
{
  v0 = sub_1E1AF5DFC();
  v2 = v1;
  sub_1E13006E4(0, &qword_1EE1E3208, 0x1E69DC888);
  v3 = sub_1E1AF6CAC();
  result = sub_1E1AF6CAC();
  qword_1ECEB5A20 = v0;
  *algn_1ECEB5A28 = v2;
  qword_1ECEB5A30 = v3;
  unk_1ECEB5A38 = result;
  return result;
}

id static LayerVisualEffect.darkening.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECEB0E88 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1ECEB5A28;
  v3 = qword_1ECEB5A30;
  v2 = unk_1ECEB5A38;
  v7 = unk_1ECEB5A38;
  *a1 = qword_1ECEB5A20;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;

  v4 = v3;

  return v7;
}

uint64_t sub_1E1574E7C()
{
  v0 = sub_1E1AF5DFC();
  v2 = v1;
  sub_1E13006E4(0, &qword_1EE1E3208, 0x1E69DC888);
  v3 = sub_1E1AF6CAC();
  v4 = [v3 colorWithAlphaComponent_];

  result = sub_1E1AF6CAC();
  qword_1ECEB5A40 = v0;
  *algn_1ECEB5A48 = v2;
  qword_1ECEB5A50 = v4;
  unk_1ECEB5A58 = result;
  return result;
}

id static LayerVisualEffect.plusL.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECEB0E90 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1ECEB5A48;
  v3 = qword_1ECEB5A50;
  v2 = unk_1ECEB5A58;
  v7 = unk_1ECEB5A58;
  *a1 = qword_1ECEB5A40;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;

  v4 = v3;

  return v7;
}

id sub_1E1574FFC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = objc_opt_self();
  result = [v6 valueWithNewObjectInContext_];
  if (!result)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = 0xD000000000000018;
  v9 = "didSubscribeToArcade";
  v10 = 0xD00000000000001CLL;
  v11 = "didBecomeArcadeTrialEligible";
  v12 = 0xD000000000000016;
  if (v3 != 4)
  {
    v12 = 0xD000000000000013;
    v11 = "didBecomeNonSubscribed";
  }

  if (v3 != 3)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = "arcadeTabDidComeOnScreen";
  if (v3 == 1)
  {
    v14 = 0xD000000000000013;
  }

  else
  {
    v14 = 0xD000000000000014;
  }

  if (v3 != 1)
  {
    v13 = "arcadePageDidAppear";
  }

  if (v3)
  {
    v8 = v14;
  }

  else
  {
    v13 = "";
  }

  if (v3 <= 2)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  if (v3 <= 2)
  {
    v16 = v13;
  }

  else
  {
    v16 = v9;
  }

  v26[0] = v15;
  v26[1] = v16 | 0x8000000000000000;
  v17 = result;
  v18 = &selRef_remoteDownloadIdentifiersDidChange_;
  v19 = [v6 valueWithObject:sub_1E1AF755C() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v19)
  {
    goto LABEL_30;
  }

  sub_1E1AF6C5C();
  v26[0] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  v20 = [v6 valueWithObject:sub_1E1AF755C() inContext:a1];
  result = swift_unknownObjectRelease();
  if (!v20)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1E1AF6C5C();
  v21 = *(v5 + 16);
  if (v21)
  {
    v22 = sub_1E1545A54(v21, 0);
    v23 = sub_1E1546A64(v26, v22 + 4, v21, v5);
    v24 = v26[0];

    result = sub_1E1337ECC(v24);
    if (v23 == v21)
    {
      v18 = &selRef_remoteDownloadIdentifiersDidChange_;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_29;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v26[0] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  v25 = [v6 v18[3]];
  result = swift_unknownObjectRelease();
  if (v25)
  {
    sub_1E1AF6C5C();

    return v17;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1E1575318()
{
  result = qword_1ECEB5A68;
  if (!qword_1ECEB5A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5A68);
  }

  return result;
}

unint64_t sub_1E1575374()
{
  result = qword_1ECEB5A70;
  if (!qword_1ECEB5A70)
  {
    type metadata accessor for AppStoreEngagementTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5A70);
  }

  return result;
}

uint64_t sub_1E15753CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = 0;
  if (result && a2)
  {
    type metadata accessor for AdvertsSearchResult(0);
    result = swift_dynamicCastClass();
    v4 = result == 0;
  }

  *a3 = v4;
  return result;
}

uint64_t SearchResultsDecorationsProvider.SeparatorType.separator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF1E4C();
  v6 = MEMORY[0x1EEE9AC00](v3);
  if (*v1)
  {
    (*(v5 + 104))(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69ABBA0], v6);
    v11[4] = MEMORY[0x1E69E63B0];
    v11[5] = MEMORY[0x1E69ABBA8];
    v11[1] = 0x4034000000000000;
    sub_1E1AF1E5C();
    v7 = sub_1E1AF1E7C();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = sub_1E1AF1E7C();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t SearchResultsDecorationsProvider.SeparatorType.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E1575668()
{
  result = qword_1ECEB5A78;
  if (!qword_1ECEB5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5A78);
  }

  return result;
}

id DynamicTypeButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DynamicTypeButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory] = 0;
  v9 = OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCase;
  v10 = sub_1E1AF12AC();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for DynamicTypeButton(0);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t type metadata accessor for DynamicTypeButton(uint64_t a1)
{
  result = qword_1EE1F1698;
  if (!qword_1EE1F1698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *DynamicTypeButton.__allocating_init(useCase:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v6 = sub_1E1AF12AC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, a1, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  v9 = v5;
  sub_1E1575B3C(v4, v5 + v8);
  swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0x108))(a1);

  (*(v7 + 8))(a1, v6);
  return v9;
}

uint64_t sub_1E1575B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id DynamicTypeButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DynamicTypeButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory) = 0;
  v1 = OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCase;
  v2 = sub_1E1AF12AC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_1E1AF71FC();
  __break(1u);
}

double sub_1E1575D5C(double a1, double a2)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for DynamicTypeButton(0);
  objc_msgSendSuper2(&v10, sel_sizeThatFits_, a1, a2);
  v6 = v5;
  v7 = [v2 titleLabel];
  if (v7)
  {
    v8 = v7;
    [v7 measurementsWithFitting:v2 in:{a1, a2}];
  }

  return v6;
}

id sub_1E1575EE8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];
  v3 = sub_1E1AF5DFC();
  v5 = v4;
  if (v3 == sub_1E1AF5DFC() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1E1AF74AC();

    if ((v8 & 1) == 0)
    {
      return v1;
    }
  }

  sub_1E13006E4(0, &qword_1EE1E3428, 0x1E69DD1B8);
  v10 = sub_1E1AF69AC();

  return v10;
}

void sub_1E1575FF4(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x100);
  v5 = v4();
  v6 = [v5 preferredContentSizeCategory];

  v7 = *&v2[OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory];
  *&v2[OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory] = v6;

  sub_1E13006E4(0, &qword_1EE1E32B0, 0x1E69DB878);
  v8 = v4();
  v9 = MEMORY[0x1E68FF8C0](a1, v8);

  [v2 _setFont_];
}

uint64_t sub_1E1576110(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_1E13E4A9C(a1, &v8 - v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x118))(v6);
}

uint64_t sub_1E15761E8(uint64_t a1)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5A80, &qword_1E1B18A40);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = sub_1E1AF12AC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  v33 = v1;
  sub_1E13E4A9C(v1 + v19, v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    return sub_1E1308058(v12, &qword_1ECEB34E0, &qword_1E1B189E0);
  }

  v30 = *(v14 + 32);
  v30(v18, v12, v13);
  v22 = *(v14 + 16);
  v31 = v18;
  v22(v9, v18, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  v23 = *(v34 + 48);
  sub_1E13E4A9C(v9, v3);
  sub_1E13E4A9C(v35, &v3[v23]);
  if (v20(v3, 1, v13) == 1)
  {
    sub_1E1308058(v9, &qword_1ECEB34E0, &qword_1E1B189E0);
    if (v20(&v3[v23], 1, v13) == 1)
    {
      sub_1E1308058(v3, &qword_1ECEB34E0, &qword_1E1B189E0);
      return (*(v14 + 8))(v31, v13);
    }

    goto LABEL_8;
  }

  v24 = v6;
  sub_1E13E4A9C(v3, v6);
  if (v20(&v3[v23], 1, v13) == 1)
  {
    sub_1E1308058(v9, &qword_1ECEB34E0, &qword_1E1B189E0);
    (*(v14 + 8))(v6, v13);
LABEL_8:
    sub_1E1308058(v3, &qword_1ECEB5A80, &qword_1E1B18A40);
LABEL_9:
    v25 = v31;
    (*((*MEMORY[0x1E69E7D40] & *v33) + 0x108))(v31);
    return (*(v14 + 8))(v25, v13);
  }

  v26 = v32;
  v30(v32, &v3[v23], v13);
  sub_1E1577158();
  v27 = sub_1E1AF5DAC();
  v28 = *(v14 + 8);
  v28(v26, v13);
  sub_1E1308058(v9, &qword_1ECEB34E0, &qword_1E1B189E0);
  v28(v24, v13);
  sub_1E1308058(v3, &qword_1ECEB34E0, &qword_1E1B189E0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v28)(v31, v13);
}

uint64_t sub_1E15766C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  return sub_1E13E4A9C(v1 + v3, a1);
}

uint64_t sub_1E157671C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  sub_1E13E4A9C(v1 + v6, v5);
  swift_beginAccess();
  sub_1E1576EA8(a1, v1 + v6);
  swift_endAccess();
  sub_1E15761E8(v5);
  sub_1E1308058(a1, &qword_1ECEB34E0, &qword_1E1B189E0);
  return sub_1E1308058(v5, &qword_1ECEB34E0, &qword_1E1B189E0);
}

void (*sub_1E1576820(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCase;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1E13E4A9C(v1 + v9, v8);
  return sub_1E1576940;
}

void sub_1E1576940(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1E13E4A9C(*(*a1 + 12), v6);
    sub_1E13E4A9C(v7 + v4, v5);
    swift_beginAccess();
    sub_1E1576EA8(v6, v7 + v4);
    swift_endAccess();
    sub_1E15761E8(v5);
    sub_1E1308058(v5, &qword_1ECEB34E0, &qword_1E1B189E0);
  }

  else
  {
    sub_1E13E4A9C(v7 + v4, v6);
    swift_beginAccess();
    sub_1E1576EA8(v3, v7 + v4);
    swift_endAccess();
    sub_1E15761E8(v6);
  }

  sub_1E1308058(v6, &qword_1ECEB34E0, &qword_1E1B189E0);
  sub_1E1308058(v3, &qword_1ECEB34E0, &qword_1E1B189E0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1E1576A7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1E1AF12AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTypeButton(0);
  v21.receiver = v1;
  v21.super_class = v10;
  v11 = objc_msgSendSuper2(&v21, sel_traitCollectionDidChange_, a1);
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))(v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1E1308058(v5, &qword_1ECEB34E0, &qword_1E1B189E0);
  }

  (*(v7 + 32))(v9, v5, v6);
  v14 = [v1 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!*(v1 + OBJC_IVAR____TtC11AppStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory))
  {

    goto LABEL_9;
  }

  v16 = sub_1E1AF5DFC();
  v18 = v17;
  if (v16 != sub_1E1AF5DFC() || v18 != v19)
  {
    v20 = sub_1E1AF74AC();

    if (v20)
    {
      return (*(v7 + 8))(v9, v6);
    }

LABEL_9:
    (*((*v12 & *v1) + 0x108))(v9);
    return (*(v7 + 8))(v9, v6);
  }

  return (*(v7 + 8))(v9, v6);
}

id DynamicTypeButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E1576EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1E1576F20(uint64_t a1)
{
  sub_1E1577100(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E1577100(uint64_t a1)
{
  if (!qword_1EE1E3CD0)
  {
    sub_1E1AF12AC();
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1E3CD0);
    }
  }
}

unint64_t sub_1E1577158()
{
  result = qword_1EE1E3CD8;
  if (!qword_1EE1E3CD8)
  {
    sub_1E1AF12AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3CD8);
  }

  return result;
}

char *DynamicTypeTextView.__allocating_init(useCase:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = [objc_allocWithZone(v1) initWithFrame_];
  v7 = sub_1E1AF12AC();
  v8 = *(v7 - 8);
  (*(v8 + 32))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  v10 = v6;
  sub_1E13619D8(v5, v6 + v9, &qword_1ECEB34E0, &qword_1E1B189E0);
  swift_endAccess();

  return v10;
}

char *DynamicTypeTextView.__allocating_init(textStyle:)(__int128 *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFrame_];
  sub_1E1308EC0(a1, v7);
  v4 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  v5 = v3;
  sub_1E13619D8(v7, v3 + v4, &qword_1ECEB5A88, &qword_1E1B18A48);
  swift_endAccess();

  return v5;
}

id DynamicTypeTextView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DynamicTypeTextView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_fontUseCase;
  v10 = sub_1E1AF12AC();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_contentSizeCategoryMapping];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v4[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedFont] = 0;
  *&v4[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_hyphenationFactor] = 0;
  *&v4[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedTextColor] = 0;
  v4[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes] = 1;
  v4[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_isUpdatingAttributedText] = 0;
  v4[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_isLinkStyleTextView] = 0;
  v4[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_directionalTextAlignment] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for DynamicTypeTextView(0);
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_textContainer_, 0, a1, a2, a3, a4);
  sub_1E157768C();

  return v13;
}

uint64_t type metadata accessor for DynamicTypeTextView(uint64_t a1)
{
  result = qword_1EE1DCEB0;
  if (!qword_1EE1DCEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DynamicTypeTextView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1E157768C()
{
  swift_getObjectType();
  [v0 setTextContainerInset_];
  v1 = [v0 textContainer];
  [v1 setLineFragmentPadding_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5A90, &qword_1E1B18A50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  v3 = sub_1E1AF1FDC();
  v4 = MEMORY[0x1E69DC2B0];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1E1AF6BFC();
  swift_unknownObjectRelease();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B02CC0;
  v6 = sub_1E1AF1ECC();
  v7 = MEMORY[0x1E69DC090];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_1E1AF6BFC();
  swift_unknownObjectRelease();

  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v0 selector:sel_buttonShapesDidChange name:*MEMORY[0x1E69DD8A8] object:0];
}

id sub_1E1577850()
{
  result = [v0 text];
  if (result)
  {

    result = [v0 text];
    if (result)
    {
      v2 = result;
      sub_1E1AF5DFC();

      v3 = sub_1E1AF5F1C();

      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_1E15778F8(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 textContainer];
  v4 = [v3 maximumNumberOfLines];

  *a1 = v4;
  return sub_1E1577974;
}

void sub_1E1577980(uint64_t *a1, id *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = [*a2 textContainer];
  [v7 *a5];
}

id sub_1E15779F4(SEL *a1)
{
  v3 = [v1 textContainer];
  v4 = [v3 *a1];

  return v4;
}

void sub_1E1577A50(uint64_t a1, SEL *a2)
{
  v5 = [v2 textContainer];
  [v5 *a2];
}

void (*sub_1E1577AC0(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 textContainer];
  v4 = [v3 lineBreakMode];

  *a1 = v4;
  return sub_1E1577B3C;
}

void sub_1E1577B48(uint64_t *a1, uint64_t a2, SEL *a3)
{
  v4 = *a1;
  v5 = [a1[1] textContainer];
  [v5 *a3];
}

uint64_t sub_1E1577BB0()
{
  v1 = sub_1E1AEF4AC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 text];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1E1AF5DFC();
    v10 = v9;

    v14[0] = v8;
    v14[1] = v10;
    sub_1E1AEF47C();
    sub_1E13B8AA4();
    sub_1E1AF6DEC();
    LOBYTE(v7) = v11;
    (*(v2 + 8))(v5, v1);

    v12 = v7 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

double sub_1E1577CF8()
{
  v1 = [v0 font];
  if (!v1)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  v2 = v1;
  sub_1E1AF6BAC();
  v4 = v3;

  return v4;
}

uint64_t sub_1E1577D80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1E134FD1C(a1, &v6 - v3, &qword_1ECEB34E0, &qword_1E1B189E0);
  return sub_1E1577E94(v4);
}

uint64_t sub_1E1577E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB34E0, &qword_1E1B189E0);
}

uint64_t sub_1E1577E94(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - v4 + 16;
  v6 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  sub_1E137F8F8(a1, v1 + v6, &qword_1ECEB34E0, &qword_1E1B189E0);
  swift_endAccess();
  sub_1E134FD1C(v1 + v6, v5, &qword_1ECEB34E0, &qword_1E1B189E0);
  v7 = sub_1E1AF12AC();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1E1308058(a1, &qword_1ECEB34E0, &qword_1E1B189E0);
    a1 = v5;
  }

  else
  {
    sub_1E1308058(v5, &qword_1ECEB34E0, &qword_1E1B189E0);
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v8 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
    swift_beginAccess();
    sub_1E137F8F8(v12, v1 + v8, &qword_1ECEB5A88, &qword_1E1B18A48);
    swift_endAccess();
    sub_1E1578768();
    v9 = sub_1E1308058(v12, &qword_1ECEB5A88, &qword_1E1B18A48);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x208))(v9);
  }

  return sub_1E1308058(a1, &qword_1ECEB34E0, &qword_1E1B189E0);
}

void (*sub_1E15780A0(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_fontUseCase;
  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  swift_beginAccess();
  return sub_1E157816C;
}

void sub_1E157816C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[12];
    sub_1E134FD1C(v3[11] + v3[13], v4, &qword_1ECEB34E0, &qword_1E1B189E0);
    v5 = sub_1E1AF12AC();
    v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
    sub_1E1308058(v4, &qword_1ECEB34E0, &qword_1E1B189E0);
    if (v6 != 1)
    {
      v7 = v3[11];
      *v3 = 0u;
      *(v3 + 1) = 0u;
      v3[4] = 0;
      v8 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
      swift_beginAccess();
      sub_1E137F8F8(v3, v7 + v8, &qword_1ECEB5A88, &qword_1E1B18A48);
      swift_endAccess();
      sub_1E1578768();
      v9 = sub_1E1308058(v3, &qword_1ECEB5A88, &qword_1E1B18A48);
      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x208))(v9);
    }
  }

  free(v3[12]);

  free(v3);
}

uint64_t sub_1E1578300@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E157C234;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4, v5);
}

uint64_t sub_1E15783A0(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E157C22C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  v8 = (v7 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v6;
  v8[1] = v5;
  sub_1E1300E34(v3, v4);
  sub_1E1300E34(v6, v5);
  v11 = sub_1E1300EA8(v9, v10);
  (*((*MEMORY[0x1E69E7D40] & *v7) + 0x208))(v11);
  return sub_1E1300EA8(v6, v5);
}

uint64_t sub_1E15784CC()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v2 = *v1;
  sub_1E1300E34(*v1, v1[1]);
  return v2;
}

uint64_t sub_1E1578528(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1E1300E34(a1, a2);
  v8 = sub_1E1300EA8(v6, v7);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x208))(v8);
  return sub_1E1300EA8(a1, a2);
}

uint64_t (*sub_1E15785F8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E157865C;
}

uint64_t sub_1E157865C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x208))(result);
  }

  return result;
}

uint64_t sub_1E15786C8(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v6, &qword_1ECEB5A88, &qword_1E1B18A48);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_1E137F8F8(v6, v3 + v4, &qword_1ECEB5A88, &qword_1E1B18A48);
  swift_endAccess();
  sub_1E1578768();
  return sub_1E1308058(v6, &qword_1ECEB5A88, &qword_1E1B18A48);
}

uint64_t sub_1E1578768()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v7, &v18, &qword_1ECEB5A88, &qword_1E1B18A48);
  v8 = *(&v19 + 1);
  result = sub_1E1308058(&v18, &qword_1ECEB5A88, &qword_1E1B18A48);
  if (v8)
  {
    v10 = sub_1E1AF12AC();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 1, 1, v10);
    v12 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_fontUseCase;
    swift_beginAccess();
    sub_1E137F8F8(v6, v0 + v12, &qword_1ECEB34E0, &qword_1E1B189E0);
    swift_endAccess();
    sub_1E134FD1C(v0 + v12, v3, &qword_1ECEB34E0, &qword_1E1B189E0);
    v13 = (*(v11 + 48))(v3, 1, v10);
    v14 = MEMORY[0x1E69E7D40];
    if (v13 == 1)
    {
      sub_1E1308058(v6, &qword_1ECEB34E0, &qword_1E1B189E0);
      v15 = sub_1E1308058(v3, &qword_1ECEB34E0, &qword_1E1B189E0);
    }

    else
    {
      sub_1E1308058(v3, &qword_1ECEB34E0, &qword_1E1B189E0);
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      swift_beginAccess();
      sub_1E137F8F8(&v18, v0 + v7, &qword_1ECEB5A88, &qword_1E1B18A48);
      swift_endAccess();
      sub_1E1578768();
      v16 = sub_1E1308058(&v18, &qword_1ECEB5A88, &qword_1E1B18A48);
      (*((*v14 & *v0) + 0x208))(v16);
      v15 = sub_1E1308058(v6, &qword_1ECEB34E0, &qword_1E1B189E0);
    }

    return (*((*v14 & *v0) + 0x208))(v15);
  }

  return result;
}

uint64_t sub_1E1578A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB5A88, &qword_1E1B18A48);
}

uint64_t sub_1E1578B04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_1E137F8F8(a1, v1 + v3, &qword_1ECEB5A88, &qword_1E1B18A48);
  swift_endAccess();
  sub_1E1578768();
  return sub_1E1308058(a1, &qword_1ECEB5A88, &qword_1E1B18A48);
}

uint64_t (*sub_1E1578B98(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E1578BFC;
}

void sub_1E1578C88(void *a1)
{
  sub_1E157B810(a1);
}

float sub_1E1578CC0()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_hyphenationFactor;
  swift_beginAccess();
  return *v1;
}

void sub_1E1578D08(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_hyphenationFactor);
  swift_beginAccess();
  *v3 = a1;
  sub_1E1579EB0();
}

uint64_t (*sub_1E1578D60(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E157C270;
}

void sub_1E1578E7C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DynamicTypeTextView(0);
  objc_msgSendSuper2(&v5, sel_setTextColor_, a1);
  v3 = [v1 textColor];
  v4 = *&v1[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedTextColor];
  *&v1[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedTextColor] = v3;

  sub_1E1579EB0();
}

id sub_1E1578F04(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for DynamicTypeTextView(0);
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

id sub_1E1578F6C(SEL *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DynamicTypeTextView(0);
  v3 = objc_msgSendSuper2(&v5, *a1);

  return v3;
}

void sub_1E1579044(void *a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DynamicTypeTextView(0);
  objc_msgSendSuper2(&v3, sel_setAttributedText_, a1);
  if ((*(v1 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_isUpdatingAttributedText) & 1) == 0)
  {
    sub_1E1579EB0();
  }
}

uint64_t sub_1E15790A4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E15790E8(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1E1579EB0();
}

uint64_t (*sub_1E157913C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E15791A0;
}

uint64_t sub_1E15791B8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1E15792B0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DynamicTypeTextView(0);
  v1 = objc_msgSendSuper2(&v5, sel_text);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E1AF5DFC();

  return v3;
}

void sub_1E15793C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1E1AF5DBC();
  }

  else
  {
    v3 = 0;
  }

  v4.receiver = v2;
  v4.super_class = type metadata accessor for DynamicTypeTextView(0);
  objc_msgSendSuper2(&v4, sel_setText_, v3);

  sub_1E1579EB0();
}

id sub_1E157947C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeTextView(0);
  return objc_msgSendSuper2(&v2, sel_textAlignment);
}

id sub_1E1579554(uint64_t a1)
{
  v5 = 0;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F0))(&v5);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DynamicTypeTextView(0);
  return objc_msgSendSuper2(&v4, sel_setTextAlignment_, a1);
}

void sub_1E15795E0(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_directionalTextAlignment;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1E1579634(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_directionalTextAlignment;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v2 != v4)
  {
    sub_1E1579780();
  }
}

void (*sub_1E1579694(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_directionalTextAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1E1579728;
}

void sub_1E1579728(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (v3 != v6)
  {
    sub_1E1579780();
  }

  free(v2);
}

void *sub_1E1579780()
{
  v1 = v0;
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))(&v11);
  if (v11)
  {
    if (v11 == 1)
    {
      v3 = [v0 traitCollection];
      v4 = sub_1E1AF697C();

      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v9.receiver = v1;
      v9.super_class = type metadata accessor for DynamicTypeTextView(0);
      return objc_msgSendSuper2(&v9, sel_setTextAlignment_, v5);
    }

    else
    {
      v6 = [v0 traitCollection];
      v7 = sub_1E1AF697C();

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }

      v10.receiver = v1;
      v10.super_class = type metadata accessor for DynamicTypeTextView(0);
      return objc_msgSendSuper2(&v10, sel_setTextAlignment_, v8);
    }
  }

  return result;
}

void sub_1E15798A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19[-v3];
  v5 = sub_1E1AF12AC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [v0 setAdjustsFontForContentSizeCategory_];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x138))(v10);
  v20 = v1;
  v12 = sub_1E1AF69BC();

  v13 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_1E134FD1C(&v1[v13], v23, &qword_1ECEB5A88, &qword_1E1B18A48);
  if (v24)
  {
    sub_1E1300B24(v23, v21);
    sub_1E1308058(v23, &qword_1ECEB5A88, &qword_1E1B18A48);
    __swift_project_boxed_opaque_existential_1Tm(v21, v21[3]);
    v14 = sub_1E1AF15AC();
    __swift_destroy_boxed_opaque_existential_1(v21);
LABEL_6:
    v16 = v14;
    goto LABEL_7;
  }

  sub_1E1308058(v23, &qword_1ECEB5A88, &qword_1E1B18A48);
  v15 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_fontUseCase;
  swift_beginAccess();
  sub_1E134FD1C(&v1[v15], v4, &qword_1ECEB34E0, &qword_1E1B189E0);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v9, v4, v5);
    sub_1E13006E4(0, &qword_1EE1E32B0, 0x1E69DB878);
    v14 = MEMORY[0x1E68FF8C0](v9, v12);
    (*(v6 + 8))(v9, v5);
    goto LABEL_6;
  }

  sub_1E1308058(v4, &qword_1ECEB34E0, &qword_1E1B189E0);
  v14 = 0;
LABEL_7:
  v17 = type metadata accessor for DynamicTypeTextView(0);
  v22.receiver = v1;
  v22.super_class = v17;
  objc_msgSendSuper2(&v22, sel_setFont_, v14);
  v18 = *&v1[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedFont];
  *&v1[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedFont] = v14;

  sub_1E1579EB0();
}

void sub_1E1579C0C(uint64_t a1, void *a2)
{
  v4 = a2 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_contentSizeCategoryMapping;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);
    v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x138);

    v9 = v7(v8);
    v10 = [v9 preferredContentSizeCategory];

    v5(v10);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF1E9C();
    sub_1E1300EA8(v5, v6);
  }
}

void sub_1E1579D24()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_isLinkStyleTextView) == 1)
  {
    v1 = [v0 attributedText];
    if (v1)
    {
      v2 = v1;
      v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v3 = UIAccessibilityButtonShapesEnabled();
      v4 = *MEMORY[0x1E69DB758];
      if (v3)
      {
        v5 = sub_1E1AF65DC();
        [v6 addAttribute:v4 value:v5 range:{0, objc_msgSend(v6, sel_length)}];
      }

      else
      {
        [v6 removeAttribute:v4 range:{0, objc_msgSend(v6, sel_length)}];
      }

      [v0 setAttributedText_];
    }
  }
}

void sub_1E1579EB0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_isUpdatingAttributedText;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_isUpdatingAttributedText) = 1;
  v3 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    v4 = [v1 textColor];
    if (*(v1 + v3) == 1)
    {
      v16.receiver = v1;
      v16.super_class = type metadata accessor for DynamicTypeTextView(0);
      v5 = objc_msgSendSuper2(&v16, sel_font);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedTextColor);
    v6 = v4;
  }

  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedFont);
  v7 = v5;
LABEL_6:
  v8 = [v1 attributedText];
  if (!v8)
  {
    v9 = [v1 text];
    if (v9)
    {
      v10 = v9;
      sub_1E1AF5DFC();
    }

    v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v12 = sub_1E1AF5DBC();

    v8 = [v11 initWithString_];
  }

  v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))();
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  sub_1E157A9BC(v4, v5, v13);
  v15 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

  [v1 setAttributedText_];
  [v1 setNeedsLayout];

  *(v1 + v2) = 0;
}

void sub_1E157A150(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_isLinkStyleTextView] = 1;
  if (UIAccessibilityButtonShapesEnabled())
  {
    if (a2)
    {
      v4 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v5 = sub_1E1AF5DBC();
      v6 = [v4 initWithString_];

      v7 = *MEMORY[0x1E69DB758];
      v8 = sub_1E1AF65DC();
      v10 = v6;
      [v10 addAttribute:v7 value:v8 range:{0, objc_msgSend(v10, sel_length)}];

      [v2 setAttributedText_];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = sub_1E1AF5DBC();
LABEL_7:
  v10 = v9;
  [v2 setText_];
LABEL_8:
}

void sub_1E157A290(void *a1)
{
  v1[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_isLinkStyleTextView] = 1;
  if (UIAccessibilityButtonShapesEnabled() && a1)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v4 = a1;
    v5 = [v3 initWithAttributedString_];
    v6 = *MEMORY[0x1E69DB758];
    v7 = sub_1E1AF65DC();
    v8 = v5;
    [v8 addAttribute:v6 value:v7 range:{0, objc_msgSend(v8, sel_length)}];

    [v1 setAttributedText_];
  }

  else
  {

    [v1 setAttributedText_];
  }
}

id DynamicTypeTextView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id DynamicTypeTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeTextView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E157A594(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E15778F8(v2);
  return sub_1E15262E4;
}

id sub_1E157A614(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 textContainer];
  v6 = [v5 *a3];

  return v6;
}

void sub_1E157A670(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = [*v4 textContainer];
  [v7 *a4];
}

void (*sub_1E157A6E0(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E1577AC0(v2);
  return sub_1E15255B8;
}

id sub_1E157A754()
{
  v1 = [*v0 font];

  return v1;
}

void sub_1E157A78C(void *a1)
{
  [*v1 setFont_];
}

void (*sub_1E157A7D4(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 font];
  return sub_1E157A830;
}

void sub_1E157A830(id *a1)
{
  v1 = *a1;
  [a1[1] setFont_];
}

double sub_1E157A8A0()
{
  v1 = [*v0 font];
  if (!v1)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  v2 = v1;
  sub_1E1AF6BAC();
  v4 = v3;

  return v4;
}

id sub_1E157A928()
{
  v1 = *v0;
  result = [*v0 text];
  if (result)
  {

    result = [v1 text];
    if (result)
    {
      v3 = result;
      sub_1E1AF5DFC();

      v4 = sub_1E1AF5F1C();

      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1E157A9BC(void *a1, void *a2, float a3)
{
  [v3 beginEditing];
  *&v51 = MEMORY[0x1E69E7CC0];
  v8 = *MEMORY[0x1E69DB688];
  v9 = [v3 length];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = &v51;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1E157C23C;
  *(v11 + 24) = v10;
  v57 = sub_1E157C248;
  v58 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1E198830C;
  v56 = &block_descriptor_29;
  v12 = _Block_copy(&aBlock);

  [v3 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, v12}];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_42;
  }

  v43 = a2;
  v14 = v51;

  *&v45 = v14;
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 40);
    v47 = v3;
    do
    {
      v19 = *(v16 - 1);
      v20 = *v16;
      if ([v3 attribute:v8 atIndex:v19 effectiveRange:{0, v43}])
      {
        sub_1E1AF6EBC();
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = 0u;
        v50 = 0u;
      }

      v51 = v49;
      v52 = v50;
      if (*(&v50 + 1))
      {
        sub_1E13006E4(0, &qword_1EE1E3458, 0x1E69DB7D0);
        if (swift_dynamicCast())
        {
          [v48 mutableCopy];

          sub_1E1AF6EBC();
          swift_unknownObjectRelease();
          sub_1E13006E4(0, &qword_1EE1E3380, 0x1E69DB7C8);
          if (swift_dynamicCast())
          {
            v17 = v51;
            v3 = v47;
            goto LABEL_6;
          }

          v3 = v47;
        }
      }

      else
      {
        sub_1E1308058(&v51, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      }

      v17 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
LABEL_6:
      v16 += 2;
      *&v18 = a3;
      [v17 setHyphenationFactor_];
      [v3 addAttribute:v8 value:v17 range:{v19, v20}];

      --v15;
    }

    while (v15);
  }

  v4 = &selRef_remoteDownloadIdentifiersDidChange_;
  v5 = &selRef_updateAutoPlayVideoSettings;
  if (!a1)
  {
    goto LABEL_27;
  }

  v8 = *MEMORY[0x1E69DB650];
  *&v49 = MEMORY[0x1E69E7CC0];
  v51 = 0uLL;
  LOBYTE(v52) = 1;
  isEscapingClosureAtFileLocation = a1;
  v21 = [v3 length];
  v22 = swift_allocObject();
  *(v22 + 16) = &v51;
  *(v22 + 24) = &v49;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1E157C264;
  *(v23 + 24) = v22;
  v57 = sub_1E157C260;
  v58 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1E198830C;
  v56 = &block_descriptor_59;
  v24 = _Block_copy(&aBlock);

  [v3 enumerateAttribute:v8 inRange:0 options:v21 usingBlock:{0, v24}];
  _Block_release(v24);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((v52 & 1) == 0)
  {
    v45 = v51;
    v11 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

  for (i = v49; ; *(i + 16 * v28 + 32) = v45)
  {

    v29 = *(i + 16);
    if (v29)
    {
      v30 = (i + 40);
      do
      {
        [v3 v4[401]];
        v30 += 2;
        --v29;
      }

      while (v29);
    }

LABEL_27:
    if (!v43)
    {
      break;
    }

    isEscapingClosureAtFileLocation = *MEMORY[0x1E69DB648];
    *&v49 = MEMORY[0x1E69E7CC0];
    v51 = 0uLL;
    LOBYTE(v52) = 1;
    v31 = v43;
    v32 = [v3 v5[358]];
    v8 = swift_allocObject();
    *(v8 + 16) = &v51;
    *(v8 + 24) = &v49;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1E157C250;
    *(v33 + 24) = v8;
    v57 = sub_1E157C260;
    v58 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v54 = 1107296256;
    v55 = sub_1E198830C;
    v56 = &block_descriptor_48_0;
    v34 = _Block_copy(&aBlock);

    [v3 enumerateAttribute:isEscapingClosureAtFileLocation inRange:0 options:v32 usingBlock:{0, v34}];
    _Block_release(v34);
    v11 = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      if (v52)
      {

        v35 = v49;
      }

      else
      {
        v46 = v51;
        v36 = v49;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *&v49 = v36;
        if ((v37 & 1) == 0)
        {
          v36 = sub_1E172CC00(0, *(v36 + 2) + 1, 1, v36);
          *&v49 = v36;
        }

        v39 = *(v36 + 2);
        v38 = *(v36 + 3);
        if (v39 >= v38 >> 1)
        {
          *&v49 = sub_1E172CC00((v38 > 1), v39 + 1, 1, v36);
        }

        v35 = v49;
        *(v49 + 16) = v39 + 1;
        *(v35 + 16 * v39 + 32) = v46;
      }

      v40 = *(v35 + 16);
      if (v40)
      {
        v41 = (v35 + 40);
        do
        {
          [v3 v4[401]];
          v41 += 2;
          --v40;
        }

        while (v40);
      }

      return [v3 endEditing];
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v11 = sub_1E172CC00(0, *(v11 + 16) + 1, 1, v11);
    *&v49 = v11;
LABEL_20:
    v28 = *(v11 + 16);
    v27 = *(v11 + 24);
    if (v28 >= v27 >> 1)
    {
      *&v49 = sub_1E172CC00((v27 > 1), v28 + 1, 1, v11);
    }

    i = v49;
    *(v49 + 16) = v28 + 1;
  }

  return [v3 endEditing];
}

uint64_t sub_1E157B218(uint64_t result, NSRange range2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!*(result + 24))
  {
    if ((*(a4 + 16) & 1) == 0)
    {
      length = range2.length;
      v6 = a4;
      location = range2.location;
      if (vaddvq_s64(*a4) == range2.location)
      {
        v21.location = range2.location;
        v21.length = length;
        v8 = NSUnionRange(*a4, v21);
        result = v8.location;
        range2 = v8;
        a4 = v6;
      }

      else
      {
        v20 = *a4;
        v9 = *a5;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v9;
        if (result)
        {
          v11 = a5;
        }

        else
        {
          result = sub_1E172CC00(0, *(v9 + 16) + 1, 1, v9);
          v11 = a5;
          v9 = result;
          *a5 = result;
        }

        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
        v14 = v12 + 1;
        v15 = v20;
        if (v12 >= v13 >> 1)
        {
          v16 = v9;
          v17 = v11;
          v18 = v12 + 1;
          v19 = v12;
          result = sub_1E172CC00((v13 > 1), v12 + 1, 1, v16);
          v15 = v20;
          v12 = v19;
          v14 = v18;
          range2.location = location;
          range2.length = length;
          a4 = v6;
          v9 = result;
          *v17 = result;
        }

        else
        {
          a4 = v6;
          range2.length = length;
          range2.location = location;
        }

        *(v9 + 16) = v14;
        *(v9 + 16 * v12 + 32) = v15;
      }
    }

    *a4 = range2;
    *(a4 + 16) = 0;
  }

  return result;
}

void sub_1E157B36C(uint64_t a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, char **a6)
{
  sub_1E134FD1C(a1, v22, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  if (!v23)
  {
    sub_1E1308058(v22, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    goto LABEL_6;
  }

  sub_1E13006E4(0, &qword_1EE1E3458, 0x1E69DB7D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v11 = *a6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1E172CC00(0, *(v11 + 2) + 1, 1, v11);
      *a6 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1E172CC00((v13 > 1), v14 + 1, 1, v11);
      *a6 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    goto LABEL_11;
  }

  [v21 hyphenationFactor];
  if (v10 == a4)
  {

    return;
  }

  v16 = *a6;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_1E172CC00(0, *(v16 + 2) + 1, 1, v16);
    *a6 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    *a6 = sub_1E172CC00((v18 > 1), v19 + 1, 1, v16);
  }

  v20 = *a6;
  *(v20 + 2) = v19 + 1;
  v15 = &v20[16 * v19];
LABEL_11:
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
}

uint64_t sub_1E157B54C(void *a1)
{
  result = [a1 adjustsFontForContentSizeCategory];
  if ((result & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & *a1) + 0x208))();
  }

  return result;
}

void _s11AppStoreKit19DynamicTypeTextViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_fontUseCase;
  v2 = sub_1E1AF12AC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_contentSizeCategoryMapping);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedFont) = 0;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_hyphenationFactor) = 0;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_attributedTextShouldOverrideTextViewAttributes) = 1;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_isUpdatingAttributedText) = 0;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_isLinkStyleTextView) = 0;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_directionalTextAlignment) = 0;
  sub_1E1AF71FC();
  __break(1u);
}

void *sub_1E157B6E8(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1E8))(&v11);
  if (v11)
  {
    if (v11 == 1)
    {
      v3 = [a1 traitCollection];
      v4 = sub_1E1AF697C();

      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v9.receiver = a1;
      v9.super_class = type metadata accessor for DynamicTypeTextView(0);
      return objc_msgSendSuper2(&v9, sel_setTextAlignment_, v5);
    }

    else
    {
      v6 = [a1 traitCollection];
      v7 = sub_1E1AF697C();

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }

      v10.receiver = a1;
      v10.super_class = type metadata accessor for DynamicTypeTextView(0);
      return objc_msgSendSuper2(&v10, sel_setTextAlignment_, v8);
    }
  }

  return result;
}

void sub_1E157B810(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - v4 + 16;
  v6 = type metadata accessor for DynamicTypeTextView(0);
  v14.receiver = v1;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, sel_setFont_, a1);
  v7 = *&v1[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedFont];
  *&v1[OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView__cachedFont] = a1;
  v8 = a1;

  v9 = sub_1E1AF12AC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1E1577E94(v5);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = OBJC_IVAR____TtC11AppStoreKit19DynamicTypeTextView_customTextStyle;
  swift_beginAccess();
  sub_1E137F8F8(v12, &v1[v10], &qword_1ECEB5A88, &qword_1E1B18A48);
  swift_endAccess();
  sub_1E1578768();
  sub_1E1308058(v12, &qword_1ECEB5A88, &qword_1E1B18A48);
  [v1 setAdjustsFontForContentSizeCategory_];
  sub_1E1579EB0();
}

void sub_1E157B9A8(uint64_t a1)
{
  sub_1E1577100(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *DynamicTypeTextField.__allocating_init(useCase:directionalTextAlignment:)(uint64_t a1, _BYTE *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  LOBYTE(a2) = *a2;
  v9 = [objc_allocWithZone(v3) initWithFrame_];
  v10 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment;
  swift_beginAccess();
  v9[v10] = a2;
  v11 = sub_1E1AF12AC();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  v13 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  v14 = v9;
  sub_1E1575B3C(v8, &v9[v13]);
  swift_endAccess();
  sub_1E13E472C();
  v15 = [v14 traitCollection];
  v16 = MEMORY[0x1E68FF8C0](a1, v15);

  v17 = type metadata accessor for DynamicTypeTextField(0);
  v27.receiver = v14;
  v27.super_class = v17;
  objc_msgSendSuper2(&v27, sel_setFont_, v16);

  if (v9[v10])
  {
    if (v9[v10] == 1)
    {
      v18 = [v14 traitCollection];
      v19 = sub_1E1AF697C();

      if (v19)
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      objc_msgSendSuper2(&v25, sel_setTextAlignment_, v20, v14, v17, v26.receiver, v26.super_class);
    }

    else
    {
      v21 = [v14 traitCollection];
      v22 = sub_1E1AF697C();

      if (v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = 2;
      }

      objc_msgSendSuper2(&v26, sel_setTextAlignment_, v23, v25.receiver, v25.super_class, v14, v17);
    }
  }

  (*(v12 + 8))(a1, v11);
  return v14;
}

uint64_t type metadata accessor for DynamicTypeTextField(uint64_t a1)
{
  result = qword_1ECEB5A98;
  if (!qword_1ECEB5A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E157C574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1E13E4A9C(a1, &v6 - v3);
  return sub_1E157C660(v4);
}

uint64_t sub_1E157C608@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  return sub_1E13E4A9C(v1 + v3, a1);
}

uint64_t sub_1E157C660(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1E1AF12AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  sub_1E1576EA8(a1, v1 + v10);
  swift_endAccess();
  sub_1E13E4A9C(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E13E4B0C(a1);
    return sub_1E13E4B0C(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_1E13E472C();
    v12 = [v1 traitCollection];
    v13 = v1;
    v14 = MEMORY[0x1E68FF8C0](v9, v12);

    v15 = type metadata accessor for DynamicTypeTextField(0);
    v17.receiver = v13;
    v17.super_class = v15;
    objc_msgSendSuper2(&v17, sel_setFont_, v14);

    sub_1E13E4B0C(a1);
    return (*(v7 + 8))(v9, v6);
  }
}

void (*sub_1E157C884(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[6] = v7;
  v8 = sub_1E1AF12AC();
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v11 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_fontUseCase;
  v5[9] = v10;
  v5[10] = v11;
  swift_beginAccess();
  return sub_1E157C9B4;
}

void sub_1E157C9B4(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
    v6 = *(v3 + 48);
    sub_1E13E4A9C(*(v3 + 40) + *(v3 + 80), v6);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_1E13E4B0C(*(v3 + 48));
    }

    else
    {
      v8 = *(v3 + 64);
      v7 = *(v3 + 72);
      v9 = *(v3 + 56);
      v10 = *(v3 + 40);
      (*(v8 + 32))(v7, *(v3 + 48), v9);
      sub_1E13E472C();
      v11 = [v10 traitCollection];
      v12 = MEMORY[0x1E68FF8C0](v7, v11);

      v13 = type metadata accessor for DynamicTypeTextField(0);
      *(v3 + 24) = v10;
      *(v3 + 32) = v13;
      objc_msgSendSuper2((v3 + 24), sel_setFont_, v12);

      (*(v8 + 8))(v7, v9);
    }
  }

  v14 = *(v3 + 48);
  free(*(v3 + 72));
  free(v14);

  free(v3);
}

id sub_1E157CB68()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DynamicTypeTextField(0);
  v1 = objc_msgSendSuper2(&v3, sel_font);

  return v1;
}

void sub_1E157CCB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for DynamicTypeTextField(0);
  v8.receiver = v1;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel_setFont_, a1);
  v7 = sub_1E1AF12AC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1E157C660(v5);
}

id sub_1E157CDE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeTextField(0);
  return objc_msgSendSuper2(&v2, sel_textAlignment);
}

id sub_1E157CEAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = 0;
  v7 = v4;
  sub_1E157CF90(&v7);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DynamicTypeTextField(0);
  return objc_msgSendSuper2(&v6, sel_setTextAlignment_, a1);
}

void sub_1E157CF2C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v5;
  sub_1E157CF90(&v6);
}

void sub_1E157CF90(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 != v2 && v4 != 0)
  {
    if (v4 == 1)
    {
      v6 = [v1 traitCollection];
      v7 = v1;
      v8 = sub_1E1AF697C();

      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      v14.receiver = v7;
      v14.super_class = type metadata accessor for DynamicTypeTextField(0);
      objc_msgSendSuper2(&v14, sel_setTextAlignment_, v9);
    }

    else
    {
      v10 = [v1 traitCollection];
      v11 = v1;
      v12 = sub_1E1AF697C();

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 2;
      }

      v15.receiver = v11;
      v15.super_class = type metadata accessor for DynamicTypeTextField(0);
      objc_msgSendSuper2(&v15, sel_setTextAlignment_, v13);
    }
  }
}

void sub_1E157D0A8(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1E157D0FC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = v2;
  if (v2 != v4 && v2 != 0)
  {
    if (v2 == 1)
    {
      v6 = [v1 traitCollection];
      v7 = v1;
      v8 = sub_1E1AF697C();

      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      v14.receiver = v7;
      v14.super_class = type metadata accessor for DynamicTypeTextField(0);
      objc_msgSendSuper2(&v14, sel_setTextAlignment_, v9);
    }

    else
    {
      v10 = [v1 traitCollection];
      v11 = v1;
      v12 = sub_1E1AF697C();

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 2;
      }

      v15.receiver = v11;
      v15.super_class = type metadata accessor for DynamicTypeTextField(0);
      objc_msgSendSuper2(&v15, sel_setTextAlignment_, v13);
    }
  }
}

void (*sub_1E157D214(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1E157D2A8;
}

void sub_1E157D2A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_1E157CF90(v6);

  free(v2);
}

uint64_t sub_1E157D318(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_1E1AF12AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DynamicTypeTextField(0);
  v28.receiver = v2;
  v28.super_class = v11;
  objc_msgSendSuper2(&v28, sel_traitCollectionDidChange_, a1);
  v12 = [v2 traitCollection];
  v13 = [v12 layoutDirection];

  if (!a1 || v13 != [a1 layoutDirection])
  {
    v14 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment;
    swift_beginAccess();
    if (*(v2 + v14))
    {
      if (*(v2 + v14) == 1)
      {
        v15 = [v2 traitCollection];
        v16 = sub_1E1AF697C();

        if (v16)
        {
          v17 = 2;
        }

        else
        {
          v17 = 0;
        }

        objc_msgSendSuper2(&v25, sel_setTextAlignment_, v17, v2, v11);
      }

      else
      {
        v18 = [v2 traitCollection];
        v19 = sub_1E1AF697C();

        if (v19)
        {
          v20 = 0;
        }

        else
        {
          v20 = 2;
        }

        v27.receiver = v2;
        v27.super_class = v11;
        objc_msgSendSuper2(&v27, sel_setTextAlignment_, v20, v25.receiver, v25.super_class);
      }
    }
  }

  v21 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_fontUseCase;
  swift_beginAccess();
  sub_1E13E4A9C(v2 + v21, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1E13E4B0C(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1E13E472C();
  v23 = [v2 traitCollection];
  v24 = MEMORY[0x1E68FF8C0](v10, v23);

  v26.receiver = v2;
  v26.super_class = v11;
  objc_msgSendSuper2(&v26, sel_setFont_, v24);

  return (*(v8 + 8))(v10, v7);
}

id DynamicTypeTextField.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DynamicTypeTextField.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_fontUseCase;
  v10 = sub_1E1AF12AC();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for DynamicTypeTextField(0);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id DynamicTypeTextField.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DynamicTypeTextField.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_fontUseCase;
  v4 = sub_1E1AF12AC();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC11AppStoreKit20DynamicTypeTextField_directionalTextAlignment] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DynamicTypeTextField(0);
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id DynamicTypeTextField.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeTextField(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E157DABC(uint64_t a1)
{
  sub_1E1577100(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E157DCA4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

void *DynamicTypeLabel.__allocating_init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v12 = a5;
  v17 = objc_allocWithZone(v8);
  v18 = sub_1E1581270(a1, a2, a3, a4 & 1, v12, a6, a7, a8);
  sub_1E1300EA8(a7, a8);
  return v18;
}

void *DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1E1581270(a1, a2, a3, a4 & 1, a5, a6, a7, a8);
  sub_1E1300EA8(a7, a8);
  return v10;
}

char *DynamicTypeLabel.__allocating_init(customTextStyle:numberOfLines:lineBreakMode:directionalTextAlignment:contentSizeCategoryMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24[-v16 - 8];
  LOBYTE(a5) = *a5;
  v18 = sub_1E1AF12AC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v24[0] = a5;
  v19 = (*(v7 + 144))(v17, a2, a3, a4 & 1, 0, v24, a6, a7);
  v20 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  v21 = v19;
  sub_1E15818F0(a1, v19 + v20);
  swift_endAccess();

  return v21;
}

id DynamicTypeLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t DynamicTypeLabel.init(frame:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1E1AF12AC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = 0;
  v5 = (*(ObjectType + 144))(v2, 2, 0, 1, 0, &v8, 0, 0);
  swift_deallocPartialClassInstance();
  return v5;
}

id DynamicTypeLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1E157E2AC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1E157E30C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E157E358(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E157E410@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E1582774;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4, v5);
}

uint64_t sub_1E157E4B0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E1582734;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1E1300E34(v3, v4);
  sub_1E1300E34(v6, v5);
  sub_1E1300EA8(v8, v9);
  sub_1E157E594();
  return sub_1E1300EA8(v6, v5);
}

uint64_t sub_1E157E594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-v2];
  v4 = sub_1E1AF12AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v8, v3, &qword_1ECEB34E0, &qword_1E1B189E0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1E1308058(v3, &qword_1ECEB34E0, &qword_1E1B189E0);
    v9 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_customTextStyle;
    swift_beginAccess();
    sub_1E134FD1C(v0 + v9, &v12, &qword_1ECEB5A88, &qword_1E1B18A48);
    if (v13)
    {
      sub_1E1308EC0(&v12, v14);
      (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))(v14);
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      return sub_1E1308058(&v12, &qword_1ECEB5A88, &qword_1E1B18A48);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))(v7);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E157E828()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v2 = *v1;
  sub_1E1300E34(*v1, v1[1]);
  return v2;
}

uint64_t sub_1E157E884(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1E1300E34(a1, a2);
  sub_1E1300EA8(v6, v7);
  sub_1E157E594();
  return sub_1E1300EA8(a1, a2);
}

uint64_t (*sub_1E157E910(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E157E974;
}

uint64_t sub_1E157E974(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E157E594();
  }

  return result;
}

void sub_1E157E9A8(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  v5 = v4();
  v6 = [v5 preferredContentSizeCategory];

  v7 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v8 = *&v2[v7];
  *&v2[v7] = v6;

  v9 = (v4)([v2 setAdjustsFontForContentSizeCategory_]);
  v10 = sub_1E1AF69BC();

  sub_1E13006E4(0, &qword_1EE1E32B0, 0x1E69DB878);
  v11 = MEMORY[0x1E68FF8C0](a1, v10);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DynamicTypeLabel(0);
  objc_msgSendSuper2(&v14, sel_setFont_, v11);
  if (![v2 lineSpacing] && ((v13 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v2[v13] & 1) != 0) || v2[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isPlainText] == 1))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v2 set:v12 fontForShortcutBaselineCalculation:?];
}

void sub_1E157EB6C(void *a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
  v5 = v4();
  v6 = [v5 preferredContentSizeCategory];

  v7 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v8 = *&v2[v7];
  *&v2[v7] = v6;

  v9 = (v4)([v2 setAdjustsFontForContentSizeCategory_]);
  v10 = sub_1E1AF69BC();

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v11 = sub_1E1AF15AC();
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DynamicTypeLabel(0);
  objc_msgSendSuper2(&v14, sel_setFont_, v11);
  if (![v2 lineSpacing] && ((v13 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v2[v13] & 1) != 0) || v2[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isPlainText] == 1))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v2 set:v12 fontForShortcutBaselineCalculation:?];
}

void sub_1E157ED2C(uint64_t a1, void *a2)
{
  v4 = a2 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_contentSizeCategoryMapping;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);
    v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xC8);

    v9 = v7(v8);
    v10 = [v9 preferredContentSizeCategory];

    v5(v10);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF1E9C();
    sub_1E1300EA8(v5, v6);
  }
}

void sub_1E157EE3C()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isLinkStyleLabel) == 1)
  {
    v1 = [v0 attributedText];
    if (v1)
    {
      v2 = v1;
      v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v3 = UIAccessibilityButtonShapesEnabled();
      v4 = *MEMORY[0x1E69DB758];
      if (v3)
      {
        v5 = sub_1E1AF65DC();
        [v6 addAttribute:v4 value:v5 range:{0, objc_msgSend(v6, sel_length)}];
      }

      else
      {
        [v6 removeAttribute:v4 range:{0, objc_msgSend(v6, sel_length)}];
      }

      [v0 setAttributedText_];
    }
  }
}

uint64_t sub_1E157EFC8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  sub_1E134FD1C(a1, &v13[-v8], &qword_1ECEB34E0, &qword_1E1B189E0);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_1E134FD1C(v10 + v11, v6, &qword_1ECEB34E0, &qword_1E1B189E0);
  swift_beginAccess();
  sub_1E137F8F8(v9, v10 + v11, &qword_1ECEB34E0, &qword_1E1B189E0);
  swift_endAccess();
  sub_1E157F11C(v6);
  sub_1E1308058(v6, &qword_1ECEB34E0, &qword_1E1B189E0);
  return sub_1E1308058(v9, &qword_1ECEB34E0, &qword_1E1B189E0);
}

uint64_t sub_1E157F11C(uint64_t a1)
{
  v41 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5A80, &qword_1E1B18A40);
  MEMORY[0x1EEE9AC00](v40);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_1E1AF12AC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  v39 = v1;
  v19 = v13;
  sub_1E134FD1C(v1 + v18, v11, &qword_1ECEB34E0, &qword_1E1B189E0);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    return sub_1E1308058(v11, &qword_1ECEB34E0, &qword_1E1B189E0);
  }

  v22 = *(v19 + 32);
  v22(v17, v11, v12);
  v23 = *(v19 + 16);
  v35 = v17;
  v23(v8, v17, v12);
  v36 = v19;
  (*(v19 + 56))(v8, 0, 1, v12);
  v24 = *(v40 + 48);
  sub_1E134FD1C(v8, v3, &qword_1ECEB34E0, &qword_1E1B189E0);
  sub_1E134FD1C(v41, &v3[v24], &qword_1ECEB34E0, &qword_1E1B189E0);
  if (v20(v3, 1, v12) == 1)
  {
    sub_1E1308058(v8, &qword_1ECEB34E0, &qword_1E1B189E0);
    v25 = v20(&v3[v24], 1, v12);
    v26 = v36;
    if (v25 == 1)
    {
      sub_1E1308058(v3, &qword_1ECEB34E0, &qword_1E1B189E0);
      return (*(v26 + 8))(v35, v12);
    }

    goto LABEL_8;
  }

  v27 = v22;
  v28 = v38;
  sub_1E134FD1C(v3, v38, &qword_1ECEB34E0, &qword_1E1B189E0);
  if (v20(&v3[v24], 1, v12) == 1)
  {
    sub_1E1308058(v8, &qword_1ECEB34E0, &qword_1E1B189E0);
    v26 = v36;
    (*(v36 + 8))(v28, v12);
LABEL_8:
    sub_1E1308058(v3, &qword_1ECEB5A80, &qword_1E1B18A40);
LABEL_9:
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v29 = v39;
    sub_1E157FAE0(v42);
    v30 = v35;
    (*((*MEMORY[0x1E69E7D40] & *v29) + 0xD8))(v35);
    return (*(v26 + 8))(v30, v12);
  }

  v31 = v37;
  v27(v37, &v3[v24], v12);
  sub_1E1577158();
  v32 = sub_1E1AF5DAC();
  v26 = v36;
  v33 = *(v36 + 8);
  v33(v31, v12);
  sub_1E1308058(v8, &qword_1ECEB34E0, &qword_1E1B189E0);
  v33(v28, v12);
  sub_1E1308058(v3, &qword_1ECEB34E0, &qword_1E1B189E0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v33)(v35, v12);
}

uint64_t sub_1E157F658@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB34E0, &qword_1E1B189E0);
}

uint64_t sub_1E157F6C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v6, v5, &qword_1ECEB34E0, &qword_1E1B189E0);
  swift_beginAccess();
  sub_1E137F8F8(a1, v1 + v6, &qword_1ECEB34E0, &qword_1E1B189E0);
  swift_endAccess();
  sub_1E157F11C(v5);
  sub_1E1308058(a1, &qword_1ECEB34E0, &qword_1E1B189E0);
  return sub_1E1308058(v5, &qword_1ECEB34E0, &qword_1E1B189E0);
}

void (*sub_1E157F7D4(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v9, v8, &qword_1ECEB34E0, &qword_1E1B189E0);
  return sub_1E157F904;
}

void sub_1E157F904(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1E134FD1C(*(*a1 + 12), v6, &qword_1ECEB34E0, &qword_1E1B189E0);
    sub_1E134FD1C(v7 + v4, v5, &qword_1ECEB34E0, &qword_1E1B189E0);
    swift_beginAccess();
    sub_1E137F8F8(v6, v7 + v4, &qword_1ECEB34E0, &qword_1E1B189E0);
    swift_endAccess();
    sub_1E157F11C(v5);
    sub_1E1308058(v5, &qword_1ECEB34E0, &qword_1E1B189E0);
  }

  else
  {
    sub_1E134FD1C(v7 + v4, v6, &qword_1ECEB34E0, &qword_1E1B189E0);
    swift_beginAccess();
    sub_1E137F8F8(v3, v7 + v4, &qword_1ECEB34E0, &qword_1E1B189E0);
    swift_endAccess();
    sub_1E157F11C(v6);
  }

  sub_1E1308058(v6, &qword_1ECEB34E0, &qword_1E1B189E0);
  sub_1E1308058(v3, &qword_1ECEB34E0, &qword_1E1B189E0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1E157FA78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB5A88, &qword_1E1B18A48);
}

uint64_t sub_1E157FAE0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  sub_1E137F8F8(a1, v1 + v9, &qword_1ECEB5A88, &qword_1E1B18A48);
  swift_endAccess();
  sub_1E134FD1C(v1 + v9, &v14, &qword_1ECEB5A88, &qword_1E1B18A48);
  if (v15)
  {
    sub_1E1308EC0(&v14, v16);
    v10 = sub_1E1AF12AC();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
    swift_beginAccess();
    sub_1E134FD1C(v1 + v11, v5, &qword_1ECEB34E0, &qword_1E1B189E0);
    swift_beginAccess();
    sub_1E137F8F8(v8, v1 + v11, &qword_1ECEB34E0, &qword_1E1B189E0);
    swift_endAccess();
    sub_1E157F11C(v5);
    sub_1E1308058(v5, &qword_1ECEB34E0, &qword_1E1B189E0);
    sub_1E1308058(v8, &qword_1ECEB34E0, &qword_1E1B189E0);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))(v16);
    sub_1E1308058(a1, &qword_1ECEB5A88, &qword_1E1B18A48);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_1E1308058(a1, &qword_1ECEB5A88, &qword_1E1B18A48);
    return sub_1E1308058(&v14, &qword_1ECEB5A88, &qword_1E1B18A48);
  }
}

void (*sub_1E157FD64(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xB8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 152) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0) - 8) + 64);
  if (v3)
  {
    v5[20] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[20] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_customTextStyle;
  v5[21] = v7;
  v5[22] = v8;
  swift_beginAccess();
  return sub_1E157FE58;
}

void sub_1E157FE58(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E134FD1C(*(v3 + 152) + *(v3 + 176), v3 + 40, &qword_1ECEB5A88, &qword_1E1B18A48);
    if (*(v3 + 64))
    {
      v5 = *(v3 + 160);
      v4 = *(v3 + 168);
      v6 = *(v3 + 152);
      sub_1E1308EC0((v3 + 40), v3);
      v7 = sub_1E1AF12AC();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
      swift_beginAccess();
      sub_1E134FD1C(v6 + v8, v5, &qword_1ECEB34E0, &qword_1E1B189E0);
      swift_beginAccess();
      sub_1E137F8F8(v4, v6 + v8, &qword_1ECEB34E0, &qword_1E1B189E0);
      swift_endAccess();
      sub_1E157F11C(v5);
      sub_1E1308058(v5, &qword_1ECEB34E0, &qword_1E1B189E0);
      sub_1E1308058(v4, &qword_1ECEB34E0, &qword_1E1B189E0);
      (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE0))(v3);
      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {
      sub_1E1308058(v3 + 40, &qword_1ECEB5A88, &qword_1E1B18A48);
    }
  }

  v9 = *(v3 + 160);
  free(*(v3 + 168));
  free(v9);

  free(v3);
}

void sub_1E15800AC(void *a1)
{
  sub_1E1581E80(a1);
}

uint64_t sub_1E15800E4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1E1580128(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = [v1 font];
  if (v4)
  {
    v5 = v4;
    if (![v1 lineSpacing] && ((v1[v3] & 1) != 0 || v1[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isPlainText] == 1))
    {
      [v1 set:v5 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1E15801F8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1E1580280;
}

void sub_1E1580280(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = [*(v3 + 24) font];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [*(v3 + 24) lineSpacing];
    v7 = *(v3 + 24);
    if (!v6 && ((*(v7 + *(v3 + 32)) & 1) != 0 || *(v7 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isPlainText) == 1))
    {
      [v7 set:v5 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v7 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  free(v3);
}

void sub_1E1580348(char a1)
{
  v2 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isPlainText;
  v1[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isPlainText] = a1;
  v3 = [v1 font];
  if (v3)
  {
    v4 = v3;
    if (![v1 lineSpacing] && ((v5 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v1[v5] & 1) != 0) || v1[v2] == 1))
    {
      [v1 set:v4 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1E15804BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = 0;
  v7 = v4;
  sub_1E1580BA4(&v7);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DynamicTypeLabel(0);
  return objc_msgSendSuper2(&v6, sel_setTextAlignment_, a1);
}

uint64_t sub_1E15805F0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DynamicTypeLabel(0);
  v1 = objc_msgSendSuper2(&v5, sel_text);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E1AF5DFC();

  return v3;
}

void sub_1E1580708(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1E1AF5DBC();
  }

  else
  {
    v3 = 0;
  }

  v4.receiver = v2;
  v4.super_class = type metadata accessor for DynamicTypeLabel(0);
  objc_msgSendSuper2(&v4, sel_setText_, v3);

  sub_1E1580348(1);
}

id sub_1E158078C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DynamicTypeLabel(0);
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_1E15807DC(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DynamicTypeLabel(0);
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_1E1580870(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DynamicTypeLabel(0);
  objc_msgSendSuper2(&v6, sel_setLineSpacing_, a1);
  v3 = [v1 font];
  if (v3)
  {
    v4 = v3;
    if (![v1 lineSpacing] && ((v5 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (*(v1 + v5) & 1) != 0) || *(v1 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isPlainText) == 1))
    {
      [v1 set:v4 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1E1580968(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for DynamicTypeLabel(0);
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

id sub_1E15809D0(SEL *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DynamicTypeLabel(0);
  v3 = objc_msgSendSuper2(&v5, *a1);

  return v3;
}

void sub_1E1580ABC(void *a1)
{
  sub_1E1580348(0);
  v3 = [v1 lineBreakMode];
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DynamicTypeLabel(0);
  objc_msgSendSuper2(&v4, sel_setAttributedText_, a1);
  [v1 setLineBreakMode_];
}

void sub_1E1580B40(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v5;
  sub_1E1580BA4(&v6);
}

void sub_1E1580BA4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 != v2 && v4 != 0)
  {
    if (v4 == 1)
    {
      v6 = [v1 traitCollection];
      v7 = v1;
      v8 = sub_1E1AF697C();

      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      v14.receiver = v7;
      v14.super_class = type metadata accessor for DynamicTypeLabel(0);
      objc_msgSendSuper2(&v14, sel_setTextAlignment_, v9);
    }

    else
    {
      v10 = [v1 traitCollection];
      v11 = v1;
      v12 = sub_1E1AF697C();

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 2;
      }

      v15.receiver = v11;
      v15.super_class = type metadata accessor for DynamicTypeLabel(0);
      objc_msgSendSuper2(&v15, sel_setTextAlignment_, v13);
    }
  }
}

void sub_1E1580CBC(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1E1580D10(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = v2;
  if (v2 != v4 && v2 != 0)
  {
    if (v2 == 1)
    {
      v6 = [v1 traitCollection];
      v7 = v1;
      v8 = sub_1E1AF697C();

      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      v14.receiver = v7;
      v14.super_class = type metadata accessor for DynamicTypeLabel(0);
      objc_msgSendSuper2(&v14, sel_setTextAlignment_, v9);
    }

    else
    {
      v10 = [v1 traitCollection];
      v11 = v1;
      v12 = sub_1E1AF697C();

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 2;
      }

      v15.receiver = v11;
      v15.super_class = type metadata accessor for DynamicTypeLabel(0);
      objc_msgSendSuper2(&v15, sel_setTextAlignment_, v13);
    }
  }
}

void (*sub_1E1580E28(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1E1580EBC;
}

void sub_1E1580EBC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_1E1580BA4(v6);

  free(v2);
}

void sub_1E1580F2C(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isLinkStyleLabel] = 1;
  if (UIAccessibilityButtonShapesEnabled())
  {
    if (a2)
    {
      v4 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v5 = sub_1E1AF5DBC();
      v6 = [v4 initWithString_];

      v7 = *MEMORY[0x1E69DB758];
      v8 = sub_1E1AF65DC();
      v10 = v6;
      [v10 addAttribute:v7 value:v8 range:{0, objc_msgSend(v10, sel_length)}];

      [v2 setAttributedText_];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = sub_1E1AF5DBC();
LABEL_7:
  v10 = v9;
  [v2 setText_];
LABEL_8:
}

void sub_1E158106C(void *a1)
{
  v1[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isLinkStyleLabel] = 1;
  if (UIAccessibilityButtonShapesEnabled() && a1)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v4 = a1;
    v5 = [v3 initWithAttributedString_];
    v6 = *MEMORY[0x1E69DB758];
    v7 = sub_1E1AF65DC();
    v8 = v5;
    [v8 addAttribute:v6 value:v7 range:{0, objc_msgSend(v8, sel_length)}];

    [v1 setAttributedText_];
  }

  else
  {

    [v1 setAttributedText_];
  }
}

id DynamicTypeLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLabel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E1581270(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6, uint64_t a7, uint64_t a8)
{
  v59 = a7;
  *&v60 = a8;
  v57 = a5;
  v54 = a4;
  v55 = a3;
  v58 = a1;
  v11 = a2 != 0;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v52 - v13;
  v15 = sub_1E1AF12AC();
  v56 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF1EBC();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = *a6;
  *&v8[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory] = 0;
  v21 = &v8[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_contentSizeCategoryMapping];
  *v21 = 0;
  v21[1] = 0;
  (*(v16 + 56))(&v8[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase], 1, 1, v15, v19);
  v22 = &v8[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_customTextStyle];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v8[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement] = 0;
  v8[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isPlainText] = 1;
  v8[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isLinkStyleLabel] = 0;
  v8[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment] = 0;
  v23 = type metadata accessor for DynamicTypeLabel(0);
  v64.receiver = v8;
  v64.super_class = v23;
  v53 = v23;
  v24 = objc_msgSendSuper2(&v64, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v24 setNumberOfLines_];
  if (v54)
  {
    v25 = 4 * v11;
  }

  else
  {
    v25 = v55;
  }

  [v24 setLineBreakMode_];
  v26 = v24;
  sub_1E1AF6BDC();
  sub_1E1AF1EAC();
  sub_1E1AF6BEC();

  [v26 setUserInteractionEnabled_];
  v27 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  *(v26 + v27) = v20;
  v28 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  v29 = v58;
  sub_1E137F8F8(v58, v26 + v28, &qword_1ECEB34E0, &qword_1E1B189E0);
  swift_endAccess();
  v30 = (v26 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  v33 = v59;
  v34 = v60;
  *v30 = v59;
  v30[1] = v34;
  sub_1E1300E34(v33, v34);
  sub_1E1300EA8(v31, v32);
  v35 = v56;
  sub_1E134FD1C(v29, v14, &qword_1ECEB34E0, &qword_1E1B189E0);
  if ((*(v16 + 48))(v14, 1, v35) == 1)
  {
    sub_1E1308058(v14, &qword_1ECEB34E0, &qword_1E1B189E0);
    v36 = *(v26 + v27);
    if (!*(v26 + v27))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v37 = v52;
    (*(v16 + 32))(v52, v14, v35);
    (*((*MEMORY[0x1E69E7D40] & *v26) + 0xD8))(v37);
    (*(v16 + 8))(v37, v35);
    v36 = *(v26 + v27);
    if (!*(v26 + v27))
    {
      goto LABEL_17;
    }
  }

  if (v36 == 1)
  {
    v38 = [v26 traitCollection];
    v39 = sub_1E1AF697C();

    if (v39)
    {
      v40 = 2;
    }

    else
    {
      v40 = 0;
    }

    v62.receiver = v26;
    v62.super_class = v53;
    objc_msgSendSuper2(&v62, sel_setTextAlignment_, v40);
  }

  else
  {
    v41 = [v26 traitCollection];
    v42 = sub_1E1AF697C();

    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = 2;
    }

    v63.receiver = v26;
    v63.super_class = v53;
    objc_msgSendSuper2(&v63, sel_setTextAlignment_, v43);
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5A90, &qword_1E1B18A50);
  v44 = swift_allocObject();
  v60 = xmmword_1E1B02CC0;
  *(v44 + 16) = xmmword_1E1B02CC0;
  v45 = sub_1E1AF1ECC();
  v46 = MEMORY[0x1E69DC090];
  *(v44 + 32) = v45;
  *(v44 + 40) = v46;
  sub_1E1AF6BFC();
  swift_unknownObjectRelease();

  v47 = swift_allocObject();
  *(v47 + 16) = v60;
  v48 = sub_1E1AF1FDC();
  v49 = MEMORY[0x1E69DC2B0];
  *(v47 + 32) = v48;
  *(v47 + 40) = v49;
  sub_1E1AF6BFC();
  swift_unknownObjectRelease();

  v50 = [objc_opt_self() defaultCenter];
  [v50 addObserver:v26 selector:sel_buttonShapesDidChange name:*MEMORY[0x1E69DD8A8] object:0];

  sub_1E1308058(v29, &qword_1ECEB34E0, &qword_1E1B189E0);
  return v26;
}

uint64_t sub_1E15818F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5A88, &qword_1E1B18A48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E1581960(char *a1)
{
  v2 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  if (a1[v2])
  {
    if (a1[v2] == 1)
    {
      v3 = [a1 traitCollection];
      v4 = sub_1E1AF697C();

      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v9.receiver = a1;
      v9.super_class = type metadata accessor for DynamicTypeLabel(0);
      objc_msgSendSuper2(&v9, sel_setTextAlignment_, v5);
    }

    else
    {
      v6 = [a1 traitCollection];
      v7 = sub_1E1AF697C();

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }

      v10.receiver = a1;
      v10.super_class = type metadata accessor for DynamicTypeLabel(0);
      objc_msgSendSuper2(&v10, sel_setTextAlignment_, v8);
    }
  }
}

uint64_t sub_1E1581A60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_1E1AF12AC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [a1 adjustsFontForContentSizeCategory];
  if ((result & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
    swift_beginAccess();
    sub_1E134FD1C(a1 + v11, v4, &qword_1ECEB34E0, &qword_1E1B189E0);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_1E1308058(v4, &qword_1ECEB34E0, &qword_1E1B189E0);
      v12 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_customTextStyle;
      swift_beginAccess();
      sub_1E134FD1C(a1 + v12, &v14, &qword_1ECEB5A88, &qword_1E1B18A48);
      if (v15)
      {
        sub_1E1308EC0(&v14, v16);
        (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE0))(v16);
        return __swift_destroy_boxed_opaque_existential_1(v16);
      }

      else
      {
        return sub_1E1308058(&v14, &qword_1ECEB5A88, &qword_1E1B18A48);
      }
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      (*((*MEMORY[0x1E69E7D40] & *a1) + 0xD8))(v9);
      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

void _s11AppStoreKit16DynamicTypeLabelC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory) = 0;
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
  v3 = sub_1E1AF12AC();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_customTextStyle;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement) = 0;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isPlainText) = 1;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isLinkStyleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_directionalTextAlignment) = 0;
  sub_1E1AF71FC();
  __break(1u);
}

uint64_t type metadata accessor for DynamicTypeLabel(uint64_t a1)
{
  result = qword_1EE1F2C80;
  if (!qword_1EE1F2C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E1581E80(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB34E0, &qword_1E1B189E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7 + 16;
  v9 = type metadata accessor for DynamicTypeLabel(0);
  v20.receiver = v1;
  v20.super_class = v9;
  result = objc_msgSendSuper2(&v20, sel_setFont_, a1);
  if (a1)
  {
    v11 = a1;
    if (![v1 lineSpacing] && ((v12 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v1[v12] & 1) != 0) || v1[OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_isPlainText] == 1))
    {
      [v1 set:v11 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }

    v13 = sub_1E1AF12AC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCase;
    swift_beginAccess();
    sub_1E134FD1C(&v1[v14], v5, &qword_1ECEB34E0, &qword_1E1B189E0);
    swift_beginAccess();
    sub_1E137F8F8(v8, &v1[v14], &qword_1ECEB34E0, &qword_1E1B189E0);
    swift_endAccess();
    sub_1E157F11C(v5);
    sub_1E1308058(v5, &qword_1ECEB34E0, &qword_1E1B189E0);
    sub_1E1308058(v8, &qword_1ECEB34E0, &qword_1E1B189E0);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1E157FAE0(v18);
    v15 = OBJC_IVAR____TtC11AppStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
    swift_beginAccess();
    v16 = *&v1[v15];
    *&v1[v15] = 0;

    return [v1 setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E1582100(uint64_t a1)
{
  sub_1E1577100(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DynamicTypeLabel.updateFont(to:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
}

uint64_t sub_1E1582734(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_1E1582774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t SmallBreakout.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SmallBreakout.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SmallBreakout.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v62 = *v3;
  v72 = sub_1E1AF39DC();
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = v60 - v9;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v60 - v19;
  v3[6] = 0;
  v63 = v3 + 6;
  v73 = a1;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v67 = v14;
  v65 = v15;
  if (v22)
  {
    v74 = v21;
    v75 = v22;
    sub_1E1AF6F6C();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v14;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v11;
    v28 = v14;
    v30 = v29;
    (*(v27 + 8))(v13, v10);
    v74 = v26;
    v75 = v30;
    sub_1E1AF6F6C();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v28;
  }

  v66 = v23;
  v23(v24, v25);
  v31 = v77;
  *(v3 + 4) = v76;
  *(v3 + 5) = v31;
  v3[12] = v78;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v32 = v69 + 16;
  v33 = *(v69 + 16);
  v34 = v72;
  (v33)(v79, v68, v72);
  v35 = v64;
  sub_1E1AF464C();
  v70 = v3;
  v61 = OBJC_IVAR____TtC11AppStoreKit13SmallBreakout_impressionMetrics;
  sub_1E134B7C8(v35, v3 + OBJC_IVAR____TtC11AppStoreKit13SmallBreakout_impressionMetrics);
  v36 = v34;
  v37 = v71;
  v33();
  type metadata accessor for BreakoutDetails();
  sub_1E1AF381C();
  v38 = v37;
  v39 = v33;
  v40 = v32;
  (v33)(v79, v38, v36);
  sub_1E158348C(&qword_1EE1DFB00, type metadata accessor for BreakoutDetails, &protocol conformance descriptor for BreakoutDetails);
  sub_1E1AF464C();
  v41 = v76;
  if (v76)
  {
    v70[2] = v76;
    v64 = v41;
    type metadata accessor for OfferDisplayProperties();

    v42 = v73;
    sub_1E1AF381C();
    v43 = v79;
    v44 = v72;
    (v39)(v79, v71, v72);
    v60[1] = v40;
    v60[0] = v39;
    sub_1E158348C(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_1E1AF464C();
    v70[3] = v76;
    type metadata accessor for Artwork(0);
    sub_1E1AF381C();
    v45 = v71;
    (v39)(v43, v71, v44);
    sub_1E158348C(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_1E1AF464C();
    v46 = v70;
    v70[4] = v76;
    v47 = v42;
    sub_1E1AF381C();
    v48 = JSONObject.appStoreColor.getter();
    v49 = v66;
    v50 = v67;
    v66(v17, v67);
    v46[5] = v48;
    v51 = v46;
    type metadata accessor for Action(0);
    sub_1E1AF381C();
    v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v17, v45);
    v49(v17, v50);
    swift_beginAccess();
    v46[6] = v52;

    type metadata accessor for FlowPreviewActionsConfiguration();
    sub_1E1AF381C();
    v53 = v72;
    (v60[0])(v79, v45, v72);
    sub_1E158348C(qword_1EE1E7DB8, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
    sub_1E1AF464C();

    v54 = *(v69 + 8);
    v54(v68, v53);
    v49(v47, v67);
    v54(v45, v53);
    v46[7] = v74;
  }

  else
  {
    v55 = sub_1E1AF5A7C();
    sub_1E158348C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v56 = 0x736C6961746564;
    v56[1] = 0xE700000000000000;
    v56[2] = v62;
    (*(*(v55 - 8) + 104))(v56, *MEMORY[0x1E69AB690], v55);
    swift_willThrow();
    v57 = *(v69 + 8);
    v58 = v72;
    v57(v68, v72);
    v66(v73, v67);
    v57(v71, v58);
    v51 = v70;

    sub_1E134B88C((v51 + 8));
    sub_1E13814C0(v51 + v61);
    type metadata accessor for SmallBreakout(0);
    swift_deallocPartialClassInstance();
  }

  return v51;
}

uint64_t type metadata accessor for SmallBreakout(uint64_t a1)
{
  result = qword_1EE1F46D8;
  if (!qword_1EE1F46D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SmallBreakout.backgroundColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_1E1583234(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

uint64_t sub_1E15832CC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t SmallBreakout.deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit13SmallBreakout_impressionMetrics);
  return v0;
}

uint64_t SmallBreakout.__deallocating_deinit()
{
  SmallBreakout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E158348C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1E15834E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SmallBreakout(0);
  v7 = swift_allocObject();
  result = SmallBreakout.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1E15835B4(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t static AccountPage.createAccountPage()@<X0>(uint64_t *a1@<X8>)
{
  v71 = a1;
  v2 = sub_1E1AF45FC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1E1AF3C3C();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = v56 - v6;
  v79 = sub_1E1AF3ABC();
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v61 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v75 = v56 - v11;
  v65 = sub_1E1AF516C();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v74 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1E1AF3A4C();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v73 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5AB8, &qword_1E1B18E20);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5FB0, &qword_1E1B19CB0);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v57 = *(*(v14 - 8) + 72);
  v16 = swift_allocObject();
  v77 = xmmword_1E1B02CD0;
  *(v16 + 16) = xmmword_1E1B02CD0;
  v60 = v16;
  v17 = v16 + v15;
  v72 = v14;
  v59 = *(v14 + 48);
  sub_1E1AF452C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220, &qword_1E1B0E110);
  v19 = sub_1E1AF523C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v58 = 2 * v21;
  v56[1] = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = v77;
  sub_1E1AF51FC();
  if (qword_1EE1E37C8 != -1)
  {
    swift_once();
  }

  v56[0] = __swift_project_value_buffer(v19, qword_1EE1E37D0);
  v24 = *(v20 + 16);
  v24(v23 + v22 + v21, v56[0], v19);
  v25 = sub_1E1498AF4(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v17 + v59) = v25;
  v59 = v17;
  v26 = (v17 + v57);
  v27 = *(v72 + 48);
  sub_1E1AF450C();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E1B05090;
  v29 = v28 + v22;
  sub_1E1AF51FC();
  v24(v28 + v22 + v21, v56[0], v19);
  if (qword_1EE1E3808 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v19, qword_1EE1E3810);
  v24(v29 + v58, v30, v19);
  if (qword_1EE1E36C0 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v19, qword_1EE1E36C8);
  v24(v29 + 3 * v21, v31, v19);
  v32 = sub_1E1498AF4(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v26[v27] = v32;
  sub_1E15A0AE4(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1E15A0B08(MEMORY[0x1E69E7CC0]);
  sub_1E1AF3A3C();
  sub_1E1AF513C();
  sub_1E1303A74(v33);
  v34 = v75;
  sub_1E1AF3A1C();

  sub_1E1303A74(v33);
  sub_1E1AF3A0C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2538, &qword_1E1B02940);
  v35 = *(sub_1E1AF3B5C() - 8);
  v60 = *(v35 + 72);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  v72 = v37;
  *(v37 + 16) = v77;
  v58 = v37 + v36;
  v59 = *(v76 + 16);
  v38 = v61;
  (v59)(v61, v34, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB48E8, &unk_1E1B0EDB8);
  v39 = sub_1E1AF3C1C();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF3C0C();
  sub_1E1497880(v42);
  swift_setDeallocating();
  (*(v40 + 8))(v42 + v41, v39);
  swift_deallocClassInstance();
  sub_1E1AF3B1C();
  (v59)(v38, v78, v79);
  v43 = swift_allocObject();
  *(v43 + 16) = v77;
  sub_1E1AF3BEC();
  sub_1E1AF3BCC();
  sub_1E1497880(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E1AF3B1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0, "p-\t");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B03760;
  *(inited + 32) = 1701273968;
  v45 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x80000001E1B66480;
  *(inited + 72) = v45;
  *(inited + 80) = 0x644965676170;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = 0x676E69646E616CLL;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 120) = v45;
  *(inited + 128) = 0x6570795465676170;
  *(inited + 168) = v45;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = 0x53746E756F636361;
  *(inited + 152) = 0xEF73676E69747465;
  sub_1E1303A74(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80, &qword_1E1B192E0);
  swift_arrayDestroy();
  sub_1E1AF45EC();
  sub_1E1584724(MEMORY[0x1E69E7CC0]);
  v46 = v68;
  sub_1E1AF3B6C();
  v47 = v69;
  v48 = v67;
  v49 = v70;
  (*(v69 + 16))(v67, v46, v70);
  v50 = type metadata accessor for AccountPage(0);
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + OBJC_IVAR____TtC11AppStoreKit11AccountPage_pageMetrics, v48, v49);
  *(v51 + OBJC_IVAR____TtC11AppStoreKit11AccountPage_pageRenderEvent) = 0;
  v52 = v71;
  v71[3] = v50;
  v52[4] = &protocol witness table for AccountPage;
  v52[5] = sub_1E1584880();
  *v52 = v51;
  (*(v47 + 8))(v46, v49);
  v53 = *(v76 + 8);
  v54 = v79;
  v53(v78, v79);
  v53(v75, v54);
  (*(v64 + 8))(v74, v65);
  return (*(v62 + 8))(v73, v63);
}

uint64_t AccountPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11AccountPage_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccountPage.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit11AccountPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AccountPage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit11AccountPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15846A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit11AccountPage_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t sub_1E1584724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37D0, &unk_1E1B08360);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E1584990(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1E13018F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E1301CF0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for AccountPage(uint64_t a1)
{
  result = qword_1ECEB5AC8;
  if (!qword_1ECEB5AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E1584880()
{
  result = qword_1ECEB5AC0;
  if (!qword_1ECEB5AC0)
  {
    type metadata accessor for AccountPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5AC0);
  }

  return result;
}

uint64_t sub_1E15848E0(uint64_t a1)
{
  result = sub_1E1AF3C3C();
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

uint64_t sub_1E1584990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80, &qword_1E1B192E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

AppStoreKit::BadgeValueViewAlignment_optional __swiftcall BadgeValueViewAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t static BadgeCaptionCappingType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = *&v3 == 0;
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2 == 0.0)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return (v4 & 1) == 0 && v2 == v3;
  }
}

uint64_t sub_1E1584A74(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v5 = *&v3 == 0;
    if (v3 == 0.0)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    if (v2 == 0.0)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return (v4 & 1) == 0 && v2 == v3;
  }
}

uint64_t BadgeViewLayout.Metrics.captionBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t BadgeViewLayout.Metrics.badgeValueStandardCompactSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t BadgeViewLayout.Metrics.badgeValueStandardRegularSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_1E1308EC0(a1, v1 + 80);
}

void BadgeViewLayout.Metrics.spacingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewLayout.Metrics.spacingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 128) = *result;
  *(v1 + 136) = v2;
  return result;
}

void BadgeViewLayout.Metrics.captionCappingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewLayout.Metrics.captionCappingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 144) = *result;
  *(v1 + 152) = v2;
  return result;
}

uint64_t BadgeViewLayout.Metrics.init(captionBottomSpace:badgeValueStandardCompactSpace:badgeValueStandardRegularSpace:valueBufferSpace:spacingType:captionCappingType:badgeType:isLabelLeading:valueViewAlignment:alignment:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v15 = *a4;
  v16 = *(a4 + 8);
  v17 = *a5;
  v18 = *(a5 + 8);
  v19 = *a6;
  v20 = *a8;
  sub_1E1308EC0(a1, a9);
  sub_1E1308EC0(a2, a9 + 40);
  result = sub_1E1308EC0(a3, a9 + 80);
  *(a9 + 120) = a10;
  *(a9 + 128) = v15;
  *(a9 + 136) = v16;
  *(a9 + 144) = v17;
  *(a9 + 152) = v18;
  *(a9 + 153) = v19;
  *(a9 + 154) = a7;
  *(a9 + 155) = v20;
  *(a9 + 160) = a11;
  return result;
}

uint64_t BadgeViewLayout.Metrics.badgeValueSpace(with:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF695C();
  v4 = 80;
  if (v3)
  {
    v4 = 40;
  }

  return sub_1E1300B24(v1 + v4, a1);
}

__n128 BadgeViewLayout.init(metrics:captionLabel:valueLabel:valueView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 144);
  *(a5 + 128) = *(a1 + 128);
  *(a5 + 144) = v8;
  *(a5 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(a5 + 64) = *(a1 + 64);
  *(a5 + 80) = v9;
  v10 = *(a1 + 112);
  *(a5 + 96) = *(a1 + 96);
  *(a5 + 112) = v10;
  v11 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v11;
  v12 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v12;
  sub_1E1308EC0(a2, a5 + 168);
  v13 = *(a3 + 16);
  *(a5 + 208) = *a3;
  *(a5 + 224) = v13;
  *(a5 + 240) = *(a3 + 32);
  result = *a4;
  v15 = *(a4 + 16);
  *(a5 + 248) = *a4;
  *(a5 + 264) = v15;
  *(a5 + 280) = *(a4 + 32);
  return result;
}

uint64_t BadgeViewLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(v3 + 208, v26, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    sub_1E1AF11DC();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_1E1308058(v26, &qword_1ECEB2AD0, &unk_1E1B03790);
    v11 = 0.0;
  }

  sub_1E134FD1C(v3 + 248, v26, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    sub_1E1AF11DC();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_1E1308058(v26, &qword_1ECEB4E00, &qword_1E1B0AB20);
    v13 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1Tm((v3 + 168), *(v3 + 192));
  sub_1E1AF11DC();
  v15 = 0.0;
  if (v11 != 0.0 && v13 != 0.0)
  {
    v16 = 128;
    if (*(v3 + 136))
    {
      v16 = 120;
    }

    v15 = *(v3 + v16);
  }

  v17 = v11 + v13 + v15;
  if (v17 > v14)
  {
    v14 = v17;
  }

  if (*(v3 + 144))
  {
    v14 = v17;
  }

  v18 = [a1 traitCollection];
  v19 = sub_1E1AF695C();

  v20 = 10;
  if (v19)
  {
    v20 = 5;
  }

  sub_1E1300B24(&v4[v20], v26);
  v21 = v27;
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  sub_1E13BC274(v21);
  sub_1E1AF12DC();
  v22 = *(v7 + 8);
  v22(v9, v6);
  v23 = v4[3];
  __swift_project_boxed_opaque_existential_1Tm(v4, v23);
  sub_1E13BC274(v23);
  sub_1E1AF12DC();
  v22(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t static BadgeViewLayout.measurements(valueLabelWidth:viewSize:captionLabelWidth:fitting:using:in:)(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = sub_1E1AF745C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0.0;
  if (a3 != 0.0 && a4 != 0.0)
  {
    v16 = 128;
    if (*(a1 + 136))
    {
      v16 = 120;
    }

    v15 = *(a1 + v16);
  }

  v17 = a3 + a4 + v15;
  if (v17 > a6)
  {
    v18 = v17;
  }

  else
  {
    v18 = a6;
  }

  if (!*(a1 + 144))
  {
    v17 = v18;
  }

  v19 = [a2 traitCollection];
  v20 = sub_1E1AF695C();

  v21 = 80;
  if (v20)
  {
    v21 = 40;
  }

  sub_1E1300B24(a1 + v21, v27);
  v22 = v28;
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  sub_1E13BC274(v22);
  sub_1E1AF12DC();
  v23 = *(v12 + 8);
  v23(v14, v11);
  v24 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1Tm(a1, v24);
  sub_1E13BC274(v24);
  sub_1E1AF12DC();
  v23(v14, v11);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

id BadgeViewLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v107 = a3;
  v104 = a2;
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 168), *(v6 + 192));
  sub_1E1AF11CC();
  v131.origin.x = a3;
  v131.origin.y = a4;
  v131.size.width = a5;
  v131.size.height = a6;
  MinX = CGRectGetMinX(v131);
  v17 = [a1 traitCollection];
  v18 = sub_1E1AF695C();

  v19 = 80;
  if (v18)
  {
    v19 = 40;
  }

  sub_1E1300B24(v7 + v19, &v114);
  v20 = *(&v115 + 1);
  __swift_project_boxed_opaque_existential_1Tm(&v114, *(&v115 + 1));
  sub_1E13BC274(v20);
  sub_1E1AF12DC();
  v21 = *(v14 + 8);
  v21(v16, v13);
  __swift_project_boxed_opaque_existential_1Tm(v7, *(v7 + 24));
  sub_1E1AF12FC();
  v22 = v107;
  __swift_destroy_boxed_opaque_existential_1(&v114);
  v132.origin.x = v22;
  v132.origin.y = a4;
  v132.size.width = a5;
  v108 = a6;
  v132.size.height = a6;
  CGRectGetWidth(v132);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 168), *(v7 + 192));
  sub_1E1AF116C();
  sub_1E134FD1C(v7 + 208, &v114, &qword_1ECEB2AD0, &unk_1E1B03790);
  v23 = *(&v115 + 1);
  sub_1E1308058(&v114, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (v23 && *(v7 + 154) == 1)
  {
    sub_1E134FD1C(v7 + 208, &v128, &qword_1ECEB2AD0, &unk_1E1B03790);
    v24 = *(&v129 + 1);
    if (*(&v129 + 1))
    {
      v25 = v130;
      v26 = __swift_project_boxed_opaque_existential_1Tm(&v128, *(&v129 + 1));
      *(&v115 + 1) = v24;
      v116 = *(v25 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v114);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_0, v26, v24);
      __swift_destroy_boxed_opaque_existential_1(&v128);
    }

    else
    {
      sub_1E1308058(&v128, &qword_1ECEB2AD0, &unk_1E1B03790);
      v114 = 0u;
      v115 = 0u;
      v116 = 0;
    }

    v128 = v114;
    v129 = v115;
    v130 = v116;
    sub_1E134FD1C(v7 + 248, &v125, &qword_1ECEB4E00, &qword_1E1B0AB20);
  }

  else
  {
    sub_1E134FD1C(v7 + 248, &v128, &qword_1ECEB4E00, &qword_1E1B0AB20);
    sub_1E134FD1C(v7 + 208, &v125, &qword_1ECEB2AD0, &unk_1E1B03790);
    v28 = *(&v126 + 1);
    if (*(&v126 + 1))
    {
      v29 = v127;
      v30 = __swift_project_boxed_opaque_existential_1Tm(&v125, *(&v126 + 1));
      *(&v115 + 1) = v28;
      v116 = *(v29 + 8);
      v31 = __swift_allocate_boxed_opaque_existential_0(&v114);
      (*(*(v28 - 8) + 16))(v31, v30, v28);
      __swift_destroy_boxed_opaque_existential_1(&v125);
    }

    else
    {
      sub_1E1308058(&v125, &qword_1ECEB2AD0, &unk_1E1B03790);
      v114 = 0u;
      v115 = 0u;
      v116 = 0;
    }

    v125 = v114;
    v126 = v115;
    v127 = v116;
  }

  v32 = [a1 traitCollection];
  v33 = sub_1E1AF697C();

  if (v33)
  {
    v34 = v121;
  }

  else
  {
    v34 = v123;
  }

  if (v33)
  {
    v35 = v123;
  }

  else
  {
    v35 = v121;
  }

  sub_1E134FD1C(&v128, v34, &qword_1ECEB4E00, &qword_1E1B0AB20);
  sub_1E134FD1C(&v125, v35, &qword_1ECEB4E00, &qword_1E1B0AB20);
  sub_1E134FD1C(v123, &v114, &qword_1ECEB4E00, &qword_1E1B0AB20);
  v36 = *(&v115 + 1);
  sub_1E1308058(&v114, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (!v36)
  {
    sub_1E134FD1C(v121, &v114, &qword_1ECEB4E00, &qword_1E1B0AB20);
    v37 = *(&v115 + 1);
    sub_1E1308058(&v114, &qword_1ECEB4E00, &qword_1E1B0AB20);
    if (!v37)
    {
      goto LABEL_73;
    }
  }

  sub_1E134FD1C(v123, &v114, &qword_1ECEB4E00, &qword_1E1B0AB20);
  v38 = *(&v115 + 1);
  sub_1E1308058(&v114, &qword_1ECEB4E00, &qword_1E1B0AB20);
  v39 = 0.0;
  if (v38)
  {
    sub_1E134FD1C(v121, &v114, &qword_1ECEB4E00, &qword_1E1B0AB20);
    v40 = *(&v115 + 1);
    sub_1E1308058(&v114, &qword_1ECEB4E00, &qword_1E1B0AB20);
    if (v40)
    {
      v41 = 128;
      if (*(v7 + 136))
      {
        v41 = 120;
      }

      v39 = *(v7 + v41);
    }
  }

  sub_1E134FD1C(v123, &v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (v120)
  {
    sub_1E1308EC0(&v119, &v114);
    __swift_project_boxed_opaque_existential_1Tm(&v114, *(&v115 + 1));
    v42 = v108;
    sub_1E1AF11DC();
    v44 = v43;
    MinX = v45;
    v133.origin.x = v22;
    v133.origin.y = a4;
    v133.size.width = a5;
    v133.size.height = v42;
    Width = CGRectGetWidth(v133);
    if (Width >= v44)
    {
      v47 = v44;
    }

    else
    {
      v47 = Width;
    }

    __swift_destroy_boxed_opaque_existential_1(&v114);
  }

  else
  {
    sub_1E1308058(&v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
    MinX = 0.0;
    v47 = 0.0;
  }

  sub_1E134FD1C(v121, &v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (v120)
  {
    sub_1E1308EC0(&v119, &v114);
    __swift_project_boxed_opaque_existential_1Tm(&v114, *(&v115 + 1));
    v48 = v108;
    sub_1E1AF11DC();
    v50 = v49;
    v103 = v51;
    v134.origin.x = v22;
    v134.origin.y = a4;
    v134.size.width = a5;
    v134.size.height = v48;
    v52 = CGRectGetWidth(v134) - (v39 + v47);
    if (v52 >= v50)
    {
      v52 = v50;
    }

    if (v52 > 0.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0.0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v114);
  }

  else
  {
    sub_1E1308058(&v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
    v103 = 0;
    v53 = 0.0;
  }

  v54 = *(v7 + 160);
  *&v102[1] = v53;
  v55 = v22;
  v56 = a4;
  v57 = a5;
  v58 = v108;
  if (v54 == 4)
  {
    v59 = CGRectGetMinX(*&v55);
  }

  else
  {
    v59 = CGRectGetMidX(*&v55) + (v39 + v47 + v53) * -0.5;
  }

  sub_1E134FD1C(v123, &v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
  v105 = a4;
  if (v120)
  {
    sub_1E1308EC0(&v119, &v114);
    __swift_project_boxed_opaque_existential_1Tm(&v114, *(&v115 + 1));
    v60 = v108;
    sub_1E1AF11CC();
    v62 = v61;
    v135.origin.x = v22;
    v135.origin.y = a4;
    v135.size.width = a5;
    v135.size.height = v60;
    MinY = CGRectGetMinY(v135);
    v64 = [a1 traitCollection];
    v65 = sub_1E1AF695C();

    v66 = 80;
    if (v65)
    {
      v66 = 40;
    }

    sub_1E1300B24(v7 + v66, &v119);
    v67 = v120;
    __swift_project_boxed_opaque_existential_1Tm(&v119, v120);
    sub_1E13BC274(v67);
    v68 = sub_1E1AF12DC();
    v21(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v119);
    v69 = MinY + v68 - (MinX - v62);
    __swift_destroy_boxed_opaque_existential_1(&v114);
    v70 = v59;
  }

  else
  {
    sub_1E1308058(&v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
    v70 = 0.0;
    v69 = 0.0;
    v47 = 0.0;
    MinX = 0.0;
  }

  sub_1E134FD1C(v121, &v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (v120)
  {
    sub_1E1308EC0(&v119, &v114);
    __swift_project_boxed_opaque_existential_1Tm(&v114, *(&v115 + 1));
    sub_1E1AF11CC();
    sub_1E134FD1C(v123, &v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
    v71 = v120;
    sub_1E1308058(&v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
    if (v71)
    {
      v136.origin.x = v70;
      v136.origin.y = v69;
      v136.size.width = v47;
      v136.size.height = MinX;
      CGRectGetMaxX(v136);
    }

    v137.origin.x = v107;
    v137.size.height = v108;
    v137.origin.y = v105;
    v137.size.width = a5;
    CGRectGetMinY(v137);
    v72 = [a1 traitCollection];
    v73 = sub_1E1AF695C();

    v74 = 80;
    if (v73)
    {
      v74 = 40;
    }

    sub_1E1300B24(v7 + v74, &v119);
    v75 = v120;
    __swift_project_boxed_opaque_existential_1Tm(&v119, v120);
    sub_1E13BC274(v75);
    sub_1E1AF12DC();
    v21(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v119);
    __swift_destroy_boxed_opaque_existential_1(&v114);
    v76 = v124;
    if (v124)
    {
      goto LABEL_54;
    }
  }

  else
  {
    sub_1E1308058(&v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
    v76 = v124;
    if (v124)
    {
LABEL_54:
      v77 = __swift_project_boxed_opaque_existential_1Tm(v123, v76);
      v78 = *(v76 - 8);
      v79 = MEMORY[0x1EEE9AC00](v77);
      v81 = v102 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v78 + 16))(v81, v79);
      sub_1E1AF116C();
      (*(v78 + 8))(v81, v76);
    }
  }

  v82 = v122;
  if (v122)
  {
    v83 = __swift_project_boxed_opaque_existential_1Tm(v121, v122);
    v84 = *(v82 - 8);
    v85 = MEMORY[0x1EEE9AC00](v83);
    v87 = v102 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v84 + 16))(v87, v85);
    sub_1E1AF116C();
    (*(v84 + 8))(v87, v82);
  }

  LOBYTE(v114) = *(v7 + 155);
  sub_1E134FD1C(v7 + 248, &v114 + 8, &qword_1ECEB4E00, &qword_1E1B0AB20);
  sub_1E134FD1C(v7 + 208, &v117, &qword_1ECEB2AD0, &unk_1E1B03790);
  if (v114 == 2)
  {
    if (v116)
    {
      sub_1E1308EC0((&v114 + 8), &v119);
      __swift_project_boxed_opaque_existential_1Tm(&v119, v120);
      v100 = sub_1E1AF114C();
      *(v101 + 8) = 0;
      v100(v113, 0);
      __swift_destroy_boxed_opaque_existential_1(&v119);
      v97 = &qword_1ECEB2AD0;
      v98 = &unk_1E1B03790;
      v99 = &v117;
      goto LABEL_72;
    }

LABEL_71:
    v97 = &unk_1ECEB5AD8;
    v98 = &unk_1E1B18EA0;
    v99 = &v114;
    goto LABEL_72;
  }

  if (v114 != 1 || !v116)
  {
    goto LABEL_71;
  }

  sub_1E134FD1C(&v114 + 8, &v119, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (!v118)
  {
    __swift_destroy_boxed_opaque_existential_1(&v119);
    goto LABEL_71;
  }

  sub_1E1308EC0(&v119, v113);
  sub_1E1308EC0(&v117, v111);
  __swift_project_boxed_opaque_existential_1Tm(v113, v113[3]);
  __swift_project_boxed_opaque_existential_1Tm(v111, v112);
  sub_1E1AF115C();
  v89 = v88;
  v90 = sub_1E1AF114C();
  *(v91 + 8) = v89;
  v90(v110, 0);
  sub_1E1300B24(v113, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC0, &unk_1E1B03780);
  sub_1E158664C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_65:
    __swift_destroy_boxed_opaque_existential_1(v111);
    __swift_destroy_boxed_opaque_existential_1(v113);
    v97 = &qword_1ECEB4E00;
    v98 = &qword_1E1B0AB20;
    v99 = (&v114 + 8);
LABEL_72:
    sub_1E1308058(v99, v97, v98);
LABEL_73:
    sub_1E1AF106C();
    sub_1E1308058(&v125, &qword_1ECEB4E00, &qword_1E1B0AB20);
    sub_1E1308058(&v128, &qword_1ECEB4E00, &qword_1E1B0AB20);
    sub_1E1308058(v121, &qword_1ECEB4E00, &qword_1E1B0AB20);
    return sub_1E1308058(v123, &qword_1ECEB4E00, &qword_1E1B0AB20);
  }

  v92 = v109;
  __swift_project_boxed_opaque_existential_1Tm(v111, v112);
  result = sub_1E1AF148C();
  if (result)
  {
    v94 = result;
    result = [v92 font];
    if (result)
    {
      v95 = result;
      v96 = v92;
      [v94 ascender];
      [v94 capHeight];
      [v95 ascender];
      [v95 capHeight];
      [v96 frame];
      [v96 setFrame_];

      goto LABEL_65;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E158664C()
{
  result = qword_1EE1D22A8;
  if (!qword_1EE1D22A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1D22A8);
  }

  return result;
}

unint64_t sub_1E158669C()
{
  result = qword_1ECEB5AE0;
  if (!qword_1ECEB5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5AE0);
  }

  return result;
}

uint64_t sub_1E1586728(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_1E1586770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1E1586848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1E1586890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1586918()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1E1AEFCCC();
  __swift_allocate_value_buffer(v3, qword_1EE1F8650);
  v4 = __swift_project_value_buffer(v3, qword_1EE1F8650);
  sub_1E1AEFCAC();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id sub_1E1586A4C()
{
  result = sub_1E1586A6C();
  qword_1EE1E0EE8 = result;
  return result;
}

id sub_1E1586A6C()
{
  v0 = sub_1E1AEFF8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5AF0, &qword_1E1B192E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1E1AF5DBC();
  [v7 setDateFormat_];

  sub_1E1AF00FC();
  v9 = sub_1E1AF013C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    v11 = sub_1E1AF011C();
    (*(v10 + 8))(v6, v9);
  }

  [v7 setTimeZone_];

  sub_1E1AEFEEC();
  v12 = sub_1E1AEFF2C();
  (*(v1 + 8))(v3, v0);
  [v7 setLocale_];

  return v7;
}

uint64_t AppStoreAMSEngagementRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v83 = a2;
  v82 = a3;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v75 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75 - v27;
  v29 = a1;
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
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

  v35 = sub_1E1588624(v30, v32);
  if (v35 > 2)
  {
    if (v35 != 3)
    {
      if (v35 == 4)
      {
        v36 = 1682535268;
        v48 = 0xE400000000000000;
        v53 = v81;
        sub_1E1AF381C();
        v37 = sub_1E1AF37CC();
        v39 = v54;
        (v34)(v53, v84);
        if (v39)
        {
          v55 = sub_1E1AF39DC();
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
      v49 = sub_1E1AF5A7C();
      sub_1E1380704();
      swift_allocError();
      v50 = MEMORY[0x1E69E7CC0];
      *v51 = v36;
      v51[1] = v48;
      v51[2] = &type metadata for AppStoreAMSEngagementRequest;
      v51[3] = v50;
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69AB6A0], v49);
      swift_willThrow();
      v52 = sub_1E1AF39DC();
      (*(*(v52 - 8) + 8))(v83, v52);
      return (v34)(v29, v84);
    }

    v36 = 1682535268;
    v60 = v80;
    sub_1E1AF381C();
    v37 = sub_1E1AF37CC();
    v39 = v61;
    (v34)(v60, v84);
    if (v39)
    {
      v62 = sub_1E1AF39DC();
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
    sub_1E1AF381C();
    v81 = sub_1E1AF37CC();
    v39 = v56;
    (v34)(v25, v84);
    if (!v39)
    {
      v48 = 0xE300000000000000;
      goto LABEL_10;
    }

    v57 = v76;
    sub_1E1AF381C();
    v41 = sub_1E1AF37CC();
    v43 = v58;
    (v34)(v57, v84);
    if (v43)
    {
      v59 = sub_1E1AF39DC();
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
    sub_1E1AF381C();
    v63 = sub_1E1AF37CC();
    v39 = v64;
    (v34)(v15, v84);
    if (!v39)
    {
      v36 = 0x65736143657375;
      v48 = 0xE700000000000000;
      goto LABEL_10;
    }

    v65 = v78;
    sub_1E1AF381C();
    v41 = sub_1E1AF37CC();
    v43 = v66;
    (v34)(v65, v84);
    if (v43)
    {
      sub_1E1AF381C();
      v46 = sub_1E1AF379C();
      v68 = v67;
      v69 = sub_1E1AF39DC();
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
  sub_1E1AF381C();
  v37 = sub_1E1AF37CC();
  v39 = v38;
  (v34)(v20, v84);
  if (!v39)
  {
    v48 = 0xE700000000000000;
    goto LABEL_10;
  }

  v40 = v77;
  sub_1E1AF381C();
  v41 = sub_1E1AF37CC();
  v43 = v42;
  (v34)(v40, v84);
  if (!v43)
  {
    goto LABEL_26;
  }

  v44 = sub_1E1AF39DC();
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
      sub_1E1AF6FEC();

      v6 = 0xD00000000000001FLL;
    }

    else
    {
      sub_1E1AF6FEC();

      v6 = 0xD000000000000014;
    }

    v9 = v6;
    MEMORY[0x1E68FECA0](v2, v1);
    MEMORY[0x1E68FECA0](41, 0xE100000000000000);
    return v9;
  }

  else if (v4 == 2)
  {
    sub_1E1AF6FEC();

    MEMORY[0x1E68FECA0](v2, v1);
    MEMORY[0x1E68FECA0](41, 0xE100000000000000);
    result = 0xD000000000000023;
    if ((v3 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0, &unk_1E1B04830);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1E1B02CD0;
      *(v7 + 32) = 0xD000000000000023;
      *(v7 + 40) = 0x80000001E1B664C0;
      MEMORY[0x1E68FECA0](0x2074756F656D6974, 0xE900000000000028);
      sub_1E1AF656C();
      *(v7 + 48) = 0;
      *(v7 + 56) = 0xE000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
      sub_1E130C384();
      v8 = sub_1E1AF5D6C();

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

uint64_t sub_1E158778C()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0, "p-\t");
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1E1B03760;
      *(v17 + 32) = 0x6E6F69746361;
      *(v17 + 40) = 0xE600000000000000;
      *(v17 + 48) = 0xD000000000000011;
      *(v17 + 56) = 0x80000001E1B665A0;
      v13 = MEMORY[0x1E69E6158];
      *(v17 + 72) = MEMORY[0x1E69E6158];
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

      v20 = sub_1E1303A74(v17);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80, &qword_1E1B192E0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v10 + 16) = v20;
LABEL_18:
      v16 = v66;
      goto LABEL_19;
    }

    v65 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0, "p-\t");
    inited = swift_initStackObject();
    v45 = v6;
    v46 = inited;
    *(inited + 16) = xmmword_1E1B05090;
    *(inited + 32) = 0x6E6F69746361;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x80000001E1B66580;
    v47 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
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
    v50 = qword_1EE1E0EE0;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = qword_1EE1E0EE8;
    sub_1E1AEFE5C();
    v52 = sub_1E1AEFDBC();
    (*(v2 + 8))(v4, v1);
    v53 = [v51 stringFromDate_];

    v54 = sub_1E1AF5DFC();
    v56 = v55;

    v13 = MEMORY[0x1E69E6158];
    v46[27] = MEMORY[0x1E69E6158];
    v46[24] = v54;
    v46[25] = v56;
    v43 = sub_1E1303A74(v46);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80, &qword_1E1B192E0);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0, "p-\t");
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_1E1B03760;
      *(v12 + 32) = 0x6E6F69746361;
      *(v12 + 40) = 0xE600000000000000;
      strcpy((v12 + 48), "amd.getSegment");
      *(v12 + 63) = -18;
      v13 = MEMORY[0x1E69E6158];
      *(v12 + 72) = MEMORY[0x1E69E6158];
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
      sub_1E1588788(v6, v5, v68, v67, v8, v9);
      v14 = v8;
      v15 = sub_1E1303A74(v12);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80, &qword_1E1B192E0);
      swift_arrayDestroy();
      *(v10 + 16) = v15;
      v16 = v14;
      goto LABEL_19;
    }

    v66 = v8;
    v65 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0, "p-\t");
    v32 = swift_initStackObject();
    v33 = v6;
    v34 = v32;
    *(v32 + 16) = xmmword_1E1B03760;
    *(v32 + 32) = 0x6E6F69746361;
    *(v32 + 40) = 0xE600000000000000;
    *(v32 + 48) = 0xD000000000000011;
    *(v32 + 56) = 0x80000001E1B66530;
    v35 = MEMORY[0x1E69E6158];
    *(v32 + 72) = MEMORY[0x1E69E6158];
    *(v32 + 80) = 1682535268;
    *(v32 + 88) = 0xE400000000000000;
    *(v32 + 96) = v33;
    v64 = v33;
    *(v32 + 104) = v5;
    *(v32 + 120) = v35;
    *(v32 + 128) = 1702125924;
    *(v32 + 136) = 0xE400000000000000;
    v36 = qword_1EE1E0EE0;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = qword_1EE1E0EE8;
    sub_1E1AEFE5C();
    v38 = sub_1E1AEFDBC();
    (*(v2 + 8))(v4, v1);
    v39 = [v37 stringFromDate_];

    v40 = sub_1E1AF5DFC();
    v42 = v41;

    v13 = MEMORY[0x1E69E6158];
    v34[21] = MEMORY[0x1E69E6158];
    v34[18] = v40;
    v34[19] = v42;
    v43 = sub_1E1303A74(v34);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80, &qword_1E1B192E0);
    goto LABEL_17;
  }

  v66 = v8;
  v65 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0, "p-\t");
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1E1B05090;
  *(v21 + 32) = 0x6E6F69746361;
  *(v21 + 40) = 0xE600000000000000;
  *(v21 + 48) = 0xD000000000000021;
  *(v21 + 56) = 0x80000001E1B66550;
  v22 = MEMORY[0x1E69E6158];
  *(v21 + 72) = MEMORY[0x1E69E6158];
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
  v25 = qword_1EE1E0EE0;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EE1E0EE8;
  sub_1E1AEFE5C();
  v27 = sub_1E1AEFDBC();
  (*(v2 + 8))(v4, v1);
  v9 = [v26 stringFromDate_];

  v28 = sub_1E1AF5DFC();
  v30 = v29;

  v13 = MEMORY[0x1E69E6158];
  *(v21 + 216) = MEMORY[0x1E69E6158];
  *(v21 + 192) = v28;
  *(v21 + 200) = v30;
  v31 = sub_1E1303A74(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80, &qword_1E1B192E0);
  swift_arrayDestroy();
  *(v10 + 16) = v31;
  LOBYTE(v9) = v65;
  v6 = v64;
  v16 = v66;
  if ((v65 & 1) == 0)
  {
    v72 = MEMORY[0x1E69E63B0];
    v69 = v66;
    sub_1E138692C(&v69, 0x74756F656D6974, 0xE700000000000000);
  }

LABEL_19:
  v72 = v13;
  v69 = 1936748641;
  v70 = 0xE400000000000000;
  sub_1E138692C(&v69, 0x6E69616D6F64, 0xE600000000000000);
  v69 = v6;
  v70 = v5;
  v71 = v68;
  v72 = v67;
  v73 = v16;
  v74 = v9;
  v57 = sub_1E15881CC();
  if (v58)
  {
    v72 = v13;
    v69 = v57;
    v70 = v58;
    sub_1E138692C(&v69, 0x65696B6F6F436261, 0xE800000000000000);
  }

  v59 = [objc_opt_self() ams_sharedAccountStore];
  v60 = [v59 ams_fetchLocaliTunesAccount];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5AE8, &qword_1E1B50CD0);
  v61 = v60;
  sub_1E1AF587C();
  v72 = sub_1E1AF470C();
  v73 = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(&v69);

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  v62 = sub_1E1AF57DC();

  __swift_destroy_boxed_opaque_existential_1(&v69);

  return v62;
}

uint64_t sub_1E15881CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70, &qword_1E1B1AE80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v23 - v1;
  sub_1E1AF59DC();
  sub_1E1AF59CC();
  MEMORY[0x1E68FE6D0]();

  v3 = sub_1E1AF594C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v5 = sub_1E1AF593C();
    (*(v4 + 8))(v2, v3);
    if (qword_1EE1F8648 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v6 = sub_1E1AEFCCC();
      __swift_project_value_buffer(v6, qword_1EE1F8650);
      v7 = sub_1E1AEFBEC();
      v8 = [v5 ams:v7 cookiesForURL:?];

      sub_1E1588854();
      v9 = sub_1E1AF621C();

      if (v9 >> 62)
      {
        v10 = sub_1E1AF71CC();
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
          v11 = MEMORY[0x1E68FFD80](v5, v9);
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
        v15 = sub_1E1AF5DFC();
        v17 = v16;

        if (v15 == 0x62615F7078 && v17 == 0xE500000000000000)
        {

LABEL_20:

          v20 = [v12 value];

          v21 = sub_1E1AF5DFC();
          return v21;
        }

        v19 = sub_1E1AF74AC();

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

  sub_1E15887EC(v2);
  return 0;
}

double sub_1E158850C@<D0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 ams_storefront];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1E1AF5DFC();
    v9 = v8;

    v10 = MEMORY[0x1E69E6158];
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
  sub_1E138692C(v12, 0x6F726665726F7473, 0xEC0000006449746ELL);
  swift_endAccess();
  swift_beginAccess();
  *a3 = *(a2 + 16);

  return result;
}

unint64_t sub_1E1588624(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E1AF72FC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E158867C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1E15886D0(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_1E1588788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
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

uint64_t sub_1E15887EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70, &qword_1E1B1AE80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E1588854()
{
  result = qword_1EE1E3498;
  if (!qword_1EE1E3498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E3498);
  }

  return result;
}

AppStoreKit::ControllerRequirement_optional __swiftcall ControllerRequirement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ControllerRequirement.rawValue.getter()
{
  v1 = 0xD000000000000022;
  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1E1588970()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1588A1C(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1588AB4(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1588B68(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = 0xD000000000000022;
  v4 = "matic";
  v5 = "SIRI_REMOTE_REQUIRED";
  if (*v1 != 2)
  {
    v5 = "CONTROLLER_REQUIRED";
  }

  if (*v1)
  {
    v3 = 0xD000000000000014;
    v4 = "ONTROLLER_REQUIRED";
  }

  if (*v1 > 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v3;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

AppStoreKit::SpatialControllerRequirement_optional __swiftcall SpatialControllerRequirement.init(rawValue:)(Swift::String rawValue)
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

uint64_t SpatialControllerRequirement.rawValue.getter()
{
  v1 = 0x4554524F50505553;
  if (*v0 != 1)
  {
    v1 = 0x505055535F544F4ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4445524955514552;
  }
}

unint64_t sub_1E1588CA0()
{
  result = qword_1ECEB5AF8;
  if (!qword_1ECEB5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5AF8);
  }

  return result;
}

uint64_t sub_1E1588CF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4554524F50505553;
  v4 = 0xE900000000000044;
  if (v2 != 1)
  {
    v3 = 0x505055535F544F4ELL;
    v4 = 0xED0000444554524FLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4445524955514552;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x4554524F50505553;
  v8 = 0xE900000000000044;
  if (*a2 != 1)
  {
    v7 = 0x505055535F544F4ELL;
    v8 = 0xED0000444554524FLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4445524955514552;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
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

unint64_t sub_1E1588E1C()
{
  result = qword_1ECEB5B00;
  if (!qword_1ECEB5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5B00);
  }

  return result;
}

uint64_t sub_1E1588E70()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1588F24(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1588FC4(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1589080(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000044;
  v5 = 0x4554524F50505553;
  if (v2 != 1)
  {
    v5 = 0x505055535F544F4ELL;
    v4 = 0xED0000444554524FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4445524955514552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t SearchGhostHintFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchGhostHintFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void SearchGhostHintFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1EE1D28B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240, &unk_1E1B14420);
  __swift_project_value_buffer(v2, qword_1EE1D28B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0, &unk_1E1B21B10);
  sub_1E1AF4AAC();
  if (v5)
  {
    sub_1E1361B28(&v4, v6);
    sub_1E1589480(v6, a1);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_1E1589418(&v4);
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v3 = sub_1E1AF591C();
    __swift_project_value_buffer(v3, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t sub_1E1589418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B70, &qword_1E1B14250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1589480(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = MEMORY[0x1E69E6158];
  if (!v8 || (v24 = MEMORY[0x1E69E6158], v22 = v7, v23 = v8, __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24)), sub_1E1AF4A1C(), result = __swift_destroy_boxed_opaque_existential_1(&v22), !v2))
  {
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v11);
    v13 = (*(v12 + 16))(v11, v12);
    if (!v14 || (v24 = v9, v22 = v13, v23 = v14, __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24)), sub_1E1AF4A1C(), result = __swift_destroy_boxed_opaque_existential_1(&v22), !v2))
    {
      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, v15);
      v17 = (*(v16 + 24))(v15, v16);
      if (!v18 || (v24 = v9, v22 = v17, v23 = v18, __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24)), sub_1E1AF4A1C(), result = __swift_destroy_boxed_opaque_existential_1(&v22), !v2))
      {
        v19 = a1[3];
        v20 = a1[4];
        __swift_project_boxed_opaque_existential_1Tm(a1, v19);
        result = (*(v20 + 32))(v19, v20);
        if (v21)
        {
          v24 = v9;
          v22 = result;
          v23 = v21;
          __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
          sub_1E1AF4A1C();
          return __swift_destroy_boxed_opaque_existential_1(&v22);
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchGhostHintFieldsProvider(uint64_t a1)
{
  result = qword_1EE1E8530;
  if (!qword_1EE1E8530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double LayoutMarginsAware<>.layoutFrame.getter()
{
  [v0 frame];
  [v0 layoutMargins];

  sub_1E1AF6B0C();
  return result;
}

uint64_t AccessibilityFeatures.__allocating_init(id:title:artwork:features:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a2;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v18 = v17 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_segue;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  sub_1E134FD1C(a1, &v33, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v34 + 1))
  {
    v19 = v34;
    *(v17 + 16) = v33;
    *(v17 + 32) = v19;
    *(v17 + 48) = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v28 = a3;
    v29 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v14 + 8))(v16, v13);
    v31 = v23;
    v32 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a3 = v28;
    a4 = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v17 + 56) = v30;
  *(v17 + 64) = a3;
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_clickAction) = a6;
  sub_1E134B7C8(a7, v17 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_impressionMetrics);
  return v17;
}

uint64_t AccessibilityFeatures.init(id:title:artwork:features:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v32 = a2;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v8 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_segue;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  sub_1E134FD1C(a1, &v35, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v30 = a3;
    v31 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v16 + 8))(v18, v15);
    v33 = v23;
    v34 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a3 = v30;
    a4 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v27 = v39;
  *(v8 + 16) = v38;
  *(v8 + 32) = v27;
  v28 = v32;
  *(v8 + 48) = v40;
  *(v8 + 56) = v28;
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_clickAction) = a6;
  sub_1E134B7C8(a7, v8 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_impressionMetrics);
  return v8;
}

uint64_t AccessibilityFeatures.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v71 = sub_1E1AEFEAC();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v67 - v8;
  v83 = sub_1E1AF380C();
  v91 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v72 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v75 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v77 = v5;
  v21 = *(v5 + 16);
  v22 = v9;
  v23 = v9;
  v24 = v84;
  v21(v23, v84, v4);
  v80 = v20;
  v74 = v15;
  v78 = v22;
  v25 = v79;
  sub_1E1AF464C();
  v26 = v24;
  v27 = v21;
  v21(v25, v26, v4);
  v28 = 0xE500000000000000;
  v29 = v81;
  v82 = a1;
  sub_1E1AF381C();
  v73 = sub_1E1AF37CC();
  v31 = v30;
  v32 = *(v91 + 8);
  v91 += 8;
  v81 = v32;
  (v32)(v29, v83);
  if (!v31)
  {
    v33 = 0x656C746974;
    v45 = v25;
    v46 = v82;
LABEL_7:
    v47 = sub_1E1AF5A7C();
    sub_1E158A8D0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v48 = v33;
    v48[1] = v28;
    v48[2] = v76;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x1E69AB690], v47);
    swift_willThrow();
    v49 = *(v77 + 8);
    (v49)(v84, v4);
    (v81)(v46, v83);
    (v49)(v45, v4);
    sub_1E1308058(v80, &unk_1ECEB1770, &unk_1E1AFED20);
    return v49;
  }

  v68 = v31;
  v33 = 0x6B726F77747261;
  type metadata accessor for Artwork(0);
  v34 = v74;
  sub_1E1AF381C();
  v27(v78, v25, v4);
  sub_1E158A8D0(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_1E1AF464C();
  v35 = v90[0];
  if (!v90[0])
  {
    v45 = v25;
    v46 = v82;

    v28 = 0xE700000000000000;
    goto LABEL_7;
  }

  v36 = v82;
  sub_1E1AF381C();
  v67 = v4;
  v27(v78, v25, v4);
  type metadata accessor for AccessibilityFeature(0);
  sub_1E158A8D0(&qword_1ECEB5B08, type metadata accessor for AccessibilityFeature, &protocol conformance descriptor for AccessibilityFeature);
  v37 = sub_1E1AF630C();
  type metadata accessor for Action(0);
  sub_1E1AF381C();
  v78 = static Action.tryToMakeInstance(byDeserializing:using:)(v34, v25);
  v38 = v34;
  v39 = v83;
  v40 = v81;
  (v81)(v38, v83);
  v41 = v72;
  sub_1E1AF381C();
  v42 = sub_1E1AF37CC();
  v44 = v36;
  if (v43)
  {
    *&v87 = v42;
    *(&v87 + 1) = v43;
    sub_1E1AF6F6C();
    v40(v41, v39);
  }

  else
  {
    v50 = v69;
    sub_1E1AEFE9C();
    v51 = sub_1E1AEFE7C();
    v52 = v37;
    v53 = v41;
    v55 = v54;
    (*(v70 + 8))(v50, v71);
    *&v87 = v51;
    *(&v87 + 1) = v55;
    sub_1E1AF6F6C();
    v56 = v53;
    v37 = v52;
    (v81)(v56, v39);
  }

  sub_1E134FD1C(v80, v75, &unk_1ECEB1770, &unk_1E1AFED20);
  v49 = swift_allocObject();
  v57 = v49 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_segue;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 32) = 0;
  sub_1E134FD1C(v90, &v87, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v88 + 1))
  {
    v58 = v88;
    *(v49 + 16) = v87;
    *(v49 + 32) = v58;
    *(v49 + 48) = v89;
  }

  else
  {
    v59 = v69;
    sub_1E1AEFE9C();
    v60 = sub_1E1AEFE7C();
    v62 = v61;
    (*(v70 + 8))(v59, v71);
    v85 = v60;
    v86 = v62;
    sub_1E1AF6F6C();
    sub_1E1308058(&v87, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v63 = *(v77 + 8);
  v64 = v67;
  v63(v84, v67);
  (v81)(v44, v39);
  sub_1E1308058(v90, &unk_1ECEB5670, qword_1E1B03EC0);
  v63(v79, v64);
  sub_1E1308058(v80, &unk_1ECEB1770, &unk_1E1AFED20);
  v65 = v68;
  *(v49 + 56) = v73;
  *(v49 + 64) = v65;
  *(v49 + 72) = v35;
  *(v49 + 80) = v37;
  *(v49 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_clickAction) = v78;
  sub_1E134B7C8(v75, v49 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_impressionMetrics);
  return v49;
}

uint64_t AccessibilityFeatures.title.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AccessibilityFeatures.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

void *AccessibilityFeatures.deinit()
{
  sub_1E134B88C(v0 + 16);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_segue, &unk_1ECEB1780, &qword_1E1B0AD50);

  return v0;
}

uint64_t AccessibilityFeatures.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit21AccessibilityFeatures_segue, &unk_1ECEB1780, &qword_1E1B0AD50);

  return swift_deallocClassInstance();
}

uint64_t sub_1E158A8D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AccessibilityFeatures(uint64_t a1)
{
  result = qword_1EE1ED4F8;
  if (!qword_1EE1ED4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E158A9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AccessibilityFeatures.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E158AA24(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E158ADB4(uint64_t a1)
{
  v2 = sub_1E1AF209C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E1AF23AC();
}

uint64_t ProductPageCardBackgroundView.init()@<X0>(void *a1@<X8>)
{
  *a1 = swift_getKeyPath(byte_1E1B197C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5368, &qword_1E1B197F0);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for ProductPageCardBackgroundView(0) + 20);
  result = swift_getKeyPath(byte_1E1B197F8);
  *v2 = result;
  v2[8] = 0;
  return result;
}

uint64_t type metadata accessor for ProductPageCardBackgroundView(uint64_t a1)
{
  result = qword_1ECEB5B50;
  if (!qword_1ECEB5B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E158AF40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AF24DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5368, &qword_1E1B197F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1E158C0A8(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E1AF209C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1E1AF682C();
    v13 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E158B128()
{
  v1 = sub_1E1AF24DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ProductPageCardBackgroundView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1E1AF682C();
    v8 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

void *sub_1E158B278@<X0>(void *a1@<X8>)
{
  sub_1E158C118();
  result = sub_1E1AF24EC();
  *a1 = v3;
  return result;
}

uint64_t sub_1E158B2C8(uint64_t *a1)
{
  sub_1E158C118();

  return sub_1E1AF24FC();
}

uint64_t ProductPageCardBackgroundView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_1E1AF209C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5B10, &qword_1E1B19820);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5B18, &qword_1E1B19828);
  MEMORY[0x1EEE9AC00](v46);
  v12 = &v45 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5B20, &qword_1E1B19830);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v45 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5B28, &qword_1E1B19838);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v45 - v14;
  v15 = sub_1E1AF22EC();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 28);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1E1AF253C();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  __asm { FMOV            V0.2D, #20.0 }

  *v17 = _Q0;
  sub_1E158AF40(v7);
  (*(v2 + 104))(v4, *MEMORY[0x1E697DBB8], v1);
  LOBYTE(v20) = sub_1E1AF208C();
  v27 = *(v2 + 8);
  v27(v4, v1);
  v27(v7, v1);
  if ((v20 & 1) == 0)
  {
    v53 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5B30, &qword_1E1B19840);
    sub_1E1302CD4(&qword_1ECEB5B38, &qword_1ECEB5B30, &qword_1E1B19840, MEMORY[0x1E69809C8]);
  }

  v28 = sub_1E1AF215C();
  sub_1E158B8E0(v17, v10, v29);
  *&v10[*(v8 + 52)] = v28;
  *&v10[*(v8 + 56)] = 256;
  v30 = sub_1E1AF2D1C();
  v32 = v31;
  v33 = &v12[*(v46 + 36)];
  sub_1E158B944(v17, v33);
  v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5B40, &qword_1E1B19848) + 36));
  *v34 = v30;
  v34[1] = v32;
  sub_1E137F600(v10, v12, &qword_1ECEB5B10, &qword_1E1B19820);
  v35 = sub_1E158B128();
  swift_getKeyPath("@c;\v");
  v53 = v35;
  sub_1E158BC78();
  sub_1E1AF04EC();

  swift_beginAccess();
  LODWORD(v32) = *(v35 + 16);

  if ((v32 - 1) >= 2)
  {
    v36 = 1.0;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = v50;
  sub_1E137F600(v12, v50, &qword_1ECEB5B18, &qword_1E1B19828);
  *(v37 + *(v47 + 36)) = v36;
  v38 = sub_1E1AF2D4C();
  v39 = sub_1E158B128();
  swift_getKeyPath("@c;\v");
  v52 = v39;
  sub_1E1AF04EC();

  swift_beginAccess();
  v40 = *(v39 + 16);

  v41 = v48;
  sub_1E137F600(v37, v48, &qword_1ECEB5B20, &qword_1E1B19830);
  v42 = v41 + *(v49 + 36);
  *v42 = v38;
  *(v42 + 8) = v40;
  sub_1E137F600(v41, v51, &qword_1ECEB5B28, &qword_1E1B19838);
  return sub_1E158BCD0(v17, v43);
}

uint64_t sub_1E158B8E0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1E1AF22EC();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E158B944@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BA0, qword_1E1B19918);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v7 = sub_1E1AF209C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1E158AF40(&v21 - v12);
  (*(v8 + 104))(v10, *MEMORY[0x1E697DBB8], v7);
  v14 = sub_1E1AF208C();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  if (v14)
  {
    sub_1E1AF2ADC();
    v16 = sub_1E1AF2B0C();

    sub_1E158B8E0(v22, v6, v17);
    v18 = &v6[*(v3 + 36)];
    *v18 = v16;
    *(v18 + 8) = xmmword_1E1B0AAD0;
    *(v18 + 3) = 0x4010000000000000;
    sub_1E137F600(v6, a2, &qword_1ECEB5BA0, qword_1E1B19918);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v4 + 56))(a2, v19, 1, v3);
}

void sub_1E158BBB4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath("@c;\v");
  sub_1E158BC78();
  sub_1E1AF04EC();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

unint64_t sub_1E158BC78()
{
  result = qword_1ECEB5B48;
  if (!qword_1ECEB5B48)
  {
    type metadata accessor for FlowPreviewEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5B48);
  }

  return result;
}

uint64_t sub_1E158BCD0(uint64_t a1, double a2)
{
  v3 = sub_1E1AF22EC();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E158BD70(uint64_t a1)
{
  sub_1E158BE2C(319, &qword_1ECEB5330, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_1E158BE2C(319, &qword_1ECEB5B60, type metadata accessor for FlowPreviewEnvironment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E158BE2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF20BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E158BE80()
{
  result = qword_1ECEB5B68;
  if (!qword_1ECEB5B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5B28, &qword_1E1B19838);
    sub_1E158BF38();
    sub_1E1302CD4(&qword_1ECEB5B90, &qword_1ECEB5B98, &qword_1E1B19910, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5B68);
  }

  return result;
}

unint64_t sub_1E158BF38()
{
  result = qword_1ECEB5B70;
  if (!qword_1ECEB5B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5B20, &qword_1E1B19830);
    sub_1E158BFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5B70);
  }

  return result;
}

unint64_t sub_1E158BFC4()
{
  result = qword_1ECEB5B78;
  if (!qword_1ECEB5B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB5B18, &qword_1E1B19828);
    sub_1E1302CD4(&qword_1ECEB5B80, &qword_1ECEB5B10, &qword_1E1B19820, MEMORY[0x1E697DB78]);
    sub_1E1302CD4(&qword_1ECEB5B88, &qword_1ECEB5B40, &qword_1E1B19848, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5B78);
  }

  return result;
}

uint64_t sub_1E158C0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5368, &qword_1E1B197F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E158C118()
{
  result = qword_1ECEB5BA8;
  if (!qword_1ECEB5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5BA8);
  }

  return result;
}

uint64_t sub_1E158C180()
{
  v0 = sub_1E13017E4(&unk_1F5C29D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500, &unk_1E1B05F60);
  result = swift_arrayDestroy();
  off_1ECEB5BB0 = v0;
  return result;
}

uint64_t sub_1E158C1DC()
{
  v0 = sub_1E15A0538(&unk_1F5C2C6F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4930, &qword_1E1B0F2F0);
  result = swift_arrayDestroy();
  off_1ECEB5BB8 = v0;
  return result;
}

uint64_t static StorefrontPickerPagePresenter.currentStorefront()()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  v2 = v1;
  if (!v1)
  {
    v3 = [v0 ams_fetchLocaliTunesAccount];
    v12[0] = 0;
    v4 = [v3 resultWithError_];

    if (!v4)
    {
      v9 = v12[0];
      v10 = sub_1E1AEFB2C();

      swift_willThrow();
      goto LABEL_8;
    }

    v5 = v12[0];
    v2 = v4;
    v1 = 0;
  }

  v6 = v1;
  v7 = [v2 ams_storefront];

  if (!v7)
  {

LABEL_8:
    return 0;
  }

  v8 = sub_1E1AF5DFC();

  return v8;
}

void StorefrontPickerPagePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_platform);
  *v9 = 0;
  v9[1] = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = (v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = (v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedLanguageId);
  *v11 = 0;
  v11[1] = 0;
  v12 = sub_1E138C578(a1, a2, a3, a4);

  v13 = sub_1E158D8B8();
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 ams_storefront];
  if (!v15)
  {

LABEL_13:

LABEL_14:

    goto LABEL_15;
  }

  v16 = v15;
  sub_1E1AF5DFC();

  sub_1E13B8AA4();
  v17 = sub_1E1AF6EAC();

  if (!v17[2])
  {

    goto LABEL_14;
  }

  v57 = v17[2];
  v56 = v14;
  v18 = v17[4];
  v19 = v17[5];
  v20 = v17[6];
  v21 = v17[7];

  v22 = MEMORY[0x1E68FEBF0](v18, v19, v20, v21);
  v24 = v23;

  v25 = &unk_1F5C28878;
  v26 = 166;
  while (1)
  {
    if (!--v26)
    {
      v27 = 0;
      v28 = 0;
      v30 = 0;
      v29 = 0;
      goto LABEL_20;
    }

    v27 = *(v25 - 3);
    v28 = *(v25 - 2);
    v30 = *(v25 - 1);
    v29 = *v25;
    if (v30 == v22 && v29 == v24)
    {
      break;
    }

    v25 += 4;
    if (sub_1E1AF74AC())
    {
      goto LABEL_19;
    }
  }

  v30 = v22;
LABEL_19:

LABEL_20:

  v32 = (v12 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
  v33 = *(v12 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
  v34 = *(v12 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 8);
  v35 = *(v12 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 16);
  v36 = *(v12 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 24);
  *v32 = v27;
  v32[1] = v28;
  v32[2] = v30;
  v32[3] = v29;
  sub_1E14E85BC(v33, v34, v35, v36);
  if (v57 <= v17[2])
  {

    sub_1E158D9D8();
    v37 = sub_1E1AF6EAC();

    if (v37[2])
    {
      v38 = v37[4];
      v39 = v37[5];
      v40 = v37[6];
      v41 = v37[7];

      v42 = MEMORY[0x1E68FEBF0](v38, v39, v40, v41);
      v44 = v43;

      v45 = (v12 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedLanguageId);
      *v45 = v42;
      v45[1] = v44;

      v46 = v37[2];
      if (v46)
      {
        v47 = &v37[4 * v46];
        v48 = *v47;
        v49 = v47[1];
        v50 = v47[2];
        v51 = v47[3];

        v52 = MEMORY[0x1E68FEBF0](v48, v49, v50, v51);
        v54 = v53;

        swift_unknownObjectRelease();
        v55 = (v12 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_platform);
        *v55 = v52;
        v55[1] = v54;

        return;
      }
    }

LABEL_15:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

uint64_t sub_1E158C858(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E158C8C4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_view;
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

uint64_t sub_1E158C9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
  v6 = *(v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
  v7 = *(v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 8);
  v8 = *(v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 16);
  v9 = *(v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 24);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  sub_1E14E85BC(v6, v7, v8, v9);
  v10 = v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(ObjectType, v11);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v10 + 8);
    v15 = swift_getObjectType();
    (*(v14 + 32))(v15, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E158CAB0()
{
  v1 = 0;
  v2 = (v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
  while (2)
  {
    if (v1 <= 0xA5)
    {
      v3 = 165;
    }

    else
    {
      v3 = v1;
    }

    v4 = (&unk_1F5C28840 + 32 * v1 + 56);
    v5 = v1;
    while (1)
    {
      if (v3 == v5)
      {
        __break(1u);
        return;
      }

      v7 = v2[1];
      if (!v7)
      {
        goto LABEL_7;
      }

      v9 = *(v4 - 1);
      v8 = *v4;
      v11 = v2[2];
      v10 = v2[3];
      v12 = *v2;

      sub_1E158DA2C(v12, v7, v11, v10);

      sub_1E14E85BC(v12, v7, v11, v10);
      if (v9 == v11 && v10 == v8)
      {
        break;
      }

      v6 = sub_1E1AF74AC();

      if (v6)
      {
        goto LABEL_13;
      }

LABEL_7:
      ++v5;
      v4 += 4;
      if (v5 == 165)
      {
        return;
      }
    }

LABEL_13:
    v1 = v5 + 1;
    if (v5 != 164)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_1E158CC0C(__n128 a1)
{
  v2 = v1;
  v3 = (v1 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 8);
  if (v4)
  {
    v5 = *v3;
    v7 = v3[2];
    v6 = v3[3];
    sub_1E158DA2C(*v3, v4, v7, v6);

    sub_1E14E85BC(v5, v4, v7, v6);
    if (qword_1ECEB0EA0 != -1)
    {
LABEL_37:
      swift_once();
    }

    v8 = off_1ECEB5BB8;
    if (*(off_1ECEB5BB8 + 2) && (v9 = sub_1E13018F8(v5, v4), (v10 & 1) != 0))
    {
      v5 = *(v8[7] + 8 * v9);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v11 = *(v5 + 16);
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_34:
    v4 = 0;
    goto LABEL_35;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v11 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_8:
  v12 = 0;
  v4 = 0;
  v13 = (v2 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedLanguageId);
  v14 = v5 + 40;
  while (2)
  {
    v30 = v4;
    v2 = (v14 + 16 * v12);
    v4 = v12;
    while (1)
    {
      if (v4 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v16 = *(v2 - 1);
      v15 = *v2;
      v17 = qword_1ECEB0E98;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = off_1ECEB5BB0;
      if (!*(off_1ECEB5BB0 + 2))
      {

        goto LABEL_26;
      }

      v19 = sub_1E13018F8(v16, v15);
      v21 = v20;

      if (v21)
      {
        break;
      }

LABEL_26:
      v25 = v13[1];
LABEL_27:
      if (!v25)
      {
        goto LABEL_30;
      }

LABEL_11:
      ++v4;
      v2 += 2;
      if (v11 == v4)
      {
        v4 = v30;
        goto LABEL_35;
      }
    }

    v22 = (v18[7] + 16 * v19);
    v24 = *v22;
    v23 = v22[1];
    v26 = *v13;
    v25 = v13[1];

    if (!v23)
    {
      goto LABEL_27;
    }

    if (!v25)
    {

      goto LABEL_11;
    }

    if (v24 != v26 || v25 != v23)
    {
      v28 = sub_1E1AF74AC();

      if (v28)
      {
        goto LABEL_30;
      }

      goto LABEL_11;
    }

LABEL_30:
    v12 = v4 + 1;
    v14 = v5 + 40;
    if (v11 - 1 != v4)
    {
      continue;
    }

    break;
  }

LABEL_35:

  return v4;
}

uint64_t sub_1E158CE98(__n128 a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 8);
  if (v3)
  {
    v4 = *v2;
    v6 = v2[2];
    v5 = v2[3];
    sub_1E158DA2C(*v2, v3, v6, v5);

    sub_1E14E85BC(v4, v3, v6, v5);
    if (qword_1ECEB0EA0 != -1)
    {
      swift_once();
    }

    v7 = off_1ECEB5BB8;
    if (*(off_1ECEB5BB8 + 2) && (v8 = sub_1E13018F8(v4, v3), (v9 & 1) != 0))
    {
      v10 = *(v7[7] + 8 * v8);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  return v11;
}

unint64_t sub_1E158CF98(unint64_t result)
{
  if (result > 0xA4)
  {
    __break(1u);
  }

  else
  {
    v1 = *(&unk_1F5C28840 + 4 * result + 4);

    return v1;
  }

  return result;
}

uint64_t sub_1E158CFE0(unint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a3)
  {
    v5 = a2;
    v7 = a3;
  }

  else
  {
    v8 = (v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
    v7 = *(v4 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 8);
    if (!v7)
    {
      v15 = MEMORY[0x1E69E7CC0];
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v10 = v8[2];
    v9 = v8[3];
    v5 = *v8;
    sub_1E158DA2C(*v8, v7, v10, v9);

    sub_1E14E85BC(v5, v7, v10, v9);
  }

  v11 = qword_1ECEB0EA0;

  if (v11 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v12 = off_1ECEB5BB8;
    if (*(off_1ECEB5BB8 + 2) && (v13 = sub_1E13018F8(v5, v7), (v14 & 1) != 0))
    {
      v15 = *(v12[7] + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_11:
    if (*(v15 + 16) > a1)
    {
      break;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  v16 = *(v15 + 16 * a1 + 32);

  return v16;
}

unint64_t sub_1E158D134(unint64_t result)
{
  if (result > 0xA4)
  {
    __break(1u);
  }

  else
  {
    v1 = (&unk_1F5C28840 + 32 * result);
    v2 = v1[4];
    v3 = v1[5];
    v4 = v1[6];
    v5 = v1[7];

    return sub_1E158C9C4(v2, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1E158D1B0(unint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
  v6 = *(v2 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 8);
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v7 = *v5;
  v9 = v5[2];
  v8 = v5[3];
  sub_1E158DA2C(*v5, v6, v9, v8);

  sub_1E14E85BC(v7, v6, v9, v8);
  if (qword_1ECEB0EA0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v10 = off_1ECEB5BB8;
    if (*(off_1ECEB5BB8 + 2) && (v11 = sub_1E13018F8(v7, v6), (v12 & 1) != 0))
    {
      v7 = *(v10[7] + 8 * v11);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

LABEL_9:
    if (qword_1ECEB0E98 == -1)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      swift_once();
      if ((a1 & 0x8000000000000000) != 0)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    if (*(v7 + 16) > a1)
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v13 = off_1ECEB5BB0;
  v14 = v7 + 16 * a1;
  v16 = *(v14 + 32);
  v15 = *(v14 + 40);

  if (v13[2])
  {
    v17 = sub_1E13018F8(v16, v15);
    v19 = v18;

    if (v19)
    {
      v20 = *(v13[7] + 16 * v17);

      goto LABEL_17;
    }
  }

  else
  {
  }

  v20 = 0;
  v21 = 0;
LABEL_17:
  v22 = (v3 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedLanguageId);
  *v22 = v20;
  v22[1] = v21;

  v23 = v3 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v23 + 8);
    ObjectType = swift_getObjectType();
    (*(v25 + 32))(ObjectType, v25);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E158D3E0()
{
  v0 = sub_1E158D4E4();
  v2 = v1;
  v3 = sub_1E158D8B8();
  if (v3 && (v4 = v3, v5 = [v3 ams_storefront], v4, v5))
  {
    v6 = sub_1E1AF5DFC();
    v8 = v7;

    if (!v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (!v2)
    {
LABEL_4:
      if (v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (!v8)
  {
LABEL_12:

    v9 = 1;
    return v9 & 1;
  }

  if (v0 != v6 || v2 != v8)
  {
    v10 = sub_1E1AF74AC();

    v9 = v10 ^ 1;
    return v9 & 1;
  }

LABEL_11:
  v9 = 0;
  return v9 & 1;
}

uint64_t sub_1E158D4E4()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry);
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 8);
  if (v2)
  {
    v3 = v1[2];
    v4 = v1[3];
    v5 = *v1;

    sub_1E158DA2C(v5, v2, v3, v4);
    sub_1E14E85BC(v5, v2, v3, v4);
    v6 = *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedLanguageId + 8);
    if (v6)
    {
      v7 = *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_platform + 8);
      if (v7)
      {
        v8 = *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedLanguageId);
        v9 = *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_platform);

        MEMORY[0x1E68FECA0](45, 0xE100000000000000);
        MEMORY[0x1E68FECA0](v8, v6);

        MEMORY[0x1E68FECA0](44, 0xE100000000000000);
        MEMORY[0x1E68FECA0](v9, v7);

        return v3;
      }
    }
  }

  return 0;
}

void sub_1E158D618()
{
  if (sub_1E158D3E0())
  {
    v0 = sub_1E158D8B8();
    if (v0)
    {
      v1 = v0;
      sub_1E158D4E4();
      if (v2)
      {
        v3 = sub_1E1AF5DBC();
      }

      else
      {
        v3 = 0;
      }

      [v1 ams:v3 setStorefront:?];

      v5 = [objc_opt_self() ams_sharedAccountStore];
      v4 = [v5 ams:v1 saveAccount:0 verifyCredentials:?];
    }
  }
}

double sub_1E158D708()
{

  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_view);
  sub_1E14E85BC(*(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry), *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 24));

  return result;
}

uint64_t StorefrontPickerPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_view);
  sub_1E14E85BC(*(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry), *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 24));

  return v0;
}

uint64_t StorefrontPickerPagePresenter.__deallocating_deinit()
{
  v0 = BasePresenter.deinit();

  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_view);
  sub_1E14E85BC(*(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry), *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit29StorefrontPickerPagePresenter_selectedCountry + 24));

  return swift_deallocClassInstance();
}

id sub_1E158D8B8()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = [v0 ams_fetchLocaliTunesAccount];
    v8[0] = 0;
    v2 = [v3 resultWithError_];

    v4 = v8[0];
    if (v2)
    {
    }

    else
    {
      v5 = v4;
      v6 = sub_1E1AEFB2C();

      swift_willThrow();
      return 0;
    }
  }

  return v2;
}

unint64_t sub_1E158D9D8()
{
  result = qword_1ECEB5BD8;
  if (!qword_1ECEB5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5BD8);
  }

  return result;
}

double sub_1E158DA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata accessor for StorefrontPickerPagePresenter(uint64_t a1)
{
  result = qword_1ECEB5BE0;
  if (!qword_1ECEB5BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *SnapshotUpdate.init(contentSnapshot:animated:useReloadData:isInitialFullPageSnapshot:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v14 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, a5, a6, a4);
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for SnapshotUpdate(0, a5, a6, v15);
  *(a7 + result[9]) = a2;
  *(a7 + result[10]) = a3;
  *(a7 + result[11]) = v9;
  return result;
}

uint64_t SnapshotUpdate.contentSnapshot.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(a1 + 16), *(a1 + 24), a3);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

uint64_t sub_1E158DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double SheetEngagementManager.requestAppLevelSheets(bag:pageFields:signal:arcadeSubscriptionState:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v63 - v13;
  v15 = *a4;
  v16 = *(a4 + 8);
  if (qword_1EE1F3430 != -1)
  {
    v61 = v12;
    v62 = &v63 - v13;
    swift_once();
    v14 = v62;
    v12 = v61;
  }

  v17 = off_1EE1F3438;
  v18 = *(off_1EE1F3438 + 3);
  if (v18)
  {
    v63 = v14;
    v64 = v11;
    v65 = v12;
    v67 = a1;
    v68 = a3;
    v19 = *(off_1EE1F3438 + 2);
    v74 = 0x656461637261;
    v75 = 0xE600000000000000;
    sub_1E13B8AA4();

    if (sub_1E1AF6DDC() == v19 && v18 == v20)
    {
      v22 = v19;
    }

    else
    {
      v22 = v19;
      v23 = sub_1E1AF74AC();

      if ((v23 & 1) == 0)
      {
        v24 = &unk_1ECEB5000;
        v25 = *(v5 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_previousPageContext + 8);
        v26 = v19;
        if (v25)
        {
          v27 = *(v5 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_previousPageContext) == v19 && v25 == v18;
          if (v27 || (sub_1E1AF74AC() & 1) != 0)
          {

            if (qword_1EE1E35B8 == -1)
            {
              goto LABEL_35;
            }

            goto LABEL_58;
          }
        }

LABEL_37:
        v39 = (v5 + v24[383]);
        *v39 = v26;
        v39[1] = v18;

        *&v72 = 0x746E6F4365676170;
        *(&v72 + 1) = 0xEB00000000747865;

        v40 = MEMORY[0x1E69E6158];
        sub_1E1AF6F6C();
        if (*(a2 + 16) && (v41 = sub_1E135FCF4(&v74), (v42 & 1) != 0))
        {
          sub_1E137A5C4(*(a2 + 56) + 32 * v41, &v72);
          sub_1E134B88C(&v74);
          sub_1E1308058(&v72, &qword_1ECEB2DF0, &unk_1E1B02CE0);
          v43 = v68;
          if (!v67)
          {
LABEL_40:

LABEL_55:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98, &qword_1E1B09130);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_1E1B02CD0;
            v74 = 0x7274654D65676170;
            v75 = 0xEB00000000736369;
            v54 = MEMORY[0x1E69E6158];
            sub_1E1AF6F6C();
            v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
            *(v53 + 96) = v55;
            *(v53 + 72) = a2;
            v74 = 0x6C616E676973;
            v75 = 0xE600000000000000;

            sub_1E1AF6F6C();
            *(v53 + 168) = v55;
            *(v53 + 144) = v43;
            v56 = sub_1E13609A4(v53);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCAA0, &unk_1E1B02C50);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v57 = sub_1E159E07C(v26, v18);
            v59 = v58;

            if (v59)
            {
              *&v72 = 0x64496567646162;
              *(&v72 + 1) = 0xE700000000000000;
              sub_1E1AF6F6C();
              *(&v73 + 1) = v54;
              *&v72 = v57;
              *(&v72 + 1) = v59;
              sub_1E1301CF0(&v72, v71);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v70 = v56;
              sub_1E15988B4(v71, &v74, isUniquelyReferenced_nonNull_native);
              sub_1E134B88C(&v74);
              v56 = v70;
            }

            LOBYTE(v74) = 2;
            sub_1E158F5F0(&v74, 1, v56);

            goto LABEL_21;
          }
        }

        else
        {
          sub_1E134B88C(&v74);
          v72 = 0u;
          v73 = 0u;
          sub_1E1308058(&v72, &qword_1ECEB2DF0, &unk_1E1B02CE0);
          *&v72 = 0x746E6F4365676170;
          *(&v72 + 1) = 0xEB00000000747865;
          sub_1E1AF6F6C();
          *(&v73 + 1) = v40;
          *&v72 = v26;
          *(&v72 + 1) = v18;
          sub_1E1301CF0(&v72, v71);

          v44 = swift_isUniquelyReferenced_nonNull_native();
          v69[0] = a2;
          sub_1E15988B4(v71, &v74, v44);
          sub_1E134B88C(&v74);
          a2 = v69[0];
          v43 = v68;
          if (!v67)
          {
            goto LABEL_40;
          }
        }

        v45 = qword_1EE1E2DF8;

        if (v45 != -1)
        {
          swift_once();
        }

        v46 = v63;
        sub_1E1AF52FC();
        v47 = v65;
        sub_1E1AF532C();
        (*(v64 + 8))(v46, v47);
        if (v74 == 1 && ((swift_beginAccess(), v48 = v17[19], v49 = v48 - 3, v48 <= 2) ? (v50 = v17[21] == 0) : (v50 = 0), v50 ? (v51 = 0) : (v51 = 1), v49 <= 0xFFFFFFFFFFFFFFFDLL && (v51 & 1) != 0))
        {
          *&v72 = 0xD000000000000017;
          *(&v72 + 1) = 0x80000001E1B66780;
          sub_1E1AF6F6C();
          *(&v73 + 1) = MEMORY[0x1E69E6370];
          LOBYTE(v72) = 1;
          sub_1E1301CF0(&v72, v71);
          v52 = swift_isUniquelyReferenced_nonNull_native();
          v70 = v43;
          sub_1E15988B4(v71, &v74, v52);

          sub_1E134B88C(&v74);
          v43 = v70;
        }

        else
        {
        }

        goto LABEL_55;
      }
    }

    v66 = v5;
    v30 = v5 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_previousArcadeSubscriptionState;
    v31 = *v30;
    v32 = *(v30 + 8);
    if (v32 <= 0xFB)
    {
      v74 = *v30;
      LOBYTE(v75) = v32;
      if (v16 <= 0xFB)
      {
        *&v72 = v15;
        BYTE8(v72) = v16;
        sub_1E1361A40(v15, v16);
        sub_1E1361A40(v15, v16);
        sub_1E159E358(v31, v32);
        sub_1E159E358(v31, v32);
        v33 = static ArcadeState.== infix(_:_:)(&v74, &v72);
        sub_1E1361A60(v72, BYTE8(v72));
        sub_1E1361A60(v74, v75);
        sub_1E159E36C(v31, v32);
        v24 = &unk_1ECEB5000;
        if (v33)
        {
          goto LABEL_30;
        }

LABEL_36:
        v37 = *v30;
        *v30 = v15;
        v38 = *(v30 + 8);
        *(v30 + 8) = v16;
        sub_1E159E36C(v37, v38);
        v5 = v66;
        v26 = v22;
        goto LABEL_37;
      }

      sub_1E1361A40(v15, v16);
      sub_1E1361A40(v15, v16);
      sub_1E159E358(v31, v32);
      sub_1E159E358(v31, v32);
      sub_1E1361A60(v31, v32);
    }

    else
    {
      sub_1E1361A40(v15, v16);
      sub_1E1361A40(v15, v16);
      sub_1E159E358(v31, v32);
      if (v16 > 0xFB)
      {
        sub_1E159E36C(v31, v32);
        v24 = &unk_1ECEB5000;
LABEL_30:
        v34 = (v66 + v24[383]);
        v35 = v34[1];
        if (v35 && (*v34 == v22 && v35 == v18 || (sub_1E1AF74AC() & 1) != 0))
        {

          sub_1E1361A60(v15, v16);
          if (qword_1EE1E35B8 == -1)
          {
LABEL_35:
            v36 = sub_1E1AF591C();
            __swift_project_value_buffer(v36, qword_1EE216170);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
            sub_1E1AF38EC();
            *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
            sub_1E1AF382C();
            sub_1E1AF548C();
            goto LABEL_21;
          }

LABEL_58:
          swift_once();
          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }

    sub_1E159E36C(v31, v32);
    sub_1E159E36C(v15, v16);
    v24 = &unk_1ECEB5000;
    goto LABEL_36;
  }

  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v28 = sub_1E1AF591C();
  __swift_project_value_buffer(v28, qword_1EE216170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

LABEL_21:

  return result;
}

double sub_1E158EBBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1E13018F8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1E137A5C4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1E158EC20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1E135FCF4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1E137A5C4(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_1E158ECD4(void *a1, uint64_t a2, uint64_t (*a3)(void *), unint64_t *a4, void *a5)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = a1;
    v8 = sub_1E1AF71DC();

    if (v8)
    {
      sub_1E13006E4(0, a4, a5);
      swift_dynamicCast();
      return v15;
    }
  }

  else if (*(a2 + 16))
  {
    v11 = a3(a1);
    if (v12)
    {
      v13 = *(*(a2 + 56) + 8 * v11);
      v14 = v13;
      return v13;
    }
  }

  return 0;
}

void SheetEngagementManager.presentationWindow.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*SheetEngagementManager.presentationWindow.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_presentationWindow;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1E158EF0C;
}

void sub_1E158EF0C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1E158EF88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_flowActionViewControllerFactory);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E1543638;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4, v5);
}

uint64_t sub_1E158F028(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E1582734;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_flowActionViewControllerFactory);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1E1300E34(v3, v4);
  return sub_1E1300EA8(v8, v9);
}

uint64_t SheetEngagementManager.flowActionViewControllerFactory.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_flowActionViewControllerFactory);
  swift_beginAccess();
  v2 = *v1;
  sub_1E1300E34(*v1, v1[1]);
  return v2;
}

uint64_t SheetEngagementManager.flowActionViewControllerFactory.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_flowActionViewControllerFactory);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1E1300EA8(v6, v7);
}

id SheetEngagementManager.__allocating_init(objectGraph:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1E15A3220(a1);

  return v4;
}

id SheetEngagementManager.init(objectGraph:)(uint64_t a1)
{
  v1 = sub_1E15A3220(a1);

  return v1;
}

double SheetEngagementManager.requestAppLaunchSheet(bag:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0, &unk_1E1B0F2C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = sub_1E13609A4(MEMORY[0x1E69E7CC0]);
  if (a1)
  {
    v7 = qword_1EE1E2DF8;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_1E1AF52FC();
    sub_1E1AF532C();
    (*(v3 + 8))(v5, v2);
    if (LOBYTE(v21[0]) != 1)
    {
      goto LABEL_16;
    }

    if (qword_1EE1F3430 != -1)
    {
      swift_once();
    }

    v8 = off_1EE1F3438;
    swift_beginAccess();
    v9 = v8[19];
    v10 = v9 - 3;
    v11 = v9 <= 2 && v8[21] == 0;
    v12 = !v11;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && v12)
    {
      *&v19 = 0xD000000000000017;
      *(&v19 + 1) = 0x80000001E1B66780;
      sub_1E1AF6F6C();
      v20 = MEMORY[0x1E69E6370];
      LOBYTE(v19) = 1;
      sub_1E1301CF0(&v19, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v6;
      sub_1E15988B4(v18, v21, isUniquelyReferenced_nonNull_native);

      sub_1E134B88C(v21);
      v6 = v17;
    }

    else
    {
LABEL_16:
    }
  }

  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98, &qword_1E1B09130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  v21[0] = 0x6C616E676973;
  v21[1] = 0xE600000000000000;
  sub_1E1AF6F6C();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50, &unk_1E1B02C40);
  *(inited + 72) = v6;
  v15 = sub_1E13609A4(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEBCAA0, &unk_1E1B02C50);
  sub_1E158F5F0(&v19, 0, v15);

  return result;
}