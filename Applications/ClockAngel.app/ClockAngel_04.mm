uint64_t sub_10007928C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_10007932C, 0, 0);
}

uint64_t sub_10007932C()
{
  v0[6] = *(v0[2] + 16);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000793DC;
  v3 = v0[3];
  v2 = v0[4];

  return TimerViewModel.pauseResumeTimer(_:)(v3, v2);
}

uint64_t sub_1000793DC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10007F054;
  }

  else
  {

    v2 = sub_1000794F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000794F8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_100075B64(0, 0, v2, &unk_1000D5110, v6);

  v7 = v0[1];

  return v7();
}

double sub_100079614(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v17 = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v10._object = 0x80000001000DAED0;
  v10._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  [v9 logInfo:v12];

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;

  sub_100075E54(0, 0, v8, &unk_1000D50F8, v14);

  return result;
}

uint64_t sub_1000797F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100079818, 0, 0);
}

uint64_t sub_100079818()
{
  v0[5] = *(v0[2] + 16);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100076D68;
  v3 = v0[3];
  v2 = v0[4];

  return TimerViewModel.stopTimer(_:)(v3, v2);
}

double sub_1000798C8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v17 = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v10._object = 0x80000001000DAE70;
  v10._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  [v9 logInfo:v12];

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;

  sub_100075E54(0, 0, v8, &unk_1000D50D8, v14);

  return result;
}

uint64_t sub_100079AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_100079B48, 0, 0);
}

uint64_t sub_100079B48()
{
  v0[6] = *(v0[2] + 16);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100079BF8;
  v3 = v0[3];
  v2 = v0[4];

  return TimerViewModel.repeatTimer(_:)(v3, v2);
}

uint64_t sub_100079BF8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10007F054;
  }

  else
  {

    v2 = sub_100079D14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100079D14()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_100075B64(0, 0, v2, &unk_1000D3288, v6);

  v7 = v0[1];

  return v7();
}

double sub_100079E30(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v17 = v2;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v10._object = 0x80000001000DAE40;
  v10._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12 = String._bridgeToObjectiveC()();

  [v9 logInfo:v12];

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v3;
  v14[5] = a1;
  v14[6] = a2;

  sub_100075E54(0, 0, v8, &unk_1000D50C8, v14);

  return result;
}

uint64_t sub_10007A010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10007A034, 0, 0);
}

uint64_t sub_10007A034()
{
  v0[5] = *(v0[2] + 16);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100076D68;
  v3 = v0[3];
  v2 = v0[4];

  return TimerViewModel.dismissTimer(_:)(v3, v2);
}

uint64_t sub_10007A0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_10007A180, 0, 0);
}

uint64_t sub_10007A180()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for TaskPriority();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_10007AC90(v1, &unk_1000D5048, v5);
  sub_10002D02C(v1, &unk_100115E10, &qword_1000D27F0);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_10007AC90(v1, &unk_1000D5058, v6);
  sub_10002D02C(v1, &unk_100115E10, &qword_1000D27F0);
  v4(v1, 1, 1, v3);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_10007AC90(v1, &unk_1000D5068, v7);
  sub_10002D02C(v1, &unk_100115E10, &qword_1000D27F0);
  v4(v1, 1, 1, v3);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_10007AC90(v1, &unk_1000D5078, v8);
  sub_10002D02C(v1, &unk_100115E10, &qword_1000D27F0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10007A410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for AlarmPresentationState();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = sub_1000032D4(&qword_100117470, &qword_1000D5090);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = sub_1000032D4(&qword_100117478, &qword_1000D5098);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10007A5D8, 0, 0);
}

uint64_t sub_10007A5D8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  TimerViewModel.timersUpdatedStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[25] = 0;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_10007A6E8;
  v5 = v0[22];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v5);
}

uint64_t sub_10007A6E8()
{

  return _swift_task_switch(sub_10007A7E4, 0, 0);
}

uint64_t sub_10007A7E4()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      v36 = v1;
      v37 = v1 & 0xC000000000000001;
      v5 = v0[25];
      v34 = i;
      v35 = v2;
      while (1)
      {
        if (v37)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_25;
          }

          v10 = *(v1 + 8 * v4 + 32);
        }

        v11 = v10;
        v12 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v13 = v0[14];
        v14 = objc_opt_self();
        v0[9] = 0;
        v0[10] = 0xE000000000000000;
        _StringGuts.grow(_:)(41);
        v15 = v0[10];
        v0[7] = v0[9];
        v0[8] = v15;
        v0[12] = v13;
        type metadata accessor for TimerCoordinator();
        _print_unlocked<A, B>(_:_:)();
        v16._object = 0x80000001000DAD40;
        v16._countAndFlagsBits = 0xD000000000000025;
        String.append(_:)(v16);
        v17 = [v11 timerIDString];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21._countAndFlagsBits = v18;
        v21._object = v20;
        String.append(_:)(v21);

        v22 = String._bridgeToObjectiveC()();

        [v14 logInfo:v22];

        v0[5] = &type metadata for ClockFeatureFlags;
        v0[6] = sub_10004DECC();
        *(v0 + 16) = 0;
        LOBYTE(v17) = isFeatureEnabled(_:)();
        sub_100017D28(v0 + 2);
        if (v17)
        {
          v6 = v11;
          AlarmPresentationState.init(_:)();
          if (v5)
          {
            v7 = v0[16];
            v8 = v0[17];
            v9 = v0[15];

            (*(v8 + 56))(v9, 1, 1, v7);
            sub_10002D02C(v9, &unk_100115DA0, &unk_1000D3220);
          }

          else
          {
            v24 = v0[17];
            v23 = v0[18];
            v26 = v0[15];
            v25 = v0[16];
            (*(v24 + 56))(v26, 0, 1, v25);
            (*(v24 + 32))(v23, v26, v25);
            if (qword_100113608 != -1)
            {
              swift_once();
            }

            v28 = v0[17];
            v27 = v0[18];
            v29 = v0[16];
            dispatch thunk of DataStore.updateEntry(_:)();

            (*(v28 + 8))(v27, v29);
          }

          v5 = 0;
        }

        else
        {
          if (qword_1001135F8 != -1)
          {
            swift_once();
          }

          v0[13] = v11;
          dispatch thunk of DataStore.updateEntry(_:)();
        }

        v2 = v35;
        v1 = v36;
        ++v4;
        if (v12 == v34)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v5 = v0[25];
LABEL_28:

    v0[25] = v5;
    v32 = swift_task_alloc();
    v0[26] = v32;
    *v32 = v0;
    v32[1] = sub_10007A6E8;
    v33 = v0[22];

    return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v33);
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v30 = v0[1];

    return v30();
  }
}

double sub_10007AC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_10007E254(a1, v20 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002D02C(v10, &unk_100115E10, &qword_1000D27F0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();

  return result;
}

uint64_t sub_10007AE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_1000032D4(&qword_100117470, &qword_1000D5090);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v6 = sub_1000032D4(&qword_100117478, &qword_1000D5098);
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10007AFCC, 0, 0);
}

uint64_t sub_10007AFCC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  TimerViewModel.timersRemovedStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[34] = v4;
  *v4 = v0;
  v4[1] = sub_10007B0D4;
  v5 = v0[31];

  return AsyncStream.Iterator.next(isolation:)(v0 + 25, 0, 0, v5);
}

uint64_t sub_10007B0D4()
{

  return _swift_task_switch(sub_10007B1D0, 0, 0);
}

uint64_t sub_10007B1D0()
{
  v1 = v0[25];
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      v30 = v2;
      v31 = v1 & 0xC000000000000001;
      v28 = v1;
      v29 = i;
      while (1)
      {
        if (v31)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_22;
          }

          v7 = *(v1 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v10 = v0[27];
        v11 = objc_opt_self();
        v0[19] = 0;
        v0[20] = 0xE000000000000000;
        _StringGuts.grow(_:)(41);
        v12 = v0[20];
        v0[17] = v0[19];
        v0[18] = v12;
        v0[26] = v10;
        type metadata accessor for TimerCoordinator();
        _print_unlocked<A, B>(_:_:)();
        v13._object = 0x80000001000DAD10;
        v13._countAndFlagsBits = 0xD000000000000025;
        String.append(_:)(v13);
        v14 = [v8 timerIDString];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18._countAndFlagsBits = v15;
        v18._object = v17;
        String.append(_:)(v18);

        v19 = String._bridgeToObjectiveC()();

        [v11 logInfo:v19];

        v20 = [v8 timerIDString];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v0[5] = &type metadata for ClockFeatureFlags;
        v0[6] = sub_10004DECC();
        *(v0 + 16) = 0;
        LOBYTE(v20) = isFeatureEnabled(_:)();
        sub_100017D28(v0 + 2);
        if (v20)
        {
          if (qword_100113608 != -1)
          {
            swift_once();
          }

          v0[23] = v21;
          v0[24] = v23;
          v5 = v0 + 12;
        }

        else
        {
          if (qword_1001135F8 != -1)
          {
            swift_once();
          }

          v0[21] = v21;
          v0[22] = v23;
          v5 = v0 + 7;
        }

        AnyHashable.init<A>(_:)();
        dispatch thunk of DataStore.clear(for:)();
        v6 = v5;
        v1 = v28;

        sub_10004E3D4(v6);
        ++v4;
        v2 = v30;
        if (v9 == v29)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    v26 = swift_task_alloc();
    v0[34] = v26;
    *v26 = v0;
    v26[1] = sub_10007B0D4;
    v27 = v0[31];

    return AsyncStream.Iterator.next(isolation:)(v0 + 25, 0, 0, v27);
  }

  else
  {
    (*(v0[32] + 8))(v0[33], v0[31]);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_10007B5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for AlarmPresentationState();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_1000032D4(&qword_100117470, &qword_1000D5090);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = sub_1000032D4(&qword_100117478, &qword_1000D5098);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_10007B7B8, 0, 0);
}

uint64_t sub_10007B7B8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  TimerViewModel.timersAddedStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[26] = 0;
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_10007B8C8;
  v5 = v0[23];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v5);
}

uint64_t sub_10007B8C8()
{

  return _swift_task_switch(sub_10007B9C4, 0, 0);
}

uint64_t sub_10007B9C4()
{
  v2 = (v0 + 88);
  v1 = *(v0 + 88);
  if (!v1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v50 = *(v0 + 8);

    return v50();
  }

  v3 = *(v0 + 120);
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  *(v0 + 96) = v3;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  type metadata accessor for TimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v6._object = 0x80000001000DACE0;
  v6._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v6);
  v7 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v57 = v2;
    v53 = v7;
    if (i)
    {
      *(v2 + 2) = &_swiftEmptyArrayStorage;
      v9 = sub_10007DE94(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return AsyncStream.Iterator.next(isolation:)(v9, v10, v11, v12);
      }

      v13 = 0;
      v14 = *(v2 + 2);
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v1 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = [v15 timerIDString];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        *(v57 + 2) = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_10007DE94((v21 > 1), v22 + 1, 1);
          v14 = *(v57 + 2);
        }

        ++v13;
        *(v14 + 16) = v22 + 1;
        v23 = v14 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (i != v13);
    }

    v24 = objc_opt_self();
    v25 = Array.description.getter();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29 = String._bridgeToObjectiveC()();

    [v24 logInfo:v29];

    if (v53)
    {
      break;
    }

    v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v30 = v57;
    if (!v7)
    {
      goto LABEL_36;
    }

LABEL_15:
    v31 = 0;
    v2 = v30 - 72;
    v32 = v1 & 0xC000000000000001;
    v55 = v1;
    v56 = v1 & 0xFFFFFFFFFFFFFF8;
    v33 = *(v0 + 208);
    v54 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v32)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *(v56 + 16))
        {
          goto LABEL_41;
        }

        v39 = *(v1 + 8 * v31 + 32);
      }

      v40 = v39;
      v41 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      *(v0 + 40) = &type metadata for ClockFeatureFlags;
      *(v0 + 48) = sub_10004DECC();
      *(v0 + 16) = 0;
      v42 = isFeatureEnabled(_:)();
      sub_100017D28(v2);
      if (v42)
      {
        v34 = v7;
        v35 = v40;
        AlarmPresentationState.init(_:)();
        if (v33)
        {
          v37 = *(v0 + 136);
          v36 = *(v0 + 144);
          v38 = *(v0 + 128);

          (*(v36 + 56))(v38, 1, 1, v37);
          sub_10002D02C(v38, &unk_100115DA0, &unk_1000D3220);
        }

        else
        {
          v43 = *(v0 + 144);
          v44 = *(v0 + 152);
          v46 = *(v0 + 128);
          v45 = *(v0 + 136);
          (*(v43 + 56))(v46, 0, 1, v45);
          (*(v43 + 32))(v44, v46, v45);
          if (qword_100113608 != -1)
          {
            swift_once();
          }

          v47 = *(v0 + 144);
          v48 = *(v0 + 152);
          v49 = *(v0 + 136);
          dispatch thunk of DataStore.updateEntry(_:)();

          (*(v47 + 8))(v48, v49);
        }

        v33 = 0;
        v7 = v34;
        v32 = v54;
        v1 = v55;
      }

      else
      {
        if (qword_1001135F8 != -1)
        {
          swift_once();
        }

        *(v57 + 3) = v40;
        dispatch thunk of DataStore.updateEntry(_:)();
      }

      ++v31;
      if (v41 == v7)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  v30 = v57;
  if (v7)
  {
    goto LABEL_15;
  }

LABEL_36:
  v33 = *(v0 + 208);
LABEL_37:

  *(v0 + 208) = v33;
  v52 = swift_task_alloc();
  *(v0 + 216) = v52;
  *v52 = v0;
  v52[1] = sub_10007B8C8;
  v12 = *(v0 + 184);
  v9 = v57;
  v10 = 0;
  v11 = 0;

  return AsyncStream.Iterator.next(isolation:)(v9, v10, v11, v12);
}

uint64_t sub_10007BF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for AlarmPresentationState();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = sub_1000032D4(&qword_100117460, &qword_1000D5080);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = sub_1000032D4(&qword_100117468, &qword_1000D5088);
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10007C140, 0, 0);
}

uint64_t sub_10007C140()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  TimerViewModel.timerFiredStream.getter();

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[25] = 0;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_10007C250;
  v5 = v0[22];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v5);
}

uint64_t sub_10007C250()
{

  return _swift_task_switch(sub_10007C34C, 0, 0);
}

uint64_t sub_10007C34C()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[14];
    v3 = objc_opt_self();
    v0[9] = 0;
    v0[10] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v4 = v0[10];
    v0[7] = v0[9];
    v0[8] = v4;
    v0[12] = v2;
    type metadata accessor for TimerCoordinator();
    _print_unlocked<A, B>(_:_:)();
    v5._object = 0x80000001000DACB0;
    v5._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v5);
    v6 = [v1 timerIDString];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    v11 = String._bridgeToObjectiveC()();

    [v3 logInfo:v11];

    v0[5] = &type metadata for ClockFeatureFlags;
    v12 = sub_10004DECC();
    *(v0 + 16) = 0;
    v0[6] = v12;
    LOBYTE(v3) = isFeatureEnabled(_:)();
    sub_100017D28(v0 + 2);
    if (v3)
    {
      v13 = v0[25];
      v14 = v1;
      AlarmPresentationState.init(_:)();
      if (v13)
      {
        v15 = v0[16];
        v16 = v0[17];
        v17 = v0[15];

        (*(v16 + 56))(v17, 1, 1, v15);
        sub_10002D02C(v17, &unk_100115DA0, &unk_1000D3220);
      }

      else
      {
        v22 = v0[17];
        v21 = v0[18];
        v24 = v0[15];
        v23 = v0[16];
        (*(v22 + 56))(v24, 0, 1, v23);
        (*(v22 + 32))(v21, v24, v23);
        if (qword_100113608 != -1)
        {
          swift_once();
        }

        v26 = v0[17];
        v25 = v0[18];
        v27 = v0[16];
        dispatch thunk of DataStore.updateEntry(_:)();
        (*(v26 + 8))(v25, v27);
      }

      v20 = 0;
    }

    else
    {
      if (qword_1001135F8 != -1)
      {
        swift_once();
      }

      v0[13] = v1;
      dispatch thunk of DataStore.updateEntry(_:)();

      v20 = v0[25];
    }

    v0[25] = v20;
    v28 = swift_task_alloc();
    v0[26] = v28;
    *v28 = v0;
    v28[1] = sub_10007C250;
    v29 = v0[22];

    return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v29);
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10007C764(uint64_t a1)
{
  type metadata accessor for AlarmAndTimerCoordinator();
  v1 = swift_allocObject();
  type metadata accessor for AlarmManager();
  result = static AlarmManager.shared.getter();
  *(v1 + 16) = result;
  qword_10011F508 = v1;
  return result;
}

uint64_t sub_10007C7B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 168) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for Alarm.State();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  sub_1000032D4(&qword_100117488, &qword_1000D50B8);
  *(v6 + 88) = swift_task_alloc();
  v8 = type metadata accessor for Alarm();
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10007C91C, 0, 0);
}

uint64_t sub_10007C91C(uint64_t a1)
{
  if (*(v1 + 168))
  {
    goto LABEL_9;
  }

  v2 = *(v1 + 24);
  if (v2 != 1)
  {
    if (!v2)
    {
      if (qword_100113620 != -1)
      {
        swift_once();
      }

      v3 = UUID.uuidString.getter();
      v5 = v4;
      *(v1 + 120) = v4;
      v6 = swift_task_alloc();
      *(v1 + 128) = v6;
      *v6 = v1;
      v6[1] = sub_10007CD3C;

      return sub_1000765F0(v3, v5);
    }

LABEL_9:
    v8 = *(v1 + 40);
    if (v8)
    {
      v9 = AlarmManager.allAlarms.getter();
      v14 = v9;
      if (*(v9 + 16) && (v15 = sub_100068450(*(v1 + 32), v8), (v16 & 1) != 0))
      {
        v17 = *(v1 + 96);
        v18 = *(v1 + 104);
        v19 = *(v1 + 88);
        v20 = *(v1 + 16);
        v21 = *(*(v14 + 56) + 8 * v15);

        *(swift_task_alloc() + 16) = v20;
        sub_100075990(sub_10007E77C, v21, v19);

        if ((*(v18 + 48))(v19, 1, v17) != 1)
        {
          v23 = *(v1 + 104);
          v22 = *(v1 + 112);
          v24 = *(v1 + 96);
          v26 = *(v1 + 72);
          v25 = *(v1 + 80);
          v27 = *(v1 + 56);
          v28 = *(v1 + 64);
          (*(v23 + 32))(v22, *(v1 + 88), v24);
          Alarm.state.getter();
          (*(v28 + 104))(v26, enum case for Alarm.State.alerting(_:), v27);
          v29 = static Alarm.State.== infix(_:_:)();
          v30 = *(v28 + 8);
          v30(v26, v27);
          v30(v25, v27);
          (*(v23 + 8))(v22, v24);
LABEL_23:

          v31 = *(v1 + 8);

          return v31(v29 & 1);
        }
      }

      else
      {

        (*(*(v1 + 104) + 56))(*(v1 + 88), 1, 1, *(v1 + 96));
      }

      sub_10002D02C(*(v1 + 88), &qword_100117488, &qword_1000D50B8);
    }

    v29 = 0;
    goto LABEL_23;
  }

  if (qword_100113628 != -1)
  {
    swift_once();
  }

  v10 = UUID.uuidString.getter();
  v12 = v11;
  *(v1 + 144) = v11;
  v13 = swift_task_alloc();
  *(v1 + 152) = v13;
  *v13 = v1;
  v13[1] = sub_10007CF10;

  return sub_1000786AC(v10, v12);
}

uint64_t sub_10007CD3C(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10007CE5C, 0, 0);
}

uint64_t sub_10007CE5C()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = [*(v0 + 136) isFiring];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10007CF10(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10007D030, 0, 0);
}

uint64_t sub_10007D030()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 160) isFiring];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10007D0E4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Alarm.id.getter();
  v6 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void sub_10007D234(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for AlarmActionType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 0xD000000000000015 && 0x80000001000D7F20 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = objc_opt_self();
    v15[1] = 0;
    v15[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v10._countAndFlagsBits = 0xD000000000000030;
    v10._object = 0x80000001000DADE0;
    String.append(_:)(v10);
    type metadata accessor for UUID();
    sub_10007E734(&qword_100118110, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0xD000000000000010;
    v12._object = 0x80000001000DAE20;
    String.append(_:)(v12);
    v13._countAndFlagsBits = a2;
    v13._object = a3;
    String.append(_:)(v13);
    v15[0] = String._bridgeToObjectiveC()();

    [v9 logError:v15[0]];
    v14 = v15[0];
  }

  else
  {
    (*(v6 + 104))(v8, enum case for AlarmActionType.secondary(_:), v5);
    AlarmManager.executeIntent(id:ownerID:actionType:)();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_10007D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    goto LABEL_7;
  }

  if (a4 != 1)
  {
    if (!a4)
    {
      v5 = objc_opt_self();
      _StringGuts.grow(_:)(49);

      type metadata accessor for UUID();
      sub_10007E734(&qword_100118110, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v6);

      v9 = String._bridgeToObjectiveC()();

      [v5 logError:v9];

      return;
    }

LABEL_7:
    AlarmManager.pause(id:ownerID:)();
    return;
  }

  if (qword_100113628 != -1)
  {
    swift_once();
  }

  v7 = UUID.uuidString.getter();
  sub_100078B44(v7, v8);
}

void sub_10007D6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    goto LABEL_7;
  }

  if (a4 != 1)
  {
    if (!a4)
    {
      v5 = objc_opt_self();
      _StringGuts.grow(_:)(50);

      type metadata accessor for UUID();
      sub_10007E734(&qword_100118110, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v6);

      v9 = String._bridgeToObjectiveC()();

      [v5 logError:v9];

      return;
    }

LABEL_7:
    AlarmManager.resume(id:ownerID:)();
    return;
  }

  if (qword_100113628 != -1)
  {
    swift_once();
  }

  v7 = UUID.uuidString.getter();
  sub_1000790AC(v7, v8);
}

uint64_t sub_10007D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t), void (*a7)(uint64_t), unsigned int *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v22 = a7;
  v23 = a6;
  v24 = a9;
  v15 = type metadata accessor for AlarmActionType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    goto LABEL_7;
  }

  if (a4 == 1)
  {
    if (qword_100113628 != -1)
    {
      swift_once();
    }

    v21 = UUID.uuidString.getter();
    v22(v21);
    goto LABEL_11;
  }

  if (a4)
  {
LABEL_7:
    (*(v16 + 104))(v18, *a8, v15);
    AlarmManager.executeIntent(id:ownerID:actionType:)();
    (*(v16 + 8))(v18, v15);
    return v24(a1, a2, a3);
  }

  if (qword_100113620 != -1)
  {
    swift_once();
  }

  v19 = UUID.uuidString.getter();
  v23(v19);
LABEL_11:
}

uint64_t sub_10007DBAC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007F0A0;

  return v6(a1);
}

uint64_t sub_10007DCA4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10007DD9C;

  return v6(a1);
}

uint64_t sub_10007DD9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_10007DE94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10007DEB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007DEB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000032D4(&qword_100117480, &qword_1000D50A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10007DFC0(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v4 = *(v1 + 8 * i + 32);
        }

        v5 = v4;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v7 = [v4 alarmIDString];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v8[3] = &type metadata for ClockFeatureFlags;
        v8[4] = sub_10004DECC();
        LOBYTE(v8[0]) = 0;
        LOBYTE(v7) = isFeatureEnabled(_:)();
        sub_100017D28(v8);
        if (v7)
        {
          if (qword_100113608 == -1)
          {
            goto LABEL_5;
          }

LABEL_14:
          swift_once();
          goto LABEL_5;
        }

        if (qword_100113600 != -1)
        {
          goto LABEL_14;
        }

LABEL_5:
        AnyHashable.init<A>(_:)();
        dispatch thunk of DataStore.clear(for:)();

        result = sub_10004E3D4(v8);
        if (v6 == v2)
        {
          return result;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = _CocoaArrayWrapper.endIndex.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10007E1A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_100078188(a1, v4, v5, v6);
}

uint64_t sub_10007E254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E2C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007E2FC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10004F014;

  return sub_10007A0E4(a1, a2, v2);
}

uint64_t sub_10007E3A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_10007A410(a1, v4, v5, v6);
}

uint64_t sub_10007E45C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_10007AE98(a1, v4, v5, v6);
}

uint64_t sub_10007E510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_10007B5F0(a1, v4, v5, v6);
}

uint64_t sub_10007E5C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10004F014;

  return sub_10007BF78(a1, v4, v5, v6);
}

uint64_t sub_10007E67C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004F014;

  return sub_10007DCA4(a1, v4);
}

uint64_t sub_10007E734(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10007E79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_10007A010(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007E864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100079AA8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007E92C(void *a1, void (*a2)(void *), void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-1] - v9;
  v11 = type metadata accessor for AlarmPresentationState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = &type metadata for ClockFeatureFlags;
  v18[4] = sub_10004DECC();
  LOBYTE(v18[0]) = 0;
  v15 = isFeatureEnabled(_:)();
  sub_100017D28(v18);
  if (v15)
  {
    a2(a1);
    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v14, v10, v11);
    if (qword_100113608 != -1)
    {
      swift_once();
    }

    dispatch thunk of DataStore.updateEntry(_:)();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    if (*a3 != -1)
    {
      swift_once();
    }

    v18[0] = a1;
    return dispatch thunk of DataStore.updateEntry(_:)();
  }
}

uint64_t sub_10007EBA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_1000797F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007EC6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_10007928C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007ED34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100078D24(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007EDFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_1000774EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007EEC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100031D4C;

  return sub_100077084(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10007EF8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10004F014;

  return sub_100076C80(a1, v4, v5, v6, v7, v8);
}

void sub_10007F0C0()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_40;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  [v3 setBackgroundColor:v5];

  v6 = OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView])
  {
    v99 = &type metadata for StandbyConfig;
    v100 = &off_100101E48;
    type metadata accessor for ObservableStopwatchModel(0);
    sub_10006548C();

    v97 = ObservedObject.init(wrappedValue:)();
    v98 = v7;
    v8 = objc_allocWithZone(sub_1000032D4(&unk_100119A40, &qword_1000D5228));
    *&v8[*((swift_isaMask & *v8) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_1000819D0(&v97, v96);
    v9 = UIHostingController.init(rootView:)();
    sub_100081A2C(&v97);
    v10 = v9;
    v11 = [v10 view];
    if (!v11)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v12 = v11;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [v10 view];
    if (!v13)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v14 = v13;
    v15 = [v13 layer];

    [v15 setAllowsHitTesting:0];
    v16 = [v10 view];
    if (!v16)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v17 = v16;
    v18 = [v4 clearColor];
    [v17 setBackgroundColor:v18];

    [v1 addChildViewController:v10];
    v19 = [v1 view];
    if (!v19)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v20 = v19;
    v21 = [v10 view];

    if (!v21)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    [v20 addSubview:v21];

    [v10 didMoveToParentViewController:v1];
    v22 = *&v1[v6];
    *&v1[v6] = v10;
  }

  v23 = OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView;
  v24 = *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView];
  if (v24)
  {
    goto LABEL_16;
  }

  v99 = &type metadata for StandbyConfig;
  v100 = &off_100101E48;
  type metadata accessor for ObservableStopwatchModel(0);
  sub_10006548C();

  v97 = ObservedObject.init(wrappedValue:)();
  v98 = v25;
  v26 = objc_allocWithZone(sub_1000032D4(&unk_100117520, &unk_1000D5230));
  *&v26[*((swift_isaMask & *v26) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_100081A80(&v97, v96);
  v27 = UIHostingController.init(rootView:)();
  sub_100081ADC(&v97);
  v28 = v27;
  v29 = [v28 view];
  if (!v29)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v30 = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = [v28 view];
  if (!v31)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v32 = v31;
  v33 = [v31 layer];

  [v33 setAllowsHitTesting:0];
  v34 = [v28 view];
  if (!v34)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v35 = v34;
  v36 = [v4 clearColor];
  [v35 setBackgroundColor:v36];

  [v1 addChildViewController:v28];
  v37 = [v1 view];
  if (!v37)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v38 = v37;
  v39 = [v28 view];

  if (!v39)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  [v38 addSubview:v39];

  [v28 didMoveToParentViewController:v1];
  v40 = *&v1[v23];
  *&v1[v23] = v28;

  v24 = *&v1[v23];
  if (v24)
  {
LABEL_16:
    v41 = [v24 view];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 leadingAnchor];

      sub_100081B30();
      sub_1000032D4(&qword_100115480, &qword_1000D2510);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1000D5170;
      v45 = *&v1[v23];
      if (v45)
      {
        v46 = [v45 view];
        if (v46)
        {
          v47 = v46;
          v48 = [v46 leadingAnchor];

          v49 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton];
          if (v49)
          {
            v50 = [v49 trailingAnchor];
            v51 = [v48 constraintEqualToAnchor:v50 constant:17.0];

            *(v44 + 32) = v51;
            v52 = *&v1[v23];
            if (v52)
            {
              v53 = [v52 view];
              if (v53)
              {
                v54 = v53;
                v55 = [v53 trailingAnchor];

                v56 = [v1 view];
                if (v56)
                {
                  v57 = v56;
                  v58 = [v56 trailingAnchor];

                  v59 = [v55 constraintEqualToAnchor:v58 constant:-56.0];
                  *(v44 + 40) = v59;
                  v60 = *&v1[v23];
                  if (v60)
                  {
                    v61 = [v60 view];
                    if (v61)
                    {
                      v62 = v61;
                      v63 = [v61 centerYAnchor];

                      v64 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton];
                      if (v64)
                      {
                        v65 = [v64 centerYAnchor];
                        v66 = [v63 constraintEqualToAnchor:v65];

                        *(v44 + 48) = v66;
                        v67 = *&v1[v6];
                        if (v67)
                        {
                          v68 = [v67 view];
                          if (v68)
                          {
                            v69 = v68;
                            v70 = [v68 trailingAnchor];

                            v71 = *&v1[v23];
                            if (v71)
                            {
                              v72 = [v71 view];
                              if (v72)
                              {
                                v73 = v72;
                                v74 = [v72 trailingAnchor];

                                v75 = [v70 constraintEqualToAnchor:v74];
                                *(v44 + 56) = v75;
                                v76 = *&v1[v6];
                                if (v76)
                                {
                                  v77 = [v76 view];
                                  if (v77)
                                  {
                                    v78 = v77;
                                    v79 = [v77 leadingAnchor];

                                    v80 = *&v1[v23];
                                    if (v80)
                                    {
                                      v81 = [v80 view];
                                      if (v81)
                                      {
                                        v82 = v81;
                                        v83 = [v81 leadingAnchor];

                                        v84 = [v79 constraintEqualToAnchor:v83];
                                        *(v44 + 64) = v84;
                                        v85 = *&v1[v6];
                                        if (v85)
                                        {
                                          v86 = [v85 view];
                                          if (v86)
                                          {
                                            v87 = v86;
                                            v88 = [v86 bottomAnchor];

                                            v89 = *&v1[v23];
                                            if (v89)
                                            {
                                              v90 = [v89 view];
                                              if (v90)
                                              {
                                                v91 = v90;
                                                v92 = objc_opt_self();
                                                v93 = [v91 topAnchor];

                                                v94 = [v88 constraintEqualToAnchor:v93];
                                                *(v44 + 72) = v94;
                                                sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
                                                isa = Array._bridgeToObjectiveC()().super.isa;

                                                [v92 activateConstraints:isa];

                                                return;
                                              }

                                              goto LABEL_61;
                                            }

LABEL_60:
                                            __break(1u);
LABEL_61:
                                            __break(1u);
                                            goto LABEL_62;
                                          }

LABEL_59:
                                          __break(1u);
                                          goto LABEL_60;
                                        }

LABEL_58:
                                        __break(1u);
                                        goto LABEL_59;
                                      }

LABEL_57:
                                      __break(1u);
                                      goto LABEL_58;
                                    }

LABEL_56:
                                    __break(1u);
                                    goto LABEL_57;
                                  }

LABEL_55:
                                  __break(1u);
                                  goto LABEL_56;
                                }

LABEL_54:
                                __break(1u);
                                goto LABEL_55;
                              }

LABEL_53:
                              __break(1u);
                              goto LABEL_54;
                            }

LABEL_52:
                            __break(1u);
                            goto LABEL_53;
                          }

LABEL_51:
                          __break(1u);
                          goto LABEL_52;
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

LABEL_47:
                  __break(1u);
                  goto LABEL_48;
                }

LABEL_46:
                __break(1u);
                goto LABEL_47;
              }

LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_72:
  __break(1u);
}

void sub_10007FB00()
{
  v1 = v0;
  v2 = [objc_opt_self() buttonWithType:0];
  v3 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton;
  v4 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton];
  *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = [objc_opt_self() systemGray4Color];
  [v5 setBackgroundColor:v6];

  v7 = *&v1[v3];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = *&v1[v3];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10002BB3C(0, &unk_100119080, UIAction_ptr);
  *(swift_allocObject() + 16) = v8;
  v9 = v8;
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = v9;
  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v12 addAction:v10 forControlEvents:{17, 0, 0, 0, sub_100082004, v11}];
  [v12 addAction:v13 forControlEvents:352];

  v14 = *&v1[v3];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 configurationWithPointSize:54.0];
  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() systemImageNamed:v18 withConfiguration:v17];

  [v16 setImage:v19 forState:0];
  v20 = *&v1[v3];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v20 setAdjustsImageWhenHighlighted:0];
  v21 = *&v1[v3];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = [v21 layer];
  [v22 setCornerRadius:57.0];

  v23 = *&v1[v3];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 mtOrange];
  [v25 setTintColor:v26];

  v27 = *&v1[v3];
  if (!v27)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = v27;
  v29 = [v24 mtOrange];
  v30 = [v29 colorWithAlphaComponent:0.35];

  [v28 setBackgroundColor:v30];
  v31 = *&v1[v3];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v31 addTarget:v1 action:"playPausedAction" forControlEvents:64];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!*&v1[v3])
  {
LABEL_25:
    __break(1u);
    return;
  }

  v33 = v32;
  [v32 addSubview:?];
}

void sub_10007FF74()
{
  v1 = v0;
  v2 = [objc_opt_self() buttonWithType:0];
  v3 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton;
  v4 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton];
  *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = *&v1[v3];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemGray4Color];
  [v8 setBackgroundColor:v9];

  v10 = *&v1[v3];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_10002BB3C(0, &unk_100119080, UIAction_ptr);
  *(swift_allocObject() + 16) = v10;
  v11 = v10;
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = v11;
  v30 = v13;
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v14 addAction:v12 forControlEvents:{17, 0, 0, 0, sub_100081998, v30}];
  [v14 addAction:v15 forControlEvents:352];

  v16 = *&v1[v3];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = [v16 layer];
  [v17 setCornerRadius:57.0];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!*&v1[v3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  [v18 addSubview:?];

  v20 = objc_allocWithZone(type metadata accessor for SpinnyResetView());
  v21 = sub_10005F050(0.0, 0.0, 114.0, 114.0, 54.0, 54.0);
  v22 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView;
  v23 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView];
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView] = v21;

  v24 = *&v1[v3];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v1;
  v26 = v1;
  v27 = v24;
  v31 = v25;
  v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v27 addAction:v28 forControlEvents:{64, 0, 0, 0, sub_1000819A0, v31}];

  v29 = *&v1[v3];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!*&v1[v22])
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v29 addSubview:?];
}

void sub_100080344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView);
  if (v2)
  {
    if ((*(v2 + OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode) & 1) == 0)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      v4 = objc_allocWithZone(UIViewPropertyAnimator);
      v8[4] = sub_100031BEC;
      v8[5] = v3;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10004B270;
      v8[3] = &unk_1001027A8;
      v5 = _Block_copy(v8);
      v6 = v2;

      v7 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:1.0];
      _Block_release(v5);
      [v7 startAnimation];
    }

    sub_10002E7E0();
  }

  else
  {
    __break(1u);
  }
}

void sub_100080494()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v2)
  {
    v3 = v2;
    v4 = dispatch thunk of StopwatchViewModel.getStopwatch()();

    v5 = [v4 state];
    if (v5 == 1)
    {
      v6 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton);
      if (v6)
      {
        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      return;
    }
  }

  v6 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton);
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_6:
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 configurationWithPointSize:54.0];
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  [v8 setImage:v11 forState:0];
}

void sub_100080654()
{
  v1 = *&v0[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = [v1 view];
  if (!v2)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  [v3 setHidden:v8 < 2];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 setNeedsLayout];

  v6 = [v0 view];
  if (v6)
  {
    v7 = v6;
    [v6 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_10008079C(void *a1)
{
  *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_glyphSize] = 0x404B000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_safeAreaPadding] = 0x404E000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_trailingEdgePadding] = 0x404C000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StopwatchStandbyController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100080874(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_glyphSize] = 0x404B000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_safeAreaPadding] = 0x404E000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_trailingEdgePadding] = 0x404C000000000000;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for StopwatchStandbyController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

void sub_100080954()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView);
}

void sub_100080A20()
{
  v1 = v0;
  v2 = sub_1000C5FC0();
  if (!v2)
  {
    v27 = objc_opt_self();
    _StringGuts.grow(_:)(58);
    v28 = [v0 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 0xD000000000000038;
    v33._object = 0x80000001000DB170;
    String.append(_:)(v33);
    isa = String._bridgeToObjectiveC()();

    [v27 logInfo:isa];
    goto LABEL_7;
  }

  v3 = v2;
  [v3 setAccessibilityIgnoresInvertColors:1];
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(50);
  v5 = [v0 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._object = 0x80000001000DB1B0;
  v6._countAndFlagsBits = 0xD000000000000030;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v4 logInfo:v7];

  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 addSubview:v3];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000D24B0;
  v11 = [v3 topAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor:v14 constant:4.0];
  *(v10 + 32) = v15;
  v16 = [v3 widthAnchor];
  v17 = [v16 constraintEqualToConstant:32.0];

  *(v10 + 40) = v17;
  v18 = [v3 heightAnchor];
  v19 = [v3 widthAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v10 + 48) = v20;
  v21 = [v3 centerXAnchor];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 centerXAnchor];

  v26 = [v21 constraintEqualToAnchor:v25];
  *(v10 + 56) = v26;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints:isa];

LABEL_7:
}

void sub_100080E9C(uint64_t a1, char a2, double a3, double a4, long double a5, double a6)
{
  v8 = a1;
  v20.receiver = v6;
  v20.super_class = type metadata accessor for StopwatchStandbyCompressedController();
  objc_msgSendSuper2(&v20, "didUpdateCurrentInterval:adjustedCurrentInterval:totalInterval:adjustedTotalInterval:isStopwatchRunning:isStopwatchStopped:", v8 & 1, a2 & 1, a3, a4, a5, a6);
  v13 = *&v6[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation];
  [objc_opt_self() setDisableActions:1];
  v14 = *(v13 + 32);
  if (v14)
  {
    v15 = 360.0 - fmod(a5, 60.0) / 60.0 * 360.0;
    v16 = objc_opt_self();
    v17 = v14;
    [v16 radFromDeg:v15];
    CATransform3DMakeRotation(&v19, v18, 0.0, 0.0, 1.0);
    [v17 setTransform:&v19];
  }
}

void sub_100081060(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StopwatchStandbyCompressedController();
  objc_msgSendSuper2(&v5, "didPauseLapTimer");
  v2 = *(*&v1[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation] + 16);
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    [v3 setState:v4];
  }
}

void sub_100081134(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StopwatchStandbyCompressedController();
  objc_msgSendSuper2(&v5, "didResumeLapTimer");
  v2 = *(*&v1[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation] + 16);
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    [v3 setState:v4];
  }
}

char *sub_10008120C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0x404E000000000000;
  *(v2 + v5) = v6;
  *(v2 + OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_elementSize) = 0x4040000000000000;
  *(v2 + OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_topMargin) = 0x4010000000000000;

  return sub_10002DC6C(a1, a2);
}

id sub_1000812A0(void *a1)
{
  v3 = OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_elementSize] = 0x4040000000000000;
  *(v4 + 48) = 0x404E000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_topMargin] = 0x4010000000000000;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StopwatchStandbyCompressedController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_100081380(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_minimalAnimation;
  type metadata accessor for StopwatchRunningAnimation();
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_elementSize] = 0x4040000000000000;
  *(v7 + 48) = 0x404E000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel36StopwatchStandbyCompressedController_topMargin] = 0x4010000000000000;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for StopwatchStandbyCompressedController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

uint64_t sub_10008147C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return a5(v7, v9, a4);
}

id sub_100081518(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100081584(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v12 = sub_1000819C8;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10004B270;
  v11 = &unk_100102870;
  v5 = _Block_copy(&v8);
  v6 = a2;

  v12 = Frame.timestamp.getter;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000C1688;
  v11 = &unk_100102898;
  v7 = _Block_copy(&v8);
  [v3 _animateUsingSpringWithDampingRatio:1 response:v5 tracking:v7 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  _Block_release(v7);
  _Block_release(v5);
}

id sub_100081700(void *a1)
{
  CGAffineTransformMakeScale(&v3, 0.9, 0.9);
  [a1 setTransform:&v3];
  return [a1 setAlpha:0.75];
}

void sub_100081774(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v12 = sub_1000819C0;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10004B270;
  v11 = &unk_1001027F8;
  v5 = _Block_copy(&v8);
  v6 = a2;

  v12 = Frame.timestamp.getter;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000C1688;
  v11 = &unk_100102820;
  v7 = _Block_copy(&v8);
  [v3 _animateUsingSpringWithDampingRatio:1 response:v5 tracking:v7 dampingRatioSmoothing:1.0 responseSmoothing:0.4 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
  _Block_release(v7);
  _Block_release(v5);
}

id sub_1000818EC(void *a1)
{
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  [a1 setTransform:v4];
  return [a1 setAlpha:1.0];
}

uint64_t sub_100081958()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000819A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100081B30()
{
  v1 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton;
  if (!*&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton])
  {
    sub_10007FB00();
    sub_10007FF74();
  }

  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D24C0;
  v3 = *&v0[v1];
  if (!v3)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = [v3 leadingAnchor];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v5;
  v7 = [v5 leadingAnchor];

  v8 = [v4 constraintEqualToAnchor:v7 constant:60.0];
  *(v2 + 32) = v8;
  v9 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton;
  v10 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton];
  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = [v10 leadingAnchor];
  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:20.0];

  *(v2 + 40) = v14;
  v15 = *&v0[v9];
  if (!v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = [v15 bottomAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = [v17 bottomAnchor];

  v20 = [v16 constraintEqualToAnchor:v19 constant:-60.0];
  *(v2 + 48) = v20;
  v21 = *&v0[v1];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = [v21 centerYAnchor];
  v23 = *&v0[v9];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = [v23 centerYAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];

  *(v2 + 56) = v25;
  v26 = *&v0[v1];
  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = [v26 widthAnchor];
  v28 = *&v0[v1];
  if (!v28)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = [v28 heightAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];

  *(v2 + 64) = v30;
  v31 = *&v0[v1];
  if (!v31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = [v31 widthAnchor];
  v33 = *&v0[v9];
  if (!v33)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v34 = [v33 widthAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];

  *(v2 + 72) = v35;
  v36 = *&v0[v1];
  if (!v36)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v37 = [v36 widthAnchor];
  v38 = *&v0[v9];
  if (!v38)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v39 = [v38 heightAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];

  *(v2 + 80) = v40;
  v41 = *&v0[v1];
  if (!v41)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v42 = objc_opt_self();
  v43 = [v41 widthAnchor];
  v44 = [v43 constraintEqualToConstant:114.0];

  *(v2 + 88) = v44;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];
}

id sub_1000821B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100082220()
{
  v1 = OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager____lazy_storage___interface;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager____lazy_storage___interface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager____lazy_storage___interface);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() interfaceWithIdentifier:v4];

    [v5 setClientMessagingExpectation:0];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1000822E4()
{
  result = [objc_allocWithZone(type metadata accessor for ClockAngelConnectionManager()) init];
  qword_10011F510 = result;
  return result;
}

void sub_100082314()
{
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_publicListener] = 0;
  *&v0[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connection] = 0;
  v16 = OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connectionManagerQueue;
  sub_100068040();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10008337C();
  sub_1000032D4(&unk_1001165E0, &qword_1000D3BA0);
  sub_1000833D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *&v0[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = &v0[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_reloadLayout];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v0[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager____lazy_storage___interface] = 0;
  *&v0[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager____lazy_storage___timerManager] = 0;
  v7 = type metadata accessor for ClockAngelConnectionManager();
  v21.receiver = v0;
  v21.super_class = v7;
  v8 = objc_msgSendSuper2(&v21, "init");
  v19 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100083438;
  *(v9 + 24) = &v18;
  aBlock[4] = sub_100083474;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100083470;
  aBlock[3] = &unk_100102AA0;
  v10 = _Block_copy(aBlock);
  v11 = objc_opt_self();
  v12 = v8;

  v13 = [v11 listenerWithConfigurator:v10];
  _Block_release(v10);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v14 = *&v12[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_publicListener];
    *&v12[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_publicListener] = v13;
    v15 = v13;

    if (v15)
    {
      [v15 activate];

      return;
    }
  }

  __break(1u);
}

id sub_1000826E4(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

void sub_1000827C8(void *a1, char *a2)
{
  [a1 setTargetQueue:*&a2[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connectionManagerQueue]];
  v4 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v4];

  v5 = sub_100082220();
  [a1 setInterface:v5];

  [a1 setInterfaceTarget:a2];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v19 = sub_100083364;
  v20 = v6;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100082B6C;
  v18 = &unk_1001029B0;
  v7 = _Block_copy(&v15);
  v8 = a2;

  [a1 setActivationHandler:v7];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v19 = sub_10008336C;
  v20 = v9;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100082B6C;
  v18 = &unk_100102A00;
  v10 = _Block_copy(&v15);
  v11 = v8;

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v19 = sub_100083374;
  v20 = v12;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100082B6C;
  v18 = &unk_100102A50;
  v13 = _Block_copy(&v15);
  v14 = v11;

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
}

void sub_100082A74(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  _StringGuts.grow(_:)(28);
  v4 = [a2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v5._object = 0x80000001000DB4A0;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v5);
  v6 = String._bridgeToObjectiveC()();

  [v3 logInfo:v6];
}

void sub_100082B6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100082BD4(uint64_t a1, char *a2)
{
  v3 = objc_opt_self();
  _StringGuts.grow(_:)(30);
  v4 = [a2 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._object = 0x80000001000DB480;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();

  [v3 logInfo:{v9, v5, v7}];

  v10 = *&a2[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connection];
  *&a2[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connection] = 0;
}

id sub_100082CDC(void *a1, void *a2)
{
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(30);
  v5 = [a2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._object = 0x80000001000DB460;
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  [v4 logInfo:{v10, v6, v8}];

  return [a1 activate];
}

uint64_t sub_100082DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_100082ED0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClockAngelConnectionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100082FB8(void *a1)
{
  v3 = [a1 remoteProcess];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 hasEntitlement:v4];

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_10008330C;
    *(v7 + 24) = v6;
    v22[4] = sub_100083324;
    v22[5] = v7;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_100083470;
    v22[3] = &unk_100102960;
    v8 = _Block_copy(v22);
    v9 = v1;

    [a1 configureConnection:v8];
    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }

    else
    {
      [a1 activate];
      v10 = *&v9[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connection];
      *&v9[OBJC_IVAR____TtC10ClockAngel27ClockAngelConnectionManager_connection] = a1;
      v11 = a1;
    }
  }

  else
  {
    v12 = objc_opt_self();
    _StringGuts.grow(_:)(53);
    v13._countAndFlagsBits = 0x202D20726F727265;
    v13._object = 0xE900000000000022;
    String.append(_:)(v13);
    v14 = [a1 remoteProcess];
    v15 = [v14 description];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0xD00000000000002ALL;
    v20._object = 0x80000001000DB3C0;
    String.append(_:)(v20);
    v21 = String._bridgeToObjectiveC()();

    [v12 logError:v21];

    [a1 invalidate];
  }
}

uint64_t sub_1000832D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10008334C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10008337C()
{
  result = qword_1001176E0;
  if (!qword_1001176E0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001176E0);
  }

  return result;
}

unint64_t sub_1000833D4()
{
  result = qword_1001176F0;
  if (!qword_1001176F0)
  {
    sub_10001C820(&unk_1001165E0, &qword_1000D3BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001176F0);
  }

  return result;
}

uint64_t sub_10008348C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008355C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100083634(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000836E8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v47 = a2;
  v3 = type metadata accessor for Font._StylisticAlternative();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v41[-v7];
  v45 = sub_1000032D4(&qword_100117860, &qword_1000D5320) - 8;
  __chkstk_darwin(v45);
  v10 = &v41[-v9];
  v46 = sub_1000032D4(&qword_100117868, &qword_1000D5328);
  __chkstk_darwin(v46);
  v12 = &v41[-v11];
  v13 = type metadata accessor for TimelineCountupView(0);
  v14 = v13[6];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 16))(&v10[v14], v2, v15);
  v16 = type metadata accessor for RunningCountupView(0);
  v17 = *(v2 + *(v16 + 24));
  KeyPath = swift_getKeyPath();
  *&v10[v13[5]] = swift_getKeyPath();
  sub_1000032D4(&qword_100117870, &qword_1000D5390);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ObservableStopwatchModel(0);
  sub_1000868D0(&qword_100116B20, type metadata accessor for ObservableStopwatchModel, &unk_1000D4168);
  v19 = EnvironmentObject.init()();
  v21 = v20;
  *v10 = KeyPath;
  v10[8] = 0;
  LOBYTE(KeyPath) = v42;
  v10[v13[7]] = v42;
  *&v10[v13[8]] = v17;
  static Calendar.current.getter();
  *&v10[v13[10]] = 1;
  v22 = &v10[v13[11]];
  *v22 = v19;
  v22[1] = v21;
  v23 = v2;
  v24 = type metadata accessor for Font.Design();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  static Font.system(size:weight:design:)();
  sub_10002D02C(v8, &qword_100113E08, &qword_1000D10F0);
  Font.monospacedDigit()();

  v26 = v43;
  v25 = v44;
  (*(v43 + 104))(v5, enum case for Font._StylisticAlternative.three(_:), v44);
  v27 = Font._stylisticAlternative(_:)();

  (*(v26 + 8))(v5, v25);
  v28 = swift_getKeyPath();
  v29 = &v10[*(sub_1000032D4(&qword_100117878, &qword_1000D53C8) + 36)];
  *v29 = v28;
  v29[1] = v27;
  v30 = *(v23 + *(v16 + 32));
  v31 = swift_getKeyPath();
  v32 = &v10[*(sub_1000032D4(&qword_100117880, &qword_1000D5400) + 36)];
  *v32 = v31;
  v32[1] = v30;
  v33 = swift_getKeyPath();
  v34 = &v10[*(sub_1000032D4(&qword_100117888, &qword_1000D5438) + 36)];
  *v34 = v33;
  v34[8] = 1;
  v35 = swift_getKeyPath();
  v36 = &v10[*(v45 + 44)];
  *v36 = v35;
  *(v36 + 1) = 1;
  v36[16] = 0;
  if (KeyPath)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.4;
  }

  v38 = swift_getKeyPath();
  sub_100086498(v10, v12);
  v39 = &v12[*(v46 + 36)];
  *v39 = v38;
  v39[1] = v37;
  sub_100086508();

  View.accessibilityIdentifier(_:)();
  return sub_10002D02C(v12, &qword_100117868, &qword_1000D5328);
}

uint64_t sub_100083C2C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000295C4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_100083D74@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100117870, &qword_1000D5390);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TimelineCountupView(0);
  sub_10002CFC4(v1 + *(v10 + 20), v9, &qword_100117870, &qword_1000D5390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Locale();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100083FA8@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v41 = type metadata accessor for Locale();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000032D4(&qword_100117990, &qword_1000D5530);
  __chkstk_darwin(v45);
  v43 = (&v35 - v4);
  v5 = type metadata accessor for TimelineCountupView(0);
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  __chkstk_darwin(v5);
  v40 = type metadata accessor for StopwatchTimelineSchedule(0);
  v7 = __chkstk_darwin(v40);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v44 = sub_1000032D4(&qword_100117998, &qword_1000D5538);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v38 = &v35 - v11;
  if (*(v1 + *(v5 + 44)))
  {
    v12 = v1;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v47 == 2)
    {
      v13 = *(v5 + 24);
      v14 = *(v40 + 20);
      v15 = type metadata accessor for Date();
      (*(*(v15 - 8) + 16))(&v10[v14], v12 + v13, v15);
      *v10 = 0x3F91111111111111;
      sub_100087244(v12, &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineCountupView);
      v16 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v17 = swift_allocObject();
      sub_1000883A0(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for TimelineCountupView);
      sub_100087244(v10, v37, type metadata accessor for StopwatchTimelineSchedule);
      v18 = swift_allocObject();
      *(v18 + 16) = sub_1000871C4;
      *(v18 + 24) = v17;
      sub_1000032D4(&qword_1001179A0, &unk_1000D55D0);
      sub_1000868D0(&qword_1001179B8, type metadata accessor for StopwatchTimelineSchedule, &unk_1000D5660);
      sub_100086F90();
      v19 = v38;
      TimelineView<>.init(_:content:)();
      sub_100088AE8(v10, type metadata accessor for StopwatchTimelineSchedule);
      v20 = v42;
      v21 = v44;
      (*(v42 + 16))(v43, v19, v44);
      swift_storeEnumTagMultiPayload();
      sub_100086F0C();
      _ConditionalContent<>.init(storage:)();
      return (*(v20 + 8))(v19, v21);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v23 = v47;
      static Locale.current.getter();
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v25 = (*(v39 + 8))(v3, v41);
      v25.i64[0] = v23;
      v26 = sub_1000022A8(0, 1, 1, 1, 0, 1, 0, isa, v25);

      if (v26)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v29 = 0xE200000000000000;
        v27 = 11565;
      }

      v47 = v27;
      v48 = v29;
      sub_100025FB4();
      v30 = Text.init<A>(_:)();
      v31 = v43;
      *v43 = v30;
      v31[1] = v32;
      *(v31 + 16) = v33 & 1;
      v31[3] = v34;
      *(v31 + 16) = 256;
      swift_storeEnumTagMultiPayload();
      sub_1000032D4(&qword_1001179A0, &unk_1000D55D0);
      sub_100086F0C();
      sub_100086F90();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    type metadata accessor for ObservableStopwatchModel(0);
    sub_1000868D0(&qword_100116B20, type metadata accessor for ObservableStopwatchModel, &unk_1000D4168);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100084694@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032D4(&qword_1001179C0, &qword_1000D7040);
  TimelineView.Context.date.getter();
  v6 = sub_1000847C8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_100025FB4();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = 256;
  return result;
}

uint64_t sub_1000847C8()
{
  v18[0] = type metadata accessor for Locale();
  v1 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v3 = (v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100083D74(v3);
  v4 = sub_100083C2C();
  v5 = type metadata accessor for TimelineCountupView(0);
  if (*(v0 + *(v5 + 44)))
  {
    v6 = *(v0 + *(v5 + 28));
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v7 = *&v18[1];
    Date.timeIntervalSince(_:)();
    if (v7 <= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7 + v8;
    }

    if (v4)
    {
      isa = Locale._bridgeToObjectiveC()().super.isa;
      *v11.i64 = v9;
      v12 = sub_100002848(0, 1, 1, 1, 0, 1, v6, isa, v11);

      if (v12)
      {
LABEL_9:
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v1 + 8))(v3, v18[0]);
        return v16;
      }

      __break(1u);
    }

    v13 = sub_100002E3C(v9);
    v14 = Locale._bridgeToObjectiveC()().super.isa;
    *v15.i64 = v13;
    v12 = sub_1000022A8(0, 1, 1, 1, 0, 1, v6, v14, v15);

    if (v12)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  type metadata accessor for ObservableStopwatchModel(0);
  sub_1000868D0(&qword_100116B20, type metadata accessor for ObservableStopwatchModel, &unk_1000D4168);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100084A68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *(type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries(0) + 20);
  sub_10002CFC4(v2 + v10, v9, &qword_100115E40, &unk_1000D1280);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_10002D02C(v9, &qword_100115E40, &unk_1000D1280);
    return (*(v12 + 56))(a1, 1, 1, v11);
  }

  else
  {
    (*(v12 + 32))(a1, v9, v11);
    Date.addingTimeInterval(_:)();
    v14 = *(v12 + 56);
    v14(v7, 0, 1, v11);
    sub_100088408(v7, v2 + v10);
    return (v14)(a1, 0, 1, v11);
  }
}

uint64_t sub_100084C90()
{
  sub_1000872EC(v0, type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries, type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries, type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries);
  v2 = v1;
  sub_100088AE8(v0, type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries);
  return v2;
}

uint64_t sub_100084D7C(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v22 = a5;
  v10 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for Date();
  v23 = *(v13 - 8);
  result = __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_1000883A0(v5, a1, a4);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a1;
    v21 = a4;
    a1 = (v23 + 48);
    v17 = (v23 + 32);
    a4 = 1;
    while (1)
    {
      v22(result);
      if ((*a1)(v12, 1, v13) == 1)
      {
        break;
      }

      v18 = *v17;
      (*v17)(v16, v12, v13);
      result = (v18)(a2, v16, v13);
      if (a3 == a4)
      {
        goto LABEL_12;
      }

      a2 += *(v23 + 72);
      if (__OFADD__(a4++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_10002D02C(v12, &qword_100115E40, &unk_1000D1280);
    a3 = a4 - 1;
LABEL_12:
    a1 = v20;
    a4 = v21;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100084FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = a1;
  v3 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Calendar.SearchDirection();
  v40 = *(v52 - 8);
  __chkstk_darwin(v52);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Calendar.MatchingPolicy();
  v38 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v7 - 8);
  v51 = &v36 - v8;
  v54 = type metadata accessor for Calendar();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateComponents();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v36 = *(v16 + 56);
  v37 = (v16 + 56);
  v36(a2, 1, 1, v15);
  static Calendar.current.getter();
  sub_1000032D4(&qword_100117A90, &unk_1000D56B0);
  v17 = type metadata accessor for Calendar.Component();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000D08B0;
  (*(v18 + 104))(v20 + v19, enum case for Calendar.Component.second(_:), v17);
  sub_10008B828(v20);
  swift_setDeallocating();
  v21 = v20 + v19;
  v22 = v46;
  (*(v18 + 8))(v21, v17);
  v23 = v45;
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:)();

  v24 = *(v9 + 8);
  v25 = v54;
  v24(v11, v54);
  v26 = type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry(0);
  (*(v55 + 16))(v23 + *(v26 + 24), v14, v56);
  v27 = *(v26 + 20);
  v47 = v16;
  v48 = v15;
  (*(v16 + 16))(v23 + v27, v22, v15);
  Date.addingTimeInterval(_:)();
  static Calendar.current.getter();
  v53 = v14;
  LOBYTE(v26) = Calendar.date(_:matchesComponents:)();
  v39 = v9 + 8;
  v24(v11, v25);
  if (v26)
  {
    (*(v55 + 8))(v53, v56);
    sub_10002D02C(v23, &qword_100115E40, &unk_1000D1280);
    v28 = v48;
    (*(v47 + 32))(v23, v22, v48);
    return (v36)(v23, 0, 1, v28);
  }

  else
  {
    static Calendar.current.getter();
    v30 = v38;
    (*(v38 + 104))(v49, enum case for Calendar.MatchingPolicy.nextTime(_:), v50);
    v32 = v40;
    v31 = v41;
    (*(v40 + 104))(v41, enum case for Calendar.SearchDirection.forward(_:), v52);
    v37 = v24;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    (*(v43 + 104))(v42, enum case for Calendar.RepeatedTimePolicy.first(_:), v44);
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v47 + 8))(v22, v48);
    (*(v34 + 8))(v33, v35);
    (*(v32 + 8))(v31, v52);
    (*(v30 + 8))(v49, v50);
    v37(v11, v54);
    (*(v55 + 8))(v53, v56);
    return sub_100088408(v51, v23);
  }
}

uint64_t sub_1000856A8@<X0>(char *a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for Calendar.SearchDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v65 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar.MatchingPolicy();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v68 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Calendar();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v11 = __chkstk_darwin(v10 - 8);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v71 = &v52 - v14;
  v15 = __chkstk_darwin(v13);
  v67 = &v52 - v16;
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v60 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v52 - v23;
  v74 = v1;
  sub_10002CFC4(v1, v18, &qword_100115E40, &unk_1000D1280);
  v25 = *(v20 + 48);
  if (v25(v18, 1, v19) == 1)
  {
    sub_10002D02C(v18, &qword_100115E40, &unk_1000D1280);
    return (*(v20 + 56))(v73, 1, 1, v19);
  }

  else
  {
    v57 = v25;
    v58 = v3;
    v59 = v2;
    v27 = *(v20 + 32);
    v27(v24, v18, v19);
    v28 = type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry(0);
    v29 = *(v28 + 28);
    sub_1000868D0(&qword_100117BE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v53 = v29;
      v56 = v27;
      v54 = v20 + 32;
      v30 = v9;
      static Calendar.current.getter();
      v55 = *(v28 + 24);
      (*(v69 + 104))(v68, enum case for Calendar.MatchingPolicy.nextTime(_:), v70);
      v32 = v64;
      v31 = v65;
      v33 = v66;
      (*(v65 + 104))(v64, enum case for Calendar.RepeatedTimePolicy.first(_:), v72);
      v35 = v58;
      v34 = v59;
      (*(v58 + 104))(v33, enum case for Calendar.SearchDirection.forward(_:), v59);
      v55 = v24;
      v36 = v68;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*(v35 + 8))(v33, v34);
      (*(v31 + 8))(v32, v72);
      v37 = v36;
      v38 = v71;
      (*(v69 + 8))(v37, v70);
      (*(v61 + 8))(v30, v63);
      v39 = v62;
      sub_10002CFC4(v38, v62, &qword_100115E40, &unk_1000D1280);
      if (v57(v39, 1, v19) == 1)
      {
        sub_10002D02C(v38, &qword_100115E40, &unk_1000D1280);
        sub_10002D02C(v39, &qword_100115E40, &unk_1000D1280);
        v40 = v74;
        sub_10002D02C(v74, &qword_100115E40, &unk_1000D1280);
        v41 = *(v20 + 56);
        v41(v40, 1, 1, v19);
        v42 = v73;
        v56(v73, v55, v19);
      }

      else
      {
        v46 = v60;
        v47 = v39;
        v48 = v56;
        v56(v60, v47, v19);
        v49 = v53;
        if (static Date.< infix(_:_:)())
        {
          (*(v20 + 8))(v46, v19);
          sub_10002D02C(v38, &qword_100115E40, &unk_1000D1280);
          v50 = v74;
          sub_10002D02C(v74, &qword_100115E40, &unk_1000D1280);
          (*(v20 + 16))(v50, v50 + v49, v19);
          v41 = *(v20 + 56);
          v41(v50, 0, 1, v19);
        }

        else
        {
          v51 = v67;
          Date.addingTimeInterval(_:)();
          (*(v20 + 8))(v46, v19);
          sub_10002D02C(v38, &qword_100115E40, &unk_1000D1280);
          v41 = *(v20 + 56);
          v41(v51, 0, 1, v19);
          sub_100088408(v51, v74);
        }

        v42 = v73;
        v48(v73, v55, v19);
      }

      return (v41)(v42, 0, 1, v19);
    }

    else
    {
      v43 = v67;
      Date.addingTimeInterval(_:)();
      v44 = *(v20 + 56);
      v44(v43, 0, 1, v19);
      sub_100088408(v43, v74);
      v45 = v73;
      v27(v73, v24, v19);
      return v44(v45, 0, 1, v19);
    }
  }
}

uint64_t sub_100085F74()
{
  sub_100087804(v0, type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry, type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry, sub_1000856A8, type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry);
  v2 = v1;
  sub_100088AE8(v0, type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry);
  return v2;
}

void *sub_10008604C(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v2 = type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries(0);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimelineScheduleMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for TimelineScheduleMode.normal(_:), v12);
  v16 = static TimelineScheduleMode.== infix(_:_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = *v25;
    (*(v6 + 16))(v8, v26, v5);
    v18 = *(v9 + 20);
    v19 = *(v6 + 56);
    v19(&v11[v18], 1, 1, v5);
    sub_10002D02C(&v11[v18], &qword_100115E40, &unk_1000D1280);
    (*(v6 + 32))(&v11[v18], v8, v5);
    v19(&v11[v18], 0, 1, v5);
    *v11 = v17;
    sub_1000032D4(&qword_100117A88, &qword_1000D56A8);
    v20 = swift_allocObject();
    v21 = type metadata accessor for StopwatchTimelineSchedule.TimePeriodEntries;
    v22 = v20 + *(*v20 + class metadata base offset for _SequenceBox + 16);
    v23 = v11;
  }

  else
  {
    (*(v6 + 16))(v8, v26, v5);
    sub_100084FAC(v8, v4);
    sub_1000032D4(&qword_100117A80, &unk_1000D5698);
    v20 = swift_allocObject();
    v21 = type metadata accessor for StopwatchTimelineSchedule.ReducedFrequencyEntry;
    v22 = v20 + *(*v20 + class metadata base offset for _SequenceBox + 16);
    v23 = v4;
  }

  sub_1000883A0(v23, v22, v21);
  return v20;
}

void *sub_100086438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_10008604C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100086498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100117860, &qword_1000D5320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100086508()
{
  result = qword_100117890;
  if (!qword_100117890)
  {
    sub_10001C820(&qword_100117868, &qword_1000D5328);
    sub_1000865C0();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117890);
  }

  return result;
}

unint64_t sub_1000865C0()
{
  result = qword_100117898;
  if (!qword_100117898)
  {
    sub_10001C820(&qword_100117860, &qword_1000D5320);
    sub_100086678();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117898);
  }

  return result;
}

unint64_t sub_100086678()
{
  result = qword_1001178A0;
  if (!qword_1001178A0)
  {
    sub_10001C820(&qword_100117888, &qword_1000D5438);
    sub_100086730();
    sub_10002DAD8(&qword_100114C48, &qword_100114C50, &qword_1000D54B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001178A0);
  }

  return result;
}

unint64_t sub_100086730()
{
  result = qword_1001178A8;
  if (!qword_1001178A8)
  {
    sub_10001C820(&qword_100117880, &qword_1000D5400);
    sub_1000867E8();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001178A8);
  }

  return result;
}

unint64_t sub_1000867E8()
{
  result = qword_1001178B0;
  if (!qword_1001178B0)
  {
    sub_10001C820(&qword_100117878, &qword_1000D53C8);
    sub_1000868D0(&qword_1001178B8, type metadata accessor for TimelineCountupView, &unk_1000D54E0);
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001178B0);
  }

  return result;
}

uint64_t sub_1000868D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008692C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000032D4(&qword_1001178C0, &qword_1000D54B8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = type metadata accessor for Calendar();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[11]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100086AA8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000032D4(&qword_1001178C0, &qword_1000D54B8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Date();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = type metadata accessor for Calendar();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[9];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_100086C00(uint64_t a1)
{
  sub_100086D1C();
  if (v1 <= 0x3F)
  {
    sub_100088658(319, &qword_100117930, &type metadata accessor for Locale, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Calendar();
        if (v4 <= 0x3F)
        {
          sub_100086D6C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100086D1C()
{
  if (!qword_100114488)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100114488);
    }
  }
}

void sub_100086D6C(uint64_t a1)
{
  if (!qword_100117938)
  {
    type metadata accessor for ObservableStopwatchModel(255);
    sub_1000868D0(&qword_100116B20, type metadata accessor for ObservableStopwatchModel, &unk_1000D4168);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100117938);
    }
  }
}

unint64_t sub_100086E04()
{
  result = qword_100117980;
  if (!qword_100117980)
  {
    sub_10001C820(&qword_100117988, &qword_1000D54D8);
    sub_100086508();
    sub_1000868D0(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117980);
  }

  return result;
}

unint64_t sub_100086F0C()
{
  result = qword_1001179A8;
  if (!qword_1001179A8)
  {
    sub_10001C820(&qword_100117998, &qword_1000D5538);
    sub_100086F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001179A8);
  }

  return result;
}

unint64_t sub_100086F90()
{
  result = qword_1001179B0;
  if (!qword_1001179B0)
  {
    sub_10001C820(&qword_1001179A0, &unk_1000D55D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001179B0);
  }

  return result;
}

uint64_t sub_100087014()
{
  v1 = type metadata accessor for TimelineCountupView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1000295C4(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  sub_1000032D4(&qword_100117870, &qword_1000D5390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Locale();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[9];
  v11 = type metadata accessor for Calendar();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_1000871C4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TimelineCountupView(0);

  return sub_100084694(a1);
}

uint64_t sub_100087244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000872EC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v61 = a4;
  v7 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v8 = __chkstk_darwin(v7 - 8);
  v72 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v60 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v71 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v60 - v16;
  v18 = a2(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = *(v13 + 80);
  sub_100087244(a1, &v60 - v20, a3);
  v23 = *(v19 + 28);
  sub_10002CFC4(&v21[v23], v11, &qword_100115E40, &unk_1000D1280);
  v24 = *(v13 + 48);
  v25 = v11;
  v73 = v12;
  v69 = v24;
  v70 = v13 + 48;
  v26 = &_swiftEmptyArrayStorage;
  if (v24(v11, 1, v12) != 1)
  {
    v74 = v13;
    v75 = 0;
    v63 = v22;
    v64 = (v22 + 32) & ~v22;
    v28 = &_swiftEmptyArrayStorage + v64;
    v30 = v13 + 32;
    v29 = *(v13 + 32);
    v31 = &_swiftEmptyArrayStorage;
    v32 = v25;
    v33 = v73;
    v67 = v32;
    v68 = (v13 + 56);
    v65 = v23;
    v66 = v21;
    v62 = v29;
    while (1)
    {
      v34 = v71;
      v29(v71);
      v35 = v72;
      Date.addingTimeInterval(_:)();
      (*v68)(v35, 0, 1, v33);
      sub_100088408(v35, &v21[v23]);
      (v29)(v17, v34, v33);
      v36 = v17;
      v37 = v75;
      if (v75)
      {
        v26 = v31;
        v38 = v67;
        v33 = v73;
      }

      else
      {
        v39 = v31[3];
        if (((v39 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v40 = v30;
        v41 = v39 & 0xFFFFFFFFFFFFFFFELL;
        if (v41 <= 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = v41;
        }

        sub_1000032D4(&qword_100117BD8, &qword_1000D5828);
        v43 = *(v74 + 72);
        v44 = v64;
        v26 = swift_allocObject();
        v45 = j__malloc_size(v26);
        if (!v43)
        {
          goto LABEL_34;
        }

        v46 = v45 - v44;
        if (v45 - v44 == 0x8000000000000000 && v43 == -1)
        {
          goto LABEL_35;
        }

        v48 = v46 / v43;
        v26[2] = v42;
        v26[3] = 2 * (v46 / v43);
        v49 = v26 + v44;
        v50 = v31[3] >> 1;
        v51 = v50 * v43;
        v30 = v40;
        v33 = v73;
        if (v31[2])
        {
          if (v26 < v31 || v49 >= v31 + v64 + v51)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v26 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31[2] = 0;
        }

        v28 = &v49[v51];
        v37 = (v48 & 0x7FFFFFFFFFFFFFFFLL) - v50;

        v38 = v67;
        v29 = v62;
      }

      v53 = __OFSUB__(v37, 1);
      v54 = v37 - 1;
      v55 = v74;
      if (v53)
      {
        break;
      }

      v75 = v54;
      (v29)(v28, v36, v33);
      v28 += *(v55 + 72);
      v17 = v36;
      v23 = v65;
      v21 = v66;
      sub_10002CFC4(&v66[v65], v38, &qword_100115E40, &unk_1000D1280);
      v56 = v69(v38, 1, v33);
      v27 = v38;
      v31 = v26;
      if (v56 == 1)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v75 = 0;
  v27 = v11;
LABEL_28:
  sub_10002D02C(v27, &qword_100115E40, &unk_1000D1280);
  sub_100088AE8(v21, v61);
  v57 = v26[3];
  if (v57 >= 2)
  {
    v58 = v57 >> 1;
    v53 = __OFSUB__(v58, v75);
    v59 = v58 - v75;
    if (!v53)
    {
      v26[2] = v59;
      return;
    }

LABEL_36:
    __break(1u);
  }
}

void sub_100087804(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v52 = a5;
  v9 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v51 - v16;
  v18 = *(v13 + 80);
  v19 = sub_100087244(a1, &v51 - v16, a3);
  v58 = a4;
  v59 = v17;
  a4(v19);
  v56 = *(v13 + 48);
  v57 = v13 + 48;
  v20 = &_swiftEmptyArrayStorage;
  if (v56(v11, 1, v12) != 1)
  {
    v21 = 0;
    v53 = v18;
    v55 = (v18 + 32) & ~v18;
    v28 = &_swiftEmptyArrayStorage + v55;
    v29 = *(v13 + 32);
    v30 = &_swiftEmptyArrayStorage;
    v31 = v54;
    v60 = v13 + 32;
    v22 = v11;
    while (1)
    {
      v34 = v22;
      v35 = v29;
      (v29)(v31);
      if (v21)
      {
        v20 = v30;
        v26 = __OFSUB__(v21--, 1);
        if (v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v36 = v30[3];
        if (((v36 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v37 = v36 & 0xFFFFFFFFFFFFFFFELL;
        if (v37 <= 1)
        {
          v38 = 1;
        }

        else
        {
          v38 = v37;
        }

        sub_1000032D4(&qword_100117BD8, &qword_1000D5828);
        v39 = v13;
        v40 = *(v13 + 72);
        v41 = v55;
        v20 = swift_allocObject();
        v42 = j__malloc_size(v20);
        if (!v40)
        {
          goto LABEL_34;
        }

        v43 = v42 - v41;
        if (v42 - v41 == 0x8000000000000000 && v40 == -1)
        {
          goto LABEL_35;
        }

        v45 = v43 / v40;
        v20[2] = v38;
        v20[3] = 2 * (v43 / v40);
        v46 = v20 + v41;
        v47 = v30[3] >> 1;
        v48 = v47 * v40;
        if (v30[2])
        {
          if (v20 < v30 || v46 >= v30 + v55 + v48)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30[2] = 0;
        }

        v28 = &v46[v48];
        v50 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - v47;

        v13 = v39;
        v31 = v54;
        v26 = __OFSUB__(v50, 1);
        v21 = v50 - 1;
        if (v26)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }
      }

      v32 = v35(v28, v31, v12);
      v28 += *(v13 + 72);
      v58(v32);
      v33 = v56(v34, 1, v12);
      v29 = v35;
      v22 = v34;
      v30 = v20;
      if (v33 == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v21 = 0;
  v22 = v11;
LABEL_3:
  v23 = v22;
  sub_100088AE8(v59, v52);
  sub_10002D02C(v23, &qword_100115E40, &unk_1000D1280);
  v24 = v20[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v26 = __OFSUB__(v25, v21);
    v27 = v25 - v21;
    if (v26)
    {
      goto LABEL_36;
    }

    v20[2] = v27;
  }
}

uint64_t sub_100087C14(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t (*a5)(void))
{
  v11 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v12 = __chkstk_darwin(v11 - 8);
  v40 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = type metadata accessor for Date();
  v41 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v39 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v17);
  v38 = &v31 - v20;
  v42 = a2;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    sub_1000883A0(v5, a1, a4);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a4;
    v21 = *(a5(0) + 20);
    v36 = a3;
    v37 = (v41 + 48);
    v34 = (v41 + 56);
    v35 = v41 + 32;
    v22 = 1;
    v33 = v15;
    v23 = (v41 + 32);
    while (1)
    {
      sub_10002CFC4(v5 + v21, v15, &qword_100115E40, &unk_1000D1280);
      if ((*v37)(v15, 1, v16) == 1)
      {
        sub_10002D02C(v15, &qword_100115E40, &unk_1000D1280);
        a3 = v22 - 1;
        a4 = v32;
        goto LABEL_13;
      }

      v24 = v5;
      v25 = *v23;
      v26 = v39;
      (*v23)(v39, v15, v16);
      v27 = v40;
      Date.addingTimeInterval(_:)();
      (*v34)(v27, 0, 1, v16);
      v28 = v24;
      sub_100088408(v27, v24 + v21);
      a4 = v38;
      v25(v38, v26, v16);
      v29 = v42;
      a1 = v16;
      v25(v42, a4, v16);
      a3 = v36;
      if (v36 == v22)
      {
        break;
      }

      v42 = &v29[*(v41 + 72)];
      v30 = __OFADD__(v22++, 1);
      v5 = v28;
      v15 = v33;
      if (v30)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v32;
    v5 = v28;
LABEL_13:
    a1 = v31;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100087F38@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000032D4(&qword_1001179C0, &qword_1000D7040);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = sub_1000032D4(&qword_1001179C8, &qword_1000D55E0);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v18, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    *a3 = v18;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
    *(a3 + 32) = v16;
    *(a3 + 33) = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000880AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100088194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100088210(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100088290()
{
  result = qword_100117A60;
  if (!qword_100117A60)
  {
    sub_10001C820(&qword_100117A68, &qword_1000D5650);
    sub_100086F0C();
    sub_100086F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117A60);
  }

  return result;
}

uint64_t sub_1000883A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100088408(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100088524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1000885AC(uint64_t a1)
{
  sub_100088658(319, &qword_100117B00, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100088658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000886D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for DateComponents();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100088830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for DateComponents();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_100088988(uint64_t a1)
{
  sub_100088658(319, &qword_100117B00, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DateComponents();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100088AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100088B60()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlarmPresentationState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v9);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v11);
  if (swift_getEnumCaseMultiPayload())
  {
    v12 = *v11;
    v13 = [*v11 isFiring];
  }

  else
  {
    v14 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v6 + 32))(v8, v11, v5);
    AlarmPresentationState.mode.getter();
    v13 = AlarmPresentationState.Mode.isAlerting.getter();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    v15 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
  }

  return v13 & 1;
}

uint64_t sub_100088DE4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlarmPresentationState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v13 = *v11;
    if (EnumCaseMultiPayload == 1)
    {
      v14 = [*v11 alarmIDString];
    }

    else
    {
      v14 = [*v11 timerIDString];
    }

    v18 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v6 + 32))(v8, v11, v5);
    AlarmPresentationState.alarmID.getter();
    v16 = UUID.uuidString.getter();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    v17 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v17 - 8) + 8))(v11 + v15, v17);
  }

  return v16;
}

uint64_t sub_1000890A8()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for AlarmPresentationState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v13);
  if (swift_getEnumCaseMultiPayload())
  {
    v14 = *v13;
    v19 = [*v13 displayTitle];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = v22;
    v16 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v8 + 32))(v10, v13, v7);
    (*(v23 + 32))(v6, v13 + v16, v4);
    v17 = AlarmPresentationState.alarmLabel.getter();
    if (v18)
    {
      v20 = v17;
    }

    else
    {
      AlarmPresentationState.mode.getter();
      v20 = sub_10000AAEC(v3);
      (*(v15 + 8))(v3, v1);
    }

    (*(v23 + 8))(v6, v4);
    (*(v8 + 8))(v10, v7);
  }

  return v20;
}

uint64_t sub_100089408@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v2 = __chkstk_darwin(v1 - 8);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v45 = &v44 - v4;
  v5 = type metadata accessor for AlarmPresentationState.Mode();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlarmPresentationState.Mode.Countdown();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AlarmPresentationState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v16);
  v18 = (&v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v48, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = *v18;
      v21 = [*v18 isSnoozed];
      v22 = v49;
      if (v21)
      {
        v23 = [v20 snoozeFireDate];
        if (v23)
        {
          v24 = v45;
          v25 = v23;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = 0;
          v20 = v25;
        }

        else
        {
          v26 = 1;
          v24 = v45;
        }

        v41 = type metadata accessor for Date();
        (*(*(v41 - 8) + 56))(v24, v26, 1, v41);
        v42 = v24;
      }

      else
      {
        v34 = [v20 nextFireDate];
        if (v34)
        {
          v35 = v46;
          v36 = v34;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v37 = 0;
          v20 = v36;
        }

        else
        {
          v37 = 1;
          v35 = v46;
        }

        v43 = type metadata accessor for Date();
        (*(*(v43 - 8) + 56))(v35, v37, 1, v43);
        v42 = v35;
      }

      return sub_10003174C(v42, v22);
    }

    else
    {
      v30 = *v18;
      v31 = v49;
      sub_10004F058(v49);

      v32 = type metadata accessor for Date();
      return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    AlarmPresentationState.mode.getter();
    v27 = v47;
    if ((*(v47 + 88))(v7, v5) == enum case for AlarmPresentationState.Mode.countdown(_:))
    {
      (*(v27 + 96))(v7, v5);
      (*(v9 + 32))(v11, v7, v8);
      v28 = v49;
      AlarmPresentationState.Mode.Countdown.fireDate.getter();
      (*(v9 + 8))(v11, v8);
      (*(v13 + 8))(v15, v12);
      v29 = 0;
    }

    else
    {
      (*(v13 + 8))(v15, v12);
      (*(v27 + 8))(v7, v5);
      v29 = 1;
      v28 = v49;
    }

    v38 = type metadata accessor for Date();
    (*(*(v38 - 8) + 56))(v28, v29, 1, v38);
    v39 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v40 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    return (*(*(v40 - 8) + 8))(v18 + v39, v40);
  }
}

uint64_t sub_1000899F0(unsigned __int8 a1)
{
  if (a1 == 5)
  {
    v2 = 1;
LABEL_8:

    return v2 & 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    if (a1 == 3)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_8;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_100089C28(unsigned __int8 a1)
{
  if (!a1)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (a1 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_100089E54(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    v3 = 1;
LABEL_9:

    return v3 & 1;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v2 & 1) == 0)
  {
    if (a1 <= 2u || a1 > 4u || a1 == 3)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_9;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_10008A09C()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlarmPresentationState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10005EECC(v11);
      v13 = 0;
    }

    else
    {
      v16 = *v11;
      v17 = [*v11 state];

      v13 = v17 == 2;
    }
  }

  else
  {
    v14 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v6 + 32))(v8, v11, v5);
    AlarmPresentationState.mode.getter();
    v13 = AlarmPresentationState.Mode.isPaused.getter();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    v15 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
  }

  return v13 & 1;
}

uint64_t sub_10008A33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v30 = a2;
  v33 = a1;
  v3 = type metadata accessor for Date();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateComponents();
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar.Identifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Calendar();
  v25 = *(v13 - 8);
  v26 = v13;
  __chkstk_darwin(v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for Calendar.Identifier.gregorian(_:), v9);
  Calendar.init(identifier:)();
  (*(v10 + 8))(v12, v9);
  sub_1000032D4(&qword_100117A90, &unk_1000D56B0);
  v16 = type metadata accessor for Calendar.Component();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000D5830;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, enum case for Calendar.Component.minute(_:), v16);
  v22(v21 + v18, enum case for Calendar.Component.hour(_:), v16);
  v22(v21 + 2 * v18, enum case for Calendar.Component.weekday(_:), v16);
  v22(v21 + 3 * v18, enum case for Calendar.Component.weekdayOrdinal(_:), v16);
  v22(v21 + 4 * v18, enum case for Calendar.Component.month(_:), v16);
  v22(v21 + 5 * v18, enum case for Calendar.Component.year(_:), v16);
  sub_10008B828(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Date.init(timeIntervalSinceReferenceDate:)();
  Calendar.dateComponents(_:from:)();

  (*(v31 + 8))(v5, v32);
  result = v33;
  if (v33 < 0)
  {
    __break(1u);
  }

  else
  {
    DateComponents.hour.setter();
    result = v30;
    if ((v30 & 0x8000000000000000) == 0)
    {
      DateComponents.minute.setter();
      Calendar.date(from:)();
      (*(v27 + 8))(v8, v28);
      return (*(v25 + 8))(v15, v26);
    }
  }

  __break(1u);
  return result;
}

id sub_10008A81C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v5 setAllowedUnits:a2];
  result = [v5 setUnitsStyle:1];
  *a3 = v5;
  return result;
}

uint64_t sub_10008A8C8(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10008AA00@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008C8C8(*a1);
  *a2 = result;
  return result;
}

void sub_10008AA30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00746361706D6FLL;
  v4 = 0x43746E6569626D41;
  v5 = 0x657263536B636F4CLL;
  v6 = 0xEA00000000006E65;
  if (v2 != 5)
  {
    v5 = 0x726F707075736E55;
    v6 = 0xEB00000000646574;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656E6E6142;
  if (v2 != 3)
  {
    v8 = 0x657263536C6C7546;
    v7 = 0xEA00000000006E65;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEB000000006C6C75;
  v10 = 0x46746E6569626D41;
  if (v2 != 1)
  {
    v10 = 0x6572757472657041;
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
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

void sub_10008AB30()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AlarmPresentationState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v12);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
    }

    else
    {
      v20 = *v14;
      sub_10004F268();
    }
  }

  else
  {
    v22 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v9 + 32))(v11, v14, v8);
    AlarmPresentationState.mode.getter();
    AlarmPresentationState.Mode.totalDuration.getter();
    v17 = v16;
    v18 = *(v2 + 8);
    v18(v7, v1);
    if (v17 > 0.0)
    {
      AlarmPresentationState.mode.getter();
      AlarmPresentationState.Mode.remainingTime.getter();
      v18(v7, v1);
      AlarmPresentationState.mode.getter();
      AlarmPresentationState.Mode.totalDuration.getter();
      v18(v5, v1);
    }

    (*(v9 + 8))(v11, v8);
    v19 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v19 - 8) + 8))(v14 + v22, v19);
  }
}

double sub_10008AEC0()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlarmPresentationState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10005EECC(v11);
      return 0.0;
    }

    else
    {
      v17 = *v11;
      [*v11 duration];
      v13 = v18;
    }
  }

  else
  {
    v14 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v6 + 32))(v8, v11, v5);
    AlarmPresentationState.mode.getter();
    AlarmPresentationState.Mode.totalDuration.getter();
    v13 = v15;
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    v16 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v16 - 8) + 8))(v11 + v14, v16);
  }

  return v13;
}

uint64_t sub_10008B160()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlarmPresentationState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OpaqueAlarm(0);
  __chkstk_darwin(v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005EC7C(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10005EECC(v11);
      v13 = 0;
    }

    else
    {
      v16 = *v11;
      v17 = [*v11 state];

      v13 = v17 == 3;
    }
  }

  else
  {
    v14 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    (*(v6 + 32))(v8, v11, v5);
    AlarmPresentationState.mode.getter();
    v13 = AlarmPresentationState.Mode.isCountingDown.getter();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    v15 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
  }

  return v13 & 1;
}

id sub_10008B400()
{
  result = [objc_allocWithZone(MTStopwatchManager) init];
  qword_10011F528 = result;
  return result;
}

uint64_t type metadata accessor for OpaqueAlarm(uint64_t a1)
{
  result = qword_100117DB8;
  if (!qword_100117DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008B4F4(uint64_t a1)
{
  sub_10008B59C(319);
  if (v1 <= 0x3F)
  {
    sub_10002BB3C(319, &qword_100115DB0, MTAlarm_ptr);
    if (v2 <= 0x3F)
    {
      sub_10002BB3C(319, &qword_100115DB8, MTTimer_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10008B59C(uint64_t a1)
{
  if (!qword_100117DC8)
  {
    type metadata accessor for AlarmPresentationState();
    sub_10001C820(&qword_1001139D0, &unk_1000D08C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117DC8);
    }
  }
}

uint64_t getEnumTagSinglePayload for Destination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Destination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008B77C()
{
  result = qword_100117DF8;
  if (!qword_100117DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117DF8);
  }

  return result;
}

unint64_t sub_10008B7D4()
{
  result = qword_100117E00;
  if (!qword_100117E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117E00);
  }

  return result;
}

void *sub_10008B828(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000032D4(&qword_100117E08, &qword_1000D59D0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10008C914(&qword_100117E10, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10008C914(&qword_100117E18, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10008BB48(void *a1)
{
  v1 = a1;
  v2 = static UISceneSessionRole.activityAmbientCompact.getter();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

    v7 = 0;
    goto LABEL_12;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v9 = v1;
  v10 = static UISceneSessionRole.activityAmbient.getter();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

LABEL_10:
    v7 = 1;
LABEL_11:
    v1 = v9;
    goto LABEL_12;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_10;
  }

  v9 = v9;
  v17 = static UISceneSessionRole.activitySystemAperture.getter();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {

LABEL_17:
    v7 = 2;
    goto LABEL_11;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_17;
  }

  v9 = v9;
  v23 = static UISceneSessionRole.activityBanner.getter();
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

LABEL_22:
    v7 = 3;
    goto LABEL_11;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_22;
  }

  v9 = v9;
  v29 = static UISceneSessionRole.activityModalFullScreen.getter();
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {

LABEL_27:
    v7 = 4;
    goto LABEL_11;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_27;
  }

  v35 = static UISceneSessionRole.activityListItem.getter();
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    v7 = 5;
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  v1 = v35;
LABEL_12:

  return v7;
}

uint64_t sub_10008BEF0(double a1)
{
  v1 = type metadata accessor for DateComponents();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v44 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  Date.init()();
  Date.addingTimeInterval(_:)();
  static Calendar.current.getter();
  sub_1000032D4(&qword_100117A90, &unk_1000D56B0);
  v12 = type metadata accessor for Calendar.Component();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = 2 * v14;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000D5840;
  v18 = v17 + v15;
  v19 = *(v13 + 104);
  v19(v18, enum case for Calendar.Component.hour(_:), v12);
  v20 = v18 + v14;
  v21 = v9;
  v22 = v44;
  v19(v20, enum case for Calendar.Component.minute(_:), v12);
  v23 = v18 + v16;
  v24 = v5;
  v19(v23, enum case for Calendar.Component.second(_:), v12);
  sub_10008B828(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:to:)();

  v25 = DateComponents.hour.getter();
  if (v26 & 1) != 0 || (v27 = v25, v28 = DateComponents.minute.getter(), (v29) || (v30 = v28, v31 = DateComponents.second.getter(), (v32))
  {
    v33 = 0x30303A30303A3030;
  }

  else
  {
    v37 = v31;
    if (v27)
    {
      v51 = v27;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v38;
      v39._countAndFlagsBits = 58;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      v51 = v30;
      v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v40);
    }

    else
    {
      v51 = v30;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v41;
    }

    v42._countAndFlagsBits = 58;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v51 = v37;
    v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v43);

    v33 = v52;
  }

  (*(v49 + 8))(v22, v50);
  (*(v47 + 8))(v24, v48);
  v34 = v46;
  v35 = *(v45 + 8);
  v35(v21, v46);
  v35(v11, v34);
  return v33;
}

void sub_10008C3BC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000032D4(&qword_100117E28, &qword_1000D59E8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = a1 & 0xC000000000000001;
  v19 = a1 + 32;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10008C914(&qword_100117E30, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << v3[32];
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10008C914(&qword_100117E38, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(*(v3 + 6) + 8 * v12) = v8;
      v17 = *(v3 + 2);
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v18;
    }

    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

Swift::Int sub_10008C650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000032D4(&qword_100117E20, &unk_1000D59D8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      v11 = ActivitySceneHardwareButtonPressType.rawValue.getter();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = ActivitySceneHardwareButtonPressType.rawValue.getter();
        result = ActivitySceneHardwareButtonPressType.rawValue.getter();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + 8 * i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10008C790(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 <= 36000.0)
  {
    if (a3 <= 600.0)
    {
      goto LABEL_11;
    }

    if (qword_100113648 != -1)
    {
      swift_once();
    }

    v4 = [qword_10011F520 stringFromTimeInterval:?];
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_100113640 != -1)
    {
      swift_once();
    }

    v4 = [qword_10011F518 stringFromTimeInterval:?];
    if (!v4)
    {
LABEL_11:

      return a1;
    }
  }

  v5 = v4;
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return a1;
}

unint64_t sub_10008C8C8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000FF7F0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008C914(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10008CA74(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AlarmPresentationState.Mode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for AlarmPresentationState();
  v12 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    goto LABEL_13;
  }

  v16 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode;
  if (*&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode] != 1)
  {
    goto LABEL_13;
  }

  v49 = result;
  v17 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (!v17)
  {
    (*(v12 + 56))(v10, 1, 1, v49);
LABEL_10:
    result = sub_10002D02C(v10, &unk_100115DA0, &unk_1000D3220);
    goto LABEL_13;
  }

  v48 = v5;
  v18 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  v19 = qword_100113608;

  if (v19 != -1)
  {
    swift_once();
  }

  v50 = v18;
  v51 = v17;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v52);
  if ((*(v12 + 48))(v10, 1, v49) == 1)
  {
    goto LABEL_10;
  }

  (*(v12 + 32))(v15, v10, v49);
  v47 = objc_opt_self();
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v20 = [v2 description];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0xD00000000000002CLL;
  v25._object = 0x80000001000DB9A0;
  String.append(_:)(v25);
  v50 = 0;
  type metadata accessor for SBUISystemApertureLayoutMode(0);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 2113056;
  v26._object = 0xE300000000000000;
  String.append(_:)(v26);
  v50 = *&v2[v16];
  _print_unlocked<A, B>(_:_:)();
  v27 = String._bridgeToObjectiveC()();

  [v47 logInfo:v27];

  AlarmPresentationState.mode.getter();
  LOBYTE(v20) = AlarmPresentationState.Mode.isAlerting.getter();
  v28 = *(v48 + 8);
  v28(v7, v4);
  sub_10008FAEC(v20 & 1);
  AlarmPresentationState.mode.getter();
  LOBYTE(v20) = AlarmPresentationState.Mode.isAlerting.getter();
  v28(v7, v4);
  if (v20)
  {
    sub_1000922D8();
    sub_100090B64();
  }

  else
  {
    sub_100093DFC(v15);
  }

  result = (*(v12 + 8))(v15, v49);
LABEL_13:
  if (*&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode] == -1)
  {
    v29 = objc_opt_self();
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v30 = [v2 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v52 = v31;
    v53 = v33;
    v34._object = 0x80000001000DB950;
    v34._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v34);
    v35 = String._bridgeToObjectiveC()();

    [v29 logInfo:v35];

    sub_100092418();
    v36 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
    if (v36)
    {
      [v36 removeFromSuperview];
    }

    v37 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
    if (v37)
    {
      [v37 removeFromSuperview];
    }

    result = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
    if (result)
    {
      result = [result removeFromSuperview];
    }

    v38 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
    if (v38)
    {
      v39 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
      v52 = 0;
      v53 = 0xE000000000000000;

      _StringGuts.grow(_:)(37);
      v40 = [v2 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v52 = v41;
      v53 = v43;
      v44._countAndFlagsBits = 0xD000000000000021;
      v44._object = 0x80000001000DB970;
      String.append(_:)(v44);

      v45._countAndFlagsBits = v39;
      v45._object = v38;
      String.append(_:)(v45);

      v46 = String._bridgeToObjectiveC()();

      [v29 logInfo:v46];

      if (qword_100113608 != -1)
      {
        swift_once();
      }

      sub_100025228(&unk_100118140, type metadata accessor for AlarmKitApertureElementController, &unk_1000D5B14);
      v50 = v39;
      v51 = v38;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.deregisterObserver(_:for:)();
      return sub_10004E3D4(&v52);
    }
  }

  return result;
}

id sub_10008D6CC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors] = 9;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_maximumLayoutMode] = 4;
  v6 = SBUISystemApertureElementIdentifierTimer;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preventsInteractiveDismissal] = 1;
  v7 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_allocWithZone(ObjCClassFromMetadata);
  v10 = v6;
  *&v1[v7] = [v9 init];
  v11 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView;
  *&v1[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView;
  *&v1[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints] = &_swiftEmptyArrayStorage;
  v13 = &v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_launchURL;
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v16 = &v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observerId];
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  *v16 = v17;
  v16[1] = v19;
  v20 = &v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmAttributes;
  v22 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v22 - 8) + 56))(&v1[v21], 1, 1, v22);
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_secondaryLabelPadding] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_labelToButtonPadding] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_timerAlertLabelPadding] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_voiceOverTimer] = 0;
  v23 = type metadata accessor for AlarmKitApertureElementController(0);
  v25.receiver = v1;
  v25.super_class = v23;
  return objc_msgSendSuper2(&v25, "init");
}

void sub_10008DA7C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v121 = a3;
  v7 = type metadata accessor for AlarmPresentationState.Mode();
  v116 = *(v7 - 8);
  __chkstk_darwin(v7);
  v115 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000032D4(&unk_100119A20, &qword_1000D1DC0);
  __chkstk_darwin(v9 - 8);
  v110 = &v103 - v10;
  v11 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v12 = __chkstk_darwin(v11 - 8);
  v114 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v111 = &v103 - v14;
  v15 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v113 = &v103 - v17;
  v18 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v18 - 8);
  v118 = &v103 - v19;
  v20 = type metadata accessor for AlarmPresentationState();
  v21 = *(v20 - 8);
  v119 = v20;
  v120 = v21;
  v22 = __chkstk_darwin(v20);
  v112 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v117 = &v103 - v24;
  v25 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v103 - v29;
  v31 = &v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  if (!*&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8])
  {
    v32 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmAttributes;
    swift_beginAccess();
    v108 = a1;
    v107 = v7;
    sub_10002CFC4(&v4[v32], v30, &qword_100115E38, &qword_1000D3280);
    v33 = (*(v16 + 48))(v30, 1, v15);
    v109 = a2;
    v34 = v33;
    v35 = v30;
    v36 = v108;
    sub_10002D02C(v35, &qword_100115E38, &qword_1000D3280);
    v37 = v34 == 1;
    v38 = v109;
    if (v37)
    {
      *v31 = v36;
      v31[1] = v38;

      v39 = *(v16 + 16);
      v105 = v16 + 16;
      v104 = v39;
      v39(v28, v121, v15);
      v106 = v16;
      v40 = v15;
      (*(v16 + 56))(v28, 0, 1, v15);
      swift_beginAccess();
      sub_10004EC60(v28, &v4[v32], &qword_100115E38, &qword_1000D3280);
      swift_endAccess();
      if (qword_100113608 != -1)
      {
        swift_once();
      }

      sub_100025228(&unk_100118140, type metadata accessor for AlarmKitApertureElementController, &unk_1000D5B14);
      v122 = v36;
      v123 = v38;

      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.registerObserver(_:for:)();
      sub_10004E3D4(&v124);
      v41 = v31[1];
      if (v41)
      {
        v122 = *v31;
        v123 = v41;

        AnyHashable.init<A>(_:)();
        v42 = v118;
        dispatch thunk of DataStore.getEntry(for:)();
        sub_10004E3D4(&v124);
        v44 = v119;
        v43 = v120;
        if ((*(v120 + 48))(v42, 1, v119) != 1)
        {
          v45 = *(v43 + 32);
          v46 = v117;
          v45(v117, v42, v44);
          v47 = v112;
          (*(v43 + 16))(v112, v46, v44);
          v48 = v113;
          v104(v113, v121, v40);
          v49 = *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode];
          type metadata accessor for AlarmPresentationStateViewModel(0);
          v50 = swift_allocObject();
          ObservationRegistrar.init()();
          v45((v50 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState), v47, v44);
          (*(v106 + 32))(v50 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v48, v40);
          *(v50 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode) = v49;
          *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel] = v50;

          v51 = AlarmPresentationState.bundleID.getter();
          v52 = &v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier];
          *v52 = v51;
          v52[1] = v53;

          v54 = AlarmPresentationState.bundleID.getter();
          v56 = v114;
          v57 = v107;
          if (v55)
          {
            if (v54 == 0xD000000000000015 && v55 == 0x80000001000D7F20)
            {

              goto LABEL_17;
            }

            v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v67)
            {
LABEL_17:
              v68 = v111;
              AlarmAttributes.metadata.getter();
              v69 = type metadata accessor for MTAlarmCustomContent();
              v70 = *(v69 - 8);
              if ((*(v70 + 48))(v68, 1, v69) == 1)
              {
                sub_10002D02C(v68, &unk_100118100, &qword_1000D1250);
LABEL_26:
                v57 = v107;
                goto LABEL_32;
              }

              v71 = MTAlarmCustomContent.type.getter();
              if (v71 == 1)
              {
                v74 = 4;
                v72 = v110;
              }

              else
              {
                v72 = v110;
                if (v71)
                {
                  (*(v70 + 8))(v111, v69);
                  goto LABEL_26;
                }

                v73 = MTAlarmCustomContent.isSleepAlarm.getter();
                if (v73 == 2 || (v73 & 1) == 0)
                {
                  v74 = 1;
                }

                else
                {
                  v74 = 2;
                }
              }

              (*(v70 + 8))(v111, v69);
              v75 = [objc_opt_self() mtURLForSection:v74];
              if (v75)
              {
                v76 = v75;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v77 = 0;
              }

              else
              {
                v77 = 1;
              }

              v57 = v107;
              v78 = type metadata accessor for URL();
              (*(*(v78 - 8) + 56))(v72, v77, 1, v78);
              v79 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_launchURL;
              swift_beginAccess();
              sub_10004EC60(v72, &v4[v79], &unk_100119A20, &qword_1000D1DC0);
              swift_endAccess();
            }
          }

LABEL_32:
          AlarmAttributes.metadata.getter();
          v80 = type metadata accessor for MTAlarmCustomContent();
          v81 = *(v80 - 8);
          if ((*(v81 + 48))(v56, 1, v80) == 1)
          {
            sub_10002D02C(v56, &unk_100118100, &qword_1000D1250);
            v66 = v109;
          }

          else
          {
            MTAlarmCustomContent.type.getter();
            (*(v81 + 8))(v56, v80);
            v82 = AlarmType.rawValue.getter();
            v83 = AlarmType.rawValue.getter();
            v66 = v109;
            if (v82 == v83)
            {
              type metadata accessor for TimerAnimationCountdown(0);
              v84 = swift_allocObject();
              *(v84 + 16) = 0u;
              *(v84 + 32) = 0u;
              v85 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
              v86 = type metadata accessor for OpaqueAlarm(0);
              v87 = *(*(v86 - 8) + 56);
              v87(v84 + v85, 1, 1, v86);
              v88 = (v84 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
              *v88 = 0;
              v88[1] = 0xE000000000000000;
              *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation] = v84;

              v89 = swift_allocObject();
              *(v89 + 16) = 0u;
              *(v89 + 32) = 0u;
              v87(v89 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry, 1, 1, v86);
              v46 = v117;
              v57 = v107;
              v90 = (v89 + OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_pausedIdentifier);
              *v90 = 0;
              v90[1] = 0xE000000000000000;
              v44 = v119;
              *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation] = v89;
            }
          }

          sub_100090298();
          v91 = v115;
          AlarmPresentationState.mode.getter();
          v92 = AlarmPresentationState.Mode.isAlerting.getter();
          v93 = *(v116 + 8);
          v93(v91, v57);
          sub_10008FAEC(v92 & 1);
          AlarmPresentationState.mode.getter();
          v94 = AlarmPresentationState.Mode.isAlerting.getter();
          v93(v91, v57);
          sub_10008FAEC(v94 & 1);
          AlarmPresentationState.mode.getter();
          v95 = AlarmPresentationState.Mode.isAlerting.getter();
          v93(v91, v57);
          if (v95)
          {
            sub_1000922D8();
            sub_100090B64();
          }

          else
          {
            sub_100093DFC(v46);
          }

          [objc_msgSend(v4 "systemApertureElementContext")];
          swift_unknownObjectRelease();
          (*(v120 + 8))(v46, v44);
          goto LABEL_40;
        }
      }

      else
      {
        v42 = v118;
        (*(v120 + 56))(v118, 1, 1, v119);
      }

      sub_10002D02C(v42, &unk_100115DA0, &unk_1000D3220);
      v66 = v109;
LABEL_40:
      v96 = objc_opt_self();
      v124 = 0;
      v125 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v97 = [v4 description];
      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;

      v124 = v98;
      v125 = v100;
      v101._countAndFlagsBits = 0xD000000000000019;
      v101._object = 0x80000001000DB8C0;
      String.append(_:)(v101);
      v102._countAndFlagsBits = v108;
      v102._object = v66;
      String.append(_:)(v102);
      v65 = String._bridgeToObjectiveC()();

      [v96 logInfo:v65];
      goto LABEL_13;
    }
  }

  v58 = objc_opt_self();
  v124 = 0;
  v125 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v59 = [v4 description];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v63._countAndFlagsBits = v60;
  v63._object = v62;
  String.append(_:)(v63);

  v64._countAndFlagsBits = 0xD00000000000003CLL;
  v64._object = 0x80000001000DB8E0;
  String.append(_:)(v64);
  v65 = String._bridgeToObjectiveC()();

  [v58 logError:v65];
LABEL_13:
}

id sub_10008E8CC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors] = 9;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_contentRole] = 2;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preferredLayoutMode] = 3;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_maximumLayoutMode] = 4;
  v8 = SBUISystemApertureElementIdentifierTimer;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preventsInteractiveDismissal] = 1;
  v9 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_allocWithZone(ObjCClassFromMetadata);
  v12 = v8;
  *&v2[v9] = [v11 init];
  v13 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView;
  *&v2[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView;
  *&v2[v14] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints] = &_swiftEmptyArrayStorage;
  v15 = &v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_launchURL;
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 56))(&v2[v16], 1, 1, v17);
  v18 = &v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observerId];
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v5 + 8))(v7, v4);
  *v18 = v19;
  v18[1] = v21;
  v22 = &v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmAttributes;
  v24 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v24 - 8) + 56))(&v2[v23], 1, 1, v24);
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_secondaryLabelPadding] = 0x4014000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_labelToButtonPadding] = 0x402E000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_timerAlertLabelPadding] = 0x4020000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_voiceOverTimer] = 0;
  v25 = type metadata accessor for AlarmKitApertureElementController(0);
  v28.receiver = v2;
  v28.super_class = v25;
  v26 = objc_msgSendSuper2(&v28, "initWithCoder:", a1);

  if (v26)
  {
  }

  return v26;
}

id sub_10008ECB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v32[1] = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors] = 9;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_maximumLayoutMode] = 4;
  v11 = SBUISystemApertureElementIdentifierTimer;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_elementIdentifier] = SBUISystemApertureElementIdentifierTimer;
  v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_preventsInteractiveDismissal] = 1;
  v12 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView;
  type metadata accessor for TimerApertureAccessoryView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_allocWithZone(ObjCClassFromMetadata);
  v15 = v11;
  *&v4[v12] = [v14 init];
  v16 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView;
  *&v4[v16] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView;
  *&v4[v17] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints] = &_swiftEmptyArrayStorage;
  v18 = &v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_associatedAppBundleIdentifier];
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_launchURL;
  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v21 = &v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observerId];
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v8 + 8))(v10, v7);
  *v21 = v22;
  v21[1] = v24;
  v25 = &v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmAttributes;
  v27 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v27 - 8) + 56))(&v4[v26], 1, 1, v27);
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel] = 0;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_horizontalPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_verticalPadding] = 0x4031000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmLabelBottomPadding] = 0x4033000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_secondaryLabelPadding] = 0x4014000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_labelToButtonPadding] = 0x402E000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_timerAlertLabelPadding] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_voiceOverTimer] = 0;
  if (a2)
  {
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for AlarmKitApertureElementController(0);
  v33.receiver = v4;
  v33.super_class = v29;
  v30 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", v28, a3);

  return v30;
}

id sub_10008F0F0()
{
  v1 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
    v3 = objc_opt_self();

    _StringGuts.grow(_:)(32);
    v4 = [v0 description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v14[0] = v5;
    v14[1] = v7;
    v8._object = 0x80000001000DB9D0;
    v8._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v8);

    v9._countAndFlagsBits = v2;
    v9._object = v1;
    String.append(_:)(v9);

    v10 = String._bridgeToObjectiveC()();

    [v3 logInfo:v10];

    if (qword_100113608 != -1)
    {
      swift_once();
    }

    sub_100025228(&unk_100118140, type metadata accessor for AlarmKitApertureElementController, &unk_1000D5B14);
    v11 = v0;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.deregisterObserver(_:for:)();

    sub_10004E3D4(v14);
  }

  v12 = type metadata accessor for AlarmKitApertureElementController(0);
  v15.receiver = v0;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, "dealloc");
}

void sub_10008F4C8()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AlarmKitApertureElementController(0);
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = objc_opt_self();
  _StringGuts.grow(_:)(40);
  v2 = [v0 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._object = 0x80000001000DB920;
  v6._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v6);
  v7 = String._bridgeToObjectiveC()();

  [v1 logInfo:{v7, v3, v5}];
}

uint64_t sub_10008F614(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AlarmPresentationState.Mode();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for AlarmPresentationState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AlarmKitApertureElementController(0);
  v38.receiver = v2;
  v38.super_class = v13;
  objc_msgSendSuper2(&v38, "viewWillAppear:", a1 & 1);
  v14 = objc_opt_self();
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v15 = [v2 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v36 = v16;
  v37 = v18;
  v19._countAndFlagsBits = 0x6C69577765697620;
  v19._object = 0xEF7261657070416CLL;
  String.append(_:)(v19);
  v20 = String._bridgeToObjectiveC()();

  [v14 logInfo:v20];

  v21 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (!v21)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_10002D02C(v9, &unk_100115DA0, &unk_1000D3220);
  }

  v22 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  v23 = qword_100113608;

  if (v23 != -1)
  {
    swift_once();
  }

  v34 = v22;
  v35 = v21;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v36);
  v24 = (*(v11 + 48))(v9, 1, v10);
  v25 = v33;
  if (v24 == 1)
  {
    return sub_10002D02C(v9, &unk_100115DA0, &unk_1000D3220);
  }

  (*(v11 + 32))(v33, v9, v10);
  AlarmPresentationState.mode.getter();
  v26 = AlarmPresentationState.Mode.isAlerting.getter();
  v27 = v32;
  v28 = *(v31 + 8);
  v28(v6, v32);
  sub_10008FAEC(v26 & 1);
  AlarmPresentationState.mode.getter();
  v29 = AlarmPresentationState.Mode.isAlerting.getter();
  v28(v6, v27);
  if (v29)
  {
    sub_1000922D8();
    sub_100090B64();
  }

  else
  {
    sub_100093DFC(v25);
  }

  return (*(v11 + 8))(v25, v10);
}

void sub_10008FAEC(char a1)
{
  if ((a1 & 1) == 0)
  {
    v9 = *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors];
    *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors] = 9;
    if (v9 != 9)
    {
      [objc_msgSend(v1 "systemApertureElementContext")];

      swift_unknownObjectRelease();
    }

    return;
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_10002BB3C(0, &qword_100118128, UIScene_ptr);
  sub_1000967CC();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v4 + 56);

    v7 = 0;
  }

  v27 = v6;
  v13 = (v6 + 64) >> 6;
  v29 = v4;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v16 = v30) == 0))
    {
LABEL_47:
      v25 = 2;
LABEL_48:
      sub_100096834(v4);

      v26 = *&v28[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors];
      *&v28[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_presentationBehaviors] = v25;
      if (v26 != v25)
      {
        [objc_msgSend(v28 "systemApertureElementContext")];
        swift_unknownObjectRelease();
      }

      return;
    }

LABEL_22:
    v17 = [v16 session];
    v18 = [v17 role];

    v19 = sub_10008BB48(v18);
    if (v19 == 5)
    {
      v20 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_36;
      }

      if (v19 <= 2u || v19 > 4u || v19 == 3)
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_36;
        }

        if (v19)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
LABEL_36:
            v20 = 1;
            v4 = v29;
            goto LABEL_44;
          }

          if (v19 > 3u)
          {
            v4 = v29;
            goto LABEL_42;
          }

          if (v19 != 1)
          {
            v4 = v29;
LABEL_42:
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
            goto LABEL_43;
          }

          v20 = 1;
          v4 = v29;
        }

        else
        {
          v20 = 1;
          v4 = v29;
        }
      }

      else
      {
        v20 = 1;
        v4 = v29;
      }
    }

LABEL_43:

LABEL_44:
    v24 = [v16 activationState];

    if ((v20 & 1) != 0 && !v24)
    {
      v25 = 8;
      goto LABEL_48;
    }
  }

  v14 = v7;
  v15 = v8;
  if (v8)
  {
LABEL_18:
    v8 = (v15 - 1) & v15;
    v16 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_47;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v13)
    {
      goto LABEL_47;
    }

    v15 = *(v5 + 8 * v7);
    ++v14;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

id sub_100090298()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v62 - v5;
  v7 = type metadata accessor for AlarmPresentationState.Mode();
  v73 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AlarmPresentationState.Mode.Countdown();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = type metadata accessor for AlarmPresentationState();
  result = __chkstk_darwin(v15);
  v20 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
  if (v20)
  {
    v21 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel];
    if (v21)
    {
      v63 = v2;
      v22 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
      if (!v22)
      {
        (*(v19 + 56))(v14, 1, 1);
        return sub_10002D02C(v14, &unk_100115DA0, &unk_1000D3220);
      }

      v62 = v1;
      v67 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      v68 = v19;
      v69 = v17;
      v65 = v0;
      v23 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
      v24 = qword_100113608;
      v64 = v20;
      v66 = v21;

      if (v24 != -1)
      {
        swift_once();
      }

      v74 = v23;
      v75 = v22;
      AnyHashable.init<A>(_:)();
      dispatch thunk of DataStore.getEntry(for:)();
      sub_10004E3D4(&v76);
      v26 = v68;
      v25 = v69;
      if ((*(v68 + 48))(v14, 1, v69) == 1)
      {

        return sub_10002D02C(v14, &unk_100115DA0, &unk_1000D3220);
      }

      (*(v26 + 32))(v67, v14, v25);
      v27 = *&v65[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalCountdownAnimation];
      v74 = v66;
      type metadata accessor for AlarmPresentationStateViewModel(0);

      State.init(wrappedValue:)();
      v29 = v76;
      v28 = v77;
      v30 = objc_allocWithZone(sub_1000032D4(&unk_1001180F0, &qword_1000D5BB8));
      v76 = v29;
      v77 = v28;
      v78 = v27;
      v79 = 2;
      *&v30[*((swift_isaMask & *v30) + qword_10011F398 + 16) + 8] = 0;
      swift_unknownObjectWeakInit();
      v31 = UIHostingController.init(rootView:)();
      v32 = v64;
      v64 = v31;
      sub_10009669C(v31, v20, 0);
      AlarmPresentationState.mode.getter();
      v33 = v73;
      if ((*(v73 + 88))(v9, v7) == enum case for AlarmPresentationState.Mode.countdown(_:))
      {
        (*(v33 + 96))(v9, v7);
        v34 = v70;
        v35 = v9;
        v36 = v72;
        (*(v70 + 32))(v11, v35, v72);
        AlarmPresentationState.Mode.Countdown.fireDate.getter();
        v37 = v71;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v39 = v38;
        v40 = v62;
        v41 = *(v63 + 8);
        v41(v37, v62);
        v41(v6, v40);
        sub_10008BEF0(v39);
        v42 = String._bridgeToObjectiveC()();

        [v32 setAccessibilityLabel:v42];

        (*(v34 + 8))(v11, v36);
      }

      else
      {
        (*(v33 + 8))(v9, v7);
      }

      result = [v65 view];
      v43 = v64;
      if (result)
      {
        v44 = result;
        [result addSubview:v32];

        result = [v43 view];
        if (result)
        {
          v45 = result;
          v46 = objc_opt_self();
          sub_1000032D4(&qword_100115480, &qword_1000D2510);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1000D24B0;
          v48 = [v45 leadingAnchor];
          v49 = [v32 leadingAnchor];
          v50 = v32;
          v51 = [v48 constraintEqualToAnchor:v49];

          *(v47 + 32) = v51;
          v52 = [v45 trailingAnchor];
          v53 = [v50 trailingAnchor];
          v54 = [v52 constraintEqualToAnchor:v53];

          *(v47 + 40) = v54;
          v55 = [v45 topAnchor];
          v56 = [v50 topAnchor];
          v57 = [v55 constraintEqualToAnchor:v56];

          *(v47 + 48) = v57;
          v58 = [v45 bottomAnchor];
          v59 = [v50 bottomAnchor];
          v60 = [v58 constraintEqualToAnchor:v59];

          *(v47 + 56) = v60;
          sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v46 activateConstraints:isa];

          return (*(v68 + 8))(v67, v69);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

id sub_100090B64()
{
  v1 = v0;
  v2 = type metadata accessor for AlarmPresentationState.Mode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v10 - 8);
  v12 = &v72 - v11;
  v13 = type metadata accessor for AlarmPresentationState();
  __chkstk_darwin(v13);
  v17 = *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (!v17)
  {
    (*(v16 + 56))(v12, 1, 1);
    return sub_10002D02C(v12, &unk_100115DA0, &unk_1000D3220);
  }

  v73 = v3;
  v74 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v16;
  v76 = v14;
  v18 = *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  v19 = qword_100113608;

  if (v19 != -1)
  {
    swift_once();
  }

  v77 = v18;
  v78 = v17;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v79);
  v20 = v75;
  v21 = v76;
  if ((*(v75 + 48))(v12, 1, v76) == 1)
  {
    return sub_10002D02C(v12, &unk_100115DA0, &unk_1000D3220);
  }

  v22 = v74;
  (*(v20 + 32))(v74, v12, v21);
  v23 = *&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel];
  if (!v23)
  {
    return (*(v20 + 8))(v22, v21);
  }

  v24 = objc_opt_self();
  v79 = 0;
  v80 = 0xE000000000000000;
  v72 = v23;

  _StringGuts.grow(_:)(40);

  v79 = 0xD000000000000026;
  v80 = 0x80000001000DB890;
  AlarmPresentationState.alarmID.getter();
  sub_100025228(&qword_100118110, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  (*(v7 + 8))(v9, v6);
  v26 = String._bridgeToObjectiveC()();

  [v24 logInfo:v26];

  v27 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost])
  {
    v77 = v72;
    type metadata accessor for AlarmPresentationStateViewModel(0);

    State.init(wrappedValue:)();
    v28 = v79;
    v29 = v80;
    v30 = objc_allocWithZone(sub_1000032D4(&qword_100118118, &qword_1000D5BC0));
    v79 = v28;
    v80 = v29;
    v81 = 512;
    *&v30[*((swift_isaMask & *v30) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    v31 = UIHostingController.init(rootView:)();
    v32 = [v1 view];
    v33 = sub_10009669C(v31, v32, 1);

    v34 = *&v1[v27];
    *&v1[v27] = v33;
  }

  AlarmPresentationState.mode.getter();
  v35 = AlarmPresentationState.Mode.isAlerting.getter();
  (v73)[1](v5, v2);
  if ((v35 & 1) == 0)
  {
    v36 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel;
    if (!*&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel])
    {
      v77 = v72;
      type metadata accessor for AlarmPresentationStateViewModel(0);

      State.init(wrappedValue:)();
      v37 = v79;
      v38 = v80;
      v39 = objc_allocWithZone(sub_1000032D4(&qword_100118120, qword_1000D5BC8));
      v79 = v37;
      v80 = v38;
      *&v39[*((swift_isaMask & *v39) + qword_10011F398 + 16) + 8] = 0;
      swift_unknownObjectWeakInit();
      v40 = UIHostingController.init(rootView:)();
      v41 = [v1 view];
      v42 = sub_10009669C(v40, v41, 0);

      v43 = *&v1[v36];
      *&v1[v36] = v42;
    }
  }

  v44 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost;
  if (!*&v1[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost])
  {
    v77 = v72;
    type metadata accessor for AlarmPresentationStateViewModel(0);

    State.init(wrappedValue:)();
    v45 = v79;
    v46 = v80;
    v47 = objc_allocWithZone(sub_1000032D4(&qword_100118118, &qword_1000D5BC0));
    v79 = v45;
    v80 = v46;
    v81 = 513;
    *&v47[*((swift_isaMask & *v47) + qword_10011F398 + 16) + 8] = 0;
    swift_unknownObjectWeakInit();
    v48 = UIHostingController.init(rootView:)();
    v49 = [v1 view];
    v50 = sub_10009669C(v48, v49, 1);

    v51 = *&v1[v44];
    *&v1[v44] = v50;
  }

  result = *&v1[v27];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  result = [result view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v53 = result;
  result = *&v1[v44];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = [result view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v54 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v55 = result;
  v56 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1000D59F0;
  v73 = v53;
  v58 = [v53 leadingAnchor];
  result = [v1 view];
  if (result)
  {
    v59 = result;
    v60 = [result leadingAnchor];

    v61 = [v58 constraintEqualToAnchor:v60 constant:16.0];
    *(v57 + 32) = v61;
    v62 = [v54 leadingAnchor];
    v63 = v56;
    v64 = [v56 trailingAnchor];
    v65 = [v62 constraintEqualToAnchor:v64];

    *(v57 + 40) = v65;
    v66 = [v54 centerYAnchor];
    result = [v1 view];
    if (result)
    {
      v67 = result;
      v68 = objc_opt_self();
      v69 = [v67 centerYAnchor];

      v70 = [v66 constraintEqualToAnchor:v69];
      *(v57 + 48) = v70;
      sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v68 activateConstraints:isa];

      sub_1000915E4();

      return (*(v75 + 8))(v74, v76);
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id sub_1000915E4()
{
  v1 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  __chkstk_darwin(v1 - 8);
  v3 = &v101 - v2;
  v4 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v101 - v6;
  v8 = type metadata accessor for AlarmPresentationState.Mode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v12 - 8);
  v14 = &v101 - v13;
  v15 = type metadata accessor for AlarmPresentationState();
  __chkstk_darwin(v15);
  v19 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (!v19)
  {
    (*(v18 + 56))(v14, 1, 1);
    return sub_10002D02C(v14, &unk_100115DA0, &unk_1000D3220);
  }

  v108 = v3;
  v109 = v9;
  v107 = v5;
  v110 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v18;
  v112 = v16;
  v20 = v0;
  v21 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  v22 = qword_100113608;

  if (v22 != -1)
  {
    swift_once();
  }

  v113 = v21;
  v114 = v19;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(v115);
  v24 = v111;
  v23 = v112;
  if ((*(v111 + 48))(v14, 1, v112) == 1)
  {
    return sub_10002D02C(v14, &unk_100115DA0, &unk_1000D3220);
  }

  v25 = v110;
  (*(v24 + 32))(v110, v14, v23);
  v26 = v20;
  v27 = *&v20[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost];
  if (!v27)
  {
    return (*(v24 + 8))(v25, v23);
  }

  v28 = *(v26 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost);
  if (!v28)
  {
    return (*(v24 + 8))(v25, v23);
  }

  v106 = *(v26 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel);
  if (!v106)
  {
    return (*(v24 + 8))(v25, v23);
  }

  v29 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints;
  v30 = *(v26 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customConstraints);
  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v105 = v28;
  if (v31)
  {
    v104 = objc_opt_self();
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    v32 = v27;
    v33 = v28;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v104 deactivateConstraints:isa];

    *(v26 + v29) = &_swiftEmptyArrayStorage;
  }

  else
  {
    v36 = v27;
    v37 = v28;
  }

  result = [v27 view];
  v103 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_40;
  }

  v38 = v105;
  result = [v105 view];
  v104 = result;
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = [v26 view];
  if (!result)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v39 = result;
  v102 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

  AlarmPresentationState.mode.getter();
  LOBYTE(v39) = AlarmPresentationState.Mode.isAlerting.getter();
  v109[1](v11, v8);
  if ((v39 & 1) == 0)
  {
    v58 = *(v26 + OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel);
    v40 = v103;
    v57 = v104;
    if (!v58)
    {
LABEL_37:
      v99 = objc_opt_self();
      sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);

      v100 = Array._bridgeToObjectiveC()().super.isa;

      [v99 activateConstraints:v100];

      return (*(v111 + 8))(v110, v112);
    }

    v108 = v29;
    v109 = v27;
    v101 = v58;
    result = [v101 view];
    if (result)
    {
      v59 = result;
      sub_1000032D4(&qword_100115480, &qword_1000D2510);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1000D5170;
      v61 = [v40 trailingAnchor];
      v62 = [v59 leadingAnchor];
      v63 = [v61 constraintEqualToAnchor:v62];

      *(v60 + 32) = v63;
      v107 = v59;
      v64 = [v59 trailingAnchor];
      v65 = v104;
      v66 = [v104 leadingAnchor];
      v67 = [v64 constraintEqualToAnchor:v66];

      *(v60 + 40) = v67;
      v68 = [v40 trailingAnchor];
      v69 = [v102 leadingAnchor];
      v70 = [v68 constraintEqualToAnchor:v69];

      *(v60 + 48) = v70;
      v71 = [v40 centerYAnchor];
      result = [v26 view];
      if (result)
      {
        v72 = result;
        v73 = [result centerYAnchor];

        v74 = [v71 constraintEqualToAnchor:v73];
        *(v60 + 56) = v74;
        v75 = [v107 firstBaselineAnchor];
        v76 = [v65 firstBaselineAnchor];
        v77 = [v75 constraintEqualToAnchor:v76];

        *(v60 + 64) = v77;
        v78 = [v65 trailingAnchor];
        result = [v26 view];
        if (result)
        {
          v79 = result;
          v80 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

          v81 = [v80 trailingAnchor];
          v82 = [v78 constraintEqualToAnchor:v81];

          *(v60 + 72) = v82;
          v40 = v103;
          v57 = v104;
LABEL_36:
          *&v108[v26] = v60;

          v27 = v109;
          v38 = v105;
          goto LABEL_37;
        }

        goto LABEL_47;
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = [v26 view];
  v40 = v103;
  if (!result)
  {
    goto LABEL_42;
  }

  v41 = result;
  v42 = [result SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

  [v42 layoutFrame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v116.origin.x = v44;
  v116.origin.y = v46;
  v116.size.width = v48;
  v116.size.height = v50;
  [v40 sizeThatFits:{1.79769313e308, CGRectGetHeight(v116)}];
  v52 = v51;
  v53 = v107;
  (*(v107 + 2))(v7, v106 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel_attributes, v4);
  v54 = v108;
  AlarmAttributes.metadata.getter();
  v53[1](v7, v4);
  v55 = type metadata accessor for MTAlarmCustomContent();
  if ((*(*(v55 - 8) + 48))(v54, 1, v55))
  {
    sub_10002D02C(v54, &unk_100118100, &qword_1000D1250);
    v56 = 0.0;
    v57 = v104;
    goto LABEL_33;
  }

  MTAlarmCustomContent.type.getter();
  sub_10002D02C(v54, &unk_100118100, &qword_1000D1250);
  v83 = AlarmType.rawValue.getter();
  v84 = AlarmType.rawValue.getter();
  v56 = 0.0;
  v57 = v104;
  if (v83 != v84)
  {
LABEL_33:
    v108 = v29;
    v109 = v27;
    sub_1000032D4(&qword_100115480, &qword_1000D2510);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1000D59F0;
    v88 = [v40 trailingAnchor];
    v89 = [v57 leadingAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];

    *(v60 + 32) = v90;
    v91 = [v40 centerYAnchor];
    result = [v26 view];
    if (result)
    {
      v92 = result;
      v93 = [result centerYAnchor];

      v94 = [v91 constraintEqualToAnchor:v93 constant:v56];
      *(v60 + 40) = v94;
      v95 = [v57 trailingAnchor];
      result = [v26 view];
      if (result)
      {
        v96 = result;
        v97 = [result trailingAnchor];

        v98 = [v95 constraintEqualToAnchor:v97 constant:-16.0];
        *(v60 + 48) = v98;
        goto LABEL_36;
      }

      goto LABEL_44;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = [v26 view];
  if (result)
  {
    v85 = result;
    [result SBUISA_maximumAccessoryViewWidth];
    v87 = v86;

    if (v87 > v52)
    {
      v56 = 0.0;
    }

    else
    {
      v56 = 8.0;
    }

    goto LABEL_33;
  }

LABEL_48:
  __break(1u);
  return result;
}

void sub_1000922D8()
{
  v1 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_11;
    }

    v5 = v4;
    [v4 removeFromSuperview];

    [v3 removeFromParentViewController];
    [v0 removeChildViewController:v3];

    v6 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v7 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost;
  v8 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v9 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  [v9 removeFromParentViewController];
  [v0 removeChildViewController:v9];

  v12 = *&v0[v7];
  *&v0[v7] = 0;
}

void sub_100092418()
{
  v1 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost;
  v2 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customLeadingHost];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_14;
    }

    v5 = v4;
    [v4 removeFromSuperview];

    [v3 removeFromParentViewController];
    [v0 removeChildViewController:v3];

    v6 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v7 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel;
  v8 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customSecondaryLabel];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v9 view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  [v9 removeFromParentViewController];
  [v0 removeChildViewController:v9];

  v12 = *&v0[v7];
  *&v0[v7] = 0;

LABEL_7:
  v13 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost;
  v14 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_customTrailingHost];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = [v15 view];
  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 removeFromSuperview];

  [v15 removeFromParentViewController];
  [v0 removeChildViewController:v15];

  v18 = *&v0[v13];
  *&v0[v13] = 0;
}

double sub_1000925C4(uint64_t a1, char *a2)
{
  v3 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode;
  v4 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_activeLayoutMode];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_38;
      }

      v13 = objc_opt_self();
      _StringGuts.grow(_:)(32);
      v14 = [a2 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15._countAndFlagsBits = 0xD00000000000001ELL;
      v15._object = 0x80000001000D9EE0;
      String.append(_:)(v15);
      v16 = String._bridgeToObjectiveC()();

      [v13 logInfo:v16];

      sub_100092418();
    }

    else
    {
      v32 = objc_opt_self();
      _StringGuts.grow(_:)(31);
      v33 = [a2 description];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v34._object = 0x80000001000D9F60;
      v34._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v34);
      v35 = String._bridgeToObjectiveC()();

      [v32 logInfo:v35];
    }

    v36 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
    if (v36)
    {
      [v36 setHidden:1];
    }

    v37 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
    if (v37)
    {
      [v37 setHidden:1];
    }

    v38 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
    if (v38)
    {
      [v38 setHidden:1];
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v17 = objc_opt_self();
        _StringGuts.grow(_:)(31);
        v18 = [a2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v19._object = 0x80000001000D9F40;
        v19._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v19);
        v20 = String._bridgeToObjectiveC()();

        [v17 logInfo:v20];

        sub_100092418();
        v21 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
        if (v21)
        {
          [v21 setHidden:1];
        }

        v22 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
        if (v22)
        {
          [v22 setHidden:1];
        }

        v23 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
        if (v23)
        {
          [v23 setHidden:0];
        }

        break;
      case 3:
        v24 = objc_opt_self();
        _StringGuts.grow(_:)(31);
        v25 = [a2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v26._object = 0x80000001000D9F20;
        v26._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v26);
        v27 = String._bridgeToObjectiveC()();

        [v24 logInfo:v27];

        sub_100092418();
        v28 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
        if (v28)
        {
          [v28 setHidden:0];
        }

        v29 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
        if (v29)
        {
          [v29 setHidden:0];
        }

        v30 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
        if (v30)
        {
          [v30 setHidden:1];
        }

        v31 = [objc_msgSend(a2 "systemApertureElementContext")];
        swift_unknownObjectRelease();
        if (v31)
        {
          if ([v31 isUserInitiated])
          {
            sub_100092FFC();
          }
        }

        break;
      case 4:
        v5 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
        if (v5)
        {
          [v5 setHidden:1];
        }

        v6 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
        if (v6)
        {
          [v6 setHidden:1];
        }

        v7 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_minimalView];
        if (v7)
        {
          [v7 setHidden:1];
        }

        v8 = objc_opt_self();
        _StringGuts.grow(_:)(30);
        v9 = [a2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v10._countAndFlagsBits = 0xD00000000000001CLL;
        v10._object = 0x80000001000D9F00;
        String.append(_:)(v10);
        v11 = String._bridgeToObjectiveC()();

        [v8 logInfo:v11];

        sub_100090B64();
        break;
      default:
LABEL_38:
        v39 = objc_opt_self();
        _StringGuts.grow(_:)(35);
        v40 = [a2 description];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v41._countAndFlagsBits = 0xD000000000000021;
        v41._object = 0x80000001000D9EB0;
        String.append(_:)(v41);
        v42 = String._bridgeToObjectiveC()();

        [v39 logInfo:v42];

        break;
    }
  }

  v43 = *&a2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel];
  if (v43)
  {
    if (*(v43 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode) != *&a2[v3])
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel, &unk_1000D5AC0);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void sub_100092EAC(uint64_t a1)
{
  sub_100056DFC(319);
  if (v1 <= 0x3F)
  {
    sub_10004A5CC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100092FFC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v108 = v2;
  v109 = v3;
  v4 = __chkstk_darwin(v2);
  v107 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v102 = &v97 - v6;
  v7 = sub_1000032D4(&unk_100115DF0, &qword_1000D1260);
  __chkstk_darwin(v7 - 8);
  v100 = &v97 - v8;
  v99 = type metadata accessor for AlarmPresentation();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v11 = __chkstk_darwin(v10 - 8);
  v103 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v101 = &v97 - v13;
  v14 = type metadata accessor for AlarmPresentationState.Mode();
  v105 = *(v14 - 8);
  v106 = v14;
  __chkstk_darwin(v14);
  v104 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  __chkstk_darwin(v16 - 8);
  v18 = &v97 - v17;
  v114 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v110 = &v97 - v19;
  v20 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  __chkstk_darwin(v20 - 8);
  v22 = &v97 - v21;
  v23 = type metadata accessor for AlarmPresentationState();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v115 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = objc_opt_self();
  v119 = 0;
  v120 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v27 = [v0 description];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v119 = v28;
  v120 = v30;
  v31._countAndFlagsBits = 0xD000000000000017;
  v31._object = 0x80000001000D9BB0;
  String.append(_:)(v31);
  v32 = String._bridgeToObjectiveC()();

  v33 = v26;
  [v26 logInfo:v32];

  v34 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId + 8];
  if (!v34)
  {
    (*(v24 + 56))(v22, 1, 1, v23);
LABEL_8:
    v44 = &unk_100115DA0;
    v45 = &unk_1000D3220;
    v46 = v22;
    return sub_10002D02C(v46, v44, v45);
  }

  v112 = v24;
  v113 = v23;
  v35 = *&v0[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmId];
  v36 = qword_100113608;

  if (v36 != -1)
  {
    swift_once();
  }

  v117 = v35;
  v118 = v34;
  AnyHashable.init<A>(_:)();
  dispatch thunk of DataStore.getEntry(for:)();
  sub_10004E3D4(&v119);
  v38 = v112;
  v37 = v113;
  v39 = (*(v112 + 48))(v22, 1, v113);
  v40 = v115;
  if (v39 == 1)
  {
    goto LABEL_8;
  }

  (*(v38 + 32))(v115, v22, v37);
  v41 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_alarmAttributes;
  swift_beginAccess();
  sub_10002CFC4(v1 + v41, v18, &qword_100115E38, &qword_1000D3280);
  v42 = v111;
  v43 = v114;
  if ((*(v111 + 48))(v18, 1, v114) == 1)
  {
    (*(v38 + 8))(v40, v37);
    v44 = &qword_100115E38;
    v45 = &qword_1000D3280;
    v46 = v18;
    return sub_10002D02C(v46, v44, v45);
  }

  v48 = v110;
  (*(v42 + 32))(v110, v18, v43);
  v49 = v104;
  AlarmPresentationState.mode.getter();
  v50 = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v105 + 8))(v49, v106);
  if ((v50 & 1) == 0)
  {
    (*(v42 + 8))(v48, v43);
    return (*(v112 + 8))(v40, v113);
  }

  v51 = v1;
  v52 = v101;
  AlarmAttributes.metadata.getter();
  v53 = type metadata accessor for MTAlarmCustomContent();
  v54 = *(v53 - 8);
  v105 = *(v54 + 48);
  if ((v105)(v52, 1, v53) == 1)
  {
    sub_10002D02C(v52, &unk_100118100, &qword_1000D1250);
  }

  else
  {
    MTAlarmCustomContent.type.getter();
    (*(v54 + 8))(v52, v53);
    v55 = AlarmType.rawValue.getter();
    if (v55 == AlarmType.rawValue.getter())
    {
      v56 = v97;
      AlarmAttributes.presentation.getter();
      v57 = v100;
      AlarmPresentation.countdown.getter();
      (*(v98 + 8))(v56, v99);
      v58 = type metadata accessor for AlarmPresentation.Countdown();
      v59 = (*(*(v58 - 8) + 48))(v57, 1, v58);
      sub_10002D02C(v57, &unk_100115DF0, &qword_1000D1260);
      if (v59 != 1)
      {
        v60 = 3;
        goto LABEL_17;
      }
    }
  }

  v60 = 0;
LABEL_17:
  v117 = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v61 = [v51 description];
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v65._countAndFlagsBits = v62;
  v65._object = v64;
  String.append(_:)(v65);

  v66._countAndFlagsBits = 0xD00000000000001ALL;
  v66._object = 0x80000001000DB870;
  String.append(_:)(v66);
  v67 = v102;
  AlarmPresentationState.alarmID.getter();
  v68 = UUID.uuidString.getter();
  v70 = v69;
  v71 = *(v109 + 8);
  v109 += 8;
  v106 = v71;
  v71(v67, v108);
  v72._countAndFlagsBits = v68;
  v72._object = v70;
  String.append(_:)(v72);

  v73._countAndFlagsBits = 0x6361206874697720;
  v73._object = 0xEE00203A6E6F6974;
  String.append(_:)(v73);
  LOBYTE(v116) = v60;
  _print_unlocked<A, B>(_:_:)();
  v74 = String._bridgeToObjectiveC()();

  [v33 logInfo:v74];

  if (qword_100113630 != -1)
  {
    swift_once();
  }

  v75 = qword_10011F508;
  AlarmPresentationState.alarmID.getter();
  v104 = AlarmPresentationState.bundleID.getter();
  v77 = v76;
  v78 = v103;
  AlarmAttributes.metadata.getter();
  v79 = (v105)(v78, 1, v53);
  if (v79 == 1)
  {
    sub_10002D02C(v78, &unk_100118100, &qword_1000D1250);
    v105 = 0;
  }

  else
  {
    v105 = MTAlarmCustomContent.type.getter();
    (*(v54 + 8))(v78, v53);
  }

  v117 = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v116 = v75;
  type metadata accessor for AlarmAndTimerCoordinator();
  _print_unlocked<A, B>(_:_:)();
  v80._object = 0x80000001000D7D50;
  v80._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v80);
  LOBYTE(v116) = v60;
  _print_unlocked<A, B>(_:_:)();
  v81._countAndFlagsBits = 0x616C6120726F6620;
  v81._object = 0xEF203A6469206D72;
  String.append(_:)(v81);
  sub_100025228(&qword_100118110, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v82 = v107;
  v83 = v108;
  v84._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v84);

  v85._object = 0x80000001000D7D70;
  v85._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v85);
  v86._countAndFlagsBits = 0x6572757472657041;
  v86._object = 0xE800000000000000;
  String.append(_:)(v86);
  v87 = String._bridgeToObjectiveC()();

  [v33 logInfo:v87];

  if (v77)
  {
    v88 = v79 == 1;
    v89 = v110;
    v91 = v112;
    v90 = v113;
    v82 = v107;
    v92 = v111;
    if (v60 > 1)
    {
      sub_10007D1D0(v107, v104, v77, v105, v88);
    }

    else
    {
      sub_10007D8CC(v107, v104, v77, v105, v88);
    }

    v96 = v108;
  }

  else
  {
    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    v93._countAndFlagsBits = 0xD000000000000047;
    v93._object = 0x80000001000D7D90;
    String.append(_:)(v93);
    v94._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v94);

    v95 = String._bridgeToObjectiveC()();

    [v33 logError:v95];

    v96 = v83;
    v89 = v110;
    v92 = v111;
    v91 = v112;
    v90 = v113;
  }

  v106(v82, v96);
  (*(v92 + 8))(v89, v114);
  return (*(v91 + 8))(v115, v90);
}

void sub_100093DFC(uint64_t a1)
{
  v2 = v1;
  v134 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v121 - v8;
  v135 = type metadata accessor for AlarmPresentationState.Mode();
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v11 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AlarmPresentationState.Mode.Countdown();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost;
  v17 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownTrailingHost];
  if (v17)
  {
    v18 = [v17 parentViewController];
    if (v18)
    {

      return;
    }
  }

  v130 = v7;
  v19 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_observableModel];
  if (!v19)
  {
    return;
  }

  v126 = v15;
  v127 = v13;
  v128 = v12;
  v129 = v9;
  v124 = v4;
  v125 = v3;
  v20 = objc_opt_self();
  v137 = 0;
  v138 = 0xE000000000000000;

  _StringGuts.grow(_:)(62);
  v21 = [v2 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._object = 0x80000001000DB840;
  v26._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v26);
  v27 = [v2 view];
  v136[0] = v27;
  sub_1000032D4(&qword_100116228, &unk_1000D5BA0);
  _print_unlocked<A, B>(_:_:)();

  v28._countAndFlagsBits = 0x696C69617274202CLL;
  v28._object = 0xEC000000203A676ELL;
  String.append(_:)(v28);
  v136[0] = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_trailingView];
  v29 = v136[0];
  sub_1000032D4(&unk_100116230, &qword_1000D3970);
  _print_unlocked<A, B>(_:_:)();
  v30 = String._bridgeToObjectiveC()();

  [v20 logInfo:v30];

  v136[0] = v19;
  v31 = type metadata accessor for AlarmPresentationStateViewModel(0);

  State.init(wrappedValue:)();
  v140 = &off_100102C38;
  swift_unknownObjectWeakInit();
  v32 = objc_allocWithZone(sub_1000032D4(&qword_1001180E8, &qword_1000D5BB0));
  *&v32[*((swift_isaMask & *v32) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000965EC(&v137, v136);
  v33 = UIHostingController.init(rootView:)();
  sub_100096648(&v137);
  v34 = *&v2[v16];
  *&v2[v16] = v33;
  v35 = v33;

  v36 = v29;
  sub_10009669C(v35, v29, 0);

  v132 = v19;
  v123 = v29;
  v131 = v11;
  if (!v29)
  {
    goto LABEL_16;
  }

  v37 = [v2 view];
  if (!v37)
  {
    __break(1u);
    goto LABEL_35;
  }

  v38 = v37;
  [v37 addSubview:v36];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = *&v2[v16];
  if (!v39)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v122 = v31;
  v40 = [v39 view];
  if (!v40)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v41 = v40;
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000D24C0;
  v43 = [v41 leadingAnchor];
  v44 = [v36 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v42 + 32) = v45;
  v46 = [v41 trailingAnchor];
  v47 = [v36 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v42 + 40) = v48;
  v49 = [v41 topAnchor];
  v50 = [v36 topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v42 + 48) = v51;
  v52 = [v41 bottomAnchor];
  v53 = [v36 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v42 + 56) = v54;
  v55 = [v36 topAnchor];
  v56 = [v2 view];
  if (!v56)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v57 = v56;
  v58 = [v56 topAnchor];

  v59 = [v55 constraintEqualToAnchor:v58];
  *(v42 + 64) = v59;
  v60 = [v36 leadingAnchor];
  v61 = [v2 view];
  if (!v61)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v62 = v61;
  v63 = [v61 SBUISA_systemApertureTrailingViewLayoutGuide];

  v64 = [v63 leadingAnchor];
  v65 = [v60 constraintEqualToAnchor:v64];

  *(v42 + 72) = v65;
  v66 = [v36 bottomAnchor];
  v67 = [v2 view];
  if (!v67)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v68 = v67;
  v69 = [v67 bottomAnchor];

  v70 = [v66 constraintEqualToAnchor:v69];
  *(v42 + 80) = v70;
  v71 = [v36 trailingAnchor];
  v72 = [v2 view];
  if (!v72)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v73 = v72;
  v74 = objc_opt_self();
  v75 = [v73 trailingAnchor];

  v76 = [v71 constraintEqualToAnchor:v75];
  *(v42 + 88) = v76;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 activateConstraints:isa];

  v11 = v131;
  v19 = v132;
LABEL_16:
  v78 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compactCountdownAnimation];
  v136[0] = v19;

  State.init(wrappedValue:)();
  v79 = v137;
  v80 = v138;
  v81 = objc_allocWithZone(sub_1000032D4(&unk_1001180F0, &qword_1000D5BB8));
  v137 = v79;
  v138 = v80;
  v139 = v78;
  v140 = 3;
  *&v81[*((swift_isaMask & *v81) + qword_10011F398 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  v82 = UIHostingController.init(rootView:)();
  v83 = OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost;
  v84 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost];
  *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_compressedCountdownLeadingHost] = v82;
  v85 = v82;

  v86 = *&v2[OBJC_IVAR____TtC10ClockAngel33AlarmKitApertureElementController_leadingView];
  v87 = v86;
  sub_10009669C(v85, v86, 0);

  if (!v86)
  {
    goto LABEL_21;
  }

  v88 = [v2 view];
  if (!v88)
  {
    goto LABEL_39;
  }

  v89 = v88;
  [v88 addSubview:v87];

  v90 = *&v2[v83];
  if (!v90)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v91 = [v90 view];
  if (!v91)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v92 = v91;
  v122 = objc_opt_self();
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1000D24B0;
  v94 = [v92 leadingAnchor];
  v95 = [v87 leadingAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v93 + 32) = v96;
  v97 = [v92 trailingAnchor];
  v98 = [v87 trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v93 + 40) = v99;
  v100 = [v92 topAnchor];
  v101 = [v87 topAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v93 + 48) = v102;
  v103 = [v92 bottomAnchor];
  v104 = [v87 bottomAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v93 + 56) = v105;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  v106 = Array._bridgeToObjectiveC()().super.isa;

  [v122 activateConstraints:v106];

  v11 = v131;
LABEL_21:
  AlarmPresentationState.mode.getter();
  v107 = v133;
  v108 = v135;
  if ((*(v133 + 88))(v11, v135) == enum case for AlarmPresentationState.Mode.countdown(_:))
  {
    (*(v107 + 96))(v11, v108);
    (*(v127 + 32))(v126, v11, v128);
    v109 = v129;
    AlarmPresentationState.Mode.Countdown.fireDate.getter();
    v110 = v130;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v112 = v111;
    v113 = *(v124 + 8);
    v114 = v125;
    v113(v110, v125);
    v113(v109, v114);
    sub_10008BEF0(v112);
    if (v123)
    {
      v115 = String._bridgeToObjectiveC()();
      [v36 setAccessibilityLabel:v115];
    }

    if (v86)
    {
      v116 = String._bridgeToObjectiveC()();

      [v87 setAccessibilityLabel:v116];
    }

    else
    {
    }

    v118 = v128;
    v117 = v129;
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    v120 = v126;
    if (IsVoiceOverRunning || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
    {
      [objc_msgSend(v2 "systemApertureElementContext")];
      swift_unknownObjectRelease();
      AlarmPresentationState.Mode.Countdown.fireDate.getter();
      sub_100094DA0(v117);

      v113(v117, v125);
      (*(v127 + 8))(v120, v118);
    }

    else
    {
      (*(v127 + 8))(v120, v118);
    }
  }

  else
  {

    (*(v107 + 8))(v11, v108);
  }
}