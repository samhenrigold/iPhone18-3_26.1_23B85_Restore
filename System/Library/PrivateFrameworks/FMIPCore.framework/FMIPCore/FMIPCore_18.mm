void sub_24A80F310(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_24A80F378(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A82CDC4();
    sub_24A6797D0(v4, qword_281518F88);
    v5 = a1;
    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_24A82DC74();
      v12 = sub_24A68761C(v10, v11, v28);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPBeaconRefreshingController: Subscribe failed due to error: %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);

      return;
    }

    v26 = a1;
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);

    oslog = sub_24A82CD94();
    v15 = sub_24A82D504();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      v18 = a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
      v19 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy);
      v21 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 8);
      v20 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);
      v22 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 24);
      LOBYTE(v18) = *(v18 + 32);
      LOBYTE(v28[0]) = v19;
      v28[1] = v21;
      v28[2] = v20;
      v28[3] = v22;
      v29 = v18;

      v23 = sub_24A82D024();
      v25 = sub_24A68761C(v23, v24, &v30);

      *(v16 + 4) = v25;
      _os_log_impl(&dword_24A675000, oslog, v15, "FMIPBeaconRefreshingController: Successfully updated refresh policy to: %s", v16, 0xCu);
      sub_24A6876E8(v17);
      MEMORY[0x24C21E1D0](v17, -1, -1);
      MEMORY[0x24C21E1D0](v16, -1, -1);

      return;
    }

    v26 = oslog;
  }
}

void sub_24A80F6C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);
    v24 = sub_24A82CD94();
    v16 = sub_24A82D4E4();
    if (os_log_type_enabled(v24, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24A675000, v24, v16, "FMIPBeaconRefreshingController: Received nil client configuration", v17, 2u);
      MEMORY[0x24C21E1D0](v17, -1, -1);
    }

    v18 = v24;
  }

  else
  {
    v23 = v7;
    v24 = v12;
    sub_24A82C574();
    swift_allocObject();
    sub_24A681458(a1, a2);
    sub_24A82C564();
    sub_24A814A18();
    sub_24A82C554();

    v19 = aBlock[0];
    v22[1] = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = v19;
    aBlock[4] = sub_24A814A6C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DCE3F8;
    v22[0] = _Block_copy(aBlock);

    sub_24A82CE24();
    v25 = MEMORY[0x277D84F90];
    sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
    sub_24A82D6B4();
    v21 = v22[0];
    MEMORY[0x24C21CE90](0, v14, v9, v22[0]);
    _Block_release(v21);
    sub_24A67E8E8(a1, a2);
    (*(v23 + 8))(v9, v6);
    (*(v11 + 8))(v14, v24);
  }
}

uint64_t sub_24A80FC74(uint64_t a1, char a2)
{
  v4 = sub_24A82CDF4();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24A82CE54();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 & 1;
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_clientConfiguration) = a2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A82CDC4();
  sub_24A6797D0(v13, qword_281518F88);
  v14 = sub_24A82CD94();
  v15 = sub_24A82D4E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v8;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136446210;
    LOBYTE(v38) = v12;
    v19 = sub_24A82D024();
    v31 = v9;
    v21 = v7;
    v22 = a1;
    v23 = sub_24A68761C(v19, v20, aBlock);
    v9 = v31;

    *(v16 + 4) = v23;
    a1 = v22;
    v7 = v21;
    _os_log_impl(&dword_24A675000, v14, v15, "FMIPBeaconRefreshingController: Received new client configuration: %{public}s", v16, 0xCu);
    sub_24A6876E8(v18);
    v24 = v18;
    v8 = v32;
    MEMORY[0x24C21E1D0](v24, -1, -1);
    MEMORY[0x24C21E1D0](v16, -1, -1);
  }

  sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  (*(v9 + 104))(v11, *MEMORY[0x277D851D0], v8);
  v25 = sub_24A82D5A4();
  (*(v9 + 8))(v11, v8);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = v12;
  aBlock[4] = sub_24A814A78;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE448;
  v27 = _Block_copy(aBlock);

  sub_24A82CE24();
  v38 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40, MEMORY[0x277D83970]);
  v28 = v34;
  v29 = v37;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v7, v28, v27);
  _Block_release(v27);

  (*(v36 + 8))(v28, v29);
  (*(v33 + 8))(v7, v35);
}

uint64_t sub_24A810188(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = a2 & 1;
    sub_24A7525E0(&v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A8101E0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {

    v4 = v2;
    v2 = sub_24A82C904();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  v3(v2, v6);
  sub_24A67E8E8(v2, v6);
}

void sub_24A810278()
{
  v1 = *MEMORY[0x277D49840];
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v2, v0, sub_24A6B0068, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v0 selector:sel_handleBeaconsChanged name:v1 object:0];

  v5 = *MEMORY[0x277D49888];
  CFNotificationCenterAddObserver(v2, v0, sub_24A8103D8, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = [v3 defaultCenter];
  [v6 addObserver:v0 selector:sel_handleUnknownBeaconsChanged name:v5 object:0];
}

uint64_t sub_24A8103E4()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPBeaconRefreshingController: Unknown beacon changed notification received", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24A74F110;
  *(v7 + 24) = v6;
  aBlock[4] = sub_24A6806A0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DCD548;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);
  v10 = qword_281513E40;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshUnknownBeacons", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v12 = _Block_copy(v9);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24A6A0BC0;
  *(v14 + 24) = v13;
  v18[4] = sub_24A680674;
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_24A6805E4;
  v18[3] = &unk_285DCD5C0;
  v15 = _Block_copy(v18);

  os_activity_apply(v11, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v8);
  _Block_release(v9);
  result = swift_unknownObjectRelease();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_24A810790(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_24A7F06EC(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_24A8108FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v20 = a1;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 56);
    v11 = a4 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
    v12 = (v8 + 63) >> 6;

    v13 = 0;
    v14 = 0;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v18 = v15 | (v14 << 6);
      if (*(v11 + 32) != 1 || ([*(*(a3 + 48) + 8 * v18) isAppleAudioAccessory] & 1) == 0)
      {
        *(v20 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        if (__OFADD__(v13++, 1))
        {
          __break(1u);
LABEL_19:
          sub_24A7F06EC(v20, a2, v13, a3);

          return;
        }
      }
    }

    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        goto LABEL_19;
      }

      v17 = *(a3 + 56 + 8 * v14);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t *sub_24A810A88(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_24A81281C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_24A810B24(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_24A810790(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_24A810BC8(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
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

      MEMORY[0x24C21D070](a1, a2, v11);
      sub_24A679170(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24A679170(0, a5, a6);
    if (sub_24A82D724() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24A82D734();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_24A82D5D4();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_24A82D5E4();

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

uint64_t sub_24A810DE0(void *a1, uint64_t *a2)
{
  v2 = sub_24A82CFC4();
  v4 = v3;
  if (v2 == sub_24A82CFC4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24A82DC04();
  }

  return v7 & 1;
}

BOOL _s8FMIPCore24FMIPDeviceConnectedStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_24A6BBA94(&qword_27EF5ED48, &unk_24A83BA70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_24A67E964(a1, &v21 - v13, &qword_27EF5D020, &qword_24A830E40);
  sub_24A67E964(a2, &v14[v15], &qword_27EF5D020, &qword_24A830E40);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_24A67E964(v14, v10, &qword_27EF5D020, &qword_24A830E40);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_24A697DF4(&qword_27EF5DC48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v18 = sub_24A82CF84();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_24A67F378(v14, &qword_27EF5D020, &qword_24A830E40);
      if (v18)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_24A67F378(v14, &qword_27EF5ED48, &unk_24A83BA70);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_24A67F378(v14, &qword_27EF5D020, &qword_24A830E40);
LABEL_9:
  v20 = type metadata accessor for FMIPDeviceConnectedState(0);
  return *(a1 + *(v20 + 20)) == *(a2 + *(v20 + 20));
}

unint64_t sub_24A8111A4()
{
  result = qword_27EF5F640;
  if (!qword_27EF5F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F640);
  }

  return result;
}

unint64_t sub_24A8111F8()
{
  result = qword_27EF5F688;
  if (!qword_27EF5F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F688);
  }

  return result;
}

unint64_t sub_24A81124C()
{
  result = qword_27EF5F690;
  if (!qword_27EF5F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F690);
  }

  return result;
}

unint64_t sub_24A8112A0()
{
  result = qword_27EF5F698;
  if (!qword_27EF5F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F698);
  }

  return result;
}

unint64_t sub_24A8112F4()
{
  result = qword_27EF5F6A0;
  if (!qword_27EF5F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F6A0);
  }

  return result;
}

unint64_t sub_24A811348()
{
  result = qword_27EF5F708;
  if (!qword_27EF5F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F708);
  }

  return result;
}

unint64_t sub_24A81139C()
{
  result = qword_27EF5F710;
  if (!qword_27EF5F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F710);
  }

  return result;
}

unint64_t sub_24A8113F0()
{
  result = qword_27EF5F718;
  if (!qword_27EF5F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F718);
  }

  return result;
}

unint64_t sub_24A811444()
{
  result = qword_27EF5F720;
  if (!qword_27EF5F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F720);
  }

  return result;
}

unint64_t sub_24A811498()
{
  result = qword_27EF5F728;
  if (!qword_27EF5F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F728);
  }

  return result;
}

unint64_t sub_24A8114F0()
{
  result = qword_27EF5F758;
  if (!qword_27EF5F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F758);
  }

  return result;
}

unint64_t sub_24A811548()
{
  result = qword_27EF5F760;
  if (!qword_27EF5F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F760);
  }

  return result;
}

unint64_t sub_24A8115A0()
{
  result = qword_27EF5F768;
  if (!qword_27EF5F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F768);
  }

  return result;
}

unint64_t sub_24A8115F8()
{
  result = qword_27EF5F770;
  if (!qword_27EF5F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F770);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPBeaconRefreshingControllerClientConfiguration(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for FMIPSeparationMonitoringState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMIPSeparationMonitoringState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
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

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24A811978(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24A81198C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

unint64_t sub_24A811A38()
{
  result = qword_27EF5F788;
  if (!qword_27EF5F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F788);
  }

  return result;
}

unint64_t sub_24A811A90()
{
  result = qword_27EF5F790;
  if (!qword_27EF5F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F790);
  }

  return result;
}

unint64_t sub_24A811AE8()
{
  result = qword_27EF5F798;
  if (!qword_27EF5F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F798);
  }

  return result;
}

unint64_t sub_24A811B40()
{
  result = qword_27EF5F7A0;
  if (!qword_27EF5F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7A0);
  }

  return result;
}

unint64_t sub_24A811B98()
{
  result = qword_27EF5F7A8;
  if (!qword_27EF5F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7A8);
  }

  return result;
}

unint64_t sub_24A811BF0()
{
  result = qword_27EF5F7B0;
  if (!qword_27EF5F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7B0);
  }

  return result;
}

unint64_t sub_24A811C48()
{
  result = qword_27EF5F7B8;
  if (!qword_27EF5F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7B8);
  }

  return result;
}

unint64_t sub_24A811CA0()
{
  result = qword_27EF5F7C0;
  if (!qword_27EF5F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7C0);
  }

  return result;
}

unint64_t sub_24A811CF8()
{
  result = qword_27EF5F7C8;
  if (!qword_27EF5F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7C8);
  }

  return result;
}

unint64_t sub_24A811D50()
{
  result = qword_27EF5F7D0;
  if (!qword_27EF5F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7D0);
  }

  return result;
}

unint64_t sub_24A811DA8()
{
  result = qword_27EF5F7D8;
  if (!qword_27EF5F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7D8);
  }

  return result;
}

unint64_t sub_24A811E00()
{
  result = qword_27EF5F7E0;
  if (!qword_27EF5F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7E0);
  }

  return result;
}

unint64_t sub_24A811E58()
{
  result = qword_27EF5F7E8;
  if (!qword_27EF5F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7E8);
  }

  return result;
}

unint64_t sub_24A811EB0()
{
  result = qword_27EF5F7F0;
  if (!qword_27EF5F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7F0);
  }

  return result;
}

unint64_t sub_24A811F08()
{
  result = qword_27EF5F858;
  if (!qword_27EF5F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F858);
  }

  return result;
}

unint64_t sub_24A811F60()
{
  result = qword_27EF5F860;
  if (!qword_27EF5F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F860);
  }

  return result;
}

unint64_t sub_24A811FB8()
{
  result = qword_27EF5F868;
  if (!qword_27EF5F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F868);
  }

  return result;
}

unint64_t sub_24A812010()
{
  result = qword_27EF5F870;
  if (!qword_27EF5F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F870);
  }

  return result;
}

uint64_t sub_24A812064(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = type metadata accessor for FMIPItem(0);
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_24A82D744();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_24A6FCB30(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_24A82D6F4();
    }

    else
    {
      result = sub_24A82D6C4();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v38 = a1 + 56;
      v39 = v11;
      v36[1] = v2;
      v37 = a1 + 64;
      v40 = v7;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_24A810BC8(v46, v47, v48, a1, &qword_281512B60, 0x277D49610);
        v19 = v18;
        v45[3] = sub_24A679170(0, &qword_281512B60, 0x277D49610);
        v45[4] = &protocol witness table for SPBeacon;
        v45[0] = v19;
        v20 = v42;

        FMIPItem.init(with:from:)(v45, v20, v6);
        v21 = v44;
        v49 = v44;
        v22 = v6;
        v24 = *(v44 + 16);
        v23 = *(v44 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_24A6FCB30((v23 > 1), v24 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v24 + 1;
        v25 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v44 = v21;
        result = sub_24A8127B4(v22, v21 + v25 + *(v41 + 72) * v24, type metadata accessor for FMIPItem);
        v6 = v22;
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_24A82D714())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v40;
          sub_24A6BBA94(&qword_27EF5F8E0, &qword_24A841618);
          v12 = sub_24A82D3E4();
          sub_24A82D7A4();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_24A6CA498(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v26 = 1 << *(v17 + 32);
          if (v14 >= v26)
          {
            goto LABEL_38;
          }

          v27 = v14 >> 6;
          v28 = *(v38 + 8 * (v14 >> 6));
          if (((v28 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v29 = v28 & (-2 << (v14 & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                result = sub_24A6CA498(v14, v15, 0);
                v26 = __clz(__rbit64(v33)) + v30;
                goto LABEL_33;
              }
            }

            result = sub_24A6CA498(v14, v15, 0);
          }

LABEL_33:
          v35 = *(v17 + 36);
          v46 = v26;
          v47 = v35;
          v48 = 0;
          v7 = v40;
          if (v10 == v40)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A8124A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A81265C()
{
  v1 = *(sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_24A808760(v2, v3, v4);
}

uint64_t sub_24A8126CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A812734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A8127B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t *sub_24A81281C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = result;
  v29 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v31 = (a4 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy);
  v32 = a3;
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v33 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(v32 + 48);
    v30 = v13;
    v15 = *(v14 + 8 * v13);
    v16 = v31[1];
    v36 = *v31;
    v37 = v16;
    v38 = *(v31 + 32);
    v39 = *(&v16 + 1);
    v40 = v16;
    v17 = v15;
    sub_24A67E964(&v40, &v35, &qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67E964(&v39, &v35, &qword_27EF5F878, &qword_24A8415A8);
    v18 = sub_24A7B56DC();
    sub_24A67F378(&v40, &qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67F378(&v39, &qword_27EF5F878, &qword_24A8415A8);
    v19 = [v18 searchTypes];

    type metadata accessor for SPBeaconType(0);
    v20 = sub_24A82D244();

    v21 = [v17 type];
    v35 = v21;
    MEMORY[0x28223BE20](v21);
    v26[2] = &v35;
    v22 = v34;
    v23 = sub_24A7FD954(sub_24A814B3C, v26, v20);
    v34 = v22;

    v8 = v33;
    if (v23)
    {
      *(v28 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_15:
        v25 = v32;

        return sub_24A7F06EC(v28, v27, v29, v25);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A812AD8(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = a1;
  v49 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v42 = v3;
    v33[1] = v33;
    v34 = v8;
    MEMORY[0x28223BE20](v10);
    v36 = v33 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v9);
    v37 = 0;
    v8 = 0;
    v40 = v5;
    v12 = *(v5 + 56);
    v5 += 56;
    v11 = v12;
    v13 = 1 << *(v5 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v35 = a2;
    v39 = &a2[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy];
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v41 = (v15 - 1) & v15;
LABEL_12:
      v20 = v17 | (v8 << 6);
      v21 = *(v40 + 48);
      v38 = v20;
      v22 = *(v21 + 8 * v20);
      v23 = *(v39 + 1);
      v46 = *v39;
      v47 = v23;
      v48 = v39[32];
      v44 = *(&v23 + 1);
      v45 = v23;
      v24 = v22;
      sub_24A67E964(&v45, &v43, &qword_27EF5DA28, &qword_24A8415A0);
      v3 = &qword_24A8415A8;
      sub_24A67E964(&v44, &v43, &qword_27EF5F878, &qword_24A8415A8);
      v25 = sub_24A7B56DC();
      sub_24A67F378(&v45, &qword_27EF5DA28, &qword_24A8415A0);
      sub_24A67F378(&v44, &qword_27EF5F878, &qword_24A8415A8);
      v26 = [v25 searchTypes];

      type metadata accessor for SPBeaconType(0);
      v9 = sub_24A82D244();

      a2 = [v24 type];
      v43 = a2;
      MEMORY[0x28223BE20](a2);
      v33[-2] = &v43;
      v27 = v42;
      v28 = sub_24A7FD954(sub_24A814B3C, &v33[-4], v9);
      v42 = v27;

      v15 = v41;
      if (v28)
      {
        *&v36[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
        if (__OFADD__(v37++, 1))
        {
          __break(1u);
LABEL_16:
          v30 = sub_24A7F06EC(v36, v34, v37, v40);

          return v30;
        }
      }
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v5 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();

  v30 = sub_24A810A88(v32, v8, v5, a2);

  MEMORY[0x24C21E1D0](v32, -1, -1);

  return v30;
}

uint64_t sub_24A812EC4(uint64_t a1, char *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84FA0];
    v37 = MEMORY[0x277D84FA0];

    v5 = sub_24A82D704();
    v6 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
    v34 = v5;
    v7 = sub_24A82D784();
    v32 = a2;
    if (v7)
    {
      v8 = &a2[v6];
      v9 = v7;
      v33 = sub_24A679170(0, &qword_281512B60, 0x277D49610);
      v10 = v9;
      do
      {
        v35 = v10;
        swift_dynamicCast();
        v11 = v36;
        v12 = *(v8 + 1);
        v38 = *v8;
        v39 = v12;
        v40 = v8[32];
        v41 = *(&v12 + 1);
        v42 = v12;
        sub_24A67E964(&v42, &v35, &qword_27EF5DA28, &qword_24A8415A0);
        sub_24A67E964(&v41, &v35, &qword_27EF5F878, &qword_24A8415A8);
        v13 = sub_24A7B56DC();
        sub_24A67F378(&v42, &qword_27EF5DA28, &qword_24A8415A0);
        sub_24A67F378(&v41, &qword_27EF5F878, &qword_24A8415A8);
        v14 = [v13 searchTypes];

        type metadata accessor for SPBeaconType(0);
        v15 = sub_24A82D244();

        v16 = [v11 type];
        v35 = v16;
        MEMORY[0x28223BE20](v16);
        v31[2] = &v35;
        v17 = sub_24A7FD954(sub_24A814B3C, v31, v15);

        v18 = v36;
        if (v17)
        {
          v19 = *(v3 + 16);
          if (*(v3 + 24) <= v19)
          {
            sub_24A70E8A4(v19 + 1);
          }

          v3 = v37;
          result = sub_24A82D5D4();
          v21 = v3 + 56;
          v22 = -1 << *(v3 + 32);
          v23 = result & ~v22;
          v24 = v23 >> 6;
          if (((-1 << v23) & ~*(v3 + 56 + 8 * (v23 >> 6))) != 0)
          {
            v25 = __clz(__rbit64((-1 << v23) & ~*(v3 + 56 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = 0;
            v27 = (63 - v22) >> 6;
            do
            {
              if (++v24 == v27 && (v26 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v28 = v24 == v27;
              if (v24 == v27)
              {
                v24 = 0;
              }

              v26 |= v28;
              v29 = *(v21 + 8 * v24);
            }

            while (v29 == -1);
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          }

          *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
          *(*(v3 + 48) + 8 * v25) = v18;
          ++*(v3 + 16);
        }

        else
        {
        }

        v10 = sub_24A82D784();
      }

      while (v10);
    }
  }

  else
  {
    v30 = sub_24A812AD8(a1, a2);
    if (!v2)
    {
      return v30;
    }
  }

  return v3;
}

uint64_t sub_24A813240(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v28 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v27 = v3;
    v24[1] = v24;
    v25 = v8;
    MEMORY[0x28223BE20](v10);
    v11 = v24 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v9);
    v9 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v8 = v14 & *(a1 + 56);
    v26 = a2;
    v3 = a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
    a2 = (v13 + 63) >> 6;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v18 = v15 | (v12 << 6);
      if (*(v3 + 32) != 1 || ([*(*(a1 + 48) + 8 * v18) isAppleAudioAccessory] & 1) == 0)
      {
        *&v11[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_17:
          v20 = sub_24A7F06EC(v11, v25, v9, a1);

          return v20;
        }
      }
    }

    v16 = v12;
    while (1)
    {
      v12 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v12 >= a2)
      {
        goto LABEL_17;
      }

      v17 = *(a1 + 56 + 8 * v12);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();

  sub_24A8108FC(v22, v8, a1, a2);
  v20 = v23;

  MEMORY[0x24C21E1D0](v22, -1, -1);

  return v20;
}

uint64_t sub_24A8134C0(uint64_t a1, int64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_24A813240(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];

  sub_24A82D704();
  v4 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
  if (sub_24A82D784())
  {
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    do
    {
      swift_dynamicCast();
      if (*(a2 + v4 + 32) == 1 && ([v16 isAppleAudioAccessory] & 1) != 0)
      {
      }

      else
      {
        v11 = *(v3 + 16);
        if (*(v3 + 24) <= v11)
        {
          sub_24A70E8A4(v11 + 1);
        }

        v3 = v17;
        result = sub_24A82D5D4();
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
      }
    }

    while (sub_24A82D784());
  }

  return v3;
}

uint64_t sub_24A8136F8(uint64_t a1)
{
  v96 = sub_24A82CE54();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_24A82CDF4();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_24A82CAA4();
  v4 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  v99 = sub_24A6797D0(v7, qword_281518F88);
  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconRefreshingController: Refreshing Separation State", v10, 2u);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = a1 + 32;
    v101 = (v4 + 8);
    v100 = *MEMORY[0x277D49798];
    *&v11 = 136316162;
    v97 = v11;
    v15 = MEMORY[0x277D84F98];
    v16 = MEMORY[0x277D84F98];
    v108 = MEMORY[0x277D84F98];
    v109 = MEMORY[0x277D84F98];
    do
    {
      v105 = v12;
      v103 = v14;
      sub_24A698230(v14, aBlock);
      v56 = v114;
      v57 = v115;
      sub_24A67DF6C(aBlock, v114);
      v58 = (*(v57 + 10))(v56, v57);
      if (*(v58 + 16) && (v59 = sub_24A77EE90(v100), (v60 & 1) != 0))
      {
        v61 = *(*(v58 + 56) + 8 * v59);

        v62 = [v61 state];

        v63 = 0x3000002000100uLL >> (8 * (v62 + 1));
        if (v62 + 1 >= 7)
        {
          LODWORD(v63) = 0;
        }

        v111 = v63;
      }

      else
      {

        v111 = 0;
      }

      v64 = v114;
      v65 = v115;
      sub_24A67DF6C(aBlock, v114);
      v66 = *((*(v65 + 10))(v64, v65) + 16);
      v106 = v16;
      if (v66)
      {
        sub_24A77EE90(v100);
        v38 = v67;
      }

      else
      {
        v38 = 0;
      }

      v68 = v114;
      v69 = v115;
      sub_24A67DF6C(aBlock, v114);
      v102 = (*(v69 + 21))(v68, v69);
      v70 = v114;
      v71 = v115;
      sub_24A67DF6C(aBlock, v114);
      v72 = (*(v71 + 15))(v70, v71);
      v73 = sub_24A7FD248(v72);
      v104 = v13;

      sub_24A698230(aBlock, v117);

      v74 = sub_24A82CD94();
      v75 = sub_24A82D504();

      v76 = os_log_type_enabled(v74, v75);
      v110 = v73;
      if (v76)
      {
        v17 = v38;
        v98 = v15;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v112 = v19;
        *v18 = v97;
        v21 = v118;
        v20 = v119;
        sub_24A67DF6C(v117, v118);
        v22 = v107;
        (*(v20 + 16))(v21, v20);
        sub_24A697DF4(&qword_27EF5CEF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v23 = sub_24A82DB84();
        v25 = v24;
        (*v101)(v6, v22);
        sub_24A6876E8(v117);
        v26 = sub_24A68761C(v23, v25, &v112);

        *(v18 + 4) = v26;
        *(v18 + 12) = 2080;
        v27 = 0x64656C6261736964;
        if (v111 != 2)
        {
          v27 = 0x646573756170;
        }

        v28 = 0xE800000000000000;
        if (v111 != 2)
        {
          v28 = 0xE600000000000000;
        }

        v29 = 0x64656C62616E65;
        if (!v111)
        {
          v29 = 0x6E776F6E6B6E75;
        }

        if (v111 <= 1u)
        {
          v30 = v29;
        }

        else
        {
          v30 = v27;
        }

        if (v111 <= 1u)
        {
          v31 = 0xE700000000000000;
        }

        else
        {
          v31 = v28;
        }

        v32 = sub_24A68761C(v30, v31, &v112);

        *(v18 + 14) = v32;
        *(v18 + 22) = 1024;
        *(v18 + 24) = v17 & 1;
        *(v18 + 28) = 1024;
        v33 = v102;
        *(v18 + 30) = v102 & 1;
        *(v18 + 34) = 2080;
        v34 = MEMORY[0x24C21CB60](v110, v107);
        v36 = sub_24A68761C(v34, v35, &v112);

        *(v18 + 36) = v36;
        _os_log_impl(&dword_24A675000, v74, v75, "    FMIPBeaconRefreshingController: Separation Monitoring State for Beacon %s\n    separationMonitoringEnabled: %s,\n    canEnableSeparationMonitoring: %{BOOL}d,\n    canBeMonitoredForSeparationByHost: %{BOOL}d,\n    safeLocations: %s", v18, 0x2Cu);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v19, -1, -1);
        v37 = v18;
        v38 = v17;
        MEMORY[0x24C21E1D0](v37, -1, -1);

        v15 = v98;
      }

      else
      {

        sub_24A6876E8(v117);
        v33 = v102;
      }

      v39 = v114;
      v40 = v115;
      sub_24A67DF6C(aBlock, v114);
      (*(v40 + 2))(v39, v40);
      v41 = v109;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117[0] = v41;
      sub_24A785520(v111, v6, isUniquelyReferenced_nonNull_native);
      v43 = *v101;
      v44 = v107;
      (*v101)(v6, v107);
      v109 = v117[0];
      v45 = v114;
      v46 = v115;
      sub_24A67DF6C(aBlock, v114);
      (*(v46 + 2))(v45, v46);
      v47 = v106;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v117[0] = v47;
      sub_24A785380(v38 & 1, v6, v48);
      v43(v6, v44);
      v16 = v117[0];
      v49 = v114;
      v50 = v115;
      sub_24A67DF6C(aBlock, v114);
      (*(v50 + 2))(v49, v50);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v117[0] = v15;
      sub_24A785380(v33 & 1, v6, v51);
      v43(v6, v44);
      v15 = v117[0];
      v52 = v114;
      v53 = v115;
      sub_24A67DF6C(aBlock, v114);
      (*(v53 + 2))(v52, v53);
      v54 = v108;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v117[0] = v54;
      sub_24A7851B4(v110, v6, v55);
      v43(v6, v44);
      v108 = v117[0];
      sub_24A6876E8(aBlock);
      v14 = v103 + 40;
      v13 = v104;
      v12 = v105 - 1;
    }

    while (v105 != 1);
  }

  else
  {
    v16 = MEMORY[0x277D84F98];
    v15 = MEMORY[0x277D84F98];
    v108 = MEMORY[0x277D84F98];
    v109 = MEMORY[0x277D84F98];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v78 = Strong;
    v79 = v109;

    v80 = sub_24A82CD94();
    v81 = sub_24A82D504();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412290;
      sub_24A697DF4(&qword_281514670, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v84 = sub_24A82CED4();
      *(v82 + 4) = v84;
      *v83 = v84;
      _os_log_impl(&dword_24A675000, v80, v81, "FMIPManager: didReceive separation states %@", v82, 0xCu);
      sub_24A67F378(v83, &qword_27EF5D010, &qword_24A830E30);
      MEMORY[0x24C21E1D0](v83, -1, -1);
      MEMORY[0x24C21E1D0](v82, -1, -1);
    }

    v85 = v91;
    sub_24A82CDE4();
    v86 = swift_allocObject();
    v86[2] = v78;
    v86[3] = v79;
    v86[4] = v16;
    v86[5] = v15;
    v86[6] = v108;
    v115 = sub_24A81434C;
    v116 = v86;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    v114 = &unk_285DCDBD8;
    v87 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v88 = v93;
    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v88, v85, v87);
    _Block_release(v87);
    (*(v95 + 8))(v88, v96);
    (*(v92 + 8))(v85, v94);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_24A8142DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_24A814378()
{
  v1 = *(sub_24A82CAA4() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_24A82CA34() - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_24A802898(v5, v6, v7, v0 + v2, v8);
}

void sub_24A814478(uint64_t a1)
{
  v3 = *(sub_24A82CAA4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24A82CA34() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_24A802F9C(a1, v8, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_24A814580(int64_t a1)
{
  v3 = *(sub_24A82CAA4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24A82CA34() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + v8);
  v11 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_24A803530(a1, v9, v1 + v4, v1 + v7, v10, v12, v13);
}

uint64_t sub_24A8146A4()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_24A82CA34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v12 = *(v7 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  v9 = (v5 + v8 + 16) & ~v8;
  v10 = (v12 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v3 | v8 | 7);
}

uint64_t sub_24A814838()
{
  v1 = *(sub_24A82CAA4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_24A82CA34() - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24A8021D8(v0 + v2, v7, v8, v9, v0 + v6, v10);
}

uint64_t sub_24A814960(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_24A8149C0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_24A814A18()
{
  result = qword_27EF5F8E8;
  if (!qword_27EF5F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F8E8);
  }

  return result;
}

unint64_t sub_24A814C20(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D800, &unk_24A834860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F4230();
  sub_24A82DD64();
  if (v2)
  {
    goto LABEL_65;
  }

  LOBYTE(v45[0]) = 1;
  v9 = sub_24A82D9F4();
  type metadata accessor for FMIPUserInfoResponseFragment();
  v46 = 2;
  sub_24A8158E8(&qword_2815131B8, type metadata accessor for FMIPUserInfoResponseFragment, &unk_24A83EF20);
  sub_24A82DA84();
  v44 = v45[0];
  type metadata accessor for FMIPAlert(0);
  v46 = 0;
  sub_24A8158E8(&qword_281512CD8, type metadata accessor for FMIPAlert, &protocol conformance descriptor for FMIPAlert);
  sub_24A82DA84();
  v10 = v45[0];
  LOBYTE(v45[0]) = 3;
  result = sub_24A82DA44();
  v13 = HIBYTE(v12) & 0xF;
  v14 = result & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = result & 0xFFFFFFFFFFFFLL;
  }

  v43 = v10;
  if (!v15)
  {

    goto LABEL_64;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    v46 = 0;
    v17 = sub_24A6D9830(result, v12, 10);
    v47 = v37;

    if (v47)
    {
      goto LABEL_64;
    }

    goto LABEL_69;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24A82D8B4();
      v14 = v42;
    }

    v16 = *result;
    if (v16 == 43)
    {
      if (v14 >= 1)
      {
        if (--v14)
        {
          v17 = 0;
          if (result)
          {
            v24 = (result + 1);
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_62;
              }

              v26 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_62;
              }

              v17 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_62;
              }

              ++v24;
              if (!--v14)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_81;
    }

    if (v16 != 45)
    {
      if (v14)
      {
        v17 = 0;
        if (result)
        {
          while (1)
          {
            v30 = *result - 48;
            if (v30 > 9)
            {
              goto LABEL_62;
            }

            v31 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_62;
            }

            v17 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v14)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      v17 = 0;
      LOBYTE(v14) = 1;
LABEL_63:
      v46 = v14;
      v35 = v14;

      if (v35)
      {
LABEL_64:

        sub_24A7C642C();
        swift_allocError();
        *v36 = 0;
        swift_willThrow();

        (*(v6 + 8))(v8, v5);
LABEL_65:
        type metadata accessor for FMIPBaseResponse();
        swift_deallocPartialClassInstance();
LABEL_66:
        sub_24A6876E8(a1);
        return v3;
      }

LABEL_69:
      if (v9 && *(v9 + 16))
      {

        v38 = sub_24A6A2D48(0x4E6C6C53776F6873, 0xEA0000000000776FLL);
        if (v39)
        {
          sub_24A67E168(*(v9 + 56) + 32 * v38, v45);
          (*(v6 + 8))(v8, v5);

          if (swift_dynamicCast())
          {
            v40 = v46;
LABEL_77:
            v41 = v44;
            *(v3 + 16) = v9;
            *(v3 + 24) = v41;
            *(v3 + 48) = v17;
            *(v3 + 40) = v40;
            *(v3 + 32) = v43;
            goto LABEL_66;
          }

LABEL_76:
          v40 = 0;
          goto LABEL_77;
        }
      }

      (*(v6 + 8))(v8, v5);
      goto LABEL_76;
    }

    if (v14 >= 1)
    {
      if (--v14)
      {
        v17 = 0;
        if (result)
        {
          v18 = (result + 1);
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              goto LABEL_62;
            }

            v20 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              goto LABEL_62;
            }

            v17 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              goto LABEL_62;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v14) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v45[0] = result;
  v45[1] = v12 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v13)
      {
        v17 = 0;
        v32 = v45;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v13)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v13)
    {
      v14 = v13 - 1;
      if (v13 != 1)
      {
        v17 = 0;
        v21 = v45 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v14)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_80;
  }

  if (v13)
  {
    v14 = v13 - 1;
    if (v13 != 1)
    {
      v17 = 0;
      v27 = v45 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v14)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_24A815314()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A815404(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A8154E0(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A8155CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A815AB0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A8155FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472656C61;
  v5 = 0xE800000000000000;
  v6 = 0x6F666E4972657375;
  v7 = 0xEA00000000006564;
  v8 = 0x6F43737574617473;
  if (v2 != 3)
  {
    v8 = 0x746E65746E6F63;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F43726576726573;
    v3 = 0xED0000747865746ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24A8156A8()
{
  v1 = *v0;
  v2 = 0x7472656C61;
  v3 = 0x6F666E4972657375;
  v4 = 0x6F43737574617473;
  if (v1 != 3)
  {
    v4 = 0x746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43726576726573;
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

unint64_t sub_24A815750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A815AB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A815778(uint64_t a1)
{
  v2 = sub_24A6F4230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8157B4(uint64_t a1)
{
  v2 = sub_24A6F4230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A8157F0(void *a1)
{
  v2 = swift_allocObject();
  sub_24A814C20(a1);
  return v2;
}

uint64_t sub_24A815840()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A8158AC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A8158E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A815954()
{
  result = qword_27EF5F8F0;
  if (!qword_27EF5F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F8F0);
  }

  return result;
}

unint64_t sub_24A8159AC()
{
  result = qword_27EF5F8F8;
  if (!qword_27EF5F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F8F8);
  }

  return result;
}

unint64_t sub_24A815A04()
{
  result = qword_281514248;
  if (!qword_281514248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514248);
  }

  return result;
}

unint64_t sub_24A815A5C()
{
  result = qword_281514250;
  if (!qword_281514250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514250);
  }

  return result;
}

unint64_t sub_24A815AB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A815AFC(char a1)
{
  result = 0x6D614E6C65646F6DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6144664F656D6974;
      break;
    case 3:
      result = 0x4C79726574746162;
      break;
    case 4:
      result = 0x5379726574746162;
      break;
    case 5:
      result = 0x65646F4D74736F6CLL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x7453656369766564;
      break;
    case 8:
      result = 0x6544736968547369;
      break;
    case 9:
      result = 0x6465726168537369;
      break;
    case 10:
      result = 0x6E6E6F4354427369;
      break;
    case 11:
      result = 0x65566D6574737973;
      break;
    case 12:
      result = 0x697461636F4C7369;
      break;
    case 13:
    case 15:
      result = 0x6E6F697461636F6CLL;
      break;
    case 14:
    case 17:
      result = 0xD00000000000001ALL;
      break;
    case 16:
      result = 0x65736F7078457369;
      break;
    case 18:
      result = 0xD000000000000026;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0x74696D736E617274;
      break;
    case 21:
      result = 0xD000000000000019;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 23:
      result = 0x74636166756E616DLL;
      break;
    case 24:
      result = 0x6E694654426E6163;
      break;
    case 25:
      result = 0x6C69617465446E69;
      break;
    case 26:
      result = 0x6570795474726170;
      break;
    case 27:
      result = 0x72616D6972507369;
      break;
    case 28:
      result = 0xD000000000000015;
      break;
    case 29:
      result = 0xD000000000000017;
      break;
    case 30:
      result = 0xD000000000000014;
      break;
    case 31:
      result = 0xD000000000000023;
      break;
    case 32:
    case 34:
      result = 0x57646570756F7267;
      break;
    case 33:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_24A815F74()
{
  v7 = sub_24A82D554();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24A82D534();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24A82CE54();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  sub_24A82CE14();
  v8 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24A82D594();
  qword_281514470 = result;
  return result;
}

id static FMIPAnalytics.sharedAnalytics.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EF5CC50 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_281514470;
  *a1 = qword_281514470;

  return v2;
}

void sub_24A81626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v224 = a3;
  v223 = a2;
  v229 = sub_24A82CA34();
  v234 = *(v229 - 8);
  v4 = MEMORY[0x28223BE20](v229);
  v226 = &v212 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v228 = &v212 - v6;
  v220 = sub_24A82CB04();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v217 = &v212 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_24A82CB24();
  v216 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v215 = &v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v231 = &v212 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v230 = &v212 - v12;
  v13 = type metadata accessor for FMIPDevice(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v212 - v17);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  v20 = sub_24A6797D0(v19, qword_281518F88);
  sub_24A68FF3C(a1, v18, type metadata accessor for FMIPDevice);
  v235 = v20;
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();
  v23 = os_log_type_enabled(v21, v22);
  v212 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock = v25;
    *v24 = 136315138;
    v27 = *v18;
    v26 = v18[1];

    sub_24A69F3E4(v18, type metadata accessor for FMIPDevice);
    v28 = sub_24A68761C(v27, v26, &aBlock);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_24A675000, v21, v22, "FMIPAnalytics: sendDeviceEvent for device (%s)", v24, 0xCu);
    sub_24A6876E8(v25);
    MEMORY[0x24C21E1D0](v25, -1, -1);
    MEMORY[0x24C21E1D0](v24, -1, -1);
  }

  else
  {

    sub_24A69F3E4(v18, type metadata accessor for FMIPDevice);
  }

  if (qword_27EF5CC40 != -1)
  {
    swift_once();
  }

  v30 = *a1;
  v29 = *(a1 + 8);
  swift_beginAccess();
  v31 = qword_281518EB8;
  v32 = *(qword_281518EB8 + 16);
  v33 = 0;
  v222 = v29;
  v221 = v30;
  if (v32 && (v34 = sub_24A6A2D48(v30, v29), (v35 & 1) != 0))
  {
    v36 = (*(v31 + 56) + 24 * v34);
    v37 = *v36;
    v38 = v36[1];
    v39 = v36[2];
    v40 = v36[3];
    v41 = *(v36 + 1);
    v33 = *(v36 + 2);
    v42 = 256;
    if (!v38)
    {
      v42 = 0;
    }

    v43 = v42 | v37;
    v44 = 0x10000;
    if (!v39)
    {
      v44 = 0;
    }

    v45 = v43 | v44 | (v40 << 24);
    v46 = v41;
  }

  else
  {
    v45 = 0;
    v41 = 0;
  }

  swift_endAccess();
  v245 = *(a1 + 256);
  v246 = *(a1 + 264);
  v243 = *(a1 + 280);
  v244 = *(a1 + 288);
  v214 = *(a1 + 216);
  v47 = (v214 >> 5) & 1;
  v48 = *(v13 + 128);
  v49 = v246;
  v50 = v244;
  v51 = v49;
  sub_24A7DC368(&v245, &v243, v47, a1 + v48, &aBlock);

  v53 = aBlock;
  v52 = v238;
  v233 = v239;
  v54 = *(a1 + 288);
  v213 = *(a1 + 280);
  v227 = v54;
  v55 = v238;
  v56 = sub_24A82CD94();
  v57 = sub_24A82D504();

  v58 = os_log_type_enabled(v56, v57);
  v236 = v52;
  if (v58)
  {
    v232 = v55;
    v225 = v41;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock = v60;
    *v59 = 136315138;
    if (v52)
    {
      LOBYTE(v245) = BYTE3(v53);
      v61 = FMIPLocationType.rawValue.getter();
      v63 = v62;
    }

    else
    {
      v63 = 0xEB000000006E6F69;
      v61 = 0x7461636F6C206F6ELL;
    }

    v70 = sub_24A68761C(v61, v63, &aBlock);

    *(v59 + 4) = v70;
    _os_log_impl(&dword_24A675000, v56, v57, "FMIPAnalytics: device location type (%s)", v59, 0xCu);
    sub_24A6876E8(v60);
    MEMORY[0x24C21E1D0](v60, -1, -1);
    MEMORY[0x24C21E1D0](v59, -1, -1);

    v41 = v225;
    v55 = v232;
    v52 = v236;
    if (!v236)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (!v52)
    {
LABEL_26:
      if (!v41)
      {
LABEL_32:
        v80 = v231;
        sub_24A67E964(a1 + v48, v231, &unk_27EF5E0B0, &qword_24A8338B0);
        v81 = type metadata accessor for FMIPItemGroup(0);
        if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
        {

          sub_24A67F378(v80, &unk_27EF5E0B0, &qword_24A8338B0);
          return;
        }

        sub_24A67F378(v80, &unk_27EF5E0B0, &qword_24A8338B0);
        sub_24A818DA8(a1, v223, v224, &unk_285DCE828, sub_24A81C248, &unk_285DCE840);

        goto LABEL_42;
      }

      v69 = v41;
      v71 = v55;
      goto LABEL_28;
    }
  }

  aBlock = v53;
  v238 = v52;
  v239 = v233;
  if (!v41)
  {
    v68 = v55;
    v69 = 0;
LABEL_28:

    goto LABEL_29;
  }

  LOWORD(v245) = v45 & 0x101;
  BYTE2(v245) = BYTE2(v45) & 1;
  BYTE3(v245) = HIBYTE(v45);
  *&v246 = v41;
  *(&v246 + 1) = v33;
  v64 = v55;
  v65 = v41;
  v66 = v64;
  v67 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(&aBlock, &v245);

  if (v67)
  {
    goto LABEL_32;
  }

LABEL_29:
  v72 = v230;
  sub_24A67E964(a1 + v48, v230, &unk_27EF5E0B0, &qword_24A8338B0);
  v73 = type metadata accessor for FMIPItemGroup(0);
  v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
  sub_24A67F378(v72, &unk_27EF5E0B0, &qword_24A8338B0);
  v75 = v236;
  if (v74 != 1)
  {
    goto LABEL_32;
  }

  swift_beginAccess();
  if (v75)
  {
    v76 = *&v233;
    v77 = v55;
    v78 = v222;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v245 = qword_281518EB8;
    sub_24A784C04(v53 & 0xFF010101, v77, v221, v78, isUniquelyReferenced_nonNull_native, v76);

    qword_281518EB8 = v245;
    swift_endAccess();
LABEL_36:
    v232 = v55;
    v233 = v53;
    v83 = sub_24A6AE58C(MEMORY[0x277D84F90]);
    v84 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v85 = sub_24A82CF94();
    v86 = [v84 initWithString_];

    v87 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v83;
    sub_24A6AE690(v86, 0x6D614E6C65646F6DLL, 0xE900000000000065, v87);
    v88 = aBlock;
    v89 = v215;
    sub_24A82CAF4();
    v90 = v219;
    v91 = v217;
    v92 = v220;
    (*(v219 + 104))(v217, *MEMORY[0x277CC9980], v220);
    v93 = v228;
    sub_24A82CA24();
    v94 = sub_24A82CB14();
    v95 = *(v234 + 8);
    v234 += 8;
    v235 = v95;
    v95(v93, v229);
    (*(v90 + 8))(v91, v92);
    (*(v216 + 8))(v89, v218);
    v96 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v97 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v88;
    sub_24A6AE690(v96, 0x6144664F656D6974, 0xE900000000000079, v97);
    v98 = aBlock;
    v99 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v100 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v98;
    sub_24A6AE690(v99, 0x4C79726574746162, 0xEC0000006C657665, v100);
    v101 = aBlock;
    v102 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v103 = sub_24A82CF94();

    v104 = [v102 initWithString_];

    v105 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v101;
    sub_24A6AE690(v104, 0x5379726574746162, 0xED00007375746174, v105);
    v106 = aBlock;
    v107 = v214;
    v108 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v109 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v106;
    sub_24A6AE690(v108, 0x65646F4D74736F6CLL, 0xEF64656C62616E45, v109);
    v110 = aBlock;
    v111 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v112 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v110;
    sub_24A6AE690(v111, 0xD000000000000016, 0x800000024A84AF60, v112);
    v113 = aBlock;
    v114 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v115 = sub_24A82CF94();

    v116 = [v114 initWithString_];

    v117 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v113;
    sub_24A6AE690(v116, 0x7453656369766564, 0xEC00000073757461, v117);
    v118 = aBlock;
    v119 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v120 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v118;
    sub_24A6AE690(v119, 0x6544736968547369, 0xEC00000065636976, v120);
    v121 = aBlock;
    v122 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v123 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v121;
    sub_24A6AE690(v122, 0x6465726168537369, 0xEE00656369766544, v123);
    v124 = aBlock;
    v125 = sub_24A679170(0, &qword_27EF5EF98, 0x277CCABB0);
    v126 = sub_24A82D5C4();
    v127 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v124;
    sub_24A6AE690(v126, 0x6E6E6F4354427369, 0xED00006465746365, v127);
    v128 = aBlock;
    sub_24A679170(0, &qword_27EF5F900, 0x277CCACA8);
    v129 = sub_24A82D614();
    v130 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v128;
    sub_24A6AE690(v129, 0x65566D6574737973, 0xED00006E6F697372, v130);
    v131 = aBlock;
    v132 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v133 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v131;
    sub_24A6AE690(v132, 0x697461636F4C7369, 0xEA0000000000676ELL, v133);
    v134 = aBlock;
    v135 = sub_24A82D5C4();
    v136 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v134;
    sub_24A6AE690(v135, 0x6C69617465446E69, 0xEC00000077656956, v136);
    v137 = aBlock;
    if (v236)
    {
      v138 = v233 >> 24;
      LOBYTE(aBlock) = BYTE3(v233);
      FMIPLocationType.rawValue.getter();
      v236 = v125;
      v139 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v140 = sub_24A82CF94();

      v141 = [v139 initWithString_];

      v142 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v137;
      sub_24A6AE690(v141, 0x6E6F697461636F6CLL, 0xEE00656372756F53, v142);
      v143 = aBlock;
      LOBYTE(aBlock) = v138;
      FMIPLocationType.rawValue.getter();
      v144 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v145 = sub_24A82CF94();

      v146 = [v144 initWithString_];

      v147 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v143;
      sub_24A6AE690(v146, 0xD000000000000017, 0x800000024A84AE20, v147);
      v148 = aBlock;
      v149 = v232;
      [v149 horizontalAccuracy];
      v151 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v152 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v148;
      sub_24A6AE690(v151, 0xD00000000000001ALL, 0x800000024A84AF40, v152);
      v153 = aBlock;
      v154 = v228;
      sub_24A82CA24();
      v155 = [v149 timestamp];
      v225 = v41;
      v156 = v226;
      sub_24A82C9F4();

      sub_24A82C974();
      v158 = v157;
      v159 = v229;
      v235(v156, v229);
      v235(v154, v159);
      v160 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v161 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v153;
      sub_24A6AE690(v160, 0x6E6F697461636F6CLL, 0xEB00000000656741, v161);
      v162 = aBlock;
      v163 = v149;
      [v149 horizontalAccuracy];
      v165 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v166 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v162;
      sub_24A6AE690(v165, 0xD000000000000023, 0x800000024A84AE60, v166);
      v167 = aBlock;
      sub_24A82CA24();
      v168 = [v163 timestamp];
      sub_24A82C9F4();

      sub_24A82C974();
      v170 = v169;
      v171 = v156;
      v41 = v225;
      v235(v171, v159);
      v235(v154, v159);
      v172 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v173 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v167;
      sub_24A6AE690(v172, 0xD000000000000014, 0x800000024A84AE40, v173);
      v174 = aBlock;
      v175 = sub_24A82D5C4();
      v176 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v174;
      sub_24A6AE690(v175, 0x65736F7078457369, 0xE900000000000064, v176);
    }

    else
    {
      v177 = sub_24A82D5C4();
      v178 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v137;
      sub_24A6AE690(v177, 0x65736F7078457369, 0xE900000000000064, v178);
    }

    v179 = aBlock;
    v180 = v227;
    if (v227)
    {
      LOBYTE(aBlock) = BYTE3(v213);
      FMIPLocationType.rawValue.getter();
      v181 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v182 = sub_24A82CF94();

      v183 = [v181 initWithString_];

      v184 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v179;
      sub_24A6AE690(v183, 0xD00000000000001ALL, 0x800000024A84AF20, v184);
      v185 = aBlock;
      v186 = v180;
      [v186 horizontalAccuracy];
      v188 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v189 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v185;
      sub_24A6AE690(v188, 0xD000000000000026, 0x800000024A84AEF0, v189);
      v190 = aBlock;
      v191 = v228;
      sub_24A82CA24();
      v192 = [v186 timestamp];
      v193 = v226;
      sub_24A82C9F4();

      sub_24A82C974();
      v195 = v194;
      v196 = v229;
      v197 = v235;
      v235(v193, v229);
      v197(v191, v196);
      v198 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v199 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v190;
      sub_24A6AE690(v198, 0xD000000000000017, 0x800000024A84AED0, v199);

      v179 = aBlock;
    }

    v200 = v232;
    v201 = sub_24A82CF94();
    v202 = swift_allocObject();
    *(v202 + 16) = v179;
    v241 = sub_24A6D89D4;
    v242 = v202;
    aBlock = MEMORY[0x277D85DD0];
    v238 = 1107296256;
    v239 = sub_24A6AEADC;
    v240 = &unk_285DCE8E0;
    v203 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v203);

    goto LABEL_42;
  }

  v82 = v222;

  sub_24A7C3FB0(v221, v82, &v245);

  swift_endAccess();
  if (v227)
  {
    goto LABEL_36;
  }

  v204 = v212;
  sub_24A68FF3C(a1, v212, type metadata accessor for FMIPDevice);
  v205 = sub_24A82CD94();
  v206 = sub_24A82D504();
  if (os_log_type_enabled(v205, v206))
  {
    v207 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    aBlock = v208;
    *v207 = 136315138;
    v209 = *v204;
    v210 = v204[1];

    sub_24A69F3E4(v204, type metadata accessor for FMIPDevice);
    v211 = sub_24A68761C(v209, v210, &aBlock);

    *(v207 + 4) = v211;
    _os_log_impl(&dword_24A675000, v205, v206, "FMIPAnalytics: cannot complete sendDeviceEvent. Current location and crowdsourced location are both nil.: (%s)", v207, 0xCu);
    sub_24A6876E8(v208);
    MEMORY[0x24C21E1D0](v208, -1, -1);
    MEMORY[0x24C21E1D0](v207, -1, -1);

LABEL_42:
    return;
  }

  sub_24A69F3E4(v204, type metadata accessor for FMIPDevice);
}

uint64_t static FMIPAnalytics.sendItemEvent(item:)(uint64_t a1)
{
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE54();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v16[1] = qword_281514470;
  sub_24A68FF3C(a1, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPItem);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_24A68D6F8(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for FMIPItem);
  aBlock[4] = sub_24A819164;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE720;
  v14 = _Block_copy(aBlock);
  sub_24A82CE24();
  v18 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v8, v5, v14);
  _Block_release(v14);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v17);
}

void sub_24A817F98(double *a1)
{
  v2 = type metadata accessor for FMIPItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);
  sub_24A68FF3C(a1, v4, type metadata accessor for FMIPItem);
  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    v10 = *(v4 + 44);
    v11 = *(v4 + 45);

    sub_24A69F3E4(v4, type metadata accessor for FMIPItem);
    v12 = sub_24A68761C(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24A675000, v6, v7, "FMIPAnalytics: sendItemEvent for item (%s)", v8, 0xCu);
    sub_24A6876E8(v9);
    MEMORY[0x24C21E1D0](v9, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  else
  {

    sub_24A69F3E4(v4, type metadata accessor for FMIPItem);
  }

  if ((*(a1 + *(v2 + 84)) & 1) == 0)
  {
    v13 = sub_24A8191C4(a1);
    v14 = sub_24A6AE58C(MEMORY[0x277D84F90]);
    sub_24A7B83E4(v13, v14);
    v16 = v15;

    if (v16)
    {
    }

    else
    {
      v17 = sub_24A82CF94();
      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      aBlock[4] = sub_24A6AEBB4;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A6AEADC;
      aBlock[3] = &unk_285DCE7F0;
      v19 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v19);
    }
  }
}

uint64_t sub_24A8182AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a2;
  v73 = a3;
  v4 = type metadata accessor for FMIPItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v66 - v9;
  v11 = type metadata accessor for FMIPItemGroup(0);
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v74 = (v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for FMIPDevice(0);
  MEMORY[0x28223BE20](v14);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  sub_24A68FF3C(a1, v16, type metadata accessor for FMIPDevice);
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v78 = v10;
    v21 = v20;
    v22 = swift_slowAlloc();
    v77 = v11;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    v75 = v14;
    v76 = v12;
    v24 = v5;
    v25 = v7;
    v26 = a1;
    v27 = *v16;
    v28 = *(v16 + 8);

    sub_24A69F3E4(v16, type metadata accessor for FMIPDevice);
    v29 = sub_24A68761C(v27, v28, aBlock);
    a1 = v26;
    v7 = v25;
    v5 = v24;
    v14 = v75;

    *(v21 + 4) = v29;
    v12 = v76;
    _os_log_impl(&dword_24A675000, v18, v19, "FMIPAnalytics: sendItemGoupEvent for itemGroup from device (%s)", v21, 0xCu);
    sub_24A6876E8(v23);
    v30 = v23;
    v11 = v77;
    MEMORY[0x24C21E1D0](v30, -1, -1);
    v31 = v21;
    v10 = v78;
    MEMORY[0x24C21E1D0](v31, -1, -1);
  }

  else
  {

    sub_24A69F3E4(v16, type metadata accessor for FMIPDevice);
  }

  sub_24A67E964(a1 + *(v14 + 128), v10, &unk_27EF5E0B0, &qword_24A8338B0);
  v32 = *(v12 + 48);
  v12 += 48;
  if (v32(v10, 1, v11) == 1)
  {
    return sub_24A67F378(v10, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  v34 = v10;
  v35 = v74;
  sub_24A68D6F8(v34, v74, type metadata accessor for FMIPItemGroup);
  v36 = v35[5];
  v37 = *(v36 + 16);
  if (!v37)
  {
    return sub_24A69F3E4(v74, type metadata accessor for FMIPItemGroup);
  }

  v38 = 0;
  v11 = (v36 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
  v39 = *(v5 + 72);
  v66[2] = "isBeaconOnlyDevice";
  v66[1] = v80;
  v70 = v7;
  v71 = a1;
  v68 = v11;
  v69 = v37;
  v67 = v39;
  while (1)
  {
    sub_24A68FF3C(v11 + v39 * v38, v7, type metadata accessor for FMIPItem);
    v40 = sub_24A8191C4(v7);
    sub_24A7B83E4(v40, MEMORY[0x277D84F98]);
    if ((v41 & 1) == 0)
    {
      break;
    }

    sub_24A69F3E4(v7, type metadata accessor for FMIPItem);

LABEL_10:
    if (++v38 == v37)
    {
      return sub_24A69F3E4(v74, type metadata accessor for FMIPItemGroup);
    }
  }

  v76 = v38;
  v10 = _s8FMIPCore13FMIPAnalyticsV26itemGroupSpecificEventInfo6device0cD00C021primaryPartIdentifierSDySSSo8NSObjectCGAA10FMIPDeviceV_AA08FMIPItemD0VAA0N0VSSSgtFZ_0(a1, v74, v7, v72, v73);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v40;
  v7 = (v10 + 64);
  v43 = -1 << v10[32];
  if (-v43 < 64)
  {
    v44 = ~(-1 << -v43);
  }

  else
  {
    v44 = -1;
  }

  a1 = v44 & *(v10 + 8);
  v75 = -1 << v10[32];
  v5 = (63 - v43) >> 6;
  v77 = v10;

  for (i = 0; ; i = v14)
  {
    if (!a1)
    {
      v48 = i;
      while (1)
      {
        v14 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v14 >= v5)
        {
          sub_24A6BAFBC(v77);

          v63 = sub_24A82CF94();
          v64 = swift_allocObject();
          *(v64 + 16) = v40;
          v80[2] = sub_24A6D89D4;
          v80[3] = v64;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v80[0] = sub_24A6AEADC;
          v80[1] = &unk_285DCE890;
          v65 = _Block_copy(aBlock);

          AnalyticsSendEventLazy();
          _Block_release(v65);

          v7 = v70;
          sub_24A69F3E4(v70, type metadata accessor for FMIPItem);
          a1 = v71;
          v11 = v68;
          v37 = v69;
          v38 = v76;
          v39 = v67;
          goto LABEL_10;
        }

        a1 = *&v7[v14];
        ++v48;
        if (a1)
        {
          LODWORD(v78) = isUniquelyReferenced_nonNull_native;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    LODWORD(v78) = isUniquelyReferenced_nonNull_native;
    v14 = i;
LABEL_25:
    v49 = __clz(__rbit64(a1)) | (v14 << 6);
    v50 = (v77[6] + 16 * v49);
    v51 = *v50;
    v10 = v50[1];
    v52 = *(v77[7] + 8 * v49);

    v11 = v52;
    v16 = sub_24A6A2D48(v51, v10);
    v54 = v40[2];
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_37;
    }

    v12 = v53;
    if (v40[3] < v56)
    {
      break;
    }

    if ((v78 & 1) == 0)
    {
      sub_24A78612C();
    }

LABEL_31:
    a1 &= a1 - 1;
    v40 = aBlock[0];
    if (v12)
    {

      v46 = v40[7];
      v47 = *(v46 + 8 * v16);
      *(v46 + 8 * v16) = v11;
    }

    else
    {
      *(aBlock[0] + 8 * (v16 >> 6) + 64) |= 1 << v16;
      v59 = (v40[6] + 16 * v16);
      *v59 = v51;
      v59[1] = v10;
      *(v40[7] + 8 * v16) = v11;
      v60 = v40[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_38;
      }

      v40[2] = v62;
    }

    isUniquelyReferenced_nonNull_native = 1;
  }

  sub_24A781340(v56, v78 & 1);
  v57 = sub_24A6A2D48(v51, v10);
  if ((v12 & 1) == (v58 & 1))
  {
    v16 = v57;
    goto LABEL_31;
  }

  result = sub_24A82DC44();
  __break(1u);
  return result;
}

uint64_t sub_24A818A8C(double a1)
{
  if (a1 <= 5.0)
  {
    return 5;
  }

  if (a1 <= 25.0)
  {
    return 25;
  }

  if (a1 <= 50.0)
  {
    return 50;
  }

  if (a1 <= 75.0)
  {
    return 75;
  }

  if (a1 <= 100.0)
  {
    return 100;
  }

  if (a1 <= 150.0)
  {
    return 150;
  }

  if (a1 <= 200.0)
  {
    return 200;
  }

  v1 = 600;
  v2 = 900;
  v3 = 1600;
  if (a1 <= 1500.0)
  {
    v3 = 1500;
  }

  if (a1 > 900.0)
  {
    v2 = v3;
  }

  if (a1 > 600.0)
  {
    v1 = v2;
  }

  if (a1 > 300.0)
  {
    return v1;
  }

  else
  {
    return 300;
  }
}

uint64_t sub_24A818B9C(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (a1 <= 60.0)
  {
    return 60;
  }

  if (a1 <= 120.0)
  {
    return 120;
  }

  if (a1 <= 180.0)
  {
    return 180;
  }

  if (a1 <= 240.0)
  {
    return 240;
  }

  if (a1 <= 300.0)
  {
    return 300;
  }

  if (a1 <= 420.0)
  {
    return 420;
  }

  if (a1 <= 600.0)
  {
    return 600;
  }

  if (a1 <= 900.0)
  {
    return 900;
  }

  if (a1 <= 1200.0)
  {
    return 1200;
  }

  if (a1 <= 1800.0)
  {
    return 1800;
  }

  if (a1 <= 2400.0)
  {
    return 2400;
  }

  if (a1 <= 3000.0)
  {
    return 3000;
  }

  if (a1 <= 3600.0)
  {
    return 3600;
  }

  if (a1 <= 10800.0)
  {
    return 10800;
  }

  if (a1 <= 21600.0)
  {
    return 21600;
  }

  if (a1 <= 43200.0)
  {
    return 43200;
  }

  if (a1 <= 86400.0)
  {
    return 86400;
  }

  if (a1 > 604800.0)
  {
    return 700000;
  }

  return 604800;
}

uint64_t sub_24A818DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v25[2] = a4;
  v26 = a2;
  v8 = sub_24A82CDF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_24A82CE54();
  v12 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMIPDevice(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF5CC50 != -1)
  {
    swift_once();
  }

  v25[1] = qword_281514470;
  sub_24A68FF3C(a1, v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMIPDevice);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_24A68D6F8(v18, v21 + v19, type metadata accessor for FMIPDevice);
  v22 = (v21 + v20);
  *v22 = v26;
  v22[1] = a3;
  aBlock[4] = v27;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  sub_24A82CE24();
  v30 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v14, v11, v23);
  _Block_release(v23);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v29);
}

void sub_24A819164()
{
  v1 = *(type metadata accessor for FMIPItem(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_24A817F98(v2);
}

void *sub_24A8191C4(double *a1)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v234 = v2;
  v235 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v228 = &v216 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v226 = &v216 - v6;
  v225 = sub_24A82CB04();
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v222 = &v216 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_24A82CB24();
  v221 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v220 = &v216 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for FMIPProductType(0);
  MEMORY[0x28223BE20](v219);
  v231 = (&v216 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  if (qword_27EF5CC48 != -1)
  {
    swift_once();
  }

  v11 = *(a1 + 44);
  v12 = *(a1 + 45);
  swift_beginAccess();
  v13 = qword_27EF78FD0;
  v14 = *(qword_27EF78FD0 + 16);
  v15 = 0;
  v233 = v10;
  v227 = v11;
  if (v14 && (v16 = sub_24A6A2D48(v11, v12), (v17 & 1) != 0))
  {
    v18 = (*(v13 + 56) + 24 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = *(v18 + 1);
    v15 = *(v18 + 2);
    v24 = 256;
    if (!v20)
    {
      v24 = 0;
    }

    v25 = v24 | v19;
    v26 = 0x10000;
    if (!v21)
    {
      v26 = 0;
    }

    v27 = v25 | v26 | (v22 << 24);
    v28 = v23;
  }

  else
  {
    v27 = 0;
    v23 = 0;
  }

  swift_endAccess();
  v29 = *(a1 + 48);
  v30 = *(a1 + 49);
  v232 = a1[50];
  v31 = *(a1 + 40);
  v216 = *(a1 + 39);
  v236 = a1;
  v229 = v31;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v32 = sub_24A82CDC4();
  sub_24A6797D0(v32, qword_281518F88);
  v33 = v30;
  v34 = sub_24A82CD94();
  v35 = sub_24A82D504();

  v36 = os_log_type_enabled(v34, v35);
  v230 = v33;
  if (v36)
  {
    v217 = v12;
    v37 = v23;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v237 = v39;
    *v38 = 136315138;
    v40 = v30;
    if (v30)
    {
      LOBYTE(v242) = BYTE3(v29);
      v41 = FMIPLocationType.rawValue.getter();
      v43 = v42;
    }

    else
    {
      v43 = 0xEB000000006E6F69;
      v41 = 0x7461636F6C206F6ELL;
    }

    v44 = sub_24A68761C(v41, v43, &v237);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_24A675000, v34, v35, "FMIPAnalytics: item location type (%s)", v38, 0xCu);
    sub_24A6876E8(v39);
    MEMORY[0x24C21E1D0](v39, -1, -1);
    MEMORY[0x24C21E1D0](v38, -1, -1);

    v23 = v37;
    v33 = v230;
    v30 = v40;
    v12 = v217;
  }

  else
  {
  }

  v45 = v236;
  v46 = v232;
  if (!v30)
  {
    if (!v23)
    {
      return v233;
    }

    v52 = v23;
    v53 = v33;
LABEL_26:

    swift_beginAccess();
    v217 = v30;
    if (v30)
    {
LABEL_31:
      v55 = v33;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v242 = qword_27EF78FD0;
      sub_24A784C04(v29 & 0xFF010101, v55, v227, v12, isUniquelyReferenced_nonNull_native, v46);

      qword_27EF78FD0 = v242;
      swift_endAccess();
LABEL_32:
      v227 = v29;
      v218 = v23;
      *&v57 = COERCE_DOUBLE(sub_24A679170(0, &qword_27EF5EF98, 0x277CCABB0));
      v58 = sub_24A82D5C4();
      v59 = v233;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v237 = v59;
      sub_24A6AE690(v58, 0xD000000000000012, 0x800000024A84AF80, v60);
      v61 = v237;
      v233 = type metadata accessor for FMIPItem(0);
      v62 = v231;
      sub_24A68FF3C(v45 + *(v233 + 96), v231, type metadata accessor for FMIPProductType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v232 = *&v57;
      if (EnumCaseMultiPayload > 1)
      {
        FMIPProductType.productInformation.getter(&v237);
        v70 = v240;
        if (v240)
        {
          v71 = v241;
          sub_24A67DF6C(&v237, v240);
          (*(v71 + 32))(v70, v71);
          sub_24A6876E8(&v237);
        }

        else
        {
          sub_24A67F378(&v237, &qword_27EF5DF48, &qword_24A839DA0);
        }

        v74 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v75 = sub_24A82CF94();

        v76 = [v74 initWithString_];

        v77 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v61;
        sub_24A6AE690(v76, 0xD000000000000013, 0x800000024A84AE90, v77);
        v78 = v237;
        FMIPProductType.productInformation.getter(&v237);
        v79 = v240;
        if (v240)
        {
          v80 = v241;
          sub_24A67DF6C(&v237, v240);
          (*(v80 + 40))(v79, v80);
          sub_24A6876E8(&v237);
        }

        else
        {
          sub_24A67F378(&v237, &qword_27EF5DF48, &qword_24A839DA0);
        }

        v81 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v82 = sub_24A82CF94();

        v83 = [v81 initWithString_];

        v84 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v78;
        sub_24A6AE690(v83, 0x74636166756E616DLL, 0xEC00000072657275, v84);
        v85 = v237;
        v86 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v87 = sub_24A82CF94();
        v88 = [v86 initWithString_];

        v89 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v85;
        sub_24A6AE690(v88, 0xD000000000000019, 0x800000024A84AEB0, v89);
        v90 = v237;
        sub_24A67F378(v231, &qword_27EF5D360, &unk_24A836200);
LABEL_54:
        FMIPProductType.productInformation.getter(&v237);
        v107 = v240;
        if (v240)
        {
          v108 = v241;
          sub_24A67DF6C(&v237, v240);
          v109 = (*(v108 + 56))(v107, v108);
          sub_24A6876E8(&v237);
          if (v109 >= 0.0)
          {
            if (v109 <= 5.0)
            {
              v110 = 5;
            }

            else
            {
              v111 = 10;
              v112 = 25;
              if (v109 <= 20.0)
              {
                v112 = 20;
              }

              if (v109 > 10.0)
              {
                v111 = v112;
              }

              if (v109 > 8.0)
              {
                v110 = v111;
              }

              else
              {
                v110 = 8;
              }
            }
          }

          else
          {
            v110 = 0;
          }

          v113 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v114 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v90;
          sub_24A6AE690(v113, 0x74696D736E617274, 0xED00007265776F50, v114);
          v90 = v237;
        }

        else
        {
          sub_24A67F378(&v237, &qword_27EF5DF48, &qword_24A839DA0);
        }

        v115 = v220;
        sub_24A82CAF4();
        v116 = v224;
        v117 = v222;
        v118 = v225;
        (*(v224 + 104))(v222, *MEMORY[0x277CC9980], v225);
        v119 = v226;
        sub_24A82CA24();
        v120 = sub_24A82CB14();
        v231 = *(v235 + 8);
        v235 += 8;
        (v231)(v119, v234);
        (*(v116 + 8))(v117, v118);
        (*(v221 + 8))(v115, v223);
        v121 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v122 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v90;
        sub_24A6AE690(v121, 0x6144664F656D6974, 0xE900000000000079, v122);
        v124 = v236;
        v123 = v237;
        v125 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v126 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v123;
        sub_24A6AE690(v125, 0x4C79726574746162, 0xEC0000006C657665, v126);
        v127 = v237;
        sub_24A679170(0, &qword_27EF5F900, 0x277CCACA8);
        v128 = sub_24A82D614();
        v129 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v127;
        sub_24A6AE690(v128, 0x5379726574746162, 0xED00007375746174, v129);
        v130 = v237;
        v131 = *(v124 + *(v233 + 76));
        v132 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v133 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v130;
        sub_24A6AE690(v132, 0x65646F4D74736F6CLL, 0xEF64656C62616E45, v133);
        v134 = v237;
        v135 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v134;
        sub_24A6AE690(v135, 0xD000000000000016, 0x800000024A84AF60, v136);
        v137 = v237;
        v138 = sub_24A82D614();
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v137;
        sub_24A6AE690(v138, 0x7453656369766564, 0xEC00000073757461, v139);
        v140 = v237;
        v141 = sub_24A82D5C4();
        v142 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v140;
        sub_24A6AE690(v141, 0x6544736968547369, 0xEC00000065636976, v142);
        v143 = v237;
        v144 = sub_24A82D5C4();
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v143;
        sub_24A6AE690(v144, 0x6465726168537369, 0xEE00656369766544, v145);
        v146 = v237;
        v147 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v148 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v146;
        sub_24A6AE690(v147, 0x6E6E6F4354427369, 0xED00006465746365, v148);
        v149 = v237;
        v150 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
        v151 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v149;
        sub_24A6AE690(v150, 0x697461636F4C7369, 0xEA0000000000676ELL, v151);
        v152 = v237;
        v153 = sub_24A82D5C4();
        v154 = swift_isUniquelyReferenced_nonNull_native();
        v237 = v152;
        sub_24A6AE690(v153, 0x6C69617465446E69, 0xEC00000077656956, v154);
        v155 = v237;
        if (v217)
        {
          v156 = v227 >> 24;
          LOBYTE(v237) = BYTE3(v227);
          FMIPLocationType.rawValue.getter();
          v157 = objc_allocWithZone(MEMORY[0x277CCACA8]);
          v158 = sub_24A82CF94();

          v159 = [v157 initWithString_];

          v160 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v155;
          sub_24A6AE690(v159, 0x6E6F697461636F6CLL, 0xEE00656372756F53, v160);
          v161 = v237;
          LOBYTE(v237) = v156;
          FMIPLocationType.rawValue.getter();
          v162 = objc_allocWithZone(MEMORY[0x277CCACA8]);
          v163 = sub_24A82CF94();

          v164 = [v162 initWithString_];

          v165 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v161;
          sub_24A6AE690(v164, 0xD000000000000017, 0x800000024A84AE20, v165);
          v166 = v237;
          v167 = v230;
          [v167 horizontalAccuracy];
          v169 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v170 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v166;
          sub_24A6AE690(v169, 0xD00000000000001ALL, 0x800000024A84AF40, v170);
          v171 = v237;
          sub_24A82CA24();
          v172 = [v167 timestamp];
          v173 = v228;
          sub_24A82C9F4();

          sub_24A82C974();
          v175 = v174;
          v176 = v234;
          v177 = v231;
          (v231)(v173, v234);
          v177(v119, v176);
          v178 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v179 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v171;
          sub_24A6AE690(v178, 0x6E6F697461636F6CLL, 0xEB00000000656741, v179);
          v180 = v237;
          v181 = sub_24A82D5C4();
          v182 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v180;
          sub_24A6AE690(v181, 0x65736F7078457369, 0xE900000000000064, v182);
          v183 = v237;
          [v167 horizontalAccuracy];
          v185 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v186 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v183;
          sub_24A6AE690(v185, 0xD000000000000023, 0x800000024A84AE60, v186);
          v187 = v237;
          sub_24A82CA24();
          v188 = [v167 timestamp];
          sub_24A82C9F4();

          sub_24A82C974();
          v190 = v189;
          v177(v173, v176);
          v177(v119, v176);
          v191 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v192 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v187;
          sub_24A6AE690(v191, 0xD000000000000014, 0x800000024A84AE40, v192);

          v51 = v237;
          v193 = v218;
          v194 = v177;
          v195 = v229;
          if (v229)
          {
LABEL_70:
            LOBYTE(v237) = BYTE3(v216);
            FMIPLocationType.rawValue.getter();
            v196 = v51;
            v197 = objc_allocWithZone(MEMORY[0x277CCACA8]);
            v198 = sub_24A82CF94();

            v199 = [v197 initWithString_];

            v200 = swift_isUniquelyReferenced_nonNull_native();
            v237 = v196;
            sub_24A6AE690(v199, 0xD00000000000001ALL, 0x800000024A84AF20, v200);
            v201 = v237;
            v202 = v195;
            [v202 horizontalAccuracy];
            v204 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v205 = swift_isUniquelyReferenced_nonNull_native();
            v237 = v201;
            sub_24A6AE690(v204, 0xD000000000000026, 0x800000024A84AEF0, v205);
            v206 = v237;
            sub_24A82CA24();
            v207 = [v202 timestamp];
            v208 = v228;
            sub_24A82C9F4();

            sub_24A82C974();
            v210 = v209;
            v194(v208, v176);
            v194(v119, v176);
            v211 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v212 = swift_isUniquelyReferenced_nonNull_native();
            v237 = v206;
            sub_24A6AE690(v211, 0xD000000000000017, 0x800000024A84AED0, v212);

            return v237;
          }
        }

        else
        {
          v213 = sub_24A82D5C4();
          v214 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v155;
          sub_24A6AE690(v213, 0x65736F7078457369, 0xE900000000000064, v214);
          v51 = v237;
          v176 = v234;
          v193 = v218;
          v194 = v231;
          v195 = v229;
          if (v229)
          {
            goto LABEL_70;
          }
        }

        return v51;
      }

      sub_24A69F3E4(v62, type metadata accessor for FMIPProductType);
      FMIPProductType.productInformation.getter(&v237);
      v64 = v240;
      if (v240)
      {
        v65 = v241;
        sub_24A67DF6C(&v237, v240);
        v66 = (*(v65 + 32))(v64, v65);
        v68 = v67;

        if ((v68 & 0x2000000000000000) != 0)
        {
          v69 = HIBYTE(v68) & 0xF;
        }

        else
        {
          v69 = v66 & 0xFFFFFFFFFFFFLL;
        }

        sub_24A6876E8(&v237);
        if (!v69)
        {
          goto LABEL_50;
        }
      }

      else
      {
        sub_24A67F378(&v237, &qword_27EF5DF48, &qword_24A839DA0);
      }

      FMIPProductType.productInformation.getter(&v237);
      v72 = v240;
      if (v240)
      {
        v73 = v241;
        sub_24A67DF6C(&v237, v240);
        (*(v73 + 32))(v72, v73);
        sub_24A6876E8(&v237);
      }

      else
      {
        sub_24A67F378(&v237, &qword_27EF5DF48, &qword_24A839DA0);
      }

LABEL_50:
      v91 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v92 = sub_24A82CF94();

      v93 = [v91 initWithString_];

      v94 = swift_isUniquelyReferenced_nonNull_native();
      v237 = v61;
      sub_24A6AE690(v93, 0x6D614E6C65646F6DLL, 0xE900000000000065, v94);
      v95 = v237;
      FMIPProductType.productInformation.getter(&v237);
      v96 = v240;
      if (v240)
      {
        v97 = v241;
        sub_24A67DF6C(&v237, v240);
        (*(v97 + 40))(v96, v97);
        sub_24A6876E8(&v237);
      }

      else
      {
        sub_24A67F378(&v237, &qword_27EF5DF48, &qword_24A839DA0);
      }

      v98 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v99 = sub_24A82CF94();

      v100 = [v98 initWithString_];

      v101 = swift_isUniquelyReferenced_nonNull_native();
      v237 = v95;
      sub_24A6AE690(v100, 0x74636166756E616DLL, 0xEC00000072657275, v101);
      v102 = v237;
      v103 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v104 = sub_24A82CF94();
      v105 = [v103 initWithString_];

      v106 = swift_isUniquelyReferenced_nonNull_native();
      v237 = v102;
      sub_24A6AE690(v105, 0x65566D6574737973, 0xED00006E6F697372, v106);
      v90 = v237;
      goto LABEL_54;
    }

    sub_24A7C3FB0(v227, v12, &v242);

    swift_endAccess();
    if (v229)
    {
      goto LABEL_32;
    }

    return v233;
  }

  v237 = v29;
  v238 = v30;
  v239 = v232;
  if (!v23)
  {
    v54 = v33;
    v52 = 0;
    goto LABEL_26;
  }

  v217 = v30;
  LOWORD(v242) = v27 & 0x101;
  BYTE2(v242) = BYTE2(v27) & 1;
  BYTE3(v242) = HIBYTE(v27);
  v243 = v23;
  v244 = v15;
  v47 = v33;
  v48 = v23;
  v49 = v47;
  v50 = _s8FMIPCore12FMIPLocationV2eeoiySbAC_ACtFZ_0(&v237, &v242);

  if ((v50 & 1) == 0)
  {
    swift_beginAccess();
    goto LABEL_31;
  }

  return v233;
}

void sub_24A81AB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(a1 + *(v14 + 128), v13, &unk_27EF5E0B0, &qword_24A8338B0);
  v15 = type metadata accessor for FMIPItemGroup(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {
    sub_24A67F378(v13, &unk_27EF5E0B0, &qword_24A8338B0);
    return;
  }

  v16 = *(v13 + 6);

  v17 = sub_24A69F3E4(v13, type metadata accessor for FMIPItemGroup);
  MEMORY[0x28223BE20](v17);
  *(&v31 - 2) = a2;
  sub_24A79F6D4(sub_24A81BAA8, (&v31 - 4), v16);
  v19 = v18;

  if (v19)
  {
    v31 = 0;
    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v19 + 56);
    v23 = (v20 + 63) >> 6;

    v32 = 0;
    v33 = 0;
    v24 = 0;
    while (1)
    {
      if (!v22)
      {
        while (1)
        {
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v25 >= v23)
          {

            return;
          }

          v22 = *(v19 + 56 + 8 * v25);
          ++v24;
          if (v22)
          {
            v24 = v25;
            goto LABEL_14;
          }
        }

        __break(1u);
        return;
      }

LABEL_14:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      sub_24A68FF3C(*(v19 + 48) + *(v5 + 72) * (v26 | (v24 << 6)), v10, type metadata accessor for FMIPItem);
      sub_24A68D6F8(v10, v8, type metadata accessor for FMIPItem);
      v27 = &v8[*(v4 + 64)];
      if (*(v27 + 1))
      {
        v28 = v27[32];
        sub_24A69F3E4(v8, type metadata accessor for FMIPItem);
        if (v28 <= 1)
        {
          if (v28)
          {
            goto LABEL_26;
          }
        }

        else if (v28 != 4)
        {
          if (v28 == 2)
          {
            HIDWORD(v32) = 1;
          }

          else
          {
            LODWORD(v32) = 1;
          }
        }
      }

      else
      {
        v29 = &v8[*(v4 + 56)];
        v30 = *v29 == 1702060355 && *(v29 + 1) == 0xE400000000000000;
        if (v30 || (sub_24A82DC04() & 1) != 0)
        {
          sub_24A69F3E4(v8, type metadata accessor for FMIPItem);
LABEL_26:
          v33 = 1;
        }

        else
        {
          sub_24A69F3E4(v8, type metadata accessor for FMIPItem);
        }
      }
    }
  }
}

uint64_t _s8FMIPCore13FMIPAnalyticsV26itemGroupSpecificEventInfo6device0cD00C021primaryPartIdentifierSDySSSo8NSObjectCGAA10FMIPDeviceV_AA08FMIPItemD0VAA0N0VSSSgtFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v100 = a3;
  v102 = a1;
  v8 = sub_24A82CA34();
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v95 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v92 - v11;
  v12 = type metadata accessor for FMIPItem(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A6BBA94(&qword_27EF5D018, &qword_24A830E38);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v101 = &v92 - v20;
  result = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v98 = result;
  v99 = a2;
  v22 = a2[5];
  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_12:
    v27 = v101;
    (*(v13 + 56))(v101, 1, 1, v12);
    if (a5)
    {
LABEL_13:
      sub_24A67E964(v27, v19, &qword_27EF5D018, &qword_24A830E38);
      if ((*(v13 + 48))(v19, 1, v12) == 1)
      {
        sub_24A67F378(v19, &qword_27EF5D018, &qword_24A830E38);
      }

      else
      {
        v28 = *(v19 + 48);
        v29 = *(v19 + 49);
        v30 = v29;
        sub_24A69F3E4(v19, type metadata accessor for FMIPItem);
        if (v29)
        {
          *&v93 = v28;
          goto LABEL_18;
        }
      }
    }

    v31 = v102;
    v105 = *(v102 + 256);
    v93 = *(v102 + 264);
    v106 = v93;
    v103 = *(v102 + 280);
    v92 = *(v102 + 288);
    v104 = v92;
    v32 = (*(v102 + 216) >> 5) & 1;
    v33 = *(type metadata accessor for FMIPDevice(0) + 128);
    v34 = v93;
    v35 = v92;
    v36 = v34;
    sub_24A7DC368(&v105, &v103, v32, v31 + v33, v107);

    v29 = v107[1];
    *&v93 = v107[0];
LABEL_18:
    v37 = v100;
    v38 = v98;
    v39 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v40 = sub_24A82CF94();
    v41 = [v39 initWithString_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v38;
    sub_24A6AE690(v41, 0x6D614E6C65646F6DLL, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v43 = v107[0];
    v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v43;
    sub_24A6AE690(v44, 0x6E694654426E6163, 0xEC000000676E6964, v45);
    v46 = v107[0];
    if (!*(v37 + *(v12 + 64) + 8))
    {
      v47 = (v37 + *(v12 + 56));
      if (*v47 != 1702060355 || v47[1] != 0xE400000000000000)
      {
        sub_24A82DC04();
      }
    }

    v48 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v49 = sub_24A82CF94();

    v50 = [v48 initWithString_];

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v46;
    sub_24A6AE690(v50, 0x6570795474726170, 0xE800000000000000, v51);
    v52 = v107[0];
    if (a5)
    {
      if (*(v37 + 352) == a4 && *(v37 + 360) == a5)
      {
        v53 = 1;
      }

      else
      {
        v53 = sub_24A82DC04();
      }
    }

    else
    {
      v53 = 0;
    }

    v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v52;
    sub_24A6AE690(v54, 0x72616D6972507369, 0xED00007472615079, v55);
    v56 = v107[0];
    v57 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v56;
    sub_24A6AE690(v57, 0xD000000000000015, 0x800000024A84ADE0, v58);
    v59 = v107[0];
    if (v29)
    {
      LOBYTE(v107[0]) = BYTE3(v93);
      FMIPLocationType.rawValue.getter();
      v60 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v61 = sub_24A82CF94();

      v62 = [v60 initWithString_];

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v107[0] = v59;
      sub_24A6AE690(v62, 0xD000000000000017, 0x800000024A84AE20, v63);
      v64 = v107[0];
      v29 = v29;
      v65 = v94;
      sub_24A82CA24();
      v66 = [v29 timestamp];
      v67 = v95;
      sub_24A82C9F4();

      sub_24A82C974();
      v69 = v68;
      v70 = v97;
      v71 = *(v96 + 8);
      v71(v67, v97);
      v71(v65, v70);
      v72 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v107[0] = v64;
      sub_24A6AE690(v72, 0xD000000000000014, 0x800000024A84AE40, v73);
      v74 = v107[0];
      [v29 horizontalAccuracy];
      v76 = sub_24A818A8C(v75);
      v77 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v37 = v100;
      v78 = [v77 initWithInteger_];
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v107[0] = v74;
      sub_24A6AE690(v78, 0xD000000000000023, 0x800000024A84AE60, v79);

      v59 = v107[0];
    }

    sub_24A81AB34(v102, v37);
    v81 = (v80 >> 8) & 1;
    v82 = HIWORD(v80) & 1;
    v83 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v59;
    sub_24A6AE690(v83, 0x57646570756F7267, 0xEF7466654C687469, v84);
    v85 = v107[0];
    v86 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v85;
    sub_24A6AE690(v86, 0xD000000000000010, 0x800000024A84AE00, v87);
    v88 = v107[0];
    v89 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v88;
    sub_24A6AE690(v89, 0x57646570756F7267, 0xEF65736143687469, v90);

    v91 = v107[0];
    sub_24A67F378(v101, &qword_27EF5D018, &qword_24A830E38);
    return v91;
  }

  v24 = 0;
  v25 = v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  while (v24 < *(v22 + 16))
  {
    sub_24A68FF3C(v25 + *(v13 + 72) * v24, v15, type metadata accessor for FMIPItem);
    if (a5)
    {
      v26 = *(v15 + 44) == a4 && *(v15 + 45) == a5;
      if (v26 || (sub_24A82DC04() & 1) != 0)
      {
        v27 = v101;
        sub_24A68D6F8(v15, v101, type metadata accessor for FMIPItem);
        (*(v13 + 56))(v27, 0, 1, v12);
        goto LABEL_13;
      }
    }

    ++v24;
    result = sub_24A69F3E4(v15, type metadata accessor for FMIPItem);
    if (v23 == v24)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A81BA14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24A81BA5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A81BAA8(uint64_t *a1)
{
  v2 = *a1;
  v5[2] = *(v1 + 16);
  sub_24A7FD9FC(sub_24A81BAF0, v5, v2);
  return v3 & 1;
}

uint64_t sub_24A81BAF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 352) == *(v2 + 352) && *(a1 + 360) == *(v2 + 360))
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04() & 1;
  }
}

uint64_t sub_24A81BB48()
{
  v1 = type metadata accessor for FMIPDevice(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v35 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  if (*(v0 + v3 + 472))
  {
  }

  v5 = v4 + v1[28];
  v6 = type metadata accessor for FMIPPlaySoundMetadata(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = *(v6 + 20);
    v8 = sub_24A82CA34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = v4 + v1[29];
  v10 = type metadata accessor for FMIPDeviceLostModeMetadata(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = *(v10 + 48);
    v12 = sub_24A82CA34();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  v13 = v4 + v1[30];
  v14 = type metadata accessor for FMIPLockMetadata(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = *(v14 + 20);
    v16 = sub_24A82CA34();
    (*(*(v16 - 8) + 8))(v13 + v15, v16);
  }

  v17 = v4 + v1[31];
  v18 = type metadata accessor for FMIPEraseMetadata(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *(v18 + 20);
    v20 = sub_24A82CA34();
    (*(*(v20 - 8) + 8))(v17 + v19, v20);
  }

  v21 = v4 + v1[32];
  v22 = type metadata accessor for FMIPItemGroup(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {

    v23 = v21 + *(v22 + 48);
    v24 = type metadata accessor for FMIPItemLostModeMetadata(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = sub_24A82CA34();
      (*(*(v26 - 8) + 8))(v23 + v25, v26);
    }
  }

  v27 = v1[39];
  v28 = sub_24A82CA34();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (!v30(v4 + v27, 1, v28))
  {
    (*(v29 + 8))(v4 + v27, v28);
  }

  v31 = v1[40];
  if (!v30(v4 + v31, 1, v28))
  {
    (*(v29 + 8))(v4 + v31, v28);
  }

  v32 = v1[41];
  if (!v30(v4 + v32, 1, v28))
  {
    (*(v29 + 8))(v4 + v32, v28);
  }

  v33 = v1[42];
  if (!v30(v4 + v33, 1, v28))
  {
    (*(v29 + 8))(v4 + v33, v28);
  }

  return MEMORY[0x2821FE8E8](v0, ((v35 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24A81C260(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for FMIPDevice(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_24A81C320(uint64_t a1, char a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32[-v5];
  v7 = type metadata accessor for FMIPDevice(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v11 = OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice;
  swift_beginAccess();
  sub_24A7718EC(v2 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24A77195C(v6);
LABEL_4:
    v12 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  sub_24A6CAF68(v6, v10);
  sub_24A6BBA94(&qword_27EF5D5D0, qword_24A837A80);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24A8327A0;
  sub_24A6CAF68(v10, v12 + v13);
LABEL_6:
  type metadata accessor for FMIPInitClientRequest(0);
  if (swift_dynamicCastClass())
  {
    sub_24A771344(v12);
    v15 = v14;

    v16 = *(v2 + 16);
    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    v19 = *(v16 + 48);
    v20 = *(v16 + 80);
    v37 = *(v16 + 64);
    v38 = v20;
    v39 = *(v16 + 96);
    v35 = v18;
    v36 = v19;
    v34 = v17;
    v21 = *(v16 + 112);
    type metadata accessor for FMIPUserInfoResponseFragment();
    v22 = swift_allocObject();
    memmove((v22 + 16), (v16 + 16), 0x58uLL);
    *(v22 + 104) = v21;
    type metadata accessor for FMIPInitClientResponse();
  }

  else
  {
    type metadata accessor for FMIPRefreshClientRequest(0);
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_24A771344(v12);
    v15 = v23;

    v24 = *(v2 + 16);
    v25 = *(v24 + 16);
    v26 = *(v24 + 32);
    v27 = *(v24 + 48);
    v28 = *(v24 + 80);
    v37 = *(v24 + 64);
    v38 = v28;
    v39 = *(v24 + 96);
    v35 = v26;
    v36 = v27;
    v34 = v25;
    v29 = *(v24 + 112);
    type metadata accessor for FMIPUserInfoResponseFragment();
    v22 = swift_allocObject();
    memmove((v22 + 16), (v24 + 16), 0x58uLL);
    *(v22 + 104) = v29;
    type metadata accessor for FMIPRefreshClientResponse();
  }

  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = v22;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  *(v30 + 48) = 200;
  *(v30 + 56) = v15;
  sub_24A6EF948(&v34, v33);

  return v30;
}

void *sub_24A81C648(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v18 = a1;
  v19 = a2;
  v17 = sub_24A82D554();
  v4 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82D534();
  MEMORY[0x28223BE20](v7);
  v8 = sub_24A82CE54();
  MEMORY[0x28223BE20](v8 - 8);
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v9 = sub_24A67B054();
  v16[0] = "request handler ";
  v16[1] = v9;
  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v17);
  v10 = sub_24A82D594();
  v2[12] = MEMORY[0x277D84F98];
  v11 = v18;
  v2[4] = v10;
  v2[5] = v11;
  sub_24A696E80(v19, (v2 + 6));
  type metadata accessor for FMIPDemoDataInjector(0);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice;
  v14 = type metadata accessor for FMIPDevice(0);
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *(v12 + 16) = v11;
  v3[11] = v12;

  return v3;
}

uint64_t sub_24A81C940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24A82CDF4();
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A82CE54();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 32);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = v15;
  aBlock[4] = sub_24A81E558;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE9B0;
  v17 = _Block_copy(aBlock);

  sub_24A82CE24();
  v22 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v14, v11, v17);
  _Block_release(v17);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_24A81CC54(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_24A6BBA94(&qword_27EF5DF08, &qword_24A837770);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v99 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v100 = (&v95 - v14);
  MEMORY[0x28223BE20](v13);
  v16 = &v95 - v15;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  v18 = sub_24A6797D0(v17, qword_281518F88);

  v102 = v18;
  v19 = sub_24A82CD94();
  v20 = sub_24A82D504();

  v21 = os_log_type_enabled(v19, v20);
  v101 = v16;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v103[0] = v98;
    *v22 = 136315138;
    v23 = sub_24A82DDB4();
    v25 = a1;
    v26 = a2;
    v27 = a5;
    v28 = a3;
    v29 = a4;
    v30 = sub_24A68761C(v23, v24, v103);

    *(v22 + 4) = v30;
    a4 = v29;
    a3 = v28;
    a5 = v27;
    a2 = v26;
    a1 = v25;
    _os_log_impl(&dword_24A675000, v19, v20, "FMIPDemoInteractionController: Handling %s.", v22, 0xCu);
    v31 = v98;
    sub_24A6876E8(v98);
    MEMORY[0x24C21E1D0](v31, -1, -1);
    MEMORY[0x24C21E1D0](v22, -1, -1);
  }

  v32 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v33 = swift_allocObject();
  v33[2] = a5;
  v33[3] = v32;
  v33[4] = a2;
  v33[5] = a3;
  v33[6] = a1;
  v34 = swift_allocObject();
  v34[2] = a5;
  v34[3] = a2;
  v34[4] = a3;
  v108 = a1;
  v109 = sub_24A81E5C0;
  v110 = v34;
  type metadata accessor for FMIPBaseRequest(255);
  sub_24A82D634();
  swift_retain_n();
  swift_retain_n();
  sub_24A6CCDC0(&qword_27EF5D468, &qword_24A832790);
  swift_getFunctionTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24A6BBA94(&qword_27EF5F910, &qword_24A8419A0);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_24A698230(Strong + 48, v103);

      v36 = v104;
      v37 = v105;
      sub_24A67DF6C(v103, v104);
      (*(v37 + 56))(a1, sub_24A81E5B0, v33, a5, v36, v37);
LABEL_8:

LABEL_9:

      sub_24A6876E8(v103);
LABEL_63:
    }

LABEL_61:

    goto LABEL_62;
  }

  v38 = swift_allocObject();
  v38[2] = a5;
  v38[3] = a2;
  v38[4] = a3;
  v108 = a1;
  v109 = sub_24A81E658;
  v110 = v38;

  sub_24A6BBA94(&qword_27EF5F918, &qword_24A8419A8);
  if (swift_dynamicCast())
  {
    v96 = a5;
    v98 = a2;

    v97 = v107;
    v99 = v106;
    v39 = v101;
    sub_24A7718EC(v106 + qword_281518E68, v101);
    v40 = type metadata accessor for FMIPDevice(0);
    v41 = *(*(v40 - 8) + 48);
    if (v41(v39, 1, v40) == 1)
    {
      sub_24A77195C(v39);
      v95 = 0;
      v42 = 0;
    }

    else
    {
      v42 = v39[1];
      v95 = *v39;

      sub_24A6FE094(v39);
    }

    swift_beginAccess();
    v61 = swift_weakLoadStrong();
    if (v61)
    {
      v101 = a4;
      v62 = *(v61 + 88);

      v63 = OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice;
      swift_beginAccess();
      v64 = v62 + v63;
      v65 = v100;
      sub_24A7718EC(v64, v100);

      if (v41(v65, 1, v40) == 1)
      {
        sub_24A77195C(v65);
        v66 = 0;
        v67 = 0;
      }

      else
      {
        v66 = *v65;
        v67 = v65[1];

        sub_24A6FE094(v65);
      }

      v75 = v98;
      if (v42)
      {
LABEL_35:
        if (v67)
        {
          if (v95 == v66 && v42 == v67)
          {

            goto LABEL_45;
          }

          v79 = sub_24A82DC04();

          if (v79)
          {
LABEL_45:
            swift_beginAccess();
            v80 = swift_weakLoadStrong();
            if (v80)
            {
              sub_24A698230(v80 + 48, v103);

              v81 = v104;
              v82 = v105;
              sub_24A67DF6C(v103, v104);
              (*(v82 + 56))(a1, sub_24A81E5B0, v33, v96, v81, v82);

              goto LABEL_9;
            }

            goto LABEL_47;
          }

LABEL_40:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {

            v76 = sub_24A81C320(a1, 1);

            if (v76)
            {
              v77 = swift_dynamicCastClass();
              if (v77)
              {
                v78 = v77;

                (v75)(v78, 0);

LABEL_47:

LABEL_56:

LABEL_62:

                goto LABEL_63;
              }
            }
          }

          v85 = sub_24A82CD94();
          v86 = sub_24A82D504();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&dword_24A675000, v85, v86, "FMIPDemoInteractionController: Unable to create a fake response for refresh request with selected device.", v87, 2u);
            MEMORY[0x24C21E1D0](v87, -1, -1);
          }

          sub_24A81E504();
          v88 = swift_allocError();
          *v89 = 1;
          (v75)(0, v88);

          goto LABEL_56;
        }

LABEL_39:

        goto LABEL_40;
      }
    }

    else
    {
      v66 = 0;
      v67 = 0;
      v75 = v98;
      if (v42)
      {
        goto LABEL_35;
      }
    }

    if (!v67)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  v43 = swift_allocObject();
  v43[2] = a5;
  v43[3] = a2;
  v43[4] = a3;
  v108 = a1;
  v109 = sub_24A81E658;
  v110 = v43;
  sub_24A6BBA94(&qword_27EF5F920, &qword_24A8419B0);
  if (swift_dynamicCast())
  {
    v97 = v107;
    v100 = v106;
    v44 = *(v106 + qword_27EF78F00);
    v45 = *(v106 + qword_27EF78F00 + 8);
    swift_beginAccess();
    v46 = swift_weakLoadStrong();
    if (v46)
    {
      v47 = a4;
      v48 = *(v46 + 88);

      v49 = OBJC_IVAR____TtC8FMIPCore20FMIPDemoDataInjector_hostDevice;
      swift_beginAccess();
      v50 = v48 + v49;
      v51 = v99;
      sub_24A7718EC(v50, v99);

      v52 = type metadata accessor for FMIPDevice(0);
      if ((*(*(v52 - 8) + 48))(v51, 1, v52) != 1)
      {
        v98 = a2;
        v84 = *v51;
        v83 = v51[1];

        sub_24A6FE094(v51);
        if (v44 == v84 && v45 == v83)
        {

          a2 = v98;
        }

        else
        {
          v90 = sub_24A82DC04();

          a4 = v47;
          a2 = v98;
          if ((v90 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_beginAccess();
        v91 = swift_weakLoadStrong();
        if (v91)
        {
          sub_24A698230(v91 + 48, v103);

          v92 = v104;
          v93 = v105;
          sub_24A67DF6C(v103, v104);
          (*(v93 + 56))(a1, a2, a3, a5, v92, v93);

          goto LABEL_8;
        }

        goto LABEL_61;
      }

      sub_24A77195C(v51);
      a4 = v47;
    }

LABEL_17:

    v53 = sub_24A82CD94();
    v54 = sub_24A82D504();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v101 = a4;
      v57 = v56;
      v103[0] = v56;
      *v55 = 136315138;
      v58 = sub_24A82DDB4();
      v60 = sub_24A68761C(v58, v59, v103);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_24A675000, v53, v54, "FMIPDemoInteractionController: Received %s for non-host device, which is unsupported in demo mode.", v55, 0xCu);
      sub_24A6876E8(v57);
      MEMORY[0x24C21E1D0](v57, -1, -1);
      MEMORY[0x24C21E1D0](v55, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24A81DF18(a2);
    }

    goto LABEL_62;
  }

  v98 = a2;

  v68 = sub_24A82CD94();
  v69 = sub_24A82D504();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v103[0] = v71;
    *v70 = 136315138;
    v72 = sub_24A82DDB4();
    v74 = sub_24A68761C(v72, v73, v103);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_24A675000, v68, v69, "FMIPDemoInteractionController: Received %s, which is unsupported in demo mode.", v70, 0xCu);
    sub_24A6876E8(v71);
    MEMORY[0x24C21E1D0](v71, -1, -1);
    MEMORY[0x24C21E1D0](v70, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24A81DF18(v98);
  }
}

uint64_t sub_24A81DC00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_24A770FE0(a1, a7);
      v12 = v11;
    }

    else
    {

      v12 = 0;
    }

    a4(v12, a2);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v14 = sub_24A81C320(a6, 0);

      if (v14)
      {
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = v15;

          a4(v16, 0);
        }
      }
    }

    if (a2)
    {
      swift_getErrorValue();
      v18 = sub_24A82DC74();
      v20 = v19;
    }

    else
    {
      v20 = 0xED0000726F727265;
      v18 = 0x206E776F6E6B6E75;
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v21 = sub_24A82CDC4();
    sub_24A6797D0(v21, qword_281518F88);

    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      v26 = sub_24A68761C(v18, v20, &v27);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_24A675000, v22, v23, "FMIPDemoInteractionController: Request failed due to %s.", v24, 0xCu);
      sub_24A6876E8(v25);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    else
    {
    }

    return (a4)(0, a2);
  }
}

void sub_24A81DF18(void (*a1)(void, void *))
{
  sub_24A81DF98();
  sub_24A81E504();
  v2 = swift_allocError();
  *v3 = 1;
  a1(0, v2);
}

uint64_t sub_24A81DF98()
{
  v0 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - v4;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_24A82C6F4();
  v11 = v10;

  v12 = [v7 bundleForClass_];
  v13 = sub_24A82C6F4();
  v15 = v14;

  v16 = sub_24A82C8B4();
  v17 = *(*(v16 - 8) + 56);
  v17(v5, 1, 1, v16);
  v17(v3, 1, 1, v16);
  type metadata accessor for FMIPAlert(0);
  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = v11;
  v18[4] = 0;
  v18[5] = 0;
  v18[6] = v13;
  v18[7] = v15;
  v19 = (v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
  *v19 = 0;
  v19[1] = 0;
  sub_24A696DA0(v5, v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);
  sub_24A696DA0(v3, v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  *(v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  sub_24A81E3AC(v18, Strong);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A81E254()
{
  sub_24A6BAF88(v0 + 16);

  sub_24A6876E8((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_24A81E2D8(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_24A81E350()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);
  sub_24A67DF6C((*v0 + 48), v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_24A81E3AC(uint64_t a1, uint64_t a2)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPManager: didReceive server alert", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 72))(a2, a1, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_24A81E504()
{
  result = qword_27EF5F908;
  if (!qword_27EF5F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F908);
  }

  return result;
}

uint64_t sub_24A81E568()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_24A81E604()
{
  result = qword_27EF5F928;
  if (!qword_27EF5F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F928);
  }

  return result;
}

FMIPCore::FMWindowStatePrefKeys_optional __swiftcall FMWindowStatePrefKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

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

uint64_t FMWindowStatePrefKeys.rawValue.getter()
{
  if (*v0)
  {
    return 0x6956776F646E6977;
  }

  else
  {
    return 0x736F4D746E6F7266;
  }
}

uint64_t sub_24A81E714(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6956776F646E6977;
  }

  else
  {
    v3 = 0x736F4D746E6F7266;
  }

  if (v2)
  {
    v4 = 0xEF776F646E695774;
  }

  else
  {
    v4 = 0xED0000656C626973;
  }

  if (*a2)
  {
    v5 = 0x6956776F646E6977;
  }

  else
  {
    v5 = 0x736F4D746E6F7266;
  }

  if (*a2)
  {
    v6 = 0xED0000656C626973;
  }

  else
  {
    v6 = 0xEF776F646E695774;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

unint64_t sub_24A81E7D8()
{
  result = qword_27EF5F930;
  if (!qword_27EF5F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F930);
  }

  return result;
}

uint64_t sub_24A81E82C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A81E8C8(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A81E950(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A81E9E8@<X0>(char *a2@<X8>)
{
  v3 = sub_24A82D9C4();

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

void sub_24A81EA48(uint64_t *a1@<X8>)
{
  v2 = 0x736F4D746E6F7266;
  if (*v1)
  {
    v2 = 0x6956776F646E6977;
  }

  v3 = 0xEF776F646E695774;
  if (*v1)
  {
    v3 = 0xED0000656C626973;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t type metadata accessor for FMIPNotifyRequest(uint64_t a1)
{
  result = qword_27EF5F938;
  if (!qword_27EF5F938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A81EB4C()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78FD8);
  v4 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v3 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8);
  v16 = MEMORY[0x277D837D0];
  *&v15 = v4;
  *(&v15 + 1) = v3;
  v5 = qword_27EF5D920;
  v6 = *(v0 + qword_27EF5D920);

  os_unfair_lock_lock(v6 + 6);

  os_unfair_lock_unlock(v6 + 6);

  sub_24A6A50DC(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v14, 0x656369766564, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v8 = *(v1 + v5);

  os_unfair_lock_lock((v8 + 24));
  sub_24A6A3D28((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));

  v9 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled);
  v16 = MEMORY[0x277D839B0];
  LOBYTE(v15) = v9;
  v10 = *(v1 + v5);

  os_unfair_lock_lock(v10 + 6);

  os_unfair_lock_unlock(v10 + 6);

  sub_24A6A50DC(&v15, v14);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A4F8C(v14, 0x646E756F46636F6CLL, 0xEF64656C62616E45, v11);
  v12 = *(v1 + v5);

  os_unfair_lock_lock((v12 + 24));
  sub_24A6FF740((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));
}

uint64_t sub_24A81ED6C()
{
  sub_24A6F8F90();

  return swift_deallocClassInstance();
}

uint64_t sub_24A81EE0C(uint64_t a1)
{
  sub_24A82D094();
}

unint64_t sub_24A81EEF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A81F138(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A81EF28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006F72;
  v4 = 0x506B6F6F6263616DLL;
  v5 = 0xE500000000000000;
  v6 = 0x6863746177;
  v7 = 0x6F725063614D69;
  if (v2 != 4)
  {
    v7 = 0x73646F70726961;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656E6F685069;
  if (v2 != 1)
  {
    v9 = 1684099177;
    v8 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_24A81F090()
{
  result = qword_27EF5F948;
  if (!qword_27EF5F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F948);
  }

  return result;
}

unint64_t sub_24A81F0E4()
{
  result = qword_27EF5F950;
  if (!qword_27EF5F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F950);
  }

  return result;
}

unint64_t sub_24A81F138(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A81F184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A81F1CC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_24A81F22C()
{
  if (*v0)
  {
    return 0x726F68636E61;
  }

  else
  {
    return 0x61746144636E7973;
  }
}

uint64_t sub_24A81F264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746144636E7973 && a2 == 0xE800000000000000;
  if (v6 || (sub_24A82DC04() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();

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

uint64_t sub_24A81F33C(uint64_t a1)
{
  v2 = sub_24A820BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A81F378(uint64_t a1)
{
  v2 = sub_24A820BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A81F3B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24A81FA94(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_24A81F400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A82DC04();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A81F490(uint64_t a1)
{
  v2 = sub_24A821178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A81F4CC(uint64_t a1)
{
  v2 = sub_24A821178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A81F508@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F9A8, &qword_24A842318);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A821178();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v9 = sub_24A82DA44();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_24A6876E8(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_24A81F684()
{
  v1 = 0x72694672656E776FLL;
  if (*v0 != 1)
  {
    v1 = 0x73656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73614C72656E776FLL;
  }
}

uint64_t sub_24A81F6F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A81FCC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A81F720(uint64_t a1)
{
  v2 = sub_24A820EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A81F75C(uint64_t a1)
{
  v2 = sub_24A820EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A81F798@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A81FDEC(a2, v6);
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

unint64_t sub_24A81F7E0()
{
  v1 = 0xD00000000000001CLL;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_24A81F850@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A82008C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A81F878(uint64_t a1)
{
  v2 = sub_24A820B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A81F8B4(uint64_t a1)
{
  v2 = sub_24A820B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A81F8F0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24A8201FC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_24A81F928()
{
  v1 = 0x614E656369766564;
  if (*v0 != 1)
  {
    v1 = 0x6F43737574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_24A81F9A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A8203E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A81F9C8(uint64_t a1)
{
  v2 = sub_24A820814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A81FA04(uint64_t a1)
{
  v2 = sub_24A820814();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_24A81FA40@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A820518(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_24A81FA94(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5F970, &qword_24A841F10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_24A67DF6C(a1, v7);
  sub_24A820BC0();
  sub_24A82DD64();
  if (!v1)
  {
    sub_24A6BBA94(&qword_27EF5F978, qword_24A841F18);
    v9[7] = 0;
    sub_24A820EFC(&unk_2815146F0, &qword_27EF5F978, qword_24A841F18, sub_24A820C14);
    sub_24A82DA84();
    v7 = v10;
    v9[6] = 1;
    sub_24A82DA44();
    (*(v4 + 8))(v6, v3);
  }

  sub_24A6876E8(a1);
  return v7;
}

uint64_t sub_24A81FCC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73614C72656E776FLL && a2 == 0xED0000656D614E74;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72694672656E776FLL && a2 == 0xEE00656D614E7473 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A81FDEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F990, &qword_24A842198);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A820EA8();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v22 = 0;
  v9 = sub_24A82DA44();
  v11 = v10;
  v18 = v9;
  v21 = 1;
  v16 = sub_24A82DA44();
  v17 = v12;
  sub_24A6BBA94(&qword_27EF5F998, qword_24A8421A0);
  v20 = 2;
  sub_24A820EFC(&qword_2815146E8, &qword_27EF5F998, qword_24A8421A0, sub_24A820F78);
  sub_24A82DA84();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  result = sub_24A6876E8(a1);
  *a2 = v18;
  a2[1] = v11;
  v15 = v17;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v13;
  return result;
}

uint64_t sub_24A82008C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x800000024A84B140 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024A84B160 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024A84B180 == a2 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024A84B1A0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_24A82DC04();

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

uint64_t sub_24A8201FC(void *a1)
{
  v2 = sub_24A6BBA94(&qword_27EF5F968, &qword_24A841F08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A820B6C();
  sub_24A82DD64();
  v12 = 0;
  v6 = sub_24A82DA74();
  v11 = 1;
  sub_24A82DA74();
  v10 = 2;
  sub_24A82DA74();
  v9 = 3;
  sub_24A82DA54();
  (*(v3 + 8))(v5, v2);
  sub_24A6876E8(a1);
  return v6;
}

uint64_t sub_24A8203E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEE00636E7953656DLL || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A820518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F958, &qword_24A841D20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A820814();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  LOBYTE(v32) = 0;
  sub_24A820868();
  sub_24A82DA84();
  v30 = v38;
  v31 = v37;
  v9 = v39;
  v10 = v40;
  LOBYTE(v32) = 1;
  sub_24A8208BC();
  sub_24A82DA84();
  v46 = v10;
  v29 = v9;
  v11 = v37;
  v28 = v38;
  v12 = v39;
  v47 = 2;
  v13 = sub_24A82DA44();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  v17 = v11;
  v27 = v11;
  v18 = v29;
  v19 = v30;
  *&v32 = v31;
  *(&v32 + 1) = v30;
  *&v33 = v29;
  v20 = v12;
  v26 = v12;
  LOBYTE(v12) = v46;
  BYTE8(v33) = v46;
  v34 = __PAIR128__(v28, v17);
  v21 = v28;
  *&v35 = v20;
  *(&v35 + 1) = v13;
  v36 = v16;
  sub_24A7F21E4(&v32, &v37);
  sub_24A6876E8(a1);
  v37 = v31;
  v38 = v19;
  v39 = v18;
  v40 = v12;
  v41 = v27;
  v42 = v21;
  v43 = v26;
  v44 = v13;
  v45 = v16;
  result = sub_24A7F2240(&v37);
  v23 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v23;
  *(a2 + 64) = v36;
  v24 = v33;
  *a2 = v32;
  *(a2 + 16) = v24;
  return result;
}

unint64_t sub_24A820814()
{
  result = qword_281514DC8[0];
  if (!qword_281514DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281514DC8);
  }

  return result;
}

unint64_t sub_24A820868()
{
  result = qword_281514C18;
  if (!qword_281514C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514C18);
  }

  return result;
}

unint64_t sub_24A8208BC()
{
  result = qword_281514EB8;
  if (!qword_281514EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514EB8);
  }

  return result;
}

uint64_t sub_24A820920(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24A820968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A8209B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24A820A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24A820A68()
{
  result = qword_27EF5F960;
  if (!qword_27EF5F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F960);
  }

  return result;
}

unint64_t sub_24A820AC0()
{
  result = qword_281514DB8;
  if (!qword_281514DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514DB8);
  }

  return result;
}

unint64_t sub_24A820B18()
{
  result = qword_281514DC0;
  if (!qword_281514DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514DC0);
  }

  return result;
}

unint64_t sub_24A820B6C()
{
  result = qword_281514C30;
  if (!qword_281514C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514C30);
  }

  return result;
}

unint64_t sub_24A820BC0()
{
  result = qword_281514ED0;
  if (!qword_281514ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514ED0);
  }

  return result;
}

unint64_t sub_24A820C14()
{
  result = qword_2815159D8;
  if (!qword_2815159D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815159D8);
  }

  return result;
}

unint64_t sub_24A820C9C()
{
  result = qword_27EF5F980;
  if (!qword_27EF5F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F980);
  }

  return result;
}

unint64_t sub_24A820CF4()
{
  result = qword_27EF5F988;
  if (!qword_27EF5F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F988);
  }

  return result;
}

unint64_t sub_24A820D4C()
{
  result = qword_281514EC0;
  if (!qword_281514EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514EC0);
  }

  return result;
}

unint64_t sub_24A820DA4()
{
  result = qword_281514EC8;
  if (!qword_281514EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514EC8);
  }

  return result;
}

unint64_t sub_24A820DFC()
{
  result = qword_281514C20;
  if (!qword_281514C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514C20);
  }

  return result;
}

unint64_t sub_24A820E54()
{
  result = qword_281514C28;
  if (!qword_281514C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514C28);
  }

  return result;
}

unint64_t sub_24A820EA8()
{
  result = qword_2815159F0;
  if (!qword_2815159F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815159F0);
  }

  return result;
}

uint64_t sub_24A820EFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A820F78()
{
  result = qword_281515060;
  if (!qword_281515060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281515060);
  }

  return result;
}

uint64_t sub_24A820FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24A821024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A821074()
{
  result = qword_27EF5F9A0;
  if (!qword_27EF5F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9A0);
  }

  return result;
}

unint64_t sub_24A8210CC()
{
  result = qword_2815159E0;
  if (!qword_2815159E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815159E0);
  }

  return result;
}

unint64_t sub_24A821124()
{
  result = qword_2815159E8;
  if (!qword_2815159E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815159E8);
  }

  return result;
}

unint64_t sub_24A821178()
{
  result = qword_281515078[0];
  if (!qword_281515078[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281515078);
  }

  return result;
}

unint64_t sub_24A8211E0()
{
  result = qword_27EF5F9B0;
  if (!qword_27EF5F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9B0);
  }

  return result;
}

unint64_t sub_24A821238()
{
  result = qword_281515068;
  if (!qword_281515068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281515068);
  }

  return result;
}

unint64_t sub_24A821290()
{
  result = qword_281515070;
  if (!qword_281515070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281515070);
  }

  return result;
}

uint64_t sub_24A8212E8(uint64_t a1)
{
  v3 = type metadata accessor for FMIPItem(0);
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v26 = v1;
  v34 = MEMORY[0x277D84F90];
  sub_24A6FCC9C(0, v5, 0);
  v6 = v34;
  v33 = a1 + 56;
  result = sub_24A82D6C4();
  v8 = result;
  v9 = 0;
  v27 = a1 + 64;
  v28 = v5;
  v29 = v3;
  v10 = v31;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v33 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_29;
    }

    v32 = *(a1 + 36);
    sub_24A68FD9C(*(a1 + 48) + *(v30 + 72) * v8, v10, type metadata accessor for FMIPItem);
    v13 = v10 + *(v3 + 64);
    if (*(v13 + 8))
    {
      v14 = *(v13 + 32);
    }

    else
    {
      v15 = (v10 + *(v3 + 56));
      if (*v15 == 1702060355 && v15[1] == 0xE400000000000000)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_24A82DC04() & 1;
      }
    }

    result = sub_24A69016C(v10, type metadata accessor for FMIPItem);
    v34 = v6;
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_24A6FCC9C((v17 > 1), v18 + 1, 1);
      v6 = v34;
    }

    *(v6 + 16) = v18 + 1;
    *(v6 + v18 + 32) = v14;
    v11 = 1 << *(a1 + 32);
    if (v8 >= v11)
    {
      goto LABEL_30;
    }

    v19 = *(v33 + 8 * v12);
    if ((v19 & (1 << v8)) == 0)
    {
      goto LABEL_31;
    }

    if (v32 != *(a1 + 36))
    {
      goto LABEL_32;
    }

    v20 = v19 & (-2 << (v8 & 0x3F));
    if (v20)
    {
      v11 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v12 << 6;
      v22 = v12 + 1;
      v23 = (v27 + 8 * v12);
      while (v22 < (v11 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_24A6CA498(v8, v32, 0);
          v11 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_24A6CA498(v8, v32, 0);
    }

LABEL_4:
    ++v9;
    v8 = v11;
    v3 = v29;
    v10 = v31;
    if (v9 == v28)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24A821628(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82D094();
}

uint64_t sub_24A8217B0(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82D094();
}

uint64_t sub_24A821900(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82D094();
}

uint64_t sub_24A821A60(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82D094();
}

uint64_t sub_24A821BC4(uint64_t a1, unsigned __int8 a2)
{
  sub_24A82D094();
}

uint64_t sub_24A821D24@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_24A82C604();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[5];
  v51 = v1[4];
  v11 = *(v1 + 48);
  v52 = *(v1 + 49);
  v53 = v11;
  v12 = *(v1 + 7);
  v58 = 0xD000000000000037;
  v59 = 0x800000024A84B1C0;
  v56 = v6;
  v57 = v7;

  sub_24A82C5A4();
  sub_24A6B2490();
  v13 = sub_24A82D684();
  v15 = v14;
  v17 = *(v3 + 8);
  v16 = v3 + 8;
  v55 = v17;
  v17(v5, v2);

  if (v15)
  {
    sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
    v18 = swift_allocObject();
    v50[1] = v16;
    v19 = v18;
    *(v18 + 16) = xmmword_24A8327A0;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_24A6B243C();
    *(v19 + 32) = v13;
    *(v19 + 40) = v15;
    v20 = sub_24A82CFF4();
    MEMORY[0x24C21C9E0](v20);
  }

  v56 = v9;
  v57 = v8;

  sub_24A82C5A4();
  v21 = MEMORY[0x277D837D0];
  v22 = sub_24A82D684();
  v24 = v23;
  v55(v5, v2);

  if (v24)
  {
    sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24A8327A0;
    *(v25 + 56) = v21;
    *(v25 + 64) = sub_24A6B243C();
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    v26 = sub_24A82CFF4();
    MEMORY[0x24C21C9E0](v26);
  }

  if (v10)
  {
    v56 = v51;
    v57 = v10;

    sub_24A82C5A4();
    v27 = MEMORY[0x277D837D0];
    v28 = sub_24A82D684();
    v30 = v29;
    v55(v5, v2);

    if (v30)
    {
      sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_24A8327A0;
      *(v31 + 56) = v27;
      *(v31 + 64) = sub_24A6B243C();
      *(v31 + 32) = v28;
      *(v31 + 40) = v30;
      v32 = sub_24A82CFF4();
      MEMORY[0x24C21C9E0](v32);
    }
  }

  MEMORY[0x24C21C9E0](47, 0xE100000000000000);
  if (v52 <= 3)
  {
    v40 = 0x656E696C6E6FLL;
    v34 = 0xE600000000000000;
    v41 = 0x64656B636F6CLL;
    v37 = 0xE700000000000000;
    if (v52 != 2)
    {
      v41 = 0x6475427466656CLL;
      v34 = 0xE700000000000000;
    }

    if (v52)
    {
      v40 = 0x656E696C66666FLL;
    }

    else
    {
      v37 = 0xE600000000000000;
    }

    v38 = v52 <= 1;
    if (v52 <= 1)
    {
      v39 = v40;
    }

    else
    {
      v39 = v41;
    }
  }

  else
  {
    v33 = 0x4364694C65736163;
    v34 = 0x800000024A8444A0;
    if (v52 == 7)
    {
      v35 = 0xD000000000000015;
    }

    else
    {
      v35 = 0xD000000000000016;
    }

    if (v52 != 7)
    {
      v34 = 0x800000024A8444C0;
    }

    if (v52 == 6)
    {
      v34 = 0xED00006465736F6CLL;
    }

    else
    {
      v33 = v35;
    }

    v36 = 0x6475427468676972;
    v37 = 0x800000024A844470;
    if (v52 == 4)
    {
      v37 = 0xE800000000000000;
    }

    else
    {
      v36 = 0xD00000000000001ALL;
    }

    v38 = v52 <= 5;
    if (v52 <= 5)
    {
      v39 = v36;
    }

    else
    {
      v39 = v33;
    }
  }

  if (v38)
  {
    v42 = v37;
  }

  else
  {
    v42 = v34;
  }

  v56 = v39;
  v57 = v42;

  MEMORY[0x24C21C9E0](45, 0xE100000000000000);

  MEMORY[0x24C21C9E0](v56, v57);

  if (v53)
  {
    v43 = 0x786F626F666E69;
  }

  else
  {
    v43 = 0x696C656372756F73;
  }

  if (v53)
  {
    v44 = 0xE700000000000000;
  }

  else
  {
    v44 = 0xEA00000000007473;
  }

  MEMORY[0x24C21C9E0](v43, v44);

  if (v12 == 1.0)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
  }

  else
  {
    sub_24A6BBA94(&qword_27EF5D4B8, &qword_24A832868);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_24A8327A0;
    *(v47 + 56) = MEMORY[0x277D85048];
    *(v47 + 64) = sub_24A6B22C8();
    *(v47 + 32) = v12;
    v45 = sub_24A82CFF4();
    v46 = v48;
  }

  MEMORY[0x24C21C9E0](v45, v46);

  MEMORY[0x24C21C9E0](1735290926, 0xE400000000000000);
  sub_24A82C8A4();
}

FMIPCore::FMIPDeviceImageSize_optional __swiftcall FMIPDeviceImageSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

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

uint64_t FMIPDeviceImageSize.rawValue.getter()
{
  if (*v0)
  {
    return 0x786F626F666E69;
  }

  else
  {
    return 0x696C656372756F73;
  }
}

uint64_t sub_24A8223B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x786F626F666E69;
  }

  else
  {
    v3 = 0x696C656372756F73;
  }

  if (v2)
  {
    v4 = 0xEA00000000007473;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x786F626F666E69;
  }

  else
  {
    v5 = 0x696C656372756F73;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEA00000000007473;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A82DC04();
  }

  return v8 & 1;
}

uint64_t sub_24A822464()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A8224EC(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A822560(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A8225E4@<X0>(char *a2@<X8>)
{
  v3 = sub_24A82D9C4();

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

void sub_24A822644(uint64_t *a1@<X8>)
{
  v2 = 0x696C656372756F73;
  if (*v1)
  {
    v2 = 0x786F626F666E69;
  }

  v3 = 0xEA00000000007473;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

FMIPCore::FMIPDeviceImageVariant_optional __swiftcall FMIPDeviceImageVariant.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMIPDeviceImageVariant.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x656E696C6E6FLL;
    v7 = 0x64656B636F6CLL;
    if (v1 != 2)
    {
      v7 = 0x6475427466656CLL;
    }

    if (*v0)
    {
      v6 = 0x656E696C66666FLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x4364694C65736163;
    if (v1 == 7)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001ALL;
    if (v1 == 4)
    {
      v4 = 0x6475427468676972;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24A822828()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A8217B0(v3, v1);
  return sub_24A82DD24();
}

uint64_t sub_24A822878(uint64_t a1)
{
  v2 = *v1;
  sub_24A82DCC4();
  sub_24A8217B0(v4, v2);
  return sub_24A82DD24();
}

unint64_t sub_24A8228C8@<X0>(unint64_t *a1@<X8>)
{
  result = FMIPDeviceImageVariant.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FMIPDeviceImageCacheRequest.class.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FMIPDeviceImageCacheRequest.model.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPDeviceImageCacheRequest.color.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FMIPDeviceImageCacheRequest.init(class:model:color:size:variant:scale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v10 = *a7;
  v11 = *a8;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v10;
  *(a9 + 49) = v11;
  *(a9 + 56) = a10;
  return result;
}

uint64_t FMIPDeviceImageCacheRequest.init(device:size:variant:scale:)@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *a2;
  v9 = *a3;
  v11 = a1[13];
  v10 = a1[14];
  v13 = a1[17];
  v12 = a1[18];
  v15 = a1[11];
  v14 = a1[12];

  result = sub_24A69016C(a1, type metadata accessor for FMIPDevice);
  *a4 = v11;
  *(a4 + 8) = v10;
  *(a4 + 16) = v13;
  *(a4 + 24) = v12;
  *(a4 + 32) = v15;
  *(a4 + 40) = v14;
  *(a4 + 48) = v8;
  *(a4 + 49) = v9;
  *(a4 + 56) = a5;
  return result;
}

uint64_t FMIPDeviceImageCacheRequest.init(device:size:scale:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a2;
  sub_24A822B44(a1, &v16);
  v8 = v16;
  v10 = a1[13];
  v9 = a1[14];
  v12 = a1[17];
  v11 = a1[18];
  v14 = a1[11];
  v13 = a1[12];

  result = sub_24A69016C(a1, type metadata accessor for FMIPDevice);
  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = v12;
  *(a3 + 24) = v11;
  *(a3 + 32) = v14;
  *(a3 + 40) = v13;
  *(a3 + 48) = v7;
  *(a3 + 49) = v8;
  *(a3 + 56) = a4;
  return result;
}

uint64_t sub_24A822B44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for FMIPDevice(0);
  sub_24A67E964(a1 + v15[31], v5, &qword_27EF5DE48, &unk_24A8367C0);
  v16 = type metadata accessor for FMIPEraseMetadata(0);
  if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
  {
    sub_24A67F378(v5, &qword_27EF5DE48, &unk_24A8367C0);
    v17 = sub_24A82CA34();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    sub_24A67F378(v14, &qword_27EF5E0E0, &qword_24A836D90);
  }

  else
  {
    v18 = *(v16 + 20);
    v17 = sub_24A82CA34();
    v19 = *(v17 - 8);
    (*(v19 + 16))(v14, &v5[v18], v17);
    sub_24A69016C(v5, type metadata accessor for FMIPEraseMetadata);
    (*(v19 + 56))(v14, 0, 1, v17);
    result = sub_24A67F378(v14, &qword_27EF5E0E0, &qword_24A836D90);
    if ((*(a1 + 216) & 2) != 0)
    {
      goto LABEL_7;
    }
  }

  sub_24A67E964(a1 + v15[40], v12, &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A82CA34();
  v21 = *(*(v17 - 8) + 48);
  v22 = v21(v12, 1, v17);
  result = sub_24A67F378(v12, &qword_27EF5E0E0, &qword_24A836D90);
  if (v22 == 1)
  {
    if (*(a1 + 80))
    {
      v24 = sub_24A82DC04();

      if ((v24 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    sub_24A67E964(a1 + v15[41], v9, &qword_27EF5E0E0, &qword_24A836D90);
    v25 = v21(v9, 1, v17);
    result = sub_24A67F378(v9, &qword_27EF5E0E0, &qword_24A836D90);
    if (v25 == 1)
    {
      v23 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v23 = 1;
    goto LABEL_13;
  }

LABEL_7:
  v23 = 2;
LABEL_13:
  *v27 = v23;
  return result;
}

uint64_t FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *a3;
  sub_24A82303C(a1, &v17);

  v9 = v17;
  v11 = a2[13];
  v10 = a2[14];
  v13 = a2[17];
  v12 = a2[18];
  v15 = a2[11];
  v14 = a2[12];

  result = sub_24A69016C(a2, type metadata accessor for FMIPDevice);
  *a4 = v11;
  *(a4 + 8) = v10;
  *(a4 + 16) = v13;
  *(a4 + 24) = v12;
  *(a4 + 32) = v15;
  *(a4 + 40) = v14;
  *(a4 + 48) = v8;
  *(a4 + 49) = v9;
  *(a4 + 56) = a5;
  return result;
}

uint64_t sub_24A82303C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = sub_24A8212E8(a1);
  v4 = sub_24A7147BC(v3);

  v5 = sub_24A7147BC(&unk_285DC08A0);
  v6 = sub_24A7B5170(v5, v4);

  if (v6)
  {
    v7 = 5;
  }

  else
  {
    v8 = sub_24A7147BC(&unk_285DC08C8);
    v9 = sub_24A7B5170(v8, v4);

    if (v9)
    {
      v7 = 8;
    }

    else
    {
      v10 = sub_24A7147BC(&unk_285DC08F0);
      v11 = sub_24A7B5170(v10, v4);

      if (v11)
      {
        v7 = 7;
      }

      else
      {
        v12 = sub_24A7147BC(&unk_285DC0918);
        v13 = sub_24A7B5170(v12, v4);

        if (v13)
        {
          v7 = 6;
        }

        else
        {
          v14 = sub_24A7147BC(&unk_285DC0940);
          v15 = sub_24A7B5170(v14, v4);

          if (v15)
          {
            v7 = 0;
          }

          else
          {
            v16 = sub_24A7147BC(&unk_285DC0968);
            v17 = sub_24A7B5170(v16, v4);

            if (v17)
            {
              v7 = 3;
            }

            else
            {
              v18 = sub_24A7147BC(&unk_285DC0990);
              v19 = sub_24A7B5170(v18, v4);

              if (v19)
              {
                v7 = 4;
              }

              else
              {
                v20 = sub_24A7147BC(&unk_285DC09B8);
                sub_24A7B5170(v20, v4);

                v7 = 0;
              }
            }
          }
        }
      }
    }
  }

  *a2 = v7;
  return result;
}

char *static FMIPDeviceImageCacheRequest.allRequests(for:scale:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for FMIPDevice(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - v9;
  v11 = *(v5 + 136);
  v58 = a1;
  sub_24A67E964(a1 + v11, v10, &unk_27EF5E0B0, &qword_24A8338B0);
  v12 = type metadata accessor for FMIPItemGroup(0);
  LODWORD(v5) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_24A67F378(v10, &unk_27EF5E0B0, &qword_24A8338B0);
  if (v5 == 1)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    do
    {
      v57 = byte_285DC0A08[v13 + 32];
      sub_24A68FD9C(v58, v7, type metadata accessor for FMIPDevice);
      v15 = v7[14];
      v56 = v7[13];
      v17 = v7[17];
      v16 = v7[18];
      v19 = v7[11];
      v18 = v7[12];

      sub_24A69016C(v7, type metadata accessor for FMIPDevice);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_24A780BB0(0, *(v14 + 2) + 1, 1, v14);
      }

      v21 = *(v14 + 2);
      v20 = *(v14 + 3);
      if (v21 >= v20 >> 1)
      {
        v14 = sub_24A780BB0((v20 > 1), v21 + 1, 1, v14);
      }

      *(v14 + 2) = v21 + 1;
      v22 = &v14[64 * v21];
      *(v22 + 4) = v56;
      *(v22 + 5) = v15;
      *(v22 + 6) = v17;
      *(v22 + 7) = v16;
      *(v22 + 8) = v19;
      *(v22 + 9) = v18;
      v22[80] = 0;
      v22[81] = v57;
      v23 = v62;
      *(v22 + 82) = v61;
      *(v22 + 43) = v23;
      *(v22 + 11) = a2;
      sub_24A68FD9C(v58, v7, type metadata accessor for FMIPDevice);
      v24 = v7[14];
      v56 = v7[13];
      v26 = v7[17];
      v25 = v7[18];
      v28 = v7[11];
      v27 = v7[12];

      sub_24A69016C(v7, type metadata accessor for FMIPDevice);
      v30 = *(v14 + 2);
      v29 = *(v14 + 3);
      if (v30 >= v29 >> 1)
      {
        v14 = sub_24A780BB0((v29 > 1), v30 + 1, 1, v14);
      }

      ++v13;
      *(v14 + 2) = v30 + 1;
      v31 = &v14[64 * v30];
      *(v31 + 4) = v56;
      *(v31 + 5) = v24;
      *(v31 + 6) = v26;
      *(v31 + 7) = v25;
      *(v31 + 8) = v28;
      *(v31 + 9) = v27;
      v31[80] = 1;
      v31[81] = v57;
      v32 = v60;
      *(v31 + 82) = v59;
      *(v31 + 43) = v32;
      *(v31 + 11) = a2;
    }

    while (v13 != 3);
  }

  else
  {
    v33 = 0;
    v14 = MEMORY[0x277D84F90];
    do
    {
      v57 = byte_285DC09E0[v33 + 32];
      sub_24A68FD9C(v58, v7, type metadata accessor for FMIPDevice);
      v34 = v7[13];
      v35 = v7[14];
      v37 = v7[17];
      v36 = v7[18];
      v39 = v7[11];
      v38 = v7[12];

      sub_24A69016C(v7, type metadata accessor for FMIPDevice);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_24A780BB0(0, *(v14 + 2) + 1, 1, v14);
      }

      v42 = *(v14 + 2);
      v41 = *(v14 + 3);
      if (v42 >= v41 >> 1)
      {
        v14 = sub_24A780BB0((v41 > 1), v42 + 1, 1, v14);
      }

      *(v14 + 2) = v42 + 1;
      v43 = &v14[64 * v42];
      *(v43 + 4) = v56;
      *(v43 + 5) = v35;
      *(v43 + 6) = v37;
      *(v43 + 7) = v36;
      *(v43 + 8) = v39;
      *(v43 + 9) = v38;
      v43[80] = 0;
      v43[81] = v57;
      v44 = v62;
      *(v43 + 82) = v61;
      *(v43 + 43) = v44;
      *(v43 + 11) = a2;
      sub_24A68FD9C(v58, v7, type metadata accessor for FMIPDevice);
      v45 = v7[14];
      v56 = v7[13];
      v47 = v7[17];
      v46 = v7[18];
      v49 = v7[11];
      v48 = v7[12];

      sub_24A69016C(v7, type metadata accessor for FMIPDevice);
      v51 = *(v14 + 2);
      v50 = *(v14 + 3);
      if (v51 >= v50 >> 1)
      {
        v14 = sub_24A780BB0((v50 > 1), v51 + 1, 1, v14);
      }

      ++v33;
      *(v14 + 2) = v51 + 1;
      v52 = &v14[64 * v51];
      *(v52 + 4) = v56;
      *(v52 + 5) = v45;
      *(v52 + 6) = v47;
      *(v52 + 7) = v46;
      *(v52 + 8) = v49;
      *(v52 + 9) = v48;
      v52[80] = 1;
      v52[81] = v57;
      v53 = v60;
      *(v52 + 82) = v59;
      *(v52 + 43) = v53;
      *(v52 + 11) = a2;
    }

    while (v33 != 6);
  }

  return v14;
}

uint64_t FMIPDeviceImageCacheRequest.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  sub_24A82D854();
  MEMORY[0x24C21C9E0](60, 0xE100000000000000);
  MEMORY[0x24C21C9E0](0xD00000000000001BLL, 0x800000024A842410);
  MEMORY[0x24C21C9E0](0x6A624F796E41203ALL, 0xED0000203A746365);
  MEMORY[0x24C21C9E0](v1, v2);
  MEMORY[0x24C21C9E0](0x203A6C65646F6D20, 0xE800000000000000);
  MEMORY[0x24C21C9E0](v3, v4);
  MEMORY[0x24C21C9E0](0x203A726F6C6F6320, 0xE800000000000000);
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v5)
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x24C21C9E0](v7, v5);

  MEMORY[0x24C21C9E0](9071406774580000, 0xE700000000000000);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](0x746E616972617620, 0xEA0000000000203ALL);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0;
}

uint64_t FMIPDeviceImageCacheRequest.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 49);
  v5 = *(v1 + 56);
  sub_24A82D094();
  sub_24A82D094();
  sub_24A82DCE4();
  if (v3)
  {
    sub_24A82D094();
  }

  sub_24A82D094();

  sub_24A8217B0(a1, v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  return MEMORY[0x24C21D610](*&v6);
}

uint64_t FMIPDeviceImageCacheRequest.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPDeviceImageCacheRequest.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A823AAC()
{
  sub_24A82DCC4();
  FMIPDeviceImageCacheRequest.hash(into:)(v1);
  return sub_24A82DD24();
}

uint64_t sub_24A823AF0(uint64_t a1)
{
  sub_24A82DCC4();
  FMIPDeviceImageCacheRequest.hash(into:)(v2);
  return sub_24A82DD24();
}

uint64_t _s8FMIPCore27FMIPDeviceImageCacheRequestV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 48);
  v7 = a1[7];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v20 = *(a2 + 49);
  v21 = *(a1 + 49);
  v13 = *(a2 + 56);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (sub_24A82DC04() & 1) == 0 || (v2 != v8 || v4 != v9) && (sub_24A82DC04() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10 || (v3 != v11 || v5 != v10) && (sub_24A82DC04() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    v14 = 0x786F626F666E69;
  }

  else
  {
    v14 = 0x696C656372756F73;
  }

  if (v6)
  {
    v15 = 0xE700000000000000;
  }

  else
  {
    v15 = 0xEA00000000007473;
  }

  if (v12)
  {
    v16 = 0x786F626F666E69;
  }

  else
  {
    v16 = 0x696C656372756F73;
  }

  if (v12)
  {
    v17 = 0xE700000000000000;
  }

  else
  {
    v17 = 0xEA00000000007473;
  }

  if (v14 == v16 && v15 == v17)
  {

    return sub_24A7D40D0(v21, v20) & (v7 == v13);
  }

  v18 = sub_24A82DC04();

  if (v18)
  {
    return sub_24A7D40D0(v21, v20) & (v7 == v13);
  }

  return 0;
}

unint64_t sub_24A823CF4()
{
  result = qword_27EF5F9C0;
  if (!qword_27EF5F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9C0);
  }

  return result;
}

unint64_t sub_24A823D7C()
{
  result = qword_27EF5F9D8;
  if (!qword_27EF5F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F9D8);
  }

  return result;
}

uint64_t sub_24A823E00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A823EB0(void *a1)
{
  sub_24A698230(a1, v15);
  v3 = sub_24A6F5EE8(v15);
  if (!v1)
  {
    v4 = qword_281515DC8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);

    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      v10 = sub_24A6F6244();
      v12 = v11;

      v13 = sub_24A68761C(v10, v12, v15);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPSavePreferencesResponse: initialized with coder %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    else
    {
    }
  }

  sub_24A6876E8(a1);
  return v3;
}

uint64_t FMIPPlaySoundMetadata.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FMIPPlaySoundMetadata(0) + 20);
  v4 = sub_24A82CA34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FMIPPlaySoundMetadata.alertTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPPlaySoundMetadata(0) + 24));

  return v1;
}

uint64_t FMIPPlaySoundMetadata.alertText.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPPlaySoundMetadata(0) + 28));

  return v1;
}

uint64_t FMIPPlaySoundMetadata.continueButtonTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPPlaySoundMetadata(0) + 32));

  return v1;
}

uint64_t FMIPPlaySoundMetadata.cancelButtonTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMIPPlaySoundMetadata(0) + 36));

  return v1;
}

uint64_t sub_24A824234(uint64_t a1)
{
  sub_24A82D094();
}

unint64_t sub_24A82434C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A82491C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A82437C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF706D617473656DLL;
  v4 = 0x6954657461657263;
  v5 = 0xE900000000000074;
  v6 = 0x7865547472656C61;
  v7 = 0x800000024A8444F0;
  v8 = 0xD000000000000013;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000024A844510;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6F43737574617473;
  v10 = 0xEA00000000006564;
  if (v2 != 1)
  {
    v9 = 0x7469547472656C61;
    v10 = 0xEA0000000000656CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_24A82445C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A82491C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A824484(uint64_t a1)
{
  v2 = sub_24A686AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8244C0(uint64_t a1)
{
  v2 = sub_24A686AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FMIPPlaySoundMetadata.encode(to:)(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5FA10, &qword_24A8427C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = type metadata accessor for FMIPPlaySoundMetadata(0);
  v23 = v1;
  v8 = sub_24A82C994();
  sub_24A67DF6C(a1, a1[3]);
  sub_24A686AA4();
  sub_24A82DD84();
  [v8 fm_epoch];
  LOBYTE(v25) = 0;
  v9 = v6;
  v10 = v24;
  sub_24A82DB54();
  if (v10)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v11 = v23;
    v12 = qword_24A842A18[*v23];
    v24 = v4;
    v25 = v12;
    sub_24A82DB84();
    LOBYTE(v25) = 1;
    sub_24A82DB04();
    v22 = v8;

    v13 = &v11[v7[6]];
    v14 = *(v13 + 1);
    v25 = *v13;
    v26 = v14;
    v27 = 2;

    sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
    sub_24A6CCEB0();
    sub_24A82DB44();

    v15 = &v11[v7[7]];
    v16 = *(v15 + 1);
    v25 = *v15;
    v26 = v16;
    v27 = 3;

    sub_24A82DB44();

    v17 = &v11[v7[8]];
    v18 = *(v17 + 1);
    v25 = *v17;
    v26 = v18;
    v27 = 4;

    sub_24A82DB44();

    v19 = &v23[v7[9]];
    v20 = *(v19 + 1);
    v25 = *v19;
    v26 = v20;
    v27 = 5;

    sub_24A82DB44();

    (*(v24 + 8))(v9, 0);
  }
}

unint64_t sub_24A8248C8()
{
  result = qword_27EF5FA18;
  if (!qword_27EF5FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA18);
  }

  return result;
}

unint64_t sub_24A82491C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

void *sub_24A82496C(unsigned __int8 *a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v54 - v6;
  v63 = *a1;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v66 = sub_24A82C6F4();
  v12 = v11;

  v13 = [v9 bundleForClass_];
  v64 = sub_24A82C6F4();
  v65 = v14;

  v60 = ObjCClassFromMetadata;
  v15 = [v9 bundleForClass_];
  v16 = sub_24A82C6F4();
  v18 = v17;

  v19 = sub_24A82C8B4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v61 = v20 + 56;
  v62 = v7;
  v21(v7, 1, 1, v19);
  v22 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
  [v22 refresh];
  LODWORD(v7) = [v22 airplaneMode];

  if (v7)
  {
    v57 = v21;
    v58 = v19;

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v59 = v5;
    v23 = sub_24A82CDC4();
    sub_24A6797D0(v23, qword_281518F88);
    v24 = sub_24A82CD94();
    v25 = sub_24A82D504();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v60;
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24A675000, v24, v25, "FMNetworkUtil: Airplane mode is enabled", v28, 2u);
      MEMORY[0x24C21E1D0](v28, -1, -1);
    }

    v66 = sub_24A7BC120(0xD000000000000024, 0x800000024A84B340);
    v55 = "_TITLE_AIRPLANE_MODE";
    v56 = v29;
    v30 = 0xD00000000000001DLL;
  }

  else
  {
    v39 = v12;
    if ((sub_24A719C60() & 1) != 0 || (v40 = sub_24A82CF94(), v41 = MGGetBoolAnswer(), v40, !v41))
    {
      v35 = 0;
      v37 = 0;
      v32 = v16;
      v38 = v62;
      v21(v5, 1, 1, v19);
      goto LABEL_16;
    }

    v57 = v21;
    v58 = v19;

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v59 = v5;
    v42 = sub_24A82CDC4();
    sub_24A6797D0(v42, qword_281518F88);
    v43 = sub_24A82CD94();
    v44 = sub_24A82D504();
    v45 = os_log_type_enabled(v43, v44);
    v27 = v60;
    if (v45)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_24A675000, v43, v44, "FMNetworkUtil: Cellular is disabled", v46, 2u);
      MEMORY[0x24C21E1D0](v46, -1, -1);
    }

    v47 = [v9 bundleForClass_];
    v66 = sub_24A82C6F4();
    v56 = v48;

    v64 = sub_24A7BC120(0xD00000000000002ALL, 0x800000024A84B290);
    v65 = v49;
    v55 = "ALERT_NO_NETWORK_CANCEL";
    v30 = 0xD000000000000022;
  }

  v54[1] = v30;
  v31 = [v9 bundleForClass_];
  v32 = sub_24A82C6F4();
  v18 = v33;

  v34 = [v9 bundleForClass_];
  v35 = sub_24A82C6F4();
  v37 = v36;

  v5 = v59;
  sub_24A82C8A4();
  v38 = v62;
  sub_24A6D3E54(v62);
  sub_24A696DA0(v5, v38);
  v39 = v56;
  v57(v5, 1, 1, v58);
LABEL_16:
  type metadata accessor for FMIPAlert(0);
  v50 = swift_allocObject();
  v50[2] = v66;
  v50[3] = v39;
  v51 = v65;
  v50[4] = v64;
  v50[5] = v51;
  v50[6] = v32;
  v50[7] = v18;
  v52 = (v50 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
  *v52 = v35;
  v52[1] = v37;
  sub_24A696DA0(v38, v50 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);
  sub_24A696DA0(v5, v50 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  *(v50 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = v63;
  return v50;
}

id FMIPSeparationLocation.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 3) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return v5;
}

uint64_t FMIPSeparationLocation.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x120uLL);
  memcpy(a1, (v1 + 24), 0x120uLL);
  return sub_24A67E964(__dst, v4, &unk_27EF5E0D0, &qword_24A8319E0);
}

uint64_t sub_24A825178(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697461636F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6D617473656D6974;
    v3 = 0xE900000000000070;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73736572646461;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E6F697461636F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73736572646461;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A82DC04();
  }

  return v11 & 1;
}

uint64_t sub_24A825284()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A82532C(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A8253C0(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

unint64_t sub_24A825464@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A8263E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A825494(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697461636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6D617473656D6974;
    v4 = 0xE900000000000070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73736572646461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A8254F8()
{
  v1 = 0x6E6F697461636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736572646461;
  }
}

unint64_t sub_24A825558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A8263E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A825580(uint64_t a1)
{
  v2 = sub_24A825A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8255BC(uint64_t a1)
{
  v2 = sub_24A825A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPSeparationLocation.init(location:address:timestamp:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 1) = v6;
  *(a4 + 2) = v7;
  *(a4 + 3) = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  memcpy((a4 + 24), a2, 0x120uLL);
  v11 = a4 + *(type metadata accessor for FMIPSeparationLocation(0) + 24);

  return sub_24A68C87C(a3, v11);
}

uint64_t FMIPSeparationLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_24A82CA34();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A6BBA94(&qword_27EF5FA20, &qword_24A842AB0);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for FMIPSeparationLocation(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v35 = a1;
  sub_24A67DF6C(a1, v12);
  sub_24A825A9C();
  v13 = v34;
  sub_24A82DD64();
  if (!v13)
  {
    v34 = v11;
    v14 = v32;
    v15 = v5;
    v38[295] = 0;
    sub_24A684C3C();
    v16 = v33;
    sub_24A82DA84();
    memcpy(v38, v39, 0x120uLL);
    v37 = 1;
    sub_24A687EF0();
    sub_24A82DA84();
    v27 = BYTE1(v36[0]);
    v28 = LOBYTE(v36[0]);
    v25 = BYTE3(v36[0]);
    v26 = BYTE2(v36[0]);
    v29 = v36[1];
    v17 = v36[2];
    v37 = 2;
    sub_24A794F10(&qword_27EF5E960, MEMORY[0x277CC95A0]);
    sub_24A82DA84();
    (*(v14 + 8))(v8, v16);
    v19 = v15;
    v20 = v34;
    v21 = v27;
    *v34 = v28;
    *(v20 + 1) = v21;
    v22 = v25;
    *(v20 + 2) = v26;
    *(v20 + 3) = v22;
    *(v20 + 8) = v29;
    *(v20 + 16) = v17;
    memcpy(v36, v38, sizeof(v36));
    nullsub_1();
    memcpy((v20 + 24), v36, 0x120uLL);
    v23 = *(v9 + 24);
    v24 = v30;
    (*(v30 + 32))(v20 + v23, v19, v3);
    (*(v24 + 56))(v20 + v23, 0, 1, v3);
    sub_24A825AF0(v20, v31);
  }

  return sub_24A6876E8(v35);
}

unint64_t sub_24A825A9C()
{
  result = qword_27EF5FA28;
  if (!qword_27EF5FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA28);
  }

  return result;
}

uint64_t sub_24A825AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPSeparationLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMIPSeparationLocation.with(address:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x120uLL);
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = *(v2 + 1);
  v10 = *(v2 + 2);
  v11 = type metadata accessor for FMIPSeparationLocation(0);
  sub_24A67E964(&v2[*(v11 + 24)], a2 + *(v11 + 24), &qword_27EF5E0E0, &qword_24A836D90);
  *a2 = v5;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  *(a2 + 3) = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  memcpy((a2 + 24), __src, 0x120uLL);
  v12 = v9;
  return sub_24A67E964(__dst, v14, &unk_27EF5E0D0, &qword_24A8319E0);
}

uint64_t FMIPSeparationLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5FA30, &unk_24A842AB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A825A9C();
  sub_24A82DD84();
  memcpy(v21, (v3 + 24), 0x120uLL);
  memcpy(v20, (v3 + 24), sizeof(v20));
  v21[311] = 0;
  sub_24A67E964(v21, v19, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A6CCD3C();
  sub_24A82DB44();
  if (v2)
  {
    memcpy(v19, v20, sizeof(v19));
    sub_24A67F378(v19, &unk_27EF5E0D0, &qword_24A8319E0);
  }

  else
  {
    memcpy(v19, v20, sizeof(v19));
    sub_24A67F378(v19, &unk_27EF5E0D0, &qword_24A8319E0);
    v9 = *(v3 + 1);
    v10 = *(v3 + 2);
    v11 = *(v3 + 3);
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    v16[0] = *v3;
    v16[1] = v9;
    v16[2] = v10;
    v16[3] = v11;
    v17 = v12;
    v18 = v13;
    v21[310] = 1;
    sub_24A6CCE5C();
    v14 = v12;
    sub_24A82DB44();

    type metadata accessor for FMIPSeparationLocation(0);
    v16[0] = 2;
    sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
    sub_24A825EF8();
    sub_24A82DB44();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24A825EF8()
{
  result = qword_27EF5FA38;
  if (!qword_27EF5FA38)
  {
    sub_24A6CCDC0(&qword_27EF5E0E0, &qword_24A836D90);
    sub_24A794F10(&qword_27EF5E970, MEMORY[0x277CC9580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA38);
  }

  return result;
}

uint64_t static FMIPSeparationLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a1 + 24), sizeof(__dst));
  memcpy(v14, (a2 + 24), sizeof(v14));
  memcpy(__src, (a1 + 24), 0x120uLL);
  memcpy(&__src[288], (a2 + 24), 0x120uLL);
  memcpy(v15, (a1 + 24), sizeof(v15));
  if (sub_24A6921A8(v15) != 1)
  {
    memcpy(v11, (a1 + 24), sizeof(v11));
    memcpy(v9, (a1 + 24), sizeof(v9));
    memcpy(v10, (a2 + 24), 0x120uLL);
    if (sub_24A6921A8(v10) != 1)
    {
      memcpy(v8, (a2 + 24), sizeof(v8));
      v4 = _s8FMIPCore11FMIPAddressV2eeoiySbAC_ACtFZ_0(v9, v8);
      memcpy(v6, v8, sizeof(v6));
      sub_24A67E964(__dst, v7, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67E964(v14, v7, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A67E964(v11, v7, &unk_27EF5E0D0, &qword_24A8319E0);
      sub_24A6CD854(v6);
      memcpy(v7, v9, sizeof(v7));
      sub_24A6CD854(v7);
      memcpy(v8, (a1 + 24), sizeof(v8));
      sub_24A67F378(v8, &unk_27EF5E0D0, &qword_24A8319E0);
      return v4 & 1;
    }

    memcpy(v8, (a1 + 24), sizeof(v8));
    sub_24A67E964(__dst, v7, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v14, v7, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v11, v7, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A6CD854(v8);
    goto LABEL_7;
  }

  memcpy(v10, (a2 + 24), 0x120uLL);
  if (sub_24A6921A8(v10) != 1)
  {
    sub_24A67E964(__dst, v11, &unk_27EF5E0D0, &qword_24A8319E0);
    sub_24A67E964(v14, v11, &unk_27EF5E0D0, &qword_24A8319E0);
LABEL_7:
    memcpy(v10, __src, sizeof(v10));
    sub_24A67F378(v10, &qword_27EF5D280, &unk_24A831EC0);
    v4 = 0;
    return v4 & 1;
  }

  memcpy(v11, (a1 + 24), sizeof(v11));
  sub_24A67E964(__dst, v9, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A67E964(v14, v9, &unk_27EF5E0D0, &qword_24A8319E0);
  sub_24A67F378(v11, &unk_27EF5E0D0, &qword_24A8319E0);
  v4 = 1;
  return v4 & 1;
}

unint64_t sub_24A8262E0()
{
  result = qword_27EF5FA50;
  if (!qword_27EF5FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA50);
  }

  return result;
}

unint64_t sub_24A826338()
{
  result = qword_27EF5FA58;
  if (!qword_27EF5FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA58);
  }

  return result;
}

unint64_t sub_24A826390()
{
  result = qword_27EF5FA60;
  if (!qword_27EF5FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FA60);
  }

  return result;
}

unint64_t sub_24A8263E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t static FMDiskIO.getOrCreateCacheKey<A>(account:service:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a6;
  v11 = sub_24A82C524();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82CCB4();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A82CC84();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a5[11];
  v20 = a5[12];
  v21 = a5[10];
  v50 = type metadata accessor for FMDiskIO.KeyPair(0, v21, v19, v20);
  v48 = *(v50 - 8);
  v22 = MEMORY[0x28223BE20](v50);
  v47 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - v24;
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v26 = sub_24A82C544();
  v28 = v27;
  if (v27 >> 60 == 15)
  {
    type metadata accessor for FMDiskIO.FMDiskIOError(0, v21, v19, v20);
    swift_getWitnessTable();
    v51 = swift_allocError();
    swift_willThrow();
  }

  else
  {
    v36 = v26;
    sub_24A82C724();
    swift_allocObject();
    sub_24A82C714();
    v51 = 0;
    swift_getWitnessTable();
    v37 = v51;
    sub_24A82C704();
    if (!v37)
    {
      sub_24A67E8E8(v36, v28);

      v29 = v50;
      return (*(v48 + 32))(v49, v25, v29);
    }

    v51 = v37;
    sub_24A67E8E8(v36, v28);
  }

  sub_24A82CC74();
  sub_24A82CCA4();
  v25 = v47;
  sub_24A826AB8(v18, v15, v21, v19, v20, v47);
  sub_24A82C754();
  swift_allocObject();
  sub_24A82C744();
  v29 = v50;
  swift_getWitnessTable();
  v30 = sub_24A82C734();
  v32 = v31;

  v52 = v30;
  v53 = v32;
  v34 = v45;
  v33 = v46;
  v35 = v40;
  (*(v45 + 104))(v40, *MEMORY[0x277D08A30], v46);
  sub_24A770D64();
  sub_24A82C534();
  (*(v34 + 8))(v35, v33);

  sub_24A67E0F0(v30, v32);
  return (*(v48 + 32))(v49, v25, v29);
}

uint64_t FMDiskIO.__allocating_init(root:fileName:keyPair:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  FMDiskIO.init(root:fileName:keyPair:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_24A826AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_24A82CC84();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = *(type metadata accessor for FMDiskIO.KeyPair(0, a3, a4, a5) + 44);
  v14 = sub_24A82CCB4();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a2, v14);
}

uint64_t sub_24A826B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697274656D6D7973 && a2 == 0xEC00000079654B63)
  {

    return 1;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24A826CA8(char a1)
{
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](a1 & 1);
  return sub_24A82DD24();
}

uint64_t sub_24A826D30(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A826C80(v3, *v1);
  return sub_24A82DD24();
}

uint64_t sub_24A826D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A826B98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A826DB0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_24A82A084();
  *a2 = result;
  return result;
}

uint64_t sub_24A826DE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24A826E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FMDiskIO.KeyPair.encode(to:)(void *a1, uint64_t *a2)
{
  type metadata accessor for FMDiskIO.KeyPair.CodingKeys(255, a2[2], a2[3], a2[4]);
  swift_getWitnessTable();
  v3 = sub_24A82DB64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82DD84();
  v11 = 0;
  sub_24A82CC84();
  sub_24A67E858(&qword_27EF5FA68, MEMORY[0x277D08EF0], MEMORY[0x277D08EF8]);
  v7 = v9[1];
  sub_24A82DB44();
  if (!v7)
  {
    v10 = 1;
    sub_24A82CCB4();
    sub_24A67E858(&qword_27EF5FA70, MEMORY[0x277D08F08], MEMORY[0x277D08F10]);
    sub_24A82DB44();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24A8270D0()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  MEMORY[0x24C21C9E0](v1, v2);
  return v4;
}

char *FMDiskIO.init(root:fileName:keyPair:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a3;
  v32 = a5;
  v27 = a4;
  v28 = a1;
  v7 = *v5;
  v29 = a2;
  v30 = v7;
  v26 = sub_24A82D554();
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82D534();
  MEMORY[0x28223BE20](v11);
  v12 = sub_24A82CE54();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_24A67B054();
  v25[0] = "SafeLocations.data";
  v25[1] = v13;
  sub_24A82CE24();
  v33 = MEMORY[0x277D84F90];
  sub_24A67E858(&qword_2815146D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v8 + 104))(v10, *MEMORY[0x277D85260], v26);
  *(v5 + 2) = sub_24A82D594();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  v15 = v27;

  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315138;
    v20 = v31;
    *(v18 + 4) = sub_24A68761C(v31, v15, &v33);
    _os_log_impl(&dword_24A675000, v16, v17, "FMDiskIO: init with file name: %s", v18, 0xCu);
    sub_24A6876E8(v19);
    MEMORY[0x24C21E1D0](v19, -1, -1);
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  else
  {

    v20 = v31;
  }

  v21 = v29;
  *(v6 + 3) = v28;
  *(v6 + 4) = v21;
  *(v6 + 5) = v20;
  *(v6 + 6) = v15;
  v22 = *(*v6 + 128);
  type metadata accessor for FMDiskIO.KeyPair(255, v30[10], v30[11], v30[12]);
  v23 = sub_24A82D634();
  (*(*(v23 - 8) + 32))(&v6[v22], v32, v23);
  return v6;
}

uint64_t sub_24A827538(uint64_t a1)
{
  result = sub_24A828AD4();
  if ((result & 1) == 0)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v3 = sub_24A82CDC4();
    sub_24A6797D0(v3, qword_281518F88);
    v4 = sub_24A82CD94();
    v5 = sub_24A82D504();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24A675000, v4, v5, "FMDiskIO: creating to disk", v6, 2u);
      MEMORY[0x24C21E1D0](v6, -1, -1);
    }

    return sub_24A827650(a1);
  }

  return result;
}

uint64_t sub_24A827650(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v32 = v4;
  v5 = sub_24A82CDF4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82CE54();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v9);
  v15 = &v30 - v14;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v11;
    v20 = v7;
    v21 = a1;
    v22 = v19;
    *v19 = 0;
    _os_log_impl(&dword_24A675000, v17, v18, "FMDiskIO: save to disk", v19, 2u);
    v23 = v22;
    a1 = v21;
    v7 = v20;
    v11 = v31;
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  (*(v13 + 16))(v15, a1, v12);
  v24 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v12;
  v26 = v32;
  *(v25 + 3) = *(v32 + 88);
  *(v25 + 4) = *(v26 + 96);
  *(v25 + 5) = v2;
  (*(v13 + 32))(&v25[v24], v15, v12);
  aBlock[4] = sub_24A829E24;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCF4A8;
  v27 = _Block_copy(aBlock);

  sub_24A82CE24();
  v37 = MEMORY[0x277D84F90];
  sub_24A67E858(&qword_281515DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v28 = v36;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v7, v27);
  _Block_release(v27);
  (*(v35 + 8))(v7, v28);
  (*(v33 + 8))(v11, v34);
}

uint64_t sub_24A827AE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = aBlock - v5;
  v7 = v1[2];
  (*(v4 + 16))(aBlock - v5);
  v8 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = v3;
  *(v9 + 3) = *(v2 + 88);
  *(v9 + 4) = *(v2 + 96);
  *(v9 + 5) = v1;
  (*(v4 + 32))(&v9[v8], v6, v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_24A82A094;
  *(v10 + 24) = v9;
  aBlock[4] = sub_24A6806A0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DCF520;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_24A827D38(uint64_t a1)
{
  v3 = MEMORY[0x24C21D990]();
  sub_24A827D94(v1, a1);

  objc_autoreleasePoolPop(v3);
}

void sub_24A827D94(char *a1, uint64_t a2)
{
  v99 = a2;
  v2 = a1;
  v102[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v88 = sub_24A82CCD4();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v89 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v3[11];
  v6 = v3[12];
  v98 = v3[10];
  v7 = type metadata accessor for FMDiskIO.KeyPair(255, v98, v5, v6);
  v93 = sub_24A82D634();
  v92 = *(v93 - 8);
  v8 = MEMORY[0x28223BE20](v93);
  v91 = &v86 - v9;
  v94 = v7;
  v95 = *(v7 - 8);
  MEMORY[0x28223BE20](v8);
  v90 = &v86 - v10;
  v11 = sub_24A82C8B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = 0;
  v97 = objc_opt_self();
  v15 = [v97 defaultManager];
  v96 = v2;
  v16 = sub_24A82CF94();
  LOBYTE(v2) = [v15 fileExistsAtPath:v16 isDirectory:&v101];

  if (v2)
  {
LABEL_4:
    sub_24A82C754();
    swift_allocObject();
    v21 = sub_24A82C744();
    v22 = v100;
    v23 = sub_24A82C734();
    if (v22)
    {

      v25 = v22;
LABEL_21:
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v68 = sub_24A82CDC4();
      sub_24A6797D0(v68, qword_281518F88);
      v69 = v25;
      v70 = sub_24A82CD94();
      v71 = sub_24A82D4E4();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v102[0] = v73;
        *v72 = 136315138;
        swift_getErrorValue();
        v74 = sub_24A82DC74();
        v76 = sub_24A68761C(v74, v75, v102);

        *(v72 + 4) = v76;
        _os_log_impl(&dword_24A675000, v70, v71, "FMDiskIO: Could not save objects to disk %s", v72, 0xCu);
        sub_24A6876E8(v73);
        MEMORY[0x24C21E1D0](v73, -1, -1);
        MEMORY[0x24C21E1D0](v72, -1, -1);
      }

      else
      {
      }

      return;
    }

    v26 = v23;
    v100 = v21;
    v27 = v24;
    v28 = v92;
    v29 = v91;
    v30 = v93;
    (*(v92 + 16))(v91, &v96[*(*v96 + 128)], v93);
    v31 = v95;
    v32 = v94;
    if ((*(v95 + 48))(v29, 1, v94) == 1)
    {
      (*(v28 + 8))(v29, v30);
      v33 = v27;
      v34 = sub_24A82C8E4();
      sub_24A8270D0();
      v35 = sub_24A82CF94();

      v36 = [v34 writeToFile:v35 atomically:1];

      if (v36)
      {
LABEL_8:
        v99 = v26;
        v37 = [v97 defaultManager];
        sub_24A6BBA94(&qword_27EF5E188, &unk_24A8377C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24A8327A0;
        v39 = *MEMORY[0x277CCA1B0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        v40 = *MEMORY[0x277CCA1A0];
        type metadata accessor for FileProtectionType(0);
        *(inited + 64) = v41;
        *(inited + 40) = v40;
        v42 = v39;
        v43 = v40;
        sub_24A78AD70(inited);
        swift_setDeallocating();
        sub_24A67F378(inited + 32, &unk_27EF5E190, &unk_24A838C30);
        type metadata accessor for FileAttributeKey(0);
        sub_24A67E858(&qword_281512B90, type metadata accessor for FileAttributeKey, &unk_24A83185C);
        v44 = sub_24A82CED4();

        sub_24A8270D0();
        v45 = sub_24A82CF94();

        v102[0] = 0;
        LODWORD(v40) = [v37 setAttributes:v44 ofItemAtPath:v45 error:v102];

        if (!v40)
        {
          v67 = v102[0];
          v25 = sub_24A82C7F4();

          swift_willThrow();
          sub_24A67E0F0(v99, v33);

          goto LABEL_21;
        }

        v46 = qword_281515DC8;
        v47 = v102[0];
        if (v46 != -1)
        {
          swift_once();
        }

        v48 = sub_24A82CDC4();
        sub_24A6797D0(v48, qword_281518F88);

        v49 = sub_24A82CD94();
        v50 = sub_24A82D504();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v102[0] = v52;
          *v51 = 136315138;
          v53 = sub_24A8270D0();
          v55 = sub_24A68761C(v53, v54, v102);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_24A675000, v49, v50, "FMDiskIO: Successfully wrote object to disk @ %s", v51, 0xCu);
          sub_24A6876E8(v52);
          MEMORY[0x24C21E1D0](v52, -1, -1);
          MEMORY[0x24C21E1D0](v51, -1, -1);
        }

        sub_24A67E0F0(v99, v33);

LABEL_32:

        return;
      }
    }

    else
    {
      (*(v31 + 32))(v90, v29, v32);
      sub_24A82CC94();
      v33 = v27;
      sub_24A67E858(&qword_27EF5E1A0, MEMORY[0x277D08F20], MEMORY[0x277D08F28]);
      v66 = v88;
      v77 = sub_24A82C734();
      v79 = v78;
      v80 = sub_24A82C8E4();
      sub_24A67E0F0(v77, v79);
      sub_24A8270D0();
      v81 = sub_24A82CF94();

      LODWORD(v77) = [v80 writeToFile:v81 atomically:1];

      (*(v87 + 8))(v89, v66);
      (*(v95 + 8))(v90, v94);
      if (v77)
      {
        goto LABEL_8;
      }
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v82 = sub_24A82CDC4();
    sub_24A6797D0(v82, qword_281518F88);
    v83 = sub_24A82CD94();
    v84 = sub_24A82D504();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_24A675000, v83, v84, "FMDiskIO: Could not save objects to disk", v85, 2u);
      MEMORY[0x24C21E1D0](v85, -1, -1);
    }

    sub_24A67E0F0(v26, v33);

    goto LABEL_32;
  }

  v17 = [v97 defaultManager];
  sub_24A82C824();
  v18 = sub_24A82C844();
  (*(v12 + 8))(v14, v11);
  v102[0] = 0;
  v19 = [v17 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:v102];

  if (v19)
  {
    v20 = v102[0];
    goto LABEL_4;
  }

  v56 = v102[0];
  v57 = sub_24A82C7F4();

  swift_willThrow();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v58 = sub_24A82CDC4();
  sub_24A6797D0(v58, qword_281518F88);

  v59 = sub_24A82CD94();
  v60 = sub_24A82D504();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v102[0] = v62;
    *v61 = 136315138;
    v63 = sub_24A8270D0();
    v65 = sub_24A68761C(v63, v64, v102);

    *(v61 + 4) = v65;
    _os_log_impl(&dword_24A675000, v59, v60, "FMDiskIO: Could not create directory for content: %s", v61, 0xCu);
    sub_24A6876E8(v62);
    MEMORY[0x24C21E1D0](v62, -1, -1);
    MEMORY[0x24C21E1D0](v61, -1, -1);
  }
}

id sub_24A828AD4()
{
  v0 = [objc_opt_self() defaultManager];
  sub_24A8270D0();
  v1 = sub_24A82CF94();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t sub_24A828B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = sub_24A82D634();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  sub_24A828CDC(&v12 - v8);
  v10 = *(v5 - 8);
  if ((*(v10 + 48))(v9, 1, v5) != 1)
  {
    return (*(v10 + 32))(a2, v9, v5);
  }

  (*(v7 + 8))(v9, v6);
  sub_24A827650(a1);
  return (*(v10 + 16))(a2, a1, v5);
}

uint64_t sub_24A828CDC@<X0>(uint64_t a1@<X8>)
{
  (*(*(*(*v1 + 80) - 8) + 56))(a1, 1, 1);
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24A829F40;
  *(v5 + 24) = v4;
  v9[4] = sub_24A680674;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24A6805E4;
  v9[3] = &unk_285DCF598;
  v6 = _Block_copy(v9);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_24A828E78(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v3 = *a1;
  v4 = sub_24A82CC54();
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v72 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_24A82CCD4();
  v73 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v3[10];
  v76 = sub_24A82D634();
  v75 = *(v76 - 8);
  v8 = MEMORY[0x28223BE20](v76);
  v71 = &v65[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v78 = &v65[-v10];
  v11 = v3[11];
  v12 = v3[12];
  v81 = v7;
  v79 = v11;
  v13 = type metadata accessor for FMDiskIO.KeyPair(255, v7, v11, v12);
  v14 = sub_24A82D634();
  v83 = *(v14 - 8);
  v84 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v65[-v16];
  v86 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v85 = &v65[-v18];
  v19 = sub_24A82C8B4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v23 = sub_24A82CDC4();
  v87 = sub_24A6797D0(v23, qword_281518F88);
  v24 = sub_24A82CD94();
  v25 = sub_24A82D504();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24A675000, v24, v25, "FMDiskIO: read from disk", v26, 2u);
    MEMORY[0x24C21E1D0](v26, -1, -1);
  }

  if (sub_24A828AD4())
  {
    v70 = v4;
    sub_24A8270D0();
    sub_24A82C824();

    v34 = sub_24A82C8C4();
    v36 = v35;
    (*(v20 + 8))(v22, v19);

    sub_24A681458(v34, v36);
    v37 = sub_24A82CD94();
    v38 = sub_24A82D504();

    sub_24A67E0F0(v34, v36);
    v39 = os_log_type_enabled(v37, v38);
    v69 = v36;
    v68 = v34;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v88 = v67;
      *v40 = 136315394;
      v66 = v38;
      v41 = sub_24A8270D0();
      v43 = sub_24A68761C(v41, v42, &v88);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v44 = sub_24A82C8D4();
      v46 = sub_24A68761C(v44, v45, &v88);

      *(v40 + 14) = v46;
      _os_log_impl(&dword_24A675000, v37, v66, "FMDiskIO: file: %s data: %s", v40, 0x16u);
      v47 = v67;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v47, -1, -1);
      MEMORY[0x24C21E1D0](v40, -1, -1);
    }

    v48 = v86;
    v49 = v83;
    sub_24A82C724();
    swift_allocObject();
    sub_24A82C714();
    v50 = v84;
    (*(v49 + 16))(v17, a1 + *(*a1 + 128), v84);
    v51 = (*(v48 + 48))(v17, 1, v13);
    v52 = v70;
    if (v51 == 1)
    {
      (*(v49 + 8))(v17, v50);
      v53 = v78;
      v54 = v81;
      v55 = v68;
      v56 = v69;
      sub_24A82C704();
      sub_24A67E0F0(v55, v56);

      (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    }

    else
    {
      (*(v48 + 32))(v85, v17, v13);
      sub_24A67E858(&unk_27EF5E280, MEMORY[0x277D08F20], MEMORY[0x277D08F30]);
      sub_24A82C704();
      v57 = v72;
      sub_24A82CC64();
      v58 = v57;
      v59 = sub_24A82CCC4();
      v61 = v60;
      (*(v74 + 8))(v58, v52);
      v53 = v71;
      v62 = v81;
      sub_24A82C704();
      v63 = (v73 + 8);
      v64 = (v86 + 8);
      sub_24A67E0F0(v59, v61);

      sub_24A67E0F0(v68, v69);
      (*v63)(v80, v82);
      (*v64)(v85, v13);
      (*(*(v62 - 8) + 56))(v53, 0, 1, v62);
    }

    (*(v75 + 40))(v77, v53, v76);
  }

  else
  {

    v87 = sub_24A82CD94();
    v27 = sub_24A82D4E4();

    if (os_log_type_enabled(v87, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v88 = v29;
      *v28 = 136315138;
      v30 = sub_24A8270D0();
      v32 = sub_24A68761C(v30, v31, &v88);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_24A675000, v87, v27, "FMDiskIO: Disk archive does not exist at: %s", v28, 0xCu);
      sub_24A6876E8(v29);
      MEMORY[0x24C21E1D0](v29, -1, -1);
      MEMORY[0x24C21E1D0](v28, -1, -1);
    }

    else
    {
      v33 = v87;
    }
  }
}

id *FMDiskIO.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 16);
  type metadata accessor for FMDiskIO.KeyPair(255, v1[10], v1[11], v1[12]);
  v3 = sub_24A82D634();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FMDiskIO.__deallocating_deinit()
{
  FMDiskIO.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A829D60(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_24A829D98(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_24A829E28()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A82A0A0(uint64_t a1, int a2)
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

uint64_t sub_24A82A0E8(uint64_t result, int a2, int a3)
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

uint64_t sub_24A82A144(void *a1)
{
  v3 = sub_24A6BBA94(&qword_27EF5FC18, &qword_24A843010);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82A7A4();
  sub_24A82DD84();
  v8[15] = 0;
  sub_24A82DB04();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24A82DB04();
  v8[13] = 2;
  sub_24A82DB04();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24A82A2E4()
{
  v1 = 0x656D614E7473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x656C646E6168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E7473726966;
  }
}

uint64_t sub_24A82A340@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24A82A43C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24A82A368(uint64_t a1)
{
  v2 = sub_24A82A7A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A82A3A4(uint64_t a1)
{
  v2 = sub_24A82A7A4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24A82A3E0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_24A82A558(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_24A82A43C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24A82DC04();

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

uint64_t sub_24A82A558@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5FC08, &qword_24A843008);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  sub_24A67DF6C(a1, a1[3]);
  sub_24A82A7A4();
  sub_24A82DD64();
  if (v2)
  {
    return sub_24A6876E8(a1);
  }

  v25 = 0;
  v9 = sub_24A82DA44();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24A82DA44();
  v21 = v12;
  v23 = 2;
  v13 = sub_24A82DA44();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_24A6876E8(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_24A82A7A4()
{
  result = qword_27EF5FC10;
  if (!qword_27EF5FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC10);
  }

  return result;
}

unint64_t sub_24A82A80C()
{
  result = qword_27EF5FC20;
  if (!qword_27EF5FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC20);
  }

  return result;
}

unint64_t sub_24A82A864()
{
  result = qword_27EF5FC28;
  if (!qword_27EF5FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC28);
  }

  return result;
}

unint64_t sub_24A82A8BC()
{
  result = qword_27EF5FC30;
  if (!qword_27EF5FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC30);
  }

  return result;
}

void *FMIPAlert.__allocating_init(title:message:okButtonLabel:okButtonURL:cancelButtonLabel:cancelButtonURL:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v18 = swift_allocObject();
  v19 = *a11;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v20 = (v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
  *v20 = a8;
  v20[1] = a9;
  sub_24A696DA0(a7, v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);
  sub_24A696DA0(a10, v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  *(v18 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = v19;
  return v18;
}

FMIPCore::FMIPAlertType_optional __swiftcall FMIPAlertType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMIPAlertType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726576726573;
  v3 = 0x496B726F7774656ELL;
  v4 = 0x696C616974696E69;
  if (v1 != 3)
  {
    v4 = 0x5441434552504544;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_24A82AB0C()
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A82AC08(uint64_t a1)
{
  sub_24A82D094();
}

uint64_t sub_24A82ACF0(uint64_t a1)
{
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

void sub_24A82ADF4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x726576726573;
  v5 = 0xEC00000065757373;
  v6 = 0x496B726F7774656ELL;
  v7 = 0xEE006E6F6974617ALL;
  v8 = 0x696C616974696E69;
  if (v2 != 3)
  {
    v8 = 0x5441434552504544;
    v7 = 0xEA00000000004445;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000024A844530;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FMIPAlert.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FMIPAlert.message.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FMIPAlert.okButtonLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FMIPAlert.cancelButtonLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);

  return v1;
}

uint64_t sub_24A82AFCC(uint64_t a1)
{
  sub_24A82D094();
}

unint64_t sub_24A82B108@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A82C448(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A82B138(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xEF4C52556E6F7474;
  v6 = 0x75426C65636E6163;
  if (v2 != 5)
  {
    v6 = 0x7079547472656C61;
    v5 = 0xE900000000000065;
  }

  v7 = 0xEB000000004C5255;
  v8 = 0x6E6F747475426B6FLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000024A844510;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6567617373656DLL;
  if (v2 != 1)
  {
    v10 = 0x6E6F747475426B6FLL;
    v9 = 0xED0000656C746954;
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

uint64_t sub_24A82B23C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x75426C65636E6163;
  if (v1 != 5)
  {
    v3 = 0x7079547472656C61;
  }

  v4 = 0x6E6F747475426B6FLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6567617373656DLL;
  if (v1 != 1)
  {
    v5 = 0x6E6F747475426B6FLL;
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

unint64_t sub_24A82B33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A82C448(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A82B364(uint64_t a1)
{
  v2 = sub_24A82BA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A82B3A0(uint64_t a1)
{
  v2 = sub_24A82BA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMIPAlert.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FMIPAlert.init(from:)(a1);
  return v2;
}

char *FMIPAlert.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = v45 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5FC38, &qword_24A843130);
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v45 - v8;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_281518F88);
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A675000, v11, v12, "FMAlert: initialized with coder", v13, 2u);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  sub_24A67DF6C(a1, a1[3]);
  sub_24A82BA40();
  sub_24A82DD64();
  if (!v2)
  {
    v65 = 0;
    v14 = sub_24A82DA44();
    v54 = v15;
    v55 = v14;
    v64 = 1;
    v16 = sub_24A82DA44();
    v52 = v17;
    v53 = v16;
    v63 = 2;
    v18 = sub_24A82DA44();
    v50 = v19;
    v51 = v18;
    v62 = 3;
    v20 = sub_24A82DA44();
    v22 = v21;
    v47 = v20;
    v61 = 4;
    v23 = sub_24A82DA44();
    v48 = v24;
    v49 = v23;
    v60 = 5;
    v25 = sub_24A82DA44();
    v27 = v26;
    v45[1] = v25;
    v59 = 6;
    v28 = sub_24A82DA44();
    v34 = v33;
    v46 = v28;
    if (v22)
    {
      v29 = v57;
      sub_24A82C8A4();

      sub_24A696DA0(v29, &v3[OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL]);
      if (!v27)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v35 = OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL;
      v36 = sub_24A82C8B4();
      (*(*(v36 - 8) + 56))(&v3[v35], 1, 1, v36);
      if (!v27)
      {
LABEL_15:
        v37 = OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL;
        v38 = sub_24A82C8B4();
        (*(*(v38 - 8) + 56))(&v3[v37], 1, 1, v38);
        if (!v34)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    v30 = v57;
    sub_24A82C8A4();

    sub_24A696DA0(v30, &v3[OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL]);
    if (!v34)
    {
LABEL_16:
      (*(v56 + 8))(v9, v7);
      v32 = 0;
LABEL_17:
      v3[OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type] = v32;
      v39 = v54;
      *(v3 + 2) = v55;
      *(v3 + 3) = v39;
      v40 = v52;
      *(v3 + 4) = v53;
      *(v3 + 5) = v40;
      v41 = v50;
      *(v3 + 6) = v51;
      *(v3 + 7) = v41;
      v42 = &v3[OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel];
      v43 = v48;
      *v42 = v49;
      v42[1] = v43;
      goto LABEL_18;
    }

LABEL_10:
    v31._countAndFlagsBits = v46;
    v31._object = v34;
    FMIPAlertType.init(rawValue:)(v31);
    (*(v56 + 8))(v9, v7);
    v32 = v58;
    if (v58 == 5)
    {
      v32 = 0;
    }

    goto LABEL_17;
  }

  type metadata accessor for FMIPAlert(0);
  swift_deallocPartialClassInstance();
LABEL_18:
  sub_24A6876E8(a1);
  return v3;
}

void *FMIPAlert.init(title:message:okButtonLabel:okButtonURL:cancelButtonLabel:cancelButtonURL:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v12 = *a11;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  v11[7] = a6;
  v13 = (v11 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
  *v13 = a8;
  v13[1] = a9;
  sub_24A696DA0(a7, v11 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);
  sub_24A696DA0(a10, v11 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  *(v11 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type) = v12;
  return v11;
}

unint64_t sub_24A82BA40()
{
  result = qword_281512CF0[0];
  if (!qword_281512CF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281512CF0);
  }

  return result;
}

uint64_t type metadata accessor for FMIPAlert(uint64_t a1)
{
  result = qword_281512CC8;
  if (!qword_281512CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A82BAE0()
{
  v1 = v0;
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - v6;
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_24A82D854();

  v44[0] = 0xD000000000000013;
  v44[1] = 0x800000024A84B3C0;
  if (v0[3])
  {
    v8 = v0[2];
    v9 = v0[3];
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  MEMORY[0x24C21C9E0](0x6567617373656D20, 0xE90000000000003ALL);
  if (v0[5])
  {
    v10 = v0[4];
    v11 = v0[5];
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x24C21C9E0](v10, v11);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v12 = v44[0];
  v13 = v44[1];
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_24A82D854();
  MEMORY[0x24C21C9E0](0x6E6F747475426B6FLL, 0xEE003A6C6562614CLL);
  if (v0[7])
  {
    v14 = v0[6];
    v15 = v0[7];
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x24C21C9E0](v14, v15);

  MEMORY[0x24C21C9E0](0xD000000000000014, 0x800000024A84B3E0);
  v16 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel + 8);
  v42 = v5;
  if (v16)
  {
    v17 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonLabel);
    v18 = v16;
  }

  else
  {
    v18 = 0xE300000000000000;
    v17 = 7104878;
  }

  MEMORY[0x24C21C9E0](v17, v18);

  MEMORY[0x24C21C9E0](0x203A65707974202CLL, 0xE800000000000000);
  v43 = *(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_type);
  sub_24A82D914();
  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v19 = v44[0];
  v20 = v44[1];
  v44[0] = v12;
  v44[1] = v13;

  MEMORY[0x24C21C9E0](v19, v20);

  v21 = v44[0];
  v22 = v44[1];
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_24A82D854();

  v44[0] = 0xD000000000000011;
  v44[1] = 0x800000024A84B400;
  sub_24A696E10(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL, v7);
  v23 = sub_24A82C8B4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v7, 1, v23) == 1)
  {
    sub_24A6D3E54(v7);
    v26 = 0xE300000000000000;
    v27 = 7104878;
  }

  else
  {
    v28 = sub_24A82C814();
    v26 = v29;
    (*(v24 + 8))(v7, v23);
    v27 = v28;
  }

  MEMORY[0x24C21C9E0](v27, v26);

  MEMORY[0x24C21C9E0](8236, 0xE200000000000000);
  v30 = v44[0];
  v31 = v44[1];
  v44[0] = v21;
  v44[1] = v22;

  MEMORY[0x24C21C9E0](v30, v31);

  v33 = v44[0];
  v32 = v44[1];
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  sub_24A82D854();

  strcpy(v44, "okButtonURL: ");
  HIWORD(v44[1]) = -4864;
  v34 = v42;
  sub_24A696E10(v1 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL, v42);
  if (v25(v34, 1, v23) == 1)
  {
    sub_24A6D3E54(v34);
    v35 = 0xE300000000000000;
    v36 = 7104878;
  }

  else
  {
    v37 = sub_24A82C814();
    v35 = v38;
    (*(v24 + 8))(v34, v23);
    v36 = v37;
  }

  MEMORY[0x24C21C9E0](v36, v35);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  v39 = v44[0];
  v40 = v44[1];
  v44[0] = v33;
  v44[1] = v32;

  MEMORY[0x24C21C9E0](v39, v40);

  return v44[0];
}

void *FMIPAlert.deinit()
{

  sub_24A6D3E54(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);

  sub_24A6D3E54(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);
  return v0;
}

uint64_t FMIPAlert.__deallocating_deinit()
{

  sub_24A6D3E54(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_okButtonURL);

  sub_24A6D3E54(v0 + OBJC_IVAR____TtC8FMIPCore9FMIPAlert_cancelButtonURL);

  return swift_deallocClassInstance();
}

char *sub_24A82C10C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FMIPAlert(0);
  v5 = swift_allocObject();
  result = FMIPAlert.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_24A82C190()
{
  result = qword_27EF5FC40;
  if (!qword_27EF5FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC40);
  }

  return result;
}

void sub_24A82C1FC(uint64_t a1)
{
  sub_24A6790B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_24A82C344()
{
  result = qword_27EF5FC48;
  if (!qword_27EF5FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5FC48);
  }

  return result;
}

unint64_t sub_24A82C39C()
{
  result = qword_281512CE0;
  if (!qword_281512CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512CE0);
  }

  return result;
}

unint64_t sub_24A82C3F4()
{
  result = qword_281512CE8;
  if (!qword_281512CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281512CE8);
  }

  return result;
}

unint64_t sub_24A82C448(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A82D9C4();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}