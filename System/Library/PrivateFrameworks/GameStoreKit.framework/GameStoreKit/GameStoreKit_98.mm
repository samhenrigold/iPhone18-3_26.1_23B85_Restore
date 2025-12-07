uint64_t NetworkConnectionMonitor.ConnectionState.rawValue.getter()
{
  v1 = 0x656E696C6E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x656E696C66666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746544746F6ELL;
  }
}

uint64_t sub_24EFFF9A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656E696C6E6FLL;
  if (v2 != 1)
  {
    v4 = 0x656E696C66666FLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265746544746F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED000064656E696DLL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656E696C6E6FLL;
  if (*a2 != 1)
  {
    v8 = 0x656E696C66666FLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265746544746F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED000064656E696DLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EFFFAAC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EFFFB58(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EFFFBF0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EFFFCA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000064656E696DLL;
  v4 = 0xE600000000000000;
  v5 = 0x656E696C6E6FLL;
  if (v2 != 1)
  {
    v5 = 0x656E696C66666FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265746544746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void NetworkConnectionMonitor.connectionState.getter(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24F0007A0(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  *a1 = *(v1 + 16);
}

void sub_24EFFFDB4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F0007A0(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  *a2 = *(v3 + 16);
}

uint64_t type metadata accessor for NetworkConnectionMonitor(uint64_t a1)
{
  result = qword_27F236DD8;
  if (!qword_27F236DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24EFFFF1C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656E696C6E6FLL;
  if (*(v1 + 16) != 1)
  {
    v4 = 0x656E696C66666FLL;
    v3 = 0xE700000000000000;
  }

  if (*(v1 + 16))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265746544746F6ELL;
  }

  if (*(v1 + 16))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED000064656E696DLL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656E696C6E6FLL;
  if (v2 != 1)
  {
    v8 = 0x656E696C66666FLL;
    v7 = 0xE700000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265746544746F6ELL;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED000064656E696DLL;
  }

  if (v5 == v9 && v6 == v10)
  {

LABEL_21:
    *(v1 + 16) = v2;
    return result;
  }

  v12 = sub_24F92CE08();

  if (v12)
  {
    goto LABEL_21;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24F0007A0(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD78();

  return result;
}

double NetworkConnectionMonitor.listeners.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t NetworkConnectionMonitor.listeners.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t NetworkConnectionMonitor.__allocating_init(bagContract:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NetworkConnectionMonitor.init(bagContract:)(a1);
  return v2;
}

uint64_t NetworkConnectionMonitor.init(bagContract:)(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v21 - v4;
  v5 = sub_24F92BEE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92BE88();
  MEMORY[0x28223BE20](v9);
  v10 = sub_24F927DC8();
  MEMORY[0x28223BE20](v10 - 8);
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v1 + 24) = MEMORY[0x277D84F90];
  sub_24F9231C8();
  swift_allocObject();
  *(v1 + 32) = sub_24F9231B8();
  sub_24E74EC40();
  sub_24F927DA8();
  v26 = v11;
  sub_24F0007A0(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24EC3122C();
  sub_24F92C6A8();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v5);
  *(v1 + 40) = sub_24F92BF38();
  v12 = OBJC_IVAR____TtC12GameStoreKit24NetworkConnectionMonitor_logger;
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9220D8();
  v14 = __swift_project_value_buffer(v13, qword_27F39E7F0);
  (*(*(v13 - 8) + 16))(v2 + v12, v14, v13);
  sub_24F91FDB8();
  if (qword_27F210A60 != -1)
  {
    swift_once();
  }

  v15 = v21;
  sub_24F92A3B8();
  v16 = v23;
  sub_24F92A408();
  (*(v22 + 8))(v15, v16);
  if ((v25 & 1) == 0)
  {
    if (qword_27F210D28 != -1)
    {
      swift_once();
    }

    if ((byte_27F39D1B1 & 1) == 0)
    {
      v17 = swift_allocObject();
      swift_weakInit();

      sub_24E5FCA4C(sub_24F001438, v17);
      sub_24F923178();

      v18 = *(v2 + 40);

      v19 = v18;
      sub_24F923188();
    }
  }

  return v2;
}

uint64_t sub_24F0007A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24F0007E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F923228();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  sub_24F92B7F8();

  v12 = sub_24F92B7E8();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = a2;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_24EA9A1C4(0, 0, v10, &unk_24F9BCD00, v14);

  return result;
}

uint64_t sub_24F0009E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_24F92B7F8();
  v5[8] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F000A80, v7, v6);
}

uint64_t sub_24F000A80()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_24F000B28(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_24F000B28(uint64_t a1)
{
  v3 = sub_24F923208();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  v9 = sub_24F923228();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12GameStoreKit24NetworkConnectionMonitor_logger;
  v15 = *(v10 + 16);
  v58 = a1;
  v15(v13, a1, v9, v11);
  v59 = v1;
  v56 = v14;
  v16 = sub_24F9220B8();
  v17 = sub_24F92BDB8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v54 = v18;
    v55 = swift_slowAlloc();
    v60[0] = v55;
    *v18 = 136446210;
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_24F923218();
    sub_24F92CA38();
    (*(v4 + 8))(v8, v3);
    v19 = v61;
    v20 = v62;
    (*(v10 + 8))(v13, v9);
    v21 = sub_24E7620D4(v19, v20, v60);

    v22 = v54;
    *(v54 + 1) = v21;
    _os_log_impl(&dword_24E5DD000, v16, v17, "[NetworkMonitor] Path update - %{public}s", v22, 0xCu);
    v23 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x2530542D0](v23, -1, -1);
    MEMORY[0x2530542D0](v22, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v24 = 0x656E696C6E6FLL;
  swift_getKeyPath();
  v25 = v59;
  v61 = v59;
  sub_24F0007A0(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  v26 = *(v25 + 16);
  sub_24F923218();
  v27 = v57;
  (*(v4 + 104))(v57, *MEMORY[0x277CD8F78], v3);
  v28 = sub_24F9231F8();
  v29 = *(v4 + 8);
  v29(v27, v3);
  v29(v8, v3);
  if (v28)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  if (v26 == 2)
  {
    v31 = 0xE700000000000000;
    v32 = 0x656E696C66666FLL;
  }

  else
  {
    if (v26 != 1)
    {
      if (v28)
      {
        v33 = 0xE600000000000000;
      }

      else
      {
        v24 = 0x656E696C66666FLL;
        v33 = 0xE700000000000000;
      }

      goto LABEL_20;
    }

    v31 = 0xE600000000000000;
    v32 = 0x656E696C6E6FLL;
  }

  if (v28)
  {
    v33 = 0xE600000000000000;
  }

  else
  {
    v24 = 0x656E696C66666FLL;
    v33 = 0xE700000000000000;
  }

  if (v32 == v24 && v31 == v33)
  {

    goto LABEL_39;
  }

LABEL_20:
  v34 = sub_24F92CE08();

  if (v34)
  {
    return;
  }

  v35 = sub_24F9220B8();
  v36 = sub_24F92BDB8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v30;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v61 = v39;
    *v38 = 136446466;
    v40 = 0xE600000000000000;
    v41 = 0x656E696C6E6FLL;
    if (v26 != 1)
    {
      v41 = 0x656E696C66666FLL;
      v40 = 0xE700000000000000;
    }

    if (v26)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0x7265746544746F6ELL;
    }

    if (v26)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0xED000064656E696DLL;
    }

    v44 = sub_24E7620D4(v42, v43, &v61);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2082;
    v45 = sub_24E7620D4(v24, v33, &v61);

    *(v38 + 14) = v45;
    _os_log_impl(&dword_24E5DD000, v35, v36, "[NetworkMonitor] Network state will change from %{public}s → %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v39, -1, -1);
    MEMORY[0x2530542D0](v38, -1, -1);

    v30 = v37;
  }

  else
  {
  }

  LOBYTE(v61) = v30;
  v46 = v59;
  sub_24EFFFF1C(&v61);
  swift_beginAccess();
  *(v46 + 17) = v30;
  if (v28)
  {

LABEL_35:
    swift_beginAccess();
    *(v46 + 18) = 1;
    goto LABEL_36;
  }

  v47 = sub_24F92CE08();

  if (v47)
  {
    goto LABEL_35;
  }

LABEL_36:
  swift_beginAccess();
  v48 = *(v46 + 24);
  v49 = *(v48 + 16);
  if (!v49)
  {
    return;
  }

  v50 = v48 + 40;
  do
  {
    v51 = *(v50 - 8);

    v51(v52);

    v50 += 16;
    --v49;
  }

  while (v49);
LABEL_39:
}

uint64_t NetworkConnectionMonitor.deinit()
{
  v1 = v0;

  sub_24F923198();

  v2 = OBJC_IVAR____TtC12GameStoreKit24NetworkConnectionMonitor_logger;
  v3 = sub_24F9220D8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC12GameStoreKit24NetworkConnectionMonitor___observationRegistrar;
  v5 = sub_24F91FDC8();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t NetworkConnectionMonitor.__deallocating_deinit()
{
  v1 = v0;

  sub_24F923198();

  v2 = OBJC_IVAR____TtC12GameStoreKit24NetworkConnectionMonitor_logger;
  v3 = sub_24F9220D8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC12GameStoreKit24NetworkConnectionMonitor___observationRegistrar;
  v5 = sub_24F91FDC8();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_24F001400()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_24F001444()
{
  result = qword_27F236DD0;
  if (!qword_27F236DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236DD0);
  }

  return result;
}

uint64_t sub_24F0014A0(uint64_t a1)
{
  result = sub_24F9220D8();
  if (v2 <= 0x3F)
  {
    result = sub_24F91FDC8();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24F0015E4()
{
  v1 = sub_24F923228();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F0016B0(uint64_t a1)
{
  v4 = *(sub_24F923228() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24F0009E4(a1, v6, v7, v8, v1 + v5);
}

double sub_24F0017BC()
{
  swift_getKeyPath();
  sub_24F002DF8(&qword_27F2261F0, type metadata accessor for OverlayActiveCallPageViewModel, &unk_24F9BCD50);
  sub_24F91FD88();

  return result;
}

uint64_t sub_24F001868(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC12GameStoreKit30OverlayActiveCallPageViewModel__calls) = a2;
}

id sub_24F0018AC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit30OverlayActiveCallPageViewModel_callCenter;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  v2 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC12GameStoreKit30OverlayActiveCallPageViewModel__virtualCalls] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC12GameStoreKit30OverlayActiveCallPageViewModel__calls] = v2;
  sub_24F91FDB8();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for OverlayActiveCallPageViewModel(0);
  v3 = objc_msgSendSuper2(&v12, sel_init);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:sel_callCenterCallStatusChangedWithNotification_ name:*MEMORY[0x277D6EFF0] object:0];

  v7 = [v4 defaultCenter];
  [v7 addObserver:v5 selector:sel_callCenterCallStatusChangedWithNotification_ name:*MEMORY[0x277D6F038] object:0];

  v8 = [v4 defaultCenter];
  v9 = v5;
  v10 = sub_24F92B098();
  [v8 addObserver:v9 selector:sel_overlayCallCenterCallStatusChangedWithNotification_ name:v10 object:0];

  sub_24F001E90();
  return v9;
}

id sub_24F001AA0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for OverlayActiveCallPageViewModel(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for OverlayActiveCallPageViewModel(uint64_t a1)
{
  result = qword_27F236E08;
  if (!qword_27F236E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F001C94(void *a1)
{
  v14 = a1;
  swift_getKeyPath();
  v15 = v1;
  sub_24F002DF8(&qword_27F2261F0, type metadata accessor for OverlayActiveCallPageViewModel, &unk_24F9BCD50);
  sub_24F91FD88();

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30OverlayActiveCallPageViewModel__calls);
  if (v2 >> 62)
  {
LABEL_23:
    v3 = sub_24F92C738();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x253052270](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_17;
        }
      }

      v7 = [v14 callUUID];
      v8 = sub_24F92B0D8();
      v10 = v9;

      if (v8 == *(v5 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_id) && v10 == *(v5 + OBJC_IVAR____TtC12GameStoreKit17OverlayActiveCall_id + 8))
      {

LABEL_20:

        return v5;
      }

      v12 = sub_24F92CE08();

      if (v12)
      {
        goto LABEL_20;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  return 0;
}

uint64_t sub_24F001E90()
{
  v0 = type metadata accessor for VirtualCall(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  if (qword_27F210FD0 != -1)
  {
    swift_once();
  }

  v7 = off_27F23BE70;
  swift_getKeyPath();
  v43 = v7;
  sub_24F002DF8(&qword_27F2261C0, type metadata accessor for OverlayCallCenter, &protocol conformance descriptor for OverlayCallCenter);
  sub_24F91FD88();

  swift_beginAccess();
  v8 = v7[3];
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  v11 = &qword_27F236000;
  if (v9)
  {
    v42 = MEMORY[0x277D84F90];

    sub_24F92C978();
    v12 = *(v41 + OBJC_IVAR____TtC12GameStoreKit30OverlayActiveCallPageViewModel_callCenter);
    v13 = v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v14 = *(v1 + 72);
    do
    {
      sub_24F002CA0(v13, v6);
      sub_24F002CA0(v6, v3);
      type metadata accessor for OverlayActiveCall(0);
      swift_allocObject();
      v15 = v12;
      sub_24F036FFC(v15, v3);

      sub_24F002D04(v6);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v13 += v14;
      --v9;
    }

    while (v9);

    v16 = v42;
    v10 = MEMORY[0x277D84F90];
    v11 = &qword_27F236000;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = *(v41 + v11[445]);
  v18 = [v17 currentCalls];
  sub_24F002D60();
  v19 = sub_24F92B5A8();

  if (v19 >> 62)
  {
    v20 = sub_24F92C738();
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_18:

    v26 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_18;
  }

LABEL_10:
  v42 = v10;
  result = sub_24F92C978();
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v40 = v16;
  v22 = 0;
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x253052270](v22, v19);
    }

    else
    {
      v23 = *(v19 + 8 * v22 + 32);
    }

    v24 = v23;
    ++v22;
    type metadata accessor for OverlayActiveCall(0);
    swift_allocObject();
    v25 = v17;
    sub_24F03755C(v25, v24);

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
  }

  while (v20 != v22);

  v26 = v42;
  v10 = MEMORY[0x277D84F90];
  v16 = v40;
LABEL_19:
  v42 = v16;
  sub_24EA0AE68(v26);
  v27 = v42;
  v28 = [v17 currentVideoCalls];
  v29 = sub_24F92B5A8();

  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_21;
    }

LABEL_29:

    v35 = MEMORY[0x277D84F90];
LABEL_30:
    v42 = v27;
    sub_24EA0AE68(v35);
    v36 = v42;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v38 = v41;
    *(&v39 - 2) = v41;
    *(&v39 - 1) = v36;
    v42 = v38;
    sub_24F002DF8(&qword_27F2261F0, type metadata accessor for OverlayActiveCallPageViewModel, &unk_24F9BCD50);
    sub_24F91FD78();
  }

  v30 = sub_24F92C738();
  if (!v30)
  {
    goto LABEL_29;
  }

LABEL_21:
  v42 = v10;
  result = sub_24F92C978();
  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x253052270](v31, v29);
      }

      else
      {
        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      ++v31;
      type metadata accessor for OverlayActiveCall(0);
      swift_allocObject();
      v34 = v17;
      sub_24F03755C(v34, v33);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
    }

    while (v30 != v31);

    v35 = v42;
    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24F00247C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_24F92B7F8();
  v5[13] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F002514, v7, v6);
}

uint64_t sub_24F002514()
{
  v1 = *(v0 + 88);

  if ([v1 object])
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  *(v0 + 16) = v14;
  *(v0 + 32) = v15;
  sub_24E94E17C(v0 + 16, v0 + 48);
  if (*(v0 + 72))
  {
    sub_24F002D60();
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_24F93A400;
      v4 = [v2 callUUID];
      v5 = sub_24F92B0D8();
      v7 = v6;

      v8 = MEMORY[0x277D837D0];
      *(v3 + 56) = MEMORY[0x277D837D0];
      *(v3 + 32) = v5;
      *(v3 + 40) = v7;
      *(v0 + 48) = [v2 status];
      sub_24F00300C();
      v9 = sub_24F92C638();
      *(v3 + 88) = v8;
      *(v3 + 64) = v9;
      *(v3 + 72) = v10;
      sub_24F92D038();

      if (sub_24F001C94(v2))
      {
        sub_24F034E88(v2);
      }

      else
      {
        sub_24F001E90();
      }
    }

    v11 = v0 + 16;
  }

  else
  {
    sub_24E601704(v0 + 16, &qword_27F2129B0, &unk_24F945320);
    v11 = v0 + 48;
  }

  sub_24E601704(v11, &qword_27F2129B0, &unk_24F945320);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F00277C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236E18, &unk_24F9BCDD8);
  v5[12] = swift_task_alloc();
  sub_24F92B7F8();
  v5[13] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F00284C, v7, v6);
}

uint64_t sub_24F00284C()
{
  v1 = *(v0 + 80);

  if ([v1 object])
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  *(v0 + 16) = v13;
  *(v0 + 32) = v14;
  sub_24E94E17C(v0 + 16, v0 + 48);
  v2 = *(v0 + 96);
  if (*(v0 + 72))
  {
    v3 = type metadata accessor for VirtualCall(0);
    v4 = swift_dynamicCast();
    v5 = *(v3 - 8);
    (*(v5 + 56))(v2, v4 ^ 1u, 1, v3);
    if ((*(v5 + 48))(v2, 1, v3) != 1)
    {
      sub_24E601704(*(v0 + 96), &qword_27F236E18, &unk_24F9BCDD8);
      sub_24F001E90();
      v6 = &qword_27F2129B0;
      v7 = &unk_24F945320;
      v8 = v0 + 16;
      goto LABEL_9;
    }
  }

  else
  {
    sub_24E601704(v0 + 48, &qword_27F2129B0, &unk_24F945320);
    v9 = type metadata accessor for VirtualCall(0);
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  }

  v10 = *(v0 + 96);
  sub_24E601704(v0 + 16, &qword_27F2129B0, &unk_24F945320);
  v6 = &qword_27F236E18;
  v7 = &unk_24F9BCDD8;
  v8 = v10;
LABEL_9:
  sub_24E601704(v8, v6, v7);

  v11 = *(v0 + 8);

  return v11();
}

void sub_24F002A98(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_24F92B7F8();
  v12 = a3;
  v13 = a1;
  v14 = v12;
  v15 = v13;
  v16 = sub_24F92B7E8();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v14;
  v17[5] = v15;
  sub_24EA998B8(0, 0, v10, a5, v17);
}

uint64_t sub_24F002BE8(uint64_t a1)
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

uint64_t sub_24F002CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualCall(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F002D04(uint64_t a1)
{
  v2 = type metadata accessor for VirtualCall(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F002D60()
{
  result = qword_27F2376C0;
  if (!qword_27F2376C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F2376C0);
  }

  return result;
}

uint64_t sub_24F002DB4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit30OverlayActiveCallPageViewModel__calls) = *(v0 + 24);
}

uint64_t sub_24F002DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F002E44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F00277C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_49()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F002F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F00247C(a1, v4, v5, v7, v6);
}

unint64_t sub_24F00300C()
{
  result = qword_27F236E20;
  if (!qword_27F236E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236E20);
  }

  return result;
}

uint64_t sub_24F003064()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x63496D6574737973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24F0030C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F004B30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F0030F0(uint64_t a1)
{
  v2 = sub_24F00332C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F00312C(uint64_t a1)
{
  v2 = sub_24F00332C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReleaseStateDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236E28, &qword_24F9BCE00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F00332C();
  sub_24F92D128();
  v14 = 0;
  v9 = v11[5];
  sub_24F92CD08();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CD08();
  v12 = 2;
  sub_24F92CD08();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F00332C()
{
  result = qword_27F236E30;
  if (!qword_27F236E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236E30);
  }

  return result;
}

uint64_t ReleaseStateDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236E38, &qword_24F9BCE08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F00332C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CC28();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CC28();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F00364C()
{
  result = qword_27F236E40;
  if (!qword_27F236E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236E40);
  }

  return result;
}

unint64_t sub_24F0036A4()
{
  result = qword_27F236E48;
  if (!qword_27F236E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236E48);
  }

  return result;
}

unint64_t sub_24F0036FC()
{
  result = qword_27F236E50;
  if (!qword_27F236E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236E50);
  }

  return result;
}

uint64_t sub_24F003750@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08, &unk_24F964BA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236ED8, &qword_24F9BD350);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v37 - v10;
  MEMORY[0x28223BE20](v11);
  v41 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236EE0, &qword_24F9BD358);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v38 = a1;

  v19 = sub_24F926E48();
  v20 = sub_24F9251C8();
  v21 = sub_24F925998();
  KeyPath = swift_getKeyPath();
  *&v44 = v19;
  DWORD2(v44) = v20;
  *&v45 = KeyPath;
  *(&v45 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236EE8, &qword_24F9BD390);
  sub_24F00558C();
  sub_24F9268B8();

  *v5 = sub_24F924C98();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B10, &unk_24F98D8D0);
  sub_24F003B6C(v38, &v5[*(v23 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  v24 = v39;
  sub_24E6009C8(v5, v39, &qword_27F220B08, &unk_24F964BA0);
  v25 = (v24 + *(v7 + 44));
  v26 = v49;
  v25[4] = v48;
  v25[5] = v26;
  v25[6] = v50;
  v27 = v45;
  *v25 = v44;
  v25[1] = v27;
  v28 = v47;
  v25[2] = v46;
  v25[3] = v28;
  v29 = v41;
  sub_24E6009C8(v24, v41, &qword_27F236ED8, &qword_24F9BD350);
  v30 = *(v14 + 16);
  v31 = v40;
  v30(v40, v18, v13);
  v32 = v42;
  sub_24F0056FC(v29, v42);
  v33 = v43;
  v30(v43, v31, v13);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236F08, &qword_24F9BD398);
  sub_24F0056FC(v32, &v33[*(v34 + 48)]);
  sub_24F00576C(v29);
  v35 = *(v14 + 8);
  v35(v18, v13);
  sub_24F00576C(v32);
  return (v35)(v31, v13);
}

uint64_t sub_24F003B6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50[0] = v50 - v6;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v51 = a1[3];
  v52 = v9;
  v57 = v7;
  v58 = v8;
  v50[1] = sub_24E600AEC();

  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  LODWORD(v57) = sub_24F925198();
  v15 = sub_24F925C58();
  v17 = v16;
  v19 = v18;
  sub_24E600B40(v10, v12, v14 & 1);

  sub_24F925A28();
  v20 = sub_24F925C98();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_24E600B40(v15, v17, v19 & 1);

  v57 = v20;
  v58 = v22;
  v59 = v24 & 1;
  v60 = v26;
  sub_24F9268B8();
  sub_24E600B40(v20, v22, v24 & 1);

  v57 = v52;
  v58 = v51;

  v27 = sub_24F925E18();
  v29 = v28;
  LOBYTE(v17) = v30;
  LODWORD(v57) = sub_24F9251C8();
  v31 = sub_24F925C58();
  v33 = v32;
  v35 = v34;
  sub_24E600B40(v27, v29, v17 & 1);

  sub_24F925898();
  v36 = sub_24F925C98();
  v38 = v37;
  LOBYTE(v17) = v39;
  v52 = v40;

  sub_24E600B40(v31, v33, v35 & 1);

  v41 = v53;
  v42 = v54;
  v43 = *(v54 + 16);
  v44 = v50[0];
  v45 = v55;
  v43(v53, v50[0], v55);
  v46 = v56;
  v43(v56, v41, v45);
  v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B50, &qword_24F964C20) + 48)];
  *v47 = v36;
  *(v47 + 1) = v38;
  LOBYTE(v27) = v17 & 1;
  v47[16] = v17 & 1;
  *(v47 + 3) = v52;
  sub_24E5FD138(v36, v38, v17 & 1);
  v48 = *(v42 + 8);

  v48(v44, v45);
  sub_24E600B40(v36, v38, v27);

  return (v48)(v41, v45);
}

uint64_t sub_24F003F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v29[0] = *v2;
  v29[1] = v4;
  v29[2] = v2[2];
  *a2 = sub_24F924988();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236EC0, &qword_24F9BD338);
  sub_24F003750(v29, (a2 + *(v5 + 44)));
  v6 = sub_24F925808();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236EC8, &qword_24F9BD340) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236ED0, &qword_24F9BD348) + 36));
  v17 = *(sub_24F924258() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_24F924B38();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #26.0 }

  *v16 = _Q0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48, &qword_24F9570D0);
  v26 = *(v25 + 36);
  v27 = type metadata accessor for GradientBackground(0);
  result = (*(*(v27 - 8) + 56))(&v16[v26], 1, 1, v27);
  *&v16[*(v25 + 40)] = 0;
  return result;
}

uint64_t sub_24F0040EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236E90, &qword_24F9BD180);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F0050D4();
  sub_24F92D128();
  LOBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v9 = type metadata accessor for ReleaseStateIndicator(0);
    LOBYTE(v18) = 2;
    sub_24F929608();
    sub_24F0051E8(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v18 = *v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v17[15] = 3;
    sub_24F005230();

    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F004410@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236E80, &unk_24F9BD170);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for ReleaseStateIndicator(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 40) = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 9) = 0;
  v34 = v11 + 40;
  sub_24E61DA68(&v37, (v11 + 40), qword_27F21B590, &unk_24F93BE30);
  v12 = *(v9 + 24);
  v13 = sub_24F929608();
  v14 = *(*(v13 - 8) + 56);
  v36 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F0050D4();
  v16 = v33;
  sub_24F92D108();
  if (v16)
  {
    v18 = v34;
    __swift_destroy_boxed_opaque_existential_1(v35);
    v19 = v36;
    sub_24E601704(v18, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v11[v19], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v33 = v5;
    v29 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v41 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v17 = v32;
    sub_24F92CC68();
    v20 = v38;
    *v11 = v37;
    *(v11 + 1) = v20;
    *(v11 + 4) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v41 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v21 = v31;
    sub_24E61DA68(&v37, v34, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v37) = 2;
    sub_24F0051E8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v22 = v33;
    sub_24F92CC18();
    sub_24E61DA68(v22, &v11[v36], &qword_27F213E68, &unk_24F93BC80);
    v41 = 3;
    sub_24E688020();
    sub_24F92CC68();
    (*(v21 + 8))(v8, v17);
    v23 = v38;
    v24 = v39;
    v25 = v40;
    v26 = v30;
    v27 = &v11[*(v29 + 28)];
    *v27 = v37;
    *(v27 + 1) = v23;
    *(v27 + 4) = v24;
    *(v27 + 5) = v25;
    sub_24F005128(v11, v26);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_24F00518C(v11);
  }
}

unint64_t sub_24F004938()
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x6575676573;
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

uint64_t sub_24F0049A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F005420(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F0049D0(uint64_t a1)
{
  v2 = sub_24F0050D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F004A0C(uint64_t a1)
{
  v2 = sub_24F0050D4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F004A78@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ReleaseStateIndicator(0) + 28));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;

  return result;
}

uint64_t sub_24F004AEC(uint64_t a1)
{
  sub_24F004F34();

  return sub_24F9218E8();
}

uint64_t sub_24F004B30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63496D6574737973 && a2 == 0xEA00000000006E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F004C74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F004D44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ReleaseStateIndicator(uint64_t a1)
{
  result = qword_27F236E58;
  if (!qword_27F236E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F004E40(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      sub_24E61C938(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F004F34()
{
  result = qword_27F236E68;
  if (!qword_27F236E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236E68);
  }

  return result;
}

unint64_t sub_24F004FD4()
{
  result = qword_27F236E78;
  if (!qword_27F236E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236E78);
  }

  return result;
}

unint64_t sub_24F0050D4()
{
  result = qword_27F236E88;
  if (!qword_27F236E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236E88);
  }

  return result;
}

uint64_t sub_24F005128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReleaseStateIndicator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F00518C(uint64_t a1)
{
  v2 = type metadata accessor for ReleaseStateIndicator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F0051E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F005230()
{
  result = qword_27F236E98;
  if (!qword_27F236E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236E98);
  }

  return result;
}

unint64_t sub_24F0052A8()
{
  result = qword_27F236EA0;
  if (!qword_27F236EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236EA0);
  }

  return result;
}

unint64_t sub_24F00531C()
{
  result = qword_27F236EA8;
  if (!qword_27F236EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236EA8);
  }

  return result;
}

unint64_t sub_24F005374()
{
  result = qword_27F236EB0;
  if (!qword_27F236EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236EB0);
  }

  return result;
}

unint64_t sub_24F0053CC()
{
  result = qword_27F236EB8;
  if (!qword_27F236EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236EB8);
  }

  return result;
}

uint64_t sub_24F005420(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA459C0 == a2)
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

unint64_t sub_24F00558C()
{
  result = qword_27F236EF0;
  if (!qword_27F236EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236EE8, &qword_24F9BD390);
    sub_24F005644();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236EF0);
  }

  return result;
}

unint64_t sub_24F005644()
{
  result = qword_27F236EF8;
  if (!qword_27F236EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236F00, &qword_24FA04F50);
    sub_24E602068(&qword_27F217388, &qword_27F217390, &unk_24F9454F0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236EF8);
  }

  return result;
}

uint64_t sub_24F0056FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236ED8, &qword_24F9BD350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F00576C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236ED8, &qword_24F9BD350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F0057D8()
{
  result = qword_27F236F10;
  if (!qword_27F236F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236ED0, &qword_24F9BD348);
    sub_24F005890();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48, &qword_24F9570D0, &unk_24FA0D350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F10);
  }

  return result;
}

unint64_t sub_24F005890()
{
  result = qword_27F236F18;
  if (!qword_27F236F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236F20, &qword_24F9BD3A0);
    sub_24F005948();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F18);
  }

  return result;
}

unint64_t sub_24F005948()
{
  result = qword_27F236F28;
  if (!qword_27F236F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236EC8, &qword_24F9BD340);
    sub_24E602068(&qword_27F236F30, &qword_27F236F38, &qword_24F9BD3A8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F28);
  }

  return result;
}

uint64_t sub_24F005A08(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a1, 1, v7) == 1)
  {
    *&v18[0] = sub_24F007F10();
    sub_24E98EF1C(0xD00000000000001ELL, 0x800000024FA682D0, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    sub_24E728A00(a1, v6);
    if (v9(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    }

    v11 = sub_24F007F10();
    v19 = v11;
    if (*(&v21 + 1))
    {
      v12 = v11;
      sub_24E612B0C(&v20, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v12;
      sub_24E81C1D4(v18, 0xD00000000000001ELL, 0x800000024FA682D0, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
      sub_24E98EF1C(0xD00000000000001ELL, 0x800000024FA682D0, v18);
      sub_24E601704(v18, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v14 = sub_24F92AE28();

  v15 = sub_24F92B098();
  [v2 setObject:v14 forKey:v15];

  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

uint64_t sub_24F005CF0(uint64_t a1)
{
  v1 = sub_24F007F10();
  if (*(v1 + 16) && (v2 = sub_24E76D644(0xD00000000000002ALL, 0x800000024FA514C0), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v1 + 56) + 32 * v2, v6);

    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

void sub_24F005DA4(uint64_t a1)
{
  v2 = v1;
  v8 = MEMORY[0x277D83B88];
  *&v7 = a1;
  sub_24F007F10();
  sub_24E612B0C(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v6, 0xD00000000000001CLL, 0x800000024FA55A70, isUniquelyReferenced_nonNull_native);
  v4 = sub_24F92AE28();

  v5 = sub_24F92B098();
  [v2 setObject:v4 forKey:v5];
}

uint64_t sub_24F005EC8(uint64_t a1)
{
  v1 = sub_24F007F10();
  if (*(v1 + 16) && (v2 = sub_24E76D644(0xD000000000000021, 0x800000024FA56330), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v1 + 56) + 32 * v2, v6);

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24F005F70@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F007F10();
  if (*(v3 + 16) && (v4 = sub_24E76D644(0xD000000000000024, 0x800000024FA56360), (v5 & 1) != 0))
  {
    sub_24E643A9C(*(v3 + 56) + 32 * v4, &v11);

    v6 = sub_24F91F648();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {

    v9 = sub_24F91F648();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_24F0060A8(uint64_t a1)
{
  v1 = sub_24F007F10();
  if (*(v1 + 16) && (v2 = sub_24E76D644(0xD000000000000025, 0x800000024FA562D0), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v1 + 56) + 32 * v2, v6);

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24F006150@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F007F10();
  if (*(v3 + 16) && (v4 = sub_24E76D644(0xD000000000000028, 0x800000024FA56300), (v5 & 1) != 0))
  {
    sub_24E643A9C(*(v3 + 56) + 32 * v4, &v11);

    v6 = sub_24F91F648();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {

    v9 = sub_24F91F648();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_24F006288(uint64_t a1)
{
  v1 = sub_24F007F10();
  if (*(v1 + 16) && (v2 = sub_24E76D644(0xD00000000000001BLL, 0x800000024FA56260), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v1 + 56) + 32 * v2, v6);

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24F006330@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F007F10();
  if (*(v3 + 16) && (v4 = sub_24E76D644(0xD00000000000001ELL, 0x800000024FA56280), (v5 & 1) != 0))
  {
    sub_24E643A9C(*(v3 + 56) + 32 * v4, &v11);

    v6 = sub_24F91F648();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {

    v9 = sub_24F91F648();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_24F006468(uint64_t a1)
{
  v1 = sub_24F007F10();
  if (*(v1 + 16) && (v2 = sub_24E76D644(0xD000000000000016, 0x800000024FA56240), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v1 + 56) + 32 * v2, v6);

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24F006510@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F007F10();
  if (*(v3 + 16) && (v4 = sub_24E76D644(0xD00000000000001FLL, 0x800000024FA56220), (v5 & 1) != 0))
  {
    sub_24E643A9C(*(v3 + 56) + 32 * v4, &v11);

    v6 = sub_24F91F648();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {

    v9 = sub_24F91F648();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_24F006648(uint64_t a1)
{
  v1 = sub_24F007F10();
  if (*(v1 + 16) && (v2 = sub_24E76D644(0xD00000000000001CLL, 0x800000024FA56200), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v1 + 56) + 32 * v2, v6);

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24F0066F0(uint64_t a1)
{
  v1 = sub_24F007F10();
  if (*(v1 + 16) && (v2 = sub_24E76D644(0xD000000000000023, 0x800000024FA562A0), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v1 + 56) + 32 * v2, v6);

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24F006798@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F007F10();
  if (*(v3 + 16) && (v4 = sub_24E76D644(0xD000000000000026, 0x800000024FA68310), (v5 & 1) != 0))
  {
    sub_24E643A9C(*(v3 + 56) + 32 * v4, &v11);

    v6 = sub_24F91F648();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {

    v9 = sub_24F91F648();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_24F0068F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F007F10();
  if (*(v4 + 16) && (v5 = sub_24E76D644(a1, a2), (v6 & 1) != 0))
  {
    sub_24E643A9C(*(v4 + 56) + 32 * v5, v9);

    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_24F00699C(uint64_t a1)
{
  v1 = sub_24F007F10();
  if (*(v1 + 16) && (v2 = sub_24E76D644(0xD000000000000021, 0x800000024FA561D0), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v1 + 56) + 32 * v2, v6);

    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_24F006A50@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F007F10();
  if (*(v3 + 16) && (v4 = sub_24E76D644(0xD00000000000001BLL, 0x800000024FA561B0), (v5 & 1) != 0))
  {
    sub_24E643A9C(*(v3 + 56) + 32 * v4, &v11);

    v6 = sub_24F91F648();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
  }

  else
  {

    v9 = sub_24F91F648();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

void sub_24F006B88(uint64_t a1)
{
  v2 = v1;
  v8 = MEMORY[0x277D83B88];
  *&v7 = a1;
  sub_24F007F10();
  sub_24E612B0C(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v6, 0xD00000000000001CLL, 0x800000024FA56200, isUniquelyReferenced_nonNull_native);
  v4 = sub_24F92AE28();

  v5 = sub_24F92B098();
  [v2 setObject:v4 forKey:v5];
}

uint64_t sub_24F006C88(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a1, 1, v7) == 1)
  {
    *&v18[0] = sub_24F007F10();
    sub_24E98EF1C(0xD00000000000001FLL, 0x800000024FA56220, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    sub_24E728A00(a1, v6);
    if (v9(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    }

    v11 = sub_24F007F10();
    v19 = v11;
    if (*(&v21 + 1))
    {
      v12 = v11;
      sub_24E612B0C(&v20, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v12;
      sub_24E81C1D4(v18, 0xD00000000000001FLL, 0x800000024FA56220, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
      sub_24E98EF1C(0xD00000000000001FLL, 0x800000024FA56220, v18);
      sub_24E601704(v18, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v14 = sub_24F92AE28();

  v15 = sub_24F92B098();
  [v2 setObject:v14 forKey:v15];

  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

uint64_t sub_24F006F70(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a1, 1, v7) == 1)
  {
    *&v18[0] = sub_24F007F10();
    sub_24E98EF1C(0xD000000000000019, 0x800000024FA682F0, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    sub_24E728A00(a1, v6);
    if (v9(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    }

    v11 = sub_24F007F10();
    v19 = v11;
    if (*(&v21 + 1))
    {
      v12 = v11;
      sub_24E612B0C(&v20, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v12;
      sub_24E81C1D4(v18, 0xD000000000000019, 0x800000024FA682F0, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
      sub_24E98EF1C(0xD000000000000019, 0x800000024FA682F0, v18);
      sub_24E601704(v18, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v14 = sub_24F92AE28();

  v15 = sub_24F92B098();
  [v2 setObject:v14 forKey:v15];

  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

void sub_24F007258(uint64_t a1)
{
  v2 = v1;
  v8 = MEMORY[0x277D83B88];
  *&v7 = a1;
  sub_24F007F10();
  sub_24E612B0C(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v6, 0xD000000000000016, 0x800000024FA56240, isUniquelyReferenced_nonNull_native);
  v4 = sub_24F92AE28();

  v5 = sub_24F92B098();
  [v2 setObject:v4 forKey:v5];
}

void sub_24F007358(uint64_t a1)
{
  v2 = v1;
  v8 = MEMORY[0x277D83B88];
  *&v7 = a1;
  sub_24F007F10();
  sub_24E612B0C(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v6, 0xD000000000000021, 0x800000024FA56330, isUniquelyReferenced_nonNull_native);
  v4 = sub_24F92AE28();

  v5 = sub_24F92B098();
  [v2 setObject:v4 forKey:v5];
}

uint64_t sub_24F007458(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a1, 1, v7) == 1)
  {
    *&v18[0] = sub_24F007F10();
    sub_24E98EF1C(0xD000000000000024, 0x800000024FA56360, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    sub_24E728A00(a1, v6);
    if (v9(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    }

    v11 = sub_24F007F10();
    v19 = v11;
    if (*(&v21 + 1))
    {
      v12 = v11;
      sub_24E612B0C(&v20, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v12;
      sub_24E81C1D4(v18, 0xD000000000000024, 0x800000024FA56360, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
      sub_24E98EF1C(0xD000000000000024, 0x800000024FA56360, v18);
      sub_24E601704(v18, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v14 = sub_24F92AE28();

  v15 = sub_24F92B098();
  [v2 setObject:v14 forKey:v15];

  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

void sub_24F007740(uint64_t a1)
{
  v2 = v1;
  v8 = MEMORY[0x277D83B88];
  *&v7 = a1;
  sub_24F007F10();
  sub_24E612B0C(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v6, 0xD000000000000025, 0x800000024FA562D0, isUniquelyReferenced_nonNull_native);
  v4 = sub_24F92AE28();

  v5 = sub_24F92B098();
  [v2 setObject:v4 forKey:v5];
}

uint64_t sub_24F007840(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a1, 1, v7) == 1)
  {
    *&v18[0] = sub_24F007F10();
    sub_24E98EF1C(0xD000000000000028, 0x800000024FA56300, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    sub_24E728A00(a1, v6);
    if (v9(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    }

    v11 = sub_24F007F10();
    v19 = v11;
    if (*(&v21 + 1))
    {
      v12 = v11;
      sub_24E612B0C(&v20, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v12;
      sub_24E81C1D4(v18, 0xD000000000000028, 0x800000024FA56300, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
      sub_24E98EF1C(0xD000000000000028, 0x800000024FA56300, v18);
      sub_24E601704(v18, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v14 = sub_24F92AE28();

  v15 = sub_24F92B098();
  [v2 setObject:v14 forKey:v15];

  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

void sub_24F007B28(uint64_t a1)
{
  v2 = v1;
  v8 = MEMORY[0x277D83B88];
  *&v7 = a1;
  sub_24F007F10();
  sub_24E612B0C(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v6, 0xD000000000000023, 0x800000024FA562A0, isUniquelyReferenced_nonNull_native);
  v4 = sub_24F92AE28();

  v5 = sub_24F92B098();
  [v2 setObject:v4 forKey:v5];
}

uint64_t sub_24F007C28(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a1, 1, v7) == 1)
  {
    *&v18[0] = sub_24F007F10();
    sub_24E98EF1C(0xD000000000000026, 0x800000024FA68310, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    sub_24E728A00(a1, v6);
    if (v9(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    }

    v11 = sub_24F007F10();
    v19 = v11;
    if (*(&v21 + 1))
    {
      v12 = v11;
      sub_24E612B0C(&v20, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v12;
      sub_24E81C1D4(v18, 0xD000000000000026, 0x800000024FA68310, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
      sub_24E98EF1C(0xD000000000000026, 0x800000024FA68310, v18);
      sub_24E601704(v18, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v14 = sub_24F92AE28();

  v15 = sub_24F92B098();
  [v2 setObject:v14 forKey:v15];

  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

unint64_t sub_24F007F10()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_24E601704(v7, &qword_27F2129B0, &unk_24F945320);
  }

  return sub_24E608448(MEMORY[0x277D84F90]);
}

uint64_t sub_24F008018()
{
  v0 = sub_24F007F10();
  if (*(v0 + 16) && (v1 = sub_24E76D644(0x50746E756F636361, 0xEF4449726579616CLL), (v2 & 1) != 0))
  {
    sub_24E643A9C(*(v0 + 56) + 32 * v1, v5);

    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

void sub_24F0080D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v9 = MEMORY[0x277D837D0];
    *&v8 = a1;
    *(&v8 + 1) = a2;
    sub_24F007F10();
    sub_24E612B0C(&v8, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v7, 0x50746E756F636361, 0xEF4449726579616CLL, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    *&v7[0] = sub_24F007F10();
    sub_24E98EF1C(0x50746E756F636361, 0xEF4449726579616CLL, &v8);
    sub_24E601704(&v8, &qword_27F2129B0, &unk_24F945320);
  }

  v5 = sub_24F92AE28();

  v6 = sub_24F92B098();
  [v3 setObject:v5 forKey:v6];
}

uint64_t NSUserDefaults.appLastLaunchDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F007F10();
  if (*(v2 + 16) && (v3 = sub_24E76D644(0xD000000000000011, 0x800000024FA68290), (v4 & 1) != 0))
  {
    sub_24E643A9C(*(v2 + 56) + 32 * v3, &v10);

    v5 = sub_24F91F648();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {

    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t sub_24F008384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E728A00(a1, &v6 - v3);
  return NSUserDefaults.appLastLaunchDate.setter(v4);
}

uint64_t NSUserDefaults.appLastLaunchDate.setter(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a1, 1, v7) == 1)
  {
    *&v18[0] = sub_24F007F10();
    sub_24E98EF1C(0xD000000000000011, 0x800000024FA68290, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    sub_24E728A00(a1, v6);
    if (v9(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    }

    v11 = sub_24F007F10();
    v19 = v11;
    if (*(&v21 + 1))
    {
      v12 = v11;
      sub_24E612B0C(&v20, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v12;
      sub_24E81C1D4(v18, 0xD000000000000011, 0x800000024FA68290, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
      sub_24E98EF1C(0xD000000000000011, 0x800000024FA68290, v18);
      sub_24E601704(v18, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v14 = sub_24F92AE28();

  v15 = sub_24F92B098();
  [v2 setObject:v14 forKey:v15];

  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

void (*NSUserDefaults.appLastLaunchDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  NSUserDefaults.appLastLaunchDate.getter(v4);
  return sub_24F0087B8;
}

void sub_24F0087B8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_24E728A00(v3, v2);
    NSUserDefaults.appLastLaunchDate.setter(v2);
    sub_24E601704(v3, &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    NSUserDefaults.appLastLaunchDate.setter(v3);
  }

  free(v3);

  free(v2);
}

void (*NSUserDefaults.appLaunchCount.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.appLaunchCount.getter();
  return sub_24F0088A4;
}

uint64_t sub_24F0088C8(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a1, 1, v7) == 1)
  {
    *&v18[0] = sub_24F007F10();
    sub_24E98EF1C(0xD00000000000001ELL, 0x800000024FA56280, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    sub_24E728A00(a1, v6);
    if (v9(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    }

    v11 = sub_24F007F10();
    v19 = v11;
    if (*(&v21 + 1))
    {
      v12 = v11;
      sub_24E612B0C(&v20, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v12;
      sub_24E81C1D4(v18, 0xD00000000000001ELL, 0x800000024FA56280, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
      sub_24E98EF1C(0xD00000000000001ELL, 0x800000024FA56280, v18);
      sub_24E601704(v18, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v14 = sub_24F92AE28();

  v15 = sub_24F92B098();
  [v2 setObject:v14 forKey:v15];

  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

void sub_24F008BB0(uint64_t a1)
{
  v2 = v1;
  v8 = MEMORY[0x277D83B88];
  *&v7 = a1;
  sub_24F007F10();
  sub_24E612B0C(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v6, 0xD00000000000001BLL, 0x800000024FA56260, isUniquelyReferenced_nonNull_native);
  v4 = sub_24F92AE28();

  v5 = sub_24F92B098();
  [v2 setObject:v4 forKey:v5];
}

void sub_24F008CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v12 = MEMORY[0x277D83B88];
  *&v11 = a1;
  sub_24F007F10();
  sub_24E612B0C(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v10, a2, a3, isUniquelyReferenced_nonNull_native);
  v8 = sub_24F92AE28();

  v9 = sub_24F92B098();
  [v6 setObject:v8 forKey:v9];
}

uint64_t sub_24F008DCC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F007F10();
  if (*(v2 + 16) && (v3 = sub_24E76D644(0xD00000000000001ELL, 0x800000024FA682D0), (v4 & 1) != 0))
  {
    sub_24E643A9C(*(v2 + 56) + 32 * v3, &v10);

    v5 = sub_24F91F648();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {

    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t sub_24F008F04()
{
  v0 = sub_24F007F10();
  if (*(v0 + 16) && (v1 = sub_24E76D644(0xD00000000000001CLL, 0x800000024FA55A70), (v2 & 1) != 0))
  {
    sub_24E643A9C(*(v0 + 56) + 32 * v1, v5);

    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
  }

  return 0;
}

void sub_24F008FAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v9 = MEMORY[0x277D837D0];
    *&v8 = a1;
    *(&v8 + 1) = a2;
    sub_24F007F10();
    sub_24E612B0C(&v8, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v7, 0xD000000000000021, 0x800000024FA561D0, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    *&v7[0] = sub_24F007F10();
    sub_24E98EF1C(0xD000000000000021, 0x800000024FA561D0, &v8);
    sub_24E601704(&v8, &qword_27F2129B0, &unk_24F945320);
  }

  v5 = sub_24F92AE28();

  v6 = sub_24F92B098();
  [v3 setObject:v5 forKey:v6];
}

uint64_t sub_24F009124(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a1, 1, v7) == 1)
  {
    *&v18[0] = sub_24F007F10();
    sub_24E98EF1C(0xD00000000000001BLL, 0x800000024FA561B0, &v20);
    sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
    sub_24E728A00(a1, v6);
    if (v9(v6, 1, v7) == 1)
    {
      sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
      v20 = 0u;
      v21 = 0u;
    }

    else
    {
      *(&v21 + 1) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    }

    v11 = sub_24F007F10();
    v19 = v11;
    if (*(&v21 + 1))
    {
      v12 = v11;
      sub_24E612B0C(&v20, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v12;
      sub_24E81C1D4(v18, 0xD00000000000001BLL, 0x800000024FA561B0, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      sub_24E601704(&v20, &qword_27F2129B0, &unk_24F945320);
      sub_24E98EF1C(0xD00000000000001BLL, 0x800000024FA561B0, v18);
      sub_24E601704(v18, &qword_27F2129B0, &unk_24F945320);
    }
  }

  v14 = sub_24F92AE28();

  v15 = sub_24F92B098();
  [v2 setObject:v14 forKey:v15];

  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

void sub_24F00940C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = MEMORY[0x277D837D0];
    v6 = a2;
  }

  else
  {
    a1 = 0;
    v6 = 0;
    v5 = 0;
    v13 = 0;
  }

  *&v12 = a1;
  *(&v12 + 1) = v6;
  v14 = v5;
  v11 = sub_24F007F10();
  if (a2)
  {
    sub_24E612B0C(&v12, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v10, 0xD00000000000002ALL, 0x800000024FA514C0, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_24E601704(&v12, &qword_27F2129B0, &unk_24F945320);
    sub_24E98EF1C(0xD00000000000002ALL, 0x800000024FA514C0, v10);
    sub_24E601704(v10, &qword_27F2129B0, &unk_24F945320);
  }

  v8 = sub_24F92AE28();

  v9 = sub_24F92B098();
  [v3 setObject:v8 forKey:v9];
}

uint64_t sub_24F0095B8@<X0>(uint64_t *a1@<X8>)
{
  result = NSUserDefaults.appLaunchCount.getter();
  *a1 = result;
  return result;
}

unint64_t sub_24F009620()
{
  result = qword_27F236F40;
  if (!qword_27F236F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F40);
  }

  return result;
}

uint64_t sub_24F009694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080941 && a2 == 0xE400000000000000)
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

uint64_t sub_24F00971C(uint64_t a1)
{
  v2 = sub_24F009D38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F009758(uint64_t a1)
{
  v2 = sub_24F009D38();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24F0097B4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24F009BC8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24F0097E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x676E656C6C616863;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x616C7069746C756DLL;
    v4 = 0xEB00000000726579;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x676E656C6C616863;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x616C7069746C756DLL;
    v8 = 0xEB00000000726579;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0098F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F00999C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F009A30()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F009AD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F009FB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F009B04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x676E656C6C616863;
  if (v2 != 1)
  {
    v5 = 0x616C7069746C756DLL;
    v4 = 0xEB00000000726579;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *sub_24F009BC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236F48, &qword_24F9BD4E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F009D38();
  sub_24F92D108();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_24F009D8C();
    sub_24F92CC68();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_24F009D38()
{
  result = qword_27F236F50;
  if (!qword_27F236F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F50);
  }

  return result;
}

unint64_t sub_24F009D8C()
{
  result = qword_27F236F58;
  if (!qword_27F236F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F58);
  }

  return result;
}

unint64_t sub_24F009E04()
{
  result = qword_27F236F60;
  if (!qword_27F236F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F60);
  }

  return result;
}

unint64_t sub_24F009E5C()
{
  result = qword_27F236F68;
  if (!qword_27F236F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F68);
  }

  return result;
}

unint64_t sub_24F009EB4()
{
  result = qword_27F236F70;
  if (!qword_27F236F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F70);
  }

  return result;
}

unint64_t sub_24F009F0C()
{
  result = qword_27F236F78;
  if (!qword_27F236F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F78);
  }

  return result;
}

unint64_t sub_24F009F60()
{
  result = qword_27F236F80;
  if (!qword_27F236F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F80);
  }

  return result;
}

unint64_t sub_24F009FB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

__n128 ActionIntent.init(url:isIncomingURL:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  strcpy(a4, "ActionIntent");
  *(a4 + 13) = 0;
  *(a4 + 14) = -5120;
  v10 = type metadata accessor for ActionIntent(0);
  v11 = v10[5];
  v12 = sub_24F91F4A8();
  v15 = *(a3 + 16);
  v16 = *a3;
  (*(*(v12 - 8) + 32))(a4 + v11, a1, v12);
  *(a4 + v10[6]) = a2;
  v13 = a4 + v10[7];
  result = v16;
  *v13 = v16;
  *(v13 + 16) = v15;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  return result;
}

uint64_t type metadata accessor for ActionIntent(uint64_t a1)
{
  result = qword_27F236F98;
  if (!qword_27F236F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionWrapper.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Action(0);
  v7 = static Action.makeInstance(byDeserializing:using:)(a1, a2);
  if (v3)
  {
    v8 = sub_24F9285B8();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_24F928388();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_24F9285B8();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_24F928388();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

uint64_t sub_24F00A28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Action(0);
  v7 = static Action.makeInstance(byDeserializing:using:)(a1, a2);
  if (v3)
  {
    v8 = sub_24F9285B8();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_24F928388();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_24F9285B8();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_24F928388();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

uint64_t ActionIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActionIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionIntent(0) + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double ActionIntent.referrerData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionIntent(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  return sub_24EA145F0(v4, v5, v6, v7, v8, v9);
}

JSValue __swiftcall ActionIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_10;
  }

  isa = result.super.isa;
  v7 = type metadata accessor for ActionIntent(0);
  v8 = isa;
  sub_24F91F398();
  v9 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24F92C328();
  v10 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_24F92C328();
  if (*(v2 + *(v7 + 28) + 8) == 1)
  {
    v11 = in.super.isa;
    v12 = 0;
  }

  else
  {
    v15 = sub_24EDC3010();
    v13 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    v12 = sub_24F92CDE8();
    sub_24F00A764(&v15);
  }

  v14 = [v4 valueWithObject:v12 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_24F92C328();

    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24F00A764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F00A834(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActionIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F00A87C()
{
  result = qword_27F236F90;
  if (!qword_27F236F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F90);
  }

  return result;
}

uint64_t sub_24F00A8F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F00A9B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t WordmarkView.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

char *WordmarkView.__allocating_init(frame:wordmark:referenceLineHeight:alignment:)(_BYTE *a1, void *a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v15 = a2[3];
  v16 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v18 = sub_24F00C488(a1, v17, a3, a4, a5, a6, a7, v7, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v18;
}

char *WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)(_BYTE *a1, void *a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v15 = a2[3];
  v16 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_24F00C1B4(a1, v20, a3, v7, v15, v16, a4, a5, a6, a7);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v22;
}

id WordmarkView.show(wordmark:with:)(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView];
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27F22B5B8;
  v6 = sub_24F92B098();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:a2];

  [v4 setImage_];
  return [v2 setNeedsLayout];
}

id WordmarkView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *WordmarkView.init(frame:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4 = sub_24F00BF0C(1, 0, a1.n128_f64[0], a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

id WordmarkView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void WordmarkView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  sub_24F92CA88();
  __break(1u);
}

uint64_t WordmarkView.referenceLineHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  return sub_24E615E00(v1 + v3, a1);
}

uint64_t sub_24F00B0AC(uint64_t a1, char **a2)
{
  sub_24E615E00(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v3[v4], v6);
  swift_endAccess();
  [v3 setNeedsLayout];
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t WordmarkView.referenceLineHeight.setter(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v1[v3], a1);
  swift_endAccess();
  [v1 setNeedsLayout];
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id (*WordmarkView.referenceLineHeight.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F00B204;
}

void WordmarkView.alignment.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

id WordmarkView.alignment.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  v1[v3] = v2;
  return [v1 setNeedsLayout];
}

id (*WordmarkView.alignment.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F00C788;
}

BOOL WordmarkView.hasContent.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView) image];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Void __swiftcall WordmarkView.layoutSubviews()()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView];
  v2 = [v1 image];
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  v16 = v0[v3];
  [v0 frame];
  [v0 layoutMargins];
  sub_24F92C1C8();
  sub_24F00B4E0(v2, &v16, v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v1 setFrame_];
}

void sub_24F00B4E0(uint64_t a1, unsigned __int8 *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(sub_24F922348() - 8);
  *&v20 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  if (v18)
  {
    v31 = v19;
    [v18 size];
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v30 = v13;
    v24 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
    swift_beginAccess();
    sub_24E615E00(v6 + v24, v32);
    v25 = v33;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    sub_24E8ED7D8(v25);
    sub_24F9223A8();
    (*(v14 + 8))(v16, v30);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_24F9222F8();
    (*(v17 + 8))(v22, v31);
  }

  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  if (v23 <= 1)
  {
    if (v23)
    {
      CGRectGetMidX(*&v26);
    }

    else
    {
      CGRectGetMinX(*&v26);
    }

    goto LABEL_13;
  }

  if (v23 == 2)
  {
    CGRectGetMaxX(*&v26);
LABEL_13:
    v35.origin.x = a3;
    v35.origin.y = a4;
    v35.size.width = a5;
    v35.size.height = a6;
    CGRectGetMinY(v35);
    sub_24F92C1D8();
    return;
  }

  if (v23 == 3)
  {
    CGRectGetMinX(*&v26);
  }

  else
  {
    CGRectGetMaxX(*&v26);
  }

  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetMinY(v34);
}

CGSize __swiftcall WordmarkView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922348();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v1 + OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView) image];
  if (v13)
  {
    v24 = v4;
    v14 = v13;
    [v13 size];
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v15 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
    swift_beginAccess();
    sub_24E615E00(v1 + v15, v25);
    v16 = v26;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_24E8ED7D8(v16);
    v17 = sub_24F9223A8();
    (*(v5 + 8))(v7, v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_24F9222F8();
    v19 = v18;

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v19 = 0.0;
    v17 = 0.0;
  }

  if (v19 <= width)
  {
    v20 = v19;
  }

  else
  {
    v20 = width;
  }

  if (v17 <= height)
  {
    v21 = v17;
  }

  else
  {
    v21 = height;
  }

  result.height = v21;
  result.width = v20;
  return result;
}

double WordmarkView.intrinsicContentSize.getter()
{
  v1 = sub_24F92CDB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F922348();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView) image];
  if (!v10)
  {
    return 0.0;
  }

  v18 = v1;
  v11 = v10;
  [v10 size];
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v12 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  sub_24E615E00(v0 + v12, v19);
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_24E8ED7D8(v13);
  sub_24F9223A8();
  (*(v2 + 8))(v4, v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_24F9222F8();
  v15 = v14;

  (*(v6 + 8))(v9, v5);
  return v15;
}

uint64_t WordmarkView.updateAlignment(toMatch:)(uint64_t result)
{
  if (result <= 1)
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
      swift_beginAccess();
      v1[v3] = 1;
      return [v1 setNeedsLayout];
    }

    v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
    swift_beginAccess();
    v5 = 3;
    goto LABEL_11;
  }

  if (result == 2)
  {
    v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
    swift_beginAccess();
    v5 = 4;
LABEL_11:
    v1[v4] = v5;
    return [v1 setNeedsLayout];
  }

  if (result == 3 || result == 4)
  {
    v2 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
    swift_beginAccess();
    v1[v2] = 0;
    return [v1 setNeedsLayout];
  }

  return result;
}

id WordmarkView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_24F00BF0C(char a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = type metadata accessor for WordmarkView();
  v15 = objc_allocWithZone(v14);
  v32[3] = MEMORY[0x277D839F8];
  v32[4] = MEMORY[0x277D22A30];
  *v32 = a7;
  v16 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  *&v15[v16] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  sub_24E615E00(v32, &v15[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight]);
  v15[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment] = a2;
  v31.receiver = v15;
  v31.super_class = v14;
  v17 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a3, a4, a5, a6);
  v18 = *MEMORY[0x277D768C8];
  v19 = *(MEMORY[0x277D768C8] + 8);
  v20 = *(MEMORY[0x277D768C8] + 16);
  v21 = *(MEMORY[0x277D768C8] + 24);
  v22 = v17;
  [v22 setLayoutMargins_];
  v23 = [objc_opt_self() labelColor];
  [v22 setTintColor_];

  v24 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  [v22 addSubview_];
  if ((a1 & 1) == 0)
  {
    v25 = [v22 traitCollection];
    v26 = *&v22[v24];
    if (qword_27F2103D8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v27 = qword_27F22B5B8;
    v28 = sub_24F92B098();
    v29 = [objc_opt_self() imageNamed:v28 inBundle:v27 compatibleWithTraitCollection:v25];

    [v26 setImage_];
    [v22 setNeedsLayout];
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v22;
}

char *sub_24F00C1B4(_BYTE *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  ObjectType = swift_getObjectType();
  v38[3] = a5;
  v38[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  LOBYTE(a5) = *a1;
  LOBYTE(a6) = *a3;
  v22 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  *&a4[v22] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  sub_24E615E00(v38, &a4[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight]);
  a4[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment] = a6;
  v37.receiver = a4;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a7, a8, a9, a10);
  v24 = *MEMORY[0x277D768C8];
  v25 = *(MEMORY[0x277D768C8] + 8);
  v26 = *(MEMORY[0x277D768C8] + 16);
  v27 = *(MEMORY[0x277D768C8] + 24);
  v28 = v23;
  [v28 setLayoutMargins_];
  v29 = [objc_opt_self() labelColor];
  [v28 setTintColor_];

  v30 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  [v28 addSubview_];
  if ((a5 & 1) == 0)
  {
    v31 = [v28 traitCollection];
    v32 = *&v28[v30];
    if (qword_27F2103D8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = qword_27F22B5B8;
    v34 = sub_24F92B098();
    v35 = [objc_opt_self() imageNamed:v34 inBundle:v33 compatibleWithTraitCollection:v31];

    [v32 setImage_];
    [v28 setNeedsLayout];
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v28;
}

char *sub_24F00C488(_BYTE *a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_allocWithZone(v22);
  (*(v19 + 16))(v21, a2, a9);
  return sub_24F00C1B4(a1, v21, a3, v23, a9, a10, a4, a5, a6, a7);
}

unint64_t sub_24F00C5B8()
{
  result = qword_27F236FC0;
  if (!qword_27F236FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236FC0);
  }

  return result;
}

uint64_t sub_24F00C60C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  return sub_24E615E00(v3 + v4, a2);
}

void sub_24F00C66C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_24F00C6C4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsLayout];
}

GameStoreKit::RoundedButtonType_optional __swiftcall RoundedButtonType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t RoundedButtonType.rawValue.getter()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x6572616873;
  }
}

uint64_t sub_24F00C828(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6572616873;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6572616873;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F00C8CC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F00C94C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F00C9B8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F00CA34@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24F00CA94(uint64_t *a1@<X8>)
{
  v2 = 0x6572616873;
  if (*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t RoundedButton.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *RoundedButton.buttonColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *RoundedButton.textColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t RoundedButton.__allocating_init(id:type:hasDivider:title:action:buttonColor:textColor:)(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a4;
  v31 = a6;
  v29 = a3;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v18 = *a2;
  sub_24E65E064(a1, &v34);
  if (*(&v35 + 1))
  {
    v19 = v35;
    *(v17 + 64) = v34;
    *(v17 + 80) = v19;
    *(v17 + 96) = v36;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v28 = a5;
    v21 = a7;
    v22 = a8;
    v24 = v23;
    (*(v14 + 8))(v16, v13);
    v32 = v20;
    v33 = v24;
    a8 = v22;
    a7 = v21;
    a5 = v28;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v34);
  }

  sub_24E9BBAA8(a1);
  *(v17 + 17) = v18;
  *(v17 + 16) = v29 & 1;
  v25 = v30;
  *(v17 + 24) = v31;
  *(v17 + 32) = v25;
  *(v17 + 40) = a5;
  *(v17 + 48) = a7;
  *(v17 + 56) = a8;
  return v17;
}

uint64_t RoundedButton.init(id:type:hasDivider:title:action:buttonColor:textColor:)(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v33 = a4;
  v32 = a3;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  sub_24E65E064(a1, &v36);
  if (*(&v37 + 1))
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v30 = a2;
    a2 = v20;
    v31 = a6;
    v21 = a5;
    v22 = a7;
    v23 = a8;
    v25 = v24;
    (*(v16 + 8))(v18, v15);
    v34 = a2;
    v35 = v25;
    LOBYTE(a2) = v30;
    a8 = v23;
    a7 = v22;
    a5 = v21;
    a6 = v31;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v36);
  }

  sub_24E9BBAA8(a1);
  v26 = v40;
  *(v9 + 64) = v39;
  *(v9 + 80) = v26;
  *(v9 + 96) = v41;
  *(v9 + 17) = a2;
  *(v9 + 16) = v32 & 1;
  v27 = v33;
  *(v9 + 24) = a6;
  *(v9 + 32) = v27;
  *(v9 + 40) = a5;
  *(v9 + 48) = a7;
  *(v9 + 56) = a8;
  return v9;
}

uint64_t RoundedButton.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RoundedButton.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *RoundedButton.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v52 = *v3;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v52 - v13;
  MEMORY[0x28223BE20](v14);
  v55 = &v52 - v15;
  MEMORY[0x28223BE20](v16);
  v56 = &v52 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  v57 = a1;
  sub_24F928398();
  v24 = sub_24F928348();
  if (v25)
  {
    v59 = v24;
    v60 = v25;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v6;
    v29 = v28;
    (*(v27 + 8))(v8, v5);
    v59 = v26;
    v60 = v29;
  }

  sub_24F92C7F8();
  v30 = *(v10 + 8);
  v30(v23, v9);
  v31 = v62;
  *(v3 + 4) = v61;
  *(v3 + 5) = v31;
  v3[12] = v63;
  v32 = v57;
  sub_24F928398();
  sub_24F00D67C();
  v33 = v58;
  sub_24F928218();
  if (v33)
  {
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v64, v34);
    v30(v32, v9);
    v30(v20, v9);
  }

  else
  {
    v58 = v10 + 8;
    v30(v20, v9);
    *(v3 + 17) = v61;
    type metadata accessor for Action(0);
    v35 = v56;
    sub_24F928398();
    v37 = static Action.makeInstance(byDeserializing:using:)(v35, v64);
    v30(v35, v9);
    v3[3] = v37;
    v38 = v55;
    sub_24F928398();
    v39 = sub_24F928348();
    v40 = v32;
    v42 = v41;
    v30(v38, v9);
    if (v42)
    {
      v3[4] = v39;
      v3[5] = v42;
      v43 = v53;
      sub_24F928398();
      v44 = JSONObject.appStoreColor.getter();
      v30(v43, v9);
      v3[6] = v44;
      sub_24F928398();
      v45 = JSONObject.appStoreColor.getter();
      v30(v43, v9);
      v3[7] = v45;
      v46 = v54;
      sub_24F928398();
      LOBYTE(v45) = sub_24F928278();
      v47 = sub_24F9285B8();
      (*(*(v47 - 8) + 8))(v64, v47);
      v30(v40, v9);
      v30(v46, v9);
      *(v3 + 16) = v45 & 1;
      return v3;
    }

    v48 = sub_24F92AC38();
    sub_24F00D82C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v49 = 0x656C746974;
    v50 = v52;
    v49[1] = 0xE500000000000000;
    v49[2] = v50;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    v51 = sub_24F9285B8();
    (*(*(v51 - 8) + 8))(v64, v51);
    v30(v40, v9);
  }

  sub_24E6585F8((v3 + 8));
  type metadata accessor for RoundedButton();
  swift_deallocPartialClassInstance();
  return v3;
}

unint64_t sub_24F00D67C()
{
  result = qword_27F236FC8;
  if (!qword_27F236FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236FC8);
  }

  return result;
}

uint64_t RoundedButton.deinit()
{

  sub_24E6585F8(v0 + 64);
  return v0;
}

uint64_t RoundedButton.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_24F00D790()
{
  result = qword_27F236FD0;
  if (!qword_27F236FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236FD0);
  }

  return result;
}

uint64_t sub_24F00D82C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t *sub_24F00D884@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for RoundedButton();
  v7 = swift_allocObject();
  result = RoundedButton.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t ClickableModel<>.segue.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 8))();
  v4 = result;
  if (result)
  {
    v5 = type metadata accessor for Action(0);
    result = sub_24F00D9C8();
  }

  else
  {
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = v5;
  a2[4] = result;
  return result;
}

unint64_t sub_24F00D9C8()
{
  result = qword_27F216DE8;
  if (!qword_27F216DE8)
  {
    type metadata accessor for Action(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216DE8);
  }

  return result;
}

char *BlankAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_24F91F6B8();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_24E60169C(a1, v39, &qword_27F235830, &qword_24F93B8C0);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_24E60169C(a7, &v13[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68, &unk_24F93BC80);
  v18 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v39, &v36, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a7, &qword_27F213E68, &unk_24F93BC80);
  (*(v16 + 8))(v28, v15);
  sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

uint64_t BlankAction.__allocating_init(actionMetrics:)(uint64_t a1)
{
  v2 = sub_24F91F6B8();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v12 = *(v9 + 16);
  v26 = a1;
  v12(v11, a1, v8);
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  sub_24E60169C(v33, v32, &qword_27F235830, &qword_24F93B8C0);
  v12((v14 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v11, v8);
  sub_24E60169C(v7, v14 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v15 = (v14 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = v14 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v32, &v29, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v30 + 1))
  {
    v17 = v30;
    *v16 = v29;
    *(v16 + 16) = v17;
    *(v16 + 32) = v31;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v24 + 8))(v4, v25);
    v27 = v18;
    v28 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
  }

  v21 = *(v9 + 8);
  v21(v26, v8);
  sub_24E601704(v32, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v7, &qword_27F213E68, &unk_24F93BC80);
  v21(v11, v8);
  sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  return v14;
}

void *BlankAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_24F91F6B8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_24E60169C(v20, v52, &qword_27F235830, &qword_24F93B8C0);
  (*(v17 + 16))(v19, v21, v16);
  sub_24E60169C(v22, v15, &qword_27F213E68, &unk_24F93BC80);
  v23 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E60169C(v52, &v46, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_24F91F6A8();
    v24 = v22;
    v25 = sub_24F91F668();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v22, &qword_27F213E68, &unk_24F93BC80);
  (*(v17 + 8))(v21, v16);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v52, &qword_27F235830, &qword_24F93B8C0);
  v29 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *BlankAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *BlankAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t BlankAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t BlankAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BlankAction(uint64_t a1)
{
  result = qword_27F236FE0;
  if (!qword_27F236FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F00EA68(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = 7;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 > 7)
  {
    v4 = v2;
  }

  v6 = v4 + 1;
  v7 = (&unk_2861B2B40 + 24 * v2 + 32);
  while (v2 != 7)
  {
    if (v6 == ++v2)
    {
      __break(1u);
      return result;
    }

    v8 = v7 + 3;
    v9 = *v7;
    v7 += 3;
    if ((v9 & v1) != 0)
    {
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24F457940(0, v5[2] + 1, 1);
      }

      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_24F457940((v12 > 1), v13 + 1, 1);
      }

      v5[2] = v13 + 1;
      v14 = &v5[3 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = v10;
      v4 = 7;
      goto LABEL_2;
    }
  }

  v15 = v5[2];
  if (v15)
  {
    sub_24F4578E0(0, v15, 0);
    v16 = v5 + 6;
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = *(v3 + 16);
      v20 = *(v3 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_24F4578E0((v20 > 1), v19 + 1, 1);
      }

      *(v3 + 16) = v19 + 1;
      v21 = v3 + 16 * v19;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_24F00EC48(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = 15;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 > 0xF)
  {
    v4 = v2;
  }

  v6 = v4 + 1;
  v7 = (&unk_2861B2C08 + 24 * v2 + 32);
  while (v2 != 15)
  {
    if (v6 == ++v2)
    {
      __break(1u);
      return result;
    }

    v8 = v7 + 3;
    v9 = *v7;
    v7 += 3;
    if ((v9 & v1) != 0)
    {
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24F457980(0, v5[2] + 1, 1);
      }

      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_24F457980((v12 > 1), v13 + 1, 1);
      }

      v5[2] = v13 + 1;
      v14 = &v5[3 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = v10;
      v4 = 15;
      goto LABEL_2;
    }
  }

  v15 = v5[2];
  if (v15)
  {
    sub_24F4578E0(0, v15, 0);
    v16 = v5 + 6;
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = *(v3 + 16);
      v20 = *(v3 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_24F4578E0((v20 > 1), v19 + 1, 1);
      }

      *(v3 + 16) = v19 + 1;
      v21 = v3 + 16 * v19;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t Shelf.PresentationHints.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v108 = sub_24F928388();
  v6 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v94 - v9;
  MEMORY[0x28223BE20](v10);
  v105 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v94 - v13;
  MEMORY[0x28223BE20](v15);
  v104 = &v94 - v16;
  MEMORY[0x28223BE20](v17);
  v103 = &v94 - v18;
  MEMORY[0x28223BE20](v19);
  v102 = &v94 - v20;
  MEMORY[0x28223BE20](v21);
  v101 = &v94 - v22;
  MEMORY[0x28223BE20](v23);
  v100 = &v94 - v24;
  MEMORY[0x28223BE20](v25);
  v99 = &v94 - v26;
  MEMORY[0x28223BE20](v27);
  v98 = &v94 - v28;
  MEMORY[0x28223BE20](v29);
  v97 = &v94 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v94 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v94 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v94 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v94 - v41;
  if (sub_24F928328())
  {
    v43 = sub_24F9285B8();
    (*(*(v43 - 8) + 8))(a2, v43);
    result = (*(v6 + 8))(a1, v108);
    v45 = 0;
  }

  else
  {
    v95 = a2;
    v96 = a3;
    sub_24F928398();
    v46 = sub_24F928278();
    v94 = v14;
    v47 = *(v6 + 8);
    v48 = v108;
    v47(v42, v108);
    sub_24F928398();
    v49 = sub_24F928278();
    v109 = a1;
    v47(v39, v48);
    v50 = v46 & 1 | 2;
    if ((v49 & 1) == 0)
    {
      v50 = v46 & 1;
    }

    if (v49 == 2)
    {
      v51 = v46 & 1;
    }

    else
    {
      v51 = v50;
    }

    sub_24F928398();
    v52 = sub_24F928278();
    v47(v36, v48);
    v53 = v51 | 4;
    if ((v52 & 1) == 0)
    {
      v53 = v51;
    }

    if (v52 != 2)
    {
      v51 = v53;
    }

    sub_24F928398();
    v54 = sub_24F928278();
    v47(v33, v48);
    v55 = v51 | 8;
    if ((v54 & 1) == 0)
    {
      v55 = v51;
    }

    if (v54 != 2)
    {
      v51 = v55;
    }

    v56 = v97;
    sub_24F928398();
    v57 = sub_24F928278();
    v47(v56, v48);
    v58 = v51 | 0x10;
    if ((v57 & 1) == 0)
    {
      v58 = v51;
    }

    if (v57 != 2)
    {
      v51 = v58;
    }

    v59 = v98;
    sub_24F928398();
    v60 = sub_24F928278();
    v47(v59, v48);
    v61 = v51 | 0x20;
    if ((v60 & 1) == 0)
    {
      v61 = v51;
    }

    if (v60 != 2)
    {
      v51 = v61;
    }

    v62 = v99;
    sub_24F928398();
    v63 = sub_24F928278();
    v47(v62, v48);
    v64 = v51 | 0x40;
    if ((v63 & 1) == 0)
    {
      v64 = v51;
    }

    if (v63 != 2)
    {
      v51 = v64;
    }

    v65 = v100;
    sub_24F928398();
    v66 = sub_24F928278();
    v47(v65, v48);
    v67 = v51 | 0x80;
    if ((v66 & 1) == 0)
    {
      v67 = v51;
    }

    if (v66 != 2)
    {
      v51 = v67;
    }

    v68 = v101;
    sub_24F928398();
    v69 = sub_24F928278();
    v47(v68, v48);
    v70 = v51 | 0x100;
    if ((v69 & 1) == 0)
    {
      v70 = v51;
    }

    if (v69 != 2)
    {
      v51 = v70;
    }

    v71 = v102;
    sub_24F928398();
    v72 = sub_24F928278();
    v47(v71, v48);
    v73 = v51 | 0x200;
    if ((v72 & 1) == 0)
    {
      v73 = v51;
    }

    if (v72 != 2)
    {
      v51 = v73;
    }

    v74 = v103;
    sub_24F928398();
    v75 = sub_24F928278();
    v47(v74, v48);
    v76 = v51 | 0x400;
    if ((v75 & 1) == 0)
    {
      v76 = v51;
    }

    if (v75 != 2)
    {
      v51 = v76;
    }

    v77 = v104;
    sub_24F928398();
    v78 = sub_24F928278();
    v47(v77, v48);
    v79 = v51 | 0x800;
    if ((v78 & 1) == 0)
    {
      v79 = v51;
    }

    if (v78 != 2)
    {
      v51 = v79;
    }

    v80 = v94;
    sub_24F928398();
    v81 = sub_24F928278();
    v47(v80, v48);
    v82 = v51 | 0x1000;
    if ((v81 & 1) == 0)
    {
      v82 = v51;
    }

    if (v81 != 2)
    {
      v51 = v82;
    }

    v83 = v105;
    sub_24F928398();
    v84 = sub_24F928278();
    v47(v83, v48);
    v85 = v51 | 0x2000;
    if ((v84 & 1) == 0)
    {
      v85 = v51;
    }

    if (v84 != 2)
    {
      v51 = v85;
    }

    v86 = v106;
    sub_24F928398();
    v87 = sub_24F928278();
    v47(v86, v48);
    v88 = v51 | 0x4000;
    if ((v87 & 1) == 0)
    {
      v88 = v51;
    }

    if (v87 == 2)
    {
      v45 = v51;
    }

    else
    {
      v45 = v88;
    }

    v89 = v109;
    v90 = v107;
    sub_24F928398();
    v91 = sub_24F928278();
    v47(v90, v48);
    if (v91 == 2 || (v91 & 1) == 0)
    {
      v93 = sub_24F9285B8();
      (*(*(v93 - 8) + 8))(v95, v93);
      result = (v47)(v89, v48);
    }

    else
    {
      v92 = sub_24F9285B8();
      (*(*(v92 - 8) + 8))(v95, v92);
      result = (v47)(v89, v48);
      v45 |= 0x8000uLL;
    }

    a3 = v96;
  }

  *a3 = v45;
  return result;
}

uint64_t sub_24F00F920()
{
  sub_24F00EC48(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E907170();
  v1 = sub_24F92AF68();

  return v1;
}

unint64_t sub_24F00F9AC()
{
  result = qword_27F236FF0;
  if (!qword_27F236FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236FF0);
  }

  return result;
}

unint64_t sub_24F00FA04()
{
  result = qword_27F236FF8;
  if (!qword_27F236FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236FF8);
  }

  return result;
}

unint64_t sub_24F00FA58(uint64_t a1)
{
  *(a1 + 8) = sub_24F00FA88();
  result = sub_24F00FADC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F00FA88()
{
  result = qword_27F237000;
  if (!qword_27F237000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237000);
  }

  return result;
}

unint64_t sub_24F00FADC()
{
  result = qword_27F237008;
  if (!qword_27F237008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237008);
  }

  return result;
}

unint64_t sub_24F00FB34()
{
  result = qword_27F237010;
  if (!qword_27F237010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237010);
  }

  return result;
}

unint64_t sub_24F00FB8C()
{
  result = qword_27F237018;
  if (!qword_27F237018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237018);
  }

  return result;
}

uint64_t ArcadeShowcase.__allocating_init(id:unsubscribedAction:unsubscribedDescription:subscribedAction:subscribedDescription:iconArtworks:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a2;
  v37 = a3;
  v35 = a10;
  v38 = a9;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  sub_24E60169C(a1, &v41, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v42 + 1))
  {
    v21 = v42;
    *(v20 + 80) = v41;
    *(v20 + 96) = v21;
    *(v20 + 112) = v43;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v33 = a4;
    v34 = a5;
    v23 = a6;
    v24 = a8;
    v25 = v22;
    v26 = a7;
    v28 = v27;
    (*(v17 + 8))(v19, v16);
    v39 = v25;
    v40 = v28;
    a8 = v24;
    a6 = v23;
    a7 = v26;
    a4 = v33;
    a5 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v35, v20 + OBJC_IVAR____TtC12GameStoreKit14ArcadeShowcase_impressionMetrics);
  v29 = v37;
  *(v20 + 16) = v36;
  *(v20 + 24) = v29;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v30 = v38;
  *(v20 + 64) = a8;
  *(v20 + 72) = v30;
  return v20;
}

uint64_t ArcadeShowcase.init(id:unsubscribedAction:unsubscribedDescription:subscribedAction:subscribedDescription:iconArtworks:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v37 = a2;
  v38 = a3;
  v36 = a10;
  v39 = a9;
  v18 = sub_24F91F6B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v42, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v34 = a4;
    v35 = a5;
    v23 = a6;
    v24 = a8;
    v25 = v22;
    v26 = a7;
    v28 = v27;
    (*(v19 + 8))(v21, v18);
    v40 = v25;
    v41 = v28;
    a8 = v24;
    a6 = v23;
    a7 = v26;
    a4 = v34;
    a5 = v35;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v29 = v46;
  *(v11 + 80) = v45;
  *(v11 + 96) = v29;
  *(v11 + 112) = v47;
  sub_24E65E0D4(v36, v11 + OBJC_IVAR____TtC12GameStoreKit14ArcadeShowcase_impressionMetrics);
  v30 = v38;
  *(v11 + 16) = v37;
  *(v11 + 24) = v30;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  v31 = v39;
  *(v11 + 64) = a8;
  *(v11 + 72) = v31;
  return v11;
}

uint64_t sub_24F01000C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24F011270(&qword_27F225B18, type metadata accessor for ImpressionableArtwork, &protocol conformance descriptor for ImpressionableArtwork);
  return sub_24F929548();
}

uint64_t ArcadeShowcase.unsubscribedDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ArcadeShowcase.subscribedDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *sub_24F0102AC()
{
  result = *(v0 + 64);
  if (result)
  {
    return sub_24E8E8794(result);
  }

  return result;
}

uint64_t ArcadeShowcase.deinit()
{

  sub_24E6585F8(v0 + 80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14ArcadeShowcase_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t ArcadeShowcase.__deallocating_deinit()
{
  ArcadeShowcase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0103A4@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F010430(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

void *sub_24F0103D0()
{
  result = *(*v0 + 64);
  if (result)
  {
    return sub_24E8E8794(result);
  }

  return result;
}

uint64_t sub_24F010430(char *a1, uint64_t a2)
{
  v109 = a2;
  v90 = sub_24F91F6B8();
  v98 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = v88 - v5;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v116 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v88 - v10;
  v12 = sub_24F928388();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v97 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = v88 - v15;
  MEMORY[0x28223BE20](v16);
  v95 = v88 - v17;
  MEMORY[0x28223BE20](v18);
  v91 = v88 - v19;
  MEMORY[0x28223BE20](v20);
  v100 = v88 - v21;
  MEMORY[0x28223BE20](v22);
  v101 = v88 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v88 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v27 - 8);
  v99 = v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v88 - v30;
  sub_24F929608();
  sub_24F928398();
  v106 = v7;
  v32 = v7 + 16;
  v33 = *(v7 + 16);
  v34 = v11;
  v35 = v11;
  v36 = v109;
  v33(v35, v109, v6);
  v107 = v31;
  v92 = v26;
  v94 = v34;
  sub_24F929548();
  v37 = v116;
  v108 = v6;
  v33(v116, v36, v6);
  type metadata accessor for Action(0);
  v38 = v101;
  v104 = a1;
  sub_24F928398();
  v39 = v38;
  v40 = v105;
  v41 = static Action.makeInstance(byDeserializing:using:)(v38, v37);
  if (v40)
  {
    v42 = *(v106 + 8);
    v43 = v108;
    v42(v109, v108);
    v44 = v103;
    v45 = *(v102 + 8);
    v45(v104, v103);
    v45(v39, v44);
    v46 = v116;
    sub_24E601704(v107, &qword_27F213E68, &unk_24F93BC80);
    v42(v46, v43);
  }

  else
  {
    v88[0] = v33;
    v88[1] = v32;
    v105 = v41;
    v47 = *(v102 + 8);
    v48 = v103;
    v47(v38, v103);
    v49 = v100;
    v50 = v104;
    sub_24F928398();
    v51 = v116;
    v101 = static Action.makeInstance(byDeserializing:using:)(v49, v116);
    v102 = 0;
    v47(v100, v48);
    v53 = v91;
    sub_24F928398();
    v54 = v93;
    sub_24F9282B8();
    v47(v53, v48);
    v55 = sub_24F92AC28();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 48))(v54, 1, v55);
    if (v57 == 1)
    {
      sub_24E601704(v54, &qword_27F2213B0, &qword_24F965EC0);
      v100 = 0;
    }

    else
    {
      MEMORY[0x28223BE20](v57);
      v88[-2] = v116;
      type metadata accessor for ImpressionableArtwork(0);
      v58 = v102;
      v100 = sub_24F92ABB8();
      v102 = v58;
      v51 = v116;
      (*(v56 + 8))(v54, v55);
    }

    v59 = v98;
    type metadata accessor for OfferDisplayProperties();
    sub_24F928398();
    (v88[0])(v94, v51, v108);
    sub_24F011270(&qword_27F225B10, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_24F929548();
    v104 = v115[0];
    v60 = v95;
    sub_24F928398();
    v61 = sub_24F928348();
    if (v62)
    {
      *&v112 = v61;
      *(&v112 + 1) = v62;
      sub_24F92C7F8();
      v47(v60, v48);
      v63 = v47;
    }

    else
    {
      v63 = v47;
      v64 = v89;
      sub_24F91F6A8();
      v65 = sub_24F91F668();
      v67 = v66;
      (*(v59 + 8))(v64, v90);
      *&v112 = v65;
      *(&v112 + 1) = v67;
      sub_24F92C7F8();
      v63(v60, v48);
    }

    v68 = v97;
    v69 = v96;
    sub_24F928398();
    v103 = sub_24F928348();
    v97 = v70;
    v63(v69, v48);
    v71 = v50;
    sub_24F928398();
    v96 = sub_24F928348();
    v95 = v72;
    v73 = v48;
    v63(v68, v48);
    sub_24E60169C(v107, v99, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for ArcadeShowcase(0);
    v39 = swift_allocObject();
    sub_24E60169C(v115, &v112, &qword_27F235830, &qword_24F93B8C0);
    v74 = v109;
    v75 = v106;
    if (*(&v113 + 1))
    {
      v76 = v113;
      *(v39 + 80) = v112;
      *(v39 + 96) = v76;
      *(v39 + 112) = v114;
    }

    else
    {
      v77 = v89;
      sub_24F91F6A8();
      v78 = sub_24F91F668();
      v80 = v79;
      (*(v98 + 8))(v77, v90);
      v110 = v78;
      v111 = v80;
      v75 = v106;
      v74 = v109;
      sub_24F92C7F8();
      sub_24E601704(&v112, &qword_27F235830, &qword_24F93B8C0);
    }

    v81 = *(v75 + 8);
    v82 = v74;
    v83 = v108;
    v81(v82, v108);
    v63(v71, v73);
    sub_24E601704(v115, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v107, &qword_27F213E68, &unk_24F93BC80);
    sub_24E65E0D4(v99, v39 + OBJC_IVAR____TtC12GameStoreKit14ArcadeShowcase_impressionMetrics);
    v84 = v103;
    *(v39 + 16) = v105;
    *(v39 + 24) = v84;
    v85 = v101;
    *(v39 + 32) = v97;
    *(v39 + 40) = v85;
    v86 = v95;
    *(v39 + 48) = v96;
    *(v39 + 56) = v86;
    v87 = v104;
    *(v39 + 64) = v100;
    *(v39 + 72) = v87;
    v81(v116, v83);
  }

  return v39;
}

uint64_t type metadata accessor for ArcadeShowcase(uint64_t a1)
{
  result = qword_27F237028;
  if (!qword_27F237028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0110B0(uint64_t a1)
{
  result = sub_24F011270(&qword_27F232B20, type metadata accessor for ArcadeShowcase, &protocol conformance descriptor for ArcadeShowcase);
  *(a1 + 8) = result;
  return result;
}

void sub_24F011110(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F011270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E615E00(a1, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226850, &unk_24F97B6C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_24E601704(&v39, &qword_27F226858, &qword_24F9BDEE0);
    return (*(a4 + 40))(0, a3, a4);
  }

  sub_24E612C80(&v39, v42);
  sub_24E615E00(a1, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237038, &qword_24F9BDEE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_24E601704(v37, &qword_27F237040, &unk_24F9BDEF0);
    goto LABEL_12;
  }

  v32 = a2;
  sub_24E612C80(v37, &v39);
  v8 = *(&v40 + 1);
  v9 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  if (!*(v10 + 16) || (sub_24F92D068(), sub_24F92B218(), v11 = sub_24F92D0B8(), v12 = -1 << *(v10 + 32), v13 = v11 & ~v12, ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
  {
LABEL_9:

    __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v42);
    return (*(a4 + 40))(0, a3, a4);
  }

  v14 = ~v12;
  while (*(*(v10 + 48) + v13) != 1)
  {
    v15 = sub_24F92CE08();

    if (v15)
    {
      goto LABEL_16;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_16:
  v17 = v32;

  v18 = (*(a4 + 32))(a3, a4);
  if (v18)
  {
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = (*(a4 + 56))(a3, a4);
    (*(a4 + 64))(&v34, a3, a4);
    v37[0] = v34;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = (*(AssociatedConformanceWitness + 8))(v20, v37, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(a4 + 40))(v22, a3, a4);
  }

  type metadata accessor for GameCenter();
  sub_24F928FD8();
  sub_24F92A758();
  v23 = v34;
  v33 = v34;
  v24 = v43;
  v25 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v25 + 8))(v37, v24, v25);
  v26 = v37[0];
  v27 = sub_24E74EC40();
  v28 = sub_24F92BEF8();
  v35 = v27;
  v36 = MEMORY[0x277D225C0];
  *&v34 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C38, &unk_24F9AAD80);
  sub_24F92A9E8();
  sub_24F0122E4(v26, *(&v26 + 1), v28, *(v23 + OBJC_IVAR____TtC12GameStoreKit10GameCenter_cache));
  swift_retain_n();
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(&v34);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = a3;
  v30[3] = a4;
  v30[4] = v17;
  v30[5] = v29;

  v31 = sub_24F92BEF8();
  v35 = v27;
  v36 = MEMORY[0x277D225C0];
  *&v34 = v31;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(&v34);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

double sub_24F011894(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  type metadata accessor for ArtworkLoader();
  sub_24F928FD8();
  sub_24F92A758();
  v24 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_23:
    v6 = sub_24F92C738();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x253052270](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v9 = *(v5 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    swift_beginAccess();
    v11 = *(v9 + 72);

    ++v7;
    if (v11)
    {
      MEMORY[0x253050F00](v12);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v8 = v24;
      v7 = v10;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*(a5 + 32))(a4);

    if (v15)
    {
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v17 = *(AssociatedConformanceWitness + 16);
      v18 = swift_checkMetadataState();
      v17(v8, v25, v18, AssociatedConformanceWitness);
    }
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    (*(*(a5 + 8) + 24))(a4);
  }

  return result;
}

uint64_t sub_24F011B6C(uint64_t a1)
{
  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();
}

Swift::Void __swiftcall AvatarShowcaseDisplaying.unapply()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 32))();
  if (v4)
  {
    v5 = v4;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 24);
    v8 = swift_checkMetadataState();
    v7(v8, AssociatedConformanceWitness);
  }

  v9 = *(v2 + 40);

  v9(0, v3, v2);
}

Swift::Void __swiftcall AvatarShowcaseDisplaying.placeAvatarShowcase()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v1 + 32);
  v7 = v6();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  [v7 measurementsWithFitting:v3 in:{1.79769313e308, 1.79769313e308}];
  v10 = v9;
  v12 = v11;

  (*(v4 + 80))(v5, v4);
  (*(v4 + 72))(v5, v4);
  sub_24F92C1C8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = (*(v4 + 96))(v5, v4);
  v22 = [v3 traitCollection];
  v23 = sub_24F92BF88();

  if (v23)
  {
    if (v21 <= 3)
    {
      if (v21 != 1)
      {
        if (v21 != 2)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }

      goto LABEL_10;
    }

    if (v21 != 4)
    {
      if (v21 != 8)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v21 > 3)
  {
    if (v21 == 4)
    {
LABEL_21:
      v34.origin.x = v14;
      v34.origin.y = v16;
      v34.size.width = v18;
      v34.size.height = v20;
      MinX = CGRectGetMinX(v34);
      goto LABEL_22;
    }

    if (v21 == 8)
    {
LABEL_16:
      v31.origin.x = v14;
      v31.origin.y = v16;
      v31.size.width = v18;
      v31.size.height = v20;
      MinX = CGRectGetMaxX(v31) - v10;
LABEL_22:
      v35.origin.x = v14;
      v35.origin.y = v16;
      v35.size.width = v18;
      v35.size.height = v20;
      MinY = CGRectGetMaxY(v35) - v12;
      goto LABEL_23;
    }
  }

  else
  {
    if (v21 == 1)
    {
LABEL_19:
      v32.origin.x = v14;
      v32.origin.y = v16;
      v32.size.width = v18;
      v32.size.height = v20;
      MinX = CGRectGetMinX(v32);
      goto LABEL_20;
    }

    if (v21 == 2)
    {
LABEL_10:
      v30.origin.x = v14;
      v30.origin.y = v16;
      v30.size.width = v18;
      v30.size.height = v20;
      MinX = CGRectGetMaxX(v30) - v10;
LABEL_20:
      v33.origin.x = v14;
      v33.origin.y = v16;
      v33.size.width = v18;
      v33.size.height = v20;
      MinY = CGRectGetMinY(v33);
LABEL_23:
      v27 = (v6)(v5, v4);
      if (!v27)
      {
        return;
      }

      v28 = v27;
      [v27 setFrame_];
      goto LABEL_25;
    }
  }

LABEL_17:
  v25 = (v6)(v5, v4);
  if (!v25)
  {
    return;
  }

  v28 = v25;
  [v25 setHidden_];
LABEL_25:
}

uint64_t sub_24F012130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v15[3] = sub_24F9298F8();
  v15[4] = MEMORY[0x277D22078];
  v15[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C38, &unk_24F9AAD80);

  v9 = sub_24F92A9E8();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = v9;
  v11[6] = v8;
  sub_24E615E00(v15, v14);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = sub_24F012698;
  v12[4] = v11;
  sub_24E612C80(v14, (v12 + 5));
  v12[10] = v8;

  sub_24EEABF30(a3, sub_24F0126A0, v12);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v9;
}

uint64_t sub_24F0122E4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = *a4;
  v16[3] = sub_24E74EC40();
  v16[4] = MEMORY[0x277D225C0];
  v16[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C38, &unk_24F9AAD80);
  v9 = a3;
  v10 = sub_24F92A9E8();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v10;
  v12[6] = v8;
  sub_24E615E00(v16, v15);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = sub_24F01275C;
  v13[4] = v12;
  sub_24E612C80(v15, (v13 + 5));
  v13[10] = v8;

  sub_24EEACD50(v9, sub_24F012764, v13);

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v10;
}

uint64_t sub_24F01249C()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F0124D4()
{

  return swift_deallocObject();
}

uint64_t sub_24F01265C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm_3()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocObject();
}

uint64_t FramedVideo.__allocating_init(id:video:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v26 = a7;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_video) = a2;
  if (a2)
  {
  }

  else
  {
    v16 = 0;
  }

  *(v15 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_artwork) = v16;
  sub_24E60169C(a1, v36, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(a8, v15 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v17 = v15 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  sub_24E60169C(v36, &v33, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v34 + 1))
  {
    v18 = v34;
    *v17 = v33;
    *(v17 + 16) = v18;
    *(v17 + 32) = v35;
  }

  else
  {

    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v12 + 8))(v14, v11);
    v31 = v19;
    v32 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a8, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v36, &qword_27F235830, &qword_24F93B8C0);
  *(v15 + 17) = v27 & 1;
  *(v15 + 16) = v28 & 1;
  v22 = v30;
  *(v15 + 24) = v29;
  *(v15 + 32) = v22;
  v23 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v24 = sub_24F91F008();
  (*(*(v24 - 8) + 56))(v15 + v23, 1, 1, v24);
  return v15;
}

uint64_t FramedVideo.init(id:video:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v31 = a7;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v30 - v18;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_video) = a2;
  if (a2)
  {
  }

  else
  {
    v20 = 0;
  }

  *(v9 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_artwork) = v20;
  sub_24E60169C(a1, v44, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(a8, v19, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v44, &v38, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {

    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v14 + 8))(v16, v13);
    v36 = v21;
    v37 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a8, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v44, &qword_27F235830, &qword_24F93B8C0);
  v24 = v9 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  *(v24 + 32) = v43;
  v25 = v42;
  *v24 = v41;
  *(v24 + 16) = v25;
  sub_24E65E0D4(v19, v9 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics);
  *(v9 + 17) = v32 & 1;
  *(v9 + 16) = v33 & 1;
  v26 = v35;
  *(v9 + 24) = v34;
  *(v9 + 32) = v26;
  v27 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v28 = sub_24F91F008();
  (*(*(v28 - 8) + 56))(v9 + v27, 1, 1, v28);
  return v9;
}

uint64_t FramedVideo.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v28 = sub_24F928388();
  v10 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  type metadata accessor for Video(0);
  v34 = a1;
  sub_24F928398();
  v31 = v5;
  v32 = v4;
  v14 = *(v5 + 16);
  v33 = a2;
  v27 = v14;
  v14(v9, a2, v4);
  sub_24F0130BC();
  sub_24F929548();
  v15 = v29;
  v16 = v35;
  *(v29 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_video) = v35;
  if (v16)
  {
  }

  else
  {
    v17 = 0;
  }

  *(v15 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_artwork) = v17;
  v18 = v34;
  v19 = v28;
  (*(v10 + 16))(v12, v34, v28);
  v20 = v30;
  v21 = v32;
  v22 = v33;
  v23.n128_f64[0] = v27(v30, v33, v32);
  v24 = FramedMedia.init(deserializing:using:)(v12, v20, v23);
  (*(v31 + 8))(v22, v21);
  (*(v10 + 8))(v18, v19);
  return v24;
}

unint64_t sub_24F0130BC()
{
  result = qword_27F221590;
  if (!qword_27F221590)
  {
    type metadata accessor for Video(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221590);
  }

  return result;
}

double sub_24F013164()
{

  return result;
}

uint64_t FramedVideo.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340, &qword_24F943530);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t FramedVideo.__deallocating_deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340, &qword_24F943530);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FramedVideo(uint64_t a1)
{
  result = qword_27F237048;
  if (!qword_27F237048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Paragraph.collapsedText.getter()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = v0;
    v4 = sub_24EFED3B0();
    v5 = *(v0 + 40);
    *(v3 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id Paragraph.text.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    v4 = sub_24EFED3B0();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t Paragraph.__allocating_init(id:text:wantsCollapsedNewlines:alignment:style:isCollapsed:suppressVerticalMargins:impressionMetrics:)(void *a1, void *a2, char a3, unsigned __int8 *a4, char *a5, int a6, int a7, uint64_t a8)
{
  v46 = a6;
  v47 = a7;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v45 = *a4;
  v19 = *a5;
  *(v18 + 24) = 0;
  *(v18 + 40) = 0;
  sub_24E60169C(a1, &v50, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v51 + 1))
  {
    v20 = v51;
    *(v18 + 56) = v50;
    *(v18 + 72) = v20;
    *(v18 + 88) = v52;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v44 = a2;
    v22 = a3;
    v23 = a8;
    v24 = a1;
    v25 = v19;
    v27 = v26;
    (*(v15 + 8))(v17, v14);
    v48 = v21;
    v49 = v27;
    v19 = v25;
    a1 = v24;
    a8 = v23;
    a3 = v22;
    a2 = v44;
    sub_24F92C7F8();
    sub_24E601704(&v50, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E60169C(a8, v18 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  swift_beginAccess();
  v28 = byte_27F236A29;
  v29 = type metadata accessor for LanguageAwareString();
  v30 = objc_allocWithZone(v29);
  v31 = a2;
  v32 = sub_24EFF0E44(v31, 0, v28);

  *(v18 + 16) = v32;
  if (a3)
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v34 = [v33 length];
    v35 = [v33 mutableString];
    v36 = sub_24F92B098();
    v44 = a1;
    v37 = v19;
    v38 = v36;
    v39 = sub_24F92B098();
    [v35 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v34}];

    v19 = v37;
    LOBYTE(v34) = byte_27F236A29;
    v40 = objc_allocWithZone(v29);
    v41 = sub_24EFF0E44(v33, 0, v34);

    sub_24E601704(a8, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v44, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {

    sub_24E601704(a8, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v41 = v32;
  }

  *(v18 + 32) = v41;
  v42 = v46;
  *(v18 + 48) = v45;
  *(v18 + 49) = v19;
  *(v18 + 50) = v42 & 1;
  *(v18 + 51) = v47 & 1;
  return v18;
}

void sub_24F0138A8()
{
  v0 = *MEMORY[0x277D76838];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 traitCollectionWithPreferredContentSizeCategory_];

  qword_27F237058 = v3;
}

void Paragraph.Style.nqmlConfiguration.getter(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v2;
  sub_24F91F758();
  sub_24F91F708();
  v9 = sub_24F92B358();

  if (v9 & 1) != 0 || (sub_24F91F708(), v10 = sub_24F92B358(), , (v10))
  {
    v11 = (*(v5 + 8))(v7, v4);
LABEL_4:
    v20[14] = v8;
    v12 = sub_24F014AAC(v11);
    goto LABEL_5;
  }

  sub_24F91F708();
  v19 = sub_24F92B358();

  v11 = (*(v5 + 8))(v7, v4);
  if (v19)
  {
    goto LABEL_4;
  }

  v20[15] = v8;
  v12 = sub_24F014B34(v11);
LABEL_5:
  v13 = v12;
  v14 = objc_opt_self();
  v15 = qword_27F210E80;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = [v14 preferredFontForTextStyle:v16 compatibleWithTraitCollection:qword_27F237058];

  *a1 = 10;
  a1[1] = 0xE100000000000000;
  a1[2] = v17;
  v18 = v17;
  a1[3] = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  a1[4] = 161644770;
  a1[5] = 0xA400000000000000;
  a1[6] = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  a1[9] = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  a1[7] = 606245;
  a1[8] = 0xE300000000000000;
}

GameStoreKit::Paragraph::Alignment_optional __swiftcall Paragraph.Alignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Paragraph.Alignment.rawValue.getter()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 0x7468676972;
  v4 = 0x656966697473756ALL;
  if (v1 != 3)
  {
    v4 = 0x657A696C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6563;
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

uint64_t sub_24F013C7C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F013D58(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F013E20()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F013F04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  v5 = 0xE500000000000000;
  v6 = 0x7468676972;
  v7 = 0x656966697473756ALL;
  if (v2 != 3)
  {
    v7 = 0x657A696C61636F6CLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE900000000000064;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

id Paragraph.Style.textStyle.getter(uint64_t a1)
{
  v1 = sub_24F014B34(a1);

  return v1;
}

id Paragraph.Style.smallerTextStyle.getter(uint64_t a1)
{
  v1 = sub_24F014AAC(a1);

  return v1;
}

GameStoreKit::Paragraph::Style_optional __swiftcall Paragraph.Style.init(rawValue:)(Swift::String rawValue)
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

uint64_t Paragraph.Style.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x656C6369747261;
    if (v1 != 1)
    {
      v5 = 0x6E6F6974706163;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x647261646E617473;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F014154(uint64_t a1)
{
  sub_24F92B218();
}

void sub_24F014288(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE800000000000000;
    v9 = 0x656C6369747261;
    if (v2 != 1)
    {
      v9 = 0x6E6F6974706163;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x647261646E617473;
    }

    if (!v10)
    {
      v8 = 0xE700000000000000;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000024FA43CA0;
    v4 = 0xD00000000000001BLL;
    if (v2 != 5)
    {
      v4 = 0xD000000000000011;
      v3 = 0x800000024FA43D70;
    }

    v5 = 0xD000000000000010;
    v6 = 0x800000024FA43D50;
    if (v2 != 3)
    {
      v5 = 0xD000000000000012;
      v6 = 0x800000024FA43BB0;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t Paragraph.init(id:text:wantsCollapsedNewlines:alignment:style:isCollapsed:suppressVerticalMargins:impressionMetrics:)(void *a1, void *a2, char a3, unsigned __int8 *a4, char *a5, int a6, int a7, uint64_t a8)
{
  v9 = v8;
  v46 = a6;
  v47 = a7;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a4;
  v20 = *a5;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  sub_24E60169C(a1, &v50, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v44 = a2;
    v22 = a3;
    v23 = a8;
    v24 = a1;
    v25 = v20;
    v27 = v26;
    (*(v17 + 8))(v19, v16);
    v48 = v21;
    v49 = v27;
    v20 = v25;
    a1 = v24;
    a8 = v23;
    a3 = v22;
    a2 = v44;
    sub_24F92C7F8();
    sub_24E601704(&v50, &qword_27F235830, &qword_24F93B8C0);
  }

  v28 = v54;
  *(v9 + 56) = v53;
  *(v9 + 72) = v28;
  *(v9 + 88) = v55;
  sub_24E60169C(a8, v9 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  swift_beginAccess();
  v29 = byte_27F236A29;
  v30 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v30);
  v31 = a2;
  v32 = sub_24EFF0E44(v31, 0, v29);

  *(v9 + 16) = v32;
  if (a3)
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v34 = [v33 length];
    v35 = [v33 mutableString];
    v36 = sub_24F92B098();
    v44 = a1;
    v37 = v20;
    v38 = v36;
    v39 = sub_24F92B098();
    [v35 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v34}];

    v20 = v37;
    LOBYTE(v34) = byte_27F236A29;
    v40 = objc_allocWithZone(v30);
    v41 = sub_24EFF0E44(v33, 0, v34);

    sub_24E601704(a8, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v44, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {

    sub_24E601704(a8, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v41 = *(v9 + 16);
  }

  *(v9 + 32) = v41;
  v42 = v46;
  *(v9 + 48) = v45;
  *(v9 + 49) = v20;
  *(v9 + 50) = v42 & 1;
  *(v9 + 51) = v47 & 1;
  return v9;
}

void Paragraph.text.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void (*Paragraph.text.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Paragraph.text.getter();
  return sub_24ED29BC4;
}

void Paragraph.collapsedText.setter(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void (*Paragraph.collapsedText.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Paragraph.collapsedText.getter();
  return sub_24ED29C8C;
}

double Paragraph.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id *Paragraph.deinit()
{
  sub_24E6585F8((v0 + 7));
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t Paragraph.__deallocating_deinit()
{
  sub_24E6585F8((v0 + 7));
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24F014A44@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24F0151C0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F014AAC(uint64_t a1)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    if (!*v1)
    {
      goto LABEL_10;
    }

    if (v2 != 1)
    {
      return sub_24F014AAC(a1);
    }

LABEL_9:
    v3 = MEMORY[0x277D76918];
    return *v3;
  }

  if (*v1 > 4u)
  {
    if (v2 != 5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v2 == 3)
  {
LABEL_10:
    v3 = MEMORY[0x277D769D0];
    return *v3;
  }

  v3 = MEMORY[0x277D76968];
  return *v3;
}

uint64_t sub_24F014B34(uint64_t a1)
{
  v2 = *v1;
  if (v2 > 2)
  {
    if (*v1 > 4u)
    {
      v3 = MEMORY[0x277D76918];
      return *v3;
    }

    if (v2 != 3)
    {
      v3 = MEMORY[0x277D76968];
      return *v3;
    }

LABEL_8:
    v3 = MEMORY[0x277D769D0];
    return *v3;
  }

  if (!*v1)
  {
    goto LABEL_8;
  }

  if (v2 != 1)
  {
    return sub_24F014B34(a1);
  }

  v3 = MEMORY[0x277D76A28];
  return *v3;
}

id _s12GameStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4, __n128 a5)
{
  v9 = sub_24F91EE98();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91EEA8();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v41 - v17;
  if (a2)
  {
    v41 = v11;
    v42 = v9;
    v19 = a1;
    v20 = *a3;
    LOBYTE(v48[0]) = *a4;
    v46 = a2;

    Paragraph.Style.nqmlConfiguration.getter(&v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
    inited = swift_initStackObject();
    v22 = MEMORY[0x277D74118];
    *(inited + 16) = xmmword_24F93DE60;
    v23 = *v22;
    *(inited + 32) = *v22;
    v24 = *(&v50 + 1);
    *(inited + 64) = sub_24E69A5C4(0, &qword_27F221898, 0x277D74248);
    *(inited + 40) = v24;
    v25 = v23;
    v26 = v24;
    sub_24E608940(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F221890, &qword_24F93AD40);
    if (v20)
    {
      if (v20 == 1)
      {

        v48[2] = v51;
        v48[3] = v52;
        v48[4] = v53;
        v48[0] = v49;
        v48[1] = v50;
        v27 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());
        sub_24E8EB83C(&v49, &v47);
        v28 = sub_24E9076BC(v19, v46, v48);
        [*&v28[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_parser] parse];
        v29 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator;
        v30 = [*&v28[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator] mutableString];
        if (qword_27F210F48 != -1)
        {
          swift_once();
        }

        sub_24F0A8300(qword_27F39DBA8);

        v31 = *&v28[v29];
        v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v33 = v31;
        v34 = [v32 initWithAttributedString_];
        sub_24E951D6C(&v49);

        return v34;
      }

      sub_24E69A5C4(0, &qword_27F223430, 0x277CCA898);
      v38 = sub_24F91F4A8();
      (*(*(v38 - 8) + 56))(v18, 1, 1, v38);
      (*(v43 + 104))(v14, *MEMORY[0x277CC8BB0], v44);
      (*(v45 + 104))(v41, *MEMORY[0x277CC8B98], v42);

      sub_24F91EEB8();
      sub_24F92BFC8();

      v34 = sub_24F92BFE8();
    }

    else
    {
      v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v39 = sub_24F92B098();

      type metadata accessor for Key(0);
      sub_24F015FD8(&qword_27F212318, type metadata accessor for Key, &unk_24F937754);
      v40 = sub_24F92AE28();

      v34 = [v37 initWithString:v39 attributes:v40];
    }

    sub_24E951D6C(&v49);
    return v34;
  }

  v35 = objc_allocWithZone(MEMORY[0x277CCA898]);

  return [v35 init];
}

uint64_t sub_24F0151C0(char *a1, uint64_t a2)
{
  v79 = a2;
  v65 = sub_24F91F6B8();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v63 - v15;
  MEMORY[0x28223BE20](v16);
  v71 = &v63 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - v22;
  sub_24F928398();
  v67 = sub_24F928348();
  v70 = v24;
  v27 = *(v12 + 8);
  v25 = v12 + 8;
  v26 = v27;
  v27(v23, v11);
  sub_24F928398();
  sub_24EA87AA4();
  sub_24F928208();
  v27(v23, v11);
  v66 = v85[0];
  sub_24F928398();
  sub_24F016020();
  sub_24F928208();
  v27(v23, v11);
  v86 = v85[0];
  sub_24F929608();
  sub_24F928398();
  (*(v76 + 16))(v80, v79, v77);
  v78 = v10;
  sub_24F929548();
  v80 = a1;
  sub_24F928398();
  v28 = sub_24F928348();
  if (v29)
  {
    *&v82 = v28;
    *(&v82 + 1) = v29;
  }

  else
  {
    v30 = v63;
    sub_24F91F6A8();
    v31 = sub_24F91F668();
    v33 = v32;
    (*(v64 + 8))(v30, v65);
    *&v82 = v31;
    *(&v82 + 1) = v33;
  }

  sub_24F92C7F8();
  v34.n128_f64[0] = v26(v20, v11);
  LOBYTE(v82) = v66;
  LOBYTE(v81[0]) = v86;
  v67 = _s12GameStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(v67, v70, &v82, v81, v34);

  v35 = v71;
  sub_24F928398();
  v36 = sub_24F928278();
  v26(v35, v11);
  v37 = (v36 == 2) | v36;
  sub_24F928398();
  sub_24F016074();
  sub_24F928208();
  v26(v23, v11);
  LODWORD(v71) = v87;
  v38 = v68;
  sub_24F928398();
  LODWORD(v70) = sub_24F928278();
  v26(v38, v11);
  v39 = v69;
  sub_24F928398();
  v40 = sub_24F928278();
  v26(v39, v11);
  v41 = v75;
  sub_24E60169C(v78, v75, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for Paragraph(0);
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 40) = 0;
  sub_24E60169C(v85, &v82, &qword_27F235830, &qword_24F93B8C0);
  v73 = v26;
  v74 = v11;
  v72 = v25;
  if (*(&v83 + 1))
  {
    v43 = v83;
    *(v42 + 56) = v82;
    *(v42 + 72) = v43;
    *(v42 + 88) = v84;
  }

  else
  {
    v44 = v63;
    sub_24F91F6A8();
    v45 = sub_24F91F668();
    v47 = v46;
    (*(v64 + 8))(v44, v65);
    v81[0] = v45;
    v81[1] = v47;
    sub_24F92C7F8();
    sub_24E601704(&v82, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E60169C(v41, v42 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  swift_beginAccess();
  v48 = byte_27F236A29;
  v49 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v49);
  v50 = v67;
  v51 = sub_24EFF0E44(v50, 0, v48);

  *(v42 + 16) = v51;
  if (v37)
  {
    v52 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v53 = [v52 length];
    v54 = v40;
    v55 = [v52 mutableString];
    v56 = sub_24F92B098();
    v57 = sub_24F92B098();
    [v55 replaceOccurrencesOfString:v56 withString:v57 options:1024 range:{0, v53}];

    v40 = v54;
    LOBYTE(v53) = byte_27F236A29;
    v58 = objc_allocWithZone(v49);
    v59 = sub_24EFF0E44(v52, 0, v53);

    (*(v76 + 8))(v79, v77);
    v73(v80, v74);
    sub_24E601704(v75, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v85, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {

    (*(v76 + 8))(v79, v77);
    v73(v80, v74);
    sub_24E601704(v41, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v85, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
    v59 = v51;
  }

  *(v42 + 32) = v59;
  v60 = v70;
  v61 = v70 == 2;
  *(v42 + 48) = v71;
  *(v42 + 49) = v86;
  *(v42 + 50) = (v61 | v60) & 1;
  *(v42 + 51) = v40 & 1;
  return v42;
}

unint64_t sub_24F015C5C()
{
  result = qword_27F237060;
  if (!qword_27F237060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237060);
  }

  return result;
}

unint64_t sub_24F015CB4()
{
  result = qword_27F237068;
  if (!qword_27F237068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237068);
  }

  return result;
}

uint64_t type metadata accessor for Paragraph(uint64_t a1)
{
  result = qword_27F237078;
  if (!qword_27F237078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24F015D9C@<X0>(void *a1@<X8>)
{
  result = Paragraph.text.getter();
  *a1 = result;
  return result;
}

void sub_24F015DC8(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
  v3 = v2;
}

id sub_24F015E10@<X0>(void *a1@<X8>)
{
  result = Paragraph.collapsedText.getter();
  *a1 = result;
  return result;
}

void sub_24F015E3C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v3 = v2;
}

void sub_24F015E8C(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F015FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F016020()
{
  result = qword_27F237088;
  if (!qword_27F237088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237088);
  }

  return result;
}

unint64_t sub_24F016074()
{
  result = qword_27F237090;
  if (!qword_27F237090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237090);
  }

  return result;
}

uint64_t sub_24F016128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2370A8, &qword_24F9BE418);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *(*(a1 + 16) + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_video);
  if (v9)
  {
    v14 = v5;

    *v8 = sub_24F924C98();
    *(v8 + 1) = 0x4028000000000000;
    v8[16] = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2370B0, &qword_24F9BE420);
    sub_24F0162CC(v9, a1, &v8[*(v10 + 44)]);

    sub_24E6009C8(v8, a2, &qword_27F2370A8, &qword_24F9BE418);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4, v6);
  }
}

uint64_t sub_24F0162CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v121 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v4 - 8);
  v118 = &v105 - v5;
  v122 = sub_24F91F008();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v106 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v105 - v8;
  v115 = sub_24F924B38();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v105 - v14;
  v16 = type metadata accessor for SwiftUIArtworkView(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD0, &qword_24F9B5A68);
  MEMORY[0x28223BE20](v107);
  v21 = &v105 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD8, &qword_24F9B5A70);
  MEMORY[0x28223BE20](v22);
  v24 = &v105 - v23;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FE0, &qword_24F9B5A78);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = &v105 - v25;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FE8, &unk_24F9B5A80);
  MEMORY[0x28223BE20](v109);
  v117 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v108 = &v105 - v28;
  MEMORY[0x28223BE20](v29);
  v123 = &v105 - v30;
  v31 = *(a1 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
  v32 = v17[8];
  v33 = *MEMORY[0x277CE1010];
  v34 = sub_24F926E68();
  (*(*(v34 - 8) + 104))(&v19[v32], v33, v34);
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *v19 = v31;
  v19[24] = 1;
  v35 = &v19[v17[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v35[16] = 1;
  v19[v17[10]] = 2;
  v19[v17[11]] = 0;

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v36 = sub_24F922348();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v15, 0, 1, v36);
  sub_24E60169C(v15, v12, &qword_27F214148, &qword_24F93C520);
  v38 = (*(v37 + 48))(v12, 1, v36);
  if (v38 == 1)
  {
    sub_24E601704(v15, &qword_27F214148, &qword_24F93C520);
    sub_24E601704(v12, &qword_27F214148, &qword_24F93C520);
    v39 = 0;
  }

  else
  {
    sub_24F9222E8();
    v39 = v40;
    sub_24E601704(v15, &qword_27F214148, &qword_24F93C520);
    (*(v37 + 8))(v12, v36);
  }

  sub_24E9D0D28(v19, v21);
  v41 = &v21[*(v107 + 36)];
  *v41 = v39;
  v41[8] = v38 == 1;
  v41[9] = 1;
  v42 = &v24[*(v22 + 36)];
  v43 = sub_24F924258();
  v44 = *MEMORY[0x277CE0118];
  v45 = v113;
  v46 = *(v113 + 104);
  v47 = v115;
  v46(&v42[*(v43 + 20)], v44, v115);
  __asm { FMOV            V0.2D, #22.0 }

  v107 = _Q0;
  *v42 = _Q0;
  *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  sub_24EF7AAD4(v21, v24);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v53 = sub_24F9248C8();
  __swift_project_value_buffer(v53, qword_27F39F078);
  sub_24EF7AB44();
  v54 = v110;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v24, &qword_27F234FD8, &qword_24F9B5A70);
  v55 = v111;
  v46(v111, v44, v47);
  v56 = v54;
  v124[3] = v43;
  v124[4] = sub_24F017064(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v124);
  (*(v45 + 16))(boxed_opaque_existential_1 + *(v43 + 20), v55, v47);
  *boxed_opaque_existential_1 = v107;
  (*(v45 + 8))(v55, v47);
  v58 = v108;
  sub_24E60169C(v124, v108, &qword_27F235000, &qword_24F9B5A90);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235008, &qword_24F9B5A98);
  v60 = v112;
  v61 = v54;
  v62 = v114;
  (*(v112 + 16))(v58 + v59[9], v61, v114);
  v63 = v58 + v59[10];
  *v63 = sub_24F923398() & 1;
  *(v63 + 8) = v64;
  *(v63 + 16) = v65 & 1;
  v66 = v58 + v59[11];
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v67 = qword_27F24E488;
  v68 = sub_24F923398();
  v70 = v69;
  v72 = v71;
  v73 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235010, &qword_24F9B5AC8) + 36);
  *v73 = v67;
  *(v73 + 8) = v68 & 1;
  *(v73 + 16) = v70;
  *(v73 + 24) = v72 & 1;
  LOBYTE(v67) = sub_24F923398();
  v75 = v74;
  LOBYTE(v70) = v76;
  sub_24E601704(v124, &qword_27F235000, &qword_24F9B5A90);
  (*(v60 + 8))(v56, v62);
  v77 = v58 + *(v109 + 36);
  *v77 = v67 & 1;
  *(v77 + 8) = v75;
  *(v77 + 16) = v70 & 1;
  sub_24E6009C8(v58, v123, &qword_27F234FE8, &unk_24F9B5A80);
  v78 = v118;
  sub_24E60169C(*(v116 + 16) + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, v118, &qword_27F215340, &qword_24F943530);
  v79 = v120;
  v80 = v122;
  if ((*(v120 + 48))(v78, 1, v122) == 1)
  {
    sub_24E601704(v78, &qword_27F215340, &qword_24F943530);
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
  }

  else
  {
    v85 = v119;
    (*(v79 + 32))(v119, v78, v80);
    (*(v79 + 16))(v106, v85, v80);
    v86 = sub_24F925DF8();
    v88 = v87;
    v90 = v89;
    sub_24F925A18();
    v91 = sub_24F925C98();
    v93 = v92;
    v95 = v94;

    sub_24E600B40(v86, v88, v90 & 1);

    sub_24F926D38();
    v81 = sub_24F925C48();
    v82 = v96;
    v98 = v97;
    v84 = v99;

    sub_24E600B40(v91, v93, v95 & 1);

    (*(v79 + 8))(v119, v122);
    v83 = v98 & 1;
    sub_24E5FD138(v81, v82, v98 & 1);
  }

  v100 = v123;
  v101 = v117;
  sub_24E60169C(v123, v117, &qword_27F234FE8, &unk_24F9B5A80);
  v102 = v121;
  sub_24E60169C(v101, v121, &qword_27F234FE8, &unk_24F9B5A80);
  v103 = (v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2370B8, &qword_24F9BE450) + 48));
  sub_24E65D2B4(v81, v82, v83, v84);
  sub_24E65D2F8(v81, v82, v83, v84);
  *v103 = v81;
  v103[1] = v82;
  v103[2] = v83;
  v103[3] = v84;
  sub_24E601704(v100, &qword_27F234FE8, &unk_24F9B5A80);
  sub_24E65D2F8(v81, v82, v83, v84);
  return sub_24E601704(v101, &qword_27F234FE8, &unk_24F9B5A80);
}

uint64_t sub_24F016F1C(uint64_t a1)
{
  sub_24E66D7A0();

  return sub_24F9218E8();
}

unint64_t sub_24F016F64()
{
  result = qword_27F237098;
  if (!qword_27F237098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237098);
  }

  return result;
}

uint64_t sub_24F017064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F0170B8()
{
  result = qword_27F2370C0;
  if (!qword_27F2370C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2370C8, &qword_24F9BE458);
    sub_24E602068(&qword_27F2370D0, &qword_27F2370A8, &qword_24F9BE418, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2370C0);
  }

  return result;
}

uint64_t sub_24F01717C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F928818();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F0172B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F928818();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GSKOnboardingProfileCreationView(uint64_t a1)
{
  result = qword_27F2370D8;
  if (!qword_27F2370D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F017424(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    result = sub_24E6CAE80();
    if (v3 <= 0x3F)
    {
      result = sub_24F928FD8();
      if (v4 <= 0x3F)
      {
        result = sub_24F928818();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F017508@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8, &unk_24F940C00);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v76 - v3;
  v98 = sub_24F929158();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v5 - 8);
  v94 = &v76 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v76 - v9;
  v10 = sub_24F921338();
  v102 = *(v10 - 8);
  v103 = v10;
  MEMORY[0x28223BE20](v10);
  v91 = (&v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v101 = &v76 - v13;
  v14 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v14 - 8);
  v85 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v19 = type metadata accessor for ProfileCreationView(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v92 = &v76 - v23;
  v24 = *(v1 + 1);
  v80 = *v1;
  v25 = *(v1 + 3);
  v79 = *(v1 + 2);
  v26 = *(v1 + 5);
  v78 = *(v1 + 4);
  v27 = *(v1 + 7);
  v77 = *(v1 + 6);
  v28 = type metadata accessor for GSKOnboardingProfileCreationView(0);
  sub_24E70D960(&v1[v28[8]], v18);
  sub_24E615E00(&v1[v28[9]], v108);
  v29 = &v1[v28[10]];
  v30 = v29[1];
  v109 = *v29;
  v110 = v30;
  v111 = 0;
  v86 = v28;
  v31 = v28[11];
  v93 = v1;
  v100 = *&v1[v31];
  v32 = v18;
  v33 = v19[12];
  *(v21 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v34 = v19[13];
  *(v21 + v34) = swift_getKeyPath();
  v35 = v25;
  v36 = v19;
  swift_storeEnumTagMultiPayload();
  v37 = v21 + v19[14];
  LOBYTE(v107) = 1;
  v87 = v24;

  v82 = v26;

  sub_24F926F28();
  v38 = *(&v104 + 1);
  *v37 = v104;
  *(v37 + 1) = v38;
  v39 = v21 + v19[15];
  LOBYTE(v107) = 0;
  sub_24F926F28();
  v40 = *(&v104 + 1);
  *v39 = v104;
  *(v39 + 1) = v40;
  v41 = v19[17];
  v107 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670, &qword_24F989C80);
  sub_24F926F28();
  *(v21 + v41) = v104;
  v42 = v101;
  v43 = *v32;
  v44 = v32[1];
  swift_bridgeObjectRetain_n();
  v84 = v43;
  v83 = v44;
  sub_24F920FC8();
  sub_24F921308();
  v45 = v87;
  *v21 = v80;
  v21[1] = v45;
  v21[2] = v79;
  v21[3] = v35;
  v46 = v82;
  v21[4] = v78;
  v21[5] = v46;
  v21[6] = v77;
  v21[7] = v27;
  sub_24E70D960(v32, v21 + v36[9]);
  sub_24F0181F0(v108, v21 + v36[10]);
  v87 = v32;
  v47 = v85;
  sub_24E70D960(v32, v85);
  type metadata accessor for LocalPlayerProvider(0);
  v48 = swift_allocObject();
  v82 = *(v102 + 16);
  v49 = v91;
  v50 = v103;
  v82(v91, v42, v103);
  v51 = sub_24F018404(v47, v49, 0, v48);
  v21[8] = v51;
  v21[9] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8, &qword_24F9BF190);
  v52 = v42;
  v53 = *(*(sub_24F928188() - 8) + 72);
  v91 = v36;
  v81 = (2 * v53);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_24F9479A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v105 = v50;
  v106 = sub_24F018E30(&qword_27F2370E8, MEMORY[0x277D54FC0], MEMORY[0x277D54FB8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v104);
  v82(boxed_opaque_existential_1, v52, v50);

  sub_24F928168();
  *&v104 = v51;
  v85 = v51;

  sub_24F928168();
  *&v104 = v84;
  *(&v104 + 1) = v83;
  v56 = v91;
  sub_24F928168();
  *&v104 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F750, &qword_24F99D1B0);
  sub_24EDA7A80();
  v57 = sub_24F928F98();

  *(v21 + *(v56 + 11)) = v57;
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();
  if (qword_27F210A50 != -1)
  {
    swift_once();
  }

  v58 = v88;
  sub_24F92A398();
  v59 = v90;
  sub_24F92A408();
  v60 = *(v89 + 8);
  v60(v58, v59);
  v61 = v104;
  if (qword_27F210A58 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  v60(v58, v59);
  v62 = v104;
  type metadata accessor for NicknameModel(0);
  swift_allocObject();
  v63 = sub_24F54A3C0(v85, v61, v62);

  v64 = (v21 + *(v56 + 16));
  v107 = v63;

  sub_24F926F28();

  (*(v102 + 8))(v101, v103);
  sub_24F018C04(v108);
  sub_24F018C58(v87, type metadata accessor for Player);
  v65 = *(&v104 + 1);
  *v64 = v104;
  v64[1] = v65;
  v66 = v92;
  sub_24F018CB8(v21, v92, type metadata accessor for ProfileCreationView);
  v67 = v86[12];
  v68 = sub_24F928818();
  v69 = *(v68 - 8);
  v70 = v94;
  (*(v69 + 16))(v94, &v93[v67], v68);
  (*(v69 + 56))(v70, 0, 1, v68);
  v71 = v95;
  v72 = v98;
  sub_24F928F28();
  v73 = sub_24F921B48();
  v74 = v97;
  (*(*(v73 - 8) + 56))(v97, 1, 1, v73);
  sub_24F018E30(&qword_27F2370F0, type metadata accessor for ProfileCreationView, &unk_24F9CE9B8);
  sub_24F925E58();
  sub_24E601704(v74, &qword_27F2157E8, &unk_24F940C00);
  (*(v96 + 8))(v71, v72);
  sub_24E601704(v70, &qword_27F2157F0, &qword_24F9846A0);
  return sub_24F018C58(v66, type metadata accessor for ProfileCreationView);
}

uint64_t sub_24F01824C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F018E30(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__profileDidChangeToken;
  swift_beginAccess();
  return sub_24E94E17C(v3 + v4, a2);
}

uint64_t sub_24F018314(uint64_t a1, uint64_t *a2)
{
  sub_24E94E17C(a1, v3);
  swift_getKeyPath();
  sub_24F018E30(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD78();

  return sub_24E601704(v3, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24F018404(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0, &unk_24F948490);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v51 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v51);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = sub_24F921338();
  v61[3] = v17;
  v61[4] = sub_24F018E30(&qword_27F2370E8, MEMORY[0x277D54FC0], MEMORY[0x277D54FB8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(*(v17 - 8) + 32))(boxed_opaque_existential_1, a2, v17);
  *(a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact) = 0;
  v19 = (a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__profileDidChangeToken);
  *v19 = 0u;
  v19[1] = 0u;
  sub_24F91FDB8();
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v20 = sub_24F9220D8();
  __swift_project_value_buffer(v20, qword_27F39E8F8);
  v21 = sub_24F9220B8();
  v22 = sub_24F92BD98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24E5DD000, v21, v22, "Constructing LocalPlayerProvider", v23, 2u);
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  sub_24E70D960(a1, a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current);
  sub_24E615E00(v61, a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_gameServices);
  *(a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_arcadeSubscription) = a3;
  v24 = *(a1 + 1);
  v25 = (a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  *v25 = *a1;
  v25[1] = v24;

  swift_bridgeObjectRetain_n();
  sub_24F920FC8();
  (*(v14 + 32))(a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef, v16, v13);
  v50 = type metadata accessor for Player(0);
  v26 = &a1[*(v50 + 28)];
  v27 = *v26;
  v28 = v26[1];
  v29 = (a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__name);
  *v29 = v27;
  v29[1] = v28;
  v30 = *(a1 + 3);
  v48 = *(a1 + 2);
  v31 = type metadata accessor for PlayerAvatar.Overlay(0);
  v32 = *(*(v31 - 8) + 56);
  v32(v11, 1, 1, v31);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v49 = a1;
  v33 = v51;
  v34 = *(v51 + 20);
  v35 = v52;
  v32(&v52[v34], 1, 1, v31);
  v36 = v35 + *(v33 + 24);
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0;

  sub_24E61DA68(v56, v36, qword_27F21B590, &unk_24F93BE30);
  *v35 = v48;
  v35[1] = v30;
  sub_24E61DA68(v11, v35 + v34, &qword_27F22DF80, &unk_24F942E50);
  sub_24E61DA68(&v58, v36, qword_27F21B590, &unk_24F93BE30);
  sub_24F018CB8(v35, a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerAvatar, type metadata accessor for PlayerAvatar);
  v37 = *(v50 + 24);
  v38 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
  v39 = sub_24F9289E8();
  v40 = v49;
  (*(*(v39 - 8) + 16))(a4 + v38, &v49[v37], v39);
  v41 = sub_24E802CE0(&unk_2861C1070);
  v42 = swift_allocObject();
  swift_weakInit();
  *(&v59 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  v43 = __swift_allocate_boxed_opaque_existential_1(&v58);
  v44 = MEMORY[0x28223BE20](v43);
  *(&v47 - 4) = v41;
  *(&v47 - 3) = &unk_24F9BE548;
  *(&v47 - 2) = v42;
  *(&v47 - 4) = 256;
  (*(v53 + 104))(v54, *MEMORY[0x277D85778], v55, v44);
  sub_24F92B928();

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v47 - 2) = a4;
  *(&v47 - 1) = &v58;
  *&v56[0] = a4;
  sub_24F018E30(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD78();

  sub_24E601704(&v58, &qword_27F2129B0, &unk_24F945320);
  sub_24F91FD68();
  sub_24F018C58(v40, type metadata accessor for Player);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return a4;
}

uint64_t sub_24F018C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F018CB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F018D20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F018D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24E614970;

  return sub_24F5540D4(a1, a2, a3, v3);
}

uint64_t sub_24F018E30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F018E88(__n128 a1)
{
  type metadata accessor for ProfileCreationView(255);
  sub_24F018E30(&qword_27F2370F0, type metadata accessor for ProfileCreationView, &unk_24F9CE9B8);
  return swift_getOpaqueTypeConformance2();
}

void static ArcadeSeeAllGamesRequestDescriptor.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return;
    }
  }

  else if (sub_24F92CE08() & 1) == 0 || ((v2 ^ v4))
  {
    return;
  }

  sub_24EBAC8B0(v3, v5);
}

void sub_24F018FC4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return;
    }
  }

  else if (sub_24F92CE08() & 1) == 0 || ((v2 ^ v4))
  {
    return;
  }

  sub_24EBAC8B0(v3, v5);
}

GameStoreKit::VideoPlaybackChecks __swiftcall VideoPlaybackChecks.init()()
{
  *v0 = 0;
  *(v0 + 2) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoPlaybackChecks(unsigned __int16 *a1, unsigned int a2)
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
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoPlaybackChecks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

__n128 sub_24F0192B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237108, &qword_24F9BE710);
  MEMORY[0x28223BE20](v55);
  v4 = &v53 - v3;
  v5 = sub_24F91F008();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LanguageAwareTextView(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237110, &qword_24F9BE718);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237118, &qword_24F9BE720);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237120, &qword_24F9BE728);
  MEMORY[0x28223BE20](v54);
  v19 = &v53 - v18;
  sub_24EA5B568(v7);
  v53 = *(a1 + 16);
  sub_24F0B8D84(v7, 0x20100uLL >> (8 * *(v53 + 48)), v10);
  v20 = sub_24F926D38();
  sub_24F0199CC(v10, v13, v21);
  *&v13[*(v11 + 36)] = v20;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v22 = sub_24F9248C8();
  __swift_project_value_buffer(v22, qword_27F39F078);
  sub_24F019A30();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24F019B60(v13);
  v23 = *(sub_24F924258() + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_24F924B38();
  (*(*(v25 - 8) + 104))(&v4[v23], v24, v25);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(sub_24F924248() + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v31 = sub_24F926D08();

  *&v4[*(v55 + 52)] = v31;
  sub_24F019BC8(v4, v19);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237138, &qword_24F9BE730);
  (*(v15 + 16))(&v19[v32[9]], v17, v14);
  v33 = &v19[v32[10]];
  *v33 = sub_24F923398() & 1;
  *(v33 + 1) = v34;
  v33[16] = v35 & 1;
  v36 = &v19[v32[11]];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v37 = qword_27F24E488;
  v38 = sub_24F923398();
  v40 = v39;
  v42 = v41;
  v43 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237140, &qword_24F9BE760) + 36)];
  *v43 = v37;
  v43[8] = v38 & 1;
  *(v43 + 2) = v40;
  v43[24] = v42 & 1;
  LOBYTE(v37) = sub_24F923398();
  v45 = v44;
  LOBYTE(v40) = v46;
  sub_24F019C40(v4);
  (*(v15 + 8))(v17, v14);
  v47 = &v19[*(v54 + 36)];
  *v47 = v37 & 1;
  *(v47 + 1) = v45;
  v47[16] = v40 & 1;
  if (*(v53 + 48) <= 2u && *(v53 + 48))
  {
    v48 = v56;
    if (*(v53 + 48) == 1)
    {
      sub_24F927618();
    }

    else
    {
      sub_24F927638();
    }
  }

  else
  {
    sub_24F927628();
    v48 = v56;
  }

  sub_24F9242E8();
  sub_24F019CA8(v19, v48);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237148, &qword_24F9BE768) + 36);
  v50 = v62;
  *(v49 + 64) = v61;
  *(v49 + 80) = v50;
  *(v49 + 96) = v63;
  v51 = v58;
  *v49 = v57;
  *(v49 + 16) = v51;
  result = v60;
  *(v49 + 32) = v59;
  *(v49 + 48) = result;
  return result;
}

uint64_t sub_24F019884(uint64_t a1)
{
  sub_24E66D5C4();

  return sub_24F9218E8();
}

unint64_t sub_24F0198CC()
{
  result = qword_27F2370F8;
  if (!qword_27F2370F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2370F8);
  }

  return result;
}

uint64_t sub_24F0199CC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for LanguageAwareTextView(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F019A30()
{
  result = qword_27F237128;
  if (!qword_27F237128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237110, &qword_24F9BE718);
    sub_24F019B18(&qword_27F237130, type metadata accessor for LanguageAwareTextView, &unk_24F9C6A18);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237128);
  }

  return result;
}

uint64_t sub_24F019B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F019B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237110, &qword_24F9BE718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F019BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237108, &qword_24F9BE710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F019C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237108, &qword_24F9BE710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F019CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237120, &qword_24F9BE728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F019D1C()
{
  result = qword_27F237150;
  if (!qword_27F237150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237148, &qword_24F9BE768);
    sub_24F019DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237150);
  }

  return result;
}

unint64_t sub_24F019DA8()
{
  result = qword_27F237158;
  if (!qword_27F237158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237120, &qword_24F9BE728);
    sub_24F019E34();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237158);
  }

  return result;
}

unint64_t sub_24F019E34()
{
  result = qword_27F237160;
  if (!qword_27F237160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237140, &qword_24F9BE760);
    sub_24E602068(&qword_27F237168, &qword_27F237138, &qword_24F9BE730, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237160);
  }

  return result;
}

uint64_t sub_24F019F18()
{
  sub_24F01AA8C();
  sub_24F924868();
  return v1;
}

double sub_24F019F54@<D0>(_OWORD *a1@<X8>)
{
  sub_24F01AA8C();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24F019FA4(void *a1, uint64_t a2)
{
  sub_24F01AA8C();

  return sub_24F924878();
}

uint64_t sub_24F01A00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E9D38B0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double sub_24F01A070(uint64_t a1, uint64_t a2)
{
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24E488;
  v8 = v4;
  v9 = sub_24F923398() & 1;
  v10 = v5;
  v11 = v6 & 1;
  MEMORY[0x25304C420](&v8, a1, &type metadata for FocusedAlternativeButtonInteractionContainerViewModifier, a2);

  return result;
}

uint64_t sub_24F01A138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v21 = a5;
  v19 = a2;
  v20 = a4;
  v22 = a1;
  v24 = a6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237170, &unk_24F9BE830);
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v19 - v10;
  v26 = a3;
  v27 = a4;
  v28 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237178, &qword_24F9BE840);
  sub_24E602068(&qword_27F237180, &qword_27F237178, &qword_24F9BE840, MEMORY[0x277CE04B0]);
  sub_24F9269C8();

  KeyPath = swift_getKeyPath();
  v26 = a3;
  v27 = v20;
  v28 = v21;
  sub_24F923328();
  if (v25 == 1)
  {
    v13 = sub_24F01A364();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = v24;
  (*(v9 + 32))(v24, v11, v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237188, &qword_24F9BE870);
  v18 = (v16 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v13;
  v18[2] = v15;
  return result;
}

uint64_t sub_24F01A364()
{
  swift_getKeyPath();
  v11 = v0;
  sub_24F01AA34();
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v2 = *(v11 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v3 extendedGamepad];
  if (!v4)
  {
    v5 = [v3 microGamepad];
    if (v5)
    {
      v6 = v5;
      goto LABEL_7;
    }

LABEL_10:

    return 0;
  }

  v5 = [v3 extendedGamepad];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v3;
  v3 = v5;
LABEL_7:
  v7 = [v5 buttonX];

  if (v7)
  {
    v8 = [v7 sfSymbolsName];

    if (v8)
    {
      v9 = sub_24F92B0D8();

      return v9;
    }
  }

  return 0;
}

double sub_24F01A4E4@<D0>(_OWORD *a3@<X8>)
{
  sub_24F01AA8C();
  sub_24F924868();
  result = *&v5;
  *a3 = v5;
  return result;
}

double sub_24F01A538()
{
  v1 = v0;
  v2 = type metadata accessor for FocusedAlternativeSelectionButtonModifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(v0 + 40);
  swift_getKeyPath();
  v11 = v5;
  sub_24F01AA34();
  sub_24F91FD88();

  v6 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__xButtonPressed;
  swift_beginAccess();
  v10[7] = *(v5 + v6);
  sub_24F01AFD4(v1, &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_24F01B1A8(&v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2371B0, &unk_24F9BE9C0);
  sub_24E602068(&qword_27F2371B8, &qword_27F2371B0, &unk_24F9BE9C0, MEMORY[0x277CE04B0]);
  sub_24F926AB8();

  return result;
}

void sub_24F01A72C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_24F921B58();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v12 = a3 + *(type metadata accessor for FocusedAlternativeSelectionButtonModifier(0) + 32);
    v13 = *(v12 + 8);
    if (*(v12 + 16) == 1)
    {

      if (!v13)
      {
        return;
      }
    }

    else
    {
      v14 = *v12;

      sub_24F92BDC8();
      v15 = sub_24F9257A8();
      v20 = a3;
      v21 = v7;
      v16 = v15;
      sub_24F921FD8();

      a3 = v20;
      v7 = v21;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E74C370(v14, v13, 0);
      (*(v9 + 8))(v11, v8);
      if (!v25[1])
      {
        return;
      }
    }

    sub_24E7538CC(a3, &v23);
    if (v24)
    {
      sub_24E612C80(&v23, v25);
      sub_24F7695C8(&v23);
      if (v24)
      {
        __swift_project_boxed_opaque_existential_1(&v23, v24);
        sub_24F76973C(v7);
        sub_24F9218A8();
        (*(v22 + 8))(v7, v5);
        __swift_destroy_boxed_opaque_existential_1(v25);
        __swift_destroy_boxed_opaque_existential_1(&v23);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
      v17 = &unk_27F212740;
      v18 = &unk_24F940730;
    }

    else
    {
      v17 = qword_27F21B590;
      v18 = &unk_24F93BE30;
    }

    sub_24E601704(&v23, v17, v18);
  }
}

unint64_t sub_24F01AA34()
{
  result = qword_27F220F48;
  if (!qword_27F220F48)
  {
    type metadata accessor for GameControllerObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220F48);
  }

  return result;
}

unint64_t sub_24F01AA8C()
{
  result = qword_27F237190;
  if (!qword_27F237190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237190);
  }

  return result;
}

unint64_t sub_24F01AAF4()
{
  result = qword_27F237198;
  if (!qword_27F237198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237188, &qword_24F9BE870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237178, &qword_24F9BE840);
    sub_24E602068(&qword_27F237180, &qword_27F237178, &qword_24F9BE840, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F224738, &qword_27F224730, &qword_24F9721B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237198);
  }

  return result;
}

uint64_t sub_24F01AC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F01AD00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}