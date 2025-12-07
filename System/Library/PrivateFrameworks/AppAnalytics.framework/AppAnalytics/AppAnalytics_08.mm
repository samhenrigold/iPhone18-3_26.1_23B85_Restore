id BridgedEventData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedEventData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BridgedEventData(uint64_t a1)
{
  result = qword_1EDBC98A8;
  if (!qword_1EDBC98A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A36F50(uint64_t a1)
{
  result = sub_1B6AB8DB0();
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

void sub_1B6A37044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B6AB8A60();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t BridgedTracker.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AATracker_name);

  return v1;
}

uint64_t BridgedTracker.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___AATracker_identifier);

  return v1;
}

id BridgedTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BridgedTracker.time(eventType:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v1 timeEventType:ObjCClassFromMetadata submitAndRestartWithSession:1];
}

uint64_t BridgedTracker.time(eventType:startTime:)(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(v2 + OBJC_IVAR___AATracker_eventMirrorStore);
  v8 = *(v2 + OBJC_IVAR___AATracker_tracker);
  v9 = *(v8 + 88);
  v14 = *(v8 + 96);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = v15;
  *(v11 + 2) = v8;
  *(v11 + 3) = v12;
  *(v11 + 4) = v7 | 0x4000000000000000;
  (*(v5 + 32))(&v11[v10], &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v11[v10 + v6] = 1;
  swift_retain_n();

  sub_1B69877A4(v9, sub_1B6A3F448, v11);
}

uint64_t BridgedTracker.time(eventType:submitAndRestartWithSession:)(uint64_t a1, int a2)
{
  v20 = a2;
  v19 = a1;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = *(v2 + OBJC_IVAR___AATracker_eventMirrorStore);
  v11 = *(v2 + OBJC_IVAR___AATracker_tracker);

  sub_1B6AB8DA0();
  v12 = *(v11 + 96);
  v18[0] = *(v11 + 88);
  v18[1] = v12;
  (*(v4 + 16))(v7, v9, v3);
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = v13 + v5;
  v15 = swift_allocObject();
  v16 = v19;
  *(v15 + 2) = v11;
  *(v15 + 3) = v16;
  *(v15 + 4) = v10 | 0x4000000000000000;
  (*(v4 + 32))(&v15[v13], v7, v3);
  v15[v14] = v20;

  sub_1B69877A4(v18[0], sub_1B6A402A8, v15);

  return (*(v4 + 8))(v9, v3);
}

uint64_t BridgedTracker.time(eventType:submitAndRestartWithSession:startTime:)(uint64_t a1, int a2, uint64_t a3)
{
  v17 = a2;
  v16 = a1;
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(v3 + OBJC_IVAR___AATracker_eventMirrorStore);
  v9 = *(v3 + OBJC_IVAR___AATracker_tracker);
  v10 = *(v9 + 88);
  v15[1] = *(v9 + 96);
  (*(v6 + 16))(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = v16;
  *(v12 + 2) = v9;
  *(v12 + 3) = v13;
  *(v12 + 4) = v8 | 0x4000000000000000;
  (*(v6 + 32))(&v12[v11], v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v12[v11 + v7] = v17;
  swift_retain_n();

  sub_1B69877A4(v10, sub_1B6A402A8, v12);
}

void BridgedTracker.time(rawEvent:startTime:)(uint64_t a1)
{
  v3 = sub_1B6AB8D20();
  [v1 timeRawEvent:a1 submitAndRestartWithSession:1 startTime:v3];
}

uint64_t BridgedTracker.time(rawEvent:submitAndRestartWithSession:)(void *a1, int a2)
{
  v19 = a2;
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(v2 + OBJC_IVAR___AATracker_tracker);
  sub_1B6AB8DA0();
  v12 = *(v11 + 88);
  v18 = *(v11 + 96);
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = v13 + v6;
  v15 = swift_allocObject();
  *(v15 + 2) = v11;
  *(v15 + 3) = a1;
  *(v15 + 4) = 0x8000000000000000;
  (*(v5 + 32))(&v15[v13], v8, v4);
  v15[v14] = v19;

  v16 = a1;
  sub_1B69877A4(v12, sub_1B6A402A8, v15);

  return (*(v5 + 8))(v10, v4);
}

uint64_t BridgedTracker.time(rawEvent:submitAndRestartWithSession:startTime:)(void *a1, int a2, uint64_t a3)
{
  v16 = a2;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(v3 + OBJC_IVAR___AATracker_tracker);
  v10 = *(v9 + 88);
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v6);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v9;
  *(v12 + 3) = a1;
  *(v12 + 4) = 0x8000000000000000;
  (*(v7 + 32))(&v12[v11], &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v12[v11 + v8] = v16;

  v13 = a1;
  sub_1B69877A4(v10, sub_1B6A402A8, v12);
}

id BridgedTracker.submit(eventType:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v1 submitEventType:ObjCClassFromMetadata onlyIfTimed:0];
}

uint64_t BridgedTracker.submit(eventType:onlyIfTimed:)(uint64_t a1, int a2)
{
  v26 = a2;
  v25 = a1;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v24 = *(v2 + OBJC_IVAR___AATracker_eventMirrorStore) | 0x4000000000000000;
  v10 = *(v2 + OBJC_IVAR___AATracker_tracker);
  memset(v29, 0, sizeof(v29));

  sub_1B6AB8DA0();
  v11 = *(v4 + 16);
  v27 = v9;
  v11(v7, v9, v3);
  sub_1B69C1678(v29, v28);
  v12 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = v24;
  v16 = v25;
  *(v14 + 16) = v10;
  *(v14 + 24) = v16;
  *(v14 + 32) = v15;
  *(v14 + 40) = v26;
  (*(v4 + 32))(v14 + v12, v7, v3);
  v17 = (v14 + v13);
  v18 = v28[1];
  *v17 = v28[0];
  v17[1] = v18;
  v19 = (v14 + ((v13 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  v20 = qword_1EDBCAA18;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDBCFD78;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B6A3F44C;
  *(v22 + 24) = v14;

  sub_1B69877A4(v21, sub_1B69B6F90, v22);

  (*(v4 + 8))(v27, v3);
  return sub_1B6981634(v29);
}

void BridgedTracker.submit(eventType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B6A12D6C;
  v8[3] = &block_descriptor_7;
  v7 = _Block_copy(v8);

  [v3 submitEventType:ObjCClassFromMetadata onlyIfTimed:0 completion:v7];
  _Block_release(v7);
}

uint64_t BridgedTracker.submit(eventType:onlyIfTimed:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v32) = a2;
  v31 = a1;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v29 = *(v4 + OBJC_IVAR___AATracker_eventMirrorStore) | 0x4000000000000000;
  v14 = *(v4 + OBJC_IVAR___AATracker_tracker);
  memset(v35, 0, sizeof(v35));
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  sub_1B6AB8DA0();
  v30 = *(v14 + 96);
  v16 = *(v8 + 16);
  v33 = v13;
  v16(v11, v13, v7);
  sub_1B69C1678(v35, v34);
  v17 = (*(v8 + 80) + 41) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v31;
  *(v19 + 16) = v14;
  *(v19 + 24) = v20;
  *(v19 + 32) = v29;
  *(v19 + 40) = v32;
  v32 = v8;
  (*(v8 + 32))(v19 + v17, v11, v7);
  v21 = (v19 + v18);
  v22 = v34[1];
  *v21 = v34[0];
  v21[1] = v22;
  v23 = (v19 + ((v18 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_1B6A40310;
  v23[1] = v15;
  v24 = qword_1EDBCAA18;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDBCFD78;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6A402AC;
  *(v26 + 24) = v19;

  sub_1B69877A4(v25, sub_1B6A402B8, v26);

  (*(v32 + 8))(v33, v7);
  return sub_1B6981634(v35);
}

uint64_t BridgedTracker.submit(rawEvent:onlyIfTimed:)(void *a1, int a2)
{
  v26 = a2;
  v25 = a1;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = *(v2 + OBJC_IVAR___AATracker_tracker);
  memset(v29, 0, sizeof(v29));
  sub_1B6AB8DA0();
  v11 = *(v4 + 16);
  v27 = v9;
  v11(v7, v9, v3);
  sub_1B69C1678(v29, v28);
  v12 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = v25;
  *(v14 + 16) = v10;
  *(v14 + 24) = v15;
  *(v14 + 32) = 0x8000000000000000;
  *(v14 + 40) = v26;
  (*(v4 + 32))(v14 + v12, v7, v3);
  v16 = (v14 + v13);
  v17 = v28[1];
  *v16 = v28[0];
  v16[1] = v17;
  v18 = (v14 + ((v13 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v18 = 0;
  v18[1] = 0;
  v19 = qword_1EDBCAA18;

  v20 = v15;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDBCFD78;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B6A402AC;
  *(v22 + 24) = v14;

  sub_1B69877A4(v21, sub_1B6A402B8, v22);

  (*(v4 + 8))(v27, v3);
  return sub_1B6981634(v29);
}

uint64_t BridgedTracker.submit(rawEvent:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = *(v4 + OBJC_IVAR___AATracker_tracker);
  memset(v33, 0, sizeof(v33));
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  sub_1B6AB8DA0();
  v30 = *(v14 + 96);
  v31 = v13;
  (*(v8 + 16))(v11, v13, v7);
  sub_1B69C1678(v33, v32);
  v16 = (*(v8 + 80) + 41) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v29;
  *(v18 + 16) = v14;
  *(v18 + 24) = v19;
  *(v18 + 32) = 0x8000000000000000;
  *(v18 + 40) = 0;
  (*(v8 + 32))(v18 + v16, v11, v7);
  v20 = (v18 + v17);
  v21 = v32[1];
  *v20 = v32[0];
  v20[1] = v21;
  v22 = (v18 + ((v17 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_1B6A40310;
  v22[1] = v15;
  v23 = qword_1EDBCAA18;

  v24 = v19;

  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDBCFD78;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6A402AC;
  *(v26 + 24) = v18;

  sub_1B69877A4(v25, sub_1B6A402B8, v26);

  (*(v8 + 8))(v31, v7);
  return sub_1B6981634(v33);
}

void sub_1B6A393C8(uint64_t a1, void (*a2)(id, id))
{
  sub_1B6A3FEAC(0, qword_1EDBC8B18, type metadata accessor for ProcessEvent);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - v6);
  sub_1B6A3FEAC(0, qword_1EDBC8268, type metadata accessor for EventSubmitResult);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v28 - v9);
  sub_1B6A3FF0C(a1, &v28 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = *v10;
    a2(0, v11);
  }

  else
  {
    sub_1B6A243B0(v10, v7);
    v14 = *v7;
    v13 = v7[1];
    v16 = v7[3];
    v15 = v7[4];
    v17 = v7[2];
    v18 = (v7 + *(v5 + 48));
    v29 = a2;
    v19 = *v18;
    v20 = v18[1];
    v21 = type metadata accessor for BridgedProcessEvent();
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR___AAProcessEvent_name];
    *v23 = v14;
    *(v23 + 1) = v13;
    v24 = &v22[OBJC_IVAR___AAProcessEvent_version];
    *v24 = v16;
    *(v24 + 1) = v15;
    *&v22[OBJC_IVAR___AAProcessEvent_json] = v17;
    v25 = &v22[OBJC_IVAR___AAProcessEvent_groupName];
    *v25 = v19;
    *(v25 + 1) = v20;
    v30.receiver = v22;
    v30.super_class = v21;

    v26 = v17;
    v27 = objc_msgSendSuper2(&v30, sel_init);
    v29(v27, 0);

    sub_1B6A3FF8C(v7);
  }
}

uint64_t BridgedTracker.submit(rawEvent:onlyIfTimed:completion:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a2;
  v29 = a1;
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *(v5 + OBJC_IVAR___AATracker_tracker);
  memset(v34, 0, sizeof(v34));
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  sub_1B6AB8DA0();
  v31 = *(v15 + 96);
  v32 = v14;
  (*(v9 + 16))(v12, v14, v8);
  sub_1B69C1678(v34, v33);
  v17 = (*(v9 + 80) + 41) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v29;
  *(v19 + 16) = v15;
  *(v19 + 24) = v20;
  *(v19 + 32) = 0x8000000000000000;
  *(v19 + 40) = v30;
  (*(v9 + 32))(v19 + v17, v12, v8);
  v21 = (v19 + v18);
  v22 = v33[1];
  *v21 = v33[0];
  v21[1] = v22;
  v23 = (v19 + ((v18 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_1B6A40310;
  v23[1] = v16;
  v24 = qword_1EDBCAA18;

  v25 = v20;

  if (v24 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDBCFD78;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B6A402AC;
  *(v27 + 24) = v19;

  sub_1B69877A4(v26, sub_1B6A402B8, v27);

  (*(v9 + 8))(v32, v8);
  return sub_1B6981634(v34);
}

id BridgedTracker.delayedSubmit(eventType:onlyIfTimed:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v23 = a2;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-v11];
  sub_1B6AB8DA0();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a1;
  *(v15 + 32) = v23;
  (*(v7 + 32))(v15 + v14, v10, v6);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v24;
  v16[1] = a4;
  v17 = type metadata accessor for DelayedToken();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR___AADelayedToken_sealed] = 0;
  v19 = &v18[OBJC_IVAR___AADelayedToken_block];
  *v19 = sub_1B6A3F7C0;
  v19[1] = v15;
  v25.receiver = v18;
  v25.super_class = v17;

  v20 = objc_msgSendSuper2(&v25, sel_init);
  (*(v7 + 8))(v12, v6);

  return v20;
}

void sub_1B6A39C60(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v36 = *(Strong + OBJC_IVAR___AATracker_eventMirrorStore);
    v34 = a2;
    v35 = v36 | 0x4000000000000000;
    v17 = *(Strong + OBJC_IVAR___AATracker_tracker);
    memset(v39, 0, sizeof(v39));
    v18 = swift_allocObject();
    v32 = a3;
    v19 = v18;
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;
    v37 = *(v17 + 96);
    (*(v12 + 16))(&v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a4, v11);
    sub_1B69C1678(v39, v38);
    v20 = (*(v12 + 80) + 41) & ~*(v12 + 80);
    v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = a6;
    v22 = swift_allocObject();
    v24 = v34;
    v23 = v35;
    *(v22 + 16) = v17;
    *(v22 + 24) = v24;
    *(v22 + 32) = v23;
    *(v22 + 40) = v32 & 1;
    (*(v12 + 32))(v22 + v20, v14, v11);
    v25 = (v22 + v21);
    v26 = v38[1];
    *v25 = v38[0];
    v25[1] = v26;
    v27 = (v22 + ((v21 + 39) & 0xFFFFFFFFFFFFFFF8));
    *v27 = sub_1B6A40310;
    v27[1] = v19;
    v28 = qword_1EDBCAA18;
    swift_retain_n();

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = qword_1EDBCFD78;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1B6A402AC;
    *(v30 + 24) = v22;

    sub_1B69877A4(v29, sub_1B6A402B8, v30);

    sub_1B6981634(v39);
  }
}

id BridgedTracker.delayedSubmit(eventType:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6[4] = nullsub_1;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B6A12D6C;
  v6[3] = &block_descriptor_72_0;
  v3 = _Block_copy(v6);
  v4 = [v1 delayedSubmitEventType:ObjCClassFromMetadata onlyIfTimed:0 completion:v3];
  _Block_release(v3);
  return v4;
}

id BridgedTracker.delayedSubmit(eventType:onlyIfTimed:)(uint64_t a1, char a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8[4] = nullsub_1;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B6A12D6C;
  v8[3] = &block_descriptor_75;
  v5 = _Block_copy(v8);
  v6 = [v2 delayedSubmitEventType:ObjCClassFromMetadata onlyIfTimed:a2 & 1 completion:v5];
  _Block_release(v5);
  return v6;
}

id BridgedTracker.delayedSubmit(eventType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B6A12D6C;
  v10[3] = &block_descriptor_78;
  v7 = _Block_copy(v10);

  v8 = [v3 delayedSubmitEventType:ObjCClassFromMetadata onlyIfTimed:0 completion:v7];
  _Block_release(v7);
  return v8;
}

id BridgedTracker.delayedSubmit(rawEvent:onlyIfTimed:completion:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v24 = a2;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-v11];
  sub_1B6AB8DA0();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a1;
  *(v15 + 32) = v24;
  (*(v7 + 32))(v15 + v14, v10, v6);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v25;
  v16[1] = a4;
  v17 = type metadata accessor for DelayedToken();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR___AADelayedToken_sealed] = 0;
  v19 = &v18[OBJC_IVAR___AADelayedToken_block];
  *v19 = sub_1B6A3F7D8;
  v19[1] = v15;
  v26.receiver = v18;
  v26.super_class = v17;

  v20 = a1;

  v21 = objc_msgSendSuper2(&v26, sel_init);
  (*(v7 + 8))(v12, v6);

  return v21;
}

void sub_1B6A3A7C0(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = a3;
    v16 = *&Strong[OBJC_IVAR___AATracker_tracker];
    memset(v36, 0, sizeof(v36));
    v34 = Strong;
    v17 = swift_allocObject();
    v18 = a6;
    v32 = a6;
    v19 = v17;
    *(v17 + 16) = a5;
    *(v17 + 24) = v18;
    v33 = *(v16 + 96);
    (*(v12 + 16))(&v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], a4, v11);
    sub_1B69C1678(v36, v35);
    v20 = (*(v12 + 80) + 41) & ~*(v12 + 80);
    v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    *(v22 + 24) = a2;
    *(v22 + 32) = 0x8000000000000000;
    *(v22 + 40) = v31 & 1;
    (*(v12 + 32))(v22 + v20, v14, v11);
    v23 = (v22 + v21);
    v24 = v35[1];
    *v23 = v35[0];
    v23[1] = v24;
    v25 = (v22 + ((v21 + 39) & 0xFFFFFFFFFFFFFFF8));
    *v25 = sub_1B6A40004;
    v25[1] = v19;
    v26 = qword_1EDBCAA18;

    v27 = a2;

    if (v26 != -1)
    {
      swift_once();
    }

    v28 = qword_1EDBCFD78;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1B6A402AC;
    *(v29 + 24) = v22;

    sub_1B69877A4(v28, sub_1B6A402B8, v29);

    sub_1B6981634(v36);
  }
}

id BridgedTracker.delayedSubmit(rawEvent:)(uint64_t a1)
{
  v6[4] = nullsub_1;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B6A12D6C;
  v6[3] = &block_descriptor_85;
  v3 = _Block_copy(v6);
  v4 = [v1 delayedSubmitRawEvent:a1 onlyIfTimed:0 completion:v3];
  _Block_release(v3);
  return v4;
}

id BridgedTracker.delayedSubmit(rawEvent:onlyIfTimed:)(uint64_t a1, char a2)
{
  v8[4] = nullsub_1;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B6A12D6C;
  v8[3] = &block_descriptor_88_0;
  v5 = _Block_copy(v8);
  v6 = [v2 delayedSubmitRawEvent:a1 onlyIfTimed:a2 & 1 completion:v5];
  _Block_release(v5);
  return v6;
}

id BridgedTracker.delayedSubmit(rawEvent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B6A12D6C;
  v8[3] = &block_descriptor_91;
  v5 = _Block_copy(v8);

  v6 = [v3 delayedSubmitRawEvent:a1 onlyIfTimed:0 completion:v5];
  _Block_release(v5);
  return v6;
}

uint64_t BridgedTracker.explicitSubmit(eventType:onlyIfTimed:submitTime:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v27 = a5;
  v29 = a2;
  v28 = a1;
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v5 + OBJC_IVAR___AATracker_eventMirrorStore) | 0x4000000000000000;
  v12 = *(v5 + OBJC_IVAR___AATracker_tracker);
  memset(v32, 0, sizeof(v32));
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v30 = *(v12 + 96);
  (*(v9 + 16))(v11, v26, v8);
  sub_1B69C1678(v32, v31);
  v14 = (*(v9 + 80) + 41) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = v28;
  *(v16 + 16) = v12;
  *(v16 + 24) = v17;
  *(v16 + 32) = v25;
  *(v16 + 40) = v29;
  (*(v9 + 32))(v16 + v14, v11, v8);
  v18 = (v16 + v15);
  v19 = v31[1];
  *v18 = v31[0];
  v18[1] = v19;
  v20 = (v16 + ((v15 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_1B6A40310;
  v20[1] = v13;
  v21 = qword_1EDBCAA18;
  swift_retain_n();

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDBCFD78;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B6A402AC;
  *(v23 + 24) = v16;

  sub_1B69877A4(v22, sub_1B6A402B8, v23);

  return sub_1B6981634(v32);
}

uint64_t BridgedTracker.explicitSubmit(eventType:onlyIfTimed:submitTime:)(uint64_t a1, int a2, uint64_t a3)
{
  v25 = a2;
  v24 = a1;
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v3 + OBJC_IVAR___AATracker_eventMirrorStore) | 0x4000000000000000;
  v9 = *(v3 + OBJC_IVAR___AATracker_tracker);
  memset(v27, 0, sizeof(v27));
  (*(v6 + 16))(v8, a3, v5);
  sub_1B69C1678(v27, v26);
  v10 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v11 = (v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = v23;
  v14 = v24;
  *(v12 + 16) = v9;
  *(v12 + 24) = v14;
  *(v12 + 32) = v13;
  *(v12 + 40) = v25;
  (*(v6 + 32))(v12 + v10, v8, v5);
  v15 = (v12 + v11);
  v16 = v26[1];
  *v15 = v26[0];
  v15[1] = v16;
  v17 = (v12 + ((v11 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v17 = 0;
  v17[1] = 0;
  v18 = qword_1EDBCAA18;
  swift_retain_n();

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDBCFD78;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B6A402AC;
  *(v20 + 24) = v12;

  sub_1B69877A4(v19, sub_1B6A402B8, v20);

  return sub_1B6981634(v27);
}

uint64_t BridgedTracker.explicitSubmit(eventType:submitTime:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v2 + OBJC_IVAR___AATracker_eventMirrorStore) | 0x4000000000000000;
  v8 = *(v2 + OBJC_IVAR___AATracker_tracker);
  memset(v24, 0, sizeof(v24));
  (*(v5 + 16))(v7, a2, v4);
  sub_1B69C1678(v24, v23);
  v9 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v12 = v21;
  v13 = v22;
  *(v11 + 16) = v8;
  *(v11 + 24) = v13;
  *(v11 + 32) = v12;
  *(v11 + 40) = 0;
  (*(v5 + 32))(v11 + v9, v7, v4);
  v14 = (v11 + v10);
  v15 = v23[1];
  *v14 = v23[0];
  v14[1] = v15;
  v16 = (v11 + ((v10 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v16 = 0;
  v16[1] = 0;
  v17 = qword_1EDBCAA18;
  swift_retain_n();

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDBCFD78;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6A402AC;
  *(v19 + 24) = v11;

  sub_1B69877A4(v18, sub_1B6A402B8, v19);

  return sub_1B6981634(v24);
}

void BridgedTracker.explicitSubmit(eventType:submitTime:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_1B6AB8D20();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B6A12D6C;
  v11[3] = &block_descriptor_121;
  v10 = _Block_copy(v11);

  [v5 explicitSubmitEvent:ObjCClassFromMetadata onlyIfTimed:0 submitTime:v9 completion:v10];
  _Block_release(v10);
}

uint64_t BridgedTracker.explicitSubmit(rawEvent:onlyIfTimed:submitTime:completion:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28[1] = a5;
  v29 = a2;
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + OBJC_IVAR___AATracker_tracker);
  memset(v32, 0, sizeof(v32));
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v30 = *(v15 + 96);
  (*(v12 + 16))(v14, a3, v11);
  sub_1B69C1678(v32, v31);
  v17 = (*(v12 + 80) + 41) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = a1;
  *(v19 + 32) = 0x8000000000000000;
  *(v19 + 40) = v29;
  (*(v12 + 32))(v19 + v17, v14, v11);
  v20 = (v19 + v18);
  v21 = v31[1];
  *v20 = v31[0];
  v20[1] = v21;
  v22 = (v19 + ((v18 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_1B6A40310;
  v22[1] = v16;
  v23 = qword_1EDBCAA18;

  v24 = a1;

  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDBCFD78;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B6A402AC;
  *(v26 + 24) = v19;

  sub_1B69877A4(v25, sub_1B6A402B8, v26);

  return sub_1B6981634(v32);
}

uint64_t BridgedTracker.explicitSubmit(rawEvent:onlyIfTimed:submitTime:)(void *a1, int a2, uint64_t a3)
{
  v23 = a2;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + OBJC_IVAR___AATracker_tracker);
  memset(v25, 0, sizeof(v25));
  (*(v7 + 16))(v9, a3, v6);
  sub_1B69C1678(v25, v24);
  v11 = (*(v7 + 80) + 41) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  *(v13 + 32) = 0x8000000000000000;
  *(v13 + 40) = v23;
  (*(v7 + 32))(v13 + v11, v9, v6);
  v14 = (v13 + v12);
  v15 = v24[1];
  *v14 = v24[0];
  v14[1] = v15;
  v16 = (v13 + ((v12 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v16 = 0;
  v16[1] = 0;
  v17 = qword_1EDBCAA18;

  v18 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDBCFD78;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B6A402AC;
  *(v20 + 24) = v13;

  sub_1B69877A4(v19, sub_1B6A402B8, v20);

  return sub_1B6981634(v25);
}

uint64_t BridgedTracker.explicitRawSubmit(rawEvent:submitTime:)(void *a1, uint64_t a2)
{
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR___AATracker_tracker);
  memset(v22, 0, sizeof(v22));
  (*(v6 + 16))(v8, a2, v5);
  sub_1B69C1678(v22, v21);
  v10 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v11 = (v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = a1;
  *(v12 + 32) = 0x8000000000000000;
  *(v12 + 40) = 0;
  (*(v6 + 32))(v12 + v10, v8, v5);
  v13 = (v12 + v11);
  v14 = v21[1];
  *v13 = v21[0];
  v13[1] = v14;
  v15 = (v12 + ((v11 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v15 = 0;
  v15[1] = 0;
  v16 = qword_1EDBCAA18;

  v17 = a1;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDBCFD78;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B6A402AC;
  *(v19 + 24) = v12;

  sub_1B69877A4(v18, sub_1B6A402B8, v19);

  return sub_1B6981634(v22);
}

void BridgedTracker.explicitRawSubmit(rawEvent:submitTime:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1B6AB8D20();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B6A12D6C;
  v11[3] = &block_descriptor_151;
  v10 = _Block_copy(v11);

  [v5 explicitSubmitRawEvent:a1 onlyIfTimed:0 submitTime:v9 completion:v10];
  _Block_release(v10);
}

uint64_t BridgedTracker.register(dataType:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [swift_getObjCClassFromMetadata() dataName];
  v8 = sub_1B6AB92E0();
  v10 = v9;

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v12 = *(v3 + OBJC_IVAR___AATracker_tracker);
  v13 = *(v12 + 88);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v8;
  v14[4] = v10;
  v14[5] = sub_1B6A3F89C;
  v14[6] = v11;

  sub_1B69877A4(v13, sub_1B6A3F8A8, v14);
}

id sub_1B6A3CD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B6AB92B0();
  v5 = (*(a3 + 16))(a3, v4);

  return v5;
}

uint64_t BridgedTracker.push(data:traits:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = sub_1B6A43B04(a1, ObjectType);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *(v5 + OBJC_IVAR___AATracker_tracker);
  if (a2)
  {
    v17 = sub_1B69D821C();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v16 + 88);
  v19 = v15 & 1;
  v20 = (v15 >> 8) & 1;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v9;
  *(v21 + 32) = v11;
  *(v21 + 40) = v13;
  *(v21 + 48) = v19;
  *(v21 + 49) = v20;
  *(v21 + 56) = v17;
  *(v21 + 64) = a3;
  *(v21 + 72) = a4;
  *(v21 + 80) = a5;

  swift_unknownObjectRetain();

  sub_1B69877A4(v18, sub_1B6A3F8C0, v21);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall BridgedTracker.pop(dataName:)(Swift::String dataName)
{
  object = dataName._object;
  countAndFlagsBits = dataName._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR___AATracker_tracker);
  v5 = *(v4 + 88);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = countAndFlagsBits;
  v6[4] = object;

  sub_1B69877A4(v5, sub_1B6A40314, v6);
}

uint64_t sub_1B6A3D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [swift_getObjCClassFromMetadata() dataName];
  v6 = sub_1B6AB92E0();
  v8 = v7;

  v9 = *(v3 + OBJC_IVAR___AATracker_tracker);
  v10 = *(v9 + 88);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v6;
  v11[4] = v8;

  sub_1B69877A4(v10, a3, v11);
}

uint64_t sub_1B6A3D25C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a1;
  v9 = [ObjCClassFromMetadata dataName];
  v10 = sub_1B6AB92E0();
  v12 = v11;

  v13 = *&v8[OBJC_IVAR___AATracker_tracker];
  v14 = *(v13 + 88);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v10;
  v15[4] = v12;

  sub_1B69877A4(v14, a5, v15);
}

uint64_t BridgedTracker.clearStack(of:includeParentTrackers:)(uint64_t a1, char a2)
{
  v4 = [swift_getObjCClassFromMetadata() dataName];
  v5 = sub_1B6AB92E0();
  v7 = v6;

  v8 = *(v2 + OBJC_IVAR___AATracker_tracker);
  v9 = *(v8 + 88);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v5;
  *(v10 + 32) = v7;
  *(v10 + 40) = a2;

  sub_1B69877A4(v9, sub_1B6A3F938, v10);
}

id BridgedTracker.chain(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = Tracker.chain(name:identifier:)(a1, a2, 0, 0);
  v7 = *(v3 + OBJC_IVAR___AATracker_eventMirrorStore);
  v8 = type metadata accessor for BridgedTracker();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___AATracker_name];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR___AATracker_tracker] = v6;
  *&v9[OBJC_IVAR___AATracker_eventMirrorStore] = v7;
  v11 = &v9[OBJC_IVAR___AATracker_identifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v13.receiver = v9;
  v13.super_class = v8;

  return objc_msgSendSuper2(&v13, sel_init);
}

id BridgedTracker.chain(name:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = Tracker.chain(name:identifier:)(a1, a2, a3, a4);
  v11 = *(v5 + OBJC_IVAR___AATracker_eventMirrorStore);
  v12 = type metadata accessor for BridgedTracker();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___AATracker_name];
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v13[OBJC_IVAR___AATracker_tracker] = v10;
  *&v13[OBJC_IVAR___AATracker_eventMirrorStore] = v11;
  v15 = &v13[OBJC_IVAR___AATracker_identifier];
  *v15 = a3;
  *(v15 + 1) = a4;
  v17.receiver = v13;
  v17.super_class = v12;

  return objc_msgSendSuper2(&v17, sel_init);
}

char *BridgedTracker.path.getter()
{
  v1 = *(v0 + OBJC_IVAR___AATracker_tracker);

  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v1[3];
    if (v5)
    {
      v6 = v1[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1B69B5A00(0, *(v2 + 2) + 1, 1, v2);
      }

      v8 = *(v2 + 2);
      v7 = *(v2 + 3);
      if (v8 >= v7 >> 1)
      {
        v2 = sub_1B69B5A00((v7 > 1), v8 + 1, 1, v2);
      }

      *(v2 + 2) = v8 + 1;
      v3 = &v2[16 * v8];
      *(v3 + 4) = v6;
      *(v3 + 5) = v5;
    }

    v4 = v1[19];

    v1 = v4;
  }

  while (v4);

  return sub_1B69B919C(v2);
}

char *BridgedTracker.debugPath.getter()
{
  v1 = *(v0 + OBJC_IVAR___AATracker_tracker);
  v7 = MEMORY[0x1E69E7CC0];

  while (1)
  {

    v3 = sub_1B6A50610(v2, &v7);

    v4 = *(v1 + 152);

    if (!v4)
    {
      break;
    }

    v1 = v4;
    if ((v3 & 1) == 0)
    {

      break;
    }
  }

  v5 = v7;

  return sub_1B69B919C(v5);
}

id BridgedTracker.onSessionChange(block:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  v6 = Tracker.onSessionChange(block:)(sub_1B6A3F968, v5);

  swift_unknownObjectWeakAssign();
  v7 = type metadata accessor for BridgedSessionObserver();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___AASessionObserver_sessionObserver] = v6;
  v10.receiver = v8;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1B6A3DCF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = *&Strong[OBJC_IVAR___AATracker_eventMirrorStore];

  v9 = type metadata accessor for BridgedAccessTracker();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___AAAccessTracker_accessTracker] = a1;
  *&v10[OBJC_IVAR___AAAccessTracker_eventMirrorStore] = v8;
  v12.receiver = v10;
  v12.super_class = v9;

  v11 = objc_msgSendSuper2(&v12, sel_init);
  a4(v11, a2);
}

uint64_t BridgedTracker.removeSessionObservers(forObject:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + 48);
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1B69877A4(v3, sub_1B6A3F974, v5);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t BridgedTracker.transaction(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___AATracker_tracker];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = *(v5 + 88);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = sub_1B6A3F97C;
  v8[4] = v6;
  v9 = v2;

  sub_1B69877A4(v7, sub_1B69AA644, v8);
}

uint64_t BridgedTracker.dynamicTransaction(identifier:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___AATracker_tracker];
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a3;
  v10[4] = a4;
  v11 = *(v9 + 88);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = sub_1B6A402BC;
  v12[6] = v10;
  v13 = v4;

  sub_1B69877A4(v11, sub_1B6A3F99C, v12);
}

void sub_1B6A3E2D4(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  v5 = *(a2 + OBJC_IVAR___AATracker_eventMirrorStore);
  v6 = type metadata accessor for BridgedAccessTracker();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___AAAccessTracker_accessTracker] = a1;
  *&v7[OBJC_IVAR___AAAccessTracker_eventMirrorStore] = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  v8 = objc_msgSendSuper2(&v10, sel_init);
  a3(v8, v9);
}

uint64_t BridgedTracker.whenSession(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___AATracker_tracker];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1B6A3F9B4;
  *(v7 + 24) = v6;
  v8 = *(v5 + 88);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = sub_1B6A3F9D4;
  v9[4] = v7;

  v10 = v2;

  sub_1B69877A4(v8, sub_1B6A0ABEC, v9);
}

uint64_t BridgedTracker.ifSession(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___AATracker_tracker];
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v7 = *(v5 + 88);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = sub_1B6A402C0;
  v8[4] = v6;

  v9 = v2;

  sub_1B69877A4(v7, sub_1B6A3F9DC, v8);
}

void sub_1B6A3E880(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + OBJC_IVAR___AATracker_eventMirrorStore);
  v7 = type metadata accessor for BridgedAccessTracker();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___AAAccessTracker_accessTracker] = a1;
  *&v8[OBJC_IVAR___AAAccessTracker_eventMirrorStore] = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  v9 = objc_msgSendSuper2(&v11, sel_init);
  a2(v9, v10);
}

Swift::Void __swiftcall BridgedTracker.enterGroup(groupName:)(Swift::String groupName)
{
  object = groupName._object;
  countAndFlagsBits = groupName._countAndFlagsBits;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *(v1 + OBJC_IVAR___AATracker_tracker);
  sub_1B6AB8DA0();
  v11 = *(v10 + 88);
  v17 = *(v10 + 96);
  (*(v4 + 16))(v7, v9, v3);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = countAndFlagsBits;
  *(v14 + 2) = v10;
  *(v14 + 3) = v15;
  *(v14 + 4) = object;
  (*(v4 + 32))(&v14[v12], v7, v3);
  v16 = &v14[v13];
  *v16 = 0;
  v16[8] = 1;

  sub_1B69877A4(v11, sub_1B6A3F9E8, v14);

  (*(v4 + 8))(v9, v3);
}

uint64_t BridgedTracker.enterGroup(groupName:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  v12 = *(v3 + OBJC_IVAR___AATracker_tracker);
  sub_1B6AB8DA0();
  v13 = *(v12 + 88);
  v20[1] = *(v12 + 96);
  (*(v6 + 16))(v9, v11, v5);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 2) = v12;
  *(v16 + 3) = v17;
  *(v16 + 4) = a2;
  (*(v6 + 32))(&v16[v14], v9, v5);
  v18 = &v16[v15];
  *v18 = v22;
  v18[8] = 0;

  sub_1B69877A4(v13, sub_1B6A402B0, v16);

  return (*(v6 + 8))(v11, v5);
}

Swift::Void __swiftcall BridgedTracker.enterGroup()()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - v6;
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR___AATracker_tracker);
  sub_1B6AB8E30();
  v21[0] = sub_1B6AB8DD0();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  sub_1B6AB8DA0();
  v15 = *(v12 + 88);
  v21[1] = *(v12 + 96);
  (*(v2 + 16))(v5, v7, v1);
  v16 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v17 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v21[0];
  *(v18 + 2) = v12;
  *(v18 + 3) = v19;
  *(v18 + 4) = v14;
  (*(v2 + 32))(&v18[v16], v5, v1);
  v20 = &v18[v17];
  *v20 = 0;
  v20[8] = 1;

  sub_1B69877A4(v15, sub_1B6A402B0, v18);

  (*(v2 + 8))(v7, v1);
}

Swift::Void __swiftcall BridgedTracker.leaveGroup()()
{
  v1 = *(v0 + OBJC_IVAR___AATracker_tracker);
  v2 = *(v1 + 88);
  v3 = swift_allocObject();
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v1;

  sub_1B69877A4(v2, sub_1B6A3FB60, v3);
}

uint64_t sub_1B6A3F33C(void (*a1)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a1(*(result + 56));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B6A3F3C0(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + 56);
    v7 = a1;
    a3(v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B6A3F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    sub_1B69E85A4();
    a2 = sub_1B6ABA330();
    v9 = v10;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + 136);
  *(a1 + 136) = 0x8000000000000000;
  sub_1B69C2F78(a4, a5, a2, v9, isUniquelyReferenced_nonNull_native);

  *(a1 + 136) = v13;
  return swift_endAccess();
}

uint64_t sub_1B6A3F530(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4[11] + OBJC_IVAR___AAAccessQueue_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = sub_1B6AB9110();
  result = (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (a2)
  {
    v15 = a1;
    v16 = a2;
  }

  else
  {
    sub_1B69E85A4();
    v15 = sub_1B6ABA330();
    v16 = v17;
  }

  swift_beginAccess();
  v18 = v4[16];
  v19 = *(v18 + 16);

  if (!v19)
  {
LABEL_12:

    if ((a3 & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  v20 = sub_1B6993940(v15, v16);
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1B6982544(*(v18 + 56) + 40 * v20, v28);

  sub_1B6A3FE48();
  sub_1B6A244C4(0);
  v23 = v22;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v24 = v27[2];
  v25 = v27[3];
  v26 = *(v27[1] + 16);

  if (!v26)
  {
LABEL_11:

    goto LABEL_12;
  }

  v28[4] = &off_1F2E77398;
  v28[0] = MEMORY[0x1E69E7CC0];
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v23;
  swift_beginAccess();
  sub_1B699A480(v28, v15, v16);
  result = swift_endAccess();
  if ((a3 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  if (v4[19])
  {
    return sub_1B6A3F530(a1, a2, 1);
  }

  return result;
}

uint64_t sub_1B6A3F7F0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1B6AB8DB0() - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a1(v4, v5, v6, v1 + v3, v8, v9);
}

uint64_t sub_1B6A3F8C0()
{
  if (*(v0 + 49))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1B6A21578(*(v0 + 24), *(v0 + 32), *(v0 + 40), v1 | *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
}

uint64_t objectdestroy_212Tm()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

void sub_1B6A3FAC4()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = v6[8];

  sub_1B6A53B34(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t objectdestroy_197Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_185Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_162Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1B6A3FCE0()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  return sub_1B6A164AC(*(v0 + 24), *(v0 + 32), v2, *(v2 + *(v1 + 64)));
}

id sub_1B6A3FD68(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for BridgedEventMirrorStore();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v5 = type metadata accessor for BridgedTracker();
  v6 = objc_allocWithZone(v5);
  v7 = 0x6E6564646968;
  if (v2)
  {
    v7 = v3;
  }

  v8 = 0xE600000000000000;
  if (v2)
  {
    v8 = v2;
  }

  v9 = &v6[OBJC_IVAR___AATracker_name];
  *v9 = v7;
  v9[1] = v8;
  *&v6[OBJC_IVAR___AATracker_tracker] = a1;
  *&v6[OBJC_IVAR___AATracker_eventMirrorStore] = v4;
  v10 = &v6[OBJC_IVAR___AATracker_identifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  v12.receiver = v6;
  v12.super_class = v5;

  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_1B6A3FE48()
{
  result = qword_1EDBCC3B0;
  if (!qword_1EDBCC3B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBCC3B0);
  }

  return result;
}

void sub_1B6A3FEAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for BridgedEvent, &off_1F2E74868);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B6A3FF0C(uint64_t a1, uint64_t a2)
{
  sub_1B6A3FEAC(0, qword_1EDBC8268, type metadata accessor for EventSubmitResult);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A3FF8C(uint64_t a1)
{
  sub_1B6A3FEAC(0, qword_1EDBC8B18, type metadata accessor for ProcessEvent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;

  sub_1B69C346C(*(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  }

  if (*(v0 + v6))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1B6A4012C()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 40);
  v5 = *(*(v0 + 16) + 88);
  v7[2] = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = v4;
  v10 = v0 + v2;
  v11 = 0;
  v12 = 0;
  v13 = v0 + v3;
  v14 = *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B6995F94(v5, sub_1B6A40224, v7, v0 + v2);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B6A40338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A40388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B6A403E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B6A403FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 28789;
    }

    else
    {
      v4 = 0x6F626C6F6F686373;
    }

    if (v3 == 2)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xEA00000000006B6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1853321060;
    }

    else
    {
      v4 = 1701736302;
    }

    v5 = 0xE400000000000000;
  }

  v6 = 0xE200000000000000;
  v7 = 28789;
  if (a2 != 2)
  {
    v7 = 0x6F626C6F6F686373;
    v6 = 0xEA00000000006B6FLL;
  }

  if (a2)
  {
    v2 = 1853321060;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B6ABA0F0();
  }

  return v10 & 1;
}

uint64_t sub_1B6A40518(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 7954788;
    }

    else
    {
      v4 = 0x65736963657270;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1920298856;
  }

  else
  {
    v3 = 0xE600000000000000;
    if (a1 == 3)
    {
      v4 = 0x6574756E696DLL;
    }

    else
    {
      v4 = 0x72657474696ALL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 7954788;
    }

    else
    {
      v8 = 0x65736963657270;
    }

    if (a2)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6574756E696DLL;
    if (a2 != 3)
    {
      v5 = 0x72657474696ALL;
    }

    if (a2 == 2)
    {
      v6 = 1920298856;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_1B6ABA0F0();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_1B6A40670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 5459817;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x534F64615069;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x534F63616DLL;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x534F6E6F69736976;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 5459817;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
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
    v5 = 0xE500000000000000;
    v6 = 0x534F63616DLL;
    if (a2 != 3)
    {
      v6 = 0x534F6E6F69736976;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x534F64615069;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
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
    v10 = sub_1B6ABA0F0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

void sub_1B6A407E8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *a1;
  sub_1B6A41384();
  if (v5 && (v4 & 1) != 0)
  {
    v7 = 1000.0;
    v8 = v6 / 1000.0;
    if (v5 == 1)
    {
      goto LABEL_12;
    }

    if (v5 != 2)
    {
      goto LABEL_16;
    }

    v6 = ceil(v8) * 1000.0;
    if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v6 <= -9.22337204e18)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v6 < 9.22337204e18)
    {
LABEL_19:
      *a2 = v6;
      return;
    }

    __break(1u);
  }

  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = 9.22337204e18;
  v8 = 9.22337204e18;
  if (v6 < 9.22337204e18)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_12:
  v6 = floor(v8) * v7;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = 9.22337204e18;
  v8 = 9.22337204e18;
  if (v6 < 9.22337204e18)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_16:
  v6 = round(v8) * v7;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 < 9.22337204e18)
  {
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for TimeDurationGranularity.RoundingRule(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimeDurationGranularity.RoundingRule(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B6A40B24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73646E6F636573;
  }

  else
  {
    v3 = 0x636573696C6C696DLL;
  }

  if (v2)
  {
    v4 = 0xEC00000073646E6FLL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x73646E6F636573;
  }

  else
  {
    v5 = 0x636573696C6C696DLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEC00000073646E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B6ABA0F0();
  }

  return v8 & 1;
}

uint64_t sub_1B6A40BD4()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A40C60(uint64_t a1)
{
  sub_1B6AB9380();
}

uint64_t sub_1B6A40CD8()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A40D60@<X0>(char *a2@<X8>)
{
  v3 = sub_1B6AB9EF0();

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

void sub_1B6A40DC0(uint64_t *a1@<X8>)
{
  v2 = 0x636573696C6C696DLL;
  if (*v1)
  {
    v2 = 0x73646E6F636573;
  }

  v3 = 0xEC00000073646E6FLL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1B6A40ECC()
{
  result = qword_1EB95B998;
  if (!qword_1EB95B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B998);
  }

  return result;
}

uint64_t sub_1B6A40F50(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B6A40FA0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B6A40FA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B6AB95D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B6A40FF8()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A410A4(uint64_t a1)
{
  sub_1B6AB9380();
}

uint64_t sub_1B6A4113C()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

unint64_t sub_1B6A411E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B6A412E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B6A41214(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE200000000000000;
  v5 = 28789;
  if (*v1 != 2)
  {
    v5 = 0x6F626C6F6F686373;
    v4 = 0xEA00000000006B6FLL;
  }

  if (*v1)
  {
    v3 = 1853321060;
    v2 = 0xE400000000000000;
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

unint64_t sub_1B6A41290()
{
  result = qword_1EB95B9B0;
  if (!qword_1EB95B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B9B0);
  }

  return result;
}

unint64_t sub_1B6A412E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B6AB9EF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B6A41330()
{
  result = qword_1EB95B9B8;
  if (!qword_1EB95B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B9B8);
  }

  return result;
}

void sub_1B6A41384()
{
  if (!qword_1EDBC97A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBC97A0);
    }
  }
}

id sub_1B6A41408(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1 + *a3, v5);
  v9 = sub_1B6AB8D20();
  (*(v6 + 8))(v8, v5);

  return v9;
}

uint64_t sub_1B6A41520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1B6AB8DB0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id BridgedTimedData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedTimedData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedTimedData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BridgedTimedData(uint64_t a1)
{
  result = qword_1EDBC9898;
  if (!qword_1EDBC9898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A41890(uint64_t a1)
{
  result = sub_1B6AB8DB0();
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

id sub_1B6A4197C()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[4];
  v6 = v0[5];
  if (v6 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v0[5];
  }

  if (v6 >= 3)
  {
    v8 = v0[4];
  }

  else
  {
    v8 = 0;
  }

  v26 = v8;
  v27 = v5;
  if (v6 >= 3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v24 = v7;
  v25 = v9;
  v10 = v0[1];
  v23 = *v0;
  v11 = type metadata accessor for Session(0);
  v12 = *(v2 + 16);
  v12(v4, v0 + *(v11 + 28), v1);
  v13 = *(v0 + *(v11 + 32));
  v14 = type metadata accessor for BridgedSession(0);
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___AASession_identifier];
  v17 = v24;
  *v16 = v23;
  *(v16 + 1) = v10;
  *&v15[OBJC_IVAR___AASession_kind] = v17;
  v18 = &v15[OBJC_IVAR___AASession_name];
  v19 = v25;
  *v18 = v26;
  *(v18 + 1) = v19;
  v12(&v15[OBJC_IVAR___AASession_startDate], v4, v1);
  *&v15[OBJC_IVAR___AASession_sessionData] = v13;
  sub_1B6992E2C(v27, v6);
  v28.receiver = v15;
  v28.super_class = v14;

  v20 = objc_msgSendSuper2(&v28, sel_init);
  (*(v2 + 8))(v4, v1);
  return v20;
}

uint64_t Session.Kind.description.getter()
{
  v1 = v0[1];
  v2 = 0x7274656D656C6574;
  v3 = 0x656D69746C616572;
  if (v1 != 2)
  {
    v3 = *v0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x6E65764572657375;
  }

  sub_1B6992E2C(*v0, v1);
  return v4;
}

uint64_t Session.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Session.appSessionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Session.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B6992E2C(v2, v3);
}

uint64_t Session.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Session(0) + 28);
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double Session.sessionData.getter()
{
  type metadata accessor for Session(0);

  return result;
}

id sub_1B6A41D24(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  if (v3)
  {
    if (v3 == 1)
    {
      if (qword_1EB95A9B0 != -1)
      {
        swift_once();
      }

      v4 = qword_1EB95BAE8;
    }

    else
    {
      if (v3 != 2)
      {
        v6 = *v2;
        v7 = type metadata accessor for BridgedIDSessionKind();
        v8 = objc_allocWithZone(v7);
        *&v8[OBJC_IVAR___AAIDSessionKind_kind] = 3;
        v9 = &v8[OBJC_IVAR___AAIDSessionKind_name];
        *v9 = v6;
        *(v9 + 1) = v3;
        v10.receiver = v8;
        v10.super_class = v7;

        return objc_msgSendSuper2(&v10, sel_init);
      }

      if (qword_1EB95A9B8 != -1)
      {
        swift_once();
      }

      v4 = qword_1EB95BAF0;
    }
  }

  else
  {
    if (qword_1EB95A9A8 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB95BAE0;
  }

  return v4;
}

uint64_t Session.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA290();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_1B6ABA110();
    v7 = v5;
    v8 = v6 == 0x6E65764572657375 && v5 == 0xEA00000000007374;
    if (v8 || (sub_1B6ABA0F0() & 1) != 0)
    {

      v6 = 0;
      v7 = 0;
    }

    else if (v6 == 0x7274656D656C6574 && v7 == 0xE900000000000079 || (sub_1B6ABA0F0() & 1) != 0)
    {

      v6 = 0;
      v7 = 1;
    }

    else if (v6 == 0x656D69746C616572 && v7 == 0xE800000000000000 || (sub_1B6ABA0F0() & 1) != 0)
    {

      v6 = 0;
      v7 = 2;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Session.Kind.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA2B0();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1B6992E2C(v2, v3);
  sub_1B6ABA130();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t Session.Kind.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x1B8C98A40](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x1B8C98A40](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x1B8C98A40](v3);
  }

  MEMORY[0x1B8C98A40](3);

  return sub_1B6AB9380();
}

uint64_t Session.Kind.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1B6ABA1F0();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1B8C98A40](3);
        sub_1B6AB9380();
        return sub_1B6ABA230();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B8C98A40](v2);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A422A4()
{
  v1 = *(v0 + 8);
  sub_1B6ABA1F0();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1B8C98A40](3);
        sub_1B6AB9380();
        return sub_1B6ABA230();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B8C98A40](v2);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A42334(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x1B8C98A40](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x1B8C98A40](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x1B8C98A40](v3);
  }

  MEMORY[0x1B8C98A40](3);

  return sub_1B6AB9380();
}

uint64_t sub_1B6A423CC()
{
  v1 = *(v0 + 8);
  sub_1B6ABA1F0();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1B8C98A40](3);
        sub_1B6AB9380();
        return sub_1B6ABA230();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B8C98A40](v2);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A42488()
{
  v1 = v0[1];
  v2 = 0x7274656D656C6574;
  v3 = 0x656D69746C616572;
  if (v1 != 2)
  {
    v3 = *v0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x6E65764572657375;
  }

  sub_1B6992E2C(*v0, v1);
  return v4;
}

uint64_t _s12AppAnalytics7SessionV4KindO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        sub_1B69C2E8C(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        sub_1B69C2E8C(*a1, 1uLL);
        sub_1B69C2E8C(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        sub_1B69C2E8C(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        sub_1B69C2E8C(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    sub_1B6992E2C(*a2, *(a2 + 8));
    sub_1B6992E2C(v2, v3);
    sub_1B69C2E8C(v2, v3);
    sub_1B69C2E8C(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1B6992E2C(*a1, v3);
    sub_1B6992E2C(v2, v3);
    sub_1B69C2E8C(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = sub_1B6ABA0F0();
  sub_1B6992E2C(v4, v5);
  sub_1B6992E2C(v2, v3);
  sub_1B69C2E8C(v2, v3);
  sub_1B69C2E8C(v4, v5);
  return v10 & 1;
}

uint64_t sub_1B6A426A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A42700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B6A42760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B6A427A8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1B6A42804(uint64_t a1)
{
  sub_1B69809F4(0, qword_1EDBC90C0, &type metadata for EventMirrorProperty);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6A42870(uint64_t a1)
{
  sub_1B6A428CC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6A428CC(uint64_t a1)
{
  if (!qword_1EB95B9C0)
  {
    sub_1B697ED90(255, &qword_1EDBCB820, &protocol descriptor for EventPropertyType);
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95B9C0);
    }
  }
}

uint64_t SnapshotEntry.name.getter()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1B6A42994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1B6A429DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id BridgedRawEvent.init(name:properties:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___AARawEvent_name];
  *v8 = a1;
  v8[1] = a2;
  *&v3[OBJC_IVAR___AARawEvent_properties] = a3;
  if (qword_1EDBC8A58 != -1)
  {
    v12 = ObjectType;
    swift_once();
    ObjectType = v12;
  }

  v9 = qword_1EDBC8A60;
  *&v3[OBJC_IVAR___AARawEvent_sessionGroup] = qword_1EDBC8A60;
  v3[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = 0;
  *&v3[OBJC_IVAR___AARawEvent_timestampGranularity] = 0;
  *&v3[OBJC_IVAR___AARawEvent_timeDurationGranularity] = 0;
  *&v3[OBJC_IVAR___AARawEvent_samplingThreshold] = -1;
  v3[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v10 = v9;
  return objc_msgSendSuper2(&v13, sel_init);
}

id BridgedRawEvent.__allocating_init(name:sessionGroup:timestampGranularity:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___AARawEvent_name];
  *v12 = a1;
  v12[1] = a2;
  *&v11[OBJC_IVAR___AARawEvent_properties] = a5;
  *&v11[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  v11[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = 0;
  *&v11[OBJC_IVAR___AARawEvent_timestampGranularity] = a4;
  *&v11[OBJC_IVAR___AARawEvent_timeDurationGranularity] = 0;
  *&v11[OBJC_IVAR___AARawEvent_samplingThreshold] = -1;
  v11[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedRawEvent.init(name:sessionGroup:timestampGranularity:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR___AARawEvent_name];
  *v12 = a1;
  v12[1] = a2;
  *&v5[OBJC_IVAR___AARawEvent_properties] = a5;
  *&v5[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  v5[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = 0;
  *&v5[OBJC_IVAR___AARawEvent_timestampGranularity] = a4;
  *&v5[OBJC_IVAR___AARawEvent_timeDurationGranularity] = 0;
  *&v5[OBJC_IVAR___AARawEvent_samplingThreshold] = -1;
  v5[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedRawEvent.__allocating_init(name:sessionGroup:requiresDiagnosticsConsent:timestampGranularity:timeDurationGranularity:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR___AARawEvent_name];
  *v16 = a1;
  v16[1] = a2;
  *&v15[OBJC_IVAR___AARawEvent_properties] = a7;
  v15[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  *&v15[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v15[OBJC_IVAR___AARawEvent_timestampGranularity] = a5;
  *&v15[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a6;
  *&v15[OBJC_IVAR___AARawEvent_samplingThreshold] = -1;
  v15[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v18.receiver = v15;
  v18.super_class = v7;
  return objc_msgSendSuper2(&v18, sel_init);
}

id BridgedRawEvent.init(name:sessionGroup:requiresDiagnosticsConsent:timestampGranularity:timeDurationGranularity:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR___AARawEvent_name];
  *v16 = a1;
  v16[1] = a2;
  *&v7[OBJC_IVAR___AARawEvent_properties] = a7;
  v7[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  *&v7[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v7[OBJC_IVAR___AARawEvent_timestampGranularity] = a5;
  *&v7[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a6;
  *&v7[OBJC_IVAR___AARawEvent_samplingThreshold] = -1;
  v7[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v18.receiver = v7;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

id BridgedRawEvent.__allocating_init(name:sessionGroup:requiresDiagnosticsConsent:timestampGranularity:timeDurationGranularity:properties:samplingThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___AARawEvent_name];
  *v18 = a1;
  v18[1] = a2;
  *&v17[OBJC_IVAR___AARawEvent_properties] = a7;
  v17[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  *&v17[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v17[OBJC_IVAR___AARawEvent_timestampGranularity] = a5;
  *&v17[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a6;
  *&v17[OBJC_IVAR___AARawEvent_samplingThreshold] = a8;
  v17[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v20.receiver = v17;
  v20.super_class = v8;
  return objc_msgSendSuper2(&v20, sel_init);
}

id BridgedRawEvent.init(name:sessionGroup:requiresDiagnosticsConsent:timestampGranularity:timeDurationGranularity:properties:samplingThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v18 = &v8[OBJC_IVAR___AARawEvent_name];
  *v18 = a1;
  v18[1] = a2;
  *&v8[OBJC_IVAR___AARawEvent_properties] = a7;
  v8[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  *&v8[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v8[OBJC_IVAR___AARawEvent_timestampGranularity] = a5;
  *&v8[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a6;
  *&v8[OBJC_IVAR___AARawEvent_samplingThreshold] = a8;
  v8[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = 1;
  v20.receiver = v8;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

id BridgedRawEvent.__allocating_init(name:sessionGroup:requiresDiagnosticsConsent:requiresTrackingConsent:timestampGranularity:timeDurationGranularity:properties:samplingThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR___AARawEvent_name];
  *v19 = a1;
  v19[1] = a2;
  *&v18[OBJC_IVAR___AARawEvent_properties] = a8;
  v18[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  v18[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = a5;
  *&v18[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v18[OBJC_IVAR___AARawEvent_timestampGranularity] = a6;
  *&v18[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a7;
  *&v18[OBJC_IVAR___AARawEvent_samplingThreshold] = a9;
  v21.receiver = v18;
  v21.super_class = v9;
  return objc_msgSendSuper2(&v21, sel_init);
}

id BridgedRawEvent.init(name:sessionGroup:requiresDiagnosticsConsent:requiresTrackingConsent:timestampGranularity:timeDurationGranularity:properties:samplingThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ObjectType = swift_getObjectType();
  v19 = &v9[OBJC_IVAR___AARawEvent_name];
  *v19 = a1;
  v19[1] = a2;
  *&v9[OBJC_IVAR___AARawEvent_properties] = a8;
  v9[OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent] = a4;
  v9[OBJC_IVAR___AARawEvent_requiresTrackingConsent] = a5;
  *&v9[OBJC_IVAR___AARawEvent_sessionGroup] = a3;
  *&v9[OBJC_IVAR___AARawEvent_timestampGranularity] = a6;
  *&v9[OBJC_IVAR___AARawEvent_timeDurationGranularity] = a7;
  *&v9[OBJC_IVAR___AARawEvent_samplingThreshold] = a9;
  v21.receiver = v9;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

void sub_1B6A43710()
{
  v1 = *(v0 + OBJC_IVAR___AARawEvent_properties);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + OBJC_IVAR___AARawEvent_properties) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v21 = *(v0 + OBJC_IVAR___AARawEvent_properties);

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = *(v3 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      do
      {
LABEL_8:
        v12 = __clz(__rbit64(v7)) | (v9 << 6);
        v13 = (*(v21 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(v21 + 56) + 8 * v12);

        v17 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B69BDE7C(0, *(v10 + 2) + 1, 1, v10);
        }

        v19 = *(v10 + 2);
        v18 = *(v10 + 3);
        if (v19 >= v18 >> 1)
        {
          v10 = sub_1B69BDE7C((v18 > 1), v19 + 1, 1, v10);
        }

        v7 &= v7 - 1;
        *(v10 + 2) = v19 + 1;
        v20 = &v10[56 * v19];
        *(v20 + 4) = v15;
        *(v20 + 5) = v14;
        *(v20 + 6) = v17;
        *(v20 + 56) = v22;
        *(v20 + 9) = &type metadata for BridgedRawEventMirrorProperty;
        *(v20 + 10) = &off_1F2E75D08;
      }

      while (v7);
    }
  }

  __break(1u);
}

id BridgedRawEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedRawEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DataEventType.toDict(timestampGranularity:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = *a1;
  v5 = 0;
  v6 = 0;
  return (*(a3 + 56))(v4, a2);
}

uint64_t DataEventType.toDict(timestampConfiguration:)(_BYTE *a1, double a2, uint64_t a3, uint64_t a4)
{
  v5[0] = *a1;
  v6 = a2;
  v7 = 0;
  return (*(a4 + 56))(v5, a3);
}

uint64_t sub_1B6A43B04(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  sub_1B6A46A3C(a2);
  sub_1B6A46A3C(a2);

  sub_1B6A46A3C(a2);

  return a1;
}

uint64_t (**sub_1B6A43C94(int a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, double a6))()
{
  v38 = a2;
  v39 = a1;
  v47[4] = *MEMORY[0x1E69E9840];
  v40 = sub_1B6AB8850();
  v10 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B6AB9E10();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = a3;
  v44 = a4;
  v45 = a5;
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    __break(1u);
  }

  v20 = v38;
  v21 = v38 >> 8;
  (*(v17 + 32))(v19, v15, v16);
  v47[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v47[0]) = v20 & 1;
  BYTE1(v47[0]) = v21;
  v22 = sub_1B6AB8880();
  sub_1B69A4BDC(v47, v19);
  v22(v46, 0);
  v23 = swift_allocObject();
  *(v23 + 16) = v39;
  *(v23 + 24) = a6;
  *(v23 + 32) = v20 & 1;
  *(v23 + 33) = v21;
  *v12 = sub_1B69C084C;
  v12[1] = v23;
  (*(v10 + 104))(v12, *MEMORY[0x1E6967FB8], v40);
  sub_1B6AB8860();
  sub_1B6A2CA74();
  v24 = v41;
  v25 = sub_1B6AB8870();
  if (!v24)
  {
    v28 = v25;
    v29 = v26;
    v30 = objc_opt_self();
    v31 = sub_1B6AB8C60();
    v46[0] = 0;
    v12 = [v30 JSONObjectWithData:v31 options:0 error:v46];

    v32 = v46[0];
    if (v12)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v47, v46);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v12 = v42;
        v33 = sub_1B6AB91F0();
        v34 = [v30 isValidJSONObject_];

        if (v34)
        {
          __swift_destroy_boxed_opaque_existential_1(v47);
          sub_1B6993C94(v28, v29);

          return v12;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v37 = v12;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v36 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v47);
      return v12;
    }

    v35 = v32;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v28, v29);
  }

  return v12;
}

uint64_t (**sub_1B6A44190(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7))()
{
  v43 = a6;
  v39 = a2;
  v40 = a1;
  v50[4] = *MEMORY[0x1E69E9840];
  v41 = sub_1B6AB8850();
  v11 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B6AB9E10();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = v43;
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    __break(1u);
  }

  v21 = v39;
  v22 = v39 >> 8;
  (*(v18 + 32))(v20, v16, v17);
  v50[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v50[0]) = v21 & 1;
  BYTE1(v50[0]) = v22;
  v23 = sub_1B6AB8880();
  sub_1B69A4BDC(v50, v20);
  v23(v49, 0);
  v24 = swift_allocObject();
  *(v24 + 16) = v40;
  *(v24 + 24) = a7;
  *(v24 + 32) = v21 & 1;
  *(v24 + 33) = v22;
  *v13 = sub_1B69C084C;
  v13[1] = v24;
  (*(v11 + 104))(v13, *MEMORY[0x1E6967FB8], v41);
  sub_1B6AB8860();
  sub_1B6A2D99C();
  v25 = v42;
  v26 = sub_1B6AB8870();
  if (!v25)
  {
    v29 = v26;
    v30 = v27;
    v31 = objc_opt_self();
    v32 = sub_1B6AB8C60();
    v49[0] = 0;
    v13 = [v31 JSONObjectWithData:v32 options:0 error:v49];

    v33 = v49[0];
    if (v13)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v50, v49);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v13 = v44;
        v34 = sub_1B6AB91F0();
        v35 = [v31 isValidJSONObject_];

        if (v35)
        {
          __swift_destroy_boxed_opaque_existential_1(v50);
          sub_1B6993C94(v29, v30);

          return v13;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v38 = v13;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v37 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v29, v30);
      __swift_destroy_boxed_opaque_existential_1(v50);
      return v13;
    }

    v36 = v33;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v29, v30);
  }

  return v13;
}

uint64_t (**sub_1B6A44690(int a1, __int16 a2, double a3))()
{
  v35 = a1;
  v47[4] = *MEMORY[0x1E69E9840];
  v37 = sub_1B6AB8850();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1B6AB9E10();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v3[5];
  v44 = v3[4];
  v45[0] = v15;
  *(v45 + 9) = *(v3 + 89);
  v16 = v3[1];
  v40 = *v3;
  v17 = v3[2];
  v43 = v3[3];
  v41 = v16;
  v42 = v17;
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  (*(v12 + 32))(v14, v10, v11);
  v47[3] = &type metadata for TimeDurationGranularity;
  LOWORD(v47[0]) = a2 & 0xFF01;
  v18 = sub_1B6AB8880();
  sub_1B69A4BDC(v47, v14);
  v18(v46, 0);
  v19 = swift_allocObject();
  *(v19 + 16) = v35;
  *(v19 + 24) = a3;
  *(v19 + 32) = a2 & 1;
  *(v19 + 33) = HIBYTE(a2);
  *v7 = sub_1B69C084C;
  v7[1] = v19;
  (*(v36 + 104))(v7, *MEMORY[0x1E6967FB8], v37);
  sub_1B6AB8860();
  sub_1B6A318F8();
  v20 = v38;
  v21 = sub_1B6AB8870();
  if (!v20)
  {
    v24 = v21;
    v25 = v22;
    v26 = objc_opt_self();
    v27 = sub_1B6AB8C60();
    v46[0] = 0;
    v7 = [v26 JSONObjectWithData:v27 options:0 error:v46];

    v28 = v46[0];
    if (v7)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v47, v46);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v7 = v39;
        v29 = sub_1B6AB91F0();
        v30 = [v26 isValidJSONObject_];

        if (v30)
        {
          __swift_destroy_boxed_opaque_existential_1(v47);
          sub_1B6993C94(v24, v25);

          return v7;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v33 = v7;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v32 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v24, v25);
      __swift_destroy_boxed_opaque_existential_1(v47);
      return v7;
    }

    v31 = v28;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v24, v25);
  }

  return v7;
}

id sub_1B6A44BCC(int a1, unsigned int a2, double a3)
{
  v36 = a1;
  v41[4] = *MEMORY[0x1E69E9840];
  v37 = sub_1B6AB8850();
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1B6AB9E10();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  v15 = a2;
  v16 = a2 >> 8;
  (*(v12 + 32))(v14, v10, v11);
  v41[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v41[0]) = v15 & 1;
  BYTE1(v41[0]) = v16;
  v17 = sub_1B6AB8880();
  sub_1B69A4BDC(v41, v14);
  v17(v40, 0);
  v18 = swift_allocObject();
  *(v18 + 16) = v36;
  *(v18 + 24) = a3;
  *(v18 + 32) = v15 & 1;
  *(v18 + 33) = v16;
  *v7 = sub_1B69C084C;
  v7[1] = v18;
  v20 = *(v5 + 104);
  v19 = (v5 + 104);
  v20(v7, *MEMORY[0x1E6967FB8], v37);
  sub_1B6AB8860();
  type metadata accessor for SummaryEventData(0);
  sub_1B6A4717C(qword_1EDBC9208, type metadata accessor for SummaryEventData, &unk_1B6AC5B44);
  v21 = v38;
  v22 = sub_1B6AB8870();
  if (!v21)
  {
    v25 = v22;
    v26 = v23;
    v27 = objc_opt_self();
    v28 = sub_1B6AB8C60();
    v40[0] = 0;
    v19 = [v27 JSONObjectWithData:v28 options:0 error:v40];

    v29 = v40[0];
    if (v19)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v41, v40);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v19 = v39;
        v30 = sub_1B6AB91F0();
        v31 = [v27 isValidJSONObject_];

        if (v31)
        {
          __swift_destroy_boxed_opaque_existential_1(v41);
          sub_1B6993C94(v25, v26);

          return v19;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v34 = v19;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v33 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v25, v26);
      __swift_destroy_boxed_opaque_existential_1(v41);
      return v19;
    }

    v32 = v29;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v25, v26);
  }

  return v19;
}

char *sub_1B6A450F0(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, double a9)
{
  v49 = a8;
  v46 = a6;
  v47 = a7;
  v44 = a5;
  v43 = a1;
  v54[4] = *MEMORY[0x1E69E9840];
  v45 = sub_1B6AB8850();
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B6AB9E10();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3;
  v52 = a4;
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    __break(1u);
  }

  v22 = a2 >> 8;
  (*(v19 + 32))(v21, v17, v18);
  v54[3] = &type metadata for TimeDurationGranularity;
  v23 = a2 & 1;
  LOWORD(v54[0]) = a2 & 0xFF01;
  v24 = sub_1B6AB8880();
  sub_1B69A4BDC(v54, v21);
  v24(v53, 0);
  v25 = swift_allocObject();
  *(v25 + 16) = v43;
  *(v25 + 24) = a9;
  *(v25 + 32) = v23;
  *(v25 + 33) = v22;
  v26 = v45;
  *v14 = v46;
  v14[1] = v25;
  (*(v42 + 104))(v14, *MEMORY[0x1E6967FB8], v26);
  v27 = sub_1B6AB8860();
  v47(v27);
  v28 = v48;
  v29 = sub_1B6AB8870();
  if (!v28)
  {
    v32 = v29;
    v33 = v30;
    v34 = objc_opt_self();
    v35 = sub_1B6AB8C60();
    v53[0] = 0;
    v21 = [v34 JSONObjectWithData:v35 options:0 error:v53];

    v36 = v53[0];
    if (v21)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v54, v53);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v21 = v50;
        v37 = sub_1B6AB91F0();
        v38 = [v34 isValidJSONObject_];

        if (v38)
        {
          __swift_destroy_boxed_opaque_existential_1(v54);
          sub_1B6993C94(v32, v33);

          return v21;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v41 = v21;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v40 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v32, v33);
      __swift_destroy_boxed_opaque_existential_1(v54);
      return v21;
    }

    v39 = v36;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v32, v33);
  }

  return v21;
}

uint64_t (**sub_1B6A455DC(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6))()
{
  v38 = a2;
  v39 = a1;
  v47[4] = *MEMORY[0x1E69E9840];
  v40 = sub_1B6AB8850();
  v10 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B6AB9E10();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a3;
  v44 = a4;
  v45 = a5;
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    __break(1u);
  }

  v20 = v38;
  v21 = v38 >> 8;
  (*(v17 + 32))(v19, v15, v16);
  v47[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v47[0]) = v20 & 1;
  BYTE1(v47[0]) = v21;
  v22 = sub_1B6AB8880();
  sub_1B69A4BDC(v47, v19);
  v22(v46, 0);
  v23 = swift_allocObject();
  *(v23 + 16) = v39;
  *(v23 + 24) = a6;
  *(v23 + 32) = v20 & 1;
  *(v23 + 33) = v21;
  *v12 = sub_1B69C084C;
  v12[1] = v23;
  (*(v10 + 104))(v12, *MEMORY[0x1E6967FB8], v40);
  sub_1B6AB8860();
  sub_1B6A47128();
  v24 = v41;
  v25 = sub_1B6AB8870();
  if (!v24)
  {
    v28 = v25;
    v29 = v26;
    v30 = objc_opt_self();
    v31 = sub_1B6AB8C60();
    v46[0] = 0;
    v12 = [v30 JSONObjectWithData:v31 options:0 error:v46];

    v32 = v46[0];
    if (v12)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v47, v46);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v12 = v42;
        v33 = sub_1B6AB91F0();
        v34 = [v30 isValidJSONObject_];

        if (v34)
        {
          __swift_destroy_boxed_opaque_existential_1(v47);
          sub_1B6993C94(v28, v29);

          return v12;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v37 = v12;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v36 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v47);
      return v12;
    }

    v35 = v32;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v28, v29);
  }

  return v12;
}

id sub_1B6A45AD8(int a1, unsigned int a2, double a3)
{
  v36 = a1;
  v41[4] = *MEMORY[0x1E69E9840];
  v37 = sub_1B6AB8850();
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1B6AB9E10();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  v15 = a2;
  v16 = a2 >> 8;
  (*(v12 + 32))(v14, v10, v11);
  v41[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v41[0]) = v15 & 1;
  BYTE1(v41[0]) = v16;
  v17 = sub_1B6AB8880();
  sub_1B69A4BDC(v41, v14);
  v17(v40, 0);
  v18 = swift_allocObject();
  *(v18 + 16) = v36;
  *(v18 + 24) = a3;
  *(v18 + 32) = v15 & 1;
  *(v18 + 33) = v16;
  *v7 = sub_1B69C084C;
  v7[1] = v18;
  v20 = *(v5 + 104);
  v19 = (v5 + 104);
  v20(v7, *MEMORY[0x1E6967FB8], v37);
  sub_1B6AB8860();
  type metadata accessor for SummaryEventMetaData(0);
  sub_1B6A4717C(&qword_1EB95BA10, type metadata accessor for SummaryEventMetaData, &unk_1B6AC7CD8);
  v21 = v38;
  v22 = sub_1B6AB8870();
  if (!v21)
  {
    v25 = v22;
    v26 = v23;
    v27 = objc_opt_self();
    v28 = sub_1B6AB8C60();
    v40[0] = 0;
    v19 = [v27 JSONObjectWithData:v28 options:0 error:v40];

    v29 = v40[0];
    if (v19)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v41, v40);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v19 = v39;
        v30 = sub_1B6AB91F0();
        v31 = [v27 isValidJSONObject_];

        if (v31)
        {
          __swift_destroy_boxed_opaque_existential_1(v41);
          sub_1B6993C94(v25, v26);

          return v19;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v34 = v19;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v33 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v25, v26);
      __swift_destroy_boxed_opaque_existential_1(v41);
      return v19;
    }

    v32 = v29;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v25, v26);
  }

  return v19;
}

id sub_1B6A45FFC(int a1, unsigned int a2, double a3)
{
  v36 = a1;
  v41[4] = *MEMORY[0x1E69E9840];
  v37 = sub_1B6AB8850();
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1B6AB9E10();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  v15 = a2;
  v16 = a2 >> 8;
  (*(v12 + 32))(v14, v10, v11);
  v41[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v41[0]) = v15 & 1;
  BYTE1(v41[0]) = v16;
  v17 = sub_1B6AB8880();
  sub_1B69A4BDC(v41, v14);
  v17(v40, 0);
  v18 = swift_allocObject();
  *(v18 + 16) = v36;
  *(v18 + 24) = a3;
  *(v18 + 32) = v15 & 1;
  *(v18 + 33) = v16;
  *v7 = sub_1B69C084C;
  v7[1] = v18;
  v20 = *(v5 + 104);
  v19 = (v5 + 104);
  v20(v7, *MEMORY[0x1E6967FB8], v37);
  sub_1B6AB8860();
  type metadata accessor for TimedData(0);
  sub_1B6A4717C(&qword_1EDBCAAB8, type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
  v21 = v38;
  v22 = sub_1B6AB8870();
  if (!v21)
  {
    v25 = v22;
    v26 = v23;
    v27 = objc_opt_self();
    v28 = sub_1B6AB8C60();
    v40[0] = 0;
    v19 = [v27 JSONObjectWithData:v28 options:0 error:v40];

    v29 = v40[0];
    if (v19)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v41, v40);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v19 = v39;
        v30 = sub_1B6AB91F0();
        v31 = [v27 isValidJSONObject_];

        if (v31)
        {
          __swift_destroy_boxed_opaque_existential_1(v41);
          sub_1B6993C94(v25, v26);

          return v19;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v34 = v19;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v33 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v25, v26);
      __swift_destroy_boxed_opaque_existential_1(v41);
      return v19;
    }

    v32 = v29;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v25, v26);
  }

  return v19;
}

int *sub_1B6A4698C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  result = type metadata accessor for PushEvent(0, a6, a7, v15);
  v17 = (a8 + result[9]);
  *v17 = a2;
  v17[1] = a3;
  *(a8 + result[10]) = a4;
  *(a8 + result[11]) = a5;
  return result;
}

uint64_t sub_1B6A46A3C(uint64_t a1)
{
  type metadata accessor for BridgedRawDataEvent();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR___AARawDataEvent_name);
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [ObjCClassFromMetadata dataName];
    v2 = sub_1B6AB92E0();

    if ([ObjCClassFromMetadata respondsToSelector_])
    {
      [ObjCClassFromMetadata requiresDiagnosticsConsent];
    }

    if ([ObjCClassFromMetadata respondsToSelector_])
    {
      [ObjCClassFromMetadata requiresTrackingConsent];
    }
  }

  return v2;
}

void *sub_1B6A46C68(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = 0;
  v6 = 0;
  return sub_1B6AB0048(&v4, v2);
}

void *sub_1B6A46CA0(char *a1, double a2)
{
  v3 = *v2;
  v5 = *a1;
  v6 = a2;
  v7 = 0;
  return sub_1B6AB0048(&v5, v3);
}

uint64_t sub_1B6A46DE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v8), !*(a1 + v8)))
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1B6A46F40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          v18[1] = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t sub_1B6A47128()
{
  result = qword_1EB95BA08;
  if (!qword_1EB95BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95BA08);
  }

  return result;
}

uint64_t sub_1B6A4717C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id BridgedLegacyStoredUserIDComponents.__allocating_init(userID:rotationPeriod:startDate:lastRotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v25 = a1;
  v26 = a2;
  v7 = type metadata accessor for LegacyStoredUserIDComponents(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = objc_allocWithZone(v4);
  v24 = sub_1B6AB8E40();
  v11 = *(v24 - 8);
  (*(v11 + 16))(v10, a1, v24);
  v12 = v8[8];
  v13 = sub_1B6AB8DB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = v23;
  v15(&v10[v12], v23, v13);
  v15(&v10[v8[9]], a4, v13);
  *&v10[v8[7]] = v26;
  v17 = v22;
  v18 = objc_allocWithZone(v22);
  sub_1B6A47A08(v10, v18 + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents);
  v28.receiver = v18;
  v28.super_class = v17;
  v19 = objc_msgSendSuper2(&v28, sel_init);
  v20 = *(v14 + 8);
  v20(a4, v13);
  v20(v16, v13);
  (*(v11 + 8))(v25, v24);
  sub_1B6A47A6C(v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v19;
}

id BridgedLegacyStoredUserIDComponents.init(userID:rotationPeriod:startDate:lastRotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v21 = a3;
  v24 = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for LegacyStoredUserIDComponents(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B6AB8E40();
  v10 = *(v23 - 8);
  (*(v10 + 16))(v9, a1, v23);
  v11 = v7[8];
  v12 = sub_1B6AB8DB0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v15 = v21;
  v14(&v9[v11], v21, v12);
  v14(&v9[v7[9]], a4, v12);
  *&v9[v7[7]] = v25;
  v16 = ObjectType;
  v17 = objc_allocWithZone(ObjectType);
  sub_1B6A47A08(v9, v17 + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents);
  v26.receiver = v17;
  v26.super_class = v16;
  v18 = objc_msgSendSuper2(&v26, sel_init);
  v19 = *(v13 + 8);
  v19(a4, v12);
  v19(v15, v12);
  (*(v10 + 8))(v24, v23);
  sub_1B6A47A6C(v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v18;
}

uint64_t sub_1B6A47A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyStoredUserIDComponents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A47A6C(uint64_t a1)
{
  v2 = type metadata accessor for LegacyStoredUserIDComponents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id BridgedLegacyStoredUserIDComponents.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedLegacyStoredUserIDComponents.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BridgedLegacyStoredUserIDComponents(uint64_t a1)
{
  result = qword_1EB95BA18;
  if (!qword_1EB95BA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A47F18(uint64_t a1)
{
  result = type metadata accessor for LegacyStoredUserIDComponents(319);
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

uint64_t Endpoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AAEndpoint_url;
  v4 = sub_1B6AB8BB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Endpoint.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEndpoint_name);

  return v1;
}

uint64_t Endpoint.sharedContainerIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAEndpoint_sharedContainerIdentifier);

  return v1;
}

id Endpoint.__allocating_init(url:name:sharedContainerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR___AAEndpoint_url;
  v13 = sub_1B6AB8BB0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a1, v13);
  v15 = &v11[OBJC_IVAR___AAEndpoint_name];
  *v15 = a2;
  *(v15 + 1) = a3;
  v16 = &v11[OBJC_IVAR___AAEndpoint_sharedContainerIdentifier];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v14 + 8))(a1, v13);
  return v17;
}

id Endpoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Endpoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *ResourceType.toData()(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = (*(a2 + 32))(a1);
  if (!v3)
  {
    v2 = v4;
    v5 = objc_opt_self();
    v6 = MEMORY[0x1E69E6158];
    v7 = sub_1B6AB91F0();
    v8 = [v5 isValidJSONObject_];

    if (v8)
    {
      v9 = sub_1B6AB91F0();

      v20[0] = 0;
      v10 = [v5 dataWithJSONObject:v9 options:0 error:v20];

      v11 = v20[0];
      if (v10)
      {
        v2 = sub_1B6AB8C80();

        return v2;
      }

      v2 = v11;
      sub_1B6AB8A70();
    }

    else
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v12 = qword_1EDBCCB28;
      v13 = sub_1B6AB98F0();
      sub_1B69990B4(0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1B6ABD890;
      v15 = sub_1B6AB9220();
      v17 = v16;
      *(v14 + 56) = v6;
      *(v14 + 64) = sub_1B698CEC0();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      sub_1B6AB8F70("Resource failed to convert to JSON object, %@", 45, 2, &dword_1B697C000, v12, v13, v14);

      sub_1B6A2A954();
      swift_allocError();
      *v18 = v2;
      *(v18 + 8) = 0;
    }

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1B6A48950(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B6A48998(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t UploadBatchQueueKey.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  return sub_1B6AB9380();
}

uint64_t UploadBatchQueueKey.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1B6ABA1F0();
  if (v1)
  {
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B6A48B30()
{
  v1 = *(v0 + 32);
  sub_1B6ABA1F0();
  if (v1)
  {
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B6A48BD0(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  return sub_1B6AB9380();
}

uint64_t sub_1B6A48C64()
{
  v1 = *(v0 + 32);
  sub_1B6ABA1F0();
  if (v1)
  {
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t _s12AppAnalytics19UploadBatchQueueKeyO2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
    {
      v12 = v3 == v8 && v2 == v7;
      if (v12 || (sub_1B6ABA0F0() & 1) != 0)
      {
        if (v5 != v10 || v4 != v9)
        {
          v14 = sub_1B6ABA0F0();
          sub_1B69E0EBC(v8, v7, v10, v9, 1);
          sub_1B69E0EBC(v3, v2, v5, v4, 1);
          sub_1B69B47D4(v3, v2, v5, v4, 1);
          v15 = v8;
          v16 = v7;
          v17 = v10;
          v18 = v9;
          v19 = 1;
LABEL_21:
          sub_1B69B47D4(v15, v16, v17, v18, v19);
          return v14 & 1;
        }

        sub_1B69E0EBC(v8, v7, v5, v4, 1);
        sub_1B69E0EBC(v3, v2, v5, v4, 1);
        sub_1B69B47D4(v3, v2, v5, v4, 1);
        v28 = v8;
        v29 = v7;
        v30 = v5;
        v31 = v4;
        v32 = 1;
        goto LABEL_24;
      }

      sub_1B69E0EBC(v8, v7, v10, v9, 1);
      sub_1B69E0EBC(v3, v2, v5, v4, 1);
      sub_1B69B47D4(v3, v2, v5, v4, 1);
      v20 = v8;
      v21 = v7;
      v22 = v10;
      v23 = v9;
      v24 = 1;
LABEL_15:
      sub_1B69B47D4(v20, v21, v22, v23, v24);
      return 0;
    }

LABEL_14:
    sub_1B69E0EBC(*a2, *(a2 + 8), v10, v9, v11);
    sub_1B69E0EBC(v3, v2, v5, v4, v6);
    sub_1B69B47D4(v3, v2, v5, v4, v6);
    v20 = v8;
    v21 = v7;
    v22 = v10;
    v23 = v9;
    v24 = v11;
    goto LABEL_15;
  }

  if (*(a2 + 32))
  {
    goto LABEL_14;
  }

  v26 = *a1;
  if (v3 != v8 || v2 != v7)
  {
    v14 = sub_1B6ABA0F0();
    sub_1B69E0EBC(v8, v7, v10, v9, 0);
    sub_1B69E0EBC(v3, v2, v5, v4, 0);
    sub_1B69B47D4(v3, v2, v5, v4, 0);
    v15 = v8;
    v16 = v7;
    v17 = v10;
    v18 = v9;
    v19 = 0;
    goto LABEL_21;
  }

  sub_1B69E0EBC(v26, v2, v10, v9, 0);
  sub_1B69E0EBC(v3, v2, v5, v4, 0);
  sub_1B69B47D4(v3, v2, v5, v4, 0);
  v28 = v3;
  v29 = v2;
  v30 = v10;
  v31 = v9;
  v32 = 0;
LABEL_24:
  sub_1B69B47D4(v28, v29, v30, v31, v32);
  return 1;
}

unint64_t sub_1B6A4902C()
{
  result = qword_1EDBCB248[0];
  if (!qword_1EDBCB248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBCB248);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B6A490A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B6A490E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B6A49150(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 88);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = v5;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;

  sub_1B69877A4(v11, sub_1B6A5746C, v12);
}

char *Tracker.path.getter()
{

  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = v0[3];
    if (v4)
    {
      v5 = v0[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1B69B5A00(0, *(v1 + 2) + 1, 1, v1);
      }

      v7 = *(v1 + 2);
      v6 = *(v1 + 3);
      if (v7 >= v6 >> 1)
      {
        v1 = sub_1B69B5A00((v6 > 1), v7 + 1, 1, v1);
      }

      *(v1 + 2) = v7 + 1;
      v2 = &v1[16 * v7];
      *(v2 + 4) = v5;
      *(v2 + 5) = v4;
    }

    v3 = v0[19];

    v0 = v3;
  }

  while (v3);

  return sub_1B69B919C(v1);
}

char *Tracker.debugPath.getter()
{
  v6 = MEMORY[0x1E69E7CC0];

  while (1)
  {

    v2 = sub_1B6A50610(v1, &v6);

    v3 = *(v0 + 152);

    if (!v3)
    {
      break;
    }

    v0 = v3;
    if ((v2 & 1) == 0)
    {

      break;
    }
  }

  v4 = v6;

  return sub_1B69B919C(v4);
}

uint64_t Tracker.removeSessionObservers(forObject:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + 48);
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1B69877A4(v3, sub_1B6A3F974, v5);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Tracker.dynamicTransaction(identifier:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 88);
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;

  sub_1B69877A4(v9, sub_1B6A56098, v10);
}

Swift::Void __swiftcall Tracker.enterGroup(groupName:)(Swift::String groupName)
{
  v2 = v1;
  object = groupName._object;
  countAndFlagsBits = groupName._countAndFlagsBits;
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  sub_1B6AB8DA0();
  v12 = v1 + 88;
  v11 = *(v1 + 88);
  v18 = *(v12 + 8);
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = countAndFlagsBits;
  *(v15 + 2) = v2;
  *(v15 + 3) = v16;
  *(v15 + 4) = object;
  (*(v5 + 32))(&v15[v13], v8, v4);
  v17 = &v15[v14];
  *v17 = 0;
  v17[8] = 1;

  sub_1B69877A4(v11, sub_1B6A560D0, v15);

  (*(v5 + 8))(v10, v4);
}

uint64_t Tracker.enterGroup(groupName:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v25 = a4;
  v23 = a1;
  v24 = a3;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  sub_1B6AB8DA0();
  v15 = v4 + 88;
  v14 = *(v4 + 88);
  v22 = *(v15 + 8);
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 2) = v5;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  (*(v8 + 32))(&v18[v16], v11, v7);
  v20 = &v18[v17];
  *v20 = v24;
  v20[8] = v25 & 1;

  sub_1B69877A4(v14, sub_1B6A579F8, v18);

  return (*(v8 + 8))(v13, v7);
}

Swift::Void __swiftcall Tracker.leaveGroup(groupName:)(Swift::String_optional groupName)
{
  object = groupName.value._object;
  countAndFlagsBits = groupName.value._countAndFlagsBits;
  v4 = *(v1 + 88);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = countAndFlagsBits;
  v5[4] = object;

  sub_1B69877A4(v4, sub_1B6A56170, v5);
}

uint64_t sub_1B6A499E0(void (*a1)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a1(*(result + 56));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Tracker.identifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1B6A49A78()
{
  sub_1B6A5664C();
}

uint64_t sub_1B6A49AF0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v44 = a5;
  v46 = a3;
  v47 = a4;
  v43 = sub_1B6AB8DB0();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for SessionObserverChange(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B6AB90F0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(*(a2 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  LOBYTE(v20) = sub_1B6AB9110();
  result = (*(v17 + 8))(v19, v16);
  if (v20)
  {
    sub_1B699A32C(a1, v15, type metadata accessor for SessionObserverChange);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result == 2)
      {
        return sub_1B6984D38(v15, type metadata accessor for SessionObserverChange);
      }
    }

    else if (result)
    {
      sub_1B6984D38(v15, type metadata accessor for SessionObserverChange);
      v34 = v46;
      v33 = v47;
      sub_1B6992B50(v46, v47);
      sub_1B6AB8DA0();
      memset(v48, 0, sizeof(v48));
      v35 = *(a2 + 88);
      v36 = v44;
      v37 = v45;
      v49[2] = v44;
      restarted = v45;
      v51 = a2;
      v52 = v34;
      v53 = v33;
      v54 = 1;
      v55 = v9;
      v56 = 0;
      v57 = 0;
      v58 = v48;
      v59 = 0;
      v60 = 0;
      sub_1B6995F94(v35, sub_1B69AC4E4, v49, OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider);
      sub_1B69840C4(v48, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
      (*(v42 + 8))(v9, v43);
      v38 = sub_1B69A09A4(v34, v33, v36);
      v40 = v39;
      restarted = type metadata accessor for Tracker.RestartTimer(0, v36, v37, v41);
      v51 = &off_1F2E7AA40;
      v49[0] = v34;
      v49[1] = v33;
      swift_beginAccess();
      sub_1B69E1EC8(v49, v38, v40);
      return swift_endAccess();
    }

    else
    {
      sub_1B6984D38(v15, type metadata accessor for SessionObserverChange);
      v24 = v46;
      v23 = v47;
      v25 = v44;
      v26 = v45;
      v27 = sub_1B69A09A4(v46, v47, v44);
      v29 = v28;
      swift_beginAccess();
      sub_1B6A96FA4(v27, v29, v12);
      sub_1B6A5718C(v12, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
      swift_endAccess();

      v30 = sub_1B69A09A4(v24, v23, v25);
      v32 = v31;
      swift_beginAccess();
      sub_1B6A96E90(v30, v32, v49);
      sub_1B6A23F44(v49, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType);
      swift_endAccess();

      sub_1B6AB8DA0();
      sub_1B69A0AA0(v24, v23, v9, 1, v25, v26);
      return (*(v42 + 8))(v9, v43);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A4A09C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(v11 + 88);
  v14[2] = a10;
  v14[3] = a11;
  v14[5] = a1;
  v14[6] = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  return sub_1B6995F94(v12, sub_1B69AC4E4, v14, v12);
}

uint64_t sub_1B6A4A130(char *a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v60 = type metadata accessor for Tracker.DelayedEvent(0);
  v58 = *(v60 - 8);
  v4 = MEMORY[0x1EEE9AC00](v60);
  v63 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = v51 - v6;
  v7 = sub_1B6AB8E40();
  v59 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, &qword_1EB95BAD0, sub_1B6A577D8, MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v51 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        *(result + 200) = 1;
        v18 = result;
        swift_beginAccess();
        v51[0] = v18;
        v19 = *(v18 + 144);
        a2 = v19 + 64;
        v20 = 1 << *(v19 + 32);
        v21 = -1;
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        v22 = v21 & *(v19 + 64);
        v23 = (v20 + 63) >> 6;
        v51[2] = v59 + 16;
        v51[1] = v59 + 32;
        v54 = (v59 + 8);
        v52 = v19;

        v24 = 0;
        v53 = xmmword_1B6ABD890;
        v61 = v14;
        v62 = v12;
        v55 = v7;
        while (v22)
        {
          v25 = v24;
LABEL_21:
          v28 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v29 = v28 | (v25 << 6);
          v30 = v52;
          v31 = v59;
          v32 = v56;
          (*(v59 + 16))(v56, *(v52 + 48) + *(v59 + 72) * v29, v7);
          v33 = v57;
          sub_1B699A32C(*(v30 + 56) + *(v58 + 72) * v29, v57, type metadata accessor for Tracker.DelayedEvent);
          sub_1B6A577D8(0);
          v35 = v34;
          v36 = *(v34 + 48);
          v37 = *(v31 + 32);
          v12 = v62;
          v37(v62, v32, v7);
          sub_1B6A57770(v33, &v12[v36], type metadata accessor for Tracker.DelayedEvent);
          (*(*(v35 - 8) + 56))(v12, 0, 1, v35);
          v14 = v61;
LABEL_22:
          sub_1B6A5784C(v12, v14, &qword_1EB95BAD0, sub_1B6A577D8, MEMORY[0x1E69E6720]);
          sub_1B6A577D8(0);
          if ((*(*(v35 - 8) + 48))(v14, 1, v35) == 1)
          {

            v49 = v51[0];
            v50 = MEMORY[0x1E69E7CC8];
            *(v51[0] + 144) = MEMORY[0x1E69E7CC8];

            swift_beginAccess();
            *(v49 + 160) = v50;
          }

          sub_1B6A57770(&v14[*(v35 + 48)], v63, type metadata accessor for Tracker.DelayedEvent);
          if (qword_1EDBCCEE0 != -1)
          {
            swift_once();
          }

          v38 = qword_1EDBCCB28;
          sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v39 = swift_allocObject();
          *(v39 + 16) = v53;
          v40 = v60;
          v41 = v63;
          v42 = (v63 + *(v60 + 20));
          v43 = *v42;
          v44 = v42[1];
          *(v39 + 56) = MEMORY[0x1E69E6158];
          *(v39 + 64) = sub_1B698CEC0();
          *(v39 + 32) = v43;
          *(v39 + 40) = v44;

          v45 = sub_1B6AB9900();
          sub_1B6AB8F70("Submitting pending delayed event %{public}@ on session end", 58, 2, &dword_1B697C000, v38, v45, v39);

          v47 = *(v41 + *(v40 + 24));
          if ((*(v47 + OBJC_IVAR___AADelayedToken_sealed) & 1) == 0)
          {
            *(v47 + OBJC_IVAR___AADelayedToken_sealed) = 1;
            (*(v47 + OBJC_IVAR___AADelayedToken_block))(v46);
          }

          sub_1B6984D38(v63, type metadata accessor for Tracker.DelayedEvent);
          v7 = v55;
          v14 = v61;
          (*v54)(v61, v55);
          v12 = v62;
        }

        if (v23 <= v24 + 1)
        {
          v26 = v24 + 1;
        }

        else
        {
          v26 = v23;
        }

        v27 = v26 - 1;
        while (1)
        {
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v25 >= v23)
          {
            sub_1B6A577D8(0);
            v35 = v48;
            (*(*(v48 - 8) + 56))(v12, 1, 1, v48);
            v22 = 0;
            v24 = v27;
            goto LABEL_22;
          }

          v22 = *(a2 + 8 * v25);
          ++v24;
          if (v22)
          {
            v24 = v25;
            goto LABEL_21;
          }
        }

        __break(1u);
      }

      else if (a2 == 3)
      {
        *(result + 200) = 0;
      }
    }

    else
    {
      if (!a2)
      {
      }

      if (a2 == 1)
      {
        v16 = *(result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager + 24);
        v17 = *(result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager + 32);
        __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager), v16);
        (*(v17 + 16))(v62, v16, v17);
      }
    }

    v64 = a2;
    result = sub_1B6ABA160();
    __break(1u);
  }

  return result;
}

uint64_t Tracker.deinit()
{

  sub_1B6988008(v0 + 72);

  swift_unknownObjectRelease();
  sub_1B6984D38(v0 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager));

  v1 = *(v0 + 152);
  *(v0 + 152) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 152);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t Tracker.__deallocating_deinit()
{
  Tracker.deinit();

  return swift_deallocClassInstance();
}

uint64_t Tracker.onWillSubmit<A>(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 192);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 192) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1B69E4350(0, *(v7 + 2) + 1, 1, v7);
    *(v3 + 192) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1B69E4350((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v11 + 6) = a3;
  *(v3 + 192) = v7;
  swift_endAccess();
}

uint64_t Tracker.explicitTime<A>(_:startTime:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 104);

  sub_1B69B61BC(a1, v9, 0, a2, a3, a4);
}

uint64_t Tracker.submit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v8 = *(v3 + 88);
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = sub_1B6A56668;
  v9[4] = v7;

  sub_1B69877A4(v8, sub_1B6A40320, v9);
}

uint64_t AccessTracker.submit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager + 24);
    v9 = *(result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager + 32);
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager), v8);
    (*(v9 + 8))(a1, v3, a2, a3, v8, v9);
  }

  return result;
}

uint64_t Tracker.explicitSubmit<A>(_:submitTime:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 104);
  memset(v15, 0, sizeof(v15));

  sub_1B6989D00(a1, v13, 0, a2, v15, a3, a4, a5, a6);

  return sub_1B69840C4(v15, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
}

uint64_t sub_1B6A4AE50(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a6;
  v14 = type metadata accessor for EventSubmitResult(0, a7, a8, a4);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v22 - v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + 104);
    memset(v24, 0, sizeof(v24));

    sub_1B6989D00(a4, v19, a5 & 1, v23, v24, a2, a3, a7, a8);

    return sub_1B69840C4(v24, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
  }

  else if (a2)
  {
    sub_1B6A16B30();
    v20 = swift_allocError();
    *v21 = xmmword_1B6AC0310;
    *v17 = v20;
    swift_storeEnumTagMultiPayload();
    a2(v17);
    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

id sub_1B6A4B02C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v27 = a7;
  v28 = a5;
  v29 = a1;
  v30 = a6;
  v31 = a2;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  sub_1B6AB8DA0();
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v14, v16, v10);
  v18 = (*(v11 + 80) + 65) & ~*(v11 + 80);
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 16) = v28;
  *(v19 + 24) = v21;
  *(v19 + 32) = v17;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  *(v19 + 56) = v20;
  *(v19 + 64) = v31;
  (*(v11 + 32))(v19 + v18, v14, v10);
  v22 = type metadata accessor for DelayedToken();
  v23 = objc_allocWithZone(v22);
  v23[OBJC_IVAR___AADelayedToken_sealed] = 0;
  v24 = &v23[OBJC_IVAR___AADelayedToken_block];
  *v24 = v32;
  v24[1] = v19;

  sub_1B698BF94(a3);
  v33.receiver = v23;
  v33.super_class = v22;
  v25 = objc_msgSendSuper2(&v33, sel_init, v27);
  (*(v11 + 8))(v16, v10);

  return v25;
}

uint64_t sub_1B6A4B24C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a6;
  v14 = type metadata accessor for EventSubmitResult(0, a7, a8, a4);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v24 - v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    sub_1B6992534(a4, result, a7, a8);
    v20 = *(v19 + 104);
    memset(v26, 0, sizeof(v26));

    v21 = *(v19 + 88);
    v28 = a7;
    v29 = a8;
    v30 = v19;
    v31 = a4;
    v32 = v20;
    v33 = a5 & 1;
    v34 = v25;
    v35 = 0;
    v36 = 0;
    v37 = v26;
    v38 = a2;
    v39 = a3;
    sub_1B6995F94(v21, sub_1B69AC4E4, v27, OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider);

    return sub_1B69840C4(v26, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
  }

  else if (a2)
  {
    sub_1B6A16B30();
    v22 = swift_allocError();
    *v23 = xmmword_1B6AC0310;
    *v17 = v22;
    swift_storeEnumTagMultiPayload();
    a2(v17);
    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

void Tracker.delayedSubmit<A>(_:onlyIfTimed:awaiting:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a3;
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v7 + 200) == 1)
  {
    v26 = a4;
    v18 = *(*(v7 + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v17 = v18;
    (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
    v19 = v18;
    LOBYTE(v18) = sub_1B6AB9110();
    (*(v15 + 8))(v17, v14);
    if (v18)
    {
      v20 = sub_1B6A4B02C(a1, a2 & 1, v26, a5, a6, a7, &unk_1F2E7A818, sub_1B6A575C0);
      if (v20[OBJC_IVAR___AADelayedToken_sealed] == 1)
      {
      }

      else
      {
        v20[OBJC_IVAR___AADelayedToken_sealed] = 1;
        v24 = v20;
        (*&v20[OBJC_IVAR___AADelayedToken_block])();
      }

      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  v17 = swift_allocObject();
  *(v17 + 2) = a6;
  *(v17 + 3) = a7;
  v21 = v26;
  *(v17 + 4) = v7;
  *(v17 + 5) = v21;
  *(v17 + 6) = a1;
  v17[56] = a2 & 1;
  *(v17 + 8) = a4;
  *(v17 + 9) = a5;

  sub_1B698BF94(a4);
  if (qword_1EDBCAA18 != -1)
  {
LABEL_11:
    swift_once();
  }

  v22 = qword_1EDBCFD78;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B6A566B0;
  *(v23 + 24) = v17;

  sub_1B69877A4(v22, sub_1B69B6F90, v23);
}

uint64_t sub_1B6A4B76C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, unint64_t a7, uint64_t a8)
{
  v89 = a4;
  v88 = a3;
  sub_1B6A56C3C(0, &qword_1EB95AE30, type metadata accessor for Tracker.DelayedEvent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v81 = &v72 - v15;
  v78 = sub_1B6AB8E40();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Tracker.DelayedEvent(0);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1B6AB8DB0();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B6AB90F0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = a1;
  v23 = *(*(a1 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v22 = v23;
  (*(v20 + 104))(v22, *MEMORY[0x1E69E8020], v19);
  v24 = v23;
  LOBYTE(v23) = sub_1B6AB9110();
  (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v86 = a8;
    v87 = a5;
    v25 = *(a2 + 16);
    if (v25)
    {
      *&v93 = MEMORY[0x1E69E7CC0];
      sub_1B6994474(0, v25, 0);
      v26 = v93;
      v27 = a2 + 32;
      do
      {
        v28 = sub_1B6ABA330();
        *&v93 = v26;
        v31 = *(v26 + 16);
        v30 = *(v26 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          v34 = a7;
          v35 = v28;
          a5 = v29;
          sub_1B6994474((v30 > 1), v31 + 1, 1);
          v29 = a5;
          v28 = v35;
          a7 = v34;
          v26 = v93;
        }

        *(v26 + 16) = v32;
        v33 = v26 + 16 * v31;
        *(v33 + 32) = v28;
        *(v33 + 40) = v29;
        v27 += 16;
        --v25;
      }

      while (v25);
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
      v32 = *(MEMORY[0x1E69E7CC0] + 16);
      a5 = MEMORY[0x1E69E7CC0];
      if (!v32)
      {
LABEL_21:

        if (qword_1EDBCAA70 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    v84 = a7;
    v85 = a6;
    v36 = 0;
    v37 = v26 + 40;
    v82 = v32 - 1;
    v90 = MEMORY[0x1E69E7CC0];
    v83 = v26 + 40;
LABEL_10:
    a6 = (v37 + 16 * v36);
    a7 = v36;
    while (a7 < *(v26 + 16))
    {
      v38 = *(a6 - 1);
      a5 = *a6;
      v36 = a7 + 1;

      sub_1B69BEDE8(v38, a5, 0, 0, 1, &v93);
      if (!v95)
      {
        sub_1B6A23F44(&v93, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
        v39 = v90;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v92[0] = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B6994474(0, *(v39 + 16) + 1, 1);
          v39 = *&v92[0];
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        v43 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          v90 = v42 + 1;
          sub_1B6994474((v41 > 1), v42 + 1, 1);
          v43 = v90;
          v39 = *&v92[0];
        }

        *(v39 + 16) = v43;
        v90 = v39;
        v44 = v39 + 16 * v42;
        *(v44 + 32) = v38;
        *(v44 + 40) = a5;
        v37 = v83;
        if (v82 == a7)
        {
LABEL_20:
          a6 = v85;
          a7 = v84;
          a5 = v90;
          goto LABEL_21;
        }

        goto LABEL_10;
      }

      sub_1B6A23F44(&v93, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
      a6 += 2;
      ++a7;
      if (v32 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_22:
  v45 = sub_1B6AB8F90();
  __swift_project_value_buffer(v45, qword_1EDBCFD80);

  v46 = sub_1B6AB8F80();
  v47 = sub_1B6AB98C0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v93 = v49;
    *v48 = 136315394;
    v50 = sub_1B6ABA330();
    v52 = sub_1B698F63C(v50, v51, &v93);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    *&v92[0] = a5;
    sub_1B6980AE0(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1B699918C();
    v53 = sub_1B6AB9290();
    v55 = sub_1B698F63C(v53, v54, &v93);

    *(v48 + 14) = v55;
    _os_log_impl(&dword_1B697C000, v46, v47, "Delaying submission of %s due to unmet dependencies: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C99550](v49, -1, -1);
    MEMORY[0x1B8C99550](v48, -1, -1);
  }

  v56 = v87;
  v57 = v86;
  if (*(a5 + 16))
  {
    v58 = sub_1B6A4B02C(v88, v89 & 1, v87, a6, a7, v86, &unk_1F2E7A818, sub_1B6A575C0);
    v59 = sub_1B6ABA330();
    v61 = v60;

    v62 = v79;
    sub_1B6AB8E30();
    v63 = v76;
    v64 = (v62 + *(v76 + 20));
    *v64 = v59;
    v64[1] = v61;
    *(v62 + *(v63 + 24)) = v58;
    *(v62 + *(v63 + 28)) = a5;
    v65 = v80;
    (*(v77 + 16))(v80, v62, v78);
    v66 = v81;
    sub_1B699A32C(v62, v81, type metadata accessor for Tracker.DelayedEvent);
    (*(v75 + 56))(v66, 0, 1, v63);
    swift_beginAccess();
    sub_1B69E200C(v66, v65);
    swift_endAccess();
    sub_1B6A4C148(a5);

    return sub_1B6984D38(v62, type metadata accessor for Tracker.DelayedEvent);
  }

  else
  {

    v68 = v91;
    v69 = *(v91 + 104);

    v70 = v72;
    sub_1B6AB8DA0();
    memset(v92, 0, sizeof(v92));
    v71 = *(v68 + 88);
    v94 = a7;
    v95 = v57;
    v96 = v68;
    v97 = v88;
    v98 = v69;
    v99 = v89 & 1;
    v100 = v70;
    v101 = 0;
    v102 = 0;
    v103 = v92;
    v104 = v56;
    v105 = a6;
    sub_1B6995F94(v71, sub_1B69AC4E4, &v93, OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider);

    sub_1B69840C4(v92, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
    return (*(v73 + 8))(v70, v74);
  }
}

uint64_t sub_1B6A4C148(uint64_t a1)
{
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v1;
  v7 = *(v1[11] + OBJC_IVAR___AAAccessQueue_queue);
  *v6 = v7;
  v8 = *(v4 + 104);
  v54 = *MEMORY[0x1E69E8020];
  v52 = v8;
  v53 = v4 + 104;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = sub_1B6AB9110();
  v10 = *(v4 + 8);
  v55 = v4 + 8;
  v56 = v3;
  v51 = v10;
  result = (v10)(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_32;
  }

  v47 = *(a1 + 16);
  if (v47)
  {
    v12 = 0;
    v48 = v50[19];
    v46 = a1 + 32;
    while (1)
    {
      v49 = v12;
      v13 = (v46 + 16 * v12);
      v15 = *v13;
      v14 = v13[1];

      sub_1B6A4C660(v15, v14, v50);
      if ()
      {
        break;
      }

LABEL_4:
      v12 = v49 + 1;

      if (v12 == v47)
      {
        return result;
      }
    }

    v16 = v48;
    while (1)
    {
      v18 = *(v16[11] + OBJC_IVAR___AAAccessQueue_queue);
      *v6 = v18;
      v19 = v56;
      v52(v6, v54, v56);

      v20 = v18;
      LOBYTE(v18) = sub_1B6AB9110();
      v51(v6, v19);
      if ((v18 & 1) == 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }

      swift_beginAccess();
      if (!v16[20][2])
      {
        break;
      }

      sub_1B6993940(v15, v14);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        break;
      }

LABEL_23:
      v38 = sub_1B6A49AA0(v59);
      v40 = sub_1B6A4C990(v58, v15, v14);
      if (*v39)
      {
        v41 = v39;
        swift_weakInit();
        v42 = *v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v41 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_1B69E3FFC(0, v42[2] + 1, 1, v42);
          *v41 = v42;
        }

        v45 = v42[2];
        v44 = v42[3];
        if (v45 >= v44 >> 1)
        {
          v42 = sub_1B69E3FFC((v44 > 1), v45 + 1, 1, v42);
          *v41 = v42;
        }

        v42[2] = v45 + 1;
        sub_1B6A5784C(v57, &v42[v45 + 4], &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak);
      }

      (v40)(v58, 0);
      (v38)(v59, 0);

      v17 = v16[19];

      v16 = v17;
      if (!v17)
      {
        goto LABEL_4;
      }
    }

    swift_beginAccess();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v58[0] = v16[20];
    v24 = v58[0];
    v16[20] = 0x8000000000000000;
    v25 = sub_1B6993940(v15, v14);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_30;
    }

    v31 = v26;
    if (v24[3] >= v30)
    {
      if ((v23 & 1) == 0)
      {
        v34 = v25;
        sub_1B69DFAF4();
        v25 = v34;
        v33 = v58[0];
        if (v31)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_1B69DCB7C(v30, v23);
      v25 = sub_1B6993940(v15, v14);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_33;
      }
    }

    v33 = v58[0];
    if (v31)
    {
LABEL_18:
      *(v33[7] + 8 * v25) = MEMORY[0x1E69E7CC0];

LABEL_22:
      v16[20] = v33;
      swift_endAccess();
      goto LABEL_23;
    }

LABEL_20:
    v33[(v25 >> 6) + 8] |= 1 << v25;
    v35 = (v33[6] + 16 * v25);
    *v35 = v15;
    v35[1] = v14;
    *(v33[7] + 8 * v25) = MEMORY[0x1E69E7CC0];
    v36 = v33[2];
    v29 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v29)
    {
      goto LABEL_31;
    }

    v33[2] = v37;

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B6A4C660(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(*(v4 + 11) + OBJC_IVAR___AAAccessQueue_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = sub_1B6AB9110();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    a3 = sub_1B69E3FFC(0, a3[2] + 1, 1, a3);
    *a2 = a3;
    goto LABEL_7;
  }

  swift_beginAccess();
  if (!*(*(v4 + 20) + 16) || (, sub_1B6993940(a1, a2), v15 = v14, , (v15 & 1) == 0))
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = *(v4 + 20);
    *(v4 + 20) = 0x8000000000000000;
    sub_1B69E7820(MEMORY[0x1E69E7CC0], a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + 20) = v23[0];
    swift_endAccess();
  }

  v4 = sub_1B6A49AA0(v24);
  v8 = sub_1B6A4C990(v23, a1, a2);
  if (!*v17)
  {
    (v8)(v23, 0);
    return (v4)(v24, 0);
  }

  a2 = v17;
  swift_weakInit();
  a3 = *a2;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v20 = a3[2];
  v19 = a3[3];
  if (v20 >= v19 >> 1)
  {
    a3 = sub_1B69E3FFC((v19 > 1), v20 + 1, 1, a3);
    *a2 = a3;
  }

  a3[2] = v20 + 1;
  sub_1B6A5784C(v22, &a3[v20 + 4], &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak);
  (v8)(v23, 0);
  return (v4)(v24, 0);
}

uint64_t (*sub_1B6A4C990(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1B6A5619C(v6, a2, a3);
  return sub_1B6A4CA18;
}

void sub_1B6A4CA18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id sub_1B6A4CA64(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, uint64_t), uint64_t a9)
{
  v10 = v9;
  v84 = a6;
  v85 = a7;
  v75 = a5;
  v82 = a3;
  v83 = a4;
  v89 = a1;
  v90 = a2;
  v88 = a9;
  v12 = type metadata accessor for EventSubmitResult(0, a8, a9, a4);
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v73 - v13;
  sub_1B6A56C3C(0, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v86 = &v73 - v15;
  v16 = sub_1B6AB8E40();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EventData(0);
  v74 = *(v20 - 1);
  v21 = *(v74 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v79 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v73 - v23);
  sub_1B6AB8E30();
  v80 = sub_1B6AB8DD0();
  v81 = v25;
  (*(v17 + 8))(v19, v16);
  sub_1B6AB8DA0();
  *&v91[0] = 47;
  *(&v91[0] + 1) = 0xE100000000000000;

  v26 = MEMORY[0x1E69E7CC0];
  v87 = v10;
  v27 = v10;
  do
  {
    v30 = v27[3];
    if (v30)
    {
      v31 = v27[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1B69B5A00(0, *(v26 + 2) + 1, 1, v26);
      }

      v33 = *(v26 + 2);
      v32 = *(v26 + 3);
      if (v33 >= v32 >> 1)
      {
        v26 = sub_1B69B5A00((v32 > 1), v33 + 1, 1, v26);
      }

      *(v26 + 2) = v33 + 1;
      v28 = &v26[16 * v33];
      *(v28 + 4) = v31;
      *(v28 + 5) = v30;
    }

    v29 = v27[19];

    v27 = v29;
  }

  while (v29);
  v92 = sub_1B69B919C(v26);
  sub_1B6980AE0(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v34 = sub_1B6AB9290();
  v36 = v35;

  MEMORY[0x1B8C97BE0](v34, v36);

  v37 = v91[0];
  v38 = v81;
  *v24 = v80;
  v24[1] = v38;
  *(v24 + v20[6]) = v37;
  v39 = (v24 + v20[7]);
  *v39 = 0x6F69737365536F6ELL;
  v39[1] = 0xE90000000000006ELL;
  *(v24 + v20[8]) = xmmword_1B6AC0340;
  v40 = v86;
  v42 = v89;
  v41 = v90;
  v43 = a8;
  v44 = a8;
  v45 = v88;
  sub_1B69B92B4(v89, v90, v24, v44, v86);
  type metadata accessor for Sequence(0);
  v46 = swift_allocBox();
  sub_1B69BA134(v42, v41, v24, v40, v82, v83, v43, v45, v47);
  v82 = v46;
  v77 = sub_1B69C1A34(v43, v45);
  v76 = v48;
  v80 = v49;
  LODWORD(v78) = v50;
  v51 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v81 = v51;
  *(v51 + 16) = result;
  v83 = result;
  v73 = v43;
  if (result)
  {
    type metadata accessor for AccessTracker();
    v53 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v53[3] = 0;
    v53[4] = 0;
    v53[5] = sub_1B6A55214;
    v53[6] = 0;
    v54 = swift_allocObject();
    swift_weakInit();
    sub_1B699A32C(v24, v79, type metadata accessor for EventData);
    sub_1B6992ADC(v75, v91, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B6980AE0);
    v55 = (*(v74 + 80) + 72) & ~*(v74 + 80);
    v56 = (v21 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 39) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v88;
    v59[2] = v73;
    v59[3] = v60;
    v61 = v84;
    v62 = v85;
    v59[4] = v54;
    v59[5] = v61;
    v64 = v89;
    v63 = v90;
    v59[6] = v62;
    v59[7] = v64;
    v59[8] = v63;
    sub_1B6A57770(v79, v59 + v55, type metadata accessor for EventData);
    *(v59 + v56) = v82;
    v65 = (v59 + v57);
    v66 = v76;
    *v65 = v77;
    v65[1] = v66;
    v67 = v59 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
    v68 = v81;
    *v67 = v80;
    v67[8] = v78 & 1;
    v69 = (v59 + v58);
    v70 = v91[1];
    *v69 = v91[0];
    v69[1] = v70;
    *(v59 + ((v58 + 39) & 0xFFFFFFFFFFFFFFF8)) = v68;
    type metadata accessor for SessionObserver();
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v71[3] = v53;
    v71[4] = sub_1B6A5707C;
    v71[5] = v59;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B698BF94(v84);
    sub_1B6992B50(v89, v90);

    if (Strong)
    {
      sub_1B6A04C10(v71);
      swift_unknownObjectRelease();
    }

    sub_1B6A5718C(v86, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
    sub_1B6984D38(v24, type metadata accessor for EventData);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B6A4D508(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t *a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v166 = a8;
  v173 = a7;
  v172 = a6;
  v181 = a5;
  v183 = a2;
  v176 = type metadata accessor for EventSubmitResult(0, a16, a17, a4);
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v146[-v19];
  v177 = a16;
  v178 = a17;
  v161 = type metadata accessor for ProcessEvent(0, a16, a17, v20);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v163 = &v146[-v21];
  v165 = type metadata accessor for Sequence(0);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v146[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v179 = type metadata accessor for TimedData(0);
  MEMORY[0x1EEE9AC00](v179);
  v171 = &v146[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v169 = sub_1B6AB8DB0();
  v168 = *(v169 - 8);
  v24 = MEMORY[0x1EEE9AC00](v169);
  v167 = &v146[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v170 = &v146[-v27];
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v146[-v28];
  v30 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v30);
  v180 = &v146[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for SessionObserverChange(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v146[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_1B6AB90F0();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v146[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = swift_projectBox();
  swift_beginAccess();
  v162 = a3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v158 = v39;
    v159 = a4;
    v182 = Strong;
    v41 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v38 = v41;
    v42 = *MEMORY[0x1E69E8020];
    v43 = *MEMORY[0x1E69E8020];
    v157 = *(v36 + 104);
    v157(v38, v43, v35);
    v44 = v41;
    LOBYTE(v41) = sub_1B6AB9110();
    v156 = *(v36 + 8);
    v156(v38, v35);
    if ((v41 & 1) == 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_1B699A32C(v183, v34, type metadata accessor for SessionObserverChange);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {

        return;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      v148 = v36 + 104;
      v46 = *v34;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1B69B8B64(v172, v173, v177, v178, &v184);
        v189 = v184;
        v190 = v185;
        v191 = v186;
        v47 = sub_1B69B8DBC(&v189);
        swift_unknownObjectRelease();
      }

      else
      {
        v47 = 0;
      }

      v54 = v166;
      v55 = *(v166 + 8);
      v154 = *v166;
      v155 = v55;

      sub_1B6AB8DA0();
      v56 = (v54 + v30[6]);
      v57 = v56[1];
      v166 = *v56;
      v149 = v47;
      v183 = v46;
      v147 = v42;
      v150 = v35;
      if (v47)
      {
        v153 = v47[2];
        v58 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
        v59 = *(v47 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
        v152 = v47[3];
        if (v59)
        {
          v151 = *(v47 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);

          v60 = v57;

          goto LABEL_21;
        }

        v62 = v183;
      }

      else
      {
        v61 = *(v46 + 24);
        v153 = *(v46 + 16);
        v152 = v61;

        v62 = v46;
        v58 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
      }

      v60 = v57;
      v63 = (v62 + v58);
      v59 = v63[1];
      v151 = *v63;

LABEL_21:
      v64 = v180;
      v65 = v155;
      *v180 = v154;
      *(v64 + 1) = v65;
      v66 = v30[5];
      v67 = v168;
      v68 = v169;
      (*(v168 + 32))(&v64[v66], v29, v169);
      v69 = &v64[v30[6]];
      *v69 = v166;
      v69[1] = v60;
      v70 = &v64[v30[7]];
      v71 = v152;
      *v70 = v153;
      *(v70 + 1) = v71;
      v72 = &v64[v30[8]];
      *v72 = v151;
      *(v72 + 1) = v59;
      v73 = *(v67 + 16);
      v34 = v170;
      v73(v170, v183 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate, v68);
      v166 = v66;
      v74 = &v64[v66];
      v75 = v167;
      v73(v167, v74, v68);
      v76 = v171;
      v73(v171, v34, v68);
      v77 = &v76[*(v179 + 20)];
      v155 = v67 + 16;
      v154 = v73;
      v73(v77, v75, v68);
      sub_1B6AB8D00();
      v79 = v78;
      v80 = *(v67 + 8);
      v80(v75, v68);
      v80(v34, v68);
      v81 = v79 * 1000.0;
      if (COERCE__INT64(fabs(v79 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v82 = v158;
        v83 = v150;
        if (v81 > -9.22337204e18)
        {
          v84 = v180;
          if (v81 < 9.22337204e18)
          {
            *&v76[*(v179 + 24)] = v81;
            v85 = swift_beginAccess();
            v86 = v76;
            v87 = *(v165 + 28);
            MEMORY[0x1EEE9AC00](v85);
            v144 = v84;
            v145 = v86;
            v34 = 0;
            *(v82 + v87) = sub_1B6A115A8(sub_1B6A24388, &v143, v88);
            swift_endAccess();

            v89 = v84;
            v90 = v182;
            if (sub_1B6A4D468(v172, v173, v159, v181, v177, v178))
            {
              swift_beginAccess();
              v91 = v82;
              v92 = v164;
              sub_1B699A32C(v91, v164, type metadata accessor for Sequence);
              v93 = *(v90 + 216);
              ObjectType = swift_getObjectType();
              (*(v93 + 8))(&v184, ObjectType, v93);
              v95 = v184;
              v96 = *(*(v90 + 88) + OBJC_IVAR___AAAccessQueue_queue);
              *v38 = v96;
              v157(v38, v147, v83);
              v97 = v96;
              LOBYTE(v96) = sub_1B6AB9110();
              v156(v38, v83);
              if (v96)
              {
                v98 = MEMORY[0x1EEE9AC00](*(v90 + 88));
                v144 = v95;
                v145 = v92;
                v114 = sub_1B69BF2DC(v98, sub_1B69BFC98, &v143);

                sub_1B6984D38(v92, type metadata accessor for Sequence);
                v115 = v180;
                if (v114)
                {
                  v179 = a10;
                  v116 = v158;
                  swift_beginAccess();
                  v118 = *v116;
                  v117 = v116[1];
                  v119 = v170;
                  v154(v170, v115 + v166, v169);
                  sub_1B6992ADC(a14, &v184, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B6980AE0);
                  v120 = v163;
                  ProcessEvent.init(name:json:nonJitteredEventTimestamp:groupName:groupContentType:userInfo:)(v118, v117, v114, v119, v179, a11, a12, a13 & 1, v163, &v184, v177, v178);
                  swift_beginAccess();
                  if (swift_weakLoadStrong())
                  {
                    v121 = swift_unknownObjectWeakLoadStrong();

                    v122 = v114;

                    v124 = v171;
                    v125 = v159;
                    if (v121)
                    {
                      sub_1B69C1DD4(v120, v177, v178, v123);
                      swift_unknownObjectRelease();
                    }
                  }

                  else
                  {

                    v136 = v114;
                    v124 = v171;
                    v125 = v159;
                  }

                  v137 = v180;
                  if (v125)
                  {
                    v138 = v160;
                    v139 = v174;
                    v140 = v161;
                    (*(v160 + 16))(v174, v120, v161);
                    v141 = v176;
                    swift_storeEnumTagMultiPayload();
                    v125(v139);

                    (*(v175 + 8))(v139, v141);
                    (*(v138 + 8))(v120, v140);
                  }

                  else
                  {
                    (*(v160 + 8))(v120, v161);
                  }

                  v108 = v124;
                  v109 = v137;
                  goto LABEL_44;
                }

                if (qword_1EDBCCEE0 != -1)
                {
                  swift_once();
                }

                v126 = qword_1EDBCCB28;
                v127 = sub_1B6AB98D0();
                sub_1B6AB8F70("Privacy-invalid sequence identified, will NOT submit...", 55, 2, &dword_1B697C000, v126, v127, MEMORY[0x1E69E7CC0]);
                v128 = v159;
                v129 = v158;
                if (v159)
                {
                  swift_beginAccess();
                  v131 = *v129;
                  v130 = v129[1];
                  sub_1B6A23D80();
                  v132 = swift_allocError();
                  *v133 = v131;
                  v133[1] = v130;
                  v134 = v174;
                  *v174 = v132;
                  v135 = v176;
                  swift_storeEnumTagMultiPayload();

                  v128(v134);

                  (*(v175 + 8))(v134, v135);
                }

                else
                {
                }

                sub_1B6984D38(v171, type metadata accessor for TimedData);
                v52 = type metadata accessor for EventData;
                v53 = v115;
                goto LABEL_12;
              }

LABEL_51:
              __break(1u);
              swift_once();
              v99 = qword_1EDBCCB28;
              v100 = sub_1B6AB98F0();
              sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
              v101 = swift_allocObject();
              *(v101 + 16) = xmmword_1B6ABF500;
              *&v184 = 0;
              *(&v184 + 1) = 0xE000000000000000;
              v187 = v172;
              v188 = v173;
              type metadata accessor for EventSubmit(0, v177, v178, v102);
              sub_1B6ABA0D0();
              v104 = *(&v184 + 1);
              v103 = v184;
              v105 = MEMORY[0x1E69E6158];
              *(v101 + 56) = MEMORY[0x1E69E6158];
              v106 = sub_1B698CEC0();
              *(v101 + 64) = v106;
              *(v101 + 32) = v103;
              *(v101 + 40) = v104;
              *&v184 = 0;
              *(&v184 + 1) = 0xE000000000000000;
              v187 = v34;
              sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
              sub_1B6AB9DF0();
              v107 = v184;
              *(v101 + 96) = v105;
              *(v101 + 104) = v106;
              *(v101 + 72) = v107;
              sub_1B6AB8F70("Failed to gracefully create event from available data events, event=%{public}@, error=%{public}@", 96, 2, &dword_1B697C000, v99, v100, v101);

              v108 = v171;
              v109 = v180;
              v110 = v159;
              if (v159)
              {
                v111 = v174;
                *v174 = v34;
                v112 = v176;
                swift_storeEnumTagMultiPayload();
                v113 = v34;
                v110(v111);

                (*(v175 + 8))(v111, v112);
              }

              else
              {
              }

LABEL_44:
              sub_1B6984D38(v108, type metadata accessor for TimedData);
              sub_1B6984D38(v109, type metadata accessor for EventData);
              swift_beginAccess();
              v142 = *(a15 + 16);
              *(a15 + 16) = 0;

              return;
            }

            sub_1B6984D38(v86, type metadata accessor for TimedData);
            v52 = type metadata accessor for EventData;
            v53 = v89;
LABEL_12:
            sub_1B6984D38(v53, v52);
            return;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v52 = type metadata accessor for SessionObserverChange;
    v53 = v34;
    goto LABEL_12;
  }

  if (a4)
  {
    sub_1B6A16B30();
    v48 = swift_allocError();
    *v49 = xmmword_1B6AC0310;
    v50 = v174;
    *v174 = v48;
    v51 = v176;
    swift_storeEnumTagMultiPayload();
    a4(v50);
    (*(v175 + 8))(v50, v51);
  }
}

uint64_t sub_1B6A4E8A8(void *a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for EventSubmitResult(0, a5, a6, a4);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v34 - v15);
  v17 = *(v6 + 32);
  if (*(v17 + OBJC_IVAR___AATrackingConsent_consentEnforcement) != 1)
  {
    return 1;
  }

  v38 = v14;
  if (sub_1B69B9904(a1, a2, a5, a6))
  {
    return 1;
  }

  if ((sub_1B6A92194(a1, a2, a5, a6) & 1) == 0)
  {
    return 1;
  }

  v18 = *(v17 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v18 + 20));
  v19 = *(v18 + 16);
  os_unfair_lock_unlock((v18 + 20));
  if (!v19)
  {
    return 1;
  }

  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v20 = sub_1B6AB8F90();
  __swift_project_value_buffer(v20, qword_1EDBCFDA8);
  sub_1B6992B50(a1, a2);
  v21 = sub_1B6AB8F80();
  v22 = sub_1B6AB9900();
  sub_1B69C346C(a1, a2);
  v37 = v21;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v23 = 136446210;
    v24 = sub_1B69A09A4(a1, a2, a5);
    v35 = v22;
    v34 = sub_1B698F63C(v24, v25, &v39);

    *(v23 + 4) = v34;
    _os_log_impl(&dword_1B697C000, v37, v35, "Tracking consent denied for event: %{public}s", v23, 0xCu);
    v26 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1B8C99550](v26, -1, -1);
    MEMORY[0x1B8C99550](v23, -1, -1);
  }

  if (a3)
  {
    v27 = sub_1B69A09A4(a1, a2, a5);
    v29 = v28;
    sub_1B6A23E48();
    v30 = swift_allocError();
    *v31 = v27;
    v31[1] = v29;
    *v16 = v30;
    v32 = v38;
    swift_storeEnumTagMultiPayload();
    a3(v16);
    (*(v13 + 8))(v16, v32);
  }

  return 0;
}

uint64_t sub_1B6A4EC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_1B6AB9B30();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  a3(a1, a2);
  v15 = *(a4 - 8);
  result = (*(v15 + 48))(v14, 1, a4);
  if (result == 1)
  {
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else
  {
    v20 = a4;
    v21 = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
    (*(v15 + 32))(boxed_opaque_existential_1, v14, a4);
    return sub_1B6980E70(&v19, a6);
  }

  return result;
}

void sub_1B6A4EDB4(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  sub_1B6A56C3C(0, &qword_1EB95AE30, type metadata accessor for Tracker.DelayedEvent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v54 - v4;
  v57 = sub_1B6AB8E40();
  v5 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Tracker.DelayedEvent(0);
  v7 = *(v68 - 8);
  v8 = MEMORY[0x1EEE9AC00](v68);
  v70 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v54 - v10;
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(*(v2 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  v17 = sub_1B6AB9110();
  (*(v12 + 8))(v14, v11);
  if (v17)
  {
    swift_beginAccess();
    v71 = v2;
    v18 = *(v2 + 144);
    v19 = v18 + 64;
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;
    v55 = (v5 + 16);
    v54 = (v7 + 56);
    v67 = v18;

    v24 = 0;
    v26 = v60;
    v25 = v61;
    v62 = v23;
    v63 = v7;
    v59 = v19;
    while (v22)
    {
LABEL_12:
      v30 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v31 = v64;
      sub_1B699A32C(*(v67 + 56) + *(v7 + 72) * (v30 | (v24 << 6)), v64, type metadata accessor for Tracker.DelayedEvent);
      v32 = v31;
      v33 = v70;
      sub_1B6A57770(v32, v70, type metadata accessor for Tracker.DelayedEvent);
      v34 = *(v33 + *(v68 + 28));
      v35 = *(v34 + 16);
      v36 = (v34 + 40);
      v37 = v35 + 1;
      while (--v37)
      {
        if (*(v36 - 1) != v26 || *v36 != v25)
        {
          v36 += 2;
          if ((sub_1B6ABA0F0() & 1) == 0)
          {
            continue;
          }
        }

        v39 = 0;
        v40 = v34 + 40;
        v65 = v35 - 1;
        v69 = MEMORY[0x1E69E7CC0];
        v66 = v34 + 40;
        do
        {
          v41 = (v40 + 16 * v39);
          v42 = v39;
          while (1)
          {
            if (v42 >= *(v34 + 16))
            {
              __break(1u);
              goto LABEL_35;
            }

            v44 = *(v41 - 1);
            v43 = *v41;
            v39 = v42 + 1;

            sub_1B69BEDE8(v44, v43, 0, 0, 1, &v72);
            if (!v73)
            {
              break;
            }

            sub_1B6A23F44(&v72, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
            v41 += 2;
            ++v42;
            if (v35 == v39)
            {
              goto LABEL_30;
            }
          }

          sub_1B6A23F44(&v72, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
          v45 = v69;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B6994474(0, *(v45 + 16) + 1, 1);
            v45 = v74;
          }

          v48 = *(v45 + 16);
          v47 = *(v45 + 24);
          v49 = v48 + 1;
          if (v48 >= v47 >> 1)
          {
            v69 = v48 + 1;
            sub_1B6994474((v47 > 1), v48 + 1, 1);
            v49 = v69;
            v45 = v74;
          }

          *(v45 + 16) = v49;
          v69 = v45;
          v50 = v45 + 16 * v48;
          *(v50 + 32) = v44;
          *(v50 + 40) = v43;
          v40 = v66;
        }

        while (v65 != v42);
LABEL_30:
        v51 = *(v69 + 16);

        v26 = v60;
        v25 = v61;
        v19 = v59;
        if (!v51)
        {
          v53 = *(v70 + *(v68 + 24));
          if ((*(v53 + OBJC_IVAR___AADelayedToken_sealed) & 1) == 0)
          {
            *(v53 + OBJC_IVAR___AADelayedToken_sealed) = 1;
            (*(v53 + OBJC_IVAR___AADelayedToken_block))(v52);
          }

          v27 = v56;
          (*v55)(v56, v70, v57);
          v28 = v58;
          (*v54)(v58, 1, 1, v68);
          swift_beginAccess();
          sub_1B69E200C(v28, v27);
          swift_endAccess();
          v19 = v59;
        }

        break;
      }

      sub_1B6984D38(v70, type metadata accessor for Tracker.DelayedEvent);
      v23 = v62;
      v7 = v63;
    }

    while (1)
    {
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v29 >= v23)
      {

        return;
      }

      v22 = *(v19 + 8 * v29);
      ++v24;
      if (v22)
      {
        v24 = v29;
        goto LABEL_12;
      }
    }

LABEL_35:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B6A4F44C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = swift_beginAccess();
  v7 = *(v2 + 160);
  if (*(v7 + 16))
  {

    v8 = sub_1B6993940(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 32;
        v13 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1B6992ADC(v12, v22, &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak, sub_1B6A56C3C);
          if (swift_weakLoadStrong())
          {
            sub_1B6A4EDB4(a1, a2);

            sub_1B6A5784C(v22, &v23, &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1B69E3FFC(0, v13[2] + 1, 1, v13);
            }

            v15 = v13[2];
            v14 = v13[3];
            if (v15 >= v14 >> 1)
            {
              v13 = sub_1B69E3FFC((v14 > 1), v15 + 1, 1, v13);
            }

            v13[2] = v15 + 1;
            sub_1B6A5784C(&v23, &v13[v15 + 4], &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak);
          }

          else
          {
            sub_1B6A5718C(v22, &qword_1EB95AD88, type metadata accessor for Tracker, type metadata accessor for Weak);
          }

          v12 += 8;
          --v11;
        }

        while (v11);
      }

      else
      {

        v13 = MEMORY[0x1E69E7CC0];
      }

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v3 + 160);
      *(v3 + 160) = 0x8000000000000000;
      sub_1B69E7820(v13, a1, a2, isUniquelyReferenced_nonNull_native);

      v17 = v23;
      *(v3 + 160) = v23;
      result = swift_endAccess();
      if (*(v17 + 16))
      {

        v18 = sub_1B6993940(a1, a2);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);

          v21 = *(v20 + 16);

          if (!v21)
          {
            swift_beginAccess();

            sub_1B69E225C(0, a1, a2);
            return swift_endAccess();
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1B6A4F7C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v6[11] + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = sub_1B6AB9110();
  result = (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v34 = a3;
  v19 = sub_1B69B5FF4(a1, a2, a4, a5);
  v21 = v20;
  swift_beginAccess();
  v22 = v6[16];
  if (*(v22 + 16))
  {

    v23 = sub_1B6993940(v19, v21);
    if (v24)
    {
      v33 = a2;
      sub_1B6982544(*(v22 + 56) + 40 * v23, &v35);

      sub_1B697ED90(0, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType);
      v26 = type metadata accessor for DataEventStack(0, a4, a5, v25);
      if (swift_dynamicCast())
      {
        v28 = *(&v39 + 1);
        v27 = v39;
        v29 = v40;

        LOBYTE(v28) = sub_1B6A25EF0(v27, v28, v29, a4, a5);

        if ((v28 & 1) == 0)
        {
          sub_1B6998ABC(v26, v30, v31, v32);
          v37 = v26;
          v38 = &off_1F2E77398;
          v35 = v39;
          v36 = v40;
          swift_beginAccess();
          sub_1B699A480(&v35, v19, v21);
          result = swift_endAccess();
LABEL_12:
          a2 = v33;
          if ((v34 & 1) == 0)
          {
            return result;
          }

          goto LABEL_13;
        }
      }

      goto LABEL_12;
    }
  }

  if ((v34 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  if (v6[19])
  {
    return sub_1B6A4F7C4(a1, a2, 1, a4, a5);
  }

  return result;
}

uint64_t Tracker.copy<A>(type:from:traits:popIfMissing:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  *(v13 + 32) = a1;
  *(v13 + 40) = a4;
  *(v13 + 48) = a3;
  v14 = *(v6 + 88);
  v15 = swift_allocObject();
  v15[2] = v6;
  v15[3] = a2;
  v15[4] = sub_1B6A566E0;
  v15[5] = v13;

  sub_1B69877A4(v14, sub_1B6A566F4, v15);
}

uint64_t sub_1B6A4FBF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a5;
  v19 = a4;
  v9 = sub_1B6AB9B30();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-v12];
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v18[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AccessTracker.peek<A>(_:)(a6, v13);
  if ((*(v14 + 48))(v13, 1, a6) == 1)
  {
    result = (*(v10 + 8))(v13, v9);
    if (v19)
    {
      return AccessTracker.pop<A>(type:)(result, a6, a7);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v13, a6);
    AccessTracker.push<A>(data:traits:file:line:)(v16, v20, 0xD00000000000004DLL, 0x80000001B6ACB520, 1265, a6, a7);
    return (*(v14 + 8))(v16, a6);
  }

  return result;
}

uint64_t AccessTracker.pop<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v8 = v10;
    (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
    v11 = v10;
    LOBYTE(v10) = sub_1B6AB9110();
    result = (*(v6 + 8))(v8, v5);
    if (v10)
    {
      sub_1B69B5C90(0, 0, a2, a3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t AccessTracker.peek<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v8 = v10;
    (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
    v11 = v10;
    LOBYTE(v10) = sub_1B6AB9110();
    result = (*(v6 + 8))(v8, v5);
    if (v10)
    {
      v13 = sub_1B6ABA330();
      sub_1B69BEDE8(v13, v14, 0, 0, 1, &v18);

      sub_1B6A23D18(0, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType, MEMORY[0x1E69E6720]);
      v15 = swift_dynamicCast();
      return (*(*(a2 - 8) + 56))(a3, v15 ^ 1u, 1, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v16 = *(*(a2 - 8) + 56);

    return v16(a3, 1, 1, a2);
  }

  return result;
}

uint64_t sub_1B6A501BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 88);
  v12 = *(v6 + 96);
  v33 = *(v6 + 201);
  v13 = *(v6 + 104);
  v14 = *(v6 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);

  os_unfair_lock_lock_with_options();
  v15 = *(v6 + 184);
  swift_beginAccess();
  v16 = *(v7 + 176);
  v41[0] = v15;

  sub_1B69979DC(v16);
  v32 = v41[0];
  os_unfair_lock_unlock(*(v14 + 16));
  v40 = *(v7 + 208);
  sub_1B699A32C(v7 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v10, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v7 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager, v41);
  v17 = *(v7 + 32);
  type metadata accessor for Tracker(0);
  v18 = swift_allocObject();
  *(v18 + 80) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  swift_unknownObjectWeakInit();
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 112) = MEMORY[0x1E69E7CC8];
  *(v18 + 120) = v19;
  *(v18 + 128) = v19;
  *(v18 + 136) = v19;
  *(v18 + 144) = v19;
  v20 = MEMORY[0x1E69E7CC0];
  *(v18 + 160) = v19;
  *(v18 + 168) = v20;
  *(v18 + 176) = v20;
  *(v18 + 192) = v20;
  *(v18 + 200) = 0;
  v21 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  *(v22 + 24) = 0x10000;
  *(v18 + v21) = v22;
  v24 = v35;
  *(v18 + 16) = v34;
  *(v18 + 24) = v24;
  *(v18 + 88) = v11;
  *(v18 + 96) = v12;
  *(v18 + 201) = v33;
  *(v18 + 104) = v13;
  *(v18 + 152) = v7;
  swift_unknownObjectWeakLoadStrong();
  *(v18 + 80) = *(v7 + 80);
  swift_unknownObjectWeakAssign();

  v25 = v11;
  v26 = v12;

  swift_unknownObjectRelease();
  *(v18 + 184) = v32;
  v27 = v37;
  *(v18 + 40) = v36;
  *(v18 + 48) = v27;
  v28 = v39;
  *(v18 + 56) = v38;
  *(v18 + 64) = v28;

  *(v18 + 208) = v40;
  sub_1B699A32C(v10, v18 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v41, v18 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v18 + 32) = v17;
  swift_unknownObjectRetain();
  v29 = v17;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v30 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v30);

    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1B6984D38(v10, type metadata accessor for DiagnosticsConsentProvider);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1B6984D38(v10, type metadata accessor for DiagnosticsConsentProvider);
  }

  return v18;
}

Swift::Void __swiftcall Tracker.clearDynamicDataIdentifier()()
{
  v1 = *(v0 + 88);

  sub_1B69877A4(v1, sub_1B6A56700, v0);
}

uint64_t sub_1B6A50610(uint64_t a1, char **a2)
{
  sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6810];
  *(v4 + 16) = xmmword_1B6ABD890;
  v6 = MEMORY[0x1E69E6870];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  v7 = sub_1B6AB9300();
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 40);
    sub_1B6AB9CA0();
    sub_1B6AB9DF0();
    MEMORY[0x1B8C97BE0](0x78303D7264646120, 0xE800000000000000);
    MEMORY[0x1B8C97BE0](v7, v9);

    MEMORY[0x1B8C97BE0](0x69746E656469202CLL, 0xED00003D72656966);
    MEMORY[0x1B8C97BE0](v11, v10);
  }

  else
  {
    sub_1B6AB9DF0();
    MEMORY[0x1B8C97BE0](0x78303D7264646120, 0xE800000000000000);
    MEMORY[0x1B8C97BE0](v7, v9);
  }

  v12 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1B69B5A00(0, *(v12 + 2) + 1, 1, v12);
    *a2 = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1B69B5A00((v14 > 1), v15 + 1, 1, v12);
    *a2 = v12;
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[16 * v15];
  *(v16 + 4) = 0;
  *(v16 + 5) = 0xE000000000000000;
  return 1;
}

id Tracker.bridgedTracker.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for BridgedEventMirrorStore();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = type metadata accessor for BridgedTracker();
  v7 = objc_allocWithZone(v6);
  v8 = 0x6E6564646968;
  if (v1)
  {
    v8 = v2;
  }

  v9 = 0xE600000000000000;
  if (v1)
  {
    v9 = v1;
  }

  v10 = &v7[OBJC_IVAR___AATracker_name];
  *v10 = v8;
  v10[1] = v9;
  *&v7[OBJC_IVAR___AATracker_tracker] = v0;
  *&v7[OBJC_IVAR___AATracker_eventMirrorStore] = v3;
  v11 = &v7[OBJC_IVAR___AATracker_identifier];
  *v11 = v5;
  *(v11 + 1) = v4;
  v13.receiver = v7;
  v13.super_class = v6;

  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1B6A50A08@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(*(v2 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v8 = v10;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = sub_1B6AB9110();
  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    if (v9)
    {
      v28 = MEMORY[0x1E69E7CC0];

      v13 = v2;
      while (1)
      {

        v15 = sub_1B6A51124(v14, &v28);

        v16 = *(v13 + 152);

        if (!v16)
        {
          break;
        }

        v13 = v16;
        if ((v15 & 1) == 0)
        {

          break;
        }
      }

      v17 = v28;
      v18 = *(v2 + 104);
      sub_1B6A56C3C(0, &qword_1EB95BAC0, sub_1B69E8884, type metadata accessor for Snapshot);
      *(a2 + 24) = v19;
      *(a2 + 32) = &off_1F2E7B9F0;
      *a2 = 1;
      *(a2 + 8) = v17;
      *(a2 + 16) = v18;
    }

    else
    {
      v28 = MEMORY[0x1E69E7CD0];
      v27 = MEMORY[0x1E69E7CC0];

      v20 = v2;
      while (1)
      {

        v22 = sub_1B6A50C9C(v21, &v28, &v27);

        v23 = *(v20 + 152);

        if (!v23)
        {
          break;
        }

        v20 = v23;
        if ((v22 & 1) == 0)
        {

          break;
        }
      }

      v24 = v27;
      v25 = *(v2 + 104);
      sub_1B6A573F0(0);
      *(a2 + 24) = v26;
      *(a2 + 32) = &off_1F2E7B9F0;
      *a2 = 0;
      *(a2 + 8) = v24;
      *(a2 + 16) = v25;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A50C9C(unint64_t a1, unint64_t *a2, uint64_t **a3)
{
  swift_beginAccess();
  v44 = a1;
  v5 = *(a1 + 128);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a1 + 128) + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = ((v9 + 63) >> 6);
  v47 = *(a1 + 128);

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (!v11)
    {
      if (v12 <= (v13 + 1))
      {
        v16 = (v13 + 1);
      }

      else
      {
        v16 = v12;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v12)
        {
          v11 = 0;
          *&v58 = 0;
          v56 = 0u;
          v57 = 0u;
          v13 = v17;
          v55 = 0u;
          goto LABEL_18;
        }

        v11 = *(v7 + 8 * v15);
        ++v13;
        if (v11)
        {
          v13 = v15;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

    v15 = v13;
LABEL_17:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = v18 | (v15 << 6);
    v20 = (*(v47 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    sub_1B6982544(*(v47 + 56) + 40 * v19, &v49);
    *&v55 = v22;
    *(&v55 + 1) = v21;
    sub_1B6980E70(&v49, &v56);

LABEL_18:
    v64 = v55;
    v65[0] = v56;
    v65[1] = v57;
    v66 = v58;
    v23 = *(&v55 + 1);
    if (!*(&v55 + 1))
    {
      break;
    }

    v24 = v64;
    sub_1B6980E70(v65, v61);
    a1 = v62;
    v25 = v63;
    v3 = __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v25 + 24))(&v49, a1, v25);
    if (!*(&v49 + 1))
    {

      sub_1B69840C4(&v49, &qword_1EDBCB490, &type metadata for AnyDataEventEntry);
      goto LABEL_6;
    }

    v57 = v51;
    v58 = v52;
    v59 = v53;
    v60 = v54;
    v55 = v49;
    v56 = v50;
    a1 = *a2;
    if (!*(*a2 + 16))
    {
      goto LABEL_30;
    }

    v46 = v14;
    sub_1B6ABA1F0();

    sub_1B6AB9380();
    v26 = sub_1B6ABA230();
    v3 = (a1 + 56);
    v27 = -1 << *(a1 + 32);
    v28 = v26 & ~v27;
    if (((*(a1 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
LABEL_29:

      v14 = v46;
LABEL_30:
      sub_1B6A0A6D0(&v55, &v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1B69E4488(0, *(v14 + 2) + 1, 1, v14);
      }

      v33 = *(v14 + 2);
      v32 = *(v14 + 3);
      a1 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v14 = sub_1B69E4488((v32 > 1), v33 + 1, 1, v14);
      }

      *(v14 + 2) = a1;
      v34 = &v14[96 * v33];
      v35 = v50;
      *(v34 + 2) = v49;
      *(v34 + 3) = v35;
      v36 = v51;
      v37 = v52;
      v38 = v54;
      *(v34 + 6) = v53;
      *(v34 + 7) = v38;
      *(v34 + 4) = v36;
      *(v34 + 5) = v37;
      v3 = a2;
      sub_1B6A93984(&v49, v24, v23);

      sub_1B69A6664(&v55);
      goto LABEL_6;
    }

    v29 = ~v27;
    while (1)
    {
      v30 = (*(a1 + 48) + 16 * v28);
      v31 = *v30 == v24 && v30[1] == v23;
      if (v31 || (sub_1B6ABA0F0() & 1) != 0)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      if (((*(v3 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_1B69A6664(&v55);
    v14 = v46;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  if (v44[3])
  {
    v7 = v44[2];
    v13 = v44[3];
  }

  else
  {
    v13 = 0xE600000000000000;
    v7 = 0x6E6564646968;
  }

  v12 = a3;
  swift_beginAccess();
  a1 = v44[14];
  v3 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v3;
  v11 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_45:
    v3 = sub_1B69E45C0(0, v3[2] + 1, 1, v3);
    *v12 = v3;
  }

  v41 = v3[2];
  v40 = v3[3];
  if (v41 >= v40 >> 1)
  {
    v3 = sub_1B69E45C0((v40 > 1), v41 + 1, 1, v3);
    *v12 = v3;
  }

  v3[2] = v41 + 1;
  v42 = &v3[4 * v41];
  v42[4] = v7;
  v42[5] = v13;
  v42[6] = v11;
  v42[7] = a1;
  return 1;
}

uint64_t sub_1B6A51124(void *a1, void *a2)
{
  swift_beginAccess();
  v46 = a1;
  v5 = a1[16];
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = ((v7 + 63) >> 6);
  v48 = v5;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  for (i = v6; ; v6 = i)
  {
    if (!v9)
    {
      if (v10 <= v11 + 1)
      {
        v14 = (v11 + 1);
      }

      else
      {
        v14 = v10;
      }

      v15 = v14 - 1;
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          v9 = 0;
          v54 = 0;
          v52 = 0u;
          v53 = 0u;
          v11 = v15;
          v51 = 0u;
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v13);
        ++v11;
        if (v9)
        {
          v11 = v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v10 = sub_1B69E46F8(0, v10[2] + 1, 1, v10);
      *a2 = v10;
      goto LABEL_34;
    }

    v13 = v11;
LABEL_16:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v48 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_1B6982544(*(v48 + 56) + 40 * v17, v50);
    *&v51 = v20;
    *(&v51 + 1) = v19;
    sub_1B6980E70(v50, &v52);

LABEL_17:
    v55 = v51;
    v56[0] = v52;
    v56[1] = v53;
    v57 = v54;
    v3 = *(&v51 + 1);
    if (!*(&v51 + 1))
    {
      break;
    }

    v21 = v55;
    sub_1B6980E70(v56, &v51);
    v22 = *(&v52 + 1);
    v23 = v53;
    v2 = __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    if ((*(v23 + 8))(v22, v23))
    {
      goto LABEL_4;
    }

    v24 = *(&v52 + 1);
    v25 = v53;
    __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    v26 = (*(v25 + 16))(v24, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50[0] = v12;
    v2 = v12;
    v12 = v21;
    v28 = sub_1B6993940(v21, v3);
    v30 = *(v2 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_38;
    }

    v34 = v29;
    if (*(v2 + 24) < v33)
    {
      sub_1B69DCE38(v33, isUniquelyReferenced_nonNull_native);
      v2 = *&v50[0];
      v28 = sub_1B6993940(v21, v3);
      if ((v34 & 1) != (v35 & 1))
      {
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }

LABEL_24:
      if (v34)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v2 = v50;
    v36 = v28;
    sub_1B69DFE10();
    v28 = v36;
    if (v34)
    {
LABEL_25:
      v2 = v28;

      v12 = *&v50[0];
      *(*(*&v50[0] + 56) + 8 * v2) = v26;
LABEL_4:

      goto LABEL_5;
    }

LABEL_28:
    v37 = *&v50[0];
    *(*&v50[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v38 = (*(v37 + 6) + 16 * v28);
    *v38 = v12;
    v38[1] = v3;
    *(*(v37 + 7) + 8 * v28) = v26;
    v39 = *(v37 + 2);
    v32 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v32)
    {
      goto LABEL_39;
    }

    v12 = v37;
    *(v37 + 2) = v40;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  if (v46[3])
  {
    v9 = v46[2];
    v3 = v46[3];
  }

  else
  {
    v3 = 0xE600000000000000;
    v9 = 0x6E6564646968;
  }

  swift_beginAccess();
  v2 = v46[14];
  v10 = *a2;

  v41 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((v41 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v43 = v10[2];
  v42 = v10[3];
  if (v43 >= v42 >> 1)
  {
    v10 = sub_1B69E46F8((v42 > 1), v43 + 1, 1, v10);
    *a2 = v10;
  }

  v10[2] = v43 + 1;
  v44 = &v10[4 * v43];
  v44[4] = v9;
  v44[5] = v3;
  v44[6] = v12;
  v44[7] = v2;
  return 1;
}

uint64_t sub_1B6A5153C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, __n128), uint64_t a5)
{
  v72 = a2;
  v73 = a4;
  v8 = sub_1B6AB90F0();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v68 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB8E40();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v64 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v63 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v79 = &v63 - v26;
  v78 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
  v66 = *(a1 + 88);
  v27 = qword_1EDBC9F60;

  v74 = a3;

  if (v27 != -1)
  {
    swift_once();
  }

  v76 = a5;
  v77 = v25;
  v67 = v12;
  v65 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v71 = v80;
  if (v80)
  {
    v28 = *(v14 + 16);
    v29 = v79;
    v28(v79, v80 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v13);
    v30 = *(v14 + 56);
    v30(v29, 0, 1, v13);
  }

  else
  {
    v30 = *(v14 + 56);
    v30(v79, 1, 1, v13);
    v28 = *(v14 + 16);
  }

  v75 = a1;
  v31 = v77;
  v28(v77, a1 + v78, v13);
  v30(v31, 0, 1, v13);
  v32 = *(v17 + 48);
  v33 = MEMORY[0x1E69695A8];
  v34 = MEMORY[0x1E69E6720];
  sub_1B6992ADC(v79, v19, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
  sub_1B6992ADC(v31, &v19[v32], &qword_1EDBCAF50, v33, v34, sub_1B6A56C3C);
  v35 = *(v14 + 48);
  if (v35(v19, 1, v13) == 1)
  {
    v36 = MEMORY[0x1E69695A8];
    v37 = MEMORY[0x1E69E6720];
    sub_1B6A5718C(v31, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    sub_1B6A5718C(v79, &qword_1EDBCAF50, v36, v37);
    v38 = v35(&v19[v32], 1, v13);
    v39 = v75;
    if (v38 == 1)
    {
      sub_1B6A5718C(v19, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
LABEL_15:
      type metadata accessor for AccessTracker();
      v61 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v62 = v74;
      v61[3] = v72;
      v61[4] = v62;
      v61[5] = sub_1B6A55214;
      v61[6] = 0;

      v73(v61);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v40 = v64;
  sub_1B6992ADC(v19, v64, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
  if (v35(&v19[v32], 1, v13) == 1)
  {
    v41 = MEMORY[0x1E69695A8];
    v42 = MEMORY[0x1E69E6720];
    sub_1B6A5718C(v77, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    sub_1B6A5718C(v79, &qword_1EDBCAF50, v41, v42);
    (*(v14 + 8))(v40, v13);
    v39 = v75;
LABEL_11:
    sub_1B6984D38(v19, sub_1B6992BDC);
    goto LABEL_12;
  }

  v55 = v63;
  (*(v14 + 32))(v63, &v19[v32], v13);
  sub_1B6A576C8(&qword_1EDBCA470, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v56 = v40;
  v57 = sub_1B6AB92A0();
  v58 = *(v14 + 8);
  v58(v55, v13);
  v59 = MEMORY[0x1E69695A8];
  v60 = MEMORY[0x1E69E6720];
  sub_1B6A5718C(v77, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  sub_1B6A5718C(v79, &qword_1EDBCAF50, v59, v60);
  v58(v56, v13);
  sub_1B6A5718C(v19, &qword_1EDBCAF50, v59, v60);
  v39 = v75;
  if (v57)
  {
    goto LABEL_15;
  }

LABEL_12:
  v43 = v67;
  sub_1B699A32C(v39 + v78, v67, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for LazyDiagnosticStatus(0);
  v44 = swift_allocObject();
  *(v44 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v45 = v66;
  v46 = *&v66[OBJC_IVAR___AAAccessQueue_queue];
  v48 = v68;
  v47 = v69;
  *v68 = v46;
  v49 = v70;
  (*(v47 + 104))(v48, *MEMORY[0x1E69E8020], v70);
  v50 = v46;
  LOBYTE(v46) = sub_1B6AB9110();
  result = (*(v47 + 8))(v48, v49);
  if (v46)
  {
    sub_1B6A57770(v43, v44 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);
    *(v44 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v45;
    v80 = v44;
    sub_1B6A56C3C(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
    v52 = v45;

    swift_task_localValuePush();
    type metadata accessor for AccessTracker();
    v53 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v54 = v74;
    v53[3] = v72;
    v53[4] = v54;
    v53[5] = sub_1B6A55214;
    v53[6] = 0;

    v73(v53);

    swift_task_localValuePop();
LABEL_16:
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A51EF8(uint64_t a1, uint64_t a2, void (*a3)(void *, void *), uint64_t a4)
{
  v8 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
  v9 = *(a1 + 88);

  return sub_1B6AAE11C(v9, a1 + v8, a1, a2, a3, a4);
}

uint64_t sub_1B6A51FA4(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v100 = a2;
  v101 = a3;
  v4 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB8E40();
  v8 = *(v7 - 8);
  v96 = v7;
  v97 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v94 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v98 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v95 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v83 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v99 = v83 - v19;
  v20 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_1B6AB90F0();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v28 = Strong;
  v92 = v6;
  v29 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v26 = v29;
  v30 = *(v24 + 104);
  v90 = *MEMORY[0x1E69E8020];
  v91 = v24 + 104;
  v89 = v30;
  v30(v26);
  v31 = v29;
  LOBYTE(v29) = sub_1B6AB9110();
  v33 = *(v24 + 8);
  v32 = v24 + 8;
  v93 = v23;
  v88 = v33;
  v33(v26, v23);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_11:
    v83[2] = qword_1EDBC9F50;
    sub_1B6ABA320();
    v46 = v97;
    v85 = v102;
    if (v102)
    {
      v47 = v97[2];
      v83[1] = v32;
      v48 = v18;
      v49 = v11;
      v50 = v99;
      v51 = v96;
      v47();
      v52 = v46[7];
      v53 = v50;
      v11 = v49;
      v18 = v48;
      v52(v53, 0, 1, v51);
    }

    else
    {
      v52 = v97[7];
      v51 = v96;
      v52(v99, 1, 1, v96);
      v47 = v46[2];
    }

    (v47)(v18, a1 + v87, v51);
    v52(v18, 0, 1, v51);
    v54 = *(v11 + 48);
    v55 = MEMORY[0x1E69695A8];
    v56 = MEMORY[0x1E69E6720];
    v57 = v98;
    sub_1B6992ADC(v99, v98, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
    v96 = v54;
    sub_1B6992ADC(v18, v57 + v54, &qword_1EDBCAF50, v55, v56, sub_1B6A56C3C);
    v58 = v97;
    v59 = v97[6];
    if (v59(v57, 1, v51) == 1)
    {
      v60 = MEMORY[0x1E69695A8];
      v61 = MEMORY[0x1E69E6720];
      sub_1B6A5718C(v18, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      v62 = v60;
      v63 = v98;
      sub_1B6A5718C(v99, &qword_1EDBCAF50, v62, v61);
      if (v59(v63 + v96, 1, v51) == 1)
      {
        sub_1B6A5718C(v63, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
LABEL_23:
        type metadata accessor for AccessTracker();
        v82 = swift_allocObject();
        swift_weakInit();
        swift_weakAssign();
        v82[3] = 0;
        v82[4] = 0;
        v82[5] = sub_1B6A55214;
        v82[6] = 0;
        v100(v82, v86);
        goto LABEL_24;
      }
    }

    else
    {
      v64 = v95;
      sub_1B6992ADC(v57, v95, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
      if (v59(v57 + v96, 1, v51) != 1)
      {
        v77 = v94;
        (v58[4])(v94, v57 + v96, v51);
        sub_1B6A576C8(&qword_1EDBCA470, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        LODWORD(v96) = sub_1B6AB92A0();
        v78 = v58[1];
        v78(v77, v51);
        v79 = v64;
        v80 = MEMORY[0x1E69695A8];
        v81 = MEMORY[0x1E69E6720];
        sub_1B6A5718C(v18, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
        sub_1B6A5718C(v99, &qword_1EDBCAF50, v80, v81);
        v78(v79, v51);
        sub_1B6A5718C(v98, &qword_1EDBCAF50, v80, v81);
        v69 = v93;
        if (v96)
        {
          goto LABEL_23;
        }

LABEL_20:
        v70 = v92;
        sub_1B699A32C(a1 + v87, v92, type metadata accessor for DiagnosticsConsentProvider);
        type metadata accessor for LazyDiagnosticStatus(0);
        v71 = swift_allocObject();
        *(v71 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
        v72 = v84;
        v73 = *&v84[OBJC_IVAR___AAAccessQueue_queue];
        *v26 = v73;
        v89(v26, v90, v69);
        v74 = v73;
        LOBYTE(v73) = sub_1B6AB9110();
        result = v88(v26, v69);
        if ((v73 & 1) == 0)
        {
          __break(1u);
          goto LABEL_28;
        }

        sub_1B6A57770(v70, v71 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);
        *(v71 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v72;
        v102 = v71;
        sub_1B6A56C3C(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
        v75 = v72;

        swift_task_localValuePush();
        type metadata accessor for AccessTracker();
        v76 = swift_allocObject();
        swift_weakInit();
        swift_weakAssign();
        v76[3] = 0;
        v76[4] = 0;
        v76[5] = sub_1B6A55214;
        v76[6] = 0;
        v100(v76, v86);

        swift_task_localValuePop();
LABEL_24:
      }

      v65 = MEMORY[0x1E69695A8];
      v66 = v64;
      v67 = MEMORY[0x1E69E6720];
      sub_1B6A5718C(v18, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      v68 = v65;
      v63 = v98;
      sub_1B6A5718C(v99, &qword_1EDBCAF50, v68, v67);
      (v58[1])(v66, v51);
    }

    sub_1B6984D38(v63, sub_1B6992BDC);
    v69 = v93;
    goto LABEL_20;
  }

  v34 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  sub_1B699A32C(v28 + v34, v22, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = *v22;
    v87 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
    v84 = *(a1 + 88);
    v45 = qword_1EDBC9F60;

    v86 = v44;

    if (v45 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B6984D38(v22, type metadata accessor for SessionManager.SessionState);
  }

LABEL_6:
  v36 = swift_allocObject();
  type metadata accessor for Tracker.Token();
  *(v36 + 16) = swift_allocObject();
  type metadata accessor for AccessTracker();
  v37 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v37[3] = 0;
  v37[4] = 0;
  v37[5] = sub_1B6A55214;
  v37[6] = 0;
  v38 = swift_allocObject();
  v39 = v100;
  v40 = v101;
  v38[2] = a1;
  v38[3] = v39;
  v38[4] = v40;
  v38[5] = v36;
  type metadata accessor for SessionObserver();
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v41[3] = v37;
  v41[4] = sub_1B6A57764;
  v41[5] = v38;
  result = swift_beginAccess();
  if (!*(v36 + 16))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  swift_unknownObjectWeakAssign();
  v43 = swift_unknownObjectWeakLoadStrong();

  if (!v43)
  {
  }

  sub_1B6A04C10(v41);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B6A52C50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v90 = a6;
  v94 = a5;
  v95 = a3;
  v92 = a4;
  v93 = a1;
  v96 = a2;
  v6 = sub_1B6AB90F0();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB8E40();
  v91 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v77 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v77 - v25;
  v27 = type metadata accessor for SessionObserverChange(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B699A32C(v96, v29, type metadata accessor for SessionObserverChange);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1B6984D38(v29, type metadata accessor for SessionObserverChange);
  }

  v83 = v15;
  v84 = v26;
  v85 = v24;
  v31 = v13;
  v78 = v21;
  v96 = v11;
  v32 = v91;
  v86 = v17;
  v33 = *v29;
  v34 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
  v79 = *(v95 + 88);
  v80 = v10;
  v35 = qword_1EDBC9F60;

  v82 = v33;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v37 = v96;
  v77 = v31;
  v81 = v97;
  if (v97)
  {
    v38 = *(v32 + 16);
    v39 = v84;
    v38(v84, v97 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v96);
    v40 = *(v32 + 56);
    v40(v39, 0, 1, v37);
  }

  else
  {
    v40 = *(v32 + 56);
    v39 = v84;
    v40(v84, 1, 1, v96);
    v38 = *(v32 + 16);
  }

  v91 = v34;
  v41 = v85;
  v38(v85, v95 + v34, v37);
  v40(v41, 0, 1, v37);
  v42 = *(v83 + 48);
  v43 = MEMORY[0x1E69695A8];
  v44 = MEMORY[0x1E69E6720];
  v45 = v86;
  sub_1B6992ADC(v39, v86, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
  v46 = v45 + v42;
  v47 = v45;
  v48 = v96;
  sub_1B6992ADC(v41, v46, &qword_1EDBCAF50, v43, v44, sub_1B6A56C3C);
  v49 = *(v32 + 48);
  if (v49(v47, 1, v48) == 1)
  {
    v50 = v48;
    v51 = MEMORY[0x1E69695A8];
    v52 = MEMORY[0x1E69E6720];
    sub_1B6A5718C(v41, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    v53 = v51;
    v54 = v86;
    sub_1B6A5718C(v39, &qword_1EDBCAF50, v53, v52);
    if (v49(v54 + v42, 1, v50) == 1)
    {
      sub_1B6A5718C(v54, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      v92(v93, v82);
LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v55 = v78;
  sub_1B6992ADC(v47, v78, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B6A56C3C);
  if (v49(v47 + v42, 1, v48) == 1)
  {
    v56 = MEMORY[0x1E69695A8];
    v57 = v55;
    v58 = MEMORY[0x1E69E6720];
    sub_1B6A5718C(v85, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    v59 = v48;
    v54 = v86;
    sub_1B6A5718C(v39, &qword_1EDBCAF50, v56, v58);
    (*(v32 + 8))(v57, v59);
LABEL_13:
    v84 = v36;
    sub_1B6984D38(v54, sub_1B6992BDC);
    v60 = v92;
    v62 = v88;
    v61 = v89;
    v63 = v87;
    goto LABEL_14;
  }

  v84 = v36;
  v70 = v77;
  (*(v32 + 32))(v77, v47 + v42, v48);
  sub_1B6A576C8(&qword_1EDBCA470, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v71 = sub_1B6AB92A0();
  v72 = *(v32 + 8);
  v72(v70, v48);
  v73 = v55;
  v74 = MEMORY[0x1E69695A8];
  v75 = MEMORY[0x1E69E6720];
  sub_1B6A5718C(v85, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  sub_1B6A5718C(v39, &qword_1EDBCAF50, v74, v75);
  v72(v73, v48);
  sub_1B6A5718C(v47, &qword_1EDBCAF50, v74, v75);
  v60 = v92;
  v62 = v88;
  v61 = v89;
  v63 = v87;
  if (v71)
  {
    v92(v93, v82);
    goto LABEL_18;
  }

LABEL_14:
  v64 = v80;
  sub_1B699A32C(v95 + v91, v80, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for LazyDiagnosticStatus(0);
  v65 = swift_allocObject();
  *(v65 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v66 = v79;
  v67 = *&v79[OBJC_IVAR___AAAccessQueue_queue];
  *v63 = v67;
  (*(v62 + 104))(v63, *MEMORY[0x1E69E8020], v61);
  v68 = v67;
  LOBYTE(v67) = sub_1B6AB9110();
  result = (*(v62 + 8))(v63, v61);
  if (v67)
  {
    sub_1B6A57770(v64, v65 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);
    *(v65 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v66;
    v97 = v65;
    sub_1B6A56C3C(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
    v69 = v66;

    swift_task_localValuePush();
    v60(v93, v82);
    swift_task_localValuePop();

LABEL_19:

    v76 = v90;
    swift_beginAccess();
    *(v76 + 16) = 0;
  }

  __break(1u);
  return result;
}