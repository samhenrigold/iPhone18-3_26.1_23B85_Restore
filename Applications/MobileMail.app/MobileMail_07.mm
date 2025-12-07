uint64_t sub_100285EC0()
{
  sub_10025C9B0(&unk_1006D7160, qword_100500870);
  sub_100288240();
  return Sequence.compactMap<A>(_:)();
}

uint64_t sub_100285F68(uint64_t a1)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_100286010()
{
  v2 = qword_1006DCBB0;
  if (!qword_1006DCBB0)
  {
    sub_10025CAA4(&unk_1006D7270, &unk_1004FF0E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100286098(uint64_t a1)
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100286140(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1002862AC()
{
  v0 = sub_10025C9B0(&qword_1006D7258, &unk_10050CC90);
  v8 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v9 = &v3 - v8;
  IntentFile.type.getter();
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  if ((*(v11 + 48))(v9, 1) == 1)
  {
    sub_100286098(v9);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v4 = UTType.preferredMIMEType.getter();
    v5 = v1;
    (*(v11 + 8))(v9, v10);
    v6 = v4;
    v7 = v5;
  }

  v3 = v13;
  v13[0] = v6;
  v13[1] = v7;
  sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
  return String.init<A>(describing:)();
}

uint64_t sub_10028643C()
{
  type metadata accessor for IntentFile();

  return sub_1002862AC();
}

uint64_t sub_1002864A0()
{
  type metadata accessor for IntentFile();

  return sub_100286230();
}

uint64_t sub_100286504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[14] = a3;
  v5[13] = a2;
  v5[12] = a1;
  v5[8] = v5;
  v5[9] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[10] = 0;
  v5[11] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[9] = a1;
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[10] = v4;
  return _swift_task_switch(sub_100286590, 0);
}

uint64_t sub_100286590()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[13];
  v19 = v3;
  v0[8] = v0;
  sub_1002882C8(v3, v2, v1);
  if (v19)
  {
    v16 = *(v18 + 104);
    v15 = *(v18 + 112);
    v14 = *(v18 + 120);
    *(v18 + 40) = v16;
    *(v18 + 48) = v15;
    *(v18 + 56) = v14;
    sub_100288380();
    v4 = sub_10025DA38(v16, v15, v14);
    v6 = sub_100286980(v4, v5);
    v17 = v6;
    if (!v6)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    _objc_retain(v6);
    *(v18 + 88) = v17;
    _objc_release(v16);

    v13 = v17;
  }

  else
  {
    v12 = [objc_opt_self() defaultMailAccountForDelivery];
    if (!v12)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    _objc_retain(v12);
    *(v18 + 88) = v12;
    v13 = v12;
  }

  v10 = objc_opt_self();
  sub_10028831C();
  v11 = sub_10028F31C(v13);
  if (!v11)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v9 = [v10 legacyMessageWithMessage:*(v18 + 96) mailboxUid:?];
  _objc_release(v11);
  _objc_release(*(v18 + 88));
  v7 = *(*(v18 + 64) + 8);

  return v7(v9);
}

id sub_100286980(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() accountWithUniqueId:v5];
  _objc_release(v5);
  return v3;
}

uint64_t sub_100286A40(uint64_t a1)
{
  v5[2] = 0;
  v5[3] = a1;
  v3 = [objc_opt_self() sharedApplication];
  v2 = [v3 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v3);
  v5[0] = v4;
  sub_10025C9B0(&unk_1006D72F0, &unk_1005001F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880(v5);
  _objc_release(v2);
  return v5[1];
}

uint64_t sub_100286B70(id *a1)
{
  v3 = *a1;
  _objc_retain(*a1);
  if (swift_dynamicCastObjCProtocolConditional())
  {
    swift_unknownObjectRelease();
    v2 = 1;
  }

  else
  {
    _objc_release(v3);
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_100286CA8()
{
  v79 = 0;
  v78 = 0;
  v77[0] = 0;
  v77[1] = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v53 = 0;
  v48 = type metadata accessor for IntentPerson.Handle.Value();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v52 = (&v13 - v51);
  v69 = type metadata accessor for IntentPerson.Handle();
  v66 = *(v69 - 8);
  v67 = v69 - 8;
  v54 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v55 = &v13 - v54;
  v79 = &v13 - v54;
  v56 = type metadata accessor for IntentPerson.Name();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v60 = &v13 - v59;
  v1 = sub_10025C9B0(&unk_1006D7300, &qword_1004FF110);
  v61 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v62 = &v13 - v61;
  v63 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v61);
  v68 = &v13 - v63;
  v3 = sub_10025C9B0(&unk_1006DCC00, &qword_1004FF118);
  v64 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v65 = (&v13 - v64);
  v78 = v0;
  IntentPerson.handle.getter();
  v70 = *(v66 + 48);
  v71 = v66 + 48;
  if (v70(v68, 1, v69) == 1)
  {
    sub_100288550(v68);
    (*(v49 + 56))(v65, 1, 1, v48);
  }

  else
  {
    IntentPerson.Handle.value.getter();
    (*(v66 + 8))(v68, v69);
    (*(v49 + 56))(v65, 0, 1, v48);
  }

  if ((*(v49 + 48))(v65, 1, v48) == 1)
  {
    sub_1002885F8(v65);
  }

  else
  {
    if ((*(v49 + 88))(v65, v48) == enum case for IntentPerson.Handle.Value.emailAddress(_:))
    {
      (*(v49 + 96))(v65, v48);
      v41 = *v65;
      v42 = v65[1];
      v72 = v41;
      v73 = v42;

      v45 = String._bridgeToObjectiveC()();

      IntentPerson.name.getter();
      IntentPerson.Name.displayString.getter();
      v43 = v4;
      v44 = String._bridgeToObjectiveC()();
      (*(v57 + 8))(v60, v56);

      v46 = v44;
      location = 0;
      objc_storeStrong(&location, v45);
      v83 = 0;
      objc_storeStrong(&v83, v46);
      v5 = [ECEmailAddressComponents alloc];
      v82 = [v5 initWithString:location];
      [v82 setDisplayName:v83];
      v47 = [v82 emailAddressValue];
      v80 = 0;
      if (v47)
      {
        v40 = v47;
      }

      else
      {
        v39 = [v82 stringValue];
        v81 = v39;
        v80 = 1;
        if (v39)
        {
          v38 = v39;
        }

        else
        {
          v38 = location;
        }

        v40 = v38;
      }

      v85 = _objc_retain(v40);
      if (v80)
      {
        _objc_release(v81);
      }

      _objc_release(v47);
      v30 = 0;
      objc_storeStrong(&v82, 0);
      objc_storeStrong(&v83, v30);
      objc_storeStrong(&location, v30);
      v31 = v85;
      v6 = v85;
      v32 = v31;
      _objc_release(v44);
      _objc_release(v45);
      swift_getObjectType();
      v33 = [v32 stringValue];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v7;
      swift_unknownObjectRelease();
      _objc_release(v33);

      v36 = v34;
      v37 = v35;
      return v36;
    }

    (*(v49 + 8))(v65, v48);
  }

  v76 = IntentPerson.aliases.getter();
  v29 = sub_10025C9B0(&qword_1006D7310, &qword_1004FF120);
  sub_1002886A0();
  Collection<>.makeIterator()();
  while (1)
  {
    sub_10025C9B0(&unk_1006D7320, &qword_1004FF128);
    IndexingIterator.next()();
    if (v70(v62, 1, v69) == 1)
    {
      sub_100264880(v77);
      v36 = 0;
      v37 = 0;
      return v36;
    }

    (*(v66 + 32))(v55, v62, v69);
    IntentPerson.Handle.value.getter();
    if ((*(v49 + 88))(v52, v48) == enum case for IntentPerson.Handle.Value.emailAddress(_:))
    {
      break;
    }

    (*(v49 + 8))(v52, v48);
    (*(v66 + 8))(v55, v69);
  }

  (*(v49 + 96))(v52, v48);
  v22 = *v52;
  v23 = v52[1];
  v74 = v22;
  v75 = v23;

  v26 = String._bridgeToObjectiveC()();

  IntentPerson.name.getter();
  IntentPerson.Name.displayString.getter();
  v24 = v8;
  v25 = String._bridgeToObjectiveC()();
  (*(v57 + 8))(v60, v56);

  v27 = v25;
  v90 = 0;
  objc_storeStrong(&v90, v26);
  v89 = 0;
  objc_storeStrong(&v89, v27);
  v9 = [ECEmailAddressComponents alloc];
  v88 = [v9 initWithString:v90];
  [v88 setDisplayName:v89];
  v28 = [v88 emailAddressValue];
  v86 = 0;
  if (v28)
  {
    v21 = v28;
  }

  else
  {
    v20 = [v88 stringValue];
    v87 = v20;
    v86 = 1;
    if (v20)
    {
      v19 = v20;
    }

    else
    {
      v19 = v90;
    }

    v21 = v19;
  }

  v91 = _objc_retain(v21);
  if (v86)
  {
    _objc_release(v87);
  }

  _objc_release(v28);
  v13 = 0;
  objc_storeStrong(&v88, 0);
  objc_storeStrong(&v89, v13);
  objc_storeStrong(&v90, v13);
  v14 = v91;
  v10 = v91;
  v15 = v14;
  _objc_release(v25);
  _objc_release(v26);
  swift_getObjectType();
  v16 = [v15 stringValue];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v11;
  swift_unknownObjectRelease();
  _objc_release(v16);

  (*(v66 + 8))(v55, v69);
  sub_100264880(v77);
  v36 = v17;
  v37 = v18;
  return v36;
}

uint64_t sub_100287B10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100286CA8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_100287B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_100287C54;

  return sub_100286504(a1, a2, a3, a4);
}

uint64_t sub_100287C54(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

id sub_100287F4C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) == 0xF000000000000000)
  {
    v5 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100288010(a1, a2);
    v5 = isa;
  }

  v3 = [v8 initWithData:?];
  _objc_release(v5);
  return v3;
}

uint64_t sub_100288010(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_10028808C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100286288(v2);
}

unint64_t sub_1002880F0()
{
  v2 = qword_1006D7298;
  if (!qword_1006D7298)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7298);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100288154()
{
  v2 = qword_1006D72A0;
  if (!qword_1006D72A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D72A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1002881B8()
{
  v2 = qword_1006D72B0;
  if (!qword_1006D72B0)
  {
    sub_10025CAA4(&qword_1006D72A8, &qword_1004FF0F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D72B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100288240()
{
  v2 = qword_1006D72C8;
  if (!qword_1006D72C8)
  {
    sub_10025CAA4(&unk_1006D7160, qword_100500870);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D72C8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1002882C8(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    _objc_retain(result);
  }

  return result;
}

unint64_t sub_10028831C()
{
  v2 = qword_1006D72D0;
  if (!qword_1006D72D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D72D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100288380()
{
  v2 = qword_1006D72D8;
  if (!qword_1006D72D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D72D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1002883E4()
{
  v2 = qword_1006D72E0;
  if (!qword_1006D72E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D72E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100288448()
{
  v2 = qword_1006D7CF0;
  if (!qword_1006D7CF0)
  {
    sub_1002883E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7CF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002884C8()
{
  v2 = qword_1006D7D00;
  if (!qword_1006D7D00)
  {
    sub_10025CAA4(&unk_1006D72F0, &unk_1005001F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7D00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100288550(uint64_t a1)
{
  v3 = type metadata accessor for IntentPerson.Handle();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1002885F8(uint64_t a1)
{
  v3 = type metadata accessor for IntentPerson.Handle.Value();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1002886A0()
{
  v2 = qword_1006D7318;
  if (!qword_1006D7318)
  {
    sub_10025CAA4(&qword_1006D7310, &qword_1004FF120);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100288728()
{
  v2 = qword_1006D7390;
  if (!qword_1006D7390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7390);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002887A0()
{
  v2 = qword_1006D7330;
  if (!qword_1006D7330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100288818()
{
  v2 = qword_1006DBA90;
  if (!qword_1006DBA90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100288890@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v31 = 0;
  v30 = sub_100288F84;
  v1 = sub_10025C9B0(&qword_1006D7350, &qword_1004FF178);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v34 = &v9 - v10;
  v25 = sub_10025C9B0(&qword_1006D7358, &qword_1004FF180);
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v11 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v27 = &v9 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v11);
  v22 = &v9 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v12);
  v26 = &v9 - v13;
  v33 = sub_100288CC8();
  v32 = &unk_1006587E0;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send ", 5uLL, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D7368, &qword_1004FF1B0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v18 = 4;
  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v28 & 1);
  v16 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  v17 = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D7370, &qword_1004FF1E0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" as ", v18, v28 & 1);
  v19 = v6._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);

  v20 = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D7378, &unk_1004FF210);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v28 & 1);
  v21 = v7._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);

  (*(v23 + 16))(v22, v26, v25);
  (*(v23 + 32))(v27, v22, v25);
  (*(v23 + 8))(v26, v25);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v28 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:_:)();
}

unint64_t sub_100288CC8()
{
  v2 = qword_1006D7360;
  if (!qword_1006D7360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7360);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100288D44()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

void *sub_100288D9C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_10028B3B4(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288D44();
  result = __dst;
  *a1 = v2;
  sub_10028E32C(__dst);
  return result;
}

uint64_t sub_100288E04()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

void *sub_100288E5C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_10028B3B4(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288E04();
  result = __dst;
  *a1 = v2;
  sub_10028E32C(__dst);
  return result;
}

uint64_t sub_100288EC4()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

void *sub_100288F1C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_10028B3B4(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288EC4();
  result = __dst;
  *a1 = v2;
  sub_10028E32C(__dst);
  return result;
}

uint64_t sub_100288F84()
{
  swift_getKeyPath();
  sub_100288CC8();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v4 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v5 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10025C9B0(&unk_1006D74D0, &qword_1004FF5C8);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100289148()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

void *sub_1002891A0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_10028B3B4(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289148();
  result = __dst;
  *a1 = v2;
  sub_10028E32C(__dst);
  return result;
}

uint64_t sub_100289208()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

void *sub_100289260@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_10028B3B4(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289208();
  result = __dst;
  *a1 = v2;
  sub_10028E32C(__dst);
  return result;
}

uint64_t sub_1002892C8()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

void *sub_100289320@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_10028B3B4(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002892C8();
  result = __dst;
  *a1 = v2;
  sub_10028E32C(__dst);
  return result;
}

uint64_t sub_100289388()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

void *sub_1002893E0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_10028B3B4(a2, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289388();
  result = __dst;
  *a1 = v2;
  sub_10028E32C(__dst);
  return result;
}

uint64_t sub_100289454()
{

  AppDependency.wrappedValue.getter();

  return v1;
}

void sub_1002894B0(void *a1)
{

  _objc_retain(a1);
  AppDependency.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_100289534()
{

  v1 = AppDependency.projectedValue.getter();

  return v1;
}

uint64_t sub_10028958C()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1002895B8()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_100289614(uint64_t a1)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100289688()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_1002896B4()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_100289710(uint64_t a1)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100289784()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1002897B0()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10028980C(uint64_t a1)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100289880()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_1002898AC(uint64_t a1)
{

  *(v1 + 24) = a1;
}

uint64_t sub_1002898E8()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_100289950(uint64_t a1, uint64_t a2)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1002899D8()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_100289A04(uint64_t a1)
{

  *(v1 + 32) = a1;
}

uint64_t sub_100289A40()
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_100289A94(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380, &qword_100500790) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 40);

  sub_100289B6C(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100285F68(v6);
}

void *sub_100289B6C(const void *a1, void *a2)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&unk_1006D7380, &qword_100500790);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_100289C94()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_100289CC0(uint64_t a1)
{

  *(v1 + 40) = a1;
}

uint64_t sub_100289CFC()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

void *sub_100289D70(void *a1, uint64_t a2, uint64_t a3)
{

  sub_1002882C8(a1, a2, a3);
  IntentParameter.wrappedValue.setter();

  return sub_100289E1C(a1, a2, a3);
}

void *sub_100289E1C(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    _objc_release(result);
  }

  return result;
}

uint64_t sub_100289E70()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_100289E9C(uint64_t a1)
{

  *(v1 + 48) = a1;
}

uint64_t sub_100289ED8()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_100289F34(uint64_t a1)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100289FA8()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t sub_100289FD4(uint64_t a1)
{

  *(v1 + 56) = a1;
}

uint64_t sub_10028A010(uint64_t a1)
{
  v2[93] = v1;
  v2[92] = a1;
  v2[81] = v2;
  v2[82] = 0;
  v2[83] = 0;
  v2[88] = 0;
  v2[89] = 0;
  v2[90] = 0;
  v2[79] = 0;
  v2[80] = 0;
  v3 = type metadata accessor for Logger();
  v2[94] = v3;
  v2[95] = *(v3 - 8);
  v2[96] = swift_task_alloc();
  sub_10025C9B0(&unk_1006D7380, &qword_100500790);
  v2[97] = swift_task_alloc();
  v4 = type metadata accessor for Locale();
  v2[98] = v4;
  v2[99] = *(v4 - 8);
  v2[100] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D7250, &unk_1004FF0C0);
  v2[101] = swift_task_alloc();
  v2[82] = v1;
  type metadata accessor for MainActor();
  v2[102] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10028A23C, v5);
}

uint64_t sub_10028A23C()
{
  *(v0 + 648) = v0;
  v76 = sub_100289454();
  sub_10035277C();
  v72 = *(v75 + 744);
  _objc_release(v76);
  v73 = swift_allocObject();
  *(v75 + 664) = v73 + 2;
  v73[2] = 0;
  v73[3] = 0;
  v73[4] = 0;
  v73[5] = 0;
  memcpy((v75 + 160), v72, 0x40uLL);
  sub_100288728();
  v74 = sub_100286A40(&unk_1006587E0);
  if (v74)
  {
    *(v75 + 728) = &OBJC_PROTOCOL___ComposeCapable;
    v71 = swift_dynamicCastObjCProtocolConditional();
    if (v71)
    {
      v70 = v71;
    }

    else
    {
      _objc_release(v74);
      v70 = 0;
    }

    v69 = v70;
  }

  else
  {
    v69 = 0;
  }

  if (v69)
  {
    v62 = *(v75 + 808);
    __src = *(v75 + 744);
    *(v75 + 704) = v69;
    sub_10028D4AC();
    v1 = type metadata accessor for URL();
    (*(*(v1 - 8) + 56))(v62, 1);
    v64 = sub_10028B4B4(v62, 0, 0, 0);
    *(v75 + 712) = v64;
    memcpy((v75 + 288), __src, 0x40uLL);
    sub_100282548(v64);
    memcpy((v75 + 352), __src, 0x40uLL);
    sub_100286C38(v69, v64);
    v65 = [v64 attachments];
    v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(v75 + 720) = v66;
    _objc_release(v65);
    v67 = [objc_opt_self() defaultCenter];
    v68 = MFMailComposeControllerDidLaunchNotification;
    _objc_retain(MFMailComposeControllerDidLaunchNotification);
    *(v75 + 560) = 0;
    *(v75 + 568) = 0;
    *(v75 + 576) = 0;
    *(v75 + 584) = 0;
    if (*(v75 + 584))
    {
      v58 = *(v75 + 584);
      v56 = sub_10027EC3C((v75 + 560), v58);
      v57 = *(v58 - 8);
      v59 = swift_task_alloc();
      (*(v57 + 16))(v59, v56, v58);
      v60 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v57 + 8))(v59, v58);

      sub_1000160F4((v75 + 560));
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    v2 = *(v75 + 744);
    v52 = [objc_opt_self() mainQueue];
    sub_10028B3B4(v2, (v75 + 416));

    v50 = swift_allocObject();
    memcpy(v50 + 2, v2, 0x40uLL);
    v50[10] = v66;
    v50[11] = v73;
    *(v75 + 512) = sub_10028D510;
    *(v75 + 520) = v50;
    *(v75 + 480) = _NSConcreteStackBlock;
    *(v75 + 488) = 1107296256;
    *(v75 + 492) = 0;
    *(v75 + 496) = sub_10028C0DC;
    *(v75 + 504) = &unk_100658750;
    aBlock = _Block_copy((v75 + 480));

    v53 = [v67 addObserverForName:v68 object:v61 queue:v52 usingBlock:aBlock];
    _Block_release(aBlock);
    _objc_release(v52);
    swift_unknownObjectRelease();
    _objc_release(v68);
    _objc_release(v67);
    *(v75 + 552) = swift_getObjectType();
    *(v75 + 528) = v53;
    swift_beginAccess();
    sub_10028D584((v75 + 528), (v73 + 2));
    swift_endAccess();
    v54 = sub_100289454();
    v55 = sub_10035333C();
    _objc_release(v54);
    if (v55)
    {
      v49 = [v55 autosaveIdentifier];
      if (v49)
      {
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v3;
        _objc_release(v49);
        v47 = v45;
        v48 = v46;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      _objc_release(v55);
      v43 = v47;
      v44 = v48;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *(v75 + 616) = v43;
    *(v75 + 624) = v44;
    _objc_retain(v64);
    if (*(v75 + 624))
    {
      v77 = *(v75 + 616);
    }

    else
    {
      v42 = [v64 autosaveIdentifier];
      if (v42)
      {
        *&v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v40 + 1) = v4;
        _objc_release(v42);
        v41 = v40;
      }

      else
      {
        v41 = 0uLL;
      }

      v77 = v41;
      if (*(v75 + 624))
      {
        sub_100268744(v75 + 616);
      }
    }

    v38 = *(v75 + 800);
    v31 = *(v75 + 784);
    v39 = *(v75 + 776);
    v30 = *(v75 + 792);
    _objc_release(v64);
    *(v75 + 632) = v77;

    v37 = sub_1002895B8();
    v33 = sub_1002896B4();
    v34 = sub_1002897B0();
    sub_1002898E8();
    sub_100015CC0();
    v35 = Optional<A>.capitalizedIfDesirable(locale:)();
    v36 = v5;
    (*(v30 + 8))(v38, v31);

    sub_100289A40();
    v32 = sub_100289ED8();
    v6 = sub_100289CFC();
    sub_1002C97B8(v77, *(&v77 + 1), v37, v33, v34, v35, v36, v39, (v75 + 16), v32, v6, v7, v8);
    memcpy((v75 + 88), (v75 + 16), 0x48uLL);
    sub_10028D658();
    static IntentResult.result<A>(value:)();
    sub_10028D6D0((v75 + 16));

    _objc_release(v64);
    swift_unknownObjectRelease();

    v9 = *(*(v75 + 648) + 8);
  }

  else
  {
    v10 = *(v75 + 768);
    v26 = *(v75 + 752);
    v25 = *(v75 + 760);
    v11 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v25 + 16))(v10, v11, v26);
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v29 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v27))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v20 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v22 = sub_1002641E8(0, v20, v20);
      v23 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v75 + 672) = buf;
      *(v75 + 680) = v22;
      *(v75 + 688) = v23;
      sub_10026423C(0, (v75 + 672));
      sub_10026423C(0, (v75 + 672));
      *(v75 + 696) = v29;
      v24 = swift_task_alloc();
      v24[2] = v75 + 672;
      v24[3] = v75 + 680;
      v24[4] = v75 + 688;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v27, "Failed to find a scene capable of composing", buf, 2u);
      sub_10026429C(v22, 0);
      sub_10026429C(v23, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v16 = *(v75 + 768);
    v17 = *(v75 + 752);
    v18 = *(v75 + 744);
    v15 = *(v75 + 760);
    _objc_release(oslog);
    (*(v15 + 8))(v16, v17);
    sub_10028B33C();
    swift_allocError();
    v19 = v12;
    sub_10028B3B4(v18, (v75 + 224));
    *(v19 + 24) = &unk_1006587E0;
    *(v19 + 32) = sub_100288CC8();
    v13 = swift_allocObject();
    *v19 = v13;
    memcpy((v13 + 16), v18, 0x40uLL);
    *(v19 + 40) = 0;
    swift_willThrow();

    v9 = *(*(v75 + 648) + 8);
  }

  return v9();
}

unint64_t sub_10028B33C()
{
  v2 = qword_1006D73A0;
  if (!qword_1006D73A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73A0);
    return WitnessTable;
  }

  return v2;
}

void *sub_10028B3B4(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  v8 = a1[5];

  a2[5] = v8;
  v10 = a1[6];

  a2[6] = v10;
  v12 = a1[7];

  result = a2;
  a2[7] = v12;
  return result;
}

void sub_10028B50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = a4;
  v99 = a3;
  v101 = a1;
  v94 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129[1] = 0;
  v129[0] = 0;
  v120 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v95 = type metadata accessor for URL();
  v96 = *(v95 - 8);
  v97 = v96;
  __chkstk_darwin(v95 - 8);
  v98 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = (*(*(sub_10025C9B0(&qword_1006D7250, &unk_1004FF0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v101);
  v103 = &v17 - v102;
  v134 = v6;
  v133 = a2;
  v132 = v7;
  v104 = v8 + 16;
  v131 = v8 + 16;
  v105 = sub_100289454();
  v107 = sub_10035333C();
  v106 = v107;

  if (v107)
  {
    v93 = v106;
    v90 = v106;
    v91 = [v106 composeWebView];

    v92 = v91;
  }

  else
  {
    v92 = 0;
  }

  v89 = v92;
  if (v92)
  {
    v88 = v89;
    v86 = v89;
    v130 = v89;

    v128 = v99;
    v87 = sub_10025C9B0(&unk_1006D74B0, &unk_10050AFC0);
    sub_10028E3AC();
    Collection<>.makeIterator()();
    while (1)
    {
      sub_10025C9B0(&unk_1006D74C0, &qword_1004FF520);
      IndexingIterator.next()();
      if (!v127)
      {
        break;
      }

      sub_10028E434();
      if (swift_dynamicCast())
      {
        v84 = v121;
      }

      else
      {
        v84 = 0;
      }

      v83 = v84;
      if (v84)
      {
        v82 = v83;
        v80 = v83;
        v120 = v83;
        v9 = [v83 fetchLocalData];
        v81 = v9;
        if (v9)
        {
          v79 = v81;
          v74 = v81;
          v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v10;

          v77 = v75;
          v78 = v76;
        }

        else
        {
          v77 = 0;
          v78 = 0xF000000000000000;
        }

        v116 = v77;
        v117 = v78;
        v11 = v80;
        if (v117 >> 60 == 15)
        {
          v73 = [v80 fetchDataSynchronously:0 stripPrivateMetadata:0];
          if (v73)
          {
            v72 = v73;
            v67 = v73;
            v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v12;

            v70 = v68;
            v71 = v69;
          }

          else
          {
            v70 = 0;
            v71 = 0xF000000000000000;
          }

          v65 = v71;
          v66 = v70;
          if (v71 >> 60 == 15)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          else
          {
            v63 = v66;
            v64 = v65;
            v118 = v66;
            v119 = v65;
            if (v117 >> 60 != 15)
            {
              sub_10028E498(&v116);
            }
          }
        }

        else
        {
          v118 = v116;
          v119 = v117;
        }

        v60 = v118;
        v61 = v119;
        v114 = v118;
        v115 = v119;
        v62 = [v80 url];
        if (v62)
        {
          v59 = v62;
          v58 = v62;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v97 + 32))(v103, v98, v95);
          (*(v97 + 56))(v103, 0, 1, v95);
        }

        else
        {
          (*(v97 + 56))(v103, 1, 1, v95);
        }

        if ((*(v97 + 48))(v103, 1, v95) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v55 = URL.absoluteString.getter();
        v56 = v13;
        v112 = v55;
        v113 = v13;
        (*(v97 + 8))(v103, v95);
        v57 = [v80 mimeType];
        if (v57)
        {
          v54 = v57;
          v49 = v57;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v14;

          v52 = v50;
          v53 = v51;
        }

        else
        {
          v52 = 0;
          v53 = 0;
        }

        v47 = v53;
        v48 = v52;
        if (v53)
        {
          v45 = v48;
          v46 = v47;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v42 = v46;
        v43 = v45;
        v110 = v45;
        v111 = v46;
        v44 = [v80 contentID];
        if (v44)
        {
          v41 = v44;
          v36 = v44;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v15;

          v39 = v37;
          v40 = v38;
        }

        else
        {
          v39 = 0;
          v40 = 0;
        }

        v34 = v40;
        v35 = v39;
        if (v40)
        {
          v32 = v35;
          v33 = v34;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v31 = v33;
        v26 = v32;
        v108 = v32;
        v109 = v33;
        sub_10028E4E8(v60, v61);
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100288010(v60, v61);

        v29 = String._bridgeToObjectiveC()();

        v28 = String._bridgeToObjectiveC()();

        v27 = String._bridgeToObjectiveC()();

        [v86 replaceFilenamePlaceholderWithAttachment:isa fileName:v29 mimeType:v28 contentID:v27];

        sub_100288010(v60, v61);
      }
    }

    sub_100264880(v129);
    v85 = &v125;
    swift_beginAccess();
    sub_100015DA0(v104, v124);
    swift_endAccess();
    if (v124[3])
    {
      v25 = v126;
      sub_100014898(v124, v126);
      v24 = [objc_opt_self() defaultCenter];
      v22 = v122;
      sub_10026F5D4(v25, v122);
      v19 = v123;
      sub_10027EC3C(v22, v123);
      v17 = *(v19 - 8);
      v18 = v17;
      v21 = &v17;
      __chkstk_darwin(&v17);
      v20 = &v17 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      v23 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v20, v19);
      sub_1000160F4(v22);
      [v24 removeObserver:{v23, v17}];
      swift_unknownObjectRelease();

      sub_1000160F4(v25);
    }

    else
    {
      sub_10000B0D8(v124);
    }
  }
}

uint64_t sub_10028C0DC(uint64_t a1, void *a2)
{
  v5 = a1;
  v12 = a2;
  v11 = type metadata accessor for Notification();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v5);
  v10 = &v4 - v6;
  v7 = *(v2 + 32);
  v13 = *(v2 + 40);

  _objc_retain(v12);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v7(v10);
  (*(v8 + 8))(v10, v11);
  _objc_release(v12);
}

void *sub_10028C1FC@<X0>(void *a1@<X8>)
{
  v63 = a1;
  v60 = __b;
  v62 = 64;
  memset(__b, 0, sizeof(__b));
  v37 = sub_10025C9B0(&unk_1006D7380, &qword_100500790);
  v13 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v38 = &v12 - v13;
  v1 = sub_10025C9B0(&unk_1006D8270, &unk_1004FF4D0);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v36 = &v12 - v14;
  v47 = 0;
  v2 = type metadata accessor for InputConnectionBehavior();
  v15 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v59 = &v12 - v15;
  v16 = (*(*(sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v47);
  v42 = &v12 - v16;
  v17 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v58 = &v12 - v17;
  v27 = type metadata accessor for IntentPerson.ParameterMode();
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v18 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v33 = &v12 - v18;
  v5 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v19 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v55 = &v12 - v19;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v20 = v71;
  memset(v71, 0, sizeof(v71));
  sub_10000B074();
  sub_1003DC7F0();
  __b[0] = AppDependency.__allocating_init(key:manager:)();
  v25 = sub_10025C9B0(&unk_1006D7410, &unk_1004FF4E0);
  v44 = type metadata accessor for LocalizedStringResource();
  v6 = *(v44 - 8);
  v46 = *(v6 + 56);
  v45 = v6 + 56;
  v50 = 1;
  v46(v55, 1);
  v23 = &v70;
  v70 = 0;
  v26 = &enum case for IntentPerson.ParameterMode.email(_:);
  v29 = *(v21 + 104);
  v28 = v21 + 104;
  v29(v33, enum case for IntentPerson.ParameterMode.email(_:), v27);
  v51 = type metadata accessor for IntentDialog();
  v7 = *(v51 - 8);
  v53 = *(v7 + 56);
  v52 = v7 + 56;
  v53(v58, v50);
  v30 = sub_10025C9B0(&unk_1006D7160, qword_100500870);
  v31 = sub_10028035C();
  sub_1003BD8F8(v59);
  __b[1] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v46)(v55, v50, v50, v44);
  v24 = &v69;
  v69 = 0;
  v29(v33, *v26, v27);
  (v53)(v58, v50, v50, v51);
  sub_1003BD8F8(v59);
  __b[2] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v46)(v55, v50, v50, v44);
  v32 = &v68;
  v68 = 0;
  v29(v33, *v26, v27);
  (v53)(v58, v50, v50, v51);
  sub_1003BD8F8(v59);
  __b[3] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7430, &unk_1004FF4F0);
  (v46)(v55, v50, v50, v44);
  v35 = v67;
  v67[0] = 0;
  v67[1] = 0;
  v8 = type metadata accessor for String.IntentInputOptions();
  (*(*(v8 - 8) + 56))(v36, v50);
  (v53)(v58, v50, v50, v51);
  v34 = sub_10025C9B0(&unk_1006D7340, &unk_1005039F0);
  sub_10028DF54();
  sub_1003BD8F8(v59);
  __b[4] = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7450, &unk_1004FF500);
  (v46)(v55, v50, v50, v44);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 56))(v38, v50);
  (v53)(v58, v50, v50, v51);
  sub_10028E064();
  sub_1003BD8F8(v59);
  __b[5] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D82A0, &unk_10050CF50);
  (v46)(v55, v50, v50, v44);
  v41 = v66;
  memset(v66, 0, sizeof(v66));
  (v53)(v58, v50, v50, v51);
  (v53)(v42, v50, v50, v51);
  v40 = sub_10025C9B0(&unk_1006D7470, &qword_1004FF510);
  v39 = sub_10028E17C();
  v43 = sub_100264788();
  sub_1003BD8F8(v59);
  __b[6] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7490, &qword_1004FF518);
  (v46)(v55, v50, v50, v44);
  v56 = &v65;
  v65 = 0;
  v49 = type metadata accessor for UTType();
  v48 = _allocateUninitializedArray<A>(_:)();
  static UTType.item.getter();
  sub_1002612B0();
  v57 = v10;
  (v53)(v58, v50, v50, v51);
  v54 = sub_10025C9B0(&unk_1006D7270, &unk_1004FF0E0);
  sub_10028E214();
  sub_1003BD8F8(v59);
  __b[7] = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  v61 = __dst;
  memcpy(__dst, v60, v62);
  sub_10028B3B4(v61, v64);
  sub_10028E32C(v60);
  return memcpy(v63, v61, v62);
}

uint64_t sub_10028CD68()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006EFDF0;
  sub_10002094C(v7, qword_1006EFDF0);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_10028CEA8();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10028CEA8()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CreateDraftIntent", 0x11uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_10028CF80()
{
  if (qword_1006D5DA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006EFDF0);
}

uint64_t sub_10028CFEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10028CF80();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10028D0A0(uint64_t a1)
{
  *(v2 + 80) = v2;
  memcpy((v2 + 16), v1, 0x40uLL);
  v3 = swift_task_alloc();
  *(v5 + 88) = v3;
  *v3 = *(v5 + 80);
  v3[1] = sub_10028D168;

  return sub_10028A010(a1);
}

uint64_t sub_10028D168()
{
  v2 = *v1;
  *(v2 + 80) = *v1;
  v5 = v2 + 80;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

id sub_10028D368(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v4 = (*(v16 + 48))(a1, 1);
  if (v4 == 1)
  {
    v6 = [v13 initWithURL:0 composeType:? originalMessage:? legacyMessage:?];
  }

  else
  {
    URL._bridgeToObjectiveC()((v4 - 1));
    v10 = v5;
    (*(v16 + 8))(a1, v15);
    v6 = [v13 initWithURL:v10 composeType:? originalMessage:? legacyMessage:?];
  }

  v9 = v6;
  _objc_release(a4);
  _objc_release(a3);
  _objc_release(v8);
  return v9;
}

unint64_t sub_10028D4AC()
{
  v2 = qword_1006D73B0;
  if (!qword_1006D73B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D73B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10028D520(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_10028D584(_OWORD *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_1000160F4(a2);
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = a1[1];
  }

  return a2;
}

unint64_t sub_10028D658()
{
  v2 = qword_1006D7C60;
  if (!qword_1006D7C60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7C60);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10028D6D0(void *a1)
{
}

unint64_t sub_10028D750()
{
  v2 = qword_1006D73C0;
  if (!qword_1006D73C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10028D7FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < &_mh_execute_header)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10028D93C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_10028DB30()
{
  v2 = qword_1006D73C8;
  if (!qword_1006D73C8)
  {
    sub_10025CAA4(&unk_1006D73D0, qword_1004FF2F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DBB8()
{
  v2 = qword_1006D8240;
  if (!qword_1006D8240)
  {
    sub_10025CAA4(&qword_1006D73E0, &qword_1004FF338);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DC58(uint64_t a1)
{
  result = sub_100288CC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10028DC9C()
{
  v2 = qword_1006D73E8;
  if (!qword_1006D73E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DD18(uint64_t a1)
{
  result = sub_10028DD44();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10028DD44()
{
  v2 = qword_1006D73F0;
  if (!qword_1006D73F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DDD8()
{
  v2 = qword_1006D73F8;
  if (!qword_1006D73F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D73F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DE6C()
{
  v2 = qword_1006D7400;
  if (!qword_1006D7400)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DF54()
{
  v2 = qword_1006D7440;
  if (!qword_1006D7440)
  {
    sub_10025CAA4(&unk_1006D7340, &unk_1005039F0);
    sub_10028DFEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028DFEC()
{
  v2 = qword_1006D8280;
  if (!qword_1006D8280)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E064()
{
  v2 = qword_1006D8290;
  if (!qword_1006D8290)
  {
    sub_10025CAA4(&unk_1006D7380, &qword_100500790);
    sub_10028E0FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E0FC()
{
  v2 = qword_1006D7460;
  if (!qword_1006D7460)
  {
    type metadata accessor for AttributedString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E17C()
{
  v2 = qword_1006D82B0;
  if (!qword_1006D82B0)
  {
    sub_10025CAA4(&unk_1006D7470, &qword_1004FF510);
    sub_100264D9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D82B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E214()
{
  v2 = qword_1006D74A0;
  if (!qword_1006D74A0)
  {
    sub_10025CAA4(&unk_1006D7270, &unk_1004FF0E0);
    sub_10028E2AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D74A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E2AC()
{
  v2 = qword_1006D82C0;
  if (!qword_1006D82C0)
  {
    type metadata accessor for IntentFile();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D82C0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10028E32C(void *a1)
{
}

unint64_t sub_10028E3AC()
{
  v2 = qword_1006D82D0;
  if (!qword_1006D82D0)
  {
    sub_10025CAA4(&unk_1006D74B0, &unk_10050AFC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D82D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028E434()
{
  v2 = qword_1006D82E0;
  if (!qword_1006D82E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D82E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10028E498(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_100288010(*a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_10028E4E8(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_10028E5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_100260618;

  return sub_10028E6A0(a1, a2);
}

uint64_t sub_10028E6A0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[10] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return _swift_task_switch(sub_10028E710, 0);
}

uint64_t sub_10028E710()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[6] = v1;
  sub_10025C9B0(&qword_1006D74E0, &unk_1004FF5E0);
  type metadata accessor for MailMessageEntityID();
  sub_10028F3B4();
  v5 = Sequence.compactMap<A>(_:)();
  v0[12] = v5;
  v0[13] = 0;
  v4[7] = v5;
  v4[14] = type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10028E890, v2);
}

uint64_t sub_10028E890()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[16] = [v1 daemonInterface];

  return _swift_task_switch(sub_10028E92C, 0);
}

uint64_t sub_10028E92C()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v0;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v6 = v9[16];
  v2 = v9[13];
  v7 = [v6 messageRepository];
  _objc_release(v6);
  v8 = EMMessageRepository.messageObjectIDs(forMailMessageEntityIDs:)();
  v9[17] = v8;
  v9[18] = v2;
  if (v2)
  {
    _objc_release(v7);

    v5 = *(v9[2] + 8);

    return v5();
  }

  else
  {
    _objc_release(v7);
    v9[8] = v8;
    v9[19] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10028EBBC, v4);
  }
}

uint64_t sub_10028EBBC()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[20] = [v1 daemonInterface];

  return _swift_task_switch(sub_10028EC58, 0);
}

uint64_t sub_10028EC58()
{
  v1 = *(v0 + 160);
  *(v0 + 16) = v0;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v6 = v14[20];
  v2 = v14[18];
  v8 = [v6 messageRepository];
  _objc_release(v6);

  sub_10028F43C();
  sub_10028F4A0();
  _arrayForceCast<A, B>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v8 messageListItemsForObjectIDs:isa];
  _objc_release(isa);
  _objc_release(v8);
  sub_10025C9B0(&qword_1006D7500, &qword_10050C710);
  v14[9] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_10025C9B0(&unk_1006DCA10, &unk_1004FF5F0);
  v11 = sub_10025C9B0(&unk_1006D7220, &qword_1004FF600);
  v3 = sub_10028F554();
  result = sub_10025E9D8(sub_10028F504, 0, v10, v11, &type metadata for Never, v3, &protocol witness table for Never, v12);
  v13 = result;
  if (!v2)
  {
    sub_100264880(v14 + 9);
    _objc_release(v9);

    v5 = *(v14[2] + 8);

    return v5(v13);
  }

  return result;
}

uint64_t sub_10028EFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100287C54;

  return sub_10028F080(a1);
}

uint64_t sub_10028F080(uint64_t a1)
{
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return _swift_task_switch(sub_10028F0D4, 0);
}

uint64_t sub_10028F0D4()
{
  *(v0 + 16) = v0;
  v6 = objc_opt_self();
  sub_10028831C();
  v1 = [objc_opt_self() defaultMailAccountForDelivery];
  v7 = sub_10028F31C(v1);
  if (!v7)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = [v6 legacyMessageWithMessage:*(v5 + 40) mailboxUid:?];
  _objc_release(v7);
  v2 = *(*(v5 + 16) + 8);

  return v2(v4);
}

unint64_t sub_10028F3B4()
{
  v2 = qword_1006D74E8;
  if (!qword_1006D74E8)
  {
    sub_10025CAA4(&qword_1006D74E0, &unk_1004FF5E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D74E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F43C()
{
  v2 = qword_1006D74F0;
  if (!qword_1006D74F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D74F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10028F4A0()
{
  v2 = qword_1006DCA00;
  if (!qword_1006DCA00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCA00);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_10028F504@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 result];
  *a2 = result;
  return result;
}

unint64_t sub_10028F554()
{
  v2 = qword_1006DCA20;
  if (!qword_1006DCA20)
  {
    sub_10025CAA4(&unk_1006DCA10, &unk_1004FF5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F5DC()
{
  v2 = qword_1006D7508;
  if (!qword_1006D7508)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F684()
{
  v2 = qword_1006D7510;
  if (!qword_1006D7510)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F794()
{
  v2 = qword_1006DB360;
  if (!qword_1006DB360)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F8A4()
{
  v2 = qword_1006D7520;
  if (!qword_1006D7520)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10028F9B4()
{
  v2 = qword_1006D7528;
  if (!qword_1006D7528)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7528);
    return WitnessTable;
  }

  return v2;
}

id sub_10028FA94(void *a1)
{
  v4 = [v1 initWithAccount:?];
  _objc_release(a1);
  return v4;
}

uint64_t sub_10028FAE4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_logger;
  v2 = type metadata accessor for Logger();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void *sub_10028FB58()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_outgoingMessageRepository);
  _objc_retain(v2);
  return v2;
}

void sub_10028FBDC(char a1, void *a2)
{
  if (a1)
  {
    v2 = v10;
    [a2 registerUndoWithTarget:v10 selector:"cancelLastDelayedMessage" object:?];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Send", 4uLL, 1);
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Title of 'Undo Send' button in status bar", 0x29uLL, 1);
    v8 = sub_10028FEB4();
    v5._countAndFlagsBits = sub_100015E30();
    v5._object = v6;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v8, v5, v4);

    v9 = String._bridgeToObjectiveC()();

    [a2 setActionName:v9];
  }

  else
  {
    v7 = v10;
    [a2 removeAllActionsWithTarget:v10];
    swift_unknownObjectRelease();
  }
}

id sub_10028FEB4()
{
  v0 = [objc_opt_self() mainBundle];

  return v0;
}

void sub_10028FF7C()
{
  v11 = v0;
  v3 = *&v0[OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_outgoingMessageRepository];
  _objc_retain(v3);
  _objc_retain(v0);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v9 = sub_10029085C;
  v10 = v1;
  aBlock = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = sub_100290868;
  v8 = &unk_1006588D0;
  v2 = _Block_copy(&aBlock);

  [v3 cancelLastDelayedMessage:v2];
  _Block_release(v2);
  _objc_release(v3);
}

uint64_t sub_1002900A0(unsigned int a1, uint64_t a2)
{
  v55 = a2;
  v54 = a1;
  v71 = 0;
  v70 = 0;
  v53 = 0;
  v56 = type metadata accessor for Logger();
  v57 = *(v56 - 8);
  v58 = v57;
  v59 = *(v57 + 64);
  v2 = __chkstk_darwin(v54);
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v10 - v61;
  v3 = __chkstk_darwin(v2);
  v62 = &v10 - v61;
  v71 = v3;
  v70 = v4;
  if (v3)
  {
    (*(v58 + 16))(v60, v55 + OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_logger, v56);
    v29 = Logger.logObject.getter();
    v26 = v29;
    v28 = static os_log_type_t.default.getter();
    v27 = v28;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v30 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v29, v28))
    {
      v7 = v53;
      v17 = static UnsafeMutablePointer.allocate(capacity:)();
      v13 = v17;
      v14 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v15 = 0;
      v18 = sub_1002641E8(0, v14, v14);
      v16 = v18;
      v19 = sub_1002641E8(v15, &type metadata for Any + 8, &type metadata for Any + 8);
      v69 = v17;
      v68 = v18;
      v67 = v19;
      v20 = 0;
      v21 = &v69;
      sub_10026423C(0, &v69);
      sub_10026423C(v20, v21);
      v66[2] = v30;
      v22 = &v10;
      __chkstk_darwin(&v10);
      v23 = &v10 - 6;
      *(&v10 - 4) = v8;
      *(&v10 - 3) = &v68;
      *(&v10 - 2) = &v67;
      v24 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v25 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v26, v27, "User selected Undo Send. Cancel last delayed message.", v13, 2u);
        v11 = 0;
        sub_10026429C(v16, 0);
        sub_10026429C(v19, v11);
        UnsafeMutablePointer.deallocate()();

        v12 = v25;
      }
    }

    else
    {

      v12 = v53;
    }

    v10 = v12;

    (*(v58 + 8))(v60, v56);
    return v10;
  }

  else
  {
    (*(v58 + 16))(v62, v55 + OBJC_IVAR____TtC10MobileMail18ComposeUndoHandler_logger, v56);
    v51 = Logger.logObject.getter();
    v48 = v51;
    v50 = static os_log_type_t.error.getter();
    v49 = v50;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v52 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v51, v50))
    {
      v5 = v53;
      v39 = static UnsafeMutablePointer.allocate(capacity:)();
      v35 = v39;
      v36 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v37 = 0;
      v40 = sub_1002641E8(0, v36, v36);
      v38 = v40;
      v41 = sub_1002641E8(v37, &type metadata for Any + 8, &type metadata for Any + 8);
      v66[0] = v39;
      v65 = v40;
      v64 = v41;
      v42 = 0;
      v43 = v66;
      sub_10026423C(0, v66);
      sub_10026423C(v42, v43);
      v63 = v52;
      v44 = &v10;
      __chkstk_darwin(&v10);
      v45 = &v10 - 6;
      *(&v10 - 4) = v6;
      *(&v10 - 3) = &v65;
      *(&v10 - 2) = &v64;
      v46 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v47 = v5;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v48, v49, "Failed to cancel last delayed message!", v35, 2u);
        v33 = 0;
        sub_10026429C(v38, 0);
        sub_10026429C(v41, v33);
        UnsafeMutablePointer.deallocate()();

        v34 = v47;
      }
    }

    else
    {

      v34 = v53;
    }

    v31 = v34;

    (*(v58 + 8))(v62, v56);
    return v31;
  }
}

uint64_t sub_100290868(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

uint64_t sub_1002908C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_100290A00()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComposeUndoHandler(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100290ADC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label);
  _objc_retain(v2);
  return v2;
}

id sub_100290B24()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100290B94(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100290C44()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100290D4C();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

id sub_100290D4C()
{
  sub_1002939E0();
  sub_1002913A4();
  v0 = _allocateUninitializedArray<A>(_:)();
  return sub_1002A7800(v0);
}

void sub_100290D98(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void sub_100290E30()
{
  v8 = *(v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label);
  _objc_retain(v8);
  v9 = v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName;
  swift_beginAccess();
  v10 = *(v9 + 8);

  swift_endAccess();
  if (v10)
  {
    v5 = String._bridgeToObjectiveC()();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  [v8 setText:?];
  _objc_release(v6);
  _objc_release(v8);
  _objc_retain(v7);
  v3 = &v7[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName];
  swift_beginAccess();
  v4 = *(v3 + 1);

  swift_endAccess();
  if (v4)
  {
    v1 = String._bridgeToObjectiveC()();

    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  [v7 setAccessibilityLabel:?];
  _objc_release(v2);
  _objc_release(v7);
}

uint64_t sub_100291044()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1002910B8(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
  sub_100290E30();
}

void sub_100291158()
{
  v11 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contact);
  swift_beginAccess();
  v12 = *v11;
  _objc_retain(*v11);
  swift_endAccess();
  if (v12)
  {
    v9 = sub_100290C44();
    sub_1002913A4();
    _allocateUninitializedArray<A>(_:)();
    v7 = v1;
    _objc_retain(v12);
    *v7 = v12;
    sub_1002612B0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 updateContacts:isa];
    _objc_release(isa);
    _objc_release(v9);
    v10 = [objc_opt_self() stringFromContact:v12 style:0];
    if (v10)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v2;
      _objc_release(v10);
      v5 = v3;
      v6 = v4;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    if (v6)
    {
      sub_1002910B8(v5, v6);
    }

    _objc_release(v12);
  }
}

unint64_t sub_1002913A4()
{
  v2 = qword_1006D9790;
  if (!qword_1006D9790)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9790);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_100291408()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contact);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100291478(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contact);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  sub_100291158();
  _objc_release(a1);
}

void sub_100291514(void *a1)
{
  v27 = 0;
  v28 = a1;
  _objc_retain(a1);
  if (a1)
  {
    [a1 cancel];
    _objc_release(a1);
  }

  v10 = &v11[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact];
  swift_beginAccess();
  if (*v10)
  {
    v9 = *v10;
    _objc_retain(*v10);
    swift_endAccess();
    v8 = [objc_opt_self() mainThreadScheduler];
    v6 = swift_allocObject();
    _objc_retain(v11);
    swift_unknownObjectWeakInit();
    _objc_release(v11);

    v18 = sub_100291C00;
    v19 = v6;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = 0;
    v16 = sub_1002919E0;
    v17 = &unk_100658948;
    v7 = _Block_copy(&aBlock);

    [v9 onScheduler:v8 addSuccessBlock:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
    _objc_release(v9);
  }

  else
  {
    swift_endAccess();
  }

  v5 = &v11[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact];
  swift_beginAccess();
  if (*v5)
  {
    v4 = *v5;
    _objc_retain(*v5);
    swift_endAccess();
    v3 = [objc_opt_self() mainThreadScheduler];
    v1 = swift_allocObject();
    _objc_retain(v11);
    swift_unknownObjectWeakInit();
    _objc_release(v11);

    v25 = sub_100291B24;
    v26 = v1;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = 0;
    v23 = sub_100291B2C;
    v24 = &unk_100658920;
    v2 = _Block_copy(&v20);

    [v4 onScheduler:v3 addFailureBlock:v2];
    _Block_release(v2);
    swift_unknownObjectRelease();
    _objc_release(v4);
  }

  else
  {
    swift_endAccess();
  }
}

void sub_100291900(void *a1, uint64_t a2)
{
  v4[5] = a1;
  v4[4] = (a2 + 16);
  swift_beginAccess();
  v4[0] = swift_unknownObjectWeakLoadStrong();
  if (v4[0])
  {
    v2 = v4[0];
    _objc_retain(v4[0]);
    sub_10026A58C(v4);
    swift_endAccess();
    _objc_retain(a1);
    sub_100291478(a1);
    _objc_release(v2);
  }

  else
  {
    sub_10026A58C(v4);
    swift_endAccess();
  }
}

uint64_t sub_1002919E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  _objc_retain(a2);
  v3(a2);
  _objc_release(a2);
}

void sub_100291A58(void *a1, uint64_t a2)
{
  v3[5] = a1;
  v3[4] = (a2 + 16);
  swift_beginAccess();
  v3[0] = swift_unknownObjectWeakLoadStrong();
  if (v3[0])
  {
    v2 = v3[0];
    _objc_retain(v3[0]);
    sub_10026A58C(v3);
    swift_endAccess();
    sub_100291478(0);
    _objc_release(v2);
  }

  else
  {
    sub_10026A58C(v3);
    swift_endAccess();
  }
}

uint64_t sub_100291B2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  _objc_retain(a2);
  v3(a2);
}

uint64_t sub_100291B9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100291C08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_100291C6C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100291CDC(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact);
  swift_beginAccess();
  v5 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  _objc_retain(a1);
  v4 = (v1 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  _objc_release(v2);
  swift_endAccess();
  sub_100291514(v5);
  _objc_release(v5);
  _objc_release(a1);
}

char *sub_100291E50(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *&v12 = a3;
  *(&v12 + 1) = a4;
  ObjectType = swift_getObjectType();
  v15 = v11;
  v16 = v12;
  v17 = v6;
  v9 = OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label;
  sub_100264928();
  *&v6[v9] = sub_10025C704();
  *&v17[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell____lazy_storage___avatarViewController] = 0;
  v7 = &v17[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contact] = 0;
  *&v17[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact] = 0;
  v14.receiver = v17;
  v14.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v14, "initWithFrame:", v11, v12);
  _objc_retain(v13);
  v17 = v13;
  _objc_retain(v13);
  [v13 setIsAccessibilityElement:1];
  _objc_release(v13);
  sub_100292010();
  _objc_release(v17);
  return v13;
}

void sub_100292010()
{
  v57 = 0;
  v59 = v0;
  v5 = sub_100290C44();
  v38 = [v5 view];
  v58 = v38;
  _objc_release(v5);
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v51 addSubview:v38];
  v6 = *&v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v6);
  [v51 addSubview:v6];
  _objc_release(v6);
  v7 = *&v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v7);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v7);
  v10 = *&v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v10);
  v8 = objc_opt_self();
  _objc_retain(UIFontTextStyleCaption2);
  v9 = [v8 preferredFontForTextStyle:UIFontTextStyleCaption2];
  _objc_release(UIFontTextStyleCaption2);
  UILabel.contentSizeAdjustingFont(_:)(v9);
  _objc_release(v9);
  _objc_release(v10);
  v11 = *&v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v11);
  [v11 setNumberOfLines:2];
  _objc_release(v11);
  v12 = *&v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v12);
  [v12 setTextAlignment:1];
  _objc_release(v12);
  v14 = *&v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v14);
  v13 = [objc_opt_self() labelColor];
  [v14 setTextColor:?];
  _objc_release(v13);
  _objc_release(v14);
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 preferredContentSizeCategory];
  v57 = v16;
  _objc_release(v15);
  v17 = [v38 widthAnchor];
  v19 = [v17 constraintEqualToConstant:sub_1002930FC(v16)];
  _objc_release(v17);
  v18 = &v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint];
  swift_beginAccess();
  v1 = *v18;
  *v18 = v19;
  _objc_release(v1);
  swift_endAccess();
  v20 = objc_opt_self();
  sub_10025C9B0(&unk_1006DB860, &qword_1004FE4A0);
  _allocateUninitializedArray<A>(_:)();
  v54 = v2;
  v21 = &v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint];
  swift_beginAccess();
  sub_1002935A0(v21, v54);
  swift_endAccess();
  v23 = [v38 heightAnchor];
  v22 = [v38 widthAnchor];
  v24 = [v23 constraintEqualToAnchor:?];
  _objc_release(v22);
  _objc_release(v23);
  v54[1] = v24;
  v26 = [v38 topAnchor];
  _objc_retain(v51);
  v25 = [v51 topAnchor];
  _objc_release(v51);
  v27 = [v26 constraintEqualToAnchor:v25 constant:?];
  _objc_release(v25);
  _objc_release(v26);
  v54[2] = v27;
  v29 = [v38 centerXAnchor];
  _objc_retain(v51);
  v28 = [v51 centerXAnchor];
  _objc_release(v51);
  v30 = [v29 constraintEqualToAnchor:v28];
  _objc_release(v28);
  _objc_release(v29);
  v54[3] = v30;
  v32 = [v38 leadingAnchor];
  _objc_retain(v51);
  v31 = [v51 leadingAnchor];
  _objc_release(v51);
  v33 = [v32 constraintGreaterThanOrEqualToAnchor:v31 constant:2.0];
  _objc_release(v31);
  _objc_release(v32);
  v54[4] = v33;
  v35 = [v38 trailingAnchor];
  _objc_retain(v51);
  v34 = [v51 trailingAnchor];
  _objc_release(v51);
  v36 = [v35 constraintLessThanOrEqualToAnchor:v34 constant:?];
  _objc_release(v34);
  _objc_release(v35);
  v54[5] = v36;
  v37 = *&v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v37);
  v40 = [v37 topAnchor];
  _objc_release(v37);
  v39 = [v38 bottomAnchor];
  v41 = [v40 constraintEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
  _objc_release(v39);
  _objc_release(v40);
  v54[6] = v41;
  v42 = *&v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v42);
  v44 = [v42 leadingAnchor];
  _objc_release(v42);
  _objc_retain(v51);
  v43 = [v51 leadingAnchor];
  _objc_release(v51);
  v45 = [v44 constraintEqualToAnchor:v43 constant:2.0];
  _objc_release(v43);
  _objc_release(v44);
  v54[7] = v45;
  v46 = *&v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v46);
  v48 = [v46 trailingAnchor];
  _objc_release(v46);
  _objc_retain(v51);
  v47 = [v51 trailingAnchor];
  _objc_release(v51);
  v49 = [v48 constraintEqualToAnchor:v47 constant:-2.0];
  _objc_release(v47);
  _objc_release(v48);
  v54[8] = v49;
  v50 = *&v51[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label];
  _objc_retain(v50);
  v53 = [v50 bottomAnchor];
  _objc_release(v50);
  _objc_retain(v51);
  v52 = [v51 bottomAnchor];
  _objc_release(v51);
  v55 = [v53 constraintEqualToAnchor:v52 constant:-2.0];
  _objc_release(v52);
  _objc_release(v53);
  v54[9] = v55;
  sub_1002612B0();
  v56 = v3;
  sub_10025C9B0(&qword_1006D75A8, &unk_100500720);
  sub_100293824();
  sub_100293888();
  Sequence.compactMap<A>(_:)();
  sub_100264880(&v56);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints:isa];
  _objc_release(isa);
  _objc_release(v16);
  _objc_release(v38);
}

id MailDebugNotificationDelaySettingsViewController.__allocating_init(coder:)(void *a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder:a1];
  _objc_release(a1);
  return v4;
}

void sub_100292CC0()
{
  v1 = OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_label;
  sub_100264928();
  *v1 = sub_10025C704();
  *OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell____lazy_storage___avatarViewController = 0;
  v0 = OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName;
  *OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contactName = 0;
  *(v0 + 8) = 0;
  *OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_contact = 0;
  *OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100292E30(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = v2;
  _objc_retain(v2);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  _objc_release(v13);
  _objc_retain(a1);
  if (a1)
  {
    _objc_retain(v13);
    v9 = [v13 traitCollection];
    _objc_release(v13);
    v10 = [a1 mf_traitDifferenceAffectsTextLayout:v9];
    _objc_release(v9);
    _objc_release(a1);
    v11 = v10;
  }

  else
  {
    v11 = 2;
  }

  if (v11 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v11;
  }

  if (v8)
  {
    v7 = &v13[OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_imageSizeConstraint];
    swift_beginAccess();
    if (*v7)
    {
      v6 = *v7;
      _objc_retain(*v7);
      swift_endAccess();
      _objc_retain(v13);
      v3 = [v13 traitCollection];
      _objc_release(v13);
      v4 = [v3 preferredContentSizeCategory];
      _objc_release(v3);
      v5 = sub_1002930FC(v4);
      _objc_release(v4);
      [v6 setConstant:v5];
      _objc_release(v6);
    }

    else
    {
      swift_endAccess();
    }
  }
}

double sub_1002930FC(void *a1)
{
  v14[1] = 0;
  v14[2] = a1;
  _objc_retain(a1);
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    _objc_release(a1);
    _objc_retain(a1);
    _objc_retain(UIContentSizeCategoryAccessibilityMedium);
    v14[0] = UIContentSizeCategoryAccessibilityMedium;
    v13[1] = a1;
    type metadata accessor for UIContentSizeCategory(0);
    sub_100266AEC();
    v7 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10026A58C(v14);
    if (v7)
    {
      _objc_release(a1);
      return 70.0;
    }

    else
    {
      _objc_release(a1);
      _objc_retain(a1);
      _objc_retain(UIContentSizeCategoryAccessibilityLarge);
      v13[0] = UIContentSizeCategoryAccessibilityLarge;
      v12[1] = a1;
      v6 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10026A58C(v13);
      if (v6)
      {
        _objc_release(a1);
        return 80.0;
      }

      else
      {
        _objc_release(a1);
        _objc_retain(a1);
        _objc_retain(UIContentSizeCategoryAccessibilityExtraLarge);
        v12[0] = UIContentSizeCategoryAccessibilityExtraLarge;
        v11[1] = a1;
        v5 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10026A58C(v12);
        if (v5)
        {
          _objc_release(a1);
          return 90.0;
        }

        else
        {
          _objc_release(a1);
          _objc_retain(a1);
          _objc_retain(UIContentSizeCategoryAccessibilityExtraExtraLarge);
          v11[0] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
          v10[1] = a1;
          v4 = dispatch thunk of static Equatable.== infix(_:_:)();
          sub_10026A58C(v11);
          if (v4)
          {
            _objc_release(a1);
            return 100.0;
          }

          else
          {
            _objc_release(a1);
            _objc_retain(a1);
            _objc_retain(UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
            v10[0] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
            v3 = dispatch thunk of static Equatable.== infix(_:_:)();
            sub_10026A58C(v10);
            if (v3)
            {
              _objc_release(a1);
              return 110.0;
            }

            else
            {
              _objc_release(a1);
              _objc_retain(a1);
              _objc_retain(UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
              v2 = static UIContentSizeCategory.> infix(_:_:)();
              _objc_release(UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
              _objc_release(a1);
              if (v2)
              {
                return 110.0;
              }

              else
              {
                return 60.0;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    _objc_release(a1);
    return 60.0;
  }
}

void *sub_1002935A0(id *a1, void *a2)
{
  v3 = *a1;
  _objc_retain(*a1);
  result = a2;
  *a2 = v3;
  return result;
}

void sub_100293658(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v9 = v2;
  _objc_retain(v2);
  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "prepareForReuse");
  _objc_release(v2);
  sub_100291478(0);
  sub_1002910B8(0, 0);
  v6 = OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact;
  v7 = (v5 + OBJC_IVAR____TtC10MobileMail24ContactConfigurationCell_futureContact);
  swift_beginAccess();
  if (*v7)
  {
    v3 = *(v5 + v6);
    _objc_retain(v3);
    swift_endAccess();
    [v3 cancel];
    _objc_release(v3);
  }

  else
  {
    swift_endAccess();
  }
}

id sub_1002937D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = _objc_retain(*a1);
  *a2 = v4;
  return result;
}

unint64_t sub_100293824()
{
  v2 = qword_1006DB870;
  if (!qword_1006DB870)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB870);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100293888()
{
  v2 = qword_1006D75B0;
  if (!qword_1006D75B0)
  {
    sub_10025CAA4(&qword_1006D75A8, &unk_100500720);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D75B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002939E0()
{
  v2 = qword_1006D75E0;
  if (!qword_1006D75E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D75E0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t ConversationNavigationBarItemType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Archive", 7uLL, 1)._countAndFlagsBits;
      break;
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete", 6uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Move", 4uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply", 5uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply All", 9uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Forward", 7uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Flag", 4uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Read", 4uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unread", 6uLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Junk", 4uLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mute", 4uLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remind Me", 9uLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Compose", 7uLL, 1)._countAndFlagsBits;
      break;
    case 13:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reveal Actions", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 14:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Summarize", 9uLL, 1)._countAndFlagsBits;
      break;
    case 15:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Categorization", 0xEuLL, 1)._countAndFlagsBits;
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return countAndFlagsBits;
}

uint64_t ConversationNavigationBarItemType.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
    case 8:
      return 8;
    case 9:
      return 9;
    case 10:
      return 10;
    case 11:
      return 11;
    case 12:
      return 12;
    case 13:
      return 13;
    case 14:
      return 14;
    case 15:
      return 15;
  }

  return 0;
}

void static ConversationNavigationBarItemType.allCases.getter()
{
  _allocateUninitializedArray<A>(_:)();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  v0[6] = 6;
  v0[7] = 7;
  v0[8] = 8;
  v0[9] = 9;
  v0[10] = 10;
  v0[11] = 11;
  v0[12] = 12;
  v0[13] = 13;
  v0[14] = 14;
  v0[15] = 15;
  sub_1002612B0();
}

uint64_t sub_1002940E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ConversationNavigationBarItemType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10029423C()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006EFE08);
  sub_1000208F4(v1, qword_1006EFE08);
  return sub_100294288();
}

uint64_t sub_1002942C0()
{
  if (qword_1006D5DB0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006EFE08);
}

uint64_t sub_10029432C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002942C0();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t ConversationNavigationBarItemsManager.scene.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t ConversationNavigationBarItemsManager.scene.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConversationNavigationBarItemsManager.scene.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 42533);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_scene;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

void sub_10029464C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100294754();
  }

  else
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  free(v2);
}

void *sub_100294700(size_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t ConversationNavigationBarItemsManager.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t ConversationNavigationBarItemsManager.delegate.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConversationNavigationBarItemsManager.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 24825);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

uint64_t ConversationNavigationBarItemsManager.actionHandler.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t ConversationNavigationBarItemsManager.actionHandler.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConversationNavigationBarItemsManager.actionHandler.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 33733);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_actionHandler;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

uint64_t ConversationNavigationBarItemsManager.arrowDelegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t ConversationNavigationBarItemsManager.arrowDelegate.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConversationNavigationBarItemsManager.arrowDelegate.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 2707);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_arrowDelegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

uint64_t ConversationNavigationBarItemsManager.useArchiveButton.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useArchiveButton);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t ConversationNavigationBarItemsManager.useArchiveButton.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useArchiveButton);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t ConversationNavigationBarItemsManager.showNavigationArrows.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showNavigationArrows);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t ConversationNavigationBarItemsManager.showNavigationArrows.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showNavigationArrows);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t ConversationNavigationBarItemsManager.showSupplementaryButtonItem.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showSupplementaryButtonItem);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t ConversationNavigationBarItemsManager.showSupplementaryButtonItem.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showSupplementaryButtonItem);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t ConversationNavigationBarItemsManager.useDesktopClassNavigationBar.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useDesktopClassNavigationBar);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t ConversationNavigationBarItemsManager.useDesktopClassNavigationBar.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useDesktopClassNavigationBar);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

id ConversationNavigationBarItemsManager.doneButton.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_doneButton);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void ConversationNavigationBarItemsManager.doneButton.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_doneButton);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id ConversationNavigationBarItemsManager.doneButtonItem.getter()
{
  v14 = 0;
  v9 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_doneButton);
  swift_beginAccess();
  v10 = *v9;
  _objc_retain(*v9);
  swift_endAccess();
  if (v10)
  {
    return v10;
  }

  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v12[0] = Strong;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    ObjectType = 0;
  }

  v11 = sub_100295C94(0, v12, "done:");
  _objc_retain(v11);
  v3 = MSAccessibilityIdentifierMailConversationViewDoneButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewDoneButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  _objc_release(v3);
  [v11 setAccessibilityIdentifier:v4];
  _objc_release(v4);
  _objc_release(v11);
  _objc_retain(v11);
  v5 = (v8 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_doneButton);
  swift_beginAccess();
  v1 = *v5;
  *v5 = v11;
  _objc_release(v1);
  swift_endAccess();
  return v11;
}

unint64_t sub_100295C30()
{
  v2 = qword_1006D7700;
  if (!qword_1006D7700)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7700);
    return ObjCClassMetadata;
  }

  return v2;
}

id ConversationNavigationBarItemsManager.revealActionsButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___revealActionsButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100295F5C(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___revealActionsButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.revealActionsButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___revealActionsButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100295F5C(uint64_t a1)
{
  v19 = a1;
  sub_1002A75C8();
  v12 = MFImageGlyphReply;
  _objc_retain(MFImageGlyphReply);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = sub_1002A7840(v1, v2);
  _objc_release(v12);
  v18 = v13;
  sub_100295C30();
  _objc_retain(v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v16[0] = Strong;
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    ObjectType = 0;
  }

  v15 = sub_100296284(v13, 0, v16, "revealActionsButtonTapped:");
  _objc_retain(v15);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply", 5uLL, 1);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar in compact layout", 0x39uLL, 1);
  bundle = sub_10028FEB4();
  v5._countAndFlagsBits = sub_100015E30();
  v5._object = v6;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, bundle, v5, v4);

  _objc_release(bundle);

  v9 = String._bridgeToObjectiveC()();

  [v15 setTitle:v9];
  _objc_release(v9);
  _objc_release(v15);
  _objc_retain(v15);
  v10 = MSAccessibilityIdentifierMailConversationViewRevealActionButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewRevealActionButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();

  _objc_release(v10);
  [v15 setAccessibilityIdentifier:v11];
  _objc_release(v11);
  _objc_release(v15);
  _objc_release(v13);
  return v15;
}

void (*ConversationNavigationBarItemsManager.revealActionsButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.revealActionsButtonItem.getter();
  return sub_100296338;
}

void sub_100296338(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.revealActionsButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.revealActionsButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.replyButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100296630(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.replyButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100296630(uint64_t a1)
{
  v19 = a1;
  sub_1002A75C8();
  v12 = MFImageGlyphReply;
  _objc_retain(MFImageGlyphReply);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = sub_1002A7840(v1, v2);
  _objc_release(v12);
  v18 = v13;
  sub_100295C30();
  _objc_retain(v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v16[0] = Strong;
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    ObjectType = 0;
  }

  v15 = sub_100296284(v13, 0, v16, "replyButtonTapped:");
  _objc_retain(v15);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply", 5uLL, 1);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v5._countAndFlagsBits = sub_100015E30();
  v5._object = v6;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, bundle, v5, v4);

  _objc_release(bundle);

  v9 = String._bridgeToObjectiveC()();

  [v15 setTitle:v9];
  _objc_release(v9);
  _objc_release(v15);
  _objc_retain(v15);
  v10 = MSAccessibilityIdentifierMailConversationViewReplyButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewReplyButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();

  _objc_release(v10);
  [v15 setAccessibilityIdentifier:v11];
  _objc_release(v11);
  _objc_release(v15);
  _objc_release(v13);
  return v15;
}

void (*ConversationNavigationBarItemsManager.replyButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.replyButtonItem.getter();
  return sub_1002969B4;
}

void sub_1002969B4(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.replyButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.replyButtonItem.setter(*a1);
  }
}

uint64_t sub_100296AA0()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("replyGroup", 0xAuLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.replyButtonItem.getter();
  sub_1002612B0();
  sub_100270C94();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

unint64_t sub_100296B8C()
{
  v2 = qword_1006D7708;
  if (!qword_1006D7708)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7708);
    return ObjCClassMetadata;
  }

  return v2;
}

id ConversationNavigationBarItemsManager.replyAllButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyAllButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100296E68(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyAllButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.replyAllButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___replyAllButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100296E68(uint64_t a1)
{
  v19 = a1;
  sub_1002A75C8();
  v12 = MFImageGlyphReplyAll;
  _objc_retain(MFImageGlyphReplyAll);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = sub_1002A7840(v1, v2);
  _objc_release(v12);
  v18 = v13;
  sub_100295C30();
  _objc_retain(v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v16[0] = Strong;
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    ObjectType = 0;
  }

  v15 = sub_100296284(v13, 0, v16, "replyAllButtonTapped:");
  _objc_retain(v15);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reply All", 9uLL, 1);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v5._countAndFlagsBits = sub_100015E30();
  v5._object = v6;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, bundle, v5, v4);

  _objc_release(bundle);

  v9 = String._bridgeToObjectiveC()();

  [v15 setTitle:v9];
  _objc_release(v9);
  _objc_release(v15);
  _objc_retain(v15);
  v10 = MSAccessibilityIdentifierMailConversationViewReplyAllButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewReplyAllButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();

  _objc_release(v10);
  [v15 setAccessibilityIdentifier:v11];
  _objc_release(v11);
  _objc_release(v15);
  _objc_release(v13);
  return v15;
}

void (*ConversationNavigationBarItemsManager.replyAllButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.replyAllButtonItem.getter();
  return sub_1002971EC;
}

void sub_1002971EC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.replyAllButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.replyAllButtonItem.setter(*a1);
  }
}

uint64_t sub_1002972D8()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("replyAllGroup", 0xDuLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.replyAllButtonItem.getter();
  sub_1002612B0();
  sub_100270C94();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.forwardButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___forwardButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029763C(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___forwardButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.forwardButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___forwardButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029763C(uint64_t a1)
{
  v19 = a1;
  sub_1002A75C8();
  v12 = MFImageGlyphForward;
  _objc_retain(MFImageGlyphForward);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = sub_1002A7840(v1, v2);
  _objc_release(v12);
  v18 = v13;
  sub_100295C30();
  _objc_retain(v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v16[0] = Strong;
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    ObjectType = 0;
  }

  v15 = sub_100296284(v13, 0, v16, "forwardButtonTapped:");
  _objc_retain(v15);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Forward", 7uLL, 1);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v5._countAndFlagsBits = sub_100015E30();
  v5._object = v6;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, bundle, v5, v4);

  _objc_release(bundle);

  v9 = String._bridgeToObjectiveC()();

  [v15 setTitle:v9];
  _objc_release(v9);
  _objc_release(v15);
  _objc_retain(v15);
  v10 = MSAccessibilityIdentifierMailConversationViewForwardButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewForwardButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();

  _objc_release(v10);
  [v15 setAccessibilityIdentifier:v11];
  _objc_release(v11);
  _objc_release(v15);
  _objc_release(v13);
  return v15;
}

void (*ConversationNavigationBarItemsManager.forwardButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.forwardButtonItem.getter();
  return sub_1002979C0;
}

void sub_1002979C0(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.forwardButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.forwardButtonItem.setter(*a1);
  }
}

uint64_t sub_100297AAC()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("forwardGroup", 0xCuLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.forwardButtonItem.getter();
  sub_1002612B0();
  sub_100270C94();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.archiveButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___archiveButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100297E10(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___archiveButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.archiveButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___archiveButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100297E10(char *a1)
{
  v26 = 0;
  v30 = a1;
  sub_1002A75C8();
  v15 = MFImageGlyphArchive;
  _objc_retain(MFImageGlyphArchive);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = sub_1002A7840(v1, v2);
  _objc_release(v15);
  v29 = v16;
  sub_100295C30();
  _objc_retain(v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v27[0] = Strong;
  }

  else
  {
    memset(v27, 0, sizeof(v27));
    ObjectType = 0;
  }

  v14 = sub_100296284(v16, 0, v27, "deleteButtonTapped:");
  v26 = v14;
  _objc_retain(v14);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Archive", 7uLL, 1);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v5._countAndFlagsBits = sub_100015E30();
  v5._object = v6;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, bundle, v5, v4);

  _objc_release(bundle);

  v9 = String._bridgeToObjectiveC()();

  [v14 setTitle:v9];
  _objc_release(v9);
  _objc_release(v14);
  _objc_retain(v14);
  v10 = MSAccessibilityIdentifierMailConversationViewArchiveButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewArchiveButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();

  _objc_release(v10);
  [v14 setAccessibilityIdentifier:v11];
  _objc_release(v11);
  _objc_release(v14);
  v12 = swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  v24 = sub_1002A76CC;
  v25 = v12;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = 0;
  v22 = sub_100298560;
  v23 = &unk_100658E90;
  v13 = _Block_copy(&aBlock);

  [v14 _setSecondaryActionsProvider:v13];
  _Block_release(v13);
  _objc_release(v16);
  return v14;
}

id sub_100298248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v34 = 0;
  v38 = a1;
  v37 = a2;
  v27 = a3 + 16;
  v36 = a3 + 16;
  v28 = v35;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  v25 = v29;
  v22 = v29;
  v34 = v29;
  v23 = &v29[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_delegate];
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  v33 = v3;
  if (v3)
  {
    v20 = v33;
    v19 = v33;
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    sub_100015DA0(v26, v31);
    if (v32)
    {
      v13 = v32;
      v16 = v31;
      sub_10027EC3C(v31, v32);
      v11 = *(v13 - 8);
      v12 = v11;
      v15 = &v6;
      __chkstk_darwin(&v6);
      v14 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))();
      v17 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v14, v13);
      sub_1000160F4(v16);
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v8 = v18;
    v9 = [v19 deleteButtonMenuForConversationNavigationBarItemsManager:v22 menuOwner:?];
    swift_unknownObjectRelease();
    v10 = v9;
    swift_unknownObjectRelease();
    v21 = v10;
  }

  else
  {
    sub_100294754();
    swift_endAccess();
    v21 = 0;
  }

  v7 = v21;

  return v7;
}

id sub_100298560(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);

  swift_unknownObjectRetain();
  if (a2)
  {
    v8[3] = swift_getObjectType();
    v8[0] = a2;
    sub_100014898(v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  _objc_retain(a3);
  if (a3)
  {
    sub_1002A7738();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(a3);
  }

  v4 = v6();

  sub_10000B0D8(v9);

  return v4;
}

void (*ConversationNavigationBarItemsManager.archiveButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.archiveButtonItem.getter();
  return sub_100298724;
}

void sub_100298724(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.archiveButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.archiveButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.deleteButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___deleteButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100298A1C(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___deleteButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.deleteButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___deleteButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100298A1C(char *a1)
{
  v26 = 0;
  v30 = a1;
  sub_1002A75C8();
  v15 = MFImageGlyphTrash;
  _objc_retain(MFImageGlyphTrash);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = sub_1002A7840(v1, v2);
  _objc_release(v15);
  v29 = v16;
  sub_100295C30();
  _objc_retain(v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v27[0] = Strong;
  }

  else
  {
    memset(v27, 0, sizeof(v27));
    ObjectType = 0;
  }

  v14 = sub_100296284(v16, 0, v27, "deleteButtonTapped:");
  v26 = v14;
  _objc_retain(v14);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete", 6uLL, 1);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v5._countAndFlagsBits = sub_100015E30();
  v5._object = v6;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, bundle, v5, v4);

  _objc_release(bundle);

  v9 = String._bridgeToObjectiveC()();

  [v14 setTitle:v9];
  _objc_release(v9);
  _objc_release(v14);
  _objc_retain(v14);
  v10 = MSAccessibilityIdentifierMailConversationViewDeleteButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewDeleteButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();

  _objc_release(v10);
  [v14 setAccessibilityIdentifier:v11];
  _objc_release(v11);
  _objc_release(v14);
  v12 = swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  v24 = sub_1002A76CC;
  v25 = v12;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = 0;
  v22 = sub_100298560;
  v23 = &unk_100658E68;
  v13 = _Block_copy(&aBlock);

  [v14 _setSecondaryActionsProvider:v13];
  _Block_release(v13);
  _objc_release(v16);
  return v14;
}

void (*ConversationNavigationBarItemsManager.deleteButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.deleteButtonItem.getter();
  return sub_100298EB0;
}

void sub_100298EB0(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.deleteButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.deleteButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.destructiveButtonItem.getter()
{
  v3 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useArchiveButton);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  if (v4)
  {
    return ConversationNavigationBarItemsManager.archiveButtonItem.getter();
  }

  else
  {
    return ConversationNavigationBarItemsManager.deleteButtonItem.getter();
  }
}

uint64_t sub_1002990A4()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("destructiveGroup", 0x10uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.destructiveButtonItem.getter();
  sub_1002612B0();
  sub_100270C94();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.moveButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___moveButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100299408(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___moveButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.moveButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___moveButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100299408(uint64_t a1)
{
  v19 = a1;
  sub_1002A75C8();
  v12 = MFImageGlyphMove;
  _objc_retain(MFImageGlyphMove);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = sub_1002A7840(v1, v2);
  _objc_release(v12);
  v18 = v13;
  sub_100295C30();
  _objc_retain(v13);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v16[0] = Strong;
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    ObjectType = 0;
  }

  v15 = sub_100296284(v13, 0, v16, "moveButtonTapped:");
  _objc_retain(v15);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Move", 4uLL, 1);
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("button item title in the navigation bar", 0x27uLL, 1);
  bundle = sub_10028FEB4();
  v5._countAndFlagsBits = sub_100015E30();
  v5._object = v6;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, bundle, v5, v4);

  _objc_release(bundle);

  v9 = String._bridgeToObjectiveC()();

  [v15 setTitle:v9];
  _objc_release(v9);
  _objc_release(v15);
  _objc_retain(v15);
  v10 = MSAccessibilityIdentifierMailConversationViewMoveButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewMoveButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();

  _objc_release(v10);
  [v15 setAccessibilityIdentifier:v11];
  _objc_release(v11);
  _objc_release(v15);
  _objc_release(v13);
  return v15;
}

void (*ConversationNavigationBarItemsManager.moveButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.moveButtonItem.getter();
  return sub_10029978C;
}

void sub_10029978C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.moveButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.moveButtonItem.setter(*a1);
  }
}

uint64_t sub_100299878()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("moveGroup", 9uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.moveButtonItem.getter();
  sub_1002612B0();
  sub_100270C94();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.flagButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___flagButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100299BDC(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___flagButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.flagButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___flagButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100299BDC(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "flagButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewFlagButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewFlagButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:6];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.flagButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.flagButtonItem.getter();
  return sub_100299E6C;
}

void sub_100299E6C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.flagButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.flagButtonItem.setter(*a1);
  }
}

uint64_t sub_100299F58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v3 = ConversationNavigationBarItemsManager.flagButtonItem.getter();
    [Strong conversationNavigationBarItemsManager:v4 validateBarButtonItem:? ofType:?];
    _objc_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("flagGroup", 9uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.flagButtonItem.getter();
  sub_1002612B0();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.readButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___readButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029A380(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___readButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.readButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___readButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029A380(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "readButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewReadButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewReadButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:7];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.readButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.readButtonItem.getter();
  return sub_10029A610;
}

void sub_10029A610(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.readButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.readButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.unreadButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___unreadButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029A908(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___unreadButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.unreadButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___unreadButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029A908(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "unreadButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewUnreadButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewUnreadButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:8];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.unreadButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.unreadButtonItem.getter();
  return sub_10029AB98;
}

void sub_10029AB98(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.unreadButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.unreadButtonItem.setter(*a1);
  }
}

uint64_t sub_10029AC84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v5 = ConversationNavigationBarItemsManager.unreadButtonItem.getter();
    [Strong conversationNavigationBarItemsManager:v6 validateBarButtonItem:? ofType:?];
    _objc_release(v5);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v4 = ConversationNavigationBarItemsManager.readButtonItem.getter();
    [v7 conversationNavigationBarItemsManager:v6 validateBarButtonItem:? ofType:?];
    _objc_release(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("readGroup", 9uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  *v0 = ConversationNavigationBarItemsManager.unreadButtonItem.getter();
  v2[1] = ConversationNavigationBarItemsManager.readButtonItem.getter();
  sub_1002612B0();
  v3 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v3;
}

id ConversationNavigationBarItemsManager.junkButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___junkButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029B184(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___junkButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.junkButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___junkButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029B184(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "junkButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewJunkButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewJunkButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:9];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.junkButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.junkButtonItem.getter();
  return sub_10029B414;
}

void sub_10029B414(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.junkButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.junkButtonItem.setter(*a1);
  }
}

uint64_t sub_10029B500()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v3 = ConversationNavigationBarItemsManager.junkButtonItem.getter();
    [Strong conversationNavigationBarItemsManager:v4 validateBarButtonItem:? ofType:?];
    _objc_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("junkGroup", 9uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.junkButtonItem.getter();
  sub_1002612B0();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.muteButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___muteButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029B928(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___muteButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.muteButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___muteButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029B928(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "muteButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewMuteButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewMuteButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:10];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.muteButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.muteButtonItem.getter();
  return sub_10029BBB8;
}

void sub_10029BBB8(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.muteButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.muteButtonItem.setter(*a1);
  }
}

uint64_t sub_10029BCA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v3 = ConversationNavigationBarItemsManager.muteButtonItem.getter();
    [Strong conversationNavigationBarItemsManager:v4 validateBarButtonItem:? ofType:?];
    _objc_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("muteGroup", 9uLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.muteButtonItem.getter();
  sub_1002612B0();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.laterButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___laterButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029C0CC(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___laterButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.laterButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___laterButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029C0CC(uint64_t a1)
{
  v10 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v8[0] = Strong;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    ObjectType = 0;
  }

  v4 = sub_100296284(0, 0, v8, "laterButtonTapped:");
  _objc_retain(v4);
  v2 = MSAccessibilityIdentifierMailConversationViewLaterButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewLaterButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  _objc_release(v2);
  [v4 setAccessibilityIdentifier:v3];
  _objc_release(v3);
  _objc_release(v4);
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    [v7 conversationNavigationBarItemsManager:a1 validateBarButtonItem:v4 ofType:11];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  return v4;
}

void (*ConversationNavigationBarItemsManager.laterButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.laterButtonItem.getter();
  return sub_10029C35C;
}

void sub_10029C35C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.laterButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.laterButtonItem.setter(*a1);
  }
}

uint64_t sub_10029C448()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v3 = ConversationNavigationBarItemsManager.laterButtonItem.getter();
    [Strong conversationNavigationBarItemsManager:v4 validateBarButtonItem:? ofType:?];
    _objc_release(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100294754();
    swift_endAccess();
  }

  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("laterGroup", 0xAuLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.laterButtonItem.getter();
  sub_1002612B0();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

id ConversationNavigationBarItemsManager.composeButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___composeButtonItem);
  swift_beginAccess();
  v8 = *v7;
  sub_10029C764(*v7);
  swift_endAccess();
  if (v8 != 1)
  {
    return v8;
  }

  v4 = sub_10029C89C(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___composeButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  sub_10029CB20(v1);
  swift_endAccess();
  return v4;
}

id sub_10029C764(id result)
{
  if (result != 1)
  {
    return _objc_retain(result);
  }

  return result;
}

void ConversationNavigationBarItemsManager.composeButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___composeButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  sub_10029CB20(v2);
  swift_endAccess();
  _objc_release(a1);
}

void *sub_10029C89C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v1 = [Strong respondsToSelector:"newComposeButtonItem"];
  if (v1)
  {
    swift_unknownObjectRetain();
    *(swift_allocObject() + 16) = Strong;
    v9 = sub_1002A76A8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v6 = v9();

    swift_unknownObjectRelease();
    v7 = v6;
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = 0;
  }

  if (!v7)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  _objc_retain(v7);
  v3 = MSAccessibilityIdentifierMailConversationViewComposeButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewComposeButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  _objc_release(v3);
  [v7 setAccessibilityIdentifier:v4];
  _objc_release(v4);
  _objc_release(v7);
  swift_unknownObjectRelease();
  return v7;
}

void sub_10029CB20(void *a1)
{
  if (a1 != 1)
  {
    _objc_release(a1);
  }
}

void (*ConversationNavigationBarItemsManager.composeButtonItem.modify(void **a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.composeButtonItem.getter();
  return sub_10029CBBC;
}

void sub_10029CBBC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.composeButtonItem.setter(v2);
    sub_10026A58C(a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.composeButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___contactLeftDoneButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029CEA8(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___contactLeftDoneButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___contactLeftDoneButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029CEA8(uint64_t a1)
{
  v5 = a1;
  sub_100295C30();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v3[0] = Strong;
  }

  else
  {
    memset(v3, 0, sizeof(v3));
    ObjectType = 0;
  }

  return sub_100295C94(0, v3, "contactDoneButtonItemTapped:");
}

void (*ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.getter();
  return sub_10029CFF4;
}

void sub_10029CFF4(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.contactLeftDoneButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.leftSpaceItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___leftSpaceItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029D2E8();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___leftSpaceItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.leftSpaceItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___leftSpaceItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029D2E8()
{
  sub_100295C30();
  memset(v2, 0, sizeof(v2));
  v1 = sub_100295C94(6, v2, 0);
  [v1 setWidth:11.0];
  return v1;
}

void (*ConversationNavigationBarItemsManager.leftSpaceItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.leftSpaceItem.getter();
  return sub_10029D3C0;
}

void sub_10029D3C0(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.leftSpaceItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.leftSpaceItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.arrowControlsButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029D6B8();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.arrowControlsButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029D6B8()
{
  sub_100295C30();
  v0 = ConversationNavigationBarItemsManager.arrowControlsView.getter();
  return sub_10029D810(v0);
}

id ConversationNavigationBarItemsManager.arrowControlsView.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsView);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029F5EC(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsView);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void (*ConversationNavigationBarItemsManager.arrowControlsButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.arrowControlsButtonItem.getter();
  return sub_10029D8AC;
}

void sub_10029D8AC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.arrowControlsButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.arrowControlsButtonItem.setter(*a1);
  }
}

uint64_t ConversationNavigationBarItemsManager.arrowControlsButtonItems.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItems);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  sub_10029DBB8();
  v4 = v1;

  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItems);
  swift_beginAccess();
  *v3 = v4;

  swift_endAccess();
  return v4;
}

uint64_t ConversationNavigationBarItemsManager.arrowControlsButtonItems.setter(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsButtonItems);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void sub_10029DBB8()
{
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  v1 = v0;
  *v0 = ConversationNavigationBarItemsManager.downArrowBarButtonItem.getter();
  v1[1] = ConversationNavigationBarItemsManager.upArrowBarButtonItem.getter();
  sub_1002612B0();
}

Class ConversationNavigationBarItemsManager.downArrowBarButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___downArrowBarButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  isa = sub_1002A0004(v6).super.super.isa;
  _objc_retain(isa);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___downArrowBarButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = isa;
  _objc_release(v1);
  swift_endAccess();
  return isa;
}

Class ConversationNavigationBarItemsManager.upArrowBarButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___upArrowBarButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  isa = sub_10029FAD4(v6).super.super.isa;
  _objc_retain(isa);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___upArrowBarButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = isa;
  _objc_release(v1);
  swift_endAccess();
  return isa;
}

void (*ConversationNavigationBarItemsManager.arrowControlsButtonItems.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.arrowControlsButtonItems.getter();
  return sub_10029DEB4;
}

void sub_10029DEB4(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    ConversationNavigationBarItemsManager.arrowControlsButtonItems.setter(v2);
    sub_100264880(a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.arrowControlsButtonItems.setter(*a1);
  }
}

Class ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.getter()
{
  v8 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___groupedSenderActionsButtonItem);
  swift_beginAccess();
  v9 = *v8;
  sub_10029C764(*v8);
  swift_endAccess();
  if (v9 != 1)
  {
    return v9;
  }

  v3 = swift_allocObject();
  _objc_retain(v7);
  swift_unknownObjectWeakInit();
  _objc_release(v7);

  v5 = sub_10029E200(v3);

  _objc_retain(v5);
  v4 = &v7[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___groupedSenderActionsButtonItem];
  swift_beginAccess();
  v1 = *v4;
  *v4 = v5;
  sub_10029CB20(v1);
  swift_endAccess();
  return v5;
}

void ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___groupedSenderActionsButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  sub_10029CB20(v2);
  swift_endAccess();
  _objc_release(a1);
}

Class sub_10029E200(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  v16 = v1;
  if (v1)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    _objc_retain(Strong);
    v12 = [v16 groupedSenderActionMenuForConversationNavigationBarItemsManager:Strong menuOwner:Strong];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v13 = v12;
  }

  else
  {
    sub_100294754();
    swift_endAccess();
    v13 = 0;
  }

  if (MUISolariumFeatureEnabled())
  {
    sub_100295C30();
    sub_1002A75C8();
    v9 = MFImageGlyphMoreActions;
    _objc_retain(MFImageGlyphMoreActions);
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    image = sub_1002A7840(v2, v3);
    _objc_release(v9);
    v17.value.super.isa = image;
    v17.is_nil = 0;
    v18.value.super.super.isa = v13;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v17, v18, v19).super.super.isa;
    _objc_release(Strong);
    return isa;
  }

  else
  {
    v6 = objc_opt_self();
    v5 = MFImageGlyphMoreActions;
    _objc_retain(MFImageGlyphMoreActions);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();

    _objc_release(v5);
    v8 = [v6 mui_capsuleButtonItemWithTitle:0 titleColor:0 imageName:v7 menu:v13];
    _objc_release(v7);
    _objc_release(v13);
    _objc_release(Strong);
    return v8;
  }
}

void (*ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.modify(Class *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.getter();
  return sub_10029E558;
}

void sub_10029E558(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.setter(v2);
    sub_10026A58C(a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.groupedSenderActionsButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.cleanBackButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___cleanBackButtonItem);
  swift_beginAccess();
  v8 = *v7;
  sub_10029C764(*v7);
  swift_endAccess();
  if (v8 != 1)
  {
    return v8;
  }

  v4 = sub_10029E830(v6);
  _objc_retain(v4);
  v3 = &v6[OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___cleanBackButtonItem];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  sub_10029CB20(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.cleanBackButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___cleanBackButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  sub_10029CB20(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029E830(void *a1)
{
  sub_100015D3C();
  v5 = swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  sub_100015E30();
  v4 = sub_100015E5C();
  v2 = variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v7 = objc_opt_self();
  v6 = MFImageGlyphBackChevron;
  _objc_retain(MFImageGlyphBackChevron);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = String._bridgeToObjectiveC()();

  _objc_release(v6);
  _objc_retain(v9);
  v10 = [v7 mui_capsuleButtonItemWithTitle:0 titleColor:0 imageName:v8 action:{v9, 0, v4, v2, sub_1002A762C, v5}];
  _objc_release(v9);
  _objc_release(v8);
  _objc_release(v9);
  return v10;
}

void sub_10029EA3C(void *a1, uint64_t a2)
{
  v9[5] = a1;
  v9[4] = (a2 + 16);
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v6 = v9[0];
    _objc_retain(v9[0]);
    sub_10026A58C(v9);
    swift_endAccess();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      _objc_release(v6);
      swift_getObjectType();
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v2 = v7;
        _objc_retain(v7);
        sub_10026A58C(&v7);
        swift_endAccess();
        v3 = ConversationNavigationBarItemsManager.cleanBackButtonItem.getter();
        _objc_release(v2);
        v4 = v3;
      }

      else
      {
        sub_10026A58C(&v7);
        swift_endAccess();
        v4 = 0;
      }

      [v5 customBackButtonTapped:?];
      _objc_release(v4);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
      _objc_release(v6);
    }
  }

  else
  {
    sub_10026A58C(v9);
    swift_endAccess();
  }
}

void (*ConversationNavigationBarItemsManager.cleanBackButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.cleanBackButtonItem.getter();
  return sub_10029ECCC;
}

void sub_10029ECCC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.cleanBackButtonItem.setter(v2);
    sub_10026A58C(a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.cleanBackButtonItem.setter(*a1);
  }
}

id ConversationNavigationBarItemsManager.categorizeButtonItem.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___categorizeButtonItem);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_10029EFB8(v6);
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___categorizeButtonItem);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void ConversationNavigationBarItemsManager.categorizeButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___categorizeButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029EFB8(uint64_t a1)
{
  v15 = a1;
  sub_1002A75C8();
  v8 = MFImageGlyphCategorizationAction;
  _objc_retain(MFImageGlyphCategorizationAction);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = sub_1002A7840(v1, v2);
  _objc_release(v8);
  v14 = v9;
  sub_100295C30();
  _objc_retain(v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v12[0] = Strong;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    ObjectType = 0;
  }

  v11 = sub_100296284(v9, 0, v12, "categorizationButtonTapped:");
  _objc_retain(v11);
  v4 = [objc_opt_self() categorizeToolbarTitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();

  _objc_release(v4);
  [v11 setTitle:v5];
  _objc_release(v5);
  _objc_release(v11);
  _objc_retain(v11);
  v6 = MSAccessibilityIdentifierMailConversationViewCategorizationButton;
  _objc_retain(MSAccessibilityIdentifierMailConversationViewCategorizationButton);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = String._bridgeToObjectiveC()();

  _objc_release(v6);
  [v11 setAccessibilityIdentifier:v7];
  _objc_release(v7);
  _objc_release(v11);
  _objc_release(v9);
  return v11;
}

void (*ConversationNavigationBarItemsManager.categorizeButtonItem.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.categorizeButtonItem.getter();
  return sub_10029F2AC;
}

void sub_10029F2AC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.categorizeButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.categorizeButtonItem.setter(*a1);
  }
}

uint64_t sub_10029F398()
{
  sub_100296B8C();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("categorizeGroup", 0xFuLL, 1);
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  *v0 = ConversationNavigationBarItemsManager.categorizeButtonItem.getter();
  sub_1002612B0();
  v2 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

  return v2;
}

void ConversationNavigationBarItemsManager.arrowControlsView.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___arrowControlsView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_10029F5EC(uint64_t a1)
{
  sub_1002A7644();
  v12 = sub_10029F834(0.0, 0.0, 0.0, 0.0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  [v12 setDelegate:Strong];
  swift_unknownObjectRelease();
  v13 = [v12 upButton];
  if (v13)
  {
    v10 = v13;
  }

  else
  {
    LOBYTE(v2) = 2;
    v4 = 385;
    LODWORD(v6) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v10 setEnabled:{0, v2, v4, v6}];
  _objc_release(v10);
  v9 = [v12 downButton];
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    LOBYTE(v3) = 2;
    v5 = 386;
    LODWORD(v7) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v8 setEnabled:{0, v3, v5, v7}];
  _objc_release(v8);
  [v12 sizeToFit];
  return v12;
}

void (*ConversationNavigationBarItemsManager.arrowControlsView.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.arrowControlsView.getter();
  return sub_10029F8E8;
}

void sub_10029F8E8(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.arrowControlsView.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.arrowControlsView.setter(*a1);
  }
}

void ConversationNavigationBarItemsManager.upArrowBarButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___upArrowBarButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

UIBarButtonItem sub_10029FAD4(void *a1)
{
  sub_100295C30();
  sub_1002A75C8();
  v4 = MFImageGlyphUpArrow;
  _objc_retain(MFImageGlyphUpArrow);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6.value.super.isa = sub_1002A7840(v1, v2);
  _objc_release(v4);
  sub_100015D3C();
  swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  sub_100015E30();
  sub_100015E5C();
  variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  v6.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v7.value.super.super.isa = 0;
  return UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v6, v7, v8);
}

void sub_10029FC74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v4 = v2;
    if (v2)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      [v4 conversationNavigationBarItemsManager:Strong didTapArrowControlButtonWithDirection:0xFFFFFFFFLL];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    _objc_release(Strong);
  }
}

void (*ConversationNavigationBarItemsManager.upArrowBarButtonItem.modify(Class *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.upArrowBarButtonItem.getter();
  return sub_10029FE18;
}

void sub_10029FE18(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.upArrowBarButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.upArrowBarButtonItem.setter(*a1);
  }
}

void ConversationNavigationBarItemsManager.downArrowBarButtonItem.setter(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___downArrowBarButtonItem);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

UIBarButtonItem sub_1002A0004(void *a1)
{
  sub_100295C30();
  sub_1002A75C8();
  v4 = MFImageGlyphDownArrow;
  _objc_retain(MFImageGlyphDownArrow);
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6.value.super.isa = sub_1002A7840(v1, v2);
  _objc_release(v4);
  sub_100015D3C();
  swift_allocObject();
  _objc_retain(a1);
  swift_unknownObjectWeakInit();
  _objc_release(a1);

  sub_100015E30();
  sub_100015E5C();
  variable initialization expression of MailStatusMailboxActivityObserver.delegate();
  v6.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v7.value.super.super.isa = 0;
  return UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v6, v7, v8);
}

void sub_1002A01A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v4 = v2;
    if (v2)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      [v4 conversationNavigationBarItemsManager:Strong didTapArrowControlButtonWithDirection:1];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
      swift_endAccess();
    }

    _objc_release(Strong);
  }
}

void (*ConversationNavigationBarItemsManager.downArrowBarButtonItem.modify(Class *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = ConversationNavigationBarItemsManager.downArrowBarButtonItem.getter();
  return sub_1002A0348;
}

void sub_1002A0348(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    ConversationNavigationBarItemsManager.downArrowBarButtonItem.setter(v2);
    _objc_release(*a1);
  }

  else
  {
    ConversationNavigationBarItemsManager.downArrowBarButtonItem.setter(*a1);
  }
}

uint64_t sub_1002A03C8()
{
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___buttonMapping);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1002A04BC(v5);

  v2 = (v5 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___buttonMapping);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1002A04BC(uint64_t a1)
{
  v3[1] = a1;
  sub_100295C30();
  sub_1002A7290();
  v3[0] = Dictionary.init()();
  ConversationNavigationBarItemsManager.archiveButtonItem.getter();
  sub_10025C9B0(&qword_1006D77D8, &qword_1004FF898);
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.deleteButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.moveButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.replyButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.replyAllButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.forwardButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.flagButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.readButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.unreadButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.junkButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.muteButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.laterButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.composeButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.revealActionsButtonItem.getter();
  Dictionary.subscript.setter();
  ConversationNavigationBarItemsManager.categorizeButtonItem.getter();
  Dictionary.subscript.setter();
  v2 = v3[0];

  sub_100264880(v3);
  return v2;
}

uint64_t sub_1002A0828(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager____lazy_storage___buttonMapping);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1002A08A8(uint64_t a1, void *a2)
{
  v64 = a1;
  v63 = a2;
  v56 = sub_10026E82C;
  v57 = sub_1002A5B9C;
  v58 = sub_10026EE84;
  v59 = sub_10026434C;
  v60 = sub_10026434C;
  v61 = sub_10026EF2C;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v62 = 0;
  v74 = 0;
  v65 = type metadata accessor for Logger();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v69 = v23 - v68;
  v84 = __chkstk_darwin(v64);
  v83 = v3;
  v82 = v2;
  v71 = &v81;
  v81 = v84;
  v70 = &v80;
  v80 = 12;
  sub_1002A11B0();
  if (== infix<A>(_:_:)())
  {
    return 1;
  }

  else
  {
    swift_unknownObjectRetain();
    if (v63)
    {
      v54 = v63;
      v52 = v63;
      v74 = v63;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v53 = [v52 isEditable];
      swift_unknownObjectRelease();
      if (v53)
      {
        v46 = &type metadata for ConversationNavigationBarItemType;
        _allocateUninitializedArray<A>(_:)();
        *v4 = 0;
        v4[1] = 1;
        sub_1002612B0();
        v50 = &v73;
        v73 = v5;
        v49 = &v72;
        v72 = v64;
        v47 = sub_10025C9B0(&qword_1006D7730, &unk_1004FF6E0);
        v48 = sub_1002A6D18();
        sub_1002A6DA0();
        v51 = Sequence<>.contains(_:)();
        sub_100264880(v50);
        if (v51)
        {
          swift_unknownObjectRelease();
          return 1;
        }

        else
        {
          swift_unknownObjectRelease();
          return 0;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        return 2;
      }
    }

    else
    {
      v6 = v69;
      v7 = sub_1002942C0();
      (*(v66 + 16))(v6, v7, v65);
      v35 = 7;
      v32 = swift_allocObject();
      *(v32 + 16) = v64;

      v34 = 32;
      v8 = swift_allocObject();
      v9 = v32;
      v36 = v8;
      *(v8 + 16) = v56;
      *(v8 + 24) = v9;

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v33 = 17;
      v38 = swift_allocObject();
      *(v38 + 16) = 32;
      v39 = swift_allocObject();
      *(v39 + 16) = 8;
      v10 = swift_allocObject();
      v11 = v36;
      v37 = v10;
      *(v10 + 16) = v57;
      *(v10 + 24) = v11;
      v12 = swift_allocObject();
      v13 = v37;
      v41 = v12;
      *(v12 + 16) = v58;
      *(v12 + 24) = v13;
      v43 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      v40 = _allocateUninitializedArray<A>(_:)();
      v42 = v14;

      v15 = v38;
      v16 = v42;
      *v42 = v59;
      v16[1] = v15;

      v17 = v39;
      v18 = v42;
      v42[2] = v60;
      v18[3] = v17;

      v19 = v41;
      v20 = v42;
      v42[4] = v61;
      v20[5] = v19;
      sub_1002612B0();

      if (os_log_type_enabled(v44, v45))
      {
        v21 = v62;
        v25 = static UnsafeMutablePointer.allocate(capacity:)();
        v24 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v26 = sub_1002641E8(0, v24, v24);
        v27 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v28 = &v79;
        v79 = v25;
        v29 = &v78;
        v78 = v26;
        v30 = &v77;
        v77 = v27;
        sub_10026423C(2, &v79);
        sub_10026423C(1, v28);
        v75 = v59;
        v76 = v38;
        sub_100264250(&v75, v28, v29, v30);
        v31 = v21;
        if (v21)
        {

          __break(1u);
        }

        else
        {
          v75 = v60;
          v76 = v39;
          sub_100264250(&v75, &v79, &v78, &v77);
          v23[1] = 0;
          v75 = v61;
          v76 = v41;
          sub_100264250(&v75, &v79, &v78, &v77);
          _os_log_impl(&_mh_execute_header, v44, v45, "Reference message does not exist. Disable bar button item of type: %s", v25, 0xCu);
          sub_10026429C(v26, 0);
          sub_10026429C(v27, 1);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v44);
      (*(v66 + 8))(v69, v65);
      return 0;
    }
  }
}

unint64_t sub_1002A11B0()
{
  v2 = qword_1006D7710;
  if (!qword_1006D7710)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7710);
    return WitnessTable;
  }

  return v2;
}

uint64_t ConversationNavigationBarItemsManager.updateEnabledStatesForMessage(_:)(void *a1)
{
  v198 = a1;
  v193 = 0;
  v233 = 0;
  v232 = 0;
  v231[1] = 0;
  v231[0] = 0;
  v208 = 0;
  v219 = 0;
  v212 = 0;
  v210 = 0;
  v189 = type metadata accessor for Date();
  v190 = *(v189 - 8);
  v191 = v190;
  __chkstk_darwin(v189 - 8);
  v192 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = *(*(sub_10025C9B0(&qword_1006D8740, &unk_100501CB0) - 8) + 64);
  v3 = __chkstk_darwin(v193);
  v196 = (v194 + 15) & 0xFFFFFFFFFFFFFFF0;
  v195 = &v49 - v196;
  __chkstk_darwin(v3);
  v197 = &v49 - v196;
  v199 = type metadata accessor for Logger();
  v200 = *(v199 - 8);
  v201 = v200;
  v203 = *(v200 + 64);
  v4 = __chkstk_darwin(v198);
  v205 = (v203 + 15) & 0xFFFFFFFFFFFFFFF0;
  v202 = &v49 - v205;
  v5 = __chkstk_darwin(v4);
  v204 = &v49 - v205;
  v6 = __chkstk_darwin(v5);
  v206 = &v49 - v205;
  v233 = v6;
  v232 = v1;
  static ConversationNavigationBarItemType.allCases.getter();
  v230 = v7;
  v207 = sub_10025C9B0(&qword_1006D7730, &unk_1004FF6E0);
  sub_1002A6E68();
  Collection<>.makeIterator()();
  for (i = v208; ; i = v173)
  {
    v186 = i;
    sub_10025C9B0(&qword_1006D7758, &qword_1004FF6F0);
    IndexingIterator.next()();
    v187 = v228[1];
    if (v229)
    {
      break;
    }

    v185 = v187;
    v180 = v187;
    v219 = v187;
    v182 = sub_1002A03C8();
    v181 = v182;
    v217[1] = v180;
    v183 = sub_100295C30();
    sub_1002A7290();
    Dictionary.subscript.getter();
    v184 = v218;
    if (v218)
    {
      v179 = v184;
      v177 = v184;
      v212 = v184;

      v178 = sub_1002A08A8(v180, v198);
      if (v178 == 2)
      {
        [v177 setEnabled:1];
        v175 = v188 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_delegate;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v174 = Strong;
          swift_unknownObjectRetain();
          sub_100294754();
          swift_endAccess();
          swift_getObjectType();
          [v174 conversationNavigationBarItemsManager:v188 validateBarButtonItem:v177 ofType:v180];
          swift_unknownObjectRelease();
        }

        else
        {
          sub_100294754();
          swift_endAccess();
        }
      }

      else
      {
        v176 = v178;
        v210 = v178 & 1;
        [v177 setEnabled:?];
      }

      v173 = v186;
    }

    else
    {
      v8 = v206;

      v9 = sub_1002942C0();
      (*(v201 + 16))(v8, v9, v199);
      v161 = 7;
      v153 = swift_allocObject();
      *(v153 + 16) = v180;

      v156 = 32;
      v160 = 32;
      v10 = swift_allocObject();
      v11 = v153;
      v162 = v10;
      *(v10 + 16) = sub_10026E82C;
      *(v10 + 24) = v11;

      v172 = Logger.logObject.getter();
      v154 = v172;
      v171 = static os_log_type_t.default.getter();
      v155 = v171;
      v157 = 17;
      v165 = swift_allocObject();
      v158 = v165;
      *(v165 + 16) = v156;
      v166 = swift_allocObject();
      v159 = v166;
      *(v166 + 16) = 8;
      v12 = swift_allocObject();
      v13 = v162;
      v163 = v12;
      *(v12 + 16) = sub_1002A5B9C;
      *(v12 + 24) = v13;
      v14 = swift_allocObject();
      v15 = v163;
      v169 = v14;
      v164 = v14;
      *(v14 + 16) = sub_10026EE84;
      *(v14 + 24) = v15;
      v170 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      v167 = _allocateUninitializedArray<A>(_:)();
      v168 = v16;

      v17 = v165;
      v18 = v168;
      *v168 = sub_10026434C;
      v18[1] = v17;

      v19 = v166;
      v20 = v168;
      v168[2] = sub_10026434C;
      v20[3] = v19;

      v21 = v168;
      v22 = v169;
      v168[4] = sub_10026EF2C;
      v21[5] = v22;
      sub_1002612B0();

      if (os_log_type_enabled(v172, v171))
      {
        v23 = v186;
        v143 = static UnsafeMutablePointer.allocate(capacity:)();
        v140 = v143;
        v141 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v144 = sub_1002641E8(0, v141, v141);
        v142 = v144;
        v146 = 1;
        v145 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v217[0] = v143;
        v216 = v144;
        v215 = v145;
        v147 = v217;
        sub_10026423C(2, v217);
        sub_10026423C(v146, v147);
        v213 = sub_10026434C;
        v214 = v158;
        sub_100264250(&v213, v147, &v216, &v215);
        v148 = v23;
        v149 = v158;
        v150 = v159;
        v151 = v164;
        v152 = v23;
        if (v23)
        {
          v135 = v149;
          v136 = v150;
          v137 = v151;
          v138 = 0;
          v124 = v151;
          v123 = v150;

          __break(1u);
        }

        else
        {
          v213 = sub_10026434C;
          v214 = v159;
          sub_100264250(&v213, v217, &v216, &v215);
          v130 = 0;
          v131 = v158;
          v132 = v159;
          v133 = v164;
          v134 = 0;
          v213 = sub_10026EF2C;
          v214 = v164;
          sub_100264250(&v213, v217, &v216, &v215);
          v125 = 0;
          v126 = v158;
          v127 = v159;
          v128 = v164;
          v129 = 0;
          _os_log_impl(&_mh_execute_header, v154, v155, "Cannot find button of type: %s", v140, 0xCu);
          sub_10026429C(v142, 0);
          sub_10026429C(v145, 1);
          UnsafeMutablePointer.deallocate()();

          v139 = v125;
        }
      }

      else
      {
        v24 = v186;

        v139 = v24;
      }

      v122 = v139;

      (*(v201 + 8))(v206, v199);
      v173 = v122;
    }
  }

  sub_100264880(v231);
  v120 = ConversationNavigationBarItemsManager.moveButtonItem.getter();
  v121 = [v120 isEnabled];

  swift_unknownObjectRetain();
  if (v121)
  {
    swift_unknownObjectRetain();
    if (v198)
    {
      v119 = v198;
      v117 = v198;
      swift_getObjectType();
      v118 = [v117 sendLaterDate];
      if (v118)
      {
        v116 = v118;
        v115 = v118;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v191 + 32))(v195, v192, v189);
        (*(v191 + 56))(v195, 0, 1, v189);
      }

      else
      {
        (*(v191 + 56))(v195, 1, 1, v189);
      }

      sub_1002A7168(v195, v197);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v191 + 56))(v197, 1, 1, v189);
    }

    v114 = (*(v191 + 48))(v197, 1, v189) != 1;
    v112 = v114;
    sub_1002A70C0(v197);
    v113 = v112;
  }

  else
  {
    v113 = 0;
  }

  v111 = v113;
  swift_unknownObjectRelease();
  if (v111)
  {
    v25 = v204;
    v26 = sub_1002942C0();
    (*(v201 + 16))(v25, v26, v199);
    v109 = Logger.logObject.getter();
    v106 = v109;
    v108 = static os_log_type_t.default.getter();
    v107 = v108;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v110 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v109, v108))
    {
      v27 = v186;
      v97 = static UnsafeMutablePointer.allocate(capacity:)();
      v93 = v97;
      v94 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v95 = 0;
      v98 = sub_1002641E8(0, v94, v94);
      v96 = v98;
      v99 = sub_1002641E8(v95, &type metadata for Any + 8, &type metadata for Any + 8);
      v223 = v97;
      v222 = v98;
      v221 = v99;
      v100 = 0;
      v101 = &v223;
      sub_10026423C(0, &v223);
      sub_10026423C(v100, v101);
      v220 = v110;
      v102 = &v49;
      __chkstk_darwin(&v49);
      v103 = &v49 - 6;
      *(&v49 - 4) = v28;
      *(&v49 - 3) = &v222;
      *(&v49 - 2) = &v221;
      v104 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v105 = v27;
      if (v27)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v106, v107, "Explicitly disable the move button because message has send later date", v93, 2u);
        v91 = 0;
        sub_10026429C(v96, 0);
        sub_10026429C(v99, v91);
        UnsafeMutablePointer.deallocate()();

        v92 = v105;
      }
    }

    else
    {

      v92 = v186;
    }

    v89 = v92;

    (*(v201 + 8))(v204, v199);
    v88 = ConversationNavigationBarItemsManager.moveButtonItem.getter();
    [v88 setEnabled:0];

    v90 = v89;
  }

  else
  {
    v90 = v186;
  }

  v29 = v202;
  v67 = v90;
  v30 = sub_1002942C0();
  (*(v201 + 16))(v29, v30, v199);
  swift_unknownObjectRetain();
  v76 = 7;
  v73 = swift_allocObject();
  *(v73 + 16) = v198;
  v87 = Logger.logObject.getter();
  v68 = v87;
  v86 = static os_log_type_t.default.getter();
  v69 = v86;
  v70 = 17;
  v80 = swift_allocObject();
  v71 = v80;
  *(v80 + 16) = 0;
  v81 = swift_allocObject();
  v72 = v81;
  *(v81 + 16) = 4;
  v75 = 32;
  v31 = swift_allocObject();
  v32 = v73;
  v74 = v31;
  *(v31 + 16) = sub_1002A6EF0;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v74;
  v77 = v33;
  *(v33 + 16) = sub_1002A6F4C;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v77;
  v78 = v35;
  *(v35 + 16) = sub_1002A6F80;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v78;
  v84 = v37;
  v79 = v37;
  *(v37 + 16) = sub_1002A6FC8;
  *(v37 + 24) = v38;
  v85 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v82 = _allocateUninitializedArray<A>(_:)();
  v83 = v39;

  v40 = v80;
  v41 = v83;
  *v83 = sub_10026434C;
  v41[1] = v40;

  v42 = v81;
  v43 = v83;
  v83[2] = sub_10026434C;
  v43[3] = v42;

  v44 = v83;
  v45 = v84;
  v83[4] = sub_1002A6FD4;
  v44[5] = v45;
  sub_1002612B0();

  if (os_log_type_enabled(v87, v86))
  {
    v46 = v67;
    v61 = static UnsafeMutablePointer.allocate(capacity:)();
    v57 = v61;
    v58 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v59 = 0;
    v62 = sub_1002641E8(0, v58, v58);
    v60 = v62;
    v63 = sub_1002641E8(v59, &type metadata for Any + 8, &type metadata for Any + 8);
    v228[0] = v61;
    v227 = v62;
    v226 = v63;
    v64 = v228;
    sub_10026423C(0, v228);
    sub_10026423C(1, v64);
    v224 = sub_10026434C;
    v225 = v71;
    sub_100264250(&v224, v64, &v227, &v226);
    v65 = v46;
    v66 = v46;
    if (v46)
    {
      v55 = 0;

      __break(1u);
    }

    else
    {
      v224 = sub_10026434C;
      v225 = v72;
      sub_100264250(&v224, v228, &v227, &v226);
      v53 = 0;
      v54 = 0;
      v224 = sub_1002A6FD4;
      v225 = v79;
      sub_100264250(&v224, v228, &v227, &v226);
      v51 = 0;
      v52 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Update bar button items. editable? %{BOOL}d", v57, 8u);
      v50 = 0;
      sub_10026429C(v60, 0);
      sub_10026429C(v63, v50);
      UnsafeMutablePointer.deallocate()();

      v56 = v51;
    }
  }

  else
  {
    v47 = v67;

    v56 = v47;
  }

  return (*(v201 + 8))(v202, v199);
}

uint64_t sub_1002A3128(void *a1)
{
  swift_unknownObjectRetain();
  if (a1)
  {
    swift_getObjectType();
    v3 = [a1 isEditable];
    swift_unknownObjectRelease();
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (v4 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t sub_1002A3264()
{
  result = sub_1002A3288();
  byte_1006EFE20 = result & 1;
  return result;
}

char *sub_1002A32B4()
{
  if (qword_1006D5DB8 != -1)
  {
    swift_once();
  }

  return &byte_1006EFE20;
}

uint64_t sub_1002A338C()
{
  result = sub_1002A33B0();
  byte_1006EFE21 = result & 1;
  return result;
}

uint64_t sub_1002A33B0()
{
  if (*sub_1002A32B4())
  {
    v1 = MUISolariumFeatureEnabled();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

char *sub_1002A33FC()
{
  if (qword_1006D5DC0 != -1)
  {
    swift_once();
  }

  return &byte_1006EFE21;
}

Swift::Void __swiftcall ConversationNavigationBarItemsManager.configureNavigationBar(_:navigationItem:)(UINavigationBar _, UINavigationItem navigationItem)
{
  if (_UIBarsDesktopNavigationBarEnabled())
  {
    v3 = (v6 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_useDesktopClassNavigationBar);
    swift_beginAccess();
    v4 = *v3;
    swift_endAccess();
    if (v4)
    {
      [(objc_class *)navigationItem.super.isa setStyle:1];
    }

    else
    {
      [(objc_class *)navigationItem.super.isa setStyle:?];
      sub_100296B8C();
      _allocateUninitializedArray<A>(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [(objc_class *)navigationItem.super.isa setCenterItemGroups:isa];
      _objc_release(isa);
    }
  }
}

Swift::Void __swiftcall ConversationNavigationBarItemsManager.configureDesktopClassButtons(for:isPrimary:isShowingTitle:animated:)(UINavigationItem a1, Swift::Bool isPrimary, Swift::Bool isShowingTitle, Swift::Bool animated)
{
  isa = a1.super.isa;
  v130 = isPrimary;
  v129 = isShowingTitle;
  v128 = animated;
  v117 = sub_1002A737C;
  v118 = sub_10026E818;
  v119 = sub_10025E604;
  v120 = sub_100264354;
  v121 = sub_10026434C;
  v122 = sub_10026434C;
  v123 = sub_10026EBF8;
  v124 = sub_10026434C;
  v125 = sub_10026434C;
  v126 = sub_1002644E4;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v152 = 0;
  v151 = 0;
  v127 = 0;
  v131 = type metadata accessor for Logger();
  v132 = *(v131 - 8);
  v133 = v131 - 8;
  v134 = (*(v132 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v135 = v36 - v134;
  v161 = __chkstk_darwin(isa);
  v160 = v5 & 1;
  v159 = v6 & 1;
  v158 = v7 & 1;
  v157 = v4;
  v137 = sub_1002A49A8(v5 & 1, v6 & 1);
  v156 = v137;
  v138 = [(objc_class *)isa leftBarButtonItems];
  if (v138)
  {
    v116 = v138;
    v113 = v138;
    sub_100295C30();
    v114 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v113);
    v115 = v114;
  }

  else
  {
    v115 = 0;
  }

  v112 = v115;

  v155 = v137;
  v153 = v112;
  sub_1002A730C(&v155, &v154);
  if (v153)
  {
    sub_1002A730C(&v153, &v140);
    if (v154)
    {
      v108 = &v139;
      v139 = v154;
      v109 = &v140;
      v107 = v140;
      v105 = v154;
      v106 = sub_100295C30();
      sub_1002A7384();
      v110 = static Array<A>.== infix(_:_:)();
      sub_100264880(v108);
      sub_100264880(v109);
      sub_100264880(&v153);
      v111 = v110;
      goto LABEL_10;
    }

    sub_100264880(&v140);
    goto LABEL_12;
  }

  if (v154)
  {
LABEL_12:
    sub_1002A7344(&v153);
    v111 = 0;
    goto LABEL_10;
  }

  sub_100264880(&v153);
  v111 = 1;
LABEL_10:
  v104 = v111;

  if ((v104 & 1) == 0)
  {

    if (v137)
    {
      v103 = v137;
      v100 = v137;
      sub_100295C30();
      v101 = Array._bridgeToObjectiveC()().super.isa;

      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    v99 = v102;
    [objc_class setLeftBarButtonItems:"setLeftBarButtonItems:animated:" animated:?];
    _objc_release(v99);
  }

  if (!v129)
  {
    v98 = 0;
    [(objc_class *)isa setTitle:?];
    [(objc_class *)isa setTitleView:v98];
  }

  v8 = sub_1002A4FE8(v129);
  v9 = v135;
  v77 = v8;
  v152 = v8;
  v10 = sub_1002942C0();
  (*(v132 + 16))(v9, v10, v131);

  v78 = 24;
  v84 = 7;
  v11 = swift_allocObject();
  v12 = isa;
  v79 = v11;
  *(v11 + 16) = v77;
  _objc_retain(v12);
  v85 = swift_allocObject();
  *(v85 + 16) = isa;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v81 = 17;
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  v88 = swift_allocObject();
  v82 = 8;
  *(v88 + 16) = 8;
  v83 = 32;
  v13 = swift_allocObject();
  v14 = v79;
  v80 = v13;
  *(v13 + 16) = v117;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v80;
  v89 = v15;
  *(v15 + 16) = v118;
  *(v15 + 24) = v16;
  v90 = swift_allocObject();
  *(v90 + 16) = 64;
  v91 = swift_allocObject();
  *(v91 + 16) = v82;
  v17 = swift_allocObject();
  v18 = v85;
  v86 = v17;
  *(v17 + 16) = v119;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v86;
  v93 = v19;
  *(v19 + 16) = v120;
  *(v19 + 24) = v20;
  v95 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v92 = _allocateUninitializedArray<A>(_:)();
  v94 = v21;

  v22 = v87;
  v23 = v94;
  *v94 = v121;
  v23[1] = v22;

  v24 = v88;
  v25 = v94;
  v94[2] = v122;
  v25[3] = v24;

  v26 = v89;
  v27 = v94;
  v94[4] = v123;
  v27[5] = v26;

  v28 = v90;
  v29 = v94;
  v94[6] = v124;
  v29[7] = v28;

  v30 = v91;
  v31 = v94;
  v94[8] = v125;
  v31[9] = v30;

  v32 = v93;
  v33 = v94;
  v94[10] = v126;
  v33[11] = v32;
  sub_1002612B0();

  if (os_log_type_enabled(v96, v97))
  {
    v34 = v127;
    v69 = static UnsafeMutablePointer.allocate(capacity:)();
    v68 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v70 = sub_1002641E8(1, v68, v68);
    v71 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    v73 = &v145;
    v145 = v69;
    v74 = &v144;
    v144 = v70;
    v75 = &v143;
    v143 = v71;
    v72 = 2;
    sub_10026423C(2, &v145);
    sub_10026423C(v72, v73);
    v141 = v121;
    v142 = v87;
    sub_100264250(&v141, v73, v74, v75);
    v76 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v141 = v122;
      v142 = v88;
      sub_100264250(&v141, &v145, &v144, &v143);
      v67 = 0;
      v141 = v123;
      v142 = v89;
      sub_100264250(&v141, &v145, &v144, &v143);
      v66 = 0;
      v141 = v124;
      v142 = v90;
      sub_100264250(&v141, &v145, &v144, &v143);
      v65 = 0;
      v141 = v125;
      v142 = v91;
      sub_100264250(&v141, &v145, &v144, &v143);
      v64 = 0;
      v141 = v126;
      v142 = v93;
      sub_100264250(&v141, &v145, &v144, &v143);
      _os_log_impl(&_mh_execute_header, v96, v97, "Setting centerItems.count: %ld on navigationItem: %@", v69, 0x16u);
      sub_10026429C(v70, 1);
      sub_10026429C(v71, 0);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v96);
  (*(v132 + 8))(v135, v131);

  sub_100296B8C();
  v61 = Array._bridgeToObjectiveC()().super.isa;

  [(objc_class *)isa setCenterItemGroups:v61];
  _objc_release(v61);
  v35 = sub_1002A515C();
  v62 = *v35;
  v63 = *(v35 + 1);

  if (v63)
  {
    v59 = v62;
    v60 = v63;
    v56 = v63;
    v57 = String._bridgeToObjectiveC()();

    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v53 = v58;
  [(objc_class *)isa setCustomizationIdentifier:?];
  _objc_release(v53);
  v54 = sub_1002A51BC(v129);
  v151 = v54;
  v55 = [(objc_class *)isa rightBarButtonItems];
  if (v55)
  {
    v52 = v55;
    v49 = v55;
    sub_100295C30();
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v49);
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v48 = v51;

  v150 = v54;
  v148 = v48;
  sub_1002A730C(&v150, &v149);
  if (v148)
  {
    sub_1002A730C(&v148, &v147);
    if (v149)
    {
      v44 = &v146;
      v146 = v149;
      v45 = &v147;
      v43 = v147;
      v41 = v149;
      v42 = sub_100295C30();
      sub_1002A7384();
      v46 = static Array<A>.== infix(_:_:)();
      sub_100264880(v44);
      sub_100264880(v45);
      sub_100264880(&v148);
      v47 = v46;
      goto LABEL_37;
    }

    sub_100264880(&v147);
    goto LABEL_39;
  }

  if (v149)
  {
LABEL_39:
    sub_1002A7344(&v148);
    v47 = 0;
    goto LABEL_37;
  }

  sub_100264880(&v148);
  v47 = 1;
LABEL_37:
  v40 = v47;

  if ((v40 & 1) == 0)
  {

    if (v54)
    {
      v39 = v54;
      v36[1] = v54;
      sub_100295C30();
      v37 = Array._bridgeToObjectiveC()().super.isa;

      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    [(objc_class *)isa setRightBarButtonItems:v38 animated:?];
    _objc_release(v36[0]);
  }
}

uint64_t sub_1002A49A8(char a1, char a2)
{
  v24[1] = 0;
  v26 = a1 & 1;
  v25 = a2 & 1;
  sub_100295C30();
  v24[0] = _allocateUninitializedArray<A>(_:)();
  if (a2)
  {
    v4 = v24[0];

    sub_100264880(v24);
    return v4;
  }

  else
  {
    if (*sub_1002A33FC())
    {
      v18 = ConversationNavigationBarItemsManager.composeButtonItem.getter();
      if (v18)
      {
        _objc_retain(v18);
        sub_10025C9B0(&qword_1006D7790, &qword_1004FF6F8);
        Array.append(_:)();
        _objc_release(v18);
      }
    }

    v16 = (v20 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showSupplementaryButtonItem);
    swift_beginAccess();
    v17 = *v16;
    swift_endAccess();
    if (v17)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        swift_unknownObjectRetain();
        sub_100294754();
        swift_endAccess();
        swift_getObjectType();
        v14 = [Strong supplementaryButtonItemForConversationNavigationBarItemsManager:v20];
        swift_unknownObjectRelease();
        v15 = v14;
      }

      else
      {
        sub_100294754();
        swift_endAccess();
        v15 = 0;
      }

      if (v15)
      {
        _objc_retain(v15);
        sub_10025C9B0(&qword_1006D7790, &qword_1004FF6F8);
        Array.append(_:)();
        _objc_release(v15);
      }
    }

    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      v12 = [v23 shouldAddDoneButtonForConversationNavigationBarItemsManager:v20];
      swift_unknownObjectRelease();
      v13 = v12;
    }

    else
    {
      sub_100294754();
      swift_endAccess();
      v13 = 2;
    }

    if (v13 == 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13;
    }

    if (v11)
    {
      ConversationNavigationBarItemsManager.doneButtonItem.getter();
      sub_10025C9B0(&qword_1006D7790, &qword_1004FF6F8);
      Array.append(_:)();
    }

    v9 = (v20 + OBJC_IVAR____TtC10MobileMail37ConversationNavigationBarItemsManager_showNavigationArrows);
    swift_beginAccess();
    v10 = *v9;
    swift_endAccess();
    if (v10)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      if (*sub_1002A33FC())
      {
        v27.is_nil = 0;
        v27.value.super.super.isa = 0;
        UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemFixedSpace, v27, v2);
        sub_10025C9B0(&qword_1006D7790, &qword_1004FF6F8);
        Array.append(_:)();
      }

      if (MUISolariumFeatureEnabled())
      {
        ConversationNavigationBarItemsManager.arrowControlsButtonItems.getter();
        sub_10025C9B0(&qword_1006D7790, &qword_1004FF6F8);
        sub_1002A748C();
        Array.append<A>(contentsOf:)();
      }

      else
      {
        ConversationNavigationBarItemsManager.arrowControlsButtonItem.getter();
        sub_10025C9B0(&qword_1006D7790, &qword_1004FF6F8);
        Array.append(_:)();
      }
    }

    sub_10025C9B0(&qword_1006D7790, &qword_1004FF6F8);
    sub_1002A7404();
    v7 = Collection.isEmpty.getter();

    if (v7)
    {
      v6 = 0;
    }

    else
    {

      v6 = v24[0];
    }

    sub_100264880(v24);
    return v6;
  }
}

uint64_t sub_1002A4FE8(char a1)
{
  v8[1] = 0;
  v8[0] = 0;
  v9 = a1 & 1;
  if (a1)
  {
    sub_100296B8C();
    return Array.init()();
  }

  else
  {
    v8[0] = sub_1002A53A8();
    v1 = sub_1002A515C();
    v5 = *v1;
    v6 = *(v1 + 1);

    v7[0] = v5;
    v7[1] = v6;
    sub_100268744(v7);
    if (v6)
    {
      sub_10029C448();
      sub_10025C9B0(&qword_1006D77A8, &qword_1004FF700);
      Array.append(_:)();
    }

    v3 = v8[0];

    sub_100264880(v8);
    return v3;
  }
}

__int128 *sub_1002A515C()
{
  if (qword_1006D5DC8 != -1)
  {
    swift_once();
  }

  return &xmmword_1006EFE28;
}

uint64_t sub_1002A51BC(char a1)
{
  if (*sub_1002A33FC() & 1) != 0 || (a1)
  {
    return 0;
  }

  v7 = ConversationNavigationBarItemsManager.composeButtonItem.getter();
  if (!v7)
  {
    return 0;
  }

  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  v4 = v1;
  _objc_retain(v7);
  *v4 = v7;
  sub_1002612B0();
  v5 = v2;
  _objc_release(v7);
  return v5;
}

uint64_t sub_1002A53A8()
{
  v7 = v0;
  sub_100296B8C();
  _allocateUninitializedArray<A>(_:)();
  v5 = v1;
  *v1 = sub_100296AA0();
  v5[1] = sub_1002972D8();
  v5[2] = sub_100297AAC();
  v5[3] = sub_1002990A4();
  v5[4] = sub_100299878();
  v5[5] = sub_100299F58();
  v5[6] = sub_10029AC84();
  v5[7] = sub_10029B500();
  v5[8] = sub_10029BCA4();
  sub_1002612B0();
  v6 = v2;
  if (EMBlackPearlIsFeatureEnabled())
  {
    sub_10029F398();
    sub_10025C9B0(&qword_1006D77A8, &qword_1004FF700);
    Array.append(_:)();
  }

  v4 = v6;

  sub_100264880(&v6);
  return v4;
}

void sub_1002A55A0()
{
  sub_100295C30();
  _allocateUninitializedArray<A>(_:)();
  v1 = v0;
  *v0 = ConversationNavigationBarItemsManager.replyButtonItem.getter();
  v1[1] = ConversationNavigationBarItemsManager.replyAllButtonItem.getter();
  v1[2] = ConversationNavigationBarItemsManager.forwardButtonItem.getter();
  v1[3] = ConversationNavigationBarItemsManager.destructiveButtonItem.getter();
  v1[4] = ConversationNavigationBarItemsManager.moveButtonItem.getter();
  sub_1002612B0();
}

uint64_t sub_1002A5654()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ConversationNavigationBar", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  xmmword_1006EFE28 = v1;
  return result;
}

uint64_t sub_1002A5698()
{
  v1 = *sub_1002A515C();

  return v1;
}

id sub_1002A5818(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a3;
  v16 = a2;
  v17 = a1;
  if (a2[3])
  {
    v9 = v16[3];
    sub_10027EC3C(v16, v9);
    v7 = *(v9 - 8);
    v8 = v7;
    v11 = v5;
    __chkstk_darwin(v5);
    v10 = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))();
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v9);
    sub_1000160F4(v16);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v5[1] = v13;
  v6 = [v14 initWithBarButtonSystemItem:v17 target:? action:?];
  swift_unknownObjectRelease();
  return v6;
}

id sub_1002A5984(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16 = a4;
  v17 = a3;
  v18 = a2;
  v19 = a1;
  if (a3[3])
  {
    v10 = v17[3];
    sub_10027EC3C(v17, v10);
    v8 = *(v10 - 8);
    v9 = v8;
    v12 = &v6;
    __chkstk_darwin(&v6);
    v11 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))();
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v10);
    sub_1000160F4(v17);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v7 = [v15 initWithImage:v19 style:v18 target:v14 action:?];
  swift_unknownObjectRelease();

  return v7;
}

id sub_1002A5B00(void *a1)
{
  v4 = [v1 initWithCustomView:?];
  _objc_release(a1);
  return v4;
}

uint64_t sub_1002A5B9C()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1002A5BF4();

  return sub_10026E834(v4, v3, &type metadata for ConversationNavigationBarItemType, v1);
}

unint64_t sub_1002A5BF4()
{
  v2 = qword_1006D7718;
  if (!qword_1006D7718)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7718);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002A5CA8(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002A5FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = sub_1002A7580;
        v16 = &v37;
        sub_1002A5CA8(sub_1002A759C, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002A6804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1002A6D18()
{
  v2 = qword_1006D7738;
  if (!qword_1006D7738)
  {
    sub_10025CAA4(&qword_1006D7730, &unk_1004FF6E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002A6DA0()
{
  v2 = qword_1006D7740;
  if (!qword_1006D7740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7740);
    return WitnessTable;
  }

  return v2;
}

id *sub_1002A6E1C(id *a1)
{
  if (*a1 != 1)
  {
    _objc_release(*a1);
  }

  return a1;
}

unint64_t sub_1002A6E68()
{
  v2 = qword_1006D7750;
  if (!qword_1006D7750)
  {
    sub_10025CAA4(&qword_1006D7730, &unk_1004FF6E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7750);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002A6F8C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1002A6FD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_1002A7048();

  return sub_10026E9E4(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_1002A7048()
{
  v2 = qword_1006D7760;
  if (!qword_1006D7760)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7760);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002A70C0(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1002A7168(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D8740, &unk_100501CB0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1002A7290()
{
  v2 = qword_1006D7778;
  if (!qword_1006D7778)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7778);
    return WitnessTable;
  }

  return v2;
}

void *sub_1002A730C(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_1002A7384()
{
  v2 = qword_1006D7788;
  if (!qword_1006D7788)
  {
    sub_100295C30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002A7404()
{
  v2 = qword_1006D7798;
  if (!qword_1006D7798)
  {
    sub_10025CAA4(&qword_1006D7790, &qword_1004FF6F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002A748C()
{
  v2 = qword_1006D77A0;
  if (!qword_1006D77A0)
  {
    sub_10025CAA4(&qword_1006D7790, &qword_1004FF6F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D77A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002A75C8()
{
  v2 = qword_1006D77E0;
  if (!qword_1006D77E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D77E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1002A7644()
{
  v2 = qword_1006D77F0;
  if (!qword_1006D77F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D77F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002A76D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1002A7738()
{
  v2 = qword_1006D77F8;
  if (!qword_1006D77F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D77F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002A779C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_1002A7840(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [swift_getObjCClassFromMetadata() systemImageNamed:v3];
  _objc_release(v3);

  return v4;
}

float sub_1002A78B4()
{
  result = 1000.0 - 2.0;
  *&dword_1006EFE38 = 1000.0 - 2.0;
  return result;
}

int *sub_1002A78D0()
{
  if (qword_1006D5DD0 != -1)
  {
    swift_once();
  }

  return &dword_1006EFE38;
}

float sub_1002A794C()
{
  result = 1000.0 - 1.0;
  *&dword_1006EFE3C = 1000.0 - 1.0;
  return result;
}

int *sub_1002A7968()
{
  if (qword_1006D5DD8 != -1)
  {
    swift_once();
  }

  return &dword_1006EFE3C;
}

float sub_1002A79E4()
{
  result = 1000.0 - 3.0;
  *&dword_1006EFE40 = 1000.0 - 3.0;
  return result;
}

int *sub_1002A7A00()
{
  if (qword_1006D5DE0 != -1)
  {
    swift_once();
  }

  return &dword_1006EFE40;
}

float sub_1002A7A7C()
{
  result = 1000.0 - 4.0;
  *&dword_1006EFE44 = 1000.0 - 4.0;
  return result;
}

int *sub_1002A7A98()
{
  if (qword_1006D5DE8 != -1)
  {
    swift_once();
  }

  return &dword_1006EFE44;
}

uint64_t sub_1002A7B80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1002A7C48(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*sub_1002A7CC8(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 51765);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

id sub_1002A7DE0()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_viewModel);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002A7EB8(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_viewModel);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

double sub_1002A8014()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_minimumHeight);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1002A80D0(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_minimumHeight);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1002A8200()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_maximumHeight);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1002A82BC(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_maximumHeight);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

void *sub_1002A8394()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarController);
  _objc_retain(v2);
  return v2;
}

void *sub_1002A8448()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView);
  _objc_retain(v2);
  return v2;
}

void *sub_1002A8490()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_imageView);
  _objc_retain(v2);
  return v2;
}

void *sub_1002A8544()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_1002A85F8()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton);
  _objc_retain(v2);
  return v2;
}