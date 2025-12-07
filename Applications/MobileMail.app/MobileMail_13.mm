uint64_t sub_100358098(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 24);
    if (*(a1 + 40) == 1)
    {
      *(a2 + 24) = *(a1 + 24);
      *(a2 + 32) = *(a1 + 32);
      (**(v3 - 8))();
      *(a2 + 40) = 1;
    }

    else
    {
      *(a2 + 24) = *(a1 + 24);
      *(a2 + 32) = *(a1 + 32);
      (**(v3 - 8))();
      *(a2 + 40) = 2;
    }
  }

  else
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    *(a2 + 32) = *(a1 + 32);
    (**(v2 - 8))();
    *(a2 + 40) = 0;
  }

  return a2;
}

uint64_t sub_100358218(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 40) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100358310(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 41);
  if (a2 > 0xFD)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 >= 0xFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003584F0()
{
  if (qword_1006D5F10 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_100358564(uint64_t a1)
{
  v9 = a1;
  v8 = type metadata accessor for UUID();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t sub_100358678@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v9 = "An email mailbox";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v3 - v3;
  v6 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v13 = &v3 - v4;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v12 = &v3 - v5;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v10 = &v3 - v7;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v19 = &v3 - v8;
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mailbox", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v16 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 16;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10035896C()
{
  type metadata accessor for Mailbox(0);

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t type metadata accessor for Mailbox(uint64_t a1)
{
  v2 = qword_1006D9C38;
  if (!qword_1006D9C38)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_100358A54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Mailbox(0);

  EntityProperty.wrappedValue.setter();
}

void (*sub_100358AE8(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 36604);
  *a1 = v3;
  v3[4] = *(v1 + *(type metadata accessor for Mailbox(0) + 20));

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100358B90()
{
  type metadata accessor for Mailbox(0);

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100358BF4()
{
  v2 = *(v0 + *(type metadata accessor for Mailbox(0) + 20));

  return v2;
}

uint64_t sub_100358C2C(uint64_t a1)
{

  *(v1 + *(type metadata accessor for Mailbox(0) + 20)) = a1;
}

uint64_t sub_100358C78()
{
  type metadata accessor for Mailbox(0);

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_100358CD8(char *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006D9B50, &unk_1005044F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + *(type metadata accessor for Mailbox(0) + 24));

  sub_100358DBC(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_100358F78(v6);
}

char *sub_100358DBC(char *a1, char *a2)
{
  v13 = type metadata accessor for MailAccountEntity(0);
  v14 = *(v13 - 1);
  if ((*(v14 + 48))(a1, 1))
  {
    v3 = sub_10025C9B0(&qword_1006D9B50, &unk_1005044F8);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = type metadata accessor for UUID();
    (*(*(v2 - 8) + 16))(a2, a1);
    v5 = v13[5];
    v6 = *&a1[v5];

    *&a2[v5] = v6;
    v7 = v13[6];
    v8 = *&a1[v7];

    *&a2[v7] = v8;
    v9 = v13[7];
    v10 = *&a1[v9];

    *&a2[v9] = v10;
    (*(v14 + 56))();
  }

  return a2;
}

uint64_t sub_100358F78(uint64_t a1)
{
  v4 = type metadata accessor for MailAccountEntity(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = type metadata accessor for UUID();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

void (*sub_10035905C(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL, 54566);
  *a1 = v3;
  v3[4] = *(v1 + *(type metadata accessor for Mailbox(0) + 24));

  v3[5] = EntityProperty.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100359104()
{
  type metadata accessor for Mailbox(0);

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_100359168()
{
  v2 = *(v0 + *(type metadata accessor for Mailbox(0) + 24));

  return v2;
}

uint64_t sub_1003591A0(uint64_t a1)
{

  *(v1 + *(type metadata accessor for Mailbox(0) + 24)) = a1;
}

void (*sub_100359234(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = sub_100294700(0x28uLL, 10617);
  *a1 = v2;
  v2[4] = sub_100358AE8(v2);
  return sub_10034C098;
}

void (*sub_1003592D4(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = sub_100294700(0x28uLL, 21648);
  *a1 = v2;
  v2[4] = sub_10035905C(v2);
  return sub_10034C098;
}

unint64_t sub_100359394()
{
  v2 = qword_1006DA320;
  if (!qword_1006DA320)
  {
    type metadata accessor for Mailbox(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10035944C()
{
  v2 = qword_1006D9B58;
  if (!qword_1006D9B58)
  {
    type metadata accessor for Mailbox(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359504()
{
  v2 = qword_1006D9B60;
  if (!qword_1006D9B60)
  {
    type metadata accessor for Mailbox(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100359584(uint64_t a1, uint64_t a2)
{
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return _swift_task_switch(sub_1003595C0, 0);
}

uint64_t sub_1003595C0()
{
  *(v0 + 32) = v0;
  type metadata accessor for Mailbox(0);
  v1 = _allocateUninitializedArray<A>(_:)();
  v2 = *(*(v0 + 32) + 8);

  return v2(v1);
}

uint64_t sub_100359660(uint64_t a1)
{
  *(v1 + 16) = v1;
  *(v1 + 24) = 0;
  *(v1 + 24) = a1;
  return _swift_task_switch(sub_100359694, 0);
}

uint64_t sub_100359694()
{
  *(v0 + 16) = v0;
  type metadata accessor for Mailbox(0);
  v1 = _allocateUninitializedArray<A>(_:)();
  v2 = *(*(v0 + 16) + 8);

  return v2(v1);
}

uint64_t sub_100359734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1002603BC;

  return sub_100359584(a2, a3);
}

uint64_t sub_1003597F4(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_100359660(a1);
}

uint64_t sub_1003598A8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_100359970();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

unint64_t sub_100359970()
{
  v2 = qword_1006D9B68;
  if (!qword_1006D9B68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359A04()
{
  v2 = qword_1006D9B70;
  if (!qword_1006D9B70)
  {
    type metadata accessor for Mailbox(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359A9C()
{
  v2 = qword_1006D9B78;
  if (!qword_1006D9B78)
  {
    type metadata accessor for Mailbox(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359B34()
{
  v2 = qword_1006D9B80;
  if (!qword_1006D9B80)
  {
    type metadata accessor for Mailbox(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359C14()
{
  v2 = qword_1006D9B88;
  if (!qword_1006D9B88)
  {
    type metadata accessor for Mailbox(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359CAC()
{
  v2 = qword_1006D9B90;
  if (!qword_1006D9B90)
  {
    type metadata accessor for Mailbox(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359D44()
{
  v2 = qword_1006D9B98;
  if (!qword_1006D9B98)
  {
    type metadata accessor for Mailbox(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9B98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359DF4()
{
  v2 = qword_1006D9BA0;
  if (!qword_1006D9BA0)
  {
    sub_10025CAA4(&qword_1006D9BA8, &qword_1005046F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9BA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359E94()
{
  v2 = qword_1006D9BB0;
  if (!qword_1006D9BB0)
  {
    type metadata accessor for Mailbox(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9BB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359F2C()
{
  v2 = qword_1006D9BB8;
  if (!qword_1006D9BB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9BB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100359FC0()
{
  v2 = qword_1006D9BC0;
  if (!qword_1006D9BC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9BC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10035A054()
{
  v2 = qword_1006D9BC8;
  if (!qword_1006D9BC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9BC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10035A0E8()
{
  v2 = qword_1006D9BD0;
  if (!qword_1006D9BD0)
  {
    sub_10025CAA4(&qword_1006D9BD8, &qword_100504848);
    sub_100359D44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9BD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10035A1D0(uint64_t a1)
{
  v5 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v5 = sub_10034D21C(319);
    if (v2 <= 0x3F)
    {
      v5 = sub_10035A2D4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_10035A2D4(uint64_t a1)
{
  v5 = qword_1006D9C48;
  if (!qword_1006D9C48)
  {
    sub_10025CAA4(&qword_1006D9B50, &unk_1005044F8);
    sub_10035A384();
    v4 = type metadata accessor for EntityProperty();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1006D9C48);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_10035A384()
{
  v2 = qword_1006D9C50;
  if (!qword_1006D9C50)
  {
    sub_10025CAA4(&qword_1006D9B50, &unk_1005044F8);
    sub_10034CBA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9C50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10035A430()
{
  if (qword_1006D5F18 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10035A48C()
{
  v2 = [objc_opt_self() sharedApplication];
  v1 = [v2 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  v4[0] = v3;
  sub_10025C9B0(&unk_1006D72F0, &unk_1005001F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880(v4);
  _objc_release(v1);
  return v4[1];
}

uint64_t sub_10035A5B0(id *a1)
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

uint64_t sub_10035A670(uint64_t a1)
{
  v84 = a1;
  v105 = 0;
  v100 = 0;
  v94 = 0;
  v85 = type metadata accessor for Logger();
  v86 = *(v85 - 8);
  v87 = v86;
  v88 = *(v86 + 64);
  v1 = __chkstk_darwin(v84);
  v90 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  v89 = &v15 - v90;
  v2 = __chkstk_darwin(v1);
  v91 = &v15 - v90;
  v105 = v2;
  v92 = sub_10035A48C();
  if (v92)
  {
    v82 = v92;
    v80 = v92;
    v93 = &OBJC_PROTOCOL___MailboxSelectionCapable;
    v81 = swift_dynamicCastObjCProtocolConditional();
    if (v81)
    {
      v79 = v81;
    }

    else
    {

      v79 = 0;
    }

    v78 = v79;
  }

  else
  {
    v78 = 0;
  }

  v77 = v78;
  if (v78)
  {
    v76 = v77;
    v74 = v77;
    v100 = v77;
    v75 = v99;
    sub_1002F171C(v84, v99);
    sub_10025C9B0(&qword_1006D9B10, &unk_100504910);
    if (swift_dynamicCast())
    {
      v73 = v98[1];
    }

    else
    {
      v73 = 0;
    }

    v72 = v73;
    if (v73)
    {
      v71 = v72;
      v67 = v72;
      v68 = v83;
      v94 = v72;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v66 = [v74 mailboxPickerController];
      swift_unknownObjectRelease();
      v3 = v68;
      sub_100366990(v67);
      v69 = v3;
      v70 = v3;
      if (v3)
      {
        v16 = v70;

        swift_unknownObjectRelease();
        return v16;
      }

      else
      {
        v65 = 0;

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v5 = v91;
      v6 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v87 + 16))(v5, v6, v85);
      v63 = Logger.logObject.getter();
      v60 = v63;
      v62 = static os_log_type_t.error.getter();
      v61 = v62;
      sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      v64 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v63, v62))
      {
        v59 = v83;
        v51 = static UnsafeMutablePointer.allocate(capacity:)();
        v47 = v51;
        v48 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v49 = 0;
        v52 = sub_1002641E8(0, v48, v48);
        v50 = v52;
        v53 = sub_1002641E8(v49, &type metadata for Any + 8, &type metadata for Any + 8);
        v98[0] = v51;
        v97 = v52;
        v96 = v53;
        v54 = 0;
        v55 = v98;
        sub_10026423C(0, v98);
        sub_10026423C(v54, v55);
        v95 = v64;
        v56 = &v15;
        __chkstk_darwin(&v15);
        v57 = &v15 - 6;
        *(&v15 - 4) = v7;
        *(&v15 - 3) = &v97;
        *(&v15 - 2) = &v96;
        v58 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        v8 = v59;
        Sequence.forEach(_:)();
        if (v8)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v60, v61, "Expected a mailbox open intent", v47, 2u);
          v46 = 0;
          sub_10026429C(v50, 0);
          sub_10026429C(v53, v46);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      (*(v87 + 8))(v91, v85);
      sub_10028B33C();
      v43 = 0;
      v42 = swift_allocError();
      v41 = v9;
      v44 = v42;
      sub_1002F171C(v84, v9);
      *(v41 + 40) = 2;
      swift_willThrow();
      swift_unknownObjectRelease();
      result = v44;
      v45 = v44;
    }
  }

  else
  {
    v10 = v89;
    v11 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v87 + 16))(v10, v11, v85);
    v39 = Logger.logObject.getter();
    v36 = v39;
    v38 = static os_log_type_t.error.getter();
    v37 = v38;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v40 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v39, v38))
    {
      v35 = v83;
      v27 = static UnsafeMutablePointer.allocate(capacity:)();
      v23 = v27;
      v24 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v25 = 0;
      v28 = sub_1002641E8(0, v24, v24);
      v26 = v28;
      v29 = sub_1002641E8(v25, &type metadata for Any + 8, &type metadata for Any + 8);
      v104 = v27;
      v103 = v28;
      v102 = v29;
      v30 = 0;
      v31 = &v104;
      sub_10026423C(0, &v104);
      sub_10026423C(v30, v31);
      v101 = v40;
      v32 = &v15;
      __chkstk_darwin(&v15);
      v33 = &v15 - 6;
      *(&v15 - 4) = v12;
      *(&v15 - 3) = &v103;
      *(&v15 - 2) = &v102;
      v34 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      v13 = v35;
      Sequence.forEach(_:)();
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v36, v37, "Failed to find a scene capable of displaying a message list for a mailbox", v23, 2u);
        v22 = 0;
        sub_10026429C(v26, 0);
        sub_10026429C(v29, v22);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v87 + 8))(v89, v85);
    sub_10028B33C();
    v20 = 0;
    v18 = 0;
    v19 = swift_allocError();
    v17 = v14;
    v21 = v19;
    sub_1002F171C(v84, v14);
    *(v17 + 40) = v18;
    swift_willThrow();
    result = v21;
    v45 = v21;
  }

  return result;
}

uint64_t sub_10035B234@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v58 = 0;
  v66 = 0;
  v59 = type metadata accessor for Logger();
  v60 = *(v59 - 8);
  v61 = v60;
  __chkstk_darwin(v59 - 8);
  v62 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = [objc_opt_self() sharedApplication];
  v63 = v64;
  objc_opt_self();
  v65 = swift_dynamicCastObjCClass();
  if (v65)
  {
    v56 = v65;
  }

  else
  {

    v56 = 0;
  }

  v55 = v56;
  if (v56)
  {
    v54 = v55;
    v51 = v55;
    v66 = v55;
    v52 = sub_10035CE2C();
    v53 = [v51 favoritesPersistence];
    if (v53)
    {
      v50 = v53;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v48 = v50;
    v49 = [v51 favoritesPersistence];
    if (v49)
    {
      v47 = v49;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v38 = v47;
    v40 = [v47 dictionaryRepresentation];
    v39 = v40;

    v41 = type metadata accessor for FavoritesDictionaryRepresentationKey(0);
    v43 = sub_1002683D4();
    v42 = &type metadata for Any + 8;
    v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = _dictionaryUpCast<A, B, C, D>(_:)();
    v46 = [v51 favoritesPersistence];
    if (v46)
    {
      v37 = v46;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v33 = v37;
    v34 = [v37 conversationSubscriptionProvider];

    v35 = sub_10035BA64(v48, v45, v34);

    v2 = v57;
    v3 = v35;
    v4 = v51;
    v57[3] = v52;
    v2[4] = &off_100659D90;
    *v2 = v3;

    return v58;
  }

  else
  {
    v5 = v62;
    v6 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v61 + 16))(v5, v6, v59);
    v31 = Logger.logObject.getter();
    v28 = v31;
    v30 = static os_log_type_t.info.getter();
    v29 = v30;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v31, v30))
    {
      v7 = v58;
      v19 = static UnsafeMutablePointer.allocate(capacity:)();
      v15 = v19;
      v16 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v17 = 0;
      v20 = sub_1002641E8(0, v16, v16);
      v18 = v20;
      v21 = sub_1002641E8(v17, &type metadata for Any + 8, &type metadata for Any + 8);
      v70 = v19;
      v69 = v20;
      v68 = v21;
      v22 = 0;
      v23 = &v70;
      sub_10026423C(0, &v70);
      sub_10026423C(v22, v23);
      v67 = v32;
      v24 = &v11;
      __chkstk_darwin(&v11);
      v25 = &v11 - 6;
      v26 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v27 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v28, v29, "#SiriMail no mail app, returning nil", v15, 2u);
        v13 = 0;
        sub_10026429C(v18, 0);
        sub_10026429C(v21, v13);
        UnsafeMutablePointer.deallocate()();

        v14 = v27;
      }
    }

    else
    {

      v14 = v58;
    }

    v12 = v14;

    (*(v61 + 8))(v62, v59);
    v8 = v57;
    v9 = v12;
    *v57 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
    return v9;
  }
}

void sub_10035BAB4(uint64_t a1@<X8>)
{
  v111 = a1;
  v113 = sub_10035CE90;
  v114 = sub_10026EE84;
  v115 = sub_10026434C;
  v116 = sub_10026434C;
  v117 = sub_10026EF2C;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v118 = 0;
  v168 = 0;
  v165 = 0;
  v163 = 0;
  v164 = 0;
  v158 = 0;
  v159 = 0;
  v136 = 0;
  v119 = type metadata accessor for Logger();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v119);
  v123 = &v34 - v122;
  v2 = sub_10025C9B0(&unk_1006D9D00, &unk_1005003D0);
  v124 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v125 = &v34 - v124;
  v126 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v136);
  v127 = &v34 - v126;
  v128 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v129 = &v34 - v128;
  v177 = &v34 - v128;
  v130 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v136);
  v131 = &v34 - v130;
  v132 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v136);
  v133 = &v34 - v132;
  v134 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v136);
  v135 = &v34 - v134;
  v137 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v138 = *(v137 - 8);
  v139 = v137 - 8;
  v140 = (v138[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v136);
  v141 = &v34 - v140;
  v142 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v143 = &v34 - v142;
  v144 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v145 = &v34 - v144;
  v146 = type metadata accessor for LocalizedStringResource();
  v147 = *(v146 - 8);
  v148 = v146 - 8;
  v149 = (*(v147 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v146);
  v150 = &v34 - v149;
  v151 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v34 - v149);
  v152 = &v34 - v151;
  v176 = &v34 - v151;
  v175 = v1;
  v153 = *(v1 + 16);
  swift_unknownObjectRetain();
  objc_opt_self();
  v154 = swift_dynamicCastObjCClass();
  if (v154)
  {
    v110 = v154;
  }

  else
  {
    swift_unknownObjectRelease();
    v110 = 0;
  }

  v109 = v110;
  if (v110)
  {
    v108 = v109;
    v106 = v109;
    v168 = v109;
    v107 = [v109 representingMailbox];
    if (v107)
    {
      v105 = v107;
      v103 = v107;
      v104 = [v107 accountRelativePath];
      if (v104)
      {
        v102 = v104;
        v99 = v104;
        *&v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v100 + 1) = v10;
        _objc_release(v99);
        v101 = v100;
      }

      else
      {
        v101 = 0uLL;
      }

      v97 = v101;
      _objc_release(v103);
      v98 = v97;
    }

    else
    {
      v98 = 0uLL;
    }

    v166 = v98;
    _objc_retain(v106);
    if (v166._object)
    {
      v167 = v166;
    }

    else
    {
      v96 = [v106 displayName];
      v167._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v167._object = v11;
      _objc_release(v96);
      if (v166._object)
      {
        sub_100268744(&v166);
      }
    }

    _objc_release(v106);
    v94 = v167;
    v165 = v167;
    v95 = [v106 account];
    if (v95)
    {
      v93 = v95;
      v91 = v95;
      v92 = [v95 firstEmailAddress];
      _objc_release(v91);
      if (v92)
      {
        v90 = v92;
        v85 = v92;
        v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v12;
        _objc_release(v85);
        v88 = v86;
        v89 = v87;
      }

      else
      {
        v88 = 0;
        v89 = 0;
      }

      v83 = v88;
      v84 = v89;
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v82 = v84;
    v69 = v83;
    v163 = v83;
    v164 = v84;
    v72 = 0;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v71 = "";
    *&v80[1] = 1;
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v72, 1);
    object = v13._object;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);

    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v94);
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v71, v72, v80[1] & 1);
    v73 = v14._object;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);

    v74 = v138[2];
    v75 = v138 + 2;
    v74(v143, v145, v137);
    v76 = v138[4];
    v77 = v138 + 4;
    v76(v141, v143, v137);
    v78 = v138[1];
    v79 = v138 + 1;
    v78(v145, v137);
    String.LocalizationValue.init(stringInterpolation:)();
    v81 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v80[1] & 1);
    sub_100015CC0();
    sub_10025D410(v131);
    v160 = 0;
    v161 = 0;
    v162 = *v80 & 0x100;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();

    if (v82)
    {
      v67 = v69;
      v68 = v82;
      v66 = v82;
      v60 = v69;
      v158 = v69;
      v159 = v82;
      v62 = 0;
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v61 = "";
      *&v65[1] = 1;
      v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v62, 1);
      v59 = v15._object;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);

      v16._countAndFlagsBits = v60;
      v16._object = v66;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v16);
      v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v61, v62, v65[1] & 1);
      v63 = v17._object;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);

      v74(v143, v145, v137);
      v76(v141, v143, v137);
      v78(v145, v137);
      String.LocalizationValue.init(stringInterpolation:)();
      v64 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v65[1] & 1);
      sub_100015CC0();
      sub_10025D410(v131);
      v155 = 0;
      v156 = 0;
      v157 = *v65 & 0x100;
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      (*(v147 + 56))(v127, 0, *&v65[1], v146);
      sub_10035CE98(v127, v129);
    }

    else
    {
      (*(v147 + 56))(v127, 1, 1, v146);
      sub_10035CE98(v127, v129);
    }

    (*(v147 + 16))(v150, v152, v146);
    sub_10035CFC0(v129, v127);
    v18 = type metadata accessor for DisplayRepresentation.Image();
    (*(*(v18 - 8) + 56))(v125, 1);
    DisplayRepresentation.init(title:subtitle:image:)();
    sub_10035D0E8(v129);
    (*(v147 + 8))(v152, v146);

    _objc_release(v106);
  }

  else
  {
    v19 = v123;
    v20 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v120 + 16))(v19, v20, v119);
    v45 = v174;
    sub_10027EB5C(v112, v174);
    v48 = 7;
    v49 = swift_allocObject();
    memcpy((v49 + 16), v45, 0x50uLL);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.fault.getter();
    v46 = 17;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v47 = 32;
    v21 = swift_allocObject();
    v22 = v49;
    v50 = v21;
    *(v21 + 16) = v113;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v50;
    v54 = v23;
    *(v23 + 16) = v114;
    *(v23 + 24) = v24;
    v56 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v53 = _allocateUninitializedArray<A>(_:)();
    v55 = v25;

    v26 = v51;
    v27 = v55;
    *v55 = v115;
    v27[1] = v26;

    v28 = v52;
    v29 = v55;
    v55[2] = v116;
    v29[3] = v28;

    v30 = v54;
    v31 = v55;
    v55[4] = v117;
    v31[5] = v30;
    sub_1002612B0();

    if (os_log_type_enabled(v57, v58))
    {
      v32 = v118;
      v38 = static UnsafeMutablePointer.allocate(capacity:)();
      v37 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v39 = sub_1002641E8(0, v37, v37);
      v40 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v41 = &v173;
      v173 = v38;
      v42 = &v172;
      v172 = v39;
      v43 = &v171;
      v171 = v40;
      sub_10026423C(2, &v173);
      sub_10026423C(1, v41);
      v169 = v115;
      v170 = v51;
      sub_100264250(&v169, v41, v42, v43);
      v44 = v32;
      if (v32)
      {

        __break(1u);
      }

      else
      {
        v169 = v116;
        v170 = v52;
        sub_100264250(&v169, &v173, &v172, &v171);
        v36 = 0;
        v169 = v117;
        v170 = v54;
        sub_100264250(&v169, &v173, &v172, &v171);
        _os_log_impl(&_mh_execute_header, v57, v58, "Expected representingMailbox to be a FavoriteItem - %s", v38, 0xCu);
        sub_10026429C(v39, 0);
        sub_10026429C(v40, 1);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v57);
    (*(v120 + 8))(v123, v119);
    v34 = 0;
    v35 = 1;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    LocalizedStringResource.init(stringLiteral:)();
    (*(v147 + 56))(v127, v35, v35, v146);
    v33 = type metadata accessor for DisplayRepresentation.Image();
    (*(*(v33 - 8) + 56))(v125, v35);
    DisplayRepresentation.init(title:subtitle:image:)();
  }
}

id sub_10035CD48(void *a1, uint64_t a2)
{
  if (a2)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithFavoritesPersistence:a1 collections:isa conversationSubscriptionProvider:?];
  }

  else
  {
    v2 = [v8 initWithFavoritesPersistence:a1 collections:0 conversationSubscriptionProvider:?];
  }

  v5 = v2;
  swift_unknownObjectRelease();
  _objc_release(v4);
  _objc_release(a1);
  return v5;
}

unint64_t sub_10035CE2C()
{
  v2 = qword_1006D9CF0;
  if (!qword_1006D9CF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9CF0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_10035CE98(const void *a1, void *a2)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_10035CFC0(const void *a1, void *a2)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10035D0E8(uint64_t a1)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_10035D190()
{
  v2 = qword_1006D9D10;
  if (!qword_1006D9D10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9D10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10035D208()
{
  v2 = qword_1006D9D18;
  if (!qword_1006D9D18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9D18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10035D2B0()
{
  v2 = qword_1006D9D20;
  if (!qword_1006D9D20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9D20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10035D340()
{
  v2 = qword_1006D9D28;
  if (!qword_1006D9D28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9D28);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_10035D3CC(uint64_t a1)
{
  v132 = a1;
  v167 = 0;
  v166 = 0;
  v120 = 0;
  v164 = 0;
  v162 = 0;
  v129 = type metadata accessor for Logger();
  v121 = v129;
  v122 = *(v129 - 8);
  v128 = v122;
  v123 = v122;
  v124 = *(v122 + 64);
  v1 = __chkstk_darwin(v132);
  v126 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v125 = &v42 - v126;
  v2 = __chkstk_darwin(v1);
  v3 = &v42 - v126;
  v127 = &v42 - v126;
  v167 = v2;
  v4 = sub_100361060();
  v130 = *(v128 + 16);
  v131 = (v128 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v130(v3, v4, v129);
  v139 = 7;
  v140 = swift_allocObject();
  *(v140 + 16) = v132;
  v151 = Logger.logObject.getter();
  v133 = v151;
  v150 = static os_log_type_t.info.getter();
  v134 = v150;
  v135 = 17;
  v144 = swift_allocObject();
  v136 = v144;
  *(v144 + 16) = 0;
  v145 = swift_allocObject();
  v137 = v145;
  *(v145 + 16) = 8;
  v138 = 32;
  v5 = swift_allocObject();
  v6 = v140;
  v141 = v5;
  *(v5 + 16) = sub_10026E824;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v141;
  v148 = v7;
  v142 = v7;
  *(v7 + 16) = sub_10026E818;
  *(v7 + 24) = v8;
  v149 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v143 = v149;
  v146 = _allocateUninitializedArray<A>(_:)();
  v147 = v9;

  v10 = v144;
  v11 = v147;
  *v147 = sub_10026434C;
  v11[1] = v10;

  v12 = v145;
  v13 = v147;
  v147[2] = sub_10026434C;
  v13[3] = v12;

  v14 = v147;
  v15 = v148;
  v147[4] = sub_10026EBF8;
  v14[5] = v15;
  sub_1002612B0();

  if (os_log_type_enabled(v151, v150))
  {
    v16 = v120;
    v114 = static UnsafeMutablePointer.allocate(capacity:)();
    v110 = v114;
    v111 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v112 = 0;
    v115 = sub_1002641E8(0, v111, v111);
    v113 = v115;
    v116 = sub_1002641E8(v112, &type metadata for Any + 8, &type metadata for Any + 8);
    v156 = v114;
    v155 = v115;
    v154 = v116;
    v117 = &v156;
    sub_10026423C(0, &v156);
    sub_10026423C(1, v117);
    v152 = sub_10026434C;
    v153 = v136;
    sub_100264250(&v152, v117, &v155, &v154);
    v118 = v16;
    v119 = v16;
    if (v16)
    {
      v108 = 0;

      __break(1u);
    }

    else
    {
      v152 = sub_10026434C;
      v153 = v137;
      sub_100264250(&v152, &v156, &v155, &v154);
      v106 = 0;
      v107 = 0;
      v152 = sub_10026EBF8;
      v153 = v142;
      sub_100264250(&v152, &v156, &v155, &v154);
      v104 = 0;
      v105 = 0;
      _os_log_impl(&_mh_execute_header, v133, v134, "#SiriMail MailboxEntityQuery for type: %ld", v110, 0xCu);
      v103 = 0;
      sub_10026429C(v113, 0);
      sub_10026429C(v116, v103);
      UnsafeMutablePointer.deallocate()();

      v109 = v104;
    }
  }

  else
  {
    v17 = v120;

    v109 = v17;
  }

  v18 = v109;

  v85 = *(v123 + 8);
  v86 = (v123 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85(v127, v121);
  v87 = *sub_100360F6C();
  v19 = v87;
  v89 = [v87 allMailboxObjectIDs];
  v98 = 0;
  v92 = sub_100365480();
  sub_1003654E4();
  v90 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v90;
  v166 = v90;

  v96 = *sub_100360F6C();
  v20 = v96;

  v165[1] = v90;
  v91 = sub_10025C9B0(&qword_1006D9D70, &unk_100504A30);
  sub_100365564();
  v93 = Array.init<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v97 = [v96 mailboxesForObjectIDs:isa];
  v95 = v97;

  sub_10025C9B0(&qword_1006D7500, &qword_10050C710);
  v165[0] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = sub_10025C9B0(&unk_1006DCA10, &unk_1004FF5F0);
  v100 = sub_1003655EC();
  v21 = sub_100365650();
  v23 = sub_10025E9D8(sub_10028F504, v98, v99, v100, &type metadata for Never, v21, &protocol witness table for Never, v22);
  v101 = v18;
  v102 = v23;
  if (v18)
  {
    __break(1u);
    result = v80;
    __break(1u);
  }

  else
  {
    v79 = v102;
    sub_100264880(v165);

    v164 = v79;

    v163 = v79;
    v80 = &v42;
    __chkstk_darwin(&v42);
    v81 = &v42 - 4;
    *(&v42 - 2) = v24;
    v82 = sub_10025C9B0(&qword_1006D9D90, &qword_100506E30);
    sub_100365704();
    v25 = _ArrayProtocol.filter(_:)();
    v83 = 0;
    v84 = v25;
    v26 = v125;
    v59 = v25;
    v61 = sub_100362668();
    v60 = v61;
    v162 = v61;

    v27 = sub_100361060();
    v130(v26, v27, v121);

    v68 = 7;
    v69 = swift_allocObject();
    *(v69 + 16) = v61;
    v78 = Logger.logObject.getter();
    v62 = v78;
    v77 = static os_log_type_t.info.getter();
    v63 = v77;
    v64 = 17;
    v72 = swift_allocObject();
    v65 = v72;
    *(v72 + 16) = 0;
    v73 = swift_allocObject();
    v66 = v73;
    *(v73 + 16) = 8;
    v67 = 32;
    v28 = swift_allocObject();
    v29 = v69;
    v70 = v28;
    *(v28 + 16) = sub_10036578C;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v70;
    v76 = v30;
    v71 = v30;
    *(v30 + 16) = sub_10026E818;
    *(v30 + 24) = v31;
    v74 = _allocateUninitializedArray<A>(_:)();
    v75 = v32;

    v33 = v72;
    v34 = v75;
    *v75 = sub_10026434C;
    v34[1] = v33;

    v35 = v73;
    v36 = v75;
    v75[2] = sub_10026434C;
    v36[3] = v35;

    v37 = v75;
    v38 = v76;
    v75[4] = sub_10026EBF8;
    v37[5] = v38;
    sub_1002612B0();

    if (os_log_type_enabled(v78, v77))
    {
      v39 = v83;
      v53 = static UnsafeMutablePointer.allocate(capacity:)();
      v49 = v53;
      v50 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v51 = 0;
      v54 = sub_1002641E8(0, v50, v50);
      v52 = v54;
      v55 = sub_1002641E8(v51, &type metadata for Any + 8, &type metadata for Any + 8);
      v161 = v53;
      v160 = v54;
      v159 = v55;
      v56 = &v161;
      sub_10026423C(0, &v161);
      sub_10026423C(1, v56);
      v157 = sub_10026434C;
      v158 = v65;
      sub_100264250(&v157, v56, &v160, &v159);
      v57 = v39;
      v58 = v39;
      if (v39)
      {
        v47 = 0;

        __break(1u);
      }

      else
      {
        v157 = sub_10026434C;
        v158 = v66;
        sub_100264250(&v157, &v161, &v160, &v159);
        v45 = 0;
        v46 = 0;
        v157 = sub_10026EBF8;
        v158 = v71;
        sub_100264250(&v157, &v161, &v160, &v159);
        v43 = 0;
        v44 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "#SiriMail MailboxEntityQuery for type: matchingMailboxes count: %ld", v49, 0xCu);
        v42 = 0;
        sub_10026429C(v52, 0);
        sub_10026429C(v55, v42);
        UnsafeMutablePointer.deallocate()();

        v48 = v43;
      }
    }

    else
    {
      v40 = v83;

      v48 = v40;
    }

    v85(v125, v121);

    return v60;
  }

  return result;
}

uint64_t sub_10035E52C(uint64_t a1)
{
  v72 = a1;
  v88 = 0;
  v103 = 0;
  v102 = 0;
  v100 = 0;
  v98 = 0;
  v73 = type metadata accessor for Logger();
  v74 = *(v73 - 8);
  v75 = v74;
  v1 = __chkstk_darwin(v72);
  v76 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v1;
  v77 = *sub_100363048();
  v3 = v77;
  v79 = [v77 allMailboxObjectIDs];
  v82 = sub_100365480();
  sub_1003654E4();
  v80 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v80;
  v102 = v80;

  v86 = *sub_100363048();
  v4 = v86;

  v101[1] = v80;
  v81 = sub_10025C9B0(&qword_1006D9D70, &unk_100504A30);
  sub_100365564();
  v83 = Array.init<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v87 = [v86 mailboxesForObjectIDs:isa];
  v85 = v87;

  sub_10025C9B0(&qword_1006D7500, &qword_10050C710);
  v101[0] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = sub_10025C9B0(&unk_1006DCA10, &unk_1004FF5F0);
  v90 = sub_1003655EC();
  v5 = sub_100365650();
  v7 = sub_10025E9D8(sub_10028F504, v88, v89, v90, &type metadata for Never, v5, &protocol witness table for Never, v6);
  v91 = 0;
  v92 = v7;
  v64 = v7;
  sub_100264880(v101);

  v100 = v64;
  v99 = v72;

  v65 = &v26;
  __chkstk_darwin(&v26);
  v66 = &v26 - 4;
  *(&v26 - 2) = v8;
  v67 = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
  v68 = sub_10025C9B0(&qword_1006D9D90, &qword_100506E30);
  v69 = sub_1002688A0();
  sub_1003657BC();
  v9 = Sequence.flatMap<A>(_:)();
  v70 = 0;
  v71 = v9;
  v10 = v76;
  v43 = v9;

  v45 = sub_100362668();
  v44 = v45;
  v98 = v45;

  v11 = sub_10036313C();
  (*(v75 + 16))(v10, v11, v73);

  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v45;
  v63 = Logger.logObject.getter();
  v46 = v63;
  v62 = static os_log_type_t.info.getter();
  v47 = v62;
  v48 = 17;
  v56 = swift_allocObject();
  v49 = v56;
  *(v56 + 16) = 0;
  v57 = swift_allocObject();
  v50 = v57;
  *(v57 + 16) = 8;
  v51 = 32;
  v12 = swift_allocObject();
  v13 = v53;
  v54 = v12;
  *(v12 + 16) = sub_10036578C;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v54;
  v60 = v14;
  v55 = v14;
  *(v14 + 16) = sub_10026E818;
  *(v14 + 24) = v15;
  v61 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v58 = _allocateUninitializedArray<A>(_:)();
  v59 = v16;

  v17 = v56;
  v18 = v59;
  *v59 = sub_10026434C;
  v18[1] = v17;

  v19 = v57;
  v20 = v59;
  v59[2] = sub_10026434C;
  v20[3] = v19;

  v21 = v59;
  v22 = v60;
  v59[4] = sub_10026EBF8;
  v21[5] = v22;
  sub_1002612B0();

  if (os_log_type_enabled(v63, v62))
  {
    v23 = v70;
    v37 = static UnsafeMutablePointer.allocate(capacity:)();
    v33 = v37;
    v34 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v35 = 0;
    v38 = sub_1002641E8(0, v34, v34);
    v36 = v38;
    v39 = sub_1002641E8(v35, &type metadata for Any + 8, &type metadata for Any + 8);
    v97 = v37;
    v96 = v38;
    v95 = v39;
    v40 = &v97;
    sub_10026423C(0, &v97);
    sub_10026423C(1, v40);
    v93 = sub_10026434C;
    v94 = v49;
    sub_100264250(&v93, v40, &v96, &v95);
    v41 = v23;
    v42 = v23;
    if (v23)
    {
      v31 = 0;

      __break(1u);
    }

    else
    {
      v93 = sub_10026434C;
      v94 = v50;
      sub_100264250(&v93, &v97, &v96, &v95);
      v29 = 0;
      v30 = 0;
      v93 = sub_10026EBF8;
      v94 = v55;
      sub_100264250(&v93, &v97, &v96, &v95);
      v27 = 0;
      v28 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "#SiriMail MailboxEntityQuery for identifiers: matchingMailboxes count: %ld", v33, 0xCu);
      v26 = 0;
      sub_10026429C(v36, 0);
      sub_10026429C(v39, v26);
      UnsafeMutablePointer.deallocate()();

      v32 = v27;
    }
  }

  else
  {
    v24 = v70;

    v32 = v24;
  }

  (*(v75 + 8))(v76, v73);

  return v44;
}

uint64_t sub_10035EFF8()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

void *sub_10035F06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v14 = a1;
  v15 = a2;
  v13 = a3;
  v12 = a4;
  sub_10025C9B0(&unk_1006D6290, &qword_100504A40);
  __b[8] = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F50, &qword_1005063F0);
  sub_100264788();
  __b[9] = EntityProperty<>.init()();

  __b[0] = a1;
  __b[1] = a2;
  swift_unknownObjectRetain();
  __b[2] = a3;
  sub_1002F171C(a4, v11);
  sub_10035805C(v11, &__b[3]);
  sub_10027EB5C(__b, a5);
  sub_1000160F4(a4);
  swift_unknownObjectRelease();

  return sub_10027D728(__b);
}

uint64_t sub_10035F1A8(uint64_t a1, uint64_t a2)
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_10035F230(void *a1, uint64_t a2, uint64_t a3)
{

  _objc_retain(a1);

  EntityProperty.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_10035F2FC()
{
  v16 = "Mailbox to open";
  v40 = &v48;
  v48 = 0;
  v27 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v38 = &v5 - v5;
  v1 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v37 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v36 = &v5 - v7;
  v8 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v34 = &v5 - v8;
  v9 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v22 = &v5 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v21 = &v5 - v10;
  v11 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v19 = &v5 - v11;
  v26 = type metadata accessor for LocalizedStringResource();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v12 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v33 = &v5 - v12;
  sub_10025C9B0(&qword_1006D9E80, &unk_1005050F0);
  v28 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mailbox", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = "AppIntents";
  v15 = 10;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v28 & 1);
  sub_100015CC0();
  sub_10025D410(v22);
  v45 = v16;
  v17 = 15;
  v46 = 15;
  v18 = 2;
  v47 = 2;
  v25 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MAILBOX_ENTITY_DESCRIPTION", 0x1AuLL, v28 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v14, v15, v28 & 1);
  sub_100015CC0();
  sub_10025D410(v22);
  v42[10] = v16;
  v42[11] = v17;
  v43 = v18;
  v44 = v25 & 1 & v28;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v23 + 56))(v34, v25, v28, v26);
  v35 = v42;
  memset(v42, 0, 80);
  v29 = type metadata accessor for IntentDialog();
  v3 = *(v29 - 8);
  v31 = *(v3 + 56);
  v30 = v3 + 56;
  v31(v36, v28);
  (v31)(v37, v28, v28, v29);
  v32 = sub_100342164();
  v39 = sub_1002DA854();
  sub_1003BD8F8(v38);
  v41 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v48 = v41;
  sub_100268928(v40);
  return v41;
}

uint64_t sub_10035F9D8()
{

  IntentParameter.wrappedValue.getter();
}

void *sub_10035FA2C(void *a1, uint64_t a2)
{
  v4[11] = a1;
  v4[10] = a2;

  sub_10027EB5C(a1, v4);
  IntentParameter.wrappedValue.setter();

  return sub_10027D728(a1);
}

uint64_t sub_10035FAA0()
{
  if (qword_1006D5F20 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_10035FB14()
{
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_10035FB40(uint64_t a1)
{
  swift_unknownObjectRetain();
  *(v1 + 16) = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_10035FB9C(void *a1)
{
  sub_1002F171C(a1, v4);
  sub_1000160F4((v1 + 24));
  sub_10035805C(v4, (v1 + 24));
  return sub_1000160F4(a1);
}

uint64_t sub_10035FBE8()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_10035FC50()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_10035FCA8()
{
  v2 = *(v0 + 72);

  return v2;
}

uint64_t sub_10035FCD4(uint64_t a1)
{

  *(v1 + 72) = a1;
}

uint64_t sub_10035FD28@<X0>(uint64_t *a1@<X8>)
{
  result = InstantAnswerView.Model.Flight.travelDate.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_10035FD90@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Open a mailbox";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_MAILBOX_DESCRIPTION", 0x18uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 14;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1003600DC@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Open a mailbox";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open Mailbox", 0xCuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 14;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003602C0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006D9DB8, &qword_100504A48);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&unk_1006D9DC0, &qword_100504A50);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v25 = sub_100321530();
  v12 = 5;
  v24 = &unk_10065B638;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&unk_1006D9DD0, &qword_100504A80);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1003605E4(uint64_t a1)
{

  v2 = IntentParameter.projectedValue.getter();

  return v2;
}

void (*sub_10036063C(void *a1, uint64_t a2))(void **a1, char a2)
{
  v4 = sub_100294700(0x30uLL, 36522);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003606D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002F0674(a1, &v4);
  *a2 = sub_1003605E4(v4);
}

uint64_t sub_100360720(uint64_t a1, uint64_t a2)
{
  v2[10] = a2;
  v2[9] = a1;
  v2[7] = v2;
  v2[8] = 0;
  v2[8] = a2;
  return _swift_task_switch(sub_100360760, 0);
}

uint64_t sub_100360760()
{
  v3 = v0[10];
  v0[7] = v0;

  v0[5] = &unk_10065B638;
  v0[6] = sub_100321530();
  v0[2] = v3;
  type metadata accessor for MainActor();
  v0[11] = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10036082C, v1);
}

uint64_t sub_10036082C()
{
  v1 = v0[10];
  v0[7] = v0;
  sub_100360A54((v0 + 2), v1);
  v0[12] = 0;

  sub_1000160F4((v3 + 16));

  return _swift_task_switch(sub_100360924, 0);
}

uint64_t sub_100360924(uint64_t a1)
{
  *(v1 + 56) = v1;
  static IntentResult.result<>()();
  v2 = *(*(v1 + 56) + 8);

  return v2();
}

uint64_t sub_1003609B4()
{
  *(v0 + 56) = v0;

  sub_1000160F4((v0 + 16));
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

void *sub_100360A54(uint64_t a1, uint64_t a2)
{
  v10[8] = a1;
  v10[7] = a2;
  sub_10035F9D8();
  sub_1002F171C(v10, v6);
  v3 = v7;
  v4 = v8;
  sub_10027EC3C(v6, v7);
  (*(v4 + 8))(a1, v3);
  sub_1000160F4(v6);
  return sub_10027D728(v9);
}

uint64_t sub_100360B50(uint64_t a1)
{
  v5[2] = a1;
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

void (*sub_100360CB4(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = sub_100294700(0x28uLL, 32521);
  *a1 = v3;
  v3[4] = sub_10036063C(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_100360D8C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_100360720(a1, v6);
}

uint64_t sub_100360E4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10035F2FC();
  *a1 = result;
  return result;
}

void sub_100360F04()
{
  sub_10025C6A0();
  v0 = sub_10025C704();
  qword_1006D9D30 = [v0 mailboxRepository];
  _objc_release(v0);
}

uint64_t *sub_100360F6C()
{
  if (qword_1006D5F28 != -1)
  {
    swift_once();
  }

  return &qword_1006D9D30;
}

void *sub_100360FCC()
{
  v1 = *sub_100360F6C();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_100361004()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F0038);
  sub_1000208F4(v1, qword_1006F0038);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_100361060()
{
  if (qword_1006D5F30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F0038);
}

uint64_t sub_1003610CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100361060();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100361130(uint64_t a1, uint64_t a2)
{
  v2[20] = a2;
  v2[19] = a1;
  v2[14] = v2;
  v2[12] = 0;
  v2[13] = 0;
  v3 = type metadata accessor for Logger();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[12] = a1;
  v2[13] = a2;

  return _swift_task_switch(sub_100361240, 0);
}

uint64_t sub_100361240()
{
  *(v0 + 112) = v0;
  type metadata accessor for MainActor();
  *(v0 + 192) = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003612E0, v1);
}

uint64_t sub_1003612E0()
{
  *(v0 + 112) = v0;
  sub_10035B234((v0 + 56));

  return _swift_task_switch(sub_100361364, 0);
}

uint64_t sub_100361364()
{
  *(v0 + 112) = v0;
  if (*(v0 + 80))
  {
    v19 = *(v24 + 160);
    v22 = *(v24 + 152);
    sub_10035805C((v24 + 56), (v24 + 16));
    v20 = *(v24 + 40);
    v21 = *(v24 + 48);
    sub_10027EC3C((v24 + 16), v20);
    v23 = (*(v21 + 8))(v22, v19, v20);
    sub_1000160F4((v24 + 16));
    v18 = v23;
  }

  else
  {
    v1 = *(v24 + 184);
    v14 = *(v24 + 168);
    v13 = *(v24 + 176);
    sub_10000B0D8((v24 + 56));
    v2 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v13 + 16))(v1, v2, v14);
    v16 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v17 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v16, v15))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v8 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v10 = sub_1002641E8(0, v8, v8);
      v11 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v24 + 120) = buf;
      *(v24 + 128) = v10;
      *(v24 + 136) = v11;
      sub_10026423C(0, (v24 + 120));
      sub_10026423C(0, (v24 + 120));
      *(v24 + 144) = v17;
      v12 = swift_task_alloc();
      v12[2] = v24 + 120;
      v12[3] = v24 + 128;
      v12[4] = v24 + 136;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v16, v15, "Failed to find a matcher to lookup mailbox entities by name", buf, 2u);
      sub_10026429C(v10, 0);
      sub_10026429C(v11, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v6 = *(v24 + 184);
    v7 = *(v24 + 168);
    v5 = *(v24 + 176);
    _objc_release(v16);
    (*(v5 + 8))(v6, v7);
    v18 = _allocateUninitializedArray<A>(_:)();
  }

  v3 = *(*(v24 + 112) + 8);

  return v3(v18);
}

uint64_t sub_100361850(uint64_t a1)
{
  v1[18] = a1;
  v1[12] = v1;
  v1[13] = 0;
  v2 = type metadata accessor for Logger();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[13] = a1;

  return _swift_task_switch(sub_10036194C, 0);
}

uint64_t sub_10036194C()
{
  *(v0 + 96) = v0;
  type metadata accessor for MainActor();
  *(v0 + 176) = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003619EC, v1);
}

uint64_t sub_1003619EC()
{
  *(v0 + 96) = v0;
  sub_10035B234((v0 + 56));

  return _swift_task_switch(sub_100361A70, 0);
}

uint64_t sub_100361A70()
{
  *(v0 + 96) = v0;
  if (*(v0 + 80))
  {
    v21 = *(v23 + 144);
    sub_10035805C((v23 + 56), (v23 + 16));
    v19 = *(v23 + 40);
    v20 = *(v23 + 48);
    sub_10027EC3C((v23 + 16), v19);
    v22 = (*(v20 + 16))(v21, v19);
    sub_1000160F4((v23 + 16));
    v18 = v22;
  }

  else
  {
    v1 = *(v23 + 168);
    v14 = *(v23 + 152);
    v13 = *(v23 + 160);
    sub_10000B0D8((v23 + 56));
    v2 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v13 + 16))(v1, v2, v14);
    v16 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v17 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v16, v15))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v8 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v10 = sub_1002641E8(0, v8, v8);
      v11 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v23 + 112) = buf;
      *(v23 + 120) = v10;
      *(v23 + 128) = v11;
      sub_10026423C(0, (v23 + 112));
      sub_10026423C(0, (v23 + 112));
      *(v23 + 136) = v17;
      v12 = swift_task_alloc();
      v12[2] = v23 + 112;
      v12[3] = v23 + 120;
      v12[4] = v23 + 128;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v16, v15, "Failed to find a matcher to lookup mailbox entities by identifier", buf, 2u);
      sub_10026429C(v10, 0);
      sub_10026429C(v11, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v6 = *(v23 + 168);
    v7 = *(v23 + 152);
    v5 = *(v23 + 160);
    _objc_release(v16);
    (*(v5 + 8))(v6, v7);
    v18 = _allocateUninitializedArray<A>(_:)();
  }

  v3 = *(*(v23 + 96) + 8);

  return v3(v18);
}

uint64_t sub_100361F50()
{
  v0[12] = v0;
  v1 = type metadata accessor for Logger();
  v0[17] = v1;
  v0[18] = *(v1 - 8);
  v0[19] = swift_task_alloc();

  return _swift_task_switch(sub_100362028, 0);
}

uint64_t sub_100362028()
{
  *(v0 + 96) = v0;
  type metadata accessor for MainActor();
  *(v0 + 160) = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003620C8, v1);
}

uint64_t sub_1003620C8()
{
  *(v0 + 96) = v0;
  sub_10035B234((v0 + 56));

  return _swift_task_switch(sub_10036214C, 0);
}

uint64_t sub_10036214C()
{
  *(v0 + 96) = v0;
  if (*(v0 + 80))
  {
    sub_10035805C((v22 + 56), (v22 + 16));
    v20 = *(v22 + 40);
    v19 = *(v22 + 48);
    sub_10027EC3C((v22 + 16), v20);
    v21 = (*(v19 + 24))(v20);
    sub_1000160F4((v22 + 16));
    v18 = v21;
  }

  else
  {
    v1 = *(v22 + 152);
    v14 = *(v22 + 136);
    v13 = *(v22 + 144);
    sub_10000B0D8((v22 + 56));
    v2 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v13 + 16))(v1, v2, v14);
    v16 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v17 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v16, v15))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v8 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v10 = sub_1002641E8(0, v8, v8);
      v11 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v22 + 104) = buf;
      *(v22 + 112) = v10;
      *(v22 + 120) = v11;
      sub_10026423C(0, (v22 + 104));
      sub_10026423C(0, (v22 + 104));
      *(v22 + 128) = v17;
      v12 = swift_task_alloc();
      v12[2] = v22 + 104;
      v12[3] = v22 + 112;
      v12[4] = v22 + 120;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v16, v15, "Failed to find a matcher to return suggested results", buf, 2u);
      sub_10026429C(v10, 0);
      sub_10026429C(v11, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v6 = *(v22 + 152);
    v7 = *(v22 + 136);
    v5 = *(v22 + 144);
    _objc_release(v16);
    (*(v5 + 8))(v6, v7);
    v18 = _allocateUninitializedArray<A>(_:)();
  }

  v3 = *(*(v22 + 96) + 8);

  return v3(v18);
}

uint64_t sub_1003625D4(id *a1, uint64_t a2)
{
  [*a1 type];
  type metadata accessor for ECMailboxType(0);
  sub_1002667F4();
  return == infix<A>(_:_:)() & 1;
}

uint64_t sub_100362668()
{
  sub_10025C9B0(&qword_1006D9D90, &qword_100506E30);
  sub_1003657BC();
  return Sequence.compactMap<A>(_:)();
}

uint64_t sub_100362738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1002603BC;

  return sub_100361130(a2, a3);
}

uint64_t sub_1003627F8(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_100361850(a1);
}

uint64_t sub_1003628AC(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1002603BC;

  return sub_100361F50();
}

uint64_t sub_10036295C(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_100365844();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

void sub_100362A24(uint64_t a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  v25 = a1;
  v40 = 0;
  v39 = 0;
  memset(__b, 0, sizeof(__b));
  v36 = 0;
  v2 = sub_10025C9B0(&qword_1006D7250, &unk_1004FF0C0);
  v23 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v24 = &v13 - v23;
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v25);
  v30 = &v13 - v29;
  v31 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v32 = &v13 - v31;
  v40 = &v13 - v31;
  v33 = *v5;
  v39 = v33;
  v34 = [v33 objectID];
  v35 = [v34 url];
  if (v35)
  {
    v21 = v35;
    v20 = v35;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v27 + 32))(v24, v30, v26);
    (*(v27 + 56))(v24, 0, 1, v26);
    _objc_release(v20);
  }

  else
  {
    (*(v27 + 56))(v24, 1, 1, v26);
  }

  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    sub_100286140(v24);
    _objc_release(v34);
    v6 = v22;
    *v22 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = 0;
    v6[6] = 0;
    v6[7] = 0;
    v6[8] = 0;
    v6[9] = 0;
  }

  else
  {
    (*(v27 + 32))(v32, v24, v26);
    _objc_release(v34);
    v17 = URL.absoluteString.getter();
    v16 = v7;
    _objc_retain(v33);
    sub_10035A430();
    v37[3] = &unk_10065B148;
    v37[4] = &off_10065B168;
    sub_10035F06C(v17, v16, v33, v37, __b);
    v18 = [v33 name];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10035F1A8(v8, v9);
    _objc_release(v18);
    v19 = [v33 account];
    if (v19)
    {
      v15 = v19;
      v14 = v19;
      v36 = v19;
      _objc_retain(v19);
      v10 = sub_10025DBD0(v14);
      sub_10035F230(v10, v11, v12);
      _objc_release(v14);
    }

    v13 = __b;
    sub_10027EB5C(__b, v22);
    sub_10027D728(v13);
    (*(v27 + 8))(v32, v26);
  }
}

id sub_100362F14()
{
  sub_10025C6A0();
  result = sub_10025C704();
  qword_1006D9D38 = result;
  return result;
}

uint64_t *sub_100362F48()
{
  if (qword_1006D5F38 != -1)
  {
    swift_once();
  }

  return &qword_1006D9D38;
}

void *sub_100362FA8()
{
  v1 = *sub_100362F48();
  _objc_retain(v1);
  return v1;
}

void sub_100362FE0()
{
  v0 = *sub_100362F48();
  _objc_retain(v0);
  qword_1006D9D40 = [v0 mailboxRepository];
  _objc_release(v0);
}

uint64_t *sub_100363048()
{
  if (qword_1006D5F40 != -1)
  {
    swift_once();
  }

  return &qword_1006D9D40;
}

void *sub_1003630A8()
{
  v1 = *sub_100363048();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_1003630E0()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006D9D48);
  sub_1000208F4(v1, qword_1006D9D48);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_10036313C()
{
  if (qword_1006D5F48 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006D9D48);
}

uint64_t sub_1003631A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10036313C();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10036320C(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v136 = a1;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v124 = 0;
  v170 = 0;
  v168 = 0;
  v133 = type metadata accessor for Logger();
  v125 = v133;
  v126 = *(v133 - 8);
  v132 = v126;
  v127 = v126;
  v128 = *(v126 + 64);
  v2 = __chkstk_darwin(v136);
  v130 = (v128 + 15) & 0xFFFFFFFFFFFFFFF0;
  v129 = &v46 - v130;
  v3 = __chkstk_darwin(v2);
  v4 = &v46 - v130;
  v131 = &v46 - v130;
  v173 = v3;
  v174 = v5;
  v6 = sub_10036313C();
  v134 = *(v132 + 16);
  v135 = (v132 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v134(v4, v6, v133);

  v140 = 32;
  v144 = 32;
  v145 = 7;
  v7 = swift_allocObject();
  v8 = v137;
  v146 = v7;
  *(v7 + 16) = v136;
  *(v7 + 24) = v8;
  v157 = Logger.logObject.getter();
  v138 = v157;
  v156 = static os_log_type_t.info.getter();
  v139 = v156;
  v141 = 17;
  v150 = swift_allocObject();
  v142 = v150;
  *(v150 + 16) = v140;
  v151 = swift_allocObject();
  v143 = v151;
  *(v151 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v146;
  v147 = v9;
  *(v9 + 16) = sub_10035728C;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v147;
  v154 = v11;
  v148 = v11;
  *(v11 + 16) = sub_10026EE84;
  *(v11 + 24) = v12;
  v155 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v149 = v155;
  v152 = _allocateUninitializedArray<A>(_:)();
  v153 = v13;

  v14 = v150;
  v15 = v153;
  *v153 = sub_10026434C;
  v15[1] = v14;

  v16 = v151;
  v17 = v153;
  v153[2] = sub_10026434C;
  v17[3] = v16;

  v18 = v153;
  v19 = v154;
  v153[4] = sub_10026EF2C;
  v18[5] = v19;
  sub_1002612B0();

  if (os_log_type_enabled(v157, v156))
  {
    v20 = v124;
    v117 = static UnsafeMutablePointer.allocate(capacity:)();
    v114 = v117;
    v115 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v118 = sub_1002641E8(0, v115, v115);
    v116 = v118;
    v120 = 1;
    v119 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v162 = v117;
    v161 = v118;
    v160 = v119;
    v121 = &v162;
    sub_10026423C(2, &v162);
    sub_10026423C(v120, v121);
    v158 = sub_10026434C;
    v159 = v142;
    sub_100264250(&v158, v121, &v161, &v160);
    v122 = v20;
    v123 = v20;
    if (v20)
    {
      v112 = 0;

      __break(1u);
    }

    else
    {
      v158 = sub_10026434C;
      v159 = v143;
      sub_100264250(&v158, &v162, &v161, &v160);
      v110 = 0;
      v111 = 0;
      v158 = sub_10026EF2C;
      v159 = v148;
      sub_100264250(&v158, &v162, &v161, &v160);
      v108 = 0;
      v109 = 0;
      _os_log_impl(&_mh_execute_header, v138, v139, "#SiriMail MailboxEntityQuery for string: %s", v114, 0xCu);
      sub_10026429C(v116, 0);
      sub_10026429C(v119, 1);
      UnsafeMutablePointer.deallocate()();

      v113 = v108;
    }
  }

  else
  {
    v21 = v124;

    v113 = v21;
  }

  v22 = v113;

  v90 = *(v127 + 8);
  v91 = (v127 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v90(v131, v125);
  v92 = *sub_100363048();
  v23 = v92;
  v94 = [v92 allMailboxObjectIDs];
  v103 = 0;
  v97 = sub_100365480();
  sub_1003654E4();
  v95 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v95;
  v172 = v95;

  v101 = *sub_100363048();
  v24 = v101;

  v171[1] = v95;
  v96 = sub_10025C9B0(&qword_1006D9D70, &unk_100504A30);
  sub_100365564();
  v98 = Array.init<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v102 = [v101 mailboxesForObjectIDs:isa];
  v100 = v102;

  sub_10025C9B0(&qword_1006D7500, &qword_10050C710);
  v171[0] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = sub_10025C9B0(&unk_1006DCA10, &unk_1004FF5F0);
  v105 = sub_1003655EC();
  v25 = sub_100365650();
  v27 = sub_10025E9D8(sub_10028F504, v103, v104, v105, &type metadata for Never, v25, &protocol witness table for Never, v26);
  v106 = v22;
  v107 = v27;
  if (v22)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v84 = v107;
    sub_100264880(v171);

    v170 = v84;

    v169 = v84;

    v85 = &v46;
    __chkstk_darwin(&v46);
    v86 = &v46 - 4;
    *(&v46 - 2) = v136;
    *(&v46 - 1) = v28;
    v87 = sub_10025C9B0(&qword_1006D9D90, &qword_100506E30);
    sub_100365704();
    v29 = _ArrayProtocol.filter(_:)();
    v88 = 0;
    v89 = v29;
    v30 = v129;
    v64 = v29;

    v66 = sub_100362668();
    v65 = v66;
    v168 = v66;

    v31 = sub_10036313C();
    v134(v30, v31, v125);

    v73 = 7;
    v74 = swift_allocObject();
    *(v74 + 16) = v66;
    v83 = Logger.logObject.getter();
    v67 = v83;
    v82 = static os_log_type_t.info.getter();
    v68 = v82;
    v69 = 17;
    v77 = swift_allocObject();
    v70 = v77;
    *(v77 + 16) = 0;
    v78 = swift_allocObject();
    v71 = v78;
    *(v78 + 16) = 8;
    v72 = 32;
    v32 = swift_allocObject();
    v33 = v74;
    v75 = v32;
    *(v32 + 16) = sub_10036578C;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v75;
    v81 = v34;
    v76 = v34;
    *(v34 + 16) = sub_10026E818;
    *(v34 + 24) = v35;
    v79 = _allocateUninitializedArray<A>(_:)();
    v80 = v36;

    v37 = v77;
    v38 = v80;
    *v80 = sub_10026434C;
    v38[1] = v37;

    v39 = v78;
    v40 = v80;
    v80[2] = sub_10026434C;
    v40[3] = v39;

    v41 = v80;
    v42 = v81;
    v80[4] = sub_10026EBF8;
    v41[5] = v42;
    sub_1002612B0();

    if (os_log_type_enabled(v83, v82))
    {
      v43 = v88;
      v58 = static UnsafeMutablePointer.allocate(capacity:)();
      v54 = v58;
      v55 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v56 = 0;
      v59 = sub_1002641E8(0, v55, v55);
      v57 = v59;
      v60 = sub_1002641E8(v56, &type metadata for Any + 8, &type metadata for Any + 8);
      v167 = v58;
      v166 = v59;
      v165 = v60;
      v61 = &v167;
      sub_10026423C(0, &v167);
      sub_10026423C(1, v61);
      v163 = sub_10026434C;
      v164 = v70;
      sub_100264250(&v163, v61, &v166, &v165);
      v62 = v43;
      v63 = v43;
      if (v43)
      {
        v52 = 0;

        __break(1u);
      }

      else
      {
        v163 = sub_10026434C;
        v164 = v71;
        sub_100264250(&v163, &v167, &v166, &v165);
        v50 = 0;
        v51 = 0;
        v163 = sub_10026EBF8;
        v164 = v76;
        sub_100264250(&v163, &v167, &v166, &v165);
        v48 = 0;
        v49 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "#SiriMail MailboxEntityQuery for string: matchingMailboxes count: %ld", v54, 0xCu);
        v47 = 0;
        sub_10026429C(v57, 0);
        sub_10026429C(v60, v47);
        UnsafeMutablePointer.deallocate()();

        v53 = v48;
      }
    }

    else
    {
      v44 = v88;

      v53 = v44;
    }

    v90(v129, v125);

    return v65;
  }

  return result;
}

uint64_t sub_1003643E8(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = [*a1 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static String.== infix(_:_:)();

  _objc_release(v4);
  return v5 & 1;
}

uint64_t sub_100364484@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v50 = a2;
  v49 = a1;
  v48 = a3;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v58 = type metadata accessor for Logger();
  v51 = v58;
  v52 = *(v58 - 8);
  v57 = v52;
  v53 = v52;
  v3 = __chkstk_darwin(v49);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v5;
  v59 = *v3;
  v55 = v59;
  v60 = v3[1];
  v56 = v60;
  v86 = v59;
  v87 = v60;
  v85 = v6;
  v7 = sub_10036313C();
  (*(v57 + 16))(v5, v7, v58);

  v63 = 32;
  v67 = 32;
  v68 = 7;
  v8 = swift_allocObject();
  v9 = v60;
  v69 = v8;
  *(v8 + 16) = v59;
  *(v8 + 24) = v9;
  v79 = Logger.logObject.getter();
  v61 = v79;
  v78 = static os_log_type_t.info.getter();
  v62 = v78;
  v64 = 17;
  v72 = swift_allocObject();
  v65 = v72;
  *(v72 + 16) = v63;
  v73 = swift_allocObject();
  v66 = v73;
  *(v73 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v69;
  v70 = v10;
  *(v10 + 16) = sub_10035728C;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v70;
  v76 = v12;
  v71 = v12;
  *(v12 + 16) = sub_10026EE84;
  *(v12 + 24) = v13;
  v77 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v74 = _allocateUninitializedArray<A>(_:)();
  v75 = v14;

  v15 = v72;
  v16 = v75;
  *v75 = sub_10026434C;
  v16[1] = v15;

  v17 = v73;
  v18 = v75;
  v75[2] = sub_10026434C;
  v18[3] = v17;

  v19 = v75;
  v20 = v76;
  v75[4] = sub_10026EF2C;
  v19[5] = v20;
  sub_1002612B0();

  if (os_log_type_enabled(v79, v78))
  {
    v44 = v47;
    v39 = static UnsafeMutablePointer.allocate(capacity:)();
    v36 = v39;
    v37 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v40 = sub_1002641E8(0, v37, v37);
    v38 = v40;
    v42 = 1;
    v41 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v84[0] = v39;
    v83 = v40;
    v82 = v41;
    v43 = v84;
    sub_10026423C(2, v84);
    sub_10026423C(v42, v43);
    v21 = v44;
    v80 = sub_10026434C;
    v81 = v65;
    sub_100264250(&v80, v43, &v83, &v82);
    v45 = v21;
    v46 = v21;
    if (v21)
    {
      v34 = 0;

      __break(1u);
    }

    else
    {
      v80 = sub_10026434C;
      v81 = v66;
      sub_100264250(&v80, v84, &v83, &v82);
      v32 = 0;
      v33 = 0;
      v80 = sub_10026EF2C;
      v81 = v71;
      sub_100264250(&v80, v84, &v83, &v82);
      v30 = 0;
      v31 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "#SiriMail MailboxEntityQuery for identifiers: matchingMailboxes query id: %s", v36, 0xCu);
      sub_10026429C(v38, 0);
      sub_10026429C(v41, 1);
      UnsafeMutablePointer.deallocate()();

      v35 = v30;
    }
  }

  else
  {

    v35 = v47;
  }

  v27 = v35;

  (*(v53 + 8))(v54, v51);

  v84[1] = v50;

  v26[2] = v26;
  __chkstk_darwin(v26);
  v26[3] = &v26[-4];
  v26[-2] = v55;
  v26[-1] = v22;
  v26[4] = sub_10025C9B0(&qword_1006D9D90, &qword_100506E30);
  sub_100365704();
  v23 = v27;
  v24 = _ArrayProtocol.filter(_:)();
  v28 = v23;
  v29 = v24;
  if (v23)
  {

    __break(1u);
  }

  else
  {
    v26[0] = v29;
    v26[1] = 0;

    *v48 = v26[0];
  }

  return result;
}

uint64_t sub_100364CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v32 = a3;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v24 = &v9[-v23];
  v28 = *(*(sub_10025C9B0(&qword_1006D7250, &unk_1004FF0C0) - 8) + 64);
  v27 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v32);
  v29 = &v9[-v27];
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v3);
  v31 = &v9[-v30];
  v33 = *v5;
  v43 = v33;
  v41 = v6;
  v42 = v4;

  v34 = [v33 objectID];
  v35 = [v34 url];
  if (v35)
  {
    v19 = v35;
    v18 = v35;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v21 + 32))(v29, v24, v20);
    (*(v21 + 56))(v29, 0, 1, v20);
    _objc_release(v18);
  }

  else
  {
    (*(v21 + 56))(v29, 1, 1, v20);
  }

  sub_100366298(v29, v31);
  _objc_release(v34);
  if ((*(v21 + 48))(v31, 1, v20) == 1)
  {
    sub_100286140(v31);
    v17 = 0uLL;
  }

  else
  {
    *&v16 = URL.absoluteString.getter();
    *(&v16 + 1) = v7;
    (*(v21 + 8))(v31, v20);
    v17 = v16;
  }

  v15 = v17;

  v39[0] = v26;
  v39[1] = v32;
  v40 = v15;
  if (!v32)
  {
    if (!*(&v40 + 1))
    {
      sub_100268744(v39);
      v14 = 1;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_100268860(v39, &v38);
  if (!*(&v40 + 1))
  {
    sub_100268744(&v38);
LABEL_14:
    sub_100268828(v39);
    v14 = 0;
    goto LABEL_13;
  }

  v12 = &v37;
  v37 = v38;
  v11 = &v36;
  v36 = v40;
  v13 = static String.== infix(_:_:)();
  sub_100268744(v11);
  sub_100268744(v12);
  sub_100268744(v39);
  v14 = v13;
LABEL_13:
  v10 = v14;

  return v10 & 1;
}

uint64_t sub_100365198()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.EntitySchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0050;
  sub_10002094C(v7, qword_1006F0050);
  v11 = sub_1000208F4(v7, v6);
  sub_100261018();
  sub_1003652D8();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1003652D8()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailboxEntity", 0xDuLL, 1);
  return AssistantSchema.EntitySchema.init(_:)();
}

uint64_t sub_1003653B0()
{
  if (qword_1006D5F50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0050);
}

uint64_t sub_10036541C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003653B0();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_100365480()
{
  v2 = qword_1006D9D60;
  if (!qword_1006D9D60)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9D60);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003654E4()
{
  v2 = qword_1006D9D68;
  if (!qword_1006D9D68)
  {
    sub_100365480();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9D68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365564()
{
  v2 = qword_1006D9D78;
  if (!qword_1006D9D78)
  {
    sub_10025CAA4(&qword_1006D9D70, &unk_100504A30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9D78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003655EC()
{
  v2 = qword_1006D9D80;
  if (!qword_1006D9D80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D9D80);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100365650()
{
  v2 = qword_1006D9D88;
  if (!qword_1006D9D88)
  {
    sub_10025CAA4(&unk_1006DCA10, &unk_1004FF5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9D88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365704()
{
  v2 = qword_1006D9D98;
  if (!qword_1006D9D98)
  {
    sub_10025CAA4(&qword_1006D9D90, &qword_100506E30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9D98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003657BC()
{
  v2 = qword_1006D9DA8;
  if (!qword_1006D9DA8)
  {
    sub_10025CAA4(&qword_1006D9D90, &qword_100506E30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9DA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365844()
{
  v2 = qword_1006D9DE0;
  if (!qword_1006D9DE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9DE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365908()
{
  v2 = qword_1006D9DE8;
  if (!qword_1006D9DE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9DE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036599C()
{
  v2 = qword_1006D9DF0;
  if (!qword_1006D9DF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9DF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365A30()
{
  v2 = qword_1006D9DF8;
  if (!qword_1006D9DF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9DF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365ADC()
{
  v2 = qword_1006D9E00;
  if (!qword_1006D9E00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365B88()
{
  v2 = qword_1006D9E18;
  if (!qword_1006D9E18)
  {
    sub_10025CAA4(&qword_1006D9E20, &qword_100504BE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365C28()
{
  v2 = qword_1006D9E28;
  if (!qword_1006D9E28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365CA4(uint64_t a1)
{
  result = sub_100321530();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100365D00()
{
  v2 = qword_1006D9E30;
  if (!qword_1006D9E30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365D94()
{
  v2 = qword_1006D9E38;
  if (!qword_1006D9E38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365E90()
{
  v2 = qword_1006D9E40;
  if (!qword_1006D9E40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365F24()
{
  v2 = qword_1006D9E48;
  if (!qword_1006D9E48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100365FD0()
{
  v2 = qword_1006D9E50;
  if (!qword_1006D9E50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100366064()
{
  v2 = qword_1006D9E58;
  if (!qword_1006D9E58)
  {
    sub_10025CAA4(&qword_1006D7020, &unk_1004FEA40);
    sub_100342164();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100366114()
{
  v2 = qword_1006D9E68;
  if (!qword_1006D9E68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003661E0()
{
  v2 = qword_1006D9E70;
  if (!qword_1006D9E70)
  {
    sub_10025CAA4(&qword_1006D9E78, qword_1005050A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9E70);
    return WitnessTable;
  }

  return v2;
}

void *sub_100366298(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D7250, &unk_1004FF0C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1003663C0(uint64_t a1)
{
  v43 = a1;
  v55 = 0;
  v50 = 0;
  v44 = type metadata accessor for Logger();
  v45 = *(v44 - 8);
  v46 = v45;
  v1 = __chkstk_darwin(v43);
  v47 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1;
  v48 = sub_10035A48C();
  if (v48)
  {
    v41 = v48;
    v39 = v48;
    v49 = &OBJC_PROTOCOL___MailboxSelectionCapable;
    v40 = swift_dynamicCastObjCProtocolConditional();
    if (v40)
    {
      v38 = v40;
    }

    else
    {

      v38 = 0;
    }

    v37 = v38;
  }

  else
  {
    v37 = 0;
  }

  v36 = v37;
  if (v37)
  {
    v35 = v36;
    v10 = v36;
    v11 = v42;
    v50 = v36;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = [v10 splitViewController];
    swift_unknownObjectRelease();
    [v9 showMailboxPickerController:1 animated:0 completion:0];

    return swift_unknownObjectRelease();
  }

  else
  {
    v3 = v47;
    v4 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v46 + 16))(v3, v4, v44);
    v33 = Logger.logObject.getter();
    v30 = v33;
    v32 = static os_log_type_t.error.getter();
    v31 = v32;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v34 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v33, v32))
    {
      v29 = v42;
      v21 = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = v21;
      v18 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v19 = 0;
      v22 = sub_1002641E8(0, v18, v18);
      v20 = v22;
      v23 = sub_1002641E8(v19, &type metadata for Any + 8, &type metadata for Any + 8);
      v54 = v21;
      v53 = v22;
      v52 = v23;
      v24 = 0;
      v25 = &v54;
      sub_10026423C(0, &v54);
      sub_10026423C(v24, v25);
      v51 = v34;
      v26 = &v9;
      __chkstk_darwin(&v9);
      v27 = &v9 - 6;
      *(&v9 - 4) = v5;
      *(&v9 - 3) = &v53;
      *(&v9 - 2) = &v52;
      v28 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      v6 = v29;
      Sequence.forEach(_:)();
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v30, v31, "Failed to find a scene capable of displaying the message list", v17, 2u);
        v16 = 0;
        sub_10026429C(v20, 0);
        sub_10026429C(v23, v16);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v46 + 8))(v47, v44);
    sub_10028B33C();
    v14 = 0;
    v13 = 0;
    v15 = swift_allocError();
    v12 = v7;
    sub_1002F171C(v43, v7);
    *(v12 + 40) = v13;
    swift_willThrow();
    return v14;
  }
}

uint64_t sub_100366990(uint64_t a1)
{
  v166 = a1;
  v165 = 0;
  v206 = 0;
  v205 = 0;
  v196 = 0;
  v195 = 0;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v182 = 0;
  v167 = type metadata accessor for Logger();
  v168 = *(v167 - 8);
  v169 = v168;
  v171 = *(v168 + 64);
  v2 = __chkstk_darwin(v166);
  v173 = (v171 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = &v39 - v173;
  v3 = __chkstk_darwin(v2);
  v172 = &v39 - v173;
  v4 = __chkstk_darwin(v3);
  v174 = &v39 - v173;
  v206 = v4;
  v205 = v1;
  sub_10035F9D8();
  v176 = v204;
  v175 = v204;
  swift_unknownObjectRetain();
  objc_opt_self();
  v177 = swift_dynamicCastObjCClass();
  if (v177)
  {
    v162 = v177;
  }

  else
  {
    swift_unknownObjectRelease();
    v162 = 0;
  }

  v161 = v162;
  if (v162)
  {
    v160 = v161;
    v5 = v174;
    v154 = v161;
    v182 = v161;
    sub_10027D728(v203);
    v6 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v169 + 16))(v5, v6, v167);
    v158 = Logger.logObject.getter();
    v155 = v158;
    v157 = static os_log_type_t.info.getter();
    v156 = v157;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v159 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v158, v157))
    {
      v152 = v163;
      v144 = static UnsafeMutablePointer.allocate(capacity:)();
      v140 = v144;
      v141 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v142 = 0;
      v145 = sub_1002641E8(0, v141, v141);
      v143 = v145;
      v146 = sub_1002641E8(v142, &type metadata for Any + 8, &type metadata for Any + 8);
      v181 = v144;
      v180 = v145;
      v179 = v146;
      v147 = 0;
      v148 = &v181;
      sub_10026423C(0, &v181);
      sub_10026423C(v147, v148);
      v178 = v159;
      v149 = &v39;
      __chkstk_darwin(&v39);
      v150 = &v39 - 6;
      v151 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      v7 = v152;
      Sequence.forEach(_:)();
      v153 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v155, v156, "#SiriMail MailboxPickerOutlineController showing mailbox for FavoriteItem", v140, 2u);
        v138 = 0;
        sub_10026429C(v143, 0);
        sub_10026429C(v146, v138);
        UnsafeMutablePointer.deallocate()();

        v139 = v153;
      }
    }

    else
    {

      v139 = v163;
    }

    v136 = v139;

    (*(v169 + 8))(v174, v167);
    [v164 selectFavoriteItem:v154 animated:0];

    result = v136;
    v137 = v136;
  }

  else
  {
    sub_10027D728(v203);
    sub_10035F9D8();
    v134 = v202;
    v133 = v202;
    swift_unknownObjectRetain();
    objc_opt_self();
    v135 = swift_dynamicCastObjCClass();
    if (v135)
    {
      v132 = v135;
    }

    else
    {
      swift_unknownObjectRelease();
      v132 = 0;
    }

    v131 = v132;
    if (v132)
    {
      v130 = v131;
      v126 = v131;
      v189 = v131;
      sub_10027D728(v201);
      v128 = [objc_opt_self() sharedApplication];
      v127 = v128;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      v129 = v9;
      if (v9)
      {
        v125 = v129;
      }

      else
      {

        v125 = 0;
      }

      v124 = v125;
      if (v125)
      {
        v123 = v124;
        v121 = v124;
        v188 = v124;
        v10 = [v124 mailboxProvider];
        v122 = v10;
        if (v10)
        {
          v120 = v122;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v118 = v120;
        v116 = [v126 objectID];
        v119 = [v118 legacyMailboxForObjectID:?];
        v117 = v119;

        if (v119)
        {
          v115 = v117;
          v35 = v170;
          v57 = v117;
          v187 = v117;
          v36 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v169 + 16))(v35, v36, v167);
          v61 = Logger.logObject.getter();
          v58 = v61;
          v60 = static os_log_type_t.info.getter();
          v59 = v60;
          sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
          v62 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v61, v60))
          {
            v55 = v163;
            v47 = static UnsafeMutablePointer.allocate(capacity:)();
            v43 = v47;
            v44 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
            v45 = 0;
            v48 = sub_1002641E8(0, v44, v44);
            v46 = v48;
            v49 = sub_1002641E8(v45, &type metadata for Any + 8, &type metadata for Any + 8);
            v186 = v47;
            v185 = v48;
            v184 = v49;
            v50 = 0;
            v51 = &v186;
            sub_10026423C(0, &v186);
            sub_10026423C(v50, v51);
            v183 = v62;
            v52 = &v39;
            __chkstk_darwin(&v39);
            v53 = &v39 - 6;
            v54 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
            sub_10026E6E0();
            v38 = v55;
            Sequence.forEach(_:)();
            v56 = v38;
            if (v38)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&_mh_execute_header, v58, v59, "#SiriMail MailboxPickerOutlineController showing mailbox for EMMailbox", v43, 2u);
              v41 = 0;
              sub_10026429C(v46, 0);
              sub_10026429C(v49, v41);
              UnsafeMutablePointer.deallocate()();

              v42 = v56;
            }
          }

          else
          {

            v42 = v163;
          }

          v40 = v42;

          (*(v169 + 8))(v170, v167);
          [v164 selectMailbox:v57];

          return v40;
        }
      }

      else
      {
      }
    }

    else
    {
      sub_10027D728(v201);
    }

    v80 = 71;
    v87 = 1;
    v199 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v200 = v11;
    v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("#SiriMail Expected representingMailbox to be FavoriteItem or EMMailbox ", v80, v87);
    object = v12._object;
    v89 = &v199;
    DefaultStringInterpolation.appendLiteral(_:)(v12);

    v83 = v198;
    sub_10035F9D8();
    v82 = v198[2];
    swift_unknownObjectRetain();
    v197[2] = v82;
    v85 = String.init<A>(describing:)();
    v84 = v13;
    sub_10027D728(v83);
    v197[0] = v85;
    v197[1] = v84;
    v86 = v197;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_100268744(v86);
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v87);
    v88 = v14._object;
    DefaultStringInterpolation.appendLiteral(_:)(v14);
    v15 = v172;

    v91 = v199;
    v90 = v200;

    sub_100268744(v89);
    v94 = String.init(stringInterpolation:)();
    v95 = v16;
    v92 = v94;
    v93 = v16;
    v195 = v94;
    v196 = v16;
    v17 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v169 + 16))(v15, v17, v167);

    v98 = 32;
    v102 = 32;
    v103 = 7;
    v18 = swift_allocObject();
    v19 = v95;
    v104 = v18;
    *(v18 + 16) = v94;
    *(v18 + 24) = v19;
    v114 = Logger.logObject.getter();
    v96 = v114;
    v113 = static os_log_type_t.error.getter();
    v97 = v113;
    v99 = 17;
    v107 = swift_allocObject();
    v100 = v107;
    *(v107 + 16) = v98;
    v108 = swift_allocObject();
    v101 = v108;
    *(v108 + 16) = 8;
    v20 = swift_allocObject();
    v21 = v104;
    v105 = v20;
    *(v20 + 16) = sub_10035728C;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v105;
    v111 = v22;
    v106 = v22;
    *(v22 + 16) = sub_10026EE84;
    *(v22 + 24) = v23;
    v112 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v109 = _allocateUninitializedArray<A>(_:)();
    v110 = v24;

    v25 = v107;
    v26 = v110;
    *v110 = sub_10026434C;
    v26[1] = v25;

    v27 = v108;
    v28 = v110;
    v110[2] = sub_10026434C;
    v28[3] = v27;

    v29 = v110;
    v30 = v111;
    v110[4] = sub_10026EF2C;
    v29[5] = v30;
    sub_1002612B0();

    if (os_log_type_enabled(v114, v113))
    {
      v77 = v163;
      v72 = static UnsafeMutablePointer.allocate(capacity:)();
      v69 = v72;
      v70 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v73 = sub_1002641E8(0, v70, v70);
      v71 = v73;
      v75 = 1;
      v74 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v194 = v72;
      v193 = v73;
      v192 = v74;
      v76 = &v194;
      sub_10026423C(2, &v194);
      sub_10026423C(v75, v76);
      v31 = v77;
      v190 = sub_10026434C;
      v191 = v100;
      sub_100264250(&v190, v76, &v193, &v192);
      v78 = v31;
      v79 = v31;
      if (v31)
      {
        v68 = 0;

        __break(1u);
      }

      else
      {
        v190 = sub_10026434C;
        v191 = v101;
        sub_100264250(&v190, &v194, &v193, &v192);
        v66 = 0;
        v67 = 0;
        v190 = sub_10026EF2C;
        v191 = v106;
        sub_100264250(&v190, &v194, &v193, &v192);
        v65 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "%s", v69, 0xCu);
        sub_10026429C(v71, 0);
        sub_10026429C(v74, 1);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    (*(v169 + 8))(v172, v167);

    sub_100367A00();
    v63 = 0;
    v32 = swift_allocError();
    v33 = v93;
    v64 = v32;
    *v34 = v92;
    v34[1] = v33;
    swift_willThrow();
  }

  return result;
}

unint64_t sub_100367A00()
{
  v2 = qword_1006DBE30;
  if (!qword_1006DBE30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBE30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100367A78()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mail Cleanup Settings", 0x15uLL, 1);
  result = v1._countAndFlagsBits;
  static MailCleanupInternalSettingsViewController.title = v1;
  return result;
}

__int128 *MailCleanupInternalSettingsViewController.title.unsafeMutableAddressor()
{
  if (qword_1006D5F58 != -1)
  {
    swift_once();
  }

  return &static MailCleanupInternalSettingsViewController.title;
}

uint64_t static MailCleanupInternalSettingsViewController.title.getter()
{
  v1 = *MailCleanupInternalSettingsViewController.title.unsafeMutableAddressor();

  return v1;
}

id sub_100367BC8()
{
  v2 = (v0 + OBJC_IVAR___MFMailCleanupInternalSettingsViewController_contentHost);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100367C38(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR___MFMailCleanupInternalSettingsViewController_contentHost);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

Swift::Void __swiftcall MailCleanupInternalSettingsViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v60 = v0;
  _objc_retain(v0);
  v59.receiver = v0;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "viewDidLoad");
  _objc_release(v56);
  v57 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v58 = swift_dynamicCastObjCClass();
  if (v58)
  {
    v54 = v58;
  }

  else
  {
    _objc_release(v57);
    v54 = 0;
  }

  if (v54)
  {
    v1 = [v54 getiCloudMailCleanupService];
    v53 = v1;
    if (v1)
    {
      v2 = MUIiCloudMailCleanupService.getProvider()();
      v52 = v2;
      if (v2)
      {
        sub_10025C9B0(&qword_1006D9E90, &qword_100505140);

        sub_1003686F4(v52);
        v49 = UIHostingController.__allocating_init(rootView:)();
        v48 = &v56[OBJC_IVAR___MFMailCleanupInternalSettingsViewController_contentHost];
        swift_beginAccess();
        v3 = *v48;
        *v48 = v49;
        _objc_release(v3);
        swift_endAccess();
        v50 = &v56[OBJC_IVAR___MFMailCleanupInternalSettingsViewController_contentHost];
        swift_beginAccess();
        v51 = *v50;
        _objc_retain(*v50);
        swift_endAccess();
        if (v51)
        {
          v47 = v51;
        }

        else
        {
          LOBYTE(v4) = 2;
          v11 = 36;
          LODWORD(v18) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        [v56 addChildViewController:{v4, v11, v18}];
        _objc_release(v47);
        _objc_retain(v56);
        v46 = [v56 view];
        _objc_release(v56);
        if (v46)
        {
          v45 = v46;
        }

        else
        {
          LOBYTE(v5) = 2;
          v12 = 37;
          LODWORD(v19) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v43 = &v56[OBJC_IVAR___MFMailCleanupInternalSettingsViewController_contentHost];
        swift_beginAccess();
        v44 = *v43;
        _objc_retain(*v43);
        swift_endAccess();
        if (v44)
        {
          v42 = v44;
        }

        else
        {
          LOBYTE(v5) = 2;
          v12 = 37;
          LODWORD(v19) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v41 = [v42 view];
        _objc_release(v42);
        if (v41)
        {
          v40 = v41;
        }

        else
        {
          LOBYTE(v6) = 2;
          v13 = 37;
          LODWORD(v20) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        [v45 addSubview:{v6, v13, v20}];
        _objc_release(v40);
        _objc_release(v45);
        v38 = &v56[OBJC_IVAR___MFMailCleanupInternalSettingsViewController_contentHost];
        swift_beginAccess();
        v39 = *v38;
        _objc_retain(*v38);
        swift_endAccess();
        if (v39)
        {
          v37 = v39;
        }

        else
        {
          LOBYTE(v7) = 2;
          v14 = 39;
          LODWORD(v21) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v36 = [v37 view];
        _objc_release(v37);
        if (v36)
        {
          v35 = v36;
        }

        else
        {
          LOBYTE(v8) = 2;
          v15 = 39;
          LODWORD(v22) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        [v35 setTranslatesAutoresizingMaskIntoConstraints:{0, v8, v15, v22}];
        _objc_release(v35);
        v33 = &v56[OBJC_IVAR___MFMailCleanupInternalSettingsViewController_contentHost];
        swift_beginAccess();
        v34 = *v33;
        _objc_retain(*v33);
        swift_endAccess();
        if (v34)
        {
          v32 = v34;
        }

        else
        {
          LOBYTE(v9) = 2;
          v16 = 40;
          LODWORD(v23) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v31 = [v32 view];
        _objc_release(v32);
        if (v31)
        {
          v30 = v31;
        }

        else
        {
          LOBYTE(v10) = 2;
          v17 = 40;
          LODWORD(v24) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _objc_retain(v56);
        v29 = [v56 view];
        _objc_release(v56);
        if (v29)
        {
          v28 = v29;
        }

        else
        {
          LOBYTE(v10) = 2;
          v17 = 40;
          LODWORD(v24) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        [v30 mf_pinToView:v10 usingLayoutMargins:{v17, v24}];
        _objc_release(v28);
        _objc_release(v30);
        v26 = &v56[OBJC_IVAR___MFMailCleanupInternalSettingsViewController_contentHost];
        swift_beginAccess();
        v27 = *v26;
        _objc_retain(*v26);
        swift_endAccess();
        if (v27)
        {
          v25 = v27;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _objc_retain(v56);
        [v25 didMoveToParentViewController:v56];
        _objc_release(v56);
        _objc_release(v25);

        _objc_release(v53);
        _objc_release(v54);
      }

      else
      {
        _objc_release(v53);
        _objc_release(v54);
      }
    }

    else
    {
      _objc_release(v54);
    }
  }
}

uint64_t sub_1003686F4(uint64_t a1)
{
  v3 = 0;

  v3 = a1;

  sub_100268928(&v3);
  return a1;
}

id MailDebugNotificationDelaySettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName:? bundle:?];
  _objc_release(a3);
  _objc_release(v7);
  return v5;
}

id MailCleanupInternalSettingsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15 = a1;
  v16 = a2;
  v14 = a3;
  v17 = v3;
  *&v3[OBJC_IVAR___MFMailCleanupInternalSettingsViewController_contentHost] = 0;

  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v13.receiver = v17;
  v13.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v8);
  _objc_release(v5);
  _objc_retain(v6);
  v17 = v6;
  _objc_release(a3);

  _objc_release(v17);
  return v6;
}

id MailCleanupInternalSettingsViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  *&v1[OBJC_IVAR___MFMailCleanupInternalSettingsViewController_contentHost] = 0;
  v7.receiver = v9;
  v7.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v7, "initWithCoder:");
  if (v6)
  {
    _objc_retain(v6);
    v9 = v6;
    _objc_release(a1);
    _objc_release(v9);
    return v6;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

uint64_t sub_100368C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v10 = a1;
  v9 = sub_100368FC8;
  v21 = 0;
  v20 = 0;
  v17 = sub_10025C9B0(&qword_1006D9E98, &qword_100505148);
  v11 = *(v17 - 8);
  v12 = v17 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v10);
  v15 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v16 = &v6 - v7;
  v21 = &v6 - v7;
  v20 = v4;

  v8 = type metadata accessor for MAInternalSettingsView();
  sub_100368FD0();
  List<>.init(content:)();

  v14 = sub_100369050();
  sub_1002EC85C(v15, v17, v16);
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v19(v15, v17);
  (*(v11 + 16))(v15, v16, v17);
  sub_1002EC85C(v15, v17, v13);
  v19(v15, v17);
  return (v19)(v16, v17);
}

uint64_t sub_100368E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v8 = a1;
  v19 = 0;
  v18 = 0;
  v15 = type metadata accessor for MAInternalSettingsView();
  v9 = *(v15 - 8);
  v10 = v15 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v13 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v14 = &v6 - v7;
  v19 = &v6 - v7;
  v18 = v4;

  MAInternalSettingsView.init(provider:)();
  v12 = sub_100368FD0();
  sub_1002EC85C(v13, v15, v14);
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v15);
  (*(v9 + 16))(v13, v14, v15);
  sub_1002EC85C(v13, v15, v11);
  v17(v13, v15);
  return (v17)(v14, v15);
}

unint64_t sub_100368FD0()
{
  v2 = qword_1006D9EA0;
  if (!qword_1006D9EA0)
  {
    type metadata accessor for MAInternalSettingsView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9EA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100369050()
{
  v2 = qword_1006D9EA8;
  if (!qword_1006D9EA8)
  {
    sub_10025CAA4(&qword_1006D9E98, &qword_100505148);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9EA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10036918C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Don't Force Status", 0x12uLL, 1)._countAndFlagsBits;
      break;
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Connecting…", 0xDuLL, 0)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Downloading 123 of 9876", 0x17uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Updated Just Now", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Updated Just Now w/ Unread", 0x1AuLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Account Error", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Account Error w/ Unread", 0x17uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Undo Send", 9uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("iCloud Storage Almost Full", 0x1AuLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("iCloud Storage Almost Full w/ Unread", 0x24uLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("iCloud Storage Full", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("iCloud Storage Full w/ Unread", 0x1DuLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Filter Enabled", 0xEuLL, 1)._countAndFlagsBits;
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return countAndFlagsBits;
}

uint64_t MailDebugForceStatus.init(rawValue:)(uint64_t a1)
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
  }

  return 0;
}

uint64_t sub_100369710@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MailDebugForceStatus.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1003697C8()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Force Status", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static MailDebugForceStatusViewController.title = v1;
  return result;
}

__int128 *MailDebugForceStatusViewController.title.unsafeMutableAddressor()
{
  if (qword_1006D5F60 != -1)
  {
    swift_once();
  }

  return &static MailDebugForceStatusViewController.title;
}

uint64_t static MailDebugForceStatusViewController.title.getter()
{
  v1 = *MailDebugForceStatusViewController.title.unsafeMutableAddressor();

  return v1;
}

Swift::Void __swiftcall MailDebugForceStatusViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v25 = v0;
  _objc_retain(v0);
  v24.receiver = v0;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidLoad");
  _objc_release(v22);
  _objc_retain(v22);
  MailDebugForceStatusViewController.title.unsafeMutableAddressor();

  v20 = String._bridgeToObjectiveC()();

  [v22 setTitle:v20];
  _objc_release(v20);
  _objc_release(v22);
  sub_10025C9B0(&qword_1006D9ED8, &qword_100505260);
  sub_100369EAC();
  v21 = UIHostingController.__allocating_init(rootView:)();
  [v22 addChildViewController:?];
  _objc_retain(v22);
  v23 = [v22 view];
  _objc_release(v22);
  if (v23)
  {
    v18 = v23;
  }

  else
  {
    LOBYTE(v1) = 2;
    v4 = 77;
    LODWORD(v7) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _objc_retain(v21);
  v17 = [v21 view];
  _objc_release(v21);
  if (v17)
  {
    v16 = v17;
  }

  else
  {
    LOBYTE(v1) = 2;
    v4 = 77;
    LODWORD(v7) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v18 addSubview:{v1, v4, v7}];
  _objc_release(v16);
  _objc_release(v18);
  _objc_retain(v21);
  v15 = [v21 view];
  _objc_release(v21);
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    LOBYTE(v2) = 2;
    v5 = 79;
    LODWORD(v8) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v14 setTranslatesAutoresizingMaskIntoConstraints:{0, v2, v5, v8}];
  _objc_release(v14);
  _objc_retain(v21);
  v13 = [v21 view];
  _objc_release(v21);
  if (v13)
  {
    v12 = v13;
  }

  else
  {
    LOBYTE(v3) = 2;
    v6 = 80;
    LODWORD(v9) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _objc_retain(v22);
  v11 = [v22 view];
  _objc_release(v22);
  if (v11)
  {
    v10 = v11;
  }

  else
  {
    LOBYTE(v3) = 2;
    v6 = 80;
    LODWORD(v9) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v12 mf_pinToView:v3 usingLayoutMargins:{v6, v9}];
  _objc_release(v10);
  _objc_release(v12);
  _objc_retain(v22);
  [v21 didMoveToParentViewController:v22];
  _objc_release(v22);
  _objc_release(v21);
}

uint64_t sub_100369EAC()
{
  v5 = 0;
  v6 = 0;
  v4 = sub_10036A260(0);

  v5 = v4;
  _allocateUninitializedArray<A>(_:)();
  *v0 = 1;
  v0[1] = 2;
  v0[2] = 3;
  v0[3] = 4;
  v0[4] = 5;
  v0[5] = 6;
  v0[6] = 7;
  v0[7] = 8;
  v0[8] = 9;
  v0[9] = 10;
  v0[10] = 11;
  v0[11] = 12;
  sub_1002612B0();
  v3 = v1;

  v6 = v3;
  sub_10036C5DC(&v5);
  return v4;
}

id MailDebugForceStatusViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15 = a1;
  v16 = a2;
  v14 = a3;
  v17 = v3;

  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v13.receiver = v3;
  v13.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v8);
  _objc_release(v5);
  _objc_retain(v6);
  v17 = v6;
  _objc_release(a3);

  _objc_release(v17);
  return v6;
}

uint64_t sub_10036A260(uint64_t a1)
{
  v2 = EMUserDefaultForceStatus;
  _objc_retain(EMUserDefaultForceStatus);
  sub_100261924(v2);
  _objc_release(v2);
  [objc_opt_self() em_userDefaults];
  sub_10036A31C();
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

unint64_t sub_10036A31C()
{
  v2 = qword_1006D9EE0;
  if (!qword_1006D9EE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9EE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10036A398(uint64_t a1)
{

  AppStorage.wrappedValue.getter();

  return v2;
}

uint64_t sub_10036A3E8(uint64_t a1, uint64_t a2)
{

  AppStorage.wrappedValue.setter();
}

uint64_t sub_10036A43C(uint64_t a1)
{

  AppStorage.projectedValue.getter();

  return v2;
}

uint64_t sub_10036A4D0(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_10036A50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v13 = a1;
  v14 = a2;
  v12 = sub_10036AC88;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v21 = sub_10025C9B0(&qword_1006D9EE8, &qword_100505268);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v8 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v13);
  v19 = &v8 - v8;
  v9 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v20 = &v8 - v9;
  v29 = &v8 - v9;
  v27 = v5;
  v28 = v6;

  v10 = &v24;
  v25 = v13;
  v26 = v14;
  v11 = sub_10025C9B0(&qword_1006D9EF0, &qword_100505270);
  sub_10036AC94();
  Form.init(content:)();

  v18 = sub_10036AD1C();
  sub_1002EC85C(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  sub_1002EC85C(v19, v21, v17);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_10036A74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v19 = a1;
  v20 = a2;
  v15 = sub_10036C2C4;
  v18 = sub_10036C37C;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v32 = sub_10025C9B0(&qword_1006D9F78, &qword_100505578);
  v23 = *(v32 - 8);
  v24 = v32 - 8;
  v9 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v29 = &v9 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v9);
  v31 = &v9 - v10;
  v52 = &v9 - v10;
  v36 = sub_10025C9B0(&qword_1006D9F80, &qword_100505580);
  v21 = *(v36 - 8);
  v22 = v36 - 8;
  v11 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v19);
  v30 = &v9 - v11;
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v35 = &v9 - v12;
  v51 = &v9 - v12;
  v49 = v6;
  v50 = v7;

  v13 = &v42;
  v43 = v19;
  v44 = v20;
  v14 = sub_10025C9B0(&qword_1006D9F08, &qword_100505278);
  sub_10036B9D8();
  Section<>.init(content:)();

  v25 = sub_10036C2D0();
  sub_1002EC85C(v30, v36, v35);
  v38 = *(v21 + 8);
  v37 = v21 + 8;
  v38(v30, v36);

  v16 = &v39;
  v40 = v19;
  v41 = v20;
  v17 = sub_10025C9B0(&qword_1006D9F90, &qword_100505588);
  sub_10036C388();
  Section<>.init(content:)();

  v26 = sub_10036C420();
  sub_1002EC85C(v29, v32, v31);
  v34 = *(v23 + 8);
  v33 = v23 + 8;
  v34(v29, v32);
  (*(v21 + 16))(v30, v35, v36);
  v28 = v48;
  v48[0] = v30;
  (*(v23 + 16))(v29, v31, v32);
  v48[1] = v29;
  v47[0] = v36;
  v47[1] = v32;
  v45 = v25;
  v46 = v26;
  sub_1003A33CC(v28, 2uLL, v47, v27);
  v34(v29, v32);
  v38(v30, v36);
  v34(v31, v32);
  return (v38)(v35, v36);
}

unint64_t sub_10036AC94()
{
  v2 = qword_1006D9EF8;
  if (!qword_1006D9EF8)
  {
    sub_10025CAA4(&qword_1006D9EF0, &qword_100505270);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9EF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036AD1C()
{
  v2 = qword_1006D9F00;
  if (!qword_1006D9F00)
  {
    sub_10025CAA4(&qword_1006D9EE8, &qword_100505268);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9F00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10036ADA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v8[1] = a1;
  v8[2] = a2;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v18 = sub_10025C9B0(&qword_1006D9F08, &qword_100505278);
  v12 = *(v18 - 8);
  v13 = v18 - 8;
  v10 = *(v12 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v18);
  v16 = v8 - v9;
  v11 = v9;
  __chkstk_darwin(v3);
  v17 = v8 - v11;
  v23 = v8 - v11;
  v21 = v4;
  v22 = v5;
  sub_10036AF78(0, v4, v5, v6);
  v15 = sub_10036B9D8();
  sub_1002EC85C(v16, v18, v17);
  v20 = *(v12 + 8);
  v19 = v12 + 8;
  v20(v16, v18);
  (*(v12 + 16))(v16, v17, v18);
  sub_1002EC85C(v16, v18, v14);
  v20(v16, v18);
  return (v20)(v17, v18);
}

uint64_t sub_10036AF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v15 = a1;
  v21 = a2;
  v22 = a3;
  v20 = sub_10036B75C;
  v17 = sub_10036B940;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v29 = sub_10025C9B0(&qword_1006D9F08, &qword_100505278);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v13 = *(v23 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v21);
  v27 = &v12 - v12;
  v14 = v12;
  v5 = __chkstk_darwin(v4);
  v28 = &v12 - v14;
  v39 = &v12 - v14;
  v38 = v6;
  v36 = v5;
  v37 = v7;

  v8 = swift_allocObject();
  v9 = v15;
  v10 = v22;
  v16 = v8;
  v8[2] = v21;
  v8[3] = v10;
  v8[4] = v9;

  v18 = &v32;
  v33 = v15;
  v34 = v21;
  v35 = v22;
  v19 = sub_10025C9B0(&qword_1006D9F10, &qword_100505280);
  sub_10036B950();
  Button.init(action:label:)();

  v26 = sub_10036B9D8();
  sub_1002EC85C(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_1002EC85C(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t sub_10036B24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v13 = a1;
  v14 = a2;
  v15 = sub_10036C4CC;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v28 = sub_10025C9B0(&qword_1006D9F90, &qword_100505588);
  v22 = *(v28 - 8);
  v23 = v28 - 8;
  v11 = *(v22 + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v14);
  v26 = &v9 - v10;
  v12 = v10;
  v4 = __chkstk_darwin(v3);
  v27 = &v9 - v12;
  v34 = &v9 - v12;
  v32 = v5;
  v33 = v4;

  v21 = &v31;
  v31 = v14;

  v6 = swift_allocObject();
  v7 = v14;
  v16 = v6;
  *(v6 + 16) = v13;
  *(v6 + 24) = v7;
  v17 = sub_10025C9B0(&qword_1006D9FA8, &unk_100505590);
  v18 = sub_10025C9B0(&qword_1006D9F08, &qword_100505278);
  v19 = sub_10036C4D8();
  v20 = sub_10036B9D8();
  sub_10036C560();
  ForEach<>.init(_:content:)();
  v25 = sub_10036C388();
  sub_1002EC85C(v26, v28, v27);
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v28);
  (*(v22 + 16))(v26, v27, v28);
  sub_1002EC85C(v26, v28, v24);
  v30(v26, v28);
  return (v30)(v27, v28);
}

uint64_t sub_10036B508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v11 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v27 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v21 = sub_10025C9B0(&qword_1006D9F08, &qword_100505278);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v13 = *(v15 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v11);
  v19 = v10 - v12;
  v14 = v12;
  v5 = __chkstk_darwin(v4);
  v20 = v10 - v14;
  v27 = v10 - v14;
  v26 = *v5;
  v24 = v6;
  v25 = v7;
  sub_10036AF78(v26, v6, v7, v8);
  v18 = sub_10036B9D8();
  sub_1002EC85C(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  sub_1002EC85C(v19, v21, v17);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_10036B6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  AppStorage.wrappedValue.setter();
}

uint64_t sub_10036B76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v17 = a1;
  v15 = a2;
  v16 = a3;

  sub_10025C9B0(&qword_1006D9F58, &qword_100505568);
  sub_10036C090();
  sub_10030D0FC();
  HStack.init(alignment:spacing:content:)();

  memcpy(__dst, v13, sizeof(__dst));
  memcpy(v12, __dst, sizeof(v12));
  v9 = sub_10025C9B0(&qword_1006D9F10, &qword_100505280);
  sub_10036B950();
  sub_1002EC85C(v12, v9, __b);
  sub_10036C118(v12);
  memcpy(v19, __b, sizeof(v19));
  sub_10036C16C(v19, v11);
  memcpy(v10, v19, sizeof(v10));
  sub_1002EC85C(v10, v9, a4);
  sub_10036C118(v10);
  return sub_10036C118(__b);
}

unint64_t sub_10036B950()
{
  v2 = qword_1006D9F18;
  if (!qword_1006D9F18)
  {
    sub_10025CAA4(&qword_1006D9F10, &qword_100505280);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9F18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036B9D8()
{
  v2 = qword_1006D9F20;
  if (!qword_1006D9F20)
  {
    sub_10025CAA4(&qword_1006D9F08, &qword_100505278);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9F20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10036BA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(v65, 0, 32);
  v45 = 0;
  v46 = 0;
  v33[0] = 0;
  v31 = 0;
  v68 = a1;
  v66 = a2;
  v67 = a3;
  v63 = sub_10036918C(a1);
  v64 = v4;
  sub_1002686CC();
  v59 = Text.init<A>(_:)();
  v60 = v5;
  v61 = v6;
  v62 = v7;
  v21 = v59;
  v19 = v5;
  v20 = v6;
  v22 = v7;
  v58 = static Color.primary.getter();
  v54 = v21;
  v55 = v19;
  v56 = v20 & 1;
  v57 = v22;
  v50 = Text.foregroundStyle<A>(_:)();
  v51 = v8;
  v52 = v9;
  v53 = v10;
  v23 = v50;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  sub_100268928(&v58);
  sub_1002EF150(v21, v19, v20 & 1);

  v47[0] = v23;
  v47[1] = v24;
  v48 = v25 & 1;
  v49 = v26;
  sub_1002EC85C(v47, &type metadata for Text, v65);
  sub_1002F03C0(v47);
  v43 = Spacer.init(minLength:)();
  v44 = v11 & 1;
  sub_1002EC85C(&v43, &type metadata for Spacer, &v45);

  AppStorage.wrappedValue.getter();

  v41[2] = v41[3];
  v41[1] = a1;
  sub_10036A31C();
  if (== infix<A>(_:_:)())
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("checkmark", 9uLL, 1);
    v32 = Image.init(systemName:)();
    sub_1002EC85C(&v32, &type metadata for Image, v33);
    sub_100268928(&v32);
    v14 = v33[0];

    v30 = v14;
    sub_1002EC85C(&v30, &type metadata for Image, &v31);
    sub_100268928(&v30);
    v15 = v31;

    v28 = v15;
    sub_1003A3628(&v28, &type metadata for Image, &v29);
    sub_100268928(&v28);
    v16 = v29;

    v42 = v16;
    sub_100268928(&v31);
    sub_100268928(v33);
    v17 = v16;
  }

  else
  {
    v40 = 0;
    sub_1003A3628(&v40, &type metadata for Image, v41);
    v13 = v41[0];

    v42 = v13;
    v17 = v13;
  }

  sub_1002F0920(v65, v38);
  v39[0] = v38;
  v36 = v45;
  v37 = v46;
  v39[1] = &v36;
  v35 = v17;
  v39[2] = &v35;
  v34[0] = &type metadata for Text;
  v34[1] = &type metadata for Spacer;
  v34[2] = sub_10025C9B0(&qword_1006D9F68, &qword_100505570);
  v33[1] = &protocol witness table for Text;
  v33[2] = &protocol witness table for Spacer;
  v33[3] = sub_10036C230();
  sub_1003A33CC(v39, 3uLL, v34, a4);
  sub_100268928(&v35);
  sub_1002F03C0(v38);
  sub_100268928(&v42);
  return sub_1002F03C0(v65);
}

unint64_t sub_10036BF74()
{
  v2 = qword_1006D9F28;
  if (!qword_1006D9F28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9F28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036C090()
{
  v2 = qword_1006D9F60;
  if (!qword_1006D9F60)
  {
    sub_10025CAA4(&qword_1006D9F58, &qword_100505568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9F60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10036C118(uint64_t a1)
{
  sub_1002EF150(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_10036C16C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1002EF238(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v7 = *(a1 + 48);

  *(a2 + 48) = v7;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  v9 = *(a1 + 72);

  result = a2;
  *(a2 + 72) = v9;
  return result;
}

unint64_t sub_10036C230()
{
  v2 = qword_1006D9F70;
  if (!qword_1006D9F70)
  {
    sub_10025CAA4(&qword_1006D9F68, &qword_100505570);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9F70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036C2D0()
{
  v2 = qword_1006D9F88;
  if (!qword_1006D9F88)
  {
    sub_10025CAA4(&qword_1006D9F80, &qword_100505580);
    sub_10036B9D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9F88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036C388()
{
  v2 = qword_1006D9F98;
  if (!qword_1006D9F98)
  {
    sub_10025CAA4(&qword_1006D9F90, &qword_100505588);
    sub_10036B9D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9F98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036C420()
{
  v2 = qword_1006D9FA0;
  if (!qword_1006D9FA0)
  {
    sub_10025CAA4(&qword_1006D9F78, &qword_100505578);
    sub_10036C388();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9FA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036C4D8()
{
  v2 = qword_1006D9FB0;
  if (!qword_1006D9FB0)
  {
    sub_10025CAA4(&qword_1006D9FA8, &unk_100505590);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9FB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036C560()
{
  v2 = qword_1006D9FB8;
  if (!qword_1006D9FB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9FB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10036C614()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_10036C640(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_10036C67C()
{
  v4[5] = 0;
  memcpy(__dst, (v0 + 8), sizeof(__dst));
  sub_10036C738(__dst, v4);
  memcpy(v3, __dst, sizeof(v3));
  sub_10025C9B0(&qword_1006D9FC0, &qword_1005055A0);
  State.wrappedValue.getter();
  sub_10036C7C4(__dst);
  return v2;
}

void *sub_10036C738(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  v5 = a1[2];
  v6 = a1[3];

  a2[2] = v5;
  a2[3] = v6;
  v8 = a1[4];

  result = a2;
  a2[4] = v8;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10036C7C4(void *a1)
{
}

uint64_t sub_10036C808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[5] = 0;
  v8[6] = a1;
  v8[7] = a2;
  v8[8] = a3;
  v8[9] = a4;
  memcpy(__dst, (v4 + 8), sizeof(__dst));
  sub_10036C738(__dst, v8);
  sub_10036C738(__dst, v7);
  memcpy(v6, __dst, sizeof(v6));

  sub_10025C9B0(&qword_1006D9FC0, &qword_1005055A0);
  State.wrappedValue.setter();
  sub_10036C7C4(v6);
  sub_10036C7C4(__dst);
}

void *sub_10036C924@<X0>(void *a1@<X8>)
{
  v11[5] = 0;
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  sub_10036C738(__dst, v11);
  memcpy(v10, __dst, sizeof(v10));
  sub_10025C9B0(&qword_1006D9FC0, &qword_1005055A0);
  State.projectedValue.getter();
  result = __dst;
  sub_10036C7C4(__dst);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return result;
}

void *sub_10036CA38(void *a1)
{
  sub_10036C738(a1, v4);
  sub_10036CA74(a1, (v1 + 8));
  result = a1;
  sub_10036C7C4(a1);
  return result;
}

void *sub_10036CA74(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];

  v2 = a1[3];
  a2[2] = a1[2];
  a2[3] = v2;

  a2[4] = a1[4];

  return a2;
}

uint64_t sub_10036CAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v18[10] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;

  __b[0] = a1;

  sub_1002EB89C(&unk_10065BAB0, v18);
  v11 = v18[0];
  v12 = v18[1];
  v13 = v18[2];
  v14 = v18[3];
  v16 = v18[4];

  __b[1] = v11;
  __b[2] = v12;
  __b[3] = v13;
  __b[4] = v14;
  __b[5] = v16;

  sub_10036CC90(__b);
  result = a1;
  *a6 = a1;
  a6[1] = v11;
  a6[2] = v12;
  a6[3] = v13;
  a6[4] = v14;
  a6[5] = v16;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10036CC90(void *a1)
{
}

uint64_t sub_10036CCE0@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v15 = sub_10036D628;
  v36 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
  v63 = 0;
  v62 = 0;
  v34 = sub_10025C9B0(&qword_1006D9FC8, &qword_1005055A8);
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v10 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v33 = &v10 - v10;
  v43 = sub_10025C9B0(&qword_1006D9FD0, &qword_1005055B0);
  v37 = *(v43 - 8);
  v38 = v43 - 8;
  v12 = *(v37 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v41 = &v10 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v11);
  v42 = &v10 - v13;
  v63 = &v10 - v13;
  v62 = v1;
  v64 = *v1;
  sub_1002A730C(&v64, &v61);
  v21 = &v60;
  v60 = v64;
  sub_10036D580(v14, &v59);
  v16 = swift_allocObject();
  memcpy((v16 + 16), v14, 0x30uLL);
  v17 = sub_10025C9B0(&qword_1006D9FD8, &qword_1005055B8);
  v18 = sub_10025C9B0(&qword_1006D9FE0, &qword_1005055C0);
  v19 = sub_10036DFF4();
  v20 = sub_10036E07C();
  v2 = sub_10036E104();
  sub_10036DE30(v21, v15, v16, v17, v18, v19, v20, v2);
  *&v26[1] = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Preferred Grouping", 0x12uLL, 1);
  v24 = LocalizedStringKey.init(stringLiteral:)();
  v25 = v3;
  v22 = v4;
  v23 = v5;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, v26[1] & 1);
  v56 = 0;
  v57 = 0;
  v58 = *v26 & 0x100;
  v52 = Text.init(_:tableName:bundle:comment:)();
  v53 = v6;
  v54 = v7;
  v55 = v8;
  v27 = v52;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v35 = sub_10036E180();
  v48 = v27;
  v49 = v28;
  v50 = v29 & 1 & v26[1];
  v51 = v30;
  View.navigationTitle(_:)();
  sub_1002EF150(v27, v28, v29 & 1);

  (*(v31 + 8))(v33, v34);
  v46 = v34;
  v47 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v41, v43, v42);
  v45 = *(v37 + 8);
  v44 = v37 + 8;
  v45(v41, v43);
  (*(v37 + 16))(v41, v42, v43);
  sub_1002EC85C(v41, v43, v39);
  v45(v41, v43);
  return (v45)(v42, v43);
}

uint64_t sub_10036D2C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v10 = a1;
  __src = a2;
  v22 = sub_10036FD48;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  __n = 48;
  memset(&v35[6], 0, 0x30uLL);
  memcpy(__dst, __src, sizeof(__dst));
  v11 = __dst[0];
  v12 = __dst[1];
  v16 = __dst[2];
  v17 = __dst[3];
  v18 = __dst[4];
  v13 = __dst[5];
  v30 = sub_10025C9B0(&qword_1006D9FE0, &qword_1005055C0);
  v15 = *(*(v30 - 8) + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v32 = &v8 - v14;
  v19 = v14;
  __chkstk_darwin(&v8 - v14);
  v33 = &v8 - v19;
  v38 = &v8 - v19;
  v20 = *v3;
  v26 = v3[1];
  v21 = v3[2];
  v27 = v3[3];
  *&v36 = v20;
  *(&v36 + 1) = v26;
  *&v37 = v21;
  *(&v37 + 1) = v27;
  v35[6] = v4;
  v35[7] = v5;
  v35[8] = v16;
  v35[9] = v17;
  v35[10] = v18;
  v35[11] = v6;

  sub_10036D580(__src, v35);
  v23 = v34;
  v34[2] = v20;
  v34[3] = v26;
  v34[4] = v21;
  v34[5] = v27;
  v34[6] = __src;
  v24 = sub_10025C9B0(&qword_1006DA058, &qword_1005058B8);
  v25 = sub_10036FD60();
  sub_10030D0FC();
  HStack.init(alignment:spacing:content:)();

  sub_10036CC90(__src);
  v31 = sub_10036E07C();
  sub_1002EC85C(v32, v30, v33);
  sub_10036FDE8(v32);
  sub_10036FEBC(v33, v32);
  sub_1002EC85C(v32, v30, v29);
  sub_10036FDE8(v32);
  return sub_10036FDE8(v33);
}

void *sub_10036D580(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  a2[1] = a1[1];
  v4 = a1[2];

  a2[2] = v4;
  v6 = a1[3];
  v7 = a1[4];

  a2[3] = v6;
  a2[4] = v7;
  v9 = a1[5];

  result = a2;
  a2[5] = v9;
  return result;
}

uint64_t sub_10036D630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a6;
  v37 = a1;
  v42 = a2;
  v38 = a3;
  v43 = a4;
  __src = a5;
  v36 = sub_100370020;
  v40 = sub_100370038;
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  __n = 48;
  v59 = v87;
  memset(v87, 0, sizeof(v87));
  v34 = &v77;
  v77 = 0;
  v78 = 0;
  memcpy(__dst, a5, sizeof(__dst));
  v24 = __dst[0];
  v28 = __dst[1];
  v25 = *(&__dst[2] + 1);
  v29 = *&__dst[2];
  v55 = sub_10025C9B0(&qword_1006DA078, &unk_1005058D0);
  v44 = *(v55 - 8);
  v45 = v55 - 8;
  v27 = *(v44 + 64);
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v42);
  v53 = &v24 - v26;
  v30 = v26;
  v7 = __chkstk_darwin(v6);
  v58 = &v24 - v30;
  v90 = &v24 - v30;
  *&v88 = v8;
  *(&v88 + 1) = v7;
  *&v89 = v9;
  *(&v89 + 1) = v10;
  *&v87[2] = v11;
  *(&v87[2] + 1) = v12;
  v87[3] = v28;
  *&v87[4] = v29;
  *(&v87[4] + 1) = v13;

  v31 = v86;
  v86[0] = v37;
  v86[1] = v42;
  sub_1002686CC();
  v82 = Text.init<A>(_:)();
  v83 = v14;
  v84 = v15;
  v85 = v16;
  v32 = v79;
  v79[0] = v82;
  v79[1] = v14;
  v33 = 1;
  v80 = v15 & 1;
  v81 = v16;
  v46 = &type metadata for Text;
  v48 = &protocol witness table for Text;
  sub_1002EC85C(v79, &type metadata for Text, v59);
  sub_1002F03C0(v32);
  v75 = Spacer.init(minLength:)();
  v76 = v17 & 1 & v33;
  v47 = &type metadata for Spacer;
  v49 = &protocol witness table for Spacer;
  sub_1002EC85C(&v75, &type metadata for Spacer, v34);
  sub_10036D580(__src, v74);

  v39 = swift_allocObject();
  memcpy((v39 + 16), __src, __n);
  v18 = __src;
  v19 = v38;
  v20 = v39;
  v21 = v42;
  v22 = v43;
  *(v39 + 64) = v37;
  v20[9] = v21;
  v20[10] = v19;
  v20[11] = v22;
  sub_10036D580(v18, v73);

  v60 = __src;
  v61 = v37;
  v62 = v42;
  v63 = v38;
  v64 = v43;
  Button.init(action:label:)();
  sub_10036CC90(__src);

  v50 = sub_100370050();
  sub_1002EC85C(v53, v55, v58);
  v57 = *(v44 + 8);
  v56 = v44 + 8;
  v57(v53, v55);
  v54 = v71;
  sub_1002F0920(v59, v71);
  v52 = v72;
  v72[0] = v54;
  v69 = v77;
  v70 = v78;
  v72[1] = &v69;
  (*(v44 + 16))(v53, v58, v55);
  v72[2] = v53;
  v68[0] = v46;
  v68[1] = v47;
  v68[2] = v55;
  v65 = v48;
  v66 = v49;
  v67 = v50;
  sub_1003A33CC(v52, 3uLL, v68, v51);
  v57(v53, v55);
  sub_1002F03C0(v54);
  v57(v58, v55);
  return sub_1002F03C0(v59);
}

uint64_t sub_10036DB68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{

  sub_10036C808(a2, a3, a4, a5);

  a4(v5);
}

void sub_10036DC10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17[0] = 0;
  v17[6] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v6 = sub_10036C67C();
  v14 = sub_10036DD80(v6, v7, v8, v9, a2, a3);

  if (v14)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("checkmark.circle", 0x10uLL, 1);
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  }

  v16 = Image.init(systemName:)();
  sub_1002EC85C(&v16, &type metadata for Image, v17);
  sub_100268928(&v16);
  v10 = v17[0];

  v15 = v10;
  sub_1002EC85C(&v15, &type metadata for Image, a6);
  sub_100268928(&v15);
  sub_100268928(v17);
}

uint64_t sub_10036DD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v7 = static String.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_10036DE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  List<>.init(content:)();

  return (*(*(a4 - 8) + 8))(a1);
}

unint64_t sub_10036DFF4()
{
  v2 = qword_1006D9FE8;
  if (!qword_1006D9FE8)
  {
    sub_10025CAA4(&qword_1006D9FD8, &qword_1005055B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9FE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036E07C()
{
  v2 = qword_1006D9FF0;
  if (!qword_1006D9FF0)
  {
    sub_10025CAA4(&qword_1006D9FE0, &qword_1005055C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9FF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036E104()
{
  v2 = qword_1006D9FF8;
  if (!qword_1006D9FF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D9FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036E180()
{
  v2 = qword_1006DA000;
  if (!qword_1006DA000)
  {
    sub_10025CAA4(&qword_1006D9FC8, &qword_1005055A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA000);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10036E2DC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_10036E328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v6 = a3;
  *(&v6 + 1) = a4;
  v8 = 0u;
  v9 = 0u;

  *&v8 = a1;
  *(&v8 + 1) = a2;

  v9 = v6;

  sub_10036E3F8(&v8);
  return a1;
}

uint64_t sub_10036E430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0u;
  v17 = 0u;
  v11 = EMGroupedSenderGroupingDescription();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v3;

  v15 = sub_10036E328(v8, v9, a2, a3);
  v13 = v4;
  *&v14 = v5;
  *(&v14 + 1) = v6;
  _objc_release(v11);

  *&v16 = v15;
  *(&v16 + 1) = v13;
  v17 = v14;

  sub_10036E3F8(&v16);
  return v15;
}

void sub_10036E530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[7] = a1;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;

  v7[0] = a2;
  v7[1] = a3;
  Hasher.combine<A>(_:)();
  sub_100268744(v7);
}

unint64_t sub_10036E640()
{
  v2 = qword_1006DA008;
  if (!qword_1006DA008)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA008);
    return WitnessTable;
  }

  return v2;
}

void sub_10036E6BC(uint64_t *a1@<X8>)
{
  sub_10036E250(*v1, v1[1]);
  *a1 = v2;
  a1[1] = v3;
}

void *sub_10036E7A8(uint64_t a1, uint64_t a2)
{
  v47 = 0;
  v42 = 0u;
  v43 = 0u;
  v48 = a1;
  v49 = a2;

  _allocateUninitializedArray<A>(_:)();
  v37 = v2;
  *v2 = sub_10036EC08(3, a1, a2);
  v37[1] = v3;
  v37[2] = v4;
  v37[3] = v5;
  v37[4] = sub_10036EC08(4, a1, a2);
  v37[5] = v6;
  v37[6] = v7;
  v37[7] = v8;
  v37[8] = sub_10036EC08(2, a1, a2);
  v37[9] = v9;
  v37[10] = v10;
  v37[11] = v11;
  v37[12] = sub_10036EC08(1, a1, a2);
  v37[13] = v12;
  v37[14] = v13;
  v37[15] = v14;
  sub_1002612B0();
  v38 = v15;
  v46 = v15;
  v39 = [objc_opt_self() em_userDefaults];
  if (v39)
  {
    v32 = [v39 preferredGroupedSenderGrouping];
    _objc_release(v39);
    v33 = v32;
    v34 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 1;
  }

  v44 = v33;
  v45 = v34 & 1;
  if (v34)
  {
    v16 = sub_10036EC08(1, a1, a2);
  }

  else
  {
    v16 = sub_10036EC08(v44, a1, a2);
  }

  v26 = v16;
  v30 = v17;
  v27 = v18;
  v31 = v19;
  *&v42 = v16;
  *(&v42 + 1) = v17;
  *&v43 = v18;
  *(&v43 + 1) = v19;
  sub_10025C9B0(&qword_1006DA010, &qword_1005055C8);

  sub_10036CAEC(v38, v26, v30, v27, v31, v50);
  memcpy(__dst, v50, sizeof(__dst));
  v40 = UIHostingController.__allocating_init(rootView:)();
  _objc_retain(v40);
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Preferred Grouping", 0x12uLL, 1);
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Naivgation bar title", 0x14uLL, 1);
  bundle = sub_10028FEB4();
  v23._countAndFlagsBits = sub_100015E30();
  v23._object = v24;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, bundle, v23, v22);

  _objc_release(bundle);

  v29 = String._bridgeToObjectiveC()();

  [v40 setTitle:v29];
  _objc_release(v29);
  _objc_release(v40);

  return v40;
}

uint64_t sub_10036EC08(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = swift_allocObject();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return sub_10036E430(a1, sub_10036F7C8, v3);
}

uint64_t sub_10036ECB0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = [objc_opt_self() em_userDefaults];
  if (v7)
  {
    [v7 setPreferredGroupedSenderGrouping:a1];
    _objc_release(v7);
  }

  a2(v3);
}

id sub_10036EE3C()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for MFMailDebugGroupedSenderGroupingController();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id sub_10036EF08()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFMailDebugGroupedSenderGroupingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10036EF90()
{
  sub_10025C9B0(&qword_1006DA018, &qword_1005055D0);
  _allocateUninitializedArray<A>(_:)();
  return Preview.init(_:traits:body:)();
}

void *sub_10036F08C@<X0>(uint64_t *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v6 = _allocateUninitializedArray<A>(_:)();
  v7 = sub_10036E430(3, nullsub_13, 0);
  sub_10036CAEC(v6, v7, v1, v2, v3, v19);
  memcpy(__dst, v19, sizeof(__dst));
  v15 = sub_10036F74C();
  sub_1002EC85C(__dst, &unk_10065BA30, __b);
  sub_10036CC90(__dst);
  v8 = __b[0];
  v9 = __b[1];
  v10 = __b[2];
  v11 = __b[3];
  v12 = __b[4];
  v13 = __b[5];

  v16[0] = v8;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v13;
  a1[3] = &unk_10065BA30;
  a1[4] = v15;
  v4 = swift_allocObject();
  *a1 = v4;
  sub_1002EC85C(v16, &unk_10065BA30, v4 + 16);
  sub_10036CC90(v16);
  result = __b;
  sub_10036CC90(__b);
  return result;
}

uint64_t sub_10036F330(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
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

uint64_t sub_10036F448(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_10036F6D0()
{
  v2 = qword_1006DA048;
  if (!qword_1006DA048)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA048);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10036F74C()
{
  v2 = qword_1006DA050;
  if (!qword_1006DA050)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA050);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10036F7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a9;
  v20[5] = a1;
  v25 = a2;
  v26 = a3;
  v29 = a4;
  v31 = a5;
  v32 = a6;
  v34 = a7;
  v27 = a8;
  v28 = sub_10036FD18;
  v35 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  v52 = a4;
  v51 = a5;
  v24 = *(a4 - 8);
  v20[4] = a4 - 8;
  v20[0] = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v33 = v20 - v20[0];
  v20[1] = 255;
  v20[3] = swift_getAssociatedTypeWitness();
  v20[2] = &protocol requirements base descriptor for Identifiable;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = v29;
  v47 = AssociatedTypeWitness;
  v48 = v31;
  v49 = v32;
  v50 = AssociatedConformanceWitness;
  v42 = type metadata accessor for ForEach();
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v22 = *(v36 + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v33);
  v38 = v20 - v21;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v10);
  v41 = v20 - v23;
  (*(v24 + 16))(v11);

  v12 = swift_allocObject();
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v16 = v31;
  v17 = v32;
  v18 = v34;
  v12[2] = v29;
  v12[3] = v16;
  v12[4] = v17;
  v12[5] = v18;
  v12[6] = v15;
  v12[7] = v13;
  v12[8] = v14;
  ForEach<>.init(_:content:)();
  v45 = v34;
  WitnessTable = swift_getWitnessTable();
  sub_1002EC85C(v38, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v38, v42);
  sub_1002EC85C(v41, v42, v39);
  return (v44)(v41, v42);
}

uint64_t sub_10036FBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v15 = a5;
  v18 = a3;
  v16 = a4;
  v22 = a2;
  v21 = a3;
  v12 = *(a3 - 8);
  v13 = a3 - 8;
  v10 = *(v12 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(a1);
  v14 = &v9 - v9;
  v11 = v9;
  v6 = __chkstk_darwin(v5);
  v17 = &v9 - v11;
  v7(v6);
  sub_1002EC85C(v14, v18, v17);
  v20 = *(v12 + 8);
  v19 = v12 + 8;
  v20(v14, v18);
  sub_1002EC85C(v17, v18, v15);
  return (v20)(v17, v18);
}

unint64_t sub_10036FD60()
{
  v2 = qword_1006DA060;
  if (!qword_1006DA060)
  {
    sub_10025CAA4(&qword_1006DA058, &qword_1005058B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10036FDE8(uint64_t a1)
{
  v3 = a1 + *(sub_10025C9B0(&qword_1006DA068, &qword_1005058C0) + 44);
  sub_1002EF150(*v3, *(v3 + 8), *(v3 + 16) & 1);

  v4 = *(sub_10025C9B0(&qword_1006DA070, &qword_1005058C8) + 64);
  v1 = sub_10025C9B0(&qword_1006DA078, &unk_1005058D0);
  (*(*(v1 - 8) + 8))(v3 + v4);
  return a1;
}

uint64_t sub_10036FEBC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(sub_10025C9B0(&qword_1006DA068, &qword_1005058C0) + 44);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  sub_1002EF238(v6, v7, v8 & 1);
  v10 = a2 + v5;
  *v10 = v6;
  *(v10 + 8) = v7;
  *(v10 + 16) = v8 & 1;
  v9 = *(a1 + v5 + 24);

  *(v10 + 24) = v9;
  *(v10 + 32) = *(a1 + v5 + 32);
  *(v10 + 40) = *(a1 + v5 + 40);
  v11 = *(sub_10025C9B0(&qword_1006DA070, &qword_1005058C8) + 64);
  v2 = sub_10025C9B0(&qword_1006DA078, &unk_1005058D0);
  (*(*(v2 - 8) + 16))(a2 + v5 + v11, a1 + v5 + v11);
  return a2;
}

unint64_t sub_100370050()
{
  v2 = qword_1006DA080;
  if (!qword_1006DA080)
  {
    sub_10025CAA4(&qword_1006DA078, &unk_1005058D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA080);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003700D8()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Notification Posting Delay", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static MailDebugNotificationDelaySettingsViewController.title = v1;
  return result;
}

__int128 *MailDebugNotificationDelaySettingsViewController.title.unsafeMutableAddressor()
{
  if (qword_1006D5F68 != -1)
  {
    swift_once();
  }

  return &static MailDebugNotificationDelaySettingsViewController.title;
}

uint64_t static MailDebugNotificationDelaySettingsViewController.title.getter()
{
  v1 = *MailDebugNotificationDelaySettingsViewController.title.unsafeMutableAddressor();

  return v1;
}

id sub_100370228()
{
  v2 = (v0 + OBJC_IVAR___MFMailDebugNotificationDelaySettingsViewController_contentHost);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100370298(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR___MFMailDebugNotificationDelaySettingsViewController_contentHost);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

Swift::Void __swiftcall MailDebugNotificationDelaySettingsViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v54 = v0;
  _objc_retain(v0);
  v53.receiver = v0;
  v53.super_class = ObjectType;
  objc_msgSendSuper2(&v53, "viewDidLoad");
  _objc_release(v48);
  _objc_retain(v48);
  MailDebugNotificationDelaySettingsViewController.title.unsafeMutableAddressor();

  v47 = String._bridgeToObjectiveC()();

  [v48 setTitle:v47];
  _objc_release(v47);
  _objc_release(v48);
  sub_10025C9B0(&qword_1006DA090, &qword_1005058E0);
  sub_100370C74();
  v50 = UIHostingController.__allocating_init(rootView:)();
  v49 = &v48[OBJC_IVAR___MFMailDebugNotificationDelaySettingsViewController_contentHost];
  swift_beginAccess();
  v1 = *v49;
  *v49 = v50;
  _objc_release(v1);
  swift_endAccess();
  v51 = &v48[OBJC_IVAR___MFMailDebugNotificationDelaySettingsViewController_contentHost];
  swift_beginAccess();
  v52 = *v51;
  _objc_retain(*v51);
  swift_endAccess();
  if (v52)
  {
    v45 = v52;
  }

  else
  {
    LOBYTE(v2) = 2;
    v9 = 26;
    LODWORD(v16) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v48 addChildViewController:{v2, v9, v16}];
  _objc_release(v45);
  _objc_retain(v48);
  v44 = [v48 view];
  _objc_release(v48);
  if (v44)
  {
    v43 = v44;
  }

  else
  {
    LOBYTE(v3) = 2;
    v10 = 27;
    LODWORD(v17) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v41 = &v48[OBJC_IVAR___MFMailDebugNotificationDelaySettingsViewController_contentHost];
  swift_beginAccess();
  v42 = *v41;
  _objc_retain(*v41);
  swift_endAccess();
  if (v42)
  {
    v40 = v42;
  }

  else
  {
    LOBYTE(v3) = 2;
    v10 = 27;
    LODWORD(v17) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v39 = [v40 view];
  _objc_release(v40);
  if (v39)
  {
    v38 = v39;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = 27;
    LODWORD(v18) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v43 addSubview:{v4, v11, v18}];
  _objc_release(v38);
  _objc_release(v43);
  v36 = &v48[OBJC_IVAR___MFMailDebugNotificationDelaySettingsViewController_contentHost];
  swift_beginAccess();
  v37 = *v36;
  _objc_retain(*v36);
  swift_endAccess();
  if (v37)
  {
    v35 = v37;
  }

  else
  {
    LOBYTE(v5) = 2;
    v12 = 29;
    LODWORD(v19) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v34 = [v35 view];
  _objc_release(v35);
  if (v34)
  {
    v33 = v34;
  }

  else
  {
    LOBYTE(v6) = 2;
    v13 = 29;
    LODWORD(v20) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v33 setTranslatesAutoresizingMaskIntoConstraints:{0, v6, v13, v20}];
  _objc_release(v33);
  v31 = &v48[OBJC_IVAR___MFMailDebugNotificationDelaySettingsViewController_contentHost];
  swift_beginAccess();
  v32 = *v31;
  _objc_retain(*v31);
  swift_endAccess();
  if (v32)
  {
    v30 = v32;
  }

  else
  {
    LOBYTE(v7) = 2;
    v14 = 30;
    LODWORD(v21) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v29 = [v30 view];
  _objc_release(v30);
  if (v29)
  {
    v28 = v29;
  }

  else
  {
    LOBYTE(v8) = 2;
    v15 = 30;
    LODWORD(v22) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _objc_retain(v48);
  v27 = [v48 view];
  _objc_release(v48);
  if (v27)
  {
    v26 = v27;
  }

  else
  {
    LOBYTE(v8) = 2;
    v15 = 30;
    LODWORD(v22) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v28 mf_pinToView:v8 usingLayoutMargins:{v15, v22}];
  _objc_release(v26);
  _objc_release(v28);
  v24 = &v48[OBJC_IVAR___MFMailDebugNotificationDelaySettingsViewController_contentHost];
  swift_beginAccess();
  v25 = *v24;
  _objc_retain(*v24);
  swift_endAccess();
  if (v25)
  {
    v23 = v25;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _objc_retain(v48);
  [v23 didMoveToParentViewController:v48];
  _objc_release(v48);
  _objc_release(v23);
}

uint64_t sub_100370C74()
{
  v3 = 0;
  v4 = 0;
  v2 = sub_1003710D8();

  v3 = v2;
  v1 = sub_100371270();
  _objc_retain(v1);
  v4 = v1;
  sub_100372CE4(&v3);
  return v2;
}

id MailDebugNotificationDelaySettingsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15 = a1;
  v16 = a2;
  v14 = a3;
  v17 = v3;
  *&v3[OBJC_IVAR___MFMailDebugNotificationDelaySettingsViewController_contentHost] = 0;

  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v13.receiver = v17;
  v13.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v8);
  _objc_release(v5);
  _objc_retain(v6);
  v17 = v6;
  _objc_release(a3);

  _objc_release(v17);
  return v6;
}

id MailDebugNotificationDelaySettingsViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  *&v1[OBJC_IVAR___MFMailDebugNotificationDelaySettingsViewController_contentHost] = 0;
  v7.receiver = v9;
  v7.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v7, "initWithCoder:");
  if (v6)
  {
    _objc_retain(v6);
    v9 = v6;
    _objc_release(a1);
    _objc_release(v9);
    return v6;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

uint64_t sub_1003710D8()
{
  v2 = EMUserDefaultNotificationPostingDelayTime;
  _objc_retain(EMUserDefaultNotificationPostingDelayTime);
  sub_100261924(v2);
  _objc_release(v2);
  v0 = [objc_opt_self() em_userDefaults];
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

double sub_100371174(uint64_t a1)
{

  AppStorage.wrappedValue.getter();

  return v2;
}

uint64_t sub_1003711C0(uint64_t a1, double a2)
{

  AppStorage.wrappedValue.setter();
}

double sub_10037120C(uint64_t a1)
{

  AppStorage.projectedValue.getter();

  return v2;
}

id sub_100371270()
{
  sub_100372D24();
  v1 = sub_10025C704();
  [v1 setNumberStyle:?];
  [v1 setMaximumFractionDigits:1];
  return v1;
}

uint64_t sub_100371318@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v13 = a1;
  v14 = a2;
  v12 = sub_100371A44;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v21 = sub_10025C9B0(&qword_1006DA098, &qword_1005058E8);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v8 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v13);
  v19 = &v8 - v8;
  v9 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v20 = &v8 - v9;
  v29 = &v8 - v9;
  v27 = v5;
  v28 = v6;

  _objc_retain(v14);
  v10 = &v24;
  v25 = v13;
  v26 = v14;
  v11 = sub_10025C9B0(&qword_1006DA0A0, &qword_1005058F0);
  sub_100371A50();
  Form.init(content:)();

  _objc_release(v14);
  v18 = sub_100371AD8();
  sub_1002EC85C(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  sub_1002EC85C(v19, v21, v17);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_100371568@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v16 = a1;
  v17 = a2;
  v18 = 0;
  v15 = sub_100372838;
  v20 = sub_100372408;
  v49 = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v32 = sub_10025C9B0(&qword_1006DA0E0, &qword_100505A90);
  v23 = *(v32 - 8);
  v24 = v32 - 8;
  v9 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v29 = &v9 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v9);
  v31 = &v9 - v10;
  v49 = &v9 - v10;
  v36 = sub_10025C9B0(&qword_1006DA0E8, &qword_100505A98);
  v21 = *(v36 - 8);
  v22 = v36 - 8;
  v11 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v16);
  v30 = &v9 - v11;
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v35 = &v9 - v12;
  v48 = &v9 - v12;
  v46 = v6;
  v47 = v7;

  _objc_retain(v17);
  v13 = &v39;
  v40 = v16;
  v41 = v17;
  v14 = sub_10025C9B0(&qword_1006DA0F0, &unk_100505AA0);
  sub_100372844();
  Section<>.init(content:)();

  _objc_release(v17);
  v25 = sub_100372A68();
  sub_1002EC85C(v30, v36, v35);
  v38 = *(v21 + 8);
  v37 = v21 + 8;
  v38(v30, v36);
  v19 = sub_10025C9B0(&qword_1006DA128, &qword_100505AC0);
  sub_100372B14();
  Section<>.init(content:)();
  v26 = sub_100372B9C();
  sub_1002EC85C(v29, v32, v31);
  v34 = *(v23 + 8);
  v33 = v23 + 8;
  v34(v29, v32);
  (*(v21 + 16))(v30, v35, v36);
  v28 = v45;
  v45[0] = v30;
  (*(v23 + 16))(v29, v31, v32);
  v45[1] = v29;
  v44[0] = v36;
  v44[1] = v32;
  v42 = v25;
  v43 = v26;
  sub_1003A33CC(v28, 2uLL, v44, v27);
  v34(v29, v32);
  v38(v30, v36);
  v34(v31, v32);
  return (v38)(v35, v36);
}

unint64_t sub_100371A50()
{
  v2 = qword_1006DA0A8;
  if (!qword_1006DA0A8)
  {
    sub_10025CAA4(&qword_1006DA0A0, &qword_1005058F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA0A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100371AD8()
{
  v2 = qword_1006DA0B0;
  if (!qword_1006DA0B0)
  {
    sub_10025CAA4(&qword_1006DA098, &qword_1005058E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA0B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100371B60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v18 = a1;
  v19 = a2;
  v15 = 0;
  v12 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v17 = sub_100372C48;
  v14 = sub_1003722C4;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v26 = sub_10025C9B0(&qword_1006DA0F0, &unk_100505AA0);
  v20 = *(v26 - 8);
  v21 = v26 - 8;
  v9 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v18);
  v24 = &v9 - v9;
  v10 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v25 = &v9 - v10;
  v36 = &v9 - v10;
  v34 = v5;
  v35 = v6;

  _objc_retain(v19);
  v13 = &v29;
  v30 = v18;
  v31 = v19;
  v16 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v11 = sub_10025CAA4(&qword_1006DA100, &qword_100505EA0);
  v7 = sub_100372938();
  v32 = v11;
  v33 = v7;
  swift_getOpaqueTypeConformance2();
  LabeledContent<>.init(content:label:)();

  _objc_release(v19);
  v23 = sub_100372844();
  sub_1002EC85C(v24, v26, v25);
  v28 = *(v20 + 8);
  v27 = v20 + 8;
  v28(v24, v26);
  (*(v20 + 16))(v24, v25, v26);
  sub_1002EC85C(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_100371E3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v17 = a1;
  v25 = a2;
  v35 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v31 = sub_10025C9B0(&qword_1006DA118, &unk_100505AB0);
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v13 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v3 = &v12 - v13;
  v30 = &v12 - v13;
  v33 = sub_10025C9B0(&qword_1006DA100, &qword_100505EA0);
  v14 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v32 = &v12 - v14;
  v42 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v15 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v17);
  v40 = &v12 - v15;
  v16 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v41 = &v12 - v16;
  v50 = &v12 - v16;
  v48 = v6;
  v49 = v7;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Posting Delay", 0xDuLL, 1);
  v27 = LocalizedStringKey.init(stringLiteral:)();
  v21 = v8;
  v22 = v9;
  v23 = v10;

  v26 = &type metadata for Double;
  AppStorage.projectedValue.getter();
  v18 = v47[3];
  v19 = v47[4];
  v20 = v47[5];

  v24 = v47;
  v47[0] = v18;
  v47[1] = v19;
  v47[2] = v20;
  _objc_retain(v25);
  sub_100372D88(v27, v21, v22 & 1, v23, v24, v25, v26, v3);
  sub_1003729E0();
  View.multilineTextAlignment(_:)();
  (*(v28 + 8))(v30, v31);
  v34 = sub_100372938();
  View.keyboardType(_:)();
  sub_100372C54(v32);
  v45 = v33;
  v46 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v40, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v40, v42);
  (*(v36 + 16))(v40, v41, v42);
  sub_1002EC85C(v40, v42, v38);
  v44(v40, v42);
  return (v44)(v41, v42);
}

uint64_t sub_1003722C4@<X0>(uint64_t a1@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Posting Delay", 0xDuLL, 1);
  v15 = Text.init(verbatim:)();
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v12[0] = v15;
  v12[1] = v1;
  v13 = v2 & 1;
  v14 = v3;
  sub_1002EC85C(v12, &type metadata for Text, &v19);
  sub_1002F03C0(v12);
  v5 = v19;
  v6 = v20;
  v7 = *(&v20 + 1);
  sub_1002EF238(v19, *(&v19 + 1), v20 & 1);

  v9 = v5;
  v10 = v6 & 1;
  v11 = v7;
  sub_1002EC85C(&v9, &type metadata for Text, a1);
  sub_1002F03C0(&v9);
  return sub_1002F03C0(&v19);
}

uint64_t sub_100372408@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v19 = 0;
  v18 = sub_1003726C4;
  v29 = 0;
  v1 = sub_10025C9B0(&qword_1006DA140, &qword_100505AC8);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v8 - v9;
  v26 = sub_10025C9B0(&qword_1006DA128, &qword_100505AC0);
  v20 = *(v26 - 8);
  v21 = v26 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v24 = &v8 - v10;
  v11 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v10);
  v25 = &v8 - v11;
  v29 = &v8 - v11;
  v12 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Reset Default Settings", 0x16uLL, 1);
  v13 = LocalizedStringKey.init(stringLiteral:)();
  v14 = v3;
  v15 = v4;
  v16 = v5;
  static ButtonRole.destructive.getter();
  v6 = type metadata accessor for ButtonRole();
  (*(*(v6 - 8) + 56))(v17, 0, v12);
  Button<>.init(_:role:action:)();
  v23 = sub_100372B14();
  sub_1002EC85C(v24, v26, v25);
  v28 = *(v20 + 8);
  v27 = v20 + 8;
  v28(v24, v26);
  (*(v20 + 16))(v24, v25, v26);
  sub_1002EC85C(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

void sub_1003726C4()
{
  v2 = [objc_opt_self() em_userDefaults];
  if (v2)
  {
    v0 = EMUserDefaultNotificationPostingDelayTime;
    _objc_retain(EMUserDefaultNotificationPostingDelayTime);
    sub_100261924(v0);
    v1 = String._bridgeToObjectiveC()();
    _objc_release(v0);

    [v2 removeObjectForKey:v1];
    _objc_release(v1);
    _objc_release(v2);
  }
}

unint64_t sub_100372844()
{
  v2 = qword_1006DA0F8;
  if (!qword_1006DA0F8)
  {
    sub_10025CAA4(&qword_1006DA0F0, &unk_100505AA0);
    sub_10025CAA4(&qword_1006DA100, &qword_100505EA0);
    sub_100372938();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA0F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100372938()
{
  v2 = qword_1006DA108;
  if (!qword_1006DA108)
  {
    sub_10025CAA4(&qword_1006DA100, &qword_100505EA0);
    sub_1003729E0();
    sub_1003115A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA108);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003729E0()
{
  v2 = qword_1006DA110;
  if (!qword_1006DA110)
  {
    sub_10025CAA4(&qword_1006DA118, &unk_100505AB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100372A68()
{
  v2 = qword_1006DA120;
  if (!qword_1006DA120)
  {
    sub_10025CAA4(&qword_1006DA0E8, &qword_100505A98);
    sub_100372844();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100372B14()
{
  v2 = qword_1006DA130;
  if (!qword_1006DA130)
  {
    sub_10025CAA4(&qword_1006DA128, &qword_100505AC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100372B9C()
{
  v2 = qword_1006DA138;
  if (!qword_1006DA138)
  {
    sub_10025CAA4(&qword_1006DA0E0, &qword_100505A90);
    sub_100372B14();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100372C54(uint64_t a1)
{
  v1 = sub_10025C9B0(&qword_1006DA118, &unk_100505AB0);
  (*(*(v1 - 8) + 8))(a1);
  sub_10025C9B0(&qword_1006DA100, &qword_100505EA0);

  return a1;
}

uint64_t sub_100372CE4(uint64_t a1)
{

  _objc_release(*(a1 + 8));
  return a1;
}

unint64_t sub_100372D24()
{
  v2 = qword_1006DA150;
  if (!qword_1006DA150)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DA150);
    return ObjCClassMetadata;
  }

  return v2;
}

char *sub_100372D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = a8;
  v23 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v24 = a5;
  v20 = a6;
  v25 = a7;
  v22 = 0;
  v21 = nullsub_13;
  v14 = nullsub_13;
  v27 = a7;
  v26 = type metadata accessor for Binding();
  v13 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v24);
  v19 = &v12 - v13;
  sub_10037CF10(v8, &v12 - v13, v9, v10);
  TextField<>.init<A>(_:value:formatter:onEditingChanged:onCommit:)();
  return sub_10037CFBC(v24, v25, v26);
}

uint64_t sub_100372EC4()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Intelligence Light Settings", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static MailIntelligenceLightSettingsViewController.title = v1;
  return result;
}

__int128 *MailIntelligenceLightSettingsViewController.title.unsafeMutableAddressor()
{
  if (qword_1006D5F70 != -1)
  {
    swift_once();
  }

  return &static MailIntelligenceLightSettingsViewController.title;
}

uint64_t static MailIntelligenceLightSettingsViewController.title.getter()
{
  v1 = *MailIntelligenceLightSettingsViewController.title.unsafeMutableAddressor();

  return v1;
}

id sub_100373014()
{
  v2 = (v0 + OBJC_IVAR___MFMailIntelligenceLightSettingsViewController_contentHost);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_100373084(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR___MFMailIntelligenceLightSettingsViewController_contentHost);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

Swift::Void __swiftcall MailIntelligenceLightSettingsViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v54 = v0;
  _objc_retain(v0);
  v53.receiver = v0;
  v53.super_class = ObjectType;
  objc_msgSendSuper2(&v53, "viewDidLoad");
  _objc_release(v47);
  sub_10025C9B0(&qword_1006DA160, &qword_100505AE0);
  sub_1003739FC(v55);
  memcpy(__dst, v55, sizeof(__dst));
  v49 = UIHostingController.__allocating_init(rootView:)();
  v48 = &v47[OBJC_IVAR___MFMailIntelligenceLightSettingsViewController_contentHost];
  swift_beginAccess();
  v1 = *v48;
  *v48 = v49;
  _objc_release(v1);
  swift_endAccess();
  v50 = &v47[OBJC_IVAR___MFMailIntelligenceLightSettingsViewController_contentHost];
  swift_beginAccess();
  v51 = *v50;
  _objc_retain(*v50);
  swift_endAccess();
  if (v51)
  {
    v45 = v51;
  }

  else
  {
    LOBYTE(v2) = 2;
    v9 = 26;
    LODWORD(v16) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v47 addChildViewController:{v2, v9, v16}];
  _objc_release(v45);
  _objc_retain(v47);
  v44 = [v47 view];
  _objc_release(v47);
  if (v44)
  {
    v43 = v44;
  }

  else
  {
    LOBYTE(v3) = 2;
    v10 = 27;
    LODWORD(v17) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v41 = &v47[OBJC_IVAR___MFMailIntelligenceLightSettingsViewController_contentHost];
  swift_beginAccess();
  v42 = *v41;
  _objc_retain(*v41);
  swift_endAccess();
  if (v42)
  {
    v40 = v42;
  }

  else
  {
    LOBYTE(v3) = 2;
    v10 = 27;
    LODWORD(v17) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v39 = [v40 view];
  _objc_release(v40);
  if (v39)
  {
    v38 = v39;
  }

  else
  {
    LOBYTE(v4) = 2;
    v11 = 27;
    LODWORD(v18) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v43 addSubview:{v4, v11, v18}];
  _objc_release(v38);
  _objc_release(v43);
  v36 = &v47[OBJC_IVAR___MFMailIntelligenceLightSettingsViewController_contentHost];
  swift_beginAccess();
  v37 = *v36;
  _objc_retain(*v36);
  swift_endAccess();
  if (v37)
  {
    v35 = v37;
  }

  else
  {
    LOBYTE(v5) = 2;
    v12 = 29;
    LODWORD(v19) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v34 = [v35 view];
  _objc_release(v35);
  if (v34)
  {
    v33 = v34;
  }

  else
  {
    LOBYTE(v6) = 2;
    v13 = 29;
    LODWORD(v20) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v33 setTranslatesAutoresizingMaskIntoConstraints:{0, v6, v13, v20}];
  _objc_release(v33);
  v31 = &v47[OBJC_IVAR___MFMailIntelligenceLightSettingsViewController_contentHost];
  swift_beginAccess();
  v32 = *v31;
  _objc_retain(*v31);
  swift_endAccess();
  if (v32)
  {
    v30 = v32;
  }

  else
  {
    LOBYTE(v7) = 2;
    v14 = 30;
    LODWORD(v21) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v29 = [v30 view];
  _objc_release(v30);
  if (v29)
  {
    v28 = v29;
  }

  else
  {
    LOBYTE(v8) = 2;
    v15 = 30;
    LODWORD(v22) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _objc_retain(v47);
  v27 = [v47 view];
  _objc_release(v47);
  if (v27)
  {
    v26 = v27;
  }

  else
  {
    LOBYTE(v8) = 2;
    v15 = 30;
    LODWORD(v22) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v28 mf_pinToView:v8 usingLayoutMargins:{v15, v22}];
  _objc_release(v26);
  _objc_release(v28);
  v24 = &v47[OBJC_IVAR___MFMailIntelligenceLightSettingsViewController_contentHost];
  swift_beginAccess();
  v25 = *v24;
  _objc_retain(*v24);
  swift_endAccess();
  if (v25)
  {
    v23 = v25;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _objc_retain(v47);
  [v23 didMoveToParentViewController:v47];
  _objc_release(v47);
  _objc_release(v23);
}

void *sub_1003739FC@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  [objc_opt_self() preferredMessageListBeginningAnimationCurve];
  ConversationNavigationBarItemType.rawValue.getter();
  __b[0] = sub_100374028(v1);
  [objc_opt_self() preferredMessageListEndingAnimationCurve];
  ConversationNavigationBarItemType.rawValue.getter();
  __b[1] = sub_1003741AC(v2);
  [objc_opt_self() preferredMessageListAnimationDelay];
  __b[2] = sub_100374330(v3);
  [objc_opt_self() preferredMessageListFadeInDuration];
  __b[3] = sub_1003744B4(v4);
  [objc_opt_self() preferredMessageListFadeOutDelay];
  __b[4] = sub_100374638(v5);
  [objc_opt_self() preferredMessageListFadeOutDuration];
  __b[5] = sub_1003747BC(v6);
  [objc_opt_self() preferredMessageListBackgroundCornerRadius];
  __b[6] = sub_100374940(v7);
  [objc_opt_self() preferredMessageListRimLightThickness];
  __b[7] = sub_100374AC4(v8);
  [objc_opt_self() preferredMessageListRimLightSoftRadius];
  __b[8] = sub_100374C48(v9);
  [objc_opt_self() preferredMessageListRimLightColorOpacity];
  __b[9] = sub_100374DCC(v10);
  v11 = [objc_opt_self() preferenceEnabled:56];
  __b[10] = sub_100374F50(v11);
  __b[11] = sub_100375170();
  type metadata accessor for AnimationCurve(0);
  _allocateUninitializedArray<A>(_:)();
  *v12 = 0;
  v12[1] = 1;
  v12[2] = 2;
  v12[3] = 3;
  sub_1002612B0();
  __b[12] = v13;
  memcpy(__dst, __b, sizeof(__dst));
  sub_100375D30(__dst, v16);
  sub_100375F54(__b);
  return memcpy(a1, __dst, 0x68uLL);
}

id MailIntelligenceLightSettingsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15 = a1;
  v16 = a2;
  v14 = a3;
  v17 = v3;
  *&v3[OBJC_IVAR___MFMailIntelligenceLightSettingsViewController_contentHost] = 0;

  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v13.receiver = v17;
  v13.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v8);
  _objc_release(v5);
  _objc_retain(v6);
  v17 = v6;
  _objc_release(a3);

  _objc_release(v17);
  return v6;
}

id MailIntelligenceLightSettingsViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  *&v1[OBJC_IVAR___MFMailIntelligenceLightSettingsViewController_contentHost] = 0;
  v7.receiver = v9;
  v7.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v7, "initWithCoder:");
  if (v6)
  {
    _objc_retain(v6);
    v9 = v6;
    _objc_release(a1);
    _objc_release(v9);
    return v6;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

uint64_t sub_100374028(uint64_t a1)
{
  v2 = MUIIntelligenceLightDefaultsKeyMessageListBeginningAnimationCurve;
  _objc_retain(MUIIntelligenceLightDefaultsKeyMessageListBeginningAnimationCurve);
  sub_100261924(v2);
  _objc_release(v2);
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

uint64_t sub_1003740A4()
{

  AppStorage.wrappedValue.getter();

  return v1;
}

uint64_t sub_1003740F4(uint64_t a1)
{

  AppStorage.wrappedValue.setter();
}

uint64_t sub_100374144()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_1003741AC(uint64_t a1)
{
  v2 = MUIIntelligenceLightDefaultsKeyMessageListEndingAnimationCurve;
  _objc_retain(MUIIntelligenceLightDefaultsKeyMessageListEndingAnimationCurve);
  sub_100261924(v2);
  _objc_release(v2);
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

uint64_t sub_100374228()
{

  AppStorage.wrappedValue.getter();

  return v1;
}

uint64_t sub_100374278(uint64_t a1)
{

  AppStorage.wrappedValue.setter();
}

uint64_t sub_1003742C8()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_100374330(double a1)
{
  v2 = MUIIntelligenceLightDefaultsKeyMessageListAnimationDelay;
  _objc_retain(MUIIntelligenceLightDefaultsKeyMessageListAnimationDelay);
  sub_100261924(v2);
  _objc_release(v2);
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

double sub_1003743AC()
{

  AppStorage.wrappedValue.getter();

  return v1;
}

uint64_t sub_1003743FC(double a1)
{

  AppStorage.wrappedValue.setter();
}

double sub_10037444C()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_1003744B4(double a1)
{
  v2 = MUIIntelligenceLightDefaultsKeyMessageListFadeInDuration;
  _objc_retain(MUIIntelligenceLightDefaultsKeyMessageListFadeInDuration);
  sub_100261924(v2);
  _objc_release(v2);
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

double sub_100374530()
{

  AppStorage.wrappedValue.getter();

  return v1;
}

uint64_t sub_100374580(double a1)
{

  AppStorage.wrappedValue.setter();
}

double sub_1003745D0()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_100374638(double a1)
{
  v2 = MUIIntelligenceLightDefaultsKeyMessageListFadeOutDelay;
  _objc_retain(MUIIntelligenceLightDefaultsKeyMessageListFadeOutDelay);
  sub_100261924(v2);
  _objc_release(v2);
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

double sub_1003746B4()
{

  AppStorage.wrappedValue.getter();

  return v1;
}

uint64_t sub_100374704(double a1)
{

  AppStorage.wrappedValue.setter();
}

double sub_100374754()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_1003747BC(double a1)
{
  v2 = MUIIntelligenceLightDefaultsKeyMessageListFadeOutDuration;
  _objc_retain(MUIIntelligenceLightDefaultsKeyMessageListFadeOutDuration);
  sub_100261924(v2);
  _objc_release(v2);
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

double sub_100374838()
{

  AppStorage.wrappedValue.getter();

  return v1;
}

uint64_t sub_100374888(double a1)
{

  AppStorage.wrappedValue.setter();
}

double sub_1003748D8()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_100374940(double a1)
{
  v2 = MUIIntelligenceLightDefaultsKeyMessageListBackgroundCornerRadius;
  _objc_retain(MUIIntelligenceLightDefaultsKeyMessageListBackgroundCornerRadius);
  sub_100261924(v2);
  _objc_release(v2);
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

double sub_1003749BC()
{

  AppStorage.wrappedValue.getter();

  return v1;
}

uint64_t sub_100374A0C(double a1)
{

  AppStorage.wrappedValue.setter();
}

double sub_100374A5C()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_100374AC4(double a1)
{
  v2 = MUIIntelligenceLightDefaultsKeyMessageListRimLightThickness;
  _objc_retain(MUIIntelligenceLightDefaultsKeyMessageListRimLightThickness);
  sub_100261924(v2);
  _objc_release(v2);
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

double sub_100374B40()
{

  AppStorage.wrappedValue.getter();

  return v1;
}

uint64_t sub_100374B90(double a1)
{

  AppStorage.wrappedValue.setter();
}

double sub_100374BE0()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_100374C48(double a1)
{
  v2 = MUIIntelligenceLightDefaultsKeyMessageListRimLightSoftRadius;
  _objc_retain(MUIIntelligenceLightDefaultsKeyMessageListRimLightSoftRadius);
  sub_100261924(v2);
  _objc_release(v2);
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

double sub_100374CC4()
{

  AppStorage.wrappedValue.getter();

  return v1;
}

uint64_t sub_100374D14(double a1)
{

  AppStorage.wrappedValue.setter();
}

double sub_100374D64()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_100374DCC(double a1)
{
  v2 = MUIIntelligenceLightDefaultsKeyMessageListRimLightColorOpacity;
  _objc_retain(MUIIntelligenceLightDefaultsKeyMessageListRimLightColorOpacity);
  sub_100261924(v2);
  _objc_release(v2);
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

double sub_100374E48()
{

  AppStorage.wrappedValue.getter();

  return v1;
}

uint64_t sub_100374E98(double a1)
{

  AppStorage.wrappedValue.setter();
}

double sub_100374EE8()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_100374F50(char a1)
{
  v3 = EMUserDefaultShimmerHighlightsWhenAppearing;
  _objc_retain(EMUserDefaultShimmerHighlightsWhenAppearing);
  sub_100261924(v3);
  _objc_release(v3);
  v1 = [objc_opt_self() em_userDefaults];
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

uint64_t sub_100374FF8()
{

  AppStorage.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_10037504C(char a1)
{

  AppStorage.wrappedValue.setter();
}

uint64_t sub_10037509C()
{

  AppStorage.projectedValue.getter();

  return v1;
}

uint64_t sub_100375108()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_100375134(uint64_t a1)
{

  *(v1 + 80) = a1;
}

id sub_100375170()
{
  sub_100372D24();
  v1 = sub_10025C704();
  [v1 setNumberStyle:1];
  [v1 setMaximumFractionDigits:3];
  return v1;
}

void *sub_1003751E4()
{
  v2 = *(v0 + 88);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_100375218()
{
  v2 = *(v0 + 96);

  return v2;
}

uint64_t sub_100375244@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v11 = sub_100375EC4;
  v25 = 0;
  __src = __dst;
  __n = 104;
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v27, __dst, sizeof(v27));
  v19 = sub_10025C9B0(&qword_1006DA168, &qword_100505AE8);
  v13 = *(v19 - 8);
  v14 = v19 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v17 = &v4 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v4 - v7);
  v18 = &v4 - v8;
  v25 = &v4 - v8;
  sub_100375D30(v1, v24);
  v9 = &v22;
  v23 = v1;
  v10 = sub_10025C9B0(&qword_1006DA170, &qword_100505AF0);
  sub_100375ECC();
  Form.init(content:)();
  sub_100375F54(v12);
  v16 = sub_100376018();
  sub_1002EC85C(v17, v19, v18);
  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v21(v17, v19);
  (*(v13 + 16))(v17, v18, v19);
  sub_1002EC85C(v17, v19, v15);
  v21(v17, v19);
  return (v21)(v18, v19);
}

uint64_t sub_100375484@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v42 = __src;
  v43 = 0;
  v26 = sub_10037C788;
  v30 = sub_10037C8C4;
  v38 = sub_10037CA04;
  v45 = sub_10037B438;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  __srca[0] = __dst;
  __srca[1] = 104;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v93, __dst, sizeof(v93));
  v65 = sub_10025C9B0(&qword_1006DA1F0, &qword_100505E58);
  v52 = *(v65 - 8);
  v53 = v65 - 8;
  v16 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v65);
  v60 = __srca - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(__srca - v16);
  v64 = __srca - v17;
  v91 = __srca - v17;
  v69 = sub_10025C9B0(&qword_1006DA1F8, &qword_100505E60);
  v50 = *(v69 - 8);
  v51 = v69 - 8;
  v18 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v69);
  v61 = __srca - v18;
  v19 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(__srca - v18);
  v68 = __srca - v19;
  v90 = __srca - v19;
  v73 = sub_10025C9B0(&qword_1006DA200, &qword_100505E68);
  v48 = *(v73 - 8);
  v49 = v73 - 8;
  v20 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v73);
  v62 = __srca - v20;
  v21 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(__srca - v20);
  v72 = __srca - v21;
  v89 = __srca - v21;
  v77 = sub_10025C9B0(&qword_1006DA208, &qword_100505E70);
  v46 = *(v77 - 8);
  v47 = v77 - 8;
  v22 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v42);
  v63 = __srca - v22;
  v23 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v76 = __srca - v23;
  v88 = __srca - v23;
  sub_100375D30(v7, v87);
  v24 = v82;
  v82[2] = v42;
  v25 = sub_10025C9B0(&qword_1006DA210, &qword_100505E78);
  sub_10037C790();
  Section<>.init(content:)();
  sub_100375F54(v42);
  v54 = sub_10037C818();
  sub_1002EC85C(v63, v77, v76);
  v79 = *(v46 + 8);
  v78 = v46 + 8;
  v79(v63, v77);
  v34 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Highlights Box Background", 0x19uLL, 1);
  v33 = LocalizedStringKey.init(stringLiteral:)();
  v27 = v8;
  v28 = v9;
  v29 = v10;
  sub_100375D30(v42, v86);
  v31 = v81;
  v81[2] = v42;
  v32 = sub_10025C9B0(&qword_1006DA228, &qword_100505E80);
  sub_10037C8CC();
  Section<>.init(_:content:)();
  sub_100375F54(v42);
  v55 = sub_10037C954();
  sub_1002EC85C(v62, v73, v72);
  v75 = *(v48 + 8);
  v74 = v48 + 8;
  v75(v62, v73);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Highlights Box Animation", 0x18uLL, v34 & 1);
  v41 = LocalizedStringKey.init(stringLiteral:)();
  v35 = v11;
  v36 = v12;
  v37 = v13;
  sub_100375D30(v42, v85);
  v39 = v80;
  v80[2] = v42;
  v40 = sub_10025C9B0(&qword_1006DA240, &qword_100505E88);
  sub_10037CA0C();
  Section<>.init(_:content:)();
  sub_100375F54(v42);
  v56 = sub_10037CA94();
  sub_1002EC85C(v61, v69, v68);
  v71 = *(v50 + 8);
  v70 = v50 + 8;
  v71(v61, v69);
  v44 = sub_10025C9B0(&qword_1006DA258, &qword_100505E90);
  sub_10037CB44();
  Section<>.init(content:)();
  v57 = sub_10037CBCC();
  sub_1002EC85C(v60, v65, v64);
  v67 = *(v52 + 8);
  v66 = v52 + 8;
  v67(v60, v65);
  (*(v46 + 16))(v63, v76, v77);
  v59 = v84;
  v84[0] = v63;
  (*(v48 + 16))(v62, v72, v73);
  v84[1] = v62;
  (*(v50 + 16))(v61, v68, v69);
  v84[2] = v61;
  (*(v52 + 16))(v60, v64, v65);
  v84[3] = v60;
  v83[0] = v77;
  v83[1] = v73;
  v83[2] = v69;
  v83[3] = v65;
  v82[3] = v54;
  v82[4] = v55;
  v82[5] = v56;
  v82[6] = v57;
  sub_1003A33CC(v59, 4uLL, v83, v58);
  v67(v60, v65);
  v71(v61, v69);
  v75(v62, v73);
  v79(v63, v77);
  v67(v64, v65);
  v71(v68, v69);
  v75(v72, v73);
  return (v79)(v76, v77);
}

void *sub_100375D30(uint64_t *a1, void *a2)
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
  v9 = a1[6];

  a2[6] = v9;
  v10 = a1[7];

  a2[7] = v10;
  v11 = a1[8];

  a2[8] = v11;
  v12 = a1[9];

  a2[9] = v12;
  v13 = a1[10];

  a2[10] = v13;
  v14 = a1[11];
  _objc_retain(v14);
  a2[11] = v14;
  v17 = a1[12];

  result = a2;
  a2[12] = v17;
  return result;
}

unint64_t sub_100375ECC()
{
  v2 = qword_1006DA178;
  if (!qword_1006DA178)
  {
    sub_10025CAA4(&qword_1006DA170, &qword_100505AF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA178);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100375F54(uint64_t a1)
{

  _objc_release(*(a1 + 88));

  return a1;
}

unint64_t sub_100376018()
{
  v2 = qword_1006DA180;
  if (!qword_1006DA180)
  {
    sub_10025CAA4(&qword_1006DA168, &qword_100505AE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DA180);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003760A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v12 = a1;
  v34 = 0;
  v33 = 0;
  v27 = sub_10025C9B0(&qword_1006DA210, &qword_100505E78);
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v10 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v25 = &v9 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v26 = &v9 - v11;
  v34 = &v9 - v11;
  v33 = v4;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Always shimmer when appearing", 0x1DuLL, 1);
  v14 = LocalizedStringKey.init(stringLiteral:)();
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v13 = *(v12 + 80);

  AppStorage.projectedValue.getter();
  v18 = v30;
  v19 = v31;
  v20 = v32;

  Toggle<>.init(_:isOn:)();
  v24 = sub_10037C790();
  sub_1002EC85C(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);
  (*(v21 + 16))(v25, v26, v27);
  sub_1002EC85C(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_1003762F4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v21 = a2;
  v37 = 0;
  v64 = 0;
  v60 = 0;
  v58 = 0;
  v56 = 0;
  v2 = *a1;
  v3 = a1[1];
  v67 = a1[2];
  v66 = v3;
  v65 = v2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v71 = *(a1 + 12);
  v70 = v6;
  v69 = v5;
  v68 = v4;
  v74 = v67;
  v73 = v66;
  v72 = v65;
  v78 = v71;
  v77 = v6;
  v76 = v5;
  v75 = v4;
  v44 = sub_10025C9B0(&qword_1006DA0F0, &unk_100505AA0);
  v22 = v44;
  v23 = *(v44 - 8);
  v43 = v23;
  v24 = v23;
  v31 = *(v23 + 64);
  v7 = __chkstk_darwin(v40);
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v17 - v33;
  v8 = __chkstk_darwin(v7);
  v26 = v17 - v33;
  v9 = __chkstk_darwin(v8);
  v27 = v17 - v33;
  v10 = __chkstk_darwin(v9);
  v28 = v17 - v33;
  v11 = __chkstk_darwin(v10);
  v29 = v17 - v33;
  v12 = __chkstk_darwin(v11);
  v30 = v17 - v33;
  v13 = __chkstk_darwin(v12);
  v47 = v17 - v33;
  v32 = v17 - v33;
  v14 = __chkstk_darwin(v13);
  v41 = v17 - v33;
  v34 = v17 - v33;
  v64 = v17 - v33;
  sub_100375D30(v14, v63);
  v48 = v40;
  v38 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v35 = v38;
  v36 = sub_10025CAA4(&qword_1006DA100, &qword_100505EA0);
  v15 = sub_100372938();
  v61 = v36;
  v62 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  LabeledContent<>.init(content:label:)();
  sub_100375F54(v40);
  v42 = sub_100372844();
  sub_1002EC85C(v47, v44, v41);
  v45 = *(v43 + 8);
  v46 = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v45(v47, v44);
  v60 = v47;
  sub_100375D30(v40, v59);
  v20 = v17;
  __chkstk_darwin(v17);
  v17[-2] = v40;
  LabeledContent<>.init(content:label:)();
  sub_100375F54(v40);
  sub_1002EC85C(v30, v22, v32);
  v45(v30, v22);
  v58 = v30;
  sub_100375D30(v40, v57);
  v19 = v17;
  __chkstk_darwin(v17);
  v17[-2] = v40;
  LabeledContent<>.init(content:label:)();
  sub_100375F54(v40);
  sub_1002EC85C(v29, v22, v30);
  v45(v29, v22);
  v56 = v29;
  sub_100375D30(v40, v55);
  v17[0] = v17;
  __chkstk_darwin(v17);
  v17[-2] = v40;
  LabeledContent<>.init(content:label:)();
  sub_100375F54(v40);
  sub_1002EC85C(v28, v22, v29);
  v45(v28, v22);
  v18 = *(v24 + 16);
  v17[1] = v24 + 16;
  v18(v28, v34, v22);
  v54[0] = v28;
  v18(v27, v32, v22);
  v54[1] = v27;
  v18(v26, v30, v22);
  v54[2] = v26;
  v18(v25, v29, v22);
  v54[3] = v25;
  v53[0] = v22;
  v53[1] = v22;
  v53[2] = v22;
  v53[3] = v22;
  v49 = v42;
  v50 = v42;
  v51 = v42;
  v52 = v42;
  sub_1003A33CC(v54, 4uLL, v53, v21);
  v45(v25, v22);
  v45(v26, v22);
  v45(v27, v22);
  v45(v28, v22);
  v45(v29, v22);
  v45(v30, v22);
  v45(v32, v22);
  return (v45)(v34, v22);
}

uint64_t sub_100376A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v19 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v48 = 0;
  v47 = 0;
  v30 = sub_10025C9B0(&qword_1006DA118, &unk_100505AB0);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v2 = &v10 - v11;
  v29 = &v10 - v11;
  v32 = sub_10025C9B0(&qword_1006DA100, &qword_100505EA0);
  v12 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v31 = &v10 - v12;
  v41 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v19);
  v39 = &v10 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v40 = &v10 - v14;
  v48 = &v10 - v14;
  v47 = v5;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Corner Radius", 0xDuLL, 1);
  v26 = LocalizedStringKey.init(stringLiteral:)();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v15 = *(v19 + 48);

  v25 = &type metadata for Double;
  AppStorage.projectedValue.getter();
  v16 = v46[3];
  v17 = v46[4];
  v18 = v46[5];

  v23 = v46;
  v46[0] = v16;
  v46[1] = v17;
  v46[2] = v18;
  v24 = *(v19 + 88);
  _objc_retain(v24);
  sub_100372D88(v26, v20, v21 & 1, v22, v23, v24, v25, v2);
  sub_1003729E0();
  View.multilineTextAlignment(_:)();
  (*(v27 + 8))(v29, v30);
  v33 = sub_100372938();
  View.keyboardType(_:)();
  sub_100372C54(v31);
  v44 = v32;
  v45 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_1002EC85C(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_100376F0C@<X0>(uint64_t a1@<X8>)
{
  v23 = 0u;
  v24 = 0u;
  HIBYTE(v7) = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Corner Radius", 0xDuLL, 1);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = 0;
  v21 = 0;
  v22 = v7 & 0x100;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v13[0] = v16;
  v13[1] = v1;
  v14 = v2 & 1;
  v15 = v3;
  sub_1002EC85C(v13, &type metadata for Text, &v23);
  sub_1002F03C0(v13);
  v5 = v23;
  v6 = v24;
  v8 = *(&v24 + 1);
  sub_1002EF238(v23, *(&v23 + 1), v24 & 1);

  v10 = v5;
  v11 = v6 & 1;
  v12 = v8;
  sub_1002EC85C(&v10, &type metadata for Text, a1);
  sub_1002F03C0(&v10);
  return sub_1002F03C0(&v23);
}

uint64_t sub_1003770A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v19 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v48 = 0;
  v47 = 0;
  v30 = sub_10025C9B0(&qword_1006DA118, &unk_100505AB0);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v2 = &v10 - v11;
  v29 = &v10 - v11;
  v32 = sub_10025C9B0(&qword_1006DA100, &qword_100505EA0);
  v12 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v31 = &v10 - v12;
  v41 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v19);
  v39 = &v10 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v40 = &v10 - v14;
  v48 = &v10 - v14;
  v47 = v5;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Rim Light Thickness", 0x13uLL, 1);
  v26 = LocalizedStringKey.init(stringLiteral:)();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v15 = *(v19 + 56);

  v25 = &type metadata for Double;
  AppStorage.projectedValue.getter();
  v16 = v46[3];
  v17 = v46[4];
  v18 = v46[5];

  v23 = v46;
  v46[0] = v16;
  v46[1] = v17;
  v46[2] = v18;
  v24 = *(v19 + 88);
  _objc_retain(v24);
  sub_100372D88(v26, v20, v21 & 1, v22, v23, v24, v25, v2);
  sub_1003729E0();
  View.multilineTextAlignment(_:)();
  (*(v27 + 8))(v29, v30);
  v33 = sub_100372938();
  View.keyboardType(_:)();
  sub_100372C54(v31);
  v44 = v32;
  v45 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_1002EC85C(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_100377524@<X0>(uint64_t a1@<X8>)
{
  v23 = 0u;
  v24 = 0u;
  HIBYTE(v7) = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Rim Light Thickness", 0x13uLL, 1);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = 0;
  v21 = 0;
  v22 = v7 & 0x100;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v13[0] = v16;
  v13[1] = v1;
  v14 = v2 & 1;
  v15 = v3;
  sub_1002EC85C(v13, &type metadata for Text, &v23);
  sub_1002F03C0(v13);
  v5 = v23;
  v6 = v24;
  v8 = *(&v24 + 1);
  sub_1002EF238(v23, *(&v23 + 1), v24 & 1);

  v10 = v5;
  v11 = v6 & 1;
  v12 = v8;
  sub_1002EC85C(&v10, &type metadata for Text, a1);
  sub_1002F03C0(&v10);
  return sub_1002F03C0(&v23);
}

uint64_t sub_1003776BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v19 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v48 = 0;
  v47 = 0;
  v30 = sub_10025C9B0(&qword_1006DA118, &unk_100505AB0);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v2 = &v10 - v11;
  v29 = &v10 - v11;
  v32 = sub_10025C9B0(&qword_1006DA100, &qword_100505EA0);
  v12 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v31 = &v10 - v12;
  v41 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v19);
  v39 = &v10 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v40 = &v10 - v14;
  v48 = &v10 - v14;
  v47 = v5;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Rim Light Soft Radius", 0x15uLL, 1);
  v26 = LocalizedStringKey.init(stringLiteral:)();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v15 = *(v19 + 64);

  v25 = &type metadata for Double;
  AppStorage.projectedValue.getter();
  v16 = v46[3];
  v17 = v46[4];
  v18 = v46[5];

  v23 = v46;
  v46[0] = v16;
  v46[1] = v17;
  v46[2] = v18;
  v24 = *(v19 + 88);
  _objc_retain(v24);
  sub_100372D88(v26, v20, v21 & 1, v22, v23, v24, v25, v2);
  sub_1003729E0();
  View.multilineTextAlignment(_:)();
  (*(v27 + 8))(v29, v30);
  v33 = sub_100372938();
  View.keyboardType(_:)();
  sub_100372C54(v31);
  v44 = v32;
  v45 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_1002EC85C(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_100377B3C@<X0>(uint64_t a1@<X8>)
{
  v23 = 0u;
  v24 = 0u;
  HIBYTE(v7) = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Rim Light Soft Radius", 0x15uLL, 1);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = 0;
  v21 = 0;
  v22 = v7 & 0x100;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v13[0] = v16;
  v13[1] = v1;
  v14 = v2 & 1;
  v15 = v3;
  sub_1002EC85C(v13, &type metadata for Text, &v23);
  sub_1002F03C0(v13);
  v5 = v23;
  v6 = v24;
  v8 = *(&v24 + 1);
  sub_1002EF238(v23, *(&v23 + 1), v24 & 1);

  v10 = v5;
  v11 = v6 & 1;
  v12 = v8;
  sub_1002EC85C(&v10, &type metadata for Text, a1);
  sub_1002F03C0(&v10);
  return sub_1002F03C0(&v23);
}

uint64_t sub_100377CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v19 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v48 = 0;
  v47 = 0;
  v30 = sub_10025C9B0(&qword_1006DA118, &unk_100505AB0);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v2 = &v10 - v11;
  v29 = &v10 - v11;
  v32 = sub_10025C9B0(&qword_1006DA100, &qword_100505EA0);
  v12 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v31 = &v10 - v12;
  v41 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v19);
  v39 = &v10 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v40 = &v10 - v14;
  v48 = &v10 - v14;
  v47 = v5;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Rim Light Color Opacity", 0x17uLL, 1);
  v26 = LocalizedStringKey.init(stringLiteral:)();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v15 = *(v19 + 72);

  v25 = &type metadata for Double;
  AppStorage.projectedValue.getter();
  v16 = v46[3];
  v17 = v46[4];
  v18 = v46[5];

  v23 = v46;
  v46[0] = v16;
  v46[1] = v17;
  v46[2] = v18;
  v24 = *(v19 + 88);
  _objc_retain(v24);
  sub_100372D88(v26, v20, v21 & 1, v22, v23, v24, v25, v2);
  sub_1003729E0();
  View.multilineTextAlignment(_:)();
  (*(v27 + 8))(v29, v30);
  v33 = sub_100372938();
  View.keyboardType(_:)();
  sub_100372C54(v31);
  v44 = v32;
  v45 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_1002EC85C(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_100378154@<X0>(uint64_t a1@<X8>)
{
  v23 = 0u;
  v24 = 0u;
  HIBYTE(v7) = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Rim Light Color Opacity", 0x17uLL, 1);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = 0;
  v21 = 0;
  v22 = v7 & 0x100;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v13[0] = v16;
  v13[1] = v1;
  v14 = v2 & 1;
  v15 = v3;
  sub_1002EC85C(v13, &type metadata for Text, &v23);
  sub_1002F03C0(v13);
  v5 = v23;
  v6 = v24;
  v8 = *(&v24 + 1);
  sub_1002EF238(v23, *(&v23 + 1), v24 & 1);

  v10 = v5;
  v11 = v6 & 1;
  v12 = v8;
  sub_1002EC85C(&v10, &type metadata for Text, a1);
  sub_1002F03C0(&v10);
  return sub_1002F03C0(&v23);
}

uint64_t sub_1003782EC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v64 = a2;
  v89 = 0;
  v122 = 0;
  v121 = 0;
  v117 = 0;
  v115 = 0;
  v113 = 0;
  v110 = 0;
  v2 = *a1;
  v3 = a1[1];
  v125 = a1[2];
  v124 = v3;
  v123 = v2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v129 = *(a1 + 12);
  v128 = v6;
  v127 = v5;
  v126 = v4;
  v132 = v125;
  v131 = v124;
  v130 = v123;
  v136 = v129;
  v135 = v6;
  v134 = v5;
  v133 = v4;
  v65 = sub_10025C9B0(&qword_1006DA270, &qword_100505E98);
  v66 = *(v65 - 8);
  v67 = v66;
  v70 = *(v66 + 64);
  v7 = __chkstk_darwin(v65 - 8);
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = v29 - v72;
  v8 = __chkstk_darwin(v7);
  v69 = v29 - v72;
  v9 = __chkstk_darwin(v8);
  v71 = v29 - v72;
  __chkstk_darwin(v9);
  v73 = v29 - v72;
  v122 = v29 - v72;
  v96 = sub_10025C9B0(&qword_1006DA0F0, &unk_100505AA0);
  v74 = v96;
  v75 = *(v96 - 8);
  v95 = v75;
  v76 = v75;
  v83 = *(v75 + 64);
  v10 = __chkstk_darwin(v92);
  v85 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = v29 - v85;
  v11 = __chkstk_darwin(v10);
  v78 = v29 - v85;
  v12 = __chkstk_darwin(v11);
  v79 = v29 - v85;
  v13 = __chkstk_darwin(v12);
  v80 = v29 - v85;
  v14 = __chkstk_darwin(v13);
  v81 = v29 - v85;
  v15 = __chkstk_darwin(v14);
  v82 = v29 - v85;
  v16 = __chkstk_darwin(v15);
  v99 = v29 - v85;
  v84 = v29 - v85;
  v17 = __chkstk_darwin(v16);
  v93 = v29 - v85;
  v86 = v29 - v85;
  v121 = v29 - v85;
  sub_100375D30(v17, v120);
  v100 = v92;
  v90 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v87 = v90;
  v88 = sub_10025CAA4(&qword_1006DA100, &qword_100505EA0);
  v18 = sub_100372938();
  v118 = v88;
  v119 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  LabeledContent<>.init(content:label:)();
  sub_100375F54(v92);
  v94 = sub_100372844();
  sub_1002EC85C(v99, v96, v93);
  v97 = *(v95 + 8);
  v98 = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v97(v99, v96);
  v117 = v99;
  sub_100375D30(v92, v116);
  v63 = v29;
  __chkstk_darwin(v29);
  LabeledContent<>.init(content:label:)();
  sub_100375F54(v92);
  sub_1002EC85C(v82, v74, v84);
  v97(v82, v74);
  v115 = v82;
  sub_100375D30(v92, v114);
  v62 = v29;
  __chkstk_darwin(v29);
  LabeledContent<>.init(content:label:)();
  sub_100375F54(v92);
  sub_1002EC85C(v81, v74, v82);
  v97(v81, v74);
  v113 = v81;
  sub_100375D30(v92, v112);
  v43 = v29;
  v48 = 24;
  __chkstk_darwin(v29);
  v28 = v92;
  LabeledContent<>.init(content:label:)();
  sub_100375F54(v92);
  sub_1002EC85C(v80, v74, v81);
  v97(v80, v74);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Beginning Animation Curve", 0x19uLL, 1);
  v56 = LocalizedStringKey.init(stringLiteral:)();
  v52 = v19;
  v51 = v20;
  v53 = v21;
  v44 = *v92;

  v55 = &type metadata for Int;
  AppStorage.projectedValue.getter();
  v45 = v111[16];
  v46 = v111[17];
  v47 = v111[18];

  v111[13] = v45;
  v111[14] = v46;
  v111[15] = v47;
  sub_100375D30(v92, v111);
  v58 = v29;
  __chkstk_darwin(v29);
  v54 = &v26;
  v50 = sub_10025C9B0(&qword_1006DA278, &qword_100505EA8);
  v49 = v50;
  v57 = sub_10037CCA0();
  v28 = v57;
  v27 = &protocol witness table for Int;
  v26 = v50;
  Picker<>.init(_:selection:content:)();
  sub_100375F54(v92);
  v59 = sub_10037CD34();
  sub_1002EC85C(v71, v65, v73);
  v60 = *(v67 + 8);
  v61 = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v60(v71, v65);
  v110 = v71;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Ending Animation Curve", 0x16uLL, 1);
  v37 = LocalizedStringKey.init(stringLiteral:)();
  v34 = v22;
  v33 = v23;
  v35 = v24;
  v29[1] = v92[1];

  v36 = &type metadata for Int;
  AppStorage.projectedValue.getter();
  v30 = v109[16];
  v31 = v109[17];
  v32 = v109[18];

  v109[13] = v30;
  v109[14] = v31;
  v109[15] = v32;
  sub_100375D30(v92, v109);
  v38 = v29;
  __chkstk_darwin(v37);
  v28 = v57;
  v27 = &protocol witness table for Int;
  v26 = v49;
  Picker<>.init(_:selection:content:)();
  sub_100375F54(v92);
  sub_1002EC85C(v69, v65, v71);
  v60(v69, v65);
  v40 = *(v76 + 16);
  v39 = v76 + 16;
  v40(v80, v86, v74);
  v108[0] = v80;
  v40(v79, v84, v74);
  v108[1] = v79;
  v40(v78, v82, v74);
  v108[2] = v78;
  v40(v77, v81, v74);
  v108[3] = v77;
  v42 = *(v67 + 16);
  v41 = v67 + 16;
  v42(v69, v73, v65);
  v108[4] = v69;
  v42(v68, v71, v65);
  v108[5] = v68;
  v107[0] = v74;
  v107[1] = v74;
  v107[2] = v74;
  v107[3] = v74;
  v107[4] = v65;
  v107[5] = v65;
  v101 = v94;
  v102 = v94;
  v103 = v94;
  v104 = v94;
  v105 = v59;
  v106 = v59;
  sub_1003A33CC(v108, 6uLL, v107, v64);
  v60(v68, v65);
  v60(v69, v65);
  v97(v77, v74);
  v97(v78, v74);
  v97(v79, v74);
  v97(v80, v74);
  v60(v71, v65);
  v60(v73, v65);
  v97(v81, v74);
  v97(v82, v74);
  v97(v84, v74);
  return (v97)(v86, v74);
}

uint64_t sub_100378F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v19 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.keyboardType(_:)>>;
  v48 = 0;
  v47 = 0;
  v30 = sub_10025C9B0(&qword_1006DA118, &unk_100505AB0);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v2 = &v10 - v11;
  v29 = &v10 - v11;
  v32 = sub_10025C9B0(&qword_1006DA100, &qword_100505EA0);
  v12 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v32);
  v31 = &v10 - v12;
  v41 = sub_10025C9B0(&qword_1006DA148, &unk_100505AD0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v19);
  v39 = &v10 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v40 = &v10 - v14;
  v48 = &v10 - v14;
  v47 = v5;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Animation Delay", 0xFuLL, 1);
  v26 = LocalizedStringKey.init(stringLiteral:)();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v15 = *(v19 + 16);

  v25 = &type metadata for Double;
  AppStorage.projectedValue.getter();
  v16 = v46[3];
  v17 = v46[4];
  v18 = v46[5];

  v23 = v46;
  v46[0] = v16;
  v46[1] = v17;
  v46[2] = v18;
  v24 = *(v19 + 88);
  _objc_retain(v24);
  sub_100372D88(v26, v20, v21 & 1, v22, v23, v24, v25, v2);
  sub_1003729E0();
  View.multilineTextAlignment(_:)();
  (*(v27 + 8))(v29, v30);
  v33 = sub_100372938();
  View.keyboardType(_:)();
  sub_100372C54(v31);
  v44 = v32;
  v45 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_1002EC85C(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_100379404@<X0>(uint64_t a1@<X8>)
{
  v23 = 0u;
  v24 = 0u;
  HIBYTE(v7) = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delay in seconds", 0x10uLL, 1);
  LocalizedStringKey.init(stringLiteral:)();
  v20 = 0;
  v21 = 0;
  v22 = v7 & 0x100;
  v16 = Text.init(_:tableName:bundle:comment:)();
  v17 = v1;
  v18 = v2;
  v19 = v3;
  v13[0] = v16;
  v13[1] = v1;
  v14 = v2 & 1;
  v15 = v3;
  sub_1002EC85C(v13, &type metadata for Text, &v23);
  sub_1002F03C0(v13);
  v5 = v23;
  v6 = v24;
  v8 = *(&v24 + 1);
  sub_1002EF238(v23, *(&v23 + 1), v24 & 1);

  v10 = v5;
  v11 = v6 & 1;
  v12 = v8;
  sub_1002EC85C(&v10, &type metadata for Text, a1);
  sub_1002F03C0(&v10);
  return sub_1002F03C0(&v23);
}