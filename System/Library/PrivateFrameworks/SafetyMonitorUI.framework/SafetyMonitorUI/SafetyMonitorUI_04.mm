unint64_t sub_264680DA8()
{
  result = qword_27FF76718;
  if (!qword_27FF76718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F0, &qword_26478AB60);
    sub_264681990(&qword_27FF77F70, type metadata accessor for SafetyCacheMapView, &unk_26478F20C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76718);
  }

  return result;
}

unint64_t sub_264680E64()
{
  result = qword_27FF76728;
  if (!qword_27FF76728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76720, &qword_26478ABD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F0, &qword_26478AB60);
    sub_264680DA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76728);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for PushingSafetyCacheMapContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  v6 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 32);
    v8 = sub_264783AF4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2646810EC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_264681168()
{
  result = qword_27FF76740;
  if (!qword_27FF76740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766A8, &unk_26478AA80);
    sub_264681990(&qword_27FF76748, type metadata accessor for SafetyCacheMapView.Annotation, &unk_26478F1A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76740);
  }

  return result;
}

uint64_t sub_26468121C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26468128C()
{
  result = qword_27FF76760;
  if (!qword_27FF76760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76760);
  }

  return result;
}

uint64_t sub_26468130C(uint64_t a1)
{
  v2 = sub_2647852B4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_264784394();
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  v6 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 32);
    v8 = sub_264783AF4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);

  v9 = (v5 + v1[9]);
  v10 = *(v6 + 32);
  v11 = sub_264783AF4();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_26468164C()
{
  result = qword_27FF767B8;
  if (!qword_27FF767B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF767B0, &qword_26478AC78);
    sub_26468128C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF767B8);
  }

  return result;
}

uint64_t sub_2646816FC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);

  return sub_2646804C4(a1);
}

uint64_t sub_264681790(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_264785C14();
  }

  return sub_264785D14();
}

uint64_t sub_2646817F4@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767C0, &qword_26478AC80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767C8, &qword_26478AC88);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(v16, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v16[1];
    v15 = v17;
    *a3 = v16[0];
    *(a3 + 8) = v14;
    *(a3 + 16) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264681950()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264681990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2646819D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v0 + v3);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {

    v10 = *(v5 + 32);
    v11 = sub_264783AF4();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  v12 = v2 | v7;
  v13 = (v3 + v4 + v7) & ~v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76688, &unk_26478AA40);

  v14 = (v9 + v1[9]);
  v15 = *(v5 + 32);
  v16 = sub_264783AF4();
  v17 = *(*(v16 - 8) + 8);
  v17(v14 + v15, v16);

  v17((v0 + v13 + *(v5 + 32)), v16);

  return MEMORY[0x2821FE8E8](v0, v13 + v8, v12 | 7);
}

uint64_t sub_264681D08(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SelectionPreservingSafetyCacheMapContentView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

unint64_t sub_264681DE8()
{
  result = qword_27FF76808;
  if (!qword_27FF76808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76800, &qword_26478AD20);
    sub_26460CDF0(&qword_27FF76810, &qword_27FF76818, &qword_26478AD28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76808);
  }

  return result;
}

uint64_t sub_264681EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264681F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264681F60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76708, &qword_26478AB78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766A8, &unk_26478AA80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76700, &qword_26478AB70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76730, &unk_26478ABD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F8, &qword_26478AB68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76720, &qword_26478ABD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F0, &qword_26478AB60);
  sub_264680DA8();
  swift_getOpaqueTypeConformance2();
  sub_264680E64();
  swift_getOpaqueTypeConformance2();
  sub_26460CDF0(&qword_27FF76738, &qword_27FF76730, &unk_26478ABD8, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  sub_264681168();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_264682144()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76770, &qword_26478AC48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766A8, &unk_26478AA80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76700, &qword_26478AB70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76778, &qword_26478AC50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F8, &qword_26478AB68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76720, &qword_26478ABD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF766F0, &qword_26478AB60);
  sub_264680DA8();
  swift_getOpaqueTypeConformance2();
  sub_264680E64();
  swift_getOpaqueTypeConformance2();
  sub_26460CDF0(&qword_27FF76780, &qword_27FF76778, &qword_26478AC50, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  sub_264681168();
  return swift_getOpaqueTypeConformance2();
}

char *DefaultInitiatorSessionDetailsViewController.init(sessionID:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264783B64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_sessionViewModel;
  if (qword_27FF74FC0 != -1)
  {
    swift_once();
  }

  *&v2[v8] = off_27FF75B20;
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_handlerManager;
  type metadata accessor for HandlerManager();
  swift_allocObject();
  v10 = HandlerManager.init()();
  *&v2[v9] = v11;
  (*(v5 + 16))(v7, a1, v4, v10);
  v27[0] = 0;
  v12 = objc_allocWithZone(type metadata accessor for SafetyCacheViewModel(0));

  *&v2[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_safetyCacheViewModel] = sub_2646789E0(v7, v27, 0, 0);
  v13 = type metadata accessor for DefaultInitiatorSessionDetailsViewController();
  v28.receiver = v2;
  v28.super_class = v13;
  v14 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  (*(v5 + 8))(a1, v4);
  v15 = OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_handlerManager;
  v16 = *&v14[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_handlerManager];
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  swift_beginAccess();
  v18 = *(v16 + 16);
  v19 = *(v16 + 24);
  *(v16 + 16) = sub_264683608;
  *(v16 + 24) = v17;
  v20 = v14;

  sub_26460C9A0(v18, v19);

  v21 = *&v14[v15];
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  swift_beginAccess();
  v23 = *(v21 + 48);
  v24 = *(v21 + 56);
  *(v21 + 48) = sub_26468362C;
  *(v21 + 56) = v22;

  sub_26460C9A0(v23, v24);

  return v20;
}

void sub_264682754()
{
  v1 = v0;
  v2 = type metadata accessor for InitiatorSessionDetailsView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DefaultInitiatorSessionDetailsViewController();
  v27.receiver = v1;
  v27.super_class = v5;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v6 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_sessionViewModel];
  v7 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_handlerManager];
  v8 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI44DefaultInitiatorSessionDetailsViewController_safetyCacheViewModel];

  InitiatorSessionDetailsView.init(sessionViewModel:handlerManager:safetyCacheViewModel:showCachePersistence:)(v6, v7, v8, 0, v4);
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76850, &unk_26478AE10));
  v10 = sub_264784784();
  [v1 addChildViewController_];
  v11 = [v10 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  v13 = [v10 view];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = [v1 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame_];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v10 view];

  if (v26)
  {
    [v25 addSubview_];

    [v10 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_264682A14()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v5 = v0;
  v6 = sub_264783E14();
  v7 = sub_2647859B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v8 = 136315394;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_264785724();
    v19 = v1;
    v13 = v12;

    v14 = sub_2646DF234(v11, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264795580, &v21);
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: end session", v8, 0x16u);
    v15 = v20;
    swift_arrayDestroy();
    MEMORY[0x266740650](v15, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);

    (*(v2 + 8))(v4, v19);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v16 = v5;

  sub_26465736C(v17, v16);
}

uint64_t sub_264682C78(void *a1, void *a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_264783DF4();
    v10 = a1;
    v11 = a2;
    v12 = sub_264783E14();
    v13 = sub_2647859D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = v4;
      v15 = v14;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v15 = 136315650;
      v16 = v11;
      v17 = [v16 description];
      v18 = sub_264785724();
      v20 = v19;

      v21 = sub_2646DF234(v18, v20, &v29);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264795580, &v29);
      *(v15 + 22) = 2112;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v23;
      v24 = v26;
      *v26 = v23;
      _os_log_impl(&dword_264605000, v12, v13, "%s, %s: end session error, %@", v15, 0x20u);
      sub_26468367C(v24);
      MEMORY[0x266740650](v24, -1, -1);
      v25 = v27;
      swift_arrayDestroy();
      MEMORY[0x266740650](v25, -1, -1);
      MEMORY[0x266740650](v15, -1, -1);

      return (*(v5 + 8))(v8, v28);
    }

    else
    {

      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

void sub_264682F2C()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v5 = v0;
  v6 = sub_264783E14();
  v7 = sub_2647859B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v8 = 136315394;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_264785724();
    v19 = v1;
    v13 = v12;

    v14 = sub_2646DF234(v11, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2646DF234(0xD000000000000024, 0x8000000264795550, &v21);
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: safe response to trigger prompt", v8, 0x16u);
    v15 = v20;
    swift_arrayDestroy();
    MEMORY[0x266740650](v15, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);

    (*(v2 + 8))(v4, v19);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v16 = v5;

  sub_264657BA8(v17, v16);
}

uint64_t sub_264683190(void *a1, void *a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_264783DF4();
    v10 = a1;
    v11 = a2;
    v12 = sub_264783E14();
    v13 = sub_2647859D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = v4;
      v15 = v14;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v15 = 136315650;
      v16 = v11;
      v17 = [v16 description];
      v18 = sub_264785724();
      v20 = v19;

      v21 = sub_2646DF234(v18, v20, &v29);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2646DF234(0xD000000000000024, 0x8000000264795550, &v29);
      *(v15 + 22) = 2112;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v23;
      v24 = v26;
      *v26 = v23;
      _os_log_impl(&dword_264605000, v12, v13, "%s, %s: safe response to trigger prompt error, %@", v15, 0x20u);
      sub_26468367C(v24);
      MEMORY[0x266740650](v24, -1, -1);
      v25 = v27;
      swift_arrayDestroy();
      MEMORY[0x266740650](v25, -1, -1);
      MEMORY[0x266740650](v15, -1, -1);

      return (*(v5 + 8))(v8, v28);
    }

    else
    {

      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

id DefaultInitiatorSessionDetailsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_264785714();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DefaultInitiatorSessionDetailsViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DefaultInitiatorSessionDetailsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2646835D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26468367C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF779D0, &qword_26478A9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2646836E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_264683760()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_2646837FC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v3);

  return v3;
}

uint64_t sub_264683868()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v7 = *(v0 + 8);
  v6 = *(v0 + 9);
  v8 = *(v0 + 10);
  v9 = *(v0 + 12);
  v18 = *(v0 + 11);

  sub_264655900(v18, v9);

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI17CacheMapViewModel__mapRegion;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77720, &qword_26478B008);
  (*(*(v11 - 8) + 8))(&v0[v10], v11);
  v12 = OBJC_IVAR____TtC15SafetyMonitorUI17CacheMapViewModel__mapAnnotations;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76890, &qword_26478B010);
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  v14 = OBJC_IVAR____TtC15SafetyMonitorUI17CacheMapViewModel__mostRecentLocationName;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v16 = *(*(v15 - 8) + 8);
  v16(&v0[v14], v15);
  v16(&v0[OBJC_IVAR____TtC15SafetyMonitorUI17CacheMapViewModel__mostRecentLocationAddress], v15);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CacheMapViewModel(uint64_t a1)
{
  result = qword_27FF76878;
  if (!qword_27FF76878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264683AA0(uint64_t a1)
{
  sub_264683BEC(319);
  if (v1 <= 0x3F)
  {
    sub_264656F0C(319, &qword_27FF76888, &unk_27FF779C0, qword_26478AEA0);
    if (v2 <= 0x3F)
    {
      sub_264656F0C(319, &qword_27FF75E08, &qword_27FF75C40, &qword_264788A70);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264683BEC(uint64_t a1)
{
  if (!qword_27FF779B0)
  {
    type metadata accessor for MKCoordinateRegion(255);
    v1 = sub_264783EF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF779B0);
    }
  }
}

uint64_t sub_264683C44@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CacheMapViewModel(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

double sub_264683C84@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v5);

  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_264683D04(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_264683D7C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_264683DFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

double sub_264683E78@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v6);

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_264683F1C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

id sub_264684024()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v44 = *(v0 + 96);
  v45 = *(v0 + 104);
  v11 = [objc_allocWithZone(MEMORY[0x277CBFC10]) initWithEffectiveBundlePath_];
  v43 = v2;
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277CD4EC8]) initWithFrame:v11 locationManager:{0.0, 0.0, 0.0, 0.0}];
    if (v13)
    {
      v14 = v13;
      sub_264783DF4();
      v15 = v12;
      v16 = sub_264783E14();
      v17 = sub_2647859F4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v42 = v5;
        v19 = v2;
        v20 = v18;
        v21 = swift_slowAlloc();
        v47 = v21;
        *v20 = 136315394;
        *(v20 + 4) = sub_2646DF234(0xD000000000000014, 0x8000000264795740, &v47);
        *(v20 + 12) = 1024;
        *(v20 + 14) = [v15 authorizationStatus];

        _os_log_impl(&dword_264605000, v16, v17, "MapView,%s, Loaded location manager, creating attributed map view,locationManager authorization status: %d", v20, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x266740650](v21, -1, -1);
        MEMORY[0x266740650](v20, -1, -1);

        v22 = v19;
        v5 = v42;
      }

      else
      {

        v22 = v2;
      }

      v27 = *(v22 + 8);
      v27(v10, v1);
      v28 = v14;
      [v28 setShowsUserLocation_];

      goto LABEL_11;
    }
  }

  sub_264783DF4();
  v23 = sub_264783E14();
  v24 = sub_2647859D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v47 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2646DF234(0xD000000000000014, 0x8000000264795740, &v47);
    _os_log_impl(&dword_264605000, v23, v24, "MapView,%s, Unable to load location manager, falling back to default map view", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x266740650](v26, -1, -1);
    MEMORY[0x266740650](v25, -1, -1);
  }

  v27 = *(v2 + 8);
  v27(v8, v1);
  v28 = [objc_allocWithZone(MEMORY[0x277CD4EC8]) init];
  [v28 setShowsUserLocation_];
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76960, &qword_26478B200);
  sub_264784AB4();
  v29 = v47;
  [v28 setDelegate_];

  sub_264784AB4();
  v30 = objc_allocWithZone(MEMORY[0x277D75708]);
  v31 = v47;
  v32 = [v30 initWithTarget:v47 action:sel_longPressActionWithSender_];

  [v28 addGestureRecognizer_];
  v47 = v44;
  v48 = v45;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76968, &qword_26478B208);
  MEMORY[0x26673F100](&v46, v33);
  if (v46 >> 62)
  {
    v40 = sub_264785C14();

    if (v40)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v34 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v34)
    {
      goto LABEL_16;
    }
  }

  sub_264783DF4();
  v35 = sub_264783E14();
  v36 = sub_2647859F4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_2646DF234(0xD000000000000014, 0x8000000264795740, &v47);
    _os_log_impl(&dword_264605000, v35, v36, "MapView,%s,Selected locations empty, set map view to default location", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x266740650](v38, -1, -1);
    MEMORY[0x266740650](v37, -1, -1);
  }

  v27(v5, v1);
  [v28 goToDefaultLocation];
LABEL_16:

  return v28;
}

uint64_t sub_264684624(void *a1)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v69 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v72 = *(v1 + 56);
  v13 = *(v1 + 64);
  v70 = v12;
  v71 = v13;
  v91 = *(v1 + 104);
  v92 = *(v1 + 120);
  v14 = *(v1 + 152);
  v93 = *(v1 + 136);
  v94 = v14;
  v15 = *(v1 + 88);
  v89 = *(v1 + 72);
  v90 = v15;
  v16 = a1;
  v17 = [a1 annotations];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE0, &qword_26478F3D0);
  v19 = sub_2647857F4();

  v67 = v7;
  v68 = v6;
  v65 = v3;
  v66 = v18;
  v64 = v4;
  if (v19 >> 62)
  {
LABEL_15:
    v20 = sub_264785C14();
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
LABEL_3:
      v21 = 0;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x26673FA30](v21, v19);
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            goto LABEL_17;
          }
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v22 = *(v19 + 8 * v21 + 32);
          swift_unknownObjectRetain();
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        ++v21;
      }

      while (v23 != v20);
    }
  }

  v22 = 0;
LABEL_17:
  v24 = v70;
  v73 = v70;
  v74 = v72;
  v75 = v71;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76930, &qword_26478B1D0);
  MEMORY[0x26673F100](v88);
  v26 = v88[0];
  v27 = v69;
  if (!(*&v88[0] >> 62))
  {
    result = *((*&v88[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_19;
    }

LABEL_31:

    if (!v22)
    {
      v37 = 0;
      goto LABEL_42;
    }

    v38 = 0;
    v30 = v22;
LABEL_33:
    [v30 coordinate];
    v30 = v38;
    goto LABEL_34;
  }

  result = sub_264785C14();
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_19:
  if ((*&v26 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x26673FA30](0, *&v26);
  }

  else
  {
    if (!*((*&v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v29 = *(*&v26 + 32);
  }

  v30 = v29;

  if (!v22)
  {
    v37 = 0;
    v38 = v30;
    if (!v30)
    {
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  [v22 coordinate];
  if (!v30 || (v33 = v31, v34 = v32, [v30 coordinate], v33 != v36) || (v37 = v30, v34 != v35))
  {
LABEL_34:
    v62 = v25;
    v39 = v27;
    v40 = v24;
    sub_264783DF4();
    v41 = v30;
    swift_unknownObjectRetain();
    v42 = sub_264783E14();
    v43 = sub_2647859B4();
    v63 = v41;

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v73 = v45;
      *v44 = 136315650;
      *(v44 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264795720, &v73);
      *(v44 + 12) = 2080;
      *&v88[0] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76948, &qword_26478B1E8);
      v61 = v43;
      v46 = sub_264785B34();
      v48 = sub_2646DF234(v46, v47, &v73);

      *(v44 + 14) = v48;
      *(v44 + 22) = 2080;
      *&v88[0] = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76950, &qword_26478B1F0);
      v49 = sub_264785B34();
      v51 = sub_2646DF234(v49, v50, &v73);

      *(v44 + 24) = v51;
      _os_log_impl(&dword_264605000, v42, v61, "%s: currentAnnotation %s, newAnnotation %s", v44, 0x20u);
      swift_arrayDestroy();
      v52 = v45;
      v24 = v70;
      MEMORY[0x266740650](v52, -1, -1);
      MEMORY[0x266740650](v44, -1, -1);

      (*(v64 + 8))(v39, v65);
      v53 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
    }

    else
    {

      (*(v64 + 8))(v39, v65);
      v53 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
      v24 = v40;
    }

    v54 = [v16 v53[261]];
    if (!v54)
    {
      sub_2647857F4();
      v54 = sub_2647857E4();
    }

    [v16 removeAnnotations_];

    v73 = v24;
    v74 = v72;
    v75 = v71;
    MEMORY[0x26673F100](v88, v62);
    if (*&v88[0] >> 62)
    {

      sub_264785DA4();
    }

    else
    {

      sub_264785E94();
    }

    v55 = sub_2647857E4();

    [v16 addAnnotations_];

    v37 = v63;
  }

LABEL_42:
  v57 = v67;
  v56 = v68;
  v73 = v68;
  v74 = v67;
  v75 = v8;
  v76 = v9;
  v77 = v10;
  v78 = v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76938, &qword_26478B1D8);
  MEMORY[0x26673F100](v88, v58);
  [v16 setRegion:1 animated:{v88[0], v88[1], v88[2], v88[3]}];
  v59 = [v16 overlays];
  if (!v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76940, &qword_26478B1E0);
    sub_2647857F4();
    v59 = sub_2647857E4();
  }

  [v16 removeOverlays_];

  v73 = v56;
  v74 = v57;
  v75 = v8;
  v76 = v9;
  v77 = v10;
  v78 = v11;
  v79 = v24;
  v80 = v72;
  v81 = v71;
  v84 = v91;
  v85 = v92;
  v86 = v93;
  v87 = v94;
  v82 = v89;
  v83 = v90;
  sub_264684ED4(v16);

  return swift_unknownObjectRelease();
}

uint64_t sub_264684DB0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_264785C14();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x26673FA30](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            swift_unknownObjectRelease();
            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        swift_unknownObjectRelease();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void sub_264684ED4(void *a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v17 = *(v1 + 48);
  v18 = *(v1 + 56);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76930, &qword_26478B1D0);
  MEMORY[0x26673F100](&v16, v6);
  v7 = v16;
  if (v16 >> 62)
  {
    if (sub_264785C14())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x26673FA30](0, v7);
    goto LABEL_6;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
LABEL_6:
    v9 = v8;

    [v9 coordinate];
    v11 = v10;
    v13 = v12;
    v17 = v3;
    *&v18 = v4;
    BYTE8(v18) = v5;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76958, &qword_26478B1F8);
    MEMORY[0x26673F100](&v16, v14);
    v15 = [objc_opt_self() circleWithCenterCoordinate:v11 radius:{v13, dbl_26478B230[v16]}];
    [a1 addOverlay_];

    return;
  }

  __break(1u);
}

void sub_264685388(void *a1)
{
  v3 = sub_264783AF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  if ([a1 state] != 1)
  {
    return;
  }

  v63 = v4;
  *&v64 = v8;
  v14 = [a1 view];
  [a1 locationInView_];
  v16 = v15;
  v18 = v17;

  v19 = [a1 view];
  if (v19)
  {
    v20 = v19;
    v62 = v3;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      v23 = v1;
      v24 = [a1 view];
      [v22 convertPoint:v24 toCoordinateFromView:{v16, v18}];
      v26 = v25;
      v28 = v27;

      sub_264783DF4();
      v29 = sub_264783E14();
      v30 = sub_2647859F4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v68[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264795790, v68);
        _os_log_impl(&dword_264605000, v29, v30, "#Initiator, %s, creating annotation for long press", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x266740650](v32, -1, -1);
        MEMORY[0x266740650](v31, -1, -1);
      }

      (*(v64 + 8))(v13, v7);
      v33 = [objc_allocWithZone(MEMORY[0x277CD4F08]) init];
      [v33 setCoordinate_];
      v34 = v23 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent;
      v35 = *(v23 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
      v36 = swift_allocObject();
      v64 = xmmword_264788990;
      *(v36 + 16) = xmmword_264788990;
      *(v36 + 32) = v33;
      *&v68[0] = v35;
      *(v68 + 8) = *(v34 + 56);
      *&v66 = v36;
      v37 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76930, &qword_26478B1D0);
      sub_2647853E4();
      v38 = objc_opt_self();
      [v37 coordinate];
      v40 = v39;
      [v37 coordinate];
      if ([v38 isLocationShiftRequiredForCoordinate_])
      {
        v41 = 2;
      }

      else
      {
        v41 = 1;
      }

      [v37 coordinate];
      v43 = v42;
      v45 = v44;
      sub_264783AE4();
      v46 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      v47 = sub_264783A64();
      v48 = [v46 initWithCoordinate:v47 altitude:v41 horizontalAccuracy:v43 verticalAccuracy:v45 timestamp:0.0 referenceFrame:{0.0, -1.0}];

      (*(v63 + 8))(v6, v62);
      v49 = *(v34 + 144);
      v71 = *(v34 + 128);
      v72 = v49;
      v73 = *(v34 + 160);
      v50 = *(v34 + 80);
      v68[4] = *(v34 + 64);
      v68[5] = v50;
      v51 = *(v34 + 112);
      v69 = *(v34 + 96);
      v70 = v51;
      v52 = *(v34 + 16);
      v68[0] = *v34;
      v68[1] = v52;
      v53 = *(v34 + 48);
      v68[2] = *(v34 + 32);
      v68[3] = v53;
      v54 = swift_allocObject();
      *(v54 + 16) = v64;
      v55 = objc_allocWithZone(MEMORY[0x277CD4E80]);
      sub_264686F50(v68, &v66);
      v56 = [v55 initWithCLLocation_];
      if (v56)
      {
        *(v54 + 32) = v56;
        v66 = v69;
        v67 = v70;
        v65 = v54;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76968, &qword_26478B208);
        sub_2647853E4();
        sub_2646870F0(v68);

        v57 = *(v34 + 160);
        v66 = *(v34 + 144);
        v67 = v57;
        v65 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A8, &qword_26478B228);
        sub_2647853E4();
        sub_264685AE4(v48);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  sub_264783DF4();
  v58 = sub_264783E14();
  v59 = sub_2647859D4();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v68[0] = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_2646DF234(0xD000000000000018, 0x8000000264795790, v68);
    _os_log_impl(&dword_264605000, v58, v59, "#Initiator, %s, Unable to get touch coordinate", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x266740650](v61, -1, -1);
    MEMORY[0x266740650](v60, -1, -1);
  }

  (*(v64 + 8))(v11, v7);
}

uint64_t sub_264685AE4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v11 = a1;
  v12 = sub_264783E14();
  v13 = sub_2647859F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = v2;
    v15 = v14;
    v37 = swift_slowAlloc();
    v40[0] = v37;
    *v15 = 136315395;
    *(v15 + 4) = sub_2646DF234(0xD000000000000024, 0x8000000264795760, v40);
    *(v15 + 12) = 2085;
    v16 = [v11 description];
    v17 = sub_264785724();
    v36 = v7;
    v18 = v6;
    v19 = v11;
    v20 = v17;
    v22 = v21;

    v23 = sub_2646DF234(v20, v22, v40);

    *(v15 + 14) = v23;
    v11 = v19;
    v6 = v18;
    _os_log_impl(&dword_264605000, v12, v13, "#Initiator, %s, Start reverse geocode for location: %{sensitive}s", v15, 0x16u);
    v24 = v37;
    swift_arrayDestroy();
    MEMORY[0x266740650](v24, -1, -1);
    v25 = v15;
    v2 = v38;
    MEMORY[0x266740650](v25, -1, -1);

    (*(v8 + 8))(v10, v36);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v26 = *&v2[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 128];
  v27 = v2[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 136];
  v40[0] = *&v2[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 120];
  v40[1] = v26;
  v41 = v27;
  v39 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76978, &qword_26478B210);
  sub_2647853E4();

  sub_2647858C4();
  v28 = sub_2647858E4();
  (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
  sub_2647858B4();
  v29 = v11;
  v30 = v2;
  v31 = sub_2647858A4();
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v30;
  v32[5] = v29;
  sub_264635430(0, 0, v6, &unk_26478B220, v32);
}

uint64_t sub_264685E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_264785594();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = sub_2647855C4();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v8 = sub_264783E24();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_2647858B4();
  v5[25] = sub_2647858A4();
  v10 = sub_264785874();
  v5[26] = v10;
  v5[27] = v9;

  return MEMORY[0x2822009F8](sub_264686054, v10, v9);
}

uint64_t sub_264686054()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_264686120;
  v3 = v0[14];

  return CachedGeocoder.placemark(forKey:with:)(v3, v1);
}

uint64_t sub_264686120(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = *(v3 + 208);
    v5 = *(v3 + 216);
    v6 = sub_2646865F0;
  }

  else
  {

    v4 = *(v3 + 208);
    v5 = *(v3 + 216);
    v6 = sub_26468623C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26468623C()
{
  v35 = v0;
  v1 = v0[14];

  sub_264783DF4();
  v2 = v1;
  v3 = sub_264783E14();
  v4 = sub_2647859F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  if (v5)
  {
    v9 = v0[14];
    v32 = v0[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315395;
    *(v10 + 4) = sub_2646DF234(0xD000000000000024, 0x8000000264795760, &v34);
    *(v10 + 12) = 2085;
    v12 = [v9 description];
    v13 = sub_264785724();
    v15 = v14;

    v16 = sub_2646DF234(v13, v15, &v34);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_264605000, v3, v4, "#Initiator, %s, successfully reverse geocoded for location: %{sensitive}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    (*(v7 + 8))(v32, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v17 = v0[30];
  if (v17)
  {
    v30 = v0[20];
    v31 = v0[19];
    v18 = v0[17];
    v33 = v0[18];
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[13];
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v22 = v17;
    v23 = sub_264785A44();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v21;
    v0[6] = sub_2646870D0;
    v0[7] = v24;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_264659F60;
    v0[5] = &block_descriptor_4;
    v25 = _Block_copy(v0 + 2);
    v26 = v22;
    v27 = v21;
    sub_2647855B4();
    v0[12] = MEMORY[0x277D84F90];
    sub_2646683C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26466841C();
    sub_264785BD4();
    MEMORY[0x26673F780](0, v30, v18, v25);
    _Block_release(v25);

    (*(v19 + 8))(v18, v20);
    (*(v31 + 8))(v30, v33);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_2646865F0()
{
  v21 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);

  sub_264783DF4();
  v3 = v1;
  v4 = sub_264783E14();
  v5 = sub_2647859D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 248);
    v7 = *(v0 + 176);
    v19 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2646DF234(0xD000000000000024, 0x8000000264795760, &v20);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_264785EF4();
    v13 = sub_2646DF234(v11, v12, &v20);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_264605000, v4, v5, "#Initiator, %s, Failed to reverse geocode location: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    v16 = *(v0 + 168);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_264686834(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithPlacemark_];
  v4 = (a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent);
  v5 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 144);
  v26 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 128);
  v27 = v5;
  v28 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 160);
  v6 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 80);
  v23[4] = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 64);
  v23[5] = v6;
  v7 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 112);
  v24 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 96);
  v25 = v7;
  v8 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 16);
  v23[0] = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent);
  v23[1] = v8;
  v9 = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 48);
  v23[2] = *(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 32);
  v23[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_264788990;
  v11 = objc_allocWithZone(MEMORY[0x277CD4E80]);
  sub_264686F50(v23, &v29);
  *(v10 + 32) = [v11 initWithPlacemark_];
  v29 = v24;
  *&v30 = v25;
  v18[0] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76968, &qword_26478B208);
  sub_2647853E4();
  sub_2646870F0(v23);

  v12 = v4[9];
  v37 = v4[8];
  v38 = v12;
  v39 = *(v4 + 20);
  v13 = v4[5];
  v33 = v4[4];
  v34 = v13;
  v14 = v4[7];
  v35 = v4[6];
  v36 = v14;
  v15 = v4[1];
  v29 = *v4;
  v30 = v15;
  v16 = v4[3];
  v31 = v4[2];
  v32 = v16;
  v20 = *(&v36 + 1);
  v21 = v37;
  v22 = BYTE8(v37);
  v19 = 2;
  sub_264686F50(&v29, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76978, &qword_26478B210);
  sub_2647853E4();

  sub_2646870F0(&v29);
}

id sub_264686A7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_264686B34@<X0>(void *a1@<X8>)
{
  v3 = v1[9];
  v31 = v1[8];
  v32 = v3;
  v33 = *(v1 + 20);
  v4 = v1[5];
  v27 = v1[4];
  v28 = v4;
  v5 = v1[7];
  v29 = v1[6];
  v30 = v5;
  v6 = v1[1];
  v23 = *v1;
  v24 = v6;
  v7 = v1[3];
  v25 = v1[2];
  v26 = v7;
  sub_264686F50(&v23, v22);
  if (qword_27FF75008 != -1)
  {
    swift_once();
  }

  v8 = qword_27FF807E8;
  v9 = type metadata accessor for MapView.Coordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent];
  v13 = v24;
  v12 = v25;
  *v11 = v23;
  *(v11 + 1) = v13;
  *(v11 + 2) = v12;
  v14 = v29;
  v16 = v26;
  v15 = v27;
  *(v11 + 5) = v28;
  *(v11 + 6) = v14;
  *(v11 + 3) = v16;
  *(v11 + 4) = v15;
  v18 = v31;
  v17 = v32;
  v19 = v30;
  *(v11 + 20) = v33;
  *(v11 + 8) = v18;
  *(v11 + 9) = v17;
  *(v11 + 7) = v19;
  *&v10[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_geocoder] = v8;
  v21.receiver = v10;
  v21.super_class = v9;

  result = objc_msgSendSuper2(&v21, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_264686C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264686EFC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_264686CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264686EFC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_264686D2C(uint64_t a1)
{
  sub_264686EFC();
  sub_264784834();
  __break(1u);
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

uint64_t sub_264686DE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264686E2C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_264686EA8()
{
  result = qword_27FF76918;
  if (!qword_27FF76918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76918);
  }

  return result;
}

unint64_t sub_264686EFC()
{
  result = qword_27FF76920;
  if (!qword_27FF76920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76920);
  }

  return result;
}

uint64_t sub_264686F88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264686FD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26460F764;

  return sub_264685E9C(a1, v4, v5, v7, v6);
}

uint64_t sub_264687090()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_264687120(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithOverlay_];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemBlueColor];
  [v3 setStrokeColor_];

  v5 = [v2 systemBlueColor];
  v6 = [v5 colorWithAlphaComponent_];

  [v3 setFillColor_];
  [v3 setLineWidth_];

  return v3;
}

id sub_264687224(void *a1, uint64_t a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 0;
  }

  v5 = sub_264785714();
  v6 = [a1 dequeueReusableAnnotationViewWithIdentifier_];

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      [v7 setAnnotation_];
      return v8;
    }
  }

  v9 = objc_allocWithZone(MEMORY[0x277CD4ED0]);
  v10 = sub_264785714();
  v11 = [v9 initWithAnnotation:a2 reuseIdentifier:v10];

  v12 = v11;
  [v12 setDraggable_];
  [v12 setCanShowCallout_];

  return v12;
}

void sub_26468736C(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v6 = a1;
    v7 = a2;
    v8 = sub_264785C14();
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (!v9)
    {
      return;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = MEMORY[0x26673FA30](0);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = a1;
    v3 = *(a2 + 32);
  }

  v10 = v3;
  v4 = [v3 annotation];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      [v2 selectAnnotation:v5 animated:1];
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_2646874A8(void *a1, void *a2, uint64_t a3)
{
  v74 = a1;
  v6 = sub_264783AF4();
  v73 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264783E24();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  if ((a3 - 3) >= 2)
  {
    if (a3 == 1)
    {
      v59 = v3;
      sub_264783DF4();
      v60 = sub_264783E14();
      v61 = sub_2647859F4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v107[0] = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_2646DF234(0xD000000000000031, 0x80000002647957D0, v107);
        _os_log_impl(&dword_264605000, v60, v61, "#Initiator, %s, started annotation drag", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x266740650](v63, -1, -1);
        MEMORY[0x266740650](v62, -1, -1);
      }

      (*(v10 + 8))(v15, v9);
      v64 = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 144);
      v114 = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 128);
      v115 = v64;
      v116 = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 160);
      v65 = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 80);
      v110 = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 64);
      v111 = v65;
      v66 = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 112);
      v112 = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 96);
      v113 = v66;
      v67 = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 16);
      v107[0] = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent);
      v107[1] = v67;
      v68 = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 48);
      v108 = *(v59 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 32);
      v109 = v68;
      sub_264686F50(v107, &v96);
      v69 = [v74 overlays];
      if (!v69)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76940, &qword_26478B1E0);
        sub_2647857F4();
        v69 = sub_2647857E4();
      }

      [v74 removeOverlays_];
      sub_2646870F0(v107);

      [a2 setTitleVisibility_];
    }
  }

  else
  {
    v16 = [a2 annotation];
    if (v16)
    {
      v17 = v16;
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v71 = v6;
        v72 = v3;
        sub_264783DF4();
        v20 = sub_264783E14();
        v21 = sub_2647859F4();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *&v70 = v17;
          v23 = v22;
          v24 = swift_slowAlloc();
          *&v107[0] = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_2646DF234(0xD000000000000031, 0x80000002647957D0, v107);
          _os_log_impl(&dword_264605000, v20, v21, "#Initiator, %s, ended annotation drag", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x266740650](v24, -1, -1);
          MEMORY[0x266740650](v23, -1, -1);
        }

        (*(v10 + 8))(v13, v9);
        v25 = (v72 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent);
        v26 = *(v72 + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
        v27 = swift_allocObject();
        v70 = xmmword_264788990;
        *(v27 + 16) = xmmword_264788990;
        *(v27 + 32) = v19;
        *&v107[0] = v26;
        *(v107 + 8) = *(v25 + 56);
        *&v96 = v27;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76930, &qword_26478B1D0);
        sub_2647853E4();
        v28 = objc_opt_self();
        [v19 coordinate];
        v30 = v29;
        [v19 coordinate];
        if ([v28 isLocationShiftRequiredForCoordinate_])
        {
          v31 = 2;
        }

        else
        {
          v31 = 1;
        }

        [v19 coordinate];
        v33 = v32;
        v35 = v34;
        sub_264783AE4();
        v36 = objc_allocWithZone(MEMORY[0x277CE41F8]);
        v37 = sub_264783A64();
        v38 = [v36 initWithCoordinate:v37 altitude:v31 horizontalAccuracy:v33 verticalAccuracy:v35 timestamp:0.0 referenceFrame:{0.0, -1.0}];

        (*(v73 + 8))(v8, v71);
        v39 = v25[9];
        v114 = v25[8];
        v115 = v39;
        v116 = *(v25 + 20);
        v40 = v25[5];
        v110 = v25[4];
        v111 = v40;
        v41 = v25[7];
        v112 = v25[6];
        v113 = v41;
        v42 = v25[1];
        v107[0] = *v25;
        v107[1] = v42;
        v43 = v25[3];
        v108 = v25[2];
        v109 = v43;
        v44 = swift_allocObject();
        *(v44 + 16) = v70;
        v45 = objc_allocWithZone(MEMORY[0x277CD4E80]);
        sub_264686F50(v107, &v96);
        v46 = [v45 initWithCLLocation_];
        if (v46)
        {
          *(v44 + 32) = v46;
          v96 = v112;
          *&v97 = v113;
          *&v86[0] = v44;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76968, &qword_26478B208);
          sub_2647853E4();
          sub_2646870F0(v107);

          v47 = *(v25 + 20);
          v96 = v25[9];
          *&v97 = v47;
          *&v86[0] = 4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A8, &qword_26478B228);
          sub_2647853E4();
          v48 = v25[7];
          v49 = v25[9];
          v93 = v25[8];
          v94 = v49;
          v50 = v25[3];
          v51 = v25[5];
          v89 = v25[4];
          v90 = v51;
          v52 = v25[5];
          v53 = v25[7];
          v91 = v25[6];
          v92 = v53;
          v54 = v25[1];
          v86[0] = *v25;
          v86[1] = v54;
          v55 = v25[3];
          v57 = *v25;
          v56 = v25[1];
          v87 = v25[2];
          v88 = v55;
          v58 = v25[9];
          v83 = v93;
          v84 = v58;
          v79 = v89;
          v80 = v52;
          v81 = v91;
          v82 = v48;
          v75 = v57;
          v76 = v56;
          v95 = *(v25 + 20);
          v85 = *(v25 + 20);
          v77 = v87;
          v78 = v50;
          sub_264686F50(v86, &v96);
          sub_264684ED4(v74);
          v104 = v83;
          v105 = v84;
          v106 = v85;
          v100 = v79;
          v101 = v80;
          v102 = v81;
          v103 = v82;
          v96 = v75;
          v97 = v76;
          v98 = v77;
          v99 = v78;
          sub_2646870F0(&v96);
          sub_264685AE4(v38);
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_264687CFC()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for NotificationRulesViewController());
  return NotificationRulesViewController.init(sessionType:)(v1);
}

uint64_t sub_264687D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264688B80();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_264687DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264688B80();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_264687E40(uint64_t a1)
{
  sub_264688B80();
  sub_264784B74();
  __break(1u);
}

id NotificationRulesViewController.init(sessionType:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_264783B94();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_264785704();
  MEMORY[0x28223BE20](v5 - 8);
  *&v1[OBJC_IVAR____TtC15SafetyMonitorUI31NotificationRulesViewController_sessionType] = a1;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v8 = sub_264785714();

  v13.receiver = v1;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, sel_initWithTitle_detailText_symbolName_contentLayout_, v8, 0, 0, 2);

  v10 = v9;
  v11 = sub_264785714();
  [v10 setAccessibilityIdentifier_];

  return v10;
}

Swift::Void __swiftcall NotificationRulesViewController.viewDidLoad()()
{
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI31NotificationRulesViewController_sessionType];
  if ((v1 - 2) < 2)
  {
    if (qword_27FF750B0 != -1)
    {
      swift_once();
    }

    v9 = sub_264785714();
    if (qword_27FF750D0 != -1)
    {
      swift_once();
    }

    v10 = sub_264785714();
    v11 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v9 description:v10 symbolName:v11];

    if (qword_27FF750D8 != -1)
    {
      swift_once();
    }

    v12 = sub_264785714();
    if (qword_27FF750E0 != -1)
    {
      swift_once();
    }

    v13 = sub_264785714();
    v14 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v12 description:v13 symbolName:v14];

    if (qword_27FF750E8 != -1)
    {
      swift_once();
    }

    v8 = sub_264785714();
    if (qword_27FF750F0 == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  if (v1 == 1)
  {
    if (qword_27FF750B0 != -1)
    {
      swift_once();
    }

    v15 = sub_264785714();
    if (qword_27FF750F8 != -1)
    {
      swift_once();
    }

    v16 = sub_264785714();
    v17 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v15 description:v16 symbolName:v17];

    if (qword_27FF75100 != -1)
    {
      swift_once();
    }

    v18 = sub_264785714();
    if (qword_27FF75108 != -1)
    {
      swift_once();
    }

    v19 = sub_264785714();
    v20 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v18 description:v19 symbolName:v20];

    if (qword_27FF75110 != -1)
    {
      swift_once();
    }

    v8 = sub_264785714();
    if (qword_27FF75118 == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  if (v1 != 4)
  {
    goto LABEL_40;
  }

  if (qword_27FF750B0 != -1)
  {
    swift_once();
  }

  v2 = sub_264785714();
  if (qword_27FF75120 != -1)
  {
    swift_once();
  }

  v3 = sub_264785714();
  v4 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v2 description:v3 symbolName:v4];

  if (qword_27FF75128 != -1)
  {
    swift_once();
  }

  v5 = sub_264785714();
  if (qword_27FF75130 != -1)
  {
    swift_once();
  }

  v6 = sub_264785714();
  v7 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v5 description:v6 symbolName:v7];

  if (qword_27FF75138 != -1)
  {
    swift_once();
  }

  v8 = sub_264785714();
  if (qword_27FF75140 != -1)
  {
LABEL_45:
    swift_once();
  }

LABEL_39:
  v21 = sub_264785714();
  v22 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v8 description:v21 symbolName:v22];

LABEL_40:
  if (qword_27FF750B8 != -1)
  {
    swift_once();
  }

  v23 = sub_264785714();
  if (qword_27FF750C8 != -1)
  {
    swift_once();
  }

  v24 = sub_264785714();
  v25 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v23 description:v24 symbolName:v25];
}

id NotificationRulesViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id NotificationRulesViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id NotificationRulesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_264688B80()
{
  result = qword_27FF769C8;
  if (!qword_27FF769C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF769C8);
  }

  return result;
}

uint64_t sub_264688BD4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_264688C54(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_264783EE4();
}

uint64_t sub_264688CC8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_264688D44(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_264783EE4();
}

uint64_t (*sub_264688DB0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264688E54(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769E0, &qword_26478B3D0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_264688FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769E0, &qword_26478B3D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26468912C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769E0, &qword_26478B3D0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__placemark;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

double sub_26468929C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_26468931C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264783EE4();
}

uint64_t sub_26468939C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_264689418(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264783EE4();
}

uint64_t (*sub_264689490(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_264689534(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646896D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26468980C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__subtitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26468997C(uint64_t a1, uint64_t *a2)
{
  sub_264689A40(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + v4));
  sub_264689B0C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_2646899E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider;
  swift_beginAccess();
  return sub_264689A40(v1 + v3, a1);
}

uint64_t sub_264689A40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264689AA4(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  sub_264689B0C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_264689B0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id SafetyCacheRouteInfoCellViewModel.__allocating_init(placemark:subtitle:coordinateProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = sub_26468A278(a1, a2, a3, v11, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(a4);
  return v12;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id SafetyCacheRouteInfoCellViewModel.init(placemark:subtitle:coordinateProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_264689F50(a1, a2, a3, v13, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(a4);
  return v15;
}

id SafetyCacheRouteInfoCellViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetyCacheRouteInfoCellViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetyCacheRouteInfoCellViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264689F10@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SafetyCacheRouteInfoCellViewModel(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

id sub_264689F50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v30 = *(v11 - 8);
  v12 = v30;
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v39[3] = a6;
  v39[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  v20 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__placemark;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
  sub_264783E94();
  (*(v16 + 32))(&a5[v20], v18, v15);
  v21 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__subtitle;
  v37 = 0;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  v22 = *(v12 + 32);
  v23 = v11;
  v22(&a5[v21], v14, v11);
  swift_beginAccess();
  v24 = *(v16 + 8);
  v25 = v31;
  v26 = v31;
  v24(&a5[v20], v15);
  v35 = v25;
  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  (*(v30 + 8))(&a5[v21], v23);
  v35 = v32;
  v36 = v33;
  sub_264783E94();
  swift_endAccess();
  sub_264689A40(v39, &a5[OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider]);
  v27 = type metadata accessor for SafetyCacheRouteInfoCellViewModel(0);
  v34.receiver = a5;
  v34.super_class = v27;
  v28 = objc_msgSendSuper2(&v34, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v28;
}

id sub_26468A278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for SafetyCacheRouteInfoCellViewModel(0));
  (*(v13 + 16))(v15, a4, a6);
  return sub_264689F50(a1, a2, a3, v15, v16, a6, a7);
}

uint64_t type metadata accessor for SafetyCacheRouteInfoCellViewModel(uint64_t a1)
{
  result = qword_27FF769F0;
  if (!qword_27FF769F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26468A43C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider;
  swift_beginAccess();
  return sub_264689A40(v3 + v4, a2);
}

void sub_26468A4A4(uint64_t a1)
{
  sub_264656F0C(319, &qword_27FF76A00, &qword_27FF76A08, &unk_26478B4A8);
  if (v1 <= 0x3F)
  {
    sub_264656F0C(319, &qword_27FF75E08, &qword_27FF75C40, &qword_264788A70);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id CheckInOnboardingFlowViewController.__allocating_init(isInSettings:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner;
  *&v7[v8] = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  v7[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding] = 0;
  v9 = &v7[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_onboardingCompletionHandler];
  *v9 = a2;
  v9[1] = a3;
  v7[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_isInSettings] = a1;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

id CheckInOnboardingFlowViewController.init(isInSettings:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  v3[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding] = 0;
  v8 = &v3[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_onboardingCompletionHandler];
  *v8 = a2;
  v8[1] = a3;
  v3[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_isInSettings] = a1;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for CheckInOnboardingFlowViewController();
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_26468AB58()
{
  ObjectType = swift_getObjectType();
  v1 = sub_264785584();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = (v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = sub_2647855E4();
  v49 = *(v53 - 8);
  v3 = MEMORY[0x28223BE20](v53);
  v42 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v48 = v35 - v5;
  v6 = sub_264785594();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v41 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2647855C4();
  v46 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v40 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CheckInOnboardingFlowViewController();
  v61.receiver = v0;
  v61.super_class = v9;
  objc_msgSendSuper2(&v61, sel_viewDidLoad);
  v39 = v0;
  sub_26468BA14();
  v10 = swift_allocObject();
  *(v10 + 16) = 2;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  if (qword_27FF74FC0 != -1)
  {
    swift_once();
  }

  v12 = off_27FF75B20;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  v14 = v12[2];
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = sub_26468BD44;
  v15[4] = v13;
  v59 = sub_264655938;
  v60 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v37 = &v57;
  v57 = sub_26465A0C0;
  v58 = &block_descriptor_5;
  v16 = _Block_copy(&aBlock);

  v36 = v11;

  [v14 fetchCurrentWorkoutSnapshotWithCompletion_];
  _Block_release(v16);

  v38 = sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v17 = sub_264785A44();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v10;
  v50 = v10;
  v19[4] = ObjectType;
  v59 = sub_26468BE2C;
  v60 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_264659F60;
  v58 = &block_descriptor_15_0;
  v20 = _Block_copy(&aBlock);

  v21 = v40;
  sub_2647855B4();
  v54 = MEMORY[0x277D84F90];
  v35[3] = sub_2646683C4();
  v35[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  v35[1] = sub_26466841C();
  v22 = v41;
  sub_264785BD4();
  sub_264785A14();
  _Block_release(v20);

  v47 = *(v47 + 8);
  (v47)(v22, v6);
  v35[0] = v6;
  v46 = *(v46 + 8);
  (v46)(v21, v51);

  v23 = v42;
  sub_2647855D4();
  v24 = v43;
  *v43 = 3;
  v26 = v44;
  v25 = v45;
  (*(v44 + 104))(v24, *MEMORY[0x277D85188], v45);
  v27 = v48;
  MEMORY[0x26673F320](v23, v24);
  (*(v26 + 8))(v24, v25);
  v49 = *(v49 + 8);
  (v49)(v23, v53);
  v28 = sub_264785A44();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v31 = v50;
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = ObjectType;
  v59 = sub_26468BE78;
  v60 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_264659F60;
  v58 = &block_descriptor_22;
  v32 = _Block_copy(&aBlock);

  sub_2647855B4();
  aBlock = MEMORY[0x277D84F90];
  v33 = v35[0];
  sub_264785BD4();
  MEMORY[0x26673F750](v27, v21, v22, v32);
  _Block_release(v32);

  (v47)(v22, v33);
  (v46)(v21, v51);
  (v49)(v27, v53);
}

void sub_26468B37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    sub_26468BE84(*(a2 + 16));
  }

  else
  {
    sub_264783DF4();
    v11 = sub_264783E14();
    v12 = sub_2647859D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315394;
      v18[1] = a3;
      swift_getMetatypeMetadata();
      v15 = sub_264785764();
      v17 = sub_2646DF234(v15, v16, &v19);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2646DF234(0x4C64694477656976, 0xED0000292864616FLL, &v19);
      _os_log_impl(&dword_264605000, v11, v12, "%s, %s: unexpectedly missing self after workout fetch", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v14, -1, -1);
      MEMORY[0x266740650](v13, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_26468B5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_264783DF4();
    v14 = v13;
    v15 = sub_264783E14();
    v16 = sub_2647859C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v5;
      v38[0] = v18;
      v35 = v18;
      *v17 = 136315394;
      v19 = v14;
      v36 = v6;
      v20 = v19;
      v21 = [v19 description];
      v22 = a2;
      v23 = sub_264785724();
      v25 = v24;

      v26 = sub_2646DF234(v23, v25, v38);

      *(v17 + 4) = v26;
      a2 = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2646DF234(0x4C64694477656976, 0xED0000292864616FLL, v38);
      _os_log_impl(&dword_264605000, v15, v16, "%s, %s: showing onboarding after fetch timeout", v17, 0x16u);
      v27 = v35;
      swift_arrayDestroy();
      MEMORY[0x266740650](v27, -1, -1);
      MEMORY[0x266740650](v17, -1, -1);

      (*(v36 + 8))(v11, v37);
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    swift_beginAccess();
    sub_26468BE84(*(a2 + 16));
  }

  else
  {
    sub_264783DF4();
    v28 = sub_264783E14();
    v29 = sub_2647859D4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315394;
      v38[0] = a3;
      swift_getMetatypeMetadata();
      v32 = sub_264785764();
      v34 = sub_2646DF234(v32, v33, &v39);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2646DF234(0x4C64694477656976, 0xED0000292864616FLL, &v39);
      _os_log_impl(&dword_264605000, v28, v29, "%s, %s: unexpectedly missing self after timeout", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v31, -1, -1);
      MEMORY[0x266740650](v30, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }
}

id sub_26468BA14()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setHidesWhenStopped_];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26478B4D0;
  v7 = [v4 centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  v9 = [result centerXAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v10;
  v11 = [v4 centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  v13 = objc_opt_self();
  v14 = [v12 centerYAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v6 + 40) = v15;
  sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
  v16 = sub_2647857E4();

  [v13 activateConstraints_];

  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v17 = result;
  [result bringSubviewToFront_];

  return [v4 startAnimating];
}

uint64_t sub_26468BD04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_26468BD44(char a1)
{
  v2 = *(v1 + 24);
  if (a1)
  {
    v3 = *(v1 + 16);
    swift_beginAccess();
    *(v3 + 16) = 4;
  }

  dispatch_group_leave(v2);
}

uint64_t sub_26468BD98()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26468BDF0()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_26468BE84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding])
  {
    sub_264783DF4();
    v8 = v2;
    v9 = sub_264783E14();
    v10 = sub_2647859C4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = v57;
      *v11 = 136315394;
      v12 = v8;
      v13 = [v12 description];
      v14 = sub_264785724();
      v16 = v15;

      v17 = sub_2646DF234(v14, v16, &v58);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264795B20, &v58);
      _os_log_impl(&dword_264605000, v9, v10, "%s, %s: aborting additional attempts to show onboarding", v11, 0x16u);
      v18 = v57;
      swift_arrayDestroy();
      MEMORY[0x266740650](v18, -1, -1);
      MEMORY[0x266740650](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return;
  }

  v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding] = 1;
  v19 = *&v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner];
  [v19 stopAnimating];
  [v19 removeFromSuperview];
  LOBYTE(v19) = v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_isInSettings];
  v20 = *&v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_onboardingCompletionHandler];
  v21 = *&v2[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_onboardingCompletionHandler + 8];
  objc_allocWithZone(type metadata accessor for CheckInOnboardingViewController());
  sub_264611394(v20, v21);
  v22 = CheckInOnboardingViewController.init(isInSettings:sessionType:onboardingCompletionHandler:)(v19, a1, v20, v21);
  v23 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  v57 = v23;
  [v2 addChildViewController_];
  v24 = [v2 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  v26 = [v57 view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  [v25 addSubview_];

  v28 = [v57 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26478B4E0;
  v30 = [v57 view];

  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = [v30 leadingAnchor];

  v32 = [v2 view];
  if (!v32)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v29 + 32) = v35;
  v36 = [v57 view];

  if (!v36)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = [v36 trailingAnchor];

  v38 = [v2 view];
  if (!v38)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = v38;
  v40 = [v38 trailingAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v29 + 40) = v41;
  v42 = [v57 view];

  if (!v42)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v43 = [v42 topAnchor];

  v44 = [v2 view];
  if (!v44)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v45 = v44;
  v46 = [v44 topAnchor];

  v47 = [v43 constraintEqualToAnchor_];
  *(v29 + 48) = v47;
  v48 = [v57 view];

  if (!v48)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v49 = [v48 bottomAnchor];

  v50 = [v2 view];
  if (!v50)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v51 = v50;
  v52 = objc_opt_self();
  v53 = [v51 bottomAnchor];

  v54 = [v49 constraintEqualToAnchor_];
  *(v29 + 56) = v54;
  sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
  v55 = sub_2647857E4();

  [v52 activateConstraints_];

  [v57 didMoveToParentViewController_];
  v56 = v57;
}

id CheckInOnboardingFlowViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_264785714();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CheckInOnboardingFlowViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CheckInOnboardingFlowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26468C740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26468C7AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26468C7F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26468C8A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = *(v1 + 32);
  swift_unknownObjectRetain();
  v4 = v3(v2, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_26468C908(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  v4 = v3(v2, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_26468C970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v37 = sub_264784AA4();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76AB0, &qword_26478B618);
  MEMORY[0x28223BE20](v8);
  v10 = (v36 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76AB8, &qword_26478B620);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - v13;
  *v10 = sub_264785504();
  v10[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76AC0, &qword_26478B628);
  sub_26468CDBC(v3, *(a1 + 16), *(a1 + 24), v10 + *(v16 + 44));
  sub_264785504();
  sub_2647840A4();
  v17 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76AC8, &qword_26478B630) + 36));
  v18 = v43;
  *v17 = v42;
  v17[1] = v18;
  v17[2] = v44;
  v19 = [objc_opt_self() systemGray5Color];
  v20 = sub_264785134();
  v21 = sub_264784C34();
  v22 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76AD0, &qword_26478B638) + 36);
  *v22 = v20;
  v22[8] = v21;
  v23 = v10 + *(v8 + 36);
  v24 = *(sub_2647842B4() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_264784674();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #12.0 }

  *v23 = _Q0;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75948, &qword_26478B640) + 36)] = 256;
  sub_264784A94();
  v32 = sub_26468F238();
  sub_264784FF4();
  (*(v5 + 8))(v7, v37);
  sub_26460CD50(v10, &qword_27FF76AB0, &qword_26478B618);
  v41 = *(v36[1] + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_2647852F4();
  if (v39 == 1)
  {
    if (qword_27FF751B8 != -1)
    {
      swift_once();
    }

    v33 = qword_27FF78F28;
    v34 = qword_27FF78F30;
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  *&v41 = v33;
  *(&v41 + 1) = v34;
  v39 = v8;
  v40 = v32;
  swift_getOpaqueTypeConformance2();
  sub_264613FC4();
  sub_264784F74();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_26468CDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v5 = sub_264783D44();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B18, &qword_26478B660);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B20, &qword_26478B668);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  sub_264783D24();
  v12 = sub_264783D34();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  v32 = MEMORY[0x277D84F90];
  sub_26468F95C(&qword_27FF76B28, MEMORY[0x277CE42D0], MEMORY[0x277CE42D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B30, &qword_26478B670);
  sub_26460CDF0(&qword_27FF76B38, &qword_27FF76B30, &qword_26478B670, MEMORY[0x277D83970]);
  sub_264785BD4();
  v14 = v26;
  v13 = v27;
  v29 = v26;
  v30 = v27;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B40, &qword_26478B678);
  sub_26468F46C();
  sub_264783D14();
  KeyPath = swift_getKeyPath();
  v16 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B60, &qword_26478B6B8) + 36)];
  *v16 = KeyPath;
  v16[1] = 0;
  v17 = sub_264784714();
  v18 = &v11[*(v9 + 36)];
  sub_26468D8C0(a1, v14, v13, v18);
  v19 = sub_264784064();
  LOBYTE(v8) = MEMORY[0x26673E9D0]((2 * v19));
  v20 = sub_2647842A4();
  v21 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B68, &unk_26478B6C0) + 36);
  *v21 = v20;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  *(v21 + 17) = v8;
  *(v21 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B70, &qword_26478C010);
  sub_264784304();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2647889E0;
  sub_2647842E4();
  v23 = sub_26468F574();
  MEMORY[0x26673ECD0](0, v22, v9, v23);

  return sub_26460CD50(v11, &qword_27FF76B20, &qword_26478B668);
}

uint64_t sub_26468D1D0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B58, &qword_26478B680);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v7 = &v60 - v6;
  v67 = sub_264783D64();
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76CA0, &qword_26478B838);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76CA8, &qword_26478B840);
  v76 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = &v60 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76CB0, &qword_26478B848);
  v69 = *(v63 - 8);
  v16 = MEMORY[0x28223BE20](v63);
  v66 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - v18;
  v21 = type metadata accessor for DestinationPresentationMapView(0, a2, a3, v20);
  v22 = sub_26468C908(v21);
  if (v22)
  {
    v72 = v7;
    v23 = v22;
    [v22 _coordinate];
    v25 = v24;
    v27 = v26;

    v28 = sub_264784644();
    v71 = v19;
    MEMORY[0x26673DAC0](v28, v25, v27);
    v29 = *(a3 + 24);
    swift_unknownObjectRetain();
    v29(a2, a3);
    swift_unknownObjectRelease();
    sub_264783D54();
    v30 = objc_opt_self();
    v62 = v11;
    v61 = v14;
    v31 = v30;
    v32 = [v30 systemBlueColor];
    sub_264785134();
    v33 = sub_2647851F4();

    v78 = v33;
    v34 = MEMORY[0x277CE0F78];
    v35 = MEMORY[0x277CE42E0];
    v36 = MEMORY[0x277CE0F60];
    v37 = v65;
    v38 = v67;
    sub_264783D74();

    (*(v64 + 8))(v9, v38);
    v39 = [v31 systemBlueColor];
    v40 = sub_264785134();
    v81 = v36;
    v82 = v40;
    v78 = v38;
    v79 = v34;
    v80 = v35;
    swift_getOpaqueTypeConformance2();
    v41 = v77;
    v42 = v70;
    sub_264783D84();

    (*(v68 + 8))(v37, v42);
    v43 = v69;
    v44 = *(v69 + 16);
    v45 = v66;
    v46 = v63;
    v44(v66, v71, v63);
    v47 = *(v76 + 16);
    v48 = v61;
    v49 = v41;
    v50 = v62;
    v47(v61, v49, v62);
    v51 = v72;
    v44(v72, v45, v46);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76CB8, &qword_26478B850);
    v47((v51 + *(v52 + 48)), v48, v50);
    v53 = *(v76 + 8);
    v53(v77, v50);
    v54 = *(v43 + 8);
    v54(v71, v46);
    v53(v48, v50);
    v54(v45, v46);
    v55 = v74;
    sub_26460E7E4(v72, v74, &qword_27FF76B58, &qword_26478B680);
    return (*(v75 + 56))(v55, 0, 1, v73);
  }

  else
  {
    v57 = v74;
    v58 = *(v75 + 56);
    v59 = v73;

    return v58(v57, 1, 1, v59);
  }
}

uint64_t sub_26468D8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BB0, &qword_26478B6E0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BB8, &qword_26478B6E8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v26 - v14;
  *v11 = sub_2647845C4();
  *(v11 + 1) = 0x4024000000000000;
  v11[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BC0, &qword_26478B6F0);
  sub_26468DAF8(a1, a2, a3, &v11[*(v16 + 44)]);
  v17 = sub_264784C24();
  v18 = &v11[*(v9 + 44)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  sub_264785514();
  sub_264784314();
  sub_26460E7E4(v11, v15, &qword_27FF76BB0, &qword_26478B6E0);
  v19 = &v15[*(v13 + 44)];
  v20 = v26[5];
  *(v19 + 4) = v26[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v26[6];
  v21 = v26[1];
  *v19 = v26[0];
  *(v19 + 1) = v21;
  v22 = v26[3];
  *(v19 + 2) = v26[2];
  *(v19 + 3) = v22;
  v23 = sub_26468F710();
  LOBYTE(a2) = sub_264784C34();
  sub_26460E7E4(v15, a4, &qword_27FF76BB8, &qword_26478B6E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BC8, &unk_26478B6F8);
  v25 = a4 + *(result + 36);
  *v25 = v23;
  *(v25 + 8) = a2;
  return result;
}

uint64_t sub_26468DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v70 = sub_264784B04();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v59 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BD0, &qword_26478B708);
  MEMORY[0x28223BE20](v65);
  v66 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BD8, &qword_26478B710);
  v72 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v67 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BE0, &qword_26478B718);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v73 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BE8, &qword_26478B720);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BF0, &qword_26478B728);
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v71 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v59 - v27;
  *v19 = sub_264784724();
  *(v19 + 1) = 0;
  v29 = 1;
  v19[16] = 1;
  v30 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BF8, &qword_26478B730) + 44)];
  v60 = a2;
  v61 = a3;
  sub_26468E394(a1, a2, a3, v30);
  sub_264785514();
  sub_264784314();
  sub_26460E7E4(v19, v26, &qword_27FF76BE8, &qword_26478B720);
  v31 = &v26[*(v21 + 44)];
  v32 = v82;
  *(v31 + 4) = v81;
  *(v31 + 5) = v32;
  *(v31 + 6) = v83;
  v33 = v78;
  *v31 = v77;
  *(v31 + 1) = v33;
  v34 = v80;
  *(v31 + 2) = v79;
  *(v31 + 3) = v34;
  v35 = v26;
  v36 = v10;
  sub_26460E7E4(v35, v28, &qword_27FF76BF0, &qword_26478B728);
  v75[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_2647852F4();
  if (v76 == 1)
  {
    v37 = swift_allocObject();
    v38 = v60;
    v39 = v61;
    *(v37 + 16) = v60;
    *(v37 + 24) = v39;
    v40 = *(a1 + 48);
    *(v37 + 64) = *(a1 + 32);
    *(v37 + 80) = v40;
    *(v37 + 96) = *(a1 + 64);
    v41 = *(a1 + 16);
    *(v37 + 32) = *a1;
    *(v37 + 48) = v41;
    v43 = type metadata accessor for DestinationPresentationMapView(0, v38, v39, v42);
    (*(*(v43 - 8) + 16))(v75, a1, v43);
    v44 = v62;
    sub_264785334();
    sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
    v45 = v66;
    v46 = v64;
    sub_264785034();
    (*(v63 + 8))(v44, v46);
    v47 = v68;
    sub_264784AF4();
    sub_26468F874();
    sub_26468F95C(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v48 = v67;
    v49 = v70;
    sub_264784EC4();
    (*(v69 + 8))(v47, v49);
    sub_26460CD50(v45, &qword_27FF76BD0, &qword_26478B708);
    v50 = (v48 + *(v36 + 36));
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C20, &qword_26478B740) + 28);
    v52 = *MEMORY[0x277CDF438];
    v53 = sub_264783F84();
    (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
    *v50 = swift_getKeyPath();
    sub_26460E7E4(v48, v16, &qword_27FF76BD8, &qword_26478B710);
    v29 = 0;
  }

  (*(v72 + 56))(v16, v29, 1, v36);
  v54 = v71;
  sub_26460CCE8(v28, v71, &qword_27FF76BF0, &qword_26478B728);
  v55 = v73;
  sub_26468F798(v16, v73);
  v56 = v74;
  sub_26460CCE8(v54, v74, &qword_27FF76BF0, &qword_26478B728);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C00, &qword_26478B738);
  sub_26468F798(v55, v56 + *(v57 + 48));
  sub_26460CD50(v16, &qword_27FF76BE0, &qword_26478B718);
  sub_26460CD50(v28, &qword_27FF76BF0, &qword_26478B728);
  sub_26460CD50(v55, &qword_27FF76BE0, &qword_26478B718);
  return sub_26460CD50(v54, &qword_27FF76BF0, &qword_26478B728);
}

uint64_t sub_26468E394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C28, &qword_26478B780);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (&v55 - v8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C30, &qword_26478B788);
  v10 = MEMORY[0x28223BE20](v62);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C38, &qword_26478B790);
  MEMORY[0x28223BE20](v67);
  v64 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C40, &qword_26478B798);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C48, &unk_26478B7A0);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v22 = type metadata accessor for DestinationPresentationMapView(0, a2, a3, v21);
  v23 = sub_26468C908(v22);
  if (v23)
  {
    v24 = v23;
    v60 = v15;
    v61 = v18;
    v25 = _s15SafetyMonitorUI0aB11UIUtilitiesC17fullAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v23);
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      v57 = sub_26468E9D4(v24, v22);
      v58 = v29;
      v69 = *(a1 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C88, &qword_26478B7C0);
      sub_264785314();
      v55 = *(&v72 + 1);
      v30 = v72;
      v56 = v73;
      *&v72 = v27;
      *(&v72 + 1) = v28;
      sub_264613FC4();
      v31 = sub_264784E44();
      v33 = v32;
      *&v72 = v31;
      *(&v72 + 1) = v32;
      v59 = v24;
      v35 = v34 & 1;
      LOBYTE(v73) = v34 & 1;
      v74 = v36;
      sub_264785034();
      sub_26460ECC4(v31, v33, v35);

      v37 = sub_264784D74();
      KeyPath = swift_getKeyPath();
      v39 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C90, &qword_2647925E0) + 36)];
      *v39 = KeyPath;
      v39[1] = v37;
      v40 = swift_getKeyPath();
      v41 = v63;
      v42 = &v13[*(v62 + 36)];
      *v42 = v40;
      *(v42 + 1) = 1;
      v42[16] = 0;
      sub_26460CCE8(v13, v41, &qword_27FF76C30, &qword_26478B788);
      *v9 = v30;
      v43 = v56;
      v9[1] = v55;
      v9[2] = v43;
      v44 = v58;
      v9[3] = v57;
      v9[4] = v44;
      v9[5] = 0x4050000000000000;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C98, &qword_26478B830);
      sub_26460CCE8(v41, v9 + *(v45 + 48), &qword_27FF76C30, &qword_26478B788);

      sub_26460CD50(v13, &qword_27FF76C30, &qword_26478B788);
      sub_26460CD50(v41, &qword_27FF76C30, &qword_26478B788);
      v46 = v59;

      v47 = v64;
      sub_26460E7E4(v9, v64, &qword_27FF76C28, &qword_26478B780);
      (*(v65 + 56))(v47, 0, 1, v66);
    }

    else
    {
      v46 = v24;
      v47 = v64;
      (*(v65 + 56))(v64, 1, 1, v66);
    }

    sub_26460CCE8(v47, v17, &qword_27FF76C38, &qword_26478B790);
    swift_storeEnumTagMultiPayload();
    sub_26468FAC0();
    sub_26468FB70();
    sub_264784874();

    v51 = v47;
    v52 = &qword_27FF76C38;
    v53 = &qword_26478B790;
  }

  else
  {
    sub_26468EB80(&v72);
    v48 = v72;
    v49 = v73;
    v50 = v74;
    v69 = v72;
    v70 = v73;
    v71 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76590, &qword_26478A698);
    sub_26466D4BC();
    sub_264785034();
    sub_26466D57C(v48, *(&v48 + 1), v49, v50);
    *&v20[*(v18 + 36)] = sub_2647849C4();
    sub_26460CCE8(v20, v17, &qword_27FF76C48, &unk_26478B7A0);
    swift_storeEnumTagMultiPayload();
    sub_26468FAC0();
    sub_26468FB70();
    sub_264784874();
    v51 = v20;
    v52 = &qword_27FF76C48;
    v53 = &unk_26478B7A0;
  }

  return sub_26460CD50(v51, v52, v53);
}

id sub_26468E9D4(void *a1, uint64_t a2)
{
  v3 = sub_26468C8A0(a2);
  switch(v3)
  {
    case 3:
      if (qword_27FF75098 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF78CF0;
      goto LABEL_13;
    case 2:
      if (qword_27FF75090 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF78CE0;
      goto LABEL_13;
    case 1:
      if (qword_27FF75088 != -1)
      {
        swift_once();
      }

      v4 = &qword_27FF78CD0;
LABEL_13:
      v5 = *v4;

      return v5;
  }

  v6 = [a1 name];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v5 = sub_264785724();

  result = [a1 _geoMapItem];
  if (result)
  {
    v9 = [result _placeType];
    swift_unknownObjectRelease();
    if (v9 > 0x11 || ((1 << v9) & 0x2D000) == 0)
    {
      return v5;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26468EB80@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_2647852F4();
  if (v7 == 1)
  {
    if (qword_27FF75220 != -1)
    {
      swift_once();
    }

    sub_264613FC4();

    result = sub_264784E44();
    v6 = v5 & 1;
  }

  else
  {
    result = 0;
    v3 = 0;
    v6 = 0;
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_26468EC68(void *a1)
{
  v2 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v6 - 8) + 56))(v5, 1, 3, v6);
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v17 = v9;
  v18 = v8;
  v15[3] = v8;
  v15[4] = v7;
  v15[5] = v9;
  sub_26468F9AC(&v18, v15);

  sub_26460CCE8(&v17, v15, &qword_27FF756E0, &qword_264787DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76188, &qword_264789D48);
  MEMORY[0x26673F100](&v16);
  v10 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_2647031A4(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_2647031A4((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  sub_26468FA08(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12);
  v15[0] = v8;
  v15[1] = v7;
  v15[2] = v9;
  v14 = v10;
  sub_2647853E4();
  sub_26468FA6C(&v18);

  return sub_26460CD50(&v17, &qword_27FF756E0, &qword_264787DE0);
}

uint64_t sub_26468EE9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF751E0 != -1)
  {
    swift_once();
  }

  sub_264613FC4();

  v2 = sub_264784E44();
  v4 = v3;
  v6 = v5;
  sub_2647851C4();
  v7 = sub_264784DF4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_26460ECC4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_26468F010@<X0>(uint64_t a1@<X8>)
{
  sub_264613FC4();

  v2 = sub_264784E44();
  v4 = v3;
  v6 = v5 & 1;
  sub_264785034();
  sub_26460ECC4(v2, v4, v6);

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76CD0, &unk_26478B900);
  v9 = a1 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 1;
  *(v9 + 16) = 0;
  return result;
}

uint64_t sub_26468F118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264784544();
  *a1 = result;
  return result;
}

__n128 sub_26468F170@<Q0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a8@<X8>)
{
  swift_unknownObjectRetain();
  v12 = sub_264784174();
  v14 = v13;
  sub_2647852E4();
  sub_2647852E4();
  result = v16;
  *a8 = v12;
  *(a8 + 8) = v14;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = v16.n128_u8[0];
  *(a8 + 48) = v16.n128_u64[1];
  *(a8 + 56) = v16;
  return result;
}

unint64_t sub_26468F238()
{
  result = qword_27FF76AD8;
  if (!qword_27FF76AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76AB0, &qword_26478B618);
    sub_26468F2F0();
    sub_26460CDF0(&qword_27FF76B10, &qword_27FF75948, &qword_26478B640, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76AD8);
  }

  return result;
}

unint64_t sub_26468F2F0()
{
  result = qword_27FF76AE0;
  if (!qword_27FF76AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76AD0, &qword_26478B638);
    sub_26468F3A8();
    sub_26460CDF0(&qword_27FF76B00, &qword_27FF76B08, &unk_26478B650, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76AE0);
  }

  return result;
}

unint64_t sub_26468F3A8()
{
  result = qword_27FF76AE8;
  if (!qword_27FF76AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76AC8, &qword_26478B630);
    sub_26460CDF0(&qword_27FF76AF0, &qword_27FF76AF8, &qword_26478B648, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76AE8);
  }

  return result;
}

unint64_t sub_26468F46C()
{
  result = qword_27FF76B48;
  if (!qword_27FF76B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76B40, &qword_26478B678);
    sub_26460CDF0(&qword_27FF76B50, &qword_27FF76B58, &qword_26478B680, MEMORY[0x277CE42A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76B48);
  }

  return result;
}

uint64_t sub_26468F51C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264784544();
  *a1 = result;
  return result;
}

unint64_t sub_26468F574()
{
  result = qword_27FF76B78;
  if (!qword_27FF76B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76B20, &qword_26478B668);
    sub_26468F62C();
    sub_26460CDF0(&qword_27FF76BA8, &qword_27FF76B68, &unk_26478B6C0, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76B78);
  }

  return result;
}

unint64_t sub_26468F62C()
{
  result = qword_27FF76B80;
  if (!qword_27FF76B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76B60, &qword_26478B6B8);
    sub_26460CDF0(&qword_27FF76B88, &qword_27FF76B90, &unk_26478B6D0, MEMORY[0x277CE42B0]);
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76B80);
  }

  return result;
}

uint64_t sub_26468F710()
{
  v0 = sub_2647854C4();
  MEMORY[0x28223BE20](v0);
  sub_2647854B4();
  return sub_2647840B4();
}

uint64_t sub_26468F798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76BE0, &qword_26478B718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26468F808()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_26468F874()
{
  result = qword_27FF76C10;
  if (!qword_27FF76C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76BD0, &qword_26478B708);
    sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
    sub_26468F95C(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76C10);
  }

  return result;
}

uint64_t sub_26468F95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26468FA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyMonitorUINavigationPathItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26468FAC0()
{
  result = qword_27FF76C50;
  if (!qword_27FF76C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76C38, &qword_26478B790);
    sub_26460CDF0(&qword_27FF76C58, &qword_27FF76C28, &qword_26478B780, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76C50);
  }

  return result;
}

unint64_t sub_26468FB70()
{
  result = qword_27FF76C60;
  if (!qword_27FF76C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76C48, &unk_26478B7A0);
    sub_26468FC28();
    sub_26460CDF0(&qword_27FF76C78, &qword_27FF76C80, &qword_26478B7B8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76C60);
  }

  return result;
}

unint64_t sub_26468FC28()
{
  result = qword_27FF76C68;
  if (!qword_27FF76C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76C70, &qword_26478B7B0);
    sub_26466D4BC();
    sub_26468F95C(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76C68);
  }

  return result;
}

uint64_t sub_26468FD24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26468FD6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26468FDCC()
{
  result = qword_27FF76CC0;
  if (!qword_27FF76CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76CC8, qword_26478B8A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76AB0, &qword_26478B618);
    sub_26468F238();
    swift_getOpaqueTypeConformance2();
    sub_26468F95C(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76CC0);
  }

  return result;
}

unint64_t sub_26468FEE4()
{
  result = qword_27FF76CD8;
  if (!qword_27FF76CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76CD0, &unk_26478B900);
    sub_26465D02C();
    sub_26460CDF0(&qword_27FF76CE0, &qword_27FF76CE8, &qword_26478B910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76CD8);
  }

  return result;
}

uint64_t SafetyMonitorBadge.init(diameter:imageName:imageColor:badgeStroke:usePadding:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = a7;
  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 33) = a5;
  return result;
}

void *SafetyMonitorBadge.body.getter@<X0>(void *a1@<X8>)
{
  v84 = a1;
  v2 = sub_264785284();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v83 = *(v1 + 24);
  v82 = *(v1 + 33);
  if (__PAIR128__(0x8000000264795C20, 0xD000000000000027) == __PAIR128__(v7, v6) || (sub_264785E84() & 1) != 0)
  {
    v8 = sub_264785504();
    v10 = v9;

    sub_264785274();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v11 = sub_2647852C4();

    (*(v3 + 8))(v5, v2);
    v12 = sub_264785194();
    v13 = sub_264784C34();
    sub_264783F54();
    v103 = v11;
    *(&v104 + 2) = v92;
    WORD3(v104) = v93;
    *(&v105 + 1) = *v91;
    DWORD1(v105) = *&v91[3];
    HIDWORD(v107) = *&v136[3];
    *(&v107 + 9) = *v136;
    LOWORD(v104) = 1;
    *(&v104 + 1) = v12;
    LOBYTE(v105) = v13;
    *(&v105 + 1) = v14;
    *&v106 = v15;
    *(&v106 + 1) = v16;
    *&v107 = v17;
    BYTE8(v107) = 0;
    *&v108 = v8;
    *(&v108 + 1) = v10;
    v94 = v11;
    v95 = v104;
    v98 = v107;
    v99 = v108;
    v96 = v105;
    v97 = v106;
    v109 = v11;
    v110 = 0;
    LOWORD(v111) = 1;
    HIWORD(v111) = v93;
    *(&v111 + 2) = v92;
    v112 = v12;
    LOBYTE(v113) = v13;
    HIDWORD(v113) = *&v91[3];
    *(&v113 + 1) = *v91;
    v114 = v14;
    v115 = v15;
    v116 = v16;
    v117 = v17;
    LOBYTE(v118) = 0;
    HIDWORD(v118) = *&v136[3];
    *(&v118 + 1) = *v136;
    v119 = v8;
    v120 = v10;
    sub_26460CCE8(&v103, v147, &qword_27FF76DF0, &qword_26478B9B8);
    sub_26460CD50(&v109, &qword_27FF76DF0, &qword_26478B9B8);
    sub_264785504();
    sub_2647840A4();
    v18 = qword_27FF753A0;
    v19 = v83;

    if (v18 != -1)
    {
      swift_once();
    }

    v20 = qword_27FF792E8;
    sub_264783FD4();
    v21 = v154;
    v22 = v155;
    v23 = v156;
    v24 = v157;
    v25 = v158;
    v26 = v159;

    v27 = sub_264785504();
    v29 = v28;
    v30 = sub_264785504();
    *&v123 = v21;
    *(&v123 + 1) = __PAIR64__(v23, v22);
    *&v124 = v24;
    *(&v124 + 1) = v25;
    *&v125 = v26;
    *(&v125 + 1) = v20;
    LOWORD(v126) = 256;
    *(&v126 + 2) = v121;
    WORD3(v126) = v122;
    *(&v126 + 1) = v27;
    *&v127 = v29;
    *(&v127 + 1) = v30;
    v128 = v31;
    v87 = v125;
    v88 = v126;
    v89 = v127;
    v90 = v31;
    v85 = v123;
    v86 = v124;
    *&v130 = v21;
    *(&v130 + 1) = __PAIR64__(v23, v22);
    *&v131 = v24;
    *(&v131 + 1) = v25;
    *&v132 = v26;
    *(&v132 + 1) = v20;
    LOWORD(v133) = 256;
    WORD3(v133) = v122;
    *(&v133 + 2) = v121;
    *(&v133 + 1) = v27;
    *&v134 = v29;
    *(&v134 + 1) = v30;
    v135 = v31;
    sub_26460CCE8(&v123, v147, &qword_27FF76CF8, &qword_26478B948);
    sub_26460CD50(&v130, &qword_27FF76CF8, &qword_26478B948);
    LOBYTE(v20) = sub_264784C64();
    sub_264783F54();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    LOBYTE(v148) = 0;
    sub_264785194();
    v40 = sub_2647851F4();

    *&v136[96] = v100;
    *&v136[112] = v101;
    *&v136[128] = v102;
    *&v136[32] = v96;
    *&v136[48] = v97;
    *&v136[80] = v99;
    *&v136[64] = v98;
    *&v136[16] = v95;
    *v136 = v94;
    *&v136[184] = v87;
    *&v136[200] = v88;
    *&v136[216] = v89;
    *&v136[152] = v85;
    *&v136[144] = v19;
    *&v136[232] = v90;
    *&v136[168] = v86;
    v136[240] = v20;
    *&v136[248] = v33;
    *&v136[256] = v35;
    *&v136[264] = v37;
    *&v136[272] = v39;
    v136[280] = 0;
    *&v136[288] = v40;
    *&v136[296] = 0x4014000000000000;
    *&v136[304] = xmmword_26478B930;
    sub_2646911D8(v136);
  }

  else
  {

    sub_264785274();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v81 = sub_2647852C4();

    (*(v3 + 8))(v5, v2);
    sub_264785504();
    sub_2647840A4();
    v79 = v150;
    v80 = v148;
    v77 = v153;
    v78 = v152;
    v139 = v149;
    v138 = v151;
    v41 = v83;

    v42 = sub_264785194();
    sub_264785504();
    sub_2647840A4();
    v43 = v154;
    v44 = v155;
    v45 = v157;
    v46 = v158;
    v47 = v159;
    v48 = v160;
    v49 = sub_264785504();
    v136[0] = v44;
    v129[0] = v46;
    *&v85 = v42;
    *(&v85 + 1) = v43;
    LOBYTE(v86) = v44;
    *(&v86 + 1) = v45;
    v50 = v46;
    LOBYTE(v87) = v46;
    *(&v87 + 1) = v47;
    *&v88 = v48;
    *(&v88 + 1) = v49;
    *&v89 = v51;
    v52 = v139;
    v76 = v138;
    v144 = v51;
    v143 = v88;
    v142 = v87;
    v140 = v85;
    v141 = v86;
    *&v123 = v42;
    *(&v123 + 1) = v43;
    LOBYTE(v124) = v44;
    *(&v124 + 1) = v45;
    LOBYTE(v125) = v50;
    *(&v125 + 1) = v47;
    *&v126 = v48;
    *(&v126 + 1) = v49;
    *&v127 = v51;
    sub_26460CCE8(&v85, v147, &qword_27FF76CF0, &qword_26478B940);
    sub_26460CD50(&v123, &qword_27FF76CF0, &qword_26478B940);
    if (qword_27FF753A0 != -1)
    {
      swift_once();
    }

    v53 = qword_27FF792E8;
    sub_264783FD4();
    v54 = v161;
    v55 = v162;
    v56 = v163;
    v57 = v164;
    v58 = v165;
    v59 = v166;

    v60 = sub_264785504();
    v62 = v61;
    v63 = sub_264785504();
    *&v103 = v54;
    *(&v103 + 1) = __PAIR64__(v56, v55);
    *&v104 = v57;
    *(&v104 + 1) = v58;
    *&v105 = v59;
    *(&v105 + 1) = v53;
    LOWORD(v106) = 256;
    *(&v106 + 2) = v145;
    WORD3(v106) = v146;
    *(&v106 + 1) = v60;
    *&v107 = v62;
    *(&v107 + 1) = v63;
    *&v108 = v64;
    v132 = v105;
    v133 = v106;
    v134 = v107;
    v135 = v64;
    v130 = v103;
    v131 = v104;
    v109 = v54;
    v110 = __PAIR64__(v56, v55);
    v111 = v57;
    v112 = v58;
    v113 = v59;
    v114 = v53;
    LOWORD(v115) = 256;
    HIWORD(v115) = v146;
    *(&v115 + 2) = v145;
    v116 = v60;
    v117 = v62;
    v118 = v63;
    v119 = v64;
    sub_26460CCE8(&v103, v147, &qword_27FF76CF8, &qword_26478B948);
    sub_26460CD50(&v109, &qword_27FF76CF8, &qword_26478B948);
    LOBYTE(v53) = sub_264784C64();
    sub_264783F54();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v137 = 0;
    sub_264785194();
    v73 = sub_2647851F4();

    *&v136[96] = v142;
    *&v136[112] = v143;
    *&v136[80] = v141;
    *&v136[64] = v140;
    *&v136[152] = v131;
    *&v136[136] = v130;
    *&v136[200] = v134;
    *&v136[184] = v133;
    *v136 = v81;
    *&v136[8] = v80;
    v136[16] = v52;
    *&v136[24] = v79;
    v136[32] = v76;
    *&v136[40] = v78;
    *&v136[48] = v77;
    *&v136[56] = v41;
    *&v136[128] = v144;
    *&v136[216] = v135;
    *&v136[168] = v132;
    v136[224] = v53;
    *&v136[232] = v66;
    *&v136[240] = v68;
    *&v136[248] = v70;
    *&v136[256] = v72;
    v136[264] = 0;
    *&v136[272] = v73;
    *&v136[280] = 0x4014000000000000;
    *&v136[288] = xmmword_26478B930;
    sub_2646909EC(v136);
  }

  memcpy(v129, v136, sizeof(v129));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D00, &qword_26478B950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D08, &qword_26478B958);
  sub_2646909F4();
  sub_264690DB8();
  sub_264784874();
  return memcpy(v84, v147, 0x141uLL);
}

unint64_t sub_2646909F4()
{
  result = qword_27FF76D10;
  if (!qword_27FF76D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D00, &qword_26478B950);
    sub_264690A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D10);
  }

  return result;
}

unint64_t sub_264690A80()
{
  result = qword_27FF76D18;
  if (!qword_27FF76D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D20, &qword_26478B960);
    sub_264690B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D18);
  }

  return result;
}

unint64_t sub_264690B0C()
{
  result = qword_27FF76D28;
  if (!qword_27FF76D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D30, &qword_26478B968);
    sub_264690BC4();
    sub_26460CDF0(&qword_27FF76D80, &qword_27FF76CF8, &qword_26478B948, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D28);
  }

  return result;
}

unint64_t sub_264690BC4()
{
  result = qword_27FF76D38;
  if (!qword_27FF76D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D40, &qword_26478B970);
    sub_264690C7C();
    sub_26460CDF0(&qword_27FF76D78, &qword_27FF76CF0, &qword_26478B940, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D38);
  }

  return result;
}

unint64_t sub_264690C7C()
{
  result = qword_27FF76D48;
  if (!qword_27FF76D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D50, &qword_26478B978);
    sub_264690D34();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D48);
  }

  return result;
}

unint64_t sub_264690D34()
{
  result = qword_27FF76D58;
  if (!qword_27FF76D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D60, &unk_26478B980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D58);
  }

  return result;
}

unint64_t sub_264690DB8()
{
  result = qword_27FF76D88;
  if (!qword_27FF76D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D08, &qword_26478B958);
    sub_264690E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D88);
  }

  return result;
}

unint64_t sub_264690E44()
{
  result = qword_27FF76D90;
  if (!qword_27FF76D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76D98, &qword_26478B990);
    sub_264690ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76D90);
  }

  return result;
}

unint64_t sub_264690ED0()
{
  result = qword_27FF76DA0;
  if (!qword_27FF76DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76DA8, &qword_26478B998);
    sub_264690F88();
    sub_26460CDF0(&qword_27FF76D80, &qword_27FF76CF8, &qword_26478B948, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DA0);
  }

  return result;
}

unint64_t sub_264690F88()
{
  result = qword_27FF76DB0;
  if (!qword_27FF76DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76DB8, &qword_26478B9A0);
    sub_264691040();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DB0);
  }

  return result;
}

unint64_t sub_264691040()
{
  result = qword_27FF76DC0;
  if (!qword_27FF76DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76DC8, &qword_26478B9A8);
    sub_2646910CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DC0);
  }

  return result;
}

unint64_t sub_2646910CC()
{
  result = qword_27FF76DD0;
  if (!qword_27FF76DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76DD8, &qword_26478B9B0);
    sub_264691184();
    sub_26460CDF0(&qword_27FF76DE8, &qword_27FF76DF0, &qword_26478B9B8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DD0);
  }

  return result;
}

unint64_t sub_264691184()
{
  result = qword_27FF76DE0;
  if (!qword_27FF76DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DE0);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264691214(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26469125C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2646912B4()
{
  result = qword_27FF76DF8;
  if (!qword_27FF76DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E00, &qword_26478BA58);
    sub_2646909F4();
    sub_264690DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76DF8);
  }

  return result;
}

id sub_264691340(uint64_t a1)
{
  result = objc_opt_self();
  if (a1 != 3)
  {
    if (a1 != 2)
    {
      if (a1 != 1)
      {
        goto LABEL_10;
      }

      result = [result homeStyleAttributes];
      if (result)
      {
        return result;
      }

      __break(1u);
    }

    result = [result workStyleAttributes];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = [result schoolStyleAttributes];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_10:
  result = [result addressMarkerStyleAttributes];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t ETAType.id.getter()
{
  v1 = 0x69626F6D6F747561;
  v2 = 0x7469736E617274;
  if (*v0 != 2)
  {
    v2 = 0x6D6F74737563;
  }

  if (*v0)
  {
    v1 = 0x676E696B6C6177;
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

uint64_t ETAType.imageName.getter()
{
  v1 = 0x6C6C69662E726163;
  v2 = 0x6C69662E6D617274;
  if (*v0 != 2)
  {
    v2 = 0x6B636F6C63;
  }

  if (*v0)
  {
    v1 = 0x772E657275676966;
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

uint64_t ETAType.labelName.getter()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785754();
}

SafetyMonitorUI::ETAType_optional __swiftcall ETAType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264785E14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_2646917AC(uint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x69626F6D6F747561;
  v4 = 0xE700000000000000;
  v5 = 0x7469736E617274;
  if (*v1 != 2)
  {
    v5 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696B6C6177;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_26469183C()
{
  result = qword_27FF76E08;
  if (!qword_27FF76E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E08);
  }

  return result;
}

uint64_t sub_264691890()
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_264691954(uint64_t a1)
{
  sub_264785794();
}

uint64_t sub_264691A04(uint64_t a1)
{
  sub_264785F44();
  sub_264785794();

  return sub_264785F94();
}

uint64_t sub_264691ADC(char a1)
{
  v1 = sub_264783B94();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_264785704();
  MEMORY[0x28223BE20](v2 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785754();
}

uint64_t sub_264691C6C(char a1, char a2)
{
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  return sub_264785754();
}

uint64_t getEnumTagSinglePayload for UserType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264691FC4()
{
  result = qword_27FF76E10;
  if (!qword_27FF76E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E10);
  }

  return result;
}

uint64_t MessageInfo.localeIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *MessageInfo.__allocating_init(mapItem:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *MessageInfo.init(mapItem:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t MessageInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_264692178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x69626F6D6F747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7469736E617274;
    }

    else
    {
      v5 = 0x6D6F74737563;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x676E696B6C6177;
    }

    else
    {
      v5 = 0x69626F6D6F747561;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEA0000000000656CLL;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x7469736E617274;
  if (a2 != 2)
  {
    v8 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x676E696B6C6177;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264785E84();
  }

  return v11 & 1;
}

uint64_t sub_2646922B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007373696D73;
  v3 = 0x69446C61756E616DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5364657472617473;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4 == 2)
    {
      v6 = 0xEE006E6F69737365;
    }

    else
    {
      v6 = 0x8000000264793170;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6D7369446F747561;
    }

    else
    {
      v5 = 0x69446C61756E616DLL;
    }

    if (v4)
    {
      v6 = 0xEB00000000737369;
    }

    else
    {
      v6 = 0xED00007373696D73;
    }
  }

  v7 = 0x5364657472617473;
  v8 = 0x8000000264793170;
  if (a2 == 2)
  {
    v8 = 0xEE006E6F69737365;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v3 = 0x6D7369446F747561;
    v2 = 0xEB00000000737369;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264785E84();
  }

  return v11 & 1;
}

uint64_t sub_264692428(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064657461;
  v3 = 0x64696C6156746F6ELL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x64696C61766E69;
  v7 = 0xED00007261466F6FLL;
  if (a1 != 4)
  {
    v7 = 0xEF65736F6C436F6FLL;
  }

  if (a1 != 3)
  {
    v6 = 0x5464696C61766E69;
    v5 = v7;
  }

  v8 = 0x69746164696C6176;
  v9 = 0xEA0000000000676ELL;
  if (a1 != 1)
  {
    v8 = 0x64696C6176;
    v9 = 0xE500000000000000;
  }

  if (!a1)
  {
    v8 = 0x64696C6156746F6ELL;
    v9 = 0xEC00000064657461;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x64696C61766E69)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00007261466F6FLL;
      if (v10 != 0x5464696C61766E69)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEF65736F6C436F6FLL;
      if (v10 != 0x5464696C61766E69)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000676ELL;
        if (v10 != 0x69746164696C6176)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x64696C6176;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = sub_264785E84();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_264692624(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701670760;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1802661751;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6C6F6F686373;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x726568746FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1701670760;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6C6F6F686373;
    if (a2 != 3)
    {
      v6 = 0x726568746FLL;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1802661751;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_264785E84();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_264692780(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006E6F69;
  v3 = 0x74616E6974736564;
  v4 = a1;
  v5 = 0x6563655274736F6DLL;
  v6 = 0xEA0000000000746ELL;
  v7 = 0x6574756F726E65;
  if (a1 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = 0xE700000000000000;
  }

  v8 = 0x6F6C6E557473616CLL;
  v9 = 0xEA00000000006B63;
  if (a1 != 1)
  {
    v8 = 0x636F4C7472617473;
    v9 = 0xED00006E6F697461;
  }

  if (!a1)
  {
    v8 = 0x74616E6974736564;
    v9 = 0xEB000000006E6F69;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA0000000000746ELL;
      if (v10 != 0x6563655274736F6DLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x6574756F726E65)
        {
          goto LABEL_31;
        }
      }

      else if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA00000000006B63;
        if (v10 != 0x6F6C6E557473616CLL)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x636F4C7472617473;
      v2 = 0xED00006E6F697461;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = sub_264785E84();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_264692988(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000030;
  v3 = "eRoutine-1\n";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "yMonitorMessages";
      v5 = 0xD000000000000039;
    }

    else
    {
      v6 = "yMonitorMessages.Workouts";
      v5 = 0xD000000000000043;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000030;
    }

    else
    {
      v5 = 0xD00000000000003BLL;
    }

    if (v4)
    {
      v6 = "yMonitorMessages.NewMessage";
    }

    else
    {
      v6 = "eRoutine-1\n";
    }
  }

  if (a2 > 1u)
  {
    v3 = "yMonitorMessages";
    v7 = 0xD000000000000039;
    v8 = "yMonitorMessages.Workouts";
    v2 = 0xD000000000000043;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD00000000000003BLL;
    v8 = "yMonitorMessages.NewMessage";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_264785E84();
  }

  return v12 & 1;
}

void sub_264692AAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E90, &unk_26478BD20);
    v2 = sub_264785DE4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_2646548B4(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void static MetricsManager.submitWorkoutAlwaysPromptResponse(reason:workoutActivityType:)(_BYTE *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (*a1 > 2u)
    {
    }

    else
    {
      v3 = sub_264785E84();

      if ((v3 & 1) == 0)
      {
        v4 = _HKWorkoutActivityNameForActivityType();
        if (v4)
        {
          sub_264785724();
          v6 = v5;
        }

        else
        {
          v6 = 0;
        }

        sub_264655A88(MEMORY[0x277D84F90]);
        v7 = sub_264785994();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_2646933F8(v7, 0x7073655272657375, 0xEC00000065736E6FLL, isUniquelyReferenced_nonNull_native, &qword_27FF75E90, &unk_26478BD20);
        v9 = [objc_opt_self() sharedConnection];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 isHealthDataSubmissionAllowed];

          if (v11)
          {
            if (v6)
            {

              v12 = swift_isUniquelyReferenced_nonNull_native();
              sub_2646933F8(v4, 0xD000000000000019, 0x8000000264795D10, v12, &qword_27FF75E90, &unk_26478BD20);
            }

            else
            {
            }
          }

          else
          {
          }

          v13 = sub_264785714();
          sub_2646936F0();
          v14 = sub_264785604();

          AnalyticsSendEvent();
        }

        else
        {

          __break(1u);
        }
      }
    }
  }
}

SafetyMonitorUI::MetricsManager::CheckInButtonNotDisplayedReason_optional __swiftcall MetricsManager.CheckInButtonNotDisplayedReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void static MetricsManager.submitFitnessCheckInButtonDisplayed(isDisplayed:notDisplayedReason:)(uint64_t a1, unsigned __int8 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F08, &qword_264789890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889B0;
  *(inited + 32) = 0x6579616C70736964;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = sub_264785864();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000264795D70;
  *(inited + 72) = sub_264785994();
  v3 = sub_264655944(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F10, &qword_264789898);
  swift_arrayDestroy();
  v4 = sub_264785714();
  sub_264692AAC(v3);

  sub_2646936F0();
  v5 = sub_264785604();

  AnalyticsSendEvent();
}

uint64_t sub_264693148(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_264785DD4();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_264785F44();
      sub_264785794();
      result = sub_264785F94();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2646933F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2646548B4(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_264693148(v20, a4 & 1, a5, a6);
      v15 = sub_2646548B4(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_264785EC4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_264693594(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

id sub_264693594(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264785DC4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_2646936F0()
{
  result = qword_27FF75F00;
  if (!qword_27FF75F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF75F00);
  }

  return result;
}

unint64_t sub_264693740()
{
  result = qword_27FF76E18;
  if (!qword_27FF76E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E18);
  }

  return result;
}

uint64_t *CriticalAlertOnboardingViewController.init(model:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_264783B94();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_264785704();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2647856E4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2647856D4();
  sub_2647856C4();
  sub_2647856B4();
  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v10 = sub_264785714();

  v11 = sub_264785714();

  type metadata accessor for ImageProvider();
  v12 = [v8 bundleForClass_];
  v13 = sub_264785714();
  v14 = [objc_opt_self() imageNamed:v13 inBundle:v12 withConfiguration:0];

  if (!v14)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v17.receiver = v2;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_icon_contentLayout_, v10, v11, v14, 2);

  return v15;
}

Swift::Void __swiftcall CriticalAlertOnboardingViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CriticalAlertBlurbView(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, sel_viewDidLoad);
  v6 = [objc_opt_self() boldButton];
  if (qword_27FF75188 != -1)
  {
    swift_once();
  }

  v7 = sub_264785714();
  [v6 setTitle:v7 forState:0];

  [v6 addTarget:v1 action:sel_okButtonAction forControlEvents:64];
  v8 = [v1 buttonTray];
  [v8 addButton_];

  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E20, &qword_26478BD68));
  v10 = sub_264784784();
  v11 = [v10 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  v13 = [v1 contentView];
  v14 = [v10 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  [v13 addSubview_];

  [v10 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26478B4E0;
  v17 = [v10 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v16 + 32) = v22;
  v23 = [v10 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = [v1 contentView];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v16 + 40) = v28;
  v29 = [v10 view];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v1 contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v16 + 48) = v34;
  v35 = [v10 view];

  if (v35)
  {
    v36 = [v35 bottomAnchor];

    v37 = [v1 contentView];
    v38 = [v37 bottomAnchor];

    v39 = [v36 constraintEqualToAnchor_];
    *(v16 + 56) = v39;
    v40 = objc_opt_self();
    sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
    v41 = sub_2647857E4();

    [v40 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_2646940E4()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v5 = v3;
  sub_264785694();
  v6 = [v3 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {

    sub_264785694();
    v9 = [v3 bundleForClass_];
    sub_264783B84();
    sub_264785754();
  }

  v10 = sub_264785714();

  v11 = sub_264785714();

  v23 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  sub_264785694();
  v12 = [v5 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = sub_264785714();

  v29 = sub_264694D74;
  v30 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_264694948;
  v28 = &block_descriptor_6;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v22 = [v16 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  sub_264785694();
  v17 = [v5 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = sub_264785714();

  v29 = sub_264694DAC;
  v30 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_264694948;
  v28 = &block_descriptor_5;
  v20 = _Block_copy(&aBlock);

  v21 = [v16 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v23 addAction_];
  [v23 addAction_];
  [v24 presentViewController:v23 animated:1 completion:0];
}

void sub_26469470C(char a1)
{
  v2 = v1;
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [objc_opt_self() setCriticalAlertPreference_];
  sub_264783DE4();
  v9 = sub_264783E14();
  v10 = sub_2647859F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    if (a1)
    {
      v13 = 0x2253455922;
    }

    else
    {
      v13 = 575622690;
    }

    if (a1)
    {
      v14 = 0xE500000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v15 = sub_2646DF234(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_264605000, v9, v10, "#CriticalAlertOnboarding: Setting Critical Alert %s in UserDefaults", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v16 = [v2 navigationController];
  if (v16)
  {
    v17 = v16;
    [v16 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_264694948(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_2646949B0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_26469470C(a3 & 1);
  }
}

id CriticalAlertOnboardingViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CriticalAlertOnboardingViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CriticalAlertOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264694D3C()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264694E00()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E48, &qword_2647925A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - v4;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_264783B84();
  v13[5] = sub_264785754();
  v13[6] = v9;
  [objc_opt_self() shareAllLocations];
  sub_264785694();
  v10 = [v7 bundleForClass_];
  sub_264783B84();
  v13[2] = sub_264785754();
  v13[3] = v11;
  sub_264613FC4();
  sub_264784164();
  sub_264695684();
  sub_264785034();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_264695100@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264784644();
  v6 = sub_264784E34();
  v8 = v7;
  LOBYTE(ObjCClassFromMetadata) = v9;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E28, &qword_26478BE18) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E60, &qword_26478BE28);
  result = sub_264784124();
  *v13 = KeyPath;
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = ObjCClassFromMetadata & 1;
  *(a1 + 24) = v11;
  return result;
}

void sub_264695304()
{
  if (sub_2647839A4() == 0xD000000000000035 && 0x8000000264796070 == v0)
  {
  }

  else
  {
    v1 = sub_264785E84();

    if ((v1 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    v4 = sub_2647839B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767F0, &unk_26478AD08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2647889B0;
    *(inited + 32) = sub_264785724();
    *(inited + 40) = v6;
    v7 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    *(inited + 80) = sub_264785724();
    *(inited + 88) = v8;
    *(inited + 120) = v7;
    *(inited + 96) = 1;
    sub_264655958(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E70, &qword_264789800);
    swift_arrayDestroy();
    v9 = sub_264785604();

    [v3 openSensitiveURL:v4 withOptions:v9];

    sub_264784114();
    return;
  }

LABEL_7:

  MEMORY[0x282130C18](v2);
}

uint64_t sub_264695510()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E28, &qword_26478BE18);
  MEMORY[0x28223BE20](v0);
  sub_264695100(&v3 - v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E30, &qword_26478BE20);
  sub_2646955F8();
  sub_264695758();
  return sub_264785474();
}

unint64_t sub_2646955F8()
{
  result = qword_27FF76E38;
  if (!qword_27FF76E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E30, &qword_26478BE20);
    sub_264695684();
    sub_264695700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E38);
  }

  return result;
}

unint64_t sub_264695684()
{
  result = qword_27FF76E40;
  if (!qword_27FF76E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E48, &qword_2647925A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E40);
  }

  return result;
}

unint64_t sub_264695700()
{
  result = qword_27FF76008;
  if (!qword_27FF76008)
  {
    sub_264784BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76008);
  }

  return result;
}

unint64_t sub_264695758()
{
  result = qword_27FF76E50;
  if (!qword_27FF76E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E28, &qword_26478BE18);
    sub_2646957E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E50);
  }

  return result;
}

unint64_t sub_2646957E4()
{
  result = qword_27FF76E58;
  if (!qword_27FF76E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E60, &qword_26478BE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E58);
  }

  return result;
}

unint64_t sub_264695854()
{
  result = qword_27FF76E68;
  if (!qword_27FF76E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E70, &unk_26478BE60);
    sub_2646955F8();
    sub_264695758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76E68);
  }

  return result;
}

uint64_t LocationSelectionView.init(sessionViewModel:userSessionConfiguration:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for LocationSelectionView(0);
  v6 = v5[5];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  swift_storeEnumTagMultiPayload();
  v7 = v5[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v5[9];
  sub_2647852E4();
  *v8 = v17;
  *(v8 + 8) = v18;
  v9 = a3 + v5[10];
  sub_2647852E4();
  *v9 = v17;
  *(v9 + 8) = v18;
  v10 = (a3 + v5[7]);
  type metadata accessor for SessionViewModel(0);
  sub_264695EA8(&qword_27FF75DC0, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);

  *v10 = sub_264784174();
  v10[1] = v11;
  v12 = (a3 + v5[8]);
  type metadata accessor for UserSessionConfiguration(0);
  sub_264695EA8(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);

  v13 = sub_264784174();
  v15 = v14;

  *v12 = v13;
  v12[1] = v15;
  *a3 = sub_264695EF0;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

void sub_264695B24(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v5);

  v1 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v5);

  v2 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v5);

  v4 = v5;
  v3 = objc_allocWithZone(type metadata accessor for LocationSearchViewModel(0));
  LocationSearchViewModel.init(selectedLocation:destinationType:geofenceSize:)(v1, v2, &v4);
}

uint64_t sub_264695C58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264784574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LocationSelectionView(0);
  sub_26460CCE8(v1 + *(v10 + 20), v9, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2647840D4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2647859E4();
    v13 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_264695EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LocationSelectionView.mapContentView.getter@<X0>(uint64_t a1@<X8>)
{
  v132 = a1;
  v2 = sub_2647848B4();
  v130 = *(v2 - 8);
  v131 = v2;
  MEMORY[0x28223BE20](v2);
  v127 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2647845A4();
  v125 = *(v4 - 8);
  v126 = v4;
  MEMORY[0x28223BE20](v4);
  v124 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264783B94();
  MEMORY[0x28223BE20](v6 - 8);
  v135 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264785704();
  MEMORY[0x28223BE20](v8 - 8);
  v133 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E80, &qword_26478BEE0);
  MEMORY[0x28223BE20](v109);
  v106 = &v89 - v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E88, &qword_26478BEE8);
  MEMORY[0x28223BE20](v108);
  v107 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E90, &qword_26478BEF0);
  v13 = *(v12 - 8);
  v112 = v12;
  v113 = v13;
  MEMORY[0x28223BE20](v12);
  v110 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E98, &qword_26478BEF8);
  v16 = *(v15 - 8);
  v116 = v15;
  v117 = v16;
  MEMORY[0x28223BE20](v15);
  v111 = &v89 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76EA0, &qword_26478BF00);
  v19 = *(v18 - 8);
  v118 = v18;
  v119 = v19;
  MEMORY[0x28223BE20](v18);
  v114 = &v89 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76EA8, &qword_26478BF08);
  v22 = *(v21 - 8);
  v121 = v21;
  v122 = v22;
  MEMORY[0x28223BE20](v21);
  v115 = &v89 - v23;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76EB0, &qword_26478BF10);
  v123 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v120 = &v89 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76EB8, &qword_26478BF18);
  v26 = *(v25 - 8);
  v128 = v25;
  v129 = v26;
  MEMORY[0x28223BE20](v25);
  v137 = &v89 - v27;
  v134 = v1;
  v29 = *v1;
  v28 = v1[1];
  v30 = *(v1 + 16);
  v31 = type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v32 = v31;
  v33 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v99 = *(&v159 + 1);
  v100 = v159;
  v101 = v160;
  v98 = v161;
  v34 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v97 = *&v141[0];
  v96 = *(v141 + 8);
  v35 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v94 = v157;
  v95 = v156;
  v93 = v158;
  v36 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v92 = v154;
  v91 = v155;
  v102 = v29;
  v104 = v28;
  v105 = v32;
  v103 = v30;
  v37 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v90 = v151;
  v38 = v152;
  v39 = v153;
  v40 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  *&v141[0] = v100;
  *(&v141[0] + 1) = v99;
  v142 = v98;
  v141[1] = v101;
  *(v143 + 8) = v96;
  *&v143[0] = v97;
  *(&v143[1] + 1) = v95;
  *&v144 = v94;
  BYTE8(v144) = v93;
  *(v145 + 8) = v91;
  *&v145[0] = v92;
  *(&v145[1] + 1) = v90;
  *&v146 = v38;
  BYTE8(v146) = v39;
  v147 = v149;
  v148 = v150;
  sub_264686EA8();
  v41 = v106;
  sub_264785034();
  v167 = v146;
  v168 = v147;
  v169 = v148;
  v163 = v143[1];
  v164 = v144;
  v165 = v145[0];
  v166 = v145[1];
  v159 = v141[0];
  v160 = v141[1];
  v161 = v142;
  v162 = v143[0];
  sub_2646870F0(&v159);
  sub_26469751C();
  v42 = v107;
  sub_264785074();
  sub_26460CD50(v41, &qword_27FF76E80, &qword_26478BEE0);
  v43 = sub_264784294();
  v44 = sub_264784C34();
  v45 = v108;
  v46 = v42 + *(v108 + 36);
  *v46 = v43;
  *(v46 + 8) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76B70, &qword_26478C010);
  sub_264784304();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2647889B0;
  sub_2647842E4();
  sub_2647842F4();
  v48 = sub_2646975D8();
  v49 = v110;
  MEMORY[0x26673ED90](1, v47, v45, v48);

  sub_26460CD50(v42, &qword_27FF76E88, &qword_26478BEE8);
  v140 = v134;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76ED8, &qword_26478C018);
  *&v141[0] = v45;
  *(&v141[0] + 1) = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = sub_26460CDF0(&qword_27FF76EE0, &qword_27FF76ED8, &qword_26478C018, MEMORY[0x277CDDF68]);
  v54 = v111;
  v53 = v112;
  sub_2647850E4();
  (*(v113 + 8))(v49, v53);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v110 = ObjCClassFromMetadata;
  v109 = objc_opt_self();
  v56 = [v109 bundleForClass_];
  sub_264783B84();
  v154 = sub_264785754();
  *&v155 = v57;
  *&v141[0] = v53;
  *(&v141[0] + 1) = v50;
  *&v141[1] = OpaqueTypeConformance2;
  *(&v141[1] + 1) = v52;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_264613FC4();
  v60 = v114;
  v61 = v116;
  v62 = MEMORY[0x277D837D0];
  v63 = v59;
  v113 = v59;
  sub_264784F54();

  v64 = v54;
  v65 = v61;
  (*(v117 + 8))(v64, v61);
  v66 = v124;
  v67 = v125;
  v68 = v126;
  (*(v125 + 104))(v124, *MEMORY[0x277CDDDC0], v126);
  *&v141[0] = v65;
  *(&v141[0] + 1) = v62;
  *&v141[1] = v58;
  *(&v141[1] + 1) = v63;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v115;
  v71 = v118;
  sub_264785084();
  (*(v67 + 8))(v66, v68);
  (*(v119 + 8))(v60, v71);
  v72 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v73 = v127;
  sub_2647848A4();
  v154 = v71;
  *&v155 = v69;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v121;
  v76 = v120;
  sub_264784EB4();

  (*(v130 + 8))(v73, v131);
  (*(v122 + 8))(v70, v75);
  v77 = v134;
  v139 = v134;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76EE8, &qword_26478C048);
  *&v141[0] = v75;
  *(&v141[0] + 1) = v74;
  v130 = swift_getOpaqueTypeConformance2();
  v78 = sub_26469A614();
  v79 = v136;
  sub_264784F94();
  (*(v123 + 8))(v76, v79);
  sub_264785694();
  v80 = [v109 bundleForClass_];
  sub_264783B84();
  v81 = sub_264785754();
  v135 = v82;
  v154 = v81;
  *&v155 = v82;
  v83 = v77 + *(type metadata accessor for LocationSelectionView(0) + 36);
  v84 = *v83;
  v85 = *(v83 + 1);
  LOBYTE(v149) = v84;
  *(&v149 + 1) = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_264785314();
  LODWORD(v133) = LOBYTE(v141[1]);
  v138 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FF8, &qword_264789B68);
  *&v141[0] = v136;
  *(&v141[0] + 1) = v131;
  *&v141[1] = v130;
  *(&v141[1] + 1) = v78;
  swift_getOpaqueTypeConformance2();
  sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
  sub_2646A2298(&qword_27FF76048, &qword_27FF75FF8, &qword_264789B68, sub_26465D250);
  v86 = v128;
  v87 = v137;
  sub_2647850A4();

  return (*(v129 + 8))(v87, v86);
}

double sub_264697040@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v5);

  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_2646970C4(_OWORD *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264783EE4();
}

uint64_t sub_264697178(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264783EE4();
}

uint64_t sub_264697230(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264783EE4();
}

uint64_t sub_2646972E0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v2;
  sub_264783EE4();
  return sub_2646CA060();
}

uint64_t sub_2646973A4(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_264783EE4();
  return sub_2646CD74C();
}

uint64_t sub_264697424@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_2646974A8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_264783EE4();
}

unint64_t sub_26469751C()
{
  result = qword_27FF76EC8;
  if (!qword_27FF76EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E80, &qword_26478BEE0);
    sub_264686EA8();
    sub_264695EA8(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76EC8);
  }

  return result;
}

unint64_t sub_2646975D8()
{
  result = qword_27FF76ED0;
  if (!qword_27FF76ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E88, &qword_26478BEE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E80, &qword_26478BEE0);
    sub_26469751C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76ED0);
  }

  return result;
}

uint64_t sub_2646976A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77040, &qword_26478C378);
  MEMORY[0x28223BE20](v63);
  v62 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77048, &qword_26478C380);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77050, &qword_26478C388);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77058, &qword_26478C390);
  v52 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v10 = &v50 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77060, &qword_26478C398);
  v51 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77068, &qword_26478C3A0);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v50 - v14;
  v15 = sub_264784934();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77070, &qword_26478C3A8);
  v55 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  sub_2647848F4();
  v66 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77078, &unk_26478C3B0);
  sub_2646A25E4();
  v58 = v21;
  sub_264783FE4();
  LOBYTE(v21) = sub_264698438();
  v22 = sub_264784904();
  if (v21)
  {
    MEMORY[0x28223BE20](v22);
    *(&v50 - 2) = a1;
    sub_264783FE4();
    v23 = MEMORY[0x277CDD7A8];
    v24 = sub_26460CDF0(&qword_27FF770D0, &qword_27FF77070, &qword_26478C3A8, MEMORY[0x277CDD7A8]);
    MEMORY[0x26673E690](v19, v16, v24);
    v67 = v16;
    v68 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = sub_26460CDF0(&qword_27FF770C8, &qword_27FF77058, &qword_26478C390, v23);
    v67 = v57;
    v68 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = v56;
    MEMORY[0x26673E6A0](v12, v56, v54, OpaqueTypeConformance2, v27);
    (*(v51 + 8))(v12, v28);
    v29 = v55;
    v30 = v16;
    (*(v55 + 8))(v19, v16);
    v31 = v29;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77088, &qword_26478C3C0);
    sub_2646A269C();
    sub_264783FE4();
    v32 = MEMORY[0x277CDD7A8];
    v33 = sub_26460CDF0(&qword_27FF770C8, &qword_27FF77058, &qword_26478C390, MEMORY[0x277CDD7A8]);
    v34 = v57;
    MEMORY[0x26673E690](v10, v57, v33);
    v35 = sub_26460CDF0(&qword_27FF770D0, &qword_27FF77070, &qword_26478C3A8, v32);
    v30 = v16;
    v67 = v16;
    v68 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v67 = v34;
    v68 = v33;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = v54;
    MEMORY[0x26673E6B0](v8, v56, v54, v36, v37);
    (*(v53 + 8))(v8, v38);
    (*(v52 + 8))(v10, v34);
    v31 = v55;
  }

  v39 = sub_264784914();
  MEMORY[0x28223BE20](v39);
  *(&v50 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF770D8, &qword_26478C3E8);
  sub_2646A28FC();
  v40 = v59;
  sub_2647842D4();
  v41 = v62;
  v42 = *(v63 + 48);
  v43 = *(v63 + 64);
  v44 = v58;
  v45 = v30;
  (*(v31 + 16))(v62, v58, v30);
  v46 = v65;
  sub_26460CCE8(v65, &v41[v42], &qword_27FF77068, &qword_26478C3A0);
  v48 = v60;
  v47 = v61;
  (*(v60 + 16))(&v41[v43], v40, v61);
  sub_264784754();
  (*(v48 + 8))(v40, v47);
  sub_26460CD50(v46, &qword_27FF77068, &qword_26478C3A0);
  return (*(v31 + 8))(v44, v45);
}

uint64_t sub_264697F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_264783F44();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76330, &qword_264789F30);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  sub_264783F24();
  sub_2646A247C(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_2646A24F4(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for LocationSelectionView);
  MEMORY[0x26673F080](v9, sub_2646A30F8, v15);
  sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30, MEMORY[0x277CDF028]);
  sub_264785034();
  (*(v11 + 8))(v13, v10);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77078, &unk_26478C3B0);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = 0;
  return result;
}

uint64_t sub_2646981B0(uint64_t a1)
{
  v16 = sub_264784574();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_2647840D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocationSelectionView(0);
  sub_26460CCE8(a1 + *(v12 + 20), v7, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_2647859E4();
    v13 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_2647840C4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_264698438()
{
  type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v0 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v11);

  if (!(v11 >> 62))
  {
    v1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v4 = 1;
    return v4 & 1;
  }

  v7 = sub_264785C14();

  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  v2 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v10);

  if (v10 == 1)
  {
LABEL_7:

    v4 = 0;
    return v4 & 1;
  }

  v3 = sub_264785E84();

  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v5 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v9);

    if (!v9 || v9 != 1)
    {
      v6 = sub_264785E84();

      v4 = v6 ^ 1;
      return v4 & 1;
    }

    goto LABEL_7;
  }

  return v4 & 1;
}

uint64_t sub_2646987B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_264783F44();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76330, &qword_264789F30);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  sub_264783F34();
  sub_2646A247C(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_2646A24F4(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for LocationSelectionView);
  MEMORY[0x26673F080](v9, sub_2646A2D44, v15);
  sub_26460CDF0(&qword_27FF76328, &qword_27FF76330, &qword_264789F30, MEMORY[0x277CDF028]);
  sub_264785034();
  (*(v11 + 8))(v13, v10);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77078, &unk_26478C3B0);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = 0;
  return result;
}

uint64_t sub_264698A54(uint64_t *a1)
{
  v2 = sub_2647840D4();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264783E24();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v9 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v46);

  if (LOBYTE(v46[0]) <= 2u && LOBYTE(v46[0]) && LOBYTE(v46[0]) != 1)
  {
  }

  else
  {
    v10 = sub_264785E84();

    if ((v10 & 1) == 0)
    {
      v11 = a1 + *(type metadata accessor for LocationSelectionView(0) + 36);
      v12 = *v11;
      v13 = *(v11 + 1);
      LOBYTE(v46[0]) = v12;
      v46[1] = v13;
      v45 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
      return sub_264785304();
    }
  }

  v15 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v46);

  v16 = v46[0];
  if (!(v46[0] >> 62))
  {
    result = *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_16:

    sub_264783DF4();
    v24 = sub_264783E14();
    v33 = sub_2647859F4();
    if (os_log_type_enabled(v24, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_264605000, v24, v33, "No selected location found on dismiss of location selection.", v34, 2u);
      MEMORY[0x266740650](v34, -1, -1);
    }

    goto LABEL_18;
  }

  result = sub_264785C14();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x26673FA30](0, v16);
    goto LABEL_12;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
LABEL_12:
    v18 = v17;

    v38 = *(a1 + *(type metadata accessor for LocationSelectionView(0) + 32) + 8);
    v19 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v46);

    v20 = v46[0];
    v21 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v46);

    v45 = v46[0];
    sub_26470BEF8(v18, v20, &v45);
    v22 = v39;
    sub_264783DF4();
    v23 = v18;
    v24 = sub_264783E14();
    v25 = sub_2647859F4();

    if (!os_log_type_enabled(v24, v25))
    {

      (*(v40 + 8))(v22, v41);
LABEL_19:
      v36 = v43;
      v35 = v44;
      v37 = v42;
      sub_264695C58(v42);
      sub_2647840C4();
      return (*(v36 + 8))(v37, v35);
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46[0] = v27;
    *v26 = 136642819;
    v8 = v22;
    v28 = [v23 debugDescription];
    v29 = sub_264785724();
    v31 = v30;

    v32 = sub_2646DF234(v29, v31, v46);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_264605000, v24, v25, "Set session end location to %{sensitive}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x266740650](v27, -1, -1);
    MEMORY[0x266740650](v26, -1, -1);

LABEL_18:
    (*(v40 + 8))(v8, v41);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_264699164@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF770C0, &unk_26478C3D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771D8, &unk_26478C520);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF771E0, &qword_264792500);
  v7 = sub_264784A74();
  v8 = sub_26460CDF0(&qword_27FF771E8, &qword_27FF771E0, &qword_264792500, MEMORY[0x277CDD7F8]);
  v9 = sub_264695EA8(&qword_27FF771F0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  v16[0] = v6;
  v16[1] = v7;
  v16[2] = v8;
  v16[3] = v9;
  swift_getOpaqueTypeConformance2();
  sub_264785334();
  sub_26460CDF0(&qword_27FF770B8, &qword_27FF770C0, &unk_26478C3D8, MEMORY[0x277CDF028]);
  sub_264785034();
  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = 1;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF770A0, &qword_26478C3C8) + 36));
  *v12 = KeyPath;
  v12[1] = sub_264664980;
  v12[2] = v11;
  v13 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77088, &qword_26478C3C0);
  v15 = (a1 + *(result + 36));
  *v15 = v13;
  v15[1] = 0;
  return result;
}

uint64_t sub_264699440()
{
  v0 = sub_264784A74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771E0, &qword_264792500);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_264784014();
  sub_264784A64();
  sub_26460CDF0(&qword_27FF771E8, &qword_27FF771E0, &qword_264792500, MEMORY[0x277CDD7F8]);
  sub_264695EA8(&qword_27FF771F0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  sub_264784E84();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_264699644(uint64_t a1)
{
  sub_2647854D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF770F0, &qword_26478C3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77100, &qword_26478C3F8);
  sub_26460CDF0(&qword_27FF770E8, &qword_27FF770F0, &qword_26478C3F0, MEMORY[0x277CE14C0]);
  sub_2646A29C0();
  return sub_2647854E4();
}

uint64_t sub_26469974C@<X0>(char *a1@<X8>)
{
  v29 = sub_264784694();
  v26 = *(v29 - 8);
  v2 = v26;
  v3 = MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v25 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77178, &qword_26478C4E0);
  v27 = *(v7 - 8);
  v8 = v27;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  sub_2646999FC(&v25 - v12);
  sub_264784684();
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v30 = 1;
  v15 = *(v2 + 16);
  v16 = v28;
  v17 = v6;
  v18 = v29;
  v15(v28, v17, v29);
  v14(a1, v11, v7);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77180, &qword_26478C4E8);
  v20 = &a1[*(v19 + 48)];
  v21 = v30;
  *v20 = 0;
  v20[8] = v21;
  v15(&a1[*(v19 + 64)], v16, v18);
  v22 = *(v26 + 8);
  v22(v25, v18);
  v23 = *(v27 + 8);
  v23(v13, v7);
  v22(v16, v18);
  return (v23)(v11, v7);
}

uint64_t sub_2646999FC@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_264784214();
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77188, &qword_26478C4F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77190, &qword_26478C4F8);
  MEMORY[0x28223BE20](v18);
  v10 = &v18 - v9;
  type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v11 = sub_264783FB4();
  swift_getKeyPath();
  sub_264784194();

  v22 = v25;
  v23 = v26;
  v24 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77198, &qword_26478C500);
  sub_2646A2F44();
  sub_26460CDF0(&qword_27FF771A8, &qword_27FF77198, &qword_26478C500, MEMORY[0x277CE14C0]);
  sub_2647853A4();
  sub_264784204();
  sub_26460CDF0(&qword_27FF771B0, &qword_27FF77188, &qword_26478C4F0, MEMORY[0x277CDF038]);
  v12 = v19;
  sub_264784EF4();
  (*(v20 + 8))(v4, v12);
  (*(v6 + 8))(v8, v5);
  v13 = &v10[*(v18 + 36)];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C20, &qword_26478B740) + 28);
  v15 = *MEMORY[0x277CDF438];
  v16 = sub_264783F84();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  sub_2646A2F98();
  sub_264784F04();
  return sub_26460CD50(v10, &qword_27FF77190, &qword_26478C4F8);
}

uint64_t sub_264699E08@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2647845C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77140, &qword_26478C450);
  sub_26469B6EC(a2 + *(v3 + 44));
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77110, &qword_26478C400) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77130, &unk_26478C410);
  sub_264784334();
  *v4 = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77100, &qword_26478C3F8) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C20, &qword_26478B740) + 28);
  v7 = *MEMORY[0x277CDF438];
  v8 = sub_264783F84();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  result = swift_getKeyPath();
  *v5 = result;
  return result;
}

uint64_t sub_264699F40@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_264699FC4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_264783EE4();
}

uint64_t sub_26469A048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77028, &qword_26478C298);
  MEMORY[0x28223BE20](v37);
  v38 = (&v30 - v3);
  v4 = type metadata accessor for LocationSelectionView(0);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F00, &unk_26478C050);
  v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v31 = &v30 - v6;
  v7 = type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v34 = v7;
  v8 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v39);

  v9 = v39[2];

  if (v9)
  {

    sub_264783FA4();
    type metadata accessor for SessionViewModel(0);
    sub_264695EA8(&qword_27FF75DC0, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    v10 = sub_264784174();
    v12 = v11;
    v13 = sub_264784174();
    v14 = v38;
    *v38 = v10;
    v14[1] = v12;
    v14[2] = v13;
    v14[3] = v15;
    swift_storeEnumTagMultiPayload();
    sub_26469A6A0();
    sub_26469A774();
    return sub_264784874();
  }

  v34 = v5;
  v17 = v33;
  v18 = a1;
  v19 = v36;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v39);

  v21 = v38;
  v20 = v39;
  v22 = v39[2];
  if (!v22)
  {
    goto LABEL_6;
  }

  v23 = sub_2646A1DBC(v39[2], 0);
  v24 = sub_2646C5E8C(&v39, (v23 + 4), v22, v20);
  sub_26467A824(v39);
  if (v24 != v22)
  {
    __break(1u);
LABEL_6:

    v23 = MEMORY[0x277D84F90];
  }

  v25 = v30;
  v39 = v23;
  swift_getKeyPath();
  sub_2646A247C(v18, v17, type metadata accessor for LocationSelectionView);
  v26 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v27 = swift_allocObject();
  sub_2646A24F4(v17, v27 + v26, type metadata accessor for LocationSelectionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77030, &qword_26478C350);
  type metadata accessor for LocationSearchResultRow(0);
  sub_26460CDF0(&qword_27FF77038, &qword_27FF77030, &qword_26478C350, MEMORY[0x277D83980]);
  sub_264659D00();
  sub_264695EA8(&qword_27FF76F08, type metadata accessor for LocationSearchResultRow, &unk_26478C108);
  v28 = v31;
  sub_264785424();
  v29 = v32;
  (*(v32 + 16))(v21, v28, v19);
  swift_storeEnumTagMultiPayload();
  sub_26469A6A0();
  sub_26469A774();
  sub_264784874();
  return (*(v29 + 8))(v28, v19);
}

unint64_t sub_26469A614()
{
  result = qword_27FF76EF0;
  if (!qword_27FF76EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EE8, &qword_26478C048);
    sub_26469A6A0();
    sub_26469A774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76EF0);
  }

  return result;
}

unint64_t sub_26469A6A0()
{
  result = qword_27FF76EF8;
  if (!qword_27FF76EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76F00, &unk_26478C050);
    sub_264695EA8(&qword_27FF76F08, type metadata accessor for LocationSearchResultRow, &unk_26478C108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76EF8);
  }

  return result;
}

unint64_t sub_26469A774()
{
  result = qword_27FF76F10;
  if (!qword_27FF76F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76F10);
  }

  return result;
}

uint64_t sub_26469A7C8@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v17 = *(a1 + 16);
  v6 = [*a1 name];
  if (v6)
  {
    v7 = v6;
    v8 = sub_264785724();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v11 = v4;
  sub_264783FA4();
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for LocationSearchResultRow(0);
  v13 = (a3 + v12[6]);
  *v13 = 0;
  v13[1] = v4;
  v13[2] = v8;
  v13[3] = v10;
  *(a3 + v12[7]) = v5;
  v14 = (a3 + v12[5]);
  result = sub_264784174();
  *v14 = result;
  v14[1] = v16;
  *(a3 + v12[8]) = v17;
  return result;
}

uint64_t sub_26469A948()
{
  v0 = sub_264783B94();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_264785704();
  MEMORY[0x28223BE20](v1 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785744();
  sub_264613FC4();
  return sub_264785374();
}

uint64_t sub_26469AAD0@<X0>(uint64_t a2@<X8>)
{
  v27 = a2;
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v26[1] = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264785704();
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v5 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v33);

  if (v33 != 4)
  {
    v6 = sub_264785E84();

    if (v6)
    {
      goto LABEL_4;
    }

    v18 = sub_264783FA4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v33);

    if (v33 > 2u)
    {
      if (v33 == 3)
      {
        v17 = v27;
      }

      else
      {
        v17 = v27;
        if (v33 != 4)
        {

          goto LABEL_14;
        }
      }
    }

    else
    {
      v17 = v27;
    }

    v19 = sub_264785E84();

    if ((v19 & 1) == 0)
    {
      v15 = 0uLL;
      v16 = -1;
      v14 = 0uLL;
      goto LABEL_15;
    }

LABEL_14:
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v33 = sub_264785754();
    *(&v33 + 1) = v22;
    sub_264613FC4();
    v28 = sub_264784E44();
    v29 = v24;
    v30 = v23 & 1;
    v31 = v25;
    v32 = 1;
    result = sub_264784874();
    v14 = v34;
    v15 = v33;
    v16 = v35;
    goto LABEL_15;
  }

LABEL_4:
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  v7 = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  *&v33 = sub_264785754();
  *(&v33 + 1) = v9;
  sub_264613FC4();
  v28 = sub_264784E44();
  v29 = v10;
  v30 = v11 & 1;
  v31 = v12;
  v32 = 0;
  result = sub_264784874();
  v14 = v34;
  v15 = v33;
  v16 = v35;
  v17 = v27;
LABEL_15:
  *v17 = v15;
  *(v17 + 16) = v14;
  *(v17 + 32) = v16;
  return result;
}

uint64_t static LocationSelectionView.locationRadiusDisplayName(fenceSize:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (qword_27FF75238 != -1)
      {
        swift_once();
      }

      v1 = &qword_27FF79028;
    }

    else
    {
      if (qword_27FF75240 != -1)
      {
        swift_once();
      }

      v1 = &qword_27FF79038;
    }
  }

  else
  {
    if (qword_27FF75230 != -1)
    {
      swift_once();
    }

    v1 = &qword_27FF79018;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_26469B1B8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771C0, &qword_26478C508);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771C8, &qword_26478C510);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v37 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  if (qword_27FF75230 != -1)
  {
    swift_once();
  }

  v41 = qword_27FF79018;
  v42 = qword_27FF79020;
  sub_264613FC4();

  *v4 = sub_264784E44();
  *(v4 + 1) = v21;
  v4[16] = v22 & 1;
  *(v4 + 3) = v23;
  *(v4 + 16) = 256;
  v24 = sub_2646A2F44();
  v41 = MEMORY[0x277CE0BD8];
  v42 = &type metadata for GeofenceSize;
  v43 = MEMORY[0x277CE0BC8];
  v44 = v24;
  swift_getOpaqueTypeConformance2();
  sub_264785034();
  v25 = *(v2 + 8);
  v25(v4, v1);
  if (qword_27FF75238 != -1)
  {
    swift_once();
  }

  v41 = qword_27FF79028;
  v42 = qword_27FF79030;

  *v4 = sub_264784E44();
  *(v4 + 1) = v26;
  v4[16] = v27 & 1;
  *(v4 + 3) = v28;
  *(v4 + 16) = 257;
  sub_264785034();
  v25(v4, v1);
  if (qword_27FF75240 != -1)
  {
    swift_once();
  }

  v41 = qword_27FF79038;
  v42 = qword_27FF79040;

  *v4 = sub_264784E44();
  *(v4 + 1) = v29;
  v4[16] = v30 & 1;
  *(v4 + 3) = v31;
  *(v4 + 16) = 258;
  sub_264785034();
  v25(v4, v1);
  sub_26460CCE8(v20, v12, &qword_27FF771C8, &qword_26478C510);
  v32 = v38;
  sub_26460CCE8(v18, v38, &qword_27FF771C8, &qword_26478C510);
  v33 = v39;
  sub_26460CCE8(v15, v39, &qword_27FF771C8, &qword_26478C510);
  v34 = v40;
  sub_26460CCE8(v12, v40, &qword_27FF771C8, &qword_26478C510);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771D0, &qword_26478C518);
  sub_26460CCE8(v32, v34 + *(v35 + 48), &qword_27FF771C8, &qword_26478C510);
  sub_26460CCE8(v33, v34 + *(v35 + 64), &qword_27FF771C8, &qword_26478C510);
  sub_26460CD50(v15, &qword_27FF771C8, &qword_26478C510);
  sub_26460CD50(v18, &qword_27FF771C8, &qword_26478C510);
  sub_26460CD50(v20, &qword_27FF771C8, &qword_26478C510);
  sub_26460CD50(v33, &qword_27FF771C8, &qword_26478C510);
  sub_26460CD50(v32, &qword_27FF771C8, &qword_26478C510);
  return sub_26460CD50(v12, &qword_27FF771C8, &qword_26478C510);
}

uint64_t sub_26469B6EC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77148, &qword_26478C4B8);
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77150, &qword_26478C4C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v30 = &v27 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v29 = &v27 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v28 = &v27 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  sub_26469BABC(v3);
  sub_2646A2D84();
  v27 = v17;
  sub_264785034();
  sub_26460CD50(v3, &qword_27FF77148, &qword_26478C4B8);
  sub_26469C228(v3);
  sub_264785034();
  sub_26460CD50(v3, &qword_27FF77148, &qword_26478C4B8);
  sub_26469C98C(v3);
  v18 = v28;
  sub_264785034();
  sub_26460CD50(v3, &qword_27FF77148, &qword_26478C4B8);
  v19 = v29;
  sub_26460CCE8(v17, v29, &qword_27FF77150, &qword_26478C4C0);
  v20 = v30;
  sub_26460CCE8(v15, v30, &qword_27FF77150, &qword_26478C4C0);
  v21 = v31;
  sub_26460CCE8(v18, v31, &qword_27FF77150, &qword_26478C4C0);
  v22 = v32;
  sub_26460CCE8(v19, v32, &qword_27FF77150, &qword_26478C4C0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77160, &qword_26478C4C8);
  v24 = v22 + v23[12];
  *v24 = 0;
  *(v24 + 8) = 0;
  sub_26460CCE8(v20, v22 + v23[16], &qword_27FF77150, &qword_26478C4C0);
  v25 = v22 + v23[20];
  *v25 = 0;
  *(v25 + 8) = 0;
  sub_26460CCE8(v21, v22 + v23[24], &qword_27FF77150, &qword_26478C4C0);
  sub_26460CD50(v18, &qword_27FF77150, &qword_26478C4C0);
  sub_26460CD50(v15, &qword_27FF77150, &qword_26478C4C0);
  sub_26460CD50(v27, &qword_27FF77150, &qword_26478C4C0);
  sub_26460CD50(v21, &qword_27FF77150, &qword_26478C4C0);
  sub_26460CD50(v20, &qword_27FF77150, &qword_26478C4C0);
  return sub_26460CD50(v19, &qword_27FF77150, &qword_26478C4C0);
}

uint64_t sub_26469BABC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77168, &qword_26478C4D0);
  MEMORY[0x28223BE20](v36);
  v38 = &v30 - v3;
  v37 = sub_264784B04();
  v30 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationSelectionView(0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77170, &qword_26478C4D8);
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v12 = &v30 - v11;
  type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v13 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v40);

  if (v40)
  {
    if (qword_27FF75230 != -1)
    {
      swift_once();
    }

    v40 = qword_27FF79018;
    v41 = qword_27FF79020;
    sub_2646A247C(v2, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v14 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v15 = swift_allocObject();
    sub_2646A24F4(v8, v15 + v14, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    v16 = v33;
    sub_264785374();
    v17 = v34;
    (*(v34 + 16))(v38, v16, v9);
    swift_storeEnumTagMultiPayload();
    v18 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
    v19 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v40 = v9;
    v41 = v37;
    v42 = v18;
    v43 = v19;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v17 + 8))(v16, v9);
  }

  else
  {
    v21 = v12;
    if (qword_27FF75230 != -1)
    {
      swift_once();
    }

    v40 = qword_27FF79018;
    v41 = qword_27FF79020;
    sub_2646A247C(v2, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v22 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v23 = swift_allocObject();
    sub_2646A24F4(v8, v23 + v22, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    v24 = v33;
    sub_264785374();
    sub_264784AF4();
    v25 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
    v26 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v27 = v37;
    sub_264784EC4();
    (*(v30 + 8))(v5, v27);
    (*(v34 + 8))(v24, v9);
    v28 = v31;
    v29 = v35;
    (*(v31 + 16))(v38, v21, v35);
    swift_storeEnumTagMultiPayload();
    v40 = v9;
    v41 = v27;
    v42 = v25;
    v43 = v26;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v28 + 8))(v21, v29);
  }
}

uint64_t sub_26469C228@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77168, &qword_26478C4D0);
  MEMORY[0x28223BE20](v34);
  v36 = &v28 - v3;
  v35 = sub_264784B04();
  v30 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationSelectionView(0);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77170, &qword_26478C4D8);
  v28 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v12 = &v28 - v11;
  type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v13 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v38);

  if (v38 == 1)
  {
    if (qword_27FF75238 != -1)
    {
      swift_once();
    }

    v38 = qword_27FF79028;
    v39 = qword_27FF79030;
    sub_2646A247C(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v14 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v15 = swift_allocObject();
    sub_2646A24F4(v7, v15 + v14, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    sub_264785374();
    v16 = v29;
    sub_264784AF4();
    v17 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
    v18 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v19 = v35;
    sub_264784EC4();
    (*(v30 + 8))(v16, v19);
    (*(v32 + 8))(v10, v8);
    v20 = v28;
    v21 = v33;
    (*(v28 + 16))(v36, v12, v33);
    swift_storeEnumTagMultiPayload();
    v38 = v8;
    v39 = v19;
    v40 = v17;
    v41 = v18;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v20 + 8))(v12, v21);
  }

  else
  {
    if (qword_27FF75238 != -1)
    {
      swift_once();
    }

    v38 = qword_27FF79028;
    v39 = qword_27FF79030;
    sub_2646A247C(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v24 = swift_allocObject();
    sub_2646A24F4(v7, v24 + v23, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    sub_264785374();
    v25 = v32;
    (*(v32 + 16))(v36, v10, v8);
    swift_storeEnumTagMultiPayload();
    v26 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
    v27 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v38 = v8;
    v39 = v35;
    v40 = v26;
    v41 = v27;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v25 + 8))(v10, v8);
  }
}

uint64_t sub_26469C98C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77168, &qword_26478C4D0);
  MEMORY[0x28223BE20](v34);
  v36 = &v28 - v3;
  v35 = sub_264784B04();
  v30 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationSelectionView(0);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77170, &qword_26478C4D8);
  v28 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v12 = &v28 - v11;
  type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  v13 = sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v38);

  if (v38 == 2)
  {
    if (qword_27FF75240 != -1)
    {
      swift_once();
    }

    v38 = qword_27FF79038;
    v39 = qword_27FF79040;
    sub_2646A247C(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v14 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v15 = swift_allocObject();
    sub_2646A24F4(v7, v15 + v14, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    sub_264785374();
    v16 = v29;
    sub_264784AF4();
    v17 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
    v18 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v19 = v35;
    sub_264784EC4();
    (*(v30 + 8))(v16, v19);
    (*(v32 + 8))(v10, v8);
    v20 = v28;
    v21 = v33;
    (*(v28 + 16))(v36, v12, v33);
    swift_storeEnumTagMultiPayload();
    v38 = v8;
    v39 = v19;
    v40 = v17;
    v41 = v18;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v20 + 8))(v12, v21);
  }

  else
  {
    if (qword_27FF75240 != -1)
    {
      swift_once();
    }

    v38 = qword_27FF79038;
    v39 = qword_27FF79040;
    sub_2646A247C(v2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSelectionView);
    v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v24 = swift_allocObject();
    sub_2646A24F4(v7, v24 + v23, type metadata accessor for LocationSelectionView);
    sub_264613FC4();

    sub_264785374();
    v25 = v32;
    (*(v32 + 16))(v36, v10, v8);
    swift_storeEnumTagMultiPayload();
    v26 = sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
    v27 = sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v38 = v8;
    v39 = v35;
    v40 = v26;
    v41 = v27;
    swift_getOpaqueTypeConformance2();
    sub_264784874();
    return (*(v25 + 8))(v10, v8);
  }
}