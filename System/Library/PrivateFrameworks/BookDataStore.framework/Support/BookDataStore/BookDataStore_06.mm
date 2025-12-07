char *CRDTModelCloudSyncController.init(cloudSyncManager:transactionProvider:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v36 = a2;
  v37 = *v2;
  v38 = v37;
  v4 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v4 - 8);
  v34 = v28 - v5;
  v29 = sub_1001C6638();
  __chkstk_darwin(v29);
  v6 = sub_1001C5688();
  __chkstk_darwin(v6 - 8);
  v33 = sub_1001C6668();
  v7 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 3) = 0;
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v30 = "HistoryService.modelReady";
  v32 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v31 = *(v7 + 104);
  v31(v9);
  sub_1001C5668();
  aBlock[0] = _swiftEmptyArrayStorage;
  v28[1] = sub_1000F2C74(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v28[0] = sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  *(v2 + 4) = sub_1001C66A8();
  *(v2 + 5) = 0;
  (v31)(v9, v32, v33);
  sub_1001C5668();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001C68C8();
  *(v2 + 6) = sub_1001C66A8();
  v10 = qword_1002708C0;
  v11 = type metadata accessor for CRDTModelSyncVersion(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&v3[v10], 1, 1, v11);
  *&v3[qword_1002708C8] = 0;
  *&v3[qword_1002818C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = v35;
  v14 = v36;
  *(v3 + 2) = v35;
  *(v3 + 7) = v14;
  v15 = v34;
  v12(v34, 1, 1, v11);
  v16 = qword_1002708C0;
  swift_beginAccess();
  v17 = v13;
  swift_unknownObjectRetain();
  sub_1000B36A8(v15, &v3[v16], &unk_10026F350, &qword_1001F31E0);
  swift_endAccess();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = v37;
  *(v19 + 16) = *(v37 + 80);
  *(v19 + 24) = *(v38 + 88);
  *(v19 + 40) = *(v20 + 104);
  *(v19 + 48) = v18;
  v21 = objc_allocWithZone(BUCoalescingCallBlock);
  aBlock[4] = sub_1000F2CBC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991BC;
  aBlock[3] = &unk_1002467A0;
  v22 = _Block_copy(aBlock);

  v23 = sub_1001C5FE8();
  v24 = [v21 initWithNotifyBlock:v22 blockDescription:v23];

  _Block_release(v22);

  [v24 setCoalescingDelay:30.0];

  swift_unknownObjectRelease();
  v25 = qword_1002708C8;
  swift_beginAccess();
  v26 = *&v3[v25];
  *&v3[v25] = v24;

  return v3;
}

uint64_t sub_1000E9A68(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + 48);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1000F4E8C;
    *(v7 + 24) = v5;
    aBlock[4] = sub_1000B3DA0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_100247670;
    v8 = _Block_copy(aBlock);

    dispatch_sync(v6, v8);
    _Block_release(v8);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      a1(result);
    }
  }

  return result;
}

uint64_t sub_1000E9BE4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_1000E9C5C();
    a1(v5);
  }

  return result;
}

uint64_t sub_1000E9C5C()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000F3264;
  *(v2 + 24) = v0;
  v5[4] = sub_1000B3DA0;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000906F4;
  v5[3] = &unk_100246D60;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E9D90()
{
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  sub_1001C6688();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = *(aBlock[0] + 16);
  v3 = swift_allocObject();
  v3[2] = aBlock[0];
  v3[3] = sub_1000F4BB8;
  v3[4] = v1;
  v3[5] = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000B3E58;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100247508;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E9F98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000EA408();
  }

  return result;
}

uint64_t sub_1000E9FF8(uint64_t a1)
{
  v2 = v1;
  v22 = sub_1001C5648();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v23 = [*(v2 + 56) createTransactionWithName:"com.apple.bookdatastored.CRDTModelCloudSyncController.handleLocalModelEvent"];
  sub_10009ADF0(a1, v9, &unk_10026F820, &unk_1001F1440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100084528(&qword_10026F838, &unk_1001F1920);
    sub_10009AE58(&v9[*(v13 + 48)], v12, &unk_10026F420, &unk_1001F0E50);
    sub_10008875C(v9, &unk_10026F420, &unk_1001F0E50);
  }

  else
  {
    sub_10009AE58(v9, v12, &unk_10026F420, &unk_1001F0E50);
  }

  v14 = v12[*(v10 + 44)];
  v15 = sub_1001C65B8();
  if (v14 == 1)
  {
    if (qword_10026EBE8 != -1)
    {
      v19 = v15;
      swift_once();
      v15 = v19;
    }

    sub_1001C5118(v15, &_mh_execute_header, qword_1002711E8, "handleLocalModelEvent - sync to cloud", 37, 2, _swiftEmptyArrayStorage);
    v16 = *(v2 + 16);
    v17 = sub_1001C5638();
    __chkstk_darwin(v17);
    *(&v21 - 4) = v16;
    *(&v21 - 3) = v12;
    *(&v21 - 16) = 0;
    sub_1001C6678();
    (*(v4 + 8))(v6, v22);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000E61DC(&v12[*(v10 + 52)]);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_10026EBE8 != -1)
    {
      v20 = v15;
      swift_once();
      v15 = v20;
    }

    sub_1001C5118(v15, &_mh_execute_header, qword_1002711E8, "handleLocalModelEvent - model not ready", 39, 2, _swiftEmptyArrayStorage);
  }

  return sub_10008875C(v12, &unk_10026F420, &unk_1001F0E50);
}

void sub_1000EA408()
{
  v1 = type metadata accessor for ModelState(0, *(*v0 + 10), *(*v0 + 11), *(*v0 + 12));
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  v5 = [v0[7] createTransactionWithName:"com.apple.bookdatastored.CRDTModelCloudSyncController.handleLocalModelEvent"];
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for ObservableContainer.Event(0, v1, WitnessTable, v7);
  ObservableContainer.Event.currentValue.getter(v8, v4);
  v9 = static CRDTModelLocalFileManager.SyncError.__derived_enum_equals(_:_:)(v4[*(v1 + 44)], 1);
  v10 = sub_1001C65B8();
  if (v9)
  {
    if (qword_10026EBE8 != -1)
    {
      v11 = v10;
      swift_once();
      v10 = v11;
    }

    sub_1001C5118(v10, &_mh_execute_header, qword_1002711E8, "handleLocalModelEvent - sync to cloud", 37, 2, _swiftEmptyArrayStorage);
    CRDTModelSyncManager.sync(_:)(v4);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000E61DC(&v4[*(v1 + 52)]);
      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    if (qword_10026EBE8 != -1)
    {
      v12 = v10;
      swift_once();
      v10 = v12;
    }

    sub_1001C5118(v10, &_mh_execute_header, qword_1002711E8, "handleLocalModelEvent - model not ready", 39, 2, _swiftEmptyArrayStorage);

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1000EA6DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000EA7FC(&unk_100247108, sub_1000F4940, sub_1000B3DA0, &unk_100247120);
  }

  return result;
}

uint64_t sub_1000EA76C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000EA7FC(&unk_100246E88, sub_1000F47E0, sub_1000B3DA0, &unk_100246EA0);
  }

  return result;
}

uint64_t sub_1000EA7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v13 = v8;
    swift_once();
    v8 = v13;
  }

  sub_1001C5118(v8, &_mh_execute_header, qword_1002711E8, "handleLocalModelSyncVersionChange", 33, 2, _swiftEmptyArrayStorage);
  v9 = *(v4 + 48);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v4;
  v14[4] = a3;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000906F4;
  v14[3] = a4;
  v11 = _Block_copy(v14);

  dispatch_sync(v9, v11);
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EA980(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_1000EA9F4(uint64_t a1)
{
  v3 = sub_1001C5648();
  v99 = *(v3 - 8);
  v100 = v3;
  __chkstk_darwin(v3);
  v98 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReadingHistoryModel(0);
  __chkstk_darwin(v5 - 8);
  v94 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v8 = __chkstk_darwin(v7 - 8);
  v93 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v92 = (&v91 - v11);
  v12 = __chkstk_darwin(v10);
  v95 = &v91 - v13;
  __chkstk_darwin(v12);
  v15 = &v91 - v14;
  v16 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  __chkstk_darwin(v16);
  v18 = &v91 - v17;
  v19 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v96 = *(v19 - 1);
  v20 = *(v96 + 64);
  v21 = __chkstk_darwin(v19);
  v97 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v102 = &v91 - v23;
  v24 = __chkstk_darwin(v22);
  v101 = (&v91 - v25);
  v26 = __chkstk_darwin(v24);
  v103 = &v91 - v27;
  __chkstk_darwin(v26);
  v29 = &v91 - v28;
  v104 = [*(v1 + 56) createTransactionWithName:"com.apple.bookdatastored.CRDTModelCloudSyncController.handleCloudModelEvent"];
  sub_10009ADF0(a1, v18, &unk_10026F820, &unk_1001F1440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_100084528(&qword_10026F838, &unk_1001F1920);
    sub_10009AE58(&v18[*(v30 + 48)], v29, &unk_10026F420, &unk_1001F0E50);
    sub_10008875C(v18, &unk_10026F420, &unk_1001F0E50);
  }

  else
  {
    sub_10009AE58(v18, v29, &unk_10026F420, &unk_1001F0E50);
  }

  if (v29[v19[11]] == 1)
  {
    v31 = v1 + qword_1002818C8;
    Strong = swift_unknownObjectWeakLoadStrong();
    v33 = *(v31 + 8);
    v34 = v19[13];
    if ((sub_1000EB854(&v29[v34], 0xD000000000000015, 0x8000000100201020) & 1) == 0)
    {
      v52 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v53 = qword_1002711E8;
      v54 = v103;
      sub_10009ADF0(v29, v103, &unk_10026F420, &unk_1001F0E50);
      if (os_log_type_enabled(v53, v52))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v107 = v56;
        *v55 = 136315138;
        v57 = v54 + v19[12];
        v58 = v95;
        sub_10009ADF0(v57, v95, &unk_10026FC40, &qword_1001F0E90);
        v59 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
        v60 = (*(*(v59 - 8) + 48))(v58, 2, v59);
        if (v60)
        {
          if (v60 == 1)
          {
            v61 = 0x6C61636F6CLL;
            v62 = 0xE500000000000000;
          }

          else
          {
            v62 = 0xE600000000000000;
            v61 = 0x6465726F7473;
          }
        }

        else
        {
          v72 = v94;
          sub_1000F4BE8(v58, v94, type metadata accessor for ReadingHistoryModel);
          v105 = 0x2865746F6D6572;
          v106 = 0xE700000000000000;
          v108._countAndFlagsBits = ReadingHistoryModel.description.getter();
          sub_1001C6138(v108);

          v109._countAndFlagsBits = 41;
          v109._object = 0xE100000000000000;
          sub_1001C6138(v109);
          v61 = v105;
          v62 = v106;
          sub_1000F4A38(v72, type metadata accessor for ReadingHistoryModel);
        }

        v71 = v104;
        sub_10008875C(v103, &unk_10026F420, &unk_1001F0E50);
        v73 = sub_1001874E8(v61, v62, &v107);

        *(v55 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v53, v52, "handleCloudModelEvent - skip sync to local, no revision change, lastSource: %s", v55, 0xCu);
        sub_10008E7BC(v56);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_10008875C(v54, &unk_10026F420, &unk_1001F0E50);
        v71 = v104;
      }

      goto LABEL_46;
    }

    v95 = v33;
    v103 = Strong;
    v35 = v19[12];
    v36 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    v37 = v29;
    v38 = *(v36 - 8);
    (*(v38 + 56))(v15, 1, 2, v36);
    v39 = v37;
    LOBYTE(v35) = sub_1000B926C(&v37[v35], v15);
    sub_10008875C(v15, &unk_10026FC40, &qword_1001F0E90);
    v40 = sub_1001C65B8();
    if (v35)
    {
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v41 = qword_1002711E8;
      v42 = v101;
      sub_10009ADF0(v39, v101, &unk_10026F420, &unk_1001F0E50);
      if (os_log_type_enabled(v41, v40))
      {
        v43 = v40;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v107 = v45;
        *v44 = 136315138;
        v46 = v42 + v19[12];
        v47 = v92;
        sub_10009ADF0(v46, v92, &unk_10026FC40, &qword_1001F0E90);
        v48 = (*(v38 + 48))(v47, 2, v36);
        if (v48)
        {
          v29 = v39;
          if (v48 == 1)
          {
            v49 = 0x6C61636F6CLL;
            v50 = 0xE500000000000000;
          }

          else
          {
            v50 = 0xE600000000000000;
            v49 = 0x6465726F7473;
          }
        }

        else
        {
          v74 = v94;
          sub_1000F4BE8(v47, v94, type metadata accessor for ReadingHistoryModel);
          v105 = 0x2865746F6D6572;
          v106 = 0xE700000000000000;
          v110._countAndFlagsBits = ReadingHistoryModel.description.getter();
          sub_1001C6138(v110);

          v111._countAndFlagsBits = 41;
          v111._object = 0xE100000000000000;
          sub_1001C6138(v111);
          v49 = v105;
          v50 = v106;
          sub_1000F4A38(v74, type metadata accessor for ReadingHistoryModel);
          v29 = v39;
        }

        v87 = v103;
        v71 = v104;
        sub_10008875C(v101, &unk_10026F420, &unk_1001F0E50);
        v88 = sub_1001874E8(v49, v50, &v107);

        *(v44 + 4) = v88;
        _os_log_impl(&_mh_execute_header, v41, v43, "handleCloudModelEvent - skip sync to local, lastSource: %s", v44, 0xCu);
        sub_10008E7BC(v45);

        if (!v87)
        {
          goto LABEL_46;
        }
      }

      else
      {
        sub_10008875C(v42, &unk_10026F420, &unk_1001F0E50);
        v29 = v39;
        v71 = v104;
        if (!v103)
        {
          goto LABEL_46;
        }
      }

      swift_unknownObjectRetain();
      sub_1000E5D7C(&v29[v34], v29);
      swift_unknownObjectRelease_n();
LABEL_46:

      return sub_10008875C(v29, &unk_10026F420, &unk_1001F0E50);
    }

    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v63 = qword_1002711E8;
    v64 = v102;
    sub_10009ADF0(v39, v102, &unk_10026F420, &unk_1001F0E50);
    if (os_log_type_enabled(v63, v40))
    {
      v101 = v63;
      v65 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v107 = v92;
      *v65 = 136315138;
      v66 = v64 + v19[12];
      v67 = v93;
      sub_10009ADF0(v66, v93, &unk_10026FC40, &qword_1001F0E90);
      v68 = (*(v38 + 48))(v67, 2, v36);
      if (v68)
      {
        if (v68 == 1)
        {
          v69 = 0x6C61636F6CLL;
        }

        else
        {
          v69 = 0x6465726F7473;
        }

        if (v68 == 1)
        {
          v70 = 0xE500000000000000;
        }

        else
        {
          v70 = 0xE600000000000000;
        }
      }

      else
      {
        v75 = v94;
        sub_1000F4BE8(v67, v94, type metadata accessor for ReadingHistoryModel);
        v105 = 0x2865746F6D6572;
        v106 = 0xE700000000000000;
        v112._countAndFlagsBits = ReadingHistoryModel.description.getter();
        sub_1001C6138(v112);

        v113._countAndFlagsBits = 41;
        v113._object = 0xE100000000000000;
        sub_1001C6138(v113);
        v69 = v105;
        v70 = v106;
        sub_1000F4A38(v75, type metadata accessor for ReadingHistoryModel);
      }

      v29 = v39;
      sub_10008875C(v102, &unk_10026F420, &unk_1001F0E50);
      v76 = sub_1001874E8(v69, v70, &v107);

      *(v65 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v101, v40, "handleCloudModelEvent - sync to local, lastSource: %s", v65, 0xCu);
      sub_10008E7BC(v92);
    }

    else
    {
      sub_10008875C(v64, &unk_10026F420, &unk_1001F0E50);
      v29 = v39;
    }

    v77 = v103;
    sub_100084528(&unk_100270A10, &unk_1001F3470);
    sub_1001C6688();
    v103 = 0;
    v78 = v105;
    v79 = v97;
    sub_10009ADF0(v29, v97, &unk_10026F420, &unk_1001F0E50);
    v80 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v81 = swift_allocObject();
    v82 = v95;
    *(v81 + 16) = v77;
    *(v81 + 24) = v82;
    sub_10009AE58(v79, v81 + v80, &unk_10026F420, &unk_1001F0E50);
    v83 = v104;
    *(v81 + ((v20 + v80 + 7) & 0xFFFFFFFFFFFFFFF8)) = v104;
    swift_unknownObjectRetain();
    v84 = v83;
    v85 = v98;
    v86 = sub_1001C5638();
    __chkstk_darwin(v86);
    *(&v91 - 6) = v78;
    *(&v91 - 5) = v29;
    *(&v91 - 32) = 1;
    *(&v91 - 3) = sub_1000F4C50;
    *(&v91 - 2) = v81;
    sub_100084528(&unk_100270A90, &qword_1001F34D8);
    sub_1001C6678();
    swift_unknownObjectRelease();

    (*(v99 + 8))(v85, v100);
  }

  else
  {
    v51 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      v90 = v51;
      swift_once();
      v51 = v90;
    }

    sub_1001C5118(v51, &_mh_execute_header, qword_1002711E8, "handleCloudModelEvent - model not ready", 39, 2, _swiftEmptyArrayStorage);
  }

  return sub_10008875C(v29, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_1000EB854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v5 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v6 = __chkstk_darwin(v5 - 8);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v45 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = (&v45 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = (&v45 - v15);
  __chkstk_darwin(v14);
  v18 = (&v45 - v17);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10012FA70(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = type metadata accessor for CRDTModelRevisionInfo(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  }

  v47 = a1;
  sub_10009ADF0(a1, v16, &unk_10026F410, &unk_1001F0E40);
  v20 = type metadata accessor for CRDTModelRevisionInfo(0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v16, 1, v20) == 1)
  {
    sub_10008875C(v16, &unk_10026F410, &unk_1001F0E40);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = *v16;
    v23 = v16[1];

    sub_1000F4A38(v16, type metadata accessor for CRDTModelRevisionInfo);
  }

  v50 = v18;
  sub_10009ADF0(v18, v13, &unk_10026F410, &unk_1001F0E40);
  if (v21(v13, 1, v20) == 1)
  {
    sub_10008875C(v13, &unk_10026F410, &unk_1001F0E40);
    if (!v23)
    {
      goto LABEL_21;
    }

LABEL_19:

    v28 = 1;
    goto LABEL_22;
  }

  v25 = *v13;
  v24 = v13[1];

  sub_1000F4A38(v13, type metadata accessor for CRDTModelRevisionInfo);
  if (v23)
  {
    if (v24)
    {
      if (v22 != v25 || v23 != v24)
      {
        v27 = sub_1001C6D08();

        v28 = v27 ^ 1;
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v24)
  {
    goto LABEL_19;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  v46 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v45 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001F0CF0;
  *(v29 + 56) = &type metadata for String;
  v30 = sub_100084570();
  *(v29 + 64) = v30;
  *(v29 + 32) = a2;
  v31 = v47;
  *(v29 + 40) = v48;
  *(v29 + 96) = &type metadata for Bool;
  *(v29 + 104) = &protocol witness table for Bool;
  *(v29 + 72) = v28 & 1;
  sub_10009ADF0(v31, v10, &unk_10026F410, &unk_1001F0E40);
  v32 = v21(v10, 1, v20);

  if (v32 == 1)
  {
    sub_10008875C(v10, &unk_10026F410, &unk_1001F0E40);
    v33 = (v29 + 112);
    *(v29 + 136) = &type metadata for String;
    *(v29 + 144) = v30;
  }

  else
  {
    v34 = CRDTModelRevisionInfo.description.getter();
    v36 = v35;
    sub_1000F4A38(v10, type metadata accessor for CRDTModelRevisionInfo);
    v33 = (v29 + 112);
    *(v29 + 136) = &type metadata for String;
    *(v29 + 144) = v30;
    if (v36)
    {
      *v33 = v34;
      goto LABEL_29;
    }
  }

  *v33 = 7104878;
  v36 = 0xE300000000000000;
LABEL_29:
  v38 = v49;
  v37 = v50;
  *(v29 + 120) = v36;
  sub_10009ADF0(v37, v38, &unk_10026F410, &unk_1001F0E40);
  if (v21(v38, 1, v20) == 1)
  {
    sub_10008875C(v38, &unk_10026F410, &unk_1001F0E40);
    v39 = (v29 + 152);
    *(v29 + 176) = &type metadata for String;
    *(v29 + 184) = v30;
LABEL_33:
    v43 = v50;
    *v39 = 7104878;
    v42 = 0xE300000000000000;
    goto LABEL_34;
  }

  v40 = CRDTModelRevisionInfo.description.getter();
  v42 = v41;
  sub_1000F4A38(v38, type metadata accessor for CRDTModelRevisionInfo);
  v39 = (v29 + 152);
  *(v29 + 176) = &type metadata for String;
  *(v29 + 184) = v30;
  if (!v42)
  {
    goto LABEL_33;
  }

  *v39 = v40;
  v43 = v50;
LABEL_34:
  *(v29 + 160) = v42;
  sub_1001C5118(v46, &_mh_execute_header, v45, "%@: changed = %{BOOL}d,\n  - cloudRevision = %@,\n  - lastCloudRevisionSaved = %@", 79, 2, v29);

  sub_10008875C(v43, &unk_10026F410, &unk_1001F0E40);
  return v28 & 1;
}

void sub_1000EBE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
    sub_1000E5D7C(a3 + *(v4 + 52), a3);
  }
}

uint64_t sub_1000EBE70(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for CRDTModelSyncVersion(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1002708C0;
  swift_beginAccess();
  sub_10009ADF0(a1 + v9, v4, &unk_10026F350, &qword_1001F31E0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10008875C(v4, &unk_10026F350, &qword_1001F31E0);
  }

  sub_1000F4BE8(v4, v8, type metadata accessor for CRDTModelSyncVersion);
  sub_1000EC1F8(v8, 0);
  return sub_1000F4A38(v8, type metadata accessor for CRDTModelSyncVersion);
}

uint64_t sub_1000EC034(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for CRDTModelSyncVersion(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1002708C0;
  swift_beginAccess();
  sub_10009ADF0(a1 + v9, v4, &unk_10026F350, &qword_1001F31E0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10008875C(v4, &unk_10026F350, &qword_1001F31E0);
  }

  sub_1000F4BE8(v4, v8, type metadata accessor for CRDTModelSyncVersion);
  sub_1000EC728(v8, 0);
  return sub_1000F4A38(v8, type metadata accessor for CRDTModelSyncVersion);
}

void sub_1000EC1F8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v6 - 8);
  v8 = &aBlock[-1] - v7;
  v9 = type metadata accessor for CRDTModelSyncVersion(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&unk_100270A10, &unk_1001F3470);
  sub_1001C6688();
  sub_1001C6688();

  v13 = sub_1001C5EA8();
  v14 = sub_1001C65B8();
  if (v13)
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v15 = qword_1002711E8;
    if (os_log_type_enabled(qword_1002711E8, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v15, v14, "checkLocalModelSyncVersion(%{BOOL}d): has delta", v16, 8u);
    }

    if (a2)
    {
      sub_1000F4968(a1, v8, type metadata accessor for CRDTModelSyncVersion);
      (*(v10 + 56))(v8, 0, 1, v9);
      v17 = qword_1002708C0;
      swift_beginAccess();
      sub_1000B36A8(v8, v3 + v17, &unk_10026F350, &qword_1001F31E0);
      swift_endAccess();
      if (!*(v3 + 40))
      {
        v18 = [*(v3 + 56) createTransactionWithName:"com.apple.bookdatastored.CRDTModelCloudSyncController.localModelSyncVersion"];
        v19 = *(v3 + 40);
        *(v3 + 40) = v18;
      }

      v20 = qword_1002708C8;
      swift_beginAccess();
      v21 = *(v3 + v20);
      if (!v21)
      {
        sub_1000F4A38(v12, type metadata accessor for CRDTModelSyncVersion);
        swift_endAccess();
        return;
      }

      swift_endAccess();
      aBlock[4] = MarkedAsFinishedMechanism.rawValue.getter;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_100246FB8;
      v22 = _Block_copy(aBlock);
      v23 = v21;
      [v23 signalWithCompletion:v22];
      _Block_release(v22);
    }
  }

  else
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v24 = qword_1002711E8;
    if (os_log_type_enabled(qword_1002711E8, v14))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v24, v14, "checkLocalModelSyncVersion(%{BOOL}d): no delta", v25, 8u);
    }

    (*(v10 + 56))(v8, 1, 1, v9);
    v26 = qword_1002708C0;
    swift_beginAccess();
    sub_1000B36A8(v8, v3 + v26, &unk_10026F350, &qword_1001F31E0);
    swift_endAccess();
    v27 = *(v3 + 40);
    if (v27)
    {
      [v27 endTransaction];
      sub_1000F4A38(v12, type metadata accessor for CRDTModelSyncVersion);
      v28 = *(v3 + 40);
      *(v3 + 40) = 0;

      return;
    }
  }

  sub_1000F4A38(v12, type metadata accessor for CRDTModelSyncVersion);
}

uint64_t sub_1000EC728(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - v7;
  v9 = type metadata accessor for CRDTModelSyncVersion(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E849C();
  CRDTModelFileSyncManager.modelSyncVersion.getter();

  v13 = sub_1001C5EA8();
  v14 = sub_1001C65B8();
  if (v13)
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v15 = qword_1002711E8;
    if (os_log_type_enabled(qword_1002711E8, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v15, v14, "checkLocalModelSyncVersion(%{BOOL}d): has delta", v16, 8u);
    }

    if (a2)
    {
      sub_1000F4968(a1, v8, type metadata accessor for CRDTModelSyncVersion);
      (*(v10 + 56))(v8, 0, 1, v9);
      v17 = qword_1002708C0;
      swift_beginAccess();
      sub_1000B36A8(v8, v3 + v17, &unk_10026F350, &qword_1001F31E0);
      swift_endAccess();
      if (!*(v3 + 40))
      {
        v18 = [*(v3 + 56) createTransactionWithName:"com.apple.bookdatastored.CRDTModelCloudSyncController.localModelSyncVersion"];
        v19 = *(v3 + 40);
        *(v3 + 40) = v18;
      }

      v20 = qword_1002708C8;
      swift_beginAccess();
      v21 = *(v3 + v20);
      if (!v21)
      {
        sub_1000F4A38(v12, type metadata accessor for CRDTModelSyncVersion);
        return swift_endAccess();
      }

      swift_endAccess();
      aBlock[4] = MarkedAsFinishedMechanism.rawValue.getter;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_100246D88;
      v22 = _Block_copy(aBlock);
      v23 = v21;
      [v23 signalWithCompletion:v22];
      _Block_release(v22);
    }
  }

  else
  {
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v24 = qword_1002711E8;
    if (os_log_type_enabled(qword_1002711E8, v14))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v24, v14, "checkLocalModelSyncVersion(%{BOOL}d): no delta", v25, 8u);
    }

    sub_1000ECF2C();
  }

  return sub_1000F4A38(v12, type metadata accessor for CRDTModelSyncVersion);
}

void sub_1000ECB64(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v16[-v6];
  v8 = qword_1002708C0;
  swift_beginAccess();
  sub_10009ADF0(a1 + v8, v7, &unk_10026F350, &qword_1001F31E0);
  v9 = type metadata accessor for CRDTModelSyncVersion(0);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  sub_10008875C(v7, &unk_10026F350, &qword_1001F31E0);
  if (v11 != 1)
  {
    v12 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      v15 = v12;
      swift_once();
      v12 = v15;
    }

    sub_1001C5118(v12, &_mh_execute_header, qword_1002711E8, "handleLocalModelSyncVersionWaitTimeout: timed out", 49, 2, _swiftEmptyArrayStorage);
    (*(v10 + 56))(v5, 1, 1, v9);
    swift_beginAccess();
    sub_1000B36A8(v5, a1 + v8, &unk_10026F350, &qword_1001F31E0);
    swift_endAccess();
    v13 = *(a1 + 40);
    if (v13)
    {
      [v13 endTransaction];
      v14 = *(a1 + 40);
      *(a1 + 40) = 0;
    }
  }
}

void sub_1000ECDA8(uint64_t a1)
{
  v2 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = qword_1002708C0;
  swift_beginAccess();
  sub_10009ADF0(a1 + v5, v4, &unk_10026F350, &qword_1001F31E0);
  v6 = type metadata accessor for CRDTModelSyncVersion(0);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_10008875C(v4, &unk_10026F350, &qword_1001F31E0);
  if (v5 != 1)
  {
    v7 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      v8 = v7;
      swift_once();
      v7 = v8;
    }

    sub_1001C5118(v7, &_mh_execute_header, qword_1002711E8, "handleLocalModelSyncVersionWaitTimeout: timed out", 49, 2, _swiftEmptyArrayStorage);
    sub_1000ECF2C();
  }
}

void sub_1000ECF2C()
{
  v1 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CRDTModelSyncVersion(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = qword_1002708C0;
  swift_beginAccess();
  sub_1000B36A8(v3, v0 + v5, &unk_10026F350, &qword_1001F31E0);
  swift_endAccess();
  v6 = *(v0 + 40);
  if (v6)
  {
    [v6 endTransaction];
    v7 = *(v0 + 40);
    *(v0 + 40) = 0;
  }
}

id *CRDTModelCloudSyncController.deinit()
{

  swift_unknownObjectRelease();
  sub_10008875C(v0 + qword_1002708C0, &unk_10026F350, &qword_1001F31E0);

  sub_1000CEB00(v0 + qword_1002818C8);
  return v0;
}

uint64_t CRDTModelCloudSyncController.__deallocating_deinit()
{
  CRDTModelCloudSyncController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000ED2B4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = sub_1001C6018();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v3[4] = v6;
  v3[5] = v7;
  v8 = a3;

  return _swift_task_switch(sub_1000ED350, 0, 0);
}

uint64_t sub_1000ED350()
{
  v0[6] = sub_1000E0060();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000ED3F8;
  v3 = v0[4];
  v2 = v0[5];

  return ReadingHistoryBackupManager.backup(name:)(v3, v2);
}

uint64_t sub_1000ED3F8()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000ED574, 0, 0);
  }

  else
  {
    v3 = *(v2 + 24);

    (*(v3 + 16))(v3, 1, 0);
    _Block_release(*(v2 + 24));
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1000ED574()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = sub_1001C4A18();

  (*(v1 + 16))(v1, 0, v3);

  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000ED79C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000ED814, 0, 0);
}

uint64_t sub_1000ED814()
{
  *(v0 + 32) = sub_1000E0060();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000ED8B0;

  return sub_100133D3C();
}

uint64_t sub_1000ED8B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1000EDA94;
  }

  else
  {

    *(v4 + 56) = a1;
    v5 = sub_1000ED9E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000ED9E0()
{
  isa = sub_1001C6288().super.isa;

  v2 = *(v0 + 24);
  (v2)[2](v2, isa, *(v0 + 48) == 0, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000EDA94()
{
  v1 = v0[2];

  v2 = sub_1001C4A18();

  v3 = v0[3];
  (v3)[2](v3, 0, v0[6] == 0, v2);

  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000EDCD0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1001C6018();
  v3[5] = v5;
  v6 = a3;

  return _swift_task_switch(sub_1000EDD5C, 0, 0);
}

uint64_t sub_1000EDD5C()
{
  v0[6] = sub_1000E0060();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000EDE04;
  v3 = v0[4];
  v2 = v0[5];

  return ReadingHistoryBackupManager.restore(name:)(v3, v2);
}

uint64_t sub_1000EDE04()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000ED574, 0, 0);
  }

  else
  {
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);

    (*(v3 + 16))(v3, 1, 0);
    _Block_release(*(v2 + 24));
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1000EDF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1001C4B28();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = [objc_opt_self() books];
  v15 = [v14 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v16 = *(v8 + 8);
  v16(v11, v7);
  (*(v8 + 56))(v6, 1, 1, v7);
  v17 = sub_100134FD4(v13, v6, a1, a2);
  sub_10008875C(v6, &unk_10026EF10, &unk_1001F1FA0);
  v16(v13, v7);
  return v17;
}

uint64_t sub_1000EE19C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001C5648();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_1001C5638();
    __chkstk_darwin(v9);
    *(&v10 - 2) = v8;
    *(&v10 - 1) = a1;
    sub_1001C6678();
    (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_1000EE300(uint64_t a1)
{
  v2 = v1;
  v138 = a1;
  v3 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v3 - 8);
  v130 = &v114 - v4;
  v5 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v5 - 8);
  v135 = &v114 - v6;
  v7 = type metadata accessor for ReadingHistoryModel(0);
  __chkstk_darwin(v7 - 8);
  v134 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1001C5AC8();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v11 = __chkstk_darwin(v10);
  v115 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v114 - v13;
  v15 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v114 - v17;
  v19 = sub_100084528(&unk_1002739E0, &qword_1001F3498);
  v20 = __chkstk_darwin(v19);
  v127 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v119 = &v114 - v23;
  v24 = __chkstk_darwin(v22);
  v117 = &v114 - v25;
  v26 = __chkstk_darwin(v24);
  v118 = &v114 - v27;
  v28 = __chkstk_darwin(v26);
  v116 = &v114 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v114 - v31;
  __chkstk_darwin(v30);
  v34 = &v114 - v33;
  v35 = *(*v1 + 192);
  swift_beginAccess();
  v36 = *(v16 + 16);
  v141 = v35;
  v123 = v16 + 16;
  v122 = v36;
  v36(v18, v2 + v35, v15);
  sub_1001C5D38();
  v129 = v16;
  v37 = *(v16 + 8);
  v128 = v18;
  v121 = v16 + 8;
  v120 = v37;
  v37(v18, v15);
  v139 = v15;
  sub_1001C5D38();

  sub_1001C6688();
  v136 = 0;

  v140 = v10;
  v131 = v14[*(v10 + 44)];
  v137 = v14;
  sub_10008875C(v14, &unk_10026F420, &unk_1001F0E50);
  sub_1000885F4(&qword_100270A58, &unk_1002739E0, &qword_1001F3498, &protocol conformance descriptor for CRDTModelFileSyncInfo<A>);
  v38 = sub_1001C5818();
  v142 = v2;
  v132 = v34;
  v133 = v32;
  if (v38)
  {
    v39 = v116;
    sub_10009ADF0(v32, v116, &unk_1002739E0, &qword_1001F3498);
    v40 = v118;
    sub_10009ADF0(v34, v118, &unk_1002739E0, &qword_1001F3498);
    v41 = sub_1001C5128();
    v42 = sub_1001C65B8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v43 = 136315394;
      v44 = ReadingHistoryModel.description.getter();
      v46 = v45;
      sub_10008875C(v39, &unk_1002739E0, &qword_1001F3498);
      v47 = sub_1001874E8(v44, v46, &aBlock);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = ReadingHistoryModel.description.getter();
      v50 = v49;
      sub_10008875C(v40, &unk_1002739E0, &qword_1001F3498);
      v51 = sub_1001874E8(v48, v50, &aBlock);

      *(v43 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v41, v42, "CRDTModelFileSyncManager q_handle -- incoming=%s and existing=%s", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10008875C(v40, &unk_1002739E0, &qword_1001F3498);
      v52 = sub_10008875C(v39, &unk_1002739E0, &qword_1001F3498);
    }

    __chkstk_darwin(v52);
    *(&v114 - 2) = v32;
    swift_beginAccess();
    v66 = v124;
    v67 = v126;
    v68 = v136;
    sub_1001C5D48();
    swift_endAccess();
    (*(v125 + 8))(v66, v67);
    v69 = v134;
    sub_1000F4968(v32, v134, type metadata accessor for ReadingHistoryModel);

    v70 = v137;
    v71 = v140;
    sub_1001C6688();
    v138 = v68;

    v72 = *(v70 + v71[11]);
    sub_10008875C(v70, &unk_10026F420, &unk_1001F0E50);
    if (v72 == 1)
    {
      v73 = v135;
      sub_1000F4968(v69, v135, type metadata accessor for ReadingHistoryModel);
      v74 = 0;
    }

    else
    {
      v74 = 2;
      v73 = v135;
    }

    v96 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    (*(*(v96 - 8) + 56))(v73, v74, 2, v96);
    v97 = v142;
    v98 = v128;
    v99 = v139;
    v122(v128, v142 + v141, v139);
    v100 = v127;
    sub_1001C5D38();
    v120(v98, v99);
    sub_1000F4968(v100, v70, type metadata accessor for ReadingHistoryModel);
    sub_10008875C(v100, &unk_1002739E0, &qword_1001F3498);
    v101 = v140;
    sub_10009ADF0(v73, v70 + v140[12], &unk_10026FC40, &qword_1001F0E90);
    v102 = type metadata accessor for CRDTModelRevisionInfo(0);
    v103 = *(*(v102 - 8) + 56);
    v104 = v130;
    v103(v130, 1, 1, v102);
    v105 = v101[13];
    v103((v70 + v105), 1, 1, v102);
    *(v70 + v101[11]) = 1;
    sub_1000B36A8(v104, v70 + v105, &unk_10026F410, &unk_1001F0E40);
    sub_100163DC0(v70, 0x656C646E61685F71, 0xE800000000000000);
    sub_10008875C(v70, &unk_10026F420, &unk_1001F0E50);
    swift_beginAccess();
    sub_1001C5D18();
    swift_endAccess();
    v106 = *(v97 + 40);
    v107 = *(v106 + 16);
    v108 = swift_allocObject();
    v108[2] = sub_1000F51A8;
    v108[3] = v97;
    v108[4] = v106;
    v109 = swift_allocObject();
    *(v109 + 16) = sub_1000F51E4;
    *(v109 + 24) = v108;
    v147 = sub_1000B3DA0;
    v148 = v109;
    aBlock = _NSConcreteStackBlock;
    v144 = 1107296256;
    v145 = sub_1000906F4;
    v146 = &unk_100247238;
    v110 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v107, v110);
    _Block_release(v110);
    LOBYTE(v110) = swift_isEscapingClosureAtFileLocation();

    if ((v110 & 1) == 0)
    {
      sub_10008875C(v135, &unk_10026FC40, &qword_1001F0E90);
      sub_1000F4A38(v134, type metadata accessor for ReadingHistoryModel);
      if (v131)
      {
        goto LABEL_21;
      }

      v111 = v137;
      v112 = v140;
      sub_1001C6688();

      v113 = *(v111 + v112[11]);
      sub_10008875C(v111, &unk_10026F420, &unk_1001F0E50);
      if (v113 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v53 = v117;
    sub_10009ADF0(v32, v117, &unk_1002739E0, &qword_1001F3498);
    v54 = v119;
    sub_10009ADF0(v34, v119, &unk_1002739E0, &qword_1001F3498);
    v55 = sub_1001C5128();
    v56 = sub_1001C65B8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v57 = 136315394;
      v58 = ReadingHistoryModel.description.getter();
      v60 = v59;
      sub_10008875C(v53, &unk_1002739E0, &qword_1001F3498);
      v61 = sub_1001874E8(v58, v60, &aBlock);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = ReadingHistoryModel.description.getter();
      v64 = v63;
      sub_10008875C(v54, &unk_1002739E0, &qword_1001F3498);
      v65 = sub_1001874E8(v62, v64, &aBlock);

      *(v57 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v55, v56, "CRDTModelFileSyncManager q_handle -- no delta, incoming=%s and existing=%s", v57, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10008875C(v54, &unk_1002739E0, &qword_1001F3498);
      sub_10008875C(v53, &unk_1002739E0, &qword_1001F3498);
    }

    v75 = v137;

    v76 = v140;
    sub_1001C6688();

    v77 = *(v75 + v76[11]);
    sub_10008875C(v75, &unk_10026F420, &unk_1001F0E50);
    if ((v77 & 1) == 0)
    {

      v78 = v115;
      sub_1001C6688();

      sub_1000F4968(v78, v75, type metadata accessor for ReadingHistoryModel);
      v79 = v75;
      sub_10008875C(v78, &unk_10026F420, &unk_1001F0E50);
      v80 = v76[12];
      v81 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
      (*(*(v81 - 8) + 56))(v75 + v80, 2, 2, v81);
      v82 = type metadata accessor for CRDTModelRevisionInfo(0);
      v83 = *(*(v82 - 8) + 56);
      v84 = v130;
      v83(v130, 1, 1, v82);
      v85 = v76[13];
      v83((v79 + v85), 1, 1, v82);
      *(v79 + v76[11]) = 1;
      sub_1000B36A8(v84, v79 + v85, &unk_10026F410, &unk_1001F0E40);
      sub_100163DC0(v79, 0xD000000000000012, 0x8000000100200E30);
      sub_10008875C(v79, &unk_10026F420, &unk_1001F0E50);
    }

    v86 = v141;
    v87 = v142;
    swift_beginAccess();
    (*(v129 + 24))(v87 + v86, v138, v139);
    sub_1001C5D18();
    swift_endAccess();
    v88 = *(v87 + 40);
    v89 = *(v88 + 16);
    v90 = swift_allocObject();
    v90[2] = sub_1000F4A08;
    v90[3] = v87;
    v90[4] = v88;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1000F4A10;
    *(v91 + 24) = v90;
    v147 = sub_1000B3DA0;
    v148 = v91;
    aBlock = _NSConcreteStackBlock;
    v144 = 1107296256;
    v145 = sub_1000906F4;
    v146 = &unk_1002471C0;
    v92 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v89, v92);
    _Block_release(v92);
    LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

    if ((v92 & 1) == 0)
    {
      if (v131)
      {
        goto LABEL_21;
      }

      v94 = v137;
      sub_1001C6688();

      v95 = *(v94 + v76[11]);
      sub_10008875C(v94, &unk_10026F420, &unk_1001F0E50);
      if ((v95 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      sub_1000F0F98();
LABEL_21:
      sub_10008875C(v132, &unk_1002739E0, &qword_1001F3498);
      return sub_10008875C(v133, &unk_1002739E0, &qword_1001F3498);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EF5E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001C5D28();
  sub_100084528(&unk_1002739E0, &qword_1001F3498);
  sub_1000885F4(&qword_100270A58, &unk_1002739E0, &qword_1001F3498, &protocol conformance descriptor for CRDTModelFileSyncInfo<A>);
  sub_1001C57C8();
  return v2(&v4, 0);
}

void sub_1000EF6C4(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v140 = a4;
  v5 = v4;
  v139 = a3;
  v135 = a2;
  v144 = a1;
  v6 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v6 - 8);
  v126 = v119 - v7;
  v134 = sub_1001C5BD8();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1001C5AC8();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100084528(&unk_1002739E0, &qword_1001F3498);
  v10 = __chkstk_darwin(v128);
  v125 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = v119 - v12;
  v13 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v142 = *(v13 - 8);
  v143 = v13;
  v14 = __chkstk_darwin(v13);
  v124 = v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v145 = v119 - v16;
  v17 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v17);
  v19 = v119 - v18;
  v20 = type metadata accessor for ReadingHistoryModel(0);
  v21 = __chkstk_darwin(v20);
  v23 = v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = v119 - v25;
  __chkstk_darwin(v24);
  v28 = v119 - v27;
  v138 = [*(v4 + 64) createTransactionWithName:"com.apple.ibooks.CRDTModelFileSyncManager.q_sync"];

  v136 = v17;
  v29 = v141;
  sub_1001C6688();
  v30 = v144;

  sub_1000F4968(v19, v28, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v19, &unk_10026F420, &unk_1001F0E50);
  sub_1000F2C74(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v127 = v20;
  v31 = sub_1001C5C38();
  sub_1000F4A38(v28, type metadata accessor for ReadingHistoryModel);
  v32 = *(*v5 + 200);
  if (v31)
  {
    sub_1000F4968(v30, v26, type metadata accessor for ReadingHistoryModel);

    v33 = sub_1001C5128();
    v34 = sub_1001C65B8();

    v35 = os_log_type_enabled(v33, v34);
    v123 = v19;
    v119[1] = v32;
    v141 = v29;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      aBlock[0] = v122;
      *v36 = 67109634;
      *(v36 + 4) = v135 & 1;
      *(v36 + 8) = 2080;
      LODWORD(v121) = v34;
      v37 = ReadingHistoryModel.description.getter();
      v39 = v38;
      sub_1000F4A38(v26, type metadata accessor for ReadingHistoryModel);
      v40 = sub_1001874E8(v37, v39, aBlock);

      *(v36 + 10) = v40;
      *(v36 + 18) = 2080;

      v41 = v141;
      sub_1001C6688();
      v141 = v41;

      sub_1000F4968(v19, v28, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v19, &unk_10026F420, &unk_1001F0E50);
      v42 = ReadingHistoryModel.description.getter();
      v44 = v43;
      sub_1000F4A38(v28, type metadata accessor for ReadingHistoryModel);
      v45 = sub_1001874E8(v42, v44, aBlock);

      *(v36 + 20) = v45;
      _os_log_impl(&_mh_execute_header, v33, v121, "CRDTModelFileSyncManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v36, 0x1Cu);
      swift_arrayDestroy();

      v30 = v144;
    }

    else
    {

      sub_1000F4A38(v26, type metadata accessor for ReadingHistoryModel);
    }

    v59 = v28;
    v61 = v142;
    v60 = v143;
    v62 = *(*v5 + 192);
    swift_beginAccess();
    v63 = *(v61 + 16);
    v122 = v62;
    v121 = v61 + 16;
    v120 = v63;
    v63(v145, (v5 + v62), v60);
    sub_1000F4968(v30, v59, type metadata accessor for ReadingHistoryModel);
    sub_100084528(&unk_10026ED30, &unk_1001F1490);
    sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
    sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
    v64 = v137;
    sub_1001C5B58();
    v65 = v5;
    v66 = v59;
    v67 = v127;
    sub_1001C4CA8();
    sub_1000F2C74(&unk_10026F440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1001C5B58();
    v68 = *(v67 + 24);
    v69 = v66;
    v70 = v65;
    *(v64 + v68) = &_swiftEmptyDictionarySingleton;
    *(v64 + *(v128 + 52)) = &_swiftEmptyDictionarySingleton;
    v71 = sub_1000B385C(v69, v64);
    __chkstk_darwin(v71);
    v119[-2] = v64;
    v72 = v129;
    v73 = v131;
    v74 = v141;
    sub_1001C5D48();
    (*(v130 + 8))(v72, v73);
    v75 = *(v65 + 96);
    v76 = v133;
    v77 = v132;
    v78 = v134;
    (*(v133 + 104))(v132, enum case for CRCodableVersion.version3(_:), v134);
    v79 = sub_1001C5D08();
    if (v74)
    {

      (*(v76 + 8))(v77, v78);
      v81 = sub_1001C5128();
      v82 = sub_1001C6598();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v147 = v84;
        *v83 = 136315138;
        v85 = v145;
        swift_beginAccess();
        v86 = v125;
        v87 = v143;
        sub_1001C5D38();
        v88 = ReadingHistoryModel.description.getter();
        v90 = v89;
        sub_10008875C(v86, &unk_1002739E0, &qword_1001F3498);
        v91 = sub_1001874E8(v88, v90, &v147);

        *(v83 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v81, v82, "CRDTModelFileSyncManager q_sync: couldn't serialize model to sync: %s", v83, 0xCu);
        sub_10008E7BC(v84);
      }

      else
      {

        v85 = v145;
        v87 = v143;
      }

      v139();
      sub_100084528(&qword_100270AA0, &qword_1001F34E0);
      sub_1000885F4(&qword_100270AA8, &qword_100270AA0, &qword_1001F34E0, &protocol conformance descriptor for CRDTModelFileSyncManager<A>.SyncError);
      swift_allocError();
      *v97 = 1;
      swift_willThrow();

      sub_10008875C(v137, &unk_1002739E0, &qword_1001F3498);
      (*(v142 + 8))(v85, v87);
    }

    else
    {
      v93 = v144;
      v131 = v80;
      v130 = v79;
      (*(v76 + 8))(v77, v78);
      v119[0] = v69;
      v141 = v75;
      if (v135)
      {
        v94 = v126;
        sub_1000F4968(v93, v126, type metadata accessor for ReadingHistoryModel);
        v95 = 0;
        v96 = v123;
      }

      else
      {
        v95 = 1;
        v96 = v123;
        v94 = v126;
      }

      v98 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
      (*(*(v98 - 8) + 56))(v94, v95, 2, v98);

      v99 = v136;
      sub_1001C6688();

      v100 = v125;
      v101 = v143;
      v102 = v145;
      sub_1001C5D38();
      v103 = v119[0];
      sub_1000F4968(v100, v119[0], type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v100, &unk_1002739E0, &qword_1001F3498);
      sub_1000B385C(v103, v96);
      sub_1000F4D64(v94, v96 + *(v99 + 48));
      sub_100163DC0(v96, 0x636E79735F71, 0xE600000000000000);
      v104 = v124;
      v120(v124, v102, v101);
      v105 = v122;
      swift_beginAccess();
      v106 = v104;
      (*(v142 + 24))(v70 + v105, v104, v101);
      sub_1001C5D18();
      swift_endAccess();
      v107 = *(v70 + 40);
      v108 = *(v107 + 16);
      v109 = swift_allocObject();
      v109[2] = sub_1000F51A8;
      v109[3] = v70;
      v109[4] = v107;
      v110 = swift_allocObject();
      *(v110 + 16) = sub_1000F51E4;
      *(v110 + 24) = v109;
      aBlock[4] = sub_1000B3DA0;
      aBlock[5] = v110;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000906F4;
      aBlock[3] = &unk_1002475A8;
      v111 = _Block_copy(aBlock);
      swift_retain_n();

      dispatch_sync(v108, v111);
      _Block_release(v111);
      LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();

      if (v108)
      {
        __break(1u);
      }

      else
      {
        v112 = v143;
        v113 = *(v142 + 8);
        v113(v106, v143);
        v120(v106, (v70 + v122), v112);
        v114 = swift_allocObject();
        v115 = v139;
        v116 = v140;
        v114[2] = v70;
        v114[3] = v115;
        v117 = v138;
        v114[4] = v116;
        v114[5] = v117;

        v118 = v117;
        sub_100160A38(v106, sub_1000F4DD4, v114);

        sub_1000887D0(v130, v131);

        v113(v106, v112);
        sub_10008875C(v126, &unk_10026FC40, &qword_1001F0E90);
        sub_10008875C(v123, &unk_10026F420, &unk_1001F0E50);
        sub_10008875C(v137, &unk_1002739E0, &qword_1001F3498);
        v113(v145, v112);
      }
    }
  }

  else
  {
    sub_1000F4968(v30, v23, type metadata accessor for ReadingHistoryModel);

    v46 = sub_1001C5128();
    v47 = sub_1001C65B8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v19;
      v49 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      aBlock[0] = v145;
      *v49 = 67109634;
      *(v49 + 4) = v135 & 1;
      *(v49 + 8) = 2080;
      LODWORD(v144) = v47;
      v50 = ReadingHistoryModel.description.getter();
      v141 = v29;
      v52 = v51;
      sub_1000F4A38(v23, type metadata accessor for ReadingHistoryModel);
      v53 = sub_1001874E8(v50, v52, aBlock);

      *(v49 + 10) = v53;
      *(v49 + 18) = 2080;

      sub_1001C6688();

      sub_1000F4968(v48, v28, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v48, &unk_10026F420, &unk_1001F0E50);
      v54 = ReadingHistoryModel.description.getter();
      v56 = v55;
      sub_1000F4A38(v28, type metadata accessor for ReadingHistoryModel);
      v57 = sub_1001874E8(v54, v56, aBlock);

      *(v49 + 20) = v57;
      _os_log_impl(&_mh_execute_header, v46, v144, "CRDTModelFileSyncManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v49, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v58 = sub_1000F4A38(v23, type metadata accessor for ReadingHistoryModel);
    }

    (v139)(v58);
    sub_100084528(&qword_100270AA0, &qword_1001F34E0);
    sub_1000885F4(&qword_100270AA8, &qword_100270AA0, &qword_1001F34E0, &protocol conformance descriptor for CRDTModelFileSyncManager<A>.SyncError);
    swift_allocError();
    *v92 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1000F0A94(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v15 = a5;
  v9 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;

  sub_1001C6688();

  LODWORD(v9) = v11[*(v9 + 44)];
  sub_10008875C(v11, &unk_10026F420, &unk_1001F0E50);
  v12 = a3 & 1;
  if (v9 == 1)
  {
    sub_1000EF6C4(a2, v12, a4, v15);
    if (v5)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000F0BFC(a2, v12, a4, v15);
    return 0;
  }
}

uint64_t sub_1000F0BFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v9 = type metadata accessor for ReadingHistoryModel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "CRDTModelFileSyncManager q_enqueuePendingSync", v14, 2u);
  }

  sub_1000F4968(a1, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingHistoryModel);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  sub_1000F4BE8(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ReadingHistoryModel);
  *(v16 + v15 + v11) = a2 & 1;
  v17 = v16 + ((v15 + v11) & 0xFFFFFFFFFFFFFFF8);
  *(v17 + 8) = v24;
  *(v17 + 16) = a4;
  swift_beginAccess();
  v18 = *(v5 + 72);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 72) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1000ADC10(0, v18[2] + 1, 1, v18);
    *(v5 + 72) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1000ADC10((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  v22 = &v18[2 * v21];
  v22[4] = sub_1000F4DE0;
  v22[5] = v16;
  *(v5 + 72) = v18;
  return swift_endAccess();
}

void sub_1000F0E74(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  v9 = sub_1001C5128();
  v10 = sub_1001C65B8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "CRDTModelFileSyncManager q_enqueuePendingSync -- about to run", v11, 2u);
  }

  sub_1000EF6C4(a2, a3 & 1, a4, a5);
}

uint64_t sub_1000F0F98()
{
  v19 = sub_1001C5688();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001C5648();
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(v0 + 72);
  *(v0 + 72) = _swiftEmptyArrayStorage;
  v17 = v7;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v17 + 32);
    v10 = (v1 + 8);
    v11 = (v4 + 8);
    do
    {
      v12 = swift_allocObject();
      v13 = *v9++;
      *(v12 + 16) = v13;

      sub_1001C5638();
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1000F4A98;
      *(v14 + 24) = v12;
      aBlock[4] = sub_1000B2E48;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_1002472B0;
      v15 = _Block_copy(aBlock);

      sub_1001C5668();
      sub_1001C6698();
      _Block_release(v15);

      (*v10)(v3, v19);
      (*v11)(v6, v18);

      --v8;
    }

    while (v8);
  }
}

void sub_1000F1254(char a1)
{
  v2 = v1;
  [*(v1 + qword_100273F48) setEnableCloudSync:a1 & 1];
  v4 = *(v1 + qword_100273F50);
  v5 = [v4 privateCloudDatabaseController];
  v6 = sub_1001C5128();
  v7 = sub_1001C65B8();
  v8 = os_log_type_enabled(v6, v7);
  if (a1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: enabled sync to CK", v9, 2u);
    }

    v10 = *(v2 + qword_100273F38);
    type metadata accessor for ReadingHistoryModel(0);
    sub_100084528(&qword_10026F330, qword_1001F0760);
    v11 = sub_1001C6078();
    v13 = v12;
    sub_1001C61E8();
    v14 = sub_1001C6088();
    v16 = v15;

    sub_10014074C(15, v14, v16, v11, v13);

    v17 = sub_1001C5FE8();

    [v5 addObserver:v10 recordType:v17];

    v18 = [v4 transactionManager];
    v19 = sub_1001C6078();
    v21 = v20;
    sub_1001C61E8();
    v22 = sub_1001C6088();
    v24 = v23;

    sub_10014074C(15, v22, v24, v19, v21);

    v25 = sub_1001C5FE8();

    [v18 signalSyncToCKTransactionForEntityName:v25 syncManager:v10];
  }

  else
  {
    if (v8)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: disabled sync to CK", v26, 2u);
    }

    v27 = *(v2 + qword_100273F38);
    type metadata accessor for ReadingHistoryModel(0);
    sub_100084528(&qword_10026F330, qword_1001F0760);
    v28 = sub_1001C6078();
    v30 = v29;
    sub_1001C61E8();
    v31 = sub_1001C6088();
    v33 = v32;

    sub_10014074C(15, v31, v33, v28, v30);

    v25 = sub_1001C5FE8();

    [v5 removeObserver:v27 recordType:v25];
  }
}

uint64_t sub_1000F1628(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F164C()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000E2AA0(v3, v0 + v2, v4);
}

uint64_t sub_1000F16E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F172C()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1000E42D0(v4, v0 + v2, v5, v7, v8);
}

uint64_t sub_1000F17CC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100088714(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F181C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = sub_1001C6668();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C6638();
  __chkstk_darwin(v6);
  v7 = sub_1001C5688();
  __chkstk_darwin(v7 - 8);
  *(a2 + 32) = 0;
  v8 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v16[0] = "ncTransport.access";
  v16[1] = v8;
  sub_1001C5678();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *(a2 + 40) = sub_1001C66A8();
  *(a2 + 48) = 1;
  *(a2 + 64) = 0;
  sub_1001C5138();
  *(a2 + 16) = v18;
  *(a2 + 24) = &off_100245698;
  *(a2 + 56) = 0x403E000000000000;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = objc_allocWithZone(BUCoalescingCallBlock);
  aBlock[4] = sub_1000CF3B4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991BC;
  aBlock[3] = &unk_100247300;
  v11 = _Block_copy(aBlock);

  v12 = sub_1001C5FE8();
  v13 = [v10 initWithNotifyBlock:v11 blockDescription:v12];

  _Block_release(v11);

  [v13 setCoalescingDelay:60.0];
  v14 = *(a2 + 32);
  *(a2 + 32) = v13;

  return a2;
}

NSObject *sub_1000F1C1C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v110 = a5;
  v111 = a2;
  v108 = a4;
  v109 = a1;
  v112 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v8 = __chkstk_darwin(v7 - 8);
  v92 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = &v91 - v10;
  v98 = sub_1001C4CA8();
  v97 = *(v98 - 8);
  v11 = __chkstk_darwin(v98);
  v94 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = &v91 - v13;
  v14 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v14 - 8);
  v93 = &v91 - v15;
  v16 = sub_1001C6638();
  __chkstk_darwin(v16);
  v17 = sub_1001C5688();
  __chkstk_darwin(v17 - 8);
  v104 = sub_1001C6668();
  v18 = *(v104 - 8);
  __chkstk_darwin(v104);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR___BDSReadingHistoryService_historyDefaults;
  v107 = OBJC_IVAR___BDSReadingHistoryService_historyDefaults;
  *&v6[v21] = [objc_opt_self() standardUserDefaults];
  v6[OBJC_IVAR___BDSReadingHistoryService_isModelReady] = 0;
  v106 = OBJC_IVAR___BDSReadingHistoryService_accessQueue;
  v100 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v101 = ".CRDTModelSyncManager.model";
  v102 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v22 = *(v18 + 104);
  v103 = v18 + 104;
  v105 = v22;
  v22(v20);
  sub_1001C5668();
  aBlock[0] = _swiftEmptyArrayStorage;
  v99 = sub_1000F2C74(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  *&v6[v106] = sub_1001C66A8();
  v23 = OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue;
  v105(v20, v102, v104);
  sub_1001C5668();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001C68C8();
  *&v6[v23] = sub_1001C66A8();
  *&v6[OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave] = 0;
  v24 = OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSaveAccessLock;
  sub_100084528(&qword_100270A70, &unk_1001F06A0);
  v25 = swift_allocObject();
  *&v6[v24] = v25;
  *&v6[OBJC_IVAR___BDSReadingHistoryService____lazy_storage___historyBackupManager] = 0;
  v27 = v108;
  v26 = v109;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_lifetimeTransaction] = v108;
  v28 = v111;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_viewStateChangeHandler] = v110;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_goalsService] = v26;
  v29 = OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager] = v28;
  *(v25 + 16) = 0;
  v30 = v112;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_historyServiceContext] = v112;
  v31 = v30[8];
  sub_100084528(&qword_100270A78, &qword_1001F34B8);
  swift_allocObject();
  swift_unknownObjectRetain();
  v32 = v28;
  swift_unknownObjectRetain_n();
  v33 = v32;
  v34 = v26;

  v35 = v27;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncController] = sub_1000E8E94(v33, v31);
  v36 = *&v6[v29];
  v37 = *&v34[OBJC_IVAR___BDSReadingGoalsService_goalsController];
  v38 = *&v6[v107];
  type metadata accessor for ReadingHistoryDataStore(0);
  v39 = swift_allocObject();
  v40 = v36;
  swift_unknownObjectRetain();
  v41 = v40;

  v42 = v38;
  v111 = v41;
  v43 = sub_1000B0C08(v37, v41, v31, 0, 14, v42, v39);
  swift_unknownObjectRelease();

  v44 = &unk_100270000;
  *&v6[OBJC_IVAR___BDSReadingHistoryService_historyDataStore] = v43;
  v116.receiver = v6;
  v116.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v116, "init");
  *(*(&v45->isa + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncController) + qword_1002818C8 + 8) = &off_1002708D0;
  swift_unknownObjectWeakAssign();

  sub_1000E9D90();

  dispatch_suspend(*(&v45->isa + OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue));
  v46 = [objc_opt_self() books];
  v47 = [v46 userDefaults];

  v48 = [objc_opt_self() dataHasBeenMovedUserDefaultsKey];
  if (!v48)
  {
    sub_1001C6018();
    v48 = sub_1001C5FE8();
  }

  v49 = [v47 BOOLForKey:v48];

  if (v49 && (v50 = *(&v45->isa + OBJC_IVAR___BDSReadingHistoryService_historyDefaults), v51 = sub_1001C5FE8(), LOBYTE(v50) = [v50 BOOLForKey:v51], v51, (v50 & 1) == 0))
  {
    v72 = sub_1001C6348();
    v73 = v93;
    (*(*(v72 - 8) + 56))(v93, 1, 1, v72);
    v74 = swift_allocObject();
    v74[2] = 0;
    v74[3] = 0;
    v74[4] = v45;
    v75 = v45;
    sub_10016CB40(0, 0, v73, &unk_1001F34C8, v74);
  }

  else
  {
    v52 = v96;
    sub_1000E1104(v96);
    v53 = v97;
    v54 = v98;
    if ((*(v97 + 48))(v52, 1, v98) != 1)
    {
      v59 = v95;
      (*(v53 + 32))(v95, v52, v54);
      v60 = sub_1001C6578();
      if (qword_10026EBE8 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    sub_10008875C(v52, &unk_10026FC70, &unk_1001F1430);
    v55 = *(&v45->isa + OBJC_IVAR___BDSReadingHistoryService_historyDefaults);
    v56 = sub_1001C5FE8();
    LOBYTE(v55) = [v55 BOOLForKey:v56];

    if (v55)
    {
      v57 = v92;
      sub_1001C4C98();
      (*(v53 + 56))(v57, 0, 1, v54);
      sub_1000E126C(v57);
      v58 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        v90 = v58;
        swift_once();
        v58 = v90;
      }

      sub_1001C5118(v58, &_mh_execute_header, qword_1002711E8, "Migration: Already done in daemon. Updated timestamp to now.", 60, 2, _swiftEmptyArrayStorage);
    }
  }

  while (1)
  {
    v77 = [v31 createTransactionWithName:"com.apple.bookdatastored.ReadingHistoryService.loadingModel"];
    v112 = v77;
    sub_1000E13FC();
    v59 = *(&v45->isa + v44[279]);
    v78 = v45;
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v79 = swift_allocObject();
    *(v79 + 16) = v45;
    *(v79 + 24) = v77;
    v44 = swift_allocObject();
    v44[2] = sub_1000F4AE8;
    v44[3] = v79;
    v53 = *&v59[OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange];
    ObjectType = *(v53 + 16);
    v80 = swift_allocObject();
    v110 = v31;
    v31 = v80;
    v80[2] = v53;
    v80[3] = sub_1000F4AF0;
    v80[4] = v44;
    v80[5] = v78;
    v81 = swift_allocObject();
    v60 = v81;
    *(v81 + 16) = sub_1000B3E58;
    *(v81 + 24) = v31;
    aBlock[4] = sub_1000B3DA0;
    v115 = v81;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_1002473F0;
    v82 = _Block_copy(aBlock);
    v54 = v115;
    v83 = v78;
    swift_retain_n();
    v84 = v83;

    v112 = v112;

    dispatch_sync(ObjectType, v82);
    _Block_release(v82);
    LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

    if ((v82 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_18:
    swift_once();
LABEL_11:
    v61 = qword_1002711E8;
    v62 = v94;
    (*(v53 + 16))(v94, v59, v54);
    if (os_log_type_enabled(v61, v60))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      ObjectType = v45;
      aBlock[0] = v64;
      v65 = v64;
      *v63 = 136315138;
      sub_1000F2C74(&qword_100270A80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v66 = sub_1001C6CC8();
      v67 = v62;
      v69 = v68;
      v70 = *(v53 + 8);
      v70(v67, v54);
      v71 = sub_1001874E8(v66, v69, aBlock);

      *(v63 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v61, v60, "Migration: skipping reading history migration in daemon. last migrated:%s", v63, 0xCu);
      sub_10008E7BC(v65);
      v45 = ObjectType;

      v70(v95, v54);
      v44 = &unk_100270000;
    }

    else
    {
      v76 = *(v53 + 8);
      v76(v62, v54);
      v76(v59, v54);
    }
  }

  v85 = objc_opt_self();
  v86 = [v85 defaultCenter];
  sub_1000B39A0();
  v87 = sub_1001C4E28();
  [v86 addObserver:v84 selector:"handlePlaceholderStreakDayGoalNeedsUpdate:" name:v87 object:0];

  v88 = [v85 defaultCenter];
  [v88 addObserver:v84 selector:"handleSignificantDateChange:" name:@"BDSNotificationForwarderSignificantTimeChangeNotification" object:0];
  swift_unknownObjectRelease();

  return v84;
}

void *sub_1000F2B50()
{
  v1 = *(sub_100084528(&unk_10026F350, &qword_1001F31E0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000E3734(v3, v4, v0 + v2, v6, v7);
}

uint64_t sub_1000F2BF0()
{
  v1 = *(type metadata accessor for CRDTModelSyncVersion(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));
  return sub_1000EC728(v2, *(v2 + *(v1 + 64)));
}

uint64_t sub_1000F2C74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000F2CF0(uint64_t a1)
{
  sub_1000F2DCC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1000F2DCC(uint64_t a1)
{
  if (!qword_1002709F8)
  {
    type metadata accessor for CRDTModelSyncVersion(255);
    v1 = sub_1001C67F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1002709F8);
    }
  }
}

uint64_t sub_1000F2E24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_1000EDCD0(v2, v3, v4);
}

uint64_t sub_1000F2ED8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000ED79C(v2, v3);
}

uint64_t sub_1000F2F84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_1000ED2B4(v2, v3, v4);
}

uint64_t sub_1000F3038()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000E657C(v2, v3);
}

uint64_t sub_1000F30E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009AAEC;

  return sub_1000E5C74(v2, v3);
}

id sub_1000F3190()
{
  v1 = *(v0 + 24);
  ReadingHistoryDataStore.handleSignificantDateChange()();
  sub_1000E13FC();

  return [v1 endTransaction];
}

id sub_1000F31EC()
{
  v1 = *(v0 + 24);
  sub_1000E13FC();

  return [v1 endTransaction];
}

uint64_t sub_1000F3288(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  v24 = a1;
  v21 = a2;
  v22 = sub_1001C4B28();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v20 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1001C69C8(20);

  v25 = 0xD000000000000012;
  v26 = 0x80000001001FE0E0;
  v27._countAndFlagsBits = 0xD00000000000001CLL;
  v27._object = 0x8000000100200DC0;
  sub_1001C6138(v27);
  sub_1001C5138();
  v12 = v21;
  (*(v9 + 16))(v11, v21, v8);
  v14 = v22;
  v13 = v23;
  (*(v5 + 16))(v7, v23, v22);
  sub_100084528(&unk_100270A60, &qword_1001F34B0);
  swift_allocObject();
  *(v3 + 16) = sub_1000DFBFC(v24, v11, v7);
  type metadata accessor for _TransportConnectionManager(0);
  v15 = swift_allocObject();

  v17 = sub_1000F181C(v16, v15);
  (*(v5 + 8))(v13, v14);
  (*(v9 + 8))(v12, v20);
  *(v4 + 24) = v17;
  *(*(v4 + 16) + 24) = &off_1002456C8;
  swift_unknownObjectWeakAssign();
  return v4;
}

void *sub_1000F3554(char *a1, char *a2, uint64_t a3, char *a4, void *a5)
{
  v128 = a4;
  v138 = a3;
  v129 = a2;
  v124 = a1;
  v133 = sub_1001C5148();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1001C4B28();
  v139 = *(v130 - 8);
  v7 = __chkstk_darwin(v130);
  v120 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v137 = &v114 - v10;
  v11 = __chkstk_darwin(v9);
  v136 = &v114 - v12;
  __chkstk_darwin(v11);
  v140 = &v114 - v13;
  v126 = type metadata accessor for CRDTModelSyncVersion(0) - 8;
  v14 = __chkstk_darwin(v126);
  v127 = (&v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v125 = &v114 - v16;
  v134 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v121 = *(v134 - 8);
  __chkstk_darwin(v134);
  v135 = &v114 - v17;
  v18 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v18 - 8);
  v118 = &v114 - v19;
  v116 = sub_100084528(&unk_10026F420, &unk_1001F0E50) - 8;
  v20 = __chkstk_darwin(v116);
  v123 = (&v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v117 = &v114 - v23;
  __chkstk_darwin(v22);
  v25 = &v114 - v24;
  v114 = sub_100084528(&unk_1002739E0, &qword_1001F3498);
  v26 = __chkstk_darwin(v114);
  v122 = (&v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v29 = &v114 - v28;
  v30 = sub_1001C6668();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1001C6638();
  __chkstk_darwin(v34 - 8);
  v35 = sub_1001C5688();
  __chkstk_darwin(v35 - 8);
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v31 + 104))(v33, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v30);
  a5[6] = sub_1001C66A8();
  *(a5 + 80) = 0;
  v119 = *(*a5 + 200);
  sub_1001C5138();
  sub_100084528(&unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
  sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
  sub_1001C5B58();
  v36 = type metadata accessor for ReadingHistoryModel(0);
  sub_1001C4CA8();
  sub_1000F2C74(&unk_10026F440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001C5B58();
  *&v29[*(v36 + 24)] = &_swiftEmptyDictionarySingleton;
  *&v29[*(v114 + 52)] = &_swiftEmptyDictionarySingleton;
  v37 = v124;
  a5[12] = v124;
  swift_beginAccess();
  a5[3] = v128;
  swift_unknownObjectWeakAssign();
  v38 = v129;
  a5[8] = v129;
  type metadata accessor for ObservableTransaction(0);
  v39 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain_n();
  v115 = v37;
  a5[7] = sub_10015C33C(0xD000000000000034, 0x8000000100200D60, v38, v39);
  sub_1000F4968(v29, v25, type metadata accessor for ReadingHistoryModel);
  v40 = v116;
  v41 = *(v116 + 56);
  v42 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  (*(*(v42 - 8) + 56))(&v25[v41], 1, 2, v42);
  v43 = type metadata accessor for CRDTModelRevisionInfo(0);
  v44 = *(*(v43 - 8) + 56);
  v45 = v118;
  v44(v118, 1, 1, v43);
  v46 = *(v40 + 60);
  v44(&v25[v46], 1, 1, v43);
  v25[*(v40 + 52)] = 0;
  sub_1000B36A8(v45, &v25[v46], &unk_10026F410, &unk_1001F0E40);
  v129 = v25;
  v47 = v25;
  v48 = v120;
  v49 = v117;
  sub_10009ADF0(v47, v117, &unk_10026F420, &unk_1001F0E50);
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  swift_allocObject();
  v50 = v123;
  sub_10009ADF0(v49, v123, &unk_10026F420, &unk_1001F0E50);
  v51 = sub_100098354(v50);
  sub_10008875C(v49, &unk_10026F420, &unk_1001F0E50);
  a5[4] = v51;
  v128 = v29;
  sub_10009ADF0(v29, v122, &unk_1002739E0, &qword_1001F3498);
  sub_1000885F4(&qword_100270A48, &unk_1002739E0, &qword_1001F3498, &protocol conformance descriptor for CRDTModelFileSyncInfo<A>);
  v52 = v135;
  sub_1001C5D78();
  v53 = *(*a5 + 192);
  v54 = v121;
  v55 = v134;
  (v121[4])(&v53[a5], v52, v134);
  v56 = a5[12];
  swift_beginAccess();
  v57 = v56;
  sub_1001C5D18();
  swift_endAccess();

  v58 = a5[12];
  v59 = v54[2];
  v124 = v53;
  v123 = v54 + 2;
  v122 = v59;
  (v59)(v52, &v53[a5], v55);
  v60 = v58;
  v61 = v125;
  sub_1001C5D58();
  (v54[1])(v52, v55);
  *v61 = v60;
  sub_100084528(&unk_100270A20, &unk_1001F3480);
  swift_allocObject();
  v62 = v127;
  sub_1000F4968(v61, v127, type metadata accessor for CRDTModelSyncVersion);
  v63 = sub_1000986B8(v62);
  sub_1000F4A38(v61, type metadata accessor for CRDTModelSyncVersion);
  a5[5] = v63;
  v64 = [objc_opt_self() books];
  v65 = [v64 containerURL];

  v66 = v136;
  sub_1001C4AD8();

  sub_1001C4AA8();
  v67 = v139;
  v69 = v139 + 8;
  v68 = *(v139 + 8);
  v70 = v130;
  v68(v66, v130);
  v71 = v137;
  sub_1001C4AA8();
  (*(v131 + 16))(v132, a5 + v119, v133);
  v72 = *(v67 + 16);
  v139 = v67 + 16;
  v125 = v72;
  (v72)(v48, v71, v70);
  v73 = sub_1001C5128();
  v74 = sub_1001C6588();
  v75 = os_log_type_enabled(v73, v74);
  v127 = v68;
  v126 = v69;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v141 = v121;
    *v76 = 136315138;
    sub_1000F2C74(qword_100272010, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v77 = v48;
    v78 = v70;
    v79 = sub_1001C6CC8();
    v81 = v80;
    v68(v77, v78);
    v82 = sub_1001874E8(v79, v81, &v141);

    *(v76 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v73, v74, "CRDTModelFileSyncManager Init: modelFileURL: %s", v76, 0xCu);
    sub_10008E7BC(v121);
  }

  else
  {

    v83 = v48;
    v78 = v70;
    v68(v83, v70);
  }

  (*(v131 + 8))(v132, v133);
  v84 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v85);
  v87 = v86;
  v141 = 0;
  v88 = [v84 createDirectoryAtURL:v86 withIntermediateDirectories:1 attributes:0 error:&v141];

  if (v88)
  {
    v89 = v141;
  }

  else
  {
    v90 = v141;
    sub_1001C4A28();

    swift_willThrow();
    v91 = sub_1001C6598();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    v92 = qword_10026F958;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1001F0660;
    v94 = sub_1001C4A58();
    v96 = v95;
    *(v93 + 56) = &type metadata for String;
    v97 = sub_100084570();
    *(v93 + 64) = v97;
    *(v93 + 32) = v94;
    *(v93 + 40) = v96;
    swift_getErrorValue();
    v98 = sub_1001C6D98();
    *(v93 + 96) = &type metadata for String;
    *(v93 + 104) = v97;
    *(v93 + 72) = v98;
    *(v93 + 80) = v99;
    sub_1001C5118(v91, &_mh_execute_header, v92, "CRDTModelFileSyncManager unable to create directory at %@ error=%@", 66, 2, v93);

    v78 = v130;
  }

  v100 = a5[12];
  v101 = v135;
  (v122)(v135, &v124[a5], v134);
  v103 = v136;
  v102 = v137;
  (v125)(v136, v137, v78);
  sub_100084528(&qword_100270A50, &unk_1001F34A0);
  swift_allocObject();
  v104 = v100;
  v105 = sub_1000F3288(v104, v101, v103);

  a5[11] = v105;
  v106 = a5[4] + *(*a5[4] + 128);
  swift_beginAccess();
  *(v106 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  a5[9] = _swiftEmptyArrayStorage;
  v107 = a5[11];
  v108 = swift_allocObject();
  swift_weakInit();
  v109 = (*(v107 + 16) + *(**(v107 + 16) + 144));
  v110 = *v109;
  v111 = v109[1];
  *v109 = sub_1000F49D0;
  v109[1] = v108;
  sub_1000044D8(v110, v111);

  sub_10015F710();

  swift_unknownObjectRelease();

  v112 = v127;
  v127(v102, v78);
  v112(v140, v78);
  sub_10008875C(v128, &unk_1002739E0, &qword_1001F3498);
  sub_10008875C(v129, &unk_10026F420, &unk_1001F0E50);
  return a5;
}

void sub_1000F47FC()
{
  v1 = *(type metadata accessor for CRDTModelSyncVersion(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  sub_1000EC1F8(v2, *(v2 + *(v1 + 64)));
}

void *sub_1000F4880@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E8534(v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000F4968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F4A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F4AA0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1000F4AF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10009B25C;

  return sub_1000E05C0(a1);
}

uint64_t sub_1000F4BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000F4C50()
{
  v1 = *(sub_100084528(&unk_10026F420, &unk_1001F0E50) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1000EBE20(v2, v3, v4);
}

uint64_t sub_1000F4D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1000F4DE0()
{
  v1 = *(type metadata accessor for ReadingHistoryModel(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  sub_1000F0E74(v4, v0 + v2, v5, v7, v8);
}

uint64_t sub_1000F4EB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = sub_1000E683C();
  *v1 = result & 1;
  *v2 = BYTE1(result) & 1;
  return result;
}

void sub_1000F4F38()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

uint64_t sub_1000F4F74()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000E4648(v0 + v2, v4, v5);
}

uint64_t sub_1000F5010@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F0A94(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void *sub_1000F51FC(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_1001C6B08();

    if (v7)
    {
      sub_100088714(0, a3, a4);
      swift_dynamicCast();
      return v14;
    }
  }

  else if (*(a2 + 16))
  {
    v10 = sub_100187BB4(a1);
    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v10);
      v13 = v12;
      return v12;
    }
  }

  return 0;
}

BOOL sub_1000F52CC(Swift::UInt a1, Swift::UInt a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1001C6DF8();
  sub_1001C6E08(a1);
  sub_1001C6E08(a2);
  v6 = sub_1001C6E28();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
    v13 = v12 == a1 && v11 == a2;
    result = v13;
    if (v13)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t sub_1000F53B0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1001C6938();
  }

  else if (*(a2 + 16) && (sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr), v5 = sub_1001C6798(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1001C67A8();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1000F54C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1001C6DF8();
  sub_1001C60E8();
  v6 = sub_1001C6E28();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1001C6D08() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_1000F55C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_1001C6208();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1000ADE44(0, 1, 1, _swiftEmptyArrayStorage);
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
    v14 = sub_1000ADE44((a7 > 1), v10, 1, v14);
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
        v19 = sub_1001C61E8();
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

        v14 = sub_1001C6108();
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
        v18 = sub_1001C6108();
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
          v7 = sub_1001C6208();
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

        v14 = sub_1000ADE44(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1001C6208();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1000ADE44(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1000ADE44((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1001C6108();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000F5980@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = _swiftEmptyArrayStorage;
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = sub_1001C6838();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = sub_1001C6808() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = sub_1001C6808();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = sub_1001C6848();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1000ADE44(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_1000ADE44((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = sub_1001C6808();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = sub_1001C6848();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = sub_1000ADE44((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = sub_1000ADE44(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = sub_1001C6848();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = sub_1000ADE44(0, 1, 1, _swiftEmptyArrayStorage);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return _swiftEmptyArrayStorage;
}

Swift::String __swiftcall CKRecordID.bds_recordType()()
{
  v1 = [v0 recordName];
  v2 = sub_1001C6018();
  v4 = v3;

  v12[0] = 46;
  v12[1] = 0xE100000000000000;
  v11[2] = v12;
  v5 = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1001001B8, v11, v2, v4, v12);
  if (v5[2])
  {

    v7 = sub_1001C60B8();
    v9 = v8;

    v5 = v7;
    v6 = v9;
  }

  else
  {
    __break(1u);
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

char *sub_1000F5F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v142 = a5;
  v143 = a6;
  v141 = a4;
  v140 = a3;
  v145 = a1;
  v146 = a2;
  v136 = sub_100084528(&qword_100270F28, &qword_1001F3640);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v112 - v7;
  v133 = sub_100084528(&qword_100270F30, &qword_1001F3648);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v112 - v8;
  v127 = sub_100084528(&qword_100270F38, &qword_1001F3650);
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v112 - v9;
  v130 = sub_100084528(&qword_100270F40, &qword_1001F3658);
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v112 - v10;
  v121 = sub_100084528(&qword_100270F48, &qword_1001F3660);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v112 - v11;
  v124 = sub_100084528(&qword_100270F50, &qword_1001F3668);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v112 - v12;
  v13 = sub_100084528(&qword_100270F58, &qword_1001F3670);
  __chkstk_darwin(v13 - 8);
  v118 = &v112 - v14;
  v114 = sub_100084528(&qword_100270F60, &qword_1001F3678);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v112 - v15;
  v117 = sub_100084528(&unk_100270F68, &unk_1001F3680);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v112 - v16;
  v151 = sub_1001C6668();
  v149 = *(v151 - 1);
  __chkstk_darwin(v151);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001C6638();
  __chkstk_darwin(v19);
  v20 = sub_1001C5688();
  __chkstk_darwin(v20 - 8);
  *&v6[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_kChangedRecordsBatchSize] = 32;
  *&v6[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_subscribers] = _swiftEmptyArrayStorage;
  v150 = v6;
  sub_1001C5138();
  v148 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue;
  v153 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v147 = "SyncVersionTransaction";
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v152 = static BDSSyncEngine.shared;
  v21 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  sub_1001C5668();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  v22 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v23 = *(v149 + 104);
  v24 = v151;
  v23(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v151);
  v25 = sub_1001C66A8();
  v26 = v150;
  *&v150[v148] = v25;
  v149 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue;
  sub_1001C6628();
  sub_1001C5668();
  v23(v18, v22, v24);
  *&v26[v149] = sub_1001C66A8();
  v26[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline__hasPendingModifications] = 0;
  v27 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_currentModifyBatchResponse;
  type metadata accessor for _BDSSyncEngineModifyBatchResponse();
  v28 = swift_allocObject();
  v28[2] = _swiftEmptyArrayStorage;
  v28[3] = _swiftEmptyArrayStorage;
  v28[4] = _swiftEmptyArrayStorage;
  v28[5] = _swiftEmptyArrayStorage;
  *&v26[v27] = v28;
  *&v26[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_scheduleSyncBlock] = 0;
  v28[6] = &_swiftEmptyDictionarySingleton;
  v29 = &v26[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType];
  v30 = v145;
  v31 = v146;
  *v29 = v145;
  v29[1] = v31;
  v32 = v30;
  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  v33 = sub_1001C6018();
  v35 = v34;

  v36 = v141;

  v157._countAndFlagsBits = v140;
  v157._object = v36;
  v158._countAndFlagsBits = v33;
  v158._object = v35;
  *&v26[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_zoneID] = sub_1001C65C8(v157, v158);
  v37 = v142;
  *&v26[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_dataMapper] = v143;
  *&v26[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate] = v37;
  *&v26[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_observer] = v37;
  v38 = type metadata accessor for BDSSyncEnginePipeline(0);
  v156.receiver = v26;
  v156.super_class = v38;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v39 = objc_msgSendSuper2(&v156, "init");
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_100100C1C;
  *(v41 + 24) = v40;
  v42 = objc_allocWithZone(BUCoalescingCallBlock);
  aBlock[4] = sub_100100C24;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991BC;
  aBlock[3] = &unk_100247B58;
  v43 = _Block_copy(aBlock);
  v44 = v39;
  swift_retain_n();
  v45 = sub_1001C5FE8();
  v46 = [v42 initWithNotifyBlock:v43 blockDescription:v45];

  _Block_release(v43);

  [v46 setCoalescingDelay:5.0];
  [v46 setMaximumDelay:5.0];

  v47 = v152;
  v48 = *&v44[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_scheduleSyncBlock];
  *&v44[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_scheduleSyncBlock] = v46;

  v49 = swift_allocObject();
  *(v49 + 16) = _swiftEmptyArrayStorage;
  v50 = v49;
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 2) = v50;
  *(v52 + 3) = v51;
  v139 = v50;
  *(v52 + 4) = v32;
  *(v52 + 5) = v31;
  v53 = swift_allocObject();
  *(v53 + 16) = _swiftEmptyArrayStorage;
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v55[2] = v53;
  v55[3] = v54;
  v55[4] = v32;
  v55[5] = v31;
  v137 = v55;
  swift_bridgeObjectRetain_n();
  v56 = v44;

  v138 = v53;

  sub_100100204(v56, v32, v31, v47);

  v57 = v56;
  sub_1001003CC(v57, v47);

  aBlock[0] = *&v47[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_recordChangePublisher];
  v144 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue;
  v154 = *&v57[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v58 = v154;
  v59 = sub_1001C6658();
  v60 = *(v59 - 8);
  v61 = *(v60 + 56);
  v62 = v118;
  v148 = v59;
  v150 = (v60 + 56);
  v151 = v61;
  (v61)(v118, 1, 1);

  v63 = v58;
  sub_100084528(&qword_10026ECF0, &unk_1001F3690);
  sub_1000885F4(&qword_100270F78, &qword_10026ECF0, &unk_1001F3690, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v64 = sub_100100B90(&qword_100270F80, &qword_10026F2D0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v65 = v112;
  v149 = v64;
  sub_1001C51C8();
  v66 = v62;
  sub_10008875C(v62, &qword_100270F58, &qword_1001F3670);

  v67 = swift_allocObject();
  v68 = v146;
  *(v67 + 16) = v145;
  *(v67 + 24) = v68;
  sub_1000885F4(&qword_100270F88, &qword_100270F60, &qword_1001F3678, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v69 = v115;
  v70 = v114;
  sub_1001C51B8();

  (*(v113 + 8))(v65, v70);
  v71 = swift_allocObject();
  v71[2] = v139;
  v71[3] = 32;
  v71[4] = sub_100100C68;
  v71[5] = v52;
  sub_1000885F4(&unk_100270F90, &unk_100270F68, &unk_1001F3680, &protocol conformance descriptor for Publishers.Filter<A>);

  v147 = v52;

  v72 = v117;
  sub_1001C51A8();

  (*(v116 + 8))(v69, v72);
  v73 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_subscribers;
  swift_beginAccess();
  sub_1001C6278();
  if (*((*&v57[v73] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v57[v73] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1001C62B8();
  }

  sub_1001C62E8();
  swift_endAccess();
  aBlock[0] = *(v152 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_recordDeletionPublisher);
  v154 = *&v57[v144];
  v74 = v154;
  (v151)(v66, 1, 1, v148);

  v75 = v74;
  sub_100084528(&qword_10026ECF8, &unk_1001F06C0);
  sub_1000885F4(&qword_100270FA0, &qword_10026ECF8, &unk_1001F06C0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v76 = v119;
  sub_1001C51C8();
  sub_10008875C(v66, &qword_100270F58, &qword_1001F3670);

  v77 = swift_allocObject();
  v78 = v146;
  *(v77 + 16) = v145;
  *(v77 + 24) = v78;
  sub_1000885F4(&qword_100270FA8, &qword_100270F48, &qword_1001F3660, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v79 = v122;
  v80 = v121;
  sub_1001C51B8();

  (*(v120 + 8))(v76, v80);
  v81 = swift_allocObject();
  v81[2] = v138;
  v81[3] = 32;
  v82 = v137;
  v81[4] = sub_100100CBC;
  v81[5] = v82;
  sub_1000885F4(&unk_100270FB0, &qword_100270F50, &qword_1001F3668, &protocol conformance descriptor for Publishers.Filter<A>);

  v83 = v124;
  sub_1001C51A8();

  (*(v123 + 8))(v79, v83);
  swift_beginAccess();
  sub_1001C6278();
  if (*((*&v57[v73] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v57[v73] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1001C62B8();
  }

  sub_1001C62E8();
  swift_endAccess();
  aBlock[0] = *(v152 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_endFetchingChangesPublisher);
  v154 = *&v57[v144];
  v84 = v154;
  (v151)(v66, 1, 1, v148);

  v85 = v84;
  sub_100084528(&qword_10026ED08, &qword_1001F06D0);
  sub_1000885F4(&qword_100270FC0, &qword_10026ED08, &qword_1001F06D0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v86 = v125;
  sub_1001C51C8();
  sub_10008875C(v66, &qword_100270F58, &qword_1001F3670);

  v87 = swift_allocObject();
  v88 = v141;
  *(v87 + 16) = v140;
  *(v87 + 24) = v88;
  sub_1000885F4(&qword_100270FC8, &qword_100270F38, &qword_1001F3650, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v89 = v128;
  v90 = v127;
  sub_1001C51B8();

  (*(v126 + 8))(v86, v90);
  v91 = swift_allocObject();
  v91[2] = sub_100100CBC;
  v91[3] = v82;
  v92 = v147;
  v91[4] = sub_100100C68;
  v91[5] = v92;
  sub_1000885F4(&unk_100270FD0, &qword_100270F40, &qword_1001F3658, &protocol conformance descriptor for Publishers.Filter<A>);

  v93 = v130;
  sub_1001C51A8();

  (*(v129 + 8))(v89, v93);
  swift_beginAccess();
  sub_1001C6278();
  v94 = v73;
  v95 = *((*&v57[v73] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v96 = *((*&v57[v73] & 0xFFFFFFFFFFFFFF8) + 0x18);
  v97 = v144;
  v98 = v82;
  v99 = v148;
  if (v95 >= v96 >> 1)
  {
    sub_1001C62B8();
  }

  v117 = v94;
  sub_1001C62E8();
  swift_endAccess();
  aBlock[0] = *(v152 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_updateMetadataPublisher);
  v154 = *&v57[v97];
  v100 = v154;
  (v151)(v66, 1, 1, v99);

  v101 = v100;
  sub_100084528(&qword_10026ED10, &qword_1001F06D8);
  sub_1000885F4(&qword_100270FE0, &qword_10026ED10, &qword_1001F06D8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v102 = v131;
  sub_1001C51C8();
  sub_10008875C(v66, &qword_100270F58, &qword_1001F3670);

  v103 = swift_allocObject();
  v103[2] = sub_100100CBC;
  v103[3] = v98;
  v104 = v147;
  v103[4] = sub_100100C68;
  v103[5] = v104;
  sub_1000885F4(&unk_100270FE8, &qword_100270F30, &qword_1001F3648, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v105 = v117;

  v106 = v133;
  sub_1001C51A8();

  (*(v132 + 8))(v102, v106);
  swift_beginAccess();
  sub_1001C6278();
  if (*((*&v57[v105] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v57[v105] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1001C62B8();
  }

  sub_1001C62E8();
  swift_endAccess();
  aBlock[0] = *(v152 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_accountChangedPublisher);
  v154 = *&v57[v97];
  v107 = v154;
  (v151)(v66, 1, 1, v148);

  v108 = v107;
  sub_100084528(&qword_10026ED00, qword_1001F36A0);
  sub_1000885F4(&qword_100270FF8, &qword_10026ED00, qword_1001F36A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v109 = v134;
  sub_1001C51C8();
  sub_10008875C(v66, &qword_100270F58, &qword_1001F3670);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000885F4(&unk_100271000, &qword_100270F28, &qword_1001F3640, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v110 = v136;
  sub_1001C51A8();

  (*(v135 + 8))(v109, v110);
  swift_beginAccess();
  sub_1001C6278();
  if (*((*&v57[v105] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v57[v105] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1001C62B8();
  }

  sub_1001C62E8();
  swift_endAccess();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v57;
}

void sub_1000F7A28(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_10026EC78 != -1)
    {
      swift_once();
    }

    BDSSyncEngine.scheduleSync()();
  }
}

uint64_t sub_1000F7AB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1001C5148();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  __chkstk_darwin(v10);
  v12 = &isa - v11;
  swift_beginAccess();
  v13 = *(a1 + 16);
  if (v13 >> 62)
  {
    result = sub_1001C6B38();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v47 = &isa - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = a3;
    v17 = *(Strong + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_observer);
    swift_beginAccess();
    v18 = *(a1 + 16);
    v19 = qword_10026EC78;
    v48 = v17;
    swift_unknownObjectRetain();

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_persistFetchCoordinatorGroup);
    v51 = v8;
    v21 = *(v8 + 16);
    v49 = v16;
    v45 = v21;
    v21(v12, &v16[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger], v7);
    v46 = v20;
    dispatch_group_enter(v46);

    v22 = v12;
    v23 = sub_1001C5128();
    v24 = sub_1001C6588();

    v25 = os_log_type_enabled(v23, v24);
    v50 = a4;
    if (v25)
    {
      isa = v7;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_1001874E8(v52, a4, aBlock);
      *(v26 + 12) = 2048;
      if (v18 >> 62)
      {
        v28 = sub_1001C6B38();
      }

      else
      {
        v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v26 + 14) = v28;

      _os_log_impl(&_mh_execute_header, v23, v24, "BDSSyncEnginePipeline - processIncomingRecordChanges: [%s] Begin processing %ld updates", v26, 0x16u);
      sub_10008E7BC(v27);

      v7 = isa;
    }

    else
    {
    }

    sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
    isa = sub_1001C6288().super.isa;
    v29 = v47;
    v44 = v22;
    v45(v47, v22, v7);
    v30 = v51;
    v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v32 = (v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = v7;
    v34 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    (*(v30 + 32))(v36 + v31, v29, v33);
    v37 = (v36 + v32);
    v38 = v50;
    *v37 = v52;
    v37[1] = v38;
    *(v36 + v34) = v18;
    v39 = v46;
    *(v36 + v35) = v46;
    aBlock[4] = sub_100100EB0;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100247EA0;
    v40 = _Block_copy(aBlock);
    v41 = v39;

    v42 = isa;
    [v48 updatedCloudRecords:isa completion:v40];
    _Block_release(v40);

    swift_unknownObjectRelease();
    (*(v30 + 8))(v44, v33);
  }

  swift_beginAccess();
  *(a1 + 16) = _swiftEmptyArrayStorage;
}

void sub_1000F7FF0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, NSObject *a5)
{

  v9 = sub_1001C5128();
  v10 = sub_1001C6588();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1001874E8(a2, a3, &v14);
    *(v11 + 12) = 2048;
    if (a4 >> 62)
    {
      v13 = sub_1001C6B38();
    }

    else
    {
      v13 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 14) = v13;

    _os_log_impl(&_mh_execute_header, v9, v10, "BDSSyncEnginePipeline - processIncomingRecordChanges: [%s] Done processing %ld updates", v11, 0x16u);
    sub_10008E7BC(v12);
  }

  else
  {
  }

  dispatch_group_leave(a5);
}

uint64_t sub_1000F8168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001C5148();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  swift_beginAccess();
  v14 = *(a1 + 16);
  if (v14 >> 62)
  {
    result = sub_1001C6B38();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v49 = a3;
    v50 = v7;
    v18 = *(Strong + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_observer);
    swift_beginAccess();
    v19 = *(a1 + 16);
    v20 = qword_10026EC78;
    v46 = v18;
    swift_unknownObjectRetain();
    v44 = v19;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_persistFetchCoordinatorGroup);
    v22 = *(v8 + 16);
    v47 = v17;
    v43 = v22;
    v22(v13, &v17[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger], v50);
    v45 = v21;
    dispatch_group_enter(v45);

    v23 = a4;
    v24 = sub_1001C5128();
    v25 = sub_1001C6588();
    v48 = v23;

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v8;
      v28 = v27;
      aBlock[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1001874E8(v49, v48, aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "BDSSyncEnginePipeline - processIncomingRecordDeletions: [%s] Begin processing deletes", v26, 0xCu);
      sub_10008E7BC(v28);
      v8 = v42;
    }

    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    isa = sub_1001C6288().super.isa;

    v30 = v50;
    v43(v11, v13, v50);
    v31 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v32 = v8;
    v33 = (v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    (*(v32 + 32))(v35 + v31, v11, v30);
    v36 = (v35 + v33);
    v37 = v48;
    *v36 = v49;
    v36[1] = v37;
    v38 = v45;
    *(v35 + v34) = v45;
    aBlock[4] = sub_100100E14;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100247E50;
    v39 = _Block_copy(aBlock);
    v40 = v38;

    [v46 removedCloudRecordsWithIDs:isa completion:v39];
    _Block_release(v39);

    swift_unknownObjectRelease();
    (*(v32 + 8))(v13, v30);
  }

  swift_beginAccess();
  *(a1 + 16) = _swiftEmptyArrayStorage;
}

void sub_1000F862C(uint64_t a1, uint64_t a2, unint64_t a3, NSObject *a4)
{

  v7 = sub_1001C5128();
  v8 = sub_1001C6588();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1001874E8(a2, a3, &v11);
    _os_log_impl(&_mh_execute_header, v7, v8, "BDSSyncEnginePipeline - processIncomingRecordDeletions: [%s] Done processing deletes", v9, 0xCu);
    sub_10008E7BC(v10);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1000F8750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1001C6758() == a2 && v4 == a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1001C6D08();
  }

  return v6 & 1;
}

void *sub_1000F87C0(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 recordName];
  v6 = sub_1001C6018();
  v8 = v7;

  v16[0] = 46;
  v16[1] = 0xE100000000000000;
  v15[2] = v16;
  result = sub_1000F55C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1001012A4, v15, v6, v8, v16);
  if (result[2])
  {

    v10 = sub_1001C60B8();
    v12 = v11;

    if (v10 == a2 && v12 == a3)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1001C6D08();
    }

    return (v14 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F88FC(void **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *a1;
  swift_beginAccess();
  v8 = v7;
  sub_1001C6278();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1001C62B8();
  }

  sub_1001C62E8();
  v9 = *(a2 + 16);
  swift_endAccess();
  if (v9 >> 62)
  {
    result = sub_1001C6B38();
    if (result < a3)
    {
      return result;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < a3)
    {
      return result;
    }
  }

  return a4();
}

uint64_t sub_1000F8A04(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3)
  {
    v6 = [v3 zoneName];
    v7 = sub_1001C6018();
    v9 = v8;

    if (v7 == a2 && v9 == a3)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1001C6D08();
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

void sub_1000F8AAC(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000FE7CC(v2);
  }
}

Swift::Void __swiftcall BDSSyncEnginePipeline.signalSyncToCK()()
{
  v1 = v0;
  v2 = sub_1001C5648();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C5128();
  v7 = sub_1001C65B8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1001874E8(0xD000000000000010, 0x80000001002016C0, aBlock);
    _os_log_impl(&_mh_execute_header, v6, v7, "BDSSyncEnginePipeline - %s", v8, 0xCu);
    sub_10008E7BC(v9);
  }

  v10 = *(v1 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue);
  v11 = sub_1001C5638();
  __chkstk_darwin(v11);
  *(&v18 - 2) = v1;
  *(&v18 - 8) = 1;
  sub_1001C6678();

  (*(v3 + 8))(v5, v2);
  v12 = os_transaction_create();
  v13 = *(v1 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_scheduleSyncBlock);
  if (v13)
  {
    v14 = v12;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    aBlock[4] = MarkedAsFinishedMechanism.rawValue.getter;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_1002478F0;
    v16 = _Block_copy(aBlock);
    v17 = v13;
    swift_unknownObjectRetain();

    [v17 signalWithCompletion:v16];
    swift_unknownObjectRelease();
    _Block_release(v16);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t BDSSyncEnginePipeline.startSyncToCK()()
{
  v1[2] = v0;
  v2 = sub_1001C5648();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8FFC, 0, 0);
}

uint64_t sub_1000F8FFC(uint64_t a1)
{
  v15 = v1;
  v1[6] = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1001874E8(0x6E79537472617473, 0xEF29284B436F5463, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEnginePipeline - %s", v4, 0xCu);
    sub_10008E7BC(v5);
  }

  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v8 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue);
  sub_1001C5638();
  v11 = swift_task_alloc();
  *(v11 + 16) = v8;
  *(v11 + 24) = 1;
  sub_1001C6678();

  (*(v7 + 8))(v6, v9);
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  v1[7] = v12;
  *v12 = v1;
  v12[1] = sub_1000F9250;

  return BDSSyncEngine.sendChangesIfReady()();
}

uint64_t sub_1000F9250()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000F938C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000F938C()
{
  v10 = v0;
  swift_errorRetain();
  v1 = sub_1001C5128();
  v2 = sub_1001C6598();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_1001874E8(0x6E79537472617473, 0xEF29284B436F5463, &v9);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "BDSSyncEnginePipeline - %s error: %@", v3, 0x16u);
    sub_10008875C(v4, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000F96D8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000F9780;

  return BDSSyncEnginePipeline.startSyncToCK()();
}

uint64_t sub_1000F9780()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t BDSSyncEnginePipeline.fetchRecord(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000F9958;

  return sub_1001007C0();
}

uint64_t sub_1000F9958(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000F9BDC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000F9CAC;

  return sub_1001007C0();
}

uint64_t sub_1000F9CAC(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

id BDSSyncEnginePipeline.privacyDelegate()()
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v1 = static BDSSyncEngine.shared;

  return v1;
}

uint64_t BDSSyncEnginePipeline.nextRecordZoneChangeBatch(zoneIDs:fetchLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_1001C5648();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000F9F94, 0, 0);
}

uint64_t sub_1000F9F94()
{
  v31 = v0;
  v1 = *(v0 + 176);
  *(v0 + 208) = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger;
  v2 = v1;
  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x80000001002016E0, v30);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1001874E8(*(v5 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType), *(v5 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8), v30);
    _os_log_impl(&_mh_execute_header, v3, v4, "BDSSyncEnginePipeline - %s: [%s]", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (sub_1000F53B0(*(*(v0 + 176) + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_zoneID), *(v0 + 160)))
  {
    v7 = *(v0 + 176);
    v8 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue;
    *(v0 + 216) = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue;
    v9 = *(v7 + v8);
    *(swift_task_alloc() + 16) = v7;
    v10 = v9;
    sub_1001C6688();
    *(v0 + 224) = 0;

    v11 = *(v0 + 176);
    if (*(v0 + 288) == 1)
    {
      *(v0 + 232) = os_transaction_create();
      v12 = &v11[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType];
      v13 = *&v11[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType];
      *(v0 + 240) = v13;
      v14 = *(v12 + 1);
      *(v0 + 248) = v14;

      v15 = sub_1001C5128();
      v16 = sub_1001C65B8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v30[0] = swift_slowAlloc();
        *v17 = 136315394;
        *(v17 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x80000001002016E0, v30);
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_1001874E8(v13, v14, v30);
        _os_log_impl(&_mh_execute_header, v15, v16, "BDSSyncEnginePipeline - %s: [%s] About to fetch dirty changes", v17, 0x16u);
        swift_arrayDestroy();
      }

      v18 = *(v0 + 168);
      v19 = *(*(v0 + 176) + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1000FA540;
      v20 = swift_continuation_init();
      *(v0 + 136) = sub_100084528(&qword_100270B78, &qword_1001F3520);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1000FAB84;
      *(v0 + 104) = &unk_100247918;
      *(v0 + 112) = v20;
      [v19 nextBatchOfMutableCloudDataToSaveToCKWithFetchLimit:v18 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    v21 = v11;
    v22 = sub_1001C5128();
    v23 = sub_1001C65B8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 176);
      v25 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x80000001002016E0, v30);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_1001874E8(*(v24 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType), *(v24 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8), v30);
      _os_log_impl(&_mh_execute_header, v22, v23, "BDSSyncEnginePipeline - %s: [%s] No pending modifications. Returning nil", v25, 0x16u);
      swift_arrayDestroy();
    }
  }

  v26 = *(v0 + 152);
  v27 = sub_1001C5378();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1000FA540()
{

  return _swift_task_switch(sub_1000FA620, 0, 0);
}

uint64_t sub_1000FA620()
{
  v26 = v0;
  v1 = v0[18];
  v0[32] = v1;
  if (v1)
  {
    v2 = v0[29];
    v3 = swift_allocObject();
    v0[33] = v3;
    swift_unknownObjectWeakInit();
    v4 = swift_task_alloc();
    v0[34] = v4;
    v4[2] = v3;
    v4[3] = v1;
    v4[4] = v2;
    v5 = swift_task_alloc();
    v0[35] = v5;
    v6 = sub_100084528(&qword_100270B80, &unk_1001F3528);
    *v5 = v0;
    v5[1] = sub_1000FA9C4;
    v7 = v0[19];

    return withCheckedContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD00000000000002ELL, 0x80000001002016E0, sub_100100964, v4, v6);
  }

  else
  {

    v8 = sub_1001C5128();
    v9 = sub_1001C65B8();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[31];
    if (v10)
    {
      v12 = v0[30];
      v13 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x80000001002016E0, v25);
      *(v13 + 12) = 2080;
      v14 = sub_1001874E8(v12, v11, v25);

      *(v13 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "BDSSyncEnginePipeline - %s: [%s] no more dirty changes", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v16 = v0[24];
    v15 = v0[25];
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[19];
    v20 = *(v18 + v0[27]);
    sub_1001C5638();
    v21 = swift_task_alloc();
    *(v21 + 16) = v18;
    *(v21 + 24) = 0;
    sub_1001C6678();
    swift_unknownObjectRelease();

    (*(v16 + 8))(v15, v17);
    v22 = sub_1001C5378();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1000FA9C4()
{

  return _swift_task_switch(sub_1000FAB1C, 0, 0);
}

uint64_t sub_1000FAB1C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FAB84(uint64_t a1, uint64_t a2)
{
  v3 = *sub_10009BB74((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_100088714(0, &qword_100270F00, off_10023DD10);
    v4 = sub_1001C6298();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1000FAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v5 = sub_1001C5648();
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5688();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&qword_100271018, &unk_1001F36F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = sub_100084528(&qword_100270B80, &unk_1001F3528);
  __chkstk_darwin(v16 - 8);
  v18 = &v31 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = *(Strong + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue);
    v33 = v5;
    v20 = Strong;
    (*(v12 + 16))(v15, a1, v11);
    v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v22 = swift_allocObject();
    v23 = v7;
    v24 = v35;
    *(v22 + 16) = v20;
    *(v22 + 24) = v24;
    (*(v12 + 32))(v22 + v21, v15, v11);
    *(v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
    aBlock[4] = sub_100101100;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100248080;
    v25 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v26 = v32;
    v27 = v20;

    sub_1001C5668();
    v39 = _swiftEmptyArrayStorage;
    sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100084528(&unk_10026F360, &qword_1001F13F0);
    sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
    v28 = v33;
    sub_1001C68C8();
    sub_1001C6698();
    _Block_release(v25);

    (*(v38 + 8))(v23, v28);
    (*(v36 + 8))(v10, v37);
  }

  else
  {
    v30 = sub_1001C5378();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    return sub_1001C6328();
  }
}

uint64_t sub_1000FB0C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100084528(&qword_100270B80, &unk_1001F3528);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_1000FB1D4(a2, &v10 - v7);
  sub_10010119C(v8, v6);
  sub_100084528(&qword_100271018, &unk_1001F36F0);
  sub_1001C6328();
  return sub_10008875C(v8, &qword_100270B80, &unk_1001F3528);
}

uint64_t sub_1000FB1D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v48 = a2;
  v6 = sub_1001C5648();
  v47[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType);
  v9 = *(v2 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8);
  v11 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_logger;

  v47[1] = v11;
  v12 = sub_1001C5128();
  LOBYTE(v13) = sub_1001C65B8();

  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_6;
  }

  v3 = swift_slowAlloc();
  v49[0] = swift_slowAlloc();
  *v3 = 136315650;
  *(v3 + 4) = sub_1001874E8(0xD000000000000029, 0x8000000100201B50, v49);
  *(v3 + 12) = 2080;
  *(v3 + 14) = sub_1001874E8(v10, v9, v49);
  *(v3 + 22) = 2048;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1001C6B38())
  {
    *(v3 + 24) = i;

    _os_log_impl(&_mh_execute_header, v12, v13, "BDSSyncEnginePipeline - %s: [%s] %ld dirty changes", v3, 0x20u);
    swift_arrayDestroy();

LABEL_6:
    v13 = _swiftEmptyArrayStorage;
    v50 = _swiftEmptyArrayStorage;
    v51 = _swiftEmptyArrayStorage;
    v15 = *(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_currentModifyBatchResponse);
    swift_beginAccess();

    sub_1000FE93C(a1, &v51, &v50, v15 + 48);
    swift_endAccess();

    a1 = v51;
    v16 = v51 >> 62;
    if (v51 >> 62)
    {
      if (sub_1001C6B38())
      {
        goto LABEL_10;
      }
    }

    else if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    v3 = v50;
    if (v50 >> 62)
    {
      if (!sub_1001C6B38())
      {
LABEL_37:

        v41 = sub_1001C5128();
        v42 = sub_1001C65B8();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v49[0] = swift_slowAlloc();
          *v43 = 136315394;
          *(v43 + 4) = sub_1001874E8(0xD000000000000029, 0x8000000100201B50, v49);
          *(v43 + 12) = 2080;
          v44 = sub_1001874E8(v10, v9, v49);

          *(v43 + 14) = v44;
          _os_log_impl(&_mh_execute_header, v41, v42, "BDSSyncEnginePipeline - %s: [%s] Cannot create CKRecords to save", v43, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v25 = v48;
        v45 = *(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_stateQueue);
        v46 = sub_1001C5638();
        __chkstk_darwin(v46);
        v47[-2] = v4;
        LOBYTE(v47[-1]) = 0;
        sub_1001C6678();

        (*(v47[0] + 8))(v8, v6);
        v38 = 1;
        goto LABEL_29;
      }
    }

    else if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_10:
    if (v16)
    {
      v6 = sub_1001C6B38();
      if (!v6)
      {
LABEL_20:

        v21 = _swiftEmptyArrayStorage;
        goto LABEL_21;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    v49[0] = _swiftEmptyArrayStorage;

    v12 = v49;
    sub_1001C6A78();
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_33:
    ;
  }

  v47[0] = v10;
  v17 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = sub_1001C69F8();
    }

    else
    {
      v18 = *(a1 + 8 * v17 + 32);
    }

    v19 = v18;
    ++v17;
    v20 = [v18 recordID];

    sub_1001C6A48();
    sub_1001C6A88();
    sub_1001C6A98();
    sub_1001C6A58();
  }

  while (v6 != v17);
  v21 = v49[0];
  v10 = v47[0];
LABEL_21:

  v22 = sub_1001C5128();
  v23 = sub_1001C65B8();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v48;
  if (v24)
  {
    v26 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v26 = 136316418;
    *(v26 + 4) = sub_1001874E8(0xD000000000000029, 0x8000000100201B50, v49);
    *(v26 + 12) = 2080;
    v27 = sub_1001874E8(v10, v9, v49);

    *(v26 + 14) = v27;
    *(v26 + 22) = 2048;
    if (v21 >> 62)
    {
      v28 = sub_1001C6B38();
    }

    else
    {
      v28 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 24) = v28;

    *(v26 + 32) = 2080;
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    v29 = sub_1001C62A8();
    v31 = v30;

    v32 = sub_1001874E8(v29, v31, v49);

    *(v26 + 34) = v32;
    *(v26 + 42) = 2048;
    swift_beginAccess();
    if (v50 >> 62)
    {
      v33 = sub_1001C6B38();
    }

    else
    {
      v33 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 44) = v33;
    *(v26 + 52) = 2080;

    v34 = sub_1001C62A8();
    v36 = v35;

    v37 = sub_1001874E8(v34, v36, v49);

    *(v26 + 54) = v37;
    _os_log_impl(&_mh_execute_header, v22, v23, "BDSSyncEnginePipeline - %s: [%s] Returning records %ld idsToSave=%s, %ld idsToDelete=%s", v26, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();

  sub_1001C5338();
  v38 = 0;
LABEL_29:
  v39 = sub_1001C5378();
  (*(*(v39 - 8) + 56))(v25, v38, 1, v39);
}

Swift::Void __swiftcall BDSSyncEnginePipeline.didSave(record:)(CKRecord record)
{
  v2 = v1;
  v4 = sub_1001C5648();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5688();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = record.super.isa;
  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v5;
    v17 = v16;
    aBlock[0] = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_1001874E8(0xD000000000000010, 0x8000000100201780, aBlock);
    *(v14 + 12) = 2112;
    v18 = [(objc_class *)v11 recordID];
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "BDSSyncEnginePipeline - %s: %@", v14, 0x16u);
    sub_10008875C(v15, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v17);
    v5 = v25;
  }

  v19 = *&v2[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v11;
  aBlock[4] = sub_100100970;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100247990;
  v21 = _Block_copy(aBlock);
  v22 = v11;
  v23 = v19;
  v24 = v2;
  sub_1001C5668();
  v28 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v21);

  (*(v5 + 8))(v7, v4);
  (*(v26 + 8))(v10, v27);
}

void sub_1000FBE70(void *a1)
{
  v3 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_currentModifyBatchResponse;
  v4 = *(v1 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_currentModifyBatchResponse);

  v5 = [a1 recordID];
  swift_beginAccess();
  v6 = *(v4 + 48);

  v7 = sub_1000F51FC(v5, v6, &qword_100270F00, off_10023DD10);

  if (!v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
    v9 = [a1 recordID];
    v7 = [v8 mutableCloudDataForRecordID:v9];

    if (!v7)
    {
      return;
    }

    v10 = v1;
    v11 = sub_1001C5128();
    v12 = sub_1001C6598();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1001874E8(0xD000000000000013, 0x8000000100201B30, &v17);
      _os_log_impl(&_mh_execute_header, v11, v12, "BDSSyncEnginePipeline - %s: Unable to find outstanding cloudData. Overwrite existing.", v13, 0xCu);
      sub_10008E7BC(v14);
    }

    v1 = v10;
  }

  [v7 setSystemFields:a1];
  v15 = *(v1 + v3);

  v16 = [a1 recordID];
  sub_1001006E4(v7, v16, v15);
}

uint64_t BDSSyncEnginePipeline.failedToSaveRecordWith(recordID:error:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001C5648();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5688();
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v15 = 136315394;
    *(v15 + 4) = sub_1001874E8(0xD000000000000027, 0x80000001002017A0, aBlock);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v17 = v12;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEnginePipeline - %s: %@", v15, 0x16u);
    sub_10008875C(v17, &unk_1002718E0, &qword_1001F31F0);
    a2 = v28;

    sub_10008E7BC(v18);
  }

  v20 = *&v3[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v21 = swift_allocObject();
  v21[2] = v3;
  v21[3] = v12;
  v21[4] = a2;
  aBlock[4] = sub_100100998;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002479E0;
  v22 = _Block_copy(aBlock);
  v23 = v12;
  v24 = v20;
  v25 = v3;
  swift_errorRetain();
  sub_1001C5668();
  v32 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v22);

  (*(v31 + 8))(v8, v6);
  (*(v29 + 8))(v11, v30);
}

Swift::Void __swiftcall BDSSyncEnginePipeline.didDeleteRecordWith(recordID:)(CKRecordID recordID)
{
  v2 = v1;
  v4 = sub_1001C5648();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5688();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = recordID.super.isa;
  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v5;
    v17 = v16;
    aBlock[0] = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_1001874E8(0xD00000000000001ELL, 0x80000001002017D0, aBlock);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v11;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "BDSSyncEnginePipeline - %s: %@", v14, 0x16u);
    sub_10008875C(v15, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v17);
    v5 = v25;
  }

  v19 = *&v2[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  *(v20 + 24) = v11;
  aBlock[4] = sub_1001009C4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100247A30;
  v21 = _Block_copy(aBlock);
  v22 = v11;
  v23 = v19;
  v24 = v2;
  sub_1001C5668();
  v28 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v21);

  (*(v5 + 8))(v7, v4);
  (*(v26 + 8))(v10, v27);
}

uint64_t sub_1000FC8F0(uint64_t a1, void *a2)
{

  sub_1000FF724(a2);
}

uint64_t BDSSyncEnginePipeline.failedToDeleteRecordWith(recordID:error:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001C5648();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5688();
  v29 = *(v9 - 8);
  v30 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v15 = 136315394;
    *(v15 + 4) = sub_1001874E8(0xD000000000000029, 0x80000001002017F0, aBlock);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v17 = v12;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "BDSSyncEnginePipeline - %s: %@", v15, 0x16u);
    sub_10008875C(v17, &unk_1002718E0, &qword_1001F31F0);
    a2 = v28;

    sub_10008E7BC(v18);
  }

  v20 = *&v3[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v21 = swift_allocObject();
  v21[2] = v3;
  v21[3] = v12;
  v21[4] = a2;
  aBlock[4] = sub_1001012C0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100247A80;
  v22 = _Block_copy(aBlock);
  v23 = v12;
  v24 = v20;
  v25 = v3;
  swift_errorRetain();
  sub_1001C5668();
  v32 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v22);

  (*(v31 + 8))(v8, v6);
  (*(v29 + 8))(v11, v30);
}

uint64_t sub_1000FCD64(void *a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType);
  v5 = *(v2 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8);
  swift_beginAccess();
  v6 = a1[2];
  swift_beginAccess();
  v7 = a1[3];
  swift_beginAccess();
  v8 = a1[4];
  swift_beginAccess();
  v9 = a1[5];
  v47 = v9 >> 62;
  if (v9 >> 62)
  {
    v10 = sub_1001C6B38();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = sub_1001C5128();
  v12 = v7 >> 62;
  v50 = v8;
  v51 = v8 >> 62;
  v48 = v10;
  if (v10)
  {
    v13 = sub_1001C6598();
    if (os_log_type_enabled(v11, v13))
    {
      v14 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v14 = 136316418;
      *(v14 + 4) = sub_1001874E8(0xD000000000000019, 0x8000000100201B80, &aBlock);
      *(v14 + 12) = 2080;
      v15 = sub_1001874E8(v4, v5, &aBlock);

      *(v14 + 14) = v15;
      *(v14 + 22) = 2048;
      if (v6 >> 62)
      {
        v16 = sub_1001C6B38();
      }

      else
      {
        v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      *(v14 + 24) = v16;
      *(v14 + 32) = 2048;
      if (v7 >> 62)
      {
        v17 = sub_1001C6B38();
      }

      else
      {
        v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 34) = v17;
      *(v14 + 42) = 2048;
      if (v51)
      {
        v18 = sub_1001C6B38();
      }

      else
      {
        v18 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 44) = v18;
      *(v14 + 52) = 2048;
      if (v47)
      {
        v19 = sub_1001C6B38();
      }

      else
      {
        v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 54) = v19;
      _os_log_impl(&_mh_execute_header, v11, v13, "BDSSyncEnginePipeline - %s: [%s] %ld savedCloudDatas, %ld deletedRecordIDs, %ld serverVersionRecords, %ld failedRecordIDs", v14, 0x3Eu);
      swift_arrayDestroy();

      v27 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!(v6 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v20 = sub_1001C65B8();
    if (os_log_type_enabled(v11, v20))
    {
      v46 = v20;
      v21 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v21 = 136316418;
      *(v21 + 4) = sub_1001874E8(0xD000000000000019, 0x8000000100201B80, &aBlock);
      *(v21 + 12) = 2080;
      v22 = sub_1001874E8(v4, v5, &aBlock);

      *(v21 + 14) = v22;
      *(v21 + 22) = 2048;
      if (v6 >> 62)
      {
        v23 = sub_1001C6B38();
      }

      else
      {
        v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 24) = v23;
      *(v21 + 32) = 2048;
      if (v12)
      {
        v24 = sub_1001C6B38();
      }

      else
      {
        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 34) = v24;
      *(v21 + 42) = 2048;
      if (v51)
      {
        v25 = sub_1001C6B38();
      }

      else
      {
        v25 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 44) = v25;
      *(v21 + 52) = 2048;
      if (v47)
      {
        v26 = sub_1001C6B38();
      }

      else
      {
        v26 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 54) = v26;
      _os_log_impl(&_mh_execute_header, v11, v46, "BDSSyncEnginePipeline - %s: [%s] %ld savedCloudDatas, %ld deletedRecordIDs, %ld serverVersionRecords, %ld failedRecordIDs", v21, 0x3Eu);
      swift_arrayDestroy();

      v27 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!(v6 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  v27 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
LABEL_26:
    v28 = *(v27 + 16);
    goto LABEL_27;
  }

LABEL_45:
  v28 = sub_1001C6B38();
LABEL_27:
  if (v28)
  {
    v29 = v12;
    v30 = *(v52 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
    sub_100084528(&qword_100271010, &unk_1001F1D60);
    isa = sub_1001C6288().super.isa;
    v32 = v52;

    v57 = MarkedAsFinishedMechanism.rawValue.getter;
    v58 = 0;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_10018CA5C;
    v56 = &unk_100247FB8;
    v33 = _Block_copy(&aBlock);
    [v30 syncProvider:v52 updateSyncGenerationFromCloudData:isa completion:v33];
    _Block_release(v33);

    v34 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v29)
    {
      goto LABEL_29;
    }
  }

  else
  {

    v32 = v52;
    v34 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
LABEL_29:
      if (*(v34 + 16))
      {
        goto LABEL_30;
      }

      goto LABEL_36;
    }
  }

  if (sub_1001C6B38())
  {
LABEL_30:
    v35 = *(v32 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    v36 = sub_1001C6288().super.isa;

    v57 = MarkedAsFinishedMechanism.rawValue.getter;
    v58 = 0;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_10018CA5C;
    v56 = &unk_100247FE0;
    v37 = _Block_copy(&aBlock);
    [v35 syncProvider:v32 removeCloudDataForIDs:v36 completion:v37];
    _Block_release(v37);

    v38 = v50;
    if (!v51)
    {
      goto LABEL_31;
    }

    goto LABEL_37;
  }

LABEL_36:

  v38 = v50;
  if (!v51)
  {
LABEL_31:
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

LABEL_38:

    if (v48)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

LABEL_37:
  if (!sub_1001C6B38())
  {
    goto LABEL_38;
  }

LABEL_32:
  v39 = *(v32 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
  sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
  v40 = sub_1001C6288().super.isa;

  v57 = MarkedAsFinishedMechanism.rawValue.getter;
  v58 = 0;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10018CA5C;
  v56 = &unk_100248008;
  v41 = _Block_copy(&aBlock);
  [v39 syncProvider:v32 resolveConflictsForRecords:v40 completion:v41];
  _Block_release(v41);

  if (v48)
  {
LABEL_33:
    v42 = *(v32 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_delegate);
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    v43 = sub_1001C6288().super.isa;

    v57 = MarkedAsFinishedMechanism.rawValue.getter;
    v58 = 0;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_10018CA5C;
    v56 = &unk_100248030;
    v44 = _Block_copy(&aBlock);
    [v42 syncProvider:v32 failedRecordIDs:v43 completion:v44];
    _Block_release(v44);

    goto LABEL_40;
  }

LABEL_39:

LABEL_40:
  a1[2] = _swiftEmptyArrayStorage;

  a1[3] = _swiftEmptyArrayStorage;

  a1[4] = _swiftEmptyArrayStorage;

  a1[5] = _swiftEmptyArrayStorage;

  if (a2)
  {
    return sub_1000FFEA4();
  }

  return result;
}

void sub_1000FD684(void *a1, void *a2)
{
  v4 = v2;
  v85 = a2;
  swift_errorRetain();
  sub_100084528(&unk_100270F10, &unk_1001F1F70);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v6 = v84;
    v85 = _swiftEmptyArrayStorage;
    v7 = sub_1001C5EE8();
    if (v7)
    {
      v8 = v7;
      sub_100100BD4(&qword_10026EFE0, type metadata accessor for CKError, &unk_1001F0B8C);
      sub_1001C49E8();
      if (v83 == 14)
      {
        v9 = a1;
        v10 = v84;
        v11 = sub_1001C5128();
        v12 = sub_1001C6578();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v3 = swift_slowAlloc();
          p_isa = v3;
          *v13 = 136315650;
          *(v13 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x8000000100201B00, &p_isa);
          *(v13 + 12) = 2112;
          *(v13 + 14) = v9;
          *v14 = v9;
          *(v13 + 22) = 2112;
          v15 = v9;
          v16 = v10;
          v17 = _swift_stdlib_bridgeErrorToNSError();
          *(v13 + 24) = v17;
          v14[1] = v17;
          _os_log_impl(&_mh_execute_header, v11, v12, "BDSSyncEnginePipeline - %s: CKErrorServerRecordChanged record %@ perRecordError %@", v13, 0x20u);
          sub_100084528(&unk_1002718E0, &qword_1001F31F0);
          swift_arrayDestroy();

          sub_10008E7BC(v3);
        }

        v18 = &_swiftEmptyDictionarySingleton;
        v19 = v8;
        if (!(&_swiftEmptyDictionarySingleton >> 62))
        {
          goto LABEL_9;
        }

        v20 = sub_1001C6AF8();
        if (!__OFADD__(v20, 1))
        {
          v18 = sub_10017ACE4(&_swiftEmptyDictionarySingleton, v20 + 1);
LABEL_9:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          p_isa = v18;
          sub_10017B130(v19, v9, isUniquelyReferenced_nonNull_native);

          v22 = 0;
          v23 = p_isa;
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_53;
      }

      v41 = v84;
      v42 = v8;
      v43 = sub_1001C5128();
      v44 = sub_1001C6598();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        p_isa = v47;
        *v45 = 136315650;
        *(v45 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x8000000100201B00, &p_isa);
        *(v45 + 12) = 2112;
        *(v45 + 14) = v42;
        *v46 = v8;
        *(v45 + 22) = 2112;
        v48 = v41;
        v49 = v42;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 24) = v50;
        v46[1] = v50;
        _os_log_impl(&_mh_execute_header, v43, v44, "BDSSyncEnginePipeline - %s: Unhandled error for record %@ perRecordError %@", v45, 0x20u);
        sub_100084528(&unk_1002718E0, &qword_1001F31F0);
        swift_arrayDestroy();

        sub_10008E7BC(v47);

LABEL_32:
        v22 = 0;
        v23 = &_swiftEmptyDictionarySingleton;
LABEL_33:
        v64 = _swiftEmptyArrayStorage;
        if ((v23 & 0xC000000000000001) != 0)
        {
          goto LABEL_34;
        }

LABEL_44:
        if (!*(v23 + 16))
        {
LABEL_36:
          if (v64 >> 62)
          {
            if (sub_1001C6B38())
            {
LABEL_38:

              sub_1000FFB60(v64);

              if (v22)
              {
LABEL_39:
                sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
                v66 = [*(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_zoneID) zoneName];
                v67 = sub_1001C6018();
                v69 = v68;

                v87._countAndFlagsBits = sub_1001C6018();
                v87._object = v70;
                v86._countAndFlagsBits = v67;
                v86._object = v69;
                v71.super.isa = sub_1001C65C8(v86, v87).super.isa;
                v72 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v71.super.isa];
                if (qword_10026EC78 != -1)
                {
                  swift_once();
                }

                BDSSyncEngine.resetCloudKitZone(_:)(v72);

                goto LABEL_51;
              }

LABEL_50:

              goto LABEL_51;
            }
          }

          else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          if (v22)
          {
            goto LABEL_39;
          }

          goto LABEL_50;
        }

LABEL_35:

        sub_1000FF7FC(v65);

        goto LABEL_36;
      }
    }

    else
    {
      v3 = a1;
      v31 = v84;
      v32 = sub_1001C5128();
      v33 = sub_1001C6598();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = v84;
        v37 = swift_slowAlloc();
        v84 = v37;
        *v34 = 136315650;
        *(v34 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x8000000100201B00, &v84);
        *(v34 + 12) = 2112;
        *(v34 + 14) = v3;
        *v35 = v3;
        *(v34 + 22) = 2112;
        v38 = v3;
        v39 = v31;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 24) = v40;
        v35[1] = v40;
        _os_log_impl(&_mh_execute_header, v32, v33, "BDSSyncEnginePipeline - %s: Unable to retrieve serverRecord for recordID %@ perRecordError %@", v34, 0x20u);
        sub_100084528(&unk_1002718E0, &qword_1001F31F0);
        swift_arrayDestroy();

        sub_10008E7BC(v37);
        v6 = v36;
      }

      v84 = v31;
      sub_100100BD4(&qword_10026EFE0, type metadata accessor for CKError, &unk_1001F0B8C);
      sub_1001C49E8();
      if (v83 > 25)
      {
        if (v83 == 26 || v83 == 28)
        {
          if (qword_10026EC78 == -1)
          {
LABEL_23:
            sub_100084528(&qword_100270AB0, &qword_1001F52C0);
            v51 = swift_allocObject();
            *(v51 + 16) = xmmword_1001F31C0;
            v52 = *(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_zoneID);
            *(v51 + 32) = v52;
            v53 = v52;

            v54 = sub_1001C5128();
            v55 = sub_1001C65B8();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              p_isa = swift_slowAlloc();
              v57 = v6;
              v58 = v3;
              v59 = p_isa;
              *v56 = 136446210;
              sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
              v60 = sub_1001C62A8();
              v62 = sub_1001874E8(v60, v61, &p_isa);

              *(v56 + 4) = v62;
              _os_log_impl(&_mh_execute_header, v54, v55, "BDSSyncEngine - handleZoneMissingOrDeleted: %{public}s", v56, 0xCu);
              sub_10008E7BC(v59);
              v3 = v58;
              v6 = v57;
            }

            sub_100174FE8(v51, 1);

LABEL_26:
            v63 = v3;
            sub_1001C6278();
            if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1001C62B8();
            }

            sub_1001C62E8();
            v22 = 0;
            v64 = v85;
            v23 = &_swiftEmptyDictionarySingleton;
            if ((&_swiftEmptyDictionarySingleton & 0xC000000000000001) == 0)
            {
              goto LABEL_44;
            }

LABEL_34:
            if (!sub_1001C6AF8())
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_53:
          swift_once();
          goto LABEL_23;
        }
      }

      else if (v83 == 14 || v83 == 21)
      {
        goto LABEL_26;
      }

      p_isa = &v31->isa;
      if (sub_1001C4A08() == 112)
      {
        v23 = &_swiftEmptyDictionarySingleton;
        v64 = _swiftEmptyArrayStorage;
        v22 = 1;
        if ((&_swiftEmptyDictionarySingleton & 0xC000000000000001) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_34;
      }

      v73 = v3;
      v74 = v31;
      v43 = sub_1001C5128();
      v75 = sub_1001C6598();

      if (os_log_type_enabled(v43, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v84 = v78;
        *v76 = 136315650;
        *(v76 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x8000000100201B00, &v84);
        *(v76 + 12) = 2112;
        *(v76 + 14) = v73;
        *v77 = v73;
        *(v76 + 22) = 2112;
        v79 = v73;
        v80 = v74;
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v76 + 24) = v81;
        v77[1] = v81;
        _os_log_impl(&_mh_execute_header, v43, v75, "BDSSyncEnginePipeline - %s: Unhandled error for recordID %@ perRecordError %@", v76, 0x20u);
        sub_100084528(&unk_1002718E0, &qword_1001F31F0);
        swift_arrayDestroy();

        sub_10008E7BC(v78);
      }
    }

    goto LABEL_32;
  }

  swift_errorRetain();
  v24 = a1;
  v6 = sub_1001C5128();
  v25 = sub_1001C6598();

  if (os_log_type_enabled(v6, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v85 = v28;
    *v26 = 136315650;
    *(v26 + 4) = sub_1001874E8(0xD00000000000002ELL, 0x8000000100201B00, &v85);
    *(v26 + 12) = 2112;
    *(v26 + 14) = v24;
    *v27 = v24;
    *(v26 + 22) = 2112;
    swift_errorRetain();
    v29 = v24;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 24) = v30;
    v27[1] = v30;
    _os_log_impl(&_mh_execute_header, v6, v25, "BDSSyncEnginePipeline - %s: Error modifying record:%@ error=%@", v26, 0x20u);
    sub_100084528(&unk_1002718E0, &qword_1001F31F0);
    swift_arrayDestroy();

    sub_10008E7BC(v28);
  }

LABEL_51:
}

Swift::Void __swiftcall BDSSyncEnginePipeline.didCompleteModifyRecordsBatch()()
{
  v1 = v0;
  v2 = sub_1001C5648();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C5688();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType];
  v8 = *&v0[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8];

  v10 = sub_1001C5128();
  v11 = sub_1001C65B8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1001874E8(0xD00000000000001FLL, 0x8000000100201820, aBlock);
    *(v12 + 12) = 2080;
    v13 = sub_1001874E8(v9, v8, aBlock);

    *(v12 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v10, v11, "BDSSyncEnginePipeline - %s: [%s]", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = *&v1[OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_workQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_100100A14;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100247AD0;
  v16 = _Block_copy(aBlock);
  v17 = v14;
  v18 = v1;
  sub_1001C5668();
  v22 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v16);

  (*(v21 + 8))(v4, v2);
  (*(v19 + 8))(v7, v20);
}

uint64_t sub_1000FE77C()
{

  sub_1000FCD64(v0, 1);
}

void sub_1000FE7CC(void *a1)
{
  v2 = a1;
  oslog = sub_1001C5128();
  v3 = sub_1001C65B8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1001874E8(0xD000000000000025, 0x8000000100201AD0, &v9);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v2;
    *v5 = a1;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, oslog, v3, "BDSSyncEnginePipeline - %s: %@", v4, 0x16u);
    sub_10008875C(v5, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v6);
  }
}

void sub_1000FE93C(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = a1;
  v105 = *(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType);
  v109 = *(v4 + OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_recordType + 8);
  if (a1 >> 62)
  {
LABEL_89:
    v7 = sub_1001C6B38();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v116 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v106 = OBJC_IVAR____TtC14bookdatastored21BDSSyncEnginePipeline_dataMapper;
      v107 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v114 = a4;
      v110 = isUniquelyReferenced_nonNull_native;
      v108 = v7;
      do
      {
        if (v116)
        {
          v9 = sub_1001C69F8();
        }

        else
        {
          if (v8 >= *(v107 + 16))
          {
            goto LABEL_82;
          }

          v9 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v12 = [v9 systemFields];
        if (!v12)
        {

          v23 = v10;
          v24 = sub_1001C5128();
          v25 = sub_1001C6598();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v117[0] = v28;
            *v26 = 136315394;
            *(v26 + 4) = sub_1001874E8(v105, v109, v117);
            *(v26 + 12) = 2112;
            *(v26 + 14) = v23;
            *v27 = v23;
            v23 = v23;
            _os_log_impl(&_mh_execute_header, v24, v25, "BDSSyncEnginePipeline - [%s] Unable to retrieve systemFields from %@", v26, 0x16u);
            sub_10008875C(v27, &unk_1002718E0, &qword_1001F31F0);
            v7 = v108;

            sub_10008E7BC(v28);
            a4 = v114;
          }

          goto LABEL_5;
        }

        v13 = v12;
        if ([v10 deletedFlag])
        {
          v14 = [v13 recordID];
          v15 = v14;
          v16 = *a4;
          if ((*a4 & 0xC000000000000001) != 0)
          {
            if (v16 < 0)
            {
              v17 = *a4;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFFFFFFFF8;
            }

            v18 = v14;
            a4 = sub_1001C6B08();

            if (a4)
            {
              sub_100088714(0, &qword_100270F00, off_10023DD10);
              swift_dynamicCast();
              v19 = v117[0];
              if (v117[0])
              {
LABEL_28:

                v34 = v10;
                v35 = sub_1001C5128();
                v36 = sub_1001C6598();

                if (os_log_type_enabled(v35, v36))
                {
                  v37 = swift_slowAlloc();
                  v38 = swift_slowAlloc();
                  v111 = v13;
                  v39 = swift_slowAlloc();
                  v117[0] = v39;
                  *v37 = 136315394;
                  *(v37 + 4) = sub_1001874E8(v105, v109, v117);
                  *(v37 + 12) = 2112;
                  *(v37 + 14) = v34;
                  *v38 = v34;
                  v40 = v34;
                  _os_log_impl(&_mh_execute_header, v35, v36, "BDSSyncEnginePipeline - [%s] cloudDataMap already contans an entry for deleting %@", v37, 0x16u);
                  sub_10008875C(v38, &unk_1002718E0, &qword_1001F31F0);

                  sub_10008E7BC(v39);
                }

                else
                {
                }

                isUniquelyReferenced_nonNull_native = v110;
                v7 = v108;
                a4 = v114;
                goto LABEL_5;
              }
            }

            v20 = v18;
            v21 = v10;
            v22 = sub_1001C6AF8();
            if (__OFADD__(v22, 1))
            {
              goto LABEL_85;
            }

            a4 = v114;
            *v114 = sub_10017AA98(v17, v22 + 1);
          }

          else
          {
            if (*(v16 + 16))
            {
              v31 = sub_100187BB4(v14);
              if (v32)
              {
                v33 = *(*(v16 + 56) + 8 * v31);
                v19 = v33;
                if (v33)
                {
                  goto LABEL_28;
                }
              }
            }

            v56 = v15;
            v57 = v10;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v117[0] = *a4;
          v58 = v117[0];
          v59 = sub_100187BB4(v15);
          v61 = *(v58 + 16);
          v62 = (v60 & 1) == 0;
          v63 = __OFADD__(v61, v62);
          v64 = v61 + v62;
          if (v63)
          {
            goto LABEL_83;
          }

          v65 = v60;
          if (*(v58 + 24) >= v64)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v99 = v59;
              sub_10018B168();
              v59 = v99;
              v7 = v108;
              a4 = v114;
            }
          }

          else
          {
            sub_100189224(v64, isUniquelyReferenced_nonNull_native);
            v59 = sub_100187BB4(v15);
            if ((v65 & 1) != (v66 & 1))
            {
              goto LABEL_91;
            }
          }

          isUniquelyReferenced_nonNull_native = v110;
          v67 = v117[0];
          if (v65)
          {
            v68 = *(v117[0] + 56);
            v69 = *(v68 + 8 * v59);
            *(v68 + 8 * v59) = v10;
          }

          else
          {
            *(v117[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
            *(v67[6] + 8 * v59) = v15;
            *(v67[7] + 8 * v59) = v10;
            v70 = v67[2];
            v63 = __OFADD__(v70, 1);
            v71 = v70 + 1;
            if (v63)
            {
              goto LABEL_86;
            }

            v67[2] = v71;
          }

          *a4 = v67;
          v72 = v15;
          sub_1001C6278();
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_79;
          }

LABEL_80:
          sub_1001C62B8();
          v7 = v108;
          a4 = v114;
          goto LABEL_79;
        }

        v29 = *(v115 + v106);
        if (v29)
        {
          v30 = [v29 recordFromCloudData:v10];
        }

        else
        {
          v30 = [v10 configuredRecordFromAttributes];
        }

        v41 = v30;
        if (!v41)
        {
          v47 = v10;
          v48 = sub_1001C5128();
          v49 = sub_1001C6598();

          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v117[0] = swift_slowAlloc();
            *v50 = 136315394;
            *(v50 + 4) = sub_1001874E8(0xD000000000000019, 0x8000000100201AB0, v117);
            *(v50 + 12) = 2080;
            v51 = [v47 localRecordID];
            v113 = v13;
            v52 = sub_1001C6018();
            v54 = v53;

            v55 = sub_1001874E8(v52, v54, v117);
            v7 = v108;

            *(v50 + 14) = v55;
            a4 = v114;
            _os_log_impl(&_mh_execute_header, v48, v49, "BDSSyncEnginePipeline - %s: failed to create CKRecord for %s", v50, 0x16u);
            swift_arrayDestroy();
            isUniquelyReferenced_nonNull_native = v110;
          }

          else
          {
          }

          goto LABEL_5;
        }

        v42 = v41;
        v112 = v13;
        v43 = [v41 recordID];
        v44 = v43;
        v45 = *a4;
        isUniquelyReferenced_nonNull_native = *a4 & 0xC000000000000001;
        if (isUniquelyReferenced_nonNull_native)
        {
          v46 = v43;
          a4 = sub_1001C6B08();

          if (!a4)
          {
            goto LABEL_57;
          }

          sub_100088714(0, &qword_100270F00, off_10023DD10);
          swift_dynamicCast();
          a4 = v117[0];
        }

        else
        {
          if (!*(v45 + 16) || (v73 = sub_100187BB4(v43), (v74 & 1) == 0))
          {
LABEL_57:

            v75 = v114;
            goto LABEL_58;
          }

          a4 = *(*(v45 + 56) + 8 * v73);
        }

        v75 = v114;
        if (a4)
        {

          v76 = v10;
          v77 = sub_1001C5128();
          v78 = sub_1001C6598();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = v77;
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v117[0] = v82;
            *v80 = 136315394;
            *(v80 + 4) = sub_1001874E8(v105, v109, v117);
            *(v80 + 12) = 2112;
            *(v80 + 14) = v76;
            *v81 = v76;
            v83 = v76;
            _os_log_impl(&_mh_execute_header, v79, v78, "BDSSyncEnginePipeline - [%s] cloudDataMap already contans an entry for saving %@", v80, 0x16u);
            sub_10008875C(v81, &unk_1002718E0, &qword_1001F31F0);

            sub_10008E7BC(v82);
            a4 = v114;

            isUniquelyReferenced_nonNull_native = v110;
            v7 = v108;
          }

          else
          {

            isUniquelyReferenced_nonNull_native = v110;
            v7 = v108;
            a4 = v114;
          }

          goto LABEL_5;
        }

LABEL_58:
        v84 = [v42 recordID];
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v45 >= 0)
          {
            v45 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v85 = v10;
          v86 = sub_1001C6AF8();
          v87 = v112;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_87;
          }

          *v75 = sub_10017AA98(v45, v86 + 1);
        }

        else
        {
          v88 = v10;
          v87 = v112;
        }

        a4 = swift_isUniquelyReferenced_nonNull_native();
        v117[0] = *v75;
        v89 = v117[0];
        v90 = sub_100187BB4(v84);
        v92 = *(v89 + 16);
        v93 = (v91 & 1) == 0;
        v63 = __OFADD__(v92, v93);
        v94 = v92 + v93;
        if (v63)
        {
          goto LABEL_84;
        }

        isUniquelyReferenced_nonNull_native = v91;
        if (*(v89 + 24) < v94)
        {
          sub_100189224(v94, a4);
          v90 = sub_100187BB4(v84);
          if ((isUniquelyReferenced_nonNull_native & 1) != (v95 & 1))
          {
LABEL_91:
            sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
            sub_1001C6D68();
            __break(1u);
            return;
          }

LABEL_70:
          v96 = v117[0];
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_71;
          }

          goto LABEL_76;
        }

        if (a4)
        {
          goto LABEL_70;
        }

        a4 = v87;
        v100 = v90;
        sub_10018B168();
        v90 = v100;
        v87 = a4;
        v96 = v117[0];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_71:
          v13 = v87;
          v97 = v96[7];
          v98 = *(v97 + 8 * v90);
          *(v97 + 8 * v90) = v10;

          goto LABEL_78;
        }

LABEL_76:
        v96[(v90 >> 6) + 8] |= 1 << v90;
        *(v96[6] + 8 * v90) = v84;
        *(v96[7] + 8 * v90) = v10;
        v101 = v96[2];
        v63 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v63)
        {
          goto LABEL_88;
        }

        v13 = v87;
        v96[2] = v102;
LABEL_78:
        a4 = v114;
        *v114 = v96;
        v72 = v42;
        sub_1001C6278();
        isUniquelyReferenced_nonNull_native = v110;
        v7 = v108;
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_80;
        }

LABEL_79:
        sub_1001C62E8();

LABEL_5:
        ++v8;
      }

      while (v11 != v7);
    }
  }
}

id BDSSyncEnginePipeline.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BDSSyncEnginePipeline(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000FF724(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_10019D058(a1);
  swift_endAccess();

  swift_beginAccess();
  v5 = a1;
  sub_1001C6278();
  if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1001C62B8();
  }

  sub_1001C62E8();
  return swift_endAccess();
}

void sub_1000FF7FC(unint64_t a1)
{
  v2 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1001C6AE8() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  v10 = 0;
  v34 = v4;
  v11 = (v4 + 64) >> 6;
  v35 = v6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    if (!sub_1001C6B18() || (swift_unknownObjectRelease(), sub_100088714(0, &unk_10026FEC0, CKRecord_ptr), swift_dynamicCast(), (v14 = v38) == 0))
    {
LABEL_32:
      sub_100005064(v6);
      swift_beginAccess();

      sub_1001958F0(v33);
      swift_endAccess();
      return;
    }

LABEL_20:
    v15 = [v14 recordID];
    swift_beginAccess();
    v16 = *(v2 + 48);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v36 = v5;
      v17 = v2;
      if (v16 < 0)
      {
        v18 = *(v2 + 48);
      }

      else
      {
        v18 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = v15;
      v20 = sub_1001C6B08();

      if (v20)
      {
        swift_unknownObjectRelease();

        v21 = sub_1001C6AF8();
        v22 = sub_10017AA98(v18, v21);

        v23 = sub_100187BB4(v19);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_34;
        }

        v26 = *(*(v22 + 56) + 8 * v23);
        sub_10013FF8C(v23, v22);

        v2 = v17;
        *(v17 + 48) = v22;
      }

      else
      {

        v2 = v17;
      }

      v6 = v35;
      v5 = v36;
    }

    else
    {
      v27 = sub_100187BB4(v15);
      if (v28)
      {
        v29 = v27;
        v37 = v5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v2 + 48);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10018B168();
        }

        v32 = *(*(v31 + 56) + 8 * v29);
        sub_10013FF8C(v29, v31);
        *(v2 + 48) = v31;

        v5 = v37;
      }

      else
      {
      }
    }

    swift_endAccess();
  }

  v12 = v10;
  v13 = v5;
  if (v5)
  {
LABEL_16:
    v5 = (v13 - 1) & v13;
    v14 = *(*(v6 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_32;
    }

    v13 = *(v3 + 8 * v10);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1000FFB60(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_33;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_34:
    swift_beginAccess();

    sub_100195800(v38);
    return swift_endAccess();
  }

LABEL_3:
  if (v4 >= 1)
  {
    if ((v3 & 0xC000000000000001) == 0)
    {
      v21 = (v3 + 32);
      do
      {
        v23 = *v21;
        swift_beginAccess();
        v24 = *(v2 + 48);
        if ((v24 & 0xC000000000000001) != 0)
        {
          if (v24 < 0)
          {
            v25 = *(v2 + 48);
          }

          else
          {
            v25 = v24 & 0xFFFFFFFFFFFFFF8;
          }

          v26 = v23;
          if (sub_1001C6B08())
          {
            swift_unknownObjectRelease();

            v27 = sub_1001C6AF8();
            v28 = sub_10017AA98(v25, v27);

            v29 = sub_100187BB4(v26);
            v31 = v30;

            if ((v31 & 1) == 0)
            {
              goto LABEL_32;
            }

            v32 = *(*(v28 + 56) + 8 * v29);
            sub_10013FF8C(v29, v28);

            *(v2 + 48) = v28;
          }
        }

        else
        {
          v33 = sub_100187BB4(v23);
          if (v34)
          {
            v35 = v33;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v37 = *(v2 + 48);
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_10018B168();
            }

            v22 = *(*(v37 + 56) + 8 * v35);
            sub_10013FF8C(v35, v37);
            *(v2 + 48) = v37;
          }
        }

        swift_endAccess();

        ++v21;
        --v4;
      }

      while (v4);
      goto LABEL_34;
    }

    v5 = 0;
    while (1)
    {
      v7 = sub_1001C69F8();
      swift_beginAccess();
      v8 = *(v2 + 48);
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (v8 < 0)
        {
          v9 = *(v2 + 48);
        }

        else
        {
          v9 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        if (sub_1001C6B08())
        {
          swift_unknownObjectRelease();

          v10 = sub_1001C6AF8();
          v11 = sub_10017AA98(v9, v10);

          v12 = sub_100187BB4(v7);
          v14 = v13;

          if ((v14 & 1) == 0)
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            result = sub_1001C6B38();
            v4 = result;
            if (!result)
            {
              goto LABEL_34;
            }

            goto LABEL_3;
          }

          v15 = *(*(v11 + 56) + 8 * v12);
          sub_10013FF8C(v12, v11);

          *(v2 + 48) = v11;
        }
      }

      else
      {
        v16 = sub_100187BB4(v7);
        if (v17)
        {
          v18 = v16;
          v19 = swift_isUniquelyReferenced_nonNull_native();
          v20 = *(v2 + 48);
          if (!v19)
          {
            sub_10018B168();
          }

          v6 = *(*(v20 + 56) + 8 * v18);
          sub_10013FF8C(v18, v20);
          *(v2 + 48) = v20;
        }
      }

      ++v5;
      swift_endAccess();
      swift_unknownObjectRelease();
      if (v4 == v5)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FFEA4()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 48);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_1001C6AF8();

    if (!v4)
    {
      return result;
    }
  }

  else if (!*(v3 + 16))
  {
    return result;
  }

  v5 = sub_1001C5128();
  v6 = sub_1001C6598();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1001874E8(0x676F6C28656E6F64, 0xED0000293A726567, &v12);
    *(v7 + 12) = 2080;
    sub_100088714(0, &unk_100273B00, CKRecordID_ptr);
    sub_100088714(0, &qword_100270F00, off_10023DD10);
    sub_100100B90(&qword_100270F08, &unk_100273B00, CKRecordID_ptr, &protocol conformance descriptor for NSObject);

    v8 = sub_1001C5F48();
    v10 = v9;

    v11 = sub_1001874E8(v8, v10, &v12);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "BDSSyncEnginePipeline - %s: Unexpected outstanding IDs: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v1 + 48) = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100100108()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100100160(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1001C6D08() & 1;
  }
}

uint64_t sub_1001001EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100100204(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v17[3] = type metadata accessor for BDSSyncEnginePipeline(0);
  v17[4] = &off_100247AF8;
  v17[0] = a1;
  v6 = a1;
  v7 = sub_1001C5FE8();
  v8 = *&a4[OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue];
  sub_1000B3A90(v17, v16);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v7;
  sub_100100DF0(v16, v9 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100100E08;
  *(v10 + 24) = v9;
  v15[4] = sub_1000B2E48;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000906F4;
  v15[3] = &unk_100247E00;
  v11 = _Block_copy(v15);
  v12 = a4;
  v13 = v7;

  dispatch_sync(v8, v11);

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return sub_10008E7BC(v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001003CC(void *a1, uint64_t a2)
{
  v4 = sub_1001C5648();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001C5688();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_100100DE8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100247D88;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  sub_1001C5668();
  v18 = _swiftEmptyArrayStorage;
  sub_100100BD4(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_1001006E4(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_10019D058(a2);
  swift_endAccess();

  swift_beginAccess();
  v7 = a1;
  sub_1001C6278();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1001C62B8();
  }

  sub_1001C62E8();
  return swift_endAccess();
}

uint64_t sub_1001007E0(uint64_t a1)
{
  v9 = v1;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1001874E8(0xD000000000000011, 0x8000000100201BA0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "BDSSyncEnginePipeline - %s", v4, 0xCu);
    sub_10008E7BC(v5);
  }

  v6 = *(v1 + 8);

  return v6(0);
}

uint64_t sub_1001009CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t type metadata accessor for BDSSyncEnginePipeline(uint64_t a1)
{
  result = qword_100270C60;
  if (!qword_100270C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100100A70(uint64_t a1)
{
  result = sub_1001C5148();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100100B90(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100088714(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100100BD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100100C74()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100100D04()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100100D44()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

uint64_t sub_100100D90(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1001C6D08() & 1;
  }
}

uint64_t sub_100100DF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100100E14()
{
  v1 = *(sub_1001C5148() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_1000F862C(v0 + v2, v6, v7, v8);
}

void sub_100100EB0()
{
  v1 = *(sub_1001C5148() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = v5[1];

  sub_1000F7FF0(v0 + v2, v8, v9, v6, v7);
}

uint64_t sub_100100F58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009AAEC;

  return sub_1000F9BDC(v2, v3, v4);
}

uint64_t sub_10010100C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000F96D8(v2, v3);
}

uint64_t sub_1001010B8(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100101100()
{
  sub_100084528(&qword_100271018, &unk_1001F36F0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1000FB0C8(v1, v2);
}

uint64_t sub_10010119C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100270B80, &unk_1001F3528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001012C4(void *a1)
{
  v3 = sub_100084528(&qword_1002711C0, &unk_1001F37A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10009BB74(a1, a1[3]);
  sub_1001023D4();
  sub_1001C6E78();
  v8[15] = 0;
  sub_1001C6C68();
  if (!v1)
  {
    type metadata accessor for BDSSyncEngineStateMetadata(0);
    v8[14] = 1;
    sub_1001C55A8();
    sub_100102558(&qword_1002711C8, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    sub_1001C6C58();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10010147C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_100084528(&qword_100271108, &unk_1001F3720);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_100084528(&qword_1002711A8, &qword_1001F37A0);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 28);
  v15 = sub_1001C55A8();
  v16 = *(*(v15 - 8) + 56);
  v23 = v14;
  v16(v13 + v14, 1, 1, v15);
  sub_10009BB74(a1, a1[3]);
  sub_1001023D4();
  sub_1001C6E58();
  if (v2)
  {
    sub_10008E7BC(a1);
    return sub_10008875C(v13 + v23, &qword_100271108, &unk_1001F3720);
  }

  else
  {
    v17 = v21;
    v25 = 0;
    *v13 = sub_1001C6BE8();
    v13[1] = v18;
    v24 = 1;
    sub_100102558(&qword_1002711B8, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    sub_1001C6BD8();
    (*(v17 + 8))(v9, v22);
    sub_100102428(v6, v13 + v23);
    sub_100102498(v13, v20);
    sub_10008E7BC(a1);
    return sub_1001024FC(v13);
  }
}

uint64_t sub_1001017AC()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1001017DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

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

uint64_t sub_1001018B4(uint64_t a1)
{
  v2 = sub_1001023D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001018F0(uint64_t a1)
{
  v2 = sub_1001023D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10010195C()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_100271020);
  sub_100083274(v0, qword_100271020);
  return sub_1001C5138();
}

uint64_t sub_1001019DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001C4B28();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = [objc_opt_self() books];
  v11 = [v10 containerURL];

  sub_1001C4AD8();
  sub_1001C4A98();
  (*(v3 + 8))(v6, v2);
  v22 = 1;
  sub_1001C4AF8();
  v12 = sub_1001C5FE8();

  LOBYTE(v6) = [v9 fileExistsAtPath:v12 isDirectory:&v22];

  if ((v6 & 1) == 0)
  {
    sub_1001C4A88(v13);
    v15 = v14;
    v21 = 0;
    v16 = [v9 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v21];

    if (!v16)
    {
      v18 = v21;
      sub_1001C4A28();

      swift_willThrow();

      goto LABEL_6;
    }

    v17 = v21;
  }

LABEL_6:
  (*(v3 + 32))(a1, v8, v2);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_100101C94(uint64_t a1, uint64_t a2)
{
  v2 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - v11;
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  sub_1001019DC(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10008875C(v4, &unk_10026EF10, &unk_1001F1FA0);
    if (qword_10026EBE0 != -1)
    {
      swift_once();
    }

    v15 = sub_1001C5148();
    sub_100083274(v15, qword_100271020);
    v16 = sub_1001C5128();
    v17 = sub_1001C6598();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not get metadata. No BaseURL", v18, 2u);
    }

    return 0;
  }

  (*(v6 + 32))(v14, v4, v5);
  v19 = [objc_opt_self() defaultManager];
  sub_1001C4AA8();
  sub_1001C4AF8();
  v20 = sub_1001C5FE8();

  v21 = [v19 fileExistsAtPath:v20];

  if (!v21)
  {

    v33 = *(v6 + 8);
    v33(v12, v5);
    v33(v14, v5);
    return 0;
  }

  if (qword_10026EBE0 != -1)
  {
    swift_once();
  }

  v22 = sub_1001C5148();
  sub_100083274(v22, qword_100271020);
  (*(v6 + 16))(v9, v12, v5);
  v23 = sub_1001C5128();
  v24 = sub_1001C65B8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v41 = v25;
    v42 = swift_slowAlloc();
    v44 = v42;
    *v25 = 136315138;
    sub_100102558(qword_100272010, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = sub_1001C6CC8();
    v43 = v19;
    v28 = v27;
    v29 = *(v6 + 8);
    v29(v9, v5);
    v30 = sub_1001874E8(v26, v28, &v44);
    v19 = v43;

    v31 = v41;
    *(v41 + 1) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Removing sync engine metadata at: %s", v31, 0xCu);
    sub_10008E7BC(v42);
  }

  else
  {

    v29 = *(v6 + 8);
    v29(v9, v5);
  }

  sub_1001C4A88(v32);
  v35 = v34;
  v44 = 0;
  v36 = [v19 removeItemAtURL:v34 error:&v44];

  if (v36)
  {
    v37 = v44;

    v29(v12, v5);
    v29(v14, v5);
    return 0;
  }

  v39 = v44;
  v40 = sub_1001C4A28();

  swift_willThrow();
  v29(v12, v5);
  v29(v14, v5);
  return v40;
}

uint64_t type metadata accessor for BDSSyncEngineStateMetadata(uint64_t a1)
{
  result = qword_100271168;
  if (!qword_100271168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100102300(uint64_t a1)
{
  sub_10010237C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10010237C(uint64_t a1)
{
  if (!qword_100271178)
  {
    sub_1001C55A8();
    v1 = sub_1001C67F8();
    if (!v2)
    {
      atomic_store(v1, &qword_100271178);
    }
  }
}

unint64_t sub_1001023D4()
{
  result = qword_1002711B0;
  if (!qword_1002711B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002711B0);
  }

  return result;
}

uint64_t sub_100102428(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100271108, &unk_1001F3720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100102498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001024FC(uint64_t a1)
{
  v2 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100102558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001025B4()
{
  result = qword_1002711D0;
  if (!qword_1002711D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002711D0);
  }

  return result;
}

unint64_t sub_10010260C()
{
  result = qword_1002711D8;
  if (!qword_1002711D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002711D8);
  }

  return result;
}

unint64_t sub_100102664()
{
  result = qword_1002711E0;
  if (!qword_1002711E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002711E0);
  }

  return result;
}

BOOL sub_1001026B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    sub_1000D9490();
    sub_1001C6248();
    sub_1001C6248();
    if (v11 == v9 && v12 == v10)
    {

      return v4 != 0;
    }

    v7 = sub_1001C6D08();

    v3 += 8;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

char *sub_1001027A8(char **a1, char *a2, uint64_t a3)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a2 = sub_1001AAC10(a2);
  }

  v6 = *(a2 + 2);
  v7 = (a2 + 32);
  v8 = 0;
  if (!v6)
  {
    goto LABEL_14;
  }

  while (1)
  {
    result = sub_1001026B8(*(v7 + 8 * v8), a3);
    if (result)
    {
      break;
    }

    ++v8;
LABEL_6:
    if (v8 >= v6)
    {
      goto LABEL_12;
    }
  }

  v10 = v6 - 1;
  v11 = (v7 + 8 * v6);
  while (v8 < v10)
  {
    v12 = *--v11;
    result = sub_1001026B8(v12, a3);
    --v10;
    if ((result & 1) == 0)
    {
      v13 = *(v7 + 8 * v8);
      *(v7 + 8 * v8) = *v11;
      *v11 = v13;
      ++v8;
      v6 = v10 + 1;
      goto LABEL_6;
    }
  }

LABEL_12:
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a2 + 2);
    if (v6 >= v8)
    {
LABEL_14:
      *a1 = a2;
      a1[1] = v7;
      a1[2] = v8;
      a1[3] = ((2 * v6) | 1);

      return a2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001028D0(uint64_t *a1, uint64_t a2)
{

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001AAC4C(a2);
    a2 = result;
  }

  v5 = *(a2 + 16);
  v6 = a2 + 32;
  if (!v5)
  {
    goto LABEL_20;
  }

  v7 = 0;
LABEL_5:
  v8 = v6 + 24 * v7;
  v9 = v7;
  while (*(v8 + 16) != 1)
  {
    ++v9;
    v8 += 24;
    if (v9 >= v5)
    {
      if (v5 <= v7 + 1)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = v5;
      }

      goto LABEL_17;
    }
  }

  v10 = (a2 + 48 + 24 * v5);
  while (v9 < --v5)
  {
    v11 = *(v10 - 24);
    v10 -= 3;
    if ((v11 & 1) == 0)
    {
      v12 = *v8;
      v13 = *(v8 + 8);
      v14 = *(v10 - 1);
      *(v8 + 16) = *v10;
      *v8 = v14;
      *(v10 - 2) = v12;
      *(v10 - 1) = v13;
      *v10 = 1;
      v7 = v9 + 1;
      if (v9 + 1 < v5)
      {
        goto LABEL_5;
      }

      ++v9;
      break;
    }
  }

LABEL_17:
  if ((v9 & 0x8000000000000000) == 0)
  {
    v5 = *(a2 + 16);
    if (v5 >= v9)
    {
LABEL_21:
      *a1 = a2;
      a1[1] = v6;
      a1[2] = v9;
      a1[3] = (2 * v5) | 1;
    }

    __break(1u);
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_100102A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000B5AA0();
  result = sub_1001C67E8();
  *a4 = result;
  return result;
}

id sub_100102B28(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void *sub_100102B88(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&qword_10026F2A8, &qword_1001F0CC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v26 = _s21PriceDropNotificationVMa(0);
  v9 = __chkstk_darwin(v26);
  v25 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v24 = &v21 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = (a3 + 32);
  v22 = v11;
  v15 = (v11 + 48);
  v16 = _swiftEmptyArrayStorage;
  v23 = a1;
  while (1)
  {
    v27 = *v14;

    a1(&v27);
    if (v3)
    {
      break;
    }

    if ((*v15)(v8, 1, v26) == 1)
    {
      sub_10008875C(v8, &qword_10026F2A8, &qword_1001F0CC0);
    }

    else
    {
      v17 = v24;
      sub_100110AC0(v8, v24, _s21PriceDropNotificationVMa);
      sub_100110AC0(v17, v25, _s21PriceDropNotificationVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1000AD8C4(0, v16[2] + 1, 1, v16);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_1000AD8C4((v18 > 1), v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      sub_100110AC0(v25, v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, _s21PriceDropNotificationVMa);
      a1 = v23;
    }

    ++v14;
    if (!--v13)
    {
      return v16;
    }
  }

  return v16;
}

void *sub_100102E64(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v6 = sub_100084528(&qword_100271320, &qword_1001F3A68);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v28 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v26 = &v23 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(_s11TrackedItemVMa(0) - 8);
  v23 = v10;
  v16 = (v10 + 48);
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v18 = _swiftEmptyArrayStorage;
  v27 = *(v15 + 72);
  v24 = v9;
  v25 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_10008875C(v8, &qword_100271320, &qword_1001F3A68);
    }

    else
    {
      v19 = v26;
      sub_10009AE58(v8, v26, &qword_10026F7A8, &unk_1001F2B50);
      sub_10009AE58(v19, v28, &qword_10026F7A8, &unk_1001F2B50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1000AE1F0(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1000AE1F0((v20 > 1), v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_10009AE58(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_10026F7A8, &unk_1001F2B50);
      v9 = v24;
      a1 = v25;
    }

    v17 += v27;
    if (!--v14)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_100103198(uint64_t a1)
{
  v3 = _s5StateVMa(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  sub_100108B70(a1);
  v9 = OBJC_IVAR___BDSPriceTracker_state;
  swift_beginAccess();
  sub_100110C34(v1 + v9, v8, _s5StateVMa);
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1001C5148();
  sub_100083274(v10, qword_100281898);
  sub_100110C34(v8, v6, _s5StateVMa);
  v11 = sub_1001C5128();
  v12 = sub_1001C65B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = *(*v6 + 16);
    sub_10010E494(v6, _s5StateVMa);
    *(v13 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v12, "[PriceTracker] Updated, tracking %ld item(s)", v13, 0xCu);
  }

  else
  {
    sub_10010E494(v6, _s5StateVMa);
  }

  return sub_10010E494(v8, _s5StateVMa);
}

id sub_1001033B8()
{
  v1 = (v0 + OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService);
  v2 = *(v0 + OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService);
  v3 = *(v0 + OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService + 8);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_opt_self() sharedProvider];
    v6 = [objc_opt_self() defaultBag];
    v7 = *v1;
    v8 = v1[1];
    *v1 = v5;
    v1[1] = v6;
    v4 = v5;
    v6;
    sub_100110154(v7, v8);
  }

  sub_100110194(v2, v3);
  return v4;
}

char *sub_100103714(uint64_t a1)
{
  v2 = v1;
  v146 = a1;
  v3 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v3 - 8);
  v143 = &v106 - v4;
  v126 = sub_1001C4CA8();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_100271348, &qword_1001F3A90);
  __chkstk_darwin(v6 - 8);
  v120 = &v106 - v7;
  v119 = sub_100084528(&qword_100271370, &qword_1001F3AD8);
  v118 = *(v119 - 1);
  __chkstk_darwin(v119);
  v117 = (&v106 - v8);
  v9 = sub_100084528(&qword_100271360, &qword_1001F3AA8);
  v144 = *(v9 - 8);
  v145 = v9;
  __chkstk_darwin(v9);
  v159 = &v106 - v10;
  v11 = sub_100084528(&qword_100271378, &qword_1001F3AE0);
  v157 = *(v11 - 8);
  v158 = v11;
  v12 = __chkstk_darwin(v11);
  v138 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v13;
  __chkstk_darwin(v12);
  v156 = &v106 - v14;
  v113 = sub_100084528(&qword_100271380, &qword_1001F3AE8);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = (&v106 - v15);
  v142 = sub_100084528(&qword_100271358, &qword_1001F3AA0);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v155 = &v106 - v16;
  v17 = sub_100084528(&qword_100271388, &qword_1001F3AF0);
  v153 = *(v17 - 8);
  v154 = v17;
  v18 = __chkstk_darwin(v17);
  v133 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v19;
  __chkstk_darwin(v18);
  v152 = &v106 - v20;
  v110 = sub_100084528(&qword_100271390, &qword_1001F3AF8);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = (&v106 - v21);
  v140 = sub_100084528(&qword_100271350, &qword_1001F3A98);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v151 = &v106 - v22;
  v23 = sub_100084528(&qword_100271398, &qword_1001F3B00);
  v149 = *(v23 - 8);
  v150 = v23;
  v24 = __chkstk_darwin(v23);
  v132 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v25;
  __chkstk_darwin(v24);
  v148 = &v106 - v26;
  v27 = sub_100084528(&qword_1002713A0, &qword_1001F3B08);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = (&v106 - v29);
  v137 = sub_100084528(&qword_100271270, &qword_1001F3920);
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v32 = &v106 - v31;
  v147 = sub_100084528(&qword_1002713A8, &qword_1001F3B10);
  v135 = *(v147 - 8);
  v33 = __chkstk_darwin(v147);
  v131 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v34;
  __chkstk_darwin(v33);
  v36 = &v106 - v35;
  v37 = sub_100084528(&qword_100271368, &qword_1001F3AD0);
  v114 = *(v37 - 8);
  v115 = *(v114 + 64);
  __chkstk_darwin(v37 - 8);
  v39 = &v106 - v38;
  v40 = _s5StateVMa(0);
  v41 = __chkstk_darwin(v40 - 8);
  v122 = &v106 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v106 - v43;
  v129 = &v106 - v43;
  swift_defaultActor_initialize();
  v107 = v2;
  *&v2[OBJC_IVAR___BDSPriceTracker_streamTask] = 0;
  v45 = &v2[OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = v146;
  sub_10009ADF0(v146, v39, &qword_100271368, &qword_1001F3AD0);
  v130 = v39;
  sub_100104B90(v39, v44);
  _s15PersistentStateO2V1VMa(0);
  v47 = 1;
  *v30 = 1;
  v48 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v28 + 104))(v30, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v27);
  v134 = v36;
  v128 = v32;
  sub_1001C6358();
  (*(v28 + 8))(v30, v27);
  v49 = v136;
  v50 = v137;
  sub_100084528(&qword_100271280, &qword_1001F3928);
  v51 = v108;
  *v108 = 1;
  v52 = v109;
  v53 = v110;
  (*(v109 + 104))(v51, v48, v110);
  v54 = v107;
  sub_1001C6358();
  (*(v52 + 8))(v51, v53);
  sub_100084528(&qword_10026F268, &qword_1001F0C80);
  v55 = v111;
  *v111 = 1;
  v56 = v112;
  v57 = v113;
  (*(v112 + 104))(v55, v48, v113);
  v58 = v46;
  sub_1001C6358();
  v59 = v55;
  v60 = v50;
  v61 = v49;
  (*(v56 + 8))(v59, v57);
  v62 = v117;
  *v117 = 1;
  v63 = v118;
  v64 = v48;
  v65 = v120;
  v66 = v119;
  (*(v118 + 104))(v62, v64, v119);
  sub_1001C6358();
  v67 = v129;
  (*(v63 + 8))(v62, v66);
  sub_100110C34(v67, v54 + OBJC_IVAR___BDSPriceTracker_state, _s5StateVMa);
  v68 = _s11PersistenceVMa(0);
  if ((*(*(v68 - 8) + 48))(v58, 1, v68) != 1)
  {
    (*(v61 + 16))(v65, v128, v60);
    v47 = 0;
  }

  (*(v61 + 56))(v65, v47, 1, v60);
  sub_10009AE58(v65, v54 + OBJC_IVAR___BDSPriceTracker_persistentStateContinuation, &qword_100271348, &qword_1001F3A90);
  (*(v139 + 16))(v54 + OBJC_IVAR___BDSPriceTracker_schedulerConfigContinuation, v151, v140);
  (*(v141 + 16))(v54 + OBJC_IVAR___BDSPriceTracker_activeNotificationsContinuation, v155, v142);
  (*(v144 + 16))(v54 + OBJC_IVAR___BDSPriceTracker_cardListContinuation, v159, v145);
  v69 = type metadata accessor for PriceTracker(0);
  v160.receiver = v54;
  v160.super_class = v69;
  v70 = objc_msgSendSuper2(&v160, "init");
  v120 = swift_allocObject();
  swift_weakInit();
  v119 = v70;

  v71 = v124;
  sub_1001C4C98();
  v118 = sub_10019EDB4();
  v117 = v72;
  LODWORD(v113) = v73;
  (v125[1].isa)(v71, v126);
  v74 = sub_1001A6D74(*(v67 + 8));
  __chkstk_darwin(v74);
  *(&v106 - 2) = v67;
  v126 = sub_100102B88(sub_1001112FC, (&v106 - 4), v74);

  v125 = sub_10019EE64();
  v75 = sub_1001C6348();
  (*(*(v75 - 8) + 56))(v143, 1, 1, v75);
  sub_10009ADF0(v58, v130, &qword_100271368, &qword_1001F3AD0);
  v76 = v135;
  (*(v135 + 16))(v131, v134, v147);
  v77 = v149;
  (*(v149 + 16))(v132, v148, v150);
  v78 = v153;
  (*(v153 + 16))(v133, v152, v154);
  v79 = v157;
  (*(v157 + 16))(v138, v156, v158);
  v80 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v81 = (v115 + *(v76 + 80) + v80) & ~*(v76 + 80);
  v124 = ((v81 + v116 + 7) & 0xFFFFFFFFFFFFFFF8);
  v82 = (v81 + v116 + 31) & 0xFFFFFFFFFFFFFFF8;
  v83 = (*(v77 + 80) + v82 + 16) & ~*(v77 + 80);
  v84 = (v121 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = (*(v78 + 80) + v84 + 8) & ~*(v78 + 80);
  v86 = (v123 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = (*(v79 + 80) + v86 + 8) & ~*(v79 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  *(v88 + 24) = 0;
  sub_10009AE58(v130, v88 + v80, &qword_100271368, &qword_1001F3AD0);
  v89 = v76;
  v90 = v119;
  (*(v89 + 32))(v88 + v81, v131, v147);
  v91 = &v124[v88];
  v92 = v117;
  *v91 = v118;
  *(v91 + 1) = v92;
  v91[16] = v113 & 1;
  v93 = (v88 + v82);
  v94 = v120;
  *v93 = &unk_1001F3B20;
  v93[1] = v94;
  (*(v149 + 32))(v88 + v83, v132, v150);
  *(v88 + v84) = v126;
  (*(v153 + 32))(v88 + v85, v133, v154);
  *(v88 + v86) = v125;
  (*(v157 + 32))(v88 + v87, v138, v158);

  v95 = v143;
  v96 = sub_1001082E0(0, 0, v143, &unk_1001F3B30, v88);

  sub_10008875C(v95, &unk_100270A00, &qword_1001F3120);

  *&v90[OBJC_IVAR___BDSPriceTracker_streamTask] = v96;

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v97 = sub_1001C5148();
  sub_100083274(v97, qword_100281898);
  v98 = v129;
  v99 = v122;
  sub_100110C34(v129, v122, _s5StateVMa);
  v100 = sub_1001C5128();
  v101 = sub_1001C65B8();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134217984;
    v103 = *(*v99 + 16);
    sub_10010E494(v99, _s5StateVMa);
    *(v102 + 4) = v103;
    _os_log_impl(&_mh_execute_header, v100, v101, "[PriceTracker] Started, tracking %ld item(s)", v102, 0xCu);
  }

  else
  {
    sub_10010E494(v99, _s5StateVMa);
  }

  v104 = v146;

  (*(v144 + 8))(v159, v145);
  (*(v157 + 8))(v156, v158);
  (*(v141 + 8))(v155, v142);
  (*(v153 + 8))(v152, v154);
  (*(v139 + 8))(v151, v140);
  (*(v149 + 8))(v148, v150);
  (*(v136 + 8))(v128, v137);
  (*(v135 + 8))(v134, v147);
  sub_10010E494(v98, _s5StateVMa);
  sub_10008875C(v104, &qword_100271368, &qword_1001F3AD0);
  return v90;
}

uint64_t sub_100104B90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v4 = __chkstk_darwin(v3 - 8);
  v48 = &updated - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &updated - v6;
  updated = _s14UpdateScheduleVMa(0);
  __chkstk_darwin(updated);
  v47 = &updated - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_100271368, &qword_1001F3AD0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &updated - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &updated - v12;
  v14 = sub_100084528(&qword_1002713E0, &qword_1001F3C10);
  __chkstk_darwin(v14 - 8);
  v16 = (&updated - v15);
  v17 = _s15PersistentStateOMa(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &updated - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &updated - v22;
  v51 = a1;
  sub_10009ADF0(a1, v13, &qword_100271368, &qword_1001F3AD0);
  v24 = _s11PersistenceVMa(0);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v13, 1, v24) == 1)
  {
    sub_10008875C(v13, &qword_100271368, &qword_1001F3AD0);
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  else
  {
    sub_10015DA94(v16);
    sub_10010E494(v13, _s11PersistenceVMa);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_100110AC0(v16, v23, _s15PersistentStateOMa);
      sub_100110C34(v23, v21, _s15PersistentStateOMa);
      sub_10011DDBC(v21, v49);
      sub_10008875C(v51, &qword_100271368, &qword_1001F3AD0);
      v43 = _s15PersistentStateOMa;
      v44 = v23;
      return sub_10010E494(v44, v43);
    }
  }

  sub_10008875C(v16, &qword_1002713E0, &qword_1001F3C10);
  sub_10009ADF0(v51, v11, &qword_100271368, &qword_1001F3AD0);
  if (v25(v11, 1, v24) == 1)
  {
    sub_10008875C(v11, &qword_100271368, &qword_1001F3AD0);
  }

  else
  {
    sub_10015E17C();
    sub_10010E494(v11, _s11PersistenceVMa);
  }

  if (qword_10026EC80 != -1)
  {
    swift_once();
  }

  v26 = sub_100083274(updated, qword_100281A10);
  v27 = v47;
  sub_100110C34(v26, v47, _s14UpdateScheduleVMa);
  v28 = _s6UpdateVMa(0);
  v29 = *(*(v28 - 8) + 56);
  v29(v50, 1, 1, v28);
  v30 = v48;
  v29(v48, 1, 1, v28);
  v31 = _s5StateVMa(0);
  v32 = v31[7];
  v33 = v49;
  v29(v49 + v32, 1, 1, v28);
  v34 = v31[8];
  v29(v33 + v34, 1, 1, v28);
  v35 = (v33 + v31[9]);
  v36 = (v33 + v31[11]);
  v36[4] = 0u;
  v36[5] = 0u;
  v36[2] = 0u;
  v36[3] = 0u;
  *v36 = 0u;
  v36[1] = 0u;
  *v33 = _swiftEmptyArrayStorage;
  v33[1] = _swiftEmptyArrayStorage;
  sub_100110C34(v27, v33 + v31[6], _s14UpdateScheduleVMa);
  v37 = v33 + v32;
  v38 = v50;
  sub_100110BC4(v50, v37);
  sub_100110BC4(v30, v33 + v34);
  *v35 = 0;
  v35[1] = 0;
  v39 = (v33 + v31[10]);
  *v39 = 0;
  v39[1] = 0;
  v40 = v36[3];
  v52[2] = v36[2];
  v52[3] = v40;
  v41 = v36[5];
  v52[4] = v36[4];
  v52[5] = v41;
  v42 = v36[1];
  v52[0] = *v36;
  v52[1] = v42;
  sub_10008875C(v52, &qword_1002712D0, &qword_1001F3A20);
  *v36 = 0u;
  v36[1] = 0u;
  v36[2] = 0u;
  v36[3] = 0u;
  v36[4] = 0u;
  v36[5] = 0u;
  *(v33 + v31[12]) = 0;
  sub_1001A30D0(_swiftEmptyArrayStorage);
  sub_10008875C(v51, &qword_100271368, &qword_1001F3AD0);
  sub_10008875C(v30, &qword_1002712C8, &qword_1001F3A18);
  sub_10008875C(v38, &qword_1002712C8, &qword_1001F3A18);
  v43 = _s14UpdateScheduleVMa;
  v44 = v27;
  return sub_10010E494(v44, v43);
}

uint64_t sub_100105230(uint64_t a1)
{
  v1[11] = a1;
  v2 = sub_1001C4CA8();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  _s5StateVMa(0);
  v1[15] = swift_task_alloc();
  v3 = sub_100084528(&qword_100271338, &qword_1001F3A80);
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100105384, 0, 0);
}

uint64_t sub_100105384()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_10010548C;

    return sub_100109B3C(0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10010548C()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_10010559C, v1, 0);
}

uint64_t sub_10010559C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v15 = *(v0 + 144);
  v16 = *(v0 + 128);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = OBJC_IVAR___BDSPriceTracker_state;
  swift_beginAccess();
  sub_100110C34(v1 + v7, v3, _s5StateVMa);
  sub_1001C4C98();
  v8 = sub_10019EDB4();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v4, v6);
  sub_10010E494(v3, _s5StateVMa);
  *(v0 + 64) = v8;
  *(v0 + 72) = v10;
  *(v0 + 80) = v12 & 1;
  sub_100084528(&qword_100271350, &qword_1001F3A98);
  sub_1001C6368();

  (*(v2 + 8))(v15, v16);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10010573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 2696) = v13;
  *(v8 + 2680) = v12;
  *(v8 + 2664) = v11;
  *(v8 + 2648) = v10;
  *(v8 + 2736) = a8;
  *(v8 + 2640) = a7;
  *(v8 + 2632) = a6;
  *(v8 + 2624) = a5;
  *(v8 + 2616) = a4;
  return _swift_task_switch(sub_100105798, 0, 0);
}

uint64_t sub_100105798()
{
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2736);
  v3 = *(v0 + 2640);
  v4 = *(v0 + 2632);
  v5 = swift_task_alloc();
  *(v0 + 2704) = v5;
  v10 = *(v0 + 2648);
  v11 = *(v0 + 2672);
  v12 = *(v0 + 2688);
  *(v5 + 16) = *(v0 + 2616);
  swift_asyncLet_begin();
  v6 = swift_task_alloc();
  *(v0 + 2712) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2 & 1;
  *(v6 + 40) = v10;
  *(v6 + 56) = v1;
  swift_asyncLet_begin();
  v7 = swift_task_alloc();
  *(v0 + 2720) = v7;
  *(v7 + 16) = v11;
  swift_asyncLet_begin();
  v8 = swift_task_alloc();
  *(v0 + 2728) = v8;
  *(v8 + 16) = v12;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16);
}

uint64_t sub_1001059A8()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] streamTask ended", v4, 2u);
  }

  return _swift_asyncLet_finish(v0 + 1936);
}

uint64_t sub_100105AE0()
{

  return _swift_asyncLet_finish(v0 + 1296);
}

uint64_t sub_100105B64()
{

  return _swift_asyncLet_finish(v0 + 656);
}

uint64_t sub_100105BE8()
{

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_100105C6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100105CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1001112F8;

  return sub_100105D68(a2, a3);
}

uint64_t sub_100105D68(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100084528(&qword_100271368, &qword_1001F3AD0);
  v2[4] = swift_task_alloc();
  v3 = _s11PersistenceVMa(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100105E60, 0, 0);
}

uint64_t sub_100105E60()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_10009ADF0(v0[2], v3, &qword_100271368, &qword_1001F3AD0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10008875C(v0[4], &qword_100271368, &qword_1001F3AD0);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[7];
    sub_100110AC0(v0[4], v6, _s11PersistenceVMa);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *(v7 + 16) = v6;
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_100106008;

    return sub_1001063A0(0xD000000000000018, 0x8000000100201EF0, &unk_1001F3BF0, v7);
  }
}

uint64_t sub_100106008()
{

  return _swift_task_switch(sub_100106120, 0, 0);
}

uint64_t sub_100106120()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] persistentStateTask ended", v4, 2u);
  }

  v5 = *(v0 + 56);

  sub_10010E494(v5, _s11PersistenceVMa);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100106268(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  _s15PersistentStateOMa(0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1001062F8, 0, 0);
}

uint64_t sub_1001062F8()
{
  v1 = v0[4];
  sub_100110C34(v0[2], v1, _s15PersistentStateO2V1VMa);
  sub_10015D470(v1);
  sub_10010E494(v1, _s15PersistentStateOMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001063A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = _s15PersistentStateO2V1VMa(0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_100084528(&qword_1002713D0, &qword_1001F3C00);
  v5[10] = swift_task_alloc();
  v7 = sub_100084528(&qword_1002713D8, &qword_1001F3C08);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100106508, 0, 0);
}

uint64_t sub_100106508()
{
  sub_100084528(&qword_1002713A8, &qword_1001F3B10);
  sub_1001C6388();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1001065D0;
  v2 = v0[10];
  v3 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1001065D0()
{

  return _swift_task_switch(sub_1001066CC, 0, 0);
}

uint64_t sub_1001066CC()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[4];
    sub_100110AC0(v1, v0[9], _s15PersistentStateO2V1VMa);
    v0[15] = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:sub_1001C60A8() + 32];

    v7 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1001068C0;
    v6 = v0[9];

    return v7(v6);
  }
}

uint64_t sub_1001068C0()
{

  return _swift_task_switch(sub_1001069BC, 0, 0);
}

uint64_t sub_1001069BC()
{
  v1 = v0[15];
  v2 = v0[9];
  [v1 endTransaction];

  sub_10010E494(v2, _s15PersistentStateO2V1VMa);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1001065D0;
  v4 = v0[10];
  v5 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v4, 0, 0, v5);
}

uint64_t sub_100106A98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_100106B64;

  return sub_100106C5C(a2, a3, a4 & 1, a5, a6, a7);
}

uint64_t sub_100106B64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100106C5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 88) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_100106C88, 0, 0);
}

uint64_t sub_100106C88()
{
  v1 = *(v0 + 88);
  *(v0 + 56) = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:"PriceTrackerCreateScheduler"];
  v2 = [objc_opt_self() sharedScheduler];
  _s9SchedulerCMa(0);
  swift_allocObject();

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_100106DC0;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_10010E658(v2, v6, v7, v1 & 1, v4, v5);
}

uint64_t sub_100106DC0(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100106EE0, 0, 0);
}

uint64_t sub_100106EE0()
{
  v1 = v0[7];
  [v1 endTransaction];

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100106FBC;
  v3 = v0[9];
  v4 = v0[6];

  return sub_10010EF90(0xD00000000000001BLL, 0x8000000100201EB0, v4, v3);
}

uint64_t sub_100106FBC()
{

  return _swift_task_switch(sub_1001070D4, 0, 0);
}

uint64_t sub_1001070D4()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] schedulerConfigTask ended", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001071F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1001112F8;

  return sub_10010728C(a2, a3);
}

uint64_t sub_10010728C(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_1001072AC, 0, 0);
}

uint64_t sub_1001072AC()
{
  v0[9] = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:"PriceTrackerCreateUserNotifier"];
  if (qword_10026EC10 != -1)
  {
    swift_once();
  }

  v1 = qword_100272690;
  v2 = [objc_opt_self() standardUserDefaults];
  v0[10] = v2;
  _s12UserNotifierCMa();
  inited = swift_initStackObject();
  v0[11] = inited;
  inited[2] = v1;
  inited[3] = &off_100249D10;
  inited[4] = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100107404;
  v7 = v0[7];

  return sub_100088CB4(v7);
}

uint64_t sub_100107404()
{

  return _swift_task_switch(sub_100107500, 0, 0);
}

uint64_t sub_100107500()
{
  v1 = *(v0 + 72);

  [v1 endTransaction];

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1001075E0;
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);

  return sub_10010F594(0xD00000000000001ELL, 0x8000000100201E70, v4, v3);
}

uint64_t sub_1001075E0()
{

  return _swift_task_switch(sub_1001076F8, 0, 0);
}

uint64_t sub_1001076F8()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] activeNotificationsTask ended", v4, 2u);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100107828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1001112F8;

  return sub_1001078C4(a2, a3);
}