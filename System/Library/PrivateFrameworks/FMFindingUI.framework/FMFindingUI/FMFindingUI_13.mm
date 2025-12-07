double sub_24A623D48@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24A623878(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

double sub_24A623D94@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_24A623DA0(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_24A623DAC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_24A623DD8;
}

double sub_24A623DD8(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_24A623DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A624760();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24A623E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A624760();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24A623EB4(uint64_t a1)
{
  v2 = sub_24A624760();

  return MEMORY[0x282133738](a1, v2);
}

double sub_24A623F00@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a7@<D5>, double a8@<D6>)
{
  sub_24A62E764();
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMidX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMidY(v22);
  v16 = a8 / a7 * 0.25;
  __sincos_stret(-0.785398163 - v16);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetMidX(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMidX(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMidX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMidX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMaxX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetMidX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetMidY(v29);
  __sincos_stret(v16 + 0.785398163);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetMidX(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetMidX(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetMidX(v32);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetMidX(v33);
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetMidX(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMidY(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetMidX(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxY(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMaxX(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetMidX(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetMidX(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetMidX(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  CGRectGetMaxX(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  CGRectGetMidX(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  CGRectGetMidX(v44);
  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = a4;
  v45.size.height = a5;
  CGRectGetMidX(v45);
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  CGRectGetMaxX(v46);
  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = a4;
  v47.size.height = a5;
  CGRectGetMidX(v47);
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  CGRectGetMidX(v48);
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = a5;
  CGRectGetMidX(v49);
  v50.origin.x = a2;
  v50.origin.y = a3;
  v50.size.width = a4;
  v50.size.height = a5;
  CGRectGetMidX(v50);
  v51.origin.x = a2;
  v51.origin.y = a3;
  v51.size.width = a4;
  v51.size.height = a5;
  CGRectGetMaxY(v51);
  sub_24A62E724();
  sub_24A62E744();
  sub_24A62E714();
  sub_24A62E744();
  result = *&v18;
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  return result;
}

double sub_24A6243E4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_24A623F00(v9, a2, a3, a4, a5, *(v5 + 8), *(v5 + 16));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double (*sub_24A624430(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_24A624864;
}

uint64_t sub_24A62445C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A6247B4();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24A6244C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A6247B4();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24A624524(uint64_t a1)
{
  v2 = sub_24A6247B4();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24A624580()
{
  result = qword_27EF52530;
  if (!qword_27EF52530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52530);
  }

  return result;
}

unint64_t sub_24A6245D8()
{
  result = qword_27EF52538;
  if (!qword_27EF52538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52538);
  }

  return result;
}

uint64_t sub_24A62465C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A50E1E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A6246B4()
{
  result = qword_27EF52550;
  if (!qword_27EF52550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52550);
  }

  return result;
}

unint64_t sub_24A62470C()
{
  result = qword_27EF52558;
  if (!qword_27EF52558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52558);
  }

  return result;
}

unint64_t sub_24A624760()
{
  result = qword_27EF52560;
  if (!qword_27EF52560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52560);
  }

  return result;
}

unint64_t sub_24A6247B4()
{
  result = qword_27EF52568;
  if (!qword_27EF52568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52568);
  }

  return result;
}

unint64_t sub_24A624808()
{
  result = qword_27EF52570;
  if (!qword_27EF52570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52570);
  }

  return result;
}

uint64_t sub_24A6248C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24A62492C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_24A5931C0;
}

char *FMProximityConnectionManager.init(findables:connectionContext:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_27EF4E9C8 != -1)
  {
    swift_once();
  }

  v5 = qword_27EF5C218;
  *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_nearbyInteractionManager) = qword_27EF5C218;
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
    _os_log_impl(&dword_24A503000, v11, v12, "FMProximityConnectionManager: initialized for items: %s", v13, 0xCu);
    sub_24A508C54(v14);
    MEMORY[0x24C21BBE0](v14, -1, -1);
    MEMORY[0x24C21BBE0](v13, -1, -1);
  }

  return v9;
}

void sub_24A624C24()
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

    v24 = v2;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock[0] = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x24C21A690](*(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_identifiers), MEMORY[0x277D837D0]);
      v9 = sub_24A509BA8(v7, v8, aBlock);

      *(v5 + 4) = v9;
      v2 = v24;
      _os_log_impl(&dword_24A503000, v3, v4, "FMProximityConnectionManager: requesting connection for items: %s", v5, 0xCu);
      sub_24A508C54(v6);
      MEMORY[0x24C21BBE0](v6, -1, -1);
      MEMORY[0x24C21BBE0](v5, -1, -1);
    }

    v10 = *(v2 + OBJC_IVAR____TtC11FMFindingUI19FMConnectionManager_findables);
    v11 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v23 = OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_nearbyInteractionManager;
    v13 = v10 + 32;
    while (1)
    {
      v25 = v12;
      v14 = sub_24A508AE4(v13, v28);
      v15 = *(v2 + v23);
      MEMORY[0x28223BE20](v14);
      type metadata accessor for FMNearbyInteractionManagerSubscription(0);
      v16 = v15;
      sub_24A62F024();

      v17 = *(v2 + v23);
      v18 = *&v17[OBJC_IVAR____TtC11FMFindingUI26FMNearbyInteractionManager_serialQueue];
      sub_24A508AE4(v28, v27);
      v0 = swift_allocObject();
      sub_24A508CA0(v27, (v0 + 2));
      v0[7] = v17;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_24A594B48;
      *(v19 + 24) = v0;
      aBlock[4] = sub_24A517E48;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A592ED8;
      aBlock[3] = &unk_285DAB640;
      v20 = _Block_copy(aBlock);
      v21 = v17;

      dispatch_sync(v18, v20);
      _Block_release(v20);
      sub_24A508C54(v28);

      LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

      if (v20)
      {
        break;
      }

      MEMORY[0x24C21A660](v22);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A62ED84();
      }

      sub_24A62EDA4();
      v13 += 40;
      v12 = v25 - 1;
      v2 = v24;
      if (v25 == 1)
      {
        v11 = v29;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

LABEL_11:
  *(v2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions) = v11;
}

void sub_24A62509C()
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
      _os_log_impl(&dword_24A503000, v3, v4, "FMProximityConnectionManager: requesting disconnection for items: %s", v5, 0xCu);
      sub_24A508C54(v6);
      MEMORY[0x24C21BBE0](v6, -1, -1);
      MEMORY[0x24C21BBE0](v5, -1, -1);
    }

    v10 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions];
    if (v10 >> 62)
    {
      v25 = *&v2[OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_subscriptions];
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
    v29 = OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_nearbyInteractionManager;
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
      aBlock[3] = &unk_285DAB6B8;
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

uint64_t sub_24A625428()
{

  v1 = v0 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;

  return sub_24A52358C(v1);
}

id FMProximityConnectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMProximityConnectionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24A625508(unsigned __int8 a1)
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
    _os_log_impl(&dword_24A503000, v4, v5, "FMProximityConnectionManager: entered state: %s", v6, 0xCu);
    sub_24A508C54(v7);
    MEMORY[0x24C21BBE0](v7, -1, -1);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  if (a1)
  {
    v17 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
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
      _os_log_impl(&dword_24A503000, oslog, v20, "FMProximityConnectionManager: ignoring unknown state, waiting for a decision to be made before forwarding.", v21, 2u);
      MEMORY[0x24C21BBE0](v21, -1, -1);
    }
  }
}

uint64_t sub_24A625804(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
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

uint64_t sub_24A6258A0(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, (a1 & 1) == 0, 0, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A625940()
{
  sub_24A508C54((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

double sub_24A625990(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24A6259A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A625A0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24A625A68(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC11FMFindingUI28FMProximityConnectionManager_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24A625BB4()
{
  result = sub_24A62EA14();
  qword_27EF5C848 = result;
  return result;
}

uint64_t sub_24A625BDC()
{
  result = sub_24A62EA14();
  qword_27EF5C850 = result;
  return result;
}

uint64_t sub_24A625C04()
{
  result = sub_24A62EA14();
  qword_27EF5C858 = result;
  return result;
}

uint64_t sub_24A625C2C()
{
  result = sub_24A62EA14();
  qword_27EF5C860 = result;
  return result;
}

uint64_t sub_24A625C58()
{
  result = sub_24A62E9F4();
  qword_27EF5C868 = result;
  return result;
}

uint64_t sub_24A625C98()
{
  result = sub_24A62E9F4();
  qword_27EF5C870 = result;
  return result;
}

uint64_t sub_24A625CD8()
{
  result = sub_24A62EA34();
  qword_27EF5C878 = result;
  return result;
}

uint64_t sub_24A625D00()
{
  result = sub_24A62EA34();
  qword_27EF5C880 = result;
  return result;
}

uint64_t sub_24A625D28(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C888 = result;
  return result;
}

uint64_t sub_24A625D68()
{
  result = sub_24A62E9F4();
  qword_27EF5C890 = result;
  return result;
}

uint64_t sub_24A625DA8(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C898 = result;
  return result;
}

uint64_t sub_24A625DF0()
{
  result = sub_24A62E9F4();
  qword_27EF5C8A0 = result;
  return result;
}

uint64_t sub_24A625E28(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C8A8 = result;
  return result;
}

uint64_t sub_24A625E64(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C8B0 = result;
  return result;
}

uint64_t sub_24A625EA0(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C8B8 = result;
  return result;
}

uint64_t sub_24A625EDC()
{
  result = sub_24A62E9F4();
  qword_27EF5C8C0 = result;
  return result;
}

uint64_t sub_24A625F18()
{
  result = sub_24A62EA44();
  qword_27EF5C8C8 = result;
  return result;
}

uint64_t sub_24A625F44()
{
  result = sub_24A62EA44();
  qword_27EF5C8D0 = result;
  return result;
}

uint64_t sub_24A625F70()
{
  result = MEMORY[0x24C21A340](0.5, 1.0, 0.0);
  qword_27EF5C8D8 = result;
  return result;
}

uint64_t sub_24A625F9C()
{
  result = sub_24A62EA44();
  qword_27EF5C8E0 = result;
  return result;
}

uint64_t sub_24A625FC8()
{
  result = sub_24A62EA44();
  qword_27EF5C8E8 = result;
  return result;
}

uint64_t sub_24A625FF0()
{
  result = sub_24A62E9F4();
  qword_27EF5C8F0 = result;
  return result;
}

uint64_t sub_24A62602C()
{
  result = sub_24A62E9F4();
  qword_27EF5C8F8 = result;
  return result;
}

uint64_t sub_24A626064()
{
  result = sub_24A62EA34();
  qword_27EF5C900 = result;
  return result;
}

uint64_t sub_24A626088(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C908 = result;
  return result;
}

uint64_t sub_24A6260C8(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C910 = result;
  return result;
}

uint64_t sub_24A626104(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C918 = result;
  return result;
}

uint64_t sub_24A62613C()
{
  result = sub_24A62E9F4();
  qword_27EF5C920 = result;
  return result;
}

uint64_t sub_24A626170(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C928 = result;
  return result;
}

uint64_t sub_24A6261AC(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C930 = result;
  return result;
}

uint64_t sub_24A6261EC(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C938 = result;
  return result;
}

uint64_t sub_24A626224(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C940 = result;
  return result;
}

void sub_24A626268()
{
  sub_24A62E9F4();
  v0 = sub_24A62EA04();

  qword_27EF5C948 = v0;
}

uint64_t sub_24A6262C8()
{
  result = sub_24A62EA44();
  qword_27EF5C950 = result;
  return result;
}

uint64_t sub_24A6262F4()
{
  result = sub_24A62EA34();
  qword_27EF5C958 = result;
  return result;
}

uint64_t sub_24A62631C()
{
  result = sub_24A62EA44();
  qword_27EF5C960 = result;
  return result;
}

uint64_t sub_24A626348()
{
  result = sub_24A62EA44();
  qword_27EF5C968 = result;
  return result;
}

uint64_t sub_24A626374()
{
  result = sub_24A62EA44();
  qword_27EF5C970 = result;
  return result;
}

uint64_t sub_24A6263A0()
{
  result = sub_24A62EA14();
  qword_27EF5C978 = result;
  return result;
}

uint64_t sub_24A6263C8(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C980 = result;
  return result;
}

uint64_t sub_24A626404(uint64_t a1)
{
  result = sub_24A62E9E4();
  qword_27EF5C988 = result;
  return result;
}

uint64_t sub_24A62643C()
{
  result = sub_24A62E9F4();
  qword_27EF5C990 = result;
  return result;
}

uint64_t sub_24A626474()
{
  result = sub_24A62EA14();
  qword_27EF5C998 = result;
  return result;
}

uint64_t sub_24A62665C(float a1, float a2, double a3, uint64_t a4, uint64_t *a5)
{
  v9 = type metadata accessor for PFVFXAnimation(0);
  sub_24A56A3FC(v9, a5);
  v10 = sub_24A506EB8(v9, a5);
  v11 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v12) = 1.0;
  *&v13 = a1;
  *&v14 = a2;
  *v10 = [v11 initWithControlPoints__:v13 :{0.0, v14, v12}];
  *(v10 + 8) = a3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24A62674C(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for PFVFXAnimation(0);
  sub_24A56A3FC(v5, a4);
  sub_24A506EB8(v5, a4);
  sub_24A62E944();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24A6267F8(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for PFVFXAnimation(0);
  sub_24A56A3FC(v5, a3);
  v6 = sub_24A506EB8(v5, a3);
  v7 = *MEMORY[0x277CDA7B8];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 functionWithName_];

  *v6 = v10;
  *(v6 + 8) = a1;

  return swift_storeEnumTagMultiPayload();
}

id sub_24A6268BC()
{
  v1 = v0;
  v2 = sub_24A62E984();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PFVFXAnimation(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24A5461E8(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v10 = [objc_opt_self() functionWithCAMediaTimingFunction_];

    return v10;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_24A62E954();
    v13 = v12;
    sub_24A62E974();
    v15 = v14;
    sub_24A62E964();
    v17 = v16;
    v18 = objc_opt_self();
    *&v19 = v13;
    *&v20 = v15;
    *&v21 = v17;
    v22 = [v18 functionWithMass:v19 stiffness:v20 damping:v21 initialVelocity:0.0];
    (*(v3 + 8))(v5, v2);
    return v22;
  }
}

uint64_t type metadata accessor for PFVFXAnimation(uint64_t a1)
{
  result = qword_27EF52590;
  if (!qword_27EF52590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A626AF0(uint64_t a1)
{
  sub_24A62E984();
  if (v1 <= 0x3F)
  {
    sub_24A626B64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24A626B64(uint64_t a1)
{
  if (!qword_27EF525A0)
  {
    sub_24A626BD0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF525A0);
    }
  }
}

unint64_t sub_24A626BD0()
{
  result = qword_27EF525A8;
  if (!qword_27EF525A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF525A8);
  }

  return result;
}

uint64_t sub_24A626C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A62E214();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24A626D08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A62E214();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FMFindingViewState(uint64_t a1)
{
  result = qword_27EF525B0;
  if (!qword_27EF525B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A626E14(uint64_t a1)
{
  sub_24A62E214();
  if (v1 <= 0x3F)
  {
    sub_24A554AFC(319, &qword_27EF525C0, &type metadata for FMPFViewState);
    if (v2 <= 0x3F)
    {
      sub_24A554AFC(319, &qword_27EF51178, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24A626F08@<X0>(uint64_t a1@<X0>, char a2@<W1>, _WORD *a3@<X8>)
{
  v6 = type metadata accessor for FMFindingViewState(0);
  v7 = (a3 + v6[15]);
  *v7 = 0;
  v7[1] = 0;
  *a3 = *a1;
  v8 = sub_24A5ABC04();
  v9 = (a3 + v6[6]);
  *v9 = v8;
  v9[1] = v10;
  sub_24A5ABB40(&v31);
  v11 = *(&v32 + 1);
  v12 = v33;
  sub_24A50A204(&v31, *(&v32 + 1));
  (*(v12 + 16))(v11, v12);
  sub_24A508C54(&v31);
  sub_24A50D63C(a1 + 24, &v31, &unk_27EF522E0, qword_24A637660);
  v13 = *(&v32 + 1);
  sub_24A50D6A4(&v31, &unk_27EF522E0, qword_24A637660);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(*(a1 + 16) + 16) > 1uLL;
  }

  *(a3 + v6[7]) = v14;
  v15 = *(a1 + 64);
  if (*(v15 + 16) && (v16 = type metadata accessor for FMFindingSessionState(0), v17 = sub_24A515AC8(a1 + *(v16 + 36)), (v18 & 1) != 0))
  {
    v19 = *(v15 + 56) + 104 * v17;
    v21 = *(v19 + 16);
    v20 = *(v19 + 32);
    v31 = *v19;
    v32 = v21;
    v33 = v20;
    v22 = *(v19 + 48);
    v23 = *(v19 + 64);
    v24 = *(v19 + 80);
    *(v36 + 13) = *(v19 + 93);
    v35 = v23;
    v36[0] = v24;
    v34 = v22;
    sub_24A508CE4(&v31, v30);
    result = sub_24A623258(a1, type metadata accessor for FMFindingSessionState);
    v26 = a3 + v6[8];
    v27 = v36[0];
    *(v26 + 4) = v35;
    *(v26 + 5) = v27;
    *(v26 + 93) = *(v36 + 13);
    v28 = v32;
    *v26 = v31;
    *(v26 + 1) = v28;
    v29 = v34;
    *(v26 + 2) = v33;
    *(v26 + 3) = v29;
    *(a3 + v6[9]) = a2;
    *(a3 + v6[10]) = 0;
    *(a3 + v6[11]) = 0;
    *(a3 + v6[12]) = 0;
    *(a3 + v6[13]) = 0;
    *(a3 + v6[14]) = 0;
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A62715C()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (v2 && (v2 == 1 || (v1 & 0x80000000) == 0))
  {
    return 4;
  }

  v4 = type metadata accessor for FMFindingViewState(0);
  if (*(v0 + *(v4 + 44)))
  {
    return 3;
  }

  v5 = v4;
  result = 0;
  v6 = v0 + *(v5 + 32);
  v7 = *(v6 + 24) | (v6[100] << 32);
  if ((*(v6 + 24) & 0xFC000000) != 0x4000000 && (*(v6 + 24) & 0xFF0000) == 0x40000)
  {
    v8 = v6[40];
    v9 = v6[56];
    v10 = v6[57];
    if (*(v6 + 2) == 1)
    {
      v13 = *v6;
      v14 = 1;
      v15 = *(v6 + 24);
      v16 = v8;
      *v17 = *(v6 + 41);
      *&v17[7] = *(v6 + 6);
      v18 = v9;
      v19 = v10;
      *&v21[14] = *(v6 + 11);
      *v21 = *(v6 + 74);
      v20 = *(v6 + 58);
      v23 = BYTE4(v7);
      v22 = v7;
      sub_24A50D63C(&v13, v12, &qword_27EF4F670, &qword_24A634D70);
      return 0;
    }

    else if (v6[40])
    {
      if (v6[56])
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      if (v6[57])
      {
        return 3;
      }

      else
      {
        return v11;
      }
    }

    else if (v6[57])
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A6272B0()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (v2 && (v2 == 1 || (v1 & 0x80000000) == 0))
  {
    return 0;
  }

  v3 = type metadata accessor for FMFindingViewState(0);
  v4 = v3;
  v5 = "R_CANT_RECONNECT_ERROR";
  if ((*(v0 + *(v3 + 44)) & 1) == 0)
  {
    v6 = v0 + *(v3 + 32);
    v7 = *(v6 + 24) | (v6[100] << 32);
    if ((*(v6 + 24) & 0xFC000000) == 0x4000000 || (*(v6 + 24) & 0xFF0000) != 0x40000)
    {
      goto LABEL_11;
    }

    v8 = v6[40];
    v9 = v6[56];
    v10 = v6[57];
    if (*(v6 + 2) == 1)
    {
      v35 = *v6;
      *v36 = 1;
      *&v36[8] = *(v6 + 24);
      v36[24] = v8;
      *&v36[25] = *(v6 + 41);
      *&v36[32] = *(v6 + 6);
      v36[40] = v9;
      v36[41] = v10;
      *&v36[72] = *(v6 + 11);
      *&v36[58] = *(v6 + 74);
      *&v36[42] = *(v6 + 58);
      v36[84] = BYTE4(v7);
      *&v36[80] = v7;
      sub_24A50D63C(&v35, &v29, &qword_27EF4F670, &qword_24A634D70);
      goto LABEL_11;
    }

    if (v6[40])
    {
      if (v6[56])
      {
        v17 = "compassInFOVMode";
        if (v6[57])
        {
          v17 = "compassReachMode";
        }

        v5 = (v17 - 32);
      }

      else if ((v6[57] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((v6[57] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (0x800000024A63DD60 == (v5 | 0x8000000000000000))
  {

    goto LABEL_12;
  }

LABEL_11:
  v11 = sub_24A62F634();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (*(v0 + *(v4 + 40)))
  {
    return 0;
  }

  v12 = v0 + *(v4 + 32);
  *&v36[77] = *(v12 + 93);
  v13 = *(v12 + 5);
  *&v36[48] = *(v12 + 4);
  *&v36[64] = v13;
  v14 = *(v12 + 1);
  v35 = *v12;
  *v36 = v14;
  v15 = *(v12 + 3);
  *&v36[16] = *(v12 + 2);
  *&v36[32] = v15;
  if ((*&v36[80] & 0xFC000000 | 0x2000000) == 0x6000000 || (*&v36[80] & 0xFF0000) != 0x40000)
  {
    return 0;
  }

  if (*v36 == 1)
  {
    v18 = *(v12 + 5);
    v33 = *(v12 + 4);
    v34[0] = v18;
    *(v34 + 13) = *(v12 + 93);
    v19 = *(v12 + 1);
    v29 = *v12;
    v30 = v19;
    v20 = *(v12 + 3);
    v31 = *(v12 + 2);
    v32 = v20;
    sub_24A50D63C(&v29, v28, &qword_27EF4F670, &qword_24A634D70);
    return 0;
  }

  else
  {
    v21 = *&v36[48];
    if ((*&v36[80] & 0x100) != 0)
    {
      v26 = 2.11024;
    }

    else
    {
      v22 = *(v12 + 5);
      v33 = *(v12 + 4);
      v34[0] = v22;
      *(v34 + 13) = *(v12 + 93);
      v23 = *(v12 + 1);
      v29 = *v12;
      v30 = v23;
      v24 = *(v12 + 3);
      v31 = *(v12 + 2);
      v32 = v24;
      sub_24A50D63C(&v29, v28, &qword_27EF4F670, &qword_24A634D70);
      if (qword_27EF4EA90 != -1)
      {
        swift_once();
      }

      v25 = *&qword_27EF5C768;
      sub_24A517ABC(&v35);
      v26 = 4.0 - v25;
      if (4.0 - v25 < 0.0)
      {
        v26 = 0.0;
      }
    }

    v27 = (4.0 - v21) / v26;
    if (v27 < 0.0)
    {
      v27 = 0.0;
    }

    return fmin(v27, 1.0);
  }
}

uint64_t sub_24A627670()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (v2 && (v2 == 1 || (v1 & 0x80000000) == 0))
  {
    return 0;
  }

  v3 = type metadata accessor for FMFindingViewState(0);
  v4 = v3;
  if (*(v0 + *(v3 + 44)))
  {
LABEL_5:
    v5 = "R_CANT_RECONNECT_ERROR";
    goto LABEL_6;
  }

  v6 = v0 + *(v3 + 32);
  v7 = *(v6 + 24) | (v6[100] << 32);
  if ((*(v6 + 24) & 0xFC000000) == 0x4000000 || (*(v6 + 24) & 0xFF0000) != 0x40000)
  {
    goto LABEL_12;
  }

  v8 = v6[40];
  v9 = v6[56];
  v10 = v6[57];
  if (*(v6 + 2) == 1)
  {
    v35 = *v6;
    *v36 = 1;
    *&v36[8] = *(v6 + 24);
    v36[24] = v8;
    *&v36[25] = *(v6 + 41);
    *&v36[32] = *(v6 + 6);
    v36[40] = v9;
    v36[41] = v10;
    *&v36[72] = *(v6 + 11);
    *&v36[58] = *(v6 + 74);
    *&v36[42] = *(v6 + 58);
    v36[84] = BYTE4(v7);
    *&v36[80] = v7;
    sub_24A50D63C(&v35, &v29, &qword_27EF4F670, &qword_24A634D70);
    goto LABEL_12;
  }

  if ((v6[40] & 1) == 0)
  {
    if ((v6[57] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if ((v6[56] & 1) == 0)
  {
    if ((v6[57] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v17 = "compassInFOVMode";
  if (v6[57])
  {
    v17 = "compassReachMode";
  }

  v5 = (v17 - 32);
LABEL_6:
  if (0x800000024A63DD40 == (v5 | 0x8000000000000000))
  {

    goto LABEL_13;
  }

LABEL_12:
  v11 = sub_24A62F634();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if (*(v0 + *(v4 + 40)))
  {
    return 0;
  }

  v12 = v0 + *(v4 + 32);
  *&v36[77] = *(v12 + 93);
  v13 = *(v12 + 5);
  *&v36[48] = *(v12 + 4);
  *&v36[64] = v13;
  v14 = *(v12 + 1);
  v35 = *v12;
  *v36 = v14;
  v15 = *(v12 + 3);
  *&v36[16] = *(v12 + 2);
  *&v36[32] = v15;
  if ((*&v36[80] & 0xFC000000 | 0x2000000) == 0x6000000 || (*&v36[80] & 0xFF0000) != 0x40000)
  {
    return 0;
  }

  if (*v36 == 1)
  {
    v18 = *(v12 + 5);
    v33 = *(v12 + 4);
    v34[0] = v18;
    *(v34 + 13) = *(v12 + 93);
    v19 = *(v12 + 1);
    v29 = *v12;
    v30 = v19;
    v20 = *(v12 + 3);
    v31 = *(v12 + 2);
    v32 = v20;
    sub_24A50D63C(&v29, v28, &qword_27EF4F670, &qword_24A634D70);
    return 0;
  }

  v21 = *(v12 + 1);
  v37 = *v12;
  v40 = *(v12 + 40);
  v41 = *(v12 + 56);
  v42 = *(v12 + 72);
  v22 = *(v12 + 11);
  v38 = *v36;
  v43 = v22;
  v39 = *(v12 + 24);
  v44 = *&v36[80];
  v29 = v37;
  v30 = v21;
  v23 = *(v12 + 2);
  v24 = *(v12 + 3);
  v25 = *(v12 + 4);
  v26 = *(v12 + 5);
  *(v34 + 13) = *(v12 + 93);
  v33 = v25;
  v34[0] = v26;
  v31 = v23;
  v32 = v24;
  sub_24A50D63C(&v29, v28, &qword_27EF4F670, &qword_24A634D70);
  v27 = sub_24A51AA70();
  sub_24A517ABC(&v35);
  return v27;
}

double sub_24A6279B4(double result)
{
  v2 = *v1;
  v3 = (v2 >> 13) & 3;
  if (v3 && (v3 == 1 || (v2 & 0x80000000) == 0))
  {
    return result;
  }

  v4 = type metadata accessor for FMFindingViewState(0);
  v5 = v4;
  if (*(v1 + *(v4 + 44)))
  {
    goto LABEL_5;
  }

  v7 = v1 + *(v4 + 32);
  v8 = *(v7 + 24) | (v7[100] << 32);
  if ((*(v7 + 24) & 0xFC000000) == 0x4000000 || (*(v7 + 24) & 0xFF0000) != 0x40000)
  {
LABEL_12:
    v12 = sub_24A62F634();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v9 = v7[40];
  v10 = v7[56];
  v11 = v7[57];
  if (*(v7 + 2) == 1)
  {
    v21 = *v7;
    v22 = 1;
    v23 = *(v7 + 24);
    LOBYTE(v24) = v9;
    *(&v24 + 1) = *(v7 + 41);
    *(&v24 + 1) = *(v7 + 6);
    v25[0] = v10;
    v25[1] = v11;
    *&v25[32] = *(v7 + 11);
    *&v25[18] = *(v7 + 74);
    *&v25[2] = *(v7 + 58);
    v27 = BYTE4(v8);
    v26 = v8;
    sub_24A50D63C(&v21, v20, &qword_27EF4F670, &qword_24A634D70);
    goto LABEL_12;
  }

  if ((v7[40] & 1) == 0)
  {
    if ((v7[57] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if ((v7[56] & 1) == 0)
  {
    if ((v7[57] & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_5:
    v6 = "R_CANT_RECONNECT_ERROR";
    goto LABEL_6;
  }

  v15 = "compassInFOVMode";
  if (v7[57])
  {
    v15 = "compassReachMode";
  }

  v6 = (v15 - 32);
LABEL_6:
  if (0x800000024A63DD40 != (v6 | 0x8000000000000000))
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((*(v1 + *(v5 + 40)) & 1) == 0)
  {
    v13 = v1 + *(v5 + 32);
    v14 = *(v13 + 24);
    if ((v14 & 0xFC000000 | 0x2000000) != 0x6000000)
    {
      v16 = v14 | (v13[100] << 32);
      if ((v16 & 0xFF0000) == 0x40000)
      {
        v17 = v13[8];
        if (*(v13 + 2) == 1)
        {
          *&v21 = *v13;
          BYTE8(v21) = v17;
          *(&v21 + 9) = *(v13 + 9);
          HIDWORD(v21) = *(v13 + 3);
          v24 = *(v13 + 40);
          *v25 = *(v13 + 56);
          *&v25[16] = *(v13 + 72);
          v18 = *(v13 + 11);
          v22 = 1;
          *&v25[32] = v18;
          v23 = *(v13 + 24);
          v26 = v16;
          v27 = BYTE4(v16);
          sub_24A50D63C(&v21, v20, &qword_27EF4F670, &qword_24A634D70);
        }

        else if ((v13[8] & 1) == 0)
        {
          v19 = (1.2192 - *v13) / 1.2192;
          if (v19 < 0.0)
          {
            v19 = 0.0;
          }

          return fmin(v19, 1.0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24A627CB8()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if ((v1 & 0x80000000) != 0 && v2 >= 2 && (v1 & 1) == 0)
  {
    return 0;
  }

  if (v2 && (v2 == 1 || (v1 & 0x80000000) == 0))
  {
    return 0x3FF0000000000000;
  }

  v4 = type metadata accessor for FMFindingViewState(0);
  v5 = v4;
  if ((*(v0 + *(v4 + 44)) & 1) == 0)
  {
    v10 = v0 + *(v4 + 32);
    v11 = *(v10 + 24) | (v10[100] << 32);
    if ((*(v10 + 24) & 0xFC000000) != 0x4000000 && (*(v10 + 24) & 0xFF0000) == 0x40000)
    {
      v12 = v10[40];
      v13 = v10[56];
      v14 = v10[57];
      if (*(v10 + 2) == 1)
      {
        v16 = *v10;
        v17 = 1;
        v18 = *(v10 + 24);
        v19 = v12;
        *&v20 = *(v10 + 41);
        *(&v20 + 7) = *(v10 + 6);
        HIBYTE(v20) = v13;
        v21[0] = v14;
        *&v21[31] = *(v10 + 11);
        *&v21[17] = *(v10 + 74);
        *&v21[1] = *(v10 + 58);
        v23 = BYTE4(v11);
        v22 = v11;
        sub_24A50D63C(&v16, v15, &qword_27EF4F670, &qword_24A634D70);
      }

      else if (v10[40] & 1) != 0 || (v10[57])
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v6 = sub_24A62F634();

  if (v6 & 1) != 0 || (*(v0 + *(v5 + 40)))
  {
    return 0;
  }

  v7 = v0 + *(v5 + 32);
  v8 = *(v7 + 24) | (v7[100] << 32);
  result = 0x3FF0000000000000;
  if ((*(v7 + 24) & 0xFC000000) != 0x4000000 && (*(v7 + 24) & 0xFF0000) == 0x40000)
  {
    v9 = v7[40];
    if (*(v7 + 2) == 1)
    {
      v16 = *v7;
      v17 = 1;
      v18 = *(v7 + 24);
      v19 = v9;
      v20 = *(v7 + 41);
      *v21 = *(v7 + 57);
      *&v21[16] = *(v7 + 73);
      *&v21[31] = *(v7 + 11);
      v22 = v8;
      v23 = BYTE4(v8);
      sub_24A50D63C(&v16, v15, &qword_27EF4F670, &qword_24A634D70);
      return 0x3FF0000000000000;
    }

    if (v7[40])
    {
      return 0;
    }

    else
    {
      return 0x3FF0000000000000;
    }
  }

  return result;
}

uint64_t sub_24A627F7C()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if (v2 && (v2 == 1 || (v1 & 0x80000000) == 0))
  {
    v3 = *(v0 + *(type metadata accessor for FMFindingViewState(0) + 32) + 96);
    if ((v3 & 0xFE000000) != 0x4000000)
    {
      if ((v3 & 0xFE000000) == 0x6000000)
      {
        return 0;
      }

      v8 = (*&v3 & 0xFC0000) == 0;
      goto LABEL_17;
    }

    return 0;
  }

  v5 = type metadata accessor for FMFindingViewState(0);
  v6 = v5;
  if ((*(v0 + *(v5 + 44)) & 1) == 0)
  {
    v9 = v0 + *(v5 + 32);
    v10 = *(v9 + 24) | (v9[100] << 32);
    if ((*(v9 + 24) & 0xFC000000) != 0x4000000 && (*(v9 + 24) & 0xFF0000) == 0x40000)
    {
      v11 = v9[40];
      v12 = v9[56];
      v13 = v9[57];
      if (*(v9 + 2) == 1)
      {
        v15 = *v9;
        v16 = 1;
        v17 = *(v9 + 24);
        v18 = v11;
        *v19 = *(v9 + 41);
        *&v19[7] = *(v9 + 6);
        v20 = v12;
        v21 = v13;
        *&v23[14] = *(v9 + 11);
        *v23 = *(v9 + 74);
        v22 = *(v9 + 58);
        v25 = BYTE4(v10);
        v24 = v10;
        sub_24A50D63C(&v15, v14, &qword_27EF4F670, &qword_24A634D70);
      }

      else if (v9[40] & 1) != 0 || (v9[57])
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v7 = sub_24A62F634();

  if (v7)
  {
    return 0;
  }

  v8 = *(v0 + *(v6 + 40)) == 0;
LABEL_17:
  if (v8)
  {
    return 0x3FF0000000000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A6281B4()
{
  v1 = *v0;
  if (v1 >= 0xC000 && (v1 & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for FMFindingViewState(0);
  result = 0;
  v4 = v0 + *(v2 + 32);
  v5 = *(v4 + 24) | (v4[100] << 32);
  if ((*(v4 + 24) & 0xFC000000) != 0x4000000 && (*(v4 + 24) & 0xFF0000) == 0x40000)
  {
    v6 = v4[40];
    if (*(v4 + 2) == 1)
    {
      v8 = *v4;
      v9 = 1;
      v10 = *(v4 + 24);
      v11 = v6;
      v12 = *(v4 + 41);
      v13 = *(v4 + 57);
      *v14 = *(v4 + 73);
      *&v14[15] = *(v4 + 11);
      v15 = v5;
      v16 = BYTE4(v5);
      sub_24A50D63C(&v8, v7, &qword_27EF4F670, &qword_24A634D70);
      return 0;
    }

    if (v4[40])
    {
      return *(v4 + 4);
    }

    return 0;
  }

  return result;
}

uint64_t sub_24A6282C8()
{
  v1 = *v0;
  v2 = (v1 >> 13) & 3;
  if ((v1 & 0x80000000) != 0 && v2 >= 2 && (v1 & 1) == 0)
  {
    return 0;
  }

  if (!v2 || v2 != 1 && (v1 & 0x80000000) != 0)
  {
    v5 = type metadata accessor for FMFindingViewState(0);
    v6 = v5;
    if (*(v0 + *(v5 + 44)))
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
      v11 = v0 + *(v5 + 32);
      v12 = *(v11 + 24) | (v11[100] << 32);
      if ((*(v11 + 24) & 0xFC000000) != 0x4000000 && (*(v11 + 24) & 0xFF0000) == 0x40000)
      {
        v13 = v11[40];
        v14 = v11[56];
        v15 = v11[57];
        if (*(v11 + 2) == 1)
        {
          v25 = *v11;
          v26 = 1;
          v27 = *(v11 + 24);
          v28 = v13;
          *v29 = *(v11 + 41);
          *&v29[7] = *(v11 + 6);
          v30 = v14;
          v31 = v15;
          *&v33[14] = *(v11 + 11);
          *v33 = *(v11 + 74);
          v32 = *(v11 + 58);
          v35 = BYTE4(v12);
          v34 = v12;
          sub_24A50D63C(&v25, v24, &qword_27EF4F670, &qword_24A634D70);
          v7 = 0;
        }

        else if (v11[40])
        {
          if (v11[56])
          {
            if (v11[57])
            {
              v7 = 3;
            }

            else
            {
              v7 = 2;
            }
          }

          else if (v11[57])
          {
            v7 = 3;
          }

          else
          {
            v7 = 1;
          }
        }

        else if (v11[57])
        {
          v7 = 3;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    v8 = *(v6 + 36);
    v9 = *(v0 + v8);
    if (v9 == 10)
    {
      v10 = 0;
      goto LABEL_34;
    }

    if (sub_24A596B24(*(v0 + v8)) == 0xD000000000000014 && 0x800000024A63CCF0 == v16)
    {
      goto LABEL_32;
    }

    v18 = sub_24A62F634();

    if (v18)
    {
      v10 = 1;
      goto LABEL_34;
    }

    if (sub_24A596B24(v9) == 0xD000000000000030 && 0x800000024A63CD30 == v19)
    {
LABEL_32:
      v10 = 1;
    }

    else
    {
      v10 = sub_24A62F634();
    }

LABEL_34:
    if (v7 > 1u && (v7 != 2 ? (v21 = "R_CANT_RECONNECT_ERROR") : (v21 = "compassReachMode"), 0x800000024A63DD40 == (v21 | 0x8000000000000000)))
    {
    }

    else
    {
      v22 = sub_24A62F634();

      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    if (v10 & 1) != 0 || (sub_24A6281B4(), (v23))
    {
      if (*(v0 + *(v6 + 40)) != 1)
      {
        return 0x3FF0000000000000;
      }
    }

    return 0;
  }

  v3 = *(v0 + *(type metadata accessor for FMFindingViewState(0) + 32) + 96);
  if ((v3 & 0xFE000000) == 0x4000000)
  {
    return 0;
  }

  if ((v3 & 0xFE000000) == 0x6000000)
  {
    return 0;
  }

  if ((*&v3 & 0xFC0000) != 0)
  {
    return 0;
  }

  return 0x3FF0000000000000;
}

uint64_t sub_24A628644@<X0>(unsigned __int16 *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v43 = sub_24A62E214();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  sub_24A5ABB40(&v51);
  v8 = v52;
  v9 = v53;
  sub_24A50A204(&v51, v52);
  (*(v9 + 16))(v8, v9);
  v40 = sub_24A5ABC04();
  v39 = v10;
  sub_24A50D63C((a1 + 12), &v45, &unk_27EF522E0, qword_24A637660);
  v11 = *(&v46 + 1);
  sub_24A50D6A4(&v45, &unk_27EF522E0, qword_24A637660);
  if (v11)
  {
    v38 = 0;
  }

  else
  {
    v38 = *(*(a1 + 2) + 16) > 1uLL;
  }

  v12 = *(a1 + 8);
  if (*(v12 + 16) && (v13 = type metadata accessor for FMFindingSessionState(0), v14 = sub_24A515AC8(a1 + *(v13 + 36)), (v15 & 1) != 0))
  {
    v16 = *(v12 + 56) + 104 * v14;
    v18 = *(v16 + 16);
    v17 = *(v16 + 32);
    v45 = *v16;
    v46 = v18;
    v47 = v17;
    v19 = *(v16 + 48);
    v20 = *(v16 + 64);
    v21 = *(v16 + 80);
    *&v50[13] = *(v16 + 93);
    v49 = v20;
    *v50 = v21;
    v48 = v19;
    v22 = type metadata accessor for FMFindingViewState(0);
    v23 = *(v3 + v22[9]);
    v24 = *(v3 + v22[10]);
    v25 = *(v3 + v22[11]);
    v26 = *(v3 + v22[12]);
    v27 = *(v3 + v22[13]);
    v28 = *(v3 + v22[14]);
    v29 = &a2[v22[15]];
    *v29 = 0;
    *(v29 + 1) = 0;
    *a2 = v41;
    (*(v42 + 32))(&a2[v22[5]], v7, v43);
    v30 = &a2[v22[6]];
    v31 = v39;
    *v30 = v40;
    *(v30 + 1) = v31;
    a2[v22[7]] = v38;
    v32 = &a2[v22[8]];
    v33 = *v50;
    *(v32 + 4) = v49;
    *(v32 + 5) = v33;
    *(v32 + 93) = *&v50[13];
    v34 = v46;
    *v32 = v45;
    *(v32 + 1) = v34;
    v35 = v48;
    *(v32 + 2) = v47;
    *(v32 + 3) = v35;
    a2[v22[9]] = v23;
    a2[v22[10]] = v24;
    a2[v22[11]] = v25;
    a2[v22[12]] = v26;
    a2[v22[13]] = v27;
    a2[v22[14]] = v28;
    sub_24A508CE4(&v45, v44);
    return sub_24A508C54(&v51);
  }

  else
  {
    result = sub_24A62F444();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A628998(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v9 = &v40[-v8 - 8];
  sub_24A50D63C(a1, &v40[-v8 - 8], &qword_27EF4FA80, &qword_24A634D40);
  v10 = type metadata accessor for FMFindingViewState(0);
  v11 = *(v10 - 1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24A50D6A4(v9, &qword_27EF4FA80, &qword_24A634D40);
    v12 = 0;
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
    v13 = sub_24A628998(v6);
    sub_24A50D6A4(v6, &qword_27EF4FA80, &qword_24A634D40);
    sub_24A623258(v9, type metadata accessor for FMFindingViewState);
    v12 = (v13 != 2) & v13;
  }

  v14 = *v2;
  v15 = (v14 >> 13) & 3;
  if (v15 && (v15 == 1 || (v14 & 0x80000000) == 0))
  {
    return 2;
  }

  if (*(v2 + v10[11]))
  {
LABEL_8:
    v16 = "R_CANT_RECONNECT_ERROR";
    goto LABEL_9;
  }

  v17 = v2 + v10[8];
  v18 = *(v17 + 24) | (v17[100] << 32);
  if ((*(v17 + 24) & 0xFC000000) == 0x4000000 || (*(v17 + 24) & 0xFF0000) != 0x40000)
  {
    goto LABEL_15;
  }

  v19 = v17[40];
  v20 = v17[56];
  v21 = v17[57];
  if (*(v17 + 2) == 1)
  {
    v47 = *v17;
    *v48 = 1;
    *&v48[8] = *(v17 + 24);
    v48[24] = v19;
    *&v48[25] = *(v17 + 41);
    *&v48[32] = *(v17 + 6);
    v48[40] = v20;
    v48[41] = v21;
    *&v48[72] = *(v17 + 11);
    *&v48[58] = *(v17 + 74);
    *&v48[42] = *(v17 + 58);
    v48[84] = BYTE4(v18);
    *&v48[80] = v18;
    sub_24A50D63C(&v47, &v41, &qword_27EF4F670, &qword_24A634D70);
    goto LABEL_15;
  }

  if ((v17[40] & 1) == 0)
  {
    if ((v17[57] & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if ((v17[56] & 1) == 0)
  {
    if ((v17[57] & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v28 = "compassInFOVMode";
  if (v17[57])
  {
    v28 = "compassReachMode";
  }

  v16 = (v28 - 32);
LABEL_9:
  if (0x800000024A63DD40 == (v16 | 0x8000000000000000))
  {

    goto LABEL_16;
  }

LABEL_15:
  v22 = sub_24A62F634();

  if ((v22 & 1) == 0)
  {
    return 2;
  }

LABEL_16:
  if (*(v2 + v10[10]))
  {
    return 2;
  }

  v23 = v2 + v10[8];
  *&v48[77] = *(v23 + 93);
  v24 = *(v23 + 5);
  *&v48[48] = *(v23 + 4);
  *&v48[64] = v24;
  v25 = *(v23 + 1);
  v47 = *v23;
  *v48 = v25;
  v26 = *(v23 + 3);
  *&v48[16] = *(v23 + 2);
  *&v48[32] = v26;
  if ((*&v48[80] & 0xFC000000 | 0x2000000) == 0x6000000 || (*&v48[80] & 0xFF0000) != 0x40000)
  {
    return 2;
  }

  if (*v48 == 1)
  {
    v29 = *(v23 + 5);
    v45 = *(v23 + 4);
    v46[0] = v29;
    *(v46 + 13) = *(v23 + 93);
    v30 = *(v23 + 1);
    v41 = *v23;
    v42 = v30;
    v31 = *(v23 + 3);
    v43 = *(v23 + 2);
    v44 = v31;
    sub_24A50D63C(&v41, v40, &qword_27EF4F670, &qword_24A634D70);
    return 2;
  }

  v32 = *(v23 + 1);
  v49 = *v23;
  v52 = *(v23 + 40);
  v53 = *(v23 + 56);
  v54 = *(v23 + 72);
  v33 = *(v23 + 11);
  v50 = *v48;
  v55 = v33;
  v51 = *(v23 + 24);
  v56 = *&v48[80];
  v41 = v49;
  v42 = v32;
  v34 = *(v23 + 2);
  v35 = *(v23 + 3);
  v36 = *(v23 + 4);
  v37 = *(v23 + 5);
  *(v46 + 13) = *(v23 + 93);
  v45 = v36;
  v46[0] = v37;
  v43 = v34;
  v44 = v35;
  sub_24A50D63C(&v41, v40, &qword_27EF4F670, &qword_24A634D70);
  v38 = sub_24A51AB70(v12);
  sub_24A517ABC(&v47);
  return v38;
}

uint64_t sub_24A628E50()
{
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24A63C700;
  v2 = COERCE_DOUBLE(sub_24A627CB8());
  if (v3)
  {
    v4 = -100.0;
  }

  else
  {
    v4 = v2 * 100.0;
  }

  v5 = MEMORY[0x277D85048];
  *(v1 + 56) = MEMORY[0x277D85048];
  v6 = sub_24A629414();
  *(v1 + 64) = v6;
  *(v1 + 32) = v4;
  v7 = COERCE_DOUBLE(sub_24A627F7C()) * 100.0;
  if (v8)
  {
    v7 = -100.0;
  }

  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  *(v1 + 72) = v7;
  v9 = COERCE_DOUBLE(sub_24A6282C8()) * 100.0;
  if (v10)
  {
    v9 = -100.0;
  }

  *(v1 + 136) = v5;
  *(v1 + 144) = v6;
  *(v1 + 112) = v9;
  v11 = type metadata accessor for FMFindingViewState(0);
  v12 = *(v0 + v11[10]);
  v13 = sub_24A508FEC();
  v14 = v13;
  v15 = 1702195828;
  if (v12)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  v17 = MEMORY[0x277D837D0];
  if (v12)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  *(v1 + 176) = MEMORY[0x277D837D0];
  *(v1 + 184) = v13;
  *(v1 + 152) = v16;
  *(v1 + 160) = v18;
  if (*(v0 + v11[11]))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v0 + v11[11]))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  *(v1 + 216) = v17;
  *(v1 + 224) = v13;
  *(v1 + 192) = v19;
  *(v1 + 200) = v20;
  if (*(v0 + v11[12]))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v0 + v11[12]))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  *(v1 + 256) = v17;
  *(v1 + 264) = v13;
  *(v1 + 232) = v21;
  *(v1 + 240) = v22;
  if (*(v0 + v11[14]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v0 + v11[14]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  *(v1 + 296) = v17;
  *(v1 + 304) = v13;
  *(v1 + 272) = v23;
  *(v1 + 280) = v24;
  if (*(v0 + v11[13]))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v15 = 0x65736C6166;
    v25 = 0xE500000000000000;
  }

  *(v1 + 336) = v17;
  *(v1 + 344) = v13;
  *(v1 + 312) = v15;
  *(v1 + 320) = v25;
  v26 = sub_24A62EC24();
  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_24A633E60;
  v30 = sub_24A62715C();
  if (v30 <= 1)
  {
    if (v30)
    {
      v32 = 0x800000024A63DD80;
      v31 = 0xD000000000000011;
    }

    else
    {
      v32 = 0xEF65646F4D6E6F69;
      v31 = 0x74617262696C6163;
    }
  }

  else
  {
    if (v30 == 2)
    {
      v33 = "compassInFOVMode";
    }

    else
    {
      v31 = 0;
      v32 = 0;
      if (v30 != 3)
      {
        goto LABEL_44;
      }

      v33 = "compassReachMode";
    }

    v32 = (v33 - 32) | 0x8000000000000000;
    v31 = 0xD000000000000010;
  }

LABEL_44:
  *(v29 + 56) = v17;
  *(v29 + 64) = v14;
  if (!v32)
  {
    v31 = 7104878;
    v32 = 0xE300000000000000;
  }

  *(v29 + 32) = v31;
  *(v29 + 40) = v32;
  v34 = (v0 + v11[6]);
  v36 = *v34;
  v35 = v34[1];
  *(v29 + 96) = v17;
  *(v29 + 104) = v14;
  *(v29 + 72) = v36;
  *(v29 + 80) = v35;

  v37 = sub_24A576980();
  *(v29 + 136) = v17;
  *(v29 + 144) = v14;
  *(v29 + 112) = v37;
  *(v29 + 120) = v38;
  *(v29 + 176) = v17;
  *(v29 + 184) = v14;
  *(v29 + 152) = v26;
  *(v29 + 160) = v28;

  return sub_24A62EC24();
}

BOOL sub_24A629198(_WORD *a1, _WORD *a2)
{
  LOWORD(v33[0]) = *a1;
  LOWORD(v31[0]) = *a2;
  if (!_s11FMFindingUI21FindingExperienceTypeO2eeoiySbAC_ACtFZ_0(v33, v31))
  {
    return 0;
  }

  v4 = type metadata accessor for FMFindingViewState(0);
  if ((sub_24A62E1E4() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24A62F634() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v10 = a1 + v4[8];
  v11 = *(v10 + 5);
  v31[4] = *(v10 + 4);
  v32[0] = v11;
  *(v32 + 13) = *(v10 + 93);
  v12 = *(v10 + 3);
  v31[2] = *(v10 + 2);
  v31[3] = v12;
  v13 = *(v10 + 1);
  v31[0] = *v10;
  v31[1] = v13;
  v14 = a2 + v4[8];
  v15 = *(v14 + 5);
  v33[4] = *(v14 + 4);
  v34[0] = v15;
  *(v34 + 13) = *(v14 + 93);
  v16 = *(v14 + 3);
  v33[2] = *(v14 + 2);
  v33[3] = v16;
  v17 = *(v14 + 1);
  v33[0] = *v14;
  v33[1] = v17;
  if ((sub_24A5773B4(v31, v33) & 1) == 0)
  {
    return 0;
  }

  v18 = v4[9];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 10)
  {
    if (v20 == 10)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v20 == 10)
  {
    return 0;
  }

  v21 = sub_24A596B24(v19);
  v23 = v22;
  if (v21 == sub_24A596B24(v20) && v23 == v24)
  {
  }

  else
  {
    v25 = sub_24A62F634();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_18:
  if (*(a1 + v4[10]) != *(a2 + v4[10]) || *(a1 + v4[11]) != *(a2 + v4[11]) || *(a1 + v4[12]) != *(a2 + v4[12]) || *(a1 + v4[13]) != *(a2 + v4[13]) || *(a1 + v4[14]) != *(a2 + v4[14]))
  {
    return 0;
  }

  v27 = *v10;
  v28 = (*(v10 + 24) & 0xFC0000) != 0 || (*(v10 + 24) & 0xFC000000) == 0x4000000;
  v29 = 0.0;
  if (v28)
  {
    v27 = 0.0;
  }

  if ((*(v14 + 24) & 0xFC0000) == 0 && (*(v14 + 24) & 0xFC000000) != 0x4000000)
  {
    v29 = *v14;
  }

  return v27 == v29;
}

unint64_t sub_24A629414()
{
  result = qword_27EF525C8;
  if (!qword_27EF525C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF525C8);
  }

  return result;
}

uint64_t sub_24A62947C(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_24A62F294();
    v9 = v8;
    v10 = sub_24A62F304();
    v12 = v11;
    v13 = MEMORY[0x24C21ABD0](v7, v9, v10, v11);
    sub_24A55B6DC(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_24A55B6DC(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = sub_24A62F264();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24A62B464(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_24A55B6DC(v7, v9, v6 != 0);
  return v16;
}

double sub_24A6295B0()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  xmmword_27EF5CB20 = xmmword_24A63C790;
  qword_27EF5CB30 = 0x4026000000000000;
  qword_27EF5CB38 = v1;
  result = 1.15;
  xmmword_27EF5CB40 = xmmword_24A63C7A0;
  qword_27EF5CB50 = 0x3FE0000000000000;
  return result;
}

id sub_24A629644(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = &v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style];
  if (qword_27EF4ECB8 != -1)
  {
    swift_once();
  }

  v10 = qword_27EF5CB30;
  v11 = qword_27EF5CB38;
  v12 = qword_27EF5CB50;
  v13 = xmmword_27EF5CB40;
  *v9 = xmmword_27EF5CB20;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  *(v9 + 2) = v13;
  *(v9 + 6) = v12;
  v14 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  v15 = objc_opt_self();
  v16 = v11;
  *&v4[v14] = [v15 buttonWithType_];
  v17 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring] = 0;
  v18 = &v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_lastRenderTime];
  *v18 = 0;
  v18[8] = 1;
  v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_isEnabled] = 0;
  v19 = &v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v4[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named];
  v21 = type metadata accessor for FMR1GlyphButton();
  *v20 = 0;
  v20[1] = 0;
  v24.receiver = v4;
  v24.super_class = v21;
  v22 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24A629A04();
  sub_24A629C20();
  if (a2)
  {
    sub_24A62A8A4(a1, a2, a3, a4);
  }

  return v22;
}

id sub_24A629864(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 currentRunLoop];
    [v4 removeFromRunLoop:v5 forMode:*MEMORY[0x277CBE738]];
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for FMR1GlyphButton();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_24A629A04()
{
  [v0 setUserInteractionEnabled_];
  [v0 setAccessibilityRespondsToUserInteraction_];
  [v0 setIsAccessibilityElement_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] setUserInteractionEnabled_];
  [*&v0[v2] setIsAccessibilityElement_];
  [v0 addSubview_];
  v3 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label;
  v4 = *&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D76968];
  v7 = v4;
  v8 = [v5 preferredFontForTextStyle_];
  v9 = &v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style];
  v10 = [v8 fontWithSize_];

  [v7 setFont_];
  [*&v0[v3] setNumberOfLines_];
  [*&v0[v3] setAdjustsFontForContentSizeCategory_];
  [*&v0[v3] setTextAlignment_];
  [*&v0[v3] setTextColor_];
  v11 = [*&v0[v3] layer];
  [v11 setOpacity_];

  v12 = *&v0[v3];

  return [v0 addSubview_];
}

void sub_24A629C20()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = objc_opt_self();
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24A63AC30;
  v3 = [*&v0[v1] topAnchor];
  v4 = [v0 &selRef_description];
  v5 = [v3 constraintEqualToAnchor_];

  *(v2 + 32) = v5;
  v6 = [*&v0[v1] leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v2 + 40) = v8;
  v9 = [*&v0[v1] trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v2 + 48) = v11;
  v12 = [*&v0[v1] widthAnchor];
  v13 = &v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style];
  v14 = *&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style];
  v15 = [v12 constraintEqualToConstant_];

  *(v2 + 56) = v15;
  v16 = [*&v0[v1] heightAnchor];
  v17 = [v16 constraintEqualToConstant_];

  *(v2 + 64) = v17;
  sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
  v18 = sub_24A62ED54();

  [v30 activateConstraints_];

  v19 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label;
  [*&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24A635FE0;
  v21 = [*&v0[v19] topAnchor];
  v22 = [*&v0[v1] bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v13[1]];

  *(v20 + 32) = v23;
  v24 = [*&v0[v19] bottomAnchor];
  v25 = [v0 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v20 + 40) = v26;
  v27 = [*&v0[v19] centerXAnchor];
  v28 = [*&v0[v1] centerXAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v20 + 48) = v29;
  v31 = sub_24A62ED54();

  [v30 activateConstraints_];
}

void sub_24A62A060(uint64_t a1, uint64_t a2)
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  v4 = sub_24A62EE54();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v9, sel_touchesBegan_withEvent_, v4, a2);

  v5 = [*&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = [v7 CGColor];
  [v5 setBackgroundColor_];
}

void sub_24A62A1A8(uint64_t a1, uint64_t a2)
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  v5 = sub_24A62EE54();
  v17.receiver = v2;
  v17.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v17, sel_touchesEnded_withEvent_, v5, a2);

  v6 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  v7 = [*&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
  v8 = *&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor];
  if (v8)
  {
    v9 = [v8 CGColor];
  }

  else
  {
    v9 = 0;
  }

  [v7 setBackgroundColor_];

  v10 = sub_24A62947C(a1, &qword_27EF505C8, 0x277D75C68);
  if (v10)
  {
    v11 = v10;
    [v10 locationInView_];
    v13 = v12;
    v15 = v14;
    [v2 bounds];
    v18.x = v13;
    v18.y = v15;
    if (CGRectContainsPoint(v19, v18))
    {
      v16 = *&v2[v6];
      [v16 sendActionsForControlEvents_];
    }
  }
}

double sub_24A62A348(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  v8 = sub_24A62EE64();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_24A62A3F8(uint64_t a1, uint64_t a2)
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  v4 = sub_24A62EE54();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v8, sel_touchesCancelled_withEvent_, v4, a2);

  v5 = [*&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
  v6 = *&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setBackgroundColor_];
}

void sub_24A62A50C(uint64_t a1, uint64_t a2)
{
  sub_24A50D7EC(0, &qword_27EF505C8, 0x277D75C68);
  sub_24A5789C0();
  v5 = sub_24A62EE54();
  v18.receiver = v2;
  v18.super_class = type metadata accessor for FMR1GlyphButton();
  objc_msgSendSuper2(&v18, sel_touchesMoved_withEvent_, v5, a2);

  v6 = sub_24A62947C(a1, &qword_27EF505C8, 0x277D75C68);
  if (v6)
  {
    v7 = v6;
    [v6 locationInView_];
    v9 = v8;
    v11 = v10;
    [v2 bounds];
    v19.x = v9;
    v19.y = v11;
    v12 = CGRectContainsPoint(v20, v19);
    v13 = [*&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    if (v12)
    {
      v14 = [objc_opt_self() whiteColor];
      v15 = [v14 colorWithAlphaComponent_];

      v16 = [v15 CGColor];
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor];
      if (v17)
      {
        v16 = [v17 CGColor];
      }

      else
      {
        v16 = 0;
      }
    }

    [v13 setBackgroundColor_];
  }
}

id sub_24A62A6F8(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_lastRenderTime];
  if ((v1[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_lastRenderTime + 8] & 1) == 0)
  {
    v3 = v1;
    v4 = *v2;
    v5 = a1;
    [a1 timestamp];
    v7 = v6 - v4;
    v8 = *&v1[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring];
    if (v8)
    {
      sub_24A55C858(v7);
      *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    }

    v9 = *&v3[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring];
    if (v9)
    {
      sub_24A55C858(v7);
      *(v9 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 1;
    }

    [v3 setNeedsDisplay];
    a1 = v5;
  }

  result = [a1 timestamp];
  *v2 = v11;
  *(v2 + 8) = 0;
  return result;
}

void sub_24A62A8A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = (v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named);
  *v7 = a1;
  v7[1] = a2;

  v8 = *(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style);
  v9 = [objc_opt_self() configurationWithPointSize:7 weight:v8 / 3.0];
  v10 = sub_24A62EBE4();
  v11 = [objc_opt_self() systemImageNamed_];

  v12 = [v11 imageByApplyingSymbolConfiguration_];
  if (v12)
  {
    [*(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button) setImage:v12 forState:0];
  }

  v13 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  [*(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button) setAdjustsImageWhenHighlighted_];
  [*(v4 + v13) setShowsTouchWhenHighlighted_];
  v14 = *(v4 + v13);
  if (a3)
  {
    v15 = v14;
    v16 = a3;
  }

  else
  {
    v17 = objc_opt_self();
    v18 = v14;
    v16 = [v17 whiteColor];
  }

  v19 = a3;
  [v14 setTintColor_];

  v20 = [*(v4 + v13) layer];
  [v20 setCornerRadius_];

  if (!a4 || (v21 = [a4 CGColor]) == 0)
  {
    v22 = [objc_opt_self() whiteColor];
    v23 = [v22 colorWithAlphaComponent_];

    v21 = [v23 CGColor];
  }

  v24 = [*(v4 + v13) layer];
  [v24 setBackgroundColor_];

  v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  v26 = *(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor);
  *(v4 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor) = v25;
}

void sub_24A62AB98()
{
  v1 = sub_24A62EBE4();
  v2 = objc_opt_self();
  v3 = [v2 animationWithKeyPath_];

  v4 = sub_24A62E274();
  [v3 setFromValue_];

  v5 = sub_24A62E274();
  [v3 setToValue_];

  v6 = v3;
  [v6 setDuration_];
  v7 = *MEMORY[0x277CDA7B8];
  v40 = objc_opt_self();
  v8 = [v40 functionWithName_];
  [v6 setTimingFunction_];

  [v6 setAutoreverses_];
  LODWORD(v9) = 2139095039;
  [v6 setRepeatCount_];
  v10 = [v0 layer];
  [v10 removeAllAnimations];

  v11 = [v0 layer];
  v12 = [v6 keyPath];
  [v11 addAnimation:v6 forKey:v12];

  v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor];
  v14 = &selRef_effectForBlurEffect_style_;
  if (v13)
  {
    v15 = v13;
    v16 = sub_24A62EBE4();
    v17 = [v2 animationWithKeyPath_];

    v18 = [v15 CGColor];
    [v17 setFromValue_];

    v19 = [objc_opt_self() whiteColor];
    v20 = [v19 colorWithAlphaComponent_];

    v21 = [v20 CGColor];
    [v17 setToValue_];

    v22 = v17;
    [v6 duration];
    [v22 setDuration_];
    v23 = [v6 timingFunction];
    [v22 setTimingFunction_];

    [v22 setAutoreverses_];
    [v6 repeatCount];
    [v22 setRepeatCount_];

    v24 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
    v25 = [*&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
    [v25 removeAllAnimations];

    v26 = [*&v0[v24] layer];
    v27 = [v22 keyPath];
    [v26 addAnimation:v22 forKey:v27];

    v14 = &selRef_effectForBlurEffect_style_;
  }

  v28 = sub_24A62EBE4();
  v29 = [v2 animationWithKeyPath_];

  v30 = sub_24A62E274();
  [v29 setFromValue_];

  v31 = sub_24A62E274();
  [v29 setToValue_];

  v32 = v29;
  [v6 duration];
  [v32 setDuration_];
  v33 = [v40 functionWithName_];
  [v32 setTimingFunction_];

  [v32 setAutoreverses_];
  [v6 v14[188]];
  v35 = v34;

  LODWORD(v36) = v35;
  [v32 setRepeatCount_];

  v37 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label;
  v38 = [*&v0[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label] layer];
  [v38 removeAllAnimations];

  v39 = [*&v0[v37] layer];
  v41 = [v32 keyPath];
  [v39 addAnimation:v32 forKey:v41];
}

double sub_24A62B1A8(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink;
  if (!*(v2 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink))
  {
    v5 = *&a1 * 0.5;
    v6 = [objc_opt_self() displayLinkWithTarget:v2 selector:sel_ringDisplayLinkUpdateWithDisplaylink_];
    v7 = [objc_opt_self() currentRunLoop];
    [v6 addToRunLoop:v7 forMode:*MEMORY[0x277CBE738]];

    v8 = *(v2 + v3);
    *(v2 + v3) = v6;
    v9 = v6;

    if (a2)
    {
      v10 = 0x3FD0000000000000;
    }

    else
    {
      v10 = *&v5;
    }

    v11 = sub_24A5B1B3C(0, 0, 0x3F50624DD2F1A9FCLL, 0, v10, 0);
    v12 = (v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    swift_beginAccess();
    v13 = (v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    if (v12[35] + *(v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308)
    {
      sub_24A55C6B4(1.0);

      *(v11 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    }

    else
    {
    }

    v14 = 1.0 - v13[5];
    v12[35] = v14;
    v12[30] = v14;
    v12[31] = 0.0;
    v15 = *(v2 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring);
    *(v2 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring) = v11;
  }

  return result;
}

uint64_t sub_24A62B3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24A62B408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24A62B464(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C21AC00](a1, a2, v11);
      sub_24A50D7EC(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24A50D7EC(0, a5, a6);
    if (sub_24A62F2C4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24A62F2D4();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_24A62F154();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_24A62F164();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

void sub_24A62B67C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style;
  if (qword_27EF4ECB8 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_27EF5CB30;
  v4 = qword_27EF5CB38;
  v5 = qword_27EF5CB50;
  v6 = xmmword_27EF5CB40;
  *v2 = xmmword_27EF5CB20;
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v6;
  *(v2 + 48) = v5;
  v7 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
  v8 = objc_opt_self();
  v9 = v4;
  *(v0 + v7) = [v8 buttonWithType_];
  v10 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_label;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_normalBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring) = 0;
  v11 = v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_lastRenderTime;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_isEnabled) = 0;
  v12 = (v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_legend);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_named);
  *v13 = 0;
  v13[1] = 0;
  sub_24A62F444();
  __break(1u);
}

void sub_24A62B81C()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring;
  v2 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringPerimiterAnimationSpring);
  if (v2)
  {
    v3 = &v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
    swift_beginAccess();
    if (vabdd_f64(v3[35] + *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40], *v3 + *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o]) > *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold])
    {
      v4 = *v3 + *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
    }

    else
    {
      v4 = v3[35] + *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40];
    }

    v5 = &OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting;
    if (v4 >= 0.99)
    {
      v6 = *&v2[OBJC_IVAR____TtC11FMFindingUI8FLSpring_parameters + 16];
      v7 = v2;
      v8 = sub_24A5B1B3C(0, 0, 0x3F50624DD2F1A9FCLL, 0, v6, 0);
      v9 = (v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
      swift_beginAccess();
      v10 = (v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
      if (v9[35] + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308)
      {
        sub_24A55C6B4(1.0);

        *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      }

      else
      {
      }

      v13 = 1.0 - v10[5];
      v9[35] = v13;
      v9[30] = v13;
      v9[31] = 0.0;
      v5 = &OBJC_IVAR____TtC11FMFindingUI17FMPFSKPatternNode_allFragmentsAreOrbiting;
      v14 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring);
      *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring) = v8;

      v15 = *(v0 + v1);
      *(v0 + v1) = 0;
    }

    v11 = (v0 + v5[192]);
    v12 = *v11;
    if (!*v11)
    {
      v18 = v4 * 6.28318531 + -1.57079633;
LABEL_21:
      v28 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button;
      [*(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button) frame];
      v29 = CGRectGetWidth(v35) * 0.5;
      [*(v0 + v28) frame];
      v30 = CGRectGetHeight(v36) * 0.5;
      v31 = v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style;
      v32 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style + 40);
      v33 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v29 startAngle:v30 endAngle:(*(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_style) - v32) * 0.5 clockwise:{-1.57079633, v18}];
      [v33 setLineWidth_];
      [v33 setLineCapStyle_];
      v34 = [*(v0 + v28) tintColor];
      [v34 setStroke];

      [v33 strokeWithBlendMode:0 alpha:v4 * *(v31 + 48)];
      return;
    }

LABEL_13:
    v16 = &v12[OBJC_IVAR____TtC11FMFindingUI8FLSpring__s];
    swift_beginAccess();
    v17 = *v16 + *&v12[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o];
    if (vabdd_f64(v16[35] + *&v12[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40], v17) <= *&v12[OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold])
    {
      v17 = v16[35] + *&v12[OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40];
    }

    v4 = 1.0 - v17;
    v18 = 4.71238898;
    if (v17 >= 0.99)
    {
      v19 = OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink;
      v20 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringDisplayLink);
      if (v20)
      {
        v21 = objc_opt_self();
        v22 = v12;
        v23 = v20;
        v24 = [v21 currentRunLoop];
        [v23 removeFromRunLoop:v24 forMode:*MEMORY[0x277CBE738]];

        v25 = *(v0 + v19);
      }

      else
      {
        v25 = 0;
      }

      *(v0 + v19) = 0;

      v26 = v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_lastRenderTime;
      *v26 = 0;
      *(v26 + 8) = 1;
      v27 = *v11;
      *v11 = 0;
    }

    goto LABEL_21;
  }

  v11 = (v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring);
  v12 = *(v0 + OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_ringFadeAnimationSpring);
  if (v12)
  {
    goto LABEL_13;
  }
}

id sub_24A62BC70(char a1, char a2, uint64_t (*a3)(id), uint64_t a4)
{
  result = [*&v4[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel] alpha];
  if (a1)
  {
    if (v10 != 1.0)
    {
LABEL_3:
      if (a2)
      {
        v11 = objc_opt_self();
        v12 = swift_allocObject();
        *(v12 + 16) = v4;
        *(v12 + 24) = a1 & 1;
        v25 = sub_24A62CB4C;
        v26 = v12;
        v21 = MEMORY[0x277D85DD0];
        v22 = 1107296256;
        v23 = sub_24A5A8458;
        v24 = &unk_285DAB880;
        v13 = _Block_copy(&v21);
        v14 = v4;

        v15 = swift_allocObject();
        *(v15 + 16) = a3;
        *(v15 + 24) = a4;
        v25 = sub_24A545F18;
        v26 = v15;
        v21 = MEMORY[0x277D85DD0];
        v22 = 1107296256;
        v23 = sub_24A5A1470;
        v24 = &unk_285DAB8D0;
        v16 = _Block_copy(&v21);
        sub_24A519360(a3, a4);

        [v11 animateWithDuration:v13 animations:v16 completion:0.5];
        _Block_release(v16);
        _Block_release(v13);
      }

      else
      {
        v17 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel;
        v18 = 0.0;
        if (a1)
        {
          v18 = 1.0;
        }

        [*&v4[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel] setAlpha_];
        v19 = *&v4[v17];
        v20 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel];
        [v19 alpha];
        [v20 setAlpha_];

        if (a3)
        {
          (a3)();
        }
      }

      return [v4 accessibilityShowViewHandler];
    }
  }

  else if (v10 != 0.0)
  {
    goto LABEL_3;
  }

  if (a3)
  {
    return a3(result);
  }

  return result;
}

void sub_24A62BEEC(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel;
  v4 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel);
  v5 = 0.0;
  if (a2)
  {
    v5 = 1.0;
  }

  [v4 setAlpha_];
  v6 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel);
  v7 = *(a1 + v3);
  v8 = v6;
  [v7 alpha];
  [v8 setAlpha_];
}

uint64_t sub_24A62BF94(uint64_t a1)
{
  v1 = a1;
  v32 = a1;
  v2 = type metadata accessor for FMFindingViewState(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  sub_24A52934C(v1 + v9, v5);
  v31 = *v5;
  v10 = v3[7];
  v11 = sub_24A62E214();
  (*(*(v11 - 8) + 16))(&v8[v10], &v5[v10], v11);
  v12 = &v5[v3[8]];
  v14 = *v12;
  v13 = *(v12 + 1);
  v15 = v5[v3[9]];
  v16 = &v5[v3[10]];
  *(v39 + 13) = *(v16 + 93);
  v17 = *(v16 + 5);
  v38 = *(v16 + 4);
  v39[0] = v17;
  v18 = *(v16 + 3);
  v36 = *(v16 + 2);
  v37 = v18;
  v19 = *(v16 + 1);
  v34 = *v16;
  v35 = v19;
  LOBYTE(v1) = v5[v3[11]];
  v20 = v5[v3[13]];
  v30 = v5[v3[14]];
  v21 = v5[v3[15]];
  v22 = v5[v3[16]];

  sub_24A508CE4(&v34, v33);
  sub_24A5D8A0C(v5);
  v23 = &v8[v3[17]];
  *v23 = 0;
  *(v23 + 1) = 0;
  *v8 = v31;
  v24 = &v8[v3[8]];
  *v24 = v14;
  *(v24 + 1) = v13;
  v8[v3[9]] = v15;
  v25 = &v8[v3[10]];
  v26 = v39[0];
  *(v25 + 4) = v38;
  *(v25 + 5) = v26;
  *(v25 + 93) = *(v39 + 13);
  v27 = v35;
  *v25 = v34;
  *(v25 + 1) = v27;
  v28 = v37;
  *(v25 + 2) = v36;
  *(v25 + 3) = v28;
  v8[v3[11]] = v1;
  v8[v3[12]] = 0;
  v8[v3[13]] = v20;
  v8[v3[14]] = v30;
  v8[v3[15]] = v21;
  v8[v3[16]] = v22;
  sub_24A60AB3C(v8);
  return sub_24A5D8A0C(v8);
}

void sub_24A62C1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel);
  if (a3)
  {
    v4 = v3;
    v5 = sub_24A62EBE4();
  }

  else
  {
    v6 = v3;
    v5 = 0;
  }

  v7 = v5;
  [v3 setText_];
}

void sub_24A62C2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v72 = a5;
  v75 = a3;
  v10 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v65[-v14];
  v16 = &v5[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state];
  swift_beginAccess();
  if (sub_24A62715C() != 4)
  {
    v17 = sub_24A62715C();
    if (v17 <= 1)
    {
      if (!v17)
      {

        goto LABEL_10;
      }
    }

    else if (v17 != 2 && v17 != 3)
    {
LABEL_9:
      a1 = 0;
      a2 = 0;
      goto LABEL_10;
    }

    v18 = sub_24A62F634();

    if (v18)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  v73 = a1;
  v74 = v16;
  v19 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel;
  v20 = [*&v6[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsLabel] text];
  if (!v20)
  {
    if (!a2)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v21 = v20;
  v22 = sub_24A62EC14();
  v24 = v23;

  if (!a2)
  {

    v47 = *&v6[v19];
    [v47 setText_];

    v48 = swift_allocObject();
    *(v48 + 16) = v6;
    v49 = v6;
    sub_24A62BC70(0, 1, sub_24A62CAA8, v48);

    if (a4)
    {
      v50 = sub_24A62EBE4();
    }

    else
    {
      v50 = 0;
    }

    [v49 accessibilityDidUpdateWithTopLabelMessage:v50 instruction:0];

    goto LABEL_28;
  }

  if (v22 == v73 && a2 == v24)
  {

    goto LABEL_28;
  }

  v26 = sub_24A62F634();

  if ((v26 & 1) == 0)
  {
LABEL_19:
    v27 = *&v6[v19];

    v28 = sub_24A62EBE4();

    [v27 setText_];

    sub_24A62BC70(1, 1, 0, 0);
    sub_24A52934C(v74, v12);
    v71 = *v12;
    v29 = v10[5];
    v30 = sub_24A62E214();
    (*(*(v30 - 8) + 16))(&v15[v29], &v12[v29], v30);
    v31 = &v12[v10[6]];
    v33 = *v31;
    v32 = *(v31 + 1);
    v69 = v12[v10[7]];
    v34 = &v12[v10[8]];
    *&v82[13] = *(v34 + 93);
    v35 = *(v34 + 5);
    v81 = *(v34 + 4);
    *v82 = v35;
    v36 = *(v34 + 3);
    v79 = *(v34 + 2);
    v80 = v36;
    v37 = *(v34 + 1);
    aBlock = *v34;
    v78 = v37;
    v68 = v12[v10[9]];
    v38 = v10[12];
    v67 = v12[v10[11]];
    v70 = v12[v38];
    v39 = v12[v10[13]];
    v66 = v12[v10[14]];

    sub_24A508CE4(&aBlock, v76);
    sub_24A5D8A0C(v12);
    v40 = &v15[v10[15]];
    *v40 = 0;
    *(v40 + 1) = 0;
    *v15 = v71;
    v41 = &v15[v10[6]];
    *v41 = v33;
    *(v41 + 1) = v32;
    v15[v10[7]] = v69;
    v42 = &v15[v10[8]];
    v43 = *v82;
    *(v42 + 4) = v81;
    *(v42 + 5) = v43;
    *(v42 + 93) = *&v82[13];
    v44 = v78;
    *v42 = aBlock;
    *(v42 + 1) = v44;
    v45 = v80;
    *(v42 + 2) = v79;
    *(v42 + 3) = v45;
    v15[v10[9]] = v68;
    v15[v10[10]] = 1;
    v15[v10[11]] = v67;
    v15[v10[12]] = v70;
    v15[v10[13]] = v39;
    v15[v10[14]] = v66;
    sub_24A60AB3C(v15);
    if (a4)
    {
      v46 = sub_24A62EBE4();
    }

    else
    {
      v46 = 0;
    }

    v51 = sub_24A62EBE4();
    [v6 accessibilityDidUpdateWithTopLabelMessage:v46 instruction:v51];

    sub_24A5D8A0C(v15);
  }

LABEL_28:
  if (a4)
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.1;
  }

  v53 = objc_opt_self();
  v54 = *&v6[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsTopLabel];
  v55 = swift_allocObject();
  v56 = v75;
  v55[2] = v6;
  v55[3] = v56;
  v55[4] = a4;
  *&v79 = sub_24A62CAF0;
  *(&v79 + 1) = v55;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v78 = sub_24A5A8458;
  *(&v78 + 1) = &unk_285DAB830;
  v57 = _Block_copy(&aBlock);

  v58 = v6;
  v59 = v54;

  [v53 transitionWithView:v59 duration:5242880 options:v57 animations:0 completion:v52];
  _Block_release(v57);

  sub_24A59232C((*(v74 + v10[8] + 96) & 0xFC000000) != 0x4000000);
  if (sub_24A5FEA14(v72) == 0xD000000000000016 && 0x800000024A63D070 == v60)
  {
  }

  else
  {
    v61 = sub_24A62F634();

    if ((v61 & 1) == 0)
    {
      v63 = *&v58[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton];
      v64 = [v63 layer];
      [v64 removeAllAnimations];

      v62 = [*&v63[OBJC_IVAR____TtC11FMFindingUI15FMR1GlyphButton_button] layer];
      [v62 removeAllAnimations];

      goto LABEL_37;
    }
  }

  v62 = *&v58[OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_rightActionButton];
  sub_24A62AB98();
LABEL_37:
}

uint64_t sub_24A62CA70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A62CAB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double sub_24A62CAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24A62CB14()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A62CB58()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *FMFindingDebuggableViewController.init(mockSession:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController) = 0;
  v3 = OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];

  v5 = sub_24A5CF524(v4);

  v6 = objc_allocWithZone(type metadata accessor for FMFindingDebugViewController());
  v7 = v5;
  v8 = sub_24A5DA24C(v7, a1);
  v9 = OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController;
  v10 = *&v7[OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController];
  *&v7[OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController] = v8;

  v11 = *&v7[v9];
  if (v11)
  {
    *(v11 + OBJC_IVAR____TtC11FMFindingUI28FMFindingDebugViewController_delegate + 8) = &off_285DAB8F8;
    swift_unknownObjectWeakAssign();
  }

  return v7;
}

void sub_24A62CD48()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for FMFindingDebuggableViewController(0);
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_24A62D238();
}

id sub_24A62CDE0(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FMFindingDebuggableViewController(0);
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1 & 1);
  return [*&v1[OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer] setHidden_];
}

id sub_24A62CED0(id result)
{
  if (result == 1)
  {
    return [*(v1 + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer) setHidden_];
  }

  return result;
}

void sub_24A62CF20(_WORD *a1, __int16 *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMFindingViewState(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 8);
  if (!sub_24A629198(a2, a1))
  {
    v9 = *a2;
    v10 = (v9 >> 13) & 3;
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = sub_24A62DF44();
        *(&v41 + 1) = v11;
        *&v42 = sub_24A5964D0();
        v12 = sub_24A5292E8(&v40);
        (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D089D0], v11);
        LOBYTE(v11) = MEMORY[0x24C219850](&v40);
        sub_24A508C54(&v40);
        if (v11)
        {
LABEL_5:
          sub_24A5C7770(1, a2);
          v13 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_instructionsController);
          v14 = OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
          swift_beginAccess();
          sub_24A52934C(v3 + v14, v8);
          v15 = v13;
          sub_24A5FD8E0(v8);

          sub_24A5D8A0C(v8);
          sub_24A5C6678();
          sub_24A5C4CDC(a1, a2);
          goto LABEL_8;
        }
      }

      else if ((v9 & 0x8100) == 0x100)
      {
        goto LABEL_5;
      }
    }

    sub_24A5C4930(a1, a2);
  }

LABEL_8:
  v16 = *(v3 + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController);
  if (!v16)
  {
    return;
  }

  v17 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_configuration);
  v18 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMFindingViewController_state;
  swift_beginAccess();
  v19 = v18 + *(v6 + 32);
  v20 = *(v19 + 80);
  v44 = *(v19 + 64);
  v45[0] = v20;
  *(v45 + 13) = *(v19 + 93);
  v21 = *(v19 + 48);
  v42 = *(v19 + 32);
  v43 = v21;
  v22 = *(v19 + 16);
  v40 = *v19;
  v41 = v22;
  v23 = *(v17 + 16);
  v24 = v16;

  if (!v23)
  {
    sub_24A508CE4(&v40, v34);
    goto LABEL_13;
  }

  sub_24A508CE4(&v40, v34);
  v25 = sub_24A515A5C(&v40);
  if ((v26 & 1) == 0)
  {
LABEL_13:
    sub_24A577158(v37);
    v28 = v37[0];
    v29 = v37[1];
    v30 = v37[2];
    v31 = v38;
    v32 = v39;

    sub_24A517ABC(&v40);
    goto LABEL_14;
  }

  v27 = *(v17 + 56) + 40 * v25;
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  v32 = *(v27 + 32);
  sub_24A517ABC(&v40);

LABEL_14:
  v34[0] = v28;
  v34[1] = v29;
  v34[2] = v30;
  v35 = v31;
  v36 = v32;
  sub_24A5DC0F4(v34);
}

void sub_24A62D238()
{
  v1 = *&v0[OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer;
  [v3 addSubview_];

  v6 = v2;
  [v0 addChildViewController_];
  [*&v0[v5] setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v6 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = [v6 view];
  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v9 setPreservesSuperviewLayoutMargins_];

  v10 = *&v0[v5];
  v11 = [v6 view];

  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v10 addSubview_];

  [v6 didMoveToParentViewController_];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24A633820;
  v13 = [*&v0[v5] topAnchor];
  v14 = [v6 view];

  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v12 + 32) = v16;
  v17 = [*&v0[v5] bottomAnchor];
  v18 = [v6 view];

  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v12 + 40) = v20;
  v21 = [*&v0[v5] leadingAnchor];
  v22 = [v6 view];

  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v12 + 48) = v24;
  v25 = [*&v0[v5] trailingAnchor];
  v26 = [v6 view];

  if (!v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = objc_opt_self();
  v28 = [v26 trailingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v12 + 56) = v29;
  sub_24A509158();
  v30 = sub_24A62ED54();

  [v27 activateConstraints_];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24A635FE0;
  v32 = [*&v0[v5] bottomAnchor];
  v33 = [v0 view];
  if (!v33)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(v31 + 32) = v36;
  v37 = [*&v0[v5] leadingAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v31 + 40) = v41;
  v42 = [*&v0[v5] trailingAnchor];
  v43 = [v0 view];
  if (!v43)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = [v43 trailingAnchor];

  v46 = [v42 constraintEqualToAnchor_];
  *(v31 + 48) = v46;
  v47 = sub_24A62ED54();

  [v27 activateConstraints_];
}

void sub_24A62D8B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer);
}

id FMFindingDebuggableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFindingDebuggableViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FMFindingDebuggableViewController(uint64_t a1)
{
  result = qword_27EF52638;
  if (!qword_27EF52638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A62DA70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 289))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A62DA90(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 288) = 0;
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

  *(result + 289) = v3;
  return result;
}

uint64_t sub_24A62DB1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE900000000000065;
  v4 = 0x7261656E696CLL;
  if (v2 == 1)
  {
    v4 = 0x7672754364617571;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7672754364617571;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEF637241646E4165;
  }

  v7 = 0xE900000000000065;
  v8 = 0x7261656E696CLL;
  if (*a2 == 1)
  {
    v8 = 0x7672754364617571;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7672754364617571;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEF637241646E4165;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A62F634();
  }

  return v11 & 1;
}

uint64_t sub_24A62DC08()
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

double sub_24A62DCA8(uint64_t a1)
{
  sub_24A62EC74();

  return result;
}

uint64_t sub_24A62DD34(uint64_t a1)
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

unint64_t sub_24A62DDD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A62DEC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A62DE00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF637241646E4165;
  v4 = 0xE900000000000065;
  v5 = 0x7672754364617571;
  if (v2 != 1)
  {
    v5 = 0x7261656E696CLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7672754364617571;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24A62DE70()
{
  result = qword_27EF52648;
  if (!qword_27EF52648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF52648);
  }

  return result;
}

unint64_t sub_24A62DEC4(uint64_t a1, uint64_t a2)
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}