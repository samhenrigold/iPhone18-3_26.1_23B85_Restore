uint64_t ClearSearchHistoryAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t ClearSearchHistoryAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClearSearchHistoryAction(uint64_t a1)
{
  result = qword_27F23BE50;
  if (!qword_27F23BE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::AppPlatform_optional __swiftcall AppPlatform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppPlatform.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F6870;
  v3 = 6513005;
  if (v1 != 5)
  {
    v3 = 0x6E6F69736976;
  }

  v4 = 0x6863746177;
  if (v1 != 3)
  {
    v4 = 30324;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 6578544;
  if (v1 != 1)
  {
    v5 = 0x736567617373656DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F1D3824(uint64_t a1)
{
  sub_24F92B218();
}

void sub_24F1D3920(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656E6F6870;
  v5 = 0xE300000000000000;
  v6 = 6513005;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736976;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6863746177;
  if (v2 != 3)
  {
    v8 = 30324;
    v7 = 0xE200000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6578544;
  if (v2 != 1)
  {
    v10 = 0x736567617373656DLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t SupplementaryAppPlatform.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24F92CB88();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_24F1D3AFC()
{
  result = qword_27F23BE60;
  if (!qword_27F23BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BE60);
  }

  return result;
}

unint64_t sub_24F1D3B54()
{
  result = qword_27F23BE68;
  if (!qword_27F23BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BE68);
  }

  return result;
}

uint64_t sub_24F1D3BA8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F1D3C14()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F1D3C64@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_24F1D3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24E60169C(a3, v22 - v9, &unk_27F21B570, &qword_24F93B020);
  v11 = sub_24F92B858();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24E601704(v10, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24F92B778();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24F92B1B8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24F1D4078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v26[0] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  sub_24E60169C(a3, v26 - v13, &unk_27F21B570, &qword_24F93B020);
  v15 = sub_24F92B858();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_24E601704(v14, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_24F92B778();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_24F92B1B8() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      v23 = (v21 | v19);
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_24F1D4328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24E60169C(a3, v22 - v9, &unk_27F21B570, &qword_24F93B020);
  v11 = sub_24F92B858();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24E601704(v10, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24F92B778();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_24F92B1B8() + 32;
      sub_24E69A5C4(0, &qword_27F23BEA8, 0x277CEE5B8);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);
  sub_24E69A5C4(0, &qword_27F23BEA8, 0x277CEE5B8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24F1D4600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24E60169C(a3, v22 - v9, &unk_27F21B570, &qword_24F93B020);
  v11 = sub_24F92B858();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24E601704(v10, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24F92B778();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_24F92B1B8() + 32;
      sub_24F928AE8();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);
  sub_24F928AE8();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

BOOL sub_24F1D495C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_24F1D9EF4(a4, a5, a6);
  }

  while ((sub_24F92AFF8() & 1) == 0);
  return v10 != v11;
}

BOOL sub_24F1D4A64(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VirtualCall(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a2 + 16);
  do
  {
    v9 = v7;
    if (v8 == v7)
    {
      break;
    }

    sub_24F002CA0(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7++, v6);
    v10 = _s12GameStoreKit11VirtualCallV2eeoiySbAC_ACtFZ_0();
    sub_24F002D04(v6);
  }

  while ((v10 & 1) == 0);
  return v8 != v9;
}

uint64_t OverlayCallCenter.callInvitesCount.getter()
{
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  return *(v0 + 40);
}

uint64_t OverlayCallCenter.participantCount.getter()
{
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  return *(v0 + 48);
}

double sub_24F1D4D14()
{
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();

  return result;
}

uint64_t sub_24F1D4DE4()
{
  type metadata accessor for OverlayCallCenter(0);
  v0 = swift_allocObject();
  result = sub_24F1D50B4();
  off_27F23BE70 = v0;
  return result;
}

uint64_t static OverlayCallCenter.shared.getter()
{
  if (qword_27F210FD0 != -1)
  {
    swift_once();
  }
}

double sub_24F1D4E80@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 24);

  return result;
}

uint64_t sub_24F1D4F6C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EA1878C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
    sub_24F91FD78();
  }
}

uint64_t sub_24F1D50B4()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_24F91FDB8();
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v0 selector:sel_callCenterCallStatusChangedWithNotification_ name:*MEMORY[0x277D6EFF0] object:0];

  v5 = [v3 defaultCenter];
  [v5 addObserver:v0 selector:sel_callCenterCallStatusChangedWithNotification_ name:*MEMORY[0x277D6F038] object:0];

  return v0;
}

void sub_24F1D51BC(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
    sub_24F91FD78();
  }
}

double sub_24F1D52CC(uint64_t a1)
{
  if (*(v1 + 40) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
    sub_24F91FD78();
  }

  return result;
}

double sub_24F1D53D0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 48) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
    sub_24F91FD78();
  }

  return result;
}

uint64_t OverlayCallCenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t OverlayCallCenter.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

double sub_24F1D5654()
{
  if ([*(v0 + 16) hasCurrentCalls])
  {
    v1 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
    sub_24F91FD88();

    swift_beginAccess();
    v1 = *(*(v0 + 24) + 16) != 0;
  }

  if (qword_27F2113B0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E760);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BDA8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    swift_getKeyPath();
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
    sub_24F91FD88();

    *(v5 + 4) = *(v0 + 32);

    *(v5 + 8) = 1024;
    *(v5 + 10) = v1;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Updating hasActiveCalls from %{BOOL}d to %{BOOL}d", v5, 0xEu);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  if (v1 == *(v0 + 32))
  {
    *(v0 + 32) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
    sub_24F91FD78();
  }

  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  if ((*(v0 + 32) & 1) == 0)
  {
    if (*(v0 + 40))
    {
      v8 = swift_getKeyPath();
      MEMORY[0x28223BE20](v8);
      sub_24F91FD78();
    }

    if (*(v0 + 48))
    {
      v9 = swift_getKeyPath();
      MEMORY[0x28223BE20](v9);
      sub_24F91FD78();
    }
  }

  return result;
}

uint64_t OverlayCallCenter.hasActiveCalls.getter()
{
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  return *(v0 + 32);
}

double sub_24F1D5B7C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (qword_27F2113B0 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E760);
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDA8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24E5DD000, v8, v9, "TUCallCenter call status changed notification", v10, 2u);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_24F92B7F8();
  v12 = a1;

  v13 = sub_24F92B7E8();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  v14[5] = v2;
  sub_24EA998B8(0, 0, v6, &unk_24F9D3CD8, v14);

  return result;
}

uint64_t sub_24F1D5D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[21] = *(type metadata accessor for VirtualCall(0) - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_24F92B7F8();
  v5[25] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F1D5E70, v7, v6);
}

uint64_t sub_24F1D5E70()
{
  v48 = v0;
  if ([*(v0 + 152) object])
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v1 = v47;
  *(v0 + 16) = v46;
  *(v0 + 32) = v1;
  sub_24E60169C(v0 + 16, v0 + 48, &qword_27F2129B0, &unk_24F945320);
  if (!*(v0 + 72))
  {

    sub_24E601704(v0 + 48, &qword_27F2129B0, &unk_24F945320);
    goto LABEL_28;
  }

  sub_24E69A5C4(0, &qword_27F2376C0, 0x277D6EDE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v2 = *(v0 + 128);
  if (qword_27F2113B0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E760);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDA8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v46 = v8;
    *v7 = 136315394;
    v9 = [v4 callUUID];
    v10 = sub_24F92B0D8();
    v12 = v11;

    v13 = sub_24E7620D4(v10, v12, &v46);

    *(v7 + 4) = v13;
    *(v7 + 12) = 1024;
    LODWORD(v13) = [v4 status];

    *(v7 + 14) = v13;
    _os_log_impl(&dword_24E5DD000, v5, v6, "notification call %s has %d status", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v14 = sub_24F9220B8();
  v15 = sub_24F92BDA8();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 160);
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    swift_getKeyPath();
    *(v0 + 144) = v17;
    sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
    sub_24F91FD88();

    swift_beginAccess();
    *(v18 + 4) = *(*(v17 + 24) + 16);

    _os_log_impl(&dword_24E5DD000, v14, v15, "%ld virtualCall(s)", v18, 0xCu);
    MEMORY[0x2530542D0](v18, -1, -1);
  }

  else
  {
  }

  if ([v4 status] != 3 && objc_msgSend(v4, sel_status) != 4)
  {

LABEL_10:

    goto LABEL_28;
  }

  v19 = *(v0 + 160);
  swift_getKeyPath();
  *(v0 + 136) = v19;
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();
  v2 = *(v19 + 24);
  v20 = v2[2];

  if (v20)
  {
    v21 = 0;
    v22 = *(v0 + 168);
    while (1)
    {
      if (v21 >= v2[2])
      {
        __break(1u);
        goto LABEL_32;
      }

      v23 = *(v0 + 184);
      sub_24F002CA0(v2 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21, v23);
      if (sub_24F1D6634(v23, v4))
      {
        break;
      }

      ++v21;
      sub_24F002D04(*(v0 + 184));
      if (v20 == v21)
      {
        goto LABEL_22;
      }
    }

    v24 = *(v0 + 192);
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);

    sub_24F1D9788(v25, v24);
    sub_24F002CA0(v24, v26);
    v27 = v4;
    v28 = sub_24F9220B8();
    v29 = sub_24F92BDA8();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 176);
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v46 = v33;
      *v32 = 136315394;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = sub_24F92CD88();
      v36 = v35;
      sub_24F002D04(v31);
      v37 = sub_24E7620D4(v34, v36, &v46);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v38 = [v27 callUUID];
      v39 = sub_24F92B0D8();
      v41 = v40;

      v42 = sub_24E7620D4(v39, v41, &v46);

      *(v32 + 14) = v42;
      _os_log_impl(&dword_24E5DD000, v28, v29, "virtual call %s matches call %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v33, -1, -1);
      MEMORY[0x2530542D0](v32, -1, -1);
    }

    else
    {

      sub_24F002D04(v31);
    }

    v43 = *(v0 + 192);
    sub_24F1D6950(v43, v27);

    sub_24F002D04(v43);
  }

  else
  {
LABEL_22:
  }

LABEL_28:
  sub_24F1D5654();
  sub_24E601704(v0 + 16, &qword_27F2129B0, &unk_24F945320);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_24F1D6634(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for VirtualCall(0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(v8 + 32));
  v10 = *v9;
  v11 = v9[1];
  v12 = [a2 provider];
  v13 = [v12 identifier];

  v14 = sub_24F92B0D8();
  v16 = v15;

  if (v10 == v14 && v11 == v16)
  {

    return 1;
  }

  else
  {
    v18 = sub_24F92CE08();

    if (v18)
    {
      return 1;
    }

    else
    {
      if (qword_27F2113B0 != -1)
      {
        swift_once();
      }

      v20 = sub_24F9220D8();
      __swift_project_value_buffer(v20, qword_27F39E760);
      sub_24F002CA0(a1, v7);
      v21 = a2;
      v22 = sub_24F9220B8();
      v23 = sub_24F92BDA8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v37 = v25;
        *v24 = 136315394;
        v26 = &v7[*(v4 + 32)];
        v27 = *v26;
        v28 = v26[1];

        sub_24F002D04(v7);
        v29 = sub_24E7620D4(v27, v28, &v37);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2080;
        v30 = [v21 provider];
        v31 = [v30 identifier];

        v32 = sub_24F92B0D8();
        v34 = v33;

        v35 = sub_24E7620D4(v32, v34, &v37);

        *(v24 + 14) = v35;
        _os_log_impl(&dword_24E5DD000, v22, v23, "virtual call provider didn't match %s != %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v25, -1, -1);
        MEMORY[0x2530542D0](v24, -1, -1);
      }

      else
      {

        sub_24F002D04(v7);
      }

      return 0;
    }
  }
}

double sub_24F1D6950(uint64_t a1, void *a2)
{
  v3 = v2;
  v52 = a2;
  v5 = type metadata accessor for VirtualCall(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v51 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v51 - v13;
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v53[3] = v3;
  v51[1] = sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  v51[2] = v15;
  sub_24F91FD88();

  swift_beginAccess();
  v16 = *(v3 + 24);
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = 0;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_24F002CA0(v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v14);
      v19 = _s12GameStoreKit11VirtualCallV2eeoiySbAC_ACtFZ_0();
      sub_24F002D04(v14);
      if (v19)
      {
        break;
      }

      if (v17 == ++v18)
      {
        goto LABEL_6;
      }
    }

    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v36 = sub_24F9220D8();
    __swift_project_value_buffer(v36, qword_27F39E760);
    sub_24F002CA0(a1, v11);
    v37 = v52;
    v38 = sub_24F9220B8();
    v39 = sub_24F92BDA8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53[0] = v52;
      *v40 = 136315394;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v41 = sub_24F92CD88();
      v43 = v42;
      sub_24F002D04(v11);
      v44 = sub_24E7620D4(v41, v43, v53);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = [v37 callUUID];
      v46 = sub_24F92B0D8();
      v48 = v47;

      v49 = sub_24E7620D4(v46, v48, v53);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_24E5DD000, v38, v39, "Upgrading virtual call %s with TUCall %s", v40, 0x16u);
      v50 = v52;
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v50, -1, -1);
      MEMORY[0x2530542D0](v40, -1, -1);
    }

    else
    {

      sub_24F002D04(v11);
    }

    swift_getKeyPath();
    v53[0] = v3;
    sub_24F91FD88();

    v53[0] = v3;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24EA0E98C(v18, v14);
    sub_24F002D04(v14);
    swift_endAccess();
    v53[0] = v3;
    swift_getKeyPath();
    sub_24F91FD98();

    return sub_24F1D5654();
  }

  else
  {
LABEL_6:

    if (qword_27F2113B0 != -1)
    {
LABEL_17:
      swift_once();
    }

    v20 = sub_24F9220D8();
    __swift_project_value_buffer(v20, qword_27F39E760);
    sub_24F002CA0(a1, v8);
    v21 = v52;
    v22 = sub_24F9220B8();
    v23 = sub_24F92BDA8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v53[0] = v25;
      *v24 = 136315394;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_24F92CD88();
      v28 = v27;
      sub_24F002D04(v8);
      v29 = sub_24E7620D4(v26, v28, v53);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = [v21 callUUID];
      v31 = sub_24F92B0D8();
      v33 = v32;

      v34 = sub_24E7620D4(v31, v33, v53);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_24E5DD000, v22, v23, "Unable to upgrade virtual call %s with TUCall %s, as it isn't registered", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v25, -1, -1);
      MEMORY[0x2530542D0](v24, -1, -1);
    }

    else
    {

      sub_24F002D04(v8);
    }
  }

  return result;
}

void sub_24F1D7064(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  *a2 = *(v3 + 32);
}

void sub_24F1D7134(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  *a2 = *(v3 + 40);
}

uint64_t type metadata accessor for OverlayCallCenter(uint64_t a1)
{
  result = qword_27F23BE80;
  if (!qword_27F23BE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1D727C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  *a2 = *(v3 + 48);
}

double OverlayCallCenter.addVirtualCall(_:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - v9;
  v11 = type metadata accessor for VirtualCall(0);
  v66 = *(v11 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v67 = &v60 - v15;
  MEMORY[0x28223BE20](v16);
  v69 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v70[3] = v4;
  v22 = sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  v65 = v21;
  v68 = v22;
  sub_24F91FD88();

  swift_beginAccess();
  v23 = *(v4 + 24);

  v24 = sub_24F1D4A64(a1, v23);

  if (v24)
  {
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v25 = sub_24F9220D8();
    __swift_project_value_buffer(v25, qword_27F39E760);
    sub_24F002CA0(a1, v13);
    v26 = sub_24F9220B8();
    v27 = sub_24F92BDA8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v70[0] = v29;
      *v28 = 136315138;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v30 = sub_24F92CD88();
      v32 = v31;
      sub_24F002D04(v13);
      v33 = sub_24E7620D4(v30, v32, v70);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_24E5DD000, v26, v27, "Unable to add virtual call %s, as it's already added", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2530542D0](v29, -1, -1);
      MEMORY[0x2530542D0](v28, -1, -1);
    }

    else
    {

      sub_24F002D04(v13);
    }
  }

  else
  {
    v63 = v10;
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v35 = sub_24F9220D8();
    __swift_project_value_buffer(v35, qword_27F39E760);
    sub_24F002CA0(a1, v20);
    v36 = sub_24F9220B8();
    v37 = sub_24F92BDA8();
    v38 = os_log_type_enabled(v36, v37);
    v64 = a3;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70[0] = v61;
      *v39 = 136315394;
      sub_24F91F6B8();
      v62 = a1;
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_24F92CD88();
      v42 = v41;
      sub_24F002D04(v20);
      v43 = sub_24E7620D4(v40, v42, v70);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      a1 = v62;
      v44 = sub_24F92D188();
      v46 = sub_24E7620D4(v44, v45, v70);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_24E5DD000, v36, v37, "Adding virtual call %s with timeout %s", v39, 0x16u);
      v47 = v61;
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v47, -1, -1);
      MEMORY[0x2530542D0](v39, -1, -1);
    }

    else
    {

      sub_24F002D04(v20);
    }

    sub_24F002CA0(a1, v69);
    swift_getKeyPath();
    v70[0] = v4;
    sub_24F91FD88();

    v70[0] = v4;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    v48 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 24) = v48;
    v50 = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_24E61A00C(0, v48[2] + 1, 1, v48);
      *(v4 + 24) = v48;
    }

    v52 = v48[2];
    v51 = v48[3];
    if (v52 >= v51 >> 1)
    {
      v48 = sub_24E61A00C((v51 > 1), v52 + 1, 1, v48);
    }

    v48[2] = v52 + 1;
    v53 = *(v66 + 80);
    sub_24F1D9788(v69, v48 + ((v53 + 32) & ~v53) + *(v66 + 72) * v52);
    *(v4 + 24) = v48;
    swift_endAccess();
    v70[0] = v4;
    swift_getKeyPath();
    sub_24F91FD98();

    v54 = sub_24F92B858();
    (*(*(v54 - 8) + 56))(v50, 1, 1, v54);
    v55 = v67;
    sub_24F002CA0(a1, v67);
    sub_24F92B7F8();

    v56 = sub_24F92B7E8();
    v57 = swift_allocObject();
    v58 = MEMORY[0x277D85700];
    v57[2] = v56;
    v57[3] = v58;
    v59 = v64;
    v57[4] = a2;
    v57[5] = v59;
    v57[6] = v4;
    sub_24F1D9788(v55, v57 + ((v53 + 56) & ~v53));
    sub_24F1D3DA4(0, 0, v50, &unk_24F9D3C20, v57);

    return sub_24F1D5654();
  }

  return result;
}

uint64_t sub_24F1D7BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  type metadata accessor for VirtualCall(0);
  v7[10] = swift_task_alloc();
  v8 = sub_24F92CA08();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  sub_24F92B7F8();
  v7[14] = sub_24F92B7E8();
  v10 = sub_24F92B778();
  v7[15] = v10;
  v7[16] = v9;

  return MEMORY[0x2822009F8](sub_24F1D7CFC, v10, v9);
}

uint64_t sub_24F1D7CFC()
{
  sub_24F92CFB8();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_24F1D7DBC;
  v3 = v0[6];
  v2 = v0[7];

  return sub_24E70C87C(v3, v2, 0, 0, 1);
}

uint64_t sub_24F1D7DBC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 128);
  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_24F1D8260;
  }

  else
  {
    v8 = sub_24F1D7F54;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24F1D7F54()
{
  v23 = v0;
  v2 = v0[8];
  v1 = v0[9];

  swift_getKeyPath();
  v0[5] = v2;
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();
  v3 = *(v2 + 24);

  LOBYTE(v1) = sub_24F1D4A64(v1, v3);

  if (v1)
  {
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v4 = v0[9];
    v5 = v0[10];
    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E760);
    sub_24F002CA0(v4, v5);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDA8();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[10];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v13 = sub_24F92CD88();
      v15 = v14;
      sub_24F002D04(v10);
      v16 = sub_24E7620D4(v13, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Virtual call %s timed out", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x2530542D0](v12, -1, -1);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    else
    {

      sub_24F002D04(v10);
    }

    v17 = v0[9];
    sub_24F1D9EA0();
    v18 = swift_allocError();
    *v19 = 0;
    v19[1] = 0;
    OverlayCallCenter.virtualCallFailed(_:withError:)(v17, v18);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_24F1D8260()
{

  v1 = *(v0 + 8);

  return v1();
}

void OverlayCallCenter.virtualCallFailed(_:withError:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v94 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v82 - v6;
  v90 = type metadata accessor for VirtualCall(0);
  v7 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v92 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v86 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v88 = &v82 - v12;
  v85 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v82 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC12GameStoreKit17OverlayCallCenter___observationRegistrar;
  v95[3] = v3;
  v18 = sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  v91 = v17;
  v93 = v18;
  sub_24F91FD88();

  swift_beginAccess();
  v89 = v3;
  v19 = *(v3 + 24);
  v20 = *(v19 + 16);

  if (v20)
  {
    v21 = 0;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v22 = *(v7 + 80);
      v23 = (v22 + 32) & ~v22;
      v24 = *(v7 + 72) * v21;
      sub_24F002CA0(v19 + v23 + v24, v16);
      v25 = _s12GameStoreKit11VirtualCallV2eeoiySbAC_ACtFZ_0();
      sub_24F002D04(v16);
      if (v25)
      {
        break;
      }

      if (v20 == ++v21)
      {
        goto LABEL_6;
      }
    }

    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v43 = sub_24F9220D8();
    __swift_project_value_buffer(v43, qword_27F39E760);
    v44 = v88;
    sub_24F002CA0(a1, v88);
    v45 = v94;
    v46 = v94;
    v47 = sub_24F9220B8();
    v48 = sub_24F92BDA8();

    if (os_log_type_enabled(v47, v48))
    {
      v84 = v48;
      v92 = v47;
      v49 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v95[0] = v83;
      *v49 = 136315394;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v50 = sub_24F92CD88();
      v52 = v51;
      sub_24F002D04(v44);
      v53 = sub_24E7620D4(v50, v52, v95);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2112;
      if (v45)
      {
        v54 = v45;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        v56 = v55;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      v57 = v92;
      v58 = v84;
      *(v49 + 14) = v55;
      v59 = v82;
      *v82 = v56;
      _os_log_impl(&dword_24E5DD000, v57, v58, "Virtual call %s failed with error %@", v49, 0x16u);
      sub_24E601704(v59, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v59, -1, -1);
      v60 = v83;
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x2530542D0](v60, -1, -1);
      MEMORY[0x2530542D0](v49, -1, -1);
    }

    else
    {

      sub_24F002D04(v44);
    }

    v61 = v89;
    swift_getKeyPath();
    v95[0] = v61;
    v62 = v94;
    sub_24F91FD88();

    v95[0] = v61;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    v63 = *(v61 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v61 + 24) = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = sub_24ECDE344(v63);
      *(v61 + 24) = v63;
    }

    if (v21 >= v63[2])
    {
      __break(1u);
    }

    else
    {
      v65 = v63 + v23 + v24;
      v66 = *(v90 + 28);
      v67 = *&v65[v66];
      *&v65[v66] = v94;
      *(v61 + 24) = v63;
      swift_endAccess();

      v95[0] = v61;
      swift_getKeyPath();
      sub_24F91FD98();

      swift_getKeyPath();
      v95[0] = v61;
      sub_24F91FD88();

      v68 = *(v61 + 24);
      if (v21 < *(v68 + 16))
      {
        v69 = v61;
        v93 = ~v22;
        sub_24F002CA0(v68 + v23 + v24, v16);
        v70 = [objc_opt_self() defaultCenter];
        v71 = sub_24F92B098();
        v72 = v86;
        sub_24F002CA0(v16, v86);
        [v70 postNotificationName:v71 object:sub_24F92CF68()];

        swift_unknownObjectRelease();
        v73 = sub_24F92B858();
        v74 = v87;
        (*(*(v73 - 8) + 56))(v87, 1, 1, v73);
        sub_24F002CA0(v16, v72);
        sub_24F92B7F8();
        v75 = v94;
        v76 = v94;

        v77 = sub_24F92B7E8();
        v78 = (v22 + 40) & v93;
        v79 = (v85 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
        v80 = swift_allocObject();
        v81 = MEMORY[0x277D85700];
        v80[2] = v77;
        v80[3] = v81;
        v80[4] = v69;
        sub_24F1D9788(v72, v80 + v78);
        *(v80 + v79) = v75;
        sub_24F1D3DA4(0, 0, v74, &unk_24F9D3C30, v80);

        v42 = v16;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    if (qword_27F2113B0 != -1)
    {
LABEL_28:
      swift_once();
    }

    v26 = sub_24F9220D8();
    __swift_project_value_buffer(v26, qword_27F39E760);
    v27 = v92;
    sub_24F002CA0(a1, v92);
    v28 = v94;
    v29 = v94;
    v30 = sub_24F9220B8();
    v31 = sub_24F92BDA8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v95[0] = v34;
      *v32 = 136315394;
      sub_24F91F6B8();
      sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_24F92CD88();
      v37 = v36;
      sub_24F002D04(v27);
      v38 = sub_24E7620D4(v35, v37, v95);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      if (v28)
      {
        v39 = v28;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = v40;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      *(v32 + 14) = v40;
      *v33 = v41;
      _os_log_impl(&dword_24E5DD000, v30, v31, "Virtual call %s failed with error %@, but isn't registered", v32, 0x16u);
      sub_24E601704(v33, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x2530542D0](v34, -1, -1);
      MEMORY[0x2530542D0](v32, -1, -1);
    }

    else
    {

      v42 = v27;
LABEL_26:
      sub_24F002D04(v42);
    }
  }
}

uint64_t sub_24F1D8CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v6[15] = *(type metadata accessor for VirtualCall(0) - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v7 = sub_24F92CA08();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  sub_24F92B7F8();
  v6[21] = sub_24F92B7E8();
  v9 = sub_24F92B778();
  v6[22] = v9;
  v6[23] = v8;

  return MEMORY[0x2822009F8](sub_24F1D8E00, v9, v8);
}

uint64_t sub_24F1D8E00()
{
  sub_24F92CFB8();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_24F1D8ECC;

  return sub_24E70C87C(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24F1D8ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 184);
  v7 = *(v2 + 176);
  if (v0)
  {
    v8 = sub_24F1D9520;
  }

  else
  {
    v8 = sub_24F1D9064;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24F1D9064()
{
  v33 = v0;
  v1 = v0[12];

  swift_getKeyPath();
  v0[8] = v1;
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v0[15];
    while (v4 < *(v2 + 16))
    {
      v6 = v0[17];
      sub_24F002CA0(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v6);
      v7 = _s12GameStoreKit11VirtualCallV2eeoiySbAC_ACtFZ_0();
      sub_24F002D04(v6);
      if (v7)
      {
        v27 = v0[17];
        v28 = v0[12];

        swift_getKeyPath();
        v0[9] = v28;
        sub_24F91FD88();

        v0[10] = v28;
        swift_getKeyPath();
        sub_24F91FDA8();

        swift_beginAccess();
        sub_24EA0E98C(v4, v27);
        sub_24F002D04(v27);
        swift_endAccess();
        v0[11] = v28;
        swift_getKeyPath();
        sub_24F91FD98();

        sub_24F1D5654();
        goto LABEL_14;
      }

      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    if (qword_27F2113B0 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[14];
  v11 = sub_24F9220D8();
  __swift_project_value_buffer(v11, qword_27F39E760);
  sub_24F002CA0(v9, v8);
  v12 = v10;
  v13 = sub_24F9220B8();
  v14 = sub_24F92BDA8();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[16];
  if (v15)
  {
    v31 = v0[14];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v17 = 136315394;
    sub_24F91F6B8();
    sub_24F1D9EF4(&qword_27F21E4F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_24F92CD88();
    v22 = v21;
    sub_24F002D04(v16);
    v23 = sub_24E7620D4(v20, v22, &v32);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    v24 = v31;
    if (v31)
    {
      v25 = v10;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v26;
    }

    else
    {
      v26 = 0;
    }

    *(v17 + 14) = v26;
    *v18 = v24;
    _os_log_impl(&dword_24E5DD000, v13, v14, "Unable to remove virtual call %s that failed with error %@, as it isn't registered", v17, 0x16u);
    sub_24E601704(v18, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2530542D0](v19, -1, -1);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  else
  {

    sub_24F002D04(v16);
  }

LABEL_14:

  v29 = v0[1];

  return v29();
}

uint64_t sub_24F1D9520()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall OverlayCallCenter.callInviteSent()()
{
  swift_getKeyPath();
  sub_24F1D9EF4(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  if (*(v0 + 32))
  {
    swift_getKeyPath();
    sub_24F91FD88();

    swift_getKeyPath();
    sub_24F91FDA8();

    v1 = *(v0 + 40);
    v2 = __OFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 40) = v3;
      swift_getKeyPath();
      sub_24F91FD98();
    }
  }

  else if (*(v0 + 40))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F91FD78();
  }
}

uint64_t sub_24F1D9788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualCall(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1D97EC()
{
  v1 = (type metadata accessor for VirtualCall(0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_24F91F6B8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24F1D9920(uint64_t a1)
{
  v4 = *(type metadata accessor for VirtualCall(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F1D7BD8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24F1D9A2C()
{
  v1 = (type metadata accessor for VirtualCall(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = sub_24F91F6B8();
  (*(*(v5 - 8) + 8))(v4, v5);

  return swift_deallocObject();
}

uint64_t sub_24F1D9B74(uint64_t a1)
{
  v4 = *(type metadata accessor for VirtualCall(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F1D8CA4(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_24F1D9CB8(uint64_t a1)
{
  result = sub_24F91FDC8();
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

uint64_t sub_24F1D9D98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F1D9DE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F1D5D68(a1, v4, v5, v7, v6);
}

unint64_t sub_24F1D9EA0()
{
  result = qword_27F23BEA0;
  if (!qword_27F23BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BEA0);
  }

  return result;
}

uint64_t sub_24F1D9EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F1D9F84()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  qword_27F39DCE0 = sub_24F92AAE8();
  unk_27F39DCE8 = MEMORY[0x277D22508];
  __swift_allocate_boxed_opaque_existential_1(qword_27F39DCC8);
  return sub_24F92AAD8();
}

uint64_t sub_24F1DA0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 112) + **(*v5 + 112));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_24E614970;

  return v14(a1, a2, a3, "", 0, 2, a4, a5);
}

uint64_t sub_24F1DA22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 192) = a8;
  *(v9 + 200) = v8;
  *(v9 + 280) = a6;
  *(v9 + 176) = a5;
  *(v9 + 184) = a7;
  *(v9 + 160) = a3;
  *(v9 + 168) = a4;
  *(v9 + 144) = a1;
  *(v9 + 152) = a2;
  sub_24F928418();
  *(v9 + 208) = swift_task_alloc();
  v10 = sub_24F9285B8();
  *(v9 + 216) = v10;
  v11 = *(v10 - 8);
  *(v9 + 224) = v11;
  *(v9 + 232) = *(v11 + 64);
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F1DA33C, 0, 0);
}

uint64_t sub_24F1DA33C()
{
  static JSONContext.makeDefaultContext(with:)(*(v0 + 160), *(v0 + 248));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = AssociatedTypeWitness == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v12 = v2;
    v35 = sub_24F1DBF1C;
LABEL_16:
    v13 = *(v0 + 240);
    v14 = *(v0 + 224);
    v15 = *(v0 + 216);
    v33 = *(v0 + 184);
    (*(v14 + 16))(v13, *(v0 + 248), v15);
    v16 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v0 + 256) = v17;
    *(v17 + 16) = v33;
    *(v17 + 32) = AssociatedTypeWitness;
    *(v17 + 40) = v12;
    (*(v14 + 32))(v17 + v16, v13, v15);

    sub_24F92C8A8();
    v18 = sub_24F92B228();

    if (v18)
    {
      if (qword_27F210FD8 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 280);
      v31 = *(v0 + 168);
      v32 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      v19 = sub_24F9284D8();
      *(v0 + 72) = MEMORY[0x277D837D0];
      *(v0 + 48) = v19;
      *(v0 + 56) = v20;
      sub_24F9283D8();
      sub_24E857CC8(v0 + 48);
      sub_24F9283F8();
      *(v0 + 104) = MEMORY[0x277D840E8];
      *(v0 + 80) = v31;
      *(v0 + 88) = v32;
      *(v0 + 96) = v34;
      sub_24F9283E8();
      v21 = v0 + 80;
    }

    else
    {
      if (qword_27F210FD8 != -1)
      {
        swift_once();
      }

      __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      v22 = sub_24F9284D8();
      *(v0 + 136) = MEMORY[0x277D837D0];
      *(v0 + 112) = v22;
      *(v0 + 120) = v23;
      sub_24F9283D8();
      v21 = v0 + 112;
    }

    sub_24E857CC8(v21);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();
    v24 = *(v0 + 200);

    __swift_project_boxed_opaque_existential_1((v24 + 16), *(v24 + 40));
    v25 = swift_task_alloc();
    *(v0 + 264) = v25;
    *v25 = v0;
    v25[1] = sub_24F1DAB10;
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v28 = *(v0 + 152);
    v29 = *(v0 + 160);
    v30 = *(v0 + 144);

    return sub_24F295CE8(v30, v28, v35, v17, v29, v26, v27);
  }

  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = AssociatedTypeWitness == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v12 = v4;
    v35 = sub_24F1DB114;
    goto LABEL_16;
  }

  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v6 = sub_24F9284D8();
  *(v0 + 40) = MEMORY[0x277D837D0];
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  sub_24F9283D8();
  sub_24E857CC8(v0 + 16);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v8 = sub_24F929C48();
  sub_24F1DAD98();
  swift_allocError();
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D220F8], v8);
  swift_willThrow();
  (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24F1DAB10()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_24F1DACF4;
  }

  else
  {
    v2 = sub_24F1DAC44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1DAC44()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F1DACF4()
{

  (*(v0[28] + 8))(v0[31], v0[27]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_24F1DAD98()
{
  result = qword_27F23BEB0;
  if (!qword_27F23BEB0)
  {
    sub_24F929C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BEB0);
  }

  return result;
}

uint64_t sub_24F1DADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21[0] = a6;
  v21[1] = a5;
  v23[6] = a7;
  v12 = sub_24F9285B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F928388();
  v17 = MEMORY[0x28223BE20](v16);
  (*(v19 + 16))(v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17);
  (*(v13 + 16))(v15, a4, v12);
  v23[3] = a2;
  v23[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_24F929538();
  if (v7)
  {
    return __swift_deallocate_boxed_opaque_existential_2(v23);
  }

  sub_24E615E00(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BEB8, &qword_24F9D3DB8);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_24F1DB010(void x0_0, uint64_t a1, uint64_t a2)
{
  v9[3] = a1;
  v9[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_24F9282F8();
  if (v6)
  {
    return __swift_deallocate_boxed_opaque_existential_2(v9);
  }

  sub_24E615E00(v9, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BEC0, &unk_24F9D3DC0);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_24F1DB140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v34 = a5;
  v32 = a3;
  v33 = a4;
  v30 = *v7;
  v31 = a2;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v28 = &v27 - v14;
  swift_getAssociatedTypeWitness();
  sub_24F92A9F8();
  v27 = sub_24F92A9E8();
  v16 = sub_24F92B858();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v17, a1, a6);
  v18 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a6;
  *(v21 + 5) = a7;
  *(v21 + 6) = v29;
  (*(v11 + 32))(&v21[v18], v17, a6);
  v22 = v32;
  *&v21[v19] = v31;
  v23 = &v21[(v19 + 15) & 0xFFFFFFFFFFFFFFF8];
  v24 = v33;
  *v23 = v22;
  *(v23 + 1) = v24;
  v23[16] = v34;
  v25 = v27;
  *&v21[v20] = v27;
  *&v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8] = v30;

  sub_24EA998B8(0, 0, v28, &unk_24F9D3D00, v21);

  return v25;
}

uint64_t sub_24F1DB404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v23;
  v8[17] = v24;
  v8[14] = a5;
  v8[15] = v22;
  v14 = *v22;
  sub_24F928418();
  v8[18] = swift_task_alloc();
  v15 = *(v14 + *MEMORY[0x277D224B0]);
  v8[19] = v15;
  v8[20] = *(v15 - 8);
  v16 = swift_task_alloc();
  v8[21] = v16;
  v19 = (*(*a4 + 112) + **(*a4 + 112));
  v17 = swift_task_alloc();
  v8[22] = v17;
  *v17 = v8;
  v17[1] = sub_24F1DB63C;

  return v19(v16, a5, a6, a7, a8, v21);
}

uint64_t sub_24F1DB63C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24F1DB7F0;
  }

  else
  {
    v2 = sub_24F1DB750;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1DB750()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_24F92A9C8();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F1DB7F0()
{
  if (qword_27F210FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  __swift_project_boxed_opaque_existential_1(qword_27F39DCC8, qword_27F39DCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928408();
  sub_24F9283F8();
  v2 = sub_24F9284D8();
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v2;
  v0[3] = v3;
  sub_24F9283D8();
  sub_24E857CC8((v0 + 2));
  sub_24F9283F8();
  sub_24F928428();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v4, v5);
  sub_24F928458();
  sub_24E857CC8((v0 + 6));
  sub_24F92A5A8();

  sub_24F92A9A8();

  v7 = v0[1];

  return v7();
}

uint64_t JSIntentDispatcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_24F1DBAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_24E6541E4;

  return MEMORY[0x28217F4B8](a1, a2, a3, a7, a4, a5, a8, a6);
}

uint64_t sub_24F1DBBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24E6541E4;

  return sub_24F1DA0C8(a1, a2, a3, a4, a5);
}

uint64_t sub_24F1DBC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_24E6541E4;

  return MEMORY[0x28217F4C8](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t sub_24F1DBD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_24E6541E4;

  return MEMORY[0x28217F4D0](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t objectdestroyTm_56()
{
  v1 = sub_24F9285B8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F1DBF48(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, char *, uint64_t, uint64_t))
{
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(sub_24F9285B8() - 8);
  return a2(a1, *(v2 + 4), *(v2 + 5), &v2[(*(v7 + 80) + 48) & ~*(v7 + 80)], v5, v6);
}

uint64_t sub_24F1DBFE4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1DC0DC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1[3];
  v15 = v1[2];
  v13 = v1[6];
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + v7 + 8);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24E614970;

  return sub_24F1DB404(a1, v15, v14, v13, v1 + v5, v8, v9, v10);
}

uint64_t dispatch thunk of JSIntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 104) + **(*v5 + 104));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_24E614970;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of JSIntentDispatcher.dispatch<A>(_:objectGraph:fileID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 112) + **(*v8 + 112));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_24E6541E4;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_24F1DC5BC()
{
  v0 = sub_24F9220D8();
  __swift_allocate_value_buffer(v0, qword_27F23BEC8);
  __swift_project_value_buffer(v0, qword_27F23BEC8);
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27F22B5B8;
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_24F92B0D8();
  }

  return sub_24F9220C8();
}

uint64_t sub_24F1DC6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A98, &qword_24F935590);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v49 = v2[2];
  v50 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v9 = sub_24F926D08();
  v10 = sub_24F927718();
  v49 = v50;
  sub_24F926F38();
  v11 = v47;
  v12 = sub_24F927618();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BEE0, &qword_24F9D3E80);
  (*(*(v15 - 8) + 16))(v8, a1, v15);
  v16 = *(v6 + 44);
  v44 = v8;
  v17 = &v8[v16];
  *v17 = v9;
  v17[8] = 0;
  *(v17 + 2) = v10;
  v17[24] = v11;
  *(v17 + 4) = v12;
  *(v17 + 5) = v14;
  v49 = v3[1];
  sub_24F92B7F8();

  sub_24E614DB0(&v49, &v47);
  sub_24F1DD1C8(&v50, &v47);
  v18 = sub_24F92B7E8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  v21 = v3[1];
  *(v19 + 32) = *v3;
  *(v19 + 48) = v21;
  *(v19 + 64) = v3[2];
  v22 = sub_24F92B858();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v39 - v25;
  sub_24F92B818();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v42 = sub_24F923DD8();
    v43 = &v39;
    v41 = *(v42 - 8);
    MEMORY[0x28223BE20](v42);
    v40 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_24F92C888();

    v47 = 0xD00000000000004BLL;
    v48 = 0x800000024FA6EF50;
    v46 = 39;
    v28 = sub_24F92CD88();
    MEMORY[0x253050C20](v28);

    v30 = MEMORY[0x28223BE20](v29);
    (*(v23 + 16))(&v39 - v25, &v39 - v25, v22, v30);
    v31 = v40;
    sub_24F923DC8();
    (*(v23 + 8))(v26, v22);
    v32 = v45;
    sub_24F1DD32C(v44, v45);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AA0, &qword_24F935598);
    return (*(v41 + 32))(v32 + *(v33 + 36), v31, v42);
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AA8, &unk_24F9355A0);
    v36 = v45;
    v37 = (v45 + *(v35 + 36));
    v38 = sub_24F923AD8();
    (*(v23 + 32))(&v37[*(v38 + 20)], v26, v22);
    *v37 = &unk_24F9D3E90;
    *(v37 + 1) = v19;
    return sub_24F1DD32C(v44, v36);
  }
}

uint64_t sub_24F1DCBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a3;
  v4 = sub_24F927D88();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_24F927DC8();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = sub_24F927DE8();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  sub_24F92B7F8();
  v3[31] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F1DCD7C, v8, v7);
}

uint64_t sub_24F1DCD7C()
{
  v30 = v0;
  v1 = *(v0 + 160);

  *(v0 + 64) = *(v1 + 32);
  *(v0 + 80) = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (*(v0 + 256) == 1)
  {
    if (qword_27F210FE0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 160);
    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F23BEC8);
    *(v0 + 128) = *v2;
    v5 = v2[2];
    v4 = v2[3];
    sub_24F1DD39C(v0 + 128, v0 + 136);

    sub_24F1DD1C8(v0 + 64, v0 + 96);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    sub_24F1DD3F8(v0 + 128);

    sub_24E6459BC(v0 + 64);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_24E7620D4(v5, v4, &v29);
      _os_log_impl(&dword_24E5DD000, v6, v7, "View %{public}s changed identity", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x2530542D0](v9, -1, -1);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v10 = *(v0 + 232);
    v24 = *(v0 + 240);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v13 = *(v0 + 208);
    v14 = *(v0 + 184);
    v27 = *(v0 + 200);
    v28 = *(v0 + 192);
    v15 = *(v0 + 168);
    v26 = *(v0 + 176);
    v16 = *(v0 + 160);
    sub_24E74EC40();
    v25 = sub_24F92BEF8();
    sub_24F927DD8();
    sub_24F927E58();
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = swift_allocObject();
    v20 = v16[1];
    v19 = v16[2];
    v18[1] = *v16;
    v18[2] = v20;
    v18[3] = v19;
    *(v0 + 48) = sub_24F1DD494;
    *(v0 + 56) = v18;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_24EAF8248;
    *(v0 + 40) = &block_descriptor_126;
    v21 = _Block_copy((v0 + 16));
    sub_24F1DD39C(v0 + 128, v0 + 144);

    sub_24F1DD1C8(v0 + 64, v0 + 112);

    sub_24F927DA8();
    *(v0 + 152) = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
    sub_24F92C6A8();
    MEMORY[0x253051820](v24, v13, v14, v21);
    _Block_release(v21);

    (*(v26 + 8))(v14, v15);
    (*(v27 + 8))(v13, v28);
    v17(v24, v12);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24F1DD1C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1DD238()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F1DD288()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24F1DCBC4(v2, v3, v0 + 32);
}

uint64_t sub_24F1DD32C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A98, &qword_24F935590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1DD44C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_126(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F1DD500()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A98, &qword_24F935590);
  sub_24F1DD564();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F1DD564()
{
  result = qword_27F23BEE8;
  if (!qword_27F23BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A98, &qword_24F935590);
    sub_24E602068(&qword_27F23BEF0, &qword_27F23BEE0, &qword_24F9D3E80, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F23BEF8, &qword_27F23BF00, &unk_24F9D3EA0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BEE8);
  }

  return result;
}

uint64_t ArcadeAccountEventGenerator.__allocating_init(metricsPipeline:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC12GameStoreKit27ArcadeAccountEventGenerator_metricsPipeline;
  v4 = sub_24F929158();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ArcadeAccountEventGenerator.init(metricsPipeline:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit27ArcadeAccountEventGenerator_metricsPipeline;
  v4 = sub_24F929158();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_24F1DD73C()
{
  v0 = sub_24F928698();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (byte_27F22D288)
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v4 = sub_24F92AAE8();
    __swift_project_value_buffer(v4, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x707954746E657665;
    *(inited + 16) = xmmword_24F9479A0;
    v7 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = 0x746E756F636361;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 72) = v7;
    strcpy((inited + 80), "eventVersion");
    v8 = MEMORY[0x277D83B88];
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = 1;
    *(inited + 120) = v8;
    *(inited + 128) = 1701869940;
    *(inited + 168) = v7;
    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = 0xD000000000000012;
    *(inited + 152) = 0x800000024FA6EFA0;
    v9 = sub_24E608448(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
    swift_arrayDestroy();
    if (*(v9 + 16))
    {
      v10 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
      if (v11)
      {
        sub_24E643A9C(*(v9 + 56) + 32 * v10, v16);
        if (swift_dynamicCast())
        {
          v12 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v12 = v14[1] & 0xFFFFFFFFFFFFLL;
          }

          if (!v12)
          {
          }
        }
      }
    }

    sub_24F928658();
    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    v13 = sub_24F929AB8();
    __swift_project_value_buffer(v13, qword_27F22E3B8);
    sub_24F929138();

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t ArcadeAccountEventGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit27ArcadeAccountEventGenerator_metricsPipeline;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ArcadeAccountEventGenerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit27ArcadeAccountEventGenerator_metricsPipeline;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeAccountEventGenerator(uint64_t a1)
{
  result = qword_27F23BF08;
  if (!qword_27F23BF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1DDCCC(uint64_t a1)
{
  result = sub_24F929158();
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

__n128 __swift_memcpy75_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24F1DDDD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F1DDE18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F1DDE9C()
{
  v1 = sub_24F929888();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF18, &qword_24F9D3F98);
  MEMORY[0x28223BE20](v5);
  v7 = (v11 - v6);
  *v7 = sub_24F927618();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF20, &unk_24F9D3FA0);
  sub_24F1DE0F8(v0, v7 + *(v9 + 44));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  sub_24F9297A8();

  sub_24E601704(v11, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v12, &qword_27F2129B0, &unk_24F945320);
  sub_24E602068(&qword_27F23BF28, &qword_27F23BF18, &qword_24F9D3F98, MEMORY[0x277CE11A8]);
  sub_24F925EE8();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v7, &qword_27F23BF18, &qword_24F9D3F98);
}

uint64_t sub_24F1DE0F8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF30, &qword_24F9D3FB0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF38, &unk_24F9D3FB8);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF40, &qword_24F9D3FC8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF48, &unk_24F9D3FD0);
  MEMORY[0x28223BE20](v64);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = sub_24F9232F8();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_24E60169C(a1, v76, qword_27F21B590, &unk_24F93BE30);
  sub_24F1DF34C(a1, &v72);
  v21 = swift_allocObject();
  v22 = v75[0];
  v21[3] = v74;
  v21[4] = v22;
  *(v21 + 75) = *(v75 + 11);
  v23 = v73;
  v21[1] = v72;
  v21[2] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF50, &qword_24F9D3FE0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF58, &qword_24F9D3FE8);
  v25 = sub_24F1DF3DC();
  v70 = v24;
  v71 = v25;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  *(&v73 + 1) = sub_24F9271D8();
  *&v74 = sub_24F1E0920(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v72);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_24F924B38();
  (*(*(v28 - 8) + 104))(boxed_opaque_existential_1, v27, v28);
  sub_24E60169C(&v72, v19, &qword_27F23BFA8, &qword_24F9D4010);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFB0, &qword_24F9D4018);
  (*(v12 + 16))(&v19[v29[9]], v14, v11);
  v30 = &v19[v29[10]];
  *v30 = sub_24F923398() & 1;
  *(v30 + 1) = v31;
  v30[16] = v32 & 1;
  v33 = &v19[v29[11]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v34 = qword_27F24E488;
  v35 = sub_24F923398();
  v37 = v36;
  v39 = v38;
  v40 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFB8, &qword_24F9D4048) + 36)];
  *v40 = v34;
  v40[8] = v35 & 1;
  *(v40 + 2) = v37;
  v40[24] = v39 & 1;
  LOBYTE(v34) = sub_24F923398();
  v42 = v41;
  LOBYTE(v37) = v43;
  sub_24E601704(&v72, &qword_27F23BFA8, &qword_24F9D4010);
  (*(v12 + 8))(v14, v11);
  v44 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFC0, &qword_24F9D4050) + 36)];
  *v44 = v34 & 1;
  *(v44 + 1) = v42;
  v44[16] = v37 & 1;
  sub_24F927618();
  v45 = 1;
  sub_24F9238C8();
  v46 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFC8, &qword_24F9D4058) + 36)];
  v47 = v73;
  *v46 = v72;
  *(v46 + 1) = v47;
  *(v46 + 2) = v74;
  v48 = a1[73];
  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v48;
  v51 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFD0, &qword_24F9D4090) + 36)];
  *v51 = KeyPath;
  v51[1] = sub_24E600A48;
  v51[2] = v50;
  LOBYTE(KeyPath) = a1[56];
  LOBYTE(v50) = a1[72];
  v52 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFD8, &qword_24F9D4098) + 36)];
  *v52 = KeyPath;
  v52[1] = v50;
  v52[2] = v48;
  *&v19[*(v64 + 36)] = 256;
  v53 = v66;
  v54 = v67;
  if (a1[74] == 1)
  {
    v55 = v63;
    sub_24F923798();
    v56 = swift_getKeyPath();
    v57 = (v55 + *(v53 + 36));
    *v57 = v56;
    v57[1] = 0;
    sub_24E6009C8(v55, v54, &qword_27F23BF30, &qword_24F9D3FB0);
    v45 = 0;
  }

  (*(v65 + 56))(v54, v45, 1, v53);
  sub_24E60169C(v19, v16, &qword_27F23BF48, &unk_24F9D3FD0);
  v58 = v68;
  sub_24E60169C(v54, v68, &qword_27F23BF38, &unk_24F9D3FB8);
  v59 = v69;
  sub_24E60169C(v16, v69, &qword_27F23BF48, &unk_24F9D3FD0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFE0, &qword_24F9D40A0);
  sub_24E60169C(v58, v59 + *(v60 + 48), &qword_27F23BF38, &unk_24F9D3FB8);
  sub_24E601704(v54, &qword_27F23BF38, &unk_24F9D3FB8);
  sub_24E601704(v19, &qword_27F23BF48, &unk_24F9D3FD0);
  sub_24E601704(v58, &qword_27F23BF38, &unk_24F9D3FB8);
  return sub_24E601704(v16, &qword_27F23BF48, &unk_24F9D3FD0);
}

uint64_t sub_24F1DE91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v90 = sub_24F9248C8();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v67[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFE8, &qword_24F9D40D8);
  MEMORY[0x28223BE20](v74);
  v73 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v70 = &v67[-v6];
  v7 = sub_24F923E98();
  v93 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v92 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v91 = &v67[-v10];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF98, &qword_24F9D4008);
  MEMORY[0x28223BE20](v72);
  v71 = &v67[-v11];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFF0, &qword_24F9D40E0);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v67[-v12];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF90, &qword_24F9D4000);
  MEMORY[0x28223BE20](v78);
  v81 = &v67[-v13];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF80, &qword_24F9D3FF8);
  MEMORY[0x28223BE20](v80);
  v83 = &v67[-v14];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF70, &qword_24F9D3FF0);
  MEMORY[0x28223BE20](v75);
  v82 = &v67[-v15];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BF58, &qword_24F9D3FE8);
  MEMORY[0x28223BE20](v84);
  v85 = &v67[-v16];
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v86 = a1;
  *&v94 = v17;
  *(&v94 + 1) = v18;
  sub_24E600AEC();

  v19 = sub_24F925E18();
  v21 = v20;
  v23 = v22;
  sub_24F9258D8();
  v24 = sub_24F925C98();
  v26 = v25;
  LOBYTE(a1) = v27;

  v28 = v19;
  v29 = v91;
  sub_24E600B40(v28, v21, v23 & 1);

  sub_24F925958();
  v30 = sub_24F925B78();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v26;
  v38 = v92;
  sub_24E600B40(v24, v37, a1 & 1);

  *&v94 = v30;
  *(&v94 + 1) = v32;
  v69 = v32;
  v39 = v34 & 1;
  LOBYTE(v95) = v39;
  *(&v95 + 1) = v36;
  v40 = v93;
  v41 = *(v93 + 104);
  v41(v29, *MEMORY[0x277CDF9F8], v7);
  v41(v38, *MEMORY[0x277CDFA00], v7);
  sub_24F1E0920(&qword_27F233178, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_24F92AF98();
  if (result)
  {
    v68 = v39;
    v43 = *(v40 + 32);
    v44 = v70;
    v43(v70, v29, v7);
    v45 = v74;
    v43((v44 + *(v74 + 48)), v38, v7);
    v92 = v30;
    v46 = v73;
    sub_24E60169C(v44, v73, &qword_27F23BFE8, &qword_24F9D40D8);
    v47 = *(v45 + 48);
    v48 = v71;
    v43(v71, v46, v7);
    v91 = v36;
    v49 = *(v40 + 8);
    v49(&v46[v47], v7);
    sub_24E6009C8(v44, v46, &qword_27F23BFE8, &qword_24F9D40D8);
    v43((v48 + *(v72 + 36)), &v46[*(v45 + 48)], v7);
    v49(v46, v7);
    sub_24E602068(&qword_27F23BFA0, &qword_27F23BF98, &qword_24F9D4008, MEMORY[0x277D83660]);
    v50 = v76;
    sub_24F9263F8();
    sub_24E601704(v48, &qword_27F23BF98, &qword_24F9D4008);
    sub_24E600B40(v92, v69, v68);

    sub_24F927618();
    sub_24F9242E8();
    v51 = v81;
    (*(v77 + 32))(v81, v50, v79);
    v52 = v86;
    v53 = *(v86 + 74) == 0;
    v54 = (v51 + *(v78 + 36));
    v55 = v99;
    v54[4] = v98;
    v54[5] = v55;
    v54[6] = v100;
    v56 = v95;
    *v54 = v94;
    v54[1] = v56;
    if (v53)
    {
      v57 = 1.0;
    }

    else
    {
      v57 = 0.0;
    }

    v58 = v97;
    v54[2] = v96;
    v54[3] = v58;
    v59 = v83;
    sub_24E6009C8(v51, v83, &qword_27F23BF90, &qword_24F9D4000);
    *&v59[*(v80 + 36)] = v57;
    v60 = v82;
    v61 = &v82[*(v75 + 36)];
    v62 = *MEMORY[0x277CE0118];
    v63 = sub_24F924B38();
    (*(*(v63 - 8) + 104))(v61, v62, v63);
    v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B698, &qword_24F984BC0) + 36)] = 0;
    sub_24E6009C8(v59, v60, &qword_27F23BF80, &qword_24F9D3FF8);
    if (*(v52 + 64))
    {
      v64 = *(v52 + 64);
    }

    else
    {
      v64 = sub_24F926D18();
    }

    v65 = v85;
    sub_24E6009C8(v60, v85, &qword_27F23BF70, &qword_24F9D3FF0);
    *&v65[*(v84 + 36)] = v64;

    v66 = v87;
    sub_24F9248B8();
    sub_24F1DF3DC();
    _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
    (*(v89 + 8))(v66, v90);
    return sub_24E601704(v65, &qword_27F23BF58, &qword_24F9D3FE8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F1DF384()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

unint64_t sub_24F1DF3DC()
{
  result = qword_27F23BF60;
  if (!qword_27F23BF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF58, &qword_24F9D3FE8);
    sub_24F1DF494();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BF60);
  }

  return result;
}

unint64_t sub_24F1DF494()
{
  result = qword_27F23BF68;
  if (!qword_27F23BF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF70, &qword_24F9D3FF0);
    sub_24F1DF54C();
    sub_24E602068(&qword_27F21B720, &qword_27F21B698, &qword_24F984BC0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BF68);
  }

  return result;
}

unint64_t sub_24F1DF54C()
{
  result = qword_27F23BF78;
  if (!qword_27F23BF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF80, &qword_24F9D3FF8);
    sub_24F1DF5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BF78);
  }

  return result;
}

unint64_t sub_24F1DF5D8()
{
  result = qword_27F23BF88;
  if (!qword_27F23BF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF90, &qword_24F9D4000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF98, &qword_24F9D4008);
    sub_24E602068(&qword_27F23BFA0, &qword_27F23BF98, &qword_24F9D4008, MEMORY[0x277D83660]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23BF88);
  }

  return result;
}

uint64_t sub_24F1DF6E8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v90 = a1;
  v95 = a3;
  v88 = sub_24F9240F8();
  v76 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23BFF8, &qword_24F9D4178);
  v78 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v77 = &v65 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C000, &qword_24F9D4180);
  MEMORY[0x28223BE20](v83);
  v87 = &v65 - v7;
  v84 = sub_24F925278();
  v72 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v70 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24F926D98();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C008, &qword_24F9D4188);
  v74 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v73 = &v65 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C010, &qword_24F9D4190);
  MEMORY[0x28223BE20](v94);
  v86 = &v65 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C018, &qword_24F9D4198);
  MEMORY[0x28223BE20](v92);
  v93 = &v65 - v12;
  v81 = sub_24F9254A8();
  v66 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C020, &qword_24F9D41A0);
  v67 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v16 = &v65 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C028, &qword_24F9D41A8);
  MEMORY[0x28223BE20](v79);
  v18 = &v65 - v17;
  v19 = sub_24F924C38();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C030, &qword_24F9D41B0);
  v23 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v25 = &v65 - v24;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C038, &qword_24F9D41B8);
  MEMORY[0x28223BE20](v91);
  v27 = &v65 - v26;
  if (a2 & 0x100) == 0 || (a2)
  {
    if ((a2 & 0x10000) != 0)
    {
      v46 = v68;
      sub_24F926D88();
      v47 = v70;
      sub_24F925268();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C040, &qword_24F9D41C0);
      v49 = sub_24E602068(&qword_27F23C048, &qword_27F23C040, &qword_24F9D41C0, MEMORY[0x277CE04B0]);
      v50 = sub_24F1E0920(&qword_27F23C050, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
      v51 = v73;
      v52 = v84;
      sub_24F9261C8();
      (*(v72 + 8))(v47, v52);
      (*(v69 + 8))(v46, v71);
      v53 = v74;
      v54 = v85;
      (*(v74 + 16))(v87, v51, v85);
      swift_storeEnumTagMultiPayload();
      v96 = v48;
      v97 = v52;
      v98 = v49;
      v99 = v50;
      swift_getOpaqueTypeConformance2();
      v55 = sub_24F1E0920(&qword_27F22B3C8, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
      v96 = v48;
      v97 = v88;
      v98 = v49;
      v99 = v55;
      swift_getOpaqueTypeConformance2();
      v45 = v86;
      sub_24F924E28();
      (*(v53 + 8))(v51, v54);
    }

    else
    {
      v36 = v75;
      sub_24F9240E8();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C040, &qword_24F9D41C0);
      v38 = sub_24E602068(&qword_27F23C048, &qword_27F23C040, &qword_24F9D41C0, MEMORY[0x277CE04B0]);
      v39 = sub_24F1E0920(&qword_27F22B3C8, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
      v40 = v77;
      v41 = v88;
      sub_24F926178();
      (*(v76 + 8))(v36, v41);
      v42 = v78;
      v43 = v89;
      (*(v78 + 16))(v87, v40, v89);
      swift_storeEnumTagMultiPayload();
      v44 = sub_24F1E0920(&qword_27F23C050, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
      v96 = v37;
      v97 = v84;
      v98 = v38;
      v99 = v44;
      swift_getOpaqueTypeConformance2();
      v96 = v37;
      v97 = v41;
      v98 = v38;
      v99 = v39;
      swift_getOpaqueTypeConformance2();
      v45 = v86;
      sub_24F924E28();
      (*(v42 + 8))(v40, v43);
    }

    v56 = &qword_27F23C010;
    v57 = &qword_24F9D4190;
    sub_24E60169C(v45, v93, &qword_27F23C010, &qword_24F9D4190);
    swift_storeEnumTagMultiPayload();
    sub_24F1E077C();
    sub_24F1E0968();
    sub_24F924E28();
    v58 = v45;
  }

  else
  {
    if ((a2 & 0x10000) != 0)
    {
      sub_24F924C28();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C040, &qword_24F9D41C0);
      v59 = sub_24E602068(&qword_27F23C048, &qword_27F23C040, &qword_24F9D41C0, MEMORY[0x277CE04B0]);
      v60 = sub_24F1E0920(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
      v61 = v88;
      v89 = v27;
      sub_24F926178();
      (*(v20 + 8))(v22, v19);
      v62 = v80;
      (*(v23 + 16))(v18, v25, v80);
      swift_storeEnumTagMultiPayload();
      v96 = v61;
      v97 = v19;
      v98 = v59;
      v99 = v60;
      swift_getOpaqueTypeConformance2();
      v63 = sub_24F1E0920(&qword_27F23C060, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
      v96 = v61;
      v97 = v81;
      v98 = v59;
      v99 = v63;
      swift_getOpaqueTypeConformance2();
      v27 = v89;
      sub_24F924E28();
      (*(v23 + 8))(v25, v62);
    }

    else
    {
      sub_24F925498();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C040, &qword_24F9D41C0);
      v29 = sub_24E602068(&qword_27F23C048, &qword_27F23C040, &qword_24F9D41C0, MEMORY[0x277CE04B0]);
      v89 = sub_24F1E0920(&qword_27F23C060, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
      v30 = v81;
      sub_24F926178();
      (*(v66 + 8))(v14, v30);
      v31 = v67;
      v32 = *(v67 + 16);
      v33 = v18;
      v65 = v18;
      v34 = v82;
      v32(v33, v16, v82);
      swift_storeEnumTagMultiPayload();
      v35 = sub_24F1E0920(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
      v96 = v28;
      v97 = v19;
      v98 = v29;
      v99 = v35;
      swift_getOpaqueTypeConformance2();
      v96 = v28;
      v97 = v30;
      v98 = v29;
      v99 = v89;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      (*(v31 + 8))(v16, v34);
    }

    v56 = &qword_27F23C038;
    v57 = &qword_24F9D41B8;
    sub_24E60169C(v27, v93, &qword_27F23C038, &qword_24F9D41B8);
    swift_storeEnumTagMultiPayload();
    sub_24F1E077C();
    sub_24F1E0968();
    sub_24F924E28();
    v58 = v27;
  }

  return sub_24E601704(v58, v56, v57);
}

uint64_t sub_24F1E05F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v3[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_24F1DF6E8(a1, v5 | *v3 | v4, a2);
}

uint64_t getEnumTagSinglePayload for OnboardingButtonStyleViewModifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t sub_24F1E06C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23BF18, &qword_24F9D3F98);
  sub_24E602068(&qword_27F23BF28, &qword_27F23BF18, &qword_24F9D3F98, MEMORY[0x277CE11A8]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F1E077C()
{
  result = qword_27F23C058;
  if (!qword_27F23C058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C038, &qword_24F9D41B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C040, &qword_24F9D41C0);
    sub_24F924C38();
    sub_24E602068(&qword_27F23C048, &qword_27F23C040, &qword_24F9D41C0, MEMORY[0x277CE04B0]);
    sub_24F1E0920(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_24F9254A8();
    sub_24F1E0920(&qword_27F23C060, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C058);
  }

  return result;
}

uint64_t sub_24F1E0920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F1E0968()
{
  result = qword_27F23C068;
  if (!qword_27F23C068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C010, &qword_24F9D4190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C040, &qword_24F9D41C0);
    sub_24F925278();
    sub_24E602068(&qword_27F23C048, &qword_27F23C040, &qword_24F9D41C0, MEMORY[0x277CE04B0]);
    sub_24F1E0920(&qword_27F23C050, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
    swift_getOpaqueTypeConformance2();
    sub_24F9240F8();
    sub_24F1E0920(&qword_27F22B3C8, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C068);
  }

  return result;
}

unint64_t sub_24F1E0B1C()
{
  result = qword_27F23C070;
  if (!qword_27F23C070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C078, &qword_24F9D41C8);
    sub_24F1E077C();
    sub_24F1E0968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C070);
  }

  return result;
}

uint64_t ChartOrCategoryBrickContext.BrickType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t ChartOrCategoryBrickContext.LabelMetrics.init(numberOfLines:fontUseCase:contentSizeCategoryMapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v10 = *(v9 + 20);
  v11 = sub_24F922378();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v13 = &a5[*(v9 + 24)];
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

uint64_t ChartOrCategoryBrickContext.LabelMetrics.fontUseCase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0) + 20);
  v4 = sub_24F922378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ChartOrCategoryBrickContext.LabelMetrics.contentSizeCategoryMapping.getter()
{
  v1 = (v0 + *(type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0) + 24));
  v2 = *v1;
  sub_24ED20BA0(*v1, v1[1]);
  return v2;
}

uint64_t sub_24F1E0EAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v64 = sub_24F922378();
  v5 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v51 - v8;
  v56 = type metadata accessor for PlaceholderChartOrCategoryBrickFontStyles(0);
  MEMORY[0x28223BE20](v56);
  v65 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ChartOrCategoryBrickContext(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00(a1, v12);
  sub_24E615E00(a1, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C098, &qword_24F9D41D0);
  type metadata accessor for SearchChartOrCategory(0);
  v13 = swift_dynamicCast();
  v14 = v13;
  if (v13)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
  v12[v10[7]] = v14;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 16))(v66, v15, v16);
  v17 = LOBYTE(v66[0]);
  v12[40] = v66[0];
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 24))(v18, v19);
  v63 = a1;
  LODWORD(v54) = v17;
  if (v20)
  {
    LOBYTE(v66[0]) = v17;
    v21 = sub_24F1E1D38(v20, v66);
  }

  else
  {
    v21 = 0;
  }

  v22 = v10[8];
  v55 = v21;
  *&v12[v22] = v21;
  v57 = v10;
  v58 = v12;
  *&v12[v10[9]] = a2;
  v23 = *MEMORY[0x277D76918];
  v25 = v64;
  v24 = v65;
  *v65 = *MEMORY[0x277D76918];
  *(v24 + 2) = 0;
  v26 = *MEMORY[0x277D22680];
  v61 = v5;
  v27 = *(v5 + 104);
  (v27)(v24, v26, v25);
  v28 = v56;
  v29 = v24 + *(v56 + 20);
  *v29 = v23;
  *(v29 + 2) = 0;
  v51 = v29;
  v27();
  v30 = (v24 + v28[6]);
  *v30 = v23;
  *(v30 + 2) = 0;
  (v27)(v30, v26, v25);
  v31 = v24 + v28[7];
  *v31 = v23;
  *(v31 + 2) = 0;
  (v27)(v31, v26, v25);
  v32 = v24 + v28[8];
  *v32 = v23;
  *(v32 + 2) = 0;
  (v27)(v32, v26, v25);
  v33 = v24 + v28[9];
  *v33 = v23;
  *(v33 + 2) = 0;
  (v27)(v33, v26, v25);
  v34 = v61;
  v35 = v23;
  v36 = *(v34 + 16);
  v52 = v35;
  if (v54)
  {
    if (v54 == 1)
    {
      v53 = sub_24F1E2FC8;
      v54 = sub_24F1E2FC8;
      v56 = 2;
    }

    else
    {
      v53 = sub_24F1E2FCC;
      v54 = sub_24F1E2FD0;
      v56 = 3;
      v30 = v32;
      v31 = v33;
    }
  }

  else
  {
    v56 = 3;
    v30 = v65;
    v31 = v51;
    v53 = sub_24F1E2FD4;
    v54 = sub_24F1E2FD8;
  }

  v37 = v59;
  v38 = v64;
  v36(v59, v30, v64);
  v39 = v60;
  v36(v60, v31, v38);
  v40 = v58;
  v41 = &v58[v57[6]];
  v42 = v52;

  v43 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
  v44 = v41 + *(v43 + 20);
  *v44 = 2;
  v45 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v46 = *(v34 + 32);
  v46(&v44[*(v45 + 20)], v37, v38);
  v47 = &v44[*(v45 + 24)];
  *v47 = v53;
  v47[1] = 0;
  v48 = v41 + *(v43 + 24);
  *v48 = 1;
  v46(&v48[*(v45 + 20)], v39, v38);
  v49 = &v48[*(v45 + 24)];
  *v49 = v54;
  v49[1] = 0;
  *v41 = v56;
  sub_24F1E26C0(v65);
  sub_24F1E1C58(v40, v62, type metadata accessor for ChartOrCategoryBrickContext);
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t ChartOrCategoryBrickContext.init(model:fontStyles:in:)@<X0>(void *a1@<X0>, id (*a2)()@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v51 = a3;
  v49 = a2;
  v7 = sub_24F922378();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for ChartOrCategoryBrickContext(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00(a1, v14);
  sub_24E615E00(a1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C098, &qword_24F9D41D0);
  type metadata accessor for SearchChartOrCategory(0);
  v15 = swift_dynamicCast();
  v16 = v15;
  if (v15)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  v14[v12[7]] = v16;
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v17 + 16))(v54, v18, v17);
  v19 = LOBYTE(v54[0]);
  v14[40] = v54[0];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 24))(v20, v21);
  if (v22)
  {
    LOBYTE(v54[0]) = v19;
    v23 = sub_24F1E1D38(v22, v54);
  }

  else
  {
    v23 = 0;
  }

  *&v14[v12[8]] = v23;
  *&v14[v12[9]] = a4;
  LOBYTE(v53) = v16;
  (v49)(v54, &v53);
  v25 = v55;
  v24 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v46 = v11;
  if (!v19)
  {
    v24[1](v25, v24);
    v30 = v55;
    v31 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v31[2](v30, v31);
    v28 = sub_24F1E1CE8;
    v32 = sub_24F1E1D10;
LABEL_11:
    v49 = v32;
    v29 = 3;
    goto LABEL_12;
  }

  if (v19 != 1)
  {
    v24[5](v25, v24);
    v33 = v55;
    v34 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v34[6](v33, v34);
    v28 = sub_24F1E1C08;
    v32 = sub_24F1E1C30;
    goto LABEL_11;
  }

  v24[3](v25, v24);
  v26 = v55;
  v27 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v27[4](v26, v27);
  v28 = sub_24F1E1CC0;
  v49 = sub_24F1E2FC8;
  v29 = 2;
LABEL_12:
  v45 = v29;

  v35 = &v14[v12[6]];
  v36 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
  v37 = &v35[*(v36 + 20)];
  *v37 = 2;
  v38 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v39 = *(v47 + 32);
  v40 = v48;
  v39(&v37[*(v38 + 20)], v46, v48);
  v41 = &v37[*(v38 + 24)];
  *v41 = v28;
  v41[1] = 0;
  v42 = &v35[*(v36 + 24)];
  *v42 = 1;
  v39(&v42[*(v38 + 20)], v52, v40);
  v43 = &v42[*(v38 + 24)];
  *v43 = v49;
  v43[1] = 0;
  *v35 = v45;
  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_24F1E1C58(v14, v50, type metadata accessor for ChartOrCategoryBrickContext);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ChartOrCategoryBrickContext.brickType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ChartOrCategoryBrickContext(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ChartOrCategoryBrickContext.currentArtwork.getter()
{
  type metadata accessor for ChartOrCategoryBrickContext(0);
}

id ChartOrCategoryBrickContext.traitCollection.getter()
{
  v1 = *(v0 + *(type metadata accessor for ChartOrCategoryBrickContext(0) + 36));

  return v1;
}

uint64_t sub_24F1E1AD0()
{
  v0 = type metadata accessor for ChartOrCategoryBrickContext(0);
  __swift_allocate_value_buffer(v0, qword_27F23C080);
  v1 = __swift_project_value_buffer(v0, qword_27F23C080);
  v4[3] = &type metadata for PlaceholderBrick;
  v4[4] = &protocol witness table for PlaceholderBrick;
  v2 = swift_allocObject();
  v4[0] = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  return sub_24F1E0EAC(v4, [objc_allocWithZone(MEMORY[0x277D75C80]) init], v1);
}

uint64_t static ChartOrCategoryBrickContext.measurableContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210FE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ChartOrCategoryBrickContext(0);
  v3 = __swift_project_value_buffer(v2, qword_27F23C080);
  return sub_24F1E1E74(v3, a1, type metadata accessor for ChartOrCategoryBrickContext);
}

id sub_24F1E1C08(uint64_t a1)
{
  v1 = sub_24F1E2CD4(a1);

  return v1;
}

id sub_24F1E1C30(uint64_t a1)
{
  v1 = sub_24F1E2E84(a1);

  return v1;
}

uint64_t sub_24F1E1C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_24F1E1CC0(uint64_t a1)
{
  v1 = sub_24F1E2B90(a1);

  return v1;
}

id sub_24F1E1CE8(uint64_t a1)
{
  v1 = sub_24F1E271C(a1);

  return v1;
}

id sub_24F1E1D10(uint64_t a1)
{
  v1 = sub_24F1E29DC(a1);

  return v1;
}

unint64_t sub_24F1E1D38(unint64_t a1, unsigned __int8 *a2)
{
  if (*a2 > 1u)
  {
    if (a1 >> 62)
    {
      result = sub_24F92C738();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_23;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
    }

    __break(1u);
LABEL_15:
    if (v4)
    {
      result = sub_24F92C738();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }
    }

LABEL_23:
    result = 0;
    return MEMORY[0x253052270](result, a1);
  }

  v3 = sub_24F92BF88();
  v4 = a1 >> 62;
  if ((v3 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!v4)
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_24F92C738();
  if (result)
  {
LABEL_5:
    if (!__OFSUB__(result--, 1))
    {
      if ((a1 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
          }

LABEL_32:
          __break(1u);
          return result;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      return MEMORY[0x253052270](result, a1);
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_24F1E1E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F1E1EE0()
{
  result = qword_27F23C0A0;
  if (!qword_27F23C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C0A0);
  }

  return result;
}

uint64_t sub_24F1E1F48(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F1E2008(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F1E20AC(uint64_t a1)
{
  sub_24F1E2170();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_24EFF9870(319);
      if (v3 <= 0x3F)
      {
        sub_24F1E21D4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F1E2170()
{
  result = qword_27F23C0B8;
  if (!qword_27F23C0B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F23C0B8);
  }

  return result;
}

unint64_t sub_24F1E21D4()
{
  result = qword_27F227080;
  if (!qword_27F227080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F227080);
  }

  return result;
}

uint64_t sub_24F1E2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922378();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_24F1E2324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922378();
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
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_24F1E23E0(uint64_t a1)
{
  sub_24F922378();
  if (v1 <= 0x3F)
  {
    sub_24F1E2474(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F1E2474(uint64_t a1)
{
  if (!qword_27F22EB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F22EB20, qword_24F9C4E60);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22EB18);
    }
  }
}

uint64_t sub_24F1E24EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_24F1E257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_24F1E25FC(uint64_t a1)
{
  result = type metadata accessor for ChartOrCategoryBrickContext.LabelMetrics(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F1E2678()
{

  return swift_deallocObject();
}

uint64_t sub_24F1E26C0(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderChartOrCategoryBrickFontStyles(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F1E271C(uint64_t a1)
{
  v2 = sub_24F92B0D8();
  v4 = v3;
  if (v2 == sub_24F92B0D8() && v4 == v5)
  {
  }

  else
  {
    v6 = sub_24F92CE08();

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if ((sub_24F92C138() & 1) == 0)
  {
    return a1;
  }

LABEL_6:
  v7 = *MEMORY[0x277D76800];
  v8 = *MEMORY[0x277D76808];
  v9 = v7;
  result = sub_24F92C178();
  if (result)
  {
    if (sub_24F92C168())
    {
      v11 = sub_24F92C178();

      if (v11)
      {
        return v8;
      }
    }

    else
    {
    }

    v12 = *MEMORY[0x277D767F8];
    v13 = sub_24F92B0D8();
    v15 = v14;
    if (v13 == sub_24F92B0D8() && v15 == v16)
    {

      return v9;
    }

    v17 = sub_24F92CE08();

    v8 = v9;
    if (v17)
    {
      return v8;
    }

    v8 = v12;
    v18 = *MEMORY[0x277D767F0];
    v19 = sub_24F92B0D8();
    v21 = v20;
    if (v19 == sub_24F92B0D8() && v21 == v22)
    {

      return v8;
    }

    v23 = sub_24F92CE08();

    if (v23)
    {
      return v8;
    }

    v24 = sub_24F92B0D8();
    v26 = v25;
    if (v24 == sub_24F92B0D8() && v26 == v27)
    {

      goto LABEL_24;
    }

    v28 = sub_24F92CE08();

    if (v28)
    {
LABEL_24:
      if (sub_24F92C178())
      {
        return v18;
      }

      else
      {
        return a1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24F1E29DC(uint64_t a1)
{
  v2 = sub_24F92B0D8();
  v4 = v3;
  if (v2 == sub_24F92B0D8() && v4 == v5)
  {

    goto LABEL_15;
  }

  v7 = sub_24F92CE08();

  if (v7)
  {
LABEL_15:
    v18 = MEMORY[0x277D767F0];
    return *v18;
  }

  v8 = sub_24F92B0D8();
  v10 = v9;
  if (v8 == sub_24F92B0D8() && v10 == v11)
  {

    goto LABEL_19;
  }

  v13 = sub_24F92CE08();

  if (v13)
  {
LABEL_19:
    v18 = MEMORY[0x277D767F8];
    return *v18;
  }

  v14 = sub_24F92B0D8();
  v16 = v15;
  if (v14 == sub_24F92B0D8() && v16 == v17)
  {
  }

  else
  {
    v20 = sub_24F92CE08();

    if ((v20 & 1) == 0)
    {
      return a1;
    }
  }

  if (sub_24F92C138())
  {
    return *MEMORY[0x277D76800];
  }

  return a1;
}

uint64_t sub_24F1E2B90(uint64_t a1)
{
  v2 = sub_24F92B0D8();
  v4 = v3;
  if (v2 == sub_24F92B0D8() && v4 == v5)
  {
  }

  else
  {
    v6 = sub_24F92CE08();

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (sub_24F92C138())
  {
    return *MEMORY[0x277D76808];
  }

LABEL_7:
  v8 = *MEMORY[0x277D76838];
  v9 = sub_24F92B0D8();
  v11 = v10;
  if (v9 != sub_24F92B0D8() || v11 != v12)
  {
    v14 = sub_24F92CE08();

    if (v14)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

LABEL_14:
  if (sub_24F92C178())
  {
    return v8;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_24F1E2CD4(uint64_t a1)
{
  v2 = *MEMORY[0x277D76820];
  v3 = *MEMORY[0x277D76838];
  v4 = v2;
  result = sub_24F92C178();
  if (result)
  {
    if (sub_24F92C168())
    {
      v6 = sub_24F92C178();

      if (v6)
      {
        return v3;
      }
    }

    else
    {
    }

    v7 = sub_24F92B0D8();
    v9 = v8;
    if (v7 == sub_24F92B0D8() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_24F92CE08();

      if ((v12 & 1) == 0)
      {
        v13 = sub_24F92B0D8();
        v15 = v14;
        if (v13 == sub_24F92B0D8() && v15 == v16)
        {

          goto LABEL_18;
        }

        v17 = sub_24F92CE08();

        if (v17)
        {
LABEL_18:
          if (sub_24F92C138())
          {
            return v4;
          }

          else
          {
            return a1;
          }
        }

        return a1;
      }
    }

    return *MEMORY[0x277D76828];
  }

  __break(1u);
  return result;
}

uint64_t sub_24F1E2E84(uint64_t a1)
{
  v2 = *MEMORY[0x277D76820];
  v3 = *MEMORY[0x277D76838];
  v4 = v2;
  result = sub_24F92C178();
  if (result)
  {
    if (sub_24F92C168())
    {
      v6 = sub_24F92C178();

      if (v6)
      {
        return v3;
      }
    }

    else
    {
    }

    v7 = sub_24F92B0D8();
    v9 = v8;
    if (v7 != sub_24F92B0D8() || v9 != v10)
    {
      v12 = sub_24F92CE08();

      if (v12)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

LABEL_13:
    if (sub_24F92C178())
    {
      return *MEMORY[0x277D76828];
    }

    else
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F1E2FDC()
{
  v1 = 0x6E656D6563616C70;
  v2 = 0x777472416E6F6369;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 0x756F72676B636162;
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

uint64_t sub_24F1E3070@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F1E3988(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F1E3098(uint64_t a1)
{
  v2 = sub_24F1E3398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F1E30D4(uint64_t a1)
{
  v2 = sub_24F1E3398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThreeDimensionalMediaArtworkContent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C0E0, &unk_24F9D4300);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v9;
  v10 = *(v1 + 3);
  v13[1] = *(v1 + 4);
  v14 = v10;
  v13[0] = *(v1 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F1E3398();
  sub_24F92D128();
  v22 = v8;
  v21 = 0;
  sub_24F1E33EC();
  sub_24F92CD48();
  if (!v2)
  {
    v12 = v14;
    v20 = 1;
    sub_24F92CCA8();
    v17 = v12;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538, &qword_24F950560);
    sub_24F1E37A8(&qword_27F2277B0, &qword_27F214060, MEMORY[0x277D21C50], MEMORY[0x277D83948]);
    sub_24F92CD48();
    v18 = 3;
    sub_24F92CCA8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24F1E3398()
{
  result = qword_27F23C0E8;
  if (!qword_27F23C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C0E8);
  }

  return result;
}

unint64_t sub_24F1E33EC()
{
  result = qword_27F23C0F0;
  if (!qword_27F23C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C0F0);
  }

  return result;
}

uint64_t ThreeDimensionalMediaArtworkContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C0F8, &qword_24F9D4310);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F1E3398();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  sub_24F1E3754();
  sub_24F92CC68();
  v9 = v28;
  v26 = 1;
  v10 = sub_24F92CBC8();
  v12 = v11;
  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538, &qword_24F950560);
  v25 = 2;
  sub_24F1E37A8(&qword_27F227788, &qword_27F214018, MEMORY[0x277D21C60], MEMORY[0x277D83978]);
  sub_24F92CC68();
  v21 = v23;
  v24 = 3;
  v13 = sub_24F92CBC8();
  v15 = v14;
  v16 = *(v6 + 8);
  v20 = v13;
  v16(v8, v5);
  *a2 = v9;
  v17 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v12;
  v18 = v20;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F1E3754()
{
  result = qword_27F23C100;
  if (!qword_27F23C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C100);
  }

  return result;
}

uint64_t sub_24F1E37A8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219538, &qword_24F950560);
    sub_24E94B634(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F1E3884()
{
  result = qword_27F23C108;
  if (!qword_27F23C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C108);
  }

  return result;
}

unint64_t sub_24F1E38DC()
{
  result = qword_27F23C110;
  if (!qword_27F23C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C110);
  }

  return result;
}

unint64_t sub_24F1E3934()
{
  result = qword_27F23C118;
  if (!qword_27F23C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C118);
  }

  return result;
}

uint64_t sub_24F1E3988(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6563616C70 && a2 == 0xEE00656C79745374;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x777472416E6F6369 && a2 == 0xEC000000736B726FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F1E3B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FriendsPlayingPageIntent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F1E3BE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FriendsPlayingPageIntent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24F1E3CBC(uint64_t a1)
{
  result = type metadata accessor for FriendsPlayingPageIntent(319);
  if (v2 <= 0x3F)
  {
    result = sub_24F928FD8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_24F1E3D5C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F1EA254(&qword_27F227430, type metadata accessor for FriendsPlayingOptionProvider, &unk_24F97E5E0);
  sub_24F91FD88();

  *a2 = *(v3 + 24);
}

uint64_t sub_24F1E3E2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FriendsPlayingPageIntent(0);
  MEMORY[0x28223BE20](v4);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v41 - v8;
  v41 = sub_24F92A498();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for FriendsPlayingPageView(0);
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v53 = v4;
  v57[3] = v4;
  v47 = sub_24F1EA254(&qword_27F21D330, type metadata accessor for FriendsPlayingPageIntent, &unk_24F968494);
  v57[4] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  sub_24F1E5C90(v2, boxed_opaque_existential_1, type metadata accessor for FriendsPlayingPageIntent);
  v20 = *(v2 + *(v17 + 28));
  sub_24F1E5C90(v2, &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendsPlayingPageView);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = swift_allocObject();
  sub_24F1E9218(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for FriendsPlayingPageView);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C130, &qword_24F9D4580);
  v24 = v23[13];
  *(a1 + v24) = swift_getKeyPath();
  v25 = v41;
  swift_storeEnumTagMultiPayload();
  v26 = a1 + v23[14];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = a1 + v23[15];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v23[16];
  *(a1 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  sub_24F91F618();
  (*(v11 + 16))(v42, v15, v10);
  sub_24F926F28();
  (*(v11 + 8))(v15, v10);
  v29 = a1 + v23[18];
  LOBYTE(v54) = 1;
  sub_24F926F28();
  v30 = v56;
  *v29 = v55;
  *(v29 + 1) = v30;
  v31 = (a1 + v23[30]);
  sub_24F929EB8();
  v54 = sub_24F929EA8();
  sub_24F926F28();
  v32 = v56;
  *v31 = v55;
  v31[1] = v32;
  v33 = v43;
  sub_24E615E00(v57, a1 + v23[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v34 = v46;
  sub_24F92A448();
  v35 = v49;
  sub_24F92A408();
  (*(v48 + 8))(v34, v35);
  (*(v45 + 8))(v33, v25);
  v36 = v56;
  v37 = (a1 + v23[23]);
  *v37 = v55;
  v37[1] = v36;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928EF8();
  *(a1 + v23[25]) = v55;
  v38 = (a1 + v23[27]);
  *v38 = sub_24F1E45F4;
  v38[1] = 0;
  v39 = (a1 + v23[28]);
  *v39 = sub_24F1E695C;
  v39[1] = v22;
  *(a1 + v23[20]) = v20;
  *(a1 + v23[22]) = 1;
  *(a1 + v23[21]) = 2;
  type metadata accessor for FeedRefreshNotifier(0);

  sub_24F928F28();
  *(a1 + v23[26]) = v55;
  type metadata accessor for NetworkConnectionMonitor(0);
  sub_24F928F28();
  *(a1 + v23[31]) = v55;
  sub_24F1E5C90(boxed_opaque_existential_1, v52, type metadata accessor for FriendsPlayingPageIntent);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24F1E45F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Page(0);
  sub_24E60169C(a1 + v10[20], v9, qword_27F220E38, &unk_24F965190);
  v11 = *(a1 + v10[21]);
  sub_24E60169C(a1 + v10[24], v6, &qword_27F21D8F8, &qword_24F95ADB0);
  v12 = type metadata accessor for Page.Background(0);
  LOBYTE(a1) = (*(*(v12 - 8) + 48))(v6, 1, v12) == 1;
  sub_24E601704(v6, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24EA56368(v9, a2);
  result = type metadata accessor for DefaultPageHeaderView(0);
  *(a2 + *(result + 20)) = v11;
  *(a2 + *(result + 24)) = a1;
  return result;
}

void *sub_24F1E47A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = sub_24F92A498();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1E5C90(a1, a2, type metadata accessor for Page);
  type metadata accessor for FriendsPlayingPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720, &qword_24F940B20);
  v12 = type metadata accessor for FriendsPlayingPageView.PageContent(0);
  sub_24F928F28();
  sub_24F928F28();
  if (qword_27F211860 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v13 = v21;
  v14 = v22;
  type metadata accessor for FriendsPlayingOptionProvider(0);
  v15 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C138, &qword_24F9D4638);
  swift_allocObject();
  *(v15 + 16) = sub_24F9280D8();
  *(v15 + 24) = 0;
  sub_24F91FDB8();
  v16 = (a2 + *(v12 + 24));
  *v16 = v13;
  v16[1] = v14;
  v17 = (a2 + *(v12 + 28));
  v20[1] = v15;
  result = sub_24F926F28();
  v19 = v22;
  *v17 = v21;
  v17[1] = v19;
  return result;
}

uint64_t sub_24F1E4A8C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for FriendsPlayingPageView.PageContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68, &unk_24F95E420);
  MEMORY[0x28223BE20](v21);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C188, &unk_24F9D47B0);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  v26 = *(v1 + *(type metadata accessor for Page(0) + 48));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70, &qword_24F990C40);
  sub_24E602068(&qword_27F21ED78, &qword_27F21ED70, &qword_24F990C40, MEMORY[0x277D83980]);
  sub_24F921BA8();
  v20[1] = swift_getKeyPath();
  sub_24F1E5C90(v1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendsPlayingPageView.PageContent);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_24F1E9218(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FriendsPlayingPageView.PageContent);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24F1EA040;
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C190, &unk_24F9D47E8);
  sub_24E602068(&qword_27F21ED88, &qword_27F21ED68, &unk_24F95E420, MEMORY[0x277D7EC38]);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229248, &qword_24F984910);
  v13 = type metadata accessor for FriendsPlayingShelfIntent(255);
  v14 = sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
  v15 = sub_24F1EA254(&qword_27F21D488, type metadata accessor for FriendsPlayingShelfIntent, &unk_24F951484);
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24F927228();
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C198, &qword_24F9D47F8);
  sub_24F1EA108();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C1A8, &qword_24F9D4800);
  v17 = sub_24E602068(&qword_27F23C1B0, &qword_27F23C1A8, &qword_24F9D4800, MEMORY[0x277CDDB60]);
  v26 = v16;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  sub_24F926A58();
  return (*(v23 + 8))(v8, v18);
}

uint64_t sub_24F1E4F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = type metadata accessor for FriendsPlayingPageView.PageContent(0);
  v8 = v7 - 8;
  v34 = *(v7 - 8);
  v33 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0, &qword_24F95E4A0);
  MEMORY[0x28223BE20](v31);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248, &qword_24F984910);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  sub_24E615E00(a2, v40);
  v13 = *(type metadata accessor for Page(0) + 84);
  v30 = a3;
  LOBYTE(a2) = *(a3 + v13);
  sub_24E615E00(a3 + *(v8 + 28), v39);
  sub_24E615E00(v40, v37);
  sub_24E615E00(v39, v36);
  v14 = v10[17];
  *&v12[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8, &qword_24F984960);
  swift_storeEnumTagMultiPayload();
  v12[v10[13]] = a2;
  v15 = __swift_project_boxed_opaque_existential_1(v37, v38);
  v16 = MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  sub_24F928D38();
  v19 = &v12[v10[14]];
  *v19 = a1;
  v19[8] = 0;
  sub_24E615E00(v36, &v12[v10[15]]);
  v20 = &v12[v10[16]];
  *v20 = sub_24F78343C;
  v20[1] = 0;
  v21 = __swift_project_boxed_opaque_existential_1(v37, v38);
  v22 = MEMORY[0x28223BE20](v21);
  (*(v24 + 16))(&v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  type metadata accessor for GSKShelf(0);
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
  sub_24F9217C8();
  sub_24F926F28();
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v37);
  type metadata accessor for FriendsPlayingShelfIntent(0);
  v25 = v32;
  sub_24F1E5C90(v30, v32, type metadata accessor for FriendsPlayingPageView.PageContent);
  v26 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v27 = swift_allocObject();
  sub_24F1E9218(v25, v27 + v26, type metadata accessor for FriendsPlayingPageView.PageContent);
  sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
  sub_24F1EA254(&qword_27F21D488, type metadata accessor for FriendsPlayingShelfIntent, &unk_24F951484);
  sub_24F925EF8();

  return sub_24E601704(v12, &qword_27F229248, &qword_24F984910);
}

uint64_t sub_24F1E54D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F1E561C, 0, 0);
}

uint64_t sub_24F1E561C()
{
  sub_24F92B7F8();
  *(v0 + 128) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F1E56B0, v2, v1);
}

uint64_t sub_24F1E56B0()
{
  v1 = v0[8];

  v2 = (v1 + *(type metadata accessor for FriendsPlayingPageView.PageContent(0) + 28));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C1C0, &qword_24F9D4808);
  sub_24F926F38();
  v0[17] = v0[4];

  return MEMORY[0x2822009F8](sub_24F1E5760, 0, 0);
}

uint64_t sub_24F1E5760()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 72);
  v14 = *(v0 + 40);
  v9 = swift_task_alloc();
  v10 = *(v0 + 48);
  *(v9 + 16) = v1;
  *(v9 + 24) = v10;
  type metadata accessor for GSKShelf(0);
  (*(v6 + 104))(v7, *MEMORY[0x277D85778], v8);
  sub_24F92B928();

  (*(v4 + 16))(v2, v3, v5);
  sub_24E602068(&qword_27F22D120, &qword_27F213760, qword_24F93AF80, MEMORY[0x277D857C0]);
  sub_24F9280F8();

  (*(v4 + 8))(v3, v5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v11 - 8) + 56))(v14, 0, 1, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F1E5968(uint64_t a1)
{
  v2 = sub_24F925018();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C1A8, &qword_24F9D4800);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24F924FF8();
  v10 = a1;
  type metadata accessor for FriendsPlayingAccessoryView(0);
  sub_24F1EA254(&qword_27F23C1B8, type metadata accessor for FriendsPlayingAccessoryView, &unk_24FA05238);
  sub_24F9242A8();
  v7 = sub_24E602068(&qword_27F23C1B0, &qword_27F23C1A8, &qword_24F9D4800, MEMORY[0x277CDDB60]);
  MEMORY[0x25304AA30](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F1E5B44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FriendsPlayingPageView.PageContent(0) + 24));
  v5 = *v3;
  v4 = v3[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C1C0, &qword_24F9D4808);
  sub_24F926F38();
  *a2 = v5;
  a2[1] = v4;
  v6 = type metadata accessor for FriendsPlayingAccessoryView(0);
  type metadata accessor for FriendsPlayingOptionProvider(0);
  sub_24F1EA254(&qword_27F227430, type metadata accessor for FriendsPlayingOptionProvider, &unk_24F97E5E0);
  sub_24F927378();
  v7 = a2 + *(v6 + 24);
  *v7 = swift_getKeyPath();
  v7[40] = 0;
  v8 = *(v6 + 28);
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24F1E5C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1E5CF8()
{
  v1 = *(*(type metadata accessor for FriendsPlayingPageView(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  type metadata accessor for GameSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v13 = type metadata accessor for GameMAPI(0);
    v14 = *(v13 + 28);
    v15 = sub_24F9289E8();
    (*(*(v15 - 8) + 8))(v2 + v14, v15);

    v16 = *(v13 + 40);
    v17 = sub_24F928388();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v2 + v16, 1, v17))
    {
      (*(v18 + 8))(v2 + v16, v17);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_12;
      }

      v4 = type metadata accessor for Game(0);
      v5 = v4[18];
      v6 = sub_24F9289E8();
      v7 = *(v6 - 8);
      v8 = *(v7 + 8);
      v8(v2 + v5, v6);
      v9 = v4[19];
      if (!(*(v7 + 48))(v2 + v9, 1, v6))
      {
        v8(v2 + v9, v6);
      }

      v10 = v4[21];
      v11 = sub_24F920818();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v2 + v10, 1, v11))
      {
        (*(v12 + 8))(v2 + v10, v11);
      }
    }
  }

LABEL_12:
  v60 = type metadata accessor for FriendsPlayingPageIntent(0);
  v19 = v2 + *(v60 + 20);

  v20 = type metadata accessor for Player(0);
  v21 = v20[6];
  v22 = sub_24F9289E8();
  v61 = *(v22 - 8);
  v62 = *(v61 + 8);
  v62(v19 + v21, v22);

  if (*(v19 + v20[9] + 8) != 1)
  {
  }

  v23 = v19 + v20[13];
  v24 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v25 = type metadata accessor for CallProviderConversationHandle(0);
    v26 = *(*(v25 - 8) + 48);
    if (!v26(v23, 1, v25))
    {

      v27 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v61 + 48))(v23 + v27, 1, v22))
      {
        v62(v23 + v27, v22);
      }
    }

    v28 = v23 + *(v24 + 20);
    if (!v26(v28, 1, v25))
    {

      v29 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v61 + 48))(v28 + v29, 1, v22))
      {
        v62(v28 + v29, v22);
      }
    }
  }

  if (*(v19 + v20[15] + 8))
  {
  }

  v30 = v19 + v20[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v30, 1, PlayedTogetherInfo))
  {

    v32 = type metadata accessor for Game(0);
    v62(v30 + v32[18], v22);
    v33 = v32[19];
    if (!(*(v61 + 48))(v30 + v33, 1, v22))
    {
      v62(v30 + v33, v22);
    }

    v34 = v32[21];
    v35 = sub_24F920818();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v30 + v34, 1, v35))
    {
      (*(v36 + 8))(v30 + v34, v35);
    }
  }

  v37 = v19 + v20[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v37, 1, ChallengeInfo))
  {

    v39 = type metadata accessor for Game(0);
    v62(v37 + v39[18], v22);
    v40 = v39[19];
    if (!(*(v61 + 48))(v37 + v40, 1, v22))
    {
      v62(v37 + v40, v22);
    }

    v41 = v39[21];
    v42 = sub_24F920818();
    v43 = *(v42 - 8);
    if (!(*(v43 + 48))(v37 + v41, 1, v42))
    {
      (*(v43 + 8))(v37 + v41, v42);
    }
  }

  v44 = v2 + *(v60 + 24);
  v45 = type metadata accessor for Page.Background(0);
  if (!(*(*(v45 - 8) + 48))(v44, 1, v45))
  {
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 <= 1)
    {
      if (v47)
      {
        if (v47 == 1)
        {
          v62(v44, v22);
          v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v50 = sub_24F922348();
          v51 = *(v50 - 8);
          if (!(*(v51 + 48))(v44 + v49, 1, v50))
          {
            (*(v51 + 8))(v44 + v49, v50);
          }
        }
      }

      else
      {
        v62(v44, v22);
      }
    }

    else if (v47 == 2)
    {
      if (!(*(v61 + 48))(v44, 1, v22))
      {
        v62(v44, v22);
      }

      v52 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v53 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v53 - 1) + 48))(v52, 1, v53))
      {
        v54 = sub_24F91F4A8();
        (*(*(v54 - 8) + 8))(v52, v54);
        v62(v52 + v53[5], v22);
        v55 = v53[9];
        v56 = sub_24F928698();
        v57 = *(v56 - 8);
        v58 = *(v57 + 48);
        if (!v58(v52 + v55, 1, v56))
        {
          (*(v57 + 8))(v52 + v55, v56);
        }

        v59 = v53[10];
        if (!v58(v52 + v59, 1, v56))
        {
          (*(v57 + 8))(v52 + v59, v56);
        }
      }
    }

    else if (v47 == 3 || v47 == 4)
    {
      v48 = sub_24F928388();
      (*(*(v48 - 8) + 8))(v44, v48);
    }
  }

  return swift_deallocObject();
}

void *sub_24F1E695C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FriendsPlayingPageView(0);

  return sub_24F1E47A0(a1, a2);
}

uint64_t sub_24F1E6A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v66 = a3;
  v54 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v10 = *(v9 - 8);
  v60 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for FriendsPlayingShelfIntent(0);
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C170, &qword_24F9D4748);
  v52 = *(v69 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v69);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v68 = &v47 - v18;
  v49 = *(a2 + 16);
  v65 = type metadata accessor for FriendsPlayingShelfIntent;
  v51 = v15;
  sub_24F1E5C90(a3, v15, type metadata accessor for FriendsPlayingShelfIntent);
  v19 = v10;
  v20 = *(v10 + 16);
  v63 = v10 + 16;
  v64 = v20;
  v20(v12, a1, v9);
  v21 = (*(v62 + 80) + 24) & ~*(v62 + 80);
  v22 = *(v62 + 80);
  v48 = v22;
  v62 = v14 + 7;
  v23 = (v14 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v10 + 80);
  v61 = v24 + 8;
  v25 = (v24 + 8 + v23) & ~v24;
  v58 = v22 | v24;
  v59 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  v27 = a2;
  v57 = type metadata accessor for FriendsPlayingShelfIntent;
  sub_24F1E9218(v15, v26 + v21, type metadata accessor for FriendsPlayingShelfIntent);
  *(v26 + v23) = v70;
  v28 = *(v19 + 32);
  v55 = v19 + 32;
  v56 = v28;
  v29 = v12;
  v28((v26 + v25), v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C138, &qword_24F9D4638);
  sub_24E602068(&qword_27F23C178, &qword_27F23C138, &qword_24F9D4638, MEMORY[0x277D21A98]);

  sub_24F9288B8();
  v30 = v68;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v71);
  v31 = v52;
  v32 = v50;
  v33 = v69;
  (*(v52 + 16))(v50, v30, v69);
  v34 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v27;
  (*(v31 + 32))(v35 + v34, v32, v33);
  v36 = v27;

  v37 = v9;
  v38 = v54;
  sub_24F92B898();
  v39 = sub_24F92B858();
  v40 = v67;
  (*(*(v39 - 8) + 56))(v67, 1, 1, v39);
  v41 = v51;
  sub_24F1E5C90(v66, v51, v65);
  v64(v29, v38, v37);
  v42 = (v48 + 40) & ~v48;
  v43 = (v62 + v42) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v61 + v43) & ~v59;
  v45 = swift_allocObject();
  *(v45 + 2) = 0;
  *(v45 + 3) = 0;
  *(v45 + 4) = v36;
  sub_24F1E9218(v41, &v45[v42], v57);
  *&v45[v43] = v70;
  v56(&v45[v44], v29, v37);

  sub_24F1D3DA4(0, 0, v40, &unk_24F9D4758, v45);

  return (*(v31 + 8))(v68, v69);
}

double sub_24F1E7040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v27 = &v26 - v9;
  v11 = type metadata accessor for FriendsPlayingShelfIntent(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_24F1E5C90(a3, v14, type metadata accessor for FriendsPlayingShelfIntent);
  v19 = v10;
  v20 = v7;
  (*(v8 + 16))(v19, v28, v7);
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v8 + 80) + v22 + 8) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a2;
  sub_24F1E9218(v14, &v24[v21], type metadata accessor for FriendsPlayingShelfIntent);
  *&v24[v22] = v29;
  (*(v8 + 32))(&v24[v23], v27, v20);

  sub_24F1D3DA4(0, 0, v17, &unk_24F9D47A0, v24);

  return result;
}

uint64_t sub_24F1E7324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v7[3] = v11;
  v7[4] = *(v11 - 8);
  v7[5] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v7[6] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[7] = v12;
  v13 = swift_task_alloc();
  v7[8] = v13;
  *v13 = v7;
  v13[1] = sub_24F1E7480;

  return sub_24F1E7714(v12, a5, a6, a4);
}

uint64_t sub_24F1E7480()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24F1E769C;
  }

  else
  {
    v2 = sub_24F1E7594;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1E7594()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_24F1E5C90(v1, v0[6], type metadata accessor for GSKShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  (*(v3 + 8))(v2, v4);
  sub_24F1E9668(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F1E769C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F1E7714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  type metadata accessor for Player(0);
  v4[13] = swift_task_alloc();
  type metadata accessor for Game(0);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for FriendsPlayingShelfConstructionIntent(0);
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for JSIntentDispatcher();
  v6 = swift_task_alloc();
  v4[17] = v6;
  *v6 = v4;
  v6[1] = sub_24F1E7854;

  return MEMORY[0x28217F228](v4 + 7, v5, v5);
}

uint64_t sub_24F1E7854()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24F1E8000;
  }

  else
  {
    v2 = sub_24F1E7968;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1E7968()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v0[19] = v0[7];
  v0[20] = *v3;
  v0[21] = v3[1];
  v4 = type metadata accessor for FriendsPlayingShelfIntent(0);
  sub_24F1E5C90(v3 + *(v4 + 20), v2, type metadata accessor for Game);
  sub_24F1E5C90(v3 + *(v4 + 24), v1, type metadata accessor for Player);
  sub_24F92B7F8();

  v0[22] = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F1E7A88, v6, v5);
}

uint64_t sub_24F1E7A88()
{
  v1 = *(v0 + 96);

  swift_getKeyPath();
  *(v0 + 64) = v1;
  sub_24F1EA254(&qword_27F227430, type metadata accessor for FriendsPlayingOptionProvider, &unk_24F97E5E0);
  sub_24F91FD88();

  *(v0 + 200) = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_24F1E7B74, 0, 0);
}

uint64_t sub_24F1E7B74()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  *v4 = *(v0 + 160);
  v4[1] = v2;
  sub_24F1E5C90(v7, v4 + v5[5], type metadata accessor for Game);
  sub_24F1E5C90(v6, v4 + v5[6], type metadata accessor for Player);
  *(v4 + v5[8]) = v1;
  *(v0 + 40) = &_s14descr2861AC041O5GamesON;
  *(v0 + 48) = sub_24EDA569C();
  *(v0 + 16) = 0;
  v8 = sub_24F91FE68();
  sub_24F1E9668(v6, type metadata accessor for Player);
  sub_24F1E9668(v7, type metadata accessor for Game);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v4 + v5[7]) = v8 & 1;
  v16 = (*(*v3 + 112) + **(*v3 + 112));
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  v10 = sub_24F1EA254(&qword_27F23C180, type metadata accessor for FriendsPlayingShelfConstructionIntent, &unk_24FA236A0);
  *v9 = v0;
  v9[1] = sub_24F1E7DD4;
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 88);
  v14 = *(v0 + 72);

  return v16(v14, v11, v13, "", 0, 2, v12, v10);
}

uint64_t sub_24F1E7DD4()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 192) = v0;

  sub_24F1E9668(v2, type metadata accessor for FriendsPlayingShelfConstructionIntent);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F1E7F80, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_24F1E7F80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F1E8000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F1E8080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v7[3] = v11;
  v7[4] = *(v11 - 8);
  v7[5] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v7[6] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[7] = v12;
  v13 = swift_task_alloc();
  v7[8] = v13;
  *v13 = v7;
  v13[1] = sub_24F1E81DC;

  return sub_24F1E7714(v12, a5, a6, a4);
}

uint64_t sub_24F1E81DC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24F1EBEA8;
  }

  else
  {
    v2 = sub_24F1EBEA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1E82F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[11] = v7;
  v4[12] = v8;

  return MEMORY[0x2822009F8](sub_24F1E8438, 0, 0);
}

uint64_t sub_24F1E8438()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v14 = *(v0 + 16);
  v9 = swift_task_alloc();
  v10 = *(v0 + 24);
  *(v9 + 16) = v2;
  *(v9 + 24) = v10;
  type metadata accessor for GSKShelf(0);
  (*(v7 + 104))(v5, *MEMORY[0x277D85778], v8);
  sub_24F92B928();

  (*(v4 + 16))(v3, v1, v6);
  sub_24E602068(&qword_27F22D120, &qword_27F213760, qword_24F93AF80, MEMORY[0x277D857C0]);
  sub_24F9280F8();
  (*(v4 + 8))(v1, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v11 - 8) + 56))(v14, 0, 1, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F1E8674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F1E8748(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Page(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_24F1E8804(uint64_t a1)
{
  type metadata accessor for Page(319);
  if (v1 <= 0x3F)
  {
    sub_24E833194();
    if (v2 <= 0x3F)
    {
      sub_24F1E88A8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F1E88A8(uint64_t a1)
{
  if (!qword_27F23C150)
  {
    type metadata accessor for FriendsPlayingOptionProvider(255);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23C150);
    }
  }
}

unint64_t sub_24F1E8904()
{
  result = qword_27F23C158;
  if (!qword_27F23C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C160, qword_24F9D4698);
    sub_24E602068(&qword_27F23C168, &qword_27F23C130, &qword_24F9D4580, &unk_24FA0AFB0);
    sub_24E9BAE7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C158);
  }

  return result;
}

uint64_t sub_24F1E8A2C()
{
  v1 = v0;
  v2 = type metadata accessor for FriendsPlayingShelfIntent(0);
  v3 = *(*(v2 - 8) + 80);
  v38 = *(*(v2 - 8) + 64);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v39 = *(v42 - 8);
  v37 = *(v39 + 80);

  v40 = (v3 + 24) & ~v3;
  v4 = v0 + v40;

  v5 = v4 + *(v2 + 20);

  v6 = type metadata accessor for Game(0);
  v7 = v6[18];
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  v43 = *(v9 + 8);
  v43(v5 + v7, v8);
  v10 = v6[19];
  v41 = *(v9 + 48);
  if (!v41(v5 + v10, 1, v8))
  {
    v43(v5 + v10, v8);
  }

  v11 = v6[21];
  v12 = sub_24F920818();
  v34 = *(v12 - 8);
  v35 = *(v34 + 48);
  if (!v35(v5 + v11, 1, v12))
  {
    (*(v34 + 8))(v5 + v11, v12);
  }

  v36 = v12;

  v13 = v4 + *(v2 + 24);

  v14 = type metadata accessor for Player(0);
  v43(v13 + v14[6], v8);

  if (*(v13 + v14[9] + 8) != 1)
  {
  }

  v15 = v13 + v14[13];
  v16 = type metadata accessor for CallProviderConversationHandleSet(0);
  v17 = v42;
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v33 = v1;
    v18 = type metadata accessor for CallProviderConversationHandle(0);
    v19 = *(*(v18 - 8) + 48);
    if (!v19(v15, 1, v18))
    {

      v20 = *(type metadata accessor for CallProvider(0) + 24);
      if (!v41(v15 + v20, 1, v8))
      {
        v43(v15 + v20, v8);
      }
    }

    v21 = v15 + *(v16 + 20);
    v22 = v19(v21, 1, v18);
    v1 = v33;
    if (!v22)
    {

      v23 = *(type metadata accessor for CallProvider(0) + 24);
      if (!v41(v21 + v23, 1, v8))
      {
        v43(v21 + v23, v8);
      }
    }

    v17 = v42;
  }

  if (*(v13 + v14[15] + 8))
  {
  }

  v24 = v13 + v14[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v24, 1, PlayedTogetherInfo))
  {

    v43(v24 + v6[18], v8);
    v26 = v6[19];
    if (!v41(v24 + v26, 1, v8))
    {
      v43(v24 + v26, v8);
    }

    v27 = v6[21];
    if (!v35(v24 + v27, 1, v36))
    {
      (*(v34 + 8))(v24 + v27, v36);
    }
  }

  v28 = v13 + v14[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
  {

    v43(v28 + v6[18], v8);
    v30 = v6[19];
    if (!v41(v28 + v30, 1, v8))
    {
      v43(v28 + v30, v8);
    }

    v31 = v6[21];
    if (!v35(v28 + v31, 1, v36))
    {
      (*(v34 + 8))(v28 + v31, v36);
    }
  }

  (*(v39 + 8))(v1 + ((((v38 + v40 + 7) & 0xFFFFFFFFFFFFFFF8) + v37 + 8) & ~v37), v17);

  return swift_deallocObject();
}

uint64_t sub_24F1E9218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_24F1E9280(uint64_t a1)
{
  v3 = *(type metadata accessor for FriendsPlayingShelfIntent(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_24F1E7040(a1, v8, v1 + v4, v7, v9);
}

uint64_t sub_24F1E9374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C170, &qword_24F9D4748);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1E94BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendsPlayingShelfIntent(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E6541E4;

  return sub_24F1E8080(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_24F1E9668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_35Tm()
{
  v1 = v0;
  v2 = type metadata accessor for FriendsPlayingShelfIntent(0);
  v3 = *(*(v2 - 8) + 80);
  v38 = *(*(v2 - 8) + 64);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v39 = *(v42 - 8);
  v37 = *(v39 + 80);
  swift_unknownObjectRelease();

  v40 = (v3 + 40) & ~v3;
  v4 = v0 + v40;

  v5 = v4 + *(v2 + 20);

  v6 = type metadata accessor for Game(0);
  v7 = v6[18];
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  v43 = *(v9 + 8);
  v43(v5 + v7, v8);
  v10 = v6[19];
  v41 = *(v9 + 48);
  if (!v41(v5 + v10, 1, v8))
  {
    v43(v5 + v10, v8);
  }

  v11 = v6[21];
  v12 = sub_24F920818();
  v34 = *(v12 - 8);
  v35 = *(v34 + 48);
  if (!v35(v5 + v11, 1, v12))
  {
    (*(v34 + 8))(v5 + v11, v12);
  }

  v36 = v12;

  v13 = v4 + *(v2 + 24);

  v14 = type metadata accessor for Player(0);
  v43(v13 + v14[6], v8);

  if (*(v13 + v14[9] + 8) != 1)
  {
  }

  v15 = v13 + v14[13];
  v16 = type metadata accessor for CallProviderConversationHandleSet(0);
  v17 = v42;
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v33 = v1;
    v18 = type metadata accessor for CallProviderConversationHandle(0);
    v19 = *(*(v18 - 8) + 48);
    if (!v19(v15, 1, v18))
    {

      v20 = *(type metadata accessor for CallProvider(0) + 24);
      if (!v41(v15 + v20, 1, v8))
      {
        v43(v15 + v20, v8);
      }
    }

    v21 = v15 + *(v16 + 20);
    v22 = v19(v21, 1, v18);
    v1 = v33;
    if (!v22)
    {

      v23 = *(type metadata accessor for CallProvider(0) + 24);
      if (!v41(v21 + v23, 1, v8))
      {
        v43(v21 + v23, v8);
      }
    }

    v17 = v42;
  }

  if (*(v13 + v14[15] + 8))
  {
  }

  v24 = v13 + v14[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v24, 1, PlayedTogetherInfo))
  {

    v43(v24 + v6[18], v8);
    v26 = v6[19];
    if (!v41(v24 + v26, 1, v8))
    {
      v43(v24 + v26, v8);
    }

    v27 = v6[21];
    if (!v35(v24 + v27, 1, v36))
    {
      (*(v34 + 8))(v24 + v27, v36);
    }
  }

  v28 = v13 + v14[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
  {

    v43(v28 + v6[18], v8);
    v30 = v6[19];
    if (!v41(v28 + v30, 1, v8))
    {
      v43(v28 + v30, v8);
    }

    v31 = v6[21];
    if (!v35(v28 + v31, 1, v36))
    {
      (*(v34 + 8))(v28 + v31, v36);
    }
  }

  (*(v39 + 8))(v1 + ((((v38 + v40 + 7) & 0xFFFFFFFFFFFFFFF8) + v37 + 8) & ~v37), v17);

  return swift_deallocObject();
}

uint64_t sub_24F1E9EBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendsPlayingShelfIntent(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E6541E4;

  return sub_24F1E7324(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_24F1EA040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FriendsPlayingPageView.PageContent(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24F1E4F4C(a1, a2, v8, a3);
}

uint64_t sub_24F1EA0C8()
{

  return swift_deallocObject();
}

unint64_t sub_24F1EA108()
{
  result = qword_27F23C1A0;
  if (!qword_27F23C1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C188, &unk_24F9D47B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F229248, &qword_24F984910);
    type metadata accessor for FriendsPlayingShelfIntent(255);
    sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
    sub_24F1EA254(&qword_27F21D488, type metadata accessor for FriendsPlayingShelfIntent, &unk_24F951484);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C1A0);
  }

  return result;
}

uint64_t sub_24F1EA254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_56Tm_1()
{
  v106 = type metadata accessor for FriendsPlayingPageView.PageContent(0);
  v1 = *(*(v106 - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);
  v3 = sub_24F92A708();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for Page(0);

  v5 = v4[6];
  v6 = sub_24F928818();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v2 + v4[20];
  v8 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    goto LABEL_55;
  }

  v9 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v10 = *(*(v9 - 1) + 48);
  if (!v10(v7, 1, v9))
  {

    v11 = v7 + v9[5];
    v12 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v85 = sub_24F9289E8();
          (*(*(v85 - 8) + 8))(v11, v85);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v13 = v7 + v9[7];
          v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v16 = sub_24F928388();
              (*(*(v16 - 8) + 8))(v13, v16);
            }
          }

          v17 = (v7 + v9[10]);
          if (v17[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v73 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v74 = type metadata accessor for JSColor(0);
        if (!(*(*(v74 - 8) + 48))(v73, 1, v74))
        {
          v75 = sub_24F928388();
          (*(*(v75 - 8) + 8))(v73, v75);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v82 = sub_24F9289E8();
        v83 = *(v82 - 8);
        if (!(*(v83 + 48))(v11, 1, v82))
        {
          (*(v83 + 8))(v11, v82);
        }

        if (*(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v18 = v7 + v8[5];
  if (v10(v18, 1, v9))
  {
    goto LABEL_32;
  }

  v19 = v18 + v9[5];
  v20 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    goto LABEL_17;
  }

  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 2)
  {
    if (!v23)
    {

      v76 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v77 = type metadata accessor for JSColor(0);
      if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
      {
        v78 = sub_24F928388();
        (*(*(v78 - 8) + 8))(v76, v78);
      }

      goto LABEL_17;
    }

    if (v23 == 1)
    {
      v84 = sub_24F9289E8();
      v104 = *(v84 - 8);
      if (!(*(v104 + 48))(v19, 1, v84))
      {
        (*(v104 + 8))(v19, v84);
      }

      if (*(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v23 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v23)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v87 = sub_24F9289E8();
      (*(*(v87 - 8) + 8))(v19, v87);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v21 = v18 + v9[7];
  v22 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v24 = sub_24F928388();
      (*(*(v24 - 8) + 8))(v21, v24);
    }
  }

  v25 = (v18 + v9[10]);
  if (v25[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_32:
  v26 = v7 + v8[6];
  if (v10(v26, 1, v9))
  {
    goto LABEL_49;
  }

  v27 = v26 + v9[5];
  v28 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    goto LABEL_34;
  }

  v31 = swift_getEnumCaseMultiPayload();
  if (v31 <= 2)
  {
    if (!v31)
    {

      v79 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v80 = type metadata accessor for JSColor(0);
      if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        v81 = sub_24F928388();
        (*(*(v81 - 8) + 8))(v79, v81);
      }

      goto LABEL_34;
    }

    if (v31 == 1)
    {
      v86 = sub_24F9289E8();
      v105 = *(v86 - 8);
      if (!(*(v105 + 48))(v27, 1, v86))
      {
        (*(v105 + 8))(v27, v86);
      }

      if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v31 != 2)
    {
      goto LABEL_34;
    }

LABEL_103:

    goto LABEL_34;
  }

  switch(v31)
  {
    case 3:
      goto LABEL_103;
    case 4:
      v88 = sub_24F9289E8();
      (*(*(v88 - 8) + 8))(v27, v88);
      break;
    case 5:
      goto LABEL_103;
  }

LABEL_34:
  v29 = v26 + v9[7];
  v30 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v29, v32);
    }
  }

  v33 = (v26 + v9[10]);
  if (v33[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_49:
  v34 = v7 + v8[7];
  if (*(v34 + 56) == 1)
  {
  }

  else if (!*(v34 + 56))
  {

    if (*(v34 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v34 + 16));
    }
  }

  v35 = v7 + v8[8];
  v36 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 == 2)
    {
      goto LABEL_149;
    }

    if (v50 != 1)
    {
      if (v50)
      {
        goto LABEL_55;
      }

      v51 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v51 - 8) + 48))(v35, 1, v51))
      {
        goto LABEL_55;
      }

      v52 = swift_getEnumCaseMultiPayload();
      if (v52 > 2)
      {
        if (v52 != 3)
        {
          if (v52 == 4)
          {
            v103 = sub_24F9289E8();
            (*(*(v103 - 8) + 8))(v35, v103);
            goto LABEL_55;
          }

          if (v52 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_149;
      }

      if (v52)
      {
        if (v52 == 1)
        {
          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v35, 1, v101))
          {
            (*(v102 + 8))(v35, v101);
          }

          if (!*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v52 != 2)
        {
          goto LABEL_55;
        }

LABEL_149:

        goto LABEL_55;
      }

      v68 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v69 = type metadata accessor for JSColor(0);
      if ((*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        goto LABEL_55;
      }

LABEL_99:
      v70 = sub_24F928388();
      (*(*(v70 - 8) + 8))(v68, v70);

      goto LABEL_55;
    }

    v64 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v65 = *(*(v64 - 8) + 48);
    if (v65(v35, 1, v64))
    {
LABEL_97:
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v67 = v35 + *(v66 + 48);
      if (v65(v67, 1, v64))
      {
        goto LABEL_98;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 <= 2)
      {
        if (v72)
        {
          if (v72 != 1)
          {
            if (v72 != 2)
            {
              goto LABEL_98;
            }

LABEL_145:

            goto LABEL_98;
          }

          v97 = sub_24F9289E8();
          v98 = *(v97 - 8);
          if (!(*(v98 + 48))(v67, 1, v97))
          {
            (*(v98 + 8))(v67, v97);
          }

          if (*(v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
          }
        }

        else
        {

          v92 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
          v93 = type metadata accessor for JSColor(0);
          if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
          {
            v94 = sub_24F928388();
            (*(*(v94 - 8) + 8))(v92, v94);
          }
        }

LABEL_98:
        v68 = v35 + *(v66 + 80);
        v69 = type metadata accessor for JSColor(0);
        if ((*(*(v69 - 8) + 48))(v68, 1, v69))
        {
          goto LABEL_55;
        }

        goto LABEL_99;
      }

      if (v72 != 3)
      {
        if (v72 == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v67, v100);
          goto LABEL_98;
        }

        if (v72 != 5)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_145;
    }

    v71 = swift_getEnumCaseMultiPayload();
    if (v71 > 2)
    {
      if (v71 != 3)
      {
        if (v71 == 4)
        {
          v99 = sub_24F9289E8();
          (*(*(v99 - 8) + 8))(v35, v99);
          goto LABEL_97;
        }

        if (v71 != 5)
        {
          goto LABEL_97;
        }
      }
    }

    else
    {
      if (!v71)
      {

        v89 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v90 = type metadata accessor for JSColor(0);
        if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
        {
          v91 = sub_24F928388();
          (*(*(v91 - 8) + 8))(v89, v91);
        }

        goto LABEL_97;
      }

      if (v71 == 1)
      {
        v95 = sub_24F9289E8();
        v96 = *(v95 - 8);
        if (!(*(v96 + 48))(v35, 1, v95))
        {
          (*(v96 + 8))(v35, v95);
        }

        if (*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_97;
      }

      if (v71 != 2)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_97;
  }

LABEL_55:
  if (*(v2 + v4[23]))
  {
  }

  v37 = v2 + v4[24];
  v38 = type metadata accessor for Page.Background(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 <= 1)
    {
      if (v44)
      {
        if (v44 == 1)
        {
          v46 = sub_24F9289E8();
          (*(*(v46 - 8) + 8))(v37, v46);
          v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v48 = sub_24F922348();
          v49 = *(v48 - 8);
          if (!(*(v49 + 48))(v37 + v47, 1, v48))
          {
            (*(v49 + 8))(v37 + v47, v48);
          }
        }
      }

      else
      {
        v63 = sub_24F9289E8();
        (*(*(v63 - 8) + 8))(v37, v63);
      }
    }

    else if (v44 == 2)
    {
      v53 = sub_24F9289E8();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(v37, 1, v53))
      {
        (*(v54 + 8))(v37, v53);
      }

      v55 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v56 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v56 - 1) + 48))(v55, 1, v56))
      {
        v57 = sub_24F91F4A8();
        (*(*(v57 - 8) + 8))(v55, v57);
        (*(v54 + 8))(v55 + v56[5], v53);
        v58 = v56[9];
        v59 = sub_24F928698();
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        if (!v61(v55 + v58, 1, v59))
        {
          (*(v60 + 8))(v55 + v58, v59);
        }

        v62 = v56[10];
        if (!v61(v55 + v62, 1, v59))
        {
          (*(v60 + 8))(v55 + v62, v59);
        }
      }
    }

    else if (v44 == 3 || v44 == 4)
    {
      v45 = sub_24F928388();
      (*(*(v45 - 8) + 8))(v37, v45);
    }
  }

  v39 = (v2 + v4[27]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = (v2 + v4[28]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = (v2 + v4[29]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v2 + v4[30]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  __swift_destroy_boxed_opaque_existential_1((v2 + *(v106 + 20)));

  return swift_deallocObject();
}

uint64_t sub_24F1EBCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for FriendsPlayingPageView.PageContent(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24E614970;

  return sub_24F1E54D8(a1, a2, a3, v3 + v9);
}

uint64_t sub_24F1EBD98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C188, &unk_24F9D47B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C198, &qword_24F9D47F8);
  sub_24F1EA108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23C1A8, &qword_24F9D4800);
  sub_24E602068(&qword_27F23C1B0, &qword_27F23C1A8, &qword_24F9D4800, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t InAppPurchaseAction.productIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_productIdentifier);

  return v1;
}

double InAppPurchaseAction.appAdamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appAdamId);
  a1[1] = v2;

  return result;
}

uint64_t InAppPurchaseAction.appBundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appBundleId);

  return v1;
}

uint64_t InAppPurchaseAction.minimumShortVersionSupportingInAppPurchaseFlow.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_minimumShortVersionSupportingInAppPurchaseFlow);

  return v1;
}

uint64_t InAppPurchaseAction.appTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appTitle);

  return v1;
}

uint64_t InAppPurchaseAction.productTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_productTitle);

  return v1;
}

uint64_t InAppPurchaseAction.additionalBuyParams.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_additionalBuyParams);

  return v1;
}

char *InAppPurchaseAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v79 = a2;
  v77 = v4;
  v6 = *v4;
  v75 = v3;
  v76 = v6;
  v78 = sub_24F9285B8();
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v83 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v72 = v9;
  v81 = *(v9 + 8);
  v82 = v9 + 8;
  v81(v22, v8);
  if (!v25)
  {
    v65 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v66 = 0xD000000000000011;
    v66[1] = 0x800000024FA4CB10;
    v66[2] = v76;
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D22530], v65);
    swift_willThrow();
    (*(v80 + 8))(v79, v78);
    v81(v83, v8);
    v27 = v77;
LABEL_12:
    swift_deallocPartialClassInstance();
    return v27;
  }

  v26 = 0x496D616441707061;
  v27 = v77;
  v28 = &v77[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_productIdentifier];
  *v28 = v23;
  v28[1] = v25;
  v71 = v28;
  v29 = 0xE900000000000064;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v81(v19, v8);
  if (!v32)
  {
    v67 = v83;
    v37 = v8;
    goto LABEL_10;
  }

  v26 = 0x6C646E7542707061;
  v33 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appAdamId];
  *v33 = v30;
  v33[1] = v32;
  v29 = 0xEB00000000644965;
  sub_24F928398();
  v34 = sub_24F928348();
  v36 = v35;
  v81(v16, v8);
  v37 = v8;
  if (!v36)
  {
    v67 = v83;
LABEL_10:
    v68 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v69 = v26;
    v69[1] = v29;
    v69[2] = v76;
    (*(*(v68 - 8) + 104))(v69, *MEMORY[0x277D22530], v68);
    swift_willThrow();
    (*(v80 + 8))(v79, v78);
    v81(v67, v37);

    if (v32)
    {
    }

    goto LABEL_12;
  }

  v38 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appBundleId];
  *v38 = v34;
  v38[1] = v36;
  type metadata accessor for Action(0);
  v39 = v83;
  sub_24F928398();
  v40 = v79;
  v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, v79);
  v42 = v81;
  v81(v13, v37);
  *&v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_installRequiredAction] = v41;
  sub_24F928398();
  v43 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, v40);
  v42(v13, v37);
  *&v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_streamlineBuyAction] = v43;
  sub_24F928398();
  v44 = sub_24F928348();
  v46 = v45;
  v42(v13, v37);
  v47 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_minimumShortVersionSupportingInAppPurchaseFlow];
  *v47 = v44;
  v47[1] = v46;
  sub_24F928398();
  v48 = sub_24F928348();
  v50 = v49;
  v42(v13, v37);
  v51 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_appTitle];
  *v51 = v48;
  v51[1] = v50;
  sub_24F928398();
  v52 = sub_24F928348();
  v54 = v53;
  v42(v13, v37);
  v55 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_productTitle];
  *v55 = v52;
  v55[1] = v54;
  sub_24F928398();
  v56 = sub_24F928348();
  v58 = v57;
  v42(v13, v37);
  v59 = &v27[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseAction_additionalBuyParams];
  *v59 = v56;
  v59[1] = v58;
  v60 = v73;
  (*(v72 + 16))(v73, v39, v37);
  v61 = v74;
  v62 = v78;
  (*(v80 + 16))(v74, v40, v78);
  v63 = v75;
  v64 = Action.init(deserializing:using:)(v60, v61);
  if (!v63)
  {
    v27 = v64;
  }

  (*(v80 + 8))(v40, v62);
  v42(v39, v37);
  return v27;
}

uint64_t sub_24F1EC8F8()
{
}

uint64_t InAppPurchaseAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t InAppPurchaseAction.__deallocating_deinit()
{
  InAppPurchaseAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InAppPurchaseAction(uint64_t a1)
{
  result = qword_27F23C1C8;
  if (!qword_27F23C1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1[3];
  *(a5 + 152) = a1[2];
  *(a5 + 168) = v8;
  v9 = a1[5];
  *(a5 + 184) = a1[4];
  *(a5 + 200) = v9;
  v10 = a1[1];
  *(a5 + 120) = *a1;
  *(a5 + 136) = v10;
  sub_24E612C80(a2, a5);
  v11 = *(a3 + 16);
  *(a5 + 40) = *a3;
  *(a5 + 56) = v11;
  *(a5 + 72) = *(a3 + 32);

  return sub_24E612C80(a4, a5 + 80);
}

uint64_t ProductDescriptionLayout.Metrics.init(topPadding:developerTopPadding:horizontalTextPadding:horizontalDeveloperSpace:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v7 = *a2;
  *a5 = *a1;
  a5[1] = v7;
  sub_24E612C80(a3, (a5 + 2));

  return sub_24E612C80(a4, (a5 + 7));
}

void ProductDescriptionLayout.Metrics.topPadding.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

void ProductDescriptionLayout.Metrics.developerTopPadding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

uint64_t ProductDescriptionLayout.Metrics.horizontalTextPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_24E612C80(a1, v1 + 16);
}

uint64_t ProductDescriptionLayout.Metrics.horizontalDeveloperSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return sub_24E612C80(a1, v1 + 56);
}

double ProductDescriptionLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_24F92CDB8();
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9225E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F922618();
  v71 = *(v14 - 8);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v70 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  if (sub_24F92BF68() & 1) != 0 || (sub_24F92BF98())
  {
    v68 = v14;
    v69 = v17;
    sub_24E60169C((v3 + 5), &v73, &qword_27F229780, &unk_24F965BB0);
    v66 = v13;
    v67 = a1;
    if (v74)
    {
      sub_24E612C80(&v73, v76);
      (*(v11 + 104))(v13, *MEMORY[0x277D22788], v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24F93A070;
      *&v73 = v3[15];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v9);
      v20 = v19;
      v72 = *(v72 + 8);
      (v72)(v9, v7);

      v74 = MEMORY[0x277D85048];
      v75 = MEMORY[0x277D225F8];
      *&v73 = v20;
      v21 = sub_24F9229A8();
      v22 = MEMORY[0x277D228E0];
      *(v18 + 56) = v21;
      *(v18 + 64) = v22;
      __swift_allocate_boxed_opaque_existential_1((v18 + 32));
      sub_24F9229B8();
      v23 = v7;
      v65 = v7;
      v24 = v3[3];
      v25 = v4[4];
      v26 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      *(v18 + 96) = v24;
      *(v18 + 104) = *(v25 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 72));
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
      *&v73 = v4[15];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v9);
      v29 = v28;
      v30 = v23;
      v31 = v72;
      (v72)(v9, v30);

      v74 = MEMORY[0x277D85048];
      v75 = MEMORY[0x277D225F8];
      *&v73 = v29;
      *(v18 + 136) = v21;
      *(v18 + 144) = MEMORY[0x277D228E0];
      __swift_allocate_boxed_opaque_existential_1((v18 + 112));
      sub_24F9229B8();
      v32 = v77;
      v33 = v78;
      v34 = __swift_project_boxed_opaque_existential_1(v76, v77);
      *(v18 + 176) = v32;
      *(v18 + 184) = *(v33 + 8);
      v35 = __swift_allocate_boxed_opaque_existential_1((v18 + 152));
      (*(*(v32 - 8) + 16))(v35, v34, v32);
      *&v73 = v4[16];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v9);
      v37 = v36;
      v31(v9, v65);

      v74 = MEMORY[0x277D85048];
      v75 = MEMORY[0x277D225F8];
      *&v73 = v37;
      *(v18 + 216) = v21;
      *(v18 + 224) = MEMORY[0x277D228E0];
      __swift_allocate_boxed_opaque_existential_1((v18 + 192));
      sub_24F9229B8();
      v38 = v4[13];
      v39 = v4[14];
      v40 = __swift_project_boxed_opaque_existential_1(v4 + 10, v38);
      *(v18 + 256) = v38;
      *(v18 + 264) = *(v39 + 8);
      v41 = __swift_allocate_boxed_opaque_existential_1((v18 + 232));
      (*(*(v38 - 8) + 16))(v41, v40, v38);
      v42 = v70;
      sub_24F9225F8();
      __swift_destroy_boxed_opaque_existential_1(v76);
    }

    else
    {
      sub_24E601704(&v73, &qword_27F229780, &unk_24F965BB0);
      (*(v11 + 104))(v13, *MEMORY[0x277D22788], v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_24F93FC20;
      v76[0] = v3[15];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v9);
      v45 = v44;
      v72 = *(v72 + 8);
      (v72)(v9, v7);

      v77 = MEMORY[0x277D85048];
      v78 = MEMORY[0x277D225F8];
      v76[0] = v45;
      v46 = sub_24F9229A8();
      v47 = MEMORY[0x277D228E0];
      *(v43 + 56) = v46;
      *(v43 + 64) = v47;
      __swift_allocate_boxed_opaque_existential_1((v43 + 32));
      sub_24F9229B8();
      v48 = v7;
      v49 = v3[3];
      v50 = v4[4];
      v51 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      *(v43 + 96) = v49;
      *(v43 + 104) = *(v50 + 8);
      v52 = __swift_allocate_boxed_opaque_existential_1((v43 + 72));
      (*(*(v49 - 8) + 16))(v52, v51, v49);
      v76[0] = v4[16];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v9);
      v54 = v53;
      (v72)(v9, v48);

      v77 = MEMORY[0x277D85048];
      v78 = MEMORY[0x277D225F8];
      v76[0] = v54;
      *(v43 + 136) = v46;
      *(v43 + 144) = MEMORY[0x277D228E0];
      __swift_allocate_boxed_opaque_existential_1((v43 + 112));
      sub_24F9229B8();
      v55 = v4[13];
      v56 = v4[14];
      v57 = __swift_project_boxed_opaque_existential_1(v4 + 10, v55);
      *(v43 + 176) = v55;
      *(v43 + 184) = *(v56 + 8);
      v58 = __swift_allocate_boxed_opaque_existential_1((v43 + 152));
      (*(*(v55 - 8) + 16))(v58, v57, v55);
      v42 = v70;
      sub_24F9225F8();
    }

    sub_24F9225D8();
    a2 = v59;

    (*(v71 + 8))(v42, v68);
  }

  else
  {
    v60 = v3[20];
    __swift_project_boxed_opaque_existential_1(v4 + 17, v4[20]);
    sub_24E8ED7D8(v60);
    sub_24F9223A8();
    v61 = *(v72 + 8);
    v61(v9, v7);
    v62 = v4[25];
    __swift_project_boxed_opaque_existential_1(v4 + 22, v62);
    sub_24E8ED7D8(v62);
    sub_24F9223A8();
    v61(v9, v7);
    __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
    sub_24F922298();
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_24F922288();
    v76[0] = v4[16];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a1, v9);
    v61(v9, v7);

    v76[0] = v4[15];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a1, v9);

    v61(v9, v7);
  }

  return a2;
}

void ProductDescriptionLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v78 = a2;
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 traitCollection];
  v19 = v6[25];
  __swift_project_boxed_opaque_existential_1(v7 + 22, v19);
  sub_24E8ED7D8(v19);
  v20 = sub_24F9223A8();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v22 = v7[20];
  __swift_project_boxed_opaque_existential_1(v7 + 17, v22);
  sub_24E8ED7D8(v22);
  sub_24F9223A8();
  v21(v17, v13);
  v23 = sub_24F92BF68();
  v77 = v18;
  v69 = v20;
  if (v23 & 1) != 0 || (sub_24F92BF98())
  {
    v84.origin.x = a3;
    v84.origin.y = a4;
    v84.size.width = a5;
    v84.size.height = a6;
    CGRectGetWidth(v84);
    v24 = 1;
  }

  else
  {
    v85.origin.x = a3;
    v85.origin.y = a4;
    v85.size.width = a5;
    v85.size.height = a6;
    CGRectGetWidth(v85);
    v24 = 0;
  }

  v86.origin.x = a3;
  v86.origin.y = a4;
  v86.size.width = a5;
  v86.size.height = a6;
  CGRectGetHeight(v86);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24F922288();
  v26 = v25;
  v28 = v27;
  v87.origin.x = a3;
  v87.origin.y = a4;
  v87.size.width = a5;
  v87.size.height = a6;
  MinY = CGRectGetMinY(v87);
  v82[0] = v7[15];

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a1, v17);
  v31 = v30;
  v21(v17, v13);

  v32 = MinY + v31;
  v88.origin.x = a3;
  v88.origin.y = a4;
  v88.size.width = a5;
  v88.size.height = a6;
  MinX = CGRectGetMinX(v88);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24F92C1D8();
  sub_24F922228();
  v79 = a4;
  v76 = v26;
  v75 = v28;
  v74 = v32;
  v73 = MinX;
  v71 = a6;
  v70 = a5;
  if (v24)
  {
    v89.origin.x = MinX;
    v89.origin.y = v32;
    v89.size.width = v26;
    v89.size.height = v28;
    MaxY = CGRectGetMaxY(v89);
    sub_24E60169C((v7 + 5), &v80, &qword_27F229780, &unk_24F965BB0);
    if (v81)
    {
      sub_24E612C80(&v80, v82);
      v90.origin.x = a3;
      v90.origin.y = a4;
      v90.size.width = a5;
      v90.size.height = a6;
      CGRectGetWidth(v90);
      v91.origin.x = a3;
      v91.origin.y = a4;
      v91.size.width = a5;
      v91.size.height = a6;
      CGRectGetHeight(v91);
      __swift_project_boxed_opaque_existential_1(v82, v83);
      sub_24F922288();
      v36 = v35;
      v38 = v37;
      v92.origin.x = a3;
      v92.origin.y = v79;
      v92.size.width = a5;
      v92.size.height = a6;
      v39 = CGRectGetMinX(v92);
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      sub_24F922218();
      v40 = CGRectGetMaxY(v93);
      *&v80 = v7[16];

      sub_24F9220E8();
      Conditional<>.value(in:rounded:)(a1, v17);
      v42 = v41;
      v21(v17, v13);

      __swift_project_boxed_opaque_existential_1(v82, v83);
      sub_24F922228();
      v94.origin.x = v39;
      v94.origin.y = v40 + v42;
      v94.size.width = v36;
      a4 = v79;
      v94.size.height = v38;
      MaxY = CGRectGetMaxY(v94);
      __swift_destroy_boxed_opaque_existential_1(v82);
    }

    else
    {
      sub_24E601704(&v80, &qword_27F229780, &unk_24F965BB0);
    }

    v97.origin.x = a3;
    v97.origin.y = a4;
    v97.size.width = a5;
    v97.size.height = a6;
    Width = CGRectGetWidth(v97);
    v98.origin.x = a3;
    v98.origin.y = a4;
    v98.size.width = a5;
    v98.size.height = a6;
    v72 = CGRectGetMinX(v98);
    v82[0] = v7[16];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a1, v17);
    v56 = v55;
    v21(v17, v13);

    v54 = a4;
    v50 = MaxY + v56;
    v53 = a3;
  }

  else
  {
    v95.origin.x = a3;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    v43 = CGRectGetMinY(v95);
    v82[0] = v7[15];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a1, v17);
    v45 = v44;
    v21(v17, v13);

    v46 = v43 + v45;
    v82[0] = v7[16];

    sub_24F9220E8();
    Conditional<>.value(in:rounded:)(a1, v17);
    v48 = v47;
    v21(v17, v13);

    v49 = a4;
    v50 = v46 + v48;
    v96.origin.x = a3;
    v96.origin.y = v49;
    v96.size.width = a5;
    v96.size.height = a6;
    MaxX = CGRectGetMaxX(v96);
    Width = v69;
    v72 = MaxX - v69;
    v53 = a3;
    v54 = v49;
  }

  v57 = a5;
  v58 = a6;
  Height = CGRectGetHeight(*&v53);
  v60 = v77;
  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  sub_24F922298();
  v62 = v61;
  v69 = v63;
  v64 = v72;
  v99.origin.x = v72;
  v99.origin.y = v50;
  v99.size.width = Width;
  v99.size.height = Height;
  v65 = CGRectGetMinX(v99);
  v100.origin.x = v64;
  v100.origin.y = v50;
  v100.size.width = Width;
  v100.size.height = Height;
  v72 = CGRectGetMinY(v100);
  __swift_project_boxed_opaque_existential_1(v7 + 10, v7[13]);
  v66 = v79;
  v67 = v70;
  v68 = v71;
  sub_24F92C1D8();
  sub_24F922228();
  v101.origin.x = a3;
  v101.origin.y = v66;
  v101.size.width = v67;
  v101.size.height = v68;
  CGRectGetMinX(v101);
  v102.origin.x = a3;
  v102.origin.y = v66;
  v102.size.width = v67;
  v102.size.height = v68;
  CGRectGetMinY(v102);
  v103.origin.x = a3;
  v103.origin.y = v66;
  v103.size.width = v67;
  v103.size.height = v68;
  CGRectGetWidth(v103);
  v104.origin.x = v65;
  v104.origin.y = v72;
  v104.size.width = v62;
  v104.size.height = v69;
  CGRectGetMaxY(v104);
  v105.origin.x = v73;
  v105.origin.y = v74;
  v105.size.width = v76;
  v105.size.height = v75;
  CGRectGetMaxY(v105);
  sub_24F922128();
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.init(metrics:primaryText:secondaryText:disclosureView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  sub_24F1EE248(a1, a5);
  v9 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout(0);
  sub_24E612C80(a2, a5 + v9[5]);
  sub_24E612C80(a3, a5 + v9[6]);
  v10 = a5 + v9[7];

  return sub_24E612C80(a4, v10);
}

uint64_t sub_24F1EE248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.Metrics.init(primaryTextSpace:secondaryTextSpace:disclosureMargin:disclosureSize:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = *a1;
  v11 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v12 = v11[5];
  v13 = sub_24F922628();
  (*(*(v13 - 8) + 32))(&a4[v12], a2, v13);
  result = sub_24E612C80(a3, &a4[v11[6]]);
  v15 = &a4[v11[7]];
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.Metrics.secondaryTextSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0) + 20);
  v4 = sub_24F922628();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24F1EE478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ProductDescriptionLayout.DeveloperLinkLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_24F9225E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24F922618();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24F92CDB8();
  v45 = *(v46 - 8);
  *&v12 = MEMORY[0x28223BE20](v46).n128_u64[0];
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v15 = [a1 traitCollection];
  v16 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout(0);
  __swift_project_boxed_opaque_existential_1((v3 + v16[7]), *(v3 + v16[7] + 24));
  if (sub_24F922238() & 1) == 0 && ((sub_24F92BF68() & 1) != 0 || (sub_24F92BF98()))
  {
    v18 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
    v19 = (v3 + *(v18 + 24));
    v20 = v19[3];
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v44 = v16;
    sub_24E8ED7D8(v20);
    v16 = v44;
    v21 = sub_24F9223A8();
    (*(v45 + 8))(v14, v46);
    v17.n128_f64[0] = v21 + *(v4 + *(v18 + 28));
  }

  v47 = v15;
  v48 = v10;
  (*(v8 + 104))(v10, *MEMORY[0x277D22788], v7, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24F93A400;
  v23 = (v4 + v16[5]);
  v24 = v23[3];
  v25 = v23[4];
  v26 = __swift_project_boxed_opaque_existential_1(v23, v24);
  v60 = v24;
  v61 = *(*(v25 + 8) + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
  v28 = *v4;
  v57 = &type metadata for AnyDimensionWrapper;
  v58 = sub_24EF623A8();
  v56[0] = v28;
  v29 = sub_24F922418();
  v30 = MEMORY[0x277D226F0];
  v54 = v29;
  v55 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v53);

  sub_24F922408();
  v31 = sub_24F9229F8();
  v32 = MEMORY[0x277D22900];
  *(v22 + 56) = v31;
  *(v22 + 64) = v32;
  __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  sub_24F9229E8();
  v33 = (v4 + v16[6]);
  v34 = v33[3];
  v35 = v33[4];
  v36 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v60 = v34;
  v61 = *(*(v35 + 8) + 8);
  v37 = __swift_allocate_boxed_opaque_existential_1(v59);
  (*(*(v34 - 8) + 16))(v37, v36, v34);
  v38 = *(type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0) + 20);
  v39 = sub_24F922628();
  v57 = v39;
  v58 = MEMORY[0x277D22798];
  v40 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(v39 - 8) + 16))(v40, v4 + v38, v39);
  v54 = v29;
  v55 = v30;
  __swift_allocate_boxed_opaque_existential_1(v53);
  sub_24F922408();
  *(v22 + 96) = v31;
  *(v22 + 104) = v32;
  __swift_allocate_boxed_opaque_existential_1((v22 + 72));
  sub_24F9229E8();
  v41 = v49;
  sub_24F9225F8();
  sub_24F9225D8();

  (*(v50 + 8))(v41, v51);
  return a2;
}

uint64_t ProductDescriptionLayout.DeveloperLinkLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v63 = a2;
  v64 = a1;
  v12 = sub_24F922C28();
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  v56 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F9221D8();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x28223BE20](v14);
  v60 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F92CDB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v22 = *(v20 + 24);
  v21 = *(v20 + 28);
  v59 = v20;
  v23 = (v6 + v21);
  v24 = *v23;
  v55[1] = v23[1];
  sub_24E615E00(v6 + v22, v74);
  v25 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout(0);
  v26 = (v6 + v25[7]);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v27 = sub_24F922238();
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  CGRectGetWidth(v76);
  if ((v27 & 1) == 0)
  {
    v28 = v75;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    sub_24E8ED7D8(v28);
    sub_24F9223A8();
    (*(v17 + 8))(v19, v16);
  }

  v55[2] = v24;
  v77.origin.x = a3;
  v77.origin.y = a4;
  v77.size.width = a5;
  v77.size.height = a6;
  CGRectGetMinX(v77);
  v78.origin.x = a3;
  v78.origin.y = a4;
  v78.size.width = a5;
  v78.size.height = a6;
  CGRectGetMinY(v78);
  v79.origin.x = a3;
  v79.origin.y = a4;
  v79.size.width = a5;
  v79.size.height = a6;
  CGRectGetHeight(v79);
  sub_24F92C1D8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50, &unk_24F9AFC90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v38 = (v7 + v25[5]);
  v39 = v38[3];
  v40 = v38[4];
  v41 = __swift_project_boxed_opaque_existential_1(v38, v39);
  v72 = v39;
  v73 = *(v40 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v41, v39);
  v43 = *v7;
  v69 = &type metadata for AnyDimensionWrapper;
  v70 = sub_24EF623A8();
  v68[0] = v43;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  sub_24E615E00(v71, inited + 32);
  sub_24E615E00(v68, inited + 80);
  sub_24E60169C(&v65, inited + 120, &qword_27F22F780, &qword_24F968620);
  *(inited + 72) = 1;
  *(inited + 160) = 8;

  sub_24E601704(&v65, &qword_27F22F780, &qword_24F968620);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  v44 = (v7 + v25[6]);
  v45 = v44[3];
  v46 = v44[4];
  v47 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v72 = v45;
  v73 = *(v46 + 8);
  v48 = __swift_allocate_boxed_opaque_existential_1(v71);
  (*(*(v45 - 8) + 16))(v48, v47, v45);
  v49 = *(v59 + 20);
  v50 = sub_24F922628();
  v69 = v50;
  v70 = MEMORY[0x277D22798];
  v51 = __swift_allocate_boxed_opaque_existential_1(v68);
  (*(*(v50 - 8) + 16))(v51, v7 + v49, v50);
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  sub_24E615E00(v71, inited + 168);
  sub_24E615E00(v68, inited + 216);
  sub_24E60169C(&v65, inited + 256, &qword_27F22F780, &qword_24F968620);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_24E601704(&v65, &qword_27F22F780, &qword_24F968620);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  LOBYTE(v71[0]) = 1;
  v71[1] = inited;
  v52 = v60;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v60, v30, v32, v34, v36);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  if ((sub_24F922238() & 1) == 0)
  {
    v53 = v56;
    sub_24F9221C8();
    sub_24F922BE8();
    (*(v57 + 8))(v53, v58);
    v80.origin.x = a3;
    v80.origin.y = a4;
    v80.size.width = a5;
    v80.size.height = a6;
    CGRectGetMaxX(v80);
  }

  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_24F92C1D8();
  sub_24F922228();
  sub_24F9221A8();
  sub_24F9221A8();
  v81.origin.x = a3;
  v81.origin.y = a4;
  v81.size.width = a5;
  v81.size.height = a6;
  CGRectGetWidth(v81);
  sub_24F922158();
  sub_24F922128();
  (*(v61 + 8))(v52, v62);

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t ProductDescriptionLayout.DeveloperExtendedLinkLayout.init(metrics:primaryText:linkItems:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v6;
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  v8 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v8;
  result = sub_24E612C80(a2, a4 + 120);
  *(a4 + 160) = a3;
  return result;
}

uint64_t ProductDescriptionLayout.DeveloperExtendedLinkLayout.Metrics.init(primaryTextSpace:secondaryContentMargin:secondaryTextSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E612C80(a1, a4);
  sub_24E612C80(a2, a4 + 40);

  return sub_24E612C80(a3, a4 + 80);
}

double ProductDescriptionLayout.DeveloperExtendedLinkLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v67 = a1;
  v59 = sub_24F9225E8();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24F922618();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9229F8();
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v66 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_24F9229A8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24F93DE60;
  v16 = v3[18];
  v17 = v4[19];
  v18 = __swift_project_boxed_opaque_existential_1(v4 + 15, v16);
  v75 = v16;
  v76 = *(*(v17 + 8) + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v18, v16);
  v20 = v4[3];
  __swift_project_boxed_opaque_existential_1(v4, v20);
  sub_24E8ED7D8(v20);
  v21 = v11;
  v22 = sub_24F9223A8();
  v23 = v12 + 8;
  v24 = *(v12 + 8);
  v24(v14, v21);
  v72 = MEMORY[0x277D85048];
  v73 = MEMORY[0x277D225F8];
  v71 = v22;
  v64 = sub_24F922418();
  v69 = v64;
  v70 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v68);
  sub_24F922408();
  v25 = MEMORY[0x277D22900];
  v65 = v8;
  *(v15 + 56) = v8;
  *(v15 + 64) = v25;
  __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  sub_24F9229E8();
  v26 = v4[20];
  if (*(v26 + 16))
  {
    v27 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 5, v27);
    sub_24E8ED7D8(v27);
    v28 = sub_24F9223A8();
    v62 = v24;
    v24(v14, v21);
    v75 = MEMORY[0x277D85048];
    v76 = MEMORY[0x277D225F8];
    *&v74 = v28;
    v29 = v53;
    sub_24F9229B8();
    v31 = *(v15 + 16);
    v30 = *(v15 + 24);
    v63 = v21;
    if (v31 >= v30 >> 1)
    {
      v15 = sub_24E617A00((v30 > 1), v31 + 1, 1, v15);
    }

    v32 = v61;
    v75 = v61;
    v76 = MEMORY[0x277D228E0];
    v33 = __swift_allocate_boxed_opaque_existential_1(&v74);
    v34 = v60;
    (*(v60 + 16))(v33, v29, v32);
    *(v15 + 16) = v31 + 1;
    sub_24E612C80(&v74, v15 + 40 * v31 + 32);
    (*(v34 + 8))(v29, v32);
    v35 = *(v26 + 16);
    if (v35)
    {
      v60 = v23;
      v61 = v4;
      v36 = (v26 + 32);
      v37 = (v52 + 16);
      v38 = (v52 + 8);
      do
      {
        v39 = v36[3];
        v40 = v36[4];
        v41 = __swift_project_boxed_opaque_existential_1(v36, v39);
        v75 = v39;
        v76 = *(v40 + 8);
        v42 = __swift_allocate_boxed_opaque_existential_1(&v74);
        (*(*(v39 - 8) + 16))(v42, v41, v39);
        v43 = *(v61 + 104);
        __swift_project_boxed_opaque_existential_1((v61 + 80), v43);
        sub_24E8ED7D8(v43);
        v44 = sub_24F9223A8();
        v62(v14, v63);
        v72 = MEMORY[0x277D85048];
        v73 = MEMORY[0x277D225F8];
        v71 = v44;
        v69 = v64;
        v70 = MEMORY[0x277D226F0];
        __swift_allocate_boxed_opaque_existential_1(v68);
        sub_24F922408();
        sub_24F9229E8();
        v46 = *(v15 + 16);
        v45 = *(v15 + 24);
        if (v46 >= v45 >> 1)
        {
          v15 = sub_24E617A00((v45 > 1), v46 + 1, 1, v15);
        }

        v47 = v65;
        v75 = v65;
        v76 = MEMORY[0x277D22900];
        v48 = __swift_allocate_boxed_opaque_existential_1(&v74);
        v49 = v66;
        (*v37)(v48, v66, v47);
        *(v15 + 16) = v46 + 1;
        sub_24E612C80(&v74, v15 + 40 * v46 + 32);
        (*v38)(v49, v47);
        v36 += 5;
        --v35;
      }

      while (v35);
    }
  }

  (*(v57 + 104))(v55, *MEMORY[0x277D22788], v59);
  v50 = v54;
  sub_24F9225F8();
  sub_24F9225D8();
  (*(v56 + 8))(v50, v58);
  return a2;
}

uint64_t ProductDescriptionLayout.DeveloperExtendedLinkLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v45 = a2;
  v40 = sub_24F92CDB8();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24F9221D8();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v38 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F922868();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_24F922888();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v34 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v6 + 15, v6[18]);
  v36 = a6;
  sub_24F922288();
  v33[1] = v20;
  __swift_project_boxed_opaque_existential_1(v7 + 15, v7[18]);
  v35 = a3;
  v50.origin.x = a3;
  v50.origin.y = a4;
  v50.size.width = a5;
  v50.size.height = a6;
  CGRectGetMinX(v50);
  v51.origin.x = a3;
  v51.origin.y = a4;
  v51.size.width = a5;
  v51.size.height = a6;
  CGRectGetMinY(v51);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24F9223C8();
  v21 = a5;
  sub_24F922228();
  (*(v16 + 104))(v18, *MEMORY[0x277D22868], v15);
  v22 = v6[20];
  v47 = v6;
  v48 = a1;
  sub_24E76CD4C(sub_24F1F050C, v46, v22);
  v49[3] = sub_24F922418();
  v49[4] = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v49);
  sub_24F922408();
  v23 = v34;
  sub_24F922878();
  __swift_project_boxed_opaque_existential_1(v7 + 15, v7[18]);
  sub_24F922218();
  MaxY = CGRectGetMaxY(v52);
  v25 = v6[8];
  __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
  v26 = v37;
  sub_24E8ED7D8(v25);
  v27 = sub_24F9223A8();
  (*(v39 + 8))(v26, v40);
  v28 = MaxY + v27;
  v29 = v35;
  v53.origin.x = v35;
  v53.origin.y = a4;
  v53.size.width = v21;
  v30 = v36;
  v53.size.height = v36;
  CGRectOffset(v53, 0.0, v28);
  v31 = v38;
  sub_24F9227D8();
  v54.origin.x = v29;
  v54.origin.y = a4;
  v54.size.width = v21;
  v54.size.height = v30;
  CGRectGetMinX(v54);
  v55.origin.x = v29;
  v55.origin.y = a4;
  v55.size.width = v21;
  v55.size.height = v30;
  CGRectGetMinY(v55);
  v56.origin.x = v29;
  v56.origin.y = a4;
  v56.size.width = v21;
  v56.size.height = v30;
  CGRectGetWidth(v56);
  sub_24F922158();
  sub_24F9221A8();
  sub_24F922158();
  sub_24F922128();
  (*(v43 + 8))(v31, v44);
  return (*(v41 + 8))(v23, v42);
}

uint64_t sub_24F1F01FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v25 = a3;
  v28 = a4;
  v6 = sub_24F9227F8();
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F922838();
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 104);
  __swift_project_boxed_opaque_existential_1((a2 + 80), v17);
  sub_24E8ED7D8(v17);
  v18 = sub_24F9223A8();
  (*(v14 + 8))(v16, v13);
  v31[3] = MEMORY[0x277D85048];
  v31[4] = MEMORY[0x277D225F8];
  *v31 = v18;
  v19 = v24;
  v20.n128_f64[0] = (*(v10 + 104))(v12, *MEMORY[0x277D22850], v24);
  v30 = MEMORY[0x277D84F90];
  sub_24E8EF510(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
  sub_24E8EF568();
  v21 = v26;
  sub_24F92C6A8();
  sub_24F922818();
  (*(v27 + 8))(v9, v21);
  (*(v10 + 8))(v12, v19);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_24F1F053C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24F1F0584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F1F0600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F1F06D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24F1F0790(uint64_t a1)
{
  result = type metadata accessor for ProductDescriptionLayout.DeveloperLinkLayout.Metrics(319);
  if (v2 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F2297C0, MEMORY[0x277D226F8]);
    if (v3 <= 0x3F)
    {
      result = sub_24E8EFB54(319, &qword_27F237A20, MEMORY[0x277D22640]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24F1F0860(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F922628();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F1F0920(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F922628();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F1F09C4(uint64_t a1)
{
  sub_24F1F0A88(319);
  if (v1 <= 0x3F)
  {
    sub_24F922628();
    if (v2 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F237A40, MEMORY[0x277D226C0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F1F0A88(uint64_t a1)
{
  if (!qword_27F23C208)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2297E0, &unk_24F99D420);
    v4 = type metadata accessor for Conditional(a1, v2, MEMORY[0x277D85048], v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27F23C208);
    }
  }
}

uint64_t sub_24F1F0B14()
{
  result = sub_24F92B098();
  qword_27F23C210 = result;
  return result;
}

id static ArcadePageShelfRefreshNotification.notificationName.getter()
{
  if (qword_27F210FF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F23C210;

  return v1;
}

uint64_t sub_24F1F0BD0(uint64_t a1)
{
  result = sub_24F92A9F8();
  if (v2 <= 0x3F)
  {
    sub_24F91F648();
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F1F0C64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_24F91F648() - 8);
  v7 = ((v5 + *(v6 + 80)) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = 8;
  if (v7 > 8)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 < 2)
    {
LABEL_25:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_25;
  }

LABEL_14:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void sub_24F1F0DFC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_24F91F648() - 8);
  v9 = ((v7 + *(v8 + 80)) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v9] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_24F1F1040(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for GameActivityDraftGameInfo(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_24F928AD8();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

uint64_t sub_24F1F1220(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for GameActivityDraftGameInfo(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = sub_24F928AD8();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[11];

  return v16(v17, a2, a2, v15);
}