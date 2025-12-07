uint64_t sub_1001AAAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(a5 + qword_1003E3FF0) = a1 == 0;
    sub_10024D10C(0);
    sub_1001AB4DC(a3, 3, a7, a8);
  }

  return result;
}

uint64_t sub_1001AAB60(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v49 = a3;
  v47 = *v3;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for InheritanceHealthRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  (*(v17 + 16))(&v42 - v18, v4 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__cloudStorage, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v19, v16);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  if (swift_dynamicCast())
  {
    sub_10003E950(v50, v52);
    v43 = sub_1000080F8(v52, v52[3]);
    v45 = a1;
    v46 = type metadata accessor for InheritanceHealthRecord;
    sub_1001B2990(a1, v15, type metadata accessor for InheritanceHealthRecord);
    v20 = *(v11 + 80);
    v21 = (v20 + 16) & ~v20;
    v22 = v12 + 7;
    v23 = a2;
    v24 = (v22 + v21) & 0xFFFFFFFFFFFFFFF8;
    v25 = v15;
    v26 = v49;
    v27 = swift_allocObject();
    v44 = type metadata accessor for InheritanceHealthRecord;
    sub_1001AF9BC(v25, v27 + v21, type metadata accessor for InheritanceHealthRecord);
    v28 = (v27 + v24);
    *v28 = v23;
    v28[1] = v26;
    *(v27 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v47;
    v29 = *v43;
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    v31 = v48;
    sub_1001B2990(v45, v48, v46);
    v32 = (v20 + 40) & ~v20;
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v29;
    sub_1001AF9BC(v31, v33 + v32, v44);
    v34 = (v33 + ((v22 + v32) & 0xFFFFFFFFFFFFFFF8));
    *v34 = sub_1001B0110;
    v34[1] = v27;

    sub_1000BCD5C(0, 0, v9, &unk_1003446E8, v33);

    return sub_10000839C(v52);
  }

  else
  {
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_100008D3C(v50, &unk_1003DB050, &qword_10033FA60);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAAB8);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = a2;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v52[0] = v41;
      *v40 = 136315138;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v40 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v52);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s - isSharedAndAccepted unable to obtain pointer to CloudKitSharing", v40, 0xCu);
      sub_10000839C(v41);

      return v39(1);
    }

    else
    {

      return a2(1);
    }
  }
}

uint64_t sub_1001AB0FC(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for InheritanceInvitationRecord(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v11 = &v22 - v10;
  if (*(a1 + *(result + 40)) == 3)
  {
    v24 = v1;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_1001B2990(a1, v11, type metadata accessor for InheritanceInvitationRecord);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v22 = v5;
      v23 = v3;
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v15 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v25);
      *(v15 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_1001B29F8(v11, type metadata accessor for InheritanceInvitationRecord);
      v19 = sub_10021145C(v16, v18, &v25);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - beneficiary %s was marked as not reachable, marking as accepted again.", v15, 0x16u);
      swift_arrayDestroy();

      v5 = v22;
      v3 = v23;
    }

    else
    {

      sub_1001B29F8(v11, type metadata accessor for InheritanceInvitationRecord);
    }

    sub_1001B2990(a1, v8, type metadata accessor for InheritanceInvitationRecord);
    v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v21 = swift_allocObject();
    sub_1001AF9BC(v8, v21 + v20, type metadata accessor for InheritanceInvitationRecord);
    *(v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
    sub_1001AB4DC(a1, 2, sub_1001B28B0, v21);
  }

  return result;
}

uint64_t sub_1001AB4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v35 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for InheritanceInvitationRecord(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 32);
  v34 = a1;
  if (*(a1 + v18) == a2)
  {
    return a3(0);
  }

  v32 = v10;
  v33 = a3;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v31 = a2;
  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAB8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v30 = a4;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36[0] = v24;
    *v23 = 136315394;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v23 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v36);
    *(v23 + 12) = 2048;
    v25 = v31;
    *(v23 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s - updating invitation to %ld", v23, 0x16u);
    sub_10000839C(v24);

    a4 = v30;
  }

  else
  {

    v25 = v31;
  }

  sub_1001B2990(v34, v17, type metadata accessor for InheritanceInvitationRecord);
  *&v17[*(v14 + 32)] = v25;
  v26 = v35;
  (*(v35 + 16))(v13, v5 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__inheritanceStorage, v11);
  Dependency.wrappedValue.getter();
  (*(v26 + 8))(v13, v11);
  sub_1000080F8(v36, v36[3]);
  v27 = swift_allocObject();
  v28 = v32;
  v27[2] = v33;
  v27[3] = a4;
  v27[4] = v28;

  sub_100215214(v17, sub_1001B2984, v27);

  sub_1001B29F8(v17, type metadata accessor for InheritanceInvitationRecord);
  return sub_10000839C(v36);
}

void sub_1001AB8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceInvitationRecord(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAAB8);
    sub_1001B2990(a2, v9, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v13 = 136315650;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v13 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v30);
      *(v13 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_1001B29F8(v9, type metadata accessor for InheritanceInvitationRecord);
      v18 = sub_10021145C(v15, v17, &v30);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2112;
      v19 = _convertErrorToNSError(_:)();
      *(v13 + 24) = v19;
      *v14 = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s - failed to mark Beneficiary %s as accepted (after being not reachable). Error: %@", v13, 0x20u);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      return;
    }

    v28 = v9;
LABEL_16:
    sub_1001B29F8(v28, type metadata accessor for InheritanceInvitationRecord);
    return;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAB8);
  sub_1001B2990(a2, v7, type metadata accessor for InheritanceInvitationRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v21, v22))
  {

    v28 = v7;
    goto LABEL_16;
  }

  v23 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  *v23 = 136315394;
  if (qword_1003D7E28 != -1)
  {
    swift_once();
  }

  *(v23 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v30);
  *(v23 + 12) = 2080;
  type metadata accessor for UUID();
  sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  v26 = v25;
  sub_1001B29F8(v7, type metadata accessor for InheritanceInvitationRecord);
  v27 = sub_10021145C(v24, v26, &v30);

  *(v23 + 14) = v27;
  _os_log_impl(&_mh_execute_header, v21, v22, "%s - successfully marked Beneficiary %s as accepted (after being not reachable).", v23, 0x16u);
  swift_arrayDestroy();
}

uint64_t sub_1001ABE1C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v4);
  v6 = (&v16 - v5);
  sub_100012D04(a1, &v16 - v5, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v11 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v17);
      *(v11 + 12) = 2080;
      v16 = v7;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v12 = String.init<A>(describing:)();
      v14 = sub_10021145C(v12, v13, &v17);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - failed to save invitation. Unable to update status - %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    a2(v7);
  }

  else
  {
    a2(0);
    return sub_100008D3C(v6, &qword_1003E1290, &unk_1003444C0);
  }
}

uint64_t sub_1001AC0E8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = type metadata accessor for InheritanceHealthRecord(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  if ((a2 & 1) == 0)
  {
    if ((a1 & 1) == 0)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100008D04(v37, qword_1003FAAB8);
      sub_1001B2990(a3, v14, type metadata accessor for InheritanceHealthRecord);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v40 = 136315394;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v40 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v47);
        *(v40 + 12) = 2080;
        type metadata accessor for UUID();
        sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        sub_1001B29F8(v14, type metadata accessor for InheritanceHealthRecord);
        v44 = sub_10021145C(v41, v43, &v47);

        *(v40 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "%s - beneficiary %s is NOT shared and accepted", v40, 0x16u);
        swift_arrayDestroy();

        v45 = 0;
      }

      else
      {

        sub_1001B29F8(v14, type metadata accessor for InheritanceHealthRecord);
        v45 = 0;
      }

      return a4(v45);
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAB8);
    sub_1001B2990(a3, v16, type metadata accessor for InheritanceHealthRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v31 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v31 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v47);
      *(v31 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1001B29F8(v16, type metadata accessor for InheritanceHealthRecord);
      v35 = sub_10021145C(v32, v34, &v47);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s - beneficiary %s is shared and accepted", v31, 0x16u);
      swift_arrayDestroy();

      goto LABEL_24;
    }

    v36 = v16;
LABEL_23:
    sub_1001B29F8(v36, type metadata accessor for InheritanceHealthRecord);
LABEL_24:
    v45 = 1;
    return a4(v45);
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAB8);
  sub_1001B2990(a3, v11, type metadata accessor for InheritanceHealthRecord);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  sub_1000A6B60(a1, 1);
  if (!os_log_type_enabled(v18, v19))
  {

    v36 = v11;
    goto LABEL_23;
  }

  v46 = a4;
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v20 = 136315650;
  if (qword_1003D7E28 != -1)
  {
    swift_once();
  }

  *(v20 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v47);
  *(v20 + 12) = 2080;
  type metadata accessor for UUID();
  sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  v24 = v23;
  sub_1001B29F8(v11, type metadata accessor for InheritanceHealthRecord);
  v25 = sub_10021145C(v22, v24, &v47);

  *(v20 + 14) = v25;
  *(v20 + 22) = 2112;
  v26 = _convertErrorToNSError(_:)();
  *(v20 + 24) = v26;
  *v21 = v26;
  _os_log_impl(&_mh_execute_header, v18, v19, "%s - beneficiary %s failed to check if shared and accepted, assuming accepted for now. Error: %@", v20, 0x20u);
  sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);

  swift_arrayDestroy();

  return v46(1);
}

uint64_t sub_1001AC8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_1000A5780;

  return sub_1001B142C(a5);
}

uint64_t sub_1001AC958(const char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v63 = a3;
  v66 = a2;
  v70 = *a5;
  v71 = a5;
  v7 = type metadata accessor for UUID();
  v69 = *(v7 - 8);
  v8 = *(v69 + 64);
  __chkstk_darwin(v7);
  v68 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v64 = *(v9 - 8);
  v65 = v9;
  __chkstk_darwin(v9);
  v61 = &v56 - v10;
  v11 = type metadata accessor for BeneficiaryInfoRecord(0);
  v60 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v62 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v13;
  __chkstk_darwin(v12);
  v15 = &v56 - v14;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAB8);
  sub_1001B2990(a1, v15, type metadata accessor for BeneficiaryInfoRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v19 = os_log_type_enabled(v17, v18);
  v67 = v8;
  v59 = v7;
  if (v19)
  {
    v57 = a4;
    v20 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v20 = 136315394;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v20 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v72);
    *(v20 + 12) = 2080;
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1001B29F8(v15, type metadata accessor for BeneficiaryInfoRecord);
    v24 = sub_10021145C(v21, v23, v72);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s - fetching health record for beneficiaryID: %s", v20, 0x16u);
    swift_arrayDestroy();

    v25 = v57;
  }

  else
  {

    sub_1001B29F8(v15, type metadata accessor for BeneficiaryInfoRecord);
    v25 = a4;
  }

  v26 = swift_allocObject();
  v27 = v71;
  swift_weakInit();
  v28 = a1;
  v56 = a1;
  v29 = a1;
  v30 = v62;
  sub_1001B2990(v29, v62, type metadata accessor for BeneficiaryInfoRecord);
  v31 = (*(v60 + 80) + 48) & ~*(v60 + 80);
  v32 = (v58 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v66;
  v33[2] = v66;
  v33[3] = &off_1003B0F58;
  v33[4] = v63;
  v33[5] = v25;
  sub_1001AF9BC(v30, v33 + v31, type metadata accessor for BeneficiaryInfoRecord);
  v57 = v26;
  *(v33 + v32) = v26;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
  v36 = v64;
  v35 = v65;
  v37 = v61;
  (*(v64 + 16))(v61, v27 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__inheritanceStorage, v65);
  v66 = v34;

  Dependency.wrappedValue.getter();
  (*(v36 + 8))(v37, v35);
  v65 = sub_1000080F8(v72, v72[3]);
  v39 = v68;
  v38 = v69;
  v40 = v59;
  (*(v69 + 16))(v68, v28, v59);
  v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = (v67 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v38 + 32))(v45 + v41, v39, v40);
  v46 = (v45 + v42);
  *v46 = sub_1001AF2C8;
  v46[1] = v33;
  *(v45 + v43) = v71;
  v47 = (v45 + v44);
  v48 = v66;
  *v47 = v66;
  v47[1] = &off_1003B0F58;
  *(v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8)) = v70;
  v49 = v48;

  sub_100214780(v56, sub_1001AF448, v45, v50, v51, v52, v53, v54, v56);

  sub_10000839C(v72);
}

unint64_t sub_1001AD018(uint64_t a1, void *a2)
{
  v28 = type metadata accessor for DaemonAccountStore();
  v29 = &off_1003AB0B8;
  v27[0] = a1;
  v4 = *(*sub_1000080F8(v27, v28) + 16);

  v5 = [v4 aa_primaryAppleAccount];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 aa_altDSID];

    if (v7)
    {
      v8 = [a2 authKitAccountWithAltDSID:v7];

      if (v8)
      {
        v9 = [a2 beneficiaryInfoForAccount:v8];
        if (v9)
        {
          v10 = v9;
          sub_100005814(&unk_1003DABD0, &qword_10033E720);
          v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v12 = sub_1001A4278(v11);

          if (v12)
          {
            if (qword_1003D7F48 != -1)
            {
              swift_once();
            }

            v13 = type metadata accessor for Logger();
            sub_100008D04(v13, qword_1003FAAB8);
            v14 = Logger.logObject.getter();
            v15 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              *v16 = 0;
              _os_log_impl(&_mh_execute_header, v14, v15, "Parsing beneficiaryInfo...", v16, 2u);
            }

            v26 = &_swiftEmptyDictionarySingleton;
            sub_1001A41F0(v12, &v26);

            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              *v19 = 0;
              _os_log_impl(&_mh_execute_header, v17, v18, "Finished parsing beneficiaryInfo...", v19, 2u);
            }

            v20 = v26;
            goto LABEL_19;
          }
        }
      }
    }
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAB8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failure to fetch beneficiaryInfo.", v24, 2u);
  }

  v20 = sub_10030866C(_swiftEmptyArrayStorage);
LABEL_19:
  sub_10000839C(v27);
  return v20;
}

uint64_t sub_1001AD378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = *v2;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = &v36 - v7;
  v8 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = &v36 - v9;
  v38 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v12 = &v36 - v11;
  v13 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAB8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v36 = a1;
    v37 = a2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48[0] = v21;
    *v20 = 136315138;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v20 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v48);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s - started.", v20, 0xCu);
    sub_10000839C(v21);

    a1 = v36;
    a2 = v37;
  }

  else
  {
  }

  (*(v14 + 16))(v16, v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__beneficiaryInfoVerificationProtocol, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v16, v13);
  v22 = v38;
  (*(v10 + 16))(v12, v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__accountStore, v38);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v12, v22);
  v23 = v39;
  v24 = v40;
  v25 = v41;
  (*(v40 + 16))(v39, v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__akAccountManager, v41);
  Dependency.wrappedValue.getter();
  (*(v24 + 8))(v23, v25);
  v26 = v46;
  v27 = sub_1000080F8(v47, v47[3]);
  v28 = sub_1001AD018(*v27, v26);

  sub_10000839C(v47);
  *(v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData) = v28;

  sub_10000839C(v48);
  v29 = v42;
  v30 = v43;
  v31 = v44;
  (*(v43 + 16))(v42, v3 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__inheritanceStorage, v44);
  Dependency.wrappedValue.getter();
  (*(v30 + 8))(v29, v31);
  sub_1000080F8(v48, v48[3]);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = a1;
  v34 = v45;
  v33[4] = a2;
  v33[5] = v34;

  sub_100216650(sub_1001AD9DC, v33);

  return sub_10000839C(v48);
}

uint64_t sub_1001AD964()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001AD99C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001AD9EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001ADB24, 0, 0);
}

uint64_t sub_1001ADB24()
{
  v27 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  v0[14] = sub_100008D04(v4, qword_1003FAA58);
  sub_1001B2990(v3, v2, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1001B2990(v3, v1, type metadata accessor for CustodianRecoveryInfoRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  v9 = v0[13];
  if (v7)
  {
    v25 = v6;
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v13 = 136315394;
    (*(v11 + 16))(v10, v9, v12);
    sub_1001B29F8(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_10021145C(v14, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    sub_1001B29F8(v8, type metadata accessor for CustodianRecoveryInfoRecord);
    v21 = sub_10021145C(v18, v20, &v26);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v25, "Checking if the record is shared and accepted, recordID: %s, zoneName: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1001B29F8(v0[13], type metadata accessor for CustodianRecoveryInfoRecord);

    sub_1001B29F8(v8, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_1001ADE74;
  v23 = v0[2];

  return sub_1001326E8(v23);
}

uint64_t sub_1001ADE74(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_1001AE020, 0, 0);
  }
}

uint64_t sub_1001AE020()
{
  v79 = v0;
  v1 = v0[16];
  if (v1)
  {
    sub_1001B2990(v0[2], v0[11], type metadata accessor for CustodianRecoveryInfoRecord);
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[11];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v78 = v9;
      *v7 = 138412546;
      v10 = [v2 recordID];
      *(v7 + 4) = v10;
      *v8 = v10;
      *(v7 + 12) = 2080;
      v11 = UUID.uuidString.getter();
      v13 = v12;
      sub_1001B29F8(v6, type metadata accessor for CustodianRecoveryInfoRecord);
      v14 = sub_10021145C(v11, v13, &v78);

      *(v7 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Existing CKShare found, recordID: %@, zoneName: %s", v7, 0x16u);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v9);
    }

    else
    {

      sub_1001B29F8(v6, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v35 = v0[8];
    v36 = v0[2];
    v76 = v2;
    v37 = [v2 participants];
    sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B2990(v36, v35, type metadata accessor for CustodianRecoveryInfoRecord);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v41 = v38 >> 62;
    if (os_log_type_enabled(v39, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v78 = v43;
      *v42 = 134218242;
      if (v41)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v44 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v0[8];
      *(v42 + 4) = v44;

      *(v42 + 12) = 2080;
      v46 = UUID.uuidString.getter();
      v48 = v47;
      sub_1001B29F8(v45, type metadata accessor for CustodianRecoveryInfoRecord);
      v49 = sub_10021145C(v46, v48, &v78);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "Found %ld participant(s) for zone %s", v42, 0x16u);
      sub_10000839C(v43);
    }

    else
    {
      v50 = v0[8];

      sub_1001B29F8(v50, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    if (v41)
    {
      goto LABEL_31;
    }

    for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v74 = v0;
      v52 = 0;
      v0 = &selRef_setPath_;
      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v52 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v53 = *(v38 + 8 * v52 + 32);
        }

        v54 = v53;
        v55 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if ([v53 isCurrentUser])
        {
        }

        else
        {
          v56 = [v54 acceptanceStatus];

          if (v56 == 2)
          {
            v34 = 1;
LABEL_28:
            v0 = v74;
            goto LABEL_33;
          }
        }

        ++v52;
        if (v55 == i)
        {
          v34 = 0;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v34 = 0;
LABEL_33:
    v57 = v0[7];
    v58 = v0[2];

    sub_1001B2990(v58, v57, type metadata accessor for CustodianRecoveryInfoRecord);
    v59 = v76;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();

    v62 = os_log_type_enabled(v60, v61);
    v63 = v0[7];
    if (v62)
    {
      v64 = swift_slowAlloc();
      v77 = v34;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v78 = v66;
      *v64 = 138412546;
      v67 = [v59 recordID];
      *(v64 + 4) = v67;
      *v65 = v67;
      *(v64 + 12) = 2080;
      v68 = UUID.uuidString.getter();
      v70 = v69;
      sub_1001B29F8(v63, type metadata accessor for CustodianRecoveryInfoRecord);
      v71 = sub_10021145C(v68, v70, &v78);

      *(v64 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v60, v61, "CKShare accepted for recordID: %@, zoneName: %s", v64, 0x16u);
      sub_100008D3C(v65, &unk_1003D9140, &qword_10033E640);
      v34 = v77;

      sub_10000839C(v66);
    }

    else
    {

      sub_1001B29F8(v63, type metadata accessor for CustodianRecoveryInfoRecord);
    }
  }

  else
  {
    v15 = v0[9];
    v16 = v0[2];
    sub_1001B2990(v16, v0[10], type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1001B2990(v16, v15, type metadata accessor for CustodianRecoveryInfoRecord);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[9];
    v21 = v0[10];
    if (v19)
    {
      v75 = v18;
      v23 = v0[4];
      v22 = v0[5];
      v24 = v0[3];
      v25 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v25 = 136315394;
      (*(v23 + 2))(v22, v21, v24);
      sub_1001B29F8(v21, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v23 + 1))(v22, v24);
      v29 = sub_10021145C(v26, v28, &v78);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = UUID.uuidString.getter();
      v32 = v31;
      sub_1001B29F8(v20, type metadata accessor for CustodianRecoveryInfoRecord);
      v33 = sub_10021145C(v30, v32, &v78);

      *(v25 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v17, v75, "CKShare not found for recordID: %s, zoneName: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001B29F8(v0[10], type metadata accessor for CustodianRecoveryInfoRecord);

      sub_1001B29F8(v20, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v34 = 0;
  }

  v72 = v0[1];

  return (v72)(v34);
}

void sub_1001AE97C(char a1, void *a2, uint64_t a3)
{
  *(a3 + qword_1003E3FC0) = a1;
  v5 = qword_1003E3FB8;
  v6 = *(a3 + qword_1003E3FB8);
  *(a3 + qword_1003E3FB8) = a2;

  v7 = qword_1003D7F48;
  v8 = a2;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAB8);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v11 = 136315394;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v11 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v17);
    *(v11 + 12) = 2112;
    v14 = *(a3 + v5);
    *(v11 + 14) = v14;
    *v12 = v14;
    v15 = v14;
    _os_log_impl(&_mh_execute_header, oslog, v10, "%s: claimCodeVerificationError appended to the event\n%@", v11, 0x16u);
    sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v13);
  }
}

uint64_t sub_1001AEB84(uint64_t a1, uint64_t a2)
{
  if (a2 >= a1)
  {
    if (a1 >= a2)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100008D04(v10, qword_1003FAAB8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_15;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "idMS has EQUAL number of beneficiaries registered.";
    }

    else
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100008D04(v9, qword_1003FAAB8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_15;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "idMS has LESS number of beneficiaries registered.";
    }

    goto LABEL_14;
  }

  if (qword_1003D7F48 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAB8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "idMS has MORE number of beneficiaries registered.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);
    }

LABEL_15:

    result = a1 - a2;
    if (!__OFSUB__(a1, a2))
    {
      break;
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  return result;
}

uint64_t sub_1001AED9C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001AEDD4()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001AEE14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001AEE2C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v10 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = (((v10 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1001AF020(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1001A56AC(a1, v1 + v4, v6, v7);
}

uint64_t sub_1001AF0D4()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001AF2C8(void *a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = *(v1 + v5);
  v11 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001A6374(a1, v6, v7, v8, v9, v1 + v4, v10, v11);
}

uint64_t sub_1001AF378()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001AF448(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);

  return sub_1001A7794(a1, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_1001AF510(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AF580()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v14 = *(*(v1 - 1) + 80);
  v2 = (v14 + 16) & ~v14;
  v13 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for InheritanceInvitationRecord(0);
  v4 = *(*(v3 - 8) + 80);
  v12 = *(*(v3 - 8) + 64);
  v15 = v0;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v5 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v7 + 48))(v5 + v9, 1, v6))
  {
    v8(v5 + v9, v6);
  }

  v10 = (v4 + ((((((v13 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4;

  swift_unknownObjectRelease();

  v8(v15 + v10, v6);

  v8(v15 + v10 + *(v3 + 36), v6);
  sub_100012324(*(v15 + v10 + *(v3 + 40)), *(v15 + v10 + *(v3 + 40) + 8));

  return _swift_deallocObject(v15, ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001AF884(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for InheritanceInvitationRecord(0) - 8);
  return sub_1001A6F2C(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), v1 + ((*(v7 + 80) + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v7 + 80)));
}

uint64_t sub_1001AF9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AFA24()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v22 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for InheritanceInvitationRecord(0);
  v18 = *(*(v2 - 8) + 80);
  v17 = *(*(v2 - 8) + 64);
  v23 = type metadata accessor for InheritanceHealthRecord(0);
  v3 = *(*(v23 - 8) + 80);
  v16 = *(*(v23 - 8) + 64);
  swift_unknownObjectRelease();

  v20 = (v22 + 40) & ~v22;
  v4 = v0 + v20;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v20, v5);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v0 + v20 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v8 = v1[11];
  if (!(*(v6 + 48))(v0 + v20 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  v9 = (v20 + v19 + v18) & ~v18;
  v10 = (v9 + v17 + v3) & ~v3;
  v21 = (((v16 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v7(v0 + v9, v5);

  v7(v0 + v9 + *(v2 + 36), v5);
  sub_100012324(*(v0 + v9 + *(v2 + 40)), *(v0 + v9 + *(v2 + 40) + 8));
  v11 = v0 + v10;
  v7(v0 + v10, v5);
  v12 = v23;
  v13 = *(v23 + 20);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  sub_100012324(*(v11 + *(v12 + 24)), *(v11 + *(v12 + 24) + 8));
  v7(v11 + *(v23 + 28), v5);
  sub_100012324(*(v11 + *(v12 + 32)), *(v11 + *(v12 + 32) + 8));

  return _swift_deallocObject(v0, v21 + 8);
}

uint64_t sub_1001AFE10(char a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for InheritanceHealthRecord(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001A908C(a1, v1[2], v1[3], v1[4], v1 + v4, v1 + v7, v1 + v10, *(v1 + v11), *(v1 + v11 + 8));
}

uint64_t sub_1001AFF8C()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001B0110(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for InheritanceHealthRecord(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001AC0E8(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_1001B01CC()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001B0358(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for InheritanceHealthRecord(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000082A8;

  return sub_1001AC8AC(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_1001B049C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for CustodianHealthRecord(0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001B05D4, 0, 0);
}

uint64_t sub_1001B05D4()
{
  v27 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  v0[14] = sub_100008D04(v4, qword_1003FAA58);
  sub_1001B2990(v3, v2, type metadata accessor for CustodianHealthRecord);
  sub_1001B2990(v3, v1, type metadata accessor for CustodianHealthRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  v9 = v0[13];
  if (v7)
  {
    v25 = v6;
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v13 = 136315394;
    (*(v11 + 16))(v10, v9, v12);
    sub_1001B29F8(v9, type metadata accessor for CustodianHealthRecord);
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_10021145C(v14, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    sub_1001B29F8(v8, type metadata accessor for CustodianHealthRecord);
    v21 = sub_10021145C(v18, v20, &v26);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v25, "Checking if the record is shared and accepted, recordID: %s, zoneName: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1001B29F8(v0[13], type metadata accessor for CustodianHealthRecord);

    sub_1001B29F8(v8, type metadata accessor for CustodianHealthRecord);
  }

  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_1001B0924;
  v23 = v0[2];

  return sub_10013A698(v23);
}

uint64_t sub_1001B0924(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_1001B0AD0, 0, 0);
  }
}

uint64_t sub_1001B0AD0()
{
  v79 = v0;
  v1 = v0[16];
  if (v1)
  {
    sub_1001B2990(v0[2], v0[11], type metadata accessor for CustodianHealthRecord);
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[11];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v78 = v9;
      *v7 = 138412546;
      v10 = [v2 recordID];
      *(v7 + 4) = v10;
      *v8 = v10;
      *(v7 + 12) = 2080;
      v11 = UUID.uuidString.getter();
      v13 = v12;
      sub_1001B29F8(v6, type metadata accessor for CustodianHealthRecord);
      v14 = sub_10021145C(v11, v13, &v78);

      *(v7 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Existing CKShare found, recordID: %@, zoneName: %s", v7, 0x16u);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v9);
    }

    else
    {

      sub_1001B29F8(v6, type metadata accessor for CustodianHealthRecord);
    }

    v35 = v0[8];
    v36 = v0[2];
    v76 = v2;
    v37 = [v2 participants];
    sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B2990(v36, v35, type metadata accessor for CustodianHealthRecord);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v41 = v38 >> 62;
    if (os_log_type_enabled(v39, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v78 = v43;
      *v42 = 134218242;
      if (v41)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v44 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v0[8];
      *(v42 + 4) = v44;

      *(v42 + 12) = 2080;
      v46 = UUID.uuidString.getter();
      v48 = v47;
      sub_1001B29F8(v45, type metadata accessor for CustodianHealthRecord);
      v49 = sub_10021145C(v46, v48, &v78);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v39, v40, "Found %ld participant(s) for zone %s", v42, 0x16u);
      sub_10000839C(v43);
    }

    else
    {
      v50 = v0[8];

      sub_1001B29F8(v50, type metadata accessor for CustodianHealthRecord);
    }

    if (v41)
    {
      goto LABEL_31;
    }

    for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v74 = v0;
      v52 = 0;
      v0 = &selRef_setPath_;
      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v52 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v53 = *(v38 + 8 * v52 + 32);
        }

        v54 = v53;
        v55 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if ([v53 isCurrentUser])
        {
        }

        else
        {
          v56 = [v54 acceptanceStatus];

          if (v56 == 2)
          {
            v34 = 1;
LABEL_28:
            v0 = v74;
            goto LABEL_33;
          }
        }

        ++v52;
        if (v55 == i)
        {
          v34 = 0;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v34 = 0;
LABEL_33:
    v57 = v0[7];
    v58 = v0[2];

    sub_1001B2990(v58, v57, type metadata accessor for CustodianHealthRecord);
    v59 = v76;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();

    v62 = os_log_type_enabled(v60, v61);
    v63 = v0[7];
    if (v62)
    {
      v64 = swift_slowAlloc();
      v77 = v34;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v78 = v66;
      *v64 = 138412546;
      v67 = [v59 recordID];
      *(v64 + 4) = v67;
      *v65 = v67;
      *(v64 + 12) = 2080;
      v68 = UUID.uuidString.getter();
      v70 = v69;
      sub_1001B29F8(v63, type metadata accessor for CustodianHealthRecord);
      v71 = sub_10021145C(v68, v70, &v78);

      *(v64 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v60, v61, "CKShare accepted for recordID: %@, zoneName: %s", v64, 0x16u);
      sub_100008D3C(v65, &unk_1003D9140, &qword_10033E640);
      v34 = v77;

      sub_10000839C(v66);
    }

    else
    {

      sub_1001B29F8(v63, type metadata accessor for CustodianHealthRecord);
    }
  }

  else
  {
    v15 = v0[9];
    v16 = v0[2];
    sub_1001B2990(v16, v0[10], type metadata accessor for CustodianHealthRecord);
    sub_1001B2990(v16, v15, type metadata accessor for CustodianHealthRecord);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[9];
    v21 = v0[10];
    if (v19)
    {
      v75 = v18;
      v23 = v0[4];
      v22 = v0[5];
      v24 = v0[3];
      v25 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v25 = 136315394;
      (*(v23 + 2))(v22, v21, v24);
      sub_1001B29F8(v21, type metadata accessor for CustodianHealthRecord);
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v23 + 1))(v22, v24);
      v29 = sub_10021145C(v26, v28, &v78);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = UUID.uuidString.getter();
      v32 = v31;
      sub_1001B29F8(v20, type metadata accessor for CustodianHealthRecord);
      v33 = sub_10021145C(v30, v32, &v78);

      *(v25 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v17, v75, "CKShare not found for recordID: %s, zoneName: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001B29F8(v0[10], type metadata accessor for CustodianHealthRecord);

      sub_1001B29F8(v20, type metadata accessor for CustodianHealthRecord);
    }

    v34 = 0;
  }

  v72 = v0[1];

  return (v72)(v34);
}

uint64_t sub_1001B142C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for InheritanceHealthRecord(0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001B1564, 0, 0);
}

uint64_t sub_1001B1564()
{
  v28 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  v0[14] = sub_100008D04(v4, qword_1003FAA58);
  sub_1001B2990(v3, v2, type metadata accessor for InheritanceHealthRecord);
  sub_1001B2990(v3, v1, type metadata accessor for InheritanceHealthRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  v9 = v0[13];
  if (v7)
  {
    v26 = v6;
    v10 = v0[5];
    v11 = v0[6];
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136315394;
    (*(v12 + 16))(v10, v9 + *(v11 + 28), v13);
    sub_1001B29F8(v9, type metadata accessor for InheritanceHealthRecord);
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_10021145C(v15, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    sub_1001B29F8(v8, type metadata accessor for InheritanceHealthRecord);
    v22 = sub_10021145C(v19, v21, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v5, v26, "Checking if the record is shared and accepted, recordID: %s, zoneName: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1001B29F8(v0[13], type metadata accessor for InheritanceHealthRecord);

    sub_1001B29F8(v8, type metadata accessor for InheritanceHealthRecord);
  }

  v23 = swift_task_alloc();
  v0[15] = v23;
  *v23 = v0;
  v23[1] = sub_1001B18A8;
  v24 = v0[2];

  return sub_10013A278(v24);
}

uint64_t sub_1001B18A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_1001B1A54, 0, 0);
  }
}

uint64_t sub_1001B1A54()
{
  v80 = v0;
  v1 = v0[16];
  if (v1)
  {
    sub_1001B2990(v0[2], v0[11], type metadata accessor for InheritanceHealthRecord);
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[11];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v79 = v9;
      *v7 = 138412546;
      v10 = [v2 recordID];
      *(v7 + 4) = v10;
      *v8 = v10;
      *(v7 + 12) = 2080;
      v11 = UUID.uuidString.getter();
      v13 = v12;
      sub_1001B29F8(v6, type metadata accessor for InheritanceHealthRecord);
      v0 = v78;
      v14 = sub_10021145C(v11, v13, &v79);

      *(v7 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Existing CKShare found, recordID: %@, zoneName: %s", v7, 0x16u);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v9);
    }

    else
    {

      sub_1001B29F8(v6, type metadata accessor for InheritanceHealthRecord);
    }

    v36 = v0[8];
    v37 = v0[2];
    v77 = v2;
    v38 = [v2 participants];
    sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B2990(v37, v36, type metadata accessor for InheritanceHealthRecord);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    v42 = v39 >> 62;
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v79 = v44;
      *v43 = 134218242;
      if (v42)
      {
        v45 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v45 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46 = v0[8];
      *(v43 + 4) = v45;

      *(v43 + 12) = 2080;
      v47 = UUID.uuidString.getter();
      v49 = v48;
      sub_1001B29F8(v46, type metadata accessor for InheritanceHealthRecord);
      v0 = v78;
      v50 = sub_10021145C(v47, v49, &v79);

      *(v43 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "Found %ld participant(s) for zone %s", v43, 0x16u);
      sub_10000839C(v44);
    }

    else
    {
      v51 = v0[8];

      sub_1001B29F8(v51, type metadata accessor for InheritanceHealthRecord);
    }

    if (v42)
    {
      goto LABEL_31;
    }

    for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v53 = 0;
      v0 = &selRef_setPath_;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v53 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v54 = *(v39 + 8 * v53 + 32);
        }

        v55 = v54;
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if ([v54 isCurrentUser])
        {
        }

        else
        {
          v57 = [v55 acceptanceStatus];

          if (v57 == 2)
          {
            v35 = 1;
LABEL_28:
            v0 = v78;
            goto LABEL_33;
          }
        }

        ++v53;
        if (v56 == i)
        {
          v35 = 0;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v35 = 0;
LABEL_33:
    v58 = v0[7];
    v59 = v0[2];

    sub_1001B2990(v59, v58, type metadata accessor for InheritanceHealthRecord);
    v60 = v77;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v0[7];
    if (v63)
    {
      v65 = swift_slowAlloc();
      v66 = v35;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v79 = v68;
      *v65 = 138412546;
      v69 = [v60 recordID];
      *(v65 + 4) = v69;
      *v67 = v69;
      *(v65 + 12) = 2080;
      v70 = UUID.uuidString.getter();
      v72 = v71;
      sub_1001B29F8(v64, type metadata accessor for InheritanceHealthRecord);
      v73 = sub_10021145C(v70, v72, &v79);

      *(v65 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v61, v62, "CKShare accepted for recordID: %@, zoneName: %s", v65, 0x16u);
      sub_100008D3C(v67, &unk_1003D9140, &qword_10033E640);
      v35 = v66;
      v0 = v78;

      sub_10000839C(v68);
    }

    else
    {

      sub_1001B29F8(v64, type metadata accessor for InheritanceHealthRecord);
    }
  }

  else
  {
    v15 = v0[9];
    v16 = v0[2];
    sub_1001B2990(v16, v0[10], type metadata accessor for InheritanceHealthRecord);
    sub_1001B2990(v16, v15, type metadata accessor for InheritanceHealthRecord);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[9];
    v21 = v0[10];
    if (v19)
    {
      v76 = v18;
      v22 = v0[5];
      v23 = v0[6];
      v25 = v0[3];
      v24 = v0[4];
      v26 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v26 = 136315394;
      (*(v24 + 2))(v22, v21 + *(v23 + 7), v25);
      sub_1001B29F8(v21, type metadata accessor for InheritanceHealthRecord);
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v24 + 1))(v22, v25);
      v30 = sub_10021145C(v27, v29, &v79);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = UUID.uuidString.getter();
      v33 = v32;
      v0 = v78;
      sub_1001B29F8(v20, type metadata accessor for InheritanceHealthRecord);
      v34 = sub_10021145C(v31, v33, &v79);

      *(v26 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v17, v76, "CKShare not found for recordID: %s, zoneName: %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001B29F8(v0[10], type metadata accessor for InheritanceHealthRecord);

      sub_1001B29F8(v20, type metadata accessor for InheritanceHealthRecord);
    }

    v35 = 0;
  }

  v74 = v0[1];

  return (v74)(v35);
}

uint64_t sub_1001B2390()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = (((*(*v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);

  v9(v7 + v1[11], v8);
  sub_100012324(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  v10 = v0 + v5;
  v9(v0 + v5, v8);
  v11 = v4[7];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v0 + v5 + v11, v12);
  sub_100012324(*(v10 + v4[8]), *(v10 + v4[8] + 8));
  v9(v0 + v5 + v4[9], v8);
  sub_100012324(*(v10 + v4[10]), *(v10 + v4[10] + 8));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v6 + 16);
}

uint64_t sub_1001B2604(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for InheritanceHealthRecord(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = (v1 + v8);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v9);
  v15 = *(v1 + v9 + 8);

  return sub_1001AAAB0(a1, v10, v1 + v4, v1 + v7, v12, v13, v14, v15);
}

uint64_t sub_1001B271C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B2764()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[11], v5);
  sub_100012324(*(v4 + v1[12]), *(v4 + v1[12] + 8));

  return _swift_deallocObject(v0, v3 + 8);
}

void sub_1001B28B0(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1001AB8A8(a1, v4);
}

uint64_t sub_1001B294C()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001B2990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B29F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001B2A58(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v33 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_100005814(&unk_1003E1650, &unk_1003447C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  if (a2)
  {
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAB30);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = a5;
      v21 = v20;
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to fetch invitations %@", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);

      a5 = v32;
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Continuing with preflight....", v26, 2u);
    }

    v27 = v33;
    (*(v33 + 16))(v12, a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceStorage, v10);
    Dependency.wrappedValue.getter();
    (*(v27 + 8))(v12, v10);
    sub_1000080F8(v34, v35);
    v28 = swift_allocObject();
    v28[2] = a3;
    v28[3] = a4;
    v28[4] = a5;

    sub_100216650(sub_1001BC0CC, v28);
  }

  else
  {
    (*(v14 + 16))(v16, a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceRecordCleaner, v13);
    Dependency.wrappedValue.getter();
    (*(v14 + 8))(v16, v13);
    v29 = *sub_1000080F8(v34, v35);

    sub_1001C4714(a1, v29, a3, a4, a5);
  }

  return sub_10000839C(v34);
}

uint64_t sub_1001B2EA8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    return sub_1001B30A4(a1, a4, a5);
  }

  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAB30);

  sub_1000BCBF4(a1, 1);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  sub_1000399DC(a1, 1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v16);
    *(v11 + 12) = 2112;
    v14 = _convertErrorToNSError(_:)();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s - error fetching inheritance records: %@", v11, 0x16u);
    sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v13);
  }

  return a4(a1);
}

uint64_t sub_1001B30A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = type metadata accessor for BeneficiaryInfoRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100308AA8(_swiftEmptyArrayStorage);
  v14 = sub_1001B3E30(a1);
  v15 = *(a1 + 16);
  if (v15)
  {
    v31 = a3;
    v16 = *(v3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_queue);
    v17 = *(v7 + 80);
    v18 = a1 + ((v17 + 32) & ~v17);
    v19 = *(v7 + 72);
    v36 = v17;
    v37 = v16;
    v34 = (v17 + 24) & ~v17;
    v35 = v19;
    v33 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      sub_100168334(v18, v12);
      sub_100168334(v12, v10);
      v21 = swift_allocObject();
      *(v21 + 16) = v3;
      sub_1001BC960(v10, v21 + v34);
      *(v21 + v33) = v14;
      *(v21 + v20) = v13;
      v22 = type metadata accessor for AsyncOperation();
      v23 = objc_allocWithZone(v22);
      v23[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
      v24 = &v23[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
      *v24 = sub_1001BC9C4;
      v24[1] = v21;
      v39.receiver = v23;
      v39.super_class = v22;

      v25 = objc_msgSendSuper2(&v39, "init");
      [v37 addOperation:v25];

      sub_1001BCA80(v12);
      v18 += v35;
      --v15;
    }

    while (v15);

    a3 = v31;
  }

  else
  {
  }

  v26 = *(v3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_queue);
  v27 = swift_allocObject();
  v27[2] = v13;
  v27[3] = v3;
  v27[4] = v32;
  v27[5] = a3;
  aBlock[4] = sub_1001BCB24;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AD0A8;
  v28 = _Block_copy(aBlock);

  [v26 addBarrierBlock:v28];
  _Block_release(v28);
}

uint64_t sub_1001B33F0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceStorage;
  v2 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController;
  v4 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__urlBagProvider;
  v6 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
  v8 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceRecordCleaner;
  v10 = sub_100005814(&unk_1003E1650, &unk_1003447C0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__followUpController;
  v12 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__cdpController;
  v14 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore;
  v16 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager;
  v18 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__keychainManager;
  v20 = sub_100005814(&qword_1003E1670, &qword_1003447F0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1001B373C()
{
  sub_1001B33F0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritancePreflightHealthCheck(uint64_t a1)
{
  result = qword_1003E1330;
  if (!qword_1003E1330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B37E8(uint64_t a1)
{
  sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003E1170, &unk_1003E0210, &qword_100343D90);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &qword_1003DB6F0, &qword_1003D7FD0, &unk_10033FB30);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &qword_1003E1190, &unk_1003E1198, &qword_100344650);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &unk_1003E1340, &unk_1003E03C0, &unk_100343DA0);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
              if (v7 <= 0x3F)
              {
                sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
                if (v8 <= 0x3F)
                {
                  sub_10000DA14(319);
                  if (v9 <= 0x3F)
                  {
                    sub_10000DAB8(319, qword_1003E1350, &qword_1003E0400, &qword_100344870);
                    if (v10 <= 0x3F)
                    {
                      swift_updateClassMetadata2();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001B3BB4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName);

  return v1;
}

uint64_t sub_1001B3C2C(void x0_0, void x1_0, uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = sub_100005814(a1, a2);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, *v4 + *a3, v6);
  Dependency.wrappedValue.getter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001B3D2C()
{
  v1 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - v3;
  (*(v2 + 16))(v6 - v3, *v0 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[1];
}

void *sub_1001B3E30(uint64_t a1)
{
  v3 = sub_100005814(&qword_1003E1670, &qword_1003447F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  (*(v4 + 16))(&v29 - v5, v1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__keychainManager, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v7 = v32;
  v8 = v33;
  sub_1000080F8(v31, v32);
  v9 = [objc_allocWithZone(AAFKeychainItemDescriptor) init];
  [v9 setItemClass:3];
  [v9 setUseDataProtection:2];
  v10 = String._bridgeToObjectiveC()();
  [v9 setAccessGroup:v10];

  v11 = (*(v8 + 16))(v9, v7, v8);
  sub_10000839C(v31);
  if (v11 && (v12 = [v11 value]) != 0)
  {
    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v30 = 0;
    sub_100016034(0, &qword_1003E1678, NSKeyedUnarchiver_ptr);
    sub_100005814(&unk_1003E1680, &qword_1003447F8);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10033E5C0;
    *(v17 + 32) = sub_100016034(0, &qword_1003D9250, NSString_ptr);
    *(v17 + 40) = sub_100016034(0, &unk_1003E1690, NSDictionary_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (v32)
    {
      if (swift_dynamicCast())
      {
        v24 = v29;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      sub_100008D3C(v31, &qword_1003D87C8, qword_100344800);
      v24 = 0;
    }

    v30 = v24;
    v22 = &_swiftEmptyDictionarySingleton;
    v31[0] = &_swiftEmptyDictionarySingleton;
    v25 = *(a1 + 16);
    if (v25)
    {
      v26 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
      v27 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v28 = *(v26 + 72);
      do
      {
        sub_1001B96D4(v27, &v30, v31);
        v27 += v28;
        --v25;
      }

      while (v25);
      v22 = v31[0];
    }

    sub_100012324(v14, v16);
  }

  else
  {
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAB30);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Wrapped key data is nil.", v21, 2u);
    }

    v22 = sub_10030950C(_swiftEmptyArrayStorage);
  }

  return v22;
}

uint64_t sub_1001B467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v36 = a2;
  v34 = a1;
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for BeneficiaryInfoRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAB30);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a5;
    v19 = a4;
    v20 = v18;
    v21 = swift_slowAlloc();
    v37 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v37);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s - Creating analytics event.", v20, 0xCu);
    sub_10000839C(v21);

    a4 = v19;
    a5 = v33;
  }

  sub_100168334(a4, &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  sub_1001BC960(&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v22);
  *(v25 + v23) = a5;
  v26 = v34;
  *(v25 + v24) = v35;
  v27 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v36;
  *v27 = v26;
  v27[1] = v28;
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a3;
  v30[5] = sub_1001BCD50;
  v30[6] = v25;
  swift_retain_n();

  sub_1000BCD5C(0, 0, v11, &unk_1003447D8, v30);
}

uint64_t sub_1001B49EC(int *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v60 = a5;
  v15 = type metadata accessor for BeneficiaryInfoRecord(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v18 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v54 - v20;
  if ((a2 & 1) == 0)
  {
    v54 = v19;
    v55 = a6;
    v58 = a7;
    v59 = a8;
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAB30);
    sub_100168334(a4, v21);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    v34 = os_log_type_enabled(v32, v33);
    v56 = a3;
    v57 = a1;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v61);
      *(v35 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      sub_1001BCA80(v21);
      v39 = sub_10021145C(v36, v38, &v61);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s - Event created. Starting Preflight for %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001BCA80(v21);
    }

    v40 = UUID.uuidString.getter();
    v43 = v59;
    v42 = v60;
    v44 = v58;
    if (*(v60 + 16))
    {
      v45 = sub_1003084DC(v40, v41);
      v47 = v46;

      if (v47)
      {
        v48 = (*(v42 + 56) + 16 * v45);
        v49 = *v48;
        v50 = v48[1];
        sub_100015D6C(*v48, v50);
LABEL_17:
        sub_100168334(a4, v18);
        v51 = (*(v54 + 80) + 24) & ~*(v54 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = v55;
        sub_1001BC960(v18, v52 + v51);
        v53 = (v52 + ((v16 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v53 = v44;
        v53[1] = v43;

        sub_1001B523C(a4, v49, v50, v57, sub_1001BD114, v52);
        sub_100015D58(v49, v50);
      }
    }

    else
    {
    }

    v49 = 0;
    v50 = 0xF000000000000000;
    goto LABEL_17;
  }

  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAB30);
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v23;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "Preflight event creation failed with error: %@", v26, 0xCu);
    sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
  }

  return a7();
}

uint64_t sub_1001B4EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    v6 = a1;
    v7 = (a2 + 16);
    swift_errorRetain();
    v8 = _convertErrorToNSError(_:)();
    v9 = [v8 aa_partialErrorsByName];

    if (v9)
    {
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v10 + 16))
      {
        __chkstk_darwin(v11);
        v23[2] = v7;
        v23[3] = a3;
        sub_10001CF50(sub_1001BDFC4, v23, v10);

        return a4(a1, a2, a3);
      }
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    v12 = (a3 + *(type metadata accessor for BeneficiaryInfoRecord(0) + 20));
    v13 = v12[1];
    if (v13)
    {
      v14 = *v12;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v12[1];
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16._countAndFlagsBits = v14;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 58;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v18);

    v19 = v25;
    v20 = v26;
    swift_beginAccess();
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v7;
    *v7 = 0x8000000000000000;
    sub_1002CEFC4(v6, v19, v20, isUniquelyReferenced_nonNull_native);

    *v7 = v24;
    swift_endAccess();
  }

  return a4(a1, a2, a3);
}

uint64_t sub_1001B50F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = (a3 + *(type metadata accessor for BeneficiaryInfoRecord(0) + 20));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v7[1];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11._countAndFlagsBits = v9;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 58;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 59;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v4;
  v15._object = v5;
  String.append(_:)(v15);
  swift_beginAccess();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *a2;
  *a2 = 0x8000000000000000;
  sub_1002CEFC4(v6, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);

  *a2 = v18;
  return swift_endAccess();
}

uint64_t sub_1001B523C(uint64_t a1, uint64_t a2, unint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v194 = a6;
  v190 = a5;
  v186 = a4;
  v191 = a3;
  v180 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v168 - v10;
  v177 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v175 = &v168 - v11;
  v183 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v168 - v12;
  v192 = type metadata accessor for BeneficiaryInfoRecord(0);
  v169 = *(v192 - 1);
  v13 = __chkstk_darwin(v192);
  v15 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v14;
  __chkstk_darwin(v13);
  v171 = &v168 - v16;
  v189 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v187 = &v168 - v17;
  v173 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v184 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = &v168 - v18;
  v19 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v19 - 8);
  v21 = &v168 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_100008D04(v26, qword_1003FAB30);

  v185 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v193 = a1;
  v174 = a2;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v199[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_10021145C(*(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v199);
    _os_log_impl(&_mh_execute_header, v28, v29, "%s - Starting Preflight!", v31, 0xCu);
    sub_10000839C(v32);
    a1 = v193;
  }

  v33 = (a1 + v192[7]);
  v34 = *v33;
  v35 = v33[1];
  sub_100015D6C(*v33, v35);
  sub_1001E92AC(v34, v35, v199);
  if (v199[3])
  {
    if (v191 >> 60 == 15)
    {
      sub_100168334(a1, v15);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        aBlock[0] = v39;
        *v38 = 136315138;
        v40 = sub_1001E6794();
        v42 = v41;
        sub_1001BCA80(v15);
        v43 = sub_10021145C(v40, v42, aBlock);

        *(v38 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "Wrapped key is nil for beneficiary: %s", v38, 0xCu);
        sub_10000839C(v39);
      }

      else
      {

        sub_1001BCA80(v15);
      }

      type metadata accessor for InheritanceError(0);
      v197 = 2105;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001BD1B8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v84 = aBlock[0];
      swift_retain_n();
      v85 = v186;
      swift_retain_n();
      v192 = v84;
      v86 = v84;
      v87 = v85;
      v186 = v86;
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v191 = v87;
      [v87 setObject:isa forKeyedSubscript:kAAFDidSucceed];

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        aBlock[0] = v92;
        *v91 = 136315138;
        *(v91 + 4) = sub_10021145C(*(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
        _os_log_impl(&_mh_execute_header, v89, v90, "%s - Verifying claim code", v91, 0xCu);
        sub_10000839C(v92);
      }

      v93 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
      v94 = v182;
      v185 = v182[2];
      v95 = v181;
      v96 = v183;
      v185(v181, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol, v183);
      Dependency.wrappedValue.getter();
      v97 = v94[1];
      v97(v95, v96);
      v98 = v176;
      v99 = v175;
      v100 = v177;
      (*(v176 + 16))(v175, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore, v177);
      Dependency.wrappedValue.getter();
      (*(v98 + 8))(v99, v100);
      v101 = v179;
      v102 = v178;
      v103 = v180;
      (*(v179 + 16))(v178, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v180);
      Dependency.wrappedValue.getter();
      (*(v101 + 8))(v102, v103);
      v104 = v196;
      v105 = sub_1000080F8(&v197, v198);
      v106 = sub_1001AD018(*v105, v104);

      sub_10000839C(&v197);
      sub_10000839C(aBlock);
      v185(v95, v7 + v93, v96);
      Dependency.wrappedValue.getter();
      v97(v95, v96);
      v107 = v188;
      v108 = v187;
      v109 = v189;
      (*(v188 + 16))(v187, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v189);
      Dependency.wrappedValue.getter();
      (*(v107 + 8))(v108, v109);
      v110 = v197;
      swift_retain_n();
      v111 = v191;
      v112 = v186;
      v113 = v111;
      v114 = v194;

      v115 = v112;
      sub_100168644(v193, v106, v110, v192, v113, v7, v7, v113, v190, v114, v115);
      swift_unknownObjectRelease();

      sub_10000839C(aBlock);
    }

    else
    {
      v183 = v7;
      v181 = v199[0];
      v180 = v199[1];
      v179 = v199[5];
      sub_100012D04(a1 + v192[11], v21, &qword_1003D8B60, &unk_10033F210);
      v82 = *(v23 + 48);
      if (v82(v21, 1, v22) == 1)
      {
        (*(v23 + 16))(v25, a1, v22);
        v83 = v82(v21, 1, v22);
        sub_100015D6C(v174, v191);
        if (v83 != 1)
        {
          sub_100008D3C(v21, &qword_1003D8B60, &unk_10033F210);
        }
      }

      else
      {
        (*(v23 + 32))(v25, v21, v22);
        sub_100015D6C(v174, v191);
      }

      v116 = objc_allocWithZone(AKInheritanceAccessKey);
      v117 = UUID._bridgeToObjectiveC()().super.isa;
      v118 = [v116 initWithBeneficiairyIdentifier:v117];

      (*(v23 + 8))(v25, v22);
      v119 = Data._bridgeToObjectiveC()().super.isa;
      [v118 setWrappedKeyData:v119];

      v120 = v181;
      v121 = v180;
      v122 = Data._bridgeToObjectiveC()().super.isa;
      v182 = v118;
      [v118 setWrappingKeyData:v122];

      sub_100015D6C(v120, v121);

      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.debug.getter();
      sub_100008D3C(v199, &unk_1003E1660, &qword_100344608);
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        aBlock[0] = v126;
        *v125 = 136315138;
        v127 = Data.base64EncodedString(options:)(0);
        v128 = sub_10021145C(v127._countAndFlagsBits, v127._object, aBlock);

        *(v125 + 4) = v128;
        a1 = v193;
        _os_log_impl(&_mh_execute_header, v123, v124, "wrappingKey:%s", v125, 0xCu);
        sub_10000839C(v126);
      }

      v129 = v183;
      v130 = v184;
      v131 = a1 + v192[13];
      if (*(v131 + 8))
      {
        v132 = 0;
      }

      else
      {
        v132 = *v131;
      }

      v133 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__urlBagProvider;
      v134 = *(v184 + 16);
      v135 = v172;
      v136 = v173;
      v134(v172, v183 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__urlBagProvider, v173);
      Dependency.wrappedValue.getter();
      v137 = *(v130 + 8);
      v137(v135, v136);
      v138 = objc_opt_self();
      v139 = [v138 maxRepairCountForBeneficiaries];
      sub_10000839C(aBlock);
      v184 = v130 + 8;
      v183 = v132;
      if (v139 < 1 || v132 >= v139)
      {
        LODWORD(v192) = 0;
      }

      else
      {
        v140 = v172;
        v141 = v173;
        v134(v172, v129 + v133, v173);
        Dependency.wrappedValue.getter();
        v137(v140, v141);
        LODWORD(v192) = [v138 canRepairBeneficiary];
        sub_10000839C(aBlock);
      }

      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 134218496;
        *(v144 + 4) = v183;
        *(v144 + 12) = 2048;
        v145 = v129 + v133;
        v146 = v172;
        v147 = v173;
        v134(v172, v145, v173);
        Dependency.wrappedValue.getter();
        v137(v146, v147);
        v148 = [v138 maxRepairCountForBeneficiaries];
        sub_10000839C(aBlock);
        *(v144 + 14) = v148;

        *(v144 + 22) = 1024;
        *(v144 + 24) = v192;
        _os_log_impl(&_mh_execute_header, v142, v143, "Beneficiary repair count  %lu < IdMS maxRepairCount %ld. Can repair beneficiaries: %{BOOL}d", v144, 0x1Cu);
      }

      else
      {
      }

      v149 = v188;
      v150 = v187;
      v151 = v189;
      (*(v188 + 16))(v187, v129 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v189);
      Dependency.wrappedValue.getter();
      (*(v149 + 8))(v150, v151);
      v152 = aBlock[0];
      v153 = v193;
      v154 = UUID._bridgeToObjectiveC()().super.isa;
      v155 = v171;
      sub_100168334(v153, v171);
      v156 = (*(v169 + 80) + 24) & ~*(v169 + 80);
      v157 = v156 + v170;
      v158 = (v156 + v170) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v158 + 23) & 0xFFFFFFFFFFFFFFF8;
      v160 = swift_allocObject();
      *(v160 + 16) = v129;
      sub_1001BC960(v155, v160 + v156);
      *(v160 + v157) = v192;
      v161 = v186;
      *(v160 + v158 + 8) = v186;
      v162 = (v160 + v159);
      v163 = v194;
      *v162 = v190;
      v162[1] = v163;
      v164 = v182;
      *(v160 + ((v159 + 23) & 0xFFFFFFFFFFFFFFF8)) = v182;
      aBlock[4] = sub_1001BD408;
      aBlock[5] = v160;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003AD170;
      v165 = _Block_copy(aBlock);

      v166 = v161;

      v167 = v164;

      [v152 preflightInheritanceRecoveryForBeneficiaryID:v154 accessKey:v167 completion:v165];
      _Block_release(v165);

      swift_unknownObjectRelease();
      sub_100015D58(v174, v191);
    }

    return sub_100008D3C(v199, &unk_1003E1660, &qword_100344608);
  }

  else
  {

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_10021145C(*(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
      _os_log_impl(&_mh_execute_header, v44, v45, "%s - Error creating InheritanceAccessKeyRecord", v46, 0xCu);
      sub_10000839C(v47);
    }

    type metadata accessor for InheritanceError(0);
    v197 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001BD1B8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = aBlock[0];
    swift_retain_n();
    v49 = v186;
    swift_retain_n();
    v192 = v48;
    v50 = v48;
    v51 = v49;
    v186 = v50;
    v52 = Bool._bridgeToObjectiveC()().super.super.isa;
    v191 = v51;
    [v51 setObject:v52 forKeyedSubscript:kAAFDidSucceed];

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_10021145C(*(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
      _os_log_impl(&_mh_execute_header, v53, v54, "%s - Verifying claim code", v55, 0xCu);
      sub_10000839C(v56);
    }

    v57 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
    v58 = v182;
    v185 = v182[2];
    v59 = v181;
    v60 = v183;
    v185(v181, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol, v183);
    Dependency.wrappedValue.getter();
    v61 = v58[1];
    v61(v59, v60);
    v62 = v176;
    v63 = v175;
    v64 = v177;
    (*(v176 + 16))(v175, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore, v177);
    Dependency.wrappedValue.getter();
    (*(v62 + 8))(v63, v64);
    v65 = v7;
    v66 = v179;
    v67 = v178;
    v68 = v180;
    (*(v179 + 16))(v178, v65 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v180);
    Dependency.wrappedValue.getter();
    (*(v66 + 8))(v67, v68);
    v69 = v196;
    v70 = sub_1000080F8(&v197, v198);
    v71 = sub_1001AD018(*v70, v69);

    sub_10000839C(&v197);
    sub_10000839C(aBlock);
    v185(v59, v65 + v57, v60);
    Dependency.wrappedValue.getter();
    v61(v59, v60);
    v72 = v188;
    v73 = v187;
    v74 = v189;
    (*(v188 + 16))(v187, v65 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v189);
    Dependency.wrappedValue.getter();
    (*(v72 + 8))(v73, v74);
    v75 = v197;
    swift_retain_n();
    v76 = v191;
    v77 = v186;
    v78 = v76;
    v79 = v194;

    v80 = v77;
    sub_1001685AC(v193, v71, v75, v192, v78, v65, v65, v78, v190, v79, v80);
    swift_unknownObjectRelease();

    sub_10000839C(aBlock);
  }
}

void sub_1001B6B20(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = v6;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_1001BD1B8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAB30);

    v10 = v23;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v23);
      *(v13 + 12) = 2112;
      v16 = _convertErrorToNSError(_:)();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s - failed: %@", v13, 0x16u);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v15);
    }

    v17 = v10;
    a3(v10);
  }

  else
  {
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAB30);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v23);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - successful.", v21, 0xCu);
      sub_10000839C(v22);
    }

    a3(0);
  }
}

void sub_1001B6F60(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t (*a6)(void), uint64_t a7, void (*a8)(void, void, void))
{
  v154 = a7;
  v155 = a3;
  v149 = a5;
  v150 = a6;
  LODWORD(v9) = a4;
  v145 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v133 - v12;
  v142 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v133 - v13;
  v14 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  v147 = *(v14 - 8);
  v148 = v14;
  __chkstk_darwin(v14);
  v146 = &v133 - v15;
  v16 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v152 = *(v16 - 8);
  v153 = v16;
  __chkstk_darwin(v16);
  v151 = &v133 - v17;
  v18 = type metadata accessor for BeneficiaryInfoRecord(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v21 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v133 - v23;
  __chkstk_darwin(v22);
  v27 = &v133 - v26;
  if (a1)
  {
    v138 = v25;
    v139 = a8;
    swift_errorRetain();
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAB30);
    sub_100168334(v155, v27);
    swift_errorRetain();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      LODWORD(v136) = v9;
      v9 = v31;
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      aBlock[0] = v134;
      *v9 = 136315650;
      *(v9 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
      *(v9 + 12) = 2080;
      type metadata accessor for UUID();
      v135 = a2;
      v32 = a1;
      v33 = v24;
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1001BCA80(v27);
      v37 = sub_10021145C(v34, v36, aBlock);
      v24 = v33;
      a1 = v32;
      a2 = v135;

      *(v9 + 14) = v37;
      *(v9 + 22) = 2112;
      v38 = _convertErrorToNSError(_:)();
      *(v9 + 24) = v38;
      v39 = v133;
      *v133 = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s - failed for beneficiaryID %s    error: %@", v9, 0x20u);
      sub_100008D3C(v39, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      LOBYTE(v9) = v136;
    }

    else
    {

      sub_1001BCA80(v27);
    }

    v48 = _convertErrorToNSError(_:)();
    if ([v48 code] == 32 || objc_msgSend(v48, "code") == 34)
    {
      if (v9)
      {
        swift_errorRetain();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          swift_errorRetain();
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v51 + 4) = v53;
          *v52 = v53;
          _os_log_impl(&_mh_execute_header, v49, v50, "Recreating PeerID due to preflight error: %@", v51, 0xCu);
          sub_100008D3C(v52, &unk_1003D9140, &qword_10033E640);
        }

        sub_100168334(v155, v24);
        v54 = (*(v138 + 80) + 40) & ~*(v138 + 80);
        v55 = (v19 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
        v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
        v57 = swift_allocObject();
        v58 = v154;
        v57[2] = v150;
        v57[3] = v58;
        v57[4] = a2;
        sub_1001BC960(v24, v57 + v54);
        v59 = v139;
        *(v57 + v55) = v139;
        v60 = v149;
        *(v57 + v56) = v149;
        v61 = v151;
        v62 = v152;
        v63 = v153;
        (*(v152 + 16))(v151, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v153);

        v64 = v59;
        v65 = v60;
        Dependency.wrappedValue.getter();
        (*(v62 + 8))(v61, v63);
        v66 = aBlock[0];
        v67 = swift_allocObject();
        *(v67 + 16) = sub_1001BD6C4;
        *(v67 + 24) = v57;
        aBlock[4] = sub_1001BD7BC;
        aBlock[5] = v67;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100015858;
        aBlock[3] = &unk_1003AD1E8;
        v68 = _Block_copy(aBlock);

        [v66 recreateInheritanceKeyWithAccessKey:v64 completion:v68];
        _Block_release(v68);
        swift_unknownObjectRelease();

        return;
      }
    }

    else if (v9)
    {
      swift_errorRetain();
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 138412290;
        swift_errorRetain();
        v100 = _swift_stdlib_bridgeErrorToNSError();
        *(v98 + 4) = v100;
        *v99 = v100;
        _os_log_impl(&_mh_execute_header, v96, v97, "Preflight error other than error 32 or error 34. Error: %@", v98, 0xCu);
        sub_100008D3C(v99, &unk_1003D9140, &qword_10033E640);

LABEL_26:
      }

LABEL_27:

      swift_errorRetain();

      v103 = v149;
      swift_errorRetain();

      v104 = v103;
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v149 = v104;
      [v104 setObject:isa forKeyedSubscript:kAAFDidSucceed];

      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();

      v108 = os_log_type_enabled(v106, v107);
      v137 = a1;
      v136 = v48;
      if (v108)
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        aBlock[0] = v110;
        *v109 = 136315138;
        *(v109 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
        _os_log_impl(&_mh_execute_header, v106, v107, "%s - Verifying claim code", v109, 0xCu);
        sub_10000839C(v110);
      }

      v111 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
      v112 = v147;
      v139 = *(v147 + 16);
      v113 = v146;
      v114 = v148;
      v139(v146, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol, v148);
      Dependency.wrappedValue.getter();
      v115 = *(v112 + 8);
      v115(v113, v114);
      v116 = v141;
      v117 = v140;
      v118 = v142;
      (*(v141 + 16))(v140, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore, v142);
      Dependency.wrappedValue.getter();
      (*(v116 + 8))(v117, v118);
      v119 = v144;
      v120 = v143;
      v121 = v145;
      (*(v144 + 16))(v143, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v145);
      Dependency.wrappedValue.getter();
      (*(v119 + 8))(v120, v121);
      v122 = v157;
      v123 = sub_1000080F8(v158, v159);
      v124 = sub_1001AD018(*v123, v122);

      sub_10000839C(v158);
      sub_10000839C(aBlock);
      v139(v113, a2 + v111, v114);
      Dependency.wrappedValue.getter();
      v115(v113, v114);
      v125 = v151;
      v126 = v152;
      v127 = v153;
      (*(v152 + 16))(v151, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v153);
      Dependency.wrappedValue.getter();
      (*(v126 + 8))(v125, v127);
      v128 = v158[0];
      v129 = v137;
      swift_errorRetain();

      v130 = v149;
      swift_errorRetain();

      v131 = v154;

      v132 = v130;
      sub_10016A0E0(v155, v124, v128, v129, v132, a2, a2, v132, v150, v131, v129);

      swift_unknownObjectRelease();

      sub_10000839C(aBlock);

      return;
    }

    v96 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v96, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v96, v101, "Feature flag turned off, not recreating new access key.", v102, 2u);
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100008D04(v40, qword_1003FAB30);
  sub_100168334(v155, v21);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
    *(v43 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    sub_1001BCA80(v21);
    v47 = sub_10021145C(v44, v46, aBlock);

    *(v43 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s - succeeded for beneficiaryID %s", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001BCA80(v21);
  }

  swift_retain_n();
  swift_retain_n();
  v69 = v149;
  v70 = Bool._bridgeToObjectiveC()().super.super.isa;
  v149 = v69;
  [v69 setObject:v70 forKeyedSubscript:kAAFDidSucceed];

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v73 = 136315138;
    *(v73 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
    _os_log_impl(&_mh_execute_header, v71, v72, "%s - Verifying claim code", v73, 0xCu);
    sub_10000839C(v74);
  }

  v75 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
  v76 = v147;
  v139 = *(v147 + 16);
  v77 = v146;
  v78 = v148;
  v139(v146, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol, v148);
  Dependency.wrappedValue.getter();
  v79 = *(v76 + 8);
  v79(v77, v78);
  v80 = v141;
  v81 = v140;
  v82 = v142;
  (*(v141 + 16))(v140, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore, v142);
  Dependency.wrappedValue.getter();
  (*(v80 + 8))(v81, v82);
  v83 = v144;
  v84 = v143;
  v85 = v145;
  (*(v144 + 16))(v143, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v145);
  Dependency.wrappedValue.getter();
  (*(v83 + 8))(v84, v85);
  v86 = v157;
  v87 = sub_1000080F8(v158, v159);
  v88 = sub_1001AD018(*v87, v86);

  sub_10000839C(v158);
  sub_10000839C(aBlock);
  v139(v77, a2 + v75, v78);
  Dependency.wrappedValue.getter();
  v79(v77, v78);
  v89 = v151;
  v90 = v152;
  v91 = v153;
  (*(v152 + 16))(v151, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v153);
  Dependency.wrappedValue.getter();
  (*(v90 + 8))(v89, v91);
  v92 = v158[0];
  swift_retain_n();
  v93 = v149;
  v94 = v154;

  v95 = v93;
  sub_10016A04C(v155, v88, v92, 0, v95, a2, a2, v95, v150, v94);
  swift_unknownObjectRelease();

  sub_10000839C(aBlock);
}

uint64_t sub_1001B8344(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, const char *a6, ...)
{
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAB30);

  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10021145C(*(a1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v25);
    *(v15 + 12) = 2080;
    v16 = [v12 debugDescription];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = a3;
    v19 = a6;
    v21 = v20;

    v22 = sub_10021145C(v17, v21, &v25);

    *(v15 + 14) = v22;
    v23 = v19;
    a3 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, v23, v15, 0x16u);
    swift_arrayDestroy();
  }

  return a3(a5);
}

uint64_t sub_1001B8548(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v77 = a8;
  v78 = a7;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BeneficiaryInfoRecord(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v21 = __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  if (a2)
  {
    swift_errorRetain();
    a3(a2);
  }

  else
  {
    v71 = v15;
    v72 = v17;
    v73 = v14;
    v74 = a3;
    v75 = a4;
    v76 = a6;
    if (a1)
    {
      v27 = &v64 - v22;
      v68 = v24;
      v69 = v25;
      v70 = v23;
      v28 = qword_1003D7F70;
      v29 = a1;
      if (v28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAB30);
      sub_100168334(v76, v27);
      v31 = v29;
      v32 = a5;

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();

      v35 = os_log_type_enabled(v33, v34);
      v37 = v72;
      v36 = v73;
      v67 = v31;
      if (v35)
      {
        v38 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v79 = v66;
        *v38 = 136315650;
        *(v38 + 4) = sub_10021145C(*(v32 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v32 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v79);
        *(v38 + 12) = 2080;
        sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v64 = v33;
        v65 = v34;
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        sub_1001BCA80(v27);
        v42 = sub_10021145C(v39, v41, &v79);

        *(v38 + 14) = v42;
        *(v38 + 22) = 2080;
        v43 = [v31 beneficiaryID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        (*(v71 + 8))(v37, v36);
        v47 = sub_10021145C(v44, v46, &v79);

        *(v38 + 24) = v47;
        v48 = v64;
        _os_log_impl(&_mh_execute_header, v64, v65, "%s - successfully recreated inheritanceKey for beneficiaryID %s and new OTPeerID %s", v38, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1001BCA80(v27);
      }

      v49 = v32;
      v51 = v74;
      v50 = v75;
      v52 = v76;
      v53 = v68;
      sub_100168334(v76, v68);
      v54 = (*(v69 + 80) + 40) & ~*(v69 + 80);
      v55 = (v19 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      v56[2] = v49;
      v56[3] = v51;
      v56[4] = v50;
      sub_1001BC960(v53, v56 + v54);
      v57 = v77;
      *(v56 + v55) = v77;
      v58 = v52;
      v59 = v70;
      sub_100168334(v58, v70);
      v60 = swift_allocObject();
      v60[2] = v49;
      v60[3] = sub_1001BD7C8;
      v60[4] = v56;
      sub_1001BC960(v59, v60 + v54);
      v61 = v67;
      *(v60 + v55) = v67;
      swift_retain_n();
      v62 = v61;

      v63 = v57;

      sub_1001BB15C(v78, v62, sub_1001BD9CC);
    }

    else
    {
      return (v74)(0);
    }
  }
}

uint64_t sub_1001B8AEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void (*a6)(void, void, void))
{
  v83 = a6;
  v88 = a5;
  v89 = a2;
  v90 = a3;
  v91 = a4;
  v7 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v86 = *(v7 - 8);
  v87 = v7;
  __chkstk_darwin(v7);
  v9 = &v74 - v8;
  v10 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v85 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v74 - v11;
  v13 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v84 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v74 - v14;
  v16 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v74 - v18;
  v20 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v90;
    swift_errorRetain();
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAB30);
    v25 = v89;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v94[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10021145C(*(v25 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v25 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v94);
      _os_log_impl(&_mh_execute_header, v26, v27, "  %s - failed to verify and update BeneficiaryInfoRecord", v28, 0xCu);
      sub_10000839C(v29);
    }

    swift_errorRetain();
    v23(a1);
  }

  else
  {
    v31 = v88;
    v77 = v15;
    v78 = v13;
    v79 = v19;
    v80 = v12;
    v81 = v17;
    v82 = v9;
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAB30);
    sub_100168334(v31, v22);
    v33 = v89;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    v36 = os_log_type_enabled(v34, v35);
    v76 = v10;
    v75 = v16;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v94[0] = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_10021145C(*(v33 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v33 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v94);
      *(v37 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_1001BCA80(v22);
      v41 = sub_10021145C(v38, v40, v94);

      *(v37 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - succeeded for beneficiaryID %s", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001BCA80(v22);
    }

    v42 = v79;
    v43 = v83;
    v44 = v84;
    v45 = v77;
    swift_retain_n();
    v46 = v43;
    swift_retain_n();
    v47 = v46;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v84 = v47;
    [v47 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v94[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_10021145C(*(v33 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v33 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v94);
      _os_log_impl(&_mh_execute_header, v49, v50, "%s - Verifying claim code", v51, 0xCu);
      sub_10000839C(v52);
    }

    v53 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
    v54 = v81;
    v83 = *(v81 + 16);
    v55 = v75;
    v83(v42, v33 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol, v75);
    Dependency.wrappedValue.getter();
    v56 = *(v54 + 8);
    v56(v42, v55);
    v57 = v44[2];
    v58 = v45;
    v59 = v45;
    v60 = v44;
    v61 = v78;
    v57(v58, v33 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore, v78);
    Dependency.wrappedValue.getter();
    (v60[1])(v59, v61);
    v62 = v85;
    v63 = v80;
    v64 = v76;
    (*(v85 + 16))(v80, v33 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v76);
    Dependency.wrappedValue.getter();
    (*(v62 + 8))(v63, v64);
    v65 = v92;
    v66 = sub_1000080F8(v93, v93[3]);
    v67 = sub_1001AD018(*v66, v65);

    sub_10000839C(v93);
    sub_10000839C(v94);
    v83(v42, v33 + v53, v55);
    Dependency.wrappedValue.getter();
    v56(v42, v55);
    v69 = v86;
    v68 = v87;
    v70 = v82;
    (*(v86 + 16))(v82, v33 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v87);
    Dependency.wrappedValue.getter();
    (*(v69 + 8))(v70, v68);
    v71 = v93[0];
    swift_retain_n();
    v72 = v84;
    v73 = v91;

    sub_10016B9B8(v88, v67, v71, 0, v72, v33, v33, v72, v90, v73);
    swift_unknownObjectRelease();

    sub_10000839C(v94);
  }
}

uint64_t sub_1001B94E8(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAB30);

  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10021145C(*(a1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v17);
    *(v10 + 12) = 2080;
    v11 = [v7 debugDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10021145C(v12, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] 🌈 Preflight event reported. %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return a3(0);
}

void sub_1001B96D4(uint64_t a1, id *a2, void *a3)
{
  v6 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a2)
  {
    v30 = 0u;
    v31 = 0u;
LABEL_10:
    sub_100008D3C(&v30, &qword_1003D87C8, qword_100344800);
    goto LABEL_11;
  }

  v9 = *a2;
  *&v28 = UUID.uuidString.getter();
  *(&v28 + 1) = v10;
  v11 = [v9 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v12 = Data.init(base64Encoded:options:)();
    v14 = v13;

    if (v14 >> 60 != 15)
    {
      v15 = UUID.uuidString.getter();
      v17 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v30 = *a3;
      sub_1002CFA04(v12, v14, v15, v17, isUniquelyReferenced_nonNull_native);

      *a3 = v30;
      return;
    }
  }

LABEL_11:
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAB30);
  sub_100168334(a1, v8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v30 = v23;
    *v22 = 136315138;
    type metadata accessor for UUID();
    sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_1001BCA80(v8);
    v27 = sub_10021145C(v24, v26, &v30);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Wrapped key not found in keychain! UUID %s", v22, 0xCu);
    sub_10000839C(v23);
  }

  else
  {

    sub_1001BCA80(v8);
  }
}

uint64_t sub_1001B9A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001B9B10, 0, 0);
}

uint64_t sub_1001B9B10()
{
  v1 = kInheritancePreflightCheckEventName;
  sub_1001C15CC();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() analyticsEventWithName:v1 altDSID:v3 flowID:0];
  v0[15] = v4;

  if (v4)
  {
    v5 = sub_1001C184C();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for InheritancePreflightHealthCheck(0);
      v7 = sub_1001B3D2C();
      [v7 securityLevelForAccount:v6];
    }

    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];
    v19 = v0[9];
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v4 setObject:isa forKeyedSubscript:kAAAnalyticsSecurityLevel];

    (*(v17 + 16))(v16, v19 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__cdpController, v18);
    Dependency.wrappedValue.getter();
    (*(v17 + 8))(v16, v18);
    v21 = [objc_allocWithZone(ACAccountStore) init];
    v22 = [v21 aa_primaryAppleAccount];

    if (v22)
    {
      v23 = [v22 aa_personID];

      if (v23)
      {
        [objc_opt_self() isICDPEnabledForDSID:v23];
      }
    }

    v24 = Bool._bridgeToObjectiveC()().super.super.isa;
    sub_10000839C(v0 + 2);
    [v4 setObject:v24 forKeyedSubscript:kAAAnalyticsCdpStatus];

    v25 = v4;
    sub_1001BE7BC(v4);
    v26 = swift_task_alloc();
    v0[16] = v26;
    *v26 = v0;
    v26[1] = sub_1001B9F88;

    return sub_1001BF774(v4);
  }

  else
  {
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAB30);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "createEvent: Self is nil. Aborting Report Event.", v11, 2u);
    }

    v12 = v0[10];

    type metadata accessor for InheritanceError(0);
    v0[8] = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001BD1B8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = v0[7];
    v12(v13, 1);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1001B9F88()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 136) = v4;
  *v4 = v3;
  v4[1] = sub_1001BA0F8;

  return sub_1001C0AC4(v2);
}

uint64_t sub_1001BA0F8()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_1001BA20C, 0, 0);
}

uint64_t sub_1001BA20C()
{
  v18 = v0;
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB30);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_10021145C(*(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v17);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v6;
    *v9 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Event created %@", v8, 0x16u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v10);
  }

  v12 = v0[15];
  v13 = v0[10];
  v14 = v12;
  v13(v12, 0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001BA444(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a2;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAAA0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error creating accessKey. Error: %@", v8, 0xCu);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
    }

    a1 = 0;
    a2 = v4;
  }

  return a3(a1, a2);
}

void sub_1001BA5B8(void *a1, uint64_t a2, void (*a3)(void *), void (*a4)(void *), uint64_t a5, void *a6)
{
  v66 = a4;
  v11 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v64 = *(v11 - 1);
  v65 = v11;
  __chkstk_darwin(v11);
  v13 = &v56 - v12;
  v14 = type metadata accessor for BeneficiaryInfoRecord(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14 - 8);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for UUID();
  v21 = __chkstk_darwin(v20);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v25 = qword_1003D7F70;
    v26 = a1;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAB30);

    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = a2;
      v35 = v33;
      v67[0] = v33;
      *v31 = 136315394;
      *(v31 + 4) = sub_10021145C(*(v34 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v34 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v67);
      *(v31 + 12) = 2112;
      v36 = _convertErrorToNSError(_:)();
      *(v31 + 14) = v36;
      *v32 = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s - old accessKey properties do not match new accessKey properties. Error: %@", v31, 0x16u);
      sub_100008D3C(v32, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v35);
    }

    v65 = v28;
    a3(a1);

    v37 = v65;
  }

  else
  {
    v61 = v22;
    v62 = v21;
    v58 = a6;
    v38 = [a6 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100168334(a5, v19);
    v39 = *(v15 + 80);
    v57 = a3;
    v40 = v66;
    v41 = (v39 + 24) & ~v39;
    v59 = a5;
    v60 = v16 + 7;
    v42 = (v16 + 7 + v41) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 16) = a2;
    sub_1001BC960(v19, v44 + v41);
    v45 = (v44 + v42);
    v46 = v58;
    *v45 = v57;
    v45[1] = v40;
    *(v44 + v43) = v46;
    v48 = v64;
    v47 = v65;
    (*(v64 + 16))(v13, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceStorage, v65);

    v49 = v46;
    Dependency.wrappedValue.getter();
    (*(v48 + 8))(v13, v47);
    sub_1000080F8(v67, v67[3]);
    v50 = v59;
    v51 = v63;
    sub_100168334(v59, v63);
    v52 = (v39 + 16) & ~v39;
    v53 = (v60 + v52) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    sub_1001BC960(v51, v54 + v52);
    v55 = (v54 + v53);
    *v55 = sub_1001BDC94;
    v55[1] = v44;

    sub_100218DA0(v50, v24, sub_1001BDF24, v54);

    (*(v61 + 8))(v24, v62);
    sub_10000839C(v67);
  }
}

uint64_t sub_1001BAB44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v54 = type metadata accessor for UUID();
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BeneficiaryInfoRecord(0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAB30);
    sub_100168334(a3, v20);
    swift_errorRetain();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v52 = a4;
      v26 = v25;
      v27 = swift_slowAlloc();
      v53 = a5;
      v55 = v27;
      *v24 = 136315650;
      *(v24 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v55);
      *(v24 + 12) = 2080;
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_1001BCA80(v20);
      v31 = sub_10021145C(v28, v30, &v55);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2112;
      v32 = _convertErrorToNSError(_:)();
      *(v24 + 24) = v32;
      *v26 = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, " %s - failed to update and save BeneficiaryInfoRecord %s     error: %@", v24, 0x20u);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);
      a4 = v52;

      swift_arrayDestroy();
    }

    else
    {

      sub_1001BCA80(v20);
    }

    swift_errorRetain();
    a4(a1);
  }

  else
  {
    v51 = v12;
    v53 = a5;
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAB30);
    sub_100168334(a3, v18);

    v34 = a6;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v52 = a4;
      v38 = v37;
      v50 = swift_slowAlloc();
      v55 = v50;
      *v38 = 136315650;
      *(v38 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v55);
      *(v38 + 12) = 2080;
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v39 = v54;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_1001BCA80(v18);
      v43 = sub_10021145C(v40, v42, &v55);

      *(v38 + 14) = v43;
      *(v38 + 22) = 2080;
      v44 = [v34 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v51 + 8))(v14, v39);
      v48 = sub_10021145C(v45, v47, &v55);

      *(v38 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v35, v36, "%s - successfully updated and saved inheritanceKey for beneficiaryID\n%s and new OTPeerID %s", v38, 0x20u);
      swift_arrayDestroy();

      a4 = v52;
    }

    else
    {

      sub_1001BCA80(v18);
    }

    return (a4)(0);
  }
}

void sub_1001BB15C(void *a1, void *a2, void (*a3)(void *))
{
  v4 = v3;
  v7 = [a1 wrappedKeyData];
  if (v7)
  {
    v8 = v7;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = [a2 wrappedKeyData];
  if (v12)
  {
    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v11 >> 60 == 15)
    {
      if (v16 >> 60 != 15)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    if (v16 >> 60 != 15)
    {
      sub_100052704(v9, v11);
      sub_100052704(v14, v16);
      v22 = sub_10018F69C(v9, v11, v14, v16);
      sub_100015D58(v14, v16);
      sub_100015D58(v9, v11);
      sub_100015D58(v14, v16);
      sub_100015D58(v9, v11);
      if (!v22)
      {
        goto LABEL_17;
      }

LABEL_10:
      v17 = [a1 wrappingKeyData];
      if (v17)
      {
        v18 = v17;
        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xF000000000000000;
      }

      v28 = [a2 wrappingKeyData];
      if (v28)
      {
        v29 = v28;
        v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        if (v21 >> 60 == 15)
        {
          if (v32 >> 60 != 15)
          {
            goto LABEL_35;
          }

          goto LABEL_28;
        }

        if (v32 >> 60 != 15)
        {
          sub_100052704(v19, v21);
          sub_100052704(v30, v32);
          v38 = sub_10018F69C(v19, v21, v30, v32);
          sub_100015D58(v30, v32);
          sub_100015D58(v19, v21);
          sub_100015D58(v30, v32);
          sub_100015D58(v19, v21);
          if (!v38)
          {
            goto LABEL_36;
          }

LABEL_29:
          v33 = [a1 claimTokenData];
          if (v33)
          {
            v34 = v33;
            v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v36;
          }

          else
          {
            v35 = 0;
            v37 = 0xF000000000000000;
          }

          v43 = [a2 claimTokenData];
          if (v43)
          {
            v44 = v43;
            v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            if (v37 >> 60 == 15)
            {
              if (v47 >> 60 != 15)
              {
                goto LABEL_53;
              }

              goto LABEL_47;
            }

            if (v47 >> 60 != 15)
            {
              sub_100052704(v35, v37);
              sub_100052704(v45, v47);
              v48 = sub_10018F69C(v35, v37, v45, v47);
              sub_100015D58(v45, v47);
              sub_100015D58(v35, v37);
              sub_100015D58(v45, v47);
              sub_100015D58(v35, v37);
              if (!v48)
              {
                goto LABEL_54;
              }

LABEL_48:
              a3(0);
              return;
            }
          }

          else
          {
            if (v37 >> 60 == 15)
            {
LABEL_47:
              sub_100015D58(v35, v37);
              goto LABEL_48;
            }

            v45 = 0;
            v47 = 0xF000000000000000;
          }

LABEL_53:
          sub_100015D58(v35, v37);
          sub_100015D58(v45, v47);
LABEL_54:
          if (qword_1003D7F70 != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          sub_100008D04(v49, qword_1003FAB30);

          v24 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v24, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v55 = v52;
            *v51 = 136315138;
            *(v51 + 4) = sub_10021145C(*(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v55);
            _os_log_impl(&_mh_execute_header, v24, v50, "%s - Claim code in new inheritanceKey does not match existing claim code.", v51, 0xCu);
            sub_10000839C(v52);
          }

          goto LABEL_58;
        }
      }

      else
      {
        if (v21 >> 60 == 15)
        {
LABEL_28:
          sub_100015D58(v19, v21);
          goto LABEL_29;
        }

        v30 = 0;
        v32 = 0xF000000000000000;
      }

LABEL_35:
      sub_100015D58(v19, v21);
      sub_100015D58(v30, v32);
LABEL_36:
      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100008D04(v39, qword_1003FAB30);

      v24 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v55 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_10021145C(*(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v55);
        _os_log_impl(&_mh_execute_header, v24, v40, "%s - Wrapping key in new inheritanceKey does not match existing wrapping key.", v41, 0xCu);
        sub_10000839C(v42);
      }

      goto LABEL_58;
    }
  }

  else
  {
    if (v11 >> 60 == 15)
    {
LABEL_9:
      sub_100015D58(v9, v11);
      goto LABEL_10;
    }

    v14 = 0;
    v16 = 0xF000000000000000;
  }

LABEL_16:
  sub_100015D58(v9, v11);
  sub_100015D58(v14, v16);
LABEL_17:
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAB30);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v55 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_10021145C(*(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v55);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s - Wrapped key in new inheritanceKey does not match the existing wrapped key.", v26, 0xCu);
    sub_10000839C(v27);
  }

LABEL_58:

  type metadata accessor for InheritanceError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001BD1B8(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
  _BridgedStoredNSError.init(_:userInfo:)();
  v53 = v55;
  a3(v55);
}

uint64_t sub_1001BB940(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for BeneficiaryInfoRecord(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v12 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v12);
  v14 = (&v35 - v13);
  sub_100012D04(a1, &v35 - v13, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAB30);
    sub_100168334(a2, v9);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      type metadata accessor for UUID();
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_1001BCA80(v9);
      v24 = sub_10021145C(v21, v23, &v36);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to update BeneficiaryInfoRecord for beneficiaryUUID: %s", v19, 0xCu);
      sub_10000839C(v20);
    }

    else
    {

      sub_1001BCA80(v9);
    }

    swift_errorRetain();
    a3(v15);
  }

  else
  {
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAB30);
    sub_100168334(a2, v11);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315138;
      type metadata accessor for UUID();
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1001BCA80(v11);
      v33 = sub_10021145C(v30, v32, &v36);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Successfully updated BeneficiaryInfoRecord for beneficiaryUUID: %s", v28, 0xCu);
      sub_10000839C(v29);
    }

    else
    {

      sub_1001BCA80(v11);
    }

    a3(0);
    return sub_100008D3C(v14, &unk_1003E10A0, &unk_100344480);
  }
}

uint64_t sub_1001BBDE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1001BBE14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-1] - v8;
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAB30);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10021145C(*(v3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s - started.", v13, 0xCu);
    sub_10000839C(v14);
  }

  (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  sub_1000080F8(v18, v18[3]);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;

  sub_100214428(sub_1001BC0BC, v15);

  return sub_10000839C(v18);
}

uint64_t sub_1001BC0DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v34 = a5;
  if (a1)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v41 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
    *&v40 = a1;
    sub_100070AF0(&v40, v39);
    v12 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002CF8B4(v39, v9, v11, isUniquelyReferenced_nonNull_native);

    if (a2)
    {
      swift_getErrorValue();
      swift_errorRetain();
      sub_100256810(v37, v38);
      swift_getErrorValue();
      v14 = sub_100256874(v35, v36);
      v15 = objc_allocWithZone(NSError);
      v16 = String._bridgeToObjectiveC()();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v18 = [v15 initWithDomain:v16 code:v14 userInfo:isa];

      v19 = _convertErrorToNSError(_:)();
      [a3 populateUnderlyingErrorsStartingWithRootError:v19];
    }

    else
    {

      v21 = v12;
      v22 = _convertErrorToNSError(_:)();

      [a3 populateUnderlyingErrorsStartingWithRootError:v22];
    }
  }

  else
  {
    if (a2)
    {
      v20 = _convertErrorToNSError(_:)();
    }

    else
    {
      v20 = 0;
    }

    [a3 populateUnderlyingErrorsStartingWithRootError:{v20, v34}];
  }

  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAB30);

  v24 = a3;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *&v40 = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v40);
    *(v27 + 12) = 2080;
    v28 = [v24 debugDescription];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10021145C(v29, v31, &v40);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s - Reporting Preflight Event %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  return v34([*(a4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v24]);
}

uint64_t sub_1001BC4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-1] - v8;
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAB30);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Cleaned up stale records. Continuing with preflight....", v13, 2u);
  }

  (*(v7 + 16))(v9, a1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  sub_1000080F8(v17, v17[3]);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;

  sub_100216650(sub_1001BE000, v14);

  return sub_10000839C(v17);
}

uint64_t sub_1001BC734()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001BC76C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001BC960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryInfoRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BC9C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B467C(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_1001BCA80(uint64_t a1)
{
  v2 = type metadata accessor for BeneficiaryInfoRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BCADC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001BCB30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001BCB48()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001BCD50(int *a1, char a2)
{
  v5 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + 16);
  v12 = (v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_1001B49EC(a1, a2 & 1, v11, v2 + v6, v9, v10, v13, v14);
}

uint64_t sub_1001BCE1C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1001BCE64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000082A8;

  return sub_1001B9A40(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001BCF2C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001BD114(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B4EDC(a1, v5, v1 + v4, v6);
}

uint64_t sub_1001BD1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001BD200()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = (v2 + v11) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v9 + 8);
}

void sub_1001BD408(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1001B6F60(a1, v7, (v1 + v4), v8, v9, v10, v11, v12);
}

uint64_t sub_1001BD4C8()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = (v11 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v9 + 8);
}

uint64_t sub_1001BD6C4(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + v7);
  v12 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B8548(a1, a2, v8, v9, v10, v2 + v6, v11, v12);
}

uint64_t sub_1001BD784()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001BD7E0()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v10 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = (v10 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_1001BD9E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v4 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *&v2[(*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a2(a1, v6, v7, v8, &v2[v5], v9);
}

uint64_t sub_1001BDA9C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v10 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = (((v10 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_1001BDC94(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  return sub_1001BAB44(a1, v7, v1 + v4, v9, v10, v11);
}

uint64_t sub_1001BDD44()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001BDF24(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001BB940(a1, v1 + v4, v5);
}

uint64_t sub_1001BE004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1002CEFC4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1003084DC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1002CFE94();
        v14 = v16;
      }

      result = sub_1001C427C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1001BE0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1002CF474(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1003084DC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1002D04D4();
        v14 = v16;
      }

      result = sub_1001C427C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_1001BE1F4(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = type metadata accessor for CustodianPreflightHealthCheck(0);
    sub_1000B5EDC(v4, &off_1003A7510);
    v5 = *(*sub_1000080F8(v21, v21[3]) + 16);
    v20 = 0;
    [v5 walrusStatus:&v20];
    v6 = v20;
    if (!v20)
    {
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v21);
      [a1 setObject:isa forKeyedSubscript:kAAAnalyticsAdvancedDataProtectionState];
      goto LABEL_8;
    }

    swift_willThrow();
    v7 = v6;
    sub_10000839C(v21);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);

    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v12 = 136315394;
      v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName);
      v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8);

      v17 = sub_10021145C(v15, v16, v21);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      isa = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s - Failed to attach Walrus Status: %@", v12, 0x16u);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v14);

LABEL_8:
      return;
    }
  }
}

void sub_1001BE4D0(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = v1[5];
    v5 = v1[7];
    sub_1000080F8(v1 + 2, v4);
    (*(v5 + 80))(v24, v4, v5);
    v6 = *(*sub_1000080F8(v24, v24[3]) + 16);
    v23 = 0;
    [v6 walrusStatus:&v23];
    v7 = v23;
    if (!v23)
    {
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v24);
      [a1 setObject:isa forKeyedSubscript:kAAAnalyticsAdvancedDataProtectionState];
      goto LABEL_8;
    }

    swift_willThrow();
    v8 = v7;
    sub_10000839C(v24);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAB8);

    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v13 = 136315394;
      v16 = v2[5];
      v17 = v2[7];
      sub_1000080F8(v2 + 2, v16);
      v18 = (*(v17 + 64))(v16, v17);
      v20 = sub_10021145C(v18, v19, v24);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2112;
      isa = v10;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v22;
      *v14 = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s - Failed to attach Walrus Status: %@", v13, 0x16u);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v15);

LABEL_8:
      return;
    }
  }
}

void sub_1001BE7BC(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = type metadata accessor for InheritancePreflightHealthCheck(0);
    sub_1001B3BF4(v4, &off_1003ACF10);
    v5 = *(*sub_1000080F8(v21, v21[3]) + 16);
    v20 = 0;
    [v5 walrusStatus:&v20];
    v6 = v20;
    if (!v20)
    {
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v21);
      [a1 setObject:isa forKeyedSubscript:kAAAnalyticsAdvancedDataProtectionState];
      goto LABEL_8;
    }

    swift_willThrow();
    v7 = v6;
    sub_10000839C(v21);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);

    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v12 = 136315394;
      v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName);
      v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8);

      v17 = sub_10021145C(v15, v16, v21);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      isa = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s - Failed to attach Walrus Status: %@", v12, 0x16u);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v14);

LABEL_8:
      return;
    }
  }
}

void sub_1001BEA98(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = type metadata accessor for InheritanceRecordsCleaner(0);
    sub_1001C3CFC(v4, &off_1003AD2B0);
    v5 = *(*sub_1000080F8(v21, v21[3]) + 16);
    v20 = 0;
    [v5 walrusStatus:&v20];
    v6 = v20;
    if (!v20)
    {
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v21);
      [a1 setObject:isa forKeyedSubscript:kAAAnalyticsAdvancedDataProtectionState];
      goto LABEL_8;
    }

    swift_willThrow();
    v7 = v6;
    sub_10000839C(v21);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);

    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v12 = 136315394;
      v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName);
      v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8);

      v17 = sub_10021145C(v15, v16, v21);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      isa = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s - Failed to attach Walrus Status: %@", v12, 0x16u);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v14);

LABEL_8:
      return;
    }
  }
}

uint64_t sub_1001BED5C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001BED80, 0, 0);
}

uint64_t sub_1001BED80()
{
  v1 = type metadata accessor for CustodianPreflightHealthCheck(0);
  sub_1000B5EDC(v1, &off_1003A7510);
  sub_1000080F8(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1001BEE68;

  return sub_10013C9D8(0x86AC351052600000, 32);
}

uint64_t sub_1001BEE68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1001BF018;
  }

  else
  {
    v4 = sub_1001BEF7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001BEF7C()
{
  v1 = v0[8];
  sub_10000839C(v0 + 2);
  if (v1)
  {
    v2 = v0[8];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v2 setObject:isa forKeyedSubscript:kAAAnalyticsCliqueStatus];
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001BF018()
{
  v16 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v9 = *(v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName);
    v10 = *(v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8);

    v11 = sub_10021145C(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to attach Octagon Status: %@", v6, 0x16u);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v8);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001BF268(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_1001BF288, 0, 0);
}

uint64_t sub_1001BF288()
{
  v1 = v0[8];
  v2 = v1[5];
  v3 = v1[7];
  sub_1000080F8(v1 + 2, v2);
  (*(v3 + 80))(v2, v3);
  sub_1000080F8(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1001BF37C;

  return sub_10013C9D8(0x86AC351052600000, 32);
}

uint64_t sub_1001BF37C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_1001BF52C;
  }

  else
  {
    v4 = sub_1001BF490;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001BF490()
{
  v1 = v0[7];
  sub_10000839C(v0 + 2);
  if (v1)
  {
    v2 = v0[7];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v2 setObject:isa forKeyedSubscript:kAAAnalyticsCliqueStatus];
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001BF52C()
{
  v17 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315394;
    v8 = v4[5];
    v9 = v4[7];
    sub_1000080F8(v4 + 2, v8);
    v10 = (*(v9 + 64))(v8, v9);
    v12 = sub_10021145C(v10, v11, &v16);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v13;
    *v6 = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to attach Octagon Status: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001BF774(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001BF798, 0, 0);
}

uint64_t sub_1001BF798()
{
  v1 = type metadata accessor for InheritancePreflightHealthCheck(0);
  sub_1001B3BF4(v1, &off_1003ACF10);
  sub_1000080F8(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1001BF880;

  return sub_10013C9D8(0x86AC351052600000, 32);
}

uint64_t sub_1001BF880(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1001BF994;
  }

  else
  {
    v4 = sub_1001C5EAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001BF994()
{
  v16 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v9 = *(v5 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName);
    v10 = *(v5 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8);

    v11 = sub_10021145C(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to attach Octagon Status: %@", v6, 0x16u);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v8);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001BFBE4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001BFC08, 0, 0);
}

uint64_t sub_1001BFC08()
{
  v1 = type metadata accessor for InheritanceRecordsCleaner(0);
  sub_1001C3CFC(v1, &off_1003AD2B0);
  sub_1000080F8(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1001BFCD4;

  return sub_10013C9D8(0x86AC351052600000, 32);
}

uint64_t sub_1001BFCD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1001BFDE8;
  }

  else
  {
    v4 = sub_1001C5EAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001BFDE8()
{
  v16 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v9 = *(v5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName);
    v10 = *(v5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8);

    v11 = sub_10021145C(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to attach Octagon Status: %@", v6, 0x16u);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v8);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001C0034(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001C0058, 0, 0);
}

uint64_t sub_1001C0058()
{
  if (v0[8])
  {
    v1 = type metadata accessor for CustodianPreflightHealthCheck(0);
    sub_1000B5EDC(v1, &off_1003A7510);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1001C0174;

    return sub_10013E2C0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001C0174(int a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1001C0330;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1001C029C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001C029C()
{
  v1 = v0[8];
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  sub_10000839C(v0 + 2);
  [v1 setObject:isa forKeyedSubscript:kAAAnalyticsCircleSyncingStatus];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001C0330()
{
  v16 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v9 = *(v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName);
    v10 = *(v5 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8);

    v11 = sub_10021145C(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to attach SOS Status: %@", v6, 0x16u);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v8);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001C0580(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_1001C05A0, 0, 0);
}

uint64_t sub_1001C05A0()
{
  if (v0[7])
  {
    v1 = v0[8];
    v2 = v1[5];
    v3 = v1[7];
    sub_1000080F8(v1 + 2, v2);
    (*(v3 + 80))(v2, v3);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1001C06C0;

    return sub_10013E2C0();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1001C06C0(int a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1001C087C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1001C07E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001C07E8()
{
  v1 = v0[7];
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  sub_10000839C(v0 + 2);
  [v1 setObject:isa forKeyedSubscript:kAAAnalyticsCircleSyncingStatus];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001C087C()
{
  v17 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315394;
    v8 = v4[5];
    v9 = v4[7];
    sub_1000080F8(v4 + 2, v8);
    v10 = (*(v9 + 64))(v8, v9);
    v12 = sub_10021145C(v10, v11, &v16);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v13;
    *v6 = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to attach SOS Status: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001C0AC4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001C0AE8, 0, 0);
}

uint64_t sub_1001C0AE8()
{
  if (v0[8])
  {
    v1 = type metadata accessor for InheritancePreflightHealthCheck(0);
    sub_1001B3BF4(v1, &off_1003ACF10);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1001C0C04;

    return sub_10013E2C0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001C0C04(int a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1001C0D2C;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1001C5EA0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001C0D2C()
{
  v16 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v9 = *(v5 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName);
    v10 = *(v5 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8);

    v11 = sub_10021145C(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to attach SOS Status: %@", v6, 0x16u);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v8);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001C0F7C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001C0FA0, 0, 0);
}

uint64_t sub_1001C0FA0()
{
  if (v0[8])
  {
    v1 = type metadata accessor for InheritanceRecordsCleaner(0);
    sub_1001C3CFC(v1, &off_1003AD2B0);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1001C1094;

    return sub_10013E2C0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001C1094(int a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1001C11BC;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1001C5EA0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001C11BC()
{
  v16 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v9 = *(v5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName);
    v10 = *(v5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8);

    v11 = sub_10021145C(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Failed to attach SOS Status: %@", v6, 0x16u);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v8);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001C1408()
{
  v0 = type metadata accessor for CustodianPreflightHealthCheck(0);
  sub_1000B5EF8(v0, &off_1003A7510);
  v1 = [*(*sub_1000080F8(v6 v6[3]) + 16)];
  if (v1 && (v2 = v1, v3 = [v1 aa_altDSID], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  sub_10000839C(v6);
  return v4;
}

uint64_t sub_1001C14E8()
{
  v1 = v0[5];
  v2 = v0[7];
  sub_1000080F8(v0 + 2, v1);
  (*(v2 + 88))(v8, v1, v2);
  v3 = [*(*sub_1000080F8(v8 v8[3]) + 16)];
  if (v3 && (v4 = v3, v5 = [v3 aa_altDSID], v4, v5))
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  sub_10000839C(v8);
  return v6;
}

uint64_t sub_1001C15CC()
{
  v0 = type metadata accessor for InheritancePreflightHealthCheck(0);
  sub_1001B3C10(v0, &off_1003ACF10);
  v1 = [*(*sub_1000080F8(v6 v6[3]) + 16)];
  if (v1 && (v2 = v1, v3 = [v1 aa_altDSID], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  sub_10000839C(v6);
  return v4;
}

uint64_t sub_1001C16AC()
{
  v0 = type metadata accessor for InheritanceRecordsCleaner(0);
  sub_1001C3D18(v0, &off_1003AD2B0);
  v1 = [*(*sub_1000080F8(v6 v6[3]) + 16)];
  if (v1 && (v2 = v1, v3 = [v1 aa_altDSID], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  sub_10000839C(v6);
  return v4;
}

id sub_1001C1778()
{
  sub_1001C1408();
  v1 = v0;
  type metadata accessor for CustodianPreflightHealthCheck(0);
  v2 = sub_1000B6014();
  v3 = v2;
  if (v1)
  {

    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 authKitAccountWithAltDSID:v4];

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v5;
}

id sub_1001C184C()
{
  sub_1001C15CC();
  v1 = v0;
  type metadata accessor for InheritancePreflightHealthCheck(0);
  v2 = sub_1001B3D2C();
  v3 = v2;
  if (v1)
  {

    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 authKitAccountWithAltDSID:v4];

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v5;
}

id sub_1001C1920()
{
  sub_1001C16AC();
  v1 = v0;
  type metadata accessor for InheritanceRecordsCleaner(0);
  v2 = sub_1001C3E34();
  v3 = v2;
  if (v1)
  {

    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 authKitAccountWithAltDSID:v4];

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1001C19D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a2;
  v34 = a1;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F78 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAB48);
  sub_1001C51A8(a3, v13, type metadata accessor for InheritanceInvitationRecord);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = a3;
    v20 = v19;
    v37[0] = v19;
    *v18 = 136315138;
    type metadata accessor for UUID();
    sub_1001C5E58(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1001C5600(v13, type metadata accessor for InheritanceInvitationRecord);
    v24 = sub_10021145C(v21, v23, v37);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Stating Cleanup for %s", v18, 0xCu);
    sub_10000839C(v20);
    a3 = v33;

    a4 = v32;
  }

  else
  {

    sub_1001C5600(v13, type metadata accessor for InheritanceInvitationRecord);
  }

  v25 = UUID.uuidString.getter();
  v27 = v26;
  v28 = swift_allocObject();
  v29 = v34;
  v28[2] = v35;
  v28[3] = v25;
  v28[4] = v27;
  v28[5] = v29;
  v28[6] = v36;
  (*(v8 + 16))(v10, a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__inheritanceStorage, v7);

  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  sub_1000080F8(v37, v37[3]);
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = sub_1001C50B4;
  v30[4] = v28;

  sub_100217018(a3, sub_1001C50C4, v30);

  return sub_10000839C(v37);
}

uint64_t sub_1001C1DE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, void *))
{
  if (a1)
  {
    v12 = a2;
    v13 = a1;
    swift_errorRetain();
    v14 = _convertErrorToNSError(_:)();
    v15 = [v14 aa_partialErrorsByName];

    if (v15)
    {
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v16 + 16))
      {

        sub_1001C442C(v16, (a4 + 16), v12, a3, a5, a6);

        return a7(a1, a2, a3, a4, a5, a6);
      }
    }

    if (a3)
    {
      v17 = a3;
    }

    else
    {
      v12 = 0;
      v17 = 0xE000000000000000;
    }

    v18._countAndFlagsBits = v12;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a5;
    v20._object = a6;
    String.append(_:)(v20);
    swift_beginAccess();
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_1002CEFC4(v13, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v23;
    swift_endAccess();
  }

  return a7(a1, a2, a3, a4, a5, a6);
}

void sub_1001C1FEC(uint64_t a1, void (*a2)(id))
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (*(v4 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = v4;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_1001C5E58(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAB48);
    v8 = v19;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = _convertErrorToNSError(_:)();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to clean up beneficiary: %@", v11, 0xCu);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
    }

    v14 = v8;
    a2(v8);
  }

  else
  {
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAB48);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully cleaning up beneficiary.", v18, 2u);
    }

    a2(0);
  }
}

uint64_t sub_1001C2348(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, void), uint64_t a4)
{
  v35 = a4;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for BeneficiaryInfoRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v17);
  v19 = (&v34 - v18);
  sub_1001C50D0(a1, &v34 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAB48);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error fetching beneficiary record: %@", v24, 0xCu);
      sub_100008D3C(v25, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a3(v20, 0, 0);
  }

  else
  {
    sub_1001C5140(v19, v16, type metadata accessor for BeneficiaryInfoRecord);
    sub_1001C51A8(v16, v14, type metadata accessor for BeneficiaryInfoRecord);
    v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v29 = (v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_1001C5140(v14, v30 + v28, type metadata accessor for BeneficiaryInfoRecord);
    *(v30 + v29) = a2;
    v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v31 = a3;
    v31[1] = v35;
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = a2;
    v33[5] = sub_1001C5400;
    v33[6] = v30;
    swift_retain_n();

    sub_1000BCD5C(0, 0, v9, &unk_1003448E0, v33);

    return sub_1001C5600(v16, type metadata accessor for BeneficiaryInfoRecord);
  }
}

void sub_1001C27AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a3;
  v34 = a4;
  v35 = a1;
  v6 = type metadata accessor for BeneficiaryInfoRecord(0);
  v7 = v6 - 8;
  v32 = *(v6 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v6);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003E0D30, qword_100344420);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = (a2 + *(v7 + 32));
  v14 = *v13;
  v15 = v13[1];
  v16 = *(a2 + *(v7 + 28) + 8);
  v17.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v30 = v15;
  v31 = v14;
  v18 = String._bridgeToObjectiveC()();
  if (v16)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  v19 = [objc_allocWithZone(AABeneficiaryInfo) initWithBeneficiaryID:v17.super.isa benefactorAltDSID:v18 handle:v16];

  v20 = v37;
  (*(v10 + 16))(v12, v37 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__inheritanceRequestManager, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v12, v9);
  v21 = v38;
  v22 = v33;
  sub_1001C51A8(a2, v33, type metadata accessor for BeneficiaryInfoRecord);
  v23 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v24 = swift_allocObject();
  v25 = v34;
  v26 = v35;
  v24[2] = v20;
  v24[3] = v26;
  v27 = v36;
  v24[4] = v25;
  v24[5] = v27;
  sub_1001C5140(v22, v24 + v23, type metadata accessor for BeneficiaryInfoRecord);
  v28 = v26;

  sub_1001F9660(v19, v31, v30, sub_1001C5840, v24);
}

uint64_t sub_1001C2A80(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, void, void), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAB48);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "👾 Failed cleaning up beneficiary with error: %@", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();

    sub_1001C58B8(a3, 0, a1, a2, a2, "%s Finished reporting failed event.", v23);
  }

  else
  {
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAB48);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "🌞 Successfully completed cleaning up beneficiary.", v20, 2u);
    }

    sub_1001C58B8(a3, 1, 0, a2, a2, "%s Finished reporting successful event.", v23);
  }

  v21 = type metadata accessor for BeneficiaryInfoRecord(0);
  return a4(a1, *(a6 + *(v21 + 20)), *(a6 + *(v21 + 20) + 8));
}

uint64_t sub_1001C2D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001C2E20, 0, 0);
}

uint64_t sub_1001C2E20()
{
  v1 = kInheritanceCleanupStaleRecordsEventName;
  sub_1001C16AC();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() analyticsEventWithName:v1 altDSID:v3 flowID:0];
  v0[13] = v4;

  if (v4)
  {
    v5 = sub_1001C1920();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for InheritanceRecordsCleaner(0);
      v7 = sub_1001C3E34();
      [v7 securityLevelForAccount:v6];
    }

    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[10];
    v18 = v0[7];
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v4 setObject:isa forKeyedSubscript:kAAAnalyticsSecurityLevel];

    (*(v16 + 16))(v15, v18 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__cdpController, v17);
    Dependency.wrappedValue.getter();
    (*(v16 + 8))(v15, v17);
    v20 = [objc_allocWithZone(ACAccountStore) init];
    v21 = [v20 aa_primaryAppleAccount];

    if (v21)
    {
      v22 = [v21 aa_personID];

      if (v22)
      {
        [objc_opt_self() isICDPEnabledForDSID:v22];
      }
    }

    v23 = Bool._bridgeToObjectiveC()().super.super.isa;
    sub_10000839C(v0 + 2);
    [v4 setObject:v23 forKeyedSubscript:kAAAnalyticsCdpStatus];

    v24 = v4;
    sub_1001BEA98(v4);
    v25 = swift_task_alloc();
    v0[14] = v25;
    *v25 = v0;
    v25[1] = sub_1001C3214;

    return sub_1001BFBE4(v4);
  }

  else
  {
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAB48);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "createEvent: Self is nil. Aborting Report Event.", v11, 2u);
    }

    v12 = v0[8];

    v12(0);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1001C3214()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 120) = v4;
  *v4 = v3;
  v4[1] = sub_1001C3384;

  return sub_1001C0F7C(v2);
}

uint64_t sub_1001C3384()
{

  return _swift_task_switch(sub_1001C3480, 0, 0);
}

uint64_t sub_1001C3480()
{
  v16 = v0;
  if (qword_1003D7F78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB48);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_10021145C(*(v7 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName), *(v7 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8), &v15);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v6;
    *v9 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Event created %@", v8, 0x16u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v10);
  }

  v12 = *(v0 + 104);
  (*(v0 + 64))(v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1001C3690()
{
  v1 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__inheritanceStorage;
  v2 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__inheritanceRequestManager;
  v4 = sub_100005814(&qword_1003E0D30, qword_100344420);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__followUpController;
  v6 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__cdpController;
  v8 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__accountStore;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__akAccountManager;
  v12 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__keychainManager;
  v14 = sub_100005814(&qword_1003E1670, &qword_1003447F0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1001C38F8()
{
  sub_1001C3690();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceRecordsCleaner(uint64_t a1)
{
  result = qword_1003E1708;
  if (!qword_1003E1708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C39A4(uint64_t a1)
{
  sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
  if (v1 <= 0x3F)
  {
    sub_1001C3C68(319, &qword_1003E0CA0, type metadata accessor for InheritanceRequestManager);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
          if (v5 <= 0x3F)
          {
            sub_1001C3C68(319, &qword_1003DB710, sub_10000DA6C);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, qword_1003E1350, &qword_1003E0400, &qword_100344870);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001C3C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Dependency();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001C3CBC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName);

  return v1;
}

uint64_t sub_1001C3D34(void x0_0, void x1_0, uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = sub_100005814(a1, a2);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, *v4 + *a3, v6);
  Dependency.wrappedValue.getter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1001C3E34()
{
  v1 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - v3;
  (*(v2 + 16))(v6 - v3, *v0 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__akAccountManager, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[1];
}

unint64_t sub_1001C3F38(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1001C5E58(&qword_1003DB0B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for CustodianRecoveryInfoRecord(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001C427C(uint64_t result, uint64_t a2)
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
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001C442C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v46._countAndFlagsBits = a5;
  v46._object = a6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  if (a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  v45 = v12;
  v13 = 0xE000000000000000;
  if (a4)
  {
    v13 = a4;
  }

  v44 = v13;

  v14 = 0;
  v41 = v11;
  v42 = v7;
  v43 = a2;
  while (v10)
  {
LABEL_16:
    v16 = __clz(__rbit64(v10)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(a1 + 56) + 8 * v16);

    swift_errorRetain();

    v21._countAndFlagsBits = v45;
    v21._object = v44;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 58;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    String.append(_:)(v46);
    v23._countAndFlagsBits = 59;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = v18;
    v24._object = v19;
    String.append(_:)(v24);
    swift_beginAccess();
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a2;
    v48 = *a2;
    *a2 = 0x8000000000000000;
    v28 = sub_1003084DC(0, 0xE000000000000000);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_29;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = v48;
        if (v27)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1002CFE94();
        v35 = v48;
        if (v32)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_1002CC470(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1003084DC(0, 0xE000000000000000);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_31;
      }

      v28 = v33;
      v35 = v48;
      if (v32)
      {
LABEL_9:
        *(v35[7] + 8 * v28) = v20;

        goto LABEL_10;
      }
    }

    v35[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v35[6] + 16 * v28);
    *v36 = 0;
    v36[1] = 0xE000000000000000;
    *(v35[7] + 8 * v28) = v20;
    v37 = v35[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_30;
    }

    v35[2] = v39;
LABEL_10:
    v10 &= v10 - 1;
    a2 = v43;
    *v43 = v35;
    swift_endAccess();

    v11 = v41;
    v7 = v42;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
    }

    v10 = *(v7 + 8 * v15);
    ++v14;
    if (v10)
    {
      v14 = v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a2;
  v9 = type metadata accessor for InheritanceInvitationRecord(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v61 = &v59 - v15;
  v16 = __chkstk_darwin(v14);
  v68 = &v59 - v17;
  v64 = v18;
  __chkstk_darwin(v16);
  v20 = &v59 - v19;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v60 = a4;
  v63 = v21;
  v21[4] = a5;
  v22 = swift_allocObject();
  v59 = a3;

  v65 = a5;

  v23 = _swiftEmptyArrayStorage;
  v24 = sub_100308AA8(_swiftEmptyArrayStorage);
  v62 = v22;
  *(v22 + 16) = v24;
  v25 = *(a1 + 16);
  v66 = v10;
  if (v25)
  {
    v26 = *(v10 + 80);
    v27 = *(v10 + 72);
    v67 = ((v26 + 32) & ~v26);
    v28 = &v67[a1];
    do
    {
      sub_1001C51A8(v28, v20, type metadata accessor for InheritanceInvitationRecord);
      if (*&v20[*(v9 + 32)] == 4)
      {
        sub_1001C5140(v20, v13, type metadata accessor for InheritanceInvitationRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E03F4(0, v23[2] + 1, 1);
          v23 = aBlock[0];
        }

        v31 = v23[2];
        v30 = v23[3];
        if (v31 >= v30 >> 1)
        {
          sub_1002E03F4((v30 > 1), v31 + 1, 1);
          v23 = aBlock[0];
        }

        v23[2] = v31 + 1;
        sub_1001C5140(v13, &v67[v23 + v31 * v27], type metadata accessor for InheritanceInvitationRecord);
      }

      else
      {
        sub_1001C5600(v20, type metadata accessor for InheritanceInvitationRecord);
      }

      v28 += v27;
      --v25;
    }

    while (v25);
  }

  v32 = v23[2];
  if (v32)
  {
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAB48);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v69;
    v38 = v66;
    if (v36)
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v23[2];

      _os_log_impl(&_mh_execute_header, v34, v35, "%ld declined record(s) found, starting cleanup", v39, 0xCu);
    }

    else
    {
    }

    v44 = v68;
    v45 = *(v37 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_queue);
    v46 = *(v38 + 80);
    v47 = v23 + ((v46 + 32) & ~v46);
    v66 = *(v38 + 72);
    v67 = v45;
    v64 = (v64 + ((v46 + 16) & ~v46) + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v46 + 16) & ~v46;
    v48 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
    v50 = v61;
    v49 = v62;
    do
    {
      sub_1001C51A8(v47, v44, type metadata accessor for InheritanceInvitationRecord);
      sub_1001C51A8(v44, v50, type metadata accessor for InheritanceInvitationRecord);
      v51 = swift_allocObject();
      sub_1001C5140(v50, v51 + v65, type metadata accessor for InheritanceInvitationRecord);
      *(v51 + v64) = v37;
      *(v51 + v48) = v49;
      v52 = type metadata accessor for AsyncOperation();
      v53 = objc_allocWithZone(v52);
      v53[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
      v54 = &v53[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
      *v54 = sub_1001C4FAC;
      v54[1] = v51;
      v71.receiver = v53;
      v71.super_class = v52;
      v37 = v69;

      v55 = objc_msgSendSuper2(&v71, "init");
      [v67 addOperation:v55];

      v44 = v68;
      sub_1001C5600(v68, type metadata accessor for InheritanceInvitationRecord);
      v47 += v66;
      --v32;
    }

    while (v32);

    v56 = swift_allocObject();
    v56[2] = v49;
    v56[3] = sub_1001C4DFC;
    v56[4] = v63;
    aBlock[4] = sub_1001C5064;
    aBlock[5] = v56;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003AD3E8;
    v57 = _Block_copy(aBlock);

    [v67 addBarrierBlock:v57];
    _Block_release(v57);
  }

  else
  {

    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAB48);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "No declined records found. Aborting cleanup.", v43, 2u);
    }

    sub_1001BC4F0(v59, v60, v65);
  }
}

uint64_t sub_1001C4E08()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001C4E40()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[11], v5);
  sub_100012324(*(v4 + v1[12]), *(v4 + v1[12] + 8));

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1001C4FAC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001C19D8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1001C5070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C50D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C5140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C51A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C5210()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void sub_1001C5400(void *a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_1001C27AC(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_1001C54D8(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 56);
}

uint64_t sub_1001C5538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000082A8;

  return sub_1001C2D50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001C5600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001C5660()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, v2 + v9);
}

uint64_t sub_1001C5840(void *a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1001C2A80(a1, v4, v5, v6, v7, v8);
}

void sub_1001C58B8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const char *a6, ...)
{
  if (a1)
  {
    v10 = a1;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v10 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    if (a3)
    {
      a3 = _convertErrorToNSError(_:)();
    }

    [v10 populateUnderlyingErrorsStartingWithRootError:a3];

    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAB48);
    v13 = v10;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      osloga = a6;
      v38 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8), &v38);
      *(v16 + 12) = 2080;
      v17 = a5;
      v18 = [v13 debugDescription];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = a4;
      v22 = v21;

      a5 = v17;
      v23 = sub_10021145C(v19, v22, &v38);
      a4 = v20;

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s - Reporting Record Cleaning Event %s", v16, 0x16u);
      swift_arrayDestroy();
      a6 = osloga;
    }

    [*(a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_analyticsReporter) sendEvent:v13];

    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10021145C(*(a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName), *(a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8), &v38);
      _os_log_impl(&_mh_execute_header, oslog, v24, a6, v25, 0xCu);
      sub_10000839C(v26);

      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAB48);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v30 = 136315394;
      *(v30 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8), &v38);
      *(v30 + 12) = 2112;
      *(v30 + 14) = 0;
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - Event is nil: %@", v30, 0x16u);
      sub_100008D3C(v31, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v32);
    }

    oslog = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_10021145C(*(a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName), *(a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8), &v38);
      _os_log_impl(&_mh_execute_header, oslog, v33, a6, v34, 0xCu);
      sub_10000839C(v35);

      goto LABEL_16;
    }
  }

LABEL_16:
}

uint64_t sub_1001C5E58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001C5EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAB18);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Benefactor Manatee migration started.", v9, 2u);
  }

  sub_1000080F8((v3 + 16), *(v3 + 40));
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v3;

  sub_10021AD90(sub_1001C84E8, v10);
}

uint64_t sub_1001C6010(void *a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BenefactorInfoRecord(0) - 8;
  __chkstk_darwin(v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAB18);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v48 = a1;
      aBlock[0] = v26;
      *v25 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v27 = String.init<A>(describing:)();
      v29 = a3;
      v30 = sub_10021145C(v27, v28, aBlock);

      *(v25 + 4) = v30;
      a3 = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to fetch Benefactors. Aborting migration : %s", v25, 0xCu);
      sub_10000839C(v26);
    }

    return a3(a1);
  }

  else
  {
    v41 = a3;
    v42 = a4;
    v32 = a1[2];
    if (v32)
    {
      v33 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v34 = *(v19 + 72);
      do
      {
        sub_1001C84F8(v33, v21);
        sub_1001C65D8(v21);
        sub_1001C855C(v21);
        v33 += v34;
        --v32;
      }

      while (v32);
    }

    sub_100071C74();
    (*(v15 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v14);
    v35 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v17, v14);
    v36 = swift_allocObject();
    v37 = v42;
    v36[2] = v41;
    v36[3] = v37;
    v36[4] = a5;
    aBlock[4] = sub_1001C85F8;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003AD538;
    v38 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v48 = _swiftEmptyArrayStorage;
    sub_10016FE34(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v39 = v44;
    v40 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v38);

    (*(v46 + 8))(v39, v40);
    (*(v43 + 8))(v13, v45);
  }
}

void sub_1001C65D8(uint64_t a1)
{
  v2 = type metadata accessor for BenefactorInfoRecord(0);
  v55 = *(v2 - 1);
  v3 = *(v55 + 64);
  v4 = __chkstk_darwin(v2);
  v5 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v57 = v52 - v7;
  v8 = __chkstk_darwin(v6);
  v59 = v52 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = v52 - v11;
  v13 = __chkstk_darwin(v10);
  v58 = v52 - v14;
  __chkstk_darwin(v13);
  v16 = v52 - v15;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100008D04(v17, qword_1003FAB18);
  sub_1001C84F8(a1, v16);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52[1] = v18;
    v22 = v21;
    v23 = swift_slowAlloc();
    v53 = a1;
    v24 = v23;
    v60 = v23;
    *v22 = 136315138;
    type metadata accessor for UUID();
    v54 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_1001C855C(v16);
    v28 = sub_10021145C(v25, v27, &v60);
    v5 = v54;

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Migrating Records for beneficiaryID - %s.", v22, 0xCu);
    sub_10000839C(v24);
    a1 = v53;
  }

  else
  {

    sub_1001C855C(v16);
  }

  v29 = v59;
  if (*(a1 + v2[9]))
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "BenefactorInfoRecord is already in Manatee.", v32, 2u);
    }
  }

  else
  {
    v33 = a1;
    sub_1001C84F8(a1, v12);
    v34 = type metadata accessor for UUID();
    v35 = *(*(v34 - 8) + 16);
    v35(v29, v12, v34);
    v35(v29 + v2[7], &v12[v2[7]], v34);
    v36 = v2[8];
    if (v12[v2[9]])
    {
      v37 = *&v12[v36];
      v38 = *&v12[v36 + 8];
      v39 = (v29 + v36);
      *v39 = v37;
      v39[1] = v38;
      sub_100015D6C(v37, v38);
    }

    else
    {
      *(v29 + v36) = xmmword_10033F8D0;
    }

    v40 = &v12[v2[5]];
    v42 = *v40;
    v41 = *(v40 + 1);

    sub_1001C855C(v12);
    v43 = (v29 + v2[5]);
    *v43 = v42;
    v43[1] = v41;
    *(v29 + v2[6]) = 2;
    *(v29 + v2[9]) = 1;
    v44 = v58;
    sub_1001C861C(v29, v58);
    v45 = v56;
    dispatch_group_enter(*(v56 + 176));
    sub_1000080F8((v45 + 16), *(v45 + 40));
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = v57;
    sub_1001C84F8(v44, v57);
    sub_1001C84F8(v33, v5);
    v48 = *(v55 + 80);
    v49 = (v48 + 24) & ~v48;
    v50 = (v3 + v48 + v49) & ~v48;
    v51 = swift_allocObject();
    *(v51 + 16) = v46;
    sub_1001C861C(v47, v51 + v49);
    sub_1001C861C(v5, v51 + v50);

    sub_10021BA80(v44, sub_1001C8844, v51);

    sub_1001C855C(v44);
  }
}

uint64_t sub_1001C6B40(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB18);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Benefactor Manatee migration complete.", v8, 2u);
  }

  v9 = *(a3 + 184);
  swift_errorRetain();
  a1(v9);
}

uint64_t sub_1001C6C5C()
{
  sub_10000839C((v0 + 16));
  sub_1001C8BF0(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1001C6CF4()
{
  v1 = v0;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Manatee status changed, fetching new manatee status.", v5, 2u);
  }

  sub_1000080F8((v1 + 16), *(v1 + 40));
  v6 = swift_allocObject();
  swift_weakInit();

  sub_10021E8F0(sub_1001C8DFC, v6);
}

void sub_1001C6E38(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAB18);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19[0] = v7;
      *v6 = 136315138;
      v19[3] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v8 = String.init<A>(describing:)();
      v10 = sub_10021145C(v8, v9, v19);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to fetch manatee status: %s", v6, 0xCu);
      sub_10000839C(v7);

      return;
    }

    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Account is not manatee, skipping manatee migration.", v17, 2u);
    }

LABEL_18:

    return;
  }

  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAB18);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Account is now manatee, kicking off migration.", v14, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001C5EB0(OSTransaction.complete(), 0);
  }
}

void sub_1001C71DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v84 = a4;
  v82 = type metadata accessor for UUID();
  v80 = *(v82 - 8);
  v6 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BenefactorInfoRecord(0);
  v78 = *(v7 - 8);
  v8 = v78[8];
  v9 = __chkstk_darwin(v7 - 8);
  v81 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v72 - v10;
  v12 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v12);
  v14 = (&v72 - v13);
  sub_100012D04(a1, &v72 - v13, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAB18);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v87[0] = v20;
      *v19 = 136315138;
      *&v85[0] = v15;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v21 = String.init<A>(describing:)();
      v23 = sub_10021145C(v21, v22, v87);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save BenefactorInfoRecord - %s", v19, 0xCu);
      sub_10000839C(v20);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 184) = v15;
      swift_errorRetain();
    }

    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (v25)
    {
      v26 = *(v25 + 176);

      dispatch_group_leave(v26);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v28 = sub_100008D04(v27, qword_1003FAB18);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "BenefactorInfoRecord may have been accepted pre-CDP.\nRe-accepting and notifying the owner to prompt a new key transfer.", v31, 2u);
    }

    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    v33 = v84;
    if (v32)
    {
      sub_10016FFDC(v32 + 56, v87);

      sub_1001C84F8(v33, v11);
      v34 = (*(v78 + 80) + 24) & ~*(v78 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = a2;
      v36 = v35;
      v73 = v35;
      sub_1001C861C(v11, v35 + v34);
      v37 = objc_allocWithZone(type metadata accessor for InheritanceInvitationActionAnalyticsEvent(0));
      v77 = v28;
      v78 = v37;
      sub_100005814(&qword_1003E30D0, &unk_100340690);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10033E5C0;
      strcpy((inited + 32), "isFamilyInvite");
      *(inited + 47) = -18;

      *(inited + 48) = Bool._bridgeToObjectiveC()();
      *(inited + 56) = 0xD000000000000013;
      *(inited + 64) = 0x8000000100330290;
      *(inited + 72) = Int._bridgeToObjectiveC()();
      sub_1003093D0(inited);
      swift_setDeallocating();
      sub_100005814(&unk_1003E8C10, &unk_100344990);
      swift_arrayDestroy();
      v39 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_10033EB30;
      strcpy((v40 + 32), "didCDPRepair");
      *(v40 + 45) = 0;
      *(v40 + 46) = -5120;
      LOBYTE(v85[0]) = 3;
      String.init<A>(describing:)();
      v41 = String._bridgeToObjectiveC()();

      *(v40 + 48) = v41;
      sub_1003093D0(v40);
      swift_setDeallocating();
      sub_100008D3C(v40 + 32, &unk_1003E8C10, &unk_100344990);
      v75 = v39;
      dispatch thunk of AAFTimedAnalyticsEvent.appendEvent(data:)();

      v42 = swift_allocObject();
      *(v42 + 16) = 1;
      v74 = sub_1001C8A14;
      *(v42 + 24) = v39;
      *(v42 + 32) = sub_1001C8A14;
      *(v42 + 40) = v36;
      v76 = sub_1000080F8(v88, v88[3]);
      sub_10016FFDC(v87, v85);
      v43 = v79;
      v44 = v80;
      v45 = *(v80 + 16);
      v78 = v14;
      v46 = v82;
      v45(v79, v83, v82);
      v47 = (*(v44 + 80) + 136) & ~*(v44 + 80);
      v48 = (v6 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      v50 = v85[5];
      *(v49 + 80) = v85[4];
      *(v49 + 96) = v50;
      *(v49 + 112) = v85[6];
      *(v49 + 128) = v86;
      v51 = v85[1];
      *(v49 + 16) = v85[0];
      *(v49 + 32) = v51;
      v52 = v85[3];
      *(v49 + 48) = v85[2];
      *(v49 + 64) = v52;
      v53 = v49 + v47;
      v33 = v84;
      v54 = v46;
      v14 = v78;
      (*(v44 + 32))(v53, v43, v54);
      v56 = v74;
      v55 = v75;
      *(v49 + v48) = v75;
      v57 = v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
      v58 = v73;
      *v57 = v56;
      *(v57 + 8) = v58;
      *(v57 + 16) = 1;
      v59 = (v49 + ((v48 + 39) & 0xFFFFFFFFFFFFFFF8));
      *v59 = sub_10016FFCC;
      v59[1] = v42;
      v60 = v55;
      swift_retain_n();
      v61 = v60;

      sub_10021B0E8(v83, sub_100170158, v49);

      sub_1001C8BF0(v87);
    }

    v62 = v33;
    v63 = v81;
    sub_1001C84F8(v62, v81);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v87[0] = v67;
      *v66 = 136315138;
      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      sub_1001C855C(v63);
      v71 = sub_10021145C(v68, v70, v87);

      *(v66 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, "Manatee migration complete for BenefactorInfoRecord with beneficiaryID - %s", v66, 0xCu);
      sub_10000839C(v67);
    }

    else
    {

      sub_1001C855C(v63);
    }

    sub_100008D3C(v14, &unk_1003E1DD0, &qword_1003444D0);
  }
}

void sub_1001C7BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BenefactorInfoRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAB18);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26[0] = v14;
      *v13 = 136315138;
      v25[0] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v15 = String.init<A>(describing:)();
      v17 = sub_10021145C(v15, v16, v26);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to notify owner of acceptance - %s", v13, 0xCu);
      sub_10000839C(v14);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 184) = a1;
      swift_errorRetain();
    }

    swift_beginAccess();
    v19 = swift_weakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + 176);

      dispatch_group_leave(v20);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    if (v21)
    {
      sub_1000080F8((v21 + 16), *(v21 + 40));
      v22 = swift_allocObject();
      swift_weakInit();
      sub_1001C84F8(a3, v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v24 = swift_allocObject();
      v24[2] = v22;
      v24[3] = sub_1001C8C44;
      v24[4] = a2;
      sub_1001C861C(v9, v24 + v23);
      swift_retain_n();

      sub_10021C184(a3, sub_1001C8D84, v24);
    }
  }
}

void sub_1001C7F5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 176);

    dispatch_group_leave(v3);
  }
}

uint64_t sub_1001C7FC8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v43 = a4;
  v7 = type metadata accessor for BenefactorInfoRecord(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v13 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v13);
  v15 = (&v41 - v14);
  sub_100012D04(a1, &v41 - v14, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAB18);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error removing non-manatee Benefactor record.", v20, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 184) = v16;
      swift_errorRetain();
    }

    swift_errorRetain();
    a3(v16);
  }

  else
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAB18);
    sub_1001C84F8(v42, v12);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v26 = os_log_type_enabled(v24, v25);
    v41 = a3;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44[0] = v28;
      *v27 = 136315138;
      v29 = &v12[*(v7 + 20)];
      v31 = *v29;
      v30 = v29[1];

      sub_1001C855C(v12);
      v32 = sub_10021145C(v31, v30, v44);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Notified benefactor (%s).", v27, 0xCu);
      sub_10000839C(v28);
    }

    else
    {

      sub_1001C855C(v12);
    }

    sub_1001C84F8(v42, v10);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44[0] = v36;
      *v35 = 136315138;
      type metadata accessor for UUID();
      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      sub_1001C855C(v10);
      v40 = sub_10021145C(v37, v39, v44);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Manatee migration complete for BenefactorInfoRecord with beneficiaryID - %s", v35, 0xCu);
      sub_10000839C(v36);
    }

    else
    {

      sub_1001C855C(v10);
    }

    v41(0);
    return sub_100008D3C(v15, &unk_1003D9220, &unk_10033E8C0);
  }
}