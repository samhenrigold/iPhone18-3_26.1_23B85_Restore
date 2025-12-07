void sub_100433828(uint64_t a1)
{
  v3 = *v1;
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
  [v3 setAnalyticsActivityLastExecutionDate:?];
}

id sub_10043393C()
{
  v1 = [*v0 postAnalyticsRateReduceFactor];

  return v1;
}

void sub_1004339E0(char *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_autoreleasePoolPush();
  sub_100433A60(a1, &v6, &v7);
  objc_autoreleasePoolPop(v5);
  if (!v2)
  {
    *a2 = v7;
  }
}

void sub_100433A60(char *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1000F5104(&qword_100946C38, &qword_1007A9648);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v46 - v9;
  v11 = type metadata accessor for REMAccountSnapshotSummary();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = v46 - v18;
  v20 = sub_10042F390(4, 2);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    v56 = v10;
    v57 = v20;
    v48 = v19;
    v49 = v12;
    v55 = v15;
    v50 = v11;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v21 = [objc_allocWithZone(NSFetchRequest) init];
    v22 = [swift_getObjCClassFromMetadata() entity];
    [v21 setEntity:v22];

    [v21 setAffectedStores:0];
    [v21 setPredicate:0];
    v23 = NSManagedObjectContext.fetch<A>(_:)();

    v59 = sub_100018CD8(v24, sub_100018D7C, sub_100010EF0);
    sub_100434DAC(&v59);
    v23, v25, v26, v27, v28, v29, v30, v31;
    v32 = v59;
    if ((v59 & 0x8000000000000000) != 0 || (v59 & 0x4000000000000000) != 0)
    {
      goto LABEL_23;
    }

    v33 = *(v59 + 16);
    for (i = a3; v33; i = a3)
    {
      v46[1] = a2;
      v34 = 0;
      v53 = a1;
      v54 = v32 & 0xC000000000000001;
      a2 = v50;
      v51 = (v49 + 32);
      v52 = (v49 + 48);
      v58 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v54)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v34 >= *(v32 + 16))
          {
            goto LABEL_22;
          }

          v35 = *(v32 + 8 * v34 + 32);
        }

        v36 = v35;
        a3 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v37 = objc_autoreleasePoolPush();
        a1 = v56;
        sub_10043406C(v36, v53, v57, &v59, v56);
        objc_autoreleasePoolPop(v37);

        v38 = (*v52)(a1, 1, a2) == 1;
        v39 = a1;
        if (v38)
        {
          sub_1000050A4(a1, &qword_100946C38, &qword_1007A9648);
        }

        else
        {
          a1 = v51;
          v40 = *v51;
          v41 = v48;
          (*v51)(v48, v39, a2);
          v40(v55, v41, a2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_1003682E8(0, *v58->clientIdentity + 1, 1, v58);
          }

          v43 = *v58->clientIdentity;
          v42 = *&v58->clientIdentity[8];
          if (v43 >= v42 >> 1)
          {
            v58 = sub_1003682E8((v42 > 1), v43 + 1, 1, v58);
          }

          v44 = v58;
          *v58->clientIdentity = v43 + 1;
          v45 = v44 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v43;
          a2 = v50;
          v40(v45, v55, v50);
        }

        ++v34;
        if (a3 == v33)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v33 = _CocoaArrayWrapper.endIndex.getter();
    }

    v58 = &_swiftEmptyArrayStorage;
LABEL_25:

    *i = v58;
  }
}

uint64_t sub_100433F40()
{
  v1 = v0;
  [v0 type];
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  v34 = v2;
  v35 = v3;

  v5._countAndFlagsBits = 95;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v4, v6, v7, v8, v9, v10, v11, v12;
  v13 = [v0 ckIdentifier];
  if (!v13)
  {
    v14 = [v1 objectID];
    v13 = [v14 description];
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);
  v17, v19, v20, v21, v22, v23, v24, v25;
  v35, v26, v27, v28, v29, v30, v31, v32;
  return v34;
}

void sub_10043406C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v97 = a3;
  v108 = a2;
  v98 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v98, v9);
  v11 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = _s10PredicatesOMa(0);
  __chkstk_darwin(v106, v12);
  v99 = (v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14, v15);
  v100 = (v94 - v16);
  __chkstk_darwin(v17, v18);
  v103 = (v94 - v19);
  __chkstk_darwin(v20, v21);
  v104 = (v94 - v22);
  __chkstk_darwin(v23, v24);
  v105 = (v94 - v25);
  __chkstk_darwin(v26, v27);
  v29 = v94 - v28;
  v30 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v30, v31);
  v101 = (v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v33, v34);
  v102 = (v94 - v35);
  __chkstk_darwin(v36, v37);
  v39 = (v94 - v38);
  *&v42 = __chkstk_darwin(v40, v41).n128_u64[0];
  v44 = (v94 - v43);
  v109 = a1;
  v45 = [a1 remObjectID];
  if (v45)
  {
    v96 = v11;
    v107 = a4;
    *v44 = v45;
    v46 = v45;
    swift_storeEnumTagMultiPayload();
    v47 = v46;
    v48 = sub_10001F6F4();
    sub_1000253D4(v44, _s10PredicatesOMa_1);
    v49 = sub_100434B9C(v48, v108, v109, &unk_100938880, off_1008D41A8);
    if (v5)
    {

      *v107 = v5;
    }

    else
    {
      v94[3] = v49;
      v95 = v46;

      *v39 = v47;
      swift_storeEnumTagMultiPayload();
      v50 = v47;
      v51 = sub_10001F6F4();
      sub_1000253D4(v39, _s10PredicatesOMa_1);
      v94[2] = sub_100434B9C(v51, v108, v109, &unk_100938880, off_1008D41A8);

      *v29 = v50;
      v29[8] = 2;
      swift_storeEnumTagMultiPayload();
      v52 = v50;
      v53 = sub_100043AA8();
      sub_1000253D4(v29, _s10PredicatesOMa);
      v54 = sub_100434B9C(v53, v108, v109, &qword_100939EE0, off_1008D41D0);

      v55 = v105;
      *v105 = v52;
      *(v55 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      v56 = v52;
      v57 = sub_100043AA8();
      sub_1000253D4(v55, _s10PredicatesOMa);
      v105 = sub_100434B9C(v57, v108, v109, &qword_100939EE0, off_1008D41D0);

      v58 = v104;
      *v104 = v56;
      swift_storeEnumTagMultiPayload();
      v59 = v56;
      v60 = sub_100043AA8();
      sub_1000253D4(v58, _s10PredicatesOMa);
      v104 = sub_100434B9C(v60, v108, v109, &qword_100939EE0, off_1008D41D0);

      v61 = v103;
      *v103 = v59;
      swift_storeEnumTagMultiPayload();
      v62 = v59;
      v63 = sub_100043AA8();
      sub_1000253D4(v61, _s10PredicatesOMa);
      v103 = sub_100434B9C(v63, v108, v109, &qword_100939EE0, off_1008D41D0);

      v64 = v102;
      *v102 = v62;
      swift_storeEnumTagMultiPayload();
      v65 = v62;
      v66 = sub_10001F6F4();
      sub_1000253D4(v64, _s10PredicatesOMa_1);
      v102 = sub_100434B9C(v66, v108, v109, &unk_100938880, off_1008D41A8);

      v67 = v101;
      *v101 = v65;
      swift_storeEnumTagMultiPayload();
      v68 = v65;
      v69 = sub_10001F6F4();
      sub_1000253D4(v67, _s10PredicatesOMa_1);
      v101 = sub_100434B9C(v69, v108, v109, &unk_100938880, off_1008D41A8);

      v70 = v100;
      *v100 = v68;
      swift_storeEnumTagMultiPayload();
      v71 = v68;
      v72 = sub_100043AA8();
      sub_1000253D4(v70, _s10PredicatesOMa);
      v73 = sub_100434B9C(v72, v108, v109, &qword_100939EE0, off_1008D41D0);
      v94[1] = v54;
      v100 = v73;

      v74 = v99;
      *v99 = v71;
      swift_storeEnumTagMultiPayload();
      v75 = v71;
      v76 = sub_100043AA8();
      sub_1000253D4(v74, _s10PredicatesOMa);
      sub_100434B9C(v76, v108, v109, &qword_100939EE0, off_1008D41D0);
      v106 = v47;

      v77 = v96;
      *v96 = v75;
      swift_storeEnumTagMultiPayload();
      v78 = v75;
      v79 = sub_10002DDAC();
      sub_1000253D4(v77, _s10PredicatesOMa_3);
      sub_100434B9C(v79, v108, v109, &unk_10093F770, off_1008D41E8);

      v80 = v78;
      v81 = sub_1003480AC(v95, 1u);
      sub_100434B9C(v81, v108, v109, &qword_10093CFE0, off_1008D4190);

      v83 = sub_1003480AC(v95, 2u);
      sub_100434B9C(v83, v108, v109, &qword_10093CFE0, off_1008D4190);

      v84 = v80;
      v85 = sub_100224CC4(v84);

      sub_100434B9C(v85, v108, v109, &unk_100939E30, off_1008D4160);
      v86 = v84;
      v87 = sub_10029BD74(v95, 97);

      v99 = sub_100434B9C(v87, v108, v109, &unk_100940330, off_1008D4148);
      v88 = v86;
      v89 = sub_10029BD74(v95, 96);

      v98 = sub_100434B9C(v89, v108, v109, &unk_100940330, off_1008D4148);
      v90 = v88;
      v91 = sub_10029B198(v95, 128);
      v96 = sub_100434B9C(v91, v108, v109, &qword_100940360, off_1008D4138);

      v92 = sub_10029D52C(v95, 128);
      v108 = sub_100434B9C(v92, v108, v109, &qword_100940350, off_1008D4130);

      [v109 type];
      REMAccountSnapshotSummary.init(accountID:accountType:tagLabelCount:totalListCount:totalGroceryListCount:totalReminderCount:softDeletedReminderCount:incompleteReminderCount:incompleteGroceryReminderCount:sharedListsCount:groupCount:parentReminderCount:flaggedReminderCount:customSmartListCount:inlineTagCount:structuredTagCount:attachmentCount:nonDeletedAlarmCount:softDeletedAlarmCount:incompleteLocationAlarmsCount:incompleteTimeAlarmsCount:)();
      v93 = type metadata accessor for REMAccountSnapshotSummary();
      (*(*(v93 - 8) + 56))(a5, 0, 1, v93);
    }
  }

  else
  {
    v82 = type metadata accessor for REMAccountSnapshotSummary();
    (*(*(v82 - 8) + 56))(a5, 1, 1, v82);
  }
}

uint64_t sub_100434B9C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007953F0;
  *(v9 + 32) = a3;
  v10 = a3;
  sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  sub_100270528();
  sub_1000254F4();
  v11 = Sequence.compactMapToSet<A>(_:)();
  sub_10002595C(v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  sub_1000060C8(0, a4, a5);
  v19 = [objc_allocWithZone(NSFetchRequest) init];
  v20 = [swift_getObjCClassFromMetadata() entity];
  [v19 setEntity:v20];

  [v19 setAffectedStores:0];
  [v19 setPredicate:a1];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v19 setAffectedStores:isa];

  v22 = NSManagedObjectContext.count<A>(for:)();
  v9, v23, v24, v25, v26, v27, v28, v29;

  if (v22 < 0)
  {
    return -1;
  }

  else
  {
    return v22;
  }
}

uint64_t sub_100434DAC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10005FF58(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100434E28(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_100434E28(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      v9 = v2 / 2;
      if (v2 <= 1)
      {
        v10 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v20[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v20[1] = v9;
      v12 = v10;
      sub_100435290(v20, v21, a1, v8, v4, v5, v6, v7);
      *(v11 + 16) = 0;
      v12, v13, v14, v15, v16, v17, v18, v19;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100434F3C(0, v2, 1, a1);
  }
}

void sub_100434F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v109 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
    v7 = &selRef_accountStatusWithCompletionHandler_;
LABEL_6:
    v107 = v4;
    v108 = a3;
    v22 = *(v109 + 8 * a3);
    v106 = v5;
    while (1)
    {
      v110 = v5;
      v23 = *v4;
      v24 = v22;
      v111 = v23;
      [v24 v6[269]];
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v112 = v25;
      v114 = v26;

      v28._countAndFlagsBits = 95;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v27, v29, v30, v31, v32, v33, v34, v35;
      v36 = [v24 v7[159]];
      if (!v36)
      {
        v37 = [v24 objectID];
        v36 = [v37 description];
      }

      v116 = v24;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41._countAndFlagsBits = v38;
      v41._object = v40;
      String.append(_:)(v41);
      v40, v42, v43, v44, v45, v46, v47, v48;
      v114, v49, v50, v51, v52, v53, v54, v55;
      v56 = v112;
      v57 = v114;
      [v111 v6[269]];
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v113 = v58;
      v115 = v59;

      v61._countAndFlagsBits = 95;
      v61._object = 0xE100000000000000;
      String.append(_:)(v61);
      v60, v62, v63, v64, v65, v66, v67, v68;
      v69 = [v111 ckIdentifier];
      if (!v69)
      {
        v70 = [v111 objectID];
        v69 = [v70 description];
      }

      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74._countAndFlagsBits = v71;
      v74._object = v73;
      String.append(_:)(v74);
      v73, v75, v76, v77, v78, v79, v80, v81;
      v115, v82, v83, v84, v85, v86, v87, v88;
      if (v56 == v113 && v57 == v115)
      {

        v57, v8, v9, v10, v11, v12, v13, v14;
        v115, v15, v16, v17, v18, v19, v20, v21;
        v6 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        v7 = &selRef_accountStatusWithCompletionHandler_;
LABEL_5:
        a3 = v108 + 1;
        v4 = v107 + 8;
        v5 = v106 - 1;
        if (v108 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v57, v90, v91, v92, v93, v94, v95, v96;
      v115, v97, v98, v99, v100, v101, v102, v103;
      v6 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      v7 = &selRef_accountStatusWithCompletionHandler_;
      if ((v89 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v109)
      {
        break;
      }

      v104 = *v4;
      v22 = *(v4 + 8);
      *v4 = v22;
      *(v4 + 8) = v104;
      v4 -= 8;
      ++v5;
      if (v110 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100435290(SEL **a1, const char *a2, uint64_t *a3, char *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  v10 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = &_swiftEmptyArrayStorage;
LABEL_107:
    v14 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v294 = v9;
      v295 = *v13->clientIdentity;
      if (v295 >= 2)
      {
        while (*v10)
        {
          v9 = *(&v13->super.isa + 2 * v295);
          v296 = *&v13->clientIdentity[16 * v295 + 8];
          sub_100435E08((*v10 + 8 * v9), (*v10 + 8 * *&v13->clientIdentity[16 * v295]), (*v10 + 8 * v296), v14);
          if (v294)
          {
            goto LABEL_117;
          }

          if (v296 < v9)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1004361F4(v13, a2, a3, a4, a5, a6, a7, a8);
          }

          if (v295 - 2 >= *v13->clientIdentity)
          {
            goto LABEL_134;
          }

          v297 = &v13->super.isa + 2 * v295;
          *v297 = v9;
          v297[1] = v296;
          sub_100436168(v295 - 1);
          v295 = *v13->clientIdentity;
          if (v295 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_144;
      }

LABEL_117:
      v13, a2, a3, a4, a5, a6, a7, a8;
      return;
    }

LABEL_140:
    v13 = sub_1004361F4(v13, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_109;
  }

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
  v14 = 0x100928000;
  while (1)
  {
    v15 = v12;
    v16 = v12 + 1;
    v306 = v13;
    if (v12 + 1 < v11)
    {
      v312 = v11;
      v299 = v9;
      v17 = *v10;
      v302 = v12;
      v18 = *(*v10 + 8 * v12);
      v19 = *(*v10 + 8 * v16);
      v20 = v18;
      v21 = sub_100433F40();
      v23 = v22;
      v24 = sub_100433F40();
      v32 = v25;
      if (v21 == v24 && v23 == v25)
      {
        v314 = 0;
      }

      else
      {
        v314 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v23, v25, v26, v27, v28, v29, v30, v31;
      v32, v34, v35, v36, v37, v38, v39, v40;

      v16 = v302 + 2;
      if (v302 + 2 < v312)
      {
        v41 = (v17 + 8 * v302 + 16);
        do
        {
          v309 = v16;
          v57 = *(v41 - 1);
          v58 = *v41;
          v59 = v57;
          [v58 type];
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v61;
          v318 = v60;
          v322 = v61;

          v63._countAndFlagsBits = 95;
          v63._object = 0xE100000000000000;
          String.append(_:)(v63);
          v62, v64, v65, v66, v67, v68, v69, v70;
          v71 = v322;
          v72 = [v58 ckIdentifier];
          if (!v72)
          {
            v73 = [v58 objectID];
            v72 = [v73 description];
          }

          v316 = v58;
          v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v75;

          v77._countAndFlagsBits = v74;
          v77._object = v76;
          String.append(_:)(v77);
          v76, v78, v79, v80, v81, v82, v83, v84;
          v322, v85, v86, v87, v88, v89, v90, v91;
          v92 = v318;
          [v59 type];
          v93 = dispatch thunk of CustomStringConvertible.description.getter();
          v95 = v94;
          v319 = v93;
          v323 = v94;

          v96._countAndFlagsBits = 95;
          v96._object = 0xE100000000000000;
          String.append(_:)(v96);
          v95, v97, v98, v99, v100, v101, v102, v103;
          v104 = [v59 ckIdentifier];
          if (!v104)
          {
            v105 = [v59 objectID];
            v104 = [v105 description];
          }

          v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v107;

          v109._countAndFlagsBits = v106;
          v109._object = v108;
          String.append(_:)(v109);
          v108, v110, v111, v112, v113, v114, v115, v116;
          v323, v117, v118, v119, v120, v121, v122, v123;
          if (v92 == v319 && v71 == v323)
          {

            v71, v124, v125, v126, v127, v128, v129, v130;
            v323, v131, v132, v133, v134, v135, v136, v137;
            v10 = a3;
            v13 = v306;
            v16 = v309;
            if (v314)
            {
              v9 = v299;
              v14 = 0x100928000;
              v15 = v302;
              goto LABEL_25;
            }
          }

          else
          {
            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v71, v43, v44, v45, v46, v47, v48, v49;
            v323, v50, v51, v52, v53, v54, v55, v56;
            v10 = a3;
            v13 = v306;
            v16 = v309;
            if ((v314 ^ v42))
            {
              goto LABEL_24;
            }
          }

          ++v16;
          ++v41;
        }

        while (v312 != v16);
        v16 = v312;
      }

LABEL_24:
      v9 = v299;
      v14 = 0x100928000;
      v15 = v302;
      if (v314)
      {
LABEL_25:
        if (v16 < v15)
        {
          goto LABEL_137;
        }

        if (v15 < v16)
        {
          v138 = 8 * v16 - 8;
          v139 = 8 * v15;
          v140 = v16;
          v141 = v15;
          do
          {
            if (v141 != --v140)
            {
              v142 = *v10;
              if (!*v10)
              {
                goto LABEL_143;
              }

              v143 = *(v142 + v139);
              *(v142 + v139) = *(v142 + v138);
              *(v142 + v138) = v143;
            }

            ++v141;
            v138 -= 8;
            v139 += 8;
          }

          while (v141 < v140);
        }
      }
    }

    v144 = v10[1];
    if (v16 < v144)
    {
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_136;
      }

      if (v16 - v15 < a4)
      {
        break;
      }
    }

LABEL_56:
    if (v16 < v15)
    {
      goto LABEL_135;
    }

    v311 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1003658B8(0, *v13->clientIdentity + 1, 1, v13, a5, a6, a7, a8);
    }

    v249 = *v13->clientIdentity;
    v248 = *&v13->clientIdentity[8];
    v250 = v249 + 1;
    if (v249 >= v248 >> 1)
    {
      v13 = sub_1003658B8((v248 > 1), v249 + 1, 1, v13, a5, a6, a7, a8);
    }

    *v13->clientIdentity = v250;
    v251 = v13 + 16 * v249;
    *(v251 + 4) = v15;
    *(v251 + 5) = v311;
    v252 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v249)
    {
      while (1)
      {
        v253 = v250 - 1;
        if (v250 >= 4)
        {
          break;
        }

        if (v250 == 3)
        {
          v254 = *&v13->clientIdentity[16];
          v255 = *&v13->clientIdentity[24];
          v264 = __OFSUB__(v255, v254);
          v256 = v255 - v254;
          v257 = v264;
LABEL_76:
          if (v257)
          {
            goto LABEL_124;
          }

          v270 = &v13->super.isa + 2 * v250;
          v272 = *v270;
          v271 = v270[1];
          v273 = __OFSUB__(v271, v272);
          v274 = v271 - v272;
          v275 = v273;
          if (v273)
          {
            goto LABEL_127;
          }

          v276 = &v13->clientIdentity[16 * v253 + 16];
          v278 = *v276;
          v277 = *(v276 + 1);
          v264 = __OFSUB__(v277, v278);
          v279 = v277 - v278;
          if (v264)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v274, v279))
          {
            goto LABEL_131;
          }

          if (v274 + v279 >= v256)
          {
            if (v256 < v279)
            {
              v253 = v250 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v280 = &v13->super.isa + 2 * v250;
        v282 = *v280;
        v281 = v280[1];
        v264 = __OFSUB__(v281, v282);
        v274 = v281 - v282;
        v275 = v264;
LABEL_90:
        if (v275)
        {
          goto LABEL_126;
        }

        v283 = v13 + 16 * v253;
        v285 = *(v283 + 4);
        v284 = *(v283 + 5);
        v264 = __OFSUB__(v284, v285);
        v286 = v284 - v285;
        if (v264)
        {
          goto LABEL_129;
        }

        if (v286 < v274)
        {
          goto LABEL_3;
        }

LABEL_97:
        v291 = v253 - 1;
        if (v253 - 1 >= v250)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v10)
        {
          goto LABEL_142;
        }

        v292 = *&v13->clientIdentity[16 * v291 + 16];
        v14 = *&v13->clientIdentity[16 * v253 + 24];
        sub_100435E08((*v10 + 8 * v292), (*v10 + 8 * *&v13->clientIdentity[16 * v253 + 16]), (*v10 + 8 * v14), v252);
        if (v9)
        {
          goto LABEL_117;
        }

        if (v14 < v292)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1004361F4(v13, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v291 >= *v13->clientIdentity)
        {
          goto LABEL_121;
        }

        v293 = v13 + 16 * v291;
        *(v293 + 4) = v292;
        *(v293 + 5) = v14;
        sub_100436168(v253);
        v250 = *v13->clientIdentity;
        if (v250 <= 1)
        {
          goto LABEL_3;
        }
      }

      v258 = &v13->clientIdentity[16 * v250 + 16];
      v259 = *(v258 - 64);
      v260 = *(v258 - 56);
      v264 = __OFSUB__(v260, v259);
      v261 = v260 - v259;
      if (v264)
      {
        goto LABEL_122;
      }

      v263 = *(v258 - 48);
      v262 = *(v258 - 40);
      v264 = __OFSUB__(v262, v263);
      v256 = v262 - v263;
      v257 = v264;
      if (v264)
      {
        goto LABEL_123;
      }

      v265 = &v13->super.isa + 2 * v250;
      v267 = *v265;
      v266 = v265[1];
      v264 = __OFSUB__(v266, v267);
      v268 = v266 - v267;
      if (v264)
      {
        goto LABEL_125;
      }

      v264 = __OFADD__(v256, v268);
      v269 = v256 + v268;
      if (v264)
      {
        goto LABEL_128;
      }

      if (v269 >= v261)
      {
        v287 = &v13->clientIdentity[16 * v253 + 16];
        v289 = *v287;
        v288 = *(v287 + 1);
        v264 = __OFSUB__(v288, v289);
        v290 = v288 - v289;
        if (v264)
        {
          goto LABEL_132;
        }

        if (v256 < v290)
        {
          v253 = v250 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v11 = v10[1];
    v12 = v311;
    v14 = 0x100928000;
    if (v311 >= v11)
    {
      goto LABEL_107;
    }
  }

  v145 = &a4[v15];
  if (__OFADD__(v15, a4))
  {
    goto LABEL_138;
  }

  if (v145 >= v144)
  {
    v145 = v10[1];
  }

  if (v145 < v15)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v16 == v145)
  {
    goto LABEL_56;
  }

  v300 = v9;
  v313 = *v10;
  v146 = *v10 + 8 * v16 - 8;
  v303 = v15;
  v304 = v145;
  v147 = v15 - v16;
  v148 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
LABEL_44:
  v308 = v146;
  v310 = v16;
  v163 = *(v313 + 8 * v16);
  v307 = v147;
  v164 = v147;
  while (1)
  {
    v315 = v164;
    v165 = *v146;
    v166 = v163;
    v167 = v165;
    [v166 v148[269]];
    v168 = dispatch thunk of CustomStringConvertible.description.getter();
    v170 = v169;
    v320 = v168;
    v324 = v169;

    v171._countAndFlagsBits = 95;
    v171._object = 0xE100000000000000;
    String.append(_:)(v171);
    v170, v172, v173, v174, v175, v176, v177, v178;
    v179 = [v166 *(v14 + 1272)];
    if (!v179)
    {
      v180 = [v166 objectID];
      v179 = [v180 description];
    }

    v317 = v166;
    v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v183 = v182;

    v184._countAndFlagsBits = v181;
    v184._object = v183;
    String.append(_:)(v184);
    v183, v185, v186, v187, v188, v189, v190, v191;
    v324, v192, v193, v194, v195, v196, v197, v198;
    v200 = v320;
    v199 = v324;
    [v167 v148[269]];
    v201 = dispatch thunk of CustomStringConvertible.description.getter();
    v203 = v202;
    v321 = v201;
    v325 = v202;

    v204._countAndFlagsBits = 95;
    v204._object = 0xE100000000000000;
    String.append(_:)(v204);
    v203, v205, v206, v207, v208, v209, v210, v211;
    v212 = [v167 ckIdentifier];
    if (!v212)
    {
      v213 = [v167 objectID];
      v212 = [v213 description];
    }

    v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v216 = v215;

    v217._countAndFlagsBits = v214;
    v217._object = v216;
    String.append(_:)(v217);
    v216, v218, v219, v220, v221, v222, v223, v224;
    v325, v225, v226, v227, v228, v229, v230, v231;
    if (v200 == v321 && v199 == v325)
    {

      v199, v149, v150, v151, v152, v153, v154, v155;
      v325, v156, v157, v158, v159, v160, v161, v162;
LABEL_42:
      v148 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      v14 = &selRef_accountStatusWithCompletionHandler_;
LABEL_43:
      v16 = v310 + 1;
      v146 = v308 + 8;
      v147 = v307 - 1;
      if ((v310 + 1) == v304)
      {
        v16 = v304;
        v9 = v300;
        v10 = a3;
        v13 = v306;
        v15 = v303;
        goto LABEL_56;
      }

      goto LABEL_44;
    }

    v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v199, v233, v234, v235, v236, v237, v238, v239;
    v325, v240, v241, v242, v243, v244, v245, v246;
    if ((v232 & 1) == 0)
    {
      goto LABEL_42;
    }

    v148 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
    v14 = 0x100928000;
    if (!v313)
    {
      break;
    }

    v247 = *v146;
    v163 = *(v146 + 8);
    *v146 = v163;
    *(v146 + 8) = v247;
    v146 -= 8;
    v164 = v315 + 1;
    if (v315 == -1)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_100435E08(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v55 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v104 = &v4[v12];
    if (v10 >= 8 && v55 > v6)
    {
      v103 = v4;
LABEL_32:
      v102 = v55;
      v56 = v55 - 1;
      v57 = v5;
      v58 = v104;
      do
      {
        v59 = *--v58;
        v60 = v56;
        v61 = *v56;
        v62 = v59;
        v63 = v61;
        v64 = sub_100433F40();
        v66 = v65;
        v67 = sub_100433F40();
        v69 = v68;
        if (v64 == v67 && v66 == v68)
        {

          v66, v86, v87, v88, v89, v90, v91, v92;
          v69, v93, v94, v95, v96, v97, v98, v99;
          v5 = v57 - 1;
        }

        else
        {
          v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v66, v72, v73, v74, v75, v76, v77, v78;
          v69, v79, v80, v81, v82, v83, v84, v85;
          v5 = v57 - 1;
          if (v71)
          {
            v100 = v60;
            if (v57 != v102)
            {
              *v5 = *v60;
            }

            v4 = v103;
            if (v104 <= v103 || (v55 = v100, v100 <= v6))
            {
              v55 = v100;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v56 = v60;
        v4 = v103;
        if (v104 != v57)
        {
          *v5 = *v58;
        }

        v104 = v58;
        v57 = v5;
      }

      while (v58 > v103);
      v104 = v58;
      v55 = v102;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v104 = &v4[v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v4;
        v16 = *v14;
        v17 = v15;
        v18 = sub_100433F40();
        v20 = v19;
        v21 = sub_100433F40();
        v23 = v22;
        v24 = v18 == v21 && v20 == v22;
        if (v24)
        {
          break;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v20, v26, v27, v28, v29, v30, v31, v32;
        v23, v33, v34, v35, v36, v37, v38, v39;
        if ((v25 & 1) == 0)
        {
          goto LABEL_21;
        }

        v40 = v14;
        v24 = v6 == v14++;
        if (!v24)
        {
          goto LABEL_22;
        }

LABEL_23:
        ++v6;
        if (v4 >= v104 || v14 >= v5)
        {
          goto LABEL_25;
        }
      }

      v20, v41, v42, v43, v44, v45, v46, v47;
      v23, v48, v49, v50, v51, v52, v53, v54;
LABEL_21:
      v40 = v4;
      v24 = v6 == v4++;
      if (v24)
      {
        goto LABEL_23;
      }

LABEL_22:
      *v6 = *v40;
      goto LABEL_23;
    }

LABEL_25:
    v55 = v6;
  }

LABEL_49:
  if (v55 != v4 || v55 >= (v4 + ((v104 - v4 + (v104 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v55, v4, 8 * (v104 - v4));
  }

  return 1;
}

uint64_t sub_100436168(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004361F4(v3, v5, v6, v7, v8, v9, v10, v11);
    v3 = result;
  }

  v12 = *(v3 + 16);
  if (v12 <= a1)
  {
    __break(1u);
  }

  else
  {
    v13 = v12 - 1;
    v14 = v3 + 16 * a1;
    v15 = *(v14 + 32);
    memmove((v14 + 32), (v14 + 48), 16 * (v12 - 1 - a1));
    *(v3 + 16) = v13;
    *v1 = v3;
    return v15;
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100436208(_TtC7remindd19RDXPCStorePerformer *result, int64_t a2, void *a3, _TtC7remindd19RDXPCStorePerformer *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *&a4->clientIdentity[8];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4->clientIdentity;
  if (v11 <= v12)
  {
    v13 = *a4->clientIdentity;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000F5104(&qword_100943020, &qword_1007A3AA0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->clientIdentity = v12;
    *&v14->clientIdentity[8] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  v17 = &v14->clientIdentity[16];
  v18 = &a4->clientIdentity[16];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *a4->clientIdentity = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

void sub_100436540(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(0x44497463656A626FLL, 0xE800000000000000, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(a3, 1, AssociatedTypeWitness) == 1)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_100946C50);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136446210;
      swift_getAssociatedTypeWitness();
      v10 = [swift_getObjCClassFromMetadata() description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v23);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v7, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1004367B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946C50);
  v1 = sub_100006654(v0, qword_100946C50);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100436880()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004368F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_100436974(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1A88, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

Swift::Int sub_1004369F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100436A6C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_100436AEC(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1AC0, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

unint64_t sub_100436BE4()
{
  result = qword_100946C78;
  if (!qword_100946C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946C78);
  }

  return result;
}

unint64_t sub_100436C6C()
{
  result = qword_100946C90;
  if (!qword_100946C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946C90);
  }

  return result;
}

unint64_t sub_100436CC4()
{
  result = qword_100946C98;
  if (!qword_100946C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946C98);
  }

  return result;
}

double sub_100436D88(uint64_t a1)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v6 = 0xEA0000000000676ELL;
    if (v2 != 1)
    {
      v6 = 0xE700000000000000;
    }

    if (*v1)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v3 = 0xEB000000006E656BLL;
    if (v2 != 5)
    {
      v3 = 0xE900000000000079;
    }

    v4 = 0x80000001007EA030;
    if (v2 != 3)
    {
      v4 = 0x80000001007EA050;
    }

    if (*v1 <= 4u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  String.hash(into:)();

  v5, v7, v8, v9, v10, v11, v12, v13;
  return result;
}

unint64_t sub_100436EB8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100437494(*a1);
  *a2 = result;
  return result;
}

void sub_100436EE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE800000000000000;
    v9 = 0xEA0000000000676ELL;
    v10 = 0x6972745364697575;
    if (v2 != 1)
    {
      v10 = 0x4C525574736F68;
      v9 = 0xE700000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x44497463656A626FLL;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEB000000006E656BLL;
    v4 = 0x6F54636E79536164;
    if (v2 != 5)
    {
      v4 = 0x654B687375506164;
      v3 = 0xE900000000000079;
    }

    v5 = 0xD000000000000012;
    v6 = 0x80000001007EA030;
    if (v2 != 3)
    {
      v5 = 0xD000000000000017;
      v6 = 0x80000001007EA050;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_100436FF4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100437494(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10043701C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6972745364697575;
    if (v1 != 1)
    {
      v5 = 0x4C525574736F68;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x44497463656A626FLL;
    }
  }

  else
  {
    v2 = 0x6F54636E79536164;
    if (v1 != 5)
    {
      v2 = 0x654B687375506164;
    }

    v3 = 0xD000000000000012;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100437110(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x44497473696CLL;
  }

  else
  {
    v9 = 0x49746E756F636361;
  }

  if (v8)
  {
    v10 = 0xE900000000000044;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (*a2)
  {
    v11 = 0x44497473696CLL;
  }

  else
  {
    v11 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v12 = 0xE900000000000044;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_1004371B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE900000000000044;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_10043723C(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE900000000000044;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_1004372AC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE900000000000044;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_10043732C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E19E8, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_10043738C(uint64_t *a1@<X8>)
{
  v2 = 0x49746E756F636361;
  if (*v1)
  {
    v2 = 0x44497473696CLL;
  }

  v3 = 0xE900000000000044;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1004373DC(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E19E8, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

uint64_t sub_100437440()
{
  if (*v0)
  {
    return 0x44497473696CLL;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

unint64_t sub_100437494(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0F30, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_1004374E0(void *a1, void *a2, uint64_t a3)
{
  v87 = type metadata accessor for URL();
  v6 = *(v87 - 8);
  __chkstk_darwin(v87, v7);
  v86 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for UUID();
  v9 = *(v89 - 8);
  __chkstk_darwin(v89, v10);
  v88 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100436540(&v90);
  v18 = v90;
  v84 = a2;
  v82 = v6;
  v83 = a1;
  v85 = a3;
  v81 = v9;
  if (v90 == 7 || (v19 = *(a3 + 16)) == 0)
  {
    v35 = 0;
    goto LABEL_59;
  }

  v20 = (a3 + 32);
  v21 = v19 - 1;
  while (1)
  {
    v22 = v21;
    v24 = *v20++;
    v23 = v24;
    if (v24 <= 2)
    {
      v29 = 0x6972745364697575;
      if (v23 != 1)
      {
        v29 = 0x4C525574736F68;
      }

      v30 = 0xEA0000000000676ELL;
      if (v23 != 1)
      {
        v30 = 0xE700000000000000;
      }

      if (v23)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0x44497463656A626FLL;
      }

      if (v23)
      {
        v26 = v30;
      }

      else
      {
        v26 = 0xE800000000000000;
      }

      if (v18 > 2)
      {
LABEL_33:
        v31 = 0x6F54636E79536164;
        if (v18 != 5)
        {
          v31 = 0x654B687375506164;
        }

        v32 = 0xEB000000006E656BLL;
        if (v18 != 5)
        {
          v32 = 0xE900000000000079;
        }

        v33 = 0xD000000000000017;
        if (v18 == 3)
        {
          v33 = 0xD000000000000012;
          v34 = 0x80000001007EA030;
        }

        else
        {
          v34 = 0x80000001007EA050;
        }

        if (v18 <= 4)
        {
          v27 = v33;
        }

        else
        {
          v27 = v31;
        }

        if (v18 <= 4)
        {
          v28 = v34;
        }

        else
        {
          v28 = v32;
        }

        if (v25 != v27)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }

    else if (v23 > 4)
    {
      if (v23 == 5)
      {
        v25 = 0x6F54636E79536164;
        v26 = 0xEB000000006E656BLL;
        if (v18 > 2)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v25 = 0x654B687375506164;
        v26 = 0xE900000000000079;
        if (v18 > 2)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (v23 == 3)
      {
        v25 = 0xD000000000000012;
      }

      else
      {
        v25 = 0xD000000000000017;
      }

      if (v23 == 3)
      {
        v26 = 0x80000001007EA030;
      }

      else
      {
        v26 = 0x80000001007EA050;
      }

      if (v18 > 2)
      {
        goto LABEL_33;
      }
    }

    if (v18)
    {
      break;
    }

    v28 = 0xE800000000000000;
    v27 = 0x44497463656A626FLL;
    if (v25 == 0x44497463656A626FLL)
    {
      goto LABEL_47;
    }

LABEL_48:
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v26, v36, v37, v38, v39, v40, v41, v42;
    v28, v43, v44, v45, v46, v47, v48, v49;
    if ((v35 & 1) == 0)
    {
      v21 = v22 - 1;
      if (v22)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  if (v18 == 1)
  {
    v27 = 0x6972745364697575;
  }

  else
  {
    v27 = 0x4C525574736F68;
  }

  if (v18 == 1)
  {
    v28 = 0xEA0000000000676ELL;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  if (v25 != v27)
  {
    goto LABEL_48;
  }

LABEL_47:
  if (v26 != v28)
  {
    goto LABEL_48;
  }

  v26, v12, v27, v13, v14, v15, v16, v17;
  v28, v74, v75, v76, v77, v78, v79, v80;
  v35 = 1;
LABEL_59:
  v50 = *(v85 + 16);
  v52 = v83;
  v51 = v84;
  if (v50)
  {
    v53 = (v85 + 32);
    v85 = v82 + 8;
    v54 = (v81 + 8);
    while (1)
    {
      v60 = *v53++;
      v59 = v60;
      if (v60 <= 2)
      {
        if (v59)
        {
          if (v59 == 1)
          {
            v58.super.isa = [v52 uuidString];
            [v51 setUuidString:{v58.super.isa, v81, v82}];
          }

          else
          {
            v67 = [v52 hostURL];
            if (v67)
            {
              v68 = v86;
              v69 = v67;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              URL._bridgeToObjectiveC()(v70);
              v58.super.isa = v71;
              (*v85)(v68, v87);
            }

            else
            {
              v58.super.isa = 0;
            }

            [v51 setHostURL:{v58.super.isa, v81, v82}];
          }
        }

        else
        {
          v55 = [v52 objectID];
          v56 = [v55 uuid];

          v57 = v88;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v58.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (*v54)(v57, v89);
          [v51 setIdentifier:{v58.super.isa, v81, v82}];
        }

        goto LABEL_62;
      }

      if (v59 <= 4)
      {
        if (v59 == 3)
        {
          v58.super.isa = [v52 externalIdentifier];
          [v51 setExternalIdentifier:{v58.super.isa, v81, v82}];
        }

        else
        {
          v58.super.isa = [v52 externalModificationTag];
          [v51 setExternalModificationTag:{v58.super.isa, v81, v82}];
        }

        goto LABEL_62;
      }

      if (v59 != 5)
      {
        break;
      }

      if (v35)
      {
        goto LABEL_63;
      }

      if (qword_100936130 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_100006654(v61, qword_100946D00);
      v58.super.isa = Logger.logObject.getter();
      v62 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v58.super.isa, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        v64 = v62;
        isa = v58.super.isa;
        v66 = ".daSyncToken should not be practically used in REMCalDAVNotification";
LABEL_85:
        _os_log_impl(&_mh_execute_header, isa, v64, v66, v63, 2u);
      }

LABEL_62:

LABEL_63:
      if (!--v50)
      {
        return;
      }
    }

    if (v35)
    {
      goto LABEL_63;
    }

    if (qword_100936130 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100006654(v72, qword_100946D00);
    v58.super.isa = Logger.logObject.getter();
    v73 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v58.super.isa, v73))
    {
      goto LABEL_62;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = v73;
    isa = v58.super.isa;
    v66 = ".daPushKey should not be practically used in REMCalDAVNotification";
    goto LABEL_85;
  }
}

void *sub_100437BEC(void *a1)
{
  v2 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = (&v108 - v8);
  *&v12 = __chkstk_darwin(v10, v11).n128_u64[0];
  v14 = &v108 - v13;
  v116 = 0;
  v15 = [a1 remObjectIDWithError:{&v116, v12}];
  if (v15)
  {
    v114 = v14;
    v115 = v15;
    v16 = v116;
    v17 = [a1 account];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 remObjectID];

      v113 = v19;
      if (v19)
      {
        v20 = [a1 owner];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 remObjectID];

          if (v22)
          {
            v23 = [a1 uuidString];
            if (v23)
            {
              v24 = v23;
              v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v25;
            }

            else
            {
              v111 = 0;
              v26 = 0;
            }

            v63 = [a1 hostURL];
            if (v63)
            {
              v64 = v63;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v65 = 0;
            }

            else
            {
              v65 = 1;
            }

            v66 = type metadata accessor for URL();
            v112 = *(v66 - 8);
            (*(v112 + 56))(v9, v65, 1, v66);
            sub_10003E8F8(v9, v114);
            v67 = [a1 externalIdentifier];
            if (v67)
            {
              v68 = v67;
              v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v70 = v69;
            }

            else
            {
              v110 = 0;
              v70 = 0;
            }

            v71 = [a1 externalModificationTag];
            if (v71)
            {
              v72 = v71;
              v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v74 = v73;
            }

            else
            {
              v109 = 0;
              v74 = 0;
            }

            sub_1001E0978(v114, v5);
            if (v26)
            {
              v75 = String._bridgeToObjectiveC()();
              v26, v76, v77, v78, v79, v80, v81, v82;
            }

            else
            {
              v75 = 0;
            }

            v83 = v112;
            if ((*(v112 + 48))(v5, 1, v66) == 1)
            {
              v85 = 0;
              if (v70)
              {
                goto LABEL_41;
              }
            }

            else
            {
              URL._bridgeToObjectiveC()(v84);
              v85 = v103;
              (*(v83 + 8))(v5, v66);
              if (v70)
              {
LABEL_41:
                v86 = String._bridgeToObjectiveC()();
                v70, v87, v88, v89, v90, v91, v92, v93;
                v94 = v22;
                if (v74)
                {
LABEL_42:
                  v95 = String._bridgeToObjectiveC()();
                  v74, v96, v97, v98, v99, v100, v101, v102;
LABEL_46:
                  v104 = objc_allocWithZone(REMCalDAVNotification);
                  v105 = v115;
                  v106 = v113;
                  v107 = v94;
                  v9 = [v104 initCalDAVNotificationWithObjectID:v115 accountID:v113 listID:v94 uuidString:v75 hostURL:v85 externalIdentifier:v86 externalModificationTag:v95];

                  sub_1000050A4(v114, &unk_1009441F0, &qword_100795760);
                  return v9;
                }

LABEL_45:
                v95 = 0;
                goto LABEL_46;
              }
            }

            v86 = 0;
            v94 = v22;
            if (v74)
            {
              goto LABEL_42;
            }

            goto LABEL_45;
          }
        }
      }
    }

    v28 = [a1 account];
    if (v28)
    {
      v29 = v28;
      v30 = 0xE900000000000029;
      v31 = v115;
    }

    else
    {
      v31 = v115;
      if (qword_100936138 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100006654(v32, qword_100946D18);
      v33 = v31;
      v29 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v34))
      {
        v35 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v35 = 138412290;
        *(v35 + 4) = v33;
        *v9 = v31;
        v36 = v33;
        _os_log_impl(&_mh_execute_header, v29, v34, "REMCalDAVNotificationCDIngestor: cdCalDAVNotification.account is nil {cdCalDAVNotification.remObjectID: %@}", v35, 0xCu);
        sub_1000050A4(v9, &unk_100938E70, &unk_100797230);
      }

      v30 = 0xE700000000000000;
    }

    v37 = [a1 owner];
    if (v37)
    {
      v45 = v37;
    }

    else
    {
      v30, v38, v39, v40, v41, v42, v43, v44;
      if (qword_100936138 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100006654(v46, qword_100946D18);
      v47 = v31;
      v45 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v47;
        *v50 = v31;
        v51 = v47;
        _os_log_impl(&_mh_execute_header, v45, v48, "REMCalDAVNotificationCDIngestor: cdCalDAVNotification.owner is nil {cdCalDAVNotification.remObjectID: %@}", v49, 0xCu);
        sub_1000050A4(v50, &unk_100938E70, &unk_100797230);
      }

      v30 = 0xE500000000000000;
    }

    v52 = objc_opt_self();
    sub_1004383B8();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v54 = String._bridgeToObjectiveC()();
    v30, v55, v56, v57, v58, v59, v60, v61;
    [v52 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v54];

    swift_willThrow();
  }

  else
  {
    v27 = v116;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v9;
}

unint64_t sub_1004383B8()
{
  result = qword_10094F150;
  if (!qword_10094F150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094F150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDDynamicXPCActivity.MotionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDynamicXPCActivity.MotionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100438598()
{
  result = qword_100946F30;
  if (!qword_100946F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946F30);
  }

  return result;
}

unint64_t sub_100438620()
{
  result = qword_100946F48;
  if (!qword_100946F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946F48);
  }

  return result;
}

uint64_t static REMCDTemplate.cdEntityName.getter()
{
  v0 = [objc_opt_self() cdEntityName];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

Swift::Int __swiftcall REMCDTemplate.parentEffectiveMinimumSupportedVersion()()
{
  v1 = [v0 parentAccount];
  if (!v1)
  {
    return kREMSupportedVersionUnset;
  }

  v2 = v1;
  v3 = [v1 effectiveMinimumSupportedVersion];

  return v3;
}

uint64_t static REMCDTemplate.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008E3590);
  sub_100034610(&unk_1008E35B0);
  return v0;
}

Swift::Bool __swiftcall REMCDTemplate.isConnected(toAccountObject:)(NSMutableDictionary toAccountObject)
{
  v3 = [v1 remObjectID];
  if (v3)
  {
    v4 = v3;
    if ([(objc_class *)toAccountObject.super.super.isa objectForKeyedSubscript:v3])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {

        LOBYTE(v3) = v12 == 1;
        return v3;
      }
    }

    else
    {
      sub_1000050A4(v15, &qword_100939ED0, &qword_100791B10);
    }

    v5 = v4;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)toAccountObject.super.super.isa setObject:isa forKeyedSubscript:v5];

    v7 = [v1 parentAccount];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isConnectedToAccountObject:toAccountObject.super.super.isa];

      *&v15[0] = v9;
      type metadata accessor for REMObjectIsConnectedState(0);
      v10 = v5;
      [(objc_class *)toAccountObject.super.super.isa setObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() forKeyedSubscript:v10];

      swift_unknownObjectRelease();
      LOBYTE(v3) = v9;
    }

    else
    {

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

char *REMCDTemplate.publicLink.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v89 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v92 = &v83 - v7;
  __chkstk_darwin(v8, v9);
  v91 = &v83 - v10;
  __chkstk_darwin(v11, v12);
  v93 = &v83 - v13;
  __chkstk_darwin(v14, v15);
  v17 = &v83 - v16;
  __chkstk_darwin(v18, v19);
  v94 = &v83 - v20;
  __chkstk_darwin(v21, v22);
  v24 = &v83 - v23;
  __chkstk_darwin(v25, v26);
  v95 = &v83 - v27;
  v28 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v28 - 8, v29);
  v31 = &v83 - v30;
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32, v34);
  v96 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v36 - 8, v37);
  v90 = &v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v41 = __chkstk_darwin(v39, v40).n128_u64[0];
  v43 = &v83 - v42;
  v44 = [v0 mostRecentPublicLinkUpdateRequestDate];
  if (!v44)
  {
    (*(v2 + 56))(v43, 1, 1, v1);
    sub_1000050A4(v43, &unk_100938850, qword_100795AE0);
    return 0;
  }

  v45 = v44;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v87 = v1;
  v88 = v2;
  v86 = *(v2 + 56);
  v86(v43, 0, 1, v1);
  sub_1000050A4(v43, &unk_100938850, qword_100795AE0);
  v46 = [objc_opt_self() sharedInstance];
  v97[3] = sub_1000060C8(0, &qword_100946F88, REMAppleAccountUtilities_ptr);
  v97[4] = &off_1008F6B20;
  v97[0] = v46;
  sub_100439B0C(v97, v31);
  sub_10000607C(v97);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_1000050A4(v31, &unk_1009441F0, &qword_100795760);
    return 0;
  }

  v47 = v96;
  (*(v33 + 32))(v96, v31, v32);
  v48 = REMCDTemplate.publicLinkConfiguration.getter();
  if (!v48)
  {
    (*(v33 + 8))(v47, v32);
    return 0;
  }

  v49 = v48;
  v50 = [v0 publicLinkCreationDate];
  if (!v50)
  {
    (*(v33 + 8))(v47, v32);

    return 0;
  }

  v83 = v49;
  v84 = v33;
  v85 = v32;
  v51 = v50;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = v87;
  v53 = v88;
  v54 = *(v88 + 32);
  v55 = v95;
  v54(v95, v24, v87);
  v56 = [v0 publicLinkLastModifiedDate];
  if (!v56)
  {

    (*(v53 + 8))(v55, v52);
LABEL_15:
    (*(v84 + 8))(v96, v85);
    return 0;
  }

  v57 = v56;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = v94;
  v54(v94, v17, v52);
  v59 = [v0 publicLinkExpirationDate];
  if (!v59)
  {

    v68 = *(v88 + 8);
    v68(v58, v52);
    v68(v55, v52);
    goto LABEL_15;
  }

  v60 = v91;
  v61 = v59;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v54(v93, v60, v52);
  v62 = [v0 lastModifiedDate];
  if (v62)
  {
    v63 = v89;
    v64 = v62;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = v90;
    v54(v90, v63, v52);
    v86(v65, 0, 1, v52);
    v66 = v92;
    v54(v92, v65, v52);
    v67 = v88;
  }

  else
  {
    v70 = v90;
    v86(v90, 1, 1, v52);
    v66 = v92;
    static Date.distantPast.getter();
    v67 = v88;
    if ((*(v88 + 48))(v70, 1, v52) != 1)
    {
      sub_1000050A4(v70, &unk_100938850, qword_100795AE0);
    }
  }

  LODWORD(v92) = static Date.< infix(_:_:)();
  v71 = *(v67 + 8);
  v71(v66, v52);
  v72 = objc_allocWithZone(REMTemplatePublicLink);
  URL._bridgeToObjectiveC()(v73);
  v75 = v74;
  v76 = v95;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v78 = Date._bridgeToObjectiveC()().super.isa;
  v79 = v93;
  v80 = Date._bridgeToObjectiveC()().super.isa;
  v81 = v72;
  v82 = v83;
  v92 = [v81 initWithURL:v75 configuration:v83 creationDate:isa lastModifiedDate:v78 expirationDate:v80 canBeUpdated:v92 & 1];

  v71(v79, v52);
  v71(v94, v52);
  v71(v76, v52);
  (*(v84 + 8))(v96, v85);
  return v92;
}

id REMCDTemplate.publicLinkConfiguration.getter()
{
  result = [v0 publicLinkConfigurationData];
  if (result)
  {
    v2 = result;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = objc_autoreleasePoolPush();
    sub_1000060C8(0, &qword_100946F90, NSKeyedUnarchiver_ptr);
    sub_1000060C8(0, &unk_100946F98, REMTemplatePublicLinkConfiguration_ptr);
    v7 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    objc_autoreleasePoolPop(v6);
    sub_10001BBA0(v3, v5);
    return v7;
  }

  return result;
}

void REMCDTemplate.publicLinkConfiguration.setter(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_autoreleasePoolPush();
    v45 = 0;
    v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v45];
    v5 = v45;
    if (v4)
    {
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      objc_autoreleasePoolPop(v3);
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001BBA0(v6, v8);
      [v1 setPublicLinkConfigurationData:isa];
    }

    else
    {
      v10 = v5;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      objc_autoreleasePoolPop(v3);
      if (qword_100936140 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_100946F50);
      v12 = v2;
      v13 = v1;
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v16 = 136446722;
        v17 = [v13 remObjectID];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 description];

          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
        }

        else
        {
          v22 = 0xE300000000000000;
          v20 = 7104878;
        }

        v23 = sub_10000668C(v20, v22, &v45);
        v22, v24, v25, v26, v27, v28, v29, v30;
        *(v16 + 4) = v23;
        *(v16 + 12) = 2114;
        *(v16 + 14) = v12;
        *v43 = a1;
        *(v16 + 22) = 2082;
        swift_getErrorValue();
        v31 = v12;
        v32 = Error.rem_errorDescription.getter();
        v34 = v33;
        v35 = sub_10000668C(v32, v33, &v45);
        v34, v36, v37, v38, v39, v40, v41, v42;
        *(v16 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to set '\\REMCDTemplate.publicLinkConfiguration' due to error upon encoding 'newValue' as 'Data' {remObjectID: %{public}s, newValue: %{public}@, error: %{public}s}", v16, 0x20u);
        sub_1000050A4(v43, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();
      }

      [v13 setPublicLinkConfigurationData:0];
    }
  }

  else
  {

    [v1 setPublicLinkConfigurationData:0];
  }
}

void (*REMCDTemplate.publicLinkConfiguration.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = REMCDTemplate.publicLinkConfiguration.getter();
  return sub_100439AA4;
}

void sub_100439AA4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    REMCDTemplate.publicLinkConfiguration.setter(v2);
  }

  else
  {
    REMCDTemplate.publicLinkConfiguration.setter(*a1);
  }
}

uint64_t sub_100439B0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v266 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v266, v6);
  v270 = &v263 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = &v263 - v10;
  v12 = sub_1000F5104(&unk_100946FE0, &qword_1007A9D20);
  __chkstk_darwin(v12 - 8, v13);
  v272 = &v263 - v14;
  v15 = type metadata accessor for URLComponents();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v263 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v273 = *(v20 - 8);
  __chkstk_darwin(v20, v21);
  v269 = &v263 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = __chkstk_darwin(v23, v24).n128_u64[0];
  v27 = &v263 - v26;
  v28 = [v2 publicLinkURLUUID];
  if (v28)
  {
    v263 = ObjectType;
    v267 = v19;
    v268 = a2;
    v29 = v28;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = [v2 parentAccount];
    v271 = v2;
    if (v30)
    {
      v31 = v30;
      v32 = [v30 ckIdentifier];

      if (v32)
      {
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = a1;
        v37 = a1[3];
        v265 = v16;
        v38 = v20;
        v39 = v36[4];
        sub_10000F61C(v36, v37);
        v40 = *(v39 + 8);
        v41 = v39;
        v20 = v38;
        v16 = v265;
        v42 = v40(v33, v35, v37, v41);
        v44 = v43;
        v2 = v271;
        v35, v43, v45, v46, v47, v48, v49, v50;
        if (v44)
        {
          v58 = (v44 >> 56) & 0xF;
          if ((v44 & 0x2000000000000000) == 0)
          {
            v58 = v42 & 0xFFFFFFFFFFFFLL;
          }

          if (v58)
          {

            v264 = 1;
            goto LABEL_14;
          }

          v44, v51, v52, v53, v54, v55, v56, v57;
        }
      }
    }

    v42 = *&v2[OBJC_IVAR___REMCDTemplate_defaultPublicLinkURLHostname];
    v44 = *&v2[OBJC_IVAR___REMCDTemplate_defaultPublicLinkURLHostname + 8];
    swift_bridgeObjectRetain_n();
    v264 = 0;
LABEL_14:
    v275 = 0;
    v276 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v276, v62, v63, v64, v65, v66, v67, v68;
    v275 = 0x2F2F3A7370747468;
    v276 = 0xE800000000000000;
    v69._countAndFlagsBits = v42;
    v69._object = v44;
    String.append(_:)(v69);
    v44, v70, v71, v72, v73, v74, v75, v76;
    v77._object = 0x80000001007F8700;
    v77._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v77);
    v78._countAndFlagsBits = UUID.uuidString.getter();
    object = v78._object;
    String.append(_:)(v78);
    object, v80, v81, v82, v83, v84, v85, v86;
    v87 = v276;
    v88 = v272;
    URLComponents.init(string:)();
    v87, v89, v90, v91, v92, v93, v94, v95;
    if ((*(v16 + 48))(v88, 1, v15) == 1)
    {
      sub_1000050A4(v88, &unk_100946FE0, &qword_1007A9D20);
      v103 = v271;
      if (qword_100936148 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_100006654(v104, qword_100946F68);
      v105 = v273;
      v106 = v269;
      (*(v273 + 16))(v269, v27, v20);
      v107 = v20;
      v108 = v103;

      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.fault.getter();
      v44, v111, v112, v113, v114, v115, v116, v117;

      if (os_log_type_enabled(v109, v110))
      {
        LODWORD(v267) = v110;
        v271 = v27;
        v272 = v107;
        v125 = swift_slowAlloc();
        v270 = swift_slowAlloc();
        v274 = v270;
        *v125 = 136316162;
        v275 = v263;
        swift_getMetatypeMetadata();
        v126 = String.init<A>(describing:)();
        v128 = v127;
        v129 = sub_10000668C(v126, v127, &v274);
        v128, v130, v131, v132, v133, v134, v135, v136;
        *(v125 + 4) = v129;
        *(v125 + 12) = 2082;
        v137 = [v108 remObjectID];
        if (v137)
        {
          v138 = v137;
          v139 = [v137 description];

          v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v142 = v141;
        }

        else
        {
          v140 = 7104878;
          v142 = 0xE300000000000000;
        }

        v168 = sub_10000668C(v140, v142, &v274);
        v142, v169, v170, v171, v172, v173, v174, v175;
        *(v125 + 14) = v168;
        *(v125 + 22) = 2082;
        v176 = UUID.uuidString.getter();
        v178 = v177;
        v179 = *(v273 + 8);
        v180 = v106;
        v181 = v272;
        v179(v180, v272);
        v182 = sub_10000668C(v176, v178, &v274);
        v178, v183, v184, v185, v186, v187, v188, v189;
        *(v125 + 24) = v182;
        *(v125 + 32) = 2082;
        v190 = sub_10000668C(v42, v44, &v274);
        v44, v191, v192, v193, v194, v195, v196, v197;
        *(v125 + 34) = v190;
        *(v125 + 42) = 2082;
        if (v264)
        {
          v198 = 1702195828;
        }

        else
        {
          v198 = 0x65736C6166;
        }

        if (v264)
        {
          v199 = 0xE400000000000000;
        }

        else
        {
          v199 = 0xE500000000000000;
        }

        v200 = sub_10000668C(v198, v199, &v274);
        v199, v201, v202, v203, v204, v205, v206, v207;
        *(v125 + 44) = v200;
        _os_log_impl(&_mh_execute_header, v109, v267, "%s: Failed to compute public link URL {templateID: %{public}s, publicLinkURLUUID: %{public}s, hostname: %{public}s, isUsingDisplayedHostnameOfACAccount: %{public}s}", v125, 0x34u);
        swift_arrayDestroy();

        v179(v271, v181);
      }

      else
      {
        v44, v118, v119, v120, v121, v122, v123, v124;

        v167 = *(v105 + 8);
        v167(v106, v107);
        v167(v27, v107);
      }

      v208 = type metadata accessor for URL();
      return (*(*(v208 - 8) + 56))(v268, 1, 1, v208);
    }

    else
    {
      v44, v96, v97, v98, v99, v100, v101, v102;
      (*(v16 + 32))(v267, v88, v15);
      v143 = v271;
      v144 = [v271 name];
      if (v144)
      {
        v145 = v144;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v146 = v143;
        v148 = v147;

        v149 = String.urlFragmentRepresentation.getter();
        v151 = v150;
        v152 = v148;
        v143 = v146;
        v152, v150, v153, v154, v155, v156, v157, v158;
        if (v151)
        {
          v166 = (v151 >> 56) & 0xF;
          if ((v151 & 0x2000000000000000) == 0)
          {
            v166 = v149 & 0xFFFFFFFFFFFFLL;
          }

          if (v166)
          {
            URLComponents.percentEncodedFragment.setter();
          }

          else
          {
            v151, v159, v160, v161, v162, v163, v164, v165;
          }
        }
      }

      v265 = v16;
      v269 = v15;
      URLComponents.url.getter();
      if (qword_100936148 != -1)
      {
        swift_once();
      }

      v209 = type metadata accessor for Logger();
      sub_100006654(v209, qword_100946F68);
      v210 = v270;
      sub_1001E0978(v11, v270);
      v211 = v143;
      v212 = Logger.logObject.getter();
      v213 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v212, v213))
      {
        v271 = v11;
        v272 = v20;
        v214 = swift_slowAlloc();
        v274 = swift_slowAlloc();
        *v214 = 136315906;
        v275 = v263;
        swift_getMetatypeMetadata();
        v215 = String.init<A>(describing:)();
        v217 = v216;
        v218 = sub_10000668C(v215, v216, &v274);
        v217, v219, v220, v221, v222, v223, v224, v225;
        *(v214 + 4) = v218;
        *(v214 + 12) = 2082;
        v226 = [v211 remObjectID];
        if (v226)
        {
          v227 = v226;
          v228 = [v226 description];

          v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v231 = v230;
        }

        else
        {
          v229 = 7104878;
          v231 = 0xE300000000000000;
        }

        v233 = sub_10000668C(v229, v231, &v274);
        v231, v234, v235, v236, v237, v238, v239, v240;
        *(v214 + 14) = v233;
        *(v214 + 22) = 2082;
        v241 = v270;
        v242 = Optional.descriptionOrNil.getter();
        v244 = v243;
        sub_1000050A4(v241, &unk_1009441F0, &qword_100795760);
        v245 = sub_10000668C(v242, v244, &v274);
        v244, v246, v247, v248, v249, v250, v251, v252;
        *(v214 + 24) = v245;
        *(v214 + 32) = 2082;
        if (v264)
        {
          v253 = 1702195828;
        }

        else
        {
          v253 = 0x65736C6166;
        }

        if (v264)
        {
          v254 = 0xE400000000000000;
        }

        else
        {
          v254 = 0xE500000000000000;
        }

        v255 = sub_10000668C(v253, v254, &v274);
        v254, v256, v257, v258, v259, v260, v261, v262;
        *(v214 + 34) = v255;
        _os_log_impl(&_mh_execute_header, v212, v213, "%s: Computed public link URL {templateID: %{public}s, publicLinkURL: %{public}s, isUsingDisplayedHostnameOfACAccount: %{public}s}", v214, 0x2Au);
        swift_arrayDestroy();

        (*(v265 + 8))(v267, v269);
        (*(v273 + 8))(v27, v272);
        v232 = v268;
        v11 = v271;
      }

      else
      {

        sub_1000050A4(v210, &unk_1009441F0, &qword_100795760);
        (*(v265 + 8))(v267, v269);
        (*(v273 + 8))(v27, v20);
        v232 = v268;
      }

      return sub_10003E8F8(v11, v232);
    }
  }

  v59 = type metadata accessor for URL();
  v60 = *(*(v59 - 8) + 56);

  return v60(a2, 1, 1, v59);
}

double sub_10043A70C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, char a3)
{
  v7 = [v3 membershipsOfRemindersInSectionsChecksum];
  if (!v7)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = v7;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (!a2)
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
LABEL_12:
    [v3 setMembershipsOfRemindersInSectionsChecksum:a2];

    if (a3)
    {
      v29 = [v3 createResolutionTokenMapIfNecessary];
      v30 = String._bridgeToObjectiveC()();
      [v29 updateForKey:v30];
    }

    return result;
  }

  if (v10 != a1 || v12 != a2)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12, v22, v23, v24, v25, v26, v27, v28;
    if (v21)
    {
      return result;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
    goto LABEL_12;
  }

  v12, v13, v14, v15, v16, v17, v18, v19;
  return result;
}

void sub_10043A8B0(void *a1, uint64_t a2)
{
  if (qword_100936140 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100946F50);
  v4 = a1;

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v6 = 136446466;
    v31 = [v4 remObjectID];
    sub_1000F5104(&unk_10093AF40, &unk_100795790);
    v7 = Optional.descriptionOrNil.getter();
    v9 = v8;

    v10 = sub_10000668C(v7, v9, &v32);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v18 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (v19)
    {
      v20 = v19;
      v21 = sub_10000668C(v18, v19, &v32);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v6 + 14) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v5, "REMCDTemplate: Attempted to call 'setPropertyAndUpdateResolutionTokenMap(propertyKeyPath:to:)' with newValue, which has incorrect type {objectID: %{public}s, keyPath: %{public}s}}", v6, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      _StringGuts.grow(_:)(46);
      v29._object = 0x80000001007EC120;
      v29._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v29);
      sub_1000F5104(&qword_100938C08, &unk_10079B270);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
  }
}

id REMCDTemplate.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDTemplate();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDTemplate.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for REMCDTemplate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Void __swiftcall REMCDTemplate.willSave_Swift()()
{
  if ((*(v0 + OBJC_IVAR___REMCDTemplate_didCleanUpManualSortHintOnMarkingForDeletion) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___REMCDTemplate_didCleanUpManualSortHintOnMarkingForDeletion) = 1;
    sub_10043ACE0();
  }
}

double sub_10043ACE0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  *&v4 = __chkstk_darwin(v1, v3).n128_u64[0];
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 markedForDeletion])
  {
    return result;
  }

  v8 = [v0 remObjectID];
  if (!v8)
  {
    return result;
  }

  v115 = v8;
  v9 = [v0 storeControllerManagedObjectContext];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v9;
  v11 = [v0 account];
  if (!v11 || (v12 = v11, v13 = [v11 remObjectID], v12, !v13))
  {
    if (qword_100936140 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100006654(v47, qword_100946F50);
    v48 = v0;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v116 = v52;
      *v51 = 136446210;
      v53 = [v48 remObjectID];
      if (v53)
      {
        v54 = v53;
        v55 = [v53 description];

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;
      }

      else
      {
        v56 = 7104878;
        v58 = 0xE300000000000000;
      }

      v73 = sub_10000668C(v56, v58, &v116);
      v58, v74, v75, v76, v77, v78, v79, v80;
      *(v51 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v49, v50, "cleanUpManualSortHintIfNeeded: Unexpectedly nil template account.remObjectID {templateID: %{public}s}", v51, 0xCu);
      sub_10000607C(v52);

      goto LABEL_34;
    }

    goto LABEL_20;
  }

  v14 = [v10 transactionAuthor];
  if (!v14 || (v15 = v14, static String._unconditionallyBridgeFromObjectiveC(_:)(), v17 = v16, v15, v18._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), object = v18._object, v20 = String.hasPrefix(_:)(v18), object, v21, v22, v23, v24, v25, v26, v27, v17, v28, v29, v30, v31, v32, v33, v34, v20))
  {
    if (qword_100936140 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006654(v35, qword_100946F50);
    v36 = v0;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v116 = v40;
      *v39 = 136446210;
      v41 = [v36 remObjectID];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 description];

        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;
      }

      else
      {
        v44 = 7104878;
        v46 = 0xE300000000000000;
      }

      v81 = sub_10000668C(v44, v46, &v116);
      v46, v82, v83, v84, v85, v86, v87, v88;
      *(v39 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v37, v38, "cleanUpManualSortHintIfNeeded: Template was deleted due to non-user-initiated changes, cleanup is not needed {templateID: %{public}s}", v39, 0xCu);
      sub_10000607C(v40);

LABEL_34:
      return result;
    }

LABEL_20:
LABEL_21:
    v59 = v115;

    return result;
  }

  if (qword_100936140 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  v61 = sub_100006654(v60, qword_100946F50);
  v62 = v0;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v113 = v64;
    v65 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v116 = v111;
    v112 = v65;
    *v65 = 136446210;
    v114 = v62;
    v66 = [v62 remObjectID];
    if (v66)
    {
      v67 = v66;
      v68 = [v66 description];
      v110 = v61;
      v69 = v68;

      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;
    }

    else
    {
      v70 = 7104878;
      v72 = 0xE300000000000000;
    }

    v89 = sub_10000668C(v70, v72, &v116);
    v72, v90, v91, v92, v93, v94, v95, v96;
    v97 = v112;
    *(v112 + 1) = v89;
    _os_log_impl(&_mh_execute_header, v63, v113, "cleanUpManualSortHintIfNeeded: Template was deleted due to user-initiated changes, will delete its associated sort hint {templateID: %{public}s}", v97, 0xCu);
    sub_10000607C(v111);
  }

  else
  {
  }

  v98 = [v115 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = UUID.uuidString.getter();
  v101 = v100;
  (*(v2 + 8))(v6, v1);
  v102 = v13;
  sub_10013A994(6uLL, v99, v101, v13);

  v101, v103, v104, v105, v106, v107, v108, v109;
  return result;
}

uint64_t sub_10043B68C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v10 = (v9 - 8);
  v11 = *(v9 - 8);
  __chkstk_darwin(v9, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v27 - v17;
  UUID.init()();
  sub_100026CD8(a4, v18, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  *&v18[v10[7]] = 0;
  *&v18[v10[8]] = a1;
  v19 = &v18[v10[9]];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = *(v4 + 40);
  v21 = a1;

  os_unfair_lock_lock(v20);
  sub_100026CD8(v18, v14, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v22 = *(v4 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 48) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_100365714(0, *v22->clientIdentity + 1, 1, v22);
    *(v4 + 48) = v22;
  }

  v25 = *v22->clientIdentity;
  v24 = *&v22->clientIdentity[8];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_100365714((v24 > 1), v25 + 1, 1, v22);
  }

  *v22->clientIdentity = v25 + 1;
  sub_10002A4A8(v14, v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25);
  *(v4 + 48) = v22;
  swift_endAccess();
  os_unfair_lock_unlock(v20);
  return sub_1000292E8(v18);
}

void sub_10043B8AC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v44 = &_swiftEmptyArrayStorage;
    sub_10001E288(0, v3 & ~(v3 >> 63), 0);
    v4 = &_swiftEmptyArrayStorage;
    if (v38)
    {
      v5 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = _HashTable.startBucket.getter();
      v6 = *(v2 + 36);
    }

    v41 = v5;
    v42 = v6;
    v43 = v38 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v35 = v2 + 56;
      v34 = v2 + 64;
      v36 = v3;
      while (v7 < v3)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_36;
        }

        v15 = v41;
        v16 = v42;
        v17 = v43;
        v18 = v2;
        sub_10001E52C(v41, v42, v43, v2);
        v20 = v19;
        v44 = v4;
        v22 = *v4->clientIdentity;
        v21 = *&v4->clientIdentity[8];
        if (v22 >= v21 >> 1)
        {
          sub_10001E288((v21 > 1), v22 + 1, 1);
          v4 = v44;
        }

        *v4->clientIdentity = v22 + 1;
        v23 = v4 + 16 * v22;
        *(v23 + 4) = v20;
        *(v23 + 5) = a2;
        v39 = v4;
        if (v38)
        {
          if (!v17)
          {
            goto LABEL_41;
          }

          v2 = v18;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v3 = v36;
          sub_1000F5104(&unk_1009472E0, &qword_1007AA100);
          v8 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v8(v40, 0);
        }

        else
        {
          if (v17)
          {
            goto LABEL_42;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v2 = v18;
          v24 = (1 << *(v18 + 32));
          if (v15 >= v24)
          {
            goto LABEL_37;
          }

          v25 = v15 >> 6;
          v26 = *(v35 + 8 * (v15 >> 6));
          if (((v26 >> v15) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v18 + 36) != v16)
          {
            goto LABEL_39;
          }

          v27 = v26 & (-2 << (v15 & 0x3F));
          if (v27)
          {
            v24 = (__clz(__rbit64(v27)) | v15 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            while (v29 < &v24->storeProvider[1] >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_100010E34(v15, v16, 0, v9, v10, v11, v12, v13);
                v24 = (__clz(__rbit64(v31)) + v28);
                goto LABEL_32;
              }
            }

            sub_100010E34(v15, v16, 0, v9, v10, v11, v12, v13);
          }

LABEL_32:
          v33 = *(v18 + 36);
          v41 = v24;
          v42 = v33;
          v43 = 0;
          v3 = v36;
        }

        v4 = v39;
        if (v7 == v3)
        {
          sub_100010E34(v41, v42, v43, v9, v10, v11, v12, v13);
          return;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

void sub_10043BBE0(uint64_t a1, objc_class *a2)
{
  v2 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v46 = &_swiftEmptyArrayStorage;
    sub_100253C28(0, v3 & ~(v3 >> 63), 0);
    v41 = &_swiftEmptyArrayStorage;
    if (v39)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v4 = _HashTable.startBucket.getter();
      v5 = *(v2 + 36);
    }

    v43 = v4;
    v44 = v5;
    v45 = v39 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v36 = v2 + 56;
      v35 = v2 + 64;
      v37 = v3;
      while (v6 < v3)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v14 = v43;
        v15 = v45;
        v40 = v44;
        v16 = v2;
        sub_100411E28(v43, v44, v45, v2);
        v18 = v17;
        v19 = [v17 accountTypeHost];
        v20 = [v18 remObjectID];

        v21 = v41;
        v46 = v41;
        v23 = *v41->clientIdentity;
        v22 = *&v41->clientIdentity[8];
        if (v23 >= v22 >> 1)
        {
          sub_100253C28((v22 > 1), v23 + 1, 1);
          v21 = v46;
        }

        *v21->clientIdentity = v23 + 1;
        v24 = &v21->super.isa + 3 * v23;
        v24[4] = a2;
        v24[5] = v19;
        v24[6] = v20;
        v41 = v21;
        if (v39)
        {
          if (!v15)
          {
            goto LABEL_40;
          }

          v2 = v16;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v3 = v37;
          sub_1000F5104(&qword_1009472C8, &qword_1007AA0E8);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v42, 0);
          if (v6 == v37)
          {
LABEL_32:
            sub_100010E34(v43, v44, v45, v8, v9, v10, v11, v12);
            return;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_41;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v2 = v16;
          v25 = (1 << *(v16 + 32));
          if (v14 >= v25)
          {
            goto LABEL_36;
          }

          v26 = v14 >> 6;
          v27 = *(v36 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v16 + 36) != v40)
          {
            goto LABEL_38;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = (__clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0);
            v3 = v37;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v35 + 8 * v26);
            v3 = v37;
            while (v30 < &v25->storeProvider[1] >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                sub_100010E34(v14, v40, 0, v8, v9, v10, v11, v12);
                v25 = (__clz(__rbit64(v32)) + v29);
                goto LABEL_31;
              }
            }

            sub_100010E34(v14, v40, 0, v8, v9, v10, v11, v12);
          }

LABEL_31:
          v34 = *(v16 + 36);
          v43 = v25;
          v44 = v34;
          v45 = 0;
          if (v6 == v3)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_10043BF60(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v74 = a1;
  v75 = a2;
  v6 = type metadata accessor for DispatchTime();
  v72 = *(v6 - 8);
  v73 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v65 - v12;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v14, v15);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v4 + qword_1009394D0);
  v21->super.isa = v22;
  (*(v17 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v16, v19);
  v71 = v22;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_10;
  }

  if (*(v4 + qword_1009394F8) != 1)
  {
LABEL_7:
    v29 = *(v4 + qword_1009394D8);
    v30 = v74;
    result = v29(v74);
    if (v75)
    {
      return v75(1, v30);
    }

    return result;
  }

  sub_100024350();
  if (*(v4 + qword_100939500))
  {
    result = sub_10043CE78(v74, v75, a3, sub_100355C8C, &unk_1008F2188, sub_100365E48, sub_1004434D0);
    v25 = qword_100939518;
    v26 = *(v4 + qword_100939518);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
LABEL_20:
      *(v4 + v25) = v28;
      return result;
    }

    __break(1u);
    goto LABEL_7;
  }

  v69 = qword_100939500;
  v23 = *(v4 + qword_1009394F0);
  v21 = *(v4 + qword_1009394F0 + 8);
  v31 = qword_100935AC8;

  if (v31 != -1)
  {
    goto LABEL_26;
  }

LABEL_10:
  v70 = a3;
  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_100939348);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v21, v35, v36, v37, v38, v39, v40, v41;
  if (os_log_type_enabled(v33, v34))
  {
    v42 = swift_slowAlloc();
    LODWORD(v68) = v34;
    v43 = v42;
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v43 = 136315138;
    v44 = 7104878;
    if (v21)
    {
      v44 = v23;
    }

    v66 = v44;
    if (v21)
    {
      v45 = v21;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    v46 = sub_10000668C(v66, v45, aBlock);
    v66 = v23;
    v47 = v46;
    v45, v48, v49, v50, v51, v52, v53, v54;
    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v33, v68, "os_transaction INIT {name: com.apple.remindd.rddebouncer}, label: %s", v43, 0xCu);
    sub_10000607C(v67);

    v55 = v66;
  }

  else
  {

    v55 = v23;
  }

  v56 = os_transaction_create();
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = swift_allocObject();
  v58[2] = v57;
  v58[3] = v55;
  v58[4] = v21;
  v58[5] = v56;
  aBlock[4] = sub_100443138;
  aBlock[5] = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F2150;
  v67 = _Block_copy(aBlock);
  v76 = &_swiftEmptyArrayStorage;
  sub_10001BC00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  v68 = v56;
  swift_unknownObjectRetain();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v59 = DispatchWorkItem.init(flags:block:)();

  *(v4 + v69) = v59;

  static DispatchTime.now()();
  sub_1000255D0();
  + infix(_:_:)();
  v60 = v73;
  v61 = *(v72 + 8);
  v61(v9, v73);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();
  v61(v13, v60);
  if (*(v4 + qword_1009394E0 + 33) == 1)
  {
    sub_10043CE78(v74, v75, v70, sub_100355C8C, &unk_1008F2188, sub_100365E48, sub_1004434D0);

    result = swift_unknownObjectRelease();
    v25 = qword_100939518;
    v62 = *(v4 + qword_100939518);
    v27 = __OFADD__(v62, 1);
    v28 = v62 + 1;
    if (v27)
    {
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

  v63 = *(v4 + qword_1009394D8);
  v64 = v74;
  v63(v74);
  if (v75)
  {
    v75(1, v64);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10043C6EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v74 = a1;
  v75 = a2;
  v6 = type metadata accessor for DispatchTime();
  v72 = *(v6 - 8);
  v73 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v65 - v12;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v14, v15);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v4 + qword_1009394D0);
  v21->super.isa = v22;
  (*(v17 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v16, v19);
  v71 = v22;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v21, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_10;
  }

  if (*(v4 + qword_1009394F8) != 1)
  {
LABEL_7:
    v29 = *(v4 + qword_1009394D8);
    v30 = v74;
    result = v29(v74);
    if (v75)
    {
      return v75(1, v30);
    }

    return result;
  }

  sub_100024350();
  if (*(v4 + qword_100939500))
  {
    result = sub_10043CE78(v74, v75, a3, sub_100355E98, &unk_1008F20E8, sub_100365E6C, sub_1004434D0);
    v25 = qword_100939518;
    v26 = *(v4 + qword_100939518);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
LABEL_20:
      *(v4 + v25) = v28;
      return result;
    }

    __break(1u);
    goto LABEL_7;
  }

  v69 = qword_100939500;
  v23 = *(v4 + qword_1009394F0);
  v21 = *(v4 + qword_1009394F0 + 8);
  v31 = qword_100935AC8;

  if (v31 != -1)
  {
    goto LABEL_26;
  }

LABEL_10:
  v70 = a3;
  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_100939348);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v21, v35, v36, v37, v38, v39, v40, v41;
  if (os_log_type_enabled(v33, v34))
  {
    v42 = swift_slowAlloc();
    LODWORD(v68) = v34;
    v43 = v42;
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v43 = 136315138;
    v44 = 7104878;
    if (v21)
    {
      v44 = v23;
    }

    v66 = v44;
    if (v21)
    {
      v45 = v21;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    v46 = sub_10000668C(v66, v45, aBlock);
    v66 = v23;
    v47 = v46;
    v45, v48, v49, v50, v51, v52, v53, v54;
    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v33, v68, "os_transaction INIT {name: com.apple.remindd.rddebouncer}, label: %s", v43, 0xCu);
    sub_10000607C(v67);

    v55 = v66;
  }

  else
  {

    v55 = v23;
  }

  v56 = os_transaction_create();
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = swift_allocObject();
  v58[2] = v57;
  v58[3] = v55;
  v58[4] = v21;
  v58[5] = v56;
  aBlock[4] = sub_1004430BC;
  aBlock[5] = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F20B0;
  v67 = _Block_copy(aBlock);
  v76 = &_swiftEmptyArrayStorage;
  sub_10001BC00(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  v68 = v56;
  swift_unknownObjectRetain();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v59 = DispatchWorkItem.init(flags:block:)();

  *(v4 + v69) = v59;

  static DispatchTime.now()();
  sub_1000255D0();
  + infix(_:_:)();
  v60 = v73;
  v61 = *(v72 + 8);
  v61(v9, v73);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();
  v61(v13, v60);
  if (*(v4 + qword_1009394E0 + 33) == 1)
  {
    sub_10043CE78(v74, v75, v70, sub_100355E98, &unk_1008F20E8, sub_100365E6C, sub_1004434D0);

    result = swift_unknownObjectRelease();
    v25 = qword_100939518;
    v62 = *(v4 + qword_100939518);
    v27 = __OFADD__(v62, 1);
    v28 = v62 + 1;
    if (v27)
    {
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

  v63 = *(v4 + qword_1009394D8);
  v64 = v74;
  v63(v74);
  if (v75)
  {
    v75(1, v64);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10043CE78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v9 = v7;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v9 + qword_1009394D0);
  *v17 = v18;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12, v15);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    a2 = v29(0, *(a2 + 16) + 1, 1, a2);
    *(v9 + v20) = a2;
    goto LABEL_4;
  }

  swift_beginAccess();

  a4(v21);
  result = swift_endAccess();
  if (!a2)
  {
    return result;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v20 = qword_100939510;
  swift_beginAccess();
  a2 = *(v9 + v20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + v20) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v24 = v30;
  v26 = *(a2 + 16);
  v25 = *(a2 + 24);
  if (v26 >= v25 >> 1)
  {
    a2 = v29(v25 > 1, v26 + 1, 1, a2);
  }

  *(a2 + 16) = v26 + 1;
  v27 = a2 + 16 * v26;
  *(v27 + 32) = v24;
  *(v27 + 40) = v12;
  *(v9 + v20) = a2;
  return swift_endAccess();
}

void sub_10043D0C8(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    *(Strong + qword_100939500) = 0;

    a5(v10);
    if (qword_100935AC8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100939348);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    a3, v14, v15, v16, v17, v18, v19, v20;
    if (os_log_type_enabled(v12, v13))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      if (a3)
      {
        v23 = a3;
      }

      else
      {
        a2 = 7104878;
        v23 = 0xE300000000000000;
      }

      v24 = sub_10000668C(a2, v23, &v32);
      v23, v25, v26, v27, v28, v29, v30, v31;
      *(v21 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "os_transaction RELEASE {name: com.apple.remindd.rddebouncer}, label: %s", v21, 0xCu);
      sub_10000607C(v22);
    }
  }
}

double sub_10043D294()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = (&v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[qword_1009394D0];
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  p_class_meths = (v4 + 8);
  v12(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_4;
  }

  v1 = qword_100939500;
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (!*&v2[qword_100939500])
  {
    goto LABEL_7;
  }

  v13 = qword_100935AC8;

  if (v13 != -1)
  {
    goto LABEL_23;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939348);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v109[0] = v105;
    *v18 = 136315138;
    v19 = v15;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v109);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cancelling pending work item {debouncer: %s}", v18, 0xCu);
    sub_10000607C(v105);

    p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  *&v2[v1] = 0;

LABEL_7:
  v32 = qword_100939508;
  swift_beginAccess();
  v34 = *&v2[v32];
  if ((v34 & 0xC000000000000001) != 0)
  {

    v35 = __CocoaSet.count.getter();
    v34, v36, v37, v38, v39, v40, v41, v42;
    if (!v35)
    {
      return result;
    }
  }

  else if (!*(v34 + 16))
  {
    return result;
  }

  if (p_class_meths[345] != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100006654(v43, qword_100939348);
  v44 = v2;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v47 = &off_100939000;
  v48 = &off_100939000;
  if (os_log_type_enabled(v45, v46))
  {
    v49 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108[0] = v105;
    *v49 = 134218754;
    *(v49 + 4) = *&v44[qword_100939518];
    *(v49 + 12) = 2080;
    v50 = *&v2[v32];
    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    sub_10000CDE4(&qword_100944230, &qword_100938DE0, NSNumber_ptr, &protocol conformance descriptor for NSObject);

    v51 = Set.description.getter();
    v53 = v52;
    v50, v52, v54, v55, v56, v57, v58, v59;
    v60 = sub_10000668C(v51, v53, v108);
    v53, v61, v62, v63, v64, v65, v66, v67;
    *(v49 + 14) = v60;
    *(v49 + 22) = 2048;
    v68 = qword_100939510;
    swift_beginAccess();
    v69 = *(*&v44[v68] + 16);

    *(v49 + 24) = v69;
    *(v49 + 32) = 2080;
    v70 = v44;
    v71 = [v70 description];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    v48 = &off_100939000;
    v75 = sub_10000668C(v72, v74, v108);
    v74, v76, v77, v78, v79, v80, v81, v82;
    *(v49 + 34) = v75;
    v47 = &off_100939000;
    _os_log_impl(&_mh_execute_header, v45, v46, "Firing latest value after delay {coalescedUpdates: %ld, value: %s, completionBlocks: %ld, debouncer: %s}", v49, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v83 = *&v2[v32];
  *&v2[v32] = _swiftEmptySetSingleton;
  v84 = v48[162];
  swift_beginAccess();
  v85 = *(&v84->Flags + v44);
  *(&v84->Flags + v44) = &_swiftEmptyArrayStorage;
  *(&v47[163]->Flags + v44) = 0;
  (*&v44[qword_1009394D8])(v83);
  v93 = *(v85 + 16);
  if (v93)
  {
    v94 = *(v85 + 32);
    v107 = 1;
    v106 = v83;

    v94(&v107, &v106);

    v95 = v93 - 1;
    if (v95)
    {
      v96 = v85 + 56;
      do
      {
        v97 = *(v96 - 8);
        v107 = 0;
        v106 = v83;

        v97(&v107, &v106);

        v96 += 16;
        --v95;
      }

      while (v95);
    }
  }

  v85, v86, v87, v88, v89, v90, v91, v92;
  v83, v98, v99, v100, v101, v102, v103, v104;
  return result;
}

double sub_10043D8F4()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = (&v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[qword_1009394D0];
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  p_class_meths = (v4 + 8);
  v12(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_4;
  }

  v1 = qword_100939500;
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (!*&v2[qword_100939500])
  {
    goto LABEL_7;
  }

  v13 = qword_100935AC8;

  if (v13 != -1)
  {
    goto LABEL_23;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939348);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v109[0] = v105;
    *v18 = 136315138;
    v19 = v15;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v109);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cancelling pending work item {debouncer: %s}", v18, 0xCu);
    sub_10000607C(v105);

    p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  *&v2[v1] = 0;

LABEL_7:
  v32 = qword_100939508;
  swift_beginAccess();
  v34 = *&v2[v32];
  if ((v34 & 0xC000000000000001) != 0)
  {

    v35 = __CocoaSet.count.getter();
    v34, v36, v37, v38, v39, v40, v41, v42;
    if (!v35)
    {
      return result;
    }
  }

  else if (!*(v34 + 16))
  {
    return result;
  }

  if (p_class_meths[345] != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100006654(v43, qword_100939348);
  v44 = v2;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v47 = &off_100939000;
  v48 = &off_100939000;
  if (os_log_type_enabled(v45, v46))
  {
    v49 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108[0] = v105;
    *v49 = 134218754;
    *(v49 + 4) = *&v44[qword_100939518];
    *(v49 + 12) = 2080;
    v50 = *&v2[v32];
    type metadata accessor for RDDebounceableCKDatabaseNotification();
    sub_10001BC00(&unk_100943CF0, type metadata accessor for RDDebounceableCKDatabaseNotification, &protocol conformance descriptor for NSObject);

    v51 = Set.description.getter();
    v53 = v52;
    v50, v52, v54, v55, v56, v57, v58, v59;
    v60 = sub_10000668C(v51, v53, v108);
    v53, v61, v62, v63, v64, v65, v66, v67;
    *(v49 + 14) = v60;
    *(v49 + 22) = 2048;
    v68 = qword_100939510;
    swift_beginAccess();
    v69 = *(*&v44[v68] + 16);

    *(v49 + 24) = v69;
    *(v49 + 32) = 2080;
    v70 = v44;
    v71 = [v70 description];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    v48 = &off_100939000;
    v75 = sub_10000668C(v72, v74, v108);
    v74, v76, v77, v78, v79, v80, v81, v82;
    *(v49 + 34) = v75;
    v47 = &off_100939000;
    _os_log_impl(&_mh_execute_header, v45, v46, "Firing latest value after delay {coalescedUpdates: %ld, value: %s, completionBlocks: %ld, debouncer: %s}", v49, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v83 = *&v2[v32];
  *&v2[v32] = _swiftEmptySetSingleton;
  v84 = v48[162];
  swift_beginAccess();
  v85 = *(&v84->Flags + v44);
  *(&v84->Flags + v44) = &_swiftEmptyArrayStorage;
  *(&v47[163]->Flags + v44) = 0;
  (*&v44[qword_1009394D8])(v83);
  v93 = *(v85 + 16);
  if (v93)
  {
    v94 = *(v85 + 32);
    v107 = 1;
    v106 = v83;

    v94(&v107, &v106);

    v95 = v93 - 1;
    if (v95)
    {
      v96 = v85 + 56;
      do
      {
        v97 = *(v96 - 8);
        v107 = 0;
        v106 = v83;

        v97(&v107, &v106);

        v96 += 16;
        --v95;
      }

      while (v95);
    }
  }

  v85, v86, v87, v88, v89, v90, v91, v92;
  v83, v98, v99, v100, v101, v102, v103, v104;
  return result;
}

double sub_10043DF44()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = (&v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[qword_1009394D0];
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  p_class_meths = (v4 + 8);
  v12(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_4;
  }

  v1 = qword_100939500;
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (!*&v2[qword_100939500])
  {
    goto LABEL_7;
  }

  v13 = qword_100935AC8;

  if (v13 != -1)
  {
    goto LABEL_20;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100939348);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v100[0] = v96;
    *v18 = 136315138;
    v19 = v15;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v100);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Cancelling pending work item {debouncer: %s}", v18, 0xCu);
    sub_10000607C(v96);

    p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  }

  dispatch thunk of DispatchWorkItem.cancel()();

  *&v2[v1] = 0;

LABEL_7:
  v32 = qword_100939508;
  swift_beginAccess();
  if (*(*&v2[v32] + 16))
  {
    if (p_class_meths[345] != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_100939348);
    v35 = v2;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    v38 = &off_100939000;
    v39 = &off_100939000;
    if (os_log_type_enabled(v36, v37))
    {
      v40 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v99[0] = v96;
      *v40 = 134218754;
      *(v40 + 4) = *&v35[qword_100939518];
      *(v40 + 12) = 2080;
      v41 = *&v2[v32];
      sub_10002345C();

      v42 = Set.description.getter();
      v44 = v43;
      v41, v43, v45, v46, v47, v48, v49, v50;
      v51 = sub_10000668C(v42, v44, v99);
      v44, v52, v53, v54, v55, v56, v57, v58;
      *(v40 + 14) = v51;
      *(v40 + 22) = 2048;
      v59 = qword_100939510;
      swift_beginAccess();
      v60 = *(*&v35[v59] + 16);

      *(v40 + 24) = v60;
      *(v40 + 32) = 2080;
      v61 = v35;
      v62 = [v61 description];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v39 = &off_100939000;
      v66 = sub_10000668C(v63, v65, v99);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v40 + 34) = v66;
      v38 = &off_100939000;
      _os_log_impl(&_mh_execute_header, v36, v37, "Firing latest value after delay {coalescedUpdates: %ld, value: %s, completionBlocks: %ld, debouncer: %s}", v40, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v74 = *&v2[v32];
    *&v2[v32] = _swiftEmptySetSingleton;
    v75 = v39[162];
    swift_beginAccess();
    v76 = *(&v75->Flags + v35);
    *(&v75->Flags + v35) = &_swiftEmptyArrayStorage;
    *(&v38[163]->Flags + v35) = 0;
    (*&v35[qword_1009394D8])(v74);
    v84 = *(v76 + 16);
    if (v84)
    {
      v85 = *(v76 + 32);
      v98 = 1;
      v97 = v74;

      v85(&v98, &v97);

      v86 = v84 - 1;
      if (v86)
      {
        v87 = v76 + 56;
        do
        {
          v88 = *(v87 - 8);
          v98 = 0;
          v97 = v74;

          v88(&v98, &v97);

          v87 += 16;
          --v86;
        }

        while (v86);
      }
    }

    v76, v77, v78, v79, v80, v81, v82, v83;
    v74, v89, v90, v91, v92, v93, v94, v95;
  }

  return result;
}

uint64_t sub_10043E524()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946FF0);
  v1 = sub_100006654(v0, qword_100946FF0);
  if (qword_1009364F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975218);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10043E5EC()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10043E648(uint64_t a1)
{
  v2 = *(v1 + 8);
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10043E688(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10043E6E0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & (v2 == v3);
}

uint64_t sub_10043E744()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocClassInstance();
}

Swift::Int sub_10043E7D0()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001BC00(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10043E858(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10001BC00(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10043E8DC(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001BC00(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void destroy for RDStoreControllerNotificationCenter.ChangedAccountFireValue(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void *assignWithCopy for RDStoreControllerNotificationCenter.ChangedAccountFireValue(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  v7 = a2[2];
  v8 = a1[2];
  a1[2] = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for RDStoreControllerNotificationCenter.ChangedAccountFireValue(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for RDStoreControllerNotificationCenter.ChangedAccountFireValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for RDStoreControllerNotificationCenter.ChangedAccountFireValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for RDStoreControllerNotificationCenter.ChangedEntityFireValue(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for RDStoreControllerNotificationCenter.ChangedEntityFireValue(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t *sub_10043EB9C(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = a3[6];
    *(v4 + a3[5]) = *(a2 + a3[5]);
    v9 = *(a2 + v8);
    *(v4 + v8) = v9;
    v10 = a3[7];
    v11 = (v4 + v10);
    v12 = (a2 + v10);
    v13 = v12[1];
    *v11 = *v12;
    v11[1] = v13;

    v14 = v9;
  }

  return v4;
}

uint64_t sub_10043EC8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = a3[6];
  v17 = *(a2 + v16);
  v18 = *(a1 + v16);
  *(a1 + v16) = v17;
  v19 = v17;

  v20 = a3[7];
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  v23 = v22[1];
  *v21 = *v22;
  v21[1] = v23;

  return a1;
}

uint64_t sub_10043ED54(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_10043EDE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);
  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = a3[6];
  v17 = *(a1 + v16);
  *(a1 + v16) = *(a2 + v16);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_10043EEA8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_10043F014()
{
  result = qword_100947200;
  if (!qword_100947200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947200);
  }

  return result;
}

unint64_t sub_10043F068(uint64_t a1)
{
  result = sub_10002345C();
  *(a1 + 8) = result;
  return result;
}

void sub_10043F090(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = [a1 entitiesByName];
  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v8 + 16) && (v16 = sub_100005F4C(v5, v6), (v9 & 1) != 0))
  {
    v17 = *(*(v8 + 56) + 8 * v16);
    v8, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    v8, v9, v10, v11, v12, v13, v14, v15;
    if (qword_100936150 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100946FF0);

    v26 = a1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    v6, v29, v30, v31, v32, v33, v34, v35;
    if (os_log_type_enabled(v27, v28))
    {
      v36 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v36 = 136446466;
      *(v36 + 4) = sub_10000668C(v5, v6, &v49);
      *(v36 + 12) = 2080;
      v37 = [v26 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_10000668C(v38, v40, &v49);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v36 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v27, v28, "Entity in the given filter option not recognized in managedObjectContext {entityName: %{public}s, managedObjectModel: %s}", v36, 0x16u);
      swift_arrayDestroy();
    }

    v17 = 0;
  }

  *a3 = v17;
}

uint64_t sub_10043F2F8(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, uint64_t a5)
{
  v9 = Notification.userInfo.getter();
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  *&v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v93 + 1) = v11;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v19 = sub_10001B0D8(&v91), (v12 & 1) == 0))
  {
    v10, v12, v13, v14, v15, v16, v17, v18;
    sub_10001B2CC(&v91);
LABEL_11:
    v93 = 0u;
    v94 = 0u;
    goto LABEL_12;
  }

  sub_100005EF0(*(v10 + 56) + 32 * v19, &v93);
  sub_10001B2CC(&v91);
  v10, v20, v21, v22, v23, v24, v25, v26;
  if (!*(&v94 + 1))
  {
LABEL_12:
    sub_1000050A4(&v93, &qword_100939ED0, &qword_100791B10);
    v90 = 0;
    v29 = 0;
    goto LABEL_13;
  }

  v27 = swift_dynamicCast();
  v28 = v91;
  if (!v27)
  {
    v28 = 0;
  }

  v90 = v28;
  if (v27)
  {
    v29 = v92;
  }

  else
  {
    v29 = 0;
  }

LABEL_13:
  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_100946FF0);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  v29, v33, v34, v35, v36, v37, v38, v39;
  a3, v40, v41, v42, v43, v44, v45, v46;
  if (os_log_type_enabled(v31, v32))
  {
    v47 = a5;
    v48 = swift_slowAlloc();
    *&v93 = swift_slowAlloc();
    *v48 = 136446466;
    v91 = a2;
    v92 = a3;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v49 = Optional.descriptionOrNil.getter();
    v51 = v50;
    v52 = sub_10000668C(v49, v50, &v93);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v48 + 4) = v52;
    *(v48 + 12) = 2082;
    if (v29)
    {
      v60 = v90;
    }

    else
    {
      v60 = 0x68747561206F6E28;
    }

    if (v29)
    {
      v61 = v29;
    }

    else
    {
      v61 = 0xEB0000000029726FLL;
    }

    v62 = sub_10000668C(v60, v61, &v93);
    v61, v63, v64, v65, v66, v67, v68, v69;
    *(v48 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v31, v32, "RDStoreControllerNotificationCenter.storeControllerDidChange[%{public}s]: Received notification {author: %{public}s}", v48, 0x16u);
    swift_arrayDestroy();

    a5 = v47;
  }

  isa = Notification._bridgeToObjectiveC()().super.isa;
  v71 = [a4 notificationContainsInternalChangesOnly:isa];

  if (v71)
  {
    v29, v73, v74, v75, v76, v77, v78, v79;
    return 0;
  }

  if (v29)
  {
    if (a5)
    {
      v91 = v90;
      v92 = v29;
      __chkstk_darwin(v72, v73);
      v89[2] = &v91;
      v81 = sub_100040A74(sub_1002CB9B8, v89, a5);
      v29, v82, v83, v84, v85, v86, v87, v88;
      if (v81)
      {
        return 0;
      }
    }

    else
    {
      v29, v73, v74, v75, v76, v77, v78, v79;
    }
  }

  return 1;
}

uint64_t sub_10043F6BC@<X0>(uint64_t a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X2>, uint64_t a3@<X8>)
{
  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100946FF0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  a2, v9, v10, v11, v12, v13, v14, v15;
  if (os_log_type_enabled(v7, v8))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136446210;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v18 = Optional.descriptionOrNil.getter();
    v20 = v19;
    v21 = sub_10000668C(v18, v19, &v33);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "os_transaction INIT {name: com.apple.remindd.storeControllerNotificationCenter.storeDidChangePublisher}, label: %{public}s", v16, 0xCu);
    sub_10000607C(v17);
  }

  v29 = os_transaction_create();
  v30 = *(sub_1000F5104(&qword_100947280, &qword_1007AA0D8) + 48);
  v31 = type metadata accessor for Notification();
  result = (*(*(v31 - 8) + 16))(a3, a1, v31);
  *(a3 + v30) = v29;
  return result;
}

uint64_t sub_10043F8AC(uint64_t a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4)
{
  sub_10001A820(a1);
  v6 = v5;
  v7 = [objc_opt_self() currentThread];
  v8 = [v7 qualityOfService];

  sub_10043B8AC(v6, v8);
  v10 = v9;
  v6, v11, v12, v13, v14, v15, v16, v17;
  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100946FF0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  a4, v21, v22, v23, v24, v25, v26, v27;
  if (os_log_type_enabled(v19, v20))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50 = v29;
    *v28 = 136446210;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v30 = Optional.descriptionOrNil.getter();
    v32 = v31;
    v33 = sub_10000668C(v30, v31, &v50);
    v32, v34, v35, v36, v37, v38, v39, v40;
    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v19, v20, "os_transaction RELEASE {name: com.apple.remindd.storeControllerNotificationCenter.storeDidChangePublisher}, label: %{public}s", v28, 0xCu);
    sub_10000607C(v29);
  }

  v41 = sub_100023058(v10);
  v10, v42, v43, v44, v45, v46, v47, v48;
  return v41;
}

void sub_10043FA98(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [objc_opt_self() managedObjectModel];
  sub_100442CE8(v5, a2, v6);
  v8 = v7;

  *a3 = v8;
}

void *sub_10043FB08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  sub_1000F5104(&unk_100947300, &unk_1007AA110);
  sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  sub_10000CB48(&qword_100947310, &unk_100947300, &unk_1007AA110, &protocol conformance descriptor for [A]);
  result = Sequence.reduce<A>(_:_:)();
  *a2 = v5;
  a2[1] = v3;
  return result;
}

void sub_10043FBF8(void **a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;

  sub_1007254AC(v5, v4);
  *a3 = v6;
}

Swift::Int sub_10043FC4C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10043FCB8(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  NSObject.hash(into:)();
  return NSObject.hash(into:)();
}

Swift::Int sub_10043FD08(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10043FD70(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  return (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0;
}

unint64_t sub_10043FE0C()
{
  result = qword_100947210;
  if (!qword_100947210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947210);
  }

  return result;
}

unint64_t sub_10043FE60(uint64_t a1)
{
  result = sub_1001A6814();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10043FE88()
{
  result = qword_100947220;
  if (!qword_100947220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947220);
  }

  return result;
}

Swift::Int sub_10043FEDC()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10043FF78(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10043FFD0(uint64_t *a1, uint64_t *a2)
{
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100440048(uint64_t a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t a5)
{
  v159 = a5;
  v175 = a2;
  v176 = a1;
  v8 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v8 - 8, v9);
  v163 = &v153 - v10;
  v11 = sub_1000F5104(&qword_100947258, &unk_1007AA0A0);
  v12 = *(v11 - 8);
  v161 = v11;
  v162 = v12;
  __chkstk_darwin(v11, v13);
  v15 = &v153 - v14;
  v16 = sub_1000F5104(&qword_100947260, &qword_1007AA0B0);
  v17 = *(v16 - 8);
  v164 = v16;
  v165 = v17;
  __chkstk_darwin(v16, v18);
  v160 = &v153 - v19;
  v171 = sub_1000F5104(&qword_100947268, &qword_1007AA0B8);
  v169 = *(v171 - 8);
  __chkstk_darwin(v171, v20);
  v166 = &v153 - v21;
  v173 = sub_1000F5104(&qword_100947270, &qword_1007AA0C0);
  v170 = *(v173 - 8);
  __chkstk_darwin(v173, v22);
  v167 = &v153 - v23;
  v174 = sub_1000F5104(&qword_100947278, &unk_1007AA0C8);
  v172 = *(v174 - 8);
  __chkstk_darwin(v174, v24);
  v168 = &v153 - v25;
  v157 = a3;
  v178 = a3;
  v179 = a4;
  sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  v26 = Optional.descriptionOrNil.getter();
  v28 = v27;
  v29 = swift_allocObject();
  v158 = v5;
  v30 = NSNotificationCenter.Publisher.name.getter();
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v31 == v34 && v33 == v35)
  {

    v33, v37, v38, v39, v40, v41, v42, v43;
    v36, v44, v45, v46, v47, v48, v49, v50;
LABEL_6:
    v66 = 0xD000000000000011;
    v67 = 0x80000001007F8790;
LABEL_7:
    v68 = v175;
    goto LABEL_8;
  }

  v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v33, v52, v53, v54, v55, v56, v57, v58;
  v36, v59, v60, v61, v62, v63, v64, v65;
  if (v51)
  {

    goto LABEL_6;
  }

  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;
  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v92;
  v98 = v95;
  if (v97 == v96 && v94 == v95)
  {

    v94, v99, v100, v101, v102, v103, v104, v105;
    v98, v106, v107, v108, v109, v110, v111, v112;
LABEL_15:
    v67 = 0x80000001007F8770;
    v66 = 0xD000000000000012;
    goto LABEL_7;
  }

  v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v94, v114, v115, v116, v117, v118, v119, v120;
  v98, v121, v122, v123, v124, v125, v126, v127;
  if (v113)
  {
    goto LABEL_15;
  }

  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v66 = 0x6E776F6E6B6E75;
  v128 = type metadata accessor for Logger();
  sub_100006654(v128, qword_100946FF0);

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.fault.getter();
  a4, v131, v132, v133, v134, v135, v136, v137;
  v138 = os_log_type_enabled(v129, v130);
  v68 = v175;
  if (v138)
  {
    v154 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v155 = v130;
    v156 = v139;
    v140 = v154;
    *v154 = 136446210;
    v177 = v139;
    v178 = v157;
    v179 = a4;
    v141 = v129;
    v142 = Optional.descriptionOrNil.getter();
    v144 = v143;
    v145 = sub_10000668C(v142, v143, &v177);
    v144, v146, v147, v148, v149, v150, v151, v152;
    *(v140 + 1) = v145;
    _os_log_impl(&_mh_execute_header, v141, v155, "RDStoreControllerNotificationCenter: Incorrect usage of rem_pipeLineOfAccountsDidEnableOrDisable() {label: %{public}s}", v140, 0xCu);
    sub_10000607C(v156);
  }

  else
  {
  }

  v67 = 0xE700000000000000;
LABEL_8:
  *(v29 + 16) = v66;
  *(v29 + 24) = v67;
  v69 = swift_allocObject();
  v69[2] = v176;
  v69[3] = v68;
  v69[4] = v29;
  v69[5] = v26;
  v70 = v159;
  v69[6] = v28;
  v69[7] = v70;
  type metadata accessor for NSNotificationCenter.Publisher();
  sub_10001BC00(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);

  Publisher.filter(_:)();

  v71 = swift_allocObject();
  v71[2] = v29;
  v71[3] = v26;
  v159 = v26;
  v71[4] = v28;

  sub_1000F5104(&qword_100947280, &qword_1007AA0D8);
  sub_10000CB48(&unk_100947288, &qword_100947258, &unk_1007AA0A0, &protocol conformance descriptor for Publishers.Filter<A>);
  v72 = v160;
  v73 = v161;
  Publisher.map<A>(_:)();

  v162[1](v15, v73);
  v175 = v29;
  v74 = v68;
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v75 = qword_100974CB0;
  v178 = qword_100974CB0;
  v76 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v77 = v163;
  (*(*(v76 - 8) + 56))(v163, 1, 1, v76);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v162 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000CB48(&qword_100947298, &qword_100947260, &qword_1007AA0B0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v78 = v75;
  v79 = v166;
  v80 = v164;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v77, &qword_100939980, &unk_10079ADA0);

  (*(v165 + 8))(v72, v80);
  v81 = swift_allocObject();
  v82 = v175;
  v81[2] = v176;
  v81[3] = v74;
  v83 = v159;
  v81[4] = v82;
  v81[5] = v83;
  v81[6] = v28;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1004429F8;
  *(v84 + 24) = v81;

  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  sub_10000CB48(&qword_1009472A0, &qword_100947268, &qword_1007AA0B8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v85 = v167;
  v86 = v171;
  Publisher.map<A>(_:)();

  (*(v169 + 8))(v79, v86);
  sub_10000CB48(&qword_1009472A8, &qword_100947270, &qword_1007AA0C0, v162);
  v87 = v168;
  v88 = v173;
  Publisher.filter(_:)();
  (*(v170 + 8))(v85, v88);
  sub_10000CB48(&unk_1009472B0, &qword_100947278, &unk_1007AA0C8, &protocol conformance descriptor for Publishers.Filter<A>);
  v89 = v174;
  v90 = Publisher.eraseToAnyPublisher()();
  (*(v172 + 8))(v87, v89);

  return v90;
}

BOOL sub_100440B98(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, uint64_t a5, _TtC7remindd19RDXPCStorePerformer *a6, uint64_t a7)
{
  v13 = Notification.userInfo.getter();
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v13;
  v143 = a2;
  v144 = a3;

  AnyHashable.init<A>(_:)();
  if (!*(v14 + 16) || (v22 = sub_10001B0D8(v145), (v15 & 1) == 0))
  {
    v14, v15, v16, v17, v18, v19, v20, v21;
    sub_10001B2CC(v145);
LABEL_17:
    v146 = 0u;
    v147 = 0u;
    goto LABEL_18;
  }

  sub_100005EF0(*(v14 + 56) + 32 * v22, &v146);
  sub_10001B2CC(v145);
  v14, v23, v24, v25, v26, v27, v28, v29;
  if (!*(&v147 + 1))
  {
LABEL_18:
    sub_1000050A4(&v146, &qword_100939ED0, &qword_100791B10);
    goto LABEL_19;
  }

  sub_1000F5104(&qword_1009472C0, &qword_1007AA0E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_100936150 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100006654(v58, qword_100946FF0);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.fault.getter();
    a3, v61, v62, v63, v64, v65, v66, v67;
    a6, v68, v69, v70, v71, v72, v73, v74;

    if (os_log_type_enabled(v59, v60))
    {
      v75 = swift_slowAlloc();
      *&v146 = swift_slowAlloc();
      *v75 = 136446722;
      swift_beginAccess();
      v77 = *(a4 + 16);
      v76 = *(a4 + 24);

      v78 = sub_10000668C(v77, v76, &v146);
      v76, v79, v80, v81, v82, v83, v84, v85;
      *(v75 + 4) = v78;
      *(v75 + 12) = 2082;
      *(v75 + 14) = sub_10000668C(a5, a6, &v146);
      *(v75 + 22) = 2082;
      *(v75 + 24) = sub_10000668C(a2, a3, &v146);
      _os_log_impl(&_mh_execute_header, v59, v60, "RDStoreControllerNotificationCenter.%{public}s[%{public}s]: Received notification that has no %{public}s in the user info", v75, 0x20u);
      swift_arrayDestroy();
    }

    return 0;
  }

  v145[0], v30, v31, v32, v33, v34, v35, v36;
  v37 = Notification.userInfo.getter();
  if (!v37)
  {
LABEL_26:
    v146 = 0u;
    v147 = 0u;
    goto LABEL_27;
  }

  v38 = v37;
  *&v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v146 + 1) = v39;
  AnyHashable.init<A>(_:)();
  if (!*(v38 + 16) || (v47 = sub_10001B0D8(v145), (v40 & 1) == 0))
  {
    v38, v40, v41, v42, v43, v44, v45, v46;
    sub_10001B2CC(v145);
    goto LABEL_26;
  }

  sub_100005EF0(*(v38 + 56) + 32 * v47, &v146);
  sub_10001B2CC(v145);
  v38, v48, v49, v50, v51, v52, v53, v54;
  if (!*(&v147 + 1))
  {
LABEL_27:
    sub_1000050A4(&v146, &qword_100939ED0, &qword_100791B10);
    v56 = 0;
    v57 = 0;
    goto LABEL_28;
  }

  v55 = swift_dynamicCast();
  if (v55)
  {
    v56 = v145[0];
  }

  else
  {
    v56 = 0;
  }

  if (v55)
  {
    v57 = v145[1];
  }

  else
  {
    v57 = 0;
  }

LABEL_28:
  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  sub_100006654(v87, qword_100946FF0);

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.info.getter();
  v57, v90, v91, v92, v93, v94, v95, v96;
  a6, v97, v98, v99, v100, v101, v102, v103;

  if (os_log_type_enabled(v88, v89))
  {
    v104 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *&v146 = v142;
    *v104 = 136446722;
    swift_beginAccess();
    v106 = *(a4 + 16);
    v105 = *(a4 + 24);

    v107 = sub_10000668C(v106, v105, &v146);
    v105, v108, v109, v110, v111, v112, v113, v114;
    *(v104 + 4) = v107;
    *(v104 + 12) = 2082;
    *(v104 + 14) = sub_10000668C(a5, a6, &v146);
    *(v104 + 22) = 2082;
    if (v57)
    {
      v115 = v56;
    }

    else
    {
      v115 = 0x68747561206F6E28;
    }

    if (v57)
    {
      v116 = v57;
    }

    else
    {
      v116 = 0xEB0000000029726FLL;
    }

    v117 = sub_10000668C(v115, v116, &v146);
    v116, v118, v119, v120, v121, v122, v123, v124;
    *(v104 + 24) = v117;
    _os_log_impl(&_mh_execute_header, v88, v89, "RDStoreControllerNotificationCenter.%{public}s[%{public}s]: Received notification {author: %{public}s}", v104, 0x20u);
    swift_arrayDestroy();
  }

  if (!v57)
  {
    return 1;
  }

  if (a7)
  {
    *&v146 = v56;
    *(&v146 + 1) = v57;
    __chkstk_darwin(v125, v126);
    v141[2] = &v146;
    v133 = sub_100040A74(sub_100040B20, v141, a7);
    v57, v134, v135, v136, v137, v138, v139, v140;
    return (v133 & 1) == 0;
  }

  v57, v126, v127, v128, v129, v130, v131, v132;
  return 1;
}

uint64_t sub_1004411BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100946FF0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  a4, v13, v14, v15, v16, v17, v18, v19;

  if (os_log_type_enabled(v11, v12))
  {
    v55 = a1;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v20 = 136446466;
    swift_beginAccess();
    v22 = *(a2 + 16);
    v21 = *(a2 + 24);

    v23 = sub_10000668C(v22, v21, &v56);
    v21, v24, v25, v26, v27, v28, v29, v30;
    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_10000668C(a3, a4, &v56);
    _os_log_impl(&_mh_execute_header, v11, v12, "os_transaction INIT {name: com.apple.remindd.storeControllerNotificationCenter.%{public}sPublisher}, label: %{public}s", v20, 0x16u);
    swift_arrayDestroy();

    a1 = v55;
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v58 = v56;
  v59 = v57;
  v31._object = 0x80000001007F87B0;
  v31._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v31);
  swift_beginAccess();
  v32 = *(a2 + 16);
  v33 = *(a2 + 24);

  v34._countAndFlagsBits = v32;
  v34._object = v33;
  String.append(_:)(v34);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v42._countAndFlagsBits = 0x656873696C627550;
  v42._object = 0xE900000000000072;
  String.append(_:)(v42);
  v43 = v59;
  String.utf8CString.getter();
  v43, v44, v45, v46, v47, v48, v49, v50;
  v51 = os_transaction_create();

  v52 = *(sub_1000F5104(&qword_100947280, &qword_1007AA0D8) + 48);
  v53 = type metadata accessor for Notification();
  result = (*(*(v53 - 8) + 16))(a5, a1, v53);
  *(a5 + v52) = v51;
  return result;
}

void *sub_1004414A8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _TtC7remindd19RDXPCStorePerformer *a8)
{
  v11 = Notification.userInfo.getter();
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;

  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v20 = sub_10001B0D8(v70), (v13 & 1) == 0))
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
    sub_10001B2CC(v70);
LABEL_12:
    v71 = 0u;
    v72 = 0u;
    goto LABEL_13;
  }

  sub_100005EF0(*(v12 + 56) + 32 * v20, &v71);
  sub_10001B2CC(v70);
  v12, v21, v22, v23, v24, v25, v26, v27;
  if (!*(&v72 + 1))
  {
LABEL_13:
    sub_1000050A4(&v71, &qword_100939ED0, &qword_100791B10);
    return _swiftEmptySetSingleton;
  }

  sub_1000F5104(&qword_1009472C0, &qword_1007AA0E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return _swiftEmptySetSingleton;
  }

  v28 = v70[0];
  v29 = [objc_opt_self() currentThread];
  v30 = [v29 qualityOfService];

  sub_10043BBE0(v28, v30);
  v32 = v31;
  v28, v33, v34, v35, v36, v37, v38, v39;
  if (qword_100936150 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100006654(v40, qword_100946FF0);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  a8, v43, v44, v45, v46, v47, v48, v49;

  if (os_log_type_enabled(v41, v42))
  {
    v50 = swift_slowAlloc();
    *&v71 = swift_slowAlloc();
    *v50 = 136446466;
    swift_beginAccess();
    v52 = *(a6 + 16);
    v51 = *(a6 + 24);

    v53 = sub_10000668C(v52, v51, &v71);
    v51, v54, v55, v56, v57, v58, v59, v60;
    *(v50 + 4) = v53;
    *(v50 + 12) = 2082;
    *(v50 + 14) = sub_10000668C(a7, a8, &v71);
    _os_log_impl(&_mh_execute_header, v41, v42, "os_transaction RELEASE {name: com.apple.remindd.storeControllerNotificationCenter.%{public}sPublisher}, label: %{public}s", v50, 0x16u);
    swift_arrayDestroy();
  }

  v61 = sub_1001A6768(v32);
  v32, v62, v63, v64, v65, v66, v67, v68;
  return v61;
}

void *sub_1004417C4(uint64_t a1, uint64_t a2, void *a3, __int128 *a4)
{
  v9 = swift_slowAlloc();
  v4[6] = &_swiftEmptyArrayStorage;
  v4[7] = 0;
  v4[4] = a2;
  v4[5] = v9;
  v4[2] = a3;
  v4[3] = a1;
  *v9 = 0;

  v10 = a3;
  sub_1004419EC(a4, v21);
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v11 = qword_100974CB0;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v11;
  v14 = sub_100442808(a1, a2, a4, v13, sub_100025954, v12, &qword_100947228, &qword_1007AA090);

  sub_100441A48(a4);
  v15 = v4[7];
  v4[7] = v14;

  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];

  v18 = [v10 persistentStoreCoordinator];
  [v17 addObserver:v4 selector:"handleNotification:" name:NSManagedObjectContextDidSaveObjectIDsNotification object:v18];

  v19 = [v16 defaultCenter];
  [v19 addObserver:v4 selector:"handleNotification:" name:@"RDStoreControllerDidRemoveAccountStoresNotification" object:v10];

  return v4;
}

uint64_t sub_100441A9C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3)
{
  v45 = a1;
  v6 = sub_1000F5104(&qword_100947368, &unk_1007AA148);
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  __chkstk_darwin(v6, v8);
  v46 = &v45 - v9;
  v10 = type metadata accessor for NSNotificationCenter.Publisher();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = sub_100440048(v17, v18, a1, a2, a3);
  v19, v21, v22, v23, v24, v25, v26, v27;
  v28 = *(v11 + 8);
  v28(v14, v10);
  v29 = [v15 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  v33 = sub_100440048(v30, v31, v45, a2, a3);
  v32, v34, v35, v36, v37, v38, v39, v40;
  v28(v14, v10);
  v49 = v33;
  v50 = v20;

  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v41 = v46;
  Publishers.Merge.init(_:_:)();
  sub_10000CB48(&unk_100947370, &qword_100947368, &unk_1007AA148, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v42 = v47;
  v43 = Publisher.eraseToAnyPublisher()();

  (*(v48 + 8))(v41, v42);
  return v43;
}

uint64_t sub_100441DF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v70 = a3;
  v90 = a2;
  v5 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v5 - 8, v6);
  v87 = &v67 - v7;
  v71 = sub_1000F5104(&qword_100947318, &qword_1007AA120);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71, v8);
  v68 = &v67 - v9;
  v10 = sub_1000F5104(&qword_100947320, &qword_1007AA128);
  v11 = *(v10 - 8);
  v74 = v10;
  v75 = v11;
  __chkstk_darwin(v10, v12);
  v69 = &v67 - v13;
  v80 = sub_1000F5104(&qword_100947328, &qword_1007AA130);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80, v14);
  v88 = &v67 - v15;
  v86 = sub_1000F5104(&qword_100947330, &qword_1007AA138);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86, v16);
  v82 = &v67 - v17;
  v85 = sub_1000F5104(&qword_100947338, &qword_1007AA140);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85, v18);
  v81 = &v67 - v19;
  v20 = type metadata accessor for NSNotificationCenter.Publisher();
  v89 = *(v20 - 8);
  __chkstk_darwin(v20, v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v27 = &v67 - v26;
  __chkstk_darwin(v28, v29);
  v31 = &v67 - v30;
  __chkstk_darwin(v32, v33);
  v35 = &v67 - v34;
  v36 = objc_opt_self();
  v37 = [v36 defaultCenter];
  v38 = [a1 persistentStoreCoordinator];
  v39 = v90;
  NSNotificationCenter.publisher(for:object:)();

  v40 = [v36 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v41 = *(v89 + 16);
  v76 = v35;
  v41(v27, v35, v20);
  v77 = v31;
  v41(v23, v31, v20);
  sub_10001BC00(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v42 = v68;
  v79 = v20;
  Publishers.Merge.init(_:_:)();
  v43 = swift_allocObject();
  v44 = v70;
  v43[2] = v39;
  v43[3] = v44;
  v45 = v72;
  v43[4] = a1;
  v43[5] = v45;
  sub_10000CB48(&qword_100947340, &qword_100947318, &qword_1007AA120, &protocol conformance descriptor for Publishers.Merge<A, B>);

  v46 = a1;

  v47 = v69;
  v48 = v71;
  Publisher.filter(_:)();

  (*(v73 + 8))(v42, v48);
  v49 = swift_allocObject();
  *(v49 + 16) = v39;
  *(v49 + 24) = v44;

  sub_1000F5104(&qword_100947280, &qword_1007AA0D8);
  sub_10000CB48(&qword_100947348, &qword_100947320, &qword_1007AA128, &protocol conformance descriptor for Publishers.Filter<A>);
  v50 = v74;
  Publisher.map<A>(_:)();

  (*(v75 + 8))(v47, v50);
  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v51 = qword_100974CB0;
  v91 = qword_100974CB0;
  v52 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v53 = v87;
  (*(*(v52 - 8) + 56))(v87, 1, 1, v52);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&qword_100947350, &qword_100947328, &qword_1007AA130, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v54 = v51;
  v55 = v82;
  v56 = v80;
  v57 = v88;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v53, &qword_100939980, &unk_10079ADA0);

  (*(v78 + 8))(v57, v56);
  v58 = swift_allocObject();
  *(v58 + 16) = v90;
  *(v58 + 24) = v44;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_100443054;
  *(v59 + 24) = v58;

  sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  sub_10000CB48(&qword_100947358, &qword_100947330, &qword_1007AA138, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v60 = v81;
  v61 = v86;
  Publisher.map<A>(_:)();

  (*(v84 + 8))(v55, v61);
  sub_10000CB48(&qword_100947360, &qword_100947338, &qword_1007AA140, &protocol conformance descriptor for Publishers.Map<A, B>);
  v62 = v85;
  v63 = Publisher.eraseToAnyPublisher()();
  (*(v83 + 8))(v60, v62);
  v64 = *(v89 + 8);
  v65 = v79;
  v64(v77, v79);
  v64(v76, v65);
  return v63;
}

id sub_100442808(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v13 = sub_1000F5104(a7, a8);
  v14 = objc_allocWithZone(v13);
  v15 = qword_1009394E8;
  *&v14[qword_1009394E8] = 0;
  v14[qword_1009394F8] = 1;
  *&v14[qword_100939500] = 0;
  v16 = qword_100939510;
  *&v14[qword_100939510] = &_swiftEmptyArrayStorage;
  *&v14[qword_100939518] = 0;
  *&v14[qword_100939508] = _swiftEmptySetSingleton;
  swift_beginAccess();
  *&v14[v16] = &_swiftEmptyArrayStorage;
  v17 = *(a3 + 2);
  v18 = *(a3 + 3);
  v19 = *(a3 + 32);
  v20 = &v14[qword_1009394E0];
  v21 = *a3;
  v22 = a3[1];
  *(v20 + 16) = *(a3 + 16);
  *v20 = v21;
  *(v20 + 1) = v22;
  *&v14[qword_1009394D0] = a4;
  v23 = &v14[qword_1009394D8];
  *v23 = a5;
  v23[1] = a6;
  if (v19)
  {
    type metadata accessor for RDDebouncing.LoadFactor(0);
    swift_allocObject();
    v24 = a4;

    sub_1004419EC(a3, v29);
    *&v14[v15] = sub_10014DC40(v17, v18);
  }

  else
  {
    *&v14[v15] = 0;
    v25 = a4;
  }

  v26 = &v14[qword_1009394F0];
  *v26 = a1;
  v26[1] = a2;
  v30.receiver = v14;
  v30.super_class = v13;
  return objc_msgSendSuper2(&v30, "init");
}

void sub_100442A6C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = &_swiftEmptyArrayStorage;
    v49 = &_swiftEmptyArrayStorage;
    v5 = a1 + 56;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 56);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    while (v8)
    {
LABEL_12:
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = v12[1];
      v48[0] = *v12;
      v48[1] = v13;

      sub_10043F090(a2, v48, &v47);
      v13, v14, v15, v16, v17, v18, v19, v20;
      if (v47)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v49;
      }

      v8 &= v8 - 1;
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        goto LABEL_21;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = [objc_opt_self() subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
    sub_1000F5104(&qword_100947250, &unk_1007AC8E0);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = *(v22 + 16);
    if (v30)
    {
      v48[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v31 = 32;
      do
      {
        v32 = [swift_getObjCClassFromMetadata() entity];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v31 += 8;
        --v30;
      }

      while (v30);
      v22, v33, v34, v35, v36, v37, v38, v39;
      v4 = v48[0];
    }

    else
    {
      v22, v23, v24, v25, v26, v27, v28, v29;
      v4 = &_swiftEmptyArrayStorage;
    }

LABEL_21:
    sub_100027634(v4);
    v4, v40, v41, v42, v43, v44, v45, v46;
  }
}

void sub_100442CE8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100442A6C(a2, a3);
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1 << *(a1 + 32);
  v46[2] = _swiftEmptySetSingleton;
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = (63 - v7) >> 6;
  v41 = v4 & 0xC000000000000001;
  v42 = v4;
  v37 = v4 + 56;
  v43 = a1;

  v11 = 0;
  v39 = v10;
  v40 = v6;
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_9:
  while (2)
  {
    v13 = *(v43 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9))));
    v14 = *v13;
    v38 = *(v13 + 8);
    v45 = *v13;
    if (v41)
    {
      v15 = v14;

      __CocoaSet.makeIterator()();
      sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
      sub_10000CDE4(&qword_10093A8E8, &unk_100947240, NSEntityDescription_ptr, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v16 = v46[3];
      v17 = v46[4];
      v18 = v46[5];
      v19 = v46[6];
      v20 = v46[7];
    }

    else
    {
      v21 = -1 << *(v42 + 32);
      v18 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v20 = v23 & *(v42 + 56);
      v24 = v14;

      v19 = 0;
      v17 = v37;
    }

    v9 &= v9 - 1;
    v44 = v16;
    while (v16 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_28;
      }

      sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
      swift_dynamicCast();
      v27 = v46[0];
      if (!v46[0])
      {
        goto LABEL_28;
      }

LABEL_25:
      v28 = [v45 isKindOfEntity:v27];

      v16 = v44;
      if (v28)
      {
        sub_10001B860(v44);
        sub_1000236C4(v46, v45, v38);
        v29 = v46[0];
        goto LABEL_30;
      }
    }

    v25 = v19;
    v26 = v20;
    if (!v20)
    {
      while (1)
      {
        v19 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v19 >= ((v18 + 64) >> 6))
        {
          goto LABEL_29;
        }

        v26 = *(v17 + 8 * v19);
        ++v25;
        if (v26)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_21:
    v20 = (v26 - 1) & v26;
    v27 = *(*(v16 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v26)))));
    if (v27)
    {
      goto LABEL_25;
    }

LABEL_28:
    v16 = v44;
LABEL_29:
    sub_10001B860(v16);
    v29 = v45;
LABEL_30:

    v10 = v39;
    v6 = v40;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_5:
  while (2)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      if (v12 < v10)
      {
        v9 = *(v6 + 8 * v12);
        ++v11;
        if (!v9)
        {
          continue;
        }

        v11 = v12;
        goto LABEL_9;
      }

      v42, v30, v31, v32, v33, v34, v35, v36;
    }

    break;
  }
}

uint64_t sub_100443060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_1000F5104(&qword_100947280, &qword_1007AA0D8);
  result = v5(a1, *(a1 + *(v6 + 48)));
  *a2 = result;
  return result;
}

uint64_t sub_1004430F0()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

_TtC7remindd19RDXPCStorePerformer **assignWithCopy for RDStoreControllerNotificationCenter.CollectAndCoalescedChangedEntitiesWithInputCount(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v4 = *a1;
  *a1 = *a2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  a1[1] = a2[1];
  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithTake for RDStoreControllerNotificationCenter.CollectAndCoalescedChangedEntitiesWithInputCount(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *a1;
  *a1 = *a2;
  v10, a2, a3, a4, a5, a6, a7, a8;
  a1[1] = *(a2 + 1);
  return a1;
}

void destroy for RDStoreControllerNotificationCenter.ChangedAccountInfo(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for RDStoreControllerNotificationCenter.ChangedAccountInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for RDStoreControllerNotificationCenter.ChangedAccountInfo(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithCopy for RDStoreControllerNotificationCenter.EntityFilterOption(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v3 = *a1;
  *a1 = *a2;

  v3, v4, v5, v6, v7, v8, v9, v10;
  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithTake for RDStoreControllerNotificationCenter.EntityFilterOption(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *a1;
  *a1 = *a2;
  v9, a2, a3, a4, a5, a6, a7, a8;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDStoreControllerNotificationCenter.EntityFilterOption(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RDStoreControllerNotificationCenter.EntityFilterOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100443404(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10044341C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100443450()
{
  result = qword_100947390;
  if (!qword_100947390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947390);
  }

  return result;
}

uint64_t sub_10044353C()
{
  sub_100443534();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_10044356C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (swift_isaMask & *v2);
  v6 = v5[10];
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v22[-v10];
  v12 = *(v6 - 8);
  __chkstk_darwin(v13, v14);
  v16 = &v22[-v15];
  sub_10014F5CC(a1, v22);
  sub_1000F5104(&qword_100939ED0, &qword_100791B10);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (!v17)
  {
    v18(v11, 1, 1, v6);
    result = (*(v8 + 8))(v11, v7);
    goto LABEL_5;
  }

  v18(v11, 0, 1, v6);
  (*(v12 + 32))(v16, v11, v6);
  v19 = sub_100443D44(v16, v6, v5[11], v5[12]);
  if (v20 >> 60 == 15)
  {
    result = (*(v12 + 8))(v16, v6);
LABEL_5:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 24) = &type metadata for Data;
  *a2 = v19;
  *(a2 + 8) = v20;
  return (*(v12 + 8))(v16, v6);
}

uint64_t sub_10044381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *((swift_isaMask & *v2) + 0x50);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = (v16 - v9);
  sub_10014F5CC(a1, v17);
  if (v18)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v12 = v16[0];
      v13 = v16[1];
      sub_100443A08(v10);
      v14 = *(v5 - 8);
      if ((*(v14 + 48))(v10, 1, v5) != 1)
      {
        *(a2 + 24) = v5;
        v15 = sub_1000103CC(a2);
        (*(v14 + 32))(v15, v10, v5);
        return sub_10001BBA0(v12, v13);
      }

      sub_10001BBA0(v12, v13);
      result = (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    result = sub_1001B2134(v17);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_100443A08@<X0>(void *a3@<X8>)
{
  v5 = *v3;
  v6 = swift_isaMask;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v7 = *((v6 & v5) + 0x50);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 0, 1, v7);
}

id sub_100443B3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  a4(v17, v16);

  sub_1001B2134(v16);
  v8 = v18;
  if (v18)
  {
    v9 = sub_10000F61C(v17, v18);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9, v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_10000607C(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

unint64_t sub_100443CF8()
{
  result = qword_100947440;
  if (!qword_100947440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100947440);
  }

  return result;
}

uint64_t sub_100443D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v4;
}

uint64_t sub_100443DE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947448);
  v1 = sub_100006654(v0, qword_100947448);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RDAutoCategorizerOutputParsingType.description.getter(char a1)
{
  if (a1)
  {
    return 1313821514;
  }

  else
  {
    return 0x657474616D726F46;
  }
}

remindd::RDAutoCategorizerOutputParsingType_optional __swiftcall RDAutoCategorizerOutputParsingType.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 1)
  {
    v1.value = remindd_RDAutoCategorizerOutputParsingType_json;
  }

  else
  {
    v1.value = remindd_RDAutoCategorizerOutputParsingType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_100443F0C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100443F2C()
{
  if (*v0)
  {
    return 1313821514;
  }

  else
  {
    return 0x657474616D726F46;
  }
}

uint64_t static RDAutoCategorizerTypeFactory.create()@<X0>(void *a1@<X8>)
{
  if (qword_100936160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004440AC(&xmmword_100947460, &v9);
  if (v10)
  {
    sub_100054B6C(&v9, &v11);
    return sub_100054B6C(&v11, a1);
  }

  else
  {
    sub_10044411C(&v9);
    v3 = type metadata accessor for REMGenerativeModelsAvailabilityManager();
    v4 = static REMGenerativeModelsAvailabilityManager.shared.getter();
    v12 = v3;
    v13 = &protocol witness table for REMGenerativeModelsAvailabilityManager;
    *&v11 = v4;
    v5 = type metadata accessor for RDAutoCategorizer();
    v6 = objc_allocWithZone(v5);
    sub_10000A87C(&v11, v6 + OBJC_IVAR____TtC7remindd17RDAutoCategorizer_modelsAvailabilityManager);
    v8.receiver = v6;
    v8.super_class = v5;
    v7 = objc_msgSendSuper2(&v8, "init");
    result = sub_10000607C(&v11);
    a1[3] = v5;
    a1[4] = &protocol witness table for RDAutoCategorizer;
    *a1 = v7;
  }

  return result;
}

double sub_100444094()
{
  qword_100947480 = 0;
  result = 0.0;
  xmmword_100947460 = 0u;
  *algn_100947470 = 0u;
  return result;
}

uint64_t sub_1004440AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100939DF8, &qword_1007970A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044411C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100939DF8, &qword_1007970A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RDAutoCategorizer.categorize(listName:reminderTitles:existingSections:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1004441D8, 0, 0);
}

uint64_t sub_1004441D8()
{
  v1 = [objc_opt_self() sharedConfiguration];
  v0[7] = v1;
  v2 = [v1 autoCategorizationOutputParsingType];
  if ([objc_opt_self() isInternalInstall])
  {
    v3 = [objc_opt_self() daemonUserDefaults];
    v4 = [v3 excludeExistingSectionsForAutoCategorizationEnabled];
  }

  else
  {
    v4 = [v1 autoCategorizationInputExcludeExistingSections];
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100444330;
  v6 = v0[5];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_100444524(v9, v7, v8, v6, v4, v2 == 1);
}

uint64_t sub_100444330(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1004444C0;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_100444458;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100444458()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1004444C0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100444524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 64) = a4;
  *(v7 + 72) = v6;
  *(v7 + 241) = a6;
  *(v7 + 240) = a5;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  *(v7 + 40) = a1;
  v8 = type metadata accessor for DispatchTime();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();
  v9 = type metadata accessor for Prompt();
  *(v7 + 104) = v9;
  *(v7 + 112) = *(v9 - 8);
  *(v7 + 120) = swift_task_alloc();
  v10 = type metadata accessor for REMGenerativeModelsFeature();
  *(v7 + 128) = v10;
  *(v7 + 136) = *(v10 - 8);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1004446B8, 0, 0);
}

uint64_t sub_1004446B8()
{
  v109 = v0;
  if (qword_100936158 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 160) = sub_100006654(v1, qword_100947448);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "RDAutoCategorizer: categorize() START", v4, 2u);
  }

  v5 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 72);

  sub_10000F61C((v8 + OBJC_IVAR____TtC7remindd17RDAutoCategorizer_modelsAvailabilityManager), *(v8 + OBJC_IVAR____TtC7remindd17RDAutoCategorizer_modelsAvailabilityManager + 24));
  v107 = enum case for REMGenerativeModelsFeature.autoCategorization(_:);
  v106 = *(v6 + 104);
  v106(v5);
  v9 = REMGenerativeModelsAvailabilityManagerType.supportsFeature(_:)();
  v10 = *(v6 + 8);
  v10(v5, v7);
  if (v9)
  {
    v103 = v10;
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = _REMGetLocalizedString();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == v12 && v16 == v11)
    {
      v16, v17, v18, v19, v20, v21, v22, v23;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16, v28, v29, v30, v31, v32, v33, v34;
      if ((v27 & 1) == 0)
      {

        v36 = *(v0 + 40);
LABEL_15:
        v105 = v35;
        v37 = *(v0 + 56);
        v38 = *(v37 + 16);
        v104 = v36;
        if (v38)
        {
          v39 = sub_1003689CC(v38, 0);
          v40 = sub_1002791DC(&v108, &v39->clientIdentity[16], v38, v37);
          v41 = v108;

          result = sub_10001B860(v41);
          if (v40 != v38)
          {
            __break(1u);
            goto LABEL_42;
          }

          v36 = v104;
          v43 = v39;
        }

        else
        {
          v43 = &_swiftEmptyArrayStorage;
        }

        *(v0 + 168) = v43;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = *(v0 + 241);
          v47 = *(v0 + 240);
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v108 = v49;
          *v48 = 67109378;
          *(v48 + 4) = v47;
          *(v48 + 8) = 2080;
          if (v46)
          {
            v50 = 1313821514;
          }

          else
          {
            v50 = 0x657474616D726F46;
          }

          if (v46)
          {
            v51 = 0xE400000000000000;
          }

          else
          {
            v51 = 0xED0000656E694C64;
          }

          v52 = sub_10000668C(v50, v51, &v108);
          v51, v53, v54, v55, v56, v57, v58, v59;
          *(v48 + 10) = v52;
          _os_log_impl(&_mh_execute_header, v44, v45, "RDAutoCategorizer: input properties excludeSections: %{BOOL}d, outputParsingType: %s", v48, 0x12u);
          sub_10000607C(v49);
        }

        v60 = v105;
        if ((*(v0 + 240) & 1) != 0 || (v61 = *(v0 + 64), (v62 = *(v61 + 16)) == 0))
        {
          v63 = &_swiftEmptyArrayStorage;
LABEL_32:
          v65 = sub_100129B40(v36, v60, v43, v63);
          *(v0 + 176) = v66;
          v68 = v65;
          v69 = v66;
          v70 = v43;
          v71 = v60;
          v73 = *(v0 + 112);
          v72 = *(v0 + 120);
          v74 = *(v0 + 104);
          v71, v66, v75, v76, v77, v78, v79, v80;
          v63, v81, v82, v83, v84, v85, v86, v87;

          Prompt.init(_:)();
          v88 = Prompt.overestimatedTokenCount()();
          v89 = *(v73 + 8);
          *(v0 + 184) = v89;
          *(v0 + 192) = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v89(v72, v74);
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 134217984;
            *(v92 + 4) = v88;
            _os_log_impl(&_mh_execute_header, v90, v91, "RDAutoCategorizer: userPrompt {overestimatedTokenCount: %ld}", v92, 0xCu);
          }

          v93 = *(v0 + 144);
          v94 = *(v0 + 128);

          static DispatchTime.now()();
          type metadata accessor for RDAutoCategorizerSession();
          inited = swift_initStackObject();
          *(v0 + 200) = inited;
          (v106)(v93, v107, v94);
          v96 = REMGenerativeModelsFeature.useCaseIdentifier.getter();
          v98 = v97;
          v103(v93, v94);
          v99 = sub_10038E004(&_swiftEmptyArrayStorage);
          type metadata accessor for RDAutoCategorizerSession._ClientInfo(0);
          swift_allocObject();
          sub_100229AFC(v96, v98, 0, 1, v99);
          *(inited + 16) = v100;
          v101 = swift_task_alloc();
          *(v0 + 208) = v101;
          *v101 = v0;
          v101[1] = sub_100444E74;

          return sub_100226E8C(v68, v69, v70);
        }

        v63 = sub_1003689CC(v62, 0);
        v102 = sub_1002791DC(&v108, &v63->clientIdentity[16], v62, v61);
        v64 = v108;

        result = sub_10001B860(v64);
        if (v102 == v62)
        {
          v60 = v105;
          v36 = v104;
          goto LABEL_32;
        }

LABEL_42:
        __break(1u);
        return result;
      }
    }

    v35 = 0x80000001007F8A40;
    v36 = 0xD000000000000016;
    goto LABEL_15;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "RDAutoCategorizer: {error: unsupported}", v26, 2u);
  }

  sub_100445C44();
  swift_allocError();
  swift_willThrow();

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_100444E74(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[27] = a1;
  v5[28] = a2;
  v5[29] = v2;

  v13 = v4[22];
  if (v2)
  {

    v13, v14, v15, v16, v17, v18, v19, v20;
    v21 = sub_1004453AC;
  }

  else
  {
    v13, v6, v7, v8, v9, v10, v11, v12;
    v21 = sub_100444FC8;
  }

  return _swift_task_switch(v21, 0, 0);
}

uint64_t sub_100444FC8()
{
  v1 = *(v0 + 241);
  static DispatchTime.secondsElapsed(since:)();
  v3 = v2;
  if (v1)
  {
    v4 = *(v0 + 232);
    v5 = sub_1005422EC(*(v0 + 216), *(v0 + 224), *(v0 + 168));
    if (v4)
    {
      v6 = *(v0 + 224);
      v8 = *(v0 + 88);
      v7 = *(v0 + 96);
      v9 = *(v0 + 80);

      v6, v10, v11, v12, v13, v14, v15, v16;
      (*(v8 + 8))(v7, v9);
      swift_setDeallocating();

      v17 = *(v0 + 8);

      return v17();
    }
  }

  else
  {
    v5 = sub_1005BA370(*(v0 + 216), *(v0 + 224), *(v0 + 168));
  }

  v19 = v5;
  v20 = *(v0 + 184);
  v21 = *(v0 + 120);
  v22 = *(v0 + 104);

  Prompt.init(_:)();
  v23 = Prompt.overestimatedTokenCount()();
  v20(v21, v22);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218496;
    *(v26 + 4) = v3;
    *(v26 + 12) = 2048;
    v27 = *(v19 + 16);
    v19, v28, v29, v30, v31, v32, v33, v34;
    *(v26 + 14) = v27;
    v19, v35, v36, v37, v38, v39, v40, v41;
    *(v26 + 22) = 2048;
    *(v26 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "RDAutoCategorizer: categorization {duration: %f, resultsCount: %ld, overestimatedTokenCount: %ld}", v26, 0x20u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v43 = *(v0 + 216);
  v42 = *(v0 + 224);
  _StringGuts.grow(_:)(47);
  0xE000000000000000, v44, v45, v46, v47, v48, v49, v50;
  v51._countAndFlagsBits = v43;
  v51._object = v42;
  String.append(_:)(v51);
  v42, v52, v53, v54, v55, v56, v57, v58;
  v59._countAndFlagsBits = 125;
  v59._object = 0xE100000000000000;
  String.append(_:)(v59);
  sub_100445784(0xD00000000000002CLL, 0x80000001007F8A10);
  0x80000001007F8A10, v60, v61, v62, v63, v64, v65, v66;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  v69 = os_log_type_enabled(v67, v68);
  v71 = *(v0 + 88);
  v70 = *(v0 + 96);
  v72 = *(v0 + 80);
  if (v69)
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "RDAutoCategorizer: categorize() END", v73, 2u);

    swift_setDeallocating();
  }

  else
  {

    swift_setDeallocating();
  }

  (*(v71 + 8))(v70, v72);

  v74 = *(v0 + 8);

  return v74(v19);
}

uint64_t sub_1004453AC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_setDeallocating();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1004454D0()
{
  result = qword_100947490;
  if (!qword_100947490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947490);
  }

  return result;
}

uint64_t sub_100445548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1003F8CF4;

  return RDAutoCategorizer.categorize(listName:reminderTitles:existingSections:)(a1, a2, a3, a4);
}

id sub_10044566C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RDDummyAutoCategorizer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004456D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100445D00;

  return sub_100445938(a3);
}

void sub_100445784(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v4 = [objc_opt_self() daemonUserDefaults];
  v5 = [v4 isAutoCategorizationLoggingEnabled];

  if (v5)
  {
    if (qword_100936158 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_100947448);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    a2, v8, v9, v10, v11, v12, v13, v14;
    if (os_log_type_enabled(oslog, v7))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136380675;
      *(v15 + 4) = sub_10000668C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v7, "%{private}s", v15, 0xCu);
      sub_10000607C(v16);
    }

    else
    {
    }
  }
}

uint64_t sub_100445938(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100445958, 0, 0);
}

unint64_t sub_100445958()
{
  v1 = v0[2];
  v59 = v0[3];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = OBJC_IVAR____TtC7remindd22RDDummyAutoCategorizer_categoryByTitle;
  v6 = (63 - v3) >> 6;

  v7 = 0;
  v56 = _swiftEmptyDictionarySingleton;
  while (v4)
  {
    v8 = v4;
LABEL_10:
    v4 = (v8 - 1) & v8;
    v10 = *(v59 + v5);
    if (*(v10 + 16))
    {
      v11 = (*(v1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_100005F4C(v13, v12);
      if (v15)
      {
        v22 = (*(v10 + 56) + 16 * v14);
        v52 = *v22;
        v53 = v22[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v56;
        result = sub_100005F4C(v13, v12);
        v31 = v56[2];
        v32 = (v24 & 1) == 0;
        v33 = __OFADD__(v31, v32);
        v34 = v31 + v32;
        if (v33)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

        if (v56[3] >= v34)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_18;
          }

          v55 = result;
          v58 = v24;
          sub_100373664();
          v24 = v58;
          result = v55;
          if ((v58 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_19:
          v37 = result;
          v12, v24, v25, v26, v27, v28, v29, v30;
          v56 = v60;
          v38 = (v60[7] + 16 * v37);
          v39 = v38[1];
          *v38 = v52;
          v38[1] = v53;
          v39, v40, v41, v42, v43, v44, v45, v46;
        }

        else
        {
          v57 = v24;
          sub_10036A8F0(v34, isUniquelyReferenced_nonNull_native);
          result = sub_100005F4C(v13, v12);
          v36 = v35 & 1;
          v24 = v57;
          if ((v57 & 1) != v36)
          {
LABEL_27:

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

LABEL_18:
          if (v24)
          {
            goto LABEL_19;
          }

LABEL_21:
          v60[(result >> 6) + 8] |= 1 << result;
          v47 = (v60[6] + 16 * result);
          *v47 = v13;
          v47[1] = v12;
          v48 = (v60[7] + 16 * result);
          *v48 = v52;
          v48[1] = v53;
          v49 = v60[2];
          v33 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v33)
          {
            goto LABEL_31;
          }

          v56 = v60;
          v60[2] = v50;
        }
      }

      else
      {
        v12, v15, v16, v17, v18, v19, v20, v21;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v9 >= v6)
    {
      break;
    }

    v8 = *(v1 + 56 + 8 * v9);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  v51 = v0[1];

  return v51(v56);
}

unint64_t sub_100445C44()
{
  result = qword_100947598;
  if (!qword_100947598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947598);
  }

  return result;
}

unint64_t sub_100445CAC()
{
  result = qword_1009475A0;
  if (!qword_1009475A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009475A0);
  }

  return result;
}

id static REMCDListSection.insert(in:remObjectID:parentList:creationDate:displayName:canonicalName:minimumSupportedVersion:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a7;
  v35 = a9;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for REMCDListSection();
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = [v18 initWithContext:{a1, v34}];
  v20 = [a2 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v14 + 8))(v17, v13);
  [v19 setIdentifier:isa];

  v22 = [a3 account];
  [v19 setAccount:v22];

  v23 = [v19 createResolutionTokenMapIfNecessary];
  [v19 setList:a3];
  v24 = String._bridgeToObjectiveC()();
  [v23 updateForKey:v24];

  v25 = v19;
  v26 = Date._bridgeToObjectiveC()().super.isa;
  [v25 setCreationDate:v26];

  v27 = String._bridgeToObjectiveC()();
  [v23 updateForKey:v27];

  v28 = String._bridgeToObjectiveC()();
  [v25 setDisplayName:v28];

  v29 = String._bridgeToObjectiveC()();
  [v23 updateForKey:v29];

  if (a8)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v25 setCanonicalName:v30];

  v31 = String._bridgeToObjectiveC()();
  [v23 updateForKey:v31];

  [v25 setMinimumSupportedVersion:v35];
  v32 = String._bridgeToObjectiveC()();
  [v23 updateForKey:v32];

  [v25 updateChangeCount];
  return v25;
}

uint64_t static REMCDListSection.cdEntityName.getter(uint64_t a1, uint64_t a2)
{
  sub_1004461C8();
  v2 = [swift_getObjCClassFromMetadata() cdEntityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1004461C8()
{
  result = qword_10093CC18;
  if (!qword_10093CC18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093CC18);
  }

  return result;
}

Swift::Int __swiftcall REMCDListSection.parentEffectiveMinimumSupportedVersion()()
{
  v1 = [v0 list];
  if (!v1)
  {
    return kREMSupportedVersionUnset;
  }

  v2 = v1;
  v3 = [v1 effectiveMinimumSupportedVersion];

  return v3;
}

uint64_t static REMCDListSection.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008E35F0);
  sub_100034610(&unk_1008E3610);
  return v0;
}

id REMCDListSection.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDListSection();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDListSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REMCDListSection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100446490()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009475D0);
  v1 = sub_100006654(v0, qword_1009475D0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100446558(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 list];
  if (!v3)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_1009475D0);
    v27 = v1;
    v6 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v28))
    {
      v29 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      *v29 = 136446466;
      v30 = sub_1004D6C70();
      v32 = v31;
      v33 = sub_10000668C(v30, v31, &v169);
      v32, v34, v35, v36, v37, v38, v39, v40;
      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      [v27 isConcealed];
      v41 = Bool.yesno.getter();
      v43 = v42;
      v44 = sub_10000668C(v41, v42, &v169);
      v43, v45, v46, v47, v48, v49, v50, v51;
      *(v29 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v6, v28, "📓 REMSharedActivityJournaling: Unable to get list from reminder {reminderObjectID: %{public}s, isConcealed: %s}", v29, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_41;
  }

  v4 = v3;
  v5 = [v1 ckServerRecord];
  if (!v5)
  {
    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_1009475D0);
    v53 = v1;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v169 = v57;
      *v56 = 136446210;
      v58 = sub_1004D6C70();
      v60 = v59;
      v61 = sub_10000668C(v58, v59, &v169);
      v60, v62, v63, v64, v65, v66, v67, v68;
      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "📓 REMSharedActivityJournaling: Unable to get ckServerRecord for reminder {reminderObjectID: %{public}s}", v56, 0xCu);
      sub_10000607C(v57);
    }

    return 0;
  }

  v6 = v5;
  if ([v1 isInserted])
  {
    v7 = [v6 creatorUserRecordID];
    if (!v7)
    {
      if (qword_100936168 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006654(v8, qword_1009475D0);
      v9 = v1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_32;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v169 = v13;
      *v12 = 136446210;
      v14 = sub_1004D6C70();
      v16 = v15;
      v17 = sub_10000668C(v14, v15, &v169);
      v16, v18, v19, v20, v21, v22, v23, v24;
      *(v12 + 4) = v17;
      v25 = "📓 REMSharedActivityJournaling: Unable to get creatorUserRecordID from reminder {reminderObjectID: %{public}s}";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v10, v11, v25, v12, 0xCu);
      sub_10000607C(v13);

LABEL_32:

LABEL_40:
LABEL_41:

      return 0;
    }
  }

  else
  {
    v7 = [v6 lastModifiedUserRecordID];
    if (!v7)
    {
      if (qword_100936168 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_100006654(v109, qword_1009475D0);
      v110 = v1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_32;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v169 = v13;
      *v12 = 136446210;
      v111 = sub_1004D6C70();
      v113 = v112;
      v114 = sub_10000668C(v111, v112, &v169);
      v113, v115, v116, v117, v118, v119, v120, v121;
      *(v12 + 4) = v114;
      v25 = "📓 REMSharedActivityJournaling: Unable to get lastModifiedUserRecordID from reminder {reminderObjectID: %{public}s}";
      goto LABEL_31;
    }
  }

  v69 = v7;
  v70 = [v7 recordName];

  v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  v73 = [v4 ckServerShare];
  if (v73)
  {
    v74 = v73;
    v75 = sub_100446EB8(v168, v72);
    if (v75)
    {
      v83 = v75;
      v72, v76, v77, v78, v79, v80, v81, v82;
      v84 = CKShareParticipant.participantID.getter();

      return v84;
    }

    if (qword_100936168 != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    sub_100006654(v122, qword_1009475D0);
    v123 = v2;

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();

    v72, v126, v127, v128, v129, v130, v131, v132;
    if (os_log_type_enabled(v124, v125))
    {
      v140 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      *v140 = 136446466;
      v141 = sub_10000668C(v168, v72, &v169);
      v72, v142, v143, v144, v145, v146, v147, v148;
      *(v140 + 4) = v141;
      *(v140 + 12) = 2082;
      v149 = sub_1004D6C70();
      v151 = v150;
      v152 = sub_10000668C(v149, v150, &v169);
      v151, v153, v154, v155, v156, v157, v158, v159;
      *(v140 + 14) = v152;
      _os_log_impl(&_mh_execute_header, v124, v125, "📓 REMSharedActivityJournaling: Unable to get a participant for the reminder's author {authorID: %{public}s, reminderObjectID: %{public}s}", v140, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v72, v133, v134, v135, v136, v137, v138, v139;
    }

    goto LABEL_40;
  }

  if (qword_100936168 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  sub_100006654(v86, qword_1009475D0);
  v87 = v2;
  v88 = v4;
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    *v91 = 136446466;
    v92 = sub_1004D6C70();
    v94 = v93;
    v95 = sub_10000668C(v92, v93, &v169);
    v94, v96, v97, v98, v99, v100, v101, v102;
    *(v91 + 4) = v95;
    *(v91 + 12) = 2082;
    v103 = [v88 remObjectID];
    if (v103)
    {
      v104 = v103;
      v105 = [v103 description];

      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;
    }

    else
    {
      v108 = 0xE300000000000000;
      v106 = 7104878;
    }

    v160 = sub_10000668C(v106, v108, &v169);
    v108, v161, v162, v163, v164, v165, v166, v167;
    *(v91 + 14) = v160;
    _os_log_impl(&_mh_execute_header, v89, v90, "📓 REMSharedActivityJournaling: Unable to get ckServerShare from reminder's list. Assuming unit testing and returning userRecordID {reminderObjectID: %{public}s, listObjectID: %{public}s}", v91, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v168;
}

void *sub_100446EB8(uint64_t a1, uint64_t a2)
{
  v5 = [v2 participants];
  sub_100447358();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v16 = *(v6 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v16 userIdentity];
      v20 = [v19 userRecordID];

      if (v20)
      {
        v21 = [v20 recordName];

        v22 = a2;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        if (v23 == a1 && v25 == v22)
        {
          v6, v26, v27, v28, v29, v30, v31, v32;
          v25, v49, v50, v51, v52, v53, v54, v55;
          return v17;
        }

        a2 = v22;
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v25, v35, v36, v37, v38, v39, v40, v41;
        if (v34)
        {
          v6, v42, v43, v44, v45, v46, v47, v48;
          return v17;
        }
      }

      ++v15;
      if (v18 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  v6, v7, v8, v9, v10, v11, v12, v13;
  return 0;
}

uint64_t sub_1004470B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v8, v9).n128_u64[0];
  v12 = &v27 - v11;
  v13 = [v2 isInserted];
  v14 = [v2 ckServerRecord];
  if (v13)
  {
    if (v14)
    {
      v15 = v14;
      v16 = [v14 creationDate];

      if (v16)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = type metadata accessor for Date();
        (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
      }

      else
      {
        v24 = type metadata accessor for Date();
        (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
      }

      v25 = v12;
      return sub_10012F7FC(v25, a1);
    }
  }

  else if (v14)
  {
    v18 = v14;
    v19 = [v14 modificationDate];

    if (v19)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
    }

    else
    {
      v26 = type metadata accessor for Date();
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    }

    v25 = v7;
    return sub_10012F7FC(v25, a1);
  }

  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 56);

  return v22(a1, 1, 1, v21);
}

unint64_t sub_100447358()
{
  result = qword_100942E60;
  if (!qword_100942E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100942E60);
  }

  return result;
}

void sub_1004473A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v9, v10);
  v12 = &v36[-v11];
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17, v18);
  v20 = &v36[-v19];
  *&v23 = __chkstk_darwin(v21, v22).n128_u64[0];
  v25 = &v36[-v24];
  v39 = v2;
  v26 = [v2 mostRecentTargetTemplateIdentifier];
  v40 = v5;
  if (v26)
  {
    v27 = v26;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v40;
    (*(v40 + 56))(v25, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v25, 1, 1, v4);
  }

  v28 = *(v9 + 48);
  sub_10018E470(v25, v12);
  v38 = a1;
  sub_10018E470(a1, &v12[v28]);
  v29 = *(v5 + 48);
  if (v29(v12, 1, v4) == 1)
  {
    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    if (v29(&v12[v28], 1, v4) == 1)
    {
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      return;
    }
  }

  else
  {
    sub_10018E470(v12, v20);
    if (v29(&v12[v28], 1, v4) != 1)
    {
      v34 = v40;
      (*(v40 + 32))(v8, &v12[v28], v4);
      sub_10018E4E0();
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v34 + 8);
      v35(v8, v4);
      sub_1000050A4(v25, &unk_100939D90, "8\n\r");
      v35(v20, v4);
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      if (v37)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    (*(v40 + 8))(v20, v4);
  }

  sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
LABEL_10:
  sub_10018E470(v38, v16);
  if (v29(v16, 1, v4) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v40 + 8))(v16, v4);
  }

  v31 = v39;
  [v39 setMostRecentTargetTemplateIdentifier:isa];

  v32 = [v31 createResolutionTokenMapIfNecessary];
  v33 = String._bridgeToObjectiveC()();
  [v32 updateForKey:v33];
}

uint64_t sub_100447850()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009475F0);
  v1 = sub_100006654(v0, qword_1009475F0);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall REMCDSmartList.willSave_Swift()()
{
  if (([v0 didCleanUpManualSortHintOnMarkingForDeletion] & 1) == 0)
  {
    [v0 setDidCleanUpManualSortHintOnMarkingForDeletion:1];

    sub_10044796C();
  }
}

void sub_10044796C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  *&v5 = __chkstk_darwin(v2, v4).n128_u64[0];
  v7 = &v241 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 markedForDeletion])
  {
    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = [v1 smartListType];
  if (v11)
  {
    v19 = v11;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v8 == v20 && v10 == v22)
    {
      v10, v23, v24, v25, v26, v27, v28, v29;
      v22, v55, v56, v57, v58, v59, v60, v61;
      goto LABEL_16;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10, v32, v33, v34, v35, v36, v37, v38;
    v22, v39, v40, v41, v42, v43, v44, v45;
    if (v31)
    {
LABEL_16:
      v62 = [v1 remObjectID];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 uuid];

        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = UUID.uuidString.getter();
        v67 = v66;
        (*(v3 + 8))(v7, v2);
        v68 = [v1 account];
        if (v68 && (v69 = v68, v70 = [v68 remObjectID], v69, v70))
        {
          v71 = [v1 storeControllerManagedObjectContext];
          if (v71)
          {
            v79 = v71;
            v80 = [v71 transactionAuthor];
            if (v80 && (v81 = v80, static String._unconditionallyBridgeFromObjectiveC(_:)(), v83 = v82, v81, v84._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), object = v84._object, v86 = String.hasPrefix(_:)(v84), object, v87, v88, v89, v90, v91, v92, v93, v83, v94, v95, v96, v97, v98, v99, v100, !v86))
            {
              if (qword_100936170 != -1)
              {
                swift_once();
              }

              v228 = type metadata accessor for Logger();
              sub_100006654(v228, qword_1009475F0);

              v229 = Logger.logObject.getter();
              v230 = static os_log_type_t.default.getter();
              v67, v231, v232, v233, v234, v235, v236, v237;
              if (os_log_type_enabled(v229, v230))
              {
                v238 = swift_slowAlloc();
                v239 = swift_slowAlloc();
                v243 = v239;
                *v238 = 136446210;
                *(v238 + 4) = sub_10000668C(v65, v67, &v243);
                _os_log_impl(&_mh_execute_header, v229, v230, "cleanUpManualSortHintIfNeeded: CSL was deleted due to user-initiated changes, will delete its associated sort hint {listID: %{public}s}", v238, 0xCu);
                sub_10000607C(v239);
              }

              v240 = v70;
              sub_10013A994(2uLL, v65, v67, v70);

              swift_bridgeObjectRelease_n();
            }

            else
            {
              if (qword_100936170 != -1)
              {
                swift_once();
              }

              v101 = type metadata accessor for Logger();
              sub_100006654(v101, qword_1009475F0);

              v102 = Logger.logObject.getter();
              v103 = static os_log_type_t.default.getter();
              v67, v104, v105, v106, v107, v108, v109, v110;
              if (os_log_type_enabled(v102, v103))
              {
                v118 = swift_slowAlloc();
                v119 = swift_slowAlloc();
                v243 = v119;
                *v118 = 136446210;
                v120 = sub_10000668C(v65, v67, &v243);
                v67, v121, v122, v123, v124, v125, v126, v127;
                *(v118 + 4) = v120;
                _os_log_impl(&_mh_execute_header, v102, v103, "cleanUpManualSortHintIfNeeded: CSL was deleted due to non-user-initiated changes, cleanup is not needed {listID: %{public}s}", v118, 0xCu);
                sub_10000607C(v119);
              }

              else
              {
                v67, v111, v112, v113, v114, v115, v116, v117;
              }
            }

            return;
          }
        }

        else
        {
          if (qword_100936170 != -1)
          {
            swift_once();
          }

          v128 = type metadata accessor for Logger();
          sub_100006654(v128, qword_1009475F0);

          v129 = v1;
          v70 = Logger.logObject.getter();
          v130 = static os_log_type_t.error.getter();
          v67, v131, v132, v133, v134, v135, v136, v137;

          if (os_log_type_enabled(v70, v130))
          {
            v138 = swift_slowAlloc();
            v245 = swift_slowAlloc();
            *v138 = 136446466;
            v139 = [v129 smartListType];
            if (v139)
            {
              v140 = v139;
              v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v143 = v142;
            }

            else
            {
              v141 = 0;
              v143 = 0;
            }

            v243 = v141;
            v244 = v143;
            sub_1000F5104(&unk_100939E40, &qword_100791BD0);
            v186 = Optional.descriptionOrNil.getter();
            v188 = v187;
            v143, v187, v189, v190, v191, v192, v193, v194;
            v195 = sub_10000668C(v186, v188, &v245);
            v188, v196, v197, v198, v199, v200, v201, v202;
            *(v138 + 4) = v195;
            *(v138 + 12) = 2082;
            v203 = sub_10000668C(v65, v67, &v245);
            v67, v204, v205, v206, v207, v208, v209, v210;
            *(v138 + 14) = v203;
            _os_log_impl(&_mh_execute_header, v70, v130, "cleanUpManualSortHintIfNeeded: Unexpectedly nil smart list account.remObjectID {type: %{public}s, smartListUUIDString: %{public}s}", v138, 0x16u);
            swift_arrayDestroy();

            goto LABEL_47;
          }
        }

        v67, v72, v73, v74, v75, v76, v77, v78;
LABEL_47:

        return;
      }

      if (qword_100936170 != -1)
      {
        swift_once();
      }

      v144 = type metadata accessor for Logger();
      sub_100006654(v144, qword_1009475F0);
      v145 = v1;
      v242 = Logger.logObject.getter();
      v146 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v242, v146))
      {
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v245 = v148;
        *v147 = 136446210;
        v149 = [v145 smartListType];
        if (v149)
        {
          v150 = v149;
          v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v153 = v152;
        }

        else
        {
          v151 = 0;
          v153 = 0;
        }

        v243 = v151;
        v244 = v153;
        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v211 = Optional.descriptionOrNil.getter();
        v213 = v212;
        v153, v212, v214, v215, v216, v217, v218, v219;
        v220 = sub_10000668C(v211, v213, &v245);
        v213, v221, v222, v223, v224, v225, v226, v227;
        *(v147 + 4) = v220;
        _os_log_impl(&_mh_execute_header, v242, v146, "cleanUpManualSortHintIfNeeded: Unexpectedly nil smart list remObjectID {type: %{public}s}", v147, 0xCu);
        sub_10000607C(v148);

LABEL_50:

        return;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v10, v12, v13, v14, v15, v16, v17, v18;
  }

  if (qword_100936170 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100006654(v46, qword_1009475F0);
  v47 = v1;
  v242 = Logger.logObject.getter();
  v48 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v242, v48))
  {
    v49 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    *v49 = 136446466;
    v50 = [v47 smartListType];
    if (v50)
    {
      v51 = v50;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v243 = v52;
    v244 = v54;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v155 = Optional.descriptionOrNil.getter();
    v157 = v156;
    v54, v156, v158, v159, v160, v161, v162, v163;
    v164 = sub_10000668C(v155, v157, &v245);
    v157, v165, v166, v167, v168, v169, v170, v171;
    *(v49 + 4) = v164;
    *(v49 + 12) = 2082;
    v172 = [v47 remObjectID];
    if (v172)
    {
      v173 = v172;
      v174 = [v172 description];

      v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v177 = v176;
    }

    else
    {
      v177 = 0xE300000000000000;
      v175 = 7104878;
    }

    v178 = sub_10000668C(v175, v177, &v245);
    v177, v179, v180, v181, v182, v183, v184, v185;
    *(v49 + 14) = v178;
    _os_log_impl(&_mh_execute_header, v242, v48, "cleanUpManualSortHintIfNeeded: Unexpectedly having a non-custom smart-list getting markedForDeletion {type: %{public}s, remObjectID: %{public}s}", v49, 0x16u);
    swift_arrayDestroy();

    goto LABEL_50;
  }

LABEL_36:
  v154 = v242;
}

uint64_t sub_100448628()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947608);
  v1 = sub_100006654(v0, qword_100947608);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004486F0(NSObject *a1@<X4>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v5, v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v64 - v11;
  __chkstk_darwin(v13, v14);
  v16 = &v64 - v15;
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v17 = sub_100013674(qword_1009752E8);
  if (v17)
  {
    v18 = v17;
    v19 = [v17 secondaryGroceryLocalesInfoAsData];
    if (v19)
    {
      v66 = a2;
      v67 = a1;
      v20 = v19;
      v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      type metadata accessor for RDSecondaryGroceryLocalesInfo(0);
      sub_100448E3C(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo, &unk_1007B16F8);
      static REMJSONRepresentable.fromJSONData(_:)();
      sub_10001BBA0(v21, v23);
      if (v2)
      {
      }

      else
      {
        v25 = *(v68 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);

        sub_100448B78(v25, v16);
        if (qword_100936178 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100006654(v26, qword_100947608);
        sub_100448E84(v16, v12);
        swift_bridgeObjectRetain_n();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        v67 = v27;
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v65 = v28;
          v30 = v29;
          v64 = swift_slowAlloc();
          v68 = v64;
          *v30 = 136446466;
          sub_100448E84(v12, v8);
          v31 = String.init<A>(describing:)();
          v33 = v32;
          sub_100448DD4(v12);
          v34 = sub_10000668C(v31, v33, &v68);
          v33, v35, v36, v37, v38, v39, v40, v41;
          *(v30 + 4) = v34;
          *(v30 + 12) = 1024;
          v25, v42, v43, v44, v45, v46, v47, v48;
          *(v30 + 14) = v25 == 0;
          v25, v49, v50, v51, v52, v53, v54, v55;
          v56 = v67;
          _os_log_impl(&_mh_execute_header, v67, v65, "REMGroceryDataView.SecondaryGroceryLocaleInvocation: %{public}s, isAutomatic: %{BOOL}d", v30, 0x12u);
          sub_10000607C(v64);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          sub_100448DD4(v12);
        }

        sub_100448E84(v16, v8);
        v25, v57, v58, v59, v60, v61, v62, v63;
        REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.init(locale:isAutomatic:)();

        sub_100448DD4(v16);
      }
    }

    else
    {
      v24 = type metadata accessor for Locale();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.init(locale:isAutomatic:)();
    }
  }

  else
  {
    [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    swift_willThrow();
  }
}

void sub_100448B78(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v21 - v7;
  if (REMGroceryDataView.SecondaryGroceryLocaleInvocation.Parameters.modelBaseLocaleConversion.getter())
  {
    sub_100448FEC(a1, v8);
    v9 = type metadata accessor for Locale();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_100448DD4(v8);
LABEL_4:
      (*(v10 + 56))(a2, 1, 1, v9);
      return;
    }

    Locale.identifier.getter();
    v12 = v11;
    (*(v10 + 8))(v8, v9);
    type metadata accessor for REMGroceryDummyModel();
    static REMGroceryDummyModel.modelBaseLocale(for:)();
    if (v2)
    {
      v12, v13, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v20 = v13;
      v12, v13, v14, v15, v16, v17, v18, v19;
      if (!v20)
      {
        goto LABEL_4;
      }

      Locale.init(identifier:)();
      (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  else
  {
    sub_100448FEC(a1, a2);
  }
}

uint64_t sub_100448D7C(uint64_t a1)
{
  result = sub_100448E3C(&qword_100947640, &type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation, &protocol conformance descriptor for REMGroceryDataView.SecondaryGroceryLocaleInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100448DD4(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100448E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100448E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100448EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}