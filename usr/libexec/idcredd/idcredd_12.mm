uint64_t sub_100156E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_100156EF8, 0, 0);
}

uint64_t sub_100156EF8()
{
  v1 = v0[10];
  v15 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = swift_allocObject();
  v0[12] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = sub_100157F5C;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v15, v9, v2);

  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
  *v11 = v0;
  v11[1] = sub_1001570A4;
  v13 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_100157F74, v8, v12);
}

uint64_t sub_1001570A4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    (*(*(v2 + 80) + 8))(*(v2 + 88), *(v2 + 72));

    v3 = sub_100157F98;
  }

  else
  {
    v5 = *(v2 + 80);
    v4 = *(v2 + 88);
    v6 = *(v2 + 72);

    (*(v5 + 8))(v4, v6);
    *(v2 + 128) = *(v2 + 16);
    v3 = sub_100157FA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

unint64_t sub_100157224()
{
  _StringGuts.grow(_:)(29);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001BLL;
}

uint64_t sub_1001572B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_10015737C, 0, 0);
}

uint64_t sub_10015737C()
{
  v1 = v0[10];
  v15 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = swift_allocObject();
  v0[12] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = sub_100157CE0;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v15, v9, v2);

  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
  *v11 = v0;
  v11[1] = sub_100157528;
  v13 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_100157D38, v8, v12);
}

uint64_t sub_100157528()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    (*(*(v2 + 80) + 8))(*(v2 + 88), *(v2 + 72));

    v3 = sub_100157718;
  }

  else
  {
    v5 = *(v2 + 80);
    v4 = *(v2 + 88);
    v6 = *(v2 + 72);

    (*(v5 + 8))(v4, v6);
    *(v2 + 128) = *(v2 + 16);
    v3 = sub_1001576A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001576A8()
{
  **(v0 + 32) = *(v0 + 128);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100157718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100157788(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000104D4;

  return sub_1001572B4(a1, a2, v6, v7, v8);
}

void sub_10015784C(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_10016A520(a1, a2);
  if (v4)
  {
    return;
  }

  v7 = v6;
  sub_100059DE4();
  if (v8 >> 62)
  {
    v15 = v8;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v15;
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_12:

    *a4 = 0;
    a4[1] = 0;
    return;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 identifier];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {

    v12 = 0;
    v14 = 0;
  }

  *a4 = v12;
  a4[1] = v14;
}

uint64_t sub_1001579B0(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 32) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 40) = v5;
  *v5 = v3;
  v5[1] = sub_100157AB0;

  return v7(v3 + 16, v4);
}

uint64_t sub_100157AB0()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 32) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_100157BC0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000105C8;

  return sub_1001579B0(a1, a2, v6);
}

uint64_t sub_100157D00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100157D54()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100157D94(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000105C8;

  return sub_100156E30(a1, a2, v6, v7, v8);
}

unint64_t sub_100157E60()
{
  result = qword_100203CA8;
  if (!qword_100203CA8)
  {
    sub_100021ED0(&qword_100201070, &unk_1001AD2D0);
    sub_100157F14(&qword_100202BE8, &type metadata accessor for COSEKey, &protocol conformance descriptor for COSEKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100203CA8);
  }

  return result;
}

uint64_t sub_100157F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100157FA8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001580F4, 0, 0);
}

uint64_t sub_1001580F4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  static IDCSSignposts.consistencyCheckTotal.getter();
  DIPSignpost.init(_:)();
  v4 = swift_allocObject();
  v0[13] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_allocObject();
  v0[14] = v5;
  *(v5 + 16) = &unk_1001AEA00;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[15] = v6;
  type metadata accessor for DCCredentialCompletenessResult(0);
  *v6 = v0;
  v6[1] = sub_10015825C;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 2, &unk_1001AEA10, v5, v7);
}

uint64_t sub_10015825C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100158444;
  }

  else
  {

    *(v2 + 136) = *(v2 + 16);
    v3 = sub_100158388;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100158388()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[17];

  return v4(v5);
}

uint64_t sub_100158444()
{
  v2 = v0[11];
  v1 = v0[12];
  v8 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10016032C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100158624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001586EC, 0, 0);
}

uint64_t sub_1001586EC()
{
  v1 = v0[15];
  v15 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = swift_allocObject();
  v0[17] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v6;
  v8 = swift_allocObject();
  v0[18] = v8;
  *(v8 + 16) = sub_10015A9C8;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v15, v9, v2);

  v11 = swift_task_alloc();
  v0[19] = v11;
  type metadata accessor for DCCredentialCompletenessResult(0);
  *v11 = v0;
  v11[1] = sub_10015888C;
  v13 = v0[16];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 8, v13, sub_10001BF74, v8, v12);
}

uint64_t sub_10015888C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    (*(v2[15] + 8))(v2[16], v2[14]);

    v3 = sub_100158DC8;
  }

  else
  {
    v5 = v2[15];
    v4 = v2[16];
    v6 = v2[14];

    (*(v5 + 8))(v4, v6);
    v2[21] = v2[8];
    v3 = sub_100158A0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100158A0C()
{
  v1 = *(v0[11] + 112);
  v0[22] = v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_100158AB4;
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];

  return sub_10015AA20(v4, v3, v1, v5);
}

uint64_t sub_100158AB4(char a1)
{
  v3 = *v2;
  *(v3 + 32) = v1;
  *(v3 + 24) = a1;
  *(v3 + 16) = v2;
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 192) = v7;
    *v7 = v4;
    v7[1] = sub_100158C44;
    v8 = *(v3 + 176);
    v9 = *(v3 + 104);
    v10 = *(v3 + 80);
    v11 = *(v3 + 96);

    return sub_10015BA80(v11, v9, v8, v10);
  }
}

uint64_t sub_100158C44(char a1)
{
  v3 = *v2;
  *(v3 + 56) = v1;
  *(v3 + 48) = a1;
  *(v3 + 40) = v2;
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 200) = v7;
    *v7 = v4;
    v7[1] = sub_100158E34;

    return sub_10015926C();
  }
}

uint64_t sub_100158DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100158E34(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 1);

    return v6();
  }

  else
  {
    v8 = v4[48];
    v9 = v4[24];
    v4[208] = a1 & 1;
    v4[209] = v8;
    v4[210] = v9;

    return _swift_task_switch(sub_100158F9C, 0, 0);
  }
}

uint64_t sub_100158F9C()
{
  if (*(v0 + 210))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v1 = *(v0 + 168) | 4;
  }

  if (!*(v0 + 209))
  {
    v1 |= 8uLL;
  }

  if (!*(v0 + 208))
  {
    v1 |= 0x20uLL;
  }

  if (v1 <= 1)
  {
    v1 = 1;
  }

  **(v0 + 72) = v1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100159048(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000104D4;

  return sub_100158624(a1, a2, v6, v7, v8);
}

void sub_10015910C(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a4@<X8>, uint64_t x0_0@<X0>)
{
  v10 = sub_10016A520(a1, a2);
  if (v5)
  {
    return;
  }

  v11 = v10;
  sub_10005A084();
  v13 = sub_10015E244(v12, a1, a2, *(x0_0 + 112));
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 16;
  }

  v16 = [v11 state];
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v16 != 2)
  {
    v17 = [v11 state];
    if ((v17 & 0x8000000000000000) == 0)
    {
      if (v17 != 3)
      {

        *a4 = v15;
        return;
      }

      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_11:
  v18 = sub_10005947C();
  v19 = sub_10015FCC4(v18, a1, a2);

  v20 = v15 | 2;
  if (v19)
  {
    v20 = v15;
  }

  *a4 = v20;
}

uint64_t sub_10015926C()
{
  v1[2] = v0;
  type metadata accessor for DIPSignpost.Config();
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for DIPSignpost();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100159358, 0, 0);
}

uint64_t sub_100159358()
{
  static IDCSSignposts.consistencyCheckProgenitorKeyDesignation.getter();
  DIPSignpost.init(_:)();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10015940C;

  return sub_10013DB94();
}

uint64_t sub_10015940C(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1001595F0;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v5 = sub_100159538;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100159538()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5((v1 & 1) == 0);
}

uint64_t sub_1001595F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

void sub_100159698(uint64_t a1@<X1>, unint64_t isUniquelyReferenced_nonNull_native@<X2>, unint64_t a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v56 - v12);
  v14 = sub_10005218C(a1, isUniquelyReferenced_nonNull_native);
  if (!v3)
  {
    v15 = v14;
    if (v14)
    {
      v67 = v8;
      sub_100059DE4();
      v17 = v16;

      v61 = 0;
      v18 = v17;
      if (v17 >> 62)
      {
        goto LABEL_45;
      }

      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v20 = v67;
      v60 = a3;
      if (v19)
      {
        v56 = v13;
        v57 = a1;
        v58 = v11;
        v59 = isUniquelyReferenced_nonNull_native;
        a3 = 0;
        v65 = v18 & 0xFFFFFFFFFFFFFF8;
        v66 = v18 & 0xC000000000000001;
        v13 = _swiftEmptyDictionarySingleton;
        v62 = v19;
        v63 = v7;
        v64 = v18;
        while (1)
        {
          if (v66)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a3 >= *(v65 + 16))
            {
              goto LABEL_42;
            }

            v24 = *(v18 + 8 * a3 + 32);
          }

          isUniquelyReferenced_nonNull_native = v24;
          v11 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v19 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_6;
          }

          v25 = [v24 identifier];
          if (!v25)
          {

            v46 = v58;
            defaultLogger()();
            v47 = v59;

            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v69 = isUniquelyReferenced_nonNull_native;
              v52 = v51;
              v70 = v51;
              *v50 = 136315138;
              *(v50 + 4) = sub_10010150C(v57, v47, &v70);
              v53 = "Key signing key for credential %s does not have an identifier";
              goto LABEL_35;
            }

            goto LABEL_36;
          }

          v26 = v25;
          a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v27;

          v28 = [isUniquelyReferenced_nonNull_native publicKeyIdentifier];
          if (!v28)
          {

            v46 = v56;
            defaultLogger()();
            v54 = v59;

            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v69 = isUniquelyReferenced_nonNull_native;
              v52 = v55;
              v70 = v55;
              *v50 = 136315138;
              *(v50 + 4) = sub_10010150C(v57, v54, &v70);
              v53 = "Key signing key for credential %s does not have a public key identifier";
LABEL_35:
              _os_log_impl(&_mh_execute_header, v48, v49, v53, v50, 0xCu);
              sub_100005090(v52);

LABEL_37:
              (*(v20 + 8))(v46, v7);
              v45 = 0;
              goto LABEL_38;
            }

LABEL_36:

            goto LABEL_37;
          }

          v29 = v28;
          v68 = a3 + 1;
          v69 = a3;
          a3 = isUniquelyReferenced_nonNull_native;
          v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          sub_100009708(v7, v31);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = v13;
          v11 = sub_100099644(a1, v18);
          v33 = v13;
          v34 = v13[2];
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_43;
          }

          v37 = v32;
          if (v33[3] >= v36)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v32)
              {
                goto LABEL_8;
              }
            }

            else
            {
              sub_10010A530();
              if (v37)
              {
                goto LABEL_8;
              }
            }
          }

          else
          {
            sub_10010941C(v36, isUniquelyReferenced_nonNull_native);
            v38 = sub_100099644(a1, v18);
            if ((v37 & 1) != (v39 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v11 = v38;
            if (v37)
            {
LABEL_8:

              v13 = v70;
              v21 = (v70[7] + 16 * v11);
              v22 = *v21;
              v23 = v21[1];
              *v21 = v7;
              v21[1] = v31;
              sub_10001C120(v22, v23);

              sub_1000092BC(v7, v31);
              goto LABEL_9;
            }
          }

          v13 = v70;
          v70[(v11 >> 6) + 8] |= 1 << v11;
          v40 = (v13[6] + 16 * v11);
          *v40 = a1;
          v40[1] = v18;
          v41 = (v13[7] + 16 * v11);
          *v41 = v7;
          v41[1] = v31;

          sub_1000092BC(v7, v31);
          v42 = v13[2];
          v43 = __OFADD__(v42, 1);
          v44 = v42 + 1;
          if (v43)
          {
            goto LABEL_44;
          }

          v13[2] = v44;
LABEL_9:
          a3 = v69 + 1;
          v7 = v63;
          v20 = v67;
          v18 = v64;
          if (v68 == v62)
          {
            goto LABEL_30;
          }
        }
      }

      v13 = _swiftEmptyDictionarySingleton;
LABEL_30:

      v45 = 1;
LABEL_38:
      a3 = v60;
    }

    else
    {
      v13 = _swiftEmptyDictionarySingleton;
      v45 = 1;
    }

    *a3 = v45;
    *(a3 + 8) = v13;
  }
}

void sub_100159C40(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a1;
  v115 = a4;
  v121 = type metadata accessor for Logger();
  v114 = *(v121 - 8);
  v6 = __chkstk_darwin(v121);
  v112 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v117 = v90 - v9;
  v10 = __chkstk_darwin(v8);
  v116 = v90 - v11;
  __chkstk_darwin(v10);
  v13 = v90 - v12;
  v14 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v90 - v18;
  v20 = type metadata accessor for CredentialKeyType();
  v113 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v90 - v24;
  v26 = a2;
  v27 = v120;
  v28 = sub_10005218C(a2, a3);
  if (v27)
  {
    return;
  }

  v29 = v28;
  v120 = v25;
  v100 = v23;
  v118 = v20;
  v108 = v19;
  v99 = v17;
  v95 = v13;
  v96 = a3;
  if (!v28)
  {
    v40 = _swiftEmptyArrayStorage;
    goto LABEL_52;
  }

  sub_10005966C();
  v31 = v30;

  v111 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v117;
  v35 = v118;
  v36 = v120;
  v38 = v113;
  v37 = v114;
  if (!v33)
  {
    v40 = _swiftEmptyArrayStorage;
    goto LABEL_51;
  }

  v39 = 0;
  v114 = v31 & 0xC000000000000001;
  v102 = (v113 + 48);
  v97 = (v113 + 32);
  v94 = (v113 + 88);
  v93 = enum case for CredentialKeyType.ses(_:);
  v92 = enum case for CredentialKeyType.sep(_:);
  LODWORD(v113) = enum case for CredentialKeyType.invalid(_:);
  v109 = (v37 + 8);
  v110 = (v38 + 104);
  v104 = (v38 + 8);
  v40 = _swiftEmptyArrayStorage;
  *&v32 = 136315138;
  v98 = v32;
  v106 = v26;
  v90[1] = 0;
  v105 = v31;
  v107 = v33;
  while (2)
  {
    v91 = v40;
    while (1)
    {
      if (v114)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *(v111 + 16))
        {
          goto LABEL_56;
        }

        v43 = *(v31 + 8 * v39 + 32);
      }

      v40 = v43;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v119 = v39 + 1;
      v44 = [v43 identifier];
      if (!v44)
      {
        v79 = v115;

        v80 = v112;
        defaultLogger()();
        v81 = v96;

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v122 = v85;
          *v84 = v98;
          *(v84 + 4) = sub_10010150C(v26, v81, &v122);
          v86 = "Device encryption key for credential %s does not have an identifier";
          goto LABEL_49;
        }

        goto LABEL_61;
      }

      v45 = v44;
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = [v40 keyType];
      if (!v48)
      {

        v17 = v121;
        goto LABEL_19;
      }

      v49 = v48;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = v108;
      v35 = v118;
      CredentialKeyType.init(rawValue:)();
      if ((*v102)(v50, 1, v35) == 1)
      {

        sub_10000A0D4(v50, &qword_100200510, qword_1001AB070);
        v36 = v120;
        v17 = v121;
LABEL_19:
        (*v110)(v36, v113, v35);
        goto LABEL_23;
      }

      v51 = v120;
      (*v97)(v120, v50, v35);
      v52 = (*v94)(v51, v35);
      v53 = v121;
      v17 = v116;
      if (v52 == v93)
      {
        v66 = [v40 keyBlob];
        if (v66)
        {
          v67 = v66;
          v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v70 = v69;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = sub_100100524(0, *(v91 + 2) + 1, 1, v91);
          }

          v72 = *(v91 + 2);
          v71 = *(v91 + 3);
          v73 = v72 + 1;
          if (v72 >= v71 >> 1)
          {
            v91 = sub_100100524((v71 > 1), v72 + 1, 1, v91);
          }

          v17 = (v70 | 0x2000000000000000);
          goto LABEL_43;
        }

LABEL_57:
        v79 = v115;

        defaultLogger()();
        v88 = v96;

        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v80 = v17;
          v85 = swift_slowAlloc();
          v122 = v85;
          *v84 = v98;
          *(v84 + 4) = sub_10010150C(v26, v88, &v122);
          v86 = "SES device encryption key for credential %s does not have a key blob";
          goto LABEL_49;
        }

        (*v109)(v17, v121);
LABEL_63:
        v87 = 0;
        v40 = v91;
        goto LABEL_53;
      }

      if (v52 == v92)
      {
        break;
      }

      v17 = v53;
LABEL_23:
      defaultLogger()();
      v40 = v40;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        LODWORD(v103) = v55;
        v17 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v122 = v101;
        *v17 = v98;
        v56 = [v40 keyType];
        if (!v56)
        {
          goto LABEL_27;
        }

        v57 = v56;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v58 = v99;
        CredentialKeyType.init(rawValue:)();
        v35 = v118;
        if ((*v102)(v58, 1, v118) == 1)
        {
          sub_10000A0D4(v58, &qword_100200510, qword_1001AB070);
LABEL_27:
          v59 = v100;
          v35 = v118;
          (*v110)(v100, v113, v118);
        }

        else
        {
          v59 = v100;
          (*v97)(v100, v58, v35);
        }

        v60 = CredentialKeyType.rawValue.getter();
        v61 = v59;
        v62 = v60;
        v64 = v63;
        v41 = *v104;
        (*v104)(v61, v35);
        v65 = sub_10010150C(v62, v64, &v122);

        *(v17 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v54, v103, "Unknown device encryption key type %s", v17, 0xCu);
        sub_100005090(v101);

        v34 = v117;
        (*v109)(v117, v121);
        goto LABEL_9;
      }

      (*v109)(v34, v17);
      v41 = *v104;
LABEL_9:
      v42 = v107;
      v36 = v120;
      v41(v120, v35);
      ++v39;
      v31 = v105;
      v26 = v106;
      if (v119 == v42)
      {
        v40 = v91;
        goto LABEL_51;
      }
    }

    v74 = [v40 publicKeyIdentifier];
    if (!v74)
    {
      v79 = v115;

      v80 = v95;
      defaultLogger()();
      v89 = v96;

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v122 = v85;
        *v84 = v98;
        *(v84 + 4) = sub_10010150C(v26, v89, &v122);
        v86 = "Device encryption key for credential %s does not have a public key identifier";
LABEL_49:
        _os_log_impl(&_mh_execute_header, v82, v83, v86, v84, 0xCu);
        sub_100005090(v85);

        goto LABEL_62;
      }

LABEL_61:

LABEL_62:
      (*v109)(v80, v121);
      goto LABEL_63;
    }

    v75 = v74;
    v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v76;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = sub_100100524(0, *(v91 + 2) + 1, 1, v91);
    }

    v72 = *(v91 + 2);
    v77 = *(v91 + 3);
    v73 = v72 + 1;
    if (v72 >= v77 >> 1)
    {
      v91 = sub_100100524((v77 > 1), v72 + 1, 1, v91);
    }

LABEL_43:
    v40 = v91;
    *(v91 + 2) = v73;
    v78 = &v40[32 * v72];
    *(v78 + 4) = v103;
    *(v78 + 5) = v47;
    *(v78 + 6) = v68;
    *(v78 + 7) = v17;
    v35 = v118;
    v39 = v119;
    v34 = v117;
    v36 = v120;
    if (v119 != v107)
    {
      continue;
    }

    break;
  }

LABEL_51:

LABEL_52:
  v87 = 1;
  v79 = v115;
LABEL_53:
  *v79 = v87;
  *(v79 + 8) = v40;
}

uint64_t sub_10015A8B8(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000105C8;

  return sub_10013E6D0(a1, a2, v6);
}

uint64_t sub_10015A980()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10015A9E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10015AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10015ABD4, 0, 0);
}

uint64_t sub_10015ABD4()
{
  v14 = v0[14];
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  static IDCSSignposts.consistencyCheckKeySigningKeys.getter();
  DIPSignpost.init(_:)();
  v6 = swift_allocObject();
  v0[19] = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  v7 = swift_allocObject();
  v0[20] = v7;
  *(v7 + 16) = sub_10015E1C0;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v2 + 104);

  v9(v14, v8, v1);

  v10 = swift_task_alloc();
  v0[21] = v10;
  v11 = sub_100004E70(&qword_100203CB8, &qword_1001AEA38);
  *v10 = v0;
  v10[1] = sub_10015AD88;
  v12 = v0[14];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v12, sub_10015E1E0, v7, v11);
}

uint64_t sub_10015AD88()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(*(v2 + 104) + 8))(*(v2 + 112), *(v2 + 96));

    v3 = sub_10015B258;
  }

  else
  {
    v5 = *(v2 + 104);
    v4 = *(v2 + 112);
    v6 = *(v2 + 96);

    (*(v5 + 8))(v4, v6);
    *(v2 + 264) = *(v2 + 16);
    *(v2 + 184) = *(v2 + 24);
    v3 = sub_10015AF10;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015AF10()
{
  v35 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 184);
  if ((v1 & 1) == 0)
  {

LABEL_7:
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 128);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v9 + 8))(v8, v10);

    v11 = *(v0 + 8);

    return v11(v1);
  }

  v3 = *(v2 + 32);
  *(v0 + 265) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  if (!v6)
  {
    v13 = 0;
    v14 = ((63 - v5) >> 6) - 1;
    while (v14 != v13)
    {
      v7 = v13 + 1;
      v6 = *(v2 + 8 * v13++ + 72);
      if (v6)
      {
        goto LABEL_13;
      }
    }

    defaultLogger()();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 72);
    v27 = *(v0 + 80);
    v28 = *(v0 + 64);
    if (v25)
    {
      v33 = *(v0 + 80);
      v30 = *(v0 + 32);
      v29 = *(v0 + 40);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_10010150C(v30, v29, &v34);
      _os_log_impl(&_mh_execute_header, v23, v24, "Key signing keys for credential %s passed completeness check", v31, 0xCu);
      sub_100005090(v32);

      (*(v26 + 8))(v33, v28);
    }

    else
    {

      (*(v26 + 8))(v27, v28);
    }

    goto LABEL_7;
  }

  v7 = 0;
LABEL_13:
  *(v0 + 192) = v6;
  *(v0 + 200) = v7;
  v15 = *(v2 + 48);
  v16 = (v7 << 10) | (16 * __clz(__rbit64(v6)));
  v17 = *(v15 + v16);
  *(v0 + 208) = v17;
  v18 = *(v15 + v16 + 8);
  *(v0 + 216) = v18;
  v19 = (*(v2 + 56) + v16);
  v20 = *v19;
  *(v0 + 224) = *v19;
  v21 = v19[1];
  *(v0 + 232) = v21;

  sub_100032EBC(v20, v21);
  v22 = swift_task_alloc();
  *(v0 + 240) = v22;
  *v22 = v0;
  v22[1] = sub_10015B33C;

  return sub_100028458(v17, v18, v20, v21);
}

uint64_t sub_10015B258()
{

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_10015B33C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_10015B980;
  }

  else
  {
    v4 = sub_10015B450;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10015B450(uint64_t a1)
{
  v51 = v1;
  v2 = *(v1 + 248);
  v4 = *(v1 + 224);
  v3 = *(v1 + 232);
  if (!v2)
  {
    defaultLogger()();

    sub_100032EBC(v4, v3);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    sub_10001C120(v4, v3);

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v1 + 224);
    v11 = *(v1 + 232);
    v13 = *(v1 + 216);
    if (v10)
    {
      v46 = *(v1 + 224);
      v14 = *(v1 + 208);
      v15 = *(v1 + 72);
      v47 = *(v1 + 64);
      v48 = *(v1 + 88);
      v16 = *(v1 + 32);
      v45 = *(v1 + 40);
      v17 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v17 = 136315394;

      v18 = sub_10010150C(v14, v13, &v50);

      *(v17 + 4) = v18;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_10010150C(v16, v45, &v50);
      _os_log_impl(&_mh_execute_header, v8, v9, "Key signing key %s for credential %s does not exist in keychain", v17, 0x16u);
      swift_arrayDestroy();

      sub_10001C120(v46, v11);
      (*(v15 + 8))(v48, v47);
    }

    else
    {
      v28 = *(v1 + 88);
      v29 = *(v1 + 64);
      v30 = *(v1 + 72);

      sub_10001C120(v12, v11);

      (*(v30 + 8))(v28, v29);
    }

LABEL_18:
    v42 = *(v1 + 136);
    v41 = *(v1 + 144);
    v43 = *(v1 + 128);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v42 + 8))(v41, v43);

    v44 = *(v1 + 8);

    return v44(v2 != 0);
  }

  result = sub_10001C120(v4, v3);
  v6 = *(v1 + 200);
  v7 = (*(v1 + 192) - 1) & *(v1 + 192);
  if (!v7)
  {
    while (1)
    {
      v19 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v1 + 184);
      if (v19 >= (((1 << *(v1 + 265)) + 63) >> 6))
      {
        break;
      }

      v7 = *(result + 8 * v19 + 64);
      ++v6;
      if (v7)
      {
        v6 = v19;
        goto LABEL_10;
      }
    }

    defaultLogger()();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v1 + 72);
    v35 = *(v1 + 80);
    v36 = *(v1 + 64);
    if (v33)
    {
      v49 = *(v1 + 80);
      v38 = *(v1 + 32);
      v37 = *(v1 + 40);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v50 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_10010150C(v38, v37, &v50);
      _os_log_impl(&_mh_execute_header, v31, v32, "Key signing keys for credential %s passed completeness check", v39, 0xCu);
      sub_100005090(v40);

      (*(v34 + 8))(v49, v36);
    }

    else
    {

      (*(v34 + 8))(v35, v36);
    }

    goto LABEL_18;
  }

  result = *(v1 + 184);
LABEL_10:
  *(v1 + 192) = v7;
  *(v1 + 200) = v6;
  v20 = *(result + 48);
  v21 = (v6 << 10) | (16 * __clz(__rbit64(v7)));
  v22 = *(v20 + v21);
  *(v1 + 208) = v22;
  v23 = *(v20 + v21 + 8);
  *(v1 + 216) = v23;
  v24 = (*(result + 56) + v21);
  v25 = *v24;
  *(v1 + 224) = *v24;
  v26 = v24[1];
  *(v1 + 232) = v26;

  sub_100032EBC(v25, v26);
  v27 = swift_task_alloc();
  *(v1 + 240) = v27;
  *v27 = v1;
  v27[1] = sub_10015B33C;

  return sub_100028458(v22, v23, v25, v26);
}

uint64_t sub_10015B980()
{
  v1 = v0[28];
  v2 = v0[29];

  sub_10001C120(v1, v2);
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_10015BA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for Insecure.SHA1();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for Insecure.SHA1Digest();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[26] = v9;
  v4[27] = *(v9 - 8);
  v4[28] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[29] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_10015BD80, 0, 0);
}

uint64_t sub_10015BD80()
{
  v14 = v0[28];
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  static IDCSSignposts.consistencyCheckDeviceEncryptionKeys.getter();
  DIPSignpost.init(_:)();
  v6 = swift_allocObject();
  v0[33] = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  v7 = swift_allocObject();
  v0[34] = v7;
  *(v7 + 16) = sub_10015E1A0;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v2 + 104);

  v9(v14, v8, v1);

  v10 = swift_task_alloc();
  v0[35] = v10;
  v11 = sub_100004E70(&qword_100203CB0, &qword_1001AEA30);
  *v10 = v0;
  v10[1] = sub_10015BF60;
  v12 = v0[28];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 5, v12, sub_100160388, v7, v11);
}

uint64_t sub_10015BF60()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    (*(*(v2 + 216) + 8))(*(v2 + 224), *(v2 + 208));

    v3 = sub_10015CE28;
  }

  else
  {
    v5 = *(v2 + 216);
    v4 = *(v2 + 224);
    v6 = *(v2 + 208);

    (*(v5 + 8))(v4, v6);
    *(v2 + 412) = *(v2 + 40);
    *(v2 + 296) = *(v2 + 48);
    v3 = sub_10015C114;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015C114()
{
  v91 = v0;
  if ((*(v0 + 412) & 1) == 0)
  {

LABEL_23:
    v86 = 0;
    goto LABEL_32;
  }

  v1 = *(v0[37] + 16);
  v0[38] = v1;
  if (!v1)
  {
LABEL_29:

    defaultLogger()();

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    v66 = os_log_type_enabled(v64, v65);
    v68 = v0[22];
    v67 = v0[23];
    v69 = v0[21];
    if (v66)
    {
      v70 = v89[9];
      v71 = v89[8];
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v90[0] = v73;
      *v72 = 136315138;
      v0 = v89;
      *(v72 + 4) = sub_10010150C(v71, v70, v90);
      _os_log_impl(&_mh_execute_header, v64, v65, "Device encryption keys for credential %s passed completeness check", v72, 0xCu);
      sub_100005090(v73);
    }

    (*(v68 + 8))(v67, v69);
    v86 = 1;
LABEL_32:
    v74 = v0[31];
    v75 = v0[32];
    v76 = v0[30];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v74 + 8))(v75, v76);

    v77 = v89[1];

    return v77(v86);
  }

  v2 = 0;
  v78 = (v0 + 398);
  *(v0 + 94) = enum case for CredentialKeyType.ses(_:);
  *(v0 + 95) = enum case for CredentialKeyUsage.deviceEncryption(_:);
  v3 = v0[36];
  while (1)
  {
    v0[39] = v2;
    v27 = v0[37];
    if (v2 >= *(v27 + 16))
    {
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

    v28 = (v27 + 32 * v2);
    v29 = v28[4];
    v0[40] = v29;
    v30 = v28[5];
    v0[41] = v30;
    v31 = v28[6];
    v0[42] = v31;
    v32 = v28[7];
    v0[43] = v32;
    if ((v32 & 0x2000000000000000) == 0)
    {
      break;
    }

    v88 = v29;
    sub_10001BFB8(v29, v30, v31, v32);

    sub_100009708(v31, v32 & 0xDFFFFFFFFFFFFFFFLL);
    v33 = dispatch thunk of SESKeystore.getPublicKey(of:)();
    v85 = v32;
    v87 = v31;
    v83 = v30;
    v84 = v32 & 0xDFFFFFFFFFFFFFFFLL;
    if (v3)
    {
      v48 = v0[13];
      v47 = v0[14];
      v49 = v30;
      v50 = v0[12];

      (*(v48 + 104))(v47, enum case for DIPError.Code.internalError(_:), v50);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10016032C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      defaultLogger()();

      swift_errorRetain();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v0[24];
      v55 = v0[21];
      v56 = v0[22];
      if (v53)
      {
        v82 = v0[24];
        v57 = v0[8];
        v58 = v0[9];
        v59 = swift_slowAlloc();
        v90[0] = swift_slowAlloc();
        *v59 = 136315650;
        v60 = sub_10010150C(v88, v49, v90);

        *(v59 + 4) = v60;
        *(v59 + 12) = 2080;
        *(v59 + 14) = sub_10010150C(v57, v58, v90);
        *(v59 + 22) = 2080;
        swift_getErrorValue();
        v61 = Error.localizedDescription.getter();
        v63 = sub_10010150C(v61, v62, v90);

        *(v59 + 24) = v63;
        _os_log_impl(&_mh_execute_header, v51, v52, "Device encryption key %s for credential %s does not exist in SE. Error: %s", v59, 0x20u);
        swift_arrayDestroy();

        sub_10001BFFC(v88, v83, v87, v85);
        sub_1000092BC(v87, v84);

        (*(v56 + 8))(v82, v55);
      }

      else
      {

        sub_10001BFFC(v88, v49, v87, v85);
        sub_1000092BC(v87, v84);

        (*(v56 + 8))(v54, v55);
      }

      goto LABEL_23;
    }

    v35 = v33;
    v36 = v34;
    type metadata accessor for SESDeviceEncryptionKey(0);
    v37 = swift_allocObject();
    v38 = (v37 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob);
    *v38 = v31;
    v38[1] = v32 & 0xDFFFFFFFFFFFFFFFLL;
    v39 = (v37 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey);
    *v39 = v35;
    v39[1] = v36;
    sub_100009708(v31, v32 & 0xDFFFFFFFFFFFFFFFLL);
    sub_100009708(v35, v36);
    sub_10016032C(&qword_100201090, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
    dispatch thunk of HashFunction.init()();
    v40 = v36 >> 62;
    v80 = v35;
    v81 = v36;
    if ((v36 >> 62) > 1)
    {
      if (v40 == 2)
      {
        v41 = *(v35 + 16);
        v42 = *(v35 + 24);

        v43 = v36;
        if (__DataStorage._bytes.getter() && __OFSUB__(v41, __DataStorage._offset.getter()))
        {
          goto LABEL_39;
        }

        if (__OFSUB__(v42, v41))
        {
          goto LABEL_38;
        }

LABEL_21:
        __DataStorage._length.getter();
        dispatch thunk of HashFunction.update(bufferPointer:)();
        v4 = v35;
        v5 = v43;
        goto LABEL_6;
      }

      *v78 = 0;
      *(v78 + 6) = 0;
    }

    else
    {
      if (v40)
      {
        if (v35 >> 32 < v35)
        {
          goto LABEL_37;
        }

        v43 = v36;
        if (__DataStorage._bytes.getter() && __OFSUB__(v35, __DataStorage._offset.getter()))
        {
          goto LABEL_40;
        }

        goto LABEL_21;
      }

      v0[48] = v35;
      *(v0 + 196) = v36;
      *(v0 + 394) = BYTE2(v36);
      *(v0 + 395) = BYTE3(v36);
      *(v0 + 396) = BYTE4(v36);
      *(v0 + 397) = BYTE5(v36);
    }

    dispatch thunk of HashFunction.update(bufferPointer:)();
    v4 = v35;
    v5 = v36;
LABEL_6:
    sub_1000092BC(v4, v5);
    v6 = *(v0 + 95);
    v79 = *(v0 + 94);
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[17];
    v10 = v0[18];
    v11 = v0[16];
    v12 = v89[15];
    dispatch thunk of HashFunction.finalize()();
    (*(v11 + 8))(v9, v12);
    sub_10016032C(&qword_100201098, &type metadata accessor for Insecure.SHA1Digest, &protocol conformance descriptor for Insecure.SHA1Digest);
    v13 = Digest.data.getter();
    v15 = v14;
    (*(v8 + 8))(v7, v10);
    v16 = (v37 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier);
    *v16 = v13;
    v16[1] = v15;
    v17 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
    v18 = type metadata accessor for CredentialKeyType();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v37 + v17, v79, v18);
    v20 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
    v21 = type metadata accessor for CredentialKeyUsage();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v37 + v20, v6, v21);
    v23 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
    sub_100004E70(&qword_1002010A0, &unk_1001AB530);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    sub_10001BFFC(v88, v83, v87, v85);
    sub_1000092BC(v80, v81);
    sub_1000092BC(v87, v84);

    *(v37 + v23) = v24;
    *(v37 + 16) = v88;
    *(v37 + 24) = v83;
    swift_setDeallocating();
    (*(v19 + 8))(v37 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v18);
    v0 = v89;
    (*(v22 + 8))(v37 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v21);

    v26 = *(v37 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob);
    v25 = *(v37 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob + 8);

    sub_1000092BC(v26, v25);
    sub_1000092BC(*(v37 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey), *(v37 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey + 8));
    sub_1000092BC(*(v37 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier), *(v37 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier + 8));

    swift_deallocClassInstance();
    v3 = 0;
    v2 = v89[39] + 1;
    if (v2 == v89[38])
    {
      goto LABEL_29;
    }
  }

  v44 = v29;
  sub_100009708(v31, v32);
  sub_100009708(v31, v32);
  sub_10001BFB8(v44, v30, v31, v32);

  v45 = swift_task_alloc();
  v0[44] = v45;
  *v45 = v0;
  v45[1] = sub_10015CF78;

  return sub_100029DFC(v44, v30, v31, v32);
}

uint64_t sub_10015CE28()
{

  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v1 + 8))(v2, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_10015CF78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v5 = *(v3 + 344);
  v6 = *(v3 + 336);
  if (v1)
  {

    sub_1000092BC(v6, v5);
    v7 = sub_10015E030;
  }

  else
  {
    sub_1000092BC(v6, v5);
    v7 = sub_10015D124;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10015D124()
{
  v111 = v0;
  if (!v0[45])
  {

    defaultLogger()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[42];
    v19 = v0[43];
    v22 = v0[40];
    v21 = v0[41];
    v23 = v0[25];
    v24 = v0[21];
    v25 = v0[22];
    if (v18)
    {
      v98 = v0[8];
      v100 = v0[9];
      v103 = v0[40];
      v105 = v0[43];
      v26 = swift_slowAlloc();
      v110[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = v24;
      v28 = sub_10010150C(v103, v21, v110);

      *(v26 + 4) = v28;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_10010150C(v98, v100, v110);
      _os_log_impl(&_mh_execute_header, v16, v17, "Device encryption key %s for credential %s does not exist in keychain", v26, 0x16u);
      swift_arrayDestroy();

      sub_10001BFFC(v103, v21, v20, v105);
      sub_1000092BC(v20, v105);
      (*(v25 + 8))(v23, v27);
    }

    else
    {

      sub_10001BFFC(v22, v21, v20, v19);
      sub_1000092BC(v20, v19);

      (*(v25 + 8))(v23, v24);
    }

LABEL_33:
    v102 = 0;
    goto LABEL_34;
  }

  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];

  sub_10001BFFC(v4, v3, v1, v2);
  sub_1000092BC(v1, v2);

  v5 = v0[39] + 1;
  if (v5 == v0[38])
  {
LABEL_3:

    defaultLogger()();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[22];
    v9 = v0[23];
    v11 = v0[21];
    if (v8)
    {
      v13 = v0[8];
      v12 = v0[9];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v110[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10010150C(v13, v12, v110);
      _os_log_impl(&_mh_execute_header, v6, v7, "Device encryption keys for credential %s passed completeness check", v14, 0xCu);
      sub_100005090(v15);

      v0 = v109;
    }

    (*(v10 + 8))(v9, v11);
    v102 = 1;
LABEL_34:
    v90 = v0[31];
    v91 = v0[32];
    v92 = v0[30];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v90 + 8))(v91, v92);

    v93 = v109[1];

    return v93(v102);
  }

  v94 = (v0 + 398);
  v29 = v0[46];
  while (1)
  {
    v0[39] = v5;
    v53 = v0[37];
    if (v5 >= *(v53 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    v54 = (v53 + 32 * v5);
    v55 = v54[4];
    v0[40] = v55;
    v56 = v54[5];
    v0[41] = v56;
    v57 = v54[6];
    v0[42] = v57;
    v58 = v54[7];
    v0[43] = v58;
    if ((v58 & 0x2000000000000000) == 0)
    {
      break;
    }

    v59 = v58 & 0xDFFFFFFFFFFFFFFFLL;
    v106 = v55;
    sub_10001BFB8(v55, v56, v57, v58);

    sub_100009708(v57, v58 & 0xDFFFFFFFFFFFFFFFLL);
    v60 = dispatch thunk of SESKeystore.getPublicKey(of:)();
    v101 = v58;
    v104 = v57;
    v97 = v56;
    v99 = v58 & 0xDFFFFFFFFFFFFFFFLL;
    if (v29)
    {
      v74 = v0[13];
      v73 = v0[14];
      v75 = v56;
      v76 = v0[12];

      (*(v74 + 104))(v73, enum case for DIPError.Code.internalError(_:), v76);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10016032C(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      defaultLogger()();

      swift_errorRetain();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      v79 = os_log_type_enabled(v77, v78);
      v80 = v0[24];
      v81 = v0[21];
      v82 = v0[22];
      if (v79)
      {
        v108 = v0[24];
        v83 = v0[8];
        v84 = v0[9];
        v85 = swift_slowAlloc();
        v110[0] = swift_slowAlloc();
        *v85 = 136315650;
        v86 = sub_10010150C(v106, v75, v110);

        *(v85 + 4) = v86;
        *(v85 + 12) = 2080;
        *(v85 + 14) = sub_10010150C(v83, v84, v110);
        *(v85 + 22) = 2080;
        swift_getErrorValue();
        v87 = Error.localizedDescription.getter();
        v89 = sub_10010150C(v87, v88, v110);

        *(v85 + 24) = v89;
        _os_log_impl(&_mh_execute_header, v77, v78, "Device encryption key %s for credential %s does not exist in SE. Error: %s", v85, 0x20u);
        swift_arrayDestroy();

        sub_10001BFFC(v106, v97, v104, v101);
        sub_1000092BC(v104, v99);

        (*(v82 + 8))(v108, v81);
      }

      else
      {

        sub_10001BFFC(v106, v75, v104, v101);
        sub_1000092BC(v104, v99);

        (*(v82 + 8))(v80, v81);
      }

      goto LABEL_33;
    }

    v62 = v60;
    v63 = v61;
    type metadata accessor for SESDeviceEncryptionKey(0);
    v64 = swift_allocObject();
    v65 = (v64 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob);
    *v65 = v57;
    v65[1] = v59;
    v66 = (v64 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey);
    *v66 = v62;
    v66[1] = v63;
    sub_100009708(v57, v59);
    sub_100009708(v62, v63);
    sub_10016032C(&qword_100201090, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
    dispatch thunk of HashFunction.init()();
    v107 = v63;
    v67 = v63 >> 62;
    v96 = v62;
    if ((v63 >> 62) > 1)
    {
      if (v67 == 2)
      {
        v68 = *(v62 + 16);
        v69 = *(v62 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v68, __DataStorage._offset.getter()))
        {
          goto LABEL_40;
        }

        if (__OFSUB__(v69, v68))
        {
          goto LABEL_39;
        }

LABEL_21:
        __DataStorage._length.getter();
        v0 = v109;
        dispatch thunk of HashFunction.update(bufferPointer:)();
        v30 = v62;
        v31 = v63;
        goto LABEL_10;
      }

      *v94 = 0;
      *(v94 + 6) = 0;
      dispatch thunk of HashFunction.update(bufferPointer:)();
      v30 = v62;
      v31 = v63;
    }

    else
    {
      if (v67)
      {
        if (v62 >> 32 < v62)
        {
          goto LABEL_38;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v62, __DataStorage._offset.getter()))
        {
          goto LABEL_41;
        }

        goto LABEL_21;
      }

      v0[48] = v62;
      *(v0 + 196) = v63;
      *(v0 + 394) = BYTE2(v63);
      *(v0 + 395) = BYTE3(v63);
      *(v0 + 396) = BYTE4(v63);
      *(v0 + 397) = BYTE5(v63);
      dispatch thunk of HashFunction.update(bufferPointer:)();
      v30 = v62;
      v31 = v63;
    }

LABEL_10:
    sub_1000092BC(v30, v31);
    v32 = *(v0 + 95);
    v95 = *(v0 + 94);
    v34 = v0[19];
    v33 = v0[20];
    v35 = v0[17];
    v36 = v0[18];
    v37 = v109[16];
    v38 = v109[15];
    dispatch thunk of HashFunction.finalize()();
    (*(v37 + 8))(v35, v38);
    sub_10016032C(&qword_100201098, &type metadata accessor for Insecure.SHA1Digest, &protocol conformance descriptor for Insecure.SHA1Digest);
    v39 = Digest.data.getter();
    v41 = v40;
    (*(v34 + 8))(v33, v36);
    v42 = (v64 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier);
    *v42 = v39;
    v42[1] = v41;
    v43 = OBJC_IVAR____TtC7idcredd13CredentialKey_type;
    v44 = type metadata accessor for CredentialKeyType();
    v45 = *(v44 - 8);
    (*(v45 + 104))(v64 + v43, v95, v44);
    v46 = OBJC_IVAR____TtC7idcredd13CredentialKey_usage;
    v47 = type metadata accessor for CredentialKeyUsage();
    v48 = *(v47 - 8);
    (*(v48 + 104))(v64 + v46, v32, v47);
    v49 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
    sub_100004E70(&qword_1002010A0, &unk_1001AB530);
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    sub_10001BFFC(v106, v97, v104, v101);
    sub_1000092BC(v96, v107);
    sub_1000092BC(v104, v99);

    *(v64 + v49) = v50;
    *(v64 + 16) = v106;
    *(v64 + 24) = v97;
    swift_setDeallocating();
    (*(v45 + 8))(v64 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v44);
    (*(v48 + 8))(v64 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v47);
    v0 = v109;

    v52 = *(v64 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob);
    v51 = *(v64 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_keyBlob + 8);

    sub_1000092BC(v52, v51);
    sub_1000092BC(*(v64 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey), *(v64 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKey + 8));
    sub_1000092BC(*(v64 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier), *(v64 + OBJC_IVAR____TtC7idcredd22SESDeviceEncryptionKey_publicKeyIdentifier + 8));

    swift_deallocClassInstance();
    v29 = 0;
    v5 = v109[39] + 1;
    if (v5 == v109[38])
    {
      goto LABEL_3;
    }
  }

  v70 = v55;
  sub_100009708(v57, v58);
  sub_100009708(v57, v58);
  sub_10001BFB8(v70, v56, v57, v58);

  v71 = swift_task_alloc();
  v0[44] = v71;
  *v71 = v0;
  v71[1] = sub_10015CF78;

  return sub_100029DFC(v70, v56, v57, v58);
}

uint64_t sub_10015E030()
{
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  sub_1000092BC(v1, v2);
  sub_10001BFFC(v4, v3, v1, v2);
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[30];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v6, v7);

  v8 = v0[1];

  return v8(0);
}

void *sub_10015E1F8@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_10015E244(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v203 = a4;
  v189 = a3;
  v184 = a2;
  v187 = type metadata accessor for Logger();
  v188 = *(v187 - 8);
  v5 = __chkstk_darwin(v187);
  v7 = v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v183 = v178 - v9;
  v10 = __chkstk_darwin(v8);
  v182 = v178 - v11;
  v12 = __chkstk_darwin(v10);
  v181 = v178 - v13;
  v14 = __chkstk_darwin(v12);
  v180 = v178 - v15;
  v16 = __chkstk_darwin(v14);
  v179 = v178 - v17;
  v18 = __chkstk_darwin(v16);
  v178[1] = v178 - v19;
  __chkstk_darwin(v18);
  v178[0] = v178 - v20;
  v21 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v22 = __chkstk_darwin(v21 - 8);
  v200 = v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v201 = v178 - v24;
  v242 = type metadata accessor for CredentialKeyType();
  v25 = *(v242 - 8);
  v26 = __chkstk_darwin(v242);
  v226 = v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v222 = v178 - v29;
  v30 = __chkstk_darwin(v28);
  v193 = v178 - v31;
  v32 = __chkstk_darwin(v30);
  v211 = v178 - v33;
  __chkstk_darwin(v32);
  v227 = v178 - v34;
  v35 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  __chkstk_darwin(v35 - 8);
  v202 = v178 - v36;
  v234 = type metadata accessor for CredentialKeyUsage();
  v37 = *(v234 - 8);
  v38 = __chkstk_darwin(v234);
  v229 = v178 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v233 = v178 - v40;
  v41 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v41 - 8);
  v191 = type metadata accessor for DIPSignpost();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v43 = v178 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.consistencyCheckPresentmentKeys.getter();
  v192 = v43;
  DIPSignpost.init(_:)();
  if (a1 >> 62)
  {
    goto LABEL_82;
  }

  v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v233;
  if (!v44)
  {
LABEL_83:
    defaultLogger()();
    v167 = v189;

    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v172 = v167;
      v173 = v171;
      v240 = v171;
      *v170 = 136315138;
      *(v170 + 4) = sub_10010150C(v184, v172, &v240);
      _os_log_impl(&_mh_execute_header, v168, v169, "Presentment keys for credential %s passed completeness check", v170, 0xCu);
      sub_100005090(v173);
    }

    (*(v188 + 8))(v7, v187);
    v159 = 1;
LABEL_86:
    v174 = v191;
    v175 = v190;
    v176 = v192;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v175 + 8))(v176, v174);
    return v159;
  }

LABEL_3:
  v210[0] = a1 & 0xC000000000000001;
  v209 = a1 & 0xFFFFFFFFFFFFFF8;
  v195 = (v37 + 48);
  v185 = (v37 + 32);
  v199 = enum case for CredentialKeyUsage.invalid(_:);
  v208 = v37 + 104;
  v219 = enum case for CredentialKeyUsage.presentment(_:);
  v218 = (v37 + 8);
  v37 = 0;
  v214 = (v25 + 48);
  v194 = (v25 + 32);
  v216 = enum case for CredentialKeyType.invalid(_:);
  v225 = v25 + 104;
  v232 = (v25 + 8);
  v186 = (v25 + 16);
  v217 = enum case for CredentialKeyType.legacySE(_:);
  v206 = enum case for CredentialKeyType.ses(_:);
  v207 = a1;
  v205 = v7;
  v204 = v44;
  while (1)
  {
    if (v210[0])
    {
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *(v209 + 16))
      {
        goto LABEL_81;
      }

      v46 = *(a1 + 8 * v37 + 32);
    }

    v7 = v46;
    a1 = v234;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      v44 = _CocoaArrayWrapper.endIndex.getter();
      v45 = v233;
      if (!v44)
      {
        goto LABEL_83;
      }

      goto LABEL_3;
    }

    v47 = [v46 identifier];
    if (!v47)
    {
      v123 = v183;
      defaultLogger()();
      v124 = v189;

      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v129 = v124;
        v130 = v128;
        v240 = v128;
        *v127 = 136315138;
        *(v127 + 4) = sub_10010150C(v184, v129, &v240);
        v131 = "Presentment key for credential %s does not have an identifier";
LABEL_56:
        _os_log_impl(&_mh_execute_header, v125, v126, v131, v127, 0xCu);
        sub_100005090(v130);
      }

LABEL_57:

      goto LABEL_70;
    }

    v48 = v47;
    v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v236 = v49;

    v50 = [v7 publicKeyIdentifier];
    if (!v50)
    {

      v123 = v182;
      defaultLogger()();
      v132 = v189;

      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v134 = v132;
        v130 = v133;
        v240 = v133;
        *v127 = 136315138;
        *(v127 + 4) = sub_10010150C(v184, v134, &v240);
        v131 = "Presentment key for credential %s does not have a public key identifier";
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    v51 = v50;
    v221 = v37;
    v230 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v231 = v52;

    v53 = [v7 usage];
    if (v53)
    {
      v54 = v53;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = v202;
      CredentialKeyUsage.init(rawValue:)();
      if ((*v195)(v55, 1, a1) != 1)
      {
        (*v185)(v45, v55, a1);
        v56 = *v208;
        v57 = v208 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        goto LABEL_15;
      }

      sub_10000A0D4(v55, &qword_1002024A8, &unk_1001ACFA0);
    }

    v56 = *v208;
    v57 = v208 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    (*v208)(v45, v199, a1);
LABEL_15:
    v215 = v57;
    v56(v229, v219, a1);
    sub_10016032C(&qword_1002024B0, &type metadata accessor for CredentialKeyUsage, &protocol conformance descriptor for CredentialKeyUsage);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v220 = v37 + 1;
    if (v240 == v238 && v241 == v239)
    {
      v58 = v237;
      v59 = 1;
    }

    else
    {
      v58 = v237;
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v60 = *v218;
    v61 = v234;
    (*v218)(v229, v234);
    v60(v233, v61);

    v237 = v58;
    if ((v59 & 1) == 0)
    {

      v135 = v181;
      defaultLogger()();
      v136 = v189;

      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v141 = v136;
        v142 = v140;
        v240 = v140;
        *v139 = 136315138;
        *(v139 + 4) = sub_10010150C(v184, v141, &v240);
        _os_log_impl(&_mh_execute_header, v137, v138, "Presentment key for credential %s does not have presentment usage", v139, 0xCu);
        sub_100005090(v142);

        sub_1000092BC(v230, v231);
      }

      else
      {
        sub_1000092BC(v230, v231);
      }

      (*(v188 + 8))(v135, v187);
      goto LABEL_71;
    }

    v213 = v56;
    v62 = [v7 keyType];
    v63 = v225 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    if (v62)
    {
      v64 = v62;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = v201;
      CredentialKeyType.init(rawValue:)();
      if ((*v214)(v65, 1, v242) != 1)
      {
        (*v194)(v227, v65, v242);
        v66 = *v225;
        goto LABEL_25;
      }

      sub_10000A0D4(v65, &qword_100200510, qword_1001AB070);
    }

    v66 = *v225;
    (*v225)(v227, v216, v242);
LABEL_25:
    v235 = v7;
    v67 = v211;
    v66(v211, v217, v242);
    v68 = sub_10016032C(&qword_100203CC0, &type metadata accessor for CredentialKeyType, &protocol conformance descriptor for CredentialKeyType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v223 = v68;
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v240 == v238 && v241 == v239)
    {
      v69 = v66;
      v70 = 1;
    }

    else
    {
      v69 = v66;
      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v71 = *v232;
    v72 = v67;
    v73 = v242;
    (*v232)(v72, v242);
    v228 = v71;
    v71(v227, v73);

    if ((v70 & 1) == 0)
    {
      v104 = v222;
      v101 = v69;
      goto LABEL_35;
    }

    v74 = v235;
    v75 = [v235 publicKey];
    if (!v75)
    {

      v143 = v210;
      goto LABEL_67;
    }

    v76 = v75;
    v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    v80 = [v74 keySlot];
    v81 = v237;
    sub_100046D78(0);
    v237 = v81;
    if (v81)
    {
      break;
    }

    v212 = v77;
    v198 = v79;
    v83 = sub_1000A0EE4(v80, v82);

    if (!v83)
    {
      v161 = v178[0];
      defaultLogger()();

      v162 = v189;

      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        *v165 = 136315394;
        v166 = sub_10010150C(v224, v236, &v240);

        *(v165 + 4) = v166;
        *(v165 + 12) = 2080;
        *(v165 + 14) = sub_10010150C(v184, v162, &v240);
        _os_log_impl(&_mh_execute_header, v163, v164, "Presentment key %s for credential %s does not exist", v165, 0x16u);
        swift_arrayDestroy();

        sub_1000092BC(v212, v198);
        sub_1000092BC(v230, v231);
      }

      else
      {
        sub_1000092BC(v212, v198);
        sub_1000092BC(v230, v231);
      }

      (*(v188 + 8))(v161, v187);
      goto LABEL_71;
    }

    v84 = v242;
    v210[1] = v63;
    v85 = v193;
    v197 = v69;
    v69(v193, v217, v242);
    type metadata accessor for LegacySEPresentmentKey(0);
    v86 = swift_allocObject();
    v87 = v86 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_keySlot;
    *v87 = v80;
    *(v87 + 8) = 0;
    v88 = (v86 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier);
    v89 = v230;
    v90 = v231;
    *v88 = v230;
    v88[1] = v90;
    v91 = (v86 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey);
    v92 = v198;
    *v91 = v212;
    v91[1] = v92;
    v196 = v60;
    v93 = v92;
    (*v186)(v86 + OBJC_IVAR____TtC7idcredd13CredentialKey_type, v85, v84);
    v94 = v234;
    v213(v86 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage, v219, v234);
    v95 = OBJC_IVAR____TtC7idcredd13CredentialKey_lock;
    sub_100004E70(&qword_1002010A0, &unk_1001AB530);
    v96 = swift_allocObject();
    *(v96 + 16) = 0;
    *(v86 + v95) = v96;
    v97 = v236;
    *(v86 + 16) = v224;
    *(v86 + 24) = v97;
    sub_100009708(v89, v90);
    v98 = v212;
    sub_100009708(v212, v93);
    v99 = v228;
    v228(v85, v84);
    swift_setDeallocating();
    v100 = v84;
    v101 = v197;
    v99((v86 + OBJC_IVAR____TtC7idcredd13CredentialKey_type), v100);
    v196((v86 + OBJC_IVAR____TtC7idcredd13CredentialKey_usage), v94);

    v102 = *(v86 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier);
    v103 = *(v86 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKeyIdentifier + 8);

    sub_1000092BC(v102, v103);
    sub_1000092BC(*(v86 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey), *(v86 + OBJC_IVAR____TtC7idcredd22LegacySEPresentmentKey_publicKey + 8));

    swift_deallocClassInstance();
    sub_1000092BC(v98, v93);
    v104 = v222;
LABEL_35:
    v74 = v235;
    v105 = [v235 keyType];
    a1 = v207;
    if (v105)
    {
      v106 = v105;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v107 = v200;
      CredentialKeyType.init(rawValue:)();
      if ((*v214)(v107, 1, v242) != 1)
      {
        v104 = v222;
        (*v194)(v222, v107, v242);
        v74 = v235;
        goto LABEL_40;
      }

      sub_10000A0D4(v107, &qword_100200510, qword_1001AB070);
      v74 = v235;
      v104 = v222;
    }

    v101(v104, v216, v242);
LABEL_40:
    v101(v226, v206, v242);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v25 = v239;
    if (v240 == v238 && v241 == v239)
    {
      v108 = v242;
      v109 = v228;
      v228(v226, v242);
      v109(v104, v108);

      v45 = v233;
    }

    else
    {
      v110 = v104;
      LODWORD(v235) = _stringCompareWithSmolCheck(_:_:expecting:)();
      v111 = v242;
      v112 = v228;
      v228(v226, v242);
      v112(v110, v111);

      v45 = v233;
      if ((v235 & 1) == 0)
      {
        sub_1000092BC(v230, v231);

        goto LABEL_49;
      }
    }

    v113 = [v74 publicKey];
    if (!v113)
    {

      v143 = &v211;
LABEL_67:
      v123 = *(v143 - 32);
      defaultLogger()();
      v152 = v189;

      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v157 = v152;
        v158 = v156;
        v240 = v156;
        *v155 = 136315138;
        *(v155 + 4) = sub_10010150C(v184, v157, &v240);
        _os_log_impl(&_mh_execute_header, v153, v154, "Presentment key for credential %s does not have a public key", v155, 0xCu);
        sub_100005090(v158);

        sub_1000092BC(v230, v231);
      }

      else
      {
        sub_1000092BC(v230, v231);
      }

LABEL_70:
      (*(v188 + 8))(v123, v187);
LABEL_71:
      v159 = 0;
      goto LABEL_86;
    }

    v114 = v113;
    v115 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;

    sub_1000092BC(v115, v117);
    v118 = [v74 keyBlob];
    if (!v118)
    {
      v144 = v179;
      defaultLogger()();

      v145 = v189;

      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v150 = v236;
        v240 = v149;
        *v148 = 136315394;
        v151 = sub_10010150C(v224, v150, &v240);

        *(v148 + 4) = v151;
        *(v148 + 12) = 2080;
        *(v148 + 14) = sub_10010150C(v184, v145, &v240);
        _os_log_impl(&_mh_execute_header, v146, v147, "Presentment key %s for credential %s does not exist", v148, 0x16u);
        swift_arrayDestroy();

        sub_1000092BC(v230, v231);
      }

      else
      {
        sub_1000092BC(v230, v231);
      }

      (*(v188 + 8))(v144, v187);
      goto LABEL_71;
    }

    v119 = v118;
    v120 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v121;

    sub_100009708(v120, v25);
    v122 = v237;
    sub_10002BD74(v224, v236, v120, v25, 0, 0xF000000000000000);
    v237 = v122;
    if (v122)
    {
      sub_1000092BC(v120, v25);
      sub_1000092BC(v120, v25);
      goto LABEL_73;
    }

    sub_1000092BC(v230, v231);

    sub_1000092BC(v120, v25);
    sub_1000092BC(v120, v25);
LABEL_49:
    v37 = v221 + 1;
    v7 = v205;
    if (v220 == v204)
    {
      goto LABEL_83;
    }
  }

  sub_1000092BC(v77, v79);
  v74 = v235;
LABEL_73:
  sub_1000092BC(v230, v231);

  v160 = v192;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v190 + 8))(v160, v191);
  return 0;
}

uint64_t sub_10015FCC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a2;
  v58 = a3;
  v6 = type metadata accessor for Logger();
  v59 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v52 = &v50 - v10;
  __chkstk_darwin(v9);
  v12 = &v50 - v11;
  v13 = type metadata accessor for DIPSignpost.Config();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for DIPSignpost();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.consistencyCheckPayloads.getter();
  v60 = v17;
  DIPSignpost.init(_:)();
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    while (1)
    {
      v51 = v6;
      v53 = v15;
      v54 = v14;
      v55 = v4;
      v6 = 0;
      v15 = a1 & 0xC000000000000001;
      v61 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *(v61 + 16))
          {
            goto LABEL_22;
          }

          v19 = *(a1 + 8 * v6 + 32);
        }

        v12 = v19;
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v20 = [v19 payloadData];
        if (!v20)
        {
          v27 = v52;
          defaultLogger()();
          v28 = v58;

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v62 = v32;
            *v31 = 136315138;
            *(v31 + 4) = sub_10010150C(v57, v28, &v62);
            _os_log_impl(&_mh_execute_header, v29, v30, "Credential %s has a payload with empty payload data", v31, 0xCu);
            sub_100005090(v32);
          }

          (*(v59 + 8))(v27, v51);
          v26 = 0;
          goto LABEL_16;
        }

        v21 = v20;
        v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        sub_1000092BC(v14, v23);
        v24 = [v12 presentmentKey];
        if (!v24)
        {
          v33 = v56;
          defaultLogger()();
          v34 = v58;

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          v37 = os_log_type_enabled(v35, v36);
          v14 = v54;
          v15 = v53;
          if (v37)
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v62 = v39;
            *v38 = 136315138;
            *(v38 + 4) = sub_10010150C(v57, v34, &v62);
            _os_log_impl(&_mh_execute_header, v35, v36, "Credential %s has a payload without a presentment key", v38, 0xCu);
            sub_100005090(v39);

            (*(v59 + 8))(v56, v51);
          }

          else
          {

            (*(v59 + 8))(v33, v51);
          }

          goto LABEL_20;
        }

        v25 = v24;

        ++v6;
        if (v4 == v18)
        {
          v26 = 1;
LABEL_16:
          v14 = v54;
          v15 = v53;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        break;
      }

      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
LABEL_20:
        v26 = 1;
        goto LABEL_30;
      }
    }
  }

  defaultLogger()();
  v40 = v58;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v40;
    v46 = v6;
    v47 = v44;
    v62 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_10010150C(v57, v45, &v62);
    _os_log_impl(&_mh_execute_header, v41, v42, "Credential %s does not have any payloads", v43, 0xCu);
    sub_100005090(v47);

    (*(v59 + 8))(v12, v46);
  }

  else
  {

    (*(v59 + 8))(v12, v6);
  }

  v26 = 0;
LABEL_30:
  v48 = v60;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v15 + 8))(v48, v14);
  return v26;
}

uint64_t sub_10016032C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001603A0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100160464, 0, 0);
}

uint64_t sub_100160464()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[9] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = sub_1001663DC;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = sub_100004E70(&qword_100203CD8, &unk_1001AEA70);
  *v6 = v0;
  v6[1] = sub_1001605BC;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_100140EA4, v5, v7);
}

uint64_t sub_1001605BC()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100160724, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_100160724()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100160888()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001609BC, 0, 0);
}

uint64_t sub_1001609BC(uint64_t a1)
{
  if (_isInternalBuild.getter())
  {
    sub_100046D78(0);
    v1[14] = v2;
    v12 = v2;
    v13 = swift_allocObject();
    v1[15] = v13;
    *(v13 + 16) = v12;
    v14 = swift_allocObject();
    v1[16] = v14;
    *(v14 + 16) = sub_100166378;
    *(v14 + 24) = v13;

    v15 = swift_task_alloc();
    v1[17] = v15;
    v16 = sub_100004E70(&qword_100203CD0, &qword_1001AEA60);
    *v15 = v1;
    v15[1] = sub_100160E64;

    return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 2, sub_100166394, v14, v16);
  }

  else
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v1[13];
    v7 = v1[9];
    v8 = v1[10];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "getLegacySESlots requires an internal build", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);

    v10 = v1[1];

    return v10(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100160E64()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {

    v3 = sub_100161474;
  }

  else
  {

    *(v2 + 152) = *(v2 + 16);
    v3 = sub_100160FA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100160FA4(uint64_t a1)
{
  v44 = v1;
  v1[4] = v1[19];
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v41 = v1[12];
    v5 = v1[9];
    v4 = v1[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 136315138;
    v8 = Set.description.getter();
    v10 = sub_10010150C(v8, v9, &v43);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Occupied slots: %s", v6, 0xCu);
    sub_100005090(v7);

    v11 = *(v4 + 8);
    v11(v41, v5);
  }

  else
  {
    v12 = v1[12];
    v13 = v1[9];
    v14 = v1[10];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v40 = v1[9];
    v42 = v1[11];
    v17 = v11;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = v19;
    *v18 = 136315138;

    v20 = Set.description.getter();
    v22 = v21;

    v23 = sub_10010150C(v20, v22, &v43);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Credential slots: %s", v18, 0xCu);
    sub_100005090(v19);

    v17(v42, v40);
  }

  else
  {
    v24 = v1[11];
    v25 = v1[9];

    v11(v24, v25);
  }

  v26 = v1[14];
  if (*(v1[20] + 16) <= v26[2] >> 3)
  {
    v43 = v1[14];

    sub_100164C08(v29);

    v28 = v43;
  }

  else
  {

    v28 = sub_100164D00(v27, v26);
  }

  v30 = 0;
  v31 = -1;
  v32 = -1 << *(v28 + 32);
  if (-v32 < 64)
  {
    v31 = ~(-1 << -v32);
  }

  v33 = v31 & v28[7];
  v34 = (63 - v32) >> 6;
  for (i = v1 + 19; v33; i = v1 + 4)
  {
LABEL_18:
    v38 = [objc_allocWithZone(DCLegacySESlotInfo) initWithSESlot:*(v28[6] + ((v30 << 9) | (8 * __clz(__rbit64(v33))))) isMissing:0];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v1[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v33 &= v33 - 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v36 = *i;
  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    if (v37 >= v34)
    {
      break;
    }

    v33 = v28[v37 + 7];
    ++v30;
    if (v33)
    {
      v30 = v37;
      goto LABEL_18;
    }
  }

  v39 = v1[1];

  v39(v36);
}

uint64_t sub_100161474()
{
  v1 = v0[7];

  (*(v1 + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001615F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100161724, 0, 0);
}

uint64_t sub_100161724(uint64_t a1)
{
  v28 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v27);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStorage clearPresentmentKeyUsage for credential %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  if (_isInternalBuild.getter())
  {
    v14 = v1[3];
    v13 = v1[4];
    v15 = v1[2];
    v16 = swift_allocObject();
    v1[12] = v16;
    v16[2] = v13;
    v16[3] = v15;
    v16[4] = v14;
    v17 = swift_allocObject();
    v1[13] = v17;
    *(v17 + 16) = sub_10016602C;
    *(v17 + 24) = v16;

    v18 = swift_task_alloc();
    v1[14] = v18;
    *v18 = v1;
    v18[1] = sub_100161A70;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v18, sub_10001AAC8, v17, &type metadata for () + 8);
  }

  else
  {
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v1[10];
    v23 = v1[8];
    if (v21)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "clearPresentmentKeyUsage requires an internal build", v24, 2u);
    }

    v12(v22, v23);

    v25 = v1[1];

    return v25();
  }
}

uint64_t sub_100161A70()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100161C0C;
  }

  else
  {

    v2 = sub_100161B94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100161B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100161C0C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100161D8C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100161EB8, 0, 0);
}

uint64_t sub_100161EB8(uint64_t a1)
{
  v29 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];
  if (v4)
  {
    v9 = v1[3];
    v8 = v1[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10010150C(v9, v8, &v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "CredentialStorage keyInfo for credential %s", v10, 0xCu);
    sub_100005090(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  if (_isInternalBuild.getter())
  {
    v14 = v1[4];
    v13 = v1[5];
    v15 = v1[3];
    v16 = swift_allocObject();
    v1[13] = v16;
    v16[2] = v13;
    v16[3] = v15;
    v16[4] = v14;
    v17 = swift_allocObject();
    v1[14] = v17;
    *(v17 + 16) = sub_100164BE8;
    *(v17 + 24) = v16;

    v18 = swift_task_alloc();
    v1[15] = v18;
    v19 = sub_100004E70(&qword_100203CC8, &qword_1001AEA48);
    *v18 = v1;
    v18[1] = sub_100162220;

    return AsyncCoreDataContainer.performRead<A>(_:)(v1 + 2, sub_100141890, v17, v19);
  }

  else
  {
    defaultLogger()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v1[11];
    v24 = v1[9];
    if (v22)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "keyInfo requires an internal build", v25, 2u);
    }

    v12(v23, v24);

    v26 = v1[1];

    return v26(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100162220()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100162398, 0, 0);
  }

  else
  {

    v3 = v2[2];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_100162398()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

unint64_t sub_100162524@<X0>(uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10016A520(a2, a3);
  if (v4)
  {
    return result;
  }

  v13 = result;
  v25 = v11;
  v30 = _swiftEmptyArrayStorage;
  result = sub_10005947C();
  v15 = result;
  if (!(result >> 62))
  {
    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_15:

    *a4 = _swiftEmptyArrayStorage;
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_4:
  v20 = v13;
  v21 = a4;
  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    v29 = v15 & 0xC000000000000001;
    v27 = v9 + 8;
    v26 = _swiftEmptyArrayStorage;
    *&v14 = 136315138;
    v22 = v14;
    v23 = v15;
    v24 = v8;
    v28 = v16;
    do
    {
      if (v29)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      sub_10005DCD8();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v26 = v30;
      ++v17;
    }

    while (v16 != v17);

    *v21 = v26;
  }

  return result;
}

unint64_t sub_1001628D0@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v5 = type metadata accessor for CredentialKeyUsage();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = _swiftEmptyArrayStorage;
  v82 = &_swiftEmptySetSingleton;
  result = sub_100051CD4();
  v76 = v2;
  if (!v2)
  {
    v74 = result;
    v75 = a1;
    if (result >> 62)
    {
      goto LABEL_61;
    }

    v66 = result & 0xFFFFFFFFFFFFFF8;
    v67 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v67)
    {
LABEL_4:
      v10 = 0;
      v73 = result & 0xC000000000000001;
      v64 = "fiersByNamespace()";
      v63 = enum case for CredentialKeyUsage.presentment(_:);
      v62 = (v6 + 104);
      v61 = (v6 + 8);
      v68 = v75 + 7;
      v6 = _swiftEmptyArrayStorage;
      v60 = xmmword_1001AAE50;
      v70 = a2;
      v65 = v8;
LABEL_5:
      v69 = v6;
      v11 = v66;
      v8 = v67;
      while (1)
      {
        if (v73)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *(v11 + 16))
          {
            goto LABEL_58;
          }

          result = *(result + 8 * v10 + 32);
        }

        v12 = result;
        v6 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v66 = result & 0xFFFFFFFFFFFFFF8;
          v54 = _CocoaArrayWrapper.endIndex.getter();
          result = v74;
          v67 = v54;
          if (!v54)
          {
            break;
          }

          goto LABEL_4;
        }

        result = [result credentialIdentifier];
        if (result)
        {
          v77 = (v10 + 1);
          v13 = result;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v17 = [v12 managedObjectContext];
          if (v17)
          {
            v18 = v17;
            v79 = v12;
            v80 = type metadata accessor for StoredCryptoKey();
            v78 = static StoredCryptoKey.fetchRequest()();
            v72 = sub_100050ECC();
            sub_100004E70(&qword_100201868, &unk_1001ABDC0);
            v19 = swift_allocObject();
            *(v19 + 16) = v60;
            *(v19 + 56) = &type metadata for String;
            v20 = sub_100050F18();
            *(v19 + 64) = v20;
            *(v19 + 32) = v14;
            *(v19 + 40) = v16;
            v21 = v65;
            (*v62)(v65, v63, v5);
            v22 = CredentialKeyUsage.rawValue.getter();
            v24 = v23;
            (*v61)(v21, v5);
            *(v19 + 96) = &type metadata for String;
            *(v19 + 104) = v20;
            *(v19 + 72) = v22;
            *(v19 + 80) = v24;
            v25 = NSPredicate.init(format:_:)();
            v26 = v78;
            [v78 setPredicate:v25];

            v27 = v76;
            v28 = NSManagedObjectContext.fetch<A>(_:)();

            v76 = v27;
            if (v27)
            {
            }

            v11 = v66;
            v8 = v67;
            v6 = v77;
            v12 = v79;
            a2 = v70;
            if (v28 >> 62)
            {
LABEL_20:
              result = _CocoaArrayWrapper.endIndex.getter();
              v29 = result;
              if (result)
              {
LABEL_23:
                v77 = v6;
                v57 = v5;
                v5 = 0;
                v72 = v28 & 0xC000000000000001;
                v59 = v28 & 0xFFFFFFFFFFFFFF8;
                v69 = v28;
                v58 = v28 + 32;
                v6 = v75;
                v79 = v12;
                v71 = v29;
                while (1)
                {
                  if (v72)
                  {
                    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v5 >= *(v59 + 16))
                    {
                      goto LABEL_60;
                    }

                    result = *(v58 + 8 * v5);
                  }

                  v8 = result;
                  if (__OFADD__(v5++, 1))
                  {
                    goto LABEL_59;
                  }

                  v31 = [result keySlot];
                  sub_100102364(&v81, v31);
                  if (*(v6 + 2) && (v32 = static Hasher._hash(seed:_:)(), v33 = -1 << v6[32], v34 = v32 & ~v33, ((*(v68 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
                  {
                    v35 = ~v33;
                    do
                    {
                      v36 = *(*(v6 + 6) + 8 * v34);
                      v37 = v36 != v31;
                      if (v36 == v31)
                      {
                        break;
                      }

                      v34 = (v34 + 1) & v35;
                    }

                    while (((*(v68 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
                  }

                  else
                  {
                    v37 = 1;
                  }

                  v38 = [v12 partition];
                  if (v38)
                  {
                    v39 = v38;
                    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v41 = v40;
                  }

                  else
                  {
                    v78 = 0;
                    v41 = 0;
                  }

                  v42 = [v12 credentialIdentifier];
                  if (v42)
                  {
                    v43 = v42;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v45 = v44;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  v80 = v8;
                  v46 = [v8 identifier];
                  if (v46)
                  {
                    v47 = v46;
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v8 = v48;

                    if (v41)
                    {
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    v8 = 0;
                    if (v41)
                    {
LABEL_44:
                      a2 = String._bridgeToObjectiveC()();

                      if (v45)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_49;
                    }
                  }

                  a2 = 0;
                  if (v45)
                  {
LABEL_45:
                    v49 = String._bridgeToObjectiveC()();

                    if (!v8)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_46;
                  }

LABEL_49:
                  v49 = 0;
                  if (!v8)
                  {
LABEL_50:
                    v50 = 0;
                    goto LABEL_51;
                  }

LABEL_46:
                  v50 = String._bridgeToObjectiveC()();

LABEL_51:
                  v12 = v79;
                  v51 = v80;
                  v52 = [objc_allocWithZone(DCLegacySESlotInfo) initWithSESlot:v31 isMissing:v37 partition:a2 credentialIdentifier:v49 presentmentKeyIdentifier:v50];

                  v53 = v52;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v6 = v75;
                  if (v5 == v71)
                  {
                    v6 = v83;

                    v10 = v77;
                    a2 = v70;
                    v5 = v57;
                    result = v74;
                    if (v77 != v67)
                    {
                      goto LABEL_5;
                    }

                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_17;
            }
          }

          else
          {

            v28 = _swiftEmptyArrayStorage;
            a2 = v70;
            v6 = v77;
            if (_swiftEmptyArrayStorage >> 62)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          v28 = _swiftEmptyArrayStorage;
          if (_swiftEmptyArrayStorage >> 62)
          {
            goto LABEL_20;
          }
        }

        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_23;
        }

LABEL_17:

        ++v10;
        result = v74;
        if (v6 == v8)
        {
          v6 = v69;
          goto LABEL_63;
        }
      }
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_63:

    v55 = v82;
    *a2 = v6;
    a2[1] = v55;
  }

  return result;
}

void sub_100163070(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10016A520(a3, a4);
  if (v4)
  {
    return;
  }

  v46 = v11;
  v47 = v8;
  v42 = v12;
  sub_10005A084();
  v15 = v13;
  if (v13 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v40 = 0;
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_27:

    sub_100050240();

    return;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v40 = 0;
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_4:
  v41 = a1;
  if (v16 >= 1)
  {
    v17 = v16;
    v18 = 0;
    v53 = v15 & 0xC000000000000001;
    v48 = (v9 + 8);
    *&v14 = 136315138;
    v43 = v14;
    v20 = v46;
    v19 = v47;
    v44 = v16;
    v45 = v15;
    while (1)
    {
      if (v53)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v15 + 8 * v18 + 32);
      }

      v23 = v22;
      defaultLogger()();
      v24 = v23;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v51 = v28;
        *v27 = v43;
        v29 = [v24 identifier];
        if (v29)
        {
          v30 = v29;
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;
        }

        else
        {
          v33 = 0xE500000000000000;
          v31 = 0x3E6C696E3CLL;
        }

        v34 = sub_10010150C(v31, v33, &v51);

        *(v27 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v25, v26, "Clearing presentment key usage for key %s", v27, 0xCu);
        sub_100005090(v28);

        v19 = v47;
        v20 = v46;
        (*v48)(v46, v47);
        v17 = v44;
        v15 = v45;
      }

      else
      {

        (*v48)(v20, v19);
      }

      [v24 setTimesUsed:0];
      v35 = [v24 relyingParties];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 anyObject];

        if (v37)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v49 = 0u;
          v50 = 0u;
        }

        v51 = v49;
        v52 = v50;
        if (*(&v50 + 1))
        {
          type metadata accessor for StoredRelyingParty();
          if (swift_dynamicCast())
          {
            v38 = v49;
            [*(v41 + 16) deleteObject:v49];
          }

          goto LABEL_8;
        }
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
      }

      sub_10000A0D4(&v51, &qword_1002004C0, &unk_1001AB940);
LABEL_8:
      ++v18;
      v21 = [objc_allocWithZone(NSSet) init];
      [v24 setRelyingParties:v21];

      if (v17 == v18)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
}

void sub_1001634E0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v198 = a2;
  v184 = a5;
  v181 = type metadata accessor for Logger();
  v188 = *(v181 - 8);
  __chkstk_darwin(v181);
  v180 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for DIPError.Code();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v182 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v11 = __chkstk_darwin(v10 - 8);
  v192 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v191 = &v136 - v13;
  v194 = type metadata accessor for Date();
  v187 = *(v194 - 8);
  v14 = __chkstk_darwin(v194);
  v16 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v195 = &v136 - v18;
  __chkstk_darwin(v17);
  v196 = &v136 - v19;
  v20 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  __chkstk_darwin(v20 - 8);
  v185 = &v136 - v21;
  v193 = type metadata accessor for CredentialKeyUsage();
  v186 = *(v193 - 8);
  __chkstk_darwin(v193);
  v190 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100004E70(&qword_100200510, qword_1001AB070);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v136 - v27;
  v29 = type metadata accessor for CredentialKeyType();
  v183 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v32 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v136 - v33;
  v189 = a3;
  v35 = v197;
  v36 = sub_10016A520(a3, a4);
  if (!v35)
  {
    v197 = a1;
    v173 = v34;
    v172 = v32;
    v174 = v29;
    v158 = v28;
    v171 = v26;
    v170 = a4;
    v201 = _swiftEmptyArrayStorage;
    v37 = v36;
    v38 = sub_100059C5C();
    v148 = v37;
    v39 = 0xD000000000000012;
    v200 = v38;
    v40 = sub_1000508BC(0xD000000000000012, 0x80000001001B18B0);
    v41 = 0;
    v179 = v16;
    if (v40)
    {
      v42 = v40;
      v43 = [v40 progenitorKey];

      v44 = v184;
      v45 = v192;
      if (v43)
      {
        v46 = v43;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v200 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v200 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_74;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v44 = v184;
      v45 = v192;
    }

LABEL_7:
    v47 = sub_1000508BC(v39 + 12, 0x80000001001B18D0);
    if (v41)
    {

      return;
    }

    v138 = 0;
    if (v47)
    {
      v49 = v47;
      v50 = [v47 progenitorKey];

      v41 = v193;
      v39 = v174;
      if (v50)
      {
        v51 = v50;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v200 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v200 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v38 = v200;
      }
    }

    else
    {
      v41 = v193;
      v39 = v174;
    }

    v52 = v44;
    if (v38 >> 62)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v46 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v183;
    if (!v46)
    {

      *v52 = _swiftEmptyArrayStorage;
      return;
    }

    v53 = 0;
    v153 = v38 & 0xC000000000000001;
    v142 = v38 & 0xFFFFFFFFFFFFFF8;
    v155 = (v183 + 48);
    v144 = (v183 + 32);
    v157 = enum case for CredentialKeyType.invalid(_:);
    v156 = v183 + 104;
    v162 = v183 + 8;
    v143 = (v186 + 48);
    v141 = (v186 + 32);
    v146 = enum case for CredentialKeyUsage.invalid(_:);
    v145 = (v186 + 104);
    v150 = (v186 + 8);
    v154 = (v187 + 32);
    v168 = (v187 + 56);
    v147 = (v187 + 48);
    v140 = (v183 + 88);
    v139 = enum case for CredentialKeyType.ses(_:);
    v137 = (v188 + 8);
    v151 = (v187 + 8);
    v175 = _swiftEmptyArrayStorage;
    *&v48 = 136315138;
    v136 = v48;
    v152 = v38;
    v149 = v46;
    while (1)
    {
      if (v153)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v53 >= *(v142 + 16))
        {
          goto LABEL_73;
        }

        v54 = *(v38 + 8 * v53 + 32);
      }

      v44 = v54;
      v55 = v173;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_5:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v38 = v200;
        goto LABEL_7;
      }

      v56 = [v54 identifier];
      if (v56)
      {
        v57 = v56;
        v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v58;
      }

      else
      {
        v169 = 0;
        v176 = 0xE000000000000000;
      }

      v166 = (v53 + 1);
      v59 = [v44 publicKey];
      if (v59)
      {
        v60 = v59;
        v188 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v197 = v61;
      }

      else
      {
        v188 = 0;
        v197 = 0xC000000000000000;
      }

      v62 = [v44 publicKeyIdentifier];
      v167 = v53;
      if (v62)
      {
        v63 = v62;
        v186 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v187 = v64;
      }

      else
      {
        v186 = 0;
        v187 = 0xC000000000000000;
      }

      v65 = v195;
      v66 = [v44 keyType];
      if (!v66)
      {
        goto LABEL_37;
      }

      v67 = v66;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = v158;
      CredentialKeyType.init(rawValue:)();
      if ((*v155)(v68, 1, v39) == 1)
      {
        break;
      }

      (*v144)(v55, v68, v39);
      v65 = v195;
      v41 = v193;
LABEL_39:
      v165 = CredentialKeyType.rawValue.getter();
      v69 = v55;
      v70 = *v162;
      (*v162)(v69, v39);
      v71 = [v44 usage];
      if (!v71)
      {
        goto LABEL_42;
      }

      v72 = v71;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = v185;
      v41 = v193;
      CredentialKeyUsage.init(rawValue:)();
      if ((*v143)(v73, 1, v41) == 1)
      {
        sub_10000A0D4(v73, &qword_1002024A8, &unk_1001ACFA0);
        v65 = v195;
LABEL_42:
        v74 = v190;
        (*v145)(v190, v146, v41);
        goto LABEL_44;
      }

      v74 = v190;
      (*v141)(v190, v73, v41);
      v65 = v195;
LABEL_44:
      v164 = CredentialKeyUsage.rawValue.getter();
      (*v150)(v74, v41);
      v75 = [v44 createdAt];
      v183 = v44;
      if (v75)
      {
        v76 = v65;
        v77 = v75;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v78 = *v154;
        v79 = v191;
        v80 = v194;
        (*v154)(v191, v76, v194);
        v81 = *v168;
        (*v168)(v79, 0, 1, v80);
        v82 = v79;
        v39 = v174;
        v78(v196, v82, v80);
        v44 = v183;
      }

      else
      {
        v81 = *v168;
        v83 = v191;
        v80 = v194;
        (*v168)(v191, 1, 1, v194);
        static Date.distantPast.getter();
        if ((*v147)(v83, 1, v80) != 1)
        {
          sub_10000A0D4(v83, &qword_1002004D0, &unk_1001AE1C0);
        }
      }

      v84 = [v44 updatedAt];
      if (v84)
      {
        v85 = v195;
        v86 = v84;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v87 = *v154;
        v88 = v85;
        v89 = v194;
        (*v154)(v45, v88, v194);
        v81(v45, 0, 1, v89);
        v87(v179, v45, v89);
        v44 = v183;
      }

      else
      {
        v81(v45, 1, 1, v80);
        static Date.distantPast.getter();
        if ((*v147)(v45, 1, v80) != 1)
        {
          sub_10000A0D4(v45, &qword_1002004D0, &unk_1001AE1C0);
        }
      }

      v163 = [v44 timesUsed];
      v90 = [v44 keyType];
      v91 = v171;
      if (!v90)
      {
        goto LABEL_55;
      }

      v92 = v90;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      CredentialKeyType.init(rawValue:)();
      if ((*v155)(v91, 1, v39) == 1)
      {
        sub_10000A0D4(v91, &qword_100200510, qword_1001AB070);
LABEL_55:
        v93 = v172;
        (*v156)(v172, v157, v39);
LABEL_56:
        v70(v93, v39);
        v94 = 0;
        v95 = 0xC000000000000000;
        goto LABEL_57;
      }

      v93 = v172;
      (*v144)(v172, v91, v39);
      v114 = (*v140)(v93, v39);
      if (v114 != v139)
      {
        goto LABEL_56;
      }

      v115 = [v44 keyBlob];
      if (!v115)
      {

        v126 = v180;
        defaultLogger()();
        v127 = v176;

        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v199 = v131;
          *v130 = v136;
          v132 = sub_10010150C(v169, v127, &v199);

          *(v130 + 4) = v132;
          v39 = v174;
          _os_log_impl(&_mh_execute_header, v128, v129, "Cannot report SES presentment key %s because it has no key blob", v130, 0xCu);
          sub_100005090(v131);
        }

        else
        {
        }

        sub_1000092BC(v186, v187);
        sub_1000092BC(v188, v197);
        (*v137)(v126, v181);
        v133 = *v151;
        v134 = v194;
        (*v151)(v179, v194);
        v133(v196, v134);
        v45 = v192;
        v41 = v193;
        v38 = v152;
        goto LABEL_60;
      }

      v116 = v115;
      v117 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      v120 = v138;
      v121 = sub_10002BD74(v169, v176, v117, v119, 0, 0xF000000000000000);
      v122 = v194;
      if (v120)
      {

        sub_1000092BC(v117, v119);

        sub_1000092BC(v186, v187);
        sub_1000092BC(v188, v197);
        v135 = *v151;
        (*v151)(v179, v122);
        v135(v196, v122);

        return;
      }

      v161 = v119;
      v123 = sub_10002B1A4(*(v121 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob), *(v121 + OBJC_IVAR____TtC7idcredd17SESPresentmentKey_keyBlob + 8));
      v138 = 0;
      v124 = v123;
      v94 = SecAccessControlRef.data.getter();
      v95 = v125;

      sub_1000092BC(v117, v161);
LABEL_57:
      v175 = v94;
      v176 = v95;
      v161 = objc_allocWithZone(DCCredentialCryptoKeyInfo);
      sub_100009708(v188, v197);
      sub_100009708(v186, v187);
      sub_100009708(v94, v95);
      v96 = String._bridgeToObjectiveC()();

      v160 = String._bridgeToObjectiveC()();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v97 = Data._bridgeToObjectiveC()().super.isa;
      v98 = String._bridgeToObjectiveC()();

      v99 = String._bridgeToObjectiveC()();

      v100 = Date._bridgeToObjectiveC()().super.isa;
      v101 = Date._bridgeToObjectiveC()().super.isa;
      v102 = Data._bridgeToObjectiveC()().super.isa;
      v103 = v96;
      v104 = v96;
      v105 = v160;
      v106 = isa;
      v169 = [v161 initWithIdentifier:v104 credentialIdentifier:v160 publicKey:isa publicKeyIdentifier:v97 keyType:v98 keyUsage:v99 createdAt:v100 updatedAt:v101 presentmentKeyTimesUsed:v163 acl:v102];

      v107 = v186;
      v44 = v187;
      v108 = v188;
      v109 = v197;

      v110 = v175;
      v111 = v176;

      sub_1000092BC(v110, v111);
      sub_1000092BC(v107, v44);
      sub_1000092BC(v108, v109);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v111 = v176;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_1000092BC(v110, v111);
      sub_1000092BC(v107, v44);
      sub_1000092BC(v108, v109);
      v112 = *v151;
      v113 = v194;
      (*v151)(v179, v194);
      v112(v196, v113);
      v175 = v201;
      v45 = v192;
      v41 = v193;
      v38 = v152;
      v39 = v174;
LABEL_60:
      v53 = v167 + 1;
      v46 = v149;
      if (v166 == v149)
      {

        *v184 = v175;
        return;
      }
    }

    sub_10000A0D4(v68, &qword_100200510, qword_1001AB070);
    v65 = v195;
    v41 = v193;
LABEL_37:
    (*v156)(v55, v157, v39);
    goto LABEL_39;
  }
}

void sub_100164C08(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_100165608(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void *sub_100164D00(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        v19 = static Hasher._hash(seed:_:)();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & v13[v5 >> 6]) == 0);
      v21 = v6[6];
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & v13[v5 >> 6]) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v46;
    v51 = v48;
    v52 = v11;
    v49[0] = v47;
    v49[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, v6 + 7, v14);
      v41 = sub_1001656F8(v40, v4, v6, v5, v49);

      v2 = v49[0];
      v46 = v50;
      v48 = v51;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v4;
    v44 = &v42;
    __chkstk_darwin(v22);
    v5 = &v42 - v23;
    memcpy(&v42 - v23, v6 + 7, v14);
    v24 = v6[2];
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v48 << 9) | (8 * v29)));
      v30 = static Hasher._hash(seed:_:)();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & v13[v32 >> 6]) != 0)
      {
        v35 = v6[6];
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & v13[v32 >> 6]) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_100165A98(v5, v43, v45, v6);
LABEL_41:
    v38 = v2;
LABEL_43:
    sub_1000BAE9C(v38);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v6;
}

unint64_t *sub_10016515C(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    __chkstk_darwin(v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_100165C84(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v33 = Hasher._finalize()();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_1001658B4(v44, v49, v2, v13, v57);

  if (!v45)
  {

    return v46;
  }

  __break(1u);
  return result;
}

uint64_t sub_100165608(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100105F08();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_100165EA8(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1001656F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = static Hasher._hash(seed:_:)();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return &_swiftEmptySetSingleton;
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_100165A98(v8, a2, v10, a3);
}

unint64_t *sub_1001658B4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_100165C84(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_100165A98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004E70(&qword_100203620, &qword_1001ADE78);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = static Hasher._hash(seed:_:)();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_100165C84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004E70(&qword_100203430, &qword_1001ADCE0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100165EA8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10016604C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100166084(uint64_t a1)
{
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_isInternalBuild.getter())
  {
    sub_100032980(a1);
    if (v1)
    {
      (*(v4 + 104))(v6, enum case for DIPError.Code.internalError(_:), v3);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "deleteLegacySESlot requires an internal build", v13, 2u);
    }

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_100166340()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100166394@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    result = *&v6;
    *a2 = v6;
  }

  return result;
}

uint64_t sub_100166410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a2;
  v4[10] = v3;
  v4[8] = a1;
  v8 = type metadata accessor for DIPError.Code();
  v4[11] = v8;
  v4[12] = *(v8 - 8);
  v4[13] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[14] = v9;
  *v9 = v4;
  v9[1] = sub_100166528;

  return sub_100166E08((v4 + 2), a1, a2, a3);
}

uint64_t sub_100166528()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v3[15] = v0;
  v5 = v2[2];
  v3[16] = v5;
  v6 = v2[3];
  v3[17] = v6;
  v7 = v2[4];
  v3[18] = v7;
  v8 = v2[5];
  v3[19] = v8;
  v9 = v2[6];
  v3[20] = v9;
  v10 = v2[7];
  v3[21] = v10;

  if (v0)
  {

    return _swift_task_switch(sub_100166AF0, 0, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    v3[22] = v11;
    *v11 = v4;
    v11[1] = sub_100166774;
    v12 = v3[9];
    v13 = v3[8];

    return sub_100168394(v13, v12, v5, v6, v7, v8, v9, v10);
  }
}

uint64_t sub_100166774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[23] = a1;
  v5[24] = a2;
  v5[25] = a3;
  v5[26] = v3;

  if (v3)
  {
    v6 = sub_100166C70;
  }

  else
  {
    v6 = sub_10016688C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10016688C()
{
  v1 = *(v0 + 208);
  sub_100168F08(*(v0 + 128), *(v0 + 136), *(v0 + 184), *(v0 + 192), *(v0 + 200));
  v3 = v2;
  v4 = *(v0 + 192);
  v5 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  if (v1)
  {

    sub_10001C120(v5, v4);
    sub_10016A118(v9, v8, v7, v6);

    (*(*(v0 + 96) + 104))(*(v0 + 104), enum case for DIPError.Code.internalError(_:), *(v0 + 88));
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {

    sub_10001C120(v5, v4);
    sub_10016A118(v9, v8, v7, v6);

    v12 = *(v0 + 8);

    return v12(v3);
  }
}

uint64_t sub_100166AF0()
{
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100166C70()
{
  sub_10016A118(v0[18], v0[19], v0[20], v0[21]);

  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100166E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a4;
  v5[25] = v4;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return _swift_task_switch(sub_100166F44, 0, 0);
}

uint64_t sub_100166F44(uint64_t a1)
{
  v2 = v1[24];
  if (v2 == 1)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Generating SES device encryption key", v14, 2u);
    }

    v15 = v1[32];
    v16 = v1[29];
    v17 = v1[30];
    v18 = v1[25];

    v19 = *(v17 + 8);
    v1[37] = v19;
    v19(v15, v16);
    v1[38] = *(v18 + 24);
    type metadata accessor for AppleIDVManager();

    sub_1000215BC(v1 + 5);
    v20 = sub_100009BF8();
    v1[39] = v20;
    v26 = v20;
    v27 = swift_task_alloc();
    v1[40] = v27;
    *v27 = v1;
    v27[1] = sub_100167788;

    return sub_10002C6CC(v26);
  }

  else if (v2)
  {
    v22 = v1[27];
    v21 = v1[28];
    v23 = v1[26];
    _StringGuts.grow(_:)(38);

    v1[20] = v2;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    (*(v22 + 104))(v21, enum case for DIPError.Code.idcsinvalidDeviceEncryptionKeyType(_:), v23);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v1[27] + 104))(v1[28], enum case for DIPError.Code.internalError(_:), v1[26]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v25 = v1[1];

    return v25();
  }

  else
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Generating SEP device encryption key", v5, 2u);
    }

    v6 = v1[33];
    v7 = v1[29];
    v8 = v1[30];

    v9 = *(v8 + 8);
    v1[34] = v9;
    v9(v6, v7);
    v10 = swift_task_alloc();
    v1[35] = v10;
    *v10 = v1;
    v10[1] = sub_1001674E8;

    return sub_1000291A8();
  }
}

uint64_t sub_1001674E8(uint64_t a1)
{
  v3 = *v2;
  v3[14] = v2;
  v3[15] = a1;
  v3[16] = v1;
  v3[36] = v1;

  if (v1)
  {
    v4 = sub_10016802C;
  }

  else
  {
    v4 = sub_100167604;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100167604()
{
  v1 = v0[15];
  v0[42] = v0[34];
  v0[43] = &off_1001F4DB0;
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v0[44] = v1;
  v5 = swift_allocObject();
  v0[45] = v5;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v1;
  v5[6] = &off_1001F4DB0;
  v6 = swift_allocObject();
  v0[46] = v6;
  *(v6 + 16) = sub_10016A240;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  v0[47] = v7;
  v8 = sub_100004E70(&qword_100203CE0, &qword_1001AEAA0);
  *v7 = v0;
  v7[1] = sub_100167A40;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 10, sub_1000DCAB0, v6, v8);
}

uint64_t sub_100167788(uint64_t a1)
{
  v3 = *v2;
  v3[17] = v2;
  v3[18] = a1;
  v3[19] = v1;
  v3[41] = v1;

  if (v1)
  {
    v4 = sub_1001681D4;
  }

  else
  {
    v4 = sub_1001678A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001678A4()
{

  sub_100005090((v0 + 40));
  v1 = *(v0 + 144);
  *(v0 + 336) = *(v0 + 296);
  *(v0 + 344) = &off_1001F4D48;
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  *(v0 + 352) = v1;
  v5 = swift_allocObject();
  *(v0 + 360) = v5;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v1;
  v5[6] = &off_1001F4D48;
  v6 = swift_allocObject();
  *(v0 + 368) = v6;
  *(v6 + 16) = sub_10016A240;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  *(v0 + 376) = v7;
  v8 = sub_100004E70(&qword_100203CE0, &qword_1001AEAA0);
  *v7 = v0;
  v7[1] = sub_100167A40;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 80, sub_1000DCAB0, v6, v8);
}

uint64_t sub_100167A40()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_100167E68;
  }

  else
  {

    v2 = sub_100167B64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100167B64(uint64_t a1)
{
  v34 = v1;
  v31 = *(v1 + 96);
  v32 = *(v1 + 80);
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v1 + 344);
    v4 = *(v1 + 352);
    v27 = *(v1 + 176);
    v28 = *(v1 + 184);
    v6 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = *v4;
    v8 = v4[2];
    v9 = v4[3];

    v10 = sub_10010150C(v8, v9, &v33);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10010150C(v27, v28, &v33);
    *(v6 + 22) = 2080;
    v11 = (*(v5 + 8))(v7, v5);
    if (v12 >> 60 == 15)
    {
      object = 0xE500000000000000;
      countAndFlagsBits = 0x3E6C696E3CLL;
    }

    else
    {
      v18 = v11;
      v19 = v12;
      v20 = Data.base16EncodedString()();
      object = v20._object;
      sub_10001C120(v18, v19);
      countAndFlagsBits = v20._countAndFlagsBits;
    }

    v29 = *(v1 + 336);
    v21 = *(v1 + 248);
    v22 = *(v1 + 232);
    v23 = sub_10010150C(countAndFlagsBits, object, &v33);

    *(v6 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generated dek %s for credential %s with public key %s", v6, 0x20u);
    swift_arrayDestroy();

    v29(v21, v22);
  }

  else
  {
    v15 = *(v1 + 336);
    v16 = *(v1 + 248);
    v17 = *(v1 + 232);

    v15(v16, v17);
  }

  v24 = *(v1 + 168);
  v30 = *(v1 + 344);

  *v24 = vextq_s8(v30, v30, 8uLL);
  *(v24 + 16) = v32;
  *(v24 + 32) = v31;
  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_100167E68()
{

  (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.internalError(_:), v0[26]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016802C()
{
  (*(v0[27] + 104))(v0[28], enum case for DIPError.Code.internalError(_:), v0[26]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001681D4()
{

  sub_100005090((v0 + 40));
  (*(*(v0 + 216) + 104))(*(v0 + 224), enum case for DIPError.Code.internalError(_:), *(v0 + 208));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100168394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = a8;
  v9[15] = v8;
  v9[12] = a6;
  v9[13] = a7;
  v9[10] = a4;
  v9[11] = a5;
  v9[8] = a2;
  v9[9] = a3;
  v9[7] = a1;
  v10 = type metadata accessor for DIPError.Code();
  v9[16] = v10;
  v9[17] = *(v10 - 8);
  v9[18] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v9[19] = v11;
  v9[20] = *(v11 - 8);
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001684CC, 0, 0);
}

uint64_t sub_1001684CC(uint64_t a1)
{
  v22 = v1;
  v2 = v1[12];
  if (v2)
  {
    v3 = v1[14];
    v4 = v1[13];
    sub_10016A1AC(v1[11], v1[12], v4, v3);
    sub_100009708(v4, v3);
    v5 = swift_task_alloc();
    v1[23] = v5;
    *v5 = v1;
    v5[1] = sub_100168720;
    v6 = v1[13];
    v7 = v1[14];
    v8 = v1[11];

    return sub_100028458(v8, v2, v6, v7);
  }

  else
  {
    defaultLogger()();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v1[20];
    v13 = v1[21];
    v15 = v1[19];
    if (v12)
    {
      v17 = v1[7];
      v16 = v1[8];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10010150C(v17, v16, &v21);
      _os_log_impl(&_mh_execute_header, v10, v11, "Skipping ksk signature because no ksk exists for credential %s", v18, 0xCu);
      sub_100005090(v19);
    }

    (*(v14 + 8))(v13, v15);

    v20 = v1[1];

    return v20(0, 0xF000000000000000, 0);
  }
}

uint64_t sub_100168720(uint64_t a1)
{
  v3 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v4 = sub_100168D3C;
  }

  else
  {
    sub_1000092BC(v3[13], v3[14]);
    v4 = sub_10016883C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10016883C(uint64_t a1)
{
  v43 = v1;
  v2 = v1[24];
  if (v2)
  {
    v3 = v1[25];
    v5 = v1[9];
    v4 = v1[10];
    v1[5] = &type metadata for KeySigningKeySignatureProvider;
    v1[6] = &off_1001F9920;
    v1[2] = v2;

    v6 = sub_100141D3C(v5, v4);
    if (v3)
    {
      v8 = v1[13];
      v9 = v1[14];
      v11 = v1[11];
      v10 = v1[12];

      sub_10016A118(v11, v10, v8, v9);
      sub_100157C88((v1 + 2));
      (*(v1[17] + 104))(v1[18], enum case for DIPError.Code.internalError(_:), v1[16]);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v12 = v1[1];

      return v12();
    }

    v29 = v6;
    v30 = v7;
    v31 = *(v2 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
    v32 = swift_task_alloc();
    *(v32 + 16) = sub_10016A384;
    *(v32 + 24) = v2;
    os_unfair_lock_lock(v31 + 4);
    sub_10016A39C(v42);
    os_unfair_lock_unlock(v31 + 4);
    v35 = v1[13];
    v34 = v1[14];
    v37 = v1[11];
    v36 = v1[12];
    v38 = v42[0];

    sub_10016A118(v37, v36, v35, v34);

    sub_100157C88((v1 + 2));
  }

  else
  {
    v15 = v1[13];
    v14 = v1[14];
    v17 = v1[11];
    v16 = v1[12];
    defaultLogger()();
    sub_10016A1AC(v17, v16, v15, v14);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    sub_10016A118(v17, v16, v15, v14);
    v20 = os_log_type_enabled(v18, v19);
    v41 = v1[22];
    v21 = v1[19];
    v22 = v1[20];
    v24 = v1[11];
    v23 = v1[12];
    if (v20)
    {
      v26 = v1[7];
      v25 = v1[8];
      v39 = v1[13];
      v40 = v1[14];
      v27 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10010150C(v26, v25, v42);
      *(v27 + 12) = 2080;

      v28 = sub_10010150C(v24, v23, v42);

      *(v27 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "Credential %s referenced ksk %s but no such key exists", v27, 0x16u);
      swift_arrayDestroy();

      sub_10016A118(v24, v23, v39, v40);
      (*(v22 + 8))(v41, v21);
    }

    else
    {
      sub_10016A118(v1[11], v1[12], v1[13], v1[14]);

      (*(v22 + 8))(v41, v21);
    }

    v29 = 0;
    v38 = 0;
    v30 = 0xF000000000000000;
  }

  v33 = v1[1];

  return v33(v29, v30, v38);
}

uint64_t sub_100168D3C()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  sub_1000092BC(v1, v2);
  sub_10016A118(v4, v3, v1, v2);
  (*(v0[17] + 104))(v0[18], enum case for DIPError.Code.internalError(_:), v0[16]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

void sub_100168F08(void *a1, uint64_t a2, uint64_t (*a3)(), void *a4, uint64_t a5)
{
  v74 = a4;
  v66 = a5;
  v73 = a3;
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v71 = *(v11 - 8);
  v72 = v11;
  __chkstk_darwin(v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004E70(&qword_100201070, &unk_1001AD2D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v61 - v15;
  v77 = type metadata accessor for COSEKey();
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = (*(a2 + 8))(*a1, a2);
  if (v20 >> 60 == 15)
  {
    (*(v8 + 104))(v10, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v7);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v21 = v8;
LABEL_8:
    (*(v21 + 104))(v10, enum case for DIPError.Code.internalError(_:), v7);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v65 = v10;
  v69 = v8;
  v70 = v7;
  v67 = v19;
  v68 = v20;
  v22 = (*(a2 + 16))(v18, a2);
  if (v23 >> 60 == 15)
  {
    v24 = v69;
    v7 = v70;
    v25 = v65;
    (*(v69 + 104))(v65, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v70);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v21 = v24;
    v10 = v25;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_7:
    sub_10001C120(v67, v68);
    goto LABEL_8;
  }

  v63 = v22;
  v64 = v23;
  (*(a2 + 24))(v18, a2);
  v26 = v79;
  v27 = v77;
  if ((*(v79 + 48))(v16, 1, v77) == 1)
  {
    sub_100026564(v16);
    v28 = v69;
    v7 = v70;
    v29 = v65;
    (*(v69 + 104))(v65, enum case for DIPError.Code.idcsCOSEKeyCreationFailed(_:), v70);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v21 = v28;
    v10 = v29;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10001C120(v63, v64);
    goto LABEL_7;
  }

  v30 = v76;
  (*(v26 + 32))(v76, v16, v27);
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  CBOREncoder.init()();
  sub_1000E08AC(&qword_100202BE8, &type metadata accessor for COSEKey, &protocol conformance descriptor for COSEKey);
  v31 = v75;
  v32 = dispatch thunk of CBOREncoder.encode<A>(_:)();
  v21 = v69;
  v7 = v70;
  if (v31)
  {
    (*(v26 + 8))(v30, v27);

    sub_10001C120(v67, v68);
    sub_10001C120(v63, v64);
    v10 = v65;
    goto LABEL_8;
  }

  v34 = v32;
  v35 = v33;

  v36 = defaultLogger()();
  __chkstk_darwin(v36);
  v62 = v34;
  v75 = v35;
  Logger.sensitive(_:)();
  v37 = v72;
  v38 = *(v71 + 8);
  v38(v13, v72);
  v39 = defaultLogger()();
  __chkstk_darwin(v39);
  Logger.sensitive(_:)();
  v38(v13, v37);
  Class = object_getClass(a1);
  if (Class == _TtC7idcredd22SEPDeviceEncryptionKey)
  {
    v44 = *(a1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
    __chkstk_darwin(Class);
    os_unfair_lock_lock(v44 + 4);
    sub_10016A190(v78);
    os_unfair_lock_unlock(v44 + 4);
    v45 = String._bridgeToObjectiveC()();
    v46.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v47.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v48.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v49.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (v74 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    if (v66)
    {
      v51.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v51.super.isa = 0;
    }

    [objc_allocWithZone(DCCredentialCryptoKey) initWithIdentifier:v45 publicKey:v46.super.isa publicKeyIdentifier:v47.super.isa publicKeyCOSEKey:v48.super.isa keyType:0 keyUsage:1 attestation:v49.super.isa keyAuthorization:isa kskAttestation:v51.super.isa];

    sub_1000092BC(v62, v75);
    sub_10001C120(v63, v64);

    sub_10001C120(v67, v68);
  }

  else
  {
    if (Class != _TtC7idcredd22SESDeviceEncryptionKey)
    {
      v78[0] = 0;
      v78[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(44);
      v41._countAndFlagsBits = 0xD00000000000002ALL;
      v41._object = 0x80000001001BC720;
      String.append(_:)(v41);
      type metadata accessor for CredentialKeyType();
      _print_unlocked<A, B>(_:_:)();
      v42 = v69;
      v7 = v70;
      v43 = v65;
      (*(v69 + 104))(v65, enum case for DIPError.Code.idcsinvalidDeviceEncryptionKeyType(_:), v70);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000E08AC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v21 = v42;
      v10 = v43;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1000092BC(v62, v75);
      sub_10001C120(v63, v64);
      sub_10001C120(v67, v68);
      (*(v79 + 8))(v76, v77);
      goto LABEL_8;
    }

    v52 = sub_10002C9E0(a1);
    v54 = v53;
    v55 = String._bridgeToObjectiveC()();
    v56.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v57.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v45 = Data._bridgeToObjectiveC()().super.isa;
    v71 = v54;
    v72 = v52;
    v58.super.isa = Data._bridgeToObjectiveC()().super.isa;
    if (v74 >> 60 == 15)
    {
      v59 = 0;
    }

    else
    {
      v59 = Data._bridgeToObjectiveC()().super.isa;
    }

    if (v66)
    {
      v60.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v60.super.isa = 0;
    }

    [objc_allocWithZone(DCCredentialCryptoKey) initWithIdentifier:v55 publicKey:v56.super.isa publicKeyIdentifier:v57.super.isa publicKeyCOSEKey:v45 keyType:2 keyUsage:1 casdAttestation:v58.super.isa keyAuthorization:v59 kskAttestation:v60.super.isa];
    sub_1000092BC(v62, v75);
    sub_10001C120(v63, v64);
    sub_10001C120(v67, v68);

    sub_1000092BC(v72, v71);
  }

  (*(v79 + 8))(v76, v77);
}

void sub_100169D64(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v9 = sub_10016A520(a2, a3);
  if (v5)
  {
    return;
  }

  v10 = v9;
  type metadata accessor for StoredCryptoKey();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
  Class = object_getClass(a4);
  if (Class != _TtC7idcredd22SEPDeviceEncryptionKey || a4 == 0)
  {
    if (Class == _TtC7idcredd22SESDeviceEncryptionKey && a4)
    {
      sub_10005F7D8(a4);
    }
  }

  else
  {
    sub_10005F0F8(a4);
  }

  [v10 addCryptoKeysObject:v11];
  sub_100050240();
  sub_100059DE4();
  if (v14 >> 62)
  {
    v26 = v14;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v26;
    if (v27)
    {
      goto LABEL_14;
    }

LABEL_23:

LABEL_24:

    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
    v16 = v15;

    v17 = [v16 identifier];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = [v16 publicKeyIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v25;

        *a5 = v19;
        *(a5 + 8) = v21;
        *(a5 + 16) = v24;
        *(a5 + 24) = v28;
        return;
      }

      v10 = v11;
      v11 = v16;
    }

    else
    {
    }

    goto LABEL_24;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 32);
    goto LABEL_17;
  }

  __break(1u);
}

unint64_t sub_100169FD4()
{
  _StringGuts.grow(_:)(44);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000002ALL;
}

unint64_t sub_10016A064(uint64_t a1, unint64_t a2)
{
  _StringGuts.grow(_:)(39);

  if (a2 >> 60 == 15)
  {
    object = 0xE500000000000000;
    countAndFlagsBits = 0x3E6C696E3CLL;
  }

  else
  {
    v5 = Data.base16EncodedString()();
    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
  }

  v6 = object;
  String.append(_:)(*&countAndFlagsBits);

  return 0xD000000000000025;
}

void sub_10016A118(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1000092BC(a3, a4);
  }
}

void sub_10016A1AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100009708(a3, a4);
  }
}

uint64_t sub_10016A1F8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016A264()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10016A2A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 32))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 24) & 0x1000000000000000) != 0)) | ((*(a1 + 24) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10016A2FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

BOOL sub_10016A3B4(uint64_t a1)
{
  v2 = v1;
  if (_isInternalBuild.getter() & 1) != 0 && (sub_1000A0DEC(42, 0xE100000000000000, *(v2 + 16)))
  {
    return 1;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = *(v2 + 16);
    v8 = *(v7 + 16);
    v4 = v8 != 0;
    if (!v8)
    {
      break;
    }

    v9 = (a1 + 32 + 16 * v6);
    v11 = *v9;
    v10 = v9[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v7 + 32);
    v14 = v12 & ~v13;
    if (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
LABEL_16:

      return 0;
    }

    ++v6;
    v15 = ~v13;
    while (1)
    {
      v16 = (*(v7 + 48) + 16 * v14);
      v17 = *v16 == v11 && v16[1] == v10;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  while (v6 != v5);
  return v4;
}

void *sub_10016A520(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10005218C(a1, a2);
  if (!v3)
  {
    v4 = v12;
    if (!v12)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v29 = 0xD000000000000019;
      v30 = 0x80000001001BC870;
      v20._countAndFlagsBits = a1;
      v20._object = a2;
      String.append(_:)(v20);
      v4 = v30;
      (*(v9 + 104))(v11, enum case for DIPError.Code.idcsUnknownCredential(_:), v8);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10016C220(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return v4;
    }

    v14 = &off_1001FE000;
    v15 = [v12 partition];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (_isInternalBuild.getter() & 1) != 0 && (sub_1000A0DEC(42, 0xE100000000000000, *(v5 + 16)))
      {

        return v4;
      }

      v21 = sub_1000A0DEC(v17, v19, *(v5 + 16));

      v14 = &off_1001FE000;
      if (v21)
      {
        return v4;
      }
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v29 = 0x6F69746974726170;
    v30 = 0xEA0000000000206ELL;
    v22 = [v4 v14[358]];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v26 = 0xE500000000000000;
      v24 = 0x3E6C696E3CLL;
    }

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 0xD000000000000023;
    v28._object = 0x80000001001BC280;
    String.append(_:)(v28);
    (*(v9 + 104))(v11, enum case for DIPError.Code.idcsUnauthorizedPartition(_:), v8);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10016C220(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10016A994(Swift::UInt a1, uint64_t a2)
{
  v4 = sub_10010D538(&off_1001F4320);
  sub_100004E70(&qword_100203CE8, &unk_1001AEC20);
  swift_arrayDestroy();
  if (v4[2] && (v5 = sub_100101BD4(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);

    v8 = *(v7 + 16);
    v9 = 32;
    do
    {
      v10 = v8-- != 0;
      v11 = v10;
      if (!v10)
      {
        break;
      }

      v12 = *(v7 + v9);
      v9 += 8;
    }

    while (v12 != a2);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_10016AA60(void *a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 state];
  if (result < 0)
  {
    __break(1u);
  }

  else if (result != 2)
  {
    (*(v3 + 104))(v5, enum case for DIPError.Code.idcsIncorrectCredentialState(_:), v2);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10016C220(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10016AC34(uint64_t a1, unint64_t a2, void *a3)
{
  v75 = a3;
  v4 = type metadata accessor for DIPError.Code();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - v7;
  v9 = type metadata accessor for CredentialKeyUsage();
  v74 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v68 - v13;
  v76 = type metadata accessor for Logger();
  v81 = *(v76 - 8);
  v14 = __chkstk_darwin(v76);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v68 = &v68 - v18;
  v19 = __chkstk_darwin(v17);
  v72 = &v68 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v68 - v22;
  __chkstk_darwin(v21);
  v25 = &v68 - v24;
  v26 = [objc_opt_self() standardUserDefaults];
  v27._countAndFlagsBits = 0xD00000000000001ELL;
  v27._object = 0x80000001001BBF60;
  v28 = NSUserDefaults.internalBool(forKey:)(v27);

  if (v28)
  {
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Treating payload as accessible due to internal defaults setting", v31, 2u);
    }

    (*(v81 + 8))(v25, v76);
LABEL_14:
    v47 = 1;
    return v47 & 1;
  }

  if ((sub_1000F536C(a2) & 1) == 0)
  {
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v79 = v41;
      *v40 = 136315138;
      v42 = DCCredentialPayloadFormatToString();
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = sub_10010150C(v43, v45, &v79);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "Payload format %s does not require decryption, can proceed with processing", v40, 0xCu);
      sub_100005090(v41);
    }

    (*(v81 + 8))(v23, v76);
    goto LABEL_14;
  }

  if (!v75)
  {
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Decryption key required but not available, can't proceed with processing", v51, 2u);
    }

    (*(v81 + 8))(v16, v76);
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v79 = 0xD000000000000014;
    v80 = 0x80000001001BC950;
    v52 = DCCredentialPayloadFormatToString();
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56._countAndFlagsBits = v53;
    v56._object = v55;
    String.append(_:)(v56);

    (*(v69 + 104))(v71, enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v70);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10016C220(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v47 & 1;
  }

  v32 = v75;
  v33 = [v32 usage];
  v35 = v73;
  v34 = v74;
  if (!v33)
  {
    goto LABEL_10;
  }

  v36 = v33;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  CredentialKeyUsage.init(rawValue:)();
  if ((*(v34 + 48))(v8, 1, v9) == 1)
  {
    sub_10016B620(v8);
LABEL_10:
    v37 = *(v34 + 104);
    v37(v35, enum case for CredentialKeyUsage.invalid(_:), v9);
    goto LABEL_20;
  }

  (*(v34 + 32))(v35, v8, v9);
  v37 = *(v34 + 104);
LABEL_20:
  v37(v12, enum case for CredentialKeyUsage.deviceEncryptionAuthRequired(_:), v9);
  sub_10016C220(&qword_1002024B0, &type metadata accessor for CredentialKeyUsage, &protocol conformance descriptor for CredentialKeyUsage);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v79 == v77 && v80 == v78)
  {
    v57 = *(v34 + 8);
    v57(v12, v9);
    v57(v35, v9);
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v59 = *(v34 + 8);
    v59(v12, v9);
    v59(v35, v9);

    if ((v58 & 1) == 0)
    {
      v64 = v68;
      defaultLogger()();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "Credential decryption key does not require auth, can proceed with processing", v67, 2u);
      }

      (*(v81 + 8))(v64, v76);
      goto LABEL_14;
    }
  }

  v60 = v72;
  defaultLogger()();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Credential decryption key requires auth, can't proceed with processing", v63, 2u);
  }

  (*(v81 + 8))(v60, v76);
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_10016B620(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002024A8, &unk_1001ACFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10016B688(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v97 = type metadata accessor for Logger();
  v86 = *(v97 - 8);
  v5 = __chkstk_darwin(v97);
  v93 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v99 = &v79 - v8;
  __chkstk_darwin(v7);
  v84 = &v79 - v9;
  v10 = type metadata accessor for SHA256();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SHA256Digest();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10005947C();
  sub_10016C220(&qword_100200608, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100009708(a2, a3);
  sub_1000D8FBC(a2, a3, v13);
  v85 = 0;
  sub_1000092BC(a2, a3);
  dispatch thunk of HashFunction.finalize()();
  (*(v11 + 8))(v13, v10);
  sub_10016C220(&qword_100200610, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v18 = Digest.data.getter();
  v20 = v19;
  v21 = v17;
  v22 = v98;
  (*(v15 + 8))(v21, v14);
  if (v22 >> 62)
  {
LABEL_84:
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v93;
  v26 = v99;
  if (!v24)
  {
LABEL_66:

    defaultLogger()();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "doesPayloadDataMatchIngestionHash -> the new payload hash does not match any of stored payload hash.", v65, 2u);

      sub_1000092BC(v18, v20);
    }

    else
    {
      sub_1000092BC(v18, v20);
    }

    (*(v86 + 8))(v25, v97);
    return;
  }

  v27 = 0;
  v96 = v22 & 0xC000000000000001;
  v88 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v18)
  {
    v28 = 0;
  }

  else
  {
    v28 = v20 == 0xC000000000000000;
  }

  v29 = !v28;
  v83 = v29;
  v87 = v20 >> 62;
  v30 = __OFSUB__(HIDWORD(v18), v18);
  v81 = v30;
  v80 = HIDWORD(v18) - v18;
  v82 = BYTE6(v20);
  v31 = (v86 + 8);
  v95 = v20 >> 60;
  *&v23 = 136315394;
  v89 = v23;
  v91 = v20;
  v92 = v18;
  v94 = v24;
  v90 = (v86 + 8);
  while (1)
  {
    if (v96)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (v27 >= *(v88 + 16))
      {
        goto LABEL_83;
      }

      v32 = *(v22 + 8 * v27 + 32);
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v102 = v32;
    v34 = [v32 ingestionHash];
    v101 = v33;
    if (!v34)
    {
      v36 = 0;
      v38 = 0xF000000000000000;
      goto LABEL_26;
    }

    v35 = v34;
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if (v38 >> 60 == 15)
    {
      v26 = v99;
LABEL_26:
      if (v95 > 0xE)
      {
        sub_100009708(v18, v20);
        sub_100032EBC(v36, v38);

        sub_10001C120(v36, v38);
        v66 = 1;
        v67 = v84;
        goto LABEL_76;
      }

      v100 = 1;
      goto LABEL_28;
    }

    v26 = v99;
    if (v95 > 0xE)
    {
      v100 = 0;
LABEL_28:
      sub_100009708(v18, v20);
      sub_100032EBC(v36, v38);
      sub_10001C120(v36, v38);
      sub_10001C120(v18, v20);
      goto LABEL_29;
    }

    v50 = v38 >> 62;
    if (v38 >> 62 != 3)
    {
      if (v50)
      {
        if (v50 == 1)
        {
          LODWORD(v54) = HIDWORD(v36) - v36;
          if (__OFSUB__(HIDWORD(v36), v36))
          {
            goto LABEL_86;
          }

          v54 = v54;
        }

        else
        {
          v56 = *(v36 + 16);
          v55 = *(v36 + 24);
          v57 = __OFSUB__(v55, v56);
          v54 = v55 - v56;
          if (v57)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        v54 = BYTE6(v38);
      }

      goto LABEL_54;
    }

    v51 = !v36 && v38 == 0xC000000000000000;
    v52 = v51 && v87 >= 3;
    v53 = !v52;
    if (((v53 | v83) & 1) == 0)
    {
      break;
    }

    v54 = 0;
LABEL_54:
    if (v87 > 1)
    {
      if (v87 != 2)
      {
        if (!v54)
        {
LABEL_72:
          sub_100009708(v18, v20);
          sub_100032EBC(v36, v38);
          sub_10001C120(v18, v20);
          goto LABEL_74;
        }

LABEL_65:
        sub_100009708(v18, v20);
        sub_100032EBC(v36, v38);
        sub_10001C120(v18, v20);
        sub_10001C120(v36, v38);
        v100 = 0;
        goto LABEL_29;
      }

      v60 = *(v18 + 16);
      v59 = *(v18 + 24);
      v57 = __OFSUB__(v59, v60);
      v58 = v59 - v60;
      if (v57)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v58 = v82;
      if (v87)
      {
        v58 = v80;
        if (v81)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          return;
        }
      }
    }

    if (v54 != v58)
    {
      goto LABEL_65;
    }

    if (v54 < 1)
    {
      goto LABEL_72;
    }

    sub_100009708(v18, v20);
    sub_100009708(v18, v20);
    sub_100032EBC(v36, v38);
    sub_100032EBC(v18, v20);
    v61 = v85;
    v62 = sub_100100288(v36, v38, v18, v20);
    v85 = v61;
    sub_10001C120(v18, v20);
    sub_1000092BC(v18, v20);
    sub_10001C120(v36, v38);
    if (v62)
    {
      goto LABEL_75;
    }

    v100 = 0;
    v26 = v99;
LABEL_29:
    defaultLogger()();
    sub_100009708(v18, v20);
    sub_100032EBC(v36, v38);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    sub_1000092BC(v18, v20);
    sub_10001C120(v36, v38);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      *v41 = v89;
      v42 = Data.base16EncodedString()();
      v43 = sub_10010150C(v42._countAndFlagsBits, v42._object, v105);

      *(v41 + 4) = v43;
      *(v41 + 12) = 2080;
      if (v100)
      {
        countAndFlagsBits = 0;
        object = 0;
      }

      else
      {
        v46 = Data.base16EncodedString()();
        object = v46._object;
        countAndFlagsBits = v46._countAndFlagsBits;
      }

      v103 = countAndFlagsBits;
      v104 = object;
      sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
      v47 = String.init<A>(describing:)();
      v49 = sub_10010150C(v47, v48, v105);

      *(v41 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "doesPayloadDataMatchIngestionHash -> new payload hash %s does not match stored payload hash %s", v41, 0x16u);
      swift_arrayDestroy();

      sub_10001C120(v36, v38);
      v31 = v90;
      v26 = v99;
      (*v90)(v99, v97);
      v20 = v91;
      v18 = v92;
      v25 = v93;
    }

    else
    {

      sub_10001C120(v36, v38);
      (*v31)(v26, v97);
    }

    ++v27;
    v22 = v98;
    if (v101 == v94)
    {
      goto LABEL_66;
    }
  }

  sub_100009708(0, 0xC000000000000000);
  sub_100032EBC(0, 0xC000000000000000);
  sub_10001C120(0, 0xC000000000000000);
  v36 = 0;
LABEL_74:
  sub_10001C120(v36, v38);
LABEL_75:
  v67 = v84;

  v66 = 0;
LABEL_76:
  defaultLogger()();
  sub_100032EBC(v36, v38);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  sub_10001C120(v36, v38);
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v105[0] = v71;
    *v70 = 136315138;
    if (v66)
    {
      v72 = v31;
      v73 = 0;
      v74 = 0;
    }

    else
    {
      v72 = v31;
      v75 = Data.base16EncodedString()();
      v74 = v75._object;
      v73 = v75._countAndFlagsBits;
    }

    v103 = v73;
    v104 = v74;
    sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
    v76 = String.init<A>(describing:)();
    v78 = sub_10010150C(v76, v77, v105);

    *(v70 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v68, v69, "doesPayloadDataMatchIngestionHash -> new payload hash matches stored payload hash %s", v70, 0xCu);
    sub_100005090(v71);

    sub_10001C120(v36, v38);
    sub_1000092BC(v92, v20);
    (*v72)(v84, v97);
  }

  else
  {
    sub_1000092BC(v92, v20);

    sub_10001C120(v36, v38);
    (*v31)(v67, v97);
  }
}

uint64_t sub_10016C220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10016C268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[13] = v8;
  *v8 = v3;
  v8[1] = sub_10016C3E4;

  return sub_10016E664(a1, a2);
}

uint64_t sub_10016C3E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_10016D4E8;
  }

  else
  {
    v4 = sub_10016C4F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10016C4F8(uint64_t a1)
{
  v32 = v1;
  v2 = v1[14];
  if (v2)
  {
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = os_log_type_enabled(v3, v4);
    v30 = v1[12];
    v7 = v1[8];
    v6 = v1[9];
    if (v5)
    {
      v9 = v1[2];
      v8 = v1[3];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10010150C(v9, v8, v31);
      _os_log_impl(&_mh_execute_header, v3, v4, "Credential %s already has a ksk", v10, 0xCu);
      sub_100005090(v11);
    }

    (*(v6 + 8))(v30, v7);
    v12 = v1[15];
    sub_10019E83C(v2);
    v14 = v13;

    if (v12)
    {
      (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.internalError(_:), v1[5]);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v15 = v1[1];

      return v15();
    }

    else
    {

      v29 = v1[1];

      return v29(v14);
    }
  }

  else
  {
    defaultLogger()();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v1[11];
    v21 = v1[8];
    v22 = v1[9];
    if (v19)
    {
      v24 = v1[2];
      v23 = v1[3];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10010150C(v24, v23, v31);
      _os_log_impl(&_mh_execute_header, v17, v18, "Generating new ksk for credential %s", v25, 0xCu);
      sub_100005090(v26);
    }

    v27 = *(v22 + 8);
    v27(v20, v21);
    v1[16] = v27;
    v28 = swift_task_alloc();
    v1[17] = v28;
    *v28 = v1;
    v28[1] = sub_10016C99C;

    return sub_100027B44();
  }
}

uint64_t sub_10016C99C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10016D690, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[20] = v6;
    *v6 = v5;
    v6[1] = sub_10016CB24;
    v7 = v4[3];
    v8 = v4[2];

    return sub_10016F2EC(a1, v8, v7);
  }
}

uint64_t sub_10016CB24(char a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_10016D838;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v5 = sub_10016CC50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016CC50()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 168);
    sub_10019E83C(*(v0 + 144));
    v3 = v2;

    if (v1)
    {
      (*(*(v0 + 48) + 104))(*(v0 + 56), enum case for DIPError.Code.internalError(_:), *(v0 + 40));
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v4 = *(v0 + 8);

      return v4();
    }

    else
    {

      v9 = *(v0 + 8);

      return v9(v3);
    }
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_10016CF0C;
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);

    return sub_10016E664(v8, v7);
  }
}

uint64_t sub_10016CF0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_10016D9E8;
  }

  else
  {
    v4 = sub_10016D020;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10016D020(uint64_t a1)
{
  v28 = v1;
  v2 = v1[23];
  if (!v2)
  {
    v14 = v1[6];
    v13 = v1[7];
    v15 = v1[5];
    v17 = v1[2];
    v16 = v1[3];
    _StringGuts.grow(_:)(26);

    v27[0] = 0xD000000000000018;
    v27[1] = 0x80000001001BCA60;
    v18._countAndFlagsBits = v17;
    v18._object = v16;
    String.append(_:)(v18);
    (*(v14 + 104))(v13, enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v15);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_7:
    (*(v1[6] + 104))(v1[7], enum case for DIPError.Code.internalError(_:), v1[5]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v22 = v1[1];

    return v22();
  }

  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[16];
  v7 = v1[10];
  v8 = v1[8];
  if (v5)
  {
    v25 = v1[10];
    v26 = v1[16];
    v10 = v1[2];
    v9 = v1[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10010150C(v10, v9, v27);
    _os_log_impl(&_mh_execute_header, v3, v4, "After trying new key, using existing ksk for %s", v11, 0xCu);
    sub_100005090(v12);

    v26(v25, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v19 = v1[24];
  sub_10019E83C(v2);
  v21 = v20;

  if (v19)
  {
    goto LABEL_7;
  }

  v24 = v1[1];

  return v24(v21);
}

uint64_t sub_10016D4E8()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016D690()
{
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016D838()
{

  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016D9E8()
{

  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016DB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = type metadata accessor for COSEKey();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_10016DD18, 0, 0);
}

uint64_t sub_10016DD18()
{
  type metadata accessor for CBORDecoder();
  swift_allocObject();
  CBORDecoder.init()();
  sub_100170960(&qword_100203CA0, &type metadata accessor for COSEKey, &protocol conformance descriptor for COSEKey);
  dispatch thunk of CBORDecoder.decode<A>(_:from:)();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  v4 = swift_allocObject();
  v0[22] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = swift_allocObject();
  v0[23] = v5;
  *(v5 + 16) = &unk_1001AEC40;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[24] = v6;
  v7 = type metadata accessor for KeySigningKey(0);
  *v6 = v0;
  v6[1] = sub_10016E078;

  return AsyncCoreDataContainer.read<A>(_:)(v0 + 7, &unk_1001AEC50, v5, v7);
}

uint64_t sub_10016E078()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_10016E490;
  }

  else
  {

    *(v2 + 208) = *(v2 + 56);
    v3 = sub_10016E1A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10016E1A4()
{
  v0[2] = v0[26];
  v1 = v0[25];
  v2 = v0[21];
  v0[5] = &type metadata for KeySigningKeySignatureProvider;
  v0[6] = &off_1001F9920;
  v3 = sub_100143824(v2);
  v5 = v1;
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  if (v5)
  {
    sub_100157C88((v0 + 2));
    (*(v7 + 8))(v6, v8);
    (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.internalError(_:), v0[13]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[17];
    v11 = v0[18];
    v17 = v0[16];
    v13 = v3;
    v14 = v4;
    defaultLogger()();
    v15 = swift_task_alloc();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    Logger.sensitive(_:)();

    (*(v12 + 8))(v11, v17);
    sub_100157C88((v0 + 2));
    (*(v7 + 8))(v6, v8);

    v16 = v0[1];

    return v16(v13, v14);
  }
}

uint64_t sub_10016E490()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);
  (*(v0[14] + 104))(v0[15], enum case for DIPError.Code.internalError(_:), v0[13]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10016E664(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10016E728, 0, 0);
}

uint64_t sub_10016E728()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = swift_allocObject();
  v0[12] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = sub_100170BE4;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = sub_100004E70(&qword_100203CE0, &qword_1001AEAA0);
  *v6 = v0;
  v6[1] = sub_10016E880;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 2, sub_10001AAC8, v5, v7);
}

uint64_t sub_10016E880()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10016EBF0;
  }

  else
  {

    v2 = sub_10016E9A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016E9A4()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[16] = v2;
  v0[17] = v1;
  v3 = v0[4];
  v4 = v0[5];
  v0[18] = v3;
  v0[19] = v4;
  if (v1)
  {
    sub_10016A1AC(v2, v1, v3, v4);
    sub_100009708(v3, v4);
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_10016EAD4;

    return sub_100028458(v2, v1, v3, v4);
  }

  else
  {

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_10016EAD4(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = sub_10016F12C;
  }

  else
  {
    sub_1000092BC(v3[18], v3[19]);
    v4 = sub_10016ED84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10016EBF0()
{

  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10016ED84()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  if (v0[21])
  {
    sub_10016A118(v0[16], v0[17], v0[18], v0[19]);
    sub_10016A118(v4, v3, v2, v1);
    v5 = v0[21];

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v9 = v0[10];
    v8 = v0[11];
    v18 = v0[9];
    v11 = v0[6];
    v10 = v0[7];
    _StringGuts.grow(_:)(79);
    v12._countAndFlagsBits = 0x69746E6564657263;
    v12._object = 0xEB00000000206C61;
    String.append(_:)(v12);
    v13._countAndFlagsBits = v11;
    v13._object = v10;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0xD00000000000001DLL;
    v14._object = 0x80000001001BCAD0;
    String.append(_:)(v14);

    v15._countAndFlagsBits = v4;
    v15._object = v3;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0xD000000000000023;
    v16._object = 0x80000001001BCAF0;
    String.append(_:)(v16);
    (*(v9 + 104))(v8, enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v18);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10016A118(v4, v3, v2, v1);
    sub_10016A118(v4, v3, v2, v1);
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10016F12C()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  sub_1000092BC(v1, v2);
  sub_10016A118(v4, v3, v1, v2);
  sub_10016A118(v4, v3, v1, v2);
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10016F2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016F3B0, 0, 0);
}

uint64_t sub_10016F3B0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v4;
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = sub_100170B7C;
  *(v6 + 24) = v5;

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_10016F508;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 13, sub_100170B9C, v6, &type metadata for Bool);
}

uint64_t sub_10016F508()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10016F670, 0, 0);
  }

  else
  {

    v3 = *(v2 + 104);

    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_10016F670()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, enum case for DIPError.Code.internalError(_:), v3);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4(0);
}

void sub_10016F808(uint64_t a1@<X2>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10016A520(a1, a2);
  if (v3)
  {
    return;
  }

  v36 = v11;
  sub_100059DE4();
  if (v12 >> 62)
  {
    v26 = v12;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v26;
    v35 = 0;
    if (v27)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = 0;
    if (v13)
    {
LABEL_4:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v14 = *(v12 + 32);
      }

      v15 = v14;

      v16 = [v15 identifier];
      if (v16)
      {
        v17 = a3;
        v18 = v16;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = [v15 publicKeyIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          *v17 = v34;
          v17[1] = v20;
          v17[2] = v23;
          v17[3] = v25;
          return;
        }

        a3 = v17;
      }

      else
      {
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  defaultLogger()();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = a3;
    v32 = v31;
    v37 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_10010150C(a1, a2, &v37);
    _os_log_impl(&_mh_execute_header, v28, v29, "Credential %s does not have a key signing key", v30, 0xCu);
    sub_100005090(v32);
    a3 = v34;
  }

  (*(v8 + 8))(v10, v7);
  *a3 = 0u;
  *(a3 + 1) = 0u;
}

void sub_10016FB48(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, NSObject *a4@<X4>, _BYTE *a5@<X8>)
{
  v37 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10016A520(a2, a3);
  if (!v5)
  {
    v15 = v14;
    v34 = a1;
    v35 = v13;
    v16 = v37;
    v36 = v11;
    sub_100059DE4();
    v33 = 0;
    if (v17 >> 62)
    {
      v32 = v17;
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v16;
    v20 = a2;

    if (v18)
    {
      v21 = v10;
      v22 = a3;
      v23 = v35;
      defaultLogger()();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      v37 = v24;
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v38 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_10010150C(v20, v22, &v38);
        v28 = v25;
        v29 = v37;
        _os_log_impl(&_mh_execute_header, v37, v28, "Credential %s already has a ksk when trying to add a new one", v26, 0xCu);
        sub_100005090(v27);
      }

      else
      {
      }

      (*(v36 + 8))(v23, v21);
      *a5 = 0;
    }

    else
    {
      type metadata accessor for StoredCryptoKey();
      v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v34 + 16)];
      v31 = v33;
      sub_10005F0F8(v19);
      if (v31)
      {
      }

      else
      {
        [v15 addCryptoKeysObject:v30];
        sub_100050240();

        *a5 = 1;
      }
    }
  }
}

uint64_t sub_10016FE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10016FF7C, 0, 0);
}

uint64_t sub_10016FF7C()
{
  v1 = v0[13];
  v15 = v0[14];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = swift_allocObject();
  v0[15] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
  v8 = swift_allocObject();
  v0[16] = v8;
  *(v8 + 16) = sub_100157CE0;
  *(v8 + 24) = v7;
  v9 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v10 = *(v1 + 104);

  v10(v15, v9, v2);

  v11 = swift_task_alloc();
  v0[17] = v11;
  v12 = sub_100004E70(&qword_1002014B0, &unk_1001ACFE0);
  *v11 = v0;
  v11[1] = sub_100170128;
  v13 = v0[14];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_100153D3C, v8, v12);
}

uint64_t sub_100170128()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(*(v2 + 104) + 8))(*(v2 + 112), *(v2 + 96));

    v3 = sub_1001705E0;
  }

  else
  {
    v5 = *(v2 + 104);
    v4 = *(v2 + 112);
    v6 = *(v2 + 96);

    (*(v5 + 8))(v4, v6);
    *(v2 + 152) = *(v2 + 16);
    v3 = sub_1001702A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001702A8()
{
  v1 = v0[20];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1001704C4;
    v3 = v0[19];

    return sub_100028458(v3, v1, 0, 0xF000000000000000);
  }

  else
  {
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.idcsMissingKeySigningKey(_:), v0[9]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1001704C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_100170814;
  }

  else
  {

    v4 = sub_100170658;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001705E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100170658()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    **(v0 + 32) = v1;
  }

  else
  {
    (*(*(v0 + 80) + 104))(*(v0 + 88), enum case for DIPError.Code.idcsMissingKeySigningKey(_:), *(v0 + 72));
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100170960(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100170814()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10017088C()
{
  _StringGuts.grow(_:)(28);

  v0 = Data.base16EncodedString()();
  String.append(_:)(v0);

  return 0xD00000000000001ALL;
}

double sub_10017091C@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, _OWORD *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100170960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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