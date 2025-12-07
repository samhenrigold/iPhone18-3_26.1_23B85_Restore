uint64_t sub_100108A00()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];

  v6 = *(v3 + v2);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;

  os_unfair_lock_lock(v6 + 6);
  sub_10010A9B8();
  os_unfair_lock_unlock(v6 + 6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100108B1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_1000D2E40(a2, a3), (v9 & 1) != 0))
  {
    sub_1000CC430(*(v7 + 56) + 40 * v8, &v12);
    sub_100109FF0(&v12);
    sub_10010A0A4();
    swift_allocError();
    *v10 = a2;
    *(v10 + 8) = a3;
    *(v10 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_100109FF0(&v12);
    *(&v13 + 1) = type metadata accessor for TrackSplitRenderer();
    v14 = &off_10028F460;
    *&v12 = a4;

    return sub_100107088(&v12, a2, a3);
  }
}

uint64_t sub_100108C30(uint64_t a1, void *a2)
{
  v3 = sub_10000AACC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100108E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for URL();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100108F38, v8, v7);
}

uint64_t sub_100108F38()
{
  v1 = v0[5];
  v2 = v0[6];

  v0[11] = _Block_copy(v1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v0[12] = v4;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = v2;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_10010A9D4;
  v8 = v0[9];
  v9 = v0[4];

  return sub_100108180(v3, v5, v8, v9);
}

uint64_t sub_1001091E0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v9 = type metadata accessor for URL();
  v5[4] = v9;
  v5[5] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[6] = v10;
  v5[7] = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[8] = v12;
  swift_unknownObjectRetain();
  v14 = a5;
  v15 = swift_task_alloc();
  v5[9] = v15;
  *v15 = v5;
  v15[1] = sub_100109358;

  return sub_10010A25C(v10, v11, v13, a3);
}

uint64_t sub_100109358()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);
  swift_unknownObjectRelease();

  v10 = *(v3 + 56);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v4 + 56));

  v12 = *(v9 + 8);

  return v12();
}

id sub_100109604()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareMemoExporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10010966C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 16))
  {
    result = sub_1000D2E40(a2, a3);
    if (v6)
    {
      sub_1000CC430(*(v3 + 56) + 40 * result, v9);
      sub_100015FCC(v9, v11);
      v7 = v12;
      v8 = v13;
      sub_10000AACC(v11, v12);
      (*(v8 + 16))(v7, v8);
      v10 = 0;
      memset(v9, 0, sizeof(v9));

      sub_100107088(v9, a2, a3);
      return sub_100014B64(v11);
    }
  }

  return result;
}

unint64_t sub_1001097F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float *a4@<X8>)
{
  v5 = *result;
  if (*(*result + 16) && (result = sub_1000D2E40(a2, a3), (v6 & 1) != 0))
  {
    sub_1000CC430(*(v5 + 56) + 40 * result, v9);
    sub_100015FCC(v9, v10);
    v7 = v11;
    v8 = v12;
    sub_10000AACC(v10, v11);
    *a4 = (*(v8 + 24))(v7, v8);
    return sub_100014B64(v10);
  }

  else
  {
    *a4 = 0.0;
  }

  return result;
}

uint64_t sub_10010995C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100109980(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001099D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_100109A30(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

double sub_100109A60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1000D2E40(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000CBD78();
      v10 = v12;
    }

    sub_100015FCC(*(v10 + 56) + 40 * v8, a3);
    sub_100109B0C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100109B0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100109CC8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v10 = v9;
      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 4 * v3);
        v18 = (v16 + 4 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_100109E90(uint64_t a1, unint64_t a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (a2 != 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_10;
      }

      if (a2 != 3)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v6 = 1;
    return v6 & 1;
  }

  if (!a1)
  {
    if (a2)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (a1 == 1)
  {
    if (a2 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_10:
  if (a2 < 4)
  {
LABEL_15:
    v6 = 0;
    return v6 & 1;
  }

  swift_getErrorValue();
  v2 = Error.localizedDescription.getter();
  v4 = v3;
  swift_getErrorValue();
  if (v2 == Error.localizedDescription.getter() && v4 == v5)
  {

    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t sub_100109FF0(uint64_t a1)
{
  v2 = sub_1000C773C(&unk_1002D04E0, &qword_100243F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10010A0A4()
{
  result = qword_1002D0560;
  if (!qword_1002D0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0560);
  }

  return result;
}

uint64_t sub_10010A130()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v5 = 0;
  memset(v4, 0, sizeof(v4));

  return sub_100107088(v4, v2, v1);
}

uint64_t sub_10010A194()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001FF1C;

  return sub_1001091E0(v2, v3, v4, v5, v6);
}

uint64_t sub_10010A25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_10010A280, 0, 0);
}

uint64_t sub_10010A280()
{
  v1 = v0[22];
  v2 = String._bridgeToObjectiveC()();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10010A3B8;
  v3 = swift_continuation_init();
  v0[17] = sub_1000C773C(&qword_1002D0568, &qword_100243F30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10010A9D0;
  v0[13] = &unk_10028F848;
  v0[14] = v3;
  [v1 rendererSettingsFromRecordingWithId:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10010A3B8()
{

  return _swift_task_switch(sub_10010A498, 0, 0);
}

uint64_t sub_10010A498()
{
  v1 = v0[18];
  v2 = v0[23];
  v0[24] = v1;

  if (v1)
  {
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_10010A5B8;
    v4 = v0[19];

    return sub_10011EDA0(v4, v1);
  }

  else
  {
    sub_10010A0A4();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 2;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10010A5B8()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10010A730;
  }

  else
  {
    v2 = sub_10010A6CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010A6CC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010A730()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010A794()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001FF1C;

  return sub_100108E3C(v2, v3, v4, v5, v6);
}

uint64_t sub_10010A85C()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10010A8B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002001C;

  return sub_100107D5C(v2, v3, v4, v5, v6);
}

uint64_t sub_10010A97C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10010A9D8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10010A9FC, 0, 0);
}

uint64_t sub_10010A9FC()
{
  v1 = *(v0 + 24);
  AnalyzerInput.init(buffer:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10010AA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for URL();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10010AB28, 0, 0);
}

uint64_t sub_10010AB28()
{
  v1 = v0[7];
  v2 = v0[3];
  (*(v0[6] + 16))(v1, v0[4], v0[5]);
  v3 = sub_1000D1524(v1, v2, &off_10028CB20);
  v4 = v0[2];
  *v4 = v3;
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;

  v8 = v0[1];

  return v8();
}

uint64_t sub_10010ABFC(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return _swift_task_switch(sub_10010AC24, 0, 0);
}

uint64_t sub_10010AC24()
{
  **(v0 + 16) = sub_10016E3DC(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010ACB0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for EARResultType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for AttributedString();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10010ADD8, 0, 0);
}

uint64_t sub_10010ADD8()
{
  v1 = Transcriber.MultisegmentResult.transcriptions.getter();
  if (!*(v1 + 16))
  {

    goto LABEL_14;
  }

  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  (*(v5 + 16))(v2, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

  v9 = *(v5 + 32);
  v9(v3, v2, v4);
  Transcriber.MultisegmentResult.earResultType.getter();
  v10 = (*(v7 + 88))(v6, v8);
  if (v10 != enum case for EARResultType.partial(_:) && v10 != enum case for EARResultType.final(_:) && v10 != enum case for EARResultType.finalAndTerminal(_:))
  {
    v18 = v0[10];
    v19 = v0[7];
    v20 = v0[8];
    (*(v0[5] + 8))(v0[6], v0[4]);
    (*(v20 + 8))(v18, v19);
LABEL_14:
    v21 = v0[2];
    v22 = type metadata accessor for TranscriptionUtterance(0);
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    goto LABEL_15;
  }

  Transcriber.MultisegmentResult.resultsFinalizationTime.getter();
  Transcriber.MultisegmentResult.range.getter();
  CMTimeRange.end.getter();
  if (static CMTime.>= infix(_:_:)())
  {
    sub_10010C414();
  }

  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[2];
  Transcriber.MultisegmentResult.resultsFinalizationTime.getter();
  Transcriber.MultisegmentResult.range.getter();
  CMTimeRange.end.getter();
  v16 = static CMTime.>= infix(_:_:)();
  v17 = type metadata accessor for TranscriptionUtterance(0);
  v9(&v15[*(v17 + 20)], v13, v14);
  *v15 = v16 & 1;
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
LABEL_15:

  v23 = v0[1];

  return v23();
}

uint64_t sub_10010B0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1000C773C(&qword_1002CEF78, &unk_100242310);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for TranscriptionUtterance(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1000C773C(&qword_1002CEF90, &qword_100242328);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = sub_1000C773C(&qword_1002CEF80, &unk_1002440A0);
  v3[13] = swift_task_alloc();
  v6 = sub_1000C773C(&qword_1002CEF88, &qword_100242320);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for AttributedString();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_10010B330, 0, 0);
}

uint64_t sub_10010B330(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v2 = swift_task_alloc();
  *(v1 + 176) = v2;
  *v2 = v1;
  v2[1] = sub_10010B488;

  return SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()();
}

uint64_t sub_10010B488()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10010B630, 0, 0);
  }
}

uint64_t sub_10010B630(uint64_t a1)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[3];
  v7 = v1[4];
  Transcriber.multisegmentResults.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;

  swift_getOpaqueTypeConformance2();
  AsyncCompactMapSequence.init(_:transform:)();
  AttributedString.init()();
  (*(v5 + 16))(v2, v3, v4);
  sub_100008034(&qword_1002CEF98, &qword_1002CEF88, &qword_100242320, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v9 = sub_100008034(&qword_1002CEFA0, &qword_1002CEF90, &qword_100242328, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
  v10 = swift_task_alloc();
  v1[23] = v10;
  *v10 = v1;
  v10[1] = sub_10010B834;
  v11 = v1[9];
  v12 = v1[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v12, v11, v9);
}

uint64_t sub_10010B834()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[19];
    v3 = v2[20];
    v5 = v2[18];
    (*(v2[10] + 8))(v2[11], v2[9]);
    (*(v4 + 8))(v3, v5);
    v6 = sub_10010BE38;
  }

  else
  {
    v6 = sub_10010B988;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10010B988()
{
  v31 = v0;
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[21];
    v3 = v0[18];
    v4 = v0[19];
    v5 = v0[17];
    v29 = v0[20];
    v6 = v0[15];
    v7 = v0[14];
    v8 = v0[2];
    (*(v0[10] + 8))();
    (*(v6 + 8))(v5, v7);
    sub_100003CBC(v1, &qword_1002CEF78, &unk_100242310);
    v9 = *(v4 + 32);
    v9(v2, v29, v3);
    Transcriber.locale.getter();
    v10 = type metadata accessor for TranscriptionData(0);
    v9(v8 + *(v10 + 20), v2, v3);

    v11 = v0[1];
LABEL_5:

    return v11();
  }

  v12 = v0[24];
  sub_1000D90A4(v1, v0[8]);
  static Task<>.checkCancellation()();
  if (v12)
  {
    v14 = v0[19];
    v13 = v0[20];
    v15 = v0[18];
    v17 = v0[10];
    v16 = v0[11];
    v18 = v0[9];
    sub_1000D9320(v0[8]);
    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
    (*(v0[15] + 8))(v0[17], v0[14]);

    v11 = v0[1];
    goto LABEL_5;
  }

  if (*v0[8])
  {
    sub_10010CB98(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    AttributedString.append<A>(_:)();
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100018D90(v20, qword_1002E8CB0);
    v21 = static os_log_type_t.error.getter();
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10001901C(0xD000000000000010, 0x8000000100230160, &v30);
      _os_log_impl(&_mh_execute_header, v22, v21, "%s - utterances are expected to be finalized", v23, 0xCu);
      sub_100014B64(v24);
    }
  }

  sub_1000D9320(v0[8]);
  v25 = sub_100008034(&qword_1002CEFA0, &qword_1002CEF90, &qword_100242328, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
  v26 = swift_task_alloc();
  v0[23] = v26;
  *v26 = v0;
  v26[1] = sub_10010B834;
  v27 = v0[9];
  v28 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v28, v27, v25);
}

uint64_t sub_10010BE38()
{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10010BF18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_100179578(0, 0, v6, &unk_100244090, v8);
}

uint64_t sub_10010C030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002001C;

  return SpeechAnalyzer.cancelAndFinishNow()();
}

uint64_t sub_10010C0C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002001C;

  return sub_10010C030();
}

uint64_t type metadata accessor for TranscriptionUtterance(uint64_t a1)
{
  result = qword_1002D0608;
  if (!qword_1002D0608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10010C1D0()
{
  v0 = type metadata accessor for Transcriber.TranscriptionOption();
  v1 = *(v0 - 8);
  v2 = v1;
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_1000C773C(&qword_1002D05A8, &qword_1002440F0);
  v8 = *(v1 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100244070;
  v11 = v10 + v9;
  v12 = *(v2 + 104);
  v12(v11, enum case for Transcriber.TranscriptionOption.contextualizedTranscription(_:), v0);
  v12(v11 + v8, enum case for Transcriber.TranscriptionOption.punctuation(_:), v0);
  v12(v11 + 2 * v8, enum case for Transcriber.TranscriptionOption.emoji(_:), v0);
  v13 = sub_1000C8EB8(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v16 = v13;
  if ([objc_opt_self() isProfanityFiltered])
  {
    v12(v4, enum case for Transcriber.TranscriptionOption.etiquetteReplacements(_:), v0);
    sub_1001AF094(v7, v4);
    (*(v2 + 8))(v7, v0);
    return v16;
  }

  return v13;
}

uint64_t sub_10010C414()
{
  v0 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
  __chkstk_darwin(v0);
  v2 = &v38 - v1;
  v3 = sub_1000C773C(&qword_1002D0578, &qword_1002440C8);
  __chkstk_darwin(v3 - 8);
  v44 = &v38 - v4;
  v5 = sub_1000C773C(&qword_1002D0580, &qword_1002440D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  v49 = type metadata accessor for AttributedString.Runs();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000C773C(&qword_1002D0588, &qword_1002440D8);
  v39 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v38 - v12;
  AttributedString.runs.getter();
  v14 = type metadata accessor for AttributeScopes.SpeechAttributes.TimeRangeAttribute();
  v15 = sub_10010CB98(&qword_1002D0590, &type metadata accessor for AttributeScopes.SpeechAttributes.TimeRangeAttribute, &protocol conformance descriptor for AttributeScopes.SpeechAttributes.TimeRangeAttribute);
  v43 = v14;
  v42 = v15;
  AttributedString.Runs.subscript.getter();
  (*(v9 + 8))(v11, v49);
  v45 = v13;
  AttributedString.Runs.AttributesSlice1.makeIterator()();
  v16 = (*(v6 + 8))(v8, v5);
  v17 = v44;
  v16.n128_u64[0] = 136315138;
  v40 = v16;
  v41 = v0;
  while (1)
  {
    AttributedString.Runs.AttributesSlice1.Iterator.next()();
    v19 = sub_1000C773C(&qword_1002D0598, &qword_1002440E0);
    if ((*(*(v19 - 8) + 48))(v17, 1, v19) == 1)
    {
      return (*(v39 + 8))(v45, v46);
    }

    v21 = *v17;
    v20 = *(v17 + 1);
    v22 = *(v17 + 3);
    v49 = *(v17 + 2);
    v47 = v22;
    v23 = *(v17 + 4);
    v48 = *(v17 + 5);
    v24 = v17[48];
    sub_1000F51E8(&v17[*(v19 + 48)], v2);
    memset(v53, 0, sizeof(v53));
    v54 = 1;
    sub_100008034(&qword_1002D05A0, &qword_1002CFFD8, &qword_1002440C0, &protocol conformance descriptor for Range<A>);
    v25 = AttributedString.subscript.modify();
    AttributedSubstring.subscript.setter();
    v25(&v50, 0);
    if (v24)
    {
      goto LABEL_2;
    }

    v55 = v21;
    v56 = v20;
    v57 = v49;
    v58 = v47;
    v59 = v23;
    v60 = v48;
    v26 = CMTime.seconds.getter();
    CMTimeRange.end.getter();
    v27 = CMTime.seconds.getter();
    if (v26 > v27)
    {
      *&v53[0] = 0;
      *(&v53[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      v28._countAndFlagsBits = 0x203A7472617453;
      v28._object = 0xE700000000000000;
      String.append(_:)(v28);
      Double.write<A>(to:)();
      v29._countAndFlagsBits = 0x203A646E45202CLL;
      v29._object = 0xE700000000000000;
      String.append(_:)(v29);
      Double.write<A>(to:)();
      v30 = v53[0];
      if (qword_1002CDD88 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100018D90(v31, qword_1002E8CB0);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v53[0] = v35;
        *v34 = v40.n128_u32[0];
        v36 = sub_10001901C(v30, *(&v30 + 1), v53);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v32, v33, "Attempted to replace time range with invalid time range - %s", v34, 0xCu);
        sub_100014B64(v35);
      }

      else
      {
      }

LABEL_2:
      v18 = AttributedString.subscript.modify();
      v50 = 0.0;
      v51 = 0.0;
      v52 = 1;
      goto LABEL_3;
    }

    v18 = AttributedString.subscript.modify();
    v50 = v26;
    v51 = v27;
    v52 = 0;
LABEL_3:
    sub_1000E78D8();
    AttributedSubstring.subscript.setter();
    v18(v53, 0);
    sub_100003CBC(v2, &qword_1002CFFD8, &qword_1002440C0);
    v17 = v44;
  }
}

uint64_t sub_10010CB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010CC08(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_10010CE3C(uint64_t a1)
{
  swift_getObjectType();
  sub_10010D1B8(a1, v6);
  if (!v7)
  {
    sub_10010D150(v6);
    goto LABEL_5;
  }

  if (!swift_dynamicCast())
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v5;
LABEL_6:
  v3 = v2 != 0;

  return v3;
}

id sub_10010D0F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10010D150(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D06A8, &unk_1002441A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010D1B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D06A8, &unk_1002441A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010D228(uint64_t a1, uint64_t a2, id a3)
{
  v4 = OBJC_IVAR____TtC10VoiceMemos35TranscriptWaitingViewTextAttachment_textAttachmentViewProvider;
  if (!*(v3 + OBJC_IVAR____TtC10VoiceMemos35TranscriptWaitingViewTextAttachment_textAttachmentViewProvider))
  {
    v7 = [a3 textLayoutManager];
    v8 = [objc_allocWithZone(type metadata accessor for TranscriptWaitingViewTextAttachmentViewProvider()) initWithTextAttachment:v3 parentView:a1 textLayoutManager:v7 location:a2];

    v9 = *(v3 + v4);
    *(v3 + v4) = v8;
    v10 = v8;

    if (v10)
    {
      [v10 setTracksTextAttachmentViewBounds:1];
    }
  }

  return *(v3 + v4);
}

uint64_t sub_10010D2E8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_timeController;
  v5 = *(v1 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_timeController);
  *(v2 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_timeController) = a1;
  if (v5)
  {
    swift_unknownObjectRetain();
    [v5 removeTimeObserver:v2];
    if (!*(v2 + v4))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  swift_unknownObjectRetain();
  if (a1)
  {
LABEL_3:
    [swift_unknownObjectRetain() addTimeObserver:v2];
    swift_unknownObjectRelease();
  }

LABEL_4:
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_10010D454()
{
  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_autoScrollTimeoutDuration);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_10010D6D8;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000FD608;
  v7[3] = &unk_10028FA68;
  v4 = _Block_copy(v7);

  v5 = [v1 scheduledTimerWithTimeInterval:0 repeats:v4 block:v2];
  _Block_release(v4);
  v6 = *(v0 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_autoScrollTimer);
  *(v0 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_autoScrollTimer) = v5;
}

void *sub_10010D578(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1000CC430(result + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager, v4);

    sub_10000AACC(v4, v4[3]);
    sub_1000CA144();
    return sub_100014B64(v4);
  }

  return result;
}

id sub_10010D628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptViewConfigurationMediator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10010D6E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10010D6F8(uint64_t result, char a2)
{
  if ((a2 & 0xC0) == 0x40)
  {
  }

  return v2;
}

void *sub_10010D70C()
{
  result = sub_10000AACC((v0 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider), *(v0 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_contextProvider + 24));
  if (*(*result + 32) == 2)
  {
    sub_10000AACC((v0 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager), *(v0 + OBJC_IVAR____TtC10VoiceMemos35TranscriptViewConfigurationMediator_configurationManager + 24));
    return sub_1000CA144();
  }

  return result;
}

void *sub_10010D768(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;

    v6 = [v3 currentUserActivity];
    [v6 activityType];

    PassthroughSubject.send(_:)();
  }

  return result;
}

id sub_10010D84C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCUserActivityStatePublisher();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v7 = type metadata accessor for Publishers.First();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  Publisher.first()();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v15;
  v12[5] = a2;
  v12[6] = v11;

  swift_getWitnessTable();
  v13 = Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  *(v11 + 16) = v13;
}

uint64_t sub_10010DAA0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  a2(a1);
  swift_beginAccess();
  swift_beginAccess();
  *(a4 + 16) = 0;
}

unint64_t sub_10010DB20()
{
  result = qword_1002D0768;
  if (!qword_1002D0768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0768);
  }

  return result;
}

uint64_t sub_10010DBA8()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E8D38);
  sub_100018D90(v0, qword_1002E8D38);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t (*sub_10010DC74(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10010DCE8;
}

void sub_10010DCE8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10010DDA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1002CDE00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100018D90(v2, qword_1002E8D38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10010DE74()
{
  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010DED8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10010EB2C();
  *a1 = result;
  return result;
}

uint64_t sub_10010DF00()
{
  sub_1000C773C(&qword_1002D0780, &qword_1002444E0);
  type metadata accessor for _AssistantIntent();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100242C70;
  sub_10010EB2C();
  sub_10001B054();
  result = _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  qword_1002E8D50 = v0;
  return result;
}

uint64_t sub_10010E00C(uint64_t a1)
{
  v46 = a1;
  v49 = sub_1000C773C(&qword_1002D0790, &qword_100244520);
  v53 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v38 - v1;
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C773C(&qword_1002D0798, &qword_100244528);
  __chkstk_darwin(v6);
  v7 = sub_10001B054();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20686372616573;
  v8._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v9 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = *(v3 + 104);
  v48 = v3 + 104;
  v50 = v10;
  v47 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v44 = v2;
  v10(v5, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v2);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v39 = v11;
  v40 = v3 + 8;
  v12._countAndFlagsBits = 0x20726F6620;
  v12._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  v45 = sub_10010EE88();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v52;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = *(v53 + 8);
  v53 += 8;
  v51 = v15;
  v15(v14, v49);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x6920686372616573;
  v16._object = 0xEA0000000000206ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v44;
  v50(v5, v9, v44);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v11(v5, v17);
  v18._countAndFlagsBits = 0x20726F6620;
  v18._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v52;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v43 = v7;
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51(v20, v49);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0x6620686372616573;
  v21._object = 0xEB0000000020726FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 544106784;
  v22._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v44;
  v50(v5, v47, v44);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v24 = v39;
  v39(v5, v23);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v52;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v26;
  v28 = v49;
  v51(v27, v49);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x6620686372616573;
  v29._object = 0xEB0000000020726FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  v50(v5, v47, v23);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v24(v5, v23);
  v30._countAndFlagsBits = 0x2064656C6C616320;
  v30._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v52;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51(v32, v28);
  sub_1000C773C(&qword_1002D07A0, &unk_100244530);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100241D40;
  v35 = v41;
  *(v34 + 32) = v42;
  *(v34 + 40) = v35;
  *(v34 + 48) = v38;
  *(v34 + 56) = v33;
  v36 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v36;
}

uint64_t sub_10010E740()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10010EE88();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10001B054();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1000C773C(&qword_1002D0788, &qword_100244510);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100242C70;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10010E8B0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000C773C(&qword_1002D37E0, &qword_100244518);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002442D0;
  *(v8 + 32) = v0;
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  *(v8 + 56) = v3;
  *(v8 + 64) = v4;
  *(v8 + 72) = v5;
  *(v8 + 80) = v6;
  *(v8 + 88) = v7;
  v9 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_10010EAA8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_10010EB2C()
{
  v18 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000C773C(&unk_1002D3840, &unk_100244540);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000C773C(&qword_1002D07B0, qword_100244550);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = type metadata accessor for String.IntentInputOptions();
  v19 = 0;
  v20 = 0;
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  IntentDialog.init(stringLiteral:)();
  v15 = type metadata accessor for IntentDialog();
  (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

unint64_t sub_10010EE88()
{
  result = qword_1002D3820;
  if (!qword_1002D3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3820);
  }

  return result;
}

id sub_10010EEDC(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___RCExternallySignalledAsyncOperation__executing;
  sub_1000C773C(&qword_1002D07F8, &qword_100244598);
  v6 = swift_allocObject();
  *(v6 + 20) = 0;
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR___RCExternallySignalledAsyncOperation__finished;
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *&v2[v7] = v8;
  *(v8 + 16) = 0;
  v9 = &v2[OBJC_IVAR___RCExternallySignalledAsyncOperation_executionBlock];
  *v9 = a1;
  *(v9 + 1) = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ExternallySignalledAsyncOperation();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_10010EFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10012ED20;
  v7[3] = &unk_10028FBB0;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

id sub_10010F0E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExternallySignalledAsyncOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010F238(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v4 = a1;

  os_unfair_lock_lock((v3 + 20));
  v5 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));

  return v5;
}

void sub_10010F30C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();
  [v4 willChangeValueForKey:v7];

  v8 = *&v4[*a4];

  os_unfair_lock_lock((v8 + 20));
  *(v8 + 16) = a1;
  os_unfair_lock_unlock((v8 + 20));

  v9 = String._bridgeToObjectiveC()();
  [v4 didChangeValueForKey:v9];
}

void sub_10010F46C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setExecuting:0];
    [v2 setFinished:1];
  }
}

double sub_10010F58C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10010F5A4(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D08E8, &qword_1002447F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000AACC(a1, a1[3]);
  sub_100112128();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date();
  sub_10011217C(&qword_1002CEDE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AppStoreRatingModel.RatingStats(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10010F760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for Date();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000C773C(&qword_1002D08F8, &qword_1002447F8);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for AppStoreRatingModel.RatingStats(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AACC(a1, a1[3]);
  sub_100112128();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014B64(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_10011217C(&qword_1002CEE08, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_1001121C4(v19, v18);
  sub_100014B64(a1);
  return sub_100111FD0(v19);
}

uint64_t sub_10010FA90()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_10010FAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10010FBA0(uint64_t a1)
{
  v2 = sub_100112128();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010FBDC(uint64_t a1)
{
  v2 = sub_100112128();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10010FC6C()
{
  if (sub_1001118E8())
  {
    v1 = v0[1];

    return v1(0);
  }

  else
  {
    v7 = v0[3];
    ObjectType = swift_getObjectType();
    v6 = (*(v7 + 8) + **(v7 + 8));
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_10010FDCC;
    v5 = v0[3];

    return v6(ObjectType, v5);
  }
}

uint64_t sub_10010FDCC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1 > 14);
}

uint64_t sub_10010FECC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002001C;

  return sub_100111AEC();
}

uint64_t sub_10010FF58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100112340;

  return StoreReviewGatingController.canPrompt()();
}

uint64_t sub_10010FFEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FF1C;

  return StoreReviewGatingController.didPrompt()();
}

uint64_t sub_1001100A0()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  v0[4] = 0;
  if (v2)
  {
    v3 = v1[7];
    v4 = v1[8];
    sub_10000AACC(v1 + 4, v3);
    v8 = (*(v4 + 16) + **(v4 + 16));
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_10011020C;

    return v8(v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7(1);
  }
}

uint64_t sub_10011020C(char a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10011030C, 0, 0);
}

uint64_t sub_10011030C()
{
  v1 = *(v0 + 32);
  if (*(v0 + 48))
  {
    v2 = v1 + 1;
    *(v0 + 32) = v1 + 1;
    v1 = v2;
    if (v2 != *(v0 + 24))
    {
      v3 = (*(v0 + 16) + 40 * v2);
      v4 = v3[7];
      v5 = v3[8];
      sub_10000AACC(v3 + 4, v4);
      v9 = (*(v5 + 16) + **(v5 + 16));
      v6 = swift_task_alloc();
      *(v0 + 40) = v6;
      *v6 = v0;
      v6[1] = sub_10011020C;

      return v9(v4, v5);
    }
  }

  else
  {
    v2 = *(v0 + 24);
  }

  v8 = *(v0 + 8);

  return v8(v1 == v2);
}

uint64_t sub_1001104C0()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v0[4] = 0;
    v3 = v1[7];
    v4 = v1[8];
    sub_10000AACC(v1 + 4, v3);
    v8 = (*(v4 + 24) + **(v4 + 24));
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_10011062C;

    return v8(v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10011062C()
{

  return _swift_task_switch(sub_100110728, 0, 0);
}

uint64_t sub_100110728()
{
  v1 = v0[4] + 1;
  if (v1 == v0[3])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[4] = v1;
    v4 = (v0[2] + 40 * v1);
    v5 = v4[7];
    v6 = v4[8];
    sub_10000AACC(v4 + 4, v5);
    v8 = (*(v6 + 24) + **(v6 + 24));
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_10011062C;

    return v8(v5, v6);
  }
}

uint64_t sub_1001108A0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100110934;

  return sub_100110080(v2);
}

uint64_t sub_100110934(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100110A30()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001FF1C;

  return sub_1001104A0(v2);
}

void sub_100110AC4()
{
  v1 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v0;
    v8 = v0;
    sub_100179578(0, 0, v3, &unk_100244688, v7);
  }
}

void sub_100110C04()
{
  v1 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = v0;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    sub_100179578(0, 0, v3, &unk_100244678, v9);
  }
}

uint64_t sub_100110D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v6;
  v4[15] = v5;

  return _swift_task_switch(sub_100110DFC, v6, v5);
}

uint64_t sub_100110DFC()
{
  v1 = sub_100111E7C();
  v0[16] = v1;
  if (v1)
  {
    sub_1000198EC(v0 + 2);
    v2 = v0[5];
    v3 = v0[6];
    sub_10000AACC(v0 + 2, v2);
    v7 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_100110F74;

    return v7(v2, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100110F74(char a1)
{
  v2 = *v1;
  *(*v1 + 152) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_10011109C, v4, v3);
}

uint64_t sub_10011109C()
{
  v1 = *(v0 + 152);
  sub_100014B64((v0 + 16));
  if (v1 == 1)
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100018D90(v2, qword_1002E8CB0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Calling AppStore.requestReview(:)", v5, 2u);
    }

    static AppStore.requestReview(in:)();
    sub_1000198EC((v0 + 56));
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    sub_10000AACC((v0 + 56), v6);
    v12 = (*(v7 + 24) + **(v7 + 24));
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_1001112F0;

    return v12(v6, v7);
  }

  else
  {
    v10 = *(v0 + 128);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1001112F0()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100111410, v3, v2);
}

uint64_t sub_100111410()
{
  v1 = v0[16];

  sub_100014B64(v0 + 7);
  v2 = v0[1];

  return v2();
}

id sub_1001114F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCAppStoreRatingPrompter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100111588()
{
  v2 = *v1;
  v3 = *(*v1 + 40);

  v4 = (v3 + 8);
  if (v0)
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    (*v4)(v6, v7);
    v8 = DebugData.init(name:);
  }

  else
  {
    v9 = *(v2 + 48);
    v10 = *(v2 + 32);

    (*v4)(v9, v10);
    *(v2 + 96) = *(v2 + 16);
    v8 = sub_100111728;
  }

  return _swift_task_switch(v8, 0, 0);
}

void sub_100111728()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);

  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 96);

    v4 = *(v0 + 8);

    v4(v3);
  }
}

uint64_t sub_1001117A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100110934;

  return sub_1000226DC();
}

uint64_t sub_100111834(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002001C;

  return sub_100110D64(a1, v4, v5, v6);
}

BOOL sub_1001118E8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_100003CBC(v4, &qword_1002D06A8, &unk_1002441A0);
  return v2 != 0;
}

uint64_t sub_1001119C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 infoDictionary];

  if (!v1)
  {
    return 0;
  }

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16) || (v3 = sub_1000D2E40(0x656C646E75424643, 0xEF6E6F6973726556), (v4 & 1) == 0))
  {

    return 0;
  }

  sub_10001931C(*(v2 + 56) + 32 * v3, v7);

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100111AEC()
{
  *(v0 + 48) = type metadata accessor for AppStoreRatingModel.RatingStats(0);
  *(v0 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100111B7C, 0, 0);
}

uint64_t sub_100111B7C(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  static Date.now.getter();
  v4 = sub_1001119C8();
  v5 = (v2 + *(v3 + 20));
  *v5 = v4;
  v5[1] = v6;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10011217C(&qword_1002D0848, type metadata accessor for AppStoreRatingModel.RatingStats, &unk_1002447C4);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v1[7];
  v9 = v7;
  v11 = v10;

  v12 = [objc_opt_self() standardUserDefaults];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();
  [v12 setObject:isa forKey:v14];
  sub_1000D4388(v9, v11);

  sub_100111FD0(v8);

  v15 = v1[1];

  return v15();
}

id sub_100111E7C()
{
  result = [objc_opt_self() sharedAppDelegate];
  if (result)
  {
    v1 = result;
    v2 = [result defaultSceneDelegate];

    if (v2)
    {
      v3 = v2;
      v4 = [v3 window];
      if (v4 && (v5 = v4, v6 = [v4 windowScene], v5, v6))
      {
        v7 = [v3 isInForeground];

        result = v6;
        v3 = v6;
        if (v7)
        {
          return result;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AppStoreRatingModel.RatingStats(uint64_t a1)
{
  result = qword_1002D08A8;
  if (!qword_1002D08A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100111FD0(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreRatingModel.RatingStats(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100112054(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1001120D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001120D8()
{
  if (!qword_1002D08B8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D08B8);
    }
  }
}

unint64_t sub_100112128()
{
  result = qword_1002D08F0;
  if (!qword_1002D08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D08F0);
  }

  return result;
}

uint64_t sub_10011217C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001121C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreRatingModel.RatingStats(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011223C()
{
  result = qword_1002D0900;
  if (!qword_1002D0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0900);
  }

  return result;
}

unint64_t sub_100112294()
{
  result = qword_1002D0908;
  if (!qword_1002D0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0908);
  }

  return result;
}

unint64_t sub_1001122EC()
{
  result = qword_1002D0910;
  if (!qword_1002D0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0910);
  }

  return result;
}

uint64_t sub_100112344(void (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  sub_1000C773C(&unk_1002CE190, &unk_1002433E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002432F0;
  *(v6 + 32) = a3;
  v7 = a3;
  a1(v6);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1001846C0(5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100112414(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100112A98, v4);
}

void sub_1001124A8(uint64_t a1, uint64_t a2)
{
  sub_1000067AC(0, &qword_1002CFE50, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_10011257C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_getObjectType();
    sub_1001846C0(a3);
  }
}

id sub_100112614(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RCSaveAsNewMenuFactory();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Class sub_10011266C(char a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  swift__string._object = 0x80000001002307A0;
  v6._object = 0x8000000100230780;
  swift__string._countAndFlagsBits = 0xD00000000000002FLL;
  v6._countAndFlagsBits = 0xD000000000000015;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, swift__string);

  sub_1000067AC(0, &qword_1002CFE60, UIAction_ptr);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  swift_unknownObjectRetain();
  v28 = v8;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  aBlock[4] = sub_100112A58;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100112414;
  aBlock[3] = &unk_10028FE70;
  v13 = _Block_copy(aBlock);
  v14 = v9;

  v15 = [v10 elementWithUncachedProvider:{v13, 0, 0, 0, sub_100112A38, v28}];
  _Block_release(v13);
  if (a1)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;
  v18 = [v4 mainBundle];
  swift__stringa._object = 0x80000001002307F0;
  v19._countAndFlagsBits = 0x4345522045564153;
  v19._object = 0xEE00474E4944524FLL;
  swift__stringa._countAndFlagsBits = 0xD000000000000028;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, swift__stringa);

  *(swift_allocObject() + 16) = a2;
  swift_unknownObjectRetain();
  v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000067AC(0, &qword_1002CFE58, UIMenu_ptr);
  sub_1000C773C(&unk_1002CE190, &unk_1002433E0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1002432E0;
  *(preferredElementSize + 32) = v17;
  *(preferredElementSize + 40) = v21;
  v23 = v17;
  v24 = v21;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v30.value.super.isa = 0;
  v30.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v30, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;

  return isa;
}

double sub_100112A60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100112AA0(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v6._object = 0x80000001002307A0;
  v3._object = 0x8000000100230780;
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v3._countAndFlagsBits = 0xD000000000000015;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v6);

  sub_1000067AC(0, &qword_1002CFE60, UIAction_ptr);
  *(swift_allocObject() + 16) = a1;
  swift_unknownObjectRetain();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_100112BE0()
{
  v1 = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000C8898(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *(v0 + 16) = v6;
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_weakInit();
  sub_1001130D8();

  Publisher<>.sink(receiveValue:)();

  v9 = *(v3 + 8);
  v9(v5, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v10 = [v7 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_weakInit();

  Publisher<>.sink(receiveValue:)();

  v9(v5, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_100112EAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100113138(0);
  }

  return result;
}

uint64_t sub_100112F08(uint64_t a1, uint64_t a2)
{
  Notification.object.getter();
  if (v10)
  {
    sub_100113330();
    if (swift_dynamicCast())
    {
      v2 = [v8 delegate];

      if (!v2)
      {
        goto LABEL_9;
      }

      v3 = objc_opt_self();
      swift_unknownObjectRetain();
      v4 = [v3 sharedAppDelegate];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 dynamicIslandSceneDelegate];

        swift_unknownObjectRelease();
        if (v6)
        {

          swift_unknownObjectRelease();
          LOBYTE(v2) = v2 == v6;
          goto LABEL_9;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease_n();
      }
    }
  }

  else
  {
    sub_10010D150(v9);
  }

  LOBYTE(v2) = 0;
LABEL_9:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100113138(v2);
  }

  return result;
}

uint64_t sub_100113074()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1001130D8()
{
  result = qword_1002D0A08;
  if (!qword_1002D0A08)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0A08);
  }

  return result;
}

void sub_100113138(char a1)
{
  v2 = [objc_opt_self() sharedAppDelegate];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v2 dynamicIslandSceneDelegate];
  if (!v4)
  {

LABEL_8:
    v19 = [objc_opt_self() sharedStyleProvider];
    [v19 displayRefreshRate:0];
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v29 = [objc_opt_self() sharedManager];
    LODWORD(v26) = v21;
    LODWORD(v27) = v23;
    LODWORD(v28) = v25;
    [v29 setPreferredFrameRateRange:{v26, v27, v28}];
    goto LABEL_9;
  }

  v5 = v4;
  v6 = 0;
  if ([v4 isInForeground] && (a1 & 1) == 0)
  {
    v7 = [v5 platterViewController];
    v8 = [v7 activeLayoutMode];

    v6 = v8 != 4;
  }

  v9 = [objc_opt_self() sharedStyleProvider];
  [v9 displayRefreshRate:v6];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v29 = [objc_opt_self() sharedManager];
  LODWORD(v16) = v11;
  LODWORD(v17) = v13;
  LODWORD(v18) = v15;
  [v29 setPreferredFrameRateRange:{v16, v17, v18}];

LABEL_9:
}

unint64_t sub_100113330()
{
  result = qword_1002D0A10;
  if (!qword_1002D0A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D0A10);
  }

  return result;
}

void sub_1001133C4(uint64_t a1)
{
  CurrentValueSubject.value.getter();
  if (v1 >= 3)
  {
    type metadata accessor for RCTrackState(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    sub_100119FD0(qword_1002449B0[v1]);
  }
}

uint64_t sub_1001135BC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = *&a1[OBJC_IVAR___RCRecorderAppDelegateDependencyContainer_analyticsManager];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v12 = a1;
  v13 = v9;
  sub_100179578(0, 0, v8, a4, v11);
}

id sub_1001136E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecorderAppDelegateDependencyContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001137B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001FF1C;

  return sub_1000ED964(a1, v4, v5, v6);
}

unint64_t sub_10011388C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001139A0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1001138E4()
{
  result = qword_1002D0B50;
  if (!qword_1002D0B50)
  {
    sub_1000C7784(&qword_1002D0B58, qword_100244B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0B50);
  }

  return result;
}

unint64_t sub_10011394C()
{
  result = qword_1002D0B60;
  if (!qword_1002D0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0B60);
  }

  return result;
}

unint64_t sub_1001139A0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return _swift_task_switch(sub_1001139D8, 0, 0);
}

uint64_t sub_1001139D8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v9 = *(v0 + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v1;
  *(v4 + 48) = v5;
  v6 = type metadata accessor for Array();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_100113B20;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, TupleTypeMetadata2, v6, 0, 0, &unk_100244C08, v4, TupleTypeMetadata2);
}

uint64_t sub_100113B20()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100113C58;
  }

  else
  {

    v2 = sub_100113C3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100113C58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100113CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v8[13] = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  v8[14] = swift_task_alloc();
  v8[15] = sub_1000C7784(&qword_1002D5540, &qword_1002425B0);
  v9 = type metadata accessor for ThrowingTaskGroup.Iterator();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = type metadata accessor for EnumeratedSequence();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v11 = type metadata accessor for Optional();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();

  return _swift_task_switch(sub_100113EDC, 0, 0);
}

uint64_t sub_100113EDC()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v18 = *(v0 + 176);
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v20 = *(v0 + 168);
  v21 = *(v0 + 48);
  v6 = swift_task_alloc();
  v19 = *(v0 + 64);
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v3;
  v8 = sub_100114748(static SecondLayerRecordEvent.requiresDiagnosticsConsent.getter, v6, v4, &type metadata for Never, v3, &protocol witness table for Never, v7);

  v9 = *(v5 - 8);
  *(v0 + 200) = v9;
  v10 = *(v9 + 56);
  *(v0 + 208) = v10;
  *(v0 + 216) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v1, 1, 1, v5);
  v11 = sub_100115438(v1, v8, v18);
  (*(v2 + 8))(v1, v18);
  *(v0 + 16) = v11;
  Sequence.enumerated()();
  v12 = swift_task_alloc();
  *(v12 + 16) = v4;
  *(v12 + 24) = v5;
  *(v12 + 32) = v3;
  *(v12 + 40) = v21;
  *(v12 + 48) = v19;
  v13 = swift_task_alloc();
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v3;
  v13[5] = sub_10011553C;
  v13[6] = v12;
  swift_getWitnessTable();
  Sequence.forEach(_:)();

  (*(v23 + 8))(v20, v22);
  ThrowingTaskGroup.makeAsyncIterator()();
  v14 = swift_task_alloc();
  *(v0 + 224) = v14;
  *v14 = v0;
  v14[1] = sub_1001141B0;
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v16, 0, 0, v15, v0 + 24);
}

uint64_t sub_1001141B0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {

    v2 = sub_1001145B8;
  }

  else
  {
    v2 = sub_1001142CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001142CC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 40);
    v19 = *(v0 + 88);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    *(v0 + 32) = *(v0 + 16);
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v19;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v6 = Sequence.compactMap<A>(_:)();
    swift_bridgeObjectRelease_n();

    *v4 = v6;

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 208);
    v10 = *(v0 + 192);
    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(v0 + 88);
    v14 = *v1;
    (*(*(v0 + 200) + 32))(v10, v1 + *(v2 + 48), v13);
    v9(v10, 0, 1, v13);
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v15 = *(v0 + 16);
    sub_1001153E4(v14, v15, v11);
    (*(v12 + 40))(v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v14, v10, v11);
    v16 = swift_task_alloc();
    *(v0 + 224) = v16;
    *v16 = v0;
    v16[1] = sub_1001141B0;
    v17 = *(v0 + 128);
    v18 = *(v0 + 112);

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v18, 0, 0, v17, v0 + 24);
  }
}

uint64_t sub_1001145B8()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10011466C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10002001C;

  return sub_100113CBC(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_100114748(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v36 = a7;
  v8 = v7;
  v39 = a1;
  v40 = a2;
  v34 = *(a4 - 8);
  __chkstk_darwin(a1);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v34 - v13;
  v15 = type metadata accessor for Optional();
  __chkstk_darwin(v15 - 8);
  v17 = &v34 - v16;
  v18 = *(a3 - 8);
  __chkstk_darwin(v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v34 - v24;
  (*(v18 + 16))(v21, v44, a3, v23);
  v43 = v25;
  dispatch thunk of Sequence.makeIterator()();
  v44 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = 0;
  v27 = (v38 + 48);
  v28 = (v38 + 32);
  v29 = (v38 + 8);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if ((*v27)(v17, 1, AssociatedTypeWitness) == 1)
    {
      goto LABEL_7;
    }

    (*v28)(v14, v17, AssociatedTypeWitness);
    v30 = v39(v14, v41);
    if (v8)
    {
      break;
    }

    v31 = v30;
    v8 = 0;
    (*v29)(v14, AssociatedTypeWitness);
    v32 = __OFADD__(v26, v31 & 1);
    v26 += v31 & 1;
    if (v32)
    {
      __break(1u);
LABEL_7:
      (*(v37 + 8))(v43, v44);
      return v26;
    }
  }

  (*v29)(v14, AssociatedTypeWitness);
  (*(v37 + 8))(v43, v44);
  (*(v34 + 32))(v36, v41, v35);
  return v26;
}

uint64_t sub_100114B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a4;
  v29 = a3;
  v27 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v26 - v15;
  v17 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v26 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v16, a2, AssociatedTypeWitness);
  v21 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a6;
  *(v22 + 5) = a7;
  v24 = v27;
  v23 = v28;
  *(v22 + 6) = a8;
  *(v22 + 7) = v24;
  *(v22 + 8) = v23;
  *(v22 + 9) = a5;
  (*(v14 + 32))(&v22[v21], v16, AssociatedTypeWitness);

  swift_getTupleTypeMetadata2();
  sub_1000C7784(&qword_1002D5540, &qword_1002425B0);
  type metadata accessor for ThrowingTaskGroup();
  sub_100115028(v19, &unk_100244C18, v22);
  return sub_1001157A0(v19);
}

uint64_t sub_100114DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return _swift_task_switch(sub_100114E0C, 0, 0);
}

uint64_t sub_100114E0C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100114F34;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_100114F34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100115028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_1000D91F8(a1, v18 - v8);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1001157A0(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_100115250(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v13 = *a1;
  v4 = *a2;
  if (!(a3 >> 62))
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_19:
  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(a3 + 8 * i + 32);
    }

    v8 = v7;
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = [v7 compareObject:v13 toObject:v4];
    type metadata accessor for ComparisonResult(0);
    if (v10)
    {
      break;
    }

    if (v9 == v5)
    {
      return 0;
    }
  }

  if (v10 == -1)
  {
    v11 = 1;
LABEL_16:

    return v11;
  }

  if (v10 == 1)
  {
    v11 = 0;
    goto LABEL_16;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_1001153E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100115438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    type metadata accessor for Array();
    return v8;
  }

  return result;
}

uint64_t sub_10011554C(char *a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_100115654(uint64_t a1)
{
  v3 = v2;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10001FF1C;

  return sub_100114DDC(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1001157A0(uint64_t a1)
{
  v2 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_100115808(unsigned __int16 *a1, unsigned __int16 *a2, __n128 a3, __n128 a4)
{
  v4 = 256;
  if (*(a1 + 17))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *(a1 + 16);
  v7 = 0x10000;
  if (a1[9])
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0x1000000;
  if (*(a1 + 19))
  {
    v10 = 0x1000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = v6 | v8 | v10;
  if (a1[10])
  {
    v12 = &_mh_execute_header;
  }

  else
  {
    v12 = 0;
  }

  if ((*(a2 + 17) & 1) == 0)
  {
    v4 = 0;
  }

  v13 = v4 | *(a2 + 16);
  if ((a2[9] & 1) == 0)
  {
    v7 = 0;
  }

  if ((*(a2 + 19) & 1) == 0)
  {
    v9 = 0;
  }

  v14 = v13 | v7 | v9;
  if (a2[10])
  {
    v15 = &_mh_execute_header;
  }

  else
  {
    v15 = 0;
  }

  return sub_100116134(*a1, *(a1 + 1), v11 | v12, *a2, *(a2 + 1), v14 | v15, *(a1 + 3), *(a2 + 3));
}

uint64_t sub_1001158C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100115D30(v2);
  }

  return result;
}

uint64_t sub_100115920(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a3 >> 5;
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      v5 = v3[2];
      v6 = v3[3];
      v17 = v5;
      v18 = v6;
      *&v19[16] = v6;
      *&v19[2] = *(v3 + 34);
      v19[0] = v5;
      v7 = 1;
LABEL_10:
      v19[1] = v7;
      goto LABEL_11;
    }

LABEL_6:
    if (a3)
    {
      v7 = 5;
    }

    else
    {
      v7 = 4;
    }

    v5 = v3[2];
    v6 = v3[3];
    v17 = v5;
    v18 = v6;
    *&v19[16] = v6;
    *&v19[2] = *(v3 + 34);
    v19[0] = v5;
    goto LABEL_10;
  }

  if (v4 == 3)
  {
    a3 = a1;
    goto LABEL_6;
  }

  if (a2 | a1 || a3 != 128)
  {
    if (a1 == 1 && !a2 && a3 == 128 || a1 != 2 || a2 || a3 != 128)
    {
      v5 = v3[2];
      v6 = v3[3];
      v17 = v5;
      v18 = v6;
      *&v19[16] = v6;
      *&v19[2] = *(v3 + 34);
      v19[0] = v5;
      v7 = 3;
    }

    else
    {
      v5 = v3[2];
      v6 = v3[3];
      v17 = v5;
      v18 = v6;
      *&v19[16] = v6;
      *&v19[2] = *(v3 + 34);
      v19[0] = v5;
      v7 = 2;
    }

    goto LABEL_10;
  }

  v5 = v3[2];
  v6 = v3[3];
  v17 = v5;
  v18 = v6;
  *&v19[16] = v6;
  *&v19[2] = *(v3 + 34);
  *v19 = v5;
LABEL_11:
  v20 = v5;
  v21 = v6;
  v22[0] = v5;
  v22[1] = v6;
  v8 = *&v19[16];
  v3[2] = *v19;
  v3[3] = v8;
  sub_100023708(&v17, v16);
  sub_100023708(&v20, v16);
  sub_100023708(v19, v16);
  sub_100023778(v22);
  v9 = 256;
  if (!BYTE1(v21))
  {
    v9 = 0;
  }

  v10 = v9 | v21;
  v11 = 0x10000;
  if (!BYTE2(v21))
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if (!BYTE3(v21))
  {
    v12 = 0;
  }

  v13 = v10 | v11 | v12;
  v14 = &_mh_execute_header;
  if (!BYTE4(v21))
  {
    v14 = 0;
  }

  sub_1000237CC(v20, *(&v20 + 1), v13 | v14, *(&v21 + 1));
  sub_100023778(&v20);
  return sub_100023778(v19);
}

uint64_t sub_100115B28(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 48);
  v13[0] = *(a1 + 32);
  v13[1] = v3;
  LODWORD(v15) = *(a1 + 48);
  v14 = v13[0];
  BYTE4(v15) = a3;
  *(&v15 + 5) = *(a1 + 53);
  HIDWORD(v15) = *(a1 + 60);
  v16 = v13[0];
  v17 = v3;
  v18[0] = v13[0];
  v18[1] = v3;
  v4 = v15;
  *(a1 + 32) = v13[0];
  *(a1 + 48) = v4;

  sub_100023708(v13, v12);
  sub_100023708(&v16, v12);
  sub_100023708(&v14, v12);
  sub_100023778(v18);
  v5 = 256;
  if (!BYTE1(v17))
  {
    v5 = 0;
  }

  v6 = v5 | v17;
  v7 = 0x10000;
  if (!BYTE2(v17))
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!BYTE3(v17))
  {
    v8 = 0;
  }

  v9 = v6 | v7 | v8;
  v10 = &_mh_execute_header;
  if (!BYTE4(v17))
  {
    v10 = 0;
  }

  sub_1000237CC(v16, *(&v16 + 1), v9 | v10, *(&v17 + 1));

  sub_100023778(&v16);
  return sub_100023778(&v14);
}

uint64_t sub_100115D30(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = v1[2];
      v3 = v1[3];
      v20 = v2;
      v21 = v3;
      v10 = 1;
      goto LABEL_14;
    }

    if (a1 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v2 = v1[2];
      v3 = v1[3];
      v20 = v2;
      v21 = v3;
      v22[0] = 0;
      goto LABEL_15;
    }

LABEL_7:
    v4 = v1;
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100018D90(v5, qword_1002E8CB0);
    v6 = static os_log_type_t.error.getter();
    v7 = Logger.logObject.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v25[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10001901C(0xD00000000000002CLL, 0x8000000100230B10, v25);
      _os_log_impl(&_mh_execute_header, v7, v6, "%s - Unexpected user activity type", v8, 0xCu);
      sub_100014B64(v9);
    }

    v1 = v4;
  }

  v2 = v1[2];
  v3 = v1[3];
  v20 = v2;
  v21 = v3;
  v10 = 2;
LABEL_14:
  v22[0] = v10;
LABEL_15:
  *&v22[16] = v3;
  v23 = v2;
  *&v22[1] = *(v1 + 33);
  v24 = v3;
  v25[0] = v2;
  v25[1] = v3;
  v11 = *&v22[16];
  v1[2] = *v22;
  v1[3] = v11;
  sub_100023708(&v20, v19);
  sub_100023708(&v23, v19);
  sub_100023708(v22, v19);
  sub_100023778(v25);
  v12 = 256;
  if (!BYTE1(v24))
  {
    v12 = 0;
  }

  v13 = v12 | v24;
  v14 = 0x10000;
  if (!BYTE2(v24))
  {
    v14 = 0;
  }

  v15 = 0x1000000;
  if (!BYTE3(v24))
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  v17 = &_mh_execute_header;
  if (!BYTE4(v24))
  {
    v17 = 0;
  }

  sub_1000237CC(v23, *(&v23 + 1), v16 | v17, *(&v24 + 1));
  sub_100023778(&v23);
  return sub_100023778(v22);
}

uint64_t sub_100115F84()
{

  sub_10010D6F8(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_100115FD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100116024(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100116078(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10011608C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 64))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001160E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_100116134(__int16 a1, uint64_t a2, unint64_t a3, __int16 a4, uint64_t a5, unint64_t a6, double a7, double a8)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (!(a3 >> 6))
  {
    result = 0;
    if (a6 > 0x3Fu)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (a3 >> 6 != 1)
  {
    if (a2 | a3 ^ 0x80)
    {
      v9 = a6 & 0xC0;
      if (a3 == 128 && a2 == 1)
      {
        if (v9 == 128)
        {
          result = 0;
          if (a5 != 1)
          {
            return result;
          }

          goto LABEL_22;
        }
      }

      else if (v9 == 128)
      {
        result = 0;
        if (a5 != 2)
        {
          return result;
        }

LABEL_22:
        if (a6 != 128)
        {
          return result;
        }

        goto LABEL_23;
      }
    }

    else if ((a6 & 0xC0) == 0x80)
    {
      result = 0;
      if (a5)
      {
        return result;
      }

      goto LABEL_22;
    }

    return 0;
  }

  result = 0;
  if ((a6 & 0xC0) != 0x40)
  {
    return result;
  }

LABEL_23:
  if (((a3 >> 8) & 1) == ((a6 >> 8) & 1) && ((a3 >> 16) & 1) == ((a6 >> 16) & 1) && ((a3 >> 24) & 1) == ((a6 >> 24) & 1) && (BYTE4(a3) & 1) == (BYTE4(a6) & 1))
  {
    return a7 == a8;
  }

  return result;
}

unint64_t sub_100116264()
{
  result = qword_1002D0CF8;
  if (!qword_1002D0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0CF8);
  }

  return result;
}

unint64_t sub_1001162BC()
{
  result = qword_1002D0D00;
  if (!qword_1002D0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D0D00);
  }

  return result;
}

uint64_t type metadata accessor for RCRecordButtonHostingView(uint64_t a1)
{
  result = qword_1002D0D18;
  if (!qword_1002D0D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001163B0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for RCRecordButtonHostingView(0);
  objc_msgSendSuper2(&v5, "layoutSubviews");
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ((*(result + 56) & 1) == 0)
    {
      *(result + 56) = 1;

      CurrentValueSubject.value.getter();

      sub_100009A0C(0, 0, 2u, v2, v3, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100116464(void *a1)
{
  v1 = a1;
  sub_1001163B0();
}

uint64_t sub_1001164AC(uint64_t a1)
{
  v3 = type metadata accessor for RCRecordButton(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  *&v6[qword_1002D0D10 + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10001D258(a1, v5);
  v7 = _UIHostingView.init(rootView:)();
  sub_100116F34(a1);
  return v7;
}

char *sub_100116564(char *a1, uint64_t a2, void *a3)
{
  *&a1[qword_1002D0D10 + 8] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = a1;
  v8.super_class = type metadata accessor for RCRecordButtonHostingView(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_10011664C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001168FC()
{
  swift_unknownObjectWeakLoadStrong();
  v0 = type metadata accessor for RCRecordButtonViewController();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v13[3] = v0;
  v13[4] = &off_1002907B8;
  v13[0] = v1;
  type metadata accessor for RCRecordButtonContainer();
  v2 = swift_allocObject();
  v3 = sub_10001466C(v13, v0);
  v4 = __chkstk_darwin(v3);
  v6 = (&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, v4);
  v8 = *v6;

  v10 = sub_100116C90(v9, v8, v2);

  sub_100014B64(v13);
  *(*(v10 + 24) + qword_1002D0D10 + 8) = &off_10028E740;
  swift_unknownObjectWeakAssign();
  return v10;
}

id sub_100116B2C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100116BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_100116C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCRecordButton(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v27[-1] - v11);
  v27[3] = type metadata accessor for RCRecordButtonViewController();
  v27[4] = &off_1002907B8;
  v27[0] = a2;
  v13 = [objc_allocWithZone(type metadata accessor for RCRecordButtonZoomTransitionSourceView()) init];
  sub_1000CC430(v27, v12 + v7[10]);
  *v12 = swift_getKeyPath();
  sub_1000C773C(&qword_1002D0F10, &qword_10024C3D0);
  swift_storeEnumTagMultiPayload();
  v14 = v7[7];
  *(v12 + v14) = swift_getKeyPath();
  sub_1000C773C(&qword_1002D0F18, &qword_1002450C0);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + v7[8];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v7[12];
  v17 = objc_opt_self();

  v18 = v13;
  v19 = [v17 sharedStyleProvider];
  [v19 recordingControlAnimationDuration];
  v21 = v20;

  *(v12 + v16) = v21;
  *(v12 + v7[13]) = 0x3FD3333333333333;
  *(v12 + v7[14]) = 0x4010000000000000;
  *(v12 + v7[15]) = 0x4000000000000000;
  *(v12 + v7[16]) = 0x4010000000000000;
  *(v12 + v7[9]) = a1;
  *(v12 + v7[11]) = v18;
  *(objc_allocWithZone(type metadata accessor for RCRecordButtonHostingView(0)) + qword_1002D0D10 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10001D258(v12, v9);
  v22 = _UIHostingView.init(rootView:)();
  sub_100116F34(v12);
  *(a3 + 24) = v22;
  v23 = v22;
  dispatch thunk of _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.setter();

  v24 = *(a3 + 24);
  dispatch thunk of _UIHostingView.safeAreaRegions.setter();

  sub_100014B64(v27);
  *(a3 + 16) = v18;
  return a3;
}

uint64_t sub_100116F34(uint64_t a1)
{
  v2 = type metadata accessor for RCRecordButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100116F94()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos8VMPlayer____lazy_storage___spatialPlayer;
  if (*(v0 + OBJC_IVAR____TtC10VoiceMemos8VMPlayer____lazy_storage___spatialPlayer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos8VMPlayer____lazy_storage___spatialPlayer);
  }

  else
  {
    v3 = v0;
    type metadata accessor for SpatialPlayer();
    swift_allocObject();
    v2 = sub_1001A5DF8();
    *(v2 + 112) = &off_100290428;
    swift_unknownObjectWeakAssign();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_100117070()
{
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_currentItem);
  if (!v2)
  {
    sub_100016B60();
    sub_1000CCE0C(0);

    v6 = sub_100116F94();
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    swift_beginAccess();
    sub_100119BF0(&v19, v6 + 24);
    swift_endAccess();
    sub_1001A48A0();

    sub_100003CBC(&v19, &unk_1002D1050, &qword_100245280);
    return;
  }

  v3 = OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_audioPlayerItem;
  swift_beginAccess();
  sub_10000B46C(v2 + v3, &v15, &qword_1002D1048, &qword_100245278);
  if (v18 != 255)
  {
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v4 = v2;
LABEL_4:
    sub_100119C60(&v19, &v15);
    if (v18)
    {
      v12 = v15;
      v13 = v16;
      v14 = v17;
      v5 = sub_100116F94();
      sub_100119958(&v12, v11);
      swift_beginAccess();
      sub_100119BF0(v11, v5 + 24);
      swift_endAccess();
      sub_1001A48A0();

      sub_100003CBC(v11, &unk_1002D1050, &qword_100245280);
      sub_100016B60();
      sub_1000CCE0C(0);

      sub_1001199B4(&v12);
    }

    else
    {
      sub_100016B60();

      sub_1000CCE0C(v7);

      v8 = sub_100116F94();
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      swift_beginAccess();
      sub_100119BF0(&v12, v8 + 24);
      swift_endAccess();
      sub_1001A48A0();

      sub_100003CBC(&v12, &unk_1002D1050, &qword_100245280);
    }

    sub_100119C60(&v19, &v15);
    v9 = v18;
    sub_100119C98(&v15);
    sub_100119780(v9);
    swift_unknownObjectWeakAssign();
    sub_100118620();

    sub_100119C98(&v19);
    return;
  }

  v10 = v2;
  sub_1001193B0(v10, &v19);
  if (!v1)
  {
    if (v18 != 255)
    {
      sub_100003CBC(&v15, &qword_1002D1048, &qword_100245278);
    }

    goto LABEL_4;
  }

  if (v18 != 255)
  {
    sub_100003CBC(&v15, &qword_1002D1048, &qword_100245278);
  }
}

void sub_1001173B8(char *a1, uint64_t a2, void *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC10VoiceMemos8VMPlayer_currentItem];
  *&a1[OBJC_IVAR____TtC10VoiceMemos8VMPlayer_currentItem] = a3;
  v5 = a3;
  v6 = a1;

  sub_100117070();
}

uint64_t sub_100117724(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_10000B46C(a1, &aBlock, &qword_1002D1068, &qword_100245290);
  if (v29)
  {
    v17 = _convertErrorToNSError(_:)();
    [a3 audioPlayerError:v17];
  }

  else
  {
    v23[0] = aBlock;
    v23[1] = v26;
    v23[2] = v27;
    v24 = v28;
    v18 = OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_audioPlayerItem;
    swift_beginAccess();
    sub_100119B80(v23, a2 + v18);
    swift_endAccess();
  }

  sub_100017154();
  v19 = static OS_dispatch_queue.main.getter();
  *&v27 = a4;
  *(&v27 + 1) = a5;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v26 = sub_10012ED20;
  *(&v26 + 1) = &unk_100290698;
  v20 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_100119B28();
  sub_1000C773C(&unk_1002D1080, &qword_100241B40);
  sub_1000FF000();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v11 + 8))(v13, v10);
  return (*(v14 + 8))(v16, v22);
}

uint64_t sub_100117A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  if (RCSpatialFeatureFlagIsEnabled() && (v9 = OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_asset, [*(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_asset) rc_hasSpatialTracks]))
  {
    sub_100116F94();

    v10 = *(a1 + v9);
    v11 = a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_playableRangeEndTime;
    v12 = *(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_playableRangeEndTime);
    v13 = *(v11 + 8);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = v10;
    *(v16 + 40) = v12;
    *(v16 + 48) = v13;
    *(v16 + 56) = sub_100119A20;
    *(v16 + 64) = v14;
    v17 = v10;

    sub_100179578(0, 0, v8, &unk_100245288, v16);
  }

  else
  {
    sub_100016B60();
    v19 = *(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_asset);
    v20 = *(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_playableRangeEndTime);
    v21 = *(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_playableRangeEndTime + 8);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;

    v23 = v19;
    sub_1000CE79C(v23, v20, v21, sub_100119A14, v22);
  }
}

void sub_100118038(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType) == 1)
  {
    v3 = sub_100116F94();
    *(v3 + 96) = a1;
    swift_beginAccess();
    sub_10000B46C(v3 + 24, v11, &unk_1002D1050, &qword_100245280);
    if (v11[0])
    {
      sub_100119958(v11, v10);
      sub_100003CBC(v11, &unk_1002D1050, &qword_100245280);
      v4 = *(v3 + 96);

      sub_1001A452C(v5, v4);

      sub_1001199B4(v10);
    }

    else
    {

      sub_100003CBC(v11, &unk_1002D1050, &qword_100245280);
    }
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100018D90(v6, qword_1002E8CB0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Speech Isolator is only supported by spatial player", v8, 2u);
    }
  }
}

id VMPlayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VMPlayer.init()()
{
  v0[OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType] = 0;
  *&v0[OBJC_IVAR____TtC10VoiceMemos8VMPlayer____lazy_storage___standardPlayer] = 0;
  *&v0[OBJC_IVAR____TtC10VoiceMemos8VMPlayer____lazy_storage___spatialPlayer] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC10VoiceMemos8VMPlayer_currentItem] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VMPlayer();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001183C0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = 0;
    v1 = [result activateAudioSessionForPlaybackAndReturnError:&v3];
    swift_unknownObjectRelease();
    if (v1)
    {
      return v3;
    }

    else
    {
      v2 = v3;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

void sub_100118620()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_trackVolumes);
    v5 = *(Strong + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);

    if (v5)
    {
      sub_100116F94();
      v6 = &off_100295598;
    }

    else
    {
      sub_100016B60();
      v6 = &off_10028D9E8;
    }

    swift_getObjectType();
    (v6[13])(v4);

    swift_unknownObjectRelease();
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_100118038(*(v1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_speechIsolatorValue));
  }
}

id sub_10011878C(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_seekCount] = 0;
  v3 = &v1[OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_audioPlayerItem];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  v3[48] = -1;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_playableRangeEndTime];
  *v4 = 0;
  v4[8] = 1;
  v1[OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_looping] = 0;
  *&v1[OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_trackVolumes] = &off_10028CB90;
  *&v1[OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_speechIsolatorValue] = 0;
  *&v1[OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_asset] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for VMPlayerItem();
  return objc_msgSendSuper2(&v6, "init");
}

_BYTE *sub_100118898(uint64_t (*a1)(void), uint64_t a2, double a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *&v3[OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_seekCount];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      v11 = result;
      *&v3[OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_seekCount] = v10;
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = a1;
      v12[4] = a2;
      v13 = v11[OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType];
      v14 = v3;
      sub_1000D0DAC(a1, a2);
      if (v13)
      {
        sub_100116F94();
        v15 = &off_100295598;
      }

      else
      {
        sub_100016B60();
        v15 = &off_10028D9E8;
      }

      swift_getObjectType();
      (v15[21])(0, sub_100119348, v12, a3);

      return swift_unknownObjectRelease();
    }
  }

  else if (a1)
  {
    return a1(0);
  }

  return result;
}

void *sub_100118AE4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType))
    {
      sub_100116F94();
      v2 = &off_100295598;
    }

    else
    {
      sub_100016B60();
      v2 = &off_10028D9E8;
    }

    swift_getObjectType();
    (v2[8])();

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_100118BDC(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_playableRangeEndTime;
  *v3 = a1;
  *(v3 + 8) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (*(result + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType))
    {
      sub_100116F94();
      v6 = &off_100295598;
    }

    else
    {
      sub_100016B60();
      v6 = &off_10028D9E8;
    }

    swift_getObjectType();
    (v6[20])(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_100118D80(char a1)
{
  *(v1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_looping) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (*(result + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType))
    {
      sub_100116F94();
      v5 = &off_100295598;
    }

    else
    {
      sub_100016B60();
      v5 = &off_10028D9E8;
    }

    swift_getObjectType();
    (v5[16])(a1 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_100118F1C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_trackVolumes;
  *(v1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_trackVolumes) = a1;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(v1 + v2);
    v6 = *(result + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);

    if (v6)
    {
      sub_100116F94();
      v7 = &off_100295598;
    }

    else
    {
      sub_100016B60();
      v7 = &off_10028D9E8;
    }

    swift_getObjectType();
    (v7[13])(v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001190F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001191DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100119200(uint64_t a1, uint64_t a2)
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

uint64_t sub_10011921C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100119258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001192A8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1001192F4()
{
  result = qword_1002D1040;
  if (!qword_1002D1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1040);
  }

  return result;
}

uint64_t sub_100119348(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_seekCount);
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + 24);
    *(v2 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_seekCount) = v4;
    if (v5)
    {
      return v5(result & 1);
    }
  }

  return result;
}

void sub_1001193B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  if (RCSpatialFeatureFlagIsEnabled() && (v8 = OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_asset, [*(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_asset) rc_hasSpatialTracks]))
  {
    sub_100116F94();

    v9 = *(a1 + v8);
    v33 = *(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_playableRangeEndTime);
    v26 = *(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_playableRangeEndTime + 8);
    v10 = v9;
    v11 = dispatch_semaphore_create(0);
    v12 = swift_allocObject();
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 64) = -1;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v16 = v33;
    *(v15 + 32) = v10;
    *(v15 + 40) = v16;
    *(v15 + 48) = v26;
    *(v15 + 56) = sub_100119CC8;
    *(v15 + 64) = v13;
    v17 = v10;

    v18 = v11;
    sub_100179578(0, 0, v7, &unk_100245298, v15);

    OS_dispatch_semaphore.wait()();
    swift_beginAccess();
    sub_10000B46C(v12 + 16, &v27, &unk_1002D1090, &unk_1002452A0);
    if (v30 == 255)
    {
      sub_100003CBC(&v27, &unk_1002D1090, &unk_1002452A0);
      [objc_allocWithZone(NSError) initWithDomain:RCVoiceMemosErrorDomain code:-1 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v31[0] = v27;
      v31[1] = v28;
      v31[2] = v29;
      v32 = v30;
      sub_10000B46C(v31, &v27, &qword_1002D1060, &qword_10024F7F0);
      if (v30)
      {
        swift_willThrow();

        sub_100003CBC(v31, &qword_1002D1060, &qword_10024F7F0);
      }

      else
      {

        sub_100003CBC(v31, &qword_1002D1060, &qword_10024F7F0);
        v24 = v28;
        *a2 = v27;
        *(a2 + 16) = v24;
        *(a2 + 32) = v29;

        *(a2 + 48) = 1;
      }
    }
  }

  else
  {
    sub_100016B60();
    v19 = *(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_asset);
    v20 = *(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_playableRangeEndTime);
    v21 = *(a1 + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_playableRangeEndTime + 8);
    v22 = v19;
    v23 = sub_1000CE51C(v22, v20, v21);

    if (!v2)
    {
      *a2 = v23;
      *(a2 + 48) = 0;
    }
  }
}

uint64_t sub_100119780(uint64_t result)
{
  v2 = OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType;
  if (*(v1 + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType) != (result & 1))
  {
    v3 = result;
    if (result)
    {
      *(sub_100116F94() + 112) = &off_100290428;
      swift_unknownObjectWeakAssign();

      v4 = (sub_100016B60() + 32);
    }

    else
    {
      *(sub_100016B60() + 32) = &off_100290428;
      swift_unknownObjectWeakAssign();

      v4 = (sub_100116F94() + 112);
    }

    *v4 = 0;
    swift_unknownObjectWeakAssign();

    *(v1 + v2) = v3 & 1;
  }

  return result;
}

uint64_t sub_100119854(uint64_t a1, void (*a2)(_OWORD *))
{
  sub_10000B46C(a1, v4, &qword_1002D1060, &qword_10024F7F0);
  if (v5)
  {
    *&v6[0] = *&v4[0];
  }

  else
  {
    v6[0] = v4[0];
    v6[1] = v4[1];
    v6[2] = v4[2];
    v7 = 1;
  }

  v8 = v5;
  a2(v6);
  return sub_100003CBC(v6, &qword_1002D1068, &qword_100245290);
}

uint64_t sub_1001198F0(uint64_t a1, char a2, void (*a3)(void *))
{
  if ((a2 & 1) == 0)
  {
    v7 = 0;
  }

  v6[0] = a1;
  v8 = a2 & 1;
  v4 = sub_100119B04(a1, a2 & 1);
  (a3)(v6, v4);
  return sub_100003CBC(v6, &qword_1002D1068, &qword_100245290);
}

uint64_t sub_100119A28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001FF1C;

  return sub_1001A4F54(a1, v4, v5, v6, v7, v8, v10, v9);
}

double sub_100119B04(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
  }

  return result;
}

double sub_100119B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100119B28()
{
  result = qword_1002D1DC0;
  if (!qword_1002D1DC0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1DC0);
  }

  return result;
}

uint64_t sub_100119B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D1048, &qword_100245278);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100119BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D1050, &qword_100245280);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100119CD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100119D18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002001C;

  return sub_1001A4F54(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100119DFC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_100119E40(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10VoiceMemos30RCRecordingTrackInfoRepository_observers);
  v4 = *(v3 + 16);

  if (([v4 containsObject:a1] & 1) == 0)
  {
    v5 = *(v3 + 16);
    [v5 addObject:a1];
  }
}

void sub_100119FD0(uint64_t a1)
{
  CurrentValueSubject.value.getter();
  CurrentValueSubject.value.setter();
  v3 = *(*(v1 + OBJC_IVAR____TtC10VoiceMemos30RCRecordingTrackInfoRepository_observers) + 16);

  v4 = [v3 allObjects];
  sub_1000C773C(&qword_1002D10D8, &qword_100245330);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v8 trackInfoStateDidChangeWithOldState:v9 newState:a1];
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_10011A14C(unint64_t a1)
{
  if (a1 <= 1)
  {
    CurrentValueSubject.value.getter();
    CurrentValueSubject.value.setter();
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100018D90(v1, qword_1002E8CB0);
    v2 = static os_log_type_t.error.getter();
    log = Logger.logObject.getter();
    if (os_log_type_enabled(log, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, log, v2, "unexpected muted index", v3, 2u);
    }
  }
}

id sub_10011A334()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCRecordingTrackInfoRepository();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for AutoScrollType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RCRecordingTrackInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_10011A400()
{
  sub_100116F90(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_10011A460(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC10VoiceMemos25RCVisibleEntitiesObserver_model) *a2];
    [v6 setDelegate:v2];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10011A518()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCVisibleEntitiesObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10011A5DC(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10011AA70(a4, a5, a3);
  if (v8 != 3)
  {
    v9 = v8;
    v10 = sub_10011A438();

    if (v10 == a1)
    {
      sub_10001931C(a2, v19);
      sub_100022208();
      if (!swift_dynamicCast())
      {
LABEL_14:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v15 = v5 + OBJC_IVAR____TtC10VoiceMemos25RCVisibleEntitiesObserver_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        (*(v16 + 8))(v18, v9, ObjectType, v16);

LABEL_10:
        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v11 = sub_10011A44C();

      if (v11 == a1)
      {
        sub_10001931C(a2, v19);
        sub_1000C773C(&qword_1002D1200, &unk_100245410);
        if (swift_dynamicCast())
        {
          v12 = v5 + OBJC_IVAR____TtC10VoiceMemos25RCVisibleEntitiesObserver_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v13 = *(v12 + 8);
            v14 = swift_getObjectType();
            (*(v13 + 16))(v18, v9, v14, v13);
            swift_unknownObjectRelease();
          }

          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }
  }
}

uint64_t sub_10011AA08(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D11F8, &qword_100245408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011AA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C773C(&qword_1002D11F8, &qword_100245408);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v25 - v17;
  switch(a1)
  {
    case 1:
      return 0;
    case 4:
      sub_10011AD0C(a2, v11);
      v20 = v13[6];
      if (v20(v11, 1, v12) == 1)
      {
        v8 = v11;
      }

      else
      {
        v21 = v11;
        v22 = v13[4];
        v22(v18, v21, v12);
        sub_10011AD0C(a3, v8);
        if (v20(v8, 1, v12) != 1)
        {
          v22(v15, v8, v12);
          sub_10011AD7C();
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = v13[1];
          v24(v15, v12);
          v24(v18, v12);
          if ((v23 & 1) == 0)
          {
            return 3;
          }

          return 1;
        }

        (v13[1])(v18, v12);
      }

      sub_10011AA08(v8);
      return 1;
    case 2:
      return 2;
    default:
      return 3;
  }
}

uint64_t sub_10011AD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D11F8, &qword_100245408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011AD7C()
{
  result = qword_1002D1210;
  if (!qword_1002D1210)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1210);
  }

  return result;
}

uint64_t sub_10011ADD4@<X0>(uint64_t *a1@<X8>)
{
  sub_1000C773C(&qword_1002D12F8, &qword_100245478);
  v3 = type metadata accessor for DenylistDescriptor();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100245420;
  v8 = v7 + v6;
  v9 = *(v4 + 16);
  v9(v8, v1 + OBJC_IVAR____TtC10VoiceMemos27RCPrivacyValidationProvider_denySessionDataUserIDCreationMonth, v3);
  v9(v8 + v5, v1 + OBJC_IVAR____TtC10VoiceMemos27RCPrivacyValidationProvider_denySessionDataIsSaltRegenerated, v3);
  v9(v8 + 2 * v5, v1 + OBJC_IVAR____TtC10VoiceMemos27RCPrivacyValidationProvider_denySessionDataUserIDCreationYear, v3);
  v9(v8 + 3 * v5, v1 + OBJC_IVAR____TtC10VoiceMemos27RCPrivacyValidationProvider_denySessionDataUserType, v3);
  v9(v8 + 4 * v5, v1 + OBJC_IVAR____TtC10VoiceMemos27RCPrivacyValidationProvider_denySessionDataUserIDResetCount, v3);
  v10 = sub_1001B1980(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *a1 = v10;
  v11 = enum case for PrivacyValidation.enabled(_:);
  v12 = type metadata accessor for PrivacyValidation();
  v13 = *(*(v12 - 8) + 104);

  return v13(a1, v11, v12);
}

uint64_t sub_10011AFEC()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos27RCPrivacyValidationProvider_denySessionDataUserIDCreationMonth;
  v2 = type metadata accessor for DenylistDescriptor();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10VoiceMemos27RCPrivacyValidationProvider_denySessionDataIsSaltRegenerated, v2);
  v3(v0 + OBJC_IVAR____TtC10VoiceMemos27RCPrivacyValidationProvider_denySessionDataUserIDCreationYear, v2);
  v3(v0 + OBJC_IVAR____TtC10VoiceMemos27RCPrivacyValidationProvider_denySessionDataUserType, v2);
  v3(v0 + OBJC_IVAR____TtC10VoiceMemos27RCPrivacyValidationProvider_denySessionDataUserIDResetCount, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RCPrivacyValidationProvider(uint64_t a1)
{
  result = qword_1002D1248;
  if (!qword_1002D1248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011B160(uint64_t a1)
{
  result = type metadata accessor for DenylistDescriptor();
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

void *sub_10011B1FC(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_1001AE698(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v8 = *(type metadata accessor for TimeRangeRun(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v19, v9);
    if (v3)
    {
      break;
    }

    v11 = v19;
    v12 = v20;
    v21 = v5;
    v14 = v5[2];
    v13 = v5[3];
    if (v14 >= v13 >> 1)
    {
      v17 = v20;
      v18 = v19;
      sub_1001AE698((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v11 = v18;
      v5 = v21;
    }

    v5[2] = v14 + 1;
    v15 = &v5[4 * v14];
    *(v15 + 2) = v11;
    *(v15 + 3) = v12;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011B3C8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptionData(0);
  __chkstk_darwin(v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000E63C0(a2, a3, v12);
  if (!v3)
  {
    (*(v7 + 16))(v9, &v12[*(v10 + 20)], v6);
    sub_10011E8B8(v12, type metadata accessor for TranscriptionData);
    sub_10016A974(v9);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_10011B7AC()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for TranscriptionData(0);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1000C773C(&qword_1002D1398, &qword_100245580);
  v1[9] = swift_task_alloc();
  v2 = type metadata accessor for AttributedString();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for Locale();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10011B934, 0, 0);
}

uint64_t sub_10011B934()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_liveTranscription;
  v3 = *(v1 + OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_liveTranscription);
  v0[16] = v3;
  if (v3)
  {
    *(v1 + v2) = 0;
    sub_1000C773C(&qword_1002CEF68, &qword_1002422F0);
    AsyncStream.Continuation.finish()();
    v4 = *(v3 + OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_transcriptionTask);
    v0[17] = v4;
    if (v4)
    {

      v5 = swift_task_alloc();
      v0[18] = v5;
      v6 = sub_1000C773C(&qword_1002D5540, &qword_1002425B0);
      *v5 = v0;
      v5[1] = sub_10011BD84;

      return Task.value.getter(v6, v4, &type metadata for () + 8, v6, &protocol self-conformance witness table for Error);
    }

    v10 = v0[14];
    v11 = v0[13];
    v31 = v0[15];
    v32 = v0[12];
    v12 = v0[11];
    v27 = v11;
    v29 = v0[10];
    v14 = v0[8];
    v13 = v0[9];
    v33 = v0[7];
    v34 = v0[6];
    v15 = *(v0[5] + OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_compiler);
    os_unfair_lock_lock((v15 + 24));
    v16 = *(v14 + 48);
    v17 = *(v15 + 16);
    v30 = *(v10 + 16);
    v30(v13, v17 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_locale, v11);
    v18 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_liveTranscriptionString;
    swift_beginAccess();
    v28 = *(v12 + 16);
    v28(v13 + v16, v17 + v18, v29);
    os_unfair_lock_unlock((v15 + 24));
    (*(v10 + 32))(v31, v13, v27);
    (*(v12 + 32))(v32, v13 + v16, v29);
    v30(v33, v31, v27);
    v28(v33 + *(v34 + 20), v32, v29);
    v7 = sub_1000E724C(v33);
    v8 = v19;
    v35 = v0[15];
    v20 = v0[13];
    v21 = v0[14];
    v22 = v0[11];
    v23 = v0[12];
    v24 = v0[10];
    v25 = v0[7];

    sub_10011E8B8(v25, type metadata accessor for TranscriptionData);
    (*(v22 + 8))(v23, v24);
    (*(v21 + 8))(v35, v20);
  }

  else
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = v0[1];

  return v9(v7, v8);
}

uint64_t sub_10011BD84()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_10011C1E4;
  }

  else
  {
    v2 = sub_10011BEA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011BEA0()
{

  v1 = v0[14];
  v2 = v0[13];
  v27 = v0[15];
  v28 = v0[12];
  v3 = v0[11];
  v23 = v2;
  v25 = v0[10];
  v4 = v0[8];
  v5 = v0[9];
  v29 = v0[7];
  v30 = v0[6];
  v31 = v0[19];
  v6 = *(v0[5] + OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_compiler);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v4 + 48);
  v8 = *(v6 + 16);
  v26 = *(v1 + 16);
  v26(v5, v8 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_locale, v2);
  v9 = OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_liveTranscriptionString;
  swift_beginAccess();
  v24 = *(v3 + 16);
  v24(v5 + v7, v8 + v9, v25);
  os_unfair_lock_unlock((v6 + 24));
  (*(v1 + 32))(v27, v5, v23);
  (*(v3 + 32))(v28, v5 + v7, v25);
  v26(v29, v27, v23);
  v24(v29 + *(v30 + 20), v28, v25);
  v10 = v31;
  v32 = sub_1000E724C(v29);
  v12 = v11;
  v13 = v0[15];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[10];
  v19 = v0[7];

  if (v10)
  {
    sub_10011E8B8(v19, type metadata accessor for TranscriptionData);
    (*(v16 + 8))(v17, v18);
    (*(v15 + 8))(v13, v14);

    v20 = v0[1];

    return v20();
  }

  else
  {
    sub_10011E8B8(v19, type metadata accessor for TranscriptionData);
    (*(v16 + 8))(v17, v18);
    (*(v15 + 8))(v13, v14);

    v22 = v0[1];

    return v22(v32, v12);
  }
}

uint64_t sub_10011C1E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011C3F0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10011C498;

  return sub_10011B7AC();
}

uint64_t sub_10011C498(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    v11 = v10;
    v12 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000D51D8(a1, a2);
    v12 = isa;
    v11 = 0;
    v10 = isa;
  }

  v14 = *(v7 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_10011C648(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *&v2[OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_compiler];
  v15 = a1;
  os_unfair_lock_lock((v7 + 24));
  sub_10011E850((v7 + 16), &v16);
  os_unfair_lock_unlock((v7 + 24));
  v8 = v16;
  v9 = type metadata accessor for TaskPriority();
  v14 = v17;
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v2;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = v10;
  *(v12 + 40) = v8;
  *(v12 + 48) = v14;
  sub_100179868(0, 0, v6, &unk_100245570, v12);
}

id sub_10011C7C4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v58[1] = a1;
  v59 = a3;
  v68 = type metadata accessor for AttributedString();
  v60 = *(v68 - 8);
  __chkstk_darwin(v68);
  v58[0] = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TranscriptionData(0);
  __chkstk_darwin(v67);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for URL();
  v9 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptionFragment(0);
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v64 = (v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v69 = v58 - v15;
  v16 = [a2 composedFragments];
  sub_10011E86C();
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_32:
    v70 = _swiftEmptyArrayStorage;
LABEL_33:

    v51 = v58[0];
    sub_10016B3EC(v70, v58[0]);

    sub_10016A974(v51);
    (*(v60 + 8))(v51, v68);
    swift_beginAccess();
    v52 = sub_10016AC58();
    v54 = v53;
    v56 = v55;
    result = swift_endAccess();
    v57 = v59;
    *v59 = v52;
    v57[1] = v54;
    v57[2] = v56;
    return result;
  }

LABEL_31:
  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
    goto LABEL_32;
  }

LABEL_3:
  v20 = 0;
  v73 = v17 & 0xFFFFFFFFFFFFFF8;
  v74 = v17 & 0xC000000000000001;
  v72 = v9 + 1;
  v63 = (v60 + 16);
  v70 = _swiftEmptyArrayStorage;
  *&v18 = 138412290;
  v61 = v18;
  v62 = v8;
  v71 = v19;
  while (1)
  {
    if (v74)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *(v73 + 16))
      {
        goto LABEL_28;
      }

      v21 = *(v17 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    result = [v21 AVOutputURL];
    if (!result)
    {
      break;
    }

    v25 = result;
    v26 = objc_opt_self();
    v27 = v75;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v28);
    v9 = v29;
    (v72->isa)(v27, v76);
    v30 = [v26 rc_transcriptionDataForURL:v9];

    if (v30)
    {
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v32;

      [v22 timeRangeInContentToUse];
      if (v33 > v34)
      {
        goto LABEL_29;
      }

      v35 = v33;
      v36 = v34;
      [v22 timeRangeInComposition];
      if (v37 > v38)
      {
        goto LABEL_30;
      }

      v39 = v37;
      v40 = v38;
      sub_1000E63C0(v31, v9, v8);
      if (v4)
      {
        sub_1000D4388(v31, v9);
        if (qword_1002CDD88 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100018D90(v41, qword_1002E8CB0);
        v42 = static os_log_type_t.error.getter();
        swift_errorRetain();
        v9 = Logger.logObject.getter();

        if (os_log_type_enabled(v9, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = v61;
          swift_errorRetain();
          v45 = _swift_stdlib_bridgeErrorToNSError();
          *(v43 + 4) = v45;
          *v44 = v45;
          _os_log_impl(&_mh_execute_header, v9, v42, "Failed to decode transcription fragment, error = %@", v43, 0xCu);
          sub_100003CBC(v44, &unk_1002D3690, &qword_100242370);
          v8 = v62;
        }

        else
        {
        }

        v4 = 0;
      }

      else
      {

        sub_1000D4388(v31, v9);
        v46 = v64;
        (*v63)(v64 + *(v66 + 24), &v8[*(v67 + 20)], v68);
        sub_10011E8B8(v8, type metadata accessor for TranscriptionData);
        *v46 = v35;
        v46[1] = v36;
        v46[2] = v39;
        v46[3] = v40;
        sub_10011E918(v46, v69, type metadata accessor for TranscriptionFragment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_1000F2D3C(0, v70[2] + 1, 1, v70);
        }

        v48 = v70[2];
        v47 = v70[3];
        v9 = (v48 + 1);
        if (v48 >= v47 >> 1)
        {
          v70 = sub_1000F2D3C((v47 > 1), v48 + 1, 1, v70);
        }

        v49 = v69;
        v50 = v70;
        v70[2] = v9;
        sub_10011E918(v49, v50 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v48, type metadata accessor for TranscriptionFragment);
      }
    }

    else
    {
    }

    ++v20;
    if (v23 == v71)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011D06C, v9, v8);
}

uint64_t sub_10011D06C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10017A95C(*(v0 + 32), *(v0 + 40), *(v0 + 48));
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10011D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011D1AC, v9, v8);
}

uint64_t sub_10011D1AC()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10017AB10(*(v0 + 32), *(v0 + 40), *(v0 + 48));
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

id sub_10011D27C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCLiveTranscription();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10011D330@<X0>(char *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for TranscriptionUtterance(0);
  sub_10016A6BC(&a2[*(v5 + 20)], *a2);
  swift_beginAccess();
  v6 = sub_10016AC58();
  v8 = v7;
  v10 = v9;
  result = swift_endAccess();
  *a3 = v6;
  a3[1] = v8;
  a3[2] = v10;
  return result;
}

uint64_t sub_10011D3D0()
{
  *(v1 + 40) = v0;
  sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  *(v1 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10011D46C, 0, 0);
}

uint64_t sub_10011D46C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *&v2[OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_compiler];
  os_unfair_lock_lock(v3 + 6);
  swift_beginAccess();
  v4 = sub_10016AC58();
  v6 = v5;
  v8 = v7;
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 6);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v2;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v12[5] = v4;
  v12[6] = v6;
  v12[7] = v8;
  sub_100179868(0, 0, v1, &unk_1002455B8, v12);

  v13 = v0[1];

  return v13();
}

void *sub_10011D680(uint64_t (*a1)(void), char *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v49 = a2;
  v5 = sub_1000C773C(&qword_1002D1348, &qword_1002454D0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v45 - v6);
  v8 = type metadata accessor for TimeRangeRun(0);
  v55 = *(v8 - 8);
  __chkstk_darwin(v8);
  v58 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v45 - v11;
  v48 = sub_1000C773C(&qword_1002D1350, &qword_1002454D8);
  v60 = *(v48 - 8);
  __chkstk_darwin(v48);
  v13 = &v45 - v12;
  v14 = sub_1000C773C(&qword_1002D1358, &qword_1002454E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  v17 = sub_1000C773C(&qword_1002D1360, &qword_1002454E8);
  v50 = *(v17 - 8);
  __chkstk_darwin(v17);
  v59 = &v45 - v18;
  v19 = sub_1000C773C(&qword_1002D1368, &qword_1002454F0);
  v51 = *(v19 - 8);
  v52 = v19;
  __chkstk_darwin(v19);
  v47 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = (&v45 - v22);
  v46 = type metadata accessor for AttributedString.Runs();
  v24 = *(v46 - 8);
  v25 = __chkstk_darwin(v46);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (a1)(0, v25);
  sub_10011E1FC(v49, v56, v57);
  dispatch thunk of AttributedStringProtocol.runs.getter();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1000E78D8();
  AttributedString.Runs.subscript.getter();

  v28 = v27;
  v29 = v48;
  (*(v24 + 8))(v28, v46);
  v30 = *(v51 + 16);
  v49 = v23;
  v30(v47, v23, v52);
  sub_100008034(&qword_1002D1370, &qword_1002D1368, &qword_1002454F0, &protocol conformance descriptor for AttributedString.Runs.AttributesSlice1<A>);
  dispatch thunk of Sequence.makeIterator()();
  v57 = sub_100008034(&qword_1002D1378, &qword_1002D1360, &qword_1002454E8, &protocol conformance descriptor for AttributedString.Runs.AttributesSlice1<A>.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  v31 = *(v60 + 48);
  v60 += 48;
  v56 = v31;
  if ((v31)(v16, 1, v29) == 1)
  {
    v32 = _swiftEmptyArrayStorage;
  }

  else
  {
    v34 = (v55 + 56);
    v35 = (v55 + 48);
    v32 = _swiftEmptyArrayStorage;
    v53 = v16;
    do
    {
      sub_10011E11C(v16, v13);
      if (v13[16])
      {
        v36 = 1;
      }

      else
      {
        v38 = *v13;
        v37 = *(v13 + 1);
        sub_10011E18C(&v13[*(v29 + 48)], v7 + *(v8 + 20));
        v36 = 0;
        *v7 = v38;
        v7[1] = v37;
      }

      (*v34)(v7, v36, 1, v8);
      sub_100003CBC(v13, &qword_1002D1350, &qword_1002454D8);
      if ((*v35)(v7, 1, v8) == 1)
      {
        sub_100003CBC(v7, &qword_1002D1348, &qword_1002454D0);
      }

      else
      {
        v39 = v8;
        v40 = v17;
        v41 = v29;
        v42 = v54;
        sub_10011E918(v7, v54, type metadata accessor for TimeRangeRun);
        sub_10011E918(v42, v58, type metadata accessor for TimeRangeRun);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1000F2C10(0, v32[2] + 1, 1, v32);
        }

        v44 = v32[2];
        v43 = v32[3];
        if (v44 >= v43 >> 1)
        {
          v32 = sub_1000F2C10((v43 > 1), v44 + 1, 1, v32);
        }

        v32[2] = v44 + 1;
        sub_10011E918(v58, v32 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v44, type metadata accessor for TimeRangeRun);
        v29 = v41;
        v17 = v40;
        v8 = v39;
        v16 = v53;
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while ((v56)(v16, 1, v29) != 1);
  }

  (*(v50 + 8))(v59, v17);
  (*(v51 + 8))(v49, v52);
  return v32;
}

uint64_t sub_10011DDD4(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptionParagraphFormatter(0);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 28);
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 16))(&v9[v11], a1, v12);
  *v9 = 3;
  v13 = type metadata accessor for TranscriptionData(0);
  sub_1001749F4(a1 + *(v13 + 20), v6);
  v14 = sub_10011E1FC(byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  dispatch thunk of AttributedStringProtocol.characters.getter();
  sub_10011E1FC(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v15 = String.init<A>(_:)();
  v20[1] = v16;
  v23[3] = v3;
  v23[4] = v14;
  v17 = sub_100015800(v23);
  (*(v4 + 16))(v17, v6, v3);
  v18 = sub_10011D680(&type metadata accessor for AttributedString, byte_1002D4AD0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  v22 = v23;
  sub_10011B1FC(sub_10011E0FC, v21, v18);

  (*(v4 + 8))(v6, v3);
  sub_10011E8B8(v9, type metadata accessor for TranscriptionParagraphFormatter);
  sub_100014B64(v23);
  return v15;
}

uint64_t sub_10011E11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D1350, &qword_1002454D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011E18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CFFD8, &qword_1002440C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011E1FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10011E244(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_liveTranscription] = 0;
  *&v3[OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_compiler;
  static Locale.current.getter();
  type metadata accessor for TranscriptionCompiler(0);
  swift_allocObject();
  v10 = sub_10016A0F4(v8);
  sub_1000C773C(&qword_1002D13A0, &qword_1002455A0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  v12 = (v11 + 24);
  *(v11 + 16) = v10;
  v13 = v11 + 16;
  *&v3[v9] = v11;
  if (a2 >> 60 != 15)
  {
    __chkstk_darwin(v11);
    v16[-2] = a1;
    v16[-1] = a2;
    sub_1000D43DC(a1, a2);

    os_unfair_lock_lock(v12);
    sub_10011EA2C(v13);
    os_unfair_lock_unlock(v12);
    sub_1000D51D8(a1, a2);
  }

  v14 = type metadata accessor for RCLiveTranscription();
  v17.receiver = v3;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_10011E5C0(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  type metadata accessor for LiveTranscription(0);
  swift_allocObject();
  v9 = a1;
  v10 = sub_1000D6C58(a1);
  *&v3[OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_liveTranscription] = v10;

  *(v10 + OBJC_IVAR____TtC10VoiceMemos17LiveTranscription_delegate + 8) = &off_1002907C8;
  swift_unknownObjectWeakAssign();

  v11 = *&v3[OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_compiler];
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  swift_beginAccess();
  sub_10016A37C();
  swift_endAccess();
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  v13 = v12 + OBJC_IVAR____TtC10VoiceMemos21TranscriptionCompiler_presentationModel;
  swift_beginAccess();
  *(v13 + *(type metadata accessor for TranscriptionPresentationModel(0) + 40)) = a2;
  sub_10016D154(v14);
  swift_endAccess();
  swift_beginAccess();
  v15 = sub_10016AC58();
  v17 = v16;
  v19 = v18;
  swift_endAccess();
  os_unfair_lock_unlock((v11 + 24));
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  type metadata accessor for MainActor();
  v21 = v3;
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v21;
  v23[5] = v15;
  v23[6] = v17;
  v23[7] = v19;
  sub_100179868(0, 0, v8, &unk_100242348, v23);
}

unint64_t sub_10011E86C()
{
  result = qword_1002D1390;
  if (!qword_1002D1390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D1390);
  }

  return result;
}

uint64_t sub_10011E8B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10011E918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011E980()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002001C;

  return sub_10011C3F0(v2, v3);
}

uint64_t sub_10011EA48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10011EA98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001FF1C;

  return sub_10011D10C(a1, v4, v5, v6, v7, v9, v8);
}

void *sub_10011EB6C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = *(v1 + 36);
    result = objc_opt_self();
    v8 = 0;
    v19 = v1 + 72;
    v20 = result;
    v21 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v8;
      LODWORD(v7) = *(*(v1 + 56) + 4 * v5);
      v11 = [v20 rc_createSharingMetadataItemForKey:*(*(v1 + 48) + 8 * v5) andValue:v7];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v21;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v21 + 32);
      if (v5 >= v9)
      {
        goto LABEL_23;
      }

      v12 = *(v4 + 8 * v10);
      if ((v12 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v6 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v13 = v12 & (-2 << (v5 & 0x3F));
      if (v13)
      {
        v9 = __clz(__rbit64(v13)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v10 << 6;
        v15 = v10 + 1;
        v16 = (v19 + 8 * v10);
        while (v15 < (v9 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_10011F4F0(v5, v6, 0);
            v9 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        result = sub_10011F4F0(v5, v6, 0);
      }

LABEL_4:
      v8 = v22 + 1;
      v5 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10011EDA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return _swift_task_switch(sub_10011EE30, 0, 0);
}

uint64_t sub_10011EE30()
{
  v1 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[6] = [v1 initWithURL:v3 options:0];

  sub_1000C773C(&qword_1002D13A8, &qword_1002455D8);
  v5 = static AVPartialAsyncProperty<A>.metadata.getter();
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_10011EF70;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 2, v5, 0, 0);
}

uint64_t sub_10011EF70()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10011F250;
  }

  else
  {

    v2 = sub_10011F0C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011F0C0()
{
  v1 = sub_10011F2E8(v0[5]);
  v2 = sub_10011EB6C(v1);

  sub_1001B1E5C(v2);
  v3 = objc_opt_self();
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  sub_10011F4A4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v0[3] = 0;
  LODWORD(v3) = [v3 rc_updateMetadataInFile:v6 withMetadata:isa error:v0 + 3];

  v8 = v0[3];
  v9 = v0[6];
  if (v3)
  {
    v10 = v8;
  }

  else
  {
    v12 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10011F250()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10011F2E8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_playbackSpeed);
  if (v2 != 1.0)
  {
    v3 = RCRecordingShareMetadataKeyPlaybackRate;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000CB620(v3, isUniquelyReferenced_nonNull_native, v2);
  }

  v5 = *(a1 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_layerMix);
  if (v5 != 0.0)
  {
    v6 = RCRecordingShareMetadataKeyLayerMix;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000CB620(v6, v7, v5);
  }

  if ((*(a1 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_speechIsolatorValue + 4) & 1) == 0)
  {
    sub_100107130(*(a1 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_speechIsolatorValue), RCRecordingShareMetadataKeySpeechIsolatorValue);
  }

  if (*(a1 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_enhanced) == 1)
  {
    v8 = RCRecordingShareMetadataKeyEnhanceEnabled;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000CB620(v8, v9, 1.0);
  }

  if (*(a1 + OBJC_IVAR____TtCC10VoiceMemos27ComposedAudioEffectRenderer8Settings_skipSilence) == 1)
  {
    v10 = RCRecordingShareMetadataKeySkipSilenceEnabled;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000CB620(v10, v11, 1.0);
  }

  return &_swiftEmptyDictionarySingleton;
}

unint64_t sub_10011F4A4()
{
  result = qword_1002D13B0;
  if (!qword_1002D13B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D13B0);
  }

  return result;
}

uint64_t sub_10011F4F0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

UIMenu sub_10011F6DC(char a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  sub_1000C773C(&unk_1002CE190, &unk_1002433E0);
  v9 = swift_allocObject();
  v33 = xmmword_1002432E0;
  *(v9 + 16) = xmmword_1002432E0;
  v10 = *(v2 + OBJC_IVAR____TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator_menuCreator);
  *(v9 + 32) = sub_10018F468();
  *(v9 + 40) = sub_10018E19C();
  v36 = v9;
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = v33;
    v31 = objc_opt_self();
    v11 = [v31 sharedStyleProvider];
    v12 = [v11 transcriptionImage];

    LODWORD(v33) = v3;
    v3 = (v10 + OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_accessibilityIdentifierPrefix);
    v13 = *(v10 + OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_accessibilityIdentifierPrefix + 8);
    v34 = *(v10 + OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_accessibilityIdentifierPrefix);
    v35 = v13;

    v14._object = 0x80000001002314C0;
    v14._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v14);
    v30[0] = v34;
    sub_1000067AC(0, &qword_1002CFE60, UIAction_ptr);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v30[1] = v7;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = v12;
    swift_retain_n();
    v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v17 = String._bridgeToObjectiveC()();

    [v16 setAccessibilityIdentifier:v17];

    v18 = v31;
    v19 = inited;
    *(inited + 32) = v16;
    v20 = [v18 sharedStyleProvider];
    v21 = [v20 copyTranscriptImage];

    v22 = v3[1];
    v34 = *v3;
    v35 = v22;

    v23._object = 0x800000010022F1F0;
    v23._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v23);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = v21;
    swift_retain_n();
    v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v26 = String._bridgeToObjectiveC()();

    [v25 setAccessibilityIdentifier:v26];

    LOBYTE(v3) = v33;

    *(v19 + 40) = v25;
    sub_1001B1F60(v19);
  }

  if (v3)
  {
    sub_10018FAFC();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1000067AC(0, &qword_1002CFE58, UIMenu_ptr);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v37.value.super.isa = 0;
  v37.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v27, 0, v37, 1, 0xFFFFFFFFFFFFFFFFLL, v36, v29);
}

UIMenu sub_10011FC5C(char a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  if ((a1 & 1) != 0 && RCSpatialEffectsAreAvailable())
  {
    sub_1000C773C(&unk_1002CE190, &unk_1002433E0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002432E0;
    v6 = *(v1 + OBJC_IVAR____TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator_menuCreator);
    v7 = [objc_opt_self() sharedStyleProvider];
    v8 = [v7 playbackSettingsImage];

    v9._object = 0x8000000100231480;
    v9._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v9);
    sub_1000067AC(0, &qword_1002CFE60, UIAction_ptr);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = v8;
    swift_retain_n();
    v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v12 = String._bridgeToObjectiveC()();

    [v11 setAccessibilityIdentifier:v12];

    *(v5 + 32) = v11;
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    v33 = sub_1001204B4;
    v34 = v14;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100112414;
    v32 = &unk_100290990;
    v15 = _Block_copy(&aBlock);
    v16 = v6;

    v17 = [v13 elementWithUncachedProvider:v15];
    _Block_release(v15);
    *(v5 + 40) = v17;
  }

  else
  {
    sub_1000C773C(&unk_1002CE190, &unk_1002433E0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002432F0;
    v18 = *(v1 + OBJC_IVAR____TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator_menuCreator);
    v19 = [objc_opt_self() sharedStyleProvider];
    v20 = [v19 playbackSettingsImage];

    v21 = *(v18 + OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_accessibilityIdentifierPrefix + 8);
    aBlock = *(v18 + OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_accessibilityIdentifierPrefix);
    v30 = v21;

    v22._object = 0x8000000100231480;
    v22._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v22);
    sub_1000067AC(0, &qword_1002CFE60, UIAction_ptr);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = v20;
    swift_retain_n();
    v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v25 = String._bridgeToObjectiveC()();

    [v24 setAccessibilityIdentifier:v25];

    *(v5 + 32) = v24;
  }

  sub_1000067AC(0, &qword_1002CFE58, UIMenu_ptr);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v35.value.super.isa = 0;
  v35.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v35, 1, 0xFFFFFFFFFFFFFFFFLL, v5, v28);
}

uint64_t sub_100120254()
{
  sub_1000C773C(&unk_1002CE190, &unk_1002433E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100240520;
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator_menuCreator);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v9[4] = sub_10012048C;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100112414;
  v9[3] = &unk_100290918;
  v5 = _Block_copy(v9);
  v6 = v2;

  v7 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(v1 + 32) = v7;
  *(v1 + 40) = sub_10018EEBC();
  *(v1 + 48) = sub_10018F190();
  return v1;
}

id sub_1001203D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCRecordingCellMoreButtonMenuCreator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100120494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_1001204C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v7 = &v4[OBJC_IVAR____TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator_recordingUUID];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = type metadata accessor for RCMoreActionsMenuCreator();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_recordingUUID];
  *v10 = a1;
  *(v10 + 1) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v11 = &v9[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_accessibilityIdentifierPrefix];
  strcpy(&v9[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_accessibilityIdentifierPrefix], "RecordingCell");
  *(v11 + 7) = -4864;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_100005EF4(v15, &v9[OBJC_IVAR____TtC10VoiceMemos24RCMoreActionsMenuCreator_controller]);
  v14.receiver = v9;
  v14.super_class = v8;

  *&v4[OBJC_IVAR____TtC10VoiceMemos36RCRecordingCellMoreButtonMenuCreator_menuCreator] = objc_msgSendSuper2(&v14, "init");
  v13.receiver = v4;
  v13.super_class = type metadata accessor for RCRecordingCellMoreButtonMenuCreator();
  return objc_msgSendSuper2(&v13, "init");
}

UIMenu sub_100120654(char a1, int a2, char a3)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  sub_1000C773C(&unk_1002CE190, &unk_1002433E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002432F0;
  sub_1000067AC(0, &qword_1002CFE58, UIMenu_ptr);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002432F0;
  v7 = [objc_opt_self() sharedStyleProvider];
  v8 = [v7 shareToolbarMenuImage];

  v9._countAndFlagsBits = 0x654D65726168532FLL;
  v9._object = 0xEE006D657449756ELL;
  String.append(_:)(v9);
  sub_1000067AC(0, &qword_1002CFE60, UIAction_ptr);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v8;
  swift_retain_n();
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v12 = String._bridgeToObjectiveC()();

  [v11 setAccessibilityIdentifier:v12];

  *(v6 + 32) = v11;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v22.value.super.isa = 0;
  v22.is_nil = 0;
  *(v5 + 32) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, 0, v22, 1, 0xFFFFFFFFFFFFFFFFLL, v6, v17);
  sub_10011F6DC(a1, a2);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10011FC5C(a3 & 1);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v14 = sub_100120254();
  sub_1001B1F60(v14);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v23.value.super.isa = 0;
  v23.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v23, 1, 0xFFFFFFFFFFFFFFFFLL, v5, v18.super.super.isa);
}

uint64_t type metadata accessor for RCSegmentedSwitch(uint64_t a1)
{
  result = qword_1002D1458;
  if (!qword_1002D1458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100120B5C(uint64_t a1)
{
  sub_100120C28();
  if (v1 <= 0x3F)
  {
    sub_100120C8C();
    if (v2 <= 0x3F)
    {
      sub_100120CDC(319);
      if (v3 <= 0x3F)
      {
        sub_100120D40(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100120C28()
{
  result = qword_1002D1B30;
  if (!qword_1002D1B30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1002D1B30);
  }

  return result;
}

void sub_100120C8C()
{
  if (!qword_1002D1468)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D1468);
    }
  }
}

void sub_100120CDC(uint64_t a1)
{
  if (!qword_1002D1470)
  {
    sub_1000C7784(&qword_1002D1478, &qword_100245CB0);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1002D1470);
    }
  }
}

void sub_100120D40(uint64_t a1)
{
  if (!qword_1002D1480)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1002D1480);
    }
  }
}

uint64_t sub_100120DB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  if (!a3)
  {

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
    Image.init(systemName:)();
    goto LABEL_5;
  }

  if (a3 == 1)
  {

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
    Image.init(_:bundle:)();
LABEL_5:
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
    LocalizedStringKey.init(stringInterpolation:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  sub_100028710();

  return Text.init<A>(_:)();
}

uint64_t sub_100120F28@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C773C(&unk_1002D1BF0, &unk_1002457D0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RCSegmentedSwitch(0);
  sub_10000B46C(v1 + *(v10 + 36), v9, &unk_1002D1BF0, &unk_1002457D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
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

uint64_t sub_100121130()
{
  v1 = v0;
  v2 = type metadata accessor for RCSegmentedSwitch(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for NamedCoordinateSpace();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DragGesture();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = 0x656C7573706163;
  v13[1] = 0xE700000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  sub_100124078(v1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1001240DC(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1001251D0(&qword_1002D15D8, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_1001251D0(&qword_1002D15E0, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  Gesture<>.onChanged(_:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100121414(uint64_t a1, void *a2)
{
  v3 = a2[9];
  v9[0] = a2[8];
  v9[1] = v3;
  sub_1000C773C(&qword_1002D15E8, &qword_100245820);
  State.wrappedValue.getter();
  sub_1000F2048(sub_1001248EC, v8, v9);

  if ((v10 & 1) == 0)
  {
    v5 = v9[0];
    if (a2[7] != v9[0])
    {
      v6 = a2[3];
      v7 = a2[4];
      sub_10000AACC(a2, v6);
      return (*(v7 + 8))(v5, v6, v7);
    }
  }

  return result;
}

BOOL sub_1001214F8(double *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  DragGesture.Value.location.getter();
  v8.x = v5;
  v8.y = v6;
  v9.origin.x = v1;
  v9.origin.y = v2;
  v9.size.width = v3;
  v9.size.height = v4;
  return CGRectContainsPoint(v9, v8);
}

uint64_t sub_100121558(uint64_t a1)
{
  if (*(*(v1 + 40) + 16) > a1)
  {
    if (a1 == 1)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v2 = Text.init(_:tableName:bundle:comment:)();
      v4 = v11;
      v6 = v12;
      LocalizedStringKey.init(stringLiteral:)();
      v7 = Text.init(_:tableName:bundle:comment:)();
      if (*(v1 + 56) != 1)
      {
        goto LABEL_5;
      }

LABEL_8:
      v13 = v6 & 1;
      v14 = v7;
      sub_100008020(v2, v4, v13);

      return v14;
    }

    if (!a1)
    {
      LocalizedStringKey.init(stringLiteral:)();
      v2 = Text.init(_:tableName:bundle:comment:)();
      v4 = v3;
      v6 = v5;
      LocalizedStringKey.init(stringLiteral:)();
      v7 = Text.init(_:tableName:bundle:comment:)();
      if (*(v1 + 56))
      {
LABEL_5:
        sub_100008020(v7, v8, v9 & 1);

        return v2;
      }

      goto LABEL_8;
    }
  }

  LocalizedStringKey.init(stringLiteral:)();
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t sub_1001217D0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v20 = type metadata accessor for EnvironmentValues();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C773C(&unk_1002D1BF0, &unk_1002457D0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for ColorScheme();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for RCSegmentedSwitch(0) + 36);
  v21 = v1;
  sub_10000B46C(v1 + v12, v7, &unk_1002D1BF0, &unk_1002457D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v20);
  }

  if ((*(v9 + 88))(v11, v8) == enum case for ColorScheme.dark(_:))
  {
    if (*(v21 + 48) == 1)
    {
      v14 = type metadata accessor for Material();
      return (*(*(v14 - 8) + 56))(v22, 1, 1, v14);
    }

    else
    {
      v17 = v22;
      static Material.ultraThin.getter();
      v18 = type metadata accessor for Material();
      return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    }
  }

  else
  {
    v16 = type metadata accessor for Material();
    (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100121B58()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100120F28(v3);
  v4 = (*(v1 + 88))(v3, v0);
  v5 = enum case for ColorScheme.dark(_:);
  v6 = objc_opt_self();
  if (v4 == v5)
  {
    v7 = [v6 quaternarySystemFillColor];
    Color.init(_:)();
    v8 = Color.opacity(_:)();
  }

  else
  {
    v9 = [v6 tertiarySystemFillColor];
    Color.init(_:)();
    v8 = Color.opacity(_:)();

    (*(v1 + 8))(v3, v0);
  }

  return v8;
}

uint64_t sub_100121CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v70 = v5;
  v71 = v6;
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RCSegmentedSwitch(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C773C(&qword_1002D1550, &qword_1002457F8);
  v66 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v16 = sub_1000C773C(&qword_1002D1610, &qword_100245848);
  v17 = *(v16 - 8);
  v68 = v16;
  v69 = v17;
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  v67 = sub_1000C773C(&qword_1002D1548, &qword_1002457F0);
  __chkstk_darwin(v67);
  v64 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v65 = &v56 - v22;
  __chkstk_darwin(v23);
  v60 = &v56 - v24;
  v59 = sub_1000C773C(&qword_1002D1538, &qword_1002457E8);
  __chkstk_darwin(v59);
  v61 = &v56 - v25;
  sub_100124078(v3, v12);
  v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v27 = (v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = *(v10 + 80);
  v28 = swift_allocObject();
  v57 = v26;
  v62 = v12;
  sub_1001240DC(v12, v28 + v26);
  v58 = v27;
  *(v28 + v27) = a1;
  v72 = v3;
  v73 = a1;
  sub_1000C773C(&qword_1002D1618, &qword_100245850);
  sub_100124A40();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v29 = sub_100008034(&qword_1002D1558, &qword_1002D1550, &qword_1002457F8, &protocol conformance descriptor for Button<A>);
  v30 = sub_1001251D0(&qword_1002D1560, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v31 = v70;
  View.buttonStyle<A>(_:)();
  (*(v71 + 8))(v8, v31);
  (*(v66 + 8))(v15, v13);
  LODWORD(v8) = *(v3 + 48);
  v74 = v13;
  v75 = v31;
  v76 = v29;
  v77 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v64;
  v33 = v68;
  View.accessibilityHidden(_:)();
  (*(v69 + 8))(v19, v33);
  v34 = *(v3 + 40);
  v35 = *(v34 + 16) - 1;
  LODWORD(v70) = v8;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v36 = a1;
  }

  if (v35 == a1)
  {
    v37 = v36;
  }

  else
  {
    v37 = a1;
  }

  v71 = v3;
  v38 = sub_100121558(v37);
  v40 = v39;
  v42 = v41;
  v43 = v65;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_100008020(v38, v40, v42 & 1);

  result = sub_100003CBC(v32, &qword_1002D1548, &qword_1002457F0);
  if (__OFSUB__(*(v34 + 16), a1))
  {
    __break(1u);
  }

  else
  {
    v45 = v60;
    ModifiedContent<>.accessibilitySortPriority(_:)();
    sub_100003CBC(v43, &qword_1002D1548, &qword_1002457F0);
    v46 = static Alignment.center.getter();
    v48 = v47;
    v49 = v62;
    sub_100124078(v71, v62);
    v50 = v58;
    v51 = swift_allocObject();
    sub_1001240DC(v49, v51 + v57);
    *(v51 + v50) = a1;
    v52 = v61;
    sub_10001DBEC(v45, v61, &qword_1002D1548, &qword_1002457F0);
    v53 = (v52 + *(v59 + 36));
    *v53 = sub_100124F44;
    v53[1] = v51;
    v53[2] = v46;
    v53[3] = v48;
    if ((*(v34 + 16) - 1 == a1) | v70 & 1)
    {
      v54 = 1.0;
    }

    else
    {
      v54 = 0.0;
    }

    v55 = v63;
    sub_10001DBEC(v52, v63, &qword_1002D1538, &qword_1002457E8);
    result = sub_1000C773C(&qword_1002D1510, &qword_1002457E0);
    *(v55 + *(result + 36)) = v54;
  }

  return result;
}

void sub_100122408(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = sub_1000C773C(&qword_1002D1668, &qword_100245878);
  __chkstk_darwin(v87);
  v7 = &v82 - v6;
  v8 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v90 = sub_1000C773C(&qword_1002D16B0, &qword_1002458A0);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v82 - v9;
  v86 = sub_1000C773C(&qword_1002D1660, &qword_100245870);
  __chkstk_darwin(v86);
  v92 = &v82 - v10;
  v91 = sub_1000C773C(&qword_1002D1650, &qword_100245868);
  __chkstk_darwin(v91);
  v12 = &v82 - v11;
  v13 = sub_1000C773C(&qword_1002D1640, &qword_100245860);
  __chkstk_darwin(v13);
  v97 = &v82 - v14;
  v15 = sub_1000C773C(&qword_1002D1630, &qword_100245858);
  __chkstk_darwin(v15);
  v98 = &v82 - v17;
  v18 = *(a1 + 40);
  v19 = *(v18 + 16);
  if (v19 - 1 == a2)
  {
    v20 = *(a1 + 48) ^ 1;
  }

  else
  {
    v20 = 0;
  }

  v99 = a3;
  v96 = v16;
  v95 = v18;
  v94 = v12;
  v93 = v13;
  if ((v20 & 1) != 0 || v19 <= a2)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
    LocalizedStringKey.init(stringInterpolation:)();
    v26 = Text.init(_:tableName:bundle:comment:)();
    v28 = v34;
    v30 = v35;
  }

  else
  {
    if (a2 < 0)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v21 = v18 + 24 * a2;
    v83 = v7;
    v22 = a1;
    v23 = *(v21 + 32);
    v24 = *(v21 + 40);
    v25 = *(v21 + 48);
    sub_100125218(v23, v24, v25);
    v26 = sub_100120DB4(v23, v24, v25);
    v28 = v27;
    v30 = v29;
    v31 = v24;
    a1 = v22;
    v7 = v83;
    sub_100125230(v23, v31, v25);
  }

  v85 = a1;
  v84 = a2;
  LODWORD(v100) = v20;
  if (v20)
  {
    static Font.subheadline.getter();
  }

  else
  {
    static Font.body.getter();
  }

  v36 = Text.font(_:)();
  v38 = v37;
  v40 = v39;

  sub_100008020(v26, v28, v30 & 1);

  if (v100)
  {
    static Font.Weight.heavy.getter();
  }

  else
  {
    static Font.Weight.bold.getter();
  }

  v41 = Text.fontWeight(_:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_100008020(v36, v38, v40 & 1);

  *&v105 = v41;
  *(&v105 + 1) = v43;
  v48 = v45 & 1;
  LOBYTE(v106) = v45 & 1;
  *(&v106 + 1) = v47;
  v49 = enum case for DynamicTypeSize.xxxLarge(_:);
  v50 = type metadata accessor for DynamicTypeSize();
  (*(*(v50 - 8) + 104))(v7, v49, v50);
  sub_1001251D0(&qword_1002D16B8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_100008034(&qword_1002D1670, &qword_1002D1668, &qword_100245878, &protocol conformance descriptor for PartialRangeThrough<A>);
  v51 = v88;
  View.dynamicTypeSize<A>(_:)();
  sub_100003CBC(v7, &qword_1002D1668, &qword_100245878);
  sub_100008020(v41, v43, v48);

  v52 = v92;
  v53 = &v92[*(v86 + 36)];
  v54 = *(sub_1000C773C(&qword_1002D1680, &qword_100245880) + 28);
  v55 = enum case for Image.Scale.large(_:);
  v56 = type metadata accessor for Image.Scale();
  (*(*(v56 - 8) + 104))(v53 + v54, v55, v56);
  *v53 = swift_getKeyPath();
  (*(v89 + 32))(v52, v51, v90);
  v57 = &selRef_systemBlueColor;
  v58 = v85;
  v59 = v84;
  if ((v100 & 1) == 0 && *(v85 + 56) != v84)
  {
    v57 = &selRef_labelColor;
  }

  v60 = [objc_opt_self() *v57];
  v61 = Color.init(_:)();
  v62 = v94;
  sub_10001DBEC(v52, v94, &qword_1002D1660, &qword_100245870);
  *(v62 + *(v91 + 36)) = v61;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v63 = v97;
  sub_10001DBEC(v62, v97, &qword_1002D1650, &qword_100245868);
  v64 = (v63 + *(v93 + 36));
  v65 = v106;
  *v64 = v105;
  v64[1] = v65;
  v64[2] = v107;
  v66 = static Alignment.center.getter();
  v68 = v67;
  sub_100122CF8(v58, &v101);
  v69 = v102;
  v70 = v103;
  v71 = v104;
  v100 = v101;
  v72 = v63;
  v73 = v98;
  sub_10001DBEC(v72, v98, &qword_1002D1640, &qword_100245860);
  v74 = v73 + *(v96 + 36);
  *v74 = v100;
  *(v74 + 16) = v69;
  *(v74 + 17) = v70;
  *(v74 + 18) = v71;
  *(v74 + 24) = v66;
  *(v74 + 32) = v68;
  v75 = v99;
  if (*(v95 + 16) - 1 != v59 && *(v58 + 48) != 1 || (v76 = 1.0, *(v58 + 56) != v59) && (*(v58 + 48) & 1) != 0)
  {
    v76 = 0.631578947;
  }

  static UnitPoint.center.getter();
  v78 = v77;
  v80 = v79;
  sub_10001DBEC(v73, v75, &qword_1002D1630, &qword_100245858);
  v81 = (v75 + *(sub_1000C773C(&qword_1002D1618, &qword_100245850) + 36));
  *v81 = v76;
  v81[1] = v76;
  *(v81 + 2) = v78;
  *(v81 + 3) = v80;
}

uint64_t sub_100122CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Material();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_1000C773C(&qword_1002D15F0, &qword_100245828);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for ColorScheme();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_100120F28(v19);
  if ((*(v17 + 88))(v19, v16) == enum case for ColorScheme.dark(_:))
  {
    v20 = [objc_opt_self() systemFillColor];
    v21 = Color.init(_:)();
  }

  else
  {
    v22 = v12;
    v23 = v15;
    v24 = v4;
    v25 = v5;
    v26 = a2;
    v27 = v9;
    v28 = static Color.white.getter();
    (*(v17 + 8))(v19, v16);
    v21 = v28;
    v9 = v27;
    a2 = v26;
    v5 = v25;
    v4 = v24;
    v15 = v23;
    v12 = v22;
  }

  sub_1001217D0(v15);
  sub_10000B46C(v15, v12, &qword_1002D15F0, &qword_100245828);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_100003CBC(v15, &qword_1002D15F0, &qword_100245828);
    v34 = static Color.clear.getter();
    v29 = AnyShapeStyle.init<A>(_:)();
  }

  else
  {
    (*(v5 + 32))(v9, v12, v4);
    (*(v5 + 16))(v32, v9, v4);
    v29 = AnyShapeStyle.init<A>(_:)();
    (*(v5 + 8))(v9, v4);
    sub_100003CBC(v15, &qword_1002D15F0, &qword_100245828);
  }

  result = static Edge.Set.all.getter();
  *a2 = v21;
  *(a2 + 8) = v29;
  *(a2 + 16) = result;
  *(a2 + 17) = 256;
  return result;
}

uint64_t sub_1001230B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for RCSegmentedSwitch(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NamedCoordinateSpace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0x656C7573706163;
  v37 = 0xE700000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v10 + 8))(v12, v9);
  v36 = static Color.clear.getter();
  v33 = a1;
  v35 = *(a1 + 48);
  sub_100124078(a1, v8);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1001240DC(v8, v24 + v21);
  *(v24 + v22) = a2;
  v25 = a2;
  v26 = (v24 + v23);
  *v26 = v14;
  v26[1] = v16;
  v26[2] = v18;
  v26[3] = v20;
  v27 = v34;
  View.onChange<A>(of:initial:_:)();

  sub_100124078(v33, v8);
  v28 = swift_allocObject();
  sub_1001240DC(v8, v28 + v21);
  *(v28 + v22) = v25;
  v29 = (v28 + v23);
  *v29 = v14;
  v29[1] = v16;
  v29[2] = v18;
  v29[3] = v20;
  result = sub_1000C773C(&qword_1002D16A8, &qword_100245898);
  v31 = (v27 + *(result + 36));
  *v31 = sub_100125138;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  return result;
}

uint64_t sub_1001233C0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{

  sub_1000C773C(&qword_1002D15E8, &qword_100245820);
  State.wrappedValue.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000CB770(a2, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
  State.wrappedValue.setter();
}

uint64_t sub_1001234B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = sub_1000C773C(&qword_1002D14C0, &qword_100245770);
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v47 - v4;
  v5 = type metadata accessor for RCSegmentedSwitch(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_1000C773C(&qword_1002D14C8, &qword_100245778);
  __chkstk_darwin(v8);
  v10 = (&v47 - v9);
  v47 = sub_1000C773C(&qword_1002D14D0, &qword_100245780);
  __chkstk_darwin(v47);
  v12 = &v47 - v11;
  v51 = sub_1000C773C(&qword_1002D14D8, &qword_100245788);
  __chkstk_darwin(v51);
  v14 = &v47 - v13;
  v15 = sub_1000C773C(&qword_1002D14E0, &qword_100245790);
  v56 = *(v15 - 8);
  v57 = v15;
  __chkstk_darwin(v15);
  v53 = &v47 - v16;
  v50 = sub_1000C773C(&qword_1002D14E8, &qword_100245798);
  __chkstk_darwin(v50);
  v55 = &v47 - v17;
  v54 = sub_1000C773C(&qword_1002D14F0, &qword_1002457A0);
  __chkstk_darwin(v54);
  v52 = &v47 - v18;
  v49 = sub_1000C773C(&qword_1002D14F8, &unk_1002457A8);
  __chkstk_darwin(v49);
  v48 = &v47 - v19;
  v20 = *(v2 + 48);
  if (v20 == 1)
  {
    v63 = static VerticalAlignment.center.getter();
    v64 = 0x4000000000000000;
    v65 = 0;
    sub_1001246F4();
  }

  else
  {
    v63 = static Alignment.center.getter();
    v64 = v21;
    sub_100124024();
  }

  *v10 = AnyLayout.init<A>(_:)();
  v22 = *(*(v2 + 40) + 16);
  v63 = 0;
  v64 = v22;
  swift_getKeyPath();
  v61 = v2;
  sub_100124078(v2, &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  sub_1001240DC(&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  sub_1000C773C(&qword_1002D1508, &qword_10024C430);
  sub_1000C773C(&qword_1002D1510, &qword_1002457E0);
  sub_10001E2F0();
  sub_1001241B4();
  ForEach<>.init(_:id:content:)();
  if (v20)
  {
    v25 = static Color.clear.getter();
  }

  else
  {
    static Color.black.getter();
    v25 = Color.opacity(_:)();
  }

  sub_10001DBEC(v10, v12, &qword_1002D14C8, &qword_100245778);
  v26 = &v12[*(v47 + 36)];
  *v26 = v25;
  *(v26 + 8) = xmmword_100245610;
  *(v26 + 3) = 0x3FF0000000000000;
  v27 = static Alignment.center.getter();
  v29 = v28;
  v30 = &v14[*(v51 + 36)];
  v31 = v61;
  sub_100123C28(v61, v30);
  v32 = (v30 + *(sub_1000C773C(&qword_1002D1580, &qword_100245808) + 36));
  *v32 = v27;
  v32[1] = v29;
  sub_10001DBEC(v12, v14, &qword_1002D14D0, &qword_100245780);
  v33 = v58;
  sub_100121130();
  static GestureMask.all.getter();
  sub_100124474();
  sub_100008034(&qword_1002D15C8, &qword_1002D14C0, &qword_100245770, &protocol conformance descriptor for _ChangedGesture<A>);
  v34 = v53;
  v35 = v60;
  View.highPriorityGesture<A>(_:including:)();
  (*(v59 + 8))(v33, v35);
  sub_100003CBC(v14, &qword_1002D14D8, &qword_100245788);
  if (v20)
  {
    v36 = static Animation.default.getter();
  }

  else
  {
    v36 = 0;
  }

  v37 = *(v31 + 56);
  v38 = v55;
  (*(v56 + 32))(v55, v34, v57);
  v39 = (v38 + *(v50 + 36));
  *v39 = v36;
  v39[1] = v37;
  static Animation.default.getter();
  v40 = Animation.speed(_:)();

  v41 = v52;
  sub_10001DBEC(v38, v52, &qword_1002D14E8, &qword_100245798);
  v42 = v41 + *(v54 + 36);
  *v42 = v40;
  *(v42 + 8) = v20;
  v43 = v41;
  v44 = v48;
  sub_10001DBEC(v43, v48, &qword_1002D14F0, &qword_1002457A0);
  v45 = (v44 + *(v49 + 36));
  *v45 = 0x656C7573706163;
  v45[1] = 0xE700000000000000;
  return sub_10001DBEC(v44, v62, &qword_1002D14F8, &unk_1002457A8);
}

uint64_t sub_100123C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37[0] = a2;
  v3 = type metadata accessor for Material();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v10 = sub_1000C773C(&qword_1002D15F0, &qword_100245828);
  __chkstk_darwin(v10 - 8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = sub_1000C773C(&qword_1002D15F8, &qword_100245830);
  __chkstk_darwin(v16);
  v18 = v37 - v17;
  v19 = sub_100121B58();
  if (*(a1 + 48) == 1)
  {
    static Material.ultraThin.getter();
    (*(v4 + 56))(v15, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v15, 1, 1, v3);
  }

  sub_10000B46C(v15, v12, &qword_1002D15F0, &qword_100245828);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    sub_100003CBC(v15, &qword_1002D15F0, &qword_100245828);
    v37[1] = static Color.clear.getter();
    v20 = AnyShapeStyle.init<A>(_:)();
  }

  else
  {
    (*(v4 + 32))(v9, v12, v3);
    (*(v4 + 16))(v6, v9, v3);
    v20 = AnyShapeStyle.init<A>(_:)();
    (*(v4 + 8))(v9, v3);
    sub_100003CBC(v15, &qword_1002D15F0, &qword_100245828);
  }

  v21 = static Edge.Set.all.getter();
  v22 = &v18[*(v16 + 36)];
  v23 = enum case for RoundedCornerStyle.circular(_:);
  v24 = type metadata accessor for RoundedCornerStyle();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  *&v22[*(sub_1000C773C(&qword_1002D1600, &qword_100245838) + 36)] = 256;
  *v18 = v19;
  *(v18 + 1) = v20;
  v18[16] = v21;
  v25 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v37[0];
  sub_10012490C(v18, v37[0]);
  result = sub_1000C773C(&qword_1002D1608, &qword_100245840);
  v36 = v34 + *(result + 36);
  *v36 = v25;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  return result;
}

unint64_t sub_100124024()
{
  result = qword_1002D1500;
  if (!qword_1002D1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1500);
  }

  return result;
}

uint64_t sub_100124078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSegmentedSwitch(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001240DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSegmentedSwitch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001241B4()
{
  result = qword_1002D1528;
  if (!qword_1002D1528)
  {
    sub_1000C7784(&qword_1002D1510, &qword_1002457E0);
    sub_100124240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1528);
  }

  return result;
}

unint64_t sub_100124240()
{
  result = qword_1002D1530;
  if (!qword_1002D1530)
  {
    sub_1000C7784(&qword_1002D1538, &qword_1002457E8);
    sub_1001242F8();
    sub_100008034(&qword_1002D1570, &qword_1002D1578, &qword_100245800, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1530);
  }

  return result;
}

unint64_t sub_1001242F8()
{
  result = qword_1002D1540;
  if (!qword_1002D1540)
  {
    sub_1000C7784(&qword_1002D1548, &qword_1002457F0);
    sub_1000C7784(&qword_1002D1550, &qword_1002457F8);
    type metadata accessor for PlainButtonStyle();
    sub_100008034(&qword_1002D1558, &qword_1002D1550, &qword_1002457F8, &protocol conformance descriptor for Button<A>);
    sub_1001251D0(&qword_1002D1560, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1001251D0(&qword_1002D1568, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1540);
  }

  return result;
}

unint64_t sub_100124474()
{
  result = qword_1002D1588;
  if (!qword_1002D1588)
  {
    sub_1000C7784(&qword_1002D14D8, &qword_100245788);
    sub_10012452C();
    sub_100008034(&qword_1002D15C0, &qword_1002D1580, &qword_100245808, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1588);
  }

  return result;
}

unint64_t sub_10012452C()
{
  result = qword_1002D1590;
  if (!qword_1002D1590)
  {
    sub_1000C7784(&qword_1002D14D0, &qword_100245780);
    sub_1001245B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1590);
  }

  return result;
}

unint64_t sub_1001245B8()
{
  result = qword_1002D1598;
  if (!qword_1002D1598)
  {
    sub_1000C7784(&qword_1002D14C8, &qword_100245778);
    sub_100008034(&qword_1002D15A0, &qword_1002D15A8, &qword_100245810, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100124670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1598);
  }

  return result;
}

unint64_t sub_100124670()
{
  result = qword_1002D15B0;
  if (!qword_1002D15B0)
  {
    sub_1000C7784(&qword_1002D15B8, &qword_100245818);
    sub_1001241B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D15B0);
  }

  return result;
}

unint64_t sub_1001246F4()
{
  result = qword_1002D15D0;
  if (!qword_1002D15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D15D0);
  }

  return result;
}

uint64_t sub_100124748()
{
  v1 = (type metadata accessor for RCSegmentedSwitch(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_100014B64((v0 + v3));

  v5 = v1[11];
  sub_1000C773C(&unk_1002D1BF0, &unk_1002457D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10012487C(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSegmentedSwitch(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100121414(a1, v4);
}

uint64_t sub_10012490C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D15F8, &qword_100245830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012497C()
{
  v1 = *(type metadata accessor for RCSegmentedSwitch(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v0 + v2 + 24);
  v5 = *(v0 + v2 + 32);
  sub_10000AACC((v0 + v2), v4);
  return (*(v5 + 8))(v3, v4, v5);
}

unint64_t sub_100124A40()
{
  result = qword_1002D1620;
  if (!qword_1002D1620)
  {
    sub_1000C7784(&qword_1002D1618, &qword_100245850);
    sub_100124ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1620);
  }

  return result;
}

unint64_t sub_100124ACC()
{
  result = qword_1002D1628;
  if (!qword_1002D1628)
  {
    sub_1000C7784(&qword_1002D1630, &qword_100245858);
    sub_100124B84();
    sub_100008034(&qword_1002D1698, &qword_1002D16A0, &qword_100245890, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1628);
  }

  return result;
}

unint64_t sub_100124B84()
{
  result = qword_1002D1638;
  if (!qword_1002D1638)
  {
    sub_1000C7784(&qword_1002D1640, &qword_100245860);
    sub_100124C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1638);
  }

  return result;
}

unint64_t sub_100124C10()
{
  result = qword_1002D1648;
  if (!qword_1002D1648)
  {
    sub_1000C7784(&qword_1002D1650, &qword_100245868);
    sub_100124CC8();
    sub_100008034(&qword_1002D1688, &qword_1002D1690, &qword_100245888, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1648);
  }

  return result;
}

unint64_t sub_100124CC8()
{
  result = qword_1002D1658;
  if (!qword_1002D1658)
  {
    sub_1000C7784(&qword_1002D1660, &qword_100245870);
    sub_1000C7784(&qword_1002D1668, &qword_100245878);
    sub_100008034(&qword_1002D1670, &qword_1002D1668, &qword_100245878, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    sub_100008034(&qword_1002D1678, &qword_1002D1680, &qword_100245880, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D1658);
  }

  return result;
}

uint64_t sub_100124E04()
{
  v1 = (type metadata accessor for RCSegmentedSwitch(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_100014B64((v0 + v3));

  v5 = v1[11];
  sub_1000C773C(&unk_1002D1BF0, &unk_1002457D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100124F44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSegmentedSwitch(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001230B4(v1 + v4, v5, a1);
}

uint64_t sub_100124FF0()
{
  v1 = (type metadata accessor for RCSegmentedSwitch(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_100014B64((v0 + v3));

  v5 = v1[11];
  sub_1000C773C(&unk_1002D1BF0, &unk_1002457D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32, v2 | 7);
}

uint64_t sub_10012513C()
{
  v1 = *(type metadata accessor for RCSegmentedSwitch(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001233C0(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 24));
}

uint64_t sub_1001251D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100125218(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100125230(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_100125248()
{
  result = qword_1002D16C0;
  if (!qword_1002D16C0)
  {
    sub_1000C7784(&qword_1002D16C8, &qword_1002458D8);
    sub_1001252D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D16C0);
  }

  return result;
}

unint64_t sub_1001252D4()
{
  result = qword_1002D16D0;
  if (!qword_1002D16D0)
  {
    sub_1000C7784(&qword_1002D14F8, &unk_1002457A8);
    sub_10012538C();
    sub_100008034(&qword_1002D1708, &unk_1002D1710, &unk_1002458F0, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D16D0);
  }

  return result;
}

unint64_t sub_10012538C()
{
  result = qword_1002D16D8;
  if (!qword_1002D16D8)
  {
    sub_1000C7784(&qword_1002D14F0, &qword_1002457A0);
    sub_100125444();
    sub_100008034(&qword_1002D16F8, &qword_1002D1700, &qword_1002458E8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D16D8);
  }

  return result;
}

unint64_t sub_100125444()
{
  result = qword_1002D16E0;
  if (!qword_1002D16E0)
  {
    sub_1000C7784(&qword_1002D14E8, &qword_100245798);
    sub_1000C7784(&qword_1002D14D8, &qword_100245788);
    sub_1000C7784(&qword_1002D14C0, &qword_100245770);
    sub_100124474();
    sub_100008034(&qword_1002D15C8, &qword_1002D14C0, &qword_100245770, &protocol conformance descriptor for _ChangedGesture<A>);
    swift_getOpaqueTypeConformance2();
    sub_100008034(&qword_1002D16E8, &qword_1002D16F0, &qword_1002458E0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D16E0);
  }

  return result;
}

uint64_t sub_100125704()
{
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_100125774@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1001257EC(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100129DB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1001258C0()
{
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

uint64_t sub_100125930@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1001259A8(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100129DB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100125A7C()
{
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_100125AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_100125B64(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100129DB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100125C44()
{
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 33);
}

uint64_t sub_100125CB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_100125D2C(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100129DB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100125E0C()
{
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 34);
}

uint64_t sub_100125E7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 34);
  return result;
}

uint64_t sub_100125EF4(uint64_t result)
{
  if (*(v1 + 34) == (result & 1))
  {
    *(v1 + 34) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100129DB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100125FD4()
{
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t sub_100126048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1001260C8(uint64_t result, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 40) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = result;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100129DB0();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001261CC()
{
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 49);
}

uint64_t sub_10012623C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1001262B4(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100129DB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100126394()
{
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100126408@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_100126484(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100129DB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1000067AC(0, &qword_1002D1C18, &off_100286BF0);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1001265FC()
{
  swift_unknownObjectWeakDestroy();
  v1 = OBJC_IVAR____TtCC10VoiceMemos34_RCMultipleWaveformsViewController28RCMultipleWaveformsViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

char *sub_1001266A0(void *a1, void *a2)
{
  v5 = sub_1000C773C(&qword_1002D1C20, &qword_100245D20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v35 = type metadata accessor for RCMultipleWaveformsView(0);
  __chkstk_darwin(v35);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1002D1758) = 0;
  v11 = type metadata accessor for RCSegmentedSwitchController();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v38 = v2;
  v13 = (v2 + qword_1002D1750);
  v13[3] = v11;
  v13[4] = &off_10028FF60;
  *v13 = v12;
  v14 = a2;
  v15 = a1;
  v16 = [a1 waveformViewControllers];
  sub_1000067AC(0, &qword_1002D1C28, off_100286BE8);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = OBJC_IVAR____TtC10VoiceMemos30RCRecordingTrackInfoRepository_trackInfoSubject;
  CurrentValueSubject.value.getter();
  v20 = v42;
  type metadata accessor for RCTrackState(0);
  if (v20 >= 3)
  {
    v42 = v20;
  }

  else
  {
    v33 = v18;
    v34 = v19;
    v36 = v14;
    v37 = v10;
    v39 = v8;
    v40 = v6;
    v41 = v5;
    v21 = qword_100245E50[v20];
    CurrentValueSubject.value.getter();
    if (v42 < 3)
    {
      v22 = 6u >> (v42 & 7);
      type metadata accessor for _RCMultipleWaveformsViewController.RCMultipleWaveformsViewModel(0);
      v23 = swift_allocObject();
      *(v23 + 40) = 0;
      *(v23 + 48) = 1;
      swift_unknownObjectWeakInit();
      v24 = v15;
      ObservationRegistrar.init()();
      *(v23 + 16) = v33;
      *(v23 + 24) = v21;
      *(v23 + 32) = v22 & 1;
      *(v23 + 33) = 257;
      *(v23 + 40) = 0;
      *(v23 + 48) = 1;
      sub_100126484(v15);
      v25 = v37;
      *(v38 + qword_1002D1748) = v23;
      sub_1000CC430(v13, &v25[*(v35 + 20)]);
      sub_100129DB0();

      Bindable<A>.init(wrappedValue:)();
      v26 = UIHostingController.init(rootView:)();
      v27 = v24;
      [v24 setDelegate:v26];
      UIHostingController.safeAreaRegions.setter();
      v28 = v36;
      v42 = *&v36[v34];
      sub_1000C773C(&qword_1002D1C30, &qword_100245D28);
      sub_100008034(&qword_1002D1C38, &qword_1002D1C30, &qword_100245D28, &unk_10024E118);
      sub_10012A2BC();
      v29 = v39;
      Publisher<>.removeDuplicates()();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100008034(&qword_1002D1C48, &qword_1002D1C20, &qword_100245D20, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
      v30 = v41;
      v31 = Publisher<>.sink(receiveValue:)();

      (*(v40 + 8))(v29, v30);
      *&v26[qword_1002D1758] = v31;

      return v26;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_100126B5C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100126C38(v2, v3, v4);
  }
}

void sub_100126BD0(uint64_t a1)
{
  *(a1 + qword_1002D1758) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100126C38(unint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + qword_1002D1748);
  type metadata accessor for RCTrackState(0);
  if (a1 >= 3)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    if (*(v7 + 24) != qword_100245E50[a1])
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100129DB0();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (((a1 != 0) ^ *(v7 + 32)))
    {
      v9 = swift_getKeyPath();
      __chkstk_darwin(v9);
      sub_100129DB0();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v7 + 32) = a1 != 0;
    }

    return sub_1001260C8(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100126E8C()
{

  sub_100014B64((v0 + qword_1002D1750));
}

id sub_100126EF8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100126F30(uint64_t a1)
{

  sub_100014B64((a1 + qword_1002D1750));
}

uint64_t sub_100126FBC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100127080(char *a1)
{
  v2 = *&a1[qword_1002D1748];
  swift_getKeyPath();
  sub_100129DB0();
  v3 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + 33);

  return v4;
}

void sub_100127118(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_10012716C(a3);
}

uint64_t sub_10012716C(uint64_t result)
{
  v2 = *(v1 + qword_1002D1748);
  if (*(v2 + 33) == (result & 1))
  {
    *(v2 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100129DB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100127258(char *a1)
{
  v2 = *&a1[qword_1002D1748];
  swift_getKeyPath();
  sub_100129DB0();
  v3 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + 34);

  return v4;
}

void sub_1001272F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_100127344(a3);
}

uint64_t sub_100127344(uint64_t result)
{
  v2 = *(v1 + qword_1002D1748);
  if (*(v2 + 34) == (result & 1))
  {
    *(v2 + 34) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100129DB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100127430(char *a1)
{
  v2 = *&a1[qword_1002D1748];
  swift_getKeyPath();
  sub_100129DB0();
  v3 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + 49);

  return v4;
}

void sub_1001274C8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_10012751C(v3);
}

uint64_t sub_10012751C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + qword_1002D1748);
  swift_getKeyPath();
  sub_100129DB0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + 49) != v2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_10012764C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1001276B4(a3, sub_10012A6B0);
}

uint64_t sub_1001276B4(uint64_t result, uint64_t a2)
{
  if (*(*(v2 + qword_1002D1748) + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100129DB0();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}