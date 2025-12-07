void sub_1004DF054(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v4, v5, v6, v7, v8, v9, v10, v11;
  if ((v59 & 1) == 0 && v58 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094A590);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v58 = v17;
      *v16 = 136446210;
      v18 = [v13 recordID];
      v19 = [v18 ckShortDescription];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000668C(v20, v22, &v58);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v16, 0xCu);
      sub_10000607C(v17);
    }

    v31 = [v1 createResolutionTokenMapIfNecessary];
    v32 = 0;
    v33 = &off_1008DE238;
    do
    {
      v42 = *(v33 + v32++ + 32);
      if (((1 << v42) & 0x1777DFE6) != 0)
      {
        v43 = sub_100395898(v42);
        v45 = v44;

        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        v45, v48, v49, v50, v51, v52, v53, v54;
        if (os_log_type_enabled(v46, v47))
        {
          v55 = v33;
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v58 = v57;
          *v56 = 136446210;
          *(v56 + 4) = sub_10000668C(v43, v45, &v58);
          _os_log_impl(&_mh_execute_header, v46, v47, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v56, 0xCu);
          sub_10000607C(v57);

          v33 = v55;
        }

        v34 = String._bridgeToObjectiveC()();
        v45, v35, v36, v37, v38, v39, v40, v41;
        [v31 initTokenWithDefaultValueIfNecessaryForKey:v34];
      }
    }

    while (v32 != 29);
  }
}

void sub_1004DF3EC(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v4, v5, v6, v7, v8, v9, v10, v11;
  if ((v61 & 1) == 0 && v60 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094A590);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v60 = v17;
      *v16 = 136446210;
      v18 = [v13 recordID];
      v19 = [v18 ckShortDescription];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000668C(v20, v22, &v60);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v16, 0xCu);
      sub_10000607C(v17);
    }

    v31 = [v1 createResolutionTokenMapIfNecessary];
    v32 = 0;
    v33 = &off_1008DE5D8;
    v34 = &selRef_attachmentRepresentationAndReturnError_;
    do
    {
      v43 = *(v33 + v32 + 32);
      if (*(v33 + v32 + 32))
      {
        if (v43 == 1)
        {
          v44 = 0xD00000000000001DLL;
        }

        else
        {
          v44 = 0x6574616C706D6574;
        }

        if (v43 == 1)
        {
          v45 = 0x80000001007E9100;
        }

        else
        {
          v45 = 0xE800000000000000;
        }
      }

      else
      {
        v45 = 0xE800000000000000;
        v44 = 0x617461646174656DLL;
      }

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v45, v48, v49, v50, v51, v52, v53, v54;
      if (os_log_type_enabled(v46, v47))
      {
        v55 = v31;
        v56 = v34;
        v57 = v33;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = v59;
        *v58 = 136446210;
        *(v58 + 4) = sub_10000668C(v44, v45, &v60);
        _os_log_impl(&_mh_execute_header, v46, v47, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v58, 0xCu);
        sub_10000607C(v59);

        v33 = v57;
        v34 = v56;
        v31 = v55;
      }

      ++v32;
      v35 = String._bridgeToObjectiveC()();
      v45, v36, v37, v38, v39, v40, v41, v42;
      [v31 v34[40]];
    }

    while (v32 != 3);
  }
}

void sub_1004DF7C8(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v4, v5, v6, v7, v8, v9, v10, v11;
  if ((v61 & 1) == 0 && v60 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094A590);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v60 = v17;
      *v16 = 136446210;
      v18 = [v13 recordID];
      v19 = [v18 ckShortDescription];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000668C(v20, v22, &v60);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v16, 0xCu);
      sub_10000607C(v17);
    }

    v31 = [v1 createResolutionTokenMapIfNecessary];
    v32 = 0;
    v33 = &off_1008DE6C8;
    v34 = &selRef_attachmentRepresentationAndReturnError_;
    do
    {
      v43 = *(v33 + v32 + 32);
      if (*(v33 + v32 + 32))
      {
        if (v43 == 1)
        {
          v44 = 0x4E79616C70736964;
        }

        else
        {
          v44 = 0x73694C7472616D73;
        }

        if (v43 == 1)
        {
          v45 = 0xEB00000000656D61;
        }

        else
        {
          v45 = 0xE900000000000074;
        }
      }

      else
      {
        v44 = 0x6E6F697461657263;
        v45 = 0xEC00000065746144;
      }

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v45, v48, v49, v50, v51, v52, v53, v54;
      if (os_log_type_enabled(v46, v47))
      {
        v55 = v31;
        v56 = v34;
        v57 = v33;
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = v59;
        *v58 = 136446210;
        *(v58 + 4) = sub_10000668C(v44, v45, &v60);
        _os_log_impl(&_mh_execute_header, v46, v47, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v58, 0xCu);
        sub_10000607C(v59);

        v33 = v57;
        v34 = v56;
        v31 = v55;
      }

      ++v32;
      v35 = String._bridgeToObjectiveC()();
      v45, v36, v37, v38, v39, v40, v41, v42;
      [v31 v34[40]];
    }

    while (v32 != 3);
  }
}

void sub_1004DFBAC(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v4, v5, v6, v7, v8, v9, v10, v11;
  if ((v38 & 1) == 0 && v37 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094A590);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v17;
      *v16 = 136446210;
      v18 = [v13 recordID];
      v19 = [v18 ckShortDescription];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000668C(v20, v22, &v37);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v16, 0xCu);
      sub_10000607C(v17);
    }

    v31 = [v1 createResolutionTokenMapIfNecessary];
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007E8C60, &v37);
      _os_log_impl(&_mh_execute_header, v32, v33, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v34, 0xCu);
      sub_10000607C(v35);
    }

    v36 = String._bridgeToObjectiveC()();
    [v31 initTokenWithDefaultValueIfNecessaryForKey:v36];
  }
}

void sub_1004DFED8(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v4, v5, v6, v7, v8, v9, v10, v11;
  if ((v67 & 1) == 0 && v66 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094A590);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v66 = v17;
      *v16 = 136446210;
      v18 = [v13 recordID];
      v19 = [v18 ckShortDescription];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000668C(v20, v22, &v66);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v16, 0xCu);
      sub_10000607C(v17);
    }

    v31 = [v1 createResolutionTokenMapIfNecessary];
    v32 = 0;
    v33 = &off_1008DE7F0;
    v34 = 0xEC00000065746144;
    v35 = &selRef_attachmentRepresentationAndReturnError_;
    v65 = v31;
    do
    {
      v44 = *(v33 + v32++ + 32);
      v45 = 0x6163696E6F6E6163;
      if (v44 != 2)
      {
        v45 = 1953720684;
      }

      v46 = 0xED0000656D614E6CLL;
      if (v44 != 2)
      {
        v46 = 0xE400000000000000;
      }

      v47 = 0x6E6F697461657263;
      if (v44)
      {
        v47 = 0x4E79616C70736964;
      }

      v48 = 0xEB00000000656D61;
      if (!v44)
      {
        v48 = v34;
      }

      if (v44 <= 1)
      {
        v49 = v47;
      }

      else
      {
        v49 = v45;
      }

      if (v44 <= 1)
      {
        v50 = v48;
      }

      else
      {
        v50 = v46;
      }

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v50, v53, v54, v55, v56, v57, v58, v59;
      if (os_log_type_enabled(v51, v52))
      {
        v60 = v34;
        v61 = v33;
        v62 = swift_slowAlloc();
        v63 = v35;
        v64 = swift_slowAlloc();
        v66 = v64;
        *v62 = 136446210;
        *(v62 + 4) = sub_10000668C(v49, v50, &v66);
        _os_log_impl(&_mh_execute_header, v51, v52, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v62, 0xCu);
        sub_10000607C(v64);
        v35 = v63;

        v33 = v61;
        v34 = v60;
        v31 = v65;
      }

      v36 = String._bridgeToObjectiveC()();
      v50, v37, v38, v39, v40, v41, v42, v43;
      [v31 v35[40]];
    }

    while (v32 != 4);
  }
}

void sub_1004E02E8(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v4, v5, v6, v7, v8, v9, v10, v11;
  if ((v61 & 1) == 0 && v60 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006654(v12, qword_10094A590);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v60 = v17;
      *v16 = 136446210;
      v18 = [v13 recordID];
      v19 = [v18 ckShortDescription];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10000668C(v20, v22, &v60);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v16, 0xCu);
      sub_10000607C(v17);
    }

    v31 = [v1 createResolutionTokenMapIfNecessary];
    v32 = 0;
    v33 = &off_1008DE8F8;
    v34 = &selRef_attachmentRepresentationAndReturnError_;
    while (1)
    {
      v43 = *(v33 + v32 + 32);
      if (v43 > 4)
      {
        if (*(v33 + v32 + 32) <= 6u)
        {
          if (v43 != 5)
          {
            v44 = 0xD000000000000023;
            v45 = 0x80000001007E9200;
            goto LABEL_25;
          }
        }

        else if (v43 - 7 >= 2)
        {
          v44 = 0xD00000000000001BLL;
          v45 = 0x80000001007E9270;
          goto LABEL_25;
        }
      }

      else
      {
        if (*(v33 + v32 + 32) <= 1u)
        {
          if (*(v33 + v32 + 32))
          {
            v45 = 0x80000001007E9160;
          }

          else
          {
            v45 = 0x80000001007E9140;
          }

          v44 = 0xD000000000000012;
          goto LABEL_25;
        }

        if (v43 == 2)
        {
          v44 = 0xD000000000000018;
          v45 = 0x80000001007E9180;
          goto LABEL_25;
        }

        if (v43 != 3)
        {
          v44 = 0x44496E6F73726570;
          v45 = 0xEC000000746C6153;
LABEL_25:

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.default.getter();
          v45, v48, v49, v50, v51, v52, v53, v54;
          if (os_log_type_enabled(v46, v47))
          {
            v55 = v31;
            v56 = v33;
            v57 = v34;
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v60 = v59;
            *v58 = 136446210;
            *(v58 + 4) = sub_10000668C(v44, v45, &v60);
            _os_log_impl(&_mh_execute_header, v46, v47, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v58, 0xCu);
            sub_10000607C(v59);

            v34 = v57;
            v33 = v56;
            v31 = v55;
          }

          v35 = String._bridgeToObjectiveC()();
          v45, v36, v37, v38, v39, v40, v41, v42;
          [v31 v34[40]];
        }
      }

      if (++v32 == 10)
      {

        return;
      }
    }
  }
}

void static REMCDObject.mergeSystemProperties(into:from:)(void *a1, void *a2)
{
  if ([a1 respondsToSelector:"shouldUseResolutionTokenMapForMergingData"])
  {
    [a1 mergeDataRevertedLocallyMarkedForDeletion];
    [a1 mergeDataRefusedToMergeMarkedForDeletion];
    v4 = a1;
    v5 = a2;
    sub_1004E8C90(v5, v4, v4, v5);
  }

  else
  {

    sub_1004E83E0(a1, a2);
  }
}

void sub_1004E0908(void *a1, int a2, int a3, void *a4, void *a5, void *a6, _BYTE *a7)
{
  v308 = a7;
  v309 = a6;
  v307 = a5;
  v313 = a3;
  v310 = a2;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v303 - v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v312 = a1;
  CKRecordKeyValueSetting.subscript.getter();
  v14, v15, v16, v17, v18, v19, v20, v21;
  if ((v320 & 1) != 0 || v319 != 1)
  {
    v28 = sub_1004D7500(v312, 0);
    if (v29)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      CKRecordKeyValueSetting.subscript.getter();
      v31, v32, v33, v34, v35, v36, v37, v38;
      if ((v320 & 1) != 0 || v319 != 1 || ![a4 markedForDeletion])
      {
        if (qword_100936300 != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_15;
      }

      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_10094A590);
      v40 = v312;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v319 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = CKRecord.recordType.getter();
        v46 = v45;
        v47 = sub_10000668C(v44, v45, &v319);
        v46, v48, v49, v50, v51, v52, v53, v54;
        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        v55 = [v40 recordID];
        v56 = [v55 ckShortDescription];

        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = sub_10000668C(v57, v59, &v319);
        v59, v61, v62, v63, v64, v65, v66, v67;
        *(v43 + 14) = v60;
        v68 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }

LABEL_18:
    }

    if ([a4 shouldPerformCloudSchemaCatchUpSync])
    {
      v95 = [a4 storeControllerManagedObjectContext];
      if (v95)
      {
        v96 = v95;
        v97 = [a4 accountCKIdentifier];
        if (v97)
        {
          v98 = v97;
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v100;

          v102 = [v96 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v103 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v103 + 16))
          {
            v111 = sub_100005F4C(v99, v101);
            v113 = v112;
            v101, v112, v114, v115, v116, v117, v118, v119;
            if (v113)
            {
              v127 = *(*(v103 + 56) + 8 * v111);
              v103, v128, v129, v130, v131, v132, v133, v134;
              v135 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a4 persistenceCloudSchemaVersion:{objc_msgSend(v127, "persistenceCloudSchemaVersion")}];
              v136 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v137 = sub_1001A5660(v136);
              v136, v138, v139, v140, v141, v142, v143, v144;
LABEL_29:
              v314 = [a4 createResolutionTokenMapIfNecessary];
              v145 = [v28 getTokenKeys];
              v146 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v317 = *(v146 + 16);
              if (!v317)
              {
LABEL_88:
                v137, v147, v148, v149, v150, v151, v152, v153;
                v146, v296, v297, v298, v299, v300, v301, v302;

                goto LABEL_89;
              }

              v155 = 0;
              v316 = v146 + 32;
              v318 = &v137->clientIdentity[40];
              *&v154 = 136446466;
              v303 = v154;
              *&v154 = 136446722;
              v305 = v154;
              v306 = a4;
              v311 = v28;
              v315 = v146;
              while (1)
              {
                if (v155 >= *(v146 + 16))
                {
                  __break(1u);
LABEL_91:
                  swift_once();
LABEL_15:
                  v69 = type metadata accessor for Logger();
                  sub_100006654(v69, qword_10094A590);
                  v70 = v312;
                  v41 = Logger.logObject.getter();
                  v42 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v41, v42))
                  {
                    v43 = swift_slowAlloc();
                    v319 = swift_slowAlloc();
                    *v43 = 136446466;
                    v71 = CKRecord.recordType.getter();
                    v73 = v72;
                    v74 = sub_10000668C(v71, v72, &v319);
                    v73, v75, v76, v77, v78, v79, v80, v81;
                    *(v43 + 4) = v74;
                    *(v43 + 12) = 2082;
                    v82 = [v70 recordID];
                    v83 = [v82 ckShortDescription];

                    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v86 = v85;

                    v87 = sub_10000668C(v84, v86, &v319);
                    v86, v88, v89, v90, v91, v92, v93, v94;
                    *(v43 + 14) = v87;
                    v68 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_17:
                    _os_log_impl(&_mh_execute_header, v41, v42, v68, v43, 0x16u);
                    swift_arrayDestroy();
                  }

                  goto LABEL_18;
                }

                v187 = (v316 + 16 * v155);
                v188 = *v187;
                v189 = v187[1];

                v190._countAndFlagsBits = v188;
                v190._object = v189;
                v191 = _findStringSwitchCase(cases:string:)(&off_1008DDAA8, v190);
                if (v191 > 2)
                {
                  v202._countAndFlagsBits = v188;
                  v202._object = v189;
                  if (!_findStringSwitchCase(cases:string:)(&off_1008DDB10, v202))
                  {
                    v189, v203, v204, v205, v206, v207, v208, v209;
                    goto LABEL_34;
                  }

                  if (qword_100936300 != -1)
                  {
                    swift_once();
                  }

                  v210 = type metadata accessor for Logger();
                  sub_100006654(v210, qword_10094A590);
                  v211 = v312;

                  v212 = Logger.logObject.getter();
                  v213 = static os_log_type_t.error.getter();

                  v189, v214, v215, v216, v217, v218, v219, v220;
                  if (os_log_type_enabled(v212, v213))
                  {
                    v156 = swift_slowAlloc();
                    v319 = swift_slowAlloc();
                    *v156 = v305;
                    v157 = sub_10000668C(v188, v189, &v319);
                    v189, v158, v159, v160, v161, v162, v163, v164;
                    *(v156 + 4) = v157;
                    *(v156 + 12) = 2082;
                    v165 = CKRecord.recordType.getter();
                    v167 = v166;
                    v168 = sub_10000668C(v165, v166, &v319);
                    v167, v169, v170, v171, v172, v173, v174, v175;
                    *(v156 + 14) = v168;
                    *(v156 + 22) = 2082;
                    v321[0] = &_s6FieldsON;
                    sub_1000F5104(&unk_10094A670, &unk_1007AE920);
                    v176 = String.init<A>(reflecting:)();
                    v178 = v177;
                    v179 = sub_10000668C(v176, v177, &v319);
                    v178, v180, v181, v182, v183, v184, v185, v186;
                    *(v156 + 24) = v179;
                    _os_log_impl(&_mh_execute_header, v212, v213, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v156, 0x20u);
                    swift_arrayDestroy();
                    v28 = v311;

                    a4 = v306;
                  }

                  else
                  {
                    v189, v221, v222, v223, v224, v225, v226, v227;
                  }

                  goto LABEL_33;
                }

                v192 = v191;
                LOBYTE(v321[0]) = v191;
                if ([a4 shouldPerformCloudSchemaCatchUpSync])
                {
                  break;
                }

LABEL_63:
                v234 = String._bridgeToObjectiveC()();
                v189, v235, v236, v237, v238, v239, v240, v241;
                v242 = [v314 compareAndMergeWithMap:v28 forKey:v234];

                if (v313)
                {
                  if (v192)
                  {
                    if (v192 == 2)
                    {
                      0xE800000000000000, v147, v148, v149, v150, v151, v152, v153;
                      goto LABEL_33;
                    }

                    v243 = 0xEB00000000656D61;
                  }

                  else
                  {
                    v243 = 0xEC00000065746144;
                  }

                  v244 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v243, v245, v246, v247, v248, v249, v250, v251;
                  if (v244)
                  {
                    goto LABEL_33;
                  }
                }

                if (v310)
                {
                  if (v192)
                  {
                    if (v192 == 2)
                    {
                      0xE800000000000000, v147, v148, v149, v150, v151, v152, v153;
LABEL_83:
                      sub_10018CB0C(v321, v307, v309, v308);
                      goto LABEL_33;
                    }

                    v271 = 0xEB00000000656D61;
                  }

                  else
                  {
                    v271 = 0xEC00000065746144;
                  }

                  v272 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v271, v273, v274, v275, v276, v277, v278, v279;
                  if (v272)
                  {
                    goto LABEL_83;
                  }
                }

                if (v242 == -1)
                {
                  goto LABEL_83;
                }

LABEL_33:
                v146 = v315;
LABEL_34:
                if (++v155 == v317)
                {
                  goto LABEL_88;
                }
              }

              if (v192)
              {
                if (v192 == 1)
                {
                  v200 = 0x4E79616C70736964;
                }

                else
                {
                  v200 = 0x6574616C706D6574;
                }

                if (v192 == 1)
                {
                  v201 = 0xEB00000000656D61;
                }

                else
                {
                  v201 = 0xE800000000000000;
                }

                if (!*v137->clientIdentity)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v200 = 0x6E6F697461657263;
                v201 = 0xEC00000065746144;
                if (!*v137->clientIdentity)
                {
LABEL_62:
                  v201, v193, v194, v195, v196, v197, v198, v199;
                  v28 = v311;
                  goto LABEL_63;
                }
              }

              Hasher.init(_seed:)();
              String.hash(into:)();
              v228 = Hasher._finalize()();
              v229 = -1 << v137->clientIdentity[16];
              v230 = v228 & ~v229;
              if ((*&v318[(v230 >> 3) & 0xFFFFFFFFFFFFFF8] >> v230))
              {
                v231 = ~v229;
                while (1)
                {
                  v232 = (*&v137->clientIdentity[32] + 16 * v230);
                  v193 = v232[1];
                  v233 = *v232 == v200 && v193 == v201;
                  if (v233 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v230 = (v230 + 1) & v231;
                  if (((*&v318[(v230 >> 3) & 0xFFFFFFFFFFFFFF8] >> v230) & 1) == 0)
                  {
                    goto LABEL_62;
                  }
                }

                v201, v193, v194, v195, v196, v197, v198, v199;
                if (qword_100936300 != -1)
                {
                  swift_once();
                }

                v252 = type metadata accessor for Logger();
                sub_100006654(v252, qword_10094A590);

                v253 = a4;
                v254 = Logger.logObject.getter();
                v255 = static os_log_type_t.default.getter();

                v189, v256, v257, v258, v259, v260, v261, v262;
                v263 = os_log_type_enabled(v254, v255);
                v28 = v311;
                if (v263)
                {
                  v264 = swift_slowAlloc();
                  v304 = swift_slowAlloc();
                  v319 = v304;
                  *v264 = v303;
                  *(v264 + 4) = sub_10000668C(v188, v189, &v319);
                  *(v264 + 12) = 2082;
                  v265 = [v253 remObjectID];
                  if (v265)
                  {
                    v266 = v265;
                    v267 = [v265 description];

                    v268 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v270 = v269;
                  }

                  else
                  {
                    v270 = 0xE300000000000000;
                    v268 = 7104878;
                  }

                  v280 = sub_10000668C(v268, v270, &v319);
                  v270, v281, v282, v283, v284, v285, v286, v287;
                  *(v264 + 14) = v280;
                  _os_log_impl(&_mh_execute_header, v254, v255, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v264, 0x16u);
                  swift_arrayDestroy();

                  a4 = v306;
                  v28 = v311;
                }

                else
                {
                }

                sub_10018CB0C(v321, v307, v309, v308);
                v288 = String._bridgeToObjectiveC()();
                v189, v289, v290, v291, v292, v293, v294, v295;
                [v314 forceMergeFromMap:v28 forKey:v288];

                goto LABEL_33;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v101, v104, v105, v106, v107, v108, v109, v110;
          }

          v103, v120, v121, v122, v123, v124, v125, v126;
        }
      }
    }

    v137 = _swiftEmptySetSingleton;
    goto LABEL_29;
  }

  v22 = type metadata accessor for Date();
  CKRecordKeyValueSetting.subscript.getter();
  v23 = *(v22 - 8);
  isa = 0;
  if ((*(v23 + 48))(v12, 1, v22) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v23 + 8))(v12, v22);
  }

  v25 = v307;
  [v307 setCreationDate:isa];

  LOBYTE(v319) = 1;
  v26 = v308;
  v27 = v309;
  sub_10018CB0C(&v319, v25, v309, v308);
  LOBYTE(v319) = 2;
  sub_10018CB0C(&v319, v25, v27, v26);
  v314 = sub_1004D7500(v312, 1);
LABEL_89:
}

uint64_t sub_1004E183C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7, v8);
  v10 = &v33[-v9];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  __chkstk_darwin(v14, v15);
  v17 = &v33[-v16];
  if (!CKRecord.subscript.getter())
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
LABEL_6:
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_9:
    sub_1000050A4(v10, &unk_1009441F0, &qword_100795760);
    return 0;
  }

  v19 = [v18 fileURL];
  swift_unknownObjectRelease();
  if (v19)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 56))(v6, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v6, 1, 1, v11);
  }

  sub_100031B58(v6, v10, &unk_1009441F0, &qword_100795760);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_9;
  }

  (*(v12 + 32))(v17, v10, v11);
  v21 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v23 = v22;
  v24 = String._bridgeToObjectiveC()();
  v23, v25, v26, v27, v28, v29, v30, v31;
  LODWORD(v23) = [v21 fileExistsAtPath:v24];

  if (!v23)
  {
    (*(v12 + 8))(v17, v11);
    return 0;
  }

  v32 = Data.init(contentsOf:options:)();
  (*(v12 + 8))(v17, v11);
  return v32;
}

void sub_1004E3500(void *a1, void *a2, void *a3, unint64_t a4, _TtC7remindd19RDXPCStorePerformer *a5, uint64_t a6)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v284 = a1;
  CKRecordKeyValueSetting.subscript.getter();
  v13, v14, v15, v16, v17, v18, v19, v20;
  if ((v292 & 1) != 0 || v291 != 1)
  {
    v23 = sub_1004D85B8(a1, 0);
    v279 = a2;
    v283 = a3;
    v287 = v23;
    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    CKRecordKeyValueSetting.subscript.getter();
    v26, v27, v28, v29, v30, v31, v32, v33;
    if ((v292 & 1) != 0 || v291 != 1 || ![a2 markedForDeletion])
    {
      if (qword_100936300 != -1)
      {
        goto LABEL_98;
      }

      goto LABEL_15;
    }

    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_10094A590);
    v35 = v284;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = a4;
      v291 = swift_slowAlloc();
      *v38 = 136446466;
      v40 = CKRecord.recordType.getter();
      v42 = v41;
      v43 = sub_10000668C(v40, v41, &v291);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v38 + 4) = v43;
      *(v38 + 12) = 2082;
      v51 = [v35 recordID];
      v52 = [v51 ckShortDescription];

      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = sub_10000668C(v53, v55, &v291);
      v57 = v55;
      a2 = v279;
      v57, v58, v59, v60, v61, v62, v63, v64;
      *(v38 + 14) = v56;
      v65 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v36, v37, v65, v38, 0x16u);
      swift_arrayDestroy();
      a4 = v39;
      a3 = v283;

      v23 = v287;

      goto LABEL_18;
    }

    while (1)
    {
LABEL_18:

LABEL_19:
      v281 = a5;
      v282 = a6;
      if (![a2 shouldPerformCloudSchemaCatchUpSync])
      {
        goto LABEL_26;
      }

      v93 = [a2 storeControllerManagedObjectContext];
      if (!v93)
      {
        goto LABEL_26;
      }

      v94 = v93;
      v95 = [a2 accountCKIdentifier];
      if (!v95)
      {
        break;
      }

      v96 = v95;
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100 = [v94 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
      sub_1000060C8(0, &unk_10094A618, off_1008D4110);
      v101 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v101 + 16))
      {
        v109 = sub_100005F4C(v97, v99);
        v111 = v110;
        v99, v110, v112, v113, v114, v115, v116, v117;
        if (v111)
        {
          v125 = *(*(v101 + 56) + 8 * v109);
          v101, v126, v127, v128, v129, v130, v131, v132;
          v133 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a2 persistenceCloudSchemaVersion:{objc_msgSend(v125, "persistenceCloudSchemaVersion")}];
          v134 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          a5 = sub_1001A5660(v134);
          v134, v135, v136, v137, v138, v139, v140, v141;
          v23 = v287;
          goto LABEL_27;
        }
      }

      else
      {
        v99, v102, v103, v104, v105, v106, v107, v108;
      }

      v101, v118, v119, v120, v121, v122, v123, v124;

      a5 = _swiftEmptySetSingleton;
      v23 = v287;
LABEL_27:
      v286 = [a2 createResolutionTokenMapIfNecessary];
      v142 = [v23 getTokenKeys];
      v143 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v289 = *(v143 + 16);
      if (!v289)
      {
LABEL_94:
        a5, v144, v145, v146, v147, v148, v149, v150;
        v143, v271, v272, v273, v274, v275, v276, v277;

        return;
      }

      v280 = a4;
      a4 = 0;
      v288 = v143 + 32;
      v278 = 0x80000001007E8D70;
      v290 = &a5->clientIdentity[40];
      v285 = v143;
      while (a4 < *(v143 + 16))
      {
        v151 = (v288 + 16 * a4);
        v152 = *v151;
        a6 = v151[1];
        swift_bridgeObjectRetain_n();
        v153 = sub_10027D52C(v152, a6);
        if (v153 == 17)
        {
          v154._countAndFlagsBits = v152;
          v154._object = a6;
          if (_findStringSwitchCase(cases:string:)(&off_1008DDF10, v154))
          {
            if (qword_100936300 != -1)
            {
              swift_once();
            }

            v162 = type metadata accessor for Logger();
            sub_100006654(v162, qword_10094A590);
            v163 = v284;

            v164 = Logger.logObject.getter();
            v165 = static os_log_type_t.error.getter();

            a6, v166, v167, v168, v169, v170, v171, v172;
            if (os_log_type_enabled(v164, v165))
            {
              v180 = swift_slowAlloc();
              v291 = swift_slowAlloc();
              *v180 = 136446722;
              v181 = sub_10000668C(v152, a6, &v291);
              a6, v182, v183, v184, v185, v186, v187, v188;
              *(v180 + 4) = v181;
              a6 = 2082;
              *(v180 + 12) = 2082;
              v189 = CKRecord.recordType.getter();
              v191 = v190;
              v192 = sub_10000668C(v189, v190, &v291);
              v191, v193, v194, v195, v196, v197, v198, v199;
              *(v180 + 14) = v192;
              *(v180 + 22) = 2082;
              v293[0] = &_s6FieldsON_1;
              sub_1000F5104(&qword_10094A660, &qword_1007AE910);
              v200 = String.init<A>(reflecting:)();
              v202 = v201;
              v203 = sub_10000668C(v200, v201, &v291);
              v202, v204, v205, v206, v207, v208, v209, v210;
              *(v180 + 24) = v203;
              _os_log_impl(&_mh_execute_header, v164, v165, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v180, 0x20u);
              swift_arrayDestroy();

              a2 = v279;
            }

            else
            {
              a6, v173, v174, v175, v176, v177, v178, v179;
            }

            a3 = v283;
            v23 = v287;
            v143 = v285;
          }

          else
          {
            a6, v155, v156, v157, v158, v159, v160, v161;
          }
        }

        else
        {
          LOBYTE(v293[0]) = v153;
          if ([a2 shouldPerformCloudSchemaCatchUpSync])
          {
            v219 = 0xEB000000006D656CLL;
            v220 = 0x626D456567646162;
            switch(v218)
            {
              case 1:
                v219 = 0xE500000000000000;
                v220 = 0x726F6C6F63;
                if (*a5->clientIdentity)
                {
                  goto LABEL_72;
                }

                goto LABEL_80;
              case 2:
                v220 = 0x6E6F697461657263;
                v221 = 1702125892;
                goto LABEL_58;
              case 3:
                v220 = 0xD000000000000010;
                v219 = 0x80000001007E8D70;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 4:
                v220 = 0xD000000000000026;
                v219 = 0x80000001007E8C90;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 5:
                v220 = 0xD000000000000028;
                v219 = 0x80000001007E8CC0;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 6:
                v220 = 0xD000000000000025;
                v219 = 0x80000001007E8D90;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 7:
                v219 = 0xE400000000000000;
                v220 = 1701667182;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 8:
                v220 = 0x6341746E65726170;
                v219 = 0xED0000746E756F63;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 9:
                v220 = 0xD00000000000001BLL;
                v219 = 0x80000001007E8DC0;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 10:
                v220 = 0xD000000000000016;
                v219 = 0x80000001007E8DE0;
                goto LABEL_71;
              case 11:
                v220 = 0xD000000000000018;
                v219 = 0x80000001007E8BF0;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 12:
                v220 = 0xD00000000000001ALL;
                v219 = 0x80000001007E8E00;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 13:
                v220 = 0xD000000000000011;
                v219 = 0x80000001007E8BC0;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 14:
                v220 = 0xD000000000000018;
                v219 = 0x80000001007E8D20;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 15:
                v220 = 0x53676E6974726F73;
                v221 = 1701607796;
LABEL_58:
                v219 = (v221 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 16:
                v220 = 0x694C656372756F73;
                v219 = 0xEF4C525544497473;
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              default:
LABEL_71:
                if (!*a5->clientIdentity)
                {
                  goto LABEL_80;
                }

LABEL_72:
                Hasher.init(_seed:)();
                String.hash(into:)();
                v222 = Hasher._finalize()();
                v223 = -1 << a5->clientIdentity[16];
                v224 = v222 & ~v223;
                if (((*&v290[(v224 >> 3) & 0xFFFFFFFFFFFFFF8] >> v224) & 1) == 0)
                {
                  goto LABEL_80;
                }

                v225 = ~v223;
                break;
            }

            while (1)
            {
              v226 = (*&a5->clientIdentity[32] + 16 * v224);
              v211 = v226[1];
              v227 = *v226 == v220 && v211 == v219;
              if (v227 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v224 = (v224 + 1) & v225;
              if (((*&v290[(v224 >> 3) & 0xFFFFFFFFFFFFFF8] >> v224) & 1) == 0)
              {
LABEL_80:
                v219, v211, v212, v213, v214, v215, v216, v217;
                v23 = v287;
                v143 = v285;
                goto LABEL_81;
              }
            }

            v219, v211, v212, v213, v214, v215, v216, v217;
            if (qword_100936300 != -1)
            {
              swift_once();
            }

            v237 = type metadata accessor for Logger();
            sub_100006654(v237, qword_10094A590);

            v238 = a2;
            v239 = Logger.logObject.getter();
            v240 = static os_log_type_t.default.getter();

            a6, v241, v242, v243, v244, v245, v246, v247;
            if (os_log_type_enabled(v239, v240))
            {
              v248 = swift_slowAlloc();
              v291 = swift_slowAlloc();
              *v248 = 136446466;
              *(v248 + 4) = sub_10000668C(v152, a6, &v291);
              *(v248 + 12) = 2082;
              v249 = [v238 remObjectID];
              if (v249)
              {
                v250 = v249;
                v251 = [v249 description];

                v252 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v254 = v253;
              }

              else
              {
                v254 = 0xE300000000000000;
                v252 = 7104878;
              }

              v255 = sub_10000668C(v252, v254, &v291);
              v254, v256, v257, v258, v259, v260, v261, v262;
              *(v248 + 14) = v255;
              _os_log_impl(&_mh_execute_header, v239, v240, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v248, 0x16u);
              swift_arrayDestroy();

              a2 = v279;
              a3 = v283;
            }

            else
            {
            }

            v143 = v285;
            sub_100274408(v293, a3, v280, v281, v282);
            v263 = String._bridgeToObjectiveC()();
            a6, v264, v265, v266, v267, v268, v269, v270;
            v23 = v287;
            [v286 forceMergeFromMap:v287 forKey:v263];
          }

          else
          {
LABEL_81:
            v228 = String._bridgeToObjectiveC()();
            a6, v229, v230, v231, v232, v233, v234, v235;
            v236 = [v286 compareAndMergeWithMap:v23 forKey:v228];

            if (v236 == -1)
            {
              sub_100274408(v293, a3, v280, v281, v282);
            }
          }
        }

        if (++a4 == v289)
        {
          goto LABEL_94;
        }
      }

      __break(1u);
LABEL_98:
      swift_once();
LABEL_15:
      v66 = type metadata accessor for Logger();
      sub_100006654(v66, qword_10094A590);
      v67 = v284;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = a4;
        v291 = swift_slowAlloc();
        *v38 = 136446466;
        v68 = CKRecord.recordType.getter();
        v70 = v69;
        v71 = sub_10000668C(v68, v69, &v291);
        v70, v72, v73, v74, v75, v76, v77, v78;
        *(v38 + 4) = v71;
        *(v38 + 12) = 2082;
        v79 = [v67 recordID];
        v80 = [v79 ckShortDescription];

        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v83 = v82;

        v84 = sub_10000668C(v81, v83, &v291);
        v85 = v83;
        a2 = v279;
        v85, v86, v87, v88, v89, v90, v91, v92;
        *(v38 + 14) = v84;
        v65 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }
    }

LABEL_26:
    a5 = _swiftEmptySetSingleton;
    goto LABEL_27;
  }

  for (i = 0; i != 17; ++i)
  {
    v22 = *(&off_1008DDD20 + i + 32);
    LOBYTE(v291) = v22;
    sub_100274408(&v291, a3, a4, a5, a6);
  }
}

uint64_t sub_1004E4464(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v45 = a4;
  v8 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  *&v21 = __chkstk_darwin(v19, v20).n128_u64[0];
  v44 = &v43 - v22;
  if (a6)
  {
    v23 = [a1 encryptedValues];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 objectForKeyedSubscript:v24];
    swift_unknownObjectRelease();

    v47 = v25;
  }

  else
  {
    v47 = CKRecord.subscript.getter();
  }

  sub_1000F5104(&qword_100944EF0, &unk_1007AE8D0);
  if (swift_dynamicCast())
  {
    return v46;
  }

  if (!CKRecord.subscript.getter())
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
LABEL_11:
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_14:
    sub_1000050A4(v15, &unk_1009441F0, &qword_100795760);
    return 0;
  }

  v28 = [v27 fileURL];
  swift_unknownObjectRelease();
  if (v28)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v17 + 56))(v11, v29, 1, v16);
  sub_100031B58(v11, v15, &unk_1009441F0, &qword_100795760);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_14;
  }

  v30 = v44;
  (*(v17 + 32))(v44, v15, v16);
  v31 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v33 = v32;
  v34 = String._bridgeToObjectiveC()();
  v33, v35, v36, v37, v38, v39, v40, v41;
  LODWORD(v33) = [v31 fileExistsAtPath:v34];

  if (!v33)
  {
    (*(v17 + 8))(v30, v16);
    return 0;
  }

  v42 = String.init(contentsOf:)();
  (*(v17 + 8))(v30, v16);
  return v42;
}

void sub_1004E4AD0(void *a1, char a2, char a3, void *a4, NSObject *a5, NSObject *a6, _BYTE *a7, _TtC7remindd19RDXPCStorePerformer *a8)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v331 = a1;
  CKRecordKeyValueSetting.subscript.getter();
  v15, v16, v17, v18, v19, v20, v21, v22;
  if ((v340 & 1) != 0 || v339 != 1)
  {
    v333 = sub_1004D9000(a1, 0);
    v326 = a6;
    v327 = a7;
    v325 = a5;
    if (v25)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
      CKRecordKeyValueSetting.subscript.getter();
      v27, v28, v29, v30, v31, v32, v33, v34;
      if ((v340 & 1) != 0 || v339 != 1 || ![a4 markedForDeletion])
      {
        if (qword_100936300 != -1)
        {
          goto LABEL_83;
        }

        goto LABEL_15;
      }

      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100006654(v35, qword_10094A590);
      v36 = a1;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v339 = swift_slowAlloc();
        *v39 = 136446466;
        v40 = CKRecord.recordType.getter();
        v42 = v41;
        v43 = sub_10000668C(v40, v41, &v339);
        v42, v44, v45, v46, v47, v48, v49, v50;
        *(v39 + 4) = v43;
        *(v39 + 12) = 2082;
        v51 = [v36 recordID];
        v52 = [v51 ckShortDescription];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v56 = sub_10000668C(v53, v55, &v339);
        v55, v57, v58, v59, v60, v61, v62, v63;
        *(v39 + 14) = v56;
        v64 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }

LABEL_18:
    }

    v91 = v333;
    v328 = a8;
    if ([a4 shouldPerformCloudSchemaCatchUpSync])
    {
      v92 = [a4 storeControllerManagedObjectContext];
      if (v92)
      {
        v93 = v92;
        v94 = [a4 accountCKIdentifier];
        if (v94)
        {
          v95 = v94;
          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v98 = v97;

          v99 = [v93 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v100 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v100 + 16))
          {
            v108 = sub_100005F4C(v96, v98);
            v110 = v109;
            v98, v109, v111, v112, v113, v114, v115, v116;
            if (v110)
            {
              v124 = *(*(v100 + 56) + 8 * v108);
              v100, v125, v126, v127, v128, v129, v130, v131;
              v132 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a4 persistenceCloudSchemaVersion:{objc_msgSend(v124, "persistenceCloudSchemaVersion")}];
              v133 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              a8 = sub_1001A5660(v133);
              v133, v134, v135, v136, v137, v138, v139, v140;
LABEL_29:
              v335 = [a4 createResolutionTokenMapIfNecessary];
              v141 = [v333 getTokenKeys];
              v142 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v337 = *(v142 + 16);
              if (!v337)
              {
LABEL_81:
                a8, v143, v144, v145, v146, v147, v148, v149;
                v142, v317, v318, v319, v320, v321, v322, v323;

                return;
              }

              v151 = 0;
              v336 = v142 + 32;
              v338 = &a8->clientIdentity[40];
              *&v150 = 136446466;
              v324 = v150;
              v330 = a4;
              v334 = v142;
              while (1)
              {
                if (v151 >= *(v142 + 16))
                {
                  __break(1u);
LABEL_83:
                  swift_once();
LABEL_15:
                  v65 = type metadata accessor for Logger();
                  sub_100006654(v65, qword_10094A590);
                  v66 = v331;
                  v37 = Logger.logObject.getter();
                  v38 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v37, v38))
                  {
                    v39 = swift_slowAlloc();
                    v339 = swift_slowAlloc();
                    *v39 = 136446466;
                    v67 = CKRecord.recordType.getter();
                    v69 = v68;
                    v70 = sub_10000668C(v67, v68, &v339);
                    v69, v71, v72, v73, v74, v75, v76, v77;
                    *(v39 + 4) = v70;
                    *(v39 + 12) = 2082;
                    v78 = [v66 recordID];
                    v79 = [v78 ckShortDescription];

                    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v82 = v81;

                    v83 = sub_10000668C(v80, v82, &v339);
                    v82, v84, v85, v86, v87, v88, v89, v90;
                    *(v39 + 14) = v83;
                    v64 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_17:
                    _os_log_impl(&_mh_execute_header, v37, v38, v64, v39, 0x16u);
                    swift_arrayDestroy();
                  }

                  goto LABEL_18;
                }

                v152 = (v336 + 16 * v151);
                v153 = *v152;
                v154 = v152[1];
                swift_bridgeObjectRetain_n();
                v155 = sub_100392D78(v153, v154);
                if (v155 == 22)
                {
                  break;
                }

                v213 = v155;
                v341[0] = v155;
                if ([a4 shouldPerformCloudSchemaCatchUpSync])
                {
                  v214 = sub_10035692C(v213);
                  v222 = v215;
                  if (*a8->clientIdentity)
                  {
                    v223 = v214;
                    Hasher.init(_seed:)();
                    String.hash(into:)();
                    v224 = Hasher._finalize()();
                    v225 = -1 << a8->clientIdentity[16];
                    v226 = v224 & ~v225;
                    if ((*&v338[(v226 >> 3) & 0xFFFFFFFFFFFFFF8] >> v226))
                    {
                      v227 = ~v225;
                      while (1)
                      {
                        v228 = (*&a8->clientIdentity[32] + 16 * v226);
                        v215 = v228[1];
                        v229 = *v228 == v223 && v215 == v222;
                        if (v229 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v226 = (v226 + 1) & v227;
                        if (((*&v338[(v226 >> 3) & 0xFFFFFFFFFFFFFF8] >> v226) & 1) == 0)
                        {
                          goto LABEL_51;
                        }
                      }

                      v222, v215, v216, v217, v218, v219, v220, v221;
                      if (qword_100936300 != -1)
                      {
                        swift_once();
                      }

                      v265 = type metadata accessor for Logger();
                      sub_100006654(v265, qword_10094A590);

                      v266 = a4;
                      v267 = Logger.logObject.getter();
                      v268 = static os_log_type_t.default.getter();

                      v154, v269, v270, v271, v272, v273, v274, v275;
                      v91 = v333;
                      if (os_log_type_enabled(v267, v268))
                      {
                        v276 = swift_slowAlloc();
                        v339 = swift_slowAlloc();
                        *v276 = v324;
                        *(v276 + 4) = sub_10000668C(v153, v154, &v339);
                        *(v276 + 12) = 2082;
                        v277 = [v266 remObjectID];
                        if (v277)
                        {
                          v278 = v277;
                          v279 = [v277 description];

                          v280 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v282 = v281;
                        }

                        else
                        {
                          v282 = 0xE300000000000000;
                          v280 = 7104878;
                        }

                        v301 = sub_10000668C(v280, v282, &v339);
                        v282, v302, v303, v304, v305, v306, v307, v308;
                        *(v276 + 14) = v301;
                        _os_log_impl(&_mh_execute_header, v267, v268, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v276, 0x16u);
                        swift_arrayDestroy();

                        a4 = v330;
                        v91 = v333;
                      }

                      else
                      {
                      }

                      v142 = v334;
                      sub_100358E3C(v341, v325, v326, v327, v328);
                      v309 = String._bridgeToObjectiveC()();
                      v154, v310, v311, v312, v313, v314, v315, v316;
                      [v335 forceMergeFromMap:v91 forKey:v309];

                      goto LABEL_33;
                    }
                  }

LABEL_51:
                  v222, v215, v216, v217, v218, v219, v220, v221;
                  v91 = v333;
                  v142 = v334;
                }

                v230 = String._bridgeToObjectiveC()();
                v154, v231, v232, v233, v234, v235, v236, v237;
                v238 = [v335 compareAndMergeWithMap:v91 forKey:v230];

                if (a3)
                {
                  if (sub_10035692C(v213) == 0x6341746E65726170 && v157 == 0xED0000746E756F63)
                  {
                    goto LABEL_55;
                  }

                  v240 = v157;
                  v241 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v240, v242, v243, v244, v245, v246, v247, v248;
                  if (v241)
                  {
                    goto LABEL_33;
                  }

                  if (sub_10035692C(v213) == 0x694C746E65726170 && v157 == 0xEA00000000007473)
                  {
LABEL_55:
                    v239 = v157;
LABEL_57:
                    v239, v157, v158, v159, v160, v161, v162, v163;
                    goto LABEL_33;
                  }

                  v249 = v157;
                  v250 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v249, v251, v252, v253, v254, v255, v256, v257;
                  if (v250)
                  {
                    goto LABEL_33;
                  }
                }

                if (a2)
                {
                  if (sub_10035692C(v213) == 0x6341746E65726170 && v258 == 0xED0000746E756F63)
                  {
                    goto LABEL_65;
                  }

                  v283 = v258;
                  v284 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v283, v285, v286, v287, v288, v289, v290, v291;
                  if (v284)
                  {
                    goto LABEL_76;
                  }

                  if (sub_10035692C(v213) == 0x694C746E65726170 && v258 == 0xEA00000000007473)
                  {
LABEL_65:
                    v258, v258, v259, v260, v261, v262, v263, v264;
LABEL_76:
                    sub_100358E3C(v341, v325, v326, v327, v328);
                    goto LABEL_33;
                  }

                  v292 = v258;
                  v293 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v292, v294, v295, v296, v297, v298, v299, v300;
                  if (v293)
                  {
                    goto LABEL_76;
                  }
                }

                if (v238 == -1)
                {
                  goto LABEL_76;
                }

LABEL_33:
                if (++v151 == v337)
                {
                  goto LABEL_81;
                }
              }

              v156._countAndFlagsBits = v153;
              v156._object = v154;
              if (_findStringSwitchCase(cases:string:)(&off_1008DE200, v156))
              {
                if (qword_100936300 != -1)
                {
                  swift_once();
                }

                v164 = type metadata accessor for Logger();
                sub_100006654(v164, qword_10094A590);
                v165 = v331;

                v166 = Logger.logObject.getter();
                v167 = static os_log_type_t.error.getter();

                v154, v168, v169, v170, v171, v172, v173, v174;
                if (os_log_type_enabled(v166, v167))
                {
                  v182 = swift_slowAlloc();
                  v339 = swift_slowAlloc();
                  *v182 = 136446722;
                  v183 = sub_10000668C(v153, v154, &v339);
                  v154, v184, v185, v186, v187, v188, v189, v190;
                  *(v182 + 4) = v183;
                  *(v182 + 12) = 2082;
                  v191 = CKRecord.recordType.getter();
                  v193 = v192;
                  v194 = sub_10000668C(v191, v192, &v339);
                  v193, v195, v196, v197, v198, v199, v200, v201;
                  *(v182 + 14) = v194;
                  *(v182 + 22) = 2082;
                  *v341 = &_s6FieldsON_2;
                  sub_1000F5104(&qword_10094A658, &qword_1007AE908);
                  v202 = String.init<A>(reflecting:)();
                  v204 = v203;
                  v205 = sub_10000668C(v202, v203, &v339);
                  v204, v206, v207, v208, v209, v210, v211, v212;
                  *(v182 + 24) = v205;
                  _os_log_impl(&_mh_execute_header, v166, v167, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v182, 0x20u);
                  swift_arrayDestroy();

                  v91 = v333;
                }

                else
                {
                  v154, v175, v176, v177, v178, v179, v180, v181;
                }

                a4 = v330;
                v142 = v334;
                goto LABEL_33;
              }

              v239 = v154;
              goto LABEL_57;
            }
          }

          else
          {
            v98, v101, v102, v103, v104, v105, v106, v107;
          }

          v100, v117, v118, v119, v120, v121, v122, v123;
        }
      }
    }

    a8 = _swiftEmptySetSingleton;
    goto LABEL_29;
  }

  for (i = 0; i != 22; ++i)
  {
    v24 = *(&off_1008DDF48 + i + 32);
    LOBYTE(v339) = v24;
    sub_100358E3C(&v339, a5, a6, a7, a8);
  }
}

void sub_1004E5918(void *a1, char a2, char a3, void *a4, void *a5, void *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), _TtC7remindd19RDXPCStorePerformer *a8)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v332 = a1;
  CKRecordKeyValueSetting.subscript.getter();
  v15, v16, v17, v18, v19, v20, v21, v22;
  if ((v340 & 1) != 0 || v339 != 1)
  {
    v334 = sub_1004DA158(a1, 0);
    v327 = a6;
    v328 = a7;
    v326 = a5;
    if (v25)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
      CKRecordKeyValueSetting.subscript.getter();
      v27, v28, v29, v30, v31, v32, v33, v34;
      if ((v340 & 1) != 0 || v339 != 1 || ![a4 markedForDeletion])
      {
        if (qword_100936300 != -1)
        {
          goto LABEL_86;
        }

        goto LABEL_15;
      }

      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100006654(v35, qword_10094A590);
      v36 = a1;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v339 = swift_slowAlloc();
        *v39 = 136446466;
        v40 = CKRecord.recordType.getter();
        v42 = v41;
        v43 = sub_10000668C(v40, v41, &v339);
        v42, v44, v45, v46, v47, v48, v49, v50;
        *(v39 + 4) = v43;
        *(v39 + 12) = 2082;
        v51 = [v36 recordID];
        v52 = [v51 ckShortDescription];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v56 = sub_10000668C(v53, v55, &v339);
        v55, v57, v58, v59, v60, v61, v62, v63;
        *(v39 + 14) = v56;
        v64 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }

LABEL_18:
    }

    v91 = v334;
    v329 = a8;
    if ([a4 shouldPerformCloudSchemaCatchUpSync])
    {
      v92 = [a4 storeControllerManagedObjectContext];
      if (v92)
      {
        v93 = v92;
        v94 = [a4 accountCKIdentifier];
        if (v94)
        {
          v95 = v94;
          v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v98 = v97;

          v99 = [v93 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v100 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v100 + 16))
          {
            v108 = sub_100005F4C(v96, v98);
            v110 = v109;
            v98, v109, v111, v112, v113, v114, v115, v116;
            if (v110)
            {
              v124 = *(*(v100 + 56) + 8 * v108);
              v100, v125, v126, v127, v128, v129, v130, v131;
              v132 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a4 persistenceCloudSchemaVersion:{objc_msgSend(v124, "persistenceCloudSchemaVersion")}];
              v133 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              a8 = sub_1001A5660(v133);
              v133, v134, v135, v136, v137, v138, v139, v140;
LABEL_29:
              v335 = [a4 createResolutionTokenMapIfNecessary];
              v141 = [v334 getTokenKeys];
              v142 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v337 = *(v142 + 16);
              if (!v337)
              {
LABEL_84:
                a8, v143, v144, v145, v146, v147, v148, v149;
                v142, v317, v318, v319, v320, v321, v322, v323;

                return;
              }

              v151 = 0;
              v336 = v142 + 32;
              v338 = &a8->clientIdentity[40];
              *&v150 = 136446466;
              v324 = v150;
              v330 = a4;
              v331 = v142;
              while (1)
              {
                if (v151 >= *(v142 + 16))
                {
                  __break(1u);
LABEL_86:
                  swift_once();
LABEL_15:
                  v65 = type metadata accessor for Logger();
                  sub_100006654(v65, qword_10094A590);
                  v66 = v332;
                  v37 = Logger.logObject.getter();
                  v38 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v37, v38))
                  {
                    v39 = swift_slowAlloc();
                    v339 = swift_slowAlloc();
                    *v39 = 136446466;
                    v67 = CKRecord.recordType.getter();
                    v69 = v68;
                    v70 = sub_10000668C(v67, v68, &v339);
                    v69, v71, v72, v73, v74, v75, v76, v77;
                    *(v39 + 4) = v70;
                    *(v39 + 12) = 2082;
                    v78 = [v66 recordID];
                    v79 = [v78 ckShortDescription];

                    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v82 = v81;

                    v83 = sub_10000668C(v80, v82, &v339);
                    v82, v84, v85, v86, v87, v88, v89, v90;
                    *(v39 + 14) = v83;
                    v64 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_17:
                    _os_log_impl(&_mh_execute_header, v37, v38, v64, v39, 0x16u);
                    swift_arrayDestroy();
                  }

                  goto LABEL_18;
                }

                v152 = (v336 + 16 * v151);
                v153 = *v152;
                v154 = v152[1];
                swift_bridgeObjectRetain_n();
                v155 = sub_1003A991C(v153, v154);
                if (v155 == 29)
                {
                  break;
                }

                v213 = v155;
                v341[0] = v155;
                if ([a4 shouldPerformCloudSchemaCatchUpSync])
                {
                  v214 = sub_100395898(v213);
                  v222 = v215;
                  if (*a8->clientIdentity)
                  {
                    v223 = v214;
                    Hasher.init(_seed:)();
                    String.hash(into:)();
                    v224 = Hasher._finalize()();
                    v225 = -1 << a8->clientIdentity[16];
                    v226 = v224 & ~v225;
                    if ((*&v338[(v226 >> 3) & 0xFFFFFFFFFFFFFF8] >> v226))
                    {
                      v227 = ~v225;
                      while (1)
                      {
                        v228 = (*&a8->clientIdentity[32] + 16 * v226);
                        v215 = v228[1];
                        v229 = *v228 == v223 && v215 == v222;
                        if (v229 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v226 = (v226 + 1) & v227;
                        if (((*&v338[(v226 >> 3) & 0xFFFFFFFFFFFFFF8] >> v226) & 1) == 0)
                        {
                          goto LABEL_51;
                        }
                      }

                      v222, v215, v216, v217, v218, v219, v220, v221;
                      if (qword_100936300 != -1)
                      {
                        swift_once();
                      }

                      v265 = type metadata accessor for Logger();
                      sub_100006654(v265, qword_10094A590);

                      v266 = a4;
                      v267 = Logger.logObject.getter();
                      v268 = static os_log_type_t.default.getter();

                      v154, v269, v270, v271, v272, v273, v274, v275;
                      v142 = v331;
                      if (os_log_type_enabled(v267, v268))
                      {
                        v276 = swift_slowAlloc();
                        v339 = swift_slowAlloc();
                        *v276 = v324;
                        *(v276 + 4) = sub_10000668C(v153, v154, &v339);
                        *(v276 + 12) = 2082;
                        v277 = [v266 remObjectID];
                        if (v277)
                        {
                          v278 = v277;
                          v279 = [v277 description];

                          v280 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v282 = v281;
                        }

                        else
                        {
                          v282 = 0xE300000000000000;
                          v280 = 7104878;
                        }

                        v301 = sub_10000668C(v280, v282, &v339);
                        v282, v302, v303, v304, v305, v306, v307, v308;
                        *(v276 + 14) = v301;
                        _os_log_impl(&_mh_execute_header, v267, v268, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v276, 0x16u);
                        swift_arrayDestroy();

                        a4 = v330;
                        v142 = v331;
                      }

                      else
                      {
                      }

                      sub_100397ED0(v341, v326, v327, v328, v329);
                      v309 = String._bridgeToObjectiveC()();
                      v154, v310, v311, v312, v313, v314, v315, v316;
                      v91 = v334;
                      [v335 forceMergeFromMap:v334 forKey:v309];

                      goto LABEL_33;
                    }
                  }

LABEL_51:
                  v222, v215, v216, v217, v218, v219, v220, v221;
                  v91 = v334;
                  v142 = v331;
                }

                v230 = String._bridgeToObjectiveC()();
                v154, v231, v232, v233, v234, v235, v236, v237;
                v238 = [v335 compareAndMergeWithMap:v91 forKey:v230];

                if ((a3 & 1) == 0)
                {
LABEL_62:
                  if (a2)
                  {
                    if (sub_100395898(v213) == 1953720684 && v258 == 0xE400000000000000)
                    {
LABEL_65:
                      v258, v258, v259, v260, v261, v262, v263, v264;
                      goto LABEL_79;
                    }

                    v283 = v258;
                    v284 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v283, v285, v286, v287, v288, v289, v290, v291;
                    if (v284)
                    {
                      goto LABEL_79;
                    }

                    if (sub_100395898(v213) == 0x6552746E65726170 && v258 == 0xEE007265646E696DLL)
                    {
                      goto LABEL_65;
                    }

                    v292 = v258;
                    v293 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v292, v294, v295, v296, v297, v298, v299, v300;
                    if (v293)
                    {
LABEL_79:
                      sub_100397ED0(v341, v326, v327, v328, v329);
                      goto LABEL_33;
                    }
                  }

                  if ((!sub_10018F88C(v213, &off_1008DE588) || !v238) && (sub_10018F88C(v213, &off_1008DE5B0) || v238 != -1))
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_79;
                }

                if (sub_100395898(v213) == 1953720684 && v157 == 0xE400000000000000)
                {
                  goto LABEL_55;
                }

                v240 = v157;
                v241 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v240, v242, v243, v244, v245, v246, v247, v248;
                if (v241)
                {
                  goto LABEL_33;
                }

                if (sub_100395898(v213) == 0x6552746E65726170 && v157 == 0xEE007265646E696DLL)
                {
LABEL_55:
                  v239 = v157;
LABEL_57:
                  v239, v157, v158, v159, v160, v161, v162, v163;
                  goto LABEL_33;
                }

                v249 = v157;
                v250 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v249, v251, v252, v253, v254, v255, v256, v257;
                if ((v250 & 1) == 0)
                {
                  goto LABEL_62;
                }

LABEL_33:
                if (++v151 == v337)
                {
                  goto LABEL_84;
                }
              }

              v156._countAndFlagsBits = v153;
              v156._object = v154;
              if (_findStringSwitchCase(cases:string:)(&off_1008DE550, v156))
              {
                if (qword_100936300 != -1)
                {
                  swift_once();
                }

                v164 = type metadata accessor for Logger();
                sub_100006654(v164, qword_10094A590);
                v165 = v332;

                v166 = Logger.logObject.getter();
                v167 = static os_log_type_t.error.getter();

                v154, v168, v169, v170, v171, v172, v173, v174;
                if (os_log_type_enabled(v166, v167))
                {
                  v182 = swift_slowAlloc();
                  v339 = swift_slowAlloc();
                  *v182 = 136446722;
                  v183 = sub_10000668C(v153, v154, &v339);
                  v154, v184, v185, v186, v187, v188, v189, v190;
                  *(v182 + 4) = v183;
                  *(v182 + 12) = 2082;
                  v191 = CKRecord.recordType.getter();
                  v193 = v192;
                  v194 = sub_10000668C(v191, v192, &v339);
                  v193, v195, v196, v197, v198, v199, v200, v201;
                  *(v182 + 14) = v194;
                  *(v182 + 22) = 2082;
                  *v341 = &_s6FieldsON_3;
                  sub_1000F5104(&qword_10094A650, &qword_1007AE900);
                  v202 = String.init<A>(reflecting:)();
                  v204 = v203;
                  v205 = sub_10000668C(v202, v203, &v339);
                  v204, v206, v207, v208, v209, v210, v211, v212;
                  *(v182 + 24) = v205;
                  _os_log_impl(&_mh_execute_header, v166, v167, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v182, 0x20u);
                  swift_arrayDestroy();
                  v91 = v334;

                  v142 = v331;
                }

                else
                {
                  v154, v175, v176, v177, v178, v179, v180, v181;
                }

                a4 = v330;
                goto LABEL_33;
              }

              v239 = v154;
              goto LABEL_57;
            }
          }

          else
          {
            v98, v101, v102, v103, v104, v105, v106, v107;
          }

          v100, v117, v118, v119, v120, v121, v122, v123;
        }
      }
    }

    a8 = _swiftEmptySetSingleton;
    goto LABEL_29;
  }

  for (i = 0; i != 29; ++i)
  {
    v24 = *(&off_1008DE238 + i + 32);
    LOBYTE(v339) = v24;
    sub_100397ED0(&v339, a5, a6, a7, a8);
  }
}

void sub_1004E6754(void *a1, void *a2, void *a3, void *a4)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v280 = a1;
  CKRecordKeyValueSetting.subscript.getter();
  v7, v8, v9, v10, v11, v12, v13, v14;
  if ((v286 & 1) != 0 || v285 != 1)
  {
    v16 = sub_1004DA878(a1, 0);
    if (v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
      CKRecordKeyValueSetting.subscript.getter();
      v19, v20, v21, v22, v23, v24, v25, v26;
      if ((v286 & 1) != 0 || v285 != 1 || ![a2 markedForDeletion])
      {
        if (qword_100936300 != -1)
        {
          goto LABEL_81;
        }

        goto LABEL_15;
      }

      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006654(v27, qword_10094A590);
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v285 = swift_slowAlloc();
        *v31 = 136446466;
        v32 = CKRecord.recordType.getter();
        v34 = v33;
        v35 = sub_10000668C(v32, v33, &v285);
        v34, v36, v37, v38, v39, v40, v41, v42;
        *(v31 + 4) = v35;
        *(v31 + 12) = 2082;
        v43 = [v28 recordID];
        v44 = [v43 ckShortDescription];

        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_10000668C(v45, v47, &v285);
        v47, v49, v50, v51, v52, v53, v54, v55;
        *(v31 + 14) = v48;
        v56 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }

LABEL_18:
    }

    if ([a2 shouldPerformCloudSchemaCatchUpSync])
    {
      v83 = [a2 storeControllerManagedObjectContext];
      if (v83)
      {
        v84 = v83;
        v85 = [a2 accountCKIdentifier];
        if (v85)
        {
          v86 = v85;
          v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = v88;

          v90 = [v84 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v91 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v91 + 16))
          {
            v99 = sub_100005F4C(v87, v89);
            v101 = v100;
            v89, v100, v102, v103, v104, v105, v106, v107;
            if (v101)
            {
              v115 = *(*(v91 + 56) + 8 * v99);
              v91, v116, v117, v118, v119, v120, v121, v122;
              v123 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a2 persistenceCloudSchemaVersion:{objc_msgSend(v115, "persistenceCloudSchemaVersion")}];
              v124 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v125 = sub_1001A5660(v124);
              v124, v126, v127, v128, v129, v130, v131, v132;
LABEL_35:
              v281 = [a2 createResolutionTokenMapIfNecessary];
              v135 = [v16 getTokenKeys];
              v136 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v283 = *(v136 + 16);
              if (!v283)
              {
LABEL_79:
                v125, v137, v138, v139, v140, v141, v142, v143;
                v136, v267, v268, v269, v270, v271, v272, v273;

                return;
              }

              v145 = 0;
              v282 = v136 + 32;
              v284 = &v125->clientIdentity[40];
              *&v144 = 136446466;
              v274 = v144;
              v275 = a2;
              v278 = v16;
              v279 = v136;
              while (1)
              {
                if (v145 >= *(v136 + 16))
                {
                  __break(1u);
LABEL_81:
                  swift_once();
LABEL_15:
                  v57 = type metadata accessor for Logger();
                  sub_100006654(v57, qword_10094A590);
                  v58 = v280;
                  v29 = Logger.logObject.getter();
                  v30 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v29, v30))
                  {
                    v31 = swift_slowAlloc();
                    v285 = swift_slowAlloc();
                    *v31 = 136446466;
                    v59 = CKRecord.recordType.getter();
                    v61 = v60;
                    v62 = sub_10000668C(v59, v60, &v285);
                    v61, v63, v64, v65, v66, v67, v68, v69;
                    *(v31 + 4) = v62;
                    *(v31 + 12) = 2082;
                    v70 = [v58 recordID];
                    v71 = [v70 ckShortDescription];

                    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v74 = v73;

                    v75 = sub_10000668C(v72, v74, &v285);
                    v74, v76, v77, v78, v79, v80, v81, v82;
                    *(v31 + 14) = v75;
                    v56 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_17:
                    _os_log_impl(&_mh_execute_header, v29, v30, v56, v31, 0x16u);
                    swift_arrayDestroy();
                  }

                  goto LABEL_18;
                }

                v146 = (v282 + 16 * v145);
                v147 = *v146;
                v148 = v146[1];

                v149._countAndFlagsBits = v147;
                v149._object = v148;
                v150 = _findStringSwitchCase(cases:string:)(&off_1008DE628, v149);
                if (v150 > 2)
                {
                  v161._countAndFlagsBits = v147;
                  v161._object = v148;
                  if (_findStringSwitchCase(cases:string:)(&off_1008DE690, v161))
                  {
                    if (qword_100936300 != -1)
                    {
                      swift_once();
                    }

                    v169 = type metadata accessor for Logger();
                    sub_100006654(v169, qword_10094A590);
                    v170 = v280;

                    v171 = Logger.logObject.getter();
                    v172 = static os_log_type_t.error.getter();

                    v148, v173, v174, v175, v176, v177, v178, v179;
                    if (os_log_type_enabled(v171, v172))
                    {
                      v187 = swift_slowAlloc();
                      v285 = swift_slowAlloc();
                      *v187 = 136446722;
                      v188 = sub_10000668C(v147, v148, &v285);
                      v148, v189, v190, v191, v192, v193, v194, v195;
                      *(v187 + 4) = v188;
                      *(v187 + 12) = 2082;
                      v196 = CKRecord.recordType.getter();
                      v198 = v197;
                      v199 = sub_10000668C(v196, v197, &v285);
                      v198, v200, v201, v202, v203, v204, v205, v206;
                      *(v187 + 14) = v199;
                      *(v187 + 22) = 2082;
                      v287[0] = &_s6FieldsON_4;
                      sub_1000F5104(&unk_10094A640, &qword_1007AE8F8);
                      v207 = String.init<A>(reflecting:)();
                      v209 = v208;
                      v210 = sub_10000668C(v207, v208, &v285);
                      v209, v211, v212, v213, v214, v215, v216, v217;
                      *(v187 + 24) = v210;
                      _os_log_impl(&_mh_execute_header, v171, v172, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v187, 0x20u);
                      swift_arrayDestroy();
                      a2 = v275;

                      v136 = v279;
                    }

                    else
                    {
                      v148, v180, v181, v182, v183, v184, v185, v186;
                    }

                    v16 = v278;
                  }

                  else
                  {
                    v148, v162, v163, v164, v165, v166, v167, v168;
                  }

                  goto LABEL_38;
                }

                v151 = v150;
                LOBYTE(v287[0]) = v150;
                if ([a2 shouldPerformCloudSchemaCatchUpSync])
                {
                  break;
                }

LABEL_68:
                v224 = String._bridgeToObjectiveC()();
                v148, v225, v226, v227, v228, v229, v230, v231;
                v232 = [v281 compareAndMergeWithMap:v16 forKey:v224];

                if (v232 == -1)
                {
                  sub_1003B15B4(v287, a3, a4);
                }

LABEL_38:
                if (++v145 == v283)
                {
                  goto LABEL_79;
                }
              }

              if (v151)
              {
                if (v151 == 1)
                {
                  v159 = 0xD00000000000001DLL;
                }

                else
                {
                  v159 = 0x6574616C706D6574;
                }

                if (v151 == 1)
                {
                  v160 = 0x80000001007E9100;
                }

                else
                {
                  v160 = 0xE800000000000000;
                }

                if (!*v125->clientIdentity)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v160 = 0xE800000000000000;
                v159 = 0x617461646174656DLL;
                if (!*v125->clientIdentity)
                {
LABEL_67:
                  v160, v152, v153, v154, v155, v156, v157, v158;
                  v136 = v279;
                  goto LABEL_68;
                }
              }

              Hasher.init(_seed:)();
              String.hash(into:)();
              v218 = Hasher._finalize()();
              v219 = -1 << v125->clientIdentity[16];
              v220 = v218 & ~v219;
              if ((*&v284[(v220 >> 3) & 0xFFFFFFFFFFFFFF8] >> v220))
              {
                v221 = ~v219;
                while (1)
                {
                  v222 = (*&v125->clientIdentity[32] + 16 * v220);
                  v152 = v222[1];
                  v223 = *v222 == v159 && v152 == v160;
                  if (v223 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v220 = (v220 + 1) & v221;
                  if (((*&v284[(v220 >> 3) & 0xFFFFFFFFFFFFFF8] >> v220) & 1) == 0)
                  {
                    goto LABEL_67;
                  }
                }

                v160, v152, v153, v154, v155, v156, v157, v158;
                if (qword_100936300 != -1)
                {
                  swift_once();
                }

                v233 = type metadata accessor for Logger();
                sub_100006654(v233, qword_10094A590);

                v234 = a2;
                v235 = Logger.logObject.getter();
                v236 = static os_log_type_t.default.getter();

                v148, v237, v238, v239, v240, v241, v242, v243;
                if (os_log_type_enabled(v235, v236))
                {
                  v244 = swift_slowAlloc();
                  v285 = swift_slowAlloc();
                  *v244 = v274;
                  *(v244 + 4) = sub_10000668C(v147, v148, &v285);
                  *(v244 + 12) = 2082;
                  v245 = [v234 remObjectID];
                  if (v245)
                  {
                    v246 = v245;
                    v247 = [v245 description];

                    v248 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v250 = v249;
                  }

                  else
                  {
                    v250 = 0xE300000000000000;
                    v248 = 7104878;
                  }

                  v251 = sub_10000668C(v248, v250, &v285);
                  v250, v252, v253, v254, v255, v256, v257, v258;
                  *(v244 + 14) = v251;
                  _os_log_impl(&_mh_execute_header, v235, v236, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v244, 0x16u);
                  swift_arrayDestroy();

                  a2 = v275;
                }

                else
                {
                }

                v136 = v279;
                sub_1003B15B4(v287, a3, a4);
                v259 = String._bridgeToObjectiveC()();
                v148, v260, v261, v262, v263, v264, v265, v266;
                v16 = v278;
                [v281 forceMergeFromMap:v278 forKey:v259];

                goto LABEL_38;
              }

              goto LABEL_67;
            }
          }

          else
          {
            v89, v92, v93, v94, v95, v96, v97, v98;
          }

          v91, v108, v109, v110, v111, v112, v113, v114;
        }
      }
    }

    v125 = _swiftEmptySetSingleton;
    goto LABEL_35;
  }

  LOBYTE(v285) = 0;
  sub_1003B15B4(&v285, a3, a4);
  LOBYTE(v285) = 1;
  sub_1003B15B4(&v285, a3, a4);
  if (CKRecord.subscript.getter())
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v15 = 0;
  }

  v133 = sub_1001287F0(v15);

  if (v133)
  {
    type metadata accessor for REMCDTemplate();
    v134 = swift_dynamicCastClass();
    if (!v134)
    {
    }
  }

  else
  {
    v134 = 0;
  }

  [a3 setTemplate:v134];
}

void sub_1004E7498(void *a1, int a2, int a3, void *a4, void *a5, void *a6, _BYTE *a7)
{
  v308 = a7;
  v309 = a6;
  v307 = a5;
  v313 = a3;
  v310 = a2;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v303 - v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v312 = a1;
  CKRecordKeyValueSetting.subscript.getter();
  v14, v15, v16, v17, v18, v19, v20, v21;
  if ((v320 & 1) != 0 || v319 != 1)
  {
    v28 = sub_1004DAFEC(v312, 0);
    if (v29)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      CKRecordKeyValueSetting.subscript.getter();
      v31, v32, v33, v34, v35, v36, v37, v38;
      if ((v320 & 1) != 0 || v319 != 1 || ![a4 markedForDeletion])
      {
        if (qword_100936300 != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_15;
      }

      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_10094A590);
      v40 = v312;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v319 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = CKRecord.recordType.getter();
        v46 = v45;
        v47 = sub_10000668C(v44, v45, &v319);
        v46, v48, v49, v50, v51, v52, v53, v54;
        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        v55 = [v40 recordID];
        v56 = [v55 ckShortDescription];

        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = sub_10000668C(v57, v59, &v319);
        v59, v61, v62, v63, v64, v65, v66, v67;
        *(v43 + 14) = v60;
        v68 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }

LABEL_18:
    }

    if ([a4 shouldPerformCloudSchemaCatchUpSync])
    {
      v95 = [a4 storeControllerManagedObjectContext];
      if (v95)
      {
        v96 = v95;
        v97 = [a4 accountCKIdentifier];
        if (v97)
        {
          v98 = v97;
          v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v101 = v100;

          v102 = [v96 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v103 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v103 + 16))
          {
            v111 = sub_100005F4C(v99, v101);
            v113 = v112;
            v101, v112, v114, v115, v116, v117, v118, v119;
            if (v113)
            {
              v127 = *(*(v103 + 56) + 8 * v111);
              v103, v128, v129, v130, v131, v132, v133, v134;
              v135 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a4 persistenceCloudSchemaVersion:{objc_msgSend(v127, "persistenceCloudSchemaVersion")}];
              v136 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v137 = sub_1001A5660(v136);
              v136, v138, v139, v140, v141, v142, v143, v144;
LABEL_29:
              v314 = [a4 createResolutionTokenMapIfNecessary];
              v145 = [v28 getTokenKeys];
              v146 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v317 = *(v146 + 16);
              if (!v317)
              {
LABEL_88:
                v137, v147, v148, v149, v150, v151, v152, v153;
                v146, v296, v297, v298, v299, v300, v301, v302;

                goto LABEL_89;
              }

              v155 = 0;
              v316 = v146 + 32;
              v318 = &v137->clientIdentity[40];
              *&v154 = 136446466;
              v303 = v154;
              *&v154 = 136446722;
              v305 = v154;
              v306 = a4;
              v311 = v28;
              v315 = v146;
              while (1)
              {
                if (v155 >= *(v146 + 16))
                {
                  __break(1u);
LABEL_91:
                  swift_once();
LABEL_15:
                  v69 = type metadata accessor for Logger();
                  sub_100006654(v69, qword_10094A590);
                  v70 = v312;
                  v41 = Logger.logObject.getter();
                  v42 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v41, v42))
                  {
                    v43 = swift_slowAlloc();
                    v319 = swift_slowAlloc();
                    *v43 = 136446466;
                    v71 = CKRecord.recordType.getter();
                    v73 = v72;
                    v74 = sub_10000668C(v71, v72, &v319);
                    v73, v75, v76, v77, v78, v79, v80, v81;
                    *(v43 + 4) = v74;
                    *(v43 + 12) = 2082;
                    v82 = [v70 recordID];
                    v83 = [v82 ckShortDescription];

                    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v86 = v85;

                    v87 = sub_10000668C(v84, v86, &v319);
                    v86, v88, v89, v90, v91, v92, v93, v94;
                    *(v43 + 14) = v87;
                    v68 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_17:
                    _os_log_impl(&_mh_execute_header, v41, v42, v68, v43, 0x16u);
                    swift_arrayDestroy();
                  }

                  goto LABEL_18;
                }

                v187 = (v316 + 16 * v155);
                v188 = *v187;
                v189 = v187[1];

                v190._countAndFlagsBits = v188;
                v190._object = v189;
                v191 = _findStringSwitchCase(cases:string:)(&off_1008DE718, v190);
                if (v191 > 2)
                {
                  v202._countAndFlagsBits = v188;
                  v202._object = v189;
                  if (!_findStringSwitchCase(cases:string:)(&off_1008DE780, v202))
                  {
                    v189, v203, v204, v205, v206, v207, v208, v209;
                    goto LABEL_34;
                  }

                  if (qword_100936300 != -1)
                  {
                    swift_once();
                  }

                  v210 = type metadata accessor for Logger();
                  sub_100006654(v210, qword_10094A590);
                  v211 = v312;

                  v212 = Logger.logObject.getter();
                  v213 = static os_log_type_t.error.getter();

                  v189, v214, v215, v216, v217, v218, v219, v220;
                  if (os_log_type_enabled(v212, v213))
                  {
                    v156 = swift_slowAlloc();
                    v319 = swift_slowAlloc();
                    *v156 = v305;
                    v157 = sub_10000668C(v188, v189, &v319);
                    v189, v158, v159, v160, v161, v162, v163, v164;
                    *(v156 + 4) = v157;
                    *(v156 + 12) = 2082;
                    v165 = CKRecord.recordType.getter();
                    v167 = v166;
                    v168 = sub_10000668C(v165, v166, &v319);
                    v167, v169, v170, v171, v172, v173, v174, v175;
                    *(v156 + 14) = v168;
                    *(v156 + 22) = 2082;
                    v321[0] = &_s6FieldsON_5;
                    sub_1000F5104(&qword_10094A638, &qword_1007AE8F0);
                    v176 = String.init<A>(reflecting:)();
                    v178 = v177;
                    v179 = sub_10000668C(v176, v177, &v319);
                    v178, v180, v181, v182, v183, v184, v185, v186;
                    *(v156 + 24) = v179;
                    _os_log_impl(&_mh_execute_header, v212, v213, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v156, 0x20u);
                    swift_arrayDestroy();
                    v28 = v311;

                    a4 = v306;
                  }

                  else
                  {
                    v189, v221, v222, v223, v224, v225, v226, v227;
                  }

                  goto LABEL_33;
                }

                v192 = v191;
                LOBYTE(v321[0]) = v191;
                if ([a4 shouldPerformCloudSchemaCatchUpSync])
                {
                  break;
                }

LABEL_63:
                v234 = String._bridgeToObjectiveC()();
                v189, v235, v236, v237, v238, v239, v240, v241;
                v242 = [v314 compareAndMergeWithMap:v28 forKey:v234];

                if (v313)
                {
                  if (v192)
                  {
                    if (v192 == 2)
                    {
                      0xE900000000000074, v147, v148, v149, v150, v151, v152, v153;
                      goto LABEL_33;
                    }

                    v243 = 0xEB00000000656D61;
                  }

                  else
                  {
                    v243 = 0xEC00000065746144;
                  }

                  v244 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v243, v245, v246, v247, v248, v249, v250, v251;
                  if (v244)
                  {
                    goto LABEL_33;
                  }
                }

                if (v310)
                {
                  if (v192)
                  {
                    if (v192 == 2)
                    {
                      0xE900000000000074, v147, v148, v149, v150, v151, v152, v153;
LABEL_83:
                      sub_1004786A0(v321, v307, v309, v308);
                      goto LABEL_33;
                    }

                    v271 = 0xEB00000000656D61;
                  }

                  else
                  {
                    v271 = 0xEC00000065746144;
                  }

                  v272 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v271, v273, v274, v275, v276, v277, v278, v279;
                  if (v272)
                  {
                    goto LABEL_83;
                  }
                }

                if (v242 == -1)
                {
                  goto LABEL_83;
                }

LABEL_33:
                v146 = v315;
LABEL_34:
                if (++v155 == v317)
                {
                  goto LABEL_88;
                }
              }

              if (v192)
              {
                if (v192 == 1)
                {
                  v200 = 0x4E79616C70736964;
                }

                else
                {
                  v200 = 0x73694C7472616D73;
                }

                if (v192 == 1)
                {
                  v201 = 0xEB00000000656D61;
                }

                else
                {
                  v201 = 0xE900000000000074;
                }

                if (!*v137->clientIdentity)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v200 = 0x6E6F697461657263;
                v201 = 0xEC00000065746144;
                if (!*v137->clientIdentity)
                {
LABEL_62:
                  v201, v193, v194, v195, v196, v197, v198, v199;
                  v28 = v311;
                  goto LABEL_63;
                }
              }

              Hasher.init(_seed:)();
              String.hash(into:)();
              v228 = Hasher._finalize()();
              v229 = -1 << v137->clientIdentity[16];
              v230 = v228 & ~v229;
              if ((*&v318[(v230 >> 3) & 0xFFFFFFFFFFFFFF8] >> v230))
              {
                v231 = ~v229;
                while (1)
                {
                  v232 = (*&v137->clientIdentity[32] + 16 * v230);
                  v193 = v232[1];
                  v233 = *v232 == v200 && v193 == v201;
                  if (v233 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v230 = (v230 + 1) & v231;
                  if (((*&v318[(v230 >> 3) & 0xFFFFFFFFFFFFFF8] >> v230) & 1) == 0)
                  {
                    goto LABEL_62;
                  }
                }

                v201, v193, v194, v195, v196, v197, v198, v199;
                if (qword_100936300 != -1)
                {
                  swift_once();
                }

                v252 = type metadata accessor for Logger();
                sub_100006654(v252, qword_10094A590);

                v253 = a4;
                v254 = Logger.logObject.getter();
                v255 = static os_log_type_t.default.getter();

                v189, v256, v257, v258, v259, v260, v261, v262;
                v263 = os_log_type_enabled(v254, v255);
                v28 = v311;
                if (v263)
                {
                  v264 = swift_slowAlloc();
                  v304 = swift_slowAlloc();
                  v319 = v304;
                  *v264 = v303;
                  *(v264 + 4) = sub_10000668C(v188, v189, &v319);
                  *(v264 + 12) = 2082;
                  v265 = [v253 remObjectID];
                  if (v265)
                  {
                    v266 = v265;
                    v267 = [v265 description];

                    v268 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v270 = v269;
                  }

                  else
                  {
                    v270 = 0xE300000000000000;
                    v268 = 7104878;
                  }

                  v280 = sub_10000668C(v268, v270, &v319);
                  v270, v281, v282, v283, v284, v285, v286, v287;
                  *(v264 + 14) = v280;
                  _os_log_impl(&_mh_execute_header, v254, v255, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v264, 0x16u);
                  swift_arrayDestroy();

                  a4 = v306;
                  v28 = v311;
                }

                else
                {
                }

                sub_1004786A0(v321, v307, v309, v308);
                v288 = String._bridgeToObjectiveC()();
                v189, v289, v290, v291, v292, v293, v294, v295;
                [v314 forceMergeFromMap:v28 forKey:v288];

                goto LABEL_33;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v101, v104, v105, v106, v107, v108, v109, v110;
          }

          v103, v120, v121, v122, v123, v124, v125, v126;
        }
      }
    }

    v137 = _swiftEmptySetSingleton;
    goto LABEL_29;
  }

  v22 = type metadata accessor for Date();
  CKRecordKeyValueSetting.subscript.getter();
  v23 = *(v22 - 8);
  isa = 0;
  if ((*(v23 + 48))(v12, 1, v22) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v23 + 8))(v12, v22);
  }

  v25 = v307;
  [v307 setCreationDate:isa];

  LOBYTE(v319) = 1;
  v26 = v308;
  v27 = v309;
  sub_1004786A0(&v319, v25, v309, v308);
  LOBYTE(v319) = 2;
  sub_1004786A0(&v319, v25, v27, v26);
  v314 = sub_1004DAFEC(v312, 1);
LABEL_89:
}

void sub_1004E83E0(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v241 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v241 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v241 - v15;
  v17 = [swift_getObjCClassFromObject() cdEntityName];
  v244 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = [a1 identifier];
  if (v20)
  {
    v21 = v20;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_100031B58(v12, v16, &unk_100939D90, "8\n\r");
  if ((*(v5 + 48))(v16, 1, v4))
  {
    sub_1000050A4(v16, &unk_100939D90, "8\n\r");
    v22 = 0xE300000000000000;
    v23 = 7104878;
  }

  else
  {
    (*(v5 + 16))(v8, v16, v4);
    sub_1000050A4(v16, &unk_100939D90, "8\n\r");
    v23 = UUID.uuidString.getter();
    v22 = v24;
    (*(v5 + 8))(v8, v4);
  }

  v25 = [objc_opt_self() ckRecordKeyForMinimumSupportedVersion];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (CKRecord.subscript.getter())
  {
    swift_unknownObjectRelease();
    v36 = CKRecord.subscript.getter();
    v243 = v23;
    if (v36)
    {
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v45 = v37;
        v28, v38, v39, v40, v41, v42, v43, v44;
        if (qword_100936300 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_100006654(v46, qword_10094A590);

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        v22, v49, v50, v51, v52, v53, v54, v55;
        v19, v56, v57, v58, v59, v60, v61, v62;
        if (os_log_type_enabled(v47, v48))
        {
          v70 = swift_slowAlloc();
          v246 = swift_slowAlloc();
          *v70 = 136446466;
          v71 = sub_10000668C(v244, v19, &v246);
          v19, v72, v73, v74, v75, v76, v77, v78;
          *(v70 + 4) = v71;
          *(v70 + 12) = 2082;
          v79 = sub_10000668C(v243, v22, &v246);
          v22, v80, v81, v82, v83, v84, v85, v86;
          *(v70 + 14) = v79;
          _os_log_impl(&_mh_execute_header, v47, v48, "REMCDObjectSystemFieldsMerging: Merged updated minimumSupportedVersion as NSNumber from CK record {entity: %{public}s, identifier: %{public}s}", v70, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v22, v63, v64, v65, v66, v67, v68, v69;
          v19, v227, v228, v229, v230, v231, v232, v233;
        }

        [a1 setMinimumSupportedVersion:{objc_msgSend(v45, "integerValue")}];
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v145 = type metadata accessor for Logger();
    sub_100006654(v145, qword_10094A590);

    v146 = a2;
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.fault.getter();
    v28, v149, v150, v151, v152, v153, v154, v155;

    v22, v156, v157, v158, v159, v160, v161, v162;
    v19, v163, v164, v165, v166, v167, v168, v169;
    if (os_log_type_enabled(v147, v148))
    {
      v177 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v246 = v242;
      *v177 = 136446978;
      *(v177 + 4) = sub_10000668C(v26, v28, &v246);
      *(v177 + 12) = 2082;
      v178 = sub_10000668C(v244, v19, &v246);
      v19, v179, v180, v181, v182, v183, v184, v185;
      *(v177 + 14) = v178;
      *(v177 + 22) = 2082;
      v186 = sub_10000668C(v243, v22, &v246);
      v22, v187, v188, v189, v190, v191, v192, v193;
      *(v177 + 24) = v186;
      *(v177 + 32) = 2080;
      v194 = CKRecord.subscript.getter();
      v28, v195, v196, v197, v198, v199, v200, v201;
      v245 = v194;
      sub_1000F5104(&qword_100944EF0, &unk_1007AE8D0);
      v202 = String.init<A>(describing:)();
      v204 = v203;
      v205 = sub_10000668C(v202, v203, &v246);
      v204, v206, v207, v208, v209, v210, v211, v212;
      *(v177 + 34) = v205;
      _os_log_impl(&_mh_execute_header, v147, v148, "REMCDObjectSystemFieldsMerging: Unknown kind of value in ckRecord[%{public}s] {entity: %{public}s, identifier: %{public}s, value: %s}", v177, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v28, v170, v171, v172, v173, v174, v175, v176;
      v22, v213, v214, v215, v216, v217, v218, v219;
      v19, v220, v221, v222, v223, v224, v225, v226;
    }
  }

  else
  {
    v28, v29, v30, v31, v32, v33, v34, v35;
    v87 = [a1 minimumSupportedVersion];
    v95 = kREMSupportedVersionUnset;
    if (v87 == kREMSupportedVersionUnset)
    {
      v22, v88, v89, v90, v91, v92, v93, v94;
      v19, v96, v97, v98, v99, v100, v101, v102;
    }

    else
    {
      v103 = v23;
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_100006654(v104, qword_10094A590);

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.fault.getter();
      v22, v107, v108, v109, v110, v111, v112, v113;
      v19, v114, v115, v116, v117, v118, v119, v120;
      if (os_log_type_enabled(v105, v106))
      {
        v128 = swift_slowAlloc();
        v246 = swift_slowAlloc();
        *v128 = 136446466;
        v129 = sub_10000668C(v244, v19, &v246);
        v19, v130, v131, v132, v133, v134, v135, v136;
        *(v128 + 4) = v129;
        *(v128 + 12) = 2082;
        v137 = sub_10000668C(v103, v22, &v246);
        v22, v138, v139, v140, v141, v142, v143, v144;
        *(v128 + 14) = v137;
        _os_log_impl(&_mh_execute_header, v105, v106, "REMCDObjectSystemFieldsMerging: Found a case we are merging down a Unset version number from CK while local object version isn't unset {entity: %{public}s, identifier: %{public}s}", v128, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v22, v121, v122, v123, v124, v125, v126, v127;
        v19, v234, v235, v236, v237, v238, v239, v240;
      }

      [a1 setMinimumSupportedVersion:v95];
    }
  }
}

void sub_1004E8C90(_TtC7remindd19RDXPCStorePerformer *a1, void *a2, void *a3, void *a4)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();
  v7, v8, v9, v10, v11, v12, v13, v14;
  if ((v237 & 1) == 0 && v236 == 1)
  {
    sub_1004E83E0(a3, a4);

    return;
  }

  v15 = sub_1004DB734(a1, 0);
  if ((v16 & 1) == 0)
  {
    goto LABEL_17;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  CKRecordKeyValueSetting.subscript.getter();
  v18, v19, v20, v21, v22, v23, v24, v25;
  if ((v237 & 1) != 0 || v236 != 1 || ![a2 markedForDeletion])
  {
    if (qword_100936300 != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_13;
  }

  if (qword_100936300 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_10094A590);
  v27 = a1;
  a1 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(&a1->super, v28))
  {
    v29 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    *v29 = 136446466;
    v30 = CKRecord.recordType.getter();
    v32 = v31;
    v33 = v15;
    v34 = sub_10000668C(v30, v31, &v236);
    v32, v35, v36, v37, v38, v39, v40, v41;
    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v42 = [v27 recordID];
    v43 = [v42 ckShortDescription];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_10000668C(v44, v46, &v236);
    v48 = v46;
    v15 = v33;
    v48, v49, v50, v51, v52, v53, v54, v55;
    *(v29 + 14) = v47;
    v56 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
LABEL_15:
    _os_log_impl(&_mh_execute_header, &a1->super, v28, v56, v29, 0x16u);
    swift_arrayDestroy();

    goto LABEL_16;
  }

  while (1)
  {
LABEL_16:

LABEL_17:
    if ([a2 shouldPerformCloudSchemaCatchUpSync])
    {
      v85 = [a2 storeControllerManagedObjectContext];
      if (v85)
      {
        a1 = v85;
        v86 = [a2 accountCKIdentifier];
        if (v86)
        {
          v87 = v86;
          v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v90 = v89;

          v91 = [(RDXPCStorePerformer *)a1 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v92 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v92 + 16))
          {
            v100 = sub_100005F4C(v88, v90);
            v102 = v101;
            v90, v101, v103, v104, v105, v106, v107, v108;
            if (v102)
            {
              v116 = *(*(v92 + 56) + 8 * v100);
              v92, v117, v118, v119, v120, v121, v122, v123;
              v124 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a2 persistenceCloudSchemaVersion:{objc_msgSend(v116, "persistenceCloudSchemaVersion")}];
              v125 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v126 = sub_1001A5660(v125);
              v125, v127, v128, v129, v130, v131, v132, v133;
              goto LABEL_27;
            }
          }

          else
          {
            v90, v93, v94, v95, v96, v97, v98, v99;
          }

          v92, v109, v110, v111, v112, v113, v114, v115;
        }
      }
    }

    v126 = _swiftEmptySetSingleton;
LABEL_27:
    v234 = [a2 createResolutionTokenMapIfNecessary];
    v134 = [v15 getTokenKeys];
    v135 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v143 = *(v135 + 16);
    if (!v143)
    {
      break;
    }

    v232 = v15;
    v233 = a2;
    v15 = 0;
    v144 = v135 + 32;
    a2 = 0x80000001007E8C60;
    v235 = v126 + 7;
    while (v15 < *(v135 + 16))
    {
      v152 = (v144 + 16 * v15);
      v153 = *v152;
      a1 = v152[1];

      v154._countAndFlagsBits = v153;
      v154._object = a1;
      if (_findStringSwitchCase(cases:string:)(&off_1008DE7B8, v154))
      {
        a1, v155, v156, v157, v158, v159, v160, v161;
      }

      else if ([v233 shouldPerformCloudSchemaCatchUpSync] & 1) != 0 && v126[2] && (Hasher.init(_seed:)(), String.hash(into:)(), v162 = Hasher._finalize()(), v163 = -1 << *(v126 + 32), v164 = v162 & ~v163, ((*(v235 + ((v164 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v164)))
      {
        v165 = ~v163;
        while (1)
        {
          v166 = (v126[6] + 16 * v164);
          v167 = *v166 == 0xD000000000000017 && 0x80000001007E8C60 == v166[1];
          if (v167 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v164 = (v164 + 1) & v165;
          if (((*(v235 + ((v164 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v164) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        if (qword_100936300 != -1)
        {
          swift_once();
        }

        v177 = type metadata accessor for Logger();
        sub_100006654(v177, qword_10094A590);

        v178 = v233;
        v179 = Logger.logObject.getter();
        v180 = static os_log_type_t.default.getter();

        a1, v181, v182, v183, v184, v185, v186, v187;
        v228 = v180;
        if (os_log_type_enabled(v179, v180))
        {
          log = v179;
          v188 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          v236 = v225;
          *v188 = 136446466;
          *(v188 + 4) = sub_10000668C(v153, a1, &v236);
          buf = v188;
          *(v188 + 12) = 2082;
          v189 = [v178 remObjectID];
          v144 = v135 + 32;
          if (v189)
          {
            v190 = v189;
            v191 = [v189 description];

            v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v193 = v192;

            v194 = v227;
          }

          else
          {
            v193 = 0xE300000000000000;
            v194 = 7104878;
          }

          v195 = sub_10000668C(v194, v193, &v236);
          v193, v196, v197, v198, v199, v200, v201, v202;
          *(buf + 14) = v195;
          _os_log_impl(&_mh_execute_header, log, v228, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", buf, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v144 = v135 + 32;
        }

        sub_1004E83E0(a3, a4);
        v203 = String._bridgeToObjectiveC()();
        a1, v204, v205, v206, v207, v208, v209, v210;
        [v234 forceMergeFromMap:v232 forKey:v203];
      }

      else
      {
LABEL_43:
        v168 = String._bridgeToObjectiveC()();
        a1, v169, v170, v171, v172, v173, v174, v175;
        v176 = [v234 compareAndMergeWithMap:v232 forKey:v168];

        if (v176 == -1)
        {
          sub_1004E83E0(a3, a4);
        }
      }

      if (++v15 == v143)
      {
        v126, v145, v146, v147, v148, v149, v150, v151;
        v135, v211, v212, v213, v214, v215, v216, v217;

        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
LABEL_13:
    v57 = type metadata accessor for Logger();
    sub_100006654(v57, qword_10094A590);
    v58 = a1;
    a1 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(&a1->super, v28))
    {
      v29 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      *v29 = 136446466;
      v59 = CKRecord.recordType.getter();
      v61 = v60;
      v62 = v15;
      v63 = sub_10000668C(v59, v60, &v236);
      v61, v64, v65, v66, v67, v68, v69, v70;
      *(v29 + 4) = v63;
      *(v29 + 12) = 2082;
      v71 = [v58 recordID];
      v72 = [v71 ckShortDescription];

      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = sub_10000668C(v73, v75, &v236);
      v77 = v75;
      v15 = v62;
      v77, v78, v79, v80, v81, v82, v83, v84;
      *(v29 + 14) = v76;
      v56 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
      goto LABEL_15;
    }
  }

  v126, v136, v137, v138, v139, v140, v141, v142;
  v135, v218, v219, v220, v221, v222, v223, v224;

LABEL_56:
}

void sub_1004E96DC(void *a1, int a2, int a3, void *a4, void *a5, void *a6, _BYTE *a7)
{
  v323 = a7;
  v324 = a6;
  v322 = a5;
  v327 = a3;
  v325 = a2;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v318 - v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v326 = a1;
  CKRecordKeyValueSetting.subscript.getter();
  v14, v15, v16, v17, v18, v19, v20, v21;
  if ((v335 & 1) != 0 || v334 != 1)
  {
    v38 = sub_1004DBE24(v326, 0);
    v328 = v38;
    if (v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
      CKRecordKeyValueSetting.subscript.getter();
      v41, v42, v43, v44, v45, v46, v47, v48;
      if ((v335 & 1) != 0 || v334 != 1 || ![a4 markedForDeletion])
      {
        if (qword_100936300 != -1)
        {
          goto LABEL_104;
        }

        goto LABEL_16;
      }

      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100006654(v49, qword_10094A590);
      v50 = v326;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v334 = swift_slowAlloc();
        *v53 = 136446466;
        v54 = CKRecord.recordType.getter();
        v56 = v55;
        v57 = sub_10000668C(v54, v55, &v334);
        v56, v58, v59, v60, v61, v62, v63, v64;
        *(v53 + 4) = v57;
        *(v53 + 12) = 2082;
        v65 = [v50 recordID];
        v66 = [v65 ckShortDescription];

        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        v70 = sub_10000668C(v67, v69, &v334);
        v69, v71, v72, v73, v74, v75, v76, v77;
        *(v53 + 14) = v70;
        v78 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_18;
      }

LABEL_19:
    }

    if ([a4 shouldPerformCloudSchemaCatchUpSync])
    {
      v105 = [a4 storeControllerManagedObjectContext];
      if (v105)
      {
        v106 = v105;
        v107 = [a4 accountCKIdentifier];
        if (v107)
        {
          v108 = v107;
          v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v111 = v110;

          v112 = [v106 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v113 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v113 + 16))
          {
            v121 = sub_100005F4C(v109, v111);
            v123 = v122;
            v111, v122, v124, v125, v126, v127, v128, v129;
            if (v123)
            {
              v137 = *(*(v113 + 56) + 8 * v121);
              v113, v138, v139, v140, v141, v142, v143, v144;
              v145 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a4 persistenceCloudSchemaVersion:{objc_msgSend(v137, "persistenceCloudSchemaVersion")}];
              v146 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v147 = sub_1001A5660(v146);
              v146, v148, v149, v150, v151, v152, v153, v154;
LABEL_32:
              v329 = [a4 createResolutionTokenMapIfNecessary];
              v156 = [v38 getTokenKeys];
              v157 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v332 = *(v157 + 16);
              if (!v332)
              {
LABEL_101:
                v147, v158, v159, v160, v161, v162, v163, v164;
                v157, v311, v312, v313, v314, v315, v316, v317;

                goto LABEL_102;
              }

              v166 = 0;
              v331 = v157 + 32;
              v333 = &v147->clientIdentity[40];
              *&v165 = 136446466;
              v318 = v165;
              *&v165 = 136446722;
              v320 = v165;
              v321 = a4;
              v330 = v157;
              while (1)
              {
                if (v166 >= *(v157 + 16))
                {
                  __break(1u);
LABEL_104:
                  swift_once();
LABEL_16:
                  v79 = type metadata accessor for Logger();
                  sub_100006654(v79, qword_10094A590);
                  v80 = v326;
                  v51 = Logger.logObject.getter();
                  v52 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v51, v52))
                  {
                    v53 = swift_slowAlloc();
                    v334 = swift_slowAlloc();
                    *v53 = 136446466;
                    v81 = CKRecord.recordType.getter();
                    v83 = v82;
                    v84 = sub_10000668C(v81, v82, &v334);
                    v83, v85, v86, v87, v88, v89, v90, v91;
                    *(v53 + 4) = v84;
                    *(v53 + 12) = 2082;
                    v92 = [v80 recordID];
                    v93 = [v92 ckShortDescription];

                    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v96 = v95;

                    v97 = sub_10000668C(v94, v96, &v334);
                    v96, v98, v99, v100, v101, v102, v103, v104;
                    *(v53 + 14) = v97;
                    v78 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_18:
                    _os_log_impl(&_mh_execute_header, v51, v52, v78, v53, 0x16u);
                    swift_arrayDestroy();
                    v38 = v328;
                  }

                  goto LABEL_19;
                }

                v198 = (v331 + 16 * v166);
                v199 = *v198;
                v200 = v198[1];

                v201._countAndFlagsBits = v199;
                v201._object = v200;
                v202 = _findStringSwitchCase(cases:string:)(&off_1008DE840, v201);
                if (v202 > 3)
                {
                  v233._countAndFlagsBits = v199;
                  v233._object = v200;
                  if (!_findStringSwitchCase(cases:string:)(&off_1008DE8C0, v233))
                  {
                    v200, v234, v235, v236, v237, v238, v239, v240;
                    goto LABEL_37;
                  }

                  if (qword_100936300 != -1)
                  {
                    swift_once();
                  }

                  v241 = type metadata accessor for Logger();
                  sub_100006654(v241, qword_10094A590);
                  v242 = v326;

                  v243 = Logger.logObject.getter();
                  v244 = static os_log_type_t.error.getter();

                  v200, v245, v246, v247, v248, v249, v250, v251;
                  if (os_log_type_enabled(v243, v244))
                  {
                    v167 = swift_slowAlloc();
                    v334 = swift_slowAlloc();
                    *v167 = v320;
                    v168 = sub_10000668C(v199, v200, &v334);
                    v200, v169, v170, v171, v172, v173, v174, v175;
                    *(v167 + 4) = v168;
                    *(v167 + 12) = 2082;
                    v176 = CKRecord.recordType.getter();
                    v178 = v177;
                    v179 = sub_10000668C(v176, v177, &v334);
                    v178, v180, v181, v182, v183, v184, v185, v186;
                    *(v167 + 14) = v179;
                    *(v167 + 22) = 2082;
                    v336[0] = &_s6FieldsON_6;
                    sub_1000F5104(&unk_10094A628, &unk_1007AE8E0);
                    v187 = String.init<A>(reflecting:)();
                    v189 = v188;
                    v190 = sub_10000668C(v187, v188, &v334);
                    v189, v191, v192, v193, v194, v195, v196, v197;
                    *(v167 + 24) = v190;
                    _os_log_impl(&_mh_execute_header, v243, v244, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v167, 0x20u);
                    swift_arrayDestroy();
                    v38 = v328;

                    a4 = v321;
                  }

                  else
                  {
                    v200, v252, v253, v254, v255, v256, v257, v258;
                  }

                  goto LABEL_36;
                }

                v203 = v202;
                LOBYTE(v336[0]) = v202;
                if ([a4 shouldPerformCloudSchemaCatchUpSync])
                {
                  v211 = 0x6163696E6F6E6163;
                  if (v203 != 2)
                  {
                    v211 = 1953720684;
                  }

                  v212 = 0xED0000656D614E6CLL;
                  if (v203 != 2)
                  {
                    v212 = 0xE400000000000000;
                  }

                  v213 = 0x6E6F697461657263;
                  if (v203)
                  {
                    v213 = 0x4E79616C70736964;
                  }

                  v214 = 0xEC00000065746144;
                  if (v203)
                  {
                    v214 = 0xEB00000000656D61;
                  }

                  if (v203 <= 1u)
                  {
                    v215 = v213;
                  }

                  else
                  {
                    v215 = v211;
                  }

                  if (v203 <= 1u)
                  {
                    v216 = v214;
                  }

                  else
                  {
                    v216 = v212;
                  }

                  if (*v147->clientIdentity)
                  {
                    Hasher.init(_seed:)();
                    String.hash(into:)();
                    v217 = Hasher._finalize()();
                    v218 = -1 << v147->clientIdentity[16];
                    v219 = v217 & ~v218;
                    if ((*&v333[(v219 >> 3) & 0xFFFFFFFFFFFFFF8] >> v219))
                    {
                      v220 = ~v218;
                      while (1)
                      {
                        v221 = (*&v147->clientIdentity[32] + 16 * v219);
                        v204 = v221[1];
                        v222 = *v221 == v215 && v204 == v216;
                        if (v222 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v219 = (v219 + 1) & v220;
                        if (((*&v333[(v219 >> 3) & 0xFFFFFFFFFFFFFF8] >> v219) & 1) == 0)
                        {
                          goto LABEL_64;
                        }
                      }

                      v216, v204, v205, v206, v207, v208, v209, v210;
                      if (qword_100936300 != -1)
                      {
                        swift_once();
                      }

                      v276 = type metadata accessor for Logger();
                      sub_100006654(v276, qword_10094A590);

                      v277 = a4;
                      v278 = Logger.logObject.getter();
                      v279 = static os_log_type_t.default.getter();

                      v200, v280, v281, v282, v283, v284, v285, v286;
                      v287 = os_log_type_enabled(v278, v279);
                      v38 = v328;
                      if (v287)
                      {
                        v288 = swift_slowAlloc();
                        v319 = swift_slowAlloc();
                        v334 = v319;
                        *v288 = v318;
                        *(v288 + 4) = sub_10000668C(v199, v200, &v334);
                        *(v288 + 12) = 2082;
                        v289 = [v277 remObjectID];
                        if (v289)
                        {
                          v290 = v289;
                          v291 = [v289 description];

                          v292 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v294 = v293;
                        }

                        else
                        {
                          v294 = 0xE300000000000000;
                          v292 = 7104878;
                        }

                        v295 = sub_10000668C(v292, v294, &v334);
                        v294, v296, v297, v298, v299, v300, v301, v302;
                        *(v288 + 14) = v295;
                        _os_log_impl(&_mh_execute_header, v278, v279, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v288, 0x16u);
                        swift_arrayDestroy();

                        a4 = v321;
                        v38 = v328;
                      }

                      else
                      {
                      }

                      sub_10059FC28(v336, v322, v324, v323);
                      v303 = String._bridgeToObjectiveC()();
                      v200, v304, v305, v306, v307, v308, v309, v310;
                      [v329 forceMergeFromMap:v38 forKey:v303];

                      goto LABEL_36;
                    }
                  }

LABEL_64:
                  v216, v204, v205, v206, v207, v208, v209, v210;
                  v38 = v328;
                }

                v223 = String._bridgeToObjectiveC()();
                v200, v224, v225, v226, v227, v228, v229, v230;
                v231 = [v329 compareAndMergeWithMap:v38 forKey:v223];

                if (v327)
                {
                  if (v203 > 1u)
                  {
                    if (v203 != 2)
                    {
                      0xE400000000000000, v158, v159, v160, v161, v162, v163, v164;
LABEL_36:
                      v157 = v330;
                      goto LABEL_37;
                    }

                    v232 = 0xED0000656D614E6CLL;
                  }

                  else
                  {
                    v232 = 0xEC00000065746144;
                    if (v203)
                    {
                      v232 = 0xEB00000000656D61;
                    }
                  }

                  v259 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v232, v260, v261, v262, v263, v264, v265, v266;
                  if (v259)
                  {
                    goto LABEL_36;
                  }
                }

                if (v325)
                {
                  if (v203 <= 1u)
                  {
                    v267 = 0xEC00000065746144;
                    if (v203)
                    {
                      v267 = 0xEB00000000656D61;
                    }

                    goto LABEL_86;
                  }

                  if (v203 == 2)
                  {
                    v267 = 0xED0000656D614E6CLL;
LABEL_86:
                    v268 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v267, v269, v270, v271, v272, v273, v274, v275;
                    v157 = v330;
                    if ((v268 & 1) == 0 && v231 != -1)
                    {
                      goto LABEL_37;
                    }
                  }

                  else
                  {
                    0xE400000000000000, v158, v159, v160, v161, v162, v163, v164;
                    v157 = v330;
                  }

LABEL_96:
                  sub_10059FC28(v336, v322, v324, v323);
                  goto LABEL_37;
                }

                v157 = v330;
                if (v231 == -1)
                {
                  goto LABEL_96;
                }

LABEL_37:
                if (++v166 == v332)
                {
                  goto LABEL_101;
                }
              }
            }
          }

          else
          {
            v111, v114, v115, v116, v117, v118, v119, v120;
          }

          v113, v130, v131, v132, v133, v134, v135, v136;
        }
      }
    }

    v147 = _swiftEmptySetSingleton;
    goto LABEL_32;
  }

  v22 = type metadata accessor for Date();
  CKRecordKeyValueSetting.subscript.getter();
  v23 = *(v22 - 8);
  isa = 0;
  if ((*(v23 + 48))(v12, 1, v22) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v23 + 8))(v12, v22);
  }

  v25 = v322;
  [v322 setCreationDate:isa];

  LOBYTE(v334) = 1;
  v26 = v25;
  v27 = v324;
  sub_10059FC28(&v334, v26, v324, v323);
  v28 = [v27 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  swift_unknownObjectRelease();
  v29 = v335;
  if (v335)
  {
    v30 = String._bridgeToObjectiveC()();
    v29, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    v30 = 0;
  }

  v155 = v322;
  [v322 setCanonicalName:v30];

  LOBYTE(v334) = 3;
  sub_10059FC28(&v334, v155, v324, v323);
  v329 = sub_1004DBE24(v326, 1);
LABEL_102:
}

void sub_1004EA734(void *a1, void *a2, void *a3, void *a4)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v298 = a1;
  CKRecordKeyValueSetting.subscript.getter();
  v7, v8, v9, v10, v11, v12, v13, v14;
  if ((v304 & 1) == 0 && v303 == 1)
  {
    LOBYTE(v303) = 0;
    sub_10071D4BC(&v303, a3, a4);
    LOBYTE(v303) = 1;
    sub_10071D4BC(&v303, a3, a4);
    LOBYTE(v303) = 2;
    sub_10071D4BC(&v303, a3, a4);
    LOBYTE(v303) = 3;
    sub_10071D4BC(&v303, a3, a4);
    LOBYTE(v303) = 4;
    sub_10071D4BC(&v303, a3, a4);
    LOBYTE(v303) = 5;
    sub_10071D4BC(&v303, a3, a4);
    LOBYTE(v303) = 6;
    sub_10071D4BC(&v303, a3, a4);
    LOBYTE(v303) = 7;
    sub_10071D4BC(&v303, a3, a4);
    LOBYTE(v303) = 8;
    sub_10071D4BC(&v303, a3, a4);
    LOBYTE(v303) = 9;
    sub_10071D4BC(&v303, a3, a4);

    return;
  }

  v15 = sub_1004DC5B0(a1, 0);
  v295 = v15;
  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    CKRecordKeyValueSetting.subscript.getter();
    v18, v19, v20, v21, v22, v23, v24, v25;
    if ((v304 & 1) != 0 || v303 != 1 || ![a2 markedForDeletion])
    {
      if (qword_100936300 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_13;
    }

    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_10094A590);
    v27 = a1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      *v30 = 136446466;
      v31 = CKRecord.recordType.getter();
      v33 = v32;
      v34 = sub_10000668C(v31, v32, &v303);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v42 = [v27 recordID];
      v43 = [v42 ckShortDescription];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10000668C(v44, v46, &v303);
      v48 = v46;
      v15 = v295;
      v48, v49, v50, v51, v52, v53, v54, v55;
      *(v30 + 14) = v47;
      v56 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
      goto LABEL_15;
    }

LABEL_16:
  }

  if ([a2 shouldPerformCloudSchemaCatchUpSync])
  {
    v84 = [a2 storeControllerManagedObjectContext];
    if (v84)
    {
      v85 = v84;
      v86 = [a2 accountCKIdentifier];
      if (v86)
      {
        v87 = v86;
        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;

        v91 = [v85 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
        sub_1000060C8(0, &unk_10094A618, off_1008D4110);
        v92 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v92 + 16))
        {
          v100 = sub_100005F4C(v88, v90);
          v102 = v101;
          v90, v101, v103, v104, v105, v106, v107, v108;
          if (v102)
          {
            v116 = *(*(v92 + 56) + 8 * v100);
            v92, v117, v118, v119, v120, v121, v122, v123;
            v124 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a2 persistenceCloudSchemaVersion:{objc_msgSend(v116, "persistenceCloudSchemaVersion")}];
            v125 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v126 = sub_1001A5660(v125);
            v125, v127, v128, v129, v130, v131, v132, v133;
            goto LABEL_27;
          }
        }

        else
        {
          v90, v93, v94, v95, v96, v97, v98, v99;
        }

        v92, v109, v110, v111, v112, v113, v114, v115;
      }
    }
  }

  v126 = _swiftEmptySetSingleton;
LABEL_27:
  v299 = [a2 createResolutionTokenMapIfNecessary];
  v134 = [v15 getTokenKeys];
  v135 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v301 = *(v135 + 16);
  if (v301)
  {
    v144 = 0;
    v300 = v135 + 32;
    v302 = v126 + 7;
    *&v143 = 136446466;
    v292 = v143;
    v293 = a2;
    v294 = v135;
    do
    {
      if (v144 >= *(v135 + 16))
      {
        __break(1u);
LABEL_68:
        swift_once();
LABEL_13:
        v57 = type metadata accessor for Logger();
        sub_100006654(v57, qword_10094A590);
        v58 = v298;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v303 = swift_slowAlloc();
          *v30 = 136446466;
          v59 = CKRecord.recordType.getter();
          v61 = v60;
          v62 = sub_10000668C(v59, v60, &v303);
          v61, v63, v64, v65, v66, v67, v68, v69;
          *(v30 + 4) = v62;
          *(v30 + 12) = 2082;
          v70 = [v58 recordID];
          v71 = [v70 ckShortDescription];

          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v73;

          v75 = sub_10000668C(v72, v74, &v303);
          v76 = v74;
          v15 = v295;
          v76, v77, v78, v79, v80, v81, v82, v83;
          *(v30 + 14) = v75;
          v56 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v28, v29, v56, v30, 0x16u);
          swift_arrayDestroy();
        }

        goto LABEL_16;
      }

      v145 = (v300 + 16 * v144);
      v147 = *v145;
      v146 = v145[1];
      swift_bridgeObjectRetain_n();
      v148._countAndFlagsBits = v147;
      v148._object = v146;
      v149 = _findStringSwitchCase(cases:string:)(&off_1008DE928, v148);
      v146, v150, v151, v152, v153, v154, v155, v156;
      if (v149 > 9)
      {
        v194._countAndFlagsBits = v147;
        v194._object = v146;
        if (_findStringSwitchCase(cases:string:)(&off_1008DEA38, v194))
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v202 = type metadata accessor for Logger();
          sub_100006654(v202, qword_10094A590);
          v203 = v298;

          v204 = Logger.logObject.getter();
          v205 = static os_log_type_t.error.getter();

          v146, v206, v207, v208, v209, v210, v211, v212;
          if (os_log_type_enabled(v204, v205))
          {
            v220 = swift_slowAlloc();
            v303 = swift_slowAlloc();
            *v220 = 136446722;
            v221 = sub_10000668C(v147, v146, &v303);
            v146, v222, v223, v224, v225, v226, v227, v228;
            *(v220 + 4) = v221;
            *(v220 + 12) = 2082;
            v229 = CKRecord.recordType.getter();
            v231 = v230;
            v232 = sub_10000668C(v229, v230, &v303);
            v231, v233, v234, v235, v236, v237, v238, v239;
            *(v220 + 14) = v232;
            *(v220 + 22) = 2082;
            *v305 = &_s6FieldsON_7;
            sub_1000F5104(&qword_10094A610, &qword_1007AE8C8);
            v240 = String.init<A>(reflecting:)();
            v242 = v241;
            v243 = sub_10000668C(v240, v241, &v303);
            v242, v244, v245, v246, v247, v248, v249, v250;
            *(v220 + 24) = v243;
            _os_log_impl(&_mh_execute_header, v204, v205, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v220, 0x20u);
            swift_arrayDestroy();
            v135 = v294;

            v15 = v295;
          }

          else
          {
            v146, v213, v214, v215, v216, v217, v218, v219;
          }

          a2 = v293;
        }

        else
        {
          v146, v195, v196, v197, v198, v199, v200, v201;
        }
      }

      else
      {
        v305[0] = v149;
        if ([a2 shouldPerformCloudSchemaCatchUpSync])
        {
          v157 = sub_10071A064(v149);
          v165 = v158;
          if (v126[2])
          {
            v166 = v157;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v167 = Hasher._finalize()();
            v168 = -1 << *(v126 + 32);
            v169 = v167 & ~v168;
            if ((*(v302 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169))
            {
              v170 = ~v168;
              while (1)
              {
                v171 = (v126[6] + 16 * v169);
                v158 = v171[1];
                v172 = *v171 == v166 && v158 == v165;
                if (v172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v169 = (v169 + 1) & v170;
                if (((*(v302 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) == 0)
                {
                  goto LABEL_43;
                }
              }

              v165, v158, v159, v160, v161, v162, v163, v164;
              if (qword_100936300 != -1)
              {
                swift_once();
              }

              v251 = type metadata accessor for Logger();
              sub_100006654(v251, qword_10094A590);

              v252 = a2;
              v253 = Logger.logObject.getter();
              v254 = static os_log_type_t.default.getter();

              v146, v255, v256, v257, v258, v259, v260, v261;
              if (os_log_type_enabled(v253, v254))
              {
                v262 = swift_slowAlloc();
                v303 = swift_slowAlloc();
                *v262 = v292;
                *(v262 + 4) = sub_10000668C(v147, v146, &v303);
                *(v262 + 12) = 2082;
                v263 = [v252 remObjectID];
                if (v263)
                {
                  v264 = v263;
                  v265 = [v263 description];

                  v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v268 = v267;
                }

                else
                {
                  v268 = 0xE300000000000000;
                  v266 = 7104878;
                }

                v269 = sub_10000668C(v266, v268, &v303);
                v268, v270, v271, v272, v273, v274, v275, v276;
                *(v262 + 14) = v269;
                _os_log_impl(&_mh_execute_header, v253, v254, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v262, 0x16u);
                swift_arrayDestroy();

                a2 = v293;
              }

              else
              {
              }

              v15 = v295;
              sub_10071D4BC(v305, a3, a4);
              v277 = String._bridgeToObjectiveC()();
              v146, v278, v279, v280, v281, v282, v283, v284;
              [v299 forceMergeFromMap:v295 forKey:v277];

              v135 = v294;
              goto LABEL_30;
            }
          }

LABEL_43:
          v165, v158, v159, v160, v161, v162, v163, v164;
          v135 = v294;
          v15 = v295;
        }

        v173 = String._bridgeToObjectiveC()();
        v146, v174, v175, v176, v177, v178, v179, v180;
        v181 = [v299 compareAndMergeWithMap:v15 forKey:v173];

        if (sub_10018F5D8(v149, &off_1008DEA70, v182, v183, v184, v185, v186, v187) && v181 || !sub_10018F5D8(v149, &off_1008DEA98, v188, v189, v190, v191, v192, v193) && v181 == -1)
        {
          sub_10071D4BC(v305, a3, a4);
        }
      }

LABEL_30:
      ++v144;
    }

    while (v144 != v301);
  }

  v126, v136, v137, v138, v139, v140, v141, v142;
  v135, v285, v286, v287, v288, v289, v290, v291;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004EB4B0(void *a1)
{
  if (a1)
  {
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    sub_1001AADC4();
    v2 = a1;
    v3 = Sequence.elements<A>(ofType:)();
    v11 = v3;
    v12 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_23:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13)
      {
LABEL_4:
        v14 = 0;
        v15 = &_swiftEmptyArrayStorage;
        do
        {
          v16 = v14;
          while (1)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *(v12 + 16))
              {
                goto LABEL_22;
              }

              v17 = *(v11 + 8 * v16 + 32);
            }

            v18 = v17;
            v14 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v19 = [v17 ckIdentifier];
            if (v19)
            {
              break;
            }

            ++v16;
            if (v14 == v13)
            {
              goto LABEL_25;
            }
          }

          v28 = v2;
          v20 = v19;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v22;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_100365788(0, *v15->clientIdentity + 1, 1, v15, v7, v8, v9, v10);
          }

          v24 = *v15->clientIdentity;
          v23 = *&v15->clientIdentity[8];
          if (v24 >= v23 >> 1)
          {
            v15 = sub_100365788((v23 > 1), v24 + 1, 1, v15, v7, v8, v9, v10);
          }

          *v15->clientIdentity = v24 + 1;
          v25 = v15 + 16 * v24;
          v2 = v28;
          *(v25 + 4) = v21;
          *(v25 + 5) = v27;
        }

        while (v14 != v13);
        goto LABEL_25;
      }
    }

    else
    {
      v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_4;
      }
    }

    v15 = &_swiftEmptyArrayStorage;
LABEL_25:
    v11, v4, v5, v6, v7, v8, v9, v10;

    return v15;
  }

  return &_swiftEmptyArrayStorage;
}

NSObject *sub_1004EB6C8(void *a1, uint64_t a2, unint64_t a3, NSObject *a4, unint64_t a5, NSObject *a6, _TtC7remindd19RDXPCStorePerformer *a7, void *a8)
{

  return sub_1000616D4(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1004EB724()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A680);
  v1 = sub_100006654(v0, qword_10094A680);
  if (qword_100936470 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004EB7EC()
{
  sub_1000F5104(&qword_10094A740, &unk_1007AE960);
  swift_allocObject();
  return PassthroughSubject.init()();
}

void sub_1004EB830(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8 = *a2;
  sub_1004EBE00(a3, a4, a5);
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v72 = v13;
  v75 = v8;
  while (v12)
  {
    v15 = v14;
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(v8 + 48) + 24 * (v16 | (v15 << 6));
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    *(swift_allocObject() + 16) = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;
    v21 = v19;
    v22 = v18;

    v66 = v20;
    REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

    v23 = v77;
    if (v77)
    {
      v68 = v76;
      v24 = String._bridgeToObjectiveC()();
      [a8 giveAccountWithIDAnotherChance:{v24, 0, 0, 0, 0, sub_1004EBF68, v66, 0, 0, &type metadata for String}];

      if (qword_100936308 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006654(v25, qword_10094A680);
      v26 = v22;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      v23, v29, v30, v31, v32, v33, v34, v35;
      if (os_log_type_enabled(v27, v28))
      {
        v36 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v36 = 136446466;
        log = v27;
        v37 = sub_10000668C(v68, v23, &v76);
        v23, v38, v39, v40, v41, v42, v43, v44;
        *(v36 + 4) = v37;
        *(v36 + 12) = 2082;
        v45 = [v26 internalDescription];
        v69 = v26;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = sub_10000668C(v46, v48, &v76);
        v48, v50, v51, v52, v53, v54, v55, v56;
        *(v36 + 14) = v49;
        v27 = log;
        _os_log_impl(&_mh_execute_header, log, v28, "RDDisabledAccountsEventHandler did reset babysitter for {babysittableWaiterID: %{public}s, accountTypeHost: %{public}s}", v36, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v23, v57, v58, v59, v60, v61, v62, v63;
      }

      v14 = v15;
      v8 = v75;
      v13 = v72;
    }

    else
    {

      v14 = v15;
      v13 = v72;
      v8 = v75;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v64 = *(a1 + 16);
  if (v64)
  {
    v65 = *(a1 + 24);

    v64(v8);
    sub_10003E114(v64, v65);
  }
}

uint64_t sub_1004EBC88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = UUID.uuidString.getter();
  v13 = v12;
  result = (*(v5 + 8))(v9, v4);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1004EBD9C()
{
  sub_10003E114(*(v0 + 16), *(v0 + 24));
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

void sub_1004EBE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(0, 0xF000000000000000, ObjectType, a2);
  (*(a3 + 16))(0, 0xF000000000000000, ObjectType, a3);
  if (qword_100936308 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094A680);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "RDDisabledAccountsEventHandler did reset accountsListCategorizedCountsCache and hashtagLabelsInCustomSmartListFilterCache", v8, 2u);
  }
}

double sub_1004EBF68@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_1004EBF88()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A748);
  v1 = sub_100006654(v0, qword_10094A748);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004EC2B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RDXPCIndexingPerformer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004EC320(uint64_t a1, uint64_t a2)
{
  v110 = a1;
  v111 = a2;
  v2 = type metadata accessor for Date();
  v112 = *(v2 - 8);
  v113 = v2;
  __chkstk_darwin(v2, v3);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v108 - v13;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = REMAppBundleIdentifier;
  v18 = objc_allocWithZone(CSSearchableIndex);
  v19 = v17;
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v16, v22, v23, v24, v25, v26, v27, v28;
  v109 = [v18 initWithName:v20 protectionClass:v21 bundleIdentifier:v19];

  static UTType.image.getter();
  UTType.identifier.getter();
  v30 = v29;
  v31 = *(v7 + 8);
  v31(v14, v6);
  v32 = objc_allocWithZone(CSSearchableItemAttributeSet);
  v33 = String._bridgeToObjectiveC()();
  v30, v34, v35, v36, v37, v38, v39, v40;
  v41 = [v32 initWithItemContentType:v33];

  v42 = String._bridgeToObjectiveC()();
  [v41 setTitle:v42];

  v108 = v5;
  Date.init()();
  v43 = objc_opt_self();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v45 = [v43 localizedStringFromDate:isa dateStyle:1 timeStyle:1];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  aBlock = 0;
  v115 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);
  v115, v49, v50, v51, v52, v53, v54, v55;
  aBlock = 0xD000000000000016;
  v115 = 0x80000001007FAE50;
  v56._countAndFlagsBits = v46;
  v56._object = v48;
  String.append(_:)(v56);
  v48, v57, v58, v59, v60, v61, v62, v63;
  v64 = v115;
  v65 = String._bridgeToObjectiveC()();
  v64, v66, v67, v68, v69, v70, v71, v72;
  [v41 setContentDescription:v65];

  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_100791340;
  static UTType.utf8PlainText.getter();
  v74 = UTType.identifier.getter();
  v76 = v75;
  v31(v14, v6);
  *(v73 + 32) = v74;
  *(v73 + 40) = v76;
  static UTType.utf16PlainText.getter();
  v77 = UTType.identifier.getter();
  v79 = v78;
  v31(v10, v6);
  *(v73 + 48) = v77;
  *(v73 + 56) = v79;
  v80 = Array._bridgeToObjectiveC()().super.isa;
  v73, v81, v82, v83, v84, v85, v86, v87;
  [v41 setProviderDataTypeIdentifiers:v80];

  v88 = objc_allocWithZone(CSSearchableItem);
  v89 = v41;
  v90 = String._bridgeToObjectiveC()();
  v91 = String._bridgeToObjectiveC()();
  v92 = [v88 initWithUniqueIdentifier:v90 domainIdentifier:v91 attributeSet:v89];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1007953F0;
  *(v93 + 32) = v92;
  sub_1004ECD94();
  v94 = v92;
  v95 = Array._bridgeToObjectiveC()().super.isa;
  v93, v96, v97, v98, v99, v100, v101, v102;
  v103 = swift_allocObject();
  v104 = v111;
  *(v103 + 16) = v110;
  *(v103 + 24) = v104;
  v118 = sub_100189954;
  v119 = v103;
  aBlock = _NSConcreteStackBlock;
  v115 = 1107296256;
  v116 = sub_100042968;
  v117 = &unk_1008F4EA0;
  v105 = _Block_copy(&aBlock);

  v106 = v109;
  [v109 indexSearchableItems:v95 completionHandler:v105];
  _Block_release(v105);

  return (*(v112 + 8))(v108, v113);
}

uint64_t sub_1004EC934(uint64_t a1, uint64_t a2)
{
  if (qword_100936310 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094A748);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Daemon receives reindexAllSearchableItems", v7, 2u);
  }

  [*(a1 + OBJC_IVAR____TtC7remindd22RDXPCIndexingPerformer_storeController) reindexAllSearchableItems];
  v8 = *(a2 + 16);

  return v8(a2);
}

uint64_t sub_1004ECA50(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100936310 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094A748);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  a1, v9, v10, v11, v12, v13, v14, v15;
  if (os_log_type_enabled(v7, v8))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136315138;
    v18 = Array.description.getter();
    v20 = v19;
    v21 = sub_10000668C(v18, v19, &v33);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Daemon receives reindexSearchableItems {identifiers: %s}", v16, 0xCu);
    sub_10000607C(v17);
  }

  v29 = *(a2 + OBJC_IVAR____TtC7remindd22RDXPCIndexingPerformer_storeController);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v29 reindexSearchableItemsWithIdentifiers:isa];

  v31 = *(a3 + 16);

  return v31(a3);
}

void sub_1004ECC18(void *a1, uint64_t a2)
{
  v4 = REMDaemonCoreSpotlightIndexName;
  v5 = static NSFileProtectionType.rem_spotlightIndexFileProtection.getter();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = REMAppBundleIdentifier;
    v10 = String._bridgeToObjectiveC()();
    v8, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v9 = REMAppBundleIdentifier;
    v10 = 0;
  }

  v18 = [objc_allocWithZone(CSSearchableIndex) initWithName:v4 protectionClass:v10 bundleIdentifier:v9];

  if (a1)
  {
    v19[4] = a1;
    v19[5] = a2;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_100042968;
    v19[3] = &unk_1008F4E28;
    a1 = _Block_copy(v19);
  }

  [v18 deleteAllSearchableItemsWithCompletionHandler:a1];
  _Block_release(a1);
}

unint64_t sub_1004ECD94()
{
  result = qword_10094A790;
  if (!qword_10094A790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094A790);
  }

  return result;
}

id REMCDDueDateDeltaAlert.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDDueDateDeltaAlert.remChangedObjectID()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24[1] = ObjectType;
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v11 = v10;
  v12 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();
  v11, v15, v16, v17, v18, v19, v20, v21;
  v22 = [v12 initWithUUID:isa entityName:v14];

  (*(v4 + 8))(v8, v3);
  return v22;
}

uint64_t sub_1004ED154()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A7C0);
  v1 = sub_100006654(v0, qword_10094A7C0);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004ED21C()
{
  _StringGuts.grow(_:)(26);
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v7._object;
  String.append(_:)(v7);
  object, v9, v10, v11, v12, v13, v14, v15;
  v16._countAndFlagsBits = 0x646E696D6572202CLL;
  v16._object = 0xED0000203A737265;
  String.append(_:)(v16);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17._object;
  String.append(_:)(v17);
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26._countAndFlagsBits = 125;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  return 0x203A737473696C7BLL;
}

uint64_t sub_1004ED328(void *a1)
{
  *(v1 + 16) = xmmword_1007AE9C0;
  *(v1 + 64) = 1;
  *(v1 + 72) = &_swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 32) = 0x80000001007FB080;
  *(v1 + 40) = a1;
  [a1 setMode:4];
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  return v1;
}

void sub_1004ED390(_TtC7remindd19RDXPCStorePerformer *a1, void *a2)
{
  v4 = a1;
  if (![(RDXPCStorePerformer *)a1 inactive])
  {
LABEL_17:
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_10094A7C0);
    v30 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v32 = [(RDXPCStorePerformer *)v4 objectID];
    *(inited + 72) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(inited + 48) = v32;
    v33 = sub_1001F67C8(inited);
    inited, v34, v35, v36, v37, v38, v39, v40;
    v41 = "RDAccountDataMover: The copy-from account is an inactivated account {%{public}@}.";
    v42 = 81;
LABEL_23:
    sub_10054573C(v41, v42, 2, v30, v33);
    __break(1u);
    return;
  }

  if ([(RDXPCStorePerformer *)v4 type]!= 3)
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100006654(v43, qword_10094A7C0);
    v30 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_100791300;
    *(v44 + 32) = 48;
    *(v44 + 40) = 0xE100000000000000;
    v45 = [(RDXPCStorePerformer *)v4 objectID];
    *(v44 + 72) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(v44 + 48) = v45;
    v33 = sub_1001F67C8(v44);
    v44, v46, v47, v48, v49, v50, v51, v52;
    v41 = "RDAccountDataMover: The copy-from account is not a CalDAV account {%{public}@}.";
    v42 = 79;
    goto LABEL_23;
  }

  if ([a2 type] == 1 || objc_msgSend(a2, "type") == 5 || !objc_msgSend(a2, "type"))
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10094A7C0);
    v4 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_100791300;
    *(v19 + 32) = 48;
    *(v19 + 40) = 0xE100000000000000;
    v20 = [a2 objectID];
    *(v19 + 72) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(v19 + 48) = v20;
    v21 = sub_1001F67C8(v19);
    v19, v22, v23, v24, v25, v26, v27, v28;
    sub_10054573C("RDAccountDataMover: The copy-to account is not a cloud account type {%{public}@}.", 81, 2, v4, v21);
    __break(1u);
    goto LABEL_17;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = sub_1004F059C();
  if (!v2)
  {
    v7 = v6;
    sub_1004EDD70(v4, a2, v7);
    v8 = [v7 updateAccount:a2];
    [v8 setDaWasMigrated:1];
    sub_1004F0264();
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094A7C0);
    v10 = v4;
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v53 = v12;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543618;
      v16 = [(RDXPCStorePerformer *)v10 objectID];
      *(v14 + 4) = v16;
      *v15 = v16;
      *(v14 + 12) = 2114;
      v17 = [v11 objectID];
      *(v14 + 14) = v17;
      v15[1] = v17;
      _os_log_impl(&_mh_execute_header, v53, v13, "RDAccountDataMover: Copied data from inactivated account, saved all changes and set .daWasMigrated=YES to cloud account {inactivatedAccount: %{public}@, cloudAccount: %{public}@}", v14, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      v12 = v53;
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1004ED92C(void *a1, void *a2)
{
  if ([a1 type] != 1)
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_10094A7C0);
    v17 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v32 = [a1 objectID];
    *(inited + 72) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(inited + 48) = v32;
    v20 = sub_1001F67C8(inited);
    inited, v33, v34, v35, v36, v37, v38, v39;
    v28 = "RDAccountDataMover: The copy-from account is not a local account {%{public}@}.";
    v29 = 78;
    goto LABEL_19;
  }

  if ([a2 type] == 1 || objc_msgSend(a2, "type") == 5 || !objc_msgSend(a2, "type"))
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094A7C0);
    v17 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_100791300;
    *(v18 + 32) = 48;
    *(v18 + 40) = 0xE100000000000000;
    v19 = [a2 objectID];
    *(v18 + 72) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(v18 + 48) = v19;
    v20 = sub_1001F67C8(v18);
    v18, v21, v22, v23, v24, v25, v26, v27;
    v28 = "RDAccountDataMover: The copy-to account is not a cloud account type {%{public}@}.";
    v29 = 81;
LABEL_19:
    sub_10054573C(v28, v29, 2, v17, v20);
    __break(1u);
    return;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = sub_1004F059C();
  if (!v2)
  {
    v7 = v6;
    sub_1004EDD70(a1, a2, v7);
    v8 = [v7 updateAccount:a2];
    [v8 setDaWasMigrated:1];
    sub_1004F0264();
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094A7C0);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = [v10 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "RDAccountDataMover: Saved all changes and set .daWasMigrated=YES to cloud account {cloudAccount: %{public}@}", v13, 0xCu);
      sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1004EDD70(void *a1, id a2, void *a3)
{
  v5 = v4;
  v207 = a3;
  *&v203 = type metadata accessor for UUID();
  v8 = *(v203 - 8);
  __chkstk_darwin(v203, v9);
  v202 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = v3;
  v3[6] = 0;
  v3[7] = 0;
  *&v204 = v3 + 6;
  v11 = v3[5];
  v12 = [objc_opt_self() localAccountDefaultListID];
  v218 = 0;
  v13 = [v11 fetchListWithObjectID:v12 error:&v218];

  v14 = &selRef_hack_willSaveHandled;
  if (v13)
  {
    v15 = v218;
    v206 = v13;
    v16 = [v13 account];
    v17 = [v16 objectID];

    v18 = a2;
    v19 = [a2 objectID];
    v20 = v19;
    if (v17)
    {
      if (v19)
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v21 = static NSObject.== infix(_:_:)();

        if (v21)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    else
    {
      if (!v19)
      {
LABEL_11:
        a2 = v18;
        goto LABEL_12;
      }
    }

    v206 = 0;
    goto LABEL_11;
  }

  v22 = v218;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v206 = 0;
  v5 = 0;
LABEL_12:
  v218 = 0;
  v23 = [a1 fetchListsWithError:&v218];
  v24 = v218;
  if (!v23)
  {
    v128 = v218;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_61;
  }

  v25 = v23;
  v208 = sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v24;

  if (v26 >> 62)
  {
    goto LABEL_111;
  }

  v36 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  if (v36)
  {
    if (v36 < 1)
    {
      goto LABEL_115;
    }

    v210 = a2;
    a2 = 0;
    v216 = v26 & 0xC000000000000001;
    v201 = (v8 + 2);
    v211 = _swiftEmptyDictionarySingleton;
    *&v35 = 138543362;
    v212 = v35;
    *&v35 = 138543618;
    v200 = v35;
    v214 = v36;
    v215 = v26;
    while (1)
    {
      if (v216)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v26 + 8 * a2 + 32);
      }

      v39 = v38;
      if (qword_100936318 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100006654(v40, qword_10094A7C0);
      v8 = v39;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = v212;
        v45 = [v8 *(v14 + 3464)];
        *(v43 + 4) = v45;
        *v44 = v45;
        _os_log_impl(&_mh_execute_header, v41, v42, "RDAccountDataMover: Processing source list to consider... {objectID: %{public}@}", v43, 0xCu);
        sub_1000050A4(v44, &unk_100938E70, &unk_100797230);
        v36 = v214;

        v26 = v215;
      }

      if ([v8 daIsEventOnlyContainer])
      {
        goto LABEL_20;
      }

      if ([v8 daIsNotificationsCollection])
      {
        goto LABEL_20;
      }

      v46 = [v210 capabilities];
      v47 = [v46 supportsGroups];

      if (v47 & 1) == 0 && ([v8 isGroup])
      {
        goto LABEL_20;
      }

      if ([v8 sharingStatus] == 3)
      {
        goto LABEL_20;
      }

      if (*(v213 + 64) != 1 || ![v8 isSharedToMe])
      {
        break;
      }

      v8 = v8;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = v212;
        v52 = [v8 *(v14 + 3464)];
        *(v50 + 4) = v52;
        *v51 = v52;
        _os_log_impl(&_mh_execute_header, v48, v49, "RDAccountDataMover: we chose to exclude this source list since someone else owns it {objectID: %{public}@}", v50, 0xCu);
        sub_1000050A4(v51, &unk_100938E70, &unk_100797230);

        v26 = v215;

        v37 = v48;
      }

      else
      {
        v37 = v8;
        v8 = v48;
      }

LABEL_19:

      v36 = v214;
LABEL_20:
      a2 = a2 + 1;

      if (v36 == a2)
      {
        goto LABEL_63;
      }
    }

    v205 = [v207 updateAccount:v210];
    if (v206)
    {
      v209 = v5;
      v53 = v206;
      v54 = [v8 name];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = [v53 name];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      if (v55 == v59 && v57 == v61)
      {
        v57, v62, v63, v64, v65, v66, v67, v68;
        v61, v69, v70, v71, v72, v73, v74, v75;
        v14 = 0x100929000;
LABEL_42:
        v91 = [v207 updateList:v53];
        v5 = v209;
        v26 = v215;
LABEL_48:
        v101 = v91;

        [v101 copyListDataFrom:v8];
        if (*(v213 + 80) == 1)
        {
          v102 = [v8 *(v14 + 3464)];
          v103 = [v102 uuid];

          v104 = v202;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          UUID.uuidString.getter();
          v106 = v105;
          (*v201)(v104, v203);
          v107 = String._bridgeToObjectiveC()();
          v108 = v106;
          v26 = v215;
          v108, v109, v110, v111, v112, v113, v114, v115;
          [v101 setExternalIdentifier:v107];
        }

        if (*(v213 + 81) == 1)
        {
          [v101 setSharingStatus:{objc_msgSend(v8, "sharingStatus")}];
        }

        v116 = [v101 *(v14 + 3464)];
        v117 = v211;
        if ((v211 & 0xC000000000000001) != 0)
        {
          if (v211 >= 0)
          {
            v117 = (v211 & 0xFFFFFFFFFFFFFF8);
          }

          v118 = v8;
          v119 = __CocoaDictionary.count.getter();
          if (__OFADD__(v119, 1))
          {
            __break(1u);
LABEL_115:
            __break(1u);
          }

          v117 = sub_10021DDFC(v117, v119 + 1);
        }

        else
        {
          v120 = v8;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v218 = v117;
        sub_1002C9CF4(v8, v116, isUniquelyReferenced_nonNull_native);

        v211 = v218;
        v37 = v8;
        v8 = v101;
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          *v124 = v200;
          v126 = [v37 *(v14 + 3464)];
          *(v124 + 4) = v126;
          *v125 = v126;
          *(v124 + 12) = 2114;
          v127 = [v8 *(v14 + 3464)];
          *(v124 + 14) = v127;
          v125[1] = v127;
          _os_log_impl(&_mh_execute_header, v122, v123, "RDAccountDataMover: Done copying source list {sourceList: %{public}@, targetList: %{public}@}", v124, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
          v26 = v215;
        }

        else
        {

          v37 = v122;
          v8 = v205;
        }

        goto LABEL_19;
      }

      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v57, v77, v78, v79, v80, v81, v82, v83;
      v61, v84, v85, v86, v87, v88, v89, v90;
      v14 = &selRef_hack_willSaveHandled;
      if (v76)
      {
        goto LABEL_42;
      }

      v5 = v209;
      v26 = v215;
    }

    v53 = [v8 name];
    if (!v53)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;
      v53 = String._bridgeToObjectiveC()();
      v93, v94, v95, v96, v97, v98, v99, v100;
    }

    v91 = [v207 addListWithName:v53 toAccountChangeItem:v205];
    goto LABEL_48;
  }

  v211 = _swiftEmptyDictionarySingleton;
LABEL_63:
  v26, v28, v29, v30, v31, v32, v33, v34;
  if (qword_100936318 != -1)
  {
    swift_once();
  }

  v129 = type metadata accessor for Logger();
  v130 = sub_100006654(v129, qword_10094A7C0);
  v131 = v207;
  v207 = v130;
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.info.getter();
  v14 = &selRef_attachmentRepresentationAndReturnError_;
  v134 = &selRef_accountStatusWithCompletionHandler_;
  if (os_log_type_enabled(v132, v133))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v135 = [v131 trackedListChangeItems];
    a2 = [v135 count];

    *(v8 + 1) = a2;
    _os_log_impl(&_mh_execute_header, v132, v133, "RDAccountDataMover: Source lists processed {count: %ld}", v8, 0xCu);
  }

  else
  {

    v132 = v131;
  }

  v136 = [v131 trackedListChangeItems];
  v137 = [v136 count];

  if (__OFADD__(*v204, v137))
  {
    __break(1u);
LABEL_113:
    v26 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_72;
  }

  *v204 += v137;
  v14 = v211;

  v134 = sub_100278BC4(v138);
  v14, v139, v140, v141, v142, v143, v144, v145;
  if ((v134 & 0x8000000000000000) != 0 || (v134 & 0x4000000000000000) != 0)
  {
    goto LABEL_113;
  }

  v26 = *v134->clientIdentity;
LABEL_72:
  if (!v26)
  {
LABEL_107:

    v14, v193, v194, v195, v196, v197, v198, v199;
    return;
  }

  *&v212 = v131;
  v147 = 0;
  v215 = v14 & 0xC000000000000001;
  v216 = v134 & 0xC000000000000001;
  v148 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 < 0)
  {
    v148 = v14;
  }

  v214 = v148;
  *&v146 = 138543362;
  v204 = v146;
  *&v146 = 138543618;
  v203 = v146;
  v205 = v134;
  v210 = v26;
  while (1)
  {
    if (v216)
    {
      v151 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v147 >= *v134->clientIdentity)
      {
        goto LABEL_110;
      }

      v151 = *&v134->clientIdentity[8 * v147 + 16];
    }

    v8 = v151;
    a2 = (v147 + 1);
    if (__OFADD__(v147, 1))
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      v36 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (!v215)
    {
      break;
    }

    v152 = v151;
    v153 = __CocoaDictionary.lookup(_:)();

    if (!v153)
    {
      goto LABEL_80;
    }

    v217 = v153;
    swift_dynamicCast();
    v154 = v218;
    if (v218)
    {
      goto LABEL_93;
    }

LABEL_79:
    v26 = v210;
LABEL_80:

    ++v147;
    if (a2 == v26)
    {
      goto LABEL_107;
    }
  }

  if (!*(v14 + 16))
  {
    goto LABEL_80;
  }

  v155 = sub_10002B924(v151);
  if ((v156 & 1) == 0)
  {
    goto LABEL_80;
  }

  v154 = *(*(v14 + 56) + 8 * v155);
  if (!v154)
  {
    goto LABEL_79;
  }

LABEL_93:
  v157 = [v212 _trackedListChangeItemForObjectID:{v8, v200}];
  if (!v157)
  {
    v150 = v8;
    v149 = Logger.logObject.getter();
    v190 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v149, v190))
    {
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *v191 = v204;
      *(v191 + 4) = v150;
      *v192 = v150;
      _os_log_impl(&_mh_execute_header, v149, v190, "RDAccountDataMover: Can't find target list change item with {objectID: %{public}@}", v191, 0xCu);
      sub_1000050A4(v192, &unk_100938E70, &unk_100797230);
      v14 = v211;

      v134 = v205;

      v8 = v154;
    }

    else
    {

      v8 = v149;
      v149 = v150;
    }

LABEL_78:

    v8 = v150;
    goto LABEL_79;
  }

  v158 = v157;
  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    v209 = v5;
    v162 = v161;
    v163 = swift_slowAlloc();
    *v162 = v204;
    v164 = [v158 objectID];
    *(v162 + 4) = v164;
    *v163 = v164;
    _os_log_impl(&_mh_execute_header, v159, v160, "RDAccountDataMover: Processing target list to copy reminders into {objectID: %{public}@}", v162, 0xCu);
    sub_1000050A4(v163, &unk_100938E70, &unk_100797230);
    v14 = v211;

    v5 = v209;
  }

  v165 = sub_1004EF900(v154, v158, v212);
  if (!v5)
  {
    if (v165)
    {
      v149 = v154;
      v150 = v158;
    }

    else
    {
      v173 = v213[9];

      v174 = [v154 objectID];
      v218 = v174;
      __chkstk_darwin(v174, v175);
      *(&v200 - 2) = &v218;
      v176 = sub_10032DE90(sub_1004F1508, (&v200 - 2), v173);
      v209 = 0;

      v173, v177, v178, v179, v180, v181, v182, v183;
      if (v176)
      {
        v150 = v8;
        v8 = v154;
        v184 = Logger.logObject.getter();
        v185 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v184, v185))
        {
          v186 = swift_slowAlloc();
          v187 = swift_slowAlloc();
          *v186 = v203;
          v188 = [v8 objectID];
          *(v186 + 4) = v188;
          *(v186 + 12) = 2114;
          *(v186 + 14) = v150;
          *v187 = v188;
          v187[1] = v150;
          v189 = v150;
          _os_log_impl(&_mh_execute_header, v184, v185, "RDAccountDataMover: Source list is denylisted to copy to the target and it does not contain any non-denylisted child reminder {sourceList: %{public}@, targetList: %{public}@}", v186, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
        }

        [v158 removeFromParent];
        v149 = v158;
      }

      else
      {
        v149 = v154;
        v150 = v158;
      }

      v5 = v209;
      v14 = v211;
    }

    v134 = v205;
    goto LABEL_78;
  }

  v14, v166, v167, v168, v169, v170, v171, v172;

LABEL_61:
}

void sub_1004EEEE8(uint64_t a1)
{
  v2 = v1;
  v4 = REMAccount.isConsideredEmpty()();
  if (v5)
  {
    return;
  }

  if (!v4)
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10094A7C0);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v14;
      v19 = swift_slowAlloc();
      *v17 = 138543362;
      v20 = [v18 objectID];
      *(v17 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "RDAccountDataMover: removeData: given account is not empty, now remove its lists and reminders {objectID: %{public}@}", v17, 0xCu);
      sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
      v14 = v18;
    }

    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    v124 = 0;
    v21 = [v14 fetchListsWithError:&v124];
    v22 = v124;
    if (!v21)
    {
      v27 = v124;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v23 = v21;
    sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v22;

    a1 = v2;
    v26 = sub_1004F059C();
    v112 = v24 >> 62;
    v113 = v14;
    v122 = v24 & 0xFFFFFFFFFFFFFF8;
    if (v24 >> 62)
    {
      a1 = v26;
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v26 = a1;
    }

    else
    {
      v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v114 = (v2 + 48);
    v123 = v26;
    if (!v28)
    {
      v29 = 0;
      v115 = 1;
      goto LABEL_53;
    }

    v29 = 0;
    v30 = 0;
    v119 = v28;
    v120 = v24 & 0xC000000000000001;
    v115 = 1;
    while (1)
    {
      v31 = v30;
      while (1)
      {
        if (v120)
        {
          v32 = v24;
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *(v122 + 16))
          {
            goto LABEL_67;
          }

          v32 = v24;
          v33 = *(v24 + 8 * v31 + 32);
        }

        v34 = v33;
        v30 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
        v35 = [v34 objectID];
        v36 = [objc_opt_self() localAccountDefaultListID];
        v37 = static NSObject.== infix(_:_:)();

        if (v37)
        {
          break;
        }

        a1 = [v123 updateList:v34];
        [a1 removeFromParent];

        ++v31;
        v24 = v32;
        if (v30 == v119)
        {
          goto LABEL_53;
        }
      }

      v124 = 0;
      v38 = [v34 fetchRemindersWithError:&v124];
      v39 = v124;
      if (!v38)
      {
        v103 = v124;
        v32, v104, v105, v106, v107, v108, v109, v110;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return;
      }

      v40 = v38;
      sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v39;

      v50 = v41;
      if (v41 >> 62)
      {
        break;
      }

      v118 = v41 & 0xFFFFFFFFFFFFFF8;
      a1 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_30;
      }

LABEL_49:
      v50, v43, v44, v45, v46, v47, v48, v49;

      v24 = v32;
      if (v30 == v119)
      {
LABEL_53:
        sub_1004F0264();
        v62 = v2;
        v63 = v113;

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = v24;
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v126 = v121;
          *v67 = 138543874;
          v69 = [v63 objectID];
          *(v67 + 4) = v69;
          *v68 = v69;
          *(v67 + 12) = 2048;
          if (v112)
          {
            v77 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v77 = *(v122 + 16);
          }

          v66, v70, v71, v72, v73, v74, v75, v76;
          *(v67 + 14) = v77;
          v66, v79, v80, v81, v82, v83, v84, v85;
          *(v67 + 22) = 2080;
          if (v115)
          {
            v86 = 0x80000001007FB190;
            v87 = 0xD000000000000013;
          }

          else
          {
            v124 = v29;
            v125 = 0;
            sub_1000F5104(&qword_10093EBB0, &unk_10079D080);
            v87 = String.init<A>(describing:)();
            v86 = v88;
          }

          v78 = v62;
          v89 = sub_10000668C(v87, v86, &v126);
          v86, v90, v91, v92, v93, v94, v95, v96;
          *(v67 + 24) = v89;
          _os_log_impl(&_mh_execute_header, v64, v65, "RDAccountDataMover: removeData: done removing data from account {objectID: %{public}@, lists.count: %ld, remindersFromDefaultList: %s}", v67, 0x20u);
          sub_1000050A4(v68, &unk_100938E70, &unk_100797230);

          sub_10000607C(v121);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v78 = v62;
        }

        v97 = [v123 trackedListChangeItems];
        v98 = [v97 count];

        if (__OFADD__(*v114, v98))
        {
          __break(1u);
        }

        else
        {
          *(v78 + 48) = &v98[*v114];
          v99 = [v123 trackedReminderChangeItems];
          v100 = [v99 count];

          v101 = *(v78 + 56);
          v60 = __OFADD__(v101, v100);
          v102 = &v100[v101];
          if (!v60)
          {
            *(v78 + 56) = v102;
            return;
          }
        }

        __break(1u);
      }
    }

    v118 = v41 & 0xFFFFFFFFFFFFFF8;
    v61 = _CocoaArrayWrapper.endIndex.getter();
    v50 = v41;
    a1 = v61;
    if (!v61)
    {
      goto LABEL_49;
    }

LABEL_30:
    v116 = v50 & 0xC000000000000001;
    v117 = v50;
    if ((v50 & 0xC000000000000001) == 0)
    {
      if (*(v118 + 16))
      {
        v51 = *(v50 + 32);
        goto LABEL_33;
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_33:
    v52 = v51;
    v53 = [v123 updateReminder:{v51, v2}];
    [v53 removeFromList];

    if (v115)
    {
      v54 = 0;
    }

    else
    {
      v54 = v29;
    }

    v29 = v54 + 1;
    if (!__OFADD__(v54, 1))
    {
      v55 = 1 - a1;
      a1 = 5;
      while (v55 + a1 != 5)
      {
        v56 = a1 - 4;
        if (v116)
        {
          v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v56 >= *(v118 + 16))
          {
            goto LABEL_68;
          }

          v57 = *(v117 + 8 * a1);
        }

        v58 = v57;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_70;
        }

        v59 = [v123 updateReminder:v57];
        [v59 removeFromList];

        ++a1;
        v60 = __OFADD__(v29++, 1);
        if (v60)
        {
          goto LABEL_69;
        }
      }

      v115 = 0;
      v2 = v111;
      v50 = v117;
      goto LABEL_49;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (qword_100936318 != -1)
  {
LABEL_71:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094A7C0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = [v7 objectID];
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDAccountDataMover: removeData: given account is already empty (no reminder or list count < 2) so we stopped {objectID: %{public}@}", v10, 0xCu);
    sub_1000050A4(v11, &unk_100938E70, &unk_100797230);
  }
}

uint64_t sub_1004EF900(void *a1, void *a2, void *a3)
{
  v5 = v3;
  v48 = 0;
  v6 = [a1 fetchRemindersWithError:&v48];
  v7 = v48;
  if (v6)
  {
    v8 = v6;
    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v7;

    v48 = v9;
    sub_1000F5104(&unk_100939320, &qword_1007AEAE0);
    sub_1004F0CD0();
    v11 = BidirectionalCollection<>.slices(by:)();
    v9, v12, v13, v14, v15, v16, v17, v18;
    v43 = *(v11 + 16);
    v4 = 0;
    if (v43)
    {
      v26 = 0;
      v27 = (v11 + 56);
      while (1)
      {
        if (v26 >= *(v11 + 16))
        {
          __break(1u);
        }

        v28 = *(v27 - 1);
        v46 = *v27;
        v47 = v5;
        v29 = *(v27 - 2);
        swift_unknownObjectRetain();
        v30 = objc_autoreleasePoolPush();
        v31 = [a2 objectID];
        v32 = sub_1004F0D34(v29, v28, v46, v31, a3);
        v5 = v47;
        if (v47)
        {
          break;
        }

        v33 = v32;

        ++v26;
        v4 |= v33;
        objc_autoreleasePoolPop(v30);
        swift_unknownObjectRelease();
        v27 += 4;
        if (v43 == v26)
        {
          goto LABEL_7;
        }
      }

      v11, v35, v36, v37, v38, v39, v40, v41;
      objc_autoreleasePoolPop(v30);
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:
      v11, v19, v20, v21, v22, v23, v24, v25;
    }
  }

  else
  {
    v34 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4 & 1;
}

void sub_1004EFB1C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 account];
  v5 = [v4 accountTypeHost];

  v25 = sub_1000F5104(&qword_10094ABA8, &unk_1007AEAE8);
  REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();
  sub_1004F1498(v28, &v26);
  if (v27)
  {
    sub_1000050A4(v28, &qword_10094ABB0, &qword_1007AEAF8);

    sub_100054B6C(&v26, a1);
  }

  else
  {
    sub_1000050A4(&v26, &qword_10094ABB0, &qword_1007AEAF8);
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 internalErrorWithDebugDescription:{v7, sub_1004F1524, 0, sub_1004F1524, 0, sub_1004F0518, 0, 0, 0, v25}];

    swift_willThrow();
    sub_1000050A4(v28, &qword_10094ABB0, &qword_1007AEAF8);
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094A7C0);
    v10 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v12 = [v5 internalDescription];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    *(inited + 48) = v13;
    *(inited + 56) = v15;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 49;
    *(inited + 88) = 0xE100000000000000;
    v16 = [v2 remObjectID];
    *(inited + 120) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(inited + 96) = v16;
    v17 = sub_1001F67C8(inited);
    inited, v18, v19, v20, v21, v22, v23, v24;
    sub_10054573C("REMReminder.dataCopierFactory: Could not create data copier for account data move because account type is not supported for now {accountTypeHost: %{public}@, reminderID: %{public}@}.", 182, 2, v10, v17);
    __break(1u);
  }
}

id sub_1004EFE64(void *a1)
{
  v3 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v65[-v5];
  v7 = *(v1 + 72);

  v8 = [a1 objectID];
  v67 = v8;
  v66 = &v67;
  v9 = sub_10032DE90(sub_10031D63C, v65, v7);

  v7, v10, v11, v12, v13, v14, v15, v16;
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v17 = *(v1 + 72);

  v18 = [a1 list];
  v19 = [v18 objectID];

  v67 = v19;
  __chkstk_darwin(v20, v21);
  *&v65[-16] = &v67;
  v22 = sub_10032DE90(sub_1004F1508, &v65[-32], v17);

  v17, v23, v24, v25, v26, v27, v28, v29;
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v30 = [a1 dueDateComponents];
  if (v30)
  {
    v31 = v30;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = type metadata accessor for DateComponents();
    (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
    sub_1000050A4(v6, &qword_10093B790, &qword_100798D88);
    return 0;
  }

  v34 = type metadata accessor for DateComponents();
  (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
  sub_1000050A4(v6, &qword_10093B790, &qword_100798D88);
  result = [a1 alarms];
  if (result)
  {
    v35 = result;
    sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v36 >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v44 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36, v37, v38, v39, v40, v41, v42, v43;
    if (v44)
    {
      return 0;
    }

    result = [a1 recurrenceRules];
    if (result)
    {
      v45 = result;
      sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v46 >> 62)
      {
        v54 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v54 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46, v47, v48, v49, v50, v51, v52, v53;
      if (v54)
      {
        return 0;
      }

      v55 = [a1 attachments];
      sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
      v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v56 >> 62)
      {
        v64 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v64 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v56, v57, v58, v59, v60, v61, v62, v63;
      return (v64 == 0);
    }
  }

  return result;
}

void sub_1004F0264()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v10 = 0;
    v2 = v1;
    if ([v2 saveSynchronouslyWithError:&v10])
    {
      v3 = v10;

      v4 = *(v0 + 88);
      *(v0 + 88) = 0;
    }

    else
    {
      v9 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094A7C0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDAccountDataMover: Attempted to save with a current save request.", v8, 2u);
    }
  }
}

uint64_t sub_1004F03E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;

  *(v8 + 72), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

uint64_t sub_1004F0544@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1();
  result = swift_allocObject();
  a2[3] = v3;
  a2[4] = &off_1008F4F48;
  *a2 = result;
  return result;
}

uint64_t sub_1004F059C()
{
  result = *(v0 + 88);
  if (!result)
  {
    v2 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v0 + 40)];
    v3 = String._bridgeToObjectiveC()();
    [v2 setAuthor:v3];

    v4 = *(v0 + 88);
    *(v0 + 88) = v2;

    result = *(v0 + 88);
    if (!result)
    {
      v5 = objc_opt_self();
      v6 = String._bridgeToObjectiveC()();
      [v5 internalErrorWithDebugDescription:v6];

      return swift_willThrow();
    }
  }

  return result;
}

id sub_1004F068C(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007953F0;
  *(v8 + 32) = a1;
  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  v46 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = [v7 exportICSCalendarFromReminders:isa];

  result = [v17 components];
  if (result)
  {
    v19 = result;
    NSArray.makeIterator()();

    NSFastEnumerationIterator.next()();
    if (v49)
    {
      while (1)
      {
        sub_100005EE0(&v48, &v47);
        sub_1000060C8(0, &qword_100949360, ICSTodo_ptr);
        if (swift_dynamicCast())
        {
          break;
        }

        NSFastEnumerationIterator.next()();
        if (!v49)
        {
          goto LABEL_5;
        }
      }

      (*(v3 + 8))(v6, v2);
    }

    else
    {
LABEL_5:
      (*(v3 + 8))(v6, v2);
      v20 = objc_opt_self();
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      v21._object = 0x80000001007FB030;
      v21._countAndFlagsBits = 0xD000000000000042;
      String.append(_:)(v21);
      v22 = [v46 objectID];
      v23 = [v22 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27._countAndFlagsBits = v24;
      v27._object = v26;
      String.append(_:)(v27);
      v26, v28, v29, v30, v31, v32, v33, v34;

      v35._countAndFlagsBits = 125;
      v35._object = 0xE100000000000000;
      String.append(_:)(v35);
      v36 = *(&v48 + 1);
      v37 = String._bridgeToObjectiveC()();
      v36, v38, v39, v40, v41, v42, v43, v44;
      [v20 internalErrorWithDebugDescription:v37];

      swift_willThrow();
    }

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004F09D8(void *a1, void *a2)
{
  v5 = sub_1004F068C(a1);
  if (!v2)
  {
    v7 = v5;
    v8 = v6;
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094A7C0);
    v10 = a1;
    v11 = v8;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543618;
      v16 = [v10 objectID];
      *(v14 + 4) = v16;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v15 = v16;
      v15[1] = v11;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "RDAccountDataMover: RDReminderDataICSCopier: source reminder exported as ICS {objectID: %{public}@, icsTodo: %@}", v14, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    v18 = [a2 saveRequest];
    [v18 updateReminderChangeItem:a2 fromICSTodo:v11 icsCalendar:v7 isNew:1 withOptions:0];
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543618;
      v24 = [v19 objectID];
      *(v22 + 4) = v24;
      *v23 = v24;
      *(v22 + 12) = 2112;
      v25 = [v19 storage];
      *(v22 + 14) = v25;
      v23[1] = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "RDAccountDataMover: RDReminderDataICSCopier: imported ICS into as reminder {objectID: %{public}@, storage: %@}", v22, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }
  }
}

unint64_t sub_1004F0CD0()
{
  result = qword_10094ABA0;
  if (!qword_10094ABA0)
  {
    sub_1000F514C(&unk_100939320, &qword_1007AEAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ABA0);
  }

  return result;
}

uint64_t sub_1004F0D34(uint64_t a1, uint64_t a2, unint64_t a3, id a4, void *a5)
{
  v7 = v6;
  v8 = v5;
  v99 = a1;
  v95 = type metadata accessor for UUID();
  v13 = *(v95 - 8);
  *&v15 = __chkstk_darwin(v95, v14).n128_u64[0];
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a5;
  v93 = [a5 _trackedListChangeItemForObjectID:{a4, v15}];
  if (v93)
  {
    v19 = a3 >> 1;
    v94 = v8;
    v20 = 0;
    if (a3 >> 1 == a2)
    {
LABEL_3:
      [v93 setRemindersICSDisplayOrderChanged:0];
      if (qword_100936318 == -1)
      {
LABEL_4:
        v21 = type metadata accessor for Logger();
        sub_100006654(v21, qword_10094A7C0);
        v22 = v91;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.info.getter();
        v25 = &selRef_attachmentRepresentationAndReturnError_;
        if (os_log_type_enabled(v23, v24))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          v27 = v20;
          v20 = [v22 trackedReminderChangeItems];
          v28 = [v20 count];

          LOBYTE(v20) = v27;
          v25 = &selRef_attachmentRepresentationAndReturnError_;
          *(v26 + 4) = v28;
          v8 = v94;

          _os_log_impl(&_mh_execute_header, v23, v24, "RDAccountDataMover: Processed copying source reminders {count: %ld}", v26, 0xCu);
        }

        else
        {

          v23 = v22;
        }

        a4 = [v22 v25[54]];
        v83 = [a4 count];

        v84 = *(v8 + 56);
        v85 = __OFADD__(v84, v83);
        v86 = &v83[v84];
        if (!v85)
        {
          *(v8 + 56) = v86;
          return v20 & 1;
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      v92 = (v13 + 8);
      *&v18 = 138543362;
      v90 = v18;
      v89 = v17;
      while (a2 < v19)
      {
        v36 = *(v99 + 8 * a2);
        if (sub_1004EFE64(v36))
        {
          if (qword_100936318 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_100006654(v37, qword_10094A7C0);
          v38 = v36;
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = v19;
            v42 = v7;
            v43 = v20;
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            *v44 = v90;
            v46 = [v38 objectID];
            *(v44 + 4) = v46;
            *v45 = v46;
            _os_log_impl(&_mh_execute_header, v39, v40, "RDAccountDataMover: _copySliceOfReminders: Source reminder is denylisted to copy to the target list {sourceReminder: %{public}@}", v44, 0xCu);
            sub_1000050A4(v45, &unk_100938E70, &unk_100797230);
            v8 = v94;

            v20 = v43;
            v7 = v42;
            v19 = v41;
            v17 = v89;
          }
        }

        else
        {
          v47 = [v36 titleAsString];
          if (v47)
          {
            v48 = v47;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;
          }

          else
          {
            v50 = 0xE000000000000000;
          }

          v51 = String._bridgeToObjectiveC()();
          v50, v52, v53, v54, v55, v56, v57, v58;
          v59 = [v91 addReminderWithTitle:v51 toListChangeItem:v93];

          sub_1004EFB1C(v96);
          v60 = v97;
          v20 = v98;
          sub_10000F61C(v96, v97);
          (*(v20 + 8))(v36, v59, v60, v20);
          if (v7)
          {

            sub_10000607C(v96);
            return v20 & 1;
          }

          v8 = v94;
          if (*(v94 + 80) == 1)
          {
            v61 = [v36 objectID];
            v62 = [v61 uuid];

            static UUID._unconditionallyBridgeFromObjectiveC(_:)();
            UUID.uuidString.getter();
            v64 = v63;
            (*v92)(v17, v95);
            v65 = String._bridgeToObjectiveC()();
            v64, v66, v67, v68, v69, v70, v71, v72;
            [v59 setExternalIdentifier:v65];
          }

          UUID.init()();
          UUID.uuidString.getter();
          v74 = v73;
          (*v92)(v17, v95);
          v75 = String._bridgeToObjectiveC()();
          v74, v76, v77, v78, v79, v80, v81, v82;
          [v59 setDaCalendarItemUniqueIdentifier:v75];

          sub_10000607C(v96);
          v20 = 1;
        }

        if (v19 == ++a2)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_100936318 != -1)
  {
LABEL_34:
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100006654(v29, qword_10094A7C0);
  v30 = a4;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138543362;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "RDAccountDataMover: _copySliceOfReminders: Cannot copy reminders because list change item is not tracked and is nil {targetListID: %{public}@}", v33, 0xCu);
    sub_1000050A4(v34, &unk_100938E70, &unk_100797230);
  }

  LOBYTE(v20) = 0;
  return v20 & 1;
}

uint64_t sub_1004F1498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094ABB0, &qword_1007AEAF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F1548@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v60 = a2;
  v61 = a3;
  v4 = type metadata accessor for DateComponents();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v55 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v62 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v56 = &v55 - v18;
  v19 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v26 = &v55 - v25;
  __chkstk_darwin(v27, v28);
  v30 = &v55 - v29;
  __chkstk_darwin(v31, v32);
  v34 = &v55 - v33;
  *&v37 = __chkstk_darwin(v35, v36).n128_u64[0];
  v39 = &v55 - v38;
  v59 = a1;
  v40 = [a1 dueDateComponents];
  if (v40)
  {
    v41 = v40;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v57;
    v43 = v7;
    v44 = v58;
    (*(v57 + 32))(v11, v43, v58);
    sub_1004F20E4(v34);
    (*(v42 + 8))(v11, v44);
    v45 = v12;
    if ((*(v13 + 48))(v34, 1, v12) != 1)
    {
      v46 = v56;
      (*(v13 + 32))(v56, v34, v45);
      sub_1004F2BFC(v46, v39);
      (*(v13 + 8))(v46, v45);
      goto LABEL_6;
    }
  }

  else
  {
    (*(v13 + 56))(v34, 1, 1, v12);
    v45 = v12;
  }

  sub_1000050A4(v34, &unk_100938850, qword_100795AE0);
  (*(v13 + 56))(v39, 1, 1, v45);
LABEL_6:
  sub_1004F1A98(v59, v60, v39, &selRef_nextRecurrentDueDateAfter_dueDate_timeZone_allDay_recurrenceRules_, v30);
  sub_1004F2344(v30, v39, v26);
  sub_10012F78C(v26, v22);
  if ((*(v13 + 48))(v22, 1, v45) == 1)
  {
    sub_1000050A4(v26, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v30, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v39, &unk_100938850, qword_100795AE0);
    v47 = v22;
    v48 = v45;
    sub_1000050A4(v47, &unk_100938850, qword_100795AE0);
LABEL_11:
    v53 = 1;
    v52 = v61;
    return (*(v13 + 56))(v52, v53, 1, v48);
  }

  v49 = *(v13 + 32);
  v49(v62, v22, v45);
  v50 = static Date.> infix(_:_:)();
  v48 = v45;
  sub_1000050A4(v26, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v30, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v39, &unk_100938850, qword_100795AE0);
  if ((v50 & 1) == 0)
  {
    (*(v13 + 8))(v62, v45);
    goto LABEL_11;
  }

  v51 = v61;
  v49(v61, v62, v45);
  v52 = v51;
  v53 = 0;
  return (*(v13 + 56))(v52, v53, 1, v48);
}

uint64_t sub_1004F1A98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, SEL *a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v63 = a3;
  v60 = a2;
  v68 = a5;
  v6 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v58[-v8];
  v10 = type metadata accessor for TimeZone();
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10, v11);
  v64 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = type metadata accessor for Date();
  v13 = *(v69 - 8);
  __chkstk_darwin(v69, v14);
  v67 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v16 - 8, v17);
  v61 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19, v20);
  v22 = &v58[-v21];
  __chkstk_darwin(v23, v24);
  v26 = &v58[-v25];
  v27 = type metadata accessor for DateComponents();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27, v29);
  v31 = &v58[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v34 = __chkstk_darwin(v32, v33).n128_u64[0];
  v36 = &v58[-v35];
  v37 = [a1 dueDateComponents];
  if (!v37)
  {
    return (*(v13 + 56))(v68, 1, 1, v69);
  }

  v38 = v37;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v28 + 32))(v36, v31, v27);
  v39 = [a1 recurrenceRules];
  if (!v39)
  {
    (*(v28 + 8))(v36, v27);
    return (*(v13 + 56))(v68, 1, 1, v69);
  }

  v40 = v39;
  sub_1004F20E4(v26);
  sub_1004F2344(v63, v26, v22);
  v41 = v69;
  if ((*(v13 + 48))(v22, 1, v69) == 1)
  {

    sub_1000050A4(v26, &unk_100938850, qword_100795AE0);
    (*(v28 + 8))(v36, v27);
    sub_1000050A4(v22, &unk_100938850, qword_100795AE0);
    return (*(v13 + 56))(v68, 1, 1, v41);
  }

  else
  {
    v63 = v40;
    (*(v13 + 32))(v67, v22, v41);
    DateComponents.timeZone.getter();
    v43 = v65;
    v44 = v66;
    v45 = *(v65 + 48);
    if (v45(v9, 1, v66) == 1)
    {
      static TimeZone.current.getter();
      if (v45(v9, 1, v44) != 1)
      {
        sub_1000050A4(v9, &qword_10093F970, &unk_1007A7670);
      }
    }

    else
    {
      (*(v43 + 32))(v64, v9, v44);
    }

    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v59 = [(objc_class *)isa rem_isAllDayDateComponents];

    v47 = objc_opt_self();
    v48 = Date._bridgeToObjectiveC()().super.isa;
    v49 = Date._bridgeToObjectiveC()().super.isa;
    v50 = TimeZone._bridgeToObjectiveC()().super.isa;
    v51 = v63;
    v52 = [v47 *v62];

    if (v52)
    {
      v53 = v61;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = 0;
      v55 = v69;
      v57 = v65;
      v56 = v66;
    }

    else
    {
      v54 = 1;
      v55 = v69;
      v57 = v65;
      v56 = v66;
      v53 = v61;
    }

    (*(v57 + 8))(v64, v56);
    (*(v13 + 8))(v67, v55);
    sub_1000050A4(v26, &unk_100938850, qword_100795AE0);
    (*(v28 + 8))(v36, v27);
    (*(v13 + 56))(v53, v54, 1, v55);
    return sub_100031B58(v53, v68, &unk_100938850, qword_100795AE0);
  }
}

uint64_t sub_1004F20E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TimeZone();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
  DateComponents.timeZone.getter();
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    static TimeZone.current.getter();
    if (v12(v5, 1, v6) != 1)
    {
      sub_1000050A4(v5, &qword_10093F970, &unk_1007A7670);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  v13 = objc_opt_self();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v6);
  v15 = [v13 rem_dateWithDateComponents:v11.super.isa timeZone:isa];

  if (v15)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for Date();
  return (*(*(v17 - 8) + 56))(a1, v16, 1, v17);
}

uint64_t sub_1004F2344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v28 - v21;
  sub_10012F78C(a1, v13);
  v23 = *(v15 + 48);
  if (v23(v13, 1, v14) != 1)
  {
    v25 = *(v15 + 32);
    v25(v22, v13, v14);
    v25(a3, v22, v14);
LABEL_6:
    v24 = 0;
    return (*(v15 + 56))(a3, v24, 1, v14);
  }

  sub_1000050A4(v13, &unk_100938850, qword_100795AE0);
  sub_10012F78C(a2, v9);
  if (v23(v9, 1, v14) != 1)
  {
    v26 = *(v15 + 32);
    v26(v18, v9, v14);
    v26(a3, v18, v14);
    goto LABEL_6;
  }

  sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
  v24 = 1;
  return (*(v15 + 56))(a3, v24, 1, v14);
}

uint64_t sub_1004F25C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v60 = a2;
  v62 = a3;
  v4 = type metadata accessor for Calendar();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4, v5);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DateComponents();
  v7 = *(v58 - 8);
  __chkstk_darwin(v58, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v54 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v61 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v57 = &v54 - v21;
  v22 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v22 - 8, v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v29 = &v54 - v28;
  __chkstk_darwin(v30, v31);
  v63 = &v54 - v32;
  __chkstk_darwin(v33, v34);
  v36 = &v54 - v35;
  *&v39 = __chkstk_darwin(v37, v38).n128_u64[0];
  v41 = &v54 - v40;
  v59 = a1;
  v42 = [a1 dueDateComponents];
  if (v42)
  {
    v43 = v42;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = v58;
    (*(v7 + 32))(v14, v10, v58);
    sub_1004F20E4(v36);
    (*(v7 + 8))(v14, v44);
    if ((*(v16 + 48))(v36, 1, v15) != 1)
    {
      v45 = v57;
      (*(v16 + 32))(v57, v36, v15);
      sub_1004F2BFC(v45, v41);
      (*(v16 + 8))(v45, v15);
      goto LABEL_6;
    }
  }

  else
  {
    (*(v16 + 56))(v36, 1, 1, v15);
  }

  sub_1000050A4(v36, &unk_100938850, qword_100795AE0);
  (*(v16 + 56))(v41, 1, 1, v15);
LABEL_6:
  v46 = v61;
  v47 = v63;
  sub_1004F1A98(v59, v60, v41, &selRef_previousRecurrentDueDateBefore_dueDate_timeZone_allDay_recurrenceRules_, v63);
  sub_1004F2344(v47, v41, v29);
  sub_10012F78C(v29, v25);
  if ((*(v16 + 48))(v25, 1, v15) != 1)
  {
    v50 = *(v16 + 32);
    v50(v46, v25, v15);
    sub_1002CDF34();
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v51 = v54;
      static Calendar.current.getter();
      v52 = Calendar.isDateInToday(_:)();
      (*(v55 + 8))(v51, v56);
      sub_1000050A4(v29, &unk_100938850, qword_100795AE0);
      sub_1000050A4(v63, &unk_100938850, qword_100795AE0);
      sub_1000050A4(v41, &unk_100938850, qword_100795AE0);
      if ((v52 & 1) == 0)
      {
        (*(v16 + 8))(v46, v15);
        goto LABEL_8;
      }
    }

    else
    {
      sub_1000050A4(v29, &unk_100938850, qword_100795AE0);
      sub_1000050A4(v63, &unk_100938850, qword_100795AE0);
      sub_1000050A4(v41, &unk_100938850, qword_100795AE0);
    }

    v49 = v62;
    v50(v62, v46, v15);
    v48 = 0;
    return (*(v16 + 56))(v49, v48, 1, v15);
  }

  sub_1000050A4(v29, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v47, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v41, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v25, &unk_100938850, qword_100795AE0);
LABEL_8:
  v48 = 1;
  v49 = v62;
  return (*(v16 + 56))(v49, v48, 1, v15);
}

uint64_t sub_1004F2BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v63 = a2;
  v2 = type metadata accessor for Calendar.SearchDirection();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2, v3);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v51 = *(v57 - 8);
  __chkstk_darwin(v57, v5);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Calendar.MatchingPolicy();
  v7 = *(v60 - 8);
  __chkstk_darwin(v60, v8);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Calendar();
  v52 = *(v14 - 8);
  v53 = v14;
  __chkstk_darwin(v14, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v25 = &v48 - v24;
  v26 = type metadata accessor for DateComponents();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [objc_opt_self() daemonUserDefaults];
  v32 = [v31 todayNotificationFireTime];

  if (v32)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = v27;
    v34 = *(v27 + 56);
    v35 = v21;
    v36 = 0;
  }

  else
  {
    v33 = v27;
    v34 = *(v27 + 56);
    v35 = v21;
    v36 = 1;
  }

  v37 = v26;
  v34(v35, v36, 1, v26);
  sub_100031B58(v21, v25, &qword_10093B790, &qword_100798D88);
  if ((*(v33 + 48))(v25, 1, v26) == 1)
  {
    sub_1000050A4(v25, &qword_10093B790, &qword_100798D88);
    return (*(v61 + 56))(v63, 1, 1, v62);
  }

  else
  {
    v39 = *(v33 + 32);
    v49 = v30;
    v39(v30, v25, v26);
    static Calendar.current.getter();
    Calendar.startOfDay(for:)();
    v40 = v50;
    (*(v7 + 104))(v50, enum case for Calendar.MatchingPolicy.nextTime(_:), v60);
    v41 = v51;
    v42 = v54;
    v43 = v57;
    (*(v51 + 104))(v54, enum case for Calendar.RepeatedTimePolicy.first(_:), v57);
    v55 = v37;
    v45 = v58;
    v44 = v59;
    v46 = *(v58 + 104);
    v48 = v33;
    v47 = v56;
    v46(v56, enum case for Calendar.SearchDirection.forward(_:), v59);
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v45 + 8))(v47, v44);
    (*(v41 + 8))(v42, v43);
    (*(v7 + 8))(v40, v60);
    (*(v61 + 8))(v13, v62);
    (*(v52 + 8))(v17, v53);
    return (*(v48 + 8))(v49, v55);
  }
}

uint64_t sub_1004F3224()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094ABB8);
  v1 = sub_100006654(v0, qword_10094ABB8);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004F32EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004F3344();
  }

  return result;
}

void sub_1004F3344()
{
  v1 = v0;
  v77 = *v0;
  v2 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v68 - v4;
  v6 = sub_1000F5104(&unk_10093D130, &unk_100791BA0);
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v68 - v8;
  v10 = sub_1000F5104(&unk_100936FC0, &qword_10079C9A0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v68 - v13;
  v15 = sub_1000F5104(&unk_10094CE00, &unk_100791BB0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v68 - v18;
  v20 = sub_1000F5104(&qword_10094ACE0, qword_1007AEB68);
  __chkstk_darwin(v20, v21);
  v25 = &v68 - v24;
  if (!*(v1 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription))
  {
    v74 = v22;
    v75 = v23;
    v76 = OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription;
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    v73 = v25;
    v27 = inited;
    *(inited + 16) = xmmword_100791340;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v70 = v11;
    v29 = [ObjCClassFromMetadata cdEntityName];
    v72 = v16;
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v15;
    v32 = v31;
    v69 = v19;
    v34 = v33;

    v68 = v10;
    v27[4] = v32;
    v27[5] = v34;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v35 = [swift_getObjCClassFromMetadata() cdEntityName];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v27[6] = v36;
    v27[7] = v38;
    v39 = v1[2];
    v80 = v77;
    sub_1000F5104(&qword_100936EF8, &qword_100791B08);
    v40 = String.init<A>(reflecting:)();
    v42 = v41;
    v43 = sub_100441DF8(v39, v40, v41, 0);
    v42, v44, v45, v46, v47, v48, v49, v50;
    v51 = sub_1001A5660(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    v80 = v43;
    *(swift_allocObject() + 16) = v51;
    sub_1000F5104(&unk_10093D170, &unk_100791BC0);
    sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
    sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_10000CB48(&unk_100936FF0, &unk_10093D130, &unk_100791BA0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v52 = v79;
    Publisher.filter(_:)();

    (*(v78 + 8))(v9, v52);
    v80 = v1[4];
    v53 = v80;
    v54 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v55 = *(v54 - 8);
    v78 = *(v55 + 56);
    v79 = v55 + 56;
    (v78)(v5, 1, 1, v54);
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    sub_10000CB48(&qword_10093D190, &unk_100936FC0, &qword_10079C9A0, &protocol conformance descriptor for Publishers.Filter<A>);
    sub_100006CA4();
    v56 = v53;
    v57 = v14;
    v58 = v68;
    v59 = v69;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v5, &qword_100939980, &unk_10079ADA0);
    (*(v70 + 8))(v57, v58);
    v80 = v56;
    (v78)(v5, 1, 1, v54);
    sub_10000CB48(&unk_100937000, &unk_10094CE00, &unk_100791BB0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v60 = v73;
    v61 = v71;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000050A4(v5, &qword_100939980, &unk_10079ADA0);

    (*(v72 + 8))(v59, v61);
    swift_allocObject();
    swift_weakInit();
    sub_10000CB48(&qword_10094ACE8, &qword_10094ACE0, qword_1007AEB68, &protocol conformance descriptor for Publishers.Debounce<A, B>);
    v62 = v74;
    v63 = Publisher<>.sink(receiveValue:)();

    (*(v75 + 8))(v60, v62);
    *(v1 + v76) = v63;

    if (qword_100936320 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100006654(v64, qword_10094ABB8);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "RDManualSortHintUpdater starts.", v67, 2u);
    }
  }
}

uint64_t sub_1004F3BE0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004F3344();
  }

  return result;
}

uint64_t sub_1004F3C38()
{
  *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_manualSortHintChangesSubscription) = 0;

  sub_1004F3D20();

  v1 = OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_debounceInterval;
  v2 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000CC4C(*(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity), *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 8), *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 16), *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 24), *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 32), *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 40) | (*(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 44) << 32), v3, v4);
  return v0;
}

void sub_1004F3D20()
{
  if (*(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription))
  {
    *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription) = 0;

    if (qword_100936320 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_10094ABB8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "RDManualSortHintUpdater stops.", v3, 2u);
    }
  }
}

uint64_t sub_1004F3E30()
{
  sub_1004F3C38();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDManualSortHintUpdater(uint64_t a1)
{
  result = qword_10094AC20;
  if (!qword_10094AC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004F3EDC(uint64_t a1)
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004F3FA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004F3FFC();
  }

  return result;
}

uint64_t sub_1004F3FFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 16);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity);
  v4[0] = v1;
  *(v4 + 14) = *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 30);
  return sub_100014A64(&v3, sub_1004F609C, v0);
}

void sub_1004F41C4(_TtC7remindd19RDXPCStorePerformer *a1)
{
  sub_1000F5104(&unk_100939E20, qword_100795830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_100791340;
  KeyPath = swift_getKeyPath();
  v6 = sub_1003EDA7C(KeyPath);

  *(v4 + 32) = v6;
  v7 = swift_getKeyPath();
  v8 = sub_1003EDA7C(v7);

  *(v4 + 40) = v8;
  *(inited + 32) = sub_100025060(v4);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_100791300;
  *(v9 + 32) = sub_10001035C(0);
  v128 = v9;
  sub_10003A170(inited);
  v10 = sub_10000C2B0();
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDManualSortHint();
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setPredicate:v10];
  [v11 setResultType:1];

  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v37 = v13;
    v38 = v13 >> 62;
    if (v13 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (v39)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v39 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
LABEL_8:
        v120 = v11;
        if (qword_100936320 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100006654(v40, qword_10094ABB8);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        v37, v43, v44, v45, v46, v47, v48, v49;
        v126 = v39;
        v127 = a1;
        if (os_log_type_enabled(v41, v42))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v128 = v51;
          *v50 = 136315138;
          v124 = v51;
          if (v38)
          {
            _CocoaArrayWrapper.endIndex.getter();
          }

          v59 = dispatch thunk of CustomStringConvertible.description.getter();
          v61 = v60;
          v62 = sub_10000668C(v59, v60, &v128);
          v61, v63, v64, v65, v66, v67, v68, v69;
          *(v50 + 4) = v62;
          _os_log_impl(&_mh_execute_header, v41, v42, "RDManualSortHintUpdater fetched %s REMCDManualSortHint with local IDs.", v50, 0xCu);
          sub_10000607C(v124);

          v39 = v126;
        }

        else
        {
        }

        v70 = 0;
        v71 = 0;
        v11 = 0;
        v125 = v37 & 0xC000000000000001;
        v72 = v37 & 0xFFFFFFFFFFFFFF8;
        v123 = 1;
LABEL_17:
        v121 = v71;
        v122 = v70;
        while (v39 != v70)
        {
          if (v125)
          {
            v73 = v37;
            v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v70 >= *(v72 + 16))
            {
              goto LABEL_48;
            }

            v73 = v37;
            v74 = *(v37 + 8 * v70 + 32);
          }

          v76 = v74;
          if (__OFADD__(v70, 1))
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          sub_1004F628C(v74, v127, v75);
          v78 = v77;

          v79 = v78;
          if (v78 != 2)
          {
            v39 = v126;
            if (!v79)
            {
              v123 = 0;
              ++v70;
              v37 = v73;
              goto LABEL_17;
            }

            v123 = 0;
            ++v70;
            v80 = __OFADD__(v71++, 1);
            v11 = v71;
            v37 = v73;
            if (v80)
            {
              __break(1u);
              break;
            }

            goto LABEL_17;
          }

          ++v70;
          v80 = __OFADD__(v71, 1);
          v11 = ++v71;
          v37 = v73;
          v39 = v126;
          if (v80)
          {
            goto LABEL_49;
          }
        }

        v37, v52, v53, v54, v55, v56, v57, v58;
        if (&v121[v39 - v122] < 1)
        {
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            *v115 = 0;
            _os_log_impl(&_mh_execute_header, v113, v114, "RDManualSortHintUpdater did not replace local IDs in any REMCDManualSortHint.", v115, 2u);
          }

LABEL_45:
          v11 = v120;
          if (v123)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        v128 = 0;
        if ([(RDXPCStorePerformer *)v127 save:&v128])
        {
          v81 = v128;
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v128 = v85;
            *v84 = 136315138;
            v86 = dispatch thunk of CustomStringConvertible.description.getter();
            v88 = v87;
            v89 = sub_10000668C(v86, v87, &v128);
            v88, v90, v91, v92, v93, v94, v95, v96;
            *(v84 + 4) = v89;
            _os_log_impl(&_mh_execute_header, v82, v83, "RDManualSortHintUpdater replaced local IDs in %s REMCDManualSortHint.", v84, 0xCu);
            sub_10000607C(v85);
          }

          goto LABEL_45;
        }

        v97 = v128;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.error.getter();

        v11 = v120;
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v128 = v101;
          *v100 = 136315138;
          swift_getErrorValue();
          v102 = Error.rem_errorDescription.getter();
          v104 = v103;
          v105 = sub_10000668C(v102, v103, &v128);
          v104, v106, v107, v108, v109, v110, v111, v112;
          *(v100 + 4) = v105;
          _os_log_impl(&_mh_execute_header, v98, v99, "RDManualSortHintUpdater failed to save changes {error: %s}", v100, 0xCu);
          sub_10000607C(v101);
        }

        sub_1004F3D20();

        if ((v123 & 1) == 0)
        {
          goto LABEL_58;
        }

LABEL_57:
        sub_1004F3D20();
        goto LABEL_58;
      }
    }

    v37, v14, v15, v16, v17, v18, v19, v20;
    if (qword_100936320 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    sub_100006654(v116, qword_10094ABB8);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "RDManualSortHintUpdater did not fetch any REMCDManualSortHint with local IDs.", v119, 2u);
    }

    goto LABEL_57;
  }

  if (qword_100936320 != -1)
  {
LABEL_50:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006654(v21, qword_10094ABB8);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v128 = v25;
    *v24 = 136315138;
    swift_getErrorValue();
    v26 = Error.rem_errorDescription.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v128);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "RDManualSortHintUpdater failed to fetch REMCDManualSortHint with local IDs {error: %s}", v24, 0xCu);
    sub_10000607C(v25);
  }

  sub_1004F3D20();

LABEL_58:
}

uint64_t sub_1004F4C8C(unint64_t a1)
{
  v33 = sub_10038DB14(&_swiftEmptyArrayStorage);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v10 = (v3 + 64) >> 6;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()() || (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr), swift_dynamicCast(), v15 = v34, type metadata accessor for RDAccountManualSortID(0), swift_dynamicCast(), (v14 = v34) == 0))
      {
LABEL_35:
        sub_10001B860(v5);
        return v33;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v4;
    if (!v4)
    {
      break;
    }

LABEL_13:
    v4 = (v12 - 1) & v12;
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v12)));
    v14 = *(*(v5 + 56) + v13);
    v15 = *(*(v5 + 48) + v13);

    if (!v15)
    {
      goto LABEL_35;
    }

LABEL_17:
    if (v14[3])
    {
      v16 = v33;
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 >= 0)
        {
          v16 = (v33 & 0xFFFFFFFFFFFFFF8);
        }

        swift_retain_n();
        v17 = v15;
        v18 = __CocoaDictionary.count.getter();
        if (__OFADD__(v18, 1))
        {
          goto LABEL_38;
        }

        v16 = sub_10021D4A0(v16, v18 + 1);
      }

      else
      {
        swift_retain_n();
        v19 = v15;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v16;
      v21 = sub_10002B924(v15);
      v23 = v16[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_37;
      }

      v27 = v22;
      if (v16[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = v21;
          sub_1003751CC();
          v21 = v31;
        }
      }

      else
      {
        sub_10036DB04(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_10002B924(v15);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_40;
        }
      }

      v33 = v16;
      if (v27)
      {
        *(v16[7] + 8 * v21) = v14;
      }

      else
      {
        v16[(v21 >> 6) + 8] |= 1 << v21;
        *(v16[6] + 8 * v21) = v15;
        *(v16[7] + 8 * v21) = v14;

        v29 = v16[2];
        v25 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v25)
        {
          goto LABEL_39;
        }

        v16[2] = v30;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v10)
    {
      goto LABEL_35;
    }

    v12 = *(v2 + 8 * v9);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004F501C(unint64_t a1)
{
  v33 = sub_10038E300(&_swiftEmptyArrayStorage);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v10 = (v3 + 64) >> 6;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()() || (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr), swift_dynamicCast(), v15 = v34, type metadata accessor for RDElementManualSortID(0), swift_dynamicCast(), (v14 = v34) == 0))
      {
LABEL_35:
        sub_10001B860(v5);
        return v33;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v4;
    if (!v4)
    {
      break;
    }

LABEL_13:
    v4 = (v12 - 1) & v12;
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v12)));
    v14 = *(*(v5 + 56) + v13);
    v15 = *(*(v5 + 48) + v13);

    if (!v15)
    {
      goto LABEL_35;
    }

LABEL_17:
    if (v14[3])
    {
      v16 = v33;
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 >= 0)
        {
          v16 = (v33 & 0xFFFFFFFFFFFFFF8);
        }

        swift_retain_n();
        v17 = v15;
        v18 = __CocoaDictionary.count.getter();
        if (__OFADD__(v18, 1))
        {
          goto LABEL_38;
        }

        v16 = sub_10021C478(v16, v18 + 1);
      }

      else
      {
        swift_retain_n();
        v19 = v15;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v16;
      v21 = sub_10002B924(v15);
      v23 = v16[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_37;
      }

      v27 = v22;
      if (v16[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = v21;
          sub_1003731C0();
          v21 = v31;
        }
      }

      else
      {
        sub_10036A210(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_10002B924(v15);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_40;
        }
      }

      v33 = v16;
      if (v27)
      {
        *(v16[7] + 8 * v21) = v14;
      }

      else
      {
        v16[(v21 >> 6) + 8] |= 1 << v21;
        *(v16[6] + 8 * v21) = v15;
        *(v16[7] + 8 * v21) = v14;

        v29 = v16[2];
        v25 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v25)
        {
          goto LABEL_39;
        }

        v16[2] = v30;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v10)
    {
      goto LABEL_35;
    }

    v12 = *(v2 + 8 * v9);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004F53AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v96 = a3;
  v87 = v7;
  v88 = v11;
  v90 = a2;
  while (v10)
  {
LABEL_11:
    v37 = (v12 << 10) | (16 * __clz(__rbit64(v10)));
    v38 = (*(a1 + 48) + v37);
    v39 = *v38;
    v40 = v38[1];
    v41 = (*(a1 + 56) + v37);
    v42 = *v41;
    v43 = v41[1];
    v44 = *(a2 + 16);

    v94 = v43;

    v45 = v40;
    v46 = v39;
    if (v44)
    {
      v47 = sub_100005F4C(v39, v40);
      a3 = v96;
      v45 = v40;
      v46 = v39;
      if (v48)
      {
        v49 = (*(a2 + 56) + 16 * v47);
        v46 = *v49;
        v45 = v49[1];
      }
    }

    v92 = v40;

    v50 = v94;
    v51 = v42;
    if (*(a3 + 16))
    {
      v50 = v94;
      v52 = sub_100005F4C(v42, v94);
      a3 = v96;
      v51 = v42;
      if (v53)
      {
        v54 = (*(v96 + 56) + 16 * v52);
        v51 = *v54;
        v50 = v54[1];
      }
    }

    v93 = v51;

    if (*(a3 + 16) && (v55 = sub_100005F4C(v42, v94), v56 = v93, (v57 & 1) != 0))
    {
      v58 = (*(v96 + 56) + 16 * v55);
      v59 = *v58 == v93 && v58[1] == v50;
      v60 = v46;
      if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_34;
      }
    }

    else
    {
      v60 = v46;
    }

    if (!*(v90 + 16))
    {
      goto LABEL_37;
    }

    v61 = sub_100005F4C(v39, v92);
    if ((v62 & 1) == 0 || ((v69 = (*(v90 + 56) + 16 * v61), *v69 == v60) ? (v70 = v69[1] == v45) : (v70 = 0), !v70 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      v71 = v50;
      goto LABEL_36;
    }

    v56 = v93;
LABEL_34:
    sub_100378434(v95, v56, v50);
    v71 = v95[1];
LABEL_36:
    v71, v62, v63, v64, v65, v66, v67, v68;
LABEL_37:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95[0] = *a5;
    v73 = v95[0];
    v74 = sub_100005F4C(v60, v45);
    v75 = *(v73 + 16);
    v76 = (v22 & 1) == 0;
    v77 = __OFADD__(v75, v76);
    v78 = v75 + v76;
    if (v77)
    {
      goto LABEL_49;
    }

    v79 = v22;
    if (*(v73 + 24) < v78)
    {
      sub_10036A8F0(v78, isUniquelyReferenced_nonNull_native);
      v74 = sub_100005F4C(v60, v45);
      if ((v79 & 1) != (v22 & 1))
      {
        goto LABEL_51;
      }

LABEL_42:
      v80 = v95[0];
      if (v79)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_42;
    }

    v85 = v74;
    sub_100373664();
    v74 = v85;
    v80 = v95[0];
    if (v79)
    {
LABEL_4:
      v13 = (v80[7] + 16 * v74);
      v14 = v13[1];
      *v13 = v93;
      v13[1] = v50;
      v45, v22, v23, v24, v25, v26, v27, v28;
      v14, v15, v16, v17, v18, v19, v20, v21;
      goto LABEL_5;
    }

LABEL_43:
    v80[(v74 >> 6) + 8] |= 1 << v74;
    v81 = (v80[6] + 16 * v74);
    *v81 = v60;
    v81[1] = v45;
    v82 = (v80[7] + 16 * v74);
    *v82 = v93;
    v82[1] = v50;
    v83 = v80[2];
    v77 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (v77)
    {
      goto LABEL_50;
    }

    v80[2] = v84;
LABEL_5:
    v10 &= v10 - 1;
    *a5 = v80;
    v94, v22, v23, v24, v25, v26, v27, v28;
    v92, v29, v30, v31, v32, v33, v34, v35;
    a3 = v96;
    a2 = v90;
    v7 = v87;
    v11 = v88;
  }

  while (1)
  {
    v36 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v36 >= v11)
    {
    }

    v10 = *(v7 + 8 * v36);
    ++v12;
    if (v10)
    {
      v12 = v36;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1004F5780(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v50 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v5, 0);
    v6 = &_swiftEmptyArrayStorage;
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *(a2 + 16);

      v13 = v11;
      v14 = v10;
      if (v12)
      {
        v15 = sub_100005F4C(v10, v11);
        v13 = v11;
        v14 = v10;
        if (v16)
        {
          v17 = (*(a2 + 56) + 16 * v15);
          v14 = *v17;
          v13 = v17[1];
        }
      }

      if (*(a2 + 16) && (v25 = sub_100005F4C(v10, v11), (v18 & 1) != 0) && ((v26 = (*(a2 + 56) + 16 * v25), v18 = v26[1], *v26 == v14) ? (v27 = v18 == v13) : (v27 = 0), (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v28 = *a3, *(*a3 + 16)) && (v29 = sub_100005F4C(a4, a5), (v18 & 1) != 0)))
      {
        v30 = (*(v28 + 56) + 16 * v29);
        v32 = *v30;
        v31 = v30[1];

        sub_100378434(v49, v32, v31);
        v33 = v49[1];
        v11, v34, v35, v36, v37, v38, v39, v40;
        v41 = v33;
      }

      else
      {
        v41 = v11;
      }

      v41, v18, v19, v20, v21, v22, v23, v24;
      v50 = v6;
      v43 = *v6->clientIdentity;
      v42 = *&v6->clientIdentity[8];
      if (v43 >= v42 >> 1)
      {
        sub_100026EF4((v42 > 1), v43 + 1, 1);
        v6 = v50;
      }

      *v6->clientIdentity = v43 + 1;
      v44 = v6 + 16 * v43;
      *(v44 + 4) = v14;
      *(v44 + 5) = v13;
      v9 += 2;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t sub_1004F5954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v96 = v12;
  v97 = v8;
  while (v11)
  {
    v103 = v6;
LABEL_12:
    v38 = __clz(__rbit64(v11)) | (v13 << 6);
    v39 = (*(a1 + 48) + 16 * v38);
    v40 = *v39;
    v41 = v39[1];
    v42 = *(*(a1 + 56) + 8 * v38);
    v43 = *(a2 + 16);

    v44 = v41;
    v105 = v40;
    if (v43)
    {
      v45 = sub_100005F4C(v40, v41);
      v44 = v41;
      v105 = v40;
      if (v46)
      {
        v47 = (*(a2 + 56) + 16 * v45);
        v44 = v47[1];
        v105 = *v47;
      }
    }

    if (*(a2 + 16))
    {
      v48 = sub_100005F4C(v40, v41);
      if (v49)
      {
        v50 = (*(a2 + 56) + 16 * v48);
        v51 = *v50 == v105 && v50[1] == v44;
        if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v52 = *a3;
          if (*(*a3 + 16))
          {
            v53 = sub_100005F4C(v105, v44);
            if (v54)
            {
              v55 = (*(v52 + 56) + 16 * v53);
              v57 = *v55;
              v56 = v55[1];

              sub_100378434(v104, v57, v56);
              v104[1], v58, v59, v60, v61, v62, v63, v64;
            }
          }
        }
      }
    }

    v100 = v41;

    v65 = v42;
    v66 = v105;
    v101 = sub_1004F5780(v42, a2, a3, v105, v44);
    v67 = a2;
    a2, v68, v69, v70, v71, v72, v73, v74;
    v44, v75, v76, v77, v78, v79, v80, v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = *a5;
    v83 = v104[0];
    *a5 = 0x8000000000000000;
    v84 = sub_100005F4C(v66, v44);
    v85 = *(v83 + 16);
    v86 = (v23 & 1) == 0;
    v87 = v85 + v86;
    if (__OFADD__(v85, v86))
    {
      goto LABEL_36;
    }

    v88 = v23;
    if (*(v83 + 24) >= v87)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10037443C();
      }
    }

    else
    {
      sub_10036C5F8(v87, isUniquelyReferenced_nonNull_native);
      v89 = sub_100005F4C(v105, v44);
      if ((v88 & 1) != (v23 & 1))
      {
        goto LABEL_38;
      }

      v84 = v89;
    }

    a2 = v67;
    v90 = v104[0];
    if (v88)
    {
      v14 = *(v104[0] + 56);
      v15 = *(v14 + 8 * v84);
      *(v14 + 8 * v84) = v101;
      v44, v23, v24, v25, v26, v27, v28, v29;
      v15, v16, v17, v18, v19, v20, v21, v22;
    }

    else
    {
      *(v104[0] + 8 * (v84 >> 6) + 64) |= 1 << v84;
      v91 = (v90[6] + 16 * v84);
      *v91 = v105;
      v91[1] = v44;
      *(v90[7] + 8 * v84) = v101;
      v92 = v90[2];
      v93 = __OFADD__(v92, 1);
      v94 = v92 + 1;
      if (v93)
      {
        goto LABEL_37;
      }

      v90[2] = v94;
    }

    v11 &= v11 - 1;
    *a5 = v90;
    v65, v23, v24, v25, v26, v27, v28, v29;
    v100, v30, v31, v32, v33, v34, v35, v36;
    v6 = v103;
    v12 = v96;
    v8 = v97;
  }

  while (1)
  {
    v37 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v37 >= v12)
    {
    }

    v11 = *(v8 + 8 * v37);
    ++v13;
    if (v11)
    {
      v103 = v6;
      v13 = v37;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004F5CE4(uint64_t a1, uint64_t a2, uint64_t *a3, _TtC7remindd19RDXPCStorePerformer **a4)
{
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = 0;

  v78 = v10;
  v79 = a2;
  while (v9)
  {
LABEL_12:
    v28 = __clz(__rbit64(v9)) | (v11 << 6);
    v29 = (*(v5 + 48) + 16 * v28);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(*(v5 + 56) + 8 * v28);
    v33 = *(a2 + 16);

    v83 = v31;
    v34 = v30;
    if (v33)
    {
      v31 = v83;
      v35 = sub_100005F4C(v30, v83);
      v34 = v30;
      if (v36)
      {
        v37 = (*(a2 + 56) + 16 * v35);
        v34 = *v37;
        v31 = v37[1];
      }
    }

    if (*(a2 + 16))
    {
      v38 = sub_100005F4C(v30, v83);
      if (v39)
      {
        v40 = (*(a2 + 56) + 16 * v38);
        v41 = *v40 == v34 && v40[1] == v31;
        if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          sub_100378434(v82, v34, v31);
          v82[1], v42, v43, v44, v45, v46, v47, v48;
        }
      }
    }

    v49 = *a3;
    if (*(*a3 + 16))
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v50 = Hasher._finalize()();
      v58 = -1 << *(v49 + 32);
      v59 = v50 & ~v58;
      if ((*(v49 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
      {
        v60 = ~v58;
        while (1)
        {
          v61 = (*(v49 + 48) + 16 * v59);
          v51 = v61[1];
          v62 = *v61 == v34 && v51 == v31;
          if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v59 = (v59 + 1) & v60;
          if (((*(v49 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v49, v51, v52, v53, v54, v55, v56, v57;
        v32 = v32 + 1.0;
      }

      else
      {
LABEL_32:
        v49, v51, v52, v53, v54, v55, v56, v57;
      }

      v5 = v77;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = *a4;
    v64 = v82[0];
    *a4 = 0x8000000000000000;
    v65 = sub_100005F4C(v34, v31);
    v66 = *(v64 + 16);
    v67 = (v12 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      goto LABEL_46;
    }

    v70 = v12;
    if (*(v64 + 24) >= v69)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = v65;
        sub_100373044();
        v65 = v75;
      }
    }

    else
    {
      sub_100369F58(v69, isUniquelyReferenced_nonNull_native);
      v65 = sub_100005F4C(v34, v31);
      if ((v70 & 1) != (v12 & 1))
      {
        goto LABEL_48;
      }
    }

    a2 = v79;
    v71 = v82[0];
    if (v70)
    {
      *(*(v82[0] + 56) + 8 * v65) = v32;
      v31, v12, v13, v14, v15, v16, v17, v18;
    }

    else
    {
      *(v82[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
      v72 = (*&v71->clientIdentity[32] + 16 * v65);
      *v72 = v34;
      v72[1] = v31;
      *(*&v71->clientIdentity[40] + 8 * v65) = v32;
      v73 = *v71->clientIdentity;
      v68 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v68)
      {
        goto LABEL_47;
      }

      *v71->clientIdentity = v74;
    }

    v9 &= v9 - 1;
    v19 = *a4;
    *a4 = v71;
    v83, v12, v13, v14, v15, v16, v17, v18;
    v19, v20, v21, v22, v23, v24, v25, v26;
    v10 = v78;
  }

  while (1)
  {
    v27 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v27 >= v10)
    {
    }

    v9 = *(v6 + 8 * v27);
    ++v11;
    if (v9)
    {
      v11 = v27;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}