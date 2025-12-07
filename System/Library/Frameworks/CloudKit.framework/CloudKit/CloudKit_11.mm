uint64_t sub_1884EF1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884EF1F0, 0, 0);
}

uint64_t sub_1884EF43C()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884EF534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1883FB4E4();
  sub_1883F653C();
  v12 = *(v10 + 56);

  v13 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1883FF744();
  if (sub_1883F9084())
  {
    sub_1883F9984();
    sub_1883F8C00();
    sub_1883FF2D4();
    *v12 = 136315138;
    v14 = sub_1883FE43C();
    sub_1883FC788(v14, v15, v16, v17);
    sub_1883FE2FC();
    *(v12 + 4) = v11;
    sub_1883F831C();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    sub_1883F8EAC();
    sub_1883F82B8();
  }

  *(v10 + 104) = 1;
  if (*(*(v10 + 56) + 168))
  {
    v23 = *(v10 + 64);
    sub_1883F7B88();
    v24 = swift_allocObject();
    *(v10 + 112) = v24;
    *(v24 + 16) = v23;
    v46 = sub_188442F84(&unk_1886FB1F0);
    v25 = v23;
    v26 = swift_task_alloc();
    v27 = sub_18840526C(v26);
    *v27 = v28;
    sub_188411084(v27);
    sub_1883F614C();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36, v46, a10);
  }

  else
  {
    sub_1884F46E8();

    **(v10 + 48) = *(v10 + 104);
    sub_1883FDB48();
    sub_1883F614C();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
  }
}

uint64_t sub_1884EF6CC()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884EF7CC()
{
  sub_1883F7120();
  sub_1884F46E8();

  **(v1 + 48) = *(v1 + 104);
  sub_1883FDB48();

  return v2();
}

uint64_t sub_1884EF834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  v14 = *(v12 + 96);
  v15 = v14;
  v16 = sub_18840EFC4(v14);

  v17 = v16;
  v18 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_188405254();

  if (sub_1884F4988())
  {
    v19 = sub_18840FB34();
    v20 = swift_slowAlloc();
    a10 = sub_1883FE540();
    *v19 = 136315394;
    v21 = sub_1883FE43C();
    sub_1883FC788(v21, v22, v23, v24);
    sub_1884F44C0();
    *(v19 + 4) = v13;
    *(v19 + 12) = 2112;
    v25 = v17;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v26;
    *v20 = v26;
    sub_188410C98();
    _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
    sub_1883F9FEC(v20, &qword_1EA90DC70, &unk_1886FA190);
    sub_1884037D8();
    sub_188404FD4();
    sub_1883F82B8();
  }

  v32 = *(v12 + 96);
  v33 = v17;
  v34 = _convertErrorToNSError(_:)();

  ShouldDefer = CKErrorShouldDefer(v34);
  v36 = 1;
  if (ShouldDefer)
  {
    v36 = 2;
  }

  *(v12 + 104) = v36;
  if (*(*(v12 + 56) + 168))
  {
    v37 = *(v12 + 64);
    sub_1883F7B88();
    v38 = swift_allocObject();
    *(v12 + 112) = v38;
    *(v38 + 16) = v37;
    v60 = sub_188442F84(&unk_1886FB1F0);
    v39 = v37;
    v40 = swift_task_alloc();
    v41 = sub_18840526C(v40);
    *v41 = v42;
    sub_188411084(v41);
    sub_1883F7E58();

    return v45(v43, v44, v45, v46, v47, v48, v49, v50, v60, a10, a11, a12);
  }

  else
  {
    sub_1884F46E8();

    **(v12 + 48) = *(v12 + 104);
    sub_1883FDB48();
    sub_1883F7E58();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }
}

uint64_t sub_1884EFA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1884F4450, 0, 0);
}

BOOL sub_1884EFAA0()
{
  if ([*(*(v0 + 128) + 16) hasPendingUntrackedChanges])
  {
    return 1;
  }

  CKSyncEngine.State.pendingRecordZoneChanges.getter();
  v2 = *(v1 + 16);

  if (v2)
  {
    return 1;
  }

  CKSyncEngine.State.pendingDatabaseChanges.getter();
  v5 = *(v4 + 16);

  return v5 != 0;
}

uint64_t sub_1884EFB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884EFBFC, a4, 0);
}

uint64_t sub_1884EFBFC()
{
  sub_1883F7120();
  static Clock<>.continuous.getter();
  sub_1883F7B10(&dword_1886FB5C0);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1884EFCB4;
  sub_1883FF484(500000000000000000);
  sub_1883F7FD8();

  return v4();
}

uint64_t sub_1884EFCB4()
{
  sub_1883FAB18();
  sub_1883FB4AC();
  v2 = *v1;
  sub_1883F7110();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = sub_1883FB5D4();
  v5(v4);
  sub_1884022BC();
  sub_1883FB5FC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884EFE40()
{
  sub_1883F78E0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v1 + OBJC_IVAR____TtC8CloudKit10SyncEngine_scheduleSyncTask) = 0;

  v3 = OBJC_IVAR____TtC8CloudKit10SyncEngine_earliestStartDateForSchedulerActivities;
  sub_1883FF050();
  swift_beginAccess();
  sub_18841D168(v1 + v3, v2, &unk_1EA90D7B0, &dword_1886F8780);
  v4 = swift_task_alloc();
  v5 = sub_1884F461C(v4);
  *v5 = v6;
  v5[1] = sub_1884EFF24;
  sub_1883FF484(*(v0 + 48));

  return sub_18840EDE4();
}

uint64_t sub_1884EFF24()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  sub_1883F9FEC(v2, &unk_1EA90D7B0, &dword_1886F8780);

  sub_1883F816C();

  return v5();
}

uint64_t sub_1884F0054()
{
  sub_1883F7120();
  *(v1 + 592) = v0;
  *(v1 + 584) = v2;
  *(v1 + 760) = v3;
  *(v1 + 576) = v4;
  *(v1 + 568) = v5;
  *(v1 + 560) = v6;
  *(v1 + 552) = v7;
  v8 = sub_18844E6FC(&qword_1EA90E548, &qword_1886FB5F8);
  *(v1 + 600) = v8;
  sub_1883F8620(v8);
  *(v1 + 608) = v9;
  *(v1 + 616) = sub_188403038();
  v10 = type metadata accessor for Date();
  *(v1 + 624) = v10;
  sub_1883F8620(v10);
  *(v1 + 632) = v11;
  *(v1 + 640) = sub_188406FFC();
  *(v1 + 648) = swift_task_alloc();
  *(v1 + 656) = swift_task_alloc();
  *(v1 + 664) = swift_task_alloc();
  *(v1 + 672) = swift_task_alloc();
  *(v1 + 680) = swift_task_alloc();
  v12 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F8AE4(v12);
  *(v1 + 688) = sub_188406FFC();
  *(v1 + 696) = swift_task_alloc();
  *(v1 + 704) = swift_task_alloc();
  *(v1 + 712) = swift_task_alloc();
  *(v1 + 720) = swift_task_alloc();
  *(v1 + 728) = swift_task_alloc();
  *(v1 + 736) = swift_task_alloc();
  v13 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1884F0218()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v3 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1884F02FC, v2, 0);
}

uint64_t sub_1884F02FC()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 736);

  sub_1883F9FEC(v2, &unk_1EA90D7B0, &dword_1886F8780);
  sub_1883FAAE4();

  sub_1883F816C();

  return v3();
}

void sub_1884F041C(uint64_t a1, void *a2)
{
  v6[1] = a2;
  v3 = sub_1883F4C9C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x18CFD59D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_188406C1C(v6, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1884F04DC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_188420364(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1884F05E0(uint64_t a1)
{
  sub_188400B68((a1 + 32), *(a1 + 56));

  return sub_1884E5084();
}

uint64_t sub_1884F0610()
{
  sub_1883F78E0();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v4 = *(v3 + 24);
  v5 = *v0;
  sub_1883F7110();
  *v6 = v5;
  *(v8 + 56) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1884F0750, v4, 0);
}

uint64_t sub_1884F0774()
{
  sub_1883F7120();
  v2 = *v1;
  sub_1883F7110();
  *v3 = v2;

  if (v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884F08A8()
{
  sub_1883F78E0();
  v1 = v0[2].opaque[0];
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1884F0950, v1, 0);
}

uint64_t sub_1884F0950()
{
  sub_1883F7120();
  sub_1883F816C();

  return v0();
}

uint64_t sub_1884F09CC()
{
  sub_1883F7120();
  os_activity_scope_leave(v0 + 1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1884F0A4C()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v2 = *v1;
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;

  v5 = v2[62];
  v6 = v2[61];
  v7 = v2[60];
  if (v0)
  {
  }

  (*(v6 + 8))(v5, v7);
  sub_1883F7FD8();
  sub_188404D5C();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1884F0BCC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t __src, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_188417250();
  a31 = v34;
  a32 = v35;
  a30 = v32;
  v36 = sub_1883F57B8();
  *(v32 + 512) = v36;
  sub_1883FEB90();
  sub_1883F60E8(0xD000000000000026, v37, v36);
  sub_1883F7FE4();
  sub_1883F4C5C(v38, v39, v40);
  sub_1883F7FE4();
  sub_1883F66E4(v41, v42, v43);
  v44 = v36;
  v45 = MEMORY[0x1E69E7CC0];
  v46 = Dictionary.init(dictionaryLiteral:)();

  *(v32 + 176) = 0;
  *(v32 + 184) = 2;
  v47 = (v32 + 528);
  v48 = (v32 + 542);
  *(v32 + 192) = v44;
  *(v32 + 200) = v45;
  *(v32 + 208) = v46;
  *(v32 + 216) = 1;
  *(v32 + 224) = 0;
  *(v32 + 232) = 0;
  *(v32 + 240) = 3;
  v49 = v44;
  sub_1883F697C(v32 + 176, v32 + 248);
  sub_1883F69F4(v49);
  sub_188404258();
  if (v50 && (v51 = sub_1883F7574(), (sub_1883F7624(v51, v52, v44, v33) & 1) == 0))
  {
  }

  else
  {
    v53 = *(v32 + 176);
    v54 = *(v32 + 184);
    type metadata accessor for SyncEngine(0);
    __src = v53;
    a13 = v54;
    v47 = (v32 + 528);

    v48 = (v32 + 542);
    v55 = sub_1883F6734(&__src);
    v57 = v56;

    v58 = v57;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1883F60E8(v55, v58, v49);
  }

  sub_1883F7768(v32 + 176);
  *(v32 + 320) = 0;
  *(v32 + 328) = 2;
  *(v32 + 329) = *v47;
  *(v32 + 332) = *(v47 + 3);
  *(v32 + 336) = v49;
  *(v32 + 344) = v45;
  *(v32 + 352) = v46;
  sub_1883F6188(1);
  v59 = *v48;
  *(v32 + 380) = *(v48 + 3);
  *v60 = v59;
  sub_1884F4918(3);
  *(v32 + 16) = 0;
  memcpy((v32 + 17), &__src, 0x4FuLL);
  memcpy((v32 + 96), (v32 + 16), 0x50uLL);
  sub_1883F697C(v32 + 320, v32 + 392);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v32 + 520) = v61;
  *v61 = v62;
  v61[1] = sub_1884F0E88;
  sub_18840562C();

  return sub_1883FA8A4();
}

uint64_t sub_1884F0E88()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *v1;
  sub_1883F7110();
  *v3 = v2;

  if (v0)
  {
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884F0F8C()
{
  sub_1883F7120();

  sub_1883F7768(v0 + 320);
  sub_1883FB300(v0 + 16);

  sub_1883FDB48();

  return v1();
}

uint64_t sub_1884F0FFC()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = sub_1883F8458();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884F10E4()
{
  sub_1883F7120();
  swift_unknownObjectRelease();
  **(v0 + 16) = *(v0 + 72);
  sub_1883F816C();

  return v1();
}

uint64_t sub_1884F1148()
{
  v1 = v0;
  swift_beginAccess();
  sub_18841D168(v0 + 288, aBlock, &qword_1EA90DD10, &qword_1886F8770);
  v2 = ObjectType;
  result = sub_1883F9FEC(aBlock, &qword_1EA90DD10, &qword_1886F8770);
  if (!v2)
  {
    if (qword_1EA90C9F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1883FDE5C(v4, qword_1EA90C9F8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock[0] = v8;
      *v7 = 136315138;
      v9 = sub_1883FE43C();
      v11 = sub_1883FE340(v9, v10, aBlock);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1883EA000, v5, v6, "%s starting to listen for identity updates", v7, 0xCu);
      sub_1883FE944(v8);
      MEMORY[0x18CFD7E80](v8, -1, -1);
      MEMORY[0x18CFD7E80](v7, -1, -1);
    }

    *(v0 + 282) = 1;
    v12 = [objc_opt_self() defaultCenter];
    v17 = sub_1884F35FC;
    v18 = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1884F17E8;
    ObjectType = &unk_1EFA2C1A8;
    v13 = _Block_copy(aBlock);

    v14 = [v12 addObserverForName:@"CKIdentityUpdateNotification" object:0 queue:0 usingBlock:v13];
    _Block_release(v13);

    ObjectType = swift_getObjectType();
    aBlock[0] = v14;
    swift_beginAccess();
    sub_188436394(aBlock, v1 + 288, &qword_1EA90DD10, &qword_1886F8770);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1884F1424(uint64_t a1, uint64_t a2)
{
  v3 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  if (qword_1EA90C9F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1883FDE5C(v6, qword_1EA90C9F8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = sub_1883FE43C();
    v13 = sub_1883FE340(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1883EA000, v7, v8, "%s received identity update while waiting", v9, 0xCu);
    sub_1883FE944(v10);
    MEMORY[0x18CFD7E80](v10, -1, -1);
    MEMORY[0x18CFD7E80](v9, -1, -1);
  }

  v14 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v5, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;

  sub_188453610();
}

uint64_t sub_1884F165C()
{
  sub_1883F7120();
  sub_1884F16B8();
  sub_1884E5EAC();
  sub_1883F816C();

  return v0();
}

uint64_t sub_1884F16B8()
{
  swift_beginAccess();
  sub_18841D168(v0 + 288, &v3, &qword_1EA90DD10, &qword_1886F8770);
  if (!*(&v4 + 1))
  {
    return sub_1883F9FEC(&v3, &qword_1EA90DD10, &qword_1886F8770);
  }

  sub_188419138(&v3, &v5);
  *(v0 + 282) = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_188436394(&v3, v0 + 288, &qword_1EA90DD10, &qword_1886F8770);
  swift_endAccess();
  v1 = [objc_opt_self() defaultCenter];
  sub_188400B68(&v5, v6);
  [v1 removeObserver_];

  swift_unknownObjectRelease();
  return sub_1883FE944(&v5);
}

uint64_t sub_1884F17E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1884F18DC(uint64_t a1)
{
  result = sub_18850BCF0();
  if (result)
  {
    v3 = result;
    v4 = v2;
    if ([result accountStatus] == 3)
    {

      return 0;
    }

    else
    {
      v5 = [v3 accountStatus];

      if (v5 != 1 || v4 == 0)
      {

        return 0;
      }

      else
      {

        return 1;
      }
    }
  }

  return result;
}

void sub_1884F19E4()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  memset(v85, 0, 96);
  sub_1883F9FEC(v85, &unk_1EA90E4D0, &unk_1886FB460);
  memcpy(v3 + 3, v1, 0x60uLL);
  sub_18844E6FC(&qword_1EA90E588, &qword_1886FB738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886FB560;
  *(inited + 32) = 0x6867694879726576;
  *(inited + 40) = 0xE800000000000000;
  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v5 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v6 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v7 = sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  v8 = MEMORY[0x1E69E7CC0];
  v10 = sub_1883FF3F4(v7, v9, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(inited + 48) = 0;
  *(inited + 56) = v5;
  *(inited + 64) = v10;
  *(inited + 72) = v6;
  *(inited + 80) = 1751607656;
  *(inited + 88) = 0xE400000000000000;
  if (sub_1883F4C9C(v8))
  {
    v11 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CD0];
  }

  v12 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v12)
  {
    v12 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v14 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  v15 = sub_1883FF3F4(v12, v13, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(inited + 96) = 0;
  *(inited + 104) = v11;
  *(inited + 112) = v15;
  *(inited + 120) = v14;
  *(inited + 128) = 0x6C616D726F6ELL;
  *(inited + 136) = 0xE600000000000000;
  if (sub_1883F4C9C(v8))
  {
    v16 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v17 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v17)
  {
    v17 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v19 = v17;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1883FF3F4(v17, v18, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(inited + 144) = 0;
  *(inited + 152) = v16;
  *(inited + 160) = v20;
  *(inited + 168) = v19;
  *(inited + 176) = 7827308;
  *(inited + 184) = 0xE300000000000000;
  if (sub_1883F4C9C(v8))
  {
    v21 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CD0];
  }

  v22 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v22)
  {
    v22 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v24 = v22;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
  }

  v25 = sub_1883FF3F4(v22, v23, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(inited + 192) = 0;
  *(inited + 200) = v21;
  *(inited + 208) = v25;
  *(inited + 216) = v24;
  *(inited + 224) = 0x776F4C79726576;
  *(inited + 232) = 0xE700000000000000;
  if (sub_1883F4C9C(v8))
  {
    v26 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CD0];
  }

  v27 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v27)
  {
    v27 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v29 = v27;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CD0];
  }

  v30 = sub_1883FF3F4(v27, v28, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(inited + 240) = 0;
  *(inited + 248) = v26;
  *(inited + 256) = v30;
  *(inited + 264) = v29;
  sub_1884F3F44();
  *v3 = Dictionary.init(dictionaryLiteral:)();
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1886FB560;
  *(v31 + 32) = 0x6867694879726576;
  *(v31 + 40) = 0xE800000000000000;
  if (sub_1883F4C9C(v8))
  {
    v32 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CD0];
  }

  v33 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v33)
  {
    v33 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v35 = v33;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CD0];
  }

  v36 = MEMORY[0x1E69E7CC0];
  v37 = sub_1883FF548(v33, v34, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(v31 + 48) = 1;
  *(v31 + 56) = v32;
  *(v31 + 64) = v37;
  *(v31 + 72) = v35;
  *(v31 + 80) = 1751607656;
  *(v31 + 88) = 0xE400000000000000;
  if (sub_1883F4C9C(v36))
  {
    v38 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CD0];
  }

  v39 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v39)
  {
    v39 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v41 = v39;
  }

  else
  {
    v41 = MEMORY[0x1E69E7CD0];
  }

  v42 = sub_1883FF548(v39, v40, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(v31 + 96) = 1;
  *(v31 + 104) = v38;
  *(v31 + 112) = v42;
  *(v31 + 120) = v41;
  *(v31 + 128) = 0x6C616D726F6ELL;
  *(v31 + 136) = 0xE600000000000000;
  if (sub_1883F4C9C(v36))
  {
    v43 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CD0];
  }

  v44 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v44)
  {
    v44 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v46 = v44;
  }

  else
  {
    v46 = MEMORY[0x1E69E7CD0];
  }

  v47 = sub_1883FF548(v44, v45, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(v31 + 144) = 1;
  *(v31 + 152) = v43;
  *(v31 + 160) = v47;
  *(v31 + 168) = v46;
  *(v31 + 176) = 7827308;
  *(v31 + 184) = 0xE300000000000000;
  if (sub_1883F4C9C(v36))
  {
    v48 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v48 = MEMORY[0x1E69E7CD0];
  }

  v49 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v49)
  {
    v49 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v51 = v49;
  }

  else
  {
    v51 = MEMORY[0x1E69E7CD0];
  }

  v52 = sub_1883FF548(v49, v50, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(v31 + 192) = 1;
  *(v31 + 200) = v48;
  *(v31 + 208) = v52;
  sub_1884F4794();
  *(v31 + 216) = v51;
  *(v31 + 224) = v53;
  *(v31 + 232) = 0xE700000000000000;
  if (sub_1883F4C9C(v36))
  {
    v54 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v54 = MEMORY[0x1E69E7CD0];
  }

  v55 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v55)
  {
    v55 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v57 = v55;
  }

  else
  {
    v57 = MEMORY[0x1E69E7CD0];
  }

  v58 = sub_1883FF548(v55, v56, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(v31 + 240) = 1;
  *(v31 + 248) = v54;
  *(v31 + 256) = v58;
  *(v31 + 264) = v57;
  v3[1] = Dictionary.init(dictionaryLiteral:)();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1886FB560;
  *(v59 + 32) = 0x6867694879726576;
  *(v59 + 40) = 0xE800000000000000;
  if (sub_1883F4C9C(v36))
  {
    v60 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v60 = MEMORY[0x1E69E7CD0];
  }

  v61 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v61)
  {
    v61 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v63 = v61;
  }

  else
  {
    v63 = MEMORY[0x1E69E7CD0];
  }

  v64 = MEMORY[0x1E69E7CC0];
  v65 = sub_1883FF3F4(v61, v62, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(v59 + 48) = 2;
  *(v59 + 56) = v60;
  *(v59 + 64) = v65;
  *(v59 + 72) = v63;
  *(v59 + 80) = 1751607656;
  *(v59 + 88) = 0xE400000000000000;
  if (sub_1883F4C9C(v64))
  {
    v66 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v66 = MEMORY[0x1E69E7CD0];
  }

  v67 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v67)
  {
    v67 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v69 = v67;
  }

  else
  {
    v69 = MEMORY[0x1E69E7CD0];
  }

  v70 = sub_1883FF3F4(v67, v68, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(v59 + 96) = 2;
  *(v59 + 104) = v66;
  *(v59 + 112) = v70;
  *(v59 + 120) = v69;
  *(v59 + 128) = 0x6C616D726F6ELL;
  *(v59 + 136) = 0xE600000000000000;
  if (sub_1883F4C9C(v64))
  {
    v71 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v71 = MEMORY[0x1E69E7CD0];
  }

  v72 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v72)
  {
    v72 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v74 = v72;
  }

  else
  {
    v74 = MEMORY[0x1E69E7CD0];
  }

  v75 = sub_1883FF3F4(v72, v73, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(v59 + 144) = 2;
  *(v59 + 152) = v71;
  *(v59 + 160) = v75;
  *(v59 + 168) = v74;
  *(v59 + 176) = 7827308;
  *(v59 + 184) = 0xE300000000000000;
  if (sub_1883F4C9C(v64))
  {
    v76 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v76 = MEMORY[0x1E69E7CD0];
  }

  v77 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v77)
  {
    v77 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
    v79 = v77;
  }

  else
  {
    v79 = MEMORY[0x1E69E7CD0];
  }

  v80 = sub_1883FF3F4(v77, v78, &type metadata for CKSyncEngine._AutomaticSyncOptions._ZoneOptions._AssetContentsFetchType);
  *(v59 + 192) = 2;
  *(v59 + 200) = v76;
  *(v59 + 208) = v80;
  sub_1884F4794();
  *(v59 + 216) = v79;
  *(v59 + 224) = v81;
  *(v59 + 232) = 0xE700000000000000;
  if (sub_1883F4C9C(v64))
  {
    v82 = sub_1884F311C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v82 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1883F4C9C(MEMORY[0x1E69E7CC0]))
  {
    v83 = sub_1884F32E0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v83 = MEMORY[0x1E69E7CD0];
  }

  v84 = Dictionary.init(dictionaryLiteral:)();
  *(v59 + 240) = 2;
  *(v59 + 248) = v82;
  *(v59 + 256) = v84;
  *(v59 + 264) = v83;
  v3[2] = Dictionary.init(dictionaryLiteral:)();
  sub_1883F8178();
}

uint64_t sub_1884F2304(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 32))
  {
    memcpy(__dst, (a2 + 24), sizeof(__dst));
    v4 = __dst[0];
    v3 = __dst[1];
    v5 = __dst[3];
    v6 = __dst[4];
    v7 = __dst[6];
    v28 = __dst[5];
    v29 = __dst[2];
    v8 = __dst[9];
    if (*(__dst[9] + 16))
    {
      v9 = __dst[11];

      v10 = v9;
      v2 = v30;
      sub_188486310();
      if (v12)
      {
        v13 = *(v8 + 56) + 56 * v11;
        v4 = *v13;
        v3 = *(v13 + 8);
        v14 = *(v13 + 16);
        v5 = *(v13 + 24);
        v15 = *(v13 + 32);
        v16 = *(v13 + 40);
        v7 = *(v13 + 48);

        sub_1883F9FEC(__dst, &unk_1EA90E4D0, &unk_1886FB460);
        if ((v15 & 1) == 0)
        {
          goto LABEL_15;
        }

        v28 = v16;
        v29 = v14;
        v2 = v30;
      }

      else
      {

        sub_1883F9FEC(__dst, &unk_1EA90E4D0, &unk_1886FB460);
        if ((v6 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {

      if ((v6 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v28 = 0xD000000000000012;
    v4 = 0x6C616D726F6ELL;
    v5 = 0xE600000000000000;
    swift_bridgeObjectRelease_n();
    v7 = 0x8000000188702670;

    v3 = 0xE600000000000000;
    v29 = 0x6C616D726F6ELL;
  }

  v18 = sub_1884E4C40(__dst, v4, v3);
  if (*(v17 + 8))
  {
    v19 = v17;
    v20 = v2;
    sub_188406C1C(&v32, v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v19 + 16);
    sub_1884AF5D4(v28, v7, v20, isUniquelyReferenced_nonNull_native);
    *(v19 + 16) = v32;
  }

  (v18)(__dst, 0);

  v23 = sub_1884E4C40(__dst, v29, v5);
  if (*(v22 + 8))
  {
    v24 = v22;
    v25 = v30;
    sub_188406C1C(&v32, v25);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v24 + 16);
    sub_1884AF5D4(0xD000000000000012, 0x8000000188702670, v25, v26);
    *(v24 + 16) = v32;
  }

  (v23)(__dst, 0);
LABEL_15:
}

void sub_1884F2660(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 recordID];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 zoneID];

    if (v6)
    {
      if (a2[4])
      {
        memcpy(__dst, a2 + 3, sizeof(__dst));
        v7 = __dst[4];
        v8 = __dst[9];
        if (*(__dst[9] + 16))
        {
          v9 = v6;
          v10 = __dst[11];

          v11 = v10;
          v6 = v9;
          sub_188486310();
          if (v13)
          {
            v7 = *(*(v8 + 56) + 56 * v12 + 32);
          }

          sub_1883F9FEC(__dst, &unk_1EA90E4D0, &unk_1886FB460);
        }

        else
        {
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v14 = 0x6C616D726F6ELL;
      if (a2[4] && (v15 = a2[13], *(v15 + 16)))
      {
        v16 = v3;
        sub_18848655C();
        if (v18)
        {
          v19 = (*(v15 + 56) + 16 * v17);
          v14 = *v19;
          v20 = v19[1];
        }

        else
        {
          v20 = 0xE600000000000000;
        }
      }

      else
      {
        v20 = 0xE600000000000000;
      }

      v21 = v3;
      v22 = sub_1884E4C40(__dst, v14, v20);
      if (*(v23 + 8))
      {
        sub_188501350(&v25, v21);
      }

      (v22)(__dst, 0);

LABEL_22:
    }
  }
}

uint64_t sub_1884F2934(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(37);
  MEMORY[0x18CFD5140](60, 0xE100000000000000);
  MEMORY[0x18CFD5140](0x69746341636E7953, 0xEA00000000006E6FLL);
  MEMORY[0x18CFD5140](0x707954636E797320, 0xEA00000000003D65);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](0x734449656E6F7A20, 0xE90000000000003DLL);
  v4 = sub_1883FF67C();
  sub_1883F4C5C(v4, v5, off_1E70BA650);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883FB5D4();
  v6 = Set.description.getter();
  MEMORY[0x18CFD5140](v6);

  MEMORY[0x18CFD5140](0x3D73746573736120, 0xE800000000000000);
  v7 = sub_1883FF67C();
  sub_1883F4C5C(v7, v8, off_1E70B9FD0);
  sub_1883F66E4(&unk_1EA90C680, &qword_1EA90C690, off_1E70B9FD0);
  v9 = Set.description.getter();
  MEMORY[0x18CFD5140](v9);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return 0;
}

id sub_1884F2B14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x18CFD5010](a1);

  v8 = [v4 initWithIdentifier:v7 container:a3 priority:a4];

  return v8;
}

uint64_t sub_1884F2B88(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1884F2D30()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

void (*sub_1884F2D94(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = sub_188470D2C(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1884F30E8(v6);
  v6[9] = sub_1884F2E8C(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1884F2E2C;
}

void sub_1884F2E2C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1884F2E8C(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  v10 = sub_188470D2C(0x48uLL);
  *a1 = v10;
  *(v10 + 5) = a3;
  *(v10 + 6) = v4;
  *(v10 + 4) = a2;
  v11 = *v4;
  v12 = sub_188420F2C(a2, a3);
  v10[64] = v13 & 1;
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  sub_18844E6FC(&qword_1EA90E580, &qword_1886FB728);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v16))
  {
    v19 = sub_188420F2C(a2, a3);
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v10 + 7) = v17;
  if (v18)
  {
    v21 = (*(*v5 + 56) + 32 * v17);
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 3);
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v23 = 0uLL;
  }

  *v10 = v22;
  *(v10 + 8) = v23;
  *(v10 + 3) = v24;
  return sub_1884F2FE8;
}

void sub_1884F2FE8()
{
  sub_1883F8AF0();
  v1 = *v0;
  v2 = **v0;
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v6 = *(*v0 + 64);
  if (v3)
  {
    v7 = v1[7];
    v8 = *v1[6];
    if (v6)
    {
      v9 = *(v8 + 56) + 32 * v7;
      *v9 = v2;
      *(v9 + 8) = v3;
      *(v9 + 16) = v4;
      *(v9 + 24) = v5;
    }

    else
    {
      sub_1884AFAB8(v7, v1[4], v1[5], v2, v3, v4, v5, v8);
    }
  }

  else if ((*v0)[8])
  {
    sub_1884F3EF0(*(*v1[6] + 48) + 16 * v1[7]);
    sub_1884F3F44();
    sub_1883F712C();
    _NativeDictionary._delete(at:)();
  }

  v10 = sub_1884F4640();
  sub_1884F3EA0(v10, v11, v4, v5);
  v12 = sub_1883F712C();
  sub_1884F3A8C(v12, v13);
  sub_1883F8178();

  free(v14);
}

uint64_t (*sub_1884F30E8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1884F3110;
}

Swift::Int sub_1884F311C(uint64_t a1)
{
  v1 = a1;
  if (sub_1883F4C9C(a1))
  {
    sub_18844E6FC(&qword_1EA90E598, &qword_1886FB740);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1883F4C9C(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_188426C84(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x18CFD59D0](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(*(v2 + 40));
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

Swift::Int sub_1884F32E0(uint64_t a1)
{
  v1 = a1;
  if (sub_1883F4C9C(a1))
  {
    sub_18844E6FC(&qword_1EA90E590, &qword_1886FBD30);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1883F4C9C(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_188426C84(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x18CFD59D0](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(*(v2 + 40));
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1883F4C5C(0, &qword_1EA90C690, off_1E70B9FD0);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_1884F34A4(void *a1)
{
  v1 = [a1 relatedApplicationBundleIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1884F34FC(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setRelatedApplicationBundleIdentifiers_];
}

uint64_t sub_1884F3568()
{
  sub_1883F78E0();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883FF1B4(v1);

  return sub_1884EFB00(v3, v4, v5, v6);
}

uint64_t sub_1884F3604()
{
  swift_unknownObjectRelease();

  sub_1883F7E80();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1884F3640()
{
  sub_1883F78E0();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883FF1B4(v1);

  return sub_1884F163C(v3, v4, v5, v6);
}

uint64_t sub_1884F3700()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  v2 = sub_1883FDA74(v1);
  *v2 = v3;
  v2[1] = sub_1884F4440;
  v4 = sub_1883FE860();

  return sub_1884E61F4(v4, v0);
}

uint64_t sub_1884F378C()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  v2 = sub_1883FDA74(v1);
  *v2 = v3;
  v2[1] = sub_1884F3818;
  v4 = sub_1883FE860();

  return sub_1884E6F38(v4, v0);
}

uint64_t sub_1884F3818()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1884F4454();

  return v4(v3);
}

uint64_t sub_1884F38FC()
{
  sub_1883F78E0();
  sub_1883F877C();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1883F7E38(v2);
  *v3 = v4;
  v5 = sub_188428FFC(v3);

  return sub_1884EFA7C(v5, v6, v1);
}

uint64_t sub_1884F3990()
{
  sub_1883F78E0();
  sub_1883F877C();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_1883F7E38(v2);
  *v3 = v4;
  v5 = sub_188428FFC(v3);

  return sub_1884E7968(v5, v6, v1);
}

uint64_t sub_1884F3A8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1884F3ADC()
{
  sub_1883F78E0();
  v1 = *(v0 + 120);
  v2 = swift_task_alloc();
  v3 = sub_1883FDA74(v2);
  *v3 = v4;
  v5 = sub_188410210(v3);

  return sub_1884EC3C4(v5, v6, v1);
}

uint64_t sub_1884F3B70()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1884F47C8();

  return v4(v3);
}

uint64_t sub_1884F3C58()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

uint64_t sub_1884F3CE8()
{
  sub_1883F78E0();
  v1 = *(v0 + 120);
  v2 = swift_task_alloc();
  v3 = sub_1883FDA74(v2);
  *v3 = v4;
  v5 = sub_188410210(v3);

  return sub_1884ECA7C(v5, v6, v1);
}

uint64_t sub_1884F3D7C()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 64))
  {
  }

  if (*(v0 + 96))
  {
  }

  sub_1883FA718();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1884F3E0C()
{
  sub_1883F78E0();
  v1 = *(v0 + 120);
  v2 = swift_task_alloc();
  v3 = sub_1883FDA74(v2);
  *v3 = v4;
  v5 = sub_188410210(v3);

  return sub_1884ECB84(v5, v6, v1);
}

double sub_1884F3EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1884F3F44()
{
  result = qword_1EA90C740;
  if (!qword_1EA90C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C740);
  }

  return result;
}

uint64_t sub_1884F3F98()
{
  sub_1883F7120();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v3 = sub_188410210(v1);

  return sub_1884EEE84(v3, v4);
}

uint64_t sub_1884F401C()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

uint64_t sub_1884F40AC()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v1[1] = sub_188442BE4;
  sub_1883FE860();
  sub_188404D5C();

  return sub_1884EF124(v3, v4, v5, v6, v7);
}

uint64_t sub_1884F4164(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1884F41B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1884F423C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1884F427C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s10SyncActionV8SyncTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1884F43D8()
{
  result = qword_1EA90E5A0;
  if (!qword_1EA90E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E5A0);
  }

  return result;
}

void sub_1884F4470()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_1884F4498(uint64_t a1)
{

  return Set.description.getter();
}

uint64_t sub_1884F44C0()
{
}

uint64_t sub_1884F44D8()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2080;
  return v1;
}

uint64_t sub_1884F44F4()
{

  return type metadata accessor for Logger();
}

unint64_t sub_1884F4538(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_1883FE340(a1, a2, va);
}

void *sub_1884F455C(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x50uLL);
}

void *sub_1884F4594()
{
  v2[587] = v1;
  v2[588] = v0;

  return memcpy(v2 + v3, v2 + 737, 0x50uLL);
}

BOOL sub_1884F45BC()
{

  return os_log_type_enabled(v0, v1);
}

unint64_t sub_1884F45D4(uint64_t a1, unint64_t a2)
{

  return sub_1883FE340(a1, a2, (v2 - 88));
}

void sub_1884F464C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

void *sub_1884F4664(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va1, a22);
  va_start(__srca, a22);
  __src = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);

  return memcpy((v22 + v23), __srca, 0x60uLL);
}

uint64_t sub_1884F4680()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1884F469C()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1884F46B8(float a1)
{
  *v1 = a1;

  return sub_1883FE43C();
}

uint64_t sub_1884F46D0()
{
}

uint64_t sub_1884F46E8()
{

  return swift_bridgeObjectRelease_n();
}

void *sub_1884F4704()
{

  return memcpy(v0, (v1 + 2488), 0x78uLL);
}

uint64_t sub_1884F4720(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18841D168(v4 + v5, v4 + 4024, a3, v3);
}

void sub_1884F473C()
{

  sub_1884EBFD0((v0 + 5464));
}

uint64_t sub_1884F4758()
{
  *(v0 + 120) = v1;

  return swift_task_alloc();
}

uint64_t sub_1884F4828(uint64_t result, uint64_t a2)
{
  v2[4] = result;
  v2[5] = a2;
  v2[6] = 0xD000000000000012;
  return result;
}

uint64_t sub_1884F4878()
{

  return sub_1883F9FEC(v0 + v3, v1, v2);
}

uint64_t sub_1884F4898()
{

  return sub_1883F9FEC(v2 + v3, v1, v0);
}

void sub_1884F48B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1884F48D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

void sub_1884F48F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

void *sub_1884F4918@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 384) = a1;

  return memcpy((v1 | 7), (v2 + 320), 0x48uLL);
}

uint64_t sub_1884F4938()
{
  *(v2 + 2912) = v1;
  *(v2 + 2920) = v0;

  return sub_1884F3A24(v2 + 2808, v2 + 2968);
}

void *sub_1884F4958(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(__srca, a14);
  __src = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);

  return memcpy(a1, __srca, 0x60uLL);
}

BOOL sub_1884F4970()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_1884F4988()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1884F49A0()
{
}

uint64_t sub_1884F49B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_18844E6FC(&qword_1EA90E5C8, &qword_1886FE120);
    sub_1883F9598();
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1884F9088(v2, 1, &v4);

  return v4;
}

uint64_t sub_1884F4A68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_18844E6FC(&qword_1EA90E5B8, &qword_1886FBA50);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v4 = v2;
  sub_1884F937C(a1, 1, &v4);
  return v4;
}

uint64_t sub_1884F4B10()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v3 = v0[54];
  sub_1883FC800();
  v4 = sub_18840EFC4(v3);
  v0[61] = v4;
  v5 = v4;
  v6 = sub_18841BAF0();
  sub_18840F1E8(v6);

  if (v2 == 1)
  {
    v7 = swift_task_alloc();
    v8 = sub_1883FE86C(v7);
    *v8 = v9;
    sub_1883F7D78(v8);
    sub_188404D5C();

    return sub_1884115F4();
  }

  else
  {

    v0[57] = v4;
    v12 = swift_task_alloc();
    v13 = sub_18840DF00(v12);
    *v13 = v14;
    sub_1883F9E98(v13);
    sub_188405328();
    sub_188404D5C();

    return sub_18840E178();
  }
}

uint64_t sub_1884F4C08()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v3 = v0[56];
  sub_1883FC800();
  v4 = sub_18840EFC4(v3);
  v0[61] = v4;
  v5 = v4;
  v6 = sub_18841BAF0();
  sub_18840F1E8(v6);

  if (v2 == 1)
  {
    v7 = swift_task_alloc();
    v8 = sub_1883FE86C(v7);
    *v8 = v9;
    sub_1883F7D78(v8);
    sub_188404D5C();

    return sub_1884115F4();
  }

  else
  {

    v0[57] = v4;
    v12 = swift_task_alloc();
    v13 = sub_18840DF00(v12);
    *v13 = v14;
    sub_1883F9E98(v13);
    sub_188405328();
    sub_188404D5C();

    return sub_18840E178();
  }
}

uint64_t sub_1884F4D00()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

uint64_t sub_1884F4D5C()
{
  sub_1883F78E0();
  [*(*(*(v0 + 352) + 128) + 16) moveInFlightDatabaseChangesToPending];
  swift_willThrow();

  sub_1883F816C();

  return v1();
}

uint64_t sub_1884F4DE4()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 480) = v5;

  v7 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884F4EF8()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = v0[30].i64[0];
  if (v1 && *(v1 + 16))
  {

    sub_1883FEFEC();
    sub_1884DFA94(v2, v3, v4);
  }

  v5 = v0[28].i64[0];
  v6 = MEMORY[0x1E69E7CC0];
  v0[18].i64[1] = MEMORY[0x1E69E7CC0];
  v0[19].i64[0] = v6;
  v7 = swift_task_alloc();
  v0[30].i64[1] = v7;
  v7[1] = vextq_s8(v0[27], v0[27], 8uLL);
  sub_1884F9D6C(&qword_1886F7F08);
  v8 = v5;
  v9 = swift_task_alloc();
  v10 = sub_1883FE86C(v9);
  *v10 = v11;
  v10[1] = sub_1884F500C;
  sub_18840584C();
  sub_188404D5C();

  return v17(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1884F500C()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7110();
  *v3 = v2;
  v4 = *v1;
  sub_1883F7B78();
  *v5 = v4;
  *(v2 + 504) = v6;
  *(v2 + 512) = v7;
  *(v2 + 520) = v0;

  if (v0)
  {
    v8 = *(v2 + 448);
    v9 = *(v2 + 368);

    v10 = sub_1883FF410();
    v11 = v9;
  }

  else
  {
    v12 = *(v2 + 368);

    v10 = sub_1883FF410();
    v11 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

void sub_1884F5174()
{
  v203 = (v0 + 328);
  v204 = (v0 + 312);
  v3 = *(v0 + 504);
  v4 = v3 + 64;
  sub_1883F84E8();
  v212 = v0;
  v213 = v5;
  v209 = v6 & 0xFFFFFFFFFFFFFF8;
  v207 = v6 + 32;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v208 = MEMORY[0x1E69E7CC0];
LABEL_2:
  while (2)
  {
    v211 = v8;
    if (v2)
    {
      goto LABEL_7;
    }

    do
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if (v9 >= v1)
      {
        v44 = *(v212 + 504);
        v45 = *(v212 + 512);
        v0 = *(v212 + 384);

        v46 = 0;
        sub_18840E804();
        v49 = v48 & v47;
        v51 = (63 - v50) >> 6;
        v206 = (v0 + 8);
        v52 = MEMORY[0x1E69E7CC0];
        v210 = MEMORY[0x1E69E7CC8];
        v53 = MEMORY[0x1E69E7CC0];
LABEL_26:
        if (v49)
        {
          goto LABEL_31;
        }

        while (1)
        {
          v54 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_108;
          }

          if (v54 >= v51)
          {
            break;
          }

          v49 = *(v45 + 64 + 8 * v54);
          ++v46;
          if (v49)
          {
            v46 = v54;
LABEL_31:
            v49 &= v49 - 1;
            sub_1883FF4F0();
            if (!v56)
            {
              v57 = v44;
              v0 = v212;
              MEMORY[0x18CFD52F0]();
              if (*((*(v0 + 304) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 304) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v44 = (v212 + 304);
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v53 = *(v212 + 304);
              goto LABEL_26;
            }

            v58 = *v55;
            v59 = v204;
            *v204 = *v55;
            v60 = sub_1883FF150();
            sub_188462DBC(v60, v61);
            v201 = v44;
            v62 = sub_1883FF150();
            sub_188462DBC(v62, v63);
            sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
            type metadata accessor for CKError(0);
            v0 = v212;
            sub_1883FEFEC();
            if (swift_dynamicCast())
            {
              v199 = *(v212 + 320);
              goto LABEL_39;
            }

            *(v212 + 328) = v58;
            v64 = v58;
            v59 = v203;
            sub_1883FEFEC();
            if (swift_dynamicCast())
            {
              v196 = *(v212 + 376);
              v197 = *(v212 + 392);
              sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1886F7400;
              *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(inited + 40) = v66;
              *(inited + 48) = 0xD000000000000012;
              *(inited + 56) = 0x80000001886FFF40;
              Dictionary.init(dictionaryLiteral:)();
              *(v212 + 352) = 20;
              sub_18847E984();

              sub_18847A4EC();
              _BridgedStoredNSError.init(_:userInfo:)();
              v199 = *(v212 + 344);
              (*v206)(v197, v196);
LABEL_39:

              isUnique = swift_isUniquelyReferenced_nonNull_native();
              sub_188486310();
              v198 = v67;
              sub_1883FE314();
              v71 = v69 + v70;
              v52 = MEMORY[0x1E69E7CC0];
              if (__OFADD__(v69, v70))
              {
                goto LABEL_118;
              }

              v0 = v68;
              sub_18844E6FC(&qword_1EA90E268, &qword_1886FB470);
              v44 = v210;
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v71))
              {
                sub_188486310();
                sub_188410224();
                if (!v56)
                {
                  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
                  sub_188443388();

                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  return;
                }

                if (v0)
                {
LABEL_44:
                  v73 = v210[7];
                  v74 = *(v73 + 8 * v72);
                  *(v73 + 8 * v72) = v199;

                  v75 = sub_1883FF150();
                  sub_188462CBC(v75, v76);

                  goto LABEL_26;
                }
              }

              else
              {
                v72 = v198;
                if (v0)
                {
                  goto LABEL_44;
                }
              }

              v44 = v210;
              sub_1883FF230(&v210[v72 >> 6]);
              *(v210[6] + 8 * v77) = v201;
              *(v210[7] + 8 * v77) = v199;
              v78 = sub_1883FF150();
              sub_188462CBC(v78, v79);
              v80 = v210[2];
              v81 = __OFADD__(v80, 1);
              v82 = v80 + 1;
              if (v81)
              {
                goto LABEL_119;
              }

              v210[2] = v82;
              goto LABEL_26;
            }

LABEL_110:

            _StringGuts.grow(_:)(38);
            sub_18840AEF8();
            MEMORY[0x18CFD5140](v192 + 18, v193 | 0x8000000000000000);
            swift_getErrorValue();
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            sub_188411124();
            v195 = 99;
            sub_188404C44();
            v191 = 22;
LABEL_106:
            _assertionFailure(_:_:file:line:flags:)(v185, v186, v187, v188, v189, v190, v191, 2, v195);
            sub_188443388();
            return;
          }
        }

        *(v212 + 552) = v211;
        *(v212 + 544) = v53;
        *(v212 + 536) = v210;
        *(v212 + 528) = v208;
        v83 = v211;
        v84 = sub_1883F4C9C(v211);
        if (v84)
        {
          v85 = v84;

          v86 = sub_1883FEAD4();
          sub_188477954(v86, v87, v88);
          if (v85 < 0)
          {
            goto LABEL_116;
          }

          v45 = v52;
          v89 = 0;
          v0 = v52;
          do
          {
            if ((v211 & 0xC000000000000001) != 0)
            {
              v90 = MEMORY[0x18CFD59D0](v89, v83);
            }

            else
            {
              v90 = *(v83 + 8 * v89 + 32);
            }

            v91 = v90;
            v93 = *(v52 + 16);
            v92 = *(v52 + 24);
            if (v93 >= v92 >> 1)
            {
              v95 = sub_1883F8DD4(v92);
              sub_188477954(v95, v93 + 1, 1);
              v83 = v211;
            }

            ++v89;
            *(v52 + 16) = v93 + 1;
            v94 = v52 + 16 * v93;
            *(v94 + 32) = v91;
            *(v94 + 40) = 0;
          }

          while (v85 != v89);
        }

        else
        {

          v0 = MEMORY[0x1E69E7CC0];
        }

        v96 = sub_1883F4C9C(v53);
        v214 = v53;
        if (v96)
        {
          v97 = v96;

          v98 = sub_1883FEAD4();
          sub_188477954(v98, v99, v100);
          if (v97 < 0)
          {
            goto LABEL_117;
          }

          v101 = 0;
          v102 = v52;
          v103 = v53 & 0xC000000000000001;
          do
          {
            if (v103)
            {
              v104 = MEMORY[0x18CFD59D0](v101, v53);
            }

            else
            {
              v104 = *(v53 + 8 * v101 + 32);
            }

            v105 = v104;
            v106 = *(v102 + 16);
            sub_188410C74();
            if (v108)
            {
              sub_1883F8DD4(v107);
              sub_1883FF374();
              sub_188477954(v110, v111, v112);
            }

            ++v101;
            *(v102 + 16) = v45;
            v109 = v102 + 16 * v106;
            *(v109 + 32) = v105;
            *(v109 + 40) = 1;
            v53 = v214;
          }

          while (v97 != v101);
        }

        else
        {

          v102 = MEMORY[0x1E69E7CC0];
        }

        sub_188472600(v102);
        v113 = *(v208 + 16);
        if (v113)
        {
          v114 = (v208 + 40);
          v115 = MEMORY[0x1E69E7CC0];
          do
          {
            v116 = *v114;
            v117 = *(v114 - 1);
            v118 = v116;
            sub_18840D758();
            LOBYTE(v116) = v119;

            v120 = v117;
            if (v116)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v125 = sub_1883FA200();
                sub_1884775A0(v125, v126, v127, v115);
                v115 = v128;
              }

              v121 = *(v115 + 16);
              sub_188410C74();
              if (v108)
              {
                sub_1883F8DD4(v122);
                sub_1883FF374();
                sub_1884775A0(v129, v130, v131, v115);
                v123 = v132;
                v115 = v132;
              }

              else
              {
                v123 = v115;
              }
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v133 = sub_1883FA200();
                sub_1884775A0(v133, v134, v135, v0);
                v0 = v136;
              }

              v121 = *(v0 + 16);
              sub_188410C74();
              if (v108)
              {
                sub_1883F8DD4(v124);
                sub_1883F9A2C();
                sub_1884775A0(v137, v138, v139, v140);
                v123 = v141;
                v0 = v141;
              }

              else
              {
                v123 = v0;
              }
            }

            *(v123 + 16) = v117;
            sub_1883FAB2C(v123 + 16 * v121);
            v114 += 2;
            --v113;
          }

          while (v113);
        }

        else
        {
          v115 = MEMORY[0x1E69E7CC0];
        }

        v142 = v210;
        sub_1883F8A68();
        v145 = v144 & v143;
        sub_1883FE184();
        v147 = v146 >> 6;

        v148 = 0;
        if (v145)
        {
          while (1)
          {
LABEL_90:
            sub_188402300();
            v151 = *(v142[6] + v150);
            v152 = *(v142[7] + v150);
            v153 = v151;
            v154 = v152;
            sub_18840D758();
            if (v155)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v160 = sub_1883FA200();
                sub_1884775A0(v160, v161, v162, v115);
                v115 = v163;
              }

              v157 = *(v115 + 16);
              v156 = *(v115 + 24);
              if (v157 >= v156 >> 1)
              {
                v164 = sub_1884055B0(v156);
                sub_1884775A0(v164, v165, v166, v115);
                v115 = v167;
              }

              *(v115 + 16) = v157 + 1;
              v158 = v115 + 16 * v157;
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v168 = sub_1883FA200();
                sub_1884775A0(v168, v169, v170, v0);
                v0 = v171;
              }

              v159 = *(v0 + 16);
              if (v159 >= *(v0 + 24) >> 1)
              {
                sub_1883F9A2C();
                sub_1884775A0(v172, v173, v174, v175);
                v0 = v176;
              }

              *(v0 + 16) = v159 + 1;
              v158 = v0 + 16 * v159;
            }

            *(v158 + 32) = v153;
            sub_1883FDC80(v158);
            v142 = v210;
          }
        }

        while (1)
        {
          v149 = v148 + 1;
          if (__OFADD__(v148, 1))
          {
            break;
          }

          if (v149 >= v147)
          {

            sub_18850C4BC(v0);

            *(v212 + 96) = v211;
            *(v212 + 104) = v208;
            *(v212 + 112) = v214;
            *(v212 + 120) = v210;
            *(v212 + 144) = 0;
            *(v212 + 160) = 0x4000000000000000;

            v177 = swift_task_alloc();
            *(v212 + 560) = v177;
            *v177 = v212;
            sub_1883FA498(v177);
            sub_188443388();

            sub_1883FBEA8();
            return;
          }

          ++v148;
          if (v210[v149 + 8])
          {
            goto LABEL_90;
          }
        }

LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v2 = *(v4 + 8 * v9);
      ++v7;
    }

    while (!v2);
    v7 = v9;
LABEL_7:
    sub_1883FDCFC();
    v11 = v10 | (v7 << 6);
    v12 = *(*(v3 + 48) + 8 * v11);
    v13 = *(v3 + 56) + 16 * v11;
    v14 = *v13;
    if ((*(v13 + 8) & 1) == 0)
    {
      v15 = sub_1883FDC00();
      sub_188449260(v15);
      v16 = sub_1883FDC00();
      sub_188449260(v16);
      v17 = v12;
      v0 = v212;
      MEMORY[0x18CFD52F0]();
      if (*((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v18 = sub_1883FDC00();
      sub_18844CAFC(v18);
      v8 = *(v212 + 296);
      continue;
    }

    break;
  }

  v202 = v3;
  v205 = sub_1883F4C9C(*(v212 + 440));
  v19 = sub_1883F7F94();
  sub_188449260(v19);
  v20 = sub_1883F7F94();
  sub_188449260(v20);
  v21 = v12;
  for (i = 0; ; ++i)
  {
    if (v205 == i)
    {
      _StringGuts.grow(_:)(67);
      sub_18840AEF8();
      MEMORY[0x18CFD5140](v179 + 47, v180 | 0x8000000000000000);
      v181 = [v21 description];
      v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v184 = v183;

      MEMORY[0x18CFD5140](v182, v184);

      sub_188411124();
      v195 = 206;
      sub_188404C44();
      v191 = 37;
      goto LABEL_106;
    }

    if (v213)
    {
      v23 = MEMORY[0x18CFD59D0](i, *(v212 + 440));
    }

    else
    {
      if (i >= *(v209 + 16))
      {
        goto LABEL_115;
      }

      v23 = *(v207 + 8 * i);
    }

    v24 = v23;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v25 = [v24 zoneID];
    v26 = static NSObject.== infix(_:_:)();

    if (v26)
    {
      v27 = sub_1883F7F94();
      sub_188449260(v27);
      v28 = v24;
      v29 = sub_18840EFC4(v14);
      v30 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1883FA200();
        sub_1884775BC(v35, v36, v37, v38);
        v208 = v39;
      }

      v0 = *(v208 + 16);
      v31 = *(v208 + 24);
      if (v0 >= v31 >> 1)
      {
        sub_1883F8DD4(v31);
        sub_188410F10();
        sub_1884775BC(v40, v41, v42, v208);
        v208 = v43;
      }

      v32 = sub_1883F7F94();
      sub_18844CAFC(v32);
      v33 = sub_1883F7F94();
      sub_18844CAFC(v33);

      *(v208 + 16) = v0 + 1;
      v34 = v208 + 16 * v0;
      *(v34 + 32) = v28;
      *(v34 + 40) = v29;
      v8 = v211;
      v3 = v202;
      goto LABEL_2;
    }
  }

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
}

uint64_t sub_1884F5EE0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  sub_1883FEE9C();
  sub_1883FBF6C(v2 + 16);
  v6 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884F5FDC()
{
  sub_1883FB4AC();
  v1 = *(v0 + 360);
  v5 = *(v0 + 528);
  v6 = *(v0 + 544);

  *(&v2 + 1) = v5.i64[1];
  *&v2 = v6.i64[0];
  *v1 = vextq_s8(v6, v5, 8uLL);
  *(v1 + 16) = v2;

  sub_1883F816C();

  return v3();
}

void sub_1884F6058()
{
  v1 = v0[65];
  v2 = v0[55];
  v3 = v1;
  v4 = sub_18840EFC4(v1);
  v5 = sub_1883F4C9C(v2);
  v147 = v0;
  if (v5)
  {
    v6 = v5;
    v149 = MEMORY[0x1E69E7CC0];
    v7 = sub_1883FE594();
    sub_1884779E4(v7, v8, v9);
    if (v6 < 0)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v0[55];
    v12 = v149;
    v13 = v11 & 0xC000000000000001;
    v144 = v11 + 32;
    do
    {
      if (v13)
      {
        v14 = MEMORY[0x18CFD59D0](v10, v147[55]);
      }

      else
      {
        v14 = *(v144 + 8 * v10);
      }

      v15 = v14;
      v148 = v12;
      v17 = v12[2];
      v16 = v12[3];
      v18 = v4;
      if (v17 >= v16 >> 1)
      {
        sub_1884779E4(v16 > 1, v17 + 1, 1);
      }

      ++v10;
      v12[2] = v17 + 1;
      v19 = &v12[2 * v17];
      v19[4] = v15;
      v19[5] = v18;
    }

    while (v6 != v10);
    v143 = v12;
    v0 = v147;
  }

  else
  {

    v143 = MEMORY[0x1E69E7CC0];
  }

  v20 = v0[54];
  v21 = 0;
  v145 = sub_1883F4C9C(v20);
  v22 = MEMORY[0x1E69E7CC8];
  while (v145 != v21)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x18CFD59D0](v21, v147[54]);
    }

    else
    {
      if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_91;
      }

      v23 = *(v20 + 32 + 8 * v21);
    }

    v24 = v23;
    if (__OFADD__(v21, 1))
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v25 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v22;
    sub_188486310();
    sub_1883FE314();
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_92;
    }

    v32 = v27;
    v33 = v28;
    sub_18844E6FC(&qword_1EA90E268, &qword_1886FB470);
    v34 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v31);
    v22 = v148;
    if (v34)
    {
      sub_188486310();
      if ((v33 & 1) != (v36 & 1))
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        sub_1883F85A4();

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v32 = v35;
    }

    if (v33)
    {
      v37 = v148[7];
      v38 = *(v37 + 8 * v32);
      *(v37 + 8 * v32) = v25;
    }

    else
    {
      sub_1883FF230(&v148[v32 >> 6]);
      *(v148[6] + 8 * v32) = v24;
      *(v148[7] + 8 * v32) = v25;
      v39 = v148[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_93;
      }

      v148[2] = v41;
    }

    ++v21;
  }

  v42 = v147;
  v43 = v147[65];

  v44 = MEMORY[0x1E69E7CC0];
  v147[69] = MEMORY[0x1E69E7CC0];
  v147[68] = v44;
  v147[67] = v22;
  v147[66] = v143;
  v45 = sub_1883F4C9C(v44);
  if (v45)
  {
    v46 = v45;
    sub_1883F869C();
    v47 = sub_1883F832C();
    sub_188477954(v47, v48, v49);
    if (v46 < 0)
    {
      goto LABEL_95;
    }

    v50 = 0;
    v51 = v148;
    do
    {
      if (v44 >> 62)
      {
        v52 = MEMORY[0x18CFD59D0](v50, v44);
      }

      else
      {
        v52 = *(v44 + 8 * v50 + 32);
      }

      v53 = v52;
      v148 = v51;
      v55 = v51[2];
      v54 = v51[3];
      if (v55 >= v54 >> 1)
      {
        sub_1883F8DD4(v54);
        sub_188410F10();
        sub_188477954(v57, v58, v59);
      }

      ++v50;
      v51[2] = v55 + 1;
      v56 = &v51[2 * v55];
      v56[4] = v53;
      *(v56 + 40) = 0;
    }

    while (v46 != v50);
    v42 = v147;
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  v61 = MEMORY[0x1E69E7CC0];
  v62 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v62)
  {
    v63 = v62;
    sub_1883F869C();
    v64 = sub_1883F832C();
    sub_188477954(v64, v65, v66);
    if (v63 < 0)
    {
      goto LABEL_96;
    }

    v67 = 0;
    v68 = v148;
    do
    {
      if (v61 >> 62)
      {
        v69 = MEMORY[0x18CFD59D0](v67, v61);
      }

      else
      {
        v69 = *(v61 + 8 * v67 + 32);
      }

      v70 = v69;
      v72 = v148[2];
      v71 = v148[3];
      if (v72 >= v71 >> 1)
      {
        sub_1883F8DD4(v71);
        sub_188410F10();
        sub_188477954(v74, v75, v76);
      }

      ++v67;
      v148[2] = v72 + 1;
      v73 = &v148[2 * v72];
      *(v73 + 32) = v70;
      sub_1883FDC80(v73);
    }

    while (v63 != v67);
    swift_bridgeObjectRelease_n();
    v42 = v147;
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  sub_188472600(v68);
  v77 = v51;
  v78 = v143[2];
  v79 = MEMORY[0x1E69E7CC0];
  if (v78)
  {
    v80 = (v143 + 5);
    do
    {
      v81 = *v80;
      v82 = *(v80 - 1);
      v83 = v81;
      sub_18840D758();
      LOBYTE(v81) = v84;

      v85 = v82;
      if (v81)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1883FA200();
          sub_1884775A0(v91, v92, v93, v79);
          v79 = v94;
        }

        v87 = *(v79 + 16);
        v86 = *(v79 + 24);
        v88 = v87 + 1;
        if (v87 >= v86 >> 1)
        {
          v95 = sub_1883F8DD4(v86);
          sub_1884775A0(v95, v87 + 1, 1, v79);
          v89 = v96;
          v79 = v96;
        }

        else
        {
          v89 = v79;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1883FA200();
          sub_1884775A0(v97, v98, v99, v77);
          v77 = v100;
        }

        v87 = *(v77 + 16);
        v90 = *(v77 + 24);
        v88 = v87 + 1;
        if (v87 >= v90 >> 1)
        {
          v101 = sub_1883F8DD4(v90);
          sub_1884775A0(v101, v87 + 1, 1, v77);
          v89 = v102;
          v77 = v102;
        }

        else
        {
          v89 = v77;
        }
      }

      *(v89 + 16) = v88;
      sub_1883FAB2C(v89 + 16 * v87);
      v80 += 2;
      --v78;
      v42 = v147;
    }

    while (v78);
  }

  v146 = v77;
  sub_1883F8A68();
  v105 = v104 & v103;
  sub_1883FE184();
  v107 = v106 >> 6;

  v108 = 0;
  if (v105)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v109 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      __break(1u);
      goto LABEL_90;
    }

    if (v109 >= v107)
    {
      break;
    }

    v105 = v22[v109 + 8];
    ++v108;
    if (v105)
    {
      v108 = v109;
      do
      {
LABEL_73:
        v110 = v42[46];
        v111 = __clz(__rbit64(v105));
        v105 &= v105 - 1;
        v112 = (v108 << 9) | (8 * v111);
        v113 = *(v22[7] + v112);
        v114 = *(v22[6] + v112);
        v115 = v113;
        sub_18840D758();
        if (v116)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_1883FA200();
            sub_1884775A0(v123, v124, v125, v79);
            v79 = v126;
          }

          v117 = *(v79 + 16);
          sub_1883F802C();
          if (v119)
          {
            v127 = sub_1884055B0(v118);
            sub_1884775A0(v127, v128, v129, v79);
            v79 = v130;
          }

          *(v79 + 16) = v110;
          v120 = v79 + 16 * v117;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_1883FA200();
            sub_1884775A0(v131, v132, v133, v134);
            v146 = v135;
          }

          v121 = *(v146 + 16);
          sub_1883F802C();
          if (v119)
          {
            v136 = sub_1884055B0(v122);
            sub_1884775A0(v136, v137, v138, v146);
            v146 = v139;
          }

          *(v146 + 16) = v110;
          v120 = v146 + 16 * v121;
        }

        *(v120 + 32) = v114;
        sub_1883FDC80(v120);
        v42 = v147;
      }

      while (v105);
    }
  }

  sub_18850C4BC(v146);

  v140 = MEMORY[0x1E69E7CC0];
  v42[12] = MEMORY[0x1E69E7CC0];
  v42[13] = v143;
  v42[14] = v140;
  v42[15] = v22;
  v42[18] = 0;
  v42[20] = 0x4000000000000000;
  swift_bridgeObjectRetain_n();

  v141 = swift_task_alloc();
  v42[70] = v141;
  *v141 = v42;
  sub_1883FA498(v141);
  sub_1883FE860();
  sub_1883F85A4();

  sub_1883FBEA8();
}

uint64_t sub_1884F6884()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F8D80();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 496) = v5;

  v7 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884F6998()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v1 = *(v0 + 496);
  v2 = [objc_allocWithZone(CKOperationConfiguration) init];
  *(v0 + 504) = v2;
  if (v1 && *(*(v0 + 496) + 16))
  {
    sub_18847E02C(0, 1, *(v0 + 496));

    v3 = sub_1883F7E8C();
    sub_1884DFA94(v3, v4, v2);
  }

  v5 = *(v0 + 316);
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + 320) = MEMORY[0x1E69E7CC0];
  *(v0 + 328) = v6;
  v7 = swift_task_alloc();
  *(v0 + 512) = v7;
  *(v7 + 16) = *(v0 + 464);
  *(v7 + 32) = v5 & 1;
  sub_1884F9D6C(&qword_1886F7F00);
  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 520) = v9;
  *v9 = v0;
  v9[1] = sub_1884F6AE4;
  sub_18840584C();
  sub_188404D5C();

  return v15(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1884F6AE4()
{
  sub_1884061A4();
  sub_1883FB4AC();
  v2 = *v1;
  v3 = *v1;
  sub_1883F7110();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7B78();
  *v6 = v5;
  v3[66] = v7;
  v3[67] = v8;
  v3[68] = v0;

  if (v0)
  {
  }

  sub_1883FF410();
  sub_188404D5C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1884F6C54()
{
  v199 = (v0 + 352);
  v200 = (v0 + 336);
  v3 = *(v0 + 528);
  v4 = v3 + 64;
  sub_1883F84E8();
  v208 = v5;
  v204 = v6 + 32;
  v205 = v6 & 0xFFFFFFFFFFFFFF8;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v207 = MEMORY[0x1E69E7CC0];
  for (i = v0; ; v8 = i[40])
  {
LABEL_2:
    v210 = v8;
    if (!v2)
    {
      do
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        if (v9 >= v1)
        {
          v37 = *(v0 + 536);
          v38 = *(v0 + 464);
          v39 = i[51];
          sub_1884F9AC4(v38);

          v40 = 0;
          sub_18840E804();
          v43 = v42 & v41;
          v45 = (63 - v44) >> 6;
          v202 = (v39 + 8);
          v0 = i;
          v46 = MEMORY[0x1E69E7CC0];
          v209 = MEMORY[0x1E69E7CC8];
          while (1)
          {
            if (v43)
            {
              v47 = v46;
              goto LABEL_32;
            }

            do
            {
              v48 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                goto LABEL_113;
              }

              if (v48 >= v45)
              {

                *(v0 + 584) = v210;
                *(v0 + 576) = v46;
                *(v0 + 568) = v209;
                *(v0 + 560) = v207;
                *(v0 + 552) = 0;
                v76 = sub_1883F4C9C(v210);
                if (v76)
                {
                  v77 = v76;
                  v78 = v46;
                  v79 = MEMORY[0x1E69E7CC0];
                  v212 = MEMORY[0x1E69E7CC0];

                  v80 = sub_1883FEAD4();
                  sub_18847791C(v80, v81, v82);
                  if (v77 < 0)
                  {
                    goto LABEL_121;
                  }

                  v83 = 0;
                  v84 = v212;
                  do
                  {
                    if ((v210 & 0xC000000000000001) != 0)
                    {
                      v85 = MEMORY[0x18CFD59D0](v83, v210);
                    }

                    else
                    {
                      v85 = *(v210 + 8 * v83 + 32);
                    }

                    v86 = v85;
                    v87 = [v85 recordID];

                    v89 = *(v212 + 16);
                    v88 = *(v212 + 24);
                    if (v89 >= v88 >> 1)
                    {
                      v91 = sub_1883F8DD4(v88);
                      sub_18847791C(v91, v89 + 1, 1);
                    }

                    ++v83;
                    *(v212 + 16) = v89 + 1;
                    v90 = v212 + 16 * v89;
                    *(v90 + 32) = v87;
                    *(v90 + 40) = 0;
                  }

                  while (v77 != v83);
                  v46 = v78;
                }

                else
                {

                  v84 = MEMORY[0x1E69E7CC0];
                  v79 = MEMORY[0x1E69E7CC0];
                }

                v92 = sub_1883F4C9C(v46);
                v206 = v46;
                if (v92)
                {
                  v93 = v92;

                  v94 = sub_1883FEAD4();
                  sub_18847791C(v94, v95, v96);
                  if (v93 < 0)
                  {
                    goto LABEL_122;
                  }

                  v97 = 0;
                  v98 = v79;
                  do
                  {
                    if ((v46 & 0xC000000000000001) != 0)
                    {
                      v99 = MEMORY[0x18CFD59D0](v97, v46);
                    }

                    else
                    {
                      v99 = *(v46 + 8 * v97 + 32);
                    }

                    v100 = v99;
                    v102 = *(v98 + 16);
                    v101 = *(v98 + 24);
                    if (v102 >= v101 >> 1)
                    {
                      v104 = sub_1883F8DD4(v101);
                      sub_18847791C(v104, v102 + 1, 1);
                    }

                    ++v97;
                    *(v98 + 16) = v102 + 1;
                    v103 = v98 + 16 * v102;
                    *(v103 + 32) = v100;
                    *(v103 + 40) = 1;
                  }

                  while (v93 != v97);
                }

                else
                {

                  v98 = MEMORY[0x1E69E7CC0];
                }

                sub_18847261C(v98);
                v0 = v84;
                v105 = *(v207 + 16);
                if (v105)
                {
                  v106 = (v207 + 40);
                  v107 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v108 = *v106;
                    v109 = *(v106 - 1);
                    v110 = v108;
                    sub_18840D758();
                    LOBYTE(v108) = v111;

                    v112 = [v109 recordID];
                    if (v108)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v118 = sub_1883FA200();
                        sub_1884775D8(v118, v119, v120, v107);
                        v107 = v121;
                      }

                      v114 = *(v107 + 16);
                      v113 = *(v107 + 24);
                      v115 = v114 + 1;
                      if (v114 >= v113 >> 1)
                      {
                        sub_1883F8DD4(v113);
                        sub_188410F10();
                        sub_1884775D8(v122, v123, v124, v107);
                        v116 = v125;
                        v107 = v125;
                      }

                      else
                      {
                        v116 = v107;
                      }
                    }

                    else
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v126 = sub_1883FA200();
                        sub_1884775D8(v126, v127, v128, v0);
                        v0 = v129;
                      }

                      v114 = *(v0 + 16);
                      v117 = *(v0 + 24);
                      v115 = v114 + 1;
                      if (v114 >= v117 >> 1)
                      {
                        sub_1883F8DD4(v117);
                        sub_1883F9A2C();
                        sub_1884775D8(v130, v131, v132, v133);
                        v116 = v134;
                        v0 = v134;
                      }

                      else
                      {
                        v116 = v0;
                      }
                    }

                    *(v116 + 16) = v115;
                    sub_1883FAB2C(v116 + 16 * v114);
                    v106 += 2;
                    --v105;
                  }

                  while (v105);
                }

                else
                {
                  v107 = MEMORY[0x1E69E7CC0];
                }

                sub_1883F8A68();
                v137 = v136 & v135;
                sub_1883FE184();
                v139 = v138 >> 6;

                v140 = 0;
                if (v137)
                {
                  while (1)
                  {
LABEL_92:
                    sub_188402300();
                    v143 = *(v209[7] + v142);
                    v144 = *(v209[6] + v142);
                    v145 = v143;
                    sub_18840D758();
                    if (v146)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v152 = sub_1883FA200();
                        sub_1884775D8(v152, v153, v154, v107);
                        v107 = v155;
                      }

                      v148 = *(v107 + 16);
                      v147 = *(v107 + 24);
                      if (v148 >= v147 >> 1)
                      {
                        v156 = sub_1884055B0(v147);
                        sub_1884775D8(v156, v157, v158, v107);
                        v107 = v159;
                      }

                      *(v107 + 16) = v148 + 1;
                      v149 = v107 + 16 * v148;
                    }

                    else
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v160 = sub_1883FA200();
                        sub_1884775D8(v160, v161, v162, v0);
                        v0 = v163;
                      }

                      v151 = *(v0 + 16);
                      v150 = *(v0 + 24);
                      if (v151 >= v150 >> 1)
                      {
                        v164 = sub_1884055B0(v150);
                        sub_1884775D8(v164, v165, v166, v0);
                        v0 = v167;
                      }

                      *(v0 + 16) = v151 + 1;
                      v149 = v0 + 16 * v151;
                    }

                    *(v149 + 32) = v144;
                    sub_1883FDC80(v149);
                  }
                }

                while (1)
                {
                  v141 = v140 + 1;
                  if (__OFADD__(v140, 1))
                  {
                    break;
                  }

                  if (v141 >= v139)
                  {
                    v168 = i[55];

                    sub_18850C4DC(v107, 0);

                    sub_18850C5AC(v0);
                    v169 = i;

                    if ([*(v168 + 16) hasInFlightUntrackedChanges])
                    {
                      v170 = i[55];
                      sub_18840D758();
                      v172 = v171;
                      v173 = *(v170 + 16);
                      v169 = i;
                      [v173 setHasInFlightUntrackedChanges_];
                      if (v172)
                      {
                        [*(i[55] + 16) setHasPendingUntrackedChanges_];
                      }
                    }

                    v169[12] = v210;
                    v169[13] = v207;
                    v169[14] = v206;
                    v169[15] = v209;
                    v169[18] = 0;
                    v169[20] = 0x5000000000000000;

                    v174 = swift_task_alloc();
                    v169[74] = v174;
                    *v174 = v169;
                    sub_1884008D8(v174);
                    sub_1883FEBF8();

                    sub_1883FBEA8();
                    return;
                  }

                  ++v140;
                  if (v209[v141 + 8])
                  {
                    goto LABEL_92;
                  }
                }

LABEL_114:
                __break(1u);
LABEL_115:

                sub_18846C4B0(38);
                sub_18840AEF8();
                MEMORY[0x18CFD5140](v189 + 18, v190 | 0x8000000000000000);
                swift_getErrorValue();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                sub_188411124();
                v192 = 99;
                sub_188404C44();
                v188 = 22;
LABEL_111:
                _assertionFailure(_:_:file:line:flags:)(v182, v183, v184, v185, v186, v187, v188, 2, v192);
                sub_1883FEBF8();
                return;
              }

              v43 = *(v37 + 64 + 8 * v48);
              ++v40;
            }

            while (!v43);
            v47 = v46;
            v40 = v48;
LABEL_32:
            v43 &= v43 - 1;
            sub_1883FF4F0();
            if (!v50)
            {
              v51 = v46;
              MEMORY[0x18CFD52F0]();
              sub_1883FDF80();
              if (v52)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v46 = *(v0 + 328);
              continue;
            }

            v53 = *v49;
            v54 = v200;
            *v200 = *v49;
            v55 = sub_1883FF150();
            sub_188462DBC(v55, v56);
            v198 = v46;
            v57 = sub_1883FF150();
            sub_188462DBC(v57, v58);
            sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
            type metadata accessor for CKError(0);
            v197 = v53;
            if (swift_dynamicCast())
            {
              v195 = *(v0 + 344);
              goto LABEL_40;
            }

            *(v0 + 352) = v53;
            v59 = v53;
            if (!swift_dynamicCast())
            {
              goto LABEL_115;
            }

            v193 = *(v0 + 400);
            v194 = *(v0 + 416);
            sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1886F7400;
            *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(inited + 40) = v61;
            *(inited + 48) = 0xD000000000000012;
            *(inited + 56) = 0x80000001886FFF40;
            Dictionary.init(dictionaryLiteral:)();
            *(v0 + 376) = 20;
            sub_18847E984();

            sub_18847A4EC();
            _BridgedStoredNSError.init(_:userInfo:)();
            v195 = *(v0 + 368);
            (*v202)(v194, v193);
            v54 = v199;
LABEL_40:

            isUnique = swift_isUniquelyReferenced_nonNull_native();
            sub_188486398();
            sub_1883FE314();
            v66 = v64 + v65;
            if (__OFADD__(v64, v65))
            {
              goto LABEL_123;
            }

            v67 = v62;
            v68 = v63;
            sub_18844E6FC(&unk_1EA90E4B0, &qword_1886FB450);
            if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v66))
            {
              v70 = v197;
              if ((v68 & 1) == 0)
              {
                goto LABEL_45;
              }

LABEL_48:
              v74 = v209[7];
              v75 = *(v74 + 8 * v67);
              *(v74 + 8 * v67) = v195;

              sub_188462CBC(v70, 1);
              goto LABEL_49;
            }

            sub_188486398();
            sub_188410224();
            v70 = v197;
            if (!v50)
            {
              sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
              sub_1883FEBF8();

              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              return;
            }

            v67 = v69;
            if (v68)
            {
              goto LABEL_48;
            }

LABEL_45:
            sub_1883FF230(&v209[v67 >> 6]);
            *(v209[6] + 8 * v67) = v198;
            *(v209[7] + 8 * v67) = v195;
            sub_188462CBC(v70, 1);
            v71 = v209[2];
            v72 = __OFADD__(v71, 1);
            v73 = v71 + 1;
            if (v72)
            {
              goto LABEL_124;
            }

            v209[2] = v73;
LABEL_49:
            v0 = i;
            v46 = v47;
          }
        }

        v2 = *(v4 + 8 * v9);
        ++v7;
      }

      while (!v2);
      v7 = v9;
    }

    sub_1883FDCFC();
    v11 = v10 | (v7 << 6);
    v12 = *(*(v3 + 48) + 8 * v11);
    v13 = *(v3 + 56) + 16 * v11;
    v14 = *v13;
    if (*(v13 + 8))
    {
      break;
    }

    v15 = sub_1883FDC00();
    sub_188449260(v15);
    v16 = sub_1883FDC00();
    sub_188449260(v16);
    v17 = v12;
    v0 = i;
    MEMORY[0x18CFD52F0]();
    if (*((*(v0 + 320) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 320) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v18 = sub_1883FDC00();
    sub_18844CAFC(v18);
  }

  v201 = sub_1883F4C9C(i[58]);
  v19 = sub_1883F7F94();
  sub_188449260(v19);
  v20 = sub_1883F7F94();
  sub_188449260(v20);
  v203 = v12;

  for (j = 0; ; ++j)
  {
    if (v201 == j)
    {

      sub_18846C4B0(71);
      sub_18840AEF8();
      MEMORY[0x18CFD5140](v176 + 51, v177 | 0x8000000000000000);
      v178 = [v203 description];
      v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v181 = v180;

      MEMORY[0x18CFD5140](v179, v181);

      sub_188411124();
      v192 = 347;
      sub_188404C44();
      v188 = 37;
      goto LABEL_111;
    }

    if (v208)
    {
      v22 = MEMORY[0x18CFD59D0](j, i[58]);
    }

    else
    {
      if (j >= *(v205 + 16))
      {
        goto LABEL_120;
      }

      v22 = *(v204 + 8 * j);
    }

    v23 = v22;
    if (__OFADD__(j, 1))
    {
      break;
    }

    v24 = v3;
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v25 = [v23 recordID];
    v26 = static NSObject.== infix(_:_:)();

    if (v26)
    {

      v27 = sub_1883F7F94();
      sub_188449260(v27);
      v28 = v23;
      v29 = sub_18840EFC4(v14);
      v3 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1883FA200();
        sub_1884776A8();
        v207 = v35;
      }

      v31 = *(v207 + 16);
      v30 = *(v207 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1883F8DD4(v30);
        sub_188405648();
        sub_1884776A8();
        v207 = v36;
      }

      v32 = sub_1883F7F94();
      sub_18844CAFC(v32);
      v33 = sub_1883F7F94();
      sub_18844CAFC(v33);

      *(v207 + 16) = v31 + 1;
      v34 = v207 + 16 * v31;
      *(v34 + 32) = v28;
      *(v34 + 40) = v29;
      v8 = v210;
      v0 = i;
      goto LABEL_2;
    }

    v3 = v24;
  }

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
}

uint64_t sub_1884F7A84()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  sub_1883FEE9C();
  sub_1883FBF6C(v2 + 16);
  v6 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1884F7B80()
{
  v1 = v0[69];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[63];
  if (v1)
  {
    v7 = v1;

    swift_willThrow();

    sub_1883F816C();
  }

  else
  {
    v9 = v0[48];

    *v9 = v2;
    v9[1] = v5;
    v9[2] = v3;
    v9[3] = v4;

    sub_1883FDB48();
  }

  return v8();
}

uint64_t sub_1884F7C6C()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

void sub_1884F7CC8()
{
  v2 = v0[68];
  v3 = v0[58];
  v4 = v2;
  v160 = sub_18840EFC4(v2);
  v5 = sub_1883F4C9C(v3);
  v158 = v0;
  if (v5)
  {
    v6 = v5;
    v162 = MEMORY[0x1E69E7CC0];
    v7 = sub_1883FE594();
    sub_188477A1C(v7, v8, v9);
    if (v6 < 0)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v0[58];
    v12 = v162;
    v13 = v11 & 0xC000000000000001;
    v14 = v11 + 32;
    do
    {
      if (v13)
      {
        v15 = MEMORY[0x18CFD59D0](v10, v158[58]);
      }

      else
      {
        v15 = *(v14 + 8 * v10);
      }

      v16 = v15;
      v161 = v12;
      isUniquelyReferenced_nonNull_native = v12;
      v18 = v12[2];
      v17 = v12[3];
      v19 = v160;
      if (v18 >= v17 >> 1)
      {
        sub_188405648();
        sub_188477A1C(v21, v22, v23);
        isUniquelyReferenced_nonNull_native = v161;
      }

      ++v10;
      *(isUniquelyReferenced_nonNull_native + 16) = v18 + 1;
      v20 = isUniquelyReferenced_nonNull_native + 16 * v18;
      *(v20 + 32) = v16;
      *(v20 + 40) = v19;
      v12 = isUniquelyReferenced_nonNull_native;
    }

    while (v6 != v10);
    v156 = isUniquelyReferenced_nonNull_native;
    v0 = v158;
  }

  else
  {
    v156 = MEMORY[0x1E69E7CC0];
  }

  v24 = v0[59];
  v25 = sub_1883F4C9C(v24);
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC8];
  while (v25 != v26)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x18CFD59D0](v26, v158[59]);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      v28 = *(v24 + 32 + 8 * v26);
    }

    v29 = v28;
    if (__OFADD__(v26, 1))
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v30 = v160;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = v27;
    sub_188486398();
    sub_1883FE314();
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_96;
    }

    v36 = v31;
    v37 = v32;
    sub_18844E6FC(&unk_1EA90E4B0, &qword_1886FB450);
    v38 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v35);
    v27 = v161;
    if (v38)
    {
      sub_188486398();
      sub_188410224();
      if (!v40)
      {
        sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
        sub_1883F85A4();

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }

      v36 = v39;
    }

    if (v37)
    {
      v41 = v161[7];
      v42 = *(v41 + 8 * v36);
      *(v41 + 8 * v36) = v30;
    }

    else
    {
      sub_1883FF230(&v161[v36 >> 6]);
      *(v161[6] + 8 * v36) = v29;
      *(v161[7] + 8 * v36) = v30;
      v43 = v161[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_97;
      }

      v161[2] = v45;
    }

    ++v26;
  }

  v46 = v158;
  v47 = v158[68];
  sub_1884F9AC4(v158[58]);

  v48 = MEMORY[0x1E69E7CC0];
  v158[73] = MEMORY[0x1E69E7CC0];
  v158[72] = v48;
  v158[71] = v27;
  v158[70] = v156;
  v158[69] = v160;
  v49 = sub_1883F4C9C(v48);
  if (v49)
  {
    v50 = v49;
    sub_1883F869C();
    v51 = v48;
    v52 = sub_1883F832C();
    sub_18847791C(v52, v53, v54);
    if (v50 < 0)
    {
      goto LABEL_99;
    }

    v55 = 0;
    v56 = v161;
    v57 = v48;
    do
    {
      if (v51 >> 62)
      {
        v58 = MEMORY[0x18CFD59D0](v55, v57);
      }

      else
      {
        v58 = *(v57 + 8 * v55 + 32);
      }

      v59 = v58;
      v60 = [v58 recordID];

      v161 = v56;
      v62 = v56[2];
      v61 = v56[3];
      if (v62 >= v61 >> 1)
      {
        sub_1883F8DD4(v61);
        sub_188405648();
        sub_18847791C(v64, v65, v66);
      }

      ++v55;
      v56[2] = v62 + 1;
      v63 = &v56[2 * v62];
      v63[4] = v60;
      *(v63 + 40) = 0;
      v57 = MEMORY[0x1E69E7CC0];
    }

    while (v50 != v55);
    v46 = v158;
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  v68 = MEMORY[0x1E69E7CC0];
  v69 = sub_1883F4C9C(MEMORY[0x1E69E7CC0]);
  if (v69)
  {
    v70 = v69;
    sub_1883F869C();
    v71 = sub_1883F832C();
    sub_18847791C(v71, v72, v73);
    if (v70 < 0)
    {
      goto LABEL_100;
    }

    v74 = 0;
    v75 = v161;
    do
    {
      if (v68 >> 62)
      {
        v76 = MEMORY[0x18CFD59D0](v74, v68);
      }

      else
      {
        v76 = *(v68 + 8 * v74 + 32);
      }

      v77 = v76;
      v78 = v161[2];
      sub_188410C74();
      if (v80)
      {
        sub_1883F8DD4(v79);
        sub_1883FF374();
        sub_18847791C(v82, v83, v84);
      }

      ++v74;
      v161[2] = isUniquelyReferenced_nonNull_native;
      v81 = &v161[2 * v78];
      *(v81 + 32) = v77;
      sub_1883FDC80(v81);
    }

    while (v70 != v74);
    swift_bridgeObjectRelease_n();
    v46 = v158;
  }

  else
  {
    v75 = MEMORY[0x1E69E7CC0];
  }

  sub_18847261C(v75);
  v157 = v56;
  v85 = *(v156 + 16);
  v86 = MEMORY[0x1E69E7CC0];
  if (v85)
  {
    v87 = (v156 + 40);
    do
    {
      v88 = *v87;
      v89 = *(v87 - 1);
      v90 = v88;
      sub_18840D758();
      LOBYTE(v88) = v91;

      [v89 recordID];
      if (v88)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1883FA200();
          sub_1884775D8(v97, v98, v99, v86);
          v86 = v100;
        }

        v93 = *(v86 + 16);
        v92 = *(v86 + 24);
        v94 = v93 + 1;
        if (v93 >= v92 >> 1)
        {
          sub_1883F8DD4(v92);
          sub_188405648();
          sub_1884775D8(v101, v102, v103, v86);
          v95 = v104;
          v86 = v104;
        }

        else
        {
          v95 = v86;
        }
      }

      else
      {
        v95 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1883FA200();
          sub_1884775D8(v105, v106, v107, v157);
          v95 = v108;
        }

        v93 = *(v95 + 16);
        v96 = *(v95 + 24);
        v94 = v93 + 1;
        if (v93 >= v96 >> 1)
        {
          sub_1883F8DD4(v96);
          sub_1883F9A2C();
          sub_1884775D8(v109, v110, v111, v112);
          v95 = v113;
          v157 = v113;
        }

        else
        {
          v157 = v95;
        }
      }

      *(v95 + 16) = v94;
      sub_1883FAB2C(v95 + 16 * v93);
      v87 += 2;
      --v85;
      v46 = v158;
    }

    while (v85);
  }

  sub_1883F8A68();
  v116 = v115 & v114;
  sub_1883FE184();
  v118 = v117 >> 6;

  v119 = 0;
  if (v116)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v120 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      __break(1u);
      goto LABEL_94;
    }

    if (v120 >= v118)
    {
      break;
    }

    v116 = v27[v120 + 8];
    ++v119;
    if (v116)
    {
      v119 = v120;
      do
      {
LABEL_74:
        v121 = v46[49];
        v122 = __clz(__rbit64(v116));
        v116 &= v116 - 1;
        v123 = (v119 << 9) | (8 * v122);
        v124 = *(v27[7] + v123);
        v159 = *(v27[6] + v123);
        v125 = v124;
        sub_18840D758();
        if (v126)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_1883FA200();
            sub_1884775D8(v133, v134, v135, v86);
            v86 = v136;
          }

          v127 = *(v86 + 16);
          sub_1883F802C();
          if (v80)
          {
            v137 = sub_1884055B0(v128);
            sub_1884775D8(v137, v138, v139, v86);
            v86 = v140;
          }

          *(v86 + 16) = v121;
          v129 = v86 + 16 * v127;
        }

        else
        {
          v130 = v157;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_1883FA200();
            sub_1884775D8(v141, v142, v143, v157);
            v130 = v144;
          }

          v131 = *(v130 + 16);
          v157 = v130;
          sub_1883F802C();
          if (v80)
          {
            v145 = sub_1884055B0(v132);
            sub_1884775D8(v145, v146, v147, v130);
            v157 = v148;
          }

          *(v157 + 16) = v130;
          v129 = v157 + 16 * v131;
        }

        *(v129 + 32) = v159;
        sub_1883FDC80(v129);
      }

      while (v116);
    }
  }

  v149 = v46[55];

  sub_18850C4DC(v86, 0);

  sub_18850C5AC(v157);

  if ([*(v149 + 16) hasInFlightUntrackedChanges])
  {
    v150 = v46[55];
    sub_18840D758();
    v152 = v151;
    [*(v150 + 16) setHasInFlightUntrackedChanges_];
    if (v152)
    {
      [*(v46[55] + 16) setHasPendingUntrackedChanges_];
    }
  }

  v153 = MEMORY[0x1E69E7CC0];
  v46[12] = MEMORY[0x1E69E7CC0];
  v46[13] = v156;
  v46[14] = v153;
  v46[15] = v27;
  v46[18] = 0;
  v46[20] = 0x5000000000000000;
  swift_bridgeObjectRetain_n();

  v154 = swift_task_alloc();
  v46[74] = v154;
  *v154 = v46;
  sub_1884008D8(v154);
  sub_1883F85A4();

  sub_1883FBEA8();
}

uint64_t sub_1884F856C(void *a1)
{
  v3 = type metadata accessor for CancellationError();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  type metadata accessor for CKError(0);
  sub_18847A4EC();
  _BridgedStoredNSError.code.getter();
  result = 1;
  if (v46 > 0x24)
  {
    goto LABEL_20;
  }

  if (((1 << v46) & 0x1000A002DALL) != 0)
  {
    return result;
  }

  if (v46 != 2)
  {
LABEL_20:
    if (v46 - 110 > 5 || ((1 << (v46 - 110)) & 0x23) == 0)
    {
      return 0;
    }

    return result;
  }

  v8 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
  if (v8)
  {
    v9 = v8;
    v41 = v1;
    v10 = *(v8 + 64);
    v35 = v8 + 64;
    v11 = 1 << *(v8 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v10;
    a1 = ((v11 + 63) >> 6);
    v39 = 0x80000001886FFF40;
    v38 = *MEMORY[0x1E696A578];
    v37 = (v4 + 8);

    v15 = 0;
    v36 = xmmword_1886F7400;
    v40 = v14;
    while (v13)
    {
LABEL_13:
      v17 = *(*(v9 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v13)))));
      v43 = v17;
      v18 = v17;
      v19 = v17;
      v20 = v17;
      sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
      if (swift_dynamicCast())
      {

        v21 = v45;
      }

      else
      {

        v43 = v17;
        v22 = v17;
        if ((swift_dynamicCast() & 1) == 0)
        {

          v43 = 0;
          v44 = 0xE000000000000000;
          _StringGuts.grow(_:)(38);
          MEMORY[0x18CFD5140](0xD000000000000024, 0x80000001886FFF10);
          swift_getErrorValue();
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v43, v44, "CloudKit/CKError.swift", 22, 2, 99);
          __break(1u);
          return result;
        }

        sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
        inited = swift_initStackObject();
        *(inited + 16) = v36;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v24;
        *(inited + 48) = 0xD000000000000012;
        *(inited + 56) = v39;
        Dictionary.init(dictionaryLiteral:)();
        v42 = 20;
        sub_18847E984();

        _BridgedStoredNSError.init(_:userInfo:)();

        v21 = v45;
        (*v37)(v6, v3);
      }

      v13 &= v13 - 1;
      v25 = sub_1884F856C(v21);

      v9 = v40;
      if (v25)
      {

        return 1;
      }
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= a1)
      {

        return 0;
      }

      v13 = *(v35 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else if (qword_1EA90C9F0 == -1)
  {
    goto LABEL_25;
  }

  swift_once();
LABEL_25:
  v26 = type metadata accessor for Logger();
  sub_1883FDE5C(v26, qword_1EA90C9F8);
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = v27;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_1883EA000, v28, v29, "BUG IN CLOUDKIT: Could not get partial errors from CKError.partialFailure: %@", v30, 0xCu);
    sub_188442B84(v31, &qword_1EA90DC70, &unk_1886FA190);
    MEMORY[0x18CFD7E80](v31, -1, -1);
    MEMORY[0x18CFD7E80](v30, -1, -1);
  }

  return 1;
}

uint64_t sub_1884F8B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1884F8BB8;

  return CKDatabase.modifyRecordZones(saving:deleting:)(a2, a3);
}

uint64_t sub_1884F8BB8()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v2 = *v1;
  sub_1883F7110();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = sub_1883F7E8C();
  }

  return v5(v4);
}

uint64_t sub_1884F8CB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1884F9D64;

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(a2, a3, 0, a4);
}

uint64_t sub_1884F8D70(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  swift_beginAccess();
  v11 = *(a2 + 16);

  if (v10 == 1)
  {
    v12 = v9;
  }

  else
  {
    v12 = [v9 zoneID];
  }

  v13 = v12;
  v14 = sub_1884C8160(v12, v11);

  if (!v14)
  {
    result = swift_beginAccess();
    if (*(*(a3 + 16) + 16) < a4)
    {
      if (v10)
      {
        v16 = v9;
      }

      else
      {
        v17 = v9;
        v18 = CKRecordZone.parent.getter();

        if (v18)
        {
          if (*(a5 + 16))
          {
            sub_188486310();
            if (v20)
            {
              v21 = *(a5 + 56) + 16 * v19;
              v22 = *v21;
              LOBYTE(v21) = *(v21 + 8);
              v30 = v22;
              v31 = v21;
              v23 = v22;
              sub_1884F8D70(&v30, a2, a3, a4, a5);
            }
          }
        }

        v16 = [v17 zoneID];
      }

      v24 = v16;
      swift_beginAccess();
      sub_188406C1C(v29, v24);
      swift_endAccess();

      result = swift_beginAccess();
      if (*(*(a3 + 16) + 16) < a4)
      {
        swift_beginAccess();
        v25 = v9;
        sub_188476A7C();
        v26 = *(*(a3 + 16) + 16);
        sub_188476C80();
        v27 = *(a3 + 16);
        *(v27 + 16) = v26 + 1;
        v28 = v27 + 16 * v26;
        *(v28 + 32) = v9;
        *(v28 + 40) = v10;
        *(a3 + 16) = v27;
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_1884F8FAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1884F900C(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

void sub_1884F9088(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(i - 2);
    v7 = *(i - 8);
    v8 = *i;
    v9 = v6;
    if (!v6)
    {
      goto LABEL_17;
    }

    v10 = v9;
    v11 = *a3;
    sub_188486310();
    v14 = v13;
    v15 = v11[2];
    v16 = (v12 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_20;
    }

    v17 = v12;
    if (v11[3] < v15 + v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_18844E6FC(&unk_1EA90E620, &unk_1886FBC40);
      _NativeDictionary.copy()();
      if (v17)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v20 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v20[6] + 8 * v14) = v10;
    v21 = v20[7] + 16 * v14;
    *v21 = v7;
    *(v21 + 8) = v8;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v20[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_18851152C();
  sub_188486310();
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_22;
  }

  v14 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  _StringGuts.grow(_:)(30);
  MEMORY[0x18CFD5140](0xD00000000000001BLL, 0x8000000188702890);
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_1884F937C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 24)
  {
    if (v28 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    v9 = v6;
    v10 = v7;
    if (!v6)
    {
      goto LABEL_17;
    }

    v27 = v10;
    v11 = *a3;
    sub_188486310();
    v14 = v13;
    v15 = v11[2];
    v16 = (v12 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_20;
    }

    v17 = v12;
    if (v11[3] < v15 + v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_18844E6FC(&qword_1EA90E5C0, &qword_1886FBA58);
      _NativeDictionary.copy()();
      if (v17)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v20 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v20[6] + 8 * v14) = v9;
    v21 = v20[7] + 16 * v14;
    *v21 = v7;
    *(v21 + 8) = v8;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v20[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_188511694();
  sub_188486310();
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_22;
  }

  v14 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v25 = swift_allocError();
  swift_willThrow();

  v26 = v25;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  _StringGuts.grow(_:)(30);
  MEMORY[0x18CFD5140](0xD00000000000001BLL, 0x8000000188702890);
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void *sub_1884F9684(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = (&v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_188501174(0, v5, v6);
    sub_1884F9824(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_1884F900C(v10, v5, sub_1884F9B34);

    MEMORY[0x18CFD7E80](v10, -1, -1);
  }

  return v8;
}

void sub_1884F9824(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v5 = 0;
  v27 = a3 + 32;
  v28 = *(a3 + 16);
  v6 = a4 + 56;
  v30 = a4 + 56;
LABEL_2:
  while (2)
  {
    if (v5 == v28)
    {
LABEL_18:

      sub_1884E45E8(a1, a2, v25, a4);
    }

    else
    {
      if (v5 >= v28)
      {
        __break(1u);
      }

      else if (!__OFADD__(v5, 1))
      {
        v7 = v27 + 16 * v5;
        v8 = *(v7 + 8);
        v29 = v5 + 1;
        v9 = *v7;
        Hasher.init(_seed:)();
        MEMORY[0x18CFD5EB0](v8);
        v31 = v9;
        NSObject.hash(into:)();
        v10 = Hasher._finalize()();
        v11 = -1 << *(a4 + 32);
        v12 = v10 & ~v11;
        v13 = v12 >> 6;
        v14 = 1 << v12;
        if (((1 << v12) & *(v6 + 8 * (v12 >> 6))) == 0)
        {
LABEL_13:

          v5 = v29;
          continue;
        }

        v15 = ~v11;
        while (1)
        {
          v16 = *(a4 + 48) + 16 * v12;
          v17 = *v16;
          if (*(v16 + 8))
          {
            if ((v8 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          else if (v8)
          {
            goto LABEL_12;
          }

          sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
          v18 = v17;
          v19 = v31;
          v20 = v18;
          v21 = static NSObject.== infix(_:_:)();

          v6 = v30;
          if (v21)
          {

            v22 = a1[v13];
            a1[v13] = v22 | v14;
            v5 = v29;
            if ((v22 & v14) != 0)
            {
              goto LABEL_2;
            }

            if (!__OFADD__(v25++, 1))
            {
              goto LABEL_2;
            }

            __break(1u);
            goto LABEL_18;
          }

LABEL_12:
          v12 = (v12 + 1) & v15;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if ((*(v6 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      __break(1u);
    }

    break;
  }
}

uint64_t sub_1884F9A1C()
{
  sub_1883F78E0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1884F9D68;
  v6 = sub_1883FE860();

  return sub_1884F8CB4(v6, v2, v3, v4);
}

uint64_t sub_1884F9AC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1884F9B04(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1884F9824(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

double sub_1884F9B70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1884F9BB0()
{
  sub_1883F78E0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884F9C4C;
  sub_1883FE860();
  sub_1883FEFEC();

  return sub_1884F8B08(v2, v3, v4);
}

uint64_t sub_1884F9C4C()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F7E8C();

  return v4(v3);
}

void sub_1884F9D88()
{

  os_activity_scope_leave(v0 + 1);
}

uint64_t sub_1884F9DA8()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1884F9EA8, v2, 0);
}

uint64_t sub_1884F9EA8()
{
  sub_1883F7120();
  if (*(v0 + 33) == 1)
  {
    sub_1884E5EAC();
  }

  sub_1883F816C();

  return v1();
}

uint64_t sub_1884F9F0C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7568(a1, v1);
}

uint64_t sub_1884F9F24()
{
  sub_1883F7120();
  if (sub_188420584())
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_1884F9FEC;
    v2 = *(v0 + 16);

    return sub_1884FA298(v2);
  }

  else
  {
    sub_1883F816C();

    return v4();
  }
}

uint64_t sub_1884F9FEC()
{
  sub_1883F7120();
  sub_1883F78D4();
  *v2 = v1;
  v4 = *(v3 + 24);
  v5 = *v0;
  sub_1883F78D4();
  *v6 = v5;
  *(v8 + 40) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1884FA0F8, v4, 0);
}

uint64_t sub_1884FA0F8()
{
  sub_18842090C(*(v0 + 40));
  v2 = v1;

  if (v2)
  {
    v3 = MEMORY[0x18CFD5010](0xD00000000000003FLL, 0x80000001887028D0);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v5 = type metadata accessor for Logger();
    sub_1883FDE5C(v5, qword_1EA90C9F8);
    v4.super.isa = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4.super.isa, v6))
    {
      *swift_slowAlloc() = 0;
      sub_1883FDB58(&dword_1883EA000, v7, v8, "BUG IN CLOUDKIT: Unable to convert fetched database changes without push telemetry payload to NSObjects");
      sub_1883F8F74();
    }
  }

  sub_1883F816C();

  return v9();
}

unint64_t sub_1884FA26C()
{
  result = sub_1884FA4D8(0x3E8uLL);
  byte_1EA919CA0 = result == 13;
  return result;
}

uint64_t sub_1884FA298(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return sub_1883F7568(a1, v1);
}

uint64_t sub_1884FA2B0()
{
  v1 = *(v0 + 296);
  v2 = [*(v1 + 144) containerID];
  v3 = sub_188420BE4(v2);
  v5 = v4;
  sub_18844E6FC(&qword_1EA90E5E0, &qword_1886FBAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1886FB560;
  sub_1883F9424();
  v7[4] = 0xD000000000000013;
  v7[5] = v8;
  v9 = MEMORY[0x1E69E6158];
  v7[6] = v3;
  v7[7] = v5;
  sub_1884055C4();
  *(v10 + 72) = v9;
  *(v10 + 80) = v11;
  sub_1883F7DA4(v10);
  v12 = CKContainerEnvironmentString([v2 environment]);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 96) = v13;
  *(inited + 104) = v15;
  sub_1883FA210();
  *(inited + 120) = v9;
  *(inited + 128) = v16;
  sub_1883F8A84();
  *(inited + 136) = v17;
  v18 = CKDatabaseScopeString([*(v1 + 136) databaseScope]);
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(inited + 144) = v19;
  *(inited + 152) = v21;
  sub_1883F9424();
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = v22;
  v23 = sub_188403050();
  v24 = MEMORY[0x1E69E6370];
  *(inited + 192) = v23 & 1;
  *(inited + 216) = v24;
  *(inited + 224) = 0xD00000000000001BLL;
  *(inited + 232) = 0x8000000188702950;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  *(inited + 264) = sub_1883F4C5C(0, &qword_1EA90C7B8, 0x1E696AD98);
  *(inited + 240) = isa;
  sub_18844E6FC(&qword_1EA90E5D8, &qword_1886FBAB8);
  v26 = Dictionary.init(dictionaryLiteral:)();

  v27 = *(v0 + 8);

  return v27(v26);
}

unint64_t sub_1884FA4D8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    result = (__buf * v1) >> 64;
    if (__buf * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > __buf * v1)
      {
        do
        {
          __buf = 0;
          arc4random_buf(&__buf, 8uLL);
        }

        while (v2 > __buf * v1);
        return (__buf * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CKSyncEngine.automaticSyncOptions.getter@<X0>(void *a1@<X8>)
{
  sub_1883FA550();
  sub_1884C7AD8(a1);
}

uint64_t CKSyncEngine.state.getter()
{
  sub_1883FA550();
  v1 = *(v0 + 128);

  return v1;
}

uint64_t CKSyncEngine.__allocating_init(_:)()
{
  swift_allocObject();
  v1 = sub_1883FEFE0();
  CKSyncEngine.init(_:)(v1);
  return v0;
}

uint64_t CKSyncEngine.database.getter()
{
  sub_1883FA550();
  v2 = *(v1 + 136);
  sub_1883FEFE0();

  return v0;
}

uint64_t CKSyncEngine.__deallocating_deinit()
{
  sub_188442B84(v0 + 24, &qword_1EA90E5E8, &qword_1886FBAD8);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t CKSyncEngine.fetchChanges(_:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return sub_1883F7178();
}

uint64_t sub_1884FA6E4()
{
  sub_1884FA914();
  v1 = v0[11];
  sub_1883FA550();
  v0[13] = v2;
  memcpy(v0 + 2, v1, 0x48uLL);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1884FA7E0;

  return sub_1883F781C();
}

uint64_t sub_1884FA7E0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1884FA90C, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_1884FA914()
{
  result = sub_1884FB534();
  if (result)
  {
    if (qword_1EA90CBE0 != -1)
    {
      swift_once();
    }

    v1 = qword_1EA919CA8;
    os_unfair_lock_lock((qword_1EA919CA8 + 20));
    v2 = *(v1 + 16);
    os_unfair_lock_unlock((v1 + 20));
    if (v2)
    {
      related decl 'e' for CKErrorCode.init(_:description:)(12, 0xD00000000000011ELL, 0x8000000188702AD0);
      return swift_willThrow();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000011ELL, 0x8000000188702AD0, "CloudKit/CKSyncEngine.swift", 27, 2, 313);
      __break(1u);
    }
  }

  return result;
}

uint64_t CKSyncEngine.sendChanges(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 88) = *(a1 + 8);
  *(v2 + 56) = a1[2];
  return sub_1883F7178();
}

uint64_t sub_1884FAA34()
{
  sub_1884FA914();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 88);
  sub_1883FA550();
  *(v0 + 64) = v4;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1884FAB40;

  return sub_1884137E4();
}

uint64_t sub_1884FAB40()
{
  sub_1883F7120();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1884FAC6C, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t CKSyncEngine.fetchAsset(_:)(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return sub_1883F7178();
}

uint64_t sub_1884FAC98()
{
  sub_1884FA914();
  v1 = *(v0 + 64);
  v5 = *(v0 + 48);
  sub_1883FA550();
  *(v0 + 72) = v2;
  *(v0 + 16) = v5;
  *(v0 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1884FAD9C;

  return sub_1884D17A0();
}

uint64_t sub_1884FAD9C(uint64_t a1)
{
  sub_1883F78EC();
  v5 = v4;
  sub_1883F7B78();
  *v6 = v5;
  v7 = *v2;
  sub_1883F7110();
  *v8 = v7;
  *(v5 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1884FAEE8, 0, 0);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9(a1);
  }
}

uint64_t sub_1884FAF14()
{
  sub_1884FA914();
  sub_1883FA550();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1884FAFD0;

  return sub_1884C75F0();
}

uint64_t sub_1884FAFD0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1884FB114(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1884FB2DC(__dst, &v3);
  return CKSyncEngine.automaticSyncOptions.setter(__src);
}

uint64_t CKSyncEngine.automaticSyncOptions.setter(void *__src)
{
  memcpy(v2, __src, sizeof(v2));
  sub_1883FA550();
  sub_1884C7B58(v2);
}

void (*CKSyncEngine.automaticSyncOptions.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_188470D2C(0x188uLL);
  *a1 = v3;
  v3[48] = v1;
  sub_1883FA550();
  sub_1884C7AD8(v3);

  return sub_1884FB23C;
}

void sub_1884FB23C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1883FE764((v2 + 192));
    sub_1883FE764(v3);
    sub_1884FB2DC(v2 + 192, v2 + 288);
    CKSyncEngine.automaticSyncOptions.setter(v3);
    sub_1883FE764((v2 + 96));
    sub_188442B84(v2 + 96, &unk_1EA90E4D0, &unk_1886FB460);
  }

  else
  {
    sub_1883FE764(v3);
    CKSyncEngine.automaticSyncOptions.setter(v3);
  }

  free(v2);
}

uint64_t sub_1884FB2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&unk_1EA90E4D0, &unk_1886FB460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall CKSyncEngine.setNeedsToFetchChanges()()
{
  if (qword_1EA90C9F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1883FDE5C(v0, qword_1EA90C9F8);
  sub_1883FEFE0();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    sub_1883FA550();
    v5 = sub_1883FE43C();
    v7 = v6;

    v8 = sub_1883FE340(v5, v7, &v11);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1883EA000, v1, v2, "%s manually setting needsToFetchDatabaseChanges", v3, 0xCu);
    sub_1883FE944(v4);
    MEMORY[0x18CFD7E80](v4, -1, -1);
    MEMORY[0x18CFD7E80](v3, -1, -1);
  }

  sub_1883FA550();
  v10 = *(v9 + 128);

  [*(v10 + 16) setNeedsToFetchDatabaseChanges_];
}

uint64_t CKSyncEngine.useOpportunisticPushTopic.getter()
{
  sub_1883FA550();
  v1 = *(v0 + 360);

  return v1;
}

uint64_t sub_1884FB534()
{
  if (qword_1EA90C838 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t sub_1884FB59C()
{
  sub_18844E6FC(&qword_1EA90D228, &qword_1886F70A0);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  qword_1EA919CA8 = result;
  return result;
}

uint64_t sub_1884FB5F4()
{
  sub_1883F7120();
  sub_1883FA550();
  *(v0 + 24) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1884FB65C, v1, 0);
}

uint64_t sub_1884FB65C()
{
  sub_1883F7120();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = *(v0 + 8);

  return v2(Strong);
}

uint64_t CKSyncEngine.description.getter()
{
  sub_1883FA550();
  v0 = sub_1883FE43C();

  return v0;
}

{
  if (!sub_1884FBC68())
  {
    return 0xD00000000000001CLL;
  }

  v0 = sub_1883FE43C();

  return v0;
}

uint64_t sub_1884FB764()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884FB7A8()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1884FB7E8()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = xmmword_1886FBB70;
  }

  return result;
}

void sub_1884FB89C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_188504B9C();
  v4 = MEMORY[0x18CFD55A0](v2, &type metadata for CKSyncEngine.PendingAssetSync, v3);
  v5 = 0;
  v8[1] = v4;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v6 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = v5 + 1;
    sub_1885011D8(v8, *(a1 + 8 * v5 + 32));

    v5 = v7;
  }

  __break(1u);
}

void sub_1884FB948(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = sub_188504B48();
  MEMORY[0x18CFD55A0](v5, &type metadata for CKSyncEngine.PendingRecordZoneChange, v6);
  sub_18840E81C();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v7 = *v3;
    v8 = *(v3 - 1);
    v9 = v8;
    sub_1885015CC(v10, v8, v7);

    v3 += 16;
  }

  __break(1u);
}

char *sub_1884FBA00(void *a1)
{
  *&v1[OBJC_IVAR___CKSyncEngine_swiftEngine] = 0;
  sub_188505F64(v12);
  v3 = v13;
  if (object_getClass(v13) != _TtC8CloudKit31CKSyncEngineObjCDelegateAdapter || v3 == 0)
  {
    _StringGuts.grow(_:)(75);
    MEMORY[0x18CFD5140](0xD000000000000049, 0x8000000188702F70);
    swift_getObjectType();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "CloudKit/CKSyncEngine_ObjCImplementation.swift", 46, 2, 29);
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR___CKSyncEngine_delegateAdapter] = v3;
    v11.receiver = v1;
    v11.super_class = CKSyncEngine;
    swift_unknownObjectRetain_n();
    v5 = objc_msgSendSuper2(&v11, sel_init);
    v6 = v14;
    v7 = v5;

    v14 = v5;
    sub_18841B75C(v12, &v10);
    type metadata accessor for CKSyncEngine();
    sub_1883F8708();
    swift_allocObject();
    v8 = CKSyncEngine.init(_:)(&v10);

    swift_unknownObjectRelease();
    *&v7[OBJC_IVAR___CKSyncEngine_swiftEngine] = v8;

    sub_18841F6DC(v12);
    return v7;
  }

  return result;
}

uint64_t sub_1884FBC68()
{
  if (!*(v1 + OBJC_IVAR___CKSyncEngine_swiftEngine))
  {
    return 0;
  }

  sub_1883FA550();
  sub_1883F793C();

  return v0;
}

id sub_1884FBCF8()
{
  v0 = *(sub_1883F6A78() + 136);

  return v0;
}

uint64_t sub_1884FBD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1884FBD58, 0, 0);
}

uint64_t sub_1884FBD58()
{
  sub_1883F7120();
  *(v0 + 40) = sub_1883F6A78();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1884FBDF0;

  return sub_1884C75F0();
}

uint64_t sub_1884FBDF0()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884FBEF4()
{
  sub_1883F7120();
  v1 = *(v0 + 24);
  if (v1)
  {
    v1();
  }

  sub_1883F816C();

  return v2();
}

uint64_t sub_1884FC040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1884FC064, 0, 0);
}

uint64_t sub_1884FC064()
{
  sub_1883FC738();
  v17 = v0;
  *(v0 + 400) = sub_1883F6A78();
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  sub_1883F66E4(&qword_1ED4B5CC0, &qword_1ED4B5CC8, off_1E70BA650);
  v1 = MEMORY[0x1E69E7CC0];
  v2 = Dictionary.init(dictionaryLiteral:)();

  type metadata accessor for SyncEngine(0);
  v3 = sub_1883F57B8();
  *(v0 + 16) = 0;
  *(v0 + 24) = 2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 3;
  sub_1883F697C(v0 + 16, v0 + 88);
  v4 = sub_1883F69F4(v3);
  v6 = v5;
  if (v5 && (v7 = sub_1883F7574(), (sub_1883F7624(v7, v8, v4, v6) & 1) == 0))
  {
  }

  else
  {
    v9 = *(v0 + 24);
    v15 = *(v0 + 16);
    v16 = v9;

    v10 = sub_1883F6734(&v15);
    v12 = v11;

    sub_1883F60E8(v10, v12, v3);
  }

  sub_1883F7768(v0 + 16);
  *(v0 + 160) = 0;
  *(v0 + 168) = 2;
  *(v0 + 176) = v3;
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 3;
  v13 = swift_task_alloc();
  *(v0 + 408) = v13;
  *v13 = v0;
  sub_1883FF790(v13);

  return sub_1883F781C();
}

uint64_t sub_1884FC288()
{
  sub_1883F78E0();
  v2 = *v1;
  sub_1883F7110();
  *v3 = v2;
  *v3 = *v1;
  v2[52] = v0;

  if (v0)
  {
    memcpy(v2 + 29, v2 + 20, 0x48uLL);
    sub_1883F7768((v2 + 29));
  }

  else
  {
    memcpy(v2 + 38, v2 + 20, 0x48uLL);
    sub_1883F7768((v2 + 38));
  }

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884FC3E8()
{
  sub_1883F7120();
  v1 = *(v0 + 384);
  if (v1)
  {
    v1(0);
  }

  sub_1883F816C();

  return v2();
}

uint64_t sub_1884FC450()
{
  sub_1883F78E0();
  v1 = *(v0 + 384);
  v2 = *(v0 + 416);
  if (v1)
  {
    v3 = v2;
    v1(v2);
  }

  sub_1883F816C();

  return v4();
}

uint64_t sub_1884FC5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1884FC5E8, 0, 0);
}

uint64_t sub_1884FC5E8()
{
  sub_1883F653C();
  v11 = v0;
  *(v0 + 64) = sub_1883F6A78();
  type metadata accessor for SyncEngine(0);
  v1 = sub_1883F57B8();
  v2 = sub_1883F69F4(v1);
  v4 = v3;
  if (v3 && (v5 = sub_1883F7574(), (sub_1883F7624(v5, v6, v2, v4) & 1) == 0))
  {
  }

  else
  {
    v9 = 0;
    v10 = 3;
    sub_188413094(&v9);
    sub_1883F90D4();

    sub_188410F1C();
  }

  *(v0 + 16) = 0;
  *(v0 + 24) = 3;
  *(v0 + 32) = v1;
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  sub_1883FF790(v7);

  return sub_1884137E4();
}

uint64_t sub_1884FC730()
{
  sub_1883F78E0();
  sub_1883F78EC();
  v3 = v2;
  sub_1883F78D4();
  *v4 = v3;
  v5 = *v1;
  sub_1883F7110();
  *v6 = v5;
  *(v3 + 80) = v0;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1884FC864()
{
  sub_1883F7120();
  v1 = *(v0 + 48);
  if (v1)
  {
    v1(0);
  }

  sub_1883F816C();

  return v2();
}

uint64_t sub_1884FC8CC()
{
  sub_1883F78E0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  if (v1)
  {
    v3 = v2;
    v1(v2);
  }

  sub_1883F816C();

  return v4();
}

void __swiftcall CKSyncEngine.init()(CKSyncEngine *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_1884FCB18()
{
  if (qword_1EA90C9F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1883FDE5C(v1, qword_1EA90C9F8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1883EA000, v3, v4, "%@ manually setting needsToFetchDatabaseChanges", v5, 0xCu);
    sub_188462FE0(v6);
    MEMORY[0x18CFD7E80](v6, -1, -1);
    MEMORY[0x18CFD7E80](v5, -1, -1);
  }

  v8 = [v2 state];
  [v8 setNeedsToFetchDatabaseChanges_];
}

uint64_t sub_1884FCD08()
{
  sub_1883F6A78();
  v0 = sub_188403050();

  return v0 & 1;
}

uint64_t sub_1884FCD94(char a1)
{
  sub_1883F6A78();
  sub_1884C7858(a1);
}

id sub_1884FCDF0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x18CFD5010](v5, v7);

  return v8;
}

uint64_t sub_1884FCE60()
{
  v0 = sub_1883F6A78();
  v2 = sub_18841EDF0(v0, v1);

  return v2;
}

uint64_t sub_1884FCEDC()
{
  v0 = *(sub_1883F6A78() + 360);

  return v0;
}

uint64_t sub_1884FCF08()
{
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  sub_1884FB7A8();

  swift_unknownObjectWeakAssign();
  objc_opt_self();
  sub_1883F9598();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
    v1 = 0;
  }

  *(v0 + 120) = v1;
  return v0;
}

uint64_t sub_1884FCF94()
{
  sub_1883F7120();
  v1[50] = v2;
  v1[51] = v0;
  v1[49] = v3;
  memcpy(v1 + 2, v4, 0x50uLL);
  v5 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1884FCFFC()
{
  sub_1883F7120();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 416) = Strong;
  if (Strong)
  {
    sub_1883FA550();
    *(v0 + 424) = v2;
    v3 = sub_1883FDC8C();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    sub_1883FF504(*(v0 + 392));
    sub_1883FAB38(v0 + 16, v0 + 96);
    sub_1883F816C();

    return v6();
  }
}

uint64_t sub_1884FD0B4()
{
  sub_1883F7120();
  *(v0 + 432) = swift_unknownObjectWeakLoadStrong();

  v1 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1884FD124()
{
  v15 = v0;
  v1 = *(v0 + 416);
  if (!*(v0 + 432))
  {
    swift_unknownObjectRelease();
    sub_1883FF504(*(v0 + 392));
    sub_1883FAB38(v0 + 16, v0 + 96);
    goto LABEL_9;
  }

  v2 = *(v0 + 16);
  sub_1883FF504((v0 + 176));
  sub_1883FF504(__src);
  sub_1883F697C(v0 + 176, v0 + 320);
  v3 = sub_188403D04();
  memcpy((v0 + 248), __src, 0x48uLL);
  sub_1883F7768(v0 + 248);
  v4 = [objc_allocWithZone(CKSyncEngineFetchChangesContext) initWithReason:v2 options:v3];
  *(v0 + 440) = v4;

  if ([v1 respondsToSelector_])
  {
    v5 = [*(v0 + 416) syncEngine:*(v0 + 432) nextFetchChangesOptionsForContext:v4];
    if (v5)
    {
      v6 = v5;
      v7 = *(v0 + 432);
      sub_1883F6B10(*(v0 + 392));

      swift_unknownObjectRelease();
LABEL_9:
      sub_1883F816C();

      return v13();
    }
  }

  v8 = swift_task_alloc();
  *(v0 + 448) = v8;
  *v8 = v0;
  v8[1] = sub_1884FD324;
  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  v11 = *(v0 + 392);

  return sub_1884FD484(v11, v9, &off_1EFA2C728, v0 + 16, v10);
}

uint64_t sub_1884FD324()
{
  sub_1883F7120();
  sub_1883F78EC();
  v1 = *v0;
  sub_1883F7110();
  *v2 = v1;

  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1884FD41C()
{
  sub_1883F7120();
  v1 = *(v0 + 432);

  swift_unknownObjectRelease();
  sub_1883F816C();

  return v2();
}

uint64_t sub_1884FD484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 912) = a5;
  *(v5 + 904) = a4;
  *(v5 + 896) = a1;
  memcpy((v5 + 16), (a4 + 8), 0x48uLL);
  *(v5 + 920) = *(v5 + 16);
  *(v5 + 863) = *(v5 + 24);
  *(v5 + 840) = *(a4 + 17);
  *(v5 + 855) = *(a4 + 32);
  *(v5 + 928) = *(v5 + 48);
  v7 = *(a4 + 64);
  *(v5 + 808) = *(a4 + 48);
  *(v5 + 824) = v7;
  sub_1883F697C(v5 + 16, v5 + 88);
  v8 = swift_task_alloc();
  *(v5 + 936) = v8;
  *v8 = v5;
  v8[1] = sub_1884FD580;

  return sub_1884FB5E0();
}

uint64_t sub_1884FD580()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 944) = v3;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1884FD670()
{
  v94 = v0;
  if (!*(v0 + 944))
  {
    v16 = *(v0 + 928);
    v17 = *(v0 + 863);
    v18 = *(v0 + 904);
    v19 = *(v0 + 896);
    *v19 = *(v0 + 920);
    *(v19 + 8) = v17;
    v20 = *(v18 + 17);
    *(v19 + 24) = *(v18 + 32);
    *(v19 + 32) = v16;
    *(v19 + 9) = v20;
    v21 = *(v18 + 48);
    *(v19 + 56) = *(v18 + 64);
    *(v19 + 40) = v21;
    goto LABEL_45;
  }

  v84 = v0 + 840;
  v85 = (v0 + 808);
  v86 = (v0 + 872);
  v87 = (v0 + 864);
  v1 = *(v0 + 920);
  sub_1883FA550();

  v2 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();

  v92 = MEMORY[0x1E69E7CC0];
  v3 = sub_1883F4C9C(v2);
  v4 = 0;
  v88 = v2 & 0xC000000000000001;
  v89 = v0;
  while (v3 != v4)
  {
    if (v88)
    {
      v5 = MEMORY[0x18CFD59D0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

    if (*(v0 + 863))
    {
      if (*(v0 + 863) != 1 || (*v86 = v5, *(swift_task_alloc() + 16) = v86, , v7 = sub_18850DE28(), , , (v7 & 1) != 0))
      {
LABEL_11:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_1883F86B8();
        specialized ContiguousArray._endMutation()();
        goto LABEL_14;
      }
    }

    else
    {
      *v87 = v5;
      *(swift_task_alloc() + 16) = v87;

      v8 = sub_18850DE28();

      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    ++v4;
    v0 = v89;
  }

  v9 = v92;
  *(v0 + 952) = v92;
  v10 = MEMORY[0x1E69E7CC0];
  *(v0 + 880) = MEMORY[0x1E69E7CC0];
  v11 = sub_1883F4C9C(v9);
  *(v0 + 960) = v11;
  if (!v11)
  {
    v22 = *(v0 + 928);

    if (sub_1883F4C9C(v10))
    {
      v23 = *(v0 + 920);
      if (*(v0 + 863))
      {
        if (*(v0 + 863) == 1)
        {

          v90 = sub_1884043A8(v24);
          v1 = MEMORY[0x1E69E7CC0];
          sub_188504538();

          sub_1883F5DF8(v90);
          sub_1883F793C();

          *(v0 + 160) = v1;
          *(v0 + 168) = 1;
          *(v0 + 169) = *v84;
          *(v0 + 184) = *(v84 + 15);
          *(v0 + 192) = v22;
          v25 = v85[1];
          *(v0 + 200) = *v85;
          *(v0 + 216) = v25;
          v26 = *(v0 + 176);
          sub_1883F697C(v0 + 160, v0 + 232);
          sub_1883F69F4(v26);
          if (v27 && (sub_1883F7574(), sub_1883FE280(), (sub_1883F7624(v28, v29, v30, v31) & 1) == 0))
          {
            v32 = *(v0 + 944);
          }

          else
          {
            v32 = *(v0 + 944);
            type metadata accessor for SyncEngine(0);
            v33 = sub_1883F98D8();
            sub_1883F8518(v33, v34, v35, v36, v37, v38, v39, v40, v82, v84, v85, v86, v87, v88, v89, v90);
            sub_1883F90D4();

            sub_188410F1C();
          }

          sub_1883F7768(v0 + 160);
          v45 = 1;
        }

        else
        {

          *(v0 + 664) = v10;
          *(v0 + 672) = 0;
          sub_1883FE1F0((v0 + 673), v82, v84);
          *(v0 + 688) = v64;
          *(v0 + 696) = v22;
          v65 = v85[1];
          *(v0 + 704) = *v85;
          *(v0 + 720) = v65;
          v66 = *(v0 + 680);
          sub_1883F697C(v0 + 664, v0 + 736);
          v67 = sub_1883F69F4(v66);
          v69 = v68;
          if (v68 && (v70 = sub_1883F7574(), (sub_1883F7624(v70, v71, v67, v69) & 1) == 0))
          {
            v72 = *(v0 + 944);
          }

          else
          {
            v72 = *(v0 + 944);
            v73 = *(v0 + 664);
            v74 = *(v0 + 672);
            type metadata accessor for SyncEngine(0);
            v92 = v73;
            v93 = v74;

            sub_1883F6734(&v92);

            v75 = sub_1883F84DC();
            sub_1883F60E8(v75, v76, v66);
          }

          sub_1883F7768(v0 + 664);
          v45 = 0;
          v1 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {

        v91 = sub_1884043A8(MEMORY[0x1E69E7CC0]);
        v46 = sub_1884043A8(v23);
        sub_1884433B0(v46);
        sub_1883F5DF8(v91);
        sub_1883F793C();

        *(v0 + 520) = v1;
        *(v0 + 528) = 0;
        sub_1883FE1F0((v0 + 529), v82, v84);
        *(v0 + 544) = v47;
        *(v0 + 552) = v22;
        v48 = v85[1];
        *(v0 + 560) = *v85;
        *(v0 + 576) = v48;
        v49 = *(v0 + 536);
        sub_1883F697C(v0 + 520, v0 + 592);
        sub_1883F69F4(v49);
        if (v50 && (sub_1883F7574(), sub_1883FE280(), (sub_1883F7624(v51, v52, v53, v54) & 1) == 0))
        {
          v55 = *(v0 + 944);
        }

        else
        {
          v55 = *(v0 + 944);
          type metadata accessor for SyncEngine(0);
          v56 = sub_1883F98D8();
          sub_1883F8518(v56, v57, v58, v59, v60, v61, v62, v63, v83, v84, v85, v86, v87, v88, v89, v91);
          sub_1883F90D4();

          sub_188410F1C();
        }

        sub_1883F7768(v0 + 520);
        v45 = 0;
      }
    }

    else
    {
      v44 = *(v0 + 944);

      v45 = *(v0 + 863);
      v1 = *(v0 + 920);
    }

    v77 = sub_1883FA4C8();
    *v78 = *v84;
    *(v0 + 400) = *(v84 + 15);
    *(v0 + 408) = v22;
    v79 = v85[1];
    *(v0 + 416) = *v85;
    *(v0 + 432) = v79;
    memcpy(v77, (v0 + 376), 0x48uLL);
    *(v0 + 304) = v1;
    *(v0 + 312) = v45;
    *(v0 + 313) = *v84;
    *(v0 + 328) = *(v84 + 15);
    *(v0 + 336) = v22;
    v80 = v85[1];
    *(v0 + 344) = *v85;
    *(v0 + 360) = v80;
    sub_1883F697C(v0 + 376, v0 + 448);
    sub_1883F7768(v0 + 304);
LABEL_45:
    sub_1883F816C();

    v81();
    return;
  }

  v12 = OBJC_IVAR___CKSyncEngine_delegateAdapter;
  *(v0 + 968) = OBJC_IVAR___CKSyncEngine_delegateAdapter;
  v13 = *(v0 + 928);
  *(v0 + 984) = v10;
  *(v0 + 976) = v13;
  v14 = *(v0 + 952);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x18CFD59D0](0);
    v12 = *(v0 + 968);
  }

  else
  {
    if (!*(v14 + 16))
    {
      goto LABEL_50;
    }

    v15 = *(v14 + 32);
  }

  *(v0 + 992) = v15;
  *(v0 + 1000) = 1;
  *(v0 + 1008) = *(*(v0 + 944) + v12);

  v41 = swift_task_alloc();
  *(v0 + 1016) = v41;
  *v41 = v0;
  v42 = sub_1883FED98(v41);

  sub_1884FE4E0(v42, v43);
}

uint64_t sub_1884FDD84()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;
  *(v6 + 1024) = v5;

  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1884FDE8C()
{
  if (*(v0 + 1024))
  {
    v2 = (v0 + 984);
  }

  else
  {
    v2 = (v0 + 880);
    MEMORY[0x18CFD52F0](*(v0 + 992));
    if (*((*(v0 + 880) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 880) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v3 = *v2;
  v4 = [*(v0 + 944) dataSource];
  v5 = *(v0 + 992);
  if (!v4)
  {

    goto LABEL_10;
  }

  AssetContents = CKSyncEngineDataSourceShouldFetchAssetContents(v4, *(v0 + 944), v5);
  v2 = *(v0 + 992);
  if (AssetContents)
  {

    swift_unknownObjectRelease();
LABEL_10:
    v7 = *(v0 + 976);
LABEL_23:
    v26 = *(v0 + 1000);
    if (v26 == *(v0 + 960))
    {
      v27 = (v0 + 808);

      if (!sub_1883F4C9C(v3))
      {
        v52 = *(v0 + 944);

        v53 = *(v0 + 863);
        v3 = *(v0 + 920);
        goto LABEL_52;
      }

      v28 = *(v0 + 920);
      if (*(v0 + 863))
      {
        if (*(v0 + 863) == 1)
        {

          v109 = sub_1884043A8(v29);
          sub_188504538();

          v30 = v109;
          sub_1883F5DF8(v109);
          sub_1883F793C();

          *(v0 + 160) = v3;
          *(v0 + 168) = 1;
          *(v0 + 169) = *(v0 + 840);
          *(v0 + 184) = *(v0 + 855);
          *(v0 + 192) = v7;
          v31 = *(v0 + 824);
          *(v0 + 200) = *v27;
          *(v0 + 216) = v31;
          v32 = *(v0 + 176);
          sub_1883F697C(v0 + 160, v0 + 232);
          sub_1883F69F4(v32);
          sub_1883F90D4();
          if (v33 && (v34 = sub_1883F7574(), (sub_1883F7624(v34, v35, v109, v1) & 1) == 0))
          {
            v30 = *(v0 + 944);
          }

          else
          {
            type metadata accessor for SyncEngine(0);
            v36 = sub_1883FF240();
            sub_1883F9674(v36, v37, v38, v39, v40, v41);
            sub_1883F8C64();

            sub_188402F14(v42, v43, v44, v45, v46, v47, v48, v49, v32);
          }

          sub_1883F7768(v0 + 160);
          v53 = 1;
LABEL_52:
          sub_1883FA4C8();
          sub_1883FE77C(v101);
          *(v0 + 400) = v102;
          *(v0 + 408) = v7;
          v103 = *(v0 + 824);
          *(v0 + 416) = *v27;
          *(v0 + 432) = v103;
          memcpy(v104, (v0 + 376), 0x48uLL);
          *(v0 + 304) = v3;
          *(v0 + 312) = v53;
          sub_1883FE77C((v0 + 313));
          *(v0 + 328) = v105;
          *(v0 + 336) = v7;
          v106 = *(v0 + 824);
          *(v0 + 344) = *v27;
          *(v0 + 360) = v106;
          sub_1883F697C(v0 + 376, v0 + 448);
          sub_1883F7768(v0 + 304);
          sub_1883F816C();
          sub_1883FF618();

          __asm { BRAA            X1, X16 }
        }

        *(v0 + 664) = v3;
        *(v0 + 672) = 0;
        sub_1883FE77C((v0 + 673));
        *(v0 + 688) = v80;
        *(v0 + 696) = v7;
        v81 = *(v0 + 824);
        *(v0 + 704) = *v27;
        *(v0 + 720) = v81;
        v82 = *(v0 + 680);
        sub_1883F697C(v0 + 664, v0 + 736);
        sub_1883F69F4(v82);
        sub_1883F90D4();
        if (v83 && (v84 = sub_1883F7574(), (sub_1883F7624(v84, v85, v2, v1) & 1) == 0))
        {
          v2 = *(v0 + 944);
        }

        else
        {
          type metadata accessor for SyncEngine(0);
          v86 = sub_1883FF240();
          sub_1883F9674(v86, v87, v88, v89, v90, v91);
          sub_1883F8C64();

          sub_188402F14(v92, v93, v94, v95, v96, v97, v98, v99, v82);
        }

        v100 = v0 + 664;
      }

      else
      {

        v110 = sub_1884043A8(v3);
        v58 = sub_1884043A8(v28);
        sub_1884433B0(v58);
        v59 = v110;
        sub_1883F5DF8(v110);
        sub_1883F793C();

        *(v0 + 520) = v3;
        *(v0 + 528) = 0;
        sub_1883FE77C((v0 + 529));
        *(v0 + 544) = v60;
        *(v0 + 552) = v7;
        v61 = *(v0 + 824);
        *(v0 + 560) = *v27;
        *(v0 + 576) = v61;
        v62 = *(v0 + 536);
        sub_1883F697C(v0 + 520, v0 + 592);
        sub_1883F69F4(v62);
        sub_1883F90D4();
        if (v63 && (v64 = sub_1883F7574(), (sub_1883F7624(v64, v65, v110, v1) & 1) == 0))
        {
          v59 = *(v0 + 944);
        }

        else
        {
          type metadata accessor for SyncEngine(0);
          v66 = sub_1883FF240();
          sub_1883F9674(v66, v67, v68, v69, v70, v71);
          sub_1883F8C64();

          sub_188402F14(v72, v73, v74, v75, v76, v77, v78, v79, v62);
        }

        v100 = v0 + 520;
      }

      sub_1883F7768(v100);
      v53 = 0;
      goto LABEL_52;
    }

    *(v0 + 984) = v3;
    *(v0 + 976) = v7;
    v50 = *(v0 + 952);
    if ((v50 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x18CFD59D0](v26);
    }

    else
    {
      if (v26 >= *(v50 + 16))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v51 = *(v50 + 8 * v26 + 32);
    }

    *(v0 + 992) = v51;
    *(v0 + 1000) = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      *(v0 + 1008) = *(*(v0 + 944) + *(v0 + 968));

      v54 = swift_task_alloc();
      *(v0 + 1016) = v54;
      *v54 = v0;
      sub_1883FED98(v54);
      sub_1883FF618();

      sub_1884FE4E0(v55, v56);
      return;
    }

    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v8 = *(v0 + 976);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 888) = v8;
  sub_188486310();
  v12 = *(v8 + 16);
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_56;
  }

  v1 = v10;
  v15 = v11;
  sub_18844E6FC(&unk_1EA90E620, &unk_1886FBC40);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14))
  {
    v7 = *(v0 + 888);
    if ((v15 & 1) == 0)
    {
LABEL_20:
      v19 = *(v0 + 992);
      v7[(v1 >> 6) + 8] |= 1 << v1;
      *(v7[6] + 8 * v1) = v19;
      v20 = v7[7] + 16 * v1;
      *v20 = 1;
      *(v20 + 8) = 0;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
LABEL_58:
        __break(1u);
        return;
      }

      v24 = *(v0 + 992);
      v7[2] = v23;
      v25 = v24;
    }

LABEL_22:
    v2 = *(v0 + 992);
    *(v7[7] + 16 * v1) = 0;
    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v7 = *(v0 + 888);
  sub_188486310();
  if ((v15 & 1) == (v17 & 1))
  {
    v1 = v16;
    if ((v15 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  sub_1883FF618();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1884FE4E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1883F9430();
}

uint64_t sub_1884FE4F8()
{
  sub_1883F7120();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    sub_1883FA550();
    *(v0 + 48) = v2;
    v3 = sub_1883FDC8C();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    sub_1883F7910();

    return v6(1);
  }
}

uint64_t sub_1884FE5A0()
{
  sub_1883F7120();
  *(v0 + 56) = swift_unknownObjectWeakLoadStrong();

  v1 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1884FE610()
{
  sub_1883F78E0();
  v1 = v0[7];
  if (v1)
  {
    Changes = CKSyncEngineDelegateShouldFetchChanges(v0[5], v0[7], v0[2]);
  }

  else
  {
    Changes = 1;
  }

  swift_unknownObjectRelease();
  sub_1883F7910();

  return v3(Changes);
}

uint64_t sub_1884FE6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F9430();
}

uint64_t sub_1884FE6BC()
{
  sub_1883F7120();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1883FA550();
    *(v0 + 64) = v2;
    v3 = sub_1883FDC8C();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    sub_1883F7910();

    return v6();
  }
}

uint64_t sub_1884FE760()
{
  sub_1883F7120();
  *(v0 + 72) = swift_unknownObjectWeakLoadStrong();

  v1 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1884FE7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_188404C04();
  sub_1883F653C();
  if (*(v10 + 72))
  {
    *(v10 + 16) = &unk_1EFAAF6A0;
    v11 = swift_dynamicCastObjCProtocolConditional();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 respondsToSelector_];
      v14 = *(v10 + 72);
      if (v13)
      {
        sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
        v16 = Array._bridgeToObjectiveC()().super.isa;
        v17 = [v12 syncEngine:v14 relatedApplicationBundleIdentifiersForZoneIDs:isa recordIDs:v16];

        v18 = *(v10 + 72);
        if (v17)
        {
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v19 = *(v10 + 72);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1883F7910();
  sub_1883F6548();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1884FE980()
{
  sub_188504908(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1884FE9B0()
{
  sub_1884FE980();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1884FEA00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188442BE4;

  return sub_1884FCF94();
}

uint64_t sub_1884FEAB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1884FEB54;

  return sub_1884FE4E0(a1, a2);
}

uint64_t sub_1884FEB54()
{
  sub_1883F7120();
  v2 = v1;
  sub_1883F78EC();
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  sub_1883F7910();

  return v5(v2);
}

id sub_1884FEC3C(void *a1)
{
  v3 = [v1 initWithConfiguration_];

  return v3;
}

Class sub_1884FEEA4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t sub_1884FF128()
{
  v1 = [v0 state];
  v2 = [v1 pendingDatabaseChanges];

  v3 = sub_1883F4C5C(0, &qword_1EA90C7C8, off_1E70BA888);
  v4 = sub_1883FD7E8(v3);

  v5 = sub_1883F4C9C(v4);

  if (v5)
  {
    return 1;
  }

  v6 = [v0 state];
  v7 = [v6 pendingRecordZoneChanges];

  v8 = sub_1883F4C5C(0, &qword_1EA90C7C0, off_1E70BA890);
  v9 = sub_1883FD7E8(v8);

  v10 = sub_1883F4C9C(v9);

  if (v10)
  {
    return 1;
  }

  v12 = [v0 state];
  v13 = [v12 hasPendingUntrackedChanges];

  return v13 ^ 1;
}

uint64_t sub_1884FF268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v7);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v10, 1, 1, v11);
  sub_1883FEFF8();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = v3;
  v12[6] = a2;
  v12[7] = a3;

  v13 = v3;
  sub_1883F5CC0(a2, a3);
  sub_1883FF490();
  sub_188453610();
}

uint64_t sub_1884FF364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884FF434, 0, 0);
}

uint64_t sub_1884FF434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883FD7A0();
  sub_1883FC738();
  if (v14[18])
  {

    sub_1884043A8(v15);
  }

  v16 = v14[23];
  v17 = v14[22];
  v35 = v14[19];
  v18 = objc_allocWithZone(CKSyncEngineFetchChangesScope);
  v19 = sub_1883F9598();
  v20 = sub_1885126DC(v19);
  v14[25] = [objc_allocWithZone(CKSyncEngineFetchChangesOptions) initWithScope_];

  v14[2] = v14;
  v14[3] = sub_1884FF5E0;
  swift_continuation_init();
  v14[17] = v17;
  v21 = sub_188403664(v14 + 14);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1883FE190();
  v22 = sub_1883FF380();
  v23(v22);
  sub_1884037F4();
  v14[11] = 1107296256;
  sub_1883F98C4();
  sub_1883FE280();
  [v24 v25];
  (*(v16 + 8))(v21, v17);
  sub_1883F9968();

  return MEMORY[0x1EEE6DEC8](v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12, a13, a14);
}

uint64_t sub_1884FF5E0()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884FF6E0()
{
  sub_1883F7120();
  v1 = *(v0 + 160);

  if (v1)
  {
    (*(v0 + 160))(0);
  }

  sub_1883F816C();

  return v2();
}

uint64_t sub_1884FF758()
{
  sub_1883FB4AC();
  v1 = v0[25];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[26];
  if (v2)
  {
    v4 = v0[20];
    v5 = v3;
    v4(v3);
  }

  sub_1883F816C();

  return v6();
}

void sub_1884FF8E8()
{
  sub_1883F7FF0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v7);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_188411130();
  sub_188404A44(v9);
  sub_18840FB98();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v0;
  v10[5] = v6;
  v10[6] = v4;
  v11 = v0;
  v2(v6, v4);
  sub_1883FF490();
  sub_188453610();

  sub_1883FDCC0();
}

uint64_t sub_1884FF9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1884FFA84, 0, 0);
}

uint64_t sub_1884FFA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883FD7A0();
  sub_1883FC738();
  v15 = v14;
  v16 = v14;
  v17 = v14 + 10;
  v19 = v14[22];
  v18 = v14[23];
  v20 = v14[21];
  v21 = v15[18];
  v15[2] = v16;
  v15[3] = sub_1884FFC18;
  swift_continuation_init();
  v15[17] = v20;
  v22 = sub_188403664(v15 + 14);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  CheckedContinuation.init(continuation:function:)();
  (*(v19 + 32))(v22, v18, v20);
  v15[10] = MEMORY[0x1E69E9820];
  v15[11] = 1107296256;
  v15[12] = sub_1884C339C;
  v15[13] = &unk_1EFA2C848;
  [v21 sendChangesWithCompletionHandler_];
  (*(v19 + 8))(v22, v20);
  sub_1883F9968();

  return MEMORY[0x1EEE6DEC8](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1884FFC18()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1884FFD18()
{
  sub_1883F7120();
  v1 = *(v0 + 152);
  if (v1)
  {
    v1(0);
  }

  sub_1883F816C();

  return v2();
}

uint64_t sub_1884FFD88()
{
  sub_1883F78E0();
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 192);
  if (v1)
  {
    v3 = *(v0 + 152);
    v4 = v2;
    v3(v2);
  }

  sub_1883F816C();

  return v5();
}

void sub_1884FFF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1883F7FF0();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v28);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  if (v25)
  {
    sub_1883F8708();
    v32 = swift_allocObject();
    *(v32 + 16) = v25;
    *(v32 + 24) = v23;
  }

  sub_18844E6FC(&qword_1EA90E6A8, &qword_1886FBC78);
  sub_1883F8708();
  swift_allocObject();
  v33 = sub_1883FA748();
  v35 = sub_188501110(v33, v34);
  v36 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v31, 1, 1, v36);
  sub_18840FB98();
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v27;
  v37[5] = v21;
  v37[6] = v35;
  sub_1883F5CC0(v25, v23);

  v38 = v21;
  sub_1883FF490();
  sub_188453610();

  sub_1883FDCC0();
}

uint64_t sub_188500070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188500140, 0, 0);
}

uint64_t sub_188500140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1883FD7A0();
  sub_1883FC738();
  if (v14[18])
  {

    sub_1884043A8(v15);
  }

  v16 = v14[22];
  v17 = v14[21];
  v35 = v14[19];
  v18 = objc_allocWithZone(CKSyncEngineSendChangesScope);
  v19 = sub_1883F9598();
  v20 = sub_1885126DC(v19);
  v14[24] = [objc_allocWithZone(CKSyncEngineSendChangesOptions) initWithScope_];

  v14[2] = v14;
  v14[3] = sub_1885002EC;
  swift_continuation_init();
  v14[17] = v17;
  v21 = sub_188403664(v14 + 14);
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  sub_1883FE190();
  v22 = sub_1883FF380();
  v23(v22);
  sub_1884037F4();
  v14[11] = 1107296256;
  sub_1883F98C4();
  sub_1883FE280();
  [v24 v25];
  (*(v16 + 8))(v21, v17);
  sub_1883F9968();

  return MEMORY[0x1EEE6DEC8](v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12, a13, a14);
}

uint64_t sub_1885002EC()
{
  sub_1883F7120();
  sub_1883F78EC();
  sub_1883F78D4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1885003EC()
{
  sub_1883F78E0();
  v8 = v0;

  v1 = sub_1884FB7E8();
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v7 = 0;
    v1(&v7);
    sub_1883F5BA0(v3, v4);
  }

  sub_1883F816C();

  return v5();
}

uint64_t sub_188500484()
{
  sub_1883FB4AC();
  v11 = v0;
  v1 = *(v0 + 192);
  swift_willThrow();

  v2 = sub_1884FB7E8();
  v4 = *(v0 + 200);
  if (v2)
  {
    v5 = v2;
    v6 = v3;
    v10 = *(v0 + 200);
    v7 = v4;
    v5(&v10);
    sub_1883F5BA0(v5, v6);
  }

  sub_1883F816C();

  return v8();
}

uint64_t sub_188500648()
{
  sub_1884137B8();
  if (v3)
  {
    v4 = sub_1883F4C5C(0, &unk_1EA90CA40, off_1E70BA640);
    sub_1883FD7E8(v4);
  }

  if (v2)
  {
    sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = v1;
  v6 = sub_1883F7BC0();
  sub_1885006F4(v6, v7, v0);
}

void sub_1885006F4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  v8 = &selRef_setStringValue_forKey_;
  v9 = [v3 state];
  if (a1)
  {
    v10 = sub_1883F4C9C(a1);
    if (v10)
    {
      v11 = v10;
      v22 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v11 < 0)
      {
        goto LABEL_26;
      }

      v20 = v9;
      v12 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x18CFD59D0](v12, a1);
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_24:
            __break(1u);
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            return;
          }

          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v13 = *(a1 + 8 * v12 + 32);
        }

        v14 = v13;
        ++v12;
        [objc_allocWithZone(CKSyncEnginePendingZoneSave) initWithZone_];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v11 == v12)
        {
          v8 = &selRef_setStringValue_forKey_;
          v9 = v20;
          break;
        }
      }
    }
  }

  sub_1883F4C5C(0, &qword_1EA90C7C8, off_1E70BA888);
  sub_1883F84DC();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 *a3];

  v16 = [v5 v8[244]];
  if (a2)
  {
    v17 = sub_1883F4C9C(a2);
    if (v17)
    {
      v18 = v17;
      v22 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v18 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x18CFD59D0](0, a2);
          }

          else
          {
            if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v19 = *(a2 + 32);
          }

          sub_188410C80();
          [objc_allocWithZone(CKSyncEnginePendingZoneDelete) initWithZoneID_];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          sub_1883F86B8();
          specialized ContiguousArray._endMutation()();
        }
      }

      goto LABEL_27;
    }
  }

  sub_1883F84DC();
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v16 *a3];
}

void sub_188500A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_1883F9160();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v10 state];
  v20 = sub_1883F4C9C(v18);
  v21 = v20;
  if ((v16 & 1) == 0)
  {
    if (!v20)
    {
      v24 = &selRef_removePendingRecordZoneChanges_;
      goto LABEL_21;
    }

    sub_188410D0C();
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v21 & 0x8000000000000000) == 0)
    {
      sub_18840437C();
      do
      {
        if (v11)
        {
          v25 = MEMORY[0x18CFD59D0](v16, v18);
        }

        else
        {
          v25 = *(v18 + 8 * v16 + 32);
        }

        v26 = v25;
        ++v16;
        [objc_allocWithZone(*(v12 + 2192)) (v9 + 2641)];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_188405654();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        sub_188405654();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v21 != v16);
      v24 = &selRef_removePendingRecordZoneChanges_;
      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    return;
  }

  if (!v20)
  {
    v24 = &selRef_addPendingRecordZoneChanges_;
    goto LABEL_21;
  }

  sub_188410D0C();
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_18840437C();
  do
  {
    if (v11)
    {
      v22 = MEMORY[0x18CFD59D0](v16, v18);
    }

    else
    {
      v22 = *(v18 + 8 * v16 + 32);
    }

    v23 = v22;
    ++v16;
    [objc_allocWithZone(*(v12 + 2192)) (v9 + 2641)];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_188405654();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    sub_188405654();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v21 != v16);
  v24 = &selRef_addPendingRecordZoneChanges_;
LABEL_18:
  v19 = a9;
LABEL_21:
  sub_1883F4C5C(0, &qword_1EA90C7C0, off_1E70BA890);
  sub_1883F9598();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 *v24];

  sub_1883F8750();
}

uint64_t sub_188500C38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v9 = sub_1883FD7E8(v8);
  v10 = a1;
  sub_188500A08(v9, a4, a5, v11, v12, v13, v14, v15, v17);
}

void sub_188501000()
{
  v1 = [v0 state];
  [v1 setHasPendingUntrackedChanges_];
}

uint64_t sub_18850105C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1885010BC(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_188501110(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = xmmword_1886FBB70;
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_188501174(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1886F8030;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1885011D8(void *a1, void *a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](0);
  v5 = a2;
  NSObject.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v19;
      v15 = v5;
      sub_188502868(v15, v8, isUniquelyReferenced_nonNull_native);
      *v19 = v21;
      *a1 = v15;
      return v9 == 0;
    }

    v10 = *(*(v4 + 48) + 8 * v8);
    sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
    v11 = v5;
    v12 = v10;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v16 = *(*(v4 + 48) + 8 * v8);
  *a1 = v16;
  v17 = v16;
  return v9 == 0;
}

uint64_t sub_188501374(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_1883F4C5C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v32;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v25 = sub_188501784(v15, result + 1, a5, a6, a3, a4);
        v26 = v25[2];
        if (v25[3] <= v26)
        {
          sub_18850227C(v26 + 1, a5, a6);
        }

        v27 = v16;
        sub_188502690(v27, v25);

        *v11 = v25;
        *a1 = v27;
        return 1;
      }
    }
  }

  else
  {
    sub_1883F4C5C(0, a3, a4);
    NSObject._rawHashValue(seed:)(*(v14 + 40));
    sub_1883F9AD4();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v33 = *v11;
        v28 = a2;
        sub_188502710();
        *v11 = v33;
        *a1 = v28;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v29 = *(*(v14 + 48) + 8 * v22);
    *a1 = v29;
    v30 = v29;
    return 0;
  }

  return result;
}

uint64_t sub_1885015CC(uint64_t a1, void *a2, char a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x18CFD5EB0](a3 & 1);
  NSObject.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_9:
    v17 = a3 & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v24;
    v19 = a2;
    sub_188502A0C(a2, v17, v9, isUniquelyReferenced_nonNull_native);
    *v24 = v26;
    *a1 = a2;
    *(a1 + 8) = v17;
    return 1;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(v6 + 48) + 16 * v9;
    v12 = *v11;
    if (*(v11 + 8))
    {
      break;
    }

    if ((a3 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_8:
    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  sub_1883F4C5C(0, &qword_1EA90CA80, 0x1E69E58C0);
  v13 = v12;
  v14 = a2;
  v15 = v13;
  v16 = static NSObject.== infix(_:_:)();

  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

  v21 = *(v6 + 48) + 16 * v9;
  v22 = *v21;
  LOBYTE(v21) = *(v21 + 8);
  *a1 = v22;
  *(a1 + 8) = v21;
  v23 = v22;
  return 0;
}

Swift::Int sub_188501784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_18844E6FC(a3, a4);
    sub_1883FA748();
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v10;
      }

      sub_1883F4C5C(0, a5, a6);
      swift_dynamicCast();
      v11 = *(v10 + 16);
      if (*(v10 + 24) <= v11)
      {
        sub_18850227C(v11 + 1, a3, a4);
      }

      v10 = v23;
      result = NSObject._rawHashValue(seed:)(*(v23 + 40));
      v13 = v23 + 56;
      v14 = -1 << *(v23 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v23 + 56 + 8 * (v15 >> 6))) == 0)
      {
        break;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v23 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v23 + 48) + 8 * v17) = v22;
      ++*(v23 + 16);
    }

    v18 = 0;
    v19 = (63 - v14) >> 6;
    while (++v16 != v19 || (v18 & 1) == 0)
    {
      v20 = v16 == v19;
      if (v16 == v19)
      {
        v16 = 0;
      }

      v18 |= v20;
      v21 = *(v13 + 8 * v16);
      if (v21 != -1)
      {
        v17 = __clz(__rbit64(~v21)) + (v16 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_188501958(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18844E6FC(&qword_1EA90E6D8, &qword_1886FBD40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_188501174(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x18CFD5EB0](v16);
    result = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_188501BA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18844E6FC(&qword_1EA90E6B8, &qword_1886FBD18);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_188501174(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = MEMORY[0x18CFD5E90](*(v5 + 40), v16);
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_188501DC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18844E6FC(&qword_1EA90E6C0, &unk_1886FBD20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_188501174(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_188502024(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_18844E6FC(&unk_1EA90E6C8, &qword_1886FBD38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_188501174(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x18CFD5EB0](0);
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}