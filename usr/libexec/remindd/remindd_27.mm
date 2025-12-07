double sub_1002B6654(void *a1, unint64_t a2, uint64_t a3, _BYTE *a4, unint64_t a5, void *a6)
{
  v135 = a5;
  v136 = a6;
  v130 = a4;
  v134 = type metadata accessor for DateComponents();
  v8 = *(v134 - 1);
  *&v10 = __chkstk_darwin(v134, v9).n128_u64[0];
  v133 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 alarms];
  v131 = a1;
  if (!v12)
  {
    v24 = _swiftEmptySetSingleton;
    goto LABEL_32;
  }

  v13 = v12;
  *&v128 = a2;
  sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [a1 accountID];
  v15 = [a1 objectID];
  type metadata accessor for REMAlarmCDIngestor();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  sub_1005FC6A4(a2, v16);

  v17 = (a2 >> 62);
  if (a2 >> 62)
  {
    goto LABEL_64;
  }

  v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v19 = &_swiftEmptyArrayStorage;
  if (v18)
  {
    v138 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v18 < 0)
    {
      __break(1u);
      goto LABEL_69;
    }

    v20 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(a2 + 8 * v20 + 32);
      }

      v22 = v21;
      ++v20;
      v23 = [v21 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v18 != v20);
    v19 = v138;
  }

  v24 = sub_1001A577C(v19);
  v19, v25, v26, v27, v28, v29, v30, v31;
  if (v17)
  {
    v39 = _CocoaArrayWrapper.endIndex.getter();
    if (v39)
    {
LABEL_14:
      if (v39 >= 1)
      {
        v129 = v24;
        v40 = 0;
        v137 = a2 & 0xC000000000000001;
        v132 = v8 + 1;
        v41 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        do
        {
          if (v137)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v42 = *(a2 + 8 * v40 + 32);
          }

          v43 = v42;
          v8 = [v42 v41[268]];
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          if (v44)
          {
            v45 = a2;
            v46 = v39;
            v47 = v41;
            *v135 = 1;
            v48 = [v44 dateComponents];
            v49 = v133;
            static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v50 = DateComponents.fifteenMinuteBin.getter();
            v52 = v51;

            (*v132)(v49, v134);
            v60 = v136;
            if (v52)
            {
              *v136 = -1;
            }

            else
            {
              *v136 = v50;
            }

            *(v60 + 8) = 0;
            v41 = v47;
            v39 = v46;
            a2 = v45;
          }

          else
          {

            v61 = [v43 v41[268]];
            objc_opt_self();
            v62 = swift_dynamicCastObjCClass();

            if (v62)
            {
              *v130 = 1;
            }
          }

          ++v40;
        }

        while (v39 != v40);
        a2, v53, v54, v55, v56, v57, v58, v59;
        v24 = v129;
        goto LABEL_31;
      }

LABEL_69:
      __break(1u);
    }
  }

  else
  {
    v39 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_14;
    }
  }

  a2, v32, v33, v34, v35, v36, v37, v38;
LABEL_31:
  a2 = v128;
LABEL_32:
  v63 = [a2 alarmStorage];
  if (v63)
  {
    v125 = v63;
    v138 = v63;
    v17 = sub_1000060C8(0, &unk_100938870, off_1008D4128);
    sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
    v71 = Sequence.elements<A>(ofType:)();
    v126 = v71;
    if (v71 >> 62)
    {
      v80 = _CocoaArrayWrapper.endIndex.getter();
      if (v80)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v80 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v80)
      {
LABEL_35:
        v81 = 0;
        v135 = v126 & 0xFFFFFFFFFFFFFF8;
        v136 = (v126 & 0xC000000000000001);
        v134 = (v126 + 32);
        v132 = (v24 & 0xC000000000000001);
        v82 = v24 & 0xFFFFFFFFFFFFFF8;
        if (v24 < 0)
        {
          v82 = v24;
        }

        v130 = v82;
        v137 = v24 + 56;
        *&v79 = 138412546;
        v128 = v79;
        v133 = v80;
        v129 = v24;
        while (1)
        {
          if (v136)
          {
            v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v81 >= *(v135 + 16))
            {
              goto LABEL_63;
            }

            v83 = *&v134[8 * v81];
          }

          v8 = v83;
          if (__OFADD__(v81++, 1))
          {
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            v18 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v138 = 0;
          v85 = [v83 remObjectIDWithError:&v138];
          v86 = v138;
          if (!v85)
          {
            v107 = v138;
            v24, v108, v109, v110, v111, v112, v113, v114;
            v126, v115, v116, v117, v118, v119, v120, v121;
            v122 = _convertNSErrorToError(_:)();

            v127 = v122;
            swift_willThrow();

            return result;
          }

          a2 = v85;
          if (!v132)
          {
            break;
          }

          v87 = v138;
          v17 = a2;
          v88 = __CocoaSet.contains(_:)();

          if ((v88 & 1) == 0)
          {
            goto LABEL_55;
          }

LABEL_39:

          if (v81 == v133)
          {
            goto LABEL_66;
          }
        }

        if (*(v24 + 16))
        {
          v17 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v89 = *(v24 + 40);
          v90 = v86;
          v91 = NSObject._rawHashValue(seed:)(v89);
          v92 = -1 << *(v24 + 32);
          v93 = v91 & ~v92;
          if ((*(v137 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93))
          {
            v94 = ~v92;
            do
            {
              v95 = *(*(v24 + 48) + 8 * v93);
              v96 = static NSObject.== infix(_:_:)();

              if (v96)
              {
                goto LABEL_39;
              }

              v93 = (v93 + 1) & v94;
            }

            while (((*(v137 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) != 0);
          }
        }

        else
        {
          v97 = v138;
        }

LABEL_55:
        if (qword_100935E18 != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        sub_100006654(v98, qword_100940648);
        v99 = a2;
        v100 = v131;
        v101 = Logger.logObject.getter();
        v17 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v101, v17))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *v102 = v128;
          v104 = [v100 objectID];
          *(v102 + 4) = v104;
          *(v102 + 12) = 2112;
          *(v102 + 14) = v99;
          *v103 = v104;
          v103[1] = a2;
          v105 = v99;
          _os_log_impl(&_mh_execute_header, v101, v17, "Removing alarm from reminder {reminder.objectID: %@, alarm.objectID: %@}", v102, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          v24 = v129;
        }

        [v8 setReminder:0];
        goto LABEL_39;
      }
    }

LABEL_66:
    v24, v72, v73, v74, v75, v76, v77, v78;

    v106 = v126;
  }

  else
  {
    v106 = v24;
  }

  v106, v64, v65, v66, v67, v68, v69, v70;
  return result;
}

void sub_1002B6F1C(void *a1, void *a2)
{
  v4 = &selRef_accountStatusWithCompletionHandler_;
  v5 = [a1 assignments];
  v108 = a1;
  if (v5)
  {
    v6 = v5;
    sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
    sub_10000CDE4(&qword_100939230, &unk_10093F5F0, REMAssignment_ptr, &protocol conformance descriptor for NSObject);
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_100278534(v7);
    v9 = [a1 accountID];
    v10 = [a1 objectID];
    type metadata accessor for REMAssignmentCDIngestor();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    sub_1005FCEAC(v8, v11);

    sub_1002AD784(v7, sub_100411DA8, &qword_100940918, &qword_1007A0238);
    v13 = v12;
    v14 = v7;
    v4 = &selRef_accountStatusWithCompletionHandler_;
    v14, v15, v16, v17, v18, v19, v20, v21;
    v22 = sub_1001A577C(v13);
    v13, v23, v24, v25, v26, v27, v28, v29;
  }

  else
  {
    v22 = _swiftEmptySetSingleton;
  }

  v30 = [a2 v4[91]];
  if (v30)
  {
    v38 = v30;
    v114 = v22;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_10000CDE4(&qword_10093CC38, &unk_10093F790, off_1008D4158, &protocol conformance descriptor for NSObject);
    v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v115 = v39;
    sub_1000F5104(&qword_100940908, &qword_1007A0230);
    sub_10000CB48(&qword_100940910, &qword_100940908, &qword_1007A0230, &protocol conformance descriptor for Set<A>);
    v40 = Sequence.elements<A>(ofType:)();
    v39, v41, v42, v43, v44, v45, v46, v47;
    v107 = v40;
    if (v40 >> 62)
    {
      goto LABEL_36;
    }

    v55 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v56 = v108;
    if (v55)
    {
      v57 = 0;
      v111 = v40 & 0xFFFFFFFFFFFFFF8;
      v112 = v40 & 0xC000000000000001;
      v110 = v40 + 32;
      v113 = v114 + 7;
      v109 = v55;
      while (1)
      {
        if (v112)
        {
          v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v57 >= *(v111 + 16))
          {
            goto LABEL_35;
          }

          v58 = *(v110 + 8 * v57);
        }

        v59 = v58;
        if (__OFADD__(v57++, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v40 = v107;
          v55 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_7;
        }

        v115 = 0;
        v61 = [v58 remObjectIDWithError:&v115];
        v62 = v115;
        if (!v61)
        {
          v92 = v115;
          v114, v93, v94, v95, v96, v97, v98, v99;
          v107, v100, v101, v102, v103, v104, v105, v106;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }

        v63 = v61;
        if ((v114 & 0xC000000000000001) == 0)
        {
          break;
        }

        v64 = v115;
        v65 = v63;
        v66 = __CocoaSet.contains(_:)();

        if ((v66 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_10:

        if (v57 == v109)
        {
          goto LABEL_31;
        }
      }

      if (v114[2])
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v67 = v114[5];
        v68 = v62;
        v69 = NSObject._rawHashValue(seed:)(v67);
        v70 = -1 << *(v114 + 32);
        v71 = v69 & ~v70;
        if ((*(v113 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
        {
          v72 = ~v70;
          do
          {
            v73 = *(v114[6] + 8 * v71);
            v74 = static NSObject.== infix(_:_:)();

            if (v74)
            {
              goto LABEL_10;
            }

            v71 = (v71 + 1) & v72;
          }

          while (((*(v113 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) != 0);
        }
      }

      else
      {
        v75 = v115;
      }

LABEL_26:
      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_100006654(v76, qword_100940648);
      v77 = v63;
      v78 = v56;
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v81 = 138412546;
        v83 = [v78 objectID];
        *(v81 + 4) = v83;
        *(v81 + 12) = 2112;
        *(v81 + 14) = v77;
        *v82 = v83;
        v82[1] = v63;
        v84 = v77;
        _os_log_impl(&_mh_execute_header, v79, v80, "Removing assignment from reminder {reminder.objectID: %@, assignment.objectID: %@}", v81, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        v56 = v108;
      }

      [v59 setReminder:0];
      [v59 setAssignee:0];
      [v59 setOriginator:0];
      goto LABEL_10;
    }

LABEL_31:
    v114, v48, v49, v50, v51, v52, v53, v54;
    v107, v85, v86, v87, v88, v89, v90, v91;
  }

  else
  {
    v22, v31, v32, v33, v34, v35, v36, v37;
  }
}

void sub_1002B75F0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v113 = a2;
  v8 = type metadata accessor for NSFastEnumerationIterator();
  v117 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8, v9).n128_u64[0];
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = a1;
  v13 = [a1 attachments];
  v14 = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v15 = v13;
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v121 = v14;
    sub_1000060C8(0, &qword_100940920, REMFileAttachment_ptr);
    sub_1000F5104(&qword_100940928, &unk_1007A0240);
    sub_10000CB48(&qword_100940930, &qword_100940928, &unk_1007A0240, &protocol conformance descriptor for [A]);
    v5 = Sequence.elements<A>(ofExactType:)();
    *&v121 = v14;
    sub_1000060C8(0, &qword_100940938, REMImageAttachment_ptr);
    v16 = Sequence.elements<A>(ofExactType:)();
    v4 = v16;
    if (v16 >> 62)
    {
      goto LABEL_61;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    *a4 = v17 != 0;
    *&v121 = v14;
    sub_1000060C8(0, &qword_100940940, REMURLAttachment_ptr);
    v18 = Sequence.elements<A>(ofExactType:)();
    type metadata accessor for REMFileAttachmentCDIngestor();
    v19 = swift_allocObject();
    sub_1005FD6B4(v5, v19);

    v5, v20, v21, v22, v23, v24, v25, v26;
    type metadata accessor for REMImageAttachmentCDIngestor();
    a4 = swift_allocObject();
    sub_1005FDEBC(v4, a4);

    v4, v27, v28, v29, v30, v31, v32, v33;
    type metadata accessor for REMURLAttachmentCDIngestor();
    v4 = swift_allocObject();
    sub_1005FE6C4(v18, v4);

    v18, v34, v35, v36, v37, v38, v39, v40;
    if (v14 >> 62)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v48 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v48)
    {
      *&v121 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v48 < 0)
      {
        __break(1u);
        return;
      }

      v4 = 0;
      v5 = v14 & 0xC000000000000001;
      do
      {
        if (v5)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v49 = *(v14 + 8 * v4 + 32);
        }

        v50 = v49;
        ++v4;
        a4 = [v49 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v48 != v4);
      v14, v51, v52, v53, v54, v55, v56, v57;
      v58 = v121;
      v14 = &_swiftEmptyArrayStorage;
    }

    else
    {
      v14, v41, v42, v43, v44, v45, v46, v47;
      v58 = &_swiftEmptyArrayStorage;
      v14 = &_swiftEmptyArrayStorage;
    }

    v118 = sub_1001A577C(v58);
    v58, v59, v60, v61, v62, v63, v64, v65;
  }

  else
  {
    v118 = _swiftEmptySetSingleton;
  }

  v66 = [v113 attachments];
  if (v66)
  {
    v123 = &_swiftEmptyArrayStorage;
    v106 = v66;
    NSOrderedSet.makeIterator()();
    sub_1002BB840(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v122)
    {
      v14 = &_swiftEmptyArrayStorage;
      v4 = &unk_100939E30;
      v5 = &type metadata for Any;
      do
      {
        sub_100005EE0(&v121, &v119);
        sub_1000060C8(0, &unk_100939E30, off_1008D4160);
        if (swift_dynamicCast())
        {
          a4 = v120;
          if (v120)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v14 = v123;
          }
        }

        dispatch thunk of IteratorProtocol.next()();
      }

      while (v122);
    }

    (*(v117 + 1))(v12, v8);
    if (v14 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v8 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_29:
        v12 = 0;
        v116 = v14 & 0xC000000000000001;
        v109 = v14 & 0xFFFFFFFFFFFFFF8;
        v108 = (v14 + 32);
        v114 = v118 & 0xC000000000000001;
        v82 = v118 & 0xFFFFFFFFFFFFFF8;
        if (v118 < 0)
        {
          v82 = v118;
        }

        v111 = v82;
        v117 = (v118 + 56);
        *&v81 = 138412546;
        v110 = v81;
        v107 = v14;
        v115 = v8;
        while (1)
        {
          if (v116)
          {
            v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *(v109 + 16))
            {
              goto LABEL_60;
            }

            v83 = *&v108[8 * v12];
          }

          v4 = v83;
          if (__OFADD__(v12++, 1))
          {
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            v17 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v85 = [v83 remObjectID];
          if (!v85)
          {
            if (qword_100935E18 != -1)
            {
              swift_once();
            }

            v89 = type metadata accessor for Logger();
            sub_100006654(v89, qword_100940648);
            v5 = v113;
            v4 = v4;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              a4 = swift_slowAlloc();
              *v92 = v110;
              v93 = [v5 objectID];
              *(v92 + 4) = v93;
              *a4 = v93;
              *(v92 + 12) = 2112;
              v94 = [v4 objectID];
              *(v92 + 14) = v94;
              a4[1] = v94;
              _os_log_impl(&_mh_execute_header, v90, v91, "Can't merge attachment for reminder because cdAttachment.remObjectID is nil {cdReminder.objectID: %@, cdAttachment.objectID: %@}", v92, 0x16u);
              sub_1000F5104(&unk_100938E70, &unk_100797230);
              swift_arrayDestroy();

              v87 = v90;
            }

            else
            {
              v87 = v4;
              v4 = v90;
            }

            goto LABEL_34;
          }

          v86 = v85;
          if (!v114)
          {
            break;
          }

          v87 = v85;
          v88 = __CocoaSet.contains(_:)();

          if ((v88 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_33:
          v8 = v115;
LABEL_34:

          if (v12 == v8)
          {
            goto LABEL_64;
          }
        }

        if (*(v118 + 16))
        {
          sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v95 = v118;
          v96 = NSObject._rawHashValue(seed:)(*(v118 + 40));
          v97 = -1 << *(v95 + 32);
          v98 = v96 & ~v97;
          if ((*&v117[(v98 >> 3) & 0xFFFFFFFFFFFFFF8] >> v98))
          {
            v5 = ~v97;
            while (1)
            {
              a4 = *(*(v118 + 48) + 8 * v98);
              v99 = static NSObject.== infix(_:_:)();

              if (v99)
              {
                break;
              }

              v98 = (v98 + 1) & v5;
              if (((*&v117[(v98 >> 3) & 0xFFFFFFFFFFFFFF8] >> v98) & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            v87 = v86;
            goto LABEL_33;
          }
        }

LABEL_53:
        if (qword_100935E18 != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        sub_100006654(v100, qword_100940648);
        v87 = v86;
        a4 = v112;
        v101 = Logger.logObject.getter();
        v5 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v101, v5))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *v102 = v110;
          v104 = [a4 objectID];
          *(v102 + 4) = v104;
          *(v102 + 12) = 2112;
          *(v102 + 14) = v87;
          *v103 = v104;
          v103[1] = v86;
          v105 = v87;
          _os_log_impl(&_mh_execute_header, v101, v5, "Removing attachment from reminder {reminder.objectID: %@, attachment.objectID: %@}", v102, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          v14 = v107;
        }

        [v4 setReminder:0];
        goto LABEL_33;
      }
    }

LABEL_64:
    v118, v74, v75, v76, v77, v78, v79, v80;
  }

  else
  {
    v14 = v118;
  }

  v14, v67, v68, v69, v70, v71, v72, v73;
}

void sub_1002B8044(void *a1, void *a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v8 = a1;
  v9 = [a1 hashtags];
  v114 = v8;
  if (!v9)
  {
    v126 = _swiftEmptySetSingleton;
    goto LABEL_30;
  }

  v10 = v9;
  v115 = a4;
  v116 = a5;
  v118 = a2;
  v11 = sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
  sub_10000CDE4(&qword_10093AA28, &unk_10093F600, REMHashtag_ptr, &protocol conformance descriptor for NSObject);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_1002785FC(v12);
  v14 = [v8 accountID];
  v15 = [v8 objectID];
  type metadata accessor for REMHashtagCDIngestor();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  sub_1005F9680(v13, v16);

  sub_1002AD784(v12, sub_100411D6C, &qword_10093B7C0, &qword_1007A0250);
  v18 = v17;
  v126 = sub_1001A577C(v17);
  v18, v19, v20, v21, v22, v23, v24, v25;
  if ((v12 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    v26 = v11;
    Set.Iterator.init(_cocoa:)();
    v12 = v127[1];
    v27 = v127[2];
    v28 = v127[3];
    v29 = v127[4];
    v30 = v127[5];
  }

  else
  {
    v29 = 0;
    v31 = -1 << *(v12 + 32);
    v27 = v12 + 56;
    v28 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = (v33 & *(v12 + 56));
    v26 = v11;
  }

  v120 = 0;
  v122 = 0;
  v113 = 0;
  v34 = (v28 + 64) >> 6;
  v124 = v27;
LABEL_10:
  while (2)
  {
    v35 = v29;
    v36 = v30;
    while (1)
    {
      if (v12 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          v8 = v114;
          goto LABEL_29;
        }

        swift_dynamicCast();
        v40 = v127[0];
        v29 = v35;
        v39 = v36;
        if (!v127[0])
        {
LABEL_61:
          v8 = v114;
          goto LABEL_29;
        }
      }

      else
      {
        v37 = v35;
        v38 = v36;
        v29 = v35;
        v8 = v114;
        if (!v36)
        {
          while (1)
          {
            v29 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            if (v29 >= v34)
            {
              goto LABEL_29;
            }

            v38 = *(v27 + 8 * v29);
            ++v37;
            if (v38)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

LABEL_16:
        v39 = (v38 - 1) & v38;
        v40 = *(*(v12 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v38)))));
        if (!v40)
        {
          goto LABEL_61;
        }
      }

      v8 = v12;
      v41 = v26;
      v42 = [v40 type];

      if (!v42)
      {
        break;
      }

      v35 = v29;
      v30 = v39;
      v36 = v39;
      v43 = v42 == 1;
      v26 = v41;
      v12 = v8;
      v27 = v124;
      if (v43)
      {
        v44 = __OFADD__(v122++, 1);
        if (v44)
        {
          __break(1u);
        }

        goto LABEL_10;
      }
    }

    v44 = __OFADD__(v113, 1);
    v120 = ++v113;
    v26 = v41;
    v12 = v8;
    v30 = v39;
    v27 = v124;
    if (!v44)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_29:
  sub_10001B860(v12);
  *v115 = v120;
  *v116 = v122;
  a2 = v118;
LABEL_30:
  v45 = [a2 hashtags];
  if (v45)
  {
    v53 = v45;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10000CDE4(&qword_10093B280, &qword_10093CFE0, off_1008D4190, &protocol conformance descriptor for NSObject);
    v54 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v127[0] = v54;
    sub_1000F5104(&qword_10093B298, &qword_100798898);
    sub_10000CB48(&qword_10093B2A0, &qword_10093B298, &qword_100798898, &protocol conformance descriptor for Set<A>);
    v27 = Sequence.elements<A>(ofType:)();
    v54, v55, v56, v57, v58, v59, v60, v61;
    if (!(v27 >> 62))
    {
      v69 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_33;
    }

LABEL_66:
    v69 = _CocoaArrayWrapper.endIndex.getter();
LABEL_33:
    v112 = v27;
    if (v69)
    {
      v70 = 0;
      v121 = v27 & 0xFFFFFFFFFFFFFF8;
      v123 = v27 & 0xC000000000000001;
      v119 = v27 + 32;
      v125 = v126 + 7;
      v117 = v69;
      while (1)
      {
        if (v123)
        {
          v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v70 >= *(v121 + 16))
          {
            goto LABEL_65;
          }

          v71 = *(v119 + 8 * v70);
        }

        v27 = v71;
        v44 = __OFADD__(v70++, 1);
        if (v44)
        {
          goto LABEL_64;
        }

        v127[0] = 0;
        v72 = [v71 remObjectIDWithError:v127];
        v73 = v127[0];
        if (!v72)
        {
          v97 = v127[0];
          v126, v98, v99, v100, v101, v102, v103, v104;
          v112, v105, v106, v107, v108, v109, v110, v111;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }

        v74 = v72;
        if ((v126 & 0xC000000000000001) == 0)
        {
          break;
        }

        v75 = v127[0];
        v76 = v74;
        v77 = __CocoaSet.contains(_:)();

        if ((v77 & 1) == 0)
        {
          goto LABEL_52;
        }

LABEL_36:

        if (v70 == v117)
        {
          goto LABEL_57;
        }
      }

      if (v126[2])
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v78 = v126[5];
        v79 = v73;
        v80 = NSObject._rawHashValue(seed:)(v78);
        v81 = -1 << *(v126 + 32);
        v82 = v80 & ~v81;
        if ((*(v125 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
        {
          v83 = ~v81;
          do
          {
            v84 = *(v126[6] + 8 * v82);
            v85 = static NSObject.== infix(_:_:)();

            if (v85)
            {
              goto LABEL_36;
            }

            v82 = (v82 + 1) & v83;
          }

          while (((*(v125 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) != 0);
        }
      }

      else
      {
        v86 = v127[0];
      }

LABEL_52:
      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_100006654(v87, qword_100940648);
      v88 = v74;
      v89 = v8;
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 138412546;
        v94 = [v89 objectID];
        *(v92 + 4) = v94;
        *(v92 + 12) = 2112;
        *(v92 + 14) = v88;
        *v93 = v94;
        v93[1] = v74;
        v95 = v88;
        _os_log_impl(&_mh_execute_header, v90, v91, "Removing hashtag from reminder {reminder.objectID: %@, hashtag.objectID: %@}", v92, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        v8 = v114;
      }

      [v27 setReminder:0];
      goto LABEL_36;
    }

LABEL_57:
    v126, v62, v63, v64, v65, v66, v67, v68;
    v96 = v112;
  }

  else
  {
    v96 = v126;
  }

  v96, v46, v47, v48, v49, v50, v51, v52;
}

void sub_1002B88D8(void *a1, void *a2)
{
  v107 = a2;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &selRef_setPublicLinkLastModifiedDate_;
  v106 = a1;
  v10 = [a1 recurrenceRules];
  if (!v10)
  {
    v111 = _swiftEmptySetSingleton;
    goto LABEL_15;
  }

  v11 = v10;
  sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for REMRecurrenceRuleCDIngestor();
  v13 = swift_allocObject();
  sub_1005FEECC(v12, v13);

  if (v12 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_4:
      *&v114 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v21 < 0)
      {
        __break(1u);
        return;
      }

      v111 = v4;
      v22 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v23 = *(v12 + 8 * v22 + 32);
        }

        v24 = v23;
        ++v22;
        v25 = [v23 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v21 != v22);
      v12, v26, v27, v28, v29, v30, v31, v32;
      v33 = v114;
      v4 = v111;
      v9 = &selRef_setPublicLinkLastModifiedDate_;
      goto LABEL_14;
    }
  }

  v12, v14, v15, v16, v17, v18, v19, v20;
  v33 = &_swiftEmptyArrayStorage;
LABEL_14:
  v111 = sub_1001A577C(v33);
  v33, v34, v35, v36, v37, v38, v39, v40;
LABEL_15:
  v41 = [v107 v9[270]];
  if (v41)
  {
    v116 = &_swiftEmptyArrayStorage;
    v100 = v41;
    NSOrderedSet.makeIterator()();
    sub_1002BB840(&qword_10093F7A0, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v115)
    {
      v101 = &_swiftEmptyArrayStorage;
      do
      {
        sub_100005EE0(&v114, &v112);
        sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
        if ((swift_dynamicCast() & 1) != 0 && v113)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v101 = v116;
        }

        dispatch thunk of IteratorProtocol.next()();
      }

      while (v115);
    }

    else
    {
      v101 = &_swiftEmptyArrayStorage;
    }

    (*(v4 + 8))(v8, v3);
    v58 = v101;
    if (v101 >> 62)
    {
      goto LABEL_62;
    }

    for (i = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v60 = 0;
      v102 = &v58->clientIdentity[16];
      v103 = v58 & 0xFFFFFFFFFFFFFF8;
      v108 = v111 & 0xC000000000000001;
      v109 = v58 & 0xC000000000000001;
      v61 = v111 & 0xFFFFFFFFFFFFFF8;
      if (v111 < 0)
      {
        v61 = v111;
      }

      v105 = v61;
      v110 = (v111 + 56);
      *&v57 = 138412546;
      v104 = v57;
      while (1)
      {
        if (v109)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v60 >= *(v103 + 16))
          {
            goto LABEL_61;
          }

          v62 = *&v102[8 * v60];
        }

        v63 = v62;
        if (__OFADD__(v60++, 1))
        {
          break;
        }

        v65 = [v62 remObjectID];
        if (!v65)
        {
          if (qword_100935E18 != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for Logger();
          sub_100006654(v70, qword_100940648);
          v71 = v107;
          v63 = v63;
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *v74 = v104;
            v76 = [v71 objectID];
            *(v74 + 4) = v76;
            *v75 = v76;
            *(v74 + 12) = 2112;
            v77 = [v63 objectID];
            *(v74 + 14) = v77;
            v75[1] = v77;
            _os_log_impl(&_mh_execute_header, v72, v73, "Can't merge recurrence rule for reminder because cdRecurrenceRule.remObjectID is nil {cdReminder.objectID: %@, cdRecurrenceRule.objectID: %@}", v74, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v68 = v72;
          }

          else
          {
            v68 = v63;
            v63 = v72;
          }

          goto LABEL_29;
        }

        v66 = v65;
        v67 = i;
        if (!v108)
        {
          if (*(v111 + 16))
          {
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v78 = v111;
            v79 = NSObject._rawHashValue(seed:)(*(v111 + 40));
            v80 = -1 << *(v78 + 32);
            v81 = v79 & ~v80;
            if ((*&v110[(v81 >> 3) & 0xFFFFFFFFFFFFFF8] >> v81))
            {
              v82 = ~v80;
              while (1)
              {
                v83 = *(*(v111 + 48) + 8 * v81);
                v84 = static NSObject.== infix(_:_:)();

                if (v84)
                {
                  break;
                }

                v81 = (v81 + 1) & v82;
                if (((*&v110[(v81 >> 3) & 0xFFFFFFFFFFFFFF8] >> v81) & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

              v68 = v66;
              goto LABEL_28;
            }
          }

LABEL_48:
          if (qword_100935E18 != -1)
          {
            swift_once();
          }

          v85 = type metadata accessor for Logger();
          sub_100006654(v85, qword_100940648);
          v68 = v66;
          v86 = v106;
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            *v89 = v104;
            v91 = [v86 objectID];
            *(v89 + 4) = v91;
            *(v89 + 12) = 2112;
            *(v89 + 14) = v68;
            *v90 = v91;
            v90[1] = v66;
            v92 = v68;
            _os_log_impl(&_mh_execute_header, v87, v88, "Removing recurrenceRule from reminder {reminder.objectID: %@, recurrenceRule.objectID: %@}", v89, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v58 = v101;
          }

          [v63 setReminder:0];
          goto LABEL_28;
        }

        v68 = v65;
        v69 = __CocoaSet.contains(_:)();

        if ((v69 & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_28:
        i = v67;
LABEL_29:

        if (v60 == i)
        {
          goto LABEL_63;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      ;
    }

LABEL_63:
    v111, v50, v51, v52, v53, v54, v55, v56;

    v58, v93, v94, v95, v96, v97, v98, v99;
  }

  else
  {
    v49 = v111;

    v49, v42, v43, v44, v45, v46, v47, v48;
  }
}

void sub_1002B91C0(void *a1, void *a2)
{
  v5 = sub_1002AFCFC();
  if (!v2)
  {
    v6 = v5;
    v7 = [a1 dueDateDeltaAlertsToUpsert];
    if (v7)
    {
      v8 = v7;
      sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    v10 = [a1 dueDateDeltaAlertIdentifiersToDelete];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for UUID();
      sub_1002BB840(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1002B203C(v9, v12, v6);
    v15 = v14;
    v6, v14, v16, v17, v18, v19, v20, v21;
    v12, v22, v23, v24, v25, v26, v27, v28;
    v9, v29, v30, v31, v32, v33, v34, v35;
    if (v13)
    {
      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100006654(v43, qword_100940648);
      v44 = a2;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v98 = v46;
        v47 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v99 = v97;
        *v47 = 136446210;
        v48 = [v44 remObjectID];
        if (v48)
        {
          v49 = v48;
          v50 = [v48 description];

          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;
        }

        else
        {
          v51 = 7104878;
          v53 = 0xE300000000000000;
        }

        v66 = sub_10000668C(v51, v53, &v99);
        v53, v67, v68, v69, v70, v71, v72, v73;
        *(v47 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v45, v98, "REMReminderStorageCDIngestor.mergeDueDateDeltaAlerts: Setting 'cdReminder.dueDateDeltaAlertsData' {reminderID: %{public}s}", v47, 0xCu);
        sub_10000607C(v97);
      }

      sub_1002AFE68(v74);
      v15, v75, v76, v77, v78, v79, v80, v81;
      sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v15, v82, v83, v84, v85, v86, v87, v88;
      [a1 setFetchedDueDateDeltaAlerts:isa];
    }

    else
    {
      v15, v36, v37, v38, v39, v40, v41, v42;
      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100006654(v54, qword_100940648);
      v55 = a2;
      isa = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(isa, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v99 = v59;
        *v58 = 136315138;
        v60 = [v55 remObjectID];
        if (v60)
        {
          v61 = v60;
          v62 = [v60 description];

          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v64;
        }

        else
        {
          v63 = 7104878;
          v65 = 0xE300000000000000;
        }

        v89 = sub_10000668C(v63, v65, &v99);
        v65, v90, v91, v92, v93, v94, v95, v96;
        *(v58 + 4) = v89;
        _os_log_impl(&_mh_execute_header, isa, v57, "REMReminderStorageCDIngestor.mergeDueDateDeltaAlerts: Noop to 'cdReminder.dueDateDeltaAlertsData' {reminderID: %s}", v58, 0xCu);
        sub_10000607C(v59);
      }
    }
  }
}

void sub_1002B96C4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v457 = a4;
  v8 = type metadata accessor for Calendar();
  v444 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v443 = &v415 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = type metadata accessor for URL();
  v11 = *(v432 - 8);
  __chkstk_darwin(v432, v12);
  v431 = &v415 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v445 = type metadata accessor for DateComponents();
  v450 = *(v445 - 8);
  __chkstk_darwin(v445, v14);
  v442 = &v415 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v430 = &v415 - v18;
  __chkstk_darwin(v19, v20);
  v429 = &v415 - v21;
  v435 = type metadata accessor for CharacterSet();
  v22 = *(v435 - 8);
  __chkstk_darwin(v435, v23);
  v434 = &v415 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v448 = type metadata accessor for Date();
  v449 = *(v448 - 8);
  __chkstk_darwin(v448, v25);
  v441 = &v415 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v428 = &v415 - v29;
  __chkstk_darwin(v30, v31);
  v427 = &v415 - v32;
  __chkstk_darwin(v33, v34);
  v426 = &v415 - v35;
  __chkstk_darwin(v36, v37);
  v425 = &v415 - v38;
  __chkstk_darwin(v39, v40);
  v438 = &v415 - v41;
  v447 = type metadata accessor for UUID();
  v42 = *(v447 - 8);
  __chkstk_darwin(v447, v43);
  v424 = &v415 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v47 = __chkstk_darwin(v45, v46).n128_u64[0];
  v440 = &v415 - v48;
  v453 = a2;
  v452 = [a2 createResolutionTokenMapIfNecessary];
  v455 = a1;
  v49 = [a1 resolutionTokenMap];
  if (!v49)
  {
    if (qword_100935E18 == -1)
    {
LABEL_153:
      v308 = type metadata accessor for Logger();
      sub_100006654(v308, qword_100940648);
      v309 = v455;

      v310 = Logger.logObject.getter();
      v311 = static os_log_type_t.fault.getter();
      a3, v312, v313, v314, v315, v316, v317, v318;

      if (os_log_type_enabled(v310, v311))
      {
        v319 = swift_slowAlloc();
        v320 = swift_slowAlloc();
        v321 = swift_slowAlloc();
        v458[0] = v321;
        *v319 = 138543618;
        v322 = [v309 objectID];
        *(v319 + 4) = v322;
        *v320 = v322;
        *(v319 + 12) = 2082;
        v323 = *(a3 + 16);
        v324 = &_swiftEmptyArrayStorage;
        if (v323)
        {
          v456 = v320;
          v457 = v321;
          v461 = &_swiftEmptyArrayStorage;
          sub_100026EF4(0, v323, 0);
          v324 = v461;
          v325 = (a3 + 32);
          v326 = *v461->clientIdentity;
          v327 = 16 * v326;
          do
          {
            v328 = *v325++;
            v329 = sub_1002ADDBC(v328);
            v461 = v324;
            v331 = *&v324->clientIdentity[8];
            v332 = v326 + 1;
            if (v326 >= v331 >> 1)
            {
              v455 = v329;
              v334 = v330;
              sub_100026EF4((v331 > 1), v332, 1);
              v330 = v334;
              v329 = v455;
              v324 = v461;
            }

            *v324->clientIdentity = v332;
            v333 = v324 + v327;
            *(v333 + 4) = v329;
            *(v333 + 5) = v330;
            v327 += 16;
            v326 = v332;
            --v323;
          }

          while (v323);
          v320 = v456;
          v321 = v457;
        }

        v395 = Array.description.getter();
        v397 = v396;
        v324, v396, v398, v399, v400, v401, v402, v403;
        v404 = sub_10000668C(v395, v397, v458);
        v397, v405, v406, v407, v408, v409, v410, v411;
        *(v319 + 14) = v404;
        _os_log_impl(&_mh_execute_header, v310, v311, "REMReminderStorageCDIngestor: merge(storage:into cdReminder:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v319, 0x16u);
        sub_1000050A4(v320, &unk_100938E70, &unk_100797230);

        sub_10000607C(v321);
      }

      v412 = objc_opt_self();
      sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v414 = String._bridgeToObjectiveC()();
      [v412 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v414];

      swift_willThrow();
      v354 = &v477;
LABEL_170:

      return;
    }

LABEL_174:
    swift_once();
    goto LABEL_153;
  }

  v433 = v8;
  v456 = v4;
  v437 = v49;
  v454 = sub_1006954B4(v49, a3);
  *(&v476 + 1) = 0;
  v460 = 0;
  v461 = 0;
  v462 = 1;
  LOBYTE(v476) = 0;
  v58 = *(a3 + 16);
  if (!v58)
  {
    v423 = 0;
    v439 = 0xE000000000000000;
    goto LABEL_165;
  }

  v59 = 0;
  v423 = 0;
  v60 = 0;
  v419 = (v22 + 8);
  v420 = (v449 + 8);
  v436 = 0x80000001007E8C60;
  v422 = (v42 + 8);
  v61 = (v11 + 8);
  v62 = a3 + 32;
  v416 = v61;
  v417 = (v450 + 8);
  v439 = 0xE000000000000000;
  *&v57 = 136315138;
  v421 = v57;
  v63 = v455;
  v64 = v453;
  v446 = v58;
  v451 = a3 + 32;
  while (2)
  {
    v475 = v59;
    v65 = v60;
LABEL_8:
    if (v65 >= v58)
    {
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v60 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      goto LABEL_173;
    }

    a3 = *(v62 + v65);
    switch(*(v62 + v65))
    {
      case 0:
        v67 = [v63 objectID];
        v68 = [v67 uuid];

        a3 = v63;
        v69 = v440;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        v70 = v69;
        v63 = a3;
        v62 = v451;
        (*v422)(v70, v447);
        [v64 setIdentifier:isa];
        goto LABEL_6;
      case 1:
        isa = [v63 daCalendarItemUniqueIdentifier];
        [v64 setDaCalendarItemUniqueIdentifier:isa];
        goto LABEL_6;
      case 2:
        isa = [v63 externalIdentifier];
        [v64 setExternalIdentifier:isa];
        goto LABEL_6;
      case 3:
        isa = [v63 externalModificationTag];
        [v64 setExternalModificationTag:isa];
        goto LABEL_6;
      case 4:
        isa = [v63 daSyncToken];
        [v64 setDaSyncToken:isa];
        goto LABEL_6;
      case 5:
        isa = [v63 daPushKey];
        [v64 setDaPushKey:isa];
        goto LABEL_6;
      case 6:
        if (qword_100935E28 != -1)
        {
          swift_once();
        }

        v126 = qword_100974D20;
        if (*(qword_100974D20 + 16))
        {
          v127 = v436;
          v418 = sub_100005F4C(0xD000000000000017, v436);
          a3 = v128;
          v127, v128, v129, v130, v131, v132, v133, v134;
          if (a3)
          {
            v135 = *(*(v126 + 56) + 16 * v418 + 8);

            goto LABEL_73;
          }
        }

        else
        {
          v436, v50, v51, v52, v53, v54, v55, v56;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v196 = type metadata accessor for Logger();
        sub_100006654(v196, qword_100946C50);
        v197 = Logger.logObject.getter();
        v198 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v197, v198))
        {
          a3 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          v458[0] = v199;
          *a3 = v421;
          v200 = v436;
          v201 = sub_10000668C(0xD000000000000017, v436, v458);
          v200, v202, v203, v204, v205, v206, v207, v208;
          *(a3 + 4) = v201;
          _os_log_impl(&_mh_execute_header, v197, v198, "Unknown ingestable key {key: %s}", a3, 0xCu);
          sub_10000607C(v199);
          v64 = v453;

          v135 = v200;
          v63 = v455;
        }

        else
        {

          v135 = v436;
        }

LABEL_73:
        v209 = String._bridgeToObjectiveC()();
        v135, v210, v211, v212, v213, v214, v215, v216;
        v217 = [v452 mergeWithMap:v454 forKey:v209];

        if (v217)
        {
          [v64 setMinimumSupportedVersion:{objc_msgSend(v63, "minimumSupportedVersion")}];
        }

LABEL_85:
        v62 = v451;
        goto LABEL_7;
      case 7:
      case 0x14:
      case 0x1A:
        goto LABEL_7;
      case 8:
        v149 = [v63 titleDocument];
        v150 = sub_1006936C4(8);
        v152 = v151;
        v153 = sub_1002AF880(v149, v150, v151, v454, *(v457 + 16));
        v155 = v154;
        a3 = v156;
        v158 = v157;

        v152, v159, v160, v161, v162, v163, v164, v165;
        if (v158 == 1)
        {
          goto LABEL_45;
        }

        if (v155 >> 60 == 15)
        {
          v171 = 0;
        }

        else
        {
          sub_100029344(v153, v155);
          v171 = Data._bridgeToObjectiveC()().super.isa;
          sub_100031A14(v153, v155);
        }

        v227 = v453;
        [v453 setTitleDocument:v171];

        if (v158)
        {
          v228 = String._bridgeToObjectiveC()();
          [v227 setTitle:v228];

          v458[0] = a3;
          v458[1] = v158;
          v229 = v434;
          static CharacterSet.whitespacesAndNewlines.getter();
          sub_10013BCF4();
          v230 = StringProtocol.trimmingCharacters(in:)();
          v232 = v231;
          sub_100031A14(v153, v155);
          (*v419)(v229, v435);
          v232, v233, v234, v235, v236, v237, v238, v239;
          v247 = (v232 >> 56) & 0xF;
          if ((v232 & 0x2000000000000000) == 0)
          {
            v247 = v230 & 0xFFFFFFFFFFFFLL;
          }

          if (v247)
          {
            v439, v240, v241, v242, v243, v244, v245, v246;
            v423 = a3;
            v439 = v158;
          }

          else
          {
            v158, v240, v241, v242, v243, v244, v245, v246;
          }

          v64 = v453;
        }

        else
        {
          sub_100031A14(v153, v155);
          v64 = v227;
        }

        v58 = v446;
        v62 = v451;
        v63 = v455;
        goto LABEL_7;
      case 0xF:
        sub_1002B88D8(v63, v64);
        goto LABEL_7;
      case 0x15:
        v102 = [v63 notesDocument];
        v103 = sub_1006936C4(21);
        v105 = v104;
        v106 = sub_1002AF880(v102, v103, v104, v454, *(v457 + 16));
        v108 = v107;
        v110 = v109;
        a3 = v111;

        v105, v112, v113, v114, v115, v116, v117, v118;
        if (a3 == 1)
        {
LABEL_45:
          v63 = v455;
          v64 = v453;
          v58 = v446;
        }

        else
        {
          v418 = v110;
          if (v108 >> 60 == 15)
          {
            v119 = 0;
          }

          else
          {
            sub_100029344(v106, v108);
            v119 = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v106, v108);
          }

          v63 = v455;
          v58 = v446;
          v64 = v453;
          [v453 setNotesDocument:v119];

          if (a3)
          {
            v218 = v63;
            v219 = String._bridgeToObjectiveC()();
            a3, v220, v221, v222, v223, v224, v225, v226;
            [v64 setNotes:v219];
            sub_100031A14(v106, v108);

            v63 = v218;
          }

          else
          {
            sub_100031A14(v106, v108);
          }
        }

        goto LABEL_85;
      case 0x16:
        sub_1002B75F0(v63, v64, v457, &v476);
        goto LABEL_7;
      case 0x17:
        v136 = v456;
        sub_1002B6654(v63, v64, v457, &v476 + 2, &v476 + 1, &v461);
        v456 = v136;
        if (v136)
        {
          goto LABEL_166;
        }

        goto LABEL_7;
      case 0x18:
        v137 = v456;
        sub_1002B6F1C(v63, v64);
        v456 = v137;
        if (v137)
        {
          goto LABEL_166;
        }

        goto LABEL_7;
      case 0x19:
        v166 = v456;
        sub_1002B8044(v63, v64, v457, &v459, &v460);
        v456 = v166;
        if (v166)
        {
          goto LABEL_166;
        }

        goto LABEL_7;
      case 0x1B:
        v138 = [v63 dueDateDeltaAlertsToUpsert];
        if (!v138)
        {
          goto LABEL_7;
        }

        v139 = v138;
        a3 = v62;
        sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
        v140 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v148 = v140 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v140, v141, v142, v143, v144, v145, v146, v147;
        v62 = a3;
        if (!v148)
        {
          goto LABEL_7;
        }

        v59 = 1;
        if (v60 == v58)
        {
          goto LABEL_161;
        }

        continue;
      case 0x1C:
        v71 = [v63 dueDateDeltaAlertIdentifiersToDelete];
        if (!v71)
        {
          goto LABEL_7;
        }

        v72 = v71;
        a3 = v62;
        sub_1002BB840(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v73 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = *(v73 + 16);
        v73, v75, v76, v77, v78, v79, v80, v81;
        if (v74)
        {
          v59 = 1;
          v62 = a3;
          if (v60 == v58)
          {
LABEL_161:
            sub_1006936C4(26);
            v336 = v335;
            v337 = String._bridgeToObjectiveC()();
            v336, v338, v339, v340, v341, v342, v343, v344;
            LODWORD(v336) = [v452 mergeWithMap:v454 forKey:v337];

            if (!v336)
            {
              goto LABEL_165;
            }

            v345 = objc_autoreleasePoolPush();
            v346 = v456;
            sub_1002B91C0(v63, v64);
            if (!v346)
            {
              v456 = 0;
              objc_autoreleasePoolPop(v345);
              goto LABEL_165;
            }

            v439, v347, v348, v349, v350, v351, v352, v353;
            objc_autoreleasePoolPop(v345);

            v354 = &v478;
            goto LABEL_170;
          }

          continue;
        }

        v62 = a3;
LABEL_7:
        ++v65;
        if (v60 != v58)
        {
          goto LABEL_8;
        }

        if (v475)
        {
          goto LABEL_161;
        }

LABEL_165:
        v355 = v443;
        static Calendar.current.getter();
        sub_1000F5104(&qword_100940900, &unk_1007A0220);
        v356 = type metadata accessor for Calendar.Component();
        v357 = *(v356 - 8);
        v358 = *(v357 + 72);
        v359 = (*(v357 + 80) + 32) & ~*(v357 + 80);
        v360 = swift_allocObject();
        *(v360 + 16) = xmmword_100791340;
        v361 = v360 + v359;
        v362 = *(v357 + 104);
        v362(v361, enum case for Calendar.Component.hour(_:), v356);
        v362(v361 + v358, enum case for Calendar.Component.minute(_:), v356);
        v363 = sub_1001A653C(v360);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v364 = v441;
        Date.init()();
        v365 = v442;
        Calendar.dateComponents(_:from:)();
        v363, v366, v367, v368, v369, v370, v371, v372;
        (*(v449 + 8))(v364, v448);
        (*(v444 + 8))(v355, v433);
        v373 = DateComponents.fifteenMinuteBin.getter();
        LOBYTE(v360) = v374;
        (*(v450 + 8))(v365, v445);
        if (v360)
        {
LABEL_166:

          v439, v375, v376, v377, v378, v379, v380, v381;
        }

        else
        {
          v382 = v455;
          v383 = [v455 isRecurrent];
          v384 = [v382 flagged];
          v385 = [v382 priority];
          LOBYTE(v458[0]) = v462;
          v386 = v439;
          v463[0] = v423;
          v463[1] = v439;
          v464 = v383;
          v465 = v384;
          v466 = v385;
          v467 = BYTE2(v476);
          v468 = v373;
          v469 = BYTE1(v476);
          v470 = v461;
          v471 = v462;
          v472 = v476;
          v473 = v460;
          v474 = v460;
          __chkstk_darwin(v385, v387);
          *(&v415 - 2) = v463;
          static os_log_type_t.info.getter();
          measureTimeElapsed(_:level:block:)();
          v386, v388, v389, v390, v391, v392, v393, v394;
        }

        return;
      case 0x24:
        v120 = [v63 siriFoundInAppsData];
        if (v120)
        {
          v121 = v120;
          v122 = v62;
          v123 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          a3 = v124;

          isa = Data._bridgeToObjectiveC()().super.isa;
          v125 = v123;
          v62 = v122;
          sub_10001BBA0(v125, a3);
        }

        else
        {
          isa = 0;
        }

        [v64 setSiriFoundInAppsData:isa];
        goto LABEL_6;
      case 0x25:
        v167 = [v63 lastBannerPresentationDate];
        if (v167)
        {
          a3 = v62;
          v168 = v438;
          v169 = v167;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          isa = Date._bridgeToObjectiveC()().super.isa;
          v170 = v168;
          v62 = a3;
          (*v420)(v170, v448);
        }

        else
        {
          isa = 0;
        }

        [v64 setLastBannerPresentationDate:isa];
LABEL_6:

        goto LABEL_7;
      default:
        if (qword_100935E28 != -1)
        {
          swift_once();
        }

        v82 = qword_100974D20;
        v83 = sub_1002ADDBC(a3);
        v91 = v83;
        v92 = v84;
        if (*(v82 + 16))
        {
          v93 = sub_100005F4C(v83, v84);
          v95 = v94;
          v92, v94, v96, v97, v98, v99, v100, v101;
          if (v95)
          {
            v92 = *(*(v82 + 56) + 16 * v93 + 8);

            goto LABEL_59;
          }
        }

        else
        {
          v84, v84, v85, v86, v87, v88, v89, v90;
        }

        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v172 = type metadata accessor for Logger();
        sub_100006654(v172, qword_100946C50);
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v173, v174))
        {
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v458[0] = v176;
          *v175 = v421;
          v177 = sub_10000668C(v91, v92, v458);
          v418 = v91;
          v178 = v177;
          v92, v179, v180, v181, v182, v183, v184, v185;
          *(v175 + 4) = v178;
          _os_log_impl(&_mh_execute_header, v173, v174, "Unknown ingestable key {key: %s}", v175, 0xCu);
          sub_10000607C(v176);
          v58 = v446;
        }

LABEL_59:
        v186 = v451;
        v187 = String._bridgeToObjectiveC()();
        v92, v188, v189, v190, v191, v192, v193, v194;
        v195 = [v452 mergeWithMap:v454 forKey:v187];

        if (v195)
        {
          v64 = v453;
          v63 = v455;
          v62 = v186;
          switch(a3)
          {
            case 9:
              [v453 setCompleted:{objc_msgSend(v455, "isCompleted")}];
              break;
            case 10:
              v269 = [v455 completionDate];
              if (v269)
              {
                v270 = v425;
                v271 = v269;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                v272 = v270;
                v62 = v186;
                (*v420)(v272, v448);
              }

              else
              {
                isa = 0;
              }

              [v64 setCompletionDate:isa];
              goto LABEL_6;
            case 11:
              v281 = [v455 priority];
              if (v281 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v282 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v282 = v281;
              }

              [v64 setPriority:v282];
              break;
            case 12:
              [v453 setFlagged:{objc_msgSend(v455, "flagged")}];
              break;
            case 13:
              v273 = [v455 creationDate];
              if (v273)
              {
                v274 = v426;
                v275 = v273;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                v276 = v274;
                v62 = v186;
                (*v420)(v276, v448);
              }

              else
              {
                isa = 0;
              }

              [v64 setCreationDate:isa];
              goto LABEL_6;
            case 14:
              v277 = [v455 lastModifiedDate];
              if (v277)
              {
                v278 = v427;
                v279 = v277;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                v280 = v278;
                v62 = v186;
                (*v420)(v280, v448);
              }

              else
              {
                isa = 0;
              }

              [v64 setLastModifiedDate:isa];
              goto LABEL_6;
            case 16:
              v287 = [v455 startDateComponents];
              if (v287)
              {
                v288 = v429;
                v289 = v287;
                static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

                isa = DateComponents._bridgeToObjectiveC()().super.isa;
                v290 = v288;
                v62 = v186;
                (*v417)(v290, v445);
              }

              else
              {
                isa = 0;
              }

              [v64 setStartDateComponents:isa];
              goto LABEL_6;
            case 17:
              v291 = [v455 dueDateComponents];
              if (v291)
              {
                v292 = v430;
                v293 = v291;
                static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

                isa = DateComponents._bridgeToObjectiveC()().super.isa;
                v294 = v292;
                v62 = v186;
                (*v417)(v294, v445);
              }

              else
              {
                isa = 0;
              }

              [v64 setDueDateComponents:isa];
              goto LABEL_6;
            case 29:
              v257 = [v455 contactHandles];
              if (v257)
              {
                v258 = v257;
                v259 = [v257 archivedData];

                v260 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v262 = v261;

                isa = Data._bridgeToObjectiveC()().super.isa;
                v263 = v260;
                v62 = v451;
                v264 = v262;
                v58 = v446;
                v63 = v455;
                sub_10001BBA0(v263, v264);
              }

              else
              {
                isa = 0;
              }

              [v64 setContactHandles:isa];
              goto LABEL_6;
            case 30:
              v255 = [v455 icsDisplayOrder];
              if (v255 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v256 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v256 = v255;
              }

              [v64 setIcsDisplayOrder:v256];
              break;
            case 31:
              v302 = [v455 icsUrl];
              if (v302)
              {
                v303 = v431;
                v304 = v302;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                URL._bridgeToObjectiveC()(v305);
                isa = v306;
                v307 = v303;
                v62 = v186;
                (*v416)(v307, v432);
              }

              else
              {
                isa = 0;
              }

              [v64 setIcsUrl:isa];
              goto LABEL_6;
            case 32:
              v248 = [v455 importedICSData];
              if (v248)
              {
                v249 = v248;
                v250 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v252 = v251;

                isa = Data._bridgeToObjectiveC()().super.isa;
                v253 = v250;
                v254 = v252;
                v63 = v455;
                v62 = v451;
                sub_10001BBA0(v253, v254);
              }

              else
              {
                isa = 0;
              }

              [v64 setImportedICSData:isa];
              goto LABEL_6;
            case 33:
              [v453 setPrefersUrgentPresentationStyleForDateAlarms:{objc_msgSend(v455, "prefersUrgentPresentationStyleForDateAlarms")}];
              break;
            case 34:
              v295 = [v455 userActivity];
              if (v295)
              {
                v296 = v295;
                isa = [v295 archivedDictionaryData];

                if (isa)
                {
                  v297 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v299 = v298;

                  isa = Data._bridgeToObjectiveC()().super.isa;
                  v300 = v297;
                  v301 = v299;
                  v63 = v455;
                  v62 = v451;
                  sub_10001BBA0(v300, v301);
                }

                else
                {
                  v62 = v186;
                }
              }

              else
              {
                isa = 0;
              }

              [v64 setUserActivity:isa];
              goto LABEL_6;
            case 35:
              v283 = [v455 batchCreationID];
              if (v283)
              {
                v284 = v424;
                v285 = v283;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                isa = UUID._bridgeToObjectiveC()().super.isa;
                v286 = v284;
                v62 = v186;
                (*v422)(v286, v447);
              }

              else
              {
                isa = 0;
              }

              [v64 setBatchCreationID:isa];
              goto LABEL_6;
            case 39:
              v265 = [v455 alternativeDisplayDateDate_forCalendar];
              if (v265)
              {
                v266 = v428;
                v267 = v265;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                v268 = v266;
                v62 = v186;
                (*v420)(v268, v448);
              }

              else
              {
                isa = 0;
              }

              [v64 setAlternativeDisplayDateDate_forCalendar:isa];
              goto LABEL_6;
            default:
              goto LABEL_7;
          }
        }

        else
        {
          v64 = v453;
          v63 = v455;
          v62 = v186;
        }

        goto LABEL_7;
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1002BB620(void *a1, unsigned __int8 a2)
{
  v2 = &_swiftEmptyArrayStorage;
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v5 = [a1 subtaskIDsToUndelete];
    }

    else
    {
      if (a2 != 4)
      {
        return v2;
      }

      v5 = [a1 hashtagIDsToUndelete];
    }

    v7 = v5;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = sub_100277EBC(v8);
    v8, v9, v10, v11, v12, v13, v14, v15;
    return v2;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = &v18;
      v4 = [a1 listID];
      v19 = v4;
      v20 = &_swiftEmptyArrayStorage;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = &v21;
      v4 = [a1 parentReminderID];
      v22 = v4;
      v20 = &_swiftEmptyArrayStorage;
      if (!v4)
      {
LABEL_16:
        sub_1000050A4((v3 + 32), &unk_10093AF40, &unk_100795790);
        return v2;
      }
    }

    v16 = v4;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v20;
    goto LABEL_16;
  }

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v2 = swift_allocObject();
  *v2->clientIdentity = xmmword_1007953F0;
  *&v2->clientIdentity[16] = [a1 accountID];
  return v2;
}

uint64_t sub_1002BB840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002BB888(unsigned int (*a1)(uint64_t, uint64_t, uint64_t), void *a2, char a3, unsigned int (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  v296 = a4;
  LOBYTE(v6) = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v268 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v290, v14);
  v16 = &v268 - v15;
  v17 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v17 - 8, v18);
  v291 = &v268 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v292 = &v268 - v22;
  *&v25 = __chkstk_darwin(v23, v24).n128_u64[0];
  v294 = &v268 - v26;
  v295 = a2;
  v297 = [a2 createResolutionTokenMapIfNecessary];
  v27 = [a1 resolutionTokenMap];
  if (!v27)
  {
    if (qword_100935E18 != -1)
    {
      goto LABEL_126;
    }

    goto LABEL_10;
  }

  v28 = v27;
  v289 = v9;
  sub_1000F5104(&qword_1009408F8, &qword_1007A0218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = v6;
  v293 = sub_100695654(v28, inited);
  swift_setDeallocating();
  if (v6 <= 2u)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        sub_1006936FC(1u, v30, v31, v32, v33, v34, v35, v36);
        v38 = v37;
        v39 = String._bridgeToObjectiveC()();
        v38, v40, v41, v42, v43, v44, v45, v46;
        LODWORD(v38) = [v297 mergeWithMap:v293 forKey:v39];

        if (v38)
        {
          v47 = [a1 listID];
          if (!v47)
          {
            v50 = 0;
            goto LABEL_101;
          }

          v48 = v47;
          sub_100688390(1, v48, v296);
          if (!v4)
          {
            v50 = v49;

LABEL_101:
            [v295 setList:v50];
            goto LABEL_102;
          }

LABEL_46:

          return;
        }

LABEL_119:

        v80 = v293;
        goto LABEL_120;
      }

      sub_1006936FC(2u, v30, v31, v32, v33, v34, v35, v36);
      v129 = v128;
      v130 = String._bridgeToObjectiveC()();
      v129, v131, v132, v133, v134, v135, v136, v137;
      LODWORD(v129) = [v297 mergeWithMap:v293 forKey:v130];

      if (!v129)
      {
        goto LABEL_119;
      }

      v138 = [a1 parentReminderID];
      if (v138)
      {
        v48 = v138;
        sub_100687AD8(2, v48, v296);
        if (v4)
        {
          goto LABEL_46;
        }

        v233 = v139;
      }

      else
      {
        v233 = 0;
      }

      v298 = v4;
      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v234 = type metadata accessor for Logger();
      sub_100006654(v234, qword_100940648);
      v122 = v233;
      v235 = v295;
      v236 = Logger.logObject.getter();
      v237 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v236, v237))
      {
        LODWORD(v296) = v237;
        v286 = v28;
        v238 = swift_slowAlloc();
        v295 = swift_slowAlloc();
        v310 = v295;
        *v238 = 136446466;
        v239 = [v235 remObjectID];
        v299 = v239;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v240 = Optional.descriptionOrNil.getter();
        v242 = v241;

        v243 = sub_10000668C(v240, v242, &v310);
        v242, v244, v245, v246, v247, v248, v249, v250;
        *(v238 + 4) = v243;
        *(v238 + 12) = 2082;
        if (v233)
        {
          v251 = [v122 remObjectID];
        }

        else
        {
          v251 = 0;
        }

        v299 = v251;
        v252 = Optional.descriptionOrNil.getter();
        v254 = v253;

        v255 = sub_10000668C(v252, v254, &v310);
        v254, v256, v257, v258, v259, v260, v261, v262;
        *(v238 + 14) = v255;
        _os_log_impl(&_mh_execute_header, v236, v296, "Updating reminder.list {reminder: %{public}s, list: %{public}s}", v238, 0x16u);
        swift_arrayDestroy();

        v28 = v286;
      }

      else
      {
      }

      [v235 setParentReminder:v122];
    }

    else
    {
      v50 = [a1 accountID];
      sub_100687AB0(0, v50, v296);
      if (v4)
      {
LABEL_102:

        goto LABEL_119;
      }

      v90 = v89;

      if (qword_100935E18 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_100006654(v91, qword_100940648);
      v92 = v90;
      v93 = v295;
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v286 = v28;
        v97 = v96;
        v296 = swift_slowAlloc();
        v310 = v296;
        *v97 = 136446466;
        v98 = [v93 remObjectID];
        v299 = v98;
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v99 = Optional.descriptionOrNil.getter();
        v298 = 0;
        v101 = v100;

        v102 = sub_10000668C(v99, v101, &v310);
        v101, v103, v104, v105, v106, v107, v108, v109;
        *(v97 + 4) = v102;
        *(v97 + 12) = 2082;
        v110 = [v92 remObjectID];
        v299 = v110;
        v111 = Optional.descriptionOrNil.getter();
        v113 = v112;

        v114 = sub_10000668C(v111, v113, &v310);
        v113, v115, v116, v117, v118, v119, v120, v121;
        *(v97 + 14) = v114;
        _os_log_impl(&_mh_execute_header, v94, v95, "Updating reminder.account {reminder: %{public}s, account: %{public}s}", v97, 0x16u);
        swift_arrayDestroy();

        v28 = v286;
      }

      v122 = v92;
      [v93 setAccount:v122];
    }

    goto LABEL_119;
  }

  if (v6 == 3)
  {
    v298 = v4;
    v123 = [a1 subtaskIDsToUndelete];
    v124 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
    v125 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v286 = v28;
    v292 = v124;
    if ((v125 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v125 = v300;
      v6 = v301;
      v126 = v302;
      a1 = v303;
      v127 = v304;
    }

    else
    {
      a1 = 0;
      v140 = -1 << *(v125 + 32);
      v6 = v125 + 56;
      v126 = ~v140;
      v141 = -v140;
      if (v141 < 64)
      {
        v142 = ~(-1 << v141);
      }

      else
      {
        v142 = -1;
      }

      v127 = v142 & *(v125 + 56);
    }

    v291 = v126;
    v143 = (v126 + 64) >> 6;
    if ((v125 & 0x8000000000000000) == 0)
    {
      goto LABEL_55;
    }

LABEL_52:
    v144 = __CocoaSet.Iterator.next()();
    if (v144)
    {
      v299 = v144;
      swift_dynamicCast();
      v145 = v310;
      v146 = a1;
      v147 = v127;
      if (v310)
      {
        while (1)
        {
          v150 = v298;
          sub_100687AD8(3, v145, v296);
          v298 = v150;
          if (v150)
          {
            sub_10001B860(v125);

            return;
          }

          v152 = v151;
          [v152 setParentReminder:v295];
          v153 = [v152 createResolutionTokenMapIfNecessary];
          v294 = v147;
          v154 = v143;
          v155 = v6;
          v156 = v125;
          v157 = v153;
          sub_1006936FC(2u, v158, v159, v160, v161, v162, v163, v164);
          v166 = v165;
          v167 = String._bridgeToObjectiveC()();
          v166, v168, v169, v170, v171, v172, v173, v174;
          [v157 updateForKey:v167];

          v125 = v156;
          v6 = v155;
          v143 = v154;

          a1 = v146;
          v127 = v294;
          if (v125 < 0)
          {
            goto LABEL_52;
          }

LABEL_55:
          v148 = a1;
          v149 = v127;
          v146 = a1;
          if (!v127)
          {
            break;
          }

LABEL_59:
          v147 = (v149 - 1) & v149;
          v145 = *(*(v125 + 48) + ((v146 << 9) | (8 * __clz(__rbit64(v149)))));
          if (!v145)
          {
            goto LABEL_63;
          }
        }

        while (1)
        {
          v146 = (v148 + 1);
          if (__OFADD__(v148, 1))
          {
            __break(1u);
            goto LABEL_125;
          }

          if (v146 >= v143)
          {
            break;
          }

          v149 = *(v6 + 8 * v146);
          v148 = (v148 + 1);
          if (v149)
          {
            goto LABEL_59;
          }
        }
      }
    }

LABEL_63:
    sub_10001B860(v125);
    v28 = v286;
    goto LABEL_119;
  }

  if (v6 != 4)
  {
    goto LABEL_119;
  }

  v269 = a1;
  a1 = [a1 hashtagIDsToUndelete];
  v81 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
  v82 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v84 = v82;
  v285 = v81;
  if ((v82 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v86 = v305;
    v85 = v306;
    v87 = v307;
    v6 = v308;
    v88 = v309;
  }

  else
  {
    v6 = 0;
    v175 = -1 << *(v84 + 32);
    v85 = v84 + 56;
    v176 = ~v175;
    v177 = -v175;
    if (v177 < 64)
    {
      v178 = ~(-1 << v177);
    }

    else
    {
      v178 = -1;
    }

    v88 = v178 & *(v84 + 56);
    v87 = v176;
    v86 = v84;
  }

  v272 = v87;
  v278 = (v87 + 64) >> 6;
  v281 = (v10 + 56);
  v274 = (v10 + 48);
  v270 = (v10 + 32);
  v273 = (v10 + 8);
  *&v83 = 138543618;
  v276 = v83;
  v275 = v16;
  v271 = v13;
  v282 = v86;
  v283 = v85;
  v179 = v88;
  v180 = v285;
  v286 = v28;
  while (1)
  {
    v284 = v6;
    if ((v86 & 0x8000000000000000) == 0)
    {
      break;
    }

    v186 = __CocoaSet.Iterator.next()();
    if (!v186 || (v299 = v186, swift_dynamicCast(), v185 = v310, v184 = v179, !v310))
    {
LABEL_99:
      sub_10001B860(v86);
      goto LABEL_119;
    }

LABEL_80:
    a1 = v86;
    v187 = v180;
    v188 = v28;
    v288 = v184;
    v280 = v179;
    v298 = v5;
    if (qword_100935E18 != -1)
    {
      swift_once();
    }

    v189 = type metadata accessor for Logger();
    sub_100006654(v189, qword_100940648);
    v190 = v295;
    v191 = v185;
    v192 = Logger.logObject.getter();
    v193 = static os_log_type_t.info.getter();

    v194 = os_log_type_enabled(v192, v193);
    v287 = v190;
    if (v194)
    {
      v195 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v279 = swift_slowAlloc();
      v310 = v279;
      *v195 = v276;
      *(v195 + 4) = v191;
      *v196 = v185;
      *(v195 + 12) = 2082;
      v197 = v191;
      v198 = [v190 remObjectID];
      v299 = v198;
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v199 = v191;
      v200 = Optional.descriptionOrNil.getter();
      v202 = v201;

      v203 = sub_10000668C(v200, v202, &v310);
      v204 = v202;
      v86 = v282;
      v204, v205, v206, v207, v208, v209, v210, v211;
      *(v195 + 14) = v203;
      v191 = v199;
      _os_log_impl(&_mh_execute_header, v192, v193, "Undeleting hashtag {hashtagID: %{public}@, reminder: %{public}s}", v195, 0x16u);
      sub_1000050A4(v196, &unk_100938E70, &unk_100797230);

      a1 = v279;
      sub_10000607C(v279);

      v180 = v285;
      v28 = v286;
    }

    else
    {

      v28 = v188;
      v180 = v187;
      v86 = a1;
    }

    v212 = v298;
    sub_100688368(4, v191, v296);
    v5 = v212;
    if (v212)
    {
      sub_10001B860(v86);

      return;
    }

    v214 = v213;
    if ([v214 markedForDeletion])
    {
      v279 = v191;
      v215 = [v214 reminderIdentifier];
      if (v215)
      {
        v216 = v294;
        v217 = v215;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v218 = 0;
      }

      else
      {
        v218 = 1;
        v216 = v294;
      }

      v219 = v287;
      v277 = v214;
      v220 = *v281;
      v221 = 1;
      (*v281)(v216, v218, 1, v289);
      v222 = [v219 remObjectID];
      v298 = 0;
      if (v222)
      {
        v223 = v222;
        v224 = [v222 uuid];

        v225 = v292;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v221 = 0;
      }

      else
      {
        v225 = v292;
      }

      v226 = v289;
      v220(v225, v221, 1, v289);
      v227 = *(v290 + 48);
      v228 = v294;
      v229 = v275;
      sub_10018E470(v294, v275);
      sub_10018E470(v225, v229 + v227);
      a1 = *v274;
      if ((*v274)(v229, 1, v226) == 1)
      {
        sub_1000050A4(v225, &unk_100939D90, "8\n\r");
        sub_1000050A4(v228, &unk_100939D90, "8\n\r");
        if (a1(v229 + v227, 1, v226) != 1)
        {
          goto LABEL_122;
        }

        sub_1000050A4(v229, &unk_100939D90, "8\n\r");
        v28 = v286;
        v86 = v282;
        v181 = v279;
      }

      else
      {
        v230 = v291;
        sub_10018E470(v229, v291);
        if (a1(v229 + v227, 1, v226) == 1)
        {
          sub_1000050A4(v292, &unk_100939D90, "8\n\r");
          sub_1000050A4(v294, &unk_100939D90, "8\n\r");
          (*v273)(v230, v226);
LABEL_122:
          sub_1000050A4(v229, &unk_10093A3D0, &qword_100795770);
          v28 = v286;
          v86 = v282;
          v181 = v279;
LABEL_123:
          v263 = objc_opt_self();
          v264 = v277;
          v265 = v86;
          v266 = [v277 remObjectID];

          v267 = [v269 objectID];
          [v263 validationErrorUndeleteHashtagFromAnotherReminder:v266 expectedReminderID:v267];

          swift_willThrow();
          sub_10001B860(v265);
          return;
        }

        v231 = v271;
        (*v270)(v271, v229 + v227, v226);
        sub_1002BB840(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v232 = dispatch thunk of static Equatable.== infix(_:_:)();
        a1 = *v273;
        (*v273)(v231, v226);
        sub_1000050A4(v292, &unk_100939D90, "8\n\r");
        sub_1000050A4(v294, &unk_100939D90, "8\n\r");
        (a1)(v291, v226);
        sub_1000050A4(v229, &unk_100939D90, "8\n\r");
        v28 = v286;
        v86 = v282;
        v181 = v279;
        if ((v232 & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      v214 = v277;

      [v214 setReminder:v287];
      v180 = v285;
      v5 = v298;
    }

    else
    {

      v181 = v214;
    }

    v179 = v288;
    v85 = v283;
  }

  v182 = v6;
  v183 = v179;
  if (v179)
  {
LABEL_76:
    v184 = (v183 - 1) & v183;
    v185 = *(*(v86 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v183)))));
    if (!v185)
    {
      goto LABEL_99;
    }

    goto LABEL_80;
  }

  while (1)
  {
    v6 = v182 + 1;
    if (__OFADD__(v182, 1))
    {
      break;
    }

    if (v6 >= v278)
    {
      goto LABEL_99;
    }

    v183 = *(v85 + 8 * v6);
    ++v182;
    if (v183)
    {
      goto LABEL_76;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  swift_once();
LABEL_10:
  v51 = type metadata accessor for Logger();
  sub_100006654(v51, qword_100940648);
  v52 = a1;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v310 = v57;
    *v55 = 138543618;
    v58 = [v52 objectID];
    *(v55 + 4) = v58;
    v59 = 0xE900000000000044;
    *v56 = v58;
    *(v55 + 12) = 2082;
    v60 = 0x49746E756F636361;
    v61 = 0x80000001007EA4F0;
    v62 = 0x80000001007EA510;
    v63 = 0xD00000000000001FLL;
    if (v6 == 4)
    {
      v63 = 0xD000000000000014;
    }

    else
    {
      v62 = 0x80000001007EA530;
    }

    if (v6 == 3)
    {
      v64 = 0xD000000000000014;
    }

    else
    {
      v64 = v63;
    }

    if (v6 != 3)
    {
      v61 = v62;
    }

    v65 = 0xE600000000000000;
    v66 = 0x44497473696CLL;
    if (v6 != 1)
    {
      v66 = 0xD000000000000010;
      v65 = 0x80000001007EA4D0;
    }

    if (v6)
    {
      v60 = v66;
      v59 = v65;
    }

    if (v6 <= 2u)
    {
      v67 = v60;
    }

    else
    {
      v67 = v64;
    }

    if (v6 <= 2u)
    {
      v68 = v59;
    }

    else
    {
      v68 = v61;
    }

    v69 = sub_10000668C(v67, v68, &v310);
    v68, v70, v71, v72, v73, v74, v75, v76;
    *(v55 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v53, v54, "REMReminderStorageCDIngestor:establishRelationship(onStorage:into cdReminder:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v55, 0x16u);
    sub_1000050A4(v56, &unk_100938E70, &unk_100797230);

    sub_10000607C(v57);
  }

  v77 = objc_opt_self();
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v79 = String._bridgeToObjectiveC()();
  [v77 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v79];

  swift_willThrow();
  v80 = v297;
LABEL_120:
}

id sub_1002BD11C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_100212194(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002BD158@<X0>(void **a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  result = sub_1003AC4B8(*a1, 0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002BD198@<X0>(void **a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  result = sub_10030ED04(*a1, 0, 0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1002BD1D0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v11, v12).n128_u64[0];
  v15 = &v20 - v14;
  result = [a1 account];
  if (result)
  {
    v17 = result;
    v18 = [result identifier];

    if (v18)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 56))(v10, 0, 1, v2);
    }

    else
    {
      (*(v3 + 56))(v10, 1, 1, v2);
    }

    sub_100031B58(v10, v15, &unk_100939D90, "8\n\r");
    if ((*(v3 + 48))(v15, 1, v2))
    {
      sub_1000050A4(v15, &unk_100939D90, "8\n\r");
      return 0;
    }

    else
    {
      (*(v3 + 16))(v6, v15, v2);
      sub_1000050A4(v15, &unk_100939D90, "8\n\r");
      v19 = UUID.uuidString.getter();
      (*(v3 + 8))(v6, v2);
      return v19;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMReminderStorageCDIngestor.ValueKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMReminderStorageCDIngestor.ValueKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002BD5EC()
{
  result = qword_1009409B8;
  if (!qword_1009409B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009409B8);
  }

  return result;
}

unint64_t sub_1002BD688()
{
  result = qword_1009409D0;
  if (!qword_1009409D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009409D0);
  }

  return result;
}

uint64_t sub_1002BD6DC()
{
  v196 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196, v1);
  v185 = &v143 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1000F5104(&qword_100940AD0, &qword_1007A0518);
  v176 = *(v175 - 8);
  __chkstk_darwin(v175, v3);
  v172 = &v143 - v4;
  v178 = sub_1000F5104(&qword_100940AD8, &qword_1007A0520);
  v179 = *(v178 - 8);
  __chkstk_darwin(v178, v5);
  v173 = &v143 - v6;
  v181 = sub_1000F5104(&qword_100940AE0, &qword_1007A0528);
  v184 = *(v181 - 8);
  __chkstk_darwin(v181, v7);
  v174 = &v143 - v8;
  v187 = sub_1000F5104(&qword_100940AE8, &qword_1007A0530);
  v188 = *(v187 - 8);
  __chkstk_darwin(v187, v9);
  v177 = &v143 - v10;
  v189 = sub_1000F5104(&qword_100940AF0, &qword_1007A0538);
  v190 = *(v189 - 8);
  __chkstk_darwin(v189, v11);
  v180 = &v143 - v12;
  v191 = sub_1000F5104(&qword_100940AF8, &qword_1007A0540);
  v192 = *(v191 - 8);
  __chkstk_darwin(v191, v13);
  v182 = &v143 - v14;
  v193 = sub_1000F5104(&qword_100940B00, &qword_1007A0548);
  v194 = *(v193 - 8);
  __chkstk_darwin(v193, v15);
  v183 = &v143 - v16;
  v197 = sub_1000F5104(&qword_100940B08, &qword_1007A0550);
  v198 = *(v197 - 8);
  __chkstk_darwin(v197, v17);
  v186 = &v143 - v18;
  v168 = type metadata accessor for REMNotifyPublisher();
  v171 = *(v168 - 8);
  __chkstk_darwin(v168, v19);
  v166 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1000F5104(&qword_100940B10, &qword_1007A0558);
  v170 = *(v169 - 8);
  __chkstk_darwin(v169, v21);
  v167 = &v143 - v22;
  v157 = sub_1000F5104(&unk_100940B18, &unk_1007A0560);
  v199 = *(v157 - 1);
  __chkstk_darwin(v157, v23);
  v149 = &v143 - v24;
  v25 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v25 - 8, v26);
  v28 = &v143 - v27;
  v146 = sub_1000F5104(&qword_100940B28, &qword_1007A0570);
  v152 = *(v146 - 8);
  __chkstk_darwin(v146, v29);
  v31 = &v143 - v30;
  v153 = sub_1000F5104(&qword_100940B30, &qword_1007A0578);
  v154 = *(v153 - 8);
  __chkstk_darwin(v153, v32);
  v145 = &v143 - v33;
  v155 = sub_1000F5104(&qword_100940B38, &qword_1007A0580);
  v156 = *(v155 - 8);
  __chkstk_darwin(v155, v34);
  v147 = &v143 - v35;
  v158 = sub_1000F5104(&qword_100940B40, &qword_1007A0588);
  v163 = *(v158 - 1);
  __chkstk_darwin(v158, v36);
  v148 = &v143 - v37;
  v160 = sub_1000F5104(&qword_100940B48, &qword_1007A0590);
  v162 = *(v160 - 8);
  __chkstk_darwin(v160, v38);
  v150 = &v143 - v39;
  v159 = sub_1000F5104(&unk_100940B50, &qword_1007A0598);
  v161 = *(v159 - 8);
  __chkstk_darwin(v159, v40);
  v151 = &v143 - v41;
  v165 = v0;
  v205 = sub_100441DF8(*(v0 + 24), 0xD000000000000022, 0x80000001007F3920, 0);
  v42 = *(v0 + 16);
  v204 = v42;
  v203 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v43 = *(v203 - 8);
  v44 = *(v43 + 56);
  v201 = v43 + 56;
  v202 = v44;
  v44(v28, 1, 1, v203);
  v45 = v42;
  sub_1000F5104(&unk_10093D170, &unk_100791BC0);
  v46 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v164 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v200 = sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v143 = v46;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v28, &qword_100939980, &unk_10079ADA0);

  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v48 = [swift_getObjCClassFromMetadata() cdEntityName];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  *(inited + 32) = v49;
  *(inited + 40) = v51;
  sub_1000060C8(0, &unk_100938870, off_1008D4128);
  v52 = [swift_getObjCClassFromMetadata() cdEntityName];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  *(inited + 48) = v53;
  *(inited + 56) = v55;
  sub_1000060C8(0, &qword_100940350, off_1008D4130);
  v56 = [swift_getObjCClassFromMetadata() cdEntityName];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  *(inited + 64) = v57;
  *(inited + 72) = v59;
  v60 = sub_10038D894(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(swift_allocObject() + 16) = v60;
  sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
  v144 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000CB48(&qword_100940B60, &qword_100940B28, &qword_1007A0570, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v61 = v149;
  v62 = v146;
  Publisher.map<A>(_:)();

  sub_10000CB48(&qword_100940B68, &unk_100940B18, &unk_1007A0560, &protocol conformance descriptor for Publishers.Map<A, B>);
  v63 = v145;
  v64 = v157;
  Publisher.filter(_:)();
  (v199)[1](v61, v64);
  (*(v152 + 8))(v31, v62);
  sub_10000CB48(&qword_100940B70, &qword_100940B30, &qword_1007A0578, &protocol conformance descriptor for Publishers.Filter<A>);
  v65 = v153;
  v66 = v147;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v154 + 8))(v63, v65);
  v199 = &protocol conformance descriptor for Publishers.HandleEvents<A>;
  sub_10000CB48(&unk_100940B78, &qword_100940B38, &qword_1007A0580, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v67 = v148;
  v68 = v155;
  Publisher.tryMap<A>(_:)();
  (*(v156 + 8))(v66, v68);
  v156 = sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  v157 = &protocol conformance descriptor for Publishers.TryMap<A, B>;
  sub_10000CB48(&qword_100940B88, &qword_100940B40, &qword_1007A0588, &protocol conformance descriptor for Publishers.TryMap<A, B>);
  v69 = v150;
  v70 = v158;
  Publisher.mapError<A>(_:)();
  (v163)[1](v67, v70);
  v158 = &protocol conformance descriptor for Publishers.MapError<A, B>;
  sub_10000CB48(&qword_100940B90, &qword_100940B48, &qword_1007A0590, &protocol conformance descriptor for Publishers.MapError<A, B>);
  v71 = v151;
  v72 = v160;
  Publisher.replaceError(with:)();
  (*(v162 + 8))(v69, v72);
  v163 = &protocol conformance descriptor for Publishers.ReplaceError<A>;
  sub_10000CB48(&qword_100940B98, &unk_100940B50, &qword_1007A0598, &protocol conformance descriptor for Publishers.ReplaceError<A>);
  v73 = v159;
  v74 = Publisher.eraseToAnyPublisher()();
  (*(v161 + 8))(v71, v73);
  sub_1002BF5A8();
  v75 = v166;
  REMNotifyPublisher.init(name:accessQueue:)();
  sub_10000D3C8(&qword_100940BA0, &type metadata accessor for REMNotifyPublisher, &protocol conformance descriptor for REMNotifyPublisher);
  v76 = v168;
  v77 = v167;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v171 + 8))(v75, v76);
  sub_10000CB48(&qword_100940BA8, &qword_100940B10, &qword_1007A0558, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v78 = v169;
  v79 = Publisher.eraseToAnyPublisher()();
  (*(v170 + 8))(v77, v78);
  sub_1000F5104(&qword_100940BB0, &qword_1007A05B0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_100791340;
  *(v80 + 32) = v74;
  *(v80 + 40) = v79;
  v171 = v74;

  v170 = v79;

  sub_1000F5104(&qword_100940BB8, &qword_1007A05B8);
  sub_10000CB48(&qword_100940BC0, &qword_100940BB8, &qword_1007A05B8, v164);
  v81 = v172;
  Publishers.MergeMany.init(_:)();
  v82 = v165;
  v205 = *(v165 + 16);
  v83 = v205;
  v202(v28, 1, 1, v203);
  sub_10000CB48(&qword_100940BC8, &qword_100940AD0, &qword_1007A0518, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v84 = v83;
  v85 = v173;
  v86 = v175;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v28, &qword_100939980, &unk_10079ADA0);

  (*(v176 + 8))(v81, v86);
  swift_allocObject();
  v87 = v82;
  swift_weakInit();
  sub_10000CB48(&qword_100940BD0, &qword_100940AD8, &qword_1007A0520, v144);
  v88 = v178;
  v89 = v174;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v179 + 8))(v85, v88);
  v90 = v185;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v205 = *(v87 + 16);
  v91 = v205;
  v202(v28, 1, 1, v203);
  sub_10000CB48(&qword_100940BD8, &qword_100940AE0, &qword_1007A0528, v199);
  v92 = v91;
  v93 = v177;
  v94 = v181;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000050A4(v28, &qword_100939980, &unk_10079ADA0);

  (*(v195 + 8))(v90, v196);
  (*(v184 + 8))(v89, v94);
  swift_allocObject();
  swift_weakInit();
  sub_1000F5104(&qword_100940BE0, &qword_1007A05C0);
  sub_10000CB48(&qword_100940BE8, &qword_100940AE8, &qword_1007A0530, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v95 = v180;
  v96 = v187;
  Publisher.tryMap<A>(_:)();

  (*(v188 + 8))(v93, v96);
  sub_10000CB48(&qword_100940BF0, &qword_100940AF0, &qword_1007A0538, v157);
  v97 = v182;
  v98 = v189;
  Publisher.mapError<A>(_:)();
  (*(v190 + 8))(v95, v98);
  v205 = &_swiftEmptyArrayStorage;
  sub_10000CB48(&qword_100940BF8, &qword_100940AF8, &qword_1007A0540, v158);
  v99 = v183;
  v100 = v191;
  Publisher.replaceError(with:)();
  (*(v192 + 8))(v97, v100);
  swift_allocObject();
  v101 = v87;
  swift_weakInit();
  sub_10000CB48(&qword_100940C00, &qword_100940B00, &qword_1007A0548, v163);
  v102 = v193;
  v103 = v186;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v194 + 8))(v99, v102);
  sub_1000F5104(&qword_100940C08, &qword_1007A05C8);
  sub_10000CB48(&qword_100940C10, &qword_100940B08, &qword_1007A0550, v199);
  sub_10000CB48(&qword_100940C18, &qword_100940C08, &qword_1007A05C8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v104 = v197;
  v105 = Publisher.multicast<A>(_:)();
  (*(v198 + 8))(v103, v104);
  v106 = v101;
  v203 = *(v101 + 32);
  v107 = *(v203 + 16);
  if (v107)
  {
    v108 = v203 + 32;
    do
    {
      v108 += 16;
      v205 = v105;
      swift_unknownObjectRetain();
      sub_1000F5104(&qword_100940C20, &unk_1007A05D0);
      sub_10000CB48(&qword_100940C28, &qword_100940C20, &unk_1007A05D0, &protocol conformance descriptor for Publishers.Multicast<A, B>);
      v109 = Publisher.eraseToAnyPublisher()();
      sub_1002D0D48(v109);
      swift_unknownObjectRelease();

      --v107;
    }

    while (v107);
  }

  Publishers.Multicast.connect()();
  swift_beginAccess();
  sub_1002C3F04(&v205, v106 + 48);
  swift_endAccess();
  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v110 = type metadata accessor for Logger();
  sub_100006654(v110, qword_1009409E0);

  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    p_isa = &v114->super.isa;
    v205 = v114;
    *v113 = 136446210;
    v116 = v203;
    v117 = *(v203 + 16);
    v118 = &_swiftEmptyArrayStorage;
    if (v117)
    {
      v200 = v114;
      v201 = v113;
      LODWORD(v202) = v112;
      v204 = &_swiftEmptyArrayStorage;
      sub_100026EF4(0, v117, 0);
      v118 = v204;
      v119 = v116 + 32;
      do
      {
        v120 = *(*v119 + 16);
        v121 = *(*v119 + 24);
        v204 = v118;
        v123 = *v118->clientIdentity;
        v122 = *&v118->clientIdentity[8];

        if (v123 >= v122 >> 1)
        {
          sub_100026EF4((v122 > 1), v123 + 1, 1);
          v118 = v204;
        }

        *v118->clientIdentity = v123 + 1;
        v124 = v118 + 16 * v123;
        *(v124 + 4) = v120;
        *(v124 + 5) = v121;
        v119 += 16;
        --v117;
      }

      while (v117);
      LOBYTE(v112) = v202;
      v113 = v201;
      p_isa = v200;
    }

    v204 = v118;
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
    v125 = BidirectionalCollection<>.joined(separator:)();
    v127 = v126;
    v118, v126, v128, v129, v130, v131, v132, v133;
    v134 = sub_10000668C(v125, v127, &v205);
    v127, v135, v136, v137, v138, v139, v140, v141;
    *(v113 + 4) = v134;
    _os_log_impl(&_mh_execute_header, v111, v112, "TimelineEngine started with processors: %{public}s", v113, 0xCu);
    sub_10000607C(p_isa);
  }
}

uint64_t sub_1002BF3EC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009409E0);
  v1 = sub_100006654(v0, qword_1009409E0);
  if (qword_100936490 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002BF4B4()
{
  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009409E0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TimelineEngine storeDidChangePublisher triggered", v2, 2u);
  }
}

uint64_t sub_1002BF5A8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0, v1);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4, v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8, v7);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v19 = type metadata accessor for REMNotifyPublisher();
  sub_1000F5104(&unk_100940C80, &unk_1007A0790);
  v13 = String.init<A>(reflecting:)();
  v16[1] = v14;
  v16[2] = v13;
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_10000D3C8(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

void sub_1002BF8F8()
{
  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_1009409E0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TimelineEngine significantTimeChangedPublisher triggered", v2, 2u);
  }
}

uint64_t sub_1002BF9E0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = *(result + 16);
  *v6 = v9;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_100935E30 != -1)
  {
LABEL_9:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_1009409E0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "TimelineEngine will go through debouncer", v14, 2u);
  }

  v15 = *(v8 + 96);
  *(v8 + 96) = 1;
  sub_1002C0514(v15);
}

void sub_1002BFBE4(_TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for RDTimelineEngineReminder(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = (&v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10, v11);
  v13 = &v72 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v15 = &_swiftEmptyArrayStorage;
  if (Strong)
  {
    v16 = Strong;
    v88[5] = v5;
    v17 = *Strong;
    v78 = xmmword_1007A0480;
    v85 = xmmword_1007A0480;
    v87 = 0;
    v88[0] = 0;
    v86 = 0;
    *(v88 + 6) = 0;
    v84 = v17;
    v18 = sub_100401030(&v85, sub_1002C40A4, v83);
    if (v2)
    {

      return;
    }

    v75 = a2;
    v26 = *(v18 + 16);
    if (v26)
    {
      v74 = v9;
      v76 = v16;
      v77 = 0;
      *&v85 = &_swiftEmptyArrayStorage;
      v27 = v18;
      sub_1002539C8(0, v26, 0);
      v28 = v85;
      v29 = *(type metadata accessor for RDTimelineEngineDueReminder(0) - 8);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v73 = v27;
      v31 = v27 + v30;
      v32 = *(v29 + 72);
      do
      {
        sub_1002C403C(v31, v13, type metadata accessor for RDTimelineEngineDueReminder);
        swift_storeEnumTagMultiPayload();
        *&v85 = v28;
        v34 = *v28->clientIdentity;
        v33 = *&v28->clientIdentity[8];
        if (v34 >= v33 >> 1)
        {
          sub_1002539C8((v33 > 1), v34 + 1, 1);
          v28 = v85;
        }

        *v28->clientIdentity = v34 + 1;
        sub_1002C3FB4(v13, v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, type metadata accessor for RDTimelineEngineReminder);
        v31 += v32;
        --v26;
      }

      while (v26);
      v73, v35, v36, v37, v38, v39, v40, v41;
      v3 = v77;
      v16 = v76;
      v9 = v74;
    }

    else
    {
      v18, v19, v20, v21, v22, v23, v24, v25;
      v28 = &_swiftEmptyArrayStorage;
    }

    v79 = v78;
    v81 = 0;
    v82[0] = 0;
    v80 = 0;
    *(v82 + 6) = 0;
    v42 = sub_10040158C(&v79, sub_1002C1C84, 0);
    if (v3)
    {

      v28, v50, v51, v52, v53, v54, v55, v56;
      return;
    }

    v57 = *(v42 + 16);
    if (v57)
    {
      v76 = v16;
      v77 = 0;
      *&v85 = &_swiftEmptyArrayStorage;
      v58 = v42;
      sub_1002539C8(0, v57, 0);
      v59 = v85;
      v60 = *(type metadata accessor for RDTimelineEngineLocationReminder(0) - 8);
      v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v74 = v58;
      v62 = v58 + v61;
      *&v78 = *(v60 + 72);
      do
      {
        sub_1002C403C(v62, v9, type metadata accessor for RDTimelineEngineLocationReminder);
        swift_storeEnumTagMultiPayload();
        *&v85 = v59;
        v64 = *v59->clientIdentity;
        v63 = *&v59->clientIdentity[8];
        if (v64 >= v63 >> 1)
        {
          sub_1002539C8((v63 > 1), v64 + 1, 1);
          v59 = v85;
        }

        *v59->clientIdentity = v64 + 1;
        sub_1002C3FB4(v9, v59 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v64, type metadata accessor for RDTimelineEngineReminder);
        v62 += v78;
        --v57;
      }

      while (v57);
      v74, v65, v66, v67, v68, v69, v70, v71;
    }

    else
    {
      v42, v43, v44, v45, v46, v47, v48, v49;
      v59 = &_swiftEmptyArrayStorage;
    }

    *&v85 = v28;
    sub_1002723B8(v59);

    v15 = v85;
    a2 = v75;
  }

  *a2 = v15;
}

uint64_t sub_1002C013C@<X0>(const char *a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>, ...)
{
  v5 = *a2;
  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_1009409E0);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    v14 = sub_10000668C(v11, v12, &v23);
    v13, v15, v16, v17, v18, v19, v20, v21;
    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 0xCu);
    sub_10000607C(v10);
  }

  *a3 = v5;
  return swift_errorRetain();
}

uint64_t sub_1002C02D0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = *(result + 16);
  *v6 = v9;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (qword_100935E30 != -1)
  {
LABEL_9:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_1009409E0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "TimelineEngine is now going to multicast event to processors", v14, 2u);
  }

  v15 = *(v8 + 96);
  *(v8 + 96) = 0;
  sub_1002C0514(v15);
}

uint64_t sub_1002C04D0()
{
  sub_1000F5104(&qword_100940C08, &qword_1007A05C8);
  swift_allocObject();
  return PassthroughSubject.init()();
}

void sub_1002C0514(char a1)
{
  if (*(v1 + 96) != (a1 & 1))
  {
    if (*(v1 + 96))
    {
      *(v1 + 88) = os_transaction_create();
      swift_unknownObjectRelease();
      if (qword_100935E30 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_100006654(v2, qword_1009409E0);
      oslog = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v3, "os_transaction INIT {name: com.apple.remindd.RDTimelineEngine.debouncingEvents}", v4, 2u);
      }
    }

    else
    {
      v5 = v1;
      if (qword_100935E30 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100006654(v6, qword_1009409E0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "os_transaction RELEASE {name: com.apple.remindd.RDTimelineEngine.debouncingEvents}", v9, 2u);
      }

      *(v5 + 88) = 0;

      swift_unknownObjectRelease();
    }
  }
}

void sub_1002C072C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a2;
  v98[1] = a1;
  v98[0] = a3;
  v6 = sub_1000F5104(&qword_100940C38, &qword_1007A05E8);
  __chkstk_darwin(v6 - 8, v7);
  v106 = v98 - v8;
  v104 = type metadata accessor for RDTimelineEngineDueReminder(0);
  v102 = *(v104 - 8);
  __chkstk_darwin(v104, v9);
  v103 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = _s10PredicatesOMa(0);
  __chkstk_darwin(v100, v11);
  v99 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100797700;
  *(inited + 32) = swift_getKeyPath();
  v98[3] = inited + 32;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  v111 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 5, 0);
  v14 = 0;
  v15 = v111;
  v16 = inited & 0xC000000000000001;
  v107 = (inited & 0xFFFFFFFFFFFFFF8);
  do
  {
    if (v16)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = v107[2];
      if (v14 >= v18)
      {
        __break(1u);
        goto LABEL_46;
      }

      v17 = *(inited + 8 * v14 + 32);
    }

    v19 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v20)
    {
      v109 = 0;
      v110 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v96._object = 0x80000001007EC120;
      v96._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v96);
      v108 = v17;
      goto LABEL_62;
    }

    v4 = v19;
    v3 = v20;

    v111 = v15;
    v5 = *(v15 + 16);
    v21 = *(v15 + 24);
    if (v5 >= v21 >> 1)
    {
      sub_100026EF4((v21 > 1), v5 + 1, 1);
      v15 = v111;
    }

    v14 = (v14 + 1);
    *(v15 + 16) = v5 + 1;
    v22 = v15 + 16 * v5;
    *(v22 + 32) = v4;
    *(v22 + 40) = v3;
  }

  while (v14 != 5);
  swift_setDeallocating();
  swift_arrayDestroy();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  v107 = (inited + 32);
  *(inited + 40) = swift_getKeyPath();
  v3 = [objc_opt_self() fetchRequest];
  [(RDXPCStorePerformer *)v3 setResultType:0];
  v23 = v99;
  swift_storeEnumTagMultiPayload();
  v24 = sub_100043AA8();
  sub_1002C40D8(v23, _s10PredicatesOMa);
  [(RDXPCStorePerformer *)v3 setPredicate:v24];

  [(RDXPCStorePerformer *)v3 setReturnsDistinctResults:0];
  v25 = sub_10003450C(v15);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v25, v27, v28, v29, v30, v31, v32, v33;
  [(RDXPCStorePerformer *)v3 setPropertiesToFetch:isa];

  v111 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 2, 0);
  v34 = v111;
  v16 = inited & 0xFFFFFFFFFFFFFF8;
  v5 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

    v15 = *v107;
  }

  v100 = v3;
  v35 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v36)
  {
    while (1)
    {
LABEL_63:
      v109 = 0;
      v110 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v97._object = 0x80000001007EC120;
      v97._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v97);
      v108 = v15;
LABEL_62:
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v3 = v35;
  v4 = v36;

  v14 = *v34->clientIdentity;
  v18 = *&v34->clientIdentity[8];
  v15 = &v14->super.isa + 1;
  if (v14 >= v18 >> 1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    *v34->clientIdentity = v15;
    v37 = v34 + 16 * v14;
    *(v37 + 4) = v3;
    *(v37 + 5) = v4;
    if (v5)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v38 = v100;
      goto LABEL_20;
    }

    v38 = v100;
    if (*(v16 + 16) < 2uLL)
    {
      break;
    }

    v15 = *(inited + 40);

LABEL_20:
    v39 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v40)
    {
      goto LABEL_63;
    }

    v3 = v39;
    v41 = v40;

    v111 = v34;
    v43 = *v34->clientIdentity;
    v42 = *&v34->clientIdentity[8];
    if (v43 >= v42 >> 1)
    {
      sub_100026EF4((v42 > 1), v43 + 1, 1);
      v34 = v111;
    }

    *v34->clientIdentity = v43 + 1;
    v44 = v34 + 16 * v43;
    *(v44 + 4) = v3;
    *(v44 + 5) = v41;
    swift_setDeallocating();
    swift_arrayDestroy();
    inited = Array._bridgeToObjectiveC()().super.isa;

    [v38 setRelationshipKeyPathsForPrefetching:inited];

    if (qword_100936068 != -1)
    {
      swift_once();
    }

    v45 = qword_100974E18;
    if (qword_100974E18)
    {
      inited = swift_allocObject();
      *(inited + 16) = xmmword_1007953F0;
      *(inited + 32) = v45;
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v46 = v45;
      v47 = Array._bridgeToObjectiveC()().super.isa;
      inited, v48, v49, v50, v51, v52, v53, v54;
      [v38 setSortDescriptors:v47];
    }

    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v55 = v98[2];
    v56 = NSManagedObjectContext.fetch<A>(_:)();
    if (v55)
    {

      return;
    }

    v4 = v56;
    v101 = 0;
    v99 = (v56 >> 62);
    if (v56 >> 62)
    {
      goto LABEL_50;
    }

    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v58 = v106;
    if (!v57)
    {
      goto LABEL_51;
    }

LABEL_31:
    v15 = 0;
    v107 = (v4 & 0xC000000000000001);
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    v16 = v102 + 48;
    v14 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v107)
      {
        v3 = v4;
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v5 + 16);
        if (v15 >= v18)
        {
          goto LABEL_47;
        }

        v3 = v4;
        v59 = *(v4 + 8 * v15 + 32);
      }

      v4 = v59;
      inited = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_1002C12A8(v59, v58);
      v58 = v106;

      if ((*v16)(v58, 1, v104) == 1)
      {
        sub_1000050A4(v58, &qword_100940C38, &qword_1007A05E8);
      }

      else
      {
        sub_1002C3FB4(v58, v103, type metadata accessor for RDTimelineEngineDueReminder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100367930(0, *v14->clientIdentity + 1, 1, v14);
        }

        v61 = *v14->clientIdentity;
        v60 = *&v14->clientIdentity[8];
        if (v61 >= v60 >> 1)
        {
          v14 = sub_100367930((v60 > 1), v61 + 1, 1, v14);
        }

        *v14->clientIdentity = v61 + 1;
        sub_1002C3FB4(v103, v14 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v61, type metadata accessor for RDTimelineEngineDueReminder);
        v58 = v106;
      }

      v4 = v3;
      ++v15;
      if (inited == v57)
      {
        goto LABEL_52;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    sub_100026EF4((v18 > 1), v15, 1);
    v34 = v111;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  v57 = _CocoaArrayWrapper.endIndex.getter();
  v58 = v106;
  if (v57)
  {
    goto LABEL_31;
  }

LABEL_51:
  v14 = &_swiftEmptyArrayStorage;
LABEL_52:
  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100006654(v62, qword_1009409E0);
  swift_bridgeObjectRetain_n();

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v72 = swift_slowAlloc();
    *v72 = 134218240;
    if (v99)
    {
      v73 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v73 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4, v65, v66, v67, v68, v69, v70, v71;
    *(v72 + 4) = v73;
    v4, v74, v75, v76, v77, v78, v79, v80;
    *(v72 + 12) = 2048;
    v81 = *v14->clientIdentity;
    v14, v82, v83, v84, v85, v86, v87, v88;
    *(v72 + 14) = v81;
    v14, v89, v90, v91, v92, v93, v94, v95;
    _os_log_impl(&_mh_execute_header, v63, v64, "TimelineEngine fetched %ld DUE reminders and returning %ld", v72, 0x16u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  *v98[0] = v14;
}

uint64_t sub_1002C12A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v104 = v4;
  v105 = v5;
  __chkstk_darwin(v4, v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v103 = &v93 - v11;
  v107 = type metadata accessor for Date();
  v109 = *(v107 - 8);
  __chkstk_darwin(v107, v12);
  v102 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v93 - v16;
  __chkstk_darwin(v18, v19);
  v106 = &v93 - v20;
  __chkstk_darwin(v21, v22);
  v24 = &v93 - v23;
  __chkstk_darwin(v25, v26);
  v108 = &v93 - v27;
  v28 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v28 - 8, v29);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v33);
  v35 = &v93 - v34;
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36, v38);
  v101 = &v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v42 = __chkstk_darwin(v40, v41).n128_u64[0];
  v44 = &v93 - v43;
  v111 = a1;
  v45 = [a1 list];
  if (!v45)
  {
    (*(v37 + 56))(v35, 1, 1, v36);
LABEL_7:
    sub_1000050A4(v35, &unk_100939D90, "8\n\r");
LABEL_17:
    v76 = type metadata accessor for RDTimelineEngineDueReminder(0);
    return (*(*(v76 - 8) + 56))(a2, 1, 1, v76);
  }

  v46 = v45;
  v110 = a2;
  v47 = [v45 identifier];

  if (v47)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v37 + 56))(v31, 0, 1, v36);
  }

  else
  {
    (*(v37 + 56))(v31, 1, 1, v36);
  }

  sub_100031B58(v31, v35, &unk_100939D90, "8\n\r");
  v48 = (*(v37 + 48))(v35, 1, v36);
  a2 = v110;
  if (v48 == 1)
  {
    goto LABEL_7;
  }

  v49 = *(v37 + 32);
  v49(v44, v35, v36);
  v50 = v111;
  v51 = [v111 displayDateDate];
  if (!v51)
  {
    (*(v37 + 8))(v44, v36);
    goto LABEL_17;
  }

  v98 = v37 + 32;
  v99 = v44;
  v97 = v49;
  v52 = v51;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = v108;
  v53 = v109;
  v55 = v109 + 32;
  v56 = v24;
  v57 = v107;
  v100 = *(v109 + 32);
  v100(v108, v56, v107);
  v58 = [v50 dueDate];
  if (!v58)
  {
    (*(v53 + 8))(v54, v57);
    (*(v37 + 8))(v99, v36);
    goto LABEL_17;
  }

  v59 = v58;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v106;
  v96 = v55;
  v100(v106, v17, v57);
  v61 = objc_opt_self();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v63 = [v50 displayDateIsAllDay];
  v64 = v50;
  v65 = [v50 timeZone];
  v66 = [v61 dueDateComponentsWithDueDate:isa isAllDay:v63 timeZoneName:v65];

  if (!v66)
  {
    v78 = *(v109 + 8);
    v78(v60, v57);
    v78(v108, v57);
    (*(v37 + 8))(v99, v36);
    a2 = v110;
    goto LABEL_17;
  }

  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v67 = v105 + 32;
  v95 = *(v105 + 32);
  v95(v103, v8, v104);
  v68 = [v64 recurrenceRules];
  v69 = v99;
  if (v68)
  {
    v105 = v67;
    v112 = v68;
    v70 = v68;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
    v71 = Sequence.elements<A>(ofType:)();

    if (qword_100935E30 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    v73 = sub_100006654(v72, qword_1009409E0);
    v112 = v71;
    __chkstk_darwin(v73, v74);
    *(&v93 - 2) = v75;
    sub_1000F5104(&qword_100940948, &qword_1007A0258);
    sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
    sub_10000CB48(&qword_100940950, &qword_100940948, &qword_1007A0258, &protocol conformance descriptor for [A]);
    v79 = Sequence.map<A>(skippingError:_:)();
    v71, v80, v81, v82, v83, v84, v85, v86;
    v87 = v110;
    v57 = v107;
    v88 = v108;
    v94 = v79;
  }

  else
  {
    v94 = 0;
    v87 = v110;
    v88 = v108;
  }

  v89 = v101;
  (*(v37 + 16))(v101, v69, v36);
  v90 = v109;
  (*(v109 + 16))(v102, v88, v57);
  LODWORD(v111) = [v111 displayDateIsAllDay];
  v91 = *(v90 + 8);
  v91(v106, v57);
  v91(v88, v57);
  (*(v37 + 8))(v69, v36);
  v97(v87, v89, v36);
  v92 = type metadata accessor for RDTimelineEngineDueReminder(0);
  v100((v87 + v92[5]), v102, v57);
  *(v87 + v92[6]) = v111;
  v95((v87 + v92[7]), v103, v104);
  *(v87 + v92[8]) = v94;
  return (*(*(v92 - 1) + 56))(v87, 0, 1, v92);
}

void sub_1002C1C84(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, _TtC7remindd19RDXPCStorePerformer **a2@<X8>)
{
  v81 = a2;
  v4 = sub_1000F5104(&qword_100940C30, &qword_1007A05E0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = (&v75 - v6);
  v8 = type metadata accessor for RDTimelineEngineLocationReminder(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v75 - v15;
  v17 = sub_1000F5104(&unk_100940C40, qword_1007A05F0);
  __chkstk_darwin(v17, v18);
  v20 = &v75 - v19;
  v21 = sub_1003FD798();
  if (!v2)
  {
    v84 = v17;
    v76 = v16;
    v77 = v9;
    v78 = v12;
    v79 = 0;
    v22 = v21 + 8;
    v23 = 1 << *(v21 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v21[8];
    v26 = (v23 + 63) >> 6;
    v82 = (v9 + 48);
    v85 = v21;

    v27 = 0;
    v80 = &_swiftEmptyArrayStorage;
    v28 = v20;
    v83 = v8;
    while (v25)
    {
      a1 = v7;
      v29 = v27;
LABEL_11:
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v31 = v30 | (v29 << 6);
      v32 = v85;
      v33 = *(v85 + 48);
      v34 = sub_1000F5104(&unk_100939D90, "8\n\r");
      sub_10018E470(v33 + *(*(v34 - 8) + 72) * v31, v28);
      v35 = *(*(v32 + 56) + 8 * v31);
      *(v28 + *(v84 + 48)) = v35;

      v7 = a1;
      sub_1002C21B8(v28, v35, a1);
      sub_1000050A4(v28, &unk_100940C40, qword_1007A05F0);
      if ((*v82)(a1, 1, v83) == 1)
      {
        sub_1000050A4(a1, &qword_100940C30, &qword_1007A05E0);
        v27 = v29;
      }

      else
      {
        v36 = v76;
        sub_1002C3FB4(a1, v76, type metadata accessor for RDTimelineEngineLocationReminder);
        sub_1002C3FB4(v36, v78, type metadata accessor for RDTimelineEngineLocationReminder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_100367958(0, *v80->clientIdentity + 1, 1, v80);
        }

        v38 = *v80->clientIdentity;
        v37 = *&v80->clientIdentity[8];
        a1 = (v38 + 1);
        if (v38 >= v37 >> 1)
        {
          v80 = sub_100367958((v37 > 1), v38 + 1, 1, v80);
        }

        v39 = v80;
        *v80->clientIdentity = a1;
        sub_1002C3FB4(v78, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v38, type metadata accessor for RDTimelineEngineLocationReminder);
        v27 = v29;
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v29 >= v26)
      {
        break;
      }

      v25 = v22[v29];
      ++v27;
      if (v25)
      {
        a1 = v7;
        goto LABEL_11;
      }
    }

    a1 = v85;

    if (qword_100935E30 == -1)
    {
      goto LABEL_19;
    }

LABEL_25:
    swift_once();
LABEL_19:
    v40 = type metadata accessor for Logger();
    sub_100006654(v40, qword_1009409E0);

    v41 = v80;
    swift_bridgeObjectRetain_n();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134218496;
      v45 = *a1->clientIdentity;
      *(v44 + 4) = v45;
      *(v44 + 12) = 2048;
      a1, v46, v47, v48, v49, v50, v51, v52;
      *(v44 + 14) = v45;
      a1, v53, v54, v55, v56, v57, v58, v59;
      *(v44 + 22) = 2048;
      v60 = *v41->clientIdentity;
      v41, v61, v62, v63, v64, v65, v66, v67;
      *(v44 + 24) = v60;
      v41, v68, v69, v70, v71, v72, v73, v74;
      _os_log_impl(&_mh_execute_header, v42, v43, "TimelineEngine fetched (keys: %ld, values: %ld) LOCATION reminders and returning %ld", v44, 0x20u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    *v81 = v41;
  }
}

uint64_t sub_1002C21B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v5 = sub_1000F5104(&qword_100940C30, &qword_1007A05E0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v39 - v11;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v25 = &v39 - v24;
  sub_10018E470(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v25, v16, v17);
    v32 = type metadata accessor for RDTimelineEngineLocationReminder(0);
    v33 = *(v32 - 8);
    v34 = *(v33 + 56);
    v42 = v33 + 56;
    v43 = v34;
    v34(v12, 1, 1, v32);
    if (v52 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (v36)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v36 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
LABEL_8:
        v39 = v32;
        v40 = v12;
        v41 = a3;
        a3 = 0;
        v50 = v52 & 0xFFFFFFFFFFFFFF8;
        v51 = v52 & 0xC000000000000001;
        v48 = v18 + 16;
        v37 = (v18 + 8);
        *&v35 = 136315138;
        v45 = v35;
        v46 = v25;
        v47 = v8;
        v49 = v36;
        v44 = v21;
        if ((v52 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v50 + 16))
          {
            __break(1u);
            goto LABEL_14;
          }

          v38 = *(v52 + 32);
        }

        v53 = v38;
        sub_1002C28B8(v38, v8);

        v12 = v40;
        sub_1000050A4(v40, &qword_100940C30, &qword_1007A05E0);
        (*v37)(v25, v17);
        v43(v8, 0, 1, v39);
        sub_100031B58(v8, v12, &qword_100940C30, &qword_1007A05E0);
        a3 = v41;
        return sub_100031B58(v12, a3, &qword_100940C30, &qword_1007A05E0);
      }
    }

    (*(v18 + 8))(v25, v17);
    return sub_100031B58(v12, a3, &qword_100940C30, &qword_1007A05E0);
  }

  sub_1000050A4(v16, &unk_100939D90, "8\n\r");
  if (qword_100935E30 != -1)
  {
LABEL_14:
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_1009409E0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "TimelineEngine fetched some location triggers with nil reminder identifier", v29, 2u);
  }

  v30 = type metadata accessor for RDTimelineEngineLocationReminder(0);
  return (*(*(v30 - 8) + 56))(a3, 1, 1, v30);
}

uint64_t sub_1002C28B8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v122 = a2;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v116 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v124 = (&v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15, v16);
  v123 = &v116 - v17;
  __chkstk_darwin(v18, v19);
  v21 = &v116 - v20;
  __chkstk_darwin(v22, v23);
  v25 = &v116 - v24;
  *&v129 = 0xD000000000000019;
  *(&v129 + 1) = 0x80000001007EAAC0;
  v26 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v126 = a1;
  v27 = [a1 __swift_objectForKeyedSubscript:v26];
  swift_unknownObjectRelease();
  if (v27)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v131 = v129;
  v132 = v130;
  if (!*(&v130 + 1))
  {
    sub_1000050A4(&v131, &qword_100939ED0, &qword_100791B10);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_9;
  }

  v121 = v21;
  v125 = v25;
  v28 = swift_dynamicCast();
  v29 = *(v12 + 56);
  v29(v10, v28 ^ 1u, 1, v11);
  v30 = *(v12 + 48);
  if (v30(v10, 1, v11) == 1)
  {
LABEL_9:
    sub_1000050A4(v10, &unk_100939D90, "8\n\r");
    v33 = objc_opt_self();
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = String._bridgeToObjectiveC()();
    [v33 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v35];

    return swift_willThrow();
  }

  v120 = v12;
  v31 = *(v12 + 32);
  v119 = v12 + 32;
  v118 = v31;
  v31(v125, v10, v11);
  *&v129 = 0xD00000000000001ELL;
  *(&v129 + 1) = 0x80000001007F3990;
  v32 = [v126 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v32)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v131 = v129;
  v132 = v130;
  if (!*(&v130 + 1))
  {
    sub_1000050A4(&v131, &qword_100939ED0, &qword_100791B10);
    v29(v6, 1, 1, v11);
    goto LABEL_16;
  }

  v37 = swift_dynamicCast();
  v29(v6, v37 ^ 1u, 1, v11);
  if (v30(v6, 1, v11) == 1)
  {
LABEL_16:
    sub_1000050A4(v6, &unk_100939D90, "8\n\r");
    v41 = objc_opt_self();
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v42 = swift_getObjCClassFromMetadata();
    v43 = String._bridgeToObjectiveC()();
    [v41 unexpectedNilPropertyWithClass:v42 property:v43];

    swift_willThrow();
    return (*(v120 + 8))(v125, v11);
  }

  v118(v121, v6, v11);
  *&v129 = 0x656475746974616CLL;
  *(&v129 + 1) = 0xE800000000000000;
  v38 = [v126 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v39 = v125;
  v40 = v120;
  if (v38)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v45 = v123;
  v44 = v124;
  v131 = v129;
  v132 = v130;
  if (!*(&v130 + 1))
  {
    sub_1000050A4(&v131, &qword_100939ED0, &qword_100791B10);
    goto LABEL_37;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v46 = v127;
  *&v129 = 0x64757469676E6F6CLL;
  *(&v129 + 1) = 0xE900000000000065;
  v47 = [v126 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v47)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v131 = v129;
  v132 = v130;
  if (!*(&v130 + 1))
  {
    sub_1000050A4(&v131, &qword_100939ED0, &qword_100791B10);
    goto LABEL_37;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v48 = v127;
  *&v129 = 0x737569646172;
  *(&v129 + 1) = 0xE600000000000000;
  v49 = [v126 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v49)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v131 = v129;
  v132 = v130;
  if (!*(&v130 + 1))
  {
    sub_1000050A4(&v131, &qword_100939ED0, &qword_100791B10);
    goto LABEL_37;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v52 = objc_opt_self();
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v53 = swift_getObjCClassFromMetadata();
    v54 = String._bridgeToObjectiveC()();
    [v52 unexpectedNilPropertyWithClass:v53 property:v54];

    swift_willThrow();
    v55 = *(v40 + 8);
    v55(v121, v11);
    return (v55)(v39, v11);
  }

  v50 = v127;
  *&v129 = 0x6E6F697461636F6CLL;
  *(&v129 + 1) = 0xEB00000000444955;
  v51 = [v126 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v51)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v129 = 0u;
    v130 = 0u;
  }

  v131 = v129;
  v132 = v130;
  if (!*(&v130 + 1))
  {
    sub_1000050A4(&v131, &qword_100939ED0, &qword_100791B10);
    goto LABEL_43;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:
    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    Double.write<A>(to:)();
    Double.write<A>(to:)();
    Double.write<A>(to:)();
    v56 = *(&v131 + 1);
    goto LABEL_44;
  }

  v56 = v128;
LABEL_44:
  v57 = objc_allocWithZone(CLCircularRegion);
  v58 = String._bridgeToObjectiveC()();
  v56, v59, v60, v61, v62, v63, v64, v65;
  v66 = [v57 initWithCenter:v58 radius:v46 identifier:{v48, v50}];

  if (qword_100935E30 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_100006654(v67, qword_1009409E0);
  v68 = v40;
  v69 = *(v40 + 16);
  v69(v45, v39, v11);
  v69(v44, v121, v11);
  v70 = v66;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *&v131 = v126;
    *v73 = 136315650;
    v124 = v71;
    v74 = CLRegion.stringRepresentation.getter();
    v76 = v75;
    v77 = sub_10000668C(v74, v75, &v131);
    LODWORD(v123) = v72;
    v78 = v77;
    v76, v79, v80, v81, v82, v83, v84, v85;
    *(v73 + 4) = v78;
    *(v73 + 12) = 2080;
    sub_10000D3C8(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v86 = dispatch thunk of CustomStringConvertible.description.getter();
    v87 = v45;
    v89 = v88;
    v117 = v70;
    v90 = *(v68 + 8);
    v90(v87, v11);
    v91 = sub_10000668C(v86, v89, &v131);
    v89, v92, v93, v94, v95, v96, v97, v98;
    *(v73 + 14) = v91;
    *(v73 + 22) = 2080;
    v99 = dispatch thunk of CustomStringConvertible.description.getter();
    v101 = v100;
    v90(v44, v11);
    v102 = v117;
    v103 = sub_10000668C(v99, v101, &v131);
    v101, v104, v105, v106, v107, v108, v109, v110;
    *(v73 + 24) = v103;
    v111 = v124;
    _os_log_impl(&_mh_execute_header, v124, v123, "TimelineEngine: Converted fetched dictionary to RDTimelineEngineLocationReminder {region: %s, reminder: %s, list: %s}", v73, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v112 = *(v68 + 8);
    v112(v44, v11);
    v112(v45, v11);
    v102 = v70;
  }

  v113 = v122;
  v114 = v118;
  v118(v122, v121, v11);
  v115 = type metadata accessor for RDTimelineEngineLocationReminder(0);
  result = v114(&v113[*(v115 + 20)], v39, v11);
  *&v113[*(v115 + 24)] = v102;
  return result;
}

uint64_t sub_1002C36B4()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  sub_1000050A4(v0 + 48, &qword_100940AC8, &qword_1007A0510);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

_TtC7remindd19RDXPCStorePerformer *sub_1002C3740(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940C38, &qword_1007A05E8);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = type metadata accessor for RDTimelineEngineDueReminder(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for RDTimelineEngineReminder(0);
  __chkstk_darwin(v29, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return &_swiftEmptyArrayStorage;
  }

  v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v28 = *(v15 + 72);
  v20 = (v7 + 56);
  v21 = &_swiftEmptyArrayStorage;
  v26 = v7;
  v27 = v6;
  do
  {
    sub_1002C403C(v19, v17, type metadata accessor for RDTimelineEngineReminder);
    sub_1002C3FB4(v17, v12, type metadata accessor for RDTimelineEngineReminder);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v20)(v5, 1, 1, v6);
      sub_1002C40D8(v12, type metadata accessor for RDTimelineEngineReminder);
    }

    else
    {
      sub_1002C3FB4(v12, v5, type metadata accessor for RDTimelineEngineDueReminder);
      (*v20)(v5, 0, 1, v6);
    }

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000050A4(v5, &qword_100940C38, &qword_1007A05E8);
    }

    else
    {
      sub_1002C3FB4(v5, v30, type metadata accessor for RDTimelineEngineDueReminder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100367930(0, *v21->clientIdentity + 1, 1, v21);
      }

      v23 = *v21->clientIdentity;
      v22 = *&v21->clientIdentity[8];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_100367930((v22 > 1), v23 + 1, 1, v21);
      }

      *v21->clientIdentity = v23 + 1;
      sub_1002C3FB4(v30, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for RDTimelineEngineDueReminder);
      v6 = v27;
    }

    v19 += v28;
    --v18;
  }

  while (v18);
  return v21;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002C3B0C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100940C30, &qword_1007A05E0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v25 - v4;
  v6 = type metadata accessor for RDTimelineEngineLocationReminder(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for RDTimelineEngineReminder(0);
  __chkstk_darwin(v29, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return &_swiftEmptyArrayStorage;
  }

  v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v28 = *(v15 + 72);
  v20 = (v7 + 56);
  v21 = &_swiftEmptyArrayStorage;
  v26 = v7;
  v27 = v6;
  do
  {
    sub_1002C403C(v19, v17, type metadata accessor for RDTimelineEngineReminder);
    sub_1002C3FB4(v17, v12, type metadata accessor for RDTimelineEngineReminder);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1002C3FB4(v12, v5, type metadata accessor for RDTimelineEngineLocationReminder);
      (*v20)(v5, 0, 1, v6);
    }

    else
    {
      (*v20)(v5, 1, 1, v6);
      sub_1002C40D8(v12, type metadata accessor for RDTimelineEngineReminder);
    }

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000050A4(v5, &qword_100940C30, &qword_1007A05E0);
    }

    else
    {
      sub_1002C3FB4(v5, v30, type metadata accessor for RDTimelineEngineLocationReminder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100367958(0, *v21->clientIdentity + 1, 1, v21);
      }

      v23 = *v21->clientIdentity;
      v22 = *&v21->clientIdentity[8];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_100367958((v22 > 1), v23 + 1, 1, v21);
      }

      *v21->clientIdentity = v23 + 1;
      sub_1002C3FB4(v30, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for RDTimelineEngineLocationReminder);
      v6 = v27;
    }

    v19 += v28;
    --v18;
  }

  while (v18);
  return v21;
}

uint64_t sub_1002C3F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100940AC8, &qword_1007A0510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C3FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C403C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002C40D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1002C4140(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    v10 = a3[7];
    a1[a3[6]] = a2[a3[6]];
    v11 = type metadata accessor for DateComponents();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    *&a1[a3[8]] = *&a2[a3[8]];
  }

  return a1;
}

double sub_1002C4294(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a2[5];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a2[7];
  v8 = type metadata accessor for DateComponents();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v16 = *(a1 + a2[8]);

  v16, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

uint64_t sub_1002C4388(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

uint64_t sub_1002C4490(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v9 = a3[7];
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  v12, v13, v14, v15, v16, v17, v18, v19;
  return a1;
}

uint64_t sub_1002C45A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

uint64_t sub_1002C46AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return a1;
}

uint64_t sub_1002C47E0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DateComponents();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1002C48F4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v8((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), v7);
    v9 = *(a3 + 24);
    v10 = *(a2 + v9);
    *(a1 + v9) = v10;
    v11 = v10;
  }

  return a1;
}

void sub_1002C49E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v5(a1 + *(a2 + 20), v4);
  v6 = *(a1 + *(a2 + 24));
}

uint64_t sub_1002C4A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = *(a2 + v8);
  *(a1 + v8) = v9;
  v10 = v9;
  return a1;
}

uint64_t sub_1002C4B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = *(a2 + v8);
  v10 = *(a1 + v8);
  *(a1 + v8) = v9;
  v11 = v9;

  return a1;
}

uint64_t sub_1002C4BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_1002C4C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);

  return a1;
}

uint64_t sub_1002C4D58(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1002C4DF4(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for RDTimelineEngineLocationReminder(0);
      v8(&a1[*(v9 + 20)], &a2[*(v9 + 20)], v7);
      v10 = *(v9 + 24);
      v11 = *&a2[v10];
      *&a1[v10] = v11;
      v12 = v11;
    }

    else
    {
      v14 = type metadata accessor for RDTimelineEngineDueReminder(0);
      v15 = v14[5];
      v16 = type metadata accessor for Date();
      (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
      a1[v14[6]] = a2[v14[6]];
      v17 = v14[7];
      v18 = type metadata accessor for DateComponents();
      (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
      *&a1[v14[8]] = *&a2[v14[8]];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

double sub_1002C4FDC(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for RDTimelineEngineLocationReminder(0);
    v5(a1 + *(v6 + 20), v4);
    v7 = *(a1 + *(v6 + 24));
  }

  else
  {
    v9 = type metadata accessor for RDTimelineEngineDueReminder(0);
    v10 = v9[5];
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 8))(a1 + v10, v11);
    v12 = v9[7];
    v13 = type metadata accessor for DateComponents();
    (*(*(v13 - 8) + 8))(a1 + v12, v13);
    v21 = *(a1 + v9[8]);

    v21, v14, v15, v16, v17, v18, v19, v20;
  }

  return result;
}

uint64_t sub_1002C5144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for RDTimelineEngineLocationReminder(0);
    v7(a1 + *(v8 + 20), a2 + *(v8 + 20), v6);
    v9 = *(v8 + 24);
    v10 = *(a2 + v9);
    *(a1 + v9) = v10;
    v11 = v10;
  }

  else
  {
    v12 = type metadata accessor for RDTimelineEngineDueReminder(0);
    v13 = v12[5];
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
    *(a1 + v12[6]) = *(a2 + v12[6]);
    v15 = v12[7];
    v16 = type metadata accessor for DateComponents();
    (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
    *(a1 + v12[8]) = *(a2 + v12[8]);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1002C52D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1002C40D8(a1, type metadata accessor for RDTimelineEngineReminder);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for UUID();
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for RDTimelineEngineLocationReminder(0);
      v7(a1 + *(v8 + 20), a2 + *(v8 + 20), v6);
      v9 = *(v8 + 24);
      v10 = *(a2 + v9);
      *(a1 + v9) = v10;
      v11 = v10;
    }

    else
    {
      v12 = type metadata accessor for RDTimelineEngineDueReminder(0);
      v13 = v12[5];
      v14 = type metadata accessor for Date();
      (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
      *(a1 + v12[6]) = *(a2 + v12[6]);
      v15 = v12[7];
      v16 = type metadata accessor for DateComponents();
      (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
      *(a1 + v12[8]) = *(a2 + v12[8]);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1002C5490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for RDTimelineEngineLocationReminder(0);
    v7(a1 + *(v8 + 20), a2 + *(v8 + 20), v6);
    *(a1 + *(v8 + 24)) = *(a2 + *(v8 + 24));
  }

  else
  {
    v9 = type metadata accessor for RDTimelineEngineDueReminder(0);
    v10 = v9[5];
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
    *(a1 + v9[6]) = *(a2 + v9[6]);
    v12 = v9[7];
    v13 = type metadata accessor for DateComponents();
    (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
    *(a1 + v9[8]) = *(a2 + v9[8]);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1002C561C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1002C40D8(a1, type metadata accessor for RDTimelineEngineReminder);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for UUID();
    v7 = *(*(v6 - 8) + 32);
    v7(a1, a2, v6);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for RDTimelineEngineLocationReminder(0);
      v7(a1 + *(v8 + 20), a2 + *(v8 + 20), v6);
      *(a1 + *(v8 + 24)) = *(a2 + *(v8 + 24));
    }

    else
    {
      v9 = type metadata accessor for RDTimelineEngineDueReminder(0);
      v10 = v9[5];
      v11 = type metadata accessor for Date();
      (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
      *(a1 + v9[6]) = *(a2 + v9[6]);
      v12 = v9[7];
      v13 = type metadata accessor for DateComponents();
      (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
      *(a1 + v9[8]) = *(a2 + v9[8]);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1002C57CC(uint64_t a1)
{
  result = type metadata accessor for RDTimelineEngineDueReminder(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RDTimelineEngineLocationReminder(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for RDGroceryCorrectionCache(uint64_t a1)
{
  result = qword_100940E90;
  if (!qword_100940E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C592C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940E70);
  v1 = sub_100006654(v0, qword_100940E70);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002C59F4()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0, v1);
  v16 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3, v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8, v6);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v19 = type metadata accessor for RDGroceryCorrectionCache(0);
  sub_1000F5104(&qword_100940EF8, &qword_1007A0890);
  v12 = String.init<A>(reflecting:)();
  v15[0] = v13;
  v15[1] = v12;
  (*(v8 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v7);
  static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v11, v7);
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_100008D58();
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(swift_allocObject() + qword_100940E88) = _swiftEmptySetSingleton;
  result = REMCache.init(cacheQueue:countLimit:)();
  qword_100974D28 = result;
  return result;
}

uint64_t sub_1002C5D94(uint64_t a1, void *a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  if (REMCacheContext.object(forKey:)())
  {
    REMStructWrapper.value.getter();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[5] = a10;
    v31[0] = a5;
    v31[1] = a6;
    v31[2] = a7;
    v31[3] = a8;
    v31[4] = a9;
    sub_1002C8DA8(v31, a3, a4, isUniquelyReferenced_nonNull_native);
    a4, v20, v21, v22, v23, v24, v25, v26;
    sub_1000F5104(&qword_100940EF0, &qword_1007A0888);
    swift_allocObject();
    REMStructWrapper.init(_:)();
    REMCacheContext.setObject(_:forKey:)();
  }

  else
  {
    sub_1000F5104(&qword_100940EE0, &qword_1007A0878);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    *(inited + 48) = a5;
    *(inited + 56) = a6;
    *(inited + 64) = a7;
    *(inited + 72) = a8;
    *(inited + 80) = a9;
    *(inited + 88) = a10;

    v28 = sub_10038FAC0(inited);
    swift_setDeallocating();
    sub_1002CB8D8(inited + 32);
    v31[6] = v28;
    sub_1000F5104(&qword_100940EF0, &qword_1007A0888);
    swift_allocObject();
    REMStructWrapper.init(_:)();
    REMCacheContext.setObject(_:forKey:)();

    swift_beginAccess();
    sub_100378D70(&v32, a2);
    swift_endAccess();
  }

  return a12(a1);
}

uint64_t sub_1002C600C(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyDictionarySingleton;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  dispatch thunk of REMCache.performReadAndWrite(_:operations:)();
}

void sub_1002C60F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v134 = a4;
  v149 = a3;
  v146 = type metadata accessor for REMAnalyticsEvent();
  v6 = *(v146 - 8);
  __chkstk_darwin(v146, v7);
  v145 = (v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = qword_100940E88;
  swift_beginAccess();
  v132 = a2;
  v131 = v9;
  v10 = *(a2 + v9);
  if ((v10 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    sub_10018BA8C();
    Set.Iterator.init(_cocoa:)();
    v10 = v160;
    v12 = v161;
    v13 = v162;
    v14 = v163;
    v15 = v164;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);

    v14 = 0;
  }

  v130[1] = v13;
  v19 = (v13 + 64) >> 6;
  v144 = enum case for REMAnalyticsEvent.groceryCorrection(_:);
  v143 = (v6 + 104);
  v142 = (v6 + 8);
  *&v11 = 136446722;
  v133 = v11;
  v138 = a1;
  v137 = v10;
  v136 = v12;
  v135 = v19;
  while (1)
  {
    if (v10 < 0)
    {
      v27 = __CocoaSet.Iterator.next()();
      if (!v27)
      {
        goto LABEL_53;
      }

      v157 = v27;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      v26 = v158;
      v141 = v14;
      v20 = v15;
      if (!v158)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v21 = v14;
      v22 = v15;
      v23 = v14;
      if (!v15)
      {
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_55;
          }

          if (v23 >= v19)
          {
            break;
          }

          v22 = *(v12 + 8 * v23);
          ++v21;
          if (v22)
          {
            goto LABEL_15;
          }
        }

LABEL_53:
        sub_10001B860(v10);
        REMCacheContext.clearAll()();
        v122 = *(v132 + v131);
        *(v132 + v131) = _swiftEmptySetSingleton;
        v122, v123, v124, v125, v126, v127, v128, v129;
        return;
      }

LABEL_15:
      v24 = __clz(__rbit64(v22));
      v20 = (v22 - 1) & v22;
      v25 = *(v10 + 48);
      v141 = v23;
      v26 = *(v25 + ((v23 << 9) | (8 * v24)));
      if (!v26)
      {
        goto LABEL_53;
      }
    }

    v140 = v26;
    if (REMCacheContext.object(forKey:)())
    {
      break;
    }

LABEL_9:

    v14 = v141;
    v15 = v20;
  }

  v139 = v20;
  REMStructWrapper.value.getter();

  v28 = 0;
  v30 = v158 + 64;
  v29 = *(v158 + 64);
  v150 = v158;
  v31 = 1 << *(v158 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & v29;
  v34 = (v31 + 63) >> 6;
  v148 = v158 + 64;
  v147 = v34;
  while (v33)
  {
LABEL_29:
    v53 = (*(v150 + 56) + 48 * (__clz(__rbit64(v33)) | (v28 << 6)));
    v54 = v53[1];
    v151 = *v53;
    v55 = v53[3];
    v155 = v53[2];
    v57 = v53[4];
    v56 = v53[5];
    v58 = v149;
    swift_beginAccess();
    v59 = *(v58 + 16);
    v60 = *(v59 + 16);

    v156 = v54;
    v153 = v57;
    v154 = v55;
    v152 = v56;
    if (v60)
    {

      v61 = sub_100005F4C(v57, v56);
      v63 = v62;
      v56, v62, v64, v65, v66, v67, v68, v69;
      if (v63)
      {
        v70 = *(*(v59 + 56) + 8 * v61);
        v71 = swift_endAccess();
        v72 = v151;
        v73 = v156;
        v158 = v151;
        v159 = v156;
        __chkstk_darwin(v71, v74);
        v130[-2] = &v158;

        v75 = sub_100040A74(sub_1002CB9B8, &v130[-4], v70);
        v76 = v72;
        v77 = v155;
        if (v75 & 1) != 0 || (v76 == 0x6C6E6F6974636573 ? (v78 = v73 == 0xEB00000000737365) : (v78 = 0), v78 || (v79 = _stringCompareWithSmolCheck(_:_:expecting:)(), v81 = 0x65746365746F7270, v76 = v151, v82 = 0xE900000000000064, (v79)))
        {

          v81 = v76;
          v82 = v73;
        }

        v151 = v82;
        v83 = v154;
        v158 = v77;
        v159 = v154;
        __chkstk_darwin(v79, v80);
        v130[-2] = &v158;
        v84 = sub_100040A74(sub_1002CB9B8, &v130[-4], v70);
        v70, v85, v86, v87, v88, v89, v90, v91;
        if (v84)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }
    }

    else
    {
    }

    swift_endAccess();
    v92 = sub_10025655C(v57, v56, 0, 1);
    v93 = v155;
    v94 = v92;
    v95 = v57;
    v96 = v149;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157 = *(v96 + 16);
    *(v96 + 16) = 0x8000000000000000;
    sub_1002CACC4(v94, v95, v56, isUniquelyReferenced_nonNull_native, sub_10037443C, sub_10036C5F8);
    v56, v98, v99, v100, v101, v102, v103, v104;
    *(v96 + 16) = v157;
    v105 = swift_endAccess();
    v106 = v151;
    v158 = v151;
    v159 = v156;
    __chkstk_darwin(v105, v107);
    v130[-2] = &v158;
    if (sub_100040A74(sub_100040B20, &v130[-4], v94) & 1) != 0 || v106 == 0x6C6E6F6974636573 && v156 == 0xEB00000000737365 || (v108 = _stringCompareWithSmolCheck(_:_:expecting:)(), v81 = 0x65746365746F7270, v106 = v151, v110 = 0xE900000000000064, (v108))
    {

      v81 = v106;
      v110 = v108;
    }

    v151 = v110;
    v83 = v154;
    v158 = v93;
    v159 = v154;
    __chkstk_darwin(v108, v109);
    v130[-2] = &v158;
    v111 = sub_100040A74(sub_1002CB9B8, &v130[-4], v94);
    v94, v112, v113, v114, v115, v116, v117, v118;
    if (v111)
    {
LABEL_50:

      v119 = v83;
      v120 = v155;
      goto LABEL_51;
    }

LABEL_47:
    if (v155 == 0x6C6E6F6974636573 && v83 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_50;
    }

    v120 = 0x65746365746F7270;
    v119 = 0xE900000000000064;
LABEL_51:
    v121 = v151;
    v33 &= v33 - 1;
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v156, v35, v36, v37, v38, v39, v40, v41;
    v83, v42, v43, v44, v45, v46, v47, v48;
    v49 = v145;
    *v145 = v81;
    v49[1] = v121;
    v49[2] = v120;
    v49[3] = v119;
    v50 = v152;
    v49[4] = v153;
    v49[5] = v50;
    v51 = v146;
    (*v143)(v49, v144, v146);
    REMAnalyticsManager.post(event:)();

    (*v142)(v49, v51);
    v30 = v148;
    v34 = v147;
  }

  while (1)
  {
    v52 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v52 >= v34)
    {

      v10 = v137;
      v12 = v136;
      v19 = v135;
      v20 = v139;
      goto LABEL_9;
    }

    v33 = *(v30 + 8 * v52);
    ++v28;
    if (v33)
    {
      v28 = v52;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_1002C6D0C()
{
  v0 = REMCache.deinit();
  *(v0 + qword_100940E88), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocClassInstance();
}

void sub_1002C6D64(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005F4C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100369CB8(v16, a4 & 1);
      v11 = sub_100005F4C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100372EDC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1002C6EC8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005F4C(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_100369F58(v16, a3 & 1);
      v11 = sub_100005F4C(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100373044();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a4;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * v11) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1002C70A8(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v33 = a4;
  v34 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v23 = sub_100363F20(a2);
  v24 = v15[2];
  v25 = (v16 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_15;
  }

  v27 = v16;
  v28 = v15[3];
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      v33();
      goto LABEL_7;
    }

    v34();
    v32 = sub_100363F20(a2);
    if ((v27 & 1) == (v16 & 1))
    {
      v23 = v32;
      v29 = *v6;
      if (v27)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      sub_1002CB740(v23, v14, a1, v29, &type metadata accessor for UUID);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v29 = *v6;
  if ((v27 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v30 = v29[7];
  v31 = *(v30 + 8 * v23);
  *(v30 + 8 * v23) = a1;

  v31, v16, v17, v18, v19, v20, v21, v22;
}

void sub_1002C72CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100005F4C(a3, a4);
  v21 = *(v12 + 16);
  v22 = (v14 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = v14;
  v26 = *(v12 + 24);
  if (v26 < v24 || (a5 & 1) == 0)
  {
    if (v26 < v24 || (a5 & 1) != 0)
    {
      sub_10036A8F0(v24, a5 & 1);
      v13 = sub_100005F4C(a3, a4);
      if ((v25 & 1) != (v14 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v27 = v13;
      sub_100373664();
      v13 = v27;
    }
  }

  v28 = *v6;
  if (v25)
  {
    v29 = (v28[7] + 16 * v13);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;

    v30, v14, v15, v16, v17, v18, v19, v20;
    return;
  }

  v28[(v13 >> 6) + 8] |= 1 << v13;
  v31 = (v28[6] + 16 * v13);
  *v31 = a3;
  v31[1] = a4;
  v32 = (v28[7] + 16 * v13);
  *v32 = a1;
  v32[1] = a2;
  v33 = v28[2];
  v23 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v34;
}

id sub_1002C7480(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_10002B924(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_1003737DC();
      goto LABEL_7;
    }

    sub_10036ABB0(v12, a3 & 1);
    v23 = sub_10002B924(a2);
    if ((v13 & 1) == (v24 & 1))
    {
      v9 = v23;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = type metadata accessor for REMManualOrdering.PinnedList();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_1002CB24C(v9, a2, a1, v15);

  return a2;
}

id sub_1002C762C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100364044(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036AED0(v13, a3 & 1);
      v8 = sub_100364044(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for REMObjectID_Codable();
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_10037399C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

void sub_1002C7818(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_10002B924(a2);
  v20 = *(v11 + 16);
  v21 = (v13 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v13;
  v25 = *(v11 + 24);
  if (v25 < v23 || (a3 & 1) == 0)
  {
    if (v25 < v23 || (a3 & 1) != 0)
    {
      a5(v23, a3 & 1);
      v12 = sub_10002B924(a2);
      if ((v24 & 1) != (v13 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v26 = v12;
      a4();
      v12 = v26;
    }
  }

  v27 = *v8;
  if (v24)
  {
    v28 = v27[7];
    v29 = *(v28 + 8 * v12);
    *(v28 + 8 * v12) = a1;

    v29, v13, v14, v15, v16, v17, v18, v19;
    return;
  }

  v27[(v12 >> 6) + 8] |= 1 << v12;
  *(v27[6] + 8 * v12) = a2;
  *(v27[7] + 8 * v12) = a1;
  v30 = v27[2];
  v22 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v31;

  v32 = a2;
}

id sub_1002C79B0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036BAEC(v13, a3 & 1);
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100373F88();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

void sub_1002C7B54(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1003643A8(a2);
  v16 = *(v7 + 16);
  v17 = (v9 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v9;
  v21 = *(v7 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 < v19 || (a3 & 1) != 0)
    {
      sub_10036C318(v19, a3 & 1);
      v8 = sub_1003643A8(a2);
      if ((v20 & 1) != (v9 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v8;
      sub_100374270();
      v8 = v22;
    }
  }

  v23 = *v4;
  if (v20)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v8);
    *(v24 + 8 * v8) = a1;

    v25, v9, v10, v11, v12, v13, v14, v15;
    return;
  }

  v23[(v8 >> 6) + 8] |= 1 << v8;
  *(v23[6] + 8 * v8) = a2;
  *(v23[7] + 8 * v8) = a1;
  v26 = v23[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;

  v28 = a2;
}

id sub_1002C7CD0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1003643F8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036C32C(v13, a3 & 1);
      v8 = sub_1003643F8(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100374284();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

_OWORD *sub_1002C7E48(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10001B0D8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100374298();
      goto LABEL_7;
    }

    sub_10036C340(v13, a3 & 1);
    v19 = sub_10001B0D8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10001B270(a2, v21);
      return sub_1002CB33C(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000607C(v17);

  return sub_100005EE0(a1, v17);
}

uint64_t sub_1002C7FC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100363F20(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_1003733B8();
    goto LABEL_7;
  }

  sub_10036A508(result, a3 & 1);
  result = sub_100363F20(a2);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1002CB194(v15, v12, a1, v21);
}

uint64_t sub_1002C81B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100363F20(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1003744A0();
      goto LABEL_9;
    }

    sub_10036C648(v17, a3 & 1);
    v20 = sub_100363F20(a2);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = v20;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v22 = *v4;
  if (v18)
  {
    v23 = *(v27 + 40);
    v24 = v22[7] + *(v27 + 72) * v14;

    return v23(v24, a1, v8);
  }

  else
  {
    (*(v27 + 16))(v11, a2, v8);
    return sub_1002CB3B8(v14, v11, a1, v22);
  }
}

id sub_1002C8398(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036CA94(v13, a3 & 1);
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100374768();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

id sub_1002C8510(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036CABC(v13, a3 & 1);
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100374790();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

uint64_t sub_1002C870C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v27 = a4;
  v28 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_100363F20(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v27();
      goto LABEL_7;
    }

    v28();
    v25 = sub_100363F20(a2);
    if ((v21 & 1) == (v26 & 1))
    {
      v17 = v25;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_1002CB194(v17, v14, a1, v23);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v23[7] + 8 * v17) = a1;
}

void sub_1002C88F0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005F4C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100374FD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10036D7E8(v16, a4 & 1);
    v11 = sub_100005F4C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000607C(v22);

    sub_100005EE0(a1, v22);
  }

  else
  {
    sub_1002CB494(v11, a2, a3, a1, v21);
  }
}

id sub_1002C8A40(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036DD80(v13, a3 & 1);
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100375334();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

id sub_1002C8BE4(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_10002B924(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      v12 = sub_10002B924(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      a4();
      v12 = v20;
    }
  }

  v22 = *v8;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  *(v22[6] + 8 * v12) = a2;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;

  return a2;
}

void sub_1002C8DA8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v47 = *a1;
  v10 = a1[2];
  v9 = a1[3];
  v12 = a1[4];
  v11 = a1[5];
  v13 = *v4;
  v14 = sub_100005F4C(a2, a3);
  v21 = v13[2];
  v22 = (v15 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = v15;
  v26 = v13[3];
  if (v26 < v24 || (a4 & 1) == 0)
  {
    if (v26 >= v24 && (a4 & 1) == 0)
    {
      v27 = v14;
      sub_10037555C();
      v14 = v27;
      goto LABEL_8;
    }

    sub_10036E0C4(v24, a4 & 1);
    v14 = sub_100005F4C(a2, a3);
    if ((v25 & 1) != (v15 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v28 = *v5;
  if (v25)
  {
    v29 = v28[7] + 48 * v14;
    v30 = *(v29 + 8);
    v31 = *(v29 + 24);
    v32 = *(v29 + 40);
    *v29 = v47;
    *(v29 + 16) = v10;
    *(v29 + 24) = v9;
    *(v29 + 32) = v12;
    *(v29 + 40) = v11;
    v32, v15, v16, v17, v28, v18, v19, v20;
    v31, v33, v34, v35, v36, v37, v38, v39;

    v30, v40, v41, v42, v43, v44, v45, v46;
  }

  else
  {
    v48 = v47;
    v49 = v10;
    v50 = v9;
    v51 = v12;
    v52 = v11;
    sub_1002CB500(v14, a2, a3, &v48, v28);
  }
}

void sub_1002C8FF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100005F4C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100375A1C();
      goto LABEL_7;
    }

    sub_10036ED70(v15, a4 & 1);
    v25 = sub_100005F4C(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1002CB55C(v12, a2, a3, a1, v18);
}

id sub_1002C9178(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100363FF4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10036F11C(v13, a3 & 1);
      v8 = sub_100363FF4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100375CCC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

void sub_1002C92F0(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005F4C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100375CE0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10036F130(v16, a4 & 1);
    v11 = sub_100005F4C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    sub_10000607C(v22);

    sub_100054B6C(a1, v22);
  }

  else
  {
    sub_1002CB60C(v11, a2, a3, a1, v21);
  }
}

void sub_1002C9444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005F4C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10036F7DC(v16, a4 & 1);
      v11 = sub_100005F4C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_release_x1:
        _objc_release_x1(v11, v23);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100376114();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_1002C9628(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  result = sub_10002B924(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      result = sub_10002B924(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_16:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = result;
      a4();
      result = v20;
    }
  }

  v22 = *v8;
  if (v18)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = a2;
  *(v22[7] + 8 * result) = a1;
  v23 = v22[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v24;

  return a2;
}

void sub_1002C97D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v21 = sub_1003647E8(a2);
  v22 = v13[2];
  v23 = (v14 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_15;
  }

  v25 = v14;
  v26 = v13[3];
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      sub_1003765A4();
      goto LABEL_7;
    }

    sub_10036FFE8(v24, a3 & 1);
    v30 = sub_1003647E8(a2);
    if ((v25 & 1) == (v14 & 1))
    {
      v21 = v30;
      v27 = *v4;
      if (v25)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1002CB740(v21, v12, a1, v27, &type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v27 = *v4;
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v28 = v27[7];
  v29 = *(v28 + 8 * v21);
  *(v28 + 8 * v21) = a1;

  v29, v14, v15, v16, v17, v18, v19, v20;
}

unint64_t sub_1002C99E0(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1003648BC(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a1 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a1 & 1) == 0)
  {
    v17 = result;
    sub_10037672C();
    result = v17;
    goto LABEL_8;
  }

  sub_10037063C(v14, a1 & 1);
  result = sub_1003648BC(a3);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a2;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a2;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002C9B44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t))
{
  v10 = v7;
  v15 = *v7;
  v16 = sub_100005F4C(a2, a3);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 < v21 || (a4 & 1) != 0)
    {
      a6(v21, a4 & 1);
      v16 = sub_100005F4C(a2, a3);
      if ((v22 & 1) != (v25 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v24 = v16;
      a5();
      v16 = v24;
    }
  }

  v26 = *v10;
  if (v22)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v16);
    *(v27 + 8 * v16) = a1;

    a7(v28);
    return;
  }

  v26[(v16 >> 6) + 8] |= 1 << v16;
  v29 = (v26[6] + 16 * v16);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v16) = a1;
  v30 = v26[2];
  v20 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

id sub_1002C9CF4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100370B54(v13, a3 & 1);
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100376A10();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

id sub_1002C9E6C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100370B68(v13, a3 & 1);
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100376A24();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

void sub_1002C9FE4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100363F20(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100376A38();
      goto LABEL_7;
    }

    sub_100370B7C(v18, a3 & 1);
    v24 = sub_100363F20(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_1002CB194(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1002CA1DC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100363F20(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100376A4C();
      goto LABEL_7;
    }

    sub_100370BA4(v18, a3 & 1);
    v24 = sub_100363F20(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1002CB67C(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 40 * v15);
  sub_10000607C(v22);

  return sub_100054B6C(a1, v22);
}

uint64_t sub_1002CA3B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100363F20(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100376CD4();
      goto LABEL_7;
    }

    sub_100370F88(v18, a3 & 1);
    v23 = sub_100363F20(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1002CB194(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1002CA5DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100363F20(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100377220();
      goto LABEL_7;
    }

    sub_100371768(v18, a3 & 1);
    v25 = sub_100363F20(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1002CB7FC(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for RDSavedReminder(0) - 8) + 72) * v15;

  return sub_1002CB94C(a1, v23);
}

uint64_t sub_1002CA7F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100364908(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100371EBC(v14, a3 & 1);
      v9 = sub_100364908(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for RDManualSortIDPersistenceHost();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_100377704();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

id sub_1002CA950(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002B924(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1003721AC(v13, a3 & 1);
      v8 = sub_10002B924(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100377868();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

id sub_1002CAAF4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100364538(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1003721D4(v13, a3 & 1);
      v8 = sub_100364538(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100377890();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

void sub_1002CACC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100005F4C(a2, a3);
  v23 = *(v14 + 16);
  v24 = (v16 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
    goto LABEL_17;
  }

  v27 = v16;
  v28 = *(v14 + 24);
  if (v28 < v26 || (a4 & 1) == 0)
  {
    if (v28 < v26 || (a4 & 1) != 0)
    {
      a6(v26, a4 & 1);
      v15 = sub_100005F4C(a2, a3);
      if ((v27 & 1) != (v16 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v29 = v15;
      a5();
      v15 = v29;
    }
  }

  v30 = *v9;
  if (v27)
  {
    v31 = v30[7];
    v32 = *(v31 + 8 * v15);
    *(v31 + 8 * v15) = a1;

    v32, v16, v17, v18, v19, v20, v21, v22;
    return;
  }

  v30[(v15 >> 6) + 8] |= 1 << v15;
  v33 = (v30[6] + 16 * v15);
  *v33 = a2;
  v33[1] = a3;
  *(v30[7] + 8 * v15) = a1;
  v34 = v30[2];
  v25 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30[2] = v35;
}

void sub_1002CAE88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100005F4C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_100005F4C(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
_objc_release_x1:
        _objc_release_x1(v15, v27);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    goto _objc_release_x1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

id sub_1002CB01C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100363FF4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100372B8C(v13, a3 & 1);
      v8 = sub_100363FF4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
        v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1(v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_100377FC8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return _objc_release_x1(v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

uint64_t sub_1002CB194(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1002CB24C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for REMManualOrdering.PinnedList();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1002CB2F8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1002CB33C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100005EE0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}