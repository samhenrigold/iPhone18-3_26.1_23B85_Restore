unint64_t sub_1AC2EE1F0()
{
  v2 = qword_1EB54D128;
  if (!qword_1EB54D128)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D128);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2EE358@<X0>(uint64_t *a1@<X8>)
{
  result = FirmwareSeedingUseCase.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1AC2EE3B4()
{
  v2 = qword_1EB54D130;
  if (!qword_1EB54D130)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D130);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2EE470()
{
  sub_1AC30B18C();
  v19 = v1;
  v10 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v11 = *v10;
  MEMORY[0x1E69E5928](*v10);
  swift_endAccess();
  sub_1AC30936C();
  MEMORY[0x1E69E5920](v11);
  type metadata accessor for CBPeerUIGestureMode(0);
  sub_1AC209A44();
  *v19 = sub_1AC30B1BC() & 1;
  v12 = (v15 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v13 = *v12;
  MEMORY[0x1E69E5928](*v12);
  swift_endAccess();
  sub_1AC30936C();
  MEMORY[0x1E69E5920](v13);
  v19[1] = sub_1AC30B1BC() & 1;
  v14 = (v15 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v16 = *v14;
  MEMORY[0x1E69E5928](*v14);
  swift_endAccess();
  sub_1AC30936C();
  MEMORY[0x1E69E5920](v16);
  v19[2] = sub_1AC30B1BC() & 1;
  v17 = (v15 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v18 = *v17;
  MEMORY[0x1E69E5928](*v17);
  swift_endAccess();
  sub_1AC30936C();
  MEMORY[0x1E69E5920](v18);
  v19[3] = sub_1AC30B1BC() & 1;
  sub_1AC206300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D140, &qword_1AC316290);
  sub_1AC2EE948();
  sub_1AC30AFDC();
  v3 = sub_1AC30AB4C();

  sub_1AC2EEFDC(v3 > 0);
  v4 = (v15 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v5 = *v4;
  MEMORY[0x1E69E5928](*v4);
  swift_endAccess();
  v8 = sub_1AC30936C();
  MEMORY[0x1E69E5920](v5);
  v6 = (v15 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v7 = *v6;
  MEMORY[0x1E69E5928](*v6);
  swift_endAccess();
  v9 = sub_1AC3093AC();
  MEMORY[0x1E69E5920](v7);
  return sub_1AC2EF2B4(v8, v9);
}

unint64_t sub_1AC2EE948()
{
  v2 = qword_1EB54D148;
  if (!qword_1EB54D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D140, &qword_1AC316290);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D148);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2EE9D0()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC2EEA40(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  sub_1AC2EE470();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1AC2EEAE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1AC2EEB50;
}

uint64_t sub_1AC2EEB50(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_1AC2EE470();
}

uint64_t sub_1AC2EEBA0()
{
  v6 = v1;
  v3 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x88))();
  sub_1AC30929C(v4);
  MEMORY[0x1E69E5920](v3);
  if (!v4[3])
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/PressHoldDetailedViewController.swift", 57, 2, 29, 0);
    __break(1u);
  }

  sub_1AC2051E4(v4, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C858, &qword_1AC313110);
  return swift_dynamicCast();
}

uint64_t sub_1AC2EECFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1AC2EED64(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1AC2EEDFC(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL, 17985);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_host;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1AC2EEEA8;
}

void sub_1AC2EEEA8(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    MEMORY[0x1E69E5928](v2);
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v2);
    sub_1AC206988(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v3);
  }

  swift_endAccess();
  free(v4);
}

uint64_t sub_1AC2EEF74()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_volumeControlOn);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1AC2EEFDC(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_volumeControlOn);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1AC2EF0D4()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  swift_endAccess();
  LOBYTE(v5) = v3;
  HIBYTE(v5) = v4;
  return v5;
}

uint64_t sub_1AC2EF150(char a1, char a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_endAccess();
}

uint64_t sub_1AC2EF238()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  swift_endAccess();
  LOBYTE(v5) = v3;
  HIBYTE(v5) = v4;
  return v5;
}

uint64_t sub_1AC2EF2B4(char a1, char a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_endAccess();
}

uint64_t sub_1AC2EF3BC()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  swift_endAccess();
  LOBYTE(v5) = v3;
  HIBYTE(v5) = v4;
  return v5;
}

uint64_t sub_1AC2EF438(char a1, char a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_endAccess();
}

uint64_t sub_1AC2EF520()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC2EF614(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2EF614(uint64_t a1)
{
  v21 = a1;
  v12 = sub_1AC2F63F4;
  v23 = sub_1AC2F63FC;
  v24 = sub_1AC2F6404;
  v40 = 0;
  v28 = 0;
  v17 = sub_1AC30A90C();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v6 - v7;
  v33 = sub_1AC309AAC();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v8 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v34 = &v6 - v8;
  v40 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v9 = MEMORY[0x1E69A2B08];
  v10 = sub_1AC205220();
  v11 = v2;
  sub_1AC205220();
  v13 = sub_1AC309D3C();
  MEMORY[0x1E69E5928](v21);
  v38 = v21;
  v35 = sub_1AC309CDC();
  MEMORY[0x1E69E5920](v21);

  v39[4] = v21;
  v22 = 1;
  sub_1AC30A9DC("Volume Control", 14, 1);
  sub_1AC30A8AC();
  v3 = type metadata accessor for PressHoldDetailedViewController();
  v25 = sub_1AC215DE8(v16, v3);
  v26 = v4;
  (*(v14 + 8))(v16, v17);
  v27 = v39;
  memset(v39, 0, 32);
  v18 = &unk_1F20FA658;
  v19 = 24;
  v20 = 7;
  v30 = swift_allocObject();
  MEMORY[0x1E69E5928](v21);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v21);

  v29 = swift_allocObject();
  MEMORY[0x1E69E5928](v21);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v21);

  sub_1AC20599C();
  sub_1AC309A9C();

  v36 = sub_1AC309D1C();
  (*(v31 + 8))(v34, v33);

  v37 = sub_1AC309D2C();

  return v37;
}

uint64_t sub_1AC2EFAAC(void *a1, uint64_t a2)
{
  v17[3] = a1;
  v17[2] = a2;
  v17[0] = sub_1AC30B17C();
  v17[1] = v2;
  v3 = sub_1AC30A9DC("Press and hold on either the left or right ", 43, 1);
  MEMORY[0x1AC5B07E0](v3);

  sub_1AC2EEBA0();
  v8 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v13[0] = (*(*(v7 + 8) + 16))(v8);
  v13[1] = v4;
  sub_1AC30B15C();
  sub_1AC2063F0(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v5 = sub_1AC30A9DC(" to adjust volume up and down.", 30, 1);
  MEMORY[0x1AC5B07E0](v5);

  sub_1AC2063F0(v17);
  sub_1AC30A9BC();
  v12 = sub_1AC30A91C();

  v9 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5900]);
  sub_1AC30A92C();
  v11 = sub_1AC30A91C();

  [a1 setProperty:v12 forKey:{v11, MEMORY[0x1E69E5920](v9).n128_f64[0]}];
  MEMORY[0x1E69E5920](v11);
  return swift_unknownObjectRelease();
}

id sub_1AC2EFCB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  sub_1AC2068B8();
  if (!Strong)
  {
    return sub_1AC244124(0);
  }

  v2 = sub_1AC2EEF74();
  v4 = sub_1AC244124(v2 & 1);
  MEMORY[0x1E69E5920](Strong);
  return v4;
}

double sub_1AC2EFDB4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v5 = (*((*Strong & *MEMORY[0x1E69E7D40]) + 0x88))();
    v6 = sub_1AC30914C();
    MEMORY[0x1E69E5920](v5);
    if (v6)
    {
      *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      if ([a1 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v9 = [a1 BOOLValue];
        swift_unknownObjectRelease();
      }

      else
      {
        v9 = 2;
      }

      if (v9 == 2)
      {
        sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/PressHoldDetailedViewController.swift", 57, 2, 54, 0);
        __break(1u);
      }

      else
      {
        v4 = v9;
      }

      (*((*Strong & *MEMORY[0x1E69E7D40]) + 0x140))(v4 & 1);
      swift_unknownObjectRelease();
      *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
    }
  }

  return result;
}

uint64_t sub_1AC2F0050(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC2F00D0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC2EF520();
  return sub_1AC2F012C;
}

void sub_1AC2F012C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC2F0050(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC2F0050(*a1);
  }
}

uint64_t sub_1AC2F0198()
{
  v24 = sub_1AC2F0A54;
  v26 = sub_1AC2F106C;
  v49 = sub_1AC2F0A54;
  v51 = sub_1AC2F19A4;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v55 = 0;
  v38 = sub_1AC30A90C();
  v20 = *(v38 - 8);
  v21 = v38 - 8;
  v12 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v37 = &v12 - v12;
  v58 = sub_1AC309AAC();
  v31 = *(v58 - 8);
  v32 = v58 - 8;
  v13 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v12 - v13;
  v69 = v0;
  v2 = *v0;
  v15 = MEMORY[0x1E69E7D40];
  v14 = (*((v2 & *MEMORY[0x1E69E7D40]) + 0x88))(v1);
  v3 = sub_1AC30936C();
  v4 = v45;
  v22 = v3;
  v68 = v3;
  v5 = MEMORY[0x1E69E5920](v14);
  v16 = (*((*v4 & *v15) + 0x88))(v5);
  v41 = sub_1AC3093AC();
  v67 = v41;
  MEMORY[0x1E69E5920](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v17 = MEMORY[0x1E69A2B08];
  v18 = sub_1AC205220();
  v19 = v6;
  sub_1AC205220();
  v33 = sub_1AC309D3C();
  v66[4] = v45;
  v47 = 1;
  sub_1AC30A9DC("Left", 4, 1);
  sub_1AC30A8AC();
  v40 = type metadata accessor for PressHoldDetailedViewController();
  v34 = &off_1F20FA698;
  v27 = sub_1AC215DE8(v37, v40);
  v28 = v7;
  v36 = *(v20 + 8);
  v35 = v20 + 8;
  v36(v37, v38);
  MEMORY[0x1E69E5928](v45);
  v29 = v66;
  v66[3] = v40;
  v66[0] = v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C850, &qword_1AC315B10);
  v39 = 17;
  v43 = 7;
  v8 = swift_allocObject();
  *(v8 + 16) = v22;
  v25 = v8;
  v44 = &unk_1F20FA658;
  v42 = 24;
  v30 = swift_allocObject();
  MEMORY[0x1E69E5928](v45);
  v23 = v45;
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v23);

  sub_1AC20599C();
  v56 = 2;
  sub_1AC309A9C();

  v62 = sub_1AC309D1C();
  v60 = *(v31 + 8);
  v59 = v31 + 8;
  v60(v61, v58);

  v65[4] = v45;
  sub_1AC30A9DC("Right", 5, v47 & 1);
  sub_1AC30A8AC();
  v52 = sub_1AC215DE8(v37, v40);
  v53 = v9;
  v36(v37, v38);
  MEMORY[0x1E69E5928](v45);
  v54 = v65;
  v65[3] = v40;
  v65[0] = v45;
  v10 = swift_allocObject();
  *(v10 + 16) = v41;
  v50 = v10;
  v57 = swift_allocObject();
  MEMORY[0x1E69E5928](v45);
  v46 = v45;
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v46);

  sub_1AC20599C();
  sub_1AC309A9C();

  v63 = sub_1AC309D1C();
  v60(v61, v58);

  v64 = sub_1AC309D2C();

  return v64;
}

uint64_t sub_1AC2F0A00(uint64_t a1, char a2)
{
  sub_1AC2F0A5C(a2);
  v3 = sub_1AC30A91C();

  return v3;
}

uint64_t sub_1AC2F0A5C(char a1)
{
  if (a1 == 6 || a1 == 7)
  {
    return sub_1AC2F517C(a1);
  }

  else
  {
    return sub_1AC30A9DC("", 0, 1);
  }
}

double sub_1AC2F0AFC(uint64_t a1)
{
  v37 = a1;
  v54 = 0;
  v52 = 0;
  v49 = 0;
  v47 = 0;
  v38 = sub_1AC30A90C();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v17 - v41;
  v43 = v1 + 16;
  v54 = v1 + 16;
  v44 = v53;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v36 = Strong;
    v3 = Strong;
    v30 = Strong;
    v52 = Strong;
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    sub_1AC2F13FC();
    nullsub_1();
    v25 = v51;
    v51[0] = v4;
    v51[1] = v5;
    v51[2] = v6;
    v51[3] = v7;
    v8 = *v3;
    v35 = MEMORY[0x1E69E7D40];
    v24 = (*((v8 & *MEMORY[0x1E69E7D40]) + 0x88))();
    v29 = 0;
    v22 = sub_1AC3095DC();
    v23 = sub_1AC2F6284();
    sub_1AC2F57A0();
    sub_1AC30A54C();
    MEMORY[0x1E69E5920](v24);
    sub_1AC2F6300(v25);
    v27 = v50;
    v50[0] = v51[4];
    v50[1] = v51[5];
    v50[2] = v51[6];
    v50[3] = v51[7];
    v50[4] = v51[8];
    v50[5] = v51[9];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D200, &qword_1AC3164D0);
    sub_1AC2F634C();
    v28 = sub_1AC30A71C();
    v49 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D210, &qword_1AC3164D8);

    v48 = v28;
    v34 = sub_1AC309A8C();
    v47 = v34;
    *&v9 = MEMORY[0x1E69E5928](v34).n128_u64[0];
    v46[1] = v30;
    sub_1AC30A9DC("Left Earbud", 11, 1, v9);
    sub_1AC30A8AC();
    v10 = type metadata accessor for PressHoldDetailedViewController();
    v11 = sub_1AC215DE8(v42, v10);
    v12 = v30;
    v31 = v11;
    v32 = v13;
    (*(v39 + 8))(v42, v38);
    v33 = sub_1AC30A91C();

    [v34 setTitle_];
    MEMORY[0x1E69E5920](v33);
    v14 = MEMORY[0x1E69E5920](v34);
    v15 = (*((*v12 & *v35) + 0xA8))(v14);
    v46[0] = v15;
    if (v15)
    {
      v18 = v46;
      v19 = v46[0];
      MEMORY[0x1E69E5928](v46[0]);
      sub_1AC206988(v18);
      *&v16 = MEMORY[0x1E69E5928](v34).n128_u64[0];
      [v19 showController_];
      MEMORY[0x1E69E5920](v34);
      MEMORY[0x1E69E5920](v19);
    }

    else
    {
      sub_1AC206988(v46);
    }

    MEMORY[0x1E69E5920](v34);

    *&result = MEMORY[0x1E69E5920](v30).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC2F1074(uint64_t a1)
{
  sub_1AC30936C();
  type metadata accessor for CBPeerUIGestureMode(0);
  sub_1AC209A44();
  return sub_1AC30B1BC() & 1;
}

double sub_1AC2F10EC@<D0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC2F1074(v2) & 1;
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1AC2F115C(char *a1, uint64_t *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC2F11C8();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F11C8()
{
  sub_1AC30937C();
  v0 = sub_1AC30936C();
  sub_1AC2F2F90(v0);
  sub_1AC3093BC();
  return sub_1AC30942C();
}

uint64_t sub_1AC2F1238(uint64_t a1)
{
  sub_1AC30936C();
  type metadata accessor for CBPeerUIGestureMode(0);
  sub_1AC209A44();
  return sub_1AC30B1BC() & 1;
}

double sub_1AC2F12B0@<D0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC2F1238(v2) & 1;
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1AC2F1320(char *a1, uint64_t *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC2F138C();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F138C()
{
  sub_1AC30937C();
  v0 = sub_1AC30936C();
  sub_1AC2F2F90(v0);
  sub_1AC3093BC();
  return sub_1AC30942C();
}

uint64_t sub_1AC2F13FC()
{
  sub_1AC3095DC();
  sub_1AC2F57A0();
  return sub_1AC30A13C();
}

double sub_1AC2F1434(uint64_t a1)
{
  v37 = a1;
  v54 = 0;
  v52 = 0;
  v49 = 0;
  v47 = 0;
  v38 = sub_1AC30A90C();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v17 - v41;
  v43 = v1 + 16;
  v54 = v1 + 16;
  v44 = v53;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v36 = Strong;
    v3 = Strong;
    v30 = Strong;
    v52 = Strong;
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    sub_1AC2F13FC();
    nullsub_1();
    v25 = v51;
    v51[0] = v4;
    v51[1] = v5;
    v51[2] = v6;
    v51[3] = v7;
    v8 = *v3;
    v35 = MEMORY[0x1E69E7D40];
    v24 = (*((v8 & *MEMORY[0x1E69E7D40]) + 0x88))();
    v29 = 0;
    v22 = sub_1AC3095DC();
    v23 = sub_1AC2F6284();
    sub_1AC2F57A0();
    sub_1AC30A54C();
    MEMORY[0x1E69E5920](v24);
    sub_1AC2F6300(v25);
    v27 = v50;
    v50[0] = v51[4];
    v50[1] = v51[5];
    v50[2] = v51[6];
    v50[3] = v51[7];
    v50[4] = v51[8];
    v50[5] = v51[9];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D200, &qword_1AC3164D0);
    sub_1AC2F634C();
    v28 = sub_1AC30A71C();
    v49 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D210, &qword_1AC3164D8);

    v48 = v28;
    v34 = sub_1AC309A8C();
    v47 = v34;
    *&v9 = MEMORY[0x1E69E5928](v34).n128_u64[0];
    v46[1] = v30;
    sub_1AC30A9DC("Right Earbud", 12, 1, v9);
    sub_1AC30A8AC();
    v10 = type metadata accessor for PressHoldDetailedViewController();
    v11 = sub_1AC215DE8(v42, v10);
    v12 = v30;
    v31 = v11;
    v32 = v13;
    (*(v39 + 8))(v42, v38);
    v33 = sub_1AC30A91C();

    [v34 setTitle_];
    MEMORY[0x1E69E5920](v33);
    v14 = MEMORY[0x1E69E5920](v34);
    v15 = (*((*v12 & *v35) + 0xA8))(v14);
    v46[0] = v15;
    if (v15)
    {
      v18 = v46;
      v19 = v46[0];
      MEMORY[0x1E69E5928](v46[0]);
      sub_1AC206988(v18);
      *&v16 = MEMORY[0x1E69E5928](v34).n128_u64[0];
      [v19 showController_];
      MEMORY[0x1E69E5920](v34);
      MEMORY[0x1E69E5920](v19);
    }

    else
    {
      sub_1AC206988(v46);
    }

    MEMORY[0x1E69E5920](v34);

    *&result = MEMORY[0x1E69E5920](v30).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC2F19AC(uint64_t a1)
{
  sub_1AC3093AC();
  type metadata accessor for CBPeerUIGestureMode(0);
  sub_1AC209A44();
  return sub_1AC30B1BC() & 1;
}

double sub_1AC2F1A24@<D0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC2F19AC(v2) & 1;
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1AC2F1A94(char *a1, uint64_t *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC2F1B00();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F1B00()
{
  sub_1AC3093BC();
  v0 = sub_1AC3093AC();
  sub_1AC2F2F90(v0);
  sub_1AC30937C();
  return sub_1AC30942C();
}

uint64_t sub_1AC2F1B70(uint64_t a1)
{
  sub_1AC3093AC();
  type metadata accessor for CBPeerUIGestureMode(0);
  sub_1AC209A44();
  return sub_1AC30B1BC() & 1;
}

double sub_1AC2F1BE8@<D0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC2F1B70(v2) & 1;
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1AC2F1C58(char *a1, uint64_t *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC2F1CC4();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F1CC4()
{
  sub_1AC3093BC();
  v0 = sub_1AC3093AC();
  sub_1AC2F2F90(v0);
  sub_1AC30937C();
  return sub_1AC30942C();
}

uint64_t sub_1AC2F1D34()
{
  v23 = v0;
  sub_1AC215CB0();
  v22 = sub_1AC30B18C();
  if (sub_1AC2EEF74())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
    sub_1AC30B18C();
    v17 = v1;
    v16 = MEMORY[0x1E69E7D40];
    *v1 = (*((*v19 & *MEMORY[0x1E69E7D40]) + 0x120))();
    v17[1] = (*((*v19 & *v16) + 0x138))();
    sub_1AC206300();
    v20 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508, &unk_1AC3133F0);
    sub_1AC263B38();
    sub_1AC24D54C();
    v18 = sub_1AC30AA8C();
    sub_1AC209190(&v20);

    v22 = v18;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
    sub_1AC30B18C();
    v12 = v3;
    v13 = MEMORY[0x1E69E7D40];
    *v3 = (*((*v19 & *MEMORY[0x1E69E7D40]) + 0x120))();
    v14 = (*((*v19 & *v13) + 0x88))();
    v15 = (*((*v19 & *v13) + 0xA8))();
    if (v15)
    {
      v11 = v15;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/PressHoldDetailedViewController.swift", 57, 2, 114, 0);
      __break(1u);
    }

    v9 = sub_1AC2DD894(v14, v11, 0);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v14);
    v12[1] = v9;
    sub_1AC206300();
    v21 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508, &unk_1AC3133F0);
    sub_1AC263B38();
    sub_1AC24D54C();
    v10 = sub_1AC30AA8C();
    sub_1AC209190(&v21);

    v22 = v10;
  }

  v7 = sub_1AC30AAFC();
  sub_1AC30A9DC("_specifiers", 11, 1);
  v6 = sub_1AC30A91C();

  [v19 setValue:v7 forKey:v6];
  MEMORY[0x1E69E5920](v6);
  swift_unknownObjectRelease();
  v8 = sub_1AC30B02C();

  sub_1AC209190(&v22);
  return v8;
}

id sub_1AC2F2308(char a1)
{
  sub_1AC2EEFDC(a1 & 1);
  sub_1AC2EF0D4();
  v37 = sub_1AC2EF238();
  sub_1AC2EF150(v37, SHIBYTE(v37));
  v36 = sub_1AC2EEF74();
  v33 = MEMORY[0x1E69E7D40];
  v31 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
  v32 = sub_1AC30936C();
  v1 = MEMORY[0x1E69E5920](v31);
  v34 = (*((*v30 & *v33) + 0x88))(v1);
  v35 = sub_1AC3093AC();
  v2 = MEMORY[0x1E69E5920](v34);
  if (v36)
  {
    if (v32 == 6)
    {
      if (v35 == 7)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v32 != 7)
      {
        if (v35 == 6 || v35 == 7)
        {
          v22 = MEMORY[0x1E69E7D40];
          v25 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
          v23 = (*((*v30 & *v22) + 0x88))();
          v24 = sub_1AC3093AC();
          MEMORY[0x1E69E5920](v23);
          sub_1AC2F2F90(v24);
          sub_1AC30937C();
          v2 = MEMORY[0x1E69E5920](v25);
        }

        else
        {
          type metadata accessor for CBPeerUIGestureMode(0);
          sub_1AC209A44();
          v3 = sub_1AC30B1BC();
          if (v3)
          {
            v21 = 1;
          }

          else
          {
            v21 = sub_1AC30B1BC();
          }

          if (sub_1AC30B1BC())
          {
            v20 = 1;
          }

          else
          {
            v20 = sub_1AC30B1BC();
          }

          v19 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
          if ((v20 & 1) == 0)
          {
            sub_1AC2EF3BC();
          }

          sub_1AC3093BC();
          v4 = MEMORY[0x1E69E5920](v19);
          v18 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))(v4);
          if ((v21 & 1) == 0)
          {
            sub_1AC2EF3BC();
          }

          sub_1AC30937C();
          v2 = MEMORY[0x1E69E5920](v18);
        }

        goto LABEL_48;
      }

      if (v35 == 6)
      {
        goto LABEL_48;
      }
    }

    v26 = MEMORY[0x1E69E7D40];
    v29 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
    v27 = (*((*v30 & *v26) + 0x88))();
    v28 = sub_1AC30936C();
    MEMORY[0x1E69E5920](v27);
    sub_1AC2F2F90(v28);
    sub_1AC3093BC();
    v2 = MEMORY[0x1E69E5920](v29);
    goto LABEL_48;
  }

  if (v32 == 1)
  {
    if (v35 == 1 || v35 == 5)
    {
      goto LABEL_48;
    }

    goto LABEL_35;
  }

  if (v32 == 5)
  {
    if (v35 == 1 || v35 == 5)
    {
      goto LABEL_48;
    }

LABEL_35:
    type metadata accessor for CBPeerUIGestureMode(0);
    sub_1AC209A44();
    if ((sub_1AC30B1BC() & 1) == 0)
    {
      sub_1AC30B1BC();
    }

    v17 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
    sub_1AC3093BC();
    v2 = MEMORY[0x1E69E5920](v17);
    goto LABEL_48;
  }

  if (v35 == 1 || v35 == 5)
  {
    type metadata accessor for CBPeerUIGestureMode(0);
    sub_1AC209A44();
    if ((sub_1AC30B1BC() & 1) == 0)
    {
      sub_1AC30B1BC();
    }

    v16 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
    sub_1AC30937C();
    v2 = MEMORY[0x1E69E5920](v16);
  }

  else
  {
    type metadata accessor for CBPeerUIGestureMode(0);
    sub_1AC209A44();
    if ((sub_1AC30B1BC() & 1) == 0)
    {
      sub_1AC30B1BC();
    }

    v15 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
    sub_1AC30937C();
    MEMORY[0x1E69E5920](v15);
    if ((sub_1AC30B1BC() & 1) == 0)
    {
      sub_1AC30B1BC();
    }

    v14 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
    sub_1AC3093BC();
    v2 = MEMORY[0x1E69E5920](v14);
  }

LABEL_48:
  v12 = MEMORY[0x1E69E7D40];
  v8 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
  v10 = sub_1AC30936C();
  v5 = MEMORY[0x1E69E5920](v8);
  v9 = (*((*v30 & *v12) + 0x88))(v5);
  v11 = sub_1AC3093AC();
  MEMORY[0x1E69E5920](v9);
  v6 = sub_1AC2EF2B4(v10, v11);
  v13 = (*((*v30 & *v12) + 0x88))(v6);
  sub_1AC30942C();
  return [v30 reloadSpecifiers];
}

uint64_t sub_1AC2F2F90(unsigned int a1)
{
  if (a1 == 6)
  {
    return 7;
  }

  else if (a1 == 7)
  {
    return 6;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1AC2F2FF4(char a1)
{
  v14 = a1 & 1;
  v13 = v1;
  MEMORY[0x1E69E5928](v1);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PressHoldDetailedViewController();
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a1 & 1);
  v2 = [v1 reloadSpecifiers];
  v7 = MEMORY[0x1E69E7D40];
  v6 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
  v10 = sub_1AC30936C();
  v3 = MEMORY[0x1E69E5920](v6);
  v9 = (*((*v8 & *v7) + 0x88))(v3);
  v11 = sub_1AC3093AC();
  MEMORY[0x1E69E5920](v9);
  return sub_1AC2EF2B4(v10, v11);
}

void sub_1AC2F31C8()
{
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_volumeControlOn = 0;
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode = 0;
  *(v0 + 1) = 0;
  v1 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode = 0;
  *(v1 + 1) = 0;
  v2 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode = 7;
  *(v2 + 1) = 6;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection = 0;
  sub_1AC30A9DC("init(coder:) has not been implemented", 37, 1);
  sub_1AC30B06C();
  __break(1u);
}

void sub_1AC2F33CC()
{
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_volumeControlOn = 0;
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode = 0;
  *(v0 + 1) = 0;
  v1 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode = 0;
  *(v1 + 1) = 0;
  v2 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode = 7;
  *(v2 + 1) = 6;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection = 0;
  sub_1AC30A9DC("init(coder:) has not been implemented", 37, 1);
  sub_1AC30B06C();
  __break(1u);
}

char *sub_1AC2F3574(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_volumeControlOn = 0;
  v1 = &v9[OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v9[OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v9[OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode];
  *v3 = 7;
  v3[1] = 6;
  *&v9[OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection] = 0;
  MEMORY[0x1E69E5928](a1);
  *&v9[OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice] = a1;
  v7.receiver = v9;
  v7.super_class = type metadata accessor for PressHoldDetailedViewController();
  v6 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0);
  MEMORY[0x1E69E5928](v6);
  v9 = v6;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v6;
}

id sub_1AC2F36DC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PressHoldDetailedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC2F3794@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PressHoldDetailedViewController();
  result = sub_1AC309EBC();
  *a1 = result;
  return result;
}

uint64_t sub_1AC2F37D0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC3095DC();
  sub_1AC2F57A0();
  v4 = sub_1AC30A11C();
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1AC2F385C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC3095DC();
  sub_1AC2F57A0();
  v4 = sub_1AC30A12C();
  MEMORY[0x1E69E5920](a1);
  return v4;
}

double sub_1AC2F3920(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);
  v3 = *v2;
  *v2 = a1;
  v2[1] = a2;
  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F3980(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a3;
}

uint64_t sub_1AC2F39BC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1AC2F3A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v20 = a1;
  v16 = a2;
  v21 = a3;
  v22 = a4;
  v19 = sub_1AC2F5820;
  v28 = MEMORY[0x1E69CA980];
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D188, &qword_1AC316298);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v13 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v12 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D190, &qword_1AC3162A0);
  v29 = *(v35 - 8);
  v30 = v35 - 8;
  v14 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v33 = &v12 - v14;
  v15 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v12 - v15;
  v47 = &v12 - v15;
  *&v45 = v7;
  *(&v45 + 1) = v8;
  *&v46 = v9;
  *(&v46 + 1) = v10;
  MEMORY[0x1E69E5928](v7);

  v17 = &v38;
  v39 = v20;
  v40 = v16;
  v41 = v21;
  v42 = v22;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D198, &qword_1AC3162A8);
  sub_1AC2F5834();
  sub_1AC30A42C();
  MEMORY[0x1E69E5920](v20);

  v27 = sub_1AC2F5B3C();
  sub_1AC30A48C();
  (*(v23 + 8))(v25, v26);
  v43 = v26;
  v44 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v33, v35, v34);
  v37 = *(v29 + 8);
  v36 = v29 + 8;
  v37(v33, v35);
  (*(v29 + 16))(v33, v34, v35);
  sub_1AC207B58(v33, v35, v31);
  v37(v33, v35);
  return (v37)(v34, v35);
}

uint64_t sub_1AC2F3DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v24 = sub_1AC2F5F1C;
  v19 = sub_1AC2F5F30;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1B0, &qword_1AC3162B0);
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v15 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v15 - v15;
  v34 = &v15 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D198, &qword_1AC3162A8);
  v16 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v39 = &v15 - v16;
  v17 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v15 - v17;
  v53 = &v15 - v17;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  *&v52 = v10;
  *(&v52 + 1) = v11;
  MEMORY[0x1E69E5928](v8);

  v18 = &v46;
  v47 = v25;
  v48 = v26;
  v49 = v27;
  v50 = v28;
  MEMORY[0x1E69E5928](v25);

  v20 = &v41;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1C0, &qword_1AC3162B8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0, &qword_1AC3162C0);
  v23 = sub_1AC2F5990();
  v12 = sub_1AC2F5A18();
  sub_1AC2F508C(v24, v18, v21, v22, v23, v12, v5);
  MEMORY[0x1E69E5920](v25);

  MEMORY[0x1E69E5920](v25);

  v31 = sub_1AC2F37D0(v25, v26);
  v29 = sub_1AC3095DC();
  v30 = sub_1AC2F58DC();
  sub_1AC2F57A0();
  sub_1AC30A54C();
  v13 = MEMORY[0x1E69E5920](v31);
  (*(v32 + 8))(v34, v35, v13);
  v38 = sub_1AC2F5834();
  sub_1AC207B58(v39, v37, v40);
  sub_1AC2F5F44(v39);
  sub_1AC2F5FF0(v40, v39);
  sub_1AC207B58(v39, v37, v36);
  sub_1AC2F5F44(v39);
  return sub_1AC2F5F44(v40);
}

uint64_t sub_1AC2F426C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v26 = a1;
  v25 = a2;
  v42 = a3;
  v43 = a4;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v56 = 0;
  v41 = 0;
  v36 = sub_1AC30A90C();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v24 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = v20 - v24;
  v48 = sub_1AC309D7C();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v27 = (v46[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v20 - v27;
  v29 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v30 = v20 - v29;
  v31 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v51 = v20 - v31;
  v32 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v44 = v20 - v32;
  v63 = v20 - v32;
  *&v61 = v12;
  *(&v61 + 1) = v13;
  *&v62 = v14;
  *(&v62 + 1) = v15;
  v57 = v12;
  v58 = v13;
  v59 = v14;
  v60 = v15;
  sub_1AC30A9DC("Volume Up", 9, 1, v11);
  sub_1AC30A8AC();
  v39 = sub_1AC215DE8(v35, &unk_1F20FA718);
  v40 = v16;
  v37 = *(v33 + 8);
  v38 = v33 + 8;
  v37(v35, v36);

  sub_1AC309D6C();

  v45 = sub_1AC2F6204(v17);
  sub_1AC207B58(v51, v48, v44);
  v49 = v46[1];
  v50 = v46 + 1;
  v49(v51, v48);
  v56 = v51;
  v55[2] = v26;
  v55[3] = v25;
  v55[4] = v42;
  v55[5] = v43;
  sub_1AC30A9DC("Volume Down", 11, 1);
  sub_1AC30A8AC();
  v20[1] = sub_1AC215DE8(v35, &unk_1F20FA718);
  v20[2] = v18;
  v37(v35, v36);

  sub_1AC309D6C();

  sub_1AC207B58(v30, v48, v51);
  v49(v30, v48);
  v21 = v46[2];
  v20[3] = v46 + 2;
  v21(v30, v44, v48);
  v22 = v55;
  v55[0] = v30;
  v21(v28, v51, v48);
  v55[1] = v28;
  v54[0] = v48;
  v54[1] = v48;
  v52 = v45;
  v53 = v45;
  sub_1AC23A49C(v22, 2uLL, v54, v23);
  v49(v28, v48);
  v49(v30, v48);
  v49(v51, v48);
  return (v49)(v44, v48);
}

uint64_t *sub_1AC2F48AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = &v105;
  v70 = a5;
  v72 = a1;
  v73 = a2;
  v81 = a3;
  v82 = a4;
  v133 = 0u;
  v134 = 0u;
  memset(__b, 0, 0x21uLL);
  v130 = 0u;
  v131 = 0u;
  v120 = 0u;
  v121 = 0u;
  v105 = 0u;
  v106 = 0u;
  v95 = 0u;
  v96 = 0u;
  v74 = 0;
  v75 = sub_1AC30A90C();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v79 = &v18 - v78;
  *&v133 = v5;
  *(&v133 + 1) = v6;
  *&v134 = v7;
  *(&v134 + 1) = v8;
  sub_1AC30AF1C();

  KeyPath = swift_getKeyPath();
  v83 = MEMORY[0x1AC5B0580](v81);

  if (v83)
  {
    v104[2] = v72;
    v104[3] = v73;
    v104[4] = v81;
    v104[5] = v82;
    v57 = 1;
    sub_1AC30A9DC("Volume Up control is automatically applied to the right Earbud", 62, 1);
    sub_1AC30A8AC();
    v43 = sub_1AC215DE8(v79, &unk_1F20FA718);
    v44 = v9;
    (*(v76 + 8))(v79, v75);
    v45 = v104;
    v104[0] = v43;
    v104[1] = v44;
    sub_1AC207FC0();
    v100 = sub_1AC30A47C();
    v101 = v10;
    v102 = v11;
    v103 = v12;
    v46 = v97;
    v97[0] = v100;
    v97[1] = v10;
    v98 = v11 & 1;
    v99 = v12;
    v59 = &v105;
    v54 = MEMORY[0x1E6981148];
    v55 = MEMORY[0x1E6981138];
    sub_1AC207B58(v97, MEMORY[0x1E6981148], &v105);
    sub_1AC208038(v46);
    v47 = v105;
    v48 = v106;
    v49 = *(&v106 + 1);
    sub_1AC207E00(v105, *(&v105 + 1), v106 & 1);

    v50 = &v92;
    v92 = v47;
    v93 = v48 & 1 & v57;
    v94 = v49;
    v58 = &v95;
    sub_1AC207B58(&v92, v54, &v95);
    sub_1AC208038(v50);
    v51 = v95;
    v52 = v96;
    v53 = *(&v96 + 1);
    sub_1AC207E00(v95, *(&v95 + 1), v96 & 1);

    v56 = &v84;
    v84 = v51;
    v85 = v52 & 1 & v57;
    v86 = v53;
    sub_1AC207BBC(&v84, v54, v54, v55, v55, &v87);
    sub_1AC208038(v56);
    v61 = v87;
    v62 = v88;
    v63 = v89;
    v64 = v90;
    v60 = v91;
    sub_1AC2F60D8(v87, v88, v89, v90);
    __b[0] = v61;
    __b[1] = v62;
    __b[2] = v63;
    __b[3] = v64;
    LOBYTE(__b[4]) = v60 & 1 & v57;
    sub_1AC208038(v58);
    sub_1AC208038(v59);
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v68 = v64;
    v69 = v60;
  }

  else
  {
    v129[2] = v72;
    v129[3] = v73;
    v129[4] = v81;
    v129[5] = v82;
    v35 = 1;
    sub_1AC30A9DC("Volume Up control is automatically applied to the left Earbud", 61, 1);
    sub_1AC30A8AC();
    v21 = sub_1AC215DE8(v79, &unk_1F20FA718);
    v22 = v13;
    (*(v76 + 8))(v79, v75);
    v23 = v129;
    v129[0] = v21;
    v129[1] = v22;
    sub_1AC207FC0();
    v125 = sub_1AC30A47C();
    v126 = v14;
    v127 = v15;
    v128 = v16;
    v24 = v122;
    v122[0] = v125;
    v122[1] = v14;
    v123 = v15 & 1;
    v124 = v16;
    v37 = &v130;
    v32 = MEMORY[0x1E6981148];
    v33 = MEMORY[0x1E6981138];
    sub_1AC207B58(v122, MEMORY[0x1E6981148], &v130);
    sub_1AC208038(v24);
    v25 = v130;
    v26 = v131;
    v27 = *(&v131 + 1);
    sub_1AC207E00(v130, *(&v130 + 1), v131 & 1);

    v28 = &v117;
    v117 = v25;
    v118 = v26 & 1 & v35;
    v119 = v27;
    v36 = &v120;
    sub_1AC207B58(&v117, v32, &v120);
    sub_1AC208038(v28);
    v29 = v120;
    v30 = v121;
    v31 = *(&v121 + 1);
    sub_1AC207E00(v120, *(&v120 + 1), v121 & 1);

    v34 = &v109;
    v109 = v29;
    v110 = v30 & 1 & v35;
    v111 = v31;
    sub_1AC207CB4(&v109, v32, v32, v33, v33, &v112);
    sub_1AC208038(v34);
    v39 = v112;
    v40 = v113;
    v41 = v114;
    v42 = v115;
    v38 = v116;
    sub_1AC2F60D8(v112, v113, v114, v115);
    __b[0] = v39;
    __b[1] = v40;
    __b[2] = v41;
    __b[3] = v42;
    LOBYTE(__b[4]) = v38 & 1 & v35;
    sub_1AC208038(v36);
    sub_1AC208038(v37);
    v65 = v39;
    v66 = v40;
    v67 = v41;
    v68 = v42;
    v69 = v38;
  }

  v20 = v107;
  v107[0] = v65;
  v107[1] = v66;
  v107[2] = v67;
  v107[3] = v68;
  v108 = v69 & 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0, &qword_1AC3162C0);
  sub_1AC2F5A18();
  sub_1AC207B58(v20, v19, v70);
  sub_1AC2F614C(v20);
  return sub_1AC2F614C(__b);
}

uint64_t sub_1AC2F508C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = a7;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = a3;
  v20 = a4;
  v11 = (*(*(a4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v10 - v11;
  v8(v7);
  return sub_1AC30A75C();
}

uint64_t sub_1AC2F517C(unsigned int a1)
{
  v37 = a1;
  v35 = "Fatal error";
  v36 = "HeadphoneSettingsUI/PressHoldDetailedViewController.swift";
  v50 = 0;
  v38 = sub_1AC30A90C();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v19 - v41;
  v50 = v2;
  if (v2)
  {
    switch(v37)
    {
      case 1u:
        v47 = v37;
        sub_1AC30A9DC("Siri", 4, 1, v1);
        sub_1AC30A8AC();
        v11 = type metadata accessor for CBPeerUIGestureMode(0);
        v23 = sub_1AC215DE8(v42, v11);
        v24 = v12;
        (*(v39 + 8))(v42, v38);
        v33 = v23;
        v34 = v24;
        break;
      case 2u:
        v45 = v37;
        sub_1AC30A9DC("Media", 5, 1, v1);
        sub_1AC30A8AC();
        v7 = type metadata accessor for CBPeerUIGestureMode(0);
        v27 = sub_1AC215DE8(v42, v7);
        v28 = v8;
        (*(v39 + 8))(v42, v38);
        v33 = v27;
        v34 = v28;
        break;
      case 3u:
        v44 = v37;
        sub_1AC30A9DC("Forward", 7, 1, v1);
        sub_1AC30A8AC();
        v5 = type metadata accessor for CBPeerUIGestureMode(0);
        v29 = sub_1AC215DE8(v42, v5);
        v30 = v6;
        (*(v39 + 8))(v42, v38);
        v33 = v29;
        v34 = v30;
        break;
      case 4u:
        v43 = v37;
        sub_1AC30A9DC("Backward", 8, 1, v1);
        sub_1AC30A8AC();
        v3 = type metadata accessor for CBPeerUIGestureMode(0);
        v31 = sub_1AC215DE8(v42, v3);
        v32 = v4;
        (*(v39 + 8))(v42, v38);
        v33 = v31;
        v34 = v32;
        break;
      case 5u:
        v46 = v37;
        sub_1AC30A9DC("Noise Management", 16, 1, v1);
        sub_1AC30A8AC();
        v9 = type metadata accessor for CBPeerUIGestureMode(0);
        v25 = sub_1AC215DE8(v42, v9);
        v26 = v10;
        (*(v39 + 8))(v42, v38);
        v33 = v25;
        v34 = v26;
        break;
      case 6u:
        v49 = v37;
        sub_1AC30A9DC("Volume Up", 9, 1, v1);
        sub_1AC30A8AC();
        v15 = type metadata accessor for CBPeerUIGestureMode(0);
        v19 = sub_1AC215DE8(v42, v15);
        v20 = v16;
        (*(v39 + 8))(v42, v38);
        v33 = v19;
        v34 = v20;
        break;
      case 7u:
        v48 = v37;
        sub_1AC30A9DC("Volume Down", 11, 1, v1);
        sub_1AC30A8AC();
        v13 = type metadata accessor for CBPeerUIGestureMode(0);
        v21 = sub_1AC215DE8(v42, v13);
        v22 = v14;
        (*(v39 + 8))(v42, v38);
        v33 = v21;
        v34 = v22;
        break;
      default:
        sub_1AC27488C();
        sub_1AC30B06C();
        __break(1u);
        break;
    }
  }

  else
  {
    v33 = sub_1AC30A9DC("", 0, 1, v1);
    v34 = v17;
  }

  return v33;
}

unint64_t sub_1AC2F57A0()
{
  v2 = qword_1EB54D180;
  if (!qword_1EB54D180)
  {
    sub_1AC3095DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F5834()
{
  v2 = qword_1EB54D1A0;
  if (!qword_1EB54D1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D198, &qword_1AC3162A8);
    sub_1AC2F58DC();
    sub_1AC2F5AB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F58DC()
{
  v2 = qword_1EB54D1A8;
  if (!qword_1EB54D1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D1B0, &qword_1AC3162B0);
    sub_1AC2F5990();
    sub_1AC2F5A18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F5990()
{
  v2 = qword_1EB54D1B8;
  if (!qword_1EB54D1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D1C0, &qword_1AC3162B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F5A18()
{
  v2 = qword_1EB54D1C8;
  if (!qword_1EB54D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D1D0, &qword_1AC3162C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F5AB4()
{
  v2 = qword_1EB54D1D8;
  if (!qword_1EB54D1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D1E0, &qword_1AC3162C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F5B3C()
{
  v2 = qword_1EB54D1E8;
  if (!qword_1EB54D1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D188, &qword_1AC316298);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2F5BF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 16) < 0x100000000uLL)
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC2F5D38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1AC2F5F44(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1B0, &qword_1AC3162B0);
  (*(*(v1 - 8) + 8))(a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D198, &qword_1AC3162A8) + 36);

  MEMORY[0x1E69E5920](*(v3 + 8));
  return a1;
}

uint64_t sub_1AC2F5FF0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1B0, &qword_1AC3162B0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D198, &qword_1AC3162A8) + 36);
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);
  MEMORY[0x1E69E5928](v7);
  result = a2;
  *(a2 + v5 + 8) = v7;
  return result;
}

unint64_t sub_1AC2F6204(double a1)
{
  v3 = qword_1EB54D1F0;
  if (!qword_1EB54D1F0)
  {
    sub_1AC309D7C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1F0);
    return WitnessTable;
  }

  return v3;
}

unint64_t sub_1AC2F6284()
{
  v2 = qword_1EB54D1F8;
  if (!qword_1EB54D1F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1F8);
    return WitnessTable;
  }

  return v2;
}

void sub_1AC2F6300(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
}

unint64_t sub_1AC2F634C()
{
  v2 = qword_1EB54D208;
  if (!qword_1EB54D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D200, &qword_1AC3164D0);
    sub_1AC2F6284();
    sub_1AC2F5AB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2F640C()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553DC8);
  __swift_project_value_buffer(v1, qword_1EB553DC8);
  sub_1AC30A9DC("com.apple.HeadphoneSettings", 27, 1);
  sub_1AC30A9DC("tempPairing", 11, 1);
  return sub_1AC309E5C();
}

uint64_t sub_1AC2F64B0()
{
  if (qword_1EB5534A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553DC8);
}

uint64_t sub_1AC2F651C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC2F64B0();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC2F65B0()
{
  result = sub_1AC30A9DC("TEMP_PAIRING_IDENTIFIER", 23, 1);
  qword_1EB5534B0 = result;
  qword_1EB5534B8 = v1;
  return result;
}

uint64_t *sub_1AC2F65F4()
{
  if (qword_1EB5534A8 != -1)
  {
    swift_once();
  }

  return &qword_1EB5534B0;
}

uint64_t static TempPairingFeature.identifier.getter()
{
  v1 = *sub_1AC2F65F4();

  return v1;
}

uint64_t static TempPairingFeature.supported(_:host:)(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  sub_1AC30929C(v8);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D218, &unk_1AC316538);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v5 = v12 != 0;
  sub_1AC30915C();
  v4 = sub_1AC309A1C();

  type metadata accessor for AAMultiState(HIDWORD(v4));
  sub_1AC21B624();
  v6 = sub_1AC30B1BC();
  sub_1AC204664(&v9);
  LOBYTE(v7) = v5;
  HIBYTE(v7) = v6 & 1;
  return v7;
}

uint64_t static TempPairingFeature.specifiers(_:host:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v20 = a2;
  v51 = 0;
  v50 = sub_1AC2F6F0C;
  v54 = sub_1AC2F7040;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v44 = 0;
  v39 = sub_1AC30A90C();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v16 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v38 = &v16 - v16;
  v33 = sub_1AC30A8EC();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v17 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v35 = &v16 - v17;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v16 - v18;
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v16 - v19;
  v47 = sub_1AC309AAC();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v21 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v48 = &v16 - v21;
  v62 = v7;
  v61 = v8;
  v60 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v22 = MEMORY[0x1E69A2B08];
  v23 = sub_1AC205220();
  v24 = v9;
  sub_1AC205220();
  v49 = sub_1AC309D3C();
  v28 = 22;
  sub_1AC30A8DC();
  v40 = 1;
  sub_1AC30A9DC("", v44, 1);
  v26 = v10;
  sub_1AC30A8CC();

  sub_1AC30956C();
  v27 = v11;
  sub_1AC30A8BC();

  sub_1AC30A9DC(" temporarily connected", v28, v40 & 1);
  v29 = v12;
  sub_1AC30A8CC();

  (*(v31 + 16))(v30, v34, v33);
  (*(v31 + 32))(v35, v30, v33);
  (*(v31 + 8))(v34, v33);
  sub_1AC30A8FC();
  v13 = type metadata accessor for TempPairingFeature();
  v41 = sub_1AC215DE8(v38, v13);
  v42 = v14;
  (*(v36 + 8))(v38, v39);
  v43 = v59;
  memset(v59, 0, sizeof(v59));
  sub_1AC20599C();
  sub_1AC309A9C();
  v52 = sub_1AC309D1C();
  (*(v45 + 8))(v48, v47);

  v55 = sub_1AC309D0C();

  v58 = v53;
  v56 = sub_1AC309CDC();

  v57 = sub_1AC309D2C();

  return v57;
}

uint64_t sub_1AC2F6F0C(void *a1)
{
  v5 = sub_1AC30AB8C();
  v2 = *MEMORY[0x1E69C58C8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58C8]);
  sub_1AC30A92C();
  v4 = sub_1AC30A91C();

  [a1 setProperty:v5 forKey:{v4, MEMORY[0x1E69E5920](v2).n128_f64[0]}];
  MEMORY[0x1E69E5920](v4);
  return swift_unknownObjectRelease();
}

double sub_1AC2F6FC0(void *a1)
{
  sub_1AC2F65F4();

  v3 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F716C()
{
  v0 = sub_1AC30A9DC("Temp Pairing Feature", 20, 1);
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t B698FeatureContent.marketingName.getter()
{
  v15 = 0;
  v7 = 0;
  v11 = sub_1AC30A90C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v11);
  v10 = &v5 - v6;
  v15 = v1;
  v14 = v1;
  sub_1AC30A9DC("AirPods Pro", 11, 1, v0);
  sub_1AC30A8AC();
  v2 = sub_1AC3097BC();
  v12 = sub_1AC215DE8(v10, v2);
  v13 = v3;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t B698FeatureContent.singularName.getter()
{
  v15 = 0;
  v7 = 0;
  v11 = sub_1AC30A90C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v11);
  v10 = &v5 - v6;
  v15 = v1;
  v14 = v1;
  sub_1AC30A9DC("AirPod", 6, 1, v0);
  sub_1AC30A8AC();
  v2 = sub_1AC3097BC();
  v12 = sub_1AC215DE8(v10, v2);
  v13 = v3;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t B698FeatureContent.platformName.getter()
{
  v15 = 0;
  v7 = 0;
  v11 = sub_1AC30A90C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v11);
  v10 = &v5 - v6;
  v15 = v1;
  v14 = v1;
  sub_1AC30A9DC("AirPods", 7, 1, v0);
  sub_1AC30A8AC();
  v2 = sub_1AC3097BC();
  v12 = sub_1AC215DE8(v10, v2);
  v13 = v3;
  (*(v8 + 8))(v10, v11);
  return v12;
}

id sub_1AC2F76DC()
{
  sub_1AC20BE24();
  type metadata accessor for HeadphoneSettingsController();
  result = sub_1AC20BE88();
  qword_1EB553DE0 = result;
  return result;
}

uint64_t *sub_1AC2F7724()
{
  if (qword_1EB553540 != -1)
  {
    swift_once();
  }

  return &qword_1EB553DE0;
}

uint64_t sub_1AC2F7784()
{
  v1 = sub_1AC2F7724();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

double sub_1AC2F77E4(uint64_t a1)
{
  v3 = sub_1AC2F7724();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1AC2F7870(uint64_t a1))(uint64_t a1)
{
  sub_1AC2F7724();
  swift_beginAccess();
  return sub_1AC20949C;
}

void *sub_1AC2F78CC@<X0>(void *a1@<X8>)
{
  v26 = sub_1AC30A9DC("airpodspro.chargingcase.wireless.fill", 37, 1);
  v21 = v1;
  v22 = sub_1AC2F7B4C();
  v23 = sub_1AC30A9DC("B698", 4, 1);
  v24 = v2;
  sub_1AC20D404();
  v9 = sub_1AC30A9DC("B698-Left");
  v10 = v3;
  v8 = sub_1AC2F7724();
  swift_beginAccess();
  v11 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  v25 = sub_1AC20D468(v9, v10, v11);
  v13 = sub_1AC30A9DC("B698-Right", 10, 1);
  v14 = v4;
  v12 = sub_1AC2F7724();
  swift_beginAccess();
  v15 = *v12;
  MEMORY[0x1E69E5928](*v12);
  swift_endAccess();
  v20 = sub_1AC20D468(v13, v14, v15);
  v17 = sub_1AC30A9DC("B698-Case", 9, 1);
  v18 = v5;
  v16 = sub_1AC2F7724();
  swift_beginAccess();
  v19 = *v16;
  MEMORY[0x1E69E5928](*v16);
  swift_endAccess();
  v6 = sub_1AC20D468(v17, v18, v19);
  sub_1AC216510(v26, v21, v22, v23, v24, 0, 0, v25, v28, v20, v6, 0, sub_1AC20D540, 0);
  return memcpy(a1, v28, 0x60uLL);
}

id sub_1AC2F7B4C()
{
  v146 = 0;
  sub_1AC20D5F4();
  v124 = sub_1AC20D658();
  v145 = v124;
  v113 = 1;
  v0 = sub_1AC30A9DC("BudHeight", 9, 1);
  v48 = v143;
  v114 = MEMORY[0x1E69E6158];
  v144 = MEMORY[0x1E69E6158];
  v143[0] = v0;
  v143[1] = v1;
  v47 = sub_1AC30AC3C();
  v44 = v144;
  v2 = __swift_project_boxed_opaque_existential_1(v143, v144);
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v41 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v45 = &v41 - v41;
  (*(v42 + 16))(v3);
  v46 = sub_1AC30B19C();
  (*(v42 + 8))(v45, v44);
  v120 = 0x1FB921000uLL;
  [v124 0x1FB921E28];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v48);
  v4 = sub_1AC30A9DC("UnifiedSpacingBetweenBuds", 25, v113 & 1);
  v56 = v141;
  v142 = v114;
  v141[0] = v4;
  v141[1] = v5;
  v55 = sub_1AC30AC3C();
  v52 = v142;
  v6 = __swift_project_boxed_opaque_existential_1(v56, v142);
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v49 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v41 - v49;
  (*(v50 + 16))(v7);
  v54 = sub_1AC30B19C();
  (*(v50 + 8))(v53, v52);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v56);
  v8 = sub_1AC30A9DC("SeparateSpacingBetweenBuds", 26, v113 & 1);
  v64 = v139;
  v140 = v114;
  v139[0] = v8;
  v139[1] = v9;
  v63 = sub_1AC30AC3C();
  v60 = v140;
  v10 = __swift_project_boxed_opaque_existential_1(v64, v140);
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v57 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v61 = &v41 - v57;
  (*(v58 + 16))(v11);
  v62 = sub_1AC30B19C();
  (*(v58 + 8))(v61, v60);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v64);
  v12 = sub_1AC30A9DC("CaseHeight", 10, v113 & 1);
  v72 = v137;
  v138 = v114;
  v137[0] = v12;
  v137[1] = v13;
  v71 = sub_1AC30AC3C();
  v68 = v138;
  v14 = __swift_project_boxed_opaque_existential_1(v72, v138);
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v65 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v41 - v65;
  (*(v66 + 16))(v15);
  v70 = sub_1AC30B19C();
  (*(v66 + 8))(v69, v68);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v72);
  v16 = sub_1AC30A9DC("UnifiedSpacingBudsCase", 22, v113 & 1);
  v80 = v135;
  v136 = v114;
  v135[0] = v16;
  v135[1] = v17;
  v79 = sub_1AC30AC3C();
  v76 = v136;
  v18 = __swift_project_boxed_opaque_existential_1(v80, v136);
  v74 = *(v76 - 8);
  v75 = v76 - 8;
  v73 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v41 - v73;
  (*(v74 + 16))(v19);
  v78 = sub_1AC30B19C();
  (*(v74 + 8))(v77, v76);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v80);
  v20 = sub_1AC30A9DC("SeparateSpacingBudsCase", 23, v113 & 1);
  v88 = v133;
  v134 = v114;
  v133[0] = v20;
  v133[1] = v21;
  v87 = sub_1AC30AC3C();
  v84 = v134;
  v22 = __swift_project_boxed_opaque_existential_1(v88, v134);
  v82 = *(v84 - 8);
  v83 = v84 - 8;
  v81 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v85 = &v41 - v81;
  (*(v82 + 16))(v23);
  v86 = sub_1AC30B19C();
  (*(v82 + 8))(v85, v84);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v88);
  v24 = sub_1AC30A9DC("DarkBiasValue", 13, v113 & 1);
  v96 = v131;
  v132 = v114;
  v131[0] = v24;
  v131[1] = v25;
  v95 = sub_1AC30ABEC();
  v92 = v132;
  v26 = __swift_project_boxed_opaque_existential_1(v96, v132);
  v90 = *(v92 - 8);
  v91 = v92 - 8;
  v89 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v93 = &v41 - v89;
  (*(v90 + 16))(v27);
  v94 = sub_1AC30B19C();
  (*(v90 + 8))(v93, v92);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v96);
  v28 = sub_1AC30A9DC("DarkMatrixValue", 15, v113 & 1);
  v104 = v129;
  v130 = v114;
  v129[0] = v28;
  v129[1] = v29;
  v103 = sub_1AC30ABEC();
  v100 = v130;
  v30 = __swift_project_boxed_opaque_existential_1(v104, v130);
  v98 = *(v100 - 8);
  v99 = v100 - 8;
  v97 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v101 = &v41 - v97;
  (*(v98 + 16))(v31);
  v102 = sub_1AC30B19C();
  (*(v98 + 8))(v101, v100);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v104);
  v32 = sub_1AC30A9DC("LightBiasValue", 14, v113 & 1);
  v112 = v127;
  v128 = v114;
  v127[0] = v32;
  v127[1] = v33;
  v111 = sub_1AC30ABEC();
  v108 = v128;
  v34 = __swift_project_boxed_opaque_existential_1(v112, v128);
  v106 = *(v108 - 8);
  v107 = v108 - 8;
  v105 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v109 = &v41 - v105;
  (*(v106 + 16))(v35);
  v110 = sub_1AC30B19C();
  (*(v106 + 8))(v109, v108);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v112);
  v36 = sub_1AC30A9DC("LightMatrixValue", 16, v113 & 1);
  v123 = v125;
  v126 = v114;
  v125[0] = v36;
  v125[1] = v37;
  v122 = sub_1AC30ABEC();
  v118 = v126;
  v38 = __swift_project_boxed_opaque_existential_1(v123, v126);
  v116 = *(v118 - 8);
  v117 = v118 - 8;
  v115 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v119 = &v41 - v115;
  (*(v116 + 16))(v39);
  v121 = sub_1AC30B19C();
  (*(v116 + 8))(v119, v118);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v123);
  return v124;
}

void *sub_1AC2F88F8@<X0>(void *a1@<X8>)
{
  v60 = a1;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v19 = 0;
  v54 = sub_1AC30A90C();
  v28 = *(v54 - 8);
  v29 = v54 - 8;
  v15 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v53 = &v14 - v15;
  v44 = sub_1AC30A8EC();
  v26 = *(v44 - 8);
  v27 = v44 - 8;
  v16 = (v26[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v14 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v16);
  v41 = &v14 - v17;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v17);
  v47 = &v14 - v18;
  v67 = v1;

  v49 = sub_1AC3097BC();
  v22 = v66;
  v66[3] = v49;
  v66[4] = &protocol witness table for B698FeatureContent;
  v66[0] = v1;
  v21 = v49;
  v20 = &protocol witness table for B698FeatureContent;
  __swift_project_boxed_opaque_existential_1(v66, v49);
  v35 = (v20[1])(v21);
  v59 = v4;
  v64 = v35;
  v65 = v4;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v24 = &v63;
  v63 = v30;
  v31 = 1;
  sub_1AC30A8DC();
  v32 = "Place ";
  v33 = 6;
  v36 = 1;
  sub_1AC30A9DC("Place ");
  v23 = v5;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC(" in both ears to use Adaptive Audio.", 36, v36 & 1);
  v25 = v6;
  sub_1AC30A8CC();

  v40 = v26[2];
  v39 = v26 + 2;
  v40(v41, v47, v44);
  v43 = v26[4];
  v42 = v26 + 4;
  v43(v48, v41, v44);
  v46 = v26[1];
  v45 = v26 + 1;
  v46(v47, v44);
  sub_1AC30A8FC();
  v50 = &off_1F20FA790;
  v57 = sub_1AC215DE8(v53, v49);
  v58 = v7;
  v52 = *(v28 + 8);
  v51 = v28 + 8;
  v52(v53, v54);
  v37 = &v62;
  v62 = v30;
  sub_1AC30A8DC();
  sub_1AC30A9DC(v32, v33, v36 & 1);
  v34 = v8;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC(" in both ears to use Noise Cancellation.", 40, v36 & 1);
  v38 = v9;
  sub_1AC30A8CC();

  v40(v41, v47, v44);
  v43(v48, v41, v44);
  v46(v47, v44);
  sub_1AC30A8FC();
  v55 = sub_1AC215DE8(v53, v49);
  v56 = v10;
  v52(v53, v54);
  v11 = sub_1AC20DD78();
  v61 = &v68;
  sub_1AC236A90(v57, v58, v55, v56, v11, v12, &v68);

  return memcpy(v60, v61, 0x30uLL);
}

uint64_t B698FeatureContent.deviceGenerationSpecificName.getter()
{
  v15 = 0;
  v7 = 0;
  v11 = sub_1AC30A90C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v11);
  v10 = &v5 - v6;
  v15 = v1;
  v14 = v1;
  sub_1AC30A9DC("AirPods Pro 2", 13, 1, v0);
  sub_1AC30A8AC();
  v2 = sub_1AC3097BC();
  v12 = sub_1AC215DE8(v10, v2);
  v13 = v3;
  (*(v8 + 8))(v10, v11);
  return v12;
}

unint64_t B698FeatureContent.hearingFeatureContent.getter@<X0>(void *a1@<X8>)
{

  a1[3] = sub_1AC3097BC();
  result = sub_1AC2F9190();
  a1[4] = result;
  *a1 = v1;
  return result;
}

unint64_t sub_1AC2F9190()
{
  v2 = qword_1EB54D220;
  if (!qword_1EB54D220)
  {
    sub_1AC3097BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D220);
    return WitnessTable;
  }

  return v2;
}

uint64_t B698FeatureContent.deviceMarketingName.getter()
{
  v6 = v0;

  v4 = sub_1AC3097BC();
  v5 = &protocol witness table for B698FeatureContent;
  v3[0] = v0;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v2 = off_1F20FA778[0]();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v2;
}

uint64_t B698FeatureContent.devicePlatformName.getter()
{
  v6 = v0;

  v4 = sub_1AC3097BC();
  v5 = &protocol witness table for B698FeatureContent;
  v3[0] = v0;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v2 = off_1F20FA788();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v2;
}

uint64_t B698FeatureContent.singleDeviceName.getter()
{
  v6 = v0;

  v4 = sub_1AC3097BC();
  v5 = &protocol witness table for B698FeatureContent;
  v3[0] = v0;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v2 = off_1F20FA780[0]();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v2;
}

uint64_t B698FeatureContent.suggestionFitSymbols.getter@<X0>(uint64_t *a1@<X8>)
{
  v5 = sub_1AC30A9DC("airpods.pro.eartips.sizes", 25, 1);
  v6 = v1;
  v7 = sub_1AC30A9DC("airpods.pro.right.arrow.trianglehead.down.left", 46, 1);
  v8 = v2;
  result = sub_1AC30A9DC("airpods.pro.right.arrow.trianglehead.up.right", 45, 1);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = result;
  a1[5] = v4;
  return result;
}

id B698FeatureContent.faultcheckUnknownImage.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC("FaultCheckUnknown", 17, 1);
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/B698FeaturesProvider.swift", 46, 2, 113, 0);
  __break(1u);
  return v2;
}

id B698FeatureContent.faultcheckFailedImage.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC("FaultCheckFailed", 16, 1);
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/B698FeaturesProvider.swift", 46, 2, 117, 0);
  __break(1u);
  return v2;
}

id B698FeatureContent.occlusionLeftImage.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC("CleanAirPod-Left", 16, 1);
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/B698FeaturesProvider.swift", 46, 2, 121, 0);
  __break(1u);
  return v2;
}

id B698FeatureContent.occlusionRightImage.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC("CleanAirPod-Right", 17, 1);
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/B698FeaturesProvider.swift", 46, 2, 125, 0);
  __break(1u);
  return v2;
}

id B698FeatureContent.fitNoiseLeft.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC("airpod_left", 11, 1);
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/B698FeaturesProvider.swift", 46, 2, 129, 0);
  __break(1u);
  return v2;
}

id B698FeatureContent.fitNoiseRight.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC("airpod_right", 12, 1);
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/B698FeaturesProvider.swift", 46, 2, 133, 0);
  __break(1u);
  return v2;
}

uint64_t B698FeatureContent.videoAirPodAdjustBundle.getter()
{
  v1 = sub_1AC2F7724();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t B698FeatureContent.videoAirPodLeftRightBundle.getter()
{
  v1 = sub_1AC2F7724();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC2F9E70@<X0>(void *a1@<X8>)
{
  result = B698FeatureContent.suggestionFitSymbols.getter(v8);
  v2 = v8[1];
  v3 = v8[2];
  v4 = v8[3];
  v5 = v8[4];
  v6 = v8[5];
  *a1 = v8[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  return result;
}

uint64_t B698FeatureContent.getAssetsDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC98, &unk_1AC30F220);
  sub_1AC30B18C();
  return sub_1AC30A83C();
}

uint64_t B698FeatureContent.deviceColor.getter()
{
  v1 = sub_1AC3097AC();
  v2 = sub_1AC30919C();
  MEMORY[0x1E69E5920](v1);
  return v2;
}

UIImage __swiftcall B698FeatureContent.leftImage(isDark:)(Swift::Bool isDark)
{
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v18 = isDark;
  if (isDark)
  {
    v13 = sub_1AC30A9DC("dark", 4, 1);
  }

  else
  {
    v13 = sub_1AC30A9DC("light", 5, 1);
  }

  v15 = v13;
  v16 = v1;
  sub_1AC20D404();
  v14[0] = sub_1AC30B17C();
  v14[1] = v2;
  v3 = sub_1AC30A9DC("FitTest-Left-", 13, 1);
  MEMORY[0x1AC5B07E0](v3);

  sub_1AC30B15C();
  v4 = sub_1AC30A9DC("", 0, 1);
  MEMORY[0x1AC5B07E0](v4);

  sub_1AC2063F0(v14);
  v9 = sub_1AC30A9BC();
  v10 = v5;
  v8 = sub_1AC2F7724();
  swift_beginAccess();
  v11 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  v12 = sub_1AC20D468(v9, v10, v11);
  if (v12)
  {
    v7.super.isa = v12;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/B698FeaturesProvider.swift", 46, 2, 225, 0);
    __break(1u);
  }

  return v7;
}

UIImage __swiftcall B698FeatureContent.rightImage(isDark:)(Swift::Bool isDark)
{
  v17 = 0;
  v15 = 0;
  v16 = 0;
  v18 = isDark;
  if (isDark)
  {
    v13 = sub_1AC30A9DC("dark", 4, 1);
  }

  else
  {
    v13 = sub_1AC30A9DC("light", 5, 1);
  }

  v15 = v13;
  v16 = v1;
  sub_1AC20D404();
  v14[0] = sub_1AC30B17C();
  v14[1] = v2;
  v3 = sub_1AC30A9DC("FitTest-Right-", 14, 1);
  MEMORY[0x1AC5B07E0](v3);

  sub_1AC30B15C();
  v4 = sub_1AC30A9DC("", 0, 1);
  MEMORY[0x1AC5B07E0](v4);

  sub_1AC2063F0(v14);
  v9 = sub_1AC30A9BC();
  v10 = v5;
  v8 = sub_1AC2F7724();
  swift_beginAccess();
  v11 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  v12 = sub_1AC20D468(v9, v10, v11);
  if (v12)
  {
    v7.super.isa = v12;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/B698FeaturesProvider.swift", 46, 2, 230, 0);
    __break(1u);
  }

  return v7;
}

uint64_t B698FeatureContent.featureTitleSettings.getter()
{
  v15 = 0;
  v7 = 0;
  v11 = sub_1AC30A90C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v11);
  v10 = &v5 - v6;
  v15 = v1;
  v14 = v1;
  sub_1AC30A9DC("Ear Tip Fit Test", 16, 1, v0);
  sub_1AC30A8AC();
  v2 = sub_1AC3097BC();
  v12 = sub_1AC215DE8(v10, v2);
  v13 = v3;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t B698FeatureContent.featureFooterSettings.getter()
{
  v31 = 0;
  v23 = 0;
  v27 = sub_1AC30A90C();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v7 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = &v7 - v7;
  v20 = sub_1AC30A8EC();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v10 = *(v18 + 64);
  v8 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v7 - v8;
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v8);
  v17 = &v7 - v9;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v9);
  v21 = &v7 - v11;
  v31 = v0;
  v15 = &v30;
  v30 = v0;
  sub_1AC30A8DC();
  v14 = 1;
  sub_1AC30A9DC("Check the fit of your ", 22, 1);
  v12 = v1;
  sub_1AC30A8CC();

  B698FeatureContent.platformName.getter();
  v13 = v2;
  sub_1AC30A8BC();

  sub_1AC30A9DC(" ear tips to determine which size provides the best seal and acoustic performance.", 82, v14 & 1);
  v16 = v3;
  sub_1AC30A8CC();

  (*(v18 + 16))(v17, v21, v20);
  (*(v18 + 32))(v22, v17, v20);
  (*(v18 + 8))(v21, v20);
  sub_1AC30A8FC();
  v4 = sub_1AC3097BC();
  v28 = sub_1AC215DE8(v26, v4);
  v29 = v5;
  (*(v24 + 8))(v26, v27);
  return v28;
}

uint64_t sub_1AC2FAC74()
{
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v23 = 0;
  v41 = sub_1AC30A90C();
  v32 = *(v41 - 8);
  v33 = v41 - 8;
  v13 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v40 = &v13 - v13;
  v29 = sub_1AC30A8EC();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v14 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v13 - v14;
  v15 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v14);
  v26 = &v13 - v15;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v15);
  v30 = &v13 - v16;
  v56 = v0;

  v36 = sub_1AC3097BC();
  v19 = v55;
  v55[3] = v36;
  v55[4] = &protocol witness table for B698FeatureContent;
  v55[0] = v0;
  v18 = v36;
  v17 = &protocol witness table for B698FeatureContent;
  __swift_project_boxed_opaque_existential_1(v55, v36);
  v22 = (v17[3])(v18);
  v46 = v3;
  v53 = v22;
  v54 = v3;
  __swift_destroy_boxed_opaque_existential_1(v19);
  v24 = &v52;
  v52 = v34;
  v20 = 15;
  sub_1AC30A8DC();
  v35 = 1;
  sub_1AC30A9DC("Press And Hold ", v20, 1);
  v21 = v4;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC("", v23, v35 & 1);
  v25 = v5;
  sub_1AC30A8CC();

  (*(v27 + 16))(v26, v30, v29);
  (*(v27 + 32))(v31, v26, v29);
  (*(v27 + 8))(v30, v29);
  sub_1AC30A8FC();
  v37 = &off_1F20FA790;
  v42 = sub_1AC215DE8(v40, v36);
  v43 = v6;
  v39 = *(v32 + 8);
  v38 = v32 + 8;
  v39(v40, v41);
  v51 = v34;
  sub_1AC30A9DC("Press and hold the stem to cycle between the selected listening modes.", 70, v35 & 1);
  sub_1AC30A8AC();
  v44 = sub_1AC215DE8(v40, v36);
  v45 = v7;
  v39(v40, v41);
  nullsub_1();
  v47 = v8;
  v48 = v9;
  v49 = v10;
  v50 = v11;

  return v47;
}

uint64_t sub_1AC2FB198()
{
  v7 = v0;

  v5 = sub_1AC3097BC();
  v6 = &protocol witness table for B698FeatureContent;
  v4[0] = v0;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  off_1F20FA788();
  nullsub_1();
  v3 = v1;
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v3;
}

_BYTE *sub_1AC2FB270()
{
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v19 = 0;
  v50 = sub_1AC30A90C();
  v25 = *(v50 - 8);
  v26 = v50 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v49 = &v11 - v12;
  v39 = sub_1AC30A8EC();
  v23 = *(v39 - 8);
  v24 = v39 - 8;
  v13 = (v23[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v11 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v13);
  v36 = &v11 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v14);
  v42 = &v11 - v15;
  v62 = v0;

  v44 = sub_1AC3097BC();
  v18 = v61;
  v61[3] = v44;
  v61[4] = &protocol witness table for B698FeatureContent;
  v61[0] = v0;
  v17 = v44;
  v16 = &protocol witness table for B698FeatureContent;
  __swift_project_boxed_opaque_existential_1(v61, v44);
  v30 = (v16[3])(v17);
  v55 = v3;
  v59 = v30;
  v60 = v3;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v46 = type metadata accessor for SpatialFeatureContent();
  v21 = &v58;
  v58 = v27;
  v28 = 1;
  sub_1AC30A8DC();
  v31 = 1;
  sub_1AC30A9DC("Take ", 5, 1);
  v20 = v4;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC(" Out of Your Ears to Continue", 29, v31 & 1);
  v22 = v5;
  sub_1AC30A8CC();

  v35 = v23[2];
  v34 = v23 + 2;
  v35(v36, v42, v39);
  v38 = v23[4];
  v37 = v23 + 4;
  v38(v43, v36, v39);
  v41 = v23[1];
  v40 = v23 + 1;
  v41(v42, v39);
  sub_1AC30A8FC();
  v45 = &off_1F20FA790;
  v51 = sub_1AC215DE8(v49, v44);
  v52 = v6;
  v48 = *(v25 + 8);
  v47 = v25 + 8;
  v48(v49, v50);
  v32 = &v57;
  v57 = v27;
  sub_1AC30A8DC();
  sub_1AC30A9DC("Place ", 6, v31 & 1);
  v29 = v7;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC(" in your ears to try spatial audio.", 35, v31 & 1);
  v33 = v8;
  sub_1AC30A8CC();

  v35(v36, v42, v39);
  v38(v43, v36, v39);
  v41(v42, v39);
  sub_1AC30A8FC();
  v53 = sub_1AC215DE8(v49, v44);
  v54 = v9;
  v48(v49, v50);
  v56 = SpatialFeatureContent.__allocating_init(removeString:putInEarString:forceFitTest:)(v51, v52, v53, v54, 0);

  return v56;
}

uint64_t sub_1AC2FB908@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v10 = "Fatal error";
  v11 = "Unexpectedly found nil while unwrapping an Optional value";
  v12 = "HeadphoneSettingsUI/B698FeaturesProvider.swift";
  v30 = 0;
  v13 = sub_1AC30901C();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v8 - v16;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0, &qword_1AC312120);
  v18 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v19 = v8 - v18;
  v30 = v1;
  v20 = sub_1AC290274();
  v21 = &v29;
  swift_beginAccess();
  v27 = *v20;
  MEMORY[0x1E69E5928](v27);
  swift_endAccess();
  v23 = 1;
  sub_1AC30A9DC("B698_Translate", 14, 1);
  v22 = v3;
  v26 = sub_1AC30A91C();

  sub_1AC30A9DC("mov", 3, v23 & 1);
  v24 = v4;
  v25 = sub_1AC30A91C();

  v28 = [v27 URLForResource:v26 withExtension:v25];
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v26);
  v5 = MEMORY[0x1E69E5920](v27);
  if (v28)
  {
    v8[1] = v28;
    v8[0] = v28;
    sub_1AC308FFC();
    (*(v14 + 32))(v19, v17, v13);
    (*(v14 + 56))(v19, 0, 1, v13);
    v6 = MEMORY[0x1E69E5920](v8[0]);
  }

  else
  {
    (*(v14 + 56))(v19, 1, 1, v13, v5);
  }

  if ((*(v14 + 48))(v19, 1, v13, v6) == 1)
  {
    sub_1AC30B05C(v10, 11, 2, v11, 57, 2, v12, 46, 2, 244, 0);
    __break(1u);
  }

  return (*(v14 + 32))(v9, v19, v13);
}

unint64_t sub_1AC2FBD00()
{
  v2 = qword_1EB54D228;
  if (!qword_1EB54D228)
  {
    sub_1AC3097BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FBDCC()
{
  v2 = qword_1EB54D230;
  if (!qword_1EB54D230)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D230);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2FBE64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1AC2FC0D0(a1, a2);
  sub_1AC2FC0D0(a3, a4);
  v10 = a2 >> 61;
  switch(v10)
  {
    case 0:
      if (!(a4 >> 61))
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    case 1:
      if (((a4 >> 61) & 7) == 1)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    case 2:
      if (((a4 >> 61) & 7) == 2)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    case 3:
      if (((a4 >> 61) & 7) == 3)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
  }

  if (v10 != 4)
  {
    if (((a4 >> 61) & 7) == 5)
    {
      goto LABEL_25;
    }

LABEL_26:
    sub_1AC209AEC(a1, a2);
    sub_1AC209AEC(a3, a4);
    v5 = 0;
    return v5 & 1;
  }

  if (((a4 >> 61) & 7) != 4)
  {
    goto LABEL_26;
  }

LABEL_25:
  sub_1AC209AEC(a1, a2);
  sub_1AC209AEC(a3, a4);
  v5 = 1;
  return v5 & 1;
}

double sub_1AC2FC0D0(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 61) & 7) == 1)
  {
    *&result = MEMORY[0x1E69E5928](a2 & 0x1FFFFFFFFFFFFFFFLL).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC2FC11C(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v22 = 0;
  v23 = 0;
  v12 = sub_1AC30A90C();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v8 - v15;
  v22 = v3;
  v23 = v4;
  v17 = v4 >> 61;
  if (v17 < 2)
  {
    v20 = sub_1AC30A9DC("", 0, 1, v2);
    v21 = v5;
  }

  else
  {
    v18 = v11;
    v19 = v10;
    sub_1AC30A9DC("Noise Control", 13, 1, v2);
    sub_1AC30A8AC();
    v8 = sub_1AC215DE8(v16, &unk_1F20FAB00);
    v9 = v6;
    (*(v13 + 8))(v16, v12);
    v20 = v8;
    v21 = v9;
  }

  return v20;
}

uint64_t sub_1AC2FC2CC(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v25 = a2;
  v46 = 0;
  v47 = 0;
  v35 = 0;
  v27 = sub_1AC30A90C();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v12 - v30;
  v46 = v3;
  v47 = v4;
  v32 = v4 >> 61;
  if (v32)
  {
    switch(v32)
    {
      case 1:
        v24 = v25 & 0x1FFFFFFFFFFFFFFFLL;
        v21 = v25 & 0x1FFFFFFFFFFFFFFFLL;
        MEMORY[0x1E69E5928](v25 & 0x1FFFFFFFFFFFFFFFLL);
        v35 = v21;
        v44 = sub_1AC2FC7B4(v21, v26, v25);
        v45 = v6;
        MEMORY[0x1E69E5920](v21);
        break;
      case 2:
        v36 = v26;
        v37 = v25;
        sub_1AC30A9DC("Off", 3, 1, v2);
        sub_1AC30A8AC();
        v19 = sub_1AC215DE8(v31, &unk_1F20FAB00);
        v20 = v7;
        (*(v28 + 8))(v31, v27);
        v44 = v19;
        v45 = v20;
        break;
      case 3:
        v38 = v26;
        v39 = v25;
        sub_1AC30A9DC("Transparency", 12, 1, v2);
        sub_1AC30A8AC();
        v17 = sub_1AC215DE8(v31, &unk_1F20FAB00);
        v18 = v8;
        (*(v28 + 8))(v31, v27);
        v44 = v17;
        v45 = v18;
        break;
      case 4:
        v40 = v26;
        v41 = v25;
        sub_1AC30A9DC("Adaptive", 8, 1, v2);
        sub_1AC30A8AC();
        v15 = sub_1AC215DE8(v31, &unk_1F20FAB00);
        v16 = v9;
        (*(v28 + 8))(v31, v27);
        v44 = v15;
        v45 = v16;
        break;
      default:
        v42 = v26;
        v43 = v25;
        sub_1AC30A9DC("Noise Cancellation", 18, 1, v2);
        sub_1AC30A8AC();
        v13 = sub_1AC215DE8(v31, &unk_1F20FAB00);
        v14 = v10;
        (*(v28 + 8))(v31, v27);
        v44 = v13;
        v45 = v14;
        break;
    }
  }

  else
  {
    v33 = v26;
    v34 = v25;
    sub_1AC30A9DC("Listening Mode", 14, 1, v2);
    sub_1AC30A8AC();
    v22 = sub_1AC215DE8(v31, &unk_1F20FAB00);
    v23 = v5;
    (*(v28 + 8))(v31, v27);
    v44 = v22;
    v45 = v23;
  }

  return v44;
}

uint64_t sub_1AC2FC7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9[2] = a2;
  v9[1] = a3;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v18 = 0;
  v19 = 0;
  v15 = sub_1AC30A90C();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v14 = v9 - v11;
  v24 = v4;
  v22 = v5;
  v23 = v6;
  v20 = v5;
  v21 = v6;
  sub_1AC30A9DC("Siri", 4, 1, v3);
  sub_1AC30A8AC();
  v16 = sub_1AC215DE8(v14, &unk_1F20FAB00);
  v17 = v7;
  (*(v12 + 8))(v14, v15);
  return v16;
}

uint64_t sub_1AC2FC988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v186 = &v245;
  v185 = a3;
  v188 = a1;
  v187 = a2;
  v351 = 0;
  v352 = 0;
  memset(__b, 0, 0x23uLL);
  v348 = 0u;
  v349 = 0u;
  v338 = 0u;
  v339 = 0u;
  v317 = 0u;
  v318 = 0u;
  v307 = 0u;
  v308 = 0u;
  v289 = 0u;
  v290 = 0u;
  v279 = 0u;
  v280 = 0u;
  v255 = 0u;
  v256 = 0u;
  v245 = 0u;
  v246 = 0u;
  v189 = sub_1AC30A90C();
  v190 = *(v189 - 8);
  v191 = v189 - 8;
  v192 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v188);
  v193 = &v29 - v192;
  v351 = v4;
  v352 = v5;
  v194 = v5 >> 61;
  if (v194)
  {
    switch(v194)
    {
      case 1:
        sub_1AC30A77C();
        v146 = MEMORY[0x1E6981E70];
        v147 = MEMORY[0x1E6981E60];
        sub_1AC207B58(v162, MEMORY[0x1E6981E70], v162);
        sub_1AC207B58(v162, v146, v162);
        sub_1AC207CB4(v162, v146, v146, v147, v147, &v213);
        v150 = &v212;
        v155 = 1;
        v212 = v213 & 1;
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250, &qword_1AC316940);
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0, &qword_1AC3162C0);
        v149 = sub_1AC2FDF68();
        v153 = sub_1AC2F5A18();
        sub_1AC207BBC(v150, v148, v152, v149, v153, v214);
        v154 = v209;
        v209[0] = v214[0];
        v209[1] = v214[1];
        v209[2] = v214[2];
        v209[3] = v214[3];
        v210 = v215;
        v211 = v216 & 1 & v155;
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238, &unk_1AC316930);
        v7 = sub_1AC2FDEC0();
        sub_1AC207BBC(v154, v151, v152, v7, v153, &v217);
        sub_1AC2FE2A4(v154);
        v157 = v217;
        v158 = v218;
        v159 = v219;
        v160 = v220;
        v161 = v221;
        v156 = v222;
        sub_1AC2FE004(v217, v218, v219, v220, v221, v222 & 1);
        __b[0] = v157;
        __b[1] = v158;
        __b[2] = v159;
        __b[3] = v160;
        LOWORD(__b[4]) = v161;
        BYTE2(__b[4]) = v156 & 1 & v155;
        v179 = v157;
        v180 = v158;
        v181 = v159;
        v182 = v160;
        v183 = v161;
        v184 = v156;
        break;
      case 2:
        v254[2] = v188;
        v254[3] = v187;
        v137 = 1;
        sub_1AC30A9DC("Turns off noise management", 26, 1, v3);
        sub_1AC30A8AC();
        v116 = sub_1AC215DE8(v193, &unk_1F20FAB00);
        v117 = v8;
        (*(v190 + 8))(v193, v189);
        v118 = v254;
        v254[0] = v116;
        v254[1] = v117;
        sub_1AC207FC0();
        v250 = sub_1AC30A47C();
        v251 = v9;
        v252 = v10;
        v253 = v11;
        v119 = v247;
        v247[0] = v250;
        v247[1] = v9;
        v248 = v10 & 1;
        v249 = v11;
        v139 = &v255;
        v127 = MEMORY[0x1E6981148];
        v128 = MEMORY[0x1E6981138];
        sub_1AC207B58(v247, MEMORY[0x1E6981148], &v255);
        sub_1AC208038(v119);
        v120 = v255;
        v121 = v256;
        v122 = *(&v256 + 1);
        sub_1AC207E00(v255, *(&v255 + 1), v256 & 1);

        v123 = &v242;
        v242 = v120;
        v243 = v121 & 1 & v137;
        v244 = v122;
        v138 = &v245;
        sub_1AC207B58(&v242, v127, &v245);
        sub_1AC208038(v123);
        v124 = v245;
        v125 = v246;
        v126 = *(&v246 + 1);
        sub_1AC207E00(v245, *(&v245 + 1), v246 & 1);

        v129 = &v228;
        v228 = v124;
        v229 = v125 & 1 & v137;
        v230 = v126;
        sub_1AC207BBC(&v228, v127, v127, v128, v128, v231);
        sub_1AC208038(v129);
        v132 = v226;
        v226[0] = v231[0];
        v226[1] = v231[1];
        v226[2] = v231[2];
        v226[3] = v231[3];
        v227 = v232 & 1 & v137;
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250, &qword_1AC316940);
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0, &qword_1AC3162C0);
        v131 = sub_1AC2FDF68();
        v135 = sub_1AC2F5A18();
        sub_1AC207CB4(v132, v130, v134, v131, v135, v233);
        sub_1AC2F614C(v132);
        v136 = v223;
        v223[0] = v233[0];
        v223[1] = v233[1];
        v223[2] = v233[2];
        v223[3] = v233[3];
        v224 = v234;
        v225 = v235 & 1 & v137;
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238, &unk_1AC316930);
        v12 = sub_1AC2FDEC0();
        sub_1AC207BBC(v136, v133, v134, v12, v135, &v236);
        sub_1AC2FE2A4(v136);
        v141 = v236;
        v142 = v237;
        v143 = v238;
        v144 = v239;
        v145 = v240;
        v140 = v241;
        sub_1AC2FE004(v236, v237, v238, v239, v240, v241 & 1);
        __b[0] = v141;
        __b[1] = v142;
        __b[2] = v143;
        __b[3] = v144;
        LOWORD(__b[4]) = v145;
        BYTE2(__b[4]) = v140 & 1 & v137;
        sub_1AC208038(v138);
        sub_1AC208038(v139);
        v179 = v141;
        v180 = v142;
        v181 = v143;
        v182 = v144;
        v183 = v145;
        v184 = v140;
        break;
      case 3:
        v288[2] = v188;
        v288[3] = v187;
        v107 = 1;
        sub_1AC30A9DC("Lets in external sounds", 23, 1, v3);
        sub_1AC30A8AC();
        v86 = sub_1AC215DE8(v193, &unk_1F20FAB00);
        v87 = v13;
        (*(v190 + 8))(v193, v189);
        v88 = v288;
        v288[0] = v86;
        v288[1] = v87;
        sub_1AC207FC0();
        v284 = sub_1AC30A47C();
        v285 = v14;
        v286 = v15;
        v287 = v16;
        v89 = v281;
        v281[0] = v284;
        v281[1] = v14;
        v282 = v15 & 1;
        v283 = v16;
        v109 = &v289;
        v97 = MEMORY[0x1E6981148];
        v98 = MEMORY[0x1E6981138];
        sub_1AC207B58(v281, MEMORY[0x1E6981148], &v289);
        sub_1AC208038(v89);
        v90 = v289;
        v91 = v290;
        v92 = *(&v290 + 1);
        sub_1AC207E00(v289, *(&v289 + 1), v290 & 1);

        v93 = &v276;
        v276 = v90;
        v277 = v91 & 1 & v107;
        v278 = v92;
        v108 = &v279;
        sub_1AC207B58(&v276, v97, &v279);
        sub_1AC208038(v93);
        v94 = v279;
        v95 = v280;
        v96 = *(&v280 + 1);
        sub_1AC207E00(v279, *(&v279 + 1), v280 & 1);

        v99 = &v262;
        v262 = v94;
        v263 = v95 & 1 & v107;
        v264 = v96;
        sub_1AC207CB4(&v262, v97, v97, v98, v98, v265);
        sub_1AC208038(v99);
        v102 = v260;
        v260[0] = v265[0];
        v260[1] = v265[1];
        v260[2] = v265[2];
        v260[3] = v265[3];
        v261 = v266 & 1 & v107;
        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250, &qword_1AC316940);
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0, &qword_1AC3162C0);
        v101 = sub_1AC2FDF68();
        v105 = sub_1AC2F5A18();
        sub_1AC207CB4(v102, v100, v104, v101, v105, v267);
        sub_1AC2F614C(v102);
        v106 = v257;
        v257[0] = v267[0];
        v257[1] = v267[1];
        v257[2] = v267[2];
        v257[3] = v267[3];
        v258 = v268;
        v259 = v269 & 1 & v107;
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238, &unk_1AC316930);
        v17 = sub_1AC2FDEC0();
        sub_1AC207BBC(v106, v103, v104, v17, v105, &v270);
        sub_1AC2FE2A4(v106);
        v111 = v270;
        v112 = v271;
        v113 = v272;
        v114 = v273;
        v115 = v274;
        v110 = v275;
        sub_1AC2FE004(v270, v271, v272, v273, v274, v275 & 1);
        __b[0] = v111;
        __b[1] = v112;
        __b[2] = v113;
        __b[3] = v114;
        LOWORD(__b[4]) = v115;
        BYTE2(__b[4]) = v110 & 1 & v107;
        sub_1AC208038(v108);
        sub_1AC208038(v109);
        v179 = v111;
        v180 = v112;
        v181 = v113;
        v182 = v114;
        v183 = v115;
        v184 = v110;
        break;
      case 4:
        v316[2] = v188;
        v316[3] = v187;
        v77 = 1;
        sub_1AC30A9DC("Dynamically adjust external noise", 33, 1, v3);
        sub_1AC30A8AC();
        v59 = sub_1AC215DE8(v193, &unk_1F20FAB00);
        v60 = v18;
        (*(v190 + 8))(v193, v189);
        v61 = v316;
        v316[0] = v59;
        v316[1] = v60;
        sub_1AC207FC0();
        v312 = sub_1AC30A47C();
        v313 = v19;
        v314 = v20;
        v315 = v21;
        v62 = v309;
        v309[0] = v312;
        v309[1] = v19;
        v310 = v20 & 1;
        v311 = v21;
        v79 = &v317;
        v70 = MEMORY[0x1E6981148];
        v71 = MEMORY[0x1E6981138];
        sub_1AC207B58(v309, MEMORY[0x1E6981148], &v317);
        sub_1AC208038(v62);
        v63 = v317;
        v64 = v318;
        v65 = *(&v318 + 1);
        sub_1AC207E00(v317, *(&v317 + 1), v318 & 1);

        v66 = &v304;
        v304 = v63;
        v305 = v64 & 1 & v77;
        v306 = v65;
        v78 = &v307;
        sub_1AC207B58(&v304, v70, &v307);
        sub_1AC208038(v66);
        v67 = v307;
        v68 = v308;
        v69 = *(&v308 + 1);
        sub_1AC207E00(v307, *(&v307 + 1), v308 & 1);

        v72 = &v293;
        v293 = v67;
        v294 = v68 & 1 & v77;
        v295 = v69;
        sub_1AC207BBC(&v293, v70, v70, v71, v71, v296);
        sub_1AC208038(v72);
        v76 = v291;
        v291[0] = v296[0];
        v291[1] = v296[1];
        v291[2] = v296[2];
        v291[3] = v296[3];
        v292 = v297 & 1 & v77;
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238, &unk_1AC316930);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0, &qword_1AC3162C0);
        v75 = sub_1AC2FDEC0();
        v22 = sub_1AC2F5A18();
        sub_1AC207CB4(v76, v73, v74, v75, v22, &v298);
        sub_1AC2F614C(v76);
        v81 = v298;
        v82 = v299;
        v83 = v300;
        v84 = v301;
        v85 = v302;
        v80 = v303;
        sub_1AC2FE004(v298, v299, v300, v301, v302, v303 & 1);
        __b[0] = v81;
        __b[1] = v82;
        __b[2] = v83;
        __b[3] = v84;
        LOWORD(__b[4]) = v85;
        BYTE2(__b[4]) = v80 & 1 & v77;
        sub_1AC208038(v78);
        sub_1AC208038(v79);
        v179 = v81;
        v180 = v82;
        v181 = v83;
        v182 = v84;
        v183 = v85;
        v184 = v80;
        break;
      default:
        v347[2] = v188;
        v347[3] = v187;
        v50 = 1;
        sub_1AC30A9DC("Blocks out external sounds", 26, 1, v3);
        sub_1AC30A8AC();
        v32 = sub_1AC215DE8(v193, &unk_1F20FAB00);
        v33 = v23;
        (*(v190 + 8))(v193, v189);
        v34 = v347;
        v347[0] = v32;
        v347[1] = v33;
        sub_1AC207FC0();
        v343 = sub_1AC30A47C();
        v344 = v24;
        v345 = v25;
        v346 = v26;
        v35 = v340;
        v340[0] = v343;
        v340[1] = v24;
        v341 = v25 & 1;
        v342 = v26;
        v52 = &v348;
        v43 = MEMORY[0x1E6981148];
        v44 = MEMORY[0x1E6981138];
        sub_1AC207B58(v340, MEMORY[0x1E6981148], &v348);
        sub_1AC208038(v35);
        v36 = v348;
        v37 = v349;
        v38 = *(&v349 + 1);
        sub_1AC207E00(v348, *(&v348 + 1), v349 & 1);

        v39 = &v335;
        v335 = v36;
        v336 = v37 & 1 & v50;
        v337 = v38;
        v51 = &v338;
        sub_1AC207B58(&v335, v43, &v338);
        sub_1AC208038(v39);
        v40 = v338;
        v41 = v339;
        v42 = *(&v339 + 1);
        sub_1AC207E00(v338, *(&v338 + 1), v339 & 1);

        v45 = &v324;
        v324 = v40;
        v325 = v41 & 1 & v50;
        v326 = v42;
        sub_1AC207CB4(&v324, v43, v43, v44, v44, v327);
        sub_1AC208038(v45);
        v49 = v322;
        v322[0] = v327[0];
        v322[1] = v327[1];
        v322[2] = v327[2];
        v322[3] = v327[3];
        v323 = v328 & 1 & v50;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238, &unk_1AC316930);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0, &qword_1AC3162C0);
        v48 = sub_1AC2FDEC0();
        v27 = sub_1AC2F5A18();
        sub_1AC207CB4(v49, v46, v47, v48, v27, &v329);
        sub_1AC2F614C(v49);
        v54 = v329;
        v55 = v330;
        v56 = v331;
        v57 = v332;
        v58 = v333;
        v53 = v334;
        sub_1AC2FE004(v329, v330, v331, v332, v333, v334 & 1);
        __b[0] = v54;
        __b[1] = v55;
        __b[2] = v56;
        __b[3] = v57;
        LOWORD(__b[4]) = v58;
        BYTE2(__b[4]) = v53 & 1 & v50;
        sub_1AC208038(v51);
        sub_1AC208038(v52);
        v179 = v54;
        v180 = v55;
        v181 = v56;
        v182 = v57;
        v183 = v58;
        v184 = v53;
        break;
    }
  }

  else
  {
    sub_1AC30A77C();
    v163 = MEMORY[0x1E6981E70];
    v164 = MEMORY[0x1E6981E60];
    sub_1AC207B58(v162, MEMORY[0x1E6981E70], v162);
    sub_1AC207B58(v162, v163, v162);
    sub_1AC207BBC(v162, v163, v163, v164, v164, &v199);
    v167 = &v198;
    v172 = 1;
    v198 = v199 & 1;
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250, &qword_1AC316940);
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0, &qword_1AC3162C0);
    v166 = sub_1AC2FDF68();
    v170 = sub_1AC2F5A18();
    sub_1AC207BBC(v167, v165, v169, v166, v170, v200);
    v171 = v195;
    v195[0] = v200[0];
    v195[1] = v200[1];
    v195[2] = v200[2];
    v195[3] = v200[3];
    v196 = v201;
    v197 = v202 & 1 & v172;
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238, &unk_1AC316930);
    v6 = sub_1AC2FDEC0();
    sub_1AC207BBC(v171, v168, v169, v6, v170, &v203);
    sub_1AC2FE2A4(v171);
    v174 = v203;
    v175 = v204;
    v176 = v205;
    v177 = v206;
    v178 = v207;
    v173 = v208;
    sub_1AC2FE004(v203, v204, v205, v206, v207, v208 & 1);
    __b[0] = v174;
    __b[1] = v175;
    __b[2] = v176;
    __b[3] = v177;
    LOWORD(__b[4]) = v178;
    BYTE2(__b[4]) = v173 & 1 & v172;
    v179 = v174;
    v180 = v175;
    v181 = v176;
    v182 = v177;
    v183 = v178;
    v184 = v173;
  }

  v31 = v319;
  v319[0] = v179;
  v319[1] = v180;
  v319[2] = v181;
  v319[3] = v182;
  v320 = v183;
  v321 = v184 & 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D258, &qword_1AC316948);
  sub_1AC2FE0DC();
  sub_1AC207B58(v31, v30, v185);
  sub_1AC2FE184(v31);
  return sub_1AC2FE184(__b);
}

unint64_t sub_1AC2FDEC0()
{
  v2 = qword_1EB54D240;
  if (!qword_1EB54D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D238, &unk_1AC316930);
    sub_1AC2FDF68();
    sub_1AC2F5A18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FDF68()
{
  v2 = qword_1EB54D248;
  if (!qword_1EB54D248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D250, &qword_1AC316940);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D248);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2FE004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1AC2F60D8(a1, a2, a3, a4);
  }

  else
  {
    return sub_1AC2FE084(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_1AC2FE084(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1AC2F60D8(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_1AC2FE0DC()
{
  v2 = qword_1EB54D260;
  if (!qword_1EB54D260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D258, &qword_1AC316948);
    sub_1AC2FDEC0();
    sub_1AC2F5A18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D260);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2FE1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1AC2F6190(a1, a2, a3, a4);
  }

  else
  {
    return sub_1AC2FE24C(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_1AC2FE24C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1AC2F6190(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1AC2FE2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = a3;
  v159 = a1;
  v158 = a2;
  v271 = 0;
  v272 = 0;
  memset(v270, 0, 19);
  v269 = 0;
  v267 = 0;
  v253 = 0;
  v251 = 0;
  v240 = 0;
  v238 = 0;
  v160 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEA8, &qword_1AC316950) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v159);
  v161 = &v23 - v160;
  v271 = v4;
  v272 = v5;
  v162 = v5 >> 61;
  if (v162)
  {
    switch(v162)
    {
      case 1:
        sub_1AC30A77C();
        v122 = MEMORY[0x1E6981E70];
        v123 = MEMORY[0x1E6981E60];
        sub_1AC207B58(v137, MEMORY[0x1E6981E70], v137);
        sub_1AC207B58(v137, v122, v137);
        sub_1AC207CB4(v137, v122, v122, v123, v123, &v179);
        v127 = &v178;
        v132 = 1;
        v178 = v179 & 1;
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250, &qword_1AC316940);
        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D288, &qword_1AC316968);
        v126 = sub_1AC2FDF68();
        v8 = sub_1AC2FF45C();
        sub_1AC207BBC(v127, v124, v125, v126, v8, v180);
        v131 = v175;
        v175[0] = v180[0];
        v175[1] = v180[1];
        v176 = v181;
        v177 = v182 & 1 & v132;
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268, &qword_1AC316958);
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270, &qword_1AC316960);
        v130 = sub_1AC2FF3B4();
        v9 = sub_1AC2FF62C();
        sub_1AC207BBC(v131, v128, v129, v130, v9, &v183);
        sub_1AC2FF9B4(v131);
        v134 = v183;
        v135 = v184;
        v136 = v185;
        v133 = v186;
        sub_1AC2FF6C8(v183, v184, v185, v186 & 1);
        v270[0] = v134;
        v270[1] = v135;
        LOWORD(v270[2]) = v136;
        BYTE2(v270[2]) = v133 & 1 & v132;
        v153 = v134;
        v154 = v135;
        v155 = v136;
        v156 = v133;
        break;
      case 2:
        v115 = 1;
        sub_1AC30A9DC("person.closed.fill", 18, 1, v3);
        v90 = sub_1AC30A66C();
        sub_1AC30A24C();
        v10 = sub_1AC30A25C();
        (*(*(v10 - 8) + 56))(v161, 0, v115);
        v91 = sub_1AC30A67C();
        sub_1AC2D11E8(v161);

        v93 = &v215;
        v215 = v91;
        v11 = sub_1AC2FF9F4();
        v92 = &v214;
        v214 = v11;
        v213 = sub_1AC2FFA0C();
        v103 = MEMORY[0x1E6981748];
        v105 = MEMORY[0x1E6981710];
        MEMORY[0x1AC5AFB80](&v216, v92, &v213);
        sub_1AC20BCE0(v93);
        v94 = &v210;
        v210 = v216;
        v211 = v217;
        v212 = v218;
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D298, &qword_1AC316970);
        v104 = sub_1AC2FF500();
        v117 = &v219;
        sub_1AC207B58(v94, v102, &v219);
        sub_1AC20BCE0(v94);
        v95 = v219;
        v96 = v220;
        v97 = v221;

        v98 = &v204;
        v204 = v95;
        v205 = v96;
        v206 = v97;
        v116 = &v207;
        sub_1AC207B58(&v204, v102, &v207);
        sub_1AC20BCE0(v98);
        v99 = v207;
        v100 = v208;
        v101 = v209;

        v106 = &v192;
        v192 = v99;
        v193 = v100;
        v194 = v101;
        sub_1AC207BBC(&v192, v102, v103, v104, v105, v195);
        sub_1AC20BCE0(v106);
        v110 = v190;
        v190[0] = v195[0];
        v190[1] = v195[1];
        v191 = v196 & 1 & v115;
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250, &qword_1AC316940);
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D288, &qword_1AC316968);
        v109 = sub_1AC2FDF68();
        v12 = sub_1AC2FF45C();
        sub_1AC207CB4(v110, v107, v108, v109, v12, v197);
        sub_1AC2FF978();
        v114 = v187;
        v187[0] = v197[0];
        v187[1] = v197[1];
        v188 = v198;
        v189 = v199 & 1 & v115;
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268, &qword_1AC316958);
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270, &qword_1AC316960);
        v113 = sub_1AC2FF3B4();
        v13 = sub_1AC2FF62C();
        sub_1AC207BBC(v114, v111, v112, v113, v13, &v200);
        sub_1AC2FF9B4(v114);
        v119 = v200;
        v120 = v201;
        v121 = v202;
        v118 = v203;
        sub_1AC2FF6C8(v200, v201, v202, v203 & 1);
        v270[0] = v119;
        v270[1] = v120;
        LOWORD(v270[2]) = v121;
        BYTE2(v270[2]) = v118 & 1 & v115;
        sub_1AC20BCE0(v116);
        sub_1AC20BCE0(v117);
        v153 = v119;
        v154 = v120;
        v155 = v121;
        v156 = v118;
        break;
      case 3:
        v83 = 1;
        sub_1AC30A9DC("person.open.fill", 16, 1, v3);
        v65 = sub_1AC30A66C();
        sub_1AC30A23C();
        v14 = sub_1AC30A25C();
        (*(*(v14 - 8) + 56))(v161, 0, v83);
        v66 = sub_1AC30A67C();
        sub_1AC2D11E8(v161);

        v67 = &v239;
        v239 = v66;
        v85 = &v240;
        v72 = MEMORY[0x1E6981748];
        v73 = MEMORY[0x1E6981710];
        sub_1AC207B58(&v239, MEMORY[0x1E6981748], &v240);
        sub_1AC20BCE0(v67);
        v68 = v240;

        v69 = &v237;
        v237 = v68;
        v84 = &v238;
        sub_1AC207B58(&v237, v72, &v238);
        sub_1AC20BCE0(v69);
        v70 = v238;

        v74 = &v227;
        v227 = v70;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D298, &qword_1AC316970);
        v15 = sub_1AC2FF500();
        sub_1AC207CB4(v74, v71, v72, v15, v73, v228);
        sub_1AC20BCE0(v74);
        v78 = v225;
        v225[0] = v228[0];
        v225[1] = v228[1];
        v226 = v229 & 1 & v83;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250, &qword_1AC316940);
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D288, &qword_1AC316968);
        v77 = sub_1AC2FDF68();
        v16 = sub_1AC2FF45C();
        sub_1AC207CB4(v78, v75, v76, v77, v16, v230);
        sub_1AC2FF978();
        v82 = v222;
        v222[0] = v230[0];
        v222[1] = v230[1];
        v223 = v231;
        v224 = v232 & 1 & v83;
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268, &qword_1AC316958);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270, &qword_1AC316960);
        v81 = sub_1AC2FF3B4();
        v17 = sub_1AC2FF62C();
        sub_1AC207BBC(v82, v79, v80, v81, v17, &v233);
        sub_1AC2FF9B4(v82);
        v87 = v233;
        v88 = v234;
        v89 = v235;
        v86 = v236;
        sub_1AC2FF6C8(v233, v234, v235, v236 & 1);
        v270[0] = v87;
        v270[1] = v88;
        LOWORD(v270[2]) = v89;
        BYTE2(v270[2]) = v86 & 1 & v83;
        sub_1AC20BCE0(v84);
        sub_1AC20BCE0(v85);
        v153 = v87;
        v154 = v88;
        v155 = v89;
        v156 = v86;
        break;
      case 4:
        v58 = 1;
        sub_1AC30A9DC("person.and.sparkles.fill", 24, 1, v3);
        v45 = sub_1AC30A66C();
        sub_1AC30A23C();
        v18 = sub_1AC30A25C();
        (*(*(v18 - 8) + 56))(v161, 0, v58);
        v46 = sub_1AC30A67C();
        sub_1AC2D11E8(v161);

        v47 = &v252;
        v252 = v46;
        v60 = &v253;
        v51 = MEMORY[0x1E6981748];
        v52 = MEMORY[0x1E6981710];
        sub_1AC207B58(&v252, MEMORY[0x1E6981748], &v253);
        sub_1AC20BCE0(v47);
        v48 = v253;

        v49 = &v250;
        v250 = v48;
        v59 = &v251;
        sub_1AC207B58(&v250, v51, &v251);
        sub_1AC20BCE0(v49);
        v50 = v251;

        v53 = &v243;
        v243 = v50;
        sub_1AC207BBC(&v243, v51, v51, v52, v52, &v244);
        sub_1AC20BCE0(v53);
        v57 = &v241;
        v241 = v244;
        v242 = v245 & 1 & v58;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268, &qword_1AC316958);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270, &qword_1AC316960);
        v56 = sub_1AC2FF3B4();
        v19 = sub_1AC2FF62C();
        sub_1AC207CB4(v57, v54, v55, v56, v19, &v246);
        sub_1AC20BCE0(v57);
        v62 = v246;
        v63 = v247;
        v64 = v248;
        v61 = v249;
        sub_1AC2FF6C8(v246, v247, v248, v249 & 1);
        v270[0] = v62;
        v270[1] = v63;
        LOWORD(v270[2]) = v64;
        BYTE2(v270[2]) = v61 & 1 & v58;
        sub_1AC20BCE0(v59);
        sub_1AC20BCE0(v60);
        v153 = v62;
        v154 = v63;
        v155 = v64;
        v156 = v61;
        break;
      default:
        v38 = 1;
        sub_1AC30A9DC("person.closed.fill", 18, 1, v3);
        v25 = sub_1AC30A66C();
        sub_1AC30A23C();
        v20 = sub_1AC30A25C();
        (*(*(v20 - 8) + 56))(v161, 0, v38);
        v26 = sub_1AC30A67C();
        sub_1AC2D11E8(v161);

        v27 = &v268;
        v268 = v26;
        v40 = &v269;
        v31 = MEMORY[0x1E6981748];
        v32 = MEMORY[0x1E6981710];
        sub_1AC207B58(&v268, MEMORY[0x1E6981748], &v269);
        sub_1AC20BCE0(v27);
        v28 = v269;

        v29 = &v266;
        v266 = v28;
        v39 = &v267;
        sub_1AC207B58(&v266, v31, &v267);
        sub_1AC20BCE0(v29);
        v30 = v267;

        v33 = &v259;
        v259 = v30;
        sub_1AC207CB4(&v259, v31, v31, v32, v32, &v260);
        sub_1AC20BCE0(v33);
        v37 = &v257;
        v257 = v260;
        v258 = v261 & 1 & v38;
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268, &qword_1AC316958);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270, &qword_1AC316960);
        v36 = sub_1AC2FF3B4();
        v21 = sub_1AC2FF62C();
        sub_1AC207CB4(v37, v34, v35, v36, v21, &v262);
        sub_1AC20BCE0(v37);
        v42 = v262;
        v43 = v263;
        v44 = v264;
        v41 = v265;
        sub_1AC2FF6C8(v262, v263, v264, v265 & 1);
        v270[0] = v42;
        v270[1] = v43;
        LOWORD(v270[2]) = v44;
        BYTE2(v270[2]) = v41 & 1 & v38;
        sub_1AC20BCE0(v39);
        sub_1AC20BCE0(v40);
        v153 = v42;
        v154 = v43;
        v155 = v44;
        v156 = v41;
        break;
    }
  }

  else
  {
    sub_1AC30A77C();
    v138 = MEMORY[0x1E6981E70];
    v139 = MEMORY[0x1E6981E60];
    sub_1AC207B58(v137, MEMORY[0x1E6981E70], v137);
    sub_1AC207B58(v137, v138, v137);
    sub_1AC207BBC(v137, v138, v138, v139, v139, &v167);
    v143 = &v166;
    v148 = 1;
    v166 = v167 & 1;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250, &qword_1AC316940);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D288, &qword_1AC316968);
    v142 = sub_1AC2FDF68();
    v6 = sub_1AC2FF45C();
    sub_1AC207BBC(v143, v140, v141, v142, v6, v168);
    v147 = v163;
    v163[0] = v168[0];
    v163[1] = v168[1];
    v164 = v169;
    v165 = v170 & 1 & v148;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268, &qword_1AC316958);
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270, &qword_1AC316960);
    v146 = sub_1AC2FF3B4();
    v7 = sub_1AC2FF62C();
    sub_1AC207BBC(v147, v144, v145, v146, v7, &v171);
    sub_1AC2FF9B4(v147);
    v150 = v171;
    v151 = v172;
    v152 = v173;
    v149 = v174;
    sub_1AC2FF6C8(v171, v172, v173, v174 & 1);
    v270[0] = v150;
    v270[1] = v151;
    LOWORD(v270[2]) = v152;
    BYTE2(v270[2]) = v149 & 1 & v148;
    v153 = v150;
    v154 = v151;
    v155 = v152;
    v156 = v149;
  }

  v24 = v254;
  v254[0] = v153;
  v254[1] = v154;
  v255 = v155;
  v256 = v156 & 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2B8, &qword_1AC316980);
  sub_1AC2FF7AC();
  sub_1AC207B58(v24, v23, v157);
  sub_1AC2FF854(v24);
  return sub_1AC2FF854(v270);
}

unint64_t sub_1AC2FF3B4()
{
  v2 = qword_1EB54D278;
  if (!qword_1EB54D278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D268, &qword_1AC316958);
    sub_1AC2FDF68();
    sub_1AC2FF45C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FF45C()
{
  v2 = qword_1EB54D280;
  if (!qword_1EB54D280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D288, &qword_1AC316968);
    sub_1AC2FF500();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FF500()
{
  v2 = qword_1EB54D290;
  if (!qword_1EB54D290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D298, &qword_1AC316970);
    sub_1AC2FF5A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FF5A4()
{
  v2 = qword_1EB54D2A0;
  if (!qword_1EB54D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D2A8, &qword_1AC316978);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FF62C()
{
  v2 = qword_1EB54D2B0;
  if (!qword_1EB54D2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D270, &qword_1AC316960);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2FF6C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_1AC2FF724(a1, a2, a3, BYTE1(a3) & 1);
  }
}

uint64_t sub_1AC2FF724(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_1AC2FF76C();
  }

  return v4;
}

unint64_t sub_1AC2FF7AC()
{
  v2 = qword_1EB54D2C0;
  if (!qword_1EB54D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D2B8, &qword_1AC316980);
    sub_1AC2FF3B4();
    sub_1AC2FF62C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2FF894(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_1AC2FF8F0(a1, a2, a3, BYTE1(a3) & 1);
  }
}

uint64_t sub_1AC2FF8F0(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_1AC2FF938();
  }

  return v4;
}

uint64_t sub_1AC2FFA24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 61;
  switch(v5)
  {
    case 0:
      if (sub_1AC26B418(a2, 1))
      {
LABEL_15:
        sub_1AC3093AC();
LABEL_17:
        type metadata accessor for CBPeerUIGestureMode(0);
        sub_1AC209A44();
        v4 = sub_1AC30B1BC();
        return v4 & 1;
      }

LABEL_16:
      sub_1AC30936C();
      goto LABEL_17;
    case 1:
      if (sub_1AC26B418(a2, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    case 2:
      v4 = sub_1AC3091DC();
      break;
    case 3:
      v4 = sub_1AC30949C();
      break;
    case 4:
      v4 = sub_1AC30920C();
      break;
    default:
      v4 = sub_1AC30946C();
      break;
  }

  return v4 & 1;
}

uint64_t sub_1AC2FFCE0(uint64_t a1, char a2, char a3, unint64_t a4)
{
  v5 = a4 >> 61;
  if (v5)
  {
    if (v5 != 1)
    {
      switch(v5)
      {
        case 2:
          sub_1AC3091EC();
          break;
        case 3:
          sub_1AC3094AC();
          break;
        case 4:
          sub_1AC30921C();
          break;
        default:
          sub_1AC30947C();
          break;
      }

      return sub_1AC2FFE9C();
    }

    if (!sub_1AC26B418(a3, 0))
    {
LABEL_14:
      sub_1AC3093BC();
      return sub_1AC2FFE9C();
    }
  }

  else if (!sub_1AC26B418(a3, 0))
  {
    goto LABEL_14;
  }

  sub_1AC30937C();
  return sub_1AC2FFE9C();
}

uint64_t sub_1AC2FFEDC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = sub_1AC3092FC();
  v12 = a3 >> 61;
  if (v12)
  {
    switch(v12)
    {
      case 1:
        v7 = 1;
        break;
      case 2:
        sub_1AC2FC0D0(a2, a3);
        MEMORY[0x1E69E5928](a1);
        if (v11)
        {
          v6 = sub_1AC300144(a1, a2, a3);
        }

        else
        {
          v6 = 0;
        }

        sub_1AC209AEC(a2, a3);
        MEMORY[0x1E69E5920](a1);
        v7 = v6;
        break;
      case 3:
        v7 = v11;
        break;
      case 4:
        MEMORY[0x1E69E5928](a1);
        if (v11)
        {
          v4 = sub_1AC30917C();
          [v4 autoAncCapability];
          MEMORY[0x1E69E5920](v4);
          type metadata accessor for CBPeerAutoAncCapability(0);
          sub_1AC236D88();
          v5 = sub_1AC30B1BC();
        }

        else
        {
          v5 = 0;
        }

        MEMORY[0x1E69E5920](a1);
        v7 = v5;
        break;
      default:
        v7 = v11;
        break;
    }
  }

  else
  {
    v7 = v11;
  }

  return v7 & 1;
}

uint64_t sub_1AC300144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v61 = a2;
  v60 = a3;
  v54 = sub_1AC3009C0;
  v55 = sub_1AC215C98;
  v56 = sub_1AC215C90;
  v57 = sub_1AC215C90;
  v58 = sub_1AC215CA4;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  v59 = 0;
  v69 = 0;
  v62 = sub_1AC309E6C();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v62);
  v66 = v21 - v65;
  v86 = a1;
  v84 = v4;
  v85 = v5;
  v67 = sub_1AC3091FC();
  v68 = [v67 listeningModeOffAllowed];
  MEMORY[0x1E69E5920](v67);
  v72 = &v83;
  v83 = v68;
  v70 = &v82;
  v82 = 0;
  v71 = type metadata accessor for HMMultiState(v69);
  sub_1AC241864();
  if (sub_1AC30A89C())
  {
    v6 = v66;
    v7 = sub_1AC23BA24();
    (*(v63 + 16))(v6, v7, v62);
    v40 = sub_1AC309E4C();
    v41 = sub_1AC30AD1C();
    v30 = 17;
    v32 = 7;
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v31 = 32;
    v8 = swift_allocObject();
    v33 = v8;
    *(v8 + 16) = v54;
    *(v8 + 24) = 0;
    v9 = swift_allocObject();
    v10 = v33;
    v37 = v9;
    *(v9 + 16) = v55;
    *(v9 + 24) = v10;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v36 = sub_1AC30B18C();
    v38 = v11;

    v12 = v34;
    v13 = v38;
    *v38 = v56;
    v13[1] = v12;

    v14 = v35;
    v15 = v38;
    v38[2] = v57;
    v15[3] = v14;

    v16 = v37;
    v17 = v38;
    v38[4] = v58;
    v17[5] = v16;
    sub_1AC206300();

    if (os_log_type_enabled(v40, v41))
    {
      v18 = v59;
      v23 = sub_1AC30AE6C();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v24 = sub_1AC213EE4(0, v22, v22);
      v25 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v26 = &v81;
      v81 = v23;
      v27 = &v80;
      v80 = v24;
      v28 = &v79;
      v79 = v25;
      sub_1AC213F38(2, &v81);
      sub_1AC213F38(1, v26);
      v77 = v56;
      v78 = v34;
      sub_1AC213F4C(&v77, v26, v27, v28);
      v29 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v77 = v57;
        v78 = v35;
        sub_1AC213F4C(&v77, &v81, &v80, &v79);
        v21[1] = 0;
        v77 = v58;
        v78 = v37;
        sub_1AC213F4C(&v77, &v81, &v80, &v79);
        _os_log_impl(&dword_1AC1C3000, v40, v41, "%s: listeningModeOffAllowed is unknown, return true!", v23, 0xCu);
        sub_1AC213F98(v24, 0, v22);
        sub_1AC213F98(v25, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v19 = MEMORY[0x1E69E5920](v40);
    (*(v63 + 8))(v66, v62, v19);
    v43 = 1;
  }

  else
  {
    v47 = sub_1AC3091FC();
    v48 = sub_1AC30964C();
    MEMORY[0x1E69E5920](v47);
    v50 = &v76;
    v76 = v48;
    v49 = &v75;
    v75 = 1;
    v51 = sub_1AC241B7C();
    v52 = sub_1AC30B1BC();
    MEMORY[0x1E69E5928](v53);
    if (v52)
    {
      v44 = sub_1AC3091FC();
      v45 = [v44 listeningModeOffAllowed];
      MEMORY[0x1E69E5920](v44);
      v74 = v45;
      v73 = 1;
      v46 = sub_1AC30B1BC();
    }

    else
    {
      v46 = 0;
    }

    v42 = v46;
    MEMORY[0x1E69E5920](v53);
    v43 = v42;
  }

  return v43 & 1;
}

void sub_1AC3009F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 61 == 1)
  {
    MEMORY[0x1E69E5928](a3 & 0x1FFFFFFFFFFFFFFFLL);
    sub_1AC30B23C();
    sub_1AC2FBDCC();
    sub_1AC30B23C();
    sub_1AC3095DC();
    sub_1AC3010A4();
    sub_1AC30B23C();
    MEMORY[0x1E69E5920](a3 & 0x1FFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_1AC30B23C();
    sub_1AC2FBDCC();
    sub_1AC30B23C();
  }
}

uint64_t sub_1AC300F30()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553DE8);
  __swift_project_value_buffer(v1, qword_1EB553DE8);
  sub_1AC30A9DC("com.apple.HeadphoneConfigs", 26, 1);
  sub_1AC30A9DC("deviceUpdate", 12, 1);
  return sub_1AC309E5C();
}

uint64_t sub_1AC300FD4()
{
  if (qword_1EB5536D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553DE8);
}

uint64_t sub_1AC301040@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC300FD4();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1AC3010A4()
{
  v2 = qword_1EB54D2C8;
  if (!qword_1EB54D2C8)
  {
    sub_1AC3095DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC301124()
{
  v2 = qword_1EB54D2D0;
  if (!qword_1EB54D2D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3011B8()
{
  v2 = qword_1EB54D2D8;
  if (!qword_1EB54D2D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3012CC()
{
  v2 = qword_1EB54D2E0;
  if (!qword_1EB54D2E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC30136C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = -1 - (*a1 >> 2);
      if (v2 >= 0x7FFFFFFF)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC3014A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 4 * ~(a2 - 1);
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_1AC30167C(void *result)
{
  v1 = result[1] & 0x1FFFFFFFFFFFFFFFLL;
  *result = *result;
  result[1] = v1;
  return result;
}

void *sub_1AC301694(void *result, char a2)
{
  v2 = ((a2 & 7) << 61) | result[1] & 0xFFFFFFFFFFFFFF8;
  *result &= 3uLL;
  result[1] = v2;
  return result;
}

id sub_1AC3016D8()
{
  sub_1AC20BE24();
  type metadata accessor for ResourceBundleClass();
  result = sub_1AC20BE88();
  qword_1EB553B68 = result;
  return result;
}

uint64_t *sub_1AC301720()
{
  if (qword_1EB553B60 != -1)
  {
    swift_once();
  }

  return &qword_1EB553B68;
}

uint64_t sub_1AC301780()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E00);
  __swift_project_value_buffer(v2, qword_1EB553E00);
  sub_1AC30A9DC("B698-Case", 9, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301818()
{
  if (qword_1EB553B70 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E00);
}

uint64_t sub_1AC301884@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301818();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3018E8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E18);
  __swift_project_value_buffer(v2, qword_1EB553E18);
  sub_1AC30A9DC("B698-Left", 9, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301980()
{
  if (qword_1EB553B78 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E18);
}

uint64_t sub_1AC3019EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301980();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC301A50()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E30);
  __swift_project_value_buffer(v2, qword_1EB553E30);
  sub_1AC30A9DC("B698-Right", 10, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301AE8()
{
  if (qword_1EB553B80 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E30);
}

uint64_t sub_1AC301B54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301AE8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC301BB8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E48);
  __swift_project_value_buffer(v2, qword_1EB553E48);
  sub_1AC30A9DC("B768-Case", 9, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301C50()
{
  if (qword_1EB553B88 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E48);
}

uint64_t sub_1AC301CBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301C50();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC301D20()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E60);
  __swift_project_value_buffer(v2, qword_1EB553E60);
  sub_1AC30A9DC("B768-Left", 9, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301DB8()
{
  if (qword_1EB553B90 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E60);
}

uint64_t sub_1AC301E24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301DB8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC301E88()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E78);
  __swift_project_value_buffer(v2, qword_1EB553E78);
  sub_1AC30A9DC("B768-Right", 10, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301F20()
{
  if (qword_1EB553B98 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E78);
}

uint64_t sub_1AC301F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301F20();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC301FF0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E90);
  __swift_project_value_buffer(v2, qword_1EB553E90);
  sub_1AC30A9DC("B788_FitTest-Left-dark", 22, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302088()
{
  if (qword_1EB553BA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E90);
}

uint64_t sub_1AC3020F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302088();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302158()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553EA8);
  __swift_project_value_buffer(v2, qword_1EB553EA8);
  sub_1AC30A9DC("B788_FitTest-Left-light", 23, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3021F0()
{
  if (qword_1EB553BA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553EA8);
}

uint64_t sub_1AC30225C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3021F0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3022C0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553EC0);
  __swift_project_value_buffer(v2, qword_1EB553EC0);
  sub_1AC30A9DC("B788_FitTest-Right-dark", 23, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302358()
{
  if (qword_1EB553BB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553EC0);
}

uint64_t sub_1AC3023C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302358();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302428()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553ED8);
  __swift_project_value_buffer(v2, qword_1EB553ED8);
  sub_1AC30A9DC("B788_FitTest-Right-light", 24, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3024C0()
{
  if (qword_1EB553BB8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553ED8);
}

uint64_t sub_1AC30252C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3024C0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302590()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553EF0);
  __swift_project_value_buffer(v2, qword_1EB553EF0);
  sub_1AC30A9DC("B788_Left", 9, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302628()
{
  if (qword_1EB553BC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553EF0);
}

uint64_t sub_1AC302694@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302628();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3026F8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F08);
  __swift_project_value_buffer(v2, qword_1EB553F08);
  sub_1AC30A9DC("B788_Occlusion_L", 16, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302790()
{
  if (qword_1EB553BC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F08);
}

uint64_t sub_1AC3027FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302790();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302860()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F20);
  __swift_project_value_buffer(v2, qword_1EB553F20);
  sub_1AC30A9DC("B788_Occlusion_R", 16, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3028F8()
{
  if (qword_1EB553BD0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F20);
}

uint64_t sub_1AC302964@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3028F8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3029C8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F38);
  __swift_project_value_buffer(v2, qword_1EB553F38);
  sub_1AC30A9DC("B788_Right", 10, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302A60()
{
  if (qword_1EB553BD8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F38);
}

uint64_t sub_1AC302ACC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302A60();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302B30()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F50);
  __swift_project_value_buffer(v2, qword_1EB553F50);
  sub_1AC30A9DC("B788_airpod_left", 16, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302BC8()
{
  if (qword_1EB553BE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F50);
}

uint64_t sub_1AC302C34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302BC8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302C98()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F68);
  __swift_project_value_buffer(v2, qword_1EB553F68);
  sub_1AC30A9DC("B788_airpod_right", 17, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302D30()
{
  if (qword_1EB553BE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F68);
}

uint64_t sub_1AC302D9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302D30();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302E00()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F80);
  __swift_project_value_buffer(v2, qword_1EB553F80);
  sub_1AC30A9DC("B788_case-closed-charged", 24, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302E98()
{
  if (qword_1EB553BF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F80);
}

uint64_t sub_1AC302F04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302E98();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302F68()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F98);
  __swift_project_value_buffer(v2, qword_1EB553F98);
  sub_1AC30A9DC("B788_case-closed-charging", 25, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303000()
{
  if (qword_1EB553BF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F98);
}

uint64_t sub_1AC30306C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303000();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3030D0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553FB0);
  __swift_project_value_buffer(v2, qword_1EB553FB0);
  sub_1AC30A9DC("Bobble_Smile", 12, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303168()
{
  if (qword_1EB553C00 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553FB0);
}

uint64_t sub_1AC3031D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303168();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303238()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553FC8);
  __swift_project_value_buffer(v2, qword_1EB553FC8);
  sub_1AC30A9DC("Bullet-ANC-dark", 15, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3032D0()
{
  if (qword_1EB553C08 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553FC8);
}

uint64_t sub_1AC30333C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3032D0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3033A0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553FE0);
  __swift_project_value_buffer(v2, qword_1EB553FE0);
  sub_1AC30A9DC("Bullet-ANC-light", 16, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303438()
{
  if (qword_1EB553C10 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553FE0);
}

uint64_t sub_1AC3034A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303438();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303508()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553FF8);
  __swift_project_value_buffer(v2, qword_1EB553FF8);
  sub_1AC30A9DC("Bullet-AudioQuality-dark", 24, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3035A0()
{
  if (qword_1EB553C18 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553FF8);
}

uint64_t sub_1AC30360C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3035A0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303670()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554010);
  __swift_project_value_buffer(v2, qword_1EB554010);
  sub_1AC30A9DC("Bullet-AudioQuality-light", 25, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303708()
{
  if (qword_1EB553C20 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554010);
}

uint64_t sub_1AC303774@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303708();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3037D8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554028);
  __swift_project_value_buffer(v2, qword_1EB554028);
  sub_1AC30A9DC("CleanAirPod-Left", 16, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303870()
{
  if (qword_1EB553C28 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554028);
}

uint64_t sub_1AC3038DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303870();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303940()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554040);
  __swift_project_value_buffer(v2, qword_1EB554040);
  sub_1AC30A9DC("CleanAirPod-Right", 17, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3039D8()
{
  if (qword_1EB553C30 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554040);
}

uint64_t sub_1AC303A44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3039D8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303AA8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554058);
  __swift_project_value_buffer(v2, qword_1EB554058);
  sub_1AC30A9DC("Enrollment Hint Arrow", 21, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303B40()
{
  if (qword_1EB553C38 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554058);
}

uint64_t sub_1AC303BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303B40();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303C10()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554070);
  __swift_project_value_buffer(v2, qword_1EB554070);
  sub_1AC30A9DC("FaultCheckFailed", 16, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303CA8()
{
  if (qword_1EB553C40 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554070);
}

uint64_t sub_1AC303D14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303CA8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303D78()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554088);
  __swift_project_value_buffer(v2, qword_1EB554088);
  sub_1AC30A9DC("FaultCheckUnknown", 17, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303E10()
{
  if (qword_1EB553C48 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554088);
}

uint64_t sub_1AC303E7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303E10();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303EE0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB5540A0);
  __swift_project_value_buffer(v2, qword_1EB5540A0);
  sub_1AC30A9DC("FitTest-Left-dark", 17, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303F78()
{
  if (qword_1EB553C50 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB5540A0);
}

uint64_t sub_1AC303FE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303F78();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304048()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB5540B8);
  __swift_project_value_buffer(v2, qword_1EB5540B8);
  sub_1AC30A9DC("FitTest-Left-light", 18, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3040E0()
{
  if (qword_1EB553C58 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB5540B8);
}

uint64_t sub_1AC30414C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3040E0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3041B0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB5540D0);
  __swift_project_value_buffer(v2, qword_1EB5540D0);
  sub_1AC30A9DC("FitTest-Right-dark", 18, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304248()
{
  if (qword_1EB553C60 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB5540D0);
}

uint64_t sub_1AC3042B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304248();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304318()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB5540E8);
  __swift_project_value_buffer(v2, qword_1EB5540E8);
  sub_1AC30A9DC("FitTest-Right-light", 19, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3043B0()
{
  if (qword_1EB553C68 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB5540E8);
}

uint64_t sub_1AC30441C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3043B0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304480()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554100);
  __swift_project_value_buffer(v2, qword_1EB554100);
  sub_1AC30A9DC("Noise Cancellation", 18, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304518()
{
  if (qword_1EB553C70 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554100);
}

uint64_t sub_1AC304584@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304518();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3045E8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554118);
  __swift_project_value_buffer(v2, qword_1EB554118);
  sub_1AC30A9DC("Off", 3, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304680()
{
  if (qword_1EB553C78 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554118);
}

uint64_t sub_1AC3046EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304680();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304750()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554130);
  __swift_project_value_buffer(v2, qword_1EB554130);
  sub_1AC30A9DC("SpatialProfileIcon", 18, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3047E8()
{
  if (qword_1EB553C80 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554130);
}

uint64_t sub_1AC304854@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3047E8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3048B8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554148);
  __swift_project_value_buffer(v2, qword_1EB554148);
  sub_1AC30A9DC("Transparency", 12, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304950()
{
  if (qword_1EB553C88 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554148);
}

uint64_t sub_1AC3049BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304950();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304A20()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554160);
  __swift_project_value_buffer(v2, qword_1EB554160);
  sub_1AC30A9DC("airpod_left", 11, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304AB8()
{
  if (qword_1EB553C90 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554160);
}

uint64_t sub_1AC304B24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304AB8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304B88()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554178);
  __swift_project_value_buffer(v2, qword_1EB554178);
  sub_1AC30A9DC("airpod_right", 12, 1);
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304C20()
{
  if (qword_1EB553C98 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554178);
}

uint64_t sub_1AC304C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304C20();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304CF0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301818();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC304DD0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301980();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC304EB0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301AE8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC304F90()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301C50();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305070()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301DB8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305150()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301F20();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305230()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302088();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305310()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3021F0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3053F0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302358();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3054D0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3024C0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3055B0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302628();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305690()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302790();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305770()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3028F8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305850()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302A60();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305930()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302BC8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305A10()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302D30();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305AF0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302E98();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305BD0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303000();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305CB0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303168();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305D90()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3032D0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305E70()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303438();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305F50()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3035A0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306030()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303708();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306110()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303870();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3061F0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3039D8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3062D0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303B40();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3063B0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303CA8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306490()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303E10();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306570()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303F78();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306650()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3040E0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306730()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304248();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306810()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3043B0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3068F0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304518();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3069D0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304680();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306AB0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3047E8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306B90()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304950();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306C70()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304AB8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306D50()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304C20();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v23 = 0;
  v13 = sub_1AC309DAC();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v17 = *(v14 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = &v9 - v16;
  v19 = v16;
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v9 - v19;
  v29 = &v9 - v19;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  sub_1AC3070EC();

  MEMORY[0x1E69E5928](v22);
  v25 = sub_1AC307150(v24, v21, v22, v23);
  v11 = v25 != 0;
  v10 = v11;
  sub_1AC206988(&v25);
  if (v10)
  {
    sub_1AC309D9C();
    (*(v14 + 32))(v20, v18, v13);
    (*(v14 + 16))(v12, v20, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    return (*(v14 + 8))(v20, v13);
  }

  else
  {
    MEMORY[0x1E69E5920](v22);

    return (*(v14 + 56))(v12, 1, 1, v13);
  }
}

unint64_t sub_1AC3070EC()
{
  v2 = qword_1EB54D2E8;
  if (!qword_1EB54D2E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54D2E8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC307150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AC30A91C();
  v8 = [swift_getObjCClassFromMetadata() colorNamed:v7 inBundle:a3 compatibleWithTraitCollection:a4];
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);

  return v8;
}

uint64_t sub_1AC3071F4(uint64_t a1)
{
  v15 = a1;
  v26 = 0;
  v24 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2F0, &qword_1AC316CB0);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v23 = &v12 - v14;
  v22 = sub_1AC309DAC();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v16 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v12 - v16;
  v18 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v19 = &v12 - v18;
  v26 = &v12 - v18;
  v24 = v5;
  sub_1AC307478(v5, v6, v4);
  if ((*(v20 + 48))(v23, 1, v22) == 1)
  {
    sub_1AC3075A0(v23, v7);
    sub_1AC3075A0(v15, v8);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v19, v23, v22);
    (*(v20 + 16))(v17, v19, v22);
    v12 = sub_1AC30ADCC();
    v9 = MEMORY[0x1E69E5928](v12);
    v25 = v12;
    v10 = (*(v20 + 8))(v19, v22, v9);
    sub_1AC3075A0(v15, v10);
    MEMORY[0x1E69E5920](v25);
    return v12;
  }
}

void *sub_1AC307478(const void *a1, void *a2, double a3)
{
  v7 = sub_1AC309DAC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2F0, &qword_1AC316CB0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_1AC3075A0(uint64_t a1, double a2)
{
  v4 = sub_1AC309DAC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  return a1;
}

uint64_t sub_1AC307648(uint64_t a1)
{
  v15 = a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2F0, &qword_1AC316CB0);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v23 = &v11 - v14;
  v22 = sub_1AC309DAC();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v16 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v11 - v16;
  v18 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v19 = &v11 - v18;
  v26 = &v11 - v18;
  v24 = v5;
  sub_1AC307478(v5, v6, v4);
  if ((*(v20 + 48))(v23, 1, v22) == 1)
  {
    sub_1AC3075A0(v23, v7);
    sub_1AC3075A0(v15, v8);
    return 0;
  }

  else
  {
    (*(v20 + 32))(v19, v23, v22);
    (*(v20 + 16))(v17, v19, v22);
    v12 = sub_1AC30A63C();

    v11 = &v25;
    v25 = v12;
    v9 = (*(v20 + 8))(v19, v22);
    sub_1AC3075A0(v15, v9);
    sub_1AC20BCE0(v11);
    return v12;
  }
}

uint64_t sub_1AC3078B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v23 = 0;
  v13 = sub_1AC309DCC();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v17 = *(v14 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = &v9 - v16;
  v19 = v16;
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v9 - v19;
  v29 = &v9 - v19;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  sub_1AC20D404();

  MEMORY[0x1E69E5928](v22);
  v25 = sub_1AC307B74(v24, v21, v22, v23);
  v11 = v25 != 0;
  v10 = v11;
  sub_1AC206988(&v25);
  if (v10)
  {
    sub_1AC309D9C();
    (*(v14 + 32))(v20, v18, v13);
    (*(v14 + 16))(v12, v20, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    return (*(v14 + 8))(v20, v13);
  }

  else
  {
    MEMORY[0x1E69E5920](v22);

    return (*(v14 + 56))(v12, 1, 1, v13);
  }
}

id sub_1AC307B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AC30A91C();
  v8 = [swift_getObjCClassFromMetadata() imageNamed:v7 inBundle:a3 compatibleWithTraitCollection:a4];
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);

  return v8;
}

uint64_t sub_1AC307C18(uint64_t a1)
{
  v11 = a1;
  v22 = 0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2F8, qword_1AC316CB8);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v8 - v10;
  v18 = sub_1AC309DCC();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v8 - v12;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = &v8 - v14;
  v22 = &v8 - v14;
  v20 = v4;
  sub_1AC307E9C(v4, v5);
  if ((*(v16 + 48))(v19, 1, v18) == 1)
  {
    sub_1AC307FC4(v19);
    sub_1AC307FC4(v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v15, v19, v18);
    (*(v16 + 16))(v13, v15, v18);
    v8 = sub_1AC30ADDC();
    v6 = MEMORY[0x1E69E5928](v8);
    v21 = v8;
    (*(v16 + 8))(v15, v18, v6);
    sub_1AC307FC4(v11);
    MEMORY[0x1E69E5920](v21);
    return v8;
  }
}

void *sub_1AC307E9C(const void *a1, void *a2)
{
  v6 = sub_1AC309DCC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2F8, qword_1AC316CB8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC307FC4(uint64_t a1)
{
  v3 = sub_1AC309DCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}