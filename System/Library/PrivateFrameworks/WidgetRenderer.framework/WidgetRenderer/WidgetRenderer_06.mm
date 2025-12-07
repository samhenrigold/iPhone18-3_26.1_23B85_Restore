uint64_t sub_1DAE02128()
{

  sub_1DAD660D8(*(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

void *sub_1DAE021A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DADF9534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAE021C4(void *a1, int64_t a2, char a3)
{
  result = sub_1DADF955C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAE021E4(char *a1, int64_t a2, char a3)
{
  result = sub_1DADF96A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAE02204(char *a1, int64_t a2, char a3)
{
  result = sub_1DADF97B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAE02224(void *a1, int64_t a2, char a3)
{
  result = sub_1DADF98C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAE02244(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DADF9AB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAE02264(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DADF9AD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1DAE02284()
{
  result = qword_1EE00BE10;
  if (!qword_1EE00BE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08768, &qword_1DAEDCB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE10);
  }

  return result;
}

double sub_1DAE022F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  type metadata accessor for InProcessWidgetInstanceViewModel(0);
  sub_1DAE03528(&qword_1ECC08AA0, type metadata accessor for InProcessWidgetInstanceViewModel, &protocol conformance descriptor for InProcessWidgetInstanceViewModel);

  sub_1DAECEE4C();
  sub_1DAECEEBC();

  *(v3 + 16) = v2;

  sub_1DAE023DC(v4);

  return result;
}

double sub_1DAE023DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    v7 = (v1 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
    v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
    v9 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity + 8);
    v10 = sub_1DAECE55C();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);

    sub_1DAEBFFF4(v8, v9, v5);

    sub_1DAE03300(v5);
    v11 = *v7;
    v12 = v7[1];
    v13 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
    swift_beginAccess();
    sub_1DAD6E2C8(v1 + v13, v5);

    sub_1DAEBFFF4(v11, v12, v5);

    sub_1DAE03300(v5);
    return sub_1DAE0308C();
  }

  return result;
}

double sub_1DAE025A8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  type metadata accessor for InProcessWidgetInstanceViewModel(0);
  sub_1DAE03528(&qword_1ECC08AA0, type metadata accessor for InProcessWidgetInstanceViewModel, &protocol conformance descriptor for InProcessWidgetInstanceViewModel);

  sub_1DAECEE4C();
  sub_1DAECEEBC();

  *(v1 + 16) = a1;

  sub_1DAE023DC(v3);

  return result;
}

uint64_t type metadata accessor for InProcessWidgetInstanceViewModel(uint64_t a1)
{
  result = qword_1ECC08AB8;
  if (!qword_1ECC08AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1DAE026E8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 16);

  return sub_1DAE0277C;
}

void sub_1DAE0277C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(v5 + 16);
  type metadata accessor for InProcessWidgetInstanceViewModel(0);
  sub_1DAE03528(&qword_1ECC08AA0, type metadata accessor for InProcessWidgetInstanceViewModel, &protocol conformance descriptor for InProcessWidgetInstanceViewModel);

  if (a2)
  {

    sub_1DAECEE4C();
    sub_1DAECEEBC();

    *(v5 + 16) = v4;

    sub_1DAE023DC(v6);
  }

  else
  {
    sub_1DAECEE4C();
    sub_1DAECEEBC();

    *(v5 + 16) = v4;

    sub_1DAE023DC(v6);
  }

  free(v3);
}

uint64_t sub_1DAE028EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1DAD6E2C8(a1, &v6 - v3);
  return sub_1DAE029D8(v4);
}

uint64_t sub_1DAE02980@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  swift_beginAccess();
  return sub_1DAD6E2C8(v1 + v3, a1);
}

uint64_t sub_1DAE029D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  swift_beginAccess();
  sub_1DAD6EA48(a1, v1 + v6);
  swift_endAccess();
  swift_beginAccess();
  v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
  v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity + 8);
  sub_1DAD6E2C8(v1 + v6, v5);

  sub_1DAEBFFF4(v7, v8, v5);

  sub_1DAE03300(a1);
  return sub_1DAE03300(v5);
}

uint64_t (*sub_1DAE02B0C(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  *(v5 + 56) = v7;
  *(v5 + 64) = v8;
  swift_beginAccess();
  return sub_1DAE02BD8;
}

void sub_1DAE02BD8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[7];
  if ((a2 & 1) == 0)
  {
    v5 = v3[8];
    v6 = v3[6];
    swift_beginAccess();
    v7 = *(v6 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
    v8 = *(v6 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity + 8);
    sub_1DAD6E2C8(v6 + v5, v4);

    sub_1DAEBFFF4(v7, v8, v4);

    sub_1DAE03300(v4);
  }

  free(v4);

  free(v3);
}

uint64_t InProcessWidgetInstanceViewModel.__allocating_init(widgetInstance:)(uint64_t a1)
{
  v2 = sub_1DAECDD3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  v8 = sub_1DAECE55C();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = (v6 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
  sub_1DAECDD2C();
  v10 = sub_1DAECDCFC();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  *v9 = v10;
  v9[1] = v12;
  *(v6 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver) = 0;
  *(v6 + 16) = a1;

  sub_1DAE0308C();

  return v6;
}

uint64_t InProcessWidgetInstanceViewModel.init(widgetInstance:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECDD3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  v9 = sub_1DAECE55C();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  v10 = (v2 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
  sub_1DAECDD2C();
  v11 = sub_1DAECDCFC();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  *v10 = v11;
  v10[1] = v13;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver) = 0;
  *(v2 + 16) = a1;

  sub_1DAE0308C();

  return v2;
}

uint64_t InProcessWidgetInstanceViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver))
  {

    sub_1DAECEE2C();
  }

  *(v0 + v1) = 0;

  sub_1DAE03300(v0 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility);

  return v0;
}

uint64_t InProcessWidgetInstanceViewModel.__deallocating_deinit()
{
  InProcessWidgetInstanceViewModel.deinit();

  return swift_deallocClassInstance();
}

double sub_1DAE0308C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver))
  {

    sub_1DAECEE2C();
  }

  swift_beginAccess();
  type metadata accessor for InProcessWidgetInstance(0);
  sub_1DAE03528(&qword_1ECC08AC8, type metadata accessor for InProcessWidgetInstance, &protocol conformance descriptor for InProcessWidgetInstance);

  sub_1DAECEE4C();

  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1DAE03570;
  *(v4 + 24) = v3;
  sub_1DAECEEDC();
  v5 = sub_1DAECF00C();

  *(v1 + v2) = v5;

  return result;
}

double sub_1DAE0320C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for InProcessWidgetInstanceViewModel(0);
    sub_1DAE03528(&qword_1ECC08AA0, type metadata accessor for InProcessWidgetInstanceViewModel, &protocol conformance descriptor for InProcessWidgetInstanceViewModel);
    sub_1DAECEE4C();

    sub_1DAECEEBC();
  }

  return result;
}

uint64_t sub_1DAE032C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InProcessWidgetInstanceViewModel(0);
  result = sub_1DAECEE4C();
  *a2 = result;
  return result;
}

uint64_t sub_1DAE03300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAE03370(uint64_t a1)
{
  sub_1DAD8D568(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DAE03528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAE035C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAE0396C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1DAE03724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 88) + **(a5 + 88));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DAE03864;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1DAE03864()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void InProcessWidgetInstanceView.init(viewModel:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DAECDD3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = 0;
  sub_1DAED076C();
  v8 = v15;
  *(a2 + 40) = v14[0];
  *(a2 + 48) = v8;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  sub_1DAECDD2C();
  v9 = sub_1DAECDCFC();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  type metadata accessor for InProcessWidgetInstanceViewModel(0);
  sub_1DAE05F8C(&qword_1ECC08AA0, type metadata accessor for InProcessWidgetInstanceViewModel, &protocol conformance descriptor for InProcessWidgetInstanceViewModel);

  *a2 = sub_1DAECF21C();
  *(a2 + 8) = v12;
  swift_beginAccess();
  v13 = *(a1 + 16);

  *(a2 + 56) = v13;
}

void InProcessWidgetInstanceView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v123 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AD0, &qword_1DAED76A0);
  MEMORY[0x1EEE9AC00](v118);
  v122 = &v90 - v3;
  v4 = sub_1DAECF90C();
  v92 = *(v4 - 8);
  v93 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AD8, &qword_1DAED76A8);
  MEMORY[0x1EEE9AC00](v112);
  v94 = &v90 - v6;
  v98 = type metadata accessor for LiveWidgetEntryView(0);
  MEMORY[0x1EEE9AC00](v98);
  v124 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v90 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v90 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AE0, &qword_1DAED76B0);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v90 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AE8, &qword_1DAED76B8);
  MEMORY[0x1EEE9AC00](v105);
  v127 = &v90 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AF0, &qword_1DAED76C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v104 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v90 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AF8, &qword_1DAED76C8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v90 - v18;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B00, &qword_1DAED76D0);
  v111 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v109 = &v90 - v19;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B08, &qword_1DAED76D8);
  v113 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v110 = &v90 - v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B10, &qword_1DAED76E0);
  MEMORY[0x1EEE9AC00](v107);
  v116 = &v90 - v21;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B18, &qword_1DAED76E8);
  MEMORY[0x1EEE9AC00](v114);
  v121 = &v90 - v22;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B20, &qword_1DAED76F0);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v90 - v23;
  v24 = sub_1DAECE4EC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2[1];
  v132 = *v2;
  v133 = v28;
  v29 = v2[3];
  v134 = v2[2];
  v135 = v29;
  v136 = v2[4];
  v30 = *(&v132 + 1);
  swift_beginAccess();
  v31 = *(v30 + 16);
  v32 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  swift_beginAccess();
  v33 = *(v25 + 16);
  v33(v27, v31 + v32, v24);

  v34 = sub_1DAECE4DC();
  v126 = *(v25 + 8);
  v126(v27, v24);
  [v34 _rawEffectiveSize];

  v125 = v30;
  if (!*(*(v30 + 16) + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel))
  {
    __break(1u);
    goto LABEL_15;
  }

  v97 = v33;
  v33(v27, v31 + v32, v24);

  v35 = sub_1DAECE4BC();
  v36 = v24;
  v126(v27, v24);
  v37 = [v35 family];

  v38 = sub_1DAE9BAB0(v37);

  v39 = v136;
  v96 = v36;
  if (v136)
  {
    v40 = 1;
  }

  else
  {
    if (!*(v31 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel))
    {
LABEL_16:
      __break(1u);
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1DAECEF3C();

    v40 = LOBYTE(v128[0]);
  }

  LODWORD(v126) = v38;
  v95 = v31;
  v41 = v124;
  v42 = v125;
  v43 = *(*(v125 + 16) + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);
  if (!v43)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v44 = *(&v136 + 1);
  *&v129 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09AF0, &unk_1DAED7740);
  sub_1DAED076C();
  *(v41 + 16) = v128[0];
  *&v129 = 0;
  sub_1DAED076C();
  *(v41 + 32) = v128[0];
  *(v41 + 48) = 0;
  *(v41 + 56) = 0;
  v45 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v46 = *(v98 + 36);
  v47 = sub_1DAECEDEC();
  (*(*(v47 - 8) + 16))(v41 + v46, v43 + v45, v47);
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAE05F8C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel, &protocol conformance descriptor for LiveWidgetEntryViewModel);
  *v41 = sub_1DAECF21C();
  *(v41 + 8) = v48;
  v98 = v44;
  v49 = v100;
  if (v44)
  {
    sub_1DAD76078(v41, v100);
    sub_1DAE04A14(&v132, v128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B58, &qword_1DAEDA160);
    sub_1DAD78E78();
    v50 = sub_1DAED087C();
    sub_1DAE06038(v41);

    *(v49 + 56) = v50;
  }

  else
  {
    sub_1DAE05FD4(v41, v100);
  }

  v51 = v101;
  LODWORD(v124) = v40;
  sub_1DAD76078(v49, v101);
  *(v51 + 48) = v39;
  sub_1DAE06038(v49);
  v52 = *(v42 + 16);
  v53 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  swift_beginAccess();
  v54 = v102;
  v97(&v102[*(v99 + 52)], v52 + v53, v96);
  sub_1DAE05FD4(v51, v54);
  sub_1DAED091C();
  sub_1DAECF15C();
  v55 = v127;
  sub_1DAD7C48C(v54, v127, &qword_1ECC08AE0, &qword_1DAED76B0);
  v56 = (v55 + *(v105 + 36));
  v57 = v130;
  *v56 = v129;
  v56[1] = v57;
  v56[2] = v131;
  if (v126)
  {
    sub_1DAD6495C(v55, v122, &qword_1ECC08AE8, &qword_1DAED76B8);
    swift_storeEnumTagMultiPayload();
    sub_1DAE06094();
    sub_1DAE06120();
    v58 = v104;
    sub_1DAECFB1C();
  }

  else
  {
    (*(v92 + 104))(v91, *MEMORY[0x1E697F3A0], v93);
    v59 = v94;
    sub_1DAECFB4C();
    sub_1DAECFB3C();
    sub_1DAD6495C(v55, v59, &qword_1ECC08AE8, &qword_1DAED76B8);
    sub_1DAD6495C(v59, v122, &qword_1ECC08AD8, &qword_1DAED76A8);
    swift_storeEnumTagMultiPayload();
    sub_1DAE06094();
    sub_1DAE06120();
    v58 = v104;
    sub_1DAECFB1C();
    v55 = v127;
    sub_1DAD64398(v59, &qword_1ECC08AD8, &qword_1DAED76A8);
  }

  v60 = v121;
  v61 = v119;
  v62 = v117;
  v63 = v98 == 0;
  sub_1DAD64398(v55, &qword_1ECC08AE8, &qword_1DAED76B8);
  v64 = v103;
  sub_1DAD7C48C(v58, v103, &qword_1ECC08AF0, &qword_1DAED76C0);
  v65 = v64;
  v66 = v106;
  sub_1DAD7C48C(v65, v106, &qword_1ECC08AF0, &qword_1DAED76C0);
  v67 = v108;
  v68 = v66 + *(v108 + 36);
  *v68 = v95;
  *(v68 + 8) = v124;
  *(v68 + 9) = v63;
  v69 = sub_1DAE061D8();

  v70 = v109;
  sub_1DAED054C();
  sub_1DAD64398(v66, &qword_1ECC08AF8, &qword_1DAED76C8);
  v71 = swift_allocObject();
  v72 = v135;
  v71[3] = v134;
  v71[4] = v72;
  v71[5] = v136;
  v73 = v133;
  v71[1] = v132;
  v71[2] = v73;
  sub_1DAE0634C(&v132, v128);
  *&v128[0] = v67;
  *(&v128[0] + 1) = v69;
  swift_getOpaqueTypeConformance2();
  v74 = v110;
  v75 = v115;
  sub_1DAED045C();

  (*(v111 + 8))(v70, v75);
  v76 = swift_allocObject();
  v77 = v135;
  *(v76 + 3) = v134;
  *(v76 + 4) = v77;
  *(v76 + 5) = v136;
  v78 = v133;
  *(v76 + 1) = v132;
  *(v76 + 2) = v78;
  v79 = v116;
  (*(v113 + 32))(v116, v74, v62);
  v80 = (v79 + *(v107 + 36));
  *v80 = sub_1DAE06384;
  v80[1] = v76;
  v80[2] = 0;
  v80[3] = 0;
  v81 = swift_allocObject();
  v82 = v135;
  v81[3] = v134;
  v81[4] = v82;
  v81[5] = v136;
  v83 = v133;
  v81[1] = v132;
  v81[2] = v83;
  sub_1DAD7C48C(v79, v60, &qword_1ECC08B10, &qword_1DAED76E0);
  v84 = (v60 + *(v114 + 36));
  *v84 = 0;
  v84[1] = 0;
  v84[2] = sub_1DAE063B8;
  v84[3] = v81;
  v85 = *(&v135 + 1);
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  v87 = v132;
  *(v86 + 40) = v133;
  v88 = v135;
  *(v86 + 56) = v134;
  *(v86 + 72) = v88;
  *(v86 + 88) = v136;
  *(v86 + 24) = v87;
  sub_1DAD7C48C(v60, v61, &qword_1ECC08B18, &qword_1DAED76E8);
  v89 = (v61 + *(v120 + 36));
  *v89 = v85;
  v89[1] = sub_1DAE063EC;
  v89[2] = v86;
  sub_1DAD7C48C(v61, v123, &qword_1ECC08B20, &qword_1DAED76F0);
  sub_1DAE0634C(&v132, v128);
  sub_1DAE0634C(&v132, v128);

  sub_1DAE0634C(&v132, v128);
}

void *sub_1DAE04A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DAECE4EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005DC0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DAECEDEC();
  __swift_project_value_buffer(v8, qword_1EE011658);
  sub_1DAE0634C(a1, v29);
  v9 = sub_1DAECEDCC();
  v10 = sub_1DAED203C();
  sub_1DAE06858(a1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v11 = 136446210;
    v12 = *(a1 + 8);
    swift_beginAccess();
    v13 = *(v12 + 16);
    v14 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
    swift_beginAccess();
    (*(v5 + 16))(v7, v13 + v14, v4);
    v15 = sub_1DAECE4BC();
    (*(v5 + 8))(v7, v4);
    v16 = [v15 extensionBundleIdentifier];

    v17 = sub_1DAED1CEC();
    v19 = v18;

    v20 = sub_1DAD6482C(v17, v19, &v27);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_1DAD61000, v9, v10, "Invoking background block on LiveWidgetEntryView for %{public}s", v11, 0xCu);
    v21 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1E127F100](v21, -1, -1);
    MEMORY[0x1E127F100](v11, -1, -1);
  }

  if (*(a1 + 72))
  {
    v25 = *(a1 + 72);
    v26 = 0;
  }

  else
  {
    v25 = sub_1DAED064C();
    v26 = 1;
  }

  result = sub_1DAECFB1C();
  v23 = v28;
  *a2 = v27;
  *(a2 + 8) = v23;
  return result;
}

uint64_t sub_1DAE04D0C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  if (qword_1EE005E38 != -1)
  {
    swift_once();
  }

  v4 = sub_1DAECEDEC();
  __swift_project_value_buffer(v4, qword_1EE011730);
  v5 = sub_1DAECEDCC();
  v6 = sub_1DAED203C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DAD61000, v5, v6, "Tap gesture received, firing unspecified launch request.", v7, 2u);
    MEMORY[0x1E127F100](v7, -1, -1);
  }

  swift_beginAccess();
  v8 = sub_1DAECDBFC();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);

  sub_1DAEBE4E8(v3);

  return sub_1DAD64398(v3, &unk_1ECC09EC0, &qword_1DAED7970);
}

double sub_1DAE04ED0(uint64_t a1, char a2, void (*a3)())
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BB8, &unk_1DAED7960);
  sub_1DAED078C();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08720, &qword_1DAED6E70);
  sub_1DAED077C();
  a3();

  return result;
}

uint64_t sub_1DAE04FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BB8, &unk_1DAED7960);
  sub_1DAED077C();
  if (v4 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08720, &qword_1DAED6E70);
    sub_1DAED077C();
    sub_1DAEBF184(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08720, &qword_1DAED6E70);
  sub_1DAED077C();
  sub_1DAEBF8E4(v4, v5);
}

void InProcessWidgetInstanceView.customBackgroundView<A>(isEnabled:background:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = v5[3];
  v17[2] = v5[2];
  v17[3] = v8;
  v17[4] = v5[4];
  v9 = v5[1];
  v17[0] = *v5;
  v17[1] = v9;
  v11 = v5[3];
  v7[2] = v5[2];
  v7[3] = v11;
  v7[4] = v5[4];
  v12 = v5[1];
  *v7 = *v5;
  v7[1] = v12;
  if (v10)
  {
    v13 = v7;
    v14 = sub_1DAE0634C(v17, v16);
    a2(v14);
    v15 = sub_1DAED087C();

    *(v13 + 9) = v15;
  }

  else
  {
    sub_1DAE0634C(v17, v16);
  }
}

uint64_t InProcessWidgetInstanceView.clippedToShape(_:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v11 = v2[2];
  v3 = v11;
  v12 = v4;
  v13 = v2[4];
  v5 = v13;
  v6 = v2[1];
  v10[0] = *v2;
  v7 = v10[0];
  v10[1] = v6;
  a2[3] = v4;
  a2[4] = v5;
  a2[1] = v6;
  a2[2] = v3;
  *a2 = v7;
  *(a2 + 64) = a1;
  return sub_1DAE0634C(v10, &v9);
}

void *sub_1DAE05230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v41 = a3;
  v44 = a1;
  v47 = a4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B88, &qword_1DAED7938);
  v43 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v42 = &v40 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B90, &qword_1DAED7940);
  MEMORY[0x1EEE9AC00](v46);
  v7 = (&v40 - v6);
  v40 = sub_1DAECE4EC();
  v8 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B98, &qword_1DAED7948);
  v11 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v40 - v12;
  v14 = sub_1DAECE69C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
  swift_beginAccess();
  (*(v15 + 16))(v17, a2 + v18, v14);
  v19 = sub_1DAECE59C();
  (*(v15 + 8))(v17, v14);
  v20 = [v19 renderingMode];

  if (v20 == 1)
  {
    v21 = v45;
    (*(v11 + 16))(v13, v44, v45);
    v22 = sub_1DAD64B94(&qword_1ECC08BB0, &qword_1ECC08B98, &qword_1DAED7948, MEMORY[0x1E697FDF8]);
    v23 = sub_1DAED087C();
    v24 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
    swift_beginAccess();
    v25 = v40;
    (*(v8 + 16))(v10, a2 + v24, v40);
    v26 = sub_1DAECE4DC();
    (*(v8 + 8))(v10, v25);
    [v26 _rawEffectiveSize];
    v28 = v27;
    v30 = v29;

    *v7 = v23;
    v7[1] = v28;
    v7[2] = v30;
    v7[3] = 0x3FE0000000000000;
    swift_storeEnumTagMultiPayload();
    sub_1DAE06804();
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08BA8, &unk_1DAED7950);
    v49 = v21;
    v50 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v31;
    v50 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    return sub_1DAECFB1C();
  }

  else
  {
    v34 = v42;
    sub_1DAE05808(v44, a2, v41 & 0x101, v42);
    v35 = v43;
    v36 = v48;
    (*(v43 + 16))(v7, v34, v48);
    swift_storeEnumTagMultiPayload();
    sub_1DAE06804();
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08BA8, &unk_1DAED7950);
    v38 = sub_1DAD64B94(&qword_1ECC08BB0, &qword_1ECC08B98, &qword_1DAED7948, MEMORY[0x1E697FDF8]);
    v51 = v45;
    v52 = v38;
    v39 = swift_getOpaqueTypeConformance2();
    v51 = v37;
    v52 = v39;
    swift_getOpaqueTypeConformance2();
    sub_1DAECFB1C();
    return (*(v35 + 8))(v34, v36);
  }
}

uint64_t sub_1DAE05808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v65 = a1;
  v72 = a4;
  v5 = sub_1DAECE4EC();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v12 = sub_1DAECE69C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v57 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BA8, &unk_1DAED7950);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v73 = &v57 - v23;
  v24 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
  swift_beginAccess();
  v25 = *(v13 + 16);
  v25(v22, a2 + v24, v12);
  v58 = sub_1DAECE5AC();
  v26 = *(v13 + 8);
  v26(v22, v12);
  v74 = a2;
  v62 = v25;
  v25(v19, a2 + v24, v12);
  v27 = v11;
  sub_1DAECE66C();
  v59 = v26;
  v26(v19, v12);
  v28 = v61;
  if (v61)
  {
    v29 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
    v30 = v74;
    swift_beginAccess();
    v31 = v69;
    v32 = *(v69 + 16);
    v33 = v30 + v29;
    v34 = v68;
    v60 = v11;
    v35 = v70;
    v32(v68, v33, v70);
    v36 = sub_1DAECE4DC();
    v27 = v60;
    (*(v31 + 8))(v34, v35);
    [v36 _effectiveCornerRadius];
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B98, &qword_1DAED7948);
  v38 = sub_1DAD64B94(&qword_1ECC08BB0, &qword_1ECC08B98, &qword_1DAED7948, MEMORY[0x1E697FDF8]);
  v39 = v58;
  v60 = v37;
  v57 = v38;
  sub_1DAED037C();

  sub_1DAD64398(v27, &qword_1ECC08370, &unk_1DAED6580);
  v40 = v74;
  v41 = v63;
  v42 = v62;
  v62(v63, v74 + v24, v12);
  v43 = sub_1DAECE5AC();
  v44 = v59;
  v59(v41, v12);
  v45 = v64;
  v42(v64, v40 + v24, v12);
  v46 = v71;
  sub_1DAECE66C();
  v44(v45, v12);
  if (v28)
  {
    v47 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
    v48 = v74;
    swift_beginAccess();
    v50 = v69;
    v49 = v70;
    v51 = v48 + v47;
    v52 = v68;
    (*(v69 + 16))(v68, v51, v70);
    v53 = sub_1DAECE4DC();
    (*(v50 + 8))(v52, v49);
    [v53 _effectiveCornerRadius];
  }

  v75 = v60;
  v76 = v57;
  swift_getOpaqueTypeConformance2();
  v54 = v73;
  v55 = v67;
  sub_1DAED038C();

  sub_1DAD64398(v46, &qword_1ECC08370, &unk_1DAED6580);
  return (*(v66 + 8))(v54, v55);
}

void *sub_1DAE05E78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1DAE05230(a1, *v2, v3 | *(v2 + 8), a2);
}

void sub_1DAE05E98(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v3;
}

uint64_t sub_1DAE05F18(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE05F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAE05FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveWidgetEntryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE06038(uint64_t a1)
{
  v2 = type metadata accessor for LiveWidgetEntryView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAE06094()
{
  result = qword_1ECC08B28;
  if (!qword_1ECC08B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08AD8, &qword_1DAED76A8);
    sub_1DAE06120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B28);
  }

  return result;
}

unint64_t sub_1DAE06120()
{
  result = qword_1ECC08B30;
  if (!qword_1ECC08B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08AE8, &qword_1DAED76B8);
    sub_1DAD64B94(&qword_1ECC08B38, &qword_1ECC08AE0, &qword_1DAED76B0, MEMORY[0x1E6981810]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B30);
  }

  return result;
}

unint64_t sub_1DAE061D8()
{
  result = qword_1ECC08B40;
  if (!qword_1ECC08B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08AF8, &qword_1DAED76C8);
    sub_1DAE06264();
    sub_1DAE062F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B40);
  }

  return result;
}

unint64_t sub_1DAE06264()
{
  result = qword_1ECC08B48;
  if (!qword_1ECC08B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08AF0, &qword_1DAED76C0);
    sub_1DAE06094();
    sub_1DAE06120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B48);
  }

  return result;
}

unint64_t sub_1DAE062F0()
{
  result = qword_1ECC08B50;
  if (!qword_1ECC08B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B50);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1DAE06430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DAE06478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAE064DC()
{
  result = qword_1ECC08B60;
  if (!qword_1ECC08B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B20, &qword_1DAED76F0);
    sub_1DAE06594();
    sub_1DAD64B94(&qword_1ECC08B78, &qword_1ECC08B80, &qword_1DAED7820, MEMORY[0x1E697FB68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B60);
  }

  return result;
}

unint64_t sub_1DAE06594()
{
  result = qword_1ECC08B68;
  if (!qword_1ECC08B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B18, &qword_1DAED76E8);
    sub_1DAE06620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B68);
  }

  return result;
}

unint64_t sub_1DAE06620()
{
  result = qword_1ECC08B70;
  if (!qword_1ECC08B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B10, &qword_1DAED76E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B00, &qword_1DAED76D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08AF8, &qword_1DAED76C8);
    sub_1DAE061D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B70);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1DAE06750(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1DAE06798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAE06804()
{
  result = qword_1ECC08BA0;
  if (!qword_1ECC08BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08BA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _RenderEffectsContext(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for _RenderEffectsContext(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1DAE069F8()
{
  result = qword_1ECC08BC0;
  if (!qword_1ECC08BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08BC8, &qword_1DAED79A8);
    sub_1DAE06804();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08BA8, &unk_1DAED7950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B98, &qword_1DAED7948);
    sub_1DAD64B94(&qword_1ECC08BB0, &qword_1ECC08B98, &qword_1DAED7948, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08BC0);
  }

  return result;
}

uint64_t static ActivityRendererSessionKey.mock(extensionBundleIdentifier:containerBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECDD3C();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BD0, &qword_1DAED79B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 16))(&v29 - v18, a1, v17);
  sub_1DAE070F0(a2, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v12, 1, v20) == 1)
  {
    sub_1DAECE24C();
    if (v22(v12, 1, v20) != 1)
    {
      sub_1DAE07160(v12);
    }
  }

  else
  {
    (*(v21 + 32))(v15, v12, v20);
  }

  sub_1DAED21EC();
  (*(v21 + 56))(v15, 0, 1, v20);
  v23 = sub_1DAED21DC();
  sub_1DAED0E6C();
  type metadata accessor for ActivityRendererSessionKey(0);
  v24 = swift_allocObject();
  sub_1DAECDD2C();
  v25 = sub_1DAECDCFC();
  v27 = v26;

  (*(v31 + 8))(v6, v32);
  *(v24 + 16) = v25;
  *(v24 + 24) = v27;
  (*(v7 + 32))(v24 + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v9, v30);
  return v24;
}

uint64_t static ActivityRendererSessionKey.mock(extensionIdentity:)(uint64_t a1)
{
  v1 = sub_1DAECDD3C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  sub_1DAED0E6C();
  type metadata accessor for ActivityRendererSessionKey(0);
  v9 = swift_allocObject();
  sub_1DAECDD2C();
  v10 = sub_1DAECDCFC();
  v12 = v11;
  (*(v2 + 8))(v4, v1);
  *(v9 + 16) = v10;
  *(v9 + 24) = v12;
  (*(v6 + 32))(v9 + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v8, v5);
  return v9;
}

uint64_t sub_1DAE070F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BD0, &qword_1DAED79B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE07160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BD0, &qword_1DAED79B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for WidgetRendererServiceXPCDefinition(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WidgetRendererServiceXPCDefinition(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1DAE072E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECE85C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v13 = v1;
  sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v8 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1DAE091A0(&qword_1ECC08C50, MEMORY[0x1E6989BC0], MEMORY[0x1E6989BC8]);
  v9 = sub_1DAED1CAC();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    v10 = sub_1DAE4B018();
    sub_1DADEC9C4(v10);
  }

  swift_beginAccess();
  (*(v5 + 40))(v2 + v8, a1, v4);
  return swift_endAccess();
}

void (*sub_1DAE074FC(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1DAECE85C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1DAE07654;
}

void sub_1DAE07654(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1DAE072E0(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1DAE072E0(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1DAE07700@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v5 = sub_1DAECE85C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1DAE077F8(uint64_t a1)
{
  v2 = sub_1DAECE85C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1DAE07A08(v5);
}

uint64_t sub_1DAE078C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v3 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v4 = sub_1DAECE85C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t type metadata accessor for InProcessJindoActivityInstance(uint64_t a1)
{
  result = qword_1ECC08C60;
  if (!qword_1ECC08C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE07A08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECE85C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1DAE091A0(&qword_1ECC08C50, MEMORY[0x1E6989BC0], MEMORY[0x1E6989BC8]);
  LOBYTE(v8) = sub_1DAED1CAC();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v8)
  {
    v9(v7, a1, v4);
    sub_1DAE072E0(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[2] = v2;
    sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1DAE07C70(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DAECE85C();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2, v4);
  return sub_1DAE072E0(v6);
}

uint64_t (*sub_1DAE07D60(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1DAECDF1C();

  v4[7] = sub_1DAE074FC(v4);
  return sub_1DAE07E98;
}

void sub_1DAE07E98(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1DAECDF0C();

  free(v1);
}

uint64_t InProcessJindoActivityInstance.__allocating_init(identity:metricsRequest:contentConfiguration:)(uint64_t a1, void *a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1DAE0848C(a1, a2, a3);

  return v6;
}

uint64_t InProcessJindoActivityInstance.init(identity:metricsRequest:contentConfiguration:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1DAE0848C(a1, a2, a3);

  return v4;
}

uint64_t InProcessJindoActivityInstance.__allocating_init(identity:jindoState:metricsRequest:contentConfiguration:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1DAE08B74(a1, a2, a3, a4);

  return v8;
}

uint64_t InProcessJindoActivityInstance.init(identity:jindoState:metricsRequest:contentConfiguration:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = sub_1DAE08B74(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_1DAE0805C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  v2 = sub_1DAECE85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance___observationRegistrar;
  v4 = sub_1DAECDF3C();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t InProcessJindoActivityInstance.deinit()
{
  v0 = InProcessActivityInstanceBase.deinit();
  v1 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  v2 = sub_1DAECE85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance___observationRegistrar;
  v4 = sub_1DAECDF3C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t InProcessJindoActivityInstance.__deallocating_deinit()
{
  v0 = InProcessActivityInstanceBase.deinit();
  v1 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  v2 = sub_1DAECE85C();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance___observationRegistrar;
  v5 = sub_1DAECDF3C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE082B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v5 = sub_1DAECE85C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t (*sub_1DAE083D0(uint64_t **a1))()
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
  v2[4] = sub_1DAE07D60(v2);
  return sub_1DAE08444;
}

void sub_1DAE08444(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1DAE0848C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v63 = a1;
  v5 = *v3;
  v52 = a2;
  v53 = v5;
  v6 = sub_1DAECDE4C();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1DAECE83C();
  v55 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DAECEDEC();
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECDF2C();
  v13 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  v14 = *MEMORY[0x1E6989BA0];
  v15 = sub_1DAECE85C();
  (*(*(v15 - 8) + 104))(v4 + v13, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
  v16 = sub_1DAED182C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DAED7A10;
  v51 = v20;
  v21 = (v20 + v19);
  *v21 = 1;
  v22 = *MEMORY[0x1E6985910];
  v23 = *(v17 + 104);
  v23(v21, v22, v16);
  v21[v18] = 2;
  v23(&v21[v18], v22, v16);
  v21[2 * v18] = 3;
  v23(&v21[2 * v18], v22, v16);
  v21[3 * v18] = 0;
  v23(&v21[3 * v18], v22, v16);
  if (qword_1EE005E18 != -1)
  {
    swift_once();
  }

  v24 = v64;
  v25 = __swift_project_value_buffer(v64, qword_1EE011700);
  v26 = *(v59 + 16);
  v27 = v12;
  v50 = v12;
  v26(v12, v25, v24);
  v28 = v55;
  v29 = *(v55 + 16);
  v30 = v61;
  v29(v60, v63, v61);
  v31 = v58;
  sub_1DADEAD64(v62, v58);
  v32 = v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 1;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__backgroundTintColor) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__textColor) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) = 0;
  v33 = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___cancellables) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08658, &qword_1DAED6B20);
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher) = sub_1DAECEE7C();
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) = 0;
  sub_1DAECDF2C();
  v26((v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__logger), v27, v64);
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags) = v51;
  v34 = v60;
  v29((v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity), v60, v30);
  v35 = v52;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest) = v52;
  sub_1DADEAD64(v31, v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration);
  v36 = (v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  *v36 = 0x796D6D7564;
  v36[1] = 0xE500000000000000;
  v65 = v4;
  v37 = v35;
  v38 = sub_1DAED29CC();
  v40 = v39;
  v65 = v53;
  swift_getMetatypeMetadata();
  v65 = sub_1DAED1D4C();
  v66 = v41;
  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  v42 = v54;
  sub_1DAECE81C();
  v43 = sub_1DAECDE3C();
  v45 = v44;
  (*(v56 + 8))(v42, v57);
  MEMORY[0x1E127DA50](v43, v45);

  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  MEMORY[0x1E127DA50](v38, v40);

  sub_1DADEC6F8(v65, v66);
  sub_1DADEAF80(v62);
  v46 = *(v28 + 8);
  v47 = v61;
  v46(v63, v61);
  sub_1DADEAF80(v31);
  v46(v34, v47);
  (*(v59 + 8))(v50, v64);
  return v4;
}

uint64_t sub_1DAE08B74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v61 = a1;
  v7 = *v4;
  v54 = a3;
  v55 = v7;
  v8 = sub_1DAECDE4C();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1DAECE83C();
  v12 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DAECEDEC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECDF2C();
  v19 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  v20 = sub_1DAECE85C();
  v52 = *(v20 - 8);
  v53 = v20;
  (*(v52 + 16))(v5 + v19, a2);
  if (qword_1EE005E18 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v15, qword_1EE011700);
  v22 = *(v16 + 16);
  v47 = v15;
  v22(v18, v21, v15);
  v23 = sub_1DAE4B018();
  v48 = v12;
  v49 = a2;
  v44 = v23;
  v45 = v14;
  v46 = v18;
  v50 = v16;
  v24 = *(v12 + 16);
  v25 = v51;
  v24(v14, v61, v51);
  v26 = v59;
  sub_1DADEAD64(v60, v59);
  v27 = v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__backgroundTintColor) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__textColor) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) = 0;
  v28 = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___cancellables) = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08658, &qword_1DAED6B20);
  swift_allocObject();
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher) = sub_1DAECEE7C();
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) = 0;
  sub_1DAECDF2C();
  v22((v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__logger), v18, v15);
  v29 = v45;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags) = v44;
  v24((v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity), v29, v25);
  v30 = v54;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest) = v54;
  sub_1DADEAD64(v26, v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration);
  v31 = (v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  *v31 = 0x796D6D7564;
  v31[1] = 0xE500000000000000;
  v62 = v5;
  v32 = v30;
  v33 = sub_1DAED29CC();
  v35 = v34;
  v62 = v55;
  swift_getMetatypeMetadata();
  v62 = sub_1DAED1D4C();
  v63 = v36;
  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  v37 = v56;
  sub_1DAECE81C();
  v38 = sub_1DAECDE3C();
  v40 = v39;
  (*(v57 + 8))(v37, v58);
  MEMORY[0x1E127DA50](v38, v40);

  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  MEMORY[0x1E127DA50](v33, v35);

  sub_1DADEC6F8(v62, v63);
  sub_1DADEAF80(v60);
  (*(v52 + 8))(v49, v53);
  v41 = *(v48 + 8);
  v41(v61, v25);
  sub_1DADEAF80(v26);
  v41(v29, v25);
  (*(v50 + 8))(v46, v47);
  return v5;
}

uint64_t sub_1DAE091A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAE091F0(uint64_t a1)
{
  result = sub_1DAECE85C();
  if (v2 <= 0x3F)
  {
    result = sub_1DAECDF3C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_1DAE093BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1DAE09410(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = [*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene) _FBSScene];
  v3 = [v2 settings];

  LODWORD(v2) = [v3 isForeground];
  if (v2)
  {
    if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__needsVCRebuild) & 1) != 0 || !*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController))
    {
      sub_1DAE0A220(0xD00000000000001DLL, 0x80000001DAEE25A0);
    }

    sub_1DAD7CBB4();
  }

  else
  {

    sub_1DAE0A4F0();
  }
}

uint64_t sub_1DAE09500()
{
  v1 = v0;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000017, 0x80000001DAEE24D0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v2 = 0xE300000000000000;
    v3 = 7366009;
  }

  else
  {
    v3 = 1701867374;
    v2 = 0xE400000000000000;
  }

  MEMORY[0x1E127DA50](v3, v2);

  MEMORY[0x1E127DA50](0x61736E617274202CLL, 0xEF203A6E6F697463);
  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction);
  if (v4)
  {
    v5 = 7366009;
  }

  else
  {
    v5 = 1701867374;
  }

  v6 = 0xE300000000000000;
  if (v4)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x1E127DA50](v5, v7);

  MEMORY[0x1E127DA50](0x696C61766E69202CLL, 0xEF203A6465746164);
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__invalidated))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__invalidated))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1E127DA50](v8, v9);

  MEMORY[0x1E127DA50](0x776F646E6977202CLL, 0xEA0000000000203ALL);
  v10 = [*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_window) description];
  v11 = sub_1DAED1CEC();
  v13 = v12;

  MEMORY[0x1E127DA50](v11, v13);

  MEMORY[0x1E127DA50](0xD000000000000018, 0x80000001DAEE24F0);
  v14 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
  if (v14)
  {
    v15 = [v14 description];
    v16 = sub_1DAED1CEC();
    v6 = v17;
  }

  else
  {
    v16 = 7104878;
  }

  MEMORY[0x1E127DA50](v16, v6);

  MEMORY[0x1E127DA50](62, 0xE100000000000000);
  return 0;
}

id sub_1DAE09798()
{
  v1 = *&v0[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = v0;
  v3 = v1;
  v4 = v0;
  sub_1DAED22FC();

  v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__invalidated] = 1;
  v5 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber;
  if (*&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber])
  {

    sub_1DAECEE2C();
  }

  *&v4[v5] = 0;

  v6 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription;
  if (*&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription])
  {

    sub_1DAECEE2C();
  }

  *&v4[v6] = 0;

  v7 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener;
  if (*&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener])
  {

    sub_1DAECEE2C();
  }

  *&v4[v7] = 0;

  v8 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__entryContentTypeChangedListener;
  if (*&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__entryContentTypeChangedListener])
  {

    sub_1DAECEE2C();
  }

  *&v4[v8] = 0;

  v9 = &v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(v4, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction] = 0;

  v12 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController;
  v13 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v13)
  {
    v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x288);
    v15 = v13;
    v14();

    v16 = *&v4[v12];
  }

  else
  {
    v16 = 0;
  }

  *&v4[v12] = 0;
  sub_1DAD7AFA0(v16);

  v17 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_sceneSettingsDiffInspector];

  return [v17 removeAllObservers];
}

void sub_1DAE09A30()
{
  v1 = v0;
  v2 = sub_1DAED09DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0A3C();
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v11)
  {
    v41 = v5;
    v42 = v8;
    v43 = v7;
    v44 = v3;
    v45 = v2;
    v12 = *&v1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
    v13 = v11;
    v14 = [v12 widget];
    v15 = [v14 family];

    v16 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel;
    v17 = *&v13[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
    v18 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
    swift_beginAccess();
    v19 = *(v17 + v18);
    v20 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
    swift_beginAccess();
    v21 = v13[v20];
    v22 = v13;

    LODWORD(v15) = sub_1DAE9BAB0(v15);

    if (v15 == v22[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine])
    {
      if (v19 == v21)
      {
      }

      else
      {
        v38 = *&v13[v16];

        v39 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
        swift_beginAccess();
        LOBYTE(v39) = *(v38 + v39);

        sub_1DADB4574(v39);
      }
    }

    else
    {

      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v23 = sub_1DAECEDEC();
      __swift_project_value_buffer(v23, qword_1EE011748);
      v24 = v1;
      v25 = sub_1DAECEDCC();
      v26 = sub_1DAED203C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        aBlock[0] = v28;
        *v27 = 136446210;
        v30 = *&v24[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v29 = *&v24[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

        v31 = sub_1DAD6482C(v30, v29, aBlock);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_1DAD61000, v25, v26, "[%{public}s] Will invalidate and rebuild view controller due to rendering engine change.", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1E127F100](v28, -1, -1);
        MEMORY[0x1E127F100](v27, -1, -1);
      }

      sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v32 = sub_1DAED20EC();
      v33 = swift_allocObject();
      *(v33 + 16) = v24;
      aBlock[4] = sub_1DAE0C91C;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAD751C0;
      aBlock[3] = &block_descriptor_132_0;
      v34 = _Block_copy(aBlock);
      v35 = v24;

      _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1DAE0C958(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
      sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
      v36 = v41;
      v37 = v45;
      sub_1DAED23CC();
      MEMORY[0x1E127DD70](0, v10, v36, v34);
      _Block_release(v34);

      (*(v44 + 8))(v36, v37);
      (*(v42 + 8))(v10, v43);
    }
  }
}

void sub_1DAE09FA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
    v6 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
    swift_beginAccess();
    sub_1DADB4574(*(v5 + v6));
  }
}

id sub_1DAE0A0A0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DAE0A220(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController;
  v7 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v7)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x288);
    v9 = v7;
    v8();
  }

  if (*&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction])
  {
    v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__needsVCRebuild] = 0;
    v10 = &v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 8))(v3, *&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene], a1, a2, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
    }

    oslog = *&v3[v6];
    *&v3[v6] = v13;
    v23 = v13;
    sub_1DAD7AFA0(oslog);
  }

  else
  {
    v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__needsVCRebuild] = 1;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v14 = sub_1DAECEDEC();
    __swift_project_value_buffer(v14, qword_1EE011748);
    v15 = v3;

    oslog = sub_1DAECEDCC();
    v16 = sub_1DAED203C();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446466;
      v19 = &v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v20 = *&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v21 = *(v19 + 1);

      v22 = sub_1DAD6482C(v20, v21, &v25);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1DAD6482C(a1, a2, &v25);
      _os_log_impl(&dword_1DAD61000, oslog, v16, "[%{public}s] Invalidate view controller for reason: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v18, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);
    }
  }
}

void sub_1DAE0A4F0()
{
  v1 = *&v0[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v1)
  {
    v12 = v1;
    if ([v12 _appearState])
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v2 = sub_1DAECEDEC();
      __swift_project_value_buffer(v2, qword_1EE011748);
      v3 = v0;
      v4 = sub_1DAECEDCC();
      v5 = sub_1DAED203C();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v13 = v7;
        *v6 = 136446210;
        v8 = &v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v9 = *&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v10 = *(v8 + 1);

        v11 = sub_1DAD6482C(v9, v10, &v13);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] Will disappear", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x1E127F100](v7, -1, -1);
        MEMORY[0x1E127F100](v6, -1, -1);
      }

      [v12 beginAppearanceTransition:0 animated:0];
      [v12 endAppearanceTransition];
    }
  }
}

void sub_1DAE0A6D0(void *a1, uint64_t a2, char a3, void *a4)
{
  v7 = [a1 _FBSScene];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3 & 1;
  *(v8 + 32) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1DAE0C9B8;
  *(v9 + 24) = v8;
  v12[4] = sub_1DAE0CA08;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DADB8220;
  v12[3] = &block_descriptor_148;
  v10 = _Block_copy(v12);
  v11 = a4;

  [v7 updateClientSettings_];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void sub_1DAE0A854(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    if (a4)
    {
      v14 = *(a5 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v14)
      {
        v15 = *&v14[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
        v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
        swift_beginAccess();
        sub_1DADC62DC(v15 + v16, v11);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v18 = a1;
        if (!EnumCaseMultiPayload)
        {
          v19 = 2;
LABEL_10:
          v22 = v14;
          sub_1DADC9838();
          v24 = v23;

          sub_1DAD64398(v11, &unk_1ECC07D30, &unk_1DAED57E0);
          [v13 setEntryContentType_];
          if (v24)
          {
            v25 = sub_1DAED1CBC();

LABEL_16:
            [v13 setEntryContentID_];

            return;
          }

LABEL_15:
          v25 = 0;
          goto LABEL_16;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v19 = 1;
          goto LABEL_10;
        }

        sub_1DAD64398(v11, &unk_1ECC07D30, &unk_1DAED57E0);
      }

      else
      {
        v21 = a1;
      }

      a3 = 0;
    }

    else
    {
      v20 = a1;
    }

    [v13 setEntryContentType_];
    goto LABEL_15;
  }
}

void sub_1DAE0AA58(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    v11 = &off_1E85EB000;
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39 = v13;
      *v12 = 136446466;
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v15 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v16 = sub_1DAD6482C(v14, v15, &v39);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = [v8 _FBSScene];
      v18 = [v17 property descriptor for LiveWidgetEntryViewModel.idealizedDateComponentsDidChangePublisher];

      [v18 frame];
      type metadata accessor for CGRect(0);
      v19 = sub_1DAED1D4C();
      v21 = sub_1DAD6482C(v19, v20, &v39);

      *(v12 + 14) = v21;
      v11 = &off_1E85EB000;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget frame changed to: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    v22 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController;
    v23 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (!v23)
    {
      goto LABEL_11;
    }

    v24 = [v23 view];
    if (v24)
    {
      v25 = v24;
      v26 = [v8 v11[429]];
      v27 = [v26 settings];

      [v27 frame];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      [v25 setFrame_];
      v36 = *&v7[v22];
      if (!v36)
      {
LABEL_11:

        return;
      }

      v37 = [v36 view];
      if (v37)
      {
        v38 = v37;
        [v37 setNeedsLayout];

        v7 = v38;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1DAE0ADB0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(unint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE011748);
    v9 = v7;
    v10 = a3;
    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED203C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446466;
      v15 = *&v9[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v16 = *&v9[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v17 = sub_1DAD6482C(v15, v16, &v24);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      [v10 contentType];
      sub_1DAE0C8C0();
      v18 = sub_1DAED237C();
      v20 = sub_1DAD6482C(v18, v19, &v24);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v11, v12, "[%{public}s] Widget content type changed to: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    v21 = sub_1DAD8CE78(v10);
    v22 = &v9[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
    *v22 = v21;
    v22[1] = v23;

    a4(0xD000000000000014, 0x80000001DAEE2580);
  }
}

void sub_1DAE0B010(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5, SEL *a6, const char *a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v36 = a7;
    v16 = a9;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v17 = sub_1DAECEDEC();
    __swift_project_value_buffer(v17, qword_1EE011748);
    v18 = v15;
    v19 = a3;
    v20 = sub_1DAECEDCC();
    v21 = sub_1DAED203C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136446466;
      v35 = a8;
      v24 = a4;
      v25 = *&v18[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v26 = *&v18[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v27 = sub_1DAD6482C(v25, v26, &v37);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2082;
      v28 = [v19 *a6];
      v29 = [v28 description];

      v30 = sub_1DAED1CEC();
      v32 = v31;

      a4 = v24;
      v33 = sub_1DAD6482C(v30, v32, &v37);

      *(v22 + 14) = v33;
      a8 = v35;
      _os_log_impl(&dword_1DAD61000, v20, v21, v36, v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v23, -1, -1);
      v34 = v22;
      v16 = a9;
      MEMORY[0x1E127F100](v34, -1, -1);
    }

    a4(a8, v16);
  }
}

void sub_1DAE0B284(uint64_t a1, uint64_t a2)
{
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE011748);

  oslog = sub_1DAECEDCC();
  v3 = sub_1DAED202C();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v7 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8);
      v9 = Strong;
    }

    else
    {
      v7 = 0x80000001DAEE2560;
      v8 = 0xD000000000000017;
    }

    v10 = sub_1DAD6482C(v8, v7, &v12);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_1DAD61000, oslog, v3, "[%{public}s] Widget configuration identifier changed unexpectedly.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E127F100](v5, -1, -1);
    MEMORY[0x1E127F100](v4, -1, -1);
  }

  else
  {
  }
}

void sub_1DAE0B460(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446466;
      v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v15 = sub_1DAD6482C(v13, v14, &v19);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1026;
      *(v11 + 14) = [v8 shouldVisibleEntrySnapshot];

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget shouldVisibleEntrySnapshot changed to: %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v16 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v16)
    {
      v17 = v16;
      v18 = [v8 shouldVisibleEntrySnapshot];

      v17[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_shouldVisibleEntrySnapshot] = v18;
      v7 = v17;
    }
  }
}

void sub_1DAE0B678(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22[0] = v12;
      *v11 = 136446466;
      v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v15 = sub_1DAD6482C(v13, v14, v22);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1026;
      *(v11 + 14) = [v8 isContentPaused];

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget content paused changed to: %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v16 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v18 = [v8 isContentPaused];
      v19 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
      swift_beginAccess();
      v20 = *(v17 + v19);
      *(v17 + v19) = v18;
      BSDispatchQueueAssertMain();
      if (v20 != *(v17 + v19))
      {
        v21 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
        swift_beginAccess();
        sub_1DAE9C79C(*(v17 + v21) & v20 & 1);
      }
    }

    else
    {
    }
  }
}

void sub_1DAE0B900(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v11 = 136446466;
      v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v15 = sub_1DAD6482C(v13, v14, v29);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = [v8 inlineTextParameters];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 description];

        v19 = sub_1DAED1CEC();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v22 = sub_1DAD6482C(v19, v21, v29);

      *(v11 + 14) = v22;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget inline text parameters changed to: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    v23 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v23)
    {
      v24 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v25 = [v8 inlineTextParameters];
      v26 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
      swift_beginAccess();
      v27 = *(v24 + v26);
      *(v24 + v26) = v25;
      v28 = v25;
      sub_1DAD95EE8(v27);

      v7 = v27;
    }
  }
}

void sub_1DAE0BBD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1DADB48A4();
  }
}

void sub_1DAE0BC28(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21[0] = v12;
      *v11 = 136446466;
      v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v15 = sub_1DAD6482C(v13, v14, v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1026;
      *(v11 + 14) = [v8 prefersUnredactedContentInLowLuminanceEnvironment];

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Show data when locked changed to: %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v16 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v18 = [v8 prefersUnredactedContentInLowLuminanceEnvironment];
      v19 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
      swift_beginAccess();
      v20 = *(v17 + v19);
      *(v17 + v19) = v18;
      sub_1DAD95AA0(v20);
    }
  }
}

void sub_1DAE0BE6C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    if ([a3 wantsBaseContentTouchEvents])
    {
      v6 = [*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene) _FBSScene];
      v7 = swift_allocObject();
      *(v7 + 16) = isEscapingClosureAtFileLocation;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1DAE0C8B8;
      *(v8 + 24) = v7;
      aBlock[4] = sub_1DADB8C1C;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DADB8220;
      aBlock[3] = &block_descriptor_97;
      v9 = _Block_copy(aBlock);
      v10 = isEscapingClosureAtFileLocation;

      [v6 updateClientSettings_];

      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

void sub_1DAE0C030(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(a3 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v7 = a1;

      sub_1DAECEF3C();

      v8 = v10;
    }

    else
    {
      v9 = a1;
      v8 = 0;
    }

    [v6 setBaseContentTouchedDown_];
  }
}

void sub_1DAE0C124(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 renderingScale];
    v6 = *&v5[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v7 >= 0.0)
    {
      if (v6)
      {

        [a3 renderingScale];
        swift_getKeyPath();
        swift_getKeyPath();
        goto LABEL_7;
      }
    }

    else if (v6)
    {
      swift_getKeyPath();
      swift_getKeyPath();

LABEL_7:
      sub_1DAECEF4C();
    }
  }
}

void sub_1DAE0C37C(void *a1, void *a2, void *a3, id a4)
{
  if (a4)
  {
    v9 = [a4 actions];
    if (v9)
    {
      v10 = v9;
      sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
      sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0, MEMORY[0x1E69E81B8]);
      v11 = sub_1DAED1F6C();

      v12 = sub_1DADAF3F0(v11);

      if (v12)
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();

        if (v13)
        {
          if (qword_1EE005E48 != -1)
          {
            swift_once();
          }

          v14 = sub_1DAECEDEC();
          __swift_project_value_buffer(v14, qword_1EE011748);
          v30 = v4;
          v15 = v4;
          v16 = sub_1DAECEDCC();
          v17 = sub_1DAED203C();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            v32 = v19;
            *v18 = 136446210;
            v29 = v15;
            v21 = *&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
            v20 = *&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

            v22 = sub_1DAD6482C(v21, v20, &v32);
            v15 = v29;

            *(v18 + 4) = v22;
            _os_log_impl(&dword_1DAD61000, v16, v17, "[%{public}s] Received launch request", v18, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v19);
            MEMORY[0x1E127F100](v19, -1, -1);
            MEMORY[0x1E127F100](v18, -1, -1);
          }

          v23 = *&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
          v4 = v30;
          if (v23)
          {
            v24 = v23;
            sub_1DAEA0A10();
            v4 = v30;
          }
        }
      }
    }
  }

  if (a2)
  {
    if (a3)
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v26 = a3;
      }
    }

    else
    {
      v25 = 0;
    }

    if (a1)
    {
      v27 = a2;
      v28 = [a1 settings];
      objc_opt_self();
      v31 = [objc_allocWithZone(MEMORY[0x1E6994558]) initWithPreviousSettings:v25 currentSettings:swift_dynamicCastObjCClassUnconditional() transitionContext:a4];

      [*&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_sceneSettingsDiffInspector] inspectDiff:v27 withContext:v31];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t objectdestroy_11Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1DAE0C8C0()
{
  result = qword_1ECC08D00;
  if (!qword_1ECC08D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08D00);
  }

  return result;
}

uint64_t sub_1DAE0C958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAE0CAB4(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer;
  [*(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer) invalidate];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  sub_1DAD64398(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__visibility, &qword_1ECC07CD0, &qword_1DAED6560);

  swift_weakDestroy();
  v4 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logger;
  v5 = sub_1DAECEDEC();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  return v1;
}

uint64_t sub_1DAE0CBA8(uint64_t a1)
{
  sub_1DAE0CAB4(a1);

  return swift_deallocClassInstance();
}

void sub_1DAE0CC08(uint64_t a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated) = 1;
  v3 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator))
  {

    sub_1DAE3A984();
  }

  *(v1 + v3) = 0;

  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer;
  [*(v2 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer) invalidate];
  v5 = *(v2 + v4);
  *(v2 + v4) = 0;

  if (qword_1EE005E60 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAECEDEC();
  __swift_project_value_buffer(v6, qword_1EE011778);

  oslog = sub_1DAECEDCC();
  v7 = sub_1DAED203C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = v2 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier;
    v11 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
    v12 = *(v10 + 8);

    v13 = sub_1DAD6482C(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DAD61000, oslog, v7, "[%{public}s] Visibility controller invalidated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E127F100](v9, -1, -1);
    MEMORY[0x1E127F100](v8, -1, -1);
  }
}

double sub_1DAE0CDF4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v4 = Strong;
  if (*(Strong + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated))
  {

LABEL_4:
    [a1 invalidate];
    return result;
  }

  if (qword_1EE005E60 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAECEDEC();
  __swift_project_value_buffer(v6, qword_1EE011778);

  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED203C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    v11 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
    v12 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier + 8);

    v13 = sub_1DAD6482C(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Staleness timer fired. Evaluating staleness.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E127F100](v10, -1, -1);
    MEMORY[0x1E127F100](v9, -1, -1);
  }

  sub_1DAD6CF04();

  return result;
}

char *sub_1DAE0CFD0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D50, &unk_1DAED7DC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1DAECEB5C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1DAECFF0C() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_1DAD64398(v8, &qword_1ECC08D50, &unk_1DAED7DC0);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1DAEB2070(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1DAEB2070((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

void *sub_1DAE0D2FC(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = (v6)(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x1E127DAD0](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DAED1E9C();
      }

      result = sub_1DAED1EBC();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

id sub_1DAE0D440(uint64_t a1, uint64_t a2, char a3)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setBaseContentTouchedDown_];
  }

  return result;
}

void *sub_1DAE0D4A8(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20[-v7];
  if (a1[1])
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = sub_1DAECDCEC();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    goto LABEL_10;
  }

  v12 = *a1;
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v13 = sub_1DAECEDEC();
  __swift_project_value_buffer(v13, qword_1EE011748);
  v14 = sub_1DAECEDCC();
  v15 = sub_1DAED203C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    *(v16 + 4) = v12;
    _os_log_impl(&dword_1DAD61000, v14, v15, "New value set for 'overrideDate': %{public}f", v16, 0xCu);
    MEMORY[0x1E127F100](v16, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_1DAECDC9C();
    v17 = sub_1DAECDCEC();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
LABEL_10:
    v18 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__overrideDatePreferenceValue;
    swift_beginAccess();
    sub_1DAE101FC(v8, v10 + v18);
    swift_endAccess();
    sub_1DAD6495C(v10 + v18, v5, &qword_1ECC07CE8, &qword_1DAED6F60);
    v19 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate;
    swift_beginAccess();
    sub_1DAE101FC(v5, v10 + v19);
    swift_endAccess();
    sub_1DAE0FC40();

    sub_1DAD64398(v5, &qword_1ECC07CE8, &qword_1DAED6F60);
    return sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);
  }

  return result;
}

uint64_t sub_1DAE0D85C()
{

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_lifetimeAssertion, &qword_1ECC08D38, &qword_1DAED7D98);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate, &qword_1ECC07CE8, &qword_1DAED6F60);
  return sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__overrideDatePreferenceValue, &qword_1ECC07CE8, &qword_1DAED6F60);
}

void sub_1DAE0D924()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__cancellables;
  swift_beginAccess();
  v16 = v0;
  v2 = *&v0[v1];
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAD900A4(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    sub_1DAED1F9C();
    v4 = v19;
    v3 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_1DAD70B20(v4);

      v18.receiver = v16;
      v18.super_class = type metadata accessor for WidgetSceneContentViewController(0);
      objc_msgSendSuper2(&v18, sel_dealloc);
      return;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v6 = v13;
      v7 = v14;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

double sub_1DAE0DC6C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DAED087C();
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *&v10 = v3;
  v6 = v5;

  sub_1DAECFABC();

  sub_1DAEA1304();
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_invalidated) = 1;
  v7 = v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_lifetimeAssertion;
  swift_beginAccess();
  if (*(v7 + 24))
  {
    sub_1DAD648F8(v7, &v10);
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    sub_1DAED144C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v10);
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  sub_1DAE102DC(&v10, v7);
  swift_endAccess();
  v8 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_metricsAggregator;
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_metricsAggregator))
  {

    sub_1DAE3A984();
  }

  *(v2 + v8) = 0;

  return result;
}

uint64_t sub_1DAE0DDF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAED192C();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v88[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v94 = &v88[-v7];
  v93 = sub_1DAECDCEC();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v88[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1DAECDA2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  BSDispatchQueueAssertMain();
  v13 = sub_1DADBC424(&unk_1F56AFA18);
  swift_arrayDestroy();
  v17 = [*&v1[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_widget] extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
  v14 = sub_1DAECE26C();
  v16 = v15;
  swift_endAccess();

  LODWORD(v17) = sub_1DADB410C(v14, v16, v13);

  if (qword_1EE005DB8 != -1)
  {
    swift_once();
  }

  v18 = sub_1DAECEDEC();
  v19 = __swift_project_value_buffer(v18, qword_1EE011640);
  v20 = *(v10 + 16);
  v98 = a1;
  v20(v12, a1, v9);
  v21 = v2;
  v22 = sub_1DAECEDCC();
  v23 = sub_1DAED200C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v90 = v19;
    v25 = v24;
    v26 = swift_slowAlloc();
    v89 = v17;
    v17 = v26;
    v105[0] = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_1DAD6482C(*&v21[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v21[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v105);
    *(v25 + 12) = 2082;
    sub_1DAD900A4(&qword_1ECC08D48, MEMORY[0x1E6968130], MEMORY[0x1E6968158]);
    v27 = sub_1DAED287C();
    v29 = v28;
    (*(v10 + 8))(v12, v9);
    v30 = sub_1DAD6482C(v27, v29, v105);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_1DAD61000, v22, v23, "[%{public}s] AoD timeline request with dateInterval: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v31 = v17;
    LOBYTE(v17) = v89;
    MEMORY[0x1E127F100](v31, -1, -1);
    MEMORY[0x1E127F100](v25, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_1DAD648F8(*&v21[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel] + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v100);
  v32 = v101;
  v33 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v34 = (*(v33 + 16))(v32, v33);
  sub_1DAED0C5C();

  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  v35 = v98;
  if (v104)
  {
    sub_1DAD657D8(&v103, v105);
    if (v17)
    {
      v36 = objc_opt_self();
      v37 = *&v21[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8];
      v97 = *&v21[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier];
      v38 = sub_1DAED1CBC();
      v39 = [v36 everyMinuteTimelineWithIdentifier:v38 configure:0];
LABEL_18:

      v61 = v39;
      v62 = v21;
      v63 = v61;
      v64 = sub_1DAECEDCC();
      v65 = sub_1DAED200C();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v103 = v68;
        *v66 = 136446466;
        *(v66 + 4) = sub_1DAD6482C(v97, v37, &v103);
        *(v66 + 12) = 2114;
        *(v66 + 14) = v63;
        *v67 = v63;
        v69 = v63;
        _os_log_impl(&dword_1DAD61000, v64, v65, "[%{public}s] AoD timeline result: %{public}@", v66, 0x16u);
        sub_1DAD64398(v67, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v67, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x1E127F100](v68, -1, -1);
        MEMORY[0x1E127F100](v66, -1, -1);
      }

      BSDispatchQueueAssertMain();
      v70 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
      swift_beginAccess();
      v71 = *&v62[v70];
      v72 = sub_1DAECD9DC();
      v73 = [v71 _timelinesForDateInterval_];

      v74 = sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
      v75 = sub_1DAED1E7C();

      v99 = v75;
      v76 = v62;
      v77 = sub_1DAECEDCC();
      v78 = sub_1DAED200C();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v100[0] = v80;
        *v79 = 136446466;
        *(v79 + 4) = sub_1DAD6482C(v97, v37, v100);
        *(v79 + 12) = 2082;

        v82 = MEMORY[0x1E127DB00](v81, v74);
        v84 = v83;

        v85 = sub_1DAD6482C(v82, v84, v100);

        *(v79 + 14) = v85;
        _os_log_impl(&dword_1DAD61000, v77, v78, "[%{public}s] AoD timeline result from UIHostingController base: %{public}s", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v80, -1, -1);
        MEMORY[0x1E127F100](v79, -1, -1);
      }

      v86 = swift_beginAccess();
      MEMORY[0x1E127DAD0](v86);
      if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DAED1E9C();
      }

      sub_1DAED1EBC();
      v45 = v99;
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      return v45;
    }

    v46 = v91;
    sub_1DAECDA0C();
    v47 = sub_1DAECDC5C();
    v48 = [objc_opt_self() entryForPresentationTime:v47 withRequestedFidelity:1];

    (*(v92 + 8))(v46, v93);
    __swift_project_boxed_opaque_existential_1(v105, v106);
    v49 = v94;
    sub_1DAED1A1C();
    v50 = v95;
    sub_1DAED191C();
    v51 = MEMORY[0x1E127D580](v49, v50);
    v52 = *(v96 + 8);
    v53 = v50;
    v54 = v97;
    v52(v53, v97);
    v52(v49, v54);
    __swift_project_boxed_opaque_existential_1(v105, v106);
    v55 = *(sub_1DAED1A2C() + 16);

    if (v55 != 1)
    {
      __swift_project_boxed_opaque_existential_1(v105, v106);
      v56 = sub_1DAED1A2C();
      MEMORY[0x1EEE9AC00](v56);
      *&v88[-32] = v35;
      *&v88[-24] = v21;
      *&v88[-16] = (v51 & 1) == 0;
      v57 = sub_1DAE0D2FC(sub_1DAE10360, &v88[-48], v56);

      if (v57 >> 62)
      {
        if (sub_1DAED247C())
        {
          goto LABEL_17;
        }
      }

      else if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_17:
        v37 = *&v21[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8];
        v97 = *&v21[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier];
        v38 = sub_1DAED1CBC();
        sub_1DAD674D4(0, &qword_1ECC08D40, 0x1E698E510);
        v60 = sub_1DAED1E6C();

        v39 = [objc_opt_self() timelineWithEntries:v60 identifier:v38 configure:0];

        goto LABEL_18;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1DAED64D0;
    *(v58 + 32) = v48;
    v59 = v48;
    goto LABEL_17;
  }

  sub_1DAD64398(&v103, &unk_1ECC08880, &unk_1DAED6F50);
  v40 = v21;
  v41 = sub_1DAECEDCC();
  v42 = sub_1DAED200C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v105[0] = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_1DAD6482C(*&v40[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v40[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v105);
    _os_log_impl(&dword_1DAD61000, v41, v42, "[%{public}s] AoD timeline result: nil", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1E127F100](v44, -1, -1);
    MEMORY[0x1E127F100](v43, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DAE0EA88@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v34 = a4;
  v33 = a3;
  v6 = sub_1DAECDCEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAED177C();
  v10 = sub_1DAECDA1C();
  v11 = *(v7 + 8);
  result = v11(v9, v6);
  v13 = 0;
  if (v10)
  {
    if (qword_1EE005DB8 != -1)
    {
      swift_once();
    }

    v14 = sub_1DAECEDEC();
    __swift_project_value_buffer(v14, qword_1EE011640);
    sub_1DAD648F8(a1, v35);
    v15 = a2;
    v16 = sub_1DAECEDCC();
    v17 = sub_1DAED200C();

    if (os_log_type_enabled(v16, v17))
    {
      v31 = v17;
      v32 = v16;
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v18 = 136446466;
      *(v18 + 4) = sub_1DAD6482C(*&v15[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v15[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], &v36);
      *(v18 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      sub_1DAED177C();
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v19 = qword_1EE00A708;
      v20 = sub_1DAECDC5C();
      v21 = [v19 stringFromDate_];

      v22 = sub_1DAED1CEC();
      v24 = v23;

      v11(v9, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v25 = sub_1DAD6482C(v22, v24, &v36);

      *(v18 + 14) = v25;
      v26 = v32;
      _os_log_impl(&dword_1DAD61000, v32, v31, "[%{public}s] Including date in timeline: %{public}s", v18, 0x16u);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v27, -1, -1);
      MEMORY[0x1E127F100](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAED177C();
    v28 = sub_1DAECDC5C();
    v13 = [objc_opt_self() entryForPresentationTime:v28 withRequestedFidelity:v33];

    result = v11(v9, v6);
  }

  *v34 = v13;
  return result;
}

uint64_t sub_1DAE0EF98(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v93 = a2;
  v4 = sub_1DAECDCEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v95 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECDA2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v91 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v84 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v84 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v84 - v20;
  BSDispatchQueueAssertMain();
  v94 = v21;
  v90 = v4;
  if (a1)
  {
    v22 = a1;
    v23 = [a1 presentationInterval];
    sub_1DAECD9EC();

    v21 = v94;
    sub_1DAECDA0C();
    (*(v8 + 8))(v10, v7);
    (*(v5 + 56))(v21, 0, 1, v4);
  }

  else
  {
    v22 = 0;
    (*(v5 + 56))(v21, 1, 1, v4);
  }

  v24 = v5;
  v25 = v93;
  if (qword_1EE005DB8 != -1)
  {
    swift_once();
  }

  v26 = sub_1DAECEDEC();
  v27 = __swift_project_value_buffer(v26, qword_1EE011640);
  sub_1DAD6495C(v21, v18, &qword_1ECC07CE8, &qword_1DAED6F60);
  v28 = v22;
  v29 = v22;
  v30 = v89;
  v31 = sub_1DAECEDCC();
  v32 = sub_1DAED203C();
  v89 = v29;

  if (os_log_type_enabled(v31, v32))
  {
    LODWORD(v87) = v32;
    v88 = v27;
    v33 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v100[0] = v86;
    *v33 = 136446722;
    *(v33 + 4) = sub_1DAD6482C(*(&v30->isa + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier), *(&v30[1].isa + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier), v100);
    *(v33 + 12) = 2082;
    sub_1DAD6495C(v18, v15, &qword_1ECC07CE8, &qword_1DAED6F60);
    v34 = v24;
    v35 = *(v24 + 48);
    v36 = v90;
    if (v35(v15, 1, v90) == 1)
    {
      sub_1DAD64398(v15, &qword_1ECC07CE8, &qword_1DAED6F60);
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      v85 = v28;
      v39 = v36;
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v40 = qword_1EE00A708;
      v41 = sub_1DAECDC5C();
      v42 = [v40 stringFromDate_];

      v38 = sub_1DAED1CEC();
      v37 = v43;

      v36 = v39;
      (*(v34 + 8))(v15, v39);
      v28 = v85;
    }

    sub_1DAD64398(v18, &qword_1ECC07CE8, &qword_1DAED6F60);
    v44 = sub_1DAD6482C(v38, v37, v100);

    *(v33 + 14) = v44;
    *(v33 + 22) = 2082;
    if (v28)
    {
      v45 = [v89 description];
      v46 = sub_1DAED1CEC();
      v48 = v47;
    }

    else
    {
      v48 = 0xE300000000000000;
      v46 = 7104878;
    }

    v49 = sub_1DAD6482C(v46, v48, v100);

    *(v33 + 24) = v49;
    _os_log_impl(&dword_1DAD61000, v31, v87, "[%{public}s] AoD update to override date: %{public}s with specifier: %{public}s", v33, 0x20u);
    v50 = v86;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v50, -1, -1);
    MEMORY[0x1E127F100](v33, -1, -1);

    v25 = v93;
  }

  else
  {

    sub_1DAD64398(v18, &qword_1ECC07CE8, &qword_1DAED6F60);
    v34 = v24;
    v36 = v90;
  }

  v51 = v30;
  v52 = sub_1DAECEDCC();
  v53 = sub_1DAED200C();

  v54 = os_log_type_enabled(v52, v53);
  v55 = v94;
  if (v54)
  {
    LODWORD(v89) = v53;
    v56 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v102[0] = v88;
    *v56 = 136446466;
    *(v56 + 4) = sub_1DAD6482C(*&v51[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v51[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v102);
    *(v56 + 12) = 2080;
    sub_1DAD648F8(*&v51[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel] + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v97);
    v57 = v98;
    v58 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    v59 = (*(v58 + 16))(v57, v58);
    sub_1DAED0C5C();

    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    if (v101)
    {
      v87 = v56;
      __swift_project_boxed_opaque_existential_1(v100, v101);
      v60 = sub_1DAED1A2C();
      v61 = *(v60 + 16);
      if (v61)
      {
        v85 = v52;
        v86 = v51;
        v62 = v36;
        v96 = MEMORY[0x1E69E7CC0];
        sub_1DAE02204(0, v61, 0);
        v63 = v96;
        v84[1] = v60;
        v64 = v60 + 32;
        v65 = (v34 + 8);
        do
        {
          sub_1DAD648F8(v64, v97);
          __swift_project_boxed_opaque_existential_1(v97, v98);
          v66 = v95;
          sub_1DAED177C();
          v67 = sub_1DAECDC2C();
          v69 = v68;
          (*v65)(v66, v62);
          __swift_destroy_boxed_opaque_existential_1Tm(v97);
          v96 = v63;
          v71 = *(v63 + 16);
          v70 = *(v63 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_1DAE02204((v70 > 1), v71 + 1, 1);
            v63 = v96;
          }

          *(v63 + 16) = v71 + 1;
          v72 = v63 + 16 * v71;
          *(v72 + 32) = v67;
          *(v72 + 40) = v69;
          v64 += 40;
          --v61;
        }

        while (v61);

        v74 = v92;
        v25 = v93;
        v51 = v86;
        v52 = v85;
      }

      else
      {

        v63 = MEMORY[0x1E69E7CC0];
        v74 = v92;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v100);
      v100[0] = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
      sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70, MEMORY[0x1E69E6310]);
      v75 = sub_1DAED1C8C();
      v76 = v77;

      v55 = v94;
      v73 = v91;
      v56 = v87;
    }

    else
    {
      v75 = 7104878;
      sub_1DAD64398(v100, &unk_1ECC08880, &unk_1DAED6F50);
      v76 = 0xE300000000000000;
      v73 = v91;
      v74 = v92;
    }

    v78 = sub_1DAD6482C(v75, v76, v102);

    *(v56 + 14) = v78;
    _os_log_impl(&dword_1DAD61000, v52, v89, "[%{public}s] Content entries:\n %s", v56, 0x16u);
    v79 = v88;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v79, -1, -1);
    MEMORY[0x1E127F100](v56, -1, -1);
  }

  else
  {

    v73 = v91;
    v74 = v92;
  }

  sub_1DAD6495C(v55, v73, &qword_1ECC07CE8, &qword_1DAED6F60);
  v80 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate;
  swift_beginAccess();
  sub_1DAE101FC(v73, &v51[v80]);
  swift_endAccess();
  sub_1DAE0FC40();
  sub_1DAD64398(v73, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  v81 = swift_allocObject();
  v81[2] = v51;
  v81[3] = v25;
  v81[4] = v74;
  v82 = v51;

  sub_1DAED22FC();

  return sub_1DAD64398(v55, &qword_1ECC07CE8, &qword_1DAED6F60);
}

uint64_t sub_1DAE0FA38(void *a1, uint64_t (*a2)(void))
{
  if (qword_1EE005DB8 != -1)
  {
    swift_once();
  }

  v4 = sub_1DAECEDEC();
  __swift_project_value_buffer(v4, qword_1EE011640);
  v5 = a1;
  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED200C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1DAD6482C(*&v5[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v5[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], &v11);
    _os_log_impl(&dword_1DAD61000, v6, v7, "[%{public}s] AoD performAfterSwiftUILayout completion fired", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E127F100](v9, -1, -1);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  return a2();
}

uint64_t sub_1DAE0FC40()
{
  v1 = v0;
  v2 = sub_1DAECDCEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__overrideDatePreferenceValue;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v12, v8, &qword_1ECC07CE8, &qword_1DAED6F60);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);
    v13 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v1 + v13, v11, &qword_1ECC07CE8, &qword_1DAED6F60);
  }

  else
  {
    v14 = *(v3 + 32);
    v14(v5, v8, v2);
    v14(v11, v5, v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v15 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v16 = *(v1 + v15);
  type metadata accessor for SecureHostingController(0);
  sub_1DAD900A4(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
  v17 = v16;
  if (sub_1DAECF9AC())
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (!v18)
    {

      v19 = swift_unknownObjectRelease();
      goto LABEL_9;
    }

    [v18 setNeedsSynchronousUpdate_];
    swift_unknownObjectRelease();
  }

LABEL_9:
  MEMORY[0x1EEE9AC00](v19);
  *(&v21 - 2) = v11;
  *(&v21 - 1) = v1;
  sub_1DAEA1A98(sub_1DAE102CC);
  return sub_1DAD64398(v11, &qword_1ECC07CE8, &qword_1DAED6F60);
}

void sub_1DAE0FFB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1DAECDCEC();
  v11 = *(*(v10 - 8) + 48);
  if (v11(a1, 1, v10) != 1)
  {
    v12 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
    v13 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = 1;
    sub_1DAE9D5F0(v14);
  }

  v15 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  sub_1DAD6495C(a1, v9, &qword_1ECC07CE8, &qword_1DAED6F60);
  v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v15 + v16, v6, &qword_1ECC07CE8, &qword_1DAED6F60);
  swift_beginAccess();
  sub_1DAE101FC(v9, v15 + v16);
  swift_endAccess();
  sub_1DAE9DF48(v6);
  sub_1DAD64398(v6, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD64398(v9, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (v11(a1, 1, v10) == 1)
  {
    v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
    swift_beginAccess();
    v18 = *(v15 + v17);
    *(v15 + v17) = 0;
    sub_1DAE9D5F0(v18);
  }
}

uint64_t sub_1DAE101FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1DAE10294(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1DAE102DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D38, &qword_1DAED7D98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE10380()
{
  if (*(v0 + 48))
  {

    sub_1DAECEE2C();
  }

  return swift_deallocClassInstance();
}

id sub_1DAE1048C()
{
  result = [objc_opt_self() userInteractive];
  qword_1EE00B9C8 = result;
  return result;
}

uint64_t sub_1DAE10578()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_assertion))
  {

    sub_1DAED0D4C();
  }

  v2 = OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_logger;
  v3 = sub_1DAECEDEC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

double sub_1DAE106C4()
{
  if (*(*v0 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_assertion))
  {

    sub_1DAED0D4C();
  }

  return result;
}

uint64_t sub_1DAE10720()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_archiveLastModifiedDate, &qword_1ECC07CE8, &qword_1DAED6F60);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE10814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  result = a5(319, a2, a3);
  if (v8 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1DAE108C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DAED18CC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED200C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v22 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      sub_1DAE167B4(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
      v15 = sub_1DAED287C();
      v17 = v16;
      (*(v4 + 8))(v6, v3);
      v18 = sub_1DAD6482C(v15, v17, &v23);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1DAD61000, v10, v11, "Protection Type changed to %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      v19 = v13;
      a1 = v22;
      MEMORY[0x1E127F100](v19, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v20 = *(v9 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);
    v21 = *(v20 + 16);

    os_unfair_lock_lock(v21);
    sub_1DAE10B80(v9, a1);
    os_unfair_lock_unlock(*(v20 + 16));
  }

  return result;
}

void sub_1DAE10B80(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v3 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D80, qword_1DAED8048);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v39 - v9;
  v10 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v46 = a1;
  v11 = *(a1 + v10);
  v12 = *(v11 + 64);
  v41 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v40 = (v13 + 63) >> 6;
  v42 = v3 + 16;
  v50 = (v3 + 32);
  v44 = v3;
  v45 = v11;
  v47 = (v3 + 8);

  v16 = 0;
  v43 = v7;
  v17 = &qword_1ECC08D78;
  if (v15)
  {
    while (1)
    {
      v18 = v16;
LABEL_12:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v24 = v44;
      v23 = v45;
      v25 = v51;
      v26 = v52;
      (*(v44 + 16))(v51, *(v45 + 48) + *(v44 + 72) * v22, v52);
      v27 = *(*(v23 + 56) + 8 * v22);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, &qword_1DAED8040);
      v29 = *(v28 + 48);
      v30 = *(v24 + 32);
      v7 = v43;
      v30(v43, v25, v26);
      *&v7[v29] = v27;
      (*(*(v28 - 8) + 56))(v7, 0, 1, v28);

      v20 = v18;
      v31 = v17;
LABEL_13:
      v32 = v49;
      sub_1DAD7C48C(v7, v49, &qword_1ECC08D80, qword_1DAED8048);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, &qword_1DAED8040);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        break;
      }

      v34 = *(v32 + *(v33 + 48));
      v35 = v51;
      v36 = v32;
      v37 = v52;
      (*v50)(v51, v36, v52);
      sub_1DAE12A64(v35, v34, v48);

      (*v47)(v35, v37);
      v16 = v20;
      v17 = v31;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v40 <= v16 + 1)
    {
      v19 = v16 + 1;
    }

    else
    {
      v19 = v40;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v40)
      {
        v31 = v17;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, &qword_1DAED8040);
        (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v41 + 8 * v18);
      ++v16;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1DAE10FC0(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v78 = a4;
  v70 = a3;
  v72 = a5;
  v69 = sub_1DAECEDEC();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v14 = *(v13 - 8);
  v66 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087A0, &unk_1DAED71E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v63 - v18;
  v80 = sub_1DAED18CC();
  v74 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v63 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v63 - v22;
  v23 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v24 = *&a1[v23];
  v25 = *(v24 + 16);
  v76 = v14;
  v77 = v13;
  v75 = v16;
  if (v25)
  {

    v26 = sub_1DAECB0A8(a2);
    if (v27)
    {
      v71 = v5;
      v28 = *(*(v24 + 56) + 8 * v26);
      swift_retain_n();

      v29 = _serverStartupToken + 3568;
      goto LABEL_10;
    }
  }

  v71 = a1;
  v30 = &a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider], *&a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider + 24]);
  v73 = a2;
  v31 = sub_1DAED0E5C();
  sub_1DAED134C();
  if (v5)
  {

    v32 = v74;
    v33 = v80;
    (*(v74 + 56))(v19, 1, 1, v80);
    __swift_project_boxed_opaque_existential_1(v30, *(v30 + 3));
    sub_1DAED133C();
    if ((*(v32 + 48))(v19, 1, v33) != 1)
    {
      sub_1DAD64398(v19, &qword_1ECC087A0, &unk_1DAED71E0);
    }
  }

  else
  {

    v34 = v74;
    v35 = v80;
    (*(v74 + 56))(v19, 0, 1, v80);
    (*(v34 + 32))(v79, v19, v35);
  }

  a1 = v71;
  v36 = v75;
  v71 = 0;
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__environmentFactory], *&a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__environmentFactory + 24]);
  v37 = sub_1DAED0E5C();
  sub_1DAED12FC();

  a2 = v73;
  sub_1DAED0D1C();
  (*(v76 + 16))(v36, a2, v77);
  v38 = sub_1DAED1BEC();
  (*(*(v38 - 8) + 56))(v64, 1, 1, v38);
  v39 = v74;
  (*(v74 + 16))(v63, v79, v80);
  sub_1DAD648F8(v82, v81);
  v40 = sub_1DAED0CCC();
  type metadata accessor for ActivityArchiveEntry(0);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v41 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_archiveLastModifiedDate;
  v42 = sub_1DAECDCEC();
  (*(*(v42 - 8) + 56))(v28 + v41, 1, 1, v42);
  *(v28 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_assertions) = MEMORY[0x1E69E7CC0];
  v29 = &_serverStartupToken[892];
  *(v28 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry) = v40;
  swift_beginAccess();
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = *&a1[v23];
  *&a1[v23] = 0x8000000000000000;
  sub_1DADDAD78(v28, a2, isUniquelyReferenced_nonNull_native);
  *&a1[v23] = v83;
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  (*(v39 + 8))(v79, v80);
LABEL_10:
  v44 = type metadata accessor for ActivityContentDidChangeEvent(0);
  v45 = v65;
  (*(*(v44 - 8) + 56))(v65, 1, 1, v44);
  sub_1DAE13360(a2, v45);
  sub_1DAD64398(v45, &qword_1ECC08D68, &unk_1DAED8020);
  v46 = *(v28 + *(v29 + 274));
  v74 = v46;
  v47 = v68;
  v48 = v67;
  v49 = v69;
  (*(v68 + 16))(v67, &a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__logger], v69);
  v80 = type metadata accessor for ActivityArchiveEntryAssertion(0);
  v50 = swift_allocObject();
  v79 = OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_assertion;
  *(v50 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_assertion) = 0;
  *(v50 + 16) = v46;
  (*(v47 + 32))(v50 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_logger, v48, v49);
  v51 = (v50 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_reason);
  v52 = v78;
  *v51 = v70;
  v51[1] = v52;
  v73 = sub_1DAED0D5C();
  v53 = a2;
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = v75;
  v56 = v76;
  v57 = v77;
  (*(v76 + 16))(v75, v53, v77);
  v58 = (*(v56 + 80) + 40) & ~*(v56 + 80);
  v59 = swift_allocObject();
  *(v59 + 2) = a1;
  *(v59 + 3) = v28;
  *(v59 + 4) = v54;
  (*(v56 + 32))(&v59[v58], v55, v57);

  *&v79[v50] = sub_1DAED0D6C();

  v60 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_assertions;
  swift_beginAccess();

  MEMORY[0x1E127DAD0](v61);
  if (*((*(v28 + v60) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v28 + v60) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DAED1E9C();
  }

  sub_1DAED1EBC();
  swift_endAccess();

  v62 = v72;
  v72[3] = v80;
  v62[4] = sub_1DAE167B4(&qword_1EE0062E8, type metadata accessor for ActivityArchiveEntryAssertion, &unk_1DAED8000);

  *v62 = v50;
}

double sub_1DAE119CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);
  v13 = *(v12 + 16);

  os_unfair_lock_lock(v13);
  v14 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_assertions;
  swift_beginAccess();

  v15 = sub_1DAE167FC((a2 + v14), a3);

  v17 = *(a2 + v14);
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    if (sub_1DAED247C())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v18 = sub_1DAED247C();
  if (v18 < v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1DADFAEFC(v15, v16, v18);
  swift_endAccess();
  v19 = *(a2 + v14);
  if (v19 >> 62)
  {
    goto LABEL_9;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    (*(v9 + 16))(v11, a4, v8);
    swift_beginAccess();
    sub_1DADD8448(0, v11);
    swift_endAccess();
  }

LABEL_6:
  os_unfair_lock_unlock(*(v12 + 16));

  return result;
}

void sub_1DAE11BE0(uint64_t a1)
{
  v21 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D78, &qword_1DAED8040);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = *(*(v1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock) + 16);
  v20 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(v7 + 48);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
    (*(*(v17 - 8) + 16))(v4, v16 + *(*(v17 - 8) + 72) * v15, v17);
    v18 = *(*(v7 + 56) + 8 * v15);
    *&v4[*(v2 + 48)] = v18;

    sub_1DAE11E00(v4, v18, v21, v1);
    sub_1DAD64398(v4, &qword_1ECC08D78, &qword_1DAED8040);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      os_unfair_lock_unlock(*(v20 + 16));

      return;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1DAE11E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087A0, &unk_1DAED71E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1DAED18CC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v40 = &v35 - v21;
  v22 = sub_1DAED0E5C();
  LOBYTE(a3) = sub_1DAD93D58(v22, a3, MEMORY[0x1E69941C0]);

  if (a3)
  {
    v35 = v10;
    v36 = a2;
    v38 = a4;
    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider), *(a4 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider + 24));
    v37 = a1;
    v23 = sub_1DAED0E5C();
    sub_1DAED134C();

    (*(v17 + 56))(v15, 0, 1, v16);
    (*(v17 + 32))(v40, v15, v16);
    v24 = v36;

    sub_1DAED0C8C();

    sub_1DAE167B4(&qword_1EE00AAE8, MEMORY[0x1E69859A8], MEMORY[0x1E69859C0]);
    v25 = sub_1DAED1CAC();
    v26 = *(v17 + 8);
    v26(v19, v16);
    v27 = v38;
    if ((v25 & 1) == 0)
    {
      v28 = *(v17 + 16);
      v28(v19, v40, v16);

      sub_1DAED0C9C();

      v29 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_currentDataProtectionLevel;
      swift_beginAccess();
      v28(v19, (v27 + v29), v16);
      sub_1DAE12A64(v37, v24, v19);
      v26(v19, v16);
    }

    v30 = v39;
    sub_1DAED0CDC();

    v31 = sub_1DAED1BEC();
    v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
    sub_1DAD64398(v30, &qword_1ECC08D70, &unk_1DAED8710);
    if (v32 == 1)
    {
      v33 = type metadata accessor for ActivityContentDidChangeEvent(0);
      v34 = v35;
      (*(*(v33 - 8) + 56))(v35, 1, 1, v33);
      sub_1DAE13360(v37, v34);
      sub_1DAD64398(v34, &qword_1ECC08D68, &unk_1DAED8020);
    }

    v26(v40, v16);
  }
}

uint64_t sub_1DAE12374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - v11;
  v13 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v26 = a2;

  sub_1DAE126E8(sub_1DAE16C20, v25, v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v23[1] = v3;
    v23[2] = v15;
    v17 = v10 + 16;
    v27 = *(v10 + 16);
    v18 = v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v24 = *(v17 + 56);
    v19 = (v17 - 8);
    do
    {
      v27(v12, v18, v9);
      sub_1DAE16C40(a2, v8);
      v20 = type metadata accessor for ActivityContentDidChangeEvent(0);
      (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
      v21 = sub_1DAE13360(v12, v8);
      (*v19)(v12, v9, v21);
      sub_1DAD64398(v8, &qword_1ECC08D68, &unk_1DAED8020);
      v18 += v24;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_1DAE125E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DAED0B1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  MEMORY[0x1E127CAC0](v6);
  v7 = sub_1DAED0B0C();
  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

void sub_1DAE126E8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v49 = a3;
  v50 = &v39 - v13;
  v14 = 0;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v47 = v11;
  v48 = v11 + 32;
  v42 = (v11 + 8);
  v43 = v11 + 16;
  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

    v23 = v4;
LABEL_10:
    v24 = *(v49 + 48);
    v25 = v47;
    v41 = *(v47 + 72);
    v26 = v44;
    (*(v47 + 16))(v44, v24 + v41 * (__clz(__rbit64(v20)) | (v14 << 6)), v6, v12);
    v27 = *(v25 + 32);
    v28 = v6;
    v29 = v50;
    v30 = v28;
    v27(v50, v26);
    v31 = v45(v29);
    v4 = v23;
    if (v23)
    {
      (*v42)(v50, v30);

      return;
    }

    v20 &= v20 - 1;
    if (v31)
    {
      v6 = v30;
      (v27)(v39, v50, v30);
      v32 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DAE02224(0, *(v32 + 16) + 1, 1);
        v6 = v30;
        v32 = v51;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v38 = v35 + 1;
        v40 = v35;
        sub_1DAE02224((v34 > 1), v35 + 1, 1);
        v36 = v38;
        v35 = v40;
        v6 = v30;
        v32 = v51;
      }

      *(v32 + 16) = v36;
      v37 = *(v47 + 80);
      v40 = v32;
      (v27)(v32 + ((v37 + 32) & ~v37) + v35 * v41, v39, v6);
    }

    else
    {
      v6 = v30;
      (*v42)(v50, v30);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      v23 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1DAE12A64(uint64_t a1, char *a2, uint64_t a3)
{
  v73 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v74 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v65 - v15;
  v16 = sub_1DAED18CC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  v24 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry;
  v25 = a2;

  sub_1DAED0C8C();

  sub_1DAE167B4(&qword_1EE00AAF0, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
  v26 = a3;
  LOBYTE(a2) = sub_1DAED1C9C();
  v71 = *(v17 + 8);
  v72 = v17 + 8;
  v71(v23, v16);
  if (a2)
  {
    v66 = v25;
    v67 = v24;
    v27 = v74;
    v28 = v68;
    (*(v74 + 16))(v68, v73, v12);
    v29 = v69;
    (*(v17 + 16))(v69, v26, v16);
    v30 = sub_1DAECEDCC();
    v31 = sub_1DAED203C();
    v32 = v27;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v76 = v34;
      *v33 = 136446466;
      LODWORD(v75) = v31;
      v35 = sub_1DAED0E1C();
      v37 = v36;
      (*(v32 + 8))(v28, v12);
      v38 = sub_1DAD6482C(v35, v37, &v76);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      sub_1DAE167B4(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
      v39 = sub_1DAED287C();
      v41 = v40;
      v71(v29, v16);
      v42 = sub_1DAD6482C(v39, v41, &v76);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_1DAD61000, v30, v75, "[%{public}s] Discarding content due to data protection level changing to: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v34, -1, -1);
      MEMORY[0x1E127F100](v33, -1, -1);
    }

    else
    {

      v71(v29, v16);
      (*(v27 + 8))(v28, v12);
    }

    v62 = sub_1DAED1BEC();
    (*(*(v62 - 8) + 56))(v70, 1, 1, v62);

    sub_1DAED0CEC();

    sub_1DAED0CAC();
  }

  else
  {
    v43 = v74;

    sub_1DAED0CDC();

    v44 = sub_1DAED1BEC();
    v45 = (*(*(v44 - 8) + 48))(v9, 1, v44);
    sub_1DAD64398(v9, &qword_1ECC08D70, &unk_1DAED8710);
    if (v45 == 1)
    {
      v46 = v65;
      v47 = v73;
      (*(v43 + 16))(v65, v73, v12);
      v48 = v66;
      (*(v17 + 16))(v66, a3, v16);
      v49 = sub_1DAECEDCC();
      v50 = sub_1DAED203C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v76 = v70;
        *v51 = 136446466;
        v52 = sub_1DAED0E1C();
        v54 = v53;
        (*(v43 + 8))(v46, v12);
        v55 = sub_1DAD6482C(v52, v54, &v76);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2082;
        sub_1DAE167B4(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
        v56 = sub_1DAED287C();
        v58 = v57;
        v71(v48, v16);
        v59 = sub_1DAD6482C(v56, v58, &v76);

        *(v51 + 14) = v59;
        _os_log_impl(&dword_1DAD61000, v49, v50, "[%{public}s] Loading content again due to data protection level being available: %{public}s", v51, 0x16u);
        v60 = v70;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v60, -1, -1);
        v61 = v51;
        v47 = v73;
        MEMORY[0x1E127F100](v61, -1, -1);
      }

      else
      {

        v71(v48, v16);
        (*(v43 + 8))(v46, v12);
      }

      v63 = type metadata accessor for ActivityContentDidChangeEvent(0);
      v64 = v67;
      (*(*(v63 - 8) + 56))(v67, 1, 1, v63);
      sub_1DAE13360(v47, v64);
      sub_1DAD64398(v64, &qword_1ECC08D68, &unk_1DAED8020);
    }
  }
}

double sub_1DAE13360(uint64_t a1, id a2)
{
  v5 = sub_1DAED09DC();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED0A3C();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  v45 = *(v9 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = v13;
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock) + 16));
  v17 = *(v12 + 16);
  v48 = a1;
  v17(v16, a1, v11);
  v49 = v2;
  v18 = sub_1DAECEDCC();
  v19 = sub_1DAED200C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = a2;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136446210;
    v23 = sub_1DAED0E1C();
    v41 = v17;
    v25 = v24;
    (*(v12 + 8))(v16, v11);
    v26 = sub_1DAD6482C(v23, v25, aBlock);
    v17 = v41;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1DAD61000, v18, v19, "Attempting to load content for key: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v27 = v22;
    a2 = v42;
    MEMORY[0x1E127F100](v27, -1, -1);
    MEMORY[0x1E127F100](v20, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v28 = v49;
  v42 = *(v49 + 16);
  v29 = v44;
  v17(v44, v48, v11);
  v30 = v47;
  sub_1DAD6495C(a2, v47, &qword_1ECC08D68, &unk_1DAED8020);
  v31 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v32 = (v43 + *(v45 + 80) + v31) & ~*(v45 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  (*(v12 + 32))(v33 + v31, v29, v11);
  sub_1DAD7C48C(v30, v33 + v32, &qword_1ECC08D68, &unk_1DAED8020);
  aBlock[4] = sub_1DAE16A78;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_9;
  v34 = _Block_copy(aBlock);
  v35 = v42;

  v36 = v50;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v56 = MEMORY[0x1E69E7CC0];
  sub_1DAE167B4(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  v37 = v53;
  v38 = v55;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v36, v37, v34);
  _Block_release(v34);

  (*(v54 + 8))(v37, v38);
  (*(v51 + 8))(v36, v52);

  return result;
}

void sub_1DAE13994(uint64_t a1, uint64_t a2, char *a3)
{
  v248 = a3;
  v258 = a2;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v250 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v233 = &v215 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v240 = &v215 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v217 = &v215 - v8;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B0, qword_1DAEDCBF0);
  MEMORY[0x1EEE9AC00](v221);
  v222 = &v215 - v9;
  v10 = sub_1DAECDCEC();
  v256 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v220 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v216 = &v215 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v227 = &v215 - v15;
  v238 = sub_1DAECDBFC();
  v237 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v239 = &v215 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v219 = &v215 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v243 = &v215 - v20;
  v252 = sub_1DAED18CC();
  v254 = *(v252 - 1);
  MEMORY[0x1EEE9AC00](v252);
  v249 = &v215 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v253 = &v215 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v247 = (&v215 - v25);
  v246 = type metadata accessor for ActivityContentDidChangeEvent(0);
  v244 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v236 = &v215 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v218 = &v215 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v225 = &v215 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v226 = &v215 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v232 = &v215 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v215 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v215 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v229 = &v215 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v231 = &v215 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v245 = &v215 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v215 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v215 - v51;
  v53 = sub_1DAED1BEC();
  v230 = *(v53 - 8);
  v55 = v230 + 56;
  v54 = *(v230 + 56);
  v56 = 1;
  v257 = v52;
  v54(v52, 1, 1, v53);
  v255 = v49;
  v235 = v53;
  v224 = v55;
  v223 = v54;
  v54(v49, 1, 1, v53);
  v57 = *(v256 + 7);
  v264 = 0;
  v265 = 0;
  v260 = v40;
  v57(v40, 1, 1, v10);
  v242 = v10;
  v57(v37, 1, 1, v10);
  v251 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock;
  v58 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);
  v59 = *(v58 + 16);

  os_unfair_lock_lock(v59);
  v60 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v259 = a1;
  v61 = *(a1 + v60);
  if (*(v61 + 16))
  {

    v62 = v258;
    v63 = sub_1DAECB0A8(v258);
    if (v64)
    {
      v228 = v60;
      v65 = *(*(v61 + 56) + 8 * v63);

      v66 = v247;
      sub_1DAD6495C(v248, v247, &qword_1ECC08D68, &unk_1DAED8020);
      v67 = (*(v244 + 48))(v66, 1, v246);
      v234 = v57;
      if (v67 == 1)
      {
        sub_1DAD64398(v37, &qword_1ECC07CE8, &qword_1DAED6F60);
        v68 = &qword_1ECC08D68;
        v69 = &unk_1DAED8020;
        v70 = v66;
      }

      else
      {
        v74 = v236;
        sub_1DAE16B60(v66, v236);

        sub_1DAED0D0C();

        sub_1DAE16BC4(v74);
        v68 = &qword_1ECC07CE8;
        v69 = &qword_1DAED6F60;
        v70 = v37;
      }

      sub_1DAD64398(v70, v68, v69);
      v75 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_archiveLastModifiedDate;
      swift_beginAccess();
      v248 = v37;
      sub_1DAD6495C(v65 + v75, v37, &qword_1ECC07CE8, &qword_1DAED6F60);
      v76 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry;

      v77 = v245;
      sub_1DAED0CDC();

      v78 = v257;
      sub_1DAD64398(v257, &qword_1ECC08D70, &unk_1DAED8710);
      sub_1DAD7C48C(v77, v78, &qword_1ECC08D70, &unk_1DAED8710);
      v73 = v259;
      __swift_project_boxed_opaque_existential_1((v259 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor), *(v259 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor + 24));
      v79 = v253;
      sub_1DAED127C();

      v80 = v249;
      sub_1DAED0C8C();

      sub_1DAE167B4(&qword_1EE00AAF0, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
      v81 = v252;
      LOBYTE(v75) = sub_1DAED1C9C();
      v82 = v254 + 8;
      v247 = *(v254 + 8);
      (v247)(v80, v81);
      if (v75)
      {
        v261 = 0;
        v262 = 0xE000000000000000;
        sub_1DAED256C();
        MEMORY[0x1E127DA50](0xD00000000000003BLL, 0x80000001DAEE2A80);

        sub_1DAED0C8C();

        sub_1DAE167B4(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
        v83 = sub_1DAED287C();
        v246 = v76;
        MEMORY[0x1E127DA50](v83);

        v254 = v82;
        (v247)(v80, v81);
        MEMORY[0x1E127DA50](0xD00000000000004CLL, 0x80000001DAEE1930);
        v84 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v84);

        MEMORY[0x1E127DA50](41, 0xE100000000000000);
        v86 = v261;
        v85 = v262;

        sub_1DAED0CAC();

        v87 = sub_1DAECEDCC();
        v88 = sub_1DAED201C();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v261 = v90;
          *v89 = 136446210;
          v91 = sub_1DAD6482C(v86, v85, &v261);

          *(v89 + 4) = v91;
          _os_log_impl(&dword_1DAD61000, v87, v88, "%{public}s", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v90);
          v92 = v90;
          v73 = v259;
          MEMORY[0x1E127F100](v92, -1, -1);
          MEMORY[0x1E127F100](v89, -1, -1);
        }

        else
        {
        }

        (v247)(v253, v252);
        v56 = 0;
        v71 = 1;
        v72 = v260;
        v62 = v258;
        v37 = v248;
        v57 = v234;
        v60 = v228;
      }

      else
      {
        (v247)(v79, v81);

        v56 = 1;
        v71 = 1;
        v72 = v260;
        v37 = v248;
        v57 = v234;
        v60 = v228;
        v62 = v258;
      }
    }

    else
    {

      v71 = 0;
      v73 = v259;
      v72 = v260;
    }
  }

  else
  {
    v71 = 0;
    v73 = v259;
    v72 = v260;
    v62 = v258;
  }

  os_unfair_lock_unlock(*(v58 + 16));

  if (!v71 || !v56)
  {
    sub_1DAD64398(v37, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD64398(v255, &qword_1ECC08D70, &unk_1DAED8710);
    sub_1DAD64398(v257, &qword_1ECC08D70, &unk_1DAED8710);
    v102 = v72;
LABEL_47:
    sub_1DAD64398(v102, &qword_1ECC07CE8, &qword_1DAED6F60);
    return;
  }

  v228 = v60;
  v234 = v57;
  v248 = v37;
  v93 = (v73 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader);
  __swift_project_boxed_opaque_existential_1((v73 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader), *(v73 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader + 24));
  v94 = v243;
  sub_1DAED0FCC();
  v254 = 0;
  v95 = v232;
  sub_1DAECDBEC();
  sub_1DAD84E40(v95, v260);
  v96 = v231;
  sub_1DAD6495C(v257, v231, &qword_1ECC08D70, &unk_1DAED8710);
  v97 = (*(v230 + 48))(v96, 1, v235);
  sub_1DAD64398(v96, &qword_1ECC08D70, &unk_1DAED8710);
  if (v97 != 1)
  {
    v98 = v226;
    sub_1DAD6495C(v248, v226, &qword_1ECC07CE8, &qword_1DAED6F60);
    v99 = v256;
    v100 = *(v256 + 6);
    v101 = v242;
    if (v100(v98, 1, v242) == 1)
    {
      sub_1DAD64398(v98, &qword_1ECC07CE8, &qword_1DAED6F60);
LABEL_27:
      v94 = v243;
      goto LABEL_28;
    }

    v103 = v99;
    v104 = *(v99 + 32);
    v105 = v227;
    v249 = v104;
    (v104)(v227, v98, v101);
    v106 = *(v103 + 16);
    v107 = v100;
    v108 = v225;
    v253 = (v103 + 16);
    v252 = v106;
    (v106)(v225, v105, v101);
    v234(v108, 0, 1, v101);
    v109 = *(v221 + 48);
    v110 = v222;
    sub_1DAD6495C(v108, v222, &qword_1ECC07CE8, &qword_1DAED6F60);
    v111 = v242;
    sub_1DAD6495C(v260, v110 + v109, &qword_1ECC07CE8, &qword_1DAED6F60);
    if ((v107)(v110, 1, v111) == 1)
    {
      sub_1DAD64398(v108, &qword_1ECC07CE8, &qword_1DAED6F60);
      if ((v107)(v110 + v109, 1, v111) == 1)
      {
        v112 = v107;
        sub_1DAD64398(v110, &qword_1ECC07CE8, &qword_1DAED6F60);
        v113 = v227;
LABEL_50:
        v247 = v112;
        v173 = v250;
        v174 = v217;
        v175 = v113;
        (*(v250 + 16))(v217, v258, v241);
        (v252)(v220, v175, v111);
        v176 = v237;
        v177 = v219;
        v178 = v243;
        v179 = v111;
        v180 = v238;
        (*(v237 + 16))(v219, v243, v238);
        v181 = sub_1DAECEDCC();
        v182 = sub_1DAED203C();
        if (os_log_type_enabled(v181, v182))
        {
          LODWORD(v259) = v182;
          v183 = swift_slowAlloc();
          v258 = swift_slowAlloc();
          v263[0] = v258;
          *v183 = 136446978;
          v184 = v241;
          v185 = sub_1DAED0E1C();
          v187 = v186;
          (*(v173 + 8))(v174, v184);
          v188 = sub_1DAD6482C(v185, v187, v263);

          *(v183 + 4) = v188;
          *(v183 + 12) = 2082;
          sub_1DAE167B4(&qword_1EE00BCF0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v189 = v220;
          v190 = sub_1DAED287C();
          v192 = v191;
          v193 = *(v256 + 1);
          v193(v189, v179);
          v194 = sub_1DAD6482C(v190, v192, v263);

          *(v183 + 14) = v194;
          *(v183 + 22) = 2082;
          v195 = v260;
          swift_beginAccess();
          v196 = (v247)(v195, 1, v179);
          v256 = v193;
          if (v196)
          {
            v197 = 0xE300000000000000;
            v198 = 7104878;
          }

          else
          {
            v201 = v179;
            v202 = v216;
            (v252)(v216, v195, v179);
            v203 = sub_1DAECDC2C();
            v197 = v204;
            v193(v202, v201);
            v198 = v203;
          }

          v205 = v227;
          v206 = v219;
          v207 = sub_1DAD6482C(v198, v197, v263);

          *(v183 + 24) = v207;
          *(v183 + 32) = 2082;
          sub_1DAE167B4(&qword_1EE00BD10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v208 = v238;
          v209 = sub_1DAED287C();
          v211 = v210;
          v212 = *(v237 + 8);
          v212(v206, v208);
          v213 = sub_1DAD6482C(v209, v211, v263);

          *(v183 + 34) = v213;
          _os_log_impl(&dword_1DAD61000, v181, v259, "Ignoring reloading contents for key because it's the exact same as we already have loaded: %{public}s (cachedLastModifiedDate: %{public}s, lastModifiedDate: %{public}s, url: %{public}s", v183, 0x2Au);
          v214 = v258;
          swift_arrayDestroy();
          MEMORY[0x1E127F100](v214, -1, -1);
          MEMORY[0x1E127F100](v183, -1, -1);

          v256(v205, v242);
          v212(v243, v208);
        }

        else
        {

          v199 = *(v176 + 8);
          v199(v177, v180);
          v200 = *(v256 + 1);
          v200(v220, v179);
          (*(v173 + 8))(v174, v241);
          v200(v227, v179);
          v199(v178, v180);
        }

        sub_1DAD64398(v248, &qword_1ECC07CE8, &qword_1DAED6F60);
        sub_1DAD64398(v255, &qword_1ECC08D70, &unk_1DAED8710);
        sub_1DAD64398(v257, &qword_1ECC08D70, &unk_1DAED8710);
        v102 = v260;
        goto LABEL_47;
      }
    }

    else
    {
      v114 = v218;
      sub_1DAD6495C(v110, v218, &qword_1ECC07CE8, &qword_1DAED6F60);
      if ((v107)(v110 + v109, 1, v111) != 1)
      {
        v112 = v107;
        v169 = v110 + v109;
        v170 = v216;
        (v249)(v216, v169, v111);
        sub_1DAE167B4(&qword_1EE00BCF8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v171 = v114;
        v172 = sub_1DAED1CAC();
        v115 = *(v256 + 1);
        v115(v170, v111);
        sub_1DAD64398(v225, &qword_1ECC07CE8, &qword_1DAED6F60);
        v115(v171, v242);
        v111 = v242;
        sub_1DAD64398(v222, &qword_1ECC07CE8, &qword_1DAED6F60);
        v113 = v227;
        if (v172)
        {
          goto LABEL_50;
        }

LABEL_26:
        v115(v113, v111);
        v62 = v258;
        v73 = v259;
        goto LABEL_27;
      }

      sub_1DAD64398(v225, &qword_1ECC07CE8, &qword_1DAED6F60);
      (*(v256 + 1))(v114, v111);
    }

    sub_1DAD64398(v110, &qword_1ECC087B0, qword_1DAEDCBF0);
    v115 = *(v256 + 1);
    v113 = v227;
    goto LABEL_26;
  }

LABEL_28:
  __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  v116 = v229;
  v117 = v254;
  sub_1DAED0FDC();
  if (!v117)
  {
    (*(v237 + 8))(v94, v238);
    sub_1DAD64398(v248, &qword_1ECC07CE8, &qword_1DAED6F60);
    v152 = v255;
    sub_1DAD64398(v255, &qword_1ECC08D70, &unk_1DAED8710);
    v223(v116, 0, 1, v235);
    sub_1DAD7C48C(v116, v152, &qword_1ECC08D70, &unk_1DAED8710);
    goto LABEL_45;
  }

  (*(v237 + 8))(v94, v238);
  v118 = v117;
  v117 = 0;
  v119 = v234;
  sub_1DAD64398(v248, &qword_1ECC07CE8, &qword_1DAED6F60);
  v120 = v260;
  sub_1DAD64398(v260, &qword_1ECC07CE8, &qword_1DAED6F60);
  v119(v120, 1, 1, v242);
  v121 = *(v73 + v251);
  v122 = *(v121 + 16);

  os_unfair_lock_lock(v122);
  v123 = *(v73 + v228);
  if (!*(v123 + 16))
  {
    v125 = v62;
LABEL_34:
    v128 = 0;
    goto LABEL_35;
  }

  v124 = sub_1DAECB0A8(v62);
  v125 = v62;
  if ((v126 & 1) == 0)
  {

    goto LABEL_34;
  }

  v127 = *(*(v123 + 56) + 8 * v124);

  v128 = *(v127 + 16);

LABEL_35:
  os_unfair_lock_unlock(*(v121 + 16));

  swift_getErrorValue();
  v129 = sub_1DADBBC8C(v263[2], v263[3]);
  v131 = v130;
  __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  v132 = v239;
  sub_1DAED0FCC();
  v261 = 0;
  v262 = 0xE000000000000000;
  sub_1DAED256C();

  v261 = 0x727520676E697355;
  v262 = 0xEB0000000060206CLL;
  sub_1DAE167B4(&qword_1EE00BD10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v133 = v238;
  v134 = sub_1DAED287C();
  v135 = v132;
  MEMORY[0x1E127DA50](v134);

  MEMORY[0x1E127DA50](0x202E2E2E2060, 0xE600000000000000);
  MEMORY[0x1E127DA50](v129, v131);

  v136 = v262;
  v256 = v261;
  (*(v237 + 8))(v135, v133);
  v137 = *(v250 + 16);
  v62 = v125;
  v138 = v240;
  if (v128)
  {
    v139 = v233;
    v140 = v241;
    v137(v233, v62, v241);

    v141 = sub_1DAECEDCC();
    v142 = sub_1DAED201C();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v254 = swift_slowAlloc();
      v261 = v254;
      *v143 = 136446466;
      sub_1DAD64B94(&qword_1EE0057A0, &unk_1ECC0A9C0, &unk_1DAED8030, MEMORY[0x1E6993E20]);
      v144 = sub_1DAED287C();
      v145 = v118;
      v147 = v146;
      (*(v250 + 8))(v139, v140);
      v148 = sub_1DAD6482C(v144, v147, &v261);
      v118 = v145;
      v117 = 0;

      *(v143 + 4) = v148;
      *(v143 + 12) = 2082;
      v149 = v256;
      *(v143 + 14) = sub_1DAD6482C(v256, v136, &v261);
      _os_log_impl(&dword_1DAD61000, v141, v142, "Content load failed: unable to find or unarchive file for key: %{public}s. The session may still produce one shortly. Error: %{public}s", v143, 0x16u);
      v150 = v254;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v150, -1, -1);
      v151 = v143;
      v62 = v258;
      MEMORY[0x1E127F100](v151, -1, -1);

      v152 = v255;
    }

    else
    {

      (*(v250 + 8))(v139, v140);
      v152 = v255;
      v149 = v256;
    }

    v261 = 0;
    v262 = 0xE000000000000000;
    sub_1DAED256C();

    v261 = 0xD000000000000030;
    v262 = 0x80000001DAEE18B0;
  }

  else
  {
    v153 = v241;
    v137(v240, v125, v241);

    v154 = sub_1DAECEDCC();
    v155 = sub_1DAED203C();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v254 = 0;
      v158 = v157;
      v261 = v157;
      *v156 = 136446466;
      v159 = sub_1DAED0E1C();
      v160 = v118;
      v162 = v161;
      (*(v250 + 8))(v138, v153);
      v163 = sub_1DAD6482C(v159, v162, &v261);
      v118 = v160;

      *(v156 + 4) = v163;
      *(v156 + 12) = 2082;
      v149 = v256;
      *(v156 + 14) = sub_1DAD6482C(v256, v136, &v261);
      _os_log_impl(&dword_1DAD61000, v154, v155, "Content load failed: initial search for an existing archive was not found; session will be creating the content on demand: %{public}s: %{public}s", v156, 0x16u);
      swift_arrayDestroy();
      v164 = v158;
      v117 = v254;
      MEMORY[0x1E127F100](v164, -1, -1);
      v165 = v156;
      v62 = v258;
      MEMORY[0x1E127F100](v165, -1, -1);

      v152 = v255;
    }

    else
    {

      (*(v250 + 8))(v138, v153);
      v152 = v255;
      v149 = v256;
    }

    v261 = 0;
    v262 = 0xE000000000000000;
    sub_1DAED256C();
    MEMORY[0x1E127DA50](0xD000000000000031, 0x80000001DAEE1870);
  }

  MEMORY[0x1E127DA50](v149, v136);

  v264 = v261;
  v265 = v262;
  v73 = v259;
LABEL_45:
  v166 = *(v73 + v251);
  v167 = *(v166 + 16);

  os_unfair_lock_lock(v167);
  v168 = v260;
  sub_1DAE15B04(v73, v62, v152, v260, &v264);
  if (!v117)
  {

    os_unfair_lock_unlock(*(v166 + 16));

    sub_1DAD64398(v152, &qword_1ECC08D70, &unk_1DAED8710);
    sub_1DAD64398(v257, &qword_1ECC08D70, &unk_1DAED8710);
    v102 = v168;
    goto LABEL_47;
  }

  os_unfair_lock_unlock(*(v166 + 16));
  __break(1u);
}

uint64_t sub_1DAE15B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v71 = a4;
  v72 = a5;
  v73 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v69 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v61 - v16;
  v78 = sub_1DAED18CC();
  v17 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v61 - v21;
  v22 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  result = swift_beginAccess();
  v24 = *(a1 + v22);
  if (*(v24 + 16))
  {

    v25 = sub_1DAECB0A8(a2);
    if (v26)
    {
      v62 = a2;
      v63 = v10;
      v64 = v5;
      v27 = *(*(v24 + 56) + 8 * v25);

      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor), *(a1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor + 24));
      v28 = v75;
      sub_1DAED127C();
      v29 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry;
      v67 = v27;

      sub_1DAED0C8C();

      sub_1DAE167B4(&qword_1EE00AAF0, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
      v30 = v78;
      v31 = sub_1DAED1C9C();
      v32 = *(v17 + 8);
      v66 = v17 + 8;
      v32(v19, v30);
      v65 = v32;
      if (v31)
      {
        v76 = 0;
        v77 = 0xE000000000000000;
        sub_1DAED256C();
        MEMORY[0x1E127DA50](0xD000000000000041, 0x80000001DAEE2AC0);

        sub_1DAED0C8C();

        sub_1DAE167B4(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
        v33 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v33);

        v32(v19, v30);
        MEMORY[0x1E127DA50](0xD00000000000004CLL, 0x80000001DAEE1930);
        v34 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v34);

        MEMORY[0x1E127DA50](41, 0xE100000000000000);
        v36 = v76;
        v35 = v77;
        v37 = sub_1DAED1BEC();
        (*(*(v37 - 8) + 56))(v74, 1, 1, v37);

        sub_1DAED0CEC();

        sub_1DAED0CAC();

        v38 = sub_1DAECEDCC();
        v39 = sub_1DAED201C();

        v40 = os_log_type_enabled(v38, v39);
        v41 = v65;
        if (v40)
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v76 = v43;
          *v42 = 136446210;
          v44 = sub_1DAD6482C(v36, v35, &v76);

          *(v42 + 4) = v44;
          _os_log_impl(&dword_1DAD61000, v38, v39, "%{public}s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          MEMORY[0x1E127F100](v43, -1, -1);
          MEMORY[0x1E127F100](v42, -1, -1);

          return (v65)(v28, v30);
        }

        else
        {

          return v41(v28, v30);
        }
      }

      else
      {
        v61 = v29;
        *(v67 + 16) = 1;
        sub_1DAD6495C(v73, v14, &qword_1ECC08D70, &unk_1DAED8710);
        v45 = sub_1DAED1BEC();
        v46 = (*(*(v45 - 8) + 48))(v14, 1, v45);
        sub_1DAD64398(v14, &qword_1ECC08D70, &unk_1DAED8710);
        if (v46 != 1)
        {
          v48 = v68;
          v47 = v69;
          v49 = v63;
          (*(v69 + 16))(v68, v62, v63);
          v50 = sub_1DAECEDCC();
          v51 = sub_1DAED203C();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v76 = v53;
            *v52 = 136446210;
            v54 = sub_1DAED0E1C();
            v56 = v55;
            (*(v47 + 8))(v48, v49);
            v57 = sub_1DAD6482C(v54, v56, &v76);

            *(v52 + 4) = v57;
            _os_log_impl(&dword_1DAD61000, v50, v51, "Content load successful for key: %{public}s", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v53);
            MEMORY[0x1E127F100](v53, -1, -1);
            MEMORY[0x1E127F100](v52, -1, -1);
          }

          else
          {

            (*(v47 + 8))(v48, v49);
          }
        }

        v58 = v67;
        sub_1DAD6495C(v73, v74, &qword_1ECC08D70, &unk_1DAED8710);

        sub_1DAED0CEC();

        v59 = v70;
        sub_1DAD6495C(v71, v70, &qword_1ECC07CE8, &qword_1DAED6F60);
        v60 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_archiveLastModifiedDate;
        swift_beginAccess();
        sub_1DAD84E40(v59, v58 + v60);
        swift_endAccess();

        sub_1DAED0CAC();

        return (v65)(v75, v78);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1DAE1642C()
{

  v1 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__logger;
  v2 = sub_1DAECEDEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__environmentFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__descriptorProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader));

  v3 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_currentDataProtectionLevel;
  v4 = sub_1DAED18CC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_1DAE1655C()
{
  sub_1DAE1642C();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE165DC(uint64_t a1)
{
  result = sub_1DAECEDEC();
  if (v2 <= 0x3F)
  {
    result = sub_1DAED18CC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1DAE166E8(uint64_t a1)
{
  result = sub_1DAE167B4(&qword_1EE0062F0, type metadata accessor for ActivityArchiveEntryAssertion, &unk_1DAED7FD8);
  *(a1 + 8) = result;
  return result;
}

double sub_1DAE16740()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1DAE119CC(v2, v3, v4, v5);
}

uint64_t sub_1DAE167B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAE167FC(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = sub_1DADFAA54(*a1, a2);
  v9 = v7;
  if (v2)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1DAED247C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1DAED247C())
      {
        return v9;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v9;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1E127E1F0](v10, v6);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v12 = *(v6 + 8 * v10 + 32);

LABEL_17:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (!Strong || (, v12 != Strong))
    {
      if (v9 != v10)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x1E127E1F0](v9, v6);
          v14 = MEMORY[0x1E127E1F0](v10, v6);
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v15)
          {
            goto LABEL_48;
          }

          if (v10 >= v15)
          {
            goto LABEL_49;
          }

          v3 = *(v6 + 32 + 8 * v9);
          v14 = *(v6 + 32 + 8 * v10);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = sub_1DADFA95C();
          v16 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v4 = v6 & 0xFFFFFFFFFFFFFF8;
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v14;

        if ((v6 & 0x8000000000000000) != 0 || v16)
        {
          v6 = sub_1DADFA95C();
          v4 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            return v9;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v10 >= *(v4 + 16))
        {
          goto LABEL_46;
        }

LABEL_8:
        *(v4 + 8 * v10 + 32) = v3;

        *a1 = v6;
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_45;
      }
    }

    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return sub_1DAED247C();
}

void sub_1DAE16A78()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020) - 8);
  v5 = *(v0 + 16);
  v6 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  sub_1DAE13994(v5, v0 + v2, v6);
}

uint64_t sub_1DAE16B60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityContentDidChangeEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE16BC4(uint64_t a1)
{
  v2 = type metadata accessor for ActivityContentDidChangeEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAE16C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityContentDidChangeEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE16CA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE16D20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DAE16D68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DAE16DA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = sub_1DAECF33C();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DC8, &qword_1DAED8200);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = sub_1DAED064C();
  v16 = sub_1DAED061C();
  sub_1DAE171C4(v16, v15, &v54);

  v17 = sub_1DAE1784C(a1, v3);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_1DAED004C();
  LOBYTE(v69[0]) = 0;
  [a1 cornerRadius];
  v26 = v25;
  [a1 scaleFactor];
  v28 = v26 * v27;
  v29 = *(v7 + 28);
  v30 = *MEMORY[0x1E697F468];
  v31 = sub_1DAECF99C();
  (*(*(v31 - 8) + 104))(v9 + v29, v30, v31);
  *v9 = v28;
  v9[1] = v28;
  v32 = sub_1DAED060C();
  sub_1DAECF0DC();
  sub_1DADB1A4C(v9, v14);
  v33 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DD0, &qword_1DAED8208) + 36)];
  v34 = v51;
  *v33 = v50;
  *(v33 + 1) = v34;
  *(v33 + 4) = v52;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DD8, &qword_1DAED8210);
  *&v14[*(v35 + 52)] = v32;
  *&v14[*(v35 + 56)] = 256;
  v36 = sub_1DAED091C();
  v38 = v37;
  sub_1DAE17A44(v9);
  v39 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DE0, &qword_1DAED8218) + 36)];
  *v39 = v36;
  v39[1] = v38;
  v40 = v49;
  sub_1DAD6495C(v14, v49, &qword_1ECC08DC8, &qword_1DAED8200);
  *&v65 = v59;
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v60 = v54;
  v61 = v55;
  BYTE8(v65) = v24;
  *(&v65 + 9) = *v53;
  HIDWORD(v65) = *&v53[3];
  *&v66 = v17;
  *(&v66 + 1) = v19;
  *&v67 = v21;
  *(&v67 + 1) = v23;
  v68 = 0;
  v41 = v66;
  v42 = v67;
  *(a3 + 128) = 0;
  *(a3 + 96) = v41;
  *(a3 + 112) = v42;
  v43 = v60;
  v44 = v61;
  v45 = v65;
  *(a3 + 64) = v64;
  *(a3 + 80) = v45;
  v46 = v63;
  *(a3 + 32) = v62;
  *(a3 + 48) = v46;
  *a3 = v43;
  *(a3 + 16) = v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08DE8, &qword_1DAED8220);
  sub_1DAD6495C(v40, a3 + *(v47 + 48), &qword_1ECC08DC8, &qword_1DAED8200);
  sub_1DAD6495C(&v60, v69, &qword_1ECC08DF0, &qword_1DAED8228);
  sub_1DAD64398(v14, &qword_1ECC08DC8, &qword_1DAED8200);
  sub_1DAD64398(v40, &qword_1ECC08DC8, &qword_1DAED8200);
  v69[2] = v56;
  v69[3] = v57;
  v69[4] = v58;
  v70 = v59;
  v69[0] = v54;
  v69[1] = v55;
  v71 = v24;
  *v72 = *v53;
  *&v72[3] = *&v53[3];
  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  return sub_1DAD64398(v69, &qword_1ECC08DF0, &qword_1DAED8228);
}

uint64_t sub_1DAE171C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DAECF0DC();
  v7 = v31;
  v8 = v31 * 0.5;
  v9 = v32;
  v10 = DWORD1(v32);
  v11 = *(&v32 + 1);
  v12 = v33;

  v13 = sub_1DAED091C();
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  v29 = v32;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v28 = v34[0];
  v14 = *v30;
  v15 = *&v30[16];
  v37 = *v30;
  v38 = *&v30[16];
  v36[0] = v34[0];
  v36[1] = v32;
  *&v39 = v13;
  *(&v39 + 1) = v16;
  v17 = v32;
  *(a3 + 8) = v34[0];
  v18 = v38;
  *(a3 + 72) = v39;
  v19 = v37;
  *(a3 + 56) = v18;
  *a3 = a2;
  *(a3 + 40) = v19;
  *(a3 + 24) = v17;
  v40[2] = v14;
  v40[3] = v15;
  v40[0] = v28;
  v40[1] = v29;
  v41 = v13;
  v42 = v16;
  sub_1DAD6495C(v34, v21, &qword_1ECC08DF8, &qword_1DAED8230);

  sub_1DAD6495C(v36, v21, &qword_1ECC08E00, &qword_1DAED8238);
  sub_1DAD64398(v40, &qword_1ECC08E00, &qword_1DAED8238);
  *v21 = v8;
  *&v21[1] = v7;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = a1;
  v27 = 256;
  return sub_1DAD64398(v21, &qword_1ECC08DF8, &qword_1DAED8230);
}

__n128 sub_1DAE17378@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v8 = sub_1DAECFA2C();
  sub_1DAE1746C(a1, a2, v15);
  *&v14[7] = v15[0];
  *&v14[23] = v15[1];
  *&v14[39] = v15[2];
  *&v14[55] = v15[3];
  v9 = sub_1DAED066C();
  v10 = sub_1DAED060C();
  LOBYTE(a2) = sub_1DAED004C();
  v11 = sub_1DAED01BC();
  KeyPath = swift_getKeyPath();
  *(a5 + 33) = *&v14[16];
  result = *&v14[32];
  *(a5 + 49) = *&v14[32];
  *(a5 + 65) = *&v14[48];
  *a5 = v8;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 17) = *v14;
  *(a5 + 80) = *&v14[63];
  *(a5 + 88) = v9;
  *(a5 + 96) = v10;
  *(a5 + 104) = a2;
  *(a5 + 112) = KeyPath;
  *(a5 + 120) = v11;
  return result;
}

uint64_t sub_1DAE1746C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = sub_1DAECF96C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1DAECF95C();
  sub_1DAECF94C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087D0, &qword_1DAED7228);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DAED6200;
  [a1 scaleFactor];
  v9 = v8;
  *(v7 + 56) = MEMORY[0x1E69E7DE0];
  *(v7 + 64) = sub_1DAE177F8();
  *(v7 + 32) = v9;
  sub_1DAED1D1C();
  sub_1DAECF93C();

  sub_1DAECF94C();
  sub_1DAECF98C();
  v10 = sub_1DAED033C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1DAECF95C();
  sub_1DAECF94C();
  sub_1DAE17924(a1, v3);
  sub_1DAECF93C();

  sub_1DAECF94C();
  sub_1DAECF98C();
  v17 = sub_1DAED033C();
  v19 = v18;
  v20 = v14 & 1;
  v25 = v14 & 1;
  v22 = v21 & 1;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v20;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  *(a3 + 40) = v18;
  *(a3 + 48) = v21 & 1;
  *(a3 + 56) = v23;
  sub_1DAE17A34(v10, v12, v20);

  sub_1DAE17A34(v17, v19, v22);

  sub_1DADEA34C(v17, v19, v22);

  sub_1DADEA34C(v10, v12, v25);
}

void sub_1DAE17704(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v3;
}

uint64_t sub_1DAE17784(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

unint64_t sub_1DAE177F8()
{
  result = qword_1ECC08DC0;
  if (!qword_1ECC08DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08DC0);
  }

  return result;
}

double sub_1DAE1784C(void *a1, char a2)
{
  v4 = [a1 margins];
  v5 = v4;
  v6 = &selRef_contentMargins;
  if ((a2 & 1) == 0)
  {
    v6 = &selRef_backgroundRemovedContentMargins;
  }

  [v4 *v6];
  v8 = v7;

  [a1 scaleFactor];
  v10 = v8 * v9;
  [a1 scaleFactor];
  [a1 scaleFactor];
  [a1 scaleFactor];
  return v10;
}

uint64_t sub_1DAE17924(void *a1, char a2)
{
  v3 = [a1 margins];
  v4 = v3;
  v5 = &selRef_contentMargins;
  if ((a2 & 1) == 0)
  {
    v5 = &selRef_backgroundRemovedContentMargins;
  }

  [v3 *v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087D0, &qword_1DAED7228);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DAED7A10;
  v15 = MEMORY[0x1E69E7DE0];
  *(v14 + 56) = MEMORY[0x1E69E7DE0];
  v16 = sub_1DAE177F8();
  *(v14 + 64) = v16;
  *(v14 + 32) = v7;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 72) = v9;
  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  *(v14 + 112) = v11;
  *(v14 + 176) = v15;
  *(v14 + 184) = v16;
  *(v14 + 152) = v13;

  return sub_1DAED1D1C();
}

uint64_t sub_1DAE17A34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1DAE17A44(uint64_t a1)
{
  v2 = sub_1DAECF33C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CompactLiveActivityView.init(leadingView:trailingView:spacing:smartStackPlatterPadding:launchRequestHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v23[0] = a5;
  v23[1] = a6;
  v23[2] = a7;
  v23[3] = a8;
  v20 = type metadata accessor for CompactLiveActivityView(0, v23);
  v21 = (a9 + v20[16]);
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  result = (*(*(a6 - 8) + 32))(a9 + v20[13], a2, a6);
  *(a9 + v20[14]) = a10;
  *(a9 + v20[15]) = a11;
  *v21 = a3;
  v21[1] = a4;
  return result;
}

uint64_t CompactLiveActivityView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a1;
  v63 = a2;
  v3 = sub_1DAECF2DC();
  v46 = v3;
  v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a1 - 8);
  *&v59 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E10, &unk_1DAED8250);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E18, &qword_1DAED9270);
  v8 = sub_1DAECF2AC();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1DAD64B94(&qword_1ECC08E20, &qword_1ECC08E10, &unk_1DAED8250, MEMORY[0x1E697FDC0]);
  v78 = WitnessTable;
  v79 = v10;
  v76 = swift_getWitnessTable();
  v77 = MEMORY[0x1E697E5D8];
  v11 = swift_getWitnessTable();
  v12 = sub_1DAD64B94(&qword_1ECC08E28, &qword_1ECC08E18, &qword_1DAED9270, MEMORY[0x1E697FD58]);
  v74 = v11;
  v75 = v12;
  v54 = v8;
  v53 = swift_getWitnessTable();
  v13 = sub_1DAED07BC();
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v45 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E30, &qword_1DAED8260);
  v50 = v13;
  v15 = sub_1DAECF2AC();
  v47 = v15;
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v45 - v16;
  v17 = swift_getWitnessTable();
  v45 = v17;
  v18 = sub_1DAD64B94(&qword_1ECC08E38, &qword_1ECC08E30, &qword_1DAED8260, MEMORY[0x1E697F940]);
  v72 = v17;
  v73 = v18;
  v19 = swift_getWitnessTable();
  v49 = v19;
  v48 = sub_1DAE183BC();
  v68 = v15;
  v69 = v3;
  v70 = v19;
  v71 = v48;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v45 - v26;
  v28 = v57;
  v29 = v7;
  v30 = v7;
  v31 = v60;
  v32 = v58;
  (*(v57 + 16))(v30, v60, v58, v25);
  v33 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v34 = swift_allocObject();
  v59 = *(v32 + 32);
  v35 = v59;
  *(v34 + 16) = v64;
  *(v34 + 32) = v35;
  (*(v28 + 32))(v34 + v33, v29, v32);
  v65 = v64;
  v66 = v59;
  v67 = v31;
  v36 = v52;
  sub_1DAED07AC();
  sub_1DAED091C();
  v37 = v51;
  v38 = v50;
  sub_1DAED03CC();
  (*(v56 + 8))(v36, v38);
  v39 = v61;
  sub_1DAECF2CC();
  v40 = v47;
  v41 = v46;
  sub_1DAED03FC();
  (*(v62 + 8))(v39, v41);
  (*(v55 + 8))(v37, v40);
  v42 = *(v21 + 16);
  v42(v27, v23, OpaqueTypeMetadata2);
  v43 = *(v21 + 8);
  v43(v23, OpaqueTypeMetadata2);
  v42(v63, v27, OpaqueTypeMetadata2);
  return (v43)(v27, OpaqueTypeMetadata2);
}

unint64_t sub_1DAE183BC()
{
  result = qword_1ECC08E40[0];
  if (!qword_1ECC08E40[0])
  {
    sub_1DAECF2DC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC08E40);
  }

  return result;
}

uint64_t sub_1DAE18414()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v9 = v0[2];
  v1 = v9;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v5 = *(*(type metadata accessor for CompactLiveActivityView(0, &v9) - 8) + 80);
  v9 = v1;
  v10 = v2;
  v6 = (v5 + 48) & ~v5;
  v11 = v3;
  v12 = v4;
  result = type metadata accessor for CompactLiveActivityView(0, &v9);
  v8 = (v0 + *(result + 64) + v6);
  if (*v8)
  {
    return (*v8)();
  }

  return result;
}

uint64_t sub_1DAE184C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v44 = a5;
  v33 = a4;
  v37 = a1;
  v43 = a6;
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  v9 = sub_1DAED07DC();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E10, &unk_1DAED8250);
  v12 = sub_1DAECF2AC();
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v33 - v13;
  v14 = sub_1DAECF2AC();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v33 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08E18, &qword_1DAED9270);
  v16 = sub_1DAECF2AC();
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v36 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v33 - v19;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = v44;
  v49 = v37;
  sub_1DAECF8FC();
  sub_1DAED07CC();
  WitnessTable = swift_getWitnessTable();
  v21 = v34;
  sub_1DAED049C();
  (*(v38 + 8))(v11, v9);
  sub_1DAED003C();
  v56[0] = a2;
  v56[1] = a3;
  v56[2] = v33;
  v56[3] = v44;
  type metadata accessor for CompactLiveActivityView(0, v56);
  v22 = sub_1DAD64B94(&qword_1ECC08E20, &qword_1ECC08E10, &unk_1DAED8250, MEMORY[0x1E697FDC0]);
  v54 = WitnessTable;
  v55 = v22;
  v23 = swift_getWitnessTable();
  v24 = v35;
  sub_1DAED058C();
  (*(v41 + 8))(v21, v12);
  v52 = v23;
  v53 = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  sub_1DAE19364();
  v26 = v36;
  sub_1DAED043C();
  (*(v42 + 8))(v24, v14);
  v27 = sub_1DAD64B94(&qword_1ECC08E28, &qword_1ECC08E18, &qword_1DAED9270, MEMORY[0x1E697FD58]);
  v50 = v25;
  v51 = v27;
  swift_getWitnessTable();
  v28 = v39;
  v29 = *(v39 + 16);
  v30 = v40;
  v29(v40, v26, v16);
  v31 = *(v28 + 8);
  v31(v26, v16);
  v29(v43, v30, v16);
  return (v31)(v30, v16);
}

uint64_t sub_1DAE18A9C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v36 = a5;
  v41 = a6;
  v37 = *(a3 - 1);
  v11 = v37;
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v35 - v14;
  v40 = *(v15 - 8);
  v16 = v40;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v35 - v22;
  v24 = *(v16 + 16);
  v24(&v35 - v22, a1, a2, v21);
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v25 = type metadata accessor for CompactLiveActivityView(0, &v48);
  v26 = *(a1 + *(v25 + 56));
  v27 = *(v11 + 16);
  v28 = a1 + *(v25 + 52);
  v29 = v38;
  v27(v38, v28, a3);
  (v24)(v19, v23, a2);
  v46 = v26;
  v47 = 0;
  v48 = v19;
  v49 = &v46;
  v30 = v39;
  v27(v39, v29, a3);
  v50 = v30;
  v31 = v30;
  v45[0] = a2;
  v45[1] = MEMORY[0x1E6981840];
  v45[2] = a3;
  v42 = v35;
  v43 = MEMORY[0x1E6981838];
  v44 = v36;
  sub_1DADB7ABC(&v48, 3uLL, v45);
  v32 = *(v37 + 8);
  v32(v29, a3);
  v33 = *(v40 + 8);
  v33(v23, a2);
  v32(v31, a3);
  return (v33)(v19, a2);
}

uint64_t sub_1DAE18D70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAED063C();
  *a1 = result;
  return result;
}

void sub_1DAE18DE8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1DAD6F984(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DAE18E9C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))(a1);
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *((((((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  if ((v24 + 1) >= 2)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_1DAE19094(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((v11 + 7 + v14) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(result + v16) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v16) = 0;
      }

      else if (v20)
      {
        *(result + v16) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = ((result + v13) & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = ((((((result + v15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v27 = 0;
            v27[1] = 0;
            *v27 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v27 = a2;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(result + v16) = v22;
    }

    else
    {
      *(result + v16) = v22;
    }
  }

  else if (v20)
  {
    *(result + v16) = v22;
  }

  return result;
}

unint64_t sub_1DAE19364()
{
  result = qword_1ECC08ED0;
  if (!qword_1ECC08ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08ED0);
  }

  return result;
}

uint64_t ActivityArchivedViewCollection.ViewEntry.containsPrivacyRedactions.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  sub_1DAED1B7C();
  v3 = sub_1DAED1B1C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1DAD64398(v2, &unk_1ECC0A520, &unk_1DAED6D30);
    v5 = 0;
  }

  else
  {
    v5 = sub_1DAED1AEC();
    (*(v4 + 8))(v2, v3);
  }

  return v5 & 1;
}

uint64_t sub_1DAE194E4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DAED1B5C();
  *a2 = result;
  return result;
}

uint64_t sub_1DAE1950C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE1958C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  sub_1DAED1B7C();
  v3 = sub_1DAED1B1C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1DAD64398(v2, &unk_1ECC0A520, &unk_1DAED6D30);
    v5 = 0;
  }

  else
  {
    v5 = sub_1DAED1AEC();
    (*(v4 + 8))(v2, v3);
  }

  return v5 & 1;
}

uint64_t sub_1DAE196AC()
{
  v1 = OBJC_IVAR____TtCC14WidgetRenderer36ActivityPreviewHostingViewController15StateController__stateIndex;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09068, &qword_1DAED85F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE19754@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivityPreviewHostingViewController.StateController(0);
  result = sub_1DAECEE4C();
  *a2 = result;
  return result;
}

double sub_1DAE19794()
{
  v1 = v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1DAE197DC(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double sub_1DAE19894()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE198D8(double a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DAE19988()
{
  v0 = sub_1DAED187C();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v37 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1DAED1BEC();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v36 - v5;
  v6 = sub_1DAED1A5C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = sub_1DAED182C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *MEMORY[0x1E6985918];
  v19 = *(v14 + 104);
  v44 = v20;
  v40 = v19;
  (v19)(v17, v18, v15);
  v21 = *(v7 + 16);
  v21(v12, v46 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind, v6);
  v22 = (*(v7 + 88))(v12, v6);
  if (v22 != *MEMORY[0x1E6985A88])
  {
    v26 = v44;
    if (v22 != *MEMORY[0x1E6985A90])
    {
      goto LABEL_11;
    }

    (*(v14 + 8))(v17, v44);
    v28 = v17;
    v29 = v18;
    goto LABEL_10;
  }

  v21(v9, v12, v6);
  (*(v7 + 96))(v9, v6);
  v23 = sub_1DAED1A4C();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 88))(v9, v23);
  if (v25 == *MEMORY[0x1E6985A70])
  {
    v26 = v44;
    (*(v14 + 8))(v17, v44);
    v27 = 1;
LABEL_8:
    *v17 = v27;
LABEL_9:
    v29 = *MEMORY[0x1E6985910];
    v28 = v17;
LABEL_10:
    v40(v28, v29, v26);
    goto LABEL_11;
  }

  if (v25 == *MEMORY[0x1E6985A78])
  {
    v26 = v44;
    (*(v14 + 8))(v17, v44);
    v27 = 3;
    goto LABEL_8;
  }

  if (v25 == *MEMORY[0x1E6985A80])
  {
    v26 = v44;
    (*(v14 + 8))(v17, v44);
    *v17 = 0;
    goto LABEL_9;
  }

  (*(v24 + 8))(v9, v23);
  v26 = v44;
LABEL_11:
  (*(v7 + 8))(v12, v6);
  v30 = v41;
  sub_1DAE1B740(v41);
  sub_1DAED1BDC();
  v31 = v45;
  sub_1DAED1BCC();
  (*(v42 + 8))(v30, v43);

  v32 = sub_1DAED1B8C();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    (*(v14 + 8))(v17, v26);
    return sub_1DAD64398(v31, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  else
  {
    v35 = v37;
    sub_1DAED1B6C();
    (*(v33 + 8))(v31, v32);
    sub_1DAED185C();
    (*(v38 + 8))(v35, v39);
    return (*(v14 + 8))(v17, v26);
  }
}

uint64_t sub_1DAE1A068()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAE1A0AC(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ActivityPreviewHostingViewController.viewKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind;
  v4 = sub_1DAED1A5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAE1A200(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1DAE1A26C()
{
  v1 = (v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1DAE1A2C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void ActivityPreviewHostingViewController.__allocating_init(viewCollections:currentStateIndex:widgetLocation:environment:viewKind:apertureTopEdgeMetric:islandSize:renderBoxRendersAsynchronously:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v81) = a8;
  v79 = a7;
  v78 = a6;
  v77 = a5;
  v84 = a10;
  v82 = a12;
  v83 = a3;
  v86 = a1;
  v87 = a11;
  v17 = sub_1DAECFFCC();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v71 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0);
  MEMORY[0x1EEE9AC00](v85);
  v76 = (&v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = objc_allocWithZone(v12);
  v21 = &v20[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize];
  v75 = &v20[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize];
  *v21 = 0;
  v21[1] = 0;
  v73 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  *&v20[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric] = 0;
  v20[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced] = 0;
  *&v20[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewCollections] = a1;
  v80 = type metadata accessor for ActivityPreviewHostingViewController.StateController(0);
  v22 = swift_allocObject();
  v74 = v22;
  swift_beginAccess();
  v91 = a2;

  sub_1DAECEEFC();
  swift_endAccess();
  *&v20[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_stateController] = v22;
  v23 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_environment;
  v24 = sub_1DAECF8EC();
  v70 = *(v24 - 8);
  v72 = *(v70 + 16);
  v72(&v20[v23], a4, v24);
  v25 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind;
  v26 = sub_1DAED1A5C();
  v69 = *(v26 - 8);
  v27 = *(v69 + 16);
  v28 = &v20[v25];
  v29 = v85;
  v30 = v77;
  v27(v28, v77, v26);
  v31 = v73;
  swift_beginAccess();
  *&v20[v31] = a9;
  if (v81)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = *&v78;
  }

  if (v81)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = *&v79;
  }

  v34 = v75;
  swift_beginAccess();
  *v34 = v32;
  v34[1] = v33;
  v35 = &v20[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName];
  v36 = v82;
  *v35 = v87;
  v35[1] = v36;
  v37 = v76 + v29[8];
  v81 = a4;
  v79 = v24;
  v38 = v24;
  v39 = v76;
  v72(v37, a4, v38);
  v40 = v30;
  v41 = v39 + v29[9];
  v78 = v26;
  v27(v41, v30, v26);
  v42 = v36;
  v39[2] = 0;
  v43 = (v39 + v29[12]);
  v90 = 0;
  swift_bridgeObjectRetain_n();
  v44 = v86;

  sub_1DAED076C();
  v45 = v89;
  *v43 = v88;
  v43[1] = v45;
  v39[4] = v44;
  sub_1DAE2002C(&qword_1ECC08F18, type metadata accessor for ActivityPreviewHostingViewController.StateController, &unk_1DAED8494);
  *v39 = sub_1DAECF21C();
  v39[1] = v46;
  v39[3] = v83;
  v47 = (v39 + v29[10]);
  *v47 = v32;
  v47[1] = v33;
  v48 = (v39 + v29[11]);
  *v48 = v87;
  v48[1] = v42;
  sub_1DAE1B934(v39, &v20[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_autoupdatingPreviewView]);
  v49 = sub_1DAED087C();
  v20[OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_requiresStrictViewFraming] = 0;
  *&v20[OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters] = 0;
  v20[OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize] = 1;
  _s14WidgetRenderer12ViewDecodersC018registerArchivablecD0yyFZ_0();
  sub_1DADA5544(v49, 0, 1, v84);
  v51 = v50;

  v52 = v51;
  v53 = [v52 view];
  if (!v53)
  {
    __break(1u);
    goto LABEL_12;
  }

  v54 = v53;
  v55 = [v53 layer];

  sub_1DAE19988();
  [v55 setCornerRadius_];

  v56 = [v52 view];
  if (!v56)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v57 = [v56 layer];

  [v57 setMasksToBounds_];
  v58 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v59 = *&v52[v58];
  v60 = v52;
  v61 = v59;
  sub_1DAECFA6C();

  v62 = *&v52[v58];
  sub_1DAECFFBC();
  sub_1DAECFA5C();

  v63 = [*&v52[v58] view];
  if (v63)
  {
    v64 = v63;

    v65 = [objc_opt_self() blackColor];
    [v64 setBackgroundColor_];

    sub_1DAE1FFC8(&v60[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_autoupdatingPreviewView], v39);
    sub_1DAE2002C(&qword_1ECC08F20, type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView, &unk_1DAED8444);
    v66 = sub_1DAED087C();
    v67 = *&v52[v58];
    v90 = v66;
    v68 = v67;

    sub_1DAECFABC();

    (*(v69 + 8))(v40, v78);
    (*(v70 + 8))(v81, v79);
    return;
  }

LABEL_13:
  __break(1u);
}

void ActivityPreviewHostingViewController.init(viewCollections:currentStateIndex:widgetLocation:environment:viewKind:apertureTopEdgeMetric:islandSize:renderBoxRendersAsynchronously:appName:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v77) = a8;
  v76 = a7;
  v75 = a6;
  v82 = a5;
  v83 = a4;
  v81 = a10;
  v79 = a12;
  v80 = a3;
  v84 = a11;
  v17 = sub_1DAECFFCC();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v70 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0);
  MEMORY[0x1EEE9AC00](v19);
  v74 = (&v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize);
  *v21 = 0.0;
  v21[1] = 0.0;
  v22 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric;
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric) = 0;
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced) = 0;
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewCollections) = a1;
  v73 = a1;
  v78 = type metadata accessor for ActivityPreviewHostingViewController.StateController(0);
  v23 = swift_allocObject();
  v72 = v23;
  swift_beginAccess();
  v88 = a2;

  sub_1DAECEEFC();
  swift_endAccess();
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_stateController) = v23;
  v24 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_environment;
  v25 = sub_1DAECF8EC();
  v69 = *(v25 - 8);
  v71 = *(v69 + 16);
  v71(v12 + v24, a4, v25);
  v26 = OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind;
  v27 = sub_1DAED1A5C();
  v68 = *(v27 - 8);
  v28 = *(v68 + 16);
  v29 = v12 + v26;
  v30 = v19;
  v31 = v82;
  v28(v29, v82, v27);
  swift_beginAccess();
  *(v12 + v22) = a9;
  if (v77)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = *&v75;
  }

  if (v77)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = *&v76;
  }

  swift_beginAccess();
  *v21 = v32;
  v21[1] = v33;
  v34 = (v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_appName);
  v35 = v83;
  v36 = v79;
  *v34 = v84;
  v34[1] = v36;
  v37 = v74 + v30[8];
  v77 = v25;
  v38 = v25;
  v39 = v74;
  v71(v37, v35, v38);
  v40 = v39 + v30[9];
  v76 = v27;
  v28(v40, v31, v27);
  v41 = v36;
  v39[2] = 0;
  v42 = (v39 + v30[12]);
  v87 = 0;
  swift_bridgeObjectRetain_n();
  v43 = v73;

  sub_1DAED076C();
  v44 = v86;
  *v42 = v85;
  v42[1] = v44;
  v39[4] = v43;
  sub_1DAE2002C(&qword_1ECC08F18, type metadata accessor for ActivityPreviewHostingViewController.StateController, &unk_1DAED8494);
  *v39 = sub_1DAECF21C();
  v39[1] = v45;
  v39[3] = v80;
  v46 = (v39 + v30[10]);
  *v46 = v32;
  v46[1] = v33;
  v80 = v30;
  v47 = (v39 + v30[11]);
  *v47 = v84;
  v47[1] = v41;
  sub_1DAE1B934(v39, v12 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_autoupdatingPreviewView);
  v48 = sub_1DAED087C();
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_requiresStrictViewFraming) = 0;
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_inlineTextParameters) = 0;
  *(v12 + OBJC_IVAR____TtC14WidgetRenderer28PreviewHostingViewController_metricsDefineSize) = 1;
  _s14WidgetRenderer12ViewDecodersC018registerArchivablecD0yyFZ_0();
  sub_1DADA5544(v48, 0, 1, v81);
  v50 = v49;

  v51 = v50;
  v52 = [v51 view];
  if (!v52)
  {
    __break(1u);
    goto LABEL_12;
  }

  v53 = v52;
  v54 = [v52 layer];

  sub_1DAE19988();
  [v54 setCornerRadius_];

  v55 = [v51 view];
  if (!v55)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v56 = [v55 layer];

  [v56 setMasksToBounds_];
  v57 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v58 = *&v51[v57];
  v59 = v51;
  v60 = v58;
  sub_1DAECFA6C();

  v61 = *&v51[v57];
  sub_1DAECFFBC();
  sub_1DAECFA5C();

  v62 = [*&v51[v57] view];
  if (v62)
  {
    v63 = v62;

    v64 = [objc_opt_self() blackColor];
    [v63 setBackgroundColor_];

    sub_1DAE1FFC8(&v59[OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_autoupdatingPreviewView], v39);
    sub_1DAE2002C(&qword_1ECC08F20, type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView, &unk_1DAED8444);
    v65 = sub_1DAED087C();
    v66 = *&v51[v57];
    v87 = v65;
    v67 = v66;

    sub_1DAECFABC();

    (*(v68 + 8))(v82, v76);
    (*(v69 + 8))(v83, v77);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1DAE1B20C(void *a1)
{
  [a1 preferredContentSize];
  [v1 setPreferredContentSize_];
  v3 = [v1 view];
  if (v3)
  {
    [a1 preferredContentSize];
    [v3 frame];
    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id ActivityPreviewHostingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ActivityPreviewHostingViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_islandSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_apertureTopEdgeMetric) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_isLuminanceReduced) = 0;
  sub_1DAED273C();
  __break(1u);
}

double sub_1DAE1B50C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1DAECEF4C();
  }

  else
  {
    if (qword_1EE0071E8 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EE0118A0);
    sub_1DAECF1DC();
  }

  return result;
}

uint64_t sub_1DAE1B61C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE1B6B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  return v1;
}

void sub_1DAE1B740(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewCollections);
  v4 = *(v3 + 16);
  if (v7 < v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1DAECEF3C();

    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7 < *(v3 + 16))
      {
        v5 = sub_1DAED1BEC();
        (*(*(v5 - 8) + 16))(a1, v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v7, v5);
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = sub_1DAED1BEC();
  (*(*(v6 - 8) + 16))(a1, v3 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
}

uint64_t sub_1DAE1B934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE1B998@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAED1B8C();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1DAED182C();
  v41 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED1BEC();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v36 - v13;
  v14 = sub_1DAED1A5C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  v22 = *(v15 + 16);
  v22(&v36 - v20, v1 + OBJC_IVAR____TtC14WidgetRenderer36ActivityPreviewHostingViewController_viewKind, v14, v19);
  if ((*(v15 + 88))(v21, v14) != *MEMORY[0x1E6985A88])
  {
    goto LABEL_5;
  }

  v37 = a1;
  (v22)(v17, v21, v14);
  (*(v15 + 96))(v17, v14);
  v23 = sub_1DAED1A4C();
  v24 = *(v23 - 8);
  if ((*(v24 + 88))(v17, v23) != *MEMORY[0x1E6985A70])
  {
    (*(v24 + 8))(v17, v23);
    a1 = v37;
LABEL_5:
    v27 = sub_1DAED187C();
    (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
    return (*(v15 + 8))(v21, v14);
  }

  sub_1DAE1B740(v9);
  *v6 = 1;
  v25 = v41;
  (*(v41 + 104))(v6, *MEMORY[0x1E6985910], v46);
  sub_1DAED1BDC();
  v26 = v43;
  sub_1DAED1BCC();

  (*(v25 + 8))(v6, v46);
  (*(v39 + 8))(v9, v40);
  v29 = v37;
  v31 = v44;
  v30 = v45;
  v32 = v42;
  sub_1DAD6495C(v26, v42, &unk_1ECC09E40, &qword_1DAED68E0);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    sub_1DAD64398(v26, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAD64398(v32, &unk_1ECC09E40, &qword_1DAED68E0);
    (*(v15 + 8))(v21, v14);
    v33 = sub_1DAED187C();
    return (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
  }

  v34 = v38;
  (*(v31 + 32))(v38, v32, v30);
  sub_1DAED1B6C();
  (*(v31 + 8))(v34, v30);
  sub_1DAD64398(v26, &unk_1ECC09E40, &qword_1DAED68E0);
  v35 = sub_1DAED187C();
  (*(*(v35 - 8) + 56))(v29, 0, 1, v35);
  return (*(v15 + 8))(v21, v14);
}

uint64_t sub_1DAE1C040(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAED1B8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  sub_1DAE1C3A8(a1, v20 - v12);
  sub_1DAD6495C(v13, v10, &unk_1ECC09E40, &qword_1DAED68E0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1DAD64398(v13, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAD64398(v10, &unk_1ECC09E40, &qword_1DAED68E0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v14 = sub_1DAED1B5C();
    v15 = *(v2 + 16);
    if (v15)
    {
      type metadata accessor for TintedWidgetViewModel(0);
      swift_allocObject();
      swift_beginAccess();
      v20[5] = v15;
      sub_1DADA657C();
      v16 = v15;
      sub_1DAECEEFC();
      swift_endAccess();
      sub_1DAE2002C(&qword_1EE008CE8, type metadata accessor for TintedWidgetViewModel, &protocol conformance descriptor for TintedWidgetViewModel);
      swift_retain_n();

      v20[1] = sub_1DAECF21C();
      v20[2] = v17;
      v20[3] = v14;
      v20[4] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FE0, &qword_1DAED8598);
      sub_1DAD64B94(&qword_1ECC08FE8, &qword_1ECC08FE0, &qword_1DAED8598, &protocol conformance descriptor for TintedWidgetView<A, B>);
      v18 = sub_1DAED087C();

      v14 = v18;
    }

    (*(v5 + 8))(v7, v4);
    sub_1DAD64398(v13, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  return v14;
}

uint64_t sub_1DAE1C3A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = v58 - v5;
  v6 = sub_1DAED1B8C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v61 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECF8EC();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v68 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAECF32C();
  v75 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v58 - v15;
  v17 = sub_1DAED1BEC();
  v77 = *(v17 - 8);
  v78 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v79 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v64 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = v58 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v62 = v58 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v67 = v58 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v58 - v29;
  v72 = v7;
  v31 = *(v7 + 56);
  v74 = v6;
  v65 = v31;
  v66 = v7 + 56;
  (v31)(v58 - v29, 1, 1, v6, v28);
  v32 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  v76 = v2;
  v33 = *(v2 + 32);
  if (v80 >= *(v33 + 16))
  {
    return sub_1DAD7C48C(v30, a2, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  v59 = v30;
  v60 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (v80 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v80 >= *(v33 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (*(v77 + 16))(v79, v33 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v80, v78);
  v34 = *(type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0) + 32);
  v35 = v76;
  sub_1DAECF46C();
  sub_1DAECF30C();
  sub_1DAE2002C(&qword_1EE00BE58, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  v36 = sub_1DAED23AC();
  v37 = *(v75 + 8);
  v37(v13, v11);
  v37(v16, v11);
  v58[1] = v34;
  if ((v36 & 1) == 0)
  {
    v11 = 0;
    v33 = v74;
    v32 = v72;
LABEL_17:
    v30 = v59;
LABEL_18:
    v41 = v79;
    goto LABEL_19;
  }

  (*(v70 + 16))(v68, v35 + v34, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09038, &unk_1DAED85C0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1DAED6200;
  sub_1DAECF31C();
  v80 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  sub_1DAECF47C();
  sub_1DAED1BDC();
  v39 = v67;
  v40 = v79;
  v11 = 0;
  sub_1DAED1BCC();
  v33 = v74;
  v41 = v40;

  v32 = v72;
  v43 = v62;
  v42 = v63;
  sub_1DAD6495C(v39, v62, &unk_1ECC09E40, &qword_1DAED68E0);
  v44 = (*(v32 + 48))(v43, 1, v33);
  if (v44 != 1)
  {
    v16 = *(v32 + 32);
    a2 = v61;
    (v16)(v61, v43, v33);
    sub_1DAED1B7C();
    v45 = sub_1DAED1B1C();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v42, 1, v45) == 1)
    {
      sub_1DAD64398(v42, &unk_1ECC0A520, &unk_1DAED6D30);
LABEL_16:
      (*(v32 + 8))(a2, v33);
      sub_1DAD64398(v67, &unk_1ECC09E40, &qword_1DAED68E0);
      (*(v70 + 8))(v68, v71);
      goto LABEL_17;
    }

    v47 = sub_1DAED1AEC();
    v48 = v42;
    v49 = v47;
    (*(v46 + 8))(v48, v45);
    if ((v49 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_1ECC07A18 == -1)
    {
LABEL_13:
      v50 = sub_1DAECEDEC();
      __swift_project_value_buffer(v50, qword_1ECC0DEC0);
      v51 = sub_1DAECEDCC();
      v52 = sub_1DAED200C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1DAD61000, v51, v52, "Preview placeholder containsPrivacyRedactions, switching to privacy", v53, 2u);
        MEMORY[0x1E127F100](v53, -1, -1);
      }

      sub_1DAD64398(v67, &unk_1ECC09E40, &qword_1DAED68E0);
      (*(v70 + 8))(v68, v71);
      v54 = v59;
      sub_1DAD64398(v59, &unk_1ECC09E40, &qword_1DAED68E0);
      (v16)(v54, a2, v33);
      v30 = v54;
      v65(v54, 0, 1, v33);
      goto LABEL_18;
    }

LABEL_29:
    swift_once();
    goto LABEL_13;
  }

  sub_1DAD64398(v39, &unk_1ECC09E40, &qword_1DAED68E0);
  (*(v70 + 8))(v68, v71);
  sub_1DAD64398(v43, &unk_1ECC09E40, &qword_1DAED68E0);
  v30 = v59;
LABEL_19:
  v55 = v69;
  sub_1DAD6495C(v30, v69, &unk_1ECC09E40, &qword_1DAED68E0);
  if ((*(v32 + 48))(v55, 1, v33) == 1)
  {
    sub_1DAD64398(v55, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAED1BDC();
    v56 = v64;
    sub_1DAED1BCC();
    if (v11)
    {

      (*(v77 + 8))(v41, v78);
      sub_1DAD64398(v30, &unk_1ECC09E40, &qword_1DAED68E0);
      v65(v56, 1, 1, v33);
    }

    else
    {

      (*(v77 + 8))(v41, v78);
      sub_1DAD64398(v30, &unk_1ECC09E40, &qword_1DAED68E0);
    }

    sub_1DAD7C48C(v56, v30, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  else
  {
    (*(v77 + 8))(v41, v78);
    sub_1DAD64398(v55, &unk_1ECC09E40, &qword_1DAED68E0);
  }

  a2 = v60;
  return sub_1DAD7C48C(v30, a2, &unk_1ECC09E40, &qword_1DAED68E0);
}

uint64_t sub_1DAE1CF28@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v264 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086B0, &unk_1DAED84D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v234 - v4;
  v6 = sub_1DAED1B8C();
  v266 = *(v6 - 8);
  v267 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v235 = &v234 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v249 = &v234 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v238 = &v234 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v242 = &v234 - v13;
  v256 = sub_1DAED17AC();
  v269 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v258 = &v234 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v259 = &v234 - v16;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08F80, &unk_1DAEDC8D0);
  MEMORY[0x1EEE9AC00](v253);
  v255 = &v234 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v240 = &v234 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v244 = &v234 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08698, &qword_1DAED84E0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v245 = &v234 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v234 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v257 = &v234 - v28;
  v270 = sub_1DAED182C();
  v274 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v268 = &v234 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v239 = &v234 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v243 = (&v234 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v247 = &v234 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v248 = &v234 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v246 = &v234 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v237 = &v234 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v241 = &v234 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v252 = &v234 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v261 = &v234 - v47;
  v275 = sub_1DAED1A5C();
  v271 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275);
  v251 = &v234 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v272 = &v234 - v50;
  v51 = type metadata accessor for ActivityPreviewHostingViewController._ActivityAutoupdatingPreviewView(0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v234 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1DAECF0AC();
  v262 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v277 = &v234 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = objc_opt_self();
  v260 = [v265 clearColor];
  if (qword_1ECC07A18 != -1)
  {
    swift_once();
  }

  v56 = sub_1DAECEDEC();
  v57 = __swift_project_value_buffer(v56, qword_1ECC0DEC0);
  sub_1DAE1FFC8(v2, v53);
  v250 = v57;
  v58 = sub_1DAECEDCC();
  v59 = sub_1DAED200C();
  v60 = os_log_type_enabled(v58, v59);
  v276 = v51;
  v236 = v5;
  v254 = v26;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = v54;
    v63 = v2;
    v64 = swift_slowAlloc();
    *&v287 = v64;
    *v61 = 136446210;
    v65 = sub_1DAECF3BC();
    v67 = v66;
    sub_1DAE20A70(v53);
    v68 = sub_1DAD6482C(v65, v67, &v287);
    v51 = v276;

    *(v61 + 4) = v68;
    _os_log_impl(&dword_1DAD61000, v58, v59, "Trying to use preview view for environment: %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    v69 = v64;
    v2 = v63;
    v54 = v62;
    MEMORY[0x1E127F100](v69, -1, -1);
    MEMORY[0x1E127F100](v61, -1, -1);
  }

  else
  {

    sub_1DAE20A70(v53);
  }

  v71 = v271;
  v70 = v272;
  v72 = *(v271 + 16);
  v73 = v275;
  v72(v272, v2 + *(v51 + 36), v275);
  v74 = (*(v71 + 88))(v70, v73);
  v75 = *MEMORY[0x1E6985A88];
  v76 = v277;
  v273 = v2;
  v263 = v54;
  if (v74 != v75)
  {
    if (v74 != *MEMORY[0x1E6985A90])
    {
      goto LABEL_65;
    }

    v95 = [v265 systemBackgroundColor];

    v96 = v274;
    v98 = (v274 + 104);
    v97 = *(v274 + 104);
    v99 = v268;
    LODWORD(v239) = *MEMORY[0x1E6985918];
    v100 = v270;
    v248 = v97;
    (v97)(v268);
    v101 = v261;
    sub_1DAE1C3A8(v99, v261);
    v251 = *(v96 + 8);
    (v251)(v99, v100);
    v102 = v252;
    sub_1DAD6495C(v101, v252, &unk_1ECC09E40, &qword_1DAED68E0);
    v104 = v266;
    v103 = v267;
    v105 = *(v266 + 48);
    v247 = (v266 + 48);
    v243 = v105;
    v106 = v105(v102, 1, v267);
    v107 = v257;
    v265 = v95;
    v274 = v96 + 8;
    v249 = v98;
    if (v106 == 1)
    {
      v108 = &unk_1ECC09E40;
      v109 = &qword_1DAED68E0;
      v110 = v102;
    }

    else
    {
      v119 = v244;
      sub_1DAED1B7C();
      (*(v104 + 8))(v102, v103);
      v120 = sub_1DAED1B1C();
      v121 = *(v120 - 8);
      if ((*(v121 + 48))(v119, 1, v120) != 1)
      {
        sub_1DAED1ACC();
        (*(v121 + 8))(v119, v120);
        v122 = 0;
LABEL_24:
        v130 = v269;
        v131 = *(v269 + 56);
        v132 = v256;
        v131(v107, v122, 1, v256);
        v260 = v276[8];
        v133 = v254;
        sub_1DAECF67C();
        v131(v133, 0, 1, v132);
        v134 = *(v253 + 48);
        v135 = v107;
        v136 = v107;
        v137 = v255;
        sub_1DAD6495C(v135, v255, &qword_1ECC08698, &qword_1DAED84E0);
        sub_1DAD6495C(v133, &v137[v134], &qword_1ECC08698, &qword_1DAED84E0);
        v138 = *(v130 + 48);
        if (v138(v137, 1, v132) == 1)
        {
          sub_1DAD64398(v133, &qword_1ECC08698, &qword_1DAED84E0);
          sub_1DAD64398(v136, &qword_1ECC08698, &qword_1DAED84E0);
          v139 = v138(&v137[v134], 1, v132);
          v140 = v132;
          v141 = v251;
          if (v139 == 1)
          {
            sub_1DAD64398(v137, &qword_1ECC08698, &qword_1DAED84E0);
            v142 = v270;
            goto LABEL_34;
          }
        }

        else
        {
          v143 = v245;
          sub_1DAD6495C(v137, v245, &qword_1ECC08698, &qword_1DAED84E0);
          if (v138(&v137[v134], 1, v132) != 1)
          {
            v153 = v269;
            v154 = v259;
            (*(v269 + 32))(v259, &v137[v134], v132);
            sub_1DAE2002C(&qword_1ECC09008, MEMORY[0x1E69858D8], MEMORY[0x1E69858F0]);
            v155 = sub_1DAED1CAC();
            v156 = *(v153 + 8);
            v156(v154, v132);
            sub_1DAD64398(v133, &qword_1ECC08698, &qword_1DAED84E0);
            sub_1DAD64398(v257, &qword_1ECC08698, &qword_1DAED84E0);
            v156(v143, v132);
            sub_1DAD64398(v137, &qword_1ECC08698, &qword_1DAED84E0);
            v140 = v132;
            v141 = v251;
            v142 = v270;
            if (v155)
            {
              goto LABEL_34;
            }

            goto LABEL_30;
          }

          sub_1DAD64398(v133, &qword_1ECC08698, &qword_1DAED84E0);
          sub_1DAD64398(v257, &qword_1ECC08698, &qword_1DAED84E0);
          (*(v269 + 8))(v143, v132);
          v140 = v132;
          v141 = v251;
        }

        sub_1DAD64398(v137, &qword_1ECC08F80, &unk_1DAEDC8D0);
LABEL_30:
        v144 = v259;
        sub_1DAECF67C();
        v145 = v269;
        v146 = v258;
        (*(v269 + 104))(v258, *MEMORY[0x1E69858D0], v140);
        sub_1DAE2002C(&qword_1ECC08FF0, MEMORY[0x1E69858D8], MEMORY[0x1E69858F8]);
        sub_1DAED1E4C();
        sub_1DAED1E4C();
        v147 = *(v145 + 8);
        v147(v146, v140);
        v142 = v270;
        v147(v144, v140);
        if (v287 == v303)
        {
          v148 = v268;
          *v268 = 1;
          LODWORD(v257) = *MEMORY[0x1E6985910];
          v149 = v248;
          (v248)(v148);
          v150 = v241;
          sub_1DAE1C3A8(v148, v241);
          (v141)(v148, v142);
          v151 = v267;
          v152 = v243;
          if (v243(v150, 1, v267) != 1)
          {
            v255 = *(v266 + 32);
            (v255)(v242, v150, v151);
            *v148 = 2;
            v171 = v270;
            (v149)(v148, v257, v270);
            v172 = v237;
            sub_1DAE1C3A8(v148, v237);
            (v251)(v148, v171);
            if (v152(v172, 1, v151) == 1)
            {
              (*(v266 + 8))(v242, v151);
              sub_1DAD64398(v172, &unk_1ECC09E40, &qword_1DAED68E0);
              v257 = 0;
              v70 = v272;
              v71 = v271;
              v140 = v256;
            }

            else
            {
              (v255)(v238, v172, v151);
              v185 = (v273 + v276[11]);
              v186 = v185[1];
              v274 = *v185;

              v270 = sub_1DAED1B5C();
              sub_1DAED091C();
              sub_1DAECF15C();
              v187 = v292;
              v188 = BYTE8(v292);
              v189 = v293;
              v190 = BYTE8(v293);
              v191 = v294;
              v192 = sub_1DAED1B5C();
              sub_1DAED091C();
              sub_1DAECF15C();
              LOBYTE(v290) = v188;
              v281 = v190;
              v280 = BYTE8(v303);
              v279 = BYTE8(v304);
              v278 = 0;
              *&v287 = v274;
              *(&v287 + 1) = v186;
              *v288 = v270;
              *&v288[8] = v187;
              v288[16] = v188;
              *&v288[17] = v286[0];
              *&v288[20] = *(v286 + 3);
              *&v288[24] = v189;
              v288[32] = v190;
              *&v288[33] = *v285;
              *&v288[36] = *&v285[3];
              *&v288[40] = v191;
              *&v288[56] = v192;
              *&v288[64] = v303;
              v288[72] = BYTE8(v303);
              *&v288[76] = *&v284[3];
              *&v288[73] = *v284;
              *&v288[80] = v304;
              v288[88] = BYTE8(v304);
              *&v288[92] = *&v283[3];
              *&v288[89] = *v283;
              *&v288[96] = v305;
              *&v288[112] = xmmword_1DAED8300;
              *&v288[128] = 0x4018000000000000;
              *&v288[136] = 0x403827EF9DB22D0FLL;
              v288[144] = 0;
              *&v289[3] = *&v282[3];
              *v289 = *v282;
              *&v289[15] = 0;
              *&v289[7] = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FF8, &qword_1DAED85A0);
              sub_1DAD64B94(&qword_1ECC09000, &qword_1ECC08FF8, &qword_1DAED85A0, &protocol conformance descriptor for WatchExpandedJindoView<A, B>);
              v193 = sub_1DAED087C();
              v194 = v193;
              v195 = *(v273 + 16);
              if (v195)
              {
                type metadata accessor for TintedWidgetViewModel(0);
                swift_allocObject();
                swift_beginAccess();
                v290 = v195;
                sub_1DADA657C();
                v196 = v195;
                sub_1DAECEEFC();
                swift_endAccess();
                sub_1DAE2002C(&qword_1EE008CE8, type metadata accessor for TintedWidgetViewModel, &protocol conformance descriptor for TintedWidgetViewModel);
                swift_retain_n();

                *&v287 = sub_1DAECF21C();
                *(&v287 + 1) = v197;
                *v288 = v194;
                *&v288[8] = v194;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FE0, &qword_1DAED8598);
                sub_1DAD64B94(&qword_1ECC08FE8, &qword_1ECC08FE0, &qword_1DAED8598, &protocol conformance descriptor for TintedWidgetView<A, B>);
                v198 = sub_1DAED087C();

                v257 = v198;
              }

              else
              {
                v257 = v193;
              }

              v71 = v271;
              v70 = v272;
              v232 = v267;
              v233 = *(v266 + 8);
              v233(v238, v267);
              v233(v242, v232);
              v140 = v256;
            }

            goto LABEL_36;
          }

          sub_1DAD64398(v150, &unk_1ECC09E40, &qword_1DAED68E0);
          v257 = 0;
LABEL_35:
          v71 = v271;
          v70 = v272;
LABEL_36:
          v158 = v259;
          sub_1DAECF67C();
          v159 = v269;
          v160 = v258;
          (*(v269 + 104))(v258, *MEMORY[0x1E69858D0], v140);
          sub_1DAE2002C(&qword_1ECC08FF0, MEMORY[0x1E69858D8], MEMORY[0x1E69858F8]);
          sub_1DAED1E4C();
          sub_1DAED1E4C();
          v161 = *(v159 + 8);
          v161(v160, v140);
          v161(v158, v140);
          if (v287 == v290)
          {
            v162 = v261;
            v163 = v246;
            sub_1DAD6495C(v261, v246, &unk_1ECC09E40, &qword_1DAED68E0);
            v164 = v267;
            v165 = v243(v163, 1, v267);
            v118 = v277;
            if (v165 == 1)
            {
              sub_1DAD64398(v162, &unk_1ECC09E40, &qword_1DAED68E0);
              sub_1DAD64398(v163, &unk_1ECC09E40, &qword_1DAED68E0);
              v51 = v276;
              v94 = v273;
            }

            else
            {
              v166 = v240;
              sub_1DAED1B7C();
              v167 = v166;
              (*(v266 + 8))(v163, v164);
              v168 = sub_1DAED1B1C();
              v169 = *(v168 - 8);
              v170 = (*(v169 + 48))(v167, 1, v168);
              v94 = v273;
              if (v170 == 1)
              {
                sub_1DAD64398(v162, &unk_1ECC09E40, &qword_1DAED68E0);
                sub_1DAD64398(v167, &unk_1ECC0A520, &unk_1DAED6D30);
              }

              else
              {
                v182 = v236;
                sub_1DAED1ADC();
                (*(v169 + 8))(v167, v168);
                v183 = sub_1DAED175C();
                v184 = *(v183 - 8);
                if ((*(v184 + 48))(v182, 1, v183) == 1)
                {
                  sub_1DAD64398(v162, &unk_1ECC09E40, &qword_1DAED68E0);
                  sub_1DAD64398(v182, &qword_1ECC086B0, &unk_1DAED84D0);
                }

                else
                {
                  v199 = sub_1DAED173C();
                  sub_1DAD64398(v162, &unk_1ECC09E40, &qword_1DAED68E0);
                  (*(v184 + 8))(v182, v183);
                  if (v199)
                  {

                    v265 = v199;
                  }
                }
              }

              v51 = v276;
              v70 = v272;
            }
          }

          else
          {
            sub_1DAD64398(v261, &unk_1ECC09E40, &qword_1DAED68E0);
            v51 = v276;
            v118 = v277;
            v94 = v273;
          }

          v117 = v257;
LABEL_54:
          (*(v71 + 8))(v70, v275);
          if (!v117)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

LABEL_34:
        v157 = v268;
        (v248)(v268, v239, v142);
        v257 = sub_1DAE1C040(v157);
        (v141)(v157, v142);
        goto LABEL_35;
      }

      v108 = &unk_1ECC0A520;
      v109 = &unk_1DAED6D30;
      v110 = v119;
    }

    sub_1DAD64398(v110, v108, v109);
    v122 = 1;
    goto LABEL_24;
  }

  v77 = v251;
  v72(v251, v70, v73);
  (*(v71 + 96))(v77, v73);
  v78 = sub_1DAED1A4C();
  v79 = *(v78 - 8);
  v80 = (*(v79 + 88))(v77, v78);
  if (v80 == *MEMORY[0x1E6985A70])
  {
    v265 = [v265 blackColor];

    v81 = v274;
    v82 = v268;
    *v268 = 1;
    v83 = *MEMORY[0x1E6985910];
    v84 = *(v81 + 104);
    v85 = v270;
    v84(v82, v83, v270);
    v86 = v248;
    sub_1DAE1C3A8(v82, v248);
    v87 = *(v81 + 8);
    v87(v82, v85);
    *v82 = 2;
    v84(v82, v83, v85);
    v88 = v247;
    sub_1DAE1C3A8(v82, v247);
    v87(v82, v85);
    v89 = v86;
    v90 = v243;
    sub_1DAD6495C(v86, v243, &unk_1ECC09E40, &qword_1DAED68E0);
    v92 = v266;
    v91 = v267;
    v93 = *(v266 + 48);
    if (v93(v90, 1, v267) == 1)
    {
      v94 = v273;
      sub_1DAD64398(v88, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAD64398(v89, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAD64398(v90, &unk_1ECC09E40, &qword_1DAED68E0);
LABEL_20:
      v118 = v277;
      (*(v271 + 8))(v272, v275);
LABEL_56:
      v205 = sub_1DAECEDCC();
      v206 = sub_1DAED200C();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        *v207 = 0;
        _os_log_impl(&dword_1DAD61000, v205, v206, "No view found in activity preview view collection: showing empty view.", v207, 2u);
        MEMORY[0x1E127F100](v207, -1, -1);
      }

      v203 = v262;
      v204 = v263;
      (*(v262 + 104))(v118, *MEMORY[0x1E697DBB8], v263);
      v117 = sub_1DAED087C();
      v200 = 0xEF295954504D4528;
      v202 = 0x2057454956455250;
      v201 = v276;
      goto LABEL_59;
    }

    v123 = *(v92 + 32);
    v123(v249, v90, v91);
    v124 = v239;
    sub_1DAD6495C(v88, v239, &unk_1ECC09E40, &qword_1DAED68E0);
    if (v93(v124, 1, v91) == 1)
    {
      v94 = v273;
      sub_1DAD64398(v88, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAD64398(v89, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAD64398(v124, &unk_1ECC09E40, &qword_1DAED68E0);
      (*(v92 + 8))(v249, v91);
      goto LABEL_20;
    }

    v173 = v235;
    v123(v235, v124, v91);
    v94 = v273;
    v174 = *(v273 + v276[10]);
    v175 = sub_1DAECF8FC();
    LOBYTE(v286[0]) = 0;
    sub_1DAE1F264(v173, &v287, v174);
    v300 = *&v288[112];
    v301 = *&v288[128];
    v296 = *&v288[48];
    v297 = *&v288[64];
    v299 = *&v288[96];
    v298 = *&v288[80];
    v292 = v287;
    v293 = *v288;
    v294 = *&v288[16];
    v295 = *&v288[32];
    v311 = *&v288[112];
    v312 = *&v288[128];
    v307 = *&v288[48];
    v308 = *&v288[64];
    v310 = *&v288[96];
    v309 = *&v288[80];
    v303 = v287;
    v304 = *v288;
    v302 = v288[144];
    v313 = v288[144];
    v306 = *&v288[32];
    v305 = *&v288[16];
    sub_1DAD6495C(&v292, &v290, &qword_1ECC08FC8, &qword_1DAED8588);
    sub_1DAD64398(&v303, &qword_1ECC08FC8, &qword_1DAED8588);
    *&v291[119] = v299;
    *&v291[135] = v300;
    *&v291[151] = v301;
    v291[167] = v302;
    *&v291[55] = v295;
    *&v291[71] = v296;
    *&v291[87] = v297;
    *&v291[103] = v298;
    *&v291[7] = v292;
    *&v291[23] = v293;
    *&v291[39] = v294;
    *&v288[113] = *&v291[112];
    *&v288[129] = *&v291[128];
    *v289 = *&v291[144];
    *&v288[49] = *&v291[48];
    *&v288[65] = *&v291[64];
    *&v288[81] = *&v291[80];
    *&v288[97] = *&v291[96];
    *&v288[1] = *v291;
    *&v288[17] = *&v291[16];
    v287 = v175;
    v288[0] = v286[0];
    *&v289[16] = *&v291[160];
    *&v288[33] = *&v291[32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FD0, &qword_1DAED8590);
    sub_1DAD64B94(&qword_1ECC08FD8, &qword_1ECC08FD0, &qword_1DAED8590, MEMORY[0x1E69817F8]);
    v176 = sub_1DAED087C();
    v177 = *(v94 + 16);
    if (v177)
    {
      type metadata accessor for TintedWidgetViewModel(0);
      swift_allocObject();
      swift_beginAccess();
      v290 = v177;
      sub_1DADA657C();
      v178 = v177;
      sub_1DAECEEFC();
      swift_endAccess();
      sub_1DAE2002C(&qword_1EE008CE8, type metadata accessor for TintedWidgetViewModel, &protocol conformance descriptor for TintedWidgetViewModel);
      swift_retain_n();

      *&v287 = sub_1DAECF21C();
      *(&v287 + 1) = v179;
      *v288 = v176;
      *&v288[8] = v176;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FE0, &qword_1DAED8598);
      sub_1DAD64B94(&qword_1ECC08FE8, &qword_1ECC08FE0, &qword_1DAED8598, &protocol conformance descriptor for TintedWidgetView<A, B>);
      v180 = v275;
      v181 = sub_1DAED087C();

      v176 = v181;
    }

    else
    {
      v180 = v275;
    }

    sub_1DAD64398(v247, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAD64398(v248, &unk_1ECC09E40, &qword_1DAED68E0);
    v230 = v267;
    v231 = *(v266 + 8);
    v231(v173, v267);
    v231(v249, v230);
    (*(v271 + 8))(v272, v180);
    v51 = v276;
    v117 = v176;
LABEL_55:
    sub_1DAECF39C();
    v200 = 0xE700000000000000;
    v201 = v51;
    v202 = 0x57454956455250;
    v203 = v262;
    v204 = v263;
LABEL_59:

    v208 = sub_1DAED004C();
    v209 = sub_1DAED091C();
    v210 = v264;
    *v264 = v209;
    v210[1] = v211;
    v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08F88, &qword_1DAED84E8);
    sub_1DAE1FABC(v117, v208, v202, v200, (v210 + *(v212 + 44)));

    v213 = v265;
    v214 = sub_1DAED070C();
    LOBYTE(v208) = sub_1DAED004C();
    v215 = v210 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08F90, &qword_1DAED84F0) + 36);
    *v215 = v214;
    v215[8] = v208;
    v216 = (v94 + *(v201 + 48));
    v217 = *v216;
    v218 = v216[1];
    *&v287 = v217;
    *(&v287 + 1) = v218;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08F98, &qword_1DAED84F8);
    sub_1DAED077C();

    v219 = v290;
    v220 = v210 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FA0, &qword_1DAED8500) + 36);
    v221 = *(sub_1DAECF33C() + 20);
    v222 = *MEMORY[0x1E697F468];
    v223 = sub_1DAECF99C();
    (*(*(v223 - 8) + 104))(&v220[v221], v222, v223);
    *v220 = v219;
    *(v220 + 1) = v219;
    v220[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FA8, &qword_1DAED8508) + 36)] = 0;
    KeyPath = swift_getKeyPath();
    v225 = (v210 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FB0, &qword_1DAED8540) + 36));
    v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FB8, &qword_1DAED8548);
    (*(v203 + 32))(v225 + *(v226 + 28), v277, v204);
    *v225 = KeyPath;
    v227 = swift_getKeyPath();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FC0, &qword_1DAED8580);
    v229 = v210 + *(result + 36);
    *v229 = v227;
    v229[8] = 1;
    return result;
  }

  v94 = v273;
  if (v80 == *MEMORY[0x1E6985A78])
  {
    v265 = [v265 blackColor];

    v111 = v268;
    *v268 = 3;
    v112 = v76;
    v113 = v274;
    v114 = v270;
    (*(v274 + 104))(v111, *MEMORY[0x1E6985910], v270);
    v115 = sub_1DAE1C040(v111);
    v116 = v114;
    v117 = v115;
    (*(v113 + 8))(v111, v116);
    v118 = v112;
    goto LABEL_54;
  }

  if (v80 == *MEMORY[0x1E6985A80])
  {
    v265 = [v265 blackColor];

    v125 = v268;
    *v268 = 0;
    v126 = v274;
    v127 = v270;
    (*(v274 + 104))(v125, *MEMORY[0x1E6985910], v270);
    v128 = sub_1DAE1C040(v125);
    v129 = v127;
    v117 = v128;
    (*(v126 + 8))(v125, v129);
    v118 = v277;
    goto LABEL_54;
  }

  (*(v79 + 8))(v251, v78);
LABEL_65:
  result = sub_1DAED273C();
  __break(1u);
  return result;
}