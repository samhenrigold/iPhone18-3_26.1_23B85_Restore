uint64_t sub_100385CD8(void *a1)
{
  v2 = sub_10026D814(&qword_1006A76D8, &qword_100582ED8);
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_100009B14(a1, a1[3]);
  sub_1003860A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_100385E0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100385CAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100385E54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000F4A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100385E80(uint64_t a1)
{
  v2 = sub_1003860A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100385EBC(uint64_t a1)
{
  v2 = sub_1003860A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100385EF8()
{
  if (qword_1006A0AC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1006BA440;

  return v0;
}

uint64_t sub_100385F60()
{
  sub_100385BB8();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100385FFC()
{
  result = qword_1006A76C8;
  if (!qword_1006A76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A76C8);
  }

  return result;
}

unint64_t sub_100386054()
{
  result = qword_1006A76D0;
  if (!qword_1006A76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A76D0);
  }

  return result;
}

unint64_t sub_1003860A8()
{
  result = qword_1006A76E0;
  if (!qword_1006A76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A76E0);
  }

  return result;
}

uint64_t type metadata accessor for RecordResponseMessage(uint64_t a1)
{
  result = qword_1006A7740;
  if (!qword_1006A7740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100386170(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1003861F8()
{
  result = qword_1006A7778;
  if (!qword_1006A7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7778);
  }

  return result;
}

unint64_t sub_100386250()
{
  result = qword_1006A7780;
  if (!qword_1006A7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7780);
  }

  return result;
}

unint64_t sub_1003862A4()
{
  result = qword_1006A7790;
  if (!qword_1006A7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7790);
  }

  return result;
}

uint64_t sub_1003862F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecordResponseMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10038641C()
{
  result = qword_1006A77B0;
  if (!qword_1006A77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A77B0);
  }

  return result;
}

unint64_t sub_100386474()
{
  result = qword_1006A77B8;
  if (!qword_1006A77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A77B8);
  }

  return result;
}

unint64_t sub_1003864CC()
{
  result = qword_1006A77C0;
  if (!qword_1006A77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A77C0);
  }

  return result;
}

uint64_t AsyncSerialQueue.init(priority:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v32 = a3;
  v4 = sub_10026D814(&qword_1006A3FB8, &qword_100583110);
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v33 = sub_10026D814(&qword_1006A77C8, &qword_100583118);
  sub_100007FEC();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v14);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = sub_10026D814(&qword_1006A77D0, &qword_100583120);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v31 - v22;
  v24 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_10000AF74(v23, 1, 1, v24);
  v34 = v6;
  v35 = a2;
  (*(v6 + 16))(v9, a2, v4);
  v37 = v23;
  sub_10026D814(&unk_1006A2820, &qword_10057ED60);
  AsyncStream.init(_:bufferingPolicy:_:)();
  sub_100335188(v23, v21, &qword_1006A77D0, &qword_100583120);
  result = sub_100015468(v21, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v24 - 8) + 32))(v32, v21, v24);
    v26 = v31;
    v27 = v33;
    (*(v11 + 16))(v31, v17, v33);
    v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    (*(v11 + 32))(v29 + v28, v26, v27);
    v30 = v36;
    sub_1003873C8(0, 0, v36, &unk_100583130, v29);

    (*(v34 + 8))(v35, v4);
    sub_1000099A4(v30, &qword_1006A5310, &qword_10057D580);
    (*(v11 + 8))(v17, v27);
    return sub_1000099A4(v23, &qword_1006A77D0, &qword_100583120);
  }

  return result;
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1000080A0();
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1000080A0();
}

uint64_t sub_100386904()
{
  sub_100006810();
  v0 = swift_task_alloc();
  sub_100035B84(v0);
  v1 = sub_100015DF0();
  v2 = sub_100016024(v1);
  *v2 = v3;
  v2[1] = sub_1003869B8;
  sub_1000113FC();

  return v5();
}

uint64_t sub_1003869B8()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  sub_100009EF4();

  return v3();
}

uint64_t sub_100386AD0()
{
  sub_100006810();
  v0 = swift_task_alloc();
  sub_100035B84(v0);
  v1 = sub_100015DF0();
  v2 = sub_100016024(v1);
  *v2 = v3;
  v2[1] = sub_100386B84;
  sub_1000113FC();

  return v5();
}

uint64_t sub_100386B84()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_100007BBC();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {

    sub_100009EF4();

    return v9();
  }
}

uint64_t sub_100386CA8()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

uint64_t sub_100386D04(uint64_t a1, uint64_t a2)
{
  sub_1000099A4(a2, &qword_1006A77D0, &qword_100583120);
  v4 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_10000AF74(a2, 0, 1, v4);
}

uint64_t sub_100386DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_10026D814(&qword_1006A7868, &qword_1005831D8);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100386E88, 0, 0);
}

uint64_t sub_100386E88()
{
  sub_100006810();
  sub_10026D814(&qword_1006A77C8, &qword_100583118);
  AsyncStream.makeAsyncIterator()();
  v0 = swift_task_alloc();
  v1 = sub_100016024(v0);
  *v1 = v2;
  sub_100017284(v1);
  sub_1000113FC();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_100386F28()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  sub_100007BBC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100387010()
{
  sub_100006810();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100387158;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    sub_100009EF4();

    return v4();
  }
}

uint64_t sub_100387158()
{
  v1 = *v0;
  v2 = *v0;
  sub_100008060();
  *v3 = v2;
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);
  v6 = *v0;
  *v3 = *v0;

  sub_1000051F8(v5, v4);
  v7 = swift_task_alloc();
  *(v2 + 64) = v7;
  *v7 = v6;
  sub_100017284(v7);
  sub_1000113FC();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_1003872D4(uint64_t a1)
{
  v3 = *(sub_10026D814(&qword_1006A77C8, &qword_100583118) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  v8 = sub_10000A58C(v7);
  *v8 = v9;
  v8[1] = sub_100035FE0;

  return sub_100386DBC(a1, v5, v6, v1 + v4);
}

uint64_t sub_1003873C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100335188(a3, v24 - v10, &qword_1006A5310, &qword_10057D580);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100015468(v11, 1, v12);

  if (v13 == 1)
  {
    sub_1000099A4(v11, &qword_1006A5310, &qword_10057D580);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
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

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t AsyncSerialQueue.perform(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12[0] = &unk_10057D490;
  v12[1] = v10;

  sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  AsyncStream.Continuation.yield(_:)();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_10038778C()
{
  sub_100006810();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100035FE4;

  return v4();
}

uint64_t sub_1003878D0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1003879F8;

  return v9(v6);
}

uint64_t sub_1003879F8()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  sub_100007BBC();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100387AE0()
{
  sub_100006810();
  sub_100387B48(v0[4], v0[2], v0[3]);

  sub_100009EF4();

  return v1();
}

uint64_t sub_100387B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_resume();
}

uint64_t sub_100387BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_100387C54, v6, v8);
}

uint64_t sub_100387C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10000C698();
  v13 = v12[11];
  v14 = v12[10];
  v12[2] = v12;
  v12[7] = v14;
  v12[3] = sub_100387CF8;
  v15 = swift_continuation_init();
  v13(v15);

  return _swift_continuation_await(v12 + 2, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_100387CF8()
{
  sub_100006810();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;
  sub_100009EF4();

  return v3();
}

uint64_t sub_100387DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[0] = a8;
  v22[1] = a2;
  v13 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  v18 = v22 - v17;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a1;
  v19[4] = a3;
  v19[5] = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = v22[0];
  *(v20 + 24) = v19;
  v22[2] = a9;
  v22[3] = v20;

  sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  AsyncStream.Continuation.yield(_:)();
  return (*(v15 + 8))(v18, v13);
}

uint64_t sub_100387F78(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v6 = swift_task_alloc();
  v4[5] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1003880A0;

  return v9(v6);
}

uint64_t sub_1003880A0()
{
  sub_100006810();
  sub_100005F18();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;
  *(v4 + 56) = v0;

  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1003881A0()
{
  sub_10000C698();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  sub_1003882D8(v2, v3, v1);

  sub_100009EF4();

  return v4();
}

uint64_t sub_100388238()
{
  sub_10000C698();
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[7];
  v3 = sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  sub_100388350((v0 + 2), v1, v2, v3, &protocol self-conformance witness table for Error);

  sub_100009EF4();

  return v4();
}

uint64_t sub_1003882D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_100388350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocError();
  (*(*(a4 - 8) + 32))(v9, a1, a4);

  return _swift_continuation_throwingResumeWithError(a2, v8);
}

uint64_t sub_1003883E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_100388478, v6, v8);
}

uint64_t sub_100388478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10000C698();
  v13 = v12[11];
  v14 = v12[10];
  v12[2] = v12;
  v12[7] = v14;
  v12[3] = sub_10038851C;
  v15 = swift_continuation_init();
  v13(v15);

  return _swift_continuation_await(v12 + 2, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_10038851C()
{
  sub_10000C698();
  sub_100005F18();
  v1 = *v0;
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t type metadata accessor for AsyncSerialQueue(uint64_t a1)
{
  result = qword_1006A7830;
  if (!qword_1006A7830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100388690(uint64_t a1)
{
  sub_10028BCA0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1003886FC()
{
  sub_10000C698();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_10000A58C(v3);
  *v4 = v5;
  v4[1] = sub_1002EE020;

  return v7(v1);
}

uint64_t sub_1003887E8()
{
  sub_10000C698();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000FE3C(v1);

  return sub_100387F78(v2, v3, v4, v5);
}

uint64_t sub_10038887C()
{
  sub_10000C698();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000FE3C(v1);

  return sub_1003878D0(v2, v3, v4, v5);
}

uint64_t sub_100388910()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t sub_100388A20()
{
  v1 = *(v0 + OBJC_IVAR___CSDMomentsNotification_requesterID);

  return v1;
}

id sub_100388A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___CSDMomentsNotification_streamToken] = a1;
  v8 = &v3[OBJC_IVAR___CSDMomentsNotification_requesterID];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

BOOL sub_100388B88(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_100388BB4()
{
  sub_100005EF4();
  v2 = v1;
  v33 = v3;
  v4 = type metadata accessor for CommunicationTrustScoreOptions();
  sub_100007FEC();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v9);
  v11 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v34 = v6;
  v12 = *(v6 + 16);
  v32 = v0;
  v29 = v12;
  v30 = v13;
  v12(v28 - v13, v0, v4);
  v28[1] = sub_10039C2D4(&qword_1006A7BB0);
  dispatch thunk of SetAlgebra.intersection(_:)();
  sub_10039C2D4(&unk_1006A7BB8);
  v31 = v2;
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = sub_10026D814(&qword_1006A7BC0, &qword_100583488);
  sub_100008070();
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v18);
  v21 = v28 - v20;
  v22 = *(v19 + 48);
  *(v28 - v20) = (v14 & 1) == 0;
  if (v14)
  {
    v23 = (*(v34 + 32))(&v21[v22], v11, v4);
  }

  else
  {
    (*(v34 + 8))(v11, v4);
    v24 = &v21[v22];
    v25 = v31;
    v26 = v29;
    v27 = (v29)(v24, v31, v4);
    __chkstk_darwin(v27);
    v26(v28 - v30, v25, v4);
    v23 = dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  __chkstk_darwin(v23);
  sub_10039C310();
  (*(v34 + 32))(v33, v28 + *(v15 + 48) - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_100005EDC();
}

BOOL sub_100388E9C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t (*sub_100388EDC(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = _swiftEmptyArrayStorage;
  v22 = result;
  v23 = a3;
  v21 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    sub_100009AB0(v8, v27);
    v10 = v5(v27);
    if (v3)
    {
      sub_100395FFC(v27);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_10002F0C8(v27, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10039A3C0(0, v9[2] + 1, 1);
        v9 = v28;
      }

      v13 = v9[2];
      v12 = v9[3];
      if (v13 >= v12 >> 1)
      {
        sub_10039A3C0(v12 > 1, v13 + 1, 1);
      }

      v14 = v25;
      v15 = v26;
      v16 = sub_10001BDB8(v24, v25);
      __chkstk_darwin(v16);
      v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v18);
      sub_10039BE6C(v13, v18, &v28, v14, v15);
      result = sub_100395FFC(v24);
      v9 = v28;
      v5 = v22;
      v4 = v23;
      v7 = v21;
    }

    else
    {
      result = sub_100395FFC(v27);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

id sub_1003890FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();

  sub_100006AF0(0, &unk_1006A3C10, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [swift_getObjCClassFromMetadata() categoryWithIdentifier:v6 actions:isa intentIdentifiers:v8 options:a5];

  return v9;
}

void sub_1003891D8(uint64_t a1)
{
  v1 = a1;
  v22 = _swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr);
    sub_10039C15C(&unk_1006A7AE8);
    Set.Iterator.init(_cocoa:)();
    v1 = v21[1];
    v2 = v21[2];
    v3 = v21[3];
    v4 = v21[4];
    v5 = v21[5];
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));

    v4 = 0;
  }

LABEL_7:
  v9 = v4;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr), swift_dynamicCast(), v13 = v21[0], v4 = v9, v12 = v5, !v21[0]))
      {
LABEL_29:
        sub_100022DDC(v1);
        return;
      }

      goto LABEL_17;
    }

    v10 = v9;
    v11 = v5;
    v4 = v9;
    if (!v5)
    {
      break;
    }

LABEL_13:
    v12 = (v11 - 1) & v11;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v13)
    {
      goto LABEL_29;
    }

LABEL_17:
    v14 = [v13 value];
    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v15 = [objc_opt_self() normalizedHandleWithDestinationID:v14];

    if (v15)
    {
      v16 = v15;
      sub_10005104C(v16);
      if (!v17 || (, [v16 type] == 1))
      {

        goto LABEL_24;
      }

      v18 = v16;
      sub_1000245B4(v21, v18, &qword_1006A2640, TUHandle_ptr, &qword_1006A7A50, &qword_1005833A0);

      v19 = v12;
      v20 = [objc_allocWithZone(TUConversationMember) initWithHandle:v18];

      v9 = v4;
      v5 = v19;
      if (v20)
      {
        v5 = v19;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v13;
LABEL_24:

      v9 = v4;
      v5 = v12;
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v11 = v2[v4];
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_100389560(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  String._bridgeToObjectiveC()();
  sub_10039C4B0();
  v5 = [v4 initWithType:a1 value:a2];

  return v5;
}

id sub_1003895E8(uint64_t a1)
{
  v2 = [v1 callsWithPredicate:a1 limit:0 offset:0 batchSize:0];
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002F3D14();
  sub_100005F0C();

  return v2;
}

id sub_100389670(uint64_t a1, uint64_t a2)
{
  v3 = [v2 callsWithPredicate:a1 limit:a2 offset:0 batchSize:0];
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002F3D14();
  sub_100005F0C();

  return v3;
}

uint64_t sub_100389764()
{
  v1 = [v0 uniqueId];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1003897BC(void *a1)
{
  v2 = [a1 providerForRecentCall:v1];

  return v2;
}

void sub_1003897F4()
{
  sub_100005EF4();
  v1 = sub_10039BD00(v0);
  if (!v1)
  {
    goto LABEL_42;
  }

  v2 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = &_swiftEmptySetSingleton;
    v45 = &_swiftEmptySetSingleton;
    v2 = __CocoaSet.makeIterator()();
    while (1)
    {
      v4 = __CocoaSet.Iterator.next()();
      if (!v4)
      {
        break;
      }

      v43 = v4;
      v5 = sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr);
      sub_10039C3B0(v5);
      v6 = [v44 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10039C44C();
      if (v7 && ([v44 type] == 3 || objc_msgSend(v44, "type") == 2))
      {
        if (v3[3] <= v3[2])
        {
          sub_100397DE8();
        }

        v3 = v45;
        NSObject._rawHashValue(seed:)(v45[5]);
        sub_10000C484();
        if (v8)
        {
          sub_100035E64();
          do
          {
            if (v10 + 1 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              goto LABEL_44;
            }

            sub_10003EA94();
          }

          while (v8);
          sub_10003DC00();
        }

        else
        {
          sub_100018658();
        }

        sub_100008DC4(v9);
        *(v45[6] + 8 * v13) = v44;
        sub_10003FB9C();
      }

      else
      {
      }
    }

    goto LABEL_42;
  }

  sub_10003D420();
  v42 = v15 >> 6;
  if (v16 > 0xD)
  {
    goto LABEL_45;
  }

  while (2)
  {
    v39[1] = v39;
    __chkstk_darwin(v14);
    v17 = sub_10039C3FC();
    v40 = v18;
    sub_100396044(v17, v42, v18);
    v41 = 0;
    v19 = 0;
    sub_100007990();
    v22 = v21 & v20;
    v24 = (v23 + 63) >> 6;
    while (v22)
    {
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_30:
      v29 = *(*(v2 + 48) + 8 * (v25 | (v19 << 6)));
      v30 = [v29 value];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        if ([v29 type] == 3)
        {

LABEL_38:
          sub_100006F34();
          sub_10003EB98(v36);
          if (__OFADD__(v41++, 1))
          {
            __break(1u);
LABEL_41:
            sub_1003EB64C(v40, v42, v41, v2);
            goto LABEL_42;
          }
        }

        else
        {
          v35 = [v29 type];

          if (v35 == 2)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
      }
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        goto LABEL_41;
      }

      ++v26;
      if (*(v2 + 56 + 8 * v19))
      {
        sub_100007C8C();
        v22 = v28 & v27;
        goto LABEL_30;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v38 = swift_slowAlloc();

  sub_10039B9C8(v38, v42, v2, sub_100389C34, 0);
  swift_bridgeObjectRelease_n();
  sub_100005F40(v38);
LABEL_42:
  sub_100005EDC();
}

BOOL sub_100389C34(id *a1)
{
  v1 = *a1;
  v2 = [*a1 value];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  if ([v1 type] == 3)
  {
    return 1;
  }

  return [v1 type] == 2;
}

void sub_100389CF0()
{
  sub_100005EF4();
  v1 = 0;
  v2 = sub_10039BD00(v0);
  if (!v2)
  {
    goto LABEL_41;
  }

  v3 = v2;
  if ((v2 & 0xC000000000000001) == 0)
  {
    sub_10003D420();
    v13 = (v21 >> 6);
    if (v22 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

  v1 = &_swiftEmptySetSingleton;
  v56 = &_swiftEmptySetSingleton;
  __CocoaSet.makeIterator()();
  v3 = &type metadata for Swift.AnyObject;
  while (1)
  {
    while (1)
    {
      v4 = __CocoaSet.Iterator.next()();
      if (!v4)
      {

        goto LABEL_41;
      }

      v54 = v4;
      sub_1000112D0();
      v8 = sub_100006AF0(v5, v6, v7);
      sub_10039C3B0(v8);
      v9 = [v55 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10039C44C();
      if (v10)
      {
        v11 = [v55 value];
        if (!v11)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = String._bridgeToObjectiveC()();
        }

        v12 = [v11 destinationIdIsTemporary];

        if ((v12 & 1) == 0)
        {
          break;
        }
      }
    }

    if (v1[3] <= v1[2])
    {
      sub_100397DE8();
    }

    v1 = v56;
    v13 = v55;
    NSObject._rawHashValue(seed:)(v56[5]);
    sub_10000C484();
    if (v14)
    {
      break;
    }

    sub_100018658();
LABEL_19:
    sub_100008DC4(v15);
    *(v56[6] + 8 * v19) = v55;
    ++v1[2];
  }

  sub_100035E64();
  while (v16 + 1 != v18 || (v17 & 1) == 0)
  {
    sub_10003EA94();
    if (!v14)
    {
      sub_10003DC00();
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_44:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v48[1] = v48;
    __chkstk_darwin(v20);
    v23 = sub_10039C3FC();
    v49 = v13;
    v50 = v24;
    sub_100396044(v23, v13, v24);
    v51 = 0;
    v25 = 0;
    v13 = v3 + 7;
    sub_100007990();
    v28 = v27 & v26;
    v30 = (v29 + 63) >> 6;
    v53 = v3;
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_30:
      v35 = v31 | (v25 << 6);
      v36 = v3[6];
      v52 = v35;
      v37 = *(v36 + 8 * v35);
      v38 = [v37 value];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v42 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        v43 = [v37 value];
        if (!v43)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = String._bridgeToObjectiveC()();
        }

        v44 = [v43 destinationIdIsTemporary];

        v3 = v53;
        if ((v44 & 1) == 0)
        {
          sub_100006F34();
          sub_10003EB98(v45);
          if (__OFADD__(v51++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

        v3 = v53;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v30)
      {
        sub_1003EB64C(v50, v49, v51, v3);
        goto LABEL_41;
      }

      ++v32;
      if (v13[v25])
      {
        sub_100007C8C();
        v28 = v34 & v33;
        goto LABEL_30;
      }
    }
  }

  v47 = swift_slowAlloc();

  sub_10039B9C8(v47, v13, v3, sub_10038A174, 0);
  if (!v1)
  {
    sub_100005F0C();
    swift_bridgeObjectRelease_n();
    sub_100008AE8();
LABEL_41:
    sub_100005EDC();
    return;
  }

  swift_bridgeObjectRelease_n();
  sub_100008AE8();
  __break(1u);
}

uint64_t sub_10038A174(id *a1)
{
  v1 = *a1;
  v2 = [*a1 value];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = [v1 value];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [v7 destinationIdIsTemporary];

  return v8 ^ 1;
}

id sub_10038A2EC()
{
  v1 = [v0 interaction];

  return v1;
}

id sub_10038A34C()
{
  if (sub_1003959AC())
  {
    return [v0 callerIdIsBlocked];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10038A3A4()
{
  v1 = [v0 notificationThreadIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10038A60C@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = [v7 *a1];
  if (v9)
  {
    v10 = v9;
    a2();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = a3(0);

  return sub_10000AF74(a4, v11, 1, v12);
}

unint64_t sub_10038A734()
{
  v1 = [v0 filteredOutReason];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intValue];

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v2 == 0) << 32);
}

unint64_t sub_10038A7F8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620AD0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

BOOL sub_10038A844()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  return AppBooleanValue == 0;
}

uint64_t sub_10038A8D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType);
  v4 = type metadata accessor for BadgeCountCategory();
  sub_100008070();
  v6 = &enum case for BadgeCountCategory.missedTelephonyCalls(_:);
  if (!v3)
  {
    v6 = &enum case for BadgeCountCategory.missedFaceTimeCalls(_:);
  }

  (*(v5 + 104))(a1, *v6, v4);

  return sub_10000AF74(a1, 0, 1, v4);
}

void sub_10038A9A0()
{
  sub_100005EF4();
  v0 = type metadata accessor for URL();
  sub_100007FEC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  URL._bridgeToObjectiveC()(v4);
  v8 = v7;
  v27 = 0;
  v9 = TUOpenURLWithError();

  if ((v9 & 1) == 0)
  {
    v10 = qword_1006A0B70;
    v11 = v27;
    if (v10 != -1)
    {
      sub_10000860C(&qword_1006A0B70);
    }

    v12 = type metadata accessor for Logger();
    sub_10000AF9C(v12, qword_1006BA6D0);
    v13 = sub_100008B14();
    v14(v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v26 = v11;
      v17 = swift_slowAlloc();
      v25 = v27;
      v18 = sub_10000777C();
      v19 = sub_100005E84();
      v27 = v19;
      *v17 = 136315394;
      sub_10000EFA8(&qword_1006A3BD0);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v2 + 8))(v6, v0);
      v23 = sub_10002741C(v20, v22, &v27);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v26;
      *v18 = v25;
      v24 = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to open URL %s#. Error %@", v17, 0x16u);
      sub_100009A04(v18, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v18);
      sub_100395FFC(v19);
      sub_100008AE8();
      sub_100005F40(v17);
    }

    else
    {

      (*(v2 + 8))(v6, v0);
    }
  }

  sub_100005EDC();
}

void sub_10038AC70()
{
  sub_10003D4BC();
  v0 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v20[-v1];
  v3 = type metadata accessor for UUID();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  sub_10039C200();
  if (sub_100015468(v2, 1, v3) == 1)
  {
    sub_100009A04(v2, &unk_1006A3DD0, &unk_10057C9D0);
  }

  else
  {
    sub_10001AC50();
    v10();
    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 conversationManager];

    v13 = [v12 activatedConversationLinks];
    sub_1000112D0();
    sub_100006AF0(v14, v15, v16);
    sub_1000112D0();
    sub_10039C15C(v17);
    v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v19);
    *&v20[-16] = v9;
    sub_10038B338(sub_10039C250, &v20[-32], v18);

    (*(v5 + 8))(v9, v3);
  }

  sub_100035CE8();
}

uint64_t sub_10038AEE4(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v28 - v15;
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  v19 = [*a1 groupUUID];
  if (v19)
  {
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_10000AF74(v18, v21, 1, v4);
  (*(v5 + 16))(v16, a2, v4);
  sub_10000AF74(v16, 0, 1, v4);
  v22 = *(v7 + 48);
  sub_10039C200();
  sub_10039C200();
  if (sub_100015468(v9, 1, v4) != 1)
  {
    sub_10039C200();
    if (sub_100015468(&v9[v22], 1, v4) != 1)
    {
      v24 = &v9[v22];
      v25 = v29;
      (*(v5 + 32))(v29, v24, v4);
      sub_10000EFA8(&qword_1006A2620);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v5 + 8);
      v26(v25, v4);
      sub_100009A04(v16, &unk_1006A3DD0, &unk_10057C9D0);
      sub_100009A04(v18, &unk_1006A3DD0, &unk_10057C9D0);
      v26(v13, v4);
      sub_100009A04(v9, &unk_1006A3DD0, &unk_10057C9D0);
      return v23 & 1;
    }

    sub_100009A04(v16, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v18, &unk_1006A3DD0, &unk_10057C9D0);
    (*(v5 + 8))(v13, v4);
    goto LABEL_9;
  }

  sub_100009A04(v16, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v18, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(&v9[v22], 1, v4) != 1)
  {
LABEL_9:
    sub_100009A04(v9, &unk_1006A2A30, &unk_10057D150);
    v23 = 0;
    return v23 & 1;
  }

  sub_100009A04(v9, &unk_1006A3DD0, &unk_10057C9D0);
  v23 = 1;
  return v23 & 1;
}

void sub_10038B338(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A2C00, TUConversationLink_ptr);
    sub_10039C15C(&unk_1006A67B0);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        sub_100006AF0(0, &unk_1006A2C00, TUConversationLink_ptr);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_100022DDC(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_100022DDC(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_10038B5B8()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v43[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v43[-1] - v7;
  __chkstk_darwin(v6);
  v10 = &v43[-1] - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v43[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_10000AF9C(v17, qword_1006BA6D0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v42 = v5;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10002741C(0xD00000000000001ALL, 0x800000010056FE10, v43);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s", v21, 0xCu);
    sub_100395FFC(v22);
  }

  v23 = *&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 24];
  v24 = *&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 32];
  sub_100009B14(&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource], v23);
  v25 = sub_1003918EC();
  v26 = (*(v24 + 24))(v25, 1, v23, v24);

  sub_1002E9780(v26, v43);

  v27 = v44;
  if (v44)
  {
    v28 = v45;
    sub_100009B14(v43, v44);
    (*(v28 + 8))(v27, v28);
    sub_100395FFC(v43);
    v29 = type metadata accessor for Date();
    if (sub_100015468(v8, 1, v29) != 1)
    {
      (*(*(v29 - 8) + 32))(v10, v8, v29);
      goto LABEL_11;
    }
  }

  else
  {
    sub_100009A04(v43, &unk_1006A79B0, &qword_100583340);
    v29 = type metadata accessor for Date();
    sub_10000AF74(v8, 1, 1, v29);
  }

  Date.init()();
  type metadata accessor for Date();
  if (sub_100015468(v8, 1, v29) != 1)
  {
    sub_100009A04(v8, &qword_1006A3C70, &unk_10057EA80);
  }

LABEL_11:
  type metadata accessor for Date();
  sub_10000AF74(v10, 0, 1, v29);
  swift_beginAccess();
  sub_10039C1A8();
  swift_endAccess();
  v30 = v1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43[0] = v35;
    *v33 = 136315394;
    v36 = v42;
    sub_10039C200();
    v37 = sub_100291548(v36);
    v39 = v38;
    sub_100009A04(v36, &qword_1006A3C70, &unk_10057EA80);
    v40 = sub_10002741C(v37, v39, v43);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2112;
    *(v33 + 14) = v30;
    *v34 = v30;
    v41 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "Most recent call date is now %s for notification provider %@", v33, 0x16u);
    sub_100009A04(v34, &unk_1006A2630, &qword_10057CB40);

    sub_100395FFC(v35);
  }
}

void sub_10038BBC4()
{
  sub_100005EF4();
  sub_100007710();
  v1 = type metadata accessor for URL();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_100009AB0(v0, v46);
    sub_10026D814(&unk_1006AB410, &unk_100583350);
    sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
    if (swift_dynamicCast())
    {
      v45 = v3;
      v13 = v47;
      v14 = *&v12[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink];
      if (v14)
      {
        v15 = *&v12[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink + 8];
        v44 = v47;
        v17 = v0[3];
        v16 = v0[4];
        sub_100009B14(v0, v17);
        v43 = v1;
        v18 = *(v16 + 112);

        v19 = v16;
        v13 = v44;
        v18(v17, v19);
        v1 = v43;
        v20 = v14(v10);
        sub_1000051F8(v14, v15);
        sub_100009A04(v10, &unk_1006A3DD0, &unk_10057C9D0);
      }

      else
      {
        v20 = 0;
      }

      v21 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager;
      v22 = *&v12[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager];
      sub_10038C07C(v22, v20);
      v24 = v23;

      if (v24)
      {
        v25 = *&v12[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_openURL];

        v26 = [v24 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v25(v7);

        (*(v45 + 8))(v7, v1);
        if (qword_1006A0B70 != -1)
        {
          sub_10000860C(&qword_1006A0B70);
        }

        v27 = type metadata accessor for Logger();
        sub_1000075F0(v27, qword_1006BA6D0);
        v28 = v24;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = sub_100005274();
          v32 = sub_10000777C();
          *v31 = 138412290;
          *(v31 + 4) = v28;
          *v32 = v24;
          v33 = v28;
          _os_log_impl(&_mh_execute_header, v29, v30, "Performed join conversation request: %@", v31, 0xCu);
          sub_100009A04(v32, &unk_1006A2630, &qword_10057CB40);
          sub_100005F40(v32);
          sub_100005F40(v31);

LABEL_17:
          goto LABEL_18;
        }

LABEL_16:
        goto LABEL_17;
      }

      v34 = *&v12[v21];
      sub_10038C408();
      v36 = v35;

      if (!v36)
      {

        goto LABEL_16;
      }

      v37 = *&v12[v21];
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      v46[4] = sub_10039C1F8;
      v46[5] = v38;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 1107296256;
      v46[2] = sub_1004582CC;
      v46[3] = &unk_10062B280;
      v39 = _Block_copy(v46);
      v40 = v37;
      v41 = v36;

      [v40 launchAppForDialRequest:v41 completion:v39];

      _Block_release(v39);
    }

    else
    {
    }
  }

LABEL_18:
  sub_100005EDC();
}

void sub_10038C07C(void *a1, void *a2)
{
  v3 = v2;
  v5 = [a1 providerForRecentCall:v3];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (![v5 isFaceTimeProvider] || (v7 = sub_10039BD00(v3)) == 0)
  {

    return;
  }

  v8 = v7;
  if (sub_10001E550() <= 1)
  {
LABEL_33:

    return;
  }

  sub_1003891D8(v8);
  v10 = v9;

  v11 = sub_1002F1D1C(v10);
  if (!a2)
  {
    goto LABEL_30;
  }

  v12 = a2;
  v51 = [v12 originatorHandle];
  if (!v51)
  {

LABEL_30:
    v47 = objc_allocWithZone(TUJoinConversationRequest);
    v15 = sub_100395C30(v11, &_swiftEmptySetSingleton, 23);
LABEL_31:
    if (v15)
    {
      [v15 setWantsStagingArea:1];
      [v15 setVideoEnabled:1];
    }

    goto LABEL_33;
  }

  if ([v12 isLocallyCreated])
  {

LABEL_9:
    v13 = objc_allocWithZone(TUJoinConversationRequest);
    sub_100395AD8();
    v15 = v14;

    goto LABEL_31;
  }

  v16 = &_swiftEmptySetSingleton;
  v50 = v11;
  if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10039C15C(&qword_1006A3C50);
    v17 = Set.Iterator.init(_cocoa:)();
    v16 = v53;
    v25 = v54;
    v26 = v55;
    v27 = v56;
    v28 = v57;
  }

  else
  {
    sub_1000052DC();
    v25 = &_swiftEmptySetSingleton + 56;
    v26 = ~v29;
    sub_1000082B4();
    v28 = v30 & v31;

    v27 = 0;
  }

  v49 = v26;
  v32 = (v26 + 64) >> 6;
  while (1)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      v17 = __CocoaSet.Iterator.next()();
      if (!v17)
      {
        goto LABEL_29;
      }

      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      v17 = swift_dynamicCast();
      v37 = v52;
      goto LABEL_26;
    }

    v33 = v27;
    if (!v28)
    {
      break;
    }

LABEL_23:
    sub_100007C8C();
    v28 = v35 & v34;
    v17 = *(*(v16 + 48) + ((v27 << 9) | (8 * v36)));
    v37 = v17;
LABEL_26:
    if (!v37)
    {
LABEL_29:
      sub_10000C674(v17, v18, v19, v20, v21, v22, v23, v24, v48, v49);

      v11 = v50;
      goto LABEL_30;
    }

    v38 = [v37 isEquivalentToHandle:v51];

    if (v38)
    {

      sub_10000C674(v39, v40, v41, v42, v43, v44, v45, v46, v48, v49);
      goto LABEL_9;
    }
  }

  while (1)
  {
    v27 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v27 >= v32)
    {
      goto LABEL_29;
    }

    ++v33;
    if (*&v25[8 * v27])
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_10038C408()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v11 = type metadata accessor for Logger();
  sub_1000075F0(v11, qword_1006BA6D0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_100005274();
    v15 = sub_100005E84();
    v34 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10002741C(0xD000000000000012, 0x800000010056FD90, &v34);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_100395FFC(v15);
    sub_100005F40(v15);
    sub_100005F40(v14);
  }

  v16 = [v3 providerForRecentCall:v1];
  if (v16)
  {
    v17 = v16;
    sub_1003897F4();
    if (v18 && (v19 = sub_1002E8D2C(v18), , v19))
    {
      v20 = [objc_allocWithZone(TUDialRequest) initWithProvider:v17];
      if ([v19 type] == 2)
      {
        v33 = v6;
        LOBYTE(v34) = 0;
        v21 = [v19 value];
        if (!v21)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = String._bridgeToObjectiveC()();
        }

        sub_10039BD94(v1, &selRef_isoCountryCode);
        if (v22)
        {
          v32 = String._bridgeToObjectiveC()();
        }

        else
        {
          v32 = 0;
        }

        sub_10026D814(&unk_1006A39A0, &unk_10057D700);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057D690;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v25;
        *(inited + 72) = &type metadata for Bool;
        *(inited + 48) = 1;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v27 = TUNumberToDial();

        if (v27)
        {
          [v20 setDialAssisted:v34];
          sub_10039BD94(v1, &selRef_isoCountryCode);
          if (v28)
          {
            v29 = String._bridgeToObjectiveC()();
          }

          else
          {
            v29 = 0;
          }

          v30 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v27 isoCountryCode:v29];

          [v20 setHandle:v30];
        }

        v6 = v33;
      }

      else
      {
        v23 = sub_1003951DC();
        [v20 setHandle:v23];
      }

      v31 = [v1 outgoingLocalParticipantUUID];
      if (v31)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v6 + 8))(v10, v4);
      }

      [v20 setLocalSenderIdentityAccountUUID:v31];

      [v20 setPerformDialAssist:0];
      [v20 setPerformLocalDialAssist:0];
      [v20 setTtyType:sub_100395A70()];
      [v20 setVideo:{objc_msgSend(v1, "mediaType") == 2}];
      [v20 setOriginatingUIType:23];
    }

    else
    {
    }
  }

  sub_100005EDC();
}

void sub_10038C93C(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA6D0);
    v4 = a2;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412546;
      *(v6 + 4) = v4;
      *v7 = v4;
      *(v6 + 12) = 2112;
      v8 = v4;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v9;
      v7[1] = v9;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Performing dial request: %@ ended in error: %@", v6, 0x16u);
      sub_10026D814(&unk_1006A2630, &qword_10057CB40);
      swift_arrayDestroy();
LABEL_10:
    }
  }

  else
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA6D0);
    v11 = a2;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = v11;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Performed dial request: %@", v13, 0xCu);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);
      goto LABEL_10;
    }
  }
}

void sub_10038CBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2 != 4)
    {
      if (qword_1006A0B70 != -1)
      {
        sub_10000860C(&qword_1006A0B70);
      }

      v6 = type metadata accessor for Logger();
      sub_1000075F0(v6, qword_1006BA6D0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = sub_100005274();
        v10 = sub_100005E84();
        v14 = v10;
        *v9 = 136315138;
        v11 = String.init<A>(reflecting:)();
        v13 = sub_10002741C(v11, v12, &v14);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v7, v8, "InCallService changed to non-running state (%s); updating posted notifications", v9, 0xCu);
        sub_100395FFC(v10);
        sub_100005F40(v10);
        sub_100008AE8();
      }

      sub_10038CD10();
    }
  }
}

void sub_10038CD10()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v2 - 8);
  v4 = (&v196 - v3);
  v201 = type metadata accessor for Date();
  v198 = *(v201 - 8);
  __chkstk_darwin(v201);
  v200 = (&v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    goto LABEL_105;
  }

  if (qword_1006A0B70 != -1)
  {
LABEL_106:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v208 = sub_10000AF9C(v12, qword_1006BA6D0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v213[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10002741C(0xD00000000000001BLL, 0x800000010056FBE0, v213);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
    sub_100395FFC(v16);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  v18 = v1;
  sub_1002F4C78(0xD000000000000017, 0x8000000100561040, sub_10039C134, v17);

  swift_beginAccess();
  sub_10039C200();
  v19 = v201;
  if (sub_100015468(v4, 1, v201) != 1)
  {
    (*(v198 + 32))(v200, v4, v19);
    v206 = _swiftEmptyArrayStorage;
    v219 = _swiftEmptyArrayStorage;
    v26 = *(v18 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 24);
    v1 = *(v18 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 32);
    v196 = (v18 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource);
    sub_100009B14((v18 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource), v26);
    v27 = sub_100391B64();
    v4 = (*(v1 + 16))(v27, v26, v1);

    v28 = v4[2];
    v209 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_pendingCallIdentifiers;
    swift_beginAccess();
    v29 = 0;
    v207 = v18;
    while (v29 != v28)
    {
      if (v29 >= v4[2])
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v30 = v29 + 1;
      sub_100009AB0(&v4[5 * v29 + 4], &v216);
      v1 = *(v18 + v209);
      v31 = v217;
      v32 = v218;
      sub_100009B14(&v216, v217);
      v33 = *(v32 + 16);

      v34 = v33(v31, v32);
      v36 = v35;
      if (*(v1 + 16))
      {
        v37 = v34;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v38 = Hasher._finalize()();
        v39 = ~(-1 << *(v1 + 32));
        while (1)
        {
          v40 = v38 & v39;
          if (((*(v1 + 56 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
          {
            break;
          }

          v41 = (*(v1 + 48) + 16 * v40);
          if (*v41 != v37 || v41[1] != v36)
          {
            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v38 = v40 + 1;
            if ((v43 & 1) == 0)
            {
              continue;
            }
          }

          v1 = v217;
          v44 = v218;
          sub_100009B14(&v216, v217);
          v45 = (*(v44 + 24))(v1, v44);
          if (!v45)
          {
            goto LABEL_27;
          }

          sub_10002F0C8(&v216, v213);
          v46 = v206;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v211[0] = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10039A3C0(0, v46[2] + 1, 1);
            v46 = v211[0];
          }

          v1 = v46[2];
          v48 = v46[3];
          if (v1 >= v48 >> 1)
          {
            sub_10039A3C0(v48 > 1, v1 + 1, 1);
          }

          v49 = v214;
          v50 = v215;
          v51 = sub_10001BDB8(v213, v214);
          __chkstk_darwin(v51);
          v53 = &v196 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v54 + 16))(v53);
          sub_10039BE6C(v1, v53, v211, v49, v50);
          sub_100395FFC(v213);
          v206 = v211[0];
          goto LABEL_28;
        }
      }

LABEL_27:
      sub_100395FFC(&v216);
LABEL_28:
      v29 = v30;
      v18 = v207;
    }

    if (v206[2])
    {
      v55 = v206;

      sub_1004142E8(v56);
      v57 = v55[2];
      v58 = _swiftEmptyArrayStorage;
      if (v57)
      {
        *&v216 = _swiftEmptyArrayStorage;
        sub_10039A2E0(0, v57, 0);
        v58 = v216;
        v59 = (v55 + 4);
        do
        {
          sub_100009AB0(v59, v213);
          v60 = v214;
          v61 = v215;
          sub_100009B14(v213, v214);
          v62 = (*(v61 + 16))(v60, v61);
          v64 = v63;
          sub_100395FFC(v213);
          *&v216 = v58;
          v66 = v58[2];
          v65 = v58[3];
          if (v66 >= v65 >> 1)
          {
            sub_10039A2E0(v65 > 1, v66 + 1, 1);
            v58 = v216;
          }

          v58[2] = v66 + 1;
          v67 = &v58[2 * v66];
          v67[4] = v62;
          v67[5] = v64;
          v59 += 40;
          --v57;
        }

        while (v57);
      }

      swift_beginAccess();
      sub_1004145A8(v58);
      swift_endAccess();
    }

    v68 = v196[3];
    v69 = v196[4];
    sub_100009B14(v196, v68);
    v70 = v200;
    v71 = sub_100391C04(v200);
    v72 = (*(v69 + 16))(v71, v68, v69);

    __chkstk_darwin(v73);
    *(&v196 - 2) = v70;
    *(&v196 - 1) = v18;
    v74 = sub_100388EDC(sub_10039C13C, (&v196 - 4), v72);
    v75 = v18;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    v78 = os_log_type_enabled(v76, v77);
    v197 = v74;
    if (v78)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v213[0] = v81;
      *v79 = 138412546;
      *(v79 + 4) = v75;
      *v80 = v75;
      *(v79 + 12) = 2080;
      v82 = v75;
      sub_10026D814(&unk_1006AB410, &unk_100583350);
      v83 = Array.description.getter();
      v85 = sub_10002741C(v83, v84, v213);

      *(v79 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v76, v77, "Notification provider %@ found missed calls %s", v79, 0x16u);
      sub_100009A04(v80, &unk_1006A2630, &qword_10057CB40);
      v74 = v197;

      sub_100395FFC(v81);
    }

    v204 = v75;
    sub_10038B5B8();
    v87 = *(v74 + 2);
    if (v87)
    {
      v88 = v74 + 32;
      *&v86 = 136315138;
      v205 = v86;
      do
      {
        sub_100009AB0(v88, v213);
        sub_100009AB0(v213, &v216);
        sub_10026D814(&unk_1006AB410, &unk_100583350);
        sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
        if ((swift_dynamicCast() & 1) == 0 || (v89 = v211[0], v90 = sub_10038A734(), v89, (v90 & 0x1FFFFFFFFLL) != 4))
        {
          v91 = v214;
          v92 = v215;
          sub_100009B14(v213, v214);
          v93 = (*(v92 + 24))(v91, v92);
          if (v93)
          {

            sub_100009AB0(v213, &v216);
            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v211[0] = v97;
              *v96 = v205;
              v98 = v217;
              v99 = v218;
              sub_100009B14(&v216, v217);
              v100 = (*(v99 + 16))(v98, v99);
              v102 = v101;
              sub_100395FFC(&v216);
              v103 = sub_10002741C(v100, v102, v211);

              *(v96 + 4) = v103;
              _os_log_impl(&_mh_execute_header, v94, v95, "Adding call with identifier %s to the callsToPost array", v96, 0xCu);
              sub_100395FFC(v97);
            }

            else
            {

              sub_100395FFC(&v216);
            }

            sub_100009AB0(v213, &v216);
            v114 = v219;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100470430();
              v114 = v126;
            }

            v115 = v114[2];
            if (v115 >= v114[3] >> 1)
            {
              sub_100470430();
              v114 = v127;
            }

            v114[2] = v115 + 1;
            sub_10002F0C8(&v216, &v114[5 * v115 + 4]);
            v219 = v114;
          }

          else
          {
            sub_100009AB0(v213, &v216);
            v104 = Logger.logObject.getter();
            v105 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v211[0] = v107;
              *v106 = v205;
              v108 = v217;
              v109 = v218;
              sub_100009B14(&v216, v217);
              v110 = (*(v109 + 16))(v108, v109);
              v112 = v111;
              sub_100395FFC(&v216);
              v113 = sub_10002741C(v110, v112, v211);

              *(v106 + 4) = v113;
              _os_log_impl(&_mh_execute_header, v104, v105, "Adding call with identifier %s to the pendingCallIdentifiers set", v106, 0xCu);
              sub_100395FFC(v107);
            }

            else
            {

              sub_100395FFC(&v216);
            }

            v116 = v214;
            v117 = v215;
            sub_100009B14(v213, v214);
            v118 = (*(v117 + 16))(v116, v117);
            v120 = v119;
            swift_beginAccess();
            sub_10001E84C(v211, v118, v120, v121, v122, v123, v124, v125, v196, v197, v198, v199, v200, v201, v202, *(&v202 + 1), v203, v204, v205, *(&v205 + 1), v206, v207, v208, v209, v210[0], v210[1], v210[2], v211[0], v211[1], v211[2]);
            swift_endAccess();
          }
        }

        sub_100395FFC(v213);
        v88 += 40;
        --v87;
      }

      while (v87);
    }

    v128 = v219;
    v129 = v204;

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.default.getter();

    v132 = os_log_type_enabled(v130, v131);
    *&v205 = v129;
    v199 = v128;
    if (v132)
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v213[0] = v134;
      *v133 = 134218242;
      *(v133 + 4) = *(v199 + 16);

      *(v133 + 12) = 2080;
      swift_beginAccess();

      v135 = Set.description.getter();
      v137 = v136;

      v138 = sub_10002741C(v135, v137, v213);
      v129 = v205;

      *(v133 + 14) = v138;
      _os_log_impl(&_mh_execute_header, v130, v131, "We have %ld calls to post (pendingCallIdentifiers: %s)", v133, 0x16u);
      sub_100395FFC(v134);

      v128 = v199;
    }

    else
    {
    }

    v140 = *(v128 + 16);
    if (v140)
    {
      v141 = &v129[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add];
      v142 = v199 + 32;
      *&v139 = 138412546;
      v202 = v139;
      v204 = &v129[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add];
      do
      {
        sub_100009AB0(v142, v213);
        v143 = sub_10038EB8C(v213);
        sub_100009AB0(v213, &v216);
        v144 = v143;
        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.default.getter();

        sub_100395FFC(v213);
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v212[0] = v149;
          *v147 = v202;
          *(v147 + 4) = v144;
          *v148 = v144;
          *(v147 + 12) = 2080;
          sub_100009AB0(&v216, v211);
          v150 = v144;
          sub_10026D814(&unk_1006AB410, &unk_100583350);
          v151 = String.init<A>(reflecting:)();
          v153 = v152;
          sub_100395FFC(&v216);
          v154 = sub_10002741C(v151, v153, v212);

          *(v147 + 14) = v154;
          _os_log_impl(&_mh_execute_header, v145, v146, "Adding notification request %@ for missed call %s", v147, 0x16u);
          sub_100009A04(v148, &unk_1006A2630, &qword_10057CB40);

          sub_100395FFC(v149);
          v141 = v204;

          v129 = v205;
        }

        else
        {

          sub_100395FFC(&v216);
        }

        v155 = *v141;
        if (*v141)
        {
          v156 = *(v141 + 1);

          v155(v144);
          sub_1000051F8(v155, v156);
        }

        v142 += 40;
        --v140;
      }

      while (v140);
    }

    v157 = [objc_opt_self() sharedInstance];
    if (!v157)
    {
      __break(1u);
      return;
    }

    v158 = v157;

    v159 = [v158 deviceType];

    v160 = v207;
    if (v159 != 2)
    {

LABEL_73:
      v161 = v201;
LABEL_94:
      [objc_opt_self() _resetCache];
      (*(v198 + 8))(v200, v161);
      return;
    }

    v161 = v201;
    if (v129[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType] == 1)
    {
    }

    else
    {
      v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v162 & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    v4 = *&v129[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_configurationProvider];
    if ([v4 isEligibleForReceptionistOnboardingNotification])
    {
      v206 = v4;
      v163 = v196[3];
      v164 = v196[4];
      sub_100009B14(v196, v163);
      v165 = sub_100391D88(v200);
      v1 = (*(v164 + 24))(v165, 1, v163, v164);

      v208 = *(v1 + 16);
      swift_beginAccess();
      v166 = 0;
      v167 = _swiftEmptyArrayStorage;
LABEL_77:
      while (v166 != v208)
      {
        if (v166 >= *(v1 + 16))
        {
          goto LABEL_104;
        }

        v4 = (v166 + 1);
        sub_100009AB0(v1 + 32 + 40 * v166, &v216);
        v168 = *(v160 + v209);
        v169 = v217;
        v170 = v218;
        sub_100009B14(&v216, v217);
        v171 = *(v170 + 16);

        v172 = v171(v169, v170);
        v174 = v173;
        if (*(v168 + 16))
        {
          v175 = v172;
          Hasher.init(_seed:)();
          String.hash(into:)();
          v176 = Hasher._finalize()();
          v177 = ~(-1 << *(v168 + 32));
          while (1)
          {
            v178 = v176 & v177;
            if (((*(v168 + 56 + (((v176 & v177) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v176 & v177)) & 1) == 0)
            {
              break;
            }

            v179 = (*(v168 + 48) + 16 * v178);
            if (*v179 != v175 || v179[1] != v174)
            {
              v181 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v176 = v178 + 1;
              if ((v181 & 1) == 0)
              {
                continue;
              }
            }

            sub_100395FFC(&v216);
            v166 = v4;
            v160 = v207;
            goto LABEL_77;
          }
        }

        sub_10002F0C8(&v216, v213);
        v182 = swift_isUniquelyReferenced_nonNull_native();
        v212[0] = v167;
        if ((v182 & 1) == 0)
        {
          sub_10039A3C0(0, v167[2] + 1, 1);
          v167 = v212[0];
        }

        v160 = v207;
        v184 = v167[2];
        v183 = v167[3];
        if (v184 >= v183 >> 1)
        {
          sub_10039A3C0(v183 > 1, v184 + 1, 1);
        }

        v185 = v214;
        v186 = v215;
        v187 = sub_10001BDB8(v213, v214);
        __chkstk_darwin(v187);
        v189 = &v196 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v190 + 16))(v189);
        sub_10039BE6C(v184, v189, v212, v185, v186);
        sub_100395FFC(v213);
        v167 = v212[0];
        v166 = v4;
      }

      sub_1002E9780(v167, v213);

      if (v214)
      {
        sub_10026D814(&unk_1006AB410, &unk_100583350);
        sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
        if (swift_dynamicCast())
        {
          v191 = v216;
          if ([v216 communicationTrustScore] == 4)
          {
            v192 = v205;
            v193 = sub_100391760();
            v194 = *(v192 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add);
            if (v194)
            {
              v195 = *(v192 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add + 8);

              v194(v193);
              sub_1000051F8(v194, v195);
            }

            [v206 setEligibleForReceptionistOnboardingNotification:0];
          }

          else
          {
          }
        }
      }

      else
      {
        sub_100009A04(v213, &unk_1006A79B0, &qword_100583340);
      }

      goto LABEL_73;
    }

LABEL_93:

    goto LABEL_94;
  }

  sub_100009A04(v4, &qword_1006A3C70, &unk_10057EA80);
  v20 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Could not retrieve date of most recent call for notification provider %@", v23, 0xCu);
    sub_100009A04(v24, &unk_1006A2630, &qword_10057CB40);
  }

  sub_10038B5B8();
}

void sub_10038E648()
{
  v1 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callInteractionManager;
  *(v0 + v1) = [objc_allocWithZone(CHCallInteractionManager) init];
  v2 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager;
  *(v0 + v2) = [objc_allocWithZone(TUCallProviderManager) init];
  *(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_pendingCallIdentifiers) = &_swiftEmptySetSingleton;
  v3 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_configurationProvider;
  *(v0 + v3) = [objc_allocWithZone(TUConfigurationProvider) init];
  v4 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_mostRecentCallDate;
  v5 = type metadata accessor for Date();
  sub_10000AF74(v0 + v4, 1, 1, v5);
  v6 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_contactStore);
  v7 = [objc_opt_self() storeWithOptions:3];
  v6[3] = sub_100006AF0(0, &qword_1006A7BA0, CNContactStore_ptr);
  v6[4] = &off_100622F18;
  *v6 = v7;
  v8 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_receptionistOnboardingNotificationIdentifier);
  *v8 = 0xD00000000000002CLL;
  v8[1] = 0x800000010056FE90;
  v9 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_replace);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_removeNotification);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_updateBadgeValue);
  *v15 = 0;
  v15[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10038E844(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager) providerForRecentCall:a1];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(CNContactStoreConfiguration) init];
  [v5 setAssumedIdentity:{objc_msgSend(v4, "assumedIdentity")}];
  swift_unknownObjectRelease();
  if ([*(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_featureFlags) junkFilteringEnabled])
  {
    [v5 setIncludeAcceptedIntroductions:1];
  }

  v6 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v5];
  v7 = [objc_allocWithZone(CHContactProvider) initWithDataSource:v6];
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057CA80;
  *(v8 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057CA80;
  *(v9 + 32) = a1;
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  v10 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10026D814(&unk_1006A7AF0, &unk_1005819F0);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v19 = 0;
  v13 = [v7 contactsByHandleForCalls:isa keyDescriptors:v12 error:&v19];

  v14 = v19;
  if (!v13)
  {
    v17 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr);
  sub_10026D814(&unk_1006A79E0, &unk_10057DD90);
  sub_10039C15C(&unk_1006A7AE8);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v14;

  return v15;
}

id sub_10038EB8C(void *a1)
{
  v312 = type metadata accessor for URL();
  v309 = *(v312 - 8);
  __chkstk_darwin(v312);
  v3 = &v296 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for URLQueryItem();
  v301 = *(v302 - 8);
  __chkstk_darwin(v302);
  v300 = &v296 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLComponents();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v310 = &v296 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v296 - v9;
  v11 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v12 = __chkstk_darwin(v11 - 8);
  v299 = &v296 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v297 = &v296 - v15;
  v16 = __chkstk_darwin(v14);
  v298 = &v296 - v17;
  v18 = __chkstk_darwin(v16);
  v308 = &v296 - v19;
  v20 = __chkstk_darwin(v18);
  v307 = &v296 - v21;
  __chkstk_darwin(v20);
  v314 = &v296 - v22;
  v23 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v23 - 8);
  v25 = &v296 - v24;
  v26 = a1[3];
  v27 = a1[4];
  sub_100009B14(a1, v26);
  v28 = (*(v27 + 88))(v26, v27);
  v316 = a1;
  v305 = v3;
  v304 = v5;
  v303 = v6;
  v306 = v10;
  if (!v28)
  {
    v315 = 0;
    v37 = 0;
    v40 = 0;
    v33 = 0;
    v29 = 0;
    goto LABEL_16;
  }

  v29 = sub_1002E8D2C(v28);

  if (!v29)
  {
    goto LABEL_14;
  }

  sub_100009AB0(a1, v326);
  v30 = v29;
  sub_10026D814(&unk_1006AB410, &unk_100583350);
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v31 = v320;
  v32 = sub_10038E844(v320);

  if (!v32)
  {
    goto LABEL_13;
  }

  v33 = sub_1002CBB6C(v30, v32);

  if (!v33)
  {

    v315 = 0;
    v37 = 0;
    v40 = 0;
    goto LABEL_16;
  }

  v34 = sub_1002E8E2C(v33);

  if (!v34)
  {
LABEL_13:

LABEL_14:
    v315 = 0;
    v37 = 0;
LABEL_15:
    v40 = 0;
    v33 = 0;
    goto LABEL_16;
  }

  v35 = [v34 identifier];
  v315 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = [objc_opt_self() stringFromContact:v34 style:0];
  if (!v38)
  {

    goto LABEL_15;
  }

  v39 = v38;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v41;

  v42 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v42 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    goto LABEL_19;
  }

LABEL_16:
  v43 = a1[3];
  v44 = a1[4];
  sub_100009B14(a1, v43);
  if ((*(v44 + 32))(v43, v44))
  {

    v40 = sub_10031E958(0x44454B434F4C42, 0xE700000000000000);
    v33 = v45;
    goto LABEL_19;
  }

  if (v33)
  {
LABEL_19:
    v46 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v46 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      goto LABEL_25;
    }
  }

  v47 = a1[3];
  v48 = a1[4];
  sub_100009B14(a1, v47);
  v49 = (*(v48 + 48))(v47, v48);
  if (v50)
  {
    v51 = v49;
    v52 = v50;

    v40 = v51;
    v33 = v52;
  }

  else if (!v33)
  {
LABEL_28:
    if (v29)
    {
      v54 = v29;
      v55 = [v54 value];
      if (!v55)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = String._bridgeToObjectiveC()();
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;
      if ([v54 type] == 2)
      {
        v313 = v29;

        v58 = a1[3];
        v59 = a1[4];
        sub_100009B14(a1, v58);
        (*(v59 + 56))(v58, v59);
        if (!v60)
        {
          v62 = TUHomeCountryCode();
          if (v62)
          {
            v63 = v62;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }
        }

        v64 = String._bridgeToObjectiveC()();

        v65 = CFPhoneNumberCreate();

        if (v65)
        {

          String = CFPhoneNumberCreateString();
          a1 = v316;
          v29 = v313;
          if (String)
          {
            v67 = String;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v68;
          }

          else
          {

            v33 = 0;
          }
        }

        else
        {

          a1 = v316;
          v29 = v313;
        }
      }

      else
      {

        v61 = String.count.getter();

        if (v61 >= 1)
        {
          v33 = v57;
        }
      }
    }

    goto LABEL_45;
  }

LABEL_25:
  v53 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v53 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {
    goto LABEL_28;
  }

LABEL_45:
  v69 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_100391250(a1);
  v70 = String._bridgeToObjectiveC()();

  [v69 setBody:v70];

  v71 = a1[3];
  v72 = a1[4];
  sub_100009B14(a1, v71);
  (*(v72 + 32))(v71, v72);
  v73 = String._bridgeToObjectiveC()();

  [v69 setCategoryIdentifier:v73];

  v74 = a1[3];
  v75 = a1[4];
  sub_100009B14(a1, v74);
  (*(v75 + 8))(v74, v75);
  v76 = type metadata accessor for Date();
  isa = 0;
  if (sub_100015468(v25, 1, v76) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v76 - 8) + 8))(v25, v76);
  }

  [v69 setDate:isa];

  v78 = a1[3];
  v79 = a1[4];
  sub_100009B14(a1, v78);
  (*(v79 + 40))(v78, v79);
  v80 = String._bridgeToObjectiveC()();

  [v69 setThreadIdentifier:v80];

  if (!v33)
  {
    sub_10031E958(0x4E574F4E4B4E55, 0xE700000000000000);
  }

  v81 = v314;
  v82 = String._bridgeToObjectiveC()();

  [v69 setTitle:v82];

  v83 = sub_100391698();
  sub_1004554A0(v83, v84, v69);
  v85 = a1[3];
  v86 = a1[4];
  sub_100009B14(a1, v85);
  if ((*(v86 + 64))(v85, v86))
  {
    v87 = a1[3];
    v88 = a1[4];
    sub_100009B14(a1, v87);
    v89 = (*(v88 + 72))(v87, v88);
    if (v90)
    {
      v91 = v90;
    }

    else
    {
      v89 = 0x554A5F454259414DLL;
      v91 = 0xEA00000000004B4ELL;
    }

    sub_10031E958(v89, v91);

    v92 = String._bridgeToObjectiveC()();

    [v69 setSubtitle:v92];
  }

  *&v320 = 0xD000000000000016;
  *(&v320 + 1) = 0x800000010056FC90;
  AnyHashable.init<A>(_:)();
  v93 = a1[3];
  v94 = a1[4];
  sub_100009B14(a1, v93);
  v95 = (*(v94 + 16))(v93, v94);
  v322 = &type metadata for String;
  *&v320 = v95;
  *(&v320 + 1) = v96;
  v97 = [v69 userInfo];
  v98 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v322)
  {
    sub_10003EBF0(&v320, &v324);
    swift_isUniquelyReferenced_nonNull_native();
    *&v319[0] = v98;
    sub_100378C74(&v324, v326);
    sub_100006780(v326);
  }

  else
  {
    sub_100009A04(&v320, &unk_1006A2D10, &unk_10057D940);
    v99 = sub_1000067D4();
    if (v100)
    {
      v101 = v99;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v319[0] = v98;
      v103 = *(v98 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v103);
      v104 = *&v319[0];
      sub_100006780(*(*&v319[0] + 48) + 40 * v101);
      sub_10003EBF0((*(v104 + 56) + 32 * v101), &v324);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v324 = 0u;
      v325 = 0u;
    }

    sub_100006780(v326);
    sub_100009A04(&v324, &unk_1006A2D10, &unk_10057D940);
  }

  v105 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v69 setUserInfo:v105];

  *&v320 = 0xD000000000000013;
  *(&v320 + 1) = 0x800000010056FCB0;
  AnyHashable.init<A>(_:)();
  if (v37)
  {
    v106 = &type metadata for String;
    v107 = v315;
  }

  else
  {
    v107 = 0;
    v106 = 0;
    v321 = 0;
  }

  *&v320 = v107;
  *(&v320 + 1) = v37;
  v322 = v106;
  v108 = [v69 userInfo];
  v109 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v322)
  {
    sub_10003EBF0(&v320, &v324);
    swift_isUniquelyReferenced_nonNull_native();
    *&v319[0] = v109;
    sub_100378C74(&v324, v326);
    sub_100006780(v326);
  }

  else
  {
    sub_100009A04(&v320, &unk_1006A2D10, &unk_10057D940);
    v110 = sub_1000067D4();
    if (v111)
    {
      v112 = v110;
      v113 = swift_isUniquelyReferenced_nonNull_native();
      *&v319[0] = v109;
      v114 = *(v109 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v113, v114);
      v115 = *&v319[0];
      sub_100006780(*(*&v319[0] + 48) + 40 * v112);
      sub_10003EBF0((*(v115 + 56) + 32 * v112), &v324);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v324 = 0u;
      v325 = 0u;
    }

    sub_100006780(v326);
    sub_100009A04(&v324, &unk_1006A2D10, &unk_10057D940);
  }

  v116 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v69 setUserInfo:v116];

  v117 = a1[3];
  v118 = a1[4];
  sub_100009B14(a1, v117);
  v119 = (*(v118 + 80))(v117, v118);
  v315 = v69;
  v313 = v29;
  if (!v119)
  {
    goto LABEL_72;
  }

  v120 = v119;
  if (sub_100388E9C(v119))
  {

LABEL_72:
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    v121 = swift_allocObject();
    *(v121 + 1) = xmmword_10057D690;
    v121[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121[5] = v122;
    goto LABEL_107;
  }

  *&v320 = 0x49746361746E6F63;
  *(&v320 + 1) = 0xEB000000006F666ELL;
  AnyHashable.init<A>(_:)();
  v123 = sub_1002E8D2C(v120);
  v124 = v123;
  if (v123)
  {
    v125 = [v123 value];

    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v126;

    v128 = &type metadata for String;
  }

  else
  {
    v127 = 0;
    v128 = 0;
    v321 = 0;
  }

  *&v320 = v124;
  *(&v320 + 1) = v127;
  v322 = v128;
  v129 = [v69 userInfo];
  v130 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v322)
  {
    sub_10003EBF0(&v320, &v324);
    swift_isUniquelyReferenced_nonNull_native();
    *&v319[0] = v130;
    sub_100378C74(&v324, v326);
    sub_100006780(v326);
  }

  else
  {
    sub_100009A04(&v320, &unk_1006A2D10, &unk_10057D940);
    v131 = sub_1000067D4();
    if (v132)
    {
      v133 = v131;
      v134 = swift_isUniquelyReferenced_nonNull_native();
      *&v319[0] = v130;
      v135 = *(v130 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v134, v135);
      v136 = *&v319[0];
      sub_100006780(*(*&v319[0] + 48) + 40 * v133);
      sub_10003EBF0((*(v136 + 56) + 32 * v133), &v324);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v324 = 0u;
      v325 = 0u;
    }

    sub_100006780(v326);
    sub_100009A04(&v324, &unk_1006A2D10, &unk_10057D940);
  }

  v137 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v69 setUserInfo:v137];

  if ((v120 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr);
    sub_10039C15C(&unk_1006A7AE8);
    Set.Iterator.init(_cocoa:)();
    v120 = v326[0];
    v138 = v326[1];
    v139 = v326[2];
    v140 = v326[3];
    v141 = v326[4];
  }

  else
  {
    v140 = 0;
    v142 = -1 << *(v120 + 32);
    v138 = (v120 + 56);
    v139 = ~v142;
    v143 = -v142;
    if (v143 < 64)
    {
      v144 = ~(-1 << v143);
    }

    else
    {
      v144 = -1;
    }

    v141 = v144 & *(v120 + 56);
  }

  v296 = v139;
  v69 = ((v139 + 64) >> 6);
  v121 = _swiftEmptyArrayStorage;
  v311 = v120;
  if ((v120 & 0x8000000000000000) == 0)
  {
    goto LABEL_92;
  }

  while (1)
  {
    v145 = __CocoaSet.Iterator.next()();
    if (!v145)
    {
      break;
    }

    *&v324 = v145;
    sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr);
    swift_dynamicCast();
    v146 = v320;
    v147 = v140;
    v148 = v141;
    if (!v320)
    {
      break;
    }

    while (1)
    {
      v151 = sub_1004226A8(v146);
      if (v152)
      {
        v153 = v151;
        v154 = v152;
      }

      else
      {
        v155 = [v146 value];
        v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v154 = v156;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100017840();
        v121 = v159;
      }

      v157 = v121[2];
      if (v157 >= v121[3] >> 1)
      {
        sub_100017840();
        v121 = v160;
      }

      v121[2] = v157 + 1;
      v158 = &v121[2 * v157];
      v158[4] = v153;
      v158[5] = v154;
      v140 = v147;
      v141 = v148;
      v120 = v311;
      if (v311 < 0)
      {
        break;
      }

LABEL_92:
      v149 = v140;
      v150 = v141;
      v147 = v140;
      if (!v141)
      {
        while (1)
        {
          v147 = v149 + 1;
          if (__OFADD__(v149, 1))
          {
            break;
          }

          if (v147 >= v69)
          {
            goto LABEL_106;
          }

          v150 = v138[v147];
          ++v149;
          if (v150)
          {
            goto LABEL_96;
          }
        }

        __break(1u);
        goto LABEL_176;
      }

LABEL_96:
      v148 = (v150 - 1) & v150;
      v146 = *(*(v120 + 48) + ((v147 << 9) | (8 * __clz(__rbit64(v150)))));
      if (!v146)
      {
        goto LABEL_106;
      }
    }
  }

LABEL_106:
  sub_100022DDC(v120);
  v69 = v315;
  v81 = v314;
LABEL_107:
  sub_100420F48(v121, v69);
  v121 = v316;
  sub_100009AB0(v316, &v320);
  sub_10026D814(&unk_1006AB410, &unk_100583350);
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  if (swift_dynamicCast())
  {
    v161 = v324;
    [v69 setShouldAuthenticateDefaultAction:sub_10038A844()];
    [v69 setShouldBackgroundDefaultAction:1];
    v162 = sub_10038A734();
    v163 = (v162 & 0x1FFFFFFFFLL) == 2;
    if ((v162 & 0x1FFFFFFFFLL) == 2)
    {
      v164 = sub_100004778(v162);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v165 = swift_allocObject();
      *(v165 + 16) = xmmword_10057D690;
      *&v320 = v161;
      v166 = v161;
      v167 = String.init<A>(reflecting:)();
      v169 = v168;
      *(v165 + 56) = &type metadata for String;
      *(v165 + 64) = sub_100009D88();
      *(v165 + 32) = v167;
      *(v165 + 40) = v169;
      v170 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Recent call was a silenced unknown caller; displaying notification as an alert (%@)", 83, 2, &_mh_execute_header, v164, v170, v165);
    }

    sub_10000AF74(v81, 1, 1, v312);
    v171 = *&v317[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink];
    LODWORD(v314) = v163;
    if (v171)
    {
      v172 = *&v317[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink + 8];

      v173 = [v161 participantGroupUUID];
      if (v173)
      {
        v174 = v173;
        v175 = v306;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v176 = 0;
      }

      else
      {
        v176 = 1;
        v175 = v306;
      }

      v178 = type metadata accessor for UUID();
      sub_10000AF74(v175, v176, 1, v178);
      v177 = v171(v175);
      sub_1000051F8(v171, v172);
      sub_100009A04(v175, &unk_1006A3DD0, &unk_10057C9D0);
    }

    else
    {
      v177 = 0;
    }

    v179 = *&v317[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager];
    sub_10038C07C(v179, v177);
    if (v180)
    {
      v181 = v180;
      v182 = [v180 URL];
      v183 = v307;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v184 = v312;
      sub_10000AF74(v183, 0, 1, v312);
      sub_10039C1A8();
      v185 = v308;
      sub_10039C200();
      if (sub_100015468(v185, 1, v184) == 1)
      {
        v187 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v186);
        v187 = v193;
        (*(v309 + 8))(v185, v184);
      }

      [v69 setDefaultActionURL:{v187, v296}];
    }

    else
    {
      sub_10038C408();
      if (v188)
      {
        v189 = v188;
        v190 = [v188 URL];

        if (v190)
        {
          v191 = v297;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v192 = 0;
        }

        else
        {
          v192 = 1;
          v191 = v297;
        }

        sub_10000AF74(v191, v192, 1, v312);
        sub_10039C310();
      }

      else
      {
        sub_10000AF74(v298, 1, 1, v312);
      }

      sub_10039C1A8();
      URLComponents.init()();
      v194 = v316[3];
      v195 = v316[4];
      sub_100009B14(v316, v194);
      v196 = (*(v195 + 128))(v179, v194, v195);
      if (v196)
      {
        v197 = v196;
        [v196 isFaceTimeProvider];
      }

      v198 = v300;
      URLComponents.scheme.setter();
      v199 = [v161 uniqueId];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLQueryItem.init(name:value:)();

      sub_100470158(0, 1, 1, _swiftEmptyArrayStorage);
      v201 = v200;
      v203 = *(v200 + 16);
      v202 = *(v200 + 24);
      if (v203 >= v202 >> 1)
      {
        sub_100470158(v202 > 1, v203 + 1, 1, v200);
        v201 = v295;
      }

      *(v201 + 16) = v203 + 1;
      (*(v301 + 32))(v201 + ((*(v301 + 80) + 32) & ~*(v301 + 80)) + *(v301 + 72) * v203, v198, v302);
      URLComponents.queryItems.setter();
      v204 = v299;
      URLComponents.url.getter();
      v184 = v312;
      if (sub_100015468(v204, 1, v312) == 1)
      {
        v206 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v205);
        v206 = v207;
        (*(v309 + 8))(v204, v184);
      }

      [v69 setDefaultActionURL:{v206, v296}];

      (*(v303 + 8))(v310, v304);
    }

    *&v324 = 0xD000000000000010;
    *(&v324 + 1) = 0x800000010056FCF0;
    AnyHashable.init<A>(_:)();
    if (sub_100015468(v81, 1, v184))
    {
      v208 = 0;
      v209 = 0;
      v210 = 0;
      *&v325 = 0;
    }

    else
    {
      v211 = v309;
      v212 = v305;
      (*(v309 + 16))(v305, v81, v184);
      v209 = URL.absoluteString.getter();
      v210 = v213;
      (*(v211 + 8))(v212, v184);
      v208 = &type metadata for String;
    }

    *(&v325 + 1) = v208;
    *&v324 = v209;
    *(&v324 + 1) = v210;
    v214 = [v69 userInfo];
    v215 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(&v325 + 1))
    {
      sub_10003EBF0(&v324, v319);
      swift_isUniquelyReferenced_nonNull_native();
      v318 = v215;
      sub_100378C74(v319, &v320);
      sub_100006780(&v320);
    }

    else
    {
      sub_100009A04(&v324, &unk_1006A2D10, &unk_10057D940);
      v216 = sub_1000067D4();
      if (v217)
      {
        v218 = v216;
        v219 = swift_isUniquelyReferenced_nonNull_native();
        v318 = v215;
        v220 = *(v215 + 24);
        sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v219, v220);
        v221 = v318;
        sub_100006780(*(v318 + 48) + 40 * v218);
        sub_10003EBF0((*(v221 + 56) + 32 * v218), v319);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        memset(v319, 0, sizeof(v319));
      }

      sub_100006780(&v320);
      sub_100009A04(v319, &unk_1006A2D10, &unk_10057D940);
    }

    v222 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v69 setUserInfo:v222];

    sub_100009A04(v81, &unk_1006A52C0, &unk_10057D930);
    v121 = v316;
  }

  else
  {
    LODWORD(v314) = 0;
  }

  v223 = v121[3];
  v224 = v121[4];
  sub_100009B14(v121, v223);
  v225 = (*(v224 + 24))(v223, v224);
  if (v225)
  {
    v138 = v225;
    if (qword_1006A0B70 != -1)
    {
LABEL_176:
      swift_once();
    }

    v226 = type metadata accessor for Logger();
    sub_10000AF9C(v226, qword_1006BA6D0);
    sub_100009AB0(v121, &v320);
    v227 = Logger.logObject.getter();
    v228 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v227, v228))
    {
      v229 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      *&v324 = v230;
      *v229 = 136315138;
      v232 = v322;
      v231 = v323;
      sub_100009B14(&v320, v322);
      v233 = (*(v231 + 16))(v232, v231);
      v235 = v234;
      sub_100395FFC(&v320);
      v236 = sub_10002741C(v233, v235, &v324);

      *(v229 + 4) = v236;
      _os_log_impl(&_mh_execute_header, v227, v228, "Retrieved interaction; retrieving intent for call with identifier %s", v229, 0xCu);
      sub_100395FFC(v230);
      v121 = v316;
    }

    else
    {

      sub_100395FFC(&v320);
    }

    v248 = [v138 intent];
    objc_opt_self();
    v249 = swift_dynamicCastObjCClass();
    if (v249)
    {
      v250 = v249;
      sub_100009AB0(v121, &v320);
      v251 = Logger.logObject.getter();
      v252 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v251, v252))
      {
        v253 = swift_slowAlloc();
        v254 = swift_slowAlloc();
        v317 = v248;
        v255 = v254;
        *&v324 = v254;
        *v253 = 136315138;
        v257 = v322;
        v256 = v323;
        sub_100009B14(&v320, v322);
        v258 = (*(v256 + 16))(v257, v256);
        v260 = v259;
        sub_100395FFC(&v320);
        v261 = sub_10002741C(v258, v260, &v324);
        v69 = v315;

        *(v253 + 4) = v261;
        _os_log_impl(&_mh_execute_header, v251, v252, "Retrieved start call intent; updating notification content for call with identifier %s", v253, 0xCu);
        sub_100395FFC(v255);
        v248 = v317;

        v121 = v316;
      }

      else
      {

        sub_100395FFC(&v320);
      }

      *&v320 = 0;
      v268 = v69;
      v269 = [v268 contentByUpdatingWithProvider:v250 error:&v320];
      if (v269)
      {
        v270 = v269;
        v271 = v320;

        v268 = v270;
      }

      else
      {
        v272 = v320;
        v273 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100009AB0(v121, &v320);
        v274 = Logger.logObject.getter();
        v275 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v274, v275))
        {
          v276 = swift_slowAlloc();
          v277 = swift_slowAlloc();
          v317 = v273;
          v278 = v248;
          v279 = v277;
          *&v324 = v277;
          *v276 = 136315138;
          v280 = v322;
          v281 = v323;
          sub_100009B14(&v320, v322);
          v282 = *(v281 + 16);
          v283 = v281;
          v121 = v316;
          v284 = v282(v280, v283);
          v286 = v285;
          sub_100395FFC(&v320);
          v287 = sub_10002741C(v284, v286, &v324);

          *(v276 + 4) = v287;
          _os_log_impl(&_mh_execute_header, v274, v275, "Could not update notification content; using original notification content for call with identifier %s", v276, 0xCu);
          sub_100395FFC(v279);
        }

        else
        {

          sub_100395FFC(&v320);
        }
      }

      goto LABEL_170;
    }

    v238 = v138;
    v262 = Logger.logObject.getter();
    v263 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      *v264 = 138412290;
      v266 = [v238 intent];
      *(v264 + 4) = v266;
      *v265 = v266;
      _os_log_impl(&_mh_execute_header, v262, v263, "Cound not retrieve start call intent from %@", v264, 0xCu);
      sub_100009A04(v265, &unk_1006A2630, &qword_10057CB40);

      v69 = v315;

      v267 = v262;
    }

    else
    {
      v267 = v238;
      v238 = v262;
    }

    goto LABEL_168;
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v237 = type metadata accessor for Logger();
  sub_10000AF9C(v237, qword_1006BA6D0);
  sub_100009AB0(v121, &v320);
  v238 = Logger.logObject.getter();
  v239 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v238, v239))
  {
    v240 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    *&v324 = v241;
    *v240 = 136315138;
    v242 = v322;
    v243 = v323;
    sub_100009B14(&v320, v322);
    v244 = (*(v243 + 16))(v242, v243);
    v246 = v245;
    sub_100395FFC(&v320);
    v247 = sub_10002741C(v244, v246, &v324);
    v69 = v315;

    *(v240 + 4) = v247;
    _os_log_impl(&_mh_execute_header, v238, v239, "Cound not retrieve interaction; using original notification content for call with identifier %s", v240, 0xCu);
    sub_100395FFC(v241);

LABEL_168:

    goto LABEL_169;
  }

  sub_100395FFC(&v320);
LABEL_169:
  v268 = v69;
LABEL_170:
  v288 = v268;
  sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v289 = v121[3];
  v290 = v121[4];
  sub_100009B14(v121, v289);
  v291 = (*(v290 + 16))(v289, v290);
  v293 = sub_10044F628(v291, v292, v288, 0);
  [v293 setDestinations:6];
  if (v314)
  {
    [v293 setDestinations:{objc_msgSend(v293, "destinations") | 1}];
  }

  return v293;
}

id sub_100391250(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100009B14(a1, v3);
  if (((*(v4 + 136))(v3, v4) & 0x1FFFFFFFFLL) == 2)
  {
    v5 = 0x4445434E454C4953;
    v6 = 0xED00004C4C41435FLL;
LABEL_3:

    return sub_10031E958(v5, v6);
  }

  v8 = a1[3];
  v9 = a1[4];
  sub_100009B14(a1, v8);
  v10 = (*(v9 + 144))(v8, v9);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_10031E958(0x4B434F4C425F4025, 0xED000059425F4445);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10057D690;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100009D88();
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    v15 = String.init(format:_:)();

    return v15;
  }

  v16 = a1[3];
  v17 = a1[4];
  sub_100009B14(a1, v16);
  v18 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager);
  v19 = (*(v17 + 128))(v18, v16, v17);
  v20 = [v18 faceTimeProvider];
  v21 = v20;
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_13;
    }

LABEL_18:

LABEL_19:
    v5 = 0x435F44455353494DLL;
    v6 = 0xEB000000004C4C41;
    goto LABEL_3;
  }

  if (!v20)
  {
    v21 = v19;
    goto LABEL_18;
  }

  sub_100006AF0(0, &unk_1006A7B10, TUCallProvider_ptr);
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v23 = a1[3];
  v24 = a1[4];
  sub_100009B14(a1, v23);
  v25 = (*(v24 + 120))(v23, v24);
  switch(v25)
  {
    case 0:
      v6 = 0x800000010056FDB0;
      v5 = 0xD000000000000013;
      goto LABEL_3;
    case 2:
      v26 = "MISSED_FACETIME_VIDEO_CALL";
      goto LABEL_21;
    case 1:
      v26 = "MISSED_FACETIME_AUDIO_CALL";
LABEL_21:
      v5 = 0xD00000000000001ALL;
      v6 = ((v26 - 32) | 0x8000000000000000);
      goto LABEL_3;
  }

  v27 = sub_10031E958(0xD000000000000013, 0x800000010056FDB0);
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000AF9C(v28, qword_1006BA6D0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v31 = 136315138;
    type metadata accessor for CHRecentCallMediaType(0);
    v33 = String.init<A>(reflecting:)();
    v35 = sub_10002741C(v33, v34, &v36);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "Encountered undefined FaceTime media type %s", v31, 0xCu);
    sub_100395FFC(v32);
  }

  return v27;
}

uint64_t sub_100391698()
{
  swift_getObjectType();
  sub_10026D814(&qword_1006A7A18, &qword_100583368);
  v1 = String.init<A>(describing:)();
  if (*(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType))
  {
    v2 = 0x656E6F6850;
  }

  else
  {
    v2 = 0x656D695465636146;
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType))
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v6 = v1;

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  return v6;
}

id sub_100391760()
{
  v1 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_10031E958(0xD00000000000002CLL, 0x800000010056FC00);
  v2 = String._bridgeToObjectiveC()();

  [v1 setBody:v2];

  sub_10031E958(0xD00000000000002ALL, 0x800000010056FC30);
  v3 = String._bridgeToObjectiveC()();

  [v1 setTitle:v3];

  v4 = sub_100391698();
  sub_1004554A0(v4, v5, v1);
  v6 = String._bridgeToObjectiveC()();
  [v1 setCategoryIdentifier:v6];

  sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v7 = v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_receptionistOnboardingNotificationIdentifier;
  v8 = *(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_receptionistOnboardingNotificationIdentifier);
  v9 = *(v7 + 8);

  v10 = v1;
  v11 = sub_10044F628(v8, v9, v10, 0);
  [v11 setDestinations:6];

  return v11;
}

id sub_1003918EC()
{
  v1 = v0;
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057DEC0;
  v3 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 predicateForCallsWithAnyServiceProviders:isa];

  *(v2 + 32) = v5;
  v6 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportedMediaTypes);
  v7 = *(v6 + 16);
  if (v7)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      [objc_allocWithZone(NSNumber) initWithInteger:v9];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v7;
    }

    while (v7);
  }

  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v3 predicateForCallsWithAnyMediaTypes:v10];

  *(v2 + 40) = v11;
  v12 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportsDisplayingFaceTimeAudioCalls);

  LOBYTE(v12) = v12(v13);

  if ((v12 & 1) == 0)
  {
    v14 = [v3 predicateForFilteringOutFaceTimeAudioCalls];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

id sub_100391B64()
{
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057DEC0;
  *(v0 + 32) = sub_1003918EC();
  *(v0 + 40) = [objc_opt_self() predicateForCallsWithStatusRead:0];
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

id sub_100391C04(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057DEC0;
  *(v5 + 32) = sub_100391B64();
  v6 = objc_opt_self();
  static Date.+ infix(_:_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v8 = [v6 predicateForCallsBetweenStartDate:isa endDate:0];

  *(v5 + 40) = v8;
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

id sub_100391D88(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100583200;
  *(v5 + 32) = sub_1003918EC();
  v6 = objc_opt_self();
  *(v5 + 40) = [v6 predicateForCallsWithStatusRead:1];
  *(v5 + 48) = [v6 predicateForCallsWithStatusOriginated:0];
  static Date.+ infix(_:_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v8 = [v6 predicateForCallsBetweenStartDate:isa endDate:0];

  *(v5 + 56) = v8;
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

void sub_100391F48()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA6D0);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating call history badge count for notification provider %@", v11, 0xCu);
    sub_100009A04(v12, &unk_1006A2630, &qword_10057CB40);
  }

  v14 = &v8[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_updateBadgeValue];
  v15 = *&v8[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_updateBadgeValue];
  if (v15)
  {
    v16 = *(v14 + 1);

    v15(v17);
    sub_1000051F8(v15, v16);
  }
}

void sub_10039219C(_BYTE *a1, void *a2)
{
  v3 = *(sub_10039B864(a1) + 2);

  if (v3)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA6D0);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Skipping update of call history notification; InCallService process state is foreground running. %@", v7, 0xCu);
      sub_100009A04(v8, &unk_1006A2630, &qword_10057CB40);
    }
  }
}

uint64_t sub_100392310(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_100009B14(a1, v8);
  (*(v9 + 8))(v8, v9);
  v10 = type metadata accessor for Date();
  if (sub_100015468(v7, 1, v10) == 1)
  {
    sub_100009A04(v7, &qword_1006A3C70, &unk_10057EA80);
LABEL_5:
    v19 = 0;
    return v19 & 1;
  }

  v11 = Date.compare(_:)();
  (*(*(v10 - 8) + 8))(v7, v10);
  if (v11 != 1)
  {
    goto LABEL_5;
  }

  v12 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_pendingCallIdentifiers;
  swift_beginAccess();
  v13 = *(a3 + v12);
  v14 = a1[3];
  v15 = a1[4];
  sub_100009B14(a1, v14);
  v16 = *(v15 + 16);

  v17 = v16(v14, v15);
  LOBYTE(v16) = sub_1004226B4(v17, v18, v13);

  v19 = v16 ^ 1;
  return v19 & 1;
}

void *sub_100392500()
{
  if (sub_10000B6D0(_swiftEmptyArrayStorage))
  {
    sub_10039B204(_swiftEmptyArrayStorage, &qword_1006A7A10, &qword_100583360);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  v28 = v1;
  sub_10038A844();
  sub_100006AF0(0, &unk_1006A3C10, UNNotificationAction_ptr);
  sub_10031E958(0xD000000000000016, 0x800000010056FB60);
  sub_100006AF0(0, &unk_1006AB3C0, UNNotificationActionIcon_ptr);
  sub_100392948();
  sub_1003929A4();
  v3 = v2;
  sub_10000C510("ACTION_TITLE_SEND_MESSAGE");
  sub_100392948();
  sub_1003929A4();
  v5 = v4;
  sub_10000C510("ACTION_TITLE_BLOCK_CALLER");
  sub_100392948();
  sub_1003929A4();
  v7 = v6;
  v8 = [*(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_featureFlags) silencedCallNotificationBlockAndReportEnabled];
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v9 = swift_allocObject();
  if (v8)
  {
    *(v9 + 16) = xmmword_100581AB0;
    *(v9 + 32) = v3;
    *(v9 + 40) = v5;
    *(v9 + 48) = v7;
    v10 = v7;
  }

  else
  {
    *(v9 + 16) = xmmword_10057DEC0;
    *(v9 + 32) = v3;
    *(v9 + 40) = v5;
  }

  sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D690;
  *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v11 + 40) = v12;
  v26 = v3;
  v25 = v5;
  v13 = sub_1003890FC(0x436465776F6C6C61, 0xEB000000006C6C61, v9, v11, 2);
  sub_100005364();
  sub_1000357AC(v14, v15, v16);

  v17 = v13;
  sub_100005364();
  sub_1000357AC(v18, v19, v20);

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057D690;
  *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v21 + 40) = v22;
  v23 = sub_1003890FC(0x4364656B636F6C62, 0xEB000000006C6C61, _swiftEmptyArrayStorage, v21, 2);
  sub_1000357AC(&v27, v23, &unk_1006A7A00);

  return v28;
}

id sub_100392948()
{
  String._bridgeToObjectiveC()();
  sub_10039C4B0();
  v1 = [swift_getObjCClassFromMetadata() iconWithSystemImageName:v0];

  return v1;
}

void sub_1003929A4()
{
  sub_10003D4BC();
  sub_10039C438();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  [swift_getObjCClassFromMetadata() actionWithIdentifier:v2 title:v3 options:v1 icon:v0];

  sub_100035CE8();
}

uint64_t sub_100392A40()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedSystemShellSwitcher];
  v3 = [v2 isClarityBoardEnabled];

  if (v3)
  {
    sub_100009AB0(&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_contactStore], v19);
    sub_100006AF0(0, &unk_1006A79C0, CLFPhoneFaceTimeSettings_ptr);
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    v5 = [v4 outgoingCommunicationLimit];

    v6 = [objc_opt_self() sharedInstance];
    v7 = sub_10039BF00(v19, v6, v5, v1);

    sub_100395FFC(v19);
  }

  else
  {
    v8 = *&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 24];
    v9 = *&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 32];
    sub_100009B14(&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource], v8);
    v10 = sub_100391B64();
    v7 = (*(v9 + 8))(v10, v8, v9);

    if (qword_1006A0B70 != -1)
    {
      sub_10000860C(&qword_1006A0B70);
    }

    v11 = type metadata accessor for Logger();
    sub_1000075F0(v11, qword_1006BA6D0);
    v12 = v1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = sub_10000777C();
      *v15 = 138412802;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v7;
      *(v15 + 22) = 1024;
      *(v15 + 24) = 0;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "%@ count: %ld isAmbiguous: %{BOOL}d", v15, 0x1Cu);
      sub_100009A04(v16, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v16);
      sub_100005F40(v15);
    }
  }

  return v7;
}

void sub_100392CEC(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1006A0AF8 == -1)
    {
LABEL_5:
      v11 = type metadata accessor for Logger();
      sub_1000075F0(v11, qword_1006BA568);
      oslog = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v12, "Unable to block handles because handles are nil", v13, 2u);
        sub_100005F40(v13);
      }

      return;
    }

LABEL_61:
    sub_10000852C();
    swift_once();
    goto LABEL_5;
  }

  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_10000528C();
    sub_100006AF0(v2, v3, v4);
    sub_10000528C();
    sub_10039C15C(v5);
    Set.Iterator.init(_cocoa:)();
    v1 = v114[1];
    v7 = v114[2];
    v8 = v114[3];
    v9 = v114[4];
    v10 = v114[5];
  }

  else
  {
    sub_1000052DC();
    v7 = v1 + 56;
    v8 = ~v14;
    sub_1000082B4();
    v10 = v15 & v16;

    v9 = 0;
  }

  v109 = v8;
  v17 = (v8 + 64) >> 6;
  v18 = &selRef_setWindowed_;
  v110 = 136315138;
  *&v6 = 136315394;
  v107 = v6;
  v111 = v1;
  while (2)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr), swift_dynamicCast(), v25 = v114[0], v20 = v9, v23 = v10, !v114[0]))
      {
LABEL_59:
        sub_100022DDC(v1);
        return;
      }
    }

    else
    {
      v19 = v9;
      v20 = v9;
      if (!v10)
      {
        while (1)
        {
          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v20 >= v17)
          {
            goto LABEL_59;
          }

          ++v19;
          if (*(v7 + 8 * v20))
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_61;
      }

LABEL_17:
      sub_100007C8C();
      v23 = (v22 & v21);
      v25 = *(*(v1 + 48) + ((v20 << 9) | (8 * v24)));
      if (!v25)
      {
        goto LABEL_59;
      }
    }

    switch([v25 v18[470]])
    {
      case 0uLL:
      case 1uLL:

        v9 = v20;
        v10 = v23;
        continue;
      case 2uLL:
        v26 = sub_1004226A8(v25);
        osloga = v23;
        if (v27)
        {
          v28 = v26;
          v29 = v27;
          v30 = TUHomeCountryCode();
          if (v30)
          {
            v31 = v30;
            v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v33;
          }

          else
          {
            v32 = 0;
            v34 = 0;
          }

          v88 = objc_allocWithZone(TUPhoneNumber);

          v105 = v28;
          v89 = sub_100395B90(v28, v29, v32, v34);
          if (qword_1006A0AF8 != -1)
          {
            sub_10000852C();
            swift_once();
          }

          v90 = type metadata accessor for Logger();
          sub_1000075F0(v90, qword_1006BA568);
          v91 = v89;

          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.default.getter();

          v106 = v91;
          if (os_log_type_enabled(v92, v93))
          {
            v101 = v89;
            v94 = swift_slowAlloc();
            log = v92;
            v95 = sub_10000777C();
            v96 = sub_100005E84();
            v114[0] = v96;
            *v94 = v107;
            *(v94 + 4) = sub_10002741C(v105, v29, v114);
            *(v94 + 12) = 2112;
            *(v94 + 14) = v91;
            *v95 = v101;
            v97 = v91;
            _os_log_impl(&_mh_execute_header, log, v93, "Block phoneNumber: %s from notification, formatted phonenumber: %@", v94, 0x16u);
            sub_100009A04(v95, &unk_1006A2630, &qword_10057CB40);
            sub_100005F40(v95);
            sub_100395FFC(v96);
            v98 = v96;
            v18 = &selRef_setWindowed_;
            sub_100005F40(v98);
            sub_100005F40(v94);
          }

          else
          {
          }

          v1 = v111;
          v99 = [objc_opt_self() sharedPrivacyManager];
          if (!v99)
          {
            goto LABEL_63;
          }

          v100 = v99;

          [v100 setBlockIncomingCommunication:1 forPhoneNumber:v91];
        }

        else
        {
          if (qword_1006A0AF8 != -1)
          {
            sub_10000852C();
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          sub_1000075F0(v54, qword_1006BA568);
          v55 = v25;
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v56, v57))
          {
            sub_100005274();
            v58 = sub_10000681C();
            v66 = sub_100051654(v58, v59, v60, v61, v62, v63, v64, v65, v101, log, v105, v106, v107, *(&v107 + 1), v108, v109, v110);
            sub_100006AF0(v66, &unk_1006A3C20, CHHandle_ptr);
            v67 = v55;
            v68 = String.init<A>(reflecting:)();
            v70 = sub_10002741C(v68, v69, v114);

            *(v1 + 4) = v70;
            sub_10039C480(&_mh_execute_header, v56, v57, "Unable to block the phoneNumber handle %s because handle.normalizedValue = nil", v102);
            sub_100395FFC(v18);
            v71 = v18;
            v18 = &selRef_setWindowed_;
            sub_100005F40(v71);
            sub_10003DDFC();
          }

          else
          {
          }
        }

LABEL_55:
        v9 = v20;
        v10 = osloga;
        continue;
      case 3uLL:
        v35 = sub_1004226A8(v25);
        osloga = v23;
        if (!v36)
        {
          if (qword_1006A0AF8 != -1)
          {
            sub_10000852C();
            swift_once();
          }

          v72 = type metadata accessor for Logger();
          sub_1000075F0(v72, qword_1006BA568);
          v73 = v25;
          v47 = Logger.logObject.getter();
          v74 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v47, v74))
          {
            sub_100005274();
            v75 = sub_10000681C();
            v83 = sub_100051654(v75, v76, v77, v78, v79, v80, v81, v82, v101, log, v105, v106, v107, *(&v107 + 1), v108, v109, v110);
            sub_100006AF0(v83, &unk_1006A3C20, CHHandle_ptr);
            v84 = v73;
            v85 = String.init<A>(reflecting:)();
            v87 = sub_10002741C(v85, v86, v114);

            *(v1 + 4) = v87;
            sub_10039C480(&_mh_execute_header, v47, v74, "Unable to block the emailAddress handle %s because handle.normalizedValue = nil", v103);
            sub_100395FFC(v18);
            sub_100005F40(v18);
            sub_10003DDFC();
          }

          else
          {

LABEL_57:
          }

LABEL_58:
          v9 = v20;
          v10 = osloga;
          v18 = &selRef_setWindowed_;
          continue;
        }

        v37 = v35;
        v38 = v36;
        if (qword_1006A0AF8 != -1)
        {
          sub_10000852C();
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_1000075F0(v39, qword_1006BA568);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v40, v41))
        {
          sub_100005274();
          v42 = sub_10000681C();
          v114[0] = v42;
          *v1 = v110;
          *(v1 + 4) = sub_10002741C(v37, v38, v114);
          sub_10039C480(&_mh_execute_header, v40, v41, "Block emailAddress %s from notification", v101);
          sub_100395FFC(v42);
          sub_100005F40(v42);
          sub_10003DDFC();
        }

        v43 = [objc_opt_self() sharedPrivacyManager];
        if (v43)
        {
          v44 = v43;
          sub_10039BDF0(1, v37, v38, v43);

          goto LABEL_58;
        }

        __break(1u);
LABEL_63:
        __break(1u);
        return;
      default:
        osloga = v23;
        if (qword_1006A0AF8 != -1)
        {
          sub_10000852C();
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        sub_1000075F0(v45, qword_1006BA568);
        v46 = v25;
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v47, v48))
        {
          sub_100005274();
          v49 = sub_10000681C();
          v114[0] = v49;
          *v1 = v110;
          [v46 type];
          type metadata accessor for CHHandleType(0);
          v50 = String.init<A>(reflecting:)();
          v52 = sub_10002741C(v50, v51, v114);

          *(v1 + 4) = v52;
          v53 = v48;
          v18 = &selRef_setWindowed_;
          sub_10039C480(&_mh_execute_header, v47, v53, "unknown handle type: %s", v101);
          sub_100395FFC(v49);
          sub_100008AE8();
          sub_10003DDFC();

          goto LABEL_55;
        }

        goto LABEL_57;
    }
  }
}

void sub_100393664()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v23 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v15 = v14 - v13;
  sub_100009AB0(v2, v26);
  v16 = swift_allocObject();
  sub_10002F0C8(v26, v16 + 16);
  *(v16 + 56) = v0;
  v25[4] = sub_100394C78;
  v25[5] = v16;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  sub_10000A600();
  v25[2] = v17;
  v25[3] = &unk_10062B208;
  v18 = _Block_copy(v25);
  v19 = v0;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100022D34();
  sub_10000EFA8(v20);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  v21 = sub_100006958(&qword_1006A2CD0);
  sub_100008B50(&v24, v22, v21);
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v5 + 8))(v9, v3);
  (*(v11 + 8))(v15, v23);

  sub_100005EDC();
}

void sub_1003938C8(void *a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v4 - 8);
  v6 = &v65 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v69 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA6D0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v68 = a1;
    v15 = v7;
    v16 = v6;
    v17 = v14;
    v73[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10002741C(0xD000000000000020, 0x800000010056FB30, v73);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_100395FFC(v17);
    v6 = v16;
    v7 = v15;
    a1 = v68;
  }

  v18 = a1[3];
  v19 = a1[4];
  sub_100009B14(a1, v18);
  v77._countAndFlagsBits = (*(v19 + 8))(v18, v19);
  v20 = sub_10038A7F8(v77);
  if (v20 == 3)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    sub_10000AF9C(v10, qword_1006BA568);
    v69 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v69, v21, "Unknown notification response received", v22, 2u);
    }

    v23 = v69;
  }

  else
  {
    v24 = v20;
    v65 = v6;
    v66 = v7;
    v67 = a2;
    v68 = v8;
    v25 = *(a2 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 24);
    v26 = *(a2 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 32);
    sub_100009B14((a2 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource), v25);
    v27 = objc_opt_self();
    v29 = a1[3];
    v28 = a1[4];
    sub_100009B14(a1, v29);
    (*(v28 + 16))(v29, v28);
    v30 = String._bridgeToObjectiveC()();

    v31 = [v27 predicateForCallsWithUniqueID:v30];

    v32 = (*(v26 + 24))(v31, 1, v25, v26);
    sub_1002E9780(v32, &v71);

    if (v72)
    {
      sub_10002F0C8(&v71, v73);
      v33 = v68;
      if (v24)
      {
        if (v24 == 1)
        {
          v34 = v74;
          v35 = v75;
          sub_100009B14(v73, v74);
          v36 = (*(v35 + 96))(v34, v35);
          if (v36)
          {
            v37 = sub_1002E8D2C(v36);

            if (v37)
            {
              sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
              v38 = swift_allocObject();
              *(v38 + 16) = xmmword_10057D690;
              v39 = [v37 value];
              v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v42 = v41;

              *(v38 + 56) = &type metadata for String;
              *(v38 + 64) = sub_100009D88();
              *(v38 + 32) = v40;
              *(v38 + 40) = v42;
              String.init(format:_:)();
              v43 = v65;
              URL.init(string:)();

              v44 = v66;
              if (sub_100015468(v43, 1, v66) == 1)
              {

                sub_100009A04(v43, &unk_1006A52C0, &unk_10057D930);
              }

              else
              {
                v63 = v69;
                (v33[4])(v69, v43, v44);
                v64 = *(v67 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_openURL);

                v64(v63);

                (v33[1])(v63, v44);
              }
            }
          }
        }

        else
        {
          v58 = *(v67 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles);
          if (v58)
          {
            v59 = *(v67 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles + 8);
            v60 = v74;
            v61 = v75;
            sub_100009B14(v73, v74);
            v62 = *(v61 + 80);

            v62(v60, v61);
            v58();
            sub_1000051F8(v58, v59);
          }
        }
      }

      else
      {
        v56 = *(v67 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall);
        if (v56)
        {
          v57 = *(v67 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall + 8);

          v56(v73);
          sub_1000051F8(v56, v57);
        }
      }
    }

    else
    {
      sub_100009A04(&v71, &unk_1006A79B0, &qword_100583340);
      if (qword_1006A0AF8 != -1)
      {
        swift_once();
      }

      sub_10000AF9C(v10, qword_1006BA568);
      sub_100009AB0(a1, v73);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v70 = v48;
        *v47 = 136315138;
        v49 = v74;
        v50 = v75;
        sub_100009B14(v73, v74);
        *&v71 = (*(v50 + 16))(v49, v50);
        *(&v71 + 1) = v51;
        v52 = String.init<A>(reflecting:)();
        v54 = v53;
        sub_100395FFC(v73);
        v55 = sub_10002741C(v52, v54, &v70);

        *(v47 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v45, v46, "Could not find recent call with identifier: %s", v47, 0xCu);
        sub_100395FFC(v48);

        return;
      }
    }

    sub_100395FFC(v73);
  }
}

uint64_t type metadata accessor for CallHistoryNotificationProvider(uint64_t a1)
{
  result = qword_1006A7938;
  if (!qword_1006A7938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100394314(uint64_t a1)
{
  sub_100316450(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100394448()
{
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA6D0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Call interactions changed", v3, 2u);
    sub_100008AE8();
  }

  sub_10038CD10();
}

void sub_100394574()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v31 = v4;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v29 = v10;
  v30 = v9;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = type metadata accessor for Notification();
  sub_100007FEC();
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v28[1] = *&v0[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue];
  (*(v16 + 16))(v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v14);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  (*(v16 + 32))(v21 + v20, v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v33[4] = sub_10039C270;
  v33[5] = v21;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 1107296256;
  sub_10000A600();
  v33[2] = v22;
  v33[3] = &unk_10062B2D0;
  v23 = _Block_copy(v33);
  v24 = v0;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100022D34();
  sub_10000EFA8(v25);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  v26 = sub_100006958(&qword_1006A2CD0);
  sub_100008B50(&v32, v27, v26);
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v31 + 8))(v8, v3);
  (*(v29 + 8))(v13, v30);

  sub_100005EDC();
}

void sub_100394874(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA6D0);
  (*(v5 + 16))(v7, a2, v4);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v14 = v9;
    v21 = Notification.name.getter();
    type metadata accessor for Name(0);
    v15 = String.init<A>(reflecting:)();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = sub_10002741C(v15, v17, &v22);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%@ is handling %s", v12, 0x16u);
    sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);

    sub_100395FFC(v20);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_100391F48();
}

uint64_t sub_100394C84()
{
  swift_getObjectType();
  v9 = _typeName(_:qualified:)();
  v0._countAndFlagsBits = 40;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  _StringGuts.grow(_:)(21);

  v1._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v1);

  sub_100008384();
  v2._countAndFlagsBits = 0xD000000000000012;
  v2._object = 0x800000010056FE30;
  String.append(_:)(v2);

  _StringGuts.grow(_:)(24);

  sub_10026D814(&unk_1006A7B90, &unk_100583470);
  v3._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v3);

  sub_100008384();
  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x800000010056FE50;
  String.append(_:)(v4);

  _StringGuts.grow(_:)(23);

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v5._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v5);

  sub_100008384();
  v6._countAndFlagsBits = 0xD000000000000014;
  v6._object = 0x800000010056FE70;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9;
}

uint64_t sub_100394EAC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_100009B14(a1, v7);
  result = (*(v8 + 104))(v7, v8);
  if (result)
  {
    v10 = sub_1002E8D2C(result);

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;
          if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
          {
          }

          else
          {
            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v22 & 1) == 0)
            {
              v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v25 = v24;
              if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
              {

                return 1;
              }

              v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v28)
              {

                return 1;
              }

              if (qword_1006A0B48 != -1)
              {
                swift_once();
              }

              v34 = type metadata accessor for Logger();
              sub_10000AF9C(v34, qword_1006BA658);
              v35 = Logger.logObject.getter();
              v36 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                *v37 = 0;
                _os_log_impl(&_mh_execute_header, v35, v36, "Unhandled outgoing communication limit", v37, 2u);
              }

              return 0;
            }
          }

          v31 = sub_1003951DC();
          v32 = sub_1003953F4(v31, a4);
          v33 = sub_10000B6D0(v32);

          return v33 > 0;
        }
      }

      v29 = sub_1003951DC();
      v30 = sub_100395304(v29, a4, a5);

      return v30 & 1;
    }

    return 0;
  }

  return result;
}

id sub_1003951DC()
{
  v1 = [v0 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = String.count.getter();

  if (v2 < 1)
  {
    return 0;
  }

  if ([v0 type] >= 4)
  {
    type metadata accessor for CHHandleType(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v3 = [v0 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000112D0();
    return sub_100389560(v4, v5);
  }

  return result;
}

id sub_100395304(void *a1, void *a2, void *a3)
{
  v4 = sub_1003953F4(a1, a2);
  v5 = sub_10000B6D0(v4);
  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  while (1)
  {
    v8 = v6;
    if (v5 == v6)
    {
LABEL_9:

      return (v5 != v8);
    }

    sub_100024D54(v6, v7 == 0, v4);
    result = v7 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v4 + 8 * v8 + 32);
    v10 = result;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v11 = a3[3];
    v12 = a3[4];
    sub_100009B14(a3, v11);
    LOBYTE(v11) = sub_1003C3D54(v10, v11, v12);

    v6 = v8 + 1;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003953F4(void *a1, void *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  sub_10026D814(&unk_1006A79E0, &unk_10057DD90);
  v4 = Dictionary.init(dictionaryLiteral:)();
  v5 = a2[3];
  v6 = a2[4];
  sub_100009B14(a2, v5);
  v7 = [v3 value];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v48 = v3;
  v18 = (*(v6 + 8))(v8, v10, v5, v6);

  v19 = v18;
LABEL_7:
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  v26 = _swiftEmptyArrayStorage;
  v49 = v19;
  v51 = v24;
  v52 = v19 + 64;
  while (v23)
  {
LABEL_15:
    v28 = *(*(v19 + 56) + ((v25 << 9) | (8 * __clz(__rbit64(v23)))));
    if (v28 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v26 >> 62;
    if (v26 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = v29;
    v31 = __OFADD__(v30, v29);
    v32 = v30 + v29;
    if (v31)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      swift_once();
      v11 = type metadata accessor for Logger();
      sub_10000AF9C(v11, qword_1006BA658);
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      v19 = v4;
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v16;
        *v15 = v16;
        _os_log_impl(&_mh_execute_header, v12, v13, "Contact fetch failed with the following error %@", v14, 0xCu);
        sub_100009A04(v15, &unk_1006A2630, &qword_10057CB40);
      }

      else
      {
      }

      goto LABEL_7;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v4)
      {
        v33 = v26;
        v34 = v26 & 0xFFFFFFFFFFFFFF8;
        if (v32 <= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else if (!v4)
    {
      goto LABEL_27;
    }

    _CocoaArrayWrapper.endIndex.getter();
LABEL_27:
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v34 = v33 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
    v55 = v33;
    v23 &= v23 - 1;
    v35 = *(v34 + 16);
    v4 = (*(v34 + 24) >> 1) - v35;
    v36 = v34 + 8 * v35;
    v53 = v34;
    if (v28 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
      if (!v38)
      {
        goto LABEL_42;
      }

      v39 = v38;
      v40 = _CocoaArrayWrapper.endIndex.getter();
      if (v4 < v40)
      {
        goto LABEL_52;
      }

      if (v39 < 1)
      {
        goto LABEL_53;
      }

      v50 = v40;
      v41 = v36 + 32;
      sub_10039C0F4(&qword_1006A79F0);
      for (i = 0; i != v39; ++i)
      {
        v43 = sub_100024CFC(v56, i, v28);
        v45 = *v44;
        v43(v56, 0);
        *(v41 + 8 * i) = v45;
      }

      v19 = v49;
      v4 = v50;
LABEL_38:

      v26 = v55;
      v24 = v51;
      v20 = v52;
      if (v4 < v54)
      {
        goto LABEL_49;
      }

      if (v4 > 0)
      {
        v46 = *(v53 + 16);
        v31 = __OFADD__(v46, v4);
        v47 = v46 + v4;
        if (v31)
        {
          goto LABEL_50;
        }

        *(v53 + 16) = v47;
      }
    }

    else
    {
      v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        if (v4 < v37)
        {
          goto LABEL_51;
        }

        v4 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100006AF0(0, &unk_1006AB420, CNContact_ptr);
        swift_arrayInitWithCopy();
        goto LABEL_38;
      }

LABEL_42:

      v26 = v55;
      v24 = v51;
      v20 = v52;
      if (v54 > 0)
      {
        goto LABEL_49;
      }
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v27 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v27);
    ++v25;
    if (v23)
    {
      v25 = v27;
      goto LABEL_15;
    }
  }

  return v26;
}

uint64_t sub_1003959AC()
{
  v3 = sub_10039BD00(v1);
  if (v3)
  {
    v0 = v3;
    sub_10001E550();
    sub_10039C4B0();
    if (!v2)
    {
      return 1;
    }
  }

  result = sub_10039BD00(v1);
  if (result)
  {
    sub_1002E8D2C(result);
    sub_100005F0C();

    if (v0)
    {
      v5 = [v0 value];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String.count.getter();

      return v6 == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100395A70()
{
  v1 = [v0 ttyType];
  if (v1 < 3)
  {
    return v1 + 1;
  }

  type metadata accessor for CHRecentCallTTYType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_100395AD8()
{
  sub_10003D4BC();
  v2 = v1;
  v4 = v3;
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10039C15C(&qword_1006A3C50);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v0 initWithConversationLink:v4 otherInvitedHandles:isa sendLetMeInRequest:v2 & 1];

  sub_100035CE8();
}

id sub_100395B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithDigits:v6 countryCode:v7];

  return v8;
}

id sub_100395C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10039C15C(&qword_1006A2660);
  isa = Set._bridgeToObjectiveC()().super.isa;

  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10039C15C(&qword_1006A3C50);
  v6 = Set._bridgeToObjectiveC()().super.isa;

  v7 = [v3 initWithRemoteMembers:isa otherInvitedHandles:v6 originatingUIType:a3];

  return v7;
}

char *sub_100395D70(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

char *sub_100395D94(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

char *sub_100395E08(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

void sub_100395E38(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_100007710();
  if (v9 < v8 || (a4(0), sub_100008070(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    sub_10001140C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_10001140C();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_100395F24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_100007710();
  if (v11 < v10 || (sub_10026D814(a4, a5), sub_100008070(), v6 + *(v12 + 72) * v5 <= a3))
  {
    sub_10026D814(a4, a5);
    sub_10001140C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    sub_10001140C();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_100395FFC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_1000089A8(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100396044(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10057F880;
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

BOOL sub_1003960CC(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._finalize()();
  v5 = v4 + 56;
  v6 = v4;
  sub_1000052DC();
  v9 = ~v8;
  while (1)
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(v5 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *v24;

      sub_100397FB0(a2, v10, isUniquelyReferenced_nonNull_native);
      *v24 = v27;
      v16 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v16;
      *(a1 + 32) = a2[4];
      return v11 == 0;
    }

    v12 = *(*(v6 + 48) + 40 * v10 + 32);
    Hasher.init(_seed:)();

    String.hash(into:)();
    sub_10001AC50();
    String.hash(into:)();
    Hasher._combine(_:)(v12);
    v13 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v3);
    v14 = Hasher._finalize()();

    if (v13 == v14)
    {
      break;
    }

    v7 = v10 + 1;
  }

  v17 = (*(v6 + 48) + 40 * v10);
  v19 = *v17;
  v18 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v22 = v17[4];
  *a1 = v19;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;

  return v11 == 0;
}

uint64_t sub_1003963F8(uint64_t a1, Swift::Int a2, char a3)
{
  sub_10039C460();
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    v8 = a2;
  }

  Hasher._combine(_:)(v8);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v5 + 32);
  v11 = v9 & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v5 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v15 == 1)
      {
        if (a3)
        {
          result = 0;
          a2 = v14;
          goto LABEL_13;
        }
      }

      else if ((a3 & 1) == 0 && v14 == a2)
      {
        result = 0;
        goto LABEL_13;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v4;
  sub_1003981F4(a2, a3 & 1, v11, isUniquelyReferenced_nonNull_native);
  *v4 = v18;
  result = 1;
  LOBYTE(v15) = a3;
LABEL_13:
  *v3 = a2;
  *(v3 + 8) = v15 & 1;
  return result;
}

void sub_10039653C()
{
  sub_100005EF4();
  v3 = type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  sub_100017EE0();
  sub_10002F688();
  v6 = sub_10000EFA8(v5);
  sub_10000B994(v6);
  sub_1000052DC();
  sub_100022E1C();
  do
  {
    sub_100016FC0();
    if (v7)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_100006E74();
      v12(v11);
      v13 = sub_10004A00C();
      sub_100398388(v13, v14, v15);
      v16 = sub_10000BBF4();
      v17(v16);
      goto LABEL_7;
    }

    v8 = sub_100007A18();
    v2(v8);
    sub_10002F688();
    v9 = sub_10000EFA8(&qword_1006A2620);
    sub_100033390(v9);
    v10 = sub_10001CA08();
    v1(v10);
  }

  while ((v0 & 1) == 0);
  (v1)(v19, v3);
  v18 = sub_100021F90();
  v2(v18);
LABEL_7:
  sub_100005EDC();
}

void sub_1003966D8()
{
  sub_100005EF4();
  v3 = type metadata accessor for Participant();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  sub_100017EE0();
  sub_10000C24C();
  v6 = sub_10000EFA8(v5);
  sub_10000B994(v6);
  sub_1000052DC();
  sub_100022E1C();
  do
  {
    sub_100016FC0();
    if (v7)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_100006E74();
      v12(v11);
      v13 = sub_10004A00C();
      sub_100398638(v13, v14, v15);
      v16 = sub_10000BBF4();
      v17(v16);
      goto LABEL_7;
    }

    v8 = sub_100007A18();
    v2(v8);
    sub_10000C24C();
    v9 = sub_10000EFA8(&unk_1006A8F00);
    sub_100033390(v9);
    v10 = sub_10001CA08();
    v1(v10);
  }

  while ((v0 & 1) == 0);
  (v1)(v19, v3);
  v18 = sub_100021F90();
  v2(v18);
LABEL_7:
  sub_100005EDC();
}

void sub_100396920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000D698();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v10;
  v19 = v18;
  v21 = v20;
  v22 = *v10;
  static Hasher._hash(seed:_:)();
  sub_100035D14();
  while (1)
  {
    v27 = v23 & v25;
    if (((v26 << (v23 & v25)) & *(v24 + (((v23 & v25) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    if (*(*(v22 + 48) + 8 * v27) == v19)
    {
      goto LABEL_6;
    }

    v23 = v27 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_10039C424();
  sub_1003988E8(v19, v27, v28, v16, v14, v12);
  *v17 = a10;
LABEL_6:
  *v21 = v19;
  sub_100006048();
}

void sub_100396A28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10039C438();
    sub_10039C498(v2, v3, v4, v5);
    v6 = static _SetStorage.convert(_:capacity:)();
    v18 = v6;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return;
      }

      sub_10001AC50();
      sub_100006AF0(v7, v8, v9);
      swift_dynamicCast();
      if (*(v6 + 24) <= *(v6 + 16))
      {
        sub_100005364();
        sub_100397DE8();
      }

      v6 = v18;
      v10 = NSObject._rawHashValue(seed:)(*(v18 + 40)) & ~(-1 << *(v18 + 32));
      if (((-1 << v10) & ~*(v18 + 56 + 8 * (v10 >> 6))) == 0)
      {
        break;
      }

      sub_100018658();
LABEL_13:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v18 + 48) + 8 * v12) = v17;
      ++*(v18 + 16);
    }

    sub_100035E64();
    while (v13 + 1 != v15 || (v14 & 1) == 0)
    {
      sub_10003EA94();
      if (!v16)
      {
        sub_10003DC00();
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100396BF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10026D814(&unk_1006A7A40, &unk_100583390);
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
      sub_100396044(0, (v28 + 63) >> 6, v3 + 56);
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

uint64_t sub_100396E54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10026D814(&qword_1006A7C50, &qword_1005834F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v32 = v1;
  v33 = v3;
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
        v34 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_100396044(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_12:
    v16 = (*(v3 + 48) + 40 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = v16[4];
    Hasher.init(_seed:)();
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v21);
    result = Hasher._finalize()();
    v22 = -1 << *(v5 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v5 + 48) + 40 * v25);
    *v30 = v17;
    v30[1] = v18;
    v30[2] = v19;
    v30[3] = v20;
    v30[4] = v21;
    ++*(v5 + 16);
    v3 = v33;
    v10 = v34;
    if (!v34)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v12 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1003970F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10026D814(&unk_1006A7A30, &qword_100583380);
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
      sub_100396044(0, (v9 + 63) >> 6, v3 + 56);
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
    v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
    result = static Hasher._hash(seed:bytes:count:)();
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
    *(*(v5 + 48) + 4 * v20) = v16;
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

uint64_t sub_100397320(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10026D814(&qword_1006A7C08, &qword_1005834B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_30:

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
        goto LABEL_32;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_100396044(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 16 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    Hasher.init(_seed:)();
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      v19 = v17;
    }

    Hasher._combine(_:)(v19);
    result = Hasher._finalize()();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 16 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100397598(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10026D814(&unk_1006A7BC8, &qword_100583490);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100396044(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000EFA8(&qword_1006A3BE0);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1003978F0(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Participant();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10026D814(&qword_1006A7C68, &unk_100583510);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_100396044(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_10000EFA8(&unk_1006A4860);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_100397C5C()
{
  sub_10000D698();
  sub_10000FE58(v2, v3, v4);
  sub_10001140C();
  v6 = v5;
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000670C();
  if (!v7)
  {
LABEL_28:

    *v0 = v6;
    sub_100006048();
    return;
  }

  v8 = 0;
  v10 = (v1 + 56);
  v9 = *(v1 + 56);
  v11 = 1 << *(v1 + 32);
  v31 = v0;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = v6 + 56;
  if ((v12 & v9) == 0)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= ((v11 + 63) >> 6))
      {
        break;
      }

      ++v16;
      if (v10[v8])
      {
        sub_100007C8C();
        v13 = v18 & v17;
        goto LABEL_12;
      }
    }

    if (v11 >= 64)
    {
      v28 = sub_100008AB0();
      sub_100396044(v28, v29, v30);
    }

    else
    {
      *v10 = -1 << v11;
    }

    v0 = v31;
    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    sub_10039C410();
LABEL_12:
    v19 = *(*(v1 + 48) + 8 * (v15 | (v8 << 6)));
    v20 = static Hasher._hash(seed:_:)() & ~(-1 << *(v6 + 32));
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    sub_10000FE84();
LABEL_22:
    sub_100007DC0();
    *(v14 + v25) |= v26;
    *(*(v6 + 48) + 8 * v27) = v19;
    ++*(v6 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  sub_10000E7C0();
  while (1)
  {
    sub_100007A0C();
    if (v24)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v14 + 8 * v21) != -1)
    {
      sub_10000A950();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_100397DE8()
{
  sub_100005EF4();
  sub_10000FE58(v6, v7, v8);
  sub_10001140C();
  v9 = static _SetStorage.resize(original:capacity:move:)();
  if (!*(v1 + 16))
  {
LABEL_25:

    *v0 = v9;
    sub_100005EDC();
    return;
  }

  sub_10000FAC4();
  v10 = v9 + 56;
  if (!v4)
  {
LABEL_4:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= v5)
      {
        break;
      }

      ++v12;
      if (v2[v3])
      {
        sub_100007C8C();
        v4 = v14 & v13;
        goto LABEL_9;
      }
    }

    v23 = 1 << *(v1 + 32);
    if (v23 >= 64)
    {
      sub_100396044(0, (v23 + 63) >> 6, v2);
    }

    else
    {
      sub_1000052DC();
      *v2 = v24;
    }

    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_100035B9C();
LABEL_9:
    v15 = *(*(v1 + 48) + 8 * (v11 | (v3 << 6)));
    NSObject._rawHashValue(seed:)(*(v9 + 40));
    sub_100006BFC();
    if (v16)
    {
      break;
    }

    sub_10000FE84();
LABEL_19:
    sub_100007DC0();
    *(v10 + v20) |= v21;
    *(*(v9 + 48) + 8 * v22) = v15;
    sub_10003FB9C();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_10000E7C0();
  while (1)
  {
    sub_100007A0C();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    if (v17 == v19)
    {
      v17 = 0;
    }

    if (*(v10 + 8 * v17) != -1)
    {
      sub_10000A950();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_100397F38()
{
  sub_100007710();
  NSObject._rawHashValue(seed:)(*(v2 + 40));
  sub_1000052DC();
  _HashTable.nextHole(atOrAfter:)();
  sub_100006F34();
  *(v0 + 56 + v5) |= v4 << v3;
  *(*(v0 + 48) + 8 * v3) = v1;
  ++*(v0 + 16);
}

void sub_100397FB0(Swift::Int result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100396E54(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1003994D0(v6 + 1);
LABEL_8:
      v23 = v3;
      v24 = result;
      v8 = *(result + 32);
      v9 = *v3;
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v8);
      v10 = Hasher._finalize()();
      v11 = v9 + 56;
      v12 = v9;
      v13 = ~(-1 << *(v9 + 32));
      while (1)
      {
        a2 = v10 & v13;
        if (((*(v11 + (((v10 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v13)) & 1) == 0)
        {
          break;
        }

        v14 = *(*(v12 + 48) + 40 * a2 + 32);
        Hasher.init(_seed:)();

        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(v14);
        v15 = Hasher._finalize()();
        Hasher.init(_seed:)();
        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(v8);
        v16 = Hasher._finalize()();

        if (v15 == v16)
        {
          goto LABEL_16;
        }

        v10 = a2 + 1;
      }

      v3 = v23;
      result = v24;
      goto LABEL_13;
    }

    sub_100398AD0();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48) + 40 * a2;
  v19 = *(result + 16);
  *v18 = *result;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(result + 32);
  v20 = *(v17 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v22;
  }
}

Swift::Int sub_1003981F4(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100397320(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_100398F34();
        goto LABEL_19;
      }

      sub_100399948(v8 + 1);
    }

    v10 = *v4;
    Hasher.init(_seed:)();
    if (a2)
    {
      v11 = 0;
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      v11 = v7;
    }

    Hasher._combine(_:)(v11);
    result = Hasher._finalize()();
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      do
      {
        v14 = *(v10 + 48) + 16 * a3;
        if (*(v14 + 8) == 1)
        {
          if (a2)
          {
            goto LABEL_22;
          }
        }

        else if ((a2 & 1) == 0 && *v14 == v7)
        {
          goto LABEL_22;
        }

        a3 = (a3 + 1) & v13;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_19:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(v15 + 48) + 16 * a3;
  *v16 = v7;
  *(v16 + 8) = a2 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_22:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

uint64_t sub_100398388(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100397598(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100399B90(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10000EFA8(&qword_1006A3BE0);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10000EFA8(&qword_1006A2620);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1003990D4();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_100398638(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for Participant();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1003978F0(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_100399EA8(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_10000EFA8(&unk_1006A4860);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_10000EFA8(&unk_1006A8F00);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_1003990D4();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_1003988E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10039C3E8();
  if (!(!v15 & v14) || (v9 & 1) == 0)
  {
    if (v9)
    {
      sub_10000BA78(v12);
      sub_100397C5C();
      goto LABEL_11;
    }

    if (v13 <= v12)
    {
      sub_10000BA78(v12);
      sub_10039A1C0();
LABEL_11:
      v21 = *v7;
      v22 = static Hasher._hash(seed:_:)();
      v23 = ~(-1 << *(v21 + 32));
      while (1)
      {
        a2 = v22 & v23;
        if (((*(v21 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v21 + 48) + 8 * a2) == v6)
        {
          goto LABEL_16;
        }

        v22 = a2 + 1;
      }
    }

    sub_1003992FC(v10, v11);
  }

LABEL_8:
  sub_10039C3D4();
  *(v17 + 8 * a2) = v6;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }
}

void sub_1003989F8()
{
  sub_10003D4BC();
  sub_10026D814(&unk_1006A7A40, &unk_100583390);
  sub_10039C394();
  sub_10000670C();
  if (v6)
  {
    v7 = sub_10000E7D4();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v2, 8 * v8);
    }

    sub_10000C7A0();
    while (v5)
    {
      sub_100035B9C();
LABEL_15:
      v16 = v12 | (v3 << 6);
      v17 = (*(v1 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = (v0[6] + 16 * v16);
      *v19 = *v17;
      v19[1] = v18;
    }

    v13 = v3;
    while (1)
    {
      v3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v2 + v3))
      {
        sub_100007C8C();
        v5 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    sub_100035CE8();
  }
}

void sub_100398AD0()
{
  v1 = v0;
  sub_10026D814(&qword_1006A7C50, &qword_1005834F8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 5 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = (*(v4 + 48) + 8 * v17);
        *v24 = v20;
        v24[1] = v19;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_100398C58()
{
  v1 = v0;
  sub_10026D814(&unk_1006A7A30, &qword_100583380);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100398D98()
{
  v1 = v0;
  sub_10026D814(&unk_1006A7B80, &qword_100583460);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 9 * v17;
        v19 = (*(v2 + 48) + 72 * v17);
        memcpy(__dst, v19, sizeof(__dst));
        memmove((*(v4 + 48) + 8 * v18), v19, 0x48uLL);
        result = sub_10001C174(__dst, &v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100398F34()
{
  v1 = v0;
  sub_10026D814(&qword_1006A7C08, &qword_1005834B8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(v4 + 48) + 16 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1003990D4()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6(0);
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  sub_10026D814(v4, v2);
  v13 = *v0;
  v14 = static _SetStorage.copy(original:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v5;
    v16 = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 56 + 8 * v17)
    {
      memmove(v16, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v31 = v9 + 32;
    v32 = v9 + 16;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v28 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v28, v7);
      (*(v9 + 32))(*(v15 + 48) + v28, v12, v7);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v5 = v30;
        goto LABEL_21;
      }

      ++v25;
      if (*(v13 + 56 + 8 * v19))
      {
        sub_100007C8C();
        v22 = v27 & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v15;
    sub_100005EDC();
  }
}

void *sub_1003992FC(uint64_t *a1, uint64_t *a2)
{
  sub_10026D814(a1, a2);
  sub_10039C394();
  sub_10000670C();
  if (v5)
  {
    result = sub_10000E7D4();
    if (v9)
    {
      v10 = result >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      result = memmove(result, v4, 8 * v7);
    }

    v11 = 0;
    v2[2] = *(v3 + 16);
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 56);
    for (i = (v12 + 63) >> 6; v14; *(v2[6] + 8 * v17) = *(*(v3 + 48) + 8 * v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v4 + v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v2;
  }

  return result;
}

void sub_1003993FC()
{
  sub_10003D4BC();
  sub_10026D814(v6, v7);
  sub_10039C394();
  sub_10000670C();
  if (v8)
  {
    v9 = sub_10000E7D4();
    if (v12)
    {
      v13 = v9 >= v11;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      memmove(v9, v2, 8 * v10);
    }

    sub_10000C7A0();
    for (; v5; v20 = v19)
    {
      sub_100035B9C();
LABEL_15:
      v18 = v14 | (v3 << 6);
      v19 = *(*(v1 + 48) + 8 * v18);
      *(v0[6] + 8 * v18) = v19;
    }

    v15 = v3;
    while (1)
    {
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v2 + v3))
      {
        sub_100007C8C();
        v5 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
    sub_100035CE8();
  }
}

Swift::Int sub_1003994D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10026D814(&qword_1006A7C50, &qword_1005834F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v33 = (v10 - 1) & v10;
LABEL_12:
        v16 = (*(v3 + 48) + 40 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v20 = v16[2];
        v19 = v16[3];
        v21 = v16[4];
        Hasher.init(_seed:)();

        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(v21);
        result = Hasher._finalize()();
        v22 = -1 << *(v5 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v5 + 48) + 40 * v25);
        *v30 = v17;
        v30[1] = v18;
        v30[2] = v20;
        v30[3] = v19;
        v30[4] = v21;
        ++*(v5 + 16);
        v3 = v32;
        v10 = v33;
        if (!v33)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v31;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v33 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100399758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10026D814(&unk_1006A7A30, &qword_100583380);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 4 * (v12 | (v6 << 6)));
        result = static Hasher._hash(seed:bytes:count:)();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 4 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100399948(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10026D814(&qword_1006A7C08, &qword_1005834B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v3 + 48) + 16 * (v12 | (v6 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        Hasher.init(_seed:)();
        if (v17)
        {
          v18 = 0;
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v18 = v16;
        }

        Hasher._combine(_:)(v18);
        result = Hasher._finalize()();
        v19 = -1 << *(v5 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = *(v5 + 48) + 16 * v22;
        *v27 = v16;
        *(v27 + 8) = v17;
        ++*(v5 + 16);
        if (!v9)
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
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_28;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100399B90(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10026D814(&unk_1006A7BC8, &qword_100583490);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000EFA8(&qword_1006A3BE0);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}