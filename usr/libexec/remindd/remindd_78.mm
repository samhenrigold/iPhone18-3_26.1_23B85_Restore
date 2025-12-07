uint64_t sub_1006DF5E8(uint64_t a1)
{
  result = sub_1006DF90C(&qword_100950078, &type metadata accessor for REMRemindersListDataView.PublicTemplateInvocation, &protocol conformance descriptor for REMRemindersListDataView.PublicTemplateInvocation);
  *(a1 + 8) = result;
  return result;
}

void *sub_1006DF640(void *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for RDPublicTemplate(0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  *&v14 = __chkstk_darwin(v11, v13).n128_u64[0];
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a3;
  v47 = 0;
  v17 = [a3 fetchPrimaryActiveCloudKitAccountWithError:{&v47, v14}];
  if (v17)
  {
    v18 = v17;
    v19 = v47;
    v20 = sub_100415C08();
    v21 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = sub_100415DE4(v16, v22, a2, v20);
    if (v3)
    {

      v20, v31, v32, v33, v34, v35, v36, v37;
      v38 = v12[1];
      ++v12;
      v38(v16, v11);
    }

    else
    {
      v40 = v23;
      v20, v24, v25, v26, v27, v28, v29, v30;
      (v12[1])(v16, v11);
      v42 = [v18 objectID];
      v43 = sub_10013BE04(v42);

      v44 = objc_allocWithZone(REMList);
      v12 = [v44 initWithStore:v46 account:v18 storage:v43];

      sub_10013CB64();
      sub_1003B52F4(v10);
    }
  }

  else
  {
    v39 = v47;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1006DF90C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006DF954()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950080);
  v1 = sub_100006654(v0, qword_100950080);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDAlarmTrigger.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t static REMCDAlarmTrigger.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v8 = CKRecord.subscript.getter();
  if (v8)
  {
    v95 = v8;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    if (swift_dynamicCast())
    {
      countAndFlagsBits = v94._countAndFlagsBits;
      object = v94._object;

      v18 = sub_1006E284C(v94);
      if (v18 == 4)
      {
        if (qword_100936728 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_100006654(v19, qword_100950080);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        v94._object, v22, v23, v24, v25, v26, v27, v28;
        if (os_log_type_enabled(v20, v21))
        {
          v93 = v4;
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v94._countAndFlagsBits = v37;
          *v36 = 136446210;
          v38 = sub_10000668C(countAndFlagsBits, object, &v94._countAndFlagsBits);
          object, v39, v40, v41, v42, v43, v44, v45;
          *(v36 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v20, v21, "newCloudObject: Unknown alarm trigger type {type: %{public}s}", v36, 0xCu);
          sub_10000607C(v37);

          v4 = v93;
        }

        else
        {
          v94._object, v29, v30, v31, v32, v33, v34, v35;
        }
      }

      else
      {
        v94._object, v11, v12, v13, v14, v15, v16, v17;
        if (v18 > 1)
        {
          if (v18 == 2)
          {
            v46 = &qword_10094F688;
            v47 = off_1008D4140;
          }

          else
          {
            v46 = &qword_100940370;
            v47 = off_1008D4150;
          }
        }

        else if (v18)
        {
          v46 = &qword_100940360;
          v47 = off_1008D4138;
        }

        else
        {
          v46 = &qword_100940350;
          v47 = off_1008D4130;
        }

        sub_1000060C8(0, v46, v47);
      }
    }
  }

  v48 = [a1 recordID];
  v49 = [v48 recordName];

  if (!v49)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
    v49 = String._bridgeToObjectiveC()();
    v51, v52, v53, v54, v55, v56, v57, v58;
  }

  v59 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v49 context:a3 account:a2];

  if (v59)
  {
    v60 = [a2 ckIdentifier];
    if (v60)
    {
      v61 = v60;
      [v59 mergeDataFromRecord:a1 accountID:v60];

      v62 = v59;
      [v62 setCkServerRecord:a1];
      [v62 setInCloud:1];

      [v62 updateParentReferenceIfNecessary];
      result = swift_dynamicCastUnknownClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (qword_100936728 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      sub_100006654(v64, qword_100950080);
      v65 = a2;
      v62 = Logger.logObject.getter();
      v66 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v62, v66))
      {
        v67 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v67 = 136446466;
        v94._countAndFlagsBits = v4;
        swift_getMetatypeMetadata();
        v68 = String.init<A>(describing:)();
        v70 = v69;
        v71 = sub_10000668C(v68, v69, &v95);
        v70, v72, v73, v74, v75, v76, v77, v78;
        *(v67 + 4) = v71;
        *(v67 + 12) = 2082;
        v79 = [v65 remObjectID];
        if (v79)
        {
          v80 = v79;
          v81 = [v79 description];

          v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v83;
        }

        else
        {
          v84 = 0xE300000000000000;
          v82 = 7104878;
        }

        v85 = sub_10000668C(v82, v84, &v95);
        v84, v86, v87, v88, v89, v90, v91, v92;
        *(v67 + 14) = v85;
        _os_log_impl(&_mh_execute_header, v62, v66, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v67, 0x16u);
        swift_arrayDestroy();
      }
    }
  }

  return 0;
}

Swift::String __swiftcall REMCDAlarmTrigger.recordType()()
{
  v0 = 0x6972546D72616C41;
  v1 = 0xEC00000072656767;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void sub_1006E0208()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    isa = 0;
    if (v23 >> 60 != 15)
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100031A14(v22, v23);
    }

    [v2 setDateComponentsData:isa];
  }

  else
  {
    if (qword_100936728 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100950080);
    v6 = v0;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
      v10 = String.init<A>(describing:)();
      v12 = v11;
      v13 = sub_10000668C(v10, v11, &v22);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Record.type is date but this is not a date trigger {type: %s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

void sub_1006E047C(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v78 = v1;
    v5 = 0;
    while (1)
    {
      v7 = *(&off_1008E43D0 + v5 + 32);
      if (v7 <= 4)
      {
        if (*(&off_1008E43D0 + v5 + 32) <= 1u)
        {
          if (*(&off_1008E43D0 + v5 + 32))
          {
            v45 = [a1 encryptedValues];
            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.getter();
            swift_unknownObjectRelease();
            if (v81)
            {
              v6.super.isa = String._bridgeToObjectiveC()();
              v81, v46, v47, v48, v49, v50, v51, v52;
            }

            else
            {
              v6.super.isa = 0;
            }

            [v4 setContactLabel:v6.super.isa];
          }

          else
          {
            v24 = [a1 encryptedValues];
            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.getter();
            swift_unknownObjectRelease();
            if (v81)
            {
              v6.super.isa = String._bridgeToObjectiveC()();
              v81, v25, v26, v27, v28, v29, v30, v31;
            }

            else
            {
              v6.super.isa = 0;
            }

            [v4 setAddress:v6.super.isa];
          }
        }

        else
        {
          if (v7 == 2)
          {
            v32 = [a1 encryptedValues];
            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.getter();
            swift_unknownObjectRelease();
            v33 = *&v80;
            if (v81)
            {
              v33 = 0.0;
            }

            [v4 setLatitude:v33];
            goto LABEL_6;
          }

          if (v7 != 3)
          {
            v43 = [a1 encryptedValues];
            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.getter();
            swift_unknownObjectRelease();
            v44 = *&v80;
            if (v81)
            {
              v44 = 0.0;
            }

            [v4 setLongitude:v44];
            goto LABEL_6;
          }

          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          CKRecordKeyValueSetting.subscript.getter();
          if (v81)
          {
            v6.super.isa = String._bridgeToObjectiveC()();
            v81, v9, v10, v11, v12, v13, v14, v15;
          }

          else
          {
            v6.super.isa = 0;
          }

          [v4 setLocationUID:v6.super.isa];
        }
      }

      else if (*(&off_1008E43D0 + v5 + 32) > 7u)
      {
        if (v7 == 8)
        {
          v35 = [a1 encryptedValues];
          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.getter();
          swift_unknownObjectRelease();
          if (v81)
          {
            v6.super.isa = String._bridgeToObjectiveC()();
            v81, v36, v37, v38, v39, v40, v41, v42;
          }

          else
          {
            v6.super.isa = 0;
          }

          [v4 setReferenceFrameString:v6.super.isa];
        }

        else if (v7 == 9)
        {
          v16 = [a1 encryptedValues];
          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.getter();
          swift_unknownObjectRelease();
          if (v81)
          {
            v6.super.isa = String._bridgeToObjectiveC()();
            v81, v17, v18, v19, v20, v21, v22, v23;
          }

          else
          {
            v6.super.isa = 0;
          }

          [v4 setRouting:v6.super.isa];
        }

        else
        {
          v54 = [a1 encryptedValues];
          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.getter();
          swift_unknownObjectRelease();
          if (v81)
          {
            v6.super.isa = String._bridgeToObjectiveC()();
            v81, v55, v56, v57, v58, v59, v60, v61;
          }

          else
          {
            v6.super.isa = 0;
          }

          [v4 setTitle:v6.super.isa];
        }
      }

      else
      {
        if (v7 != 5)
        {
          if (v7 == 6)
          {
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.getter();
            if (BYTE2(v80))
            {
              v8 = 0;
            }

            else
            {
              v8 = v80;
            }

            [v4 setProximity:v8];
          }

          else
          {
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.getter();
            v53 = *&v80;
            if (v81)
            {
              v53 = 0.0;
            }

            [v4 setRadius:v53];
          }

          goto LABEL_6;
        }

        v34 = [a1 encryptedValues];
        swift_getObjectType();
        CKRecordKeyValueSetting.subscript.getter();
        swift_unknownObjectRelease();
        if (v81 >> 60 == 15)
        {
          v6.super.isa = 0;
        }

        else
        {
          v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100031A14(v80, v81);
        }

        [v4 setMapKitHandle:v6.super.isa];
      }

LABEL_6:
      if (++v5 == 11)
      {

        return;
      }
    }
  }

  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100006654(v62, qword_100950080);
  v63 = v1;
  oslog = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v80 = v66;
    *v65 = 136315138;
    ObjectType = swift_getObjectType();
    sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
    v67 = String.init<A>(describing:)();
    v69 = v68;
    v70 = sub_10000668C(v67, v68, &v80);
    v69, v71, v72, v73, v74, v75, v76, v77;
    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, oslog, v64, "Record.type is location but this is not a location trigger {type: %s}", v65, 0xCu);
    sub_10000607C(v66);
  }

  else
  {
  }
}

void sub_1006E0C94()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    v4 = *&v22;
    if (v23)
    {
      v4 = 0.0;
    }

    [v2 setTimeInterval:v4];
  }

  else
  {
    if (qword_100936728 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100950080);
    v6 = v0;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
      v10 = String.init<A>(describing:)();
      v12 = v11;
      v13 = sub_10000668C(v10, v11, &v22);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Record.type is time interval but this is not a time interval trigger {type: %s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

void sub_1006E0EE4()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    if (BYTE2(v22))
    {
      v4 = 0;
    }

    else
    {
      v4 = v22;
    }

    [v2 setEvent:v4];
  }

  else
  {
    if (qword_100936728 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100950080);
    v6 = v0;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      swift_getObjectType();
      sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
      v10 = String.init<A>(describing:)();
      v12 = v11;
      v13 = sub_10000668C(v10, v11, &v22);
      v12, v14, v15, v16, v17, v18, v19, v20;
      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Record.type is vehicle but this is not a vehicle trigger {type: %s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall REMCDAlarmTrigger.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = String._bridgeToObjectiveC()();
  v71.receiver = v3;
  v71.super_class = REMCDAlarmTrigger;
  objc_msgSendSuper2(&v71, "mergeDataFromRecord:accountID:", from.super.isa, v5);

  v6 = [(objc_class *)from.super.isa recordID];
  v7 = [v6 recordName];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    v7 = String._bridgeToObjectiveC()();
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  v17 = [v3 ckIdentifierFromRecordName:v7];

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v17 = String._bridgeToObjectiveC()();
    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  [v3 setCkIdentifier:v17];

  v27 = CKRecord.subscript.getter();
  if (v27 && (v70 = v27, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
  {
    countAndFlagsBits = v69._countAndFlagsBits;
    object = v69._object;

    v37 = sub_1006E284C(v69);
    if (v37 != 4)
    {
      v69._object, v30, v31, v32, v33, v34, v35, v36;
      if (v37 > 1)
      {
        if (v37 == 2)
        {
          sub_1006E0C94();
        }

        else
        {
          sub_1006E0EE4();
        }
      }

      else if (v37)
      {
        sub_1006E047C(from.super.isa);
      }

      else
      {
        sub_1006E0208();
      }

      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v66 = swift_dynamicCastObjCClass();
        if (!v66)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v66 = 0;
      }

      v67 = sub_100128F0C(v66);

      if (v67)
      {
        objc_opt_self();
        v68 = swift_dynamicCastObjCClass();
        if (!v68)
        {
        }
      }

      else
      {
        v68 = 0;
      }

      [v3 setAlarm:v68];

      return;
    }
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100006654(v38, qword_100950080);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  object, v41, v42, v43, v44, v45, v46, v47;
  if (os_log_type_enabled(v39, v40))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v69._countAndFlagsBits = v56;
    *v55 = 136315138;
    if (object)
    {
      v57 = countAndFlagsBits;
    }

    else
    {
      v57 = 7104878;
    }

    if (!object)
    {
      object = 0xE300000000000000;
    }

    v58 = sub_10000668C(v57, object, &v69._countAndFlagsBits);
    object, v59, v60, v61, v62, v63, v64, v65;
    *(v55 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v39, v40, "mergeData: Unknown trigger type {type: %s}", v55, 0xCu);
    sub_10000607C(v56);
  }

  else
  {
    object, v48, v49, v50, v51, v52, v53, v54;
  }
}

CKRecord_optional __swiftcall REMCDAlarmTrigger.newlyCreatedRecord()()
{
  v1 = v0;
  v43.super_class = REMCDAlarmTrigger;
  v3 = objc_msgSendSuper2(&v43, "newlyCreatedRecord");
  if (v3)
  {
    v4 = [v0 alarm];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 recordID];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v6];

    CKRecord.subscript.setter();
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v10 = v1;
      CKRecordKeyValueSetting.subscript.setter();
      v11 = [v9 dateComponentsData];
      if (v11)
      {
        v12 = v11;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();
      }

LABEL_11:
      CKRecordKeyValueSetting.subscript.setter();

      goto LABEL_27;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        v10 = v1;
        CKRecordKeyValueSetting.subscript.setter();
        [v21 timeInterval];
      }

      else
      {
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (!v40)
        {
          goto LABEL_27;
        }

        v41 = v40;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        v10 = v1;
        CKRecordKeyValueSetting.subscript.setter();
        [v41 event];
      }

      goto LABEL_11;
    }

    v14 = v13;
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    v42 = v1;
    CKRecordKeyValueSetting.subscript.setter();
    v15 = [v3 encryptedValues];
    swift_getObjectType();
    [v14 latitude];
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v16 = [v3 encryptedValues];
    swift_getObjectType();
    [v14 longitude];
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    [v14 proximity];
    CKRecordKeyValueSetting.subscript.setter();
    [v14 radius];
    CKRecordKeyValueSetting.subscript.setter();
    v17 = [v3 encryptedValues];
    v18 = [v14 title];
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v22 = [v14 locationUID];
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    CKRecordKeyValueSetting.subscript.setter();
    v24 = [v3 encryptedValues];
    v25 = [v14 address];
    if (v25)
    {
      v26 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v27 = [v3 encryptedValues];
    v28 = [v14 routing];
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v30 = [v3 encryptedValues];
    v31 = [v14 referenceFrameString];
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v33 = [v3 encryptedValues];
    v34 = [v14 contactLabel];
    if (v34)
    {
      v35 = v34;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v36 = [v3 encryptedValues];
    v37 = [v14 mapKitHandle];
    if (v37)
    {
      v38 = v37;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();

    swift_unknownObjectRelease();
  }

LABEL_27:
  v39 = v3;
  result.value.super.isa = v39;
  result.is_nil = v2;
  return result;
}

void __swiftcall REMCDAlarmTrigger.parentCloud()(REMCDObject_optional *__return_ptr retstr)
{
  v2 = [v1 alarm];

  v3 = v2;
}

Swift::Void __swiftcall REMCDAlarmTrigger.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100950080);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

Swift::Void __swiftcall REMCDAlarmTrigger.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100950080);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v73 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v75);
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v23 = [v4 alarm];
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 remObjectID];
  if (!v25)
  {

LABEL_12:
    v29 = 0xE300000000000000;
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

LABEL_13:
  v30 = sub_10000668C(v7, v29, &v75);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v8 + 14) = v30;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for alarmTrigger {alarmTriggerID: %{public}s, alarmID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 alarm];
  if (v38)
  {
    v74 = v38;
    if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v39 = v4;
      v40 = v74;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = &selRef_persistentStoreForIdentifier_;
        v45 = [v39 remObjectID];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 description];

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v44 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v50 = 0xE300000000000000;
          v48 = 7104878;
        }

        v51 = sub_10000668C(v48, v50, &v75);
        v50, v52, v53, v54, v55, v56, v57, v58;
        *(v43 + 4) = v51;
        *(v43 + 12) = 2082;
        v59 = [v40 v44[106]];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 description];

          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v63;
        }

        else
        {
          v64 = 0xE300000000000000;
          v62 = 7104878;
        }

        v65 = sub_10000668C(v62, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v41, v42, "Alarm is marked for deletion but alarm trigger is not {alarmTriggerID: %{public}s, alarmID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();
      }

      [v39 markForDeletion];
    }

    [v74 forcePushToCloud];
  }
}

unint64_t sub_1006E284C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E4350, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t _sSo17REMCDAlarmTriggerC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100950080);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo17REMCDAlarmTriggerC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100950080);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_1006E2B90()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009500B0);
  v1 = sub_100006654(v0, qword_1009500B0);
  if (qword_100936478 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1006E2C58()
{
  if (qword_100935D38 != -1)
  {
    swift_once();
  }

  v0 = qword_100974CD0;
  v1 = type metadata accessor for RDAsyncAnalytics();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_postEventWorkItem] = 0;
  v3 = v0;
  *&v2[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_fetchCounts] = sub_10038F94C(&_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_saveCounts] = sub_10038F94C(&_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_queue] = v3;
  v2[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_enabled] = 1;
  v5.receiver = v2;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, "init");
  qword_1009500C8 = result;
  return result;
}

uint64_t sub_1006E2D48(uint64_t a1)
{
  v2 = type metadata accessor for REMAnalyticsEvent();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v7[2] = 0;
  v7[3] = 0;
  v8 = *(v3 + 104);
  v107 = enum case for REMAnalyticsEvent.storeControllerReadWrite(_:);
  v105 = v8;
  v106 = v3 + 104;
  v8(v7, v5);
  v9 = REMAnalyticsEvent.id.getter();
  v11 = v10;
  v12 = *(v3 + 8);
  v108 = v7;
  v109 = v3 + 8;
  v110 = v2;
  v104 = v12;
  v12(v7, v2);
  String.utf8CString.getter();
  v114 = os_transaction_create();

  if (qword_100936730 != -1)
  {
LABEL_24:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100006654(v13, qword_1009500B0);

  v112 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v11, v17, v18, v19, v20, v21, v22, v23;
  v24 = os_log_type_enabled(v15, v16);
  v113 = v11;
  v111 = v9;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v118[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10000668C(v9, v11, v118);
    _os_log_impl(&_mh_execute_header, v15, v16, "os_transaction INIT {name: %s}", v25, 0xCu);
    sub_10000607C(v26);
  }

  v27 = OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_fetchCounts;
  swift_beginAccess();
  v115 = v27;

  v28 = sub_1001A6DC0();
  v29 = OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_saveCounts;
  swift_beginAccess();

  sub_1007256B0(v30, v28);
  v11 = 0;
  v33 = v31 + 56;
  v32 = *(v31 + 56);
  v116 = v31;
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v32;
  v37 = (v34 + 63) >> 6;
  if ((v35 & v32) != 0)
  {
    do
    {
LABEL_13:
      while (1)
      {
        v46 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        v47 = (*(v116 + 48) + ((v11 << 10) | (16 * v46)));
        v49 = *v47;
        v48 = v47[1];
        swift_beginAccess();
        v50 = *(a1 + v29);
        v9 = *(v50 + 16);

        if (v9)
        {
          v51 = sub_100005F4C(v49, v48);
          if (v52)
          {
            v9 = *(*(v50 + 56) + 8 * v51);
            swift_endAccess();
            v53 = v115;
            swift_beginAccess();
            v54 = *(a1 + v53);
            if (*(v54 + 16))
            {
              v55 = sub_100005F4C(v49, v48);
              if (v56)
              {
                break;
              }
            }
          }
        }

        swift_endAccess();
        v48, v38, v39, v40, v41, v42, v43, v44;
        if (!v36)
        {
          goto LABEL_9;
        }
      }

      v103 = *(*(v54 + 56) + 8 * v55);
      swift_endAccess();
      type metadata accessor for Analytics();
      v57 = v9;
      v9 = v108;
      *v108 = v49;
      v9[1] = v48;
      v9[2] = v57;
      v9[3] = v103;
      v58 = v110;
      v105(v9, v107, v110);
      static Analytics.postEvent(_:)();
      v104(v9, v58);
    }

    while (v36);
  }

  while (1)
  {
LABEL_9:
    v45 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v45 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v45);
    ++v11;
    if (v36)
    {
      v11 = v45;
      goto LABEL_13;
    }
  }

  v59 = *(a1 + v29);
  *(a1 + v29) = _swiftEmptyDictionarySingleton;
  v59, v60, v61, v62, v63, v64, v65, v66;
  v67 = *(a1 + v115);
  *(a1 + v115) = _swiftEmptyDictionarySingleton;
  v67, v68, v69, v70, v71, v72, v73, v74;
  *(a1 + OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_postEventWorkItem) = 0;

  v75 = v113;

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  v75, v78, v79, v80, v81, v82, v83, v84;
  if (os_log_type_enabled(v76, v77))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v117[0] = v93;
    *v92 = 136315138;
    v94 = sub_10000668C(v111, v75, v117);
    v75, v95, v96, v97, v98, v99, v100, v101;
    *(v92 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v76, v77, "os_transaction RELEASE {name: %s}", v92, 0xCu);
    sub_10000607C(v93);
  }

  else
  {
    v75, v85, v86, v87, v88, v89, v90, v91;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1006E32E8(_OWORD *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = a1[3];
  v12[3] = a1[2];
  v12[4] = v13;
  v14 = a1[5];
  v12[5] = a1[4];
  v12[6] = v14;
  v15 = a1[1];
  v12[1] = *a1;
  v12[2] = v15;
  aBlock[4] = sub_1006E3C64;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008FCE98;
  v16 = _Block_copy(aBlock);
  sub_1006E3C6C(a1, v18);
  static DispatchQoS.unspecified.getter();
  v18[0] = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

void sub_1006E3578(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1006E35D0(a1);

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1006E35D0(uint64_t a1)
{
  v33[0] = type metadata accessor for REMAnalyticsEvent();
  v2 = *(v33[0] - 8);
  __chkstk_darwin(v33[0], v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&qword_10093EE58, &unk_10079E1F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100791300;
  *(v6 + 32) = NLTagSchemeLexicalClass;
  v7 = objc_allocWithZone(NLTagger);
  type metadata accessor for NLTagScheme(0);
  v8 = NLTagSchemeLexicalClass;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6, v10, v11, v12, v13, v14, v15, v16;
  v17 = [v7 initWithTagSchemes:isa];

  v18 = String._bridgeToObjectiveC()();
  [v17 setString:v18];

  v39 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v19 = String.count.getter();
  v33[4] = &v39;
  v33[5] = &v38;
  v33[6] = &v37;
  v33[7] = &v36;
  v33[8] = &v35;
  NLTagger.enumerateTags(in:unit:scheme:options:using:)();
  v20 = v37;
  v21 = v39;
  v23 = v35;
  v22 = v36;
  v24 = *(a1 + 48);
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  v28 = *(a1 + 16);
  v29 = *(a1 + 40);
  v30 = *(a1 + 73);
  v34 = *(a1 + 72);
  v27 = v34;
  *v5 = v38;
  *(v5 + 1) = v21;
  *(v5 + 2) = v20;
  *(v5 + 3) = v22;
  *(v5 + 4) = v23;
  *(v5 + 5) = v24;
  v5[48] = v25;
  *(v5 + 7) = v26;
  v5[64] = v27;
  *(v5 + 72) = *(a1 + 80);
  v5[88] = v28;
  *(v5 + 6) = *(a1 + 24);
  v5[112] = v29;
  v5[113] = v30;
  *(v5 + 15) = v19;
  v31 = v33[0];
  (*(v2 + 104))(v5, enum case for REMAnalyticsEvent.reminderIngestorMerged(_:), v33[0]);
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  REMAnalyticsManager.post(event:)();

  return (*(v2 + 8))(v5, v31);
}

void sub_1006E38CC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a1)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v18;
    if (v14 == v17 && v16 == v18)
    {
      v16, v18, v19, v20, v21, v22, v23, v24;
      v25, v43, v44, v45, v46, v47, v48, v49;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v28 = a1;
      v16, v29, v30, v31, v32, v33, v34, v35;
      v25, v36, v37, v38, v39, v40, v41, v42;
      if ((v27 & 1) == 0)
      {
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v51;
        v57 = v54;
        if (v56 == v55 && v53 == v54)
        {

          v53, v74, v75, v76, v77, v78, v79, v80;
          v57, v81, v82, v83, v84, v85, v86, v87;
        }

        else
        {
          v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v53, v60, v61, v62, v63, v64, v65, v66;
          v57, v67, v68, v69, v70, v71, v72, v73;
          if ((v59 & 1) == 0)
          {
            v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v90 = v89;
            v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v93 = v88;
            v94 = v91;
            if (v93 == v92 && v90 == v91)
            {

              v90, v95, v96, v97, v98, v99, v100, v101;
              v94, v102, v103, v104, v105, v106, v107, v108;
            }

            else
            {
              v109 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v90, v110, v111, v112, v113, v114, v115, v116;
              v94, v117, v118, v119, v120, v121, v122, v123;
              if ((v109 & 1) == 0)
              {
                v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v126 = v125;
                v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v129 = v124;
                v130 = v127;
                if (v129 == v128 && v126 == v127)
                {

                  v126, v131, v132, v133, v134, v135, v136, v137;
                  v130, v138, v139, v140, v141, v142, v143, v144;
                }

                else
                {
                  v145 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v126, v146, v147, v148, v149, v150, v151, v152;
                  v130, v153, v154, v155, v156, v157, v158, v159;
                  if ((v145 & 1) == 0)
                  {
                    v50 = *a8 + 1;
                    if (!__OFADD__(*a8, 1))
                    {
                      a4 = a8;
                      goto LABEL_10;
                    }

LABEL_40:
                    __break(1u);
                    return;
                  }
                }

                v50 = *a7 + 1;
                if (!__OFADD__(*a7, 1))
                {
                  a4 = a7;
                  goto LABEL_10;
                }

LABEL_39:
                __break(1u);
                goto LABEL_40;
              }
            }

            v50 = *a6 + 1;
            if (!__OFADD__(*a6, 1))
            {
              a4 = a6;
              goto LABEL_10;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        v50 = *a5 + 1;
        if (!__OFADD__(*a5, 1))
        {
          a4 = a5;
          goto LABEL_10;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v50 = *a4 + 1;
    if (!__OFADD__(*a4, 1))
    {
LABEL_10:
      *a4 = v50;
      return;
    }

    __break(1u);
    goto LABEL_37;
  }
}

uint64_t initializeWithCopy for RDReminderChangeForAnalytics(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for RDReminderChangeForAnalytics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v4, v5, v6, v7, v8, v9, v10, v11;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v12 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v12;
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

__n128 initializeWithTake for RDReminderChangeForAnalytics(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t assignWithTake for RDReminderChangeForAnalytics(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(a2 + 8);
  v11 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v10;
  v11, a2, a3, a4, a5, a6, a7, a8;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDReminderChangeForAnalytics(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for RDReminderChangeForAnalytics(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006E3F44(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  sub_10000F61C(a1, v8);
  if (sub_10047A67C(v8, v9))
  {
    v10 = objc_opt_self();
    v11 = a1[3];
    v12 = a1[4];
    sub_10000F61C(a1, v11);
    (*(v12 + 16))(v23, v11, v12);
    sub_10000F61C(v23, v23[3]);
    sub_10051EE80(v7);
    Date.timeIntervalSinceNow.getter();
    v14 = v13;
    (*(v4 + 8))(v7, v3);
    [v10 throttledErrorWithRemainingTimeInterval:v14];
    sub_10000607C(v23);
    return swift_willThrow();
  }

  else
  {
    v16 = a1[3];
    v17 = a1[4];
    sub_10000F61C(a1, v16);
    (*(v17 + 24))(v16, v17);
    v19 = a1[3];
    v18 = a1[4];
    sub_10000F61C(a1, v19);
    result = (*(*(v18 + 8) + 8))(v19);
    if (!v1)
    {
      v20 = a1[3];
      v21 = a1[4];
      sub_10000F61C(a1, v20);
      return (*(v21 + 32))(v20, v21);
    }
  }

  return result;
}

void sub_1006E4184()
{
  v1 = v0;
  v2 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v61 = *(v2 - 1);
  __chkstk_darwin(v2, v3);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v60 - v7;
  v9 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v60 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v16 = __chkstk_darwin(v13, v15);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + 16);
  *v18 = v19;
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v13, v16);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v13);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_started;
  if (*(v1 + OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_started))
  {
    if (qword_100936740 == -1)
    {
LABEL_4:
      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_100950120);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Started RDSuggestedAttributesAutoTrainer more than once", v26, 2u);
      }

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (qword_100936740 != -1)
  {
    swift_once();
  }

  v60 = v12;
  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100950120);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Starting RDSuggestedAttributesAutoTrainer", v30, 2u);
  }

  *(v1 + v22) = 1;
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v32[2] = v20;
  v32[3] = sub_1006E7B04;
  v32[4] = v31;
  type metadata accessor for RDDynamicXPCActivity();
  swift_allocObject();
  v33 = v20;
  v34 = sub_1005A9A28(0, sub_1000FCE88, v32);

  *(v1 + OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_xpcActivity) = v34;

  v35 = *(v1 + 24);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v37 = [objc_opt_self() cdEntityName];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  *(inited + 32) = v38;
  *(inited + 40) = v40;
  v41 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v42 = swift_allocObject();
  swift_weakInit();

  v43 = v60;
  UUID.init()();
  sub_100026CD8(v43, v8, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  *&v8[v2[5]] = v41;
  *&v8[v2[6]] = v33;
  v44 = &v8[v2[7]];
  *v44 = sub_1006E7B20;
  v44[1] = v42;
  v45 = *(v35 + 40);
  v46 = v33;

  os_unfair_lock_lock(v45);
  sub_100026CD8(v8, v62, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v47 = *(v35 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v35 + 48) = v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = sub_100365714(0, *v47->clientIdentity + 1, 1, v47);
    *(v35 + 48) = v47;
  }

  v50 = *v47->clientIdentity;
  v49 = *&v47->clientIdentity[8];
  if (v50 >= v49 >> 1)
  {
    v47 = sub_100365714((v49 > 1), v50 + 1, 1, v47);
  }

  *v47->clientIdentity = v50 + 1;
  sub_10035083C(v62, v47 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v50, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  *(v35 + 48) = v47;
  swift_endAccess();
  os_unfair_lock_unlock(v45);
  v41, v51, v52, v53, v54, v55, v56, v57;

  sub_1003508A4(v8, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

  v58 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v58 - 8) + 56))(v43, 0, 1, v58);
  v59 = OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_storeControllerObserverToken;
  swift_beginAccess();
  sub_100117A3C(v43, v1 + v59, &qword_100942CA0, &qword_1007A3810);
  swift_endAccess();
  sub_1006E6D74(0);
}

uint64_t sub_1006E488C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950120);
  v1 = sub_100006654(v0, qword_100950120);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1006E4954()
{
  result = [objc_opt_self() suggestedAttributes];
  qword_100950138 = result;
  return result;
}

uint64_t sub_1006E4990@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity____lazy_storage___throttlingPolicy;
  swift_beginAccess();
  sub_100010364(&v1[v5], &v13, &unk_100940320, qword_10079F2F0);
  if (v14)
  {
    return sub_100054B6C(&v13, a1);
  }

  sub_1000050A4(&v13, &unk_100940320, qword_10079F2F0);
  v7 = *&v1[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_configs + 24];
  v8 = *&v1[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_configs + 32];
  sub_10000F61C(&v1[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_configs], v7);
  v9 = (*(v8 + 8))(v7, v8);
  v14 = ObjectType;
  v15 = &off_1008FD008;
  *&v13 = v1;
  v10 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v11 = swift_allocObject();
  sub_100054B6C(&v13, v11 + 16);
  *(v11 + 56) = v9;
  a1[3] = v10;
  a1[4] = &off_1008F5B28;
  *a1 = v11;
  sub_10000A87C(a1, &v13);
  swift_beginAccess();
  v12 = v2;
  sub_100117A3C(&v13, v2 + v5, &unk_100940320, qword_10079F2F0);
  return swift_endAccess();
}

uint64_t sub_1006E4BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v29);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDSuggestedAttributesAutoTrainingActivity();
  if (swift_dynamicCast())
  {

    v5 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 32);
    swift_unknownObjectRetain();
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
    return sub_10000607C(v29);
  }

  else
  {
    if (qword_100936740 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100950120);
    sub_10000A87C(a1, v28);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136446210;
      sub_10000A87C(v28, &v26);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      sub_10000607C(v28);
      v17 = sub_10000668C(v14, v16, &v27);
      v16, v18, v19, v20, v21, v22, v23, v24;
      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "RDSuggestedAttributesAutoTrainingExecutionDateStorage.lastExecutedDate(for:) must work with RDSuggestedAttributesAutoTrainingActivity only {executable: %{public}s}", v12, 0xCu);
      sub_10000607C(v13);
    }

    else
    {

      sub_10000607C(v28);
    }

    sub_10000607C(v29);
    v25 = type metadata accessor for Date();
    return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
  }
}

uint64_t sub_1006E4E68(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v31[-v7];
  sub_10000A87C(a1, v34);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDSuggestedAttributesAutoTrainingActivity();
  if (swift_dynamicCast())
  {

    v9 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v8, a2, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    v13 = *(v9 + 40);
    swift_unknownObjectRetain();
    v13(v8, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100936740 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_100950120);
    sub_10000A87C(a1, v33);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136446210;
      sub_10000A87C(v33, v31);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      sub_10000607C(v33);
      v22 = sub_10000668C(v19, v21, &v32);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "RDSuggestedAttributesAutoTrainingExecutionDateStorage.updateLastExecutedDate(for:) must work with RDSuggestedAttributesAutoTrainingActivity only {executable: %{public}s}", v17, 0xCu);
      sub_10000607C(v18);
    }

    else
    {

      sub_10000607C(v33);
    }
  }

  return sub_10000607C(v34);
}

uint64_t sub_1006E52E8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_identifier);

  return v1;
}

uint64_t sub_1006E5354()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_executable);
  v3[4] = &off_1008FCFB0;
  v3[5] = &off_1008FCFC0;
  v3[3] = type metadata accessor for RDSuggestedAttributesAutoTrainer.RDSuggestedAttributesAutoTrainingActivityExecutable();
  v3[0] = v1;

  sub_10045FABC(v3);
  return sub_10000607C(v3);
}

uint64_t sub_1006E53D8()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v2 - 8, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_storeControllerObserverToken;
  swift_beginAccess();
  sub_100010364(v1 + v15, v9, &qword_100942CA0, &qword_1007A3810);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000050A4(v9, &qword_100942CA0, &qword_1007A3810);
LABEL_5:

    swift_unknownObjectRelease();
    sub_10000607C((v1 + 56));
    sub_1000050A4(v1 + v15, &qword_100942CA0, &qword_1007A3810);

    return v1;
  }

  sub_10035083C(v9, v14, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v16 = *(v1 + 24);
  v17 = *(v16 + 40);

  os_unfair_lock_lock(v17);
  v23[0] = v23;
  __chkstk_darwin(v18, v19);
  v23[-2] = v14;
  swift_beginAccess();
  v20 = sub_1002601AC(sub_10014D8A4, &v23[-4]);
  v21 = *(*(v16 + 48) + 16);
  if (v21 >= v20)
  {
    sub_100260C60(v20, v21);
    swift_endAccess();
    os_unfair_lock_unlock(v17);

    sub_1003508A4(v14, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    (*(v11 + 56))(v5, 1, 1, v10);
    swift_beginAccess();
    sub_100117A3C(v5, v1 + v15, &qword_100942CA0, &qword_1007A3810);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1006E5734()
{
  sub_1006E53D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1006E578C()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_100936748 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v9 = *(v3 + 8);
  v8 = v3 + 8;
  v7 = v9;
  v9(v6, v2);
  if (qword_100936740 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100950120);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v15[1] = v8;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "RDSuggestedAttributesAutoTrainingActivityExecutable: execute now", v13, 2u);
  }

  (*(v1 + 32))();
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return v7(v6, v2);
}

void sub_1006E5A40(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2, v3);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = v76 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v76[1] = v2;
    v78 = v9;
    if (qword_100936740 != -1)
    {
      swift_once();
    }

    v80 = v1;
    v12 = type metadata accessor for Logger();
    v79 = sub_100006654(v12, qword_100950120);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "RDSuggestedAttributesAutoTrainer XPC activity called back to run", v15, 2u);
    }

    v16 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for RDSuggestedAttributesAutoTrainer.RDSuggestedAttributesAutoTrainingActivityExecutable();
    v17 = swift_allocObject();
    v17[2] = 0xD000000000000027;
    v17[3] = 0x80000001007FF440;
    v17[4] = sub_1006E7B28;
    v17[5] = v16;
    v19 = *(v11 + 40);
    v18 = *(v11 + 48);
    sub_10000A87C(v11 + 56, v83);
    v20 = objc_opt_self();
    swift_unknownObjectRetain();
    v21 = [v20 sharedBabysitter];
    v22 = v21;
    v77 = v5;
    if (v21)
    {
      v21 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
      v23 = &off_1008F54F0;
    }

    else
    {
      v23 = 0;
      v82[1] = 0;
      v82[2] = 0;
    }

    v82[0] = v22;
    v82[3] = v21;
    v82[4] = v23;
    v24 = type metadata accessor for RDSuggestedAttributesAutoTrainingActivity();
    v25 = objc_allocWithZone(v24);
    v26 = &v25[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_identifier];
    v84 = v24;

    sub_1000F5104(&qword_100950438, &unk_1007B64F0);
    *v26 = String.init<A>(reflecting:)();
    v26[1] = v27;
    v28 = &v25[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity____lazy_storage___throttlingPolicy];
    *v28 = 0u;
    *(v28 + 1) = 0u;
    *(v28 + 4) = 0;
    *&v25[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_executable] = v17;
    v29 = &v25[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_states];
    *v29 = v19;
    *(v29 + 1) = v18;
    sub_10000A87C(v83, &v25[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_configs]);
    sub_100010364(v82, &v25[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_babysitter], &unk_10093D8F0, &unk_10079B600);
    v30 = type metadata accessor for RDSuggestedAttributesAutoTrainingActivity.RDSuggestedAttributesAutoTrainingExecutionDateStorage();
    v31 = swift_allocObject();
    *(v31 + 16) = v19;
    *(v31 + 24) = v18;
    v32 = &v25[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_executionDateStorage];
    v32[3] = v30;
    v32[4] = &off_1008FCFE0;
    *v32 = v31;
    v81.receiver = v25;
    v81.super_class = v24;
    swift_unknownObjectRetain();
    v33 = objc_msgSendSuper2(&v81, "init");
    sub_10000607C(v83);
    sub_1000050A4(v82, &unk_10093D8F0, &unk_10079B600);
    v83[3] = v24;
    v83[4] = &off_1008FD028;
    v83[0] = v33;
    v34 = v33;
    v35 = v80;
    sub_1006E3F44(v83);
    if (v35)
    {
      sub_10000607C(v83);
      swift_getErrorValue();
      if (Error.isREMError(withErrorCode:)())
      {
        v76[0] = v34;
        v80 = v35;
        v36 = *(v11 + 48);
        ObjectType = swift_getObjectType();
        v38 = *(v36 + 32);
        swift_unknownObjectRetain();
        v39 = v78;
        v38(ObjectType, v36);
        swift_unknownObjectRelease();
        v40 = v77;
        sub_100010364(v39, v77, &unk_100938850, qword_100795AE0);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = v39;
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v83[0] = v45;
          *v44 = 136446210;
          v46 = Optional.descriptionOrNil.getter();
          v47 = v40;
          v48 = v46;
          v50 = v49;
          sub_1000050A4(v47, &unk_100938850, qword_100795AE0);
          v51 = sub_10000668C(v48, v50, v83);
          v50, v52, v53, v54, v55, v56, v57, v58;
          *(v44 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v41, v42, "RDSuggestedAttributesAutoTrainer TRAIN THROTTLED, skipping {lastExecuted: %{public}s}", v44, 0xCu);
          sub_10000607C(v45);

          v59 = v43;
        }

        else
        {

          sub_1000050A4(v40, &unk_100938850, qword_100795AE0);
          v59 = v39;
        }

        sub_1000050A4(v59, &unk_100938850, qword_100795AE0);
      }

      else
      {
        swift_errorRetain();
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v76[0] = v34;
          v63 = v62;
          v64 = swift_slowAlloc();
          v83[0] = v64;
          *v63 = 136315138;
          swift_getErrorValue();
          v65 = Error.rem_errorDescription.getter();
          v67 = v66;
          v68 = sub_10000668C(v65, v66, v83);
          v67, v69, v70, v71, v72, v73, v74, v75;
          *(v63 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v60, v61, "RDSuggestedAttributesAutoTrainer TRAIN ERROR: (%s", v63, 0xCu);
          sub_10000607C(v64);

          v34 = v76[0];
        }

        swift_willThrow();
      }
    }

    else
    {

      sub_10000607C(v83);
    }
  }
}

uint64_t sub_1006E61E8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1006E6250();
  }

  return result;
}

void sub_1006E6250()
{
  v2 = v0;
  v3 = type metadata accessor for REMSuggestedAttributesTrainer.Result();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v92 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v98 = &v87 - v9;
  v97 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97, v10);
  v100 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters.AnchoredBubble();
  v102 = *(v12 - 8);
  __chkstk_darwin(v12, v13);
  v95 = (&v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15, v16);
  v18 = &v87 - v17;
  v111 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters.IntentionalWord();
  v101 = *(v111 - 8);
  __chkstk_darwin(v111, v19);
  v94 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v106 = &v87 - v23;
  v24 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters.Embedding();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v93 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v105 = &v87 - v30;
  v31 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters.CoreBehavior();
  v107 = *(v31 - 8);
  v108 = v31;
  __chkstk_darwin(v31, v32);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v36);
  v104 = &v87 - v37;
  if (qword_100936740 != -1)
  {
    swift_once();
  }

  v109 = v18;
  v110 = v24;
  v99 = v25;
  v103 = v12;
  v38 = type metadata accessor for Logger();
  v91 = sub_100006654(v38, qword_100950120);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "RDSuggestedAttributesAutoTrainer TRAIN START", v41, 2u);
  }

  v42 = v2[6];
  v43 = *(v2[3] + 16);
  v113[0] = 0xD000000000000020;
  v113[1] = 0x80000001007B6370;
  v113[3] = 0;
  v114[0] = 0;
  v113[2] = 0;
  *(v114 + 6) = 0;
  v44 = v43;
  sub_100404AFC(v113, sub_1006E7620, 0);
  v46 = v45;

  if (!v1)
  {
    v112 = 0;
    v47 = [v46 dataRepresentationWithError:&v112];

    v48 = v112;
    if (v47)
    {
      v87 = v4;
      v88 = v3;
      ObjectType = swift_getObjectType();
      v50 = v48;
      v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      (*(v42 + 16))(v51, v53, ObjectType, v42);
      v89 = [objc_allocWithZone(REMSuggestedAttributesPerformer) initWithQueue:v2[2] store:v2[4]];
      v54 = v104;
      REMSuggestedAttributesTrainer.Parameters.CoreBehavior.init(isEnabled:support:adjustment:confidence:validationRelativeSupport:validationConfidence:feedbackResetVersion:feedbackExpirationWindow:)();
      v55 = v105;
      REMSuggestedAttributesTrainer.Parameters.Embedding.init(isEnabled:neighborsToConsider:)();
      v56 = v106;
      REMSuggestedAttributesTrainer.Parameters.IntentionalWord.init(isEnabled:k:)();
      v57 = v109;
      REMSuggestedAttributesTrainer.Parameters.AnchoredBubble.init(enabledOniOS:enabledOnmacOS:defaultWordDistanceScale:overrideLocalWordDistanceScale:)();
      (*(v107 + 16))(v34, v54, v108);
      v58 = v99;
      (*(v99 + 16))(v93, v55, v110);
      v59 = v102;
      v60 = *(v102 + 16);
      v90 = 0;
      v61 = v103;
      v60(v95, v57, v103);
      v62 = v101;
      (*(v101 + 16))(v94, v56, v111);
      v63 = v89;
      v64 = v100;
      REMSuggestedAttributesTrainer.Parameters.init(enabledOnmacOS:enabledOniOS:maxSampleCount:minimumSampleCount:validationSetProportion:shouldSaveModel:allowLocalOverrides:allowCloudOverrides:randomSeed:coreBehavior:embedding:anchoredBubble:intentionalWord:)();
      type metadata accessor for REMSuggestedAttributesTrainer();
      v65 = v98;
      v66 = v90;
      static REMSuggestedAttributesTrainer.train(in:parameters:)();
      v90 = v66;
      if (v66)
      {

        (*(v96 + 8))(v64, v97);
        (*(v59 + 8))(v109, v61);
        (*(v62 + 8))(v106, v111);
        (*(v58 + 8))(v105, v110);
      }

      else
      {
        v68 = v87;
        v69 = v92;
        v70 = v88;
        (*(v87 + 16))(v92, v65, v88);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v112 = v95;
          *v73 = 136446210;
          v74 = REMSuggestedAttributesTrainer.Result.shortDescription.getter();
          v76 = v75;
          v77 = *(v68 + 8);
          v77(v69, v70);
          v78 = sub_10000668C(v74, v76, &v112);
          v76, v79, v80, v81, v82, v83, v84, v85;
          *(v73 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v71, v72, "RDSuggestedAttributesAutoTrainer TRAIN END {results: %{public}s}", v73, 0xCu);
          sub_10000607C(v95);

          v77(v98, v70);
        }

        else
        {

          v86 = *(v68 + 8);
          v86(v69, v70);
          v86(v65, v70);
        }

        (*(v96 + 8))(v100, v97);
        (*(v102 + 8))(v109, v103);
        (*(v101 + 8))(v106, v111);
        (*(v99 + 8))(v105, v110);
      }

      (*(v107 + 8))(v104, v108);
    }

    else
    {
      v67 = v112;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1006E6D18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1006E6D74(1);
  }

  return result;
}

void sub_1006E6D74(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_xpcActivity);
  if (v2)
  {
    *&v29 = *(v2 + 120);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();

    if (v28)
    {
LABEL_28:

      return;
    }

    if (a1 & 1) != 0 || (sub_1006E714C())
    {
      v4 = sub_1006E7424();
      v5 = v4 + 60.0;
      v6 = v4 + 60.0 > 0.0;
      if (v4 + 60.0 > 0.0)
      {
        v7 = 1;
      }

      else
      {
        v7 = 512;
      }

      if (v4 + 60.0 <= 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v4 + 60.0;
      }

      v9 = sub_10039363C(&off_1008E40B8);
      *&v29 = 0;
      *(&v29 + 1) = v7;
      v31 = 0;
      v32 = 0;
      v30 = v8;
      v33 = v6;
      v34 = 33685504;
      v35 = 0x404E000000000000;
      v36 = 0;
      v37 = 0x102020200010101;
      v38 = 1792;
      v39 = v9;
      sub_1005A46AC(&v29);
      v9, v10, v11, v12, v13, v14, v15, v16;
      if (qword_100936740 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_100950120);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_27;
      }

      v20 = swift_slowAlloc();
      *v20 = 67109376;
      *(v20 + 4) = a1 & 1;
      *(v20 + 8) = 2048;
      *(v20 + 10) = v5;
      _os_log_impl(&_mh_execute_header, v18, v19, "RDSuggestedAttributesAutoTrainer scheduled {isDatabaseDirty: true, assumeDatabaseDirty: %{BOOL}d, delay: %f}", v20, 0x12u);
    }

    else
    {
      if (qword_100936740 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_100950120);
      v18 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v18, v25))
      {
        goto LABEL_27;
      }

      v26 = swift_slowAlloc();
      *v26 = 67109120;
      _os_log_impl(&_mh_execute_header, v18, v25, "RDSuggestedAttributesAutoTrainer schedule skipped {isDatabaseDirty: false, assumeDatabaseDirty: %{BOOL}d}", v26, 8u);
    }

LABEL_27:

    goto LABEL_28;
  }

  if (qword_100936740 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_100950120);
  oslog = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v22, "Scheduling XPCActivity before start()", v23, 2u);
  }
}

uint64_t sub_1006E714C()
{
  v1 = *(v0 + 48);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  if (v4 >> 60 == 15)
  {
    v5 = 1;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    sub_1000060C8(0, &qword_100948CE8, REMFetchResultToken_ptr);
    v8 = sub_100031948();
    v9 = *(*(v0 + 24) + 16);
    v14[0] = 0xD000000000000020;
    v14[1] = 0x80000001007B6370;
    v14[3] = 0;
    v15[0] = 0;
    v14[2] = 0;
    *(v15 + 6) = 0;
    v10 = v9;
    sub_100404AFC(v14, sub_1006E7620, 0);
    v12 = v11;

    LOBYTE(v10) = static NSObject.== infix(_:_:)();
    sub_100031A14(v6, v7);

    v5 = v10 ^ 1;
  }

  return v5 & 1;
}

double sub_1006E7424()
{
  v1 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v22 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v22 - v12;
  v14 = v0[10];
  v15 = v0[11];
  sub_10000F61C(v0 + 7, v14);
  (*(v15 + 8))(v14, v15);
  v16 = v0[6];
  ObjectType = swift_getObjectType();
  (*(v16 + 32))(ObjectType, v16);
  Optional<A>.orDistantPast.getter();
  sub_1000050A4(v4, &unk_100938850, qword_100795AE0);
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSinceNow.getter();
  v19 = v18;
  v20 = *(v6 + 8);
  v20(v9, v5);
  v20(v13, v5);
  return v19;
}

id sub_1006E7620@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v7 = 0;
  v3 = [a1 latestFetchResultTokenWithError:&v7];
  v4 = v7;
  if (v3)
  {
    *a2 = v3;
    return v4;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_1006E76D4()
{
  v1 = [v0 lastSuggestedAttributesAutoTrainingToken];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1006E773C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    [v2 setLastSuggestedAttributesAutoTrainingToken:0];
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100031A14(a1, a2);
    [v2 setLastSuggestedAttributesAutoTrainingToken:isa];
  }
}

uint64_t sub_1006E77C0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 lastSuggestedAttributesAutoTrainingExecutionDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_1006E7864(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v2 setLastSuggestedAttributesAutoTrainingExecutionDate:?];
}

uint64_t type metadata accessor for RDSuggestedAttributesAutoTrainer(uint64_t a1)
{
  result = qword_1009502A8;
  if (!qword_1009502A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006E7A08(uint64_t a1)
{
  sub_1001490E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006E7B44()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950440);
  v1 = sub_100006654(v0, qword_100950440);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_TtC7remindd19RDXPCStorePerformer *sub_1006E7C0C(void *a1, void *a2)
{
  v236 = a2;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v239 = &v232 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v237 = &v232 - v8;
  v9 = type metadata accessor for Date();
  v242 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v238 = &v232 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v240 = &v232 - v14;
  __chkstk_darwin(v15, v16);
  v241 = &v232 - v17;
  v18 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v232 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *&v22[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v22, v24);
  v26 = &v232 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v27 - 8, v28);
  v30 = &v232 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = __chkstk_darwin(v31, v32).n128_u64[0];
  v35 = &v232 - v34;
  v245 = a1;
  v36 = [a1 account];
  if (v36)
  {
    v243 = v36;
    v37 = [v36 identifier];
    if (v37)
    {
      v38 = v37;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v23 + 56))(v30, 0, 1, v22);
    }

    else
    {
      (*(v23 + 56))(v30, 1, 1, v22);
    }

    sub_100100FB4(v30, v35);
    if ((*(v23 + 48))(v35, 1, v22))
    {
      sub_1000050A4(v35, &unk_100939D90, "8\n\r");
      v42 = objc_opt_self();
      sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v44 = String._bridgeToObjectiveC()();
      [v42 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v44];

LABEL_8:
      swift_willThrow();
      v45 = v243;
LABEL_9:

      return v22;
    }

    (*(v23 + 16))(v26, v35, v22);
    sub_1000050A4(v35, &unk_100939D90, "8\n\r");
    v47 = UUID.uuidString.getter();
    v49 = v48;
    (*(v23 + 8))(v26, v22);
    v50 = [v245 objectID];
    v51 = [v50 persistentStore];

    if (!v51)
    {
      if (qword_100936750 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      sub_100006654(v93, qword_100950440);
      v94 = v245;

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.fault.getter();
      v49, v97, v98, v99, v100, v101, v102, v103;

      if (os_log_type_enabled(v95, v96))
      {
        v111 = v47;
        v22 = v49;
        v112 = swift_slowAlloc();
        v244[0] = swift_slowAlloc();
        *v112 = 136446466;
        v113 = [v94 remObjectID];
        if (v113)
        {
          v114 = v113;
          v115 = [v113 description];

          v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v118 = v117;
        }

        else
        {
          v116 = 7104878;
          v118 = 0xE300000000000000;
        }

        v180 = sub_10000668C(v116, v118, v244);
        v118, v181, v182, v183, v184, v185, v186, v187;
        *(v112 + 4) = v180;
        *(v112 + 12) = 2082;
        v188 = sub_10000668C(v111, v22, v244);
        v22, v189, v190, v191, v192, v193, v194, v195;
        *(v112 + 14) = v188;
        _os_log_impl(&_mh_execute_header, v95, v96, "REMCDHashtagLabel.createHashtagLabel: Cannot obtain the associated persistent store of the given hashtag {hashtagID: %{public}s, hashtagAccountID: %{public}s}", v112, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v49, v104, v105, v106, v107, v108, v109, v110;
      }

      v196 = objc_opt_self();
      v197 = String._bridgeToObjectiveC()();
      [v196 internalErrorWithDebugDescription:v197];

      goto LABEL_8;
    }

    v52 = sub_10034C000();
    v235 = v49;
    if (v53)
    {
      v60 = v52;
      v22 = v53;
      if ((v52 != v47 || v53 != v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v241 = v60;
        v242 = v51;
        if (qword_100936750 != -1)
        {
          swift_once();
        }

        v147 = type metadata accessor for Logger();
        sub_100006654(v147, qword_100950440);
        v148 = v245;

        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.fault.getter();
        v22, v151, v152, v153, v154, v155, v156, v157;
        v49, v158, v159, v160, v161, v162, v163, v164;

        if (os_log_type_enabled(v149, v150))
        {
          v172 = v47;
          v173 = swift_slowAlloc();
          v244[0] = swift_slowAlloc();
          *v173 = 136446722;
          v174 = [v148 remObjectID];
          if (v174)
          {
            v175 = v174;
            v176 = [v174 description];

            v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v179 = v178;
          }

          else
          {
            v177 = 7104878;
            v179 = 0xE300000000000000;
          }

          v205 = sub_10000668C(v177, v179, v244);
          v179, v206, v207, v208, v209, v210, v211, v212;
          *(v173 + 4) = v205;
          *(v173 + 12) = 2082;
          v213 = v235;
          v214 = sub_10000668C(v172, v235, v244);
          v213, v215, v216, v217, v218, v219, v220, v221;
          *(v173 + 14) = v214;
          *(v173 + 22) = 2082;
          v222 = sub_10000668C(v241, v22, v244);
          v22, v223, v224, v225, v226, v227, v228, v229;
          *(v173 + 24) = v222;
          _os_log_impl(&_mh_execute_header, v149, v150, "REMCDHashtagLabel.createHashtagLabel: Hashtag does not have matching account identifier with its persistent store {hashtagID: %{public}s, hashtagAccountID: %{public}s, pStoreAccountID: %{public}s}", v173, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
          v22, v165, v166, v167, v168, v169, v170, v171;
          v49, v198, v199, v200, v201, v202, v203, v204;
        }

        v230 = objc_opt_self();
        v231 = String._bridgeToObjectiveC()();
        [v230 internalErrorWithDebugDescription:v231];

        swift_willThrow();
        v45 = v242;
        goto LABEL_9;
      }

      v22, v53, v54, v55, v56, v57, v58, v59;
    }

    v234 = v47;
    sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
    v61 = swift_getObjCClassFromMetadata();
    v62 = v51;
    v63 = [v61 entity];
    v64 = objc_allocWithZone(v61);
    v65 = v236;
    v66 = [v64 initWithEntity:v63 insertIntoManagedObjectContext:v236];
    v67 = v62;
    v22 = v66;
    [v65 assignObject:v22 toPersistentStore:v67];

    v236 = v67;
    v68 = v245;
    v69 = [v245 name];
    [(RDXPCStorePerformer *)v22 setName:v69];

    v70 = [v68 name];
    if (v70)
    {
      v71 = v70;
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v244[0] = v72;
      v244[1] = v74;
      static Locale.current.getter();
      v75 = type metadata accessor for Locale();
      (*(*(v75 - 8) + 56))(v21, 0, 1, v75);
      sub_10013BCF4();
      StringProtocol.foldedStringForWriting(locale:)();
      v77 = v76;
      sub_1000050A4(v21, &unk_10093F420, &unk_100797AE0);
      v74, v78, v79, v80, v81, v82, v83, v84;
      v85 = String._bridgeToObjectiveC()();
      v77, v86, v87, v88, v89, v90, v91, v92;
    }

    else
    {
      v85 = 0;
    }

    [(RDXPCStorePerformer *)v22 setCanonicalName:v85];

    v119 = [v245 creationDate];
    if (v119)
    {
      v120 = v240;
      v121 = v119;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v122 = v242;
      v123 = v242[4];
      v124 = v237;
      v123(v237, v120, v9);
      v233 = v122[7];
      v233(v124, 0, 1, v9);
      v125 = v241;
      v123(v241, v124, v9);
    }

    else
    {
      v126 = v242;
      v127 = v237;
      v233 = v242[7];
      v233(v237, 1, 1, v9);
      static Date.distantFuture.getter();
      if ((v126[6])(v127, 1, v9) != 1)
      {
        sub_1000050A4(v127, &unk_100938850, qword_100795AE0);
      }

      v125 = v241;
      v122 = v242;
    }

    isa = Date._bridgeToObjectiveC()().super.isa;
    v129 = v122[1];
    v129(v125, v9);
    [(RDXPCStorePerformer *)v22 setFirstOccurrenceCreationDate:isa];

    v130 = [v245 creationDate];
    if (v130)
    {
      v131 = v240;
      v132 = v130;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v133 = v122[4];
      v134 = v239;
      v133(v239, v131, v9);
      v233(v134, 0, 1, v9);
      v135 = v238;
      v133(v238, v134, v9);
    }

    else
    {
      v136 = v239;
      v233(v239, 1, 1, v9);
      v135 = v238;
      static Date.distantPast.getter();
      if ((v122[6])(v136, 1, v9) != 1)
      {
        sub_1000050A4(v136, &unk_100938850, qword_100795AE0);
      }
    }

    v137 = Date._bridgeToObjectiveC()().super.isa;
    v129(v135, v9);
    [(RDXPCStorePerformer *)v22 setRecencyDate:v137];

    v138 = v235;
    v139 = String._bridgeToObjectiveC()();
    v138, v140, v141, v142, v143, v144, v145, v146;
    [(RDXPCStorePerformer *)v22 setAccountIdentifier:v139];

    [(RDXPCStorePerformer *)v22 addHashtagsObject:v245];
  }

  else
  {
    v39 = objc_opt_self();
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v40 = swift_getObjCClassFromMetadata();
    v41 = String._bridgeToObjectiveC()();
    [v39 unexpectedNilPropertyWithClass:v40 property:v41];

    swift_willThrow();
  }

  return v22;
}

void sub_1006E8AFC(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v27 - v7;
  v9 = String._bridgeToObjectiveC()();
  [v3 setName:v9];

  [v3 setColor:a1[2]];
  if (a1[4])
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v3 setBadgeEmblem:v10];

  if (a1[6])
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v3 setSortingStyle:v11];

  v12 = type metadata accessor for RDPublicTemplate(0);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v3 setPublicLinkURLUUID:isa];

  sub_10012F78C(a1 + *(v12 + 36), v8);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v8, 1, v14) != 1)
  {
    v16 = Date._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v8, v14);
  }

  [v3 setPublicLinkExpirationDate:v16];

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v17 = (a1 + *(v12 + 40));
  v18 = v17[1];
  v19 = v17[3];
  v33 = v17[2];
  v34 = v19;
  v20 = v17[1];
  v32[0] = *v17;
  v32[1] = v20;
  v28 = v32[0];
  v29 = v18;
  v21 = v17[3];
  v30 = v33;
  v31 = v21;
  sub_10013FD6C(v32, v27);
  sub_10013FDC8();
  v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v27[0] = v28;
  v27[1] = v29;
  v27[2] = v30;
  v27[3] = v31;
  if (v2)
  {
    sub_10013FE1C(v27);
  }

  else
  {
    v24 = v22;
    v25 = v23;
    sub_10013FE1C(v27);

    v26 = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v24, v25);
    [v3 setEncodedSavedReminders:v26];
  }
}

id sub_1006E8E28()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v7, v8).n128_u64[0];
  v11 = &v19 - v10;
  v12 = [v1 publicLinkURLUUID];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v11, v6, v2);
  v14 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 initWithUUID:isa entityName:v16];

  (*(v3 + 8))(v11, v2);
  return v17;
}

double sub_1006E8FC0@<D0>(char *a1@<X8>)
{
  v2 = v1;
  v102 = a1;
  ObjectType = swift_getObjectType();
  v106 = type metadata accessor for Date();
  v4 = *(v106 - 8);
  __chkstk_darwin(v106, v5);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v115 = &v95 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v16, v17).n128_u64[0];
  v20 = &v95 - v19;
  v21 = [v2 publicLinkURLUUID];
  if (!v21)
  {
    v59 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v61 = String._bridgeToObjectiveC()();
    [v59 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v61];

    swift_willThrow();
    return result;
  }

  v22 = v21;
  v103 = ObjectType;
  v105 = v4;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = *(v12 + 32);
  v99(v20, v15, v11);
  v23 = [v2 publicLinkExpirationDate];
  v24 = v11;
  v25 = v20;
  if (!v23)
  {
    v63 = objc_opt_self();
    v64 = swift_getObjCClassFromMetadata();
    v65 = String._bridgeToObjectiveC()();
    [v63 unexpectedNilPropertyWithClass:v64 property:v65];

    swift_willThrow();
    (*(v12 + 8))(v25, v24);
    return result;
  }

  v100 = v20;
  v101 = v11;
  v26 = v23;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v105;
  v27 = v106;
  v29 = *(v105 + 32);
  v30 = v115;
  v29(v115, v7, v106);
  v31 = [v2 name];
  if (!v31)
  {
    v66 = objc_opt_self();
    v67 = v30;
    v68 = swift_getObjCClassFromMetadata();
    v69 = String._bridgeToObjectiveC()();
    [v66 unexpectedNilPropertyWithClass:v68 property:v69];

    swift_willThrow();
    (*(v28 + 8))(v67, v27);
LABEL_11:
    v57 = *(v12 + 8);
    v58 = v100;
    goto LABEL_12;
  }

  v98 = v29;
  v32 = v31;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = [v2 encodedSavedReminders];
  if (!v36)
  {
    v35, v37, v38, v39, v40, v41, v42, v43;
    v70 = objc_opt_self();
    v71 = swift_getObjCClassFromMetadata();
    v72 = String._bridgeToObjectiveC()();
    [v70 unexpectedNilPropertyWithClass:v71 property:v72];

    swift_willThrow();
    (*(v105 + 8))(v115, v27);
    goto LABEL_11;
  }

  v97 = v33;
  v103 = v35;
  v44 = v36;
  v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10013F2DC();
  v48 = v104;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v49 = v100;
  if (v48)
  {

    sub_10001BBA0(v45, v47);
    v103, v50, v51, v52, v53, v54, v55, v56;
    (*(v105 + 8))(v115, v106);
    v57 = *(v12 + 8);
    v58 = v49;
LABEL_12:
    v57(v58, v101);
    return result;
  }

  v73 = v47;

  v107 = v111;
  v108 = v112;
  v109 = v113;
  v110 = v114;
  v104 = [v2 color];
  v74 = [v2 badgeEmblem];
  if (v74)
  {
    v75 = v74;
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v76;
  }

  else
  {
    v96 = 0;
    v95 = 0;
  }

  v77 = v49;
  v78 = [v2 sortingStyle];
  if (v78)
  {
    v79 = v78;
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;
    v83 = v45;
    v84 = v80;
    sub_10001BBA0(v83, v73);
  }

  else
  {
    sub_10001BBA0(v45, v73);
    v84 = 0;
    v82 = 0;
  }

  v85 = type metadata accessor for RDPublicTemplate(0);
  v86 = v102;
  v99(&v102[v85[8]], v77, v101);
  v87 = v85[9];
  v88 = v106;
  v98(&v86[v87], v115, v106);
  (*(v105 + 56))(&v86[v87], 0, 1, v88);
  v89 = v103;
  v90 = v104;
  *v86 = v97;
  *(v86 + 1) = v89;
  v91 = v96;
  *(v86 + 2) = v90;
  *(v86 + 3) = v91;
  *(v86 + 4) = v95;
  *(v86 + 5) = v84;
  *(v86 + 6) = v82;
  v92 = &v86[v85[10]];
  v93 = v108;
  *v92 = v107;
  *(v92 + 1) = v93;
  result = *&v109;
  v94 = v110;
  *(v92 + 2) = v109;
  *(v92 + 3) = v94;
  return result;
}

uint64_t sub_1006E9A78()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950480);
  v1 = sub_100006654(v0, qword_100950480);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_AccountIdentifierHashtagLabels.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  *&v8 = 0xD000000000000038;
  *(&v8 + 1) = 0x80000001007B6500;
  v4 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1001B2134(v10);
LABEL_9:
    sub_1006E9D4C(_.super.isa, metadata.super.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD000000000000038;
    *(&v10[0] + 1) = 0x80000001007B6500;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v7 integerValue];

  if (v5 < 1)
  {
    goto LABEL_9;
  }
}

void sub_1006E9D4C(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_100936758 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100950480);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v2;
    v12 = ObjectType;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&aBlock = v14;
    *v13 = 136446210;
    v15 = sub_1003533B0();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, &aBlock);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "AccountIdentifierHashtagLabelsMigrator BEGIN {store: %{public}s}", v13, 0xCu);
    sub_10000607C(v14);

    ObjectType = v12;
    v3 = v11;
  }

  *&v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v60 + 1) = v26;
  v27 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v27)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  aBlock = v60;
  v55 = v61;
  if (!*(&v61 + 1))
  {
LABEL_12:
    sub_1001B2134(&aBlock);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v28 = v58;
    v29 = v59;
    v30 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    v31 = [v8 persistentStoreCoordinator];
    [v30 setPersistentStoreCoordinator:v31];

    [v30 setTransactionAuthor:RDStoreControllerAccountIdentifierHashtagLabelsMigrationAuthor];
    v32 = swift_allocObject();
    v32[2] = v3;
    v32[3] = v30;
    v32[4] = v8;
    v32[5] = v28;
    v32[6] = v29;
    v32[7] = ObjectType;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1006EA7CC;
    *(v33 + 24) = v32;
    v56 = sub_1000529DC;
    v57 = v33;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_10000F160;
    *(&v55 + 1) = &unk_1008FD100;
    v34 = _Block_copy(&aBlock);
    v35 = v8;
    v36 = v3;
    v37 = v30;

    [v37 performBlockAndWait:v34];

    _Block_release(v34);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if ((v37 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  v38 = v8;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&aBlock = v42;
    *v41 = 136446210;
    v43 = sub_1003533B0();
    v45 = v44;
    v46 = sub_10000668C(v43, v44, &aBlock);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "AccountIdentifierHashtagLabelsMigrator {store: %{public}s} accountIdentifier is nil, skip migration", v41, 0xCu);
    sub_10000607C(v42);
  }
}

void sub_1006EA204(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = sub_1006EA7DC(a2, a3, 50);
  v13 = &qword_100936000;
  v30 = v5;
  if (v5 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    if (v31)
    {
LABEL_7:
      v72 = v3;
      v32 = 0;
      v13 = (v30 & 0xC000000000000001);
      v73 = v4;
      v3 = 0x51EB851EB851EB8;
      v33 = v31;
      while (1)
      {
        if (v13)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v41 = *(v30 + 8 * v32 + 32);
        }

        v42 = v41;
        v31 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v43 = String._bridgeToObjectiveC()();
        [v42 setAccountIdentifier:v43];

        if (__ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v31, 1) <= 0x51EB851EB851EB8uLL && [v73 hasChanges])
        {
          v74 = 0;
          if (![v73 save:&v74])
          {
            v45 = v74;
            v30, v46, v47, v48, v49, v50, v51, v52;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v3 = v72;
            v13 = &qword_100936000;
            goto LABEL_2;
          }

          v44 = v74;
        }

        ++v32;
        if (v31 == v33)
        {
          v31 = v33;
          v30, v34, v35, v36, v37, v38, v39, v40;
          v3 = v72;
          v13 = &qword_100936000;
          v4 = v73;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
LABEL_3:
      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_100950480);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v74 = v18;
        *v17 = 136315138;
        swift_getErrorValue();
        v19 = Error.rem_errorDescription.getter();
        v21 = v20;
        v22 = sub_10000668C(v19, v20, &v74);
        v21, v23, v24, v25, v26, v27, v28, v29;
        *(v17 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v15, v16, "AccountIdentifierHashtagLabelsMigrator with error: %s", v17, 0xCu);
        sub_10000607C(v18);
      }

      else
      {
      }

      goto LABEL_29;
    }
  }

  else
  {
    v31 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_7;
    }
  }

  v30, v6, v7, v8, v9, v10, v11, v12;
LABEL_26:
  if ([v4 hasChanges])
  {
    v74 = 0;
    if ([v4 save:&v74])
    {
      v53 = v74;
      goto LABEL_29;
    }

    v71 = v74;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_2:
    if (v13[235] == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_23;
  }

LABEL_29:
  if (v13[235] != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100006654(v54, qword_100950480);
  v55 = v3;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v74 = v59;
    *v58 = 136446466;
    v60 = sub_1003533B0();
    v62 = v61;
    v63 = sub_10000668C(v60, v61, &v74);
    v62, v64, v65, v66, v67, v68, v69, v70;
    *(v58 + 4) = v63;
    *(v58 + 12) = 2048;
    *(v58 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v56, v57, "AccountIdentifierHashtagLabelsMigrator END {store: %{public}s, migrated hashtag labels count = %ld}", v58, 0x16u);
    sub_10000607C(v59);
  }
}

id RDStoreControllerMigrator_AccountIdentifierHashtagLabels.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_AccountIdentifierHashtagLabels();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_AccountIdentifierHashtagLabels.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_AccountIdentifierHashtagLabels();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006EA7DC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:0];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v8 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v10, v11, v12, v13, v14, v15, v16;
  [v5 setAffectedStores:isa];

  [v5 setFetchBatchSize:a3];
  v17 = NSManagedObjectContext.fetch<A>(_:)();

  return v17;
}

uint64_t sub_1006EA978@<X0>(unint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = v1;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100792CF0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v11;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001007F62D0;
  v12 = *(v1 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_dueDateDelta);
  *(inited + 96) = [v12 unit];
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000001007F62F0;
  *(inited + 144) = [v12 count];
  *(inited + 168) = &type metadata for Int;
  strcpy((inited + 176), "creationDate");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 192) = v13;
  v14 = v26;
  *(inited + 216) = &type metadata for Double;
  *(inited + 224) = 0xD00000000000001ALL;
  *(inited + 232) = 0x80000001007EA730;
  v15 = *(v2 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_minimumSupportedAppVersion);
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v15;
  v16 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  sub_10012F78C(v2 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_acknowledgedDate, v6);
  if ((*(v14 + 48))(v6, 1, v7) == 1)
  {
    sub_1001AAD5C(v6);
  }

  else
  {
    v17 = v25;
    (*(v14 + 32))(v25, v6, v7);
    Date.timeIntervalSinceReferenceDate.getter();
    v30 = &type metadata for Double;
    *&v29 = v18;
    sub_100005EE0(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v16;
    sub_1002C88F0(v28, 0xD000000000000010, 0x80000001007E9F10, isUniquelyReferenced_nonNull_native);
    (*(v14 + 8))(v17, v7);
    v16 = v31;
  }

  v20 = v27;
  *v27 = v16;
  v21 = enum case for REMJSONType.jsonObject(_:);
  v22 = type metadata accessor for REMJSONType();
  return (*(*(v22 - 8) + 104))(v20, v21, v22);
}

uint64_t sub_1006EAD54()
{
  v1 = OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_creationDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1001AAD5C(v0 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_acknowledgedDate);

  return swift_deallocClassInstance();
}

_BYTE *sub_1006EAE74@<X0>(uint64_t *a1@<X8>, _BYTE *a2@<X0>)
{
  result = sub_1006EB574(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t REMDueDateDeltaInterval.toJSON()@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  *(inited + 32) = 1953066613;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = [v2 unit];
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0x746E756F63;
  *(inited + 88) = 0xE500000000000000;
  v5 = [v2 count];
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = v5;
  v6 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  *a1 = v6;
  v7 = enum case for REMJSONType.jsonObject(_:);
  v8 = type metadata accessor for REMJSONType();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

void static REMDueDateDeltaInterval.fromJSON(_:)(uint64_t a1)
{
  v3 = sub_1000F5104(&qword_100938AE0, qword_1007B6560);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = v43 - v10;
  v12 = type metadata accessor for REMJSONType();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = (v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v17, a1, v12, v15);
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 == enum case for REMJSONType.jsonObject(_:))
  {
    v43[1] = v1;
    v44 = v7;
    (*(v13 + 96))(v17, v12);
    v19 = *v17;
    v20 = enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:);
    v21 = *(v4 + 104);
    v21(v11, enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:), v3);
    v22 = v45;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    v23 = *(v4 + 8);
    v23(v11, v3);
    if (v22)
    {
      v19, v24, v25, v26, v27, v28, v29, v30;
      return;
    }

    v45 = v46;
    v33 = v44;
    v21(v44, v20, v3);
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    v23(v33, v3);
    v19, v34, v35, v36, v37, v38, v39, v40;
    v41 = v46;
    v42 = v45;
    if (sub_1006EB3F8(v45))
    {
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUnit:v42 count:v41];
      return;
    }
  }

  else
  {
    if (v18 != enum case for REMJSONType.jsonArray(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v13 + 8))(v17, v12);
  }

  v31 = type metadata accessor for REMJSONDeserializationError();
  sub_1003466D4();
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, enum case for REMJSONDeserializationError.invalidData(_:), v31);
  swift_willThrow();
}

void sub_1006EB3CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  static REMDueDateDeltaInterval.fromJSON(_:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t type metadata accessor for RDDueDateDeltaAlert(uint64_t a1)
{
  result = qword_1009504E8;
  if (!qword_1009504E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006EB458(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100140DD4(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

_BYTE *sub_1006EB574(_BYTE *a1)
{
  v122 = a1;
  v111 = sub_1000F5104(&qword_100950590, &qword_1007B6618);
  v109 = *(v111 - 8);
  __chkstk_darwin(v111, v1);
  v108 = &v98[-v2];
  v106 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v106, v3);
  v103 = &v98[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5, v6);
  v107 = &v98[-v7];
  __chkstk_darwin(v8, v9);
  v110 = &v98[-v10];
  v11 = sub_1000F5104(&qword_100938AE0, qword_1007B6560);
  v114 = *(v11 - 8);
  v115 = v11;
  __chkstk_darwin(v11, v12);
  v104 = &v98[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v15);
  v105 = &v98[-v16];
  __chkstk_darwin(v17, v18);
  v112 = &v98[-v19];
  v20 = sub_1000F5104(&unk_100942600, &qword_1007A2E18);
  v116 = *(v20 - 8);
  v117 = v20;
  __chkstk_darwin(v20, v21);
  v23 = &v98[-v22];
  v119 = type metadata accessor for Date();
  v113 = *(v119 - 8);
  __chkstk_darwin(v119, v24);
  v102 = &v98[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26, v27);
  v120 = &v98[-v28];
  v29 = sub_1000F5104(&qword_100938AF0, &qword_1007B6620);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29, v31);
  v33 = &v98[-v32];
  v34 = type metadata accessor for UUID();
  v118 = *(v34 - 8);
  __chkstk_darwin(v34, v35);
  v101 = &v98[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37, v38);
  v40 = &v98[-v39];
  v41 = type metadata accessor for REMJSONType();
  v42 = *(v41 - 8);
  v44 = __chkstk_darwin(v41, v43);
  v46 = &v98[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v42 + 16))(v46, v122, v41, v44);
  v47 = (*(v42 + 88))(v46, v41);
  if (v47 == enum case for REMJSONType.jsonObject(_:))
  {
    (*(v42 + 96))(v46, v41);
    v48 = *v46;
    (*(v30 + 104))(v33, enum case for Dictionary<>.DeserializableValueType.uuid<A, B><A1>(_:), v29);
    v49 = v121;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    (*(v30 + 8))(v33, v29);
    if (v49)
    {
      v48, v50, v51, v52, v53, v54, v55, v56;
    }

    else
    {
      v122 = v40;
      v58 = enum case for Dictionary<>.DeserializableValueType.date<A, B><A1>(_:);
      v60 = v116;
      v59 = v117;
      (v116[13])(v23, enum case for Dictionary<>.DeserializableValueType.date<A, B><A1>(_:), v117);
      v61 = v119;
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v121 = v34;
      v60[1](v23, v59);
      v62 = enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:);
      v63 = v114 + 104;
      v64 = *(v114 + 104);
      v65 = v112;
      (v64)(v112, enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:), v115);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v100 = v63;
      v116 = v64;
      v99 = v62;
      v66 = v114 + 8;
      v117 = *(v114 + 8);
      v117(v65, v115);
      v112 = v123;
      v67 = v61;
      v69 = v108;
      v68 = v109;
      (*(v109 + 104))(v108, v58, v111);
      v70 = v107;
      (*(v113 + 56))(v107, 1, 1, v67);
      Dictionary<>.deserializeOptional<A>(key:valueType:defaultValue:)();
      sub_1001AAD5C(v70);
      (*(v68 + 8))(v69, v111);
      v72 = v105;
      v73 = v99;
      v74 = v115;
      v75 = v116;
      (v116)(v105, v99, v115);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v76 = v66;
      v77 = v75;
      v78 = v117;
      v114 = v76;
      v117(v72, v74);
      v111 = v123;
      v79 = v104;
      v77(v104, v73, v74);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v80 = v110;
      v78(v79, v74);
      v48, v81, v82, v83, v84, v85, v86, v87;
      v88 = v123;
      v89 = objc_allocWithZone(REMDueDateDeltaInterval);
      v90 = [v89 initWithUnitInteger:v88 count:v111];
      if (v90)
      {
        v91 = v90;
        v92 = v80;
        v118 = *(v118 + 32);
        v93 = v101;
        v94 = v121;
        (v118)(v101, v122, v121);
        v95 = *(v113 + 32);
        v96 = v119;
        v95(v102, v120, v119);
        sub_10012F7FC(v92, v103);
        type metadata accessor for RDDueDateDeltaAlert(0);
        v33 = swift_allocObject();
        (v118)(&v33[OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_identifier], v93, v94);
        *&v33[OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_dueDateDelta] = v91;
        v95(&v33[OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_creationDate], v102, v96);
        sub_10012F7FC(v103, &v33[OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_acknowledgedDate]);
        *&v33[OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_minimumSupportedAppVersion] = v112;
      }

      else
      {
        v33 = type metadata accessor for REMJSONDeserializationError();
        sub_1003466D4();
        swift_allocError();
        (*(*(v33 - 1) + 104))(v97, enum case for REMJSONDeserializationError.invalidData(_:), v33);
        swift_willThrow();
        sub_1001AAD5C(v80);
        (*(v113 + 8))(v120, v119);
        (*(v118 + 8))(v122, v121);
      }
    }

    return v33;
  }

  if (v47 == enum case for REMJSONType.jsonArray(_:))
  {
    (*(v42 + 8))(v46, v41);
    v33 = type metadata accessor for REMJSONDeserializationError();
    sub_1003466D4();
    swift_allocError();
    (*(*(v33 - 1) + 104))(v57, enum case for REMJSONDeserializationError.invalidData(_:), v33);
    swift_willThrow();
    return v33;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1006EC1D0(uint64_t a1)
{
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = &_swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v28 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v28 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v25 = result;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v25;
    v9 = v26;
    v11 = v27;
    sub_100411AE4(v25, v26, v27, a1);
    v13 = v12;
    REMObjectID.codable.getter();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v23)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000F5104(&qword_100946070, &qword_1007A7668);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v24, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1006B0370(v25, v26, v27);
        return v28;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = (1 << *(a1 + 32));
      if (v10 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v10 >> 6;
      v16 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v16 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v10 & 0x3F));
      if (v17)
      {
        v14 = (__clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        while (v19 < &v14->storeProvider[1] >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1006B0370(v10, v9, 0);
            v14 = (__clz(__rbit64(v21)) + v18);
            goto LABEL_27;
          }
        }

        result = sub_1006B0370(v10, v9, 0);
      }

LABEL_27:
      v25 = v14;
      v26 = v9;
      v27 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

NSObject *sub_1006EC510(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = sub_1000F5104(&qword_100950B08, &qword_1007B6940);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - v11;
  v78 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950B10, &type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950B18, qword_1007B6948);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = v72;
    (*(v12 + 32))(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v59 = v80;
    sub_10012BCB4(v68, v69, v24, v57, v70);
    v76 = v59;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v60 = v24;
    v61 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v61;

    v62 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v62(v81, 0);
    sub_10000CB48(&qword_100950B20, &qword_100950B08, &qword_1007B6940, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v63 = v70;
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v63, v64);
    (*(v56 + 8))(v72, v78);
  }

  return v31;
}

uint64_t sub_1006ECEB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v87 = a6;
  v80 = a3;
  v81 = a2;
  v83 = a1;
  v76 = type metadata accessor for REMRemindersListDataView.Diff();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76, v9);
  v82 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation.Result();
  v77 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v78 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation.Parameters();
  v85 = *(v90 - 8);
  __chkstk_darwin(v90, v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v84 = &v75 - v19;
  v20 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v91 = PropertyListDecoder.init()();
  v79 = v11;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v24 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v25 = a4;
  v26 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v95 = v24;
  v94[0] = v26;
  v89 = v26;

  v27 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v94, v23);
  v27(v93, 0);
  sub_10000F85C(&qword_100950AF0, &type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation.Parameters, &protocol conformance descriptor for REMReminderDetailDataView.CheckUpdateInvocation.Parameters);
  v28 = v90;
  v29 = v88;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v29)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_100950598);
    swift_errorRetain();
    v31 = v86;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v94[0] = swift_slowAlloc();
      *v34 = 136315394;
      swift_getErrorValue();
      v35 = Error.rem_errorDescription.getter();
      v37 = v36;
      v38 = sub_10000668C(v35, v36, v94);
      v37, v39, v40, v41, v42, v43, v44, v45;
      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v93[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950AF8, &qword_1007B6938);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      v49 = sub_10000668C(v46, v47, v94);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v34 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v34, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v85 + 32))(v84, v16, v28);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v58 = [v86 fetchResultTokenToDiffAgainst];
    v59 = v82;
    sub_100534D44(v58, v82);

    v60 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
    v61 = REMReminderDetailDataView.CheckUpdateInvocation.Parameters.reminderID.getter();
    sub_10024111C(v61, v60);

    v60, v62, v63, v64, v65, v66, v67, v68;
    v69 = v59;
    v70 = v78;
    REMReminderDetailDataView.CheckUpdateInvocation.Result.init(hasUpdates:)();
    (*(v75 + 8))(v69, v76);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v71 = v25;
    v72 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v95 = v24;
    v94[0] = v72;

    v73 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v94, v23);
    v73(v93, 0);
    sub_10000F85C(&qword_100950B00, &type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation.Result, &protocol conformance descriptor for REMReminderDetailDataView.CheckUpdateInvocation.Result);
    v74 = v79;
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v77 + 8))(v70, v74);

    (*(v85 + 8))(v84, v90);
  }

  return v33;
}

NSObject *sub_1006ED950(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = sub_1000F5104(&qword_100950AD0, &qword_1007B6928);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - v11;
  v78 = type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950AD8, &type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.FlaggedInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950AE0, &qword_1007B6930);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = v72;
    (*(v12 + 32))(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v59 = v80;
    sub_1001AFC7C(v68, v69, v24, v57, v70);
    v76 = v59;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v60 = v24;
    v61 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v61;

    v62 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v62(v81, 0);
    sub_10000CB48(&qword_100950AE8, &qword_100950AD0, &qword_1007B6928, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v63 = v70;
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v63, v64);
    (*(v56 + 8))(v72, v78);
  }

  return v31;
}

uint64_t sub_1006EE2F4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t *a5, void *a6, unint64_t a7)
{
  v154 = a6;
  v153 = a5;
  v148 = a2;
  v149 = a1;
  v131 = type metadata accessor for REMRemindersListDataView.Diff();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131, v10);
  v129 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v135 = &v128 - v14;
  v143 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143, v15);
  v141 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v138 = *(v140 - 8);
  __chkstk_darwin(v140, v17);
  v139 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v19 - 8, v20);
  v137 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v136, v22);
  v24 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145, v25);
  v146 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1000F5104(&qword_100950AA0, &qword_1007B6908);
  v132 = *(v134 - 8);
  __chkstk_darwin(v134, v27);
  v133 = &v128 - v28;
  v157 = type metadata accessor for REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters();
  v151 = *(v157 - 8);
  __chkstk_darwin(v157, v29);
  v31 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v150 = &v128 - v34;
  v35 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v35 - 8, v36);
  v38 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v158 = PropertyListDecoder.init()();
  v147 = a3;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v39 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v40 = a4;
  v41 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v162 = v39;
  v161 = v41;
  v156 = v41;

  v42 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v161, v38);
  v42(&ObjectType, 0);
  sub_10000F85C(&qword_100950AA8, &type metadata accessor for REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters);
  v43 = v157;
  v44 = v155;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v44)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100006654(v45, qword_100950598);
    swift_errorRetain();
    v46 = v152;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v161 = v39;
      *v49 = 136315394;
      swift_getErrorValue();
      v50 = Error.rem_errorDescription.getter();
      v52 = v51;
      v53 = sub_10000668C(v50, v51, &v161);
      v52, v54, v55, v56, v57, v58, v59, v60;
      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950AB0, &unk_1007B6910);
      v61 = String.init<A>(describing:)();
      v63 = v62;
      v64 = sub_10000668C(v61, v62, &v161);
      v63, v65, v66, v67, v68, v69, v70, v71;
      *(v49 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v49, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v155 = v40;
    (*(v151 + 32))(v150, v31, v43);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v73 = objc_allocWithZone(type metadata accessor for REMRemindersListDataView.AssignedInvocation());
    v154 = [v73 initWithFetchResultTokenToDiffAgainst:v147];
    v153 = REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters.currentUserShareParticipantIDsOverride.getter();
    v74 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
    v75 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v75 - 8) + 104))(v24, v74, v75);
    swift_storeEnumTagMultiPayload();
    sub_100539164(v137);
    sub_100715370(v24, _s9UtilitiesO12SortingStyleOMa);
    (*(v138 + 104))(v139, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v140);
    (*(v142 + 104))(v141, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v143);
    REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)();
    v76 = sub_100753DE0(v148);
    v77 = v154;
    v78 = v76;
    sub_100754818(v76);
    v80 = v79;
    v78, v81, v82, v83, v84, v85, v86, v87;
    if (qword_100936848 != -1)
    {
      swift_once();
    }

    v143 = type metadata accessor for Logger();
    v88 = sub_100006654(v143, qword_100951B08);
    v153 = &v128;
    v161 = v80;
    __chkstk_darwin(v88, v89);
    *(&v128 - 2) = v90;
    v149 = sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    sub_10000CB48(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280, &protocol conformance descriptor for [A]);
    v91 = Sequence.map<A>(skippingError:_:)();
    v80, v92, v93, v94, v95, v96, v97, v98;
    v99 = v155;
    v161 = v91;
    sub_1000F5104(&qword_10093CB80, &qword_1007A7680);
    sub_10000CB48(&qword_10093CB88, &qword_10093CB80, &qword_1007A7680, &protocol conformance descriptor for [A]);
    sub_1001EB528();
    v100 = Sequence<>.unique()();

    (*(v144 + 8))(v146, v145);
    v91, v101, v102, v103, v104, v105, v106, v107;
    v108 = *(v100 + 16);
    v100, v109, v110, v111, v112, v113, v114, v115;
    v116 = [v152 fetchResultTokenToDiffAgainst];
    v117 = v135;
    sub_100534D44(v116, v135);

    v161 = v108;
    v118 = v130;
    v119 = v131;
    (*(v130 + 16))(v129, v117, v131);
    v120 = v99;
    v121 = v133;
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v118 + 8))(v117, v119);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v122 = v120;
    v123 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v162 = v39;
    v161 = v123;

    v124 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v125 = v38;
    v126 = v121;
    sub_10000E350(&v161, v125);
    v124(&ObjectType, 0);
    sub_10000CB48(&qword_100950AB8, &qword_100950AA0, &qword_1007B6908, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v127 = v134;
    v39 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v132 + 8))(v126, v127);
    (*(v151 + 8))(v150, v157);
  }

  return v39;
}

uint64_t sub_1006EF458(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v140 = a6;
  v139 = a5;
  v132 = a3;
  v134 = a2;
  v135 = a1;
  v9 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v9 - 8, v10);
  v125 = &v114 - v11;
  v121 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121, v12);
  v129 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v130 = &v114 - v16;
  v17 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v17 - 8, v18);
  v114 = &v114 - v19;
  v124 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124, v20);
  v117 = (&v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v23);
  v127 = &v114 - v24;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v115 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v25);
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for REMRemindersListDataView.Diff();
  v119 = *(v128 - 8);
  __chkstk_darwin(v128, v28);
  v118 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v133 = &v114 - v32;
  v126 = sub_1000F5104(&qword_1009507B8, &qword_1007B67B0);
  v122 = *(v126 - 8);
  __chkstk_darwin(v126, v33);
  v35 = &v114 - v34;
  v143 = type metadata accessor for REMRemindersListDataView.SearchFlatInvocation.Parameters();
  v136 = *(v143 - 8);
  __chkstk_darwin(v143, v36);
  v38 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v40);
  v137 = &v114 - v41;
  v42 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v42 - 8, v43);
  v45 = &v114 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v144 = PropertyListDecoder.init()();
  v131 = v35;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v46 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v47 = a4;
  v48 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v148 = v46;
  v147 = v48;
  v142 = v48;

  v49 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v147, v45);
  v49(&ObjectType, 0);
  sub_10000F85C(&qword_100950A90, &type metadata accessor for REMRemindersListDataView.SearchFlatInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.SearchFlatInvocation.Parameters);
  v50 = v143;
  v51 = v141;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v51)
  {
    v52 = v138;
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_100950598);
    swift_errorRetain();
    v54 = v52;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v50 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *v50 = 136315394;
      swift_getErrorValue();
      v57 = Error.rem_errorDescription.getter();
      v59 = v58;
      v60 = sub_10000668C(v57, v58, &v147);
      v59, v61, v62, v63, v64, v65, v66, v67;
      *(v50 + 4) = v60;
      *(v50 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950A98, &qword_1007B6900);
      v68 = String.init<A>(describing:)();
      v70 = v69;
      v71 = sub_10000668C(v68, v69, &v147);
      v70, v72, v73, v74, v75, v76, v77, v78;
      *(v50 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v50, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return v50;
  }

  v79 = v137;
  (*(v136 + 32))(v137, v38, v50);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v81 = v134;
  v141 = sub_10022574C(v134, v79);
  sub_1002262A8(v81);
  LODWORD(v140) = v82;
  v139 = v83;
  v84 = [v138 fetchResultTokenToDiffAgainst];
  sub_100534D44(v84, v133);

  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v85 = v127;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v115 + 8))(v27, Configuration);
  v86 = v123;
  v87 = v117;
  v88 = v85;
  v89 = v124;
  (*(v123 + 16))(v117, v88, v124);
  v90 = (*(v86 + 88))(v87, v89);
  if (v90 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v86 + 96))(v87, v89);
    sub_10053DB98(*v87, v141, v134, v47, 0);
    v91 = v125;
LABEL_19:
    (*(v86 + 8))(v127, v89);
    if (v140)
    {
      v100 = 1;
    }

    else
    {
      REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();
      v100 = 0;
    }

    v101 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v101 - 8) + 56))(v91, v100, 1, v101);
    v102 = v130;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v103 = v120;
    v104 = v121;
    (*(v120 + 16))(v129, v102, v121);
    v105 = v119;
    (*(v119 + 16))(v118, v133, v128);
    v141 = sub_10000F85C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    sub_10000F85C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v103 + 8))(v130, v104);
    (*(v105 + 8))(v133, v128);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v106 = v47;
    v107 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v148 = v46;
    v147 = v107;

    v108 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v109 = v45;
    v110 = v131;
    sub_10000E350(&v147, v109);
    v108(&ObjectType, 0);
    sub_10000CB48(&qword_1009507D0, &qword_1009507B8, &qword_1007B67B0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v111 = v126;
    v112 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v113 = v137;
    v50 = v112;
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v122 + 8))(v110, v111);
    (*(v136 + 8))(v113, v143);

    return v50;
  }

  v91 = v125;
  if (v90 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    (*(v86 + 96))(v87, v89);
    sub_10053E698(*v87, v133, v134, v47, 0);
    goto LABEL_19;
  }

  if (v90 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    (*(v86 + 96))(v87, v89);
    v92 = *v87;
    v93 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    v94 = v114;
    sub_100031B58(v87 + *(v93 + 48), v114, &qword_10094B8E0, &unk_1007AABD0);
    v95 = v92;
    v96 = v141;
    v97 = v134;
    sub_10053DB98(v95, v141, v134, v47, 0);
    v98 = v97;
    v89 = v124;
    sub_10053EBE4(v94, v96, v98, v47, 0);
    v99 = v94;
    v91 = v125;
    sub_1000050A4(v99, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_19;
  }

  if (v90 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    v86 = v123;
    goto LABEL_19;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

NSObject *sub_1006F0620(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v74 = a6;
  v73 = a5;
  v68 = a3;
  v67 = a2;
  v70 = a1;
  v66 = sub_1000F5104(&qword_100950A78, &qword_1007B68F0);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66, v10);
  v69 = &v64 - v11;
  v77 = type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters();
  v12 = *(v77 - 8);
  __chkstk_darwin(v77, v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v71 = &v64 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v78 = PropertyListDecoder.init()();
  v72 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v82 = v23;
  v81[0] = v25;
  v76 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v81, v22);
  v26(v80, 0);
  sub_10000F85C(&qword_100950828, &type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters);
  v27 = v77;
  v28 = v75;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v72;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v81[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v81);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v80[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950A80, &qword_1007B68F8);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v81);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    (*(v12 + 32))(v71, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v58 = v79;
    sub_100261E24(v67, v24, v69);
    v75 = v58;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v59 = v24;
    v60 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v82 = v23;
    v81[0] = v60;

    v61 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v81, v22);
    v61(v80, 0);
    sub_10000CB48(&qword_100950A88, &qword_100950A78, &qword_1007B68F0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v62 = v69;
    v63 = v66;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v65 + 8))(v62, v63);
    (*(v56 + 8))(v71, v77);
  }

  return v31;
}

char *sub_1006F0FC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v101 = a6;
  v94 = a3;
  v96 = a2;
  v97 = a1;
  v9 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v9 - 8, v10);
  v84 = &v83 - v11;
  v87 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87, v12);
  v90 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v91 = &v83 - v16;
  v92 = type metadata accessor for REMRemindersListDataView.Diff();
  v85 = *(v92 - 8);
  __chkstk_darwin(v92, v17);
  v83 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v95 = &v83 - v21;
  v22 = sub_1000F5104(&qword_1009507B8, &qword_1007B67B0);
  v88 = *(v22 - 8);
  __chkstk_darwin(v22, v23);
  v93 = &v83 - v24;
  v104 = type metadata accessor for REMRemindersListDataView.DEBUG_PhantomRemindersInvocation.Parameters();
  v98 = *(v104 - 8);
  __chkstk_darwin(v104, v25);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v99 = &v83 - v30;
  v31 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v31 - 8, v32);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v105 = PropertyListDecoder.init()();
  v89 = v22;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v35 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v36 = a4;
  v37 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v109 = v35;
  v108 = v37;
  v103 = v37;

  v38 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v108, v34);
  v38(&ObjectType, 0);
  sub_10000F85C(&qword_100950A50, &type metadata accessor for REMRemindersListDataView.DEBUG_PhantomRemindersInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.DEBUG_PhantomRemindersInvocation.Parameters);
  v39 = v104;
  v40 = v102;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v40)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_100950598);
    swift_errorRetain();
    v42 = v100;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v27 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v27 = 136315394;
      swift_getErrorValue();
      v45 = Error.rem_errorDescription.getter();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, &v108);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v27 + 4) = v48;
      *(v27 + 6) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950A58, &qword_1007B68D8);
      v56 = String.init<A>(describing:)();
      v58 = v57;
      v59 = sub_10000668C(v56, v57, &v108);
      v58, v60, v61, v62, v63, v64, v65, v66;
      *(v27 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v102 = v36;
    v67 = v98;
    (*(v98 + 32))(v99, v27, v39);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    sub_100294100(v96);
    v69 = [v100 fetchResultTokenToDiffAgainst];
    v70 = v95;
    sub_100534D44(v69, v95);

    v71 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v71 - 8) + 56))(v84, 1, 1, v71);
    v72 = v91;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v73 = v70;
    v74 = v86;
    v75 = v87;
    (*(v86 + 16))(v90, v72, v87);
    v76 = v85;
    (*(v85 + 16))(v83, v73, v92);
    v101 = sub_10000F85C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    sub_10000F85C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v74 + 8))(v91, v75);
    (*(v76 + 8))(v95, v92);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v77 = v102;
    v78 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v109 = v35;
    v108 = v78;

    v79 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v80 = v34;
    v81 = v93;
    sub_10000E350(&v108, v80);
    v79(&ObjectType, 0);
    sub_10000CB48(&qword_1009507D0, &qword_1009507B8, &qword_1007B67B0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v82 = v89;
    v27 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v88 + 8))(v81, v82);
    (*(v67 + 8))(v99, v104);
  }

  return v27;
}

NSObject *sub_1006F1CF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(void, __n128), unint64_t *a9, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t (*a12)(uint64_t, char *), uint64_t *a13, uint64_t *a14)
{
  v146 = a6;
  v145 = a5;
  v131 = a3;
  v136 = a2;
  v139 = a1;
  v138 = a14;
  v137 = a13;
  v144 = a11;
  v143 = a10;
  v129 = type metadata accessor for REMRemindersListDataView.Diff();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129, v17);
  v124 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v134 = &v122 - v21;
  v22 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v22 - 8, v23);
  v130 = &v122 - v24;
  v133 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133, v25);
  v123 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v135 = &v122 - v29;
  v128 = sub_1000F5104(&qword_1009507B8, &qword_1007B67B0);
  v126 = *(v128 - 8);
  v31 = __chkstk_darwin(v128, v30);
  v127 = &v122 - v32;
  v149 = a8(0, v31);
  v141 = *(v149 - 8);
  __chkstk_darwin(v149, v33);
  v35 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v140 = &v122 - v38;
  v39 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v39 - 8, v40);
  v42 = &v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v150 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v43 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v44 = a4;
  v45 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v154 = v43;
  v153 = v45;
  v148 = v45;

  v46 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v153, v42);
  v46(&ObjectType, 0);
  sub_10000F85C(a9, v143, v144);
  v47 = v149;
  v48 = v147;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v48)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100006654(v49, qword_100950598);
    swift_errorRetain();
    v50 = v142;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *v53 = 136315394;
      swift_getErrorValue();
      v54 = Error.rem_errorDescription.getter();
      v56 = v55;
      v57 = sub_10000668C(v54, v55, &v153);
      v56, v58, v59, v60, v61, v62, v63, v64;
      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(v137, v138);
      v65 = String.init<A>(describing:)();
      v67 = v66;
      v68 = sub_10000668C(v65, v66, &v153);
      v67, v69, v70, v71, v72, v73, v74, v75;
      *(v53 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v53, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v147 = v44;
    v76 = v140;
    (*(v141 + 32))(v140, v35, v47);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    a12(v136, v76);
    v78 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v78 - 8) + 56))(v130, 1, 1, v78);
    v79 = v135;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v80 = [v142 fetchResultTokenToDiffAgainst];
    v81 = v134;
    sub_100534D44(v80, v134);

    v82 = v132;
    v83 = *(v132 + 16);
    v146 = 0;
    v84 = v79;
    v85 = v133;
    v83(v123, v84, v133);
    v86 = v125;
    (*(v125 + 16))(v124, v81, v129);
    v145 = sub_10000F85C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    sub_10000F85C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    v87 = v127;
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v86 + 8))(v81, v129);
    v88 = v85;
    v89 = v87;
    (*(v82 + 8))(v135, v88);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v90 = v147;
    v91 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v154 = v43;
    v153 = v91;

    v92 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v153, v42);
    v92(&ObjectType, 0);
    sub_10000CB48(&qword_1009507D0, &qword_1009507B8, &qword_1007B67B0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v93 = v128;
    v94 = v146;
    v95 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v94)
    {
      if (qword_100936760 != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for Logger();
      sub_100006654(v96, qword_100950598);
      v97 = v142;
      swift_errorRetain();
      v51 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v98))
      {
        v99 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v153 = v147;
        *v99 = 136315394;
        swift_getErrorValue();
        v100 = Error.rem_errorDescription.getter();
        v102 = v101;
        v103 = sub_10000668C(v100, v101, &v153);
        v102, v104, v105, v106, v107, v108, v109, v110;
        *(v99 + 4) = v103;
        *(v99 + 12) = 2080;
        ObjectType = swift_getObjectType();
        sub_1000F5104(v137, v138);
        v111 = String.init<A>(describing:)();
        v113 = v112;
        v114 = sub_10000668C(v111, v112, &v153);
        v113, v115, v116, v117, v118, v119, v120, v121;
        *(v99 + 14) = v114;
        v89 = v127;
        _os_log_impl(&_mh_execute_header, v51, v98, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v99, 0x16u);
        swift_arrayDestroy();

        v93 = v128;
      }

      swift_willThrow();

      (*(v126 + 8))(v89, v93);
      (*(v141 + 8))(v140, v149);
    }

    else
    {
      v51 = v95;
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v126 + 8))(v87, v93);
      (*(v141 + 8))(v140, v149);
    }
  }

  return v51;
}

uint64_t sub_1006F2A7C(void (**a1)(uint64_t, uint64_t), _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(char *, unint64_t, uint64_t), unint64_t a7)
{
  v236 = a6;
  v225 = a3;
  v230 = a2;
  v231 = a1;
  v211 = type metadata accessor for REMRemindersListDataView.DatesModel();
  v210 = *(v211 - 8);
  __chkstk_darwin(v211, v10);
  v220 = v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v221 = v204 - v14;
  v15 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v15 - 8, v16);
  v207 = v204 - v17;
  v228 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v229 = *(v228 - 8);
  __chkstk_darwin(v228, v18);
  v223 = v204 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v227 = v204 - v22;
  v218 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v217 = *(v218 - 8);
  __chkstk_darwin(v218, v23);
  v215 = (v204 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25, v26);
  v222 = v204 - v27;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v213 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v28);
  v30 = v204 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for REMRemindersListDataView.Diff();
  v209 = *(v219 - 8);
  __chkstk_darwin(v219, v31);
  v208 = v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v34);
  v226 = v204 - v35;
  v36 = sub_1000F5104(&qword_100950A20, &qword_1007B68C0);
  v212 = *(v36 - 8);
  __chkstk_darwin(v36, v37);
  v224 = v204 - v38;
  v238 = type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters();
  v233 = *(v238 - 8);
  __chkstk_darwin(v238, v39);
  v41 = v204 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42, v43);
  v232 = v204 - v44;
  v45 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v45 - 8, v46);
  v239 = (v204 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v240 = PropertyListDecoder.init()();
  v216 = v36;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v48 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v49 = a4;
  v50 = REMStoreObjectsContainer.init(store:storages:)();
  v51 = v239;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v244 = v48;
  v243 = v50;
  v235 = v50;

  v52 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v243, v51);
  v52(&ObjectType, 0);
  sub_10000F85C(&qword_100950A28, &type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters);
  v53 = v237;
  v54 = v238;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v53)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_100950598);
    swift_errorRetain();
    v56 = v234;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      a5 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      *a5 = 136315394;
      swift_getErrorValue();
      v59 = Error.rem_errorDescription.getter();
      v61 = v60;
      v62 = sub_10000668C(v59, v60, &v243);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(a5 + 4) = v62;
      *(a5 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950A30, &qword_1007B68C8);
      v70 = String.init<A>(describing:)();
      v72 = v71;
      v73 = sub_10000668C(v70, v71, &v243);
      v72, v74, v75, v76, v77, v78, v79, v80;
      *(a5 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v57, v58, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", a5, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return a5;
  }

  v206 = v49;
  v81 = v232;
  (*(v233 + 32))(v232, v41, v54);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v83 = sub_1002AA40C(v230, v81);
  v84 = v234;
  v237 = v83;
  sub_1002AC9DC();
  v204[1] = v85;
  v205 = v86;
  v87 = [v84 fetchResultTokenToDiffAgainst];
  v88 = v226;
  sub_100534D44(v87, v226);

  REMRemindersListDataView.ScheduledByDayInvocation.Parameters.configuration.getter();
  v89 = v222;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v213 + 8))(v30, Configuration);
  v90 = v217;
  v91 = v215;
  v92 = v218;
  (*(v217 + 16))(v215, v89, v218);
  v93 = (*(v90 + 88))(v91, v92);
  if (v93 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v90 + 96))(v91, v92);
    v223 = *v91;
    v94 = *v237->clientIdentity;
    if (v94)
    {
      v236 = *(v229 + 16);
      v95 = v237 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
      v225 = *(v229 + 72);
      v229 += 16;
      v231 = (v229 - 8);
      v96 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v98 = v227;
        v99 = v228;
        v236(v227, v95, v228);
        v100 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
        (*v231)(v98, v99);
        v101 = *(v100 + 16);
        v102 = *v96->clientIdentity;
        v103 = (v102 + v101);
        if (__OFADD__(v102, v101))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v103 > *&v96->clientIdentity[8] >> 1)
        {
          if (v102 <= v103)
          {
            v112 = v102 + v101;
          }

          else
          {
            v112 = v102;
          }

          v96 = sub_100365A24(isUniquelyReferenced_nonNull_native, v112, 1, v96);
        }

        if (*(v100 + 16))
        {
          v102 = *v96->clientIdentity;
          v113 = (*&v96->clientIdentity[8] >> 1) - v102;
          type metadata accessor for REMRemindersListDataView.ReminderLite();
          if (v113 < v101)
          {
            goto LABEL_60;
          }

          swift_arrayInitWithCopy();
          v100, v114, v115, v116, v117, v118, v119, v120;
          v97 = v230;
          if (v101)
          {
            v121 = *v96->clientIdentity;
            v122 = __OFADD__(v121, v101);
            v123 = v121 + v101;
            if (v122)
            {
              goto LABEL_61;
            }

            *v96->clientIdentity = v123;
          }
        }

        else
        {
          v100, v105, v106, v107, v108, v109, v110, v111;
          v97 = v230;
          if (v101)
          {
            goto LABEL_59;
          }
        }

        v95 += v225;
        if (!--v94)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      swift_once();
      v169 = type metadata accessor for Logger();
      sub_100006654(v169, qword_100950598);
      v170 = v234;
      swift_errorRetain();
      a5 = Logger.logObject.getter();
      v171 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(a5, v171))
      {
        v172 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        v239 = v102;
        *v172 = 136315394;
        swift_getErrorValue();
        v173 = Error.rem_errorDescription.getter();
        v175 = v174;
        v176 = sub_10000668C(v173, v174, &v243);
        v175, v177, v178, v179, v180, v181, v182, v183;
        *(v172 + 4) = v176;
        *(v172 + 12) = 2080;
        ObjectType = swift_getObjectType();
        sub_1000F5104(&qword_100950A30, &qword_1007B68C8);
        v184 = String.init<A>(describing:)();
        v186 = v185;
        v187 = sub_10000668C(v184, v185, &v243);
        v186, v188, v189, v190, v191, v192, v193, v194;
        *(v172 + 14) = v187;
        v94 = v238;
        _os_log_impl(&_mh_execute_header, a5, v171, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v172, 0x16u);
        swift_arrayDestroy();

        v48 = v216;
      }

      swift_willThrow();

      (*(v212 + 8))(v224, v48);
      (*(v233 + 8))(v232, v94);

      return a5;
    }

    v96 = &_swiftEmptyArrayStorage;
    v97 = v230;
LABEL_48:
    sub_10053DB98(v223, v96, v97, v206, 0);
    v96, v151, v152, v153, v154, v155, v156, v157;
    (*(v217 + 8))(v222, v218);
LABEL_49:
    v54 = v238;
    goto LABEL_50;
  }

  if (v93 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    (*(v90 + 96))(v91, v92);
    sub_10053E698(*v91, v88, v230, v206, 0);
    (*(v90 + 8))(v222, v92);
LABEL_50:
    v158 = v221;
    REMRemindersListDataView.DatesModel.init(groups:completedRemindersCount:prefetchedReminders:prefetchedDueReminders:)();
    v159 = v210;
    v160 = v211;
    (*(v210 + 16))(v220, v158, v211);
    v161 = v209;
    (*(v209 + 16))(v208, v226, v219);
    sub_10000F85C(&qword_100940638, &type metadata accessor for REMRemindersListDataView.DatesModel, &protocol conformance descriptor for REMRemindersListDataView.DatesModel);
    sub_10000F85C(&qword_100940640, &type metadata accessor for REMRemindersListDataView.DatesModel, &protocol conformance descriptor for REMRemindersListDataView.DatesModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v159 + 8))(v221, v160);
    (*(v161 + 8))(v226, v219);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v162 = v206;
    v163 = REMStoreObjectsContainer.init(store:storages:)();
    v164 = v239;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v244 = v48;
    v243 = v163;

    v165 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v166 = v164;
    v167 = v224;
    sub_10000E350(&v243, v166);
    v165(&ObjectType, 0);
    sub_10000CB48(&qword_100950A38, &qword_100950A20, &qword_1007B68C0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v168 = v216;
    a5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v212 + 8))(v167, v168);
    (*(v233 + 8))(v232, v54);

    return a5;
  }

  if (v93 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    (*(v90 + 96))(v91, v92);
    v225 = *v91;
    v124 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v91 + *(v124 + 48), v207, &qword_10094B8E0, &unk_1007AABD0);
    v94 = *v237->clientIdentity;
    if (v94)
    {
      v236 = *(v229 + 16);
      v125 = v237 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
      v227 = *(v229 + 72);
      v229 += 16;
      v231 = (v229 - 8);
      v126 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v127 = v223;
        v128 = v228;
        v236(v223, v125, v228);
        v129 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
        (*v231)(v127, v128);
        v130 = *(v129 + 16);
        v102 = *v126->clientIdentity;
        v131 = (v102 + v130);
        if (__OFADD__(v102, v130))
        {
          goto LABEL_62;
        }

        v132 = swift_isUniquelyReferenced_nonNull_native();
        if (!v132 || v131 > *&v126->clientIdentity[8] >> 1)
        {
          if (v102 <= v131)
          {
            v140 = v102 + v130;
          }

          else
          {
            v140 = v102;
          }

          v126 = sub_100365A24(v132, v140, 1, v126);
        }

        if (*(v129 + 16))
        {
          v102 = *v126->clientIdentity;
          v141 = (*&v126->clientIdentity[8] >> 1) - v102;
          type metadata accessor for REMRemindersListDataView.ReminderLite();
          if (v141 < v130)
          {
            goto LABEL_64;
          }

          swift_arrayInitWithCopy();
          v129, v142, v143, v144, v145, v146, v147, v148;
          v102 = v230;
          if (v130)
          {
            v149 = *v126->clientIdentity;
            v122 = __OFADD__(v149, v130);
            v150 = v149 + v130;
            if (v122)
            {
              goto LABEL_65;
            }

            *v126->clientIdentity = v150;
          }
        }

        else
        {
          v129, v133, v134, v135, v136, v137, v138, v139;
          v102 = v230;
          if (v130)
          {
            goto LABEL_63;
          }
        }

        v125 += v227;
        if (!--v94)
        {
          goto LABEL_57;
        }
      }
    }

    v126 = &_swiftEmptyArrayStorage;
    v102 = v230;
LABEL_57:
    v195 = v206;
    sub_10053DB98(v225, v126, v102, v206, 0);
    v196 = v207;
    sub_10053EBE4(v207, v126, v102, v195, 0);
    v126, v197, v198, v199, v200, v201, v202, v203;
    sub_1000050A4(v196, &qword_10094B8E0, &unk_1007AABD0);
    (*(v217 + 8))(v222, v218);
    goto LABEL_49;
  }

  if (v93 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    (*(v90 + 8))(v222, v92);
    goto LABEL_50;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

NSObject *sub_1006F4084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v73 = a6;
  v72 = a5;
  v67 = a3;
  v66 = a2;
  v69 = a1;
  ObjectType = swift_getObjectType();
  v64 = type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Result();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64, v9);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Parameters();
  v70 = *(v76 - 8);
  __chkstk_darwin(v76, v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v77 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v22 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v23 = a4;
  v24 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v81 = v22;
  v80[0] = v24;
  v75 = v24;

  v25 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v80, v21);
  v25(v79, 0);
  sub_10000F85C(&qword_100950A00, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Parameters, &protocol conformance descriptor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Parameters);
  v26 = v76;
  v27 = v74;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v27)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100950598);
    swift_errorRetain();
    v29 = v71;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v32 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter();
      v35 = v34;
      v36 = sub_10000668C(v33, v34, v80);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v79[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950A08, &qword_1007B68B8);
      v44 = String.init<A>(describing:)();
      v46 = v45;
      v47 = sub_10000668C(v44, v45, v80);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v32 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v32, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v55 = v17;
    (*(v70 + 32))(v17, v13, v26);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v57 = sub_10000F85C(&qword_100950A10, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation, &unk_1007A0898);
    v58 = v68;
    (*(v57 + 24))(&v78, v66, v67, v23, v55, ObjectType, v57);
    v74 = v55;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v59 = v23;
    v60 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v81 = v22;
    v80[0] = v60;

    v61 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v80, v21);
    v61(v79, 0);
    sub_10000F85C(&qword_100950A18, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Result, &protocol conformance descriptor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithLocationInvocation.Result);
    v62 = v64;
    v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v63 + 8))(v58, v62);

    (*(v70 + 8))(v74, v26);
  }

  return v30;
}

NSObject *sub_1006F4A84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v73 = a6;
  v72 = a5;
  v67 = a3;
  v66 = a2;
  v69 = a1;
  ObjectType = swift_getObjectType();
  v64 = type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Result();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64, v9);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Parameters();
  v70 = *(v76 - 8);
  __chkstk_darwin(v76, v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v77 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v22 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v23 = a4;
  v24 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v81 = v22;
  v80[0] = v24;
  v75 = v24;

  v25 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v80, v21);
  v25(v79, 0);
  sub_10000F85C(&qword_1009509E0, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Parameters, &protocol conformance descriptor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Parameters);
  v26 = v76;
  v27 = v74;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v27)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100950598);
    swift_errorRetain();
    v29 = v71;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v32 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter();
      v35 = v34;
      v36 = sub_10000668C(v33, v34, v80);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v79[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009509E8, &qword_1007B68B0);
      v44 = String.init<A>(describing:)();
      v46 = v45;
      v47 = sub_10000668C(v44, v45, v80);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v32 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v32, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v55 = v17;
    (*(v70 + 32))(v17, v13, v26);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v57 = sub_10000F85C(&qword_1009509F0, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation, &unk_1007A08C4);
    v58 = v68;
    (*(v57 + 24))(&v78, v66, v67, v23, v55, ObjectType, v57);
    v74 = v55;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v59 = v23;
    v60 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v81 = v22;
    v80[0] = v60;

    v61 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v80, v21);
    v61(v79, 0);
    sub_10000F85C(&qword_1009509F8, &type metadata accessor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Result, &protocol conformance descriptor for REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.Result);
    v62 = v64;
    v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v63 + 8))(v58, v62);

    (*(v70 + 8))(v74, v26);
  }

  return v30;
}

NSObject *sub_1006F5484(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v73 = a6;
  v72 = a5;
  v67 = a3;
  v66 = a2;
  v69 = a1;
  v65 = type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Result();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65, v10);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters();
  v12 = *(v76 - 8);
  __chkstk_darwin(v76, v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v70 = &v63 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v77 = PropertyListDecoder.init()();
  v71 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v81 = v23;
  v80[0] = v25;
  v75 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v80, v22);
  v26(v79, 0);
  sub_10000F85C(&qword_1009509C8, &type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters, &protocol conformance descriptor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters);
  v27 = v76;
  v28 = v74;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v71;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v80);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v79[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009509D0, &qword_1007B68A8);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v80);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    (*(v12 + 32))(v70, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v58 = v78;
    sub_1002E0080(v66, v68);
    v74 = v58;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v59 = v24;
    v60 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v81 = v23;
    v80[0] = v60;

    v61 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v80, v22);
    v61(v79, 0);
    sub_10000F85C(&qword_1009509D8, &type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Result, &protocol conformance descriptor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Result);
    v62 = v65;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v64 + 8))(v68, v62);
    (*(v56 + 8))(v70, v27);
  }

  return v31;
}

NSObject *sub_1006F5E18(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v77 = a6;
  v76 = a5;
  v71 = a3;
  v70 = a2;
  v73 = a1;
  v69 = type metadata accessor for REMSuggestedAttributesTrainer.Result();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69, v10);
  v72 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters();
  v12 = *(v80 - 8);
  __chkstk_darwin(v80, v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v74 = &v67 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v81 = PropertyListDecoder.init()();
  v75 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v85 = v23;
  v84[0] = v25;
  v79 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v84, v22);
  v26(v83, 0);
  sub_10000F85C(&qword_1009509B0, &type metadata accessor for REMSuggestedAttributesTrainer.Parameters, &protocol conformance descriptor for REMSuggestedAttributesTrainer.Parameters);
  v27 = v80;
  v28 = v78;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v75;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v84);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v83[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009509B8, &qword_1007B68A0);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v84);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = v74;
    (*(v12 + 32))(v74, v15, v27);
    type metadata accessor for RDXPCSuggestedAttributesPerformer(0);
    throwingCast<A>(_:as:failureMessage:)();
    v59 = v82;
    v60 = objc_autoreleasePoolPush();
    sub_1002E2298(v59, v70, v24, v57, v72);
    v78 = v59;
    objc_autoreleasePoolPop(v60);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    v61 = PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v62 = v24;
    v63 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v85 = v23;
    v84[0] = v63;

    v64 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v84, v22);
    v64(v83, 0);
    sub_10000F85C(&qword_1009509C0, &type metadata accessor for REMSuggestedAttributesTrainer.Result, &protocol conformance descriptor for REMSuggestedAttributesTrainer.Result);
    v65 = v72;
    v66 = v69;
    v77 = v61;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v68 + 8))(v65, v66);
    (*(v56 + 8))(v74, v27);
  }

  return v31;
}

NSObject *sub_1006F6800(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = sub_1000F5104(&qword_100950990, &qword_1007B6890);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - v11;
  v78 = type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950998, &type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.TaggedInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009509A0, &qword_1007B6898);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = v72;
    (*(v12 + 32))(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v59 = v80;
    sub_10030953C(v68, v69, v24, v57, v70);
    v76 = v59;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v60 = v24;
    v61 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v61;

    v62 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v62(v81, 0);
    sub_10000CB48(&qword_1009509A8, &qword_100950990, &qword_1007B6890, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v63 = v70;
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v63, v64);
    (*(v56 + 8))(v72, v78);
  }

  return v31;
}

NSObject *sub_1006F71A4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v100 = a6;
  v99 = a5;
  v90 = a3;
  v94 = a2;
  v95 = a1;
  v82 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82, v9);
  v86 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v87 = &v80 - v13;
  v88 = type metadata accessor for REMRemindersListDataView.Diff();
  v80 = *(v88 - 8);
  __chkstk_darwin(v88, v14);
  v85 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v91 = &v80 - v18;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v93 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v19);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000F5104(&qword_1009507E8, &qword_1007B67C8);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84, v22);
  v24 = &v80 - v23;
  v103 = type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters();
  v96 = *(v103 - 8);
  __chkstk_darwin(v103, v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v97 = &v80 - v30;
  v31 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v31 - 8, v32);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v104 = PropertyListDecoder.init()();
  v89 = v24;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v35 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v36 = a4;
  v37 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v108 = v35;
  v107 = v37;
  v102 = v37;

  v38 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v107, v34);
  v38(&ObjectType, 0);
  sub_10000F85C(&qword_100950980, &type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters);
  v39 = v103;
  v40 = v101;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v40)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_100950598);
    swift_errorRetain();
    v42 = v98;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v45 = 136315394;
      swift_getErrorValue();
      v46 = Error.rem_errorDescription.getter();
      v48 = v47;
      v49 = sub_10000668C(v46, v47, &v107);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950988, &qword_1007B6888);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      v60 = sub_10000668C(v57, v58, &v107);
      v59, v61, v62, v63, v64, v65, v66, v67;
      *(v45 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v45, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v96 + 32))(v97, v27, v39);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters.configuration.getter();
    sub_100352264(v94);
    (*(v93 + 8))(v21, Configuration);
    v69 = [v98 fetchResultTokenToDiffAgainst];
    v70 = v91;
    sub_100534D44(v69, v91);

    v71 = v87;
    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v72 = v81;
    v73 = v82;
    (*(v81 + 16))(v86, v71, v82);
    v74 = v80;
    (*(v80 + 16))(v85, v70, v88);
    sub_10000F85C(&qword_100942E10, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsSectionsModel);
    sub_10000F85C(&qword_100942E18, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v72 + 8))(v87, v73);
    (*(v74 + 8))(v91, v88);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v75 = v36;
    v76 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v108 = v35;
    v77 = v89;
    v107 = v76;

    v78 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v107, v34);
    v78(&ObjectType, 0);
    sub_10000CB48(&qword_100950800, &qword_1009507E8, &qword_1007B67C8, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v79 = v84;
    v43 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v83 + 8))(v77, v79);
    (*(v96 + 8))(v97, v103);
  }

  return v43;
}

uint64_t sub_1006F7F1C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, __n128 a8)
{
  v141 = a6;
  v133 = a3;
  v136 = a2;
  v137 = a1;
  v123 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123, v10);
  v130 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v131 = &v113 - v14;
  v15 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v15 - 8, v16);
  v114 = &v113 - v17;
  v126 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126, v18);
  v118 = (&v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20, v21);
  v128 = &v113 - v22;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v116 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v23);
  v115 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for REMRemindersListDataView.Diff();
  v121 = *(v129 - 8);
  __chkstk_darwin(v129, v25);
  v120 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v134 = &v113 - v29;
  v30 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v30 - 8, v31);
  v119 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v34);
  v135 = &v113 - v35;
  v36 = sub_1000F5104(&qword_1009507B8, &qword_1007B67B0);
  v124 = *(v36 - 8);
  __chkstk_darwin(v36, v37);
  v39 = &v113 - v38;
  v144 = type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation.Parameters();
  v138 = *(v144 - 8);
  __chkstk_darwin(v144, v40);
  v42 = &v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v44);
  v139 = &v113 - v45;
  v46 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v46 - 8, v47);
  v49 = &v113 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v145 = PropertyListDecoder.init()();
  v127 = v36;
  v132 = v39;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v50 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v51 = a4;
  v52 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v149 = v50;
  v148 = v52;
  v143 = v52;

  v53 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v148, v49);
  v53(&ObjectType, 0);
  sub_10000F85C(&qword_100950918, &type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.ScheduledFlatInvocation.Parameters);
  v54 = v144;
  v55 = v142;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v55)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100006654(v56, qword_100950598);
    swift_errorRetain();
    v57 = v140;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v54 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *v54 = 136315394;
      swift_getErrorValue();
      v60 = Error.rem_errorDescription.getter();
      v62 = v61;
      v63 = sub_10000668C(v60, v61, &v148);
      v62, v64, v65, v66, v67, v68, v69, v70;
      *(v54 + 4) = v63;
      *(v54 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950920, &qword_1007B6860);
      v71 = String.init<A>(describing:)();
      v73 = v72;
      v74 = sub_10000668C(v71, v72, &v148);
      v73, v75, v76, v77, v78, v79, v80, v81;
      *(v54 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v54, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return v54;
  }

  v82 = v51;
  v83 = v138;
  v84 = v139;
  (*(v138 + 32))(v139, v42, v54);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v86 = v136;
  v142 = sub_1003FA7F4(v136, v84);
  v87 = v140;
  sub_1003FA464(v86, v135);
  v88 = [v87 fetchResultTokenToDiffAgainst];
  v89 = v134;
  sub_100534D44(v88, v134);

  v90 = v115;
  REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v116 + 8))(v90, Configuration);
  v91 = v125;
  v92 = v118;
  v93 = v126;
  (*(v125 + 16))();
  v94 = (*(v91 + 88))(v92, v93);
  v113 = v82;
  if (v94 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v91 + 96))(v92, v93);
    sub_10053DB98(*v92, v142, v136, v82, 0);
LABEL_15:
    v95 = v135;
LABEL_16:
    (*(v91 + 8))(v128, v93);
    sub_100010364(v95, v119, &qword_100938A70, &qword_1007ACC60);
    v96 = v131;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v97 = v122;
    v98 = v123;
    (*(v122 + 16))(v130, v96, v123);
    v99 = v121;
    (*(v121 + 16))(v120, v134, v129);
    v142 = sub_10000F85C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    sub_10000F85C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v97 + 8))(v131, v98);
    (*(v99 + 8))(v134, v129);
    sub_1000050A4(v135, &qword_100938A70, &qword_1007ACC60);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v100 = v113;
    v101 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v149 = v50;
    v148 = v101;

    v102 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v103 = v49;
    v104 = v132;
    sub_10000E350(&v148, v103);
    v102(&ObjectType, 0);
    sub_10000CB48(&qword_1009507D0, &qword_1009507B8, &qword_1007B67B0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v105 = v127;
    v54 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v124 + 8))(v104, v105);
    (*(v83 + 8))(v139, v144);

    return v54;
  }

  if (v94 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    (*(v91 + 96))(v92, v93);
    sub_10053E698(*v92, v89, v136, v82, 0);
    goto LABEL_15;
  }

  if (v94 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    (*(v91 + 96))(v92, v93);
    v106 = *v92;
    v107 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    v108 = v114;
    sub_100031B58(v92 + *(v107 + 48), v114, &qword_10094B8E0, &unk_1007AABD0);
    v109 = v106;
    v110 = v142;
    v111 = v136;
    sub_10053DB98(v109, v142, v136, v82, 0);
    v112 = v110;
    v93 = v126;
    sub_10053EBE4(v108, v112, v111, v82, 0);
    v83 = v138;
    sub_1000050A4(v108, &qword_10094B8E0, &unk_1007AABD0);
    goto LABEL_15;
  }

  if (v94 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    v95 = v135;
    v91 = v125;
    goto LABEL_16;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

NSObject *sub_1006F9100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = type metadata accessor for REMSuggestedAttributesHarvester.Response();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for REMSuggestedAttributesHarvester.Request();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950900, &type metadata accessor for REMSuggestedAttributesHarvester.Request, &protocol conformance descriptor for REMSuggestedAttributesHarvester.Request);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950908, &qword_1007B6858);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = *(v12 + 32);
    v58 = v72;
    v57(v72, v15, v27);
    type metadata accessor for RDXPCSuggestedAttributesPerformer(0);
    throwingCast<A>(_:as:failureMessage:)();
    v60 = v80;
    sub_100418990(v80, v58, v70);
    v76 = v60;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v61 = v24;
    v62 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v62;

    v63 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v63(v81, 0);
    sub_10000F85C(&qword_100950910, &type metadata accessor for REMSuggestedAttributesHarvester.Response, &protocol conformance descriptor for REMSuggestedAttributesHarvester.Response);
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v70, v64);
    (*(v56 + 8))(v72, v27);
  }

  return v31;
}

NSObject *sub_1006F9A94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v73 = a6;
  v72 = a5;
  v67 = a3;
  v66 = a2;
  v69 = a1;
  ObjectType = swift_getObjectType();
  v64 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionResponse();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64, v9);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest();
  v70 = *(v76 - 8);
  __chkstk_darwin(v76, v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v77 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v22 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v23 = a4;
  v24 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v81 = v22;
  v80[0] = v24;
  v75 = v24;

  v25 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v80, v21);
  v25(v79, 0);
  sub_10000F85C(&qword_1009508E0, &type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest, &protocol conformance descriptor for REMSuggestedAttributesHarvester.MentionsExtractionRequest);
  v26 = v76;
  v27 = v74;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v27)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006654(v28, qword_100950598);
    swift_errorRetain();
    v29 = v71;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v32 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter();
      v35 = v34;
      v36 = sub_10000668C(v33, v34, v80);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v79[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009508E8, &qword_1007B6850);
      v44 = String.init<A>(describing:)();
      v46 = v45;
      v47 = sub_10000668C(v44, v45, v80);
      v46, v48, v49, v50, v51, v52, v53, v54;
      *(v32 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v32, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v55 = v17;
    (*(v70 + 32))(v17, v13, v26);
    type metadata accessor for RDXPCSuggestedAttributesPerformer(0);
    throwingCast<A>(_:as:failureMessage:)();
    v57 = sub_10000F85C(&qword_1009508F0, &type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionInvocation, &unk_1007A899C);
    v58 = v68;
    (*(v57 + 24))(&v78, v66, v67, v23, v55, ObjectType, v57);
    v74 = v55;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v59 = v23;
    v60 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v81 = v22;
    v80[0] = v60;

    v61 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v80, v21);
    v61(v79, 0);
    sub_10000F85C(&qword_1009508F8, &type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionResponse, &protocol conformance descriptor for REMSuggestedAttributesHarvester.MentionsExtractionResponse);
    v62 = v64;
    v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v63 + 8))(v58, v62);

    (*(v70 + 8))(v74, v26);
  }

  return v30;
}

NSObject *sub_1006FA494(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = type metadata accessor for REMRemindersListDataView.ListInvocation.Result();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950878, &type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.ListInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950880, &unk_1007B6808);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = *(v12 + 32);
    v58 = v72;
    v57(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v60 = v80;
    sub_10044C1A4(v68, v69, v24, v58, v70);
    v76 = v60;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v61 = v24;
    v62 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v62;

    v63 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v63(v81, 0);
    sub_10000F85C(&qword_100950888, &type metadata accessor for REMRemindersListDataView.ListInvocation.Result, &protocol conformance descriptor for REMRemindersListDataView.ListInvocation.Result);
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v70, v64);
    (*(v56 + 8))(v72, v27);
  }

  return v31;
}

NSObject *sub_1006FAE28(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = sub_1000F5104(&qword_100950858, &qword_1007B67F8);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = (&v65 - v11);
  v78 = type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950860, &type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.TodayGroupInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950868, &qword_1007B6800);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = v72;
    (*(v12 + 32))(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v59 = v80;
    sub_100464BAC(v68, v69, v24, v57, v70);
    v76 = v59;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v60 = v24;
    v61 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v61;

    v62 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v62(v81, 0);
    sub_10000CB48(&qword_100950870, &qword_100950858, &qword_1007B67F8, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v63 = v70;
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v63, v64);
    (*(v56 + 8))(v72, v78);
  }

  return v31;
}

NSObject *sub_1006FB7CC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = sub_1000F5104(&qword_100950820, &qword_1007B67E0);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - v11;
  v78 = type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950828, &type metadata accessor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.TemplateSectionsInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950830, &qword_1007B67E8);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = v72;
    (*(v12 + 32))(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v59 = v80;
    sub_100501B70(v68, v69, v24, v57, v70);
    v76 = v59;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v60 = v24;
    v61 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v61;

    v62 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v62(v81, 0);
    sub_10000CB48(&qword_100950838, &qword_100950820, &qword_1007B67E0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v63 = v70;
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v63, v64);
    (*(v56 + 8))(v72, v78);
  }

  return v31;
}

NSObject *sub_1006FC170(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v73 = a6;
  v72 = a5;
  v67 = a3;
  v66 = a2;
  v69 = a1;
  v65 = type metadata accessor for REMRemindersListDataView.TodaySectionOrderingModel();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65, v10);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for REMRemindersListDataView.TodaySectionOrderingInvocation.Parameters();
  v12 = *(v76 - 8);
  __chkstk_darwin(v76, v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v70 = &v63 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v77 = PropertyListDecoder.init()();
  v71 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v81 = v23;
  v80[0] = v25;
  v75 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v80, v22);
  v26(v79, 0);
  sub_10000F85C(&qword_100950808, &type metadata accessor for REMRemindersListDataView.TodaySectionOrderingInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.TodaySectionOrderingInvocation.Parameters);
  v27 = v76;
  v28 = v74;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v71;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v80);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v79[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950810, &qword_1007B67D8);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v80);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    (*(v12 + 32))(v70, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v58 = v78;
    sub_10052DEFC(v66, v68);
    v74 = v58;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v59 = v24;
    v60 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v81 = v23;
    v80[0] = v60;

    v61 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v80, v22);
    v61(v79, 0);
    sub_10000F85C(&qword_100950818, &type metadata accessor for REMRemindersListDataView.TodaySectionOrderingModel, &protocol conformance descriptor for REMRemindersListDataView.TodaySectionOrderingModel);
    v62 = v65;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v64 + 8))(v68, v62);
    (*(v56 + 8))(v70, v27);
  }

  return v31;
}

char *sub_1006FCB04(_TtC7remindd19RDXPCStorePerformer *a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(char *, char *, uint64_t), unint64_t a7)
{
  v277 = a6;
  v276 = a5;
  v263 = a3;
  v270 = a2;
  v271 = a1;
  v250 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250, v9);
  v247 = v242 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v248 = v242 - v13;
  v14 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v14 - 8, v15);
  v244 = v242 - v16;
  v267 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v268 = *(v267 - 8);
  __chkstk_darwin(v267, v17);
  v261 = v242 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v265 = v242 - v21;
  v256 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v255 = *(v256 - 8);
  __chkstk_darwin(v256, v22);
  v253 = (v242 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24, v25);
  v260 = v242 - v26;
  v259 = type metadata accessor for REMRemindersListDataView.Diff();
  v246 = *(v259 - 8);
  __chkstk_darwin(v259, v27);
  v245 = v242 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v264 = v242 - v31;
  v257 = _s10PredicatesOMa(0);
  __chkstk_darwin(v257, v32);
  v258 = v242 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v269 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v34);
  v252 = v242 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v39 = v242 - v38;
  __chkstk_darwin(v40, v41);
  v43 = v242 - v42;
  v254 = sub_1000F5104(&qword_1009507E8, &qword_1007B67C8);
  v251 = *(v254 - 8);
  __chkstk_darwin(v254, v44);
  v262 = v242 - v45;
  v280 = type metadata accessor for REMRemindersListDataView.AllSectionsInvocation.Parameters();
  v273 = *(v280 - 8);
  __chkstk_darwin(v280, v46);
  v48 = v242 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49, v50);
  v272 = v242 - v51;
  v52 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v52 - 8, v53);
  v279 = v242 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v281 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v55 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v56 = a4;
  v57 = REMStoreObjectsContainer.init(store:storages:)();
  v58 = v279;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v285 = v55;
  v284 = v57;
  v275 = v57;

  v59 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v284, v58);
  v59(&ObjectType, 0);
  sub_10000F85C(&qword_1009507F0, &type metadata accessor for REMRemindersListDataView.AllSectionsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.AllSectionsInvocation.Parameters);
  v60 = v280;
  v61 = v278;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v61)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100006654(v62, qword_100950598);
    swift_errorRetain();
    v63 = v274;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v48 = swift_slowAlloc();
      v284 = swift_slowAlloc();
      *v48 = 136315394;
      swift_getErrorValue();
      v66 = Error.rem_errorDescription.getter();
      v68 = v67;
      v69 = sub_10000668C(v66, v67, &v284);
      v68, v70, v71, v72, v73, v74, v75, v76;
      *(v48 + 4) = v69;
      *(v48 + 6) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_1009507F8, &qword_1007B67D0);
      v77 = String.init<A>(describing:)();
      v79 = v78;
      v80 = sub_10000668C(v77, v78, &v284);
      v79, v81, v82, v83, v84, v85, v86, v87;
      *(v48 + 14) = v80;
      _os_log_impl(&_mh_execute_header, v64, v65, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v48, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return v48;
  }

  v243 = v56;
  v278 = v55;
  (*(v273 + 32))(v272, v48, v60);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v271 = sub_100545318(v270, v43);
  v90 = v269 + 8;
  v89 = *(v269 + 8);
  v91 = Configuration;
  v89(v43, Configuration);
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v92 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  v269 = v90;
  v89(v39, v91);
  v242[3] = v92;
  if (v92)
  {
    v93 = v258;
    swift_storeEnumTagMultiPayload();
    v94 = sub_100043AA8();
    sub_100715370(v93, _s10PredicatesOMa);
    sub_100345DB0();
    v95 = [objc_allocWithZone(NSFetchRequest) init];
    v96 = [swift_getObjCClassFromMetadata() entity];
    [v95 setEntity:v96];

    [v95 setAffectedStores:0];
    [v95 setPredicate:v94];
    v97 = NSManagedObjectContext.count<A>(for:)();
    v98 = v243;
    v258 = v97;
  }

  else
  {
    v258 = 0;
    v98 = v243;
  }

  v99 = [v274 fetchResultTokenToDiffAgainst];
  v100 = v264;
  sub_100534D44(v99, v264);

  v101 = v252;
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v102 = v260;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v89(v101, Configuration);
  v103 = v255;
  v104 = v253;
  v105 = v256;
  (*(v255 + 16))(v253, v102, v256);
  v106 = (*(v103 + 88))(v104, v105);
  if (v106 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v137 = v270;
    if (v106 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      (*(v103 + 96))(v104, v105);
      sub_10053E698(*v104, v100, v137, v98, 0);
      (*(v103 + 8))(v260, v105);
    }

    else if (v106 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
    {
      (*(v103 + 96))(v104, v105);
      v269 = *v104;
      v138 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
      sub_100031B58(v104 + *(v138 + 48), v244, &qword_10094B8E0, &unk_1007AABD0);
      v107 = *v271->clientIdentity;
      if (v107)
      {
        v277 = *(v268 + 16);
        v139 = v271 + ((*(v268 + 80) + 32) & ~*(v268 + 80));
        v276 = *(v268 + 72);
        v268 += 16;
        v140 = (v268 - 8);
        v141 = &_swiftEmptyArrayStorage;
        do
        {
          v142 = v261;
          v143 = v267;
          v277(v261, v139, v267);
          v144 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
          (*v140)(v142, v143);
          v145 = *(v144 + 16);
          v115 = *v141->clientIdentity;
          v146 = v115 + v145;
          if (__OFADD__(v115, v145))
          {
            goto LABEL_65;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v146 > *&v141->clientIdentity[8] >> 1)
          {
            if (v115 <= v146)
            {
              v155 = v115 + v145;
            }

            else
            {
              v155 = v115;
            }

            v141 = sub_100365A4C(isUniquelyReferenced_nonNull_native, v155, 1, v141);
          }

          if (*(v144 + 16))
          {
            v115 = *v141->clientIdentity;
            v156 = (*&v141->clientIdentity[8] >> 1) - v115;
            type metadata accessor for REMRemindersListDataView.SectionLite();
            if (v156 < v145)
            {
              goto LABEL_67;
            }

            swift_arrayInitWithCopy();
            v144, v157, v158, v159, v160, v161, v162, v163;
            if (v145)
            {
              v164 = *v141->clientIdentity;
              v135 = __OFADD__(v164, v145);
              v165 = v164 + v145;
              if (v135)
              {
                goto LABEL_68;
              }

              *v141->clientIdentity = v165;
            }
          }

          else
          {
            v144, v148, v149, v150, v151, v152, v153, v154;
            if (v145)
            {
              goto LABEL_66;
            }
          }

          v139 += v276;
          --v107;
        }

        while (v107);
      }

      else
      {
        v141 = &_swiftEmptyArrayStorage;
      }

      v224 = Array<A>.reminders.getter();
      v141, v225, v226, v227, v228, v229, v230, v231;
      v232 = v270;
      v233 = v243;
      sub_10053DB98(v269, v224, v270, v243, 0);
      v234 = v244;
      sub_10053EBE4(v244, v224, v232, v233, 0);
      v224, v235, v236, v237, v238, v239, v240, v241;
      sub_1000050A4(v234, &qword_10094B8E0, &unk_1007AABD0);
      (*(v255 + 8))(v260, v256);
    }

    else
    {
      if (v106 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      (*(v103 + 8))(v260, v105);
    }

LABEL_53:
    v181 = v248;
    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v182 = v249;
    v183 = v250;
    (*(v249 + 16))(v247, v181, v250);
    v184 = v246;
    (*(v246 + 16))(v245, v264, v259);
    sub_10000F85C(&qword_100942E10, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsSectionsModel);
    sub_10000F85C(&qword_100942E18, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v182 + 8))(v181, v183);
    (*(v184 + 8))(v264, v259);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    v185 = v278;
    swift_allocObject();
    v186 = v243;
    v187 = REMStoreObjectsContainer.init(store:storages:)();
    v188 = v279;
    static CodingUserInfoKey.remStoragesContainer.getter();
    v285 = v185;
    v284 = v187;

    v189 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    v190 = v188;
    v191 = v262;
    sub_10000E350(&v284, v190);
    v189(&ObjectType, 0);
    sub_10000CB48(&qword_100950800, &qword_1009507E8, &qword_1007B67C8, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v192 = v254;
    v48 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v251 + 8))(v191, v192);
    (*(v273 + 8))(v272, v280);

    return v48;
  }

  (*(v103 + 96))(v104, v105);
  v269 = *v104;
  v107 = *v271->clientIdentity;
  if (!v107)
  {
    v110 = &_swiftEmptyArrayStorage;
LABEL_52:
    v166 = Array<A>.reminders.getter();
    v110, v167, v168, v169, v170, v171, v172, v173;
    sub_10053DB98(v269, v166, v270, v243, 0);
    v166, v174, v175, v176, v177, v178, v179, v180;
    (*(v255 + 8))(v260, v256);
    goto LABEL_53;
  }

  v277 = *(v268 + 16);
  v108 = v271 + ((*(v268 + 80) + 32) & ~*(v268 + 80));
  v276 = *(v268 + 72);
  v268 += 16;
  v109 = (v268 - 8);
  v110 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v111 = v265;
    v112 = v267;
    v277(v265, v108, v267);
    v113 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
    (*v109)(v111, v112);
    v114 = *(v113 + 16);
    v115 = *v110->clientIdentity;
    v116 = v115 + v114;
    if (__OFADD__(v115, v114))
    {
      break;
    }

    v117 = swift_isUniquelyReferenced_nonNull_native();
    if (v117 && v116 <= *&v110->clientIdentity[8] >> 1)
    {
      if (*(v113 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v115 <= v116)
      {
        v125 = v115 + v114;
      }

      else
      {
        v125 = v115;
      }

      v110 = sub_100365A4C(v117, v125, 1, v110);
      if (*(v113 + 16))
      {
LABEL_28:
        v115 = *v110->clientIdentity;
        v126 = (*&v110->clientIdentity[8] >> 1) - v115;
        type metadata accessor for REMRemindersListDataView.SectionLite();
        if (v126 < v114)
        {
          goto LABEL_63;
        }

        swift_arrayInitWithCopy();
        v113, v127, v128, v129, v130, v131, v132, v133;
        if (v114)
        {
          v134 = *v110->clientIdentity;
          v135 = __OFADD__(v134, v114);
          v136 = v134 + v114;
          if (v135)
          {
            goto LABEL_64;
          }

          *v110->clientIdentity = v136;
        }

        goto LABEL_18;
      }
    }

    v113, v118, v119, v120, v121, v122, v123, v124;
    if (v114)
    {
      goto LABEL_62;
    }

LABEL_18:
    v108 += v276;
    if (!--v107)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  swift_once();
  v193 = type metadata accessor for Logger();
  sub_100006654(v193, qword_100950598);
  v194 = v274;
  swift_errorRetain();
  v195 = Logger.logObject.getter();
  v196 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v195, v196))
  {
    v197 = swift_slowAlloc();
    v279 = v107;
    v198 = v197;
    v284 = swift_slowAlloc();
    *v198 = 136315394;
    swift_getErrorValue();
    v199 = Error.rem_errorDescription.getter();
    v201 = v200;
    v202 = sub_10000668C(v199, v200, &v284);
    v201, v203, v204, v205, v206, v207, v208, v209;
    *(v198 + 4) = v202;
    *(v198 + 12) = 2080;
    ObjectType = swift_getObjectType();
    sub_1000F5104(&qword_1009507F8, &qword_1007B67D0);
    v210 = String.init<A>(describing:)();
    v212 = v211;
    v213 = sub_10000668C(v210, v211, &v284);
    v212, v214, v215, v216, v217, v218, v219, v220;
    *(v198 + 14) = v213;
    v115 = v280;
    _os_log_impl(&_mh_execute_header, v195, v196, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v198, 0x16u);
    swift_arrayDestroy();
  }

  v221 = v273;
  v48 = v254;
  v222 = v251;
  v223 = v262;
  swift_willThrow();

  (*(v222 + 8))(v223, v48);
  (*(v221 + 8))(v272, v115);

  return v48;
}

NSObject *sub_1006FE380(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, char *, uint64_t), uint64_t a6, unint64_t a7)
{
  v266 = a6;
  v265 = a5;
  v255 = a3;
  v259 = a2;
  v260 = a1;
  v245 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245, v9);
  v242 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v243 = &v234 - v13;
  v14 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v14 - 8, v15);
  v238 = &v234 - v16;
  v258 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v239 = *(v258 - 8);
  __chkstk_darwin(v258, v17);
  v254 = &v234 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v257 = &v234 - v21;
  v251 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v250 = *(v251 - 8);
  __chkstk_darwin(v251, v22);
  v247 = &v234 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v253 = &v234 - v26;
  v252 = type metadata accessor for REMRemindersListDataView.Diff();
  v241 = *(v252 - 8);
  __chkstk_darwin(v252, v27);
  v240 = &v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v256 = &v234 - v31;
  v32 = _s10PredicatesOMa(0);
  __chkstk_darwin(v32, v33);
  v35 = &v234 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_1000F5104(&qword_1009506B8, &qword_1007B6740);
  v246 = *(v249 - 8);
  __chkstk_darwin(v249, v36);
  v248 = &v234 - v37;
  v268 = type metadata accessor for REMRemindersListDataView.AllInvocation.Parameters();
  v261 = *(v268 - 8);
  __chkstk_darwin(v268, v38);
  v40 = &v234 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41, v42);
  v262 = &v234 - v43;
  v44 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v44 - 8, v45);
  v269 = &v234 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v270 = PropertyListDecoder.init()();
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v47 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v48 = a4;
  v49 = REMStoreObjectsContainer.init(store:storages:)();
  v50 = v269;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v274 = v47;
  v273 = v49;
  v264 = v49;

  v51 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v273, v50);
  v51(&ObjectType, 0);
  sub_10000F85C(&qword_1009507D8, &type metadata accessor for REMRemindersListDataView.AllInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.AllInvocation.Parameters);
  v52 = v267;
  v53 = v268;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v52)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100006654(v54, qword_100950598);
    swift_errorRetain();
    v55 = v263;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v273 = swift_slowAlloc();
      *v58 = 136315394;
      swift_getErrorValue();
      v59 = Error.rem_errorDescription.getter();
      v61 = v60;
      v62 = sub_10000668C(v59, v60, &v273);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_1009507E0, &qword_1007B67C0);
      v70 = String.init<A>(describing:)();
      v72 = v71;
      v73 = sub_10000668C(v70, v71, &v273);
      v72, v74, v75, v76, v77, v78, v79, v80;
      *(v58 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v58, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    return v56;
  }

  v237 = v48;
  v266 = v47;
  v81 = v261;
  (*(v261 + 32))(v262, v40, v53);
  type metadata accessor for RDXPCStorePerformer();
  throwingCast<A>(_:as:failureMessage:)();
  v83 = sub_10054D590(v259);
  v267 = 0;
  v84 = v83;
  v236 = REMRemindersListDataView.AllInvocation.Parameters.countCompleted.getter();
  if (v236)
  {
    swift_storeEnumTagMultiPayload();
    v56 = sub_100043AA8();
    sub_100715370(v35, _s10PredicatesOMa);
    sub_100345DB0();
    v85 = [objc_allocWithZone(NSFetchRequest) init];
    v86 = [swift_getObjCClassFromMetadata() entity];
    [v85 setEntity:v86];

    [v85 setAffectedStores:0];
    [v85 setPredicate:v56];
    v87 = v267;
    v88 = NSManagedObjectContext.count<A>(for:)();
    v267 = v87;
    if (v87)
    {

      v84, v89, v90, v91, v92, v93, v94, v95;

      v81 = v261;
      v96 = v262;
LABEL_18:
      (*(v81 + 8))(v96, v53);

      return v56;
    }

    v235 = v88;

    v81 = v261;
  }

  else
  {
    v235 = 0;
  }

  v96 = v262;
  v56 = [v263 fetchResultTokenToDiffAgainst];
  v97 = v256;
  v98 = v267;
  sub_100534D44(v56, v256);
  v267 = v98;
  if (v98)
  {

    v84, v99, v100, v101, v102, v103, v104, v105;
    goto LABEL_18;
  }

  v106 = v253;
  REMRemindersListDataView.AllInvocation.Parameters.remindersPrefetch.getter();
  v107 = v250;
  v108 = v247;
  v109 = v106;
  v110 = v251;
  (*(v250 + 16))(v247, v109, v251);
  v111 = (*(v107 + 88))(v108, v110);
  if (v111 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v107 + 96))(v108, v110);
    v255 = *v108;
    v53 = *v84->clientIdentity;
    v234 = v84;
    if (v53)
    {
      v265 = *(v239 + 16);
      v112 = v84 + ((*(v239 + 80) + 32) & ~*(v239 + 80));
      v260 = *(v239 + 72);
      v113 = (v239 + 8);
      v114 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v115 = v257;
        v116 = v258;
        v265(v257, v112, v258);
        v117 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        (*v113)(v115, v116);
        v118 = *(v117 + 16);
        v119 = *v114->clientIdentity;
        v120 = v119 + v118;
        if (__OFADD__(v119, v118))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          swift_once();
LABEL_63:
          v195 = type metadata accessor for Logger();
          sub_100006654(v195, qword_100950598);
          v196 = v263;
          swift_errorRetain();
          v197 = Logger.logObject.getter();
          v198 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v197, v198))
          {
            v199 = swift_slowAlloc();
            v273 = swift_slowAlloc();
            *v199 = 136315394;
            swift_getErrorValue();
            v200 = Error.rem_errorDescription.getter();
            v202 = v201;
            v203 = sub_10000668C(v200, v201, &v273);
            v202, v204, v205, v206, v207, v208, v209, v210;
            *(v199 + 4) = v203;
            *(v199 + 12) = 2080;
            ObjectType = swift_getObjectType();
            sub_1000F5104(&qword_1009507E0, &qword_1007B67C0);
            v211 = String.init<A>(describing:)();
            v213 = v212;
            v214 = sub_10000668C(v211, v212, &v273);
            v213, v215, v216, v217, v218, v219, v220, v221;
            *(v199 + 14) = v214;
            _os_log_impl(&_mh_execute_header, v197, v198, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v199, 0x16u);
            swift_arrayDestroy();

            v53 = v268;
          }

          v56 = v262;
          v222 = v249;
          v223 = v246;
          swift_willThrow();

          (*(v223 + 8))(v248, v222);
          (*(v261 + 8))(v56, v53);

          return v56;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v120 <= *&v114->clientIdentity[8] >> 1)
        {
          if (*(v117 + 16))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v119 <= v120)
          {
            v129 = v119 + v118;
          }

          else
          {
            v129 = v119;
          }

          v114 = sub_100365A24(isUniquelyReferenced_nonNull_native, v129, 1, v114);
          if (*(v117 + 16))
          {
LABEL_33:
            v130 = (*&v114->clientIdentity[8] >> 1) - *v114->clientIdentity;
            type metadata accessor for REMRemindersListDataView.ReminderLite();
            if (v130 < v118)
            {
              goto LABEL_71;
            }

            swift_arrayInitWithCopy();
            v117, v131, v132, v133, v134, v135, v136, v137;
            if (v118)
            {
              v138 = *v114->clientIdentity;
              v139 = __OFADD__(v138, v118);
              v140 = v138 + v118;
              if (v139)
              {
                goto LABEL_72;
              }

              *v114->clientIdentity = v140;
            }

            goto LABEL_23;
          }
        }

        v117, v122, v123, v124, v125, v126, v127, v128;
        if (v118)
        {
          goto LABEL_70;
        }

LABEL_23:
        v112 += v260;
        if (!--v53)
        {
          goto LABEL_57;
        }
      }
    }

    v114 = &_swiftEmptyArrayStorage;
LABEL_57:
    sub_10053DB98(v255, v114, v259, v237, 0);
    v114, v173, v174, v175, v176, v177, v178, v179;
    (*(v250 + 8))(v253, v251);
    goto LABEL_58;
  }

  v141 = v237;
  if (v111 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v142 = v247;
    (*(v107 + 96))(v247, v110);
    sub_10053E698(*v142, v97, v259, v141, 0);
    (*(v107 + 8))(v253, v110);
    goto LABEL_61;
  }

  if (v111 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v143 = v247;
    (*(v107 + 96))(v247, v110);
    v257 = *v143;
    v144 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v143 + *(v144 + 48), v238, &qword_10094B8E0, &unk_1007AABD0);
    v53 = *v84->clientIdentity;
    v234 = v84;
    if (v53)
    {
      v265 = *(v239 + 16);
      v145 = v84 + ((*(v239 + 80) + 32) & ~*(v239 + 80));
      v260 = *(v239 + 72);
      v146 = (v239 + 8);
      v147 = &_swiftEmptyArrayStorage;
      do
      {
        v148 = v254;
        v149 = v258;
        v265(v254, v145, v258);
        v150 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        (*v146)(v148, v149);
        v151 = *(v150 + 16);
        v152 = *v147->clientIdentity;
        v153 = v152 + v151;
        if (__OFADD__(v152, v151))
        {
          goto LABEL_73;
        }

        v154 = swift_isUniquelyReferenced_nonNull_native();
        if (!v154 || v153 > *&v147->clientIdentity[8] >> 1)
        {
          if (v152 <= v153)
          {
            v162 = v152 + v151;
          }

          else
          {
            v162 = v152;
          }

          v147 = sub_100365A24(v154, v162, 1, v147);
        }

        if (*(v150 + 16))
        {
          v163 = (*&v147->clientIdentity[8] >> 1) - *v147->clientIdentity;
          type metadata accessor for REMRemindersListDataView.ReminderLite();
          if (v163 < v151)
          {
            goto LABEL_75;
          }

          swift_arrayInitWithCopy();
          v150, v164, v165, v166, v167, v168, v169, v170;
          if (v151)
          {
            v171 = *v147->clientIdentity;
            v139 = __OFADD__(v171, v151);
            v172 = v171 + v151;
            if (v139)
            {
              goto LABEL_76;
            }

            *v147->clientIdentity = v172;
          }
        }

        else
        {
          v150, v155, v156, v157, v158, v159, v160, v161;
          if (v151)
          {
            goto LABEL_74;
          }
        }

        v145 += v260;
        --v53;
      }

      while (v53);
    }

    else
    {
      v147 = &_swiftEmptyArrayStorage;
    }

    v224 = v259;
    v225 = v237;
    sub_10053DB98(v257, v147, v259, v237, 0);
    v226 = v238;
    sub_10053EBE4(v238, v147, v224, v225, 0);
    v147, v227, v228, v229, v230, v231, v232, v233;
    sub_1000050A4(v226, &qword_10094B8E0, &unk_1007AABD0);
    (*(v250 + 8))(v253, v251);
LABEL_58:
    v53 = v268;
    goto LABEL_61;
  }

  if (v111 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v107 + 8))(v253, v110);
LABEL_61:
  v180 = v243;
  REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
  v181 = v244;
  v182 = v245;
  (*(v244 + 16))(v242, v180, v245);
  v183 = v241;
  (*(v241 + 16))(v240, v256, v252);
  sub_10000F85C(&qword_10094C3B0, &type metadata accessor for REMRemindersListDataView.ListsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsModel);
  sub_10000F85C(&qword_10094C3B8, &type metadata accessor for REMRemindersListDataView.ListsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsModel);
  v184 = v248;
  REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
  (*(v181 + 8))(v180, v182);
  (*(v183 + 8))(v256, v252);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v185 = v184;
  v186 = PropertyListEncoder.init()();
  sub_10003B2E4(&_swiftEmptyArrayStorage);
  v187 = v266;
  swift_allocObject();
  v188 = v237;
  v189 = REMStoreObjectsContainer.init(store:storages:)();
  v190 = v269;
  static CodingUserInfoKey.remStoragesContainer.getter();
  v274 = v187;
  v273 = v189;

  v191 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_10000E350(&v273, v190);
  v191(&ObjectType, 0);
  sub_10000CB48(&qword_1009506D0, &qword_1009506B8, &qword_1007B6740, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
  v192 = v249;
  v193 = v267;
  v194 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v193)
  {
    v269 = v186;
    if (qword_100936760 != -1)
    {
      goto LABEL_77;
    }

    goto LABEL_63;
  }

  v56 = v194;
  dispatch thunk of REMStoreObjectsContainer.storages.getter();

  (*(v246 + 8))(v185, v192);
  (*(v261 + 8))(v262, v53);

  return v56;
}

NSObject *sub_1006FFA30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v113 = a6;
  v100 = a3;
  v108 = a2;
  v109 = a1;
  v98 = type metadata accessor for REMRemindersListDataView.Diff();
  v93 = *(v98 - 8);
  __chkstk_darwin(v98, v9);
  v92 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v103 = &v91 - v13;
  v14 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v14 - 8, v15);
  v99 = &v91 - v16;
  v105 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v102 = *(v105 - 8);
  __chkstk_darwin(v105, v17);
  v97 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v101 = &v91 - v21;
  v104 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v22 = *(v104 - 8);
  __chkstk_darwin(v104, v23);
  v106 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000F5104(&qword_1009507B8, &qword_1007B67B0);
  v94 = *(v25 - 8);
  __chkstk_darwin(v25, v26);
  v96 = &v91 - v27;
  v116 = type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters();
  v111 = *(v116 - 8);
  __chkstk_darwin(v116, v28);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v110 = &v91 - v33;
  v34 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v34 - 8, v35);
  v37 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v117 = PropertyListDecoder.init()();
  v95 = v25;
  v107 = v22;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v38 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v39 = a4;
  v40 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v121 = v38;
  v120 = v40;
  v115 = v40;

  v41 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v120, v37);
  v41(&ObjectType, 0);
  sub_10000F85C(&qword_1009507C0, &type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters);
  v42 = v116;
  v43 = v114;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v43)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_100950598);
    swift_errorRetain();
    v45 = v112;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v48 = 136315394;
      swift_getErrorValue();
      v49 = Error.rem_errorDescription.getter();
      v51 = v50;
      v52 = sub_10000668C(v49, v50, &v120);
      v51, v53, v54, v55, v56, v57, v58, v59;
      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_1009507C8, &qword_1007B67B8);
      v60 = String.init<A>(describing:)();
      v62 = v61;
      v63 = sub_10000668C(v60, v61, &v120);
      v62, v64, v65, v66, v67, v68, v69, v70;
      *(v48 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v48, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v114 = v39;
    (*(v111 + 32))(v110, v30, v42);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    sub_10054E5F4(v108);

    v72 = v106;
    REMRemindersListDataView.CountByCompleted.init(reminders:)();
    v73 = v107;
    v74 = v99;
    v75 = v72;
    v76 = v104;
    (*(v107 + 16))(v99, v75, v104);
    (*(v73 + 56))(v74, 0, 1, v76);
    v77 = v101;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v78 = [v112 fetchResultTokenToDiffAgainst];
    v79 = v103;
    sub_100534D44(v78, v103);

    v80 = v102;
    (*(v102 + 16))(v97, v77, v105);
    v81 = v93;
    (*(v93 + 16))(v92, v79, v98);
    v113 = sub_10000F85C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    sub_10000F85C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    v82 = v79;
    v83 = v96;
    v84 = v105;
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v81 + 8))(v82, v98);
    (*(v80 + 8))(v77, v84);
    (*(v107 + 8))(v106, v104);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v85 = v114;
    v86 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v121 = v38;
    v120 = v86;

    v87 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v120, v37);
    v87(&ObjectType, 0);
    sub_10000CB48(&qword_1009507D0, &qword_1009507B8, &qword_1007B67B0, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v88 = v95;
    v89 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v90 = v111;
    v46 = v89;
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v94 + 8))(v83, v88);
    (*(v90 + 8))(v110, v116);
  }

  return v46;
}

NSObject *sub_100700888(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = type metadata accessor for REMRemindersListDataView.GroupInvocation.Result();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_1009507A0, &type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.GroupInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_1009507A8, &qword_1007B67A8);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = *(v12 + 32);
    v58 = v72;
    v57(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v60 = v80;
    sub_100552A10(v80, v68, v69, v24, v58, v70);
    v76 = v60;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v61 = v24;
    v62 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v62;

    v63 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v63(v81, 0);
    sub_10000F85C(&qword_1009507B0, &type metadata accessor for REMRemindersListDataView.GroupInvocation.Result, &protocol conformance descriptor for REMRemindersListDataView.GroupInvocation.Result);
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v70, v64);
    (*(v56 + 8))(v72, v27);
  }

  return v31;
}

NSObject *sub_10070121C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v75 = a6;
  v74 = a5;
  v69 = a3;
  v68 = a2;
  v71 = a1;
  v67 = sub_1000F5104(&qword_100950780, &qword_1007B6798);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67, v10);
  v70 = &v65 - v11;
  v78 = type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters();
  v12 = *(v78 - 8);
  __chkstk_darwin(v78, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v72 = &v65 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v79 = PropertyListDecoder.init()();
  v73 = v7;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v23 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v24 = a4;
  v25 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v83 = v23;
  v82[0] = v25;
  v77 = v25;

  v26 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v82, v22);
  v26(v81, 0);
  sub_10000F85C(&qword_100950788, &type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters, &protocol conformance descriptor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters);
  v27 = v78;
  v28 = v76;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v28)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_100950598);
    swift_errorRetain();
    v30 = v73;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v82[0] = swift_slowAlloc();
      *v33 = 136315394;
      swift_getErrorValue();
      v34 = Error.rem_errorDescription.getter();
      v36 = v35;
      v37 = sub_10000668C(v34, v35, v82);
      v36, v38, v39, v40, v41, v42, v43, v44;
      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v81[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950790, &qword_1007B67A0);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, v82);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v33 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v56 = v12;
    v57 = v72;
    (*(v12 + 32))(v72, v15, v27);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v59 = v80;
    sub_10055DDF4(v68, v69, v24, v57, v70);
    v76 = v59;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v60 = v24;
    v61 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v83 = v23;
    v82[0] = v61;

    v62 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v82, v22);
    v62(v81, 0);
    sub_10000CB48(&qword_100950798, &qword_100950780, &qword_1007B6798, &protocol conformance descriptor for REMRemindersListDataView.DefaultInvocationResult<A>);
    v63 = v70;
    v64 = v67;
    v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v66 + 8))(v63, v64);
    (*(v56 + 8))(v72, v78);
  }

  return v31;
}

uint64_t sub_100701BC0(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v147 = a6;
  v146 = a5;
  v141 = a3;
  v140 = a2;
  v143 = a1;
  v133 = type metadata accessor for REMListPickerDataView.Model();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133, v9);
  v131 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v130 = &v125 - v13;
  v129 = type metadata accessor for REMAccountsListDataView.Model();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129, v14);
  v127 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for REMAccountsListDataView.FetchOptions();
  v138 = *(Options - 8);
  __chkstk_darwin(Options, v16);
  v18 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for REMAccountsListDataView.Invocation.Result();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126, v19);
  v142 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for REMListPickerDataView.Invocation.Result();
  v134 = *(v21 - 8);
  __chkstk_darwin(v21, v22);
  v136 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for REMListPickerDataView.Invocation.Parameters();
  v24 = *(v150 - 8);
  __chkstk_darwin(v150, v25);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v144 = &v125 - v30;
  v31 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v31 - 8, v32);
  v34 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v151 = PropertyListDecoder.init()();
  v135 = v21;
  v137 = v18;
  if (!a7)
  {
    sub_10003B2E4(&_swiftEmptyArrayStorage);
  }

  v35 = type metadata accessor for REMStoreObjectsContainer();
  swift_allocObject();

  v36 = a4;
  v37 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v155 = v35;
  v154 = v37;
  v149 = v37;

  v38 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(&v154, v34);
  v38(&ObjectType, 0);
  sub_10000F85C(&qword_100950600, &type metadata accessor for REMListPickerDataView.Invocation.Parameters, &protocol conformance descriptor for REMListPickerDataView.Invocation.Parameters);
  v39 = v150;
  v40 = v148;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v40)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_100950598);
    swift_errorRetain();
    v42 = v145;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v39 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *v39 = 136315394;
      swift_getErrorValue();
      v45 = Error.rem_errorDescription.getter();
      v47 = v46;
      v48 = sub_10000668C(v45, v46, &v154);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v39 + 4) = v48;
      *(v39 + 12) = 2080;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&qword_100950608, &unk_1007B66E0);
      v56 = String.init<A>(describing:)();
      v58 = v57;
      v59 = sub_10000668C(v56, v57, &v154);
      v58, v60, v61, v62, v63, v64, v65, v66;
      *(v39 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v39, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v67 = v24;
    (*(v24 + 32))(v144, v27, v39);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v69 = v152;
    type metadata accessor for REMAccountsListDataView.Invocation();
    v70 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v71 = v137;
    static REMAccountsListDataView.FetchOptions.accountsOnly.getter();
    v148 = v69;
    sub_10000ABF4(v140, v141, v36, v71, v142);
    v147 = v67;
    (*(v138 + 8))(v71, Options);

    v72 = v127;
    v73 = v142;
    REMAccountsListDataView.Invocation.Result.model.getter();
    (*(v125 + 8))(v73, v126);
    v74 = REMAccountsListDataView.Model.accounts.getter();
    (*(v128 + 8))(v72, v129);
    v75 = v144;
    v76 = REMListPickerDataView.Invocation.Parameters.shouldIncludeCustomSmartLists.getter();
    __chkstk_darwin(v76, v77);
    *(&v125 - 2) = v75;
    *(&v125 - 8) = v78 & 1;
    sub_1003DEA00(sub_1007127FC, (&v125 - 4), v74);
    v146 = 0;
    v74, v79, v80, v81, v82, v83, v84, v85;
    v86 = v130;
    REMListPickerDataView.Model.init(accounts:)();
    v87 = v132;
    v88 = v133;
    (*(v132 + 16))(v131, v86, v133);
    v89 = v136;
    REMListPickerDataView.Invocation.Result.init(model:)();
    (*(v87 + 8))(v86, v88);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    v90 = PropertyListEncoder.init()();
    sub_10003B2E4(&_swiftEmptyArrayStorage);
    swift_allocObject();
    v91 = v36;
    v92 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v155 = v35;
    v154 = v92;

    v93 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(&v154, v34);
    v93(&ObjectType, 0);
    sub_10000F85C(&qword_100950610, &type metadata accessor for REMListPickerDataView.Invocation.Result, &protocol conformance descriptor for REMListPickerDataView.Invocation.Result);
    v94 = v135;
    v95 = v146;
    v96 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (v95)
    {
      v146 = v90;
      if (qword_100936760 != -1)
      {
        swift_once();
      }

      v97 = type metadata accessor for Logger();
      sub_100006654(v97, qword_100950598);
      v98 = v145;
      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v99))
      {
        v100 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        *v100 = 136315394;
        swift_getErrorValue();
        v101 = Error.rem_errorDescription.getter();
        v103 = v102;
        v104 = sub_10000668C(v101, v102, &v154);
        v103, v105, v106, v107, v108, v109, v110, v111;
        *(v100 + 4) = v104;
        *(v100 + 12) = 2080;
        ObjectType = swift_getObjectType();
        sub_1000F5104(&qword_100950608, &unk_1007B66E0);
        v112 = String.init<A>(describing:)();
        v114 = v113;
        v115 = sub_10000668C(v112, v113, &v154);
        v114, v116, v117, v118, v119, v120, v121, v122;
        *(v100 + 14) = v115;
        v123 = v144;
        _os_log_impl(&_mh_execute_header, v39, v99, "Failed to encode the result of RDSwiftInvocable {error: %s, invocation: %s}", v100, 0x16u);
        swift_arrayDestroy();

        v94 = v135;

        v124 = v136;
      }

      else
      {

        v124 = v136;
        v123 = v144;
      }

      swift_willThrow();

      (*(v134 + 8))(v124, v94);
      (*(v147 + 8))(v123, v150);
    }

    else
    {
      v39 = v96;
      dispatch thunk of REMStoreObjectsContainer.storages.getter();

      (*(v134 + 8))(v89, v94);
      (*(v147 + 8))(v144, v150);
    }
  }

  return v39;
}