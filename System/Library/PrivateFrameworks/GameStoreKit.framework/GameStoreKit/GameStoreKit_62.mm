void sub_24EC55220()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530, &unk_24F93C6E0);

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 8);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 16);
  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 24);
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 32);
  v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 40);

  sub_24EA14B54(v1, v2, v3, v4, v5, v6);
}

uint64_t SearchAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_url, &qword_27F228530, &unk_24F93C6E0);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_referrerData + 40));
  return v0;
}

uint64_t SearchAction.__deallocating_deinit()
{
  SearchAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t SearchAction.hashValue.getter()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EC555A8()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EC55630()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

unint64_t sub_24EC55680()
{
  result = qword_27F22C228;
  if (!qword_27F22C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C228);
  }

  return result;
}

unint64_t sub_24EC556D4()
{
  result = qword_27F22C230;
  if (!qword_27F22C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C230);
  }

  return result;
}

unint64_t sub_24EC55728()
{
  result = qword_27F22C238;
  if (!qword_27F22C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C238);
  }

  return result;
}

uint64_t sub_24EC557C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SearchAction(uint64_t a1)
{
  result = qword_27F22C248;
  if (!qword_27F22C248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC55860(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t MediumAdLockupWithScreenshotsBackground.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(a1, a2);
  return v4;
}

void *MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v72 = a2;
  v63 = *v2;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v57 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v71 = sub_24F928388();
  v67 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v57 - v14;
  MEMORY[0x28223BE20](v15);
  v64 = &v57 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v57 - v21;
  sub_24F929608();
  sub_24F928398();
  v68 = v5;
  v23 = *(v5 + 16);
  v24 = v11;
  v25 = v11;
  v26 = v72;
  v23(v25, v72, v4);
  v70 = v22;
  v59 = v19;
  v60 = v24;
  sub_24F929548();
  v27 = v73;
  v23(v73, v26, v4);
  v28 = v64;
  sub_24F928398();
  v29 = v65;
  v23(v65, v27, v4);
  type metadata accessor for Lockup(0);
  swift_allocObject();
  v30 = v66;
  v31 = Lockup.init(deserializing:using:)(v28, v29);
  if (v30)
  {
    v32 = *(v68 + 8);
    v32(v72, v4);
    v67[1](a1, v71);
    v32(v73, v4);
    sub_24EB05BC8(v70);
    v33 = v69;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = a1;
    v33 = v69;
    *(v69 + 40) = v31;
    v35 = v59;
    sub_24F928398();
    v58 = v4;
    v23(v60, v73, v4);
    type metadata accessor for Screenshots();
    sub_24EC56A24(&qword_27F2273E0, type metadata accessor for Screenshots, &protocol conformance descriptor for Screenshots);
    *(v33 + 48) = sub_24F92B698();
    v36 = v61;
    v37 = v34;
    sub_24F928398();
    LOBYTE(v34) = sub_24F928278();
    v66 = 0;
    v38 = v67[1];
    v39 = v36;
    v40 = v71;
    (v38)(v39, v71);
    *(v33 + 16) = (v34 == 2) | v34 & 1;
    sub_24F928398();
    v41 = JSONObject.appStoreColor.getter();
    (v38)(v35, v40);
    *(v33 + 56) = v41;
    sub_24F928398();
    v42 = JSONObject.appStoreColor.getter();
    (v38)(v35, v40);
    v67 = v38;
    *(v33 + 64) = v42;
    v43 = v62;
    sub_24F928398();
    v44 = sub_24F928308();
    v46 = v45;
    (v38)(v43, v40);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v44;
    }

    *(v33 + 24) = v47;
    *(v33 + 32) = v46 & 1;
    sub_24E643844(v70, v33 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);
    type metadata accessor for Action(0);
    v48 = v37;
    sub_24F928398();
    v49 = v72;
    v50 = static Action.tryToMakeInstance(byDeserializing:using:)(v35, v72);
    v51 = *(v68 + 8);
    v52 = v58;
    v51(v49, v58);
    v53 = v48;
    v54 = v71;
    v55 = v67;
    (v67)(v53, v71);
    (v55)(v35, v54);
    v51(v73, v52);
    sub_24EB05BC8(v70);
    *(v33 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction) = v50;
  }

  return v33;
}

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
  sub_24E65E0D4(a8, v17 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);
  *(v17 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction) = a9;
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
  sub_24E65E0D4(a8, v9 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction) = a9;
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
  sub_24F92C888();
  v1 = sub_24F92D1E8();

  v15 = v1;
  MEMORY[0x253050C20](539828256, 0xE400000000000000);
  v2 = *(v0 + 40);
  v3 = v2[2];
  v4 = v2[3];

  MEMORY[0x253050C20](v3, v4);
  MEMORY[0x253050C20](93, 0xE100000000000000);

  MEMORY[0x253050C20](0x5B2064496D616441, 0xE800000000000000);

  MEMORY[0x253050C20](0x6964616548202D20, 0xEC000000203A676ELL);
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

  MEMORY[0x253050C20](v6, v7);

  MEMORY[0x253050C20](0x3A656C746974202CLL, 0xE900000000000020);
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

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](0x746974627573202CLL, 0xEB000000003A656CLL);
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

  MEMORY[0x253050C20](v12, v13);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v15;
}

uint64_t MediumAdLockupWithScreenshotsBackground.deinit()
{

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);

  return v0;
}

uint64_t MediumAdLockupWithScreenshotsBackground.__deallocating_deinit()
{

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC56670@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24EC56A24(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
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

void *sub_24EC56718@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

double sub_24EC567B4@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;

  return result;
}

double sub_24EC567C8()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackground(uint64_t a1)
{
  result = qword_27F22C260;
  if (!qword_27F22C260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC568F8(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EC56A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC56A6C()
{
  v0 = sub_24F91EAA8();
  __swift_allocate_value_buffer(v0, qword_27F22C270);
  __swift_project_value_buffer(v0, qword_27F22C270);
  return sub_24F91EA08();
}

uint64_t sub_24EC56AE4()
{
  v0 = sub_24F91EAA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  __swift_allocate_value_buffer(v7, qword_27F22C288);
  __swift_project_value_buffer(v0, qword_27F22C288);
  sub_24F91EA08();
  sub_24F91EA78();
  sub_24F91EA88();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

uint64_t sub_24EC56C40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_24F91EAA8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_24EC56D14()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F22C2A0);
  __swift_project_value_buffer(v4, qword_27F22C2A0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24EC56EB8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EC56F24(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EC31BA8;
}

uint64_t sub_24EC56FD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_24EC5703C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24EC57084(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

_BYTE *PurchaseHistoryAppStateDataSource.__allocating_init(asPartOf:)(_BYTE *a1)
{
  v2 = sub_24F92BEE8();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = sub_24F92BE88();
  v7 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v63 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D20, &qword_24F98FFC0);
  sub_24F928EF8();
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
    v10 = sub_24F92C738();
    if (v10)
    {
LABEL_4:
      v11 = 0;
      v68 = MEMORY[0x277D84F90];
      do
      {
        v12 = v11;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x253052270](v12, v9);
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
          v18 = sub_24E618DFC(0, *(v18 + 2) + 1, 1, v18);
        }

        v20 = *(v18 + 2);
        v19 = *(v18 + 3);
        v68 = v18;
        if (v20 >= v19 >> 1)
        {
          v68 = sub_24E618DFC((v19 > 1), v20 + 1, 1, v68);
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

  v68 = MEMORY[0x277D84F90];
LABEL_25:

  v7 = v67;
LABEL_26:
  type metadata accessor for ASDPurchaseHistoryContext(0);
  sub_24F928EF8();
  v22 = v71;
  if (v72)
  {
    v22 = 0;
  }

  v60 = v22;
  sub_24F928EF8();
  v23 = v71;
  if (v72)
  {
    v23 = 0;
  }

  v59 = v23;
  type metadata accessor for ASKBagContract(0);
  sub_24F928EF8();
  v57 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D18, &unk_24F96BD90);
  sub_24F928FD8();
  sub_24F92A758();
  v58 = type metadata accessor for PurchaseHistoryAppStateDataSource();
  v24 = objc_allocWithZone(v58);
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v56 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_accessQueue;
  v67 = sub_24E74EC40();
  v53 = "imated";
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v54 = *(v7 + 72);
  v61 = a1;
  v25 = swift_allocObject();
  v52 = xmmword_24F93DE60;
  *(v25 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v70 = v25;
  v50 = sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  v51 = sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  sub_24F927DA8();
  v48 = *MEMORY[0x277D85260];
  v26 = v64;
  v65 = *(v65 + 104);
  v27 = v66;
  (v65)(v64);
  *&v24[v56] = sub_24F92BF38();
  v56 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_callbackQueue;
  v53 = "ppStateDataSource.accessQueue";
  v28 = swift_allocObject();
  *(v28 + 16) = v52;
  v29 = v57;
  sub_24F92BE78();
  v70 = v28;
  sub_24F92C6A8();
  sub_24F927DA8();
  (v65)(v26, v48, v27);
  *&v24[v56] = sub_24F92BF38();
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates] = MEMORY[0x277D84F98];
  v30 = &v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId];
  *v30 = 0;
  v30[8] = 1;
  v31 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers;
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers] = 0;
  v32 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hasRequestedPurchaseHistoryUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F388, &qword_24F95FA00);
  swift_allocObject();
  *&v24[v32] = sub_24EA4ED84(0);
  v33 = &v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hostBundleId];
  *v33 = 0;
  *(v33 + 1) = 0;
  sub_24E615E00(&v71, &v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory]);
  *&v24[v31] = v68;

  v34 = v59;
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_initialPurchaseHistoryContext] = v60;
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext] = v34;
  *&v24[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_bag] = v29;
  v69.receiver = v24;
  v69.super_class = v58;

  v35 = objc_msgSendSuper2(&v69, sel_init);
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 defaultCenter];
  v39 = v73;
  v40 = v74;
  __swift_project_boxed_opaque_existential_1(&v71, v73);
  v41 = (*(v40 + 72))(v39, v40);
  [v38 addObserver:v37 selector:sel_purchaseHistoryUpdated_ name:v41 object:0];

  v42 = [v36 defaultCenter];
  sub_24F92AB98();
  v43 = v37;
  v44 = sub_24F92AB78();
  [v42 addObserver:v43 selector:sel_accountsDidChange name:v44 object:sub_24F92AB88()];

  v45 = [v36 defaultCenter];
  if (qword_27F211098 != -1)
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
  v12 = sub_24EC5B7D8(a1, a2, a3, a4, a5);

  return v12;
}

void *PurchaseHistoryAppStateDataSource.init(purchaseHistory:additionalFamilyMembers:initialPurchaseHistoryContext:purchaseHistoryContext:bag:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_24EC5B7D8(a1, a2, a3, a4, a5);

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

double sub_24EC57CF0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext) == 1)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = a1;
    v6[4] = a2;

    sub_24E5FCA4C(a1, a2);
    sub_24EC59204(sub_24EC5BEB8, v6);
  }

  else
  {
    sub_24EC59204(0, 0);
    v7 = (v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v8 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v8);
    v17 = (*(v9 + 8))(v8, v9);
    v10 = v7[3];
    v11 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v10);
    v12 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a1;
    v14[4] = a2;
    v15 = *(v11 + 32);
    sub_24E5FCA4C(a1, a2);

    v15(v17, v12, sub_24EC5BEAC, v14, v10, v11);
  }

  return result;
}

void sub_24EC57F00(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = (Strong + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v7 = *(Strong + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v8 = *(Strong + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    v9 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v7);
    v10 = (*(v8 + 8))(v7, v8);
    v11 = v6[4];
    v16 = v6[3];
    v17 = v10;
    __swift_project_boxed_opaque_existential_1(v6, v16);
    v12 = *&v9[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a2;
    v14[4] = a3;
    v15 = *(v11 + 32);

    sub_24E5FCA4C(a2, a3);
    v15(v17, v12, sub_24EC5C9A0, v14, v16, v11);
  }

  else if (a2)
  {
    memset(v18, 0, sizeof(v18));
    v19 = -1;
    a2(v18);
  }
}

double sub_24EC580B8(uint64_t *a1, uint64_t a2, uint64_t a3)
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

  sub_24EC59204(sub_24EC5BEC8, v8);

  return result;
}

void sub_24EC58190(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    *&v12[0] = a4;
    *(&v12[0] + 1) = a5;
    sub_24EC599E4(v12, a2, a3, v10);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v13 = -1;
    a2(v12);
  }
}

double sub_24EC5823C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v4 = *(Strong + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v5 = *(Strong + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    v6 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v4);
    v7 = (*(v5 + 8))(v4, v5);
    v8 = v3[3];
    v9 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v8);
    v10 = *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[3] = 0;
    v12[4] = 0;
    v12[2] = v11;
    v13 = *(v9 + 32);

    v13(v7, v10, sub_24EC5C9A0, v12, v8, v9);
  }

  return result;
}

double sub_24EC58458(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27[-v2];
  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v4 = sub_24F92AB18();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v3, &qword_27F2330E0, &unk_24F9694C0);
  }

  else
  {
    v6 = sub_24F92AB08();
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

  v12 = *&Strong[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId];
  v13 = Strong[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId + 8];

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
      v16 = (v15 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
      v17 = *(v15 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
      v18 = *(v15 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
      v19 = v15;
      __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v17);
      v20 = (*(v18 + 8))(v17, v18);
      v21 = v16[3];
      v22 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v21);
      v23 = *&v19[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      v25[3] = 0;
      v25[4] = 0;
      v25[2] = v24;
      v26 = *(v22 + 32);

      v26(v20, v23, sub_24EC5C9A0, v25, v21, v22);
    }
  }

  return result;
}

double sub_24EC587CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24F927D88();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_accessQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = ObjectType;
  aBlock[4] = sub_24EC5C794;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_49_0;
  v11 = _Block_copy(aBlock);

  sub_24F927DA8();
  v16 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v8, v5, v11);
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);

  return result;
}

double sub_24EC58AD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27F211090 != -1)
    {
      swift_once();
    }

    v4 = (qword_27F23E090 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
    swift_beginAccess();
    v5 = v4[1];
    v6 = &v3[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hostBundleId];
    *v6 = *v4;
    *(v6 + 1) = v5;

    if (qword_27F2104D8 != -1)
    {
      swift_once();
    }

    v7 = sub_24F92AAE8();
    __swift_project_value_buffer(v7, qword_27F22C2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v8 = &v3[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory];
    v9 = *&v3[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24];
    v10 = *&v3[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32];
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory], v9);
    v11 = (*(v10 + 8))(v9, v10);
    v12 = *(v8 + 3);
    v13 = *(v8 + 4);
    __swift_project_boxed_opaque_existential_1(v8, v12);
    v14 = *&v3[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[3] = 0;
    v16[4] = 0;
    v16[2] = v15;
    v17 = *(v13 + 32);

    v17(v11, v14, sub_24EC5C9A0, v16, v12, v13);
  }

  return result;
}

void sub_24EC58EC8(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4)
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
    *(v18 + 16) = MEMORY[0x277D84F90];
    v17 = a1;
    v12 = *&v8[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24];
    v11 = *&v8[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32];
    __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory], v12);
    v13 = *(v11 + 80);

    sub_24E5FCA4C(a3, a4);
    v14 = v13(v12, v11);
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = 1;
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;
    *(v15 + 48) = v14 & 1;
    *(v15 + 56) = 0;
    *(v15 + 64) = sub_24EC5C804;
    *(v15 + 72) = v10;
    v16 = v8;

    sub_24E971DB8(1, sub_24EC5C994, v15);
  }

  else if (a3)
  {
    memset(v19, 0, sizeof(v19));
    v20 = -1;
    a3(v19);
  }
}

void sub_24EC590D8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = &Strong[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate];
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

void sub_24EC59204(void (*a1)(void), uint64_t a2)
{
  v27 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
  if (v27)
  {
    v5 = *(v27 + 16);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F378, &unk_24F95F9F0);
      v6 = 32;
      swift_allocObject();

      v7 = sub_24EA50028();
      v22 = (v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
      v23 = a1;
      v25 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext);
      v26 = v7;
      v24 = a2;
      v8 = a1;
      do
      {
        v28 = *(v27 + v6);
        v10 = v22[3];
        v9 = v22[4];
        __swift_project_boxed_opaque_existential_1(v22, v10);
        v11 = swift_allocObject();
        v11[2] = v26;
        v11[3] = v8;
        v11[4] = v24;
        v12 = *(v9 + 56);

        sub_24E5FCA4C(v8, v24);
        v12(v28, v25, sub_24EC5C8C4, v11, v10, v9);

        v6 += 8;
        --v5;
      }

      while (v5);

      v13 = v22[3];
      v14 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v13);
      v15 = swift_allocObject();
      v15[2] = v26;
      v15[3] = v23;
      v15[4] = v24;
      v16 = *(v14 + 64);

      sub_24E5FCA4C(v23, v24);
      v16(v25, sub_24EC5C9A4, v15, v13, v14);

LABEL_8:

      return;
    }
  }

  if (sub_24EC59710())
  {
    v17 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v18 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v17);
    v19 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_initialPurchaseHistoryContext);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    v21 = *(v18 + 64);
    sub_24E5FCA4C(a1, a2);
    v21(v19, sub_24E9BFC84, v20, v17, v18);
    goto LABEL_8;
  }

  if (a1)
  {
    a1();
  }
}

uint64_t sub_24EC594F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24F927D88();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a3;
  v19 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v20 = v11;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  v14 = sub_24EC5C918;
  v15 = &v17;
  v16 = a2;
  sub_24F92BF08();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24EC59710()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hasRequestedPurchaseHistoryUpdate);
  v10[4] = sub_24EC599D8;
  v10[5] = 0;
  v10[6] = v5;
  v6 = sub_24F92BF18();
  if (v11)
  {
    return 0;
  }

  v10[1] = v10;
  v12 = 1;
  MEMORY[0x28223BE20](v6);
  v10[-2] = &v12;
  v10[0] = *(v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  sub_24F927D78();
  v11 = v8;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  v9 = sub_24F92C6A8();
  MEMORY[0x28223BE20](v9);
  v10[-4] = sub_24EC5C738;
  v10[-3] = &v10[-4];
  v10[-2] = v5;
  sub_24F92BF08();
  (*(v2 + 8))(v4, v1);
  return v12;
}

void sub_24EC599E4(uint64_t *a1, void (*a2)(void), uint64_t a3, __n128 a4)
{
  v5 = v4;
  v9 = *a1;
  v8 = a1[1];
  *&v24[0] = *a1;
  *(&v24[0] + 1) = v8;
  AdamId.numberValue.getter();
  if (v10)
  {
    v11 = v10;
    v23 = a2;
    v12 = [v10 longLongValue];

    v13 = (v5 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory);
    v14 = *(v5 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24);
    v15 = *(v5 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory), v14);
    v22 = (*(v15 + 16))(v12, v14, v15);
    v16 = v13[3];
    v17 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v16);
    v18 = *(v5 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v23;
    v20[4] = a3;
    v20[5] = v9;
    v20[6] = v8;
    v21 = *(v17 + 32);

    v21(v22, v18, sub_24EC5C2B8, v20, v16, v17);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
    v25 = -1;
    a2(v24);
  }
}

void sub_24EC59BE0(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10, &qword_24F96FCC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = a5;
    *(inited + 40) = a6;

    v22 = sub_24E804518(inited);
    swift_setDeallocating();
    sub_24EC36F48(inited + 32);
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v15 = swift_allocObject();
    *(v15 + 16) = MEMORY[0x277D84F90];
    v16 = *&v12[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 24];
    v17 = *&v12[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory + 32];
    __swift_project_boxed_opaque_existential_1(&v12[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory], v16);
    v18 = *(v17 + 80);

    v19 = v18(v16, v17);
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    *(v20 + 24) = 0;
    *(v20 + 32) = v15;
    *(v20 + 40) = a1;
    *(v20 + 48) = v19 & 1;
    *(v20 + 56) = v22;
    *(v20 + 64) = sub_24EC5C5CC;
    *(v20 + 72) = v14;
    v21 = v12;

    sub_24E971DB8(1, sub_24EC5C650, v20);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    v24 = -1;
    a3(v23);
  }
}

void sub_24EC59E0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v203 = a7;
  v204 = a8;
  v199 = a6;
  v211 = a4;
  v217 = a1;
  v10 = sub_24F927D88();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v207 = &v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  v206 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v205 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0, &unk_24F9694C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v179 - v16;
  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v18 = sub_24F92AB18();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v208 = v13;
  if (v20 == 1)
  {
    sub_24E601704(v17, &qword_27F2330E0, &unk_24F9694C0);
LABEL_15:
    v34 = v203;
    v33 = v204;
    if (a2)
    {
      v35 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
      v36 = v217;
      swift_beginAccess();
      swift_beginAccess();

      sub_24EA0B4CC(v37);
      swift_endAccess();
      *(v36 + v35) = MEMORY[0x277D84F98];

      v38 = v36 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId;
      *v38 = 0;
      *(v38 + 8) = 1;
    }

LABEL_142:
    v175 = swift_allocObject();
    v175[2] = v34;
    v175[3] = v33;
    v175[4] = a3;
    *&v235 = sub_24EC5C694;
    *(&v235 + 1) = v175;
    *&v233 = MEMORY[0x277D85DD0];
    *(&v233 + 1) = 1107296256;
    *&v234 = sub_24EAF8248;
    *(&v234 + 1) = &block_descriptor_63;
    v176 = _Block_copy(&v233);

    v177 = v205;
    sub_24F927DA8();
    *&v245 = MEMORY[0x277D84F90];
    sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
    v178 = v207;
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v177, v178, v176);
    _Block_release(v176);
    (*(v11 + 8))(v178, v10);
    (*(v206 + 8))(v177, v208);

    return;
  }

  v21 = sub_24F92AB08();
  (*(v19 + 8))(v17, v18);
  v22 = [v21 ams_DSID];

  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = [v22 longLongValue];

  v24 = v217;
  v25 = v217 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId;
  if ((*(v217 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId + 8) & 1) != 0 || v23 != *v25) && (a2)
  {
    v26 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
    swift_beginAccess();
    swift_beginAccess();

    sub_24EA0B4CC(v27);
    swift_endAccess();
    *(v217 + v26) = MEMORY[0x277D84F98];
    v24 = v217;

    *v25 = v23;
    *(v25 + 8) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B60, &qword_24F93B770);
  v28 = swift_allocObject();
  v197 = xmmword_24F93DE60;
  *(v28 + 16) = xmmword_24F93DE60;
  *(v28 + 32) = v23;
  v29 = sub_24E804680(v28);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v252 = v29;
  if (*(v24 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers))
  {
    v30 = *(v24 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
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
      sub_24ED7F1E8(&v233, *(v30 + v32));
      v32 += 8;
      --v31;
    }

    while (v31);

    v29 = v252;
  }

  else
  {
  }

  v251 = MEMORY[0x277D84FA0];
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
  v43 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  v44 = (v40 + 63) >> 6;
  v198 = 0x800000024FA583C0;
  v196 = "purchaseHistoryContext";

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
    if (*(v46 + 16) && (v48 = sub_24E7728CC(*(*(v29 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v42)))))), (v49 & 1) != 0))
    {
      v50 = *(*(v46 + 56) + 8 * v48);

      if (v50 >> 62)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_29:
        v51 = sub_24F92C738();
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
          v53 = MEMORY[0x253052270](v52, v50);
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
        v60 = sub_24F92CD88();
        v62 = v61;

        v213 = v62;
        v214 = v60;
        sub_24ED7E42C(&v233, v60, v62);

        if (qword_27F211090 != -1)
        {
          swift_once();
        }

        v63 = (qword_27F23E090 + OBJC_IVAR____TtC12GameStoreKit21HostProcessIdentifier_hostBundleId);
        swift_beginAccess();
        v64 = v63[1];
        if (v64)
        {
          v29 = v59;
          v44 = v58;
          v65 = *v63 == 0xD000000000000016 && v64 == v198;
          v39 = v57;
          v66 = v65 ? 1 : sub_24F92CE08();
          v68 = v214;
          v52 = v210;
        }

        else
        {
          v39 = v57;
          if (qword_27F2110A0 != -1)
          {
            swift_once();
          }

          v67 = sub_24F92AAE8();
          __swift_project_value_buffer(v67, qword_27F23E0A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
          sub_24F928468();
          *(swift_allocObject() + 16) = v197;
          sub_24F9283A8();
          sub_24F92A588();

          v66 = 0;
          v29 = v209;
          v52 = v210;
          v44 = v191;
          v68 = v214;
        }

        v216 = v54;
        if (([v54 isHidden] & 1) == 0)
        {
          v69 = [v216 purchaserDSID];
          if (*(v29 + 16))
          {
            v70 = v69;
            v71 = sub_24F92D058();
            v72 = -1 << *(v29 + 32);
            v73 = v71 & ~v72;
            if ((*(v39 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
            {
              break;
            }
          }
        }

LABEL_62:
        if (*(*(v217 + v215) + 16))
        {

          v75 = v213;
          sub_24E7728F0(v68, v213);
          if ((v76 & 1) == 0)
          {

LABEL_70:

            goto LABEL_37;
          }

          swift_beginAccess();
          sub_24E98FE14(v68, v75, v249);
          v233 = v249[0];
          v234 = v249[1];
          v235 = v249[2];
          v236 = v250;
          swift_endAccess();
          sub_24E601704(&v233, &unk_27F22BE00, &qword_24F96BDA0);
          v77 = v212;
          swift_beginAccess();
          v78 = *(v77 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v77 + 16) = v78;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v78 = sub_24E6164C0(0, *(v78 + 2) + 1, 1, v78);
            *(v212 + 16) = v78;
          }

          v81 = *(v78 + 2);
          v80 = *(v78 + 3);
          v29 = v209;
          if (v81 >= v80 >> 1)
          {
            v78 = sub_24E6164C0((v80 > 1), v81 + 1, 1, v78);
          }

          *(v78 + 2) = v81 + 1;
          v82 = &v78[16 * v81];
          v83 = v213;
          *(v82 + 4) = v214;
          *(v82 + 5) = v83;
          *(v212 + 16) = v78;
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

      v74 = ~v72;
      while (*(*(v29 + 48) + 8 * v73) != v70)
      {
        v73 = (v73 + 1) & v74;
        if (((*(v39 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      v84 = v216;
      if ([v216 isPreorder])
      {
        v85 = v185;
        v86 = v184 & 0x101 | 0x1000000000000000;
        *&v245 = 1;
        *&v248 = v86;
        *&v249[0] = 1;
        *&v250 = v86;
        v87 = v217;
LABEL_85:
        v184 = v86;
        v185 = v85;
        v253[0] = v245;
        v253[1] = v246;
        v253[2] = v247;
        v253[3] = v248;
        v105 = *(v87 + v215);
        if (*(v105 + 16))
        {

          v106 = sub_24E7728F0(v68, v213);
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
            sub_24E8B9478(&v233, &v229);

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
            sub_24E8B9478(&v245, &v233);
            sub_24E8B9478(&v245, &v233);
            sub_24E601704(v249, &unk_27F22BE00, &qword_24F96BDA0);
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
          sub_24E601704(&v233, &unk_27F22BE00, &qword_24F96BDA0);
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
            sub_24E8B9478(&v245, &v225);
            sub_24E8B9478(&v245, &v225);
            sub_24E9726D0(&v233, &v225);
            sub_24E601704(v249, &unk_27F22BE00, &qword_24F96BDA0);
            v225 = v229;
            v226 = v230;
            v227 = v231;
            v228 = v232;
            sub_24E88D2AC(&v225);
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
            v123 = &qword_27F222D38;
            v124 = &unk_24F96BF30;
LABEL_97:
            sub_24E601704(v122, v123, v124);
            v125 = v217;
            v126 = v215;
            swift_beginAccess();
            v127 = swift_isUniquelyReferenced_nonNull_native();
            *&v229 = *(v125 + v126);
            *(v125 + v126) = 0x8000000000000000;
            sub_24E820174(v253, v214, v213, v127);
            *(v125 + v126) = v229;
            swift_endAccess();
            v128 = v212;
            swift_beginAccess();
            v129 = *(v128 + 16);
            v130 = swift_isUniquelyReferenced_nonNull_native();
            *(v128 + 16) = v129;
            if ((v130 & 1) == 0)
            {
              v129 = sub_24E6164C0(0, *(v129 + 2) + 1, 1, v129);
              *(v212 + 16) = v129;
            }

            v132 = *(v129 + 2);
            v131 = *(v129 + 3);
            if (v132 >= v131 >> 1)
            {
              v129 = sub_24E6164C0((v131 > 1), v132 + 1, 1, v129);
            }

            *(v129 + 2) = v132 + 1;
            v133 = &v129[16 * v132];
            v134 = v213;
            *(v133 + 4) = v214;
            *(v133 + 5) = v134;
            *(v212 + 16) = v129;
            swift_endAccess();

            sub_24E88D2AC(&v245);
            goto LABEL_37;
          }

          v219 = v245;
          v220 = v246;
          v221 = v247;
          v222 = v248;
          sub_24E8B9478(&v245, v218);
          sub_24E8B9478(&v245, v218);
          sub_24E9726D0(&v233, v218);
          v135 = _s12GameStoreKit14LegacyAppStateO2eeoiySbAC_ACtFZ_0(&v229, &v219);
          v223[0] = v219;
          v223[1] = v220;
          v223[2] = v221;
          v223[3] = v222;
          sub_24E88D2AC(v223);
          v224[0] = v229;
          v224[1] = v230;
          v224[2] = v231;
          v224[3] = v232;
          sub_24E88D2AC(v224);
          *&v225 = v190;
          *(&v225 + 1) = v189;
          *&v226 = v188;
          *(&v226 + 1) = v187;
          *&v227 = v186;
          *(&v227 + 1) = v210;
          *&v228 = v115;
          *(&v228 + 1) = v183;
          sub_24E601704(&v225, &unk_27F22BE00, &qword_24F96BDA0);
          if ((v135 & 1) == 0)
          {
            v122 = v249;
            v123 = &unk_27F22BE00;
            v124 = &qword_24F96BDA0;
            goto LABEL_97;
          }

          sub_24E88D2AC(&v245);
          sub_24E88D2AC(&v245);
        }

        sub_24E601704(v249, &unk_27F22BE00, &qword_24F96BDA0);
        goto LABEL_70;
      }

      v88 = [v84 redownloadParams];
      v210 = sub_24F92B0D8();
      v90 = v89;

      v210 = sub_24E910830(v210, v90);
      v92 = v91;
      v93 = v216;

      if (([v93 watchOnly] & 1) == 0 && ((objc_msgSend(v93, sel_supportsIPad) & 1) != 0 || objc_msgSend(v93, sel_supportsIPhone)))
      {
        *&v245 = v210;
        *(&v245 + 1) = v92;
        *&v249[0] = v210;
        *(&v249[0] + 1) = v92;
        v180 = v180 & 0x101 | 0x3000000000000000;
        *&v248 = v180;
        *&v250 = v180;

        goto LABEL_83;
      }

      if (v66)
      {
        v94 = [v216 redownloadParams];
        v95 = sub_24F92B0D8();
        v97 = v96;

        v98 = sub_24E910830(v95, v97);
        v100 = v99;

        if (([v216 supportsRealityDevice] & 1) != 0 || objc_msgSend(v216, sel_optedInForXROSEligibility))
        {
          *&v245 = v98;
          *(&v245 + 1) = v100;
          *&v248 = v185 & 0x101 | 0x3000000000000000;
          *&v249[0] = v98;
          v85 = v248;
          *(&v249[0] + 1) = v100;
          *&v250 = v248;

          v87 = v217;
          goto LABEL_84;
        }
      }

      v101 = [v216 redownloadParams];
      v102 = sub_24F92B0D8();
      v104 = v103;

      sub_24E910830(v102, v104);

      *&v245 = 0;
      *&v249[0] = 0;
      v181 = v181 & 0x101 | 0x1000000000000000;
      *&v248 = v181;
      *&v250 = v181;
LABEL_83:
      v87 = v217;
      v85 = v185;
LABEL_84:
      v86 = v184;
      v68 = v214;
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

    v138 = sub_24EAE6F14(v137, v136);

    v139 = v138;
  }

  else
  {
    swift_beginAccess();

    v139 = sub_24F4435B8(v140);
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
      v160 = sub_24E7728F0(v151, v150);
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
          sub_24E8B347C();
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
        sub_24E88D2AC(&v233);
        sub_24EB551D0(v162, v165);
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
        v170 = sub_24E6164C0(0, *(v170 + 2) + 1, 1, v170);
        *(a3 + 16) = v170;
      }

      v173 = *(v170 + 2);
      v172 = *(v170 + 3);
      if (v173 >= v172 >> 1)
      {
        v170 = sub_24E6164C0((v172 > 1), v173 + 1, 1, v170);
      }

      *(v170 + 2) = v173 + 1;
      v174 = &v170[16 * v173];
      *(v174 + 4) = v151;
      *(v174 + 5) = v150;
      *(a3 + 16) = v170;
      swift_endAccess();
      goto LABEL_115;
    }

    sub_24F92D068();

    sub_24F92B218();
    v153 = sub_24F92D0B8();
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
      if (v158 || (sub_24F92CE08() & 1) != 0)
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

uint64_t sub_24EC5B550(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  a1(v4);
}

id PurchaseHistoryAppStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*sub_24EC5B65C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EC37328;
}

double sub_24EC5B700(uint64_t *a1, uint64_t a2, uint64_t a3)
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

  sub_24EC59204(sub_24EC5C984, v8);

  return result;
}

void *sub_24EC5B7D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v7 = sub_24F92BEE8();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  MEMORY[0x28223BE20](v7);
  v51 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927DC8();
  MEMORY[0x28223BE20](v10 - 8);
  v45 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92BE88();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  *&v5[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v44 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_accessQueue;
  v14 = sub_24E74EC40();
  v42 = "imated";
  v43 = v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v40 = *(v13 + 72);
  v15 = swift_allocObject();
  v39 = xmmword_24F93DE60;
  *(v15 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v55 = v15;
  v38[2] = sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  v38[3] = sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  sub_24F927DA8();
  v16 = *MEMORY[0x277D85260];
  v17 = *(v53 + 104);
  v53 += 104;
  v17(v51, v16, v52);
  *&v5[v44] = sub_24F92BF38();
  v44 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_callbackQueue;
  v42 = "ppStateDataSource.accessQueue";
  v18 = swift_allocObject();
  *(v18 + 16) = v39;
  v19 = v46;
  sub_24F92BE78();
  v55 = v18;
  sub_24F92C6A8();
  sub_24F927DA8();
  v17(v51, v16, v52);
  *&v6[v44] = sub_24F92BF38();
  *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates] = MEMORY[0x277D84F98];
  v20 = &v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_lastAccountId];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers;
  *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_additionalFamilyMembers] = 0;
  v22 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hasRequestedPurchaseHistoryUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F388, &qword_24F95FA00);
  swift_allocObject();
  *&v6[v22] = sub_24EA4ED84(0);
  v23 = &v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_hostBundleId];
  *v23 = 0;
  *(v23 + 1) = 0;
  sub_24E615E00(v19, &v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistory]);
  *&v6[v21] = v47;

  v24 = v49;
  *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_initialPurchaseHistoryContext] = v48;
  *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_purchaseHistoryContext] = v24;
  *&v6[OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_bag] = v50;
  v25 = type metadata accessor for PurchaseHistoryAppStateDataSource();
  v54.receiver = v6;
  v54.super_class = v25;

  v26 = objc_msgSendSuper2(&v54, sel_init);
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 defaultCenter];
  v30 = v19[3];
  v31 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v30);
  v32 = (*(v31 + 72))(v30, v31);
  [v29 addObserver:v28 selector:sel_purchaseHistoryUpdated_ name:v32 object:0];

  v33 = [v27 defaultCenter];
  sub_24F92AB98();
  v34 = v28;
  v35 = sub_24F92AB78();
  [v33 addObserver:v34 selector:sel_accountsDidChange name:v35 object:sub_24F92AB88()];

  v36 = [v27 defaultCenter];
  if (qword_27F211098 != -1)
  {
    swift_once();
  }

  [v36 addObserver:v34 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v34;
}

uint64_t sub_24EC5BE70()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EC5BECC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC5BF28(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

double sub_24EC5BF8C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_expectedAppStates;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double sub_24EC5C2C8(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F927D88();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F927DC8();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit33PurchaseHistoryAppStateDataSource_accessQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  v17 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);

  return result;
}

uint64_t sub_24EC5C594()
{

  return swift_deallocObject();
}

uint64_t sub_24EC5C5CC()
{
  v1 = *(v0 + 16);
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  return v1(v3);
}

uint64_t sub_24EC5C614()
{

  return swift_deallocObject();
}

uint64_t sub_24EC5C654()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_24EC5C6B8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  swift_beginAccess();
  v6 = *(v4 + 24);
  result = v3(&v7, &v6);
  *a1 = v7;
  return result;
}

_BYTE *sub_24EC5C738(_BYTE *result)
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

uint64_t sub_24EC5C75C()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_38Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_24EC5C884()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t *sub_24EC5C918(uint64_t *result)
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

uint64_t sub_24EC5C9B4()
{
  v1 = sub_24F92B138();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24F91F4A8();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v0 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_url, v6);
  sub_24F91E918();
  swift_beginAccess();
  sub_24F91E8B8();
  swift_beginAccess();

  sub_24F91E8F8();
  v9 = v0 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body;
  swift_beginAccess();
  if (*(v9 + 8))
  {

    sub_24F92B128();
    sub_24F92B0E8();

    (*(v2 + 8))(v4, v1);
  }

  sub_24F91E958();
  swift_beginAccess();
  return sub_24F91E8C8();
}

uint64_t HttpAction.start(urlSession:bag:process:bagContract:mediaTokenService:)(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_24F91E968();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    swift_unknownObjectRetain_n();
    v15 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:a6 bag:sub_24F92A328()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    [v15 setClientInfo_];
    v16 = [objc_opt_self() ams_sharedAccountStore];
    v17 = [v16 ams_activeiTunesAccount];

    [v15 setAccount_];
    [v15 setDisableResponseDecoding_];
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
    swift_unknownObjectRelease();
    [v15 setIncludeClientVersions_];
    v18 = [objc_opt_self() ams_sharedAccountStore];
    v19 = [v18 ams_activeiTunesAccount];

    [v15 setAccount_];
    [v15 setClientInfo_];
    v20 = [objc_allocWithZone(MEMORY[0x277CEE6E0]) init];
    [v15 setResponseDecoder_];

    v21 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
    swift_beginAccess();
    if (*(v7 + v21))
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    [v15 setAnisetteType_];
    [v15 setMescalType_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C318, &qword_24F990028);
  sub_24EC5C9B4();
  v23 = sub_24F91E8E8();
  (*(v12 + 8))(v14, v11);
  v24 = [v15 requestByEncodingRequest:v23 parameters:0];

  sub_24F92A9D8();
  v25 = sub_24F929638();
  v26 = MEMORY[0x277D21FB0];
  v31 = v25;
  v32 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v30);
  sub_24F929628();
  sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v30);
  *(swift_allocObject() + 16) = a1;
  v31 = v25;
  v32 = v26;
  __swift_allocate_boxed_opaque_existential_1(v30);
  v27 = a1;
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C320, &qword_24F9A85E0);
  sub_24EC5D1A0();
  v28 = sub_24F92A9B8();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v30);
  return v28;
}

uint64_t sub_24EC5D0E4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C320, &qword_24F9A85E0);
  v3 = sub_24F91E8E8();
  v4 = [a2 dataTaskPromiseWithRequest_];

  return sub_24F92A9D8();
}

uint64_t sub_24EC5D160()
{

  return swift_deallocObject();
}

unint64_t sub_24EC5D1A0()
{
  result = qword_27F22C328;
  if (!qword_27F22C328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C320, &qword_24F9A85E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C328);
  }

  return result;
}

uint64_t sub_24EC5D218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementDetails(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 88);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EC5D2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementDetails(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 88) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AchievementDetailsSideBySideView(uint64_t a1)
{
  result = qword_27F22C330;
  if (!qword_27F22C330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC5D3F4(uint64_t a1)
{
  result = type metadata accessor for AchievementDetails(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EC5D484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v46 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C378, &qword_24F990150);
  MEMORY[0x28223BE20](v48);
  v5 = &v46 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C380, &qword_24F990158);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C388, &qword_24F990160);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C390, &qword_24F990168);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C398, &qword_24F990170);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v57 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  *v11 = sub_24F924C88();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3A0, &unk_24F990178);
  sub_24EC5DBFC(a1, &v11[*(v25 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v11, v15, &qword_27F22C388, &qword_24F990160);
  v26 = &v15[*(v13 + 44)];
  v27 = v67;
  *(v26 + 4) = v66;
  *(v26 + 5) = v27;
  *(v26 + 6) = v68;
  v28 = v63;
  *v26 = v62;
  *(v26 + 1) = v28;
  v29 = v65;
  *(v26 + 2) = v64;
  *(v26 + 3) = v29;
  v30 = &v21[*(v17 + 44)];
  sub_24F927438();
  LOBYTE(v13) = sub_24F925808();
  v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870, &qword_24F949630) + 36)] = v13;
  sub_24E6009C8(v15, v21, &qword_27F22C390, &qword_24F990168);
  v47 = v24;
  sub_24E6009C8(v21, v24, &qword_27F22C398, &qword_24F990170);
  v59 = a1;
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3A8, &qword_24F990188);
  sub_24EC5F0CC();
  sub_24F923438();
  type metadata accessor for AchievementDetailsSideBySideView(0);

  sub_24F927878();
  sub_24F927898();
  sub_24F923BD8();
  v31 = &v5[*(v48 + 36)];
  *v31 = v69;
  *(v31 + 8) = v70;
  *(v31 + 24) = v71;
  v32 = sub_24E6A4C1C();
  v33 = v50;
  sub_24F924B68();
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3C8, &qword_24F990198);
  sub_24EC5F18C();
  v60 = &type metadata for GameOverlayViewPredicate;
  v61 = v32;
  swift_getOpaqueTypeConformance2();
  sub_24EC5F270();
  v34 = v49;
  v35 = v54;
  sub_24F926B08();
  (*(v55 + 8))(v33, v35);
  sub_24E601704(v5, &qword_27F22C378, &qword_24F990150);
  v36 = v57;
  sub_24E60169C(v24, v57, &qword_27F22C398, &qword_24F990170);
  v37 = v52;
  v38 = *(v52 + 16);
  v39 = v51;
  v40 = v53;
  v38(v51, v34, v53);
  v41 = v36;
  v42 = v56;
  sub_24E60169C(v41, v56, &qword_27F22C398, &qword_24F990170);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C400, &qword_24F9901B8);
  v38((v42 + *(v43 + 48)), v39, v40);
  v44 = *(v37 + 8);
  v44(v34, v40);
  sub_24E601704(v47, &qword_27F22C398, &qword_24F990170);
  v44(v39, v40);
  return sub_24E601704(v57, &qword_27F22C398, &qword_24F990170);
}

uint64_t sub_24EC5DBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C468, &qword_24F990280);
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C470, &unk_24F990288);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  sub_24EC5F4E8();
  v31 = a1;
  sub_24F921D38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v16 = sub_24F925838();
  *(inited + 32) = v16;
  v17 = sub_24F925858();
  *(inited + 33) = v17;
  v18 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v16)
  {
    v18 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v17)
  {
    v18 = sub_24F925848();
  }

  type metadata accessor for AchievementDetailsSideBySideView(0);
  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v3 + 32))(v11, v5, v32);
  v27 = &v11[*(v6 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  sub_24E6009C8(v11, v14, &qword_27F22C470, &unk_24F990288);
  sub_24E60169C(v14, v8, &qword_27F22C470, &unk_24F990288);
  v28 = v33;
  sub_24E60169C(v8, v33, &qword_27F22C470, &unk_24F990288);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C480, &qword_24F990298) + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_24E601704(v14, &qword_27F22C470, &unk_24F990288);
  return sub_24E601704(v8, &qword_27F22C470, &unk_24F990288);
}

uint64_t sub_24EC5DF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C428, &qword_24F990218);
  sub_24EC5DFF0(a1, (a2 + *(v4 + 44)));
  v5 = sub_24F925838();
  type metadata accessor for AchievementDetailsSideBySideView(0);
  sub_24F923318();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3A8, &qword_24F990188);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

void sub_24EC5DFF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C430, &qword_24F990220);
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = &v78 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C438, &qword_24F990228);
  MEMORY[0x28223BE20](v81);
  v83 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C440, &qword_24F990230);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v78 - v11;
  v13 = type metadata accessor for AchievementDetails(0);
  v14 = v13;
  v15 = (a1 + v13[13]);
  v17 = *v15;
  v16 = v15[1];
  v19 = v15[2];
  v18 = v15[3];
  v21 = v15[4];
  v20 = v15[5];
  v89 = v12;
  if (v16)
  {
    v92 = v18;
    v93 = v17;
    v96 = v19;
    v90 = v20;
    v91 = v21;
  }

  else
  {
    v92 = 0;
    v93 = 0;
    v96 = 0;
    v90 = 0;
    v91 = 0;
  }

  v22 = *(a1 + v13[7]);
  v94 = v16;
  v88 = a1;
  if (v22 && *(v22 + 16))
  {
    v23 = (a1 + v13[8]);
    v25 = *v23;
    v24 = v23[1];
    v80 = v25;
    v26 = v17;
    v27 = v24;
    sub_24E68FE2C(v26, v16, v19, v18, v21, v20);
    v28 = qword_27F210E90;

    if (v28 != -1)
    {
      swift_once();
    }

    memcpy(v98, &xmmword_27F237800, sizeof(v98));
    memcpy(v97, &xmmword_27F237800, sizeof(v97));
    LOBYTE(v99[0]) = 0;
    sub_24E76A93C(v98, &v100);
    sub_24F926F28();
    v29 = v100;
    v79 = v100;
    v30 = v101;
    v78 = v101;
    v31 = v82;
    sub_24F9271E8();
    v32 = sub_24F9251C8();
    v33 = sub_24F925808();
    v34 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C450, &qword_24F990240) + 36);
    *v34 = v32;
    *(v34 + 4) = v33;
    LOBYTE(v32) = sub_24F925868();
    type metadata accessor for AchievementDetailsSideBySideView(0);
    sub_24F923318();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C458, &qword_24F990248) + 36);
    *v43 = v32;
    *(v43 + 8) = v36;
    *(v43 + 16) = v38;
    *(v43 + 24) = v40;
    *(v43 + 32) = v42;
    *(v43 + 40) = 0;
    KeyPath = swift_getKeyPath();
    v45 = v31 + *(v81 + 36);
    *v45 = KeyPath;
    *(v45 + 8) = 0;
    v46 = v83;
    sub_24E60169C(v31, v83, &qword_27F22C438, &qword_24F990228);
    v99[0] = v22;
    v47 = v80;
    v99[1] = v80;
    v99[2] = v27;
    memcpy(&v99[3], v97, 0x178uLL);
    LOBYTE(v99[50]) = v29;
    v99[51] = v30;
    v48 = v27;
    v49 = v84;
    memcpy(v84, v99, 0x1A0uLL);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C460, &qword_24F990278);
    sub_24E60169C(v46, v49 + *(v50 + 48), &qword_27F22C438, &qword_24F990228);
    sub_24E645724(v99, &v100);
    sub_24E601704(v31, &qword_27F22C438, &qword_24F990228);
    sub_24E601704(v46, &qword_27F22C438, &qword_24F990228);
    v100 = v22;
    v101 = v47;
    v102 = v48;
    memcpy(v103, v97, 0x178uLL);
    LOBYTE(v103[47]) = v79;
    v104 = v78;
    sub_24EC5F494(&v100);
    v51 = v89;
    sub_24E6009C8(v49, v89, &qword_27F22C430, &qword_24F990220);
    v86[7](v51, 0, 1, v87);
    a1 = v88;
  }

  else
  {
    v51 = v89;
    v86[7](v89, 1, 1, v87);
    sub_24E68FE2C(v17, v16, v19, v18, v21, v20);
  }

  v52 = (a1 + v14[6]);
  v54 = *v52;
  v53 = v52[1];
  v55 = (a1 + v14[9]);
  v57 = *v55;
  v56 = v55[1];
  v86 = v57;
  v87 = v54;
  v81 = v53;
  v82 = v56;
  v58 = *(type metadata accessor for AchievementDetailsSideBySideView(0) + 20);
  v84 = v58;
  memcpy(v98, &v58[a1], sizeof(v98));
  v83 = 0x800000024FA58410;
  v80 = *MEMORY[0x277CDA710];
  v59 = v95;
  sub_24E60169C(v51, v95, &qword_27F22C440, &qword_24F990230);
  v60 = v85;
  v61 = v94;
  *v85 = v93;
  v60[1] = v61;
  v62 = v96;
  v64 = v91;
  v63 = v92;
  v60[2] = v96;
  v60[3] = v63;
  v65 = v90;
  v60[4] = v64;
  v60[5] = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C448, &qword_24F990238);
  sub_24E60169C(v59, v60 + *(v66 + 48), &qword_27F22C440, &qword_24F990230);
  v67 = *(v66 + 64);
  v99[0] = v54;
  v68 = v81;
  v99[1] = v81;
  v99[2] = v57;
  v69 = v82;
  v99[3] = v82;
  memcpy(&v99[4], &v58[a1], 0x178uLL);
  v99[51] = 0xD000000000000013;
  v99[52] = 0x800000024FA58410;
  v70 = v80;
  v99[53] = v80;
  LOBYTE(v99[54]) = 1;
  v99[55] = 0x3FF0000000000000;
  memcpy(v60 + v67, v99, 0x1C0uLL);

  sub_24E76A93C(v98, &v100);
  v71 = v70;
  v73 = v93;
  v72 = v94;
  v74 = v62;
  v75 = v91;
  v76 = v92;
  v77 = v90;
  sub_24E68FE2C(v93, v94, v74, v92, v91, v90);
  sub_24E845D18(v99, &v100);
  sub_24E601704(v89, &qword_27F22C440, &qword_24F990230);
  v100 = v87;
  v101 = v68;
  v102 = v86;
  v103[0] = v69;
  memcpy(&v103[1], &v84[v88], 0x178uLL);
  v104 = 0xD000000000000013;
  v105 = v83;
  v106 = v71;
  v107 = 1;
  v108 = 0x3FF0000000000000;
  sub_24EC5F438(&v100);
  sub_24E601704(v95, &qword_27F22C440, &qword_24F990230);
  sub_24E687F7C(v73, v72, v96, v76, v75, v77);
}

uint64_t sub_24EC5E784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924C88();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3C8, &qword_24F990198) + 36);
  sub_24EC5E85C(a2, v7);
  v8 = sub_24F923868();
  LOBYTE(a2) = MEMORY[0x25304B200]((2 * v8));
  v9 = sub_24F924068();
  v10 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C3F8, &qword_24F9901B0) + 36);
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 17) = a2;
  *(v10 + 24) = v6;
  return sub_24E60169C(a1, a3, &qword_27F22C378, &qword_24F990150);
}

uint64_t sub_24EC5E85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C408, &unk_24F9901C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221FC0, &unk_24F9CF930);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for GameLockup(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AchievementDetails(0);
  sub_24E60169C(a1 + *(v14 + 20), v9, &qword_27F221FC0, &unk_24F9CF930);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &qword_27F221FC0, &unk_24F9CF930);
    v15 = 1;
    v16 = v46;
  }

  else
  {
    sub_24E7A3ED0(v9, v13);
    *(v6 + 5) = v10;
    *(v6 + 6) = sub_24EC5F38C(&qword_27F216AD0, type metadata accessor for GameLockup, &unk_24F943740);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
    sub_24EC5F328(v13, boxed_opaque_existential_1);
    type metadata accessor for GSKComponentContentBuilder(0);
    sub_24EC5F38C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
    *v6 = sub_24F923598();
    v6[8] = v18 & 1;
    *(v6 + 28) = 256;
    v19 = *(a1 + *(type metadata accessor for AchievementDetailsSideBySideView(0) + 20) + 8);
    v20 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C410, &qword_24F9901D0) + 36)];
    v21 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
    v22 = type metadata accessor for GradientBackground(0);
    (*(*(v22 - 8) + 56))(&v20[v21], 1, 1, v22);
    *v20 = swift_getKeyPath();
    v20[8] = 0;
    *(v20 + 2) = v19;
    *(v20 + 24) = xmmword_24F958350;
    *(v20 + 20) = 257;
    sub_24F926C88();
    v23 = sub_24F926D08();

    v24 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C418, &qword_24F990208) + 36)];
    *v24 = v23;
    *(v24 + 8) = xmmword_24F94D5F0;
    *(v24 + 3) = 0x4020000000000000;
    LOBYTE(v21) = sub_24F925838();
    sub_24F923318();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C420, &qword_24F990210) + 36)];
    *v33 = v21;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    LOBYTE(v21) = sub_24F925828();
    sub_24F923318();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_24EC5F3DC(v13);
    v42 = &v6[*(v3 + 36)];
    *v42 = v21;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = v46;
    sub_24E6009C8(v6, v46, &qword_27F22C408, &unk_24F9901C0);
    v15 = 0;
    v16 = v43;
  }

  return (*(v4 + 56))(v16, v15, 1, v3);
}

uint64_t sub_24EC5ED00@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C340, &qword_24F990128);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C348, &qword_24F990130);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C350, &qword_24F990138);
  sub_24EC5D484(v1, &v8[*(v9 + 44)]);
  v10 = sub_24E602068(&qword_27F22C358, &qword_27F22C348, &qword_24F990130, MEMORY[0x277CE1138]);
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C360, &unk_24F990140);
  v17 = v6;
  v18 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_24E8F20E4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C368, &unk_24F9A6DD0);
  v14 = sub_24EC5EF9C();
  v17 = v2;
  v18 = &type metadata for IsDebugFocusOverlayEnabled;
  v19 = v13;
  v20 = OpaqueTypeConformance2;
  v21 = v12;
  v22 = v14;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F22C348, &qword_24F990130);
}

unint64_t sub_24EC5EF9C()
{
  result = qword_27F22C370;
  if (!qword_27F22C370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C368, &unk_24F9A6DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C348, &qword_24F990130);
    sub_24E602068(&qword_27F22C358, &qword_27F22C348, &qword_24F990130, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C370);
  }

  return result;
}

unint64_t sub_24EC5F0CC()
{
  result = qword_27F22C3B0;
  if (!qword_27F22C3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C3A8, &qword_24F990188);
    sub_24E602068(&qword_27F22C3B8, &qword_27F22C3C0, &qword_24F990190, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C3B0);
  }

  return result;
}

unint64_t sub_24EC5F18C()
{
  result = qword_27F22C3D0;
  if (!qword_27F22C3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C378, &qword_24F990150);
    sub_24E602068(&qword_27F22C3D8, &qword_27F22C3E0, &unk_24F9901A0, MEMORY[0x277CDD6E0]);
    sub_24E602068(&qword_27F217658, &qword_27F217660, &qword_24F946198, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C3D0);
  }

  return result;
}

unint64_t sub_24EC5F270()
{
  result = qword_27F22C3E8;
  if (!qword_27F22C3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C3C8, &qword_24F990198);
    sub_24EC5F18C();
    sub_24E602068(&qword_27F22C3F0, &qword_27F22C3F8, &qword_24F9901B0, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C3E8);
  }

  return result;
}

uint64_t sub_24EC5F328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC5F38C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC5F3DC(uint64_t a1)
{
  v2 = type metadata accessor for GameLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EC5F4E8()
{
  result = qword_27F22C478;
  if (!qword_27F22C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C478);
  }

  return result;
}

uint64_t sub_24EC5F53C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C340, &qword_24F990128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C360, &unk_24F990140);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C348, &qword_24F990130);
  sub_24E602068(&qword_27F22C358, &qword_27F22C348, &qword_24F990130, MEMORY[0x277CE1138]);
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C368, &unk_24F9A6DD0);
  sub_24EC5EF9C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PrivacyFooter.__allocating_init(id:bodyText:actions:privacyTypesCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E65E064(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v17, &qword_27F235830, &qword_24F93B8C0);
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
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v18, &qword_27F235830, &qword_24F93B8C0);
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
  v60 = sub_24F91F6B8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v62 = sub_24F92AC28();
  v64 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9285B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24F928388();
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  type metadata accessor for LinkableText();
  v67 = a1;
  sub_24F928398();
  (*(v9 + 16))(v11, v77, v8);
  sub_24EC60360(&qword_27F21C360, 255, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_24F929548();
  if (v76[0])
  {
    v56 = v76[0];
    v61 = v9;
    v55 = v8;
    v20 = v77;
    sub_24F928398();
    sub_24F9282B8();
    v21 = *(v12 + 8);
    v22 = v16;
    v23 = v12 + 8;
    v21(v22, v66);
    v24 = v62;
    if ((*(v64 + 48))(v6, 1, v62) == 1)
    {
      sub_24E601704(v6, &qword_27F2213B0, &qword_24F965EC0);
      v54 = MEMORY[0x277D84F90];
    }

    else
    {
      v28 = v64;
      v29 = v57;
      (*(v64 + 32))(v57, v6, v24);
      v30 = type metadata accessor for Action(0);
      MEMORY[0x28223BE20](v30);
      *(&v54 - 2) = v31;
      *(&v54 - 1) = v20;
      v54 = sub_24F92ABB8();
      (*(v28 + 8))(v29, v24);
    }

    v32 = v67;
    sub_24F928398();
    sub_24F928258();
    v33 = v19;
    v34 = v66;
    v35 = v23;
    v21(v33, v66);
    v36 = v63;
    sub_24F928398();
    v37 = sub_24F928348();
    if (v38)
    {
      *&v70 = v37;
      *(&v70 + 1) = v38;
    }

    else
    {
      v39 = v58;
      sub_24F91F6A8();
      v40 = sub_24F91F668();
      v42 = v41;
      (*(v59 + 8))(v39, v60);
      *&v70 = v40;
      *(&v70 + 1) = v42;
    }

    sub_24F92C7F8();
    v21(v36, v34);
    v25 = swift_allocObject();
    sub_24E65E064(v76, &v70);
    v43 = v55;
    v44 = v61;
    if (*(&v71 + 1))
    {
      v21(v32, v34);
      sub_24E601704(v76, &qword_27F235830, &qword_24F93B8C0);
      v73 = v70;
      v74 = v71;
      v75 = v72;
    }

    else
    {
      v45 = v58;
      sub_24F91F6A8();
      v46 = sub_24F91F668();
      v65 = v35;
      v47 = v34;
      v48 = v32;
      v50 = v49;
      (*(v59 + 8))(v45, v60);
      v68 = v46;
      v69 = v50;
      sub_24F92C7F8();
      v21(v48, v47);
      sub_24E601704(v76, &qword_27F235830, &qword_24F93B8C0);
      v44 = v61;
      sub_24E601704(&v70, &qword_27F235830, &qword_24F93B8C0);
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
    v25 = sub_24F92AC38();
    sub_24EC60360(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v26 = 0x7478655479646F62;
    v27 = v65;
    v26[1] = 0xE800000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v12 + 8))(v67, v66);
    (*(v9 + 8))(v77, v8);
  }

  return v25;
}

uint64_t PrivacyFooter.deinit()
{

  sub_24E6585F8(v0 + 32);
  return v0;
}

uint64_t PrivacyFooter.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC602EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyFooter.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EC60360(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24EC60428()
{
  v0 = sub_24F928CE8();
  __swift_allocate_value_buffer(v0, qword_27F22C490);
  __swift_project_value_buffer(v0, qword_27F22C490);
  return sub_24F928CC8();
}

uint64_t AppIconProtocol.match(_:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244EB0, &unk_24F9FDE00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_24F928CB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  if (qword_27F2104E0 != -1)
  {
    swift_once();
  }

  v13 = sub_24F928CE8();
  __swift_project_value_buffer(v13, qword_27F22C490);
  sub_24F928CD8();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_24EC61CB0(v5);
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_24EC606EC(v9, a2);
    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

uint64_t sub_24EC606EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F928C98();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = sub_24F928C98();
    v10 = v9;
    sub_24E600AEC();
    v11 = sub_24F92C588();
    v13 = v12;
    v14 = sub_24F928CB8();
    result = (*(*(v14 - 8) + 8))(a1, v14);
    if (v13)
    {

      v8 = v11;
      v10 = v13;
    }

    *a2 = v8;
    a2[1] = v10;
  }

  else
  {
    v16 = sub_24F928CB8();
    result = (*(*(v16 - 8) + 8))(a1, v16);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void sub_24EC60818()
{
  v0 = *MEMORY[0x277D1B220];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 imageDescriptorNamed_];

  qword_27F22C4A8 = v3;
}

uint64_t AppIconProtocol.fetch(contentsOf:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4B0, &qword_24F9903A8);
  v3 = MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778], v3);
  return sub_24F92B928();
}

void sub_24EC6098C(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v3 = sub_24F927D88();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v77 = &v59[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_24F927DC8();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0, &qword_24F990470);
  v6 = *(v68 - 8);
  v73 = *(v6 + 64);
  MEMORY[0x28223BE20](v68);
  v74 = &v59[-v7];
  v8 = sub_24F927D98();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4C0, &qword_24F990478);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v59[-v14];
  v67 = sub_24F922028();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v59[-v18];
  sub_24F9288F8();
  v20 = v84;
  v64 = aBlock;
  if (qword_27F211068 != -1)
  {
    swift_once();
  }

  v21 = sub_24F922058();
  __swift_project_value_buffer(v21, qword_27F23DAD8);
  sub_24F922038();
  sub_24F921FF8();
  v63 = v19;
  v22 = *(v11 + 16);
  v22(v15, a2, v10);
  v22(v81, a2, v10);

  v23 = sub_24F922038();
  v24 = sub_24F92C058();

  if (sub_24F92C478())
  {
    v25 = swift_slowAlloc();
    v60 = v24;
    v26 = v25;
    v61 = swift_slowAlloc();
    v82 = v61;
    *v26 = 136315650;
    v27 = v64;
    *(v26 + 4) = sub_24E7620D4(v64, v20, &v82);
    *(v26 + 12) = 2080;
    sub_24F928908();
    aBlock = v28;
    v84 = v29;
    type metadata accessor for CGSize(0);
    v30 = sub_24F92B188();
    v32 = v31;
    v62 = v6;
    v33 = *(v11 + 8);
    v34 = v15;
    v35 = v20;
    v33(v34, v10);
    v36 = sub_24E7620D4(v30, v32, &v82);

    *(v26 + 14) = v36;
    *(v26 + 22) = 2048;
    v37 = v81;
    sub_24F928918();
    v39 = v38;
    v33(v37, v10);
    v6 = v62;
    *(v26 + 24) = v39;
    v40 = v63;
    v41 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v23, v60, v41, "AppIconProtocol", "%s-size:%s-scale:%f", v26, 0x20u);
    v42 = v61;
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v42, -1, -1);
    MEMORY[0x2530542D0](v26, -1, -1);
  }

  else
  {

    v43 = *(v11 + 8);
    v43(v81, v10);
    v43(v15, v10);
    v27 = v64;
    v35 = v20;
    v40 = v63;
  }

  v44 = v66;
  v45 = v67;
  (*(v66 + 16))(v65, v40, v67);
  sub_24F922098();
  swift_allocObject();
  v46 = sub_24F922088();
  (*(v44 + 8))(v40, v45);
  sub_24E74EC40();
  v48 = v70;
  v47 = v71;
  v49 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277D851C8], v72);
  v50 = sub_24F92BF48();
  (*(v47 + 8))(v48, v49);
  v51 = v74;
  v52 = v68;
  (*(v6 + 16))(v74, v69, v68);
  v53 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v54 = swift_allocObject();
  *(v54 + 2) = v46;
  *(v54 + 3) = v27;
  *(v54 + 4) = v35;
  (*(v6 + 32))(&v54[v53], v51, v52);
  v87 = sub_24EC61E74;
  v88 = v54;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_24EAF8248;
  v86 = &block_descriptor_64;
  v55 = _Block_copy(&aBlock);

  v56 = v75;
  sub_24F927DA8();
  v82 = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  v57 = v77;
  v58 = v80;
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v56, v57, v55);
  _Block_release(v55);

  (*(v79 + 8))(v57, v58);
  (*(v76 + 8))(v56, v78);
}

uint64_t sub_24EC612A0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4C8, &qword_24F9FDEF0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v11 = sub_24F92B098();
  v12 = [v10 initWithBundleIdentifier_];

  if (qword_27F2104E8 != -1)
  {
    swift_once();
  }

  v13 = qword_27F22C4A8;
  v14 = [v12 imageForDescriptor_];
  if (v14)
  {
    v15 = v14;
    if (![v14 placeholder] || (v16 = objc_msgSend(v12, sel_prepareImageForDescriptor_, v13), v15, (v15 = v16) != 0))
    {
      v16 = v15;
      v17 = [v16 CGImage];
      if (v17)
      {
        v18 = v17;
        [v16 scale];
        v33 = sub_24F926DE8();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0, &qword_24F990470);
        sub_24F92B8C8();
        (*(v7 + 8))(v9, v6);
        sub_24F92B8D8();

        return sub_24EC617A4(a1);
      }
    }

    if (qword_27F211408 != -1)
    {
      swift_once();
    }

    v25 = sub_24F9220D8();
    __swift_project_value_buffer(v25, qword_27F39E868);

    v26 = sub_24F9220B8();
    v27 = sub_24F92BDB8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = a1;
      v30 = swift_slowAlloc();
      v33 = v30;
      *v28 = 136315138;
      *(v28 + 4) = sub_24E7620D4(a2, a3, &v33);
      _os_log_impl(&dword_24E5DD000, v26, v27, "AppIconProtocol: Unable to get icon for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v31 = v30;
      a1 = v29;
      MEMORY[0x2530542D0](v31, -1, -1);
      MEMORY[0x2530542D0](v28, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0, &qword_24F990470);
    sub_24F92B8D8();
  }

  else
  {
    if (qword_27F211408 != -1)
    {
      swift_once();
    }

    v20 = sub_24F9220D8();
    __swift_project_value_buffer(v20, qword_27F39E868);

    v21 = sub_24F9220B8();
    v22 = sub_24F92BDB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_24E7620D4(a2, a3, &v33);
      _os_log_impl(&dword_24E5DD000, v21, v22, "AppIconProtocol: Unable to get icon for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x2530542D0](v24, -1, -1);
      MEMORY[0x2530542D0](v23, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0, &qword_24F990470);
    sub_24F92B8D8();
  }

  return sub_24EC617A4(a1);
}

uint64_t sub_24EC617A4(uint64_t a1)
{
  v1 = sub_24F922068();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F922028();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211068 != -1)
  {
    swift_once();
  }

  v9 = sub_24F922058();
  __swift_project_value_buffer(v9, qword_27F23DAD8);
  v10 = sub_24F922038();
  sub_24F922078();
  v11 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v10, v11, v14, "AppIconProtocol", v12, v13, 2u);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EC61A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4B0, &qword_24F9903A8);
  v3 = MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778], v3);
  return sub_24F92B928();
}

uint64_t _s12GameStoreKit15AppIconProtocolV12iconTemplate3forS2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_24F91EAA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v14 = a1;
  v15 = a2;
  sub_24F91EA28();
  sub_24E600AEC();
  v9 = sub_24F92C578();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (v11)
  {
    v12 = v9;
    a2 = v11;
  }

  else
  {

    v12 = v8;
  }

  v14 = 0x3A6E6F6369707061;
  v15 = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v12, a2);

  return v14;
}

uint64_t sub_24EC61CB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244EB0, &unk_24F9FDE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC61D9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0, &qword_24F990470);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EC61E74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0, &qword_24F990470);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_24EC612A0(v1, v2, v3);
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EC61F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = sub_24F929638();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a3;
  memset(v44, 0, 32);
  sub_24F929628();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = objc_opt_self();

  v17 = [v16 defaultCenter];
  v18 = type metadata accessor for WeakNotificationObserver();
  v19 = objc_allocWithZone(v18);
  v43[3] = v11;
  v43[4] = MEMORY[0x277D21FB0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  v21 = *(v12 + 16);
  v39 = v11;
  v21(boxed_opaque_existential_1, v14, v11);
  swift_unknownObjectWeakInit();
  sub_24E615E00(v43, &v19[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_scheduler]);
  v22 = &v19[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_block];
  *v22 = a5;
  *(v22 + 1) = v15;
  swift_unknownObjectWeakAssign();
  v42.receiver = v19;
  v42.super_class = v18;

  v23 = objc_msgSendSuper2(&v42, sel_init);
  sub_24E94E17C(v44, v40);
  v24 = v41;
  if (v41)
  {
    v25 = __swift_project_boxed_opaque_existential_1(v40, v41);
    v36[1] = v36;
    v37 = v12;
    v26 = v18;
    v27 = a6;
    v28 = *(v24 - 8);
    v29 = MEMORY[0x28223BE20](v25);
    v31 = v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v31, v29);
    v32 = v23;
    v33 = sub_24F92CDE8();
    (*(v28 + 8))(v31, v24);
    a6 = v27;
    v18 = v26;
    v12 = v37;
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v34 = v23;
    v33 = 0;
  }

  [v17 addObserver:v23 selector:sel_didReceiveWithNotification_ name:v38 object:v33];

  swift_unknownObjectRelease();
  (*(v12 + 8))(v14, v39);
  sub_24E857CC8(v44);
  result = __swift_destroy_boxed_opaque_existential_1(v43);
  a6[3] = v18;
  *a6 = v23;
  return result;
}

uint64_t sub_24EC622C0()
{

  return swift_deallocObject();
}

uint64_t DirectionalTextAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EC62388()
{
  result = qword_27F22C4D0;
  if (!qword_27F22C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C4D0);
  }

  return result;
}

uint64_t InlineTodayCards.__allocating_init(id:cards:impressionMetrics:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_24EC6307C(a1, a2, a3);

  return v6;
}

uint64_t InlineTodayCards.init(id:cards:impressionMetrics:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = sub_24EC6307C(a1, a2, a3);

  return v3;
}

uint64_t InlineTodayCards.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v87 = a2;
  v68 = sub_24F91F6B8();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v66 - v5;
  v6 = sub_24F92AC28();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v66 - v9;
  v10 = sub_24F9285B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v72 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v66 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  v18 = sub_24F928388();
  v19 = *(v18 - 8);
  v85 = v18;
  v86 = v19;
  MEMORY[0x28223BE20](v18);
  v69 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v77 = &v66 - v22;
  MEMORY[0x28223BE20](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v24 - 8);
  v70 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  sub_24F929608();
  sub_24F928398();
  v81 = v11;
  v29 = *(v11 + 16);
  v30 = v17;
  v31 = v87;
  v29(v30, v87, v10);
  v80 = v28;
  v32 = v83;
  sub_24F929548();
  v79 = v10;
  v71 = v29;
  v29(v91, v31, v10);
  v33 = v77;
  v82 = a1;
  sub_24F928398();
  v34 = v78;
  sub_24F9282B8();
  v35 = v86 + 8;
  v36 = *(v86 + 8);
  v37 = v33;
  v38 = v84;
  v39 = v85;
  v36(v37, v85);
  if ((*(v32 + 48))(v34, 1, v38) == 1)
  {
    sub_24E601704(v34, &qword_27F2213B0, &qword_24F965EC0);
    v40 = sub_24F92AC38();
    sub_24EC63400(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v41 = 0x7364726163;
    v41[1] = 0xE500000000000000;
    v41[2] = v74;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    v42 = *(v81 + 8);
    v43 = v79;
    v42(v87, v79);
    v36(v82, v39);
    v42(v91, v43);
LABEL_5:
    sub_24E601704(v80, &qword_27F213E68, &unk_24F93BC80);
    return v38;
  }

  v77 = v36;
  v86 = v35;
  v44 = v76;
  (*(v32 + 32))(v76, v34, v38);
  (*(v32 + 16))(v73, v44, v38);
  v45 = v91;
  v46 = v79;
  v71(v72, v91, v79);
  type metadata accessor for TodayCard(0);
  v47 = v38;
  sub_24EC63400(&qword_27F2294D0, type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  v48 = v75;
  v49 = sub_24F92B688();
  v38 = v45;
  v50 = v46;
  if (v48)
  {
    v51 = *(v81 + 8);
    v51(v87, v50);
    (v77)(v82, v85);
    (*(v32 + 8))(v44, v47);
    v51(v45, v50);
    goto LABEL_5;
  }

  v78 = v49;
  v53 = v69;
  sub_24F928398();
  v54 = sub_24F928348();
  v56 = v77;
  v57 = v46;
  if (v55)
  {
    v88 = v54;
    v89 = v55;
  }

  else
  {
    v58 = v66;
    sub_24F91F6A8();
    v59 = sub_24F91F668();
    v61 = v60;
    (*(v67 + 8))(v58, v68);
    v88 = v59;
    v89 = v61;
  }

  sub_24F92C7F8();
  v62 = v85;
  v56(v53, v85);
  v63 = v80;
  v64 = v70;
  sub_24E60169C(v80, v70, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for InlineTodayCards(0);
  swift_allocObject();
  v38 = sub_24EC6307C(v90, v78, v64);

  v65 = *(v81 + 8);
  v65(v87, v57);
  v56(v82, v62);
  (*(v83 + 8))(v76, v84);
  v65(v91, v57);
  sub_24E601704(v63, &qword_27F213E68, &unk_24F93BC80);
  return v38;
}

void sub_24EC62DDC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      goto LABEL_3;
    }

LABEL_15:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v7 = a1;
  v8 = sub_24F92C738();
  a1 = v7;
  if (v8 <= v7)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v5 = *(v4 + 8 * a1 + 32);

      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v5 = MEMORY[0x253052270]();
LABEL_7:
  v6 = *(v5 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_clickAction);
  if (v6)
  {
    *a2 = v6;
    *(a2 + 32) = type metadata accessor for TodayCard(0);
    *(a2 + 8) = v5;
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t InlineTodayCards.deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16InlineTodayCards_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t InlineTodayCards.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16InlineTodayCards_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC62FF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = InlineTodayCards.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EC6307C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v30, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v31 + 1))
  {
    v33 = v30;
    v34 = v31;
    v35 = v32;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v28 = v12;
    v29 = v14;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830, &qword_24F93B8C0);
  }

  v15 = v34;
  *(v4 + 24) = v33;
  *(v4 + 40) = v15;
  *(v4 + 56) = v35;
  sub_24E60169C(a3, v4 + OBJC_IVAR____TtC12GameStoreKit16InlineTodayCards_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *&v33 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
LABEL_22:
    v16 = sub_24F92C738();
    if (v16)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_6:
      v25 = a3;
      v26 = a1;
      v27 = v4;
      v17 = 0;
      v4 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x253052270](v17, a2);
          a1 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v23 = v33;
            a1 = v26;
            v4 = v27;
            a3 = v25;
            goto LABEL_24;
          }
        }

        else
        {
          if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_22;
          }

          v18 = *(a2 + 8 * v17 + 32);

          a1 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_19;
          }
        }

        v19 = *(*(v18 + 64) + 16);
        v20 = v19 > 8;
        v21 = (1 << v19) & 0x183;
        if (v20 || v21 == 0)
        {
        }

        else
        {
          sub_24F92C948();
          a3 = *(v33 + 16);
          sub_24F92C988();
          sub_24F92C998();
          sub_24F92C958();
        }

        ++v17;
        if (a1 == v16)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_24:
  sub_24E601704(a3, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  *(v4 + 16) = v23;
  return v4;
}

uint64_t type metadata accessor for InlineTodayCards(uint64_t a1)
{
  result = qword_27F22C4E0;
  if (!qword_27F22C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC63400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EC63450(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EC63594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
  __swift_allocate_value_buffer(v0, qword_27F39C1B0);
  __swift_project_value_buffer(v0, qword_27F39C1B0);
  return sub_24F928C68();
}

void sub_24EC6360C()
{
  v0 = *MEMORY[0x277CBED28];
  v1 = objc_allocWithZone(ASKAtomicBox);
  v2 = v0;
  v3 = [v1 initWithValue_];

  qword_27F22C4F0 = v3;
}

uint64_t sub_24EC63670()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_allocate_value_buffer(v0, qword_27F22C4F8);
  __swift_project_value_buffer(v0, qword_27F22C4F8);
  return sub_24F928C68();
}

uint64_t sub_24EC636E8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F210500 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F58, &unk_24F988B70);
  __swift_project_value_buffer(v9, qword_27F22C4F8);
  sub_24F928868();

  if (v12[1])
  {
    sub_24F91F488();

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v8, v4, v5);
      LOBYTE(v12[0]) = 0;
      sub_24EC63950(v8, v12, a1);
      (*(v6 + 8))(v8, v5);
      v10 = 0;
      return (*(v6 + 56))(a1, v10, 1, v5);
    }

    sub_24E601704(v4, &qword_27F228530, &unk_24F93C6E0);
  }

  v10 = 1;
  return (*(v6 + 56))(a1, v10, 1, v5);
}

uint64_t sub_24EC63950@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F928418();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *a2;
  if (sub_24F91F388() == 0x6B63617074656ALL && v8 == 0xE700000000000000)
  {

LABEL_5:
    v10 = sub_24F91F4A8();
    v11 = *(*(v10 - 8) + 16);

    return v11(a3, a1, v10);
  }

  v9 = sub_24F92CE08();

  if (v9)
  {
    goto LABEL_5;
  }

  v13 = sub_24F91F4A8();
  v14 = (*(*(v13 - 8) + 16))(a3, a1, v13);
  LOBYTE(v21[0]) = v7;
  v15 = sub_24EC65D88(v14);
  sub_24EC65F10(7565161, 0xE300000000000000, v21, v15 & 1, 1);
  v17 = v16;
  v19 = v18;
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v20 = sub_24F92AAE8();
  __swift_project_value_buffer(v20, qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v21[3] = MEMORY[0x277D837D0];
  v21[0] = v17;
  v21[1] = v19;

  sub_24F9283D8();
  sub_24E601704(v21, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  sub_24F91F3C8();
}

uint64_t sub_24EC63CA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v84 = a4;
  v85 = a3;
  v75 = a2;
  v5 = sub_24F928048();
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x28223BE20](v5);
  v77 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = &v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - v13;
  v15 = sub_24F91F4A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v82 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v75 - v19;
  MEMORY[0x28223BE20](v20);
  v86 = &v75 - v21;
  MEMORY[0x28223BE20](v22);
  v81 = &v75 - v23;
  v83 = *a1;
  v25 = ASKBuildTypeGetCurrent(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24F9479A0;
  *(v26 + 32) = @"debug";
  *(v26 + 40) = @"convergence";
  *(v26 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v27 = @"debug";
  v28 = @"convergence";
  v29 = @"internal";
  v30 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v25, v30);

  if (IsAnyOf)
  {
    sub_24EC636E8(v14);
    v33 = v16;
    v34 = v15;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v51 = v81;
      (*(v16 + 32))(v81, v14, v15);
      v52 = [objc_opt_self() sharedInstance];
      v87[0] = 0;
      v87[1] = 0xE000000000000000;
      sub_24F92C888();
      MEMORY[0x253050C20](0xD000000000000034, 0x800000024FA58650);
      sub_24EC6614C(&qword_27F21B620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v53 = sub_24F92CD88();
      MEMORY[0x253050C20](v53);

      v54 = objc_allocWithZone(GSKDebugNotification);
      v55 = sub_24F92B098();

      v56 = [v54 initWithText_];

      [v52 notify_];
      if (qword_27F210570 != -1)
      {
        swift_once();
      }

      v57 = sub_24F92AAE8();
      __swift_project_value_buffer(v57, qword_27F39C3B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      LOBYTE(v87[0]) = v83;
      v58 = v86;
      sub_24EC63950(v51, v87, v86);
      v60 = v78;
      v59 = v79;
      v61 = v80;
      (*(v79 + 104))(v78, *MEMORY[0x277D21A70], v80);
      v62 = swift_allocObject();
      v63 = v85;
      *(v62 + 16) = v85;
      v64 = sub_24F927F18();
      v65 = v84;
      v84[3] = v64;
      v65[4] = sub_24EC6614C(&qword_27F22C518, MEMORY[0x277D219B0], MEMORY[0x277D219A8]);
      __swift_allocate_boxed_opaque_existential_1(v65);
      (*(v33 + 16))(v76, v58, v34);
      (*(v59 + 16))(v77, v60, v61);
      v66 = v63;
      sub_24F927F28();
      (*(v59 + 8))(v60, v61);
      v67 = *(v33 + 8);
      v67(v86, v34);
      return (v67)(v81, v34);
    }

    v32 = sub_24E601704(v14, &qword_27F228530, &unk_24F93C6E0);
  }

  v35 = ASKBuildTypeGetCurrent(v32);
  v36 = sub_24F92B0D8();
  v38 = v37;
  if (v36 == sub_24F92B0D8() && v38 == v39)
  {

    v40 = v15;
LABEL_8:
    if (qword_27F210570 != -1)
    {
      swift_once();
    }

    v42 = sub_24F92AAE8();
    __swift_project_value_buffer(v42, qword_27F39C3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    sub_24F91F488();
    result = (*(v16 + 48))(v11, 1, v40);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v87[0]) = v83;
      v44 = v82;
      sub_24EC63950(v11, v87, v82);
      v45 = *(v16 + 8);
      v45(v11, v40);
      v46 = swift_allocObject();
      v47 = v85;
      *(v46 + 16) = v85;
      v48 = sub_24F927F18();
      v49 = v84;
      v84[3] = v48;
      v49[4] = sub_24EC6614C(&qword_27F22C518, MEMORY[0x277D219B0], MEMORY[0x277D219A8]);
      __swift_allocate_boxed_opaque_existential_1(v49);
      (*(v16 + 16))(v86, v44, v40);
      v50 = v47;
      sub_24F927F38();
      return (v45)(v44, v40);
    }

    return result;
  }

  v41 = sub_24F92CE08();

  v40 = v15;
  if (v41)
  {
    goto LABEL_8;
  }

  if (qword_27F210828 != -1)
  {
    swift_once();
  }

  v68 = qword_27F233788;
  sub_24F92A328();
  *(swift_allocObject() + 16) = v83;
  v69 = swift_allocObject();
  v70 = v85;
  *(v69 + 16) = v85;
  v71 = sub_24F927F58();
  v72 = v84;
  v84[3] = v71;
  v72[4] = sub_24EC6614C(&qword_27F22C520, MEMORY[0x277D219C8], MEMORY[0x277D219C0]);
  __swift_allocate_boxed_opaque_existential_1(v72);
  v73 = v70;
  v74 = v68;
  return sub_24F927F68();
}

uint64_t sub_24EC647DC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v5 + 296) = a3;
  *(v5 + 304) = a5;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  v7 = sub_24F92A498();
  *(v5 + 312) = v7;
  *(v5 + 320) = *(v7 - 8);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  sub_24F928418();
  *(v5 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  *(v5 + 352) = swift_task_alloc();
  v8 = sub_24F91F4A8();
  *(v5 + 360) = v8;
  *(v5 + 368) = *(v8 - 8);
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = *a4;

  return MEMORY[0x2822009F8](sub_24EC64990, 0, 0);
}

uint64_t sub_24EC64990()
{
  v48 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_24E99091C(*(v0 + 304), v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 400);
  if (v4 == 1)
  {
    v6 = *(v0 + 288);
    v7 = *(v0 + 296);
    sub_24E601704(*(v0 + 352), &qword_27F228530, &unk_24F93C6E0);
    v46 = v5;
    sub_24EC63CA0(&v46, v6, v7, (v0 + 56));
    if (!*(v0 + 80))
    {
      sub_24E601704(v0 + 56, &qword_27F22C510, &qword_24F990668);
      sub_24F92A868();
      sub_24EC6614C(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
      swift_allocError();
      sub_24F92A808();
      swift_willThrow();

      v33 = *(v0 + 8);
      goto LABEL_11;
    }

    v8 = (v0 + 16);
    sub_24E612C80((v0 + 56), v0 + 16);
    if (qword_27F210570 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 320);
    v10 = *(v0 + 328);
    v42 = *(v0 + 312);
    v44 = *(v0 + 296);
    v40 = *(v0 + 288);
    v11 = sub_24F92AAE8();
    __swift_project_value_buffer(v11, qword_27F39C3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v12 = *(v0 + 40);
    v13 = __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
    *(v0 + 240) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    sub_24F9283D8();
    sub_24E601704(v0 + 216, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    sub_24E615E00(v0 + 16, v0 + 96);
    (*(v9 + 16))(v10, v40, v42);
    v15 = type metadata accessor for JSJetpackFetcher(0);
    swift_allocObject();
    v16 = sub_24ECF4174((v0 + 96), v44, v10);
    v35 = *(v0 + 280);
    v35[3] = v15;
    v35[4] = &off_2861EE928;
    *v35 = v16;
  }

  else
  {
    v17 = *(v0 + 384);
    v18 = *(v0 + 392);
    v19 = *(v0 + 368);
    v20 = *(v0 + 376);
    v21 = *(v0 + 360);
    v22 = *(v0 + 296);
    (*(v19 + 32))(v18, *(v0 + 352), v21);
    v47[0] = v5;
    sub_24EC63950(v18, v47, v17);
    *(swift_allocObject() + 16) = v22;
    *(v0 + 160) = sub_24F927F18();
    *(v0 + 168) = sub_24EC6614C(&qword_27F22C518, MEMORY[0x277D219B0], MEMORY[0x277D219A8]);
    v45 = (v0 + 136);
    __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    (*(v19 + 16))(v20, v17, v21);
    v23 = v22;
    sub_24F927F38();
    v43 = *(v19 + 8);
    v43(v17, v21);
    if (qword_27F210570 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 320);
    v38 = *(v0 + 336);
    v39 = *(v0 + 312);
    v41 = *(v0 + 296);
    v37 = *(v0 + 288);
    v25 = sub_24F92AAE8();
    __swift_project_value_buffer(v25, qword_27F39C3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v26 = *(v0 + 160);
    v8 = (v0 + 136);
    v27 = __swift_project_boxed_opaque_existential_1(v45, v26);
    *(v0 + 272) = v26;
    v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 248));
    (*(*(v26 - 8) + 16))(v28, v27, v26);
    sub_24F9283D8();
    sub_24E601704(v0 + 248, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    sub_24E615E00(v45, v0 + 176);
    (*(v24 + 16))(v38, v37, v39);
    v29 = type metadata accessor for JSJetpackFetcher(0);
    swift_allocObject();
    v30 = sub_24ECF4174((v0 + 176), v41, v38);
    v31 = *(v0 + 392);
    v32 = *(v0 + 360);
    v34 = *(v0 + 280);
    v34[3] = v29;
    v34[4] = &off_2861EE928;
    *v34 = v30;
    v43(v31, v32);
  }

  __swift_destroy_boxed_opaque_existential_1(v8);

  v33 = *(v0 + 8);
LABEL_11:

  return v33();
}

id sub_24EC651C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384D0, &unk_24F9AC950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = [objc_opt_self() ams:a3 configurationWithProcessInfo:a1 bag:?];
  swift_unknownObjectRetain();
  sub_24F92A3C8();
  v9 = sub_24F92A498();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_24F928038();
  sub_24E601704(v7, &qword_27F2384D0, &unk_24F9AC950);
  return v8;
}

void sub_24EC65300(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v93 = a4;
  v94 = a5;
  v100 = a1;
  v8 = sub_24F92B138();
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = sub_24F91F4A8();
  v96 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v79 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v25)
    {
      goto LABEL_18;
    }

    LODWORD(v26) = HIDWORD(v100) - v100;
    if (!__OFSUB__(HIDWORD(v100), v100))
    {
      v26 = v26;
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  if (v25 != 2)
  {
    goto LABEL_18;
  }

  v28 = *(v100 + 16);
  v27 = *(v100 + 24);
  v29 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v29)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (v26 < 460801)
  {
    goto LABEL_18;
  }

  v80 = v24;
  v81 = v15;
  v90 = v22;
  v91 = v16;
  v87 = v12;
  if (qword_27F210570 != -1)
  {
    goto LABEL_24;
  }

LABEL_9:
  v30 = sub_24F92AAE8();
  v31 = __swift_project_value_buffer(v30, qword_27F39C3B0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  v33 = *(sub_24F928468() - 8);
  v34 = *(v33 + 72);
  v35 = *(v33 + 80);
  v36 = (v35 + 32) & ~v35;
  v83 = v32;
  v84 = v34;
  v88 = v35;
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v82 = v36;
  sub_24F9283A8();
  v89 = v30;
  v85 = v31;
  sub_24F92A5B8();

  v37 = a3[3];
  v38 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v37);
  v39 = (*(v38 + 8))(v37, v38);
  v41 = v40;
  sub_24F929388();
  v42 = _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  v43 = sub_24EF9A690(v39, v41, v42, MEMORY[0x277D21E70], 7368801, 0xE300000000000000);
  v86 = a2;
  v92 = v42;
  if ((v43 & 1) != 0 || (sub_24EF9AAE0(v100, a2, v39, v41, v42, MEMORY[0x277D21E70], 7368801, 0xE300000000000000, v44), !v5))
  {
    v45 = v91;

    v46 = [objc_opt_self() defaultManager];
    v47 = v90;
    sub_24EF9B868(v46);

    sub_24F91F3D8();
    sub_24F91F3F8();
    v48 = v96;
    v49 = *(v96 + 8);
    v49(v19, v45);
    v49(v47, v45);
    v50 = a3[3];
    v51 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v50);
    (*(v51 + 16))(v50, v51);
    (*(v48 + 56))(v81, 1, 1, v45);
    v52 = sub_24F929348();
    v53 = MEMORY[0x277D21E58];
    v54 = v94;
    v94[3] = v52;
    v54[4] = v53;
    __swift_allocate_boxed_opaque_existential_1(v54);
    v55 = v93;
    sub_24F929338();
    if (!v5)
    {

      return;
    }

    __swift_deallocate_boxed_opaque_existential_2(v54);
  }

  else
  {
  }

  v93 = v5;
  v80 = v82 + 2 * v84;
  v81 = 0;
  v56 = swift_allocObject();
  v79 = xmmword_24F93A400;
  *(v56 + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v57 = sub_24F91F268();
  v58 = AMSLogableError();

  v59 = sub_24F92B0D8();
  v61 = v60;

  v99 = MEMORY[0x277D837D0];
  v97 = v59;
  v98 = v61;
  sub_24F928438();
  sub_24E601704(&v97, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  v62 = v81;
  sub_24EF9B244(v92, MEMORY[0x277D21E70], 7368801, 0xE300000000000000);
  if (v62)
  {
    *(swift_allocObject() + 16) = v79;
    sub_24F9283A8();
    v63 = sub_24F91F268();
    v64 = AMSLogableError();

    v65 = sub_24F92B0D8();
    v67 = v66;

    v99 = MEMORY[0x277D837D0];
    v97 = v65;
    v98 = v67;
    sub_24F928438();
    sub_24E601704(&v97, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    v68 = v62;
    v12 = v87;
    v22 = v90;
  }

  else
  {

    v12 = v87;
    v22 = v90;
    v68 = v93;
  }

  v16 = v91;
LABEL_18:
  sub_24F92B128();
  sub_24F92B0F8();
  if (v69)
  {
    v70 = a3[3];
    v71 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v70);
    (*(v71 + 16))(v70, v71);
    (*(v96 + 56))(v12, 0, 1, v16);
    v72 = sub_24F92AAA8();
    v73 = MEMORY[0x277D224E8];
    v74 = v94;
    v94[3] = v72;
    v74[4] = v73;
    __swift_allocate_boxed_opaque_existential_1(v74);
    sub_24F92AA98();
  }

  else
  {
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_24F92C888();

    v97 = 0xD000000000000012;
    v98 = 0x800000024FA584C0;
    v75 = v22;
    v76 = a3[3];
    v77 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v76);
    (*(v77 + 16))(v76, v77);
    sub_24EC6614C(&qword_27F21B620, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v78 = sub_24F92CD88();
    MEMORY[0x253050C20](v78);

    (*(v96 + 8))(v75, v16);
    MEMORY[0x253050C20](0x746F6E207369203ELL, 0xED00003846545520);
    sub_24F92A868();
    sub_24EC6614C(&qword_27F222F70, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }
}

uint64_t sub_24EC65D48()
{

  return swift_deallocObject();
}

uint64_t sub_24EC65D88(uint64_t a1)
{
  v1 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F9479A0;
  *(v2 + 32) = @"debug";
  *(v2 + 40) = @"convergence";
  *(v2 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v3 = @"debug";
  v4 = @"convergence";
  v5 = @"internal";
  v6 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v1, v6);

  if (IsAnyOf)
  {
    sub_24F929388();
    _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
    if (qword_27F2104F0 != -1)
    {
      swift_once();
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40, &qword_24F97A580);
    __swift_project_value_buffer(v8, qword_27F39C1B0);
    sub_24F928868();

    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_24EC65F10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v20 = xmmword_24F990640;
  v21 = a1;
  v22 = a2;
  v23 = xmmword_24F990650;
  v6 = 0x6C616E7265746E69;
  if ((a4 & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0xE800000000000000;
  if ((a4 & 1) == 0)
  {
    v7 = 0;
  }

  v24 = v6;
  v25 = v7;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_6:
  if (v8 <= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 + 1;
  v12 = 16 * v8 + 40;
  while (v8 != 4)
  {
    if (v11 == ++v8)
    {
      __break(1u);
      return;
    }

    v13 = v12 + 16;
    v14 = *&v19[v12];
    v12 += 16;
    if (v14)
    {
      v15 = *&v19[v13 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_24E615CF4(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      if (v17 >= v16 >> 1)
      {
        v9 = sub_24E615CF4((v16 > 1), v17 + 1, 1, v9);
      }

      *(v9 + 2) = v17 + 1;
      v18 = &v9[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E907170();
  sub_24F92AF68();

  if (a5)
  {
    MEMORY[0x253050C20](0x6B63617074656A2ELL, 0xE800000000000000);
  }
}

uint64_t sub_24EC6614C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC661DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) != 1)
  {

    sub_24F92BDC8();
    v9 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E83C01C(v7, 0);
    (*(v4 + 8))(v6, v3);
    if (v14 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = MEMORY[0x277CE13D8];
    goto LABEL_6;
  }

  v14 = v7 & 1;
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = MEMORY[0x277CE13B8];
LABEL_6:
  v10 = *v8;
  v11 = sub_24F927748();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t sub_24EC66394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C528, &qword_24F990748);
  sub_24EC661DC(a2 + *(v4 + 36));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C530, &unk_24F990750);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

unint64_t sub_24EC66454()
{
  result = qword_27F22C538;
  if (!qword_27F22C538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C528, &qword_24F990748);
    sub_24EC664E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C538);
  }

  return result;
}

unint64_t sub_24EC664E0()
{
  result = qword_27F22C540;
  if (!qword_27F22C540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C530, &unk_24F990750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C540);
  }

  return result;
}

uint64_t LoadingPagePresenter.pageUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24EC6660C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24EC66678(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24EB09F58;
}

uint64_t LoadingPagePresenter.__allocating_init(objectGraph:pageUrl:isIncomingURL:referrerData:)(uint64_t a1, uint64_t a2, char a3, __int128 *a4)
{
  v7 = swift_allocObject();
  v8 = *(a4 + 4);
  v9 = *(a4 + 40);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageAction) = 0;
  v10 = v7 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData;
  *v10 = xmmword_24F9406F0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v10 + 40) = 0;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  v22 = *a4;
  v23 = a4[1];
  (*(v13 + 16))(v7 + v11, a2, v12);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_isIncomingURL) = a3;
  v14 = *v10;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  v17 = *(v10 + 24);
  v18 = *(v10 + 32);
  *v10 = v22;
  *(v10 + 16) = v23;
  *(v10 + 32) = v8;
  v19 = *(v10 + 40);
  *(v10 + 40) = v9;
  sub_24EA14B54(v14, v15, v16, v17, v18, v19);
  v20 = sub_24EC8415C(a1, 0, 0, 0);

  (*(v13 + 8))(a2, v12);
  return v20;
}

uint64_t LoadingPagePresenter.init(objectGraph:pageUrl:isIncomingURL:referrerData:)(uint64_t a1, uint64_t a2, char a3, __int128 *a4)
{
  v9 = *(a4 + 4);
  v24 = *(a4 + 40);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageAction) = 0;
  v10 = v4 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData;
  *v10 = xmmword_24F9406F0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v10 + 40) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  v22 = *a4;
  v23 = a4[1];
  (*(v13 + 16))(v4 + v11, a2, v12);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_isIncomingURL) = a3;
  v14 = *v10;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  v17 = *(v10 + 24);
  v18 = *(v10 + 32);
  *v10 = v22;
  *(v10 + 16) = v23;
  *(v10 + 32) = v9;
  v19 = *(v10 + 40);
  *(v10 + 40) = v24;
  sub_24EA14B54(v14, v15, v16, v17, v18, v19);
  v20 = sub_24EC8415C(a1, 0, 0, 0);

  (*(v13 + 8))(a2, v12);
  return v20;
}

uint64_t sub_24EC66A80()
{
  v1 = v0;
  v2 = type metadata accessor for ActionIntent(0);
  MEMORY[0x28223BE20](v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A088();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if ((*(v0 + 32) & 1) == 0)
  {
    *(v0 + 32) = 1;
    v10 = v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v11 + 16) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (*(v0 + 24))
    {
      *v8 = 1;
      (*(v6 + 104))(v8, *MEMORY[0x277D222A0], v5);

      sub_24F92A0D8();

      (*(v6 + 8))(v8, v5);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    v29[1] = v30[0];
    v13 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
    v14 = v2[5];
    v15 = sub_24F91F4A8();
    (*(*(v15 - 8) + 16))(&v4[v14], v1 + v13, v15);
    v16 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_isIncomingURL);
    v17 = v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData;
    v18 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData);
    v19 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 8);
    v20 = v4;
    v21 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 16);
    v22 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 24);
    v23 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 32);
    strcpy(v20, "ActionIntent");
    *(v20 + 13) = 0;
    *(v20 + 14) = -5120;
    *(v20 + v2[6]) = v16;
    v24 = v20 + v2[7];
    *v24 = v18;
    *(v24 + 8) = v19;
    *(v24 + 16) = v21;
    *(v24 + 24) = v22;
    *(v24 + 32) = v23;
    v25 = *(v17 + 40);
    *(v24 + 40) = v25;
    sub_24F929C28();
    sub_24EA145F0(v18, v19, v21, v22, v23, v25);

    sub_24F928FE8();

    sub_24F929BF8();

    v26 = sub_24F929C08();

    sub_24EB47578(v20, v26, "GameStoreKit/LoadingPagePresenter.swift", 39, 2);
    v27 = sub_24E74EC40();
    swift_retain_n();
    v28 = sub_24F92BEF8();
    v30[3] = v27;
    v30[4] = MEMORY[0x277D225C0];
    v30[0] = v28;
    sub_24F92A958();

    sub_24EC67894(v20);
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t sub_24EC66EB0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for FlowAction(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v31 = v7;
    v32 = v5;
    v33 = v4;
    v11 = (v9 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData);
    swift_beginAccess();
    v12 = v11[3];
    if (v12)
    {
      v13 = v11[4];
      v14 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      v15 = *(v12 - 8);
      v16 = MEMORY[0x28223BE20](v14);
      v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = *(v13 + 8);

      v19(&v36, v12, v13);
      (*(v15 + 8))(v18, v12);
    }

    else
    {
      v37 = 0u;
      v36 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C570, &qword_24F990810);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v39 = 0;
      memset(v38, 0, sizeof(v38));
    }

    sub_24EC67B6C(v38, &v34);
    if (v35)
    {
      sub_24E612C80(&v34, &v36);
      sub_24E612C80(&v36, &v40);
    }

    else
    {
      sub_24E601704(&v34, &qword_27F22C578, &qword_24F990818);
      *(&v37 + 1) = MEMORY[0x277D84F78] + 8;
      if ((swift_dynamicCast() & 1) == 0)
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
      }
    }

    sub_24E601704(v38, &qword_27F22C578, &qword_24F990818);
    if (*(&v41 + 1))
    {
      sub_24E612C80(&v40, &v43);
      swift_beginAccess();
      if (*(a2 + 24))
      {
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));

        v20 = v31;
        sub_24F92AD48();
        v21 = v32;
        v22 = v33;
        (*(v32 + 104))(v20, *MEMORY[0x277D22290], v33);
        sub_24F92A0C8();

        (*(v21 + 8))(v20, v22);
        v23 = *(a2 + 24);
      }

      else
      {
        v23 = 0;
      }

      v24 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics;
      swift_beginAccess();
      *(v10 + v24) = v23;

      __swift_destroy_boxed_opaque_existential_1(&v43);
    }

    else
    {

      sub_24E601704(&v40, &qword_27F22C578, &qword_24F990818);
    }
  }

  *(a2 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageAction) = v8;

  v25 = a2 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 8);
    ObjectType = swift_getObjectType();
    v43 = 0u;
    v44 = 0u;
    (*(*(v26 + 8) + 8))(v8, &v43, ObjectType);
    swift_unknownObjectRelease();
    sub_24E601704(&v43, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  *(a2 + 32) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v25 + 8);
    v30 = swift_getObjectType();
    (*(*(v29 + 16) + 16))(v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EC67410(void *a1, uint64_t a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  *(a2 + 32) = 0;
  v8 = a2 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v9 + 16) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v8 + 8);
    v12 = swift_getObjectType();
    (*(*(v11 + 16) + 24))(a1, v12);
    swift_unknownObjectRelease();
  }

  result = swift_beginAccess();
  if (*(a2 + 24))
  {
    *v7 = a1;
    (*(v5 + 104))(v7, *MEMORY[0x277D22280], v4);

    v14 = a1;
    sub_24F92A0C8();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_24EC6762C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 40));
  v3 = v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;

  return sub_24E883630(v3);
}

uint64_t LoadingPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 40));
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view);
  return v0;
}

uint64_t LoadingPagePresenter.__deallocating_deinit()
{
  v0 = BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_pageUrl;
  v2 = sub_24F91F4A8();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  sub_24EA14B54(*(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_referrerData + 40));
  sub_24E883630(v0 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC67894(uint64_t a1)
{
  v2 = type metadata accessor for ActionIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC678F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC6794C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit20LoadingPagePresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for LoadingPagePresenter(uint64_t a1)
{
  result = qword_27F22C560;
  if (!qword_27F22C560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC67A04(uint64_t a1)
{
  result = sub_24F91F4A8();
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

uint64_t sub_24EC67B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C578, &qword_24F990818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

GameStoreKit::ProductMedia::DescriptionPlacement __swiftcall ProductMedia.descriptionPlacement(when:)(GameStoreKit::ProductMedia::DescriptionPlacement when)
{
  if (when)
  {
    *v1 = 1;
  }

  else
  {
    *v1 = *(v2 + 72);
  }

  return when;
}

GameStoreKit::ProductMedia::DescriptionPlacement __swiftcall ProductMediaMetadata.descriptionPlacement(when:)(GameStoreKit::ProductMedia::DescriptionPlacement when)
{
  if (when)
  {
    *v1 = 1;
  }

  else
  {
    *v1 = *(v2 + 48);
  }

  return when;
}

double sub_24EC67C24@<D0>(_OWORD *a1@<X8>)
{
  sub_24EC6BAC0();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24EC67C74(void *a1, uint64_t a2)
{
  sub_24EC6BAC0();

  return sub_24F924878();
}

uint64_t static DestinationViewFactory.makeView(for:objectGraph:)@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a2;
  v135 = a3;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C580, &qword_24F990820);
  v113 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v110 = &v100 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C588, &qword_24F990828);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v100 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C590, &qword_24F990830);
  MEMORY[0x28223BE20](v122);
  v114 = &v100 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C598, &qword_24F990838);
  MEMORY[0x28223BE20](v118);
  v120 = &v100 - v7;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5A0, &qword_24F990840);
  MEMORY[0x28223BE20](v129);
  v123 = &v100 - v8;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5A8, &qword_24F990848);
  v112 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v109 = &v100 - v9;
  v104 = sub_24F921B98();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5B0, &qword_24F990850);
  v111 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v108 = &v100 - v11;
  v12 = type metadata accessor for ArticlePageIntent(0);
  v101 = *(v12 - 8);
  v13 = *(v101 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v115 = &v100 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5B8, &qword_24F990858);
  MEMORY[0x28223BE20](v132);
  v134 = &v100 - v17;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5C0, &qword_24F990860);
  MEMORY[0x28223BE20](v126);
  v128 = &v100 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5C8, &qword_24F990868);
  MEMORY[0x28223BE20](v116);
  v119 = &v100 - v19;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5D0, &qword_24F990870);
  MEMORY[0x28223BE20](v127);
  v121 = &v100 - v20;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5D8, &qword_24F990878);
  MEMORY[0x28223BE20](v133);
  v130 = &v100 - v21;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5E0, &unk_24F990880);
  MEMORY[0x28223BE20](v117);
  v23 = &v100 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140, &qword_24F97DA70);
  v100 = *(v24 - 8);
  v25 = *(v100 + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v100 - v28;
  v30 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_24EC6A254(a1, v32, type metadata accessor for FlowAction.Destination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v71 = v115;
      sub_24EC6A1F0(v32, v115);
      sub_24EC6A254(v71, v14, type metadata accessor for ArticlePageIntent);
      v72 = (*(v101 + 80) + 16) & ~*(v101 + 80);
      v73 = swift_allocObject();
      sub_24EC6A1F0(v14, v73 + v72);
      *(v73 + ((v13 + v72 + 7) & 0xFFFFFFFFFFFFFFF8)) = v131;
      v74 = swift_allocObject();
      *(v74 + 16) = sub_24EC6A3B8;
      *(v74 + 24) = v73;
      *&v146 = sub_24EC6A444;
      *(&v146 + 1) = v74;
      LOBYTE(v147) = 0;
      v75 = v103;
      v76 = v102;
      v77 = v104;
      (*(v103 + 104))(v102, *MEMORY[0x277D7EC30], v104);
      v78 = sub_24EC696CC();

      v79 = v108;
      sub_24F925F78();
      (*(v75 + 8))(v76, v77);

      v80 = v111;
      v81 = v125;
      (*(v111 + 16))(v119, v79, v125);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F22C600, &qword_27F22C5E0, &unk_24F990880, &unk_24FA2B6C8);
      *&v146 = &type metadata for GamesArticlePageView;
      *(&v146 + 1) = v78;
      swift_getOpaqueTypeConformance2();
      v82 = v121;
      sub_24F924E28();
      sub_24E60169C(v82, v128, &qword_27F22C5D0, &qword_24F990870);
      swift_storeEnumTagMultiPayload();
      sub_24EC695E8();
      sub_24EC69720();
      v83 = v130;
      sub_24F924E28();
      sub_24E601704(v82, &qword_27F22C5D0, &qword_24F990870);
      sub_24E60169C(v83, v134, &qword_27F22C5D8, &qword_24F990878);
      swift_storeEnumTagMultiPayload();
      sub_24EC6955C();
      sub_24E602068(&qword_27F22C630, &qword_27F22C580, &qword_24F990820, MEMORY[0x277D7EB80]);
      sub_24F924E28();

      sub_24E601704(v83, &qword_27F22C5D8, &qword_24F990878);
      (*(v80 + 8))(v79, v81);
      v69 = type metadata accessor for ArticlePageIntent;
      v70 = v115;
      return sub_24EC6AEB8(v70, v69);
    }

    v35 = v131;
    if (EnumCaseMultiPayload == 12)
    {
      v124 = *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148, &unk_24F97DA78) + 48)];
      sub_24EAB9588(v32, v29);
      type metadata accessor for ASKBagContract(0);
      sub_24F928F28();
      v122 = v141;
      type metadata accessor for LocalPlayerProvider(0);
      sub_24F928F28();
      v120 = v140;
      type metadata accessor for ArcadeSubscription(0);
      sub_24F928F28();
      v118 = v139;
      type metadata accessor for NetworkConnectionMonitor(0);
      sub_24F928F28();
      v115 = v138;
      v36 = v35;
      if (qword_27F20FF08 != -1)
      {
        swift_once();
      }

      v37 = xmmword_27F39ACF8;
      v38 = *(&xmmword_27F39AD08 + 1);
      v113 = xmmword_27F39AD08;
      LODWORD(v114) = byte_27F39AD18;
      sub_24E60169C(v29, v26, &qword_27F227140, &qword_24F97DA70);
      v39 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v40 = swift_allocObject();
      v123 = v29;
      v41 = v40;
      v42 = v124;
      *(v40 + 16) = v36;
      *(v40 + 24) = v42;
      sub_24EAB9588(v26, v40 + v39);
      v43 = v117;
      v44 = *(v117 + 64);
      *&v23[v44] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      *&v23[*(v43 + 68)] = 0;
      v45 = &v23[*(v43 + 72)];
      v137 = 0;

      v46 = v113;

      sub_24F926F28();
      v47 = *(&v146 + 1);
      *v45 = v146;
      *(v45 + 1) = v47;
      v48 = v120;
      *v23 = v122;
      *(v23 + 1) = v48;
      v49 = v115;
      *(v23 + 2) = v118;
      *(v23 + 3) = v49;
      *(v23 + 56) = v37;
      *(v23 + 9) = v46;
      *(v23 + 10) = v38;
      v23[88] = v114;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_24EC6A580;
      *(v50 + 24) = v41;
      *(v23 + 4) = sub_24EC6A630;
      *(v23 + 5) = v50;
      v23[48] = 0;
      sub_24E60169C(v23, v119, &qword_27F22C5E0, &unk_24F990880);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F22C600, &qword_27F22C5E0, &unk_24F990880, &unk_24FA2B6C8);
      v51 = sub_24EC696CC();
      *&v146 = &type metadata for GamesArticlePageView;
      *(&v146 + 1) = v51;
      swift_getOpaqueTypeConformance2();
      v52 = v121;
      sub_24F924E28();
      sub_24E60169C(v52, v128, &qword_27F22C5D0, &qword_24F990870);
      swift_storeEnumTagMultiPayload();
      sub_24EC695E8();
      sub_24EC69720();
      v53 = v130;
      sub_24F924E28();
      sub_24E601704(v52, &qword_27F22C5D0, &qword_24F990870);
      sub_24E60169C(v53, v134, &qword_27F22C5D8, &qword_24F990878);
      swift_storeEnumTagMultiPayload();
      sub_24EC6955C();
      sub_24E602068(&qword_27F22C630, &qword_27F22C580, &qword_24F990820, MEMORY[0x277D7EB80]);
      sub_24F924E28();

      sub_24E601704(v53, &qword_27F22C5D8, &qword_24F990878);
      sub_24E601704(v23, &qword_27F22C5E0, &unk_24F990880);
      return sub_24E601704(v123, &qword_27F227140, &qword_24F97DA70);
    }

LABEL_10:
    type metadata accessor for DestinationViewFactory.DestinationError(0);
    sub_24EC69504();
    swift_allocError();
    sub_24EC6A254(v33, v65, type metadata accessor for FlowAction.Destination);
    v66 = v110;
    sub_24F921A28();
    v67 = v113;
    v68 = v136;
    (*(v113 + 16))(v134, v66, v136);
    swift_storeEnumTagMultiPayload();
    sub_24EC6955C();
    sub_24E602068(&qword_27F22C630, &qword_27F22C580, &qword_24F990820, MEMORY[0x277D7EB80]);
    sub_24F924E28();
    (*(v67 + 8))(v66, v68);
    v69 = type metadata accessor for FlowAction.Destination;
    v70 = v32;
    return sub_24EC6AEB8(v70, v69);
  }

  if (EnumCaseMultiPayload != 13)
  {
    v55 = v131;
    if (EnumCaseMultiPayload == 23)
    {
      v56 = *v32;
      v121 = *(v32 + 1);
      v57 = v121;
      v58 = v32[16];
      type metadata accessor for ArtworkLoader();
      sub_24F928FD8();
      v125 = v56;

      sub_24F92A758();
      v119 = v146;
      *&v146 = v56;
      *(&v146 + 1) = v57;
      *&v147 = v58;
      *(&v147 + 1) = v55;
      *&v148 = v119;
      v59 = sub_24E7DD0B4();

      v60 = v109;
      sub_24F926628();
      v61 = v112;
      v62 = v124;
      (*(v112 + 16))(v120, v60, v124);
      swift_storeEnumTagMultiPayload();
      *&v146 = &type metadata for ShareSheetView;
      *(&v146 + 1) = v59;
      swift_getOpaqueTypeConformance2();
      sub_24EC697D8();
      v63 = v123;
      sub_24F924E28();
      sub_24E60169C(v63, v128, &qword_27F22C5A0, &qword_24F990840);
      swift_storeEnumTagMultiPayload();
      sub_24EC695E8();
      sub_24EC69720();
      v64 = v130;
      sub_24F924E28();
      sub_24E601704(v63, &qword_27F22C5A0, &qword_24F990840);
      sub_24E60169C(v64, v134, &qword_27F22C5D8, &qword_24F990878);
      swift_storeEnumTagMultiPayload();
      sub_24EC6955C();
      sub_24E602068(&qword_27F22C630, &qword_27F22C580, &qword_24F990820, MEMORY[0x277D7EB80]);
      sub_24F924E28();

      sub_24E601704(v64, &qword_27F22C5D8, &qword_24F990878);
      return (*(v61 + 8))(v60, v62);
    }

    goto LABEL_10;
  }

  v84 = *(v32 + 2);
  v147 = *(v32 + 1);
  v148 = v84;
  v146 = *v32;
  v85 = *(&v84 + 1);
  KeyPath = swift_getKeyPath();
  v141 = v131;
  v142 = v85;
  v143 = KeyPath;
  v144 = 0;
  v145 = 0;
  v87 = sub_24E9D4174();
  v88 = v105;
  sub_24F925F48();

  v141 = &type metadata for MarketingItemView;
  v142 = v87;
  swift_getOpaqueTypeConformance2();
  v89 = v114;
  v90 = v107;
  sub_24F926628();
  (*(v106 + 8))(v88, v90);
  v91 = sub_24F924058();
  LOBYTE(v85) = sub_24F925808();
  v92 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C628, &unk_24F990890) + 36);
  *v92 = v91;
  *(v92 + 8) = v85;
  if (qword_27F211278 != -1)
  {
    swift_once();
  }

  v93 = qword_27F2431D0;
  v94 = swift_getKeyPath();
  v141 = v93;

  v95 = sub_24F9238D8();
  v96 = (v89 + *(v122 + 36));
  *v96 = v94;
  v96[1] = v95;
  sub_24E60169C(v89, v120, &qword_27F22C590, &qword_24F990830);
  swift_storeEnumTagMultiPayload();
  v97 = sub_24E7DD0B4();
  v141 = &type metadata for ShareSheetView;
  v142 = v97;
  swift_getOpaqueTypeConformance2();
  sub_24EC697D8();
  v98 = v123;
  sub_24F924E28();
  sub_24E60169C(v98, v128, &qword_27F22C5A0, &qword_24F990840);
  swift_storeEnumTagMultiPayload();
  sub_24EC695E8();
  sub_24EC69720();
  v99 = v130;
  sub_24F924E28();
  sub_24E601704(v98, &qword_27F22C5A0, &qword_24F990840);
  sub_24E60169C(v99, v134, &qword_27F22C5D8, &qword_24F990878);
  swift_storeEnumTagMultiPayload();
  sub_24EC6955C();
  sub_24E602068(&qword_27F22C630, &qword_27F22C580, &qword_24F990820, MEMORY[0x277D7EB80]);
  sub_24F924E28();
  sub_24E601704(v99, &qword_27F22C5D8, &qword_24F990878);
  sub_24E601704(v89, &qword_27F22C590, &qword_24F990830);
  return sub_24EC6A19C(&v146);
}

uint64_t type metadata accessor for DestinationViewFactory.DestinationError(uint64_t a1)
{
  result = qword_27F22C648;
  if (!qword_27F22C648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EC69504()
{
  result = qword_27F22C5E8;
  if (!qword_27F22C5E8)
  {
    type metadata accessor for DestinationViewFactory.DestinationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C5E8);
  }

  return result;
}

unint64_t sub_24EC6955C()
{
  result = qword_27F22C5F0;
  if (!qword_27F22C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C5D8, &qword_24F990878);
    sub_24EC695E8();
    sub_24EC69720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C5F0);
  }

  return result;
}

unint64_t sub_24EC695E8()
{
  result = qword_27F22C5F8;
  if (!qword_27F22C5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C5D0, &qword_24F990870);
    sub_24E602068(&qword_27F22C600, &qword_27F22C5E0, &unk_24F990880, &unk_24FA2B6C8);
    sub_24EC696CC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C5F8);
  }

  return result;
}

unint64_t sub_24EC696CC()
{
  result = qword_27F22C608;
  if (!qword_27F22C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C608);
  }

  return result;
}

unint64_t sub_24EC69720()
{
  result = qword_27F22C610;
  if (!qword_27F22C610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C5A0, &qword_24F990840);
    sub_24E7DD0B4();
    swift_getOpaqueTypeConformance2();
    sub_24EC697D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C610);
  }

  return result;
}

unint64_t sub_24EC697D8()
{
  result = qword_27F22C618;
  if (!qword_27F22C618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C590, &qword_24F990830);
    sub_24EC69890();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0, &qword_24F987E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C618);
  }

  return result;
}

unint64_t sub_24EC69890()
{
  result = qword_27F22C620;
  if (!qword_27F22C620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C628, &unk_24F990890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C588, &qword_24F990828);
    sub_24E9D4174();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C620);
  }

  return result;
}

double sub_24EC69984@<D0>(_OWORD *a3@<X8>)
{
  sub_24EC6BAC0();
  sub_24F924868();
  result = *&v5;
  *a3 = v5;
  return result;
}

char *sub_24EC699D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C658, &qword_24F9909F0);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C660, &unk_24F9DDBA0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = type metadata accessor for ClosedGenericPageIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140, &qword_24F97DA70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v16 - 8);
  v52 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  sub_24E60169C(a3, v15, &qword_27F227140, &qword_24F97DA70);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78, &unk_24F96B6B0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v15, 1, v21);
  v50 = v20;
  if (v23 == 1)
  {
    sub_24E601704(v15, &qword_27F227140, &qword_24F97DA70);
    v24 = sub_24F91F4A8();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  }

  else
  {
    sub_24F929168();
    v25 = v9;
    v26 = *(v10 + 20);
    v27 = sub_24F91F4A8();
    v28 = *(v27 - 8);
    v49 = v7;
    v29 = v6;
    v30 = v28;
    v31 = &v12[v26];
    v9 = v25;
    (*(v28 + 16))(v20, v31, v27);
    sub_24EC6AEB8(v12, type metadata accessor for ClosedGenericPageIntent);
    (*(v22 + 8))(v15, v21);
    (*(v30 + 56))(v20, 0, 1, v27);
    v6 = v29;
    v7 = v49;
  }

  type metadata accessor for GenericPageViewModel(0);
  memset(v63, 0, sizeof(v63));
  v64 = 0;
  v32 = swift_allocObject();
  v33 = qword_27F23DBC0;
  v59 = 0;
  v34 = v55;

  v35 = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C668, &unk_24F9909F8);
  sub_24F923058();
  v36 = *(v7 + 32);
  v36(&v32[v33], v9, v6);
  v37 = qword_27F23DBC8;
  v59 = 0;
  sub_24F923058();
  v36(&v32[v37], v9, v6);
  v38 = qword_27F23DBD0;
  v59 = 0;
  v60 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
  v39 = v51;
  sub_24F923058();
  v40 = v54;
  v41 = *(v53 + 32);
  v41(&v32[v38], v39, v54);
  v42 = qword_27F23DBD8;
  v59 = 0;
  v60 = 1;
  sub_24F923058();
  v41(&v32[v42], v39, v40);
  *&v32[qword_27F39E160] = 0;
  *&v32[qword_27F39E168] = 0;
  type metadata accessor for PersonalizationDataProvider();

  sub_24F928EF8();
  v43 = v59;
  v44 = v50;
  v45 = v52;
  sub_24E60169C(v50, v52, &qword_27F228530, &unk_24F93C6E0);
  type metadata accessor for GenericDiffablePagePresenter(0);
  swift_allocObject();

  v46 = GenericDiffablePagePresenter.init(objectGraph:personalizationProvider:sidePackedPage:sidePackedPageRenderMetrics:pageUrl:)(v35, v43, v34, 0, v45);
  sub_24E60169C(v63, &v57, &qword_27F22C670, &unk_24F990A08);
  if (v58)
  {
    sub_24E612E28(&v57, &v59);
  }

  else
  {
    v61 = &type metadata for EditorialPageGridProvider;
    v62 = &off_2861EDD58;
  }

  v47 = sub_24EC6A8B4(v46, &v59, v35, v32);

  sub_24E601704(v63, &qword_27F22C670, &unk_24F990A08);
  sub_24E601704(v44, &qword_27F228530, &unk_24F93C6E0);
  return v47;
}

char *sub_24EC6A0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticlePageIntent(0);
  (*(v5 + 16))(v7, a1 + *(v8 + 20), v4);

  return sub_24EC6B550(v7, a2);
}

uint64_t sub_24EC6A1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticlePageIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC6A254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC6A2BC()
{
  v1 = (type metadata accessor for ArticlePageIntent(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = v1[7];
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);

  return swift_deallocObject();
}

char *sub_24EC6A3B8()
{
  v1 = *(type metadata accessor for ArticlePageIntent(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EC6A0A8(v0 + v2, v3);
}

uint64_t sub_24EC6A44C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140, &qword_24F97DA70) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78, &unk_24F96B6B0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

char *sub_24EC6A580()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140, &qword_24F97DA70) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_24EC699D8(v2, v3, v4);
}

uint64_t sub_24EC6A5F8()
{

  return swift_deallocObject();
}

unint64_t sub_24EC6A66C()
{
  result = qword_27F22C638;
  if (!qword_27F22C638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C640, &qword_24F990948);
    sub_24EC6955C();
    sub_24E602068(&qword_27F22C630, &qword_27F22C580, &qword_24F990820, MEMORY[0x277D7EB80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C638);
  }

  return result;
}

uint64_t sub_24EC6A724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction.Destination(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EC6A790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowAction.Destination(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_24EC6A80C(uint64_t a1)
{
  result = type metadata accessor for FlowAction.Destination(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

char *sub_24EC6A8B4(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v46 = a3;
  v41 = a1;
  v42 = a2;
  v47 = sub_24F928188();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C678, &qword_24F990A18);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v38 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680, &unk_24F990A20);
  v10 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v50[3] = &type metadata for GenericPageGridMapper;
  v50[4] = &protocol witness table for GenericPageGridMapper;
  v19 = qword_27F239B60;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  sub_24E60169C(v18, v15, &qword_27F22C688, &qword_24F9CADD0);
  v22 = v41;
  v21 = v42;
  sub_24F923058();
  sub_24E601704(v18, &qword_27F22C688, &qword_24F9CADD0);
  (*(v10 + 32))(&a4[v19], v12, v38);
  v23 = *(*a4 + 168);
  v48 = 0;
  v49 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C690, &qword_24F990A38);
  sub_24F923058();
  (*(v39 + 32))(&a4[v23], v9, v40);
  v24 = &a4[*(*a4 + 176)];
  *(v24 + 25) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &a4[*(*a4 + 184)];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&a4[*(*a4 + 200)] = 0;
  *(a4 + 2) = v22;
  sub_24E615E00(v21, (a4 + 24));
  sub_24E615E00(v50, (a4 + 64));
  v26 = qword_27F2110D0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_24F2DAE78();
  v28 = qword_27F39B498;
  swift_beginAccess();
  v29 = sub_24F929158();
  v30 = *(v29 - 8);
  v31 = v22 + v28;
  v32 = v43;
  (*(v30 + 16))(v43, v31, v29);
  (*(v30 + 56))(v32, 0, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90, &unk_24F990A40);
  sub_24F928FD8();
  sub_24F92A758();
  v33 = objc_allocWithZone(type metadata accessor for VideoPlaybackCoordinator(0));
  v34 = sub_24EEC35E0(v27 & 1, v32, &v48);
  *&a4[*(*a4 + 192)] = v34;
  v48 = v34;
  v35 = v44;
  sub_24F928178();
  v36 = sub_24F928F88();
  (*(v45 + 8))(v35, v47);
  *(a4 + 13) = v36;
  sub_24F11A1F0();
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return a4;
}

uint64_t sub_24EC6AEB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_24EC6AF18(uint64_t a1, uint64_t a2, char *a3)
{
  v43 = a2;
  v39 = a1;
  v44 = sub_24F928188();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v36 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6A8, &unk_24F9F3880);
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = &v36 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680, &unk_24F990A20);
  v9 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v48[3] = &type metadata for GenericPageGridMapper;
  v48[4] = &protocol witness table for GenericPageGridMapper;
  v47[3] = &type metadata for ArticlePageGridProvider;
  v47[4] = &off_2861F2918;
  v18 = qword_27F239B60;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_24E60169C(v17, v14, &qword_27F22C688, &qword_24F9CADD0);
  v20 = v39;
  sub_24F923058();
  sub_24E601704(v17, &qword_27F22C688, &qword_24F9CADD0);
  (*(v9 + 32))(&a3[v18], v11, v36);
  v21 = *(*a3 + 168);
  v45 = 0;
  v46 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6B0, &unk_24F990A70);
  sub_24F923058();
  (*(v37 + 32))(&a3[v21], v8, v38);
  v22 = &a3[*(*a3 + 176)];
  *(v22 + 25) = 0u;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &a3[*(*a3 + 184)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&a3[*(*a3 + 200)] = 0;
  *(a3 + 2) = v20;
  sub_24E615E00(v47, (a3 + 24));
  sub_24E615E00(v48, (a3 + 64));
  v24 = qword_27F2110D0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_24F2DAE78();
  v26 = qword_27F39B498;
  swift_beginAccess();
  v27 = sub_24F929158();
  v28 = *(v27 - 8);
  v29 = v20 + v26;
  v30 = v40;
  (*(v28 + 16))(v40, v29, v27);
  (*(v28 + 56))(v30, 0, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90, &unk_24F990A40);
  sub_24F928FD8();
  sub_24F92A758();
  v31 = objc_allocWithZone(type metadata accessor for VideoPlaybackCoordinator(0));
  v32 = sub_24EEC35E0(v25 & 1, v30, &v45);
  *&a3[*(*a3 + 192)] = v32;
  v45 = v32;
  v33 = v41;
  sub_24F928178();
  v34 = sub_24F928F88();
  (*(v42 + 8))(v33, v44);
  *(a3 + 13) = v34;
  sub_24F11A658();
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return a3;
}

char *sub_24EC6B550(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C698, &unk_24F990A50);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = sub_24F9288E8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  v17 = v44;
  v33 = sub_24F929EB8();
  v18 = qword_27F2108F0;
  v42 = a2;

  if (v18 != -1)
  {
    swift_once();
  }

  (*(v14 + 104))(v16, *MEMORY[0x277D21C38], v13);
  v35 = v17;
  sub_24F92A368();
  (*(v14 + 8))(v16, v13);
  sub_24F92A408();
  (*(v10 + 8))(v12, v9);
  v19 = sub_24F929EA8();
  v20 = sub_24F91F4A8();
  v21 = *(v20 - 8);
  v22 = v34;
  v23 = v43;
  (*(v21 + 16))(v34, v43, v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  type metadata accessor for ArticleDiffablePagePresenter(0);
  swift_allocObject();
  v24 = v42;
  v25 = ArticleDiffablePagePresenter.init(objectGraph:impressionsTracker:pageUrl:sidePackedPage:)(v42, v19, MEMORY[0x277D221C0], v22, 0);
  type metadata accessor for ArticlePageViewModel(0);
  v26 = swift_allocObject();
  v27 = qword_27F2429E0;
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6A0, &unk_24F990A60);
  v28 = v36;
  sub_24F923058();
  (*(v37 + 32))(&v26[v27], v28, v38);
  v29 = qword_27F2429E8;
  LOBYTE(v44) = 0;
  v30 = v39;
  sub_24F923058();
  (*(v40 + 32))(&v26[v29], v30, v41);
  v31 = sub_24EC6AF18(v25, v24, v26);

  (*(v21 + 8))(v23, v20);
  return v31;
}

unint64_t sub_24EC6BAC0()
{
  result = qword_27F22C6B8;
  if (!qword_27F22C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C6B8);
  }

  return result;
}

uint64_t sub_24EC6BB2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for Page(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[10]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_24EC6BD00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for Page(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[10]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[9];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TwoColumnPageShelvesContentView(uint64_t a1)
{
  result = qword_27F22C6C0;
  if (!qword_27F22C6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC6BF08(uint64_t a1)
{
  sub_24EC6C05C(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
  if (v1 <= 0x3F)
  {
    sub_24EC6C05C(319, &qword_27F222B10, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      sub_24E684120(319);
      if (v3 <= 0x3F)
      {
        sub_24E746BEC(319, &qword_27F215590, MEMORY[0x277D85048]);
        if (v4 <= 0x3F)
        {
          sub_24E746BEC(319, &qword_27F254DF0, MEMORY[0x277CDF310]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Page(319);
            if (v6 <= 0x3F)
            {
              sub_24F928FD8();
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

void sub_24EC6C05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EC6C0CC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24E60169C(v2, &v14 - v9, &qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24EC6C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C770, &qword_24F990BA0);
  MEMORY[0x28223BE20](v40);
  v42 = v37 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0, &qword_24F95E4A0);
  MEMORY[0x28223BE20](v39);
  v41 = type metadata accessor for PaginatedShelfIntentView(0);
  MEMORY[0x28223BE20](v41);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248, &qword_24F984910);
  MEMORY[0x28223BE20](v15);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v37 - v19;
  sub_24E615E00(a1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213818, &unk_24F974CF0);
  if (swift_dynamicCast())
  {
    v48[0] = v44;
    v48[1] = v45;
    v49 = v46;
    sub_24EB3BA60(v48, v47);
    if (a3 == 7)
    {
      v21 = a4 + *(type metadata accessor for TwoColumnPageShelvesContentView(0) + 36);
      a3 = *(v21 + *(type metadata accessor for Page(0) + 84));
    }

    v22 = *(a4 + *(type metadata accessor for TwoColumnPageShelvesContentView(0) + 40));
    sub_24EB3BA60(v47, v11);
    v11[40] = a3;
    *(v11 + 6) = v38;
    *(v11 + 7) = sub_24EC7017C;
    *(v11 + 8) = v22;
    v11[72] = 0;
    sub_24EB3BA60(v47, &v44);
    type metadata accessor for GSKShelf(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
    sub_24E7C5EC0();
    sub_24F9217C8();
    sub_24F926F28();
    sub_24EB3BE00(v47);
    sub_24EC70184(v11, v14, type metadata accessor for PaginatedShelfIntentView);
    sub_24EC701EC(v14, v42, type metadata accessor for PaginatedShelfIntentView);
    swift_storeEnumTagMultiPayload();
    sub_24EC720C8(&qword_27F22C758, type metadata accessor for PaginatedShelfIntentView, &unk_24FA200F8);
    sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
    sub_24F924E28();
    sub_24EC70254(v14, v23);
    return sub_24EB3BE00(v48);
  }

  else
  {
    v37[1] = a5;
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_24E601704(&v44, &qword_27F229260, &qword_24F984930);
    sub_24E615E00(a1, v48);
    if (a3 == 7)
    {
      v25 = a4 + *(type metadata accessor for TwoColumnPageShelvesContentView(0) + 36);
      a3 = *(v25 + *(type metadata accessor for Page(0) + 84));
    }

    type metadata accessor for TwoColumnPageShelvesContentView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720, &qword_24F940B20);
    sub_24F928F28();
    sub_24E615E00(v48, &v44);
    sub_24E615E00(v47, v43);
    v26 = v15[17];
    *&v17[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8, &qword_24F984960);
    swift_storeEnumTagMultiPayload();
    v17[v15[13]] = a3;
    v27 = __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    v28 = MEMORY[0x28223BE20](v27);
    (*(v30 + 16))(v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
    sub_24F928D38();
    v31 = &v17[v15[14]];
    *v31 = v38;
    v31[8] = 0;
    sub_24E615E00(v43, &v17[v15[15]]);
    v32 = &v17[v15[16]];
    *v32 = sub_24F78343C;
    v32[1] = 0;
    v33 = __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    v34 = MEMORY[0x28223BE20](v33);
    (*(v36 + 16))(v37 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
    type metadata accessor for GSKShelf(0);
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
    sub_24F9217C8();
    sub_24F926F28();
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(&v44);
    sub_24EC7010C(v17, v20);
    sub_24E60169C(v20, v42, &qword_27F229248, &qword_24F984910);
    swift_storeEnumTagMultiPayload();
    sub_24EC720C8(&qword_27F22C758, type metadata accessor for PaginatedShelfIntentView, &unk_24FA200F8);
    sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
    sub_24F924E28();
    return sub_24E601704(v20, &qword_27F229248, &qword_24F984910);
  }
}

uint64_t sub_24EC6CB40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6D0, &qword_24F990B00);
  v72 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v70 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6D8, &qword_24F990B08);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v64 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6E0, &qword_24F990B10);
  MEMORY[0x28223BE20](v76);
  v75 = (&v64 - v6);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6E8, &qword_24F990B18);
  v71 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v69 = &v64 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6F0, &qword_24F990B20);
  MEMORY[0x28223BE20](v77);
  v79 = &v64 - v8;
  v9 = type metadata accessor for TwoColumnPageShelvesContentView(0);
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6F8, &qword_24F990B28);
  v68 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v67 = &v64 - v12;
  v13 = sub_24F923E98();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v64 - v18;
  sub_24F769764((&v64 - v18));
  sub_24EC6C0CC(v16);
  v20 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v14 + 8))(v16, v13);
  sub_24EC6D73C(v19, v20 & 1, &v89);
  sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
  v21 = v89;
  v73 = *(&v89 + 1);
  v74 = v89;
  if (v90)
  {
    v22 = sub_24F924988();
    v23 = v75;
    *v75 = v22;
    v23[1] = 0;
    *(v23 + 16) = 0;
    v24 = v23;
    v25 = v66;
    sub_24EC6ECB0(v2, v21, *(&v21 + 1), v66);
    sub_24F927618();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C700, &qword_24F990B30);
    v26 = v24 + *(v68 + 44);
    sub_24F9242E8();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C708, &qword_24F990B38);
    v28 = *(v27 - 8);
    v29 = *(v28 + 32);
    v29(v26, v25, v27);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C710, &qword_24F990B40);
    v29(v26 + *(v67 + 12), &v25[*(v67 + 12)], v27);
    v30 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C718, &qword_24F990B48) + 36));
    v31 = v94;
    v30[4] = v93;
    v30[5] = v31;
    v30[6] = v95;
    v32 = v90;
    *v30 = v89;
    v30[1] = v32;
    v33 = v92;
    v30[2] = v91;
    v30[3] = v33;
    v34 = sub_24E602068(&qword_27F22C720, &qword_27F22C6E0, &qword_24F990B10, MEMORY[0x277CE1138]);
    v35 = v70;
    v36 = v76;
    sub_24F9262E8();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C728, &qword_24F990B50);
    v83 = v36;
    v84 = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = sub_24E8F20E4();
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C730, &unk_24F990B58);
    v40 = sub_24EC6FE14();
    v41 = v81;
    v83 = v81;
    v84 = &type metadata for IsDebugFocusOverlayEnabled;
    v85 = v39;
    v86 = OpaqueTypeConformance2;
    v87 = v38;
    v88 = v40;
    v76 = MEMORY[0x277CE0E68];
    v63 = swift_getOpaqueTypeConformance2();
    v42 = v69;
    v43 = v66;
    sub_24F926B08();
    (*(v72 + 8))(v35, v41);
    v44 = v75 + *(v68 + 44);
    v45 = *(v28 + 8);
    v45(v44, v27);
    v45(&v44[*(v67 + 12)], v27);
    v46 = v71;
    v47 = v80;
    (*(v71 + 16))(v79, v42, v80);
    swift_storeEnumTagMultiPayload();
    sub_24EC6FF3C();
    v83 = v41;
    v84 = &type metadata for IsDebugFocusOverlayEnabled;
    v85 = v43;
    v86 = OpaqueTypeConformance2;
    v87 = v38;
    v88 = v63;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24EC700A8(v74, v73, 1);
    return (*(v46 + 8))(v42, v47);
  }

  else
  {
    swift_getKeyPath();
    sub_24EC701EC(v2, &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TwoColumnPageShelvesContentView);
    v49 = (*(v65 + 80) + 17) & ~*(v65 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = BYTE8(v21);
    sub_24EC70184(v11, v50 + v49, type metadata accessor for TwoColumnPageShelvesContentView);
    v51 = swift_allocObject();
    *(v51 + 16) = sub_24EC700F8;
    *(v51 + 24) = v50;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C760, &unk_24FA07370);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C750, &unk_24F990B68);
    sub_24E602068(&qword_27F22C768, &qword_27F22C760, &unk_24FA07370, MEMORY[0x277D83980]);
    sub_24EC6FFC0();
    v52 = v67;
    sub_24F927228();
    v53 = v68;
    v54 = v78;
    (*(v68 + 16))(v79, v52, v78);
    swift_storeEnumTagMultiPayload();
    v77 = sub_24EC6FF3C();
    v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C728, &qword_24F990B50);
    v56 = sub_24E602068(&qword_27F22C720, &qword_27F22C6E0, &qword_24F990B10, MEMORY[0x277CE1138]);
    *&v89 = v76;
    *(&v89 + 1) = v56;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = sub_24E8F20E4();
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C730, &unk_24F990B58);
    v60 = sub_24EC6FE14();
    v61 = v81;
    *&v89 = v81;
    *(&v89 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
    *&v90 = v59;
    *(&v90 + 1) = v57;
    *&v91 = v58;
    *(&v91 + 1) = v60;
    v62 = swift_getOpaqueTypeConformance2();
    *&v89 = v61;
    *(&v89 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
    *&v90 = v55;
    *(&v90 + 1) = v57;
    *&v91 = v58;
    *(&v91 + 1) = v62;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24EC700A8(v74, v73, 0);
    return (*(v53 + 8))(v52, v54);
  }
}

uint64_t sub_24EC6D73C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v142 = a2;
  v147 = a1;
  v151 = a3;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68, &unk_24F95E420);
  v144 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v5 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v154 = &v137 - v7;
  MEMORY[0x28223BE20](v8);
  v140 = &v137 - v9;
  v146 = sub_24F925218();
  v150 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v141 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v145);
  v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v137 - v14;
  MEMORY[0x28223BE20](v16);
  v139 = &v137 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v18 - 8);
  v143 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v137 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v137 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v137 - v27;
  MEMORY[0x28223BE20](v29);
  v137 = &v137 - v30;
  MEMORY[0x28223BE20](v31);
  v138 = &v137 - v32;
  v33 = v3 + *(type metadata accessor for TwoColumnPageShelvesContentView(0) + 36);
  v34 = type metadata accessor for Page(0);
  v35 = v34[17];
  v36 = *(v33 + v34[16]);
  v148 = v34;
  v37 = v34[18];
  v38 = v34[19];
  v39 = *(v33 + v37);
  v40 = *(v33 + v35);
  v149 = v33;
  v41 = *(v33 + v38);
  *&v162 = v36;
  v153 = v36;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v152 = v39;
  sub_24EA0B788(v39);
  v42 = v162;
  *&v162 = v40;

  sub_24EA0B788(v43);
  v44 = v162;
  v45 = *(v162 + 16);
  if (!*(v42 + 16))
  {
    if (!v45)
    {

      result = sub_24EC6FA8C(*(v149 + v148[12]));
      v53 = result;
LABEL_34:
      v63 = 0;
      v64 = 7;
      goto LABEL_35;
    }

    v52 = v15;

    v53 = sub_24EC6FA8C(v44);

    v55 = *(v149 + v148[14]);
    if (v55 == 2 || (v55 & 1) == 0)
    {
      goto LABEL_34;
    }

    v56 = v150;
    v57 = v146;
    (*(v150 + 104))(v28, *MEMORY[0x277CE0558], v146);
    (*(v56 + 56))(v28, 0, 1, v57);
    v58 = *(v145 + 48);
    sub_24E60169C(v147, v52, &qword_27F215598, &qword_24F945EF0);
    sub_24E60169C(v28, v52 + v58, &qword_27F215598, &qword_24F945EF0);
    v59 = *(v56 + 48);
    if (v59(v52, 1, v57) == 1)
    {
LABEL_15:
      sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
      if (v59(v52 + v58, 1, v57) == 1)
      {
        result = sub_24E601704(v52, &qword_27F215598, &qword_24F945EF0);
        goto LABEL_17;
      }

LABEL_44:
      result = sub_24E601704(v52, &unk_27F254F20, &qword_24F940790);
      goto LABEL_34;
    }

    v60 = v25;
    sub_24E60169C(v52, v25, &qword_27F215598, &qword_24F945EF0);
    if (v59(v52 + v58, 1, v57) == 1)
    {
LABEL_43:
      sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
      (*(v150 + 8))(v25, v57);
      goto LABEL_44;
    }

    v126 = v28;
    v127 = v150;
    v128 = v52 + v58;
    v129 = v141;
    (*(v150 + 32))(v141, v128, v57);
    sub_24EC720C8(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v130 = sub_24F92AFF8();
    v131 = *(v127 + 8);
    v131(v129, v57);
    sub_24E601704(v126, &qword_27F215598, &qword_24F945EF0);
    v131(v60, v57);
    result = sub_24E601704(v52, &qword_27F215598, &qword_24F945EF0);
    if ((v130 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_17:
    v63 = 0;
    v64 = *(v149 + v148[15]);
LABEL_35:
    v86 = v151;
    *v151 = v53;
    v86[1] = v64;
    *(v86 + 16) = v63;
    return result;
  }

  if (!v45)
  {

    v53 = sub_24EC6FA8C(v42);

    v61 = *(v149 + v148[14]);
    if (v61 == 2 || (v61 & 1) == 0)
    {
      goto LABEL_34;
    }

    v62 = v150;
    v28 = v138;
    v57 = v146;
    (*(v150 + 104))(v138, *MEMORY[0x277CE0558], v146);
    (*(v62 + 56))(v28, 0, 1, v57);
    v58 = *(v145 + 48);
    v52 = v139;
    sub_24E60169C(v147, v139, &qword_27F215598, &qword_24F945EF0);
    sub_24E60169C(v28, v52 + v58, &qword_27F215598, &qword_24F945EF0);
    v59 = *(v62 + 48);
    if (v59(v52, 1, v57) == 1)
    {
      goto LABEL_15;
    }

    v25 = v137;
    sub_24E60169C(v52, v137, &qword_27F215598, &qword_24F945EF0);
    if (v59(v52 + v58, 1, v57) == 1)
    {
      goto LABEL_43;
    }

    v132 = v150;
    v133 = v52 + v58;
    v134 = v141;
    (*(v150 + 32))(v141, v133, v57);
    sub_24EC720C8(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v135 = sub_24F92AFF8();
    v136 = *(v132 + 8);
    v136(v134, v57);
    sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
    v136(v25, v57);
    result = sub_24E601704(v52, &qword_27F215598, &qword_24F945EF0);
    if ((v135 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_17;
  }

  v149 = v42;
  v148 = v162;
  v46 = v150;
  v47 = v146;
  (*(v150 + 104))(v22, *MEMORY[0x277CE0558], v146);
  (*(v46 + 56))(v22, 0, 1, v47);
  v48 = *(v145 + 48);
  sub_24E60169C(v147, v12, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v22, &v12[v48], &qword_27F215598, &qword_24F945EF0);
  v49 = *(v46 + 48);
  if (v49(v12, 1, v47) == 1)
  {
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    if (v49(&v12[v48], 1, v47) == 1)
    {
      sub_24E601704(v12, &qword_27F215598, &qword_24F945EF0);
      v50 = v155;
      v51 = v152;
      goto LABEL_24;
    }

LABEL_22:
    v50 = v155;
    v66 = v153;
    v51 = v152;
    sub_24E601704(v12, &unk_27F254F20, &qword_24F940790);
LABEL_26:
    v167 = v66;
    sub_24EA0B788(v40);
    sub_24EA0B788(v51);
    sub_24EA0B788(v41);
    *&v162 = v167;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70, &qword_24F990C40);
    sub_24E602068(&qword_27F21ED78, &qword_27F21ED70, &qword_24F990C40, MEMORY[0x277D83980]);
    sub_24F921BA8();
    sub_24E602068(&qword_27F22C7A8, &qword_27F21ED68, &unk_24F95E420, MEMORY[0x277D7EC40]);
    v71 = sub_24F92BBC8();
    if (!v71)
    {
      (*(v144 + 8))(v5, v50);
      v73 = MEMORY[0x277D84F90];
LABEL_33:
      v53 = sub_24E8E8AB4(v73);

      goto LABEL_34;
    }

    v72 = v71;
    v166 = MEMORY[0x277D84F90];
    sub_24F4588A0(0, v71 & ~(v71 >> 63), 0);
    v73 = v166;
    result = sub_24F92BB88();
    if ((v72 & 0x8000000000000000) == 0)
    {
      do
      {
        v74 = sub_24F92BC88();
        v159 = *v75;
        sub_24E615E00((v75 + 1), v160);
        v74(&v162, 0);
        v76 = v50;
        v77 = v159;
        sub_24E615E00(v160, &v162);
        __swift_project_boxed_opaque_existential_1(v160, v161);
        swift_getDynamicType();
        v157 = sub_24F92D1E8();
        v158 = v78;
        v156 = v77;
        v79 = sub_24F92CD88();
        MEMORY[0x253050C20](v79);

        *(&v164 + 1) = v157;
        *&v165 = v158;
        *(&v165 + 1) = v77;
        __swift_destroy_boxed_opaque_existential_1(v160);
        v166 = v73;
        v81 = *(v73 + 16);
        v80 = *(v73 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_24F4588A0((v80 > 1), v81 + 1, 1);
          v73 = v166;
        }

        *(v73 + 16) = v81 + 1;
        v82 = (v73 + (v81 << 6));
        v83 = v162;
        v84 = v163;
        v85 = v165;
        v82[4] = v164;
        v82[5] = v85;
        v82[2] = v83;
        v82[3] = v84;
        sub_24F92BC18();
        --v72;
        v50 = v76;
      }

      while (v72);
      (*(v144 + 8))(v5, v76);
      goto LABEL_33;
    }

    goto LABEL_60;
  }

  v65 = v143;
  sub_24E60169C(v12, v143, &qword_27F215598, &qword_24F945EF0);
  if (v49(&v12[v48], 1, v47) == 1)
  {

    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    (*(v150 + 8))(v65, v47);
    goto LABEL_22;
  }

  v67 = v150;
  v68 = v141;
  (*(v150 + 32))(v141, &v12[v48], v47);
  sub_24EC720C8(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v69 = sub_24F92AFF8();
  v70 = *(v67 + 8);
  v70(v68, v47);
  sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
  v70(v143, v47);
  sub_24E601704(v12, &qword_27F215598, &qword_24F945EF0);
  v50 = v155;
  v51 = v152;
  if ((v69 & 1) == 0)
  {
LABEL_25:

    v66 = v153;
    goto LABEL_26;
  }

LABEL_24:
  if (v142)
  {
    goto LABEL_25;
  }

  *&v162 = v149;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70, &qword_24F990C40);
  v88 = sub_24E602068(&qword_27F21ED78, &qword_27F21ED70, &qword_24F990C40, MEMORY[0x277D83980]);
  v89 = v140;
  sub_24F921BA8();
  sub_24E602068(&qword_27F22C7A8, &qword_27F21ED68, &unk_24F95E420, MEMORY[0x277D7EC40]);
  v90 = sub_24F92BBC8();
  if (v90)
  {
    v91 = v90;
    v152 = v88;
    v153 = v87;
    v166 = MEMORY[0x277D84F90];
    sub_24F4588A0(0, v90 & ~(v90 >> 63), 0);
    v92 = v166;
    result = sub_24F92BB88();
    if (v91 < 0)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    do
    {
      v93 = sub_24F92BC88();
      v159 = *v94;
      sub_24E615E00((v94 + 1), v160);
      v93(&v162, 0);
      v95 = v50;
      v96 = v159;
      sub_24E615E00(v160, &v162);
      __swift_project_boxed_opaque_existential_1(v160, v161);
      swift_getDynamicType();
      v157 = sub_24F92D1E8();
      v158 = v97;
      v156 = v96;
      v98 = sub_24F92CD88();
      MEMORY[0x253050C20](v98);

      *(&v164 + 1) = v157;
      *&v165 = v158;
      *(&v165 + 1) = v96;
      __swift_destroy_boxed_opaque_existential_1(v160);
      v166 = v92;
      v100 = *(v92 + 16);
      v99 = *(v92 + 24);
      if (v100 >= v99 >> 1)
      {
        sub_24F4588A0((v99 > 1), v100 + 1, 1);
        v92 = v166;
      }

      *(v92 + 16) = v100 + 1;
      v101 = (v92 + (v100 << 6));
      v102 = v162;
      v103 = v163;
      v104 = v165;
      v101[4] = v164;
      v101[5] = v104;
      v101[2] = v102;
      v101[3] = v103;
      sub_24F92BC18();
      --v91;
      v50 = v95;
    }

    while (v91);
    v105 = *(v144 + 8);
    v105(v89, v95);
  }

  else
  {
    v105 = *(v144 + 8);
    v105(v89, v50);
    v92 = MEMORY[0x277D84F90];
  }

  v106 = *(v92 + 16);
  *&v162 = v148;
  v107 = v154;
  sub_24F921BA8();
  v108 = sub_24F92BBC8();
  if (!v108)
  {
    v105(v107, v50);
    v110 = MEMORY[0x277D84F90];
LABEL_54:
    v53 = sub_24E8E8AB4(v92);

    v64 = sub_24E8E8AB4(v110);

    v63 = 1;
    goto LABEL_35;
  }

  v109 = v108;
  v153 = v105;
  v166 = MEMORY[0x277D84F90];
  sub_24F4588A0(0, v108 & ~(v108 >> 63), 0);
  v110 = v166;
  result = sub_24F92BB88();
  if ((v109 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v111 = sub_24F92BC88();
      v159 = *v112;
      sub_24E615E00((v112 + 1), v160);
      v111(&v162, 0);
      v113 = v159;
      sub_24E615E00(v160, &v162);
      __swift_project_boxed_opaque_existential_1(v160, v161);
      swift_getDynamicType();
      result = sub_24F92D1E8();
      v157 = result;
      v158 = v114;
      v115 = __OFADD__(v113, v106);
      v116 = v113 + v106;
      if (v115)
      {
        break;
      }

      v156 = v116;
      v117 = sub_24F92CD88();
      MEMORY[0x253050C20](v117);

      *(&v164 + 1) = v157;
      *&v165 = v158;
      *(&v165 + 1) = v116;
      __swift_destroy_boxed_opaque_existential_1(v160);
      v166 = v110;
      v119 = *(v110 + 16);
      v118 = *(v110 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_24F4588A0((v118 > 1), v119 + 1, 1);
        v110 = v166;
      }

      *(v110 + 16) = v119 + 1;
      v120 = (v110 + (v119 << 6));
      v121 = v162;
      v122 = v163;
      v123 = v165;
      v120[4] = v164;
      v120[5] = v123;
      v120[2] = v121;
      v120[3] = v122;
      v124 = v154;
      v125 = v155;
      sub_24F92BC18();
      if (!--v109)
      {
        v153(v124, v125);
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_24EC6ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v30 = a3;
  v35 = a4;
  v6 = sub_24F925068();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C708, &qword_24F990B38);
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v33 = v28 - v10;
  MEMORY[0x28223BE20](v11);
  v32 = v28 - v12;
  MEMORY[0x28223BE20](v13);
  v16 = v28 - v15;
  if (qword_27F210D60 != -1)
  {
    v14 = swift_once();
  }

  v29 = v28;
  v28[1] = qword_27F39D300;
  MEMORY[0x28223BE20](v14);
  v28[-2] = a1;
  v28[-1] = a2;
  sub_24F924C88();
  v37 = 0;
  sub_24EC720C8(&qword_27F2150C0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_24F92D1D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C778, &qword_24F990BD0);
  sub_24EC702B8();
  v17 = sub_24F9233F8();
  v29 = v28;
  MEMORY[0x28223BE20](v17);
  v18 = v30;
  v28[-2] = a1;
  v28[-1] = v18;
  sub_24F924C88();
  v36 = 0;
  sub_24F92D1D8();
  v19 = v32;
  sub_24F9233F8();
  v20 = v31;
  v21 = *(v31 + 16);
  v22 = v33;
  v21(v33, v16, v7);
  v23 = v34;
  v21(v34, v19, v7);
  v24 = v35;
  v21(v35, v22, v7);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C710, &qword_24F990B40);
  v21(&v24[*(v25 + 48)], v23, v7);
  v26 = *(v20 + 8);
  v26(v19, v7);
  v26(v16, v7);
  v26(v23, v7);
  return (v26)(v22, v7);
}

uint64_t sub_24EC6F0E4@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924848();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TwoColumnPageShelvesContentView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v49 = a2;
  KeyPath = swift_getKeyPath();
  sub_24EC701EC(a1, &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TwoColumnPageShelvesContentView);
  v12 = (*(v10 + 80) + 17) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 7;
  sub_24EC70184(&KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TwoColumnPageShelvesContentView);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24EC722D8;
  *(v14 + 24) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C760, &unk_24FA07370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C750, &unk_24F990B68);
  sub_24E602068(&qword_27F22C768, &qword_27F22C760, &unk_24FA07370, MEMORY[0x277D83980]);
  sub_24EC6FFC0();
  v48 = a3;
  v15 = v9;
  sub_24F927228();
  v16 = swift_getKeyPath();
  v17 = a1 + *(v9 + 28);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = *v17;
    v20 = v46;
    v21 = v47;
  }

  else
  {

    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v18, 0);
    v20 = v46;
    v21 = v47;
    (*(v46 + 8))(v8, v47);
    v19 = v49;
  }

  v23 = v8;
  v24 = v19 * 0.5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C790, &unk_24F990BD8);
  v26 = v48 + *(v25 + 36);
  *v26 = v16;
  *(v26 + 8) = v24;
  v27 = swift_getKeyPath();
  v28 = a1 + *(v15 + 32);
  v30 = *v28;
  v29 = *(v28 + 8);
  v32 = *(v28 + 16);
  v31 = *(v28 + 24);
  if (*(v28 + 32) == 1)
  {
    v33 = *v28;
  }

  else
  {

    sub_24F92BDC8();
    v34 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v30, v29, v32, v31, 0);
    (*(v20 + 8))(v23, v21);
    v33 = v49;
  }

  v35 = sub_24F925858();
  v36 = sub_24EA91914(v35, v33);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C778, &qword_24F990BD0);
  v44 = (v48 + *(result + 36));
  *v44 = v27;
  *(v44 + 1) = v36;
  v44[2] = v38;
  v44[3] = v40;
  v44[4] = v42;
  return result;
}

uint64_t sub_24EC6F5B8@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924848();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TwoColumnPageShelvesContentView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v49 = a2;
  KeyPath = swift_getKeyPath();
  sub_24EC701EC(a1, &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TwoColumnPageShelvesContentView);
  v12 = (*(v10 + 80) + 17) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 7;
  sub_24EC70184(&KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for TwoColumnPageShelvesContentView);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24EC722D8;
  *(v14 + 24) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C760, &unk_24FA07370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C750, &unk_24F990B68);
  sub_24E602068(&qword_27F22C768, &qword_27F22C760, &unk_24FA07370, MEMORY[0x277D83980]);
  sub_24EC6FFC0();
  v48 = a3;
  v15 = v9;
  sub_24F927228();
  v16 = swift_getKeyPath();
  v17 = a1 + *(v9 + 28);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v19 = *v17;
    v20 = v46;
    v21 = v47;
  }

  else
  {

    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v18, 0);
    v20 = v46;
    v21 = v47;
    (*(v46 + 8))(v8, v47);
    v19 = v49;
  }

  v23 = v8;
  v24 = v19 * 0.5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C790, &unk_24F990BD8);
  v26 = v48 + *(v25 + 36);
  *v26 = v16;
  *(v26 + 8) = v24;
  v27 = swift_getKeyPath();
  v28 = a1 + *(v15 + 32);
  v30 = *v28;
  v29 = *(v28 + 8);
  v32 = *(v28 + 16);
  v31 = *(v28 + 24);
  if (*(v28 + 32) == 1)
  {
    v33 = *v28;
  }

  else
  {

    sub_24F92BDC8();
    v34 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v30, v29, v32, v31, 0);
    (*(v20 + 8))(v23, v21);
    v33 = v49;
  }

  v35 = sub_24F925838();
  v36 = sub_24EA91914(v35, v33);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C778, &qword_24F990BD0);
  v44 = (v48 + *(result + 36));
  *v44 = v27;
  *(v44 + 1) = v36;
  v44[2] = v38;
  v44[3] = v40;
  v44[4] = v42;
  return result;
}

uint64_t sub_24EC6FA8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68, &unk_24F95E420);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - v4;
  *&v26[0] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70, &qword_24F990C40);
  sub_24E602068(&qword_27F21ED78, &qword_27F21ED70, &qword_24F990C40, MEMORY[0x277D83980]);
  sub_24F921BA8();
  sub_24E602068(&qword_27F22C7A8, &qword_27F21ED68, &unk_24F95E420, MEMORY[0x277D7EC40]);
  v6 = sub_24F92BBC8();
  if (!v6)
  {
    (*(v3 + 8))(v5, v2);
    return MEMORY[0x277D84F90];
  }

  v7 = v6;
  v28 = MEMORY[0x277D84F90];
  sub_24F458880(0, v6 & ~(v6 >> 63), 0);
  v8 = v28;
  result = sub_24F92BB88();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v22[0] = v3;
    do
    {
      v10 = sub_24F92BC88();
      v23 = *v11;
      sub_24E615E00((v11 + 1), v24);
      v10(v25, 0);
      v12 = v23;
      sub_24E615E00(v24, v26);
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      swift_getDynamicType();
      v25[0] = sub_24F92D1E8();
      v25[1] = v13;
      v22[1] = v12;
      v14 = sub_24F92CD88();
      MEMORY[0x253050C20](v14);

      sub_24F92C7F8();
      v27 = v12;
      __swift_destroy_boxed_opaque_existential_1(v24);
      v28 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24F458880((v15 > 1), v16 + 1, 1);
        v8 = v28;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 88 * v16;
      v18 = v26[1];
      *(v17 + 32) = v26[0];
      *(v17 + 48) = v18;
      v19 = v26[2];
      v20 = v26[3];
      v21 = v26[4];
      *(v17 + 112) = v27;
      *(v17 + 80) = v20;
      *(v17 + 96) = v21;
      *(v17 + 64) = v19;
      sub_24F92BC18();
      --v7;
    }

    while (v7);
    (*(v22[0] + 8))(v5, v2);
    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_24EC6FE14()
{
  result = qword_27F22C738;
  if (!qword_27F22C738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C730, &unk_24F990B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6E0, &qword_24F990B10);
    sub_24E602068(&qword_27F22C720, &qword_27F22C6E0, &qword_24F990B10, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C738);
  }

  return result;
}

unint64_t sub_24EC6FF3C()
{
  result = qword_27F22C740;
  if (!qword_27F22C740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6F8, &qword_24F990B28);
    sub_24EC6FFC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C740);
  }

  return result;
}

unint64_t sub_24EC6FFC0()
{
  result = qword_27F22C748;
  if (!qword_27F22C748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C750, &unk_24F990B68);
    sub_24EC720C8(&qword_27F22C758, type metadata accessor for PaginatedShelfIntentView, &unk_24FA200F8);
    sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C748);
  }

  return result;
}

uint64_t sub_24EC700A8(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

uint64_t sub_24EC7010C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248, &qword_24F984910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC70184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC701EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC70254(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for PaginatedShelfIntentView(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EC702B8()
{
  result = qword_27F22C780;
  if (!qword_27F22C780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C778, &qword_24F990BD0);
    sub_24EC70370();
    sub_24E602068(&qword_27F22C798, &qword_27F22C7A0, &qword_24F990BE8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C780);
  }

  return result;
}

unint64_t sub_24EC70370()
{
  result = qword_27F22C788;
  if (!qword_27F22C788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C790, &unk_24F990BD8);
    sub_24EC6FF3C();
    sub_24E602068(&qword_27F215A40, &qword_27F215A48, &unk_24F958F00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C788);
  }

  return result;
}

uint64_t sub_24EC70430()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_30()
{
  v1 = type metadata accessor for TwoColumnPageShelvesContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 17) & ~v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923E98();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F9234D8();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F925218();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v3 + v7, 1, v8))
    {
      (*(v9 + 8))(v3 + v7, v8);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v10 = v3 + v1[8];
  sub_24E669FC4(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));
  v11 = v3 + v1[9];
  v12 = sub_24F92A708();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = type metadata accessor for Page(0);

  v14 = v13[6];
  v15 = sub_24F928818();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);

  v16 = v11 + v13[20];
  v17 = type metadata accessor for HeaderPresentation(0);
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {
    v18 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    v19 = *(*(v18 - 1) + 48);
    if (v19(v16, 1, v18))
    {
      goto LABEL_25;
    }

    v117 = v19;

    v20 = v16 + v18[5];
    v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      goto LABEL_14;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v96 = sub_24F9289E8();
          (*(*(v96 - 8) + 8))(v20, v96);
          goto LABEL_14;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_14:
          v22 = v16 + v18[7];
          v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          v19 = v117;
          if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v25 = sub_24F928388();
              (*(*(v25 - 8) + 8))(v22, v25);

              v19 = v117;
            }
          }

          v26 = (v16 + v18[10]);
          if (v26[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v26);
          }

LABEL_25:
          v27 = v16 + v17[5];
          if (v19(v27, 1, v18))
          {
            goto LABEL_42;
          }

          v118 = v19;

          v28 = v27 + v18[5];
          v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
          if ((*(*(v29 - 8) + 48))(v28, 1, v29))
          {
            goto LABEL_27;
          }

          v32 = swift_getEnumCaseMultiPayload();
          if (v32 > 2)
          {
            if (v32 != 3)
            {
              if (v32 == 4)
              {
                v99 = sub_24F9289E8();
                (*(*(v99 - 8) + 8))(v28, v99);
                goto LABEL_27;
              }

              if (v32 != 5)
              {
LABEL_27:
                v30 = v27 + v18[7];
                v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
                {
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                  }

                  else
                  {
                    v33 = sub_24F928388();
                    (*(*(v33 - 8) + 8))(v30, v33);
                  }
                }

                v34 = (v27 + v18[10]);
                v19 = v118;
                if (v34[3])
                {
                  __swift_destroy_boxed_opaque_existential_1(v34);
                }

LABEL_42:
                v35 = v16 + v17[6];
                if (v19(v35, 1, v18))
                {
                  goto LABEL_59;
                }

                v36 = v35 + v18[5];
                v37 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                if ((*(*(v37 - 8) + 48))(v36, 1, v37))
                {
                  goto LABEL_44;
                }

                v40 = swift_getEnumCaseMultiPayload();
                if (v40 > 2)
                {
                  if (v40 != 3)
                  {
                    if (v40 == 4)
                    {
                      v100 = sub_24F9289E8();
                      (*(*(v100 - 8) + 8))(v36, v100);
                      goto LABEL_44;
                    }

                    if (v40 != 5)
                    {
LABEL_44:
                      v38 = v35 + v18[7];
                      v39 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                      if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
                      {
                        if (swift_getEnumCaseMultiPayload() == 1)
                        {
                        }

                        else
                        {
                          v41 = sub_24F928388();
                          (*(*(v41 - 8) + 8))(v38, v41);
                        }
                      }

                      v42 = (v35 + v18[10]);
                      if (v42[3])
                      {
                        __swift_destroy_boxed_opaque_existential_1(v42);
                      }

LABEL_59:
                      v43 = v16 + v17[7];
                      if (*(v43 + 56) == 1)
                      {
                      }

                      else if (!*(v43 + 56))
                      {

                        if (*(v43 + 40))
                        {
                          __swift_destroy_boxed_opaque_existential_1((v43 + 16));
                        }
                      }

                      v44 = v16 + v17[8];
                      v45 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
                      if ((*(*(v45 - 8) + 48))(v44, 1, v45))
                      {
                        goto LABEL_65;
                      }

                      v59 = swift_getEnumCaseMultiPayload();
                      if (v59 == 2)
                      {
LABEL_159:

                        goto LABEL_65;
                      }

                      if (v59 != 1)
                      {
                        if (v59)
                        {
                          goto LABEL_65;
                        }

                        v60 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                        if ((*(*(v60 - 8) + 48))(v44, 1, v60))
                        {
                          goto LABEL_65;
                        }

                        v61 = swift_getEnumCaseMultiPayload();
                        if (v61 > 2)
                        {
                          if (v61 != 3)
                          {
                            if (v61 == 4)
                            {
                              v115 = sub_24F9289E8();
                              (*(*(v115 - 8) + 8))(v44, v115);
                              goto LABEL_65;
                            }

                            if (v61 != 5)
                            {
                              goto LABEL_65;
                            }
                          }

                          goto LABEL_159;
                        }

                        if (v61)
                        {
                          if (v61 == 1)
                          {
                            v113 = sub_24F9289E8();
                            v114 = *(v113 - 8);
                            if (!(*(v114 + 48))(v44, 1, v113))
                            {
                              (*(v114 + 8))(v44, v113);
                            }

                            if (!*(v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
                            {
                              goto LABEL_65;
                            }
                          }

                          else if (v61 != 2)
                          {
                            goto LABEL_65;
                          }

                          goto LABEL_159;
                        }

                        v78 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
                        v79 = type metadata accessor for JSColor(0);
                        if ((*(*(v79 - 8) + 48))(v78, 1, v79))
                        {
                          goto LABEL_65;
                        }

LABEL_109:
                        v80 = sub_24F928388();
                        (*(*(v80 - 8) + 8))(v78, v80);

                        goto LABEL_65;
                      }

                      v74 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                      v75 = *(*(v74 - 8) + 48);
                      if (v75(v44, 1, v74))
                      {
LABEL_107:
                        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
                        v77 = v44 + *(v76 + 48);
                        if (v75(v77, 1, v74))
                        {
                          goto LABEL_108;
                        }

                        v82 = swift_getEnumCaseMultiPayload();
                        if (v82 <= 2)
                        {
                          if (v82)
                          {
                            if (v82 != 1)
                            {
                              if (v82 != 2)
                              {
                                goto LABEL_108;
                              }

LABEL_155:

                              goto LABEL_108;
                            }

                            v109 = sub_24F9289E8();
                            v110 = *(v109 - 8);
                            if (!(*(v110 + 48))(v77, 1, v109))
                            {
                              (*(v110 + 8))(v77, v109);
                            }

                            if (*(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
                            {
                            }
                          }

                          else
                          {

                            v104 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
                            v105 = type metadata accessor for JSColor(0);
                            if (!(*(*(v105 - 8) + 48))(v104, 1, v105))
                            {
                              v106 = sub_24F928388();
                              (*(*(v106 - 8) + 8))(v104, v106);
                            }
                          }

LABEL_108:
                          v78 = v44 + *(v76 + 80);
                          v79 = type metadata accessor for JSColor(0);
                          if ((*(*(v79 - 8) + 48))(v78, 1, v79))
                          {
                            goto LABEL_65;
                          }

                          goto LABEL_109;
                        }

                        if (v82 != 3)
                        {
                          if (v82 == 4)
                          {
                            v112 = sub_24F9289E8();
                            (*(*(v112 - 8) + 8))(v77, v112);
                            goto LABEL_108;
                          }

                          if (v82 != 5)
                          {
                            goto LABEL_108;
                          }
                        }

                        goto LABEL_155;
                      }

                      v81 = swift_getEnumCaseMultiPayload();
                      if (v81 > 2)
                      {
                        if (v81 != 3)
                        {
                          if (v81 == 4)
                          {
                            v111 = sub_24F9289E8();
                            (*(*(v111 - 8) + 8))(v44, v111);
                            goto LABEL_107;
                          }

                          if (v81 != 5)
                          {
                            goto LABEL_107;
                          }
                        }
                      }

                      else
                      {
                        if (!v81)
                        {

                          v101 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
                          v102 = type metadata accessor for JSColor(0);
                          if (!(*(*(v102 - 8) + 48))(v101, 1, v102))
                          {
                            v103 = sub_24F928388();
                            (*(*(v103 - 8) + 8))(v101, v103);
                          }

                          goto LABEL_107;
                        }

                        if (v81 == 1)
                        {
                          v107 = sub_24F9289E8();
                          v108 = *(v107 - 8);
                          if (!(*(v108 + 48))(v44, 1, v107))
                          {
                            (*(v108 + 8))(v44, v107);
                          }

                          if (*(v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
                          {
                          }

                          goto LABEL_107;
                        }

                        if (v81 != 2)
                        {
                          goto LABEL_107;
                        }
                      }

                      goto LABEL_107;
                    }
                  }
                }

                else
                {
                  if (!v40)
                  {

                    v89 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
                    v90 = type metadata accessor for JSColor(0);
                    if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
                    {
                      v91 = sub_24F928388();
                      (*(*(v91 - 8) + 8))(v89, v91);
                    }

                    goto LABEL_44;
                  }

                  if (v40 == 1)
                  {
                    v97 = sub_24F9289E8();
                    v98 = *(v97 - 8);
                    v121 = v97;
                    if (!(*(v98 + 48))(v36, 1))
                    {
                      (*(v98 + 8))(v36, v121);
                    }

                    if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
                    {
                    }

                    goto LABEL_44;
                  }

                  if (v40 != 2)
                  {
                    goto LABEL_44;
                  }
                }

                goto LABEL_44;
              }
            }
          }

          else
          {
            if (!v32)
            {

              v86 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v87 = type metadata accessor for JSColor(0);
              if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
              {
                v88 = sub_24F928388();
                (*(*(v88 - 8) + 8))(v86, v88);
              }

              goto LABEL_27;
            }

            if (v32 == 1)
            {
              v94 = sub_24F9289E8();
              v95 = *(v94 - 8);
              v116 = v94;
              if (!(*(v95 + 48))(v28, 1))
              {
                (*(v95 + 8))(v28, v116);
              }

              if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
              }

              goto LABEL_27;
            }

            if (v32 != 2)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v83 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v84 = type metadata accessor for JSColor(0);
        if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
        {
          v85 = sub_24F928388();
          (*(*(v85 - 8) + 8))(v83, v85);
        }

        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v92 = sub_24F9289E8();
        v93 = *(v92 - 8);
        if (!(*(v93 + 48))(v20, 1, v92))
        {
          (*(v93 + 8))(v20, v92);
        }

        if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_14;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_14;
  }

LABEL_65:
  if (*(v11 + v13[23]))
  {
  }

  v46 = v11 + v13[24];
  v47 = type metadata accessor for Page.Background(0);
  if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
  {
    v53 = swift_getEnumCaseMultiPayload();
    if (v53 <= 1)
    {
      if (v53)
      {
        if (v53 == 1)
        {
          v55 = sub_24F9289E8();
          (*(*(v55 - 8) + 8))(v46, v55);
          v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v57 = sub_24F922348();
          v58 = *(v57 - 8);
          if (!(*(v58 + 48))(v46 + v56, 1, v57))
          {
            (*(v58 + 8))(v46 + v56, v57);
          }
        }
      }

      else
      {
        v73 = sub_24F9289E8();
        (*(*(v73 - 8) + 8))(v46, v73);
      }
    }

    else if (v53 == 2)
    {
      v62 = sub_24F9289E8();
      v63 = *(v62 - 8);
      if (!(*(v63 + 48))(v46, 1, v62))
      {
        (*(v63 + 8))(v46, v62);
      }

      v64 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v65 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v65 - 1) + 48))(v64, 1, v65))
      {
        v66 = sub_24F91F4A8();
        (*(*(v66 - 8) + 8))(v64, v66);
        (*(v63 + 8))(v64 + v65[5], v62);
        v67 = v65[9];
        v68 = sub_24F928698();
        v69 = *(v68 - 8);
        v119 = v67;
        v70 = v64 + v67;
        v71 = *(v69 + 48);
        if (!v71(v70, 1, v68))
        {
          (*(v69 + 8))(v64 + v119, v68);
        }

        v120 = v69;
        v72 = v65[10];
        if (!v71(v64 + v72, 1, v68))
        {
          (*(v120 + 8))(v64 + v72, v68);
        }
      }
    }

    else if (v53 == 3 || v53 == 4)
    {
      v54 = sub_24F928388();
      (*(*(v54 - 8) + 8))(v46, v54);
    }
  }

  v48 = (v11 + v13[27]);
  if (v48[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v49 = (v11 + v13[28]);
  if (v49[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v50 = (v11 + v13[29]);
  if (v50[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v51 = (v11 + v13[30]);
  if (v51[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  return swift_deallocObject();
}

uint64_t sub_24EC7202C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for TwoColumnPageShelvesContentView(0) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 17) & ~*(v7 + 80));

  return sub_24EC6C2CC(a1, a2, v8, v9, a3);
}

uint64_t sub_24EC720C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EC72114()
{
  result = qword_27F22C7B0;
  if (!qword_27F22C7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C7B8, &qword_24F990C48);
    sub_24EC6FF3C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6D0, &qword_24F990B00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C728, &qword_24F990B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6E0, &qword_24F990B10);
    sub_24E602068(&qword_27F22C720, &qword_27F22C6E0, &qword_24F990B10, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C730, &unk_24F990B58);
    sub_24EC6FE14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22C7B0);
  }

  return result;
}

uint64_t LeaderboardSetSource.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v20 = *(v1 + 40);
  v21 = *(v1 + 48);
  if (*(v1 + 56))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v8 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v8;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = 0x800000024FA4D4E0;
    *(inited + 88) = 0xD000000000000010;
    *(inited + 96) = 0x800000024FA4D4E0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 32) = 25705;
    *(v9 + 40) = 0xE200000000000000;
    *(v9 + 48) = v3;
    *(v9 + 56) = v2;
    sub_24EC73400(v3, v2, v5, v4, v6, v20, v21, 1);
    v10 = sub_24E6086DC(v9);
    swift_setDeallocating();
    sub_24E601704(v9 + 32, &qword_27F219F90, &qword_24F955020);
    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    *(inited + 136) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0);
    *(inited + 104) = v10;
    v11 = sub_24E607E40(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
    swift_arrayDestroy();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
    result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
    v14 = result;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_24F93A400;
    *(v15 + 32) = 0x646E696B24;
    v16 = MEMORY[0x277D22580];
    *(v15 + 72) = MEMORY[0x277D837D0];
    *(v15 + 80) = v16;
    *(v15 + 40) = 0xE500000000000000;
    strcpy((v15 + 48), "leaderboardSet");
    *(v15 + 63) = -18;
    strcpy((v15 + 88), "leaderboardSet");
    *(v15 + 103) = -18;
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_24F93DE60;
    *(v17 + 32) = 0xD000000000000012;
    *(v17 + 40) = 0x800000024FA58760;
    *(v17 + 72) = &type metadata for LeaderboardSet;
    *(v17 + 80) = sub_24E7EDB14();
    v18 = swift_allocObject();
    *(v17 + 48) = v18;
    v18[2] = v3;
    v18[3] = v2;
    v18[4] = v5;
    v18[5] = v4;
    v18[6] = v6;
    v18[7] = v20;
    v18[8] = v21;
    sub_24EC73400(v3, v2, v5, v4, v6, v20, v21, 0);
    v19 = sub_24E607E40(v17);
    swift_setDeallocating();
    sub_24E601704(v17 + 32, &qword_27F212FB0, &unk_24F93A440);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
    *(v15 + 128) = v12;
    v14 = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
    *(v15 + 136) = v14;
    *(v15 + 104) = v19;
    v11 = sub_24E607E40(v15);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
    result = swift_arrayDestroy();
  }

  a1[3] = v12;
  a1[4] = v14;
  *a1 = v11;
  return result;
}

uint64_t sub_24EC726F0()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_24EC7273C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6272656461656CLL && a2 == 0xEE00746553647261;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4D4E0 == a2)
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

uint64_t sub_24EC72828(uint64_t a1)
{
  v2 = sub_24EC73500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC72864(uint64_t a1)
{
  v2 = sub_24EC73500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EC728BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA58760 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24EC72950(uint64_t a1)
{
  v2 = sub_24EC735A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC7298C(uint64_t a1)
{
  v2 = sub_24EC735A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EC729D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_24EC72A54(uint64_t a1)
{
  v2 = sub_24EC73554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC72A90(uint64_t a1)
{
  v2 = sub_24EC73554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardSetSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C7C0, &qword_24F990C50);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C7C8, &qword_24F990C58);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C7D0, &qword_24F990C60);
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v20 - v10;
  v12 = v1[1];
  v30 = *v1;
  v31 = v12;
  v13 = v1[2];
  v24 = v1[3];
  v25 = v13;
  v14 = v1[4];
  v22 = v1[5];
  v23 = v14;
  v21 = v1[6];
  v15 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC73500();
  sub_24F92D128();
  if (v15)
  {
    LOBYTE(v33) = 1;
    sub_24EC73554();
    v16 = v32;
    sub_24F92CC98();
    v17 = v29;
    sub_24F92CD08();
    (*(v28 + 8))(v5, v17);
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_24EC735A8();
    v16 = v32;
    sub_24F92CC98();
    v33 = v30;
    v34 = v31;
    v35 = v25;
    v36 = v24;
    v37 = v23;
    v38 = v22;
    v39 = v21;
    sub_24E7ED9D4();
    v18 = v27;
    sub_24F92CD48();
    (*(v26 + 8))(v8, v18);
  }

  return (*(v9 + 8))(v11, v16);
}