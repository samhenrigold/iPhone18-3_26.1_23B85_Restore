uint64_t sub_100220038(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for BenefactorInfoRecord(0);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10022012C, 0, 0);
}

uint64_t sub_10022012C()
{
  v40 = v0;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(*(v0 + 24) + *(*(v0 + 64) + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FA9F0;
  }

  v2 = *(v0 + 64);
  v4 = *v1;
  v3 = v1[1];

  v5 = sub_1002E2BC4(v4, v3);

  v6 = [v5 privateCloudDatabase];
  *(v0 + 80) = v6;

  v7 = UUID.uuidString.getter();
  v9 = sub_1002E2EE0(v7, v8);
  *(v0 + 88) = v9;

  sub_10023E004();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v13 = v9;
  v14._countAndFlagsBits = v10;
  v14._object = v12;
  v15.super.isa = CKRecordID.init(recordName:zoneID:)(v14, v13).super.isa;
  *(v0 + 96) = v15;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 72);
  v17 = *(v0 + 24);
  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAA58);
  sub_10023FBA0(v17, v16, type metadata accessor for BenefactorInfoRecord);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 72);
  if (v21)
  {
    isa = v15.super.isa;
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 40);
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, &v39);
    *(v26 + 12) = 2080;
    (*(v24 + 16))(v23, v22 + *(v2 + 28), v25);
    sub_10023FC08(v22, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v6;
    v30 = v29;
    (*(v24 + 8))(v23, v25);
    v15.super.isa = isa;
    v31 = sub_10021145C(v27, v30, &v39);
    v6 = v28;

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s recordID:%s one-off record fetch", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(*(v0 + 72), type metadata accessor for BenefactorInfoRecord);
  }

  v32 = swift_task_alloc();
  *(v0 + 104) = v32;
  v33 = *(v0 + 24);
  *(v32 + 16) = v6;
  *(v32 + 24) = v15;
  *(v32 + 32) = v33;
  v34 = swift_task_alloc();
  *(v0 + 112) = v34;
  *v34 = v0;
  v34[1] = sub_100220608;
  v35 = *(v0 + 64);
  v36 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v36, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_10023E050, v32, v35);
}

uint64_t sub_100220608()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1002207B0;
  }

  else
  {

    v2 = sub_100220724;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100220724()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002207B0()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

void sub_100220850(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v23 = a2;
  v7 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for CustodianshipInfoRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_10023FBA0(a4, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipInfoRecord);
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = (v14 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_10023FC6C(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for CustodianshipInfoRecord);
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = v23;
  *(v18 + v17) = v24;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_10023F908;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003B0878;
  v20 = _Block_copy(aBlock);

  v21 = v19;

  [v21 fetchRecordWithID:v25 completionHandler:v20];
  _Block_release(v20);
}

void sub_100220B00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v23 = a2;
  v7 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for CustodianRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_10023FBA0(a4, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = (v14 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_10023FC6C(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for CustodianRecord);
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = v23;
  *(v18 + v17) = v24;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_100240C44;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003B0AA8;
  v20 = _Block_copy(aBlock);

  v21 = v19;

  [v21 fetchRecordWithID:v25 completionHandler:v20];
  _Block_release(v20);
}

void sub_100220DB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a3;
  v23 = a2;
  v7 = sub_100005814(&qword_1003E3630, &unk_100346AA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for BenefactorInfoRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_10023FBA0(a4, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BenefactorInfoRecord);
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = (v14 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_10023FC6C(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for BenefactorInfoRecord);
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = v23;
  *(v18 + v17) = v24;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_10023E240;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003B0440;
  v20 = _Block_copy(aBlock);

  v21 = v19;

  [v21 fetchRecordWithID:v25 completionHandler:v20];
  _Block_release(v20);
}

uint64_t sub_100221060(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = a4;
  v11 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v71 - v12;
  v14 = type metadata accessor for UUID();
  v82 = *(v14 - 8);
  v83 = v14;
  __chkstk_darwin(v14);
  v81 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CustodianshipInfoRecord(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v22 = &v71 - v21;
  v23 = __chkstk_darwin(v20);
  result = __chkstk_darwin(v23);
  v29 = &v71 - v28;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA58);
    sub_10023FBA0(a3, v29, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v85[0] = v80;
      *v33 = 136315650;
      *(v33 + 4) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v85);
      *(v33 + 12) = 2080;
      v35 = v81;
      v36 = v82;
      v37 = v83;
      (*(v82 + 16))(v81, v29, v83);
      sub_10023FC08(v29, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v36 + 8))(v35, v37);
      v41 = sub_10021145C(v38, v40, v85);

      *(v33 + 14) = v41;
      *(v33 + 22) = 2112;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 24) = v42;
      *v34 = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s recordID:%s one-off record fetch failed %@", v33, 0x20u);
      sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v29, type metadata accessor for CustodianshipInfoRecord);
    }

    v85[0] = a2;
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v79 = a5;
    v80 = a6;
    if (a1)
    {
      v43 = v27;
      v77 = v25;
      v78 = v26;
      v44 = *(a3 + *(v16 + 36));
      v45 = a1;
      sub_1000F80E0(v45, v44, v13);
      (*(v17 + 56))(v13, 0, 1, v16);
      v46 = v78;
      sub_10023FC6C(v13, v78, type metadata accessor for CustodianshipInfoRecord);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100008D04(v47, qword_1003FAA58);
      sub_10023FBA0(a3, v22, type metadata accessor for CustodianshipInfoRecord);
      v48 = v43;
      sub_10023FBA0(v46, v43, type metadata accessor for CustodianshipInfoRecord);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v74 = v49;
        v52 = v51;
        v75 = swift_slowAlloc();
        v85[0] = v75;
        *v52 = 136315650;
        *(v52 + 4) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v85);
        *(v52 + 12) = 2080;
        v53 = v82;
        v54 = v83;
        v72 = *(v82 + 16);
        v76 = v45;
        v55 = v81;
        v72(v81, v22, v83);
        v71 = type metadata accessor for CustodianshipInfoRecord;
        sub_10023FC08(v22, type metadata accessor for CustodianshipInfoRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v73 = v50;
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        v59 = *(v53 + 8);
        v59(v55, v54);
        v60 = sub_10021145C(v56, v58, v85);

        *(v52 + 14) = v60;
        *(v52 + 22) = 2080;
        v72(v55, v48, v54);
        sub_10023FC08(v48, v71);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        v64 = v55;
        v45 = v76;
        v59(v64, v54);
        v65 = sub_10021145C(v61, v63, v85);

        *(v52 + 24) = v65;
        v66 = v74;
        _os_log_impl(&_mh_execute_header, v74, v73, "%s recordID:%s one-off record fetch success newRecordID: %s", v52, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(v43, type metadata accessor for CustodianshipInfoRecord);
        sub_10023FC08(v22, type metadata accessor for CustodianshipInfoRecord);
      }

      v67 = v80;
      if (sub_1002E3E70())
      {
        sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_1003431D0;
        *(v68 + 32) = v45;
        v69 = v45;
        sub_1002EBDD8(v67, v68);

        swift_unknownObjectRelease();
      }

      v70 = v78;
      sub_10023FBA0(v78, v77, type metadata accessor for CustodianshipInfoRecord);
      sub_100005814(&unk_1003D9260, &unk_10033ECE0);
      CheckedContinuation.resume(returning:)();

      return sub_10023FC08(v70, type metadata accessor for CustodianshipInfoRecord);
    }
  }

  return result;
}

uint64_t sub_1002219CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v84 = a4;
  v11 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  __chkstk_darwin(v11 - 8);
  v13 = &v71 - v12;
  v14 = type metadata accessor for UUID();
  v82 = *(v14 - 8);
  v83 = v14;
  __chkstk_darwin(v14);
  v81 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CustodianRecord(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v22 = &v71 - v21;
  v23 = __chkstk_darwin(v20);
  result = __chkstk_darwin(v23);
  v29 = &v71 - v28;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA58);
    sub_10023FBA0(a3, v29, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v85[0] = v80;
      *v33 = 136315650;
      *(v33 + 4) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v85);
      *(v33 + 12) = 2080;
      v35 = v81;
      v36 = v82;
      v37 = v83;
      (*(v82 + 16))(v81, v29, v83);
      sub_10023FC08(v29, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v36 + 8))(v35, v37);
      v41 = sub_10021145C(v38, v40, v85);

      *(v33 + 14) = v41;
      *(v33 + 22) = 2112;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 24) = v42;
      *v34 = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s recordID:%s one-off record fetch failed %@", v33, 0x20u);
      sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v29, type metadata accessor for CustodianRecord);
    }

    v85[0] = a2;
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v79 = a5;
    v80 = a6;
    if (a1)
    {
      v43 = v27;
      v77 = v25;
      v78 = v26;
      v44 = *(a3 + *(v16 + 48));
      v45 = a1;
      sub_1000EF6D0(v45, v44, v13);
      (*(v17 + 56))(v13, 0, 1, v16);
      v46 = v78;
      sub_10023FC6C(v13, v78, type metadata accessor for CustodianRecord);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100008D04(v47, qword_1003FAA58);
      sub_10023FBA0(a3, v22, type metadata accessor for CustodianRecord);
      v48 = v43;
      sub_10023FBA0(v46, v43, type metadata accessor for CustodianRecord);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v74 = v49;
        v52 = v51;
        v75 = swift_slowAlloc();
        v85[0] = v75;
        *v52 = 136315650;
        *(v52 + 4) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v85);
        *(v52 + 12) = 2080;
        v53 = v82;
        v54 = v83;
        v72 = *(v82 + 16);
        v76 = v45;
        v55 = v81;
        v72(v81, v22, v83);
        v71 = type metadata accessor for CustodianRecord;
        sub_10023FC08(v22, type metadata accessor for CustodianRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v73 = v50;
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        v59 = *(v53 + 8);
        v59(v55, v54);
        v60 = sub_10021145C(v56, v58, v85);

        *(v52 + 14) = v60;
        *(v52 + 22) = 2080;
        v72(v55, v48, v54);
        sub_10023FC08(v48, v71);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        v64 = v55;
        v45 = v76;
        v59(v64, v54);
        v65 = sub_10021145C(v61, v63, v85);

        *(v52 + 24) = v65;
        v66 = v74;
        _os_log_impl(&_mh_execute_header, v74, v73, "%s recordID:%s one-off record fetch success newRecordID: %s", v52, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(v43, type metadata accessor for CustodianRecord);
        sub_10023FC08(v22, type metadata accessor for CustodianRecord);
      }

      v67 = v80;
      if (sub_1002E3E70())
      {
        sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_1003431D0;
        *(v68 + 32) = v45;
        v69 = v45;
        sub_1002EBDD8(v67, v68);

        swift_unknownObjectRelease();
      }

      v70 = v78;
      sub_10023FBA0(v78, v77, type metadata accessor for CustodianRecord);
      sub_100005814(&unk_1003D9200, &unk_10033EC90);
      CheckedContinuation.resume(returning:)();

      return sub_10023FC08(v70, type metadata accessor for CustodianRecord);
    }
  }

  return result;
}

uint64_t sub_100222348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v88 = a4;
  v11 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  __chkstk_darwin(v11 - 8);
  v13 = &v73 - v12;
  v14 = type metadata accessor for UUID();
  v86 = *(v14 - 8);
  v87 = v14;
  __chkstk_darwin(v14);
  v85 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BenefactorInfoRecord(0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v21 = &v73 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v73 - v23;
  v25 = __chkstk_darwin(v22);
  result = __chkstk_darwin(v25);
  v30 = &v73 - v29;
  if (a2)
  {
    v31 = result;
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAA58);
    sub_10023FBA0(a3, v30, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v89[0] = v84;
      *v35 = 136315650;
      *(v35 + 4) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v89);
      *(v35 + 12) = 2080;
      v37 = *(v31 + 28);
      v38 = v85;
      v39 = v86;
      v40 = v87;
      (*(v86 + 16))(v85, &v30[v37], v87);
      sub_10023FC08(v30, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v39 + 8))(v38, v40);
      v44 = sub_10021145C(v41, v43, v89);

      *(v35 + 14) = v44;
      *(v35 + 22) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 24) = v45;
      *v36 = v45;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s recordID:%s one-off record fetch failed %@", v35, 0x20u);
      sub_100008D3C(v36, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v30, type metadata accessor for BenefactorInfoRecord);
    }

    v89[0] = a2;
    sub_100005814(&qword_1003E3630, &unk_100346AA0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v83 = a5;
    v84 = a6;
    if (a1)
    {
      v81 = v27;
      v82 = v28;
      v46 = *(a3 + *(result + 36));
      v47 = result;
      v48 = a1;
      sub_1001E17B0(v48, v46, v13);
      (*(v17 + 56))(v13, 0, 1, v47);
      v49 = v13;
      v50 = v82;
      sub_10023FC6C(v49, v82, type metadata accessor for BenefactorInfoRecord);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100008D04(v51, qword_1003FAA58);
      sub_10023FBA0(a3, v24, type metadata accessor for BenefactorInfoRecord);
      sub_10023FBA0(v50, v21, type metadata accessor for BenefactorInfoRecord);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v78 = v52;
        v55 = v54;
        v79 = swift_slowAlloc();
        v89[0] = v79;
        *v55 = 136315650;
        *(v55 + 4) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v89);
        *(v55 + 12) = 2080;
        v80 = v48;
        v74 = v47;
        v56 = *(v47 + 28);
        v58 = v85;
        v57 = v86;
        v76 = *(v86 + 16);
        v59 = v87;
        v76(v85, &v24[v56], v87);
        v75 = type metadata accessor for BenefactorInfoRecord;
        sub_10023FC08(v24, type metadata accessor for BenefactorInfoRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v77 = v53;
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        v86 = *(v57 + 8);
        (v86)(v58, v59);
        v63 = sub_10021145C(v60, v62, v89);

        *(v55 + 14) = v63;
        *(v55 + 22) = 2080;
        v48 = v80;
        v76(v58, &v21[*(v74 + 28)], v59);
        sub_10023FC08(v21, v75);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        (v86)(v58, v59);
        v67 = sub_10021145C(v64, v66, v89);

        *(v55 + 24) = v67;
        v68 = v78;
        _os_log_impl(&_mh_execute_header, v78, v77, "%s recordID:%s one-off record fetch success newRecordID: %s", v55, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(v21, type metadata accessor for BenefactorInfoRecord);
        sub_10023FC08(v24, type metadata accessor for BenefactorInfoRecord);
      }

      v69 = v84;
      if (sub_1002E3E70())
      {
        sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1003431D0;
        *(v70 + 32) = v48;
        v71 = v48;
        sub_1002EBDD8(v69, v70);

        swift_unknownObjectRelease();
      }

      v72 = v82;
      sub_10023FBA0(v82, v81, type metadata accessor for BenefactorInfoRecord);
      sub_100005814(&qword_1003E3630, &unk_100346AA0);
      CheckedContinuation.resume(returning:)();

      return sub_10023FC08(v72, type metadata accessor for BenefactorInfoRecord);
    }
  }

  return result;
}

uint64_t sub_100222CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v54 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianshipInfoRecord(0);
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for CustodianshipInfoRecord);
  v50 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v49 = v4;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    (*(v8 + 16))(v10, v15, v7);
    sub_10023FC08(v15, type metadata accessor for CustodianshipInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v8 + 8))(v10, v7);
    v27 = sub_10021145C(v24, v26, aBlock);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Local Cache: Delete record called: %s", v21, 0xCu);
    sub_10000839C(v23);
    v4 = v49;

    a1 = v48;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for CustodianshipInfoRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      v32 = a1;
      v33 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = Array.description.getter();
      v36 = v35;

      v37 = sub_10021145C(v34, v36, aBlock);

      *(v30 + 4) = v37;
      a1 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Local Cache: Delete call stack: %s", v30, 0xCu);
      sub_10000839C(v31);
    }
  }

  v38 = v52;
  sub_10023FBA0(a1, v52, type metadata accessor for CustodianshipInfoRecord);
  v39 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v40 = swift_allocObject();
  sub_10023FC6C(v38, v40 + v39, type metadata accessor for CustodianshipInfoRecord);
  v41 = (v40 + ((v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = v54;
  *v41 = v53;
  v41[1] = v42;
  aBlock[4] = sub_10023F6EC;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0828;
  v43 = _Block_copy(aBlock);

  v44 = v55;
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v45 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);
  (*(v59 + 8))(v45, v4);
  (*(v56 + 8))(v44, v58);
}

uint64_t sub_100223438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v54 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianRecord(0);
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for CustodianRecord);
  v50 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v49 = v4;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    (*(v8 + 16))(v10, v15, v7);
    sub_10023FC08(v15, type metadata accessor for CustodianRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v8 + 8))(v10, v7);
    v27 = sub_10021145C(v24, v26, aBlock);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Local Cache: Delete record called: %s", v21, 0xCu);
    sub_10000839C(v23);
    v4 = v49;

    a1 = v48;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for CustodianRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      v32 = a1;
      v33 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = Array.description.getter();
      v36 = v35;

      v37 = sub_10021145C(v34, v36, aBlock);

      *(v30 + 4) = v37;
      a1 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Local Cache: Delete call stack: %s", v30, 0xCu);
      sub_10000839C(v31);
    }
  }

  v38 = v52;
  sub_10023FBA0(a1, v52, type metadata accessor for CustodianRecord);
  v39 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v40 = swift_allocObject();
  sub_10023FC6C(v38, v40 + v39, type metadata accessor for CustodianRecord);
  v41 = (v40 + ((v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = v54;
  *v41 = v53;
  v41[1] = v42;
  aBlock[4] = sub_1002408C0;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0A58;
  v43 = _Block_copy(aBlock);

  v44 = v55;
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v45 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);
  (*(v59 + 8))(v45, v4);
  (*(v56 + 8))(v44, v58);
}

uint64_t sub_100223BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v54 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianHealthRecord(0);
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for CustodianHealthRecord);
  v50 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v49 = v4;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    (*(v8 + 16))(v10, v15, v7);
    sub_10023FC08(v15, type metadata accessor for CustodianHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v8 + 8))(v10, v7);
    v27 = sub_10021145C(v24, v26, aBlock);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Local Cache: Delete record called: %s", v21, 0xCu);
    sub_10000839C(v23);
    v4 = v49;

    a1 = v48;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for CustodianHealthRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      v32 = a1;
      v33 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = Array.description.getter();
      v36 = v35;

      v37 = sub_10021145C(v34, v36, aBlock);

      *(v30 + 4) = v37;
      a1 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Local Cache: Delete call stack: %s", v30, 0xCu);
      sub_10000839C(v31);
    }
  }

  v38 = v52;
  sub_10023FBA0(a1, v52, type metadata accessor for CustodianHealthRecord);
  v39 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v40 = swift_allocObject();
  sub_10023FC6C(v38, v40 + v39, type metadata accessor for CustodianHealthRecord);
  v41 = (v40 + ((v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = v54;
  *v41 = v53;
  v41[1] = v42;
  aBlock[4] = sub_100240548;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B09E0;
  v43 = _Block_copy(aBlock);

  v44 = v55;
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v45 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);
  (*(v59 + 8))(v45, v4);
  (*(v56 + 8))(v44, v58);
}

uint64_t sub_100224308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v54 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100008D04(v16, qword_1003FAAE8);
  sub_10023FBA0(a1, v15, type metadata accessor for CustodianRecoveryInfoRecord);
  v50 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v49 = v4;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    (*(v8 + 16))(v10, v15, v7);
    sub_10023FC08(v15, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v8 + 8))(v10, v7);
    v27 = sub_10021145C(v24, v26, aBlock);

    *(v21 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Local Cache: Delete record called: %s", v21, 0xCu);
    sub_10000839C(v23);
    v4 = v49;

    a1 = v48;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      v32 = a1;
      v33 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = Array.description.getter();
      v36 = v35;

      v37 = sub_10021145C(v34, v36, aBlock);

      *(v30 + 4) = v37;
      a1 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Local Cache: Delete call stack: %s", v30, 0xCu);
      sub_10000839C(v31);
    }
  }

  v38 = v52;
  sub_10023FBA0(a1, v52, type metadata accessor for CustodianRecoveryInfoRecord);
  v39 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v40 = swift_allocObject();
  sub_10023FC6C(v38, v40 + v39, type metadata accessor for CustodianRecoveryInfoRecord);
  v41 = (v40 + ((v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v42 = v54;
  *v41 = v53;
  v41[1] = v42;
  aBlock[4] = sub_1002400FC;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0968;
  v43 = _Block_copy(aBlock);

  v44 = v55;
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v45 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);
  (*(v59 + 8))(v45, v4);
  (*(v56 + 8))(v44, v58);
}

uint64_t sub_100224A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BenefactorInfoRecord(0);
  v51 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v52 = v14;
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v48 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100008D04(v17, qword_1003FAAE8);
  v54 = a1;
  sub_10023FBA0(a1, v16, type metadata accessor for BenefactorInfoRecord);
  v50 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v48 = v5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v49 = v4;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    (*(v9 + 16))(v11, &v16[*(v12 + 28)], v8);
    sub_10023FC08(v16, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v9 + 8))(v11, v8);
    v28 = sub_10021145C(v25, v27, aBlock);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Local Cache: Delete record called: %s", v22, 0xCu);
    sub_10000839C(v24);
    v4 = v49;

    v5 = v48;
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for BenefactorInfoRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      v33 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = Array.description.getter();
      v36 = v35;

      v37 = sub_10021145C(v34, v36, aBlock);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Local Cache: Delete call stack: %s", v31, 0xCu);
      sub_10000839C(v32);
    }
  }

  v38 = v53;
  sub_10023FBA0(v54, v53, type metadata accessor for BenefactorInfoRecord);
  v39 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v40 = (v52 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_10023FC6C(v38, v41 + v39, type metadata accessor for BenefactorInfoRecord);
  v42 = (v41 + v40);
  v43 = v56;
  *v42 = v55;
  v42[1] = v43;
  aBlock[4] = sub_10023DB08;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0300;
  v44 = _Block_copy(aBlock);

  v45 = v57;
  static DispatchQoS.unspecified.getter();
  v61 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v46 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  (*(v5 + 8))(v46, v4);
  (*(v58 + 8))(v45, v60);
}

uint64_t sub_1002251E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BeneficiaryInfoRecord(0);
  v51 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v52 = v14;
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v48 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100008D04(v17, qword_1003FAAE8);
  v54 = a1;
  sub_10023FBA0(a1, v16, type metadata accessor for BeneficiaryInfoRecord);
  v50 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v48 = v5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v49 = v4;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    (*(v9 + 16))(v11, &v16[*(v12 + 32)], v8);
    sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v9 + 8))(v11, v8);
    v28 = sub_10021145C(v25, v27, aBlock);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Local Cache: Delete record called: %s", v22, 0xCu);
    sub_10000839C(v24);
    v4 = v49;

    v5 = v48;
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      v33 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = Array.description.getter();
      v36 = v35;

      v37 = sub_10021145C(v34, v36, aBlock);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Local Cache: Delete call stack: %s", v31, 0xCu);
      sub_10000839C(v32);
    }
  }

  v38 = v53;
  sub_10023FBA0(v54, v53, type metadata accessor for BeneficiaryInfoRecord);
  v39 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v40 = (v52 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_10023FC6C(v38, v41 + v39, type metadata accessor for BeneficiaryInfoRecord);
  v42 = (v41 + v40);
  v43 = v56;
  *v42 = v55;
  v42[1] = v43;
  aBlock[4] = sub_10023E5C8;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0530;
  v44 = _Block_copy(aBlock);

  v45 = v57;
  static DispatchQoS.unspecified.getter();
  v61 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v46 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  (*(v5 + 8))(v46, v4);
  (*(v58 + 8))(v45, v60);
}

uint64_t sub_100225958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InheritanceInvitationRecord(0);
  v51 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v52 = v14;
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v48 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100008D04(v17, qword_1003FAAE8);
  v54 = a1;
  sub_10023FBA0(a1, v16, type metadata accessor for InheritanceInvitationRecord);
  v50 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v48 = v5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v49 = v4;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    (*(v9 + 16))(v11, &v16[*(v12 + 36)], v8);
    sub_10023FC08(v16, type metadata accessor for InheritanceInvitationRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v9 + 8))(v11, v8);
    v28 = sub_10021145C(v25, v27, aBlock);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Local Cache: Delete record called: %s", v22, 0xCu);
    sub_10000839C(v24);
    v4 = v49;

    v5 = v48;
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for InheritanceInvitationRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      v33 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = Array.description.getter();
      v36 = v35;

      v37 = sub_10021145C(v34, v36, aBlock);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Local Cache: Delete call stack: %s", v31, 0xCu);
      sub_10000839C(v32);
    }
  }

  v38 = v53;
  sub_10023FBA0(v54, v53, type metadata accessor for InheritanceInvitationRecord);
  v39 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v40 = (v52 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_10023FC6C(v38, v41 + v39, type metadata accessor for InheritanceInvitationRecord);
  v42 = (v41 + v40);
  v43 = v56;
  *v42 = v55;
  v42[1] = v43;
  aBlock[4] = sub_10023EA84;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B0698;
  v44 = _Block_copy(aBlock);

  v45 = v57;
  static DispatchQoS.unspecified.getter();
  v61 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v46 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  (*(v5 + 8))(v46, v4);
  (*(v58 + 8))(v45, v60);
}

uint64_t sub_1002260CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InheritanceHealthRecord(0);
  v51 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v52 = v14;
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v48 - v15;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100008D04(v17, qword_1003FAAE8);
  v54 = a1;
  sub_10023FBA0(a1, v16, type metadata accessor for InheritanceHealthRecord);
  v50 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v48 = v5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v49 = v4;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    (*(v9 + 16))(v11, &v16[*(v12 + 28)], v8);
    sub_10023FC08(v16, type metadata accessor for InheritanceHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v9 + 8))(v11, v8);
    v28 = sub_10021145C(v25, v27, aBlock);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Local Cache: Delete record called: %s", v22, 0xCu);
    sub_10000839C(v24);
    v4 = v49;

    v5 = v48;
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for InheritanceHealthRecord);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      v33 = [objc_opt_self() callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = Array.description.getter();
      v36 = v35;

      v37 = sub_10021145C(v34, v36, aBlock);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Local Cache: Delete call stack: %s", v31, 0xCu);
      sub_10000839C(v32);
    }
  }

  v38 = v53;
  sub_10023FBA0(v54, v53, type metadata accessor for InheritanceHealthRecord);
  v39 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v40 = (v52 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_10023FC6C(v38, v41 + v39, type metadata accessor for InheritanceHealthRecord);
  v42 = (v41 + v40);
  v43 = v56;
  *v42 = v55;
  v42[1] = v43;
  aBlock[4] = sub_10023D740;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B01C0;
  v44 = _Block_copy(aBlock);

  v45 = v57;
  static DispatchQoS.unspecified.getter();
  v61 = _swiftEmptyArrayStorage;
  sub_10023F3A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v46 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  (*(v5 + 8))(v46, v4);
  (*(v58 + 8))(v45, v60);
}

uint64_t sub_100226840(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v104 = a3;
  v105 = a2;
  v102 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v102);
  v103 = (&v87 - v4);
  v5 = type metadata accessor for UUID();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v95 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustodianshipInfoRecord(0);
  v8 = __chkstk_darwin(v7 - 8);
  v99 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v92 = (&v87 - v11);
  v12 = __chkstk_darwin(v10);
  v98 = (&v87 - v13);
  __chkstk_darwin(v12);
  v15 = &v87 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v87 - v22;
  __chkstk_darwin(v21);
  v25 = &v87 - v24;
  v26 = [objc_opt_self() defaultManager];
  v93 = type metadata accessor for LocalCache();
  sub_100307F40();
  v94 = "hipinforecord-from-privatedb";
  URL.appendingPathComponent(_:isDirectory:)();
  v27 = *(v17 + 8);
  v27(v20, v16);
  v106 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v27(v23, v16);
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v96 = v27;
  v97 = v25;
  v27(v25, v16);
  v107 = 0;
  LODWORD(a1) = [v26 removeItemAtURL:v30 error:&v107];

  if (a1)
  {
    v31 = qword_1003D7F58;
    v32 = v107;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAE8);
    v34 = v106;
    sub_10023FBA0(v106, v15, type metadata accessor for CustodianshipInfoRecord);
    v35 = v98;
    sub_10023FBA0(v34, v98, type metadata accessor for CustodianshipInfoRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v107 = v91;
      *v38 = 136315394;
      v39 = v100;
      v92 = *(v100 + 16);
      v99 = (v100 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v90 = v36;
      v40 = v95;
      LODWORD(v89) = v37;
      v41 = v101;
      v92(v95, v15, v101);
      v88 = type metadata accessor for CustodianshipInfoRecord;
      sub_10023FC08(v15, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v39 + 8))(v40, v41);
      v45 = sub_10021145C(v42, v44, &v107);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v46 = v96;
      v96(v20, v16);
      v47 = v98;
      UUID.uuidString.getter();
      v48 = v97;
      URL.appendingPathComponent(_:)();

      v46(v23, v16);
      sub_10023FC08(v47, v88);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v46(v48, v16);
      v52 = sub_10021145C(v49, v51, &v107);

      *(v38 + 14) = v52;
      v53 = v90;
      _os_log_impl(&_mh_execute_header, v90, v89, "Local Cache: Record deleted successfully - %s, - URL: %s", v38, 0x16u);
      swift_arrayDestroy();

      v54 = v92;
    }

    else
    {
      sub_10023FC08(v35, type metadata accessor for CustodianshipInfoRecord);
      sub_10023FC08(v15, type metadata accessor for CustodianshipInfoRecord);

      v41 = v101;
      v54 = *(v100 + 16);
    }

    v85 = v103;
    v54(v103, v106, v41);
    swift_storeEnumTagMultiPayload();
    v105(v85);
  }

  else
  {
    v55 = v107;
    v56 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100008D04(v57, qword_1003FAAE8);
    v58 = v106;
    v59 = v92;
    sub_10023FBA0(v106, v92, type metadata accessor for CustodianshipInfoRecord);
    v60 = v99;
    sub_10023FBA0(v58, v99, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v101;
    if (v63)
    {
      v65 = swift_slowAlloc();
      v88 = v56;
      v66 = v65;
      v87 = v65;
      v98 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = v106;
      *v66 = 136315650;
      v56 = v88;
      LODWORD(v91) = v62;
      v67 = v100;
      v68 = *(v100 + 16);
      v90 = v61;
      v69 = v95;
      v68(v95, v59, v64);
      v89 = type metadata accessor for CustodianshipInfoRecord;
      sub_10023FC08(v59, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v69, v64);
      v73 = sub_10021145C(v70, v72, &v107);

      v74 = v87;
      *(v87 + 4) = v73;
      *(v74 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v75 = v96;
      v96(v20, v16);
      v76 = v99;
      UUID.uuidString.getter();
      v77 = v97;
      URL.appendingPathComponent(_:)();

      v75(v23, v16);
      sub_10023FC08(v76, v89);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v75(v77, v16);
      v81 = sub_10021145C(v78, v80, &v107);

      *(v74 + 14) = v81;
      *(v74 + 22) = 2112;
      v82 = _convertErrorToNSError(_:)();
      *(v74 + 24) = v82;
      v83 = v74;
      v84 = v98;
      *v98 = v82;
      v61 = v90;
      _os_log_impl(&_mh_execute_header, v90, v91, "Local Cache: Error deleting record: %s at path: %s - %@", v83, 0x20u);
      sub_100008D3C(v84, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v60, type metadata accessor for CustodianshipInfoRecord);
      sub_10023FC08(v59, type metadata accessor for CustodianshipInfoRecord);
    }

    v85 = v103;
    *v103 = v56;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v105(v85);
  }

  return sub_100008D3C(v85, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_100227410(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v104 = a3;
  v105 = a2;
  v102 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v102);
  v103 = (&v87 - v4);
  v5 = type metadata accessor for UUID();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v95 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustodianRecord(0);
  v8 = __chkstk_darwin(v7 - 8);
  v99 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v93 = (&v87 - v11);
  v12 = __chkstk_darwin(v10);
  v98 = (&v87 - v13);
  __chkstk_darwin(v12);
  v15 = &v87 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v87 - v22;
  __chkstk_darwin(v21);
  v25 = &v87 - v24;
  v26 = [objc_opt_self() defaultManager];
  v94 = type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v27 = *(v17 + 8);
  v27(v20, v16);
  v106 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v27(v23, v16);
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v96 = v27;
  v97 = v25;
  v27(v25, v16);
  v107 = 0;
  LODWORD(a1) = [v26 removeItemAtURL:v30 error:&v107];

  if (a1)
  {
    v31 = qword_1003D7F58;
    v32 = v107;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAE8);
    v34 = v106;
    sub_10023FBA0(v106, v15, type metadata accessor for CustodianRecord);
    v35 = v98;
    sub_10023FBA0(v34, v98, type metadata accessor for CustodianRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v107 = v92;
      *v38 = 136315394;
      v39 = v100;
      v93 = *(v100 + 16);
      v99 = (v100 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v91 = v36;
      v40 = v95;
      LODWORD(v90) = v37;
      v41 = v101;
      v93(v95, v15, v101);
      v89 = type metadata accessor for CustodianRecord;
      sub_10023FC08(v15, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v39 + 8))(v40, v41);
      v45 = sub_10021145C(v42, v44, &v107);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v46 = v96;
      v96(v20, v16);
      v47 = v98;
      UUID.uuidString.getter();
      v48 = v97;
      URL.appendingPathComponent(_:)();

      v46(v23, v16);
      sub_10023FC08(v47, v89);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v46(v48, v16);
      v52 = sub_10021145C(v49, v51, &v107);

      *(v38 + 14) = v52;
      v53 = v91;
      _os_log_impl(&_mh_execute_header, v91, v90, "Local Cache: Record deleted successfully - %s, - URL: %s", v38, 0x16u);
      swift_arrayDestroy();

      v54 = v93;
    }

    else
    {
      sub_10023FC08(v35, type metadata accessor for CustodianRecord);
      sub_10023FC08(v15, type metadata accessor for CustodianRecord);

      v41 = v101;
      v54 = *(v100 + 16);
    }

    v85 = v103;
    v54(v103, v106, v41);
    swift_storeEnumTagMultiPayload();
    v105(v85);
  }

  else
  {
    v55 = v107;
    v56 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100008D04(v57, qword_1003FAAE8);
    v58 = v106;
    v59 = v93;
    sub_10023FBA0(v106, v93, type metadata accessor for CustodianRecord);
    v60 = v99;
    sub_10023FBA0(v58, v99, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v101;
    if (v63)
    {
      v65 = swift_slowAlloc();
      v89 = v56;
      v66 = v65;
      v88 = v65;
      v98 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = v106;
      *v66 = 136315650;
      v56 = v89;
      LODWORD(v92) = v62;
      v67 = v100;
      v68 = *(v100 + 16);
      v91 = v61;
      v69 = v95;
      v68(v95, v59, v64);
      v90 = type metadata accessor for CustodianRecord;
      sub_10023FC08(v59, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v69, v64);
      v73 = sub_10021145C(v70, v72, &v107);

      v74 = v88;
      *(v88 + 4) = v73;
      *(v74 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v75 = v96;
      v96(v20, v16);
      v76 = v99;
      UUID.uuidString.getter();
      v77 = v97;
      URL.appendingPathComponent(_:)();

      v75(v23, v16);
      sub_10023FC08(v76, v90);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v75(v77, v16);
      v81 = sub_10021145C(v78, v80, &v107);

      *(v74 + 14) = v81;
      *(v74 + 22) = 2112;
      v82 = _convertErrorToNSError(_:)();
      *(v74 + 24) = v82;
      v83 = v74;
      v84 = v98;
      *v98 = v82;
      v61 = v91;
      _os_log_impl(&_mh_execute_header, v91, v92, "Local Cache: Error deleting record: %s at path: %s - %@", v83, 0x20u);
      sub_100008D3C(v84, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v60, type metadata accessor for CustodianRecord);
      sub_10023FC08(v59, type metadata accessor for CustodianRecord);
    }

    v85 = v103;
    *v103 = v56;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v105(v85);
  }

  return sub_100008D3C(v85, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_100227FF8(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v104 = a3;
  v105 = a2;
  v102 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v102);
  v103 = (&v87 - v4);
  v5 = type metadata accessor for UUID();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v95 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustodianHealthRecord(0);
  v8 = __chkstk_darwin(v7 - 8);
  v99 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v92 = (&v87 - v11);
  v12 = __chkstk_darwin(v10);
  v98 = (&v87 - v13);
  __chkstk_darwin(v12);
  v15 = &v87 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v87 - v22;
  __chkstk_darwin(v21);
  v25 = &v87 - v24;
  v26 = [objc_opt_self() defaultManager];
  v93 = type metadata accessor for LocalCache();
  sub_100307F40();
  v94 = "RecoverySessionRecord";
  URL.appendingPathComponent(_:isDirectory:)();
  v27 = *(v17 + 8);
  v27(v20, v16);
  v106 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v27(v23, v16);
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v96 = v27;
  v97 = v25;
  v27(v25, v16);
  v107 = 0;
  LODWORD(a1) = [v26 removeItemAtURL:v30 error:&v107];

  if (a1)
  {
    v31 = qword_1003D7F58;
    v32 = v107;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAE8);
    v34 = v106;
    sub_10023FBA0(v106, v15, type metadata accessor for CustodianHealthRecord);
    v35 = v98;
    sub_10023FBA0(v34, v98, type metadata accessor for CustodianHealthRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v107 = v91;
      *v38 = 136315394;
      v39 = v100;
      v92 = *(v100 + 16);
      v99 = (v100 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v90 = v36;
      v40 = v95;
      LODWORD(v89) = v37;
      v41 = v101;
      v92(v95, v15, v101);
      v88 = type metadata accessor for CustodianHealthRecord;
      sub_10023FC08(v15, type metadata accessor for CustodianHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v39 + 8))(v40, v41);
      v45 = sub_10021145C(v42, v44, &v107);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v46 = v96;
      v96(v20, v16);
      v47 = v98;
      UUID.uuidString.getter();
      v48 = v97;
      URL.appendingPathComponent(_:)();

      v46(v23, v16);
      sub_10023FC08(v47, v88);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v46(v48, v16);
      v52 = sub_10021145C(v49, v51, &v107);

      *(v38 + 14) = v52;
      v53 = v90;
      _os_log_impl(&_mh_execute_header, v90, v89, "Local Cache: Record deleted successfully - %s, - URL: %s", v38, 0x16u);
      swift_arrayDestroy();

      v54 = v92;
    }

    else
    {
      sub_10023FC08(v35, type metadata accessor for CustodianHealthRecord);
      sub_10023FC08(v15, type metadata accessor for CustodianHealthRecord);

      v41 = v101;
      v54 = *(v100 + 16);
    }

    v85 = v103;
    v54(v103, v106, v41);
    swift_storeEnumTagMultiPayload();
    v105(v85);
  }

  else
  {
    v55 = v107;
    v56 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100008D04(v57, qword_1003FAAE8);
    v58 = v106;
    v59 = v92;
    sub_10023FBA0(v106, v92, type metadata accessor for CustodianHealthRecord);
    v60 = v99;
    sub_10023FBA0(v58, v99, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v101;
    if (v63)
    {
      v65 = swift_slowAlloc();
      v88 = v56;
      v66 = v65;
      v87 = v65;
      v98 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = v106;
      *v66 = 136315650;
      v56 = v88;
      LODWORD(v91) = v62;
      v67 = v100;
      v68 = *(v100 + 16);
      v90 = v61;
      v69 = v95;
      v68(v95, v59, v64);
      v89 = type metadata accessor for CustodianHealthRecord;
      sub_10023FC08(v59, type metadata accessor for CustodianHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v69, v64);
      v73 = sub_10021145C(v70, v72, &v107);

      v74 = v87;
      *(v87 + 4) = v73;
      *(v74 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v75 = v96;
      v96(v20, v16);
      v76 = v99;
      UUID.uuidString.getter();
      v77 = v97;
      URL.appendingPathComponent(_:)();

      v75(v23, v16);
      sub_10023FC08(v76, v89);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v75(v77, v16);
      v81 = sub_10021145C(v78, v80, &v107);

      *(v74 + 14) = v81;
      *(v74 + 22) = 2112;
      v82 = _convertErrorToNSError(_:)();
      *(v74 + 24) = v82;
      v83 = v74;
      v84 = v98;
      *v98 = v82;
      v61 = v90;
      _os_log_impl(&_mh_execute_header, v90, v91, "Local Cache: Error deleting record: %s at path: %s - %@", v83, 0x20u);
      sub_100008D3C(v84, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v60, type metadata accessor for CustodianHealthRecord);
      sub_10023FC08(v59, type metadata accessor for CustodianHealthRecord);
    }

    v85 = v103;
    *v103 = v56;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v105(v85);
  }

  return sub_100008D3C(v85, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_100228BC8(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v104 = a3;
  v105 = a2;
  v102 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v102);
  v103 = (&v87 - v4);
  v5 = type metadata accessor for UUID();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v95 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v8 = __chkstk_darwin(v7 - 8);
  v99 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v92 = (&v87 - v11);
  v12 = __chkstk_darwin(v10);
  v98 = (&v87 - v13);
  __chkstk_darwin(v12);
  v15 = &v87 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v87 - v22;
  __chkstk_darwin(v21);
  v25 = &v87 - v24;
  v26 = [objc_opt_self() defaultManager];
  v93 = type metadata accessor for LocalCache();
  sub_100307F40();
  v94 = "fetchRecoveryInfoFromCache()";
  URL.appendingPathComponent(_:isDirectory:)();
  v27 = *(v17 + 8);
  v27(v20, v16);
  v106 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v27(v23, v16);
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v96 = v27;
  v97 = v25;
  v27(v25, v16);
  v107 = 0;
  LODWORD(a1) = [v26 removeItemAtURL:v30 error:&v107];

  if (a1)
  {
    v31 = qword_1003D7F58;
    v32 = v107;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAE8);
    v34 = v106;
    sub_10023FBA0(v106, v15, type metadata accessor for CustodianRecoveryInfoRecord);
    v35 = v98;
    sub_10023FBA0(v34, v98, type metadata accessor for CustodianRecoveryInfoRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v107 = v91;
      *v38 = 136315394;
      v39 = v100;
      v92 = *(v100 + 16);
      v99 = (v100 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v90 = v36;
      v40 = v95;
      LODWORD(v89) = v37;
      v41 = v101;
      v92(v95, v15, v101);
      v88 = type metadata accessor for CustodianRecoveryInfoRecord;
      sub_10023FC08(v15, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v39 + 8))(v40, v41);
      v45 = sub_10021145C(v42, v44, &v107);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v46 = v96;
      v96(v20, v16);
      v47 = v98;
      UUID.uuidString.getter();
      v48 = v97;
      URL.appendingPathComponent(_:)();

      v46(v23, v16);
      sub_10023FC08(v47, v88);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v46(v48, v16);
      v52 = sub_10021145C(v49, v51, &v107);

      *(v38 + 14) = v52;
      v53 = v90;
      _os_log_impl(&_mh_execute_header, v90, v89, "Local Cache: Record deleted successfully - %s, - URL: %s", v38, 0x16u);
      swift_arrayDestroy();

      v54 = v92;
    }

    else
    {
      sub_10023FC08(v35, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023FC08(v15, type metadata accessor for CustodianRecoveryInfoRecord);

      v41 = v101;
      v54 = *(v100 + 16);
    }

    v85 = v103;
    v54(v103, v106, v41);
    swift_storeEnumTagMultiPayload();
    v105(v85);
  }

  else
  {
    v55 = v107;
    v56 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100008D04(v57, qword_1003FAAE8);
    v58 = v106;
    v59 = v92;
    sub_10023FBA0(v106, v92, type metadata accessor for CustodianRecoveryInfoRecord);
    v60 = v99;
    sub_10023FBA0(v58, v99, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = v101;
    if (v63)
    {
      v65 = swift_slowAlloc();
      v88 = v56;
      v66 = v65;
      v87 = v65;
      v98 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = v106;
      *v66 = 136315650;
      v56 = v88;
      LODWORD(v91) = v62;
      v67 = v100;
      v68 = *(v100 + 16);
      v90 = v61;
      v69 = v95;
      v68(v95, v59, v64);
      v89 = type metadata accessor for CustodianRecoveryInfoRecord;
      sub_10023FC08(v59, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v69, v64);
      v73 = sub_10021145C(v70, v72, &v107);

      v74 = v87;
      *(v87 + 4) = v73;
      *(v74 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v75 = v96;
      v96(v20, v16);
      v76 = v99;
      UUID.uuidString.getter();
      v77 = v97;
      URL.appendingPathComponent(_:)();

      v75(v23, v16);
      sub_10023FC08(v76, v89);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v75(v77, v16);
      v81 = sub_10021145C(v78, v80, &v107);

      *(v74 + 14) = v81;
      *(v74 + 22) = 2112;
      v82 = _convertErrorToNSError(_:)();
      *(v74 + 24) = v82;
      v83 = v74;
      v84 = v98;
      *v98 = v82;
      v61 = v90;
      _os_log_impl(&_mh_execute_header, v90, v91, "Local Cache: Error deleting record: %s at path: %s - %@", v83, 0x20u);
      sub_100008D3C(v84, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v60, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023FC08(v59, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v85 = v103;
    *v103 = v56;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v105(v85);
  }

  return sub_100008D3C(v85, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_100229798(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v109 = a3;
  v110 = a2;
  v107 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v107);
  v108 = (&v90 - v4);
  v106 = type metadata accessor for UUID();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BenefactorInfoRecord(0);
  v7 = __chkstk_darwin(v6);
  v103 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v95 = &v90 - v10;
  v11 = __chkstk_darwin(v9);
  v96 = (&v90 - v12);
  __chkstk_darwin(v11);
  v94 = &v90 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v90 - v20;
  __chkstk_darwin(v19);
  v23 = &v90 - v22;
  v24 = [objc_opt_self() defaultManager];
  v97 = type metadata accessor for LocalCache();
  sub_100307F40();
  v98 = "iciaryManifestRecord";
  URL.appendingPathComponent(_:isDirectory:)();
  v25 = *(v15 + 8);
  v25(v18, v14);
  v105 = v6;
  v26 = *(v6 + 28);
  v111 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v25(v21, v14);
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v101 = v25;
  v102 = v23;
  v100 = v14;
  v25(v23, v14);
  v112 = 0;
  LODWORD(a1) = [v24 removeItemAtURL:v29 error:&v112];

  if (a1)
  {
    v103 = v26;
    v30 = qword_1003D7F58;
    v31 = v112;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAAE8);
    v33 = v111;
    v34 = v94;
    sub_10023FBA0(v111, v94, type metadata accessor for BenefactorInfoRecord);
    v35 = v96;
    sub_10023FBA0(v33, v96, type metadata accessor for BenefactorInfoRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v112 = v92;
      *v38 = 136315394;
      v39 = *(v105 + 28);
      v91 = v36;
      v40 = v104;
      v93 = *(v104 + 16);
      v95 = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v41 = v99;
      v42 = v106;
      (v93)(v99, v34 + v39, v106);
      v90 = type metadata accessor for BenefactorInfoRecord;
      sub_10023FC08(v34, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v94) = v37;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v40 + 8))(v41, v42);
      v46 = sub_10021145C(v43, v45, &v112);

      *(v38 + 4) = v46;
      *(v38 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v48 = v100;
      v47 = v101;
      v101(v18, v100);
      UUID.uuidString.getter();
      v49 = v102;
      URL.appendingPathComponent(_:)();

      v47(v21, v48);
      sub_10023FC08(v35, v90);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v47(v49, v48);
      v53 = sub_10021145C(v50, v52, &v112);

      *(v38 + 14) = v53;
      v54 = v91;
      _os_log_impl(&_mh_execute_header, v91, v94, "Local Cache: Record deleted successfully - %s, - URL: %s", v38, 0x16u);
      swift_arrayDestroy();

      v55 = v93;
    }

    else
    {
      sub_10023FC08(v35, type metadata accessor for BenefactorInfoRecord);
      sub_10023FC08(v34, type metadata accessor for BenefactorInfoRecord);

      v55 = *(v104 + 16);
      v42 = v106;
    }

    v88 = v108;
    (v55)(v108, &v111[v103], v42);
    swift_storeEnumTagMultiPayload();
    v110(v88);
  }

  else
  {
    v56 = v112;
    v57 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100008D04(v58, qword_1003FAAE8);
    v59 = v111;
    v60 = v95;
    sub_10023FBA0(v111, v95, type metadata accessor for BenefactorInfoRecord);
    v61 = v103;
    sub_10023FBA0(v59, v103, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v106;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v112 = v111;
      *v66 = 136315650;
      v67 = *(v105 + 28);
      LODWORD(v94) = v63;
      v68 = v60;
      v69 = v104;
      v70 = *(v104 + 16);
      v93 = v62;
      v71 = v99;
      v70(v99, v68 + v67, v65);
      v92 = type metadata accessor for BenefactorInfoRecord;
      sub_10023FC08(v68, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      (*(v69 + 8))(v71, v65);
      v75 = sub_10021145C(v72, v74, &v112);

      *(v66 + 4) = v75;
      *(v66 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v76 = v18;
      v78 = v100;
      v77 = v101;
      v101(v76, v100);
      v79 = v103;
      UUID.uuidString.getter();
      v80 = v102;
      URL.appendingPathComponent(_:)();

      v77(v21, v78);
      sub_10023FC08(v79, v92);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v77(v80, v78);
      v84 = sub_10021145C(v81, v83, &v112);

      *(v66 + 14) = v84;
      *(v66 + 22) = 2112;
      v85 = _convertErrorToNSError(_:)();
      *(v66 + 24) = v85;
      v86 = v96;
      *v96 = v85;
      v87 = v93;
      _os_log_impl(&_mh_execute_header, v93, v94, "Local Cache: Error deleting record: %s at path: %s - %@", v66, 0x20u);
      sub_100008D3C(v86, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v61, type metadata accessor for BenefactorInfoRecord);
      sub_10023FC08(v60, type metadata accessor for BenefactorInfoRecord);
    }

    v88 = v108;
    *v108 = v57;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v110(v88);
  }

  return sub_100008D3C(v88, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10022A3CC(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v109 = a3;
  v110 = a2;
  v107 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v107);
  v108 = (&v90 - v4);
  v106 = type metadata accessor for UUID();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BeneficiaryInfoRecord(0);
  v7 = __chkstk_darwin(v6);
  v103 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v95 = &v90 - v10;
  v11 = __chkstk_darwin(v9);
  v96 = (&v90 - v12);
  __chkstk_darwin(v11);
  v94 = &v90 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v90 - v20;
  __chkstk_darwin(v19);
  v23 = &v90 - v22;
  v24 = [objc_opt_self() defaultManager];
  v97 = type metadata accessor for LocalCache();
  sub_100307F40();
  v98 = "8@NSArray16@NSError24";
  URL.appendingPathComponent(_:isDirectory:)();
  v25 = *(v15 + 8);
  v25(v18, v14);
  v105 = v6;
  v26 = *(v6 + 32);
  v111 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v25(v21, v14);
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v101 = v25;
  v102 = v23;
  v100 = v14;
  v25(v23, v14);
  v112 = 0;
  LODWORD(a1) = [v24 removeItemAtURL:v29 error:&v112];

  if (a1)
  {
    v103 = v26;
    v30 = qword_1003D7F58;
    v31 = v112;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAAE8);
    v33 = v111;
    v34 = v94;
    sub_10023FBA0(v111, v94, type metadata accessor for BeneficiaryInfoRecord);
    v35 = v96;
    sub_10023FBA0(v33, v96, type metadata accessor for BeneficiaryInfoRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v112 = v92;
      *v38 = 136315394;
      v39 = *(v105 + 32);
      v91 = v36;
      v40 = v104;
      v93 = *(v104 + 16);
      v95 = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v41 = v99;
      v42 = v106;
      (v93)(v99, v34 + v39, v106);
      v90 = type metadata accessor for BeneficiaryInfoRecord;
      sub_10023FC08(v34, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v94) = v37;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v40 + 8))(v41, v42);
      v46 = sub_10021145C(v43, v45, &v112);

      *(v38 + 4) = v46;
      *(v38 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v48 = v100;
      v47 = v101;
      v101(v18, v100);
      UUID.uuidString.getter();
      v49 = v102;
      URL.appendingPathComponent(_:)();

      v47(v21, v48);
      sub_10023FC08(v35, v90);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v47(v49, v48);
      v53 = sub_10021145C(v50, v52, &v112);

      *(v38 + 14) = v53;
      v54 = v91;
      _os_log_impl(&_mh_execute_header, v91, v94, "Local Cache: Record deleted successfully - %s, - URL: %s", v38, 0x16u);
      swift_arrayDestroy();

      v55 = v93;
    }

    else
    {
      sub_10023FC08(v35, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023FC08(v34, type metadata accessor for BeneficiaryInfoRecord);

      v55 = *(v104 + 16);
      v42 = v106;
    }

    v88 = v108;
    (v55)(v108, &v111[v103], v42);
    swift_storeEnumTagMultiPayload();
    v110(v88);
  }

  else
  {
    v56 = v112;
    v57 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100008D04(v58, qword_1003FAAE8);
    v59 = v111;
    v60 = v95;
    sub_10023FBA0(v111, v95, type metadata accessor for BeneficiaryInfoRecord);
    v61 = v103;
    sub_10023FBA0(v59, v103, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v106;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v112 = v111;
      *v66 = 136315650;
      v67 = *(v105 + 32);
      LODWORD(v94) = v63;
      v68 = v60;
      v69 = v104;
      v70 = *(v104 + 16);
      v93 = v62;
      v71 = v99;
      v70(v99, v68 + v67, v65);
      v92 = type metadata accessor for BeneficiaryInfoRecord;
      sub_10023FC08(v68, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      (*(v69 + 8))(v71, v65);
      v75 = sub_10021145C(v72, v74, &v112);

      *(v66 + 4) = v75;
      *(v66 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v76 = v18;
      v78 = v100;
      v77 = v101;
      v101(v76, v100);
      v79 = v103;
      UUID.uuidString.getter();
      v80 = v102;
      URL.appendingPathComponent(_:)();

      v77(v21, v78);
      sub_10023FC08(v79, v92);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v77(v80, v78);
      v84 = sub_10021145C(v81, v83, &v112);

      *(v66 + 14) = v84;
      *(v66 + 22) = 2112;
      v85 = _convertErrorToNSError(_:)();
      *(v66 + 24) = v85;
      v86 = v96;
      *v96 = v85;
      v87 = v93;
      _os_log_impl(&_mh_execute_header, v93, v94, "Local Cache: Error deleting record: %s at path: %s - %@", v66, 0x20u);
      sub_100008D3C(v86, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v61, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023FC08(v60, type metadata accessor for BeneficiaryInfoRecord);
    }

    v88 = v108;
    *v108 = v57;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v110(v88);
  }

  return sub_100008D3C(v88, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10022B000(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v109 = a3;
  v110 = a2;
  v107 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v107);
  v108 = (&v90 - v4);
  v106 = type metadata accessor for UUID();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InheritanceInvitationRecord(0);
  v7 = __chkstk_darwin(v6);
  v103 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v95 = &v90 - v10;
  v11 = __chkstk_darwin(v9);
  v96 = (&v90 - v12);
  __chkstk_darwin(v11);
  v94 = &v90 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v90 - v20;
  __chkstk_darwin(v19);
  v23 = &v90 - v22;
  v24 = [objc_opt_self() defaultManager];
  v97 = type metadata accessor for LocalCache();
  sub_100307F40();
  v98 = "iciaryInfoRecord";
  URL.appendingPathComponent(_:isDirectory:)();
  v25 = *(v15 + 8);
  v25(v18, v14);
  v105 = v6;
  v26 = *(v6 + 36);
  v111 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v25(v21, v14);
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v101 = v25;
  v102 = v23;
  v100 = v14;
  v25(v23, v14);
  v112 = 0;
  LODWORD(a1) = [v24 removeItemAtURL:v29 error:&v112];

  if (a1)
  {
    v103 = v26;
    v30 = qword_1003D7F58;
    v31 = v112;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAAE8);
    v33 = v111;
    v34 = v94;
    sub_10023FBA0(v111, v94, type metadata accessor for InheritanceInvitationRecord);
    v35 = v96;
    sub_10023FBA0(v33, v96, type metadata accessor for InheritanceInvitationRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v112 = v92;
      *v38 = 136315394;
      v39 = *(v105 + 36);
      v91 = v36;
      v40 = v104;
      v93 = *(v104 + 16);
      v95 = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v41 = v99;
      v42 = v106;
      (v93)(v99, v34 + v39, v106);
      v90 = type metadata accessor for InheritanceInvitationRecord;
      sub_10023FC08(v34, type metadata accessor for InheritanceInvitationRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v94) = v37;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v40 + 8))(v41, v42);
      v46 = sub_10021145C(v43, v45, &v112);

      *(v38 + 4) = v46;
      *(v38 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v48 = v100;
      v47 = v101;
      v101(v18, v100);
      UUID.uuidString.getter();
      v49 = v102;
      URL.appendingPathComponent(_:)();

      v47(v21, v48);
      sub_10023FC08(v35, v90);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v47(v49, v48);
      v53 = sub_10021145C(v50, v52, &v112);

      *(v38 + 14) = v53;
      v54 = v91;
      _os_log_impl(&_mh_execute_header, v91, v94, "Local Cache: Record deleted successfully - %s, - URL: %s", v38, 0x16u);
      swift_arrayDestroy();

      v55 = v93;
    }

    else
    {
      sub_10023FC08(v35, type metadata accessor for InheritanceInvitationRecord);
      sub_10023FC08(v34, type metadata accessor for InheritanceInvitationRecord);

      v55 = *(v104 + 16);
      v42 = v106;
    }

    v88 = v108;
    (v55)(v108, &v111[v103], v42);
    swift_storeEnumTagMultiPayload();
    v110(v88);
  }

  else
  {
    v56 = v112;
    v57 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100008D04(v58, qword_1003FAAE8);
    v59 = v111;
    v60 = v95;
    sub_10023FBA0(v111, v95, type metadata accessor for InheritanceInvitationRecord);
    v61 = v103;
    sub_10023FBA0(v59, v103, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v106;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v112 = v111;
      *v66 = 136315650;
      v67 = *(v105 + 36);
      LODWORD(v94) = v63;
      v68 = v60;
      v69 = v104;
      v70 = *(v104 + 16);
      v93 = v62;
      v71 = v99;
      v70(v99, v68 + v67, v65);
      v92 = type metadata accessor for InheritanceInvitationRecord;
      sub_10023FC08(v68, type metadata accessor for InheritanceInvitationRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      (*(v69 + 8))(v71, v65);
      v75 = sub_10021145C(v72, v74, &v112);

      *(v66 + 4) = v75;
      *(v66 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v76 = v18;
      v78 = v100;
      v77 = v101;
      v101(v76, v100);
      v79 = v103;
      UUID.uuidString.getter();
      v80 = v102;
      URL.appendingPathComponent(_:)();

      v77(v21, v78);
      sub_10023FC08(v79, v92);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v77(v80, v78);
      v84 = sub_10021145C(v81, v83, &v112);

      *(v66 + 14) = v84;
      *(v66 + 22) = 2112;
      v85 = _convertErrorToNSError(_:)();
      *(v66 + 24) = v85;
      v86 = v96;
      *v96 = v85;
      v87 = v93;
      _os_log_impl(&_mh_execute_header, v93, v94, "Local Cache: Error deleting record: %s at path: %s - %@", v66, 0x20u);
      sub_100008D3C(v86, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v61, type metadata accessor for InheritanceInvitationRecord);
      sub_10023FC08(v60, type metadata accessor for InheritanceInvitationRecord);
    }

    v88 = v108;
    *v108 = v57;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v110(v88);
  }

  return sub_100008D3C(v88, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10022BC34(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v109 = a3;
  v110 = a2;
  v107 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v107);
  v108 = (&v90 - v4);
  v106 = type metadata accessor for UUID();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InheritanceHealthRecord(0);
  v7 = __chkstk_darwin(v6);
  v103 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v95 = &v90 - v10;
  v11 = __chkstk_darwin(v9);
  v96 = (&v90 - v12);
  __chkstk_darwin(v11);
  v94 = &v90 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v90 - v20;
  __chkstk_darwin(v19);
  v23 = &v90 - v22;
  v24 = [objc_opt_self() defaultManager];
  v97 = type metadata accessor for LocalCache();
  sub_100307F40();
  v98 = "_inheritanceStorage";
  URL.appendingPathComponent(_:isDirectory:)();
  v25 = *(v15 + 8);
  v25(v18, v14);
  v105 = v6;
  v26 = *(v6 + 28);
  v111 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v25(v21, v14);
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v101 = v25;
  v102 = v23;
  v100 = v14;
  v25(v23, v14);
  v112 = 0;
  LODWORD(a1) = [v24 removeItemAtURL:v29 error:&v112];

  if (a1)
  {
    v103 = v26;
    v30 = qword_1003D7F58;
    v31 = v112;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAAE8);
    v33 = v111;
    v34 = v94;
    sub_10023FBA0(v111, v94, type metadata accessor for InheritanceHealthRecord);
    v35 = v96;
    sub_10023FBA0(v33, v96, type metadata accessor for InheritanceHealthRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v112 = v92;
      *v38 = 136315394;
      v39 = *(v105 + 28);
      v91 = v36;
      v40 = v104;
      v93 = *(v104 + 16);
      v95 = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v41 = v99;
      v42 = v106;
      (v93)(v99, v34 + v39, v106);
      v90 = type metadata accessor for InheritanceHealthRecord;
      sub_10023FC08(v34, type metadata accessor for InheritanceHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v94) = v37;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v40 + 8))(v41, v42);
      v46 = sub_10021145C(v43, v45, &v112);

      *(v38 + 4) = v46;
      *(v38 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v48 = v100;
      v47 = v101;
      v101(v18, v100);
      UUID.uuidString.getter();
      v49 = v102;
      URL.appendingPathComponent(_:)();

      v47(v21, v48);
      sub_10023FC08(v35, v90);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v47(v49, v48);
      v53 = sub_10021145C(v50, v52, &v112);

      *(v38 + 14) = v53;
      v54 = v91;
      _os_log_impl(&_mh_execute_header, v91, v94, "Local Cache: Record deleted successfully - %s, - URL: %s", v38, 0x16u);
      swift_arrayDestroy();

      v55 = v93;
    }

    else
    {
      sub_10023FC08(v35, type metadata accessor for InheritanceHealthRecord);
      sub_10023FC08(v34, type metadata accessor for InheritanceHealthRecord);

      v55 = *(v104 + 16);
      v42 = v106;
    }

    v88 = v108;
    (v55)(v108, &v111[v103], v42);
    swift_storeEnumTagMultiPayload();
    v110(v88);
  }

  else
  {
    v56 = v112;
    v57 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100008D04(v58, qword_1003FAAE8);
    v59 = v111;
    v60 = v95;
    sub_10023FBA0(v111, v95, type metadata accessor for InheritanceHealthRecord);
    v61 = v103;
    sub_10023FBA0(v59, v103, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v106;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v112 = v111;
      *v66 = 136315650;
      v67 = *(v105 + 28);
      LODWORD(v94) = v63;
      v68 = v60;
      v69 = v104;
      v70 = *(v104 + 16);
      v93 = v62;
      v71 = v99;
      v70(v99, v68 + v67, v65);
      v92 = type metadata accessor for InheritanceHealthRecord;
      sub_10023FC08(v68, type metadata accessor for InheritanceHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      (*(v69 + 8))(v71, v65);
      v75 = sub_10021145C(v72, v74, &v112);

      *(v66 + 4) = v75;
      *(v66 + 12) = 2080;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v76 = v18;
      v78 = v100;
      v77 = v101;
      v101(v76, v100);
      v79 = v103;
      UUID.uuidString.getter();
      v80 = v102;
      URL.appendingPathComponent(_:)();

      v77(v21, v78);
      sub_10023FC08(v79, v92);
      sub_10023F3A0(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v77(v80, v78);
      v84 = sub_10021145C(v81, v83, &v112);

      *(v66 + 14) = v84;
      *(v66 + 22) = 2112;
      v85 = _convertErrorToNSError(_:)();
      *(v66 + 24) = v85;
      v86 = v96;
      *v96 = v85;
      v87 = v93;
      _os_log_impl(&_mh_execute_header, v93, v94, "Local Cache: Error deleting record: %s at path: %s - %@", v66, 0x20u);
      sub_100008D3C(v86, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v61, type metadata accessor for InheritanceHealthRecord);
      sub_10023FC08(v60, type metadata accessor for InheritanceHealthRecord);
    }

    v88 = v108;
    *v108 = v57;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v110(v88);
  }

  return sub_100008D3C(v88, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10022C868(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  type metadata accessor for CustodianshipInfoRecord(0);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10022C9E4, 0, 0);
}

uint64_t sub_10022C9E4()
{
  v24 = v0;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[15];
  v3 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v3, qword_1003FAAE8);
  sub_10023FBA0(v2, v1, type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = v0[23];
    v9 = v0[20];
    v10 = v0[21];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315394;
    (*(v10 + 16))(v8, v7, v9);
    sub_10023FC08(v7, type metadata accessor for CustodianshipInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v10 + 8))(v8, v9);
    v15 = sub_10021145C(v12, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v23);
    _os_log_impl(&_mh_execute_header, v4, v5, "Storage Controller: Fetching a record, recordID: %s, type: %s...", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v0[26], type metadata accessor for CustodianshipInfoRecord);
  }

  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  (*(v17 + 16))(v16, v0[16] + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  sub_1000080F8(v0 + 2, v0[5]);
  v19 = swift_task_alloc();
  v0[28] = v19;
  *v19 = v0;
  v19[1] = sub_10022CD4C;
  v20 = v0[14];
  v21 = v0[15];

  return sub_10021F398(v20, v21);
}

uint64_t sub_10022CD4C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10022CF14;
  }

  else
  {
    v2 = sub_10022CE60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022CE60()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022CF14()
{
  v51 = v0;
  v1 = *(v0 + 232);
  sub_10000839C((v0 + 16));
  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  *(v0 + 240) = v2;
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 120);

    v5 = *(v0 + 88);
    *(v0 + 248) = v5;
    sub_10023FBA0(v4, v3, type metadata accessor for CustodianshipInfoRecord);
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 200);
    if (v9)
    {
      v11 = *(v0 + 184);
      v49 = v6;
      v13 = *(v0 + 160);
      v12 = *(v0 + 168);
      v14 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v14 = 136315650;
      (*(v12 + 16))(v11, v10, v13);
      sub_10023FC08(v10, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v6 = v49;
      v18 = sub_10021145C(v15, v17, v50);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v50);
      *(v14 + 22) = 2112;
      v19 = v49;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v20;
      *v48 = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "Storage Controller: Error fetching a record, recordID: %s, type: %s, error: %@", v14, 0x20u);
      sub_100008D3C(v48, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(*(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
    }

    if (sub_1002DEA78(v6))
    {
      sub_10023FBA0(*(v0 + 120), *(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 192);
      if (v23)
      {
        v25 = *(v0 + 184);
        v26 = *(v0 + 160);
        v27 = *(v0 + 168);
        v28 = swift_slowAlloc();
        v50[0] = swift_slowAlloc();
        *v28 = 136315394;
        (*(v27 + 16))(v25, v24, v26);
        sub_10023FC08(v24, type metadata accessor for CustodianshipInfoRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        (*(v27 + 8))(v25, v26);
        v32 = sub_10021145C(v29, v31, v50);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v50);
        _os_log_impl(&_mh_execute_header, v21, v22, "Storage Controller: Deleting unknown record, recordID: %s, type: %s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(*(v0 + 192), type metadata accessor for CustodianshipInfoRecord);
      }

      v40 = swift_task_alloc();
      *(v0 + 256) = v40;
      v40[1] = vextq_s8(*(v0 + 120), *(v0 + 120), 8uLL);
      v41 = swift_task_alloc();
      *(v0 + 264) = v41;
      *v41 = v0;
      v41[1] = sub_10022D670;
      v42 = *(v0 + 176);
      v43 = *(v0 + 160);

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v42, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_10023F564, v40, v43);
    }

    v33 = *(v0 + 248);
    if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter() && (v34 = sub_10030B6CC(), , v34))
    {
      v35 = *(v0 + 248);
      swift_getErrorValue();
      sub_1002DEA80(*(v0 + 64), *(v0 + 72));
    }

    else
    {
      v36 = *(v0 + 248);

      *(v0 + 96) = v36;
      sub_10023F3A0(&qword_1003D8110, type metadata accessor for CKError, &unk_10033D9C0);
      v37 = v36;
      v38 = _getErrorEmbeddedNSError<A>(_:)();
      v39 = *(v0 + 248);
      if (v38)
      {
      }

      else
      {
        swift_allocError();
        *v44 = v39;
      }
    }

    v45 = *(v0 + 248);
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_10022D670()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_10022D94C;
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);

    v3 = sub_10022D7A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022D7A8()
{
  v1 = *(v0 + 248);
  if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
  {
    v2 = sub_10030B6CC();

    if (v2)
    {
      v3 = *(v0 + 248);
      swift_getErrorValue();
      sub_1002DEA80(*(v0 + 64), *(v0 + 72));

LABEL_5:

      goto LABEL_7;
    }
  }

  v4 = *(v0 + 248);

  *(v0 + 96) = v4;
  sub_10023F3A0(&qword_1003D8110, type metadata accessor for CKError, &unk_10033D9C0);
  v5 = v4;
  v6 = _getErrorEmbeddedNSError<A>(_:)();
  v3 = *(v0 + 248);
  if (v6)
  {
    goto LABEL_5;
  }

  swift_allocError();
  *v7 = v3;
LABEL_7:
  v8 = *(v0 + 248);
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10022D94C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022DA0C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  type metadata accessor for CustodianRecord(0);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10022DB88, 0, 0);
}

uint64_t sub_10022DB88()
{
  v24 = v0;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[15];
  v3 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v3, qword_1003FAAE8);
  sub_10023FBA0(v2, v1, type metadata accessor for CustodianRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = v0[23];
    v9 = v0[20];
    v10 = v0[21];
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315394;
    (*(v10 + 16))(v8, v7, v9);
    sub_10023FC08(v7, type metadata accessor for CustodianRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v10 + 8))(v8, v9);
    v15 = sub_10021145C(v12, v14, &v23);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, &v23);
    _os_log_impl(&_mh_execute_header, v4, v5, "Storage Controller: Fetching a record, recordID: %s, type: %s...", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v0[26], type metadata accessor for CustodianRecord);
  }

  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  (*(v17 + 16))(v16, v0[16] + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v18);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  sub_1000080F8(v0 + 2, v0[5]);
  v19 = swift_task_alloc();
  v0[28] = v19;
  *v19 = v0;
  v19[1] = sub_10022DEF8;
  v20 = v0[14];
  v21 = v0[15];

  return sub_10021FA78(v20, v21);
}

uint64_t sub_10022DEF8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10022E00C;
  }

  else
  {
    v2 = sub_100240EB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022E00C()
{
  v51 = v0;
  v1 = *(v0 + 232);
  sub_10000839C((v0 + 16));
  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  *(v0 + 240) = v2;
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 120);

    v5 = *(v0 + 88);
    *(v0 + 248) = v5;
    sub_10023FBA0(v4, v3, type metadata accessor for CustodianRecord);
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 200);
    if (v9)
    {
      v11 = *(v0 + 184);
      v49 = v6;
      v13 = *(v0 + 160);
      v12 = *(v0 + 168);
      v14 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v14 = 136315650;
      (*(v12 + 16))(v11, v10, v13);
      sub_10023FC08(v10, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v6 = v49;
      v18 = sub_10021145C(v15, v17, v50);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v50);
      *(v14 + 22) = 2112;
      v19 = v49;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v20;
      *v48 = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "Storage Controller: Error fetching a record, recordID: %s, type: %s, error: %@", v14, 0x20u);
      sub_100008D3C(v48, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(*(v0 + 200), type metadata accessor for CustodianRecord);
    }

    if (sub_1002DEA78(v6))
    {
      sub_10023FBA0(*(v0 + 120), *(v0 + 192), type metadata accessor for CustodianRecord);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 192);
      if (v23)
      {
        v25 = *(v0 + 184);
        v26 = *(v0 + 160);
        v27 = *(v0 + 168);
        v28 = swift_slowAlloc();
        v50[0] = swift_slowAlloc();
        *v28 = 136315394;
        (*(v27 + 16))(v25, v24, v26);
        sub_10023FC08(v24, type metadata accessor for CustodianRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        (*(v27 + 8))(v25, v26);
        v32 = sub_10021145C(v29, v31, v50);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v50);
        _os_log_impl(&_mh_execute_header, v21, v22, "Storage Controller: Deleting unknown record, recordID: %s, type: %s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(*(v0 + 192), type metadata accessor for CustodianRecord);
      }

      v40 = swift_task_alloc();
      *(v0 + 256) = v40;
      v40[1] = vextq_s8(*(v0 + 120), *(v0 + 120), 8uLL);
      v41 = swift_task_alloc();
      *(v0 + 264) = v41;
      *v41 = v0;
      v41[1] = sub_10022E778;
      v42 = *(v0 + 176);
      v43 = *(v0 + 160);

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v42, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_100240574, v40, v43);
    }

    v33 = *(v0 + 248);
    if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter() && (v34 = sub_10030B6CC(), , v34))
    {
      v35 = *(v0 + 248);
      swift_getErrorValue();
      sub_1002DEA80(*(v0 + 64), *(v0 + 72));
    }

    else
    {
      v36 = *(v0 + 248);

      *(v0 + 96) = v36;
      sub_10023F3A0(&qword_1003D8110, type metadata accessor for CKError, &unk_10033D9C0);
      v37 = v36;
      v38 = _getErrorEmbeddedNSError<A>(_:)();
      v39 = *(v0 + 248);
      if (v38)
      {
      }

      else
      {
        swift_allocError();
        *v44 = v39;
      }
    }

    v45 = *(v0 + 248);
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_10022E778()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_100240EB4;
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);

    v3 = sub_100240E2C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022E8B0(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for BenefactorInfoRecord(0);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_10022EA30, 0, 0);
}

uint64_t sub_10022EA30()
{
  v25 = v0;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[15];
  v3 = type metadata accessor for Logger();
  v0[28] = sub_100008D04(v3, qword_1003FAAE8);
  sub_10023FBA0(v2, v1, type metadata accessor for BenefactorInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  if (v6)
  {
    v8 = v0[23];
    v9 = v0[24];
    v10 = v0[20];
    v11 = v0[21];
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    (*(v11 + 16))(v8, v7 + *(v9 + 28), v10);
    sub_10023FC08(v7, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v11 + 8))(v8, v10);
    v16 = sub_10021145C(v13, v15, &v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, &v24);
    _os_log_impl(&_mh_execute_header, v4, v5, "Storage Controller: Fetching a record, recordID: %s, type: %s...", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v0[27], type metadata accessor for BenefactorInfoRecord);
  }

  v18 = v0[18];
  v17 = v0[19];
  v19 = v0[17];
  (*(v18 + 16))(v17, v0[16] + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v19);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v17, v19);
  sub_1000080F8(v0 + 2, v0[5]);
  v20 = swift_task_alloc();
  v0[29] = v20;
  *v20 = v0;
  v20[1] = sub_10022ED9C;
  v21 = v0[14];
  v22 = v0[15];

  return sub_100220038(v21, v22);
}

uint64_t sub_10022ED9C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10022EF64;
  }

  else
  {
    v2 = sub_10022EEB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022EEB0()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022EF64()
{
  v53 = v0;
  v1 = *(v0 + 240);
  sub_10000839C((v0 + 16));
  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  *(v0 + 248) = v2;
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 120);

    v5 = *(v0 + 88);
    *(v0 + 256) = v5;
    sub_10023FBA0(v4, v3, type metadata accessor for BenefactorInfoRecord);
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 208);
    if (v9)
    {
      v11 = *(v0 + 184);
      v12 = *(v0 + 192);
      v51 = v6;
      v14 = *(v0 + 160);
      v13 = *(v0 + 168);
      v15 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      *v15 = 136315650;
      (*(v13 + 16))(v11, v10 + *(v12 + 28), v14);
      sub_10023FC08(v10, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v14);
      v6 = v51;
      v19 = sub_10021145C(v16, v18, v52);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v52);
      *(v15 + 22) = 2112;
      v20 = v51;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v21;
      *v50 = v21;
      _os_log_impl(&_mh_execute_header, v7, v8, "Storage Controller: Error fetching a record, recordID: %s, type: %s, error: %@", v15, 0x20u);
      sub_100008D3C(v50, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(*(v0 + 208), type metadata accessor for BenefactorInfoRecord);
    }

    if (sub_1002DEA78(v6))
    {
      sub_10023FBA0(*(v0 + 120), *(v0 + 200), type metadata accessor for BenefactorInfoRecord);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 200);
      if (v24)
      {
        v26 = *(v0 + 184);
        v27 = *(v0 + 192);
        v28 = *(v0 + 160);
        v29 = *(v0 + 168);
        v30 = swift_slowAlloc();
        v52[0] = swift_slowAlloc();
        *v30 = 136315394;
        (*(v29 + 16))(v26, v25 + *(v27 + 28), v28);
        sub_10023FC08(v25, type metadata accessor for BenefactorInfoRecord);
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        (*(v29 + 8))(v26, v28);
        v34 = sub_10021145C(v31, v33, v52);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v52);
        _os_log_impl(&_mh_execute_header, v22, v23, "Storage Controller: Deleting unknown record, recordID: %s, type: %s", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10023FC08(*(v0 + 200), type metadata accessor for BenefactorInfoRecord);
      }

      v42 = swift_task_alloc();
      *(v0 + 264) = v42;
      v42[1] = vextq_s8(*(v0 + 120), *(v0 + 120), 8uLL);
      v43 = swift_task_alloc();
      *(v0 + 272) = v43;
      *v43 = v0;
      v43[1] = sub_10022F6C8;
      v44 = *(v0 + 176);
      v45 = *(v0 + 160);

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v44, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_10023DFB4, v42, v45);
    }

    v35 = *(v0 + 256);
    if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter() && (v36 = sub_10030B6CC(), , v36))
    {
      v37 = *(v0 + 256);
      swift_getErrorValue();
      sub_1002DEA80(*(v0 + 64), *(v0 + 72));
    }

    else
    {
      v38 = *(v0 + 256);

      *(v0 + 96) = v38;
      sub_10023F3A0(&qword_1003D8110, type metadata accessor for CKError, &unk_10033D9C0);
      v39 = v38;
      v40 = _getErrorEmbeddedNSError<A>(_:)();
      v41 = *(v0 + 256);
      if (v40)
      {
      }

      else
      {
        swift_allocError();
        *v46 = v41;
      }
    }

    v47 = *(v0 + 256);
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_10022F6C8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_10022F9A4;
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);

    v3 = sub_10022F800;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10022F800()
{
  v1 = *(v0 + 256);
  if (related decl 'e' for CKErrorCode.partialErrorsByItemID.getter())
  {
    v2 = sub_10030B6CC();

    if (v2)
    {
      v3 = *(v0 + 256);
      swift_getErrorValue();
      sub_1002DEA80(*(v0 + 64), *(v0 + 72));

LABEL_5:

      goto LABEL_7;
    }
  }

  v4 = *(v0 + 256);

  *(v0 + 96) = v4;
  sub_10023F3A0(&qword_1003D8110, type metadata accessor for CKError, &unk_10033D9C0);
  v5 = v4;
  v6 = _getErrorEmbeddedNSError<A>(_:)();
  v3 = *(v0 + 256);
  if (v6)
  {
    goto LABEL_5;
  }

  swift_allocError();
  *v7 = v3;
LABEL_7:
  v8 = *(v0 + 256);
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10022F9A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v20 = a5;
  v21 = a6;
  v19 = a3;
  v8 = sub_100005814(&qword_1003E3628, qword_10034A980);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  (*(v13 + 16))(&v19 - v14, a2 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v12);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v15, v12);
  sub_1000080F8(v22, v22[3]);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v11, v8);
  v21(v19, v20, v17);

  return sub_10000839C(v22);
}

uint64_t sub_10022FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v48 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CustodianRecord(0);
  v44 = *(v47 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v47);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAE8);
  sub_10023FBA0(a1, v13, type metadata accessor for CustodianRecord);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a1;
    v40 = v19;
    v51[0] = v19;
    *v18 = 136315394;
    v20 = v43;
    (*(v43 + 16))(v9, v13, v7);
    sub_10023FC08(v13, type metadata accessor for CustodianRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v9, v7);
    v24 = sub_10021145C(v21, v23, v51);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "Storage Controller: Saving record with recordID: %s, type: %s...", v18, 0x16u);
    swift_arrayDestroy();
    a1 = v42;

    v4 = v41;
  }

  else
  {
    sub_10023FC08(v13, type metadata accessor for CustodianRecord);
  }

  v25 = v46;
  v26 = v49;
  (*(v46 + 16))(v6, v49 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v6, v4);
  sub_1000080F8(v51, v51[3]);
  v27 = v45;
  sub_10023FBA0(a1, v45, type metadata accessor for CustodianRecord);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10023FC6C(v27, v30 + v28, type metadata accessor for CustodianRecord);
  *(v30 + v29) = v26;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v50;
  *v31 = v48;
  v31[1] = v32;
  v33 = qword_1003D7EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v47 + 48)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9C0;
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = sub_1002E2BC4(v35, v36);

  v38 = [v37 privateCloudDatabase];

  sub_100174A80(a1, v38, sub_10023FB44, v30);

  return sub_10000839C(v51);
}

uint64_t sub_10023030C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v48 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v44 = *(v47 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v47);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAE8);
  sub_10023FBA0(a1, v13, type metadata accessor for CustodianRecoveryInfoRecord);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a1;
    v40 = v19;
    v51[0] = v19;
    *v18 = 136315394;
    v20 = v43;
    (*(v43 + 16))(v9, v13, v7);
    sub_10023FC08(v13, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v9, v7);
    v24 = sub_10021145C(v21, v23, v51);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "Storage Controller: Saving record with recordID: %s, type: %s...", v18, 0x16u);
    swift_arrayDestroy();
    a1 = v42;

    v4 = v41;
  }

  else
  {
    sub_10023FC08(v13, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v25 = v46;
  v26 = v49;
  (*(v46 + 16))(v6, v49 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v6, v4);
  sub_1000080F8(v51, v51[3]);
  v27 = v45;
  sub_10023FBA0(a1, v45, type metadata accessor for CustodianRecoveryInfoRecord);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10023FC6C(v27, v30 + v28, type metadata accessor for CustodianRecoveryInfoRecord);
  *(v30 + v29) = v26;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v50;
  *v31 = v48;
  v31[1] = v32;
  v33 = qword_1003D7EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v47 + 40)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9C0;
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = sub_1002E2BC4(v35, v36);

  v38 = [v37 privateCloudDatabase];

  sub_100174D78(a1, v38, sub_10023FB74, v30);

  return sub_10000839C(v51);
}

uint64_t sub_100230970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v48 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CustodianHealthRecord(0);
  v44 = *(v47 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v47);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAE8);
  sub_10023FBA0(a1, v13, type metadata accessor for CustodianHealthRecord);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a1;
    v40 = v19;
    v51[0] = v19;
    *v18 = 136315394;
    v20 = v43;
    (*(v43 + 16))(v9, v13, v7);
    sub_10023FC08(v13, type metadata accessor for CustodianHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v9, v7);
    v24 = sub_10021145C(v21, v23, v51);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "Storage Controller: Saving record with recordID: %s, type: %s...", v18, 0x16u);
    swift_arrayDestroy();
    a1 = v42;

    v4 = v41;
  }

  else
  {
    sub_10023FC08(v13, type metadata accessor for CustodianHealthRecord);
  }

  v25 = v46;
  v26 = v49;
  (*(v46 + 16))(v6, v49 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v6, v4);
  sub_1000080F8(v51, v51[3]);
  v27 = v45;
  sub_10023FBA0(a1, v45, type metadata accessor for CustodianHealthRecord);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10023FC6C(v27, v30 + v28, type metadata accessor for CustodianHealthRecord);
  *(v30 + v29) = v26;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v50;
  *v31 = v48;
  v31[1] = v32;
  v33 = qword_1003D7EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v47 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9C0;
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = sub_1002E2BC4(v35, v36);

  v38 = [v37 privateCloudDatabase];

  sub_100175070(a1, v38, sub_10023FCD4, v30);

  return sub_10000839C(v51);
}

uint64_t sub_100230FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v48 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CustodianshipInfoRecord(0);
  v44 = *(v47 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v47);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAE8);
  sub_10023FBA0(a1, v13, type metadata accessor for CustodianshipInfoRecord);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a1;
    v40 = v19;
    v51[0] = v19;
    *v18 = 136315394;
    v20 = v43;
    (*(v43 + 16))(v9, v13, v7);
    sub_10023FC08(v13, type metadata accessor for CustodianshipInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v9, v7);
    v24 = sub_10021145C(v21, v23, v51);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "Storage Controller: Saving record with recordID: %s, type: %s...", v18, 0x16u);
    swift_arrayDestroy();
    a1 = v42;

    v4 = v41;
  }

  else
  {
    sub_10023FC08(v13, type metadata accessor for CustodianshipInfoRecord);
  }

  v25 = v46;
  v26 = v49;
  (*(v46 + 16))(v6, v49 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v6, v4);
  sub_1000080F8(v51, v51[3]);
  v27 = v45;
  sub_10023FBA0(a1, v45, type metadata accessor for CustodianshipInfoRecord);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10023FC6C(v27, v30 + v28, type metadata accessor for CustodianshipInfoRecord);
  *(v30 + v29) = v26;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v50;
  *v31 = v48;
  v31[1] = v32;
  v33 = qword_1003D7EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v47 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9C0;
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = sub_1002E2BC4(v35, v36);

  v38 = [v37 privateCloudDatabase];

  sub_100175368(a1, v38, sub_10023F538, v30);

  return sub_10000839C(v51);
}

uint64_t sub_100231638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v47 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for BeneficiaryInfoRecord(0);
  v44 = *(v50 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v50);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAE8);
  sub_10023FBA0(a1, v13, type metadata accessor for BeneficiaryInfoRecord);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a1;
    v40 = v19;
    v51[0] = v19;
    *v18 = 136315394;
    v20 = v43;
    (*(v43 + 16))(v9, &v13[*(v50 + 32)], v7);
    sub_10023FC08(v13, type metadata accessor for BeneficiaryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v9, v7);
    v24 = sub_10021145C(v21, v23, v51);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "Storage Controller: Saving record with recordID: %s, type: %s...", v18, 0x16u);
    swift_arrayDestroy();
    a1 = v42;

    v4 = v41;
  }

  else
  {
    sub_10023FC08(v13, type metadata accessor for BeneficiaryInfoRecord);
  }

  v25 = v46;
  v26 = v48;
  (*(v46 + 16))(v6, v48 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v6, v4);
  sub_1000080F8(v51, v51[3]);
  v27 = v45;
  sub_10023FBA0(a1, v45, type metadata accessor for BeneficiaryInfoRecord);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10023FC6C(v27, v30 + v28, type metadata accessor for BeneficiaryInfoRecord);
  *(v30 + v29) = v26;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v49;
  *v31 = v47;
  v31[1] = v32;
  v33 = qword_1003D7EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v50 + 40)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9F0;
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = sub_1002E2BC4(v35, v36);

  v38 = [v37 privateCloudDatabase];

  sub_100175958(a1, v38, sub_10023E7EC, v30);

  return sub_10000839C(v51);
}

uint64_t sub_100231CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v47 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for InheritanceHealthRecord(0);
  v44 = *(v50 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v50);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAE8);
  sub_10023FBA0(a1, v13, type metadata accessor for InheritanceHealthRecord);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a1;
    v40 = v19;
    v51[0] = v19;
    *v18 = 136315394;
    v20 = v43;
    (*(v43 + 16))(v9, &v13[*(v50 + 28)], v7);
    sub_10023FC08(v13, type metadata accessor for InheritanceHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v9, v7);
    v24 = sub_10021145C(v21, v23, v51);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "Storage Controller: Saving record with recordID: %s, type: %s...", v18, 0x16u);
    swift_arrayDestroy();
    a1 = v42;

    v4 = v41;
  }

  else
  {
    sub_10023FC08(v13, type metadata accessor for InheritanceHealthRecord);
  }

  v25 = v46;
  v26 = v48;
  (*(v46 + 16))(v6, v48 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v6, v4);
  sub_1000080F8(v51, v51[3]);
  v27 = v45;
  sub_10023FBA0(a1, v45, type metadata accessor for InheritanceHealthRecord);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10023FC6C(v27, v30 + v28, type metadata accessor for InheritanceHealthRecord);
  *(v30 + v29) = v26;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v49;
  *v31 = v47;
  v31[1] = v32;
  v33 = qword_1003D7EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v50 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9F0;
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = sub_1002E2BC4(v35, v36);

  v38 = [v37 privateCloudDatabase];

  sub_100175660(a1, v38, sub_10023D900, v30);

  return sub_10000839C(v51);
}

uint64_t sub_100232310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v47 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for InheritanceInvitationRecord(0);
  v44 = *(v50 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v50);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAE8);
  sub_10023FBA0(a1, v13, type metadata accessor for InheritanceInvitationRecord);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a1;
    v40 = v19;
    v51[0] = v19;
    *v18 = 136315394;
    v20 = v43;
    (*(v43 + 16))(v9, &v13[*(v50 + 36)], v7);
    sub_10023FC08(v13, type metadata accessor for InheritanceInvitationRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v9, v7);
    v24 = sub_10021145C(v21, v23, v51);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "Storage Controller: Saving record with recordID: %s, type: %s...", v18, 0x16u);
    swift_arrayDestroy();
    a1 = v42;

    v4 = v41;
  }

  else
  {
    sub_10023FC08(v13, type metadata accessor for InheritanceInvitationRecord);
  }

  v25 = v46;
  v26 = v48;
  (*(v46 + 16))(v6, v48 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v6, v4);
  sub_1000080F8(v51, v51[3]);
  v27 = v45;
  sub_10023FBA0(a1, v45, type metadata accessor for InheritanceInvitationRecord);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10023FC6C(v27, v30 + v28, type metadata accessor for InheritanceInvitationRecord);
  *(v30 + v29) = v26;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v49;
  *v31 = v47;
  v31[1] = v32;
  v33 = qword_1003D7EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v50 + 44)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9F0;
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = sub_1002E2BC4(v35, v36);

  v38 = [v37 privateCloudDatabase];

  sub_100175C50(a1, v38, sub_10023EC28, v30);

  return sub_10000839C(v51);
}

uint64_t sub_10023297C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v47 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for BenefactorInfoRecord(0);
  v44 = *(v50 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v50);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAE8);
  sub_10023FBA0(a1, v13, type metadata accessor for BenefactorInfoRecord);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a1;
    v40 = v19;
    v51[0] = v19;
    *v18 = 136315394;
    v20 = v43;
    (*(v43 + 16))(v9, &v13[*(v50 + 28)], v7);
    sub_10023FC08(v13, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v9, v7);
    v24 = sub_10021145C(v21, v23, v51);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "Storage Controller: Saving record with recordID: %s, type: %s...", v18, 0x16u);
    swift_arrayDestroy();
    a1 = v42;

    v4 = v41;
  }

  else
  {
    sub_10023FC08(v13, type metadata accessor for BenefactorInfoRecord);
  }

  v25 = v46;
  v26 = v48;
  (*(v46 + 16))(v6, v48 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v6, v4);
  sub_1000080F8(v51, v51[3]);
  v27 = v45;
  sub_10023FBA0(a1, v45, type metadata accessor for BenefactorInfoRecord);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10023FC6C(v27, v30 + v28, type metadata accessor for BenefactorInfoRecord);
  *(v30 + v29) = v26;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v49;
  *v31 = v47;
  v31[1] = v32;
  v33 = qword_1003D7EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v50 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9F0;
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = sub_1002E2BC4(v35, v36);

  v38 = [v37 privateCloudDatabase];

  sub_100175F48(a1, v38, sub_10023DC8C, v30);

  return sub_10000839C(v51);
}

uint64_t sub_100232FE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v60 = a4;
  v61 = a5;
  v54 = a3;
  v59 = a2;
  v57 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v52 - v6;
  v58 = type metadata accessor for UUID();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianRecord(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v52 - v14;
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v19 = __chkstk_darwin(v18);
  v21 = (&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (&v52 - v22);
  sub_100012D04(a1, &v52 - v22, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAE8);
    sub_10023FBA0(v59, v12, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v62[0] = v59;
      *v28 = 136315650;
      v29 = v56;
      v30 = v58;
      (*(v56 + 16))(v8, v12, v58);
      sub_10023FC08(v12, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v57) = v27;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v29 + 8))(v8, v30);
      v34 = sub_10021145C(v31, v33, v62);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v62);
      *(v28 + 22) = 2080;
      v62[5] = v24;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v35 = String.init<A>(describing:)();
      v37 = sub_10021145C(v35, v36, v62);

      *(v28 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v26, v57, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v12, type metadata accessor for CustodianRecord);
    }

    *v21 = v24;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v60(v21);

    return sub_100008D3C(v21, &unk_1003DA200, &unk_10033FA80);
  }

  else
  {
    sub_10023FC6C(v23, v17, type metadata accessor for CustodianRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAAE8);
    sub_10023FBA0(v59, v15, type metadata accessor for CustodianRecord);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v62[0] = v59;
      *v41 = 136315394;
      v42 = v56;
      v43 = v58;
      (*(v56 + 16))(v8, v15, v58);
      sub_10023FC08(v15, type metadata accessor for CustodianRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v42 + 8))(v8, v43);
      v47 = sub_10021145C(v44, v46, v62);

      *(v41 + 4) = v47;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v62);
      _os_log_impl(&_mh_execute_header, v39, v40, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v15, type metadata accessor for CustodianRecord);
    }

    v49 = v55;
    v50 = v53;
    v51 = v57;
    (*(v55 + 16))(v53, v54 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v57);
    Dependency.wrappedValue.getter();
    (*(v49 + 8))(v50, v51);
    sub_1000080F8(v62, v62[3]);
    sub_10017DF74(v17, 0, 2, v60, v61);
    sub_10023FC08(v17, type metadata accessor for CustodianRecord);
    return sub_10000839C(v62);
  }
}

uint64_t sub_10023384C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v56 = a3;
  v61 = a2;
  v59 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v7 = &v54 - v6;
  v60 = type metadata accessor for UUID();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v54 - v14;
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v18 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v19 = __chkstk_darwin(v18);
  v21 = (&v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (&v54 - v22);
  sub_100012D04(a1, &v54 - v22, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAE8);
    sub_10023FBA0(v61, v12, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64[0] = v61;
      *v28 = 136315650;
      v29 = v58;
      v30 = *(v58 + 16);
      LODWORD(v59) = v27;
      v31 = v55;
      v32 = v60;
      v30(v55, v12, v60);
      sub_10023FC08(v12, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v29 + 8))(v31, v32);
      v36 = sub_10021145C(v33, v35, v64);

      *(v28 + 4) = v36;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v64);
      *(v28 + 22) = 2080;
      v64[5] = v24;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v37 = String.init<A>(describing:)();
      v39 = sub_10021145C(v37, v38, v64);

      *(v28 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v26, v59, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v12, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    *v21 = v24;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v62(v21);

    return sub_100008D3C(v21, &unk_1003DB610, &unk_10033FA90);
  }

  else
  {
    sub_10023FC6C(v23, v17, type metadata accessor for CustodianRecoveryInfoRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAE8);
    sub_10023FBA0(v61, v15, type metadata accessor for CustodianRecoveryInfoRecord);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64[0] = v61;
      *v43 = 136315394;
      v44 = v58;
      v45 = v55;
      v46 = v60;
      (*(v58 + 16))(v55, v15, v60);
      sub_10023FC08(v15, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v44 + 8))(v45, v46);
      v50 = sub_10021145C(v47, v49, v64);

      *(v43 + 4) = v50;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v64);
      _os_log_impl(&_mh_execute_header, v41, v42, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v15, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v52 = v57;
    v53 = v59;
    (*(v57 + 16))(v7, v56 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v59);
    Dependency.wrappedValue.getter();
    (*(v52 + 8))(v7, v53);
    sub_1000080F8(v64, v64[3]);
    sub_10017E358(v17, 0, 2, v62, v63);
    sub_10023FC08(v17, type metadata accessor for CustodianRecoveryInfoRecord);
    return sub_10000839C(v64);
  }
}

uint64_t sub_1002340A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v56 = a3;
  v61 = a2;
  v59 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v7 = &v54 - v6;
  v60 = type metadata accessor for UUID();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianHealthRecord(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v54 - v14;
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v18 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v19 = __chkstk_darwin(v18);
  v21 = (&v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (&v54 - v22);
  sub_100012D04(a1, &v54 - v22, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAE8);
    sub_10023FBA0(v61, v12, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64[0] = v61;
      *v28 = 136315650;
      v29 = v58;
      v30 = *(v58 + 16);
      LODWORD(v59) = v27;
      v31 = v55;
      v32 = v60;
      v30(v55, v12, v60);
      sub_10023FC08(v12, type metadata accessor for CustodianHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v29 + 8))(v31, v32);
      v36 = sub_10021145C(v33, v35, v64);

      *(v28 + 4) = v36;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v64);
      *(v28 + 22) = 2080;
      v64[5] = v24;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v37 = String.init<A>(describing:)();
      v39 = sub_10021145C(v37, v38, v64);

      *(v28 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v26, v59, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v12, type metadata accessor for CustodianHealthRecord);
    }

    *v21 = v24;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v62(v21);

    return sub_100008D3C(v21, &qword_1003D91E8, &qword_100346AC0);
  }

  else
  {
    sub_10023FC6C(v23, v17, type metadata accessor for CustodianHealthRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAE8);
    sub_10023FBA0(v61, v15, type metadata accessor for CustodianHealthRecord);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64[0] = v61;
      *v43 = 136315394;
      v44 = v58;
      v45 = v55;
      v46 = v60;
      (*(v58 + 16))(v55, v15, v60);
      sub_10023FC08(v15, type metadata accessor for CustodianHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v44 + 8))(v45, v46);
      v50 = sub_10021145C(v47, v49, v64);

      *(v43 + 4) = v50;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v64);
      _os_log_impl(&_mh_execute_header, v41, v42, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v15, type metadata accessor for CustodianHealthRecord);
    }

    v52 = v57;
    v53 = v59;
    (*(v57 + 16))(v7, v56 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v59);
    Dependency.wrappedValue.getter();
    (*(v52 + 8))(v7, v53);
    sub_1000080F8(v64, v64[3]);
    sub_10017E73C(v17, 0, 2, v62, v63);
    sub_10023FC08(v17, type metadata accessor for CustodianHealthRecord);
    return sub_10000839C(v64);
  }
}

uint64_t sub_1002348F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v56 = a3;
  v61 = a2;
  v59 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v7 = &v54 - v6;
  v60 = type metadata accessor for UUID();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustodianshipInfoRecord(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v54 - v14;
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v18 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v19 = __chkstk_darwin(v18);
  v21 = (&v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (&v54 - v22);
  sub_100012D04(a1, &v54 - v22, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAE8);
    sub_10023FBA0(v61, v12, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64[0] = v61;
      *v28 = 136315650;
      v29 = v58;
      v30 = *(v58 + 16);
      LODWORD(v59) = v27;
      v31 = v55;
      v32 = v60;
      v30(v55, v12, v60);
      sub_10023FC08(v12, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v29 + 8))(v31, v32);
      v36 = sub_10021145C(v33, v35, v64);

      *(v28 + 4) = v36;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v64);
      *(v28 + 22) = 2080;
      v64[5] = v24;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v37 = String.init<A>(describing:)();
      v39 = sub_10021145C(v37, v38, v64);

      *(v28 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v26, v59, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v12, type metadata accessor for CustodianshipInfoRecord);
    }

    *v21 = v24;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v62(v21);

    return sub_100008D3C(v21, &unk_1003DA0E0, &unk_10033F1D0);
  }

  else
  {
    sub_10023FC6C(v23, v17, type metadata accessor for CustodianshipInfoRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAE8);
    sub_10023FBA0(v61, v15, type metadata accessor for CustodianshipInfoRecord);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64[0] = v61;
      *v43 = 136315394;
      v44 = v58;
      v45 = v55;
      v46 = v60;
      (*(v58 + 16))(v55, v15, v60);
      sub_10023FC08(v15, type metadata accessor for CustodianshipInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v44 + 8))(v45, v46);
      v50 = sub_10021145C(v47, v49, v64);

      *(v43 + 4) = v50;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v64);
      _os_log_impl(&_mh_execute_header, v41, v42, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v15, type metadata accessor for CustodianshipInfoRecord);
    }

    v52 = v57;
    v53 = v59;
    (*(v57 + 16))(v7, v56 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v59);
    Dependency.wrappedValue.getter();
    (*(v52 + 8))(v7, v53);
    sub_1000080F8(v64, v64[3]);
    sub_10017EB20(v17, 0, 2, v62, v63);
    sub_10023FC08(v17, type metadata accessor for CustodianshipInfoRecord);
    return sub_10000839C(v64);
  }
}

uint64_t sub_100235148(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v64 = a4;
  v65 = a5;
  v58 = a3;
  v63 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  v9 = type metadata accessor for UUID();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for BeneficiaryInfoRecord(0);
  v11 = __chkstk_darwin(v56);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v56 - v15;
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v20 = __chkstk_darwin(v19);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = (&v56 - v23);
  sub_100012D04(a1, &v56 - v23, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAE8);
    sub_10023FBA0(v63, v13, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v29 = 136315650;
      v31 = v61;
      v30 = v62;
      v32 = *(v61 + 16);
      v33 = &v13[*(v56 + 32)];
      LODWORD(v60) = v28;
      v34 = v57;
      v32(v57, v33, v62);
      sub_10023FC08(v13, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v31 + 8))(v34, v30);
      v38 = sub_10021145C(v35, v37, v66);

      *(v29 + 4) = v38;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v66);
      *(v29 + 22) = 2080;
      v66[5] = v25;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v39 = String.init<A>(describing:)();
      v41 = sub_10021145C(v39, v40, v66);

      *(v29 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v27, v60, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v13, type metadata accessor for BeneficiaryInfoRecord);
    }

    *v22 = v25;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v64(v22);

    return sub_100008D3C(v22, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    sub_10023FC6C(v24, v18, type metadata accessor for BeneficiaryInfoRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAAE8);
    sub_10023FBA0(v63, v16, type metadata accessor for BeneficiaryInfoRecord);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v45 = 136315394;
      v46 = v57;
      v48 = v61;
      v47 = v62;
      (*(v61 + 16))(v57, &v16[*(v56 + 32)], v62);
      sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v48 + 8))(v46, v47);
      v52 = sub_10021145C(v49, v51, v66);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v66);
      _os_log_impl(&_mh_execute_header, v43, v44, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
    }

    v54 = v59;
    v55 = v60;
    (*(v59 + 16))(v8, v58 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v60);
    Dependency.wrappedValue.getter();
    (*(v54 + 8))(v8, v55);
    sub_1000080F8(v66, v66[3]);
    sub_10017F6CC(v18, 0, 2, v64, v65);
    sub_10023FC08(v18, type metadata accessor for BeneficiaryInfoRecord);
    return sub_10000839C(v66);
  }
}

uint64_t sub_1002359A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v64 = a4;
  v65 = a5;
  v58 = a3;
  v63 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  v9 = type metadata accessor for UUID();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for InheritanceHealthRecord(0);
  v11 = __chkstk_darwin(v56);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v56 - v15;
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v20 = __chkstk_darwin(v19);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = (&v56 - v23);
  sub_100012D04(a1, &v56 - v23, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAE8);
    sub_10023FBA0(v63, v13, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v29 = 136315650;
      v31 = v61;
      v30 = v62;
      v32 = *(v61 + 16);
      v33 = &v13[*(v56 + 28)];
      LODWORD(v60) = v28;
      v34 = v57;
      v32(v57, v33, v62);
      sub_10023FC08(v13, type metadata accessor for InheritanceHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v31 + 8))(v34, v30);
      v38 = sub_10021145C(v35, v37, v66);

      *(v29 + 4) = v38;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v66);
      *(v29 + 22) = 2080;
      v66[5] = v25;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v39 = String.init<A>(describing:)();
      v41 = sub_10021145C(v39, v40, v66);

      *(v29 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v27, v60, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v13, type metadata accessor for InheritanceHealthRecord);
    }

    *v22 = v25;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v64(v22);

    return sub_100008D3C(v22, &unk_1003E10C0, &qword_100346A70);
  }

  else
  {
    sub_10023FC6C(v24, v18, type metadata accessor for InheritanceHealthRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAAE8);
    sub_10023FBA0(v63, v16, type metadata accessor for InheritanceHealthRecord);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v45 = 136315394;
      v46 = v57;
      v48 = v61;
      v47 = v62;
      (*(v61 + 16))(v57, &v16[*(v56 + 28)], v62);
      sub_10023FC08(v16, type metadata accessor for InheritanceHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v48 + 8))(v46, v47);
      v52 = sub_10021145C(v49, v51, v66);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v66);
      _os_log_impl(&_mh_execute_header, v43, v44, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v16, type metadata accessor for InheritanceHealthRecord);
    }

    v54 = v59;
    v55 = v60;
    (*(v59 + 16))(v8, v58 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v60);
    Dependency.wrappedValue.getter();
    (*(v54 + 8))(v8, v55);
    sub_1000080F8(v66, v66[3]);
    sub_10017F2E8(v18, 0, 2, v64, v65);
    sub_10023FC08(v18, type metadata accessor for InheritanceHealthRecord);
    return sub_10000839C(v66);
  }
}

uint64_t sub_100236200(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v64 = a4;
  v65 = a5;
  v58 = a3;
  v63 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  v9 = type metadata accessor for UUID();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for InheritanceInvitationRecord(0);
  v11 = __chkstk_darwin(v56);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v56 - v15;
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v20 = __chkstk_darwin(v19);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = (&v56 - v23);
  sub_100012D04(a1, &v56 - v23, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAE8);
    sub_10023FBA0(v63, v13, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v29 = 136315650;
      v31 = v61;
      v30 = v62;
      v32 = *(v61 + 16);
      v33 = &v13[*(v56 + 36)];
      LODWORD(v60) = v28;
      v34 = v57;
      v32(v57, v33, v62);
      sub_10023FC08(v13, type metadata accessor for InheritanceInvitationRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v31 + 8))(v34, v30);
      v38 = sub_10021145C(v35, v37, v66);

      *(v29 + 4) = v38;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v66);
      *(v29 + 22) = 2080;
      v66[5] = v25;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v39 = String.init<A>(describing:)();
      v41 = sub_10021145C(v39, v40, v66);

      *(v29 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v27, v60, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v13, type metadata accessor for InheritanceInvitationRecord);
    }

    *v22 = v25;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v64(v22);

    return sub_100008D3C(v22, &qword_1003E1290, &unk_1003444C0);
  }

  else
  {
    sub_10023FC6C(v24, v18, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAAE8);
    sub_10023FBA0(v63, v16, type metadata accessor for InheritanceInvitationRecord);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v45 = 136315394;
      v46 = v57;
      v48 = v61;
      v47 = v62;
      (*(v61 + 16))(v57, &v16[*(v56 + 36)], v62);
      sub_10023FC08(v16, type metadata accessor for InheritanceInvitationRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v48 + 8))(v46, v47);
      v52 = sub_10021145C(v49, v51, v66);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v66);
      _os_log_impl(&_mh_execute_header, v43, v44, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v16, type metadata accessor for InheritanceInvitationRecord);
    }

    v54 = v59;
    v55 = v60;
    (*(v59 + 16))(v8, v58 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v60);
    Dependency.wrappedValue.getter();
    (*(v54 + 8))(v8, v55);
    sub_1000080F8(v66, v66[3]);
    sub_10017FAB0(v18, 0, 2, v64, v65);
    sub_10023FC08(v18, type metadata accessor for InheritanceInvitationRecord);
    return sub_10000839C(v66);
  }
}

uint64_t sub_100236A5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v64 = a4;
  v65 = a5;
  v58 = a3;
  v63 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  v9 = type metadata accessor for UUID();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for BenefactorInfoRecord(0);
  v11 = __chkstk_darwin(v56);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v56 - v15;
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v20 = __chkstk_darwin(v19);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = (&v56 - v23);
  sub_100012D04(a1, &v56 - v23, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAE8);
    sub_10023FBA0(v63, v13, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v29 = 136315650;
      v31 = v61;
      v30 = v62;
      v32 = *(v61 + 16);
      v33 = &v13[*(v56 + 28)];
      LODWORD(v60) = v28;
      v34 = v57;
      v32(v57, v33, v62);
      sub_10023FC08(v13, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v31 + 8))(v34, v30);
      v38 = sub_10021145C(v35, v37, v66);

      *(v29 + 4) = v38;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v66);
      *(v29 + 22) = 2080;
      v66[5] = v25;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v39 = String.init<A>(describing:)();
      v41 = sub_10021145C(v39, v40, v66);

      *(v29 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v27, v60, "Storage Controller: Error saving to record to cloud, recordID: %s, type: %s, error: %s", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v13, type metadata accessor for BenefactorInfoRecord);
    }

    *v22 = v25;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v64(v22);

    return sub_100008D3C(v22, &unk_1003E1DD0, &qword_1003444D0);
  }

  else
  {
    sub_10023FC6C(v24, v18, type metadata accessor for BenefactorInfoRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAAE8);
    sub_10023FBA0(v63, v16, type metadata accessor for BenefactorInfoRecord);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v45 = 136315394;
      v46 = v57;
      v48 = v61;
      v47 = v62;
      (*(v61 + 16))(v57, &v16[*(v56 + 28)], v62);
      sub_10023FC08(v16, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v48 + 8))(v46, v47);
      v52 = sub_10021145C(v49, v51, v66);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v66);
      _os_log_impl(&_mh_execute_header, v43, v44, "Storage Controller: Successfully saved record to cloud, recordID: %s, type: %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v16, type metadata accessor for BenefactorInfoRecord);
    }

    v54 = v59;
    v55 = v60;
    (*(v59 + 16))(v8, v58 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v60);
    Dependency.wrappedValue.getter();
    (*(v54 + 8))(v8, v55);
    sub_1000080F8(v66, v66[3]);
    sub_10017FE94(v18, 0, 2, v64, v65);
    sub_10023FC08(v18, type metadata accessor for BenefactorInfoRecord);
    return sub_10000839C(v66);
  }
}

uint64_t sub_1002372B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v42 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v35 - v5;
  v7 = type metadata accessor for UUID();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustodianHealthRecord(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v40 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAE8);
  sub_10023FBA0(a1, v14, type metadata accessor for CustodianHealthRecord);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = a1;
    v35[1] = v20;
    v45[0] = v20;
    *v19 = 136315394;
    v21 = v38;
    (*(v38 + 16))(v9, v14, v7);
    sub_10023FC08(v14, type metadata accessor for CustodianHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v21 + 8))(v9, v7);
    v25 = sub_10021145C(v22, v24, v45);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v45);
    _os_log_impl(&_mh_execute_header, v16, v17, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v19, 0x16u);
    swift_arrayDestroy();
    a1 = v37;

    v4 = v36;
  }

  else
  {
    sub_10023FC08(v14, type metadata accessor for CustodianHealthRecord);
  }

  v26 = v41;
  v27 = v43;
  (*(v41 + 16))(v6, v43 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v26 + 8))(v6, v4);
  v28 = v40;
  sub_10023FBA0(a1, v40, type metadata accessor for CustodianHealthRecord);
  v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10023FC6C(v28, v31 + v29, type metadata accessor for CustodianHealthRecord);
  *(v31 + v30) = v27;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v44;
  *v32 = v42;
  v32[1] = v33;

  sub_10019E39C(a1, sub_1002402C8, v31);

  return sub_10000839C(v45);
}

uint64_t sub_1002377F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v42 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v35 - v5;
  v7 = type metadata accessor for UUID();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v40 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAE8);
  sub_10023FBA0(a1, v14, type metadata accessor for CustodianRecoveryInfoRecord);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = a1;
    v35[1] = v20;
    v45[0] = v20;
    *v19 = 136315394;
    v21 = v38;
    (*(v38 + 16))(v9, v14, v7);
    sub_10023FC08(v14, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v21 + 8))(v9, v7);
    v25 = sub_10021145C(v22, v24, v45);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v45);
    _os_log_impl(&_mh_execute_header, v16, v17, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v19, 0x16u);
    swift_arrayDestroy();
    a1 = v37;

    v4 = v36;
  }

  else
  {
    sub_10023FC08(v14, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v26 = v41;
  v27 = v43;
  (*(v41 + 16))(v6, v43 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v26 + 8))(v6, v4);
  v28 = v40;
  sub_10023FBA0(a1, v40, type metadata accessor for CustodianRecoveryInfoRecord);
  v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10023FC6C(v28, v31 + v29, type metadata accessor for CustodianRecoveryInfoRecord);
  *(v31 + v30) = v27;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v44;
  *v32 = v42;
  v32[1] = v33;

  sub_10019E068(a1, sub_10023FEF0, v31);

  return sub_10000839C(v45);
}

uint64_t sub_100237D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v42 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v37 = &v35 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  v12 = __chkstk_darwin(v10);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAE8);
  v45 = a1;
  sub_10023FBA0(a1, v14, type metadata accessor for BenefactorInfoRecord);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46[0] = v36;
    *v18 = 136315394;
    (*(v7 + 16))(v9, &v14[*(v10 + 28)], v6);
    sub_10023FC08(v14, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_10021145C(v19, v21, v46);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v46);
    _os_log_impl(&_mh_execute_header, v16, v17, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v14, type metadata accessor for BenefactorInfoRecord);
  }

  v24 = v40;
  v23 = v41;
  v25 = v43;
  v26 = v37;
  (*(v40 + 16))(v37, v43 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v41);
  Dependency.wrappedValue.getter();
  (*(v24 + 8))(v26, v23);
  v27 = v45;
  v28 = v39;
  sub_10023FBA0(v45, v39, type metadata accessor for BenefactorInfoRecord);
  v29 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10023FC6C(v28, v31 + v29, type metadata accessor for BenefactorInfoRecord);
  *(v31 + v30) = v25;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v44;
  *v32 = v42;
  v32[1] = v33;

  sub_10019FDE0(v27, sub_10023D9A4, v31);

  return sub_10000839C(v46);
}

uint64_t sub_100238260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v42 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v37 = &v35 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BeneficiaryInfoRecord(0);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  v12 = __chkstk_darwin(v10);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAE8);
  v45 = a1;
  sub_10023FBA0(a1, v14, type metadata accessor for BeneficiaryInfoRecord);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46[0] = v36;
    *v18 = 136315394;
    (*(v7 + 16))(v9, &v14[*(v10 + 32)], v6);
    sub_10023FC08(v14, type metadata accessor for BeneficiaryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_10021145C(v19, v21, v46);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v46);
    _os_log_impl(&_mh_execute_header, v16, v17, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v14, type metadata accessor for BeneficiaryInfoRecord);
  }

  v24 = v40;
  v23 = v41;
  v25 = v43;
  v26 = v37;
  (*(v40 + 16))(v37, v43 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v41);
  Dependency.wrappedValue.getter();
  (*(v24 + 8))(v26, v23);
  v27 = v45;
  v28 = v39;
  sub_10023FBA0(v45, v39, type metadata accessor for BeneficiaryInfoRecord);
  v29 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10023FC6C(v28, v31 + v29, type metadata accessor for BeneficiaryInfoRecord);
  *(v31 + v30) = v25;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v44;
  *v32 = v42;
  v32[1] = v33;

  sub_10019FAAC(v27, sub_10023E3BC, v31);

  return sub_10000839C(v46);
}

uint64_t sub_100238798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v42 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v37 = &v35 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InheritanceInvitationRecord(0);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  v12 = __chkstk_darwin(v10);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAE8);
  v45 = a1;
  sub_10023FBA0(a1, v14, type metadata accessor for InheritanceInvitationRecord);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46[0] = v36;
    *v18 = 136315394;
    (*(v7 + 16))(v9, &v14[*(v10 + 36)], v6);
    sub_10023FC08(v14, type metadata accessor for InheritanceInvitationRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_10021145C(v19, v21, v46);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v46);
    _os_log_impl(&_mh_execute_header, v16, v17, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v14, type metadata accessor for InheritanceInvitationRecord);
  }

  v24 = v40;
  v23 = v41;
  v25 = v43;
  v26 = v37;
  (*(v40 + 16))(v37, v43 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v41);
  Dependency.wrappedValue.getter();
  (*(v24 + 8))(v26, v23);
  v27 = v45;
  v28 = v39;
  sub_10023FBA0(v45, v39, type metadata accessor for InheritanceInvitationRecord);
  v29 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10023FC6C(v28, v31 + v29, type metadata accessor for InheritanceInvitationRecord);
  *(v31 + v30) = v25;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v44;
  *v32 = v42;
  v32[1] = v33;

  sub_1001A0114(v27, sub_10023E900, v31);

  return sub_10000839C(v46);
}

uint64_t sub_100238CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v42 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v37 = &v35 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InheritanceHealthRecord(0);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  v12 = __chkstk_darwin(v10);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAE8);
  v45 = a1;
  sub_10023FBA0(a1, v14, type metadata accessor for InheritanceHealthRecord);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46[0] = v36;
    *v18 = 136315394;
    (*(v7 + 16))(v9, &v14[*(v10 + 28)], v6);
    sub_10023FC08(v14, type metadata accessor for InheritanceHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_10021145C(v19, v21, v46);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v46);
    _os_log_impl(&_mh_execute_header, v16, v17, "Storage Controller: Delete called for cloud record, recordID: %s, type: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v14, type metadata accessor for InheritanceHealthRecord);
  }

  v24 = v40;
  v23 = v41;
  v25 = v43;
  v26 = v37;
  (*(v40 + 16))(v37, v43 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v41);
  Dependency.wrappedValue.getter();
  (*(v24 + 8))(v26, v23);
  v27 = v45;
  v28 = v39;
  sub_10023FBA0(v45, v39, type metadata accessor for InheritanceHealthRecord);
  v29 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10023FC6C(v28, v31 + v29, type metadata accessor for InheritanceHealthRecord);
  *(v31 + v30) = v25;
  v32 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v44;
  *v32 = v42;
  v32[1] = v33;

  sub_1001A0448(v27, sub_10023D598, v31);

  return sub_10000839C(v46);
}

uint64_t sub_100239208(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v90 = a4;
  v91 = a5;
  v86 = a3;
  v92 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v88 = *(v6 - 8);
  v89 = v6;
  __chkstk_darwin(v6);
  v87 = &v77[-v7];
  v8 = type metadata accessor for UUID();
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v83 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CustodianHealthRecord(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v77[-v15];
  __chkstk_darwin(v14);
  v18 = &v77[-v17];
  v19 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v20 = __chkstk_darwin(v19);
  v22 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v77[-v23];
  sub_100012D04(a1, &v77[-v23], &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100008D04(v45, qword_1003FAAE8);
    sub_10023FBA0(v92, v18, type metadata accessor for CustodianHealthRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v93[0] = swift_slowAlloc();
      *v48 = 136315394;
      v49 = v83;
      v50 = v84;
      v51 = v85;
      (*(v84 + 16))(v83, v18, v85);
      sub_10023FC08(v18, type metadata accessor for CustodianHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v50 + 8))(v49, v51);
      v55 = sub_10021145C(v52, v54, v93);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v93);
      _os_log_impl(&_mh_execute_header, v46, v47, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v18, type metadata accessor for CustodianHealthRecord);
    }

    v69 = v87;
    v70 = v88;
    v71 = v89;
    (*(v88 + 16))(v87, v86 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v89);
    Dependency.wrappedValue.getter();
    (*(v70 + 8))(v69, v71);
    sub_1000080F8(v93, v94);
    sub_100223BA0(v92, v90, v91);
    sub_10000839C(v93);
    v72 = v24;
    return sub_100008D3C(v72, &unk_1003D9220, &unk_10033E8C0);
  }

  v25 = *v24;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_100008D04(v26, qword_1003FAAE8);
  sub_10023FBA0(v92, v16, type metadata accessor for CustodianHealthRecord);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v81 = v27;
    v31 = v30;
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v93[0] = v80;
    *v31 = 136315650;
    v82 = v25;
    v32 = v84;
    v33 = *(v84 + 16);
    v78 = v29;
    v34 = v83;
    v35 = v13;
    v36 = v85;
    v33(v83, v16, v85);
    sub_10023FC08(v16, type metadata accessor for CustodianHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v40 = v32;
    v25 = v82;
    v41 = v36;
    v13 = v35;
    (*(v40 + 8))(v34, v41);
    v42 = sub_10021145C(v37, v39, v93);

    *(v31 + 4) = v42;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v93);
    *(v31 + 22) = 2112;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 24) = v43;
    v44 = v79;
    *v79 = v43;
    _os_log_impl(&_mh_execute_header, v28, v78, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v31, 0x20u);
    sub_100008D3C(v44, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for CustodianHealthRecord);
  }

  swift_getErrorValue();
  v56 = sub_1002DE99C(v95);
  if (!v56)
  {
LABEL_18:
    *v22 = v25;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v90(v22);

    v72 = v22;
    return sub_100008D3C(v72, &unk_1003D9220, &unk_10033E8C0);
  }

  v57 = v56;
  if (!sub_1002DEA78(v56))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v92, v13, type metadata accessor for CustodianHealthRecord);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v93[0] = v82;
    *v60 = 136315394;
    v62 = v84;
    v61 = v85;
    v63 = v13;
    v64 = v83;
    (*(v84 + 16))(v83, v63, v85);
    sub_10023FC08(v63, type metadata accessor for CustodianHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    (*(v62 + 8))(v64, v61);
    v68 = sub_10021145C(v65, v67, v93);

    *(v60 + 4) = v68;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v93);
    _os_log_impl(&_mh_execute_header, v58, v59, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v60, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v13, type metadata accessor for CustodianHealthRecord);
  }

  v74 = v87;
  v75 = v88;
  v76 = v89;
  (*(v88 + 16))(v87, v86 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v89);
  Dependency.wrappedValue.getter();
  (*(v75 + 8))(v74, v76);
  sub_1000080F8(v93, v94);
  sub_100223BA0(v92, v90, v91);

  return sub_10000839C(v93);
}

uint64_t sub_100239D14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v90 = a4;
  v91 = a5;
  v86 = a3;
  v92 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v88 = *(v6 - 8);
  v89 = v6;
  __chkstk_darwin(v6);
  v87 = &v77[-v7];
  v8 = type metadata accessor for UUID();
  v84 = *(v8 - 8);
  v85 = v8;
  __chkstk_darwin(v8);
  v83 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v77[-v15];
  __chkstk_darwin(v14);
  v18 = &v77[-v17];
  v19 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v20 = __chkstk_darwin(v19);
  v22 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v77[-v23];
  sub_100012D04(a1, &v77[-v23], &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100008D04(v45, qword_1003FAAE8);
    sub_10023FBA0(v92, v18, type metadata accessor for CustodianRecoveryInfoRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v93[0] = swift_slowAlloc();
      *v48 = 136315394;
      v49 = v83;
      v50 = v84;
      v51 = v85;
      (*(v84 + 16))(v83, v18, v85);
      sub_10023FC08(v18, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v50 + 8))(v49, v51);
      v55 = sub_10021145C(v52, v54, v93);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v93);
      _os_log_impl(&_mh_execute_header, v46, v47, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10023FC08(v18, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v69 = v87;
    v70 = v88;
    v71 = v89;
    (*(v88 + 16))(v87, v86 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v89);
    Dependency.wrappedValue.getter();
    (*(v70 + 8))(v69, v71);
    sub_1000080F8(v93, v94);
    sub_100224308(v92, v90, v91);
    sub_10000839C(v93);
    v72 = v24;
    return sub_100008D3C(v72, &unk_1003D9220, &unk_10033E8C0);
  }

  v25 = *v24;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_100008D04(v26, qword_1003FAAE8);
  sub_10023FBA0(v92, v16, type metadata accessor for CustodianRecoveryInfoRecord);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v81 = v27;
    v31 = v30;
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v93[0] = v80;
    *v31 = 136315650;
    v82 = v25;
    v32 = v84;
    v33 = *(v84 + 16);
    v78 = v29;
    v34 = v83;
    v35 = v13;
    v36 = v85;
    v33(v83, v16, v85);
    sub_10023FC08(v16, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v40 = v32;
    v25 = v82;
    v41 = v36;
    v13 = v35;
    (*(v40 + 8))(v34, v41);
    v42 = sub_10021145C(v37, v39, v93);

    *(v31 + 4) = v42;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v93);
    *(v31 + 22) = 2112;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 24) = v43;
    v44 = v79;
    *v79 = v43;
    _os_log_impl(&_mh_execute_header, v28, v78, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v31, 0x20u);
    sub_100008D3C(v44, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  swift_getErrorValue();
  v56 = sub_1002DE99C(v95);
  if (!v56)
  {
LABEL_18:
    *v22 = v25;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v90(v22);

    v72 = v22;
    return sub_100008D3C(v72, &unk_1003D9220, &unk_10033E8C0);
  }

  v57 = v56;
  if (!sub_1002DEA78(v56))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v92, v13, type metadata accessor for CustodianRecoveryInfoRecord);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v93[0] = v82;
    *v60 = 136315394;
    v62 = v84;
    v61 = v85;
    v63 = v13;
    v64 = v83;
    (*(v84 + 16))(v83, v63, v85);
    sub_10023FC08(v63, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    (*(v62 + 8))(v64, v61);
    v68 = sub_10021145C(v65, v67, v93);

    *(v60 + 4) = v68;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v93);
    _os_log_impl(&_mh_execute_header, v58, v59, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v60, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v13, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v74 = v87;
  v75 = v88;
  v76 = v89;
  (*(v88 + 16))(v87, v86 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v89);
  Dependency.wrappedValue.getter();
  (*(v75 + 8))(v74, v76);
  sub_1000080F8(v93, v94);
  sub_100224308(v92, v90, v91);

  return sub_10000839C(v93);
}

uint64_t sub_10023A820(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v94 = a4;
  v95 = a5;
  v90 = a3;
  v96 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v91 = &v81 - v7;
  v89 = type metadata accessor for UUID();
  v8 = *(v89 - 8);
  __chkstk_darwin(v89);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for BenefactorInfoRecord(0);
  v11 = __chkstk_darwin(v88);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v81 - v14;
  __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v19 = __chkstk_darwin(v18);
  v21 = (&v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (&v81 - v22);
  sub_100012D04(a1, &v81 - v22, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAE8);
    v45 = v96;
    sub_10023FBA0(v96, v17, type metadata accessor for BenefactorInfoRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v97[0] = swift_slowAlloc();
      *v48 = 136315394;
      v49 = *(v8 + 16);
      v50 = v10;
      v51 = v10;
      v52 = v8;
      v53 = v89;
      v49(v50, &v17[*(v88 + 28)], v89);
      sub_10023FC08(v17, type metadata accessor for BenefactorInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v52 + 8))(v51, v53);
      v57 = sub_10021145C(v54, v56, v97);

      *(v48 + 4) = v57;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v97);
      _os_log_impl(&_mh_execute_header, v46, v47, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v48, 0x16u);
      swift_arrayDestroy();
      v45 = v96;
    }

    else
    {
      sub_10023FC08(v17, type metadata accessor for BenefactorInfoRecord);
    }

    v73 = v91;
    v74 = v92;
    v75 = v93;
    (*(v92 + 16))(v91, v90 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v93);
    Dependency.wrappedValue.getter();
    (*(v74 + 8))(v73, v75);
    sub_1000080F8(v97, v98);
    sub_100224A70(v45, v94, v95);
    sub_10000839C(v97);
    v76 = v23;
    return sub_100008D3C(v76, &unk_1003D9220, &unk_10033E8C0);
  }

  v24 = *v23;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v86 = v8;
  v25 = type metadata accessor for Logger();
  v26 = sub_100008D04(v25, qword_1003FAAE8);
  v27 = v96;
  sub_10023FBA0(v96, v15, type metadata accessor for BenefactorInfoRecord);
  swift_errorRetain();
  v84 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v97[0] = v83;
    *v30 = 136315650;
    v31 = *(v88 + 28);
    v85 = v24;
    v32 = v86;
    v33 = v10;
    v34 = v10;
    v35 = v89;
    (*(v86 + 16))(v33, &v15[v31], v89);
    sub_10023FC08(v15, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = v32;
    v24 = v85;
    v40 = v35;
    v10 = v34;
    (*(v39 + 8))(v34, v40);
    v41 = sub_10021145C(v36, v38, v97);

    *(v30 + 4) = v41;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v97);
    *(v30 + 22) = 2112;
    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 24) = v42;
    v43 = v82;
    *v82 = v42;
    _os_log_impl(&_mh_execute_header, v28, v29, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v30, 0x20u);
    sub_100008D3C(v43, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();

    v27 = v96;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for BenefactorInfoRecord);
  }

  v58 = v87;
  swift_getErrorValue();
  v59 = sub_1002DE99C(v99);
  if (!v59)
  {
LABEL_18:
    *v21 = v24;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v94(v21);

    v76 = v21;
    return sub_100008D3C(v76, &unk_1003D9220, &unk_10033E8C0);
  }

  v60 = v59;
  if (!sub_1002DEA78(v59))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v27, v58, type metadata accessor for BenefactorInfoRecord);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v63 = 136315394;
    v64 = *(v88 + 28);
    v85 = v24;
    v65 = v86;
    v66 = v58 + v64;
    v67 = v58;
    v68 = v89;
    (*(v86 + 16))(v10, v66, v89);
    sub_10023FC08(v67, type metadata accessor for BenefactorInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (*(v65 + 8))(v10, v68);
    v72 = sub_10021145C(v69, v71, v97);
    v27 = v96;

    *(v63 + 4) = v72;
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v97);
    _os_log_impl(&_mh_execute_header, v61, v62, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v63, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v58, type metadata accessor for BenefactorInfoRecord);
  }

  v78 = v91;
  v79 = v92;
  v80 = v93;
  (*(v92 + 16))(v91, v90 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v93);
  Dependency.wrappedValue.getter();
  (*(v79 + 8))(v78, v80);
  sub_1000080F8(v97, v98);
  sub_100224A70(v27, v94, v95);

  return sub_10000839C(v97);
}

uint64_t sub_10023B364(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v94 = a4;
  v95 = a5;
  v90 = a3;
  v96 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v91 = &v81 - v7;
  v89 = type metadata accessor for UUID();
  v8 = *(v89 - 8);
  __chkstk_darwin(v89);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for BeneficiaryInfoRecord(0);
  v11 = __chkstk_darwin(v88);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v81 - v14;
  __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v19 = __chkstk_darwin(v18);
  v21 = (&v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (&v81 - v22);
  sub_100012D04(a1, &v81 - v22, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAE8);
    v45 = v96;
    sub_10023FBA0(v96, v17, type metadata accessor for BeneficiaryInfoRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v97[0] = swift_slowAlloc();
      *v48 = 136315394;
      v49 = *(v8 + 16);
      v50 = v10;
      v51 = v10;
      v52 = v8;
      v53 = v89;
      v49(v50, &v17[*(v88 + 32)], v89);
      sub_10023FC08(v17, type metadata accessor for BeneficiaryInfoRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v52 + 8))(v51, v53);
      v57 = sub_10021145C(v54, v56, v97);

      *(v48 + 4) = v57;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v97);
      _os_log_impl(&_mh_execute_header, v46, v47, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v48, 0x16u);
      swift_arrayDestroy();
      v45 = v96;
    }

    else
    {
      sub_10023FC08(v17, type metadata accessor for BeneficiaryInfoRecord);
    }

    v73 = v91;
    v74 = v92;
    v75 = v93;
    (*(v92 + 16))(v91, v90 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v93);
    Dependency.wrappedValue.getter();
    (*(v74 + 8))(v73, v75);
    sub_1000080F8(v97, v98);
    sub_1002251E4(v45, v94, v95);
    sub_10000839C(v97);
    v76 = v23;
    return sub_100008D3C(v76, &unk_1003D9220, &unk_10033E8C0);
  }

  v24 = *v23;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v86 = v8;
  v25 = type metadata accessor for Logger();
  v26 = sub_100008D04(v25, qword_1003FAAE8);
  v27 = v96;
  sub_10023FBA0(v96, v15, type metadata accessor for BeneficiaryInfoRecord);
  swift_errorRetain();
  v84 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v97[0] = v83;
    *v30 = 136315650;
    v31 = *(v88 + 32);
    v85 = v24;
    v32 = v86;
    v33 = v10;
    v34 = v10;
    v35 = v89;
    (*(v86 + 16))(v33, &v15[v31], v89);
    sub_10023FC08(v15, type metadata accessor for BeneficiaryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = v32;
    v24 = v85;
    v40 = v35;
    v10 = v34;
    (*(v39 + 8))(v34, v40);
    v41 = sub_10021145C(v36, v38, v97);

    *(v30 + 4) = v41;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v97);
    *(v30 + 22) = 2112;
    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 24) = v42;
    v43 = v82;
    *v82 = v42;
    _os_log_impl(&_mh_execute_header, v28, v29, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v30, 0x20u);
    sub_100008D3C(v43, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();

    v27 = v96;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for BeneficiaryInfoRecord);
  }

  v58 = v87;
  swift_getErrorValue();
  v59 = sub_1002DE99C(v99);
  if (!v59)
  {
LABEL_18:
    *v21 = v24;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v94(v21);

    v76 = v21;
    return sub_100008D3C(v76, &unk_1003D9220, &unk_10033E8C0);
  }

  v60 = v59;
  if (!sub_1002DEA78(v59))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v27, v58, type metadata accessor for BeneficiaryInfoRecord);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v63 = 136315394;
    v64 = *(v88 + 32);
    v85 = v24;
    v65 = v86;
    v66 = v58 + v64;
    v67 = v58;
    v68 = v89;
    (*(v86 + 16))(v10, v66, v89);
    sub_10023FC08(v67, type metadata accessor for BeneficiaryInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (*(v65 + 8))(v10, v68);
    v72 = sub_10021145C(v69, v71, v97);
    v27 = v96;

    *(v63 + 4) = v72;
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v97);
    _os_log_impl(&_mh_execute_header, v61, v62, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v63, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v58, type metadata accessor for BeneficiaryInfoRecord);
  }

  v78 = v91;
  v79 = v92;
  v80 = v93;
  (*(v92 + 16))(v91, v90 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v93);
  Dependency.wrappedValue.getter();
  (*(v79 + 8))(v78, v80);
  sub_1000080F8(v97, v98);
  sub_1002251E4(v27, v94, v95);

  return sub_10000839C(v97);
}

uint64_t sub_10023BEA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v94 = a4;
  v95 = a5;
  v90 = a3;
  v96 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v91 = &v81 - v7;
  v89 = type metadata accessor for UUID();
  v8 = *(v89 - 8);
  __chkstk_darwin(v89);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for InheritanceInvitationRecord(0);
  v11 = __chkstk_darwin(v88);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v81 - v14;
  __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v19 = __chkstk_darwin(v18);
  v21 = (&v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (&v81 - v22);
  sub_100012D04(a1, &v81 - v22, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAE8);
    v45 = v96;
    sub_10023FBA0(v96, v17, type metadata accessor for InheritanceInvitationRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v97[0] = swift_slowAlloc();
      *v48 = 136315394;
      v49 = *(v8 + 16);
      v50 = v10;
      v51 = v10;
      v52 = v8;
      v53 = v89;
      v49(v50, &v17[*(v88 + 36)], v89);
      sub_10023FC08(v17, type metadata accessor for InheritanceInvitationRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v52 + 8))(v51, v53);
      v57 = sub_10021145C(v54, v56, v97);

      *(v48 + 4) = v57;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v97);
      _os_log_impl(&_mh_execute_header, v46, v47, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v48, 0x16u);
      swift_arrayDestroy();
      v45 = v96;
    }

    else
    {
      sub_10023FC08(v17, type metadata accessor for InheritanceInvitationRecord);
    }

    v73 = v91;
    v74 = v92;
    v75 = v93;
    (*(v92 + 16))(v91, v90 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v93);
    Dependency.wrappedValue.getter();
    (*(v74 + 8))(v73, v75);
    sub_1000080F8(v97, v98);
    sub_100225958(v45, v94, v95);
    sub_10000839C(v97);
    v76 = v23;
    return sub_100008D3C(v76, &unk_1003D9220, &unk_10033E8C0);
  }

  v24 = *v23;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v86 = v8;
  v25 = type metadata accessor for Logger();
  v26 = sub_100008D04(v25, qword_1003FAAE8);
  v27 = v96;
  sub_10023FBA0(v96, v15, type metadata accessor for InheritanceInvitationRecord);
  swift_errorRetain();
  v84 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v97[0] = v83;
    *v30 = 136315650;
    v31 = *(v88 + 36);
    v85 = v24;
    v32 = v86;
    v33 = v10;
    v34 = v10;
    v35 = v89;
    (*(v86 + 16))(v33, &v15[v31], v89);
    sub_10023FC08(v15, type metadata accessor for InheritanceInvitationRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = v32;
    v24 = v85;
    v40 = v35;
    v10 = v34;
    (*(v39 + 8))(v34, v40);
    v41 = sub_10021145C(v36, v38, v97);

    *(v30 + 4) = v41;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v97);
    *(v30 + 22) = 2112;
    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 24) = v42;
    v43 = v82;
    *v82 = v42;
    _os_log_impl(&_mh_execute_header, v28, v29, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v30, 0x20u);
    sub_100008D3C(v43, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();

    v27 = v96;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for InheritanceInvitationRecord);
  }

  v58 = v87;
  swift_getErrorValue();
  v59 = sub_1002DE99C(v99);
  if (!v59)
  {
LABEL_18:
    *v21 = v24;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v94(v21);

    v76 = v21;
    return sub_100008D3C(v76, &unk_1003D9220, &unk_10033E8C0);
  }

  v60 = v59;
  if (!sub_1002DEA78(v59))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v27, v58, type metadata accessor for InheritanceInvitationRecord);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v63 = 136315394;
    v64 = *(v88 + 36);
    v85 = v24;
    v65 = v86;
    v66 = v58 + v64;
    v67 = v58;
    v68 = v89;
    (*(v86 + 16))(v10, v66, v89);
    sub_10023FC08(v67, type metadata accessor for InheritanceInvitationRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (*(v65 + 8))(v10, v68);
    v72 = sub_10021145C(v69, v71, v97);
    v27 = v96;

    *(v63 + 4) = v72;
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v97);
    _os_log_impl(&_mh_execute_header, v61, v62, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v63, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v58, type metadata accessor for InheritanceInvitationRecord);
  }

  v78 = v91;
  v79 = v92;
  v80 = v93;
  (*(v92 + 16))(v91, v90 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v93);
  Dependency.wrappedValue.getter();
  (*(v79 + 8))(v78, v80);
  sub_1000080F8(v97, v98);
  sub_100225958(v27, v94, v95);

  return sub_10000839C(v97);
}

uint64_t sub_10023C9EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v94 = a4;
  v95 = a5;
  v90 = a3;
  v96 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v91 = &v81 - v7;
  v89 = type metadata accessor for UUID();
  v8 = *(v89 - 8);
  __chkstk_darwin(v89);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for InheritanceHealthRecord(0);
  v11 = __chkstk_darwin(v88);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v81 - v14;
  __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v19 = __chkstk_darwin(v18);
  v21 = (&v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (&v81 - v22);
  sub_100012D04(a1, &v81 - v22, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAE8);
    v45 = v96;
    sub_10023FBA0(v96, v17, type metadata accessor for InheritanceHealthRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v97[0] = swift_slowAlloc();
      *v48 = 136315394;
      v49 = *(v8 + 16);
      v50 = v10;
      v51 = v10;
      v52 = v8;
      v53 = v89;
      v49(v50, &v17[*(v88 + 28)], v89);
      sub_10023FC08(v17, type metadata accessor for InheritanceHealthRecord);
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v52 + 8))(v51, v53);
      v57 = sub_10021145C(v54, v56, v97);

      *(v48 + 4) = v57;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v97);
      _os_log_impl(&_mh_execute_header, v46, v47, "Storage Controller: Record deleted successfully at cloud, recordID: %s, type: %s", v48, 0x16u);
      swift_arrayDestroy();
      v45 = v96;
    }

    else
    {
      sub_10023FC08(v17, type metadata accessor for InheritanceHealthRecord);
    }

    v73 = v91;
    v74 = v92;
    v75 = v93;
    (*(v92 + 16))(v91, v90 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v93);
    Dependency.wrappedValue.getter();
    (*(v74 + 8))(v73, v75);
    sub_1000080F8(v97, v98);
    sub_1002260CC(v45, v94, v95);
    sub_10000839C(v97);
    v76 = v23;
    return sub_100008D3C(v76, &unk_1003D9220, &unk_10033E8C0);
  }

  v24 = *v23;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v86 = v8;
  v25 = type metadata accessor for Logger();
  v26 = sub_100008D04(v25, qword_1003FAAE8);
  v27 = v96;
  sub_10023FBA0(v96, v15, type metadata accessor for InheritanceHealthRecord);
  swift_errorRetain();
  v84 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v97[0] = v83;
    *v30 = 136315650;
    v31 = *(v88 + 28);
    v85 = v24;
    v32 = v86;
    v33 = v10;
    v34 = v10;
    v35 = v89;
    (*(v86 + 16))(v33, &v15[v31], v89);
    sub_10023FC08(v15, type metadata accessor for InheritanceHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v39 = v32;
    v24 = v85;
    v40 = v35;
    v10 = v34;
    (*(v39 + 8))(v34, v40);
    v41 = sub_10021145C(v36, v38, v97);

    *(v30 + 4) = v41;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v97);
    *(v30 + 22) = 2112;
    swift_errorRetain();
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 24) = v42;
    v43 = v82;
    *v82 = v42;
    _os_log_impl(&_mh_execute_header, v28, v29, "Storage Controller: Failed to delete record at cloud, recordID: %s, type: %s, error: %@", v30, 0x20u);
    sub_100008D3C(v43, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();

    v27 = v96;
  }

  else
  {
    sub_10023FC08(v15, type metadata accessor for InheritanceHealthRecord);
  }

  v58 = v87;
  swift_getErrorValue();
  v59 = sub_1002DE99C(v99);
  if (!v59)
  {
LABEL_18:
    *v21 = v24;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v94(v21);

    v76 = v21;
    return sub_100008D3C(v76, &unk_1003D9220, &unk_10033E8C0);
  }

  v60 = v59;
  if (!sub_1002DEA78(v59))
  {

    goto LABEL_18;
  }

  sub_10023FBA0(v27, v58, type metadata accessor for InheritanceHealthRecord);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v63 = 136315394;
    v64 = *(v88 + 28);
    v85 = v24;
    v65 = v86;
    v66 = v58 + v64;
    v67 = v58;
    v68 = v89;
    (*(v86 + 16))(v10, v66, v89);
    sub_10023FC08(v67, type metadata accessor for InheritanceHealthRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (*(v65 + 8))(v10, v68);
    v72 = sub_10021145C(v69, v71, v97);
    v27 = v96;

    *(v63 + 4) = v72;
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v97);
    _os_log_impl(&_mh_execute_header, v61, v62, "Storage Controller: Deletion failed due to unknow item at CK at server, recordID: %s, type: %s", v63, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v58, type metadata accessor for InheritanceHealthRecord);
  }

  v78 = v91;
  v79 = v92;
  v80 = v93;
  (*(v92 + 16))(v91, v90 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v93);
  Dependency.wrappedValue.getter();
  (*(v79 + 8))(v78, v80);
  sub_1000080F8(v97, v98);
  sub_1002260CC(v27, v94, v95);

  return sub_10000839C(v97);
}

uint64_t sub_10023D530()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10023D574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10023D5C4()
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

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023D774()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
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

uint64_t sub_10023D9D0()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023DB3C()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023DD30()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023DE78(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BenefactorInfoRecord(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000082A8;

  return sub_10021A42C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_10023E004()
{
  result = qword_1003DEC08;
  if (!qword_1003DEC08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DEC08);
  }

  return result;
}

uint64_t sub_10023E05C()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v11 = sub_100005814(&qword_1003E3630, &unk_100346AA0);
  v4 = *(v11 - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);

  v9(v7 + v1[9], v8);
  sub_100012324(*(v7 + v1[10]), *(v7 + v1[10] + 8));
  (*(v4 + 8))(v0 + v5, v11);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_10023E27C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

id sub_10023E304@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100219190(a1, v6, a2);
}

uint64_t sub_10023E3E8()
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

uint64_t sub_10023E5FC()
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

uint64_t sub_10023E834()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10023E8B4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10023E92C()
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

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023EAB8()
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

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023EC6C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, unint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2 & 1, v3 + v7, v9, v10);
}

void sub_10023ED60(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v46 = a2;
  v15 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v47 = a3;
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  v19 = qword_1003D7F40;

  v20 = a5;
  v21 = a6;

  if (v19 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAAA0);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Changing CK record status to declined...", v25, 2u);
  }

  v26 = objc_autoreleasePoolPush();
  v27 = sub_1002E1D08(*(a1 + *(v15 + 40)), *(a1 + *(v15 + 40) + 8));
  if (!v27)
  {
    v27 = sub_10017DD94();
  }

  v28 = v27;
  v50 = v27;
  sub_1001EE71C(&v50);
  objc_autoreleasePoolPop(v26);
  v29 = CKRecord.recordType.getter();
  v31 = v30;

  if ((v29 != 0xD00000000000001FLL || 0x80000001003303D0 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v29 == 0xD00000000000001BLL && 0x8000000100330380 == v31)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v32, v33))
        {
          goto LABEL_13;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "Cannot recognize record type! Failed to change CKRecord trusted contact status to declined.";
        goto LABEL_12;
      }
    }

    sub_10023FBA0(a1, v17, type metadata accessor for InheritanceInvitationRecord);
    sub_1000080F8((v46 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v46 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
    v44 = swift_allocObject();
    *(v44 + 16) = sub_10023F384;
    *(v44 + 24) = v18;

    sub_1002792B4(v17, sub_10021F028, 0, 0, sub_10023F398, v44);

    sub_10023FC08(v17, type metadata accessor for InheritanceInvitationRecord);

    return;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Invalid Record! Failed to change CKRecord trusted contact status to declined.";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v32, v33, v35, v34, 2u);
  }

LABEL_13:

  type metadata accessor for InheritanceError(0);
  v49 = 2;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
  _BridgedStoredNSError.init(_:userInfo:)();
  v36 = v50;
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "Aborting deletion flow. Failed to decline fetched record. Error: %@.", v39, 0xCu);
    sub_100008D3C(v40, &unk_1003D9140, &qword_10033E640);
  }

  v48 = 2113;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v42 = v49;
  v47(v49);
}

uint64_t sub_10023F334()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10023F3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10023F3E8()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023F5B4()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10023F724()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v11 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v4 = *(v11 - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v9(v7 + v1[7], v8);

  sub_100012324(*(v7 + v1[10]), *(v7 + v1[10] + 8));
  (*(v4 + 8))(v0 + v5, v11);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_10023F944()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10023FBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023FC08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10023FC6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10023FD00()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  return _swift_deallocObject(v0, ((((v11 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10023FF1C()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  return _swift_deallocObject(v0, ((v11 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100240128()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[5], v4);
  v6 = v1[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = (v0 + v2 + v1[7]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1002402F4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, v3 + v6, v8, v10, v11);
}

uint64_t sub_1002403B8()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[5], v4);
  v6 = v1[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = (v0 + v2 + v1[7]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1002405C0()
{
  v1 = sub_100005814(&qword_1003E3628, qword_10034A980);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100240654(uint64_t a1)
{
  sub_100005814(&qword_1003E3628, qword_10034A980);

  return sub_10030B848(a1);
}

uint64_t sub_1002406D0()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1002408EC(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a2(v2 + v4, v6, v7);
}

uint64_t sub_1002409A4()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v17 = sub_100005814(&unk_1003D9200, &unk_10033EC90);
  v3 = *(v17 - 8);
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v5 = v0 + ((v2 + 16) & ~v2);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v5 + v1[5], v6);

  v9 = (v5 + v1[10]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  sub_100012324(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  v11 = v1[16];
  if (!(*(v7 + 48))(v5 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (((v2 + 16) & ~v2) + v16 + v4) & ~v4;
  v13 = (((v15 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v12, v17);

  return _swift_deallocObject(v0, v13 + 8);
}

uint64_t sub_100240C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v11 = *(a3(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_100005814(a4, a5) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v6 + v16);
  v18 = *(v6 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a6(a1, a2, v6 + v12, v6 + v15, v17, v18);
}

uint64_t sub_100240EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-1] - v6;
  v8 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-1] - v10;
  (*(v9 + 16))(&v19[-1] - v10, a2 + OBJC_IVAR____TtC13appleaccountd26AgeMigrationAccountManager__followUpController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  v12 = v20;
  v13 = v21;
  sub_1000080F8(v19, v20);
  v14 = AAFollowUpIdentifierAgeMigration;
  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v7, v4);
  (*(v13 + 32))(v14, sub_100242090, v16, v12, v13);

  return sub_10000839C(v19);
}

uint64_t sub_100241120(char a1, uint64_t a2)
{
  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAB90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cleared follow up for age migration with success: %{BOOL}d", v7, 8u);
  }

  if (a2)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Encountered error while clearing follow up: %@", v10, 0xCu);
      sub_100083380(v11);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100241338(uint64_t a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier:v4];

  if (!v6)
  {
    v6 = [v5 mainBundle];
  }

  v12._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0xD000000000000018;
  v7.value._object = 0x8000000100331550;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v12)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_100241438(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_100005814(&qword_1003E36F8, qword_100346B68);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = sub_100242BA0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003B0B38;
  v14 = _Block_copy(aBlock);
  v15 = a4;

  [a2 presentModel:a3 completion:v14];
  _Block_release(v14);
}

void sub_100241608(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(ACAccountStore) init];
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    if (a1)
    {
      swift_getErrorValue();
      swift_errorRetain();
      v6 = sub_100256810(v46, v47);
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {

          goto LABEL_9;
        }
      }

      swift_getErrorValue();
      if (sub_100256874(v44, v45) == -1)
      {
        if (qword_1003D7F90 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100008D04(v36, qword_1003FAB90);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "User deferred acting on prompt... don't save", v39, 2u);
        }

        v16 = 3;
      }

      else
      {

        v16 = 0;
      }

      goto LABEL_27;
    }

LABEL_9:
    v12 = [a2 bundleID];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10000E680(v5, v13, v15);

    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAB90);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = v21;
      *v20 = 136315138;
      type metadata accessor for MisconfiguredAgePromptResponse(0);
      v22 = String.init<A>(describing:)();
      v24 = sub_10021145C(v22, v23, &v48);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Sending back this cached response: %s", v20, 0xCu);
      sub_10000839C(v21);
    }

LABEL_27:
    if (qword_1003D7F90 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAB90);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109120;
      *(v43 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v41, v42, "Sending back user action response: %d", v43, 8u);
    }

    LODWORD(v48) = v16;
    sub_100005814(&qword_1003E36F8, qword_100346B68);
    CheckedContinuation.resume(returning:)();

    return;
  }

  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAB90);
  v26 = a2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v30;
    *v29 = 136315138;
    v31 = [v26 bundleID];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_10021145C(v32, v34, &v48);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "User has not seen the migration alert for bundleID: %s", v29, 0xCu);
    sub_10000839C(v30);
  }

  LODWORD(v48) = 0;
  sub_100005814(&qword_1003E36F8, qword_100346B68);
  CheckedContinuation.resume(returning:)();
}

uint64_t sub_100241BE0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd26AgeMigrationAccountManager__followUpController;
  v2 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AgeMigrationAccountManager(uint64_t a1)
{
  result = qword_1003E3668;
  if (!qword_1003E3668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100241CDC(uint64_t a1)
{
  sub_100241D6C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100241D6C(uint64_t a1)
{
  if (!qword_1003DB700)
  {
    sub_100008CBC(&unk_1003DACE0, &unk_10033F920);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003DB700);
    }
  }
}

uint64_t sub_100241DF4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100241EC8;
  v2 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1, 0, 0, 0xD00000000000001BLL, 0x80000001003313F0, sub_100241FF4, v2, &type metadata for () + 8);
}

uint64_t sub_100241EC8()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_100241FDC;
  }

  else
  {
    v2 = sub_10014920C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100241FFC()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100242090(char a1, uint64_t a2)
{
  sub_100005814(&qword_1003DABC0, &unk_100342840);

  return sub_100241120(a1, a2);
}

uint64_t sub_10024211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100242140, 0, 0);
}

uint64_t sub_100242140()
{
  v58 = v0;
  if (qword_1003D7F90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAB90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "attempt to display misconfigured age prompt", v4, 2u);
  }

  v5 = *(v0 + 24);

  v56 = [objc_allocWithZone(AAAgeMigrationFlowPresenter) init];
  *(v0 + 56) = v56;
  v6 = [v5 title];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 32);
    sub_100241338(0xD00000000000001ELL, 0x8000000100331410);
    sub_100005814(&unk_1003E7720, &qword_100346B60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10033E5C0;
    *(v14 + 56) = &type metadata for String;
    v15 = sub_100242A70();
    *(v14 + 64) = v15;
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    *(v0 + 16) = v11;

    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    *(v14 + 72) = v16;
    *(v14 + 80) = v17;
    v8 = String.init(format:_:)();
    v10 = v18;
  }

  v19 = [*(v0 + 24) message];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v54 = *(v0 + 40);
    v55 = *(v0 + 48);
    v26 = *(v0 + 32);
    v27 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v27 = 136315906;
    *(v27 + 4) = sub_10021145C(v8, v10, &v57);
    *(v27 + 12) = 2080;

    v28 = sub_10021145C(v21, v23, &v57);

    *(v27 + 14) = v28;
    *(v27 + 22) = 2080;
    *(v27 + 24) = sub_10021145C(v26, v54, &v57);
    *(v27 + 32) = 2048;
    *(v27 + 34) = v55;
    _os_log_impl(&_mh_execute_header, v24, v25, "title %s, message %s, emailAddress = %s, ageOfMajority = %ld", v27, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v29 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v29 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    v31 = *(v0 + 32);
    v30 = *(v0 + 40);
    sub_100241338(0xD000000000000020, 0x8000000100331500);
    sub_100005814(&unk_1003E7720, &qword_100346B60);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10033E5C0;
    *(v32 + 56) = &type metadata for String;
    v33 = sub_100242A70();
    *(v32 + 32) = v31;
    *(v32 + 40) = v30;
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v33;
    *(v32 + 64) = v33;
    *(v32 + 72) = v31;
    *(v32 + 80) = v30;
    swift_bridgeObjectRetain_n();
    String.init(format:_:)();
    v35 = v34;

    v23 = v35;
  }

  *(v0 + 64) = v23;
  v36 = *(v0 + 24);

  sub_100241338(0xD000000000000027, 0x8000000100331430);
  sub_100241338(0xD00000000000002FLL, 0x8000000100331460);
  sub_100241338(0xD000000000000027, 0x8000000100331490);
  v37 = [v36 bundleID];
  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = [*(v0 + 24) altDSID];
  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = objc_allocWithZone(AAMisconfiguredAgePromptViewModel);
  v40 = String._bridgeToObjectiveC()();

  v41 = String._bridgeToObjectiveC()();

  v42 = String._bridgeToObjectiveC()();

  v43 = String._bridgeToObjectiveC()();

  v44 = String._bridgeToObjectiveC()();

  v45 = [v39 initWithTitle:v40 message:v41 primaryButtonText:v42 secondaryButtonText:v43 cancelButtonText:v44 bundleID:v37 altDSID:v38];
  *(v0 + 72) = v45;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Displaying misconfigured age prompt", v48, 2u);
  }

  v49 = *(v0 + 24);

  v50 = swift_task_alloc();
  *(v0 + 80) = v50;
  v50[2] = v56;
  v50[3] = v45;
  v50[4] = v49;
  v51 = swift_task_alloc();
  *(v0 + 88) = v51;
  type metadata accessor for MisconfiguredAgePromptResponse(0);
  *v51 = v0;
  v51[1] = sub_1002428E4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 96, 0, 0, 0xD000000000000038, 0x80000001003314C0, sub_100242AC4, v50, v52);
}

uint64_t sub_1002428E4()
{

  return _swift_task_switch(sub_1002429FC, 0, 0);
}

uint64_t sub_1002429FC()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 96);
  v3 = *(v0 + 8);

  return v3(v2);
}