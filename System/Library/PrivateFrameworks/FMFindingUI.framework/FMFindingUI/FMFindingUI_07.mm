uint64_t sub_24A5A8D00(const char *a1, uint64_t (*a2)(void))
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C100);
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A503000, v4, v5, a1, v6, 2u);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  return a2();
}

void (*sub_24A5A8E68(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A5AB618;
}

char *FMItemR1ConnectionManager.init(findables:connectionContext:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_localizerSubscriptions) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27EF4E9C0 != -1)
  {
    swift_once();
  }

  v5 = qword_27EF5C210;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_proximityManager) = qword_27EF5C210;
  v22 = v4;
  v6 = v5;
  v7 = sub_24A509448(a1, &v22);
  v8 = qword_27EF4E998;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A62E314();
  sub_24A506EB8(v10, qword_27EF5C100);
  v11 = sub_24A62E2F4();
  v12 = sub_24A62EF64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;

    v16 = MEMORY[0x24C21A690](v15, MEMORY[0x277D837D0]);
    v18 = v17;

    v19 = sub_24A509BA8(v16, v18, &v21);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_24A503000, v11, v12, "FMItemR1ConnectionManager: initialized for items: %s", v13, 0xCu);
    sub_24A508C54(v14);
    MEMORY[0x24C21BBE0](v14, -1, -1);
    MEMORY[0x24C21BBE0](v13, -1, -1);
  }

  return v9;
}

double sub_24A5A9160()
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C100);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x24C21A690](*&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers], MEMORY[0x277D837D0]);
    v9 = sub_24A509BA8(v7, v8, v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A503000, v3, v4, "FMItemR1ConnectionManager: requesting connection for items: %s", v5, 0xCu);
    sub_24A508C54(v6);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_findables];
  v11 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v12 = *(v10 + 16);
  if (v12)
  {
    v19 = OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_proximityManager;
    v13 = v10 + 32;
    do
    {
      v14 = sub_24A508AE4(v13, v20);
      v15 = *&v2[v19];
      MEMORY[0x28223BE20](v14);
      type metadata accessor for FMR1ProximityManagerSubscription(0);
      v16 = v15;
      sub_24A62F024();

      v17 = sub_24A508C54(v20);
      MEMORY[0x24C21A660](v17);
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A62ED84();
      }

      sub_24A62EDA4();
      v13 += 40;
      --v12;
    }

    while (v12);
    v11 = v21;
  }

  *&v2[OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_localizerSubscriptions] = v11;

  return result;
}

void sub_24A5A9434()
{
  v38 = sub_24A62EA94();
  v1 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24A62EAD4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C100);
  v6 = v0;
  v7 = sub_24A62E2F4();
  v8 = sub_24A62EF64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    v11 = MEMORY[0x24C21A690](*&v6[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers], MEMORY[0x277D837D0]);
    v13 = sub_24A509BA8(v11, v12, aBlock);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24A503000, v7, v8, "FMItemR1ConnectionManager: requesting disconnection for items: %s", v9, 0xCu);
    sub_24A508C54(v10);
    MEMORY[0x24C21BBE0](v10, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  v14 = *&v6[OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_localizerSubscriptions];
  if (v14 >> 62)
  {
    v15 = sub_24A62F464();
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    v34 = v6;
    v30 = v14 & 0xC000000000000001;
    v31 = OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_proximityManager;
    v28 = (v1 + 8);
    v29 = v41;
    v27 = (v3 + 8);

    v16 = 0;
    v32 = v15;
    v33 = v14;
    do
    {
      if (v30)
      {
        v17 = MEMORY[0x24C21ACB0](v16, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      v19 = *&v34[v31];
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v18;
      v41[2] = sub_24A5763AC;
      v41[3] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v41[0] = sub_24A5A8458;
      v41[1] = &unk_285DA7808;
      v21 = _Block_copy(aBlock);
      v22 = v19;
      v23 = v18;
      v24 = v35;
      sub_24A62EAB4();
      v39 = MEMORY[0x277D84F90];
      sub_24A545F60();
      sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
      sub_24A529464();
      v25 = v37;
      v26 = v38;
      sub_24A62F254();
      MEMORY[0x24C21A950](0, v24, v25, v21);
      _Block_release(v21);

      (*v28)(v25, v26);
      (*v27)(v24, v36);

      v14 = v33;
    }

    while (v32 != v16);
  }
}

uint64_t sub_24A5A98E0()
{

  v1 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_delegate;

  return sub_24A52358C(v1);
}

void sub_24A5A99A4(unsigned __int8 a1)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C100);
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    *v6 = 136315138;
    v10 = 0xE500000000000000;
    v11 = 0x7964616572;
    v12 = 0xE500000000000000;
    v13 = 0x726F727265;
    if (a1 != 3)
    {
      v13 = 0x666F206574617473;
      v12 = 0xE900000000000066;
    }

    if (a1 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (a1)
    {
      v9 = 0x6461657220746F6ELL;
      v8 = 0xE900000000000079;
    }

    if (a1 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (a1 <= 1u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_24A509BA8(v14, v15, v23);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_24A503000, v4, v5, "FMItemR1ConnectionManager: item localizer: entered state: %s", v6, 0xCu);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  if (a1)
  {
    v17 = v1 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v1, a1 == 2, 0, ObjectType, v18);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_24A62E2F4();
    v20 = sub_24A62EF64();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A503000, oslog, v20, "FMItemR1ConnectionManager: ignoring unknown state, waiting for a decision to be made before forwarding.", v21, 2u);
      MEMORY[0x24C21BBE0](v21, -1, -1);
    }
  }
}

uint64_t sub_24A5A9CA0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI25FMItemR1ConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, 0, a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24A5A9D3C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_24A5A9D9C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24A5A9DE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24A5A9F04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A5A9F6C(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A5AA00C;
}

char *FMItemNIConnectionManager.init(findables:findingType:arSession:)(uint64_t a1, __int16 *a2, void *a3)
{
  v6 = *a2;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions) = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession) = 0;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27EF4E9C8 != -1)
  {
    swift_once();
  }

  v8 = qword_27EF5C218;
  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_nearbyInteractionManager) = qword_27EF5C218;
  swift_beginAccess();
  v9 = *(v3 + v7);
  *(v3 + v7) = a3;
  v10 = v8;
  v11 = a3;

  *(v3 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_findingType) = v6;
  v12 = (v6 >> 13) & 3;
  if (v12)
  {
    if (v12 == 1)
    {
      v6 = (v6 >> 8) & 0x9F;
    }

    else if ((v6 & 0x80000000) != 0)
    {
      v6 = (v6 >> 8) & 0x1F;
    }
  }

  else
  {
    LOBYTE(v6) = BYTE1(v6);
  }

  LOBYTE(v27) = v6;
  v13 = sub_24A509448(a1, &v27);
  v14 = qword_27EF4E998;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_24A62E314();
  sub_24A506EB8(v16, qword_27EF5C100);
  v17 = sub_24A62E2F4();
  v18 = sub_24A62EF64();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;

    v22 = MEMORY[0x24C21A690](v21, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_24A509BA8(v22, v24, &v27);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_24A503000, v17, v18, "FMItemNIConnectionManager: initialized for items: %s", v19, 0xCu);
    sub_24A508C54(v20);
    MEMORY[0x24C21BBE0](v20, -1, -1);
    MEMORY[0x24C21BBE0](v19, -1, -1);
  }

  return v15;
}

void sub_24A5AA2EC(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_findingType);
  v3 = (v2 >> 13) & 3;
  if (!v3)
  {
    goto LABEL_7;
  }

  if (v3 == 1 || (v2 & 0x80000000) == 0)
  {
    *a1 = 2;
    return;
  }

  if (v2)
  {
    *a1 = 1;
  }

  else
  {
LABEL_7:
    *a1 = 0;
  }
}

void sub_24A5AA330()
{
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C100);
    v2 = v0;
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();

    v5 = os_log_type_enabled(v3, v4);
    v32 = v2;
    if (v5)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      v8 = MEMORY[0x24C21A690](*(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers), MEMORY[0x277D837D0]);
      v10 = sub_24A509BA8(v8, v9, aBlock);
      v2 = v32;

      *(v6 + 4) = v10;
      _os_log_impl(&dword_24A503000, v3, v4, "FMItemNIConnectionManager: requesting connection for items: %s", v6, 0xCu);
      sub_24A508C54(v7);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    v11 = *(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_findables);
    v12 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
    v13 = *(v11 + 16);
    if (!v13)
    {
      break;
    }

    v31 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_nearbyInteractionManager;
    v29 = *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_findingType);
    v14 = v11 + 32;
    v30 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
    swift_beginAccess();
    v28[1] = v36;
    while (1)
    {
      v33 = v13;
      v15 = sub_24A508AE4(v14, v38);
      v34 = v28;
      v16 = v32;
      v17 = v31;
      v18 = *(v32 + v31);
      v19 = *(v32 + v30);
      MEMORY[0x28223BE20](v15);
      v28[-6] = v18;
      v28[-5] = v19;
      v28[-4] = v38;
      LOWORD(v28[-3]) = v29;
      v28[-2] = v16;
      v28[-1] = &off_285DA7978;
      type metadata accessor for FMNearbyInteractionManagerSubscription(0);
      v20 = v18;
      v21 = v19;
      sub_24A62F024();

      v22 = *(v16 + v17);
      v23 = *&v22[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      sub_24A508AE4(v38, v37);
      v0 = swift_allocObject();
      sub_24A508CA0(v37, (v0 + 2));
      v0[7] = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_24A594B48;
      *(v24 + 24) = v0;
      v36[2] = sub_24A517E48;
      v36[3] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v36[0] = sub_24A592ED8;
      v36[1] = &unk_285DA7880;
      v25 = _Block_copy(aBlock);
      v26 = v22;

      dispatch_sync(v23, v25);
      _Block_release(v25);
      sub_24A508C54(v38);

      LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

      if (v25)
      {
        break;
      }

      MEMORY[0x24C21A660](v27);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A62ED84();
      }

      sub_24A62EDA4();
      v14 += 40;
      v13 = v33 - 1;
      if (v33 == 1)
      {
        v12 = v39;
        v2 = v32;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

LABEL_11:
  *(v2 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions) = v12;
}

void sub_24A5AA80C()
{
  if (qword_27EF4E998 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v1 = sub_24A62E314();
    sub_24A506EB8(v1, qword_27EF5C100);
    v2 = v0;
    v3 = sub_24A62E2F4();
    v4 = sub_24A62EF64();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock[0] = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x24C21A690](*&v2[OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers], MEMORY[0x277D837D0]);
      v9 = sub_24A509BA8(v7, v8, aBlock);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_24A503000, v3, v4, "FMItemNIConnectionManager: requesting disconnection for items: %s", v5, 0xCu);
      sub_24A508C54(v6);
      MEMORY[0x24C21BBE0](v6, -1, -1);
      MEMORY[0x24C21BBE0](v5, -1, -1);
    }

    v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions];
    if (v10 >> 62)
    {
      v25 = *&v2[OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_subscriptions];
      v26 = sub_24A62F464();
      v10 = v25;
      v11 = v26;
      if (!v26)
      {
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        return;
      }
    }

    if (v11 < 1)
    {
      break;
    }

    v28 = v10 & 0xC000000000000001;
    v29 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_nearbyInteractionManager;
    v12 = v10;

    v13 = v12;
    v14 = 0;
    v27 = v12;
    while (1)
    {
      v0 = v11;
      v15 = v28 ? MEMORY[0x24C21ACB0](v14, v13) : *(v13 + 8 * v14 + 32);
      v16 = v15;
      v17 = v2;
      v18 = *&v2[v29];
      v19 = *&v18[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v16;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_24A55B77C;
      *(v21 + 24) = v20;
      aBlock[4] = sub_24A5193D4;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A592ED8;
      aBlock[3] = &unk_285DA78F8;
      v22 = _Block_copy(aBlock);
      v23 = v18;
      v24 = v16;

      dispatch_sync(v19, v22);

      _Block_release(v22);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        break;
      }

      v14 = v14 + 1;
      v11 = v0;
      v2 = v17;
      v13 = v27;
      if (v0 == v14)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_24A5AAB98()
{

  v1 = v0 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_delegate;

  return sub_24A52358C(v1);
}

id sub_24A5AAC10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A5AACB8(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, a1 & 1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A5AAD74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5AADB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5AADF0()
{
  sub_24A508C54((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_24A5AAE7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI25FMItemNIConnectionManager_arSession;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24A5AAEF4@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_24A5AAF58(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

void sub_24A5AB26C(unsigned __int8 a1)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C100);
  oslog = sub_24A62E2F4();
  v3 = sub_24A62EF64();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
    *v4 = 136315138;
    v8 = 0xE500000000000000;
    v9 = 0x7964616572;
    v10 = 0xE500000000000000;
    v11 = 0x726F727265;
    if (a1 != 3)
    {
      v11 = 0x666F206574617473;
      v10 = 0xE900000000000066;
    }

    if (a1 != 2)
    {
      v9 = v11;
      v8 = v10;
    }

    if (a1)
    {
      v7 = 0x6461657220746F6ELL;
      v6 = 0xE900000000000079;
    }

    if (a1 <= 1u)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    if (a1 <= 1u)
    {
      v13 = v6;
    }

    else
    {
      v13 = v8;
    }

    v14 = sub_24A509BA8(v12, v13, &v16);

    *(v4 + 4) = v14;
    _os_log_impl(&dword_24A503000, oslog, v3, "FMItemNIConnectionManager: entered state: %s", v4, 0xCu);
    sub_24A508C54(v5);
    MEMORY[0x24C21BBE0](v5, -1, -1);
    MEMORY[0x24C21BBE0](v4, -1, -1);
  }
}

void sub_24A5AB458(uint64_t a1, void *a2, const char *a3, ...)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C100);
  v6 = a2;
  oslog = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a2;
    sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
    v11 = sub_24A62EC44();
    v13 = sub_24A509BA8(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24A503000, oslog, v7, a3, v8, 0xCu);
    sub_24A508C54(v9);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A5AB630(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A62E214();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A5AB6F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A62E214();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FMFindingSessionState(uint64_t a1)
{
  result = qword_27EF51110;
  if (!qword_27EF51110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A5AB7E0(uint64_t a1)
{
  sub_24A5AB8BC(319);
  if (v1 <= 0x3F)
  {
    sub_24A5AB99C(319);
    if (v2 <= 0x3F)
    {
      sub_24A5ABA70(319);
      if (v3 <= 0x3F)
      {
        sub_24A5ABAD4(319);
        if (v4 <= 0x3F)
        {
          sub_24A62E214();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24A5AB8BC(uint64_t a1)
{
  if (!qword_27EF51120)
  {
    sub_24A62E214();
    sub_24A50E1E0(&unk_27EF501B0, &unk_24A633B00);
    sub_24A5AB944();
    v1 = sub_24A62EBA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF51120);
    }
  }
}

unint64_t sub_24A5AB944()
{
  result = qword_27EF52310;
  if (!qword_27EF52310)
  {
    sub_24A62E214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52310);
  }

  return result;
}

void sub_24A5AB99C(uint64_t a1)
{
  if (!qword_27EF51128)
  {
    sub_24A50E1E0(&qword_27EF51130, &qword_24A6389E0);
    sub_24A5ABA0C();
    v1 = sub_24A62EEA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF51128);
    }
  }
}

unint64_t sub_24A5ABA0C()
{
  result = qword_27EF522F0;
  if (!qword_27EF522F0)
  {
    sub_24A50E1E0(&qword_27EF51130, &qword_24A6389E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF522F0);
  }

  return result;
}

void sub_24A5ABA70(uint64_t a1)
{
  if (!qword_27EF51138)
  {
    sub_24A50E1E0(&unk_27EF501B0, &unk_24A633B00);
    v1 = sub_24A62F1C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF51138);
    }
  }
}

void sub_24A5ABAD4(uint64_t a1)
{
  if (!qword_27EF51140)
  {
    sub_24A62E214();
    sub_24A5AB944();
    v1 = sub_24A62EBA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF51140);
    }
  }
}

uint64_t sub_24A5ABB40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 8);
  if (*(v4 + 16) && (v5 = type metadata accessor for FMFindingSessionState(0), v6 = sub_24A515AC8(v2 + *(v5 + 36)), (v7 & 1) != 0))
  {
    v8 = *(v4 + 56) + 40 * v6;

    return sub_24A508AE4(v8, a1);
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5ABC04()
{
  sub_24A5ABB40(v21);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&qword_27EF51148, &qword_24A6389E8);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_24A50D6A4(&v18, &qword_27EF51150, &qword_24A6389F0);
    sub_24A5ABB40(v24);
    v8 = v25;
    v9 = v26;
    sub_24A50A204(v24, v25);
    v10 = (*(v9 + 8))(v8, v9);
LABEL_9:
    v7 = v10;
    goto LABEL_10;
  }

  sub_24A508CA0(&v18, v24);
  sub_24A5AD108(v0 + 24, &v18);
  if (!*(&v19 + 1))
  {
    sub_24A50D6A4(&v18, &unk_27EF522E0, qword_24A637660);
    sub_24A5AD108(v0 + 24, v21);
    v12 = v22;
    sub_24A50D6A4(v21, &unk_27EF522E0, qword_24A637660);
    if (!v12 && *(*(v0 + 16) + 16) >= 2uLL || (v13 = v25, v14 = v26, sub_24A50A204(v24, v25), v10 = (*(v14 + 16))(v13, v14), !v15))
    {
      v16 = v25;
      v17 = v26;
      sub_24A50A204(v24, v25);
      v10 = (*(*(v17 + 8) + 8))(v16, *(v17 + 8));
    }

    goto LABEL_9;
  }

  sub_24A508CA0(&v18, v21);
  if (*(*(v0 + 8) + 16) != 1 || *(*(v0 + 16) + 16) != 1 || (v1 = v25, v2 = v26, sub_24A50A204(v24, v25), v3 = (*(v2 + 16))(v1, v2), !v4))
  {
    v5 = v22;
    v6 = v23;
    sub_24A50A204(v21, v22);
    v3 = (*(v6 + 8))(v5, v6);
  }

  v7 = v3;
  sub_24A508C54(v21);
LABEL_10:
  sub_24A508C54(v24);
  return v7;
}

uint64_t sub_24A5ABE68(void *a1, void *a2)
{
  v80 = a2;
  v3 = sub_24A62E214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v67 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  sub_24A508AE4(a1, v74);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
  if (swift_dynamicCast())
  {
    v67 = v3;
    sub_24A508CA0(v72, v77);
    sub_24A508AE4(v80, v72);
    if (swift_dynamicCast())
    {
      sub_24A508CA0(v70, v74);
      v20 = v78;
      v21 = v79;
      sub_24A50A204(v77, v78);
      (*(v21 + 32))(v72, v20, v21);
      v22 = SLOBYTE(v72[0]);
      v23 = v75;
      v24 = v76;
      sub_24A50A204(v74, v75);
      (*(v24 + 32))(v70, v23, v24);
      v25 = flt_24A6389FC[v22];
      v26 = flt_24A6389FC[SLOBYTE(v70[0])];
      v27 = v78;
      v28 = v79;
      sub_24A50A204(v77, v78);
      v29 = v68;
      (*(*(v28 + 8) + 16))(v27);
      v30 = sub_24A62E1C4();
      v32 = v31;
      v33 = *(v4 + 8);
      v34 = v67;
      v33(v29, v67);
      v36 = v75;
      v35 = v76;
      sub_24A50A204(v74, v75);
      v37 = v69;
      (*(*(v35 + 8) + 16))(v36);
      v38 = sub_24A62E1C4();
      v40 = v39;
      v33(v37, v34);
      if (v30 == v38 && v32 == v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = sub_24A62F634();
      }

      v53 = (v25 < v26) & v41;
      sub_24A508C54(v74);
    }

    else
    {
      v71 = 0;
      memset(v70, 0, sizeof(v70));
      sub_24A50D6A4(v70, &unk_27EF50520, &unk_24A633B10);
      v54 = a1[3];
      v55 = a1[4];
      sub_24A50A204(a1, v54);
      (*(v55 + 16))(v54, v55);
      v56 = sub_24A62E1C4();
      v58 = v57;
      v59 = *(v4 + 8);
      v60 = v67;
      v59(v13, v67);
      v61 = v80[3];
      v62 = v80[4];
      sub_24A50A204(v80, v61);
      (*(v62 + 16))(v61, v62);
      v63 = sub_24A62E1C4();
      v65 = v64;
      v59(v10, v60);
      if (v56 == v63 && v58 == v65)
      {
        v53 = 0;
      }

      else
      {
        v53 = sub_24A62F634();
      }
    }

    sub_24A508C54(v77);
  }

  else
  {
    v73 = 0;
    memset(v72, 0, sizeof(v72));
    sub_24A50D6A4(v72, &unk_27EF50520, &unk_24A633B10);
    v42 = a1[3];
    v43 = a1[4];
    sub_24A50A204(a1, v42);
    (*(v43 + 16))(v42, v43);
    v44 = sub_24A62E1C4();
    v46 = v45;
    v47 = *(v4 + 8);
    v47(v19, v3);
    v48 = v80[3];
    v49 = v80[4];
    sub_24A50A204(v80, v48);
    (*(v49 + 16))(v48, v49);
    v50 = sub_24A62E1C4();
    v52 = v51;
    v47(v16, v3);
    if (v44 == v50 && v46 == v52)
    {

      v53 = 0;
    }

    else
    {
      v53 = sub_24A62F634();
    }
  }

  return v53 & 1;
}

BOOL sub_24A5AC4A8(void *a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *(a2 + 64);
  v9 = a1[3];
  v10 = a1[4];
  sub_24A50A204(a1, v9);
  (*(v10 + 16))(v9, v10);
  if (*(v8 + 16) && (v11 = sub_24A515AC8(v7), (v12 & 1) != 0))
  {
    v13 = *(v8 + 56) + 104 * v11;
    v15 = *(v13 + 16);
    v14 = *(v13 + 32);
    v23[0] = *v13;
    v23[1] = v15;
    v23[2] = v14;
    v16 = *(v13 + 48);
    v17 = *(v13 + 64);
    v18 = *(v13 + 80);
    *&v24[13] = *(v13 + 93);
    v23[4] = v17;
    *v24 = v18;
    v23[3] = v16;
    sub_24A508CE4(v23, v22);
    (*(v5 + 8))(v7, v4);
    if ((*&v24[16] & 0xFC000000 | 0x2000000) != 0x6000000)
    {
      v20 = (*&v24[16] & 0xFF0000) != 196608;
      sub_24A517ABC(v23);
      return v20;
    }

    sub_24A517ABC(v23);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  return 1;
}

uint64_t sub_24A5AC684(void *a1, uint64_t a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *(a2 + 64);
  v9 = a1[3];
  v10 = a1[4];
  sub_24A50A204(a1, v9);
  (*(v10 + 16))(v9, v10);
  if (*(v8 + 16) && (v11 = sub_24A515AC8(v7), (v12 & 1) != 0))
  {
    v13 = *(v8 + 56) + 104 * v11;
    v15 = *(v13 + 16);
    v14 = *(v13 + 32);
    v22[0] = *v13;
    v22[1] = v15;
    v22[2] = v14;
    v16 = *(v13 + 48);
    v17 = *(v13 + 64);
    v18 = *(v13 + 80);
    *&v23[13] = *(v13 + 93);
    v22[4] = v17;
    *v23 = v18;
    v22[3] = v16;
    sub_24A508CE4(v22, v21);
    (*(v5 + 8))(v7, v4);
    if ((*&v23[16] | 0x2000000u) >> 25 != 3)
    {
      sub_24A517ABC(v22);
      return 1;
    }

    sub_24A517ABC(v22);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  return 0;
}

uint64_t sub_24A5AC844@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = sub_24A62E214();
  v12 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  v72 = *a1;
  v17 = MEMORY[0x277D84F90];
  v18 = sub_24A59C820(MEMORY[0x277D84F90]);
  v19 = sub_24A59CA10(v17);
  v20 = *(a2 + 16);
  if (!v20)
  {

LABEL_29:
    *a6 = v72;
    *(a6 + 8) = v18;
    v65 = *(a3 + 16);
    *(a6 + 24) = *a3;
    *(a6 + 40) = v65;
    *(a6 + 56) = *(a3 + 32);
    *(a6 + 64) = v19;
    v66 = type metadata accessor for FMFindingSessionState(0);
    result = (*(v12 + 32))(a6 + *(v66 + 36), a4, v78);
    *(a6 + 16) = a5;
    return result;
  }

  v68 = a3;
  v69 = a4;
  v70 = a6;
  v71 = a5;
  v21 = 0;
  v22 = a2 + 32;
  v75 = v12 + 16;
  v76 = v12;
  v77 = (v12 + 8);
  v73 = v20 - 1;
  v74 = v16;
  while (1)
  {
    sub_24A508AE4(v22, v83);
    v23 = v84;
    v24 = v85;
    sub_24A50A204(v83, v84);
    (*(v24 + 16))(v23, v24);
    sub_24A508AE4(v83, v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v18;
    v27 = sub_24A515AC8(v16);
    v28 = v18[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v18[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v18 = v82;
        if (v26)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_24A559238();
        v18 = v82;
        if (v31)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_24A5568EC(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_24A515AC8(v16);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_34;
      }

      v27 = v32;
      v18 = v82;
      if (v31)
      {
LABEL_10:
        v34 = (v18[7] + 40 * v27);
        sub_24A508C54(v34);
        sub_24A508CA0(v80, v34);
        v35 = *v77;
        (*v77)(v16, v78);
        goto LABEL_14;
      }
    }

    v18[(v27 >> 6) + 8] |= 1 << v27;
    v36 = v76;
    v37 = v78;
    (*(v76 + 16))(v18[6] + *(v76 + 72) * v27, v16, v78);
    sub_24A508CA0(v80, v18[7] + 40 * v27);
    v35 = *(v36 + 8);
    v35(v16, v37);
    v38 = v18[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_32;
    }

    v18[2] = v40;
LABEL_14:
    v41 = v84;
    v42 = v85;
    sub_24A50A204(v83, v84);
    v43 = v79;
    (*(v42 + 16))(v41, v42);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v82 = v19;
    v45 = sub_24A515AC8(v43);
    v47 = v19[2];
    v48 = (v46 & 1) == 0;
    v39 = __OFADD__(v47, v48);
    v49 = v47 + v48;
    if (v39)
    {
      goto LABEL_31;
    }

    v50 = v46;
    if (v19[3] < v49)
    {
      sub_24A5558A0(v49, v44);
      v45 = sub_24A515AC8(v79);
      v16 = v74;
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_34;
      }

LABEL_19:
      if ((v50 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v16 = v74;
    if (v44)
    {
      goto LABEL_19;
    }

    v58 = v45;
    sub_24A55891C();
    v45 = v58;
    if ((v50 & 1) == 0)
    {
LABEL_22:
      v19 = v82;
      v82[(v45 >> 6) + 8] |= 1 << v45;
      v59 = v45;
      v60 = v78;
      v61 = v79;
      (*(v76 + 16))(v19[6] + *(v76 + 72) * v45, v79, v78);
      v62 = v19[7] + 104 * v59;
      *v62 = 0u;
      *(v62 + 16) = 0u;
      *(v62 + 32) = 0u;
      *(v62 + 48) = 0u;
      *(v62 + 64) = 0u;
      *(v62 + 80) = 0u;
      *(v62 + 100) = 0;
      *(v62 + 96) = 0x4000000;
      v35(v61, v60);
      v63 = v19[2];
      v39 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v39)
      {
        goto LABEL_33;
      }

      v19[2] = v64;
      goto LABEL_24;
    }

LABEL_20:
    v19 = v82;
    v52 = v82[7] + 104 * v45;
    v54 = *(v52 + 16);
    v53 = *(v52 + 32);
    v80[0] = *v52;
    v80[1] = v54;
    v80[2] = v53;
    v56 = *(v52 + 64);
    v55 = *(v52 + 80);
    v57 = *(v52 + 48);
    *&v81[13] = *(v52 + 93);
    v80[4] = v56;
    *v81 = v55;
    v80[3] = v57;
    *(v52 + 64) = 0u;
    *(v52 + 80) = 0u;
    *(v52 + 32) = 0u;
    *(v52 + 48) = 0u;
    *v52 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 100) = 0;
    *(v52 + 96) = 0x4000000;
    sub_24A517ABC(v80);
    v35(v79, v78);
LABEL_24:
    sub_24A508C54(v83);
    if (v73 == v21)
    {
      goto LABEL_27;
    }

    ++v21;
    v22 += 40;
    if (v21 >= *(a2 + 16))
    {
      __break(1u);
LABEL_27:

      a5 = v71;
      a6 = v70;
      a4 = v69;
      v12 = v76;
      a3 = v68;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_24A62F674();
  __break(1u);
  return result;
}

void sub_24A5ACE64(uint64_t a1@<X8>)
{
  v32 = a1;
  v38 = sub_24A62E214();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v1;
  v4 = *(v1 + 8);
  sub_24A508FA4(&qword_27EF4FEB8, &qword_24A635DF0);
  v5 = sub_24A62F474();
  v6 = v5;
  v7 = 0;
  v9 = v4 + 64;
  v8 = *(v4 + 64);
  v35 = v4;
  v10 = 1 << *(v4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v37 = (v2 + 16);
  v33 = v2 + 32;
  v34 = v5 + 64;
  if ((v11 & v8) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v7 << 6);
      v18 = v36;
      v19 = *(v2 + 72) * v17;
      v20 = v38;
      (*(v2 + 16))(v36, *(v35 + 48) + v19, v38);
      *(v34 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*(v2 + 32))(v6[6] + v19, v18, v20);
      v21 = v6[7] + 104 * v17;
      *v21 = 0u;
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0u;
      *(v21 + 48) = 0u;
      *(v21 + 64) = 0u;
      *(v21 + 80) = 0u;
      *(v21 + 100) = 0;
      *(v21 + 96) = 0x4000000;
      v22 = v6[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v6[2] = v24;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        v25 = v31;
        v26 = v32;
        v27 = *v31;
        v28 = *(v31 + 1);
        sub_24A5AD108((v31 + 12), v32 + 24);
        v29 = type metadata accessor for FMFindingSessionState(0);
        (*v37)(v26 + *(v29 + 36), v25 + *(v29 + 36), v38);
        v30 = *(v25 + 2);
        *v26 = v27;
        *(v26 + 64) = v6;
        *(v26 + 8) = v28;
        *(v26 + 16) = v30;

        return;
      }

      v16 = *(v9 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24A5AD108(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF522E0, qword_24A637660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5AD18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_24A62E214();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24A5AD2D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  else
  {
    v11 = sub_24A62E214();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24A5AD420(uint64_t a1)
{
  sub_24A5AD540(319);
  if (v1 <= 0x3F)
  {
    sub_24A554AFC(319, &qword_27EF51170, &type metadata for FMFindingPartInfo);
    if (v2 <= 0x3F)
    {
      sub_24A554AFC(319, &qword_27EF51178, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_24A596750();
        if (v4 <= 0x3F)
        {
          sub_24A62E214();
          if (v5 <= 0x3F)
          {
            sub_24A5AD598(319);
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

void sub_24A5AD540(uint64_t a1)
{
  if (!qword_27EF51168)
  {
    sub_24A62E214();
    v1 = sub_24A62F1C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF51168);
    }
  }
}

void sub_24A5AD598(uint64_t a1)
{
  if (!qword_27EF51180)
  {
    sub_24A5AD5F4();
    v1 = sub_24A62EEA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF51180);
    }
  }
}

unint64_t sub_24A5AD5F4()
{
  result = qword_27EF51188;
  if (!qword_27EF51188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51188);
  }

  return result;
}

uint64_t sub_24A5AD65C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A62E214();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24A5AD7A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24A62E214();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24A5AD8F0(uint64_t a1)
{
  sub_24A62E214();
  if (v1 <= 0x3F)
  {
    sub_24A5AD598(319);
    if (v2 <= 0x3F)
    {
      sub_24A554AFC(319, &qword_27EF51178, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_24A5AD540(319);
        if (v4 <= 0x3F)
        {
          sub_24A554AFC(319, &qword_27EF51170, &type metadata for FMFindingPartInfo);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24A5ADA04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v58 = a3;
  v57 = a2;
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_24A62E214();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508AE4(a1, &v59);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v73 = 0;
    memset(v72, 0, sizeof(v72));
  }

  v13 = a1[3];
  v14 = a1[4];
  sub_24A50A204(a1, v13);
  v54 = (*(v14 + 8))(v13, v14);
  v53 = v15;
  v16 = a1[3];
  v17 = a1[4];
  sub_24A50A204(a1, v16);
  (*(v17 + 16))(v16, v17);
  sub_24A50D63C(v72, &v59, &unk_27EF50520, &unk_24A633B10);
  v18 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    v19 = v61;
    sub_24A50A204(&v59, *(&v60 + 1));
    (*(v19 + 16))(v18, v19);
    sub_24A508C54(&v59);
  }

  else
  {
    sub_24A5AE970(&v59);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  v56 = v9;
  v20 = a1[3];
  v21 = a1[4];
  sub_24A50A204(a1, v20);
  (*(v21 + 24))(v70, v20, v21);
  v52 = v70[0];
  v51 = v70[1];
  v50 = v70[2];
  v49 = v71;
  sub_24A50D63C(v72, &v59, &unk_27EF50520, &unk_24A633B10);
  v22 = *(&v60 + 1);
  v55 = v12;
  if (*(&v60 + 1))
  {
    v23 = v61;
    sub_24A50A204(&v59, *(&v60 + 1));
    (*(v23 + 32))(v67, v22, v23);
    v24 = v67[0];
    sub_24A508C54(&v59);
  }

  else
  {
    sub_24A5AE970(&v59);
    v24 = 4;
  }

  v25 = v8;
  sub_24A50D63C(v72, v67, &unk_27EF50520, &unk_24A633B10);
  v26 = v68;
  if (v68)
  {
    v27 = v69;
    sub_24A50A204(v67, v68);
    (*(v27 + 24))(&v59, v26, v27);
    v47 = v60;
    v48 = v59;
    v28 = v61;
    sub_24A508C54(v67);
  }

  else
  {
    sub_24A5AE970(v67);
    v28 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v29 = a1[3];
  v30 = a1[4];
  sub_24A50A204(a1, v29);
  v31 = (*(v30 + 32))(v29, v30);
  v32 = a1[3];
  v33 = a1[4];
  sub_24A50A204(a1, v32);
  (*(v33 + 40))(&v59, v32, v33);
  v34 = v53;
  *a4 = v54;
  *(a4 + 1) = v34;
  v35 = type metadata accessor for FMFindableGroupItem(0);
  (*(v10 + 32))(&a4[v35[5]], v55, v56);
  sub_24A5AEA48(v25, &a4[v35[9]]);
  v36 = &a4[v35[6]];
  v37 = v51;
  *v36 = v52;
  *(v36 + 1) = v37;
  *(v36 + 2) = v50;
  v36[24] = v49;
  a4[v35[10]] = v24;
  v38 = &a4[v35[11]];
  v39 = v47;
  *v38 = v48;
  *(v38 + 1) = v39;
  v38[32] = v28;
  v40 = &a4[v35[8]];
  v41 = v58;
  *v40 = v57;
  v40[1] = v41;
  *&a4[v35[7]] = v31;
  v42 = &a4[v35[12]];
  v43 = v64;
  *(v42 + 4) = v63;
  *(v42 + 5) = v43;
  *(v42 + 6) = v65;
  *(v42 + 14) = v66;
  v44 = v60;
  *v42 = v59;
  *(v42 + 1) = v44;
  v45 = v62;
  *(v42 + 2) = v61;
  *(v42 + 3) = v45;
  sub_24A5AE970(v72);
  return sub_24A508C54(a1);
}

double sub_24A5ADFF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = *(v3 + 32);
  return sub_24A5AE92C(v4, v5, v6, v7);
}

uint64_t sub_24A5AE02C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_24A5AE070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 48);
  v4 = *(v3 + 64);
  v6 = *(v3 + 96);
  v14 = *(v3 + 80);
  v5 = v14;
  v15 = v6;
  v16 = *(v3 + 112);
  v8 = *(v3 + 16);
  v13[0] = *v3;
  v7 = v13[0];
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v4;
  *(a2 + 112) = v16;
  *(a2 + 80) = v5;
  *(a2 + 96) = v6;
  *(a2 + 48) = v10;
  *(a2 + 64) = v4;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *a2 = v7;
  return sub_24A595890(v13, v12);
}

uint64_t sub_24A5AE0E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v61 = a2;
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_24A62E214();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A508AE4(a1, &v63);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v77 = 0;
    memset(v76, 0, sizeof(v76));
  }

  v14 = a1[3];
  v13 = a1[4];
  sub_24A50A204(a1, v14);
  v59 = (*(*(v13 + 8) + 8))(v14);
  v58 = v15;
  v17 = a1[3];
  v16 = a1[4];
  sub_24A50A204(a1, v17);
  v18 = *(*(v16 + 8) + 16);
  v60 = v12;
  v18(v17);
  sub_24A50D63C(v76, &v63, &unk_27EF50520, &unk_24A633B10);
  v19 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    v20 = v65;
    sub_24A50A204(&v63, *(&v64 + 1));
    (*(v20 + 16))(v19, v20);
    sub_24A508C54(&v63);
  }

  else
  {
    sub_24A5AE970(&v63);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  v22 = a1[3];
  v21 = a1[4];
  sub_24A50A204(a1, v22);
  (*(*(v21 + 8) + 24))(v74, v22);
  v57 = v74[0];
  v56 = v74[1];
  v55 = v74[2];
  v54 = v75;
  sub_24A50D63C(v76, &v63, &unk_27EF50520, &unk_24A633B10);
  v23 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    v24 = v65;
    sub_24A50A204(&v63, *(&v64 + 1));
    (*(v24 + 32))(v71, v23, v24);
    v53 = LOBYTE(v71[0]);
    sub_24A508C54(&v63);
  }

  else
  {
    sub_24A5AE970(&v63);
    v53 = 4;
  }

  sub_24A50D63C(v76, v71, &unk_27EF50520, &unk_24A633B10);
  v25 = v72;
  if (v72)
  {
    v26 = v73;
    sub_24A50A204(v71, v72);
    (*(v26 + 24))(&v63, v25, v26);
    v51 = v64;
    v52 = v63;
    v27 = v65;
    sub_24A508C54(v71);
  }

  else
  {
    sub_24A5AE970(v71);
    v27 = 0;
    v52 = 0u;
    v51 = 0u;
  }

  v29 = a1[3];
  v28 = a1[4];
  sub_24A50A204(a1, v29);
  v30 = (*(*(v28 + 8) + 32))(v29);
  v32 = a1[3];
  v31 = a1[4];
  sub_24A50A204(a1, v32);
  (*(*(v31 + 8) + 40))(&v63, v32);
  v33 = a1[3];
  v34 = a1[4];
  sub_24A50A204(a1, v33);
  v35 = (*(v34 + 16))(v33, v34);
  (*(v10 + 56))(a4, 1, 1, v9);
  v36 = type metadata accessor for FMNIFindableGroupItem(0);
  v37 = a4 + v36[5];
  *(v37 + 32) = 0;
  *v37 = 0u;
  *(v37 + 16) = 0u;
  v38 = v9;
  v39 = (a4 + v36[7]);
  v40 = (a4 + v36[9]);
  v41 = v58;
  *v40 = v59;
  v40[1] = v41;
  (*(v10 + 32))(a4 + v36[10], v60, v38);
  sub_24A5AE9D8(v8, a4);
  v42 = a4 + v36[11];
  v43 = v56;
  *v42 = v57;
  *(v42 + 8) = v43;
  *(v42 + 16) = v55;
  *(v42 + 24) = v54;
  *(a4 + v36[6]) = v53;
  sub_24A50D2B4(*v37, *(v37 + 8), *(v37 + 16), *(v37 + 24));
  v44 = v51;
  *v37 = v52;
  *(v37 + 16) = v44;
  *(v37 + 32) = v27;
  v45 = v62;
  *v39 = v61;
  v39[1] = v45;
  *(a4 + v36[12]) = v30;
  v46 = a4 + v36[13];
  v47 = v68;
  *(v46 + 64) = v67;
  *(v46 + 80) = v47;
  *(v46 + 96) = v69;
  *(v46 + 112) = v70;
  v48 = v64;
  *v46 = v63;
  *(v46 + 16) = v48;
  v49 = v66;
  *(v46 + 32) = v65;
  *(v46 + 48) = v49;
  *(a4 + v36[8]) = v35;
  sub_24A5AE970(v76);
  return sub_24A508C54(a1);
}

double sub_24A5AE760@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = *(v3 + 32);
  return sub_24A5AE92C(v4, v5, v6, v7);
}

uint64_t sub_24A5AE794(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_24A5AE7D8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t sub_24A5AE810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_24A62E214();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_24A5AE884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 24);
  *(a2 + 24) = v7;
  return sub_24A595770(v4, v5, v6, v7);
}

uint64_t sub_24A5AE8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *(v3 + 64);
  v6 = *(v3 + 96);
  v14 = *(v3 + 80);
  v5 = v14;
  v15 = v6;
  v16 = *(v3 + 112);
  v8 = *(v3 + 16);
  v13[0] = *v3;
  v7 = v13[0];
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v4;
  *(a2 + 112) = v16;
  *(a2 + 80) = v5;
  *(a2 + 96) = v6;
  *(a2 + 48) = v10;
  *(a2 + 64) = v4;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *a2 = v7;
  return sub_24A595890(v13, v12);
}

double sub_24A5AE92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24A5AE970(uint64_t a1)
{
  v2 = sub_24A508FA4(&unk_27EF50520, &unk_24A633B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A5AE9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5AEA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_24A5AEAB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24A5AEAE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 99))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 98);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24A5AEB2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *(result + 98) = -a2;
    }
  }

  return result;
}

double sub_24A5AEBA8@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 name];
  v4 = sub_24A62EC14();
  v6 = v5;

  v7 = v4 == 0x646E756F66 && v6 == 0xE500000000000000;
  if (v7 || (sub_24A62F634() & 1) != 0)
  {

    v8 = 196608;
  }

  else
  {
    v10 = v4 == 1701995880 && v6 == 0xE400000000000000;
    if (v10 || (sub_24A62F634() & 1) != 0)
    {

      v8 = 0x20000;
    }

    else
    {
      v11 = v4 == 1918985582 && v6 == 0xE400000000000000;
      if (v11 || (sub_24A62F634() & 1) != 0)
      {

        v8 = 0x10000;
      }

      else if (v4 == 7496038 && v6 == 0xE300000000000000)
      {

        v8 = 0;
      }

      else
      {
        v12 = sub_24A62F634();

        if (v12)
        {
          v8 = 0;
        }

        else
        {
          v8 = -65536;
        }
      }
    }
  }

  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = v8;
  *(a1 + 98) = BYTE2(v8);
  return result;
}

uint64_t sub_24A5AED58(uint64_t a1)
{
  v2 = *(v1 + 98);
  if (v2 <= 1)
  {
    v3 = *(a1 + 98) == 255;
    v4 = ((*(a1 + 96) | (*(a1 + 98) << 16)) >> 13) & 0x7F8;
    if (*(v1 + 98))
    {
      v5 = 33686273;
    }

    else
    {
      v5 = 33686019;
    }
  }

  else if (v2 == 2)
  {
    v3 = *(a1 + 98) == 255;
    v4 = ((*(a1 + 96) | (*(a1 + 98) << 16)) >> 13) & 0x7F8;
    v5 = 33751297;
  }

  else
  {
    if (v2 != 3)
    {
      return 0;
    }

    v3 = *(a1 + 98) == 255;
    v4 = ((*(a1 + 96) | (*(a1 + 98) << 16)) >> 13) & 0x7F8;
    v5 = 50397441;
  }

  v7 = v5 >> v4;
  if (v3)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_24A5AEE40()
{
  v1 = *(v0 + 98);
  if (v1 <= 1)
  {
    if (*(v0 + 98))
    {
      v3 = 1918985582;
    }

    else
    {
      v3 = 7496038;
    }

    if (*(v0 + 98))
    {
      v2 = 0xE400000000000000;
    }

    else
    {
      v2 = 0xE300000000000000;
    }
  }

  else if (v1 == 2)
  {
    v2 = 0xE400000000000000;
    v3 = 1701995880;
  }

  else if (v1 == 3)
  {
    v2 = 0xE500000000000000;
    v3 = 0x646E756F66;
  }

  else
  {
    if (*(v0 + 16) == 1)
    {
      v4 = 0xE300000000000000;
      v5 = 7104878;
    }

    else
    {
      v5 = sub_24A51A740();
      v4 = v6;
    }

    MEMORY[0x24C21A5D0](v5, v4);

    v3 = 0x3A65736963657270;
    v2 = 0xE900000000000020;
  }

  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24A633830;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_24A508FEC();
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;

  return sub_24A62EC24();
}

uint64_t sub_24A5AEFD8(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_24A508FA4(&qword_27EF51258, &qword_24A638F08);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = sub_24A508FA4(&qword_27EF51260, &qword_24A638F10);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = sub_24A508FA4(&qword_27EF51268, &qword_24A638F18);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = sub_24A508FA4(&qword_27EF51270, &qword_24A638F20);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = sub_24A508FA4(&qword_27EF51278, &qword_24A638F28);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  sub_24A50A204(a1, a1[3]);
  sub_24A5B1330();
  sub_24A62F774();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_24A5B13D8();
      v9 = v23;
      sub_24A62F564();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_24A5B1384();
      v9 = v26;
      sub_24A62F564();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_24A5B142C();
    sub_24A62F564();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_24A5B1480();
  sub_24A62F564();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_24A5AF414()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x656C62617473;
  if (*v0 == 2)
  {
    v2 = 0x6973616572636564;
  }

  if (*v0)
  {
    v1 = 0x6973616572636E69;
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

uint64_t sub_24A5AF488@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A5B03F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A5AF4B0(uint64_t a1)
{
  v2 = sub_24A5B1330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AF4EC(uint64_t a1)
{
  v2 = sub_24A5B1330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5AF528(uint64_t a1)
{
  v2 = sub_24A5B13D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AF564(uint64_t a1)
{
  v2 = sub_24A5B13D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5AF5A0(uint64_t a1)
{
  v2 = sub_24A5B142C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AF5DC(uint64_t a1)
{
  v2 = sub_24A5B142C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5AF618(uint64_t a1)
{
  v2 = sub_24A5B1384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AF654(uint64_t a1)
{
  v2 = sub_24A5B1384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5AF690(uint64_t a1)
{
  v2 = sub_24A5B1480();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AF6CC(uint64_t a1)
{
  v2 = sub_24A5B1480();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24A5AF708@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24A5B0558(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A5AF750(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x65636E6174736964;
  v5 = 0x800000024A63CEA0;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001BLL;
    v3 = 0x800000024A63CEA0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701869940;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x65636E6174736964;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A62F634();
  }

  return v11 & 1;
}

uint64_t sub_24A5AF844()
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

double sub_24A5AF8E4(uint64_t a1)
{
  sub_24A62EC74();

  return result;
}

uint64_t sub_24A5AF970(uint64_t a1)
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

unint64_t sub_24A5AFA0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A5B0B98(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A5AFA3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x65636E6174736964;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001BLL;
    v4 = 0x800000024A63CEA0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24A5AFA98()
{
  v1 = 0x65636E6174736964;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t sub_24A5AFAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A5B0B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A5AFB18(uint64_t a1)
{
  v2 = sub_24A5B0F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5AFB54(uint64_t a1)
{
  v2 = sub_24A5B0F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5AFB90(void *a1)
{
  v3 = v1;
  v5 = sub_24A508FA4(&qword_27EF511C8, &unk_24A638CB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_24A50A204(a1, a1[3]);
  sub_24A5B0F88();
  sub_24A62F774();
  v9 = *v3;
  v10 = *(v3 + 98);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      if (v10 != 3)
      {
        LOBYTE(v15) = 0;
        sub_24A62F5C4();
        if (!v2)
        {
          v15 = v9;
          v11 = *(v3 + 7);
          v18 = *(v3 + 5);
          v19 = v11;
          v20[0] = *(v3 + 9);
          *(v20 + 10) = *(v3 + 82);
          v12 = *(v3 + 3);
          v16 = *(v3 + 1);
          v17 = v12;
          v21 = 1;
          sub_24A508FA4(&qword_27EF4F650, &unk_24A633E00);
          sub_24A5B1084();
LABEL_15:
          sub_24A62F5D4();
          return (*(v6 + 8))(v8, v5);
        }

        return (*(v6 + 8))(v8, v5);
      }

      LOBYTE(v15) = 0;
    }

    goto LABEL_8;
  }

  if (!*(v3 + 98))
  {
    LOBYTE(v15) = 0;
LABEL_8:
    sub_24A62F5C4();
    if (!v2)
    {
      v15 = v9;
      v21 = 2;
LABEL_14:
      sub_24A5B115C();
      goto LABEL_15;
    }

    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v15) = 0;
  sub_24A62F5C4();
  if (!v2)
  {
    v15 = v9;
    v21 = 2;
    goto LABEL_14;
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24A5AFE14(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 98);
  if (v4 <= 1)
  {
    if (*(v1 + 98))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else if (v4 == 2)
  {
    v5 = 3;
  }

  else
  {
    if (v4 != 3)
    {
      v6 = *(v1 + 16);
      MEMORY[0x24C21B040](5);
      if (v6 == 1)
      {
        return sub_24A62F734();
      }

      sub_24A62F734();
      return sub_24A51AF98(a1);
    }

    v5 = 4;
  }

  MEMORY[0x24C21B040](v5);
  v8 = 0.0;
  if (v3 != 0.0)
  {
    v8 = v3;
  }

  return MEMORY[0x24C21B060](*&v8);
}

uint64_t sub_24A5AFF24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v12[0] = v2;
  *(v12 + 15) = *(a1 + 95);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  *&v14[15] = *(a2 + 95);
  v13[4] = v8;
  *v14 = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_24A5B00E4(v11, v13) & 1;
}

uint64_t sub_24A5AFF90()
{
  sub_24A62F714();
  sub_24A5AFE14(v1);
  return sub_24A62F754();
}

uint64_t sub_24A5AFFD4(uint64_t a1)
{
  sub_24A62F714();
  sub_24A5AFE14(v2);
  return sub_24A62F754();
}

__n128 sub_24A5B0010@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A5B0BE4(a2, v7);
  if (!v2)
  {
    v5 = *v8;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 95) = *&v8[15];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_24A5B0090()
{
  result = qword_27EF511A0;
  if (!qword_27EF511A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511A0);
  }

  return result;
}

uint64_t sub_24A5B00E4(uint64_t *a1, __int128 *a2)
{
  v2 = *(a1 + 98);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = *(a2 + 98) == 2;
      return v3 & 1;
    }

    if (v2 == 3)
    {
      v3 = *(a2 + 98) == 3;
      return v3 & 1;
    }

    if (*(a2 + 98) != 4)
    {
      v3 = 0;
      return v3 & 1;
    }

    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = *(a2 + 2);
    v8 = *(a1 + 5);
    v9 = *(a1 + 9);
    v42 = *(a1 + 7);
    v43[0] = v9;
    *(v43 + 10) = *(a1 + 82);
    v40 = *(a1 + 3);
    v41 = v8;
    *&v39[6] = *a2;
    if (v6 == 1)
    {
      if (v7 == 1)
      {
        *&v24 = v4;
        v3 = 1;
        *(&v24 + 1) = v5;
        *v25 = 1;
        *&v25[24] = *(a1 + 5);
        *&v25[40] = *(a1 + 7);
        *&v25[56] = *(a1 + 9);
        *&v25[66] = *(a1 + 82);
        *&v25[8] = *(a1 + 3);
        sub_24A55B388(a1, &v26);
        sub_24A55B388(a2, &v26);
        v11 = &v24;
LABEL_17:
        sub_24A50D6A4(v11, &qword_27EF4F650, &unk_24A633E00);
        return v3 & 1;
      }
    }

    else if (v7 != 1)
    {
      v22 = *a2;
      *v23 = v7;
      *&v23[8] = *(a2 + 24);
      *&v23[24] = *(a2 + 40);
      *&v23[66] = *(a2 + 82);
      *&v23[56] = *(a2 + 72);
      *&v23[40] = *(a2 + 56);
      v24 = v22;
      *v25 = *v23;
      *&v25[80] = *&v23[80];
      *&v25[48] = *&v23[48];
      *&v25[64] = *&v23[64];
      *&v25[16] = *&v23[16];
      *&v25[32] = *&v23[32];
      v16 = *(a1 + 3);
      v17 = *(a1 + 5);
      v18 = *(a1 + 7);
      *(v48 + 10) = *(a1 + 82);
      v19 = *(a1 + 9);
      v47 = v18;
      v48[0] = v19;
      v45 = v16;
      v46 = v17;
      v44[0] = v4;
      v44[1] = v5;
      v44[2] = v6;
      sub_24A55B388(a1, &v26);
      sub_24A55B388(a2, &v26);
      v3 = sub_24A51B4E4(v44, &v24);
      sub_24A50D6A4(&v22, &qword_27EF4F650, &unk_24A633E00);
      v26 = v4;
      v27 = v5;
      v28 = v6;
      v30 = v41;
      v31 = v42;
      *v32 = v43[0];
      *&v32[10] = *(v43 + 10);
      v29 = v40;
      v11 = &v26;
      goto LABEL_17;
    }

    v26 = v4;
    v27 = v5;
    v28 = v6;
    v30 = *(a1 + 5);
    v31 = *(a1 + 7);
    *v32 = *(a1 + 9);
    *&v32[10] = *(a1 + 82);
    v29 = *(a1 + 3);
    *v33 = *v39;
    *&v33[14] = *&v39[14];
    v34 = v7;
    v12 = *(a2 + 24);
    *&v38[10] = *(a2 + 82);
    v13 = *(a2 + 72);
    v37 = *(a2 + 56);
    *v38 = v13;
    v14 = *(a2 + 40);
    v35 = v12;
    v36 = v14;
    sub_24A55B388(a1, &v24);
    sub_24A55B388(a2, &v24);
    sub_24A50D6A4(&v26, &qword_27EF4F648, &qword_24A633DF8);
    v3 = 0;
    return v3 & 1;
  }

  if (*(a1 + 98))
  {
    v3 = *(a2 + 98) == 1;
  }

  else
  {
    v3 = *(a2 + 98) == 0;
  }

  return v3 & 1;
}

uint64_t sub_24A5B03F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24A62F634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973616572636E69 && a2 == 0xEA0000000000676ELL || (sub_24A62F634() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973616572636564 && a2 == 0xEA0000000000676ELL || (sub_24A62F634() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62617473 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24A62F634();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_24A5B0558(void *a1)
{
  v39 = sub_24A508FA4(&qword_27EF51208, &qword_24A638ED8);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = sub_24A508FA4(&qword_27EF51210, &qword_24A638EE0);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = sub_24A508FA4(&qword_27EF51218, &qword_24A638EE8);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = sub_24A508FA4(&qword_27EF51220, &qword_24A638EF0);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_24A508FA4(&qword_27EF51228, &qword_24A638EF8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  sub_24A50A204(a1, v14);
  sub_24A5B1330();
  v15 = v43;
  sub_24A62F764();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_24A62F554();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_24A51B47C();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_24A5B142C();
        v29 = v33;
        sub_24A62F4C4();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_24A5B1480();
        v23 = v33;
        sub_24A62F4C4();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          sub_24A508C54(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_24A5B13D8();
      v28 = v33;
      sub_24A62F4C4();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_24A5B1384();
      v30 = v33;
      sub_24A62F4C4();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_24A62F3C4();
  swift_allocError();
  v11 = v25;
  sub_24A508FA4(&qword_27EF4F758, &qword_24A638F00);
  *v11 = &type metadata for FMFindingTrend;
  sub_24A62F4D4();
  sub_24A62F3B4();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_24A508C54(v44);
  return v11;
}

unint64_t sub_24A5B0B98(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A62F4B4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A5B0BE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A508FA4(&qword_27EF511A8, &qword_24A638CA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  sub_24A50A204(a1, a1[3]);
  sub_24A5B0F88();
  sub_24A62F764();
  if (v2)
  {
    return sub_24A508C54(a1);
  }

  LOBYTE(v24) = 0;
  v9 = sub_24A62F534();
  v31[0] = 2;
  sub_24A5B0FDC();
  v10 = v8;
  sub_24A62F544();
  *&v11 = v32;
  if (v9 <= 2)
  {
    v22 = v11;
    if (v9 == 1)
    {
      (*(v6 + 8))(v8, v5);
      v13 = 0;
      goto LABEL_15;
    }

    if (v9 == 2)
    {
      (*(v6 + 8))(v8, v5);
      v13 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    switch(v9)
    {
      case 3:
        v22 = v11;
        (*(v6 + 8))(v8, v5);
        v13 = 2;
        goto LABEL_15;
      case 4:
        v22 = v11;
        (*(v6 + 8))(v8, v5);
        v13 = 3;
LABEL_15:
        result = sub_24A508C54(a1);
        v14 = v21;
        *a2 = v22;
        *(a2 + 16) = v14;
        v15 = v19;
        *(a2 + 32) = v20;
        *(a2 + 48) = v15;
        v16 = v17;
        *(a2 + 64) = v18;
        *(a2 + 80) = v16;
        *(a2 + 96) = v10;
        *(a2 + 98) = v13;
        return result;
      case 5:
        v23 = 1;
        sub_24A5B1030();
        sub_24A62F544();
        v21 = v25;
        v22 = v24;
        v19 = v27;
        v20 = v26;
        v17 = v29;
        v18 = v28;
        v10 = v30;
        (*(v6 + 8))(v8, v5);
        v13 = 4;
        goto LABEL_15;
    }
  }

  result = sub_24A62F444();
  __break(1u);
  return result;
}

unint64_t sub_24A5B0F88()
{
  result = qword_27EF511B0;
  if (!qword_27EF511B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511B0);
  }

  return result;
}

unint64_t sub_24A5B0FDC()
{
  result = qword_27EF511B8;
  if (!qword_27EF511B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511B8);
  }

  return result;
}

unint64_t sub_24A5B1030()
{
  result = qword_27EF511C0;
  if (!qword_27EF511C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511C0);
  }

  return result;
}

unint64_t sub_24A5B1084()
{
  result = qword_27EF511D0;
  if (!qword_27EF511D0)
  {
    sub_24A50E1E0(&qword_27EF4F650, &unk_24A633E00);
    sub_24A5B1108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511D0);
  }

  return result;
}

unint64_t sub_24A5B1108()
{
  result = qword_27EF511D8;
  if (!qword_27EF511D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511D8);
  }

  return result;
}

unint64_t sub_24A5B115C()
{
  result = qword_27EF511E0;
  if (!qword_27EF511E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511E0);
  }

  return result;
}

unint64_t sub_24A5B11D4()
{
  result = qword_27EF511E8;
  if (!qword_27EF511E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511E8);
  }

  return result;
}

unint64_t sub_24A5B122C()
{
  result = qword_27EF511F0;
  if (!qword_27EF511F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511F0);
  }

  return result;
}

unint64_t sub_24A5B1284()
{
  result = qword_27EF511F8;
  if (!qword_27EF511F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF511F8);
  }

  return result;
}

unint64_t sub_24A5B12DC()
{
  result = qword_27EF51200;
  if (!qword_27EF51200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51200);
  }

  return result;
}

unint64_t sub_24A5B1330()
{
  result = qword_27EF51230;
  if (!qword_27EF51230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51230);
  }

  return result;
}

unint64_t sub_24A5B1384()
{
  result = qword_27EF51238;
  if (!qword_27EF51238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51238);
  }

  return result;
}

unint64_t sub_24A5B13D8()
{
  result = qword_27EF51240;
  if (!qword_27EF51240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51240);
  }

  return result;
}

unint64_t sub_24A5B142C()
{
  result = qword_27EF51248;
  if (!qword_27EF51248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51248);
  }

  return result;
}

unint64_t sub_24A5B1480()
{
  result = qword_27EF51250;
  if (!qword_27EF51250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51250);
  }

  return result;
}

unint64_t sub_24A5B1530()
{
  result = qword_27EF51280;
  if (!qword_27EF51280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51280);
  }

  return result;
}

unint64_t sub_24A5B1588()
{
  result = qword_27EF51288;
  if (!qword_27EF51288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51288);
  }

  return result;
}

unint64_t sub_24A5B15E0()
{
  result = qword_27EF51290;
  if (!qword_27EF51290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51290);
  }

  return result;
}

unint64_t sub_24A5B1638()
{
  result = qword_27EF51298;
  if (!qword_27EF51298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51298);
  }

  return result;
}

unint64_t sub_24A5B1690()
{
  result = qword_27EF512A0;
  if (!qword_27EF512A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512A0);
  }

  return result;
}

unint64_t sub_24A5B16E8()
{
  result = qword_27EF512A8;
  if (!qword_27EF512A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512A8);
  }

  return result;
}

unint64_t sub_24A5B1740()
{
  result = qword_27EF512B0;
  if (!qword_27EF512B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512B0);
  }

  return result;
}

unint64_t sub_24A5B1798()
{
  result = qword_27EF512B8;
  if (!qword_27EF512B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512B8);
  }

  return result;
}

unint64_t sub_24A5B17F0()
{
  result = qword_27EF512C0;
  if (!qword_27EF512C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512C0);
  }

  return result;
}

unint64_t sub_24A5B1848()
{
  result = qword_27EF512C8;
  if (!qword_27EF512C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512C8);
  }

  return result;
}

unint64_t sub_24A5B18A0()
{
  result = qword_27EF512D0;
  if (!qword_27EF512D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512D0);
  }

  return result;
}

double sub_24A5B18FC()
{
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget + 8))
  {
    v1 = 1.79769313e308;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget);
  }

  v2 = v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
  swift_beginAccess();
  v3 = v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  v4 = *(v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  if (*(v2 + 280) + v4 == 1.79769313e308)
  {
    sub_24A55C6B4(v1);
    *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v4 = *(v3 + 40);
  }

  result = v1 - v4;
  *(v2 + 280) = result;
  *(v2 + 240) = result;
  *(v2 + 248) = 0;
  return result;
}

BOOL sub_24A5B19C4()
{
  v1 = (v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  v2 = (v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  v3 = *(v0 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  if (v1[35] + v3 == 1.79769313e308)
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) == 1)
  {
    memcpy(__dst, v1, sizeof(__dst));
    if (sub_24A55C180() && vabdd_f64(*v2, v3) <= v2[6])
    {
      return fabs(v2[1]) <= v2[7];
    }
  }

  return 0;
}

id sub_24A5B1AD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPFFluidSpring();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24A5B1B3C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = objc_allocWithZone(type metadata accessor for FMPFFluidSpring());
  v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
  v13 = &v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget];
  *v14 = 0;
  v14[8] = 1;
  v15 = sub_24A55C3F8(0.0);
  v16 = v15;
  if (a6)
  {
    v17 = 0.5;
  }

  else
  {
    v17 = *&a5;
  }

  v18 = (v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse);
  *v18 = v17;
  *(v18 + 8) = 0;
  v19 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v20 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v21 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 8);
  v22 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16);
  v23 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 24);
  *v19 = xmmword_24A639330;
  v19[2] = v17;
  v19[3] = 0.0;
  sub_24A55C5A0(v20, v21, v22, v23);
  if (a2)
  {
    v24 = 1.79769313e308;
  }

  else
  {
    v24 = *&a1;
  }

  v25 = (v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  *v25 = v24;
  v26 = (v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  v27 = *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  v28 = v25[35] + v27;
  v29 = OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v28, v24 + *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v30 = v24 + *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v30 = v25[35] + v27;
  }

  if (v28 == 1.79769313e308)
  {
    sub_24A55C6B4(v30);
    *(v16 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v27 = v26[5];
  }

  v31 = v30 - v27;
  v25[35] = v31;
  v25[30] = v31;
  v25[31] = 0.0;
  v32 = *&a3;
  if (a4)
  {
    v32 = 0.0;
  }

  *(v16 + v29) = v32;
  v25[44] = v32;
  v26[6] = v32;
  *(v16 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableVelocityThreshold) = 0x3F847AE147AE147BLL;
  v25[45] = 0.01;
  v26[7] = 0.01;
  return v16;
}

void *sub_24A5B1D38(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = objc_allocWithZone(type metadata accessor for FMPFFluidSpring());
  v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
  v13 = &v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget];
  *v14 = 0;
  v14[8] = 1;
  v15 = sub_24A55C3F8(0.0);
  if (a4)
  {
    v16 = sub_24A5EB5CC();
    v17 = (vcvtd_n_f64_u64(v16, 0x35uLL) * 100.0 + 0.0) / 100.0;
    if (v16 == 0x20000000000000)
    {
      v17 = 1.0;
    }
  }

  else
  {
    v17 = *&a3;
  }

  v18 = v17 + 1.0 - v17 + 1.0 - v17;
  v19 = (v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse);
  *v19 = v18;
  *(v19 + 8) = 0;
  v20 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v21 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v22 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 8);
  v23 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16);
  v24 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 24);
  *v20 = xmmword_24A639330;
  v20[2] = v18;
  v20[3] = 0.0;
  sub_24A55C5A0(v21, v22, v23, v24);
  if (a2)
  {
    v25 = 1.79769313e308;
  }

  else
  {
    v25 = *&a1;
  }

  v26 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  *v26 = v25;
  v27 = (v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  v28 = *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  v29 = v26[35] + v28;
  v30 = OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v29, v25 + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v31 = v25 + *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v31 = v26[35] + v28;
  }

  if (v29 == 1.79769313e308)
  {
    sub_24A55C6B4(v31);
    *(v15 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v28 = v27[5];
  }

  v32 = v31 - v28;
  v26[35] = v32;
  v26[30] = v32;
  v26[31] = 0.0;
  v33 = *&a5;
  if (a6)
  {
    v33 = 0.0;
  }

  *(v15 + v30) = v33;
  v26[44] = v33;
  v27[6] = v33;
  *(v15 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableVelocityThreshold) = 0x3F847AE147AE147BLL;
  v26[45] = 0.01;
  v27[7] = 0.01;
  return v15;
}

void *sub_24A5B1FA4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, __n128 a6)
{
  v11 = objc_allocWithZone(type metadata accessor for FMPFFluidSpring());
  v11[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready] = 0;
  v12 = &v11[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v11[OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget];
  *v13 = 0;
  v13[8] = 1;
  v14 = sub_24A55C3F8(0.0);
  v15 = v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_initialResponse;
  *v15 = a5;
  v15[8] = 0;
  v16 = (v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v17 = *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters);
  v18 = *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 8);
  v19 = *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16);
  v20 = *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 24);
  *v16 = xmmword_24A639330;
  v16[1] = a6;
  sub_24A55C5A0(v17, v18, v19, v20);
  if (a2)
  {
    v21 = 1.79769313e308;
  }

  else
  {
    v21 = *&a1;
  }

  v22 = (v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
  swift_beginAccess();
  *v22 = v21;
  v23 = (v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  v24 = *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  v25 = v22[35] + v24;
  v26 = OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold;
  if (vabdd_f64(v25, v21 + *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o)) > *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
  {
    v27 = v21 + *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
  }

  else
  {
    v27 = v22[35] + v24;
  }

  if (v25 == 1.79769313e308)
  {
    sub_24A55C6B4(v27);
    *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v24 = v23[5];
  }

  v28 = v27 - v24;
  v22[35] = v28;
  v22[30] = v28;
  v22[31] = 0.0;
  v29 = *&a3;
  if (a4)
  {
    v29 = 0.0;
  }

  *(v14 + v26) = v29;
  v22[44] = v29;
  v23[6] = v29;
  *(v14 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableVelocityThreshold) = 0x3F847AE147AE147BLL;
  v22[45] = 0.01;
  v23[7] = 0.01;
  return v14;
}

__n128 sub_24A5B2184(uint64_t a1, uint64_t a2)
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

uint64_t sub_24A5B21A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24A5B21E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_24A5B224C()
{
  v0 = sub_24A62EBE4();
  v1 = objc_opt_self();
  v2 = [v1 fontWithName:v0 size:14.0];

  v3 = *MEMORY[0x277D76968];
  if (!v2)
  {
    v4 = v3;
    v2 = [v1 preferredFontForTextStyle_];
  }

  v5 = v3;
  v6 = [v1 preferredFontForTextStyle_];

  v7 = sub_24A59679C(2);
  *&xmmword_27EF5C618 = v2;
  *(&xmmword_27EF5C618 + 1) = v7;
  xmmword_27EF5C628 = xmmword_24A639390;
  *&xmmword_27EF5C638 = 0x4020000000000000;
  *(&xmmword_27EF5C638 + 1) = &unk_285D9F1F0;
  qword_27EF5C648 = &unk_285D9F240;
  result = 0.75;
  unk_27EF5C650 = xmmword_24A6393A0;
  qword_27EF5C660 = 0x4010000000000000;
  return result;
}

uint64_t sub_24A5B238C(void *a1, int a2)
{
  v18 = a2;
  v19 = a2;
  v3 = sub_24A508FA4(&qword_27EF51328, &qword_24A639528);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = sub_24A508FA4(&qword_27EF51330, &qword_24A639530);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = sub_24A508FA4(&qword_27EF51338, &qword_24A639538);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  sub_24A50A204(a1, a1[3]);
  sub_24A5B323C();
  sub_24A62F774();
  if (v19 == 2)
  {
    v21 = 1;
    sub_24A5B3290();
    sub_24A62F564();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v20 = 0;
    sub_24A5B32E4();
    sub_24A62F564();
    sub_24A62F594();
    (*(v15 + 8))(v8, v6);
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_24A5B268C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_24A5B26C8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000014 && 0x800000024A63CFB0 == a2;
  if (v5 || (sub_24A62F634() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A641550 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24A62F634();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_24A5B27AC(uint64_t a1)
{
  v2 = sub_24A5B323C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5B27E8(uint64_t a1)
{
  v2 = sub_24A5B323C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5B2824(uint64_t a1)
{
  v2 = sub_24A5B3290();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5B2860(uint64_t a1)
{
  v2 = sub_24A5B3290();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_24A5B28B8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_24A62F634();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_24A5B2948(uint64_t a1)
{
  v2 = sub_24A5B32E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5B2984(uint64_t a1)
{
  v2 = sub_24A5B32E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A5B29C0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_24A5B29F8()
{
  v1 = *v0;
  sub_24A62F714();
  if (v1 == 2)
  {
    MEMORY[0x24C21B040](1);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    sub_24A62F734();
  }

  return sub_24A62F754();
}

uint64_t sub_24A5B2A60()
{
  if (*v0 == 2)
  {
    return MEMORY[0x24C21B040](1);
  }

  MEMORY[0x24C21B040](0);
  return sub_24A62F734();
}

uint64_t getEnumTagSinglePayload for FMFindingConvergenceHint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMFindingConvergenceHint(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24A5B2C10(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24A5B2C2C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_24A5B2C58()
{
  result = qword_27EF512F0;
  if (!qword_27EF512F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF512F0);
  }

  return result;
}

uint64_t sub_24A5B2CAC(uint64_t a1)
{
  v2 = *v1;
  sub_24A62F714();
  if (v2 == 2)
  {
    MEMORY[0x24C21B040](1);
  }

  else
  {
    MEMORY[0x24C21B040](0);
    sub_24A62F734();
  }

  return sub_24A62F754();
}

uint64_t sub_24A5B2D10@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24A5B2D58(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A5B2D58(void *a1)
{
  v28 = sub_24A508FA4(&qword_27EF512F8, &qword_24A639508);
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v27 - v2;
  v4 = sub_24A508FA4(&qword_27EF51300, &qword_24A639510);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = sub_24A508FA4(&qword_27EF51308, &unk_24A639518);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = a1[3];
  v32 = a1;
  v12 = sub_24A50A204(a1, v11);
  sub_24A5B323C();
  v13 = v31;
  sub_24A62F764();
  if (!v13)
  {
    v27 = v4;
    v14 = v30;
    v31 = v8;
    v15 = sub_24A62F554();
    v16 = (2 * *(v15 + 16)) | 1;
    v33 = v15;
    v34 = v15 + 32;
    v35 = 0;
    v36 = v16;
    v17 = sub_24A51B4B0();
    if (v17 == 2 || v35 != v36 >> 1)
    {
      v12 = v10;
      v19 = sub_24A62F3C4();
      swift_allocError();
      v21 = v20;
      sub_24A508FA4(&qword_27EF4F758, &qword_24A638F00);
      *v21 = &type metadata for FMFindingConvergenceHint;
      sub_24A62F4D4();
      sub_24A62F3B4();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v31 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }

    else if (v17)
    {
      v37 = 1;
      sub_24A5B3290();
      sub_24A62F4C4();
      v18 = v31;
      (*(v14 + 8))(v3, v28);
      (*(v18 + 8))(v10, v7);
      swift_unknownObjectRelease();
      v12 = 2;
    }

    else
    {
      v37 = 0;
      sub_24A5B32E4();
      v23 = v6;
      sub_24A62F4C4();
      v24 = v31;
      v25 = v27;
      v26 = sub_24A62F504();
      (*(v29 + 8))(v23, v25);
      (*(v24 + 8))(v10, v7);
      swift_unknownObjectRelease();
      v12 = v26 & 1;
    }
  }

  sub_24A508C54(v32);
  return v12;
}

unint64_t sub_24A5B323C()
{
  result = qword_27EF51310;
  if (!qword_27EF51310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51310);
  }

  return result;
}

unint64_t sub_24A5B3290()
{
  result = qword_27EF51318;
  if (!qword_27EF51318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51318);
  }

  return result;
}

unint64_t sub_24A5B32E4()
{
  result = qword_27EF51320;
  if (!qword_27EF51320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51320);
  }

  return result;
}

unint64_t sub_24A5B336C()
{
  result = qword_27EF51340;
  if (!qword_27EF51340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51340);
  }

  return result;
}

unint64_t sub_24A5B33C4()
{
  result = qword_27EF51348;
  if (!qword_27EF51348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51348);
  }

  return result;
}

unint64_t sub_24A5B341C()
{
  result = qword_27EF51350;
  if (!qword_27EF51350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51350);
  }

  return result;
}

unint64_t sub_24A5B3474()
{
  result = qword_27EF51358;
  if (!qword_27EF51358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51358);
  }

  return result;
}

unint64_t sub_24A5B34CC()
{
  result = qword_27EF51360;
  if (!qword_27EF51360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51360);
  }

  return result;
}

unint64_t sub_24A5B3524()
{
  result = qword_27EF51368;
  if (!qword_27EF51368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51368);
  }

  return result;
}

unint64_t sub_24A5B357C()
{
  result = qword_27EF51370;
  if (!qword_27EF51370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51370);
  }

  return result;
}

unint64_t sub_24A5B35D4()
{
  result = qword_27EF51378;
  if (!qword_27EF51378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51378);
  }

  return result;
}

void sub_24A5B3634(unint64_t *a1@<X8>)
{
  v2 = 0xEF65646F4D6E6F69;
  v3 = 0x74617262696C6163;
  v4 = 0x800000024A63DD60;
  if (*v1 != 2)
  {
    v4 = 0x800000024A63DD40;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000024A63DD80;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

id sub_24A5B36C8()
{
  *&xmmword_27EF5C668 = *MEMORY[0x277D76A20];
  *(&xmmword_27EF5C668 + 8) = vdupq_n_s64(0x4040000000000000uLL);
  unk_27EF5C680 = xmmword_24A639840;
  qword_27EF5C690 = 2;
  __asm { FMOV            V0.2D, #3.0 }

  xmmword_27EF5C698 = _Q0;
  xmmword_27EF5C6A8 = _Q0;
  return xmmword_27EF5C668;
}

id sub_24A5B370C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v6 = &v2[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value];
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v7 = &v2[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_style];
  v8 = *(a2 + 48);
  *(v7 + 2) = *(a2 + 32);
  *(v7 + 3) = v8;
  *(v7 + 4) = *(a2 + 64);
  v9 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 1) = v9;
  *&v2[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_findables] = a1;
  if (*(a1 + 16))
  {
    sub_24A508AE4(a1 + 32, v18);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  swift_beginAccess();
  sub_24A5B60F0(a2, v17);
  sub_24A50D1D4(v18, v6);
  swift_endAccess();
  v10 = [objc_opt_self() effectWithStyle_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v2[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_platterEffectView] = v11;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FMFindingSymbolBasedPartPickerView();
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A5B4198(v13);
  sub_24A5B47A8();
  sub_24A5B4308();
  v14 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel_toggle];
  [v12 addGestureRecognizer_];

  sub_24A5B6128(a2);
  return v12;
}

uint64_t sub_24A5B3990()
{
  v1 = sub_24A62E214();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24A508FA4(&unk_27EF52480, &unk_24A633B20);
  MEMORY[0x28223BE20](v50);
  v5 = &v41 - v4;
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v41 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_findables];
  v14 = *(v13 + 16);
  v52 = v0;
  v51 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value;
  result = swift_beginAccess();
  v48 = v14;
  if (!v14)
  {
LABEL_15:
    v36 = 0;
LABEL_18:
    v37 = *(v13 + 16);
    if (v36 >= v37)
    {
      if (!v37)
      {
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
        goto LABEL_23;
      }

      v38 = v13 + 32;
    }

    else
    {
      v38 = v13 + 40 * v36 + 32;
    }

    sub_24A508AE4(v38, &v60);
LABEL_23:
    sub_24A50D63C(&v60, v57, &unk_27EF522E0, qword_24A637660);
    v39 = v52;
    v40 = v51;
    swift_beginAccess();
    sub_24A50D244(v57, v39 + v40);
    swift_endAccess();
    sub_24A5B47A8();
    sub_24A50D6A4(v57, &unk_27EF522E0, qword_24A637660);
    [v39 sendActionsForControlEvents_];
    return sub_24A50D6A4(&v60, &unk_27EF522E0, qword_24A637660);
  }

  v16 = 0;
  v17 = v13 + 32;
  v55 = (v2 + 56);
  v42 = (v2 + 32);
  v44 = (v2 + 8);
  v47 = v13;
  v45 = v5;
  v54 = v12;
  v46 = (v2 + 48);
  while (v16 < *(v13 + 16))
  {
    sub_24A508AE4(v17, &v60);
    v18 = *(&v61 + 1);
    v19 = v62;
    sub_24A50A204(&v60, *(&v61 + 1));
    (*(v19 + 16))(v18, v19);
    v20 = *v55;
    (*v55)(v12, 0, 1, v1);
    sub_24A50D63C(v52 + v51, v57, &unk_27EF522E0, qword_24A637660);
    v21 = v58;
    if (v58)
    {
      v22 = v59;
      v23 = sub_24A50A204(v57, v58);
      v53 = &v41;
      v24 = v56;
      v25 = v1;
      v26 = *(v21 - 8);
      v27 = MEMORY[0x28223BE20](v23);
      v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v29, v27);
      sub_24A50D6A4(v57, &unk_27EF522E0, qword_24A637660);
      (*(v22 + 16))(v21, v22);
      (*(v26 + 8))(v29, v21);
      v1 = v25;
      v20(v24, 0, 1, v25);
      v5 = v45;
    }

    else
    {
      sub_24A50D6A4(v57, &unk_27EF522E0, qword_24A637660);
      v20(v56, 1, 1, v1);
    }

    v30 = *(v50 + 48);
    v12 = v54;
    sub_24A50D63C(v54, v5, &unk_27EF4FEE0, &qword_24A6369F0);
    sub_24A50D63C(v56, &v5[v30], &unk_27EF4FEE0, &qword_24A6369F0);
    v31 = *v46;
    if ((*v46)(v5, 1, v1) == 1)
    {
      sub_24A50D6A4(v56, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v12, &unk_27EF4FEE0, &qword_24A6369F0);
      if (v31(&v5[v30], 1, v1) == 1)
      {
        sub_24A50D6A4(v5, &unk_27EF4FEE0, &qword_24A6369F0);
        sub_24A508C54(&v60);
        v13 = v47;
LABEL_17:
        v36 = v16 + 1;
        goto LABEL_18;
      }

      goto LABEL_4;
    }

    sub_24A50D63C(v5, v49, &unk_27EF4FEE0, &qword_24A6369F0);
    if (v31(&v5[v30], 1, v1) == 1)
    {
      sub_24A50D6A4(v56, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v12, &unk_27EF4FEE0, &qword_24A6369F0);
      (*v44)(v49, v1);
LABEL_4:
      sub_24A50D6A4(v5, &unk_27EF52480, &unk_24A633B20);
      result = sub_24A508C54(&v60);
      v13 = v47;
      goto LABEL_5;
    }

    v32 = v43;
    (*v42)(v43, &v5[v30], v1);
    sub_24A5B7014();
    v33 = v49;
    LODWORD(v53) = sub_24A62EBD4();
    v34 = *v44;
    v35 = v32;
    v12 = v54;
    (*v44)(v35, v1);
    sub_24A50D6A4(v56, &unk_27EF4FEE0, &qword_24A6369F0);
    sub_24A50D6A4(v12, &unk_27EF4FEE0, &qword_24A6369F0);
    v34(v33, v1);
    sub_24A50D6A4(v5, &unk_27EF4FEE0, &qword_24A6369F0);
    result = sub_24A508C54(&v60);
    v13 = v47;
    if (v53)
    {
      goto LABEL_17;
    }

LABEL_5:
    ++v16;
    v17 += 40;
    if (v48 == v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

id sub_24A5B4198(double a1)
{
  LODWORD(a1) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:a1];
  v2 = *&v1[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_platterEffectView];
  [v1 addSubview_];
  v3 = [v2 contentView];
  v4 = *&v1[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView];
  [v3 addSubview_];

  v5 = [v2 layer];
  [v5 setCornerCurve_];

  v6 = [v2 layer];
  [v6 setMasksToBounds_];

  [v1 setOverrideUserInterfaceStyle_];
  [v4 setDirectionalLayoutMargins_];
  [v4 setLayoutMarginsRelativeArrangement_];

  return [v4 setAxis_];
}

void sub_24A5B4308()
{
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A633810;
  v2 = *&v0[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_platterEffectView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView];
  *(inited + 40) = v3;
  v4 = v2;
  v5 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v4; ; i = MEMORY[0x24C21ACB0](0, inited))
  {
    v7 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v8 = MEMORY[0x24C21ACB0](1, inited);
LABEL_7:
  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v36 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A639850;
  v11 = [v5 leadingAnchor];
  v12 = [v4 &selRef_initWithFrame_ + 1];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [v5 trailingAnchor];
  v15 = [v4 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v5 topAnchor];
  v18 = [v4 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v10 + 48) = v19;
  v20 = [v5 bottomAnchor];
  v21 = [v4 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v10 + 56) = v22;
  v23 = [v0 leadingAnchor];
  v24 = [v4 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v10 + 64) = v25;
  v26 = [v0 trailingAnchor];
  v27 = [v4 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v10 + 72) = v28;
  v29 = [v0 topAnchor];
  v30 = [v4 topAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v10 + 80) = v31;
  v32 = [v0 bottomAnchor];
  v33 = [v4 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v10 + 88) = v34;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v35 = sub_24A62ED54();

  [v36 activateConstraints_];
}

void sub_24A5B47A8()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView] arrangedSubviews];
  sub_24A50D7EC(0, &qword_27EF513A8, 0x277D75D18);
  v3 = sub_24A62ED64();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = objc_opt_self();
  v10 = *&v1[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_style];
  v11 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v12 = [v9 preferredFontForTextStyle:v10 compatibleWithTraitCollection:v11];

  v13 = sub_24A59679C(2);
  v26 = [objc_opt_self() configurationWithFont:v13 scale:3];

  v29 = *&v1[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_findables];
  v14 = v1;

  sub_24A5B6F7C(&v29, v14);

  v15 = v29;
  v16 = v29[2];
  if (v16)
  {
    v31 = MEMORY[0x277D84F90];
    sub_24A62F404();
    v17 = 0;
    v25 = v15[2];
    v18 = (v15 + 4);
    do
    {
      if (v25 == v17)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v17 >= v15[2])
      {
        goto LABEL_33;
      }

      sub_24A508AE4(v18, v30);
      v27 = v17;
      sub_24A508CA0(v30, v28);
      sub_24A5B518C(v17, v28, v26, v14);
      sub_24A50D6A4(&v27, &qword_27EF513B0, &qword_24A639900);
      sub_24A62F3E4();
      sub_24A62F414();
      sub_24A62F424();
      sub_24A62F3F4();
      v18 += 40;
      ++v17;
    }

    while (v16 != v17);

    v19 = v31;
    if (v31 >> 62)
    {
      goto LABEL_30;
    }
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_30:
      v20 = sub_24A62F464();
      if (v20)
      {
        goto LABEL_21;
      }

LABEL_31:

      return;
    }
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_31;
  }

LABEL_21:
  v21 = 0;
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x24C21ACB0](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    v29 = v22;
    sub_24A5B59E4(&v29, v14);

    ++v21;
    if (v24 == v20)
    {
      goto LABEL_31;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  __break(1u);
}

uint64_t sub_24A5B4BB0(void *a1, void *a2, void *a3)
{
  v53 = a3;
  v63 = a2;
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  sub_24A508AE4(a1, v57);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
  if (swift_dynamicCast())
  {
    sub_24A508CA0(v55, v60);
    sub_24A508AE4(v63, v55);
    if (swift_dynamicCast())
    {
      sub_24A508CA0((v54 + 2), v57);
      v17 = [v53 traitCollection];
      v18 = [v17 layoutDirection];

      v19 = v18 == 1;
      v20 = v61;
      v21 = v62;
      sub_24A50A204(v60, v61);
      (*(v21 + 32))(v55, v20, v21);
      v22 = LOBYTE(v55[0]);
      v23 = v58;
      v24 = v59;
      sub_24A50A204(v57, v58);
      (*(v24 + 32))(v54 + 2, v23, v24);
      if (v22 == 2)
      {
        if (BYTE2(v54[0]) == 3)
        {
          v19 = v18 != 1;
LABEL_19:
          sub_24A508C54(v57);
          sub_24A508C54(v60);
          return v19 & 1;
        }
      }

      else if (v22 == 3 && BYTE2(v54[0]) == 2)
      {
        goto LABEL_19;
      }

      v46 = v61;
      v47 = v62;
      sub_24A50A204(v60, v61);
      (*(v47 + 32))(v54 + 1, v46, v47);
      v48 = SBYTE1(v54[0]);
      v49 = v58;
      v50 = v59;
      sub_24A50A204(v57, v58);
      (*(v50 + 32))(v54, v49, v50);
      v19 = flt_24A63990C[v48] < flt_24A63990C[SLOBYTE(v54[0])];
      goto LABEL_19;
    }

    *(&v54[4] + 2) = 0;
    memset(v54 + 2, 0, 32);
    sub_24A50D6A4(v54 + 2, &unk_27EF50520, &unk_24A633B10);
    v35 = a1[3];
    v36 = a1[4];
    sub_24A50A204(a1, v35);
    (*(v36 + 16))(v35, v36);
    v37 = sub_24A62E1C4();
    v39 = v38;
    v40 = *(v5 + 8);
    v40(v10, v4);
    v41 = v63[3];
    v42 = v63[4];
    sub_24A50A204(v63, v41);
    (*(v42 + 16))(v41, v42);
    v43 = sub_24A62E1C4();
    v45 = v44;
    v40(v7, v4);
    if (v37 == v43 && v39 == v45)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_24A62F634();
    }

    sub_24A508C54(v60);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_24A50D6A4(v55, &unk_27EF50520, &unk_24A633B10);
    v25 = a1[3];
    v26 = a1[4];
    sub_24A50A204(a1, v25);
    (*(v26 + 16))(v25, v26);
    v53 = sub_24A62E1C4();
    v28 = v27;
    v29 = *(v5 + 8);
    v29(v16, v4);
    v30 = v63[3];
    v31 = v63[4];
    sub_24A50A204(v63, v30);
    (*(v31 + 16))(v30, v31);
    v32 = sub_24A62E1C4();
    v34 = v33;
    v29(v13, v4);
    if (v53 == v32 && v28 == v34)
    {

      v19 = 0;
    }

    else
    {
      v19 = sub_24A62F634();
    }
  }

  return v19 & 1;
}

void *sub_24A5B518C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v7 = sub_24A62E214();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v61 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24A508FA4(&unk_27EF52480, &unk_24A633B20);
  MEMORY[0x28223BE20](v65);
  v11 = &v61 - v10;
  v12 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v17);
  v67 = &v61 - v18;
  v19 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  sub_24A508AE4(a2, v74);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v78 = 0;
    memset(v77, 0, sizeof(v77));
  }

  sub_24A50D63C(v77, v74, &unk_27EF50520, &unk_24A633B10);
  v20 = v75;
  v68 = v16;
  v66 = v19;
  if (v75)
  {
    v21 = v76;
    sub_24A50A204(v74, v75);
    (*(v21 + 24))(&v69, v20, v21);
    v22 = v70;
    if (!v70)
    {
      result = sub_24A508C54(v74);
      v16 = v68;
      v33 = a1 + 1;
      if (!__OFADD__(a1, 1))
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }

    v24 = v71;
    v23 = v72;
    v25 = a2;
    v26 = v11;
    v27 = v7;
    v28 = a3;
    v29 = v8;
    v30 = v69;
    LODWORD(v63) = v73;

    v31 = v30;
    v8 = v29;
    a3 = v28;
    v7 = v27;
    v11 = v26;
    a2 = v25;
    v19 = v66;
    sub_24A50D2B4(v31, v22, v24, v23);
    result = sub_24A508C54(v74);
    v16 = v68;
    if (v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = sub_24A50D6A4(v74, &unk_27EF50520, &unk_24A633B10);
  }

  v33 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
LABEL_9:
    v69 = v33;
    v74[0] = sub_24A62F614();
    v74[1] = v34;
    MEMORY[0x24C21A5D0](0x6C6C69662ELL, 0xE500000000000000);

LABEL_10:
    v35 = sub_24A62EBE4();

    v36 = [objc_opt_self() systemImageNamed:v35 withConfiguration:a3];

    v63 = v36;
    [v19 setImage_];
    [v19 setContentMode_];
    v37 = a2[3];
    v38 = a2[4];
    sub_24A50A204(a2, v37);
    v39 = v67;
    (*(v38 + 16))(v37, v38);
    v40 = v8;
    v41 = *(v8 + 56);
    v41(v39, 0, 1, v7);
    v42 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value;
    v43 = v64;
    swift_beginAccess();
    sub_24A50D63C(v43 + v42, v74, &unk_27EF522E0, qword_24A637660);
    v44 = v75;
    if (v75)
    {
      v45 = v76;
      v46 = sub_24A50A204(v74, v75);
      v47 = *(v44 - 8);
      v48 = MEMORY[0x28223BE20](v46);
      v50 = &v61 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v50, v48);
      sub_24A50D6A4(v74, &unk_27EF522E0, qword_24A637660);
      (*(v45 + 16))(v44, v45);
      (*(v47 + 8))(v50, v44);
      v39 = v67;
      v41(v68, 0, 1, v7);
      v16 = v68;
    }

    else
    {
      sub_24A50D6A4(v74, &unk_27EF522E0, qword_24A637660);
      v41(v16, 1, 1, v7);
    }

    v51 = *(v65 + 48);
    sub_24A50D63C(v39, v11, &unk_27EF4FEE0, &qword_24A6369F0);
    sub_24A50D63C(v16, &v11[v51], &unk_27EF4FEE0, &qword_24A6369F0);
    v52 = v40;
    v53 = *(v40 + 48);
    if (v53(v11, 1, v7) == 1)
    {
      sub_24A50D6A4(v16, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v39, &unk_27EF4FEE0, &qword_24A6369F0);
      v54 = v53(&v11[v51], 1, v7);
      v55 = v66;
      if (v54 == 1)
      {
        sub_24A50D6A4(v11, &unk_27EF4FEE0, &qword_24A6369F0);
        v56 = 1;
LABEL_20:
        [v55 setHighlighted_];

        sub_24A50D6A4(v77, &unk_27EF50520, &unk_24A633B10);
        return v55;
      }
    }

    else
    {
      v57 = v62;
      sub_24A50D63C(v11, v62, &unk_27EF4FEE0, &qword_24A6369F0);
      v58 = v53(&v11[v51], 1, v7);
      v55 = v66;
      if (v58 != 1)
      {
        v59 = v61;
        (*(v52 + 32))(v61, &v11[v51], v7);
        sub_24A5B7014();
        v56 = sub_24A62EBD4();
        v60 = *(v52 + 8);
        v60(v59, v7);
        sub_24A50D6A4(v68, &unk_27EF4FEE0, &qword_24A6369F0);
        sub_24A50D6A4(v67, &unk_27EF4FEE0, &qword_24A6369F0);
        v60(v57, v7);
        sub_24A50D6A4(v11, &unk_27EF4FEE0, &qword_24A6369F0);
        goto LABEL_20;
      }

      sub_24A50D6A4(v68, &unk_27EF4FEE0, &qword_24A6369F0);
      sub_24A50D6A4(v67, &unk_27EF4FEE0, &qword_24A6369F0);
      (*(v52 + 8))(v57, v7);
    }

    sub_24A50D6A4(v11, &unk_27EF52480, &unk_24A633B20);
    v56 = 0;
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_24A5B59E4(id *a1, uint64_t a2)
{
  v3 = *a1;
  [*a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v3 isHighlighted];
  v5 = 40;
  if (v4)
  {
    v5 = 32;
  }

  v6 = *(a2 + OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_style + v5);
  v24 = [objc_opt_self() effectWithStyle_];
  v7 = [objc_opt_self() effectForBlurEffect:v24 style:v6];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [v8 contentView];
  [v9 addSubview_];

  v23 = objc_opt_self();
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A633820;
  v11 = [v8 widthAnchor];
  v12 = a2 + OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_style;
  v13 = [v11 constraintEqualToConstant_];

  *(v10 + 32) = v13;
  v14 = [v8 heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v10 + 40) = v15;
  v16 = [v8 centerXAnchor];
  v17 = [v3 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v10 + 48) = v18;
  v19 = [v8 centerYAnchor];

  v20 = [v3 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v10 + 56) = v21;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v22 = sub_24A62ED54();

  [v23 activateConstraints_];

  [*(a2 + OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView) addArrangedSubview_];
}

id sub_24A5B5E78(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMFindingSymbolBasedPartPickerView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A5B5F60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value;
  swift_beginAccess();
  return sub_24A50D63C(v1 + v3, a1, &unk_27EF522E0, qword_24A637660);
}

uint64_t sub_24A5B5FC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value;
  swift_beginAccess();
  sub_24A50D244(a1, v1 + v3);
  swift_endAccess();
  sub_24A5B47A8();
  return sub_24A50D6A4(a1, &unk_27EF522E0, qword_24A637660);
}

id sub_24A5B6054(uint64_t a1)
{
  if (qword_27EF4EA48 != -1)
  {
    swift_once();
  }

  v5[2] = unk_27EF5C688;
  v5[3] = xmmword_27EF5C698;
  v5[4] = xmmword_27EF5C6A8;
  v5[0] = xmmword_27EF5C668;
  v5[1] = unk_27EF5C678;
  v2 = objc_allocWithZone(type metadata accessor for FMFindingSymbolBasedPartPickerView());
  sub_24A5B60F0(v5, &v4);
  return sub_24A5B370C(a1, v5);
}

uint64_t sub_24A5B6158(char *__dst, char *__src, unint64_t a3, char *a4, void *a5)
{
  v41 = a5;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 40;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 40;
  if (v11 >= v13)
  {
    if (a4 != __src || &__src[40 * v13] <= a4)
    {
      memmove(a4, __src, 40 * v13);
    }

    v14 = v6 + 40 * v13;
    if (v12 < 40 || v8 <= v9)
    {
LABEL_43:
      v21 = v8;
      goto LABEL_44;
    }

    v22 = -v6;
    while (1)
    {
      v21 = v8 - 40;
      v23 = v14 - 40;
      v24 = v22 + v14;
      v7 -= 40;
      while (1)
      {
        sub_24A508AE4(v23, v40);
        sub_24A508AE4((v8 - 40), v39);
        v27 = sub_24A5B4BB0(v40, v39, v41);
        if (v5)
        {
          sub_24A508C54(v39);
          sub_24A508C54(v40);
          v36 = v24 / 40;
          if (v8 >= v6 && v8 < v6 + 40 * v36 && v8 == v6)
          {
            goto LABEL_49;
          }

          v34 = 40 * v36;
          v35 = v8;
          goto LABEL_48;
        }

        v28 = v27;
        sub_24A508C54(v39);
        sub_24A508C54(v40);
        if (v28)
        {
          break;
        }

        if (v7 + 40 != v23 + 40)
        {
          v29 = *v23;
          v30 = *(v23 + 16);
          *(v7 + 32) = *(v23 + 32);
          *v7 = v29;
          *(v7 + 16) = v30;
        }

        v25 = v23 - 40;
        v24 -= 40;
        v7 -= 40;
        v26 = v23 > v6;
        v23 -= 40;
        if (!v26)
        {
          v14 = v25 + 40;
          goto LABEL_43;
        }
      }

      if ((v7 + 40) != v8)
      {
        v31 = *v21;
        v32 = *(v8 - 24);
        *(v7 + 32) = *(v8 - 1);
        *v7 = v31;
        *(v7 + 16) = v32;
      }

      v14 = v23 + 40;
      if (v23 + 40 > v6)
      {
        v8 -= 40;
        v22 = -v6;
        if (v21 > v9)
        {
          continue;
        }
      }

      v14 = v23 + 40;
      goto LABEL_44;
    }
  }

  if (a4 != __dst || &__dst[40 * v11] <= a4)
  {
    memmove(a4, __dst, 40 * v11);
  }

  v14 = v6 + 40 * v11;
  if (v10 < 40 || v8 >= v7)
  {
LABEL_16:
    v21 = v9;
LABEL_44:
    v37 = (v14 - v6) / 40;
    if (v21 >= v6 && v21 < v6 + 40 * v37 && v21 == v6)
    {
      goto LABEL_49;
    }

    v34 = 40 * v37;
    v35 = v21;
LABEL_48:
    memmove(v35, v6, v34);
    goto LABEL_49;
  }

  while (1)
  {
    sub_24A508AE4(v8, v40);
    sub_24A508AE4(v6, v39);
    v15 = sub_24A5B4BB0(v40, v39, v41);
    if (v5)
    {
      break;
    }

    v16 = v15;
    sub_24A508C54(v39);
    sub_24A508C54(v40);
    if ((v16 & 1) == 0)
    {
      v17 = v6;
      v18 = v9 == v6;
      v6 += 40;
      if (v18)
      {
        goto LABEL_14;
      }

LABEL_13:
      v19 = *v17;
      v20 = *(v17 + 16);
      *(v9 + 4) = *(v17 + 32);
      *v9 = v19;
      *(v9 + 1) = v20;
      goto LABEL_14;
    }

    v17 = v8;
    v18 = v9 == v8;
    v8 += 40;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_14:
    v9 += 40;
    if (v6 >= v14 || v8 >= v7)
    {
      goto LABEL_16;
    }
  }

  sub_24A508C54(v39);
  sub_24A508C54(v40);
  v33 = (v14 - v6) / 40;
  if (v9 < v6 || v9 >= v6 + 40 * v33 || v9 != v6)
  {
    v34 = 40 * v33;
    v35 = v9;
    goto LABEL_48;
  }

LABEL_49:

  return 1;
}

void sub_24A5B6504(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a3[1];
  v105 = a5;
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v103 = *a1;
    if (*a1)
    {
      v105 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_95;
    }

    goto LABEL_136;
  }

  v99 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
      goto LABEL_23;
    }

    v13 = v6;
    v14 = *a3;
    sub_24A508AE4(*a3 + 40 * v12, v111);
    sub_24A508AE4(v14 + 40 * v11, v110);
    v15 = sub_24A5B4BB0(v111, v110, v105);
    if (v13)
    {
LABEL_104:
      sub_24A508C54(v110);
      sub_24A508C54(v111);

      return;
    }

    v16 = v15;
    sub_24A508C54(v110);
    sub_24A508C54(v111);
    v17 = v11 + 2;
    v106 = v11;
    v18 = 40 * v11;
    v19 = v14 + v18 + 80;
    v6 = 0;
    while (v8 != v17)
    {
      sub_24A508AE4(v19, v111);
      sub_24A508AE4(v19 - 40, v110);
      v20 = sub_24A5B4BB0(v111, v110, v105);
      sub_24A508C54(v110);
      sub_24A508C54(v111);
      ++v17;
      v19 += 40;
      if ((v16 ^ v20))
      {
        v8 = v17 - 1;
        break;
      }
    }

    if (v16)
    {
      v21 = v106;
      if (v8 < v106)
      {
        goto LABEL_130;
      }

      if (v106 >= v8)
      {
        v11 = v106;
        goto LABEL_23;
      }

      v22 = 40 * v8 - 40;
      v23 = v8;
      do
      {
        if (v21 != --v23)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v24 = v28 + v18;
          v25 = v28 + v22;
          sub_24A508CA0((v28 + v18), v111);
          v26 = *(v25 + 32);
          v27 = *(v25 + 16);
          *v24 = *v25;
          *(v24 + 16) = v27;
          *(v24 + 32) = v26;
          sub_24A508CA0(v111, v25);
        }

        ++v21;
        v22 -= 40;
        v18 += 40;
      }

      while (v21 < v23);
      v6 = 0;
    }

    v11 = v106;
LABEL_23:
    v29 = a3[1];
    if (v8 >= v29)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_126;
    }

    if (v8 - v11 >= v99)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v11, v99))
    {
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:

      __break(1u);
LABEL_132:

      __break(1u);
      goto LABEL_133;
    }

    if (v11 + v99 >= v29)
    {
      v30 = a3[1];
    }

    else
    {
      v30 = v11 + v99;
    }

    if (v30 < v11)
    {
      goto LABEL_129;
    }

    if (v8 == v30)
    {
LABEL_32:
      v31 = v8;
      if (v8 < v11)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v81 = v11;
      v82 = *a3;
      v83 = *a3 + 40 * v8;
      v108 = v81;
      v84 = (v81 - v8);
      v101 = v30;
      do
      {
        v103 = v84;
        v85 = v84;
        v86 = v83;
        do
        {
          sub_24A508AE4(v83, v111);
          sub_24A508AE4(v83 - 40, v110);
          v87 = sub_24A5B4BB0(v111, v110, v105);
          if (v6)
          {
            goto LABEL_104;
          }

          v88 = v87;
          sub_24A508C54(v110);
          sub_24A508C54(v111);
          if ((v88 & 1) == 0)
          {
            break;
          }

          if (!v82)
          {
            goto LABEL_132;
          }

          sub_24A508CA0(v83, v111);
          v89 = *(v83 - 24);
          *v83 = *(v83 - 40);
          *(v83 + 16) = v89;
          *(v83 + 32) = *(v83 - 8);
          sub_24A508CA0(v111, v83 - 40);
          v83 -= 40;
        }

        while (!__CFADD__(v85++, 1));
        ++v8;
        v83 = v86 + 40;
        v84 = v103 - 1;
        v31 = v101;
      }

      while (v8 != v101);
      v11 = v108;
      if (v101 < v108)
      {
        goto LABEL_125;
      }
    }

    v107 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24A5E802C(0, *(v10 + 2) + 1, 1, v10);
    }

    v6 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v6 + 1;
    if (v6 >= v32 >> 1)
    {
      v10 = sub_24A5E802C((v32 > 1), v6 + 1, 1, v10);
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v6];
    *(v34 + 4) = v11;
    *(v34 + 5) = v31;
    v100 = v31;
    v103 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v100;
    v6 = v107;
    if (v100 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v10[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_112;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_113;
      }

      v47 = &v10[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_115;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_118;
      }

      if (v51 >= v43)
      {
        v69 = &v10[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_124;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v33 == 3)
    {
      v36 = *(v10 + 4);
      v37 = *(v10 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_52:
      if (v39)
      {
        goto LABEL_114;
      }

      v52 = &v10[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_117;
      }

      v58 = &v10[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_120;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_121;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    v62 = &v10[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_66:
    if (v57)
    {
      goto LABEL_116;
    }

    v65 = &v10[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_119;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_73:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    v74 = *a3;
    if (!*a3)
    {
      goto LABEL_131;
    }

    v75 = *&v10[16 * v73 + 32];
    v6 = *&v10[16 * v35 + 40];
    v76 = (v74 + 40 * v75);
    v77 = (v74 + 40 * *&v10[16 * v35 + 32]);
    v78 = v74 + 40 * v6;
    v79 = v105;
    sub_24A5B6158(v76, v77, v78, v103, v79);
    if (v107)
    {

      return;
    }

    if (v6 < v75)
    {
      goto LABEL_110;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24A5E8018(v10);
    }

    if (v73 >= *(v10 + 2))
    {
      goto LABEL_111;
    }

    v80 = &v10[16 * v73];
    *(v80 + 4) = v75;
    *(v80 + 5) = v6;
    v112 = v10;
    sub_24A5E7F8C(v35);
    v10 = v112;
    v33 = *(v112 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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
LABEL_127:
  v10 = sub_24A5E8018(v10);
LABEL_95:
  v109 = v6;
  v112 = v10;
  v91 = *(v10 + 2);
  if (v91 < 2)
  {
LABEL_105:
  }

  else
  {
    while (1)
    {
      v92 = *a3;
      if (!*a3)
      {
        break;
      }

      v93 = *&v10[16 * v91];
      v6 = *&v10[16 * v91 + 24];
      v94 = (v92 + 40 * v93);
      v95 = (v92 + 40 * *&v10[16 * v91 + 16]);
      v96 = v92 + 40 * v6;
      v97 = v105;
      sub_24A5B6158(v94, v95, v96, v103, v97);
      if (v109)
      {

        return;
      }

      if (v6 < v93)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_24A5E8018(v10);
      }

      if (v91 - 2 >= *(v10 + 2))
      {
        goto LABEL_123;
      }

      v98 = &v10[16 * v91];
      *v98 = v93;
      *(v98 + 1) = v6;
      v112 = v10;
      sub_24A5E7F8C(v91 - 1);
      v10 = v112;
      v91 = *(v112 + 2);
      if (v91 <= 1)
      {
        goto LABEL_105;
      }
    }

LABEL_133:

    __break(1u);
LABEL_134:

    __break(1u);
LABEL_135:

    __break(1u);
LABEL_136:

    __break(1u);
  }
}

uint64_t sub_24A5B6D18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 40 * a3;
    v10 = result - a3;
LABEL_4:
    v11 = v10;
    v18 = v9;
    while (1)
    {
      sub_24A508AE4(v9, v17);
      sub_24A508AE4(v9 - 40, v16);
      v12 = sub_24A5B4BB0(v17, v16, a5);
      sub_24A508C54(v16);
      result = sub_24A508C54(v17);
      if (v5)
      {
        break;
      }

      if (v12)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_24A508CA0(v9, v17);
        v13 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v13;
        *(v9 + 32) = *(v9 - 8);
        result = sub_24A508CA0(v17, v9 - 40);
        v9 -= 40;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 40;
      --v10;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_24A5B6E3C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_24A62F5F4();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
        v8 = sub_24A62ED94();
        *(v8 + 16) = v7;
      }

      v10[0] = (v8 + 32);
      v10[1] = v7;
      v9 = v4;
      sub_24A5B6504(v10, v11, a1, v6, v9);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_24A5B6D18(0, v3, 1, a1, v4);
  }
}

void sub_24A5B6F7C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24A5E87E4(v3);
  }

  v5 = v3[2];
  v7[0] = (v3 + 4);
  v7[1] = v5;
  v6 = v4;
  sub_24A5B6E3C(v7, v6);

  *a1 = v3;
}

unint64_t sub_24A5B7014()
{
  result = qword_27EF501E0;
  if (!qword_27EF501E0)
  {
    sub_24A62E214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF501E0);
  }

  return result;
}

__n128 sub_24A5B706C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24A5B7088(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_24A5B70D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24A5B7130()
{
  v0 = [objc_opt_self() whiteColor];
  *&xmmword_27EF5C6B8 = 0xD000000000000012;
  *(&xmmword_27EF5C6B8 + 1) = 0x800000024A641650;
  *&xmmword_27EF5C6C8 = v0;
  *(&xmmword_27EF5C6C8 + 1) = 0x4046000000000000;
  *&result = 2;
  xmmword_27EF5C6D8 = xmmword_24A639920;
  qword_27EF5C6E8 = 0;
  byte_27EF5C6F0 = 0;
  return result;
}

__n128 sub_24A5B71B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24A5B71D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_24A5B722C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_24A5B72B8()
{
  if (!*(v0 + 32))
  {
    type metadata accessor for PFAnimationCoordinator(0);
    v1 = &qword_27EF4F440;
    v2 = type metadata accessor for PFAnimationCoordinator;
    v3 = &unk_24A635090;
LABEL_8:
    sub_24A5BB9D0(v1, v2, v3);
    sub_24A62E454();
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E354();

  if ((v4 & 1) == 0)
  {
    return;
  }

  if (!*(v0 + 16))
  {
    type metadata accessor for VFXManager.Values(0);
    v1 = &qword_27EF50A08;
    v2 = type metadata accessor for VFXManager.Values;
    v3 = &unk_24A63710C;
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E354();
}

void sub_24A5B744C()
{
  if (*(v0 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if (v1 * 57.2957795 <= 0.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();
    }

    else
    {

      sub_24A5B72B8();
    }
  }

  else
  {
    type metadata accessor for VFXManager.Values(0);
    sub_24A5BB9D0(&qword_27EF50A08, type metadata accessor for VFXManager.Values, &unk_24A63710C);
    sub_24A62E454();
    __break(1u);
  }
}

void sub_24A5B75D0()
{
  if (*(v0 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if (v1 * 57.2957795 <= 0.0)
    {

      sub_24A5B72B8();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();
    }
  }

  else
  {
    type metadata accessor for VFXManager.Values(0);
    sub_24A5BB9D0(&qword_27EF50A08, type metadata accessor for VFXManager.Values, &unk_24A63710C);
    sub_24A62E454();
    __break(1u);
  }
}

void sub_24A5B775C()
{
  if (*(v0 + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v1 = *(v0 + 16);
    if (v5)
    {
      if (v1)
      {
        goto LABEL_6;
      }
    }

    else if (v1)
    {
LABEL_6:
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();

      return;
    }

    type metadata accessor for VFXManager.Values(0);
    v2 = &qword_27EF50A08;
    v3 = type metadata accessor for VFXManager.Values;
    v4 = &unk_24A63710C;
  }

  else
  {
    type metadata accessor for PFAnimationCoordinator(0);
    v2 = &qword_27EF4F440;
    v3 = type metadata accessor for PFAnimationCoordinator;
    v4 = &unk_24A635090;
  }

  sub_24A5BB9D0(v2, v3, v4);
  sub_24A62E454();
  __break(1u);
}

void sub_24A5B797C()
{
  if (*(v0 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if (*(v0 + 32))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();

      return;
    }

    type metadata accessor for PFAnimationCoordinator(0);
    v1 = &qword_27EF4F440;
    v2 = type metadata accessor for PFAnimationCoordinator;
    v3 = &unk_24A635090;
  }

  else
  {
    type metadata accessor for VFXManager.Values(0);
    v1 = &qword_27EF50A08;
    v2 = type metadata accessor for VFXManager.Values;
    v3 = &unk_24A63710C;
  }

  sub_24A5BB9D0(v1, v2, v3);
  sub_24A62E454();
  __break(1u);
}

void sub_24A5B7B44()
{
  if (*(v0 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if (*(v0 + 32))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24A62E354();

      return;
    }

    type metadata accessor for PFAnimationCoordinator(0);
    v1 = &qword_27EF4F440;
    v2 = type metadata accessor for PFAnimationCoordinator;
    v3 = &unk_24A635090;
  }

  else
  {
    type metadata accessor for VFXManager.Values(0);
    v1 = &qword_27EF50A08;
    v2 = type metadata accessor for VFXManager.Values;
    v3 = &unk_24A63710C;
  }

  sub_24A5BB9D0(v1, v2, v3);
  sub_24A62E454();
  __break(1u);
}

uint64_t sub_24A5B7D08(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v245 = v3;
  v4 = sub_24A508FA4(&qword_27EF513C0, &qword_24A639A80);
  MEMORY[0x28223BE20](v4);
  v6 = &v226 - v5;
  v309 = sub_24A508FA4(&qword_27EF513C8, &qword_24A639A88);
  MEMORY[0x28223BE20](v309);
  v8 = &v226 - v7;
  v311 = COERCE_DOUBLE(sub_24A508FA4(&qword_27EF513D0, &qword_24A639A90));
  MEMORY[0x28223BE20](*&v311);
  v10 = &v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v226 - v12;
  MEMORY[0x28223BE20](v14);
  v312 = &v226 - v15;
  if (!v2[4])
  {
    type metadata accessor for PFAnimationCoordinator(0);
    v223 = &qword_27EF4F440;
    v224 = type metadata accessor for PFAnimationCoordinator;
    v225 = &unk_24A635090;
    goto LABEL_144;
  }

  swift_retain_n();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_24A62E354();

  v310 = v10;
  if ((v472[0] & 1) == 0)
  {
    if (qword_27EF4EA80 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_139;
  }

  if (qword_27EF4EA78 != -1)
  {
LABEL_139:
    swift_once();
  }

LABEL_6:

  sub_24A62EA64();
  sub_24A62E3F4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v472[0])
  {
    v16 = 360.0;
  }

  else
  {
    v16 = 92.864789;
  }

  sub_24A5B7B44();
  v18 = v17 * 0.0174532925;
  sub_24A62EA64();
  v20 = v19;
  v22 = v21;
  v23 = *(v4 + 36);
  v24 = *MEMORY[0x277CE13B8];
  v25 = sub_24A62EA54();
  (*(*(v25 - 8) + 104))(&v6[v23], v24, v25);
  v26 = v633;
  *v6 = v632;
  *(v6 + 1) = v26;
  *(v6 + 4) = v634;
  *(v6 + 5) = 0x4062C00000000000;
  *(v6 + 6) = v16;
  *(v6 + 7) = v18;
  *(v6 + 8) = v20;
  *(v6 + 9) = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v472[0])
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  sub_24A55B7E0(v6, v8, &qword_27EF513C0, &qword_24A639A80);
  *&v8[*(v309 + 36)] = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v472[0])
  {
    v28 = 0.63;
  }

  else
  {
    v28 = 1.0;
  }

  sub_24A62EA64();
  v30 = v29;
  v32 = v31;
  sub_24A55B7E0(v8, v13, &qword_27EF513C8, &qword_24A639A88);
  v33 = &v13[*(*&v311 + 36)];
  *v33 = v28;
  *(v33 + 1) = v28;
  *(v33 + 2) = v30;
  *(v33 + 3) = v32;
  sub_24A55B7E0(v13, v312, &qword_27EF513D0, &qword_24A639A90);
  v34 = *v2;
  if (!*v2)
  {
    type metadata accessor for VFXManager(0);
    v223 = &qword_27EF4F438;
    v224 = type metadata accessor for VFXManager;
    v225 = &protocol conformance descriptor for VFXManager;
    goto LABEL_144;
  }

  v35 = *(v34 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view);
  if (v35)
  {
    v36 = v35;

    v37 = v36;
    sub_24A62E9C4();
    sub_24A62E434();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v38 = 0.0;
    if (v472[0])
    {
      v38 = 1.0;
    }

    *&v472[56] = v405[3];
    *&v472[72] = v405[4];
    *&v472[88] = v405[5];
    *&v472[104] = v405[6];
    *&v472[8] = v405[0];
    *&v472[24] = v405[1];
    *v472 = v37;
    *&v472[40] = v405[2];
    *&v472[120] = v38;
    nullsub_1();
    v628 = *&v472[64];
    v629 = *&v472[80];
    v630 = *&v472[96];
    v631 = *&v472[112];
    v624 = *v472;
    v625 = *&v472[16];
    v626 = *&v472[32];
    v627 = *&v472[48];
  }

  else
  {

    sub_24A5BB980(&v624);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v290 = v34;
  if (v472[0] == 1)
  {
    if (qword_27EF4EA68 != -1)
    {
      swift_once();
    }

    v39 = &qword_27EF5C740;
  }

  else
  {
    if (qword_27EF4EA70 != -1)
    {
      swift_once();
    }

    v39 = &qword_27EF5C748;
  }

  v40 = *v39;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v41 = 0.0;
  sub_24A62E3C4();
  v42 = sub_24A62E9C4();
  v44 = v43;
  sub_24A62E9C4();
  sub_24A62E3D4();
  sub_24A62EA64();
  v46 = v45;
  v48 = v47;
  sub_24A5B72B8();
  v243 = v49;
  sub_24A62EA64();
  v51 = v50;
  v53 = v52;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v54 = 0.0;
  if (v472[0] == 1)
  {
    if (!v2[2])
    {
      goto LABEL_141;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v54 = cos((*v472 * 57.2957795 + -90.0) * 3.14159265 / 180.0) * -300.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v472[0] == 1)
  {
    if (!v2[2])
    {
      goto LABEL_141;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v41 = sin((*v472 * 57.2957795 + -90.0) * 3.14159265 / 180.0) * -300.0;
  }

  *&v244 = 0x3F91DF46A2529D39;
  v613 = v619;
  v614 = v620;
  v615 = v621;
  v610 = v616;
  v611 = v617;
  v612 = v618;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v55 = v472[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v241) = v472[0];
  sub_24A5B744C();
  v57 = v56;
  sub_24A5B75D0();
  v300 = v58;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v242) = v55;
  if (v472[0] == 1)
  {
    if (qword_27EF4EA68 != -1)
    {
      swift_once();
    }

    v59 = &qword_27EF5C740;
  }

  else
  {
    if (qword_27EF4EA70 != -1)
    {
      swift_once();
    }

    v59 = &qword_27EF5C748;
  }

  v299 = *v59;

  v311 = 0.0;
  sub_24A62E3C4();
  v298 = sub_24A62E9C4();
  v297 = v60;
  sub_24A62E9C4();
  sub_24A62E3D4();
  sub_24A62EA64();
  v296 = v61;
  v295 = v62;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v63 = 0.0;
  if (v472[0] == 1)
  {
    if (!v2[2])
    {
      goto LABEL_141;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    v63 = cos((*v472 * 57.2957795 + -90.0) * 3.14159265 / 180.0) * -300.0;
  }

  v294 = v63;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v472[0] != 1)
  {
    goto LABEL_47;
  }

  if (!v2[2])
  {
LABEL_141:
    type metadata accessor for VFXManager.Values(0);
    v223 = &qword_27EF50A08;
    v224 = type metadata accessor for VFXManager.Values;
    v225 = &unk_24A63710C;
LABEL_144:
    sub_24A5BB9D0(v223, v224, v225);
    result = sub_24A62E454();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E354();

  v311 = sin((*v472 * 57.2957795 + -90.0) * 3.14159265 / 180.0) * -300.0;
LABEL_47:
  v599 = v605;
  v600 = v606;
  v601 = v607;
  v596 = v602;
  v597 = v603;
  v598 = v604;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v240) = v472[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v239) = v472[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v238) = v472[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v309 = v40;
  v308 = v42;
  v307 = v44;
  if (v472[0] == 1)
  {

    v293 = sub_24A62E854();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (v472[0] == 1)
    {
      if (qword_27EF4EA68 != -1)
      {
        swift_once();
      }

      v64 = qword_27EF5C740;
    }

    else
    {
      if (qword_27EF4EA70 != -1)
      {
        swift_once();
      }

      v64 = qword_27EF5C748;
    }

    v293 = v64;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  sub_24A62E3C4();
  v292 = sub_24A62E9C4();
  v291 = v65;
  sub_24A62E9C4();
  sub_24A62E3D4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v249) = v472[0];
  sub_24A62EA64();
  v67 = v66;
  v289 = v68;
  sub_24A5B775C();
  v236 = v69;
  sub_24A62EA64();
  v288 = v70;
  v287 = v71;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v235) = v472[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v257) = v472[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v255) = v472[0];
  v286 = sub_24A62E854();
  sub_24A62E3C4();
  v72 = sub_24A62E9C4();
  v284 = v73;
  v285 = v72;
  sub_24A62E9C4();
  sub_24A62E3D4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v246) = v472[0];
  sub_24A62EA64();
  v282 = v75;
  v283 = v74;
  sub_24A5B797C();
  v258 = v76;
  sub_24A62EA64();
  v280 = v78;
  v281 = v77;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v259) = v472[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  DWORD2(v259) = v472[0];
  v79 = sub_24A62E9C4();
  v278 = v80;
  sub_24A5BB1A4(v2, v472);
  memcpy(v586, v472, sizeof(v586));
  memcpy(v587, v472, sizeof(v587));
  sub_24A50D63C(v586, v405, &qword_27EF513D8, &qword_24A639DB0);
  sub_24A50D6A4(v587, &qword_27EF513D8, &qword_24A639DB0);
  memcpy(v577, v586, sizeof(v577));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (!v2[2])
  {
    goto LABEL_141;
  }

  LODWORD(v251) = v472[0];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E354();

  v253 = *v472;
  sub_24A62EA64();
  v276 = v82;
  v277 = v81;
  memcpy(v576, v577, sizeof(v576));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  sub_24A62E9C4();
  sub_24A62E3D4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v256) = v472[0];
  *&v83 = COERCE_DOUBLE(type metadata accessor for VFXManager(0));
  sub_24A5BB9D0(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
  v229 = *&v83;
  v84 = sub_24A62E474();
  v274 = v85;
  v275 = v84;
  type metadata accessor for VFXManager.Values(0);
  sub_24A5BB9D0(&qword_27EF50A08, type metadata accessor for VFXManager.Values, &unk_24A63710C);
  v86 = sub_24A62E474();
  v272 = v87;
  v273 = v86;
  type metadata accessor for PFAnimationCoordinator(0);
  sub_24A5BB9D0(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator, &unk_24A635090);
  v88 = sub_24A62E474();
  v270 = v89;
  v271 = v88;
  sub_24A62E9C4();
  sub_24A62E3D4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v247) = v472[0];
  sub_24A62EA64();
  v268 = v91;
  v269 = v90;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v279 = v79;
  if (v472[0])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v92 = 0.0634920635;
    if (v472[0])
    {
      v92 = 0.114285714;
    }
  }

  else
  {

    v92 = 1.0;
  }

  v237 = v92;
  sub_24A62EA64();
  v266 = v94;
  v267 = v93;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v248) = v472[0];
  sub_24A62EA64();
  v264 = v96;
  v265 = v95;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v306 = v46;
  v301 = v57;
  if (v472[0] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v97 = *v472 * 300.0;
  }

  else
  {

    v97 = 0.0;
  }

  v263 = v97;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v250) = v472[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v98 = *v472;
  sub_24A62EA64();
  v261 = v100;
  v262 = v99;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v254) = v472[0];
  v234 = sub_24A62E854();
  sub_24A62E9C4();
  sub_24A62E3D4();
  *&v572[3] = v635;
  *&v572[11] = v636;
  *&v572[19] = v637;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  LODWORD(v252) = v472[0];
  sub_24A62EA64();
  v232 = v102;
  v233 = v101;
  sub_24A5B797C();
  v104 = v103;
  sub_24A62EA64();
  v230 = v106;
  v231 = v105;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v107 = v472[0];
  v108 = *(v290 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_findingType);

  v109 = (v108 >> 13) & 3;
  v305 = v51;
  v304 = v53;
  v303 = v41;
  v302 = v54;
  if (v109)
  {
    if (v109 == 1)
    {
      v108 = (v108 >> 8) & 0xFFFFFF9F;
    }

    else if ((v108 & 0x8000) != 0)
    {
      v108 = (v108 >> 8) & 0x1F;
    }

    else
    {
      v108 = v108;
    }
  }

  else
  {
    v108 >>= 8;
  }

  v290 = v67;
  v260 = v48;

  if (v108 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (v472[0])
    {
      v110 = 1.0;
    }

    else
    {
      v110 = 0.0;
    }

    v111 = sub_24A62E844();
    sub_24A62E3C4();
    v112 = sub_24A62E9C4();
    v114 = v113;
    sub_24A62E9C4();
    sub_24A62E3D4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (v472[0])
    {
      v115 = 1.0;
    }

    else
    {
      v115 = 0.0;
    }

    *v472 = 0;
    *&v472[8] = v110;
    *&v472[16] = v445;
    *&v472[32] = v446;
    *&v472[48] = v447;
    *&v472[56] = v111;
    *&v472[64] = 256;
    *&v472[72] = v112;
    *&v472[80] = v114;
    *&v472[120] = *&v332[32];
    *&v472[104] = *&v332[16];
    *&v472[88] = *v332;
    *&v472[136] = v115;
    sub_24A5BBD2C(v472);
  }

  else
  {

    v116 = sub_24A62E474();
    v118 = v117;
    v119 = sub_24A62E474();
    v121 = v120;
    sub_24A62E9C4();
    sub_24A62E3D4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    v122 = 0.0;
    if (v472[0])
    {
      v122 = 1.0;
    }

    *v472 = v116;
    *&v472[8] = v118;
    *&v472[16] = v119;
    *&v472[24] = v121;
    *&v472[32] = *v332;
    *&v472[48] = *&v332[16];
    *&v472[64] = *&v332[32];
    *&v472[80] = v122;
    sub_24A5BBA60(v472);
  }

  v405[6] = *&v472[96];
  v405[7] = *&v472[112];
  v405[8] = *&v472[128];
  LOBYTE(v405[9]) = v472[144];
  v405[2] = *&v472[32];
  v405[3] = *&v472[48];
  v405[4] = *&v472[64];
  v405[5] = *&v472[80];
  v405[0] = *v472;
  v405[1] = *&v472[16];
  sub_24A508FA4(&qword_27EF513E0, &qword_24A63A040);
  sub_24A508FA4(&qword_27EF513E8, &qword_24A63A048);
  sub_24A5BBA6C();
  sub_24A5BBBB0();
  sub_24A62E604();
  if (v107)
  {
    v123 = 1.0;
  }

  else
  {
    v123 = 0.0;
  }

  v228 = v104 * *&v244;
  v229 = v123;
  v124 = 0.6;
  if (LODWORD(v252))
  {
    v125 = 0.6;
  }

  else
  {
    v125 = 1.0;
  }

  v227 = v125;
  if (LODWORD(v254))
  {
    v126 = 1.0;
  }

  else
  {
    v126 = 0.0;
  }

  v254 = v126;
  v252 = v98 * 57.2957795 * *&v244;
  v127 = -150.0;
  if (LODWORD(v250))
  {
    v127 = 0.0;
  }

  v250 = v127;
  v128 = 1.6;
  if (!LODWORD(v248))
  {
    v128 = 1.0;
  }

  v248 = v128;
  v129 = 0.2;
  if (!LODWORD(v247))
  {
    v129 = 1.0;
  }

  v247 = v129;
  if (LODWORD(v256))
  {
    v130 = 1.0;
  }

  else
  {
    v130 = 0.0;
  }

  v256 = v130;
  v253 = v253 * 57.2957795 * *&v244;
  v131 = 300.0;
  if (!LODWORD(v251))
  {
    v131 = 0.0;
  }

  v251 = v131;
  if (DWORD2(v259))
  {
    v132 = 0.0;
  }

  else
  {
    v132 = 1.0;
  }

  if (v259)
  {
    v133 = 1.0;
  }

  else
  {
    v133 = 0.0;
  }

  *&v259 = v133;
  *(&v259 + 1) = v132;
  if (LODWORD(v246))
  {
    v134 = 0.6;
  }

  else
  {
    v134 = 1.0;
  }

  v246 = v134;
  v135 = 0.25;
  if (LODWORD(v255))
  {
    v135 = 1.0;
  }

  v255 = v135;
  if (LODWORD(v257))
  {
    v136 = 0.0;
  }

  else
  {
    v136 = 1.0;
  }

  v257 = v136;
  v258 = v258 * *&v244;
  if (LODWORD(v235))
  {
    v137 = 1.0;
  }

  else
  {
    v137 = 0.0;
  }

  v138 = v236 * *&v244;
  v235 = v137;
  v236 = v236 * *&v244;
  if (!LODWORD(v249))
  {
    v124 = 1.0;
  }

  v249 = v124;
  if (LODWORD(v238))
  {
    v139 = 0.0;
  }

  else
  {
    v139 = 1.0;
  }

  if (LODWORD(v239))
  {
    v140 = 1.0;
  }

  else
  {
    v140 = 0.0;
  }

  v238 = v139;
  v239 = v140;
  if (LODWORD(v240))
  {
    v141 = 0.0;
  }

  else
  {
    v141 = 1.0;
  }

  if (LODWORD(v241))
  {
    v142 = 1.0;
  }

  else
  {
    v142 = 0.0;
  }

  v240 = v141;
  v241 = v142;
  if (LODWORD(v242))
  {
    v143 = 0.0;
  }

  else
  {
    v143 = 1.0;
  }

  v242 = v143;
  v243 = v243 * *&v244;
  v144 = v243;
  v145 = v310;
  sub_24A50D63C(v312, v310, &qword_27EF513D0, &qword_24A639A90);
  v361 = v628;
  v362 = v629;
  v363 = v630;
  v364 = v631;
  v357 = v624;
  v358 = v625;
  v359 = v626;
  v360 = v627;
  v354 = v613;
  v355 = v614;
  v356 = v615;
  v351 = v610;
  v352 = v611;
  v353 = v612;
  v348 = v599;
  v349 = v600;
  v350 = v601;
  v345 = v596;
  v346 = v597;
  v347 = v598;
  v342 = v591;
  v343 = v592;
  v344 = v593;
  v339 = v588;
  v340 = v589;
  v341 = v590;
  v336 = v583;
  v337 = v584;
  v338 = v585;
  v333 = v578;
  v334 = v579;
  v335 = v580;
  memcpy(v332, v576, sizeof(v332));
  v329 = v573;
  v330 = v574;
  v331 = v575;
  v326 = *&v572[27];
  v327 = *&v572[35];
  v328 = *&v572[43];
  v323 = *v572;
  v324 = *&v572[8];
  v325[0] = *&v572[16];
  *(v325 + 14) = *&v572[23];
  v319 = *&v570[29];
  v320 = *&v570[31];
  v321 = *&v570[33];
  v322 = v571;
  v315 = *&v570[21];
  v316 = *&v570[23];
  v317 = *&v570[25];
  v318 = *&v570[27];
  v313 = *&v570[17];
  v314 = *&v570[19];
  v146 = v245;
  sub_24A50D63C(v145, v245, &qword_27EF513D0, &qword_24A639A90);
  v147 = sub_24A508FA4(&qword_27EF51438, &qword_24A63A068);
  v148 = (v146 + v147[12]);
  v149 = v362;
  v365[4] = v361;
  v365[5] = v362;
  v148[4] = v361;
  v148[5] = v149;
  v150 = v364;
  v365[6] = v363;
  v365[7] = v364;
  v148[6] = v363;
  v148[7] = v150;
  v151 = v358;
  v365[0] = v357;
  v365[1] = v358;
  *v148 = v357;
  v148[1] = v151;
  v152 = v360;
  v365[3] = v360;
  v365[2] = v359;
  v148[2] = v359;
  v148[3] = v152;
  v153 = v146 + v147[16];
  v244 = xmmword_24A6399C0;
  v367 = v614;
  v366[0] = xmmword_24A6399C0;
  v366[1] = v613;
  *&v368 = v615;
  *(&v368 + 1) = v309;
  LOWORD(v369) = 256;
  *(&v369 + 2) = v622;
  WORD3(v369) = v623;
  *(&v369 + 1) = v308;
  *&v370[0] = v307;
  *(&v370[2] + 8) = v612;
  *(&v370[1] + 8) = v611;
  *(v370 + 8) = v610;
  *(&v370[3] + 1) = 0xBFF921FB54442D18;
  *&v371 = v306;
  *(&v371 + 1) = v260;
  *&v372 = v144;
  *(&v372 + 1) = v305;
  *&v373 = v304;
  *(&v373 + 1) = v302;
  *&v374 = v303;
  *(&v374 + 1) = v143;
  v375 = v142;
  v154 = v613;
  *v153 = xmmword_24A6399C0;
  *(v153 + 16) = v154;
  v155 = v370[0];
  *(v153 + 64) = v369;
  *(v153 + 80) = v155;
  v156 = v368;
  *(v153 + 32) = v367;
  *(v153 + 48) = v156;
  v157 = v371;
  *(v153 + 128) = v370[3];
  *(v153 + 144) = v157;
  v158 = v370[2];
  *(v153 + 96) = v370[1];
  *(v153 + 112) = v158;
  v159 = v374;
  v160 = v372;
  v161 = v373;
  *(v153 + 208) = v375;
  *(v153 + 176) = v161;
  *(v153 + 192) = v159;
  *(v153 + 160) = v160;
  v162 = (v146 + v147[20]);
  *&v376 = v301;
  *(&v376 + 1) = v300;
  v377 = v599;
  v378 = v600;
  *&v379 = v601;
  *(&v379 + 1) = v299;
  LOWORD(v380) = 256;
  *(&v380 + 2) = v608;
  WORD3(v380) = v609;
  *(&v380 + 1) = v298;
  *&v381[0] = v297;
  *(&v381[2] + 8) = v598;
  *(&v381[1] + 8) = v597;
  *(v381 + 8) = v596;
  *(&v381[3] + 1) = 0xBFF921FB54442D18;
  *&v382 = v296;
  *(&v382 + 1) = v295;
  *&v383 = v294;
  *(&v383 + 1) = v311;
  *&v384 = v141;
  *(&v384 + 1) = v140;
  v163 = v379;
  v162[2] = v600;
  v162[3] = v163;
  v164 = v377;
  *v162 = v376;
  v162[1] = v164;
  v165 = v381[2];
  v162[6] = v381[1];
  v162[7] = v165;
  v166 = v381[0];
  v162[4] = v380;
  v162[5] = v166;
  v167 = v384;
  v162[10] = v383;
  v162[11] = v167;
  v168 = v382;
  v162[8] = v381[3];
  v162[9] = v168;
  v169 = (v146 + v147[24]);
  *&v385 = 0;
  *(&v385 + 1) = v139;
  v386 = v591;
  v387 = v592;
  *&v388 = v593;
  *(&v388 + 1) = v293;
  LOWORD(v389) = 256;
  *(&v389 + 2) = v594;
  WORD3(v389) = v595;
  *(&v389 + 1) = v292;
  *&v390[0] = v291;
  *(&v390[2] + 8) = v590;
  *(&v390[1] + 8) = v589;
  *(v390 + 8) = v588;
  *(&v390[3] + 1) = v249;
  *&v391 = v249;
  *(&v391 + 1) = v290;
  *&v392 = v289;
  *(&v392 + 1) = v138;
  *&v393 = v288;
  *(&v393 + 1) = v287;
  *&v394 = v137;
  *(&v394 + 1) = v257;
  v170 = v388;
  v169[2] = v592;
  v169[3] = v170;
  v171 = v386;
  *v169 = v385;
  v169[1] = v171;
  v172 = v390[2];
  v169[6] = v390[1];
  v169[7] = v172;
  v173 = v390[0];
  v169[4] = v389;
  v169[5] = v173;
  v174 = v394;
  v175 = v392;
  v169[11] = v393;
  v169[12] = v174;
  v176 = v391;
  v169[8] = v390[3];
  v169[9] = v176;
  v169[10] = v175;
  v177 = (v146 + v147[28]);
  *&v395 = 0;
  *(&v395 + 1) = v255;
  v396 = v583;
  v397 = v584;
  *&v398 = v585;
  *(&v398 + 1) = v286;
  LOWORD(v399) = 256;
  *(&v399 + 2) = v581;
  WORD3(v399) = v582;
  *(&v399 + 1) = v285;
  *&v400[0] = v284;
  *(&v400[2] + 8) = v580;
  *(&v400[1] + 8) = v579;
  *(v400 + 8) = v578;
  *(&v400[3] + 1) = v246;
  *&v401 = v246;
  *(&v401 + 1) = v283;
  *&v402 = v282;
  *(&v402 + 1) = v258;
  *&v403 = v281;
  *(&v403 + 1) = v280;
  v404 = v259;
  v178 = v398;
  v177[2] = v584;
  v177[3] = v178;
  v179 = v396;
  *v177 = v395;
  v177[1] = v179;
  v180 = v400[2];
  v177[6] = v400[1];
  v177[7] = v180;
  v181 = v400[0];
  v177[4] = v399;
  v177[5] = v181;
  v182 = v404;
  v183 = v402;
  v177[11] = v403;
  v177[12] = v182;
  v184 = v401;
  v177[8] = v400[3];
  v177[9] = v184;
  v177[10] = v183;
  v185 = v147[32];
  *&v405[0] = v279;
  *(&v405[0] + 1) = v278;
  memcpy(&v405[1], v576, 0x128uLL);
  *(&v405[19] + 1) = 0;
  *&v405[20] = v251;
  *(&v405[20] + 1) = v253;
  *&v405[21] = v277;
  *(&v405[21] + 1) = v276;
  v405[22] = v573;
  v405[23] = v574;
  v405[24] = v575;
  *&v405[25] = v256;
  memcpy((v146 + v185), v405, 0x198uLL);
  v186 = (v146 + v147[36]);
  *&v406 = v275;
  *(&v406 + 1) = v274;
  *&v407 = v273;
  *(&v407 + 1) = v272;
  *&v408 = v271;
  *(&v408 + 1) = v270;
  v409 = v326;
  v410 = v327;
  v411 = v328;
  *&v412 = v247;
  *(&v412 + 1) = v247;
  *&v413 = v269;
  *(&v413 + 1) = v268;
  v187 = v237;
  *&v414 = v237;
  *(&v414 + 1) = v237;
  *&v415 = v267;
  *(&v415 + 1) = v266;
  *&v416 = v248;
  *(&v416 + 1) = v248;
  *&v417 = v265;
  *(&v417 + 1) = v264;
  *&v418 = 0;
  *(&v418 + 1) = v263;
  *&v419 = 0;
  *(&v419 + 1) = v250;
  *&v420 = v252;
  *(&v420 + 1) = v262;
  *&v421 = v261;
  *(&v421 + 1) = v254;
  v188 = v406;
  v189 = v407;
  v190 = v326;
  v186[2] = v408;
  v186[3] = v190;
  *v186 = v188;
  v186[1] = v189;
  v191 = v410;
  v192 = v411;
  v193 = v413;
  v186[6] = v412;
  v186[7] = v193;
  v186[4] = v191;
  v186[5] = v192;
  v194 = v414;
  v195 = v415;
  v196 = v417;
  v186[10] = v416;
  v186[11] = v196;
  v186[8] = v194;
  v186[9] = v195;
  v197 = v418;
  v198 = v419;
  v199 = v421;
  v186[14] = v420;
  v186[15] = v199;
  v186[12] = v197;
  v186[13] = v198;
  v200 = (v146 + v147[40]);
  v201 = v234;
  *&v422[0] = v234;
  WORD4(v422[0]) = 256;
  *(v422 + 10) = v323;
  *(&v422[1] + 10) = v324;
  *(&v422[2] + 10) = v325[0];
  *(&v422[3] + 1) = *(v325 + 14);
  v202 = v227;
  v203 = v228;
  *&v423 = v227;
  *(&v423 + 1) = v227;
  v204 = v232;
  v205 = v233;
  *&v424 = v233;
  *(&v424 + 1) = v232;
  *&v425 = v228;
  v207 = v230;
  v206 = v231;
  *(&v425 + 1) = v231;
  *&v426 = v230;
  v208 = v229;
  *(&v426 + 1) = v229;
  v209 = v424;
  v200[4] = v423;
  v200[5] = v209;
  v210 = v426;
  v200[6] = v425;
  v200[7] = v210;
  v211 = v422[1];
  *v200 = v422[0];
  v200[1] = v211;
  v212 = v422[3];
  v200[2] = v422[2];
  v200[3] = v212;
  v213 = v313;
  v214 = v314;
  v427[1] = v314;
  v427[0] = v313;
  v215 = v317;
  v216 = v318;
  v427[5] = v318;
  v427[4] = v317;
  v217 = v315;
  v218 = v316;
  v427[3] = v316;
  v427[2] = v315;
  v220 = v320;
  v219 = v321;
  v427[8] = v321;
  v427[7] = v320;
  v427[6] = v319;
  v221 = v146 + v147[44];
  *(v221 + 96) = v319;
  *(v221 + 112) = v220;
  *(v221 + 128) = v219;
  *(v221 + 32) = v217;
  *(v221 + 48) = v218;
  v428 = v322;
  *(v221 + 144) = v322;
  *(v221 + 64) = v215;
  *(v221 + 80) = v216;
  *v221 = v213;
  *(v221 + 16) = v214;
  sub_24A50D63C(v365, v472, &qword_27EF51440, &qword_24A63A070);
  sub_24A50D63C(v366, v472, &qword_27EF51448, &qword_24A63A078);
  sub_24A50D63C(&v376, v472, &qword_27EF51450, &qword_24A63A080);
  sub_24A50D63C(&v385, v472, &qword_27EF51458, &qword_24A63A088);
  sub_24A50D63C(&v395, v472, &qword_27EF51458, &qword_24A63A088);
  sub_24A50D63C(v405, v472, &qword_27EF51460, &qword_24A63A090);
  sub_24A50D63C(&v406, v472, &qword_27EF51468, &qword_24A63A098);
  sub_24A50D63C(v422, v472, &qword_27EF51470, &qword_24A63A0A0);
  sub_24A50D63C(v427, v472, &qword_27EF51478, &qword_24A63A0A8);
  sub_24A50D6A4(v312, &qword_27EF513D0, &qword_24A639A90);
  v429[6] = v319;
  v429[7] = v320;
  v429[8] = v321;
  v430 = v322;
  v429[2] = v315;
  v429[3] = v316;
  v429[4] = v317;
  v429[5] = v318;
  v429[0] = v313;
  v429[1] = v314;
  sub_24A50D6A4(v429, &qword_27EF51478, &qword_24A63A0A8);
  v434 = v323;
  v431 = v201;
  v432 = 0;
  v433 = 1;
  v435 = v324;
  *v436 = v325[0];
  *&v436[14] = *(v325 + 14);
  v437 = v202;
  v438 = v202;
  v439 = v205;
  v440 = v204;
  v441 = v203;
  v442 = v206;
  v443 = v207;
  v444 = v208;
  sub_24A50D6A4(&v431, &qword_27EF51470, &qword_24A63A0A0);
  *&v445 = v275;
  *(&v445 + 1) = v274;
  *&v446 = v273;
  *(&v446 + 1) = v272;
  v447 = v271;
  v448 = v270;
  v449 = v326;
  v450 = v327;
  v451 = v328;
  v452 = v247;
  v453 = v247;
  v454 = v269;
  v455 = v268;
  v456 = v187;
  v457 = v187;
  v458 = v267;
  v459 = v266;
  v460 = v248;
  v461 = v248;
  v462 = v265;
  v463 = v264;
  v464 = 0;
  v465 = v263;
  v466 = 0;
  v467 = v250;
  v468 = v252;
  v469 = v262;
  v470 = v261;
  v471 = v254;
  sub_24A50D6A4(&v445, &qword_27EF51468, &qword_24A63A098);
  *v472 = v279;
  *&v472[8] = v278;
  memcpy(&v472[16], v332, 0x128uLL);
  v473 = 0;
  v474 = v251;
  v475 = v253;
  v476 = v277;
  v477 = v276;
  v478 = v329;
  v479 = v330;
  v480 = v331;
  v481 = v256;
  sub_24A50D6A4(v472, &qword_27EF51460, &qword_24A63A090);
  v482[0] = 0;
  *&v482[1] = v255;
  v483 = v336;
  v484 = v337;
  v485 = v338;
  v486 = v286;
  v487 = 0;
  v488 = 1;
  v489 = v581;
  v490 = v582;
  v491 = v285;
  v492 = v284;
  v495 = v335;
  v494 = v334;
  v493 = v333;
  v496 = v246;
  v497 = v246;
  v498 = v283;
  v499 = v282;
  v500 = v258;
  v501 = v281;
  v502 = v280;
  v503 = v259;
  sub_24A50D6A4(v482, &qword_27EF51458, &qword_24A63A088);
  v504[0] = 0;
  *&v504[1] = v238;
  v505 = v342;
  v506 = v343;
  v507 = v344;
  v508 = v293;
  v509 = 0;
  v510 = 1;
  v511 = v594;
  v512 = v595;
  v513 = v292;
  v514 = v291;
  v517 = v341;
  v516 = v340;
  v515 = v339;
  v518 = v249;
  v519 = v249;
  v520 = v290;
  v521 = v289;
  v522 = v236;
  v523 = v288;
  v524 = v287;
  v525 = v235;
  v526 = v257;
  sub_24A50D6A4(v504, &qword_27EF51458, &qword_24A63A088);
  v527[0] = v301;
  v527[1] = v300;
  v528 = v348;
  v529 = v349;
  v530 = v350;
  v531 = v299;
  v532 = 0;
  v533 = 1;
  v534 = v608;
  v535 = v609;
  v536 = v298;
  v537 = v297;
  v540 = v347;
  v539 = v346;
  v538 = v345;
  v541 = 0xBFF921FB54442D18;
  v542 = v296;
  v543 = v295;
  v544 = v294;
  v545 = v311;
  v546 = v240;
  v547 = v239;
  sub_24A50D6A4(v527, &qword_27EF51450, &qword_24A63A080);
  v548[0] = v244;
  v548[1] = v354;
  v548[2] = v355;
  v549 = v356;
  v550 = v309;
  v551 = 0;
  v552 = 1;
  v553 = v622;
  v554 = v623;
  v555 = v308;
  v556 = v307;
  v559 = v353;
  v558 = v352;
  v557 = v351;
  v560 = 0xBFF921FB54442D18;
  v561 = v306;
  v562 = v260;
  v563 = v243;
  v564 = v305;
  v565 = v304;
  v566 = v302;
  v567 = v303;
  v568 = v242;
  v569 = v241;
  sub_24A50D6A4(v548, &qword_27EF51448, &qword_24A63A078);
  *&v570[8] = v361;
  *&v570[10] = v362;
  *&v570[12] = v363;
  *&v570[14] = v364;
  *v570 = v357;
  *&v570[2] = v358;
  *&v570[4] = v359;
  *&v570[6] = v360;
  sub_24A50D6A4(v570, &qword_27EF51440, &qword_24A63A070);
  return sub_24A50D6A4(v310, &qword_27EF513D0, &qword_24A639A90);
}

uint64_t sub_24A5BB1A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 32))
  {
    type metadata accessor for PFAnimationCoordinator(0);
    sub_24A5BB9D0(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator, &unk_24A635090);
    result = sub_24A62E454();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_24A62E354();

  if (v42[0])
  {
    if (qword_27EF4EA88 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (qword_27EF4EA80 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_6:

  sub_24A62EA64();
  v4 = 0.0;
  sub_24A62E3F4();
  v5 = sub_24A62E9C4();
  v7 = v6;
  sub_24A5BB71C(a1, &v17);
  *&v43[0] = v5;
  *(&v43[0] + 1) = v7;
  v43[7] = v23;
  v43[8] = v24;
  v43[9] = v25;
  v43[3] = v19;
  v43[4] = v20;
  v43[5] = v21;
  v43[6] = v22;
  v43[1] = v17;
  v43[2] = v18;
  *&v58[120] = v23;
  *&v58[56] = v19;
  *&v58[136] = v24;
  *&v58[152] = v25;
  *&v58[72] = v20;
  *&v58[88] = v21;
  *&v58[104] = v22;
  *&v58[8] = v43[0];
  *&v58[24] = v17;
  *&v58[40] = v18;
  v52 = v23;
  v53 = v24;
  v54 = v25;
  v48 = v19;
  v49 = v20;
  v44 = v26;
  *&v58[168] = v26;
  v45[0] = v5;
  v45[1] = v7;
  v55 = v26;
  v50 = v21;
  v51 = v22;
  v46 = v17;
  v47 = v18;
  sub_24A50D63C(v43, v42, &qword_27EF51480, &qword_24A63A188);
  sub_24A50D6A4(v45, &qword_27EF51480, &qword_24A63A188);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (LOBYTE(v42[0]))
  {
    v4 = 1.0;
  }

  v8 = sub_24A62E854();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  sub_24A62E3C4();
  v9 = sub_24A62E9C4();
  v11 = v10;
  v27 = *&v58[128];
  v28 = *&v58[144];
  v29 = *&v58[160];
  v23 = *&v58[64];
  v24 = *&v58[80];
  v25 = *&v58[96];
  v26 = *&v58[112];
  v19 = *v58;
  v20 = *&v58[16];
  v21 = *&v58[32];
  v22 = *&v58[48];
  v17 = v56;
  v18 = v57;
  *&v13[160] = *&v58[128];
  *&v13[176] = *&v58[144];
  *&v13[96] = *&v58[64];
  *&v13[112] = *&v58[80];
  *&v13[128] = *&v58[96];
  *&v13[144] = *&v58[112];
  *&v13[32] = *v58;
  *&v13[48] = *&v58[16];
  *&v13[64] = *&v58[32];
  *&v13[80] = *&v58[48];
  *v13 = v56;
  *&v13[16] = v57;
  *v30 = v4;
  *(&v30[0] + 1) = 0x403E000000000000;
  v30[1] = v14;
  v30[2] = v15;
  *&v31 = v16;
  *(&v31 + 1) = v8;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v9;
  v33 = v10;
  *&v13[288] = v10;
  *&v13[224] = v14;
  *&v13[240] = v15;
  *&v13[192] = *&v58[160];
  *&v13[208] = v30[0];
  *&v13[256] = v31;
  *&v13[272] = v32;
  memcpy(a2, v13, 0x128uLL);
  *v34 = v4;
  v35 = v14;
  v36 = v15;
  v34[1] = 0x403E000000000000;
  v37 = v16;
  v38 = v8;
  v39 = 256;
  v40 = v9;
  v41 = v11;
  sub_24A50D63C(&v17, v42, &qword_27EF51488, &qword_24A63A190);
  sub_24A50D63C(v30, v42, &qword_27EF51490, &qword_24A63A198);
  sub_24A50D6A4(v34, &qword_27EF51490, &qword_24A63A198);
  v42[10] = *&v58[128];
  v42[11] = *&v58[144];
  v42[12] = *&v58[160];
  v42[6] = *&v58[64];
  v42[7] = *&v58[80];
  v42[8] = *&v58[96];
  v42[9] = *&v58[112];
  v42[2] = *v58;
  v42[3] = *&v58[16];
  v42[4] = *&v58[32];
  v42[5] = *&v58[48];
  v42[0] = v56;
  v42[1] = v57;
  return sub_24A50D6A4(v42, &qword_27EF51488, &qword_24A63A190);
}

uint64_t sub_24A5BB71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24A62E354();

    if (v8)
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }

    v4 = sub_24A62E854();
    v5 = sub_24A62E854();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    sub_24A62E3C4();
    result = sub_24A62E9C4();
    *a2 = v3;
    *(a2 + 8) = xmmword_24A6399D0;
    *(a2 + 24) = 0x403E000000000000;
    *(a2 + 32) = v8;
    *(a2 + 48) = v9;
    *(a2 + 64) = v10;
    *(a2 + 72) = v5;
    *(a2 + 80) = 256;
    *(a2 + 88) = v3;
    *(a2 + 96) = xmmword_24A6399D0;
    *(a2 + 112) = 0x403E000000000000;
    *(a2 + 120) = v4;
    *(a2 + 128) = 256;
    *(a2 + 136) = result;
    *(a2 + 144) = v7;
  }

  else
  {
    type metadata accessor for PFAnimationCoordinator(0);
    sub_24A5BB9D0(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator, &unk_24A635090);
    result = sub_24A62E454();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A5BB8F4@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = *(v2 + 32);
  v8 = *(v2 + 48);
  *a2 = sub_24A62E9C4();
  a2[1] = v5;
  sub_24A508FA4(&qword_27EF513B8, &qword_24A639A78);
  return sub_24A5B7D08(v7);
}

double sub_24A5BB980(_OWORD *a1)
{
  result = 0.0;
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

uint64_t sub_24A5BB9D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A5BBA6C()
{
  result = qword_27EF513F0;
  if (!qword_27EF513F0)
  {
    sub_24A50E1E0(&qword_27EF513E0, &qword_24A63A040);
    sub_24A5BBAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF513F0);
  }

  return result;
}

unint64_t sub_24A5BBAF8()
{
  result = qword_27EF513F8;
  if (!qword_27EF513F8)
  {
    sub_24A50E1E0(&qword_27EF51400, &qword_24A63A050);
    sub_24A518A6C(&qword_27EF51408, &qword_27EF51410, &qword_24A63A058, MEMORY[0x277CDFB00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF513F8);
  }

  return result;
}

unint64_t sub_24A5BBBB0()
{
  result = qword_27EF51418;
  if (!qword_27EF51418)
  {
    sub_24A50E1E0(&qword_27EF513E8, &qword_24A63A048);
    sub_24A5BBC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51418);
  }

  return result;
}

unint64_t sub_24A5BBC3C()
{
  result = qword_27EF51420;
  if (!qword_27EF51420)
  {
    sub_24A50E1E0(&qword_27EF51428, &qword_24A63A060);
    sub_24A5BBCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51420);
  }

  return result;
}

unint64_t sub_24A5BBCC8()
{
  result = qword_27EF51430;
  if (!qword_27EF51430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF51430);
  }

  return result;
}

unint64_t sub_24A5BBD90()
{
  result = sub_24A59D20C(MEMORY[0x277D84F90]);
  qword_27EF5C6F8 = result;
  return result;
}

uint64_t sub_24A5BBDB8(void *a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&qword_27EF514D8, &qword_24A63A290);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  sub_24A50A204(a1, a1[3]);
  sub_24A5BC9DC();
  sub_24A62F774();
  v9[1] = a2;
  sub_24A508FA4(&qword_27EF514B8, &qword_24A63A288);
  sub_24A5BCAD8(&qword_27EF514E0, sub_24A5BCB68, sub_24A5BCBBC, MEMORY[0x277D83508]);
  sub_24A62F5D4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24A5BBF58(void *a1)
{
  v3 = v1;
  v5 = sub_24A508FA4(&qword_27EF51520, &qword_24A63A470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_24A50A204(a1, a1[3]);
  sub_24A5BD240();
  sub_24A62F774();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_24A5B115C();
  sub_24A62F5D4();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v3[1];
  HIBYTE(v10) = 1;
  sub_24A62F5D4();
  v11 = v3[2];
  HIBYTE(v10) = 2;
  sub_24A62F5D4();
  LOBYTE(v11) = 3;
  sub_24A62F5B4();
  LOBYTE(v11) = 4;
  sub_24A62F5A4();
  return (*(v6 + 8))(v8, v5);
}

void sub_24A5BC190(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736574617473 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_24A62F634();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_24A5BC214(uint64_t a1)
{
  v2 = sub_24A5BC9DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5BC250(uint64_t a1)
{
  v2 = sub_24A5BC9DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24A5BC28C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24A5BC814(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A5BC2E0()
{
  v1 = *v0;
  v2 = 0x7463614665646F6ELL;
  v3 = 0x6361704F676E6972;
  v4 = 0x6F46636974706168;
  if (v1 != 3)
  {
    v4 = 0x72655065736C7570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74636146676E6972;
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

uint64_t sub_24A5BC394@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A5BCDE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A5BC3C8(uint64_t a1)
{
  v2 = sub_24A5BD240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A5BC404(uint64_t a1)
{
  v2 = sub_24A5BD240();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A5BC440@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A5BCFB4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_24A5BC4E8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v4 << 6);
LABEL_15:
      v15 = *(v3 + 56);
      v16 = *(v3 + 48) + 104 * v10;
      v18 = *(v16 + 16);
      v17 = *(v16 + 32);
      v40[0] = *v16;
      v40[1] = v18;
      v40[2] = v17;
      v20 = *(v16 + 64);
      v19 = *(v16 + 80);
      v21 = *(v16 + 48);
      *(v41 + 13) = *(v16 + 93);
      v40[4] = v20;
      v41[0] = v19;
      v40[3] = v21;
      v22 = (v15 + 40 * v10);
      *&v19 = *(v22 + 2);
      LODWORD(v20) = *(v22 + 6);
      *&v21 = *(v22 + 4);
      v23 = *v22;
      v24 = *(v16 + 16);
      v42 = *v16;
      v43 = v24;
      v25 = *(v16 + 32);
      v26 = *(v16 + 48);
      v27 = *(v16 + 64);
      v28 = *(v16 + 80);
      *&v47[13] = *(v16 + 93);
      v46 = v27;
      *v47 = v28;
      v44 = v25;
      v45 = v26;
      v48 = v42;
      v49 = v43;
      v50 = v25;
      v51 = v26;
      v52 = v27;
      v53 = v28;
      v54 = *&v47[16];
      v55 = v23;
      v56 = *&v19;
      v57 = *&v20;
      v59 = *&v21;
      nullsub_1();
      sub_24A508CE4(v40, v39);
      v64 = v52;
      *v65 = v53;
      *&v65[16] = v54;
      v60 = v48;
      v61 = v49;
      v62 = v50;
      v63 = v51;
      v29 = *(&v55 + 1);
      v30 = *&v55;
      v31 = v56;
      v32 = v57;
      v33 = v58;
      v12 = v4;
LABEL_16:
      v34 = v59;
      v52 = v64;
      v53 = *v65;
      v54 = *&v65[16];
      v48 = v60;
      v49 = v61;
      v50 = v62;
      v51 = v63;
      *&v55 = v30;
      *(&v55 + 1) = v29;
      v56 = v31;
      v57 = v32;
      v58 = v33;
      result = sub_24A5BCC10(&v48);
      if (result == 1)
      {
        break;
      }

      v66[3] = v63;
      v66[4] = v64;
      v67[0] = *v65;
      *(v67 + 13) = *&v65[13];
      v66[0] = v60;
      v66[1] = v61;
      v66[2] = v62;
      v35 = sub_24A515A5C(v66);
      v37 = v36;
      result = sub_24A517ABC(v66);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      v38 = *(a2 + 56) + 40 * v35;
      if (*v38 != v30 || *(v38 + 8) != v29 || *(v38 + 16) != v31 || *(v38 + 24) != v32 || *(v38 + 32) != v34)
      {
        return 0;
      }

      v4 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v4 + 1)
    {
      v11 = v4 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_24A5BCC30(&v48);
        v7 = 0;
        v64 = v52;
        *v65 = v53;
        *&v65[16] = v54;
        v60 = v48;
        v61 = v49;
        v62 = v50;
        v63 = v51;
        v29 = *(&v55 + 1);
        v30 = *&v55;
        v31 = v56;
        v32 = v57;
        v33 = v58;
        goto LABEL_16;
      }

      v14 = *(v3 + 64 + 8 * v13);
      ++v4;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_24A5BC814(void *a1)
{
  v3 = sub_24A508FA4(&qword_27EF514A8, &qword_24A63A280);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = sub_24A50A204(a1, a1[3]);
  sub_24A5BC9DC();
  sub_24A62F764();
  if (v1)
  {
    sub_24A508C54(a1);
  }

  else
  {
    sub_24A508FA4(&qword_27EF514B8, &qword_24A63A288);
    sub_24A5BCAD8(&qword_27EF514C0, sub_24A5BCA30, sub_24A5BCA84, MEMORY[0x277D83528]);
    sub_24A62F544();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_24A508C54(a1);
  }

  return v7;
}

unint64_t sub_24A5BC9DC()
{
  result = qword_27EF514B0;
  if (!qword_27EF514B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514B0);
  }

  return result;
}

unint64_t sub_24A5BCA30()
{
  result = qword_27EF514C8;
  if (!qword_27EF514C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514C8);
  }

  return result;
}

unint64_t sub_24A5BCA84()
{
  result = qword_27EF514D0;
  if (!qword_27EF514D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514D0);
  }

  return result;
}

uint64_t sub_24A5BCAD8(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_24A50E1E0(&qword_27EF514B8, &qword_24A63A288);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A5BCB68()
{
  result = qword_27EF514E8;
  if (!qword_27EF514E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514E8);
  }

  return result;
}

unint64_t sub_24A5BCBBC()
{
  result = qword_27EF514F0;
  if (!qword_27EF514F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF514F0);
  }

  return result;
}