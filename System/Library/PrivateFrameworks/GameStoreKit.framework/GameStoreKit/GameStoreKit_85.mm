void sub_24EEAFC44(char a1, __n128 a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_24F92A088();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20[-1] - v10;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*(v5 + 264))(v14) & 1) == 0)
  {
    v17 = qword_27F39CC70;
    swift_beginAccess();
    if ((*(v3 + v17) & 1) == 0 && (*(v3 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) & 1) == 0)
    {
      sub_24E60169C(v3 + qword_27F39CC40, v11, &qword_27F228530, &unk_24F93C6E0);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
      }

      else
      {
        (*(v13 + 32))(v16, v11, v12);
        if (*(v3 + qword_27F232C78) != 1 || (a1 & 1) != 0)
        {
          (*(*v3 + 576))(1);
          swift_beginAccess();
          if (v3[3])
          {
            *v8 = 1;
            v18 = v19;
            (*(v19 + 104))(v8, *MEMORY[0x277D222A0], v6);

            sub_24F92A0D8();

            (*(v18 + 8))(v8, v6);
          }

          (*(*v3 + 1136))(v16);
          swift_retain_n();
          sub_24ED90514(v20);
          sub_24F92A958();

          __swift_destroy_boxed_opaque_existential_1(v20);
        }

        (*(v13 + 8))(v16, v12);
      }
    }
  }
}

uint64_t sub_24EEB0058(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_24F9287F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_24F9287C8();
    v11 = type metadata accessor for BaseGenericPagePresenter(0, *(v4 + 960), v9, v10);
    WitnessTable = swift_getWitnessTable();
    MetricsPagePresenter.sendEventsFor(invocationPoint:)(v8, v11, WitnessTable);
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    swift_getObjectType();
    sub_24F9296B8();
  }

  if (*(v2 + qword_27F232C50))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong invalidate];

    swift_unknownObjectWeakAssign();
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  swift_beginAccess();
  sub_24E9CBF30(&v21, (v2 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(&v21, &qword_27F224F98, &unk_24F974A70);
  v14 = *(v2 + qword_27F39CC48);
  *(v2 + qword_27F39CC48) = MEMORY[0x277D84F90];
  sub_24EEB2EB4(v14);

  v15 = *(v2 + qword_27F232C60);
  *(v2 + qword_27F232C60) = MEMORY[0x277D84FA0];
  sub_24EEB3FD0(v15);

  v21 = 0u;
  v22 = 0u;
  sub_24EEB0B0C(&v21);
  *(v2 + qword_27F232C78) = 0;
  (*(*v2 + 576))(0);
  sub_24EEB4554(0);
  result = sub_24EEB064C();
  if (result)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(*(*(v18 + 24) + 16) + 8))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EEB0370()
{
  sub_24EEB4540();
}

double sub_24EEB0398(uint64_t a1)
{
  sub_24EEB4554(a1);

  return result;
}

uint64_t sub_24EEB03D0(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27F39CC48);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = sub_24ECDE964(v5);
    v5 = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;

  v7 = *(v2 + qword_27F39CC48);
  *(v2 + qword_27F39CC48) = v5;
  sub_24EEB2EB4(v7);
}

uint64_t sub_24EEB0490()
{
  v1 = *(v0 + qword_27F39CC48);
  if (v1 >> 62)
  {
    return sub_24F92C738();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_24EEB04C0(unint64_t result)
{
  v2 = *(v1 + qword_27F39CC48);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = result;

    v4 = MEMORY[0x253052270](v3, v2);

    return v4;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
LABEL_9:
    __break(1u);
    return result;
  }
}

BOOL sub_24EEB0558(unint64_t a1)
{
  v2 = *(v1 + qword_27F39CC48);
  if (v2 >> 62)
  {
    v5 = a1;
    v6 = sub_24F92C738();
    if (v6 < 0)
    {
      __break(1u);
    }

    v3 = v6;
    a1 = v5;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 > a1;
}

BOOL sub_24EEB05C0(uint64_t a1)
{
  v1 = sub_24F91FA18();
  if (!sub_24EEB0558(v1))
  {
    return 0;
  }

  v2 = sub_24F91FA18();
  v3 = *(sub_24EEB04C0(v2) + 24);

  v4 = *(v3 + 16);

  return sub_24F91FA08() < v4;
}

uint64_t sub_24EEB069C(uint64_t a1, uint64_t a2)
{
  sub_24EEB5A50(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_24EEB06D4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = qword_27F39CC30;
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

uint64_t sub_24EEB0774(uint64_t a1)
{
  v17 = a1;
  v2 = *v1;
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyGenericPageIntent(0, *(v2 + 960), v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  (*(v4 + 16))(v6, v17, v3);
  AnyGenericPageIntent.init(url:)(v6, v12);
  sub_24F929C28();

  sub_24F928FE8();
  swift_beginAccess();

  sub_24F929BF8();

  v13 = sub_24F929C08();

  WitnessTable = swift_getWitnessTable();
  v15 = sub_24F1DB140(v12, v13, "GameStoreKit/GenericPagePresenter.swift", 39, 2, v9, WitnessTable);

  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t sub_24EEB0A4C(uint64_t a1)
{
  v3 = qword_27F232C40;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24EEB0AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39CC50;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24EEB0B0C(uint64_t a1)
{
  v3 = qword_27F39CC50;
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24EEB0BA4()
{
  sub_24EEB5AB4();
}

double sub_24EEB0BCC(uint64_t a1)
{
  v3 = qword_27F39CC58;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_24EEB0C84(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v26 = sub_24F91F648();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) ^ 1;
  }

  else
  {
    v9 = 1;
  }

  *(v2 + qword_27F232C78) = v9 & 1;
  *(v2 + qword_27F232C80) = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
  v11 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v10 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
  v12 = (v3 + qword_27F39CC68);

  swift_beginAccess();
  *v12 = v11;
  v12[1] = v10;

  v14 = (*(*a1 + 280))(v13);
  v15 = qword_27F39CC58;
  swift_beginAccess();
  *(v3 + v15) = v14;

  v16 = *(v6 + 960);
  v28 = v16;
  v29 = &protocol witness table for BasePage;
  WitnessTable = swift_getWitnessTable();
  v30 = WitnessTable;
  v27[0] = a1;
  swift_beginAccess();

  sub_24E9CBF30(v27, (v3 + 5), &qword_27F224F98, &unk_24F974A70);
  swift_endAccess();
  sub_24EC832DC();
  sub_24E601704(v27, &qword_27F224F98, &unk_24F974A70);
  if (*(v3 + qword_27F232C78) == 1)
  {
    if ((a2 & 1) != 0 && (*(a1 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v3[2])
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v19 = v18;
        (*(v25 + 8))(v8, v26);
        PendingPageRender.initialRequestEndTime.setter(v19, 0);
      }
    }

    swift_beginAccess();
    if (v3[2])
    {
      v29 = &protocol witness table for BasePage;
      v30 = WitnessTable;
      v28 = v16;
      v27[0] = a1;

      PendingPageRender.use(pageRenderEventFrom:)(v27);

      sub_24E601704(v27, &qword_27F224F98, &unk_24F974A70);
    }

    v20 = v3 + qword_27F39CC60;
    swift_beginAccess();
    v21 = *v20;
    if (*v20)
    {
      v22 = *(v20 + 1);
      v23 = sub_24E5FCA4C(v21, v22);
      v21(v23);
      sub_24E824448(v21, v22);
    }

    sub_24EEB10AC(0, 0);
  }
}

uint64_t sub_24EEB1070()
{
  v0 = sub_24EA09614(&qword_27F39CC60);
  sub_24E5FCA4C(v0, v1);
  return v0;
}

double sub_24EEB10AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27F39CC60);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24E824448(v6, v7);
}

double sub_24EEB116C(void (*a1)(void), uint64_t a2)
{
  if (*(v2 + qword_27F232C78) == 1)
  {
    a1();
  }

  else
  {

    return sub_24EEB10AC(a1, a2);
  }

  return result;
}

uint64_t sub_24EEB11E8()
{
  v0 = sub_24EA09614(&qword_27F39CC68);

  return v0;
}

uint64_t sub_24EEB1228(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27F39CC68);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24EEB1288()
{
  v1 = qword_27F39CC70;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EEB12CC(char a1)
{
  v3 = qword_27F39CC70;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_24EEB36AC();
}

uint64_t (*sub_24EEB1320(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EEB1384;
}

uint64_t sub_24EEB1384(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24EEB36AC();
  }

  return result;
}

BOOL sub_24EEB13B8()
{
  v1 = qword_27F39CC50;
  swift_beginAccess();
  sub_24E60169C(v0 + v1, v4, &qword_27F2129B0, &unk_24F945320);
  v2 = v5 != 0;
  sub_24E601704(v4, &qword_27F2129B0, &unk_24F945320);
  return v2;
}

uint64_t sub_24EEB1444()
{
  v1 = v0;
  v2 = qword_27F39CC50;
  swift_beginAccess();
  sub_24E60169C(v1 + v2, &v9, &qword_27F2129B0, &unk_24F945320);
  if (!v10)
  {
    return sub_24E601704(&v9, &qword_27F2129B0, &unk_24F945320);
  }

  sub_24E612B0C(&v9, v13);
  if (sub_24EEB13B8())
  {
    v3 = qword_27F39CC70;
    swift_beginAccess();
    *(v1 + v3) = 1;
    sub_24EEB36AC();
    type metadata accessor for JSIntentDispatcher();
    v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13BasePresenter_objectGraph);
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v13, v12);
    sub_24EB4692C(v12, v4, "GameStoreKit/GenericPagePresenter.swift", 39, 2);
    v5 = sub_24E74EC40();
    swift_retain_n();
    v6 = sub_24F92BEF8();
    v10 = v5;
    v11 = MEMORY[0x277D225C0];
    *&v9 = v6;
    sub_24F92A958();

    sub_24E9656A0(v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v7 = &v9;
  }

  else
  {
    v7 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_24EEB1648(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v4 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  a3(v4);
}

uint64_t sub_24EEB16B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  result = sub_24F92BBE8();
  if ((result & 1) == 0 && (*(v3 + qword_27F232C88) & 1) == 0)
  {
    v12 = *(v3 + qword_27F232C58);
    if (v12)
    {
      *(v4 + qword_27F232C88) = 1;
      v13 = *(v4 + qword_27F232C60);

      v19[2] = v12;
      v19[1] = sub_24EBDFF44(v13);

      (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
      v14 = (*(v9 + 80) + 48) & ~*(v9 + 80);
      v15 = swift_allocObject();
      *(v15 + 2) = *(v8 + 960);
      *(v15 + 3) = a2;
      *(v15 + 4) = a3;
      *(v15 + 5) = v4;
      (*(v9 + 32))(&v15[v14], v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      v16 = swift_allocObject();
      v16[2] = a2;
      v16[3] = a3;
      v16[4] = v4;
      v17 = sub_24E74EC40();
      swift_retain_n();
      v18 = sub_24F92BEF8();
      v20[3] = v17;
      v20[4] = MEMORY[0x277D225C0];
      v20[0] = v18;
      sub_24F92A958();

      return __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }

  return result;
}

uint64_t sub_24EEB1924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_24E615E00(a1, v28);
  sub_24E615E00(a2, &v29);
  v5 = *(v3 + qword_27F39CC48);
  v25 = v28;

  sub_24E8E26D0(sub_24EEB626C, v24, v5);
  v7 = v6;
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    v10 = sub_24EEB04C0(v7);
    v11 = *(v10 + 24);
    MEMORY[0x28223BE20](v10);
    v23 = v28;

    v12 = sub_24E8E27EC(sub_24EEB628C, v22, v11);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      v27 = *(v10 + 24);

      sub_24EA0E6B0(v12, v26);
      __swift_destroy_boxed_opaque_existential_1(v26);
      LOBYTE(v26[0]) = 104;
      v15 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v27, v26, 1, 2);

      if (sub_24EEB064C())
      {
        v17 = v16;
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B20, &unk_24F9B7470);
        sub_24F91FA78();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_24F93DE60;
        v19 = MEMORY[0x253045380](v12, v7);
        v20 = MEMORY[0x28223BE20](v19);
        v22[0] = v3;
        v22[1] = v7;
        v23 = v15;
        (*(v17 + 40))(v18, sub_24EEB62AC, v20);

        swift_unknownObjectRelease();
        return sub_24E601704(v28, &qword_27F222A30, &qword_24F9A7D00);
      }
    }
  }

  return sub_24E601704(v28, &qword_27F222A30, &qword_24F9A7D00);
}

void sub_24EEB1C18()
{
  v1 = *(v0 + qword_27F232C50);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = swift_allocObject();
      swift_weakInit();
      v9[4] = sub_24ECB2170;
      v9[5] = v4;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_24ECAEFC8;
      v9[3] = &block_descriptor_86;
      v5 = _Block_copy(v9);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
      _Block_release(v5);

      v8 = [objc_opt_self() mainRunLoop];
      [v8 addTimer:v7 forMode:*MEMORY[0x277CBE738]];

      swift_unknownObjectWeakAssign();
    }
  }
}

void sub_24EEB1DCC()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_27F210F50 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 addObserver:v0 selector:? name:? object:?];
}

void sub_24EEB1E90()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_27F210F50 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_27F23ABD8 object:*(v0 + qword_27F232C58)];
}

void sub_24EEB1F3C()
{
  v1 = v0;
  Notification.updatedStyle.getter(&v10);
  if (v10 != 2)
  {
    v2 = *(v0 + qword_27F232C60);
    v3 = v10 & 1;

    v4 = sub_24F4D42B0(v3, v2);

    if ((v4 & 1) != 0 && ((*(*v1 + 264))(v5) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213920, &unk_24F989EB0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_24F93DE60;
      *(v6 + 32) = v3;
      v9 = v6;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D10, &unk_24F9AAED8);
      v8 = sub_24E602068(&qword_27F232D18, &qword_27F232D10, &unk_24F9AAED8, MEMORY[0x277D83988]);
      sub_24EEB16B0(&v9, v7, v8);
    }
  }
}

uint64_t BaseGenericPagePresenter.__allocating_init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  swift_allocObject();
  v12 = sub_24EEB50BC(a1, a2, a3, a4, v7, a6);

  return v12;
}

double sub_24EEB212C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_27F210038 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9287F8();
    v5 = __swift_project_value_buffer(v4, qword_27F2230A0);
    v8 = type metadata accessor for BaseGenericPagePresenter(0, a2, v6, v7);
    WitnessTable = swift_getWitnessTable();
    MetricsPagePresenter.sendEventsFor(invocationPoint:)(v5, v8, WitnessTable);
  }

  return result;
}

uint64_t sub_24EEB2210()
{
  sub_24E883630(v0 + qword_27F39CC30);
  sub_24E601704(v0 + qword_27F39CC38, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v0 + qword_27F39CC40, &qword_27F228530, &unk_24F93C6E0);

  sub_24E601704(v0 + qword_27F39CC50, &qword_27F2129B0, &unk_24F945320);

  sub_24E824448(*(v0 + qword_27F39CC60), *(v0 + qword_27F39CC60 + 8));
}

uint64_t sub_24EEB2350(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_24EEB23A8()
{
  result = sub_24EEB064C();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    v5 = *(v4 + 8);

    v5(v6, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EEB249C(uint64_t *a1, void *a2)
{
  v4 = *a2;
  v5 = sub_24F92A078();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(v4 + 960);
  v13 = ShelfBasedPage.shelves.getter(v12, &protocol witness table for GenericPage);
  v14 = *(a2 + qword_27F39CC48);
  *(a2 + qword_27F39CC48) = v13;
  sub_24EEB2EB4(v14);

  v15 = ShelfBasedPage.shelves.getter(v12, &protocol witness table for GenericPage);
  v16 = sub_24F0C5C5C(v15);

  v17 = *(a2 + qword_27F232C60);
  *(a2 + qword_27F232C60) = v16;
  sub_24EEB3FD0(v17);

  sub_24E60169C(v11 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v42, &qword_27F2129B0, &unk_24F945320);
  sub_24EEB0B0C(v42);
  (*(*a2 + 1312))(v11, 0);
  if (sub_24EEB064C())
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 32))(*(v11 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions), ObjectType, v19);
    swift_unknownObjectRelease();
  }

  if (sub_24EEB064C())
  {
    v22 = v21;
    v38[1] = swift_getObjectType();
    sub_24EEF1124(v12, &protocol witness table for GenericPage);
    (*(*(v22 + 24) + 32))();

    swift_unknownObjectRelease();
  }

  if (sub_24EEB064C())
  {
    v24 = v23;
    v25 = swift_getObjectType();
    (*(*(*(v24 + 24) + 16) + 8))(v25);
    swift_unknownObjectRelease();
  }

  sub_24EEB4554(v26);

  v27 = ShelfBasedPage.shelves.getter(v12, &protocol witness table for GenericPage);
  (*(*a2 + 704))(v27, 0);

  swift_beginAccess();
  v28 = a2[2];
  if (v28)
  {

    v29 = v39;
    sub_24F91F638();
    sub_24F91F5E8();
    v31 = v30;
    (*(v9 + 8))(v29, v8);
    v32 = v28 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v32 = v31;
    *(v32 + 8) = 0;
    v33 = *(v28 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasViewModelPresentTime);
    swift_beginAccess();
    *(v33 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v34 = swift_beginAccess();
  if (a2[3])
  {
    (*(*v11 + 128))(v34);
    v36 = v40;
    v35 = v41;
    (*(v40 + 104))(v7, *MEMORY[0x277D22290], v41);

    sub_24F92A0C8();

    (*(v36 + 8))(v7, v35);
  }

  return (*(*a2 + 576))(0);
}

void sub_24EEB2A40(void *a1, void *a2)
{
  v4 = sub_24F92A078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PresenterError(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*a2 + 576))(0, v9);
  sub_24E60169C(a2 + qword_27F39CC40, v11 + *(v8 + 20), &qword_27F228530, &unk_24F93C6E0);
  *v11 = a1;
  swift_beginAccess();
  v12 = a2[2];
  if (v12)
  {
    v29 = v4;
    sub_24EEB6508(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v28 = swift_allocError();
    sub_24EBDEC38(v11, v13);
    v14 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v15 = *(v12 + v14);
    v16 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v14) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_24E617130(0, v15[2] + 1, 1, v15);
      *(v12 + v14) = v15;
    }

    v19 = v15[2];
    v18 = v15[3];
    if (v19 >= v18 >> 1)
    {
      v15 = sub_24E617130((v18 > 1), v19 + 1, 1, v15);
    }

    v15[2] = v19 + 1;
    v15[v19 + 4] = v28;
    *(v12 + v14) = v15;
    swift_endAccess();

    v4 = v29;
  }

  else
  {
    v20 = a1;
  }

  swift_beginAccess();
  if (a2[3])
  {
    sub_24EEB6508(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v21 = swift_allocError();
    sub_24EBDEC38(v11, v22);
    *v7 = v21;
    (*(v5 + 104))(v7, *MEMORY[0x277D22280], v4);

    sub_24F92A0C8();

    (*(v5 + 8))(v7, v4);
  }

  if (sub_24EEB064C())
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    sub_24EEB6508(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v26 = swift_allocError();
    sub_24EBDEC38(v11, v27);
    (*(*(*(v24 + 24) + 24) + 24))(v26, ObjectType);
    swift_unknownObjectRelease();
    sub_24EBDECA4(v11);
  }

  else
  {
    sub_24EBDECA4(v11);
  }
}

uint64_t sub_24EEB2EB4(unint64_t a1)
{
  v2 = v1;
  v43 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2133F0, &unk_24F963D50);
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x28223BE20](v4);
  v47 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v39 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D30, &unk_24F9AAF00);
  MEMORY[0x28223BE20](v44);
  v42 = v39 - v10;
  v11 = qword_27F232C40;
  swift_beginAccess();
  v48 = v2;
  v12 = *(v2 + v11);
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v13)
  {
    v14 = 0;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = a1 & 0xC000000000000001;
    v39[2] = v46 + 16;
    v39[1] = v46 + 32;
    v39[0] = v46 + 8;
    v15 = v45;
    do
    {
      if (v41)
      {
        v16 = MEMORY[0x253052270](v14, a1);
      }

      else
      {
        if (v14 >= *(v40 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v13 = sub_24F92C738();
          goto LABEL_3;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = *(v12 + 16);
      if (v14 == v17)
      {

        break;
      }

      if (v14 >= v17)
      {
        goto LABEL_33;
      }

      v18 = v46;
      v19 = v12;
      v20 = v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14;
      v21 = *(v44 + 48);
      v22 = v42;
      (*(v46 + 16))(&v42[v21], v20, v15);
      (*(v18 + 32))(v9, &v22[v21], v15);
      if (*(v16 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
      {

        sub_24F9280B8();

        (*v39[0])(v9, v15);
      }

      else
      {
        (*v39[0])(v9, v15);
      }

      ++v14;
      v12 = v19;
    }

    while (v13 != v14);
  }

  v23 = qword_27F232C40;
  v24 = v48;
  swift_beginAccess();
  *(v24 + v23) = MEMORY[0x277D84F90];

  v26 = *(v24 + qword_27F39CC48);
  if (v26 >> 62)
  {
    result = sub_24F92C738();
    v27 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      return result;
    }
  }

  if (v27 < 1)
  {
    __break(1u);
  }

  else
  {
    v28 = qword_27F232C40;
    v44 = v26 & 0xC000000000000001;
    v41 = v46 + 32;

    v29 = 0;
    v42 = v26;
    do
    {
      if (v44)
      {
        v30 = MEMORY[0x253052270](v29, v26);
      }

      else
      {
        v30 = *(v26 + 8 * v29 + 32);
      }

      if (*(v30 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel))
      {
        v31 = swift_allocObject();
        *(v31 + 16) = sub_24EEB6458;
        *(v31 + 24) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50, &unk_24F97B600);
        type metadata accessor for BaseGenericPagePresenter(0, *(v43 + 960), v32, v33);
        sub_24E602068(&qword_27F222A58, &qword_27F222A50, &unk_24F97B600, MEMORY[0x277D21A98]);
        sub_24EE94F08();
        v34 = v48;
        sub_24F9288C8();

        __swift_destroy_boxed_opaque_existential_1(v49);
        swift_beginAccess();
        v35 = *(v34 + v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 + v28) = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_24E618BBC(0, v35[2] + 1, 1, v35);
          *(v48 + v28) = v35;
        }

        v38 = v35[2];
        v37 = v35[3];
        if (v38 >= v37 >> 1)
        {
          v35 = sub_24E618BBC((v37 > 1), v38 + 1, 1, v35);
        }

        v35[2] = v38 + 1;
        (*(v46 + 32))(v35 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v38, v47, v45);
        *(v48 + v28) = v35;
        swift_endAccess();

        v26 = v42;
      }

      ++v29;
    }

    while (v27 != v29);
  }

  return result;
}

uint64_t sub_24EEB34E0(uint64_t a1, uint64_t a2)
{
  sub_24E615E00(a1, v6);
  sub_24E615E00(a2, &v7);
  sub_24E60169C(v6, v4, &qword_27F222A30, &qword_24F9A7D00);
  sub_24EEB1924(v4, v5);
  sub_24E601704(v6, &qword_27F222A30, &qword_24F9A7D00);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_24EEB3580@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_24EA09614(&qword_27F39CC60);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v3 = v5;
    v7 = v6;
    v2 = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    v8 = sub_24E972460;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_24E5FCA4C(v2, v3);
}

double sub_24EEB361C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24E9A0188;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24E5FCA4C(v1, v2);
  return sub_24EEB10AC(v4, v3);
}

uint64_t sub_24EEB36AC()
{
  v1 = qword_27F39CC70;
  swift_beginAccess();
  v2 = *(v0 + v1);
  result = sub_24EEB064C();
  v5 = v4;
  if (v2 == 1)
  {
    if (!result)
    {
      return result;
    }

    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 8))(ObjectType);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v7 = swift_getObjectType();
    (*(*(v5 + 8) + 16))(v7);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_24EEB3760(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_24EC9C404();
  v5 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
  v6 = *(a2 + qword_27F39CC48);
  v53 = v4;
  if (v6 >> 62)
  {
LABEL_54:
    v52 = sub_24F92C738();
  }

  else
  {
    v52 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v54 = v7;
  v8 = *(v3 + v7);
  v9 = MEMORY[0x277D84F90];
  v57[0] = MEMORY[0x277D84F90];
  v10 = *(v8 + 16);
  v11 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v13 = v8 + 32;
  do
  {
    v5 = v13 + 40 * v12;
    v14 = v12;
    while (1)
    {
      if (v14 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      sub_24E65864C(v5, v56);
      if (*(*(v3 + v11) + 16))
      {
        break;
      }

LABEL_6:
      ++v14;
      sub_24E6585F8(v56);
      v5 += 40;
      if (v10 == v14)
      {
        v5 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
        goto LABEL_16;
      }
    }

    sub_24E76D934(v56);
    if ((v15 & 1) == 0)
    {

      goto LABEL_6;
    }

    v16 = sub_24E6585F8(v56);
    MEMORY[0x253050F00](v16);
    if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v12 = v14 + 1;
    sub_24F92B638();
    v9 = v57[0];
    v13 = v8 + 32;
    v5 = 0x27F39C000;
  }

  while (v10 - 1 != v14);
LABEL_16:

  v56[0] = *(a2 + *(v5 + 3144));

  sub_24EA0AE3C(v9);
  v17 = *(v5 + 3144);
  v18 = *(a2 + v17);
  *(a2 + v17) = v56[0];
  sub_24EEB2EB4(v18);

  v19 = &qword_27F231FE8[3];
  v20 = *(a2 + qword_27F232C60);
  v21 = *(v3 + v7);
  v22 = MEMORY[0x277D84F90];
  v57[0] = MEMORY[0x277D84F90];
  v23 = *(v21 + 16);
  v51 = v20;

  swift_beginAccess();
  if (v23)
  {
    v24 = 0;
    v25 = v21 + 32;
    v5 = MEMORY[0x277D84F90];
LABEL_18:
    v26 = v25 + 40 * v24;
    v27 = v24;
    while (v27 < *(v21 + 16))
    {
      sub_24E65864C(v26, v56);
      if (*(*(v3 + v11) + 16))
      {

        sub_24E76D934(v56);
        if (v28)
        {

          v29 = sub_24E6585F8(v56);
          MEMORY[0x253050F00](v29);
          if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v24 = v27 + 1;
          sub_24F92B638();
          v5 = v57[0];
          v25 = v21 + 32;
          v30 = v23 - 1 == v27;
          v22 = MEMORY[0x277D84F90];
          v19 = qword_27F231FE8 + 24;
          if (v30)
          {
            goto LABEL_31;
          }

          goto LABEL_18;
        }
      }

      ++v27;
      sub_24E6585F8(v56);
      v26 += 40;
      if (v23 == v27)
      {
        v22 = MEMORY[0x277D84F90];
        v19 = qword_27F231FE8 + 24;
        goto LABEL_31;
      }
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v5 = v22;
LABEL_31:

  v31 = sub_24F0C5C5C(v5);

  v32 = sub_24F146E80(v31, v51);
  v33 = v19[396];
  v34 = *(a2 + v33);
  *(a2 + v33) = v32;
  sub_24EEB3FD0(v34);

  sub_24E60169C(v3 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, v56, &qword_27F2129B0, &unk_24F945320);
  sub_24EEB0B0C(v56);
  if (sub_24EEB064C())
  {
    v36 = v35;
    ObjectType = swift_getObjectType();
    (*(*(v36 + 24) + 32))(v53, ObjectType);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if (sub_24EEB064C())
  {
    v39 = v38;
    v40 = swift_getObjectType();
    (*(v39 + 32))(*(a2 + qword_27F232C80), v40, v39);
    swift_unknownObjectRelease();
  }

  v41 = *(v3 + 16);
  if (*(a2 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy))
  {

    v41 = sub_24ED64DBC(v41);
  }

  else
  {
  }

  sub_24EEB4554(v41);

  v42 = qword_27F39CC70;
  swift_beginAccess();
  *(a2 + v42) = 0;
  sub_24EEB36AC();
  v43 = *(v3 + v54);
  v55 = v22;
  v44 = *(v43 + 16);

  swift_beginAccess();
  if (v44)
  {
    v5 = 0;
    v45 = v43 + 32;
    v53 = v44 - 1;
LABEL_41:
    v46 = v45 + 40 * v5;
    v47 = v5;
    while (v47 < *(v43 + 16))
    {
      sub_24E65864C(v46, v56);
      if (*(*(v3 + v11) + 16))
      {

        sub_24E76D934(v56);
        if (v48)
        {

          v49 = sub_24E6585F8(v56);
          MEMORY[0x253050F00](v49);
          if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          v5 = v47 + 1;
          sub_24F92B638();
          v22 = v55;
          v45 = v43 + 32;
          if (v53 != v47)
          {
            goto LABEL_41;
          }

          goto LABEL_50;
        }
      }

      ++v47;
      sub_24E6585F8(v56);
      v46 += 40;
      if (v44 == v47)
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_50:

  (*(*a2 + 704))(v22, v52);
}

void sub_24EEB3E34(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = qword_27F39CC70;
  swift_beginAccess();
  *(a2 + v7) = 0;
  sub_24EEB36AC();
  if (sub_24EEB064C())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    sub_24E60169C(a2 + qword_27F39CC40, v6, &qword_27F228530, &unk_24F93C6E0);
    v11 = type metadata accessor for PresenterError(0);
    sub_24EEB6508(&qword_27F22B028, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v12 = swift_allocError();
    *v13 = a1;
    sub_24E911D90(v6, v13 + *(v11 + 20));
    v14 = *(v9 + 8);
    v15 = *(v14 + 24);
    v16 = a1;
    v15(v12, ObjectType, v14);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24EEB3FD0(uint64_t a1)
{
  v3 = qword_27F232C60;
  v4 = *(v1 + qword_27F232C60);

  LOBYTE(a1) = sub_24EDD4C24(a1, v4);

  if ((a1 & 1) == 0)
  {
    v8 = *(v1 + v3);

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D38, &unk_24F9AAF10);
    v7 = sub_24E602068(&qword_27F232D40, &qword_27F232D38, &unk_24F9AAF10, MEMORY[0x277D83B78]);
    sub_24EEB16B0(&v8, v6, v7);
  }

  return result;
}

uint64_t sub_24EEB40A8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F968();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + qword_27F39CC48);

  Array<A>.indicesOfShelves<A>(using:)(a3, v14, a4, a5, v15);
  v16 = a1[1];
  v23[0] = *a1;
  v23[1] = v16;
  v17 = Array<A>.personalizedShelves(with:)(v23, v14);

  v18 = *(a2 + qword_27F39CC48);
  *(a2 + qword_27F39CC48) = v17;
  sub_24EEB2EB4(v18);

  if (sub_24EEB064C())
  {
    v20 = v19;
    ObjectType = swift_getObjectType();
    (*(*(v20 + 24) + 48))(v13, ObjectType);
    swift_unknownObjectRelease();
  }

  result = (*(v11 + 8))(v13, v10);
  *(a2 + qword_27F232C88) = 0;
  return result;
}

uint64_t sub_24EEB4244(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F928D68();
  v4 = MEMORY[0x253052150](v2 + v3, v6);
  sub_24E6585F8(v6);
  return v4 & 1;
}

uint64_t sub_24EEB42D0(uint64_t a1, void *a2)
{
  sub_24E615E00(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D20, &qword_24F9AAEE8);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v9, v12);
    v3 = v13;
    v4 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v4 + 16))(v11, v3, v4);
    v5 = a2[8];
    v6 = a2[9];
    __swift_project_boxed_opaque_existential_1(a2 + 5, v5);
    (*(v6 + 16))(v9, v5, v6);
    v7 = MEMORY[0x253052150](v11, v9);
    sub_24E6585F8(v9);
    sub_24E6585F8(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_24E601704(v9, &qword_27F232D28, &unk_24F9AAEF0);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_24EEB442C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  sub_24EEB1F3C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EEB4554(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = a1;

  return sub_24EEB23A8();
}

uint64_t sub_24EEB45A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v63 - v14;
  v74 = sub_24F9288E8();
  v69 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + qword_27F39CC30 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + qword_27F232C78) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v6 + qword_27F39CC48) = MEMORY[0x277D84F90];
  *(v6 + qword_27F232C40) = v18;
  v19 = (v6 + qword_27F39CC50);
  *v19 = 0u;
  v19[1] = 0u;
  *(v6 + qword_27F232C48) = 0;
  *(v6 + qword_27F232C80) = 0;
  *(v6 + qword_27F39CC58) = 0;
  v20 = (v6 + qword_27F39CC60);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v6 + qword_27F39CC68);
  *v21 = 0;
  v21[1] = 0;
  *(v6 + qword_27F39CC70) = 0;
  v22 = MEMORY[0x277D84FA0];
  *(v6 + qword_27F232C60) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F232C88) = 0;
  v73 = a4;
  sub_24E60169C(a4, v6 + qword_27F39CC40, &qword_27F228530, &unk_24F93C6E0);
  *(v6 + qword_27F232C58) = a2;
  v72 = a6;
  sub_24E60169C(a6, v6 + qword_27F39CC38, &qword_27F229490, &unk_24F984C40);
  v23 = &qword_27F231FE8[3];
  if (a5)
  {
    v24 = v15;
    v68 = v6;
    type metadata accessor for ASKBagContract(0);
    sub_24F928FD8();

    v67 = a1;
    sub_24F92A758();
    v25 = v75[0];
    v63[1] = "";
    v26 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    v27 = *MEMORY[0x277D21C38];
    v28 = v69;
    v29 = *(v69 + 104);
    v30 = v74;
    v66 = v69 + 104;
    v65 = v29;
    v29(v17, v27, v74);
    v63[0] = v26;
    sub_24F92A368();
    v64 = *(v28 + 8);
    v64(v17, v30);
    v31 = v71;
    sub_24F92A408();
    v69 = v25;
    v70 = *(v70 + 8);
    (v70)(v24, v31);
    v32 = v75[0];
    type metadata accessor for FastImpressionsTracker();
    v33 = swift_allocObject();
    v33[3] = 0;
    swift_unknownObjectWeakInit();
    sub_24F929EB8();
    swift_allocObject();
    v33[5] = sub_24F929E98();
    swift_allocObject();
    v33[6] = sub_24F929E98();
    v33[4] = v32;
    if (qword_27F210900 != -1)
    {
      swift_once();
    }

    v34 = v27;
    v35 = v74;
    v65(v17, v34, v74);
    sub_24F92A368();
    v64(v17, v35);
    sub_24F92A408();
    (v70)(v24, v31);
    v36 = v75[0];
    type metadata accessor for FastImpressionFlushGate();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37[4] = 0;
    v37[5] = 0;
    v37[2] = v36;
    v23 = &qword_27F231FE8[3];
    v38 = v68;
    *(v68 + qword_27F232C50) = v37;
    v39 = sub_24EEB6508(&qword_27F22D210, type metadata accessor for FastImpressionsTracker, &protocol conformance descriptor for FastImpressionsTracker);
    *(v38 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v38 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v38 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v38 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

    v41 = sub_24EC8415C(v40, v33, v39, 0);
  }

  else
  {
    *(v6 + qword_27F232C50) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = v22;

    v41 = sub_24EC8415C(a1, 0, 0, 0);
  }

  v42 = MEMORY[0x277D84F90];
  if (a3)
  {
    v43 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
    swift_beginAccess();
    v44 = *(a3 + v43);
    v76[0] = v42;
    v45 = v44[2];
    v46 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;

    swift_beginAccess();
    if (v45)
    {
      v47 = 0;
      v48 = v44 + 4;
      v71 = v45 - 1;
      v74 = (v44 + 4);
      while (1)
      {
        v49 = &v48[5 * v47];
        v50 = v47;
        while (1)
        {
          if (v50 >= v44[2])
          {
            __break(1u);
            goto LABEL_32;
          }

          sub_24E65864C(v49, v75);
          if (*(*(a3 + v46) + 16))
          {
            break;
          }

LABEL_12:
          ++v50;
          sub_24E6585F8(v75);
          v49 += 40;
          if (v45 == v50)
          {
            v23 = qword_27F231FE8 + 24;
            goto LABEL_23;
          }
        }

        sub_24E76D934(v75);
        if ((v51 & 1) == 0)
        {
          break;
        }

        v52 = sub_24E6585F8(v75);
        MEMORY[0x253050F00](v52);
        if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v47 = v50 + 1;
        sub_24F92B638();
        v42 = v76[0];
        v53 = v71 == v50;
        v23 = qword_27F231FE8 + 24;
        v48 = v74;
        if (v53)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_12;
    }

LABEL_23:

    *(v41 + qword_27F39CC48) = v42;

    v54 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage;
    v55 = qword_27F39CC50;
    swift_beginAccess();
    sub_24E9CBF30(a3 + v54, v41 + v55, &qword_27F2129B0, &unk_24F945320);
    swift_endAccess();
    *(v41 + qword_27F232C48) = sub_24EC9C404();

    (*(*v41 + 1312))(a3, 1);
  }

  else
  {
  }

  swift_unknownObjectRetain();

  type metadata accessor for FastImpressionsTracker();
  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v57 = v56;
    swift_beginAccess();
    *(v57 + 24) = &protocol witness table for BaseGenericPagePresenter<A>;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v58 = *(v41 + v23[394]);
    if (v58)
    {
      v59 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v60 = *(v58 + 32);
      v61 = *(v58 + 40);
      *(v58 + 32) = sub_24EEB6550;
      *(v58 + 40) = v59;

      sub_24E824448(v60, v61);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v44 = [objc_opt_self() defaultCenter];
  if (qword_27F210F50 != -1)
  {
LABEL_32:
    swift_once();
  }

  [v44 addObserver:v41 selector:? name:? object:?];

  sub_24E601704(v72, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v73, &qword_27F228530, &unk_24F93C6E0);
  return v41;
}

uint64_t sub_24EEB50BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = *v6;
  v63 = a3;
  v64 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0, &unk_24F974810);
  v14 = *(v13 - 8);
  v61 = v13;
  v62 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = sub_24F9288E8();
  v60 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + qword_27F39CC30 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + qword_27F232C78) = 0;
  v20 = MEMORY[0x277D84F90];
  *(v6 + qword_27F39CC48) = MEMORY[0x277D84F90];
  *(v6 + qword_27F232C40) = v20;
  v21 = (v6 + qword_27F39CC50);
  *v21 = 0u;
  v21[1] = 0u;
  *(v6 + qword_27F232C48) = 0;
  *(v6 + qword_27F232C80) = 0;
  *(v6 + qword_27F39CC58) = 0;
  v22 = (v6 + qword_27F39CC60);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v6 + qword_27F39CC68);
  *v23 = 0;
  v23[1] = 0;
  *(v6 + qword_27F39CC70) = 0;
  v24 = MEMORY[0x277D84FA0];
  *(v6 + qword_27F232C60) = MEMORY[0x277D84FA0];
  *(v6 + qword_27F232C88) = 0;
  sub_24E60169C(a4, v6 + qword_27F39CC40, &qword_27F228530, &unk_24F93C6E0);
  *(v6 + qword_27F232C58) = a2;
  v65 = a6;
  sub_24E60169C(a6, v6 + qword_27F39CC38, &qword_27F229490, &unk_24F984C40);
  if (a5)
  {
    v58 = a4;
    v59 = v6;
    type metadata accessor for ASKBagContract(0);
    sub_24F928FD8();

    v57 = a1;
    sub_24F92A758();
    v25 = v66;
    v54 = "";
    v26 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    v27 = v60;
    v28 = *(v60 + 104);
    v56 = *MEMORY[0x277D21C38];
    v55 = v28;
    v28(v19);
    v53 = v26;
    sub_24F92A368();
    v60 = *(v27 + 8);
    (v60)(v19, v17);
    v29 = v61;
    sub_24F92A408();
    v52 = *(v62 + 8);
    v52(v16, v29);
    v30 = v66;
    type metadata accessor for FastImpressionsTracker();
    v31 = swift_allocObject();
    v31[3] = 0;
    swift_unknownObjectWeakInit();
    sub_24F929EB8();
    v62 = v25;
    swift_allocObject();
    v31[5] = sub_24F929E98();
    swift_allocObject();
    v31[6] = sub_24F929E98();
    v31[4] = v30;
    if (qword_27F210900 != -1)
    {
      swift_once();
    }

    v55(v19, v56, v17);
    sub_24F92A368();
    (v60)(v19, v17);
    sub_24F92A408();
    v52(v16, v29);
    v32 = v66;
    type metadata accessor for FastImpressionFlushGate();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33[4] = 0;
    v33[5] = 0;
    v33[2] = v32;
    v34 = v59;
    *(v59 + qword_27F232C50) = v33;
    v35 = sub_24EEB6508(&qword_27F22D210, type metadata accessor for FastImpressionsTracker, &protocol conformance descriptor for FastImpressionsTracker);
    *(v34 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v34 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v34 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v34 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];

    v37 = sub_24EC8415C(v36, v31, v35, 0);

    a4 = v58;
    v39 = v63;
    v38 = v64;
    if (v63)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(v6 + qword_27F232C50) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v6 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = v24;

    v37 = sub_24EC8415C(a1, 0, 0, 0);
    v39 = v63;
    v38 = v64;
    if (v63)
    {
LABEL_7:
      v40 = *(v38 + 960);

      *(v37 + qword_27F39CC48) = ShelfBasedPage.shelves.getter(v40, &protocol witness table for GenericPage);

      v41 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage;
      v42 = qword_27F39CC50;
      swift_beginAccess();
      sub_24E9CBF30(v39 + v41, v37 + v42, &qword_27F2129B0, &unk_24F945320);
      swift_endAccess();
      *(v37 + qword_27F232C48) = sub_24EEF1124(v40, &protocol witness table for GenericPage);

      (*(*v37 + 1312))(v39, 1);

      goto LABEL_10;
    }
  }

LABEL_10:
  swift_unknownObjectRetain();

  type metadata accessor for FastImpressionsTracker();
  v43 = swift_dynamicCastClass();
  if (v43)
  {
    v44 = v43;
    swift_beginAccess();
    *(v44 + 24) = &protocol witness table for BaseGenericPagePresenter<A>;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v45 = *(v37 + qword_27F232C50);
    if (v45)
    {
      v46 = swift_allocObject();
      swift_weakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = *(v38 + 960);
      *(v47 + 24) = v46;
      swift_beginAccess();
      v48 = *(v45 + 32);
      v49 = *(v45 + 40);
      *(v45 + 32) = sub_24EEB6500;
      *(v45 + 40) = v47;

      sub_24E824448(v48, v49);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_24EEB1DCC();
  sub_24E601704(v65, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(a4, &qword_27F228530, &unk_24F93C6E0);
  return v37;
}

uint64_t sub_24EEB5A50(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27F39CC30;
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24EEB5AB4()
{
  v1 = qword_27F39CC58;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EEB5B08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EEB5B58(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24EEB5B94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EEB064C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24EEB5C08@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24EEB5AB4();
}

double sub_24EEB5C90@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24EA09614(&qword_27F39CC68);
  a1[1] = v2;

  return result;
}

uint64_t sub_24EEB5CD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24EEB1228(v1, v2);
}

uint64_t sub_24EEB5D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EEB1288();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for GenericPagePresenter(uint64_t a1)
{
  result = qword_27F232C68;
  if (!qword_27F232C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEB5E34(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_24EEB62D8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EEB63D4()
{

  return swift_deallocObject();
}

uint64_t sub_24EEB6420()
{

  return swift_deallocObject();
}

uint64_t (*sub_24EEB6498())(uint64_t a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E965698;
}

uint64_t sub_24EEB6508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MetricsTopicProvider.init(bag:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ASKBagContract(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  v6 = sub_24F92A498();
  result = (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = 0;
  v8 = v4 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *a2 = v4;
  return result;
}

uint64_t MetricsTopicProvider.currentMetricsTopic.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  if (qword_27F210B88 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A3F8();
  (*(v5 + 8))(v7, v4);
  if (v9[1])
  {
    return v9[0];
  }

  if (qword_27F210B80 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  if (LOBYTE(v9[0]) == 1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x615F706D615F7078;
  }
}

uint64_t MetricsTopicProvider.anonymousMetricsTopics.getter()
{
  v0 = ASKBagContract.anonymousMetricsTopics.getter();
  v1 = sub_24F45D828(v0);

  return v1;
}

uint64_t sub_24EEB6950()
{
  v0 = sub_24E8039DC(&unk_2861C0E20);
  result = swift_arrayDestroy();
  qword_27F232D48 = v0;
  return result;
}

uint64_t MetricsTopicProvider.shouldHaveAnonymousEvents.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5[-v2];
  if (qword_27F210B80 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  return v5[15];
}

Swift::String __swiftcall MetricsTopicProvider.replacementTopic(for:)(Swift::String a1)
{
  object = a1._object;
  if (qword_27F2107B8 != -1)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
  }

  v2 = a1._countAndFlagsBits;
  if (sub_24F4D36F8(a1._countAndFlagsBits, object, qword_27F232D48))
  {
    v3 = MetricsTopicProvider.currentMetricsTopic.getter();
    object = v4;
  }

  else
  {

    v3 = v2;
  }

  v5 = object;
  result._object = v5;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_24EEB6B90(void *a1, uint64_t a2)
{
  v2 = sub_24EEB6BFC(a1, a2);

  return v2;
}

id sub_24EEB6BBC(void *a1)
{
  v2 = sub_24EEB6BFC(a1, v1);

  return v2;
}

void *sub_24EEB6BFC(void *a1, uint64_t a2)
{
  v4 = [a1 topic];
  v5 = sub_24F92B0D8();
  v7 = v6;

  if (qword_27F2107B8 != -1)
  {
    swift_once();
  }

  if (sub_24F4D36F8(v5, v7, qword_27F232D48))
  {

    *&v15 = a2;
    MetricsTopicProvider.currentMetricsTopic.getter();
  }

  v8 = sub_24F92B098();

  [a1 setTopic_];

  v9 = [a1 account];
  if (!v9)
  {
    v15 = 0u;
    v16 = 0u;
LABEL_14:
    sub_24E857CC8(&v15);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v9 ams:*MEMORY[0x277CEE150] accountFlagValueForAccountFlag:?];

  if (v11)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_14;
  }

  if (swift_dynamicCast() && (v13 & 1) != 0)
  {
    [a1 setAnonymous_];
  }

LABEL_15:
  if ([a1 isAnonymous])
  {
    [a1 setAccount_];
  }

  return a1;
}

uint64_t Collection.hasIndex(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v9 - v5;
  sub_24F92BBD8();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_24F92B4C8();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v7 & 1;
}

uint64_t Array.chunked(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v14 = 0;
    v15 = sub_24F92B648();
    v16 = a1;
    MEMORY[0x28223BE20](v15);
    v13[2] = a3;
    v13[3] = a1;
    v13[4] = a2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232D50, &qword_24F9AAF68);
    v7 = sub_24F92B6E8();
    v8 = sub_24EEB78FC();
    return sub_24EEB70FC(sub_24EEB78D8, v13, v6, v7, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
  }

  else
  {
    sub_24F92B6E8();
    sub_24F92CD98();
    swift_allocObject();
    v11 = sub_24F92B5C8();
    *v12 = a2;
    v14 = v11;
    sub_24F92B6E8();
    CGSizeMake();

    return v14;
  }
}

uint64_t sub_24EEB70FC(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v42 - v18;
  v19 = sub_24F92C4A8();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  MEMORY[0x28223BE20](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_24F92B408();
  v63 = sub_24F92C9B8();
  v58 = sub_24F92C9C8();
  sub_24F92C968();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_24F92B3F8();
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
      sub_24F92C4D8();
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
      sub_24F92C9A8();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_24F92C4D8();
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
      sub_24F92C9A8();
      sub_24F92C4D8();
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

uint64_t *sub_24EEB77F0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t **a5@<X8>)
{
  v5 = *result;
  v6 = (*result + a2);
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_24F92B648();
    if (result < v6)
    {
      result = sub_24F92B648();
      v6 = result;
    }

    if (v6 >= v5)
    {
      sub_24F92B748();
      sub_24F92C658();
      swift_getWitnessTable();
      result = sub_24F92B738();
      *a5 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24EEB78FC()
{
  result = qword_27F232D58;
  if (!qword_27F232D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232D50, &qword_24F9AAF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232D58);
  }

  return result;
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v17[-v7];
  sub_24F92BBD8();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_24F92B4C8();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v10 = sub_24F92BC88();
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

uint64_t Collection.asDictionary<A, B>(key:value:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24F92AE08();
  sub_24F92AEA8();
  sub_24F92B488();
  return v6;
}

uint64_t sub_24EEB7D28(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[1] = a3;
  v26[2] = a7;
  v26[3] = a1;
  v7 = *a3;
  v26[0] = a4;
  v8 = *MEMORY[0x277D84DE8];
  v9 = *(*a4 + *MEMORY[0x277D84DE8] + 8);
  v10 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  v17 = *(v7 + v8 + 8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v26 - v23;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  (*(v18 + 16))(v21, v24, v17);
  (*(v13 + 16))(v12, v16, v9);
  (*(v13 + 56))(v12, 0, 1, v9);
  sub_24F92AEA8();
  sub_24F92AED8();
  (*(v13 + 8))(v16, v9);
  return (*(v18 + 8))(v24, v17);
}

uint64_t Collection.asDictionary<A, B>(key:value:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_24F92AE08();
  sub_24F92AEA8();
  sub_24F92B488();
  return v8;
}

uint64_t sub_24EEB8108(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[0] = a7;
  v29[1] = a5;
  v29[2] = a4;
  v30 = a3;
  v31 = a9;
  v32 = a1;
  v11 = *(*a5 + *MEMORY[0x277D84DE8] + 8);
  v12 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v29 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v29 - v17;
  v19 = *(a7 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v29 - v25;
  v30(a2, v24);
  swift_getAtKeyPath();
  v27 = v29[0];
  (*(v19 + 16))(v22, v26, v29[0]);
  (*(v15 + 16))(v14, v18, v11);
  (*(v15 + 56))(v14, 0, 1, v11);
  sub_24F92AEA8();
  sub_24F92AED8();
  (*(v15 + 8))(v18, v11);
  return (*(v19 + 8))(v26, v27);
}

uint64_t Collection.asDictionary<A, B>(key:value:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_24F92AE08();
  sub_24F92AEA8();
  sub_24F92B488();
  return v8;
}

uint64_t sub_24EEB84C8(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[2] = a5;
  v29 = a4;
  v28[1] = a3;
  v30 = a9;
  v31 = a1;
  v11 = *a3;
  v12 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v28 - v13;
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v11 + *MEMORY[0x277D84DE8] + 8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v28 - v25;
  swift_getAtKeyPath();
  v29(a2);
  (*(v20 + 16))(v23, v26, v19);
  (*(v15 + 16))(v14, v18, a7);
  (*(v15 + 56))(v14, 0, 1, a7);
  sub_24F92AEA8();
  sub_24F92AED8();
  (*(v15 + 8))(v18, a7);
  return (*(v20 + 8))(v26, v19);
}

uint64_t Collection.asDictionary<A, B>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24F92AE08();
  sub_24F92AEA8();
  sub_24F92B488();
  return v10;
}

uint64_t sub_24EEB8860(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a8;
  v32 = a4;
  v34 = a6;
  v35 = a5;
  v33 = a3;
  v36 = a11;
  v37 = a1;
  v13 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = *(a9 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a8 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v30 - v26;
  v33(a2, v25);
  v35(a2);
  v28 = v31;
  (*(v20 + 16))(v23, v27, v31);
  (*(v16 + 16))(v15, v19, a9);
  (*(v16 + 56))(v15, 0, 1, a9);
  sub_24F92AEA8();
  sub_24F92AED8();
  (*(v16 + 8))(v19, a9);
  return (*(v20 + 8))(v27, v28);
}

uint64_t Collection.itemCount(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v26 - v7;
  v9 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v26 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  (*(v12 + 16))(v15, v27, a3, v17);
  sub_24F92B3F8();
  swift_getAssociatedConformanceWitness();
  v20 = 0;
  v21 = (v6 + 48);
  v22 = (v6 + 32);
  v23 = (v6 + 8);
LABEL_2:
  v27 = v20;
  while (1)
  {
    sub_24F92C4D8();
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
  MEMORY[0x28223BE20](a1);
  v45 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92C4A8();
  v10 = sub_24F92C4A8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v40 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = v40 - v19;
  (*(v13 + 16))(v16, v50, a3, v18);
  v21 = v20;
  sub_24F92B3F8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = 0;
  v43 = (v7 + 8);
  v44 = (v7 + 32);
  v24 = (v7 + 48);
  v40[1] = v9 - 8;
LABEL_2:
  v42 = v23;
  sub_24F92C4D8();
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

      sub_24F92C4D8();
      if (v26(v12, 1, v9) == 1)
      {
        break;
      }
    }
  }

  (*(v41 + 8))(v21, AssociatedTypeWitness);
  return v42;
}

Swift::Void __swiftcall LayerVisualEffect.apply(to:)(CALayer to)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_24EEB9530(*v1, v4, to.super.isa);
  v7 = [v6 CGColor];
  MEMORY[0x253050C20](v3, v4);
  MEMORY[0x253050C20](46, 0xE100000000000000);
  MEMORY[0x253050C20](0x6C6F437475706E69, 0xEB0000000030726FLL);
  v8 = sub_24F92B098();

  [(objc_class *)to.super.isa setValue:v7 forKeyPath:v8];

  v9 = [v5 CGColor];
  MEMORY[0x253050C20](v3, v4);
  MEMORY[0x253050C20](46, 0xE100000000000000);
  MEMORY[0x253050C20](0x6C6F437475706E69, 0xEB0000000031726FLL);
  v10 = sub_24F92B098();

  [(objc_class *)to.super.isa setValue:v9 forKeyPath:v10];
}

GameStoreKit::LayerVisualEffect __swiftcall LayerVisualEffect.init(filterType:vibrantColor:tintColor:)(Swift::String filterType, UIColor vibrantColor, UIColor tintColor)
{
  *v3 = filterType;
  *(v3 + 16) = vibrantColor;
  *(v3 + 24) = tintColor;
  result.filterType = filterType;
  result.tintColor = tintColor;
  result.vibrantColor = vibrantColor;
  return result;
}

void sub_24EEB9530(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_24EEB99AC(a1, a2, a3);
  if (v7)
  {
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
    v9 = sub_24F92B098();
    v10 = [v8 initWithType_];

    v11 = [v6 CGColor];
    v12 = sub_24F92B098();
    [v10 setValue:v11 forKey:v12];

    v13 = [v5 CGColor];
    v14 = sub_24F92B098();
    [v10 setValue:v13 forKey:v14];

    v15 = [a3 filters];
    if (v15)
    {
      v16 = v15;
      sub_24F92B5A8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 56) = sub_24E69A5C4(0, &qword_27F232DA0, 0x277CD9EA0);
    *(inited + 32) = v10;
    v18 = v10;
    sub_24EA0AEE8(inited);
    v19 = sub_24F92B588();

    [a3 setFilters_];
  }
}

Swift::Void __swiftcall LayerVisualEffect.unapply(to:)(CALayer to)
{
  v3 = *v1;
  v4 = v1[1];
  sub_24EEB99AC(*v1, v4, to.super.isa);
  if (v5)
  {

    v6 = [objc_opt_self() clearColor];
    v7 = [v6 CGColor];

    v8 = v7;
    MEMORY[0x253050C20](v3, v4);
    MEMORY[0x253050C20](46, 0xE100000000000000);
    MEMORY[0x253050C20](0x6C6F437475706E69, 0xEB0000000030726FLL);
    v9 = sub_24F92B098();

    [(objc_class *)to.super.isa setValue:v8 forKeyPath:v9];

    v10 = v8;
    MEMORY[0x253050C20](v3, v4);
    MEMORY[0x253050C20](46, 0xE100000000000000);
    MEMORY[0x253050C20](0x6C6F437475706E69, 0xEB0000000031726FLL);
    v11 = sub_24F92B098();

    [(objc_class *)to.super.isa setValue:v10 forKeyPath:v11];
  }
}

void sub_24EEB99AC(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 filters];
  v6 = MEMORY[0x277D84F70];
  if (v5)
  {
    v7 = v5;
    v8 = sub_24F92B5A8();

    v9 = *(v8 + 16);
    if (!v9)
    {
LABEL_19:

      return;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
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
    sub_24E643A9C(v11, v26);
    sub_24E69A5C4(0, &qword_27F232DA0, 0x277CD9EA0);
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
        v18 = sub_24F92B0D8();
        v20 = v19;

        v21 = v18;
        a2 = v17;
        if (v21 == v16 && v20 == v17)
        {

          goto LABEL_19;
        }

        a1 = v16;
        v23 = sub_24F92CE08();

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
  if (!v6 && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
  v7 = v2;
  v8 = v4;
  v9 = sub_24F92C408();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v3;
  v11 = v5;
  v12 = sub_24F92C408();

  return v12 & 1;
}

uint64_t sub_24EEB9C74(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
  v7 = v2;
  v8 = v4;
  v9 = sub_24F92C408();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v3;
  v11 = v5;
  v12 = sub_24F92C408();

  return v12 & 1;
}

uint64_t sub_24EEB9D50()
{
  v0 = sub_24F92B0D8();
  v2 = v1;
  sub_24E69A5C4(0, &qword_27F2394A0, 0x277D75348);
  v3 = sub_24F92C3A8();
  result = sub_24F92C3A8();
  qword_27F232D60 = v0;
  *algn_27F232D68 = v2;
  qword_27F232D70 = v3;
  unk_27F232D78 = result;
  return result;
}

id static LayerVisualEffect.darkening.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F2107C0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_27F232D68;
  v3 = qword_27F232D70;
  v2 = unk_27F232D78;
  v7 = unk_27F232D78;
  *a1 = qword_27F232D60;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;

  v4 = v3;

  return v7;
}

uint64_t sub_24EEB9E88()
{
  v0 = sub_24F92B0D8();
  v2 = v1;
  sub_24E69A5C4(0, &qword_27F2394A0, 0x277D75348);
  v3 = sub_24F92C3A8();
  v4 = [v3 colorWithAlphaComponent_];

  result = sub_24F92C3A8();
  qword_27F232D80 = v0;
  *algn_27F232D88 = v2;
  qword_27F232D90 = v4;
  unk_27F232D98 = result;
  return result;
}

id static LayerVisualEffect.plusL.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F2107C8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_27F232D88;
  v3 = qword_27F232D90;
  v2 = unk_27F232D98;
  v7 = unk_27F232D98;
  *a1 = qword_27F232D80;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;

  v4 = v3;

  return v7;
}

double OverlayCapsuleLockup.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double OverlayCapsuleLockup.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for OverlayCapsuleLockup(0);
  sub_24E60169C(v1 + *(v3 + 40), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t OverlayCapsuleLockup.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for OverlayCapsuleLockup(0);
  sub_24E60169C(v1 + *(v6 + 44), v5, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v5, a1);
}

uint64_t sub_24EEBA318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for OverlayCapsuleLockup(0);
  sub_24E60169C(a1 + *(v7 + 44), v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v6, a2);
}

uint64_t sub_24EEBA460()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 6)
  {
    v3 = 0x4D747865746E6F63;
  }

  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 2)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = 0x726F737365636361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EEBA560@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EEBBF0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EEBA588(uint64_t a1)
{
  v2 = sub_24EEBA9E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EEBA5C4(uint64_t a1)
{
  v2 = sub_24EEBA9E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayCapsuleLockup.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DA8, &unk_24F9AB000);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EEBA9E4();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for OverlayCapsuleLockup(0);
    v8[14] = 1;
    type metadata accessor for OverlayButtonLabelAccessory(0);
    sub_24EEBAA38(&qword_27F232DB8, type metadata accessor for OverlayButtonLabelAccessory, &unk_24F9D7B44);
    sub_24F92CCF8();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F92CCB8();
    v8[10] = 5;
    sub_24F929608();
    sub_24EEBAA38(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[8] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EEBA9E4()
{
  result = qword_27F232DB0;
  if (!qword_27F232DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232DB0);
  }

  return result;
}

uint64_t sub_24EEBAA38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OverlayCapsuleLockup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v43);
  v44 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0, &qword_24F9AB010);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC8, &qword_24F9AB018);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - v8;
  v10 = type metadata accessor for OverlayCapsuleLockup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for OverlayButtonLabelAccessory(0);
  v16 = *(*(v15 - 8) + 56);
  v54 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = v10[9];
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v52 = v17;
  v19(&v12[v17], 1, 1, v18);
  v20 = &v12[v10[10]];
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  sub_24E61DA68(&v55, v20, qword_27F21B590, &unk_24F93BE30);
  v21 = v10[11];
  v22 = sub_24F92A6D8();
  v23 = *(*(v22 - 8) + 56);
  v51 = v21;
  v23(&v12[v21], 1, 1, v22);
  v24 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24EEBA9E4();
  v48 = v9;
  v25 = v50;
  sub_24F92D108();
  if (v25)
  {
    v28 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_24E601704(&v12[v28], &qword_27F232DC0, &qword_24F9AB010);
    v29 = v52;

    sub_24E601704(&v12[v29], &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v20, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v12[v51], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v50 = v18;
    v41 = v10;
    v27 = v45;
    v26 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v30 = v56;
    *v12 = v55;
    *(v12 + 1) = v30;
    *(v12 + 4) = v57;
    LOBYTE(v55) = 1;
    sub_24EEBAA38(&qword_27F232DD0, type metadata accessor for OverlayButtonLabelAccessory, &unk_24F9D7B1C);
    sub_24F92CC18();
    v31 = v47;
    sub_24E61DA68(v27, &v12[v54], &qword_27F232DC0, &qword_24F9AB010);
    LOBYTE(v55) = 2;
    v32 = sub_24F92CC28();
    v33 = v41;
    v34 = &v12[v41[6]];
    *v34 = v32;
    v34[1] = v35;
    LOBYTE(v55) = 3;
    v36 = sub_24F92CBC8();
    v37 = &v12[v33[7]];
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v55) = 4;
    v12[v33[8]] = sub_24F92CBD8();
    LOBYTE(v55) = 5;
    sub_24EEBAA38(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v26, &v12[v52], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v58 = 6;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v55, v20, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v55) = 7;
    sub_24E65CAA0();
    v39 = v44;
    sub_24F92CC68();
    (*(v31 + 8))(v48, v49);
    sub_24E61DA68(v39, &v12[v51], &qword_27F215440, &unk_24F942BD0);
    sub_24EEBC468(v12, v42, type metadata accessor for OverlayCapsuleLockup);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_24EEBB32C(v12);
  }
}

uint64_t sub_24EEBB32C(uint64_t a1)
{
  v2 = type metadata accessor for OverlayCapsuleLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EEBB3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 44), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

double sub_24EEBB4B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24EEBB508@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OverlayCapsuleLockup(0);
  sub_24E60169C(a1 + *(v4 + 40), v7, qword_27F24EC90, &unk_24F93C1D0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24EEBB620(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0, &qword_24F9AB010);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24EEBB7C4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0, &qword_24F9AB010);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_24EEBB954(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24EEBBAD8(319, &qword_27F232DF0, type metadata accessor for OverlayButtonLabelAccessory);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F2169A0, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_24EEBBAD8(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
            if (v6 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
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

void sub_24EEBBAD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_24EEBBB40()
{
  result = qword_27F232DF8;
  if (!qword_27F232DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232DF8);
  }

  return result;
}

unint64_t sub_24EEBBB98()
{
  result = qword_27F232E00;
  if (!qword_27F232E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232E00);
  }

  return result;
}

unint64_t sub_24EEBBBF0()
{
  result = qword_27F232E08;
  if (!qword_27F232E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232E08);
  }

  return result;
}

double sub_24EEBBC44@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for OverlayCapsuleLockup(0);
  v6 = v5[5];
  v7 = type metadata accessor for OverlayButtonLabelView(0);
  sub_24E60169C(a1 + v6, &a2[v7[5]], &qword_27F232DC0, &qword_24F9AB010);
  v8 = (a1 + v5[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (a1 + v5[7]);
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v11) = *(a1 + v5[8]);
  *a2 = 0;
  v14 = &a2[v7[6]];
  *v14 = v9;
  v14[1] = v10;
  v15 = &a2[v7[7]];
  *v15 = v12;
  v15[1] = v13;
  a2[v7[8]] = v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232E30, &qword_24F9AB2E8);
  v17 = MEMORY[0x277CE1260];
  sub_24EEBC468(v2, &a2[*(v16 + 36)], MEMORY[0x277CE1260]);
  v18 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232E38, &unk_24F9AB2F0) + 36)];
  sub_24EEBC468(v2, v18, v17);
  v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B698, &qword_24F984BC0) + 36)] = 0;

  return result;
}

uint64_t sub_24EEBBD9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F9271D8();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = v3;
  *(a1 + 72) = sub_24EEBAA38(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 40));
  return sub_24EEBC468(v1, boxed_opaque_existential_1, MEMORY[0x277CE1260]);
}

uint64_t sub_24EEBBE34(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24EEBC468(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayCapsuleLockupComponent);
  sub_24EEBAA38(&qword_27F232E20, type metadata accessor for OverlayCapsuleLockupComponent, &unk_24F9AB280);
  return sub_24F9218E8();
}

uint64_t sub_24EEBBF0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA61790 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
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

uint64_t sub_24EEBC1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9271D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EEBC240(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9271D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EEBC2D0(uint64_t a1)
{
  result = sub_24F9271D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EEBC468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EEBC4D4()
{
  result = qword_27F232E40;
  if (!qword_27F232E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232E38, &unk_24F9AB2F0);
    sub_24EEBC58C();
    sub_24E602068(&qword_27F21B720, &qword_27F21B698, &qword_24F984BC0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232E40);
  }

  return result;
}

unint64_t sub_24EEBC58C()
{
  result = qword_27F232E48;
  if (!qword_27F232E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232E30, &qword_24F9AB2E8);
    sub_24EEBAA38(&qword_27F232E50, type metadata accessor for OverlayButtonLabelView, &unk_24F9D80F0);
    sub_24E602068(&qword_27F232E58, qword_27F232E60, &unk_24F9AB300, &unk_24FA0D448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232E48);
  }

  return result;
}

void sub_24EEBC67C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_24E6C5550();
    if (v2 <= 0x3F)
    {
      sub_24E684184(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_24E684120(319);
        if (v4 <= 0x3F)
        {
          sub_24E684184(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
          if (v5 <= 0x3F)
          {
            sub_24E654514();
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

uint64_t sub_24EEBC7A4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v30 = *(a3 + 32);
  v5 = *(v30 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v31 = *(sub_24F923E98() - 8);
  v8 = *(v31 + 64);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v32 = v8;
  v9 = *(sub_24F925218() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_24F923F78() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v5 + 64);
  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = v11 + 1;
  }

  if (v15 <= 8)
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_38;
  }

  v16 = *(v31 + 80) & 0xF8 | 7;
  v17 = (((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16;
  v18 = *(v9 + 80) & 0xF8 | 7;
  v19 = *(v12 + 80) & 0xF8 | 7;
  v20 = ((((v13 + ((v15 + 1 + v19 + ((v15 + 1 + v18 + ((v32 + v18 + v17 + 1) & ~v18)) & ~v18)) & ~v19) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v7 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_38;
      }
    }
  }

  else if (!v24 || (v25 = *(a1 + v20)) == 0)
  {
LABEL_38:
    if (v6 < 0x7FFFFFFF)
    {
      v29 = *((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }

    else
    {
      v28 = *(v5 + 48);

      return v28(a1, v6, v30);
    }
  }

  v27 = v25 - 1;
  if (v21)
  {
    v27 = 0;
    LODWORD(v21) = *a1;
  }

  return v7 + (v21 | v27) + 1;
}

void sub_24EEBCADC(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v28 = v5;
  v29 = *(v5 + 84);
  if (v29 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v7 = *(sub_24F923E98() - 8);
  if (*(v7 + 64) <= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  v9 = *(sub_24F925218() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_24F923F78() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v5 + 64);
  v15 = *(v7 + 80) & 0xF8 | 7;
  v16 = (((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15;
  v17 = *(v9 + 80) & 0xF8 | 7;
  v18 = (v8 + v17 + v16 + 1) & ~v17;
  if (v10)
  {
    v19 = v11;
  }

  else
  {
    v19 = v11 + 1;
  }

  if (v19 <= 8)
  {
    v19 = 8;
  }

  v20 = *(v12 + 80) & 0xF8 | 7;
  v21 = ((((v13 + ((v19 + 1 + v20 + ((v19 + 1 + v17 + v18) & ~v17)) & ~v20) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v24 = 0;
  }

  else
  {
    if (((((v13 + ((v19 + 1 + v20 + ((v19 + 1 + v17 + v18) & ~v17)) & ~v20) + 8) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v6 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  if (a2 > v6)
  {
    if (v21)
    {
      v25 = 1;
    }

    else
    {
      v25 = a2 - v6;
    }

    if (v21)
    {
      bzero(a1, v21);
      *a1 = ~v6 + a2;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v21) = v25;
      }

      else
      {
        *(a1 + v21) = v25;
      }
    }

    else if (v24)
    {
      *(a1 + v21) = v25;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v21) = 0;
  }

  else if (v24)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v29 < 0x7FFFFFFF)
  {
    v27 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v27 = a2 & 0x7FFFFFFF;
      v27[1] = 0;
    }

    else
    {
      *v27 = a2 - 1;
    }
  }

  else
  {
    v26 = *(v28 + 56);

    v26(a1);
  }
}

uint64_t sub_24EEBCEB4(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_24F9252E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F925808();
  *&v17[1] = a3;
  *&v17[2] = a4;
  *&v17[3] = a5;
  *&v17[4] = a6;
  v18 = 0;
  sub_24F9252D8();
  MEMORY[0x25304C420](v15, a1, v12, a2);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_24EEBCFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v32 = a11;
  v18 = type metadata accessor for AdaptiveSideBySideContainerView(0, &v28);
  v19 = v18[19];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v20 = v18[20];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v21 = v18[21];
  *(a9 + v21) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v22 = v18[22];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *(a9 + v18[23]) = 0;
  v23 = a9 + v18[24];
  v33 = 1;
  sub_24F926F28();
  v24 = v29;
  *v23 = v28;
  *(v23 + 8) = v24;
  result = (*(*(a8 - 8) + 32))(a9, a1, a8);
  v26 = (a9 + v18[17]);
  *v26 = a2;
  v26[1] = a3;
  v27 = (a9 + v18[18]);
  *v27 = a4;
  v27[1] = a5;
  return result;
}

uint64_t sub_24EEBD1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F9236C8();
  v17 = MEMORY[0x28223BE20](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_24F9236D8();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_24F923AF8();
}

uint64_t sub_24EEBD368(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24F9252E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0uLL;
  v13 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_24F923318();
    *(&v12 + 1) = v14;
    *(&v13 + 1) = v15;
  }

  v17[0] = v12;
  v17[1] = v13;
  v18 = a3 & 1;
  sub_24F9252D8();
  MEMORY[0x25304C420](v11, a4, v8, a5);
  return (*(v9 + 8))(v11, v8);
}

double sub_24EEBD4D4()
{
  result = 40.0;
  if (*v0 != 3)
  {
    return 0.0;
  }

  return result;
}

double sub_24EEBD51C(uint64_t a1)
{
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      goto LABEL_3;
    }
  }

  else if (!*v1)
  {
LABEL_3:
    sub_24F922318();
    return result;
  }

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  return result;
}

uint64_t sub_24EEBD564()
{
  v1 = sub_24F924258();
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  if (*v0 == 3)
  {
    v6 = *(v2 + 20);
    v7 = *MEMORY[0x277CE0118];
    v8 = sub_24F924B38();
    (*(*(v8 - 8) + 104))(&v4[v6], v7, v8);
    __asm { FMOV            V0.2D, #8.0 }

    *v4 = _Q0;
    sub_24EEC31F4(&qword_27F229928, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
    return sub_24F927348();
  }

  return v5;
}

double sub_24EEBD688(double result)
{
  if (*v1 - 1 >= 2)
  {
    if (*v1)
    {
      v2 = 0.4;
    }

    else
    {
      v2 = 0.7;
    }

    return result * v2;
  }

  return result;
}

double sub_24EEBD6BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v42 = v7;
  *(v7 + 16) = *(a1 + 16);
  v41 = *(a1 + 24);
  *(v7 + 24) = v41;
  v8 = *(a1 + 40);
  *(v7 + 40) = v8;
  v40 = *(a1 + 48);
  *(v7 + 48) = v40;
  (*(v3 + 32))(v7 + v6, v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EE8, &qword_24F9AB490);
  v9 = sub_24F924038();
  *&v41 = v9;
  v10 = sub_24E602068(&qword_27F232EF0, &qword_27F232EE8, &qword_24F9AB490, MEMORY[0x277CE08A0]);
  v71 = v40;
  v72 = v10;
  v11 = MEMORY[0x277CDFAD8];
  *&v40 = swift_getWitnessTable();
  v57 = v9;
  v58 = v40;
  v39[3] = MEMORY[0x277CDEC10];
  swift_getOpaqueTypeMetadata2();
  v39[2] = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EF8, &qword_24F9AB498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00, &unk_24F9AB4A0);
  sub_24F924038();
  sub_24F924E38();
  sub_24E602068(&qword_27F232F08, &qword_27F232EF8, &qword_24F9AB498, MEMORY[0x277CDF500]);
  v12 = sub_24F923AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  v13 = sub_24F924038();
  v14 = sub_24E602068(&qword_27F232F10, &qword_27F232EF8, &qword_24F9AB498, MEMORY[0x277CDF510]);
  v15 = sub_24E602068(&qword_27F232F18, &qword_27F232F00, &unk_24F9AB4A0, MEMORY[0x277CDF4F0]);
  v69 = v8;
  v70 = v15;
  WitnessTable = swift_getWitnessTable();
  v68 = v8;
  v16 = swift_getWitnessTable();
  v65 = v14;
  v66 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_24E6695B8();
  v19 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  v63 = v17;
  v64 = v19;
  v20 = swift_getWitnessTable();
  v57 = v12;
  v58 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v59 = v13;
  v60 = v17;
  v61 = v18;
  v62 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F92C4A8();
  v57 = v12;
  v58 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v59 = v13;
  v60 = v17;
  v61 = v18;
  v62 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = MEMORY[0x277CDF918];
  v54 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F924B98();
  v21 = sub_24F924038();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F20, &qword_24F9AB4B0);
  v57 = v41;
  v58 = v40;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = MEMORY[0x277CE0880];
  v39[1] = v11;
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v50 = v23;
  v51 = v24;
  v25 = swift_getWitnessTable();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1E8, &qword_24F986D60);
  v27 = sub_24EB8F770();
  v57 = v26;
  v58 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v57 = v21;
  v58 = v22;
  v59 = v25;
  v60 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = v21;
  v58 = v22;
  v59 = v25;
  v60 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v57 = OpaqueTypeMetadata2;
  v58 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v57 = OpaqueTypeMetadata2;
  v58 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = MEMORY[0x277CE1350];
  v57 = v21;
  v58 = MEMORY[0x277CE1350];
  v59 = v31;
  v60 = v25;
  v34 = MEMORY[0x277CE1340];
  v61 = MEMORY[0x277CE1340];
  v62 = v32;
  swift_getOpaqueTypeMetadata2();
  sub_24F9252E8();
  sub_24F924038();
  sub_24F924038();
  v57 = v21;
  v58 = v33;
  v59 = v31;
  v60 = v25;
  v61 = v34;
  v62 = v32;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24EEC31F4(&qword_27F2156E0, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v48 = v35;
  v49 = v36;
  v46 = swift_getWitnessTable();
  v47 = v36;
  swift_getWitnessTable();
  v44 = sub_24F923B78();
  v45 = v37;
  sub_24F923B88();
  swift_getWitnessTable();
  sub_24E7896B8();

  v44 = v57;
  v45 = v58;
  sub_24E7896B8();

  return result;
}

uint64_t sub_24EEBDF0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v193 = a8;
  v196 = a7;
  v195 = a6;
  v192 = a5;
  v191 = a2;
  v156 = a1;
  v184 = a9;
  v194 = a4;
  Description = a4[-1].Description;
  MEMORY[0x28223BE20](a1);
  v177 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EE8, &qword_24F9AB490);
  v12 = sub_24F924038();
  v188 = v12;
  v176 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v175 = &v150 - v13;
  v14 = sub_24E602068(&qword_27F232EF0, &qword_27F232EE8, &qword_24F9AB490, MEMORY[0x277CE08A0]);
  v222 = a7;
  v223 = v14;
  WitnessTable = swift_getWitnessTable();
  v208 = v12;
  v209 = WitnessTable;
  v186 = MEMORY[0x277CDEC10];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v180 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v178 = &v150 - v16;
  v181 = v17;
  v189 = sub_24F924038();
  v183 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v182 = &v150 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EF8, &qword_24F9AB498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00, &unk_24F9AB4A0);
  v190 = a3;
  sub_24F924038();
  sub_24F924E38();
  sub_24E602068(&qword_27F232F08, &qword_27F232EF8, &qword_24F9AB498, MEMORY[0x277CDF500]);
  v19 = sub_24F923AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  v20 = sub_24F924038();
  v21 = sub_24E602068(&qword_27F232F10, &qword_27F232EF8, &qword_24F9AB498, MEMORY[0x277CDF510]);
  v22 = sub_24E602068(&qword_27F232F18, &qword_27F232F00, &unk_24F9AB4A0, MEMORY[0x277CDF4F0]);
  v23 = v195;
  v220 = v195;
  v221 = v22;
  v218 = swift_getWitnessTable();
  v219 = v23;
  v24 = swift_getWitnessTable();
  v216 = v21;
  v217 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_24E6695B8();
  v27 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  v214 = v25;
  v215 = v27;
  v28 = swift_getWitnessTable();
  v208 = v19;
  v209 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v210 = v20;
  v211 = v25;
  v212 = v26;
  v213 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  v29 = sub_24F92C4A8();
  v208 = v19;
  v209 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v210 = v20;
  v211 = v25;
  v212 = v26;
  v213 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v207 = MEMORY[0x277CDF918];
  v205 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v172 = v29;
  v162 = v30;
  sub_24F924B98();
  v31 = sub_24F924038();
  v171 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v170 = &v150 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F20, &qword_24F9AB4B0);
  v208 = v188;
  v209 = WitnessTable;
  v158 = swift_getOpaqueTypeConformance2();
  v203 = v158;
  v204 = MEMORY[0x277CE0880];
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v159 = v34;
  v201 = v34;
  v202 = v35;
  v36 = swift_getWitnessTable();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1E8, &qword_24F986D60);
  v38 = sub_24EB8F770();
  v208 = v37;
  v209 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  v208 = v31;
  v209 = v33;
  v210 = v36;
  v211 = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v208 = v31;
  v209 = v33;
  v210 = v36;
  v211 = v39;
  v41 = swift_getOpaqueTypeConformance2();
  v208 = v40;
  v209 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v208 = v40;
  v209 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v174 = v31;
  v208 = v31;
  v209 = MEMORY[0x277CE1350];
  v157 = v42;
  v210 = v42;
  v173 = v36;
  v211 = v36;
  v212 = MEMORY[0x277CE1340];
  v213 = v43;
  v186 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v160 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v185 = &v150 - v45;
  sub_24F9252E8();
  v161 = v44;
  v46 = sub_24F924038();
  v166 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v163 = &v150 - v47;
  v167 = v48;
  v169 = sub_24F924038();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v164 = &v150 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v165 = &v150 - v51;
  v52 = sub_24F925218();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v151 = &v150 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  v56 = v55 - 8;
  MEMORY[0x28223BE20](v55);
  v58 = &v150 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v59 - 8);
  v152 = &v150 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v63 = &v150 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = (&v150 - v65);
  sub_24F923998();
  v68 = v67;
  v70 = v69;
  sub_24F923988();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v193;
  v80 = v193[1];
  v81 = v192;
  v156 = v193 + 1;
  v155 = v80;
  v154 = v80(v192, v193);
  (v79[2])(&v208, v81, v79);
  v153 = 0x5040302010001uLL >> (8 * v208);
  v208 = v190;
  v209 = v194;
  v210 = v81;
  v211 = v195;
  v212 = v196;
  v213 = v79;
  v82 = type metadata accessor for AdaptiveSideBySideContainerView(0, &v208);
  sub_24F769764(v66);
  (*(v53 + 104))(v63, *MEMORY[0x277CE0558], v52);
  (*(v53 + 56))(v63, 0, 1, v52);
  v83 = *(v56 + 56);
  sub_24EDEBCCC(v66, v58);
  sub_24EDEBCCC(v63, &v58[v83]);
  v84 = *(v53 + 48);
  if (v84(v58, 1, v52) == 1)
  {
    sub_24E601704(v63, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v66, &qword_27F215598, &qword_24F945EF0);
    v85 = v84(&v58[v83], 1, v52);
    v86 = v194;
    if (v85 == 1)
    {
      v87 = sub_24E601704(v58, &qword_27F215598, &qword_24F945EF0);
      v88 = 1;
LABEL_7:
      v89 = v193;
      v90 = v192;
      goto LABEL_9;
    }

LABEL_6:
    v87 = sub_24E601704(v58, &unk_27F254F20, &qword_24F940790);
    v88 = 0;
    goto LABEL_7;
  }

  sub_24EDEBCCC(v58, v152);
  if (v84(&v58[v83], 1, v52) == 1)
  {
    sub_24E601704(v63, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v66, &qword_27F215598, &qword_24F945EF0);
    (*(v53 + 8))(v152, v52);
    v86 = v194;
    goto LABEL_6;
  }

  v91 = &v58[v83];
  v92 = v151;
  (*(v53 + 32))(v151, v91, v52);
  sub_24EEC31F4(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v150 = v82;
  v93 = v152;
  v88 = sub_24F92AFF8();
  v94 = *(v53 + 8);
  v94(v92, v52);
  sub_24E601704(v63, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v66, &qword_27F215598, &qword_24F945EF0);
  v95 = v93;
  v82 = v150;
  v94(v95, v52);
  v87 = sub_24E601704(v58, &qword_27F215598, &qword_24F945EF0);
  v89 = v193;
  v90 = v192;
  v86 = v194;
LABEL_9:
  if (v68 <= 1580.0)
  {
    v96 = v68;
  }

  else
  {
    v96 = 1580.0;
  }

  v97 = 0.0;
  v98 = v191;
  if (v153 <= 2u)
  {
    if (!v153)
    {
      goto LABEL_43;
    }

    v97 = 16.0;
    if (v153 == 1)
    {
      if (v88)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if ((v88 & 1) == 0)
    {
      v97 = dbl_24F9AB680[sub_24E6B00B4(v96)];
    }

    goto LABEL_30;
  }

  if (v153 == 3)
  {
    v87 = sub_24E6B00B4(v96);
    if (v87 < 4u)
    {
      goto LABEL_43;
    }

    if (v88)
    {
      v97 = 16.0;
    }

    else
    {
      v97 = 34.0;
    }

LABEL_30:
    v87 = [objc_opt_self() _readableWidth];
    v100 = v96 - v99;
    if (v100 > 0.0)
    {
      v101 = v100 * 0.5;
      if (v101 > v97)
      {
        v97 = v101;
      }
    }

    goto LABEL_43;
  }

  if (v153 == 4)
  {
    if ((v88 & 1) == 0)
    {
LABEL_41:
      v87 = sub_24E6B00B4(v96);
      v97 = dbl_24F9AB680[v87];
      goto LABEL_43;
    }

    v97 = 16.0;
    if (v96 + -420.0 > 0.0)
    {
      if ((v96 + -420.0) * 0.5 > 16.0)
      {
        v97 = (v96 + -420.0) * 0.5;
      }

      else
      {
        v97 = 16.0;
      }
    }
  }

  else
  {
    if (qword_27F210748 != -1)
    {
      swift_once();
    }

    v87 = swift_beginAccess();
    if (byte_27F2301A8)
    {
      if (v88)
      {
        if (qword_27F210D60 != -1)
        {
          v87 = swift_once();
        }

        v97 = *&qword_27F39D300;
      }

      else if (v96 < 0.0 || v96 >= 376.0)
      {
        if (v96 >= 428.0 || v96 < 376.0)
        {
          v97 = 46.0;
        }

        else
        {
          v97 = 38.0;
        }
      }

      else
      {
        v97 = 44.0;
      }
    }

    else
    {
      v97 = 40.0;
    }
  }

LABEL_43:
  v102 = v177;
  (*(v98 + *(v82 + 72)))(v87, v68, v70, v72, v74, v76, v78);
  swift_getKeyPath();
  v103 = swift_allocObject();
  v104 = v154 & 1;
  *(v103 + 16) = v104;
  v105 = v175;
  sub_24F9266A8();

  Description[1](v102, v86);
  v106 = sub_24F925818();
  v107 = v178;
  v108 = v188;
  MEMORY[0x25304C0E0](v104, v106, v188, WitnessTable);
  (*(v176 + 8))(v105, v108);
  if ((v155(v90, v89) & 1) != 0 || (v109 = sub_24F925818(), sub_24F925848(), sub_24F925848(), sub_24F925848() != v109))
  {
    sub_24F925848();
  }

  sub_24F924058();
  v110 = v182;
  v111 = v181;
  sub_24F926438();
  v112 = (*(v180 + 8))(v107, v111);
  v193 = &v150;
  MEMORY[0x28223BE20](v112);
  v113 = v190;
  *(&v150 - 14) = v190;
  *(&v150 - 13) = v86;
  v114 = v195;
  *(&v150 - 12) = v90;
  *(&v150 - 11) = v114;
  v115 = v196;
  *(&v150 - 10) = v196;
  *(&v150 - 9) = v89;
  *(&v150 - 64) = v104;
  *(&v150 - 7) = v98;
  *(&v150 - 6) = v68;
  *(&v150 - 5) = v70;
  *(&v150 - 4) = v72;
  *(&v150 - 3) = v74;
  sub_24F9249A8();
  v149 = v162;
  v148 = v159;
  v116 = v170;
  v117 = v189;
  sub_24F926318();
  (*(v183 + 8))(v110, v117);
  v118 = sub_24F927558();
  MEMORY[0x28223BE20](v118);
  v119 = v194;
  *(&v150 - 8) = v113;
  *(&v150 - 7) = v119;
  *(&v150 - 6) = v90;
  *(&v150 - 5) = v114;
  *(&v150 - 4) = v115;
  *(&v150 - 3) = v89;
  v120 = swift_checkMetadataState();
  v121 = MEMORY[0x277CE1350];
  v148 = v186;
  v122 = v174;
  v123 = v173;
  sub_24F926B08();
  (*(v171 + 8))(v116, v122);
  v124 = (v89[3])(v90, v89);
  LOBYTE(v116) = sub_24F925818();
  v125 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v116)
  {
    v125 = sub_24F925848();
  }

  *&v126 = (v68 - v96) * 0.5 + v97;
  v127 = sub_24EA91914(v125, v124);
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v208 = v122;
  v209 = v121;
  v210 = v120;
  v211 = v123;
  v212 = MEMORY[0x277CE1340];
  v213 = v186;
  v134 = swift_getOpaqueTypeConformance2();
  v135 = v163;
  v136 = v161;
  v137 = v185;
  sub_24EEBCEB4(v161, v134, v127, v129, v131, v133);
  (*(v160 + 8))(v137, v136);
  v138 = sub_24F9257F8();
  v139 = sub_24EEC31F4(&qword_27F2156E0, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  v199 = v134;
  v200 = v139;
  v140 = v167;
  v141 = swift_getWitnessTable();
  v142 = v164;
  sub_24EEBD368(v138, v126, 0, v140, v141);
  (*(v166 + 8))(v135, v140);
  v197 = v141;
  v198 = v139;
  v143 = v169;
  swift_getWitnessTable();
  v144 = v165;
  sub_24E7896B8();
  v145 = *(v168 + 8);
  v145(v142, v143);
  sub_24E7896B8();
  return (v145)(v144, v143);
}

void sub_24EEBF840(double *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v4 = sub_24F925838();
    *a1 = sub_24EA91914(v4, v2);
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
    *(a1 + 3) = v7;
  }
}

uint64_t sub_24EEBF8A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D2>, double a12@<D3>, double a13@<D4>, double a14@<D5>)
{
  v98 = a8;
  v99 = a7;
  v101 = a5;
  v96 = a4;
  v100 = a2;
  LODWORD(v102) = a1;
  v105 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EF8, &qword_24F9AB498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00, &unk_24F9AB4A0);
  sub_24F924038();
  v93 = a3;
  sub_24F924E38();
  sub_24E602068(&qword_27F232F08, &qword_27F232EF8, &qword_24F9AB498, MEMORY[0x277CDF500]);
  v21 = sub_24F923AE8();
  v95 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v94 = &v80[-v22];
  v92 = type metadata accessor for PageHeaderLayout(0);
  MEMORY[0x28223BE20](v92);
  v88 = &v80[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  v24 = sub_24F924038();
  v25 = sub_24E602068(&qword_27F232F10, &qword_27F232EF8, &qword_24F9AB498, MEMORY[0x277CDF510]);
  v26 = sub_24E602068(&qword_27F232F18, &qword_27F232F00, &unk_24F9AB4A0, MEMORY[0x277CDF4F0]);
  v129 = a6;
  v130 = v26;
  WitnessTable = swift_getWitnessTable();
  v128 = a6;
  v97 = a6;
  v27 = swift_getWitnessTable();
  v125 = v25;
  v126 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_24E6695B8();
  v30 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  v123 = v28;
  v124 = v30;
  v31 = swift_getWitnessTable();
  v109 = v21;
  v117 = v21;
  v118 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v108 = v24;
  v119 = v24;
  v120 = v28;
  v107 = v29;
  v121 = v29;
  v122 = v31;
  v106 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v34 = &v80[-v33];
  v35 = sub_24F924038();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v91 = &v80[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v89 = &v80[-v39];
  v40 = sub_24F92C4A8();
  v104 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v103 = &v80[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v80[-v44];
  v46 = MEMORY[0x277CDF918];
  if (v102)
  {
    v87 = v40;
    v47 = v98;
    v48 = *(v98 + 48);
    v49 = v88;
    v102 = v28;
    v50 = v100;
    v85 = v36;
    v51 = v101;
    v48(v101, v98, v43);
    v52 = (*(v47 + 64))(v51, v47, a10);
    v81 = (*(v47 + 40))(v51, v47);
    v82 = v35;
    v53 = v93;
    v83 = v34;
    v54 = v96;
    v117 = v93;
    v118 = v96;
    v86 = v45;
    v55 = v97;
    v119 = v51;
    v120 = v97;
    v84 = OpaqueTypeMetadata2;
    v56 = v99;
    v121 = v99;
    v122 = v47;
    type metadata accessor for AdaptiveSideBySideContainerView(0, &v117);
    v57 = v92;
    sub_24F7699B0((v49 + *(v92 + 32)));
    *(v49 + v57[5]) = v52;
    v58 = (v49 + v57[6]);
    *v58 = a11;
    v58[1] = a12;
    v58[2] = a13;
    v58[3] = a14;
    *(v49 + v57[7]) = v81 & 1;
    v60 = sub_24EEC0468(v49, v53, v54, v51, v55, v56, v47, v59);
    v61 = sub_24EEC24A0(v49);
    v62 = MEMORY[0x28223BE20](v61);
    *&v80[-64] = v53;
    *&v80[-56] = v54;
    v63 = v82;
    *&v80[-48] = v51;
    *&v80[-40] = v55;
    *&v80[-32] = v56;
    *&v80[-24] = v47;
    *&v80[-16] = v50;
    v64 = v94;
    (v60)(sub_24EEC24FC, v62);

    v65 = sub_24F9275A8();
    v67 = v66;
    v68 = sub_24F926CF8();
    v69 = v83;
    sub_24F186F48(0x6461654865676150, 0xEA00000000007265, v65, v67, v68, v109);

    v70 = v64;
    v45 = v86;
    (*(v95 + 8))(v70, v109);
    sub_24F925858();
    v28 = v102;
    (*(v47 + 32))(v51, v47);
    v117 = v109;
    v118 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
    v119 = v108;
    v120 = v28;
    v121 = v107;
    v122 = v106;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = v91;
    v73 = v84;
    sub_24F926A48();
    (*(v90 + 8))(v69, v73);
    v110 = OpaqueTypeConformance2;
    v46 = MEMORY[0x277CDF918];
    v111 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v74 = v89;
    sub_24E7896B8();
    v75 = v85;
    v76 = *(v85 + 8);
    v76(v72, v63);
    sub_24E7896B8();
    v76(v74, v63);
    v40 = v87;
    v77 = v103;
    (*(v75 + 32))(v103, v72, v63);
    (*(v75 + 56))(v77, 0, 1, v63);
  }

  else
  {
    v77 = v103;
    (*(v36 + 56))(v103, 1, 1, v35, v43);
    v117 = v109;
    v118 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
    v119 = v108;
    v120 = v28;
    v121 = v107;
    v122 = v106;
    v115 = swift_getOpaqueTypeConformance2();
    v116 = v46;
    swift_getWitnessTable();
  }

  sub_24E8D5004(v77, v45);
  v78 = *(v104 + 8);
  v78(v77, v40);
  v117 = v109;
  v118 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v119 = v108;
  v120 = v28;
  v121 = v107;
  v122 = v106;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v46;
  v112 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E7896B8();
  return (v78)(v45, v40);
}

uint64_t (*sub_24EEC0468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = type metadata accessor for PageHeaderLayout(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_24EEC2530(a1, &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a7;
  sub_24EEC26AC(&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  return sub_24EEC2710;
}

uint64_t sub_24EEC0594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PageHeaderLayout(0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00, &unk_24F9AB4A0);
  sub_24F924038();
  v9 = sub_24F924E38();
  v10 = sub_24EEC31F4(&qword_27F232F28, type metadata accessor for PageHeaderLayout, &unk_24F9AB544);
  sub_24E602068(&qword_27F232F18, &qword_27F232F00, &unk_24F9AB4A0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  return sub_24EEBD1C0(a1, a2, v8, v9, v10, WitnessTable, a4);
}

uint64_t sub_24EEC070C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a3;
  v47 = a6;
  v51 = a5;
  v52 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00, &unk_24F9AB4A0);
  v12 = sub_24F924038();
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = &v44 - v16;
  v17 = *(a2 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  v24 = sub_24F924E38();
  v49 = *(v24 - 8);
  v50 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v48 = &v44 - v26;
  v27 = (*(a7 + 56))(a4, a7, v25);
  if (v27)
  {
    v28 = v27;
    v61 = a2;
    v62 = v46;
    v63 = a4;
    v29 = v51;
    v64 = v51;
    v65 = v47;
    v66 = a7;
    v30 = type metadata accessor for AdaptiveSideBySideContainerView(0, &v61);
    (*(a1 + *(v30 + 68)))();
    v61 = v28;
    sub_24E6425B4();
    sub_24F926B58();
    (*(v17 + 8))(v23, a2);
    v31 = sub_24E602068(&qword_27F232F18, &qword_27F232F00, &unk_24F9AB4A0, MEMORY[0x277CDF4F0]);
    v53 = v29;
    v54 = v31;
    WitnessTable = swift_getWitnessTable();
    v33 = v44;
    sub_24E7896B8();
    v34 = *(v45 + 8);
    v34(v14, v12);
    sub_24E7896B8();
    v35 = v48;
    sub_24ECCCBA0(v14, v12, a2, WitnessTable, v29);

    v34(v14, v12);
    v36 = v33;
    v37 = v12;
  }

  else
  {
    v61 = a2;
    v62 = v46;
    v63 = a4;
    v29 = v51;
    v64 = v51;
    v65 = v47;
    v66 = a7;
    v38 = type metadata accessor for AdaptiveSideBySideContainerView(0, &v61);
    (*(a1 + *(v38 + 68)))();
    sub_24E7896B8();
    v34 = *(v17 + 8);
    v34(v20, a2);
    sub_24E7896B8();
    v39 = sub_24E602068(&qword_27F232F18, &qword_27F232F00, &unk_24F9AB4A0, MEMORY[0x277CDF4F0]);
    v59 = v29;
    v60 = v39;
    v40 = swift_getWitnessTable();
    v35 = v48;
    sub_24ECCCC98(v20, v12, a2, v40, v29);
    v34(v20, a2);
    v36 = v23;
    v37 = a2;
  }

  v34(v36, v37);
  v41 = sub_24E602068(&qword_27F232F18, &qword_27F232F00, &unk_24F9AB4A0, MEMORY[0x277CDF4F0]);
  v57 = v29;
  v58 = v41;
  v55 = swift_getWitnessTable();
  v56 = v29;
  v42 = v50;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v49 + 8))(v35, v42);
}

uint64_t sub_24EEC0C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v58 = a2;
  v59 = a8;
  v55 = a7;
  v56 = a4;
  v64 = a6;
  v57 = a5;
  v61 = a1;
  v62 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F40, &qword_24F984350);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = v51 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EE8, &qword_24F9AB490);
  v13 = sub_24F924038();
  v53 = v13;
  v14 = sub_24E602068(&qword_27F232EF0, &qword_27F232EE8, &qword_24F9AB490, MEMORY[0x277CE08A0]);
  v93 = a7;
  v94 = v14;
  v63 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v79 = v13;
  v80 = WitnessTable;
  v51[4] = MEMORY[0x277CDEC10];
  v52 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v51[3] = sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EF8, &qword_24F9AB498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00, &unk_24F9AB4A0);
  v54 = a3;
  sub_24F924038();
  sub_24F924E38();
  sub_24E602068(&qword_27F232F08, &qword_27F232EF8, &qword_24F9AB498, MEMORY[0x277CDF500]);
  v16 = sub_24F923AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  v17 = sub_24F924038();
  v18 = sub_24E602068(&qword_27F232F10, &qword_27F232EF8, &qword_24F9AB498, MEMORY[0x277CDF510]);
  v19 = sub_24E602068(&qword_27F232F18, &qword_27F232F00, &unk_24F9AB4A0, MEMORY[0x277CDF4F0]);
  v20 = v64;
  v91 = v64;
  v92 = v19;
  v89 = swift_getWitnessTable();
  v90 = v20;
  v21 = swift_getWitnessTable();
  v87 = v18;
  v88 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_24E6695B8();
  v24 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  v85 = v22;
  v86 = v24;
  v25 = swift_getWitnessTable();
  v79 = v16;
  v80 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v81 = v17;
  v82 = v22;
  v83 = v23;
  v84 = v25;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F92C4A8();
  v79 = v16;
  v80 = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
  v81 = v17;
  v82 = v22;
  v83 = v23;
  v84 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = MEMORY[0x277CDF918];
  v76 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F924B98();
  v26 = sub_24F924038();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F20, &qword_24F9AB4B0);
  v79 = v53;
  v80 = v52;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = MEMORY[0x277CE0880];
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v72 = v28;
  v73 = v29;
  v30 = swift_getWitnessTable();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1E8, &qword_24F986D60);
  v32 = sub_24EB8F770();
  v79 = v31;
  v80 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v79 = v26;
  v80 = v27;
  v51[1] = v26;
  v51[2] = v27;
  v81 = v30;
  v82 = v33;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v36 = v51 - v35;
  v79 = v26;
  v80 = v27;
  v81 = v30;
  v82 = v33;
  v37 = swift_getOpaqueTypeConformance2();
  v79 = OpaqueTypeMetadata2;
  v80 = v37;
  v52 = v37;
  v53 = MEMORY[0x277CDEBB0];
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = v51 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = v51 - v43;
  v65 = v54;
  v66 = v56;
  v67 = v57;
  v68 = v64;
  v69 = v55;
  v70 = v59;
  v71 = v58;
  sub_24F924C88();
  swift_checkMetadataState();
  sub_24F926218();
  v45 = v60;
  sub_24F925078();
  v46 = sub_24F925088();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v47 = sub_24F925818();
  v48 = v52;
  MEMORY[0x25304C060](v45, v47, OpaqueTypeMetadata2, v52);
  sub_24E601704(v45, &qword_27F228F40, &qword_24F984350);
  (*(v63 + 8))(v36, OpaqueTypeMetadata2);
  v79 = OpaqueTypeMetadata2;
  v80 = v48;
  swift_getOpaqueTypeConformance2();
  sub_24E7896B8();
  v49 = *(v39 + 8);
  v49(v41, v38);
  sub_24E7896B8();
  return (v49)(v44, v38);
}

double sub_24EEC14A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_24F924C18();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F926C98();
  (*(a7 + 24))(a4, a7);
  sub_24F927618();
  sub_24F9238C8();
  v15[1] = v13;
  v15[2] = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  sub_24F924C08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1E8, &qword_24F986D60);
  sub_24EB8F770();
  sub_24F9265B8();
  (*(v10 + 8))(v12, v9);

  return result;
}

uint64_t sub_24EEC1658()
{
  v15 = v0[2];
  v16[0] = v0[1];
  v1 = v0[3];
  v16[1] = v15;
  v16[2] = v1;
  v2 = type metadata accessor for AdaptiveSideBySideContainerView(0, v16);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 64) & ~*(*(v2 - 1) + 80));
  (*(*(v15 - 8) + 8))(v3);

  v4 = v2[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923E98();
    (*(*(v5 - 8) + 8))(&v3[v4], v5);
  }

  else
  {
  }

  v6 = v2[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(&v3[v6], 1, v7))
    {
      (*(v8 + 8))(&v3[v6], v7);
    }
  }

  else
  {
  }

  v9 = v2[21];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F925218();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(&v3[v9], 1, v10))
    {
      (*(v11 + 8))(&v3[v9], v10);
    }
  }

  else
  {
  }

  v12 = v2[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24F923F78();
    (*(*(v13 - 8) + 8))(&v3[v12], v13);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EEC19D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for AdaptiveSideBySideContainerView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_24EEBDF0C(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_24EEC1B54(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, double a6, double a7)
{
  v50 = sub_24F922348();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v56 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24F923F78();
  v42 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F923A38();
  v38 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C98, &qword_24F96BC40);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v37 - v22;
  v51 = a1;
  v41 = a2;
  v52 = a3;
  v24 = v16;
  v40 = a4;
  v25 = sub_24F923BB8();
  (*(*(v25 - 8) + 16))(v23, a5, v25);
  v26 = *(v21 + 44);
  v27 = sub_24EEC31F4(&qword_27F2195F8, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  sub_24F92BB88();
  sub_24F92BC08();
  if (*&v23[v26] != v59[0])
  {
    v39 = v57 + 8;
    v54 = (v38 + 32);
    v55 = (v38 + 16);
    v45 = v53 + 1;
    v44 = *MEMORY[0x277CDFA88];
    v43 = (v42 + 13);
    ++v42;
    v53 = (v38 + 8);
    v41 &= 1u;
    v40 &= 1u;
    v47 = v26;
    v46 = v27;
    do
    {
      v29 = sub_24F92BC88();
      (*v55)(v19);
      v29(v59, 0);
      sub_24F92BC18();
      (*v54)(v24, v19, v14);
      if (*(v57 + *(type metadata accessor for PageHeaderLayout(0) + 28)) == 1)
      {
        v30 = v25;
        v31 = v14;
        v32 = v48;
        v33 = v49;
        (*v43)(v48, v44, v49);
        sub_24F923F68();
        (*v42)(v32, v33);
        sub_24F927828();
        LOBYTE(v59[0]) = v41;
        v58 = v40;
        sub_24F923A28();
        v14 = v31;
        v25 = v30;
        v26 = v47;
      }

      else
      {
        _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
        sub_24F9222E8();
        v35 = v34;
        sub_24F9222E8();
        if (v36 >= v35)
        {
          sub_24F922308();
        }

        else
        {
          sub_24F9222F8();
        }

        (*v45)(v56, v50);
        sub_24F927828();
        LOBYTE(v59[0]) = 0;
        v58 = 0;
        sub_24F923A28();
      }

      (*v53)(v24, v14);
      sub_24F92BC08();
    }

    while (*&v23[v26] != v59[0]);
  }

  return sub_24E601704(v23, &qword_27F222C98, &qword_24F96BC40);
}

void (*sub_24EEC2228(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24EEC2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_24E7896B8();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_24E7896B8();
  return (v13)(v11, a4);
}

uint64_t type metadata accessor for PageHeaderLayout(uint64_t a1)
{
  result = qword_27F232F30;
  if (!qword_27F232F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EEC24A0(uint64_t a1)
{
  v2 = type metadata accessor for PageHeaderLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EEC2530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageHeaderLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEC2594()
{
  v1 = (type metadata accessor for PageHeaderLayout(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 64) & ~*(*v1 + 80));
  v3 = sub_24F922348();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[10];
  v5 = sub_24F923F78();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24EEC26AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageHeaderLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEC27F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_24F923F78();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EEC2938(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922348();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  else
  {
    v11 = sub_24F923F78();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24EEC2A58(uint64_t a1)
{
  result = sub_24F922348();
  if (v2 <= 0x3F)
  {
    result = sub_24F923F78();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EEC2AF8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EE8, &qword_24F9AB490);
  sub_24F924038();
  sub_24E602068(&qword_27F232EF0, &qword_27F232EE8, &qword_24F9AB490, MEMORY[0x277CE08A0]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232EF8, &qword_24F9AB498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F00, &unk_24F9AB4A0);
  sub_24F924038();
  sub_24F924E38();
  sub_24E602068(&qword_27F232F08, &qword_27F232EF8, &qword_24F9AB498, MEMORY[0x277CDF500]);
  sub_24F923AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  sub_24F924038();
  sub_24E602068(&qword_27F232F10, &qword_27F232EF8, &qword_24F9AB498, MEMORY[0x277CDF510]);
  sub_24E602068(&qword_27F232F18, &qword_27F232F00, &unk_24F9AB4A0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E6695B8();
  sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F92C4A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F924B98();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F232F20, &qword_24F9AB4B0);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1E8, &qword_24F986D60);
  sub_24EB8F770();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F9252E8();
  sub_24F924038();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24EEC31F4(&qword_27F2156E0, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F923B88();
  return swift_getWitnessTable();
}

unint64_t sub_24EEC31A0()
{
  result = qword_27F232F48;
  if (!qword_27F232F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F232F48);
  }

  return result;
}

uint64_t sub_24EEC31F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EEC323C()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E74EC40();
  sub_24F927DB8();
  v8 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F232F50 = result;
  return result;
}

uint64_t sub_24EEC348C()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F232F58);
  __swift_project_value_buffer(v4, qword_27F232F58);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

_BYTE *sub_24EEC35E0(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v45 = a3;
  LODWORD(v46) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled] = 1;
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled] = 1;
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive] = 1;
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_shouldLoopAutoPlayback] = 1;
  v13 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
  v14 = sub_24F929158();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_visibleVideoFrames;
  v16 = MEMORY[0x277D84F90];
  *&v4[v15] = sub_24E60AF2C(MEMORY[0x277D84F90]);
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_autoPlayExclusions] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue] = v16;
  v17 = &v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex];
  *v17 = 0;
  v17[8] = 1;
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo] = 0;
  v18 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isScrolling;
  LOBYTE(v49[0]) = 0;
  sub_24F923058();
  (*(v10 + 32))(&v4[v18], v12, v9);
  v19 = &v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_networkObservation];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isLowDataModeEnabled] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackCoalescingWaitTime] = 0x3FB999999999999ALL;
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackWorkItem] = 0;
  swift_beginAccess();
  sub_24E861B58(a2, &v4[v13]);
  swift_endAccess();
  v47 = a2;
  v20 = a2;
  v21 = v45;
  sub_24E60169C(v20, v8, &qword_27F21C570, "Ю ");
  type metadata accessor for VideoViewModelManager(0);
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_videoViewModelManager] = sub_24EDEFDC8(v8);
  v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled] = UIAccessibilityIsVideoAutoplayEnabled();
  v22 = type metadata accessor for VideoPlaybackCoordinator(0);
  v51.receiver = v4;
  v51.super_class = v22;
  v23 = objc_msgSendSuper2(&v51, sel_init);
  LOBYTE(v8) = v23[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled];
  v24 = v46 & 1;
  v23[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled] = v46;
  v25 = v23;
  sub_24EEC3D9C(v8);
  v26 = v21[3];
  v27 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v26);
  v28 = sub_24E74EC40();
  v29 = sub_24F92BEF8();
  v48[3] = v28;
  v48[4] = MEMORY[0x277D225C0];
  v48[0] = v29;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = *(v27 + 40);

  v31(v49, v48, sub_24EEC9A40, v30, v26, v27);

  __swift_destroy_boxed_opaque_existential_1(v48);
  v32 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_networkObservation;
  swift_beginAccess();
  sub_24EA043F8(v49, &v25[v32]);
  swift_endAccess();
  v33 = v21[3];
  v34 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v33);
  v25[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isLowDataModeEnabled] = (*(v34 + 32))(v33, v34) & 1;
  if (qword_27F2107D8 != -1)
  {
    swift_once();
  }

  v35 = sub_24F92AAE8();
  v46 = __swift_project_value_buffer(v35, qword_27F232F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v36 = MEMORY[0x277D839B0];
  v50 = MEMORY[0x277D839B0];
  LOBYTE(v49[0]) = v24;
  sub_24F928438();
  sub_24E601704(v49, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v37 = v25[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled];
  v50 = v36;
  LOBYTE(v49[0]) = v37;
  sub_24F928438();
  sub_24E601704(v49, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A588();

  v38 = objc_opt_self();
  v39 = [v38 defaultCenter];
  [v39 addObserver:v25 selector:sel_videoAutoplayStatusDidChange_ name:*MEMORY[0x277D765E0] object:0];

  v40 = [v38 defaultCenter];
  v41 = v25;
  v42 = sub_24F92B098();
  [v40 addObserver:v41 selector:sel_didChangeAutoPlayVideoSetting_ name:v42 object:0];

  sub_24E601704(v47, &qword_27F21C570, "Ю ");
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v41;
}

void sub_24EEC3D00(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    v4[OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isLowDataModeEnabled] = (*(v6 + 32))(v5, v6) & 1;
  }
}

void sub_24EEC3D9C(char a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) != (a1 & 1))
  {
    if (qword_27F2107D8 != -1)
    {
      swift_once();
    }

    v3 = sub_24F92AAE8();
    __swift_project_value_buffer(v3, qword_27F232F58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    if ((*(v1 + v2) & 1) != 0 || sub_24EEC452C())
    {
      v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled);
    }

    else
    {
      v4 = 0;
    }

    v6 = MEMORY[0x277D839B0];
    v5[0] = v4;
    sub_24F928438();
    sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    if (*(v1 + v2) == 1)
    {
      *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if ((v5[0] & 1) == 0)
      {
        sub_24EEC66B8();
      }
    }

    else
    {
      sub_24EEC6894();
      *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo) = 0;

      sub_24EEC4150();
    }
  }
}

void sub_24EEC4000(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_visibleVideoFrames;
  v8 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_11:
    sub_24E65864C(*(a1 + 48) + 40 * (__clz(__rbit64(v6)) | (v9 << 6)), v14);
    v12[0] = v14[0];
    v12[1] = v14[1];
    v13 = v15;
    swift_beginAccess();
    if (*(*(v1 + v7) + 16) && (sub_24E76D934(v12), (v11 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      sub_24EEC6CF8(v12);
    }

    v6 &= v6 - 1;
    sub_24E6585F8(v12);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_24EEC4150()
{
  result = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v0;
    v4 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo;
    v5 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_videoViewModelManager;
    v6 = result + 32;

    v7 = &qword_27F21B438;
    v18 = v5;
    while (1)
    {
      sub_24E65864C(v6, v34);
      sub_24E65864C(v34, v32);
      v8 = *(v3 + v4);
      if (v8)
      {
        sub_24E65864C(*(v8 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, &v29);
      }

      else
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }

      sub_24E60169C(v32, v24, &qword_27F235830, &qword_24F93B8C0);
      sub_24E60169C(&v29, &v26, &qword_27F235830, &qword_24F93B8C0);
      if (!v25)
      {
        break;
      }

      sub_24E60169C(v24, v22, &qword_27F235830, &qword_24F93B8C0);
      if (!*(&v27 + 1))
      {
        sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
        sub_24E601704(v32, &qword_27F235830, &qword_24F93B8C0);
        sub_24E6585F8(v22);
LABEL_15:
        sub_24E601704(v24, v7, &unk_24F95FB00);
        goto LABEL_16;
      }

      v19 = v26;
      v20 = v27;
      v21 = v28;
      v9 = MEMORY[0x253052150](v22, &v19);
      sub_24E6585F8(&v19);
      sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
      sub_24E601704(v32, &qword_27F235830, &qword_24F93B8C0);
      sub_24E6585F8(v22);
      sub_24E601704(v24, &qword_27F235830, &qword_24F93B8C0);
      if (v9)
      {
        goto LABEL_27;
      }

LABEL_16:
      sub_24E65864C(v34, v24);
      sub_24E60169C(v24, &v29, &qword_27F235830, &qword_24F93B8C0);
      if (*(&v30 + 1))
      {
        v32[0] = v29;
        v32[1] = v30;
        v33 = v31;
        v10 = *(v3 + v5);
        sub_24E65864C(v32, &v29);
        sub_24E60169C(&v29, &v19, &qword_27F235830, &qword_24F93B8C0);
        if (*(&v20 + 1))
        {
          v22[0] = v19;
          v22[1] = v20;
          v23 = v21;
          v11 = *(v10 + 16);
          if (*(v11 + 16))
          {

            v12 = sub_24E76D934(v22);
            if (v13)
            {
              v14 = v7;
              v15 = *(*(v11 + 56) + 8 * v12);

              sub_24E6585F8(v22);
              sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
              sub_24E6585F8(v32);
              sub_24E601704(v24, &qword_27F235830, &qword_24F93B8C0);

              v16 = *(v15 + 24);
              if (v16)
              {
                [v16 pause];

                sub_24E6585F8(v34);
              }

              else
              {
                sub_24E6585F8(v34);
              }

              v7 = v14;
              v5 = v18;
              goto LABEL_4;
            }
          }

          sub_24E6585F8(v22);
          sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
          sub_24E6585F8(v32);
LABEL_25:
          v17 = v24;
        }

        else
        {
          sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
          sub_24E6585F8(v32);
          sub_24E601704(v24, &qword_27F235830, &qword_24F93B8C0);
          v17 = &v19;
        }

        sub_24E601704(v17, &qword_27F235830, &qword_24F93B8C0);
LABEL_27:
        sub_24E6585F8(v34);
        goto LABEL_4;
      }

      sub_24E601704(v24, &qword_27F235830, &qword_24F93B8C0);
      sub_24E6585F8(v34);
      sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
LABEL_4:
      v6 += 40;
      if (!--v2)
      {
      }
    }

    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v32, &qword_27F235830, &qword_24F93B8C0);
    if (!*(&v27 + 1))
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  return result;
}

BOOL sub_24EEC452C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (v2)
  {
    sub_24E65864C(*(v2 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v5);
  }

  else
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
  }

  v3 = sub_24EEC5F2C(v5);
  sub_24E601704(v5, &qword_27F235830, &qword_24F93B8C0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  if (!*(v0 + v1))
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F923098();

  return LOBYTE(v5[0]) != 4;
}

uint64_t sub_24EEC4630()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24EEC46A4(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v5 == 1 && (a1 & 1) == 0)
  {
    sub_24EEC66B8();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return sub_24F9230A8();
}

uint64_t sub_24EEC476C(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = a2;
  v39 = sub_24F929158();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = sub_24F928698();
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo;
  v19 = *(v2 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (v19)
  {
    sub_24E65864C(*(v19 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v52);
    v37 = v7;
    v38 = v5;
    if (a1)
    {
LABEL_3:
      sub_24E65864C(*(a1 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v50);
      goto LABEL_6;
    }
  }

  else
  {
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    v37 = v7;
    v38 = v5;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v51 = 0;
  memset(v50, 0, sizeof(v50));
LABEL_6:
  sub_24E60169C(v52, v46, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(v50, &v47, &qword_27F235830, &qword_24F93B8C0);
  if (v46[3])
  {
    sub_24E60169C(v46, v45, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v48 + 1))
    {
      v43[0] = v47;
      v43[1] = v48;
      v44 = v49;
      v20 = MEMORY[0x253052150](v45, v43);
      sub_24E6585F8(v43);
      sub_24E601704(v50, &qword_27F235830, &qword_24F93B8C0);
      sub_24E601704(v52, &qword_27F235830, &qword_24F93B8C0);
      sub_24E6585F8(v45);
      result = sub_24E601704(v46, &qword_27F235830, &qword_24F93B8C0);
      if (v20)
      {
        return result;
      }

      v22 = *(v3 + v18);
      if (!v22)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_24E601704(v50, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v52, &qword_27F235830, &qword_24F93B8C0);
    sub_24E6585F8(v45);
  }

  else
  {
    sub_24E601704(v50, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v52, &qword_27F235830, &qword_24F93B8C0);
    if (!*(&v48 + 1))
    {
      return sub_24E601704(v46, &qword_27F235830, &qword_24F93B8C0);
    }
  }

  sub_24E601704(v46, &qword_27F21B438, &unk_24F95FB00);
  v22 = *(v2 + v18);
  if (!v22)
  {
    goto LABEL_22;
  }

LABEL_15:
  v23 = *(v22 + 24);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    if (*(v23 + v24) == 1)
    {

      sub_24F143C7C(v42 & 1, 0, v13);

      v26 = v40;
      v25 = v41;
      if ((*(v41 + 48))(v13, 1, v40) == 1)
      {
        v27 = &qword_27F21EB88;
        v28 = &unk_24F95FAF0;
        v29 = v13;
      }

      else
      {
        (*(v25 + 32))(v17, v13, v26);
        v30 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
        swift_beginAccess();
        sub_24E60169C(v3 + v30, v10, &qword_27F21C570, "Ю ");
        v31 = v38;
        v32 = v39;
        if (!(*(v38 + 48))(v10, 1, v39))
        {
          v33 = *(v31 + 16);
          v34 = v31;
          v35 = v37;
          v33(v37, v10, v32);
          sub_24E601704(v10, &qword_27F21C570, "Ю ");
          if (qword_27F210658 != -1)
          {
            swift_once();
          }

          v36 = sub_24F929AB8();
          __swift_project_value_buffer(v36, qword_27F22E3B8);
          sub_24F929138();

          (*(v34 + 8))(v35, v32);
          (*(v41 + 8))(v17, v26);
          goto LABEL_22;
        }

        (*(v25 + 8))(v17, v26);
        v27 = &qword_27F21C570;
        v28 = "Ю ";
        v29 = v10;
      }

      sub_24E601704(v29, v27, v28);
    }
  }

LABEL_22:
  *(v3 + v18) = a1;

  result = sub_24EEC4150();
  if (*(v3 + v18))
  {
    return sub_24EEC4D78(v42 & 1);
  }

  return result;
}

uint64_t sub_24EEC4D78(char a1)
{
  v3 = sub_24F927DE8();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v18 = &v18 - v7;
  v8 = sub_24F927D88();
  MEMORY[0x28223BE20](v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24EEC9BA0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_87;
  _Block_copy(aBlock);
  v21 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  sub_24F927E28();
  swift_allocObject();
  v11 = sub_24F927E08();

  v12 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackWorkItem;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackWorkItem))
  {

    sub_24F927E18();
  }

  *(v1 + v12) = v11;

  v13 = v18;
  if (qword_27F2107D0 != -1)
  {
    swift_once();
  }

  sub_24F927DD8();
  sub_24F927E58();
  v14 = *(v19 + 8);
  v15 = v5;
  v16 = v20;
  result = v14(v15, v20);
  if (*(v1 + v12))
  {

    sub_24F92BEA8();

    return v14(v13, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EEC5110(uint64_t a1, char a2)
{
  v4 = sub_24F927D88();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DC8();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v10 = sub_24F92BEF8();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_24EEC9BC4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_74_0;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

void sub_24EEC53EC(uint64_t a1, int a2)
{
  v31 = a2;
  v2 = sub_24F929158();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v30 - v10;
  v12 = sub_24F928698();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(Strong + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
    if (!v18 || (v30[1] = *(Strong + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo), (v19 = *(v18 + 24)) != 0) && (v30[0] = v8, v20 = v15, v21 = v13, v22 = v12, v23 = v5, v24 = v2, v25 = v3, v26 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying, swift_beginAccess(), v27 = *(v19 + v26), v3 = v25, v2 = v24, v5 = v23, v12 = v22, v13 = v21, v15 = v20, v8 = v30[0], (v27 & 1) != 0) || *(v17 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) != 1)
    {
    }

    else
    {

      sub_24F1444F8();
      if (v31)
      {
      }

      else
      {
        sub_24F144620(0, v11);
        if ((*(v13 + 48))(v11, 1, v12) == 1)
        {

          sub_24E601704(v11, &qword_27F21EB88, &unk_24F95FAF0);
        }

        else
        {
          (*(v13 + 32))(v15, v11, v12);
          v28 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
          swift_beginAccess();
          sub_24E60169C(v17 + v28, v8, &qword_27F21C570, "Ю ");
          if ((*(v3 + 48))(v8, 1, v2))
          {
            (*(v13 + 8))(v15, v12);

            sub_24E601704(v8, &qword_27F21C570, "Ю ");
          }

          else
          {
            (*(v3 + 16))(v5, v8, v2);
            sub_24E601704(v8, &qword_27F21C570, "Ю ");
            if (qword_27F210658 != -1)
            {
              swift_once();
            }

            v29 = sub_24F929AB8();
            __swift_project_value_buffer(v29, qword_27F22E3B8);
            sub_24F929138();

            (*(v3 + 8))(v5, v2);
            (*(v13 + 8))(v15, v12);
          }
        }
      }
    }
  }
}

void sub_24EEC5890(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) == 0 && !sub_24EEC452C() || *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled) != 1 || *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled) != 1 || *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) != 1 || (*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isLowDataModeEnabled))
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {

        [v4 pause];
      }
    }

    return;
  }

  if (sub_24EEC452C() && (a1 & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
    if (v5)
    {
      v6 = *(v5 + 24);
      if (!v6 || (v7 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying, swift_beginAccess(), (*(v6 + v7) & 1) == 0))
      {
        sub_24EEC4D78(0);
      }
    }

    return;
  }

  v8 = v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex;
  v9 = sub_24EEC5ABC(*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex), *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex + 8));
  if (v10)
  {
    if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_shouldLoopAutoPlayback) & 1) == 0)
    {
      if ((*(v8 + 8) & 1) == 0)
      {
LABEL_32:
        *v8 = v9;
        goto LABEL_33;
      }

LABEL_31:
      *v8 = 0;
LABEL_33:
      *(v8 + 8) = 1;
      return;
    }

    v9 = sub_24EEC5ABC(0, 1);
    v11 = *(v8 + 8);
    if (v12)
    {
      if (!*(v8 + 8))
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v11 = *(v8 + 8);
  }

  if ((v11 & 1) == 0 && v9 == *v8)
  {
    goto LABEL_31;
  }

  *v8 = v9;
  *(v8 + 8) = 0;
  v13 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
  if (v9 < *(v13 + 16))
  {
    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_24E65864C(v13 + 40 * v9 + 32, v16);
      v14 = sub_24EEC8E54(v16);
      sub_24E601704(v16, &qword_27F235830, &qword_24F93B8C0);
      if (v14)
      {

        sub_24EEC476C(v15, 0);
      }
    }
  }
}

uint64_t sub_24EEC5ABC(uint64_t result, char a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }
  }

  v5 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue;
  v6 = *(*(v2 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue) + 16);
  if (v4 >= v6)
  {
    return 0;
  }

  v31 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_videoViewModelManager;
  v7 = 40 * v4 + 32;
  v8 = v4;
  while (1)
  {
    if (v4 < 0)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:

      return v8;
    }

    v10 = *(v3 + v5);
    if (v8 >= *(v10 + 16))
    {
      goto LABEL_38;
    }

    sub_24E65864C(v10 + v7, v42);
    sub_24E60169C(v42, &v37, &qword_27F235830, &qword_24F93B8C0);
    if (!*(&v38 + 1))
    {
      sub_24E601704(v42, &qword_27F235830, &qword_24F93B8C0);
      v9 = &v37;
      goto LABEL_7;
    }

    v40[0] = v37;
    v40[1] = v38;
    v41 = v39;
    v11 = *(v3 + v31);
    sub_24E65864C(v40, &v37);
    sub_24E60169C(&v37, &v32, &qword_27F235830, &qword_24F93B8C0);
    if (!*(&v33 + 1))
    {
      sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
      sub_24E6585F8(v40);
      sub_24E601704(v42, &qword_27F235830, &qword_24F93B8C0);
      v9 = &v32;
      goto LABEL_7;
    }

    v35[0] = v32;
    v35[1] = v33;
    v36 = v34;
    v12 = *(v11 + 16);
    if (!*(v12 + 16))
    {
      goto LABEL_29;
    }

    v13 = sub_24E76D934(v35);
    if ((v14 & 1) == 0)
    {

LABEL_29:
      sub_24E6585F8(v35);
      sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
      sub_24E6585F8(v40);
      v9 = v42;
LABEL_7:
      sub_24E601704(v9, &qword_27F235830, &qword_24F93B8C0);
      goto LABEL_8;
    }

    v15 = *(*(v12 + 56) + 8 * v13);

    sub_24E6585F8(v35);
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
    sub_24E6585F8(v40);
    sub_24E601704(v42, &qword_27F235830, &qword_24F93B8C0);

    v16 = v15 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_configuration;
    if ((*(v16 + *(type metadata accessor for VideoConfiguration(0) + 36)) & 1) == 0)
    {
      goto LABEL_31;
    }

    if (qword_27F2110D0 != -1)
    {
      swift_once();
    }

    v17 = *(qword_27F23E380 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting);
    if (!v17 || (*(qword_27F23E380 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained) & 1) != 0)
    {
      goto LABEL_31;
    }

    v27 = qword_27F23E380;
    v30 = v17;
    if (ASKPerformanceProfileGetForCurrentDevice(v30, v18) != 2)
    {

LABEL_31:

      goto LABEL_8;
    }

    v23 = sub_24F92B0D8();
    v28 = v19;
    if (v23 == sub_24F92B0D8() && v28 == v20)
    {
      goto LABEL_39;
    }

    v24 = sub_24F92CE08();

    if (v24)
    {
      break;
    }

    v25 = sub_24F92B0D8();
    v29 = v21;
    if (v25 == sub_24F92B0D8() && v29 == v22)
    {
    }

    else
    {
      v26 = sub_24F92CE08();

      if ((v26 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if ((*(v27 + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular) & 1) == 0)
    {
      return v8;
    }

LABEL_8:
    ++v8;
    v7 += 40;
    if (v6 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_24EEC5F2C(uint64_t a1)
{
  sub_24E60169C(a1, &v8, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v9 + 1))
  {
    v11[0] = v8;
    v11[1] = v9;
    v12 = v10;
    v2 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_autoPlayExclusions;
    swift_beginAccess();
    v3 = *(v1 + v2);

    v4 = sub_24F4D3620(v11, v3);

    if ((v4 & 1) == 0)
    {
      v5 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_visibleVideoFrames;
      swift_beginAccess();
      if (*(*(v1 + v5) + 16))
      {

        sub_24E76D934(v11);
        if (v6)
        {
          sub_24E6585F8(v11);

          return 1;
        }
      }
    }

    sub_24E6585F8(v11);
  }

  else
  {
    sub_24E601704(&v8, &qword_27F235830, &qword_24F93B8C0);
  }

  return 0;
}

void sub_24EEC6054()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_visibleVideoFrames;
  swift_beginAccess();
  v46 = v0;
  v47 = v1;
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_24EAE6894(*(v2 + 16), 0);
    v5 = sub_24EAE7F74(v60, (v4 + 4), v3, v2);
    v6 = *&v60[0];
    swift_bridgeObjectRetain_n();
    sub_24E6586B4(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  *&v60[0] = v4;
  sub_24E85866C(v60);

  v7 = *&v60[0];
  v8 = *(*&v60[0] + 16);
  if (v8)
  {
    v49 = MEMORY[0x277D84F90];
    sub_24F457B3C(0, v8, 0);
    v9 = v49;
    v10 = v7 + 32;
    do
    {
      sub_24E60169C(v10, v60, &qword_27F21F450, &qword_24F9AB7F0);
      sub_24E60169C(v60, &v55, &qword_27F21F450, &qword_24F9AB7F0);
      v50 = v55;
      v51 = v56;
      v52 = v57;
      v53 = v58;
      v54 = v59;
      sub_24E65864C(&v50, &v62);
      sub_24E601704(&v50, &qword_27F21F450, &qword_24F9AB7F0);
      sub_24E601704(v60, &qword_27F21F450, &qword_24F9AB7F0);
      v12 = v49[2];
      v11 = v49[3];
      if (v12 >= v11 >> 1)
      {
        sub_24F457B3C((v11 > 1), v12 + 1, 1);
      }

      v49[2] = v12 + 1;
      v13 = &v49[5 * v12];
      v14 = v62;
      v15 = v63;
      v13[8] = v64;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
      v10 += 72;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v16 = v9[2];
  v17 = v46;
  v48 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_autoPlayExclusions;
  swift_beginAccess();
  if (v16)
  {
    v18 = 0;
    v19 = v9 + 4;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 >= v9[2])
      {
        __break(1u);
        goto LABEL_49;
      }

      sub_24E65864C(&v19[5 * v18], v60);
      sub_24E65864C(v60, &v55);
      sub_24E60169C(&v55, &v62, &qword_27F235830, &qword_24F93B8C0);
      if (!*(&v63 + 1))
      {
        break;
      }

      v50 = v62;
      v51 = v63;
      v52 = v64;
      v20 = *(v17 + v48);
      if (*(v20 + 16))
      {
        v21 = v19;
        v22 = v16;

        v23 = sub_24F92C7B8();
        v24 = -1 << *(v20 + 32);
        v25 = v23 & ~v24;
        if ((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (1)
          {
            sub_24E65864C(*(v20 + 48) + 40 * v25, &v62);
            v27 = MEMORY[0x253052150](&v62, &v50);
            sub_24E6585F8(&v62);
            if (v27)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          sub_24E6585F8(&v50);
          sub_24E601704(&v55, &qword_27F235830, &qword_24F93B8C0);
          v17 = v46;
          v16 = v22;
          v19 = v21;
          goto LABEL_14;
        }

LABEL_23:

        v17 = v46;
        v16 = v22;
        v19 = v21;
      }

      if (!*(*(v17 + v47) + 16))
      {
        sub_24E6585F8(&v50);
        v36 = &v55;
        goto LABEL_33;
      }

      sub_24E76D934(&v50);
      v29 = v28;
      sub_24E6585F8(&v50);
      sub_24E601704(&v55, &qword_27F235830, &qword_24F93B8C0);

      if (v29)
      {
        v55 = v60[0];
        v56 = v60[1];
        v57 = v61;
        v30 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24F457B3C(0, *(v45 + 16) + 1, 1);
          v30 = v45;
        }

        v32 = *(v30 + 16);
        v31 = *(v30 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_24F457B3C((v31 > 1), v32 + 1, 1);
          v30 = v45;
        }

        *(v30 + 16) = v32 + 1;
        v45 = v30;
        v33 = v30 + 40 * v32;
        v34 = v55;
        v35 = v56;
        *(v33 + 64) = v57;
        *(v33 + 32) = v34;
        *(v33 + 48) = v35;
        goto LABEL_15;
      }

LABEL_14:
      sub_24E6585F8(v60);
LABEL_15:
      if (++v18 == v16)
      {
        goto LABEL_36;
      }
    }

    sub_24E601704(&v55, &qword_27F235830, &qword_24F93B8C0);
    v36 = &v62;
LABEL_33:
    sub_24E601704(v36, &qword_27F235830, &qword_24F93B8C0);
    goto LABEL_14;
  }

  v45 = MEMORY[0x277D84F90];
LABEL_36:

  v37 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue;
  *(v17 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue) = v45;

  v38 = *(v17 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (!v38)
  {
    v40 = 0;
    v43 = 1;
LABEL_47:
    v44 = v17 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex;
    *v44 = v40;
    *(v44 + 8) = v43 & 1;
    return;
  }

  v9 = *(v17 + v37);
  sub_24E65864C(*(v38 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v60);
  v39 = v9[2];

  v40 = 0;
  if (!v39)
  {
    v43 = 1;
LABEL_46:
    sub_24E6585F8(v60);

    goto LABEL_47;
  }

  v41 = (v9 + 4);
  while (v40 < v9[2])
  {
    sub_24E65864C(v41, &v55);
    v42 = MEMORY[0x253052150](&v55, v60);
    sub_24E6585F8(&v55);
    if (v42)
    {
      goto LABEL_43;
    }

    ++v40;
    v41 += 40;
    if (v39 == v40)
    {
      v40 = 0;
LABEL_43:
      v43 = v42 ^ 1;
      goto LABEL_46;
    }
  }

LABEL_49:
  __break(1u);

  __break(1u);
}

void sub_24EEC66B8()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) == 0 && !sub_24EEC452C() || *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled) != 1 || *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled) != 1 || *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) != 1 || (*(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isLowDataModeEnabled))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
    if (v1)
    {
      v2 = *(v1 + 24);
      if (v2)
      {

        [v2 pause];
      }
    }

    return;
  }

  if (!sub_24EEC452C())
  {
    v6 = v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex;
    v7 = sub_24EEC5ABC(*(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex), *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex + 8));
    if (v8)
    {
      v7 = sub_24EEC5ABC(v7, 1);
      *v6 = v7;
      *(v6 + 8) = v9 & 1;
      if (v9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v6 = v7;
      *(v6 + 8) = 0;
    }

    v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
    if (v7 < *(v10 + 16))
    {
      if (v7 < 0)
      {
        __break(1u);
        return;
      }

      sub_24E65864C(v10 + 40 * v7 + 32, v12);
      v11 = sub_24EEC8E54(v12);
      sub_24E601704(v12, &qword_27F235830, &qword_24F93B8C0);
      goto LABEL_25;
    }

LABEL_24:
    v11 = 0;
LABEL_25:
    sub_24EEC476C(v11, 0);

    return;
  }

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (!v4 || (v5 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying, swift_beginAccess(), (*(v4 + v5) & 1) == 0))
    {
      sub_24EEC4D78(0);
    }
  }
}

void sub_24EEC6894()
{
  v1 = sub_24F929158();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_24F928698();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 0;
  v16 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo;
  v17 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (!v17)
  {
    return;
  }

  v18 = *(v17 + 24);
  if (!v18)
  {
    return;
  }

  v42 = v7;
  v43 = v0;
  v19 = v10;
  v20 = v13;
  v21 = v4;
  v22 = v1;
  v23 = v2;
  v24 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  v25 = v18[v24];
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v12;
  v31 = v15;
  v32 = v19;
  v33 = v43;
  if (v25 != 1)
  {
    return;
  }

  [v18 pause];
  if (!*(v33 + v16))
  {
    (*(v30 + 56))(v32, 1, 1, v29);
    goto LABEL_9;
  }

  sub_24F143C7C(0, 0, v32);

  if ((*(v30 + 48))(v32, 1, v29) == 1)
  {
LABEL_9:
    v38 = &qword_27F21EB88;
    v39 = &unk_24F95FAF0;
    v40 = v32;
    goto LABEL_10;
  }

  (*(v30 + 32))(v31, v32, v29);
  v34 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
  v35 = v43;
  swift_beginAccess();
  v36 = v35 + v34;
  v37 = v42;
  sub_24E60169C(v36, v42, &qword_27F21C570, "Ю ");
  if ((*(v26 + 48))(v37, 1, v27))
  {
    (*(v30 + 8))(v31, v29);
    v38 = &qword_27F21C570;
    v39 = "Ю ";
    v40 = v37;
LABEL_10:
    sub_24E601704(v40, v38, v39);
    return;
  }

  (*(v26 + 16))(v28, v37, v27);
  sub_24E601704(v37, &qword_27F21C570, "Ю ");
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v41 = sub_24F929AB8();
  __swift_project_value_buffer(v41, qword_27F22E3B8);
  sub_24F929138();

  (*(v26 + 8))(v28, v27);
  (*(v30 + 8))(v31, v29);
}

double sub_24EEC6CF8(uint64_t a1)
{
  v3 = sub_24F929158();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_24F928698();
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a1, v36);
  sub_24E60169C(v36, &v40, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v41 + 1))
  {
    sub_24E601704(v36, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
    return result;
  }

  v30 = v4;
  v43 = v40;
  v44 = v41;
  v45 = v42;
  v32 = v1;
  sub_24E65864C(&v43, &v40);
  v16 = sub_24EDF0038(&v40);
  sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
  sub_24E6585F8(&v43);
  sub_24E601704(v36, &qword_27F235830, &qword_24F93B8C0);
  if (!v16)
  {
    return result;
  }

  v18 = *(v16 + 24);
  if (v18)
  {
    v19 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    LODWORD(v19) = v18[v19];
    [v18 pause];
    v20 = v19 == 1;
    v21 = v32;
    if (v20)
    {
      sub_24F143C7C(0, 0, v12);
      v22 = v31;
      if ((*(v31 + 48))(v12, 1, v13) == 1)
      {
        sub_24E601704(v12, &qword_27F21EB88, &unk_24F95FAF0);
      }

      else
      {
        (*(v22 + 32))(v15, v12, v13);
        v23 = v22;
        v24 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
        swift_beginAccess();
        sub_24E60169C(v21 + v24, v9, &qword_27F21C570, "Ю ");
        v25 = v30;
        if ((*(v30 + 48))(v9, 1, v3))
        {
          (*(v23 + 8))(v15, v13);
          sub_24E601704(v9, &qword_27F21C570, "Ю ");
        }

        else
        {
          (*(v25 + 16))(v6, v9, v3);
          sub_24E601704(v9, &qword_27F21C570, "Ю ");
          if (qword_27F210658 != -1)
          {
            swift_once();
          }

          v26 = sub_24F929AB8();
          __swift_project_value_buffer(v26, qword_27F22E3B8);
          sub_24F929138();

          (*(v25 + 8))(v6, v3);
          (*(v31 + 8))(v15, v13);
        }
      }
    }
  }

  else
  {
    [0 pause];
    v21 = v32;
  }

  v27 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo;
  v28 = *(v21 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
  if (v28)
  {
    sub_24E65864C(*(v28 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, &v43);
  }

  else
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
  }

  sub_24E65864C(*(v16 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, &v40);
  sub_24E60169C(&v43, v36, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(&v40, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (v36[3])
  {
    sub_24E60169C(v36, v35, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v38 + 1))
    {
      v33[0] = v37;
      v33[1] = v38;
      v34 = v39;
      v29 = MEMORY[0x253052150](v35, v33);
      sub_24E6585F8(v33);
      sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
      sub_24E601704(&v43, &qword_27F235830, &qword_24F93B8C0);
      sub_24E6585F8(v35);
      sub_24E601704(v36, &qword_27F235830, &qword_24F93B8C0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v43, &qword_27F235830, &qword_24F93B8C0);
    sub_24E6585F8(v35);
LABEL_26:
    sub_24E601704(v36, &qword_27F21B438, &unk_24F95FB00);
    goto LABEL_27;
  }

  sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(&v43, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    goto LABEL_26;
  }

  sub_24E601704(v36, &qword_27F235830, &qword_24F93B8C0);
LABEL_24:
  *(v32 + v27) = 0;

  sub_24EEC4150();
LABEL_27:

  return result;
}

void sub_24EEC73C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  v4 = sub_24EEC5ABC(*(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex), *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex + 8));
  if ((v5 & 1) == 0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
    if (v4 < *(v6 + 16))
    {
      if (v4 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_24E65864C(v6 + 40 * v4 + 32, v13);
        v7 = sub_24EEC8E54(v13);
        sub_24E601704(v13, &qword_27F235830, &qword_24F93B8C0);
        if (v7)
        {
          v8 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activeVideo);
          if (v8)
          {
            sub_24E65864C(*(v7 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v13);
            sub_24E65864C(*(v8 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v12);

            v9 = MEMORY[0x253052150](v13, v12);
            sub_24E6585F8(v12);
            sub_24E6585F8(v13);
            if ((v9 & 1) == 0)
            {
              v10 = sub_24F92B858();
              (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
              v11 = swift_allocObject();
              v11[2] = 0;
              v11[3] = 0;
              v11[4] = v7;

              sub_24EA9A1C4(0, 0, v3, &unk_24F9AB7E8, v11);
            }
          }
        }
      }
    }
  }
}

void sub_24EEC75CC(_BYTE *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = v2;
    v7 = *(v5 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
    v8 = *(v7 + 16);

    if (v8)
    {
      v9 = 0;
      v10 = v7 + 32;
      while (v9 < *(v7 + 16))
      {
        sub_24E65864C(v10, v13);
        v3 = MEMORY[0x253052150](v13, a2);
        sub_24E6585F8(v13);
        if (v3)
        {

          v13[0] = v9;
          v3 = sub_24F92CD88();
          v10 = v11;
          goto LABEL_9;
        }

        ++v9;
        v10 += 40;
        if (v8 == v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v10 = 0xE200000000000000;
      v3 = 11565;
LABEL_9:
      if (qword_27F2107D8 == -1)
      {
        goto LABEL_10;
      }
    }

    swift_once();
LABEL_10:
    v12 = sub_24F92AAE8();
    __swift_project_value_buffer(v12, qword_27F232F58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v14 = MEMORY[0x277D837D0];
    v13[0] = v3;
    v13[1] = v10;
    sub_24F928438();
    sub_24E601704(v13, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    v14 = &type metadata for VideoPlayer.PlayerState;
    LOBYTE(v13[0]) = v4;
    sub_24F928438();
    sub_24E601704(v13, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    if (v4 == 4)
    {
      sub_24EEC5890(0);
    }
  }
}

void sub_24EEC7884(double a1)
{
  if (qword_27F2107D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F232F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  v3[3] = MEMORY[0x277D839F8];
  *v3 = a1;
  sub_24F928438();
  sub_24E601704(v3, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  sub_24F92A588();

  sub_24EEC73C4();
}

double sub_24EEC7A4C(int a1, uint64_t a2)
{
  v58 = a1;
  v4 = sub_24F929158();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v19 = sub_24F928698();
  v59 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v56 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  sub_24E65864C(a2, v65);
  sub_24E60169C(v65, &v60, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v61 + 1))
  {
    sub_24E601704(v65, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v60, &qword_27F235830, &qword_24F93B8C0);
    return result;
  }

  v54 = v7;
  v24 = v4;
  v52 = a2;
  v63[0] = v60;
  v63[1] = v61;
  v64 = v62;
  v55 = v2;
  sub_24E65864C(v63, &v60);
  v25 = sub_24EDF0038(&v60);
  sub_24E601704(&v60, &qword_27F235830, &qword_24F93B8C0);
  sub_24E6585F8(v63);
  sub_24E601704(v65, &qword_27F235830, &qword_24F93B8C0);
  if (v25)
  {
    v53 = v25;
    sub_24F143C7C(0, 1, v18);
    v27 = v59;
    v28 = (v59 + 48);
    v51 = *(v59 + 48);
    if (v51(v18, 1, v19) == 1)
    {
      v29 = &qword_27F21EB88;
      v30 = &unk_24F95FAF0;
      v31 = v18;
    }

    else
    {
      (*(v27 + 32))(v23, v18, v19);
      v32 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
      v33 = v55;
      swift_beginAccess();
      sub_24E60169C(v33 + v32, v12, &qword_27F21C570, "Ю ");
      if (!(*(v5 + 48))(v12, 1, v24))
      {
        v34 = v54;
        (*(v5 + 16))(v54, v12, v24);
        sub_24E601704(v12, &qword_27F21C570, "Ю ");
        if (qword_27F210658 != -1)
        {
          swift_once();
        }

        v42 = sub_24F929AB8();
        __swift_project_value_buffer(v42, qword_27F22E3B8);
        sub_24F929138();

        (*(v5 + 8))(v34, v24);
        (*(v59 + 8))(v23, v19);
        goto LABEL_9;
      }

      (*(v27 + 8))(v23, v19);
      v29 = &qword_27F21C570;
      v30 = "Ю ";
      v31 = v12;
    }

    sub_24E601704(v31, v29, v30);
    v34 = v54;
LABEL_9:
    if (v58)
    {
      sub_24F144EC8(v15);
      if (v51(v15, 1, v19) == 1)
      {
        sub_24E601704(v15, &qword_27F21EB88, &unk_24F95FAF0);
        v35 = v55;
        v36 = v52;
      }

      else
      {
        v37 = v59;
        v28 = v56;
        (*(v59 + 32))(v56, v15, v19);
        v38 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
        v35 = v55;
        swift_beginAccess();
        v39 = v35 + v38;
        v40 = v57;
        sub_24E60169C(v39, v57, &qword_27F21C570, "Ю ");
        v41 = (*(v5 + 48))(v40, 1, v24);
        v36 = v52;
        if (!v41)
        {
          (*(v5 + 16))(v34, v40, v24);
          sub_24E601704(v40, &qword_27F21C570, "Ю ");
          if (qword_27F210658 != -1)
          {
            goto LABEL_30;
          }

          goto LABEL_18;
        }

        (*(v37 + 8))(v28, v19);
        sub_24E601704(v40, &qword_27F21C570, "Ю ");
      }

      while (1)
      {
        v45 = sub_24EEC5ABC(*(v35 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex), *(v35 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex + 8));
        if (v46)
        {
          v45 = sub_24EEC5ABC(v45, 1);
          if (v47)
          {
            break;
          }
        }

        v48 = *(v35 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
        if (v45 >= *(v48 + 16))
        {
          break;
        }

        if ((v45 & 0x8000000000000000) == 0)
        {
          sub_24E65864C(v48 + 40 * v45 + 32, v65);
          v49 = sub_24EEC8E54(v65);
          sub_24E601704(v65, &qword_27F235830, &qword_24F93B8C0);
          if (v49)
          {
            sub_24E65864C(*(v49 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v65);
            v50 = MEMORY[0x253052150](v36, v65);
            sub_24E6585F8(v65);
            if ((v50 & 1) == 0)
            {
              sub_24EEC5890(1);
            }
          }

          break;
        }

        __break(1u);
LABEL_30:
        swift_once();
LABEL_18:
        v43 = sub_24F929AB8();
        __swift_project_value_buffer(v43, qword_27F22E3B8);
        sub_24F929138();

        v44 = *(v5 + 8);
        v5 += 8;
        v44(v34, v24);
        (*(v59 + 8))(v28, v19);
      }
    }
  }

  return result;
}

uint64_t sub_24EEC8264(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_24F929158();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_24F928698();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2107D8 != -1)
  {
    swift_once();
  }

  v15 = sub_24F92AAE8();
  __swift_project_value_buffer(v15, qword_27F232F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  if (((*(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) & 1) != 0 || sub_24EEC452C()) && *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled) == 1)
  {
    *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled) = 0;
  }

  sub_24E65864C(v30, v31);
  v16 = sub_24EEC8E54(v31);
  result = sub_24E601704(v31, &qword_27F235830, &qword_24F93B8C0);
  if (v16)
  {
    sub_24F143C7C(1, 0, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      v18 = &qword_27F21EB88;
      v19 = &unk_24F95FAF0;
      v20 = v10;
      return sub_24E601704(v20, v18, v19);
    }

    (*(v12 + 32))(v14, v10, v11);
    v21 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
    swift_beginAccess();
    sub_24E60169C(v2 + v21, v7, &qword_27F21C570, "Ю ");
    v23 = v28;
    v22 = v29;
    if ((*(v28 + 48))(v7, 1, v29))
    {
      (*(v12 + 8))(v14, v11);

      v18 = &qword_27F21C570;
      v19 = "Ю ";
      v20 = v7;
      return sub_24E601704(v20, v18, v19);
    }

    v24 = v27;
    (*(v23 + 16))(v27, v7, v22);
    sub_24E601704(v7, &qword_27F21C570, "Ю ");
    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    v25 = sub_24F929AB8();
    __swift_project_value_buffer(v25, qword_27F22E3B8);
    sub_24F929138();

    (*(v23 + 8))(v24, v22);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_24EEC87A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F929158();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_24F928698();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65864C(a1, v50);
  sub_24E60169C(v50, &v45, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v46 + 1))
  {
    sub_24E601704(v50, &qword_27F235830, &qword_24F93B8C0);
    v33 = &v45;
    v31 = &qword_27F235830;
    v32 = &qword_24F93B8C0;
    return sub_24E601704(v33, v31, v32);
  }

  v44 = v17;
  v41 = v7;
  v48[0] = v45;
  v48[1] = v46;
  v49 = v47;
  sub_24E65864C(v48, &v45);
  v18 = sub_24EDF0038(&v45);
  sub_24E601704(&v45, &qword_27F235830, &qword_24F93B8C0);
  sub_24E6585F8(v48);
  result = sub_24E601704(v50, &qword_27F235830, &qword_24F93B8C0);
  if (!v18)
  {
    return result;
  }

  v42 = v15;
  v43 = v5;
  v40 = v4;
  if (qword_27F2107D8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v20 = sub_24F92AAE8();
    __swift_project_value_buffer(v20, qword_27F232F58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v21 = 1;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayEnabled) = 1;
    sub_24EEC6054();
    v22 = *(v2 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_playbackQueue);
    sub_24E65864C(*(v18 + 16) + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v50);
    v23 = *(v22 + 16);

    v24 = 0;
    if (!v23)
    {
      break;
    }

    v25 = v22 + 32;
    while (v24 < *(v22 + 16))
    {
      sub_24E65864C(v25, v48);
      v26 = MEMORY[0x253052150](v48, v50);
      sub_24E6585F8(v48);
      if (v26)
      {
        goto LABEL_10;
      }

      ++v24;
      v25 += 40;
      if (v23 == v24)
      {
        v24 = 0;
LABEL_10:
        v21 = v26 ^ 1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_11:
  v28 = v42;
  v27 = v43;

  sub_24E6585F8(v50);
  v29 = v2 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_activePlaybackIndex;
  *v29 = v24;
  *(v29 + 8) = v21 & 1;

  sub_24EEC476C(v30, 1);

  sub_24F144620(1, v13);
  if ((*(v28 + 48))(v13, 1, v14) == 1)
  {

    v31 = &qword_27F21EB88;
    v32 = &unk_24F95FAF0;
    v33 = v13;
    return sub_24E601704(v33, v31, v32);
  }

  v34 = v44;
  (*(v28 + 32))(v44, v13, v14);
  v35 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_metricsPipeline;
  swift_beginAccess();
  sub_24E60169C(v2 + v35, v10, &qword_27F21C570, "Ю ");
  v36 = v40;
  if ((*(v27 + 48))(v10, 1, v40))
  {
    (*(v28 + 8))(v34, v14);

    v31 = &qword_27F21C570;
    v32 = "Ю ";
    v33 = v10;
    return sub_24E601704(v33, v31, v32);
  }

  v37 = v41;
  (*(v27 + 16))(v41, v10, v36);
  sub_24E601704(v10, &qword_27F21C570, "Ю ");
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v38 = sub_24F929AB8();
  __swift_project_value_buffer(v38, qword_27F22E3B8);
  v39 = v44;
  sub_24F929138();

  (*(v27 + 8))(v37, v36);
  return (*(v28 + 8))(v39, v14);
}

uint64_t sub_24EEC8E54(uint64_t a1)
{
  sub_24E60169C(a1, &v3, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v4 + 1))
  {
    v6[0] = v3;
    v6[1] = v4;
    v7 = v5;
    sub_24E65864C(v6, &v3);
    v1 = sub_24EDF0038(&v3);
    sub_24E601704(&v3, &qword_27F235830, &qword_24F93B8C0);
    sub_24E6585F8(v6);
  }

  else
  {
    sub_24E601704(&v3, &qword_27F235830, &qword_24F93B8C0);
    return 0;
  }

  return v1;
}

void sub_24EEC8F14()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isVideoAutoplayEnabled);
  if (v2 != UIAccessibilityIsVideoAutoplayEnabled())
  {
    *(v0 + v1) = UIAccessibilityIsVideoAutoplayEnabled();
    if (qword_27F2107D8 != -1)
    {
      swift_once();
    }

    v3 = sub_24F92AAE8();
    __swift_project_value_buffer(v3, qword_27F232F58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v4 = *(v0 + v1);
    v6 = MEMORY[0x277D839B0];
    v5[0] = v4;
    sub_24F928438();
    sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A588();

    if (*(v0 + v1) == 1)
    {
      *(v0 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_isAutoPlayActive) = 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if ((v5[0] & 1) == 0)
      {
        sub_24EEC66B8();
      }
    }

    else
    {
      sub_24EEC6894();
    }
  }
}

void sub_24EEC9224(void *a1)
{
  v2 = [a1 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = sub_24F92AE38();

  sub_24F92C7F8();
  if (!*(v4 + 16) || (v5 = sub_24E76D934(v8), (v6 & 1) == 0))
  {

    sub_24E6585F8(v8);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  sub_24E643A9C(*(v4 + 56) + 32 * v5, &v9);
  sub_24E6585F8(v8);

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_24E601704(&v9, &qword_27F2129B0, &unk_24F945320);
    return;
  }

  if (swift_dynamicCast())
  {
    v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled);
    *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator__isGlobalAutoPlayEnabled) = v8[0];
    sub_24EEC3D9C(v7);
  }
}

id sub_24EEC9418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlaybackCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for VideoPlaybackCoordinator(uint64_t a1)
{
  result = qword_27F232FF8;
  if (!qword_27F232FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEC95BC(uint64_t a1)
{
  sub_24E78F45C(319);
  if (v1 <= 0x3F)
  {
    sub_24EA22D84();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EEC96EC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VideoPlaybackCoordinator(0);
  result = sub_24F922FA8();
  *a2 = result;
  return result;
}

uint64_t sub_24EEC9740()
{
  if (qword_27F2107D8 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F232F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();
}

uint64_t sub_24EEC9884(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit24VideoPlaybackCoordinator_videoViewModelManager);
  sub_24E60169C(a1, &v8, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v9 + 1))
  {
    v11[0] = v8;
    v11[1] = v9;
    v12 = v10;
    v3 = *(v2 + 16);
    if (*(v3 + 16))
    {

      v4 = sub_24E76D934(v11);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);

        sub_24E6585F8(v11);

        return v6;
      }
    }

    sub_24E6585F8(v11);
  }

  else
  {
    sub_24E601704(&v8, &qword_27F235830, &qword_24F93B8C0);
  }

  return 0;
}

void sub_24EEC9960(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24EEC9A08()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EEC9A74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EEC9AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F145FA8(a1, v4, v5, v6);
}

uint64_t sub_24EEC9B68()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *ShowRatingPromptAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + OBJC_IVAR____TtC12GameStoreKit22ShowRatingPromptAction_rateAction) = 0;
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ShowRatingPromptAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit22ShowRatingPromptAction_rateAction) = 0;
  v14 = *(v10 + 16);
  v18 = a1;
  v14(v13, a1, v9, v11);
  (*(v6 + 16))(v8, a2, v5);
  v15 = Action.init(deserializing:using:)(v13, v8);
  (*(v6 + 8))(a2, v5);
  (*(v10 + 8))(v18, v9);
  return v15;
}

uint64_t ShowRatingPromptAction.__allocating_init(rateAction:)(uint64_t a1)
{
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC12GameStoreKit22ShowRatingPromptAction_rateAction) = a1;
  v30 = 0;
  memset(v29, 0, sizeof(v29));

  sub_24F928A98();
  v14 = sub_24F929608();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = (v13 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = v13 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v29, &v26);
  if (*(&v27 + 1))
  {
    v17 = v27;
    *v16 = v26;
    *(v16 + 16) = v17;
    *(v16 + 32) = v28;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v19 = v2;
    v20 = v18;
    v21 = v3;
    v23 = v22;
    (*(v21 + 8))(v5, v19);
    v25[1] = v20;
    v25[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v8, v13 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  (*(v10 + 32))(v13 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v12, v9);
  return v13;
}

uint64_t ShowRatingPromptAction.init(rateAction:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = sub_24F928AD8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit22ShowRatingPromptAction_rateAction) = a1;
  v33 = 0;
  memset(v32, 0, sizeof(v32));

  sub_24F928A98();
  v15 = sub_24F929608();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = (v2 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v16 = 0u;
  v16[1] = 0u;
  sub_24E65E064(v32, &v26);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v18 = v5;
    v19 = v17;
    v21 = v20;
    (*(v18 + 8))(v7, v4);
    v25[1] = v19;
    v25[2] = v21;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v32, &qword_27F235830, &qword_24F93B8C0);
  v22 = v2 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v22 + 32) = v31;
  v23 = v30;
  *v22 = v29;
  *(v22 + 16) = v23;
  sub_24E65E0D4(v10, v2 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v14, v11);
  return v2;
}

uint64_t ShowRatingPromptAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ShowRatingPromptAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShowRatingPromptAction(uint64_t a1)
{
  result = qword_27F233008;
  if (!qword_27F233008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EECA940(uint64_t a1)
{
  v2 = sub_24EECAAEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EECA97C(uint64_t a1)
{
  v2 = sub_24EECAAEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EECA9D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233018, &qword_24F9AB940);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EECAAEC();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EECAAEC()
{
  result = qword_27F233020;
  if (!qword_27F233020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233020);
  }

  return result;
}

unint64_t sub_24EECAB54()
{
  result = qword_27F233028;
  if (!qword_27F233028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233028);
  }

  return result;
}

unint64_t sub_24EECABAC()
{
  result = qword_27F233030;
  if (!qword_27F233030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233030);
  }

  return result;
}

uint64_t CallAction.providerIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CallAction(0) + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CallAction(uint64_t a1)
{
  result = qword_27F233050;
  if (!qword_27F233050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EECAD08()
{
  v1 = 0x73656C646E6168;
  v2 = 0x6F656469567369;
  if (*v0 != 2)
  {
    v2 = 0x654D6E6F69746361;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24EECAD94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EECB8E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EECADBC(uint64_t a1)
{
  v2 = sub_24EECB084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EECADF8(uint64_t a1)
{
  v2 = sub_24EECB084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CallAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233038, &qword_24F9AB9F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EECB084();
  sub_24F92D128();
  v12 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690, &qword_24F98E9E8);
    sub_24EC37C3C(&qword_27F22BE30, sub_24EC37814, MEMORY[0x277D83948]);
    sub_24F92CD48();
    v10[14] = 2;
    sub_24F92CD18();
    type metadata accessor for CallAction(0);
    v10[13] = 3;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24EECB084()
{
  result = qword_27F233040;
  if (!qword_27F233040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233040);
  }

  return result;
}

uint64_t CallAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_24F928AD8();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233048, &qword_24F9ABA00);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CallAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EECB084();
  v23 = v8;
  v12 = v24;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v21;
  v15 = v22;
  v29 = 0;
  *v11 = sub_24F92CC28();
  *(v11 + 1) = v16;
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237690, &qword_24F98E9E8);
  v28 = 1;
  sub_24EC37C3C(&qword_27F22BE48, sub_24EC37CB4, MEMORY[0x277D83978]);
  sub_24F92CC68();
  *(v11 + 2) = v25;
  v27 = 2;
  v18 = 0;
  v11[24] = sub_24F92CC38() & 1;
  v26 = 3;
  sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
  sub_24F92CC68();
  (*(v14 + 8))(v23, v15);
  (*(v19 + 32))(&v11[*(v9 + 28)], v5, v3);
  sub_24EECB4CC(v11, v20);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24EECB530(v11);
}

uint64_t sub_24EECB4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EECB530(uint64_t a1)
{
  v2 = type metadata accessor for CallAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EECB5D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EECB690(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EECB734(uint64_t a1)
{
  sub_24EC38004();
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24EECB7E4()
{
  result = qword_27F233060;
  if (!qword_27F233060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233060);
  }

  return result;
}

unint64_t sub_24EECB83C()
{
  result = qword_27F233068;
  if (!qword_27F233068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233068);
  }

  return result;
}

unint64_t sub_24EECB894()
{
  result = qword_27F233070;
  if (!qword_27F233070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233070);
  }

  return result;
}

uint64_t sub_24EECB8E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA4A580 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F656469567369 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t Lockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v184 = a2;
  v158 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v166 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v162 = &v155 - v8;
  v178 = sub_24F9285B8();
  v169 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v175 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v167 = (&v155 - v11);
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_24F928388();
  v16 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v165 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v164 = &v155 - v19;
  MEMORY[0x28223BE20](v20);
  v163 = &v155 - v21;
  MEMORY[0x28223BE20](v22);
  v161 = &v155 - v23;
  MEMORY[0x28223BE20](v24);
  v160 = &v155 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v155 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v155 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v155 - v33;
  v168 = v3;
  *(v3 + 424) = 4;
  v174 = a1;
  sub_24F928398();
  v35 = sub_24F928348();
  if (v36)
  {
    v179 = v35;
    v180 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v38 = v13;
    v40 = v39;
    (*(v38 + 8))(v15, v12);
    v179 = v37;
    v180 = v40;
  }

  sub_24F92C7F8();
  v41 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v177 = *(v16 + 8);
  v177(v34, v176);
  v42 = v182;
  v43 = v168;
  *(v168 + 448) = v181;
  *(v43 + 464) = v42;
  *(v43 + 480) = v183;
  sub_24F929608();
  v44 = v174;
  sub_24F928398();
  v45 = v169;
  v171 = *(v169 + 16);
  v172 = v169 + 16;
  v171(v175, v184, v178);
  v46 = v167;
  sub_24F929548();
  v159 = OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics;
  sub_24E65E0D4(v46, v43 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics);
  sub_24F928398();
  v47 = sub_24F928348();
  v49 = v48;
  v177(v28, v176);
  if (!v49)
  {
    v99 = sub_24F92AC38();
    sub_24EECF174(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v100 = 0x64496D616461;
    v100[1] = 0xE600000000000000;
    v100[2] = v158;
    (*(*(v99 - 8) + 104))(v100, *MEMORY[0x277D22530], v99);
    swift_willThrow();
    (*(v45 + 8))(v184, v178);
    v177(v44, v176);
    sub_24E6585F8(v43 + 448);
    sub_24E601704(v43 + v159, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for Lockup(0);
    swift_deallocPartialClassInstance();
    return v43;
  }

  v167 = (v43 + 376);
  *(v43 + 16) = v47;
  *(v43 + 24) = v49;
  sub_24F928398();
  v50 = sub_24F928348();
  v52 = v51;
  v53 = v177;
  v54 = v176;
  (v177)(v31);
  v55 = v53;
  *(v43 + 32) = v50;
  *(v43 + 40) = v52;
  v56 = type metadata accessor for Artwork(0);
  sub_24F928398();
  v171(v175, v184, v178);
  v157 = sub_24EECF174(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v158 = v56;
  sub_24F929548();
  *(v43 + 48) = v181;
  v57 = v160;
  sub_24F928398();
  LOBYTE(v50) = sub_24F928278();
  v53(v57, v54);
  *(v43 + 56) = v50 & 1;
  sub_24F928398();
  v58 = sub_24F928348();
  v60 = v59;
  v53(v31, v54);
  *(v43 + 64) = v58;
  *(v43 + 72) = v60;
  sub_24F928398();
  v61 = sub_24F928348();
  v63 = v62;
  v53(v31, v54);
  *(v43 + 80) = v61;
  *(v43 + 88) = v63;
  sub_24F928398();
  v64 = sub_24F928348();
  v66 = v65;
  v53(v31, v54);
  *(v43 + 96) = v64;
  *(v43 + 104) = v66;
  sub_24F928398();
  v67 = sub_24F928348();
  v69 = v68;
  v53(v31, v54);
  *(v43 + 112) = v67;
  *(v43 + 120) = v69;
  sub_24F928398();
  v70 = JSONObject.appStoreColor.getter();
  v53(v31, v54);
  *(v43 + 128) = v70;
  sub_24F928398();
  sub_24EE5C214();
  sub_24F928248();
  v53(v31, v54);
  *(v43 + 136) = v181;
  sub_24F928398();
  v71 = sub_24F928348();
  v73 = v72;
  v55(v31, v54);
  *(v43 + 144) = v71;
  *(v43 + 152) = v73;
  sub_24F928398();
  v74 = sub_24F928348();
  v76 = v75;
  v55(v31, v54);
  *(v43 + 184) = v74;
  *(v43 + 192) = v76;
  sub_24F928398();
  v77 = sub_24F928348();
  v79 = v78;
  v177 = v55;
  v173 = v41;
  v55(v31, v54);
  *(v43 + 216) = v77;
  *(v43 + 224) = v79;
  sub_24F928398();
  v80 = sub_24F928348();
  v82 = v81;
  v55(v31, v54);
  *(v43 + 200) = v80;
  *(v43 + 208) = v82;
  type metadata accessor for LockupContextMenuData();
  sub_24F928398();
  v83 = v184;
  v84 = v178;
  v85 = v171;
  v171(v175, v184, v178);
  sub_24EECF174(&qword_27F233078, type metadata accessor for LockupContextMenuData, &protocol conformance descriptor for LockupContextMenuData);
  sub_24F929548();
  *(v43 + 360) = v181;
  sub_24F928398();
  v86 = v175;
  v85(v175, v83, v84);
  sub_24EAFF164(v31, v86, &v181);
  v87 = v183;
  v88 = v182;
  v89 = v167;
  *v167 = v181;
  v89[1] = v88;
  *(v43 + 408) = v87;
  type metadata accessor for SearchAdOpportunity();
  sub_24F928398();
  v85(v86, v184, v84);
  sub_24EECF174(&qword_27F227228, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
  sub_24F929548();
  *(v43 + 416) = v181;
  v90 = v161;
  sub_24F928398();
  v91 = v162;
  sub_24F9282B8();
  v93 = v176;
  v92 = v177;
  v177(v90, v176);
  v94 = sub_24F92AC28();
  v95 = *(v94 - 8);
  v96 = *(v95 + 48);
  v160 = (v95 + 48);
  v156 = v96;
  v97 = v96(v91, 1, v94);
  v161 = v94;
  v155 = v95;
  if (v97 == 1)
  {
    sub_24E601704(v91, &qword_27F2213B0, &qword_24F965EC0);
    v98 = MEMORY[0x277D84F90];
  }

  else
  {
    v101 = v170;
    v102 = sub_24F92ABB8();
    v170 = v101;
    if (v101)
    {

      v154 = v168;

      sub_24E951FEC(*(v154 + 376), *(v154 + 384), *(v154 + 392), *(v154 + 400), *(v154 + 408));

      sub_24E6585F8(v154 + 448);
      sub_24E601704(v154 + v159, &qword_27F213E68, &unk_24F93BC80);
      type metadata accessor for Lockup(0);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_21;
    }

    v98 = v102;
    (*(v95 + 8))(v91, v94);
  }

  v103 = sub_24F45D7F4(v98);

  v104 = v168;
  *(v168 + 432) = v103;
  sub_24F928398();
  sub_24EECEFD0();
  sub_24F928248();
  v92(v31, v93);
  v105 = v179;
  swift_beginAccess();
  *(v104 + 424) = v105;
  sub_24F928398();
  v106 = sub_24F928338();
  v92(v31, v93);
  *(v104 + 160) = v106;
  sub_24F928398();
  v107 = sub_24F928348();
  v109 = v108;
  v92(v31, v93);
  *(v104 + 168) = v107;
  *(v104 + 176) = v109;
  sub_24F928398();
  v110 = sub_24F928348();
  v112 = v111;
  v92(v31, v93);
  *(v104 + 248) = v110;
  *(v104 + 256) = v112;
  v167 = type metadata accessor for Action(0);
  sub_24F928398();
  v113 = v92;
  v114 = v184;
  v115 = static Action.tryToMakeInstance(byDeserializing:using:)(v31, v184);
  v113(v31, v93);
  *(v104 + 232) = v115;
  type metadata accessor for OfferDisplayProperties();
  sub_24F928398();
  v171(v175, v114, v178);
  sub_24EECF174(&qword_27F225B10, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
  sub_24F929548();
  *(v104 + 240) = v179;
  sub_24F928398();
  v116 = static Action.tryToMakeInstance(byDeserializing:using:)(v31, v184);
  v113(v31, v93);
  *(v104 + 264) = v116;
  sub_24F928398();
  v117 = sub_24F928348();
  v119 = v118;
  v113(v31, v93);
  *(v104 + 272) = v117;
  *(v104 + 280) = v119;
  sub_24F928398();
  v120 = sub_24F928348();
  v122 = v121;
  v113(v31, v93);
  v93 = v104;
  *(v104 + 288) = v120;
  *(v104 + 296) = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233088, &qword_24F9ABBB8);
  sub_24F928398();
  (v171)();
  sub_24EECF024();
  sub_24F929548();
  v123 = v179;
  if (v179)
  {
    if (v179 >> 62)
    {
      type metadata accessor for Lockup(0);

      v153 = sub_24F92CA98();
      swift_bridgeObjectRelease_n();
      v123 = v153;
    }

    else
    {

      sub_24F92CEE8();
      type metadata accessor for Lockup(0);
    }
  }

  v124 = v176;
  v125 = v177;
  *(v104 + 304) = v123;
  sub_24F928398();
  v126 = sub_24F928348();
  v128 = v127;
  v125(v31, v124);
  *(v104 + 312) = v126;
  *(v104 + 320) = v128;
  sub_24F928398();
  v129 = v125;
  v130 = v184;
  v131 = static Action.tryToMakeInstance(byDeserializing:using:)(v31, v184);
  v129(v31, v124);
  *(v104 + 328) = v131;
  sub_24F928398();
  v132 = v175;
  v133 = v178;
  v134 = v171;
  v171(v175, v130, v178);
  sub_24F929548();
  *(v93 + 336) = v179;
  v167 = type metadata accessor for FlowPreviewActionsConfiguration();
  sub_24F928398();
  v134(v132, v130, v133);
  sub_24EECF174(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
  sub_24F929548();
  *(v93 + 440) = v179;
  v135 = v163;
  sub_24F928398();
  LOBYTE(v131) = sub_24F928278();
  v136 = v176;
  v137 = v177;
  v177(v135, v176);
  *(v93 + 368) = v131 & 1;
  v138 = v164;
  sub_24F928398();
  LOBYTE(v131) = sub_24F928278();
  v137(v138, v136);
  *(v93 + 369) = v131 & 1;
  v139 = v165;
  sub_24F928398();
  v140 = v166;
  sub_24F9282B8();
  v141 = v139;
  v142 = v136;
  v137(v141, v136);
  v143 = v161;
  if (v156(v140, 1, v161) == 1)
  {
    sub_24E601704(v140, &qword_27F2213B0, &qword_24F965EC0);
    v144 = MEMORY[0x277D84F90];
    v145 = v184;
    v146 = v178;
    v147 = v169;
LABEL_17:
    *(v93 + 344) = v144;
    v150 = v174;
    sub_24F928398();
    sub_24EECF0D8();
    sub_24F928248();
    (*(v147 + 8))(v145, v146);
    v151 = v177;
    v177(v150, v142);
    v151(v31, v142);
    *(v93 + 352) = v179 & 1;
    return v93;
  }

  v148 = v170;
  v149 = sub_24F92ABB8();
  v147 = v169;
  v170 = v148;
  if (!v148)
  {
    v144 = v149;
    (*(v155 + 8))(v140, v143);
    v145 = v184;
    v146 = v178;
    goto LABEL_17;
  }

LABEL_21:

  sub_24E951FEC(*(v93 + 376), *(v93 + 384), *(v93 + 392), *(v93 + 400), *(v93 + 408));

  sub_24E6585F8(v93 + 448);
  sub_24E601704(v93 + v159, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for Lockup(0);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}