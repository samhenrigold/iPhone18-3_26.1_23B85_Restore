void sub_100082AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *), uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v88 = a5;
  v89 = a7;
  v82 = a2;
  v83 = a3;
  v12 = type metadata accessor for UUID();
  v87 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v82 - v17;
  __chkstk_darwin(v16);
  v20 = &v82 - v19;
  v21 = *(a4 + 40);

  os_unfair_lock_lock(v21);
  v22 = *(a4 + 16);
  v23 = *(a4 + 40);

  os_unfair_lock_unlock(v23);
  if (v22)
  {
    v85 = a8;
    v86 = a6;
    v84 = a1;
    v24 = UUID.uuidString.getter();
    if (*(v22 + 16))
    {
      v26 = sub_1003084DC(v24, v25);
      v28 = v27;

      if (v28)
      {
        v29 = *(*(v22 + 56) + v26);

        if (!v29)
        {
          v69 = v86;

          v70 = v85;

          sub_100082064(v84, v82, v83, a4, v88, v69, v89, v70);

          return;
        }

        v30 = v12;
        if (v29 == 1)
        {
          v31 = v87;
          v32 = v84;
          if (qword_1003D7F48 != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          sub_100008D04(v33, qword_1003FAAB8);
          (*(v31 + 16))(v18, v32, v12);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v34, v35))
          {

            (*(v31 + 8))(v18, v30);
            goto LABEL_32;
          }

          v36 = swift_slowAlloc();
          v37 = v31;
          v38 = swift_slowAlloc();
          v91 = v38;
          *v36 = 136315138;
          v39 = UUID.uuidString.getter();
          v40 = v30;
          v42 = v41;
          (*(v37 + 8))(v18, v40);
          v43 = sub_10021145C(v39, v42, &v91);

          *(v36 + 4) = v43;
          v44 = "Custodian %s is already known to IdMS and accepted";
        }

        else
        {
          v71 = v87;
          v72 = v84;
          if (qword_1003D7F48 != -1)
          {
            swift_once();
          }

          v73 = type metadata accessor for Logger();
          sub_100008D04(v73, qword_1003FAAB8);
          (*(v71 + 16))(v15, v72, v12);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v34, v35))
          {

            (*(v71 + 8))(v15, v30);
            goto LABEL_32;
          }

          v36 = swift_slowAlloc();
          v74 = v71;
          v38 = swift_slowAlloc();
          v91 = v38;
          *v36 = 136315138;
          v75 = UUID.uuidString.getter();
          v76 = v30;
          v78 = v77;
          (*(v74 + 8))(v15, v76);
          v79 = sub_10021145C(v75, v78, &v91);

          *(v36 + 4) = v79;
          v44 = "Custodian %s IdMS status is unknown, Investigate.";
        }

        _os_log_impl(&_mh_execute_header, v34, v35, v44, v36, 0xCu);
        sub_10000839C(v38);

LABEL_32:
        v80 = v89;
        v81 = v88(0);
        v80(v81);

        return;
      }
    }

    else
    {
    }

    type metadata accessor for AACustodianError(0);
    v90 = -7018;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000836B8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v50 = v91;
    v51 = v12;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100008D04(v52, qword_1003FAAB8);
    v53 = v87;
    (*(v87 + 16))(v20, v84, v12);
    v54 = v50;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v91 = v59;
      *v57 = 136315394;
      v60 = UUID.uuidString.getter();
      v61 = v53;
      v63 = v62;
      (*(v61 + 8))(v20, v51);
      v64 = sub_10021145C(v60, v63, &v91);

      *(v57 + 4) = v64;
      *(v57 + 12) = 2112;
      v65 = v54;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 14) = v66;
      *v58 = v66;
      _os_log_impl(&_mh_execute_header, v55, v56, "Custodian %s not found on IdMS: %@", v57, 0x16u);
      sub_100083380(v58);

      sub_10000839C(v59);
    }

    else
    {

      (*(v53 + 8))(v20, v12);
    }

    v67 = v54;
    v68 = v88(v54);
    v89(v68);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100008D04(v45, qword_1003FAAB8);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "No Custodian statuses found on IdMS", v48, 2u);
    }

    v49 = v88(0);
    v89(v49);
  }
}

uint64_t sub_100083380(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003D9140, &qword_10033E640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000833EC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  sub_10007E8B8(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t sub_100083490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000834A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008CBC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000834FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000835F4(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);
  v14 = *(v2 + v8 + 8);

  return sub_10007EABC(a1, a2, v9, v2 + v6, v11, v12, v13, v14);
}

uint64_t sub_1000836B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100083700()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100083740()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

uint64_t sub_100083784()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100083868(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_10007F874(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_10008390C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100083964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_1000DCFEC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100083A40()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100083AA0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100083AB0()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100083B0C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100083B2C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100083B90()
{
  type metadata accessor for CustodianKeyRepair(0);
  sub_100005814(&qword_1003DB068, &qword_10033F998);
  result = String.init<A>(describing:)();
  qword_1003DAC00 = result;
  *algn_1003DAC08 = v1;
  return result;
}

uint64_t sub_100083BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  if (!a1)
  {
    return sub_1000845D8(a3, a4, a5, a6, a7);
  }

  swift_errorRetain();
  a6(a1);
}

uint64_t sub_100083C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v31 = type metadata accessor for URL();
  v28 = *(v31 - 8);
  v10 = __chkstk_darwin(v31);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v28 - v17;
  (*(v16 + 16))(&v28 - v17, v4 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__custodianStorage, v15);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v18, v15);
  v19 = sub_1000080F8(v33, v33[3]);
  v20 = swift_allocObject();
  v21 = v29;
  v22 = v30;
  v20[2] = a1;
  v20[3] = v21;
  v20[4] = v22;
  v23 = sub_1000080F8((*v19 + 16), *(*v19 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v24 = *(v28 + 8);
  v25 = v12;
  v26 = v31;
  v24(v25, v31);
  (*(v7 + 16))(v9, *v23 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  sub_1000080F8(v32, v32[3]);
  sub_1000324D8(v14, sub_100097CA0, v20);

  v24(v14, v26);
  sub_10000839C(v32);
  return sub_10000839C(v33);
}

void sub_100084010(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v50 = type metadata accessor for CustodianRecord(0);
  v10 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for UUID();
  v13 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to fetch custodians", v19, 2u);
    }

    v20 = a1;
    goto LABEL_19;
  }

  v46 = a3;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v44[1] = a5;
    v45 = a4;
    v52 = _swiftEmptyArrayStorage;
    sub_1002E0370(0, v21, 0);
    v22 = v52;
    v23 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v24 = *(v10 + 72);
    v48 = v13 + 32;
    v49 = v24;
    v25 = v47;
    do
    {
      sub_100094A08(v23, v12, type metadata accessor for CustodianRecord);
      (*(v13 + 16))(v15, &v12[*(v50 + 20)], v25);
      sub_1000949A8(v12, type metadata accessor for CustodianRecord);
      v52 = v22;
      v27 = v22[2];
      v26 = v22[3];
      if (v27 >= v26 >> 1)
      {
        sub_1002E0370((v26 > 1), v27 + 1, 1);
        v25 = v47;
        v22 = v52;
      }

      v22[2] = v27 + 1;
      (*(v13 + 32))(v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v27, v15, v25);
      v23 += v49;
      --v21;
    }

    while (v21);
    a4 = v45;
  }

  v29 = sub_1002E20C0(v28);

  v30 = sub_10009366C(v22, v29);

  if ((v30 & 1) == 0)
  {

    v20 = 0;
LABEL_19:
    a4(v20);
    return;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100008D04(v31, qword_1003FAA88);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = Array.description.getter();
    v37 = sub_10021145C(v35, v36, &v52);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = Array.description.getter();
    v39 = a4;
    v41 = v40;

    v42 = sub_10021145C(v38, v41, &v52);
    a4 = v39;

    *(v34 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "No matching custodians found on device to repair. uuidsToRepair %s custodiansOnDevice: %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  type metadata accessor for AACustodianError(0);
  v51 = -7050;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  v43 = v52;
  a4(v52);
}

uint64_t sub_1000845D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a4;
  v52 = a2;
  v53 = a3;
  v7 = type metadata accessor for KeyRepairContext(0);
  v54 = *(v7 - 1);
  v8 = __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v44 - v12;
  v47 = v14;
  __chkstk_darwin(v11);
  v16 = &v44 - v15;
  v17 = [objc_allocWithZone(NSOperationQueue) init];
  [v17 setMaxConcurrentOperationCount:1];
  [v17 setQualityOfService:25];
  v18 = *(a1 + 16);
  v49 = a5;
  v56 = v17;
  if (v18)
  {
    v45 = v16;
    v46 = v10;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002E032C(0, v18, 0);
    v19 = aBlock[0];
    v51 = type metadata accessor for UUID();
    v20 = *(v51 - 8);
    v50 = *(v20 + 16);
    v21 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v22 = *(v20 + 72);
    do
    {
      v50(v13, v21, v51);
      v13[v7[5]] = 1;
      v13[v7[6]] = 0;
      v23 = &v13[v7[7]];
      v24 = v53;
      *v23 = v52;
      v23[1] = v24;
      aBlock[0] = v19;
      v26 = v19[2];
      v25 = v19[3];

      if (v26 >= v25 >> 1)
      {
        sub_1002E032C((v25 > 1), v26 + 1, 1);
        v19 = aBlock[0];
      }

      v19[2] = v26 + 1;
      sub_100094BE4(v13, v19 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v26, type metadata accessor for KeyRepairContext);
      v21 += v22;
      --v18;
    }

    while (v18);
    a5 = v49;
    v17 = v56;
    v16 = v45;
    v27 = v46;
  }

  else
  {
    v27 = v10;
    v19 = _swiftEmptyArrayStorage;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = &_swiftEmptyDictionarySingleton;
  v29 = swift_allocObject();
  *(v29 + 16) = _swiftEmptyArrayStorage;
  v30 = v19[2];
  v31 = v55;
  if (v30)
  {
    v32 = *(v54 + 80);
    v33 = v19 + ((v32 + 32) & ~v32);
    v53 = *(v54 + 72);
    v54 = v32;
    v51 = (v47 + ((v32 + 24) & ~v32) + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v32 + 24) & ~v32;
    v34 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      sub_100094A08(v33, v16, type metadata accessor for KeyRepairContext);
      sub_100094A08(v16, v27, type metadata accessor for KeyRepairContext);
      v35 = swift_allocObject();
      *(v35 + 16) = v31;
      sub_100094BE4(v27, v35 + v52, type metadata accessor for KeyRepairContext);
      *(v35 + v51) = v29;
      *(v35 + v34) = v28;
      v36 = type metadata accessor for AsyncOperation();
      v37 = objc_allocWithZone(v36);
      v37[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
      v38 = &v37[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
      *v38 = sub_100097544;
      v38[1] = v35;
      v58.receiver = v37;
      v58.super_class = v36;
      v31 = v55;

      v39 = objc_msgSendSuper2(&v58, "init");
      [v56 addOperation:v39];

      sub_1000949A8(v16, type metadata accessor for KeyRepairContext);
      v33 += v53;
      --v30;
    }

    while (v30);

    v17 = v56;
    a5 = v49;
  }

  else
  {
  }

  v40 = swift_allocObject();
  v40[2] = v31;
  v40[3] = v29;
  v41 = v48;
  v40[4] = v28;
  v40[5] = v41;
  v40[6] = a5;
  aBlock[4] = sub_100097650;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6F30;
  v42 = _Block_copy(aBlock);

  [v17 addBarrierBlock:v42];
  _Block_release(v42);
}

uint64_t sub_100084B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a1;
  v26 = a6;
  v24 = a4;
  v10 = type metadata accessor for KeyRepairContext(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100094A08(a4, v13, type metadata accessor for KeyRepairContext);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_100094BE4(v13, v19 + v14, type metadata accessor for KeyRepairContext);
  *(v19 + v15) = a3;
  *(v19 + v16) = a5;
  v20 = (v19 + v17);
  v21 = v26;
  *v20 = v25;
  v20[1] = a2;
  *(v19 + v18) = v21;

  sub_100085FA8(v24, sub_100097810, v19);
}

uint64_t sub_100084D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a5;
  v82 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v80 = *(v15 - 8);
  v81 = v15;
  __chkstk_darwin(v15);
  v78 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for KeyRepairContext(0);
  v75 = *(v17 - 8);
  v18 = *(v75 + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v69 - v21;
  __chkstk_darwin(v20);
  v24 = &v69 - v23;
  if (a1)
  {
    v72 = a7;
    v74 = a3;
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    sub_100094A08(a2, v22, type metadata accessor for KeyRepairContext);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v70 = v13;
      v29 = v28;
      v30 = swift_slowAlloc();
      v71 = a6;
      v31 = v30;
      v32 = swift_slowAlloc();
      v73 = a2;
      v33 = v32;
      aBlock = v32;
      *v29 = 136315394;
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1000949A8(v22, type metadata accessor for KeyRepairContext);
      v37 = sub_10021145C(v34, v36, &aBlock);

      *(v29 + 4) = v37;
      *(v29 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v38;
      *v31 = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "Repair Failure: %s error: %@", v29, 0x16u);
      sub_100008D3C(v31, &unk_1003D9140, &qword_10033E640);
      a6 = v71;

      sub_10000839C(v33);
      a2 = v73;

      v13 = v70;
    }

    else
    {

      sub_1000949A8(v22, type metadata accessor for KeyRepairContext);
    }

    v51 = v76;
    sub_100094A08(a2, v76, type metadata accessor for KeyRepairContext);
    v52 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v53 = (v18 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 16) = v72;
    sub_100094BE4(v51, v54 + v52, type metadata accessor for KeyRepairContext);
    *(v54 + v53) = a1;
    v55 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v55 = v77;
    v55[1] = a6;
    v88 = sub_100097B90;
    v89 = v54;
    aBlock = _NSConcreteStackBlock;
    v85 = 1107296256;
    v86 = sub_100031EF0;
    v87 = &unk_1003A7048;
    v56 = _Block_copy(&aBlock);
    swift_errorRetain();

    v57 = v78;
    static DispatchQoS.unspecified.getter();
    v83 = _swiftEmptyArrayStorage;
    sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v58 = v79;
    v59 = v82;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v56);

    (*(v13 + 8))(v58, v59);
    (*(v80 + 8))(v57, v81);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAA88);
    v73 = a2;
    sub_100094A08(a2, v24, type metadata accessor for KeyRepairContext);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v74 = a3;
      v43 = v42;
      v44 = swift_slowAlloc();
      v71 = a6;
      v45 = v44;
      aBlock = v44;
      *v43 = 136315138;
      type metadata accessor for UUID();
      v46 = v13;
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_1000949A8(v24, type metadata accessor for KeyRepairContext);
      v50 = sub_10021145C(v47, v49, &aBlock);
      v13 = v46;

      *(v43 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "Repair Success: %s", v43, 0xCu);
      sub_10000839C(v45);
      a6 = v71;
    }

    else
    {

      sub_1000949A8(v24, type metadata accessor for KeyRepairContext);
    }

    v60 = v76;
    sub_100094A08(v73, v76, type metadata accessor for KeyRepairContext);
    v61 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = a4;
    sub_100094BE4(v60, v62 + v61, type metadata accessor for KeyRepairContext);
    v63 = (v62 + ((v18 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v63 = v77;
    v63[1] = a6;
    v88 = sub_1000979E0;
    v89 = v62;
    aBlock = _NSConcreteStackBlock;
    v85 = 1107296256;
    v86 = sub_100031EF0;
    v87 = &unk_1003A6FF8;
    v64 = _Block_copy(&aBlock);

    v65 = v78;
    static DispatchQoS.unspecified.getter();
    v83 = _swiftEmptyArrayStorage;
    sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v66 = v79;
    v67 = v82;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v64);
    (*(v13 + 8))(v66, v67);
    (*(v80 + 8))(v65, v81);
  }
}

uint64_t sub_100085768(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6);
  swift_beginAccess();
  v10 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100306280(0, v10[2] + 1, 1, v10);
    *(a1 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100306280((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  v14 = (*(v7 + 32))(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v9, v6);
  *(a1 + 16) = v10;
  return a3(v14);
}

uint64_t sub_100085910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = UUID.uuidString.getter();
  v9 = v8;
  swift_beginAccess();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a3, v7, v9, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v13;
  v11 = swift_endAccess();
  return a4(v11);
}

uint64_t sub_1000859DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  aBlock[4] = sub_1000976C8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6F80;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v11, v9);
  (*(v12 + 8))(v14, v19);
}

void sub_100085CC4(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA88);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    swift_beginAccess();
    type metadata accessor for UUID();

    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_10021145C(v10, v12, v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Finishing Custodian Repair for UUIDs: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  type metadata accessor for AAError(0);
  v19[13] = -4408;
  sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v15;
  swift_beginAccess();
  v16 = *(a2 + 16);
  *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
  *(inited + 48) = v16;

  sub_100308978(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
  sub_100097CB0(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
  _BridgedStoredNSError.init(_:userInfo:)();
  v17 = v20;
  v18 = v20;
  a3(v17);
}

void sub_100085FA8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v50 = *v3;
  v5 = type metadata accessor for KeyRepairContext(0);
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v47 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v14 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  (*(v15 + 16))(&v46 - v16, v4 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__accountStore, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v17, v14);
  v18 = [*(*sub_1000080F8(v55 v56) + 16)];
  sub_10000839C(v55);
  if (v18)
  {
    (*(v11 + 16))(v13, v4 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cdpController, v10);
    Dependency.wrappedValue.getter();
    (*(v11 + 8))(v13, v10);
    v19 = *(*sub_1000080F8(v55, v56) + 24);
    v54 = 0;
    if ([v19 isManateeAvailable:&v54])
    {
      v20 = v54;
      sub_10000839C(v55);
      v21 = v47;
      (*(v47 + 16))(v9, v4 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__custodianStorage, v7);
      Dependency.wrappedValue.getter();
      (*(v21 + 8))(v9, v7);
      sub_1000080F8(v55, v56);
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = v51;
      v24 = v49;
      sub_100094A08(v51, v49, type metadata accessor for KeyRepairContext);
      v25 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
      v28 = swift_allocObject();
      *(v28 + 16) = v22;
      *(v28 + 24) = v18;
      sub_100094BE4(v24, v28 + v25, type metadata accessor for KeyRepairContext);
      v29 = (v28 + v26);
      v30 = v53;
      *v29 = v52;
      v29[1] = v30;
      *(v28 + v27) = v50;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_100094C4C;
      *(v31 + 24) = v28;

      v32 = v18;

      sub_10001DDA4(v23, sub_100094D34, v31);

      sub_10000839C(v55);
    }

    else
    {
      v39 = v54;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_10000839C(v55);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100008D04(v40, qword_1003FAAB8);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v55[0] = v44;
        *v43 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v43 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v55);
        _os_log_impl(&_mh_execute_header, v41, v42, "%s - no manatee available, stopping custodian key repair.", v43, 0xCu);
        sub_10000839C(v44);
      }

      type metadata accessor for AACustodianError(0);
      v54 = -7024;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v45 = v55[0];
      v52(v55[0]);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAB8);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55[0] = v37;
      *v36 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v55);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - not logged in to AppleAccount, unable to repair keys", v36, 0xCu);
      sub_10000839C(v37);
    }

    type metadata accessor for AACustodianError(0);
    v54 = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v38 = v55[0];
    v52(v55[0]);
  }
}

uint64_t sub_1000868B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a6;
  v10 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  __chkstk_darwin(v13);
  v15 = (&v26[-1] - v14);
  sub_100012D04(a1, &v26[-1] - v14, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v20 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v26);
      *(v20 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s - error fetching custodianship records, unable to repair: %@", v20, 0x16u);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v22);
    }

    swift_errorRetain();
    a5(v16);
  }

  else
  {
    sub_100094BE4(v15, v12, type metadata accessor for CustodianshipRecords);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100086C1C(v12, a3, a4, a5, v25);
    }

    return sub_1000949A8(v12, type metadata accessor for CustodianshipRecords);
  }
}

uint64_t sub_100086C1C(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v65 = a5;
  v75 = a4;
  v71 = a2;
  v84 = *v5;
  v8 = type metadata accessor for UUID();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v79 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v74 = &v63 - v11;
  v12 = type metadata accessor for KeyRepairContext(0);
  v13 = v12 - 8;
  v73 = *(v12 - 8);
  v14 = *(v73 + 8);
  __chkstk_darwin(v12);
  v83 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianshipRecords(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15 - 8);
  v66 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  v64 = sub_10008AB1C(*(a3 + *(v13 + 36)), *(a3 + *(v13 + 36) + 8));
  v21 = swift_allocObject();
  v80 = v5;
  swift_weakInit();
  v67 = a1;
  sub_100094A08(a1, v20, type metadata accessor for CustodianshipRecords);
  v78 = a3;
  sub_100094A08(a3, &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KeyRepairContext);
  v22 = *(v16 + 80);
  v23 = (v22 + 40) & ~v22;
  v70 = v17 + 7;
  v24 = (v17 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v73 + 80);
  v69 = v25 + 8;
  v26 = (v25 + 8 + v24) & ~v25;
  v68 = v14 + 7;
  v27 = (v14 + 7 + v26) & 0xFFFFFFFFFFFFFFF8;
  v72 = v22 | v25;
  v28 = swift_allocObject();
  v29 = v75;
  *(v28 + 2) = v21;
  *(v28 + 3) = v29;
  *(v28 + 4) = v65;
  v75 = v20;
  sub_100094BE4(v20, v28 + v23, type metadata accessor for CustodianshipRecords);
  v30 = v71;
  *(v28 + v24) = v71;
  sub_100094BE4(v83, v28 + v26, type metadata accessor for KeyRepairContext);
  v31 = v64;
  *(v28 + v27) = v64;
  v73 = v28;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v84;
  v32 = qword_1003D7F48;

  v33 = v30;
  v71 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = ~v22;
  v35 = ~v25;
  v36 = type metadata accessor for Logger();
  sub_100008D04(v36, qword_1003FAAB8);
  v37 = v67;
  v38 = v66;
  sub_100094A08(v67, v66, type metadata accessor for CustodianshipRecords);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v65 = ~v22;
    v41 = v35;
    v42 = swift_slowAlloc();
    v85[0] = swift_slowAlloc();
    *v42 = 136315394;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v42 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v85);
    *(v42 + 12) = 2080;
    v43 = sub_1000A92F8();
    v45 = v44;
    sub_1000949A8(v38, type metadata accessor for CustodianshipRecords);
    v46 = sub_10021145C(v43, v45, v85);

    *(v42 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s - Checking CRK presence on Octagon for %s", v42, 0x16u);
    swift_arrayDestroy();

    v35 = v41;
    v34 = v65;
  }

  else
  {

    sub_1000949A8(v38, type metadata accessor for CustodianshipRecords);
  }

  v48 = v76;
  v47 = v77;
  v49 = v80;
  v50 = v74;
  (*(v76 + 16))(v74, v80 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__securityController, v77);
  Dependency.wrappedValue.getter();
  (*(v48 + 8))(v50, v47);
  v77 = sub_1000080F8(v85, v85[3]);
  v51 = v79;
  sub_1000A8E58(v79);
  v52 = v75;
  sub_100094A08(v37, v75, type metadata accessor for CustodianshipRecords);
  v53 = v83;
  sub_100094A08(v78, v83, type metadata accessor for KeyRepairContext);
  v54 = (v22 + 16) & v34;
  v55 = (v70 + v54) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v69 + v56) & v35;
  v58 = (v68 + v57) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  sub_100094BE4(v52, v59 + v54, type metadata accessor for CustodianshipRecords);
  v60 = (v59 + v55);
  v61 = v73;
  *v60 = sub_1000951A8;
  v60[1] = v61;
  *(v59 + v56) = v49;
  sub_100094BE4(v53, v59 + v57, type metadata accessor for KeyRepairContext);
  *(v59 + v58) = v84;

  sub_100018104(v51, sub_10009572C, v59);

  (*(v81 + 8))(v51, v82);
  return sub_10000839C(v85);
}

void sub_10008742C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v57 = a4;
  v58 = a5;
  v54 = *v6;
  v55 = a2;
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v53 = v48 - v10;
  v11 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v48 - v13;
  v15 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v49 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v51 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v17;
  __chkstk_darwin(v16);
  v19 = v48 - v18;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100008D04(v20, qword_1003FAAB8);
  v52 = a1;
  sub_100094A08(a1, v19, type metadata accessor for CustodianRecoveryInfoRecord);

  v48[1] = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v56 = a3;
  if (v24)
  {
    v48[0] = v6;
    v25 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v25 = 136315650;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v25 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v62);
    *(v25 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_1000949A8(v19, type metadata accessor for CustodianRecoveryInfoRecord);
    v29 = sub_10021145C(v26, v28, v62);

    *(v25 + 14) = v29;
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_10021145C(v55, v56, v62);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s - re-sharing zone for %s with: %s", v25, 0x20u);
    swift_arrayDestroy();

    v6 = v48[0];
  }

  else
  {

    sub_1000949A8(v19, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  (*(v12 + 16))(v14, v6 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cloudStorage, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v14, v11);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  if (swift_dynamicCast())
  {
    sub_10003E950(v59, v62);
    v30 = type metadata accessor for TaskPriority();
    v31 = v53;
    (*(*(v30 - 8) + 56))(v53, 1, 1, v30);
    sub_100040738(v62, v61);
    v32 = v51;
    sub_100094A08(v52, v51, type metadata accessor for CustodianRecoveryInfoRecord);
    v33 = (*(v49 + 80) + 72) & ~*(v49 + 80);
    v34 = (v50 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = v6;
    v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    sub_10003E950(v61, v38 + 32);
    sub_100094BE4(v32, v38 + v33, type metadata accessor for CustodianRecoveryInfoRecord);
    *(v38 + v34) = v35;
    v39 = (v38 + v36);
    v40 = v56;
    *v39 = v55;
    v39[1] = v40;
    v41 = (v38 + v37);
    v42 = v58;
    *v41 = v57;
    v41[1] = v42;
    *(v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8)) = v54;

    sub_1000BCD5C(0, 0, v31, &unk_10033F968, v38);

    sub_10000839C(v62);
  }

  else
  {
    v60 = 0;
    memset(v59, 0, sizeof(v59));
    sub_100008D3C(v59, &unk_1003DB050, &qword_10033FA60);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v62[0] = v46;
      *v45 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v45 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v62);
      _os_log_impl(&_mh_execute_header, v43, v44, "%s - could not get reference to CloudKitSharing, abandoning re-share", v45, 0xCu);
      sub_10000839C(v46);
    }

    type metadata accessor for AACustodianError(0);
    *&v61[0] = -7008;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v47 = v62[0];
    v57(v62[0]);
  }
}

uint64_t sub_100087C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v15;
  *(v8 + 136) = v14;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  v10 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = type metadata accessor for CloudShareInfo(0);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = type metadata accessor for CustodianRecoveryInfoRecord(0);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v8 + 224) = v11;
  *v11 = v8;
  v11[1] = sub_100087DEC;

  return sub_10019E6D0(a5);
}

uint64_t sub_100087DEC(char a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_1000882D0;
  }

  else
  {
    v4 = sub_100087F04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100087F04()
{
  v26 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 104);
  v3 = type metadata accessor for Logger();
  *(v0 + 240) = sub_100008D04(v3, qword_1003FAAB8);
  sub_100094A08(v2, v1, type metadata accessor for CustodianRecoveryInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v6 = 136315650;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 328);
    v8 = *(v0 + 216);
    *(v6 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v25);
    *(v6 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_1000949A8(v8, type metadata accessor for CustodianRecoveryInfoRecord);
    v12 = sub_10021145C(v9, v11, &v25);

    *(v6 + 14) = v12;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v7;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Existing CKShare removed for custodianship: %s didRemove: %{BOOL}d", v6, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v13 = *(v0 + 216);

    sub_1000949A8(v13, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 160);
  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 104);
  (*(v15 + 16))(v14, *(v0 + 112) + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__storageController, v16);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v14, v16);
  *(v0 + 88) = *sub_1000080F8((v0 + 16), *(v0 + 40));
  v20 = swift_task_alloc();
  *(v0 + 248) = v20;
  v20[2] = v0 + 88;
  v20[3] = v19;
  v20[4] = v18;
  v20[5] = v17;
  v21 = swift_task_alloc();
  *(v0 + 256) = v21;
  *v21 = v0;
  v21[1] = sub_100088660;
  v23 = *(v0 + 184);
  v22 = *(v0 + 192);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v22, 0, 0, 0xD000000000000014, 0x800000010032DA40, sub_100094870, v20, v23);
}

uint64_t sub_1000882D0()
{
  v25 = v0;
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  if (qword_1003D7DD0 != -1)
  {
    swift_once();
  }

  v2 = qword_1003DAC00;
  v1 = *algn_1003DAC08;

  v3._object = 0x800000010032DA10;
  v3._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v21 = v2;
  v22 = v1;
  v23 = 0x7272652068746977;
  v24 = 0xEB0000000020726FLL;
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x7272652068746977;
  v11._object = 0xEB0000000020726FLL;
  String.append(_:)(v11);

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAB8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = sub_10021145C(v21, v22, &v23);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
    sub_10000839C(v16);
  }

  else
  {
  }

  v18 = v0[17];
  swift_getErrorValue();
  sub_1002DEA80(v0[8], v0[9]);
  v18();

  v19 = v0[1];

  return v19();
}

uint64_t sub_100088660()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100088B78;
  }

  else
  {

    v2 = sub_10008877C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008877C()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 104);
  sub_10000839C((v0 + 16));
  sub_100094A08(v2, v1, type metadata accessor for CustodianRecoveryInfoRecord);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v5 = 136315650;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 328);
    v7 = *(v0 + 208);
    *(v5 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v27);
    *(v5 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    sub_1000949A8(v7, type metadata accessor for CustodianRecoveryInfoRecord);
    v11 = sub_10021145C(v8, v10, &v27);

    *(v5 + 14) = v11;
    *(v5 + 22) = 1024;
    *(v5 + 24) = v6;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - created CKShare for custodianship: %s willFinalize: %{BOOL}d", v5, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v12 = *(v0 + 208);

    sub_1000949A8(v12, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v13 = *(v0 + 328);
  v14 = *(v0 + 192);
  v15 = *(v0 + 152);
  v16 = *(v0 + 128);
  v26 = *(v0 + 112);
  v17 = *(v0 + 104);
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *(v18 + 16) = v17;
  *(v18 + 24) = v14;
  *(v18 + 32) = v13;
  *(v18 + 40) = v26;
  *(v18 + 56) = v16;
  *(v18 + 64) = v15;
  v19 = type metadata accessor for ExponentialRetryScheduler();
  v20 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  *(v0 + 280) = v20;
  v21 = swift_allocObject();
  *(v0 + 288) = v21;
  *(v21 + 16) = 0;
  *(v0 + 96) = v20;
  v22 = swift_task_alloc();
  *(v0 + 296) = v22;
  *(v22 + 16) = v21;
  *(v22 + 24) = 0;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0xD000000000000033;
  *(v22 + 48) = 0x800000010032DA60;
  *(v22 + 56) = &unk_10033F980;
  *(v22 + 64) = v18;
  *(v22 + 72) = xmmword_10033F8C0;
  v23 = swift_allocObject();
  *(v0 + 304) = v23;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = swift_task_alloc();
  *(v0 + 312) = v24;
  *v24 = v0;
  v24[1] = sub_100088F18;

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v24, &unk_10033F200, v22, sub_10005237C, v23, v19, &type metadata for () + 8, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_100088B78()
{
  v25 = v0;

  sub_10000839C(v0 + 2);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  if (qword_1003D7DD0 != -1)
  {
    swift_once();
  }

  v2 = qword_1003DAC00;
  v1 = *algn_1003DAC08;

  v3._object = 0x800000010032DA10;
  v3._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v21 = v2;
  v22 = v1;
  v23 = 0x7272652068746977;
  v24 = 0xEB0000000020726FLL;
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x7272652068746977;
  v11._object = 0xEB0000000020726FLL;
  String.append(_:)(v11);

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAB8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = sub_10021145C(v21, v22, &v23);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
    sub_10000839C(v16);
  }

  else
  {
  }

  v18 = v0[17];
  swift_getErrorValue();
  sub_1002DEA80(v0[8], v0[9]);
  v18();

  v19 = v0[1];

  return v19();
}

uint64_t sub_100088F18()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_100089114;
  }

  else
  {

    v2 = sub_10008903C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008903C()
{
  v1 = v0[35];
  v2 = v0[24];
  v3 = v0[17];

  v3(0);
  sub_1000949A8(v2, type metadata accessor for CloudShareInfo);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100089114()
{
  v27 = v0;
  v1 = v0[35];
  v2 = v0[24];

  sub_1000949A8(v2, type metadata accessor for CloudShareInfo);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  if (qword_1003D7DD0 != -1)
  {
    swift_once();
  }

  v4 = qword_1003DAC00;
  v3 = *algn_1003DAC08;

  v5._object = 0x800000010032DA10;
  v5._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v5);
  type metadata accessor for UUID();
  sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v23 = v4;
  v24 = v3;
  v25 = 0x7272652068746977;
  v26 = 0xEB0000000020726FLL;
  v7 = _convertErrorToNSError(_:)();
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x7272652068746977;
  v13._object = 0xEB0000000020726FLL;
  String.append(_:)(v13);

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAB8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    v19 = sub_10021145C(v23, v24, &v25);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    sub_10000839C(v18);
  }

  else
  {
  }

  v20 = v0[17];
  swift_getErrorValue();
  sub_1002DEA80(v0[8], v0[9]);
  v20();

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000894F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 64) = a3;
  *(v7 + 72) = a5;
  *(v7 + 176) = a4;
  *(v7 + 56) = a2;
  v8 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = type metadata accessor for ShareMessageContext(0);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = type metadata accessor for CustodianRecoveryInfoRecord(0);
  *(v7 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100089628, 0, 0);
}

uint64_t sub_100089628()
{
  v30 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  *(v0 + 152) = sub_100008D04(v3, qword_1003FAAB8);
  sub_100094A08(v2, v1, type metadata accessor for CustodianRecoveryInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v6 = 136315394;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 144);
    *(v6 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v29);
    *(v6 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    sub_1000949A8(v7, type metadata accessor for CustodianRecoveryInfoRecord);
    v11 = sub_10021145C(v8, v10, &v29);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - sending new share to custodian %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v12 = *(v0 + 144);

    sub_1000949A8(v12, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v13 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v18 = *(v0 + 64);
  v28 = *(v0 + 72);
  v19 = *(v0 + 176);
  v20 = *(v0 + 56);
  v21 = *(*(v0 + 136) + 20);
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 16))(v13, v20 + v21, v22);
  sub_100094A08(v18, v13 + *(v15 + 20), type metadata accessor for CloudShareInfo);
  *(v13 + *(v15 + 24)) = v19;
  (*(v17 + 16))(v14, v28 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__messenger, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v14, v16);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v23 = swift_task_alloc();
  *(v0 + 160) = v23;
  *v23 = v0;
  v23[1] = sub_100089A0C;
  v24 = *(v0 + 128);
  v25 = *(v0 + 80);
  v26 = *(v0 + 88);

  return sub_1000E9600(v24, v25, v26, 2, 0);
}

uint64_t sub_100089A0C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100089CE4;
  }

  else
  {
    v2 = sub_100089B20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100089B20()
{
  v11 = v0;
  sub_10000839C(v0 + 2);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    v5 = v0[16];
    *(v3 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v10);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - CKShare message sent.", v3, 0xCu);
    sub_10000839C(v4);

    v6 = v5;
  }

  else
  {
    v7 = v0[16];

    v6 = v7;
  }

  sub_1000949A8(v6, type metadata accessor for ShareMessageContext);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100089CE4()
{
  sub_1000949A8(v0[16], type metadata accessor for ShareMessageContext);
  sub_10000839C(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100089D90()
{
  v1 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__securityController;
  v4 = sub_100005814(&qword_1003DA570, qword_10033F508);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__custodianStorage;
  v6 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__idmsRequestController;
  v8 = sub_100005814(&unk_1003DB090, &qword_100340B80);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__storageController;
  v10 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__messenger;
  v12 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cloudStorage;
  v14 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cdpController;
  v16 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__urlBagProvider;
  v18 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__followUpController;
  v20 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__analyticsEventFactory;
  v22 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__analyticsRTCReporter;
  v24 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);

  return v0;
}

uint64_t sub_10008A160()
{
  sub_100089D90();

  return swift_deallocClassInstance();
}

void sub_10008A1E0(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DB260, &unk_1003D9860, &qword_10033F440);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &unk_1003DC930, &unk_1003D9800, &unk_10033EFB0);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, qword_1003E5670, &unk_1003DACC0, &unk_10033EFF0);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
              if (v7 <= 0x3F)
              {
                sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
                if (v8 <= 0x3F)
                {
                  sub_10000DAB8(319, &qword_1003DB6F0, &qword_1003D7FD0, &unk_10033FB30);
                  if (v9 <= 0x3F)
                  {
                    sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
                    if (v10 <= 0x3F)
                    {
                      sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
                      if (v11 <= 0x3F)
                      {
                        sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
                        if (v12 <= 0x3F)
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
  }
}

uint64_t sub_10008A638()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v1 - 8);
  v11 = v1;
  __chkstk_darwin(v1);
  v9 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v8[1] = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9860, &qword_10033F440);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9800, &unk_10033EFB0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACC0, &unk_10033EFF0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACE0, &unk_10033F920);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v0 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair____lazy_storage___custodianDefaults) = 0;
  v6 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair_repairSerialQueue;
  sub_100071C74();
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100097CB0(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *(v0 + v6) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

id sub_10008AB1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27[-1] - v7;
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27[-1] - v11;
  (*(v10 + 16))(&v27[-1] - v11, v3 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__accountStore, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v12, v9);
  v13 = [*(*sub_1000080F8(v27 v27[3]) + 16)];
  if (v13 && (v14 = v13, v15 = [v13 aa_altDSID], v14, v15))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000839C(v27);
    (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__analyticsEventFactory, v5);
    Dependency.wrappedValue.getter();
    (*(v6 + 8))(v8, v5);
    v16 = kAACustodianRepairEvent;

    v17 = v16;
    v18 = String._bridgeToObjectiveC()();

    if (a2)
    {
      v19 = String._bridgeToObjectiveC()();
    }

    else
    {
      v19 = 0;
    }

    v25 = [objc_opt_self() analyticsEventWithName:v17 altDSID:v18 flowID:v19];

    sub_10000839C(v27);
    return v25;
  }

  else
  {
    sub_10000839C(v27);
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAD0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Account is nil. Not reporting repair failure", v23, 2u);
    }

    return 0;
  }
}

void sub_10008AEE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8)
{
  v47 = a8;
  v48 = a7;
  v46 = a6;
  v49 = a4;
  v50 = a3;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - v14;
  v16 = type metadata accessor for RecoveryKeys(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  __chkstk_darwin(v20);
  v22 = (&v44 - v21);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_100012D04(a1, v22, &qword_1003D8EF8, &qword_10033EB18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *v22;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100008D04(v26, qword_1003FAAB8);
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v52 = v31;
        *v29 = 136315394;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v29 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v52);
        *(v29 + 12) = 2112;
        v32 = _convertErrorToNSError(_:)();
        *(v29 + 14) = v32;
        *v30 = v32;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s - AutoHeal: error creating recovery keys, unable to repair: %@", v29, 0x16u);
        sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);

        sub_10000839C(v31);
      }

      v33 = v47;
      if (v47)
      {
        swift_errorRetain();
        v34 = v33;
        v35 = _convertErrorToNSError(_:)();
        [v34 updateTaskResultWithError:v35];

        v37 = v44;
        v36 = v45;
        (*(v44 + 16))(v12, v24 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__analyticsRTCReporter, v45);
        Dependency.wrappedValue.getter();
        (*(v37 + 8))(v12, v36);
        [v52 sendEvent:v34];

        swift_unknownObjectRelease();
      }

      else
      {
        swift_errorRetain();
      }

      v50(v25);
    }

    else
    {
      sub_100094BE4(v22, v19, type metadata accessor for RecoveryKeys);
      sub_100094A08(v19, v15, type metadata accessor for RecoveryKeys);
      (*(v17 + 56))(v15, 0, 1, v16);
      sub_10008B618(a5, v15, v46, v48, v50, v49);

      sub_100008D3C(v15, &unk_1003DE920, &unk_10033F9A8);
      sub_1000949A8(v19, type metadata accessor for RecoveryKeys);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100008D04(v38, qword_1003FAAB8);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v52 = v42;
      *v41 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v41 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v52);
      _os_log_impl(&_mh_execute_header, v39, v40, "%s - AutoHeal: Self is nil. Abort Custodian Key Repair", v41, 0xCu);
      sub_10000839C(v42);
    }

    type metadata accessor for AACustodianError(0);
    v51 = -7022;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = v52;
    v50(v52);
  }
}

id sub_10008B618(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v342 = a6;
  v336 = a5;
  v380 = a4;
  v364 = a3;
  v390 = a2;
  v392 = a1;
  v363 = *v6;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v344 = &v318 - v8;
  v340 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v338 = *(v340 - 8);
  __chkstk_darwin(v340);
  v337 = &v318 - v9;
  v367 = type metadata accessor for KeyRepairContext(0);
  v334 = *(v367 - 8);
  v10 = __chkstk_darwin(v367);
  v341 = &v318 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = v11;
  __chkstk_darwin(v10);
  v335 = &v318 - v12;
  v353 = type metadata accessor for CustodianshipRecords(0);
  v332 = *(v353 - 8);
  v13 = __chkstk_darwin(v353);
  v343 = &v318 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v339 = &v318 - v16;
  v17 = __chkstk_darwin(v15);
  v358 = &v318 - v18;
  v19 = __chkstk_darwin(v17);
  v357 = &v318 - v20;
  v333 = v21;
  __chkstk_darwin(v19);
  v388 = &v318 - v22;
  v352 = type metadata accessor for CustodianHealthRecord(0);
  v23 = __chkstk_darwin(v352);
  v331 = &v318 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v356 = &v318 - v26;
  __chkstk_darwin(v25);
  v361 = &v318 - v27;
  v377 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v28 = __chkstk_darwin(v377);
  v351 = &v318 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v378 = &v318 - v31;
  __chkstk_darwin(v30);
  v360 = &v318 - v32;
  v325 = type metadata accessor for Date.ISO8601FormatStyle();
  v324 = *(v325 - 8);
  __chkstk_darwin(v325);
  v323 = &v318 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = type metadata accessor for Date();
  v384 = *(v389 - 1);
  __chkstk_darwin(v389);
  v322 = &v318 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v36 = __chkstk_darwin(v35 - 8);
  v355 = &v318 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v349 = &v318 - v39;
  __chkstk_darwin(v38);
  v371 = &v318 - v40;
  v41 = type metadata accessor for CustodianRecord(0);
  v42 = __chkstk_darwin(v41);
  v383 = (&v318 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __chkstk_darwin(v42);
  v393 = &v318 - v45;
  __chkstk_darwin(v44);
  v379 = &v318 - v46;
  v47 = type metadata accessor for UUID();
  v48 = *(v47 - 8);
  v49 = __chkstk_darwin(v47);
  v320 = &v318 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v321 = &v318 - v52;
  __chkstk_darwin(v51);
  v368 = &v318 - v53;
  v54 = sub_100005814(&unk_1003DB078, &qword_10033F9B8);
  __chkstk_darwin(v54);
  v56 = &v318 - v55;
  v57 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  v58 = __chkstk_darwin(v57 - 8);
  v319 = &v318 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v329 = &v318 - v61;
  v62 = __chkstk_darwin(v60);
  v369 = &v318 - v63;
  v64 = __chkstk_darwin(v62);
  v354 = &v318 - v65;
  __chkstk_darwin(v64);
  v67 = &v318 - v66;
  v68 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v69 = __chkstk_darwin(v68 - 8);
  v330 = &v318 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __chkstk_darwin(v69);
  v350 = &v318 - v72;
  v73 = __chkstk_darwin(v71);
  v374 = &v318 - v74;
  v75 = __chkstk_darwin(v73);
  v373 = &v318 - v76;
  v77 = __chkstk_darwin(v75);
  v79 = &v318 - v78;
  __chkstk_darwin(v77);
  v81 = &v318 - v80;
  v83 = (v48 + 16);
  v82 = *(v48 + 16);
  (v82)(&v318 - v80, v392 + v41[5], v47);
  v376 = v48;
  v84 = *(v48 + 56);
  v387 = (v48 + 56);
  v391 = v84;
  (v84)(v81, 0, 1, v47);
  sub_100012D04(v390, v67, &unk_1003DE920, &unk_10033F9A8);
  v85 = type metadata accessor for RecoveryKeys(0);
  v86 = *(v85 - 8);
  v87 = *(v86 + 48);
  v381 = v86 + 48;
  v382 = v87;
  v88 = v87(v67, 1, v85);
  v385 = v82;
  v386 = v83;
  v372 = v85;
  if (v88 == 1)
  {
    sub_100008D3C(v67, &unk_1003DE920, &unk_10033F9A8);
    v89 = 1;
  }

  else
  {
    (v82)(v79, &v67[*(v85 + 24)], v47);
    sub_1000949A8(v67, type metadata accessor for RecoveryKeys);
    v89 = 0;
  }

  (v391)(v79, v89, 1, v47);
  v90 = *(v54 + 48);
  sub_100012D04(v81, v56, &qword_1003D8B60, &unk_10033F210);
  sub_100012D04(v79, &v56[v90], &qword_1003D8B60, &unk_10033F210);
  v91 = v376 + 48;
  v92 = *(v376 + 48);
  v93 = v92(v56, 1, v47);
  v94 = v393;
  v366 = v91;
  v375 = v92;
  if (v93 == 1)
  {
    sub_100008D3C(v79, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v81, &qword_1003D8B60, &unk_10033F210);
    if (v375(&v56[v90], 1, v47) == 1)
    {
      sub_100008D3C(v56, &qword_1003D8B60, &unk_10033F210);
      v370 = 1;
LABEL_10:
      v96 = v392;
      goto LABEL_12;
    }

LABEL_9:
    sub_100008D3C(v56, &unk_1003DB078, &qword_10033F9B8);
    v370 = 0;
    goto LABEL_10;
  }

  v95 = v373;
  sub_100012D04(v56, v373, &qword_1003D8B60, &unk_10033F210);
  if (v92(&v56[v90], 1, v47) == 1)
  {
    sub_100008D3C(v79, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v81, &qword_1003D8B60, &unk_10033F210);
    (*(v376 + 8))(v95, v47);
    v94 = v393;
    goto LABEL_9;
  }

  v97 = v376;
  v98 = v368;
  (*(v376 + 32))(v368, &v56[v90], v47);
  sub_100097CB0(&qword_1003DB088, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v370 = dispatch thunk of static Equatable.== infix(_:_:)();
  v99 = *(v97 + 8);
  v99(v98, v47);
  sub_100008D3C(v79, &qword_1003D8B60, &unk_10033F210);
  sub_100008D3C(v81, &qword_1003D8B60, &unk_10033F210);
  v99(v95, v47);
  sub_100008D3C(v56, &qword_1003D8B60, &unk_10033F210);
  v96 = v392;
  v94 = v393;
LABEL_12:
  v100 = v389;
  v101 = v385;
  v102 = v372;
  result = [objc_opt_self() currentInfo];
  if (!result)
  {
LABEL_108:
    __break(1u);
    return result;
  }

  v104 = result;
  v105 = [result qualifiedBuildVersion];

  if (v105)
  {
    v365 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v373 = v106;
  }

  else
  {
    v365 = 0;
    v373 = 0;
  }

  v107 = v369;
  sub_100094A08(v96, v94, type metadata accessor for CustodianRecord);
  v108 = v354;
  sub_100012D04(v390, v354, &unk_1003DE920, &unk_10033F9A8);
  if (v382(v108, 1, v102) == 1)
  {
    sub_100008D3C(v108, &unk_1003DE920, &unk_10033F9A8);
    v369 = 0;
    v368 = 0xF000000000000000;
  }

  else
  {
    v109 = v108[1];
    v369 = *v108;
    v368 = v109;
    sub_100015D6C(v369, v109);
    sub_1000949A8(v108, type metadata accessor for RecoveryKeys);
  }

  LODWORD(v354) = *(v380 + *(v367 + 20));
  if (v354)
  {
    v110 = 1;
  }

  else
  {
    v110 = *(v96 + v41[12]);
  }

  v111 = v384;
  v112 = v371;
  if (v370)
  {
    v113 = 1;
    v114 = v391;
    (v391)(v374, 1, 1, v47);
  }

  else
  {
    sub_100012D04(v390, v107, &unk_1003DE920, &unk_10033F9A8);
    if (v382(v107, 1, v102) == 1)
    {
      sub_100008D3C(v107, &unk_1003DE920, &unk_10033F9A8);
      v115 = 1;
      v116 = v374;
    }

    else
    {
      v116 = v374;
      (v101)(v374, v107 + *(v102 + 24), v47);
      sub_1000949A8(v107, type metadata accessor for RecoveryKeys);
      v115 = 0;
    }

    v114 = v391;
    (v391)(v116, v115, 1, v47);
    Date.init()();
    v113 = 0;
  }

  v117 = *(v111 + 7);
  v328 = v111 + 56;
  v327 = v117;
  v117(v112, v113, 1, v100);
  v118 = v383;
  v119 = (v383 + v41[7]);
  *v119 = 0;
  v119[1] = 0;
  v120 = (v118 + v41[8]);
  *v120 = 0;
  v120[1] = 0;
  v348 = v120;
  v121 = (v118 + v41[13]);
  *v121 = 0;
  v121[1] = 0;
  v346 = v121;
  v122 = (v118 + v41[14]);
  *v122 = 0;
  v122[1] = 0;
  v347 = v122;
  v123 = (v118 + v41[15]);
  *v123 = 0;
  v326 = v123;
  *(v123 + 8) = 1;
  v345 = v41[16];
  (v114)(v118 + v345, 1, 1, v47);
  v124 = v393;
  (v101)(v118, v393, v47);
  (v101)(v118 + v41[5], v124 + v41[5], v47);
  v125 = v41[11];
  if (v110 == *(v124 + v41[12]))
  {
    v126 = *(v124 + v125);
    v127 = *(v124 + v125 + 8);
    v128 = (v118 + v125);
    *v128 = v126;
    v128[1] = v127;
    sub_100015D6C(v126, v127);
  }

  else
  {
    *(v118 + v125) = xmmword_10033F8D0;
  }

  v129 = v369;
  v130 = v368;
  v131 = v41[6];
  v132 = *(v124 + v131);
  v133 = *(v124 + v131 + 8);
  v134 = (v118 + v131);
  *v134 = v132;
  v134[1] = v133;
  *(v118 + v41[9]) = *(v124 + v41[9]);
  v135 = v41[10];
  if (v130 >> 60 == 15)
  {
    v136 = *(v124 + v135);
    v137 = *(v124 + v135 + 8);
    v138 = (v118 + v135);
    *v138 = v136;
    v138[1] = v137;
    sub_100052704(v136, v137);
  }

  else
  {
    v139 = (v118 + v135);
    *v139 = v129;
    v139[1] = v130;
  }

  *(v118 + v41[12]) = v110;
  type metadata accessor for ContactsHelper(0);
  swift_allocObject();

  sub_100052704(v129, v130);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v140 = v394[0];
  v141 = String._bridgeToObjectiveC()();
  v142 = [v140 contactForHandle:v141];

  swift_unknownObjectRelease();
  if (!v142)
  {

    sub_1000EF4CC();
    v146 = 0;
    goto LABEL_47;
  }

  v143 = objc_allocWithZone(AALocalContactInfo);
  v144 = v142;
  v145 = String._bridgeToObjectiveC()();
  v146 = [v143 initWithHandle:v145 contact:v144];

  if ((sub_1000EF4CC() & 1) == 0)
  {
LABEL_47:
    v147 = v391;
    v148 = v393;
LABEL_48:
    v149 = v373;
    v150 = v374;
    v151 = v350;
    goto LABEL_49;
  }

  v147 = v391;
  v148 = v393;
  v149 = v373;
  v150 = v374;
  v151 = v350;
  if (!v146)
  {
LABEL_49:
    v172 = (v148 + v41[7]);
    v173 = v172[1];
    *v119 = *v172;
    v119[1] = v173;
    v174 = (v148 + v41[8]);
    v176 = *v174;
    v175 = v174[1];
    v177 = v348;
    *v348 = v176;
    v177[1] = v175;

    goto LABEL_50;
  }

  v146 = v146;
  v152 = [v146 firstName];
  if (!v152)
  {

    goto LABEL_49;
  }

  v153 = v152;
  v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v156 = v155;

  v157 = sub_1002576F0(v154, v156);
  v159 = v158;

  if (!v159)
  {
LABEL_99:
    v149 = v373;
    v150 = v374;
    goto LABEL_49;
  }

  v146 = v146;
  v160 = [v146 lastName];
  if (!v160)
  {

    goto LABEL_99;
  }

  v161 = v160;
  v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v163 = v146;
  v165 = v164;

  v166 = sub_1002576F0(v162, v165);
  v168 = v167;
  v169 = v163;

  if (!v168)
  {

    v147 = v391;
    v149 = v373;
    v150 = v374;
    v151 = v350;
    v146 = v169;
    v148 = v393;
    goto LABEL_49;
  }

  v170 = (v393 + v41[7]);
  v171 = v170[1];
  v146 = v163;
  if (v171 && (*v170 == v157 && v171 == v159 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v147 = v391;
    v149 = v373;
    v150 = v374;
    v151 = v350;
    v148 = v393;
    goto LABEL_49;
  }

  v148 = v393;
  v315 = (v393 + v41[8]);
  v316 = v315[1];
  if (v316 && (*v315 == v166 && v316 == v168 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v147 = v391;
    goto LABEL_48;
  }

  *v119 = v157;
  v119[1] = v159;
  v317 = v348;
  *v348 = v166;
  v317[1] = v168;
  v147 = v391;
  v149 = v373;
  v150 = v374;
  v151 = v350;
LABEL_50:
  sub_100012D04(v150, v151, &qword_1003D8B60, &unk_10033F210);
  v178 = v375(v151, 1, v47);
  v374 = v47;
  v179 = v146;
  if (v178 == 1)
  {
    sub_100008D3C(v151, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v393 + v41[16], v383 + v345);
  }

  else
  {
    v180 = *(v376 + 32);
    v181 = v321;
    v180(v321, v151, v374);
    v182 = v345;
    v183 = v383;
    sub_100008D3C(v383 + v345, &qword_1003D8B60, &unk_10033F210);
    v184 = v181;
    v185 = v374;
    v180(&v183[v182], v184, v374);
    (v147)(&v183[v182], 0, 1, v185);
  }

  v186 = v384;
  v187 = v389;
  v188 = v365;
  v189 = v149;
  v190 = v349;
  if (!v149)
  {
    v188 = *(v393 + v41[13]);
  }

  v191 = v346;
  *v346 = v188;
  v191[1] = v189;
  v192 = v371;
  sub_100012D04(v371, v190, &qword_1003DA110, &qword_10033F230);
  v193 = *(v186 + 6);
  v350 = v186 + 48;
  v348 = v193;
  if ((v193)(v190, 1, v187) == 1)
  {

    sub_100015D58(v369, v368);
    sub_100008D3C(v192, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v150, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v190, &qword_1003DA110, &qword_10033F230);
    v194 = v393;
    v195 = (v393 + v41[14]);
    v197 = *v195;
    v196 = v195[1];

    v198 = v372;
    v199 = v370;
  }

  else
  {
    v200 = v322;
    (*(v186 + 4))(v322, v190, v187);

    v201 = v150;
    v202 = v323;
    sub_100195ACC(v323);
    v197 = Date.ISO8601Format(_:)();
    v196 = v203;

    sub_100015D58(v369, v368);
    (*(v324 + 8))(v202, v325);
    (*(v186 + 1))(v200, v187);
    sub_100008D3C(v192, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v201, &qword_1003D8B60, &unk_10033F210);
    v198 = v372;
    v199 = v370;
    v194 = v393;
  }

  v204 = v347;
  *v347 = v197;
  v204[1] = v196;
  v205 = v194 + v41[15];
  v206 = *v205;
  v207 = *(v205 + 8);
  result = sub_1000949A8(v194, type metadata accessor for CustodianRecord);
  if (v199)
  {
    v208 = v206;
  }

  else
  {
    v208 = 1;
  }

  if ((v199 | v207))
  {
    v209 = v199 & v207;
    v210 = v353;
    goto LABEL_65;
  }

  v208 = v206 + 1;
  v210 = v353;
  if (v206 == -1)
  {
    __break(1u);
    goto LABEL_108;
  }

  v209 = 0;
LABEL_65:
  v211 = v326;
  *v326 = v208;
  *(v211 + 8) = v209 & 1;
  sub_100094BE4(v383, v379, type metadata accessor for CustodianRecord);
  v212 = v392 + *(v210 + 20);
  sub_100094A08(v212, v378, type metadata accessor for CustodianRecoveryInfoRecord);
  v213 = v329;
  sub_100012D04(v390, v329, &unk_1003DE920, &unk_10033F9A8);
  v214 = v382(v213, 1, v198);
  v215 = v330;
  if (v214 == 1)
  {
    sub_100008D3C(v213, &unk_1003DE920, &unk_10033F9A8);
    v372 = 0;
    v393 = 0xF000000000000000;
  }

  else
  {
    v216 = *(v213 + 24);
    v372 = *(v213 + 16);
    v393 = v216;
    sub_100015D6C(v372, v216);
    sub_1000949A8(v213, type metadata accessor for RecoveryKeys);
  }

  if (v354)
  {
    v217 = 1;
  }

  else
  {
    v217 = *(v212 + *(v377 + 40));
  }

  LODWORD(v383) = v217;
  v218 = v378;
  if ((v199 & 1) == 0)
  {
    v219 = v319;
    sub_100012D04(v390, v319, &unk_1003DE920, &unk_10033F9A8);
    if (v382(v219, 1, v198) != 1)
    {
      v221 = v374;
      (v385)(v215, v219 + *(v198 + 24), v374);
      sub_1000949A8(v219, type metadata accessor for RecoveryKeys);
      v220 = 0;
      goto LABEL_76;
    }

    sub_100008D3C(v219, &unk_1003DE920, &unk_10033F9A8);
  }

  v220 = 1;
  v221 = v374;
LABEL_76:
  v222 = v391;
  (v391)(v215, v220, 1, v221);
  v223 = v377;
  v224 = *(v377 + 44);
  v225 = v351;
  (v222)(&v351[v224], 1, 1, v221);
  v226 = v385;
  (v385)(v225, v218, v221);
  (v226)(v225 + v223[5], v218 + v223[5], v221);
  v227 = v223[6];
  v228 = v218;
  v229 = *(v218 + v227);
  v230 = *(v218 + v227 + 8);
  v231 = (v225 + v227);
  *v231 = v229;
  v231[1] = v230;
  if (v375(v215, 1, v221) == 1)
  {
    v232 = v221;

    sub_100008D3C(v215, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v228 + v223[11], v225 + v224);
  }

  else
  {
    v233 = *(v376 + 32);
    v234 = v215;
    v235 = v320;
    v233(v320, v234, v221);

    sub_100008D3C(v225 + v224, &qword_1003D8B60, &unk_10033F210);
    v233((v225 + v224), v235, v221);
    v210 = v353;
    v232 = v221;
    (v391)(v225 + v224, 0, 1, v221);
  }

  v236 = v365;
  v237 = v223[9];
  v238 = v383;
  if (v383 == *(v228 + v223[10]))
  {
    v240 = *(v228 + v237);
    v241 = *(v228 + v237 + 8);
    v242 = (v225 + v237);
    *v242 = v240;
    v242[1] = v241;
    sub_100015D6C(v240, v241);
    v239 = v377;
  }

  else
  {
    v239 = v223;
    *(v225 + v237) = xmmword_10033F8D0;
  }

  v243 = v232;
  v244 = v239[7];
  v246 = *(v228 + v244);
  v245 = *(v228 + v244 + 8);
  v247 = (v225 + v244);
  *v247 = v246;
  v247[1] = v245;
  v248 = v239[8];
  v249 = v373;
  if (v393 >> 60 == 15)
  {
    v250 = *(v228 + v248);
    v251 = *(v228 + v248 + 8);
    v252 = (v225 + v248);
    *v252 = v250;
    v252[1] = v251;
    sub_100052704(v250, v251);
    v239 = v377;
  }

  else
  {
    v253 = (v225 + v248);
    v254 = v393;
    *v253 = v372;
    v253[1] = v254;
  }

  v255 = (v225 + v239[12]);
  *(v225 + v239[10]) = v238;
  if (v249)
  {
    sub_100015D6C(v246, v245);
    v256 = v360;
    v257 = v378;
  }

  else
  {
    v258 = v378;
    v259 = (v378 + v239[12]);
    v236 = *v259;
    v249 = v259[1];
    sub_100015D6C(v246, v245);

    v257 = v258;
    v225 = v351;
    v256 = v360;
  }

  sub_1000949A8(v257, type metadata accessor for CustodianRecoveryInfoRecord);
  *v255 = v236;
  v255[1] = v249;
  sub_100094BE4(v225, v256, type metadata accessor for CustodianRecoveryInfoRecord);
  v260 = v392 + *(v210 + 24);
  sub_100094A08(v260, v356, type metadata accessor for CustodianHealthRecord);
  v261 = v355;
  Date.init(timeIntervalSince1970:)();
  v262 = 1;
  v327(v261, 0, 1, v389);
  if ((v354 & 1) == 0)
  {
    v262 = *(v260 + *(v352 + 36));
  }

  v263 = v331;
  v264 = v356;
  v265 = v385;
  (v385)(v331, v356, v243);
  v266 = v352;
  (v265)(v263 + *(v352 + 20), v264 + *(v352 + 20), v243);
  v267 = v266[8];
  if (v262 == *(v264 + v266[9]))
  {
    v268 = *(v264 + v267);
    v269 = *(v264 + v267 + 8);
    v270 = (v263 + v267);
    *v270 = v268;
    v270[1] = v269;
    sub_100015D6C(v268, v269);
  }

  else
  {
    *(v263 + v267) = xmmword_10033F8D0;
  }

  v271 = v355;
  v272 = v389;
  if ((v348)(v355, 1, v389) == 1)
  {
    sub_100008D3C(v271, &qword_1003DA110, &qword_10033F230);
    (*(v384 + 2))(v263 + v266[6], v264 + v266[6], v272);
  }

  else
  {
    (*(v384 + 4))(v263 + v266[6], v271, v272);
  }

  *(v263 + v266[9]) = v262;
  *(v263 + v266[7]) = xmmword_10033F8D0;
  v273 = v264 + v266[10];
  v274 = v266;
  v275 = *v273;
  v276 = *(v273 + 8);
  v389 = type metadata accessor for CustodianHealthRecord;
  sub_1000949A8(v264, type metadata accessor for CustodianHealthRecord);
  v277 = v263 + v274[10];
  *v277 = v275;
  *(v277 + 8) = v276;
  v278 = v361;
  sub_100094BE4(v263, v361, type metadata accessor for CustodianHealthRecord);
  v279 = v388;
  sub_100094A08(v379, v388, type metadata accessor for CustodianRecord);
  sub_100094A08(v256, v279 + *(v210 + 20), type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100094A08(v278, v279 + *(v210 + 24), type metadata accessor for CustodianHealthRecord);
  v280 = v380;
  v281 = sub_10008AB1C(*(v380 + *(v367 + 28)), *(v380 + *(v367 + 28) + 8));
  v282 = swift_allocObject();
  v393 = v282;
  swift_weakInit();
  v386 = type metadata accessor for KeyRepairContext;
  v283 = v335;
  sub_100094A08(v280, v335, type metadata accessor for KeyRepairContext);
  v391 = type metadata accessor for CustodianshipRecords;
  sub_100094A08(v392, v357, type metadata accessor for CustodianshipRecords);
  sub_100094A08(v279, v358, type metadata accessor for CustodianshipRecords);
  v284 = *(v334 + 80);
  v285 = (v284 + 48) & ~v284;
  v286 = *(v332 + 80);
  v287 = (v359 + v286 + v285) & ~v286;
  v392 = v286 | 7;
  v288 = (v333 + v286 + v287) & ~v286;
  v390 = v333 + 7;
  v289 = (v333 + 7 + v288) & 0xFFFFFFFFFFFFFFF8;
  v290 = swift_allocObject();
  *(v290 + 2) = v282;
  *(v290 + 3) = v281;
  v291 = v342;
  *(v290 + 4) = v336;
  *(v290 + 5) = v291;
  v385 = type metadata accessor for KeyRepairContext;
  sub_100094BE4(v283, v290 + v285, type metadata accessor for KeyRepairContext);
  v384 = type metadata accessor for CustodianshipRecords;
  sub_100094BE4(v357, v290 + v287, type metadata accessor for CustodianshipRecords);
  sub_100094BE4(v358, v290 + v288, type metadata accessor for CustodianshipRecords);
  *(v290 + v289) = v363;
  v292 = v338;
  v293 = v337;
  v294 = v340;
  (*(v338 + 16))(v337, v362 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__custodianStorage, v340);
  v387 = v281;

  Dependency.wrappedValue.getter();
  (*(v292 + 8))(v293, v294);
  v383 = sub_1000080F8(v394, v394[3]);
  v382 = swift_allocObject();
  swift_weakInit();
  v295 = v341;
  sub_100094A08(v380, v341, v386);
  v296 = v339;
  sub_100094A08(v388, v339, v391);
  v297 = (v284 + 24) & ~v284;
  v298 = (v359 + v297 + 7) & 0xFFFFFFFFFFFFFFF8;
  v299 = (v298 + 15) & 0xFFFFFFFFFFFFFFF8;
  v300 = (v286 + v299 + 16) & ~v286;
  v301 = (v390 + v300) & 0xFFFFFFFFFFFFFFF8;
  v302 = swift_allocObject();
  *(v302 + 16) = v364;
  sub_100094BE4(v295, v302 + v297, v385);
  *(v302 + v298) = v382;
  v303 = (v302 + v299);
  *v303 = sub_100095F70;
  v303[1] = v290;
  v304 = v296;
  v305 = v384;
  sub_100094BE4(v304, v302 + v300, v384);
  *(v302 + v301) = v363;
  v306 = *v383;
  v307 = type metadata accessor for TaskPriority();
  v308 = v344;
  (*(*(v307 - 8) + 56))(v344, 1, 1, v307);
  v309 = v343;
  sub_100094A08(v388, v343, v391);
  v310 = (v286 + 40) & ~v286;
  v311 = (v390 + v310) & 0xFFFFFFFFFFFFFFF8;
  v312 = swift_allocObject();
  v312[2] = 0;
  v312[3] = 0;
  v312[4] = v306;
  sub_100094BE4(v309, v312 + v310, v305);
  v313 = (v312 + v311);
  *v313 = sub_1000964DC;
  v313[1] = v302;
  v314 = v364;

  sub_1000BCD5C(0, 0, v308, &unk_10033F240, v312);

  sub_1000949A8(v388, type metadata accessor for CustodianshipRecords);
  sub_1000949A8(v361, v389);
  sub_1000949A8(v360, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_1000949A8(v379, type metadata accessor for CustodianRecord);

  sub_10000839C(v394);
}

uint64_t sub_10008DCB4(int a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v58 = a7;
  v63 = a6;
  v65 = a1;
  v11 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v59 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v14 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v61 = *(v14 - 8);
  v62 = v14;
  __chkstk_darwin(v14);
  v60 = &v54 - v15;
  v64 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  __chkstk_darwin(v64);
  v17 = (&v54 - v16);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v55 = v17;
    v56 = a5;
    v57 = a4;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v67[0] = v23;
    *v21 = 136315650;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v67);
    *(v21 + 12) = 1024;
    *(v21 + 14) = v65 & 1;
    *(v21 + 18) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v24;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *(v21 + 20) = v24;
    *v22 = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - AutoHeal: CRK exists on OT? %{BOOL}d error:%@", v21, 0x1Cu);
    sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v23);

    a5 = v56;
    a4 = v57;
    v17 = v55;
  }

  else
  {
  }

  v26 = a3 + *(type metadata accessor for CustodianshipRecords(0) + 20);
  v27 = *(v26 + *(type metadata accessor for CustodianRecoveryInfoRecord(0) + 32) + 8);
  if (v65)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    v30 = os_log_type_enabled(v28, v29);
    if (v27 >> 60 == 15)
    {
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v67[0] = v32;
        *v31 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v31 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v67);
        _os_log_impl(&_mh_execute_header, v28, v29, "%s - AutoHeal: CRK exists on OT, RKC not present in CK. KeyRepair is needed. But, cannot delete keys from Octagon. Aborting KeyRepair.", v31, 0xCu);
        sub_10000839C(v32);
      }

      type metadata accessor for AACustodianError(0);
      v33 = -7027;
    }

    else
    {
      if (v30)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v67[0] = v44;
        *v43 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v43 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v67);
        _os_log_impl(&_mh_execute_header, v28, v29, "%s - AutoHeal: CRK exists on OT, RKC present in CK. KeyRepair not needed. Aborting KeyRepair.", v43, 0xCu);
        sub_10000839C(v44);
      }

      type metadata accessor for AACustodianError(0);
      v33 = -7025;
    }

LABEL_40:
    v66 = v33;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v17 = v67[0];
    swift_storeEnumTagMultiPayload();
    a4(v17);
    return sub_100008D3C(v17, &qword_1003D8EF8, &qword_10033EB18);
  }

  if (v27 >> 60 == 15)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67[0] = v37;
      *v36 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v67);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - AutoHeal: CRK not exists on OT, CRK never existed. Recovery Info Record is missing RKC. Attempting to create CRK on Octagon", v36, 0xCu);
      sub_10000839C(v37);
    }

    v38 = v60;
    v39 = v61;
    v40 = v62;
    (*(v61 + 16))(v60, v63 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__securityController, v62);
    Dependency.wrappedValue.getter();
    (*(v39 + 8))(v38, v40);
    sub_1000080F8(v67, v67[3]);
    v41 = type metadata accessor for CustodianRecord(0);
    sub_1000160C4(a3 + *(v41 + 20), a4, a5);
    return sub_10000839C(v67);
  }

  else
  {
    v45 = v59;
    (*(v59 + 16))(v13, v63 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__urlBagProvider, v11);
    Dependency.wrappedValue.getter();
    (*(v45 + 8))(v13, v11);
    v46 = [objc_opt_self() canRepairCustodian];
    sub_10000839C(v67);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    v49 = os_log_type_enabled(v47, v48);
    if (!v46)
    {
      if (v49)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v67[0] = v53;
        *v52 = 136315138;
        if (qword_1003D7DD0 != -1)
        {
          swift_once();
        }

        *(v52 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v67);
        _os_log_impl(&_mh_execute_header, v47, v48, "%s - AutoHeal: CRK not exists on OT, But, Recovery Info Record has an RKC. decoupleCRK is not enabled. Aborting repair.", v52, 0xCu);
        sub_10000839C(v53);
      }

      type metadata accessor for AACustodianError(0);
      v33 = -7026;
      goto LABEL_40;
    }

    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v67[0] = v51;
      *v50 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v50 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v67);
      _os_log_impl(&_mh_execute_header, v47, v48, "%s - AutoHeal: CRK not exists on OT, Recovery Info Record has an RKC. Invoking Preflight and repair.", v50, 0xCu);
      sub_10000839C(v51);
    }

    return sub_10008E6E8(a3, v58, a4, a5);
  }
}

uint64_t sub_10008E6E8(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v51 = a3;
  v52 = a4;
  v50 = *v4;
  v7 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  __chkstk_darwin(v7);
  v9 = (&v41 - v8);
  v46 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = &v41 - v10;
  v47 = type metadata accessor for RecoveryKeys(0);
  __chkstk_darwin(v47);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for CustodianRecord(0);
  v17 = (a1 + *(v48 + 40));
  v18 = v17[1];
  if (v18 >> 60 == 15 || (v19 = *v17, v20 = a1 + *(v14 + 20), v21 = (v20 + *(type metadata accessor for CustodianRecoveryInfoRecord(0) + 32)), v22 = v21[1], v22 >> 60 == 15))
  {
    type metadata accessor for AACustodianError(0);
    v53[5] = -7019;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v9 = v53[0];
    swift_storeEnumTagMultiPayload();
    v51(v9);
    return sub_100008D3C(v9, &qword_1003D8EF8, &qword_10033EB18);
  }

  else
  {
    v24 = *v21;
    sub_100052704(v19, v18);
    v45 = v22;
    sub_100052704(v24, v22);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAB8);
    sub_100094A08(a1, v16, type metadata accessor for CustodianshipRecords);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v42 = v27;
      v43 = v26;
      v44 = v24;
      v41 = v19;
      v28 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v28 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v53);
      *(v28 + 12) = 2080;
      v29 = sub_1000A92F8();
      v31 = v30;
      sub_1000949A8(v16, type metadata accessor for CustodianshipRecords);
      v32 = sub_10021145C(v29, v31, v53);

      *(v28 + 14) = v32;
      v33 = v43;
      _os_log_impl(&_mh_execute_header, v43, v42, "%s - Starting to Preflight Custodian Recovery before repair for %s", v28, 0x16u);
      swift_arrayDestroy();

      v19 = v41;
      v24 = v44;
    }

    else
    {

      sub_1000949A8(v16, type metadata accessor for CustodianshipRecords);
    }

    sub_1000A8E58(v13 + *(v47 + 24));
    *v13 = v19;
    v13[1] = v18;
    v34 = v45;
    v35 = v46;
    v13[2] = v24;
    v13[3] = v34;
    v36 = v49;
    (*(v49 + 16))(v11, v5 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__securityController, v35);
    Dependency.wrappedValue.getter();
    (*(v36 + 8))(v11, v35);
    v37 = sub_1000080F8(v53, v53[3]);
    v38 = *(v48 + 20);
    v39 = *v37;
    v40 = v52;

    sub_100019304(a1 + v38, v13, v39, v51, v40, v5, v50);
    sub_1000949A8(v13, type metadata accessor for RecoveryKeys);
    return sub_10000839C(v53);
  }
}

uint64_t sub_10008ECC8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v40 = a7;
  v41 = a6;
  v42 = a4;
  v12 = type metadata accessor for CustodianshipRecords(0);
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a3)
    {
      v37 = a5;
      v20 = a3;
      if (a1)
      {
        v21 = _convertErrorToNSError(_:)();
      }

      else
      {
        v21 = 0;
      }

      [a3 updateTaskResultWithError:{v21, v37}];

      (*(v15 + 16))(v17, v19 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__analyticsRTCReporter, v14);
      Dependency.wrappedValue.getter();
      (*(v15 + 8))(v17, v14);
      [v43[0] sendEvent:a3];

      swift_unknownObjectRelease();
      a5 = v37;
    }
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43[0] = v27;
      *v25 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v43);
      *(v25 + 12) = 2112;
      v28 = _convertErrorToNSError(_:)();
      *(v25 + 14) = v28;
      *v26 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - error updating record: %@", v25, 0x16u);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v27);
    }

    swift_errorRetain();
    v42(a1);
  }

  else if ((*(v41 + *(type metadata accessor for KeyRepairContext(0) + 20)) & 1) != 0 && (*(v40 + *(type metadata accessor for CustodianRecord(0) + 48)) & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100094A08(v39, &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipRecords);
      v35 = (*(v38 + 80) + 40) & ~*(v38 + 80);
      v36 = swift_allocObject();
      v36[2] = v42;
      v36[3] = a5;
      v36[4] = a2;
      sub_100094BE4(&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for CustodianshipRecords);

      sub_10008F3F8(v40, sub_100096D8C, v36);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAB8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43[0] = v34;
      *v33 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v43);
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - skipping old custodian record cleanup and sharing of new record...", v33, 0xCu);
      sub_10000839C(v34);
    }

    return (v42)(0);
  }

  return result;
}

uint64_t sub_10008F310(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = *(type metadata accessor for CustodianshipRecords(0) + 20);
      v11 = type metadata accessor for CustodianRecord(0);
      sub_10008742C(a5 + v10, *(a5 + *(v11 + 24)), *(a5 + *(v11 + 24) + 8), a2, a3);
    }
  }

  return result;
}

uint64_t sub_10008F3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v89 = a2;
  v109 = *v3;
  v93 = type metadata accessor for DispatchWorkItemFlags();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS.QoSClass();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v101 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v76 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v100);
  v102 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v104 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianshipRecords(0);
  v98 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v81 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v76 - v18;
  v96 = v20;
  __chkstk_darwin(v17);
  v22 = &v76 - v21;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAAE8);
  sub_100094A08(a1, v22, type metadata accessor for CustodianshipRecords);
  sub_100094A08(a1, v19, type metadata accessor for CustodianshipRecords);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v108 = a1;
  v105 = v14;
  v103 = v8;
  if (v26)
  {
    LODWORD(v97) = v25;
    v99 = v11;
    v106 = v9;
    v27 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v27 = 136315650;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v27 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
    *(v27 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    sub_1000949A8(v22, type metadata accessor for CustodianshipRecords);
    v31 = sub_10021145C(v28, v30, aBlock);

    *(v27 + 14) = v31;
    *(v27 + 22) = 2080;
    type metadata accessor for CustodianHealthRecord(0);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_1000949A8(v19, type metadata accessor for CustodianshipRecords);
    v35 = sub_10021145C(v32, v34, aBlock);

    *(v27 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v24, v97, "%s - Cleaning up old custodian records: %s, custodianID: %s", v27, 0x20u);
    swift_arrayDestroy();

    v9 = v106;
    v11 = v99;
  }

  else
  {

    sub_1000949A8(v19, type metadata accessor for CustodianshipRecords);
    sub_1000949A8(v22, type metadata accessor for CustodianshipRecords);
  }

  v36 = dispatch_group_create();
  v78 = v36;
  v106 = swift_allocObject();
  *(v106 + 16) = &_swiftEmptyDictionarySingleton;
  v80 = sub_100071C74();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100097CB0(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v103);
  v77 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  dispatch_group_enter(v36);
  v37 = v101;
  v99 = *(v101 + 16);
  v102 = (v101 + 16);
  v103 = OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cloudStorage;
  v38 = v82;
  v39 = v83;
  (v99)(v82, v107 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__cloudStorage, v83);
  Dependency.wrappedValue.getter();
  v101 = *(v37 + 8);
  (v101)(v38, v39);
  v100 = type metadata accessor for CustodianshipRecords;
  v40 = v81;
  sub_100094A08(v108, v81, type metadata accessor for CustodianshipRecords);
  v41 = *(v98 + 80);
  v42 = (v41 + 16) & ~v41;
  v97 = v42;
  v98 = v41;
  v96 = (v96 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = v96;
  v44 = (v96 + 15) & 0xFFFFFFFFFFFFFFF8;
  v95 = v44;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v94 = type metadata accessor for CustodianshipRecords;
  sub_100094BE4(v40, v47 + v42, type metadata accessor for CustodianshipRecords);
  v48 = v77;
  *(v47 + v43) = v77;
  *(v47 + v44) = v106;
  v79 = v45;
  v49 = v78;
  *(v47 + v45) = v78;
  *(v47 + v46) = v109;
  v50 = v48;

  v51 = v49;
  v52 = v108;
  sub_10019F4BC(v108, sub_100096E40, v47);

  sub_10000839C(aBlock);
  dispatch_group_enter(v51);
  (v99)(v38, v107 + v103, v39);
  Dependency.wrappedValue.getter();
  (v101)(v38, v39);
  v78 = *(v105 + 24);
  sub_100094A08(v52, v40, v100);
  v53 = swift_allocObject();
  sub_100094BE4(v40, v53 + v97, v94);
  *(v53 + v96) = v50;
  *(v53 + v95) = v106;
  *(v53 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;
  *(v53 + v46) = v109;
  v54 = v50;

  v55 = v51;
  v56 = v108;
  sub_10019E39C(v78 + v108, sub_100096E58, v53);

  sub_10000839C(aBlock);
  dispatch_group_enter(v55);
  (v99)(v38, v107 + v103, v39);
  Dependency.wrappedValue.getter();
  (v101)(v38, v39);
  v57 = *(v105 + 20);
  v58 = v56;
  sub_100094A08(v56, v40, v100);
  v59 = swift_allocObject();
  sub_100094BE4(v40, v59 + v97, v94);
  *(v59 + v96) = v54;
  v60 = v106;
  *(v59 + v95) = v106;
  *(v59 + v79) = v55;
  v61 = v109;
  *(v59 + v46) = v109;
  v62 = v54;

  v107 = v55;
  sub_10019E068(v58 + v57, sub_100097230, v59);

  sub_10000839C(aBlock);
  v63 = v85;
  v64 = v84;
  v65 = v86;
  (*(v85 + 104))(v84, enum case for DispatchQoS.QoSClass.default(_:), v86);
  v66 = static OS_dispatch_queue.global(qos:)();
  (*(v63 + 8))(v64, v65);
  v67 = swift_allocObject();
  v67[2] = v62;
  v67[3] = v60;
  v68 = v90;
  v67[4] = v89;
  v67[5] = v68;
  v67[6] = v61;
  aBlock[4] = sub_100097364;
  aBlock[5] = v67;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6D50;
  v69 = _Block_copy(aBlock);
  v70 = v62;

  v71 = v104;
  static DispatchQoS.unspecified.getter();
  v110 = _swiftEmptyArrayStorage;
  sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v72 = v91;
  v73 = v93;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v74 = v107;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v69);

  (*(v92 + 8))(v72, v73);
  (*(v87 + 8))(v71, v88);
}

uint64_t sub_10009027C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v41 = a5;
  v42 = a6;
  v38 = a3;
  v39 = a4;
  v10 = type metadata accessor for UUID();
  v40 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  __chkstk_darwin(v16);
  v18 = (&v38 - v17);
  sub_100012D04(a1, &v38 - v17, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    v20 = *(type metadata accessor for CustodianRecord(0) + 20);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAB8);
    v22 = v40;
    (*(v40 + 16))(v12, a7 + v20, v10);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v25 = 136315650;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v43);
      *(v25 + 12) = 2080;
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v40 + 8))(v12, v10);
      v30 = sub_10021145C(v27, v29, v43);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2112;
      v31 = _convertErrorToNSError(_:)();
      *(v25 + 24) = v31;
      *v26 = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - failed to save custodianship records %s: %@", v25, 0x20u);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      (*(v22 + 8))(v12, v10);
    }

    swift_errorRetain();
    v41(v19);
  }

  else
  {
    sub_100094BE4(v18, v15, type metadata accessor for CustodianshipRecords);
    v32 = [objc_allocWithZone(AKCustodianContext) init];
    v33 = [a2 aa_altDSID];
    [v32 setAltDSID:v33];

    v34 = type metadata accessor for CustodianRecord(0);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v32 setCustodianUUID:isa];

    v36 = 0;
    if (*&v15[*(v34 + 40) + 8] >> 60 != 15)
    {
      v36 = Data._bridgeToObjectiveC()().super.isa;
    }

    [v32 setWrappingKeyRKC:{v36, v38, v39}];

    [v32 setCustodianSyncAction:*(v38 + *(type metadata accessor for KeyRepairContext(0) + 24))];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100090834(v32, v41, v42);
    }

    else
    {
    }

    return sub_1000949A8(v15, type metadata accessor for CustodianshipRecords);
  }
}

uint64_t sub_100090834(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = *v3;
  v8 = sub_100005814(&unk_1003DB090, &qword_100340B80);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-1] - v10;
  if ([objc_opt_self() shouldSkipIdMSKeyUpdate])
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20[0] = v16;
      *v15 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v20);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - 🚨 TCS IdMS Endpoint Testing: SkipIdMSKeyUpdate. Custodian recovery key update skipped.", v15, 0xCu);
      sub_10000839C(v16);
    }

    return a2(0);
  }

  else
  {
    (*(v9 + 16))(v11, v3 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__idmsRequestController, v8);
    Dependency.wrappedValue.getter();
    (*(v9 + 8))(v11, v8);
    sub_1000080F8(v20, v20[3]);
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = v7;

    sub_10011A258(a1, sub_1000969F0, v18);

    return sub_10000839C(v20);
  }
}

uint64_t sub_100090B3C(uint64_t a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAB8);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v7 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v7 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v17);
      *(v7 + 12) = 2112;
      v10 = _convertErrorToNSError(_:)();
      *(v7 + 14) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s - error updating recovery key: %@", v7, 0x16u);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v9);
    }

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v17);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - custodian recovery key update complete!", v15, 0xCu);
      sub_10000839C(v16);
    }

    return (a2)(0);
  }
}

void sub_100090EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v70 = a5;
  v62 = a4;
  v67 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v65 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustodianshipRecords(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v59 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v59 - v18;
  __chkstk_darwin(v17);
  v21 = &v59 - v20;
  v22 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v22);
  v24 = (&v59 - v23);
  sub_100012D04(a1, &v59 - v23, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAE8);
    sub_100094A08(a2, v21, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v19, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v61 = v28;
      v29 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v29 = 136315906;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v29 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v29 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1000949A8(v21, type metadata accessor for CustodianshipRecords);
      v33 = sub_10021145C(v30, v32, aBlock);

      *(v29 + 14) = v33;
      *(v29 + 22) = 2080;
      type metadata accessor for CustodianRecord(0);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1000949A8(v19, type metadata accessor for CustodianshipRecords);
      v37 = sub_10021145C(v34, v36, aBlock);

      *(v29 + 24) = v37;
      *(v29 + 32) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 34) = v38;
      v39 = v59;
      *v59 = v38;
      _os_log_impl(&_mh_execute_header, v27, v61, "%s - Failed to clean up Custodian Record from cloud, recordID: %s, custodianID: %s, error: %@", v29, 0x2Au);
      sub_100008D3C(v39, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v19, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v21, type metadata accessor for CustodianshipRecords);
    }

    v52 = swift_allocObject();
    v52[2] = v62;
    v52[3] = v25;
    v53 = v70;
    v52[4] = v70;
    aBlock[4] = sub_100097420;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003A6E90;
    v54 = _Block_copy(aBlock);
    swift_errorRetain();

    v55 = v53;
    v56 = v63;
    static DispatchQoS.unspecified.getter();
    v71 = _swiftEmptyArrayStorage;
    sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v57 = v65;
    v58 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);

    (*(v68 + 8))(v57, v58);
    (*(v64 + 8))(v56, v66);
  }

  else
  {
    sub_100008D3C(v24, &unk_1003D9220, &unk_10033E8C0);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAE8);
    sub_100094A08(a2, v16, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v13, type metadata accessor for CustodianshipRecords);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      aBlock[0] = v69;
      *v43 = 136315650;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v43 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v43 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      sub_1000949A8(v16, type metadata accessor for CustodianshipRecords);
      v47 = sub_10021145C(v44, v46, aBlock);

      *(v43 + 14) = v47;
      *(v43 + 22) = 2080;
      type metadata accessor for CustodianRecord(0);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      sub_1000949A8(v13, type metadata accessor for CustodianshipRecords);
      v51 = sub_10021145C(v48, v50, aBlock);

      *(v43 + 24) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s - Successfully cleaned up Custodian Record from cloud, recordID: %s, custodianID: %s", v43, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v13, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v16, type metadata accessor for CustodianshipRecords);
    }

    dispatch_group_leave(v70);
  }
}

void sub_1000918C4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a2, 0xD000000000000014, 0x800000010032DB30, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v7;
  swift_endAccess();
  dispatch_group_leave(a3);
}

void sub_100091970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v72 = a5;
  v64 = a4;
  v69 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for CustodianshipRecords(0);
  v10 = __chkstk_darwin(v63);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v59 - v17;
  __chkstk_darwin(v16);
  v20 = &v59 - v19;
  v21 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v21);
  v23 = (&v59 - v22);
  sub_100012D04(a1, &v59 - v22, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAE8);
    sub_100094A08(a2, v20, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v18, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v61 = v27;
      v62 = v26;
      v28 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v28 = 136315906;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v28 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_1000949A8(v20, type metadata accessor for CustodianshipRecords);
      v32 = sub_10021145C(v29, v31, aBlock);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1000949A8(v18, type metadata accessor for CustodianshipRecords);
      v36 = sub_10021145C(v33, v35, aBlock);

      *(v28 + 24) = v36;
      *(v28 + 32) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 34) = v37;
      v38 = v59;
      *v59 = v37;
      v39 = v62;
      _os_log_impl(&_mh_execute_header, v62, v61, "%s - Failed to clean up Health Record from cloud, recordID: %s, custodianID: %s, error: %@", v28, 0x2Au);
      sub_100008D3C(v38, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v18, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v20, type metadata accessor for CustodianshipRecords);
    }

    v52 = swift_allocObject();
    v52[2] = v64;
    v52[3] = v24;
    v53 = v72;
    v52[4] = v72;
    aBlock[4] = sub_1000973CC;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003A6E40;
    v54 = _Block_copy(aBlock);
    swift_errorRetain();

    v55 = v53;
    v56 = v65;
    static DispatchQoS.unspecified.getter();
    v73 = _swiftEmptyArrayStorage;
    sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v57 = v67;
    v58 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);

    (*(v70 + 8))(v57, v58);
    (*(v66 + 8))(v56, v68);
  }

  else
  {
    sub_100008D3C(v23, &unk_1003D9220, &unk_10033E8C0);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAE8);
    sub_100094A08(a2, v15, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v12, type metadata accessor for CustodianshipRecords);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      LODWORD(v71) = v42;
      v43 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v43 = 136315650;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v43 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v43 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      sub_1000949A8(v15, type metadata accessor for CustodianshipRecords);
      v47 = sub_10021145C(v44, v46, aBlock);

      *(v43 + 14) = v47;
      *(v43 + 22) = 2080;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      sub_1000949A8(v12, type metadata accessor for CustodianshipRecords);
      v51 = sub_10021145C(v48, v50, aBlock);

      *(v43 + 24) = v51;
      _os_log_impl(&_mh_execute_header, v41, v71, "%s - Successfully cleaned up Health Record from cloud, recordID: %s, custodianID: %s", v43, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v12, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v15, type metadata accessor for CustodianshipRecords);
    }

    dispatch_group_leave(v72);
  }
}

void sub_1000923B0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a2, 0xD000000000000020, 0x800000010032DB00, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v7;
  swift_endAccess();
  dispatch_group_leave(a3);
}

void sub_10009245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v72 = a5;
  v64 = a4;
  v69 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for CustodianshipRecords(0);
  v10 = __chkstk_darwin(v63);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v59 - v17;
  __chkstk_darwin(v16);
  v20 = &v59 - v19;
  v21 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v21);
  v23 = (&v59 - v22);
  sub_100012D04(a1, &v59 - v22, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAE8);
    sub_100094A08(a2, v20, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v18, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v61 = v27;
      v62 = v26;
      v28 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v28 = 136315906;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v28 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v28 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_1000949A8(v20, type metadata accessor for CustodianshipRecords);
      v32 = sub_10021145C(v29, v31, aBlock);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2080;
      type metadata accessor for CustodianRecoveryInfoRecord(0);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1000949A8(v18, type metadata accessor for CustodianshipRecords);
      v36 = sub_10021145C(v33, v35, aBlock);

      *(v28 + 24) = v36;
      *(v28 + 32) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 34) = v37;
      v38 = v59;
      *v59 = v37;
      v39 = v62;
      _os_log_impl(&_mh_execute_header, v62, v61, "%s - Failed to clean up Recovery Info Record from cloud, recordID: %s, custodianID: %s, error: %@", v28, 0x2Au);
      sub_100008D3C(v38, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v18, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v20, type metadata accessor for CustodianshipRecords);
    }

    v52 = swift_allocObject();
    v52[2] = v64;
    v52[3] = v24;
    v53 = v72;
    v52[4] = v72;
    aBlock[4] = sub_1000973C0;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003A6DF0;
    v54 = _Block_copy(aBlock);
    swift_errorRetain();

    v55 = v53;
    v56 = v65;
    static DispatchQoS.unspecified.getter();
    v73 = _swiftEmptyArrayStorage;
    sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v57 = v67;
    v58 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);

    (*(v70 + 8))(v57, v58);
    (*(v66 + 8))(v56, v68);
  }

  else
  {
    sub_100008D3C(v23, &unk_1003D9220, &unk_10033E8C0);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAE8);
    sub_100094A08(a2, v15, type metadata accessor for CustodianshipRecords);
    sub_100094A08(a2, v12, type metadata accessor for CustodianshipRecords);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      LODWORD(v71) = v42;
      v43 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v43 = 136315650;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v43 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, aBlock);
      *(v43 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100097CB0(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      sub_1000949A8(v15, type metadata accessor for CustodianshipRecords);
      v47 = sub_10021145C(v44, v46, aBlock);

      *(v43 + 14) = v47;
      *(v43 + 22) = 2080;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      sub_1000949A8(v12, type metadata accessor for CustodianshipRecords);
      v51 = sub_10021145C(v48, v50, aBlock);

      *(v43 + 24) = v51;
      _os_log_impl(&_mh_execute_header, v41, v71, "%s - Successfully cleaned up Recovery Info Record from cloud, recordID: %s, custodianID: %s", v43, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000949A8(v12, type metadata accessor for CustodianshipRecords);
      sub_1000949A8(v15, type metadata accessor for CustodianshipRecords);
    }

    dispatch_group_leave(v72);
  }
}

void sub_100092E9C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a2, 0xD000000000000017, 0x800000010032DAE0, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v7;
  swift_endAccess();
  dispatch_group_leave(a3);
}

uint64_t sub_100092F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  aBlock[4] = sub_1000973B0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6DA0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100097CB0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

void sub_100093218(uint64_t a1, void (*a2)(id))
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
    sub_100097CB0(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAAB8);
    v8 = v21;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v11 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v21);
      *(v11 + 12) = 2112;
      v14 = _convertErrorToNSError(_:)();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - failed to delete all custodianship records from cloud store: %@", v11, 0x16u);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v13);
    }

    v15 = v8;
    a2(v8);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAB8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v19 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, &v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - custodianship records deleted successfully from cloud store.", v19, 0xCu);
      sub_10000839C(v20);
    }

    a2(0);
  }
}

uint64_t sub_10009366C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v23 - v9;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    return 1;
  }

  v11 = a2;
  v12 = 0;
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v24 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v27 = *(v13 + 56);
  v28 = v14;
  v26 = v11 + 56;
  v15 = (v13 - 8);
  while (1)
  {
    v25 = v12;
    v28(v10, v24 + v27 * v12, v4);
    if (*(v11 + 16))
    {
      sub_100097CB0(&qword_1003DB0B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v11 + 32);
      v18 = v16 & ~v17;
      if ((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_4:
    v12 = v25 + 1;
    (*v15)(v10, v4);
    if (v12 == v23)
    {
      return 1;
    }
  }

  v19 = ~v17;
  while (1)
  {
    v28(v7, *(v11 + 48) + v18 * v27, v4);
    sub_100097CB0(&qword_1003DB088, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = *v15;
    (*v15)(v7, v4);
    if (v20)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v21(v10, v4);
  return 0;
}

uint64_t sub_100093948()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 72) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  sub_10000839C((v0 + 32));
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

  return _swift_deallocObject(v0, ((((((((v11 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100093B64(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecoveryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v13 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000082A8;

  return sub_100087C50(a1, v13, v7, v1 + 32, v1 + v4, v8, v9, v10);
}

uint64_t sub_100093CE0(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v7 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v71 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v64 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v70 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  __chkstk_darwin(v13);
  v15 = (&v64 - v14);
  if (!a1)
  {
    type metadata accessor for AACustodianError(0);
    v84 = -7025;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100097CB0(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v15 = v77[0];
    swift_storeEnumTagMultiPayload();
    a2(v15);
    return sub_100008D3C(v15, &qword_1003D8EF8, &qword_10033EB18);
  }

  v66 = v11;
  v68 = v10;
  v69 = a3;
  swift_getErrorValue();
  v16 = v82;
  v17 = v83;
  swift_errorRetain();
  if (qword_1003D7E38 != -1)
  {
    swift_once();
  }

  v67 = v7;
  v73 = sub_100255F78(qword_1003FA950, v16, v17);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v77[0] = v22;
    *v21 = 136315394;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v77);
    *(v21 + 12) = 1024;
    *(v21 + 14) = v73 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - isMissingCRK: %{BOOL}d", v21, 0x12u);
    sub_10000839C(v22);
  }

  v74 = v13;
  swift_getErrorValue();
  v23 = v80;
  v24 = v81;
  if (qword_1003D7E40 != -1)
  {
    v58 = v80;
    v59 = v81;
    swift_once();
    v24 = v59;
    v23 = v58;
  }

  v25 = sub_100255F78(qword_1003FA958, v23, v24);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v77[0] = v29;
    *v28 = 136315394;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v28 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v77);
    *(v28 + 12) = 1024;
    *(v28 + 14) = v25 & 1;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s - isUntrustedCRK: %{BOOL}d", v28, 0x12u);
    sub_10000839C(v29);
  }

  swift_getErrorValue();
  v30 = v78;
  v31 = v79;
  if (qword_1003D7E48 != -1)
  {
    v60 = v78;
    v61 = v79;
    swift_once();
    v31 = v61;
    v30 = v60;
  }

  if (sub_100255F78(qword_1003FA960, v30, v31))
  {
    swift_getErrorValue();
    v32 = v75;
    v33 = v76;
    if (qword_1003D7E50 != -1)
    {
      v62 = v75;
      v63 = v76;
      swift_once();
      v33 = v63;
      v32 = v62;
    }

    sub_1002561AC(qword_1003FA968, v32, v33);
    v35 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v65 = a2;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v77[0] = v39;
      *v38 = 136315394;
      if (qword_1003D7DD0 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v77);
      *(v38 + 12) = 1024;
      *(v38 + 14) = v35 & 1;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s - isError31WithUnderlyingError9: %{BOOL}d", v38, 0x12u);
      sub_10000839C(v39);

      a2 = v65;
    }

    else
    {
    }

    if ((v73 | v25 | v35))
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v77[0] = v43;
    *v42 = 136315138;
    if (qword_1003D7DD0 != -1)
    {
      swift_once();
    }

    *(v42 + 4) = sub_10021145C(qword_1003DAC00, *algn_1003DAC08, v77);
    _os_log_impl(&_mh_execute_header, v40, v41, "%s - isError31WithUnderlyingError9: false", v42, 0xCu);
    sub_10000839C(v43);

    if ((v73 | v25))
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  if (((v73 | v25) & 1) == 0)
  {
LABEL_37:
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "Preflight error other than repairable errors: %@", v55, 0xCu);
      sub_100008D3C(v56, &unk_1003D9140, &qword_10033E640);
    }

    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v15);

    return sub_100008D3C(v15, &qword_1003D8EF8, &qword_10033EB18);
  }

LABEL_33:
  swift_errorRetain();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    swift_errorRetain();
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 4) = v48;
    *v47 = v48;
    _os_log_impl(&_mh_execute_header, v44, v45, "Recreating decoupled CRK due to preflight error: %@", v46, 0xCu);
    sub_100008D3C(v47, &unk_1003D9140, &qword_10033E640);
  }

  v49 = v70;
  UUID.init()();
  v50 = v71;
  v51 = v67;
  (*(v71 + 16))(v9, v72 + OBJC_IVAR____TtC13appleaccountd18CustodianKeyRepair__securityController, v67);
  Dependency.wrappedValue.getter();
  (*(v50 + 8))(v9, v51);
  sub_1000080F8(v77, v77[3]);
  sub_1000160C4(v49, a2, v69);

  (*(v66 + 8))(v49, v68);
  return sub_10000839C(v77);
}

uint64_t sub_10009487C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000082A8;

  return sub_1000894F0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100094968()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000949A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100094A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100094A90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100094AC8()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100094BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100094C4C(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1000868B4(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_100094CFC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100094D3C()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v31 = *(*(v1 - 8) + 80);
  v30 = *(*(v1 - 8) + 64);
  v2 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v29 = *(v2 + 80);
  v28 = *(v2 + 64);

  v32 = v0;
  v3 = v0 + ((v31 + 40) & ~v31);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = type metadata accessor for CustodianRecord(0);
  v6(v3 + v7[5], v4);

  v8 = (v3 + v7[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v3 + v7[11]), *(v3 + v7[11] + 8));

  v10 = v7[16];
  v11 = *(v5 + 48);
  if (!v11(v3 + v10, 1, v4))
  {
    v6(v3 + v10, v4);
  }

  v12 = v1;
  v13 = v3 + *(v1 + 20);
  v6(v13, v4);
  v14 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v6(v13 + v14[5], v4);

  sub_100012324(*(v13 + v14[7]), *(v13 + v14[7] + 8));
  v15 = (v13 + v14[8]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100012324(*v15, v16);
  }

  sub_100012324(*(v13 + v14[9]), *(v13 + v14[9] + 8));
  v17 = v14[11];
  if (!v11(v13 + v17, 1, v4))
  {
    v6(v13 + v17, v4);
  }

  v18 = v3 + *(v12 + 24);
  v6(v18, v4);
  v19 = type metadata accessor for CustodianHealthRecord(0);
  v6(v18 + v19[5], v4);
  v20 = v19[6];
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 8))(v18 + v20, v21);
  v22 = (v18 + v19[7]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_100012324(*v22, v23);
  }

  v24 = (v30 + ((v31 + 40) & ~v31) + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + v29 + 8) & ~v29;
  v26 = (v28 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v18 + v19[8]), *(v18 + v19[8] + 8));

  v6(v32 + v25, v4);

  return _swift_deallocObject(v32, ((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1000951A8(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  sub_10008AEE0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000952CC()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v29 = *(*(v1 - 8) + 80);
  v28 = *(*(v1 - 8) + 64);
  v2 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v27 = *(v2 + 80);
  v26 = *(v2 + 64);
  v30 = v0;
  v3 = v0 + ((v29 + 16) & ~v29);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = type metadata accessor for CustodianRecord(0);
  v6(v3 + v7[5], v4);

  v8 = (v3 + v7[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v3 + v7[11]), *(v3 + v7[11] + 8));

  v10 = v7[16];
  v11 = *(v5 + 48);
  if (!v11(v3 + v10, 1, v4))
  {
    v6(v3 + v10, v4);
  }

  v12 = v1;
  v13 = v3 + *(v1 + 20);
  v6(v13, v4);
  v14 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v6(v13 + v14[5], v4);

  sub_100012324(*(v13 + v14[7]), *(v13 + v14[7] + 8));
  v15 = (v13 + v14[8]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100012324(*v15, v16);
  }

  sub_100012324(*(v13 + v14[9]), *(v13 + v14[9] + 8));
  v17 = v14[11];
  if (!v11(v13 + v17, 1, v4))
  {
    v6(v13 + v17, v4);
  }

  v18 = v3 + *(v12 + 24);
  v6(v18, v4);
  v19 = type metadata accessor for CustodianHealthRecord(0);
  v6(v18 + v19[5], v4);
  v20 = v19[6];
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 8))(v18 + v20, v21);
  v22 = (v18 + v19[7]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_100012324(*v22, v23);
  }

  v24 = (((((v28 + ((v29 + 16) & ~v29) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v27 + 8) & ~v27;
  sub_100012324(*(v18 + v19[8]), *(v18 + v19[8] + 8));

  v6(v30 + v24, v4);

  return _swift_deallocObject(v30, ((v26 + v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10009572C(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v10 = *(v2 + v7);
  v11 = *(v2 + v7 + 8);
  v12 = *(v2 + v8);
  v13 = v2 + ((v8 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return sub_10008DCB4(a1, a2, v2 + v6, v10, v11, v12, v13);
}

uint64_t sub_10009585C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000958CC()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for CustodianshipRecords(0);
  v47 = *(*(v4 - 8) + 80);
  v48 = v4;
  v5 = (v2 + v3 + v47) & ~v47;
  v6 = *(*(v4 - 8) + 64);

  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);

  v45 = v0;
  v11 = v0 + v5;
  v12 = v5;
  v10(v11, v8);
  v13 = type metadata accessor for CustodianRecord(0);
  v10(v11 + v13[5], v8);

  v14 = (v11 + v13[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100012324(*v14, v15);
  }

  sub_100012324(*(v11 + v13[11]), *(v11 + v13[11] + 8));

  v16 = v13[16];
  v46 = *(v9 + 48);
  if (!v46(v11 + v16, 1, v8))
  {
    v10(v11 + v16, v8);
  }

  v43 = v6;
  v17 = v6 + v47;
  v18 = v11 + *(v48 + 20);
  v10(v18, v8);
  v19 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v10(v18 + v19[5], v8);

  sub_100012324(*(v18 + v19[7]), *(v18 + v19[7] + 8));
  v20 = (v18 + v19[8]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  v22 = v17 + v12;
  sub_100012324(*(v18 + v19[9]), *(v18 + v19[9] + 8));
  v23 = v19[11];
  if (!v46(v18 + v23, 1, v8))
  {
    v10(v18 + v23, v8);
  }

  v44 = v22 & ~v47;

  v24 = v11 + *(v48 + 24);
  v10(v24, v8);
  v25 = type metadata accessor for CustodianHealthRecord(0);
  v10(v24 + v25[5], v8);
  v26 = v25[6];
  v27 = type metadata accessor for Date();
  v42 = *(*(v27 - 8) + 8);
  v42(v24 + v26, v27);
  v28 = (v24 + v25[7]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100012324(*v28, v29);
  }

  sub_100012324(*(v24 + v25[8]), *(v24 + v25[8] + 8));
  v30 = v45 + v44;
  v10(v45 + v44, v8);
  v10(v45 + v44 + v13[5], v8);

  v31 = (v45 + v44 + v13[10]);
  v32 = v31[1];
  if (v32 >> 60 != 15)
  {
    sub_100012324(*v31, v32);
  }

  sub_100012324(*(v30 + v13[11]), *(v30 + v13[11] + 8));

  v33 = v13[16];
  if (!v46(v30 + v33, 1, v8))
  {
    v10(v30 + v33, v8);
  }

  v34 = v30 + *(v48 + 20);
  v10(v34, v8);
  v10(v34 + v19[5], v8);

  sub_100012324(*(v34 + v19[7]), *(v34 + v19[7] + 8));
  v35 = (v34 + v19[8]);
  v36 = v35[1];
  if (v36 >> 60 != 15)
  {
    sub_100012324(*v35, v36);
  }

  sub_100012324(*(v34 + v19[9]), *(v34 + v19[9] + 8));
  v37 = v19[11];
  if (!v46(v34 + v37, 1, v8))
  {
    v10(v34 + v37, v8);
  }

  v38 = v30 + *(v48 + 24);
  v10(v38, v8);
  v10(v38 + v25[5], v8);
  v42(v38 + v25[6], v27);
  v39 = (v38 + v25[7]);
  v40 = v39[1];
  if (v40 >> 60 != 15)
  {
    sub_100012324(*v39, v40);
  }

  sub_100012324(*(v38 + v25[8]), *(v38 + v25[8] + 8));

  return _swift_deallocObject(v45, ((v43 + v44 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100095F70(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v7 = *(v6 + 80);
  return sub_10008ECC8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, v1 + ((v4 + v5 + v7) & ~v7), v1 + ((*(v6 + 64) + v7 + ((v4 + v5 + v7) & ~v7)) & ~v7));
}

uint64_t sub_100096088()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = type metadata accessor for CustodianshipRecords(0);
  v30 = *(*(v27 - 8) + 80);
  v28 = *(*(v27 - 8) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);

  v29 = (v3 + v30 + 16) & ~v30;
  v8 = v0 + v29;
  v7(v0 + v29, v5);
  v9 = type metadata accessor for CustodianRecord(0);
  v7(v0 + v29 + v9[5], v5);

  v10 = (v0 + v29 + v9[10]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  sub_100012324(*(v8 + v9[11]), *(v8 + v9[11] + 8));

  v12 = v9[16];
  v13 = *(v6 + 48);
  if (!v13(v8 + v12, 1, v5))
  {
    v7(v8 + v12, v5);
  }

  v14 = v8 + *(v27 + 20);
  v7(v14, v5);
  v15 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v7(v14 + v15[5], v5);

  sub_100012324(*(v14 + v15[7]), *(v14 + v15[7] + 8));
  v16 = (v14 + v15[8]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100012324(*v16, v17);
  }

  sub_100012324(*(v14 + v15[9]), *(v14 + v15[9] + 8));
  v18 = v15[11];
  if (!v13(v14 + v18, 1, v5))
  {
    v7(v14 + v18, v5);
  }

  v19 = v8 + *(v27 + 24);
  v7(v19, v5);
  v20 = type metadata accessor for CustodianHealthRecord(0);
  v7(v19 + v20[5], v5);
  v21 = v20[6];
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 8))(v19 + v21, v22);
  v23 = (v19 + v20[7]);
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    sub_100012324(*v23, v24);
  }

  sub_100012324(*(v19 + v20[8]), *(v19 + v20[8] + 8));

  return _swift_deallocObject(v26, ((v28 + v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000964DC(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = v1 + ((v6 + *(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10009027C(a1, v8, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_100096608()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v26 = *(*(v1 - 8) + 80);
  v24 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v25 = (v26 + 40) & ~v26;
  v2 = v0 + v25;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v25, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v25 + v6[5], v3);

  v7 = (v0 + v25 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v23 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v23 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v0, ((v24 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1000969B8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000969FC()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v25 = *(*(v1 - 8) + 80);
  v23 = *(*(v1 - 8) + 64);

  v26 = v0;
  v24 = (v25 + 40) & ~v25;
  v2 = v0 + v24;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v24, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v24 + v6[5], v3);

  v7 = (v0 + v24 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v1 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v26, v24 + v23);
}

uint64_t sub_100096D8C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_10008F310(a1, v4, v5, v6, v7);
}

uint64_t sub_100096E04()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100096E70()
{
  v1 = type metadata accessor for CustodianshipRecords(0);
  v28 = *(*(v1 - 8) + 80);
  v26 = *(*(v1 - 8) + 64);
  v27 = (v28 + 16) & ~v28;
  v2 = v0 + v27;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v0 + v27, v3);
  v6 = type metadata accessor for CustodianRecord(0);
  v5(v0 + v27 + v6[5], v3);

  v7 = (v0 + v27 + v6[10]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v2 + v6[11]), *(v2 + v6[11] + 8));

  v9 = v6[16];
  v10 = *(v4 + 48);
  if (!v10(v2 + v9, 1, v3))
  {
    v5(v2 + v9, v3);
  }

  v25 = v1;
  v11 = v2 + *(v1 + 20);
  v5(v11, v3);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5(v11 + v12[5], v3);

  sub_100012324(*(v11 + v12[7]), *(v11 + v12[7] + 8));
  v13 = (v11 + v12[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100012324(*v13, v14);
  }

  sub_100012324(*(v11 + v12[9]), *(v11 + v12[9] + 8));
  v15 = v12[11];
  if (!v10(v11 + v15, 1, v3))
  {
    v5(v11 + v15, v3);
  }

  v16 = v2 + *(v25 + 24);
  v5(v16, v3);
  v17 = type metadata accessor for CustodianHealthRecord(0);
  v5(v16 + v17[5], v3);
  v18 = v17[6];
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v20 = (v16 + v17[7]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100012324(*v20, v21);
  }

  v22 = (v26 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v16 + v17[8]), *(v16 + v17[8] + 8));

  return _swift_deallocObject(v0, ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100097248(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CustodianshipRecords(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v6);
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v9, v10, v11, v12);
}

uint64_t sub_10009731C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10009737C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000973D8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009742C()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100097544(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100084B4C(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_100097600()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100097680()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000976D4()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((((((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100097810(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + v7 + 8);
  v12 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_100084D00(a1, v1 + v4, v8, v9, v10, v11, v12);
}

uint64_t sub_1000978D4()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000979E0()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100085768(v3, v0 + v2, v4);
}

uint64_t sub_100097A74()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100097B90()
{
  v1 = *(type metadata accessor for KeyRepairContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100085910(v4, v0 + v2, v5, v6);
}

uint64_t sub_100097C4C(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100097CB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100097D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100097DEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

void sub_100097EA8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10003A288();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100097F90()
{
  type metadata accessor for CustodianOwnerHealthCheck(0);
  sub_100005814(&unk_1003DB5E0, &qword_10033FA48);
  result = String.init<A>(describing:)();
  qword_1003DB170 = result;
  *algn_1003DB178 = v1;
  return result;
}

uint64_t sub_100097FE4()
{
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A60, &qword_10033F190);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A30, &unk_10033F040);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9860, &qword_10033F440);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D98A0, &unk_10033FA20);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v1 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_queue;
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_maxRetryCount) = 3;
  *(v0 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_uniqueCustodianCount) = 0;
  [v2 setMaxConcurrentOperationCount:1];
  *(v0 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_healthyCustodians) = &_swiftEmptySetSingleton;
  return v0;
}

uint64_t sub_1000982A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a2;
  v46 = a4;
  v43 = *v4;
  v44 = a1;
  v51 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v39 - v7;
  v8 = type metadata accessor for URL();
  v50 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v39 - v11;
  v41 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v12 = *(v41 - 8);
  __chkstk_darwin(v41);
  v14 = &v39 - v13;
  v15 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAB8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v39 = a3;
    v40 = v8;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v53[0] = v23;
    *v22 = 136315138;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v53);
    _os_log_impl(&_mh_execute_header, v20, v21, "%s - started.", v22, 0xCu);
    sub_10000839C(v23);

    v8 = v40;
    a3 = v39;
  }

  else
  {
  }

  (*(v16 + 16))(v18, v5 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__idmsHandler, v15);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v18, v15);
  sub_1000080F8(v53, v54);
  v24 = v44;
  v25 = v45;
  sub_10007DE60(v44, v45, 0, 0);
  sub_10000839C(v53);
  v26 = v41;
  (*(v12 + 16))(v14, v5 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__custodianStorage, v41);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v14, v26);
  v27 = sub_1000080F8(v53, v54);
  v28 = swift_allocObject();
  v28[2] = v5;
  v28[3] = v24;
  v28[4] = v25;
  v28[5] = a3;
  v29 = v43;
  v28[6] = v46;
  v28[7] = v29;
  v30 = sub_1000080F8((*v27 + 16), *(*v27 + 40));
  type metadata accessor for LocalCache();

  v31 = v42;
  sub_100307F40();
  v32 = v47;
  URL.appendingPathComponent(_:isDirectory:)();
  v33 = *(v50 + 8);
  v33(v31, v8);
  v34 = v48;
  v35 = v49;
  v36 = *v30 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v37 = v51;
  (*(v49 + 16))(v48, v36, v51);
  Dependency.wrappedValue.getter();
  (*(v35 + 8))(v34, v37);
  sub_1000080F8(v52, v52[3]);
  sub_1000324D8(v32, sub_1000A56C0, v28);

  v33(v32, v8);
  sub_10000839C(v52);
  return sub_10000839C(v53);
}

uint64_t sub_1000988F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v65 = a6;
  v70 = type metadata accessor for CustodianRecord(0);
  v64 = *(v70 - 8);
  v13 = __chkstk_darwin(v70);
  v66 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v67 = &v58 - v16;
  __chkstk_darwin(v15);
  v18 = &v58 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v61 = a4;
    v62 = a5;
    v31 = *(a1 + 16);
    v32 = _swiftEmptyArrayStorage;
    v60 = a1;
    v63 = a3;
    if (v31)
    {
      v59 = a7;
      v71 = _swiftEmptyArrayStorage;
      sub_1002E0370(0, v31, 0);
      v32 = v71;
      v33 = a1 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v34 = *(v64 + 72);
      v68 = v20 + 32;
      v69 = v34;
      v58 = v31;
      v35 = v31;
      do
      {
        sub_1000A8638(v33, v18, type metadata accessor for CustodianRecord);
        (*(v20 + 16))(v22, &v18[*(v70 + 20)], v19);
        sub_1000A8824(v18, type metadata accessor for CustodianRecord);
        v71 = v32;
        v37 = v32[2];
        v36 = v32[3];
        if (v37 >= v36 >> 1)
        {
          sub_1002E0370((v36 > 1), v37 + 1, 1);
          v32 = v71;
        }

        v32[2] = v37 + 1;
        (*(v20 + 32))(v32 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v37, v22, v19);
        v33 += v69;
        --v35;
      }

      while (v35);
      v31 = v58;
      v38 = v59;
      v39 = v65;
      a3 = v63;
    }

    else
    {
      v38 = a7;
      v39 = v65;
    }

    v40 = sub_1002E20C0(v32);

    v41 = *(v40 + 16);

    v42 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_uniqueCustodianCount;
    *(a3 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_uniqueCustodianCount) = v41;
    if (v31 != v41)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100008D04(v43, qword_1003FAAB8);

      v44 = Logger.logObject.getter();
      v45 = a3;
      v46 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v44, v46))
      {

        v50 = v66;
        v49 = v67;
        if (v31)
        {
LABEL_24:
          v51 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v52 = *(v64 + 72);
          v53 = v60 + v51;
          v54 = _swiftEmptyArrayStorage;
          do
          {
            sub_1000A8638(v53, v49, type metadata accessor for CustodianRecord);
            if ((*(v49 + *(v70 + 36)) - 1) > 2)
            {
              sub_1000A8824(v49, type metadata accessor for CustodianRecord);
            }

            else
            {
              sub_1000A87BC(v49, v50, type metadata accessor for CustodianRecord);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v71 = v54;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1002E0288(0, v54[2] + 1, 1);
                v50 = v66;
                v54 = v71;
              }

              v57 = v54[2];
              v56 = v54[3];
              if (v57 >= v56 >> 1)
              {
                sub_1002E0288((v56 > 1), v57 + 1, 1);
                v50 = v66;
                v54 = v71;
              }

              v54[2] = v57 + 1;
              sub_1000A87BC(v50, v54 + v51 + v57 * v52, type metadata accessor for CustodianRecord);
              v49 = v67;
            }

            v53 += v52;
            --v31;
          }

          while (v31);
          goto LABEL_35;
        }

LABEL_34:
        v54 = _swiftEmptyArrayStorage;
LABEL_35:
        sub_1000990AC(v54, v61, v62, v39, v38);
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v71 = v48;
      *v47 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v47 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v71);
      *(v47 + 12) = 2048;
      *(v47 + 14) = v31;
      *(v47 + 22) = 2048;
      *(v47 + 24) = *(v45 + v42);

      _os_log_impl(&_mh_execute_header, v44, v46, "%s - Warning: Custodian records count %ld does not match unique custodian UUIDs count %ld", v47, 0x20u);
      sub_10000839C(v48);
    }

    v50 = v66;
    v49 = v67;
    if (v31)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAAB8);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  sub_1000399DC(a1, 1);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v71 = v28;
    *v26 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v26 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v71);
    *(v26 + 12) = 2112;
    v29 = _convertErrorToNSError(_:)();
    *(v26 + 14) = v29;
    *v27 = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s - error fetching custodian records: %@", v26, 0x16u);
    sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v28);
  }

  return v65(a1);
}

uint64_t sub_1000990AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v35 = a2;
  v8 = *v5;
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  type metadata accessor for PartialErrorHandler();
  swift_allocObject();
  v13 = sub_10031FD1C();
  (*(v10 + 16))(v12, v5 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__accountStore, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v12, v9);
  v14 = [*(*sub_1000080F8(aBlock v41) + 16)];
  v15 = v5;
  v16 = v8;
  v17 = a3;
  if (v14 && (v18 = v14, v19 = [v14 aa_altDSID], v18, v19))
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v39 = v13;
  sub_10000839C(aBlock);
  v38 = a1;
  v23 = *(a1 + 16);
  v24 = v35;
  if (v23)
  {
    v25 = *(type metadata accessor for CustodianRecord(0) - 8);
    v26 = v38 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v27 = *(v25 + 72);
    do
    {
      sub_100099CA8(v26, v20, v22, v24, v17, v15, v39, v16);
      v26 += v27;
      --v23;
    }

    while (v23);
  }

  v28 = *(v15 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_queue);
  v29 = swift_allocObject();
  v30 = v39;
  v29[2] = v38;
  v29[3] = v15;
  v31 = v36;
  v32 = v37;
  v29[4] = v30;
  v29[5] = v31;
  v29[6] = v32;
  v42 = sub_1000A59C0;
  v43 = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  v41 = &unk_1003A7108;
  v33 = _Block_copy(aBlock);

  [v28 addBarrierBlock:v33];
  _Block_release(v33);
}

uint64_t sub_10009943C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__cloudStorage;
  v2 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__custodianStorage;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__storageController;
  v6 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__keyRepair;
  v8 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__idmsHandler;
  v10 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__securityController;
  v12 = sub_100005814(&qword_1003DA570, qword_10033F508);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__statusUpdater;
  v14 = sub_100005814(&qword_1003DB620, &unk_10033FAA0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsAccountModel;
  v16 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsEventFactory;
  v18 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsReporter;
  v20 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__accountStore;
  v22 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);

  return v0;
}

uint64_t sub_1000997C0()
{
  sub_10009943C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianOwnerHealthCheck(uint64_t a1)
{
  result = qword_1003DB220;
  if (!qword_1003DB220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009986C(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &unk_1003DB240, &qword_1003D9A60, &qword_10033F190);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &unk_1003DB250, &qword_1003D9A30, &unk_10033F040);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, &unk_1003DB260, &unk_1003D9860, &qword_10033F440);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, &unk_1003DB270, &unk_1003D98A0, &unk_10033FA20);
              if (v7 <= 0x3F)
              {
                sub_10000DAB8(319, &qword_1003DB280, &unk_1003DA880, &unk_10033F5F0);
                if (v8 <= 0x3F)
                {
                  sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
                  if (v9 <= 0x3F)
                  {
                    sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
                    if (v10 <= 0x3F)
                    {
                      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
                      if (v11 <= 0x3F)
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
}

void sub_100099CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a7;
  v34 = a8;
  v31 = a4;
  v32 = a5;
  v29 = a2;
  v30 = a3;
  v10 = type metadata accessor for CustodianRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A8638(a1, v13, type metadata accessor for CustodianRecord);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1000A87BC(v13, v19 + v14, type metadata accessor for CustodianRecord);
  v20 = (v19 + v15);
  v21 = v30;
  *v20 = v29;
  v20[1] = v21;
  v22 = (v19 + v16);
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  *(v19 + v17) = a6;
  v24 = v34;
  *(v19 + v18) = v33;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v25 = type metadata accessor for AsyncOperation();
  v26 = objc_allocWithZone(v25);
  v26[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
  v27 = &v26[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
  *v27 = sub_1000A5CF0;
  v27[1] = v19;
  v35.receiver = v26;
  v35.super_class = v25;

  v28 = objc_msgSendSuper2(&v35, "init");
  [*(a6 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_queue) addOperation:v28];
}

void sub_100099EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a7;
  v52 = a6;
  v54 = a5;
  v48 = a1;
  v49 = a2;
  v12 = type metadata accessor for CustodianRecord(0);
  v45 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v46 = v14;
  v47 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v44 - v15;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v53 = a4;
  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAB8);
  sub_1000A8638(a3, v16, type metadata accessor for CustodianRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v50 = a3;
  if (v20)
  {
    v44 = a8;
    v21 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v21 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v55);
    *(v21 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_1000A8824(v16, type metadata accessor for CustodianRecord);
    v25 = sub_10021145C(v22, v24, &v55);

    *(v21 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s - performing healthCheck %s.", v21, 0x16u);
    swift_arrayDestroy();

    v26 = v44;
  }

  else
  {
    v26 = a8;

    sub_1000A8824(v16, type metadata accessor for CustodianRecord);
  }

  v27 = kAAAnalyticsEventCustodianHealthCheckOwner;
  v28 = v51;
  if (v54)
  {
    v29 = kAAAnalyticsEventCustodianHealthCheckOwner;

    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = kAAAnalyticsEventCustodianHealthCheckOwner;

    v30 = 0;
  }

  v32 = objc_opt_self();
  v33 = v52;
  v34 = String._bridgeToObjectiveC()();

  v35 = [v32 analyticsEventWithName:v27 altDSID:v30 flowID:v34];

  v36 = v50;
  v37 = v47;
  sub_1000A8638(v50, v47, type metadata accessor for CustodianRecord);
  v38 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v39 = (v46 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v40[2] = v35;
  v40[3] = v26;
  v40[4] = a9;
  sub_1000A87BC(v37, v40 + v38, type metadata accessor for CustodianRecord);
  v41 = (v40 + v39);
  v42 = v49;
  *v41 = v48;
  v41[1] = v42;
  v43 = v35;

  sub_10009A630(v36, v53, v54, v33, v28, sub_1000A5FDC, v40);
}

uint64_t sub_10009A3A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  if (a2)
  {
    v28 = a3;
    if (a1)
    {
      v17 = _convertErrorToNSError(_:)();
    }

    else
    {
      a1 = 0;
      v17 = 0;
    }

    [a2 updateTaskResultWithError:v17];

    a3 = v28;
  }

  (*(v14 + 16))(v16, a3 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsReporter, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v16, v13);
  swift_getObjectType();
  sub_100246FA8(a2);
  v18 = swift_unknownObjectRelease();
  if (!a1)
  {
    return a6(v18);
  }

  v19 = (a5 + *(type metadata accessor for CustodianRecord(0) + 24));
  v20 = v19[1];
  v29 = *v19;
  v30 = v20;
  swift_errorRetain();

  v21._countAndFlagsBits = 58;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v22);

  v23 = v29;
  v24 = v30;
  v25 = swift_allocObject();
  *(v25 + 16) = a6;
  *(v25 + 24) = a7;

  sub_10031F174(v23, v24, a1, sub_1000A8B74, v25);
}

uint64_t sub_10009A630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v33 = a6;
  v34 = a7;
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v35 = *v7;
  v11 = type metadata accessor for CustodianRecord(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v29 - v18;
  (*(v17 + 16))(&v29 - v18, v8 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__custodianStorage, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v19, v16);
  sub_1000080F8(v36, v36[3]);
  v29 = *(v12 + 28);
  sub_1000A8638(a1, v15, type metadata accessor for CustodianRecord);
  v20 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v30;
  v24 = v31;
  v22[2] = v8;
  v22[3] = v23;
  v26 = v32;
  v25 = v33;
  v22[4] = v24;
  v22[5] = v26;
  v22[6] = a5;
  v22[7] = v25;
  v22[8] = v34;
  sub_1000A87BC(v15, v22 + v20, type metadata accessor for CustodianRecord);
  *(v22 + v21) = v35;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1000A620C;
  *(v27 + 24) = v22;

  sub_10001DDA4(a1 + v29, sub_100094D34, v27);

  return sub_10000839C(v36);
}

uint64_t sub_10009A934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a4;
  v9[5] = a5;

  sub_10031F804(sub_1000A5A30, v9);
}

uint64_t sub_10009A9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18[-1] - v12;
  (*(v11 + 16))(&v18[-1] - v12, a2 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__idmsHandler, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  sub_1000080F8(v18, v18[3]);
  v14 = *(a3 + 16);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a2;
  v15[4] = a1;
  v15[5] = a4;
  v15[6] = a5;

  swift_errorRetain();

  sub_10007D890(v14, sub_1000A5AB4, v15);

  return sub_10000839C(v18);
}

uint64_t sub_10009AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (!a4)
  {
    v10 = 0;
    if (!*(a2 + 16))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
  if (swift_dynamicCast())
  {
    v10 = v15;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 16))
  {
LABEL_6:
    v11 = objc_allocWithZone(type metadata accessor for CustodianOwnerRecoverabilityHealthCheckAnalyticsEvent(0)) + qword_1003E3E48;
    *v11 = 0;
    v11[1] = 0;
    sub_100005814(&unk_1003DA880, &unk_10033F5F0);
    Dependency.init(dependencyId:config:)();
    sub_100309C2C(_swiftEmptyArrayStorage);
    v12 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v13 = OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck_healthyCustodians;
    swift_beginAccess();
    sub_100249B74(*(*(a3 + v13) + 16), a1, v10);
  }

LABEL_7:

  return a5(a4);
}

uint64_t sub_10009AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9)
{
  v64 = a8;
  v65 = a2;
  v60 = a5;
  v61 = a6;
  v58 = a3;
  v59 = a4;
  v62 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v62);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v57 - v14;
  v16 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  __chkstk_darwin(v19);
  v21 = (&v57 - v20);
  sub_100012D04(a1, &v57 - v20, &unk_1003D91C0, &unk_10033FA50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    (*(v13 + 16))(v15, v65 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsEventFactory, v12);
    Dependency.wrappedValue.getter();
    (*(v13 + 8))(v15, v12);
    v23 = objc_allocWithZone(type metadata accessor for CustodianHealthCheckAnalyticsEvent(0));
    v24 = sub_100247870(0, 1);
    sub_10000839C(v66);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAB8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v57 = a7;
    v29 = v62;
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to create custodian owner health check analytics event. Aborting...", v30, 2u);
    }

    v31 = (a9 + v29[13]);
    v33 = *v31;
    v32 = v31[1];
    v34 = &v24[qword_1003E3D08];
    *v34 = v33;
    *(v34 + 1) = v32;

    v35 = (a9 + v29[15]);
    v36 = *v35;
    LOBYTE(v35) = *(v35 + 8);
    v37 = &v24[qword_1003E3D10];
    *v37 = v36;
    v37[8] = v35;
    v38 = (a9 + v29[14]);
    v40 = *v38;
    v39 = v38[1];
    v41 = &v24[qword_1003E3D18];
    *v41 = v40;
    *(v41 + 1) = v39;

    swift_getObjectType();
    _convertErrorToNSError(_:)();
    v42 = sub_1002489E0(v66);
    v44 = v43;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (v42)(v66, 0);
    sub_1002479A8(0, 0xAu);

    v45 = v63;
    sub_1000A8638(a9, v63, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v48 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v48 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v66);
      *(v48 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v50 = v63;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      sub_1000A8824(v50, type metadata accessor for CustodianRecord);
      v54 = sub_10021145C(v51, v53, v66);

      *(v48 + 14) = v54;
      *(v48 + 22) = 2112;
      v55 = _convertErrorToNSError(_:)();
      *(v48 + 24) = v55;
      *v49 = v55;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s - error fetching health check record for %s: %@", v48, 0x20u);
      sub_100008D3C(v49, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v45, type metadata accessor for CustodianRecord);
    }

    swift_errorRetain();
    v57(v22);
  }

  else
  {
    sub_1000A87BC(v21, v18, type metadata accessor for CustodianshipRecords);
    sub_10009B474(v18, v58, v59, v60, v61, a7, v64);
    return sub_1000A8824(v18, type metadata accessor for CustodianshipRecords);
  }
}

void sub_10009B474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v68 = a6;
  v69 = a7;
  v65 = a4;
  v66 = a5;
  v67 = a3;
  v10 = *v7;
  v63 = a2;
  v64 = v10;
  v11 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - v13;
  v15 = type metadata accessor for CustodianshipRecords(0);
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v61 - v19;
  v21 = type metadata accessor for CustodianRecord(0);
  if ((*(a1 + v21[9]) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    (*(v12 + 16))(v14, v8 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsEventFactory, v11);
    v61 = v8;
    Dependency.wrappedValue.getter();
    (*(v12 + 8))(v14, v11);
    v22 = a1 + *(v15 + 24);
    v23 = v22 + *(type metadata accessor for CustodianHealthRecord(0) + 40);
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = objc_allocWithZone(type metadata accessor for CustodianHealthCheckAnalyticsEvent(0));
    v27 = sub_100247870(v24, v25);
    sub_10000839C(v70);
    *&v27[qword_1003E3D00] = sub_1000EBCF0();
    v28 = (a1 + v21[13]);
    v30 = *v28;
    v29 = v28[1];
    v31 = &v27[qword_1003E3D08];
    *v31 = v30;
    *(v31 + 1) = v29;

    v32 = (a1 + v21[15]);
    v33 = *v32;
    LOBYTE(v32) = *(v32 + 8);
    v34 = &v27[qword_1003E3D10];
    *v34 = v33;
    v34[8] = v32;
    v35 = (a1 + v21[14]);
    v37 = *v35;
    v36 = v35[1];
    v38 = &v27[qword_1003E3D18];
    *v38 = v37;
    *(v38 + 1) = v36;

    v39 = swift_allocObject();
    swift_weakInit();
    sub_1000A8638(a1, v18, type metadata accessor for CustodianshipRecords);
    v40 = (*(v62 + 80) + 40) & ~*(v62 + 80);
    v41 = (v16 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v44[2] = v27;
    v44[3] = &off_1003B0CC8;
    v44[4] = v39;
    sub_1000A87BC(v18, v44 + v40, type metadata accessor for CustodianshipRecords);
    v45 = (v44 + v41);
    v46 = v66;
    v47 = v67;
    *v45 = v63;
    v45[1] = v47;
    v48 = (v44 + v42);
    *v48 = v65;
    v48[1] = v46;
    v49 = (v44 + v43);
    v50 = v69;
    *v49 = v68;
    v49[1] = v50;
    *(v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8)) = v64;

    v51 = v27;

    sub_10009CCBC(a1, sub_1000A66D0, v44);
  }

  else
  {
    v52 = v68;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100008D04(v53, qword_1003FAAB8);
    sub_1000A8638(a1, v20, type metadata accessor for CustodianshipRecords);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v56 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v56 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v70);
      *(v56 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      sub_1000A8824(v20, type metadata accessor for CustodianshipRecords);
      v60 = sub_10021145C(v57, v59, v70);

      *(v56 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "%s - custodian %s does not require a health check, ending check early.", v56, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v20, type metadata accessor for CustodianshipRecords);
    }

    v52(0);
  }
}

void sub_10009BAF0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12)
{
  v84 = a7;
  v85 = a5;
  v87 = a4;
  v88 = a3;
  v86 = a9;
  v78 = sub_100005814(&qword_1003DA138, &unk_10033F2A0);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v73 - v16;
  v76 = type metadata accessor for CustodianshipRecords(0);
  v81 = *(v76 - 8);
  v17 = __chkstk_darwin(v76);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v18;
  __chkstk_darwin(v17);
  v83 = &v73 - v20;
  v21 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v73 - v23;
  if (a2)
  {
    LODWORD(v74) = a1;
    v79 = v22;
    v80 = v19;
    v25 = a8;
    ObjectType = swift_getObjectType();
    swift_errorRetain();
    _convertErrorToNSError(_:)();
    v27 = (*(v87 + 104))(v89, ObjectType);
    v29 = v28;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v27(v89, 0);

    a8 = v25;
    v22 = v79;
    v19 = v80;
    LOBYTE(a1) = v74;
  }

  v80 = a12;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v31 = Strong;
    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v79 = a11;
    v32 = kAAAnalyticsEventCustodianHealthCheckOwnerConfirmCustodianWithServer;

    v33 = v32;

    v34 = sub_100245D38(v33, v84, a8, v86, a10);
    (*(v22 + 16))(v24, v31 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__idmsHandler, v21);
    Dependency.wrappedValue.getter();
    (*(v22 + 8))(v24, v21);
    sub_1000080F8(v89, v90);
    v85 = *(type metadata accessor for CustodianRecord(0) + 20);
    v35 = v83;
    sub_1000A8638(a6, v83, type metadata accessor for CustodianshipRecords);
    v36 = (*(v81 + 80) + 48) & ~*(v81 + 80);
    v37 = a6;
    v38 = (v82 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    v39[2] = v34;
    v39[3] = v31;
    v40 = v87;
    v39[4] = v88;
    v39[5] = v40;
    sub_1000A87BC(v35, v39 + v36, type metadata accessor for CustodianshipRecords);
    v41 = (v39 + v38);
    v42 = v80;
    *v41 = v79;
    v41[1] = v42;
    v43 = v34;

    swift_unknownObjectRetain();

    sub_10007E4E8(v37 + v85, v86, a10, sub_1000A6F40, v39);

    goto LABEL_17;
  }

  v79 = a11;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100008D04(v44, qword_1003FAAB8);
  sub_1000A8638(a6, v19, type metadata accessor for CustodianshipRecords);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = v19;
    v74 = a8;
    v48 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v48 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v48 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v89);
    *(v48 + 12) = 2080;
    type metadata accessor for CustodianRecord(0);
    type metadata accessor for UUID();
    sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    sub_1000A8824(v47, type metadata accessor for CustodianshipRecords);
    v52 = sub_10021145C(v49, v51, v89);

    *(v48 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s - marking custodian %s as not reachable, and attempting to re-share.", v48, 0x16u);
    swift_arrayDestroy();

    a8 = v74;
  }

  else
  {

    sub_1000A8824(v19, type metadata accessor for CustodianshipRecords);
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v53 = kAAAnalyticsEventCustodianHealthCheckOwnerSendRecoveryInfoMessage;

  v54 = v53;

  v55 = sub_100245D38(v54, v84, a8, v86, a10);
  swift_beginAccess();
  v56 = swift_weakLoadStrong();
  if (v56)
  {
    v57 = v77;
    v58 = v80;
    v59 = v75;
    v60 = v78;
    (*(v77 + 16))(v75, v56 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__keyRepair, v78);
    Dependency.wrappedValue.getter();

    (*(v57 + 8))(v59, v60);
    sub_1000080F8(v89, v90);
    v86 = *(v76 + 20);
    v61 = (a6 + *(type metadata accessor for CustodianRecord(0) + 24));
    v63 = *v61;
    v62 = v61[1];
    v84 = v63;
    v78 = v62;
    v64 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    v65 = a6;
    swift_weakInit();

    v66 = v83;
    sub_1000A8638(a6, v83, type metadata accessor for CustodianshipRecords);
    v67 = (*(v81 + 80) + 48) & ~*(v81 + 80);
    v68 = (v82 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    v69[2] = v55;
    v69[3] = v64;
    v70 = v87;
    v69[4] = v88;
    v69[5] = v70;
    sub_1000A87BC(v66, v69 + v67, type metadata accessor for CustodianshipRecords);
    v71 = (v69 + v68);
    *v71 = v79;
    v71[1] = v58;
    v72 = v55;

    swift_unknownObjectRetain();

    sub_10008742C(v65 + v86, v84, v78, sub_1000A6B70, v69);

LABEL_17:
    sub_10000839C(v89);
    return;
  }
}

uint64_t sub_10009C4BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  if (a2)
  {
    if (a1)
    {
      v17 = _convertErrorToNSError(_:)();
    }

    else
    {
      v17 = 0;
    }

    [a2 updateTaskResultWithError:v17];
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v14 + 16))(v16, Strong + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsReporter, v13);
    Dependency.wrappedValue.getter();

    (*(v14 + 8))(v16, v13);
    swift_getObjectType();
    sub_100246FA8(a2);
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    ObjectType = swift_getObjectType();
    swift_errorRetain();
    _convertErrorToNSError(_:)();
    v20 = (*(a5 + 104))(v27, ObjectType, a5);
    v22 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20(v27, 0);
  }

  *(a4 + qword_1003E3CF0) = a1 == 0;
  sub_1002479A8(0, 7u);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009C77C(a6, v25, v26);
  }

  return result;
}

uint64_t sub_10009C77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v41 = a3;
  v39 = *v3;
  v6 = type metadata accessor for CustodianRecord(0);
  v36 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v37 = v7;
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CustodianshipRecords(0);
  __chkstk_darwin(v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAB8);
  sub_1000A8638(a1, v14, type metadata accessor for CustodianshipRecords);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v34 = v3;
    v35 = a1;
    v18 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v18 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v18 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v42);
    *(v18 + 12) = 2080;
    type metadata accessor for CustodianHealthRecord(0);
    type metadata accessor for UUID();
    sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_1000A8824(v14, type metadata accessor for CustodianshipRecords);
    v22 = sub_10021145C(v19, v21, v42);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s - custodian %s is being marked as Not reachable.", v18, 0x16u);
    swift_arrayDestroy();

    v4 = v34;
    a1 = v35;
  }

  else
  {

    sub_1000A8824(v14, type metadata accessor for CustodianshipRecords);
  }

  (*(v9 + 16))(v11, v4 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__storageController, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  v23 = sub_1000080F8(v42, v42[3]);
  v24 = v38;
  sub_1000A8638(a1, v38, type metadata accessor for CustodianRecord);
  v25 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v26 = (v37 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1000A87BC(v24, v28 + v25, type metadata accessor for CustodianRecord);
  *(v28 + v26) = 3;
  v29 = (v28 + v27);
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;
  v31 = *v23;

  sub_10030B9F8(a1, 0, sub_1000A8BB8, v28, v31, 3);

  return sub_10000839C(v42);
}

uint64_t sub_10009CCBC(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v39 = *v3;
  v5 = type metadata accessor for CustodianHealthRecord(0);
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for CustodianshipRecords(0);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  (*(v14 + 16))(&v36 - v15, v4 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__cloudStorage, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v16, v13);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  if (swift_dynamicCast())
  {
    sub_10003E950(v44, v46);
    v17 = sub_1000080F8(v46, v46[3]);
    v37 = *(v10 + 24);
    v18 = v41;
    sub_1000A8638(v41, &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipRecords);
    v19 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    sub_1000A87BC(v12, v21 + v19, type metadata accessor for CustodianshipRecords);
    v22 = (v21 + v20);
    v23 = v43;
    *v22 = v42;
    v22[1] = v23;
    *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;
    v24 = *v17;
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    sub_1000A8638(v18 + v37, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianHealthRecord);
    v26 = (*(v40 + 80) + 40) & ~*(v40 + 80);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v24;
    sub_1000A87BC(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for CustodianHealthRecord);
    v28 = (v27 + ((v6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = sub_1000A67C0;
    v28[1] = v21;

    sub_1000BCD5C(0, 0, v9, &unk_10033FA70, v27);

    return sub_10000839C(v46);
  }

  else
  {
    v30 = v42;
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_100008D3C(v44, &unk_1003DB050, &qword_10033FA60);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAB8);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v46[0] = v35;
      *v34 = 136315138;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v46);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s - isSharedAndAccepted unable to obtain pointer to CloudKitSharing", v34, 0xCu);
      sub_10000839C(v35);
    }

    return v30(1, 0);
  }
}

uint64_t sub_10009D2CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v33 = a7;
  v34 = a8;
  v14 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  if (a2)
  {
    if (a1)
    {
      v18 = _convertErrorToNSError(_:)();
    }

    else
    {
      v18 = 0;
    }

    [a2 updateTaskResultWithError:{v18, v33, v34}];
  }

  (*(v15 + 16))(v17, a3 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__analyticsReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v17, v14);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  if (a1)
  {
    ObjectType = swift_getObjectType();
    swift_errorRetain();
    _convertErrorToNSError(_:)();
    v20 = (*(a5 + 104))(v35, ObjectType, a5);
    v22 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20(v35, 0);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAB8);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {

      return sub_10009D6F0(a6, a4, a5, v33, v34);
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v24, v25, "Finished confirmCustodianWithIdMS with error %@", v26, 0xCu);
    sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAB8);
    v24 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v24, v30, "Finished confirmCustodianWithIdMS successfully", v31, 2u);
    }
  }

  return sub_10009D6F0(a6, a4, a5, v33, v34);
}

uint64_t sub_10009D6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v89 = a4;
  v90 = a5;
  v85 = a3;
  v87 = a2;
  v86 = type metadata accessor for UUID();
  v84 = *(v86 - 8);
  v6 = __chkstk_darwin(v86);
  v83 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v78 - v8;
  v9 = type metadata accessor for CustodianshipRecords(0);
  v80 = *(v9 - 8);
  v10 = *(v80 + 64);
  v11 = __chkstk_darwin(v9);
  v12 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v78 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v78 - v17;
  v19 = __chkstk_darwin(v16);
  v79 = &v78 - v20;
  __chkstk_darwin(v19);
  v22 = &v78 - v21;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v9;
  v91 = a1;
  v78 = type metadata accessor for CustodianHealthRecord(0);
  Date.init(timeIntervalSince1970:)();
  sub_1000A7564(&qword_1003DB600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v24 + 8))(v26, v23);
  if (a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAB8);
    v28 = v91;
    sub_1000A8638(v91, v12, type metadata accessor for CustodianshipRecords);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v86;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v33 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v92);
      *(v33 + 12) = 2080;
      type metadata accessor for CustodianRecord(0);
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1000A8824(v12, type metadata accessor for CustodianshipRecords);
      v37 = sub_10021145C(v34, v36, v92);

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s - custodian %s hasn't updated to a version that has Health Check enabled. Skipping validation of recipient updated attributes.", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v12, type metadata accessor for CustodianshipRecords);
    }

    v47 = type metadata accessor for CustodianRecord(0);
    v49 = v83;
    v48 = v84;
    (*(v84 + 16))(v83, v28 + *(v47 + 20), v32);
    swift_beginAccess();
    v50 = v82;
    sub_1002FB030(v82, v49);
    (*(v48 + 8))(v50, v32);
    swift_endAccess();
    sub_1002479A8(1, 0);
    return v89(0);
  }

  else if (sub_1000EBEB4())
  {
    v38 = v91;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAAB8);
    sub_1000A8638(v38, v22, type metadata accessor for CustodianshipRecords);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v42 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v42 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v92);
      *(v42 + 12) = 2080;
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      sub_1000A8824(v22, type metadata accessor for CustodianshipRecords);
      v46 = sub_10021145C(v43, v45, v92);

      *(v42 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s - custodian %s is reachable, continue health check.", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v22, type metadata accessor for CustodianshipRecords);
    }

    v65 = v79;
    sub_1000A8638(v38, v79, type metadata accessor for CustodianshipRecords);
    v66 = (*(v80 + 80) + 40) & ~*(v80 + 80);
    v67 = (v10 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    v69 = v88;
    v70 = v85;
    v68[2] = v87;
    v68[3] = v70;
    v68[4] = v69;
    sub_1000A87BC(v65, v68 + v66, type metadata accessor for CustodianshipRecords);
    v71 = (v68 + v67);
    v72 = v90;
    *v71 = v89;
    v71[1] = v72;
    swift_unknownObjectRetain();

    sub_10009F630(v38, sub_1000A73C4, v68);
  }

  else
  {
    v52 = v91;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100008D04(v53, qword_1003FAAB8);
    sub_1000A8638(v52, v18, type metadata accessor for CustodianshipRecords);
    sub_1000A8638(v52, v15, type metadata accessor for CustodianshipRecords);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      LODWORD(v84) = v55;
      v56 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v92[0] = v83;
      *v56 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v56 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v92);
      *(v56 + 12) = 2080;
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      sub_1000A8824(v18, type metadata accessor for CustodianshipRecords);
      v60 = sub_10021145C(v57, v59, v92);

      *(v56 + 14) = v60;
      *(v56 + 22) = 2080;
      sub_1000A7564(&qword_1003DB608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      sub_1000A8824(v15, type metadata accessor for CustodianshipRecords);
      v64 = sub_10021145C(v61, v63, v92);

      *(v56 + 24) = v64;
      _os_log_impl(&_mh_execute_header, v54, v84, "%s - custodian %s last check in was %s, marking as not reachable.", v56, 0x20u);
      swift_arrayDestroy();

      v52 = v91;
    }

    else
    {

      sub_1000A8824(v15, type metadata accessor for CustodianshipRecords);
      sub_1000A8824(v18, type metadata accessor for CustodianshipRecords);
    }

    ObjectType = swift_getObjectType();
    type metadata accessor for AACustodianError(0);
    v92[0] = -7016;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000A7564(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v74 = v92[4];
    _convertErrorToNSError(_:)();

    v75 = (*(v85 + 104))(v92, ObjectType);
    v77 = v76;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v75(v92, 0);
    sub_1002479A8(0, 8u);
    return sub_10009E400(v52, v89, v90);
  }
}

uint64_t sub_10009E400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v46 = *v3;
  v6 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v6 - 8);
  v45 = &v40 - v7;
  v8 = type metadata accessor for CustodianRecord(0);
  v9 = v8 - 8;
  v42 = *(v8 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v8);
  v11 = sub_100005814(&qword_1003DB620, &unk_10033FAA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  updated = type metadata accessor for CustodianStatusUpdateRequest(0);
  v16 = (updated - 8);
  v44 = *(updated - 8);
  v43 = *(v44 + 64);
  v17 = __chkstk_darwin(updated);
  v41 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v40 - v19;
  v21 = *(v9 + 28);
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 16))(v20, a1 + v21, v22);
  *&v20[v16[7]] = 3;
  v20[v16[8]] = 1;
  v20[v16[9]] = 1;
  v23 = &v20[v16[10]];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v20[v16[11]] = 0;
  v24 = &v20[v16[12]];
  *v24 = 0;
  v24[8] = 1;
  (*(v12 + 16))(v14, v4 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__statusUpdater, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v14, v11);
  v25 = sub_1000080F8(v49, v49[3]);
  sub_1000A8638(a1, &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
  v26 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_1000A87BC(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v26, type metadata accessor for CustodianRecord);
  v29 = (v28 + v27);
  v30 = v48;
  *v29 = v47;
  v29[1] = v30;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v31 = *v25;
  v32 = type metadata accessor for TaskPriority();
  v33 = v45;
  (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
  v34 = v41;
  sub_1000A8638(v20, v41, type metadata accessor for CustodianStatusUpdateRequest);
  v35 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v36 = (v43 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  sub_1000A87BC(v34, v37 + v35, type metadata accessor for CustodianStatusUpdateRequest);
  *(v37 + v36) = v31;
  v38 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v38 = sub_1000A8548;
  v38[1] = v28;

  sub_1000BCD5C(0, 0, v33, &unk_10033F360, v37);

  sub_1000A8824(v20, type metadata accessor for CustodianStatusUpdateRequest);
  return sub_10000839C(v49);
}

void sub_10009E92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  if (a1)
  {
    v15 = a7;
    ObjectType = swift_getObjectType();
    swift_errorRetain();
    _convertErrorToNSError(_:)();
    v12 = (*(a3 + 104))(v16, ObjectType, a3);
    v14 = v13;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12(v16, 0);

    a7 = v15;
  }

  sub_10009EA58(a5, a2, a3, a6, a7);
}

void sub_10009EA58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v90 = a4;
  v84 = a3;
  v10 = type metadata accessor for CustodianshipRecords(0);
  v81 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v86 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v82 = v15;
  v83 = &v74 - v14;
  __chkstk_darwin(v13);
  v85 = &v74 - v16;
  v17 = type metadata accessor for SHA256Digest();
  v88 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SHA256();
  v87 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v74 - v24;
  v89 = v10;
  v26 = a1 + *(v10 + 20);
  v27 = (v26 + *(type metadata accessor for CustodianRecoveryInfoRecord(0) + 32));
  v28 = v27[1];
  if (v28 >> 60 == 15)
  {
    sub_1002479A8(0, 5u);
    type metadata accessor for AACustodianError(0);
    v91 = -7028;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000A7564(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = v93[0];
    v90(v93[0]);
LABEL_16:

    return;
  }

  v79 = a2;
  v80 = a5;
  v75 = v6;
  v76 = a1;
  v30 = *v27;
  v31 = v28;
  sub_100015D6C(*v27, v28);
  SHA256.init()();
  sub_1000A7564(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100015D6C(v30, v31);
  sub_10018F16C(v30, v31, v23);
  v77 = v30;
  v78 = v31;
  sub_100015D58(v30, v31);
  dispatch thunk of HashFunction.finalize()();
  v32 = *(v87 + 8);
  v32(v23, v20);
  v94 = v17;
  v95 = sub_1000A7564(&qword_1003D8D70, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v33 = sub_10000DBEC(v93);
  v34 = v88;
  (*(v88 + 16))(v33, v19, v17);
  sub_1000080F8(v93, v94);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v34 + 8))(v19, v17);
  v36 = v91;
  v35 = v92;
  sub_10000839C(v93);
  v32(v25, v20);
  v37 = v76;
  v38 = v76 + *(v89 + 24);
  v39 = (v38 + *(type metadata accessor for CustodianHealthRecord(0) + 28));
  v41 = *v39;
  v40 = v39[1];
  if (v35 >> 60 != 15)
  {
    v42 = v79;
    if (v40 >> 60 != 15)
    {
      sub_100052704(v41, v40);
      sub_100015D6C(v36, v35);
      v54 = sub_10018F69C(v36, v35, v41, v40);
      sub_100015D58(v41, v40);
      sub_100012324(v36, v35);
      sub_100015D58(v36, v35);
      v43 = v90;
      if (v54)
      {
        goto LABEL_18;
      }

LABEL_8:
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100008D04(v44, qword_1003FAAB8);
      v45 = v86;
      sub_1000A8638(v37, v86, type metadata accessor for CustodianshipRecords);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v48 = 136315394;
        if (qword_1003D7DD8 != -1)
        {
          swift_once();
        }

        *(v48 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v93);
        *(v48 + 12) = 2080;
        type metadata accessor for UUID();
        sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v49 = v86;
        v50 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v51;
        sub_1000A8824(v49, type metadata accessor for CustodianshipRecords);
        v53 = sub_10021145C(v50, v52, v93);

        *(v48 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v46, v47, "%s - checksum is invalid for %s, no action taken at the moment.", v48, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000A8824(v45, type metadata accessor for CustodianshipRecords);
      }

      *(v42 + qword_1003E3CF0) = 1;
      sub_1002479A8(0, 6u);
      type metadata accessor for AACustodianError(0);
      v91 = -7015;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1000A7564(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v29 = v93[0];
      v43(v93[0]);
      sub_100015D58(v77, v78);
      goto LABEL_16;
    }

LABEL_7:
    sub_100052704(v41, v40);
    sub_100015D58(v36, v35);
    sub_100015D58(v41, v40);
    v43 = v90;
    goto LABEL_8;
  }

  v42 = v79;
  if (v40 >> 60 != 15)
  {
    goto LABEL_7;
  }

  sub_100052704(v41, v40);
  sub_100015D58(v36, v35);
  v43 = v90;
LABEL_18:
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100008D04(v55, qword_1003FAAB8);
  v56 = v85;
  sub_1000A8638(v37, v85, type metadata accessor for CustodianshipRecords);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v59 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v59 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v93);
    *(v59 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v60 = v85;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    sub_1000A8824(v60, type metadata accessor for CustodianshipRecords);
    v64 = sub_10021145C(v61, v63, v93);

    *(v59 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v57, v58, "%s - custodian %s recovery key checksum is valid.", v59, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000A8824(v56, type metadata accessor for CustodianshipRecords);
  }

  v65 = v83;
  sub_1000A8638(v37, v83, type metadata accessor for CustodianshipRecords);
  v66 = (*(v81 + 80) + 24) & ~*(v81 + 80);
  v67 = v37;
  v68 = (v82 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  *(v69 + 16) = v75;
  sub_1000A87BC(v65, v69 + v66, type metadata accessor for CustodianshipRecords);
  v70 = (v69 + v68);
  v71 = v84;
  *v70 = v42;
  v70[1] = v71;
  v72 = (v69 + ((v68 + 23) & 0xFFFFFFFFFFFFFFF8));
  v73 = v80;
  *v72 = v43;
  v72[1] = v73;

  swift_unknownObjectRetain();

  sub_1000A20F8(v67, sub_1000A75B0, v69);
  sub_100015D58(v77, v78);
}

uint64_t sub_10009F630(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v66 = a2;
  v67 = a3;
  v5 = *v3;
  v6 = type metadata accessor for CustodianRecord(0);
  v7 = v6 - 8;
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = v8;
  v9 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v62 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v55[-v11];
  v61 = type metadata accessor for CustodianshipRecords(0);
  v13 = *(*(v61 - 8) + 64);
  v14 = __chkstk_darwin(v61);
  v15 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v55[-v17];
  __chkstk_darwin(v16);
  v21 = &v55[-v20];
  if (*(a1 + *(v7 + 44)) == 3)
  {
    v58 = v19;
    v60 = v5;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v59 = v9;
    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    sub_1000A8638(a1, v21, type metadata accessor for CustodianshipRecords);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v56 = v24;
      v57 = a1;
      v25 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v25 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v68);
      *(v25 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_1000A8824(v21, type metadata accessor for CustodianshipRecords);
      v29 = sub_10021145C(v26, v28, v68);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v23, v56, "%s - custodian %s was marked as unreachable, marking as accepted again.", v25, 0x16u);
      swift_arrayDestroy();

      a1 = v57;
    }

    else
    {

      sub_1000A8824(v21, type metadata accessor for CustodianshipRecords);
    }

    sub_1000A8638(a1, v18, type metadata accessor for CustodianshipRecords);
    v38 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v39 = a1;
    v40 = (v13 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_1000A87BC(v18, v41 + v38, type metadata accessor for CustodianshipRecords);
    v42 = (v41 + v40);
    v43 = v67;
    *v42 = v66;
    v42[1] = v43;
    v44 = v60;
    *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v60;
    v45 = v62;
    (*(v62 + 16))(v12, v63 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__storageController, v10);

    Dependency.wrappedValue.getter();
    (*(v45 + 8))(v12, v10);
    v46 = sub_1000080F8(v68, v68[3]);
    v47 = v59;
    sub_1000A8638(v39, v59, type metadata accessor for CustodianRecord);
    v48 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v49 = (v65 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    sub_1000A87BC(v47, v51 + v48, type metadata accessor for CustodianRecord);
    *(v51 + v49) = 2;
    v52 = (v51 + v50);
    *v52 = sub_1000A74B0;
    v52[1] = v41;
    *(v51 + ((v50 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
    v53 = *v46;

    sub_10030B9F8(v39, 0, sub_1000A7560, v51, v53, 2);

    return sub_10000839C(v68);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAB8);
    sub_1000A8638(a1, v15, type metadata accessor for CustodianshipRecords);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v33 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v68);
      *(v33 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1000A8824(v15, type metadata accessor for CustodianshipRecords);
      v37 = sub_10021145C(v34, v36, v68);

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - custodian %s status is not unreachable, bailing.", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v15, type metadata accessor for CustodianshipRecords);
    }

    return v66(0);
  }
}

uint64_t sub_10009FF00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = type metadata accessor for CustodianshipRecords(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_1000A8638(a2, v11, type metadata accessor for CustodianshipRecords);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v31 = a3;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v15 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v32);
      *(v15 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_1000A8824(v11, type metadata accessor for CustodianshipRecords);
      v20 = sub_10021145C(v17, v19, &v32);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2112;
      v21 = _convertErrorToNSError(_:)();
      *(v15 + 24) = v21;
      *v16 = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - failed to mark custodian %s as accepted. Error: %@", v15, 0x20u);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      a3 = v31;
    }

    else
    {

      sub_1000A8824(v11, type metadata accessor for CustodianshipRecords);
    }

    swift_errorRetain();
    a3(a1);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    sub_1000A8638(a2, v9, type metadata accessor for CustodianshipRecords);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v25 = 136315394;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v32);
      *(v25 + 12) = 2080;
      type metadata accessor for CustodianHealthRecord(0);
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_1000A8824(v9, type metadata accessor for CustodianshipRecords);
      v29 = sub_10021145C(v26, v28, &v32);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - successfully marked custodian %s as accepted.", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v9, type metadata accessor for CustodianshipRecords);
    }

    return (a3)(0);
  }
}

uint64_t sub_1000A04D8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v136 = a2;
  v5 = type metadata accessor for Date.ISO8601FormatStyle();
  v124 = *(v5 - 8);
  v125 = v5;
  __chkstk_darwin(v5);
  v123 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v140 = *(v7 - 8);
  __chkstk_darwin(v7);
  v122 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v121 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v13 = __chkstk_darwin(v12 - 8);
  v138 = (&v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = &v117 - v15;
  v17 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v18 = __chkstk_darwin(v17 - 8);
  v134 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v117 - v20;
  v22 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v22);
  v24 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A8638(a1, v24, type metadata accessor for CustodianRecord);
  v25 = *(v10 + 56);
  v139 = v21;
  v25(v21, 1, 1, v9);
  v26 = *(v140 + 56);
  v132 = v16;
  v133 = v7;
  v26(v16, 1, 1, v7);
  v27 = (a3 + v22[7]);
  *v27 = 0;
  v27[1] = 0;
  v126 = v27;
  v28 = (a3 + v22[8]);
  *v28 = 0;
  v28[1] = 0;
  v127 = v28;
  v29 = (a3 + v22[13]);
  *v29 = 0;
  v29[1] = 0;
  v129 = v29;
  v30 = (a3 + v22[14]);
  *v30 = 0;
  v30[1] = 0;
  v130 = v30;
  v31 = a3 + v22[15];
  *v31 = 0;
  v131 = v31;
  *(v31 + 8) = 1;
  v128 = v22[16];
  v120 = v10 + 56;
  v119 = v25;
  v25((a3 + v128), 1, 1, v9);
  v137 = v10;
  v32 = *(v10 + 16);
  v32(a3, v24, v9);
  v33 = v22[5];
  v135 = v9;
  v32(a3 + v33, &v24[v33], v9);
  v34 = v22[11];
  v35 = *&v24[v34];
  v36 = *&v24[v34 + 8];
  v37 = (a3 + v34);
  *v37 = v35;
  v37[1] = v36;
  v38 = v22[6];
  v39 = *&v24[v38];
  v40 = *&v24[v38 + 8];
  v41 = (a3 + v38);
  *v41 = v39;
  v41[1] = v40;
  *(a3 + v22[9]) = v136;
  v42 = v22[10];
  v44 = *&v24[v42];
  v43 = *&v24[v42 + 8];
  v45 = (a3 + v42);
  *v45 = v44;
  v45[1] = v43;
  v46 = v22[12];
  v136 = v24;
  *(a3 + v46) = v24[v46];
  type metadata accessor for ContactsHelper(0);
  swift_allocObject();

  sub_100015D6C(v35, v36);
  sub_100052704(v44, v43);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v47 = v141;
  v48 = String._bridgeToObjectiveC()();
  v49 = [v47 contactForHandle:v48];

  swift_unknownObjectRelease();
  if (!v49)
  {

    sub_1000EF4CC();
    v53 = 0;
    v55 = v133;
LABEL_18:
    v56 = v135;
    v58 = v136;
    goto LABEL_22;
  }

  v50 = objc_allocWithZone(AALocalContactInfo);
  v51 = v49;
  v52 = String._bridgeToObjectiveC()();
  v53 = [v50 initWithHandle:v52 contact:v51];

  v54 = sub_1000EF4CC();
  v55 = v133;
  v56 = v135;
  if ((v54 & 1) == 0)
  {
    v58 = v136;
    goto LABEL_22;
  }

  v58 = v136;
  v57 = v137;
  v59 = v138;
  if (!v53)
  {
LABEL_24:
    v81 = (v58 + v22[7]);
    v82 = *v81;
    v83 = v81[1];
    v84 = v126;
    *v126 = v82;
    v84[1] = v83;
    v85 = (v58 + v22[8]);
    v87 = *v85;
    v86 = v85[1];
    v88 = v127;
    *v127 = v87;
    v88[1] = v86;

    v78 = v134;
    goto LABEL_25;
  }

  v53 = v53;
  v60 = [v53 firstName];
  if (!v60)
  {

    goto LABEL_24;
  }

  v61 = v60;
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v65 = sub_1002576F0(v62, v64);
  v67 = v66;

  if (!v67)
  {
LABEL_22:
    v59 = v138;
    goto LABEL_23;
  }

  v53 = v53;
  v68 = [v53 lastName];
  if (!v68)
  {

    goto LABEL_22;
  }

  v69 = v68;
  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  v73 = sub_1002576F0(v70, v72);
  v75 = v74;

  if (!v75)
  {

    goto LABEL_18;
  }

  v118 = v73;
  v56 = v135;
  v76 = &v136[v22[7]];
  v77 = *(v76 + 1);
  v59 = v138;
  v78 = v134;
  if (v77 && (*v76 == v65 && v77 == v67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v79 = &v136[v22[8]], (v80 = *(v79 + 1)) != 0) && (*v79 == v118 && v80 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v58 = v136;
LABEL_23:
    v57 = v137;
    goto LABEL_24;
  }

  v116 = v126;
  v115 = v127;
  *v126 = v65;
  v116[1] = v67;
  *v115 = v118;
  v115[1] = v75;
  v58 = v136;
  v57 = v137;
LABEL_25:
  sub_100012D04(v139, v78, &qword_1003D8B60, &unk_10033F210);
  if ((*(v57 + 48))(v78, 1, v56) == 1)
  {
    sub_100008D3C(v78, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v58 + v22[16], a3 + v128);
  }

  else
  {
    v89 = *(v57 + 32);
    v90 = v121;
    v89(v121, v78, v56);
    v138 = v22;
    v91 = v58;
    v92 = v59;
    v93 = v53;
    v94 = v55;
    v95 = v128;
    sub_100008D3C(a3 + v128, &qword_1003D8B60, &unk_10033F210);
    v89((a3 + v95), v90, v56);
    v96 = (a3 + v95);
    v55 = v94;
    v53 = v93;
    v59 = v92;
    v58 = v91;
    v22 = v138;
    v119(v96, 0, 1, v56);
  }

  v97 = (v58 + v22[13]);
  v98 = *v97;
  v99 = v97[1];
  v100 = v129;
  *v129 = v98;
  v100[1] = v99;
  v101 = v132;
  sub_100012D04(v132, v59, &qword_1003DA110, &qword_10033F230);
  v102 = v140;
  if ((*(v140 + 48))(v59, 1, v55) == 1)
  {

    sub_100008D3C(v101, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v139, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v59, &qword_1003DA110, &qword_10033F230);
    v103 = (v58 + v22[14]);
    v104 = *v103;
    v105 = v103[1];
  }

  else
  {
    v106 = v122;
    (*(v102 + 32))(v122, v59, v55);

    v107 = v123;
    sub_100195ACC(v123);
    v104 = Date.ISO8601Format(_:)();
    v105 = v108;

    (*(v124 + 8))(v107, v125);
    (*(v102 + 8))(v106, v55);
    sub_100008D3C(v101, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v139, &qword_1003D8B60, &unk_10033F210);
  }

  v109 = v130;
  *v130 = v104;
  v109[1] = v105;
  v110 = v58 + v22[15];
  v111 = *v110;
  v112 = *(v110 + 8);
  result = sub_1000A8824(v58, type metadata accessor for CustodianRecord);
  v114 = v131;
  *v131 = v111;
  *(v114 + 8) = v112;
  return result;
}

uint64_t sub_1000A0F80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v30 = a4;
  v7 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v10);
  v12 = (&v30 - v11);
  sub_100012D04(a1, &v30 - v11, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v17 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v17 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v31);
      *(v17 + 12) = 2048;
      *(v17 + 14) = a3;
      *(v17 + 22) = 2112;
      v20 = _convertErrorToNSError(_:)();
      *(v17 + 24) = v20;
      *v18 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s - error marking custodian record with status %ld: %@", v17, 0x20u);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v19);
    }

    swift_errorRetain();
    v30(v13);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    sub_1000A8638(a2, v9, type metadata accessor for CustodianRecord);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v25 = 136315650;
      if (qword_1003D7DD8 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, &v31);
      *(v25 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1000A7564(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_1000A8824(v9, type metadata accessor for CustodianRecord);
      v29 = sub_10021145C(v26, v28, &v31);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2048;
      *(v25 + 24) = a3;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - custodian %s has been updated with status %ld.", v25, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000A8824(v9, type metadata accessor for CustodianRecord);
    }

    [objc_opt_self() postRecoveryContactChangedNotification];
    v30(0);
    return sub_100008D3C(v12, &unk_1003DA200, &unk_10033FA80);
  }
}

uint64_t sub_1000A14EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v11 = type metadata accessor for CustodianshipRecords(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A8638(a2, v14, type metadata accessor for CustodianshipRecords);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_1000A87BC(v14, v17 + v15, type metadata accessor for CustodianshipRecords);
  v18 = (v17 + v16);
  *v18 = a3;
  v18[1] = a4;
  v19 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v22;
  v19[1] = a6;

  swift_unknownObjectRetain();

  sub_1000A1C08(a2, sub_1000A7A3C, v17);
}

uint64_t sub_1000A1688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v50 = a5;
  v46 = a3;
  v47 = a4;
  v45 = *v5;
  v7 = type metadata accessor for UUID();
  v51 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = type metadata accessor for CustodianshipRecords(0);
  v43 = *(v13 - 8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v15;
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA88);
  sub_1000A8638(a1, v18, type metadata accessor for CustodianshipRecords);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  v22 = os_log_type_enabled(v20, v21);
  v53 = v7;
  if (v22)
  {
    v41 = v9;
    v42 = a1;
    v23 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v23 = 136315394;
    if (qword_1003D7DD8 != -1)
    {
      swift_once();
    }

    *(v23 + 4) = sub_10021145C(qword_1003DB170, *algn_1003DB178, v54);
    *(v23 + 12) = 2080;
    v24 = sub_1000A92F8();
    v26 = v25;
    sub_1000A8824(v18, type metadata accessor for CustodianshipRecords);
    v27 = sub_10021145C(v24, v26, v54);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s - Checking CRK presence on Octagon for %s", v23, 0x16u);
    swift_arrayDestroy();

    v9 = v41;
    a1 = v42;
  }

  else
  {

    sub_1000A8824(v18, type metadata accessor for CustodianshipRecords);
  }

  v28 = v52;
  (*(v10 + 16))(v12, v52 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__securityController, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v12, v9);
  sub_1000080F8(v54, v54[3]);
  v29 = v48;
  sub_1000A8E58(v48);
  sub_1000A8638(a1, v16, type metadata accessor for CustodianshipRecords);
  v30 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v31 = (v44 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_1000A87BC(v16, v34 + v30, type metadata accessor for CustodianshipRecords);
  v35 = (v34 + v31);
  v36 = v50;
  v38 = v46;
  v37 = v47;
  *v35 = v49;
  v35[1] = v38;
  v39 = (v34 + v32);
  *v39 = v37;
  v39[1] = v36;
  *(v34 + v33) = v28;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
  swift_unknownObjectRetain();

  sub_100018104(v29, sub_1000A8278, v34);

  (*(v51 + 8))(v29, v53);
  return sub_10000839C(v54);
}

uint64_t sub_1000A1C08(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v65 = *v3;
  v7 = type metadata accessor for CustodianshipRecords(0);
  v8 = v7 - 8;
  v64 = *(v7 - 8);
  v9 = *(v64 + 64);
  __chkstk_darwin(v7);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v57 - v18;
  v20 = *(v8 + 28);
  v67 = a1;
  v21 = a1 + v20;
  if (*(a1 + v20 + *(v17 + 48) + 8))
  {
    return a2();
  }

  v23 = (v67 + *(type metadata accessor for CustodianRecord(0) + 52));
  v24 = v23[1];
  if (!v24)
  {
    return a2();
  }

  v58 = *v23;
  v61 = v24;
  sub_1000A8638(v21, v16, type metadata accessor for CustodianRecoveryInfoRecord);
  v60 = a3;
  v25 = v13[11];
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v59 = a2;
  v28 = v27;
  (*(v27 + 56))(&v19[v25], 1, 1, v26);
  v57 = &v19[v13[12]];
  v29 = *(v28 + 16);
  v29(v19, v16, v26);
  v29(&v19[v13[5]], &v16[v13[5]], v26);
  v30 = v13[6];
  v31 = *&v16[v30];
  v32 = *&v16[v30 + 8];
  v33 = &v19[v30];
  *v33 = v31;
  *(v33 + 1) = v32;
  v34 = v13[11];

  sub_10009585C(&v16[v34], &v19[v25]);
  v35 = v13[9];
  v36 = *&v16[v35];
  v37 = *&v16[v35 + 8];
  v38 = &v19[v35];
  *v38 = v36;
  v38[1] = v37;
  v39 = v13[7];
  v40 = *&v16[v39];
  v41 = *&v16[v39 + 8];
  v42 = &v19[v39];
  *v42 = v40;
  v42[1] = v41;
  v43 = v13[8];
  v44 = *&v16[v43];
  v45 = *&v16[v43 + 8];
  v46 = &v19[v43];
  *v46 = v44;
  v46[1] = v45;
  v19[v13[10]] = v16[v13[10]];
  sub_100015D6C(v36, v37);
  sub_100015D6C(v40, v41);
  sub_100052704(v44, v45);
  sub_1000A8824(v16, type metadata accessor for CustodianRecoveryInfoRecord);
  v47 = v57;
  v48 = v61;
  v49 = v62;
  *v57 = v58;
  *(v47 + 1) = v48;
  v50 = v63;
  (*(v49 + 16))(v12, v3 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__storageController, v63);
  Dependency.wrappedValue.getter();
  (*(v49 + 8))(v12, v50);
  sub_1000080F8(v68, v68[3]);
  v51 = v66;
  sub_1000A8638(v67, v66, type metadata accessor for CustodianshipRecords);
  v52 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v53 = (v9 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_1000A87BC(v51, v54 + v52, type metadata accessor for CustodianshipRecords);
  v55 = (v54 + v53);
  v56 = v60;
  *v55 = v59;
  v55[1] = v56;
  *(v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8)) = v65;

  sub_10023030C(v19, sub_1000A7E84, v54);

  sub_1000A8824(v19, type metadata accessor for CustodianRecoveryInfoRecord);
  return sub_10000839C(v68);
}

uint64_t sub_1000A20F8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = v3;
  v179 = a2;
  v180 = a3;
  v175 = *v4;
  v6 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v173 = *(v6 - 8);
  v174 = v6;
  __chkstk_darwin(v6);
  v8 = v147 - v7;
  v166 = type metadata accessor for Date.ISO8601FormatStyle();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v178 = *(v10 - 8);
  __chkstk_darwin(v10);
  v163 = v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v162 = v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v16 = __chkstk_darwin(v15 - 8);
  v176 = v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v147 - v18;
  v20 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v21 = __chkstk_darwin(v20 - 8);
  v168 = v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v147 - v23;
  v181 = type metadata accessor for CustodianRecord(0);
  v169 = *(v181 - 1);
  v25 = __chkstk_darwin(v181);
  v171 = v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = v147 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = v147 - v31;
  v170 = v33;
  __chkstk_darwin(v30);
  v172 = v147 - v34;
  if (!sub_1000EF184())
  {
    return v179();
  }

  v154 = v8;
  v155 = v4;
  v156 = a1;
  sub_1000A8638(a1, v32, type metadata accessor for CustodianRecord);
  v35 = *(v13 + 56);
  v161 = v24;
  v35(v24, 1, 1, v12);
  v36 = *(v178 + 56);
  v158 = v19;
  v159 = v10;
  v36(v19, 1, 1, v10);
  v37 = v181;
  v38 = &v29[v181[7]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v148 = v38;
  v39 = &v29[v37[8]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v149 = v39;
  v40 = &v29[v37[13]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v151 = v40;
  v41 = &v29[v37[14]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v152 = v41;
  v42 = &v29[v37[15]];
  *v42 = 0;
  v153 = v42;
  v42[8] = 1;
  v150 = v37[16];
  v147[1] = v13 + 56;
  v147[0] = v35;
  v35(&v29[v150], 1, 1, v12);
  v157 = v13;
  v43 = *(v13 + 16);
  v43(v29, v32, v12);
  v44 = v37[5];
  v160 = v12;
  v43(&v29[v44], &v32[v44], v12);
  v45 = v37[11];
  v47 = *&v32[v45];
  v46 = *&v32[v45 + 8];
  v48 = &v29[v45];
  *v48 = v47;
  v48[1] = v46;
  v49 = v37[6];
  v51 = *&v32[v49];
  v50 = *&v32[v49 + 8];
  v52 = &v29[v49];
  *v52 = v51;
  *(v52 + 1) = v50;
  *&v29[v37[9]] = *&v32[v37[9]];
  v53 = v37[10];
  v55 = *&v32[v53];
  v54 = *&v32[v53 + 8];
  v56 = &v29[v53];
  *v56 = v55;
  v56[1] = v54;
  v57 = v37[12];
  v167 = v32;
  v29[v57] = v32[v57];
  type metadata accessor for ContactsHelper(0);
  swift_allocObject();

  sub_100015D6C(v47, v46);
  sub_100052704(v55, v54);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v58 = v182[0];
  v59 = String._bridgeToObjectiveC()();
  v60 = [v58 contactForHandle:v59];

  swift_unknownObjectRelease();
  if (!v60)
  {

    sub_1000EF4CC();
    v177 = 0;
    v65 = v159;
    v66 = v158;
    v69 = v167;
    v68 = v168;
    v70 = v161;
    v67 = v176;
LABEL_19:
    v71 = v160;
    goto LABEL_20;
  }

  v61 = objc_allocWithZone(AALocalContactInfo);
  v62 = v60;
  v63 = String._bridgeToObjectiveC()();
  v177 = [v61 initWithHandle:v63 contact:v62];

  v64 = sub_1000EF4CC();
  v65 = v159;
  v66 = v158;
  v67 = v176;
  v68 = v168;
  if ((v64 & 1) == 0)
  {
    goto LABEL_18;
  }

  v69 = v167;
  v70 = v161;
  v71 = v160;
  if (!v177)
  {
    goto LABEL_20;
  }

  v177 = v177;
  v72 = [v177 firstName];
  if (!v72)
  {

    goto LABEL_20;
  }

  v73 = v72;
  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  v77 = sub_1002576F0(v74, v76);
  v79 = v78;

  if (!v79)
  {
LABEL_18:
    v69 = v167;
    v70 = v161;
    goto LABEL_19;
  }

  v177 = v177;
  v80 = [v177 lastName];
  if (!v80)
  {

    goto LABEL_18;
  }

  v81 = v67;
  v82 = v80;
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  v86 = sub_1002576F0(v83, v85);
  v88 = v87;

  if (v88)
  {
    v89 = &v167[v181[7]];
    v90 = *(v89 + 1);
    v91 = v158;
    v92 = v157;
    v67 = v81;
    if (v90 && (*v89 == v77 && v90 == v79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v70 = v161;
      v71 = v160;
      v65 = v159;
      v66 = v91;
      v69 = v167;
    }

    else
    {
      v143 = &v167[v181[8]];
      v144 = *(v143 + 1);
      v66 = v91;
      if (!v144 || (*v143 != v86 || v144 != v88) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v145 = v148;
        *v148 = v77;
        v145[1] = v79;
        v146 = v149;
        *v149 = v86;
        v146[1] = v88;
        v70 = v161;
        v71 = v160;
        v65 = v159;
        v69 = v167;
        goto LABEL_21;
      }

      v70 = v161;
      v71 = v160;
      v65 = v159;
      v69 = v167;
    }
  }

  else
  {

    v69 = v167;
    v70 = v161;
    v71 = v160;
    v65 = v159;
    v67 = v81;
    v66 = v158;
  }

LABEL_20:
  v94 = v181;
  v95 = (v69 + v181[7]);
  v96 = *v95;
  v97 = v95[1];
  v98 = v148;
  *v148 = v96;
  v98[1] = v97;
  v99 = (v69 + v94[8]);
  v101 = *v99;
  v100 = v99[1];
  v102 = v149;
  *v149 = v101;
  v102[1] = v100;

  v92 = v157;
LABEL_21:
  sub_100012D04(v70, v68, &qword_1003D8B60, &unk_10033F210);
  if ((*(v92 + 48))(v68, 1, v71) == 1)
  {
    sub_100008D3C(v68, &qword_1003D8B60, &unk_10033F210);
    sub_10009585C(v69 + v181[16], &v29[v150]);
  }

  else
  {
    v103 = *(v92 + 32);
    v104 = v68;
    v105 = v162;
    v103(v162, v104, v71);
    v106 = v69;
    v107 = v66;
    v108 = v65;
    v109 = v70;
    v110 = v150;
    sub_100008D3C(&v29[v150], &qword_1003D8B60, &unk_10033F210);
    v103(&v29[v110], v105, v71);
    v67 = v176;
    v111 = &v29[v110];
    v70 = v109;
    v65 = v108;
    v66 = v107;
    v69 = v106;
    (v147[0])(v111, 0, 1, v71);
  }

  v112 = (v69 + v181[13]);
  v113 = *v112;
  v114 = v112[1];
  v115 = v151;
  *v151 = v113;
  *(v115 + 1) = v114;
  sub_100012D04(v66, v67, &qword_1003DA110, &qword_10033F230);
  v116 = v178;
  if ((*(v178 + 48))(v67, 1, v65) == 1)
  {

    sub_100008D3C(v66, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v70, &qword_1003D8B60, &unk_10033F210);
    sub_100008D3C(v67, &qword_1003DA110, &qword_10033F230);
    v117 = (v69 + v181[14]);
    v118 = *v117;
    v119 = v117[1];
  }

  else
  {
    v120 = v67;
    v121 = v70;
    v122 = v66;
    v123 = v163;
    (*(v116 + 32))(v163, v120, v65);

    v124 = v164;
    sub_100195ACC(v164);
    v125 = v116;
    v118 = Date.ISO8601Format(_:)();
    v119 = v126;

    v127 = v124;
    v69 = v167;
    (*(v165 + 8))(v127, v166);
    (*(v125 + 8))(v123, v65);
    sub_100008D3C(v122, &qword_1003DA110, &qword_10033F230);
    sub_100008D3C(v121, &qword_1003D8B60, &unk_10033F210);
  }

  v128 = v152;
  *v152 = v118;
  v128[1] = v119;
  v129 = v69 + v181[15];
  v130 = *v129;
  v131 = *(v129 + 8);
  sub_1000A8824(v69, type metadata accessor for CustodianRecord);
  v132 = v153;
  *v153 = v130;
  v132[8] = v131;
  v133 = v172;
  sub_1000A87BC(v29, v172, type metadata accessor for CustodianRecord);
  v135 = v173;
  v134 = v174;
  v136 = v154;
  (*(v173 + 16))(v154, v155 + OBJC_IVAR____TtC13appleaccountd25CustodianOwnerHealthCheck__storageController, v174);
  Dependency.wrappedValue.getter();
  (*(v135 + 8))(v136, v134);
  sub_1000080F8(v182, v182[3]);
  v137 = v171;
  sub_1000A8638(v156, v171, type metadata accessor for CustodianRecord);
  v138 = (*(v169 + 80) + 16) & ~*(v169 + 80);
  v139 = (v170 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
  v140 = swift_allocObject();
  sub_1000A87BC(v137, v140 + v138, type metadata accessor for CustodianRecord);
  v141 = (v140 + v139);
  v142 = v180;
  *v141 = v179;
  v141[1] = v142;
  *(v140 + ((v139 + 23) & 0xFFFFFFFFFFFFFFF8)) = v175;

  sub_10022FCA0(v133, sub_1000A7658, v140);

  sub_1000A8824(v133, type metadata accessor for CustodianRecord);
  return sub_10000839C(v182);
}