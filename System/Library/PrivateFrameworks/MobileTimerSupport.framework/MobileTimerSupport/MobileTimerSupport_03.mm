unint64_t sub_22D79ECD4()
{
  result = qword_27DA029A0;
  if (!qword_27DA029A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA029A0);
  }

  return result;
}

uint64_t OverrideTime.AdvancingRate.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029A8, &qword_22D821D48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D79ECD4();
  sub_22D81BC28();
  if (!v2)
  {
    v13 = 0;
    sub_22D81BA28();
    v9 = v12;
    v13 = 1;
    sub_22D81BA28();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22D79EF30(void *a1, void *a2)
{
  if ((sub_22D81BC98() & 1) == 0)
  {
    return 0;
  }

  return sub_22D81BC98();
}

__n128 OverrideTime.init(date:advancingRate:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22D81A8C8();
  v9 = a2[1];
  v10 = *a2;
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = (a3 + *(type metadata accessor for OverrideTime(0) + 20));
  result = v10;
  *v7 = v10;
  v7[1] = v9;
  return result;
}

BOOL static OverrideTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_22D81A868())
  {
    type metadata accessor for OverrideTime(0);
    if (sub_22D81BC98() & 1) != 0 && (sub_22D81BC98())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_22D79F0C0()
{
  if (*v0)
  {
    return 0x6E69636E61766461;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_22D79F100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_22D81BB08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69636E61766461 && a2 == 0xED00006574615267)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22D81BB08();

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

uint64_t sub_22D79F1E4(uint64_t a1)
{
  v2 = sub_22D79F430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D79F220(uint64_t a1)
{
  v2 = sub_22D79F430();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverrideTime.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029B0, &qword_22D821D50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D79F430();
  sub_22D81BC38();
  LOBYTE(v13) = 0;
  sub_22D81A8C8();
  sub_22D79F858(&unk_280CD2900, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_22D81BAB8();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for OverrideTime(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_22D79F484();
    sub_22D81BAB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22D79F430()
{
  result = qword_27DA029B8;
  if (!qword_27DA029B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA029B8);
  }

  return result;
}

unint64_t sub_22D79F484()
{
  result = qword_27DA029C8;
  if (!qword_27DA029C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA029C8);
  }

  return result;
}

uint64_t OverrideTime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_22D81A8C8();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA029D0, &qword_22D821D58);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for OverrideTime(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D79F430();
  sub_22D81BC28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  LOBYTE(v30) = 0;
  sub_22D79F858(&unk_280CD2E60, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v15 = v29;
  v16 = v27;
  sub_22D81BA28();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v32 = 1;
  sub_22D79F8A0();
  sub_22D81BA28();
  (*(v28 + 8))(v9, v16);
  v18 = v23;
  v19 = (v23 + *(v24 + 20));
  v20 = v31;
  *v19 = v30;
  v19[1] = v20;
  sub_22D7A88A0(v18, v25, type metadata accessor for OverrideTime);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_22D7A8AD0(v18, type metadata accessor for OverrideTime);
}

uint64_t sub_22D79F858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22D79F8A0()
{
  result = qword_27DA029E0;
  if (!qword_27DA029E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA029E0);
  }

  return result;
}

uint64_t sub_22D79FA10()
{
  if (MEMORY[0x2318D2420]("Clock:shared"))
  {
    type metadata accessor for SystemSystemStatusBarOverrideProvider();
    v0 = swift_allocObject();
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = [objc_allocWithZone(MEMORY[0x277D6BB20]) init];
    type metadata accessor for SystemOverrideClock();
    v1 = swift_allocObject();
    v2 = sub_22D7A90B4(v0, v1);
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for Clock(0);
  swift_allocObject();
  v3 = sub_22D7A8C9C(v2);

  qword_27DA02990 = v3;
  return result;
}

uint64_t static Clock.shared.getter()
{
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  return sub_22D81A198();
}

uint64_t sub_22D79FB3C()
{
  v0 = sub_22D81A8C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_22D81B2B8();
  [v4 setDateFormat_];

  sub_22D81A8B8();
  v6 = sub_22D81A818();
  (*(v1 + 8))(v3, v0);
  v7 = [v4 stringFromDate_];

  v8 = sub_22D81B2C8();
  return v8;
}

BOOL sub_22D79FCA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  v4 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock);
  v5 = type metadata accessor for OverrideTime(0);
  v6 = *(v5 - 8);
  (*(v6 + 56))(v3, 1, 1, v5);
  v7 = *(v4 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v7 + 4);
  swift_endAccess();
  sub_22D764440(v3, &qword_27DA029E8, &qword_22D821D60);
  v8 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D7640C4(v4 + v8, v3, &qword_27DA029E8, &qword_22D821D60);
  v9 = *(v4 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v9 + 4);
  swift_endAccess();
  v10 = (*(v6 + 48))(v3, 1, v5) != 1;
  sub_22D764440(v3, &qword_27DA029E8, &qword_22D821D60);
  return v10;
}

uint64_t sub_22D79FE60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_22D7640C4(a1, &v6 - v3, &qword_27DA029E8, &qword_22D821D60);
  return sub_22D7A0030(v4);
}

uint64_t sub_22D79FF0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock);
  v4 = type metadata accessor for OverrideTime(0);
  (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  v5 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  sub_22D764440(a1, &qword_27DA029E8, &qword_22D821D60);
  v6 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D7640C4(v3 + v6, a1, &qword_27DA029E8, &qword_22D821D60);
  v7 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v7 + 4);
  return swift_endAccess();
}

uint64_t sub_22D7A0030(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock);
  v7 = type metadata accessor for OverrideTime(0);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = *(v6 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v8 + 4);
  swift_endAccess();
  sub_22D764440(v5, &qword_27DA029E8, &qword_22D821D60);
  v9 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D7640C4(v6 + v9, v5, &qword_27DA029E8, &qword_22D821D60);
  v10 = *(v6 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v10 + 4);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_lastOverrideTime;
  swift_beginAccess();
  sub_22D79DCA4(v5, v1 + v11, &qword_27DA029E8, &qword_22D821D60);
  swift_endAccess();
  sub_22D7640C4(a1, v5, &qword_27DA029E8, &qword_22D821D60);
  sub_22D7A3C88(v5);
  return sub_22D764440(a1, &qword_27DA029E8, &qword_22D821D60);
}

void (*sub_22D7A0208(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock);
  v10 = type metadata accessor for OverrideTime(0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = *(v9 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v11 + 4);
  swift_endAccess();
  sub_22D764440(v8, &qword_27DA029E8, &qword_22D821D60);
  v12 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D7640C4(v9 + v12, v8, &qword_27DA029E8, &qword_22D821D60);
  v13 = *(v9 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v13 + 4);
  swift_endAccess();
  return sub_22D7A03D8;
}

uint64_t sub_22D7A03F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_22D81B4D8();
  *(v4 + 24) = sub_22D81B4C8();
  v6 = sub_22D81B498();

  return MEMORY[0x2822009F8](sub_22D7A0488, v6, v5);
}

uint64_t sub_22D7A0488()
{
  v1 = *(v0 + 16);

  *(*(v1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_atomicClock) + 24) = &off_2840D7400;
  swift_unknownObjectWeakAssign();
  *(*(v1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_textClock) + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock_delegate + 8) = &off_2840D7410;
  swift_unknownObjectWeakAssign();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7A0538@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *&v2[OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateStreamObservers];
  v5 = *a1;
  sub_22D81A198();

  return sub_22D7A98B8(v5, v4, v2, v5, a2);
}

uint64_t sub_22D7A059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_22D81B4D8();
  *(v5 + 24) = sub_22D81B4C8();
  v7 = sub_22D81B498();

  return MEMORY[0x2822009F8](sub_22D7A0638, v7, v6);
}

uint64_t sub_22D7A0638()
{
  v5 = v0;
  v1 = *(v0 + 32);

  v4 = v1;
  sub_22D7A1310(&v4);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Clock.deinit()
{
  sub_22D764440(v0 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_lastOverrideTime, &qword_27DA029E8, &qword_22D821D60);
  v1 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateInited;
  v2 = sub_22D81A8C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Clock.__deallocating_deinit()
{
  Clock.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22D7A0804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  v6 = sub_22D81A8C8();
  *(v5 + 24) = v6;
  *(v5 + 32) = *(v6 - 8);
  *(v5 + 40) = swift_task_alloc();
  sub_22D81B4D8();
  *(v5 + 48) = sub_22D81B4C8();
  v8 = sub_22D81B498();

  return MEMORY[0x2822009F8](sub_22D7A08FC, v8, v7);
}

uint64_t sub_22D7A08FC()
{

  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 56);
  sub_22D81A8B8();
  sub_22D7A70AC(v1, v4);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22D7A0A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D7A0A24, 0, 0);
}

uint64_t sub_22D7A0A24()
{
  sub_22D7A7258(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7A0AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  v17 = a2;
  v18 = a1;
  v19 = a3;
  sub_22D7A6F34(sub_22D7A8C28);
  v9 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideDateStream);
  v10 = *(*v9 + 104);
  v11 = *(v9 + v10);
  swift_beginAccess();
  os_unfair_lock_lock(v11 + 4);
  swift_endAccess();
  sub_22D79AF88(a2);
  v12 = *(v9 + v10);
  swift_beginAccess();
  os_unfair_lock_unlock(v12 + 4);
  swift_endAccess();
  v13 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_textClock);
  sub_22D7640C4(a2, v8, &qword_27DA02000, &qword_22D81F160);
  v14 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock_overrideDate;
  swift_beginAccess();
  sub_22D7A8C34(v8, v13 + v14, &qword_27DA02000, &qword_22D81F160);
  swift_endAccess();
  sub_22D7A1F70();
  return sub_22D764440(v8, &qword_27DA02000, &qword_22D81F160);
}

uint64_t sub_22D7A0C60(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v53 = a5;
  v54 = a4;
  v55 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = sub_22D81A8C8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v56 = *a1;
  sub_22D7640C4(a3, v14, &qword_27DA02000, &qword_22D81F160);
  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    sub_22D764440(v14, &qword_27DA02000, &qword_22D81F160);
    if (qword_27DA019F0 != -1)
    {
      swift_once();
    }

    sub_22D81A8B8();
    v23 = *(v55 + *(*v55 + 104));
    swift_beginAccess();
    os_unfair_lock_lock(v23 + 4);
    swift_endAccess();
    sub_22D799EA0(v19);
    swift_beginAccess();
    os_unfair_lock_unlock(v23 + 4);
    swift_endAccess();
    return (*(v16 + 8))(v19, v15);
  }

  v24 = *(v16 + 32);
  v51 = v21;
  v24(v21, v14, v15);
  v50 = OBJC_IVAR____TtC18MobileTimerSupport5Clock__lastOverridePublishTimeByInterval;
  v25 = *(v54 + OBJC_IVAR____TtC18MobileTimerSupport5Clock__lastOverridePublishTimeByInterval);
  v26 = *(v25 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v26 + 4);
  swift_endAccess();
  swift_beginAccess();
  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  swift_beginAccess();
  sub_22D81A398();
  os_unfair_lock_unlock(v28 + 4);
  swift_endAccess();

  if (*(v27 + 16) && (v29 = sub_22D807A48(v56), (v30 & 1) != 0))
  {
    (*(v16 + 16))(v12, *(v27 + 56) + *(v16 + 72) * v29, v15);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(v16 + 56);
  v32(v12, v31, 1, v15);
  if (v22(v12, 1, v15))
  {
    sub_22D764440(v12, &qword_27DA02000, &qword_22D81F160);
    v33 = 0.0;
  }

  else
  {
    (*(v16 + 16))(v19, v12, v15);
    sub_22D764440(v12, &qword_27DA02000, &qword_22D81F160);
    sub_22D81A858();
    v33 = v34;
    (*(v16 + 8))(v19, v15);
  }

  v19 = v51;
  sub_22D81A858();
  v36 = vabdd_f64(v35, v33);
  v37 = v22(v53, 1, v15);
  v38 = v56;
  if (v56)
  {
    if (v56 == 1)
    {
      if (v36 > 1.0)
      {
        goto LABEL_25;
      }
    }

    else if (v36 > 60.0)
    {
      goto LABEL_25;
    }

    if (v37 != 1)
    {
      return (*(v16 + 8))(v19, v15);
    }
  }

  else if (v36 <= 0.01666 && v37 != 1)
  {
    return (*(v16 + 8))(v19, v15);
  }

LABEL_25:
  v41 = *(v55 + *(*v55 + 104));
  swift_beginAccess();
  os_unfair_lock_lock(v41 + 4);
  swift_endAccess();
  sub_22D799EA0(v19);
  swift_beginAccess();
  os_unfair_lock_unlock(v41 + 4);
  swift_endAccess();
  v42 = v52;
  (*(v16 + 16))(v52, v19, v15);
  v32(v42, 0, 1, v15);
  v43 = *(v54 + v50);
  v44 = *(v43 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v44 + 4);
  swift_endAccess();
  swift_beginAccess();
  v46 = *(v43 + 16);
  v45 = *(v43 + 24);
  swift_beginAccess();
  sub_22D81A398();
  os_unfair_lock_unlock(v46 + 4);
  swift_endAccess();
  v57 = v45;
  sub_22D8042B4(v42, v38);
  v47 = v57;
  v48 = *(v43 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v48 + 4);
  swift_endAccess();
  *(v43 + 24) = v47;

  v49 = *(v43 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v49 + 4);
  swift_endAccess();
  (*(v16 + 8))(v19, v15);
}

void sub_22D7A1310(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  if (!*(*(v2 + 32) + 16) || (sub_22D807A48(v3), (v8 & 1) == 0))
  {
    if (v3)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_22D7A8B3C;
      *(v9 + 24) = v5;
      if (v3 == 1)
      {
        v22 = sub_22D7A9678;
        v23 = v9;
        aBlock = MEMORY[0x277D85DD0];
        v19 = 1107296256;
        v20 = sub_22D7A1B80;
        v21 = &block_descriptor_158;
        v10 = _Block_copy(&aBlock);
        sub_22D81A198();

        v22 = sub_22D7A8B48;
        v23 = v6;
        aBlock = MEMORY[0x277D85DD0];
        v19 = 1107296256;
        v20 = sub_22D7A1C74;
        v21 = &block_descriptor_161;
        v11 = _Block_copy(&aBlock);
        sub_22D81A198();

        v12 = [v7 startSecondUpdatesWithHandler:v10 identificationLog:v11];
      }

      else
      {
        v22 = sub_22D7A8B50;
        v23 = v9;
        aBlock = MEMORY[0x277D85DD0];
        v19 = 1107296256;
        v20 = sub_22D7A1B80;
        v21 = &block_descriptor_148;
        v10 = _Block_copy(&aBlock);
        sub_22D81A198();

        v22 = sub_22D7A8B48;
        v23 = v6;
        aBlock = MEMORY[0x277D85DD0];
        v19 = 1107296256;
        v20 = sub_22D7A1C74;
        v21 = &block_descriptor_151;
        v11 = _Block_copy(&aBlock);
        sub_22D81A198();

        v12 = [v7 startMinuteUpdatesWithHandler:v10 identificationLog:v11];
      }
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_22D7A8B3C;
      *(v13 + 24) = v5;
      v22 = sub_22D7A9678;
      v23 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v19 = 1107296256;
      v20 = sub_22D7A1B80;
      v21 = &block_descriptor_168;
      v10 = _Block_copy(&aBlock);
      sub_22D81A198();

      v22 = sub_22D7A8B48;
      v23 = v6;
      aBlock = MEMORY[0x277D85DD0];
      v19 = 1107296256;
      v20 = sub_22D7A1C74;
      v21 = &block_descriptor_171;
      v11 = _Block_copy(&aBlock);
      sub_22D81A198();

      v12 = [v7 start60fpsUpdatesWithHandler:v10 identificationLog:v11];
    }

    v14 = v12;
    _Block_release(v11);
    _Block_release(v10);
    swift_beginAccess();
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_22D80C354(v15, v3, isUniquelyReferenced_nonNull_native);
    *(v2 + 32) = v17;
    swift_endAccess();

    v7 = v15;
  }
}

uint64_t sub_22D7A1800(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (!sub_22D79FCA4())
      {
        v10 = sub_22D81B4F8();
        (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
        sub_22D81B4D8();
        swift_unknownObjectRetain();
        v11 = sub_22D81B4C8();
        v12 = swift_allocObject();
        v13 = MEMORY[0x277D85700];
        *(v12 + 16) = v11;
        *(v12 + 24) = v13;
        *(v12 + 32) = v9;
        *(v12 + 40) = a3;
        sub_22D79DF68(0, 0, v6, &unk_22D8224E0, v12);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_22D7A1994(char a1)
{
  sub_22D81B838();

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x646E6F636573;
    }

    else
    {
      v2 = 0x6574756E696DLL;
    }

    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
    v2 = 0x74736574736166;
  }

  MEMORY[0x2318D1A50](v2, v3);

  return 0xD000000000000013;
}

uint64_t sub_22D7A1A58(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_22D81A8C8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_22D764440(v6, &qword_27DA02000, &qword_22D81F160);
}

uint64_t sub_22D7A1B80(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D81A8C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_22D81A878();
  sub_22D81A198();
  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id sub_22D7A1C74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_22D81A198();
  v1(v2);

  v3 = sub_22D81B2B8();

  return v3;
}

uint64_t sub_22D7A1CE8()
{
  sub_22D749D28(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22D7A1D28()
{
  sub_22D81BBC8();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2318D2310](*&v1);
  type metadata accessor for TextClockDescriptor(0);
  sub_22D81AAB8();
  sub_22D79F858(&unk_27DA02BB0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_22D81B1D8();
  return sub_22D81BC18();
}

uint64_t sub_22D7A1DEC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x2318D2310](*&v2);
  sub_22D81AAB8();
  sub_22D79F858(&unk_27DA02BB0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  return sub_22D81B1D8();
}

uint64_t sub_22D7A1E90(uint64_t a1)
{
  sub_22D81BBC8();
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x2318D2310](*&v2);
  sub_22D81AAB8();
  sub_22D79F858(&unk_27DA02BB0, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
  sub_22D81B1D8();
  return sub_22D81BC18();
}

uint64_t sub_22D7A1F48(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x2318D11A0);
  }

  return 0;
}

uint64_t sub_22D7A1F70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BD8, &qword_22D822488);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BE0, &qword_22D822490);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset);
  v14 = *(v13 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v14 + 4);
  swift_endAccess();
  swift_beginAccess();
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  swift_beginAccess();
  sub_22D81A398();
  os_unfair_lock_unlock(v16 + 4);
  swift_endAccess();

  v17 = -1 << *(v15 + 32);
  v18 = ~v17;
  v19 = *(v15 + 64);
  v20 = -v17;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v48 = v15;
  v49 = v15 + 64;
  v50 = v18;
  v51 = 0;
  v52 = v21 & v19;
  v53 = 0;
  v22 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock_overrideDate;
  v42 = v15;
  sub_22D81A398();
  v44 = v22;
  v45 = v0;
  swift_beginAccess();
  sub_22D7A7510(v12);
  v25 = *(v4 + 48);
  v24 = v4 + 48;
  v23 = v25;
  if (v25(v12, 1, v3) != 1)
  {
    v43 = v3;
    do
    {
      sub_22D79DD0C(v12, v9, &qword_27DA02BD8, &qword_22D822488);
      sub_22D7640C4(v9, v7, &qword_27DA02BD8, &qword_22D822488);
      v27 = &v7[*(v3 + 48)];
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02BF0, &qword_22D8224B0) + 48);
      v47 = v27;
      v29 = *(v27 + v28);
      v30 = v46;
      sub_22D7640C4(v45 + v44, v46, &qword_27DA02000, &qword_22D81F160);
      v31 = sub_22D81A8C8();
      v32 = *(v31 - 8);
      v33 = (*(v32 + 48))(v30, 1, v31);
      v34 = 0;
      if (v33 != 1)
      {
        v35 = v23;
        v36 = v12;
        v37 = v9;
        v38 = v7;
        v39 = v24;
        v40 = v46;
        v34 = sub_22D81A818();
        v41 = v40;
        v24 = v39;
        v7 = v38;
        v9 = v37;
        v12 = v36;
        v23 = v35;
        (*(v32 + 8))(v41, v31);
      }

      [v29 setOverrideDate_];

      sub_22D764440(v9, &qword_27DA02BD8, &qword_22D822488);
      sub_22D7A8AD0(v47, type metadata accessor for TextClockDescriptor);
      sub_22D7A7510(v12);
      v3 = v43;
    }

    while (v23(v12, 1, v43) != 1);
  }

  sub_22D792FD0(v48);
}

id sub_22D7A24F0()
{
  sub_22D7A25E4();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextClock(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22D7A25E4()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset;
  v2 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset);
  v3 = *(v2 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v3 + 4);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_beginAccess();
  sub_22D81A398();
  os_unfair_lock_unlock(v5 + 4);
  swift_endAccess();

  v7 = 0;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v4 + 64);
  for (i = (v8 + 63) >> 6; v10; result = [*(*(v4 + 56) + ((v12 << 9) | (8 * v13))) removeObserver_])
  {
    v12 = v7;
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= i)
    {

      v14 = *(v0 + v1);
      v15 = *(v14 + 16);
      swift_beginAccess();
      sub_22D81A198();
      os_unfair_lock_lock(v15 + 4);
      swift_endAccess();
      v16 = *(v14 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v16 + 4);
      swift_endAccess();
      v17 = *(v14 + 16);
      swift_beginAccess();
      os_unfair_lock_lock(v17 + 4);
      swift_endAccess();
      swift_beginAccess();
      *(v14 + 24) = MEMORY[0x277D84F98];

      v18 = *(v14 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v18 + 4);
      swift_endAccess();
    }

    v10 = *(v4 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_22D7A2828@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v9 = sub_22D81A8C8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  sub_22D81A8B8();
  v16 = *a1;
  if (*a1 != 0.0)
  {
    sub_22D81A808();
    (*(v10 + 8))(v15, v9);
    (*(v10 + 32))(v15, v13, v9);
  }

  v17 = *(a2 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset);
  v18 = *(v17 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v18 + 4);
  swift_endAccess();
  swift_beginAccess();
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();
  sub_22D81A398();
  os_unfair_lock_unlock(v20 + 4);
  swift_endAccess();

  if (*(v19 + 16) && (v21 = sub_22D807AC0(a1), (v22 & 1) != 0))
  {
    v23 = *(*(v19 + 56) + 8 * v21);

    v24 = v23;
  }

  else
  {

    v25 = [objc_allocWithZone(MEMORY[0x277CBBBA8]) init];
    v26 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock_overrideDate;
    swift_beginAccess();
    sub_22D7640C4(a2 + v26, v8, &qword_27DA02000, &qword_22D81F160);
    LODWORD(v26) = (*(v10 + 48))(v8, 1, v9);
    v24 = v25;
    v27 = 0;
    if (v26 != 1)
    {
      v27 = sub_22D81A818();
      (*(v10 + 8))(v8, v9);
    }

    [v24 setOverrideDate_];

    [v24 setTimeOffset_];
    type metadata accessor for TextClockDescriptor(0);
    v28 = sub_22D81AA88();
    [v24 setTimeZone_];
  }

  result = [v24 timeText];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v30 = result;
  v57 = v15;
  v31 = sub_22D81B2C8();
  v58 = v32;
  v59 = v31;

  result = [v24 timeAndDesignatorText];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = result;
  v54 = v10;
  v55 = v9;
  v56 = a1;
  v34 = sub_22D81B2C8();
  v52 = v35;
  v53 = v34;

  v36 = [v24 designatorRangeInTimeAndDesignatorText];
  v38 = v37;
  result = [v24 timeSubstringToSeparatorText];
  if (result)
  {
    v39 = result;
    v40 = sub_22D81B2C8();
    v42 = v41;

    v43 = [v24 separatorRangeInTimeText];
    v45 = v44;

    v46 = *(type metadata accessor for TextClockDescriptor(0) + 20);
    v47 = type metadata accessor for TimeString(0);
    v48 = *(v47 + 36);
    v49 = sub_22D81AAB8();
    (*(*(v49 - 8) + 16))(a3 + v48, v56 + v46, v49);
    v50 = v58;
    *a3 = v59;
    a3[1] = v50;
    v51 = v52;
    a3[2] = v53;
    a3[3] = v51;
    a3[4] = v36;
    a3[5] = v38;
    a3[6] = v40;
    a3[7] = v42;
    a3[8] = v43;
    a3[9] = v45;
    return (*(v54 + 32))(a3 + *(v47 + 40), v57, v55);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_22D7A2D3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C10, &qword_22D8224C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  v13 = type metadata accessor for TimeString(0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v11, 1, 1, v13);
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v15 = sub_22D81B678();
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = a1;
  v16[4] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22D7A8B30;
  *(v17 + 24) = v16;
  aBlock[4] = sub_22D7A9650;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_133;
  v18 = _Block_copy(aBlock);
  sub_22D81A198();

  dispatch_sync(v15, v18);

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_22D7640C4(v11, v9, &qword_27DA02C10, &qword_22D8224C0);
  result = (*(v14 + 48))(v9, 1, v13);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_22D7A8908(v9, a3, type metadata accessor for TimeString);
  sub_22D764440(v11, &qword_27DA02C10, &qword_22D8224C0);
}

uint64_t sub_22D7A3054(void (*a1)(void *__return_ptr), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    a1(aBlock);
    v4 = aBlock[0];
    return v4 & 1;
  }

  v11 = 256;
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v5 = sub_22D81B678();
  v6 = swift_allocObject();
  v6[2] = &v11;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22D7A8834;
  *(v7 + 24) = v6;
  aBlock[4] = sub_22D7A8878;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_7;
  v8 = _Block_copy(aBlock);
  sub_22D81A198();

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else if ((v11 & 0x100) == 0)
  {
    v4 = v11;

    return v4 & 1;
  }

  __break(1u);
  return result;
}

void sub_22D7A3220(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v65 - v4;
  v6 = type metadata accessor for TimeString(0);
  v70 = *(v6 - 8);
  v7 = *(v70 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for TextClockDescriptor(0);
  v12 = *(v11 - 8);
  v80 = v11;
  v81 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BD8, &qword_22D822488);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BE0, &qword_22D822490);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v78 = &v65 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BE8, &qword_22D822498);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v79 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  if (a1)
  {
    v66 = v7;
    v75 = &v65 - v29;
    v76 = v16;
    v77 = v10;
    v67 = v5;
    v74 = v1;
    v30 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B9TextClock__timeFormatterByOffset);
    v31 = *(v30 + 16);
    swift_beginAccess();
    v82 = a1;
    sub_22D81A198();
    os_unfair_lock_lock(v31 + 4);
    swift_endAccess();
    swift_beginAccess();
    v32 = *(v30 + 16);
    v33 = *(v30 + 24);
    swift_beginAccess();
    sub_22D81A398();
    os_unfair_lock_unlock(v32 + 4);
    swift_endAccess();

    v34 = -1 << *(v33 + 32);
    v35 = *(v33 + 64);
    v36 = ~v34;
    v37 = -v34;
    v83 = v33;
    v84 = v33 + 64;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v85 = v36;
    v86 = 0;
    v87 = v38 & v35;
    v88 = 0;
    v72 = v33;
    sub_22D81A398();
    sub_22D7A7510(v24);
    v73 = v18;
    v39 = *(v18 + 48);
    if (v39(v24, 1, v17) == 1)
    {
LABEL_8:
      sub_22D792FD0(v83);
      v40 = v78;
      (*(v73 + 56))(v78, 1, 1, v17);
    }

    else
    {
      while (1)
      {
        sub_22D79DD0C(v24, v20, &qword_27DA02BD8, &qword_22D822488);
        sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02BF0, &qword_22D8224B0);
        if (sub_22D81B6F8())
        {
          break;
        }

        sub_22D764440(v20, &qword_27DA02BD8, &qword_22D822488);
        sub_22D7A7510(v24);
        if (v39(v24, 1, v17) == 1)
        {
          goto LABEL_8;
        }
      }

      sub_22D792FD0(v83);
      v40 = v78;
      sub_22D79DD0C(v20, v78, &qword_27DA02BD8, &qword_22D822488);
      (*(v73 + 56))(v40, 0, 1, v17);
    }

    v43 = v39(v40, 1, v17);
    v44 = v76;
    v45 = v81;
    if (v43 == 1)
    {
      sub_22D764440(v40, &qword_27DA02BE0, &qword_22D822490);
      v46 = 1;
      v47 = v77;
      v48 = v75;
    }

    else
    {
      v49 = v40 + *(v17 + 48);

      v48 = v75;
      sub_22D7A8908(v49, v75, type metadata accessor for TextClockDescriptor);
      v46 = 0;
      v47 = v77;
    }

    v50 = v74;
    v51 = v80;
    (*(v45 + 56))(v48, v46, 1, v80);
    v52 = v79;
    sub_22D7640C4(v48, v79, &qword_27DA02BE8, &qword_22D822498);
    if ((*(v45 + 48))(v52, 1, v51) == 1)
    {
      sub_22D764440(v52, &qword_27DA02BE8, &qword_22D822498);
      v53 = objc_opt_self();
      v54 = sub_22D81B2B8();
      [v53 logError_];

      sub_22D764440(v48, &qword_27DA02BE8, &qword_22D822498);
    }

    else
    {
      v55 = sub_22D7A8908(v52, v44, type metadata accessor for TextClockDescriptor);
      MEMORY[0x28223BE20](v55);
      *(&v65 - 2) = v44;
      *(&v65 - 1) = v50;
      sub_22D7A2D3C(sub_22D7A8898, (&v65 - 4), v47);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v57 = Strong;
        v58 = sub_22D81B4F8();
        v59 = v67;
        (*(*(v58 - 8) + 56))(v67, 1, 1, v58);
        v60 = v71;
        sub_22D7A88A0(v47, v71, type metadata accessor for TimeString);
        v61 = v69;
        sub_22D7A88A0(v44, v69, type metadata accessor for TextClockDescriptor);
        v62 = (*(v70 + 80) + 40) & ~*(v70 + 80);
        v63 = (v66 + *(v45 + 80) + v62) & ~*(v45 + 80);
        v64 = swift_allocObject();
        v64[2] = 0;
        v64[3] = 0;
        v64[4] = v57;
        sub_22D7A8908(v60, v64 + v62, type metadata accessor for TimeString);
        sub_22D7A8908(v61, v64 + v63, type metadata accessor for TextClockDescriptor);
        swift_unknownObjectRetain();
        sub_22D79DF68(0, 0, v59, &unk_22D8224A8, v64);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_22D7A8AD0(v47, type metadata accessor for TimeString);
      sub_22D764440(v48, &qword_27DA02BE8, &qword_22D822498);
      sub_22D7A8AD0(v44, type metadata accessor for TextClockDescriptor);
    }
  }

  else
  {
    v41 = objc_opt_self();
    v82 = sub_22D81B2B8();
    [v41 logError_];
    v42 = v82;
  }
}

uint64_t sub_22D7A3C88(uint64_t a1)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = type metadata accessor for OverrideTime(0);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v16, 1, 1, v17);
  v19 = *(v1 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v19 + 4);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D764440(v16, &qword_27DA029E8, &qword_22D821D60);
  sub_22D7640C4(v1 + v20, v16, &qword_27DA029E8, &qword_22D821D60);
  sub_22D7640C4(v42, v14, &qword_27DA029E8, &qword_22D821D60);
  sub_22D7640C4(v1 + v20, v11, &qword_27DA029E8, &qword_22D821D60);
  swift_endAccess();
  swift_beginAccess();
  sub_22D7A8C34(v14, v1 + v20, &qword_27DA029E8, &qword_22D821D60);
  swift_endAccess();
  sub_22D7A4468(v11);
  sub_22D764440(v11, &qword_27DA029E8, &qword_22D821D60);
  sub_22D764440(v14, &qword_27DA029E8, &qword_22D821D60);
  swift_beginAccess();
  os_unfair_lock_unlock(v19 + 4);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *(v18 + 48);
    v24 = 1;
    v25 = v23(v16, 1, v17);
    v26 = sub_22D81A8C8();
    v27 = *(v26 - 8);
    if (!v25)
    {
      (*(*(v26 - 8) + 16))(v41, v16, v26);
      v24 = 0;
    }

    v28 = *(v27 + 56);
    v28(v41, v24, 1, v26);
    v29 = v39;
    sub_22D7640C4(v42, v39, &qword_27DA029E8, &qword_22D821D60);
    if (v23(v29, 1, v17) == 1)
    {
      sub_22D764440(v29, &qword_27DA029E8, &qword_22D821D60);
      v30 = 1;
      v31 = v40;
    }

    else
    {
      v31 = v40;
      (*(v27 + 16))(v40, v29, v26);
      sub_22D7A8AD0(v29, type metadata accessor for OverrideTime);
      v30 = 0;
    }

    v28(v31, v30, 1, v26);
    v35 = MEMORY[0x2318D2420]("Clock:shared");
    if (v35)
    {
      MEMORY[0x28223BE20](v35);
      *(&v38 - 4) = v22;
      *(&v38 - 3) = v31;
      v36 = v41;
      *(&v38 - 2) = v41;
      sub_22D7D1E60(sub_22D7A8C1C, (&v38 - 6));
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v36 = v41;
    }

    sub_22D764440(v42, &qword_27DA029E8, &qword_22D821D60);
    sub_22D764440(v31, &qword_27DA02000, &qword_22D81F160);
    v34 = v36;
    v32 = &qword_27DA02000;
    v33 = &qword_22D81F160;
  }

  else
  {
    v32 = &qword_27DA029E8;
    v33 = &qword_22D821D60;
    v34 = v42;
  }

  sub_22D764440(v34, v32, v33);
  return sub_22D764440(v16, &qword_27DA029E8, &qword_22D821D60);
}

void (*sub_22D7A41CC(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for OverrideTime(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = *(v1 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v10 + 4);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D764440(v8, &qword_27DA029E8, &qword_22D821D60);
  sub_22D7640C4(v1 + v11, v8, &qword_27DA029E8, &qword_22D821D60);
  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock(v10 + 4);
  swift_endAccess();
  return sub_22D7A4394;
}

void sub_22D7A43AC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_22D7640C4(*(*a1 + 88), v5, &qword_27DA029E8, &qword_22D821D60);
    a3(v5);
    sub_22D764440(v6, &qword_27DA029E8, &qword_22D821D60);
  }

  else
  {
    a3(*(*a1 + 88));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_22D7A4468(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v18 = v1;
  v9 = v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  v10 = type metadata accessor for OverrideTime(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v9, 1, v10);
  v13 = 0;
  v14 = 0;
  if (!v12)
  {
    v15 = v9 + *(v10 + 20);
    v13 = *(v15 + 16);
    v14 = *(v15 + 24);
  }

  v17[0] = v14;
  v17[1] = v13;
  sub_22D7640C4(a1, v8, &qword_27DA029E8, &qword_22D821D60);
  if (v11(v8, 1, v10) == 1)
  {
    result = sub_22D764440(v8, &qword_27DA029E8, &qword_22D821D60);
    if (v12)
    {
      return result;
    }

    goto LABEL_9;
  }

  sub_22D7A8AD0(v8, type metadata accessor for OverrideTime);
  if (v12 || (sub_22D81BC98() & 1) == 0 || (result = sub_22D81BC98(), (result & 1) == 0))
  {
LABEL_9:
    sub_22D7640C4(v9, v6, &qword_27DA029E8, &qword_22D821D60);
    sub_22D7A5B94(v6);
    return sub_22D764440(v6, &qword_27DA029E8, &qword_22D821D60);
  }

  return result;
}

char *sub_22D7A46A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  *(v1 + 3) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for MTSUnfairLock();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v1 + 5) = v6;
  v7 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  v8 = type metadata accessor for OverrideTime(0);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *&v1[OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_advanceTimeTask] = 0;
  v9 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_initializationTime;
  sub_22D81A888();
  v10 = sub_22D81A8C8();
  (*(*(v10 - 8) + 56))(&v1[v9], 0, 1, v10);
  *(v1 + 4) = a1;
  if (a1)
  {
    v11 = sub_22D81B4F8();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v12;
    swift_retain_n();
    sub_22D75D890(0, 0, v5, &unk_22D822538, v13);
  }

  return v1;
}

uint64_t sub_22D7A48D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v5[22] = swift_task_alloc();
  v6 = sub_22D81A8C8();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5[26] = v7;
  v8 = *(v7 - 8);
  v5[27] = v8;
  v5[28] = *(v8 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C60, &qword_22D822540);
  v5[33] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C68, &qword_22D822548);
  v5[34] = v9;
  v5[35] = *(v9 - 8);
  v5[36] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DA02C70, &qword_22D822550);
  v5[37] = v10;
  v5[38] = *(v10 - 8);
  v5[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7A4BA8, 0, 0);
}

uint64_t sub_22D7A4BA8()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  sub_22D7B0FD0(v1);
  sub_22D81B558();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_22D7A4CB4;
  v5 = v0[37];
  v6 = v0[33];

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_22D7A4CB4()
{

  return MEMORY[0x2822009F8](sub_22D7A4DB0, 0, 0);
}

uint64_t sub_22D7A4DB0()
{
  v1 = v0[33];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) != 1)
  {
    sub_22D79DD0C(v1, v0[32], &qword_27DA02000, &qword_22D81F160);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = v0[31];
      v4 = v0[23];
      v5 = v0[24];
      v6 = Strong;
      v48 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_initializationTime;
      sub_22D7640C4(Strong + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_initializationTime, v3, &qword_27DA02000, &qword_22D81F160);
      v7 = *(v5 + 48);
      v8 = v7(v3, 1, v4);
      if (v8 == 1)
      {
        __break(1u);
        return MEMORY[0x2822003E8](v8, v9, v10, v11);
      }

      v13 = v0[30];
      v12 = v0[31];
      v15 = v0[24];
      v14 = v0[25];
      v16 = v0[23];
      v47 = v0[22];
      sub_22D81A888();
      sub_22D81A7F8();
      v18 = v17;
      v19 = *(v15 + 8);
      v19(v14, v16);
      v19(v12, v16);
      sub_22D7640C4(v6 + v48, v13, &qword_27DA02000, &qword_22D81F160);
      v20 = v7(v13, 1, v16);
      sub_22D764440(v13, &qword_27DA02000, &qword_22D81F160);
      v21 = type metadata accessor for OverrideTime(0);
      v22 = *(v21 - 8);
      (*(v22 + 56))(v47, 1, 1, v21);
      v23 = *(v6 + 40);
      swift_beginAccess();
      os_unfair_lock_lock(v23 + 4);
      swift_endAccess();
      v24 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
      swift_beginAccess();
      sub_22D764440(v47, &qword_27DA029E8, &qword_22D821D60);
      sub_22D7640C4(v6 + v24, v47, &qword_27DA029E8, &qword_22D821D60);
      swift_endAccess();
      v49 = v6;
      v25 = *(v6 + 40);
      swift_beginAccess();
      os_unfair_lock_unlock(v25 + 4);
      swift_endAccess();
      v26 = (*(v22 + 48))(v47, 1, v21);
      v27 = v0[22];
      if (v26 == 1)
      {
        sub_22D764440(v27, &qword_27DA029E8, &qword_22D821D60);
      }

      else
      {
        sub_22D764440(v27, &qword_27DA029E8, &qword_22D821D60);
        if (v20 != 1 && v18 <= 1.0)
        {
          sub_22D764440(v0[32], &qword_27DA02000, &qword_22D81F160);

LABEL_22:
          v46 = swift_task_alloc();
          v0[40] = v46;
          *v46 = v0;
          v46[1] = sub_22D7A4CB4;
          v11 = v0[37];
          v8 = v0[33];
          v9 = 0;
          v10 = 0;

          return MEMORY[0x2822003E8](v8, v9, v10, v11);
        }
      }

      v28 = v0[32];
      v29 = v0[29];
      v30 = v0[27];
      v31 = v0[20];
      v32 = v0[21];
      v33 = sub_22D81B4F8();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v32, 1, 1, v33);
      sub_22D7640C4(v28, v29, &qword_27DA02000, &qword_22D81F160);
      v35 = (*(v30 + 80) + 40) & ~*(v30 + 80);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v36[4] = v49;
      sub_22D79DD0C(v29, v36 + v35, &qword_27DA02000, &qword_22D81F160);
      sub_22D7640C4(v32, v31, &unk_27DA01FF0, &qword_22D81FC70);
      LODWORD(v32) = (*(v34 + 48))(v31, 1, v33);
      sub_22D81A198();
      sub_22D81A198();
      v37 = v0[20];
      if (v32 == 1)
      {
        sub_22D764440(v0[20], &unk_27DA01FF0, &qword_22D81FC70);
      }

      else
      {
        sub_22D81B4E8();
        (*(v34 + 8))(v37, v33);
      }

      v40 = v36[2];
      swift_unknownObjectRetain();

      if (v40)
      {
        swift_getObjectType();
        v41 = sub_22D81B498();
        v43 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      sub_22D764440(v0[21], &unk_27DA01FF0, &qword_22D81FC70);
      v44 = swift_allocObject();
      *(v44 + 16) = &unk_22D822560;
      *(v44 + 24) = v36;
      if (v43 | v41)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v41;
        v0[5] = v43;
      }

      v45 = v0[32];
      swift_task_create();

      sub_22D764440(v45, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_22;
    }

    sub_22D764440(v0[32], &qword_27DA02000, &qword_22D81F160);
  }

  (*(v0[38] + 8))(v0[39], v0[37]);

  v38 = v0[1];

  return v38();
}

uint64_t sub_22D7A54B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7A5554, 0, 0);
}

uint64_t sub_22D7A5554()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_22D81A8C8();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = *(v3 + 40);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  sub_22D7A56EC(v1, v3, v2);
  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (MEMORY[0x2318D2420]("Clock:shared"))
    {
      v8 = swift_task_alloc();
      v9 = *(v0 + 9);
      *(v8 + 16) = v7;
      *(v8 + 24) = v9;
      sub_22D7D1E60(sub_22D7A967C, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_22D764440(v0[10], &qword_27DA02000, &qword_22D81F160);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22D7A56EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
  swift_beginAccess();
  sub_22D7640C4(a2 + v18, v12, &qword_27DA029E8, &qword_22D821D60);
  v19 = type metadata accessor for OverrideTime(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v43 = v19;
  if (v21(v12, 1))
  {
    sub_22D764440(v12, &qword_27DA029E8, &qword_22D821D60);
    v22 = sub_22D81A8C8();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  }

  else
  {
    v22 = sub_22D81A8C8();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v17, v12, v22);
    sub_22D764440(v12, &qword_27DA029E8, &qword_22D821D60);
    (*(v23 + 56))(v17, 0, 1, v22);
  }

  sub_22D79DCA4(v17, a1, &qword_27DA02000, &qword_22D81F160);
  sub_22D81A8C8();
  v24 = *(v22 - 8);
  v25 = *(v24 + 48);
  v26 = 1;
  if (v25(a3, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  v40 = a2;
  v27 = v41;
  sub_22D7640C4(a3, v41, &qword_27DA02000, &qword_22D81F160);
  result = (v25)(v27, 1, v22);
  if (result != 1)
  {
    v29 = sub_22D81BCA8();
    v31 = v30;
    v32 = sub_22D81BCA8();
    v34 = v33;
    v35 = v44;
    (*(v24 + 32))(v44, v27, v22);
    v26 = 0;
    v36 = &v35[*(v43 + 20)];
    *v36 = v29;
    v36[1] = v31;
    v36[2] = v32;
    v36[3] = v34;
    a2 = v40;
LABEL_7:
    v37 = v44;
    (*(v20 + 56))(v44, v26, 1, v43);
    v38 = v42;
    sub_22D7640C4(a2 + v18, v42, &qword_27DA029E8, &qword_22D821D60);
    swift_beginAccess();
    sub_22D7A8C34(v37, a2 + v18, &qword_27DA029E8, &qword_22D821D60);
    swift_endAccess();
    sub_22D7A4468(v38);
    sub_22D764440(v38, &qword_27DA029E8, &qword_22D821D60);
    return sub_22D764440(v37, &qword_27DA029E8, &qword_22D821D60);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D7A5B94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_advanceTimeTask;
  if (*(v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_advanceTimeTask))
  {
    sub_22D81A198();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BC0, &unk_22D822460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    sub_22D81B598();
  }

  *(v1 + v9) = 0;

  sub_22D7640C4(a1, v8, &qword_27DA029E8, &qword_22D821D60);
  v10 = type metadata accessor for OverrideTime(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    return sub_22D764440(v8, &qword_27DA029E8, &qword_22D821D60);
  }

  v12 = &v8[*(v10 + 20)];
  v13 = *v12;
  v14 = *(v12 + 1);
  v15 = *(v12 + 2);
  v16 = *(v12 + 3);
  sub_22D7A8AD0(v8, type metadata accessor for OverrideTime);
  sub_22D81BCA8();
  result = sub_22D81BC98();
  if ((result & 1) == 0)
  {
    sub_22D81BCA8();
    result = sub_22D81BC98();
    if ((result & 1) == 0)
    {
      v17 = sub_22D81B4F8();
      (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v18;
      v19[5] = v13;
      v19[6] = v14;
      v19[7] = v15;
      v19[8] = v16;
      *(v1 + v9) = sub_22D79E214(0, 0, v5, &unk_22D822478, v19);
    }
  }

  return result;
}

uint64_t sub_22D7A5E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a1;
  v8[18] = a4;
  v9 = sub_22D81B8F8();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  v10 = sub_22D81B8E8();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA029E8, &qword_22D821D60);
  v8[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v8[31] = swift_task_alloc();
  v11 = sub_22D81A8C8();
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7A608C, 0, 0);
}

uint64_t sub_22D7A608C()
{
  swift_beginAccess();
  if ((sub_22D81B5A8() & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    **(v0 + 136) = 0;

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v2 = Strong;
    v3 = *(v0 + 240);
    v4 = type metadata accessor for OverrideTime(0);
    v5 = *(v4 - 8);
    (*(v5 + 56))(v3, 1, 1, v4);
    v6 = *(v2 + 40);
    swift_beginAccess();
    os_unfair_lock_lock(v6 + 4);
    swift_endAccess();
    v7 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
    swift_beginAccess();
    sub_22D764440(v3, &qword_27DA029E8, &qword_22D821D60);
    sub_22D7640C4(v2 + v7, v3, &qword_27DA029E8, &qword_22D821D60);
    swift_endAccess();
    v8 = *(v2 + 40);
    swift_beginAccess();
    os_unfair_lock_unlock(v8 + 4);
    swift_endAccess();
    v9 = (*(v5 + 48))(v3, 1, v4);
    v10 = *(v0 + 280);
    if (v9)
    {
      v11 = *(v0 + 256);
      v12 = *(v0 + 264);
      v13 = *(v0 + 248);
      sub_22D764440(*(v0 + 240), &qword_27DA029E8, &qword_22D821D60);
      (*(v12 + 56))(v13, 1, 1, v11);
      sub_22D81A888();
      if ((*(v12 + 48))(v13, 1, v11) != 1)
      {
        sub_22D764440(*(v0 + 248), &qword_27DA02000, &qword_22D81F160);
      }
    }

    else
    {
      v17 = *(v0 + 264);
      v16 = *(v0 + 272);
      v19 = *(v0 + 248);
      v18 = *(v0 + 256);
      v20 = *(v0 + 240);
      (*(v17 + 16))(v16, v20, v18);
      sub_22D764440(v20, &qword_27DA029E8, &qword_22D821D60);
      sub_22D81BC88();
      sub_22D81BC88();
      sub_22D81A808();
      (*(v17 + 8))(v16, v18);
      (*(v17 + 56))(v19, 0, 1, v18);
      (*(v17 + 32))(v10, v19, v18);
    }

    v21 = *(v0 + 280);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);
    v24 = *(v0 + 216);
    v25 = swift_task_alloc();
    *(v25 + 16) = v2;
    *(v25 + 24) = v21;
    sub_22D7A3054(sub_22D7A882C, v25);

    sub_22D81B8C8();
    sub_22D81BC88();
    sub_22D81BC88();
    sub_22D81BCB8();
    sub_22D81B8D8();
    v26 = *(v24 + 8);
    *(v0 + 296) = v26;
    *(v0 + 304) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v22, v23);
    *(v0 + 120) = 0;
    *(v0 + 112) = 0;
    *(v0 + 128) = 1;
    sub_22D81BB68();
    v27 = swift_task_alloc();
    *(v0 + 312) = v27;
    v28 = sub_22D79F858(&unk_27DA02BC8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    *v27 = v0;
    v27[1] = sub_22D7A65D0;
    v29 = *(v0 + 232);
    v30 = *(v0 + 200);
    v31 = *(v0 + 184);

    return MEMORY[0x282200488](v29, v0 + 112, v30, v31, v28);
  }
}

uint64_t sub_22D7A65D0()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = v2[37];
  if (v0)
  {
    v4 = v2[29];
    v5 = v2[26];
    (*(v2[24] + 8))(v2[25], v2[23]);
    v3(v4, v5);
    v6 = sub_22D7A6C9C;
  }

  else
  {
    v7 = v2[29];
    v8 = v2[26];
    (*(v2[24] + 8))(v2[25], v2[23]);
    v3(v7, v8);
    v6 = sub_22D7A674C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22D7A674C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  (*(v3 + 8))(v1, v2);
  if ((sub_22D81B5A8() & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    **(v0 + 136) = 0;

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v5 = Strong;
    v6 = *(v0 + 240);
    v7 = type metadata accessor for OverrideTime(0);
    v8 = *(v7 - 8);
    (*(v8 + 56))(v6, 1, 1, v7);
    v9 = *(v5 + 40);
    swift_beginAccess();
    os_unfair_lock_lock(v9 + 4);
    swift_endAccess();
    v10 = OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime;
    swift_beginAccess();
    sub_22D764440(v6, &qword_27DA029E8, &qword_22D821D60);
    sub_22D7640C4(v5 + v10, v6, &qword_27DA029E8, &qword_22D821D60);
    swift_endAccess();
    v11 = *(v5 + 40);
    swift_beginAccess();
    os_unfair_lock_unlock(v11 + 4);
    swift_endAccess();
    v12 = (*(v8 + 48))(v6, 1, v7);
    v13 = *(v0 + 280);
    if (v12)
    {
      v14 = *(v0 + 256);
      v15 = *(v0 + 264);
      v16 = *(v0 + 248);
      sub_22D764440(*(v0 + 240), &qword_27DA029E8, &qword_22D821D60);
      (*(v15 + 56))(v16, 1, 1, v14);
      sub_22D81A888();
      if ((*(v15 + 48))(v16, 1, v14) != 1)
      {
        sub_22D764440(*(v0 + 248), &qword_27DA02000, &qword_22D81F160);
      }
    }

    else
    {
      v20 = *(v0 + 264);
      v19 = *(v0 + 272);
      v22 = *(v0 + 248);
      v21 = *(v0 + 256);
      v23 = *(v0 + 240);
      (*(v20 + 16))(v19, v23, v21);
      sub_22D764440(v23, &qword_27DA029E8, &qword_22D821D60);
      sub_22D81BC88();
      sub_22D81BC88();
      sub_22D81A808();
      (*(v20 + 8))(v19, v21);
      (*(v20 + 56))(v22, 0, 1, v21);
      (*(v20 + 32))(v13, v22, v21);
    }

    v24 = *(v0 + 280);
    v25 = *(v0 + 224);
    v26 = *(v0 + 208);
    v27 = *(v0 + 216);
    v28 = swift_task_alloc();
    *(v28 + 16) = v5;
    *(v28 + 24) = v24;
    sub_22D7A3054(sub_22D7A882C, v28);

    sub_22D81B8C8();
    sub_22D81BC88();
    sub_22D81BC88();
    sub_22D81BCB8();
    sub_22D81B8D8();
    v29 = *(v27 + 8);
    *(v0 + 296) = v29;
    *(v0 + 304) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v25, v26);
    *(v0 + 120) = 0;
    *(v0 + 112) = 0;
    *(v0 + 128) = 1;
    sub_22D81BB68();
    v30 = swift_task_alloc();
    *(v0 + 312) = v30;
    v31 = sub_22D79F858(&unk_27DA02BC8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    *v30 = v0;
    v30[1] = sub_22D7A65D0;
    v32 = *(v0 + 232);
    v33 = *(v0 + 200);
    v34 = *(v0 + 184);

    return MEMORY[0x282200488](v32, v0 + 112, v33, v34, v31);
  }
}

uint64_t sub_22D7A6C9C()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22D7A6D84@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v4 = sub_22D7A41CC(v11);
  v6 = v5;
  v7 = type metadata accessor for OverrideTime(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!v8)
  {
    v9 = sub_22D81A8C8();
    (*(*(v9 - 8) + 24))(v6, a1, v9);
  }

  result = (v4)(v11, 0);
  *a2 = v8 != 0;
  return result;
}

uint64_t sub_22D7A6E78()
{
  sub_22D749D28(v0 + 16);

  sub_22D764440(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_lockedOverrideTime, &qword_27DA029E8, &qword_22D821D60);

  sub_22D764440(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_F15BF02653F44D6D9AC85F90DB61595B13OverrideClock_initializationTime, &qword_27DA02000, &qword_22D81F160);

  return swift_deallocClassInstance();
}

uint64_t sub_22D7A6F34(void (*a1)(char *, uint64_t))
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  swift_endAccess();
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = sub_22D81A398();
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = *(*(v4 + 48) + v12);
      v14 = *(*(v4 + 56) + 8 * v12);
      sub_22D81A198();
      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v15[0] = v13;
      a1(v15, v14);

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    swift_beginAccess();
    os_unfair_lock_unlock(v3 + 4);
    return swift_endAccess();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D7A70AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16) && (v7 = sub_22D807A48(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = *(*v9 + 104);
    v11 = *(v9 + v10);
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v11 + 4);
    swift_endAccess();
    sub_22D799EA0(a1);
    v12 = *(v9 + v10);
    swift_beginAccess();
    os_unfair_lock_unlock(v12 + 4);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C28, &qword_22D8224E8);
    sub_22D7548B0(&qword_27DA02C30, &qword_27DA02C28, &qword_22D8224E8, &unk_22D822730);
    swift_allocError();
    swift_willThrow();
  }

  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  return swift_endAccess();
}

uint64_t sub_22D7A7258(uint64_t a1, double *a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  sub_22D81A398();
  v7 = sub_22D807AC0(a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C00, &qword_22D8224B8);
    sub_22D7548B0(&qword_27DA02C08, &qword_27DA02C00, &qword_22D8224B8, &unk_22D822730);
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  sub_22D81A198();

  v10 = *(*v9 + 104);
  v11 = *(v9 + v10);
  swift_beginAccess();
  os_unfair_lock_lock(v11 + 4);
  swift_endAccess();
  sub_22D79A780(a1);
  v12 = *(v9 + v10);
  swift_beginAccess();
  os_unfair_lock_unlock(v12 + 4);
  swift_endAccess();

LABEL_6:
  swift_beginAccess();
  os_unfair_lock_unlock(v5 + 4);
  return swift_endAccess();
}

uint64_t sub_22D7A7420(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C10, &qword_22D8224C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  a2(v5);
  v8 = type metadata accessor for TimeString(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return sub_22D79DCA4(v7, a1, &qword_27DA02C10, &qword_22D8224C0);
}

uint64_t sub_22D7A7510@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02BD8, &qword_22D822488);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = (&v40 - v4);
  v5 = type metadata accessor for TextClockDescriptor(0);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C18, &qword_22D8224C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02BF0, &qword_22D8224B0);
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v46 = a1;
  v47 = v19;
  v41 = v15;
  if (!v20)
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        (*(v12 + 56))(v10, 1, 1, v11);
        v25 = 0;
        goto LABEL_11;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v21 = v18;
LABEL_10:
  v25 = (v20 - 1) & v20;
  v26 = __clz(__rbit64(v20)) | (v21 << 6);
  sub_22D7A88A0(*(v16 + 48) + *(v43 + 72) * v26, v7, type metadata accessor for TextClockDescriptor);
  v27 = *(*(v16 + 56) + 8 * v26);
  v28 = v7;
  v29 = *(v11 + 48);
  sub_22D7A8908(v28, v10, type metadata accessor for TextClockDescriptor);
  *&v10[v29] = v27;
  (*(v12 + 56))(v10, 0, 1, v11);
  v30 = v27;
  v24 = v21;
LABEL_11:
  *v1 = v16;
  v1[1] = v17;
  v1[2] = v47;
  v1[3] = v24;
  v1[4] = v25;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22D764440(v10, &qword_27DA02C18, &qword_22D8224C8);
    return (*(v44 + 56))(v46, 1, 1, v45);
  }

  v31 = v10;
  v32 = v41;
  sub_22D79DD0C(v31, v41, &unk_27DA02BF0, &qword_22D8224B0);
  v33 = v45;
  v34 = *(v45 + 48);
  v35 = v1[5];
  v36 = v42;
  *v42 = v35;
  result = sub_22D79DD0C(v32, v36 + v34, &unk_27DA02BF0, &qword_22D8224B0);
  v37 = __OFADD__(v35, 1);
  v38 = v35 + 1;
  v39 = v46;
  if (v37)
  {
    goto LABEL_18;
  }

  v1[5] = v38;
  sub_22D79DD0C(v36, v39, &qword_27DA02BD8, &qword_22D822488);
  return (*(v44 + 56))(v39, 0, 1, v33);
}

uint64_t _s18MobileTimerSupport10TimeStringV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22D81BB08() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_22D81BB08() & 1) == 0 || a1[4] != a2[4] || a1[5] != a2[5] || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_22D81BB08() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] != a2[8])
  {
    return 0;
  }

  if (a1[9] != a2[9])
  {
    return 0;
  }

  v6 = type metadata accessor for TimeString(0);
  if ((MEMORY[0x2318D11A0](a1 + *(v6 + 36), a2 + *(v6 + 36)) & 1) == 0)
  {
    return 0;
  }

  return sub_22D81A868();
}

uint64_t _s18MobileTimerSupport10TimeStringV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimeString(0);
  sub_22D81A8B8();
  v15[0] = a1;
  v8 = sub_22D81AA68();
  v9 = *(v5 + 8);
  v9(v7, v4);
  sub_22D81A8B8();
  v15[1] = a2;
  v10 = sub_22D81AA68();
  v9(v7, v4);
  if (v8 == v10)
  {
    v11 = sub_22D81A838();
  }

  else
  {
    sub_22D81A8B8();
    v12 = sub_22D81AA68();
    v9(v7, v4);
    sub_22D81A8B8();
    v13 = sub_22D81AA68();
    v9(v7, v4);
    v11 = v12 < v13;
  }

  return v11 & 1;
}

unint64_t sub_22D7A7C28()
{
  result = qword_27DA02A30;
  if (!qword_27DA02A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02A30);
  }

  return result;
}

uint64_t sub_22D7A7D60(uint64_t a1)
{
  result = sub_22D81A8C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22D7A7DE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D7A7E00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_22D7A7E64(uint64_t a1)
{
  type metadata accessor for _NSRange(319);
  if (v1 <= 0x3F)
  {
    sub_22D81AAB8();
    if (v2 <= 0x3F)
    {
      sub_22D81A8C8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22D7A7F40(uint64_t a1)
{
  sub_22D7A8274(319, &qword_27DA02A90, type metadata accessor for OverrideTime);
  if (v1 <= 0x3F)
  {
    sub_22D81A8C8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22D7A81B0(uint64_t a1)
{
  sub_22D7A8274(319, &qword_280CD2E58, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22D7A8274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22D81B718();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22D7A82F0(uint64_t a1)
{
  sub_22D7A8274(319, &qword_27DA02A90, type metadata accessor for OverrideTime);
  if (v1 <= 0x3F)
  {
    sub_22D7A8274(319, &qword_280CD2E58, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22D7A845C(uint64_t a1)
{
  result = sub_22D81AAB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22D7A84FC()
{
  result = qword_27DA02B78;
  if (!qword_27DA02B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02B78);
  }

  return result;
}

unint64_t sub_22D7A8554()
{
  result = qword_27DA02B80;
  if (!qword_27DA02B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02B80);
  }

  return result;
}

unint64_t sub_22D7A85F4()
{
  result = qword_27DA02B90;
  if (!qword_27DA02B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02B90);
  }

  return result;
}

unint64_t sub_22D7A864C()
{
  result = qword_27DA02B98;
  if (!qword_27DA02B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02B98);
  }

  return result;
}

unint64_t sub_22D7A86A4()
{
  result = qword_27DA02BA0;
  if (!qword_27DA02BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02BA0);
  }

  return result;
}

unint64_t sub_22D7A86FC()
{
  result = qword_27DA02BA8;
  if (!qword_27DA02BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02BA8);
  }

  return result;
}

uint64_t sub_22D7A8750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B0C;

  return sub_22D7A5E84(a1, v4, v5, v6, v7, v8, v9, v10);
}

void *sub_22D7A8834()
{
  v1 = *(v0 + 16);
  result = (*(v0 + 24))(&v3);
  *v1 = v3;
  v1[1] = 0;
  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t sub_22D7A88A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D7A8908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D7A8970(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TimeString(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TextClockDescriptor(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22D744B08;

  return sub_22D7A0A00(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_22D7A8AD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D7A8B58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D7A0804(a1, v4, v5, v6, v7);
}

uint64_t sub_22D7A8C34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D7A8C9C(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_lastOverrideTime;
  v7 = type metadata accessor for OverrideTime(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  sub_22D81A8B8();
  v8 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_atomicClock;
  type metadata accessor for AtomicClock();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  v10 = MEMORY[0x277D84F98];
  *(v9 + 32) = MEMORY[0x277D84F98];
  *(v1 + v8) = v9;
  v11 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_textClock;
  *(v1 + v11) = [objc_allocWithZone(type metadata accessor for TextClock(0)) init];
  v12 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_dateStreamObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C48, &qword_22D822508);
  v13 = swift_allocObject();
  type metadata accessor for MTSUnfairLock();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v13 + 16) = v14;
  *(v13 + 24) = v10;
  *(v1 + v12) = v13;
  v15 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_textClockStreamObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C50, &qword_22D822510);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = v10;
  *(v1 + v15) = v16;
  v18 = OBJC_IVAR____TtC18MobileTimerSupport5Clock__lastOverridePublishTimeByInterval;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C58, &qword_22D822518);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v19 + 16) = v20;
  *(v19 + 24) = v10;
  *(v1 + v18) = v19;
  v21 = OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideDateStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C38, &qword_22D8224F8);
  v22 = swift_allocObject();
  v23 = *(*v22 + 96);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  v25 = *(*v22 + 104);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v22 + v25) = v26;
  *(v22 + *(*v22 + 112)) = v10;
  *(v22 + *(*v22 + 120)) = 0;
  *(v1 + v21) = v22;
  type metadata accessor for OverrideClock(0);
  swift_allocObject();
  v27 = sub_22D81A198();
  *(v1 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock) = sub_22D7A46A8(v27);
  v28 = sub_22D81B4F8();
  (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
  sub_22D81B4D8();
  sub_22D81A198();
  v29 = sub_22D81B4C8();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v2;
  sub_22D75D890(0, 0, v5, &unk_22D822528, v30);

  *(*(v2 + OBJC_IVAR____TtC18MobileTimerSupport5Clock_overrideClock) + 24) = &off_2840D7420;
  swift_unknownObjectWeakAssign();
  return v2;
}

void *sub_22D7A90B4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C38, &qword_22D8224F8);
  v8 = swift_allocObject();
  (*(v5 + 56))(v8 + *(*v8 + 96), 1, 1, v4);
  v9 = *(*v8 + 104);
  type metadata accessor for MTSUnfairLock();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v8 + v9) = v10;
  *(v8 + *(*v8 + 112)) = MEMORY[0x277D84F98];
  *(v8 + *(*v8 + 120)) = 0;
  a2[4] = v8;
  v11 = sub_22D81A8C8();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C40, &qword_22D822500);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v12[2] = v13;
  sub_22D79DD0C(v7, v12 + *(*v12 + 96), &qword_27DA02000, &qword_22D81F160);
  a2[5] = v12;
  a2[2] = a1;
  a2[3] = &off_2840D8010;
  v14 = swift_allocObject();
  swift_weakInit();
  swift_retain_n();
  sub_22D81A198();
  sub_22D7B46DC(sub_22D7A9364, v14);

  return a2;
}

uint64_t objectdestroy_108Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_22D7A93B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7A03F0(a1, v4, v5, v6);
}

uint64_t sub_22D7A946C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B0C;

  return sub_22D7A48D0(a1, v4, v5, v7, v6);
}

uint64_t sub_22D7A952C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D7A54B8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22D7A9680(uint64_t a1)
{
  result = sub_22D81B718();
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

uint64_t sub_22D7A9738()
{
  v1 = *(*v0 + 96);
  v2 = sub_22D81B718();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_22D7A97F4()
{
  sub_22D7A9738();

  return swift_deallocClassInstance();
}

uint64_t sub_22D7A98B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v60) = a4;
  v58 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02D80, &qword_22D822678);
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v63 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02D88, &qword_22D822680);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v61 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v59 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - v22;
  v24 = *(a2 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v24 + 4);
  swift_endAccess();
  swift_beginAccess();
  v25 = *(a2 + 24);
  if (*(v25 + 16) && (v26 = sub_22D807A48(a1), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + 8 * v26);
    swift_retain_n();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DA02D90, &qword_22D822688);
    v28 = swift_allocObject();
    v29 = *(*v28 + 96);
    v30 = sub_22D81A8C8();
    (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
    v31 = *(*v28 + 104);
    type metadata accessor for MTSUnfairLock();
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v28 + v31) = v32;
    *(v28 + *(*v28 + 112)) = MEMORY[0x277D84F98];
    *(v28 + *(*v28 + 120)) = 0;
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(a2 + 24);
    *(a2 + 24) = 0x8000000000000000;
    sub_22D80C208(v28, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + 24) = v68;
    swift_endAccess();
  }

  v34 = *(*v28 + 104);
  v35 = *(v28 + v34);
  swift_beginAccess();
  os_unfair_lock_lock(v35 + 4);
  swift_endAccess();
  v36 = *(*v28 + 120);
  v37 = *(v28 + v36);
  if ((v37 & 1) == 0)
  {
    *(v28 + v36) = 1;
  }

  v38 = *(v28 + v34);
  swift_beginAccess();
  os_unfair_lock_unlock(v38 + 4);
  swift_endAccess();
  v39 = sub_22D81A8C8();
  v40 = *(*(v39 - 8) + 56);
  v67 = v39;
  v40(v23, 1, 1);
  if ((v37 & 1) == 0)
  {
    swift_beginAccess();
    os_unfair_lock_unlock(v24 + 4);
    swift_endAccess();
    v41 = sub_22D81B4F8();
    (*(*(v41 - 8) + 56))(v18, 1, 1, v41);
    sub_22D81B4D8();
    sub_22D81A198();
    v42 = sub_22D81B4C8();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    *(v43 + 16) = v42;
    *(v43 + 24) = v44;
    *(v43 + 32) = a3;
    *(v43 + 40) = v60;
    sub_22D75D890(0, 0, v18, &unk_22D822698, v43);

    v45 = v59;
    sub_22D81A8B8();
    swift_beginAccess();
    os_unfair_lock_lock(v24 + 4);
    swift_endAccess();
    (v40)(v45, 0, 1, v67);
    sub_22D77FD70(v45, v23);
  }

  v57 = v24;
  v59 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02918, &qword_22D822690);
  v47 = *(v46 - 8);
  v60 = *(v47 + 56);
  v48 = v61;
  v60(v61, 1, 1, v46);
  v49 = *(v28 + v34);
  swift_beginAccess();
  os_unfair_lock_lock(v49 + 4);
  v50 = swift_endAccess();
  MEMORY[0x28223BE20](v50);
  *(&v56 - 2) = v28;
  *(&v56 - 1) = v23;
  v56 = v23;
  (*(v64 + 104))(v63, *MEMORY[0x277D85778], v65);
  v51 = v62;
  sub_22D81B588();
  sub_22D764440(v48, &qword_27DA02D88, &qword_22D822680);
  v60(v51, 0, 1, v46);
  sub_22D7AA194(v51, v48);
  v52 = *(v28 + v34);
  swift_beginAccess();
  os_unfair_lock_unlock(v52 + 4);
  swift_endAccess();
  v53 = v66;
  sub_22D7AA204(v48, v66);
  result = (*(v47 + 48))(v53, 1, v46);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_22D764440(v48, &qword_27DA02D88, &qword_22D822680);
    (*(v47 + 32))(v58, v53, v46);
    sub_22D764440(v56, &qword_27DA02000, &qword_22D81F160);
    v55 = v57;
    swift_beginAccess();
    os_unfair_lock_unlock(v55 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_22D7AA10C()
{

  return v0;
}

uint64_t sub_22D7AA134()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22D7AA194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02D88, &qword_22D822680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D7AA204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02D88, &qword_22D822680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D7AA274(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B0C;

  return sub_22D7A059C(a1, v4, v5, v6, v7);
}

void LocationDataProvider.currentLocation(for:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = sub_22D7AADC0(&v4);
  sub_22D7AB640(a2);
}

uint64_t sub_22D7AA3D8(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x28223BE20](a1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F60, &qword_22D822AB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  sub_22D7AF608(v2, v4, type metadata accessor for LocationAccuracy);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22D7AF5A8(v4, type metadata accessor for LocationAccuracy);
    return 0x6E776F6E6B6E55;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_22D81A5F8();
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

uint64_t CurrentLocation.description.getter()
{
  sub_22D81B838();

  v1 = *v0;
  [*v0 coordinate];
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02E30, qword_22D822770);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839F8];
  *(v4 + 16) = xmmword_22D81DF60;
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  v7 = sub_22D81B2D8();
  MEMORY[0x2318D1A50](v7);

  MEMORY[0x2318D1A50](44, 0xE100000000000000);
  [v1 coordinate];
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22D81DF60;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v9;
  v11 = sub_22D81B2D8();
  MEMORY[0x2318D1A50](v11);

  MEMORY[0x2318D1A50](0x636172756363417CLL, 0xEA00000000003A79);
  type metadata accessor for CurrentLocation(0);
  type metadata accessor for LocationAccuracy(0);
  sub_22D7AF730(&qword_27DA02E38, type metadata accessor for LocationAccuracy, &unk_22D822B64);
  v12 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v12);

  MEMORY[0x2318D1A50](62, 0xE100000000000000);
  return 60;
}

uint64_t static CurrentLocation.== infix(_:_:)(void *a1, void *a2)
{
  sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
  if ((sub_22D81B6F8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CurrentLocation(0) + 20);

  return sub_22D7AE12C(a1 + v4, a2 + v4);
}

uint64_t sub_22D7AA838(void *a1, void *a2, uint64_t a3)
{
  sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
  if ((sub_22D81B6F8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_22D7AE12C(a1 + v6, a2 + v6);
}

id sub_22D7AA94C()
{
  v0 = type metadata accessor for LocationDataProvider();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x277D84F98];
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_27DA02E20 = result;
  return result;
}

id LocationDataProvider.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x277D84F98];
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

MobileTimerSupport::LocationDataProvider::Use_optional __swiftcall LocationDataProvider.Use.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22D81B998();

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

uint64_t LocationDataProvider.Use.rawValue.getter()
{
  if (*v0)
  {
    return 0x4B72656874616577;
  }

  else
  {
    return 0x6C616E7265746E69;
  }
}

uint64_t sub_22D7AAADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4B72656874616577;
  }

  else
  {
    v3 = 0x6C616E7265746E69;
  }

  if (v2)
  {
    v4 = 0xEA00000000004955;
  }

  else
  {
    v4 = 0xEA00000000007469;
  }

  if (*a2)
  {
    v5 = 0x4B72656874616577;
  }

  else
  {
    v5 = 0x6C616E7265746E69;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007469;
  }

  else
  {
    v6 = 0xEA00000000004955;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22D81BB08();
  }

  return v8 & 1;
}

uint64_t sub_22D7AAB8C@<X0>(char *a2@<X8>)
{
  v3 = sub_22D81B998();

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

void sub_22D7AABEC(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E7265746E69;
  if (*v1)
  {
    v2 = 0x4B72656874616577;
  }

  v3 = 0xEA00000000004955;
  if (*v1)
  {
    v3 = 0xEA00000000007469;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22D7AAC34()
{
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D7AACC0(uint64_t a1)
{
  sub_22D81B328();
}

uint64_t sub_22D7AAD38(uint64_t a1)
{
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

id sub_22D7AADC0(char *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  if (*(v4 + 16) && (v5 = sub_22D807998(v3), (v6 & 1) != 0))
  {
    v15 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();

    return v15;
  }

  else
  {
    swift_endAccess();
    v8 = objc_allocWithZone(type metadata accessor for LocationSource(0));
    if (v3)
    {
      v9 = 0x800000022D82AA60;
      v10 = 0xD000000000000011;
      v11 = 0;
    }

    else
    {
      v10 = 0xD000000000000035;
      v9 = 0x800000022D82AA80;
      v11 = 1;
    }

    v12 = sub_22D7AB02C(v10, v9, v11);
    swift_beginAccess();
    v13 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_22D80C0C0(v13, v3, isUniquelyReferenced_nonNull_native);
    *(v2 + 112) = v16;
    swift_endAccess();
    return v13;
  }
}

id LocationDataProvider.init()()
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  v0[14] = MEMORY[0x277D84F98];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t LocationDataProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LocationDataProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

id sub_22D7AB02C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v39 = a3;
  v44 = sub_22D81B628();
  MEMORY[0x28223BE20](v44);
  v43 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = sub_22D81B668();
  v8 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22D81B108();
  MEMORY[0x28223BE20](v10 - 8);
  v41 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38[-v13];
  v15 = OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__isLocationUpdating;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FC8, &qword_22D822BD0);
  v16 = swift_allocObject();
  type metadata accessor for MTSUnfairLock();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = 0;
  *&v3[v15] = v16;
  v18 = OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__location;
  v19 = type metadata accessor for CurrentLocation(0);
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FD0, &qword_22D822BD8);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v20[2] = v21;
  sub_22D79DD0C(v14, v20 + *(*v20 + 96), &qword_27DA02840, &qword_22D821A70);
  *&v3[v18] = v20;
  v22 = OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_stream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FD8, qword_22D822BE0);
  v23 = swift_allocObject();
  v24 = *(*v23 + 96);
  v25 = type metadata accessor for CurrentLocationResult(0);
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  v26 = *(*v23 + 104);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v23 + v26) = v27;
  *(v23 + *(*v23 + 112)) = MEMORY[0x277D84F98];
  *(v23 + *(*v23 + 120)) = 0;
  *&v3[v22] = v23;
  v28 = [objc_opt_self() meters];
  sub_22D759CA0(0, &qword_27DA02EF0, 0x277CCAE20);
  sub_22D81A5C8();
  *&v3[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_inUseAssertion] = 0;
  *&v3[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource____lazy_storage___locationManager] = 1;
  v29 = &v3[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source];
  *v29 = a1;
  *(v29 + 1) = a2;
  LOBYTE(v23) = v39;
  v30 = v39 & 1;
  v29[16] = v39 & 1;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_22D7AF728(a1, a2, v30);
  sub_22D81B838();

  v46 = 0xD00000000000001FLL;
  v47 = 0x800000022D82AAC0;
  if (v23)
  {
    v31 = sub_22D81B2B8();
    v32 = [v31 lastPathComponent];

    v33 = sub_22D81B2C8();
    v35 = v34;

    sub_22D7AF718(a1, a2);
    a1 = v33;
    a2 = v35;
  }

  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  MEMORY[0x2318D1A50](a1, a2);

  sub_22D81B0F8();
  (*(v8 + 104))(v42, *MEMORY[0x277D85268], v40);
  v46 = MEMORY[0x277D84F90];
  sub_22D7AF730(&unk_280CD2D70, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FE0, &unk_22D81F120);
  sub_22D7AF778();
  sub_22D81B788();
  *&v4[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue] = sub_22D81B6A8();
  v36 = type metadata accessor for LocationSource(0);
  v45.receiver = v4;
  v45.super_class = v36;
  return objc_msgSendSuper2(&v45, sel_init);
}

void sub_22D7AB640(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FB0, &qword_22D822BB8);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FB8, &qword_22D822BC0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v35 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F90, &unk_22D822BA0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = *&v1[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_stream];
  v18 = *(*v17 + 104);
  v19 = *(v17 + v18);
  swift_beginAccess();
  sub_22D81A198();
  v20 = v1;
  os_unfair_lock_lock(v19 + 4);
  swift_endAccess();
  v21 = *(*v17 + 120);
  v22 = *(v17 + v21);
  if ((v22 & 1) == 0)
  {
    *(v17 + v21) = 1;
  }

  v23 = v18;
  v24 = *(v17 + v18);
  swift_beginAccess();
  os_unfair_lock_unlock(v24 + 4);
  swift_endAccess();
  v25 = type metadata accessor for CurrentLocationResult(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v16, 1, 1, v25);
  if ((v22 & 1) == 0)
  {
    sub_22D7ABD64(v14);
    v26(v14, 0, 1, v25);
    sub_22D79DCA4(v14, v16, &qword_27DA02F90, &unk_22D822BA0);
  }

  v44 = v20;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FC0, &qword_22D822BC8);
  v39 = *(v27 - 8);
  v37 = *(v39 + 56);
  v38 = v39 + 56;
  v37(v10, 1, 1, v27);
  v28 = v23;
  v29 = *(v17 + v23);
  swift_beginAccess();
  os_unfair_lock_lock(v29 + 4);
  v30 = swift_endAccess();
  MEMORY[0x28223BE20](v30);
  *(&v35 - 2) = v17;
  *(&v35 - 1) = v16;
  v35 = v16;
  (*(v42 + 104))(v41, *MEMORY[0x277D85778], v43);
  v31 = v40;
  sub_22D81B588();
  sub_22D764440(v10, &qword_27DA02FB8, &qword_22D822BC0);
  v37(v31, 0, 1, v27);
  sub_22D79DD0C(v31, v10, &qword_27DA02FB8, &qword_22D822BC0);
  v32 = *(v17 + v28);
  swift_beginAccess();
  os_unfair_lock_unlock(v32 + 4);
  swift_endAccess();
  v33 = v45;
  v34 = v39;
  sub_22D7640C4(v10, v45, &qword_27DA02FB8, &qword_22D822BC0);
  if ((*(v34 + 48))(v33, 1, v27) == 1)
  {

    __break(1u);
  }

  else
  {

    sub_22D764440(v10, &qword_27DA02FB8, &qword_22D822BC0);
    (*(v34 + 32))(v36, v33, v27);
    sub_22D764440(v35, &qword_27DA02F90, &unk_22D822BA0);
  }
}

id sub_22D7ABBF0()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource____lazy_storage___locationManager;
  v2 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource____lazy_storage___locationManager);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_22D7ABC60(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_22D7AF670(v4);
  }

  sub_22D7AF708(v2);
  return v3;
}

id sub_22D7ABC60(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source + 16);
  v3 = *(a1 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  v4 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v5 = v3;
  v6 = sub_22D81B2B8();
  v7 = &selRef_initWithEffectiveBundlePath_delegate_onQueue_;
  if (!v2)
  {
    v7 = &selRef_initWithEffectiveBundleIdentifier_delegate_onQueue_;
  }

  v8 = [v4 *v7];

  if (!v8)
  {
    v9 = objc_opt_self();
    v10 = sub_22D81B2B8();
    [v9 logError_];
  }

  return v8;
}

uint64_t sub_22D7ABD64@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F90, &unk_22D822BA0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = type metadata accessor for CurrentLocationResult(0);
  v9 = *(v8 - 8);
  (*(v9 + 56))(v7, 1, 1, v8);
  v10 = *&v1[OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22D7AF680;
  *(v12 + 24) = v11;
  aBlock[4] = sub_22D7A8878;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D75BA3C;
  aBlock[3] = &block_descriptor_74;
  v13 = _Block_copy(aBlock);
  v14 = v10;
  v15 = v1;
  sub_22D81A198();

  dispatch_sync(v14, v13);

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_22D7640C4(v7, v5, &qword_27DA02F90, &unk_22D822BA0);
    result = (*(v9 + 48))(v5, 1, v8);
    if (result != 1)
    {
      sub_22D7AF6A0(v5, v19, type metadata accessor for CurrentLocationResult);
      sub_22D764440(v7, &qword_27DA02F90, &unk_22D822BA0);
    }
  }

  __break(1u);
  return result;
}

void sub_22D7AC01C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LocationAccuracy(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22D7AC698())
  {
    v6 = sub_22D7ABBF0();
    if (v6 && (v7 = v6, v8 = [v6 location], v7, v8))
    {
      [v8 horizontalAccuracy];
      v9 = [objc_opt_self() meters];
      sub_22D759CA0(0, &qword_27DA02EF0, 0x277CCAE20);
      sub_22D81A5C8();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F60, &qword_22D822AB8);
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
      sub_22D764440(a2, &qword_27DA02F90, &unk_22D822BA0);
      v11 = type metadata accessor for CurrentLocation(0);
      sub_22D7AF6A0(v5, a2 + *(v11 + 20), type metadata accessor for LocationAccuracy);
      *a2 = v8;
      (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
      v12 = type metadata accessor for CurrentLocationResult(0);
      v13 = v12;
      *(a2 + *(v12 + 20)) = 2;
    }

    else
    {
      sub_22D764440(a2, &qword_27DA02F90, &unk_22D822BA0);
      v15 = type metadata accessor for CurrentLocation(0);
      (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
      v12 = type metadata accessor for CurrentLocationResult(0);
      v13 = v12;
      *(a2 + *(v12 + 20)) = 1;
    }
  }

  else
  {
    sub_22D764440(a2, &qword_27DA02F90, &unk_22D822BA0);
    v14 = type metadata accessor for CurrentLocation(0);
    (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
    v12 = type metadata accessor for CurrentLocationResult(0);
    v13 = v12;
    *(a2 + *(v12 + 20)) = 0;
  }

  (*(*(v12 - 8) + 56))(a2, 0, 1, v13);
  sub_22D7AC33C();
}

void sub_22D7AC33C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F80, &qword_22D822B90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_22D81B118();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v9 = v8;
  LOBYTE(v8) = sub_22D81B128();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v10 = sub_22D7ABBF0();
  if (!v10)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    sub_22D7ACC78(v3);
LABEL_9:
    sub_22D764440(v3, &qword_27DA02F80, &qword_22D822B90);
    return;
  }

  v11 = v10;
  if ((sub_22D7AC698() & 1) == 0)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    sub_22D7ACC78(v3);

    goto LABEL_9;
  }

  v12 = OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__isLocationUpdating;
  v13 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__isLocationUpdating);
  v14 = *(v13 + 16);
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v14 + 4);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v14) = *(v13 + 24);
  v15 = *(v13 + 16);
  swift_beginAccess();
  os_unfair_lock_unlock(v15 + 4);
  swift_endAccess();

  if ((v14 & 1) == 0)
  {
    v16 = *(v0 + v12);
    v17 = *(v16 + 16);
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v17 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v16 + 24) = 1;
    v18 = *(v16 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v18 + 4);
    swift_endAccess();

    [v11 startUpdatingLocation];
  }
}

uint64_t sub_22D7AC698()
{
  result = sub_22D7ABBF0();
  if (result)
  {
    v2 = result;
    v3 = [result _authorizationStatus];
    if (v3 <= 1)
    {
      if (!v3)
      {
        v8 = objc_opt_self();
        v9 = sub_22D81B2B8();
        [v8 logInfo_];

        v10 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource____lazy_storage___locationManager);
        if (v10)
        {
          v11 = v10;
          v12 = sub_22D81B2B8();
          [v8 logInfo_];
LABEL_16:

          [v11 requestWhenInUseAuthorizationWithPrompt];
          sub_22D7AF670(v10);
          return 0;
        }

LABEL_10:

        return 0;
      }

      if (v3 != 1)
      {
LABEL_14:
        v10 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource____lazy_storage___locationManager);
        if (v10)
        {
          v13 = objc_opt_self();
          v11 = v10;
          v12 = sub_22D81B2B8();
          [v13 logInfo_];
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    else if (v3 != 2)
    {
      if (v3 == 4 || v3 == 3)
      {
        v6 = objc_opt_self();
        v7 = sub_22D81B2B8();
        [v6 logInfo_];

        return 1;
      }

      goto LABEL_14;
    }

    v4 = objc_opt_self();
    v5 = sub_22D81B2B8();
    [v4 logInfo_];

    goto LABEL_10;
  }

  return result;
}

unint64_t sub_22D7AC980()
{
  sub_22D81B838();

  v2 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source);
  v1 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source + 8);
  v3 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source + 16);
  if (v3)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000019;
  }

  if (*(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_source + 16))
  {
    v5 = "LocationSource: type:";
  }

  else
  {
    v5 = "nager, Failed to Load>";
  }

  MEMORY[0x2318D1A50](v4, v5 | 0x8000000000000000);

  MEMORY[0x2318D1A50](979659040, 0xE400000000000000);
  if (v3)
  {
    v6 = sub_22D81B2B8();
    v7 = [v6 lastPathComponent];

    v2 = sub_22D81B2C8();
    v1 = v8;
  }

  else
  {
    sub_22D81A398();
  }

  MEMORY[0x2318D1A50](v2, v1);

  MEMORY[0x2318D1A50](32, 0xE100000000000000);
  v9 = sub_22D7ABBF0();
  if (v9)
  {

    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x800000022D82AA10;
    v10 = 0xD000000000000026;
  }

  MEMORY[0x2318D1A50](v10, v11);

  return 0xD000000000000015;
}

id sub_22D7ACB50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22D7ACC78(uint64_t a1)
{
  v52 = a1;
  v55 = type metadata accessor for CurrentLocationResult(0);
  MEMORY[0x28223BE20](v55);
  v56 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for CurrentLocation(0);
  v3 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F80, &qword_22D822B90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v49 = (&v49 - v14);
  MEMORY[0x28223BE20](v13);
  v53 = &v49 - v15;
  v16 = sub_22D81B118();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v21 = v20;
  LOBYTE(v20) = sub_22D81B128();
  result = (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v23 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__isLocationUpdating);
    v24 = *(v23 + 16);
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v24 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v23 + 24) = 0;
    v25 = *(v23 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v25 + 4);
    swift_endAccess();

    v51 = v1;
    v26 = sub_22D7ABBF0();
    [v26 stopUpdatingLocation];

    sub_22D7640C4(v52, v7, &qword_27DA02F80, &qword_22D822B90);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_22D764440(v7, &qword_27DA02F80, &qword_22D822B90);
      v27 = objc_opt_self();
      v28 = sub_22D81B2B8();
      [v27 logInfo_];

      v29 = *(v51 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_stream);
      v30 = v56;
      (*(v3 + 56))(v56, 1, 1, v54);
      *(v30 + *(v55 + 20)) = 0;
      v31 = *(*v29 + 104);
      v32 = *(v29 + v31);
      swift_beginAccess();
      sub_22D81A198();
      os_unfair_lock_lock(v32 + 4);
      swift_endAccess();
      sub_22D798B48(v30);
      v33 = *(v29 + v31);
      swift_beginAccess();
      os_unfair_lock_unlock(v33 + 4);
      swift_endAccess();
      sub_22D7AF5A8(v30, type metadata accessor for CurrentLocationResult);
    }

    else
    {
      v34 = v7;
      v35 = v53;
      sub_22D79DD0C(v34, v53, &qword_27DA02F88, &qword_22D822B98);
      v36 = v49;
      sub_22D7640C4(v35, v49, &qword_27DA02F88, &qword_22D822B98);
      v37 = *v36;
      v52 = *(v8 + 48);
      v38 = v54;
      v39 = *(v54 + 20);
      sub_22D7640C4(v35, v12, &qword_27DA02F88, &qword_22D822B98);

      v40 = *(v8 + 48);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F60, &qword_22D822AB8);
      v42 = *(v41 - 8);
      v43 = v50;
      (*(v42 + 32))(&v50[v39], v12 + v40, v41);
      (*(v42 + 56))(&v43[v39], 0, 1, v41);
      *v43 = v37;
      (*(v42 + 8))(v36 + v52, v41);
      v44 = *(v51 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_stream);
      v45 = v56;
      sub_22D7AF608(v43, v56, type metadata accessor for CurrentLocation);
      (*(v3 + 56))(v45, 0, 1, v38);
      *(v45 + *(v55 + 20)) = 2;
      v46 = *(*v44 + 104);
      v47 = *(v44 + v46);
      swift_beginAccess();
      sub_22D81A198();
      os_unfair_lock_lock(v47 + 4);
      swift_endAccess();
      sub_22D798B48(v45);
      v48 = *(v44 + v46);
      swift_beginAccess();
      os_unfair_lock_unlock(v48 + 4);
      swift_endAccess();
      sub_22D7AF5A8(v45, type metadata accessor for CurrentLocationResult);
      sub_22D7AF5A8(v43, type metadata accessor for CurrentLocation);
      sub_22D764440(v53, &qword_27DA02F88, &qword_22D822B98);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22D7AD3E4(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F80, &qword_22D822B90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v35 - v6);
  v8 = sub_22D81B118();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_22D81B128();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = *(v2 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource__isLocationUpdating);
    v15 = *(v14 + 16);
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v15 + 4);
    swift_endAccess();
    swift_beginAccess();
    *(v14 + 24) = 1;
    v16 = *(v14 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v16 + 4);
    swift_endAccess();

    if (!(a2 >> 62))
    {
      v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_15:
      v32 = objc_opt_self();
      v33 = sub_22D81B2B8();
      [v32 logDebug_];

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
      (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
      sub_22D7ACC78(v7);
LABEL_16:
      sub_22D764440(v7, &qword_27DA02F80, &qword_22D822B90);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  v17 = sub_22D81B938();
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_4:
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v20 = MEMORY[0x2318D1F70](v19, a2);
LABEL_9:
    v21 = v20;
    if (([a1 _limitsPrecision] & 1) == 0)
    {
      [v21 horizontalAccuracy];
      if (v22 > 1500.0)
      {

        return;
      }
    }

    v23 = objc_opt_self();
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_22D81B838();

    v24 = [v21 description];
    v25 = sub_22D81B2C8();
    v27 = v26;

    MEMORY[0x2318D1A50](v25, v27);

    MEMORY[0x2318D1A50](41, 0xE100000000000000);
    v28 = sub_22D81B2B8();

    [v23 logDebug_];

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
    *v7 = v21;
    v30 = v21;
    [v30 horizontalAccuracy];
    v31 = [objc_opt_self() meters];
    sub_22D759CA0(0, &qword_27DA02EF0, 0x277CCAE20);
    sub_22D81A5C8();
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
    sub_22D7ACC78(v7);

    goto LABEL_16;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(a2 + 8 * v19 + 32);
    goto LABEL_9;
  }

  __break(1u);
}

id sub_22D7ADA4C()
{
  type metadata accessor for PlacemarkNameLookup();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  *(v0 + 112) = result;
  qword_27DA02E28 = v0;
  return result;
}

uint64_t sub_22D7ADAC8(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return sub_22D81A198();
}

uint64_t sub_22D7ADB28(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_22D7ADB48, v1, 0);
}

uint64_t sub_22D7ADB48()
{
  v1 = v0[19];
  v2 = *(v0[20] + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22D7ADC74;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02E40, &unk_22D822788);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22D7ADFD0;
  v0[13] = &block_descriptor_8;
  v0[14] = v3;
  [v2 reverseGeocodeLocation:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22D7ADC74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_22D7ADE8C;
  }

  else
  {
    v4 = sub_22D7ADD94;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22D7ADD94()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    result = sub_22D81B938();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v5 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x2318D1F70](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = sub_22D7AEBB8(v4);
  v7 = v6;

LABEL_9:
  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_22D7ADE8C()
{
  v1 = v0[21];
  swift_willThrow();
  v2 = objc_opt_self();
  sub_22D81B838();
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  MEMORY[0x2318D1A50](0xD00000000000001FLL, 0x800000022D82A5D0);
  v0[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
  sub_22D81B908();
  v3 = sub_22D81B2B8();

  [v2 logDebug_];

  v4 = v0[1];

  return v4(0, 0);
}

uint64_t sub_22D7ADFD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22D759CA0(0, &qword_27DA02F98, 0x277CBFC40);
    **(*(v4 + 64) + 40) = sub_22D81B438();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t PlacemarkNameLookup.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22D7AE12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F60, &qword_22D822AB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for LocationAccuracy(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FA8, &qword_22D822BB0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_22D7AF608(a1, &v20 - v13, type metadata accessor for LocationAccuracy);
  sub_22D7AF608(a2, &v14[v15], type metadata accessor for LocationAccuracy);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_22D7AF608(v14, v10, type metadata accessor for LocationAccuracy);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_22D759CA0(0, &qword_27DA02EF0, 0x277CCAE20);
      v17 = sub_22D81A5B8();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_22D7AF5A8(v14, type metadata accessor for LocationAccuracy);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_22D764440(v14, &qword_27DA02FA8, &qword_22D822BB0);
    v17 = 0;
    return v17 & 1;
  }

  sub_22D7AF5A8(v14, type metadata accessor for LocationAccuracy);
  v17 = 1;
  return v17 & 1;
}

BOOL _s18MobileTimerSupport21CurrentLocationResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02840, &qword_22D821A70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02FA0, &unk_22D821C00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_22D7640C4(a1, &v22 - v13, &qword_27DA02840, &qword_22D821A70);
  sub_22D7640C4(a2, &v14[v15], &qword_27DA02840, &qword_22D821A70);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_22D764440(v14, &qword_27DA02840, &qword_22D821A70);
LABEL_4:
      v17 = type metadata accessor for CurrentLocationResult(0);
      return *(a1 + *(v17 + 20)) == *(a2 + *(v17 + 20));
    }

    goto LABEL_7;
  }

  sub_22D7640C4(v14, v10, &qword_27DA02840, &qword_22D821A70);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_22D7AF5A8(v10, type metadata accessor for CurrentLocation);
LABEL_7:
    v19 = &qword_27DA02FA0;
    v20 = &unk_22D821C00;
LABEL_8:
    sub_22D764440(v14, v19, v20);
    return 0;
  }

  sub_22D7AF6A0(&v14[v15], v7, type metadata accessor for CurrentLocation);
  sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
  if ((sub_22D81B6F8() & 1) == 0)
  {
    sub_22D7AF5A8(v7, type metadata accessor for CurrentLocation);
    sub_22D7AF5A8(v10, type metadata accessor for CurrentLocation);
    v19 = &qword_27DA02840;
    v20 = &qword_22D821A70;
    goto LABEL_8;
  }

  v21 = sub_22D7AE12C(&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
  sub_22D7AF5A8(v7, type metadata accessor for CurrentLocation);
  sub_22D7AF5A8(v10, type metadata accessor for CurrentLocation);
  sub_22D764440(v14, &qword_27DA02840, &qword_22D821A70);
  if (v21)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_22D7AE7C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F80, &qword_22D822B90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_22D81B118();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_22D81B128();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = objc_opt_self();
    v17[2] = 0;
    v17[3] = 0xE000000000000000;
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD000000000000021, 0x800000022D82A7E0);
    v17[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    sub_22D81B908();
    MEMORY[0x2318D1A50](41, 0xE100000000000000);
    v15 = sub_22D81B2B8();

    [v14 logDebug_];

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02F88, &qword_22D822B98);
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    sub_22D7ACC78(v6);
    return sub_22D764440(v6, &qword_27DA02F80, &qword_22D822B90);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22D7AEA5C()
{
  v1 = sub_22D81B118();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupportP33_0CD95D0D9EE7821C8CFFD1B73E50A13E14LocationSource_locationQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_22D81B128();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = objc_opt_self();
    v8 = sub_22D81B2B8();
    [v7 logDebug_];

    sub_22D7AC33C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7AEBB8(void *a1)
{
  v2 = [a1 locality];
  if (!v2)
  {
    v2 = [a1 name];
    if (!v2)
    {
      v2 = [a1 subAdministrativeArea];
      if (!v2)
      {
        v2 = [a1 administrativeArea];
        if (!v2)
        {
          v2 = [a1 inlandWater];
          if (!v2)
          {
            v2 = [a1 country];
            if (!v2)
            {
              v2 = [a1 ocean];
              if (!v2)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  v3 = v2;
  v4 = sub_22D81B2C8();

  return v4;
}

unint64_t sub_22D7AECCC()
{
  result = qword_27DA02E50;
  if (!qword_27DA02E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02E50);
  }

  return result;
}

uint64_t sub_22D7AED48(uint64_t a1)
{
  result = sub_22D759CA0(319, &qword_27DA02E70, 0x277CE41F8);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocationAccuracy(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22D7AEE24(uint64_t a1)
{
  sub_22D7977EC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22D7AEF20(uint64_t a1)
{
  sub_22D7AEFF0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22D7AEFF0(uint64_t a1)
{
  if (!qword_27DA02EE8)
  {
    sub_22D759CA0(255, &qword_27DA02EF0, 0x277CCAE20);
    v1 = sub_22D81A608();
    if (!v2)
    {
      atomic_store(v1, &qword_27DA02EE8);
    }
  }
}

uint64_t dispatch thunk of PlacemarkNameLookup.name(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22D7AF1B4;

  return v6(a1);
}

uint64_t sub_22D7AF1B4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22D7AF2D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22D7AF320(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22D7AF4F8(uint64_t a1)
{
  sub_22D7AEFF0(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_22D7AF554()
{
  result = qword_27DA02F78;
  if (!qword_27DA02F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02F78);
  }

  return result;
}

uint64_t sub_22D7AF5A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D7AF608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22D7AF670(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t sub_22D7AF6A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_22D7AF708(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_22D7AF730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22D7AF778()
{
  result = qword_280CD2D90;
  if (!qword_280CD2D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA02FE0, &unk_22D81F120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2D90);
  }

  return result;
}

uint64_t sub_22D7AF84C(uint64_t a1)
{
  result = type metadata accessor for SolarEvent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22D7AF8EC(uint64_t a1)
{
  result = sub_22D81A8C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22D7AF980()
{
  v1 = type metadata accessor for SolarEvent(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  sub_22D81A8B8();
  v8 = type metadata accessor for SolarCycle(0);
  sub_22D7B0A04(v0 + v8[7], v3);
  v9 = sub_22D81A828();
  v10 = *(v5 + 8);
  v10(v3, v4);
  if (v9)
  {
    v10(v7, v4);
    return 0;
  }

  else
  {
    sub_22D7B0A04(v0 + v8[6], v3);
    v12 = sub_22D81A828();
    v10(v3, v4);
    if (v12)
    {
      v10(v7, v4);
      return 3;
    }

    else
    {
      sub_22D7B0A04(v0 + v8[5], v3);
      v13 = sub_22D81A828();
      v10(v7, v4);
      v10(v3, v4);
      if (v13)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }
}

uint64_t sub_22D7AFBB8()
{
  v1 = type metadata accessor for SolarEvent(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D7AF980();
  if (qword_27DA019F0 != -1)
  {
    swift_once();
  }

  sub_22D81A8B8();
  v9 = type metadata accessor for SolarCycle(0);
  sub_22D7B0A04(v0 + *(v9 + 24), v3);
  sub_22D81A838();
  v10 = *(v5 + 8);
  v10(v7, v4);
  result = (v10)(v3, v4);
  if (v8 > 1u)
  {
    v12 = 0.25;
    v13 = 180.0;
    if (v8 != 2)
    {
      v12 = 0.5;
      v13 = 270.0;
    }
  }

  else
  {
    if (v8)
    {
      return result;
    }

    v12 = 0.75;
    v13 = 360.0;
  }

  if (v12 > (v13 / 360.0))
  {
    __break(1u);
  }

  return result;
}

void sub_22D7AFE0C(double a1, double a2)
{
  GEOLocationCoordinate2DMake();
  v5 = v4;
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x277D0EB38]);
  v9 = sub_22D81A818();
  v10 = [v8 initWithLocation:v9 date:0 body:{v5, v7}];

  if (v10)
  {
    [v10 altitude];
  }

  else
  {
    v11 = objc_opt_self();
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD00000000000002DLL, 0x800000022D82AAE0);
    type metadata accessor for CLLocationCoordinate2D(0);
    v12 = sub_22D81B2E8();
    MEMORY[0x2318D1A50](v12);

    MEMORY[0x2318D1A50](0x203A65746164202CLL, 0xE800000000000000);
    sub_22D81A8C8();
    sub_22D7B05FC(&qword_27DA03020, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v13 = sub_22D81BAD8();
    MEMORY[0x2318D1A50](v13);

    v10 = sub_22D81B2B8();

    [v11 logError_];
  }
}

uint64_t sub_22D7AFFF8@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_22D81A7C8();
  v7 = v6;
  v8 = objc_opt_self();
  GEOLocationCoordinate2DMake();
  v10 = v9;
  v12 = v11;
  [v8 nextEventOfType:8 after:v7 forLocation:v9 altitudeInDegrees:v11 accuracy:{0.0, 60.0}];
  v13 = type metadata accessor for SolarCycle(0);
  v14 = a1 + v13[8];
  sub_22D81A7B8();
  v15 = *MEMORY[0x277D0E7C0];
  [v8 prevEventOfType:8 before:v7 forLocation:v10 altitudeInDegrees:v12 accuracy:{*MEMORY[0x277D0E7C0], 60.0}];
  sub_22D81A7B8();
  sub_22D81A7C8();
  v17 = [objc_allocWithZone(MEMORY[0x277D0ED50]) initWithLocation:v10 time:v12 altitudeInDegrees:v16 accuracy:{v15, 60.0}];
  [v17 nextEventOfType_];
  v18 = a1 + v13[5];
  sub_22D81A7B8();
  [v17 nextEventOfType_];
  v19 = a1 + v13[6];
  sub_22D81A7B8();
  sub_22D81A7C8();
  [v8 prevEventOfType:512 before:? forLocation:? altitudeInDegrees:? accuracy:?];
  v20 = a1 + v13[7];
  sub_22D81A7B8();

  sub_22D7AFE0C(a2, a3);
  LODWORD(v10) = v21;
  sub_22D7AFE0C(a2, a3);
  LODWORD(a3) = v22;
  result = type metadata accessor for SolarEvent(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  *(v18 + *(result + 20)) = 2;
  *(v18 + *(result + 24)) = LODWORD(v10);
  *(v19 + *(result + 20)) = 1;
  *(v19 + *(result + 24)) = 0;
  *(v20 + *(result + 20)) = 3;
  *(v20 + *(result + 24)) = LODWORD(a3);
  *(v14 + *(result + 20)) = 0;
  *(v14 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_22D7B0260()
{
  sub_22D81BBC8();
  sub_22D81A8C8();
  sub_22D7B05FC(&qword_27DA02330, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22D81B1D8();
  v1 = type metadata accessor for SolarEvent(0);
  MEMORY[0x2318D22E0](*(v0 + *(v1 + 20)));
  sub_22D81BBF8();
  return sub_22D81BC18();
}

unint64_t sub_22D7B0334()
{
  result = qword_27DA03008;
  if (!qword_27DA03008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03008);
  }

  return result;
}

uint64_t sub_22D7B043C(uint64_t a1, uint64_t a2)
{
  sub_22D81A8C8();
  sub_22D7B05FC(&qword_27DA02330, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v2 + *(a2 + 20)));
  return sub_22D81BBF8();
}

uint64_t sub_22D7B04F0(uint64_t a1, uint64_t a2)
{
  sub_22D81BBC8();
  sub_22D81A8C8();
  sub_22D7B05FC(&qword_27DA02330, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v2 + *(a2 + 20)));
  sub_22D81BBF8();
  return sub_22D81BC18();
}

uint64_t sub_22D7B05FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D7B0644(uint64_t a1)
{
  sub_22D81A8C8();
  sub_22D7B05FC(&qword_27DA02330, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22D81B1D8();
  v2 = type metadata accessor for SolarEvent(0);
  MEMORY[0x2318D22E0](*(v1 + *(v2 + 20)));
  sub_22D81BBF8();
  v3 = type metadata accessor for SolarCycle(0);
  v4 = v1 + v3[5];
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v4 + *(v2 + 20)));
  sub_22D81BBF8();
  v5 = v1 + v3[6];
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v5 + *(v2 + 20)));
  sub_22D81BBF8();
  v6 = v1 + v3[7];
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v6 + *(v2 + 20)));
  sub_22D81BBF8();
  v7 = v1 + v3[8];
  sub_22D81B1D8();
  MEMORY[0x2318D22E0](*(v7 + *(v2 + 20)));
  return sub_22D81BBF8();
}

uint64_t sub_22D7B0834()
{
  sub_22D81BBC8();
  sub_22D7B0644(v1);
  return sub_22D81BC18();
}

uint64_t sub_22D7B0878(uint64_t a1)
{
  sub_22D81BBC8();
  sub_22D7B0644(v2);
  return sub_22D81BC18();
}

BOOL sub_22D7B08B4(uint64_t a1, uint64_t a2)
{
  if (sub_22D81A868() & 1) != 0 && (v4 = type metadata accessor for SolarEvent(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)) && (v5 = v4, v6 = type metadata accessor for SolarCycle(0), v7 = v6[5], v8 = a1 + v7, v9 = a2 + v7, (sub_22D81A868()) && *(v8 + *(v5 + 20)) == *(v9 + *(v5 + 20)) && *(v8 + *(v5 + 24)) == *(v9 + *(v5 + 24)) && (v10 = v6[6], v11 = a1 + v10, v12 = a2 + v10, (sub_22D81A868()) && *(v11 + *(v5 + 20)) == *(v12 + *(v5 + 20)) && *(v11 + *(v5 + 24)) == *(v12 + *(v5 + 24)) && (v13 = v6[8], v14 = a1 + v13, v15 = a2 + v13, (sub_22D81A868()) && *(v14 + *(v5 + 20)) == *(v15 + *(v5 + 20)))
  {
    return *(v14 + *(v5 + 24)) == *(v15 + *(v5 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D7B0A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MTAppIntentsTab(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MTAppIntentsTab(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22D7B0BBC()
{
  result = qword_27DA03028;
  if (!qword_27DA03028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03028);
  }

  return result;
}

uint64_t sub_22D7B0C1C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03058, &qword_22D822ED8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_22D7640C4(a1, v5, &qword_27DA03058, &qword_22D822ED8);
    v14 = type metadata accessor for SystemOverrideClockData(0);
    if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
    {
      sub_22D764440(v5, &qword_27DA03058, &qword_22D822ED8);
      v15 = sub_22D81A8C8();
      (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    }

    else
    {
      v16 = sub_22D81A8C8();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v11, v5, v16);
      sub_22D7B5CFC(v5);
      (*(v17 + 56))(v11, 0, 1, v16);
    }

    sub_22D7B1598(v11);
    v18 = *(v13 + 32);
    v19 = *(v13 + 40);
    v20 = v19[2];
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v20 + 4);
    swift_endAccess();
    v21 = *(*v19 + 96);
    swift_beginAccess();
    sub_22D7640C4(v19 + v21, v9, &qword_27DA02000, &qword_22D81F160);
    v22 = v19[2];
    swift_beginAccess();
    os_unfair_lock_unlock(v22 + 4);
    swift_endAccess();

    v23 = *(*v18 + 104);
    v24 = *(v18 + v23);
    swift_beginAccess();
    os_unfair_lock_lock(v24 + 4);
    swift_endAccess();
    sub_22D79AF88(v9);
    v25 = *(v18 + v23);
    swift_beginAccess();
    os_unfair_lock_unlock(v25 + 4);
    swift_endAccess();
    sub_22D764440(v9, &qword_27DA02000, &qword_22D81F160);
  }

  return result;
}

uint64_t sub_22D7B0FD0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03060, &qword_22D822EE0);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03068, &qword_22D822EE8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C60, &qword_22D822540);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = *(v1 + 32);
  v19 = *(*v18 + 104);
  v20 = *(v18 + v19);
  swift_beginAccess();
  os_unfair_lock_lock(v20 + 4);
  swift_endAccess();
  v21 = *(*v18 + 120);
  v22 = *(v18 + v21);
  if ((v22 & 1) == 0)
  {
    *(v18 + v21) = 1;
  }

  v23 = v19;
  v24 = *(v18 + v19);
  swift_beginAccess();
  os_unfair_lock_unlock(v24 + 4);
  swift_endAccess();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v26 = *(*(v25 - 8) + 56);
  v48 = v25;
  v26(v17, 1, 1);
  if ((v22 & 1) == 0)
  {
    v27 = *(v1 + 40);
    v28 = v27[2];
    swift_beginAccess();
    sub_22D81A198();
    os_unfair_lock_lock(v28 + 4);
    swift_endAccess();
    v29 = *(*v27 + 96);
    swift_beginAccess();
    sub_22D7640C4(v27 + v29, v15, &qword_27DA02000, &qword_22D81F160);
    v30 = v27[2];
    swift_beginAccess();
    os_unfair_lock_unlock(v30 + 4);
    swift_endAccess();

    (v26)(v15, 0, 1, v48);
    sub_22D79DCA4(v15, v17, &qword_27DA02C60, &qword_22D822540);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02C68, &qword_22D822548);
  v32 = *(v31 - 8);
  v33 = v32;
  v42 = *(v32 + 56);
  v43 = v32 + 56;
  v42(v11, 1, 1, v31);
  v34 = *(v18 + v23);
  swift_beginAccess();
  os_unfair_lock_lock(v34 + 4);
  v35 = swift_endAccess();
  MEMORY[0x28223BE20](v35);
  *(&v39 - 2) = v18;
  *(&v39 - 1) = v17;
  v40 = v17;
  (*(v45 + 104))(v44, *MEMORY[0x277D85778], v46);
  sub_22D81B588();
  sub_22D764440(v11, &qword_27DA03068, &qword_22D822EE8);
  v42(v9, 0, 1, v31);
  sub_22D7B5C8C(v9, v11);
  v36 = *(v18 + v23);
  swift_beginAccess();
  os_unfair_lock_unlock(v36 + 4);
  swift_endAccess();
  v37 = v47;
  sub_22D7640C4(v11, v47, &qword_27DA03068, &qword_22D822EE8);
  result = (*(v33 + 48))(v37, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22D764440(v11, &qword_27DA03068, &qword_22D822EE8);
    (*(v33 + 32))(v41, v37, v31);
    return sub_22D764440(v40, &qword_27DA02C60, &qword_22D822540);
  }

  return result;
}

uint64_t sub_22D7B1598(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(v1 + 40);
  sub_22D7640C4(a1, &v14 - v7, &qword_27DA02000, &qword_22D81F160);
  v10 = v9[2];
  swift_beginAccess();
  sub_22D81A198();
  os_unfair_lock_lock(v10 + 4);
  swift_endAccess();
  sub_22D7640C4(v8, v6, &qword_27DA02000, &qword_22D81F160);
  v11 = *(*v9 + 96);
  swift_beginAccess();
  sub_22D79DCA4(v6, v9 + v11, &qword_27DA02000, &qword_22D81F160);
  swift_endAccess();
  v12 = v9[2];
  swift_beginAccess();
  os_unfair_lock_unlock(v12 + 4);
  swift_endAccess();
  sub_22D764440(a1, &qword_27DA02000, &qword_22D81F160);
  sub_22D764440(v8, &qword_27DA02000, &qword_22D81F160);
}

uint64_t sub_22D7B1740()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22D7B17C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, unsigned int (*a6)(char *, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v157 = a6;
  v154 = a5;
  v166 = a4;
  v158 = a3;
  v170 = a2;
  v160 = a1;
  v155 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v149 = &v136 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03040, &qword_22D822EC8);
  MEMORY[0x28223BE20](v11 - 8);
  v159 = &v136 - v12;
  v153 = sub_22D81A708();
  v152 = *(v153 - 8);
  v13 = MEMORY[0x28223BE20](v153);
  v151 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v164 = &v136 - v16;
  MEMORY[0x28223BE20](v15);
  v167 = &v136 - v17;
  v168 = sub_22D81AAB8();
  v172 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v147 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_22D81A968();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  *&v144 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D81AA48();
  v162 = *(v20 - 8);
  v163 = v20;
  MEMORY[0x28223BE20](v20);
  v173 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22D81A8C8();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v150 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v169 = &v136 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v142 = &v136 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v138 = &v136 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v139 = &v136 - v33;
  MEMORY[0x28223BE20](v32);
  v171 = &v136 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v148 = &v136 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v161 = &v136 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v143 = &v136 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v141 = &v136 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v136 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v136 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v136 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v136 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v136 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = &v136 - v60;
  MEMORY[0x28223BE20](v59);
  v63 = &v136 - v62;
  sub_22D7B2E3C(v154, v157, a7, &v136 - v62);
  sub_22D7B3B10(v158, v166, a7, v61);
  v166 = v58;
  v64 = v160;
  v160 = a7;
  sub_22D7B3B10(v64, v170, a7, v58);
  v170 = v23;
  v67 = *(v23 + 48);
  v65 = v23 + 48;
  v66 = v67;
  v165 = v63;
  if (v67(v63, 1, v22) == 1 && v66(v61, 1, v22) == 1 && v66(v166, 1, v22) == 1)
  {
    v68 = objc_opt_self();
    v69 = sub_22D81B2B8();
    [v68 logInfo_];

    sub_22D764440(v165, &qword_27DA02000, &qword_22D81F160);
    v70 = 1;
    v71 = v155;
    v72 = v170;
    goto LABEL_29;
  }

  sub_22D7640C4(v61, v55, &qword_27DA02000, &qword_22D81F160);
  v73 = v66(v55, 1, v22);
  v157 = v66;
  v158 = v65;
  v156 = v61;
  if (v73 == 1)
  {
    sub_22D764440(v55, &qword_27DA02000, &qword_22D81F160);
    v74 = v143;
    v75 = v165;
LABEL_12:
    sub_22D7640C4(v61, v46, &qword_27DA02000, &qword_22D81F160);
    v84 = v66(v46, 1, v22);
    v85 = v142;
    if (v84 == 1)
    {
      sub_22D7640C4(v166, v49, &qword_27DA02000, &qword_22D81F160);
      if (v66(v46, 1, v22) != 1)
      {
        sub_22D764440(v46, &qword_27DA02000, &qword_22D81F160);
      }
    }

    else
    {
      v86 = v170;
      (*(v170 + 32))(v49, v46, v22);
      (*(v86 + 56))(v49, 0, 1, v22);
    }

    v87 = v141;
    sub_22D7640C4(v49, v141, &qword_27DA02000, &qword_22D81F160);
    if (v66(v87, 1, v22) == 1)
    {
      sub_22D81A888();
      sub_22D764440(v49, &qword_27DA02000, &qword_22D81F160);
      v88 = v66(v87, 1, v22);
      v89 = v170;
      if (v88 != 1)
      {
        sub_22D764440(v87, &qword_27DA02000, &qword_22D81F160);
      }
    }

    else
    {
      sub_22D764440(v49, &qword_27DA02000, &qword_22D81F160);
      v89 = v170;
      (*(v170 + 32))(v85, v87, v22);
    }

    v90 = *(v89 + 32);
    v90(v171, v85, v22);
    v91 = v169;
    goto LABEL_21;
  }

  v154 = v49;
  v76 = v66;
  v77 = v170;
  v78 = *(v170 + 32);
  v79 = v139;
  v78(v139, v55, v22);
  sub_22D7640C4(v166, v52, &qword_27DA02000, &qword_22D81F160);
  if (v76(v52, 1, v22) == 1)
  {
    (*(v77 + 8))(v79, v22);
    sub_22D764440(v52, &qword_27DA02000, &qword_22D81F160);
    v61 = v156;
    v66 = v157;
    v74 = v143;
LABEL_11:
    v75 = v165;
    v49 = v154;
    goto LABEL_12;
  }

  v80 = v138;
  v137 = v78;
  v78(v138, v52, v22);
  sub_22D7B5C1C(&qword_27DA02340, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v81 = sub_22D81B1F8();
  v74 = v143;
  v82 = v79;
  if (v81)
  {
    v83 = *(v170 + 8);
    v83(v80, v22);
    v83(v79, v22);
    v61 = v156;
    v66 = v157;
    goto LABEL_11;
  }

  v129 = v80;
  v130 = v170;
  (*(v170 + 16))(v171, v82, v22);
  v131 = objc_opt_self();
  v174 = 0;
  v175 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD000000000000073, 0x800000022D82ACD0);
  sub_22D7B5C1C(&qword_27DA03020, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v132 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v132);

  MEMORY[0x2318D1A50](0xD000000000000010, 0x800000022D82AD50);
  v133 = sub_22D81BAD8();
  MEMORY[0x2318D1A50](v133);

  MEMORY[0x2318D1A50](39, 0xE100000000000000);
  v134 = sub_22D81B2B8();

  [v131 logError_];

  v135 = *(v130 + 8);
  v135(v129, v22);
  v135(v82, v22);
  v91 = v169;
  v66 = v157;
  v75 = v165;
  v90 = v137;
LABEL_21:
  sub_22D7640C4(v75, v74, &qword_27DA02000, &qword_22D81F160);
  v92 = v66(v74, 1, v22);
  v140 = v22;
  if (v92 == 1)
  {
    sub_22D81A888();
    if (v66(v74, 1, v22) != 1)
    {
      sub_22D764440(v74, &qword_27DA02000, &qword_22D81F160);
    }
  }

  else
  {
    v90(v91, v74, v22);
  }

  v93 = v145;
  v94 = v144;
  v95 = v146;
  (*(v145 + 104))(v144, *MEMORY[0x277CC9830], v146);
  sub_22D81A978();
  (*(v93 + 8))(v94, v95);
  v96 = *(v172 + 16);
  v146 = v172 + 16;
  v154 = v96;
  (v96)(v147, v160, v168);
  sub_22D81AA28();
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03048, &qword_22D822ED0);
  v97 = sub_22D81AA38();
  v98 = *(v97 - 8);
  v99 = *(v98 + 72);
  v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v101 = 2 * v99;
  v145 = 3 * v99;
  v102 = v99;
  v143 = v99;
  v103 = swift_allocObject();
  v144 = xmmword_22D81E100;
  *(v103 + 16) = xmmword_22D81E100;
  v104 = *(v98 + 104);
  v104(v103 + v100, *MEMORY[0x277CC9988], v97);
  v104(&v102[v103 + v100], *MEMORY[0x277CC9998], v97);
  v104(v103 + v100 + v101, *MEMORY[0x277CC9968], v97);
  sub_22D7DF8A4(v103);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22D81A9B8();

  v105 = swift_allocObject();
  *(v105 + 16) = v144;
  v104(v105 + v100, *MEMORY[0x277CC9980], v97);
  v104(&v143[v105 + v100], *MEMORY[0x277CC99A0], v97);
  v104(v105 + v100 + v101, *MEMORY[0x277CC99A8], v97);
  sub_22D7DF8A4(v105);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22D81A9B8();

  (*(v162 + 56))(v159, 1, 1, v163);
  v106 = *(v172 + 56);
  v172 += 56;
  v147 = v106;
  v107 = v149;
  (v106)(v149, 1, 1, v168);
  v145 = sub_22D81A678();
  LODWORD(v143) = v108;
  *&v144 = sub_22D81A688();
  LODWORD(v142) = v109;
  sub_22D81A638();
  sub_22D81A658();
  sub_22D81A6A8();
  sub_22D81A6C8();
  v110 = v151;
  sub_22D81A6E8();
  v111 = v168;
  (v154)(v107, v160, v168);
  (v147)(v107, 0, 1, v111);
  sub_22D81A6F8();
  v112 = v161;
  sub_22D81AA18();
  v113 = v112;
  v114 = v148;
  sub_22D7640C4(v113, v148, &qword_27DA02000, &qword_22D81F160);
  v22 = v140;
  if (v157(v114, 1, v140) == 1)
  {
    sub_22D764440(v114, &qword_27DA02000, &qword_22D81F160);
    v115 = objc_opt_self();
    v174 = 0;
    v175 = 0xE000000000000000;
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD00000000000004BLL, 0x800000022D82AC60);
    sub_22D7B5C1C(&qword_27DA03050, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v116 = v153;
    v117 = sub_22D81BAD8();
    MEMORY[0x2318D1A50](v117);

    MEMORY[0x2318D1A50](0x696D2C72756F680ALL, 0xED00003D6574756ELL);
    v118 = v164;
    v119 = sub_22D81BAD8();
    MEMORY[0x2318D1A50](v119);

    MEMORY[0x2318D1A50](39, 0xE100000000000000);
    v120 = sub_22D81B2B8();

    [v115 logError_];

    v72 = v170;
    v121 = v150;
    (*(v170 + 16))(v150, v171, v22);
  }

  else
  {
    v72 = v170;
    v121 = v150;
    (*(v170 + 32))(v150, v114, v22);
    v116 = v153;
    v118 = v164;
  }

  v122 = objc_opt_self();
  v174 = 0;
  v175 = 0xE000000000000000;
  sub_22D81B838();

  v174 = 0xD00000000000001ELL;
  v175 = 0x800000022D82ACB0;
  sub_22D7B5C1C(&qword_27DA03020, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v123 = sub_22D81BAD8();
  v124 = v121;
  MEMORY[0x2318D1A50](v123);

  v125 = sub_22D81B2B8();

  [v122 logInfo_];

  sub_22D764440(v161, &qword_27DA02000, &qword_22D81F160);
  v126 = *(v152 + 8);
  v126(v110, v116);
  v126(v118, v116);
  v126(v167, v116);
  (*(v162 + 8))(v173, v163);
  v127 = *(v72 + 8);
  v127(v169, v22);
  v127(v171, v22);
  sub_22D764440(v165, &qword_27DA02000, &qword_22D81F160);
  v71 = v155;
  (*(v72 + 32))(v155, v124, v22);
  v70 = 0;
  v61 = v156;
LABEL_29:
  (*(v72 + 56))(v71, v70, 1, v22);
  sub_22D764440(v166, &qword_27DA02000, &qword_22D81F160);
  return sub_22D764440(v61, &qword_27DA02000, &qword_22D81F160);
}

unint64_t sub_22D7B2E3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v8 - 8);
  v107 = &v91 - v9;
  v10 = sub_22D81AAB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D81A968();
  v105 = *(v14 - 8);
  v106 = v14;
  MEMORY[0x28223BE20](v14);
  v104 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D81AA48();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  MEMORY[0x28223BE20](v20 - 8);
  v103 = &v91 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03040, &qword_22D822EC8);
  MEMORY[0x28223BE20](v22 - 8);
  v102 = &v91 - v23;
  v24 = sub_22D81A708();
  v25 = MEMORY[0x28223BE20](v24);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v91 = v13;
    v92 = v11;
    v93 = v10;
    v94 = a3;
    v95 = v28;
    v96 = v26;
    v97 = v25;
    v98 = v19;
    v99 = v17;
    v100 = a4;
    v101 = v16;
    v112 = a1;
    v113 = a2;
    v110 = 47;
    v111 = 0xE100000000000000;
    sub_22D77F62C();
    result = sub_22D81B738();
    v30 = result;
    v31 = *(result + 16);
    if (!v31)
    {
      v33 = MEMORY[0x277D84F90];
      goto LABEL_84;
    }

    v32 = 0;
    v109 = &v112 + 1;
    v33 = MEMORY[0x277D84F90];
    while (1)
    {
      v108 = v33;
      while (1)
      {
        if (v32 >= *(v30 + 16))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          return result;
        }

        v34 = (v30 + 32 + 16 * v32);
        v36 = *v34;
        v35 = v34[1];
        ++v32;
        v37 = HIBYTE(v35) & 0xF;
        v38 = v36 & 0xFFFFFFFFFFFFLL;
        if ((v35 & 0x2000000000000000) != 0)
        {
          v39 = HIBYTE(v35) & 0xF;
        }

        else
        {
          v39 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (!v39)
        {
          sub_22D81A398();
          goto LABEL_68;
        }

        if ((v35 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v35 & 0x2000000000000000) != 0)
        {
          v112 = v36;
          v113 = v35 & 0xFFFFFFFFFFFFFFLL;
          if (v36 == 43)
          {
            if (!v37)
            {
              goto LABEL_91;
            }

            if (--v37)
            {
              v41 = 0;
              v51 = v109;
              while (1)
              {
                v52 = *v51 - 48;
                if (v52 > 9)
                {
                  break;
                }

                v53 = 10 * v41;
                if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                {
                  break;
                }

                v41 = v53 + v52;
                if (__OFADD__(v53, v52))
                {
                  break;
                }

                ++v51;
                if (!--v37)
                {
                  goto LABEL_67;
                }
              }
            }
          }

          else if (v36 == 45)
          {
            if (!v37)
            {
              goto LABEL_93;
            }

            if (--v37)
            {
              v41 = 0;
              v45 = v109;
              while (1)
              {
                v46 = *v45 - 48;
                if (v46 > 9)
                {
                  break;
                }

                v47 = 10 * v41;
                if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                {
                  break;
                }

                v41 = v47 - v46;
                if (__OFSUB__(v47, v46))
                {
                  break;
                }

                ++v45;
                if (!--v37)
                {
                  goto LABEL_67;
                }
              }
            }
          }

          else if (v37)
          {
            v41 = 0;
            v56 = &v112;
            while (1)
            {
              v57 = *v56 - 48;
              if (v57 > 9)
              {
                break;
              }

              v58 = 10 * v41;
              if ((v41 * 10) >> 64 != (10 * v41) >> 63)
              {
                break;
              }

              v41 = v58 + v57;
              if (__OFADD__(v58, v57))
              {
                break;
              }

              v56 = (v56 + 1);
              if (!--v37)
              {
                goto LABEL_67;
              }
            }
          }
        }

        else
        {
          if ((v36 & 0x1000000000000000) != 0)
          {
            result = (v35 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = sub_22D81B878();
          }

          v40 = *result;
          if (v40 == 43)
          {
            if (v38 < 1)
            {
              goto LABEL_90;
            }

            v37 = v38 - 1;
            if (v38 != 1)
            {
              v41 = 0;
              if (!result)
              {
                goto LABEL_58;
              }

              v48 = (result + 1);
              while (1)
              {
                v49 = *v48 - 48;
                if (v49 > 9)
                {
                  break;
                }

                v50 = 10 * v41;
                if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                {
                  break;
                }

                v41 = v50 + v49;
                if (__OFADD__(v50, v49))
                {
                  break;
                }

                ++v48;
                if (!--v37)
                {
                  goto LABEL_67;
                }
              }
            }
          }

          else if (v40 == 45)
          {
            if (v38 < 1)
            {
              goto LABEL_92;
            }

            v37 = v38 - 1;
            if (v38 != 1)
            {
              v41 = 0;
              if (!result)
              {
                goto LABEL_58;
              }

              v42 = (result + 1);
              while (1)
              {
                v43 = *v42 - 48;
                if (v43 > 9)
                {
                  break;
                }

                v44 = 10 * v41;
                if ((v41 * 10) >> 64 != (10 * v41) >> 63)
                {
                  break;
                }

                v41 = v44 - v43;
                if (__OFSUB__(v44, v43))
                {
                  break;
                }

                ++v42;
                if (!--v37)
                {
                  goto LABEL_67;
                }
              }
            }
          }

          else if (v38)
          {
            v41 = 0;
            if (!result)
            {
LABEL_58:
              LOBYTE(v37) = 0;
              goto LABEL_67;
            }

            while (1)
            {
              v54 = *result - 48;
              if (v54 > 9)
              {
                break;
              }

              v55 = 10 * v41;
              if ((v41 * 10) >> 64 != (10 * v41) >> 63)
              {
                break;
              }

              v41 = v55 + v54;
              if (__OFADD__(v55, v54))
              {
                break;
              }

              ++result;
              if (!--v38)
              {
                goto LABEL_58;
              }
            }
          }
        }

        v41 = 0;
        LOBYTE(v37) = 1;
LABEL_67:
        LOBYTE(v110) = v37;
        v59 = v37;
        sub_22D81A398();
        if ((v59 & 1) == 0)
        {
          goto LABEL_74;
        }

LABEL_68:
        v60 = objc_opt_self();
        v112 = 0;
        v113 = 0xE000000000000000;
        sub_22D81B838();

        v112 = 0xD000000000000012;
        v113 = 0x800000022D82AD70;
        MEMORY[0x2318D1A50](v36, v35);
        MEMORY[0x2318D1A50](0x746E69206F742027, 0xE800000000000000);
        v61 = sub_22D81B2B8();

        [v60 logError_];

        if (v32 == v31)
        {
          v33 = v108;
          goto LABEL_84;
        }
      }

      sub_22D81A398();
      v62 = sub_22D7B521C(v36, v35, 10);
      if (v63)
      {
        goto LABEL_68;
      }

      v41 = v62;
LABEL_74:

      v33 = v108;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22D7ED368(0, *(v33 + 16) + 1, 1, v33);
        v33 = result;
      }

      v65 = *(v33 + 16);
      v64 = *(v33 + 24);
      if (v65 >= v64 >> 1)
      {
        result = sub_22D7ED368((v64 > 1), v65 + 1, 1, v33);
        v33 = result;
      }

      *(v33 + 16) = v65 + 1;
      *(v33 + 8 * v65 + 32) = v41;
      if (v32 == v31)
      {
LABEL_84:
        if (*(v33 + 16) == 3)
        {

          v68 = v99;
          (*(v99 + 56))(v102, 1, 1, v101);
          v69 = v92;
          v70 = v93;
          (*(v92 + 56))(v103, 1, 1, v93);
          v71 = v95;
          sub_22D81A6E8();
          v73 = v104;
          v72 = v105;
          v74 = v106;
          (*(v105 + 104))(v104, *MEMORY[0x277CC9830], v106);
          v75 = v98;
          sub_22D81A978();
          (*(v72 + 8))(v73, v74);
          (*(v69 + 16))(v91, v94, v70);
          sub_22D81AA28();
          v76 = v107;
          sub_22D81AA18();
          v77 = sub_22D81A8C8();
          v78 = *(v77 - 8);
          if ((*(v78 + 48))(v76, 1, v77) == 1)
          {
            sub_22D764440(v76, &qword_27DA02000, &qword_22D81F160);
            v79 = objc_opt_self();
            v112 = 0;
            v113 = 0xE000000000000000;
            sub_22D81B838();
            MEMORY[0x2318D1A50](0xD00000000000003ALL, 0x800000022D82ADE0);
            v80 = MEMORY[0x2318D1B50](v30, MEMORY[0x277D837D0]);
            v82 = v81;

            MEMORY[0x2318D1A50](v80, v82);

            MEMORY[0x2318D1A50](39, 0xE100000000000000);
            v83 = sub_22D81B2B8();

            [v79 logError_];

            (*(v68 + 8))(v75, v101);
            (*(v96 + 8))(v71, v97);
            return (*(v78 + 56))(v100, 1, 1, v77);
          }

          else
          {

            (*(v68 + 8))(v75, v101);
            (*(v96 + 8))(v71, v97);
            v90 = v100;
            (*(v78 + 32))(v100, v76, v77);
            return (*(v78 + 56))(v90, 0, 1, v77);
          }
        }

        else
        {

          v84 = objc_opt_self();
          v112 = 0;
          v113 = 0xE000000000000000;
          sub_22D81B838();

          v112 = 0xD000000000000021;
          v113 = 0x800000022D82ADB0;
          v85 = MEMORY[0x2318D1B50](v30, MEMORY[0x277D837D0]);
          v87 = v86;

          MEMORY[0x2318D1A50](v85, v87);

          MEMORY[0x2318D1A50](39, 0xE100000000000000);
          v88 = sub_22D81B2B8();

          [v84 logError_];

          v89 = sub_22D81A8C8();
          return (*(*(v89 - 8) + 56))(v100, 1, 1, v89);
        }
      }
    }
  }

  v66 = sub_22D81A8C8();
  v67 = *(*(v66 - 8) + 56);

  return v67(a4, 1, 1, v66);
}

uint64_t sub_22D7B3B10@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  if (a2)
  {
    v12 = *aHMmA;
    v11 = unk_2840D4F40;
    sub_22D81A398();
    v29 = a1;
    sub_22D7B3EDC(a1, a2, v12, v11, a3, v10);

    v13 = sub_22D81A8C8();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (v15(v10, 1, v13) == 1 && (sub_22D764440(v10, &qword_27DA02000, &qword_22D81F160), v16 = a4, v18 = *aHhMm, v17 = unk_2840D4F50, sub_22D81A398(), v19 = v18, a4 = v16, sub_22D7B3EDC(v29, a2, v19, v17, a3, v10), , v15(v10, 1, v13) == 1) && (sub_22D764440(v10, &qword_27DA02000, &qword_22D81F160), v21 = aHhMmSs[0], v20 = aHhMmSs[1], sub_22D81A398(), v22 = v21, a4 = v16, sub_22D7B3EDC(v29, a2, v22, v20, a3, v10), , v15(v10, 1, v13) == 1))
    {
      sub_22D764440(v10, &qword_27DA02000, &qword_22D81F160);
      swift_arrayDestroy();
      v23 = objc_opt_self();
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_22D81B838();

      v30 = 0xD000000000000012;
      v31 = 0x800000022D82AD70;
      MEMORY[0x2318D1A50](v29, a2);
      MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82AD90);
      v24 = sub_22D81B2B8();

      [v23 logError_];

      return (*(v14 + 56))(v16, 1, 1, v13);
    }

    else
    {
      swift_arrayDestroy();
      (*(v14 + 32))(a4, v10, v13);
      return (*(v14 + 56))(a4, 0, 1, v13);
    }
  }

  else
  {
    v26 = sub_22D81A8C8();
    v27 = *(*(v26 - 8) + 56);

    return v27(a4, 1, 1, v26);
  }
}

uint64_t sub_22D7B3EDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a3;
  v67 = a4;
  v63 = a1;
  v64 = a2;
  v72 = a6;
  v7 = sub_22D81A968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81AA48();
  v73 = v11;
  v78 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D81A8C8();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v57 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  sub_22D81A888();
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v59 = *MEMORY[0x277CC9830];
  v77 = *(v8 + 104);
  v77(v10);
  sub_22D81A978();
  v75 = *(v8 + 8);
  v76 = v8 + 8;
  v75(v10, v7);
  v20 = sub_22D81A9E8();
  v21 = *(v78 + 8);
  v78 += 8;
  v74 = v21;
  v21(v13, v11);
  [v19 setCalendar_];

  v58 = a5;
  v22 = sub_22D81AA88();
  [v19 setTimeZone_];

  v23 = sub_22D81B2B8();
  [v19 setDateFormat_];

  v24 = sub_22D81A818();
  v68 = v19;
  v25 = [v19 stringFromDate_];

  v62 = sub_22D81B2C8();
  v61 = v26;

  v27 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v28 = v59;
  (v77)(v10, v59, v7);
  sub_22D81A978();
  v75(v10, v7);
  v29 = sub_22D81A9E8();
  v74(v13, v73);
  [v27 setCalendar_];

  v30 = sub_22D81AA88();
  [v27 setTimeZone_];

  v31 = sub_22D81B2B8();
  [v27 setDateFormat_];

  v69 = v18;
  v32 = sub_22D81A818();
  v65 = v27;
  v33 = [v27 stringFromDate_];

  v60 = sub_22D81B2C8();
  v35 = v34;

  v36 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  (v77)(v10, v28, v7);
  sub_22D81A978();
  v37 = v10;
  v38 = v63;
  v75(v37, v7);
  v39 = sub_22D81A9E8();
  v74(v13, v73);
  v40 = v64;
  [v36 setCalendar_];

  v41 = sub_22D81AA88();
  [v36 setTimeZone_];

  v81 = 0x2D4D4D2D79797979;
  v82 = 0xEB00000000206464;
  MEMORY[0x2318D1A50](v66, v67);
  MEMORY[0x2318D1A50](32, 0xE100000000000000);
  MEMORY[0x2318D1A50](8026746, 0xE300000000000000);
  v42 = sub_22D81B2B8();

  [v36 setDateFormat_];

  v81 = v38;
  v82 = v40;
  v79 = 58;
  v80 = 0xE100000000000000;
  sub_22D77F62C();
  if (*(sub_22D81B738() + 16))
  {
    sub_22D81A398();

    v43 = sub_22D81B338();

    v81 = 0;
    v82 = 0xE000000000000000;
    if (v43 == 1)
    {
      v44 = 48;
    }

    else
    {
      v44 = 0;
    }

    if (v43 == 1)
    {
      v45 = 0xE100000000000000;
    }

    else
    {
      v45 = 0xE000000000000000;
    }
  }

  else
  {

    v44 = 0;
    v45 = 0xE000000000000000;
    v81 = 0;
    v82 = 0xE000000000000000;
  }

  MEMORY[0x2318D1A50](v44, v45);

  MEMORY[0x2318D1A50](v38, v40);
  v46 = v81;
  v47 = v82;
  v81 = v62;
  v82 = v61;
  MEMORY[0x2318D1A50](32, 0xE100000000000000);
  MEMORY[0x2318D1A50](v46, v47);

  MEMORY[0x2318D1A50](32, 0xE100000000000000);
  MEMORY[0x2318D1A50](v60, v35);

  v48 = sub_22D81B2B8();

  v49 = [v36 dateFromString_];

  if (v49)
  {
    v50 = v57;
    sub_22D81A878();

    v51 = v70;
    v52 = v71;
    (*(v70 + 8))(v69, v71);
    v53 = v72;
    (*(v51 + 32))(v72, v50, v52);
    v54 = 0;
  }

  else
  {
    v51 = v70;
    v52 = v71;
    (*(v70 + 8))(v69, v71);

    v54 = 1;
    v53 = v72;
  }

  return (*(v51 + 56))(v53, v54, 1, v52);
}

void sub_22D7B46DC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v3 = objc_opt_self();
    v4 = sub_22D81B2B8();
    [v3 logError_];
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    sub_22D81A198();

    sub_22D7B478C();
  }
}

uint64_t sub_22D7B478C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03058, &qword_22D822ED8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = aBlock - v2;
  v4 = v0[4];
  v5 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_22D7B5C64;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D7B4A20;
  aBlock[3] = &block_descriptor_9;
  v6 = _Block_copy(aBlock);

  [v4 observeDataWithBlock_];
  _Block_release(v6);
  v7 = [v4 data];
  sub_22D7B4A8C(v7, v3);
  v8 = v0[2];
  if (v8)
  {
    v9 = v0[3];
    sub_22D81A198();
    v8(v3);
    sub_22D744DA4(v8, v9);
  }

  return sub_22D764440(v3, &qword_27DA03058, &qword_22D822ED8);
}

uint64_t sub_22D7B4920(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03058, &qword_22D822ED8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_22D7B4A8C(a1, v5);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v7 + 24);
      sub_22D81A198();
      v8(v5);
      sub_22D744DA4(v8, v9);
    }

    return sub_22D764440(v5, &qword_27DA03058, &qword_22D822ED8);
  }

  return result;
}

void sub_22D7B4A20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_22D81A198();
  v4 = a2;
  v3(a2);
}

uint64_t sub_22D7B4A8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v53 - v5;
  v7 = sub_22D81A8C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SystemOverrideClockData(0);
  v62 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D81AAB8();
  v15 = MEMORY[0x28223BE20](v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v57 = v16;
    v58 = v15;
    v53 = v13;
    v54 = v10;
    v59 = v8;
    v60 = v7;
    v61 = a2;
    v19 = a1;
    v20 = [v19 customOverrides];
    v21 = [v20 shortTimeEntry];

    if (v21 && (v22 = [v21 isEnabled], v21, (v22 & 1) != 0) || (v23 = objc_msgSend(v19, sel_customOverrides), v24 = objc_msgSend(v23, sel_timeEntry), v23, v24) && (v25 = objc_msgSend(v24, sel_isEnabled), v24, (v25 & 1) != 0) || (v26 = objc_msgSend(v19, sel_customOverrides), v27 = objc_msgSend(v26, sel_dateEntry), v26, v27) && (v28 = objc_msgSend(v27, sel_isEnabled), v27, v28))
    {
      v29 = [v19 customOverrides];
      v30 = [v29 shortTimeEntry];

      if (v30)
      {
        v31 = [v30 stringValue];

        v56 = sub_22D81B2C8();
        v33 = v32;
      }

      else
      {
        v56 = 0;
        v33 = 0;
      }

      v55 = v11;
      v36 = [v19 customOverrides];
      v37 = [v36 timeEntry];

      if (v37)
      {
        v38 = [v37 stringValue];

        v39 = sub_22D81B2C8();
        v37 = v40;
      }

      else
      {
        v39 = 0;
      }

      v41 = [v19 customOverrides];
      v42 = [v41 dateEntry];

      if (v42)
      {
        v43 = [v42 0x278771F78];

        v44 = sub_22D81B2C8();
        v42 = v45;
      }

      else
      {
        v44 = 0;
      }

      v46 = v61;
      v47 = v55;
      sub_22D81AAA8();
      sub_22D7B17C0(v56, v33, v39, v37, v44, v42, v18, v6);

      (*(v57 + 8))(v18, v58);
      v49 = v59;
      v48 = v60;
      if ((*(v59 + 48))(v6, 1, v60) == 1)
      {
        sub_22D764440(v6, &qword_27DA02000, &qword_22D81F160);
        return (*(v62 + 56))(v46, 1, 1, v47);
      }

      else
      {
        v50 = *(v49 + 32);
        v51 = v54;
        v50(v54, v6, v48);
        v52 = v53;
        v50(v53, v51, v48);
        sub_22D7B51B8(v52, v46);
        return (*(v62 + 56))(v46, 0, 1, v47);
      }
    }

    a2 = v61;
  }

  v34 = *(v62 + 56);

  return v34(a2, 1, 1, v11);
}

uint64_t sub_22D7B5074()
{
  sub_22D744DA4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SystemOverrideClockData(uint64_t a1)
{
  result = qword_27DA03030;
  if (!qword_27DA03030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D7B514C(uint64_t a1)
{
  result = sub_22D81A8C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22D7B51B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemOverrideClockData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unsigned __int8 *sub_22D7B521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_22D81A398();
  result = sub_22D81B3A8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22D7B57A8(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22D81B878();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22D7B57A8(uint64_t a1, unint64_t a2)
{
  v2 = sub_22D81B3B8();
  v6 = sub_22D7B5828(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22D7B5828(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22D81B728();
    if (!v9 || (v10 = v9, v11 = sub_22D7D8050(v9, 0), v12 = sub_22D7B5980(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_22D81A398(), , v12 == v10))
    {
      v13 = sub_22D81B318();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22D81B318();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22D81B878();
LABEL_4:

  return sub_22D81B318();
}

unint64_t sub_22D7B5980(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22D7B5BA0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22D81B388();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22D81B878();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22D7B5BA0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22D81B368();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_22D7B5BA0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22D81B398();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2318D1A80](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22D7B5C1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t sub_22D7B5C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03068, &qword_22D822EE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D7B5CFC(uint64_t a1)
{
  v2 = type metadata accessor for SystemOverrideClockData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22D7B5D9C()
{
  result = qword_27DA03070;
  if (!qword_27DA03070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03070);
  }

  return result;
}

uint64_t sub_22D7B5DF0()
{
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D7B5EA8(uint64_t a1)
{
  sub_22D81B328();
}

uint64_t sub_22D7B5F4C(uint64_t a1)
{
  sub_22D81BBC8();
  sub_22D81B328();

  return sub_22D81BC18();
}

unint64_t sub_22D7B6000@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22D7B7D78(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22D7B6030(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6B636F6C63;
  v4 = 0xE900000000000068;
  v5 = 0x63746177706F7473;
  if (*v1 != 2)
  {
    v5 = 0x72656D6974;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D72616C61;
    v2 = 0xE500000000000000;
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

unint64_t sub_22D7B60A8()
{
  result = qword_27DA03078;
  if (!qword_27DA03078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03078);
  }

  return result;
}

unint64_t sub_22D7B6100()
{
  result = qword_27DA03080;
  if (!qword_27DA03080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03080);
  }

  return result;
}

unint64_t sub_22D7B6158()
{
  result = qword_27DA03088;
  if (!qword_27DA03088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03088);
  }

  return result;
}

unint64_t sub_22D7B61B0()
{
  result = qword_27DA03090;
  if (!qword_27DA03090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03090);
  }

  return result;
}

unint64_t sub_22D7B6204()
{
  result = qword_27DA03098;
  if (!qword_27DA03098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03098);
  }

  return result;
}

unint64_t sub_22D7B625C()
{
  result = qword_27DA030A0;
  if (!qword_27DA030A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030A0);
  }

  return result;
}

uint64_t sub_22D7B62B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_22D81A748();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81A958();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81A768();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22D81A498();
  __swift_allocate_value_buffer(v10, qword_27DA0D390);
  __swift_project_value_buffer(v10, qword_27DA0D390);
  sub_22D81B228();
  sub_22D81A948();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_22D81A778();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_22D81A488();
}

uint64_t sub_22D7B6598@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA01A08 != -1)
  {
    swift_once();
  }

  v2 = sub_22D81A498();
  v3 = __swift_project_value_buffer(v2, qword_27DA0D390);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_22D7B6690()
{
  result = qword_27DA030A8;
  if (!qword_27DA030A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030A8);
  }

  return result;
}

uint64_t sub_22D7B66E4(uint64_t a1)
{
  v2 = sub_22D7B6690();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_22D7B6734()
{
  result = qword_27DA030B0;
  if (!qword_27DA030B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030B0);
  }

  return result;
}

unint64_t sub_22D7B678C()
{
  result = qword_27DA030B8;
  if (!qword_27DA030B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030B8);
  }

  return result;
}

unint64_t sub_22D7B67E4()
{
  result = qword_27DA030C0;
  if (!qword_27DA030C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030C0);
  }

  return result;
}

uint64_t sub_22D7B683C(uint64_t a1)
{
  v2 = sub_22D7B625C();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_22D7B68E0()
{
  result = qword_27DA030D8;
  if (!qword_27DA030D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030D8);
  }

  return result;
}

unint64_t sub_22D7B6938()
{
  result = qword_27DA030E0;
  if (!qword_27DA030E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA030E0);
  }

  return result;
}

uint64_t sub_22D7B69D4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MTAppIntentsAppState();
  result = sub_22D81AD08();
  *a2 = result;
  return result;
}

uint64_t sub_22D7B6A10@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v16 = sub_22D81A768();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  sub_22D81B228();
  sub_22D81A948();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v11(v6, v10, v3);
  v12 = v17;
  sub_22D81A778();
  (*(v9 + 56))(v12, 0, 1, v16);
  v13 = v18;
  sub_22D81A2C8();
  v14 = sub_22D81A2B8();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_22D7B6D90()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D7B6F54(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03100, &qword_22D823330);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03108, &qword_22D823338);
  MEMORY[0x28223BE20](v3);
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03110, &qword_22D823368);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3B8();
}

uint64_t sub_22D7B70F8(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_22D81B4D8();
  v2[4] = sub_22D81B4C8();
  v5 = sub_22D81B498();

  return MEMORY[0x2822009F8](sub_22D7B7194, v5, v4);
}

uint64_t sub_22D7B7194()
{

  sub_22D81A0B8();
  sub_22D7B85F8(*(v0 + 40));
  sub_22D819FD8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7B7214@<X0>(uint64_t *a2@<X8>)
{
  result = sub_22D7B7834();
  *a2 = result;
  return result;
}

uint64_t sub_22D7B723C(uint64_t a1)
{
  v2 = sub_22D757BF8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D7B72C8(int a1)
{
  v33 = a1;
  v1 = sub_22D81A428();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v30 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v29 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v28 = v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v7 - 8);
  v26 = v25 - v8;
  v9 = sub_22D81A748();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_22D81A958();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_22D81A768();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v25[1] = v25 - v18;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA030F8, &qword_22D823328);
  sub_22D81B228();
  sub_22D81A948();
  v19 = *(v10 + 104);
  v19(v12, *MEMORY[0x277CC9110], v9);
  sub_22D81A778();
  (*(v16 + 56))(v26, 1, 1, v15);
  v35[0] = 4;
  sub_22D81B228();
  *v12 = type metadata accessor for MTAppIntentsManager();
  v19(v12, *MEMORY[0x277CC9120], v9);
  sub_22D81A948();
  sub_22D81A778();
  v20 = v28;
  sub_22D819F88();
  v21 = sub_22D819F78();
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 0, 1, v21);
  v22(v29, 1, 1, v21);
  (*(v31 + 104))(v30, *MEMORY[0x277CBA308], v32);
  sub_22D7B6690();
  v23 = sub_22D81A0F8();
  v34[0] = v33;
  sub_22D81A198();
  sub_22D81A0C8();

  return v23;
}

uint64_t sub_22D7B7834()
{
  v0 = sub_22D81A428();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0);
  v28 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v27 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v26 = v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v6 - 8);
  v24 = v23 - v7;
  v8 = sub_22D81A748();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_22D81A958();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_22D81A768();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v23[1] = v23 - v17;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA030F8, &qword_22D823328);
  sub_22D81B228();
  sub_22D81A948();
  v18 = *(v9 + 104);
  v18(v11, *MEMORY[0x277CC9110], v8);
  sub_22D81A778();
  (*(v15 + 56))(v24, 1, 1, v14);
  v31[0] = 4;
  sub_22D81B228();
  *v11 = type metadata accessor for MTAppIntentsManager();
  v18(v11, *MEMORY[0x277CC9120], v8);
  sub_22D81A948();
  sub_22D81A778();
  v19 = v26;
  sub_22D819F88();
  v20 = sub_22D819F78();
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 0, 1, v20);
  v21(v27, 1, 1, v20);
  (*(v29 + 104))(v28, *MEMORY[0x277CBA308], v30);
  sub_22D7B6690();
  return sub_22D81A0F8();
}

unint64_t sub_22D7B7D78(uint64_t a1, uint64_t a2)
{
  v2 = sub_22D81B998();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22D7B7DC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = v37 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = v37 - v3;
  v56 = sub_22D81A748();
  v4 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22D81A768();
  v13 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03118, &qword_22D823378);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03120, qword_22D823380);
  v53 = v14;
  v15 = *(v14 - 8);
  v47 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v42 = v17;
  *(v17 + 16) = xmmword_22D820D00;
  v40 = *(v14 + 48);
  *(v17 + v16) = 0;
  v18 = v17 + v16;
  sub_22D81B228();
  sub_22D81A948();
  v55 = *MEMORY[0x277CC9110];
  v46 = *(v4 + 104);
  v54 = v4 + 104;
  v44 = v6;
  v19 = v56;
  v46(v6);
  sub_22D81A778();
  v20 = *(v13 + 56);
  v45 = v13 + 56;
  v52 = v20;
  v21 = v51;
  v20(v51, 1, 1, v57);
  v22 = v41;
  sub_22D81A318();
  v49 = sub_22D81A328();
  v23 = *(v49 - 8);
  v48 = *(v23 + 56);
  v43 = v23 + 56;
  v48(v22, 0, 1, v49);
  v50 = v18;
  sub_22D81A338();
  v24 = v47;
  v25 = v53;
  v26 = *(v53 + 48);
  v39 = (v18 + v47);
  v40 = v26;
  *v39 = 1;
  v37[0] = v12;
  sub_22D81B228();
  v37[1] = v9;
  sub_22D81A948();
  v27 = v46;
  (v46)(v44, v55, v19);
  sub_22D81A778();
  v28 = v57;
  v52(v21, 1, 1, v57);
  sub_22D81A318();
  v48(v22, 0, 1, v49);
  sub_22D81A338();
  v40 = 2 * v24;
  v29 = *(v25 + 48);
  v38 = (v50 + 2 * v24);
  v39 = v29;
  *v38 = 2;
  sub_22D81B228();
  sub_22D81A948();
  v30 = v44;
  (v27)(v44, v55, v56);
  sub_22D81A778();
  v31 = v51;
  v52(v51, 1, 1, v28);
  sub_22D81A318();
  v32 = v48;
  v33 = v49;
  v48(v22, 0, 1, v49);
  sub_22D81A338();
  v34 = (v50 + v40 + v47);
  v47 = *(v53 + 48);
  *v34 = 3;
  sub_22D81B228();
  sub_22D81A948();
  (v46)(v30, v55, v56);
  sub_22D81A778();
  v52(v31, 1, 1, v57);
  sub_22D81A318();
  v32(v22, 0, 1, v33);
  sub_22D81A338();
  v35 = sub_22D818518(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v35;
}

void *sub_22D7B85F8(unsigned __int8 a1)
{
  v2 = objc_opt_self();
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD000000000000022, 0x800000022D82AED0);
  sub_22D81B908();
  v3 = sub_22D81B2B8();

  [v2 logInfo_];

  if (qword_280CD1F18 != -1)
  {
    swift_once();
  }

  return sub_22D7BCAD0(a1);
}

unint64_t sub_22D7B8718()
{
  result = qword_27DA03138;
  if (!qword_27DA03138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03138);
  }

  return result;
}

unint64_t sub_22D7B8770()
{
  result = qword_27DA03140;
  if (!qword_27DA03140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03140);
  }

  return result;
}

uint64_t sub_22D7B87FC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v16 = sub_22D81A768();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  sub_22D81B228();
  sub_22D81A948();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v11(v6, v10, v3);
  v12 = v17;
  sub_22D81A778();
  (*(v9 + 56))(v12, 0, 1, v16);
  v13 = v18;
  sub_22D81A2C8();
  v14 = sub_22D81A2B8();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_22D7B8B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03180, &qword_22D8251B0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7B8C5C, 0, 0);
}

uint64_t sub_22D7B8C5C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_22D81A0B8();
  v5 = [objc_opt_self() seconds];
  sub_22D81A5E8();

  v6 = *(v4 + 8);
  v6(v2, v3);
  sub_22D81A5D8();
  v8 = v7;
  v6(v1, v3);
  if (v8 >= 86400.0)
  {
    sub_22D7BA020();
    swift_allocError();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    v10 = *(v0 + 24);
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    v11 = swift_task_alloc();
    *(v0 + 80) = v11;
    *v11 = v0;
    v11[1] = sub_22D7B8E7C;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_22D7B8E7C()
{

  return MEMORY[0x2822009F8](sub_22D7B8F94, 0, 0);
}

uint64_t sub_22D7B8F94(uint64_t a1)
{
  sub_22D819FD8();

  v2 = *(v1 + 8);

  return v2();
}

void sub_22D7B900C(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D29700]) initWithState:3 duration:a1];
  v7 = [a4 latestDuration];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = a3;
    v9[4] = a4;
    v14[4] = sub_22D7BA080;
    v14[5] = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_22D78A760;
    v14[3] = &block_descriptor_10;
    v10 = _Block_copy(v14);
    v11 = v6;
    sub_22D81A198();
    v12 = a4;

    v13 = [v8 addCompletionBlock_];
    _Block_release(v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E60, &unk_22D81E9D0);
    sub_22D81B4B8();
  }

  else
  {
    __break(1u);
  }
}

void sub_22D7B9198(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v7 = a1;
    v8 = [v7 sound];
    [a3 setSound_];
  }

  else if (a2)
  {
    v10 = objc_opt_self();
    v11 = a2;
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD000000000000039, 0x800000022D82AF80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    sub_22D81B908();
    v12 = sub_22D81B2B8();

    [v10 logError_];
  }
}

uint64_t sub_22D7B9304()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D7B94C4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03190, &qword_22D823540);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03198, &qword_22D823548);
  MEMORY[0x28223BE20](v3);
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA031A0, &qword_22D823578);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3B8();
}

uint64_t sub_22D7B9670(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22D744B0C;

  return sub_22D7B8B80(a1, v5, v4);
}

uint64_t sub_22D7B971C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D7B99DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22D7B9748()
{
  result = qword_27DA03148;
  if (!qword_27DA03148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03148);
  }

  return result;
}

uint64_t sub_22D7B979C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = qword_27DA03128;
  sub_22D81A398();
  return v3;
}

void sub_22D7B97D4()
{
  sub_22D7B9FCC();

  JUMPOUT(0x2318D0580);
}

uint64_t sub_22D7B9820()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D7B99DC()
{
  v0 = sub_22D81A428();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0);
  v30 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03160, &unk_22D823510);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = v27 - v7;
  v8 = sub_22D81A748();
  v27[0] = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_22D81A958();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_22D81A768();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v27[1] = v27 - v17;
  v27[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03168, &qword_22D823520);
  sub_22D81B228();
  sub_22D81A948();
  v18 = *(v9 + 104);
  v18(v11, *MEMORY[0x277CC9110], v8);
  sub_22D81A778();
  (*(v15 + 56))(v33, 1, 1, v14);
  v19 = *MEMORY[0x277CB9EF8];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03170, &qword_22D823528);
  v21 = *(v20 - 8);
  v22 = v28;
  (*(v21 + 104))(v28, v19, v20);
  (*(v21 + 56))(v22, 0, 1, v20);
  sub_22D81B228();
  *v11 = type metadata accessor for MTAppIntentsManager();
  v18(v11, *MEMORY[0x277CC9120], v27[0]);
  sub_22D81A948();
  sub_22D81A778();
  v23 = v29;
  sub_22D819F88();
  v24 = sub_22D819F78();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  (*(v31 + 104))(v30, *MEMORY[0x277CBA308], v32);
  v25 = sub_22D81A118();
  [objc_allocWithZone(MEMORY[0x277D29740]) init];
  return v25;
}

unint64_t sub_22D7B9FCC()
{
  result = qword_27DA03178;
  if (!qword_27DA03178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03178);
  }

  return result;
}

unint64_t sub_22D7BA020()
{
  result = qword_27DA03188;
  if (!qword_27DA03188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03188);
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

unint64_t sub_22D7BA0B8()
{
  result = qword_27DA031A8;
  if (!qword_27DA031A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031A8);
  }

  return result;
}

unint64_t sub_22D7BA110()
{
  result = qword_27DA031B0;
  if (!qword_27DA031B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031B0);
  }

  return result;
}

unint64_t sub_22D7BA168()
{
  result = qword_27DA031B8;
  if (!qword_27DA031B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031B8);
  }

  return result;
}

unint64_t sub_22D7BA1C0()
{
  result = qword_27DA031C0;
  if (!qword_27DA031C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031C0);
  }

  return result;
}

unint64_t sub_22D7BA214()
{
  result = qword_27DA031C8;
  if (!qword_27DA031C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031C8);
  }

  return result;
}

uint64_t sub_22D7BA274@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v24 = sub_22D81B218();
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v21 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22D81B288();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v4 - 8);
  v25 = v19 - v5;
  v6 = sub_22D81A748();
  v20 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81A958();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_22D81A768();
  v22 = *(v12 - 8);
  v23 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22D81B228();
  sub_22D81A948();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v7 + 104);
  v19[1] = v7 + 104;
  v14(v9, v13, v6);
  sub_22D81A778();
  sub_22D81B278();
  sub_22D81B268();
  v15 = v21;
  v16 = v24;
  (*(v1 + 104))(v21, *MEMORY[0x277CC9BD8], v24);
  sub_22D81B238();
  (*(v1 + 8))(v15, v16);
  sub_22D81B268();
  sub_22D81B298();
  sub_22D81A948();
  v14(v9, v13, v20);
  v17 = v25;
  sub_22D81A778();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_22D81A488();
}

uint64_t sub_22D7BA6F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01D80, &qword_22D823370);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_22D81A768();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22D81B288();
  MEMORY[0x28223BE20](v8 - 8);
  sub_22D81B278();
  sub_22D81B268();
  sub_22D819FE8();
  sub_22D81B248();

  sub_22D81B268();
  sub_22D81A758();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_22D81A328();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_22D81A338();
}

unint64_t sub_22D7BA964()
{
  result = qword_27DA031D0;
  if (!qword_27DA031D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031D0);
  }

  return result;
}

unint64_t sub_22D7BA9B8()
{
  result = qword_27DA031D8;
  if (!qword_27DA031D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031D8);
  }

  return result;
}

unint64_t sub_22D7BAA10()
{
  result = qword_27DA031E0;
  if (!qword_27DA031E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031E0);
  }

  return result;
}

uint64_t sub_22D7BAA64@<X0>(void *a3@<X8>)
{
  v4 = v3[1];
  *a3 = *v3;
  a3[1] = v4;
  return sub_22D81A398();
}

unint64_t sub_22D7BAA78()
{
  result = qword_27DA031E8;
  if (!qword_27DA031E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA031F0, &qword_22D8237A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031E8);
  }

  return result;
}

uint64_t sub_22D7BAADC(uint64_t a1)
{
  v2 = sub_22D75AD48();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_22D7BAB2C()
{
  result = qword_27DA031F8;
  if (!qword_27DA031F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA031F8);
  }

  return result;
}

uint64_t sub_22D7BAB88(uint64_t a1)
{
  v2 = sub_22D7BAA10();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_22D7BABD8()
{
  result = qword_27DA03200;
  if (!qword_27DA03200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03200);
  }

  return result;
}

unint64_t sub_22D7BAC30()
{
  result = qword_27DA03208;
  if (!qword_27DA03208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03208);
  }

  return result;
}

id sub_22D7BAC84()
{
  result = [objc_opt_self() sharedManager];
  qword_27DA0D3A8 = result;
  return result;
}

uint64_t sub_22D7BACC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22D795494;

  return sub_22D7BB5A0(a1);
}