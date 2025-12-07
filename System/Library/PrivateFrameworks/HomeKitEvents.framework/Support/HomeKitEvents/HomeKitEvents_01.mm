uint64_t sub_10001D9EC(uint64_t result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_10001DA10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001DA58(uint64_t result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  if (!a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_10001DA7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DAEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DB24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D130;

  return sub_100019398(a1, v4);
}

Swift::Int sub_10001DBF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001DC68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_10001DCFC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10001DD2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10001DD58@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10001DE44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10001E5A4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10001DE84()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_10001DF0C()
{
  v1 = [v0 resources];
  v2 = [v0 resources] & 2 | v1 & 1;
  v3 = [v0 resources] & 4;
  v4 = v2 | v3 | [v0 resources] & 8;
  return v4 | [v0 resources] & 0x10;
}

id sub_10001DF94(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v2 = 3;
      if ((a1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = 1;
      if ((a1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      v2 = 0;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v2 = 2;
    if ((a1 & 4) != 0)
    {
LABEL_4:
      v2 |= 4uLL;
    }
  }

LABEL_5:
  if ((a1 & 8) != 0)
  {
    v2 |= 8uLL;
    if ((a1 & 0x10) == 0)
    {
      return [v1 setResources:v2];
    }

    goto LABEL_7;
  }

  if ((a1 & 0x10) != 0)
  {
LABEL_7:
    v2 |= 0x10uLL;
  }

  return [v1 setResources:v2];
}

uint64_t sub_10001DFF8()
{
  v1 = [*v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10001E0BC()
{
  result = [*v0 priority];
  if (result >= 4)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__n128 sub_10001E1BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001E1E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_10001E228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventUploadScheduledWaitOutcome(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventUploadScheduledWaitOutcome(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001E3F0()
{
  result = qword_1000AB3E8;
  if (!qword_1000AB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3E8);
  }

  return result;
}

unint64_t sub_10001E448()
{
  result = qword_1000AB3F0;
  if (!qword_1000AB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3F0);
  }

  return result;
}

unint64_t sub_10001E4A0()
{
  result = qword_1000AB3F8;
  if (!qword_1000AB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3F8);
  }

  return result;
}

unint64_t sub_10001E4F8()
{
  result = qword_1000AB400;
  if (!qword_1000AB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB400);
  }

  return result;
}

unint64_t sub_10001E550()
{
  result = qword_1000AB408;
  if (!qword_1000AB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB408);
  }

  return result;
}

uint64_t sub_10001E5A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10001E5E0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10001E6A0, 0, 0);
}

uint64_t sub_10001E6A0()
{
  sub_10001ECF8();
  v1 = v0[2];
  if (*v1)
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_10001E8F8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v3, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100086600, v2, &type metadata for () + 8);
  }

  else
  {
    type metadata accessor for DiagnosticFileCollector(0);
    sub_100022F0C(&qword_1000AB410, type metadata accessor for DiagnosticFileCollector, &unk_1000866E8);
    static LoggedObject.logger.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Consent was not provided to collect sensitive info, bailing out", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10001E8F8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10001EA78;
  }

  else
  {

    v2 = sub_10001EA14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001EA14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001EA78()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10001EAE4(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 defaultConfiguration];
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  [v4 setContainer:a2];

  v6 = [v3 defaultConfiguration];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v6 setQualityOfService:25];

  v18[2] = 0;
  v18[3] = 0xE000000000000000;
  v18[0] = 47;
  v18[1] = 0xE100000000000000;
  __chkstk_darwin(v8);
  v17[2] = v18;
  if (sub_100022238(0x7FFFFFFFFFFFFFFFLL, 1, sub_10000D4EC, v17, 0xD000000000000029, v9 | 0x8000000000000000, v9)[2])
  {

    v10 = static String._fromSubstring(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v18[0] = type metadata accessor for DiagnosticFileCollector(0);
    sub_10000CED0(&qword_1000AB448, &qword_100086698);
    v15._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v15);

    v16 = String._bridgeToObjectiveC()();

    [v3 setName:v16];

    return;
  }

LABEL_7:

  __break(1u);
}

void sub_10001ECF8()
{
  v1 = v0;
  v2 = type metadata accessor for DiagnosticFileCollector(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v48 - v6;
  v8 = type metadata accessor for Logger();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v14 = [objc_opt_self() defaultManager];
  v56 = 0;
  v52 = *(v2 + 24);
  URL.absoluteString.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 fileExistsAtPath:v15 isDirectory:&v56];

  v51 = v14;
  if (v16)
  {
    v49 = v5;
    sub_100022F0C(&qword_1000AB410, type metadata accessor for DiagnosticFileCollector, &unk_1000866E8);
    static LoggedObject.logger.getter();
    v50 = v1;
    sub_100021AF0(v1, v7);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v57 = v48;
      *v19 = 136315394;
      swift_beginAccess();
      if (v56)
      {
        v20 = 0x726F746365726964;
      }

      else
      {
        v20 = 1701603686;
      }

      if (v56)
      {
        v21 = 0xE900000000000079;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      v22 = sub_100035120(v20, v21, &v57);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      type metadata accessor for URL();
      sub_100022F0C(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_100013DA4(v7);
      v26 = sub_100035120(v23, v25, &v57);

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Removing %s at '%s'", v19, 0x16u);
      swift_arrayDestroy();

      v14 = v51;
    }

    else
    {

      sub_100013DA4(v7);
    }

    (*(v53 + 8))(v13, v54);
    v1 = v50;
    URL._bridgeToObjectiveC()(v52);
    v28 = v27;
    v57 = 0;
    v29 = [v14 removeItemAtURL:v27 error:&v57];

    v30 = v57;
    if (!v29)
    {
      goto LABEL_18;
    }

    v31 = v57;
    v5 = v49;
  }

  sub_100022F0C(&qword_1000AB410, type metadata accessor for DiagnosticFileCollector, &unk_1000866E8);
  static LoggedObject.logger.getter();
  sub_100021AF0(v1, v5);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v5;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v1;
    v37 = v36;
    v57 = v36;
    *v35 = 136315138;
    type metadata accessor for URL();
    sub_100022F0C(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    sub_100013DA4(v34);
    v41 = sub_100035120(v38, v40, &v57);

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Creating diagnostic directory at '%s'", v35, 0xCu);
    sub_10000D330(v37);
  }

  else
  {

    sub_100013DA4(v5);
  }

  (*(v53 + 8))(v11, v54);
  URL._bridgeToObjectiveC()(v52);
  v43 = v42;
  v57 = 0;
  v14 = v51;
  v44 = [v51 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:&v57];

  v30 = v57;
  if ((v44 & 1) == 0)
  {
LABEL_18:
    v46 = v30;
    v47 = _convertNSErrorToError(_:)();

    v55 = v47;
    swift_willThrow();
    goto LABEL_19;
  }

  v45 = v57;
LABEL_19:
}

uint64_t type metadata accessor for DiagnosticFileCollector(uint64_t a1)
{
  result = qword_1000AB4C8;
  if (!qword_1000AB4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(type metadata accessor for DiagnosticFileCollector(0) - 8);
  v3[4] = v4;
  v3[5] = *(v4 + 64);
  v3[6] = swift_task_alloc();
  sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001F4D0, 0, 0);
}

uint64_t sub_10001F4D0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  v11 = *(*(v5 - 8) + 56);
  v11(v1, 1, 1, v5);
  sub_100021AF0(v4, v2);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_100021B58(v2, v7 + v6);
  sub_10002003C(v1, &unk_100086618, v7);
  sub_100021CAC(v1);
  v11(v1, 1, 1, v5);
  sub_100021AF0(v4, v2);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_100021B58(v2, v8 + v6);
  sub_10002003C(v1, &unk_100086628, v8);
  sub_100021CAC(v1);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_10001F6D8;

  return sub_100020618(0, 0);
}

uint64_t sub_10001F6D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001F80C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D130;

  return sub_10001F89C();
}

uint64_t sub_10001F89C()
{
  v1[2] = v0;
  v2 = type metadata accessor for CloudKitExporter();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v1[8] = *(v4 + 64);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001F9C0, 0, 0);
}

uint64_t sub_10001F9C0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[2];
  v6 = type metadata accessor for DiagnosticFileCollector(0);
  v7 = *(v6 + 24);
  v8 = swift_allocObject();
  v0[10] = v8;
  *(v8 + 16) = 0;
  *(v8 + 24) = _swiftEmptyArrayStorage;
  (*(v4 + 16))(v1, v5 + v7, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[11] = v11;
  (*(v4 + 32))(v11 + v9, v1, v3);
  *(v11 + v10) = v8;
  v12 = *(v5 + *(v6 + 32));
  type metadata accessor for Configuration();

  v13 = v12;
  static Configuration.cloudKitContainer.getter();
  CloudKitExporter.init(outputStreamFactory:operationGroup:container:)();
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_10001FB90;

  return CloudKitExporter.start()();
}

uint64_t sub_10001FB90()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10001FF8C;
  }

  else
  {
    v2 = sub_10001FCA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001FCA4()
{
  v1 = v0[10];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v0[14] = v2;

  os_unfair_lock_unlock((v1 + 16));
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_10001FDA8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100086668, v3, &type metadata for () + 8);
}

uint64_t sub_10001FDA8()
{

  return _swift_task_switch(sub_10001FEDC, 0, 0);
}

uint64_t sub_10001FEDC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001FF8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_10001DA7C(a1, v18 - v8);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100021CAC(v9);
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

uint64_t sub_10002020C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for URL();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000202D4, 0, 0);
}

uint64_t sub_1000202D4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v4 + 8);
  v6 = type metadata accessor for DiagnosticFileCollector(0);
  (*(v3 + 16))(v1, v4 + *(v6 + 24), v2);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[7] = v8;
  *(v8 + 16) = v5;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v5;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_10002042C;

  return NSPersistentStoreCoordinator.perform<A>(_:)();
}

uint64_t sub_10002042C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1000205AC;
  }

  else
  {

    v2 = sub_100020548;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100020548()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000205AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020618(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_1000206AC, v4, v6);
}

uint64_t sub_1000206AC()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = sub_10000CED0(&qword_1000AB418, &qword_100086640);
    *v3 = v0;
    v3[1] = sub_1000207E4;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return ThrowingTaskGroup.next(isolation:)(v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_1000207E4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100020A30;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100020900;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100020900()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = sub_10000CED0(&qword_1000AB418, &qword_100086640);
  *v4 = v0;
  v4[1] = sub_1000207E4;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return ThrowingTaskGroup.next(isolation:)(v0 + 96, v7, v6, v5);
}

uint64_t sub_100020A30()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (ThrowingTaskGroup.isEmpty.getter())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = sub_10000CED0(&qword_1000AB418, &qword_100086640);
    *v4 = v0;
    v4[1] = sub_1000207E4;
    v6 = v0[3];
    v7 = v0[2];

    return ThrowingTaskGroup.next(isolation:)(v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_100020B6C@<X0>(void *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = type metadata accessor for URL();
  __chkstk_darwin(v7 - 8);
  v8 = CKDatabaseScopeString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = String.lowercased()();

  v10._countAndFlagsBits = 95;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11 = [a2 zoneID];
  v12 = [v11 zoneName];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x6E6F736A2ELL;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  URL.appendingPathComponent(_:)();

  v18 = type metadata accessor for AsyncFileOutputStream();
  swift_allocObject();
  v19 = AsyncFileOutputStream.init(url:)();
  os_unfair_lock_lock((a3 + 16));

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  os_unfair_lock_unlock((a3 + 16));
  a4[3] = v18;
  result = sub_100022F0C(&qword_1000AB440, &type metadata accessor for AsyncFileOutputStream, &protocol conformance descriptor for AsyncFileOutputStream);
  a4[4] = result;
  *a4 = v19;
  return result;
}

uint64_t sub_100020DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100020E60, 0, 0);
}

uint64_t sub_100020E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 80);
  if (v4 >> 62)
  {
    a1 = _CocoaArrayWrapper.endIndex.getter();
    v5 = a1;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_18:
    v21 = swift_task_alloc();
    *(v3 + 104) = v21;
    a3 = sub_10000CED0(&qword_1000AB438, &qword_100086690);
    *v21 = v3;
    v21[1] = sub_1000211EC;
    a1 = 0;
    a2 = 0;

    return TaskGroup.awaitAllRemainingTasks(isolation:)(a1, a2, a3);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v25 = **(v3 + 72);
    v24 = v4 & 0xC000000000000001;
    v23 = *(v3 + 80) + 32;
    while (1)
    {
      if (v24)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v23 + 8 * v6);
      }

      v11 = *(v3 + 88);
      v10 = *(v3 + 96);
      v12 = type metadata accessor for TaskPriority();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v10, 1, 1, v12);
      v14 = swift_allocObject();
      v14[2] = 0;
      v15 = v14 + 2;
      v14[3] = 0;
      v14[4] = v9;
      sub_10001DA7C(v10, v11);
      LODWORD(v11) = (*(v13 + 48))(v11, 1, v12);

      v16 = *(v3 + 88);
      if (v11 == 1)
      {
        sub_100021CAC(*(v3 + 88));
        if (!*v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v13 + 8))(v16, v12);
        if (!*v15)
        {
LABEL_14:
          v17 = 0;
          v19 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = dispatch thunk of Actor.unownedExecutor.getter();
      v19 = v18;
      swift_unknownObjectRelease();
LABEL_15:
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_100086680;
      *(v20 + 24) = v14;

      if (v19 | v17)
      {
        v7 = v3 + 16;
        *(v3 + 16) = 0;
        *(v3 + 24) = 0;
        *(v3 + 32) = v17;
        *(v3 + 40) = v19;
      }

      else
      {
        v7 = 0;
      }

      ++v6;
      v8 = *(v3 + 96);
      *(v3 + 48) = 1;
      *(v3 + 56) = v7;
      *(v3 + 64) = v25;
      swift_task_create();

      sub_100021CAC(v8);
      if (v5 == v6)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return TaskGroup.awaitAllRemainingTasks(isolation:)(a1, a2, a3);
}

uint64_t sub_1000211EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100021318()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000D130;

  return AsyncFileOutputStream.closeAsync()();
}

void sub_1000213AC(void *a1, _BYTE *a2)
{
  v55 = a2;
  v3 = type metadata accessor for NSPersistentStore.StoreType();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for URL();
  v62 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v49[-v14];
  v16 = __chkstk_darwin(v13);
  v61 = &v49[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v49[-v19];
  __chkstk_darwin(v18);
  v60 = &v49[-v21];
  v22 = [a1 persistentStores];
  sub_10000D544(0, &qword_1000AB420, NSPersistentStore_ptr);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:

    __break(1u);
    goto LABEL_13;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_3:
  v54 = v5;
  if ((v24 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_15;
  }

  v25 = *(v24 + 32);
LABEL_6:
  v26 = v25;

  v27 = [v26 URL];

  if (!v27)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v53 = a1;

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v62;
  v29 = v60;
  (*(v62 + 32))(v60, v20, v9);
  URL.lastPathComponent.getter();
  v30 = v61;
  URL.appendingPathComponent(_:)();

  type metadata accessor for DiagnosticFileCollector(0);
  sub_100022F0C(&qword_1000AB410, type metadata accessor for DiagnosticFileCollector, &unk_1000866E8);
  static LoggedObject.logger.getter();
  v31 = *(v28 + 16);
  v31(v15, v29, v9);
  v31(v12, v30, v9);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v51 = v32;
    v35 = v34;
    v52 = swift_slowAlloc();
    v63 = v52;
    *v35 = 136315394;
    sub_100022F0C(&qword_1000AAD60, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v55 = v8;
    v50 = v33;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = *(v28 + 8);
    v39(v15, v9);
    v40 = sub_100035120(v36, v38, &v63);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v39(v12, v9);
    v44 = sub_100035120(v41, v43, &v63);

    *(v35 + 14) = v44;
    v45 = v51;
    _os_log_impl(&_mh_execute_header, v51, v50, "Copying '%s' to '%s'", v35, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v55, v57);
  }

  else
  {

    v39 = *(v28 + 8);
    v39(v12, v9);
    v39(v15, v9);
    (*(v56 + 8))(v8, v57);
  }

  v46 = v54;
  static NSPersistentStore.StoreType.sqlite.getter();
  v48 = v60;
  v47 = v61;
  NSPersistentStoreCoordinator.replacePersistentStore(at:destinationOptions:withPersistentStoreFrom:sourceOptions:type:)();
  (*(v58 + 8))(v46, v59);
  v39(v47, v9);
  v39(v48, v9);
}

uint64_t sub_100021A40(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D130;

  return sub_10001F3D4(a1, a2, v6);
}

uint64_t sub_100021AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiagnosticFileCollector(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiagnosticFileCollector(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021BBC()
{
  type metadata accessor for DiagnosticFileCollector(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001DBDC;

  return sub_10001F80C();
}

uint64_t sub_100021CAC(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021D14()
{
  v1 = (type metadata accessor for DiagnosticFileCollector(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100021E24(uint64_t a1)
{
  v4 = *(type metadata accessor for DiagnosticFileCollector(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001DBDC;

  return sub_10002020C(a1, v6, v7, v1 + v5);
}

uint64_t sub_100021F14()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100022048(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100022140;

  return v6(a1);
}

uint64_t sub_100022140()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100022238@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100022724(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100022724((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100022724(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100022724(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100022724((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000225F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&qword_1000AB7C0, &qword_100086BF0);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100022724(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&qword_1000AB450, &unk_1000866A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100022880(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000CED0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100022A5C()
{
  v1 = sub_10000CED0(&qword_1000AB428, &qword_100086650);
  sub_10003197C(v1);
  v2 = sub_10000CED0(&qword_1000AB430, &qword_100086658);
  sub_10003197C(v2);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022AD0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100022B28()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100022BC4@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = *(v3 + ((*(v6 + 64) + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100020B6C(a2, v7, a3);
}

uint64_t sub_100022C78(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D130;

  return sub_100020DB8(a1, a2, v6);
}

uint64_t sub_100022D28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022D68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001DBDC;

  return sub_100021318();
}

uint64_t sub_100022E1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022E54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001DBDC;

  return sub_100022048(a1, v4);
}

uint64_t sub_100022F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100022F6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002302C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000230D0(uint64_t a1)
{
  result = sub_10000D544(319, &qword_1000AB4D8, NSPersistentStoreCoordinator_ptr);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      result = sub_10000D544(319, &qword_1000AB4E0, CKContainer_ptr);
      if (v4 <= 0x3F)
      {
        result = sub_10000D544(319, &unk_1000AB4E8, CKOperationGroup_ptr);
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

uint64_t sub_1000231C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_100080ECC(0, 0, v6, &unk_100086760, v8);
}

uint64_t sub_1000232E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = type metadata accessor for Logger();
  v5[3] = v6;
  v5[4] = *(v6 - 8);
  v5[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_1000233D0;

  return sub_1000032B8();
}

uint64_t sub_1000233D0()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000234E0, v1, 0);
}

uint64_t sub_1000234E0()
{
  sub_100014C0C();

  return _swift_task_switch(sub_100023548, 0, 0);
}

void sub_100023548()
{
  sub_100024CB0();
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Exiting after handling SIGTERM", v3, 2u);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  exit(0);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100023694()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10002374C;

  return sub_1000240B8();
}

uint64_t sub_10002374C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100023888, v1, v0);
}

void *sub_1000238C0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v56 = a7;
  v55 = a6;
  v54 = a5;
  v58 = a4;
  v61 = a3;
  v60 = a2;
  v12 = *a10;
  v57 = sub_10000CED0(&qword_1000AAD48, &qword_100085568);
  v13 = *(v57 - 1);
  __chkstk_darwin(v57);
  v15 = &v53 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000CED0(&qword_1000AAFF0, &qword_100085C70);
  v70[3] = v20;
  v70[4] = swift_getOpaqueTypeConformance2();
  v21 = sub_10000CF2C(v70);
  (*(*(v20 - 8) + 32))(v21, a1, v20);
  v69[3] = sub_100024E54();
  v69[4] = &off_1000A2D48;
  v69[0] = a8;
  swift_defaultActor_initialize();
  *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_server) = 0;
  *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCoreDataSetUp) = 0;
  *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn) = 1;
  *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_didRecordProcessLaunchMetrics) = 0;
  *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_accountChangedListener) = 0;
  sub_100024EA0(&unk_1000AAD10, &unk_1000854A8);
  sub_100024EA0(&qword_1000AAD08, &unk_1000854D8);
  v59 = v12;
  static LoggedObject<>.logger.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Initialized", v24, 2u);
  }

  v25 = (*(v17 + 8))(v19, v16);
  v68 = 0;
  __chkstk_darwin(v25);
  *(&v53 - 2) = &v68;
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  Future.init(closure:)();
  (*(v13 + 32))(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_completion, v15, v57);
  result = v68;
  if (v68)
  {
    *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_promise) = v68;
    v57 = result;

    sub_100001D18();
    sub_10000D2CC(v70, a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_features);
    v27 = a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_accountStore;
    *(v27 + 3) = &type metadata for MainDriver.AccountStore;
    *(v27 + 4) = &off_1000A2060;
    v28 = v60;
    *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_notificationCenter) = v60;
    v29 = v61;
    *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer) = v61;
    v30 = OBJC_IVAR____TtC11homeeventsd10MainDriver_storageDirectory;
    v31 = type metadata accessor for URL();
    v32 = *(v31 - 8);
    (*(v32 + 16))(a10 + v30, v58, v31);
    v33 = (a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localDatabaseName);
    v34 = v55;
    *v33 = v54;
    v33[1] = v34;
    v35 = OBJC_IVAR____TtC11homeeventsd10MainDriver_scheduler;
    sub_10000D2CC(v69, a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_scheduler);
    v36 = OBJC_IVAR____TtC11homeeventsd10MainDriver_maxCloudKitRecordsPerOperation;
    *(a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_maxCloudKitRecordsPerOperation) = a9;
    v37 = v56;
    sub_100024EEC(v56, &v62);
    if (*(&v63 + 1))
    {
      sub_1000111BC(&v62, &v65);
      v38 = v28;
      v39 = v29;
    }

    else
    {
      v66 = type metadata accessor for FileBackedBooleanFlag(0);
      v67 = &off_1000A2B38;
      sub_10000CF2C(&v65);
      v40 = v28;
      v41 = v29;
      URL.appendingPathComponent(_:)();
      if (*(&v63 + 1))
      {
        sub_10000D620(&v62, &qword_1000AB538, &qword_100086768);
      }
    }

    sub_1000111BC(&v65, a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag);
    v42 = sub_100001FC8();
    v43 = objc_allocWithZone(NSPersistentContainer);
    v44 = v42;
    v45 = v37;
    v46 = String._bridgeToObjectiveC()();
    v47 = [v43 initWithName:v46 managedObjectModel:v44];

    sub_10000D2CC(v70, &v65);
    sub_100024F5C(a10 + v35, &v62);
    v48 = *(a10 + v36);
    type metadata accessor for EventUploadTask();
    v49 = swift_allocObject();
    v50 = v47;
    swift_defaultActor_initialize();

    sub_10000D620(v45, &qword_1000AB538, &qword_100086768);
    (*(v32 + 8))(v58, v31);
    sub_10000D330(v69);
    sub_10000D330(v70);
    *(v49 + 208) = 0;
    *(v49 + 216) = 0;
    *(v49 + 224) = 0x4000000000000000;
    swift_weakInit();
    *(v49 + 240) = 0;
    sub_1000111BC(&v65, v49 + 112);
    v51 = v63;
    *(v49 + 152) = v62;
    *(v49 + 168) = v51;
    *(v49 + 184) = v64;
    *(v49 + 192) = v50;
    *(v49 + 200) = v48;
    v52 = (a10 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
    *v52 = v50;
    v52[1] = v49;

    return a10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000240B8()
{
  v1 = sub_10000CED0(&qword_1000AAD48, &qword_100085568);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  type metadata accessor for URL();
  v0[5] = swift_task_alloc();
  v2 = sub_10000CED0(&qword_1000AAFF0, &qword_100085C70);
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v0[10] = v3;
  v0[11] = *(v3 - 8);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[15] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[16] = v5;
  v0[17] = v4;

  return _swift_task_switch(sub_1000242C8, v5, v4);
}

uint64_t sub_1000242C8()
{
  v27 = v0;
  v0[18] = sub_100024CB0();
  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting", v3, 2u);
  }

  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[7];
  v23 = v0[8];
  v24 = v0[6];
  v9 = v0[5];
  v20 = v9;

  (*(v5 + 8))(v4, v6);
  sub_100035774();
  type metadata accessor for Configuration();
  static Configuration.defaultFeaturesDataSource.getter();
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v22 = [objc_opt_self() defaultCenter];
  v21 = static Configuration.cloudKitContainer.getter();
  type metadata accessor for MainDriver(0);
  sub_1000019C8(v9);
  v10 = static Configuration.persistentStoreName.getter();
  v12 = v11;
  v13 = [objc_opt_self() sharedScheduler];
  v14 = static Constants.maxCloudKitRecordsPerOperation.getter();
  v15 = swift_allocObject();
  (*(v8 + 16))(v23, v7, v24);
  v16 = sub_1000238C0(v23, v22, v21, v20, v10, v12, v25, v13, v14, v15);
  v0[19] = v16;
  (*(v8 + 8))(v7, v24);
  type metadata accessor for SignalHandler();
  v17 = swift_allocObject();
  v0[20] = v17;
  swift_defaultActor_initialize();
  *(v17 + 112) = &_swiftEmptyDictionarySingleton;
  v18 = swift_allocObject();
  v0[21] = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;

  return _swift_task_switch(sub_100024594, v17, 0);
}

uint64_t sub_100024594()
{
  sub_100014518(0xFu, sub_100024D44, v0[21]);

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_100024658;
  v2 = v0[4];

  return sub_100002634(v2);
}

uint64_t sub_100024658()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 184) = v3;
  *v3 = v2;
  v3[1] = sub_1000247B0;

  return Future.result.getter();
}

uint64_t sub_1000247B0()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_100024B5C;
  }

  else
  {
    v8 = sub_100024948;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100024964()
{
  sub_100014C0C();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_1000249C8, v1, v2);
}

uint64_t sub_1000249C8()
{

  static LoggedObject.logger.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Exiting", v3, 2u);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[13], v0[10]);

  v4 = v0[1];

  return v4();
}

void sub_100024B5C()
{
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "MainDriver threw error: %@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];

  (*(v7 + 8))(v6, v8);
  exit(1);
}

unint64_t sub_100024CB0()
{
  result = qword_1000AB528;
  if (!qword_1000AB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB528);
  }

  return result;
}

uint64_t sub_100024D04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024D4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100024D94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D130;

  return sub_1000232E0(a1, v4, v5, v7, v6);
}

unint64_t sub_100024E54()
{
  result = qword_1000AB530;
  if (!qword_1000AB530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AB530);
  }

  return result;
}

uint64_t sub_100024EA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MainDriver(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100024EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB538, &qword_100086768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024FC8(uint64_t a1)
{
  v2 = v1;
  swift_weakAssign();
  sub_10000D2CC((v2 + 14), v21);
  v4 = v2[24];
  v5 = v2[25];
  v6 = type metadata accessor for CoreDataDatabase();
  v7 = swift_allocObject();
  *(v7 + 16) = [v4 newBackgroundContext];
  *(v7 + 24) = v5;
  *(v7 + 32) = 0;
  v8 = *(a1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer);
  type metadata accessor for LubyRackoffEncryptionKey();
  type metadata accessor for UUID();
  type metadata accessor for Configuration();
  v9 = v8;
  static Configuration.encryptionKeyWriteCacheSeconds.getter();
  sub_100029E90(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  asyncCache<A, B>(of:withKeysOf:expirationDuration:)();
  v10 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
  v19[3] = v6;
  v19[4] = &off_1000A42B8;
  v19[0] = v7;
  type metadata accessor for EventUploader();
  v11 = swift_allocObject();
  v12 = sub_10001116C(v19, v6);
  __chkstk_darwin(v12);
  v14 = (&v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v11[10] = v6;
  v11[11] = &off_1000A42B8;
  v11[7] = v16;
  sub_1000111BC(v21, (v11 + 2));
  v11[12] = v9;
  sub_1000111BC(&v20, (v11 + 13));
  v11[20] = v10;
  v11[21] = v5;
  v11[18] = 0;
  v11[19] = 0;
  sub_10000D330(v19);
  v2[26] = v11;

  sub_100047DB4(0xD000000000000036, 0x8000000100089130, sub_100029ED8, v2);
  sub_100047DB4(0xD00000000000003CLL, 0x80000001000891D0, sub_100029ED8, v2);
  sub_100047DB4(0xD000000000000044, 0x8000000100089210, sub_100029ED8, v2);
}

uint64_t sub_1000252A4()
{
  sub_10000D330((v0 + 112));
  sub_10000D5CC(v0 + 152);

  swift_weakDestroy();

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100025328(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EventUploadTask();
  sub_100029E90(&qword_1000AB6A0, v2, type metadata accessor for EventUploadTask, &unk_10008681C);

  return static LoggedObject<>.logger.getter();
}

uint64_t sub_1000253B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EventUploadTask();

  return static LoggedObject.logCategory.getter();
}

uint64_t sub_1000253E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_100029EE0(a1, v13);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a2;
  v9 = v13[1];
  *(v8 + 40) = v13[0];
  *(v8 + 56) = v9;
  *(v8 + 72) = v14;

  v10 = sub_1000611E8(0, 0, v6, &unk_100086858, v8);
  sub_10000D620(v6, &qword_1000AAD30, &qword_100085540);
  return v10;
}

uint64_t sub_100025544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000D130;

  return sub_1000255E0(a5);
}

uint64_t sub_1000255E0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = type metadata accessor for CancellationError();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000257D8, v1, 0);
}

uint64_t sub_1000257D8()
{
  v31 = v0;
  v1 = v0[7];
  v2 = v1[3];
  v3 = v1[4];
  sub_10000D224(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v0[31] = v4;
  v0[32] = v5;
  v0[33] = sub_100029E90(&qword_1000AB6B0, v5, type metadata accessor for EventUploadTask, &unk_1000867EC);
  v0[34] = sub_100029E90(&qword_1000AB6A0, v7, type metadata accessor for EventUploadTask, &unk_10008681C);
  static LoggedObject<>.logger.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[30];
  v13 = v0[13];
  v12 = v0[14];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_100035120(v4, v6, &v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "Successfully launched the task associated with identifier %{public}s", v14, 0xCu);
    sub_10000D330(v15);
  }

  v16 = *(v12 + 8);
  v16(v11, v13);
  v0[35] = v16;
  v17 = v0[8];
  v18 = *(v17 + 240);
  if (v18)
  {
    v19 = v18;
    sub_10007A13C(3);

    v20 = *(v17 + 240);
    *(v17 + 240) = 0;
  }

  else
  {
    v20 = [objc_allocWithZone(type metadata accessor for EventUploadScheduledWaitLogEvent()) init];
    sub_10007A13C(2);
  }

  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100025BA0, Strong, 0);
  }

  else
  {
    static LoggedObject<>.logger.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[29];
    v26 = v0[13];
    if (v24)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "MainDriver unexpectedly nil when trying to submit process launch metrics via background task", v27, 2u);
    }

    v16(v25, v26);
    v28 = swift_task_alloc();
    v0[38] = v28;
    *v28 = v0;
    v28[1] = sub_100025E34;

    return sub_10002908C();
  }
}

uint64_t sub_100025BA0()
{
  v1 = v0[36];
  if (*(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_didRecordProcessLaunchMetrics))
  {
    v2 = v0[8];

    return _swift_task_switch(sub_100025D9C, v2, 0);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_didRecordProcessLaunchMetrics) = 1;
    v3 = swift_task_alloc();
    v0[37] = v3;
    *v3 = v0;
    v3[1] = sub_100025C8C;

    return sub_100005E6C(0, 0);
  }
}

uint64_t sub_100025C8C()
{
  v1 = *v0;

  v2 = *(v1 + 64);

  return _swift_task_switch(sub_100025D9C, v2, 0);
}

uint64_t sub_100025D9C()
{

  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_100025E34;

  return sub_10002908C();
}

uint64_t sub_100025E34(char a1)
{
  v4 = *v2;
  *(v4 + 312) = v1;

  v5 = *(v4 + 64);
  if (v1)
  {
    v6 = sub_100027670;
  }

  else
  {
    *(v4 + 392) = a1 & 1;
    v6 = sub_100025F74;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100025F74()
{
  v39 = v0;
  v1 = *(v0 + 392);
  if (v1 == 1)
  {
    static LoggedObject<>.logger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Successfully uploaded events", v4, 2u);
    }

    v5 = *(v0 + 280);
    v6 = *(v0 + 224);
    v7 = *(v0 + 104);

    v5(v6, v7);
    sub_1000298AC();
  }

  else
  {
    static LoggedObject<>.logger.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 280);
    v12 = *(v0 + 216);
    v13 = *(v0 + 104);
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Declining to start our task because it is already running", v14, 2u);
    }

    v11(v12, v13);
  }

  *(v0 + 393) = 1;
  *(v0 + 328) = 0;
  static LoggedObject<>.logger.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 280);
  if (v17)
  {
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v36 = *(v0 + 104);
    v37 = *(v0 + 184);
    v21 = swift_slowAlloc();
    v22 = v1;
    v23 = swift_slowAlloc();
    v38 = v23;
    *v21 = 136446210;
    *(v21 + 4) = sub_100035120(v20, v19, &v38);
    _os_log_impl(&_mh_execute_header, v15, v16, "Marking task associated with identifier %{public}s complete", v21, 0xCu);
    sub_10000D330(v23);
    v1 = v22;

    v25 = v36;
    v24 = v37;
  }

  else
  {
    v26 = *(v0 + 184);
    v27 = *(v0 + 104);

    v24 = v26;
    v25 = v27;
  }

  v18(v24, v25);
  v28 = *(v0 + 56);
  v29 = v28[3];
  v30 = v28[4];
  sub_10000D224(v28, v29);
  (*(v30 + 40))(v29, v30);
  if (v1)
  {
    v33 = *(*(v0 + 64) + 208);
    *(v0 + 336) = v33;
    if (v33)
    {

      v33 = sub_100027024;
      v31 = 0;
      v32 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v33, v31, v32);
  }

  else
  {

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1000263F4()
{
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_100026460, v1, 0);
}

uint64_t sub_100026460()
{
  v43 = v0;
  if (v0[40] < 1)
  {
    static LoggedObject<>.logger.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[35];
    v21 = v0[32];
    if (v19)
    {
      v22 = v0[31];
      v41 = v0[24];
      v23 = v0[13];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42[0] = v25;
      *v24 = 136446210;
      v26 = sub_100035120(v22, v21, v42);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Marking task associated with identifier %{public}s complete", v24, 0xCu);
      sub_10000D330(v25);

      v27 = v41;
    }

    else
    {
      v33 = v0[24];
      v23 = v0[13];

      v27 = v33;
    }

    v20(v27, v23);
    v34 = v0[7];
    v35 = v34[3];
    v36 = v34[4];
    sub_10000D224(v34, v35);
    (*(v36 + 40))(v35, v36);
  }

  else
  {
    v1 = v0[48];
    v2 = v0[7];
    v3 = v2[3];
    v4 = v2[4];
    sub_10000D224(v2, v3);
    (*(v4 + 48))(v3, v4, 0.0);
    if (v1)
    {
      static LoggedObject<>.logger.getter();

      swift_errorRetain();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      v7 = os_log_type_enabled(v5, v6);
      v8 = v0[35];
      v9 = v0[32];
      if (v7)
      {
        v10 = v0[31];
        v39 = v0[13];
        v40 = v0[25];
        v11 = v0[35];
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v42[0] = v14;
        *v12 = 136446466;
        v15 = sub_100035120(v10, v9, v42);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2114;
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 14) = v16;
        *v13 = v16;
        _os_log_impl(&_mh_execute_header, v5, v6, "Failed to mark the task associated with identifier %{public}s as expired, marking complete and resubmitting: %{public}@", v12, 0x16u);
        sub_10000D620(v13, &unk_1000AB7D0, &qword_100085510);

        sub_10000D330(v14);

        v11(v40, v39);
      }

      else
      {
        v28 = v0[25];
        v29 = v0[13];

        v8(v28, v29);
      }

      v30 = v0[7];
      v31 = v30[3];
      v32 = v30[4];
      sub_10000D224(v30, v31);
      (*(v32 + 40))(v31, v32);
      sub_100028B58(0, 1);
    }

    else
    {
    }
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_100026A34()
{
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_100026AA0, v1, 0);
}

uint64_t sub_100026AA0()
{
  static LoggedObject<>.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to check if there are further pending events, assuming there are: %{public}@", v3, 0xCu);
    sub_10000D620(v4, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
  }

  (*(v0 + 280))(*(v0 + 208), *(v0 + 104));
  v6 = *(v0 + 56);
  v7 = v6[3];
  v8 = v6[4];
  sub_10000D224(v6, v7);
  (*(v8 + 48))(v7, v8, 0.0);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100027024()
{
  sub_10000D224((*(v0 + 336) + 56), *(*(v0 + 336) + 80));
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_1000270C4;

  return sub_100078894();
}

uint64_t sub_1000270C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = sub_10002752C;
  }

  else
  {
    *(v4 + 360) = a1;
    v5 = sub_1000271EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000271EC()
{
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_100027258, v1, 0);
}

uint64_t sub_100027258()
{
  if (*(v0 + 360) >= 1)
  {
    static LoggedObject<>.logger.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Found pending events in the local database, scheduling a follow-up task to upload them", v3, 2u);
    }

    v4 = *(v0 + 393);
    v5 = *(v0 + 328);
    v6 = *(v0 + 280);
    v7 = *(v0 + 176);
    v8 = *(v0 + 104);

    v6(v7, v8);
    sub_100028B58(v5, v4);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10002752C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027670()
{
  v106 = v0;
  *(v0 + 40) = *(v0 + 312);
  swift_errorRetain();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 312);
  if (v1)
  {

    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    if (v4 >> 62)
    {
      if (v4 >> 62 != 1)
      {
        v46 = *(v0 + 32);
        sub_1000298AC();
        v47 = v46;
        static LoggedObject<>.logger.getter();
        swift_errorRetain();
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();
        sub_10002A044(*&v3, v4, v46);
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138543362;
          swift_errorRetain();
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 4) = v52;
          *v51 = v52;
          _os_log_impl(&_mh_execute_header, v48, v49, "Encountered non-recoverable error when attempting to upload events: %{public}@", v50, 0xCu);
          sub_10000D620(v51, &unk_1000AB7D0, &qword_100085510);
        }

        v53 = *(v0 + 280);
        v54 = *(v0 + 136);
        v55 = *(v0 + 104);

        sub_10002A044(*&v3, v4, v47);
        v53(v54, v55);
        v3 = 0.0;
        v19 = 1;
        goto LABEL_45;
      }

      sub_1000298AC();
      if (v4)
      {
        sub_100029A9C();
        v7 = v6;
        v101 = v6;
        static LoggedObject<>.logger.getter();
        swift_errorRetain();
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        sub_10002A044(*&v3, v4, v5);
        if (!os_log_type_enabled(v8, v9))
        {
LABEL_10:
          v16 = *(v0 + 280);
          v17 = *(v0 + 144);
          v18 = *(v0 + 104);

          sub_10002A044(*&v3, v4, v5);
          v16(v17, v18);
          v19 = 0;
          v3 = v101;
LABEL_45:

          goto LABEL_46;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 134218242;
        if ((~*&v101 & 0x7FF0000000000000) != 0)
        {
          if (v7 > -9.22337204e18)
          {
            if (v7 < 9.22337204e18)
            {
              v14 = v11;
              *(v10 + 4) = v7;
              *(v10 + 12) = 2114;
              swift_errorRetain();
              v15 = _swift_stdlib_bridgeErrorToNSError();
              *(v10 + 14) = v15;
              *v14 = v15;
              _os_log_impl(&_mh_execute_header, v8, v9, "Encountered recoverable error that did not include a retry time suggestion, using %ld seconds: %{public}@", v10, 0x16u);
              sub_10000D620(v14, &unk_1000AB7D0, &qword_100085510);

              goto LABEL_10;
            }

            goto LABEL_62;
          }

          goto LABEL_58;
        }

        __break(1u);
        goto LABEL_55;
      }

      static LoggedObject<>.logger.getter();
      swift_errorRetain();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      sub_10002A044(*&v3, v4, v5);
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v63 = 134218242;
        if ((~*&v3 & 0x7FF0000000000000) == 0)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (v3 <= -9.22337204e18)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v3 >= 9.22337204e18)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v64 = v11;
        *(v63 + 4) = v3;
        *(v63 + 12) = 2114;
        swift_errorRetain();
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 14) = v65;
        *v64 = v65;
        _os_log_impl(&_mh_execute_header, v61, v62, "Encountered recoverable error that includes suggested retry time of %ld seconds: %{public}@", v63, 0x16u);
        sub_10000D620(v64, &unk_1000AB7D0, &qword_100085510);
      }

      v66 = *(v0 + 280);
      v67 = *(v0 + 152);
    }

    else
    {
      v103 = *(v0 + 32);
      if (v4)
      {
        sub_100029A9C();
        v39 = v38;
        v99 = v38;
        static LoggedObject<>.logger.getter();

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        sub_10002A044(*&v3, v4, v103);
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v105 = v11;
          *v42 = 134218242;
          if ((~*&v99 & 0x7FF0000000000000) == 0)
          {
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          if (v39 <= -9.22337204e18)
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v97 = v11;
          if (v39 >= 9.22337204e18)
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v93 = *(v0 + 160);
          v95 = *(v0 + 280);
          v92 = *(v0 + 104);
          *(v42 + 4) = v39;
          *(v42 + 12) = 2082;
          type metadata accessor for UUID();
          sub_100029E90(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v43 = Dictionary.description.getter();
          v45 = sub_100035120(v43, v44, &v105);

          *(v42 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v40, v41, "Encountered some errors that did not include any retry time suggestion, using %ld seconds: %{public}s", v42, 0x16u);
          sub_10000D330(v97);

          sub_10002A044(*&v3, v4, v103);
          v95(v93, v92);
        }

        else
        {
          v73 = *(v0 + 280);
          v74 = *(v0 + 160);
          v75 = *(v0 + 104);

          sub_10002A044(*&v3, v4, v103);
          v73(v74, v75);
        }

        v19 = 0;
        v3 = v99;
        goto LABEL_45;
      }

      sub_1000298AC();
      static LoggedObject<>.logger.getter();
      v5 = v103;

      v61 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      sub_10002A044(*&v3, v4, v103);
      if (os_log_type_enabled(v61, v68))
      {
        v69 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v105 = v11;
        *v69 = 134218242;
        if ((~*&v3 & 0x7FF0000000000000) == 0)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v3 <= -9.22337204e18)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v100 = v11;
        if (v3 >= 9.22337204e18)
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v96 = *(v0 + 168);
        v98 = *(v0 + 280);
        v94 = *(v0 + 104);
        *(v69 + 4) = v3;
        *(v69 + 12) = 2082;
        type metadata accessor for UUID();
        sub_100029E90(&unk_1000AC310, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v70 = Dictionary.description.getter();
        v72 = sub_100035120(v70, v71, &v105);

        *(v69 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v61, v68, "Encountered some errors that include suggested retry time of %ld seconds: %{public}s", v69, 0x16u);
        sub_10000D330(v100);

        sub_10002A044(*&v3, v4, v103);
        v98(v96, v94);
LABEL_44:
        v19 = 0;
        goto LABEL_45;
      }

      v66 = *(v0 + 280);
      v67 = *(v0 + 168);
    }

    v76 = *(v0 + 104);

    sub_10002A044(*&v3, v4, v5);
    v66(v67, v76);
    goto LABEL_44;
  }

  *(v0 + 48) = v2;
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    static LoggedObject<>.logger.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 280);
    if (v22)
    {
      v25 = *(v0 + 248);
      v24 = *(v0 + 256);
      v102 = *(v0 + 128);
      v26 = *(v0 + 104);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v105 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_100035120(v25, v24, &v105);
      _os_log_impl(&_mh_execute_header, v20, v21, "The task associated with identifier %{public}s has been canceled", v27, 0xCu);
      sub_10000D330(v28);

      v29 = v102;
    }

    else
    {
      v56 = *(v0 + 128);
      v26 = *(v0 + 104);

      v29 = v56;
    }

    v23(v29, v26);
    v58 = *(v0 + 88);
    v57 = *(v0 + 96);
    v59 = *(v0 + 80);
    v60 = *(v0 + 64);
    sub_1000298AC();
    (*(v58 + 8))(v57, v59);

    v11 = *(v60 + 208);
    *(v0 + 368) = v11;
    if (v11)
    {

      v11 = sub_1000284D4;
      goto LABEL_51;
    }

LABEL_67:
    __break(1u);
    return _swift_task_switch(v11, v12, v13);
  }

  static LoggedObject<>.logger.getter();
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138543362;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&_mh_execute_header, v30, v31, "Encountered unhandled error when attempting to upload events: %{public}@", v32, 0xCu);
    sub_10000D620(v33, &unk_1000AB7D0, &qword_100085510);
  }

  v35 = *(v0 + 280);
  v36 = *(v0 + 120);
  v37 = *(v0 + 104);

  v35(v36, v37);
  sub_1000298AC();

  v3 = 0.0;
  v19 = 1;
LABEL_46:
  *(v0 + 393) = v19;
  *(v0 + 328) = v3;
  static LoggedObject<>.logger.getter();

  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.info.getter();

  v79 = os_log_type_enabled(v77, v78);
  v80 = *(v0 + 280);
  if (v79)
  {
    v82 = *(v0 + 248);
    v81 = *(v0 + 256);
    v104 = *(v0 + 184);
    v83 = *(v0 + 104);
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v105 = v85;
    *v84 = 136446210;
    *(v84 + 4) = sub_100035120(v82, v81, &v105);
    _os_log_impl(&_mh_execute_header, v77, v78, "Marking task associated with identifier %{public}s complete", v84, 0xCu);
    sub_10000D330(v85);

    v86 = v104;
  }

  else
  {
    v87 = *(v0 + 184);
    v83 = *(v0 + 104);

    v86 = v87;
  }

  v80(v86, v83);
  v88 = *(v0 + 56);
  v89 = v88[3];
  v90 = v88[4];
  sub_10000D224(v88, v89);
  (*(v90 + 40))(v89, v90);
  v11 = *(*(v0 + 64) + 208);
  *(v0 + 336) = v11;
  if (!v11)
  {
    goto LABEL_66;
  }

  v11 = sub_100027024;
LABEL_51:
  v12 = 0;
  v13 = 0;

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000284D4()
{
  sub_10000D224((*(v0 + 368) + 56), *(*(v0 + 368) + 80));
  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  v1[1] = sub_100028574;

  return sub_100078894();
}

uint64_t sub_100028574(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v5 = sub_100026A34;
  }

  else
  {
    *(v4 + 320) = a1;
    v5 = sub_1000263F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002869C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for EventRecord.DecodedEvent();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100028760, v2, 0);
}

id sub_100028760()
{
  v1 = 0;
  receiver = v0[4].receiver;
  v3 = *(v0[2].receiver + 2);
  do
  {
    v4 = v1;
    if (v3 == v1)
    {
      break;
    }

    super_class = v0[4].super_class;
    v6 = v0[3].super_class;
    receiver[2](super_class, v0[2].receiver + ((*(receiver + 80) + 32) & ~*(receiver + 80)) + receiver[9] * v1++, v6);
    v7 = EventRecord.DecodedEvent.isFake.getter();
    (receiver[1])(super_class, v6);
  }

  while ((v7 & 1) != 0);
  v8 = v0[3].receiver;
  v9 = type metadata accessor for EventUploadSubtaskLogEvent();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager;
  type metadata accessor for MetricsManager();
  *&v10[v11] = static MetricsManager.sharedInstance.getter();
  v10[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType] = 0;
  *&v10[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = v3;
  v10[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData] = v3 == v4;
  v0[1].receiver = v10;
  v0[1].super_class = v9;
  result = objc_msgSendSuper2(v0 + 1, "init");
  v0[5].receiver = result;
  v13 = *(v8 + 26);
  v0[5].super_class = v13;
  if (v13)
  {

    v14 = swift_task_alloc();
    v0[6].receiver = v14;
    *v14 = v0;
    v14[1] = sub_100028934;
    v16 = v0[2].receiver;
    v15 = v0[2].super_class;

    return sub_10006B05C(v16, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100028934()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_100028ACC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100028A5C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100028A5C()
{
  v1 = *(v0 + 80);
  sub_100031AD8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100028ACC()
{
  v1 = v0[13];
  v2 = v0[10];

  sub_100031DC0(v1);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_100028B58(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_allocWithZone(type metadata accessor for EventUploadScheduledWaitLogEvent()) init];
  if ((*(v4 + 216) & 1) == 0)
  {
    v30 = 1;
    if (a2)
    {
      *&a1 = 0.0;
      v18 = 5.0;
    }

    else
    {
      v30 = 0;
      v18 = *&a1 + 5.0;
    }

    v31 = 0;
    v19 = v30;
    v32[3] = &type metadata for BackgroundSystemTaskRequest;
    v32[4] = &off_1000A24F0;
    v20 = swift_allocObject();
    v32[0] = v20;
    *(v20 + 16) = 0xD000000000000036;
    *(v20 + 24) = 0x8000000100089130;
    *(v20 + 32) = 33554689;
    *(v20 + 40) = 6;
    *(v20 + 48) = v18;
    *(v20 + 56) = 0;
    *(v20 + 64) = *&a1;
    *(v20 + 72) = v19;
    *(v20 + 73) = 0;
    *(v20 + 80) = 0;
    *(v20 + 88) = 1;
    sub_10004827C(v32);
    if (!v3)
    {
      sub_10000D330(v32);
      v25 = *(v4 + 240);
      *(v4 + 240) = v27;

      return;
    }

    sub_10000D330(v32);
    v29 = v3;
    swift_errorRetain();
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    if (swift_dynamicCast())
    {
      if (v28)
      {
        if (v28 == 2)
        {

          v26 = v27;
          sub_10007A13C(1);
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        return;
      }

      sub_100029038();
      v21 = swift_allocError();
      *v22 = 0;
      v23 = v27;
      sub_10007A464(v21);

      swift_allocError();
      *v24 = 0;
      swift_willThrow();
    }

    else
    {
      v23 = v27;
    }

    return;
  }

  sub_100029E90(&qword_1000AB6B0, v11, type metadata accessor for EventUploadTask, &unk_1000867EC);
  sub_100029E90(&qword_1000AB6A0, v12, type metadata accessor for EventUploadTask, &unk_10008681C);
  static LoggedObject<>.logger.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_100035120(0xD000000000000036, 0x8000000100089130, v32);
    _os_log_impl(&_mh_execute_header, v13, v14, "Declining to schedule a task associated with identifier %{public}s because our task is currently running", v15, 0xCu);
    sub_10000D330(v16);
  }

  (*(v8 + 8))(v10, v7);
  v17 = v27;
  sub_10007A13C(1);
}

uint64_t sub_100029000()
{

  return _swift_deallocObject(v0, 89, 7);
}

unint64_t sub_100029038()
{
  result = qword_1000AB6A8;
  if (!qword_1000AB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB6A8);
  }

  return result;
}

uint64_t sub_10002908C()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100029180, v0, 0);
}

uint64_t sub_100029180(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 216);
  *(v2 + 88) = v4;
  if (v4 == 1)
  {
    sub_100029E90(&qword_1000AB6B0, a2, type metadata accessor for EventUploadTask, &unk_1000867EC);
    sub_100029E90(&qword_1000AB6A0, v5, type metadata accessor for EventUploadTask, &unk_10008681C);
    static LoggedObject<>.logger.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v2 + 56);
    v10 = *(v2 + 32);
    v11 = *(v2 + 40);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Upload already running", v12, 2u);
    }

    (*(v11 + 8))(v9, v10);
    v13 = *(v2 + 88);

    v14 = *(v2 + 8);

    return v14((v13 & 1) == 0);
  }

  else
  {
    *(v3 + 216) = 1;
    sub_100029E90(&qword_1000AB6B0, a2, type metadata accessor for EventUploadTask, &unk_1000867EC);
    sub_100029E90(&qword_1000AB6A0, v16, type metadata accessor for EventUploadTask, &unk_10008681C);
    static LoggedObject<>.logger.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Upload now running", v19, 2u);
    }

    v21 = *(v2 + 40);
    v20 = *(v2 + 48);
    v22 = *(v2 + 32);
    v23 = *(v2 + 16);

    result = (*(v21 + 8))(v20, v22);
    v24 = *(v23 + 208);
    *(v2 + 64) = v24;
    if (v24)
    {

      v25 = swift_task_alloc();
      *(v2 + 72) = v25;
      *v25 = v2;
      v25[1] = sub_1000294C0;

      return sub_10006A528();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000294C0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_100029668;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1000295E8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000295E8()
{
  sub_1000296FC(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2((v1 & 1) == 0);
}

uint64_t sub_100029668()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1000296FC(v2, v1);

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_1000296FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 216) = 0;
  sub_100029E90(&qword_1000AB6B0, v7, type metadata accessor for EventUploadTask, &unk_1000867EC);
  sub_100029E90(&qword_1000AB6A0, v8, type metadata accessor for EventUploadTask, &unk_10008681C);
  static LoggedObject<>.logger.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Upload no longer running", v11, 2u);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000298AC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029E90(&qword_1000AB6B0, v6, type metadata accessor for EventUploadTask, &unk_1000867EC);
  sub_100029E90(&qword_1000AB6A0, v7, type metadata accessor for EventUploadTask, &unk_10008681C);
  static LoggedObject<>.logger.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = 2;
    _os_log_impl(&_mh_execute_header, v8, v9, "Resetting back off time interval to %ld seconds", v10, 0xCu);
  }

  result = (*(v3 + 8))(v5, v2);
  *(v1 + 224) = 0x4000000000000000;
  return result;
}

uint64_t sub_100029A9C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v9 = &v22 - v8;
  v10 = *(v0 + 224);
  if (v10 + v10 <= 3600.0)
  {
    v11 = v10 + v10;
  }

  else
  {
    v11 = 3600.0;
  }

  *(v0 + 224) = v11;
  sub_100029E90(&qword_1000AB6B0, v7, type metadata accessor for EventUploadTask, &unk_1000867EC);
  sub_100029E90(&qword_1000AB6A0, v12, type metadata accessor for EventUploadTask, &unk_10008681C);
  if (v11 == v10)
  {
    static LoggedObject<>.logger.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v14))
    {

      return (*(v3 + 8))(v9, v2);
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v16 = *(v1 + 224);
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -9.22337204e18)
    {
      if (v16 < 9.22337204e18)
      {
        *(result + 4) = v16;
        v17 = result;

        _os_log_impl(&_mh_execute_header, v13, v14, "Back off time interval staying at %ld seconds", v17, 0xCu);

        return (*(v3 + 8))(v9, v2);
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  static LoggedObject<>.logger.getter();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v18, v19))
  {

    goto LABEL_20;
  }

  result = swift_slowAlloc();
  *result = 134218240;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(result + 4) = v10;
  *(result + 12) = 2048;
  v20 = *(v1 + 224);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v20 < 9.22337204e18)
  {
    *(result + 14) = v20;
    v21 = result;

    _os_log_impl(&_mh_execute_header, v18, v19, "Advanced back off time interval from %ld to %ld seconds", v21, 0x16u);

LABEL_20:
    v9 = v6;
    return (*(v3 + 8))(v9, v2);
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100029E90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100029F3C()
{
  swift_unknownObjectRelease();

  sub_10000D330((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100029F84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D130;

  return sub_100025544(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10002A044(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return v4;
    }
  }

  else if (!v3)
  {
  }
}

uint64_t sub_10002A06C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v27 = a2;
  v4 = type metadata accessor for FakeEvent.State();
  __chkstk_darwin(v4 - 8);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000CED0(&qword_1000AB6B8, &qword_100086D40);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10000CED0(&qword_1000AB6C0, &qword_100086870);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for Date();
  __chkstk_darwin(v18);
  (*(v20 + 16))(&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v13 + 16))(v17, v27, v12);
  v21 = type metadata accessor for EventCategory();
  v22 = 1;
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  UUID.init()();
  UUID.init()();
  v30 = 0;
  swift_stdlib_random();
  if ((v30 & 0x20000) != 0)
  {
    UUID.init()();
    v22 = 0;
  }

  (*(v13 + 56))(v8, v22, 1, v12);
  sub_10002A430(v28);
  v23 = v29;
  FakeEvent.init(date:homeIdentifier:category:roomIdentifier:roomName:accessoryIdentifier:accessoryName:userIdentifier:state:)();
  v24 = enum case for EventRecord.DecodedEvent.fakeEvent(_:);
  v25 = type metadata accessor for EventRecord.DecodedEvent();
  return (*(*(v25 - 8) + 104))(v23, v24, v25);
}

unint64_t sub_10002A430@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000CED0(&qword_1000AB6C8, qword_100086878);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = static FakeEvent.State.allCases.getter();
  v6 = *(v5 + 16);
  if (v6)
  {
    result = sub_10002A678(v6);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = result;
      if (result < *(v5 + 16))
      {
        v9 = type metadata accessor for FakeEvent.State();
        v10 = *(v9 - 8);
        (*(v10 + 16))(v4, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v9);

        (*(v10 + 56))(v4, 0, 1, v9);
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  v9 = type metadata accessor for FakeEvent.State();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
LABEL_6:
  type metadata accessor for FakeEvent.State();
  v11 = *(v9 - 8);
  result = (*(v11 + 48))(v4, 1, v9);
  if (result != 1)
  {
    return (*(v11 + 32))(a1, v4, v9);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10002A678(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10002A704(uint64_t a1)
{
  v32 = type metadata accessor for UUID();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v25 = v1;
    v35 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v29 = v3 + 8;
    v30 = v3 + 16;
    v26 = a1 + 64;
    v27 = v3;
    v28 = v10;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v33 = v9;
      v10 = v5;
      v13 = *(a1 + 48) + *(v3 + 72) * v8;
      v14 = a1;
      v16 = v31;
      v15 = v32;
      (*(v3 + 16))(v31, v13, v32);
      v34 = static EventRecord.recordZoneID(forHomeIdentifier:)();
      v17 = v16;
      a1 = v14;
      (*(v3 + 8))(v17, v15);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v11 = 1 << *(v14 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v18 = *(v7 + 8 * v12);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v5 = v10;
      LODWORD(v10) = v28;
      if (v28 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v12 << 6;
        v21 = v12 + 1;
        v22 = (v26 + 8 * v12);
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_10002BC80(v8, v28, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_10002BC80(v8, v28, 0);
      }

LABEL_4:
      v9 = v33 + 1;
      v8 = v11;
      v3 = v27;
      if (v33 + 1 == v5)
      {
        return v35;
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

uint64_t sub_10002A9F8()
{
  type metadata accessor for XPCServer();
  sub_10002BC38(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  return static LoggedObject.logger.getter();
}

uint64_t sub_10002AA68(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for SomeEvent();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_10002ABEC, 0, 0);
}

uint64_t sub_10002ABEC()
{
  v40 = v0;
  v1 = v0[7];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[12];
    v5 = v0[9];
    v39[0] = _swiftEmptyArrayStorage;
    sub_10003E738(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v36 = *(v5 + 56);
    v37 = v6;
    v35 = (v5 - 8);
    do
    {
      v8 = v0[10];
      v9 = v0[8];
      v37(v8, v7, v9);
      SomeEvent.anyEvent.getter();
      sub_10000D224(v0 + 2, v0[5]);
      dispatch thunk of EventProtocol.homeIdentifier.getter();
      sub_10000D330(v0 + 2);
      (*v35)(v8, v9);
      v39[0] = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_10003E738((v10 > 1), v11 + 1, 1);
        v3 = v39[0];
      }

      v12 = v0[13];
      v13 = v0[11];
      v3[2] = v11 + 1;
      (*(v4 + 32))(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v7 += v36;
      --v2;
    }

    while (v2);
  }

  v14 = sub_1000195BC(v3);

  v0[18] = type metadata accessor for XPCServer();
  v0[19] = sub_10002BC38(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[17];
  v20 = v0[14];
  v19 = v0[15];
  if (v17)
  {
    v38 = v0[17];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39[0] = v22;
    *v21 = 136315138;
    sub_10002BC38(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = Set.description.getter();
    v25 = sub_100035120(v23, v24, v39);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Ensuring zones exist for homes: %s", v21, 0xCu);
    sub_10000D330(v22);

    v26 = *(v19 + 8);
    v26(v38, v20);
  }

  else
  {

    v26 = *(v19 + 8);
    v26(v18, v20);
  }

  v0[20] = v26;
  type metadata accessor for Configuration();
  v27 = static Configuration.cloudKitContainer.getter();
  v28 = [v27 privateCloudDatabase];
  v0[21] = v28;

  v29 = objc_allocWithZone(CKOperationGroup);
  v30 = v28;
  v31 = [v29 init];
  v0[22] = v31;
  v39[0] = v31;
  sub_100068834(v39, v30, 25);

  v32 = sub_10002A704(v14);
  v0[23] = v32;

  v33 = swift_task_alloc();
  v0[24] = v33;
  *v33 = v0;
  v33[1] = sub_10002B060;

  return sub_10006834C(v32, v30, v31);
}

uint64_t sub_10002B060()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_10002B228;
  }

  else
  {
    v2 = sub_10002B17C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002B17C()
{
  v1 = v0[22];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10002B228()
{
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to ensure that the zones exists: %{public}@", v3, 0xCu);
    sub_10000F32C(v4);
  }

  v7 = v0[21];
  v6 = v0[22];
  v8 = v1;
  v9 = v0[20];
  v10 = v0[16];
  v11 = v0[14];

  v9(v10, v11);
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002B3F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10002B518, 0, 0);
}

uint64_t sub_10002B518()
{
  v35 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v0[10] = type metadata accessor for XPCServer();
  v0[11] = sub_10002BC38(&qword_1000AAFD8, type metadata accessor for XPCServer, &unk_100085BD8);
  static LoggedObject.logger.getter();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  if (v7)
  {
    v33 = v0[6];
    v14 = swift_slowAlloc();
    v31 = v6;
    v15 = swift_slowAlloc();
    v34[0] = v15;
    *v14 = 136315138;
    sub_10002BC38(&qword_1000AB0D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v8;
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_100035120(v16, v18, v34);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v31, "Ensuring zone exists for home: %s", v14, 0xCu);
    sub_10000D330(v15);

    v20 = *(v9 + 8);
    v20(v32, v33);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    v20 = *(v9 + 8);
    v20(v8, v10);
  }

  v0[12] = v20;
  type metadata accessor for Configuration();
  v21 = static Configuration.cloudKitContainer.getter();
  v22 = [v21 privateCloudDatabase];
  v0[13] = v22;

  v23 = objc_allocWithZone(CKOperationGroup);
  v24 = v22;
  v25 = [v23 init];
  v0[14] = v25;
  v34[0] = v25;
  sub_100068834(v34, v24, -1);

  v26 = static EventRecord.recordZoneID(forHomeIdentifier:)();
  v0[15] = v26;
  sub_10000CED0(&qword_1000AADA0, &qword_100085590);
  v27 = swift_allocObject();
  v0[16] = v27;
  *(v27 + 16) = xmmword_100085340;
  *(v27 + 32) = v26;
  v28 = v26;
  v29 = swift_task_alloc();
  v0[17] = v29;
  *v29 = v0;
  v29[1] = sub_10002B8AC;

  return sub_10006834C(v27, v24, v25);
}

uint64_t sub_10002B8AC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10002BA68;
  }

  else
  {

    v2 = sub_10002B9C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002B9C8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002BA68()
{

  static LoggedObject.logger.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to ensure that the zone exists: %{public}@", v3, 0xCu);
    sub_10000F32C(v4);
  }

  v7 = v0[14];
  v6 = v0[15];
  v8 = v1;
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[8];
  v12 = v0[6];

  v9(v11, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_10002BC38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002BC80(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

__n128 sub_10002BC98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10002BCAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10002BCF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10002BD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_10002BE00;

  return sub_10002BF74(a3);
}

uint64_t sub_10002BE00(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 24);
    *(v4 + 40) = a1 & 1;

    return _swift_task_switch(sub_10002BF50, v8, 0);
  }
}

uint64_t sub_10002BF74(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  sub_10000CED0(&qword_1000AB6D0, &qword_1000869F0);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DateInterval();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[34] = v7;
  v8 = swift_task_alloc();
  v2[35] = v8;
  *v8 = v2;
  v8[1] = sub_10002C268;

  return sub_10002D780(v7, a1);
}

uint64_t sub_10002C268()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_10002D494;
  }

  else
  {
    v4 = sub_10002C394;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10002C394()
{
  v65 = v0;
  v1 = v0[33];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[9] + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration;
  v5 = _s15DefaultDelegateC13ConfigurationVMa(0);
  sub_10002F12C(v4 + *(v5 + 48), v1);
  v6 = *(v3 + 48);
  v7 = v6(v1, 1, v2);
  v8 = v0[33];
  if (v7 == 1)
  {
    v9 = v0[22];
    static Date.now.getter();
    if (v6(v8, 1, v9) != 1)
    {
      sub_10002F19C(v0[33]);
    }
  }

  else
  {
    (*(v0[23] + 32))(v0[27], v0[33], v0[22]);
  }

  v10 = v0[32];
  v11 = v0[22];
  sub_10002F12C(v0[34], v10);
  v12 = v6(v10, 1, v11);
  sub_10002F19C(v10);
  if (v12 == 1)
  {
    v61 = v0[34];
    v13 = v0[31];
    v14 = v0[26];
    v16 = v0[22];
    v15 = v0[23];
    Date.addingTimeInterval(_:)();
    Date.weeksSinceReferenceDate.getter();
    Date.init(weeksSinceReferenceDate:)();
    (*(v15 + 8))(v14, v16);
    (*(v15 + 56))(v13, 0, 1, v16);
    v12 = 1;
    sub_10002F204(v13, v61, &qword_1000AB0C8, &qword_100085F18);
  }

  v17 = Date.weeksSinceReferenceDate.getter();
  v18 = *(v4 + *(v5 + 36));
  v19 = __OFSUB__(v17, v18);
  result = v17 - v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_22;
  }

  v21 = v0[34];
  v22 = v0[30];
  v23 = v0[22];
  Date.init(weeksSinceReferenceDate:)();
  sub_10002F12C(v21, v22);
  result = v6(v22, 1, v23);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v0[30];
  v25 = v0[22];
  v26 = v0[23];
  sub_100031A80(&qword_1000AB6D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v27 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v28 = *(v26 + 8);
  v0[37] = v28;
  v0[38] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v24, v25);
  if (v27)
  {
    sub_100031A80(&qword_1000AAFE0, _s15DefaultDelegateCMa, &unk_100087200);
    sub_100031A80(&qword_1000AAFE8, _s15DefaultDelegateCMa, &unk_100087240);
    static LoggedObject<>.logger.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[34];
    v33 = v0[22];
    if (!v31)
    {
      v49 = v0[27];
      v50 = v0[25];
      v51 = v0[21];
      v52 = v29;
      v54 = v0[17];
      v53 = v0[18];

      (*(v53 + 8))(v51, v54);
      v28(v50, v33);
      v28(v49, v33);
      v43 = v32;
      goto LABEL_18;
    }

    v63 = v30;
    v34 = v0[29];
    v35 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64 = v62;
    *v35 = 136315138;
    swift_beginAccess();
    sub_10002F12C(v32, v34);
    result = v6(v34, 1, v33);
    if (result != 1)
    {
      v59 = v0[27];
      v60 = v0[34];
      v36 = v0[24];
      v37 = v0[22];
      v57 = v0[21];
      v58 = v0[25];
      v38 = v0[18];
      v56 = v0[17];
      (*(v0[23] + 32))(v36, v0[29], v37);
      sub_100031A80(&qword_1000AB6E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v28(v36, v37);
      v42 = sub_100035120(v39, v41, &v64);

      *(v35 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v29, v63, "Found most recent digest ending at %s, nothing to do", v35, 0xCu);
      sub_10000D330(v62);

      (*(v38 + 8))(v57, v56);
      v28(v58, v37);
      v28(v59, v37);
      v43 = v60;
LABEL_18:
      sub_10002F19C(v43);

      v55 = v0[1];

      return v55(0);
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v44 = v0[28];
  v45 = v0[22];
  sub_10002F12C(v0[34], v44);
  result = v6(v44, 1, v45);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  (*(v0[23] + 16))(v0[26], v0[25], v0[22]);
  DateInterval.init(start:end:)();
  v46 = swift_task_alloc();
  v0[39] = v46;
  *v46 = v0;
  v46[1] = sub_10002CB24;
  v47 = v0[16];
  v48 = v0[8];

  return sub_10002DCC0(v48, v47, v12 != 1);
}

uint64_t sub_10002CB24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[40] = a1;
  v5[41] = a2;
  v5[42] = v2;

  v6 = v4[9];
  if (v2)
  {
    v7 = sub_10002D5E4;
  }

  else
  {
    v7 = sub_10002CC5C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10002CC5C()
{
  v85 = v0;
  v1 = v0[41];
  if (v1)
  {
    v2 = v0[40];
    v3 = v0[16];
    loga = v0[15];
    v4 = v0[12];
    v5 = v0[11];
    v6 = v0[9];
    v7 = *(v0[13] + 16);
    v7(v5, v3, v4);
    v8 = _s15DefaultDelegateC14DigestMetadataVMa(0);
    *(v5 + v8[5]) = v2;
    *(v5 + v8[6]) = v1;
    *(v5 + v8[7]) = _swiftEmptyArrayStorage;
    (*(*(v8 - 1) + 56))(v5, 0, 1, v8);
    v9 = OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_digestMetadata;
    swift_beginAccess();

    sub_10002F204(v5, v6 + v9, &qword_1000AB6D0, &qword_1000869F0);
    swift_endAccess();
    sub_100031A80(&qword_1000AAFE0, _s15DefaultDelegateCMa, &unk_100087200);
    sub_100031A80(&qword_1000AAFE8, _s15DefaultDelegateCMa, &unk_100087240);
    static LoggedObject<>.logger.getter();
    v7(loga, v3, v4);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    log = v10;
    if (os_log_type_enabled(v10, v11))
    {
      v58 = v11;
      v12 = v0[40];
      v72 = v0[37];
      v77 = v0[27];
      v80 = v0[34];
      v66 = v0[22];
      v69 = v0[25];
      v59 = v0[18];
      v60 = v0[17];
      v62 = v0[20];
      v13 = v0[15];
      v64 = v0[16];
      v15 = v0[12];
      v14 = v0[13];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v84 = v17;
      *v16 = 134218242;

      *(v16 + 4) = v12;

      *(v16 + 12) = 2080;
      sub_100031A80(&qword_1000AB6E0, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v18 = v15;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v22 = *(v14 + 8);
      v23 = v13;
      v24 = v18;
      v22(v23, v18);
      v25 = v22;
      v26 = sub_100035120(v19, v21, &v84);

      *(v16 + 14) = v26;
      _os_log_impl(&_mh_execute_header, log, v58, "Digest created with %ld event(s) in range %s", v16, 0x16u);
      sub_10000D330(v17);

      (*(v59 + 8))(v62, v60);
      v25(v64, v24);
      v72(v69, v66);
      v72(v77, v66);
    }

    else
    {
      v48 = v0[37];
      v79 = v0[27];
      v80 = v0[34];
      v49 = v0[22];
      v50 = v0[18];
      v68 = v0[17];
      v71 = v0[20];
      v51 = v0[15];
      v74 = v0[16];
      v76 = v0[25];
      v53 = v0[12];
      v52 = v0[13];
      swift_bridgeObjectRelease_n();

      v54 = *(v52 + 8);
      v54(v51, v53);
      (*(v50 + 8))(v71, v68);
      v54(v74, v53);
      v48(v76, v49);
      v48(v79, v49);
    }

    sub_10002F19C(v80);
  }

  else
  {
    v27 = v0[16];
    v28 = v0[13];
    v29 = v0[14];
    v30 = v0[12];
    sub_100031A80(&qword_1000AAFE0, _s15DefaultDelegateCMa, &unk_100087200);
    sub_100031A80(&qword_1000AAFE8, _s15DefaultDelegateCMa, &unk_100087240);
    static LoggedObject<>.logger.getter();
    (*(v28 + 16))(v29, v27, v30);
    v31 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();
    v32 = os_log_type_enabled(v31, v67);
    v33 = v0[37];
    v34 = v0[34];
    v35 = v0[27];
    v78 = v0[25];
    v81 = v0[22];
    v36 = v0[18];
    v70 = v0[17];
    v73 = v0[19];
    v75 = v0[16];
    v38 = v0[13];
    v37 = v0[14];
    v39 = v0[12];
    if (v32)
    {
      v65 = v0[37];
      v40 = swift_slowAlloc();
      v63 = v35;
      v41 = swift_slowAlloc();
      v84 = v41;
      *v40 = 136315138;
      sub_100031A80(&qword_1000AB6E0, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
      v61 = v34;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v45 = *(v38 + 8);
      v45(v37, v39);
      v46 = sub_100035120(v42, v44, &v84);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v31, v67, "Found no events in range %s, nothing to do", v40, 0xCu);
      sub_10000D330(v41);

      (*(v36 + 8))(v73, v70);
      v45(v75, v39);
      v65(v78, v81);
      v65(v63, v81);
      v47 = v61;
    }

    else
    {

      v55 = *(v38 + 8);
      v55(v37, v39);
      (*(v36 + 8))(v73, v70);
      v55(v75, v39);
      v33(v78, v81);
      v33(v35, v81);
      v47 = v34;
    }

    sub_10002F19C(v47);
    v1 = 0;
  }

  v56 = v0[1];

  return v56(v1 != 0);
}

uint64_t sub_10002D494()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10002D5E4()
{
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[22];
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1(v4, v5);
  v1(v3, v5);
  sub_10002F19C(v2);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_10002D780(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for DatabaseConfiguration();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002D8A0, v2, 0);
}

uint64_t sub_10002D8A0()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  **(v0 + 80) = v3;
  (*(v1 + 104))();
  v4 = v2 + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration;
  v5 = _s15DefaultDelegateC13ConfigurationVMa(0);
  v6 = v5[5];
  v7 = v5[13];
  v8 = *(v4 + v5[10]);
  v9 = v3;
  UUID.init()();
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_10002DA24;
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);
  v13 = *(v0 + 16);

  return static EventDigestQuery.fetchMostRecentEndDate(database:homeIdentifier:targetCloudKitZone:queryIdentifier:qualityOfService:)(v13, v11, v4 + v6, v4 + v7, v12, v8);
}

uint64_t sub_10002DA24()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 96) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v10 = *(v2 + 32);

    return _swift_task_switch(sub_10002DC50, v10, 0);
  }

  else
  {

    v11 = *(v9 + 8);

    return v11();
  }
}

uint64_t sub_10002DC50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002DCC0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 304) = a3;
  *(v4 + 56) = a1;
  *(v4 + 80) = *v3;
  *(v4 + 88) = sub_10000CED0(&qword_1000AB6F0, &qword_100086A08);
  *(v4 + 96) = swift_task_alloc();
  v5 = sub_10000CED0(&qword_1000AB6F8, &qword_100086A10);
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  Scope = type metadata accessor for QueryScope();
  *(v4 + 128) = Scope;
  *(v4 + 136) = *(Scope - 8);
  *(v4 + 144) = swift_task_alloc();
  v7 = type metadata accessor for Configuration.TargetCloudKitZone();
  *(v4 + 152) = v7;
  *(v4 + 160) = *(v7 - 8);
  *(v4 + 168) = swift_task_alloc();
  sub_10000CED0(&qword_1000AB6B8, &qword_100086D40);
  *(v4 + 176) = swift_task_alloc();
  v8 = type metadata accessor for DateInterval();
  *(v4 + 184) = v8;
  *(v4 + 192) = *(v8 - 8);
  *(v4 + 200) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v4 + 208) = v9;
  *(v4 + 216) = *(v9 - 8);
  *(v4 + 224) = swift_task_alloc();
  v10 = type metadata accessor for DatabaseConfiguration();
  *(v4 + 232) = v10;
  *(v4 + 240) = *(v10 - 8);
  *(v4 + 248) = swift_task_alloc();
  v11 = type metadata accessor for EventQuery();
  *(v4 + 256) = v11;
  *(v4 + 264) = *(v11 - 8);
  *(v4 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_10002E058, v3, 0);
}

uint64_t sub_10002E058()
{
  static Task<>.checkCancellation()();
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[27];
  v21 = v0[29];
  v22 = v0[26];
  v5 = v0[24];
  v29 = v0[25];
  v23 = v0[23];
  v24 = v0[22];
  v6 = v0[20];
  v25 = v0[19];
  v26 = v0[21];
  v7 = v0[17];
  v27 = v0[18];
  v28 = v0[16];
  v8 = v0[9] + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration;
  v20 = v0[8];
  v9 = v0[7];
  sub_10000D2CC(v8, (v0 + 2));
  *v1 = v9;
  (*(v2 + 104))(v1, enum case for DatabaseConfiguration.configured(_:), v21);
  v10 = _s15DefaultDelegateC13ConfigurationVMa(0);
  (*(v4 + 16))(v3, v8 + v10[5], v22);
  (*(v5 + 16))(v29, v20, v23);
  (*(v4 + 56))(v24, 1, 1, v22);
  (*(v6 + 16))(v26, v8 + v10[13], v25);
  (*(v7 + 104))(v27, enum case for QueryScope.owned(_:), v28);

  v11 = v9;
  EventQuery.init(features:database:homeIdentifier:dateInterval:categories:accessoryIdentifier:resultsLimit:maxRecordsPerQuery:dateIntervalStartOpen:dateIntervalEndOpen:scope:targetCloudKitZone:qualityOfService:retainEncodedEvent:)();
  v12 = swift_allocObject();
  v0[35] = v12;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = &_swiftEmptySetSingleton;
  EventQuery.start()();
  type metadata accessor for SomeEvent();
  sub_100031A38(&qword_1000AB708, &qword_1000AB6F0, &qword_100086A08, &protocol conformance descriptor for AsyncThrowingStream<A, B>);

  AsyncCompactMapSequence.init(_:transform:)();
  v13 = v10[7];
  v14 = v10[11];
  v15 = swift_task_alloc();
  v0[36] = v15;
  v16 = sub_100031A38(&qword_1000AB710, &qword_1000AB6F8, &qword_100086A10, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>);
  *v15 = v0;
  v15[1] = sub_10002E498;
  v17 = v0[15];
  v18 = v0[13];

  return static DigestRecord.encode<A>(events:to:encoding:)(v17, v8 + v13, v8 + v14, v18, v16);
}

uint64_t sub_10002E498()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_10002E760;
  }

  else
  {
    v4 = sub_10002E5C4;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_10002E5C4()
{
  v14 = v0;
  v1 = v0[37];
  v2 = v0[35];
  os_unfair_lock_lock((v2 + 16));
  sub_10002EC2C((v2 + 24), v13);
  v3 = v0[35];
  if (v1)
  {

    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {
    v5 = v0[33];
    v4 = v0[34];
    v6 = v0[32];
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[13];
    os_unfair_lock_unlock(v3 + 4);
    (*(v7 + 8))(v8, v9);
    (*(v5 + 8))(v4, v6);

    v10 = v13[0];
    v11 = v13[1];

    v12 = v0[1];

    v12(v10, v11);
  }
}

uint64_t sub_10002E760()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[33];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for EventCategory();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for SomeEvent();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for EventRecord.DataType();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10002EA08, 0, 0);
}

void sub_10002EA08()
{
  v1 = *(v0[15] + 16);
  v1(v0[16], v0[8], v0[14]);
  EventRecord.DataType.init(someEvent:)();
  if (EventRecord.DataType.isIncludedInDigests.getter())
  {
    v2 = v0[9];
    os_unfair_lock_lock((v2 + 16));
    v3 = *(v2 + 24);
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
      return;
    }

    v6 = v0[18];
    v18 = v0[17];
    v19 = v0[19];
    v21 = v0[14];
    v22 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v20 = v1;
    v9 = v0[11];
    v10 = v0[9];
    v15 = v0[10];
    v16 = v0[8];
    v17 = v0[7];
    *(v2 + 24) = v5;
    SomeEvent.anyEvent.getter();
    sub_10000D224(v0 + 2, v0[5]);
    dispatch thunk of EventProtocol.category.getter();
    sub_10002F5C4(v7, v8);
    (*(v9 + 8))(v7, v15);
    sub_10000D330(v0 + 2);
    os_unfair_lock_unlock(v10 + 4);
    (*(v6 + 8))(v19, v18);
    v20(v17, v16, v21);
    (*(v22 + 56))(v17, 0, 1, v21);
  }

  else
  {
    v11 = v0[14];
    v12 = v0[15];
    v13 = v0[7];
    (*(v0[18] + 8))(v0[19], v0[17]);
    (*(v12 + 56))(v13, 1, 1, v11);
  }

  v14 = v0[1];

  v14();
}

uint64_t sub_10002EC2C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_100031A80(&qword_1000AAFE0, _s15DefaultDelegateCMa, &unk_100087200);
  sub_100031A80(&qword_1000AAFE8, _s15DefaultDelegateCMa, &unk_100087240);
  static LoggedObject<>.logger.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Query returned %ld event(s)", v12, 0xCu);
  }

  (*(v6 + 8))(v8, v5);
  if (v9 < 1)
  {
    v9 = 0;
    result = 0;
  }

  else
  {
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t sub_10002EE24()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10002EE44, v2, 0);
}

uint64_t sub_10002EE44()
{
  static Task<>.checkCancellation()();
  _s15DefaultDelegateC13ConfigurationVMa(0);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = _s15DefaultDelegateCMa(0);
  v3 = sub_100031A80(&qword_1000AAFE8, _s15DefaultDelegateCMa, &unk_100087240);
  *v1 = v0;
  v1[1] = sub_10002EFC8;
  v4 = *(v0 + 16);

  return DatabaseConfiguration.configure<A, B>(isolatedTo:body:)(v0 + 40, v4, &unk_1000869E0, 0, v2, &type metadata for Bool, v3);
}

uint64_t sub_10002EFC8()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_10002F110;
  }

  else
  {
    v4 = sub_10002F0F4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10002F12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F19C(uint64_t a1)
{
  v2 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CED0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002F26C()
{
  sub_10000CED0(&qword_1000AB428, &qword_100086650);
  UnsafeMutablePointer.deinitialize(count:)();
  sub_10000CED0(&qword_1000AB700, &qword_100086A18);
  UnsafeMutablePointer.deinitialize(count:)();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002F2E4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100031A80(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100031A80(&qword_1000AB730, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100030598(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10002F5C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventCategory();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100031A80(&qword_1000AB718, &type metadata accessor for EventCategory, &protocol conformance descriptor for EventCategory);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100031A80(&qword_1000AB720, &type metadata accessor for EventCategory, &protocol conformance descriptor for EventCategory);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100030860(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10002F8A4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration.TargetCloudKitZone();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100031A80(&qword_1000AB740, &type metadata accessor for Configuration.TargetCloudKitZone, &protocol conformance descriptor for Configuration.TargetCloudKitZone);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100031A80(&qword_1000AC340, &type metadata accessor for Configuration.TargetCloudKitZone, &protocol conformance descriptor for Configuration.TargetCloudKitZone);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100030B28(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10002FB84(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000CED0(&qword_1000AB738, &qword_100086A38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100031A80(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_10002FEE0(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for EventCategory();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000CED0(&qword_1000AB728, &qword_100086A30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100031A80(&qword_1000AB718, &type metadata accessor for EventCategory, &protocol conformance descriptor for EventCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_10003023C(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Configuration.TargetCloudKitZone();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000CED0(&qword_1000AB748, &qword_100086A40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100031A80(&qword_1000AB740, &type metadata accessor for Configuration.TargetCloudKitZone, &protocol conformance descriptor for Configuration.TargetCloudKitZone);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100030598(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002FB84(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100030DF0(&type metadata accessor for UUID, &qword_1000AB738, &qword_100086A38);
      goto LABEL_12;
    }

    sub_100031028(v10 + 1);
  }

  v12 = *v3;
  sub_100031A80(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100031A80(&qword_1000AB730, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100030860(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for EventCategory();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002FEE0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100030DF0(&type metadata accessor for EventCategory, &qword_1000AB728, &qword_100086A30);
      goto LABEL_12;
    }

    sub_100031344(v10 + 1);
  }

  v12 = *v3;
  sub_100031A80(&qword_1000AB718, &type metadata accessor for EventCategory, &protocol conformance descriptor for EventCategory);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100031A80(&qword_1000AB720, &type metadata accessor for EventCategory, &protocol conformance descriptor for EventCategory);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100030B28(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Configuration.TargetCloudKitZone();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10003023C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100030DF0(&type metadata accessor for Configuration.TargetCloudKitZone, &qword_1000AB748, &qword_100086A40);
      goto LABEL_12;
    }

    sub_100031660(v10 + 1);
  }

  v12 = *v3;
  sub_100031A80(&qword_1000AB740, &type metadata accessor for Configuration.TargetCloudKitZone, &protocol conformance descriptor for Configuration.TargetCloudKitZone);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100031A80(&qword_1000AC340, &type metadata accessor for Configuration.TargetCloudKitZone, &protocol conformance descriptor for Configuration.TargetCloudKitZone);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100030DF0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_10000CED0(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_100031028(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000CED0(&qword_1000AB738, &qword_100086A38);
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100031A80(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100031344(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for EventCategory();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000CED0(&qword_1000AB728, &qword_100086A30);
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100031A80(&qword_1000AB718, &type metadata accessor for EventCategory, &protocol conformance descriptor for EventCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100031660(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Configuration.TargetCloudKitZone();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000CED0(&qword_1000AB748, &qword_100086A40);
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100031A80(&qword_1000AB740, &type metadata accessor for Configuration.TargetCloudKitZone, &protocol conformance descriptor for Configuration.TargetCloudKitZone);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10003198C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000D130;

  return sub_10002E880(a1, a2, v2);
}

uint64_t sub_100031A38(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003988(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100031A80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100031AD8()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsManager.submitLogEvent(_:error:)();
  sub_100033660();
  static LoggedObject.logger.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_7;
  }

  v8 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v26 = v24;
  *v8 = 136446210;
  v9 = sub_10003240C();
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v19 = v8;
  v20 = v7;
  v21 = v2;
  v22 = v1;
  v11 = sub_100032ABC(v10, 0);
  v23 = sub_100033338(&v25, v11 + 4, v10, v9);
  v12 = v25;

  sub_1000123C4(v12);
  if (v23 == v10)
  {
    v2 = v21;
    v1 = v22;
    LOBYTE(v7) = v20;
    v8 = v19;
LABEL_6:
    v25 = v11;
    sub_100011900(&v25);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_100035120(v13, v15, &v26);

    *(v8 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Submitted EventUploadSubtaskLogEvent: %{public}s", v8, 0xCu);
    sub_10000D330(v24);

LABEL_7:

    return (*(v2 + 8))(v4, v1);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100031DC0(uint64_t a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsManager.submitLogEvent(_:error:)();
  sub_100033660();
  static LoggedObject.logger.getter();
  v6 = v1;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v7, v8))
  {
    goto LABEL_7;
  }

  v9 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v31 = v29;
  *v9 = 136446466;
  v10 = sub_10003240C();
  v11 = *(v10 + 16);
  if (!v11)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v22 = v8;
  v23 = v7;
  v24 = v5;
  v25 = v3;
  v26 = v2;
  v12 = sub_100032ABC(v11, 0);
  v27 = sub_100033338(&v30, v12 + 4, v11, v10);
  v13 = v30;

  sub_1000123C4(v13);
  if (v27 == v11)
  {
    v3 = v25;
    v2 = v26;
    v7 = v23;
    v5 = v24;
    LOBYTE(v8) = v22;
LABEL_6:
    v30 = v12;
    sub_100011900(&v30);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v14 = Array.description.getter();
    v16 = v15;

    v17 = sub_100035120(v14, v16, &v31);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    v19 = v28;
    *v28 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Submitted EventUploadSubtaskLogEvent: %{public}s, with error: %{public}@", v9, 0x16u);
    sub_10000F32C(v19);

    sub_10000D330(v29);

LABEL_7:

    return (*(v3 + 8))(v5, v2);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100032108(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "localDatabaseWrite";
  if (v2 == 1)
  {
    v4 = "localDatabaseWrite";
  }

  else
  {
    v4 = "cloudDatabaseUpload";
  }

  if (*a1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = "WFTq/xvyNUI=";
  }

  if (*a2 != 1)
  {
    v3 = "cloudDatabaseUpload";
  }

  if (*a2)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = "WFTq/xvyNUI=";
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000321D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100032268(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000322E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100032378@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100033614(*a1);
  *a2 = result;
  return result;
}

void sub_1000323A8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = "localDatabaseWrite";
  if (*v1 != 1)
  {
    v3 = "cloudDatabaseUpload";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000012;
    v4 = "WFTq/xvyNUI=";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_10003240C()
{
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100086A80;
  *(inited + 32) = 0x546B736174627573;
  *(inited + 40) = 0xEB00000000657079;
  v2 = v0[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType];
  v3 = inited;
  v4 = objc_allocWithZone(NSString);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  *(v3 + 48) = v6;
  *(v3 + 56) = 0x726F6365526D756ELL;
  *(v3 + 64) = 0xEA00000000007364;
  *(v3 + 72) = [objc_allocWithZone(NSNumber) initWithInteger:*&v0[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords]];
  strcpy((v3 + 80), "numLocalWrites");
  *(v3 + 95) = -18;
  if (v2)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v7 & 1;
  }

  else
  {

    v8 = 1;
  }

  *(v3 + 96) = [objc_allocWithZone(NSNumber) initWithInteger:v8];
  *(v3 + 104) = 0x64756F6C436D756ELL;
  *(v3 + 112) = 0xEF7364616F6C7055;
  if (v2 == 2)
  {
    v9 = "cloudDatabaseUpload";
  }

  else
  {
    v9 = "localDatabaseWrite";
    if (v2 != 1)
    {
      goto LABEL_10;
    }
  }

  if (0x80000001000880F0 == (v9 | 0x8000000000000000))
  {

    v10 = 1;
    goto LABEL_11;
  }

LABEL_10:
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v10 = v11 & 1;
LABEL_11:
  *(v3 + 120) = [objc_allocWithZone(NSNumber) initWithInteger:v10];
  *(v3 + 128) = 0x6C61636F4C6D756ELL;
  *(v3 + 136) = 0xEF736574656C6544;
  if (v2)
  {
    if (v2 == 1)
    {
      v12 = 0x80000001000880F0;
    }

    else
    {
      v12 = 0x8000000100088110;
    }

    v13 = &_s13HomeKitEvents11EventRecordV8DataTypeO04fakeD0yA2EmFWC_ptr;
    p_name = &XPCServer.Listener.name;
    if (0x8000000100088110 == v12)
    {

      v15 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v13 = &_s13HomeKitEvents11EventRecordV8DataTypeO04fakeD0yA2EmFWC_ptr;
    p_name = (&XPCServer.Listener + 24);
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v15 = v16 & 1;
LABEL_19:
  *(v3 + 144) = [objc_allocWithZone(v13[89]) p_name[347]];
  *(v3 + 152) = 0xD000000000000014;
  *(v3 + 160) = 0x8000000100088B40;
  *(v3 + 168) = [objc_allocWithZone(v13[89]) initWithBool:v0[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData]];
  v17 = sub_1000806CC(v3);
  swift_setDeallocating();
  sub_10000CED0(&qword_1000AB3B0, &qword_100086230);
  swift_arrayDestroy();
  if ([v0 durationMilliseconds] >= 1)
  {
    v18 = [objc_allocWithZone(v13[89]) p_name[347]];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v18, 0xD000000000000014, 0x80000001000892C0, isUniquelyReferenced_nonNull_native);
  }

  return v17;
}

unint64_t sub_100032A00()
{
  result = qword_1000AB798;
  if (!qword_1000AB798)
  {
    sub_100003988(&qword_1000AB7A0, qword_100086AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB798);
  }

  return result;
}

unint64_t sub_100032A68()
{
  result = qword_1000AB7A8;
  if (!qword_1000AB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB7A8);
  }

  return result;
}

void *sub_100032ABC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000CED0(&qword_1000AB7C8, &qword_100086BF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_100032B4C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000CED0(&qword_1000AADA0, &qword_100085590);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_100032BD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000CED0(&qword_1000AB7C8, &qword_100086BF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100032D1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&qword_1000AB7F8, &qword_100086C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100032EA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000CED0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100033080(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&qword_1000AADB8, &qword_1000855A0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10003318C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&unk_1000AB7E0, &unk_100086C00);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_100033298(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100033324(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_100033338(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1000334AC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100033614(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A1BE0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100033660()
{
  result = qword_1000AB7B0;
  if (!qword_1000AB7B0)
  {
    type metadata accessor for EventUploadSubtaskLogEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB7B0);
  }

  return result;
}

uint64_t sub_1000336B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000D130;

  return sub_100033750(a3);
}

uint64_t sub_100033750(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v2[24] = *v1;
  v3 = sub_10000CED0(&qword_1000AB800, &qword_100086C38);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v5 = type metadata accessor for DigestRecord.Encoding();
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();
  type metadata accessor for DigestRecord.Metadata();
  v2[36] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();
  v7 = type metadata accessor for DigestRecord();
  v2[40] = v7;
  v2[41] = *(v7 - 8);
  v2[42] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v2[43] = v8;
  v2[44] = *(v8 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[47] = v9;
  v2[48] = *(v9 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  sub_10000CED0(&qword_1000AB6D0, &qword_1000869F0);
  v2[52] = swift_task_alloc();
  v10 = _s15DefaultDelegateC14DigestMetadataVMa(0);
  v2[53] = v10;
  v2[54] = *(v10 - 8);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();

  return _swift_task_switch(sub_100033B74, v1, 0);
}

uint64_t sub_100033B74()
{
  v60 = v0;
  static Task<>.checkCancellation()();
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 184);
  v5 = OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_digestMetadata;
  swift_beginAccess();
  sub_100034FD8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000D620(*(v0 + 416), &qword_1000AB6D0, &qword_1000869F0);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v7 = *(v0 + 408);
    v57 = *(v0 + 400);
    v8 = *(v0 + 384);
    v9 = *(v0 + 368);
    v47 = *(v0 + 376);
    v10 = *(v0 + 352);
    v49 = *(v0 + 392);
    v45 = *(v0 + 344);
    v54 = *(v0 + 312);
    v46 = *(v0 + 304);
    v48 = *(v0 + 296);
    v50 = *(v0 + 272);
    v51 = *(v0 + 264);
    v52 = *(v0 + 280);
    v11 = *(v0 + 184);
    sub_100035048(*(v0 + 416), *(v0 + 448));
    v12 = v11 + OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration;
    v44 = _s15DefaultDelegateC13ConfigurationVMa(0);
    v13 = v44[5];
    DateInterval.start.getter();
    swift_bridgeObjectRetain_n();
    static DigestRecord.recordIdentifier(homeIdentifier:date:categories:)();

    (*(v10 + 8))(v9, v45);
    v14 = *(v8 + 16);
    v14(v57, v7, v47);
    (*(v46 + 16))(v54, v12 + v44[7], v48);
    v14(v49, v12 + v13, v47);
    DateInterval.start.getter();
    DateInterval.end.getter();
    DigestRecord.Metadata.init(home:start:end:categories:count:)();
    (*(v50 + 16))(v52, v12 + v44[11], v51);
    DigestRecord.init(identifier:fileURL:metadata:encoding:tags:)();
    type metadata accessor for Configuration();
    v15 = static Configuration.zoneName(forHomeIdentifier:target:)();
    v17 = v16;
    sub_10000D544(0, &qword_1000AC3A0, CKRecordZoneID_ptr);
    v18._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18._object = v19;
    v20._countAndFlagsBits = v15;
    v20._object = v17;
    v21.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v20, v18).super.isa;
    *(v0 + 456) = v21;
    isa = DigestRecord.toCKRecord(zoneID:)(v21).super.isa;
    *(v0 + 464) = isa;
    v23 = [(objc_class *)isa recordID];
    v24 = [v23 recordName];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *(v0 + 472) = v25;
    *(v0 + 480) = v27;
    *(v0 + 488) = sub_10003572C(&qword_1000AAFE0, _s15DefaultDelegateCMa, &unk_100087200);
    *(v0 + 496) = sub_10003572C(&qword_1000AAFE8, _s15DefaultDelegateCMa, &unk_100087240);
    static LoggedObject<>.logger.getter();

    v28 = isa;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 256);
    v34 = *(v0 + 224);
    v33 = *(v0 + 232);
    v58 = v28;
    if (v31)
    {
      v55 = *(v0 + 224);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v53 = v32;
      v37 = swift_slowAlloc();
      v59 = v37;
      *v35 = 136446466;
      *(v35 + 4) = sub_100035120(v25, v27, &v59);
      *(v35 + 12) = 2112;
      *(v35 + 14) = v28;
      *v36 = v28;
      v38 = v28;
      _os_log_impl(&_mh_execute_header, v29, v30, "Saving digest %{public}s: %@", v35, 0x16u);
      sub_10000D620(v36, &unk_1000AB7D0, &qword_100085510);

      sub_10000D330(v37);

      v39 = *(v33 + 8);
      v39(v53, v55);
    }

    else
    {

      v39 = *(v33 + 8);
      v39(v32, v34);
    }

    *(v0 + 504) = v39;
    v40 = *(v0 + 208);
    v41 = *(v0 + 216);
    v42 = *(v0 + 200);
    v56 = *(v0 + 176);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_100034394;
    swift_continuation_init();
    *(v0 + 136) = v42;
    v43 = sub_10000CF2C((v0 + 112));
    sub_10000D544(0, &qword_1000AB808, CKRecord_ptr);
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    CheckedContinuation.init(continuation:function:)();
    (*(v40 + 32))(v43, v41, v42);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100034C2C;
    *(v0 + 104) = &unk_1000A2B10;
    [v56 saveRecord:v58 completionHandler:v0 + 80];
    (*(v40 + 8))(v43, v42);

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100034394()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 512) = v2;
  v3 = *(v1 + 184);
  if (v2)
  {
    v4 = sub_1000348C0;
  }

  else
  {
    v4 = sub_1000344B4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000344B4()
{
  v42 = v0;
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);

  static LoggedObject<>.logger.getter();
  sub_1000356C8(v1, v2);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  log = v3;
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 504);
  v7 = *(v0 + 480);
  if (v5)
  {
    v8 = *(v0 + 472);
    v9 = *(v0 + 440);
    v37 = *(v0 + 408);
    v39 = *(v0 + 448);
    v10 = *(v0 + 384);
    v11 = *(v0 + 328);
    v33 = *(v0 + 336);
    v35 = *(v0 + 376);
    v30 = *(v0 + 464);
    v31 = *(v0 + 320);
    v27 = *(v0 + 456);
    v28 = *(v0 + 224);
    v29 = *(v0 + 248);
    v12 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v12 = 136446466;
    v13 = sub_100035120(v8, v7, &v41);

    *(v12 + 4) = v13;
    *(v12 + 12) = 2082;
    type metadata accessor for DateInterval();
    sub_10003572C(&qword_1000AB6E0, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_1000350C4(v9);
    v17 = sub_100035120(v14, v16, &v41);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, log, v4, "Successfully saved digest %{public}s covering %{public}s", v12, 0x16u);
    swift_arrayDestroy();

    v6(v29, v28);
    (*(v11 + 8))(v33, v31);
    (*(v10 + 8))(v37, v35);
  }

  else
  {
    v18 = *(v0 + 464);
    v19 = *(v0 + 440);
    v38 = *(v0 + 408);
    v39 = *(v0 + 448);
    v20 = *(v0 + 384);
    v34 = *(v0 + 336);
    v36 = *(v0 + 376);
    v21 = *(v0 + 504);
    v22 = *(v0 + 328);
    v32 = *(v0 + 320);
    v23 = *(v0 + 248);
    v24 = *(v0 + 224);

    sub_1000350C4(v19);
    v21(v23, v24);
    (*(v22 + 8))(v34, v32);
    (*(v20 + 8))(v38, v36);
  }

  sub_1000350C4(v39);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1000348C0(uint64_t a1)
{
  v29 = v1;
  swift_willThrow();
  static LoggedObject<>.logger.getter();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[59];
    v5 = v1[60];
    v25 = v1[30];
    v26 = v1[63];
    v24 = v1[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v6 = 136446466;
    v9 = sub_100035120(v4, v5, &v28);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to save digest %{public}s: %@)", v6, 0x16u);
    sub_10000D620(v7, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v8);

    v26(v25, v24);
  }

  else
  {
    v11 = v1[63];
    v12 = v1[30];
    v13 = v1[28];

    v11(v12, v13);
  }

  v15 = v1[57];
  v14 = v1[58];
  v27 = v1[56];
  v16 = v1[51];
  v17 = v1[47];
  v18 = v1[48];
  v19 = v1[41];
  v20 = v1[42];
  v21 = v1[40];
  swift_willThrow();

  (*(v19 + 8))(v20, v21);
  (*(v18 + 8))(v16, v17);
  sub_1000350C4(v27);

  v22 = v1[1];

  return v22();
}

void sub_100034C2C(uint64_t a1, void *a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_10000CED0(&qword_1000AB800, &qword_100086C38);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_10000CED0(&qword_1000AB800, &qword_100086C38);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100034CDC()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_100034CFC, v2, 0);
}

uint64_t sub_100034CFC()
{
  static Task<>.checkCancellation()();
  _s15DefaultDelegateC13ConfigurationVMa(0);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = _s15DefaultDelegateCMa(0);
  v3 = sub_10003572C(&qword_1000AAFE8, _s15DefaultDelegateCMa, &unk_100087240);
  *v1 = v0;
  v1[1] = sub_100034E7C;
  v4 = *(v0 + 16);

  return DatabaseConfiguration.configure<A, B>(isolatedTo:body:)(v3, v4, &unk_100086C28, 0, v2, &type metadata for () + 8, v3);
}

uint64_t sub_100034E7C()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_100034FC0;
  }

  else
  {
    v4 = sub_100034FA8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100034FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB6D0, &qword_1000869F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035048(uint64_t a1, uint64_t a2)
{
  v4 = _s15DefaultDelegateC14DigestMetadataVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000350C4(uint64_t a1)
{
  v2 = _s15DefaultDelegateC14DigestMetadataVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100035120(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000351EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000CFA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000D330(v11);
  return v7;
}

unint64_t sub_1000351EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000352F8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1000352F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100035344(a1, a2);
  sub_100035474(&off_1000A1AD8);
  return v3;
}

void *sub_100035344(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100035560(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100035560(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100035474(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000355D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100035560(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000CED0(&qword_1000AB810, &qword_100086C40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000355D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000CED0(&qword_1000AB810, &qword_100086C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000356C8(uint64_t a1, uint64_t a2)
{
  v4 = _s15DefaultDelegateC14DigestMetadataVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003572C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100035774()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1 && (static String._unconditionallyBridgeFromObjectiveC(_:)(), v1, String.utf8CString.getter(), v2 = _set_user_dir_suffix(), , v2))
  {
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000358C4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100035984, 0, 0);
}

uint64_t sub_100035984()
{
  v1 = v0[8];
  if (v0[9])
  {
    sub_10000D224(v1, v1[3]);

    v3 = sub_1000195BC(v2);
    v0[13] = v3;

    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_100035AC4;

    return sub_100077E7C(v3);
  }

  else
  {
    sub_10000D224(v1, v1[3]);
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_100035D64;

    return sub_10007257C();
  }
}

uint64_t sub_100035AC4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100035C34, 0, 0);
  }
}

uint64_t sub_100035C34()
{
  v1 = v0[3];
  type metadata accessor for XPCServer();
  sub_10000E874();
  static LoggedObject.logger.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done clearing %ld event(s) from the local database", v4, 0xCu);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100035D64(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100035EB8, 0, 0);
  }
}

uint64_t sub_100035EB8()
{
  v1 = v0[6];
  type metadata accessor for XPCServer();
  sub_10000E874();
  static LoggedObject.logger.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done clearing %ld event(s) from the local database", v4, 0xCu);
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

id sub_100035FE8()
{
  v0 = type metadata accessor for CocoaError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v12 = 0;
  v8 = [v4 removeItemAtURL:v6 error:&v12];

  if (v8)
  {
    return v12;
  }

  v10 = v12;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  static CocoaError.fileNoSuchFile.getter();
  sub_100036300();
  v11 = static _ErrorCodeProtocol.~= infix(_:_:)();

  result = (*(v1 + 8))(v3, v0);
  if (v11)
  {
  }

  return result;
}

id sub_1000361B4(char a1)
{
  v3 = type metadata accessor for CocoaError.Code();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return sub_100035FE8();
  }

  result = Data.write(to:options:)();
  if (v1)
  {
    swift_errorRetain();
    static CocoaError.fileWriteFileExists.getter();
    sub_100036300();
    v8 = static _ErrorCodeProtocol.~= infix(_:_:)();

    result = (*(v4 + 8))(v6, v3);
    if (v8)
    {
    }
  }

  return result;
}

unint64_t sub_100036300()
{
  result = qword_1000AAD58;
  if (!qword_1000AAD58)
  {
    type metadata accessor for CocoaError.Code();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAD58);
  }

  return result;
}

uint64_t sub_10003636C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000363EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FileBackedBooleanFlag(uint64_t a1)
{
  result = qword_1000AB870;
  if (!qword_1000AB870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000364A8(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100036514(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for PendingEventData(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_10003E6F8(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for EventRecord.DecodedEvent() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_10003E6F8((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_10003FB74(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}